@interface DiscoveryItem
+ (id)_predicateForActiveOrActionedItems;
@end

@implementation DiscoveryItem

+ (id)_predicateForActiveOrActionedItems
{
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"status" equalToValue:&off_1008A3098];
  v7[0] = v2;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"status" equalToValue:&off_1008A30B0];
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];

  return v5;
}

@end