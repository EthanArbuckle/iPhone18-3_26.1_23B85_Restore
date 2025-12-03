@interface SUUIItemCellLayout
- (BOOL)_canShowItemOfferNotice;
- (id)_parentCollectionViewCell;
- (void)_getParentTableView:(id *)view collectionView:(id *)collectionView;
- (void)_itemOfferConfirmAction:(id)action;
- (void)_reloadItemOfferButton:(BOOL)button;
- (void)_reloadItemOfferVisibility;
- (void)_showItemOfferConfirmationAction:(id)action;
- (void)dealloc;
- (void)itemOfferButtonWillAnimateTransition:(id)transition;
- (void)prepareForReuse;
- (void)resetLayout;
- (void)setBackgroundColor:(id)color;
- (void)setDisplaysItemOfferButton:(BOOL)button;
- (void)setIconImage:(id)image;
- (void)setIconImageHidden:(BOOL)hidden;
- (void)setItemOffer:(id)offer;
- (void)setItemOfferButtonAppearance:(id)appearance;
- (void)setItemOfferNoticeString:(id)string;
- (void)setItemState:(id)state animated:(BOOL)animated;
- (void)setRestricted:(BOOL)restricted;
@end

@implementation SUUIItemCellLayout

- (void)dealloc
{
  [(SUUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  [(SUUIItemOfferButton *)self->_itemOfferButton setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIItemCellLayout;
  [(SUUIItemCellLayout *)&v3 dealloc];
}

- (void)resetLayout
{
  [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:1];
  [(UILabel *)self->_itemOfferNoticeLabel setHidden:1];
  [(SUUICellImageView *)self->_iconImageView removeFromSuperview];
  iconImageView = self->_iconImageView;
  self->_iconImageView = 0;

  v4.receiver = self;
  v4.super_class = SUUIItemCellLayout;
  [(SUUICellLayout *)&v4 resetLayout];
}

- (void)setDisplaysItemOfferButton:(BOOL)button
{
  if (self->_hidesItemOfferButton == button)
  {
    self->_hidesItemOfferButton = !button;
    [(SUUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  image = [(SUUICellImageView *)self->_iconImageView image];

  v6 = imageCopy;
  if (image != imageCopy)
  {
    iconImageView = self->_iconImageView;
    if (!imageCopy)
    {
      [(SUUICellImageView *)iconImageView removeFromSuperview];
      v22 = self->_iconImageView;
      self->_iconImageView = 0;

      goto LABEL_11;
    }

    if (!iconImageView)
    {
      v8 = objc_alloc_init(SUUICellImageView);
      v9 = self->_iconImageView;
      self->_iconImageView = v8;

      v10 = self->_iconImageView;
      parentCellView = [(SUUICellLayout *)self parentCellView];
      backgroundColor = [parentCellView backgroundColor];
      [(SUUICellImageView *)v10 setBackgroundColor:backgroundColor];

      [(SUUICellImageView *)self->_iconImageView setHidden:[(SUUIItemCellLayout *)self isIconImageHidden]];
      contentView = [(SUUICellLayout *)self contentView];
      [contentView insertSubview:self->_iconImageView atIndex:0];

      iconImageView = self->_iconImageView;
    }

    image2 = [(SUUICellImageView *)iconImageView image];
    [image2 size];
    v16 = v15;
    v18 = v17;

    [(SUUICellImageView *)self->_iconImageView setImage:imageCopy];
    setNeedsLayout = [imageCopy size];
    v6 = imageCopy;
    if (v16 != v20 || v18 != v19)
    {
      [(SUUICellImageView *)self->_iconImageView sizeToFit];
LABEL_11:
      setNeedsLayout = [(SUUICellLayout *)self setNeedsLayout];
      v6 = imageCopy;
    }
  }

  MEMORY[0x2821F96F8](setNeedsLayout, v6);
}

- (void)setIconImageHidden:(BOOL)hidden
{
  if (self->_iconImageHidden != hidden)
  {
    self->_iconImageHidden = hidden;
    [(SUUICellImageView *)self->_iconImageView setHidden:?];
  }
}

- (void)setItemOffer:(id)offer
{
  offerCopy = offer;
  if (self->_itemOffer == offerCopy)
  {
    [(SUUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    objc_storeStrong(&self->_itemOffer, offer);
    [(SUUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)setItemOfferButtonAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (self->_itemOfferButtonAppearance != appearanceCopy)
  {
    v6 = appearanceCopy;
    objc_storeStrong(&self->_itemOfferButtonAppearance, appearance);
    [(SUUIItemOfferButton *)self->_itemOfferButton setColoringWithAppearance:self->_itemOfferButtonAppearance];
    appearanceCopy = v6;
  }
}

- (void)setItemOfferNoticeString:(id)string
{
  stringCopy = string;
  text = [(UILabel *)self->_itemOfferNoticeLabel text];

  v6 = stringCopy;
  if (text != stringCopy)
  {
    itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
    if (stringCopy)
    {
      if (!itemOfferNoticeLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_itemOfferNoticeLabel;
        self->_itemOfferNoticeLabel = v8;

        v10 = self->_itemOfferNoticeLabel;
        parentCellView = [(SUUICellLayout *)self parentCellView];
        backgroundColor = [parentCellView backgroundColor];
        [(UILabel *)v10 setBackgroundColor:backgroundColor];

        v13 = self->_itemOfferNoticeLabel;
        v14 = [MEMORY[0x277D74300] systemFontOfSize:7.0];
        [(UILabel *)v13 setFont:v14];

        [(UILabel *)self->_itemOfferNoticeLabel setNumberOfLines:3];
        [(UILabel *)self->_itemOfferNoticeLabel setTextAlignment:1];
        contentView = [(SUUICellLayout *)self contentView];
        [contentView addSubview:self->_itemOfferNoticeLabel];

        itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
      }

      [(UILabel *)itemOfferNoticeLabel setText:stringCopy];
      [(UILabel *)self->_itemOfferNoticeLabel setHidden:[(SUUIItemCellLayout *)self _canShowItemOfferNotice]^ 1];
      setNeedsLayout = [(SUUICellLayout *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)itemOfferNoticeLabel setHidden:1];
      setNeedsLayout = [(UILabel *)self->_itemOfferNoticeLabel setText:0];
    }

    v6 = stringCopy;
  }

  MEMORY[0x2821F96F8](setNeedsLayout, v6);
}

- (void)setItemState:(id)state animated:(BOOL)animated
{
  if (self->_itemState == state)
  {

    [(SUUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    animatedCopy = animated;
    v6 = [state copy];
    itemState = self->_itemState;
    self->_itemState = v6;

    [(SUUIItemCellLayout *)self _reloadItemOfferButton:animatedCopy];
  }
}

- (void)setRestricted:(BOOL)restricted
{
  if (self->_restricted != restricted)
  {
    self->_restricted = restricted;
    [(SUUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)prepareForReuse
{
  [(SUUIItemOfferButton *)self->_itemOfferButton removeButtonStateAnimations];
  v3.receiver = self;
  v3.super_class = SUUIItemCellLayout;
  [(SUUICellLayout *)&v3 prepareForReuse];
}

- (void)setBackgroundColor:(id)color
{
  iconImageView = self->_iconImageView;
  colorCopy = color;
  [(SUUICellImageView *)iconImageView setBackgroundColor:colorCopy];
  [(SUUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:colorCopy];
  [(UILabel *)self->_itemOfferNoticeLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIItemCellLayout;
  [(SUUICellLayout *)&v6 setBackgroundColor:colorCopy];
}

- (void)itemOfferButtonWillAnimateTransition:(id)transition
{
  [(UILabel *)self->_itemOfferNoticeLabel setHidden:[(SUUIItemCellLayout *)self _canShowItemOfferNotice]^ 1];

  [(SUUIItemCellLayout *)self layoutForItemOfferChange];
}

- (void)_itemOfferConfirmAction:(id)action
{
  v10 = 0;
  v11 = 0;
  [(SUUIItemCellLayout *)self _getParentTableView:&v11 collectionView:&v10];
  v4 = v11;
  v5 = v10;
  delegate = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    parentCellView = [(SUUICellLayout *)self parentCellView];
    [delegate itemTableView:v4 didConfirmItemOfferForTableViewCell:parentCellView];
  }

  delegate2 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    _parentCollectionViewCell = [(SUUIItemCellLayout *)self _parentCollectionViewCell];
    [delegate2 itemCollectionView:v5 didConfirmItemOfferForCell:_parentCollectionViewCell];
  }
}

- (void)_showItemOfferConfirmationAction:(id)action
{
  superview = [(SUUIItemOfferButton *)self->_itemOfferButton superview];
  [superview bringSubviewToFront:self->_itemOfferButton];

  itemOfferButton = self->_itemOfferButton;

  [(SUUIItemOfferButton *)itemOfferButton setShowingConfirmation:1 animated:1];
}

- (BOOL)_canShowItemOfferNotice
{
  text = [(UILabel *)self->_itemOfferNoticeLabel text];
  v4 = [text length];

  if (!v4)
  {
LABEL_4:
    LOBYTE(displaysItemOfferButton) = 0;
    return displaysItemOfferButton;
  }

  displaysItemOfferButton = [(SUUIItemCellLayout *)self displaysItemOfferButton];
  if (displaysItemOfferButton)
  {
    if (![(SUUIItemCellLayout *)self isRestricted])
    {
      itemState = [(SUUIItemCellLayout *)self itemState];
      state = [itemState state];

      LOBYTE(displaysItemOfferButton) = (state & 0xFFFFFFFFFFFFFFEFLL) == 0;
      return displaysItemOfferButton;
    }

    goto LABEL_4;
  }

  return displaysItemOfferButton;
}

- (void)_getParentTableView:(id *)view collectionView:(id *)collectionView
{
  parentCellView = [(SUUICellLayout *)self parentCellView];
  superview = [parentCellView superview];
  if (superview)
  {
    v7 = superview;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 0;
        v9 = v7;
      }

      else
      {
        objc_opt_class();
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v8 = v7;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v12 = v7;
      v10 = v8;
      v11 = v9;
LABEL_7:
      superview2 = [v7 superview];

      if (!v11 && !v10)
      {
        v7 = superview2;
        if (superview2)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  v10 = 0;
  v11 = 0;
  superview2 = 0;
LABEL_12:
  if (collectionView)
  {
    v14 = v10;
    *collectionView = v10;
  }

  if (view)
  {
    v15 = v11;
    *view = v11;
  }
}

- (id)_parentCollectionViewCell
{
  parentCellView = [(SUUICellLayout *)self parentCellView];
  if (parentCellView)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [parentCellView superview];

      parentCellView = superview;
    }

    while (superview);
  }

  return parentCellView;
}

- (void)_reloadItemOfferButton:(BOOL)button
{
  if (!self->_itemOffer || self->_hidesItemOfferButton || (v4 = button, [(SUUIItemCellLayout *)self isRestricted]))
  {
    [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:1];
  }

  else
  {
    itemOfferButton = self->_itemOfferButton;
    if (!itemOfferButton)
    {
      v8 = [SUUIItemOfferButton itemOfferButtonWithAppearance:self->_itemOfferButtonAppearance];
      v9 = self->_itemOfferButton;
      self->_itemOfferButton = v8;

      [(SUUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__cancelItemOfferConfirmationAction_ forControlEvents:0x10000];
      [(SUUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__itemOfferConfirmAction_ forControlEvents:0x20000];
      [(SUUIItemOfferButton *)self->_itemOfferButton addTarget:self action:sel__showItemOfferConfirmationAction_ forControlEvents:0x40000];
      v10 = self->_itemOfferButton;
      parentCellView = [(SUUICellLayout *)self parentCellView];
      backgroundColor = [parentCellView backgroundColor];
      [(SUUIItemOfferButton *)v10 setBackgroundColor:backgroundColor];

      LODWORD(v13) = -0.5;
      [(SUUIItemOfferButton *)self->_itemOfferButton setCharge:v13];
      [(SUUIItemOfferButton *)self->_itemOfferButton setDelegate:self];
      contentView = [(SUUICellLayout *)self contentView];
      [contentView addSubview:self->_itemOfferButton];

      itemOfferButton = self->_itemOfferButton;
    }

    [(SUUIItemOfferButton *)itemOfferButton setHidden:0];
    itemState = [(SUUIItemCellLayout *)self itemState];
    v16 = self->_itemOfferButton;
    itemOffer = self->_itemOffer;
    clientContext = [(SUUICellLayout *)self clientContext];
    v19 = [(SUUIItemOfferButton *)v16 setValuesUsingItemOffer:itemOffer itemState:itemState clientContext:clientContext animated:v4];

    if (v19)
    {
      [(SUUIItemOfferButton *)self->_itemOfferButton sizeToFit];
      [(SUUICellLayout *)self setNeedsLayout];
    }
  }

  itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
  v6 = [(SUUIItemCellLayout *)self _canShowItemOfferNotice]^ 1;

  [(UILabel *)itemOfferNoticeLabel setHidden:v6];
}

- (void)_reloadItemOfferVisibility
{
  v3 = !self->_itemOffer || self->_hidesItemOfferButton || [(SUUIItemCellLayout *)self isRestricted];
  [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:v3];
  itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
  v5 = [(SUUIItemCellLayout *)self _canShowItemOfferNotice]^ 1;

  [(UILabel *)itemOfferNoticeLabel setHidden:v5];
}

@end