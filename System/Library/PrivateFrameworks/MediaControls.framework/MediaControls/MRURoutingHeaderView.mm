@interface MRURoutingHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRURoutingHeaderView)initWithReuseIdentifier:(id)a3;
- (UIEdgeInsets)contentEdgeInsets;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation MRURoutingHeaderView

- (MRURoutingHeaderView)initWithReuseIdentifier:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MRURoutingHeaderView;
  v3 = [(MRURoutingHeaderView *)&v17 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(MRURoutingHeaderView *)v3 setTintColor:v4];

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    v7 = [(MRURoutingHeaderView *)v3 contentView];
    [v7 addSubview:v3->_titleLabel];

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v8;

    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v3->_separatorView setBackgroundColor:v10];

    v11 = [(MRURoutingHeaderView *)v3 contentView];
    [v11 addSubview:v3->_separatorView];

    v19[0] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v13 = [(MRURoutingHeaderView *)v3 registerForTraitChanges:v12 withAction:sel_updateVisualStyling];

    v18 = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [(MRURoutingHeaderView *)v3 registerForTraitChanges:v14 withAction:sel_updateContentSizeCategory];

    [(MRURoutingHeaderView *)v3 updateContentSizeCategory];
  }

  return v3;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = MRURoutingHeaderView;
  [(MRURoutingHeaderView *)&v24 layoutSubviews];
  v3 = [(MRURoutingHeaderView *)self contentView];
  [v3 bounds];
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_contentEdgeInsets.right);
  v13 = v12 - (top + self->_contentEdgeInsets.bottom);

  v14 = [(MRURoutingHeaderView *)self traitCollection];
  [v14 displayScale];

  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  CGRectGetMinX(v25);
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  CGRectGetMaxY(v26);
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  CGRectGetWidth(v27);
  [(MRURoutingHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIView *)self->_separatorView setFrame:?];
  UIRectInset();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(UILabel *)self->_titleLabel font];
  [v23 descender];
  UIRoundToViewScale();

  [(UILabel *)self->_titleLabel sizeThatFits:v20, v22];
  MRUSizeCeilToViewScale(self);
  v28.origin.x = v16;
  v28.origin.y = v18;
  v28.size.width = v20;
  v28.size.height = v22;
  CGRectGetMinX(v28);
  v29.origin.x = v16;
  v29.origin.y = v18;
  v29.size.width = v20;
  v29.size.height = v22;
  CGRectGetMaxY(v29);
  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  CGRectGetWidth(v30);
  [(MRURoutingHeaderView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UILabel *)self->_titleLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = 16.0 * 2.0 + 10.0 + 1.0;
  v6 = a3.width - (self->_contentEdgeInsets.left + self->_contentEdgeInsets.right);
  v7 = a3.height - v5;
  v8 = [(UILabel *)self->_titleLabel font];
  [v8 descender];
  UIRoundToViewScale();
  v10 = v9;

  [(UILabel *)self->_titleLabel sizeThatFits:v6, v7];
  MRUSizeCeilToViewScale(self);
  v12 = v5 + v10 + v11;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  [(UILabel *)self->_titleLabel setText:v5];

  [(MRURoutingHeaderView *)self setNeedsLayout];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  self->_contentEdgeInsets.top = 0.0;
  self->_contentEdgeInsets.left = a3.left;
  self->_contentEdgeInsets.bottom = 0.0;
  self->_contentEdgeInsets.right = a3.right;
  [(MRURoutingHeaderView *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRURoutingHeaderView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  v5 = [(MRURoutingHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:1 toView:titleLabel traitCollection:v5];

  v6 = self->_stylingProvider;
  separatorView = self->_separatorView;
  v8 = [(MRURoutingHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:4 toView:separatorView traitCollection:v8];
}

- (void)updateContentSizeCategory
{
  v3 = [MEMORY[0x1E69DB878] mru_routingHeaderFont];
  [(UILabel *)self->_titleLabel setFont:v3];
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end