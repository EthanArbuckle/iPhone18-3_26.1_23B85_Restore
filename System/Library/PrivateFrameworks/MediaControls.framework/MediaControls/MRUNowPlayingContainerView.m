@interface MRUNowPlayingContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUNowPlayingContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setShowSeparator:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)updateVisualStyling;
@end

@implementation MRUNowPlayingContainerView

- (MRUNowPlayingContainerView)initWithFrame:(CGRect)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MRUNowPlayingContainerView;
  v3 = [(MRUNowPlayingContainerView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MRUNowPlayingContainerView *)v3 setClipsToBounds:1];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v5;

    v7 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v4->_backgroundView setBackgroundColor:v7];

    [(UIView *)v4->_backgroundView setAlpha:0.1];
    [(UIView *)v4->_backgroundView _setDrawsAsBackdropOverlayWithBlendMode:1];
    [(MRUNowPlayingContainerView *)v4 addSubview:v4->_backgroundView];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v8;

    v10 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4->_separatorView setBackgroundColor:v10];

    [(MRUNowPlayingContainerView *)v4 addSubview:v4->_separatorView];
    v4->_showSeparator = 1;
    v15[0] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v12 = [(MRUNowPlayingContainerView *)v4 registerForTraitChanges:v11 withAction:sel_updateVisualStyling];

    [(MRUNowPlayingContainerView *)v4 updateVisibility];
  }

  return v4;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = MRUNowPlayingContainerView;
  [(MRUNowPlayingContainerView *)&v23 layoutSubviews];
  [(MRUNowPlayingContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_supportsHorizontalLayout && !MRULayoutShouldBeVertical())
  {
    v17 = [(MRUNowPlayingContainerView *)self traitCollection];
    [v17 displayScale];
    v19 = 1.0 / v18;

    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    MinX = CGRectGetMinX(v28);
    v29.origin.x = v4;
    v29.origin.y = v6;
    v29.size.width = v8;
    v29.size.height = v10;
    MinY = CGRectGetMinY(v29);
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    Height = CGRectGetHeight(v30);
    [(MRUNowPlayingContainerView *)self bounds];
    MPRectByApplyingUserInterfaceLayoutDirectionInRect();
    [(UIView *)self->_separatorView setFrame:?];
    v31.origin.x = MinX;
    v31.origin.y = MinY;
    v31.size.width = v19;
    v31.size.height = Height;
    CGRectGetWidth(v31);
  }

  else
  {
    v11 = [(MRUNowPlayingContainerView *)self traitCollection];
    [v11 displayScale];
    v13 = 1.0 / v12;

    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    v14 = CGRectGetMinX(v24);
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    v15 = CGRectGetMinY(v25);
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    Width = CGRectGetWidth(v26);
    [(UIView *)self->_separatorView setFrame:v14, v15, Width, v13];
    v27.origin.x = v14;
    v27.origin.y = v15;
    v27.size.width = Width;
    v27.size.height = v13;
    CGRectGetHeight(v27);
  }

  UIRectInset();
  [(MRUNowPlayingContainerView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIView *)self->_backgroundView setFrame:?];
  [(MRUNowPlayingContainerView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIView *)self->_contentView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = 0.0;
  if (self->_showSeparator && self->_supportsHorizontalLayout && !MRULayoutShouldBeVertical())
  {
    v7 = [(MRUNowPlayingContainerView *)self traitCollection];
    [v7 displayScale];
    v9 = 1.0 / v8;

    height = height - v9;
    v6 = v9 + 0.0;
  }

  [(UIView *)self->_contentView sizeThatFits:width, height];
  v11 = v6 + v10;
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(MRUNowPlayingContainerView *)self addSubview:self->_contentView];
    [(MRUNowPlayingContainerView *)self setNeedsLayout];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __45__MRUNowPlayingContainerView_setContentView___block_invoke;
    v7[3] = &unk_1E7663898;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUNowPlayingContainerView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setShowSeparator:(BOOL)a3
{
  if (self->_showSeparator != a3)
  {
    self->_showSeparator = a3;
    [(MRUNowPlayingContainerView *)self updateVisibility];

    [(MRUNowPlayingContainerView *)self setNeedsLayout];
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  separatorView = self->_separatorView;
  v4 = [(MRUNowPlayingContainerView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:4 toView:separatorView traitCollection:v4];
}

@end