@interface HDNotificationCategorySampleSyncEntity
+ (id)_predicateForCategoryTypesToSync;
@end

@implementation HDNotificationCategorySampleSyncEntity

+ (id)_predicateForCategoryTypesToSync
{
  v2 = +[HDCategorySampleSyncEntity _categoryTypesDerivedFromQuantitySamples];
  v3 = HDSampleEntityPredicateForDataTypes(v2);

  return v3;
}

@end