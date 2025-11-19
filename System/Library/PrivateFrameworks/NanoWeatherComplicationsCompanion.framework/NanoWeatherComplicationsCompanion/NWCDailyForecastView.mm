@interface NWCDailyForecastView
+ (void)initialize;
- (NWCDailyForecastView)initWithDevice:(id)a3;
- (void)_applyLayoutConstraints:(id)a3;
- (void)applyAccentFilters:(id)a3 fraction:(double)a4;
- (void)applyNonAccentFilters:(id)a3 fraction:(double)a4;
- (void)layoutSubviews;
- (void)updateWithHighlightColor:(id)a3 fraction:(double)a4;
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

- (NWCDailyForecastView)initWithDevice:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = NWCDailyForecastView;
  v6 = [(NWCDailyForecastView *)&v23 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v9 = ___LayoutConstants_block_invoke_5(v8, v5);
    v10 = *&_LayoutConstants_constants_0_2;
    v11 = *&_LayoutConstants_constants_1_2;
    v12 = *&_LayoutConstants_constants_2_0;
    v13 = *&_LayoutConstants_constants_3_0;
    ___LinearGaugeLayoutConstants_block_invoke(v9, v5);
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
  v3 = [(NWCDailyForecastView *)self device];
  ___LinearGaugeLayoutConstants_block_invoke(v3, v3);
  v4 = *&_LinearGaugeLayoutConstants_constants_0;

  v5 = [(NWCDailyForecastView *)self weekdayLabel];
  [v5 frame];
  MinY = CGRectGetMinY(v10);

  [(NWCDailyForecastView *)self bounds];
  v7 = (CGRectGetWidth(v11) - v4) * 0.5;
  v8 = [(NWCDailyForecastView *)self linearGaugeView];
  [v8 setFrame:{v7, 0.0, v4, MinY}];
}

- (void)applyAccentFilters:(id)a3 fraction:(double)a4
{
  v6 = a3;
  v7 = [(NWCDailyForecastView *)self linearGaugeView];
  [v7 applyForegroundGaugeFilters:v6];

  v8 = [(NWCDailyForecastView *)self linearGaugeView];
  [v8 applyBackgroundGaugeFilters:v6 fraction:a4];
}

- (void)applyNonAccentFilters:(id)a3 fraction:(double)a4
{
  v10 = a3;
  v6 = [(NWCDailyForecastView *)self weekdayLabel];
  v7 = [v6 layer];
  [v7 setFilters:v10];

  v8 = [(NWCDailyForecastView *)self device];
  LOBYTE(v7) = [v8 supportsCapability:GossamerCapability_1];

  if ((v7 & 1) == 0)
  {
    v9 = [(NWCDailyForecastView *)self linearGaugeView];
    [v9 applyBackgroundGaugeFilters:v10 fraction:a4];
  }
}

- (void)updateWithHighlightColor:(id)a3 fraction:(double)a4
{
  v6 = a3;
  v7 = [(NWCDailyForecastView *)self linearGaugeView];
  [v7 interpolateIndicatorWithColor:v6 fraction:a4];
}

- (void)_applyLayoutConstraints:(id)a3
{
  var3 = a3.var3;
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAAD0];
  v6 = [(NWCDailyForecastView *)self weekdayLabel:a3.var0];
  v7 = [v6 centerXAnchor];
  v8 = [(NWCDailyForecastView *)self centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v16[0] = v9;
  v10 = [(NWCDailyForecastView *)self bottomAnchor];
  v11 = [(NWCDailyForecastView *)self weekdayLabel];
  v12 = [v11 firstBaselineAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:var3];
  v16[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  [v5 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

@end