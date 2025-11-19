@interface CLSPointOfInterestWideQueryPerformer
- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4;
- (CLSPointOfInterestWideQueryPerformer)initWithPOICache:(id)a3 locationCache:(id)a4;
@end

@implementation CLSPointOfInterestWideQueryPerformer

- (BOOL)shouldQueryItemsForRegion:(id)a3 selectedRegions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl() && ([v6 radius], v8 <= 500.0))
  {
    v11.receiver = self;
    v11.super_class = CLSPointOfInterestWideQueryPerformer;
    v9 = [(CLSBusinessItemGenericQueryPerformer *)&v11 shouldQueryItemsForRegion:v6 selectedRegions:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CLSPointOfInterestWideQueryPerformer)initWithPOICache:(id)a3 locationCache:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLSPointOfInterestWideQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:a3 locationCache:a4];
}

@end