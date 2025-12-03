@interface CLSPointOfInterestNarrowQueryPerformer
+ (id)categories;
- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions;
- (CLSPointOfInterestNarrowQueryPerformer)initWithPOICache:(id)cache locationCache:(id)locationCache;
@end

@implementation CLSPointOfInterestNarrowQueryPerformer

- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions
{
  regionCopy = region;
  regionsCopy = regions;
  [regionCopy radius];
  if (v8 <= 20.0)
  {
    v11.receiver = self;
    v11.super_class = CLSPointOfInterestNarrowQueryPerformer;
    v9 = [(CLSBusinessItemGenericQueryPerformer *)&v11 shouldQueryItemsForRegion:regionCopy selectedRegions:regionsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CLSPointOfInterestNarrowQueryPerformer)initWithPOICache:(id)cache locationCache:(id)locationCache
{
  v5.receiver = self;
  v5.super_class = CLSPointOfInterestNarrowQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:cache locationCache:locationCache];
}

+ (id)categories
{
  if (_os_feature_enabled_impl())
  {
    +[CLSNewLocationInformant narrowPointOfInterestCategories];
  }

  else
  {
    +[CLSNewLocationInformant allPointOfInterestCategories];
  }
  v2 = ;

  return v2;
}

@end