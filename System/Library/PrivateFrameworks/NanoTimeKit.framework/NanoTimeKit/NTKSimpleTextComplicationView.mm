@interface NTKSimpleTextComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (CDComplicationDisplayObserver)displayObserver;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKUIColoringLabel)label;
- (NTKSimpleTextComplicationView)init;
- (id)_defaultFont;
- (unint64_t)complicationType;
- (void)_updateLabelFrame;
- (void)layoutSubviews;
- (void)setComplicationTemplate:(id)template reason:(int64_t)reason;
- (void)setFont:(id)font;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
@end

@implementation NTKSimpleTextComplicationView

- (NTKSimpleTextComplicationView)init
{
  v9.receiver = self;
  v9.super_class = NTKSimpleTextComplicationView;
  v2 = [(NTKSimpleTextComplicationView *)&v9 init];
  if (v2)
  {
    v3 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v3 device];
    device = v2->_device;
    v2->_device = device;

    label = [(NTKSimpleTextComplicationView *)v2 label];
    [(NTKSimpleTextComplicationView *)v2 addSubview:label];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NTKSimpleTextComplicationView *)v2 setBackgroundColor:clearColor];
  }

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKSimpleTextComplicationView;
  [(NTKSimpleTextComplicationView *)&v3 layoutSubviews];
  [(NTKSimpleTextComplicationView *)self _updateLabelFrame];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CLKUIColoringLabel *)self->_label sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  device = [(NTKSimpleTextComplicationView *)self device];
  ___LayoutConstants_block_invoke_59(device, &v11);

  v9 = v5 + *(&v12 + 1);
  if (v5 + *(&v12 + 1) < *(&v11 + 1))
  {
    v9 = *(&v11 + 1);
  }

  if (v7 >= *&v12)
  {
    v10 = v7;
  }

  else
  {
    v10 = *&v12;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_updateLabelFrame
{
  [(CLKUIColoringLabel *)self->_label sizeToFit];
  device = [(NTKSimpleTextComplicationView *)self device];
  ___LayoutConstants_block_invoke_59(device, v9);
  v4 = v10;

  [(CLKUIColoringLabel *)self->_label bounds];
  if (CGRectGetWidth(v12) > v4)
  {
    [(CLKUIColoringLabel *)self->_label frame];
    [(CLKUIColoringLabel *)self->_label setFrame:?];
  }

  [(NTKSimpleTextComplicationView *)self bounds];
  v6 = v5 * 0.5;
  [(NTKSimpleTextComplicationView *)self bounds];
  label = self->_label;

  [(CLKUIColoringLabel *)label setCenter:v6, v7 * 0.5];
}

- (CLKUIColoringLabel)label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc_init(off_27877BEF8);
    _defaultFont = [(NTKSimpleTextComplicationView *)self _defaultFont];
    [v4 setFont:_defaultFont];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__NTKSimpleTextComplicationView_label__block_invoke;
    v15[3] = &unk_27877DC30;
    objc_copyWeak(&v16, &location);
    [v4 setNowProvider:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __38__NTKSimpleTextComplicationView_label__block_invoke_2;
    v13[3] = &unk_27877DC58;
    objc_copyWeak(&v14, &location);
    [v4 setNeedsResizeHandler:v13];
    [v4 setTextAlignment:1];
    [v4 setAdjustsFontSizeToFitWidth:1];
    objc_storeStrong(&self->_label, v4);
    objc_initWeak(&from, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__NTKSimpleTextComplicationView_label__block_invoke_3;
    v10[3] = &unk_27877DC58;
    objc_copyWeak(&v11, &from);
    [v4 setNeedsResizeHandler:v10];
    device = [(NTKSimpleTextComplicationView *)self device];
    ___LayoutConstants_block_invoke_59(device, v9);
    [v4 setMaxWidth:v9[4]];

    timeTravelDate = [(NTKSimpleTextComplicationView *)self timeTravelDate];
    [v4 setInTimeTravel:timeTravelDate != 0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);

    label = self->_label;
  }

  return label;
}

id __38__NTKSimpleTextComplicationView_label__block_invoke(uint64_t a1)
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

void __38__NTKSimpleTextComplicationView_label__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

void __38__NTKSimpleTextComplicationView_label__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (id)_defaultFont
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  device = [(NTKSimpleTextComplicationView *)self device];
  ___LayoutConstants_block_invoke_59(device, v6);

  v3 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*v6 design:*MEMORY[0x277D74420]];
  cLKFontWithAlternativePunctuation = [v3 CLKFontWithAlternativePunctuation];

  return cLKFontWithAlternativePunctuation;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  font = [(CLKUIColoringLabel *)self->_label font];
  v5 = [font isEqual:fontCopy];

  if ((v5 & 1) == 0)
  {
    [(CLKUIColoringLabel *)self->_label setFont:fontCopy];
    [(NTKSimpleTextComplicationView *)self setNeedsLayout];
  }
}

- (unint64_t)complicationType
{
  metadata = [(CLKComplicationTemplateSimpleText *)self->_template metadata];
  v3 = [metadata objectForKeyedSubscript:@"NTKSimpleTextComplicationTypeMetadataKey"];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setComplicationTemplate:(id)template reason:(int64_t)reason
{
  objc_storeStrong(&self->_template, template);
  templateCopy = template;
  textProvider = [templateCopy textProvider];
  [(CLKUIColoringLabel *)self->_label setTextProvider:textProvider];

  [(NTKSimpleTextComplicationView *)self setNeedsLayout];
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  dateCopy = date;
  timeTravelDate = self->_timeTravelDate;
  v15 = dateCopy;
  if (dateCopy)
  {
    if ([dateCopy isEqual:timeTravelDate])
    {
      goto LABEL_14;
    }

    v8 = self->_timeTravelDate;
    v10 = [(CLKComplicationTemplateSimpleText *)self->_template timeTravelUpdateFrequency]== 2 || v8 == 0;
  }

  else
  {
    if (!timeTravelDate || ([0 isEqual:?] & 1) != 0)
    {
      goto LABEL_14;
    }

    v10 = 1;
  }

  objc_storeStrong(&self->_timeTravelDate, date);
  label = self->_label;
  timeTravelDate = [(NTKSimpleTextComplicationView *)self timeTravelDate];
  [(CLKUIColoringLabel *)label setInTimeTravel:timeTravelDate != 0];

  if (v10)
  {
    v13 = self->_label;
    textProvider = [(CLKComplicationTemplateSimpleText *)self->_template textProvider];
    [(CLKUIColoringLabel *)v13 setTextProvider:textProvider];
  }

LABEL_14:
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

@end