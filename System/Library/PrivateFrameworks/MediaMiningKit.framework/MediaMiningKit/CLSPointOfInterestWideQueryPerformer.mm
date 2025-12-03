@interface CLSPointOfInterestWideQueryPerformer
- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions;
- (CLSPointOfInterestWideQueryPerformer)initWithPOICache:(id)cache locationCache:(id)locationCache;
@end

@implementation CLSPointOfInterestWideQueryPerformer

- (BOOL)shouldQueryItemsForRegion:(id)region selectedRegions:(id)regions
{
  regionCopy = region;
  regionsCopy = regions;
  if (_os_feature_enabled_impl() && ([regionCopy radius], v8 <= 500.0))
  {
    v11.receiver = self;
    v11.super_class = CLSPointOfInterestWideQueryPerformer;
    v9 = [(CLSBusinessItemGenericQueryPerformer *)&v11 shouldQueryItemsForRegion:regionCopy selectedRegions:regionsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CLSPointOfInterestWideQueryPerformer)initWithPOICache:(id)cache locationCache:(id)locationCache
{
  v5.receiver = self;
  v5.super_class = CLSPointOfInterestWideQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:cache locationCache:locationCache];
}

@end