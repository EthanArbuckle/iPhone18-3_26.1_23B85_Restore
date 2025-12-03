@interface NTKModularSmallSimpleTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
+ (id)supportedTemplateClasses;
- (NTKModularSmallSimpleTemplateView)initWithFrame:(CGRect)frame;
- (double)_maxTextWidthForDynamicFontSize:(int64_t)size;
- (void)_configureWithImageTemplate:(id)template;
- (void)_configureWithTextTemplate:(id)template;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)block;
- (void)_layoutContentView;
- (void)_update;
@end

@implementation NTKModularSmallSimpleTemplateView

- (NTKModularSmallSimpleTemplateView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NTKModularSmallSimpleTemplateView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKModularSmallSimpleTemplateView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)_update
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(NTKModularSmallSimpleTemplateView *)self _configureWithTextTemplate:complicationTemplate];
  }

  else
  {
    [(NTKModularSmallSimpleTemplateView *)self _configureWithImageTemplate:complicationTemplate];
  }

  contentView = [(NTKModuleView *)self contentView];
  [contentView setNeedsLayout];
}

- (void)_layoutContentView
{
  contentView = [(NTKModuleView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_label)
  {
    maxDynamicFontSize = self->_maxDynamicFontSize;
    [(NTKModularSmallSimpleTemplateView *)self _maxTextWidthForDynamicFontSize:maxDynamicFontSize];
    v14 = v13;
    v15 = 0;
    if (v13 < 1.79769313e308 && (maxDynamicFontSize & 0x8000000000000000) == 0)
    {
      v16 = 0;
      do
      {
        [(NTKModularSmallSimpleTemplateView *)self _maxTextWidthForDynamicFontSize:maxDynamicFontSize];
        v14 = v17;
        isXL = [(NTKComplicationModuleView *)self isXL];
        device = [(NTKModuleView *)self device];
        v20 = device;
        if (isXL)
        {
          ___FontForExtraLargeDynamicSize_block_invoke(device, device);
        }

        else
        {
          ___FontForModularSmallDynamicSize_block_invoke(device, device);
        }
        v21 = ;
        v22 = [MEMORY[0x277CCABB0] numberWithInteger:maxDynamicFontSize];
        v15 = [v21 objectForKeyedSubscript:v22];

        [(CLKUIColoringLabel *)self->_label widthForMaxWidth:v15 withFont:v14];
        v24 = v23 <= v14 || maxDynamicFontSize-- <= 0;
        v16 = v15;
      }

      while (!v24);
    }

    [(CLKUIColoringLabel *)self->_label setFont:v15];
    [(CLKUIColoringLabel *)self->_label sizeToFit];
    [(CLKUIColoringLabel *)self->_label frame];
    if (v25 > v14)
    {
      [(CLKUIColoringLabel *)self->_label setFrame:?];
    }

    NTKPositionSimpleTemperatureLabel(self->_label, v5, v7, v9, v11);
  }

  imageView = self->_imageView;
  if (imageView)
  {
    [(CDComplicationImageView *)imageView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    device2 = [(NTKModuleView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = self->_imageView;

    [(CDComplicationImageView *)v36 setFrame:v29, v31, v33, v35];
  }
}

- (void)_configureWithTextTemplate:(id)template
{
  templateCopy = template;
  imageView = self->_imageView;
  if (imageView)
  {
    [(CDComplicationImageView *)imageView removeFromSuperview];
    v6 = self->_imageView;
    self->_imageView = 0;
  }

  if (!self->_label)
  {
    v7 = objc_opt_new();
    label = self->_label;
    self->_label = v7;

    v9 = self->_label;
    foregroundColor = [(NTKModuleView *)self foregroundColor];
    [(CLKUIColoringLabel *)v9 setTextColor:foregroundColor];

    v11 = self->_label;
    timeTravelDate = [(NTKModularTemplateView *)self timeTravelDate];
    [(CLKUIColoringLabel *)v11 setInTimeTravel:timeTravelDate != 0];

    objc_initWeak(&location, self);
    v13 = self->_label;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__NTKModularSmallSimpleTemplateView__configureWithTextTemplate___block_invoke;
    v24[3] = &unk_27877DC30;
    objc_copyWeak(&v25, &location);
    [(CLKUIColoringLabel *)v13 setNowProvider:v24];
    v14 = self->_label;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__NTKModularSmallSimpleTemplateView__configureWithTextTemplate___block_invoke_2;
    v22[3] = &unk_27877DC58;
    objc_copyWeak(&v23, &location);
    [(CLKUIColoringLabel *)v14 setNeedsResizeHandler:v22];
    contentView = [(NTKModuleView *)self contentView];
    [contentView addSubview:self->_label];

    v16 = self->_label;
    device = [(NTKModuleView *)self device];
    _LayoutConstants_4(device, [(NTKComplicationModuleView *)self isXL], &v20);
    [(CLKUIColoringLabel *)v16 setMaxWidth:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  self->_maxDynamicFontSize = [templateCopy maxDynamicFontSize];
  v18 = self->_label;
  textProvider = [templateCopy textProvider];
  [(CLKUIColoringLabel *)v18 setTextProvider:textProvider];
}

id __64__NTKModularSmallSimpleTemplateView__configureWithTextTemplate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained timeTravelDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBBAD8] complicationDate];
  }

  v5 = v4;

  return v5;
}

void __64__NTKModularSmallSimpleTemplateView__configureWithTextTemplate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

- (void)_configureWithImageTemplate:(id)template
{
  templateCopy = template;
  label = self->_label;
  if (label)
  {
    [(CLKUIColoringLabel *)label removeFromSuperview];
    v5 = self->_label;
    self->_label = 0;
  }

  imageProvider = [templateCopy imageProvider];
  v7 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:imageProvider];
  imageView = self->_imageView;
  if ((v7 & 1) == 0)
  {
    [(CDComplicationImageView *)imageView removeFromSuperview];
    v9 = [off_27877BE78 viewForImageProvider:imageProvider];
    v10 = self->_imageView;
    self->_imageView = v9;

    v11 = self->_imageView;
    if (v11)
    {
      foregroundColor = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v11 setColor:foregroundColor];

      contentView = [(NTKModuleView *)self contentView];
      [contentView addSubview:self->_imageView];

      imageView = self->_imageView;
    }

    else
    {
      imageView = 0;
    }
  }

  [(CDComplicationImageView *)imageView setImageProvider:imageProvider];
}

