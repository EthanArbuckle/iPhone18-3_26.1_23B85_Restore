@interface EFSQLGeneratorComparisonPredicateNode
- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)a3 predicateOperator:(unint64_t)a4 comparisonSource:(id)a5;
- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)a3 predicateOperator:(unint64_t)a4 constantValue:(id)a5;
- (EFSQLValueExpressable)sqlExpressable;
@end

@implementation EFSQLGeneratorComparisonPredicateNode

- (EFSQLValueExpressable)sqlExpressable
{
  v4 = [(EFSQLGeneratorComparisonPredicateNode *)self constantValue];

  if (v4)
  {
    v5 = [(EFSQLGeneratorComparisonPredicateNode *)self valueSource];
    v6 = [(EFSQLGeneratorComparisonPredicateNode *)self constantValue];
    v7 = [v5 comparisonExpressionForValue:v6 predicateOperator:{-[EFSQLGeneratorComparisonPredicateNode predicateOperator](self, "predicateOperator")}];
  }

  else
  {
    v8 = [(EFSQLGeneratorComparisonPredicateNode *)self comparisonSource];

    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"EFSQLGeneratorPredicateNode.m" lineNumber:100 description:@"Need something to compare to"];
    }

    v5 = [(EFSQLGeneratorComparisonPredicateNode *)self comparisonSource];
    v6 = [(EFSQLGeneratorComparisonPredicateNode *)self valueSource];
    v9 = [v5 selectResultExpression];
    v7 = [v6 comparisonExpressionForValue:v9 predicateOperator:{-[EFSQLGeneratorComparisonPredicateNode predicateOperator](self, "predicateOperator")}];
  }

  return v7;
}

- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)a3 predicateOperator:(unint64_t)a4 comparisonSource:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EFSQLGeneratorComparisonPredicateNode;
  v11 = [(EFSQLGeneratorComparisonPredicateNode *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueSource, a3);
    v12->_predicateOperator = a4;
    objc_storeStrong(&v12->_comparisonSource, a5);
  }

  return v12;
}

- (EFSQLGeneratorComparisonPredicateNode)initWithValueSource:(id)a3 predicateOperator:(unint64_t)a4 constantValue:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EFSQLGeneratorComparisonPredicateNode;
  v11 = [(EFSQLGeneratorComparisonPredicateNode *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_valueSource, a3);
    v12->_predicateOperator = a4;
    objc_storeStrong(&v12->_constantValue, a5);
  }

  return v12;
}

@end