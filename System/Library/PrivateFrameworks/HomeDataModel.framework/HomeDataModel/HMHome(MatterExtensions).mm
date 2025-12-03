@interface HMHome(MatterExtensions)
- (id)hdm_sharedMatterController;
@end

@implementation HMHome(MatterExtensions)

- (id)hdm_sharedMatterController
{
  v4 = objc_getAssociatedObject(self, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  hdm_createMatterController = v4;
  if (!v5)
  {
    hdm_createMatterController = [self hdm_createMatterController];
    objc_setAssociatedObject(self, a2, hdm_createMatterController, 1);
  }

  return hdm_createMatterController;
}

@end