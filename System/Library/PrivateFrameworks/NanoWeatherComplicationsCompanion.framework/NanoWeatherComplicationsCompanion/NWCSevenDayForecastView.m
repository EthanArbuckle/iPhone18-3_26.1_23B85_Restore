@interface NWCSevenDayForecastView
+ (void)initialize;
- (CLKMonochromeFilterProvider)filterProvider;
- (NWCDailyForecastViewBuildable)viewBuilder;
- (id)_setupViewBuilderForDevice:(id)a3;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (void)_addDailyForecastViewsToStackView:(id)a3;
- (void)_applyConstraints;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NWCSevenDayForecastView

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[NWCSevenDayForecastView initialize];
  }
}

uint64_t __37__NWCSevenDayForecastView_initialize__block_invoke()
{
  GossamerCapability_0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E"];

  return MEMORY[0x2821F96F8]();
}

- (void)_addDailyForecastViewsToStackView:(id)a3
{
  v29 = [(NWCSevenDayForecastView *)self viewBuilder];
  v4 = +[NWCSevenDayForecastView maximumDailyConditionCount];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4 + 1];
  v7 = objc_opt_new();
  [(NWCSevenDayForecastView *)self setDailyForecastRangeView:v7];

  v8 = [(NWCSevenDayForecastView *)self horizontalStackView];
  v9 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
  [v8 addArrangedSubview:v9];

  v10 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
  v11 = [v10 widthAnchor];
  v12 = [(NWCSevenDayForecastView *)self horizontalStackView];
  v13 = [v12 widthAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 multiplier:0.1];
  v15 = v5;
  [v5 addObject:v14];

  for (; v4; --v4)
  {
    v16 = objc_opt_new();
    [v6 addObject:v16];
    v17 = [(NWCSevenDayForecastView *)self horizontalStackView];
    [v17 addArrangedSubview:v16];

    v18 = [v29 createDailyForecastView];
    [v28 addObject:v18];
    v19 = [(NWCSevenDayForecastView *)self horizontalStackView];
    [v19 addArrangedSubview:v18];

    v20 = [v18 widthAnchor];
    v21 = [(NWCSevenDayForecastView *)self horizontalStackView];
    v22 = [v21 widthAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 multiplier:0.121];
    [v15 addObject:v23];
  }

  v24 = objc_opt_new();
  [v6 addObject:v24];
  v25 = [(NWCSevenDayForecastView *)self horizontalStackView];
  [v25 addArrangedSubview:v24];

  [MEMORY[0x277CCAAD0] activateConstraints:v15];
  v26 = [v28 copy];
  [(NWCSevenDayForecastView *)self setDailyForecastViews:v26];

  v27 = [v6 copy];
  [(NWCSevenDayForecastView *)self setSeparatorViews:v27];
}

