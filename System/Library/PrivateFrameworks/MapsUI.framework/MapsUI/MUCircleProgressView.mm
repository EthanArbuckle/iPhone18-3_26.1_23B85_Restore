@interface MUCircleProgressView
- (CGSize)intrinsicContentSize;
- (MUCircleProgressView)initWithFrame:(CGRect)a3;
- (void)_handleTap:(id)a3;
- (void)_startIndeterminateAnimation;
- (void)_updateBorderWidthForUpdatedDisplayScale;
- (void)_updateStrokeColorForUpdatedUserInterfaceStyle;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setPrimaryAction:(id)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation MUCircleProgressView

- (void)_updateBorderWidthForUpdatedDisplayScale
{
  v3 = [(MUCircleProgressView *)self traitCollection];
  [v3 displayScale];
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
  v4 = [MEMORY[0x1E69DC888] systemFillColor];
  v3 = v4;
  -[CAShapeLayer setStrokeColor:](self->_borderLayer, "setStrokeColor:", [v4 CGColor]);
}

- (void)tintColorDidChange
{
  v3 = [(MUCircleProgressView *)self tintColor];
  -[CAShapeLayer setStrokeColor:](self->_progressLayer, "setStrokeColor:", [v3 CGColor]);

  v4 = [(MUCircleProgressView *)self tintColor];
  -[CAShapeLayer setStrokeColor:](self->_indeterminateLayer, "setStrokeColor:", [v4 CGColor]);

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
  v3 = [(MUCircleProgressView *)self window];

  if (v3)
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

- (void)_handleTap:(id)a3
{
  primaryAction = self->_primaryAction;
  if (primaryAction)
  {
    primaryAction[2]();
  }
}

- (void)setPrimaryAction:(id)a3
{
  v4 = a3;
  if (self->_primaryAction != v4)
  {
    v11 = v4;
    v5 = [v4 copy];
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
    v4 = v11;
  }
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  progress = self->_progress;
  if (progress != a3)
  {
    v6 = fmax(fmin(a3, 1.0), 0.0);
    self->_progress = v6;
    if (a4)
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

- (MUCircleProgressView)initWithFrame:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  v53[1] = *MEMORY[0x1E69E9840];
  [(MUCircleProgressView *)self intrinsicContentSize:a3.origin.x];
  v7 = v6;
  [(MUCircleProgressView *)self intrinsicContentSize];
  v51.receiver = self;
  v51.super_class = MUCircleProgressView;
  v9 = [(MUCircleProgressView *)&v51 initWithFrame:x, y, v7, v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(MUCircleProgressView *)v9 traitCollection];
    [v11 displayScale];
    v13 = v12;

    v14 = 1.0 / fmax(v13, 1.0) + 2.0;
    v15 = [MEMORY[0x1E69794A0] layer];
    borderLayer = v10->_borderLayer;
    v10->_borderLayer = v15;

    [(MUCircleProgressView *)v10 bounds];
    [(CAShapeLayer *)v10->_borderLayer setFrame:?];
    v17 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v10->_borderLayer, "setFillColor:", [v17 CGColor]);

    v18 = [MEMORY[0x1E69DC888] systemFillColor];
    -[CAShapeLayer setStrokeColor:](v10->_borderLayer, "setStrokeColor:", [v18 CGColor]);

    [(CAShapeLayer *)v10->_borderLayer setLineWidth:v14];
    v19 = [(MUCircleProgressView *)v10 layer];
    [v19 addSublayer:v10->_borderLayer];

    v20 = [MEMORY[0x1E69794A0] layer];
    progressLayer = v10->_progressLayer;
    v10->_progressLayer = v20;

    [(MUCircleProgressView *)v10 bounds];
    [(CAShapeLayer *)v10->_progressLayer setFrame:?];
    v22 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v10->_progressLayer, "setFillColor:", [v22 CGColor]);

    v23 = [(MUCircleProgressView *)v10 tintColor];
    -[CAShapeLayer setStrokeColor:](v10->_progressLayer, "setStrokeColor:", [v23 CGColor]);

    [(CAShapeLayer *)v10->_progressLayer setLineWidth:v14];
    v24 = *MEMORY[0x1E6979E78];
    [(CAShapeLayer *)v10->_progressLayer setLineCap:*MEMORY[0x1E6979E78]];
    CATransform3DMakeRotation(&v50, -1.57079633, 0.0, 0.0, 1.0);
    v25 = v10->_progressLayer;
    v49 = v50;
    [(CAShapeLayer *)v25 setTransform:&v49];
    [(CAShapeLayer *)v10->_progressLayer setStrokeStart:0.0];
    [(CAShapeLayer *)v10->_progressLayer setStrokeEnd:0.0];
    v26 = [(MUCircleProgressView *)v10 layer];
    [v26 addSublayer:v10->_progressLayer];

    v27 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v10->_imageView;
    v10->_imageView = v27;

    [(UIImageView *)v10->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUCircleProgressView *)v10 addSubview:v10->_imageView];
    v29 = [(UIImageView *)v10->_imageView centerXAnchor];
    v30 = [(MUCircleProgressView *)v10 centerXAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(UIImageView *)v10->_imageView centerYAnchor];
    v33 = [(MUCircleProgressView *)v10 centerYAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    [v34 setActive:1];

    v35 = [MEMORY[0x1E69794A0] layer];
    indeterminateLayer = v10->_indeterminateLayer;
    v10->_indeterminateLayer = v35;

    [(MUCircleProgressView *)v10 bounds];
    [(CAShapeLayer *)v10->_indeterminateLayer setFrame:?];
    v37 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v10->_indeterminateLayer, "setFillColor:", [v37 CGColor]);

    v38 = [(MUCircleProgressView *)v10 tintColor];
    -[CAShapeLayer setStrokeColor:](v10->_indeterminateLayer, "setStrokeColor:", [v38 CGColor]);

    [(CAShapeLayer *)v10->_indeterminateLayer setLineWidth:v14];
    [(CAShapeLayer *)v10->_indeterminateLayer setLineCap:v24];
    [(CAShapeLayer *)v10->_indeterminateLayer setStrokeStart:0.166666672];
    [(CAShapeLayer *)v10->_indeterminateLayer setStrokeEnd:1.0];
    [(CAShapeLayer *)v10->_indeterminateLayer setHidden:1];
    v39 = [(MUCircleProgressView *)v10 layer];
    [v39 addSublayer:v10->_indeterminateLayer];

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