@interface MRUNowPlayingContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUNowPlayingContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setShowSeparator:(BOOL)separator;
- (void)setStylingProvider:(id)provider;
- (void)updateVisualStyling;
@end

@implementation MRUNowPlayingContainerView

- (MRUNowPlayingContainerView)initWithFrame:(CGRect)frame
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MRUNowPlayingContainerView;
  v3 = [(MRUNowPlayingContainerView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MRUNowPlayingContainerView *)v3 setClipsToBounds:1];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v5;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v4->_backgroundView setBackgroundColor:blackColor];

    [(UIView *)v4->_backgroundView setAlpha:0.1];
    [(UIView *)v4->_backgroundView _setDrawsAsBackdropOverlayWithBlendMode:1];
    [(MRUNowPlayingContainerView *)v4 addSubview:v4->_backgroundView];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v8;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v4->_separatorView setBackgroundColor:whiteColor];

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
    traitCollection = [(MRUNowPlayingContainerView *)self traitCollection];
    [traitCollection displayScale];
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
    traitCollection2 = [(MRUNowPlayingContainerView *)self traitCollection];
    [traitCollection2 displayScale];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 0.0;
  if (self->_showSeparator && self->_supportsHorizontalLayout && !MRULayoutShouldBeVertical())
  {
    traitCollection = [(MRUNowPlayingContainerView *)self traitCollection];
    [traitCollection displayScale];
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

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
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

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUNowPlayingContainerView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)setShowSeparator:(BOOL)separator
{
  if (self->_showSeparator != separator)
  {
    self->_showSeparator = separator;
    [(MRUNowPlayingContainerView *)self updateVisibility];

    [(MRUNowPlayingContainerView *)self setNeedsLayout];
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  separatorView = self->_separatorView;
  traitCollection = [(MRUNowPlayingContainerView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:4 toView:separatorView traitCollection:traitCollection];
}

@end