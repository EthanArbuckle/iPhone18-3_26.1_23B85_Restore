@interface EFSQLValueSource
- (EFSQLValueSource)initWithTableName:(id)a3 selectResultAlias:(id)a4;
- (id)comparisonExpressionForValue:(id)a3 predicateOperator:(unint64_t)a4;
@end

@implementation EFSQLValueSource

- (EFSQLValueSource)initWithTableName:(id)a3 selectResultAlias:(id)a4
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = EFSQLValueSource;
  v10 = [(EFSQLValueSource *)&v13 init];
  if (v10)
  {
    if (!v8)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"EFSQLObjectPropertyMapper.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];
    }

    objc_storeStrong(&v10->_tableName, a3);
    objc_storeStrong(&v10->_selectResultAlias, a4);
  }

  return v10;
}

- (id)comparisonExpressionForValue:(id)a3 predicateOperator:(unint64_t)a4
{
  v6 = a3;
  [(EFSQLValueSource *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EFSQLValueSource comparisonExpressionForValue:predicateOperator:]", "EFSQLObjectPropertyMapper.m", 42, "0");
}

@end