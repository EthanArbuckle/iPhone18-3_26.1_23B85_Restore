@interface CAMLevelIndicatorView
- (CAMLevelIndicatorView)initWithCoder:(id)coder;
- (CAMLevelIndicatorView)initWithFrame:(CGRect)frame;
- (CAMLevelIndicatorView)initWithViewModel:(id)model;
- (void)_commonCAMLevelIndicatorViewInitializationWithViewModel:(id)model;
- (void)_updateCrosshairAlphasWithAlpha:(double)alpha indicatorMode:(int64_t)mode;
- (void)_updateCrosshairHighlightWithOffset:(UIOffset)offset;
- (void)layoutSubviews;
- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context;
@end

@implementation CAMLevelIndicatorView

- (CAMLevelIndicatorView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAMLevelIndicatorView;
  v3 = [(CAMLevelIndicatorView *)&v6 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_alloc_init(CAMLevelViewModel);
    [(CAMLevelIndicatorView *)v3 _commonCAMLevelIndicatorViewInitializationWithViewModel:v4];
  }

  return v3;
}

- (CAMLevelIndicatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMLevelIndicatorView;
  v3 = [(CAMLevelIndicatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CAMLevelViewModel);
    [(CAMLevelIndicatorView *)v3 _commonCAMLevelIndicatorViewInitializationWithViewModel:v4];
  }

  return v3;
}

- (CAMLevelIndicatorView)initWithViewModel:(id)model
{
  modelCopy = model;
  v8.receiver = self;
  v8.super_class = CAMLevelIndicatorView;
  v5 = [(CAMLevelIndicatorView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(CAMLevelIndicatorView *)v5 _commonCAMLevelIndicatorViewInitializationWithViewModel:modelCopy];
  }

  return v6;
}

- (void)_commonCAMLevelIndicatorViewInitializationWithViewModel:(id)model
{
  objc_storeStrong(&self->_viewModel, model);
  modelCopy = model;
  [(CAMObservable *)self->_viewModel registerChangeObserver:self context:0];
  v6 = objc_alloc_init(CAMLevelCrosshair);
  userCrosshair = self->__userCrosshair;
  self->__userCrosshair = v6;

  v8 = objc_alloc_init(CAMLevelCrosshair);
  goalCrosshair = self->__goalCrosshair;
  self->__goalCrosshair = v8;

  [(CAMLevelIndicatorView *)self addSubview:self->__userCrosshair];
  [(CAMLevelIndicatorView *)self addSubview:self->__goalCrosshair];
  [(CAMLevelIndicatorView *)self bounds];
  UIRectGetCenter();
  [(CAMLevelCrosshair *)self->__goalCrosshair setCenter:?];
  [(CAMLevelCrosshair *)self->__goalCrosshair setAutoresizingMask:45];
  [(CAMLevelCrosshair *)self->__userCrosshair setBounds:0.0, 0.0, 32.0, 32.0];
  [(CAMLevelCrosshair *)self->__goalCrosshair setBounds:0.0, 0.0, 32.0, 32.0];
  [(CAMLevelViewModel *)self->_viewModel currentIndicatorAlpha];
  v11 = v10;
  [(CAMLevelViewModel *)self->_viewModel currentIndicatorOffset];
  v13 = v12;
  v15 = v14;
  currentIndicatorMode = [(CAMLevelViewModel *)self->_viewModel currentIndicatorMode];

  [(CAMLevelIndicatorView *)self _updateCrosshairAlphasWithAlpha:currentIndicatorMode indicatorMode:v11];
  [(CAMLevelIndicatorView *)self _updateCrosshairHighlightWithOffset:v13, v15];

  [(CAMLevelIndicatorView *)self setUserInteractionEnabled:0];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CAMLevelIndicatorView;
  [(CAMLevelIndicatorView *)&v13 layoutSubviews];
  viewModel = [(CAMLevelIndicatorView *)self viewModel];
  if ([viewModel currentIndicatorMode] == 1)
  {
    [(CAMLevelIndicatorView *)self bounds];
    UIRectGetCenter();
    v5 = v4;
    v7 = v6;
    [viewModel currentIndicatorOffset];
    v9 = v5 + v8;
    v11 = v7 + v10;
    _userCrosshair = [(CAMLevelIndicatorView *)self _userCrosshair];
    [_userCrosshair setCenter:{v9, v11}];
  }
}

- (void)_updateCrosshairHighlightWithOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  _goalCrosshair = [(CAMLevelIndicatorView *)self _goalCrosshair];
  _userCrosshair = [(CAMLevelIndicatorView *)self _userCrosshair];
  v7 = vertical == *(MEMORY[0x1E69DE258] + 8) && horizontal == *MEMORY[0x1E69DE258];
  [_goalCrosshair setHighlighted:v7];
  [_userCrosshair setHighlighted:1];
}

- (void)_updateCrosshairAlphasWithAlpha:(double)alpha indicatorMode:(int64_t)mode
{
  if (mode != 1)
  {
    alpha = 0.0;
  }

  _userCrosshair = [(CAMLevelIndicatorView *)self _userCrosshair];
  _goalCrosshair = [(CAMLevelIndicatorView *)self _goalCrosshair];
  [_userCrosshair setAlpha:alpha];
  [_goalCrosshair setAlpha:alpha];
}

- (void)observable:(id)observable didPublishChange:(unint64_t)change withContext:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (!context)
  {
    v10 = observableCopy;
    if ((changeCopy & 3) != 0)
    {
      [observableCopy currentIndicatorOffset];
      [(CAMLevelIndicatorView *)self _updateCrosshairHighlightWithOffset:?];
      [(CAMLevelIndicatorView *)self setNeedsLayout];
      observableCopy = v10;
    }

    if ((changeCopy & 5) != 0)
    {
      [v10 currentIndicatorAlpha];
      -[CAMLevelIndicatorView _updateCrosshairAlphasWithAlpha:indicatorMode:](self, "_updateCrosshairAlphasWithAlpha:indicatorMode:", [v10 currentIndicatorMode], v9);
      observableCopy = v10;
    }
  }
}

@end