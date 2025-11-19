@interface SUUIBrickGridCollectionViewCell
- (UIEdgeInsets)contentInsets;
- (void)applyEditorialLayout:(id)a3 orientation:(int64_t)a4;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBrickImage:(id)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
@end

@implementation SUUIBrickGridCollectionViewCell

- (void)applyEditorialLayout:(id)a3 orientation:(int64_t)a4
{
  v6 = a3;
  editorialContainerView = self->_editorialContainerView;
  v15 = v6;
  if (v6)
  {
    if (!editorialContainerView)
    {
      v8 = objc_alloc_init(MEMORY[0x277D75D18]);
      v9 = self->_editorialContainerView;
      self->_editorialContainerView = v8;

      v10 = self->_editorialContainerView;
      v11 = [(SUUIBrickGridCollectionViewCell *)self backgroundColor];
      [(UIView *)v10 setBackgroundColor:v11];

      v12 = [(SUUIBrickGridCollectionViewCell *)self contentView];
      [v12 addSubview:self->_editorialContainerView];

      [(SUUIBrickGridCollectionViewCell *)self setNeedsLayout];
    }

    if (!self->_editorialCellLayout)
    {
      v13 = [[SUUIEditorialCellLayout alloc] initWithParentView:self->_editorialContainerView];
      editorialCellLayout = self->_editorialCellLayout;
      self->_editorialCellLayout = v13;

      [(SUUIEditorialCellLayout *)self->_editorialCellLayout setContentInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    }

    [(UIView *)self->_editorialContainerView setHidden:0];
  }

  else
  {
    [(UIView *)editorialContainerView setHidden:1];
  }

  [(SUUIEditorialCellLayout *)self->_editorialCellLayout applyEditorialLayout:v15 withOrientation:a4 expanded:1];
}

- (void)setAccessibilityLabel:(id)a3
{
  if (self->_accessibilityLabel != a3)
  {
    v6 = a3;
    v4 = [v6 copy];
    accessibilityLabel = self->_accessibilityLabel;
    self->_accessibilityLabel = v4;

    [(UIImageView *)self->_brickImageView setAccessibilityLabel:v6];
  }
}

- (void)setBrickImage:(id)a3
{
  v14 = a3;
  v4 = [(SUUIBrickGridCollectionViewCell *)self brickImage];

  v6 = v14;
  if (v4 != v14)
  {
    brickImageView = self->_brickImageView;
    if (v14)
    {
      if (!brickImageView)
      {
        v8 = objc_alloc_init(MEMORY[0x277D755E8]);
        v9 = self->_brickImageView;
        self->_brickImageView = v8;

        [(UIImageView *)self->_brickImageView setAccessibilityLabel:self->_accessibilityLabel];
        v10 = self->_brickImageView;
        v11 = [(SUUIBrickGridCollectionViewCell *)self backgroundColor];
        [(UIImageView *)v10 setBackgroundColor:v11];

        v12 = [(SUUIBrickGridCollectionViewCell *)self contentView];
        [v12 addSubview:self->_brickImageView];

        [(SUUIBrickGridCollectionViewCell *)self setNeedsLayout];
        brickImageView = self->_brickImageView;
      }

      [(UIImageView *)brickImageView setImage:v14];
      v5 = [(UIImageView *)self->_brickImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)brickImageView removeFromSuperview];
      v13 = self->_brickImageView;
      self->_brickImageView = 0;
    }

    v6 = v14;
  }

  MEMORY[0x2821F96F8](v5, v6);
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
    [(SUUIBrickGridCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = SUUIBrickGridCollectionViewCell;
  [(SUUIBrickGridCollectionViewCell *)&v16 layoutSubviews];
  v3 = [(SUUIBrickGridCollectionViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  top = self->_contentInsets.top;
  brickImageView = self->_brickImageView;
  if (brickImageView)
  {
    [(UIImageView *)brickImageView frame];
    v11 = v10;
    v13 = v12;
    left = self->_contentInsets.left;
    [(UIImageView *)self->_brickImageView setFrame:left, top];
    v17.origin.x = left;
    v17.origin.y = top;
    v17.size.width = v11;
    v17.size.height = v13;
    top = CGRectGetMaxY(v17);
  }

  editorialContainerView = self->_editorialContainerView;
  if (editorialContainerView)
  {
    [(UIView *)editorialContainerView frame];
    [(UIView *)self->_editorialContainerView setFrame:self->_contentInsets.left, top + 10.0, v5 - self->_contentInsets.right - self->_contentInsets.left, v7 - self->_contentInsets.bottom - (top + 10.0)];
    [(SUUIEditorialCellLayout *)self->_editorialCellLayout layoutSubviews];
  }
}

- (void)setBackgroundColor:(id)a3
{
  brickImageView = self->_brickImageView;
  v5 = a3;
  [(UIImageView *)brickImageView setBackgroundColor:v5];
  [(SUUIEditorialCellLayout *)self->_editorialCellLayout setBackgroundColor:v5];
  [(UIView *)self->_editorialContainerView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIBrickGridCollectionViewCell;
  [(SUUIBrickGridCollectionViewCell *)&v6 setBackgroundColor:v5];
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