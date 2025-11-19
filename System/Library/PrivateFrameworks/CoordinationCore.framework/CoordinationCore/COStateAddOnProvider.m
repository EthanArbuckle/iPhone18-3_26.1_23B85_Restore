@interface COStateAddOnProvider
- (id)serviceAddOn;
@end

@implementation COStateAddOnProvider

- (id)serviceAddOn
{
  v2 = objc_alloc_init(COStateAddOn);

  return v2;
}

@end