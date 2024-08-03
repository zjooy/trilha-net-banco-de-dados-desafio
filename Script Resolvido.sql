
--Exercicio 1
Select 
	Nome,
	Ano
From Filmes

--Exercicio 2
Select 
	Nome,
	Ano,
	Duracao
From Filmes Order by Ano

--Exercicio 3
Select 
	Nome,
	Ano,
	Duracao
From Filmes Where Nome = 'De Volta para o Futuro'


--Exercicio 4
Select 
	Nome,
	Ano,
	Duracao
From Filmes Where Ano = 1997

--Exercicio 5
Select 
	Nome,
	Ano,
	Duracao
From Filmes Where Ano > 2000

--Exercicio 6
Select 
	Nome,
	Ano,
	Duracao
From Filmes Where Duracao > 100 And Duracao < 150 Order by Duracao

--Exercicio 7
Select
	Ano,
    COUNT(*) AS Quantidade
From Filmes Group by Ano 
			Order by COUNT(Duracao) desc

--Exercicio 8
Select
	PrimeiroNome,
	UltimoNome
From Atores Where Genero = 'M'


--Exercicio 9
Select
	PrimeiroNome,
	UltimoNome
From Atores Where Genero = 'F' Order by PrimeiroNome 


--Exercicio 10
Select
	F.Nome,
	G.Genero
From FilmesGenero FG
Inner Join Filmes F on F.Id = FG.IdFilme
Inner Join Generos G On G.Id = FG.IdGenero


--Exercicio 11
Select
	F.Nome,
	G.Genero
From FilmesGenero FG
Inner Join Filmes F on F.Id = FG.IdFilme
Inner Join Generos G On G.Id = FG.IdGenero Where G.Genero = 'Mistério'


--Exercicio 12
Select 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
From ElencoFilme EF
Inner Join Atores A On A.Id = EF.IdAtor
Inner Join Filmes F On F.Id = EF.IdFilme
