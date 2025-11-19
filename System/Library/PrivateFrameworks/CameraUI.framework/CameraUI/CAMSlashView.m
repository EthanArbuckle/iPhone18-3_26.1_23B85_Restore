@interface CAMSlashView
- (CAMSlashView)initWithFrame:(CGRect)a3;
- (void)_updateShapeLayerColor;
- (void)_updateShapeLayerLineWidth;
- (void)_updateShapeLayerPath;
- (void)_updateShapeLayerProgressAnimated:(BOOL)a3;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMSlashView

- (CAMSlashView)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CAMSlashView;
  v3 = [(CAMSlashView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v6 = [(CAMSlashView *)self tintColor];
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(CAMSlashView *)self _shapeLayer];
  [v5 setStrokeColor:v4];
}

- (void)_updateShapeLayerLineWidth
{
  v3 = [(CAMSlashView *)self traitCollection];
  v4 = [v3 legibilityWeight];

  if (v4 == 1)
  {
    v5 = 1.75;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(CAMSlashView *)self _shapeLayer];
  [v6 setLineWidth:v5];
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
  v12 = [MEMORY[0x1E69DC728] bezierPath];
  [v12 moveToPoint:{x, y}];
  [v12 addLineToPoint:{MaxX, MaxY}];
  v9 = v12;
  v10 = [v12 CGPath];
  v11 = [(CAMSlashView *)self _shapeLayer];
  [v11 setPath:v10];
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_visible != a3)
  {
    self->_visible = a3;
    [(CAMSlashView *)self _updateShapeLayerProgressAnimated:a4];
  }
}

- (void)_updateShapeLayerProgressAnimated:(BOOL)a3
{
  v3 = a3;
  v18 = [(CAMSlashView *)self _shapeLayer];
  v5 = [(CAMSlashView *)self isVisible];
  v8 = 1.0;
  if (v5)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (v3)
  {
    LODWORD(v6) = 1041865114;
    LODWORD(v7) = 1.0;
    LODWORD(v8) = 1045220557;
    v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:COERCE_DOUBLE(1045220557) :v8 :v6 :v7];
    v11 = [v18 presentationLayer];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v18;
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
    [v18 addAnimation:v14 forKey:@"slashProgress"];
  }

  [v18 setStrokeEnd:v9];
}

@end