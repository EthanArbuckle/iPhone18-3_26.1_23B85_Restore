@interface SUUIItemBrowseTableViewCell
- (SUUIItemBrowseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForItem:(id)item clientContext:(id)context rowIndex:(int64_t)index;
@end

@implementation SUUIItemBrowseTableViewCell

- (SUUIItemBrowseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = SUUIItemBrowseTableViewCell;
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
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", index + 1];
  [(SUUIItemBrowseCellLayout *)layout setIndexNumberString:v11];

  v12 = self->_layout;
  primaryItemOffer = [itemCopy primaryItemOffer];
  [(SUUIItemCellLayout *)v12 setItemOffer:primaryItemOffer];

  itemOfferButton = [(SUUIItemCellLayout *)self->_layout itemOfferButton];
  [itemOfferButton setUniversal:{SUUIItemDeviceFamilyIsUniversal(objc_msgSend(itemCopy, "deviceFamilies"))}];

  -[SUUIItemBrowseCellLayout setNumberOfUserRatings:](self->_layout, "setNumberOfUserRatings:", [itemCopy numberOfUserRatings]);
  v15 = self->_layout;
  title = [itemCopy title];
  [(SUUIItemBrowseCellLayout *)v15 setTitle:title];

  v17 = self->_layout;
  [itemCopy userRating];
  [(SUUIItemBrowseCellLayout *)v17 setUserRating:(v18 / 5.0)];
  if ([itemCopy hasInAppPurchases])
  {
    v19 = [contextCopy valueForConfigurationKey:@"inappnote"];
  }

  else
  {
    v19 = 0;
  }

  [(SUUIItemCellLayout *)self->_layout setItemOfferNoticeString:v19];
  itemKind = [itemCopy itemKind];
  v21 = self->_layout;
  if (itemKind == 17)
  {
    SUUILockupItemCountString(itemCopy, contextCopy);
  }

  else
  {
    [itemCopy categoryName];
  }
  v22 = ;
  [(SUUIItemBrowseCellLayout *)v21 setSubtitle:v22];

  v23.receiver = self;
  v23.super_class = SUUIItemBrowseTableViewCell;
  [(SUUIItemTableViewCell *)&v23 configureForItem:itemCopy clientContext:contextCopy rowIndex:index];
}

@end