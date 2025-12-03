@interface NTKModularSmallStackTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (CLKUIColoringLabel)subtitleLabel;
- (CLKUIColoringLabel)titleLabel;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)block;
- (void)_layoutContentView;
- (void)_update;
- (void)_updateLayoutForLabel:(id)label baselineOffset:(double)offset;
@end

@implementation NTKModularSmallStackTemplateView

- (void)_update
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  device = [(NTKModuleView *)self device];
  v4 = [NTKOneColumnModularSmallLayoutAttributes attributesForTemplate:complicationTemplate forDevice:device];

  subtitleLabel = [(NTKModularSmallStackTemplateView *)self subtitleLabel];
  subtitleFont = [v4 subtitleFont];
  [subtitleLabel setFont:subtitleFont];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [(CDComplicationImageView *)self->_imageView removeFromSuperview];
    imageView = self->_imageView;
    self->_imageView = 0;

    titleLabel = [(NTKModularSmallStackTemplateView *)self titleLabel];
    titleFont = [v4 titleFont];
    [titleLabel setFont:titleFont];

    titleLabel2 = [(NTKModularSmallStackTemplateView *)self titleLabel];
    line1TextProvider = [complicationTemplate line1TextProvider];
    [titleLabel2 setTextProvider:line1TextProvider];

    subtitleLabel2 = [(NTKModularSmallStackTemplateView *)self subtitleLabel];
    line2TextProvider = [complicationTemplate line2TextProvider];
    [subtitleLabel2 setTextProvider:line2TextProvider];

    highlightMode = [complicationTemplate highlightMode];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [(CLKUIColoringLabel *)self->_titleLabel removeFromSuperview];
      titleLabel = self->_titleLabel;
      self->_titleLabel = 0;

      line1ImageProvider = [complicationTemplate line1ImageProvider];
      v18 = [off_27877BE78 existingImageView:self->_imageView supportsImageProvider:line1ImageProvider];
      v19 = self->_imageView;
      if ((v18 & 1) == 0)
      {
        [(CDComplicationImageView *)v19 removeFromSuperview];
        v20 = [off_27877BE78 viewForImageProvider:line1ImageProvider];
        v21 = self->_imageView;
        self->_imageView = v20;

        v22 = self->_imageView;
        if (v22)
        {
          foregroundColor = [(NTKModuleView *)self foregroundColor];
          [(CDComplicationImageView *)v22 setColor:foregroundColor];

          contentView = [(NTKModuleView *)self contentView];
          [contentView addSubview:self->_imageView];

          v19 = self->_imageView;
        }

        else
        {
          v19 = 0;
        }
      }

      [(CDComplicationImageView *)v19 setImageProvider:line1ImageProvider];
      subtitleLabel3 = [(NTKModularSmallStackTemplateView *)self subtitleLabel];
      line2TextProvider2 = [complicationTemplate line2TextProvider];
      [subtitleLabel3 setTextProvider:line2TextProvider2];

      highlightMode = [complicationTemplate highlightMode];
    }

    else
    {
      highlightMode = 0;
    }
  }

  [(NTKModularTemplateView *)self setHighlightMode:highlightMode];
  contentView2 = [(NTKModuleView *)self contentView];
  [contentView2 setNeedsLayout];
}

- (void)_layoutContentView
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  device = [(NTKModuleView *)self device];
  v4 = [NTKOneColumnModularSmallLayoutAttributes attributesForTemplate:complicationTemplate forDevice:device];

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
      contentView = [(NTKModuleView *)self contentView];
      [contentView bounds];
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
      device2 = [(NTKModuleView *)self device];
      CLKRectCenteredXInRectForDevice();

      imageView = self->_imageView;
      device3 = [(NTKModuleView *)self device];
      CLKPixelAlignRectForDevice();
      [(CDComplicationImageView *)imageView setFrame:?];
    }
  }
}

- (void)_updateLayoutForLabel:(id)label baselineOffset:(double)offset
{
  labelCopy = label;
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  device = [(NTKModuleView *)self device];
  v7 = [NTKOneColumnModularSmallLayoutAttributes attributesForTemplate:complicationTemplate forDevice:device];

  contentView = [(NTKModuleView *)self contentView];
  [contentView bounds];
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

  [labelCopy setMaxWidth:width];
  [labelCopy sizeThatFits:{width, height}];
  v23 = v22;
  textProvider = [labelCopy textProvider];
  shrinkTextPreference = [textProvider shrinkTextPreference];

  if (shrinkTextPreference)
  {
    font = [labelCopy font];
    [font pointSize];
    v28 = v27;

    if (shrinkTextPreference == 1)
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
        [labelCopy widthForMaxWidth:v30 withFont:width];
        v32 = v31;
      }

      while (v32 > width && v28 > v19);
    }

    v34 = [MEMORY[0x277CBBB08] systemFontOfSize:v28];
    [labelCopy setFont:v34];

    [labelCopy sizeThatFits:{width, height}];
  }

  font2 = [labelCopy font];
  [font2 ascender];
  device2 = [(NTKModuleView *)self device];
  CLKRoundForDevice();

  device3 = [(NTKModuleView *)self device];
  CLKRectCenteredXInRectForDevice();

  device4 = [(NTKModuleView *)self device];
  CLKPixelAlignRectForDevice();
  [labelCopy setFrame:?];
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
    timeTravelDate = [(NTKModularTemplateView *)self timeTravelDate];
    [(CLKUIColoringLabel *)v6 setInTimeTravel:timeTravelDate != 0];

    v8 = self->_titleLabel;
    foregroundColor = [(NTKModuleView *)self foregroundColor];
    [(CLKUIColoringLabel *)v8 setTextColor:foregroundColor];

    contentView = [(NTKModuleView *)self contentView];
    [contentView addSubview:self->_titleLabel];

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
    timeTravelDate = [(NTKModularTemplateView *)self timeTravelDate];
    [(CLKUIColoringLabel *)v6 setInTimeTravel:timeTravelDate != 0];

    v8 = self->_subtitleLabel;
    secondaryForegroundColor = [(NTKModuleView *)self secondaryForegroundColor];
    [(CLKUIColoringLabel *)v8 setTextColor:secondaryForegroundColor];

    contentView = [(NTKModuleView *)self contentView];
    [contentView addSubview:self->_subtitleLabel];

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

+ (BOOL)handlesComplicationTemplate:(id)template
{
  v14 = *MEMORY[0x277D85DE8];
  templateCopy = template;
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

- (void)_enumerateForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_imageView);
}

@end