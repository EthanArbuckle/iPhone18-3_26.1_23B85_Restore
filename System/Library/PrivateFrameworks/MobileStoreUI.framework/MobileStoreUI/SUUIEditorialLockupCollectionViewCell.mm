@interface SUUIEditorialLockupCollectionViewCell
- (SUUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForItem:(id)item clientContext:(id)context;
@end

@implementation SUUIEditorialLockupCollectionViewCell

- (SUUIEditorialLockupCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUIEditorialLockupCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [(SUUICellLayout *)[SUUIEditorialLockupCellLayout alloc] initWithCollectionViewCell:v3];
    layout = v3->_layout;
    v3->_layout = v4;
  }

  return v3;
}

- (void)configureForItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self->_layout lockupCellLayout];
  categoryName = [itemCopy categoryName];
  [lockupCellLayout setCategoryString:categoryName];

  v10 = SUUILockupItemCountString(itemCopy, contextCopy);
  [lockupCellLayout setItemCountString:v10];

  [lockupCellLayout setNumberOfUserRatings:{objc_msgSend(itemCopy, "numberOfUserRatings")}];
  title = [itemCopy title];
  [lockupCellLayout setTitle:title];

  [itemCopy userRating];
  *&v13 = v12 / 5.0;
  [lockupCellLayout setUserRating:v13];
  if (!itemCopy)
  {
    [(SUUIEditorialLockupCellLayout *)self->_layout setItemOffer:0];
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if ([itemCopy itemKind] != 12)
  {
    if (!configureForItem_clientContext__sViewOffer)
    {
      v15 = [SUUIItemOffer alloc];
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"VIEW_BUTTON"];
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
    itemOfferButton = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
    [itemOfferButton setUniversal:0];

    goto LABEL_14;
  }

  if ([itemCopy hasInAppPurchases])
  {
    v14 = [contextCopy valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v14 = 0;
  }

  layout = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SUUIEditorialLockupCellLayout *)layout setItemOffer:primaryItemOffer];

  itemOfferButton2 = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
  [itemOfferButton2 setUniversal:{SUUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

LABEL_15:
  [(SUUIEditorialLockupCellLayout *)self->_layout setItemOfferNoticeString:v14];
  v23.receiver = self;
  v23.super_class = SUUIEditorialLockupCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v23 configureForItem:itemCopy clientContext:contextCopy];
}

@end