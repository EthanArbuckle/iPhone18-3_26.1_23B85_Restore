@interface CDRichComplicationCornerBaseCircularView
- (CDRichComplicationCornerBaseCircularView)initWithFontFallback:(int64_t)fallback;
- (id)_circularView;
- (void)layoutSubviews;
@end

@implementation CDRichComplicationCornerBaseCircularView

- (CDRichComplicationCornerBaseCircularView)initWithFontFallback:(int64_t)fallback
{
  v8.receiver = self;
  v8.super_class = CDRichComplicationCornerBaseCircularView;
  v3 = [(CDRichComplicationCornerView *)&v8 initWithFontFallback:fallback];
  v4 = v3;
  if (v3)
  {
    _circularView = [(CDRichComplicationCornerBaseCircularView *)v3 _circularView];
    circularView = v4->_circularView;
    v4->_circularView = _circularView;

    [(CDRichComplicationCornerBaseCircularView *)v4 addSubview:v4->_circularView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = CDRichComplicationCornerBaseCircularView;
  [(CDRichComplicationCornerBaseCircularView *)&v23 layoutSubviews];
  device = [(CDRichComplicationView *)self device];
  v4 = ___LayoutConstants_block_invoke_11(device, device);
  v6 = v5;
  v8 = v7;

  device2 = [(CDRichComplicationView *)self device];
  v10 = CDRichComplicationCornerBaseCircularViewRect(device2, [(CDRichComplicationCornerView *)self cornerComplicationPosition]);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  circularView = self->_circularView;
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  v22[0] = *MEMORY[0x277CBF2C0];
  v22[1] = v18;
  v22[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)circularView setTransform:v22];
  [(UIView *)self->_circularView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v14, v16];
  layer = [(UIView *)self->_circularView layer];
  [layer setCornerRadius:v4 * 0.5];

  v20 = self->_circularView;
  [(CDRichComplicationCornerView *)self outerComponentRotationInDegree];
  [(CDRichComplicationCornerView *)self _layoutView:v20 origin:v10 editingTranslation:v12 editingRotationInDegree:v6, v8, v21];
}

- (id)_circularView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end