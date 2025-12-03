@interface NTKRichComplicationHandView
- (NTKRichComplicationHandView)initWithDotSize:(double)size handWidth:(double)width beginAngle:(double)angle endAngle:(double)endAngle;
- (void)_updateHandTransform;
- (void)layoutSubviews;
- (void)setValue:(float)value animated:(BOOL)animated;
@end

@implementation NTKRichComplicationHandView

- (NTKRichComplicationHandView)initWithDotSize:(double)size handWidth:(double)width beginAngle:(double)angle endAngle:(double)endAngle
{
  v18.receiver = self;
  v18.super_class = NTKRichComplicationHandView;
  v10 = [(NTKRichComplicationHandView *)&v18 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    layer = [(NTKRichComplicationHandView *)v10 layer];
    v13 = objc_opt_new();
    dotLayer = v11->_dotLayer;
    v11->_dotLayer = v13;

    [(CALayer *)v11->_dotLayer setBounds:0.0, 0.0, size, size];
    [(CALayer *)v11->_dotLayer setCornerRadius:size * 0.5];
    [layer addSublayer:v11->_dotLayer];
    v15 = objc_opt_new();
    handLayer = v11->_handLayer;
    v11->_handLayer = v15;

    [(CALayer *)v11->_handLayer setAnchorPoint:0.5, 1.0];
    [layer addSublayer:v11->_handLayer];
    v11->_beginAngle = angle;
    v11->_endAngle = endAngle;
    v11->_handWidth = width;
  }

  return v11;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationHandView;
  [(NTKRichComplicationHandView *)&v14 layoutSubviews];
  layer = [(NTKRichComplicationHandView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6 * 0.5;
  [(CALayer *)self->_dotLayer setPosition:v4 * 0.5, v6 * 0.5];
  handLayer = self->_handLayer;
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v13[4] = *(MEMORY[0x277CD9DE8] + 64);
  v13[5] = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v13[6] = *(MEMORY[0x277CD9DE8] + 96);
  v13[7] = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v13[0] = *MEMORY[0x277CD9DE8];
  v13[1] = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v13[2] = *(MEMORY[0x277CD9DE8] + 32);
  v13[3] = v12;
  [(CALayer *)handLayer setTransform:v13];
  [(CALayer *)self->_handLayer setFrame:(v5 - self->_handWidth) * 0.5, 0.0, self->_handWidth, v7];
  [(NTKRichComplicationHandView *)self _updateHandTransform];
}

- (void)setValue:(float)value animated:(BOOL)animated
{
  if (value < 0.0)
  {
    value = 0.0;
  }

  self->_value = fminf(value, 1.0);
  if (animated)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__NTKRichComplicationHandView_setValue_animated___block_invoke;
    v5[3] = &unk_27877DB10;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:65540 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:0.75 completion:0.0];
  }

  else
  {

    [(NTKRichComplicationHandView *)self _updateHandTransform];
  }
}

- (void)_updateHandTransform
{
  v2 = self->_beginAngle + self->_value * (self->_endAngle - self->_beginAngle);
  handLayer = self->_handLayer;
  CATransform3DMakeRotation(&v4, v2, 0.0, 0.0, 1.0);
  [(CALayer *)handLayer setTransform:&v4];
}

@end