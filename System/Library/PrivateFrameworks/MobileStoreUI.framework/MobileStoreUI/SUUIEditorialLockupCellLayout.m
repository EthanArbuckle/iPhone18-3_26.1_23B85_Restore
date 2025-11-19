@interface SUUIEditorialLockupCellLayout
+ (double)_imagePaddingForArtworkSize:(int64_t)a3;
+ (double)editorialWidthForCellWidth:(double)a3 lockupStyle:(SUUILockupStyle *)a4;
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
- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4;
- (void)layoutForItemOfferChange;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setClientContext:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setIconImage:(id)a3;
- (void)setIconImageHidden:(BOOL)a3;
- (void)setItemOffer:(id)a3;
- (void)setItemOfferButtonAppearance:(id)a3;
- (void)setItemOfferNoticeString:(id)a3;
- (void)setItemState:(id)a3 animated:(BOOL)a4;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setRestricted:(BOOL)a3;
- (void)setVisibleFields:(unint64_t)a3;
@end

@implementation SUUIEditorialLockupCellLayout

+ (double)editorialWidthForCellWidth:(double)a3 lockupStyle:(SUUILockupStyle *)a4
{
  if (!SUUILockupLayoutStyleIsHorizontal(a4->layoutStyle))
  {
    v7 = SUUILockupImageSizeForLockupSize(a4->artworkSize, 12);
    [a1 _imagePaddingForArtworkSize:a4->artworkSize];
    return a3 - (v7 + v8) + -15.0;
  }

  return a3;
}

- (void)applyEditorialLayout:(id)a3 withOrientation:(int64_t)a4
{
  v13 = a3;
  v6 = [v13 bodyTextLayoutForOrientation:a4];
  v7 = [v13 linkLayoutForOrientation:a4];
  v8 = [v13 titleTextLayoutForOrientation:a4];
  v9 = v8;
  if (v6 || v7 || v8)
  {
    v10 = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    [v10 setHidden:0];
  }

  else
  {
    [(UIView *)self->_editorialContainerView setHidden:1];
  }

  v11 = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [v11 applyEditorialLayout:v13 withOrientation:a4 expanded:1];

  [v13 layoutHeightForOrientation:a4 expanded:1];
  self->_editorialHeight = v12;
  [(SUUICellLayout *)self setNeedsLayout];
}

