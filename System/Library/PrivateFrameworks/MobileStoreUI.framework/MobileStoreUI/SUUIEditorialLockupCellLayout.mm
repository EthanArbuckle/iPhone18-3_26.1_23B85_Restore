@interface SUUIEditorialLockupCellLayout
+ (double)_imagePaddingForArtworkSize:(int64_t)size;
+ (double)editorialWidthForCellWidth:(double)width lockupStyle:(SUUILockupStyle *)style;
- (BOOL)_isItemOfferButtonHidden;
- (SUUILockupItemCellLayout)lockupCellLayout;
- (SUUITextBoxView)textBoxView;
- (UIEdgeInsets)contentInsets;
- (id)_editorialCellLayout;
- (id)_editorialContainerView;
- (id)_lockupView;
- (id)itemOffer;
- (id)itemOfferNoticeString;
- (id)itemState;
- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setClientContext:(id)context;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setIconImage:(id)image;
- (void)setIconImageHidden:(BOOL)hidden;
- (void)setItemOffer:(id)offer;
- (void)setItemOfferButtonAppearance:(id)appearance;
- (void)setItemOfferNoticeString:(id)string;
- (void)setItemState:(id)state animated:(BOOL)animated;
- (void)setLayoutStyle:(int64_t)style;
- (void)setRestricted:(BOOL)restricted;
- (void)setVisibleFields:(unint64_t)fields;
@end

@implementation SUUIEditorialLockupCellLayout

+ (double)editorialWidthForCellWidth:(double)width lockupStyle:(SUUILockupStyle *)style
{
  if (!SUUILockupLayoutStyleIsHorizontal(style->layoutStyle))
  {
    v7 = SUUILockupImageSizeForLockupSize(style->artworkSize, 12);
    [self _imagePaddingForArtworkSize:style->artworkSize];
    return width - (v7 + v8) + -15.0;
  }

  return width;
}

- (void)applyEditorialLayout:(id)layout withOrientation:(int64_t)orientation
{
  layoutCopy = layout;
  v6 = [layoutCopy bodyTextLayoutForOrientation:orientation];
  v7 = [layoutCopy linkLayoutForOrientation:orientation];
  v8 = [layoutCopy titleTextLayoutForOrientation:orientation];
  v9 = v8;
  if (v6 || v7 || v8)
  {
    _editorialContainerView = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    [_editorialContainerView setHidden:0];
  }

  else
  {
    [(UIView *)self->_editorialContainerView setHidden:1];
  }

  _editorialCellLayout = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [_editorialCellLayout applyEditorialLayout:layoutCopy withOrientation:orientation expanded:1];

  [layoutCopy layoutHeightForOrientation:orientation expanded:1];
  self->_editorialHeight = v12;
  [(SUUICellLayout *)self setNeedsLayout];
}

