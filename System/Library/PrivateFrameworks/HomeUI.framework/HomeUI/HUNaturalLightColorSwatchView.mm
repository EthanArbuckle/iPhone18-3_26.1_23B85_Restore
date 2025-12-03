@interface HUNaturalLightColorSwatchView
+ (id)_createGradientLayer;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (HUNaturalLightColorSwatchView)initWithFrame:(CGRect)frame;
- (id)_buildMaskFromImage:(id)image;
- (void)_updateLayout;
- (void)layoutSubviews;
- (void)setSelectionState:(unint64_t)state;
@end

@implementation HUNaturalLightColorSwatchView

- (HUNaturalLightColorSwatchView)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = HUNaturalLightColorSwatchView;
  v3 = [(HUNaturalLightColorSwatchView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    circleMaskLayer = v3->_circleMaskLayer;
    v3->_circleMaskLayer = v4;

    [(CAShapeLayer *)v3->_circleMaskLayer setFillRule:*MEMORY[0x277CDA248]];
    [(CAShapeLayer *)v3->_circleMaskLayer setLineWidth:0.5];
    layer = [(HUNaturalLightColorSwatchView *)v3 layer];
    [layer addSublayer:v3->_circleMaskLayer];

    _createGradientLayer = [objc_opt_class() _createGradientLayer];
    circleGradientLayer = v3->_circleGradientLayer;
    v3->_circleGradientLayer = _createGradientLayer;

    [(CAGradientLayer *)v3->_circleGradientLayer setMask:v3->_circleMaskLayer];
    layer2 = [(HUNaturalLightColorSwatchView *)v3 layer];
    [layer2 addSublayer:v3->_circleGradientLayer];

    v10 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleMaskLayer = v3->_selectedCircleMaskLayer;
    v3->_selectedCircleMaskLayer = v10;

    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v3->_selectedCircleMaskLayer, "setFillColor:", [clearColor CGColor]);

    blackColor = [MEMORY[0x277D75348] blackColor];
    -[CAShapeLayer setStrokeColor:](v3->_selectedCircleMaskLayer, "setStrokeColor:", [blackColor CGColor]);

    [(CAShapeLayer *)v3->_selectedCircleMaskLayer setLineWidth:3.0];
    _createGradientLayer2 = [objc_opt_class() _createGradientLayer];
    selectedCircleGradientLayer = v3->_selectedCircleGradientLayer;
    v3->_selectedCircleGradientLayer = _createGradientLayer2;

    [(CAGradientLayer *)v3->_selectedCircleGradientLayer setMask:v3->_selectedCircleMaskLayer];
    layer3 = [(HUNaturalLightColorSwatchView *)v3 layer];
    [layer3 addSublayer:v3->_selectedCircleGradientLayer];

    v17 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleInnerLayer = v3->_selectedCircleInnerLayer;
    v3->_selectedCircleInnerLayer = v17;

    [(CAShapeLayer *)v3->_selectedCircleInnerLayer setLineWidth:0.3];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    v20 = [systemBlackColor colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](v3->_selectedCircleInnerLayer, "setStrokeColor:", [v20 CGColor]);

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v3->_selectedCircleInnerLayer, "setFillColor:", [clearColor2 CGColor]);

    layer4 = [(HUNaturalLightColorSwatchView *)v3 layer];
    [layer4 addSublayer:v3->_selectedCircleInnerLayer];

    v23 = objc_alloc_init(MEMORY[0x277CD9F90]);
    circleOuterLayer = v3->_circleOuterLayer;
    v3->_circleOuterLayer = v23;

    [(CAShapeLayer *)v3->_circleOuterLayer setLineWidth:0.300000012];
    systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
    v26 = [systemBlackColor2 colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](v3->_circleOuterLayer, "setStrokeColor:", [v26 CGColor]);

    clearColor3 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v3->_circleOuterLayer, "setFillColor:", [clearColor3 CGColor]);

    layer5 = [(HUNaturalLightColorSwatchView *)v3 layer];
    [layer5 addSublayer:v3->_circleOuterLayer];

    v29 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:21.0];
    v30 = [MEMORY[0x277D755B8] _systemImageNamed:@"truetone" withConfiguration:v29];
    truetoneIcon = v3->_truetoneIcon;
    v3->_truetoneIcon = v30;

    [(HUNaturalLightColorSwatchView *)v3 setClipsToBounds:0];
  }

  return v3;
}

- (void)setSelectionState:(unint64_t)state
{
  if (self->_selectionState != state)
  {
    self->_selectionState = state;
    [(HUNaturalLightColorSwatchView *)self _updateLayout];
  }
}

