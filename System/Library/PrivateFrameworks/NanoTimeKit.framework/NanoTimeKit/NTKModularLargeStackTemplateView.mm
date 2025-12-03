@interface NTKModularLargeStackTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKModularLargeStackTemplateView)initWithFrame:(CGRect)frame;
- (id)_newLabelSubview;
- (id)_newLabelSubviewWithFont:(id)font;
- (void)_enumerateForegroundColoringViewsWithBlock:(id)block;
- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)block;
- (void)_layoutContentView;
- (void)_update;
- (void)_updateForStandardBodyTemplate:(id)template;
- (void)_updateForTallBodyTemplate:(id)template;
- (void)_updateLabelsMaxWidths;
@end

@implementation NTKModularLargeStackTemplateView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
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

- (NTKModularLargeStackTemplateView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = NTKModularLargeStackTemplateView;
  v3 = [(NTKModuleView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    device = [(NTKModuleView *)v3 device];
    ___LayoutConstants_block_invoke_32(device, v18);

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
  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(device, &v53);

  device2 = [(NTKModuleView *)self device];
  v5 = _LargeModularLayoutConstants(device2);
  v51 = v6;

  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = 0;
  }

  else
  {
    complicationTemplate2 = [(NTKModularTemplateView *)self complicationTemplate];
    body2TextProvider = [complicationTemplate2 body2TextProvider];
    v9 = body2TextProvider != 0;
  }

  [(NTKModularLargeStackTemplateView *)self _updateLabelsMaxWidths];
  headerGlyph = self->_headerGlyph;
  if (headerGlyph && ([(CDComplicationImageView *)headerGlyph isHidden]& 1) == 0)
  {
    [(CDComplicationImageView *)self->_headerGlyph sizeToFit];
    [(CDComplicationImageView *)self->_headerGlyph center];
    v14 = v13;
    font = [(CLKUIColoringLabel *)self->_headerLeadingLabel font];
    [font capHeight];
    device3 = [(NTKModuleView *)self device];
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
  font2 = [(CLKUIColoringLabel *)self->_headerLeadingLabel font];
  [font2 ascender];
  device4 = [(NTKModuleView *)self device];
  CLKCeilForDevice();

  headerLeadingLabel = self->_headerLeadingLabel;
  device5 = [(NTKModuleView *)self device];
  CLKPixelAlignRectForDevice();
  [(CLKUIColoringLabel *)headerLeadingLabel setFrame:?];

  headerTrailingLabel = self->_headerTrailingLabel;
  device6 = [(NTKModuleView *)self device];
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
    font3 = [(CLKUIColoringLabel *)self->_body1Label font];
    [font3 capHeight];
    device7 = [(NTKModuleView *)self device];
    CLKRoundForDevice();
    v39 = v32 - v38;

    [(CDComplicationImageView *)self->_body1Glyph setCenter:v35, v39];
  }

  [(CLKUIColoringLabel *)self->_body1Label frame];
  body1Label = self->_body1Label;
  [(CLKUIColoringLabel *)body1Label maxWidth];
  [(CLKUIColoringLabel *)body1Label sizeThatFits:?];
  [(CLKUIColoringLabel *)self->_body1Label maxWidth];
  font4 = [(CLKUIColoringLabel *)self->_body1Label font];
  [font4 ascender];
  device8 = [(NTKModuleView *)self device];
  CLKCeilForDevice();

  v43 = self->_body1Label;
  device9 = [(NTKModuleView *)self device];
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
    device10 = [(NTKModuleView *)self device];
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

- (void)_enumerateForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_body1Glyph);
  (*v4)(blockCopy, self->_headerLeadingLabel);
  (*v4)(blockCopy, self->_headerTrailingLabel);
}

- (void)_enumerateSecondaryForegroundColoringViewsWithBlock:(id)block
{
  v4 = (block + 16);
  v5 = *(block + 2);
  blockCopy = block;
  v5();
  (*v4)(blockCopy, self->_body2Label);
}

- (id)_newLabelSubview
{
  v3 = objc_alloc_init(off_27877BEF8);
  [(NTKModularLargeStackTemplateView *)self bounds];
  [v3 setMaxWidth:v4];
  [v3 setUppercase:0];
  timeTravelDate = [(NTKModularTemplateView *)self timeTravelDate];
  [v3 setInTimeTravel:timeTravelDate != 0];

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
  contentView = [(NTKModuleView *)self contentView];
  [contentView addSubview:v3];

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

- (id)_newLabelSubviewWithFont:(id)font
{
  fontCopy = font;
  _newLabelSubview = [(NTKModularLargeStackTemplateView *)self _newLabelSubview];
  [_newLabelSubview setFont:fontCopy];

  return _newLabelSubview;
}

- (void)_update
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKModularLargeStackTemplateView *)self _updateForStandardBodyTemplate:complicationTemplate];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKModularLargeStackTemplateView *)self _updateForTallBodyTemplate:complicationTemplate];
    }
  }

  contentView = [(NTKModuleView *)self contentView];
  [contentView setNeedsLayout];
}

