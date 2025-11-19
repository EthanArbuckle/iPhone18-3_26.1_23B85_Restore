@interface CAMSemanticStylePickerTileOverlayView
+ (id)_sharedCornerImage;
- (CAMSemanticStylePickerTileOverlayView)initWithFrame:(CGRect)a3;
- (void)_updateAlphas;
- (void)_updateMaterialColor;
- (void)layoutSubviews;
- (void)setCornerTargetAlpha:(double)a3;
- (void)setMaterialColor:(id)a3;
- (void)setTileAlpha:(double)a3;
@end

@implementation CAMSemanticStylePickerTileOverlayView

- (CAMSemanticStylePickerTileOverlayView)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = CAMSemanticStylePickerTileOverlayView;
  v3 = [(CAMSemanticStylePickerTileOverlayView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v3->_materialColor = [MEMORY[0x1E69DC888] blackColor];
    v4 = [objc_opt_class() _sharedCornerImage];
    v5 = [v4 imageWithRenderingMode:2];

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    topLeftCorner = v3->__topLeftCorner;
    v3->__topLeftCorner = v6;

    [(UIImageView *)v3->__topLeftCorner setImage:v5];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    topRightCorner = v3->__topRightCorner;
    v3->__topRightCorner = v8;

    v10 = [v5 imageWithHorizontallyFlippedOrientation];
    [(UIImageView *)v3->__topRightCorner setImage:v10];

    v11 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v12 = [v5 CGImage];
    [v5 scale];
    v13 = [v11 initWithCGImage:v12 scale:5 orientation:?];
    v14 = [v13 imageWithRenderingMode:2];

    v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    bottomLeftCorner = v3->__bottomLeftCorner;
    v3->__bottomLeftCorner = v15;

    [(UIImageView *)v3->__bottomLeftCorner setImage:v14];
    v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    bottomRightCorner = v3->__bottomRightCorner;
    v3->__bottomRightCorner = v17;

    v19 = [v14 imageWithHorizontallyFlippedOrientation];
    [(UIImageView *)v3->__bottomRightCorner setImage:v19];

    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    tileOverlay = v3->__tileOverlay;
    v3->__tileOverlay = v20;

    [(CAMSemanticStylePickerTileOverlayView *)v3 addSubview:v3->__tileOverlay];
    [(CAMSemanticStylePickerTileOverlayView *)v3 addSubview:v3->__topLeftCorner];
    [(CAMSemanticStylePickerTileOverlayView *)v3 addSubview:v3->__topRightCorner];
    [(CAMSemanticStylePickerTileOverlayView *)v3 addSubview:v3->__bottomLeftCorner];
    [(CAMSemanticStylePickerTileOverlayView *)v3 addSubview:v3->__bottomRightCorner];
    v3->_tileAlpha = 0.0;
    v3->_cornerTargetAlpha = 1.0;
    [(CAMSemanticStylePickerTileOverlayView *)v3 _updateMaterialColor];
    [(CAMSemanticStylePickerTileOverlayView *)v3 _updateAlphas];
  }

  return v3;
}

+ (id)_sharedCornerImage
{
  if (_sharedCornerImage_onceToken != -1)
  {
    +[CAMSemanticStylePickerTileOverlayView _sharedCornerImage];
  }

  v3 = _sharedCornerImage___sharedCornerImage;

  return v3;
}

void __59__CAMSemanticStylePickerTileOverlayView__sharedCornerImage__block_invoke()
{
  v4.width = 14.0;
  v4.height = 14.0;
  UIGraphicsBeginImageContextWithOptions(v4, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, 0.0, 0.0);
  CGContextAddArc(CurrentContext, 14.0, 14.0, 14.0, 4.71238898, 3.14159265, 1);
  CGContextClosePath(CurrentContext);
  CGContextSetRGBFillColor(CurrentContext, 0.0, 0.0, 0.0, 1.0);
  CGContextFillPath(CurrentContext);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v2 = _sharedCornerImage___sharedCornerImage;
  _sharedCornerImage___sharedCornerImage = v1;
}

- (void)setCornerTargetAlpha:(double)a3
{
  if (self->_cornerTargetAlpha != a3)
  {
    self->_cornerTargetAlpha = a3;
    [(CAMSemanticStylePickerTileOverlayView *)self _updateAlphas];
  }
}

- (void)setTileAlpha:(double)a3
{
  if (self->_tileAlpha != a3)
  {
    self->_tileAlpha = a3;
    [(CAMSemanticStylePickerTileOverlayView *)self _updateAlphas];
  }
}

- (void)setMaterialColor:(id)a3
{
  if (self->_materialColor != a3)
  {
    self->_materialColor = a3;
    [(CAMSemanticStylePickerTileOverlayView *)self _updateMaterialColor];
  }
}

- (void)_updateMaterialColor
{
  v3 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  v4 = [(CAMSemanticStylePickerTileOverlayView *)self _topLeftCorner];
  [v4 setTintColor:v3];

  v5 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  v6 = [(CAMSemanticStylePickerTileOverlayView *)self _topRightCorner];
  [v6 setTintColor:v5];

  v7 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  v8 = [(CAMSemanticStylePickerTileOverlayView *)self _bottomLeftCorner];
  [v8 setTintColor:v7];

  v9 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  v10 = [(CAMSemanticStylePickerTileOverlayView *)self _bottomRightCorner];
  [v10 setTintColor:v9];

  v12 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  v11 = [(CAMSemanticStylePickerTileOverlayView *)self _tileOverlay];
  [v11 setBackgroundColor:v12];
}

- (void)_updateAlphas
{
  [(CAMSemanticStylePickerTileOverlayView *)self tileAlpha];
  v4 = v3;
  v5 = [(CAMSemanticStylePickerTileOverlayView *)self _tileOverlay];
  [v5 setAlpha:v4];

  [(CAMSemanticStylePickerTileOverlayView *)self cornerTargetAlpha];
  v7 = v6;
  [(CAMSemanticStylePickerTileOverlayView *)self tileAlpha];
  v9 = v7 - v8;
  [(CAMSemanticStylePickerTileOverlayView *)self tileAlpha];
  v11 = v9 / (1.0 - v10);
  v12 = [(CAMSemanticStylePickerTileOverlayView *)self _topLeftCorner];
  [v12 setAlpha:v11];

  v13 = [(CAMSemanticStylePickerTileOverlayView *)self _topRightCorner];
  [v13 setAlpha:v11];

  v14 = [(CAMSemanticStylePickerTileOverlayView *)self _bottomLeftCorner];
  [v14 setAlpha:v11];

  v15 = [(CAMSemanticStylePickerTileOverlayView *)self _bottomRightCorner];
  [v15 setAlpha:v11];
}

- (void)layoutSubviews
{
  [(CAMSemanticStylePickerTileOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMSemanticStylePickerTileOverlayView *)self _tileOverlay];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CAMSemanticStylePickerTileOverlayView *)self _topLeftCorner];
  [v12 setFrame:{0.0, 0.0, 14.0, 14.0}];

  v13 = [(CAMSemanticStylePickerTileOverlayView *)self _topRightCorner];
  [v13 setFrame:{v8 + -14.0, 0.0, 14.0, 14.0}];

  v14 = [(CAMSemanticStylePickerTileOverlayView *)self _bottomLeftCorner];
  [v14 setFrame:{0.0, v10 + -14.0, 14.0, 14.0}];

  v15 = [(CAMSemanticStylePickerTileOverlayView *)self _bottomRightCorner];
  [v15 setFrame:{v8 + -14.0, v10 + -14.0, 14.0, 14.0}];
}

@end