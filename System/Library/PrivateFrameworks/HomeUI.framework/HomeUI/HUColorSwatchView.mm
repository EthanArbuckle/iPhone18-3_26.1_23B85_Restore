@interface HUColorSwatchView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (HUColorSwatchView)initWithFrame:(CGRect)frame text:(id)text;
- (UIColor)color;
- (void)_updateLayout;
- (void)_updateTextColor;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setLabelHidden:(BOOL)hidden;
- (void)setSelectionState:(unint64_t)state;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUColorSwatchView

- (HUColorSwatchView)initWithFrame:(CGRect)frame text:(id)text
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  textCopy = text;
  v37.receiver = self;
  v37.super_class = HUColorSwatchView;
  height = [(HUColorSwatchView *)&v37 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = objc_alloc_init(MEMORY[0x277CD9F90]);
    circleLayer = height->_circleLayer;
    height->_circleLayer = v12;

    [(CAShapeLayer *)height->_circleLayer setFillRule:*MEMORY[0x277CDA248]];
    [(CAShapeLayer *)height->_circleLayer setLineWidth:0.5];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    v15 = [systemBlackColor colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](height->_circleLayer, "setStrokeColor:", [v15 CGColor]);

    layer = [(HUColorSwatchView *)height layer];
    [layer addSublayer:height->_circleLayer];

    v17 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleLayer = height->_selectedCircleLayer;
    height->_selectedCircleLayer = v17;

    layer2 = [(HUColorSwatchView *)height layer];
    [layer2 addSublayer:height->_selectedCircleLayer];

    v20 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleInnerLayer = height->_selectedCircleInnerLayer;
    height->_selectedCircleInnerLayer = v20;

    [(CAShapeLayer *)height->_selectedCircleInnerLayer setLineWidth:0.3];
    systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
    v23 = [systemBlackColor2 colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](height->_selectedCircleInnerLayer, "setStrokeColor:", [v23 CGColor]);

    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](height->_selectedCircleInnerLayer, "setFillColor:", [clearColor CGColor]);

    layer3 = [(HUColorSwatchView *)height layer];
    [layer3 addSublayer:height->_selectedCircleInnerLayer];

    v26 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleOuterLayer = height->_selectedCircleOuterLayer;
    height->_selectedCircleOuterLayer = v26;

    [(CAShapeLayer *)height->_selectedCircleOuterLayer setLineWidth:0.3];
    systemBlackColor3 = [MEMORY[0x277D75348] systemBlackColor];
    v29 = [systemBlackColor3 colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](height->_selectedCircleOuterLayer, "setStrokeColor:", [v29 CGColor]);

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](height->_selectedCircleOuterLayer, "setFillColor:", [clearColor2 CGColor]);

    layer4 = [(HUColorSwatchView *)height layer];
    [layer4 addSublayer:height->_selectedCircleOuterLayer];

    objc_storeStrong(&height->_text, text);
    v32 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = height->_label;
    height->_label = v32;

    [(UILabel *)height->_label setText:textCopy];
    [(UILabel *)height->_label setTextAlignment:1];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)height->_label setTextColor:systemWhiteColor];

    v35 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74420]];
    [(UILabel *)height->_label setFont:v35];

    [(UILabel *)height->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)height->_label setMinimumScaleFactor:0.1];
    [(HUColorSwatchView *)height addSubview:height->_label];
    [(HUColorSwatchView *)height setClipsToBounds:0];
  }

  return height;
}

- (void)setText:(id)text
{
  objc_storeStrong(&self->_text, text);
  textCopy = text;
  label = [(HUColorSwatchView *)self label];
  [label setText:textCopy];
}

- (UIColor)color
{
  v2 = MEMORY[0x277D75348];
  circleLayer = [(HUColorSwatchView *)self circleLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(circleLayer, "fillColor")}];

  return v4;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  colorCopy2 = color;
  cGColor = [colorCopy2 CGColor];
  circleLayer = [(HUColorSwatchView *)self circleLayer];
  [circleLayer setFillColor:cGColor];

  cGColor2 = [colorCopy2 CGColor];
  selectedCircleLayer = [(HUColorSwatchView *)self selectedCircleLayer];
  [selectedCircleLayer setStrokeColor:cGColor2];

  [(HUColorSwatchView *)self _updateTextColor];
}

- (void)setSelectionState:(unint64_t)state
{
  if (self->_selectionState != state)
  {
    self->_selectionState = state;
    [(HUColorSwatchView *)self _updateLayout];

    [(HUColorSwatchView *)self _updateTextColor];
  }
}

