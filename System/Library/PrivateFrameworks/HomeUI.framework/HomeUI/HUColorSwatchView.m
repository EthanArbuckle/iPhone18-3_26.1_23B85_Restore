@interface HUColorSwatchView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (HUColorSwatchView)initWithFrame:(CGRect)a3 text:(id)a4;
- (UIColor)color;
- (void)_updateLayout;
- (void)_updateTextColor;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setLabelHidden:(BOOL)a3;
- (void)setSelectionState:(unint64_t)a3;
- (void)setText:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HUColorSwatchView

- (HUColorSwatchView)initWithFrame:(CGRect)a3 text:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v37.receiver = self;
  v37.super_class = HUColorSwatchView;
  v11 = [(HUColorSwatchView *)&v37 initWithFrame:x, y, width, height];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CD9F90]);
    circleLayer = v11->_circleLayer;
    v11->_circleLayer = v12;

    [(CAShapeLayer *)v11->_circleLayer setFillRule:*MEMORY[0x277CDA248]];
    [(CAShapeLayer *)v11->_circleLayer setLineWidth:0.5];
    v14 = [MEMORY[0x277D75348] systemBlackColor];
    v15 = [v14 colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](v11->_circleLayer, "setStrokeColor:", [v15 CGColor]);

    v16 = [(HUColorSwatchView *)v11 layer];
    [v16 addSublayer:v11->_circleLayer];

    v17 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleLayer = v11->_selectedCircleLayer;
    v11->_selectedCircleLayer = v17;

    v19 = [(HUColorSwatchView *)v11 layer];
    [v19 addSublayer:v11->_selectedCircleLayer];

    v20 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleInnerLayer = v11->_selectedCircleInnerLayer;
    v11->_selectedCircleInnerLayer = v20;

    [(CAShapeLayer *)v11->_selectedCircleInnerLayer setLineWidth:0.3];
    v22 = [MEMORY[0x277D75348] systemBlackColor];
    v23 = [v22 colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](v11->_selectedCircleInnerLayer, "setStrokeColor:", [v23 CGColor]);

    v24 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v11->_selectedCircleInnerLayer, "setFillColor:", [v24 CGColor]);

    v25 = [(HUColorSwatchView *)v11 layer];
    [v25 addSublayer:v11->_selectedCircleInnerLayer];

    v26 = objc_alloc_init(MEMORY[0x277CD9F90]);
    selectedCircleOuterLayer = v11->_selectedCircleOuterLayer;
    v11->_selectedCircleOuterLayer = v26;

    [(CAShapeLayer *)v11->_selectedCircleOuterLayer setLineWidth:0.3];
    v28 = [MEMORY[0x277D75348] systemBlackColor];
    v29 = [v28 colorWithAlphaComponent:0.1];
    -[CAShapeLayer setStrokeColor:](v11->_selectedCircleOuterLayer, "setStrokeColor:", [v29 CGColor]);

    v30 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v11->_selectedCircleOuterLayer, "setFillColor:", [v30 CGColor]);

    v31 = [(HUColorSwatchView *)v11 layer];
    [v31 addSublayer:v11->_selectedCircleOuterLayer];

    objc_storeStrong(&v11->_text, a4);
    v32 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v11->_label;
    v11->_label = v32;

    [(UILabel *)v11->_label setText:v10];
    [(UILabel *)v11->_label setTextAlignment:1];
    v34 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v11->_label setTextColor:v34];

    v35 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74420]];
    [(UILabel *)v11->_label setFont:v35];

    [(UILabel *)v11->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v11->_label setMinimumScaleFactor:0.1];
    [(HUColorSwatchView *)v11 addSubview:v11->_label];
    [(HUColorSwatchView *)v11 setClipsToBounds:0];
  }

  return v11;
}

- (void)setText:(id)a3
{
  objc_storeStrong(&self->_text, a3);
  v5 = a3;
  v6 = [(HUColorSwatchView *)self label];
  [v6 setText:v5];
}

- (UIColor)color
{
  v2 = MEMORY[0x277D75348];
  v3 = [(HUColorSwatchView *)self circleLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "fillColor")}];

  return v4;
}

- (void)setColor:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 CGColor];
  v8 = [(HUColorSwatchView *)self circleLayer];
  [v8 setFillColor:v7];

  v9 = [v6 CGColor];
  v10 = [(HUColorSwatchView *)self selectedCircleLayer];
  [v10 setStrokeColor:v9];

  [(HUColorSwatchView *)self _updateTextColor];
}

