@interface NTKModularLargeStackTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKModularLargeStackTemplateView)initWithFrame:(CGRect)a3;
- (id)_newLabelSubview;
- (id)_newLabelSubviewWithFont:(id)a3;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3;
- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3;
- (void)_layoutContentView;
- (void)_update;
- (void)_updateForStandardBodyTemplate:(id)a3;
- (void)_updateForTallBodyTemplate:(id)a3;
- (void)_updateLabelsMaxWidths;
@end

@implementation NTKModularLargeStackTemplateView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (NTKModularLargeStackTemplateView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = NTKModularLargeStackTemplateView;
  v3 = [(NTKModuleView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v5 = [(NTKModuleView *)v3 device];
    ___LayoutConstants_block_invoke_32(v5, v18);

    v6 = *v18;
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*v18 weight:*MEMORY[0x277D74410]];
    v8 = [MEMORY[0x277CBBB08] systemFontOfSize:v6];
    v9 = [(NTKModularLargeStackTemplateView *)v4 _newLabelSubviewWithFont:v7];
    headerLeadingLabel = v4->_headerLeadingLabel;
    v4->_headerLeadingLabel = v9;

    v11 = [(NTKModularLargeStackTemplateView *)v4 _newLabelSubviewWithFont:v7];
    headerTrailingLabel = v4->_headerTrailingLabel;
    v4->_headerTrailingLabel = v11;

    v13 = [(NTKModularLargeStackTemplateView *)v4 _newLabelSubviewWithFont:v8];
    body1Label = v4->_body1Label;
    v4->_body1Label = v13;

    v15 = [(NTKModularLargeStackTemplateView *)v4 _newLabelSubviewWithFont:v8];
    body2Label = v4->_body2Label;
    v4->_body2Label = v15;
  }

  return v4;
}

