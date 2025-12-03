@interface CKProgressView
- (CKProgressView)initWithFrame:(CGRect)frame;
- (void)_createInternalProgressBar;
- (void)_createInternalTrackView;
- (void)_prepareSubviewsIfNeeded;
- (void)layoutSubviews;
- (void)setCapStyle:(unint64_t)style;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)setProgressTintColor:(id)color;
- (void)setTrackTintColor:(id)color;
@end

@implementation CKProgressView

- (CKProgressView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CKProgressView;
  result = [(CKProgressView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    [v5 setBackgroundColor:systemGrayColor];
  }

  [(CKProgressView *)self addSubview:v5];
  [(CKProgressView *)self setTrackView:v5];
}

- (void)_createInternalProgressBar
{
  v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  appTintColor = [theme appTintColor];
  [v8 setBackgroundColor:appTintColor];

  v6 = *MEMORY[0x1E69796E8];
  layer = [v8 layer];
  [layer setCornerCurve:v6];

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
  _shouldReverseLayoutDirection = [(CKProgressView *)self _shouldReverseLayoutDirection];
  [(CKProgressView *)self bounds];
  v5 = v4;
  [(CKProgressView *)self bounds];
  v10 = 0.0;
  if (_shouldReverseLayoutDirection)
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
  trackView = [(CKProgressView *)self trackView];
  [trackView setFrame:{MaxX, v16, v15, v5}];

  [(CKProgressView *)self progress];
  v19 = v18;
  [(CKProgressView *)self bounds];
  v20 = v19 * CGRectGetWidth(v32);
  if (_shouldReverseLayoutDirection)
  {
    [(CKProgressView *)self progress];
    v22 = 1.0 - v21;
    [(CKProgressView *)self bounds];
    v10 = v22 * CGRectGetWidth(v33);
  }

  progressSegmentView = [(CKProgressView *)self progressSegmentView];
  [progressSegmentView setFrame:{v10, v16, v20, v5}];

  capStyle = [(CKProgressView *)self capStyle];
  if (capStyle == 1)
  {
    v25 = 0.0;
  }

  else
  {
    if (capStyle)
    {
      return;
    }

    v25 = v5 * 0.5;
  }

  progressSegmentView2 = [(CKProgressView *)self progressSegmentView];
  layer = [progressSegmentView2 layer];
  [layer setCornerRadius:v25];

  trackView2 = [(CKProgressView *)self trackView];
  layer2 = [trackView2 layer];
  [layer2 setCornerRadius:v25];
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = fmax(fmin(progress, 1.0), 0.0);
  if (!CKFloatApproximatelyEqualToFloatWithTolerance(self->_progress, v6, 0.001))
  {
    progress = self->_progress;
    self->_progress = v6;
    [(CKProgressView *)self setNeedsLayout];
    if (animatedCopy)
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

- (void)setProgressTintColor:(id)color
{
  colorCopy = color;
  if (self->_progressTintColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_progressTintColor, color);
    progressSegmentView = [(CKProgressView *)self progressSegmentView];
    [progressSegmentView setBackgroundColor:v7];

    colorCopy = v7;
  }
}

- (void)setTrackTintColor:(id)color
{
  colorCopy = color;
  if (self->_trackTintColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_trackTintColor, color);
    trackView = [(CKProgressView *)self trackView];
    [trackView setBackgroundColor:v7];

    colorCopy = v7;
  }
}

- (void)setCapStyle:(unint64_t)style
{
  if (self->_capStyle != style)
  {
    self->_capStyle = style;
    [(CKProgressView *)self setNeedsLayout];
  }
}

@end