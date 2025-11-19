@interface NTKStopwatchRichComplicationBezelView
- (NTKStopwatchRichComplicationBezelView)init;
- (id)_createLabelViewWithFont:(id)a3;
- (void)_updateTextProvider;
@end

@implementation NTKStopwatchRichComplicationBezelView

- (NTKStopwatchRichComplicationBezelView)init
{
  v5.receiver = self;
  v5.super_class = NTKStopwatchRichComplicationBezelView;
  v2 = [(NTKRichComplicationBezelBaseTextView *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D75348] clearColor];
    [(NTKStopwatchRichComplicationBezelView *)v2 setBackgroundColor:v3];
  }

  return v2;
}

- (id)_createLabelViewWithFont:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(off_27877BEF8);
  [(CLKUIColoringLabel *)v5 setInTimeTravel:0];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__NTKStopwatchRichComplicationBezelView__createLabelViewWithFont___block_invoke;
  v14[3] = &unk_27877DC30;
  objc_copyWeak(&v15, &location);
  [(CLKUIColoringLabel *)v5 setNowProvider:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__NTKStopwatchRichComplicationBezelView__createLabelViewWithFont___block_invoke_2;
  v12[3] = &unk_27877DC58;
  objc_copyWeak(&v13, &location);
  [(CLKUIColoringLabel *)v5 setNeedsResizeHandler:v12];
  [(CLKUIColoringLabel *)v5 setUppercase:1];
  [(CLKUIColoringLabel *)v5 setFont:v4];
  v6 = [(CDRichComplicationView *)self device];
  [(CLKUIColoringLabel *)v5 setMaxWidth:___LayoutConstants_block_invoke_54(v6, v6)];

  v7 = [MEMORY[0x277D75348] blackColor];
  [(CLKUIColoringLabel *)v5 setTextColor:v7];

  textLabel = self->_textLabel;
  self->_textLabel = v5;
  v9 = v5;

  v10 = self->_textLabel;
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

id __66__NTKStopwatchRichComplicationBezelView__createLabelViewWithFont___block_invoke(uint64_t a1)
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

void __66__NTKStopwatchRichComplicationBezelView__createLabelViewWithFont___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (void)_updateTextProvider
{
  v3 = [(CDRichComplicationTemplateView *)self complicationTemplate];
  v6 = [v3 metadata];

  v4 = [v6 objectForKeyedSubscript:@"NTKStopwatchBezelComplicationMetadataTimeTextProviderKey"];
  v5 = [(CLKUIColoringLabel *)self->_textLabel textProvider];
  [v4 setPaused:{objc_msgSend(v5, "paused")}];

  [(CLKUIColoringLabel *)self->_textLabel setTextProvider:v4];
}

@end