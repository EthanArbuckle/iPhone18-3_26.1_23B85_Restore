@interface NTKModularSmallSimpleTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
+ (id)supportedTemplateClasses;
- (NTKModularSmallSimpleTemplateView)initWithFrame:(CGRect)a3;
- (double)_maxTextWidthForDynamicFontSize:(int64_t)a3;
- (void)_configureWithImageTemplate:(id)a3;
- (void)_configureWithTextTemplate:(id)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_update;
@end

@implementation NTKModularSmallSimpleTemplateView

- (NTKModularSmallSimpleTemplateView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKModularSmallSimpleTemplateView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKModularSmallSimpleTemplateView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)_update
{
  v4 = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(NTKModularSmallSimpleTemplateView *)self _configureWithTextTemplate:v4];
  }

  else
  {
    [(NTKModularSmallSimpleTemplateView *)self _configureWithImageTemplate:v4];
  }

  v3 = [(NTKModuleView *)self contentView];
  [v3 setNeedsLayout];
}

- (void)_layoutContentView
{
  v3 = [(NTKModuleView *)self contentView];
  [v3 bounds];
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
        v18 = [(NTKComplicationModuleView *)self isXL];
        v19 = [(NTKModuleView *)self device];
        v20 = v19;
        if (v18)
        {
          ___FontForExtraLargeDynamicSize_block_invoke(v19, v19);
        }

        else
        {
          ___FontForModularSmallDynamicSize_block_invoke(v19, v19);
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
    v27 = [(NTKModuleView *)self device];
    CLKRectCenteredIntegralRectForDevice();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = self->_imageView;

    [(CDComplicationImageView *)v36 setFrame:v29, v31, v33, v35];
  }
}

- (void)_configureWithTextTemplate:(id)a3
{
  v4 = a3;
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
    v10 = [(NTKModuleView *)self foregroundColor];
    [(CLKUIColoringLabel *)v9 setTextColor:v10];

    v11 = self->_label;
    v12 = [(NTKModularTemplateView *)self timeTravelDate];
    [(CLKUIColoringLabel *)v11 setInTimeTravel:v12 != 0];

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
    v15 = [(NTKModuleView *)self contentView];
    [v15 addSubview:self->_label];

    v16 = self->_label;
    v17 = [(NTKModuleView *)self device];
    _LayoutConstants_4(v17, [(NTKComplicationModuleView *)self isXL], &v20);
    [(CLKUIColoringLabel *)v16 setMaxWidth:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  self->_maxDynamicFontSize = [v4 maxDynamicFontSize];
  v18 = self->_label;
  v19 = [v4 textProvider];
  [(CLKUIColoringLabel *)v18 setTextProvider:v19];
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

- (void)_configureWithImageTemplate:(id)a3
{
  v14 = a3;
  label = self->_label;
  if (label)
  {
    [(CLKUIColoringLabel *)label removeFromSuperview];
    v5 = self->_label;
    self->_label = 0;
  }

  v6 = [v14 imageProvider];
  v7 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:v6];
  imageView = self->_imageView;
  if ((v7 & 1) == 0)
  {
    [(CDComplicationImageView *)imageView removeFromSuperview];
    v9 = [off_27877BE78 viewForImageProvider:v6];
    v10 = self->_imageView;
    self->_imageView = v9;

    v11 = self->_imageView;
    if (v11)
    {
      v12 = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v11 setColor:v12];

      v13 = [(NTKModuleView *)self contentView];
      [v13 addSubview:self->_imageView];

      imageView = self->_imageView;
    }

    else
    {
      imageView = 0;
    }
  }

  [(CDComplicationImageView *)imageView setImageProvider:v6];
}

- (double)_maxTextWidthForDynamicFontSize:(int64_t)a3
{
  v4 = 0.0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v5 = [(NTKModuleView *)self device];
      _LayoutConstants_4(v5, [(NTKComplicationModuleView *)self isXL], &v14);
      v4 = v15;
      goto LABEL_12;
    }

    if (a3 == 1)
    {
      v5 = [(NTKModuleView *)self device];
      _LayoutConstants_4(v5, [(NTKComplicationModuleView *)self isXL], &v12);
      v4 = v13;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        v5 = [(NTKModuleView *)self device];
        _LayoutConstants_4(v5, [(NTKComplicationModuleView *)self isXL], &v10);
        v4 = v11;
        goto LABEL_12;
      case 3:
        v5 = [(NTKModuleView *)self device];
        _LayoutConstants_4(v5, [(NTKComplicationModuleView *)self isXL], &v9);
        v4 = *(&v9 + 1);
        goto LABEL_12;
      case 4:
        v5 = [(NTKModuleView *)self device];
        _LayoutConstants_4(v5, [(NTKComplicationModuleView *)self isXL], v8);
        v4 = v8[0];
LABEL_12:

        break;
    }
  }

  [(NTKModularSmallSimpleTemplateView *)self frame];
  return fmin(v4, v6);
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_imageView);
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 supportedTemplateClasses];
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