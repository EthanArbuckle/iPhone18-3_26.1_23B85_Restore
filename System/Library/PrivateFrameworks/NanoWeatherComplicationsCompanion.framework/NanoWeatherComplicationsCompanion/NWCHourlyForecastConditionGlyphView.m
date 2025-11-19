@interface NWCHourlyForecastConditionGlyphView
- (void)applyAccentFilters:(id)a3;
- (void)applyNonAccentFilters:(id)a3;
- (void)applySimpleEntryModel:(id)a3;
- (void)applyStyle;
@end

@implementation NWCHourlyForecastConditionGlyphView

- (void)applySimpleEntryModel:(id)a3
{
  v4 = a3;
  v5 = [v4 topString];
  if (!v5)
  {
    v5 = NWCLocalizedString(@"NO_DATA_ROUNDED");
  }

  v6 = [(NWCHourlyForecastView *)self topLabel];
  [v6 setText:v5];

  v7 = [v4 middleString];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [MEMORY[0x277D755D0] configurationWithScale:1];
    v10 = MEMORY[0x277D755B8];
    v11 = [v4 middleString];
    v12 = [v10 systemImageNamed:v11 withConfiguration:v9];

    v13 = [v12 imageWithRenderingMode:1];

    v14 = [(NWCHourlyForecastView *)self middleImageView];
    [v14 setImage:v13];

    v15 = [(NWCHourlyForecastView *)self middleLabel];
    [v15 setText:0];
  }

  else
  {
    v16 = NWMConditionsLocalizedString(@"NO_DATA_ROUNDED");
    v17 = [(NWCHourlyForecastView *)self middleLabel];
    [v17 setText:v16];

    v18 = +[NWCColor conditionsNoDataColor];
    v19 = [(NWCHourlyForecastView *)self middleLabel];
    [v19 setTextColor:v18];

    v9 = [(NWCHourlyForecastView *)self middleImageView];
    [v9 setImage:0];
  }

  v20.receiver = self;
  v20.super_class = NWCHourlyForecastConditionGlyphView;
  [(NWCHourlyForecastView *)&v20 applySimpleEntryModel:v4];
}

- (void)applyStyle
{
  v12.receiver = self;
  v12.super_class = NWCHourlyForecastConditionGlyphView;
  [(NWCHourlyForecastView *)&v12 applyStyle];
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_1(v3, v3);
  v4 = *&_LayoutConstants_constants_0_1;
  v5 = *&_LayoutConstants_constants_1_1;

  v6 = *MEMORY[0x277D74420];
  v7 = MEMORY[0x277CBB6C0];
  v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v4 design:*MEMORY[0x277D74420]];
  v9 = [(NWCHourlyForecastView *)self topLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x277CBBB08] systemFontOfSize:*v7 weight:v5 design:v6];
  v11 = [(NWCHourlyForecastView *)self middleLabel];
  [v11 setFont:v10];
}

- (void)applyAccentFilters:(id)a3
{
  v7.receiver = self;
  v7.super_class = NWCHourlyForecastConditionGlyphView;
  v4 = a3;
  [(NWCHourlyForecastView *)&v7 applyAccentFilters:v4];
  v5 = [(NWCHourlyForecastView *)self middleImageView:v7.receiver];
  v6 = [v5 layer];
  [v6 setFilters:v4];
}

- (void)applyNonAccentFilters:(id)a3
{
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastConditionGlyphView;
  v4 = a3;
  [(NWCHourlyForecastView *)&v9 applyNonAccentFilters:v4];
  v5 = [(NWCHourlyForecastView *)self topLabel:v9.receiver];
  v6 = [v5 layer];
  [v6 setFilters:v4];

  v7 = [(NWCHourlyForecastView *)self timeLabel];
  v8 = [v7 layer];
  [v8 setFilters:v4];
}

@end