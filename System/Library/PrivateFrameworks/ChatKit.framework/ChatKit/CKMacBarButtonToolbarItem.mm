@interface CKMacBarButtonToolbarItem
- (CKMacBarButtonToolbarItem)init;
@end

@implementation CKMacBarButtonToolbarItem

- (CKMacBarButtonToolbarItem)init
{
  v3.receiver = self;
  v3.super_class = CKMacBarButtonToolbarItem;
  return [(CKMacToolbarItem *)&v3 init];
}

@end