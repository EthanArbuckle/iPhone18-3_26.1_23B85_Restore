@interface HKIdentifierConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKIdentifierConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  v1 = [a1 identifier];
  v2 = HDSimpleGraphDatabaseNodeEntityPredicateForIdentifier([v1 rawIdentifier], 1);

  return v2;
}

@end