- (void)_layoutContentView
{
  v56 = 0.0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v3 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(v3, &v53);

  v4 = [(NTKModuleView *)self device];
  v5 = _LargeModularLayoutConstants(v4);
  v51 = v6;

  v7 = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(NTKModularTemplateView *)self complicationTemplate];
    v11 = [v10 body2TextProvider];
    v9 = v11 != 0;
  }

  [(NTKModularLargeStackTemplateView *)self _updateLabelsMaxWidths];
  headerGlyph = self->_headerGlyph;
  if (headerGlyph && ([(CDComplicationImageView *)headerGlyph isHidden]& 1) == 0)
  {
    [(CDComplicationImageView *)self->_headerGlyph sizeToFit];
    [(CDComplicationImageView *)self->_headerGlyph center];
    v14 = v13;
    v15 = [(CLKUIColoringLabel *)self->_headerLeadingLabel font];
    [v15 capHeight];
    v16 = [(NTKModuleView *)self device];
    CLKRoundForDevice();
    v18 = v5 - v17;

    [(CDComplicationImageView *)self->_headerGlyph setCenter:v14, v18];
  }

  [(CLKUIColoringLabel *)self->_headerLeadingLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_headerLeadingLabel frame];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel frame];
  [(CLKUIColoringLabel *)self->_headerLeadingLabel maxWidth];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel maxWidth];
  v19 = [(CLKUIColoringLabel *)self->_headerLeadingLabel font];
  [v19 ascender];
  v20 = [(NTKModuleView *)self device];
  CLKCeilForDevice();

  headerLeadingLabel = self->_headerLeadingLabel;
  v22 = [(NTKModuleView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)headerLeadingLabel setFrame:?];

  headerTrailingLabel = self->_headerTrailingLabel;
  v24 = [(NTKModuleView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)headerTrailingLabel setFrame:?];

  v25 = MEMORY[0x277CBEB18];
  v26 = *&v54;
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:*&v54];
  v52 = [v25 arrayWithObject:v27];

  v28 = self->_headerGlyph;
  if (v28 && ([(CDComplicationImageView *)v28 isHidden]& 1) == 0)
  {
    [v52 addObject:self->_headerGlyph];
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v55 + 1)];
    [v52 addObject:v29];
  }

  [v52 addObject:self->_headerLeadingLabel];
  if (([(CLKUIColoringLabel *)self->_headerTrailingLabel isHidden]& 1) == 0)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
    [v52 addObject:v30];

    [v52 addObject:self->_headerTrailingLabel];
  }

  [(NTKModuleView *)self naturalHorizontalLayoutForViewsAndSpacing:v52 columnAlignmentSpacing:0];
  v31 = *&v55;
  if ((isKindOfClass & 1) == 0)
  {
    v31 = v51;
  }

  v32 = v5 + v31;
  body1Glyph = self->_body1Glyph;
  if (body1Glyph)
  {
    [(CDComplicationImageView *)body1Glyph sizeToFit];
    [(CDComplicationImageView *)self->_body1Glyph center];
    v35 = v34;
    v36 = [(CLKUIColoringLabel *)self->_body1Label font];
    [v36 capHeight];
    v37 = [(NTKModuleView *)self device];
    CLKRoundForDevice();
    v39 = v32 - v38;

    [(CDComplicationImageView *)self->_body1Glyph setCenter:v35, v39];
  }

  [(CLKUIColoringLabel *)self->_body1Label frame];
  body1Label = self->_body1Label;
  [(CLKUIColoringLabel *)body1Label maxWidth];
  [(CLKUIColoringLabel *)body1Label sizeThatFits:?];
  [(CLKUIColoringLabel *)self->_body1Label maxWidth];
  v41 = [(CLKUIColoringLabel *)self->_body1Label font];
  [v41 ascender];
  v42 = [(NTKModuleView *)self device];
  CLKCeilForDevice();

  v43 = self->_body1Label;
  v44 = [(NTKModuleView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)v43 setFrame:?];

  v45 = [(NTKModuleView *)self viewsAndSpacingArrayForSpace:self->_body1Glyph view:self->_body1Label space:v26 view:*(&v55 + 1)];
  [(NTKModuleView *)self naturalHorizontalLayoutForViewsAndSpacing:v45 columnAlignmentSpacing:0];
  body2Label = self->_body2Label;
  if (v9)
  {
    [(CLKUIColoringLabel *)body2Label setHidden:0];
    [(CLKUIColoringLabel *)self->_body2Label frame];
    v47 = self->_body2Label;
    [(CLKUIColoringLabel *)v47 maxWidth];
    [(CLKUIColoringLabel *)v47 sizeThatFits:?];
    [(CLKUIColoringLabel *)self->_body2Label maxWidth];
    v48 = self->_body2Label;
    v49 = [(NTKModuleView *)self device];
    CLKPixelAlignRectForDevice();
    [(CLKUIColoringLabel *)v48 setFrame:?];

    v50 = [(NTKModuleView *)self viewsAndSpacingArrayForSpace:self->_body2Label view:v26];
    [(NTKModuleView *)self naturalHorizontalLayoutForViewsAndSpacing:v50 columnAlignmentSpacing:0];
  }

  else
  {
    [(CLKUIColoringLabel *)body2Label setHidden:1];
  }
}

- (void)_enumerateForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_body1Glyph);
  (*v4)(v6, self->_headerLeadingLabel);
  (*v4)(v6, self->_headerTrailingLabel);
}

- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)a3
{
  v4 = (a3 + 16);
  v5 = *(a3 + 2);
  v6 = a3;
  v5();
  (*v4)(v6, self->_body2Label);
}

- (id)_newLabelSubview
{
  v3 = objc_alloc_init(off_27877BEF8);
  [(NTKModularLargeStackTemplateView *)self bounds];
  [v3 setMaxWidth:v4];
  [v3 setUppercase:0];
  v5 = [(NTKModularTemplateView *)self timeTravelDate];
  [v3 setInTimeTravel:v5 != 0];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__NTKModularLargeStackTemplateView__newLabelSubview__block_invoke;
  v10[3] = &unk_27877DC30;
  objc_copyWeak(&v11, &location);
  [v3 setNowProvider:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NTKModularLargeStackTemplateView__newLabelSubview__block_invoke_2;
  v8[3] = &unk_27877DC58;
  objc_copyWeak(&v9, &location);
  [v3 setNeedsResizeHandler:v8];
  v6 = [(NTKModuleView *)self contentView];
  [v6 addSubview:v3];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return v3;
}

id __52__NTKModularLargeStackTemplateView__newLabelSubview__block_invoke(uint64_t a1)
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

void __52__NTKModularLargeStackTemplateView__newLabelSubview__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

- (id)_newLabelSubviewWithFont:(id)a3
{
  v4 = a3;
  v5 = [(NTKModularLargeStackTemplateView *)self _newLabelSubview];
  [v5 setFont:v4];

  return v5;
}

- (void)_update
{
  v4 = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKModularLargeStackTemplateView *)self _updateForStandardBodyTemplate:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKModularLargeStackTemplateView *)self _updateForTallBodyTemplate:v4];
    }
  }

  v3 = [(NTKModuleView *)self contentView];
  [v3 setNeedsLayout];
}

