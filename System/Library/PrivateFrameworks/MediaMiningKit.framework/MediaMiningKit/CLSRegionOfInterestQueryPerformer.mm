@interface CLSRegionOfInterestQueryPerformer
- (CLSRegionOfInterestQueryPerformer)initWithROICache:(id)a3 locationCache:(id)a4;
@end

@implementation CLSRegionOfInterestQueryPerformer

- (CLSRegionOfInterestQueryPerformer)initWithROICache:(id)a3 locationCache:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLSRegionOfInterestQueryPerformer;
  return [(CLSBusinessItemGenericQueryPerformer *)&v5 initWithBusinessCategoryCache:a3 locationCache:a4];
}

@end