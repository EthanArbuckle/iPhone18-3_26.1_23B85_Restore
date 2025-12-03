@interface EFSQLBlockValueSource
- (EFSQLBlockValueSource)initWithSourceTableName:(id)name creationBlock:(id)block selectResultExpression:(id)expression selectResultAlias:(id)alias;
- (id)comparisonExpressionForValue:(id)value predicateOperator:(unint64_t)operator;
@end

@implementation EFSQLBlockValueSource

- (EFSQLBlockValueSource)initWithSourceTableName:(id)name creationBlock:(id)block selectResultExpression:(id)expression selectResultAlias:(id)alias
{
  blockCopy = block;
  expressionCopy = expression;
  aliasCopy = alias;
  v17.receiver = self;
  v17.super_class = EFSQLBlockValueSource;
  v13 = [(EFSQLValueSource *)&v17 initWithTableName:name selectResultAlias:aliasCopy];
  if (v13)
  {
    v14 = _Block_copy(blockCopy);
    creationBlock = v13->_creationBlock;
    v13->_creationBlock = v14;

    objc_storeStrong(&v13->_selectResultExpression, expression);
    objc_storeStrong(&v13->_selectResultAlias, alias);
  }

  return v13;
}

- (id)comparisonExpressionForValue:(id)value predicateOperator:(unint64_t)operator
{
  v4 = (*(self->_creationBlock + 2))();

  return v4;
}

@end