@interface NTKRichComplicationCircularBaseTextView
- (NTKRichComplicationCircularBaseTextView)initWithFamily:(int64_t)a3;
- (id)_createLabelViewWithFont:(id)a3;
- (id)_labelFont;
- (void)_layoutLabel;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)_setLayoutTransformToView:(id)a3 origin:(CGPoint)a4 centerScale:(double)a5;
- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)a3;
@end

@implementation NTKRichComplicationCircularBaseTextView

- (NTKRichComplicationCircularBaseTextView)initWithFamily:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationCircularBaseTextView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v14 initWithFamily:a3];
  v4 = v3;
  if (v3)
  {
    v3->_labelScale = 1.0;
    v5 = [(NTKRichComplicationCircularBaseTextView *)v3 _labelFont];
    v6 = [(NTKRichComplicationCircularBaseTextView *)v4 _createLabelViewWithFont:v5];
    label = v4->_label;
    v4->_label = v6;

    v8 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    [v8 addSubview:v4->_label];

    v9 = [(NTKRichComplicationCircularBaseView *)v4 framingView];
    v10 = [MEMORY[0x277D75348] clearColor];
    [v9 setBackgroundColor:v10];

    v11 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    v12 = [MEMORY[0x277D75348] clearColor];
    [v11 setBackgroundColor:v12];
  }

  return v4;
}

- (id)_labelFont
{
  v2 = [(CDRichComplicationView *)self device];
  v3 = ___LayoutConstants_block_invoke_50(v2, v2);

  v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v3 design:*MEMORY[0x277D74420]];
  v5 = [v4 CLKFontWithAlternativePunctuation];

  return v5;
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v10[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v11 = v5;
  v12 = var2;
  v9.receiver = self;
  v9.super_class = NTKRichComplicationCircularBaseTextView;
  [(CDRichComplicationView *)&v9 _setFontConfiguration:v10];
  if (a3->var1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    var1 = a3->var1;
    if (isKindOfClass)
    {
      [(CDRichComplicationView *)self _updateColoringLabel:self->_label withFontDescriptor:var1 andSizeFactor:a3->var2];
      var1 = a3->var1;
    }
  }

  else
  {
    var1 = 0;
  }
}

- (void)setForegroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCircularBaseTextView;
  v4 = a3;
  [(CDRichComplicationView *)&v5 setForegroundColor:v4];
  [(CLKUIColoringView *)self->_label setColor:v4, v5.receiver, v5.super_class];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationCircularBaseTextView;
  [(NTKRichComplicationCircularBaseView *)&v3 layoutSubviews];
  [(NTKRichComplicationCircularBaseTextView *)self _layoutLabel];
}

- (void)_layoutLabel
{
  v3 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  label = self->_label;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  *&v27.a = *MEMORY[0x277CBF2C0];
  *&v27.c = v13;
  *&v27.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(CLKUIColoringView *)label setTransform:&v27];
  [(CLKUIColoringView *)self->_label sizeToFit];
  [(CLKUIColoringView *)self->_label frame];
  v14 = [(NTKRichComplicationCircularBaseTextView *)self _labelFont];
  [v14 ascender];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CLKUIColoringView *)self->_label _firstLineBaseline];
LABEL_5:
    v15 = [(NTKRichComplicationCircularBaseTextView *)self _labelFont];
    [v15 capHeight];

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CLKUIColoringView *)self->_label _lastLineBaseline];
    goto LABEL_5;
  }

LABEL_6:
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  CGRectGetMidY(v28);
  v16 = [(CDRichComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [(CLKUIColoringView *)self->_label setFrame:v18, v20, v22, v24];
  CGAffineTransformMakeScale(&v26, self->_labelScale, self->_labelScale);
  v25 = self->_label;
  v27 = v26;
  [(CLKUIColoringView *)v25 setTransform:&v27];
}

- (void)_setLayoutTransformToView:(id)a3 origin:(CGPoint)a4 centerScale:(double)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  [(NTKRichComplicationCircularBaseTextView *)self bounds];
  v11 = v10;
  v13 = v12;
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v14;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v20.a = *&v21.a;
  *&v20.c = v14;
  *&v20.tx = *&v21.tx;
  CGAffineTransformTranslate(&v21, &v20, x, y);
  [v9 center];
  v16 = v11 * 0.5 - x - v15;
  [v9 center];
  v18 = v13 * 0.5 - y - v17;
  v19 = v21;
  CGAffineTransformTranslate(&v20, &v19, v16, v18);
  v21 = v20;
  v19 = v20;
  CGAffineTransformScale(&v20, &v19, a5, a5);
  v21 = v20;
  v19 = v20;
  CGAffineTransformTranslate(&v20, &v19, -v16, -v18);
  v21 = v20;
  [v9 setTransform:&v20];
}

- (void)_transitToHighlightState:(BOOL)a3 fraction:(double)a4
{
  CLKInterpolateBetweenFloatsClipped();
  self->_labelScale = v5;

  [(NTKRichComplicationCircularBaseTextView *)self _layoutLabel];
}

- (id)_createLabelViewWithFont:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end