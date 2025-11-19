@interface NWCDailyForecastRangeView
- (NWCDailyForecastRangeView)initWithFrame:(CGRect)a3;
- (id)_rangeLabelWithFontSize:(double)a3;
- (void)_applyConstraints:(id *)a3;
@end

@implementation NWCDailyForecastRangeView

- (NWCDailyForecastRangeView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = NWCDailyForecastRangeView;
  v3 = [(NWCDailyForecastRangeView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBAE8] currentDevice];
    ___LayoutConstants_block_invoke_2(v4, v4);
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

- (void)_applyConstraints:(id *)a3
{
  v34[6] = *MEMORY[0x277D85DE8];
  v22 = MEMORY[0x277CCAAD0];
  v33 = [(NWCDailyForecastRangeView *)self highLabel];
  v32 = [v33 topAnchor];
  v31 = [(NWCDailyForecastRangeView *)self topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:a3->var3];
  v34[0] = v30;
  v29 = [(NWCDailyForecastRangeView *)self highLabel];
  v28 = [v29 leadingAnchor];
  v27 = [(NWCDailyForecastRangeView *)self leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27 constant:a3->var2];
  v34[1] = v26;
  v24 = [(NWCDailyForecastRangeView *)self trailingAnchor];
  v25 = [(NWCDailyForecastRangeView *)self highLabel];
  v23 = [v25 trailingAnchor];
  v21 = [v24 constraintEqualToAnchor:v23 constant:a3->var2];
  v34[2] = v21;
  v20 = [(NWCDailyForecastRangeView *)self lowLabel];
  v18 = [v20 leadingAnchor];
  v19 = [(NWCDailyForecastRangeView *)self highLabel];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v34[3] = v16;
  v5 = [(NWCDailyForecastRangeView *)self highLabel];
  v6 = [v5 trailingAnchor];
  v7 = [(NWCDailyForecastRangeView *)self lowLabel];
  v8 = [v7 trailingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v34[4] = v9;
  v10 = [(NWCDailyForecastRangeView *)self bottomAnchor];
  v11 = [(NWCDailyForecastRangeView *)self lowLabel];
  v12 = [v11 firstBaselineAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:a3->var4];
  v34[5] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
  [v22 activateConstraints:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_rangeLabelWithFontSize:(double)a3
{
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:a3 design:*MEMORY[0x277D74420]];
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