- (void)_updateForStandardBodyTemplate:(id)a3
{
  v33 = a3;
  v4 = [v33 headerImageProvider];
  v5 = [off_27877BE78 existingImageView:self->_headerGlyph supportsImageProvider:v4];
  headerGlyph = self->_headerGlyph;
  if ((v5 & 1) == 0)
  {
    [(CDComplicationImageView *)headerGlyph removeFromSuperview];
    v7 = [off_27877BE78 viewForImageProvider:v4];
    v8 = self->_headerGlyph;
    self->_headerGlyph = v7;

    if (self->_headerGlyph)
    {
      v9 = [(NTKModuleView *)self contentView];
      [v9 addSubview:self->_headerGlyph];

      v10 = self->_headerGlyph;
      v11 = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v10 setColor:v11];

      headerGlyph = self->_headerGlyph;
    }

    else
    {
      headerGlyph = 0;
    }
  }

  [(CDComplicationImageView *)headerGlyph setImageProvider:v4];
  v12 = [v33 body1ImageProvider];
  v13 = [off_27877BE78 existingImageView:self->_body1Glyph supportsImageProvider:v12];
  body1Glyph = self->_body1Glyph;
  if ((v13 & 1) == 0)
  {
    [(CDComplicationImageView *)body1Glyph removeFromSuperview];
    v15 = [off_27877BE78 viewForImageProvider:v12];
    v16 = self->_body1Glyph;
    self->_body1Glyph = v15;

    if (self->_body1Glyph)
    {
      v17 = [(NTKModuleView *)self contentView];
      [v17 addSubview:self->_body1Glyph];

      v18 = self->_body1Glyph;
      v19 = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v18 setColor:v19];

      body1Glyph = self->_body1Glyph;
    }

    else
    {
      body1Glyph = 0;
    }
  }

  [(CDComplicationImageView *)body1Glyph setImageProvider:v12];
  headerLeadingLabel = self->_headerLeadingLabel;
  v21 = [v33 headerTextProvider];
  [(CLKUIColoringLabel *)headerLeadingLabel setTextProvider:v21];

  v22 = [v33 headerTrailingTextProvider];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setTextProvider:v22];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setHidden:v22 == 0];
  self->_shouldTruncateHeaderLeadingLabelFirst = [v33 shouldTruncateHeaderLeadingLabelFirst];
  body1Label = self->_body1Label;
  v24 = [v33 body1TextProvider];
  [(CLKUIColoringLabel *)body1Label setTextProvider:v24];

  v25 = self->_body1Label;
  v26 = MEMORY[0x277CBBB08];
  v27 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(v27, v34);
  v28 = [v26 systemFontOfSize:v34[0]];
  [(CLKUIColoringLabel *)v25 setFont:v28];

  v29 = [v33 body2TextProvider];
  v30 = self->_body1Label;
  if (v29)
  {
    [(CLKUIColoringLabel *)v30 setNumberOfLines:1];
    body2Label = self->_body2Label;
    v32 = v29;
  }

  else
  {
    [(CLKUIColoringLabel *)v30 setNumberOfLines:2];
    body2Label = self->_body2Label;
    v32 = 0;
  }

  [(CLKUIColoringLabel *)body2Label setTextProvider:v32];
}

