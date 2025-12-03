@interface SUUIItemRoomTableViewCell
- (SUUIItemRoomTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index;
@end

@implementation SUUIItemRoomTableViewCell

- (SUUIItemRoomTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SUUIItemRoomTableViewCell;
  v4 = [(SUUITableViewCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[SUUIItemBrowseCellLayout alloc] initWithTableViewCell:v4];
    layout = v4->_layout;
    v4->_layout = v5;
  }

  return v4;
}

- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index
{
  itemCopy = item;
  contextCopy = context;
  layout = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SUUIItemCellLayout *)layout setItemOffer:primaryItemOffer];

  itemOfferButton = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
  [itemOfferButton setUniversal:{SUUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

  -[SUUIItemBrowseCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v13 = self->_layout;
  title = [itemCopy title];
  [(SUUIItemBrowseCellLayout *)v13 setTitle:title];

  v15 = self->_layout;
  [itemCopy userRating];
  [(SUUIItemBrowseCellLayout *)v15 setUserRating:(v16 / 5.0)];
  if ([itemCopy hasInAppPurchases])
  {
    v17 = [contextCopy valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v17 = 0;
  }

  [(SUUIItemCellLayout *)self->_layout setItemOfferNoticeString:v17];
  itemKind = [itemCopy itemKind];
  v19 = self->_layout;
  if (itemKind == 17)
  {
    SUUILockupItemCountString(itemCopy, contextCopy);
  }

  else
  {
    [itemCopy categoryName];
  }
  v20 = ;
  [(SUUIItemBrowseCellLayout *)v19 setSubtitle:v20];

  v21.receiver = self;
  v21.super_class = SUUIItemRoomTableViewCell;
  [(SUUIItemTableViewCell *)&v21 configureForItem:itemCopy clientContext:contextCopy rowIndex:index];
}

@end