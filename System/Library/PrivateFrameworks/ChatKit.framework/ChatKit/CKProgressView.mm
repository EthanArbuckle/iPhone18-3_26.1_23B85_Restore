@interface CKProgressView
- (CKProgressView)initWithFrame:(CGRect)a3;
- (void)_createInternalProgressBar;
- (void)_createInternalTrackView;
- (void)_prepareSubviewsIfNeeded;
- (void)layoutSubviews;
- (void)setCapStyle:(unint64_t)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)setProgressTintColor:(id)a3;
- (void)setTrackTintColor:(id)a3;
@end

@implementation CKProgressView

- (CKProgressView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKProgressView;
  result = [(CKProgressView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_progress = 0.0;
    result->_capStyle = 1;
    result->_hasPreparedSubviews = 0;
  }

  return result;
}

- (void)_createInternalTrackView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = v3;
  if (self->_trackTintColor)
  {
    [v3 setBackgroundColor:?];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] systemGrayColor];
    [v5 setBackgroundColor:v4];
  }

  [(CKProgressView *)self addSubview:v5];
  [(CKProgressView *)self setTrackView:v5];
}

- (void)_createInternalProgressBar
{
  v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [v4 appTintColor];
  [v8 setBackgroundColor:v5];

  v6 = *MEMORY[0x1E69796E8];
  v7 = [v8 layer];
  [v7 setCornerCurve:v6];

  [(CKProgressView *)self addSubview:v8];
  [(CKProgressView *)self setProgressSegmentView:v8];
}

- (void)_prepareSubviewsIfNeeded
{
  if (!self->_hasPreparedSubviews)
  {
    [(CKProgressView *)self _createInternalTrackView];
    [(CKProgressView *)self _createInternalProgressBar];
    self->_hasPreparedSubviews = 1;
  }
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKProgressView;
  [(CKProgressView *)&v30 layoutSubviews];
  [(CKProgressView *)self _prepareSubviewsIfNeeded];
  v3 = [(CKProgressView *)self _shouldReverseLayoutDirection];
  [(CKProgressView *)self bounds];
  v5 = v4;
  [(CKProgressView *)self bounds];
  v10 = 0.0;
  if (v3)
  {
    MaxX = CGRectGetMaxX(*&v6);
    [(CKProgressView *)self bounds];
  }

  else
  {
    MaxX = 0.0;
  }

  Height = CGRectGetHeight(*&v6);
  [(CKProgressView *)self progress];
  v14 = v13;
  [(CKProgressView *)self bounds];
  v15 = v14 * CGRectGetWidth(v31);
  v16 = Height - v5;
  v17 = [(CKProgressView *)self trackView];
  [v17 setFrame:{MaxX, v16, v15, v5}];

  [(CKProgressView *)self progress];
  v19 = v18;
  [(CKProgressView *)self bounds];
  v20 = v19 * CGRectGetWidth(v32);
  if (v3)
  {
    [(CKProgressView *)self progress];
    v22 = 1.0 - v21;
    [(CKProgressView *)self bounds];
    v10 = v22 * CGRectGetWidth(v33);
  }

  v23 = [(CKProgressView *)self progressSegmentView];
  [v23 setFrame:{v10, v16, v20, v5}];

  v24 = [(CKProgressView *)self capStyle];
  if (v24 == 1)
  {
    v25 = 0.0;
  }

  else
  {
    if (v24)
    {
      return;
    }

    v25 = v5 * 0.5;
  }

  v26 = [(CKProgressView *)self progressSegmentView];
  v27 = [v26 layer];
  [v27 setCornerRadius:v25];

  v28 = [(CKProgressView *)self trackView];
  v29 = [v28 layer];
  [v29 setCornerRadius:v25];
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = fmax(fmin(a3, 1.0), 0.0);
  if (!CKFloatApproximatelyEqualToFloatWithTolerance(self->_progress, v6, 0.001))
  {
    progress = self->_progress;
    self->_progress = v6;
    [(CKProgressView *)self setNeedsLayout];
    if (v4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __39__CKProgressView_setProgress_animated___block_invoke;
      v8[3] = &unk_1E72EBA18;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:196612 delay:v8 options:0 animations:vabdd_f64(progress completion:{v6), 0.0}];
    }
  }
}

- (void)setProgressTintColor:(id)a3
{
  v5 = a3;
  if (self->_progressTintColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_progressTintColor, a3);
    v6 = [(CKProgressView *)self progressSegmentView];
    [v6 setBackgroundColor:v7];

    v5 = v7;
  }
}

- (void)setTrackTintColor:(id)a3
{
  v5 = a3;
  if (self->_trackTintColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_trackTintColor, a3);
    v6 = [(CKProgressView *)self trackView];
    [v6 setBackgroundColor:v7];

    v5 = v7;
  }
}

- (void)setCapStyle:(unint64_t)a3
{
  if (self->_capStyle != a3)
  {
    self->_capStyle = a3;
    [(CKProgressView *)self setNeedsLayout];
  }
}

@end