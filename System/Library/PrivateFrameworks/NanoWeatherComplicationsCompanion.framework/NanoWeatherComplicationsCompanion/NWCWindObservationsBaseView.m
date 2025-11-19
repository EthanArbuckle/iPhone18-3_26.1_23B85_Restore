@interface NWCWindObservationsBaseView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (int64_t)supportedComplicationFamily;
- (void)_applyConstraintsWithLayoutConstants:(id *)a3;
- (void)_processWindSpeed:(id)a3 unit:(id)a4 directionAbbreviation:(id)a5;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NWCWindObservationsBaseView

- (void)_applyConstraintsWithLayoutConstants:(id *)a3
{
  v53[9] = *MEMORY[0x277D85DE8];
  v52 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  v50 = [v52 leadingAnchor];
  v51 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v49 = [v51 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v53[0] = v48;
  v47 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  v45 = [v47 trailingAnchor];
  v46 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v44 = [v46 trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v53[1] = v43;
  v42 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  v40 = [v42 firstBaselineAnchor];
  v41 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v39 = [v41 topAnchor];
  v38 = [v40 constraintEqualToAnchor:v39 constant:2.0];
  v53[2] = v38;
  v5 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v6 = [v5 leadingAnchor];
  v7 = [(NWCWindObservationsBaseView *)self leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:a3->var3];

  v37 = v8;
  LODWORD(v9) = 1148829696;
  [v8 setPriority:v9];
  v53[3] = v8;
  v10 = [(NWCWindObservationsBaseView *)self trailingAnchor];
  v11 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v12 = [v11 trailingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:a3->var3];

  v36 = v13;
  LODWORD(v14) = 1148829696;
  [v13 setPriority:v14];
  v53[4] = v13;
  v35 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v34 = [v35 centerYAnchor];
  v33 = [(NWCWindObservationsBaseView *)self centerYAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v53[5] = v32;
  v30 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  v28 = [v30 leadingAnchor];
  v29 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v53[6] = v26;
  v15 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  v16 = [v15 trailingAnchor];
  v17 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v53[7] = v19;
  v20 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  v21 = [v20 topAnchor];
  v22 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v23 = [v22 firstBaselineAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v53[8] = v24;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:9];

  [MEMORY[0x277CCAAD0] activateConstraints:v31];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_processWindSpeed:(id)a3 unit:(id)a4 directionAbbreviation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  [v11 setText:v8];

  v12 = [(NWCWindObservationsBaseView *)self device];
  v13 = [(NWCWindObservationsBaseView *)self supportedComplicationFamily];
  ___LayoutConstants_block_invoke_4(v13, v12);
  v14 = &_LayoutConstants___constantsGraphicExtraLarge + 1;
  v15 = &xmmword_27FBA1740;
  if (v13 != 12)
  {
    v15 = &xmmword_27FBA1710;
  }

  v16 = *v15;
  if (v13 != 12)
  {
    v14 = &_LayoutConstants___constantsGraphicCircular + 1;
  }

  v17 = *v14;

  if ([v10 length] <= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v22 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v18 design:*MEMORY[0x277D74420]];
  v19 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  [v19 setFont:v22];

  v20 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  [v20 setText:v10];

  v21 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  [v21 setText:v9];
}

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = NWCWindObservationsBaseView;
  v6 = [(NWCWindObservationsBaseView *)&v32 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [(NWCWindObservationsBaseView *)v7 supportedComplicationFamily];
    ___LayoutConstants_block_invoke_4(v8, v5);
    if (v8 == 12)
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
    v21 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v19 setTextColor:v21];

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
    v25 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v23 setTextColor:v25];

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

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 metadata];
  v7 = [v6 objectForKeyedSubscript:@"NWCCurrentObservationsMetadata_WindDirectionAbbreviation"];

  v13 = v7;
  v8 = [v5 metadata];
  v9 = [v8 objectForKeyedSubscript:@"NWCCurrentObservationsMetadata_WindSpeed"];

  v10 = v9;
  v11 = [v5 metadata];

  v12 = [v11 objectForKeyedSubscript:@"NWCCurrentObservationsMetadata_WindUnit"];

  [(NWCWindObservationsBaseView *)self _processWindSpeed:v10 unit:v12 directionAbbreviation:v13];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v13 = [(NWCWindObservationsBaseView *)self filterProvider];
  v5 = [v13 filtersForView:self style:2 fraction:a3];
  v6 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  v7 = [v6 layer];
  [v7 setFilters:v5];

  v8 = [v13 filtersForView:self style:0 fraction:a3];
  v9 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v10 = [v9 layer];
  [v10 setFilters:v8];

  v11 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  v12 = [v11 layer];
  [v12 setFilters:v8];
}

- (void)updateMonochromeColor
{
  v12 = [(NWCWindObservationsBaseView *)self filterProvider];
  v3 = [v12 filtersForView:self style:2];
  v4 = [(NWCWindObservationsBaseView *)self windDirectionAbbreviationLabel];
  v5 = [v4 layer];
  [v5 setFilters:v3];

  v6 = [(NWCWindObservationsBaseView *)self filterProvider];
  v7 = [v6 filtersForView:self style:0];

  v8 = [(NWCWindObservationsBaseView *)self windSpeedLabel];
  v9 = [v8 layer];
  [v9 setFilters:v7];

  v10 = [(NWCWindObservationsBaseView *)self windUnitLabel];
  v11 = [v10 layer];
  [v11 setFilters:v7];
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