- (SUUILockupItemCellLayout)lockupCellLayout
{
  v2 = [(SUUIEditorialLockupCellLayout *)self _lockupView];
  v3 = [v2 layout];

  return v3;
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  v5 = [v4 primaryTextColor];
  offerNoticeTextColor = self->_offerNoticeTextColor;
  self->_offerNoticeTextColor = v5;

  v7 = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
  v8 = v7;
  if (self->_offerNoticeTextColor)
  {
    [v7 setTextColor:?];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [v8 setTextColor:v9];
  }

  v10 = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
  [v10 setColoringWithColorScheme:v4];

  v11 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v11 setColoringWithColorScheme:v4];
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (void)setLayoutStyle:(int64_t)a3
{
  if (self->_layoutStyle != a3)
  {
    v22 = v3;
    v23 = v4;
    self->_layoutStyle = a3;
    [(SUUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:?];
    v6 = [(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial];
    lockupLayout = self->_lockupLayout;
    if (v6)
    {
      v8 = [(SUUIItemCellLayout *)self->_lockupLayout itemOffer];
      v21.receiver = self;
      v21.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v21 setItemOffer:v8];

      v9 = [(SUUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
      v20.receiver = self;
      v20.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v20 setItemOfferNoticeString:v9];

      v10 = [(SUUIItemCellLayout *)self->_lockupLayout itemState];
      v19.receiver = self;
      v19.super_class = SUUIEditorialLockupCellLayout;
      [(SUUIItemCellLayout *)&v19 setItemState:v10];

      [(SUUIItemCellLayout *)self->_lockupLayout setItemOffer:0];
      [(SUUIItemCellLayout *)self->_lockupLayout setItemOfferNoticeString:0];
      [(SUUIItemCellLayout *)self->_lockupLayout setItemState:0];
    }

    else
    {
      v11 = [(SUUIEditorialLockupCellLayout *)self itemOffer];
      [(SUUIItemCellLayout *)lockupLayout setItemOffer:v11];

      v12 = self->_lockupLayout;
      v13 = [(SUUIEditorialLockupCellLayout *)self itemOfferNoticeString];
      [(SUUIItemCellLayout *)v12 setItemOfferNoticeString:v13];

      v14 = self->_lockupLayout;
      v15 = [(SUUIEditorialLockupCellLayout *)self itemState];
      [(SUUIItemCellLayout *)v14 setItemState:v15];

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

- (void)setVisibleFields:(unint64_t)a3
{
  if (self->_visibleFields != a3)
  {
    self->_visibleFields = a3;
    [(SUUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:?];

    [(SUUICellLayout *)self setNeedsLayout];
  }
}

- (SUUITextBoxView)textBoxView
{
  v2 = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
  v3 = [v2 textBoxView];

  return v3;
}

- (void)layoutSubviews
{
  v3 = [(SUUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  p_contentInsets = &self->_contentInsets;
  v9 = v7 - self->_contentInsets.bottom;
  v10 = v5 - self->_contentInsets.right;
  if (SUUILockupLayoutStyleIsHorizontal(self->_layoutStyle))
  {
    v11 = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    left = self->_contentInsets.left;
    v13 = p_contentInsets->top + -3.0;
    v14 = self->_editorialHeight + 17.0;
    v15 = v10 - left;
    v49 = v11;
    [v11 setFrame:{left, v13, v10 - left, v14}];
    v16 = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [v16 layoutSubviews];

    v17 = self->_contentInsets.left;
    v51.origin.x = left;
    v51.origin.y = v13;
    v51.size.width = v10 - left;
    v51.size.height = v14;
    MaxY = CGRectGetMaxY(v51);
    v19 = v9 - self->_contentInsets.bottom - MaxY;
    v20 = [(SUUIEditorialLockupCellLayout *)self _lockupView];
    [v20 setFrame:{v17, MaxY, v15, v19}];
  }

  else
  {
    v49 = [(SUUIEditorialLockupCellLayout *)self _lockupView];
    v21 = [(SUUILockupItemCellLayout *)self->_lockupLayout lockupSize];
    v22 = SUUILockupImageSizeForLockupSize(v21, 12);
    top = p_contentInsets->top;
    v23 = self->_contentInsets.left;
    v25 = v9 - p_contentInsets->top;
    [objc_opt_class() _imagePaddingForArtworkSize:v21];
    v27 = v22 + v26;
    [v49 setFrame:{v23, top, v27, v25}];
    v20 = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    v52.origin.x = v23;
    v52.origin.y = top;
    v52.size.width = v27;
    v52.size.height = v25;
    v28 = CGRectGetMaxX(v52) + 15.0;
    v29 = p_contentInsets->top + -3.0;
    v30 = self->_editorialHeight + 17.0;
    v31 = v10 - v28;
    [v20 setFrame:{v28, v29, v31, v30}];
    v32 = [(SUUIEditorialLockupCellLayout *)self _editorialCellLayout];
    [v32 layoutSubviews];

    v33 = [(SUUIItemCellLayout *)self itemOfferButton];
    v34 = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
    if ([(SUUIEditorialLockupCellLayout *)self _isItemOfferButtonHidden])
    {
      [v33 setHidden:1];
      [v34 setHidden:1];
    }

    else if (v33)
    {
      [v33 frame];
      v36 = v35;
      v38 = v37;
      v53.origin.x = v28;
      v53.origin.y = v29;
      v53.size.width = v31;
      v53.size.height = v30;
      v39 = CGRectGetMaxY(v53) + 0.0;
      [v33 setHidden:0];
      v40 = [v34 text];
      v41 = [v40 length];

      if (v41)
      {
        if (v34)
        {
          [v34 sizeThatFits:{v36 + 10.0, 1.79769313e308}];
          v43 = v42;
          v45 = v44;
          *&v42 = (v36 - v42) * 0.5;
          v46 = v28 + floorf(*&v42);
          v54.origin.x = v28;
          v54.origin.y = v39;
          v54.size.width = v36;
          v54.size.height = v38;
          v47 = CGRectGetMaxY(v54) + 3.0;
          [v34 setHidden:0];
          [v34 setFrame:{v46, v47, v43, v45}];
          if (self->_offerNoticeTextColor)
          {
            [v34 setTextColor:?];
          }

          else
          {
            v48 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
            [v34 setTextColor:v48];
          }
        }
      }

      else
      {
        [v34 setHidden:1];
      }

      [v33 setFrame:{v28, v39, v36, v38}];
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  editorialCellLayout = self->_editorialCellLayout;
  v5 = a3;
  [(SUUIEditorialCellLayout *)editorialCellLayout setBackgroundColor:v5];
  [(UIView *)self->_editorialContainerView setBackgroundColor:v5];
  [(SUUICellLayoutView *)self->_lockupView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUIItemCellLayout *)&v6 setBackgroundColor:v5];
}

- (id)itemOffer
{
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v5.receiver = self;
    v5.super_class = SUUIEditorialLockupCellLayout;
    v3 = [(SUUIItemCellLayout *)&v5 itemOffer];
  }

  else
  {
    v3 = [(SUUIItemCellLayout *)self->_lockupLayout itemOffer];
  }

  return v3;
}

- (id)itemOfferNoticeString
{
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v5.receiver = self;
    v5.super_class = SUUIEditorialLockupCellLayout;
    v3 = [(SUUIItemCellLayout *)&v5 itemOfferNoticeString];
  }

  else
  {
    v3 = [(SUUIItemCellLayout *)self->_lockupLayout itemOfferNoticeString];
  }

  return v3;
}

- (id)itemState
{
  if (SUUILockupLayoutStyleIsHorizontal(self->_layoutStyle))
  {
    v3 = [(SUUIItemCellLayout *)self->_lockupLayout itemState];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUUIEditorialLockupCellLayout;
    v3 = [(SUUIItemCellLayout *)&v5 itemState];
  }

  return v3;
}

- (void)layoutForItemOfferChange
{
  v18 = [(SUUIItemCellLayout *)self itemOfferButton];
  [v18 frame];
  v4 = v3;
  v6 = v5;
  [v18 sizeThatFits:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v8 = v7;
  v10 = v9;
  v11 = [(SUUIItemCellLayout *)self itemOfferNoticeLabel];
  v12 = v11;
  if (v11 && ([v11 isHidden] & 1) == 0)
  {
    [v12 frame];
    v14 = v13;
    [v12 sizeThatFits:{v8 + 10.0, 1.79769313e308}];
    v16 = v15;
    *&v15 = (v8 - v15) * 0.5;
    [v12 setFrame:{v4 + floorf(*&v15), v14, v16, v17}];
  }

  [v18 setFrame:{v4, v6, v8, v10}];
}

- (void)setClientContext:(id)a3
{
  lockupLayout = self->_lockupLayout;
  v5 = a3;
  [(SUUILockupItemCellLayout *)lockupLayout setClientContext:v5];
  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUICellLayout *)&v6 setClientContext:v5];
}

- (void)setIconImage:(id)a3
{
  v4 = a3;
  v5 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v5 setIconImage:v4];
}

- (void)setIconImageHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v4 setIconImageHidden:v3];
}

- (void)setItemOffer:(id)a3
{
  v4 = a3;
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v6.receiver = self;
    v6.super_class = SUUIEditorialLockupCellLayout;
    [(SUUIItemCellLayout *)&v6 setItemOffer:v4];
  }

  else
  {
    v5 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
    [v5 setItemOffer:v4];
  }
}

- (void)setItemOfferButtonAppearance:(id)a3
{
  v4 = a3;
  v5 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v5 setItemOfferButtonAppearance:v4];

  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUIItemCellLayout *)&v6 setItemOfferButtonAppearance:v4];
}

