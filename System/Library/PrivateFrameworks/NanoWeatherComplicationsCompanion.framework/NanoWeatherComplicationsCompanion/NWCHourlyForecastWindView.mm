@interface NWCHourlyForecastWindView
- (void)applyAccentFilters:(id)a3;
- (void)applyNonAccentFilters:(id)a3;
- (void)applySimpleEntryModel:(id)a3;
- (void)applyStyle;
@end

@implementation NWCHourlyForecastWindView

- (void)applySimpleEntryModel:(id)a3
{
  v4 = a3;
  v5 = +[NWCColor tintColor];
  v6 = [v4 topString];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = +[NWCColor systemGrayTextColor];

    v7 = NWCLocalizedString(@"NO_DATA_ROUNDED");
    v5 = v8;
  }

  v9 = [(NWCHourlyForecastView *)self topLabel];
  [v9 setText:v7];

  v10 = [(NWCHourlyForecastView *)self topLabel];
  [v10 setTextColor:v5];

  v11 = [v4 middleString];
  if (!v11)
  {
    v11 = NWCLocalizedString(@"NO_DATA_ROUNDED");
  }

  v12 = [(NWCHourlyForecastView *)self middleLabel];
  [v12 setText:v11];

  v13 = [MEMORY[0x277D75348] whiteColor];
  v14 = [(NWCHourlyForecastView *)self middleLabel];
  [v14 setTextColor:v13];

  v15.receiver = self;
  v15.super_class = NWCHourlyForecastWindView;
  [(NWCHourlyForecastView *)&v15 applySimpleEntryModel:v4];
}

- (void)applyStyle
{
  v12.receiver = self;
  v12.super_class = NWCHourlyForecastWindView;
  [(NWCHourlyForecastView *)&v12 applyStyle];
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_0(v3, v3);
  v4 = *&_LayoutConstants_constants_0_0;
  v5 = *&_LayoutConstants_constants_1_0;

  v6 = *MEMORY[0x277D74410];
  v7 = MEMORY[0x277CBB6C0];
  v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v4 design:*MEMORY[0x277D74410]];
  v9 = [(NWCHourlyForecastView *)self topLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x277CBBB08] systemFontOfSize:*v7 weight:v5 design:v6];
  v11 = [(NWCHourlyForecastView *)self middleLabel];
  [v11 setFont:v10];
}

- (void)applyAccentFilters:(id)a3
{
  v7.receiver = self;
  v7.super_class = NWCHourlyForecastWindView;
  v4 = a3;
  [(NWCHourlyForecastView *)&v7 applyAccentFilters:v4];
  v5 = [(NWCHourlyForecastView *)self topLabel:v7.receiver];
  v6 = [v5 layer];
  [v6 setFilters:v4];
}

- (void)applyNonAccentFilters:(id)a3
{
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastWindView;
  v4 = a3;
  [(NWCHourlyForecastView *)&v9 applyNonAccentFilters:v4];
  v5 = [(NWCHourlyForecastView *)self middleImageView:v9.receiver];
  v6 = [v5 layer];
  [v6 setFilters:v4];

  v7 = [(NWCHourlyForecastView *)self timeLabel];
  v8 = [v7 layer];
  [v8 setFilters:v4];
}

@end