- (double)_maxTextWidthForDynamicFontSize:(int64_t)size
{
  v4 = 0.0;
  if (size <= 1)
  {
    if (!size)
    {
      device = [(NTKModuleView *)self device];
      _LayoutConstants_4(device, [(NTKComplicationModuleView *)self isXL], &v14);
      v4 = v15;
      goto LABEL_12;
    }

    if (size == 1)
    {
      device = [(NTKModuleView *)self device];
      _LayoutConstants_4(device, [(NTKComplicationModuleView *)self isXL], &v12);
      v4 = v13;
      goto LABEL_12;
    }
  }

  else
  {
    switch(size)
    {
      case 2:
        device = [(NTKModuleView *)self device];
        _LayoutConstants_4(device, [(NTKComplicationModuleView *)self isXL], &v10);
        v4 = v11;
        goto LABEL_12;
      case 3:
        device = [(NTKModuleView *)self device];
        _LayoutConstants_4(device, [(NTKComplicationModuleView *)self isXL], &v9);
        v4 = *(&v9 + 1);
        goto LABEL_12;
      case 4:
        device = [(NTKModuleView *)self device];
        _LayoutConstants_4(device, [(NTKComplicationModuleView *)self isXL], v8);
        v4 = v8[0];
LABEL_12:

        break;
    }
  }

  [(NTKModularSmallSimpleTemplateView *)self frame];
  return fmin(v4, v6);
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_imageView);
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  v15 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  [self supportedTemplateClasses];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)supportedTemplateClasses
{
  if (supportedTemplateClasses_onceToken_0 != -1)
  {
    +[NTKModularSmallSimpleTemplateView supportedTemplateClasses];
  }

  v3 = supportedTemplateClasses__supportedClasses_0;

  return v3;
}

void __61__NTKModularSmallSimpleTemplateView_supportedTemplateClasses__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = supportedTemplateClasses__supportedClasses_0;
  supportedTemplateClasses__supportedClasses_0 = v0;
}

@end