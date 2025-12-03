@interface HUQuickControlRingSliderHandleView
- (HUQuickControlRingSliderHandleView)initWithFrame:(CGRect)frame style:(unint64_t)style;
- (double)outerRadius;
- (void)_setColor:(id)color;
- (void)_updateCircleLayer;
- (void)layoutSubviews;
@end

@implementation HUQuickControlRingSliderHandleView

- (HUQuickControlRingSliderHandleView)initWithFrame:(CGRect)frame style:(unint64_t)style
{
  v19.receiver = self;
  v19.super_class = HUQuickControlRingSliderHandleView;
  v5 = [(HUQuickControlRingSliderHandleView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(HUQuickControlRingSliderHandleView *)v5 setClipsToBounds:0];
    layer = [(HUQuickControlRingSliderHandleView *)v6 layer];
    [layer setMasksToBounds:0];

    v6->_handleViewStyle = style;
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 4.0, 19.0}];
    lineView = v6->_lineView;
    v6->_lineView = v8;

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v6->_lineView setBackgroundColor:systemWhiteColor];

    layer2 = [(UIView *)v6->_lineView layer];
    [layer2 setCornerRadius:2.0];

    layer3 = [(UIView *)v6->_lineView layer];
    [layer3 setMasksToBounds:1];

    [(HUQuickControlRingSliderHandleView *)v6 addSubview:v6->_lineView];
    v13 = objc_alloc_init(MEMORY[0x277CD9F90]);
    circleLayer = v6->_circleLayer;
    v6->_circleLayer = v13;

    systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
    -[CAShapeLayer setStrokeColor:](v6->_circleLayer, "setStrokeColor:", [systemWhiteColor2 CGColor]);

    systemGrayTintColor = [MEMORY[0x277D75348] systemGrayTintColor];
    -[CAShapeLayer setFillColor:](v6->_circleLayer, "setFillColor:", [systemGrayTintColor CGColor]);

    layer4 = [(HUQuickControlRingSliderHandleView *)v6 layer];
    [layer4 addSublayer:v6->_circleLayer];

    [(HUQuickControlRingSliderHandleView *)v6 _updateCircleLayer];
  }

  return v6;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUQuickControlRingSliderHandleView;
  [(HUQuickControlRingSliderHandleView *)&v10 layoutSubviews];
  lineView = [(HUQuickControlRingSliderHandleView *)self lineView];
  [lineView setHidden:{-[HUQuickControlRingSliderHandleView handleViewStyle](self, "handleViewStyle") != 2}];

  circleLayer = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [circleLayer setHidden:{-[HUQuickControlRingSliderHandleView handleViewStyle](self, "handleViewStyle") != 1}];

  [(HUQuickControlRingSliderHandleView *)self _updateCircleLayer];
  [(HUQuickControlRingSliderHandleView *)self bounds];
  v6 = v5 * 0.5;
  [(HUQuickControlRingSliderHandleView *)self bounds];
  v8 = v7 * 0.5;
  lineView2 = [(HUQuickControlRingSliderHandleView *)self lineView];
  [lineView2 setCenter:{v6, v8}];
}

- (void)_setColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  circleLayer = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [circleLayer setFillColor:cGColor];
}

- (double)outerRadius
{
  [(HUQuickControlRingSliderHandleView *)self frame];
  v4 = v3;
  [(HUQuickControlRingSliderHandleView *)self frame];
  if (v4 >= v5)
  {
    v4 = v5;
  }

  handleViewStyle = [(HUQuickControlRingSliderHandleView *)self handleViewStyle];
  if (!handleViewStyle)
  {
    return 0.0;
  }

  result = v4 * 0.5;
  if (handleViewStyle == 1)
  {
    return result + result / 3.0 * 0.5;
  }

  return result;
}

- (void)_updateCircleLayer
{
  [(HUQuickControlRingSliderHandleView *)self frame];
  v4 = v3;
  [(HUQuickControlRingSliderHandleView *)self frame];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.5;
  [(HUQuickControlRingSliderHandleView *)self frame];
  v9 = v8 * 0.5;
  [(HUQuickControlRingSliderHandleView *)self frame];
  v24 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v9 startAngle:v10 * 0.5 endAngle:v7 clockwise:{0.0, 6.28318531}];
  v11 = v24;
  cGPath = [v24 CGPath];
  circleLayer = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [circleLayer setPath:cGPath];

  circleLayer2 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [circleLayer2 setLineWidth:v7 / 5.0];

  circleLayer3 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  fillColor = [circleLayer3 fillColor];
  circleLayer4 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [circleLayer4 setStrokeColor:fillColor];

  circleLayer5 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [circleLayer5 setShadowRadius:v7 * 0.5];

  circleLayer6 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  LODWORD(v20) = 1053609165;
  [circleLayer6 setShadowOpacity:v20];

  systemMidGrayColor = [MEMORY[0x277D75348] systemMidGrayColor];
  cGColor = [systemMidGrayColor CGColor];
  circleLayer7 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [circleLayer7 setShadowColor:cGColor];
}

@end