- (void)_updateLayout
{
  truetoneIcon = [(HUNaturalLightColorSwatchView *)self truetoneIcon];
  v53 = [(HUNaturalLightColorSwatchView *)self _buildMaskFromImage:truetoneIcon];

  if (v53)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v53];
    [(HUNaturalLightColorSwatchView *)self setMaskView:v4];
  }

  [(HUNaturalLightColorSwatchView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  circleGradientLayer = [(HUNaturalLightColorSwatchView *)self circleGradientLayer];
  [circleGradientLayer setFrame:{v6, v8, v10, v12}];

  [(HUNaturalLightColorSwatchView *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  selectedCircleGradientLayer = [(HUNaturalLightColorSwatchView *)self selectedCircleGradientLayer];
  [selectedCircleGradientLayer setFrame:{v15, v17, v19, v21}];

  [(HUNaturalLightColorSwatchView *)self bounds];
  v24 = v23;
  [(HUNaturalLightColorSwatchView *)self bounds];
  if (v24 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 + -0.600000024;
  [(HUNaturalLightColorSwatchView *)self bounds];
  v29 = v28;
  [(HUNaturalLightColorSwatchView *)self bounds];
  v31 = v30;
  if (([(HUNaturalLightColorSwatchView *)self selectionState]& 2) != 0 || ([(HUNaturalLightColorSwatchView *)self selectionState]& 1) != 0)
  {
    selectedCircleGradientLayer2 = [(HUNaturalLightColorSwatchView *)self selectedCircleGradientLayer];
    [selectedCircleGradientLayer2 setHidden:0];

    selectedCircleInnerLayer = [(HUNaturalLightColorSwatchView *)self selectedCircleInnerLayer];
    [selectedCircleInnerLayer setHidden:0];

    v34 = v27 * 0.5;
    v35 = v34 + -3.0;
    v36 = v34 + -3.0 + -3.0;
  }

  else
  {
    selectedCircleGradientLayer3 = [(HUNaturalLightColorSwatchView *)self selectedCircleGradientLayer];
    [selectedCircleGradientLayer3 setHidden:1];

    selectedCircleInnerLayer2 = [(HUNaturalLightColorSwatchView *)self selectedCircleInnerLayer];
    [selectedCircleInnerLayer2 setHidden:1];

    v34 = v27 * 0.5;
    v35 = v34 + -3.0;
    v36 = v34;
  }

  v39 = v31 * 0.5;
  v40 = v29 * 0.5;
  v41 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v40 startAngle:v39 endAngle:v36 clockwise:{0.0, 6.28318531}];
  cGPath = [v41 CGPath];
  circleMaskLayer = [(HUNaturalLightColorSwatchView *)self circleMaskLayer];
  [circleMaskLayer setPath:cGPath];

  v44 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v40 startAngle:v39 endAngle:v34 + -1.5 clockwise:{0.0, 6.28318531}];
  cGPath2 = [v44 CGPath];
  selectedCircleMaskLayer = [(HUNaturalLightColorSwatchView *)self selectedCircleMaskLayer];
  [selectedCircleMaskLayer setPath:cGPath2];

  v47 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v40 startAngle:v39 endAngle:v35 clockwise:{0.0, 6.28318531}];
  cGPath3 = [v47 CGPath];
  selectedCircleInnerLayer3 = [(HUNaturalLightColorSwatchView *)self selectedCircleInnerLayer];
  [selectedCircleInnerLayer3 setPath:cGPath3];

  v50 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v40 startAngle:v39 endAngle:v34 clockwise:{0.0, 6.28318531}];
  cGPath4 = [v50 CGPath];
  circleOuterLayer = [(HUNaturalLightColorSwatchView *)self circleOuterLayer];
  [circleOuterLayer setPath:cGPath4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUNaturalLightColorSwatchView;
  [(HUNaturalLightColorSwatchView *)&v3 layoutSubviews];
  [(HUNaturalLightColorSwatchView *)self _updateLayout];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"path"] & 1) != 0 || (objc_msgSend(keyCopy, "hasPrefix:", @"fillColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUNaturalLightColorSwatchView;
    v5 = [(HUNaturalLightColorSwatchView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

+ (id)_createGradientLayer
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75348] colorWithRed:0.859 green:0.824 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x277D75348] colorWithRed:0.918 green:0.918 blue:0.918 alpha:1.0];
  v4 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.878 blue:0.663 alpha:1.0];
  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.651 blue:0.651 alpha:1.0];
  v9[0] = [v2 CGColor];
  v9[1] = [v3 CGColor];
  v9[2] = [v4 CGColor];
  v9[3] = [v5 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v7 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  [v7 setColors:v6];
  [v7 setLocations:&unk_2824928D0];
  [v7 setStartPoint:{0.0, 0.0}];
  [v7 setEndPoint:{1.0, 1.0}];

  return v7;
}

- (id)_buildMaskFromImage:(id)image
{
  imageCopy = image;
  [(HUNaturalLightColorSwatchView *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (CGRectIsEmpty(v14))
  {
    v9 = 0;
  }

  else
  {
    v13.width = width;
    v13.height = height;
    UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
    [imageCopy drawInRect:{14.0, 14.0, width + -28.0, height + -28.0}];
    v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    [v10 setFill];

    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    UIRectFillUsingBlendMode(v15, kCGBlendModeSourceOut);
    v9 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v9;
}

@end