@interface MURelatedPlaceSectionControllerConfiguration
- (MURelatedPlaceSectionControllerConfiguration)initWithDataSource:(int64_t)a3 relatedPlaceList:(id)a4 trailHead:(id)a5;
@end

@implementation MURelatedPlaceSectionControllerConfiguration

- (MURelatedPlaceSectionControllerConfiguration)initWithDataSource:(int64_t)a3 relatedPlaceList:(id)a4 trailHead:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MURelatedPlaceSectionControllerConfiguration;
  v11 = [(MURelatedPlaceSectionControllerConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_dataSource = a3;
    objc_storeStrong(&v11->_relatedPlaceList, a4);
    objc_storeStrong(&v12->_trailHead, a5);
  }

  return v12;
}

@end