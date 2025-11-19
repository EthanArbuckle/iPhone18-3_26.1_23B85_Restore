@interface HDSQLiteEntityIndex
- (HDSQLiteEntityIndex)initWithEntity:(Class)a3 name:(id)a4 columns:(id)a5 collationForColumn:(id)a6 unique:(BOOL)a7 predicateString:(id)a8;
- (NSString)disambiguatedName;
- (id)creationSQL;
- (void)_columnsAndCollations;
@end

@implementation HDSQLiteEntityIndex

- (HDSQLiteEntityIndex)initWithEntity:(Class)a3 name:(id)a4 columns:(id)a5 collationForColumn:(id)a6 unique:(BOOL)a7 predicateString:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = HDSQLiteEntityIndex;
  v18 = [(HDSQLiteEntityIndex *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_entityClass, a3);
    v20 = [v14 copy];
    name = v19->_name;
    v19->_name = v20;

    v19->_unique = a7;
    v22 = [v16 copy];
    collationColumnMapping = v19->_collationColumnMapping;
    v19->_collationColumnMapping = v22;

    v24 = [v15 copy];
    columns = v19->_columns;
    v19->_columns = v24;

    v26 = [v17 copy];
    predicateString = v19->_predicateString;
    v19->_predicateString = v26;
  }

  return v19;
}

- (NSString)disambiguatedName
{
  v3 = [(objc_class *)self->_entityClass databaseName];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(objc_class *)self->_entityClass databaseTable];
  v6 = v5;
  name = self->_name;
  if (v3)
  {
    [v4 stringWithFormat:@"%@.%@_%@", v3, v5, name];
  }

  else
  {
    [v4 stringWithFormat:@"%@_%@", v5, name, v10];
  }
  v8 = ;

  return v8;
}

- (id)creationSQL
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"CREATE "];
  v4 = v3;
  if (self->_unique)
  {
    [v3 appendString:@"UNIQUE "];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [(HDSQLiteEntityIndex *)self disambiguatedName];
  v7 = [(objc_class *)self->_entityClass databaseTable];
  v8 = [(HDSQLiteEntityIndex *)self _columnsAndCollations];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v5 stringWithFormat:@"INDEX IF NOT EXISTS %@ ON %@ (%@)", v6, v7, v9];
  [v4 appendString:v10];

  if (self->_predicateString)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" WHERE (%@)", self->_predicateString];
    [v4 appendString:v11];
  }

  [v4 appendString:@";"];

  return v4;
}

void __44__HDSQLiteEntityIndex__columnsAndCollations__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:?];
  v4 = v3;
  v5 = *(a1 + 40);
  if (v3)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 integerValue];
    if (v7 >= 3)
    {
      v9 = v7;
      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull SQLCollationStringFromType(HDSQLiteIndexCollationType)"];
      [v10 handleFailureInFunction:v11 file:@"HDSQLiteEntityIndex.m" lineNumber:27 description:{@"Invalid HDSQLiteIndexCollationType type: %ld", v9}];

      __break(1u);
      return;
    }

    v8 = [v6 stringWithFormat:@"%@ %@", v12, off_2796BE5C0[v7]];
    [v5 addObject:v8];
  }

  else
  {
    [v5 addObject:v12];
  }
}

- (void)_columnsAndCollations
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = v1[4];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__HDSQLiteEntityIndex__columnsAndCollations__block_invoke;
    v7[3] = &unk_2796BE5A0;
    v7[4] = v1;
    v4 = v2;
    v8 = v4;
    [v3 enumerateObjectsUsingBlock:v7];
    v5 = v8;
    v1 = v4;
  }

  return v1;
}

@end