- (void)setItemOfferNoticeString:(id)a3
{
  v4 = a3;
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v6.receiver = self;
    v6.super_class = SUUIEditorialLockupCellLayout;
    [(SUUIItemCellLayout *)&v6 setItemOfferNoticeString:v4];
  }

  else
  {
    v5 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
    [v5 setItemOfferNoticeString:v4];
  }
}

- (void)setItemState:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(SUUIEditorialLockupCellLayout *)self _showsItemOfferUnderEditorial])
  {
    v8.receiver = self;
    v8.super_class = SUUIEditorialLockupCellLayout;
    [(SUUIItemCellLayout *)&v8 setItemState:v6 animated:v4];
  }

  else
  {
    v7 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
    [v7 setItemState:v6 animated:v4];
  }
}

- (void)setRestricted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIEditorialLockupCellLayout *)self lockupCellLayout];
  [v5 setRestricted:v3];

  v6.receiver = self;
  v6.super_class = SUUIEditorialLockupCellLayout;
  [(SUUIItemCellLayout *)&v6 setRestricted:v3];
}

- (id)_editorialCellLayout
{
  editorialCellLayout = self->_editorialCellLayout;
  if (!editorialCellLayout)
  {
    v4 = [SUUIEditorialCellLayout alloc];
    v5 = [(SUUIEditorialLockupCellLayout *)self _editorialContainerView];
    v6 = [(SUUIEditorialCellLayout *)v4 initWithParentView:v5];
    v7 = self->_editorialCellLayout;
    self->_editorialCellLayout = v6;

    v8 = self->_editorialCellLayout;
    v9 = [(SUUICellLayout *)self parentCellView];
    v10 = [v9 backgroundColor];
    [(SUUIEditorialCellLayout *)v8 setBackgroundColor:v10];

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
    v7 = [(SUUICellLayout *)self parentCellView];
    v8 = [v7 backgroundColor];
    [(UIView *)v6 setBackgroundColor:v8];

    v9 = [(SUUICellLayout *)self contentView];
    [v9 addSubview:self->_editorialContainerView];

    editorialContainerView = self->_editorialContainerView;
  }

  return editorialContainerView;
}

+ (double)_imagePaddingForArtworkSize:(int64_t)a3
{
  result = 10.0;
  if ((a3 - 3) < 3)
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
  v4 = [(SUUIItemCellLayout *)&v6 itemOffer];
  if (v4)
  {
    v3 = [(SUUIItemCellLayout *)self isRestricted];
  }

  else
  {
    v3 = 1;
  }

  return v3;
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
    v9 = [(SUUICellLayout *)self clientContext];
    [(SUUILockupItemCellLayout *)v8 setClientContext:v9];

    [(SUUILockupItemCellLayout *)self->_lockupLayout setLayoutStyle:self->_layoutStyle];
    [(SUUILockupItemCellLayout *)self->_lockupLayout setVisibleFields:self->_visibleFields];
    [(SUUICellLayoutView *)self->_lockupView setLayout:self->_lockupLayout];
    v10 = self->_lockupView;
    v11 = [(SUUICellLayout *)self parentCellView];
    v12 = [v11 backgroundColor];
    [(SUUICellLayoutView *)v10 setBackgroundColor:v12];

    v13 = [(SUUICellLayout *)self contentView];
    [v13 addSubview:self->_lockupView];

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