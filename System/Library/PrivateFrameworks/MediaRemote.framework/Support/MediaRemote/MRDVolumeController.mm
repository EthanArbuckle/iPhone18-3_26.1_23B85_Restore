@interface MRDVolumeController
+ (id)allocWithZone:(_NSZone *)zone;
- (MRDVolumeController)initWithRoutingDataSource:(id)source;
@end

@implementation MRDVolumeController

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(MRDVolumeController *)MRDMediaServerVolumeController allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MRDVolumeController;
    return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
  }
}

- (MRDVolumeController)initWithRoutingDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = MRDVolumeController;
  v6 = [(MRDVolumeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingDataSource, source);
  }

  return v7;
}

@end