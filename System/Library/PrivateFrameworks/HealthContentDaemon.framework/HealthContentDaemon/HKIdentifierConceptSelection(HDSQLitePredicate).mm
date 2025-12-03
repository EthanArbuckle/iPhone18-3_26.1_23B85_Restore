@interface HKIdentifierConceptSelection(HDSQLitePredicate)
- (id)predicateWithProfile:()HDSQLitePredicate;
@end

@implementation HKIdentifierConceptSelection(HDSQLitePredicate)

- (id)predicateWithProfile:()HDSQLitePredicate
{
  identifier = [self identifier];
  v2 = HDSimpleGraphDatabaseNodeEntityPredicateForIdentifier([identifier rawIdentifier], 1);

  return v2;
}

@end