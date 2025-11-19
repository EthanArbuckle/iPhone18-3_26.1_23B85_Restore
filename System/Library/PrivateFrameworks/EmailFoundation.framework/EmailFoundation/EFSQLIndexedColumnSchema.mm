@interface EFSQLIndexedColumnSchema
- (EFSQLIndexedColumnSchema)initWithColumnName:(id)a3 collation:(unint64_t)a4 orderDirection:(unint64_t)a5;
- (EFSQLIndexedColumnSchema)initWithExpression:(id)a3 collation:(unint64_t)a4 orderDirection:(unint64_t)a5;
- (NSString)definition;
- (NSString)name;
@end

@implementation EFSQLIndexedColumnSchema

- (EFSQLIndexedColumnSchema)initWithExpression:(id)a3 collation:(unint64_t)a4 orderDirection:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = EFSQLIndexedColumnSchema;
  v10 = [(EFSQLIndexedColumnSchema *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_expression, a3);
    v11->_collation = a4;
    v11->_orderDirection = a5;
  }

  return v11;
}

- (EFSQLIndexedColumnSchema)initWithColumnName:(id)a3 collation:(unint64_t)a4 orderDirection:(unint64_t)a5
{
  v8 = a3;
  v9 = [[EFSQLColumnExpression alloc] initWithName:v8];
  v10 = [(EFSQLIndexedColumnSchema *)self initWithExpression:v9 collation:a4 orderDirection:a5];

  return v10;
}

- (NSString)name
{
  v2 = [(EFSQLIndexedColumnSchema *)self expression];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 name];
  }

  else
  {
    if (name_onceToken != -1)
    {
      [EFSQLIndexedColumnSchema name];
    }

    v4 = [v2 ef_SQLExpression];
    v3 = [v4 ef_stringByRemovingCharactersInSet:name_sInvalidCharacters];
  }

  v5 = [v3 lowercaseString];

  return v5;
}

void __32__EFSQLIndexedColumnSchema_name__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] ef_asciiAlphaNumericCharacterSet];
  v3 = [v0 mutableCopy];

  [v3 addCharactersInString:@"_"];
  v1 = [v3 invertedSet];
  v2 = name_sInvalidCharacters;
  name_sInvalidCharacters = v1;
}

- (NSString)definition
{
  v3 = [(EFSQLIndexedColumnSchema *)self collation];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = EFSQLStringForCollation(v3);
    v6 = [v4 initWithFormat:@" %@", v5];

    v3 = v6;
  }

  v7 = [(EFSQLIndexedColumnSchema *)self orderDirection];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = EFSQLStringForOrderDirection(v7);
    v10 = [v8 initWithFormat:@" %@", v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [(EFSQLIndexedColumnSchema *)self expression];
  v13 = [v12 ef_SQLExpression];
  v14 = v13;
  v15 = &stru_1F459BF68;
  if (v3)
  {
    v16 = v3;
  }

  else
  {
    v16 = &stru_1F459BF68;
  }

  if (v10)
  {
    v15 = v10;
  }

  v17 = [v11 initWithFormat:@"%@%@%@", v13, v16, v15];

  return v17;
}

@end