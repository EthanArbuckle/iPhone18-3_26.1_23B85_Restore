@interface NTKModularSmallDateTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKModularSmallDateTemplateView)initWithFrame:(CGRect)a3;
- (id)_newLabelSubviewWithFont:(id)a3;
- (void)_configureContentSubviews;
- (void)_layoutContentView;
- (void)_update;
- (void)setIsXL:(BOOL)a3;
@end

@implementation NTKModularSmallDateTemplateView

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

- (NTKModularSmallDateTemplateView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKModularSmallDateTemplateView;
  v3 = [(NTKModuleView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKModularSmallDateTemplateView *)v3 _configureContentSubviews];
  }

  return v4;
}

- (void)_configureContentSubviews
{
  v11 = [(CLKUIColoringLabel *)self->_weekdayLabel textProvider];
  v3 = [(CLKUIColoringLabel *)self->_dayLabel textProvider];
  [(CLKUIColoringLabel *)self->_weekdayLabel removeFromSuperview];
  [(CLKUIColoringLabel *)self->_dayLabel removeFromSuperview];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v4 = [(NTKModuleView *)self device];
  _LayoutConstants_7(v4, [(NTKComplicationModuleView *)self isXL], &v12);

  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:v12 weight:?];
  v6 = [(NTKModularSmallDateTemplateView *)self _newLabelSubviewWithFont:v5];
  weekdayLabel = self->_weekdayLabel;
  self->_weekdayLabel = v6;

  [(CLKUIColoringLabel *)self->_weekdayLabel setUppercase:1];
  [(CLKUIColoringLabel *)self->_weekdayLabel setTextProvider:v11];
  v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v13 weight:*MEMORY[0x277D74408]];
  v9 = [(NTKModularSmallDateTemplateView *)self _newLabelSubviewWithFont:v8];
  dayLabel = self->_dayLabel;
  self->_dayLabel = v9;

  [(CLKUIColoringLabel *)self->_dayLabel setTextProvider:v3];
}

- (void)setIsXL:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = NTKModularSmallDateTemplateView;
  [(NTKComplicationModuleView *)&v4 setIsXL:a3];
  [(NTKModularSmallDateTemplateView *)self _configureContentSubviews];
  [(NTKModularSmallDateTemplateView *)self _layoutContentView];
  [(NTKModuleView *)self _updateColors];
}

- (id)_newLabelSubviewWithFont:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(off_27877BEF8);
  [v5 setNowProvider:&__block_literal_global_108];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__NTKModularSmallDateTemplateView__newLabelSubviewWithFont___block_invoke_2;
  v11[3] = &unk_27877DC58;
  objc_copyWeak(&v12, &location);
  [v5 setNeedsResizeHandler:v11];
  [v5 setFont:v4];
  v6 = [(NTKModuleView *)self device];
  _LayoutConstants_7(v6, [(NTKComplicationModuleView *)self isXL], &v9);
  [v5 setMaxWidth:v10];

  v7 = [(NTKModuleView *)self contentView];
  [v7 addSubview:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v5;
}

void __60__NTKModularSmallDateTemplateView__newLabelSubviewWithFont___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentView];
  [v1 setNeedsLayout];
}

- (void)_layoutContentView
{
  v3 = [(NTKModuleView *)self contentView];
  [v3 bounds];

  v4 = [(NTKModuleView *)self device];
  _LayoutConstants_7(v4, [(NTKComplicationModuleView *)self isXL], &v27);
  v23 = v28;

  v5 = [(NTKModuleView *)self device];
  _LayoutConstants_7(v5, [(NTKComplicationModuleView *)self isXL], &v25);
  v24 = v26;

  [(CLKUIColoringLabel *)self->_weekdayLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_weekdayLabel frame];
  v6 = [(NTKModuleView *)self device];
  CLKRectCenteredXInRectForDevice();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CLKUIColoringLabel *)self->_weekdayLabel _lastLineBaseline];
  [(CLKUIColoringLabel *)self->_weekdayLabel setFrame:v8, v23 - v13, v10, v12];
  [(CLKUIColoringLabel *)self->_dayLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_dayLabel frame];
  v14 = [(NTKModuleView *)self device];
  CLKRectCenteredXInRectForDevice();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(CLKUIColoringLabel *)self->_dayLabel _lastLineBaseline];
  dayLabel = self->_dayLabel;

  [(CLKUIColoringLabel *)dayLabel setFrame:v16, v23 + v24 - v21, v18, v20];
}

- (void)_update
{
  v6 = [(NTKModularTemplateView *)self complicationTemplate];
  -[NTKModularTemplateView setHighlightMode:](self, "setHighlightMode:", [v6 highlightMode]);
  v3 = [v6 weekdayTextProvider];
  [(CLKUIColoringLabel *)self->_weekdayLabel setTextProvider:v3];

  v4 = [v6 dayTextProvider];
  [(CLKUIColoringLabel *)self->_dayLabel setTextProvider:v4];

  v5 = [(NTKModuleView *)self contentView];
  [v5 setNeedsLayout];
}

@end