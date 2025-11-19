@interface ML3DatabaseTable
- (id)_copyWithZone:(_NSZone *)a3 concreteClass:(Class)a4;
- (id)columnDefinitionsSQL;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createTableSQLWithExistenceClause:(BOOL)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation ML3DatabaseTable

- (id)_copyWithZone:(_NSZone *)a3 concreteClass:(Class)a4
{
  v5 = [[(objc_class *)a4 allocWithZone:a3] init];
  v6 = [(ML3DatabaseTable *)self name];
  v7 = [v6 copy];
  v8 = *(v5 + 1);
  *(v5 + 1) = v7;

  v9 = [(ML3DatabaseTable *)self columns];
  v10 = [v9 copy];
  v11 = *(v5 + 2);
  *(v5 + 2) = v10;

  v12 = [(ML3DatabaseTable *)self foreignKeyConstraints];
  v13 = [v12 copy];
  v14 = *(v5 + 3);
  *(v5 + 3) = v13;

  return v5;
}

- (id)createTableSQLWithExistenceClause:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x277D85DE8];
  v5 = [(ML3DatabaseTable *)self columnDefinitionsSQL];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(ML3DatabaseTable *)self foreignKeyConstraints];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v23 + 1) + 8 * i) _foreignKeyClauseSQL];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:{@", "}];
  v14 = &stru_28408B690;
  if (v3)
  {
    v14 = @" IF NOT EXISTS";
  }

  v15 = v14;
  v16 = [v6 count];
  v17 = MEMORY[0x277CCACA8];
  v18 = [(ML3DatabaseTable *)self name];
  v19 = v18;
  if (v16)
  {
    [v17 stringWithFormat:@"CREATE TABLE%@ %@ (%@, %@)", v15, v18, v5, v13];
  }

  else
  {
    [v17 stringWithFormat:@"CREATE TABLE%@ %@ (%@)", v15, v18, v5, v22];
  }
  v20 = ;

  return v20;
}

- (id)columnDefinitionsSQL
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ML3DatabaseTable *)self columns];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) _columnDefinitionSQL];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ML3DatabaseTable *)self _copyWithZone:a3 concreteClass:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ML3DatabaseTable *)self _copyWithZone:a3 concreteClass:v5];
}

@end