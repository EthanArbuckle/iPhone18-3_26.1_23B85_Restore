@interface CKMacToolbarItem
- (CKMacToolbarItem)init;
@end

@implementation CKMacToolbarItem

- (CKMacToolbarItem)init
{
  v6.receiver = self;
  v6.super_class = CKMacToolbarItem;
  v2 = [(CKMacToolbarItem *)&v6 init];
  v3 = v2;
  if (v2)
  {
    itemIdentifier = v2->_itemIdentifier;
    v2->_itemIdentifier = &stru_1F04268F8;
  }

  return v3;
}

@end