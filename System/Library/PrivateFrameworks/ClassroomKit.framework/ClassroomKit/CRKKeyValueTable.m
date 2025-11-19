@interface CRKKeyValueTable
- (CRKKeyValueTable)initWithDictionary:(id)a3;
- (CRKKeyValueTable)initWithKeyValuePairs:(id)a3;
- (CRKTable)table;
- (id)crk_JSONRepresentationWithPrettyPrinting:(BOOL)a3 sortKeys:(BOOL)a4;
- (id)tableString;
@end

@implementation CRKKeyValueTable

- (CRKKeyValueTable)initWithKeyValuePairs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKKeyValueTable;
  v5 = [(CRKKeyValueTable *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    keyValuePairs = v5->_keyValuePairs;
    v5->_keyValuePairs = v6;
  }

  return v5;
}

- (CRKKeyValueTable)initWithDictionary:(id)a3
{
  v4 = [a3 crk_mapUsingBlock:&__block_literal_global_108];
  v5 = [[CRKKeyValueTable alloc] initWithKeyValuePairs:v4];

  return v5;
}

CRKKeyValuePair *__39__CRKKeyValueTable_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[CRKKeyValuePair alloc] initWithKey:v5 value:v4];

  return v6;
}

- (id)crk_JSONRepresentationWithPrettyPrinting:(BOOL)a3 sortKeys:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(CRKKeyValueTable *)self keyValuePairs];
  v7 = [v6 crk_dictionaryUsingKeyGenerator:&__block_literal_global_4_0 valueGenerator:&__block_literal_global_7];

  v8 = [v7 crk_JSONRepresentationWithPrettyPrinting:v5 sortKeys:v4];

  return v8;
}

- (CRKTable)table
{
  table = self->_table;
  if (!table)
  {
    v4 = [(CRKKeyValueTable *)self keyValuePairs];
    v5 = [CRKTable parsableTableWithKeyValuePairs:v4];
    v6 = self->_table;
    self->_table = v5;

    table = self->_table;
  }

  return table;
}

- (id)tableString
{
  v2 = [(CRKKeyValueTable *)self table];
  v3 = [v2 stringValue];

  return v3;
}

@end