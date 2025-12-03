@interface NSCalendar(HDDeletedObjectEntityPredicates)
- (id)hd_predicateForDeletedObjectsCreatedBeforeDate:()HDDeletedObjectEntityPredicates minusDays:;
- (id)hd_predicateForDeletedObjectsCreatedOnOrAfterDate:()HDDeletedObjectEntityPredicates minusDays:;
@end

@implementation NSCalendar(HDDeletedObjectEntityPredicates)

- (id)hd_predicateForDeletedObjectsCreatedOnOrAfterDate:()HDDeletedObjectEntityPredicates minusDays:
{
  v4 = [self hk_dateBySubtractingDays:a4 fromDate:a3];
  v5 = HDDeletedObjectPredicateForDeletionDate(6);

  return v5;
}

- (id)hd_predicateForDeletedObjectsCreatedBeforeDate:()HDDeletedObjectEntityPredicates minusDays:
{
  v4 = [self hk_dateBySubtractingDays:a4 fromDate:a3];
  v5 = HDDeletedObjectPredicateForDeletionDate(3);

  return v5;
}

@end