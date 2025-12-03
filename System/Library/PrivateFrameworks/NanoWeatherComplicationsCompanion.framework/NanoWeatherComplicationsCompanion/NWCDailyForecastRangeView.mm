@interface NWCDailyForecastRangeView
- (NWCDailyForecastRangeView)initWithFrame:(CGRect)frame;
- (id)_rangeLabelWithFontSize:(double)size;
- (void)_applyConstraints:(id *)constraints;
@end

@implementation NWCDailyForecastRangeView

- (NWCDailyForecastRangeView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = NWCDailyForecastRangeView;
  v3 = [(NWCDailyForecastRangeView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    ___LayoutConstants_block_invoke_2(currentDevice, currentDevice);
    v5 = *&_LayoutConstants_constants;
    v14 = *&qword_27FBA16A0;
    v15 = *&qword_27FBA16B0;

    v6 = [(NWCDailyForecastRangeView *)v3 _rangeLabelWithFontSize:v5];
    highLabel = v3->_highLabel;
    v3->_highLabel = v6;

    [(NWCDailyForecastRangeView *)v3 addSubview:v3->_highLabel];
    v8 = [(NWCDailyForecastRangeView *)v3 _rangeLabelWithFontSize:v5];
    lowLabel = v3->_lowLabel;
    v3->_lowLabel = v8;

    [(NWCDailyForecastRangeView *)v3 addSubview:v3->_lowLabel];
    v11 = v5;
    v12 = v14;
    v13 = v15;
    [(NWCDailyForecastRangeView *)v3 _applyConstraints:&v11];
  }

  return v3;
}

- (void)_applyConstraints:(id *)constraints
{
  v34[6] = *MEMORY[0x277D85DE8];
  v22 = MEMORY[0x277CCAAD0];
  highLabel = [(NWCDailyForecastRangeView *)self highLabel];
  topAnchor = [highLabel topAnchor];
  topAnchor2 = [(NWCDailyForecastRangeView *)self topAnchor];
  v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:constraints->var3];
  v34[0] = v30;
  highLabel2 = [(NWCDailyForecastRangeView *)self highLabel];
  leadingAnchor = [highLabel2 leadingAnchor];
  leadingAnchor2 = [(NWCDailyForecastRangeView *)self leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:constraints->var2];
  v34[1] = v26;
  trailingAnchor = [(NWCDailyForecastRangeView *)self trailingAnchor];
  highLabel3 = [(NWCDailyForecastRangeView *)self highLabel];
  trailingAnchor2 = [highLabel3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:constraints->var2];
  v34[2] = v21;
  lowLabel = [(NWCDailyForecastRangeView *)self lowLabel];
  leadingAnchor3 = [lowLabel leadingAnchor];
  highLabel4 = [(NWCDailyForecastRangeView *)self highLabel];
  leadingAnchor4 = [highLabel4 leadingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v34[3] = v16;
  highLabel5 = [(NWCDailyForecastRangeView *)self highLabel];
  trailingAnchor3 = [highLabel5 trailingAnchor];
  lowLabel2 = [(NWCDailyForecastRangeView *)self lowLabel];
  trailingAnchor4 = [lowLabel2 trailingAnchor];
  v9 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v34[4] = v9;
  bottomAnchor = [(NWCDailyForecastRangeView *)self bottomAnchor];
  lowLabel3 = [(NWCDailyForecastRangeView *)self lowLabel];
  firstBaselineAnchor = [lowLabel3 firstBaselineAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor constant:constraints->var4];
  v34[5] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
  [v22 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_rangeLabelWithFontSize:(double)size
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:size design:*MEMORY[0x277D74420]];
  [v4 setFont:v5];

  [v4 setTextAlignment:1];
  v6 = +[NWCColor systemGrayTextColor];
  [v4 setTextColor:v6];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1144750080;
  [v4 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v8];

  return v4;
}

@end