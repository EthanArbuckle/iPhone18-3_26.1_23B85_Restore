@interface NWKUIAQISegmentView
- (NWKUIAQISegmentView)initWithColor:(id)color active:(BOOL)active mode:(unint64_t)mode;
- (void)layoutSubviews;
@end

@implementation NWKUIAQISegmentView

- (NWKUIAQISegmentView)initWithColor:(id)color active:(BOOL)active mode:(unint64_t)mode
{
  activeCopy = active;
  colorCopy = color;
  v23.receiver = self;
  v23.super_class = NWKUIAQISegmentView;
  v10 = [(NWKUIAQISegmentView *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_color, color);
    v11->_active = activeCopy;
    v11->_mode = mode;
    v12 = 0.3;
    if (activeCopy)
    {
      v12 = 1.0;
    }

    [(NWKUIAQISegmentView *)v11 setAlpha:v12];
    v13 = 15;
    v14 = 3;
    if (mode == 2)
    {
      v13 = 3;
    }

    if (mode)
    {
      v15 = v13;
    }

    else
    {
      v15 = 12;
    }

    v16 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [v16 setAnchorPoint:{0.0, 0.0}];
    [v16 setBackgroundColor:{objc_msgSend(colorCopy, "CGColor")}];
    v17 = *MEMORY[0x277CDA138];
    [v16 setCornerCurve:*MEMORY[0x277CDA138]];
    [v16 setCornerRadius:2.0];
    [v16 setMaskedCorners:v15];
    layer = [(NWKUIAQISegmentView *)v11 layer];
    [layer addSublayer:v16];

    objc_storeStrong(&v11->_bodyLayer, v16);
    if (mode)
    {
      if (mode == 1)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (mode == 2)
      {
        v14 = 12;
      }

      else
      {
        v14 = 0;
      }
    }

    v19 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(CALayer *)v19 setAnchorPoint:0.0, 0.0];
    -[CALayer setBackgroundColor:](v19, "setBackgroundColor:", [colorCopy CGColor]);
    [(CALayer *)v19 setCornerCurve:v17];
    [(CALayer *)v19 setMaskedCorners:v14];
    layer2 = [(NWKUIAQISegmentView *)v11 layer];
    [layer2 addSublayer:v19];

    capLayer = v11->_capLayer;
    v11->_capLayer = v19;

    goto LABEL_15;
  }

LABEL_16:

  return v11;
}

- (void)layoutSubviews
{
  [(NWKUIAQISegmentView *)self bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v7 = CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v8 = CGRectGetHeight(v22);
  if (v8 != self->_lastLayoutHeight)
  {
    self->_lastLayoutHeight = v8;
    v18 = floor(v8 * 0.75 + v8 * 0.75 + 0.5) * 0.5;
    mode = [(NWKUIAQISegmentView *)self mode];
    v19 = v7;
    if (mode == 2)
    {
      v10 = v8 - v18;
      v11 = 0.0;
      v12 = 0.0;
    }

    else
    {
      v10 = height;
      v7 = width;
      v11 = y;
      v12 = x;
      if (!mode)
      {
        v7 = v19;
        v10 = v8 - v18;
        v12 = 0.0;
        v11 = v18;
      }
    }

    v17 = v10;
    v13 = v7;
    v14 = v11;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(CALayer *)self->_bodyLayer setFrame:v12, v14, v13, v17];
    [MEMORY[0x277CD9FF0] commit];
    if (self->_capLayer)
    {
      mode2 = [(NWKUIAQISegmentView *)self mode];
      if (mode2 == 2)
      {
        height = v18;
        y = v8 - v18;
        x = 0.0;
        width = v19;
      }

      else if (!mode2)
      {
        x = 0.0;
        y = 0.0;
        width = v19;
        height = v18;
      }

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      [(CALayer *)self->_capLayer setCornerRadius:v19 * 0.5];
      [(CALayer *)self->_capLayer setFrame:x, y, width, height];
      v16 = MEMORY[0x277CD9FF0];

      [v16 commit];
    }
  }
}

@end