- (void)_applyConstraints
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20 = [(NWCSevenDayForecastView *)self horizontalStackView];
  v19 = [v20 topAnchor];
  v18 = [(NWCSevenDayForecastView *)self topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v21[0] = v17;
  v15 = [(NWCSevenDayForecastView *)self bottomAnchor];
  v16 = [(NWCSevenDayForecastView *)self horizontalStackView];
  v14 = [v16 bottomAnchor];
  v3 = [v15 constraintEqualToAnchor:v14];
  v21[1] = v3;
  v4 = [(NWCSevenDayForecastView *)self horizontalStackView];
  v5 = [v4 leadingAnchor];
  v6 = [(NWCSevenDayForecastView *)self leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v21[2] = v7;
  v8 = [(NWCSevenDayForecastView *)self trailingAnchor];
  v9 = [(NWCSevenDayForecastView *)self horizontalStackView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v21[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v5 = a3;
  v6 = [(NWCSevenDayForecastView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_opt_new();
    [(UIStackView *)v8 setAxis:0];
    [(UIStackView *)v8 setDistribution:3];
    [(UIStackView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    horizontalStackView = v7->_horizontalStackView;
    v7->_horizontalStackView = v8;

    [(NWCSevenDayForecastView *)v7 addSubview:v7->_horizontalStackView];
    [(NWCSevenDayForecastView *)v7 _addDailyForecastViewsToStackView:v7->_horizontalStackView];
    [(NWCSevenDayForecastView *)v7 _applyConstraints];
  }

  return v7;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = [a3 metadata];
  v7 = [v5 objectForKeyedSubscript:@"NWCDailyForecastMetadata_Simple"];

  v6 = v7;
  if (v7)
  {
    [(NWCSevenDayForecastView *)self processSimpleEntryModel:v7];
    v6 = v7;
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NWCSevenDayForecastView *)self filterProvider];
  v6 = [v5 colorForView:self accented:0];
  v7 = [(NWCSevenDayForecastView *)self device];
  v8 = [v7 supportsCapability:GossamerCapability_0];

  if (v8)
  {
    v9 = [v5 filtersForView:self style:2 fraction:a3];
    v10 = [v5 filtersForView:self style:0 fraction:a3];
    v11 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    v12 = [v11 layer];
    [v12 setFilters:v10];

    v13 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __62__NWCSevenDayForecastView_transitionToMonochromeWithFraction___block_invoke;
    v33[3] = &unk_279962238;
    v37 = a3;
    v34 = v9;
    v35 = v10;
    v36 = v6;
    v14 = v10;
    v15 = v9;
    [v13 enumerateObjectsUsingBlock:v33];
  }

  else
  {
    v16 = [v5 colorForView:self accented:1];
    v17 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __62__NWCSevenDayForecastView_transitionToMonochromeWithFraction___block_invoke_2;
    v30[3] = &unk_279962260;
    v31 = v16;
    v32 = a3;
    v15 = v16;
    [v17 enumerateObjectsUsingBlock:v30];

    v18 = [(NWCSevenDayForecastView *)self filterProvider];
    v19 = [v18 filtersForView:self style:0 fraction:a3];

    v20 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    v21 = [v20 layer];
    [v21 setFilters:v19];

    v22 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__NWCSevenDayForecastView_transitionToMonochromeWithFraction___block_invoke_3;
    v28[3] = &unk_279962288;
    v29 = v19;
    v23 = v19;
    [v22 enumerateObjectsUsingBlock:v28];

    v14 = v31;
  }

  v24 = [v6 colorWithAlphaComponent:0.25];
  v25 = +[NWCForecastSeparatorView defaultColor];
  v26 = NWMInterpolateBetweenColors();

  v27 = [(NWCSevenDayForecastView *)self separatorViews];
  [v27 makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v26];
}

void __62__NWCSevenDayForecastView_transitionToMonochromeWithFraction___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[7];
  v5 = a2;
  [v5 applyAccentFilters:v3 fraction:v4];
  [v5 applyNonAccentFilters:*(a1 + 5) fraction:a1[7]];
  [v5 updateWithHighlightColor:*(a1 + 6) fraction:a1[7]];
}

- (void)updateMonochromeColor
{
  v3 = [(NWCSevenDayForecastView *)self filterProvider];
  v4 = [v3 colorForView:self accented:0];
  v5 = [(NWCSevenDayForecastView *)self device];
  v6 = [v5 supportsCapability:GossamerCapability_0];

  if (v6)
  {
    v7 = [v3 filtersForView:self style:2];
    v8 = [v3 filtersForView:self style:0];
    v9 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    v10 = [v9 layer];
    [v10 setFilters:v8];

    v11 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke;
    v27[3] = &unk_2799622B0;
    v28 = v7;
    v29 = v8;
    v30 = v4;
    v12 = v8;
    v13 = v7;
    [v11 enumerateObjectsUsingBlock:v27];
  }

  else
  {
    v14 = [v3 colorForView:self accented:1];
    v15 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke_2;
    v25[3] = &unk_279962288;
    v13 = v14;
    v26 = v13;
    [v15 enumerateObjectsUsingBlock:v25];

    v16 = [(NWCSevenDayForecastView *)self filterProvider];
    v17 = [v16 filtersForView:self style:0 fraction:1.0];

    if ([v17 count])
    {
      v18 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
      v19 = [v18 layer];
      [v19 setFilters:v17];

      v20 = [(NWCSevenDayForecastView *)self dailyForecastViews];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke_3;
      v23[3] = &unk_279962288;
      v24 = v17;
      [v20 enumerateObjectsUsingBlock:v23];
    }

    v12 = v26;
  }

  v21 = [v4 colorWithAlphaComponent:0.25];
  v22 = [(NWCSevenDayForecastView *)self separatorViews];
  [v22 makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v21];
}

void __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 applyAccentFilters:v3 fraction:1.0];
  [v4 applyNonAccentFilters:a1[5] fraction:1.0];
  [v4 updateWithHighlightColor:a1[6] fraction:1.0];
}

- (id)_setupViewBuilderForDevice:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  v6 = NSStringFromProtocol(&unk_286D0F568);
  [v3 raise:v4 format:{@"Subclasses are expected to override %@ with a valid %@.", v5, v6}];

  return 0;
}

- (NWCDailyForecastViewBuildable)viewBuilder
{
  viewBuilder = self->_viewBuilder;
  if (!viewBuilder)
  {
    v4 = [(NWCSevenDayForecastView *)self device];
    v5 = [(NWCSevenDayForecastView *)self _setupViewBuilderForDevice:v4];
    v6 = self->_viewBuilder;
    self->_viewBuilder = v5;

    viewBuilder = self->_viewBuilder;
  }

  return viewBuilder;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end