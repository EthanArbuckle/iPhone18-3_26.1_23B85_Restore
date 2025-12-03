@interface NWCHourlyForecastConditionGlyphView
- (void)applyAccentFilters:(id)filters;
- (void)applyNonAccentFilters:(id)filters;
- (void)applySimpleEntryModel:(id)model;
- (void)applyStyle;
@end

@implementation NWCHourlyForecastConditionGlyphView

- (void)applySimpleEntryModel:(id)model
{
  modelCopy = model;
  topString = [modelCopy topString];
  if (!topString)
  {
    topString = NWCLocalizedString(@"NO_DATA_ROUNDED");
  }

  topLabel = [(NWCHourlyForecastView *)self topLabel];
  [topLabel setText:topString];

  middleString = [modelCopy middleString];
  v8 = [middleString length];

  if (v8)
  {
    middleImageView2 = [MEMORY[0x277D755D0] configurationWithScale:1];
    v10 = MEMORY[0x277D755B8];
    middleString2 = [modelCopy middleString];
    v12 = [v10 systemImageNamed:middleString2 withConfiguration:middleImageView2];

    v13 = [v12 imageWithRenderingMode:1];

    middleImageView = [(NWCHourlyForecastView *)self middleImageView];
    [middleImageView setImage:v13];

    middleLabel = [(NWCHourlyForecastView *)self middleLabel];
    [middleLabel setText:0];
  }

  else
  {
    v16 = NWMConditionsLocalizedString(@"NO_DATA_ROUNDED");
    middleLabel2 = [(NWCHourlyForecastView *)self middleLabel];
    [middleLabel2 setText:v16];

    v18 = +[NWCColor conditionsNoDataColor];
    middleLabel3 = [(NWCHourlyForecastView *)self middleLabel];
    [middleLabel3 setTextColor:v18];

    middleImageView2 = [(NWCHourlyForecastView *)self middleImageView];
    [middleImageView2 setImage:0];
  }

  v20.receiver = self;
  v20.super_class = NWCHourlyForecastConditionGlyphView;
  [(NWCHourlyForecastView *)&v20 applySimpleEntryModel:modelCopy];
}

- (void)applyStyle
{
  v12.receiver = self;
  v12.super_class = NWCHourlyForecastConditionGlyphView;
  [(NWCHourlyForecastView *)&v12 applyStyle];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_1(currentDevice, currentDevice);
  v4 = *&_LayoutConstants_constants_0_1;
  v5 = *&_LayoutConstants_constants_1_1;

  v6 = *MEMORY[0x277D74420];
  v7 = MEMORY[0x277CBB6C0];
  v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v4 design:*MEMORY[0x277D74420]];
  topLabel = [(NWCHourlyForecastView *)self topLabel];
  [topLabel setFont:v8];

  v10 = [MEMORY[0x277CBBB08] systemFontOfSize:*v7 weight:v5 design:v6];
  middleLabel = [(NWCHourlyForecastView *)self middleLabel];
  [middleLabel setFont:v10];
}

- (void)applyAccentFilters:(id)filters
{
  v7.receiver = self;
  v7.super_class = NWCHourlyForecastConditionGlyphView;
  filtersCopy = filters;
  [(NWCHourlyForecastView *)&v7 applyAccentFilters:filtersCopy];
  v5 = [(NWCHourlyForecastView *)self middleImageView:v7.receiver];
  layer = [v5 layer];
  [layer setFilters:filtersCopy];
}

- (void)applyNonAccentFilters:(id)filters
{
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastConditionGlyphView;
  filtersCopy = filters;
  [(NWCHourlyForecastView *)&v9 applyNonAccentFilters:filtersCopy];
  v5 = [(NWCHourlyForecastView *)self topLabel:v9.receiver];
  layer = [v5 layer];
  [layer setFilters:filtersCopy];

  timeLabel = [(NWCHourlyForecastView *)self timeLabel];
  layer2 = [timeLabel layer];
  [layer2 setFilters:filtersCopy];
}

@end