@interface CDRichComplicationCornerBaseTextView
- (CDRichComplicationCornerBaseTextView)initWithFontFallback:(int64_t)fallback;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)layoutSubviews;
- (void)setInnerLabelProviders:(id)providers;
@end

@implementation CDRichComplicationCornerBaseTextView

- (CDRichComplicationCornerBaseTextView)initWithFontFallback:(int64_t)fallback
{
  v11.receiver = self;
  v11.super_class = CDRichComplicationCornerBaseTextView;
  v3 = [(CDRichComplicationCornerView *)&v11 initWithFontFallback:fallback];
  v4 = v3;
  if (v3)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    device = [(CDRichComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_7(device, v9);

    v6 = [(CDRichComplicationCornerView *)v4 _createAndAddColoringLabelWithFontSize:*v9];
    innerLabel = v4->_innerLabel;
    v4->_innerLabel = v6;

    CLKDegreesToRadians();
    [(CLKUICurvedColoringLabel *)v4->_innerLabel setMaxAngularWidth:?];
  }

  return v4;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CDRichComplicationCornerBaseTextView;
  [(CDRichComplicationCornerBaseTextView *)&v15 layoutSubviews];
  v14 = 0.0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(CDRichComplicationView *)self device:0];
  ___LayoutConstants_block_invoke_7(v3, &v9);

  cornerComplicationPosition = [(CDRichComplicationCornerView *)self cornerComplicationPosition];
  if (cornerComplicationPosition <= 1)
  {
    if (cornerComplicationPosition > 1)
    {
      goto LABEL_8;
    }

    [(CLKUICurvedColoringLabel *)self->_innerLabel setCircleRadius:*(&v10 + 1) + *(&v11 + 1)];
    [(CLKUICurvedColoringLabel *)self->_innerLabel setInterior:0];
    v5 = *(&v13 + 1);
    goto LABEL_7;
  }

  if (cornerComplicationPosition == 2 || cornerComplicationPosition == 3)
  {
    [(CLKUICurvedColoringLabel *)self->_innerLabel setCircleRadius:*&v11 + *&v12];
    [(CLKUICurvedColoringLabel *)self->_innerLabel setInterior:1];
    v5 = v14;
LABEL_7:
    [(CLKUICurvedColoringLabel *)self->_innerLabel setTracking:v5];
  }

LABEL_8:
  innerLabel = self->_innerLabel;
  v7 = *(&v12 + 1);
  [(CDRichComplicationCornerView *)self innerComponentRotationInDegree];
  [(CDRichComplicationCornerView *)self _layoutCurvedLabel:innerLabel centerAngleInDegree:v7 editingRotationInDegree:v8];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  v9[0] = configuration->var0;
  v5 = configuration->var1;
  var2 = configuration->var2;
  v10 = v5;
  v11 = var2;
  v8.receiver = self;
  v8.super_class = CDRichComplicationCornerBaseTextView;
  [(CDRichComplicationView *)&v8 _setFontConfiguration:v9];
  if (configuration->var1)
  {
    [(CDRichComplicationView *)self _updateColoringLabel:self->_innerLabel withFontDescriptor:configuration->var2 andSizeFactor:?];
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

    [(CDRichComplicationCornerView *)self _updateColoringLabel:self->_innerLabel withFontWeight:*v7];
  }
}

- (void)setInnerLabelProviders:(id)providers
{
  v30 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  objc_storeStrong(&self->_innerLabelProviders, providers);
  if ([(NSArray *)self->_innerLabelProviders count])
  {
    v21 = providersCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = self->_innerLabelProviders;
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v23 = *v26;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        imageProvider = [v9 imageProvider];
        if ([imageProvider conformsToProtocol:&unk_285718B28])
        {
          innerLabel = self->_innerLabel;
          v12 = imageProvider;
          font = [(CLKUICurvedColoringLabel *)innerLabel font];
          [v12 setFont:font];

          [v12 setScale:2];
        }

        imageView = [(CLKUICurvedColoringLabel *)self->_innerLabel imageView];
        if (![imageView conformsToProtocol:&unk_285717968] || !+[CDComplicationImageViewProvider existingImageView:supportsImageProvider:](CDComplicationImageViewProvider, "existingImageView:supportsImageProvider:", imageView, imageProvider))
        {
          v15 = [CDComplicationImageViewProvider viewForImageProvider:imageProvider];

          v16 = self->_innerLabel;
          device = [(CDRichComplicationView *)self device];
          [(CLKUICurvedColoringLabel *)v16 setImageView:v15 placement:1 padding:CDRichComplicationCornerInnerImagePadding(device)];

          imageView = v15;
        }

        [imageView setImageProvider:imageProvider];
        textProvider = [v9 textProvider];
        [(CLKUICurvedColoringLabel *)self->_innerLabel setTextProvider:textProvider];
        if (imageProvider && !textProvider)
        {
          [(CLKUICurvedColoringLabel *)self->_innerLabel setText:@"​"];
          [(CLKUICurvedColoringLabel *)self->_innerLabel setImagePadding:0.0];
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __63__CDRichComplicationCornerBaseTextView_setInnerLabelProviders___block_invoke;
        v24[3] = &unk_278DF3558;
        v24[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v24];
        isTextTruncated = [(CLKUICurvedColoringLabel *)self->_innerLabel isTextTruncated];

        if (!isTextTruncated)
        {
          break;
        }

        if (v7 == ++v8)
        {
          v7 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    providersCopy = v21;
  }

  else
  {
    [(CLKUICurvedColoringLabel *)self->_innerLabel setImageView:0];
    [(CLKUICurvedColoringLabel *)self->_innerLabel setTextProvider:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end