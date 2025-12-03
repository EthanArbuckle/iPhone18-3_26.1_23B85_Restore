@interface EFSQLGeneratorComparisonPredicateNode
- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)source predicateOperator:(unint64_t)operator comparisonSource:(id)comparisonSource;
- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)source predicateOperator:(unint64_t)operator constantValue:(id)value;
- (EFSQLValueExpressable)sqlExpressable;
@end

@implementation EFSQLGeneratorComparisonPredicateNode

- (EFSQLValueExpressable)sqlExpressable
{
  constantValue = [(EFSQLGeneratorComparisonPredicateNode *)self constantValue];

  if (constantValue)
  {
    valueSource = [(EFSQLGeneratorComparisonPredicateNode *)self valueSource];
    constantValue2 = [(EFSQLGeneratorComparisonPredicateNode *)self constantValue];
    v7 = [valueSource comparisonExpressionForValue:constantValue2 predicateOperator:{-[EFSQLGeneratorComparisonPredicateNode predicateOperator](self, "predicateOperator")}];
  }

  else
  {
    comparisonSource = [(EFSQLGeneratorComparisonPredicateNode *)self comparisonSource];

    if (!comparisonSource)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EFSQLGeneratorPredicateNode.m" lineNumber:100 description:@"Need something to compare to"];
    }

    valueSource = [(EFSQLGeneratorComparisonPredicateNode *)self comparisonSource];
    constantValue2 = [(EFSQLGeneratorComparisonPredicateNode *)self valueSource];
    selectResultExpression = [valueSource selectResultExpression];
    v7 = [constantValue2 comparisonExpressionForValue:selectResultExpression predicateOperator:{-[EFSQLGeneratorComparisonPredicateNode predicateOperator](self, "predicateOperator")}];
  }

  return v7;
}

- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)source predicateOperator:(unint64_t)operator comparisonSource:(id)comparisonSource
{
  sourceCopy = source;
  comparisonSourceCopy = comparisonSource;
  v14.receiver = self;
  v14.super_class = EFSQLGeneratorComparisonPredicateNode;
  v11 = [(EFSQLGeneratorComparisonPredicateNode *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueSource, source);
    v12->_predicateOperator = operator;
    objc_storeStrong(&v12->_comparisonSource, comparisonSource);
  }

  return v12;
}

- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)source predicateOperator:(unint64_t)operator constantValue:(id)value
{
  sourceCopy = source;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = EFSQLGeneratorComparisonPredicateNode;
  v11 = [(EFSQLGeneratorComparisonPredicateNode *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueSource, source);
    v12->_predicateOperator = operator;
    objc_storeStrong(&v12->_constantValue, value);
  }

  return v12;
}

@end