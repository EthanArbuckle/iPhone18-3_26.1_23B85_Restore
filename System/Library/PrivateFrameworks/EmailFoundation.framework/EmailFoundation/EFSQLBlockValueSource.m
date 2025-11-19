@interface EFSQLBlockValueSource
- (EFSQLBlockValueSource)initWithSourceTableName:(id)a3 creationBlock:(id)a4 selectResultExpression:(id)a5 selectResultAlias:(id)a6;
- (id)comparisonExpressionForValue:(id)a3 predicateOperator:(unint64_t)a4;
@end

@implementation EFSQLBlockValueSource

- (EFSQLBlockValueSource)initWithSourceTableName:(id)a3 creationBlock:(id)a4 selectResultExpression:(id)a5 selectResultAlias:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = EFSQLBlockValueSource;
  v13 = [(EFSQLValueSource *)&v17 initWithTableName:a3 selectResultAlias:v12];
  if (v13)
  {
    v14 = _Block_copy(v10);
    creationBlock = v13->_creationBlock;
    v13->_creationBlock = v14;

    objc_storeStrong(&v13->_selectResultExpression, a5);
    objc_storeStrong(&v13->_selectResultAlias, a6);
  }

  return v13;
}

- (id)comparisonExpressionForValue:(id)a3 predicateOperator:(unint64_t)a4
{
  v4 = (*(self->_creationBlock + 2))();

  return v4;
}

@end