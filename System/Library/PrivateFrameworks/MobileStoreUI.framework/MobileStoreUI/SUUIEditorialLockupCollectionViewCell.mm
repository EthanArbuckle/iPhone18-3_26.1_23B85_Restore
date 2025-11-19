@interface SUUIEditorialLockupCollectionViewCell
- (SUUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)configureForItem:(id)a3 clientContext:(id)a4;
@end

@implementation SUUIEditorialLockupCollectionViewCell

- (SUUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SUUIEditorialLockupCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [(SUUICellLayout *)[SUUIEditorialLockupCellLayout alloc] initWithCollectionViewCell:v3];
    layout = v3->_layout;
    v3->_layout = v4;
  }

  return v3;
}

- (void)configureForItem:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SUUIEditorialLockupCellLayout *)self->_layout lockupCellLayout];
  v9 = [v6 categoryName];
  [v8 setCategoryString:v9];

  v10 = SUUILockupItemCountString(v6, v7);
  [v8 setItemCountString:v10];

  [v8 setNumberOfUserRatings:{objc_msgSend(v6, "numberOfUserRatings")}];
  v11 = [v6 title];
  [v8 setTitle:v11];

  [v6 userRating];
  *&v13 = v12 / 5.0;
  [v8 setUserRating:v13];
  if (!v6)
  {
    [(SUUIEditorialLockupCellLayout *)self->_layout setItemOffer:0];
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if ([v6 itemKind] != 12)
  {
    if (!configureForItem_clientContext__sViewOffer)
    {
      v15 = [SUUIItemOffer alloc];
      if (v7)
      {
        [v7 localizedStringForKey:@"VIEW_BUTTON"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"VIEW_BUTTON" inBundles:0];
      }
      v19 = ;
      v20 = [(SUUIItemOffer *)v15 initWithButtonText:v19];
      v21 = configureForItem_clientContext__sViewOffer;
      configureForItem_clientContext__sViewOffer = v20;
    }

    [(SUUIEditorialLockupCellLayout *)self->_layout setItemOffer:?];
    v22 = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
    [v22 setUniversal:0];

    goto LABEL_14;
  }

  if ([v6 hasInAppPurchases])
  {
    v14 = [v7 valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v14 = 0;
  }

  layout = self->_layout;
  v17 = [v6 primaryItemOffer];
  [(SUUIEditorialLockupCellLayout *)layout setItemOffer:v17];

  v18 = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
  [v18 setUniversal:{SUUIItemDeviceFamilyIsUniversal(objc_msgSend(v6, "deviceFamilies"))}];

LABEL_15:
  [(SUUIEditorialLockupCellLayout *)self->_layout setItemOfferNoticeString:v14];
  v23.receiver = self;
  v23.super_class = SUUIEditorialLockupCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v23 configureForItem:v6 clientContext:v7];
}

@end