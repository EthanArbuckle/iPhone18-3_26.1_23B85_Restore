@interface NTKModularSmallStackTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (CLKUIColoringLabel)subtitleLabel;
- (CLKUIColoringLabel)titleLabel;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_update;
- (void)_updateLayoutForLabel:(id)a3 baselineOffset:(double)a4;
@end

@implementation NTKModularSmallStackTemplateView

- (void)_update
{
  v27 = [(NTKModularTemplateView *)self complicationTemplate];
  v3 = [(NTKModuleView *)self device];
  v4 = [NTKOneColumnModularSmallLayoutAttributes attributesForTemplate:v27 forDevice:v3];

  v5 = [(NTKModularSmallStackTemplateView *)self subtitleLabel];
  v6 = [v4 subtitleFont];
  [v5 setFont:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    imageView = self->_imageView;
    self->_imageView = 0;

    v8 = [(NTKModularSmallStackTemplateView *)self titleLabel];
    v9 = [v4 titleFont];
    [v8 setFont:v9];

    v10 = [(NTKModularSmallStackTemplateView *)self titleLabel];
    v11 = [v27 line1TextProvider];
    [v10 setTextProvider:v11];

    v12 = [(NTKModularSmallStackTemplateView *)self subtitleLabel];
    v13 = [v27 line2TextProvider];
    [v12 setTextProvider:v13];

    v14 = [v27 highlightMode];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(CLKUIColoringLabel *)self->_titleLabel removeFromSuperview];
      titleLabel = self->_titleLabel;
      self->_titleLabel = 0;

      v17 = [v27 line1ImageProvider];
      v18 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:v17];
      v19 = self->_imageView;
      if ((v18 & 1) == 0)
      {
        [(CDComplicationImageView *)v19 removeFromSuperview];
        v20 = [off_27877BE78 viewForImageProvider:v17];
        v21 = self->_imageView;
        self->_imageView = v20;

        v22 = self->_imageView;
        if (v22)
        {
          v23 = [(NTKModuleView *)self foregroundColor];
          [(CDComplicationImageView *)v22 setColor:v23];

          v24 = [(NTKModuleView *)self contentView];
          [v24 addSubview:self->_imageView];

          v19 = self->_imageView;
        }

        else
        {
          v19 = 0;
        }
      }

      [(CDComplicationImageView *)v19 setImageProvider:v17];
      v25 = [(NTKModularSmallStackTemplateView *)self subtitleLabel];
      v26 = [v27 line2TextProvider];
      [v25 setTextProvider:v26];

      v14 = [v27 highlightMode];
    }

    else
    {
      v14 = 0;
    }
  }

  [(NTKModularTemplateView *)self setHighlightMode:v14];
  v15 = [(NTKModuleView *)self contentView];
  [v15 setNeedsLayout];
}

- (void)_layoutContentView
{
  v21 = [(NTKModularTemplateView *)self complicationTemplate];
  v3 = [(NTKModuleView *)self device];
  v4 = [NTKOneColumnModularSmallLayoutAttributes attributesForTemplate:v21 forDevice:v3];

  [v4 subtitleBaselineOffset];
  [(NTKModularSmallStackTemplateView *)self _updateLayoutForLabel:self->_subtitleLabel baselineOffset:?];
  if (self->_titleLabel && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    [v4 titleBaselineOffset];
    [(NTKModularSmallStackTemplateView *)self _updateLayoutForLabel:self->_titleLabel baselineOffset:?];
  }

  else if (self->_imageView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = [(NTKModuleView *)self contentView];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v4 marginWidth];
      v15 = v14;
      v23.origin.x = v7;
      v23.origin.y = v9;
      v23.size.width = v11;
      v23.size.height = v13;
      v24 = CGRectInset(v23, v15, 0.0);
      width = v24.size.width;
      height = v24.size.height;

      [(CDComplicationImageView *)self->_imageView sizeThatFits:width, height];
      [v4 imageHeight];
      [v4 imageOriginY];
      [v4 imageHeight];
      v18 = [(NTKModuleView *)self device];
      CLKRectCenteredXInRectForDevice();

      imageView = self->_imageView;
      v20 = [(NTKModuleView *)self device];
      CLKPixelAlignRectForDevice();
      [(CDComplicationImageView *)imageView setFrame:?];
    }
  }
}

