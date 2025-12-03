@interface NWCHourlyForecastWindView
- (void)applyAccentFilters:(id)filters;
- (void)applyNonAccentFilters:(id)filters;
- (void)applySimpleEntryModel:(id)model;
- (void)applyStyle;
@end

@implementation NWCHourlyForecastWindView

- (void)applySimpleEntryModel:(id)model
{
  modelCopy = model;
  v5 = +[NWCColor tintColor];
  topString = [modelCopy topString];
  if (topString)
  {
    v7 = topString;
  }

  else
  {
    v8 = +[NWCColor systemGrayTextColor];

    v7 = NWCLocalizedString(@"NO_DATA_ROUNDED");
    v5 = v8;
  }

  topLabel = [(NWCHourlyForecastView *)self topLabel];
  [topLabel setText:v7];

  topLabel2 = [(NWCHourlyForecastView *)self topLabel];
  [topLabel2 setTextColor:v5];

  middleString = [modelCopy middleString];
  if (!middleString)
  {
    middleString = NWCLocalizedString(@"NO_DATA_ROUNDED");
  }

  middleLabel = [(NWCHourlyForecastView *)self middleLabel];
  [middleLabel setText:middleString];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  middleLabel2 = [(NWCHourlyForecastView *)self middleLabel];
  [middleLabel2 setTextColor:whiteColor];

  v15.receiver = self;
  v15.super_class = NWCHourlyForecastWindView;
  [(NWCHourlyForecastView *)&v15 applySimpleEntryModel:modelCopy];
}

- (void)applyStyle
{
  v12.receiver = self;
  v12.super_class = NWCHourlyForecastWindView;
  [(NWCHourlyForecastView *)&v12 applyStyle];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_0(currentDevice, currentDevice);
  v4 = *&_LayoutConstants_constants_0_0;
  v5 = *&_LayoutConstants_constants_1_0;

  v6 = *MEMORY[0x277D74410];
  v7 = MEMORY[0x277CBB6C0];
  v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v4 design:*MEMORY[0x277D74410]];
  topLabel = [(NWCHourlyForecastView *)self topLabel];
  [topLabel setFont:v8];

  v10 = [MEMORY[0x277CBBB08] systemFontOfSize:*v7 weight:v5 design:v6];
  middleLabel = [(NWCHourlyForecastView *)self middleLabel];
  [middleLabel setFont:v10];
}

- (void)applyAccentFilters:(id)filters
{
  v7.receiver = self;
  v7.super_class = NWCHourlyForecastWindView;
  filtersCopy = filters;
  [(NWCHourlyForecastView *)&v7 applyAccentFilters:filtersCopy];
  v5 = [(NWCHourlyForecastView *)self topLabel:v7.receiver];
  layer = [v5 layer];
  [layer setFilters:filtersCopy];
}

- (void)applyNonAccentFilters:(id)filters
{
  v9.receiver = self;
  v9.super_class = NWCHourlyForecastWindView;
  filtersCopy = filters;
  [(NWCHourlyForecastView *)&v9 applyNonAccentFilters:filtersCopy];
  v5 = [(NWCHourlyForecastView *)self middleImageView:v9.receiver];
  layer = [v5 layer];
  [layer setFilters:filtersCopy];

  timeLabel = [(NWCHourlyForecastView *)self timeLabel];
  layer2 = [timeLabel layer];
  [layer2 setFilters:filtersCopy];
}

@end