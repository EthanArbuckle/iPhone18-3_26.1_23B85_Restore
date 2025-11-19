@interface SUUIItemCellLayout
- (BOOL)_canShowItemOfferNotice;
- (id)_parentCollectionViewCell;
- (void)_getParentTableView:(id *)a3 collectionView:(id *)a4;
- (void)_itemOfferConfirmAction:(id)a3;
- (void)_reloadItemOfferButton:(BOOL)a3;
- (void)_reloadItemOfferVisibility;
- (void)_showItemOfferConfirmationAction:(id)a3;
- (void)dealloc;
- (void)itemOfferButtonWillAnimateTransition:(id)a3;
- (void)prepareForReuse;
- (void)resetLayout;
- (void)setBackgroundColor:(id)a3;
- (void)setDisplaysItemOfferButton:(BOOL)a3;
- (void)setIconImage:(id)a3;
- (void)setIconImageHidden:(BOOL)a3;
- (void)setItemOffer:(id)a3;
- (void)setItemOfferButtonAppearance:(id)a3;
- (void)setItemOfferNoticeString:(id)a3;
- (void)setItemState:(id)a3 animated:(BOOL)a4;
- (void)setRestricted:(BOOL)a3;
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

- (void)setDisplaysItemOfferButton:(BOOL)a3
{
  if (self->_hidesItemOfferButton == a3)
  {
    self->_hidesItemOfferButton = !a3;
    [(SUUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)setIconImage:(id)a3
{
  v23 = a3;
  v4 = [(SUUICellImageView *)self->_iconImageView image];

  v6 = v23;
  if (v4 != v23)
  {
    iconImageView = self->_iconImageView;
    if (!v23)
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
      v11 = [(SUUICellLayout *)self parentCellView];
      v12 = [v11 backgroundColor];
      [(SUUICellImageView *)v10 setBackgroundColor:v12];

      [(SUUICellImageView *)self->_iconImageView setHidden:[(SUUIItemCellLayout *)self isIconImageHidden]];
      v13 = [(SUUICellLayout *)self contentView];
      [v13 insertSubview:self->_iconImageView atIndex:0];

      iconImageView = self->_iconImageView;
    }

    v14 = [(SUUICellImageView *)iconImageView image];
    [v14 size];
    v16 = v15;
    v18 = v17;

    [(SUUICellImageView *)self->_iconImageView setImage:v23];
    v5 = [v23 size];
    v6 = v23;
    if (v16 != v20 || v18 != v19)
    {
      [(SUUICellImageView *)self->_iconImageView sizeToFit];
LABEL_11:
      v5 = [(SUUICellLayout *)self setNeedsLayout];
      v6 = v23;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setIconImageHidden:(BOOL)a3
{
  if (self->_iconImageHidden != a3)
  {
    self->_iconImageHidden = a3;
    [(SUUICellImageView *)self->_iconImageView setHidden:?];
  }
}

- (void)setItemOffer:(id)a3
{
  v5 = a3;
  if (self->_itemOffer == v5)
  {
    [(SUUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    objc_storeStrong(&self->_itemOffer, a3);
    [(SUUIItemCellLayout *)self _reloadItemOfferButton:0];
  }
}

- (void)setItemOfferButtonAppearance:(id)a3
{
  v5 = a3;
  if (self->_itemOfferButtonAppearance != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_itemOfferButtonAppearance, a3);
    [(SUUIItemOfferButton *)self->_itemOfferButton setColoringWithAppearance:self->_itemOfferButtonAppearance];
    v5 = v6;
  }
}

- (void)setItemOfferNoticeString:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_itemOfferNoticeLabel text];

  v6 = v16;
  if (v4 != v16)
  {
    itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
    if (v16)
    {
      if (!itemOfferNoticeLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_itemOfferNoticeLabel;
        self->_itemOfferNoticeLabel = v8;

        v10 = self->_itemOfferNoticeLabel;
        v11 = [(SUUICellLayout *)self parentCellView];
        v12 = [v11 backgroundColor];
        [(UILabel *)v10 setBackgroundColor:v12];

        v13 = self->_itemOfferNoticeLabel;
        v14 = [MEMORY[0x277D74300] systemFontOfSize:7.0];
        [(UILabel *)v13 setFont:v14];

        [(UILabel *)self->_itemOfferNoticeLabel setNumberOfLines:3];
        [(UILabel *)self->_itemOfferNoticeLabel setTextAlignment:1];
        v15 = [(SUUICellLayout *)self contentView];
        [v15 addSubview:self->_itemOfferNoticeLabel];

        itemOfferNoticeLabel = self->_itemOfferNoticeLabel;
      }

      [(UILabel *)itemOfferNoticeLabel setText:v16];
      [(UILabel *)self->_itemOfferNoticeLabel setHidden:[(SUUIItemCellLayout *)self _canShowItemOfferNotice]^ 1];
      v5 = [(SUUICellLayout *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)itemOfferNoticeLabel setHidden:1];
      v5 = [(UILabel *)self->_itemOfferNoticeLabel setText:0];
    }

    v6 = v16;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setItemState:(id)a3 animated:(BOOL)a4
{
  if (self->_itemState == a3)
  {

    [(SUUIItemCellLayout *)self _reloadItemOfferVisibility];
  }

  else
  {
    v5 = a4;
    v6 = [a3 copy];
    itemState = self->_itemState;
    self->_itemState = v6;

    [(SUUIItemCellLayout *)self _reloadItemOfferButton:v5];
  }
}

- (void)setRestricted:(BOOL)a3
{
  if (self->_restricted != a3)
  {
    self->_restricted = a3;
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

- (void)setBackgroundColor:(id)a3
{
  iconImageView = self->_iconImageView;
  v5 = a3;
  [(SUUICellImageView *)iconImageView setBackgroundColor:v5];
  [(SUUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:v5];
  [(UILabel *)self->_itemOfferNoticeLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIItemCellLayout;
  [(SUUICellLayout *)&v6 setBackgroundColor:v5];
}

- (void)itemOfferButtonWillAnimateTransition:(id)a3
{
  [(UILabel *)self->_itemOfferNoticeLabel setHidden:[(SUUIItemCellLayout *)self _canShowItemOfferNotice]^ 1];

  [(SUUIItemCellLayout *)self layoutForItemOfferChange];
}

- (void)_itemOfferConfirmAction:(id)a3
{
  v10 = 0;
  v11 = 0;
  [(SUUIItemCellLayout *)self _getParentTableView:&v11 collectionView:&v10];
  v4 = v11;
  v5 = v10;
  v6 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(SUUICellLayout *)self parentCellView];
    [v6 itemTableView:v4 didConfirmItemOfferForTableViewCell:v7];
  }

  v8 = [v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SUUIItemCellLayout *)self _parentCollectionViewCell];
    [v8 itemCollectionView:v5 didConfirmItemOfferForCell:v9];
  }
}

- (void)_showItemOfferConfirmationAction:(id)a3
{
  v4 = [(SUUIItemOfferButton *)self->_itemOfferButton superview];
  [v4 bringSubviewToFront:self->_itemOfferButton];

  itemOfferButton = self->_itemOfferButton;

  [(SUUIItemOfferButton *)itemOfferButton setShowingConfirmation:1 animated:1];
}

- (BOOL)_canShowItemOfferNotice
{
  v3 = [(UILabel *)self->_itemOfferNoticeLabel text];
  v4 = [v3 length];

  if (!v4)
  {
LABEL_4:
    LOBYTE(v5) = 0;
    return v5;
  }

  v5 = [(SUUIItemCellLayout *)self displaysItemOfferButton];
  if (v5)
  {
    if (![(SUUIItemCellLayout *)self isRestricted])
    {
      v6 = [(SUUIItemCellLayout *)self itemState];
      v7 = [v6 state];

      LOBYTE(v5) = (v7 & 0xFFFFFFFFFFFFFFEFLL) == 0;
      return v5;
    }

    goto LABEL_4;
  }

  return v5;
}

- (void)_getParentTableView:(id *)a3 collectionView:(id *)a4
{
  v16 = [(SUUICellLayout *)self parentCellView];
  v6 = [v16 superview];
  if (v6)
  {
    v7 = v6;
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
      v13 = [v7 superview];

      if (!v11 && !v10)
      {
        v7 = v13;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  v10 = 0;
  v11 = 0;
  v13 = 0;
LABEL_12:
  if (a4)
  {
    v14 = v10;
    *a4 = v10;
  }

  if (a3)
  {
    v15 = v11;
    *a3 = v11;
  }
}

- (id)_parentCollectionViewCell
{
  v2 = [(SUUICellLayout *)self parentCellView];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (void)_reloadItemOfferButton:(BOOL)a3
{
  if (!self->_itemOffer || self->_hidesItemOfferButton || (v4 = a3, [(SUUIItemCellLayout *)self isRestricted]))
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
      v11 = [(SUUICellLayout *)self parentCellView];
      v12 = [v11 backgroundColor];
      [(SUUIItemOfferButton *)v10 setBackgroundColor:v12];

      LODWORD(v13) = -0.5;
      [(SUUIItemOfferButton *)self->_itemOfferButton setCharge:v13];
      [(SUUIItemOfferButton *)self->_itemOfferButton setDelegate:self];
      v14 = [(SUUICellLayout *)self contentView];
      [v14 addSubview:self->_itemOfferButton];

      itemOfferButton = self->_itemOfferButton;
    }

    [(SUUIItemOfferButton *)itemOfferButton setHidden:0];
    v15 = [(SUUIItemCellLayout *)self itemState];
    v16 = self->_itemOfferButton;
    itemOffer = self->_itemOffer;
    v18 = [(SUUICellLayout *)self clientContext];
    v19 = [(SUUIItemOfferButton *)v16 setValuesUsingItemOffer:itemOffer itemState:v15 clientContext:v18 animated:v4];

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