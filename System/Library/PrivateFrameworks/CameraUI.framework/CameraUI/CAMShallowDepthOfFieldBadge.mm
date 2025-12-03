@interface CAMShallowDepthOfFieldBadge
- (CAMShallowDepthOfFieldBadge)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_updateForShallowDepthOfFieldStatusAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setShallowDepthOfFieldStatus:(int64_t)status animated:(BOOL)animated;
@end

@implementation CAMShallowDepthOfFieldBadge

- (CAMShallowDepthOfFieldBadge)initWithFrame:(CGRect)frame
{
  v28.receiver = self;
  v28.super_class = CAMShallowDepthOfFieldBadge;
  v3 = [(CAMShallowDepthOfFieldBadge *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMShallowDepthOfFieldBadge *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = CAMLocalizedFrameworkString(@"PORTRAIT_MODE_BADGE", &stru_1F1660A30);
    v14 = [objc_alloc(MEMORY[0x1E6993830]) initWithFrame:{v6, v8, v10, v12}];
    enabledTextView = v4->__enabledTextView;
    v4->__enabledTextView = v14;

    [(CEKBadgeTextView *)v4->__enabledTextView _setText:v13];
    v16 = v4->__enabledTextView;
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKBadgeTextView *)v16 _setFillColor:systemYellowColor];

    v18 = v4->__enabledTextView;
    v19 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    [(CEKBadgeTextView *)v18 _setContentColor:v19];

    v20 = [objc_alloc(MEMORY[0x1E6993830]) initWithFrame:{v6, v8, v10, v12}];
    disabledTextView = v4->__disabledTextView;
    v4->__disabledTextView = v20;

    [(CEKBadgeTextView *)v4->__disabledTextView _setText:v13];
    v22 = v4->__disabledTextView;
    v23 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
    [(CEKBadgeTextView *)v22 _setFillColor:v23];

    v24 = v4->__disabledTextView;
    v25 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    [(CEKBadgeTextView *)v24 _setContentColor:v25];

    [(CEKBadgeTextView *)v4->__disabledTextView setAlpha:0.3];
    [(CAMShallowDepthOfFieldBadge *)v4 addSubview:v4->__enabledTextView];
    [(CAMShallowDepthOfFieldBadge *)v4 addSubview:v4->__disabledTextView];
    [(CAMShallowDepthOfFieldBadge *)v4 _updateForShallowDepthOfFieldStatusAnimated:0];
    v26 = v4;
  }

  return v4;
}

- (void)setShallowDepthOfFieldStatus:(int64_t)status animated:(BOOL)animated
{
  if (self->_shallowDepthOfFieldStatus != status)
  {
    self->_shallowDepthOfFieldStatus = status;
    [(CAMShallowDepthOfFieldBadge *)self _updateForShallowDepthOfFieldStatusAnimated:animated];
  }
}

- (void)_updateForShallowDepthOfFieldStatusAnimated:(BOOL)animated
{
  _enabledTextView = [(CAMShallowDepthOfFieldBadge *)self _enabledTextView];
  _disabledTextView = [(CAMShallowDepthOfFieldBadge *)self _disabledTextView];
  shallowDepthOfFieldStatus = [(CAMShallowDepthOfFieldBadge *)self shallowDepthOfFieldStatus];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__CAMShallowDepthOfFieldBadge__updateForShallowDepthOfFieldStatusAnimated___block_invoke;
  aBlock[3] = &unk_1E76FBB80;
  v15 = (shallowDepthOfFieldStatus < 0xF) & (0x6202u >> shallowDepthOfFieldStatus);
  v8 = _enabledTextView;
  v13 = v8;
  v9 = _disabledTextView;
  v14 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (animated)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:6 delay:v10 options:0 animations:0.17 completion:0.0];
  }

  else
  {
    (*(v10 + 2))(v10);
  }
}

uint64_t __75__CAMShallowDepthOfFieldBadge__updateForShallowDepthOfFieldStatusAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = 1.0;
  if (v2)
  {
    v5 = 0.0;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.3;
  }

  [v3 setAlpha:v4];
  v6 = *(a1 + 40);

  return [v6 setAlpha:v5];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CEKBadgeTextView *)self->__disabledTextView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CEKBadgeTextView *)self->__disabledTextView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CAMShallowDepthOfFieldBadge;
  [(CAMShallowDepthOfFieldBadge *)&v11 layoutSubviews];
  [(CAMShallowDepthOfFieldBadge *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CEKBadgeTextView *)self->__disabledTextView setFrame:?];
  [(CEKBadgeTextView *)self->__enabledTextView setFrame:v4, v6, v8, v10];
}

@end