- (void)setSelectionState:(unint64_t)a3
{
  if (self->_selectionState != a3)
  {
    self->_selectionState = a3;
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
    v21 = [MEMORY[0x277D75348] systemBlackColor];
    v22 = [v21 colorWithAlphaComponent:0.05];
    v23 = [v22 CGColor];
    v24 = [(HUColorSwatchView *)self circleLayer];
    [v24 setStrokeColor:v23];

    v25 = [(HUColorSwatchView *)self selectedCircleLayer];
    [v25 setHidden:0];

    v26 = [(HUColorSwatchView *)self selectedCircleInnerLayer];
    [v26 setHidden:0];

    v27 = [(HUColorSwatchView *)self selectedCircleOuterLayer];
    [v27 setHidden:0];

    v18 = v6 * 0.5;
    v19 = v18 + -3.0;
    v20 = v18 + -3.0 + -3.0;
  }

  else
  {
    v11 = [MEMORY[0x277D75348] systemBlackColor];
    v12 = [v11 colorWithAlphaComponent:0.1];
    v13 = [v12 CGColor];
    v14 = [(HUColorSwatchView *)self circleLayer];
    [v14 setStrokeColor:v13];

    v15 = [(HUColorSwatchView *)self selectedCircleLayer];
    [v15 setHidden:1];

    v16 = [(HUColorSwatchView *)self selectedCircleInnerLayer];
    [v16 setHidden:1];

    v17 = [(HUColorSwatchView *)self selectedCircleOuterLayer];
    [v17 setHidden:1];

    v18 = v6 * 0.5;
    v19 = v18 + -3.0;
    v20 = v18;
  }

  v28 = v10 * 0.5;
  v29 = v8 * 0.5;
  v51 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v20 clockwise:{0.0, 6.28318531}];
  v30 = v51;
  v31 = [v51 CGPath];
  v32 = [(HUColorSwatchView *)self circleLayer];
  [v32 setPath:v31];

  v33 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v18 + -1.5 clockwise:{0.0, 6.28318531}];
  v34 = [v33 CGPath];
  v35 = [(HUColorSwatchView *)self selectedCircleLayer];
  [v35 setPath:v34];

  v36 = [MEMORY[0x277D75348] clearColor];
  v37 = [v36 CGColor];
  v38 = [(HUColorSwatchView *)self selectedCircleLayer];
  [v38 setFillColor:v37];

  v39 = [(HUColorSwatchView *)self selectedCircleLayer];
  [v39 setLineWidth:3.0];

  v40 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v19 clockwise:{0.0, 6.28318531}];
  v41 = [v40 CGPath];
  v42 = [(HUColorSwatchView *)self selectedCircleInnerLayer];
  [v42 setPath:v41];

  v43 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v29 startAngle:v28 endAngle:v18 clockwise:{0.0, 6.28318531}];
  v44 = [v43 CGPath];
  v45 = [(HUColorSwatchView *)self selectedCircleOuterLayer];
  [v45 setPath:v44];

  [(HUColorSwatchView *)self frame];
  v47 = v46 + -18.0;
  [(HUColorSwatchView *)self frame];
  v49 = v48 + -18.0;
  v50 = [(HUColorSwatchView *)self label];
  [v50 setFrame:{9.0, 9.0, v47, v49}];
}

- (void)_updateTextColor
{
  v8 = [(HUColorSwatchView *)self color];
  if (HUIsLightColor(v8))
  {
    v3 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v4 = [(HUColorSwatchView *)self traitCollection];
    v5 = [v4 userInterfaceStyle];

    if (v5 == 1)
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlackColor];
    }
    v3 = ;
  }

  v6 = v3;
  v7 = [(HUColorSwatchView *)self label];
  [v7 setTextColor:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUColorSwatchView;
  [(HUColorSwatchView *)&v4 traitCollectionDidChange:a3];
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"path"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"fillColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUColorSwatchView;
    v5 = [(HUColorSwatchView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (void)setLabelHidden:(BOOL)a3
{
  self->_labelHidden = a3;
  v5 = [(HUColorSwatchView *)self label];
  [v5 setHidden:self->_labelHidden];

  if (!a3)
  {

    [(HUColorSwatchView *)self _updateTextColor];
  }
}

@end