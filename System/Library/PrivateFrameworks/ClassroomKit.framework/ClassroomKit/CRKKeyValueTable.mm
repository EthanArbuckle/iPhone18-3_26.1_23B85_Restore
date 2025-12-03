@interface CRKKeyValueTable
- (CRKKeyValueTable)initWithDictionary:(id)dictionary;
- (CRKKeyValueTable)initWithKeyValuePairs:(id)pairs;
- (CRKTable)table;
- (id)crk_JSONRepresentationWithPrettyPrinting:(BOOL)printing sortKeys:(BOOL)keys;
- (id)tableString;
@end

@implementation CRKKeyValueTable

- (CRKKeyValueTable)initWithKeyValuePairs:(id)pairs
{
  pairsCopy = pairs;
  v9.receiver = self;
  v9.super_class = CRKKeyValueTable;
  v5 = [(CRKKeyValueTable *)&v9 init];
  if (v5)
  {
    v6 = [pairsCopy copy];
    keyValuePairs = v5->_keyValuePairs;
    v5->_keyValuePairs = v6;
  }

  return v5;
}

- (CRKKeyValueTable)initWithDictionary:(id)dictionary
{
  v4 = [dictionary crk_mapUsingBlock:&__block_literal_global_108];
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

- (id)crk_JSONRepresentationWithPrettyPrinting:(BOOL)printing sortKeys:(BOOL)keys
{
  keysCopy = keys;
  printingCopy = printing;
  keyValuePairs = [(CRKKeyValueTable *)self keyValuePairs];
  v7 = [keyValuePairs crk_dictionaryUsingKeyGenerator:&__block_literal_global_4_0 valueGenerator:&__block_literal_global_7];

  v8 = [v7 crk_JSONRepresentationWithPrettyPrinting:printingCopy sortKeys:keysCopy];

  return v8;
}

- (CRKTable)table
{
  table = self->_table;
  if (!table)
  {
    keyValuePairs = [(CRKKeyValueTable *)self keyValuePairs];
    v5 = [CRKTable parsableTableWithKeyValuePairs:keyValuePairs];
    v6 = self->_table;
    self->_table = v5;

    table = self->_table;
  }

  return table;
}

- (id)tableString
{
  table = [(CRKKeyValueTable *)self table];
  stringValue = [table stringValue];

  return stringValue;
}

@end