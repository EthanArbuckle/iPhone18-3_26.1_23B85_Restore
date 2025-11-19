@interface HKAttributeConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKAttributeConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeType([a1 type], 1);
  v3 = [a1 value];
  [a1 operatorType];
  v4 = HDSQLiteComparisonTypeForPredicateOperator();
  v5 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeValue(v3, v4);
  v6 = MEMORY[0x277D10B20];
  v11[0] = v2;
  v11[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v6 predicateMatchingAllPredicates:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end