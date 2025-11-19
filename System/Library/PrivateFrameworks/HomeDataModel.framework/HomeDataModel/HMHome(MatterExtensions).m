@interface HMHome(MatterExtensions)
- (id)hdm_sharedMatterController;
@end

@implementation HMHome(MatterExtensions)

- (id)hdm_sharedMatterController
{
  v4 = objc_getAssociatedObject(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v6 = [a1 hdm_createMatterController];
    objc_setAssociatedObject(a1, a2, v6, 1);
  }

  return v6;
}

@end