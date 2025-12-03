@interface NTKRichComplicationCircularBaseTextView
- (NTKRichComplicationCircularBaseTextView)initWithFamily:(int64_t)family;
- (id)_createLabelViewWithFont:(id)font;
- (id)_labelFont;
- (void)_layoutLabel;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)_setLayoutTransformToView:(id)view origin:(CGPoint)origin centerScale:(double)scale;
- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)color;
@end

@implementation NTKRichComplicationCircularBaseTextView

- (NTKRichComplicationCircularBaseTextView)initWithFamily:(int64_t)family
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationCircularBaseTextView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v14 initWithFamily:family];
  v4 = v3;
  if (v3)
  {
    v3->_labelScale = 1.0;
    _labelFont = [(NTKRichComplicationCircularBaseTextView *)v3 _labelFont];
    v6 = [(NTKRichComplicationCircularBaseTextView *)v4 _createLabelViewWithFont:_labelFont];
    label = v4->_label;
    v4->_label = v6;

    contentView = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    [contentView addSubview:v4->_label];

    framingView = [(NTKRichComplicationCircularBaseView *)v4 framingView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [framingView setBackgroundColor:clearColor];

    contentView2 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [contentView2 setBackgroundColor:clearColor2];
  }

  return v4;
}

- (id)_labelFont
{
  device = [(CDRichComplicationView *)self device];
  v3 = ___LayoutConstants_block_invoke_50(device, device);

  v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v3 design:*MEMORY[0x277D74420]];
  cLKFontWithAlternativePunctuation = [v4 CLKFontWithAlternativePunctuation];

  return cLKFontWithAlternativePunctuation;
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  v10[0] = configuration->var0;
  v5 = configuration->var1;
  var2 = configuration->var2;
  v11 = v5;
  v12 = var2;
  v9.receiver = self;
  v9.super_class = NTKRichComplicationCircularBaseTextView;
  [(CDRichComplicationView *)&v9 _setFontConfiguration:v10];
  if (configuration->var1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    var1 = configuration->var1;
    if (isKindOfClass)
    {
      [(CDRichComplicationView *)self _updateColoringLabel:self->_label withFontDescriptor:var1 andSizeFactor:configuration->var2];
      var1 = configuration->var1;
    }
  }

  else
  {
    var1 = 0;
  }
}

- (void)setForegroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationCircularBaseTextView;
  colorCopy = color;
  [(CDRichComplicationView *)&v5 setForegroundColor:colorCopy];
  [(CLKUIColoringView *)self->_label setColor:colorCopy, v5.receiver, v5.super_class];
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
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
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
  _labelFont = [(NTKRichComplicationCircularBaseTextView *)self _labelFont];
  [_labelFont ascender];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CLKUIColoringView *)self->_label _firstLineBaseline];
LABEL_5:
    _labelFont2 = [(NTKRichComplicationCircularBaseTextView *)self _labelFont];
    [_labelFont2 capHeight];

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
  device = [(CDRichComplicationView *)self device];
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

- (void)_setLayoutTransformToView:(id)view origin:(CGPoint)origin centerScale:(double)scale
{
  y = origin.y;
  x = origin.x;
  viewCopy = view;
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
  [viewCopy center];
  v16 = v11 * 0.5 - x - v15;
  [viewCopy center];
  v18 = v13 * 0.5 - y - v17;
  v19 = v21;
  CGAffineTransformTranslate(&v20, &v19, v16, v18);
  v21 = v20;
  v19 = v20;
  CGAffineTransformScale(&v20, &v19, scale, scale);
  v21 = v20;
  v19 = v20;
  CGAffineTransformTranslate(&v20, &v19, -v16, -v18);
  v21 = v20;
  [viewCopy setTransform:&v20];
}

- (void)_transitToHighlightState:(BOOL)state fraction:(double)fraction
{
  CLKInterpolateBetweenFloatsClipped();
  self->_labelScale = v5;

  [(NTKRichComplicationCircularBaseTextView *)self _layoutLabel];
}

- (id)_createLabelViewWithFont:(id)font
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end