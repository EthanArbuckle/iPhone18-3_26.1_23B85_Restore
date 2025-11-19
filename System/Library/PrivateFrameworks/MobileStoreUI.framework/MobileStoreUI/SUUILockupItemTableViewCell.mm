@interface SUUILockupItemTableViewCell
- (SUUILockupItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5;
@end

@implementation SUUILockupItemTableViewCell

- (SUUILockupItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUILockupItemTableViewCell;
  v4 = [(SUUITableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[SUUILockupItemCellLayout alloc] initWithTableViewCell:v4];
    layout = v4->_layout;
    v4->_layout = v5;
  }

  return v4;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5
{
  layout = self->_layout;
  v9 = a4;
  v10 = a3;
  v11 = [v10 categoryName];
  [(SUUILockupItemCellLayout *)layout setCategoryString:v11];

  v12 = self->_layout;
  v13 = SUUILockupItemCountString(v10, v9);
  [(SUUILockupItemCellLayout *)v12 setItemCountString:v13];

  v14 = self->_layout;
  v15 = [v10 primaryItemOffer];
  [(SUUIItemCellLayout *)v14 setItemOffer:v15];

  -[SUUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [v10 numberOfUserRatings]);
  v16 = self->_layout;
  v17 = [v10 title];
  [(SUUILockupItemCellLayout *)v16 setTitle:v17];

  v18 = self->_layout;
  [v10 userRating];
  [(SUUILockupItemCellLayout *)v18 setUserRating:?];
  v19.receiver = self;
  v19.super_class = SUUILockupItemTableViewCell;
  [(SUUIItemTableViewCell *)&v19 configureForItem:v10 clientContext:v9 rowIndex:a5];
}

@end