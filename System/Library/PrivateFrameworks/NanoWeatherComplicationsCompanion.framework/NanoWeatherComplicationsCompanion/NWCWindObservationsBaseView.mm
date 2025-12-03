@interface NWCWindObservationsBaseView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (int64_t)supportedComplicationFamily;
- (void)_applyConstraintsWithLayoutConstants:(id *)constants;
- (void)_processWindSpeed:(id)speed unit:(id)unit directionAbbreviation:(id)abbreviation;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NWCWindObservationsBaseView

- (void)_applyConstraintsWithLayoutConstants:(id *)constants
{
  v53[9] = *MEMORY[0x277D85DE8];
  windDirectionAbbreviationLabel = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  leadingAnchor = [windDirectionAbbreviationLabel leadingAnchor];
  windSpeedLabel = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  leadingAnchor2 = [windSpeedLabel leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v48;
  windDirectionAbbreviationLabel2 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  trailingAnchor = [windDirectionAbbreviationLabel2 trailingAnchor];
  windSpeedLabel2 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  trailingAnchor2 = [windSpeedLabel2 trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[1] = v43;
  windDirectionAbbreviationLabel3 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  firstBaselineAnchor = [windDirectionAbbreviationLabel3 firstBaselineAnchor];
  windSpeedLabel3 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  topAnchor = [windSpeedLabel3 topAnchor];
  v38 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:2.0];
  v53[2] = v38;
  windSpeedLabel4 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  leadingAnchor3 = [windSpeedLabel4 leadingAnchor];
  leadingAnchor4 = [(NWCWindObservationsBaseView *)self leadingAnchor];
  v8 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:constants->var3];

  v37 = v8;
  LODWORD(v9) = 1148829696;
  [v8 setPriority:v9];
  v53[3] = v8;
  trailingAnchor3 = [(NWCWindObservationsBaseView *)self trailingAnchor];
  windSpeedLabel5 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  trailingAnchor4 = [windSpeedLabel5 trailingAnchor];
  v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:constants->var3];

  v36 = v13;
  LODWORD(v14) = 1148829696;
  [v13 setPriority:v14];
  v53[4] = v13;
  windSpeedLabel6 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  centerYAnchor = [windSpeedLabel6 centerYAnchor];
  centerYAnchor2 = [(NWCWindObservationsBaseView *)self centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v53[5] = v32;
  windUnitLabel = [(NWCWindObservationsBaseView *)self windUnitLabel];
  leadingAnchor5 = [windUnitLabel leadingAnchor];
  windSpeedLabel7 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  leadingAnchor6 = [windSpeedLabel7 leadingAnchor];
  v26 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v53[6] = v26;
  windUnitLabel2 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  trailingAnchor5 = [windUnitLabel2 trailingAnchor];
  windSpeedLabel8 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  trailingAnchor6 = [windSpeedLabel8 trailingAnchor];
  v19 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v53[7] = v19;
  windUnitLabel3 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  topAnchor2 = [windUnitLabel3 topAnchor];
  windSpeedLabel9 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  firstBaselineAnchor2 = [windSpeedLabel9 firstBaselineAnchor];
  v24 = [topAnchor2 constraintEqualToAnchor:firstBaselineAnchor2];
  v53[8] = v24;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];

  [MEMORY[0x277CCAAD0] activateConstraints:v31];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_processWindSpeed:(id)speed unit:(id)unit directionAbbreviation:(id)abbreviation
{
  abbreviationCopy = abbreviation;
  unitCopy = unit;
  speedCopy = speed;
  windDirectionAbbreviationLabel = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  [windDirectionAbbreviationLabel setText:abbreviationCopy];

  device = [(NWCWindObservationsBaseView *)self device];
  supportedComplicationFamily = [(NWCWindObservationsBaseView *)self supportedComplicationFamily];
  ___LayoutConstants_block_invoke_4(supportedComplicationFamily, device);
  v14 = &_LayoutConstants___constantsGraphicExtraLarge + 1;
  v15 = &xmmword_27FBA1740;
  if (supportedComplicationFamily != 12)
  {
    v15 = &xmmword_27FBA1710;
  }

  v16 = *v15;
  if (supportedComplicationFamily != 12)
  {
    v14 = &_LayoutConstants___constantsGraphicCircular + 1;
  }

  v17 = *v14;

  if ([speedCopy length] <= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v22 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v18 design:*MEMORY[0x277D74420]];
  windSpeedLabel = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  [windSpeedLabel setFont:v22];

  windSpeedLabel2 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  [windSpeedLabel2 setText:speedCopy];

  windUnitLabel = [(NWCWindObservationsBaseView *)self windUnitLabel];
  [windUnitLabel setText:unitCopy];
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v32.receiver = self;
  v32.super_class = NWCWindObservationsBaseView;
  v6 = [(NWCWindObservationsBaseView *)&v32 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    supportedComplicationFamily = [(NWCWindObservationsBaseView *)v7 supportedComplicationFamily];
    ___LayoutConstants_block_invoke_4(supportedComplicationFamily, deviceCopy);
    if (supportedComplicationFamily == 12)
    {
      v9 = &_LayoutConstants___constantsGraphicExtraLarge;
    }

    else
    {
      v9 = &_LayoutConstants___constantsGraphicCircular;
    }

    v10 = *v9;
    v11 = *(v9 + 1);
    v31 = v9[1];
    v12 = *(v9 + 4);
    v13 = objc_opt_new();
    [(UILabel *)v13 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v13 setBaselineAdjustment:1];
    v14 = *MEMORY[0x277D74420];
    v15 = MEMORY[0x277CBB6C0];
    v16 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v10 design:*MEMORY[0x277D74420]];
    [(UILabel *)v13 setFont:v16];

    [(UILabel *)v13 setMinimumScaleFactor:0.6];
    [(UILabel *)v13 setNumberOfLines:1];
    [(UILabel *)v13 setTextAlignment:1];
    v17 = +[NWCColor tintColor];
    [(UILabel *)v13 setTextColor:v17];

    [(UILabel *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    windDirectionAbbreviationLabel = v7->_windDirectionAbbreviationLabel;
    v7->_windDirectionAbbreviationLabel = v13;

    [(NWCWindObservationsBaseView *)v7 addSubview:v7->_windDirectionAbbreviationLabel];
    v19 = objc_opt_new();
    [(UILabel *)v19 setBaselineAdjustment:1];
    v20 = [MEMORY[0x277CBBB08] systemFontOfSize:*v15 weight:v11 design:v14];
    [(UILabel *)v19 setFont:v20];

    [(UILabel *)v19 setNumberOfLines:1];
    [(UILabel *)v19 setTextAlignment:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v19 setTextColor:whiteColor];

    [(UILabel *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    windSpeedLabel = v7->_windSpeedLabel;
    v7->_windSpeedLabel = v19;

    [(NWCWindObservationsBaseView *)v7 addSubview:v7->_windSpeedLabel];
    v23 = objc_opt_new();
    [(UILabel *)v23 setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v23 setBaselineAdjustment:1];
    v24 = [MEMORY[0x277CBBB08] systemFontOfSize:*v15 weight:v12 design:v14];
    [(UILabel *)v23 setFont:v24];

    [(UILabel *)v23 setMinimumScaleFactor:0.6];
    [(UILabel *)v23 setNumberOfLines:1];
    [(UILabel *)v23 setTextAlignment:1];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v23 setTextColor:whiteColor2];

    [(UILabel *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    windUnitLabel = v7->_windUnitLabel;
    v7->_windUnitLabel = v23;

    [(NWCWindObservationsBaseView *)v7 addSubview:v7->_windUnitLabel];
    *v28 = v10;
    *&v28[1] = v11;
    v29 = v31;
    v30 = v12;
    [(NWCWindObservationsBaseView *)v7 _applyConstraintsWithLayoutConstants:v28];
  }

  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  metadata = [providerCopy metadata];
  v7 = [metadata objectForKeyedSubscript:@"NWCCurrentObservationsMetadata_WindDirectionAbbreviation"];

  v13 = v7;
  metadata2 = [providerCopy metadata];
  v9 = [metadata2 objectForKeyedSubscript:@"NWCCurrentObservationsMetadata_WindSpeed"];

  v10 = v9;
  metadata3 = [providerCopy metadata];

  v12 = [metadata3 objectForKeyedSubscript:@"NWCCurrentObservationsMetadata_WindUnit"];

  [(NWCWindObservationsBaseView *)self _processWindSpeed:v10 unit:v12 directionAbbreviation:v13];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NWCWindObservationsBaseView *)self filterProvider];
  v5 = [filterProvider filtersForView:self style:2 fraction:fraction];
  windDirectionAbbreviationLabel = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  layer = [windDirectionAbbreviationLabel layer];
  [layer setFilters:v5];

  v8 = [filterProvider filtersForView:self style:0 fraction:fraction];
  windSpeedLabel = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  layer2 = [windSpeedLabel layer];
  [layer2 setFilters:v8];

  windUnitLabel = [(NWCWindObservationsBaseView *)self windUnitLabel];
  layer3 = [windUnitLabel layer];
  [layer3 setFilters:v8];
}

- (void)updateMonochromeColor
{
  filterProvider = [(NWCWindObservationsBaseView *)self filterProvider];
  v3 = [filterProvider filtersForView:self style:2];
  windDirectionAbbreviationLabel = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  layer = [windDirectionAbbreviationLabel layer];
  [layer setFilters:v3];

  filterProvider2 = [(NWCWindObservationsBaseView *)self filterProvider];
  v7 = [filterProvider2 filtersForView:self style:0];

  windSpeedLabel = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  layer2 = [windSpeedLabel layer];
  [layer2 setFilters:v7];

  windUnitLabel = [(NWCWindObservationsBaseView *)self windUnitLabel];
  layer3 = [windUnitLabel layer];
  [layer3 setFilters:v7];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (int64_t)supportedComplicationFamily
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 10;
}

@end