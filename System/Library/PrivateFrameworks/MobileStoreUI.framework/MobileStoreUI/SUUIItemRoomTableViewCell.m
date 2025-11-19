@interface SUUIItemRoomTableViewCell
- (SUUIItemRoomTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5;
@end

@implementation SUUIItemRoomTableViewCell

- (SUUIItemRoomTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUIItemRoomTableViewCell;
  v4 = [(SUUITableViewCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[SUUIItemBrowseCellLayout alloc] initWithTableViewCell:v4];
    layout = v4->_layout;
    v4->_layout = v5;
  }

  return v4;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4 rowIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  layout = self->_layout;
  v11 = [v8 primaryItemOffer];
  [(SUUIItemCellLayout *)layout setItemOffer:v11];

  v12 = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
  [v12 setUniversal:{SUUIItemDeviceFamilyIsUniversal(objc_msgSend(v8, "deviceFamilies"))}];

  -[SUUIItemBrowseCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [v8 numberOfUserRatings]);
  v13 = self->_layout;
  v14 = [v8 title];
  [(SUUIItemBrowseCellLayout *)v13 setTitle:v14];

  v15 = self->_layout;
  [v8 userRating];
  [(SUUIItemBrowseCellLayout *)v15 setUserRating:(v16 / 5.0)];
  if ([v8 hasInAppPurchases])
  {
    v17 = [v9 valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v17 = 0;
  }

  [(SUUIItemCellLayout *)self->_layout setItemOfferNoticeString:v17];
  v18 = [v8 itemKind];
  v19 = self->_layout;
  if (v18 == 17)
  {
    SUUILockupItemCountString(v8, v9);
  }

  else
  {
    [v8 categoryName];
  }
  v20 = ;
  [(SUUIItemBrowseCellLayout *)v19 setSubtitle:v20];

  v21.receiver = self;
  v21.super_class = SUUIItemRoomTableViewCell;
  [(SUUIItemTableViewCell *)&v21 configureForItem:v8 clientContext:v9 rowIndex:a5];
}

@end