- (SUUILockupItemCellLayout)lockupCellLayout
{
  _lockupView = [(SUUIEditorialLockupCellLayout *)self _lockupView];
  layout = [_lockupView layout];

  return layout;
}

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  primaryTextColor = [schemeCopy primaryTextColor];
  offerNoticeTextColor = self->_offerNoticeTextColor;
  self->_offerNoticeTextColor = primaryTextColor;

  itemOfferNoticeLabel = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
  v8 = itemOfferNoticeLabel;
  if (self->_offerNoticeTextColor)
  {
    [itemOfferNoticeLabel setTextColor:?];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v8 setTextColor:v9];
  }

  _editorialCellLayout = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [_editorialCellLayout setColoringWithColorScheme:schemeCopy];

  lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setColoringWithColorScheme:schemeCopy];
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    v22 = v3;
    v23 = v4;
    self->_layoutStyle = style;
    [(SUUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:?];
    _showsItemOfferUnderEditorial = [(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial];
    lockupLayout = self->_lockupLayout;
    if (_showsItemOfferUnderEditorial)
    {
      itemOffer = [(SUUIItemCellLayout *)self->_lockupLayout itemOffer];
      v21.receiver = self;
      v21.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v21 setItemOffer:itemOffer];

      itemOfferNoticeString = [(SUUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
      v20.receiver = self;
      v20.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v20 setItemOfferNoticeString:itemOfferNoticeString];

      itemState = [(SUUIItemCellLayout *)self->_lockupLayout itemState];
      v19.receiver = self;
      v19.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v19 setItemState:itemState];

      [(SUUIItemCellLayout *)self->_lockupLayout setItemOffer:0];
      [(SUUIItemCellLayout *)self->_lockupLayout setItemOfferNoticeString:0];
      [(SUUIItemCellLayout *)self->_lockupLayout setItemState:0];
    }

    else
    {
      itemOffer2 = [(SUUIEditorialLockupCellLayout *)self itemOffer];
      [(SUUIItemCellLayout *)lockupLayout setItemOffer:itemOffer2];

      v12 = self->_lockupLayout;
      itemOfferNoticeString2 = [(SUUIEditorialLockupCellLayout *)self itemOfferNoticeString];
      [(SUUIItemCellLayout *)v12 setItemOfferNoticeString:itemOfferNoticeString2];

      v14 = self->_lockupLayout;
      itemState2 = [(SUUIEditorialLockupCellLayout *)self itemState];
      [(SUUIItemCellLayout *)v14 setItemState:itemState2];

      v18.receiver = self;
      v18.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v18 setItemOffer:0];
      v17.receiver = self;
      v17.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v17 setItemOfferNoticeString:0];
      v16.receiver = self;
      v16.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v16 setItemState:0];
    }

    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (void)setVisibleFields:(unint64_t)fields
{
  if (self->_visibleFields != fields)
  {
    self->_visibleFields = fields;
    [(SUUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:?];

    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (SUUITextBoxView)textBoxView
{
  _editorialCellLayout = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
  textBoxView = [_editorialCellLayout textBoxView];

  return textBoxView;
}

- (void)layoutSubviews
{
  contentView = [(SUUICellLayout *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  p_contentInsets = &self->_contentInsets;
  v9 = v7 - self->_contentInsets.bottom;
  v10 = v5 - self->_contentInsets.right;
  if (SUUILockupLayoutStyleIsHorizontal(self->_layoutStyle))
  {
    _editorialContainerView = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    left = self->_contentInsets.left;
    v13 = p_contentInsets->top + -3.0;
    v14 = self->_editorialHeight + 17.0;
    v15 = v10 - left;
    _lockupView2 = _editorialContainerView;
    [_editorialContainerView setFrame:{left, v13, v10 - left, v14}];
    _editorialCellLayout = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [_editorialCellLayout layoutSubviews];

    v17 = self->_contentInsets.left;
    v51.origin.x = left;
    v51.origin.y = v13;
    v51.size.width = v10 - left;
    v51.size.height = v14;
    MaxY = CGRectGetMaxY(v51);
    v19 = v9 - self->_contentInsets.bottom - MaxY;
    _lockupView = [(SUUIEditorialLockupCellLayout *)self _lockupView];
    [_lockupView setFrame:{v17, MaxY, v15, v19}];
  }

  else
  {
    _lockupView2 = [(SUUIEditorialLockupCellLayout *)self _lockupView];
    lockupSize = [(SUUILockupItemCellLayout *)self->_lockupLayout lockupSize];
    v22 = SUUILockupImageSizeForLockupSize(lockupSize, 12);
    top = p_contentInsets->top;
    v23 = self->_contentInsets.left;
    v25 = v9 - p_contentInsets->top;
    [objc_opt_class() _imagePaddingForArtworkSize:lockupSize];
    v27 = v22 + v26;
    [_lockupView2 setFrame:{v23, top, v27, v25}];
    _lockupView = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    v52.origin.x = v23;
    v52.origin.y = top;
    v52.size.width = v27;
    v52.size.height = v25;
    v28 = CGRectGetMaxX(v52) + 15.0;
    v29 = p_contentInsets->top + -3.0;
    v30 = self->_editorialHeight + 17.0;
    v31 = v10 - v28;
    [_lockupView setFrame:{v28, v29, v31, v30}];
    _editorialCellLayout2 = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [_editorialCellLayout2 layoutSubviews];

    itemOfferButton = [(SUUIItemCellLayout *)self itemOfferButton];
    itemOfferNoticeLabel = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
    if ([(SUUIEditorialLockupCellLayout *)self _isItemOfferButtonHidden])
    {
      [itemOfferButton setHidden:1];
      [itemOfferNoticeLabel setHidden:1];
    }

    else if (itemOfferButton)
    {
      [itemOfferButton frame];
      v36 = v35;
      v38 = v37;
      v53.origin.x = v28;
      v53.origin.y = v29;
      v53.size.width = v31;
      v53.size.height = v30;
      v39 = CGRectGetMaxY(v53) + 0.0;
      [itemOfferButton setHidden:0];
      text = [itemOfferNoticeLabel text];
      v41 = [text length];

      if (v41)
      {
        if (itemOfferNoticeLabel)
        {
          [itemOfferNoticeLabel sizeThatFits:{v36 + 10.0, 1.79769313e308}];
          v43 = v42;
          v45 = v44;
          *&v42 = (v36 - v42) * 0.5;
          v46 = v28 + floorf(*&v42);
          v54.origin.x = v28;
          v54.origin.y = v39;
          v54.size.width = v36;
          v54.size.height = v38;
          v47 = CGRectGetMaxY(v54) + 3.0;
          [itemOfferNoticeLabel setHidden:0];
          [itemOfferNoticeLabel setFrame:{v46, v47, v43, v45}];
          if (self->_offerNoticeTextColor)
          {
            [itemOfferNoticeLabel setTextColor:?];
          }

          else
          {
            v48 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
            [itemOfferNoticeLabel setTextColor:v48];
          }
        }
      }

      else
      {
        [itemOfferNoticeLabel setHidden:1];
      }

      [itemOfferButton setFrame:{v28, v39, v36, v38}];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  editorialCellLayout = self->_editorialCellLayout;
  colorCopy = color;
  [(SUUIEditorialCellLayout *)editorialCellLayout setBackgroundColor:colorCopy];
  [(UIView *)self->_editorialContainerView setBackgroundColor:colorCopy];
  [(SUUICellLayoutView *)self->_lockupView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUIItemCellLayout *)&v6 setBackgroundColor:colorCopy];
}

- (id)itemOffer
{
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v5.receiver = self;
    v5.super_class = SUUIEditorialLockupCellLayout;
    itemOffer = [(SUUIItemCellLayout *)&v5 itemOffer];
  }

  else
  {
    itemOffer = [(SUUIItemCellLayout *)self->_lockupLayout itemOffer];
  }

  return itemOffer;
}

- (id)itemOfferNoticeString
{
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v5.receiver = self;
    v5.super_class = SUUIEditorialLockupCellLayout;
    itemOfferNoticeString = [(SUUIItemCellLayout *)&v5 itemOfferNoticeString];
  }

  else
  {
    itemOfferNoticeString = [(SUUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
  }

  return itemOfferNoticeString;
}

- (id)itemState
{
  if (SUUILockupLayoutStyleIsHorizontal(self->_layoutStyle))
  {
    itemState = [(SUUIItemCellLayout *)self->_lockupLayout itemState];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUIEditorialLockupCellLayout;
    itemState = [(SUUIItemCellLayout *)&v5 itemState];
  }

  return itemState;
}

- (void)layoutForItemOfferChange
{
  itemOfferButton = [(SUUIItemCellLayout *)self itemOfferButton];
  [itemOfferButton frame];
  v4 = v3;
  v6 = v5;
  [itemOfferButton sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v8 = v7;
  v10 = v9;
  itemOfferNoticeLabel = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
  v12 = itemOfferNoticeLabel;
  if (itemOfferNoticeLabel && ([itemOfferNoticeLabel isHidden] & 1) == 0)
  {
    [v12 frame];
    v14 = v13;
    [v12 sizeThatFits:{v8 + 10.0, 1.79769313e308}];
    v16 = v15;
    *&v15 = (v8 - v15) * 0.5;
    [v12 setFrame:{v4 + floorf(*&v15), v14, v16, v17}];
  }

  [itemOfferButton setFrame:{v4, v6, v8, v10}];
}

- (void)setClientContext:(id)context
{
  lockupLayout = self->_lockupLayout;
  contextCopy = context;
  [(SUUILockupItemCellLayout *)lockupLayout setClientContext:contextCopy];
  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUICellLayout *)&v6 setClientContext:contextCopy];
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setIconImage:imageCopy];
}

- (void)setIconImageHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setIconImageHidden:hiddenCopy];
}

- (void)setItemOffer:(id)offer
{
  offerCopy = offer;
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v6.receiver = self;
    v6.super_class = SUUIEditorialLockupCellLayout;
    [(SUUIItemCellLayout *)&v6 setItemOffer:offerCopy];
  }

  else
  {
    lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
    [lockupCellLayout setItemOffer:offerCopy];
  }
}

- (void)setItemOfferButtonAppearance:(id)appearance
{
  appearanceCopy = appearance;
  lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setItemOfferButtonAppearance:appearanceCopy];

  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUIItemCellLayout *)&v6 setItemOfferButtonAppearance:appearanceCopy];
}

