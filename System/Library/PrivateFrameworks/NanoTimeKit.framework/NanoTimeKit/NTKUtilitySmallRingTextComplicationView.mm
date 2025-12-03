@interface NTKUtilitySmallRingTextComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKUtilitySmallRingTextComplicationView)initWithFrame:(CGRect)frame;
- (void)_enumerateColoringViewsWithBlock:(id)block;
- (void)_setLabelText:(id)text;
- (void)_updateForTemplateChange;
- (void)layoutSubviews;
@end

@implementation NTKUtilitySmallRingTextComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (NTKUtilitySmallRingTextComplicationView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = NTKUtilitySmallRingTextComplicationView;
  v3 = [(NTKUtilitySmallRingComplicationView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:8.5 weight:*MEMORY[0x277D74410]];
    [(NTKUtilityComplicationView *)v3 setFont:v4];

    font = [(NTKUtilityComplicationView *)v3 font];
    v6 = [(NTKUtilityComplicationView *)v3 _newLabelSubviewWithFont:font variant:0];
    label = v3->_label;
    v3->_label = v6;

    v8 = v3->_label;
    device = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(device, v14);
    [(CLKUIColoringLabel *)v8 setMaxWidth:v15];

    v10 = v3->_label;
    timeTravelDate = [(NTKUtilityComplicationView *)v3 timeTravelDate];
    [(CLKUIColoringLabel *)v10 setInTimeTravel:timeTravelDate != 0];

    contentView = [(NTKUtilityCircularComplicationView *)v3 contentView];
    [contentView addSubview:v3->_label];
  }

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NTKUtilitySmallRingTextComplicationView;
  [(NTKUtilitySmallRingComplicationView *)&v9 layoutSubviews];
  contentView = [(NTKUtilityCircularComplicationView *)self contentView];
  [contentView bounds];
  v7 = v4;

  [(CLKUIColoringLabel *)self->_label sizeToFit];
  [(CLKUIColoringLabel *)self->_label frame];
  device = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device, v8);

  device2 = [(NTKUtilityComplicationView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  [(CLKUIColoringLabel *)self->_label setFrame:?];
}

- (void)_updateForTemplateChange
{
  v9.receiver = self;
  v9.super_class = NTKUtilitySmallRingTextComplicationView;
  [(NTKUtilityComplicationView *)&v9 _updateForTemplateChange];
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  label = self->_label;
  textProvider = [complicationTemplate textProvider];
  [(CLKUIColoringLabel *)label setTextProvider:textProvider];

  v6 = [NTKRing alloc];
  [complicationTemplate fillFraction];
  v8 = -[NTKRing initWithFillFraction:style:](v6, "initWithFillFraction:style:", [complicationTemplate ringStyle], v7);
  [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v8];
}

- (void)_setLabelText:(id)text
{
  [(CLKUIColoringLabel *)self->_label setText:text];
  [(NTKUtilitySmallRingTextComplicationView *)self setNeedsLayout];
  displayObserver = [(NTKUtilityComplicationView *)self displayObserver];
  [displayObserver complicationDisplayNeedsResize:self];
}

- (void)_enumerateColoringViewsWithBlock:(id)block
{
  v5.receiver = self;
  v5.super_class = NTKUtilitySmallRingTextComplicationView;
  blockCopy = block;
  [(NTKUtilitySmallRingComplicationView *)&v5 _enumerateColoringViewsWithBlock:blockCopy];
  blockCopy[2](blockCopy, self->_label);
}

@end