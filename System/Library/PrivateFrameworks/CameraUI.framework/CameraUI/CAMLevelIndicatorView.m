@interface CAMLevelIndicatorView
- (CAMLevelIndicatorView)initWithCoder:(id)a3;
- (CAMLevelIndicatorView)initWithFrame:(CGRect)a3;
- (CAMLevelIndicatorView)initWithViewModel:(id)a3;
- (void)_commonCAMLevelIndicatorViewInitializationWithViewModel:(id)a3;
- (void)_updateCrosshairAlphasWithAlpha:(double)a3 indicatorMode:(int64_t)a4;
- (void)_updateCrosshairHighlightWithOffset:(UIOffset)a3;
- (void)layoutSubviews;
- (void)observable:(id)a3 didPublishChange:(unint64_t)a4 withContext:(void *)a5;
@end

@implementation CAMLevelIndicatorView

- (CAMLevelIndicatorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAMLevelIndicatorView;
  v3 = [(CAMLevelIndicatorView *)&v6 initWithCoder:a3];
  if (v3)
  {
    v4 = objc_alloc_init(CAMLevelViewModel);
    [(CAMLevelIndicatorView *)v3 _commonCAMLevelIndicatorViewInitializationWithViewModel:v4];
  }

  return v3;
}

- (CAMLevelIndicatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMLevelIndicatorView;
  v3 = [(CAMLevelIndicatorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CAMLevelViewModel);
    [(CAMLevelIndicatorView *)v3 _commonCAMLevelIndicatorViewInitializationWithViewModel:v4];
  }

  return v3;
}

- (CAMLevelIndicatorView)initWithViewModel:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMLevelIndicatorView;
  v5 = [(CAMLevelIndicatorView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(CAMLevelIndicatorView *)v5 _commonCAMLevelIndicatorViewInitializationWithViewModel:v4];
  }

  return v6;
}

- (void)_commonCAMLevelIndicatorViewInitializationWithViewModel:(id)a3
{
  objc_storeStrong(&self->_viewModel, a3);
  v5 = a3;
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
  v16 = [(CAMLevelViewModel *)self->_viewModel currentIndicatorMode];

  [(CAMLevelIndicatorView *)self _updateCrosshairAlphasWithAlpha:v16 indicatorMode:v11];
  [(CAMLevelIndicatorView *)self _updateCrosshairHighlightWithOffset:v13, v15];

  [(CAMLevelIndicatorView *)self setUserInteractionEnabled:0];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CAMLevelIndicatorView;
  [(CAMLevelIndicatorView *)&v13 layoutSubviews];
  v3 = [(CAMLevelIndicatorView *)self viewModel];
  if ([v3 currentIndicatorMode] == 1)
  {
    [(CAMLevelIndicatorView *)self bounds];
    UIRectGetCenter();
    v5 = v4;
    v7 = v6;
    [v3 currentIndicatorOffset];
    v9 = v5 + v8;
    v11 = v7 + v10;
    v12 = [(CAMLevelIndicatorView *)self _userCrosshair];
    [v12 setCenter:{v9, v11}];
  }
}

- (void)_updateCrosshairHighlightWithOffset:(UIOffset)a3
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v8 = [(CAMLevelIndicatorView *)self _goalCrosshair];
  v6 = [(CAMLevelIndicatorView *)self _userCrosshair];
  v7 = vertical == *(MEMORY[0x1E69DE258] + 8) && horizontal == *MEMORY[0x1E69DE258];
  [v8 setHighlighted:v7];
  [v6 setHighlighted:1];
}

- (void)_updateCrosshairAlphasWithAlpha:(double)a3 indicatorMode:(int64_t)a4
{
  if (a4 != 1)
  {
    a3 = 0.0;
  }

  v7 = [(CAMLevelIndicatorView *)self _userCrosshair];
  v6 = [(CAMLevelIndicatorView *)self _goalCrosshair];
  [v7 setAlpha:a3];
  [v6 setAlpha:a3];
}

- (void)observable:(id)a3 didPublishChange:(unint64_t)a4 withContext:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (!a5)
  {
    v10 = v8;
    if ((v6 & 3) != 0)
    {
      [v8 currentIndicatorOffset];
      [(CAMLevelIndicatorView *)self _updateCrosshairHighlightWithOffset:?];
      [(CAMLevelIndicatorView *)self setNeedsLayout];
      v8 = v10;
    }

    if ((v6 & 5) != 0)
    {
      [v10 currentIndicatorAlpha];
      -[CAMLevelIndicatorView _updateCrosshairAlphasWithAlpha:indicatorMode:](self, "_updateCrosshairAlphasWithAlpha:indicatorMode:", [v10 currentIndicatorMode], v9);
      v8 = v10;
    }
  }
}

@end