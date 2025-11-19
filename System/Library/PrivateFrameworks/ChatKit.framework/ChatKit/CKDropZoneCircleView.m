@interface CKDropZoneCircleView
- (CKDropZoneCircleView)initWithFrame:(CGRect)a3;
- (id)spinAnimation;
- (void)_updateShapeLayerStrokeColor;
- (void)layoutSubviews;
- (void)startAnimating;
- (void)stopAnimating;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKDropZoneCircleView

- (CKDropZoneCircleView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CKDropZoneCircleView;
  v3 = [(CKDropZoneCircleView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69794A0]);
    dropZoneShapeLayer = v3->_dropZoneShapeLayer;
    v3->_dropZoneShapeLayer = v4;

    [(CAShapeLayer *)v3->_dropZoneShapeLayer setFillColor:0];
    [(CAShapeLayer *)v3->_dropZoneShapeLayer setLineWidth:1.5];
    [(CAShapeLayer *)v3->_dropZoneShapeLayer setLineCap:*MEMORY[0x1E6979E78]];
    [(CKDropZoneCircleView *)v3 _updateShapeLayerStrokeColor];
    [(CAShapeLayer *)v3->_dropZoneShapeLayer setLineDashPattern:&unk_1F04E7548];
    v6 = [(CKDropZoneCircleView *)v3 layer];
    [v6 addSublayer:v3->_dropZoneShapeLayer];

    [(CKDropZoneCircleView *)v3 startAnimating];
    [(CKDropZoneCircleView *)v3 setNeedsLayout];
  }

  return v3;
}

- (void)layoutSubviews
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CKDropZoneCircleView;
  [(CKDropZoneCircleView *)&v13 layoutSubviews];
  [(CKDropZoneCircleView *)self bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v7 = CGRectGetHeight(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v8 = CGRectGetWidth(v16);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v8 * 0.5}];
  [(CAShapeLayer *)self->_dropZoneShapeLayer setFrame:x, y, width, height];
  -[CAShapeLayer setPath:](self->_dropZoneShapeLayer, "setPath:", [v9 CGPath]);
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v14[0] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:width * 3.14159265 / 30.6 * 0.8];
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [(CAShapeLayer *)self->_dropZoneShapeLayer setLineDashPattern:v12];
}

- (id)spinAnimation
{
  v2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  [v2 setByValue:&unk_1F04E8EE8];
  [v2 setDuration:20.0];
  LODWORD(v3) = 2139095040;
  [v2 setRepeatCount:v3];
  [v2 setRemovedOnCompletion:0];

  return v2;
}

- (void)stopAnimating
{
  if (self->_isAnimating)
  {
    self->_isAnimating = 0;
    [(CAShapeLayer *)self->_dropZoneShapeLayer removeAnimationForKey:@"CKSpinAnimation"];
  }
}

- (void)startAnimating
{
  if (!self->_isAnimating)
  {
    self->_isAnimating = 1;
    dropZoneShapeLayer = self->_dropZoneShapeLayer;
    v4 = [(CKDropZoneCircleView *)self spinAnimation];
    [(CAShapeLayer *)dropZoneShapeLayer addAnimation:v4 forKey:@"CKSpinAnimation"];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKDropZoneCircleView;
  [(CKDropZoneCircleView *)&v4 traitCollectionDidChange:a3];
  [(CKDropZoneCircleView *)self _updateShapeLayerStrokeColor];
}

- (void)_updateShapeLayerStrokeColor
{
  v3 = [(CKDropZoneCircleView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.22];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.31372549 green:0.333333333 blue:0.360784314 alpha:0.14];
  }

  v9 = v5;
  v6 = v5;
  v7 = [v9 CGColor];
  v8 = [(CKDropZoneCircleView *)self dropZoneShapeLayer];
  [v8 setStrokeColor:v7];
}

@end