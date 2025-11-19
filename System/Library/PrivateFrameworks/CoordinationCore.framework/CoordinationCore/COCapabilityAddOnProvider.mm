@interface COCapabilityAddOnProvider
- (id)serviceAddOn;
@end

@implementation COCapabilityAddOnProvider

- (id)serviceAddOn
{
  v2 = objc_alloc_init(COCapabilityAddOn);

  return v2;
}

@end