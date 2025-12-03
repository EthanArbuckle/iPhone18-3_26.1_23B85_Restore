@interface SUUILockupSwooshCollectionViewCell
- (SUUILockupSwooshCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureForItem:(id)item clientContext:(id)context;
@end

@implementation SUUILockupSwooshCollectionViewCell

- (SUUILockupSwooshCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SUUILockupSwooshCollectionViewCell;
  v3 = [(SUUICollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[SUUILockupSwooshCellLayout alloc] initWithCollectionViewCell:v3];
    layout = v3->_layout;
    v3->_layout = v4;

    [(SUUIItemCellLayout *)v3->_layout setDisplaysItemOfferButton:0];
  }

  return v3;
}

- (void)configureForItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  layout = self->_layout;
  artistName = [itemCopy artistName];
  [(SUUILockupSwooshCellLayout *)layout setArtistName:artistName];

  v10 = self->_layout;
  categoryName = [itemCopy categoryName];
  [(SUUILockupSwooshCellLayout *)v10 setCategory:categoryName];

  v12 = self->_layout;
  v13 = SUUILockupItemCountString(itemCopy, contextCopy);
  [(SUUILockupSwooshCellLayout *)v12 setItemCountString:v13];

  v14 = self->_layout;
  title = [itemCopy title];
  [(SUUILockupSwooshCellLayout *)v14 setTitle:title];

  primaryItemOffer = [itemCopy primaryItemOffer];
  if (!SUUIItemKindIsSoftwareKind([itemCopy itemKind]))
  {
    v17 = configureForItem_clientContext__sViewOffer_0;
    if (!configureForItem_clientContext__sViewOffer_0)
    {
      v18 = [SUUIItemOffer alloc];
      if (contextCopy)
      {
        [contextCopy localizedStringForKey:@"VIEW_BUTTON"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"VIEW_BUTTON" inBundles:0];
      }
      v19 = ;
      v20 = [(SUUIItemOffer *)v18 initWithButtonText:v19];
      v21 = configureForItem_clientContext__sViewOffer_0;
      configureForItem_clientContext__sViewOffer_0 = v20;

      v17 = configureForItem_clientContext__sViewOffer_0;
    }

    v22 = v17;

    primaryItemOffer = v22;
  }

  [(SUUILockupSwooshCellLayout *)self->_layout setItemOffer:primaryItemOffer];
  v23.receiver = self;
  v23.super_class = SUUILockupSwooshCollectionViewCell;
  [(SUUIItemCollectionViewCell *)&v23 configureForItem:itemCopy clientContext:contextCopy];
}

@end