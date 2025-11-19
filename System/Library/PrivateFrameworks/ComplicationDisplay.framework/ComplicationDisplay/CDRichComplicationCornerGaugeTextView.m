@interface CDRichComplicationCornerGaugeTextView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (CDRichComplicationCornerGaugeTextView)initWithFontFallback:(int64_t)a3;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)layoutSubviews;
- (void)setFontStyle:(int64_t)a3;
- (void)setOuterLabelProviders:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationCornerGaugeTextView

- (CDRichComplicationCornerGaugeTextView)initWithFontFallback:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = CDRichComplicationCornerGaugeTextView;
  v3 = [(CDRichComplicationCornerBaseGaugeView *)&v12 initWithFontFallback:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CDRichComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_6(v5, v11);
    v6 = [(CDRichComplicationCornerView *)v4 _createAndAddColoringLabelWithFontSize:v11[0]];
    outerLabel = v4->_outerLabel;
    v4->_outerLabel = v6;

    v8 = [(CDRichComplicationView *)v4 device];
    ___LayoutConstants_block_invoke_6(v8, &v10);
    CLKDegreesToRadians();
    [(CLKUICurvedColoringLabel *)v4->_outerLabel setMaxAngularWidth:?];

    [(CLKUICurvedColoringLabel *)v4->_outerLabel setUsesTextProviderTintColoring:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CDRichComplicationCornerGaugeTextView;
  [(CDRichComplicationCornerBaseGaugeView *)&v15 layoutSubviews];
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CDRichComplicationView *)self device:0];
  ___LayoutConstants_block_invoke_6(v3, &v9);

  v4 = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  if (v4 <= 1)
  {
    if (v4 > 1)
    {
      goto LABEL_8;
    }

    [(CLKUICurvedColoringLabel *)self->_outerLabel setCircleRadius:*&v10];
    [(CLKUICurvedColoringLabel *)self->_outerLabel setInterior:0];
    v5 = *(&v12 + 1);
    goto LABEL_7;
  }

  if (v4 == 2 || v4 == 3)
  {
    [(CLKUICurvedColoringLabel *)self->_outerLabel setCircleRadius:*(&v10 + 1)];
    [(CLKUICurvedColoringLabel *)self->_outerLabel setInterior:1];
    v5 = *&v13;
LABEL_7:
    [(CLKUICurvedColoringLabel *)self->_outerLabel setTracking:v5];
  }

LABEL_8:
  outerLabel = self->_outerLabel;
  v7 = *&v12;
  [(CDRichComplicationCornerView *)self outerComponentRotationInDegree];
  [(CDRichComplicationCornerView *)self _layoutCurvedLabel:outerLabel centerAngleInDegree:v7 editingRotationInDegree:v8];
}

- (void)setFontStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = CDRichComplicationCornerGaugeTextView;
  [(CDRichComplicationView *)&v3 setFontStyle:a3];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v9[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v10 = v5;
  v11 = var2;
  v8.receiver = self;
  v8.super_class = CDRichComplicationCornerGaugeTextView;
  [(CDRichComplicationCornerBaseGaugeView *)&v8 _setFontConfiguration:v9];
  if (a3->var1)
  {
    [(CDRichComplicationView *)self _updateColoringLabel:self->_outerLabel withFontDescriptor:a3->var2 andSizeFactor:?];
  }

  else
  {
    if (a3->var0)
    {
      v7 = MEMORY[0x277D74418];
    }

    else
    {
      v7 = MEMORY[0x277D74420];
    }

    [(CDRichComplicationCornerView *)self _updateColoringLabel:self->_outerLabel withFontWeight:*v7];
  }
}

- (void)setOuterLabelProviders:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_outerLabelProviders, a3);
  if ([(NSArray *)self->_outerLabelProviders count])
  {
    v14 = v5;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_outerLabelProviders;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) textProvider];
        [(CLKUICurvedColoringLabel *)self->_outerLabel setTextProvider:v11];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __64__CDRichComplicationCornerGaugeTextView_setOuterLabelProviders___block_invoke;
        v15[3] = &unk_278DF3558;
        v15[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v15];
        v12 = [(CLKUICurvedColoringLabel *)self->_outerLabel isTextTruncated];

        if (!v12)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v5 = v14;
  }

  else
  {
    [(CLKUICurvedColoringLabel *)self->_outerLabel setImageView:0];
    [(CLKUICurvedColoringLabel *)self->_outerLabel setTextProvider:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  outerLabel = self->_outerLabel;
  v6 = a3;
  v7 = [v6 outerTextProvider];
  [(CLKUICurvedColoringLabel *)outerLabel setTextProvider:v7];

  v10 = [v6 gaugeProvider];
  v8 = [v6 leadingTextProvider];
  v9 = [v6 trailingTextProvider];

  [(CDRichComplicationCornerBaseGaugeView *)self handleGaugeProvider:v10 leftTextProvider:v8 rightTextProvider:v9];
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationCornerGaugeTextView;
  v4 = a3;
  [(CDRichComplicationCornerBaseGaugeView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_outerLabel);
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationCornerGaugeTextView;
  [(CDRichComplicationCornerBaseGaugeView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUICurvedColoringLabel *)self->_outerLabel transitionToMonochromeWithFraction:0 style:a3];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = CDRichComplicationCornerGaugeTextView;
  [(CDRichComplicationCornerBaseGaugeView *)&v3 updateMonochromeColor];
  [(CLKUICurvedColoringLabel *)self->_outerLabel updateMonochromeColorWithStyle:0];
}

@end