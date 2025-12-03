@interface ML3DatabaseForeignKeyConstraint
- (ML3DatabaseForeignKeyConstraint)initWithForeignTable:(id)table localColumns:(id)columns foreignColumns:(id)foreignColumns;
- (id)_foreignKeyClauseSQL;
@end

@implementation ML3DatabaseForeignKeyConstraint

- (id)_foreignKeyClauseSQL
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = [(NSArray *)self->_localColumns count];
  if (v4 != [(NSArray *)self->_foreignColumns count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3DatabaseForeignKeyConstraint.m" lineNumber:34 description:{@"Number of local columns (%lu) does not match the number of foreign columns (%lu)", -[NSArray count](self->_localColumns, "count"), -[NSArray count](self->_foreignColumns, "count")}];
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = self->_localColumns;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        name = [*(*(&v30 + 1) + 8 * i) name];
        [v5 addObject:name];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = self->_foreignColumns;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        name2 = [*(*(&v26 + 1) + 8 * j) name];
        [v12 addObject:name2];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  v19 = [v5 componentsJoinedByString:{@", "}];
  v20 = [v12 componentsJoinedByString:{@", "}];
  v21 = MEMORY[0x277CCACA8];
  name3 = [(ML3DatabaseTable *)self->_foreignTable name];
  v23 = [v21 stringWithFormat:@"FOREIGN KEY (%@) REFERENCES %@ (%@)", v19, name3, v20];

  return v23;
}

- (ML3DatabaseForeignKeyConstraint)initWithForeignTable:(id)table localColumns:(id)columns foreignColumns:(id)foreignColumns
{
  tableCopy = table;
  columnsCopy = columns;
  foreignColumnsCopy = foreignColumns;
  v19.receiver = self;
  v19.super_class = ML3DatabaseForeignKeyConstraint;
  v12 = [(ML3DatabaseForeignKeyConstraint *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_foreignTable, table);
    v14 = [columnsCopy copy];
    localColumns = v13->_localColumns;
    v13->_localColumns = v14;

    v16 = [foreignColumnsCopy copy];
    foreignColumns = v13->_foreignColumns;
    v13->_foreignColumns = v16;
  }

  return v13;
}

@end