- (void)_updateLayoutForLabel:(id)a3 baselineOffset:(double)a4
{
  v39 = a3;
  v5 = [(NTKModularTemplateView *)self complicationTemplate];
  v6 = [(NTKModuleView *)self device];
  v7 = [NTKOneColumnModularSmallLayoutAttributes attributesForTemplate:v5 forDevice:v6];

  v8 = [(NTKModuleView *)self contentView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v7 marginWidth];
  v18 = v17;
  v19 = 0.0;
  v41.origin.x = v10;
  v41.origin.y = v12;
  v41.size.width = v14;
  v41.size.height = v16;
  v42 = CGRectInset(v41, v18, 0.0);
  width = v42.size.width;
  height = v42.size.height;

  [v39 setMaxWidth:width];
  [v39 sizeThatFits:{width, height}];
  v23 = v22;
  v24 = [v39 textProvider];
  v25 = [v24 shrinkTextPreference];

  if (v25)
  {
    v26 = [v39 font];
    [v26 pointSize];
    v28 = v27;

    if (v25 == 1)
    {
      [v7 minimumFontSize];
      v19 = v29;
    }

    if (width > 0.0 && v23 > width && v28 > v19)
    {
      do
      {
        v28 = v28 + -1.0;
        v30 = [MEMORY[0x277CBBB08] systemFontOfSize:v28];
        [v39 widthForMaxWidth:v30 withFont:width];
        v32 = v31;
      }

      while (v32 > width && v28 > v19);
    }

    v34 = [MEMORY[0x277CBBB08] systemFontOfSize:v28];
    [v39 setFont:v34];

    [v39 sizeThatFits:{width, height}];
  }

  v35 = [v39 font];
  [v35 ascender];
  v36 = [(NTKModuleView *)self device];
  CLKRoundForDevice();

  v37 = [(NTKModuleView *)self device];
  CLKRectCenteredXInRectForDevice();

  v38 = [(NTKModuleView *)self device];
  CLKPixelAlignRectForDevice();
  [v39 setFrame:?];
}

- (CLKUIColoringLabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    v6 = self->_titleLabel;
    v7 = [(NTKModularTemplateView *)self timeTravelDate];
    [(CLKUIColoringLabel *)v6 setInTimeTravel:v7 != 0];

    v8 = self->_titleLabel;
    v9 = [(NTKModuleView *)self foregroundColor];
    [(CLKUIColoringLabel *)v8 setTextColor:v9];

    v10 = [(NTKModuleView *)self contentView];
    [v10 addSubview:self->_titleLabel];

    objc_initWeak(&location, self);
    v11 = self->_titleLabel;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__NTKModularSmallStackTemplateView_titleLabel__block_invoke;
    v16[3] = &unk_27877DC30;
    objc_copyWeak(&v17, &location);
    [(CLKUIColoringLabel *)v11 setNowProvider:v16];
    v12 = self->_titleLabel;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__NTKModularSmallStackTemplateView_titleLabel__block_invoke_2;
    v14[3] = &unk_27877DC58;
    objc_copyWeak(&v15, &location);
    [(CLKUIColoringLabel *)v12 setNeedsResizeHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

id __46__NTKModularSmallStackTemplateView_titleLabel__block_invoke(uint64_t a1)
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

void __46__NTKModularSmallStackTemplateView_titleLabel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

- (CLKUIColoringLabel)subtitleLabel
{
  subtitleLabel = self->_subtitleLabel;
  if (!subtitleLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_subtitleLabel;
    self->_subtitleLabel = v4;

    v6 = self->_subtitleLabel;
    v7 = [(NTKModularTemplateView *)self timeTravelDate];
    [(CLKUIColoringLabel *)v6 setInTimeTravel:v7 != 0];

    v8 = self->_subtitleLabel;
    v9 = [(NTKModuleView *)self secondaryForegroundColor];
    [(CLKUIColoringLabel *)v8 setTextColor:v9];

    v10 = [(NTKModuleView *)self contentView];
    [v10 addSubview:self->_subtitleLabel];

    objc_initWeak(&location, self);
    v11 = self->_subtitleLabel;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __49__NTKModularSmallStackTemplateView_subtitleLabel__block_invoke;
    v16[3] = &unk_27877DC30;
    objc_copyWeak(&v17, &location);
    [(CLKUIColoringLabel *)v11 setNowProvider:v16];
    v12 = self->_subtitleLabel;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__NTKModularSmallStackTemplateView_subtitleLabel__block_invoke_2;
    v14[3] = &unk_27877DC58;
    objc_copyWeak(&v15, &location);
    [(CLKUIColoringLabel *)v12 setNeedsResizeHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    subtitleLabel = self->_subtitleLabel;
  }

  return subtitleLabel;
}

id __49__NTKModularSmallStackTemplateView_subtitleLabel__block_invoke(uint64_t a1)
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

void __49__NTKModularSmallStackTemplateView_subtitleLabel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (handlesComplicationTemplate__onceToken != -1)
  {
    +[NTKModularSmallStackTemplateView handlesComplicationTemplate:];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = handlesComplicationTemplate___supportedClasses;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

void __64__NTKModularSmallStackTemplateView_handlesComplicationTemplate___block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = handlesComplicationTemplate___supportedClasses;
  handlesComplicationTemplate___supportedClasses = v0;
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_imageView);
}

@end