- (void)_updateLayout
{
  [(HUColorSwatchView *)self bounds];
  v4 = v3;
  [(HUColorSwatchView *)self bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  [(HUColorSwatchView *)self bounds];
  v8 = v7;
  [(HUColorSwatchView *)self bounds];
  v10 = v9;
  if (([(HUColorSwatchView *)self selectionState]& 2) != 0 || ([(HUColorSwatchView *)self selectionState]& 1) != 0)
  {
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    v22 = [systemBlackColor colorWithAlphaComponent:0.05];
    cGColor = [v22 CGColor];
    circleLayer = [(HUColorSwatchView *)self circleLayer];
    [circleLayer setStrokeColor:cGColor];

    selectedCircleLayer = [(HUColorSwatchView *)self selectedCircleLayer];
    [selectedCircleLayer setHidden:0];

    selectedCircleInnerLayer = [(HUColorSwatchView *)self selectedCircleInnerLayer];
    [selectedCircleInnerLayer setHidden:0];

    selectedCircleOuterLayer = [(HUColorSwatchView *)self selectedCircleOuterLayer];
    [selectedCircleOuterLayer setHidden:0];

    v18 = v6 * 0.5;
    v19 = v18 + -3.0;
    v20 = v18 + -3.0 + -3.0;
  }

  else
  {
    systemBlackColor2 = [MEMORY[0x277D75348] systemBlackColor];
    v12 = [systemBlackColor2 colorWithAlphaComponent:0.1];
    cGColor2 = [v12 CGColor];
    circleLayer2 = [(HUColorSwatchView *)self circleLayer];
    [circleLayer2 setStrokeColor:cGColor2];

    selectedCircleLayer2 = [(HUColorSwatchView *)self selectedCircleLayer];
    [selectedCircleLayer2 setHidden:1];

    selectedCircleInnerLayer2 = [(HUColorSwatchView *)self selectedCircleInnerLayer];
    [selectedCircleInnerLayer2 setHidden:1];

    selectedCircleOuterLayer2 = [(HUColorSwatchView *)self selectedCircleOuterLayer];
    [selectedCircleOuterLayer2 setHidden:1];

    v18 = v6 * 0.5;
    v19 = v18 + -3.0;
    v20 = v18;
  }

  v28 = v10 * 0.5;
  v29 = v8 * 0.5;
  v51 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v20 clockwise:{0.0, 6.28318531}];
  v30 = v51;
  cGPath = [v51 CGPath];
  circleLayer3 = [(HUColorSwatchView *)self circleLayer];
  [circleLayer3 setPath:cGPath];

  v33 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v18 + -1.5 clockwise:{0.0, 6.28318531}];
  cGPath2 = [v33 CGPath];
  selectedCircleLayer3 = [(HUColorSwatchView *)self selectedCircleLayer];
  [selectedCircleLayer3 setPath:cGPath2];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor3 = [clearColor CGColor];
  selectedCircleLayer4 = [(HUColorSwatchView *)self selectedCircleLayer];
  [selectedCircleLayer4 setFillColor:cGColor3];

  selectedCircleLayer5 = [(HUColorSwatchView *)self selectedCircleLayer];
  [selectedCircleLayer5 setLineWidth:3.0];

  v40 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v19 clockwise:{0.0, 6.28318531}];
  cGPath3 = [v40 CGPath];
  selectedCircleInnerLayer3 = [(HUColorSwatchView *)self selectedCircleInnerLayer];
  [selectedCircleInnerLayer3 setPath:cGPath3];

  v43 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v18 clockwise:{0.0, 6.28318531}];
  cGPath4 = [v43 CGPath];
  selectedCircleOuterLayer3 = [(HUColorSwatchView *)self selectedCircleOuterLayer];
  [selectedCircleOuterLayer3 setPath:cGPath4];

  [(HUColorSwatchView *)self frame];
  v47 = v46 + -18.0;
  [(HUColorSwatchView *)self frame];
  v49 = v48 + -18.0;
  label = [(HUColorSwatchView *)self label];
  [label setFrame:{9.0, 9.0, v47, v49}];
}

- (void)_updateTextColor
{
  color = [(HUColorSwatchView *)self color];
  if (HUIsLightColor(color))
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    traitCollection = [(HUColorSwatchView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlackColor];
    }
    systemGrayColor = ;
  }

  v6 = systemGrayColor;
  label = [(HUColorSwatchView *)self label];
  [label setTextColor:v6];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUColorSwatchView;
  [(HUColorSwatchView *)&v4 traitCollectionDidChange:change];
  [(HUColorSwatchView *)self _updateTextColor];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUColorSwatchView;
  [(HUColorSwatchView *)&v3 layoutSubviews];
  [(HUColorSwatchView *)self _updateLayout];
  [(HUColorSwatchView *)self _updateTextColor];
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
    v7.super_class = HUColorSwatchView;
    v5 = [(HUColorSwatchView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)setLabelHidden:(BOOL)hidden
{
  self->_labelHidden = hidden;
  label = [(HUColorSwatchView *)self label];
  [label setHidden:self->_labelHidden];

  if (!hidden)
  {

    [(HUColorSwatchView *)self _updateTextColor];
  }
}

@end