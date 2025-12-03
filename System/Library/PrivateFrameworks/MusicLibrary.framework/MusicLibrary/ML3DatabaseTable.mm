@interface ML3DatabaseTable
- (id)_copyWithZone:(_NSZone *)zone concreteClass:(Class)class;
- (id)columnDefinitionsSQL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createTableSQLWithExistenceClause:(BOOL)clause;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation ML3DatabaseTable

- (id)_copyWithZone:(_NSZone *)zone concreteClass:(Class)class
{
  v5 = [[(objc_class *)class allocWithZone:zone] init];
  name = [(ML3DatabaseTable *)self name];
  v7 = [name copy];
  v8 = *(v5 + 1);
  *(v5 + 1) = v7;

  columns = [(ML3DatabaseTable *)self columns];
  v10 = [columns copy];
  v11 = *(v5 + 2);
  *(v5 + 2) = v10;

  foreignKeyConstraints = [(ML3DatabaseTable *)self foreignKeyConstraints];
  v13 = [foreignKeyConstraints copy];
  v14 = *(v5 + 3);
  *(v5 + 3) = v13;

  return v5;
}

- (id)createTableSQLWithExistenceClause:(BOOL)clause
{
  clauseCopy = clause;
  v28 = *MEMORY[0x277D85DE8];
  columnDefinitionsSQL = [(ML3DatabaseTable *)self columnDefinitionsSQL];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  foreignKeyConstraints = [(ML3DatabaseTable *)self foreignKeyConstraints];
  v8 = [foreignKeyConstraints countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(foreignKeyConstraints);
        }

        _foreignKeyClauseSQL = [*(*(&v23 + 1) + 8 * i) _foreignKeyClauseSQL];
        [v6 addObject:_foreignKeyClauseSQL];
      }

      v9 = [foreignKeyConstraints countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:{@", "}];
  v14 = &stru_28408B690;
  if (clauseCopy)
  {
    v14 = @" IF NOT EXISTS";
  }

  v15 = v14;
  v16 = [v6 count];
  v17 = MEMORY[0x277CCACA8];
  name = [(ML3DatabaseTable *)self name];
  v19 = name;
  if (v16)
  {
    [v17 stringWithFormat:@"CREATE TABLE%@ %@ (%@, %@)", v15, name, columnDefinitionsSQL, v13];
  }

  else
  {
    [v17 stringWithFormat:@"CREATE TABLE%@ %@ (%@)", v15, name, columnDefinitionsSQL, v22];
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
  columns = [(ML3DatabaseTable *)self columns];
  v5 = [columns countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(columns);
        }

        _columnDefinitionSQL = [*(*(&v12 + 1) + 8 * i) _columnDefinitionSQL];
        [v3 addObject:_columnDefinitionSQL];
      }

      v6 = [columns countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  return v10;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ML3DatabaseTable *)self _copyWithZone:zone concreteClass:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ML3DatabaseTable *)self _copyWithZone:zone concreteClass:v5];
}

@end