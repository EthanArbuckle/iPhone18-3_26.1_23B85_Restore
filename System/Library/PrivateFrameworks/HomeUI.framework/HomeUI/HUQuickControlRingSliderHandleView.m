@interface HUQuickControlRingSliderHandleView
- (HUQuickControlRingSliderHandleView)initWithFrame:(CGRect)a3 style:(unint64_t)a4;
- (double)outerRadius;
- (void)_setColor:(id)a3;
- (void)_updateCircleLayer;
- (void)layoutSubviews;
@end

@implementation HUQuickControlRingSliderHandleView

- (HUQuickControlRingSliderHandleView)initWithFrame:(CGRect)a3 style:(unint64_t)a4
{
  v19.receiver = self;
  v19.super_class = HUQuickControlRingSliderHandleView;
  v5 = [(HUQuickControlRingSliderHandleView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(HUQuickControlRingSliderHandleView *)v5 setClipsToBounds:0];
    v7 = [(HUQuickControlRingSliderHandleView *)v6 layer];
    [v7 setMasksToBounds:0];

    v6->_handleViewStyle = a4;
    v8 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 4.0, 19.0}];
    lineView = v6->_lineView;
    v6->_lineView = v8;

    v10 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v6->_lineView setBackgroundColor:v10];

    v11 = [(UIView *)v6->_lineView layer];
    [v11 setCornerRadius:2.0];

    v12 = [(UIView *)v6->_lineView layer];
    [v12 setMasksToBounds:1];

    [(HUQuickControlRingSliderHandleView *)v6 addSubview:v6->_lineView];
    v13 = objc_alloc_init(MEMORY[0x277CD9F90]);
    circleLayer = v6->_circleLayer;
    v6->_circleLayer = v13;

    v15 = [MEMORY[0x277D75348] systemWhiteColor];
    -[CAShapeLayer setStrokeColor:](v6->_circleLayer, "setStrokeColor:", [v15 CGColor]);

    v16 = [MEMORY[0x277D75348] systemGrayTintColor];
    -[CAShapeLayer setFillColor:](v6->_circleLayer, "setFillColor:", [v16 CGColor]);

    v17 = [(HUQuickControlRingSliderHandleView *)v6 layer];
    [v17 addSublayer:v6->_circleLayer];

    [(HUQuickControlRingSliderHandleView *)v6 _updateCircleLayer];
  }

  return v6;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUQuickControlRingSliderHandleView;
  [(HUQuickControlRingSliderHandleView *)&v10 layoutSubviews];
  v3 = [(HUQuickControlRingSliderHandleView *)self lineView];
  [v3 setHidden:{-[HUQuickControlRingSliderHandleView handleViewStyle](self, "handleViewStyle") != 2}];

  v4 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [v4 setHidden:{-[HUQuickControlRingSliderHandleView handleViewStyle](self, "handleViewStyle") != 1}];

  [(HUQuickControlRingSliderHandleView *)self _updateCircleLayer];
  [(HUQuickControlRingSliderHandleView *)self bounds];
  v6 = v5 * 0.5;
  [(HUQuickControlRingSliderHandleView *)self bounds];
  v8 = v7 * 0.5;
  v9 = [(HUQuickControlRingSliderHandleView *)self lineView];
  [v9 setCenter:{v6, v8}];
}

- (void)_setColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [v7 setFillColor:v6];
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

  v6 = [(HUQuickControlRingSliderHandleView *)self handleViewStyle];
  if (!v6)
  {
    return 0.0;
  }

  result = v4 * 0.5;
  if (v6 == 1)
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
  v12 = [v24 CGPath];
  v13 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [v13 setPath:v12];

  v14 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [v14 setLineWidth:v7 / 5.0];

  v15 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  v16 = [v15 fillColor];
  v17 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [v17 setStrokeColor:v16];

  v18 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [v18 setShadowRadius:v7 * 0.5];

  v19 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  LODWORD(v20) = 1053609165;
  [v19 setShadowOpacity:v20];

  v21 = [MEMORY[0x277D75348] systemMidGrayColor];
  v22 = [v21 CGColor];
  v23 = [(HUQuickControlRingSliderHandleView *)self circleLayer];
  [v23 setShadowColor:v22];
}

@end