@interface SFProgressView
- (CGSize)intrinsicContentSize;
- (SFProgressView)initWithFrame:(CGRect)frame;
- (void)_updateRectangularProgressFill;
- (void)layoutSubviews;
- (void)setProgress:(double)progress animated:(BOOL)animated completion:(id)completion;
- (void)setRadius:(double)radius;
- (void)setStyle:(int64_t)style;
- (void)setTrackWidth:(double)width;
@end

@implementation SFProgressView

- (SFProgressView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SFProgressView;
  v3 = [(SFProgressView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(SFRingView);
    trackRing = v3->_trackRing;
    v3->_trackRing = v4;

    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    [(SFRingView *)v3->_trackRing setTintColor:systemFillColor];

    [(SFProgressView *)v3 addSubview:v3->_trackRing];
    v7 = objc_alloc_init(SFRingView);
    progressRing = v3->_progressRing;
    v3->_progressRing = v7;

    shapeLayer = [(SFRingView *)v3->_progressRing shapeLayer];
    [shapeLayer setStrokeEnd:0.0];

    [(SFProgressView *)v3 addSubview:v3->_progressRing];
    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    rectangularFillView = v3->_rectangularFillView;
    v3->_rectangularFillView = v10;

    [(UIView *)v3->_rectangularFillView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v3->_rectangularFillView _setContinuousCornerRadius:1.0];
    [(UIView *)v3->_rectangularFillView setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v13 = [systemBlueColor colorWithAlphaComponent:0.33];
    [(UIView *)v3->_rectangularFillView setBackgroundColor:v13];

    [(UIView *)v3->_rectangularFillView setHidden:1];
    [(SFProgressView *)v3 addSubview:v3->_rectangularFillView];
    v14 = v3;
  }

  return v3;
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    if (style <= 2)
    {
      v4 = 4u >> (style & 7);
      v5 = 3u >> (style & 7);
      [(SFRingView *)self->_trackRing setHidden:v4 & 1];
      [(SFRingView *)self->_progressRing setHidden:v4 & 1];
      rectangularFillView = self->_rectangularFillView;

      [(UIView *)rectangularFillView setHidden:v5 & 1];
    }
  }
}

- (void)setProgress:(double)progress animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__SFProgressView_setProgress_animated_completion___block_invoke;
  aBlock[3] = &unk_1E721D338;
  v9 = completionCopy;
  v18 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (self->_progress == progress)
  {
    v10[2](v10);
  }

  else
  {
    self->_progress = progress;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__SFProgressView_setProgress_animated_completion___block_invoke_2;
    v16[3] = &unk_1E721BAC0;
    v16[4] = self;
    *&v16[5] = progress;
    v12 = _Block_copy(v16);
    v13 = MEMORY[0x1E69DD250];
    if (animatedCopy)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__SFProgressView_setProgress_animated_completion___block_invoke_3;
      v14[3] = &unk_1E721BA70;
      v15 = v11;
      [v13 _animateUsingDefaultTimingWithOptions:0 animations:v12 completion:v14];
    }

    else
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:v12];
      v11[2](v11);
    }
  }
}

uint64_t __50__SFProgressView_setProgress_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __50__SFProgressView_setProgress_animated_completion___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 432);
  if (v4 >= 2)
  {
    if (v4 == 2)
    {

      [v3 _updateRectangularProgressFill];
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [*(v3 + 416) shapeLayer];
    [v6 setStrokeEnd:v5];
  }
}

- (void)setRadius:(double)radius
{
  if (self->_radius != radius)
  {
    self->_radius = radius;
    [(SFProgressView *)self invalidateIntrinsicContentSize];

    [(SFProgressView *)self setNeedsLayout];
  }
}

- (void)setTrackWidth:(double)width
{
  if (self->_trackWidth != width)
  {
    self->_trackWidth = width;
    [(SFProgressView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SFProgressView;
  [(SFProgressView *)&v9 layoutSubviews];
  trackWidth = self->_trackWidth;
  v4 = trackWidth * 0.5;
  v5 = self->_radius - trackWidth * 0.5 + self->_radius - trackWidth * 0.5;
  shapeLayer = [(SFRingView *)self->_trackRing shapeLayer];
  [shapeLayer setLineWidth:trackWidth];

  [(SFRingView *)self->_trackRing setRadius:self->_radius - trackWidth * 0.5];
  [(SFRingView *)self->_trackRing setFrame:trackWidth * 0.5, trackWidth * 0.5, v5, v5];
  v7 = self->_trackWidth;
  shapeLayer2 = [(SFRingView *)self->_progressRing shapeLayer];
  [shapeLayer2 setLineWidth:v7];

  [(SFRingView *)self->_progressRing setRadius:self->_radius - v4];
  [(SFRingView *)self->_progressRing setFrame:v4, v4, v5, v5];
  [(SFProgressView *)self _updateRectangularProgressFill];
}

- (CGSize)intrinsicContentSize
{
  v2 = self->_radius + self->_radius;
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateRectangularProgressFill
{
  [(SFProgressView *)self bounds];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v7 = CGRectGetWidth(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v8 = CGRectGetHeight(v17);
  v9 = _SFRoundFloatToPixels(v7 * 0.6);
  v10 = _SFRoundFloatToPixels(v8 * 0.55 * fmin(self->_progress, 1.0));
  v11 = _SFRoundFloatToPixels(0.25);
  v12 = _SFRoundFloatToPixels(2.47);
  v13 = _SFRoundFloatToPixels((v7 - v9) * 0.5) - v11;
  rectangularFillView = self->_rectangularFillView;

  [(UIView *)rectangularFillView setFrame:v13, v8 - v10 - v12, v9, v10];
}

@end