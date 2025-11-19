@interface COMessagingAddOnProvider
- (id)serviceAddOn;
@end

@implementation COMessagingAddOnProvider

- (id)serviceAddOn
{
  v2 = objc_alloc_init(COMessagingAddOn);

  return v2;
}

@end