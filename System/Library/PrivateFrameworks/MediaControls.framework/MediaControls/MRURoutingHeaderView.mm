@interface MRURoutingHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRURoutingHeaderView)initWithReuseIdentifier:(id)identifier;
- (UIEdgeInsets)contentEdgeInsets;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setStylingProvider:(id)provider;
- (void)setTitle:(id)title;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation MRURoutingHeaderView

- (MRURoutingHeaderView)initWithReuseIdentifier:(id)identifier
{
  v19[1] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MRURoutingHeaderView;
  v3 = [(MRURoutingHeaderView *)&v17 initWithReuseIdentifier:identifier];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MRURoutingHeaderView *)v3 setTintColor:clearColor];

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    contentView = [(MRURoutingHeaderView *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v3->_separatorView;
    v3->_separatorView = v8;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v3->_separatorView setBackgroundColor:whiteColor];

    contentView2 = [(MRURoutingHeaderView *)v3 contentView];
    [contentView2 addSubview:v3->_separatorView];

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
  contentView = [(MRURoutingHeaderView *)self contentView];
  [contentView bounds];
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_contentEdgeInsets.right);
  v13 = v12 - (top + self->_contentEdgeInsets.bottom);

  traitCollection = [(MRURoutingHeaderView *)self traitCollection];
  [traitCollection displayScale];

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
  font = [(UILabel *)self->_titleLabel font];
  [font descender];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = 16.0 * 2.0 + 10.0 + 1.0;
  v6 = fits.width - (self->_contentEdgeInsets.left + self->_contentEdgeInsets.right);
  v7 = fits.height - v5;
  font = [(UILabel *)self->_titleLabel font];
  [font descender];
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

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(UILabel *)self->_titleLabel setText:titleCopy];

  [(MRURoutingHeaderView *)self setNeedsLayout];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  self->_contentEdgeInsets.top = 0.0;
  self->_contentEdgeInsets.left = insets.left;
  self->_contentEdgeInsets.bottom = 0.0;
  self->_contentEdgeInsets.right = insets.right;
  [(MRURoutingHeaderView *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRURoutingHeaderView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  traitCollection = [(MRURoutingHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:1 toView:titleLabel traitCollection:traitCollection];

  v6 = self->_stylingProvider;
  separatorView = self->_separatorView;
  traitCollection2 = [(MRURoutingHeaderView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:4 toView:separatorView traitCollection:traitCollection2];
}

- (void)updateContentSizeCategory
{
  mru_routingHeaderFont = [MEMORY[0x1E69DB878] mru_routingHeaderFont];
  [(UILabel *)self->_titleLabel setFont:mru_routingHeaderFont];
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