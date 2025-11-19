@interface CKMacMenuToolbarItem
- (CKMacMenuToolbarItem)initWithItemIdentifier:(id)a3 image:(id)a4 menu:(id)a5 showsIndicator:(BOOL)a6;
@end

@implementation CKMacMenuToolbarItem

- (CKMacMenuToolbarItem)initWithItemIdentifier:(id)a3 image:(id)a4 menu:(id)a5 showsIndicator:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = CKMacMenuToolbarItem;
  return [(CKMacToolbarItem *)&v7 init:a3];
}

@end