@interface MUCircleProgressView
- (CGSize)intrinsicContentSize;
- (MUCircleProgressView)initWithFrame:(CGRect)frame;
- (void)_handleTap:(id)tap;
- (void)_startIndeterminateAnimation;
- (void)_updateBorderWidthForUpdatedDisplayScale;
- (void)_updateStrokeColorForUpdatedUserInterfaceStyle;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setPrimaryAction:(id)action;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation MUCircleProgressView

- (void)_updateBorderWidthForUpdatedDisplayScale
{
  traitCollection = [(MUCircleProgressView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  [(CAShapeLayer *)self->_borderLayer setLineWidth:1.0 / fmax(v5, 1.0) + 2.0];
  [(CAShapeLayer *)self->_borderLayer lineWidth];
  [(CAShapeLayer *)self->_progressLayer setLineWidth:?];
  [(CAShapeLayer *)self->_borderLayer lineWidth];
  indeterminateLayer = self->_indeterminateLayer;

  [(CAShapeLayer *)indeterminateLayer setLineWidth:?];
}

- (void)_updateStrokeColorForUpdatedUserInterfaceStyle
{
  systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
  v3 = systemFillColor;
  -[CAShapeLayer setStrokeColor:](self->_borderLayer, "setStrokeColor:", [systemFillColor CGColor]);
}

- (void)tintColorDidChange
{
  tintColor = [(MUCircleProgressView *)self tintColor];
  -[CAShapeLayer setStrokeColor:](self->_progressLayer, "setStrokeColor:", [tintColor CGColor]);

  tintColor2 = [(MUCircleProgressView *)self tintColor];
  -[CAShapeLayer setStrokeColor:](self->_indeterminateLayer, "setStrokeColor:", [tintColor2 CGColor]);

  v5.receiver = self;
  v5.super_class = MUCircleProgressView;
  [(MUCircleProgressView *)&v5 tintColorDidChange];
}

- (CGSize)intrinsicContentSize
{
  v2 = 28.0;
  v3 = 28.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  [(MUCircleProgressView *)self bounds];
  [(CAShapeLayer *)self->_borderLayer setFrame:?];
  [(MUCircleProgressView *)self bounds];
  [(CAShapeLayer *)self->_progressLayer setFrame:?];
  [(MUCircleProgressView *)self bounds];
  [(CAShapeLayer *)self->_indeterminateLayer setFrame:?];
  [(CAShapeLayer *)self->_borderLayer lineWidth];
  v4 = v3 * 0.5;
  v5 = MEMORY[0x1E69DC728];
  [(CAShapeLayer *)self->_borderLayer bounds];
  v18 = CGRectInset(v17, v4, v4);
  v6 = [v5 bezierPathWithOvalInRect:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
  -[CAShapeLayer setPath:](self->_borderLayer, "setPath:", [v6 CGPath]);

  [(CAShapeLayer *)self->_progressLayer lineWidth];
  v8 = v7 * 0.5;
  v9 = MEMORY[0x1E69DC728];
  [(CAShapeLayer *)self->_progressLayer bounds];
  v20 = CGRectInset(v19, v8, v8);
  v10 = [v9 bezierPathWithOvalInRect:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
  -[CAShapeLayer setPath:](self->_progressLayer, "setPath:", [v10 CGPath]);

  [(CAShapeLayer *)self->_indeterminateLayer lineWidth];
  v12 = v11 * 0.5;
  v13 = MEMORY[0x1E69DC728];
  [(CAShapeLayer *)self->_indeterminateLayer bounds];
  v22 = CGRectInset(v21, v12, v12);
  v15 = [v13 bezierPathWithOvalInRect:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
  v14 = v15;
  -[CAShapeLayer setPath:](self->_indeterminateLayer, "setPath:", [v15 CGPath]);
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = MUCircleProgressView;
  [(MUCircleProgressView *)&v3 didMoveToWindow];
  if (self->_indeterminate)
  {
    [(MUCircleProgressView *)self _startIndeterminateAnimation];
  }

  else
  {
    [(CAShapeLayer *)self->_indeterminateLayer removeAllAnimations];
  }
}

- (void)_startIndeterminateAnimation
{
  window = [(MUCircleProgressView *)self window];

  if (window)
  {
    v6 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation.z"];
    [v6 setValues:&unk_1F450E2D8];
    [v6 setDuration:1.0];
    v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [v6 setTimingFunction:v4];

    LODWORD(v5) = 2139095040;
    [v6 setRepeatCount:v5];
    [(CAShapeLayer *)self->_indeterminateLayer addAnimation:v6 forKey:@"spin"];
  }
}

- (void)_handleTap:(id)tap
{
  primaryAction = self->_primaryAction;
  if (primaryAction)
  {
    primaryAction[2]();
  }
}

- (void)setPrimaryAction:(id)action
{
  actionCopy = action;
  if (self->_primaryAction != actionCopy)
  {
    v11 = actionCopy;
    v5 = [actionCopy copy];
    primaryAction = self->_primaryAction;
    self->_primaryAction = v5;

    tapRecognizer = self->_tapRecognizer;
    if (self->_primaryAction)
    {
      if (!tapRecognizer)
      {
        v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleTap_];
        v9 = self->_tapRecognizer;
        self->_tapRecognizer = v8;

        [(MUCircleProgressView *)self addGestureRecognizer:self->_tapRecognizer];
        tapRecognizer = self->_tapRecognizer;
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    [(UITapGestureRecognizer *)tapRecognizer setEnabled:v10];
    actionCopy = v11;
  }
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  progress = self->_progress;
  if (progress != progress)
  {
    v6 = fmax(fmin(progress, 1.0), 0.0);
    self->_progress = v6;
    if (animated)
    {
      v7 = vabdd_f64(progress, v6);
      v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
      [v12 setDuration:v7 * 0.6];
      [v12 setFillMode:*MEMORY[0x1E69797E8]];
      [v12 setRemovedOnCompletion:0];
      v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
      [v12 setTimingFunction:v8];

      v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_progress];
      [v12 setToValue:v9];

      [(CAShapeLayer *)self->_progressLayer addAnimation:v12 forKey:0];
    }

    else
    {
      [(CAShapeLayer *)self->_progressLayer removeAllAnimations];
      progressLayer = self->_progressLayer;
      v11 = self->_progress;

      [(CAShapeLayer *)progressLayer setStrokeEnd:v11];
    }
  }
}

- (MUCircleProgressView)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v53[1] = *MEMORY[0x1E69E9840];
  [(MUCircleProgressView *)self intrinsicContentSize:frame.origin.x];
  v7 = v6;
  [(MUCircleProgressView *)self intrinsicContentSize];
  v51.receiver = self;
  v51.super_class = MUCircleProgressView;
  v9 = [(MUCircleProgressView *)&v51 initWithFrame:x, y, v7, v8];
  v10 = v9;
  if (v9)
  {
    traitCollection = [(MUCircleProgressView *)v9 traitCollection];
    [traitCollection displayScale];
    v13 = v12;

    v14 = 1.0 / fmax(v13, 1.0) + 2.0;
    layer = [MEMORY[0x1E69794A0] layer];
    borderLayer = v10->_borderLayer;
    v10->_borderLayer = layer;

    [(MUCircleProgressView *)v10 bounds];
    [(CAShapeLayer *)v10->_borderLayer setFrame:?];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v10->_borderLayer, "setFillColor:", [clearColor CGColor]);

    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    -[CAShapeLayer setStrokeColor:](v10->_borderLayer, "setStrokeColor:", [systemFillColor CGColor]);

    [(CAShapeLayer *)v10->_borderLayer setLineWidth:v14];
    layer2 = [(MUCircleProgressView *)v10 layer];
    [layer2 addSublayer:v10->_borderLayer];

    layer3 = [MEMORY[0x1E69794A0] layer];
    progressLayer = v10->_progressLayer;
    v10->_progressLayer = layer3;

    [(MUCircleProgressView *)v10 bounds];
    [(CAShapeLayer *)v10->_progressLayer setFrame:?];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v10->_progressLayer, "setFillColor:", [clearColor2 CGColor]);

    tintColor = [(MUCircleProgressView *)v10 tintColor];
    -[CAShapeLayer setStrokeColor:](v10->_progressLayer, "setStrokeColor:", [tintColor CGColor]);

    [(CAShapeLayer *)v10->_progressLayer setLineWidth:v14];
    v24 = *MEMORY[0x1E6979E78];
    [(CAShapeLayer *)v10->_progressLayer setLineCap:*MEMORY[0x1E6979E78]];
    CATransform3DMakeRotation(&v50, -1.57079633, 0.0, 0.0, 1.0);
    v25 = v10->_progressLayer;
    v49 = v50;
    [(CAShapeLayer *)v25 setTransform:&v49];
    [(CAShapeLayer *)v10->_progressLayer setStrokeStart:0.0];
    [(CAShapeLayer *)v10->_progressLayer setStrokeEnd:0.0];
    layer4 = [(MUCircleProgressView *)v10 layer];
    [layer4 addSublayer:v10->_progressLayer];

    v27 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v10->_imageView;
    v10->_imageView = v27;

    [(UIImageView *)v10->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUCircleProgressView *)v10 addSubview:v10->_imageView];
    centerXAnchor = [(UIImageView *)v10->_imageView centerXAnchor];
    centerXAnchor2 = [(MUCircleProgressView *)v10 centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v31 setActive:1];

    centerYAnchor = [(UIImageView *)v10->_imageView centerYAnchor];
    centerYAnchor2 = [(MUCircleProgressView *)v10 centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v34 setActive:1];

    layer5 = [MEMORY[0x1E69794A0] layer];
    indeterminateLayer = v10->_indeterminateLayer;
    v10->_indeterminateLayer = layer5;

    [(MUCircleProgressView *)v10 bounds];
    [(CAShapeLayer *)v10->_indeterminateLayer setFrame:?];
    clearColor3 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v10->_indeterminateLayer, "setFillColor:", [clearColor3 CGColor]);

    tintColor2 = [(MUCircleProgressView *)v10 tintColor];
    -[CAShapeLayer setStrokeColor:](v10->_indeterminateLayer, "setStrokeColor:", [tintColor2 CGColor]);

    [(CAShapeLayer *)v10->_indeterminateLayer setLineWidth:v14];
    [(CAShapeLayer *)v10->_indeterminateLayer setLineCap:v24];
    [(CAShapeLayer *)v10->_indeterminateLayer setStrokeStart:0.166666672];
    [(CAShapeLayer *)v10->_indeterminateLayer setStrokeEnd:1.0];
    [(CAShapeLayer *)v10->_indeterminateLayer setHidden:1];
    layer6 = [(MUCircleProgressView *)v10 layer];
    [layer6 addSublayer:v10->_indeterminateLayer];

    v40 = objc_opt_self();
    v53[0] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v42 = [(MUCircleProgressView *)v10 registerForTraitChanges:v41 withAction:sel__updateBorderWidthForUpdatedDisplayScale];

    v43 = objc_opt_self();
    v52 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v45 = [(MUCircleProgressView *)v10 registerForTraitChanges:v44 withAction:sel__updateStrokeColorForUpdatedUserInterfaceStyle];

    v46 = v10;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v10;
}

@end