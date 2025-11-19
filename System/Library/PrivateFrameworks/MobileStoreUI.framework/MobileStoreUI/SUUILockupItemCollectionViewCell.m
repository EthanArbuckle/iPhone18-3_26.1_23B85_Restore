@interface SUUILockupItemCollectionViewCell
- (SUUILockupItemCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureForItem:(id)a3 clientContext:(id)a4;
@end

@implementation SUUILockupItemCollectionViewCell

- (SUUILockupItemCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUILockupItemCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[SUUILockupItemCellLayout alloc] initWithCollectionViewCell:v3];
    layout = v3->_layout;
    v3->_layout = v4;
  }

  return v3;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  layout = self->_layout;
  v9 = [v6 artistName];
  [(SUUILockupItemCellLayout *)layout setArtistName:v9];

  v10 = self->_layout;
  v11 = [v6 categoryName];
  [(SUUILockupItemCellLayout *)v10 setCategoryString:v11];

  v12 = self->_layout;
  v13 = SUUILockupItemCountString(v6, v7);
  [(SUUILockupItemCellLayout *)v12 setItemCountString:v13];

  -[SUUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [v6 numberOfUserRatings]);
  v14 = self->_layout;
  v15 = [v6 title];
  [(SUUILockupItemCellLayout *)v14 setTitle:v15];

  v16 = self->_layout;
  [v6 userRating];
  *&v18 = v17 / 5.0;
  [(SUUILockupItemCellLayout *)v16 setUserRating:v18];
  v19 = self->_layout;
  v20 = [v6 editorialBadge];
  [(SUUILockupItemCellLayout *)v19 setEditorialBadgeString:v20];

  if ([v6 itemKind] == 12)
  {
    v21 = self->_layout;
    v22 = [v6 primaryItemOffer];
    [(SUUIItemCellLayout *)v21 setItemOffer:v22];

    v23 = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
    [v23 setUniversal:{SUUIItemDeviceFamilyIsUniversal(objc_msgSend(v6, "deviceFamilies"))}];

    if ([v6 hasInAppPurchases])
    {
      v24 = [v7 valueForConfigurationKey:@"inappnote"];
    }

    else
    {
      v24 = 0;
    }

    [(SUUIItemCellLayout *)self->_layout setItemOfferNoticeString:v24];
  }

  else
  {
    if (v6 && !configureForItem_clientContext__sViewOffer_1)
    {
      v25 = [SUUIItemOffer alloc];
      if (v7)
      {
        [v7 localizedStringForKey:@"VIEW_BUTTON"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"VIEW_BUTTON" inBundles:0];
      }
      v26 = ;
      v27 = [(SUUIItemOffer *)v25 initWithButtonText:v26];
      v28 = configureForItem_clientContext__sViewOffer_1;
      configureForItem_clientContext__sViewOffer_1 = v27;
    }

    [(SUUIItemCellLayout *)self->_layout setItemOffer:?];
    [(SUUIItemCellLayout *)self->_layout setItemOfferNoticeString:0];
    v24 = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
    [v24 setUniversal:0];
  }

  v29.receiver = self;
  v29.super_class = SUUILockupItemCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v29 configureForItem:v6 clientContext:v7];
}

@end