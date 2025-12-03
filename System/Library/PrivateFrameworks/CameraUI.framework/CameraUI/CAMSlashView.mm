@interface CAMSlashView
- (CAMSlashView)initWithFrame:(CGRect)frame;
- (void)_updateShapeLayerColor;
- (void)_updateShapeLayerLineWidth;
- (void)_updateShapeLayerPath;
- (void)_updateShapeLayerProgressAnimated:(BOOL)animated;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation CAMSlashView

- (CAMSlashView)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CAMSlashView;
  v3 = [(CAMSlashView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMSlashView *)v3 setUserInteractionEnabled:0];
    [(CAMSlashView *)v4 _updateShapeLayerProgressAnimated:0];
    [(CAMSlashView *)v4 _updateShapeLayerLineWidth];
    [(CAMSlashView *)v4 _updateShapeLayerColor];
    v12[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v6 = [(CAMSlashView *)v4 registerForTraitChanges:v5 withAction:sel__updateShapeLayerLineWidth];

    v11 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v8 = [(CAMSlashView *)v4 registerForTraitChanges:v7 withAction:sel__updateShapeLayerColor];
  }

  return v4;
}

- (void)_updateShapeLayerColor
{
  tintColor = [(CAMSlashView *)self tintColor];
  v3 = tintColor;
  cGColor = [tintColor CGColor];
  _shapeLayer = [(CAMSlashView *)self _shapeLayer];
  [_shapeLayer setStrokeColor:cGColor];
}

- (void)_updateShapeLayerLineWidth
{
  traitCollection = [(CAMSlashView *)self traitCollection];
  legibilityWeight = [traitCollection legibilityWeight];

  if (legibilityWeight == 1)
  {
    v5 = 1.75;
  }

  else
  {
    v5 = 1.0;
  }

  _shapeLayer = [(CAMSlashView *)self _shapeLayer];
  [_shapeLayer setLineWidth:v5];
}

- (void)_updateShapeLayerPath
{
  [(CAMSlashView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MaxX = CGRectGetMaxX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MaxY = CGRectGetMaxY(v15);
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  [bezierPath moveToPoint:{x, y}];
  [bezierPath addLineToPoint:{MaxX, MaxY}];
  v9 = bezierPath;
  cGPath = [bezierPath CGPath];
  _shapeLayer = [(CAMSlashView *)self _shapeLayer];
  [_shapeLayer setPath:cGPath];
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->_visible != visible)
  {
    self->_visible = visible;
    [(CAMSlashView *)self _updateShapeLayerProgressAnimated:animated];
  }
}

- (void)_updateShapeLayerProgressAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _shapeLayer = [(CAMSlashView *)self _shapeLayer];
  isVisible = [(CAMSlashView *)self isVisible];
  v8 = 1.0;
  if (isVisible)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (animatedCopy)
  {
    LODWORD(v6) = 1041865114;
    LODWORD(v7) = 1.0;
    LODWORD(v8) = 1045220557;
    v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:COERCE_DOUBLE(1045220557) :v8 :v6 :v7];
    presentationLayer = [_shapeLayer presentationLayer];
    if (presentationLayer)
    {
      v12 = presentationLayer;
    }

    else
    {
      v12 = _shapeLayer;
    }

    v13 = v12;

    v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"strokeEnd"];
    v15 = MEMORY[0x1E696AD98];
    [v13 strokeEnd];
    v16 = [v15 numberWithDouble:?];
    [v14 setFromValue:v16];

    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    [v14 setToValue:v17];

    [v14 setTimingFunction:v10];
    [v14 setDuration:0.4];
    [_shapeLayer addAnimation:v14 forKey:@"slashProgress"];
  }

  [_shapeLayer setStrokeEnd:v9];
}

@end