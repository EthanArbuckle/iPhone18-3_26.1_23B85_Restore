@interface CDRichComplicationCornerStackedTextView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (CDRichComplicationCornerStackedTextView)initWithFontFallback:(int64_t)a3;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)a3;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3;
- (void)layoutSubviews;
- (void)setOuterLabelProviders:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationCornerStackedTextView

- (CDRichComplicationCornerStackedTextView)initWithFontFallback:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = CDRichComplicationCornerStackedTextView;
  v3 = [(CDRichComplicationCornerBaseTextView *)&v12 initWithFontFallback:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(CDRichComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_9(v5, v11);
    v6 = [(CDRichComplicationCornerView *)v4 _createAndAddColoringLabelWithFontSize:v11[0]];
    outerLabel = v4->_outerLabel;
    v4->_outerLabel = v6;

    v8 = [(CDRichComplicationView *)v4 device];
    ___LayoutConstants_block_invoke_9(v8, &v10);
    CLKDegreesToRadians();
    [(CLKUICurvedColoringLabel *)v4->_outerLabel setMaxAngularWidth:?];

    [(CLKUICurvedColoringLabel *)v4->_outerLabel setUsesTextProviderTintColoring:1];
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CDRichComplicationCornerStackedTextView;
  [(CDRichComplicationCornerBaseTextView *)&v14 layoutSubviews];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CDRichComplicationView *)self device:0];
  ___LayoutConstants_block_invoke_9(v3, &v9);

  v4 = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  if (v4 <= 1)
  {
    if (v4 > 1)
    {
      goto LABEL_8;
    }

    [(CLKUICurvedColoringLabel *)self->_outerLabel setCircleRadius:*&v10];
    [(CLKUICurvedColoringLabel *)self->_outerLabel setInterior:0];
    v5 = *(&v11 + 1);
    goto LABEL_7;
  }

  if (v4 == 2 || v4 == 3)
  {
    [(CLKUICurvedColoringLabel *)self->_outerLabel setCircleRadius:*(&v10 + 1)];
    [(CLKUICurvedColoringLabel *)self->_outerLabel setInterior:1];
    v5 = *&v12;
LABEL_7:
    [(CLKUICurvedColoringLabel *)self->_outerLabel setTracking:v5];
  }

LABEL_8:
  outerLabel = self->_outerLabel;
  v7 = *&v11;
  [(CDRichComplicationCornerView *)self outerComponentRotationInDegree];
  [(CDRichComplicationCornerView *)self _layoutCurvedLabel:outerLabel centerAngleInDegree:v7 editingRotationInDegree:v8];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)a3
{
  v9[0] = a3->var0;
  v5 = a3->var1;
  var2 = a3->var2;
  v10 = v5;
  v11 = var2;
  v8.receiver = self;
  v8.super_class = CDRichComplicationCornerStackedTextView;
  [(CDRichComplicationCornerBaseTextView *)&v8 _setFontConfiguration:v9];
  if (a3->var1)
  {
    [(CDRichComplicationView *)self _updateColoringLabel:self->_outerLabel withFontDescriptor:a3->var2 andSizeFactor:?];
  }

  else
  {
    if (a3->var0)
    {
      v7 = MEMORY[0x277D74410];
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
        v15[2] = __66__CDRichComplicationCornerStackedTextView_setOuterLabelProviders___block_invoke;
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
  v5 = a3;
  v6 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  v7 = [v5 innerTextProvider];
  [v6 setTextProvider:v7];

  outerLabel = self->_outerLabel;
  v9 = [v5 outerTextProvider];

  [(CLKUICurvedColoringLabel *)outerLabel setTextProvider:v9];
}

- (void)_enumerateLabelsWithBlock:(id)a3
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationCornerStackedTextView;
  v4 = a3;
  [(CDRichComplicationCornerBaseTextView *)&v5 _enumerateLabelsWithBlock:v4];
  v4[2](v4, self->_outerLabel);
}

- (void)_editingDidEnd
{
  v3 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [v3 editingDidEnd];

  outerLabel = self->_outerLabel;

  [(CLKUICurvedColoringLabel *)outerLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [v5 transitionToMonochromeWithFraction:2 style:a3];

  outerLabel = self->_outerLabel;

  [(CLKUICurvedColoringLabel *)outerLabel transitionToMonochromeWithFraction:0 style:a3];
}

- (void)updateMonochromeColor
{
  v3 = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [v3 updateMonochromeColorWithStyle:2];

  outerLabel = self->_outerLabel;

  [(CLKUICurvedColoringLabel *)outerLabel updateMonochromeColorWithStyle:0];
}

@end