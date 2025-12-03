@interface MTRDevice(HomeDataModelExtensions)
- (id)initForTestingWithClusterID:()HomeDataModelExtensions;
- (void)hdm_containingHome;
@end

@implementation MTRDevice(HomeDataModelExtensions)

- (void)hdm_containingHome
{
  v2 = objc_getAssociatedObject(self, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)initForTestingWithClusterID:()HomeDataModelExtensions
{
  v2.receiver = self;
  v2.super_class = &off_1F4DA98C0;
  return objc_msgSendSuper2(&v2, sel_init);
}

@end