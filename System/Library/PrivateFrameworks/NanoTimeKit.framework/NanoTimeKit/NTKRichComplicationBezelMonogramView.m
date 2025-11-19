@interface NTKRichComplicationBezelMonogramView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (id)_createLabelViewWithFont:(id)a3;
- (id)_labelFont;
- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4;
@end

@implementation NTKRichComplicationBezelMonogramView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 textProvider];
  [(CLKUIColoringLabel *)self->_textLabel setTextProvider:v5];

  v6 = [(NTKRichComplicationBezelMonogramView *)self _labelFont];
  [(CLKUIColoringLabel *)self->_textLabel setFont:v6];

  [(NTKRichComplicationBezelMonogramView *)self setNeedsLayout];
}

- (id)_labelFont
{
  v3 = [(CDRichComplicationView *)self device];
  v4 = ___LayoutConstants_block_invoke(v3, v3);
  v6 = v5;
  v8 = v7;

  v9 = [(CLKUIColoringLabel *)self->_textLabel text];
  v10 = [v9 length];

  if (v10 == 2)
  {
    v11 = v6;
  }

  else
  {
    v11 = v4;
  }

  if (v10 > 2)
  {
    v11 = v8;
  }

  v12 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v11 design:*MEMORY[0x277D74420]];
  v13 = [v12 CLKFontWithAlternativePunctuation];

  return v13;
}

- (id)_createLabelViewWithFont:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(off_27877BEF8);
  [v5 setInTimeTravel:0];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__NTKRichComplicationBezelMonogramView__createLabelViewWithFont___block_invoke;
  v12[3] = &unk_27877DC30;
  objc_copyWeak(&v13, &location);
  [v5 setNowProvider:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__NTKRichComplicationBezelMonogramView__createLabelViewWithFont___block_invoke_2;
  v10[3] = &unk_27877DC58;
  objc_copyWeak(&v11, &location);
  [v5 setNeedsResizeHandler:v10];
  v6 = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke(v6, v6);
  [v5 setMaxWidth:v7];

  [v5 setUppercase:1];
  [v5 setFont:v4];
  v8 = [MEMORY[0x277D75348] blackColor];
  [v5 setTextColor:v8];

  objc_storeStrong(&self->_textLabel, v5);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v5;
}

id __65__NTKRichComplicationBezelMonogramView__createLabelViewWithFont___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = MEMORY[0x277CBBAD8];
  }

  v3 = [WeakRetained complicationDate];

  return v3;
}

void __65__NTKRichComplicationBezelMonogramView__createLabelViewWithFont___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

@end