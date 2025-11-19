@interface CORoleAddOnProvider
- (id)serviceAddOn;
@end

@implementation CORoleAddOnProvider

- (id)serviceAddOn
{
  v2 = objc_alloc_init(CORoleAddOn);

  return v2;
}

@end