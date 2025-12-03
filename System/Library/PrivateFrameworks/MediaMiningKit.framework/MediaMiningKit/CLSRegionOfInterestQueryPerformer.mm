@interface CLSRegionOfInterestQueryPerformer
- (CLSRegionOfInterestQueryPerformer)initWithROICache:(id)cache locationCache:(id)locationCache;
@end

@implementation CLSRegionOfInterestQueryPerformer

- (CLSRegionOfInterestQueryPerformer)initWithROICache:(id)cache locationCache:(id)locationCache
{
  v5.receiver = self;
  v5.super_class = CLSRegionOfInterestQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:cache locationCache:locationCache];
}

@end