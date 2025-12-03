@interface SUUILockupItemTableViewCell
- (SUUILockupItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index;
@end

@implementation SUUILockupItemTableViewCell

- (SUUILockupItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SUUILockupItemTableViewCell;
  v4 = [(SUUITableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[SUUILockupItemCellLayout alloc] initWithTableViewCell:v4];
    layout = v4->_layout;
    v4->_layout = v5;
  }

  return v4;
}

- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index
{
  layout = self->_layout;
  contextCopy = context;
  itemCopy = item;
  categoryName = [itemCopy categoryName];
  [(SUUILockupItemCellLayout *)layout setCategoryString:categoryName];

  v12 = self->_layout;
  v13 = SUUILockupItemCountString(itemCopy, contextCopy);
  [(SUUILockupItemCellLayout *)v12 setItemCountString:v13];

  v14 = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SUUIItemCellLayout *)v14 setItemOffer:primaryItemOffer];

  -[SUUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v16 = self->_layout;
  title = [itemCopy title];
  [(SUUILockupItemCellLayout *)v16 setTitle:title];

  v18 = self->_layout;
  [itemCopy userRating];
  [(SUUILockupItemCellLayout *)v18 setUserRating:?];
  v19.receiver = self;
  v19.super_class = SUUILockupItemTableViewCell;
  [(SUUIItemTableViewCell *)&v19 configureForItem:itemCopy clientContext:contextCopy rowIndex:index];
}

@end