@interface CAMSemanticStylePickerTileOverlayView
+ (id)_sharedCornerImage;
- (CAMSemanticStylePickerTileOverlayView)initWithFrame:(CGRect)frame;
- (void)_updateAlphas;
- (void)_updateMaterialColor;
- (void)layoutSubviews;
- (void)setCornerTargetAlpha:(double)alpha;
- (void)setMaterialColor:(id)color;
- (void)setTileAlpha:(double)alpha;
@end

@implementation CAMSemanticStylePickerTileOverlayView

- (CAMSemanticStylePickerTileOverlayView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = CAMSemanticStylePickerTileOverlayView;
  v3 = [(CAMSemanticStylePickerTileOverlayView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_materialColor = [MEMORY[0x1E69DC888] blackColor];
    _sharedCornerImage = [objc_opt_class() _sharedCornerImage];
    v5 = [_sharedCornerImage imageWithRenderingMode:2];

    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    topLeftCorner = v3->__topLeftCorner;
    v3->__topLeftCorner = v6;

    [(UIImageView *)v3->__topLeftCorner setImage:v5];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    topRightCorner = v3->__topRightCorner;
    v3->__topRightCorner = v8;

    imageWithHorizontallyFlippedOrientation = [v5 imageWithHorizontallyFlippedOrientation];
    [(UIImageView *)v3->__topRightCorner setImage:imageWithHorizontallyFlippedOrientation];

    v11 = objc_alloc(MEMORY[0x1E69DCAB8]);
    cGImage = [v5 CGImage];
    [v5 scale];
    v13 = [v11 initWithCGImage:cGImage scale:5 orientation:?];
    v14 = [v13 imageWithRenderingMode:2];

    v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    bottomLeftCorner = v3->__bottomLeftCorner;
    v3->__bottomLeftCorner = v15;

    [(UIImageView *)v3->__bottomLeftCorner setImage:v14];
    v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    bottomRightCorner = v3->__bottomRightCorner;
    v3->__bottomRightCorner = v17;

    imageWithHorizontallyFlippedOrientation2 = [v14 imageWithHorizontallyFlippedOrientation];
    [(UIImageView *)v3->__bottomRightCorner setImage:imageWithHorizontallyFlippedOrientation2];

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

- (void)setCornerTargetAlpha:(double)alpha
{
  if (self->_cornerTargetAlpha != alpha)
  {
    self->_cornerTargetAlpha = alpha;
    [(CAMSemanticStylePickerTileOverlayView *)self _updateAlphas];
  }
}

- (void)setTileAlpha:(double)alpha
{
  if (self->_tileAlpha != alpha)
  {
    self->_tileAlpha = alpha;
    [(CAMSemanticStylePickerTileOverlayView *)self _updateAlphas];
  }
}

- (void)setMaterialColor:(id)color
{
  if (self->_materialColor != color)
  {
    self->_materialColor = color;
    [(CAMSemanticStylePickerTileOverlayView *)self _updateMaterialColor];
  }
}

- (void)_updateMaterialColor
{
  materialColor = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  _topLeftCorner = [(CAMSemanticStylePickerTileOverlayView *)self _topLeftCorner];
  [_topLeftCorner setTintColor:materialColor];

  materialColor2 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  _topRightCorner = [(CAMSemanticStylePickerTileOverlayView *)self _topRightCorner];
  [_topRightCorner setTintColor:materialColor2];

  materialColor3 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  _bottomLeftCorner = [(CAMSemanticStylePickerTileOverlayView *)self _bottomLeftCorner];
  [_bottomLeftCorner setTintColor:materialColor3];

  materialColor4 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  _bottomRightCorner = [(CAMSemanticStylePickerTileOverlayView *)self _bottomRightCorner];
  [_bottomRightCorner setTintColor:materialColor4];

  materialColor5 = [(CAMSemanticStylePickerTileOverlayView *)self materialColor];
  _tileOverlay = [(CAMSemanticStylePickerTileOverlayView *)self _tileOverlay];
  [_tileOverlay setBackgroundColor:materialColor5];
}

- (void)_updateAlphas
{
  [(CAMSemanticStylePickerTileOverlayView *)self tileAlpha];
  v4 = v3;
  _tileOverlay = [(CAMSemanticStylePickerTileOverlayView *)self _tileOverlay];
  [_tileOverlay setAlpha:v4];

  [(CAMSemanticStylePickerTileOverlayView *)self cornerTargetAlpha];
  v7 = v6;
  [(CAMSemanticStylePickerTileOverlayView *)self tileAlpha];
  v9 = v7 - v8;
  [(CAMSemanticStylePickerTileOverlayView *)self tileAlpha];
  v11 = v9 / (1.0 - v10);
  _topLeftCorner = [(CAMSemanticStylePickerTileOverlayView *)self _topLeftCorner];
  [_topLeftCorner setAlpha:v11];

  _topRightCorner = [(CAMSemanticStylePickerTileOverlayView *)self _topRightCorner];
  [_topRightCorner setAlpha:v11];

  _bottomLeftCorner = [(CAMSemanticStylePickerTileOverlayView *)self _bottomLeftCorner];
  [_bottomLeftCorner setAlpha:v11];

  _bottomRightCorner = [(CAMSemanticStylePickerTileOverlayView *)self _bottomRightCorner];
  [_bottomRightCorner setAlpha:v11];
}

- (void)layoutSubviews
{
  [(CAMSemanticStylePickerTileOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _tileOverlay = [(CAMSemanticStylePickerTileOverlayView *)self _tileOverlay];
  [_tileOverlay setFrame:{v4, v6, v8, v10}];

  _topLeftCorner = [(CAMSemanticStylePickerTileOverlayView *)self _topLeftCorner];
  [_topLeftCorner setFrame:{0.0, 0.0, 14.0, 14.0}];

  _topRightCorner = [(CAMSemanticStylePickerTileOverlayView *)self _topRightCorner];
  [_topRightCorner setFrame:{v8 + -14.0, 0.0, 14.0, 14.0}];

  _bottomLeftCorner = [(CAMSemanticStylePickerTileOverlayView *)self _bottomLeftCorner];
  [_bottomLeftCorner setFrame:{0.0, v10 + -14.0, 14.0, 14.0}];

  _bottomRightCorner = [(CAMSemanticStylePickerTileOverlayView *)self _bottomRightCorner];
  [_bottomRightCorner setFrame:{v8 + -14.0, v10 + -14.0, 14.0, 14.0}];
}

@end