@interface EFSQLIndexedColumnSchema
- (EFSQLIndexedColumnSchema)initWithColumnName:(id)name collation:(unint64_t)collation orderDirection:(unint64_t)direction;
- (EFSQLIndexedColumnSchema)initWithExpression:(id)expression collation:(unint64_t)collation orderDirection:(unint64_t)direction;
- (NSString)definition;
- (NSString)name;
@end

@implementation EFSQLIndexedColumnSchema

- (EFSQLIndexedColumnSchema)initWithExpression:(id)expression collation:(unint64_t)collation orderDirection:(unint64_t)direction
{
  expressionCopy = expression;
  v13.receiver = self;
  v13.super_class = EFSQLIndexedColumnSchema;
  v10 = [(EFSQLIndexedColumnSchema *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_expression, expression);
    v11->_collation = collation;
    v11->_orderDirection = direction;
  }

  return v11;
}

- (EFSQLIndexedColumnSchema)initWithColumnName:(id)name collation:(unint64_t)collation orderDirection:(unint64_t)direction
{
  nameCopy = name;
  v9 = [[EFSQLColumnExpression alloc] initWithName:nameCopy];
  v10 = [(EFSQLIndexedColumnSchema *)self initWithExpression:v9 collation:collation orderDirection:direction];

  return v10;
}

- (NSString)name
{
  expression = [(EFSQLIndexedColumnSchema *)self expression];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [expression name];
  }

  else
  {
    if (name_onceToken != -1)
    {
      [EFSQLIndexedColumnSchema name];
    }

    ef_SQLExpression = [expression ef_SQLExpression];
    name = [ef_SQLExpression ef_stringByRemovingCharactersInSet:name_sInvalidCharacters];
  }

  lowercaseString = [name lowercaseString];

  return lowercaseString;
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
  collation = [(EFSQLIndexedColumnSchema *)self collation];
  if (collation)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = EFSQLStringForCollation(collation);
    v6 = [v4 initWithFormat:@" %@", v5];

    collation = v6;
  }

  orderDirection = [(EFSQLIndexedColumnSchema *)self orderDirection];
  if (orderDirection)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = EFSQLStringForOrderDirection(orderDirection);
    v10 = [v8 initWithFormat:@" %@", v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  expression = [(EFSQLIndexedColumnSchema *)self expression];
  ef_SQLExpression = [expression ef_SQLExpression];
  v14 = ef_SQLExpression;
  v15 = &stru_1F459BF68;
  if (collation)
  {
    v16 = collation;
  }

  else
  {
    v16 = &stru_1F459BF68;
  }

  if (v10)
  {
    v15 = v10;
  }

  v17 = [v11 initWithFormat:@"%@%@%@", ef_SQLExpression, v16, v15];

  return v17;
}

@end