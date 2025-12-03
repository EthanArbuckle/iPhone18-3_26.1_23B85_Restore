@interface CKMacMenuToolbarItem
- (CKMacMenuToolbarItem)initWithItemIdentifier:(id)identifier image:(id)image menu:(id)menu showsIndicator:(BOOL)indicator;
@end

@implementation CKMacMenuToolbarItem

- (CKMacMenuToolbarItem)initWithItemIdentifier:(id)identifier image:(id)image menu:(id)menu showsIndicator:(BOOL)indicator
{
  v7.receiver = self;
  v7.super_class = CKMacMenuToolbarItem;
  return [(CKMacToolbarItem *)&v7 init:identifier];
}

@end