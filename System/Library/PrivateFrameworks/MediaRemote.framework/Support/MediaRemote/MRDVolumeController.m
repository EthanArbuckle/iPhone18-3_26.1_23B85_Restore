@interface MRDVolumeController
+ (id)allocWithZone:(_NSZone *)a3;
- (MRDVolumeController)initWithRoutingDataSource:(id)a3;
@end

@implementation MRDVolumeController

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(MRDVolumeController *)MRDMediaServerVolumeController allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MRDVolumeController;
    return objc_msgSendSuper2(&v6, "allocWithZone:", a3);
  }
}

- (MRDVolumeController)initWithRoutingDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRDVolumeController;
  v6 = [(MRDVolumeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingDataSource, a3);
  }

  return v7;
}

@end