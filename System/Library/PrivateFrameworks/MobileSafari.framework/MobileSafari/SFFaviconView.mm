@interface SFFaviconView
- (CGSize)intrinsicContentSize;
- (SFFaviconView)initWithFrame:(CGRect)frame;
- (id)_determineIconBackingColorAndInsets:(UIEdgeInsets *)insets;
- (void)_updateIconBackingColorAndInset;
- (void)layoutSubviews;
- (void)setIcon:(id)icon;
- (void)setThemeColor:(id)color;
- (void)setTrailingInset:(double)inset;
@end

@implementation SFFaviconView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFFaviconView;
  [(SFFaviconView *)&v3 layoutSubviews];
  [(SFFaviconView *)self bounds];
  v5 = CGRectInset(v4, 1.0, 1.0);
  [(UIImageView *)self->_imageView setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
}

- (void)_updateIconBackingColorAndInset
{
  v17 = 0u;
  v18 = 0u;
  v3 = [(SFFaviconView *)self _determineIconBackingColorAndInsets:&v17];
  v4 = MEMORY[0x1E69DD250];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __48__SFFaviconView__updateIconBackingColorAndInset__block_invoke;
  v14 = &unk_1E721B400;
  selfCopy = self;
  v16 = v3;
  v5 = v3;
  [v4 performWithoutAnimation:&v11];
  [(UIImage *)self->_icon size:v11];
  v7 = v6;
  _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
  v9 = fmax(v7 - *(&v18 + 1), 0.0);
  if (_sf_usesLeftToRightLayout)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(&v17 + 1);
  }

  [(UIImageView *)self->_imageView bounds];
  [(SFFaviconView *)self setTrailingInset:v10 * (CGRectGetWidth(v19) / v7)];
}

uint64_t __48__SFFaviconView__updateIconBackingColorAndInset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundColor:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = v2 != 0;
  v4 = 0.0;
  if (v2)
  {
    v4 = 2.0;
  }

  [*(*(a1 + 32) + 408) _setContinuousCornerRadius:v4];
  v5 = *(*(a1 + 32) + 408);

  return [v5 setClipsToBounds:v3];
}

- (SFFaviconView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SFFaviconView;
  v3 = [(SFFaviconView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(SFFaviconView *)v3 addSubview:v3->_imageView];
    [(SFFaviconView *)v3 _setContinuousCornerRadius:3.0];
    v6 = v3;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_imageView intrinsicContentSize];
  v4 = v3 + 2.0;
  [(UIImageView *)self->_imageView intrinsicContentSize];
  v6 = v5 + 2.0;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, icon);
    [(UIImageView *)self->_imageView setImage:iconCopy];
    [(SFFaviconView *)self _updateIconBackingColorAndInset];
  }
}

- (void)setThemeColor:(id)color
{
  colorCopy = color;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_themeColor, color);
    [(SFFaviconView *)self _updateIconBackingColorAndInset];
  }
}

- (void)setTrailingInset:(double)inset
{
  if (self->_trailingInset != inset)
  {
    self->_trailingInset = inset;
    trailingInsetChangeHandler = self->_trailingInsetChangeHandler;
    if (trailingInsetChangeHandler)
    {
      trailingInsetChangeHandler[2]();
    }
  }
}

- (id)_determineIconBackingColorAndInsets:(UIEdgeInsets *)insets
{
  if (insets)
  {
    [(UIImage *)self->_icon size];
    insets->top = 0.0;
    insets->left = 0.0;
    insets->bottom = v6;
    insets->right = v5;
  }

  if ([(UIImage *)self->_icon isSymbolImage]|| [(UIImage *)self->_icon sf_isMonogram]|| [(UIImage *)self->_icon renderingMode]== UIImageRenderingModeAlwaysTemplate)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v9 = [MEMORY[0x1E69DC888] sf_colorNamed:@"FaviconBackingColor"];
  v21 = 0.0;
  v22 = 0;
  v19 = 0u;
  v20 = 0u;
  v10 = [MEMORY[0x1E69C9840] keyColorForIcon:self->_icon allowAllColors:1 confidence:&v22 nonTransparentConfidence:&v21 insets:&v19];
  v11 = v10;
  if (v10 && self->_themeColor)
  {
    [v10 safari_contrastRatioWithColor:?];
    v13 = v12;
    [v11 safari_contrastRatioWithColor:v9];
    if (v13 < 2.5 && v14 > 1.01 && v21 > 0.5)
    {
      goto LABEL_21;
    }

LABEL_23:
    v7 = 0;
    if (insets)
    {
      v18 = v20;
      *&insets->top = v19;
      *&insets->bottom = v18;
    }

    goto LABEL_25;
  }

  traitCollection = [(SFFaviconView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] != 2)
  {

    goto LABEL_23;
  }

  sf_shouldApplyBackingForDarkBackdrop = [(UIImage *)self->_icon sf_shouldApplyBackingForDarkBackdrop];

  if (!sf_shouldApplyBackingForDarkBackdrop)
  {
    goto LABEL_23;
  }

LABEL_21:
  v7 = v9;
LABEL_25:

LABEL_7:

  return v7;
}

@end