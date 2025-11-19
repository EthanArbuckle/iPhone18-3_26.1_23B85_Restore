@interface CDRichComplicationCornerTextCustomView
- (CDRichComplicationCornerTextCustomView)initWithFontFallback:(int64_t)a3;
- (double)_outerViewDiameter;
- (id)_outerView;
- (void)layoutSubviews;
@end

@implementation CDRichComplicationCornerTextCustomView

- (CDRichComplicationCornerTextCustomView)initWithFontFallback:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CDRichComplicationCornerTextCustomView;
  v3 = [(CDRichComplicationCornerBaseTextView *)&v8 initWithFontFallback:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CDRichComplicationCornerTextCustomView *)v3 _outerView];
    outerView = v4->_outerView;
    v4->_outerView = v5;

    [(CDRichComplicationCornerTextCustomView *)v4 addSubview:v4->_outerView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = CDRichComplicationCornerTextCustomView;
  [(CDRichComplicationCornerBaseTextView *)&v21 layoutSubviews];
  v3 = [(CDRichComplicationView *)self device];
  [CDRichComplicationCornerUtilities cornerGaugeCustomViewRectWithPosition:[(CDRichComplicationCornerView *)self cornerComplicationPosition] forDevice:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CDRichComplicationView *)self device];
  v13 = ___LayoutConstants_block_invoke(v12, v12);
  v15 = v14;

  outerView = self->_outerView;
  v17 = *(MEMORY[0x277CBF2C0] + 16);
  v20[0] = *MEMORY[0x277CBF2C0];
  v20[1] = v17;
  v20[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)outerView setTransform:v20];
  [(UIView *)self->_outerView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v9, v11];
  v18 = self->_outerView;
  [(CDRichComplicationCornerView *)self outerComponentRotationInDegree];
  [(CDRichComplicationCornerView *)self _layoutView:v18 origin:v5 editingTranslation:v7 editingRotationInDegree:v13, v15, v19];
}

- (double)_outerViewDiameter
{
  v3 = [(CDRichComplicationView *)self device];
  [CDRichComplicationCornerUtilities cornerGaugeCustomViewRectWithPosition:[(CDRichComplicationCornerView *)self cornerComplicationPosition] forDevice:v3];
  v5 = v4;

  return v5;
}

- (id)_outerView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end