@interface EFSQLValueSource
- (EFSQLValueSource)initWithTableName:(id)name selectResultAlias:(id)alias;
- (id)comparisonExpressionForValue:(id)value predicateOperator:(unint64_t)operator;
@end

@implementation EFSQLValueSource

- (EFSQLValueSource)initWithTableName:(id)name selectResultAlias:(id)alias
{
  nameCopy = name;
  aliasCopy = alias;
  v13.receiver = self;
  v13.super_class = EFSQLValueSource;
  v10 = [(EFSQLValueSource *)&v13 init];
  if (v10)
  {
    if (!nameCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"EFSQLObjectPropertyMapper.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];
    }

    objc_storeStrong(&v10->_tableName, name);
    objc_storeStrong(&v10->_selectResultAlias, alias);
  }

  return v10;
}

- (id)comparisonExpressionForValue:(id)value predicateOperator:(unint64_t)operator
{
  valueCopy = value;
  [(EFSQLValueSource *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EFSQLValueSource comparisonExpressionForValue:predicateOperator:]", "EFSQLObjectPropertyMapper.m", 42, "0");
}

@end