- (void)_updateForTallBodyTemplate:(id)a3
{
  v4 = a3;
  v21 = [v4 headerImageProvider];
  v5 = [off_27877BE78 existingImageView:self->_headerGlyph supportsImageProvider:?];
  headerGlyph = self->_headerGlyph;
  if ((v5 & 1) == 0)
  {
    [(CDComplicationImageView *)headerGlyph removeFromSuperview];
    v7 = [off_27877BE78 viewForImageProvider:v21];
    v8 = self->_headerGlyph;
    self->_headerGlyph = v7;

    if (self->_headerGlyph)
    {
      v9 = [(NTKModuleView *)self contentView];
      [v9 addSubview:self->_headerGlyph];

      v10 = self->_headerGlyph;
      v11 = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v10 setColor:v11];

      headerGlyph = self->_headerGlyph;
    }

    else
    {
      headerGlyph = 0;
    }
  }

  [(CDComplicationImageView *)headerGlyph setImageProvider:v21];
  [(CLKUIColoringLabel *)self->_body2Label setTextProvider:0];
  headerLeadingLabel = self->_headerLeadingLabel;
  v13 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)headerLeadingLabel setTextProvider:v13];

  v14 = [v4 headerTrailingTextProvider];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setTextProvider:v14];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setHidden:v14 == 0];
  self->_shouldTruncateHeaderLeadingLabelFirst = [v4 shouldTruncateHeaderLeadingLabelFirst];
  body1Label = self->_body1Label;
  v16 = [v4 bodyTextProvider];

  [(CLKUIColoringLabel *)body1Label setTextProvider:v16];
  [(CLKUIColoringLabel *)self->_body1Label setNumberOfLines:1];
  v17 = self->_body1Label;
  v18 = MEMORY[0x277CBBB08];
  v19 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(v19, v22);
  v20 = [v18 systemFontOfSize:v23 weight:*MEMORY[0x277D74408]];
  [(CLKUIColoringLabel *)v17 setFont:v20];
}

- (void)_updateLabelsMaxWidths
{
  v26 = 0.0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v3 = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(v3, &v23);

  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  [(CDComplicationImageView *)self->_headerGlyph sizeThatFits:*MEMORY[0x277CBF3A8], v5];
  v7 = v6;
  [(CDComplicationImageView *)self->_body1Glyph sizeThatFits:v4, v5];
  v9 = v8;
  v10 = [(NTKModuleView *)self contentView];
  [v10 bounds];
  v12 = v11 - *&v24 - *(&v24 + 1);

  headerGlyph = self->_headerGlyph;
  v14 = 0.0;
  if (headerGlyph && ([(CDComplicationImageView *)headerGlyph isHidden]& 1) == 0)
  {
    v14 = v7 + *(&v25 + 1);
  }

  v15 = v12 - v14;
  if (self->_shouldTruncateHeaderLeadingLabelFirst)
  {
    v16 = &OBJC_IVAR___NTKModularLargeStackTemplateView__headerLeadingLabel;
  }

  else
  {
    v16 = &OBJC_IVAR___NTKModularLargeStackTemplateView__headerTrailingLabel;
  }

  v22 = *(&self->super.super.super.super.super.super.super.isa + *v16);
  if (self->_shouldTruncateHeaderLeadingLabelFirst)
  {
    v17 = &OBJC_IVAR___NTKModularLargeStackTemplateView__headerTrailingLabel;
  }

  else
  {
    v17 = &OBJC_IVAR___NTKModularLargeStackTemplateView__headerLeadingLabel;
  }

  v18 = *(&self->super.super.super.super.super.super.super.isa + *v17);
  if (([v18 isHidden] & 1) == 0)
  {
    [v18 setMaxWidth:v12 - v14];
    [v18 sizeThatFits:{v12 - v14, 1.79769313e308}];
    v20 = v15 - v19 - v26;
    if (v20 >= 0.0)
    {
      v15 = v20;
    }

    else
    {
      v15 = 0.0;
    }
  }

  [v22 setMaxWidth:v15];
  v21 = v9 + *(&v25 + 1);
  if (!self->_body1Glyph)
  {
    v21 = 0.0;
  }

  [(CLKUIColoringLabel *)self->_body1Label setMaxWidth:v12 - v21];
  [(CLKUIColoringLabel *)self->_body2Label setMaxWidth:v12];
}

@end