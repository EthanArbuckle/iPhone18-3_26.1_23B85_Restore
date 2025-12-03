@interface NWCDailyForecastView
+ (void)initialize;
- (NWCDailyForecastView)initWithDevice:(id)device;
- (void)_applyLayoutConstraints:(id)constraints;
- (void)applyAccentFilters:(id)filters fraction:(double)fraction;
- (void)applyNonAccentFilters:(id)filters fraction:(double)fraction;
- (void)layoutSubviews;
- (void)updateWithHighlightColor:(id)color fraction:(double)fraction;
@end

@implementation NWCDailyForecastView

+ (void)initialize
{
  if (initialize_onceToken_2 != -1)
  {
    +[NWCDailyForecastView initialize];
  }
}

uint64_t __34__NWCDailyForecastView_initialize__block_invoke()
{
  GossamerCapability_1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E"];

  return MEMORY[0x2821F96F8]();
}

- (NWCDailyForecastView)initWithDevice:(id)device
{
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = NWCDailyForecastView;
  v6 = [(NWCDailyForecastView *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v9 = ___LayoutConstants_block_invoke_5(v8, deviceCopy);
    v10 = *&_LayoutConstants_constants_0_2;
    v11 = *&_LayoutConstants_constants_1_2;
    v12 = *&_LayoutConstants_constants_2_0;
    v13 = *&_LayoutConstants_constants_3_0;
    ___LinearGaugeLayoutConstants_block_invoke(v9, deviceCopy);
    v14 = [objc_alloc(MEMORY[0x277D2C810]) initWithLayoutConstants:{*&_LinearGaugeLayoutConstants_constants_0, *&_LinearGaugeLayoutConstants_constants_1, *&_LinearGaugeLayoutConstants_constants_2}];
    [v14 setRenderValueAsPercentage:1];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    linearGaugeView = v7->_linearGaugeView;
    v7->_linearGaugeView = v14;

    [(NWCDailyForecastView *)v7 addSubview:v7->_linearGaugeView];
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v10 design:*MEMORY[0x277D74420]];
    [(UILabel *)v16 setFont:v17];

    [(UILabel *)v16 setTextAlignment:1];
    v18 = +[NWCColor systemGrayTextColor];
    [(UILabel *)v16 setTextColor:v18];

    [(UILabel *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v19) = 1144750080;
    [(UILabel *)v16 setContentHuggingPriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UILabel *)v16 setContentCompressionResistancePriority:0 forAxis:v20];
    weekdayLabel = v7->_weekdayLabel;
    v7->_weekdayLabel = v16;

    [(NWCDailyForecastView *)v7 addSubview:v7->_weekdayLabel];
    [(NWCDailyForecastView *)v7 _applyLayoutConstraints:v10, v11, v12, v13];
  }

  return v7;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = NWCDailyForecastView;
  [(NWCDailyForecastView *)&v9 layoutSubviews];
  device = [(NWCDailyForecastView *)self device];
  ___LinearGaugeLayoutConstants_block_invoke(device, device);
  v4 = *&_LinearGaugeLayoutConstants_constants_0;

  weekdayLabel = [(NWCDailyForecastView *)self weekdayLabel];
  [weekdayLabel frame];
  MinY = CGRectGetMinY(v10);

  [(NWCDailyForecastView *)self bounds];
  v7 = (CGRectGetWidth(v11) - v4) * 0.5;
  linearGaugeView = [(NWCDailyForecastView *)self linearGaugeView];
  [linearGaugeView setFrame:{v7, 0.0, v4, MinY}];
}

- (void)applyAccentFilters:(id)filters fraction:(double)fraction
{
  filtersCopy = filters;
  linearGaugeView = [(NWCDailyForecastView *)self linearGaugeView];
  [linearGaugeView applyForegroundGaugeFilters:filtersCopy];

  linearGaugeView2 = [(NWCDailyForecastView *)self linearGaugeView];
  [linearGaugeView2 applyBackgroundGaugeFilters:filtersCopy fraction:fraction];
}

- (void)applyNonAccentFilters:(id)filters fraction:(double)fraction
{
  filtersCopy = filters;
  weekdayLabel = [(NWCDailyForecastView *)self weekdayLabel];
  layer = [weekdayLabel layer];
  [layer setFilters:filtersCopy];

  device = [(NWCDailyForecastView *)self device];
  LOBYTE(layer) = [device supportsCapability:GossamerCapability_1];

  if ((layer & 1) == 0)
  {
    linearGaugeView = [(NWCDailyForecastView *)self linearGaugeView];
    [linearGaugeView applyBackgroundGaugeFilters:filtersCopy fraction:fraction];
  }
}

- (void)updateWithHighlightColor:(id)color fraction:(double)fraction
{
  colorCopy = color;
  linearGaugeView = [(NWCDailyForecastView *)self linearGaugeView];
  [linearGaugeView interpolateIndicatorWithColor:colorCopy fraction:fraction];
}

- (void)_applyLayoutConstraints:(id)constraints
{
  var3 = constraints.var3;
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(NWCDailyForecastView *)self weekdayLabel:constraints.var0];
  centerXAnchor = [v6 centerXAnchor];
  centerXAnchor2 = [(NWCDailyForecastView *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v16[0] = v9;
  bottomAnchor = [(NWCDailyForecastView *)self bottomAnchor];
  weekdayLabel = [(NWCDailyForecastView *)self weekdayLabel];
  firstBaselineAnchor = [weekdayLabel firstBaselineAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor constant:var3];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v5 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

@end