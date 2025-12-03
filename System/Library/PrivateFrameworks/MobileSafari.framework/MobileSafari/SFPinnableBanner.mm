@interface SFPinnableBanner
- (BOOL)showsBottomSeparator;
- (BOOL)showsTopSeparator;
- (SFPinnableBanner)initWithFrame:(CGRect)frame;
- (void)_setUpSeparators;
- (void)setTheme:(id)theme animated:(BOOL)animated;
@end

@implementation SFPinnableBanner

- (SFPinnableBanner)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SFPinnableBanner;
  v3 = [(SFPinnableBanner *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFPinnableBanner *)v3 setEdgesInsettingLayoutMarginsFromSafeArea:0];
    v4->_separableFromStatusBar = 1;
    [(SFPinnableBanner *)v4 _setUpSeparators];
    v5 = v4;
  }

  return v4;
}

- (void)_setUpSeparators
{
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    topSeparator = self->_topSeparator;
    self->_topSeparator = v3;
  }

  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)self->_topSeparator setBackgroundColor:separatorColor];

  [(SFPinnableBanner *)self bounds];
  Width = CGRectGetWidth(v16);
  [(UIView *)self->_topSeparator setFrame:0.0, 0.0, Width, _SFOnePixel()];
  [(UIView *)self->_topSeparator setAutoresizingMask:34];
  [(SFPinnableBanner *)self addSubview:self->_topSeparator];
  if (([objc_opt_class() omitsBottomSeparator] & 1) == 0)
  {
    sf_barHairlineOutlineColor = [MEMORY[0x1E69DC888] sf_barHairlineOutlineColor];
    [(UIView *)self->_topSeparator setBackgroundColor:sf_barHairlineOutlineColor];

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    bottomSeparator = self->_bottomSeparator;
    self->_bottomSeparator = v8;

    separatorColor2 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)self->_bottomSeparator setBackgroundColor:separatorColor2];

    [(SFPinnableBanner *)self bounds];
    Height = CGRectGetHeight(v17);
    v12 = Height - _SFOnePixel();
    [(SFPinnableBanner *)self bounds];
    v13 = CGRectGetWidth(v18);
    [(UIView *)self->_bottomSeparator setFrame:0.0, v12, v13, _SFOnePixel()];
    [(UIView *)self->_bottomSeparator setAutoresizingMask:10];
    v14 = self->_bottomSeparator;

    [(SFPinnableBanner *)self addSubview:v14];
  }
}

- (BOOL)showsTopSeparator
{
  topSeparator = self->_topSeparator;
  if (topSeparator)
  {
    LOBYTE(topSeparator) = ![(UIView *)topSeparator isHidden];
  }

  return topSeparator;
}

- (BOOL)showsBottomSeparator
{
  bottomSeparator = self->_bottomSeparator;
  if (bottomSeparator)
  {
    LOBYTE(bottomSeparator) = ![(UIView *)bottomSeparator isHidden];
  }

  return bottomSeparator;
}

- (void)setTheme:(id)theme animated:(BOOL)animated
{
  animatedCopy = animated;
  themeCopy = theme;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_theme, theme);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__SFPinnableBanner_setTheme_animated___block_invoke;
    aBlock[3] = &unk_1E721B360;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:50331650 animations:v8 completion:0];
    }

    else
    {
      (*(v8 + 2))(v8);
    }
  }
}

void __38__SFPinnableBanner_setTheme_animated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 440) traitCollection];
  [*(a1 + 32) _setLocalOverrideTraitCollection:v2];

  v3 = [*(*(a1 + 32) + 440) overrideTintColor];
  [*(a1 + 32) setTintColor:v3];

  v4 = [*(*(a1 + 32) + 440) separatorColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69DC888] sf_barHairlineOutlineColor];
  }

  v7 = v6;

  [*(*(a1 + 32) + 408) setBackgroundColor:v7];
  [*(*(a1 + 32) + 416) setBackgroundColor:v7];
  [*(a1 + 32) themeDidChange];
}

@end