@interface NTKRichComplicationBezelBaseTextView
- (NTKRichComplicationBezelBaseTextView)init;
- (id)_createLabelViewWithFont:(id)a3;
- (id)_labelFont;
- (void)_layoutLabel;
- (void)_setEditingTransitionFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5 type:(int64_t)a6;
- (void)_setWhistlerAnalogEditingTransitonFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5;
- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)a3;
@end

@implementation NTKRichComplicationBezelBaseTextView

- (NTKRichComplicationBezelBaseTextView)init
{
  v8.receiver = self;
  v8.super_class = NTKRichComplicationBezelBaseTextView;
  v2 = [(NTKRichComplicationBezelView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_labelScale = 1.0;
    v4 = [(NTKRichComplicationBezelBaseTextView *)v2 _labelFont];
    v5 = [(NTKRichComplicationBezelBaseTextView *)v3 _createLabelViewWithFont:v4];
    label = v3->_label;
    v3->_label = v5;

    [(NTKRichComplicationBezelBaseTextView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (id)_labelFont
{
  v2 = [(CDRichComplicationView *)self device];
  v3 = ___LayoutConstants_block_invoke_46(v2, v2);

  v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v3 design:*MEMORY[0x277D74420]];
  v5 = [v4 CLKFontWithAlternativePunctuation];

  return v5;
}

- (void)setForegroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBezelBaseTextView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 setForegroundColor:v4];
  [(CLKUIColoringView *)self->_label setColor:v4, v5.receiver, v5.super_class];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NTKRichComplicationBezelBaseTextView;
  [(NTKRichComplicationBezelBaseTextView *)&v13 layoutSubviews];
  [(NTKRichComplicationBezelBaseTextView *)self _layoutLabel];
  v3 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_46(v3, v3);
  v5 = v4;

  [(CLKUIColoringView *)self->_label frame];
  if (v8 < v5)
  {
    v8 = v5;
  }

  v14 = CGRectInset(*&v6, -3.0, -3.0);
  [(NTKRichComplicationBezelView *)self _updateHitTestShape:1 frame:v14.origin.x, v14.origin.y, v14.size.width, v14.size.height];
  v10 = [(NTKRichComplicationBezelView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(NTKRichComplicationBezelView *)self delegate];
    [v12 didUpdateBezelTextForRichComplicationBezelView:self];
  }
}

- (void)_layoutLabel
{
  v3 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_46(v3, v3);
  v5 = v4;

  [(NTKRichComplicationBezelBaseTextView *)self bounds];
  v7 = v6;
  label = self->_label;
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v9;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(CLKUIColoringView *)label setTransform:&v21];
  [(CLKUIColoringView *)self->_label sizeToFit];
  [(CLKUIColoringView *)self->_label frame];
  v11 = v10;
  v13 = v12;
  v14 = (v7 - v10) * 0.5;
  v15 = [(NTKRichComplicationBezelBaseTextView *)self _labelFont];
  [v15 ascender];
  *&v16 = v5 - v16;
  v17 = ceilf(*&v16);

  [(CLKUIColoringView *)self->_label setFrame:0.0, 0.0, v11, v13];
  [(NTKRichComplicationBezelView *)self _setLayoutTransformToView:self->_label origin:v14 rotationInDegree:v17 centerScale:self->_labelRotationInDegree, 1.0];
  v18 = self->_label;
  if (v18)
  {
    [(CLKUIColoringView *)v18 transform];
    v19 = self->_label;
  }

  else
  {
    v19 = 0;
    memset(&v21, 0, sizeof(v21));
  }

  CGAffineTransformScale(&v20, &v21, self->_labelScale, self->_labelScale);
  v21 = v20;
  [(CLKUIColoringView *)v19 setTransform:&v21];
}

- (void)_setWhistlerAnalogEditingTransitonFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5
{
  if (a5 <= 1)
  {
    CLKCompressFraction();
  }

  v7 = [(CDRichComplicationView *)self device:a4];
  ___LayoutConstants_block_invoke_46(v7, v7);

  CLKInterpolateBetweenFloatsClipped();
  if (a5 == 1)
  {
    v8 = -v8;
  }

  self->_labelRotationInDegree = v8;

  [(NTKRichComplicationBezelBaseTextView *)self setNeedsLayout];
}

- (void)_setEditingTransitionFraction:(double)a3 direction:(int64_t)a4 position:(int64_t)a5 type:(int64_t)a6
{
  if (!a6)
  {
    [(NTKRichComplicationBezelBaseTextView *)self _setWhistlerAnalogEditingTransitonFraction:a4 direction:a5 position:a3];
  }
}

- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4
{
  CLKInterpolateBetweenFloatsClipped();
  self->_labelScale = v5;

  [(NTKRichComplicationBezelBaseTextView *)self _layoutLabel];
}

- (id)_createLabelViewWithFont:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end