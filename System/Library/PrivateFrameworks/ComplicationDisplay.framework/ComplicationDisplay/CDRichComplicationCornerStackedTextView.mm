@interface CDRichComplicationCornerStackedTextView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (CDRichComplicationCornerStackedTextView)initWithFontFallback:(int64_t)fallback;
- (void)_editingDidEnd;
- (void)_enumerateLabelsWithBlock:(id)block;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)layoutSubviews;
- (void)setOuterLabelProviders:(id)providers;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationCornerStackedTextView

- (CDRichComplicationCornerStackedTextView)initWithFontFallback:(int64_t)fallback
{
  v12.receiver = self;
  v12.super_class = CDRichComplicationCornerStackedTextView;
  v3 = [(CDRichComplicationCornerBaseTextView *)&v12 initWithFontFallback:fallback];
  v4 = v3;
  if (v3)
  {
    device = [(CDRichComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_9(device, v11);
    v6 = [(CDRichComplicationCornerView *)v4 _createAndAddColoringLabelWithFontSize:v11[0]];
    outerLabel = v4->_outerLabel;
    v4->_outerLabel = v6;

    device2 = [(CDRichComplicationView *)v4 device];
    ___LayoutConstants_block_invoke_9(device2, &v10);
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

  cornerComplicationPosition = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  if (cornerComplicationPosition <= 1)
  {
    if (cornerComplicationPosition > 1)
    {
      goto LABEL_8;
    }

    [(CLKUICurvedColoringLabel *)self->_outerLabel setCircleRadius:*&v10];
    [(CLKUICurvedColoringLabel *)self->_outerLabel setInterior:0];
    v5 = *(&v11 + 1);
    goto LABEL_7;
  }

  if (cornerComplicationPosition == 2 || cornerComplicationPosition == 3)
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

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  v9[0] = configuration->var0;
  v5 = configuration->var1;
  var2 = configuration->var2;
  v10 = v5;
  v11 = var2;
  v8.receiver = self;
  v8.super_class = CDRichComplicationCornerStackedTextView;
  [(CDRichComplicationCornerBaseTextView *)&v8 _setFontConfiguration:v9];
  if (configuration->var1)
  {
    [(CDRichComplicationView *)self _updateColoringLabel:self->_outerLabel withFontDescriptor:configuration->var2 andSizeFactor:?];
  }

  else
  {
    if (configuration->var0)
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

- (void)setOuterLabelProviders:(id)providers
{
  v21 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  objc_storeStrong(&self->_outerLabelProviders, providers);
  if ([(NSArray *)self->_outerLabelProviders count])
  {
    v14 = providersCopy;
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

        textProvider = [*(*(&v16 + 1) + 8 * v10) textProvider];
        [(CLKUICurvedColoringLabel *)self->_outerLabel setTextProvider:textProvider];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __66__CDRichComplicationCornerStackedTextView_setOuterLabelProviders___block_invoke;
        v15[3] = &unk_278DF3558;
        v15[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v15];
        isTextTruncated = [(CLKUICurvedColoringLabel *)self->_outerLabel isTextTruncated];

        if (!isTextTruncated)
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

    providersCopy = v14;
  }

  else
  {
    [(CLKUICurvedColoringLabel *)self->_outerLabel setImageView:0];
    [(CLKUICurvedColoringLabel *)self->_outerLabel setTextProvider:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  innerTextProvider = [templateCopy innerTextProvider];
  [innerLabel setTextProvider:innerTextProvider];

  outerLabel = self->_outerLabel;
  outerTextProvider = [templateCopy outerTextProvider];

  [(CLKUICurvedColoringLabel *)outerLabel setTextProvider:outerTextProvider];
}

- (void)_enumerateLabelsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationCornerStackedTextView;
  blockCopy = block;
  [(CDRichComplicationCornerBaseTextView *)&v5 _enumerateLabelsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_outerLabel);
}

- (void)_editingDidEnd
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel editingDidEnd];

  outerLabel = self->_outerLabel;

  [(CLKUICurvedColoringLabel *)outerLabel editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel transitionToMonochromeWithFraction:2 style:fraction];

  outerLabel = self->_outerLabel;

  [(CLKUICurvedColoringLabel *)outerLabel transitionToMonochromeWithFraction:0 style:fraction];
}

- (void)updateMonochromeColor
{
  innerLabel = [(CDRichComplicationCornerBaseTextView *)self innerLabel];
  [innerLabel updateMonochromeColorWithStyle:2];

  outerLabel = self->_outerLabel;

  [(CLKUICurvedColoringLabel *)outerLabel updateMonochromeColorWithStyle:0];
}

@end