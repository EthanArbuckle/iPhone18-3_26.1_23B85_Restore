@interface NTKStopwatchRichComplicationBezelView
- (NTKStopwatchRichComplicationBezelView)init;
- (id)_createLabelViewWithFont:(id)font;
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NTKStopwatchRichComplicationBezelView *)v2 setBackgroundColor:clearColor];
  }

  return v2;
}

- (id)_createLabelViewWithFont:(id)font
{
  fontCopy = font;
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
  [(CLKUIColoringLabel *)v5 setFont:fontCopy];
  device = [(CDRichComplicationView *)self device];
  [(CLKUIColoringLabel *)v5 setMaxWidth:___LayoutConstants_block_invoke_54(device, device)];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [(CLKUIColoringLabel *)v5 setTextColor:blackColor];

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
  complicationTemplate = [(CDRichComplicationTemplateView *)self complicationTemplate];
  metadata = [complicationTemplate metadata];

  v4 = [metadata objectForKeyedSubscript:@"NTKStopwatchBezelComplicationMetadataTimeTextProviderKey"];
  textProvider = [(CLKUIColoringLabel *)self->_textLabel textProvider];
  [v4 setPaused:{objc_msgSend(textProvider, "paused")}];

  [(CLKUIColoringLabel *)self->_textLabel setTextProvider:v4];
}

@end