- (void)setItemOfferNoticeString:(id)string
{
  stringCopy = string;
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v6.receiver = self;
    v6.super_class = SUUIEditorialLockupCellLayout;
    [(SUUIItemCellLayout *)&v6 setItemOfferNoticeString:stringCopy];
  }

  else
  {
    lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
    [lockupCellLayout setItemOfferNoticeString:stringCopy];
  }
}

- (void)setItemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v8.receiver = self;
    v8.super_class = SUUIEditorialLockupCellLayout;
    [(SUUIItemCellLayout *)&v8 setItemState:stateCopy animated:animatedCopy];
  }

  else
  {
    lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
    [lockupCellLayout setItemState:stateCopy animated:animatedCopy];
  }
}

- (void)setRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  lockupCellLayout = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [lockupCellLayout setRestricted:restrictedCopy];

  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUIItemCellLayout *)&v6 setRestricted:restrictedCopy];
}

- (id)_editorialCellLayout
{
  editorialCellLayout = self->_editorialCellLayout;
  if (!editorialCellLayout)
  {
    v4 = [SUUIEditorialCellLayout alloc];
    _editorialContainerView = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    v6 = [(SUUIEditorialCellLayout *)v4 initWithParentView:_editorialContainerView];
    v7 = self->_editorialCellLayout;
    self->_editorialCellLayout = v6;

    v8 = self->_editorialCellLayout;
    parentCellView = [(SUUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SUUIEditorialCellLayout *)v8 setBackgroundColor:backgroundColor];

    [(SUUIEditorialCellLayout *)self->_editorialCellLayout setContentInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    editorialCellLayout = self->_editorialCellLayout;
  }

  return editorialCellLayout;
}

- (id)_editorialContainerView
{
  editorialContainerView = self->_editorialContainerView;
  if (!editorialContainerView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_editorialContainerView;
    self->_editorialContainerView = v4;

    v6 = self->_editorialContainerView;
    parentCellView = [(SUUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(UIView *)v6 setBackgroundColor:backgroundColor];

    contentView = [(SUUICellLayout *)self contentView];
    [contentView addSubview:self->_editorialContainerView];

    editorialContainerView = self->_editorialContainerView;
  }

  return editorialContainerView;
}

+ (double)_imagePaddingForArtworkSize:(int64_t)size
{
  result = 10.0;
  if ((size - 3) < 3)
  {
    return 15.0;
  }

  return result;
}

- (BOOL)_isItemOfferButtonHidden
{
  if (![(SUUIItemCellLayout *)self displaysItemOfferButton]|| ([(SUUIEditorialLockupCellLayout *)self visibleFields]& 4) == 0)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  itemOffer = [(SUUIItemCellLayout *)&v6 itemOffer];
  if (itemOffer)
  {
    isRestricted = [(SUUIItemCellLayout *)self isRestricted];
  }

  else
  {
    isRestricted = 1;
  }

  return isRestricted;
}

- (id)_lockupView
{
  lockupView = self->_lockupView;
  if (!lockupView)
  {
    v4 = objc_alloc_init(SUUICellLayoutView);
    v5 = self->_lockupView;
    self->_lockupView = v4;

    v6 = [[SUUILockupItemCellLayout alloc] initWithParentView:self->_lockupView];
    lockupLayout = self->_lockupLayout;
    self->_lockupLayout = v6;

    v8 = self->_lockupLayout;
    clientContext = [(SUUICellLayout *)self clientContext];
    [(SUUILockupItemCellLayout *)v8 setClientContext:clientContext];

    [(SUUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:self->_layoutStyle];
    [(SUUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:self->_visibleFields];
    [(SUUICellLayoutView *)self->_lockupView setLayout:self->_lockupLayout];
    v10 = self->_lockupView;
    parentCellView = [(SUUICellLayout *)self parentCellView];
    backgroundColor = [parentCellView backgroundColor];
    [(SUUICellLayoutView *)v10 setBackgroundColor:backgroundColor];

    contentView = [(SUUICellLayout *)self contentView];
    [contentView addSubview:self->_lockupView];

    lockupView = self->_lockupView;
  }

  return lockupView;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end