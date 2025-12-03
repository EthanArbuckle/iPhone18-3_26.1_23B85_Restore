@interface SUUILockupItemCollectionViewCell
- (SUUILockupItemCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForItem:(id)item clientContext:(id)context;
@end

@implementation SUUILockupItemCollectionViewCell

- (SUUILockupItemCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUILockupItemCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[SUUILockupItemCellLayout alloc] initWithCollectionViewCell:v3];
    layout = v3->_layout;
    v3->_layout = v4;
  }

  return v3;
}

- (void)configureForItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  layout = self->_layout;
  artistName = [itemCopy artistName];
  [(SUUILockupItemCellLayout *)layout setArtistName:artistName];

  v10 = self->_layout;
  categoryName = [itemCopy categoryName];
  [(SUUILockupItemCellLayout *)v10 setCategoryString:categoryName];

  v12 = self->_layout;
  v13 = SUUILockupItemCountString(itemCopy, contextCopy);
  [(SUUILockupItemCellLayout *)v12 setItemCountString:v13];

  -[SUUILockupItemCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v14 = self->_layout;
  title = [itemCopy title];
  [(SUUILockupItemCellLayout *)v14 setTitle:title];

  v16 = self->_layout;
  [itemCopy userRating];
  *&v18 = v17 / 5.0;
  [(SUUILockupItemCellLayout *)v16 setUserRating:v18];
  v19 = self->_layout;
  editorialBadge = [itemCopy editorialBadge];
  [(SUUILockupItemCellLayout *)v19 setEditorialBadgeString:editorialBadge];

  if ([itemCopy itemKind] == 12)
  {
    v21 = self->_layout;
    primaryItemOffer = [itemCopy primaryItemOffer];
    [(SUUIItemCellLayout *)v21 setItemOffer:primaryItemOffer];

    itemOfferButton = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
    [itemOfferButton setUniversal:{SUUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

    if ([itemCopy hasInAppPurchases])
    {
      itemOfferButton2 = [contextCopy valueForConfigurationKey:@"inappnote"];
    }

    else
    {
      itemOfferButton2 = 0;
    }

    [(SUUIItemCellLayout *)self->_layout setItemOfferNoticeString:itemOfferButton2];
  }

  else
  {
    if (itemCopy && !configureForItem_clientContext__sViewOffer_1)
    {
      v25 = [SUUIItemOffer alloc];
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"VIEW_BUTTON"];
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
    itemOfferButton2 = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
    [itemOfferButton2 setUniversal:0];
  }

  v29.receiver = self;
  v29.super_class = SUUILockupItemCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v29 configureForItem:itemCopy clientContext:contextCopy];
}

@end