- (void)_updateForStandardBodyTemplate:(id)template
{
  templateCopy = template;
  headerImageProvider = [templateCopy headerImageProvider];
  v5 = [off_27877BE78 existingImageView:self->_headerGlyph supportsImageProvider:headerImageProvider];
  headerGlyph = self->_headerGlyph;
  if ((v5 & 1) == 0)
  {
    [(CDComplicationImageView *)headerGlyph removeFromSuperview];
    v7 = [off_27877BE78 viewForImageProvider:headerImageProvider];
    v8 = self->_headerGlyph;
    self->_headerGlyph = v7;

    if (self->_headerGlyph)
    {
      contentView = [(NTKModuleView *)self contentView];
      [contentView addSubview:self->_headerGlyph];

      v10 = self->_headerGlyph;
      foregroundColor = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v10 setColor:foregroundColor];

      headerGlyph = self->_headerGlyph;
    }

    else
    {
      headerGlyph = 0;
    }
  }

  [(CDComplicationImageView *)headerGlyph setImageProvider:headerImageProvider];
  body1ImageProvider = [templateCopy body1ImageProvider];
  v13 = [off_27877BE78 existingImageView:self->_body1Glyph supportsImageProvider:body1ImageProvider];
  body1Glyph = self->_body1Glyph;
  if ((v13 & 1) == 0)
  {
    [(CDComplicationImageView *)body1Glyph removeFromSuperview];
    v15 = [off_27877BE78 viewForImageProvider:body1ImageProvider];
    v16 = self->_body1Glyph;
    self->_body1Glyph = v15;

    if (self->_body1Glyph)
    {
      contentView2 = [(NTKModuleView *)self contentView];
      [contentView2 addSubview:self->_body1Glyph];

      v18 = self->_body1Glyph;
      foregroundColor2 = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v18 setColor:foregroundColor2];

      body1Glyph = self->_body1Glyph;
    }

    else
    {
      body1Glyph = 0;
    }
  }

  [(CDComplicationImageView *)body1Glyph setImageProvider:body1ImageProvider];
  headerLeadingLabel = self->_headerLeadingLabel;
  headerTextProvider = [templateCopy headerTextProvider];
  [(CLKUIColoringLabel *)headerLeadingLabel setTextProvider:headerTextProvider];

  headerTrailingTextProvider = [templateCopy headerTrailingTextProvider];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setTextProvider:headerTrailingTextProvider];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setHidden:headerTrailingTextProvider == 0];
  self->_shouldTruncateHeaderLeadingLabelFirst = [templateCopy shouldTruncateHeaderLeadingLabelFirst];
  body1Label = self->_body1Label;
  body1TextProvider = [templateCopy body1TextProvider];
  [(CLKUIColoringLabel *)body1Label setTextProvider:body1TextProvider];

  v25 = self->_body1Label;
  v26 = MEMORY[0x277CBBB08];
  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(device, v34);
  v28 = [v26 systemFontOfSize:v34[0]];
  [(CLKUIColoringLabel *)v25 setFont:v28];

  body2TextProvider = [templateCopy body2TextProvider];
  v30 = self->_body1Label;
  if (body2TextProvider)
  {
    [(CLKUIColoringLabel *)v30 setNumberOfLines:1];
    body2Label = self->_body2Label;
    v32 = body2TextProvider;
  }

  else
  {
    [(CLKUIColoringLabel *)v30 setNumberOfLines:2];
    body2Label = self->_body2Label;
    v32 = 0;
  }

  [(CLKUIColoringLabel *)body2Label setTextProvider:v32];
}

- (void)_updateForTallBodyTemplate:(id)template
{
  templateCopy = template;
  headerImageProvider = [templateCopy headerImageProvider];
  v5 = [off_27877BE78 existingImageView:self->_headerGlyph supportsImageProvider:?];
  headerGlyph = self->_headerGlyph;
  if ((v5 & 1) == 0)
  {
    [(CDComplicationImageView *)headerGlyph removeFromSuperview];
    v7 = [off_27877BE78 viewForImageProvider:headerImageProvider];
    v8 = self->_headerGlyph;
    self->_headerGlyph = v7;

    if (self->_headerGlyph)
    {
      contentView = [(NTKModuleView *)self contentView];
      [contentView addSubview:self->_headerGlyph];

      v10 = self->_headerGlyph;
      foregroundColor = [(NTKModuleView *)self foregroundColor];
      [(CDComplicationImageView *)v10 setColor:foregroundColor];

      headerGlyph = self->_headerGlyph;
    }

    else
    {
      headerGlyph = 0;
    }
  }

  [(CDComplicationImageView *)headerGlyph setImageProvider:headerImageProvider];
  [(CLKUIColoringLabel *)self->_body2Label setTextProvider:0];
  headerLeadingLabel = self->_headerLeadingLabel;
  headerTextProvider = [templateCopy headerTextProvider];
  [(CLKUIColoringLabel *)headerLeadingLabel setTextProvider:headerTextProvider];

  headerTrailingTextProvider = [templateCopy headerTrailingTextProvider];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setTextProvider:headerTrailingTextProvider];
  [(CLKUIColoringLabel *)self->_headerTrailingLabel setHidden:headerTrailingTextProvider == 0];
  self->_shouldTruncateHeaderLeadingLabelFirst = [templateCopy shouldTruncateHeaderLeadingLabelFirst];
  body1Label = self->_body1Label;
  bodyTextProvider = [templateCopy bodyTextProvider];

  [(CLKUIColoringLabel *)body1Label setTextProvider:bodyTextProvider];
  [(CLKUIColoringLabel *)self->_body1Label setNumberOfLines:1];
  v17 = self->_body1Label;
  v18 = MEMORY[0x277CBBB08];
  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(device, v22);
  v20 = [v18 systemFontOfSize:v23 weight:*MEMORY[0x277D74408]];
  [(CLKUIColoringLabel *)v17 setFont:v20];
}

- (void)_updateLabelsMaxWidths
{
  v26 = 0.0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = [(NTKModuleView *)self device];
  ___LayoutConstants_block_invoke_32(device, &v23);

  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  [(CDComplicationImageView *)self->_headerGlyph sizeThatFits:*MEMORY[0x277CBF3A8], v5];
  v7 = v6;
  [(CDComplicationImageView *)self->_body1Glyph sizeThatFits:v4, v5];
  v9 = v8;
  contentView = [(NTKModuleView *)self contentView];
  [contentView bounds];
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