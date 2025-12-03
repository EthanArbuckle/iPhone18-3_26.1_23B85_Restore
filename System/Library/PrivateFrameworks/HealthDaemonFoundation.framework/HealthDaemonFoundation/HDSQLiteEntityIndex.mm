@interface HDSQLiteEntityIndex
- (HDSQLiteEntityIndex)initWithEntity:(Class)entity name:(id)name columns:(id)columns collationForColumn:(id)column unique:(BOOL)unique predicateString:(id)string;
- (NSString)disambiguatedName;
- (id)creationSQL;
- (void)_columnsAndCollations;
@end

@implementation HDSQLiteEntityIndex

- (HDSQLiteEntityIndex)initWithEntity:(Class)entity name:(id)name columns:(id)columns collationForColumn:(id)column unique:(BOOL)unique predicateString:(id)string
{
  nameCopy = name;
  columnsCopy = columns;
  columnCopy = column;
  stringCopy = string;
  v29.receiver = self;
  v29.super_class = HDSQLiteEntityIndex;
  v18 = [(HDSQLiteEntityIndex *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_entityClass, entity);
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v19->_unique = unique;
    v22 = [columnCopy copy];
    collationColumnMapping = v19->_collationColumnMapping;
    v19->_collationColumnMapping = v22;

    v24 = [columnsCopy copy];
    columns = v19->_columns;
    v19->_columns = v24;

    v26 = [stringCopy copy];
    predicateString = v19->_predicateString;
    v19->_predicateString = v26;
  }

  return v19;
}

- (NSString)disambiguatedName
{
  databaseName = [(objc_class *)self->_entityClass databaseName];
  v4 = MEMORY[0x277CCACA8];
  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  v6 = databaseTable;
  name = self->_name;
  if (databaseName)
  {
    [v4 stringWithFormat:@"%@.%@_%@", databaseName, databaseTable, name];
  }

  else
  {
    [v4 stringWithFormat:@"%@_%@", databaseTable, name, v10];
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
  disambiguatedName = [(HDSQLiteEntityIndex *)self disambiguatedName];
  databaseTable = [(objc_class *)self->_entityClass databaseTable];
  _columnsAndCollations = [(HDSQLiteEntityIndex *)self _columnsAndCollations];
  v9 = [_columnsAndCollations componentsJoinedByString:{@", "}];
  v10 = [v5 stringWithFormat:@"INDEX IF NOT EXISTS %@ ON %@ (%@)", disambiguatedName, databaseTable, v9];
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
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = selfCopy[4];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__HDSQLiteEntityIndex__columnsAndCollations__block_invoke;
    v7[3] = &unk_2796BE5A0;
    v7[4] = selfCopy;
    v4 = v2;
    v8 = v4;
    [v3 enumerateObjectsUsingBlock:v7];
    v5 = v8;
    selfCopy = v4;
  }

  return selfCopy;
}

@end