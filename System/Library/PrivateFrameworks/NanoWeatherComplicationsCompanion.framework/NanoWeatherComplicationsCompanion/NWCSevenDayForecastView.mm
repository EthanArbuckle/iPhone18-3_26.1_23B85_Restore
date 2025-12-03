@interface NWCSevenDayForecastView
+ (void)initialize;
- (CLKMonochromeFilterProvider)filterProvider;
- (NWCDailyForecastViewBuildable)viewBuilder;
- (id)_setupViewBuilderForDevice:(id)device;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_addDailyForecastViewsToStackView:(id)view;
- (void)_applyConstraints;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)transitionToMonochromeWithFraction:(double)fraction;
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

- (void)_addDailyForecastViewsToStackView:(id)view
{
  viewBuilder = [(NWCSevenDayForecastView *)self viewBuilder];
  v4 = +[NWCSevenDayForecastView maximumDailyConditionCount];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4 + 1];
  v7 = objc_opt_new();
  [(NWCSevenDayForecastView *)self setDailyForecastRangeView:v7];

  horizontalStackView = [(NWCSevenDayForecastView *)self horizontalStackView];
  dailyForecastRangeView = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
  [horizontalStackView addArrangedSubview:dailyForecastRangeView];

  dailyForecastRangeView2 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
  widthAnchor = [dailyForecastRangeView2 widthAnchor];
  horizontalStackView2 = [(NWCSevenDayForecastView *)self horizontalStackView];
  widthAnchor2 = [horizontalStackView2 widthAnchor];
  v14 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.1];
  v15 = v5;
  [v5 addObject:v14];

  for (; v4; --v4)
  {
    v16 = objc_opt_new();
    [v6 addObject:v16];
    horizontalStackView3 = [(NWCSevenDayForecastView *)self horizontalStackView];
    [horizontalStackView3 addArrangedSubview:v16];

    createDailyForecastView = [viewBuilder createDailyForecastView];
    [v28 addObject:createDailyForecastView];
    horizontalStackView4 = [(NWCSevenDayForecastView *)self horizontalStackView];
    [horizontalStackView4 addArrangedSubview:createDailyForecastView];

    widthAnchor3 = [createDailyForecastView widthAnchor];
    horizontalStackView5 = [(NWCSevenDayForecastView *)self horizontalStackView];
    widthAnchor4 = [horizontalStackView5 widthAnchor];
    v23 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.121];
    [v15 addObject:v23];
  }

  v24 = objc_opt_new();
  [v6 addObject:v24];
  horizontalStackView6 = [(NWCSevenDayForecastView *)self horizontalStackView];
  [horizontalStackView6 addArrangedSubview:v24];

  [MEMORY[0x277CCAAD0] activateConstraints:v15];
  v26 = [v28 copy];
  [(NWCSevenDayForecastView *)self setDailyForecastViews:v26];

  v27 = [v6 copy];
  [(NWCSevenDayForecastView *)self setSeparatorViews:v27];
}

- (void)_applyConstraints
{
  v21[4] = *MEMORY[0x277D85DE8];
  horizontalStackView = [(NWCSevenDayForecastView *)self horizontalStackView];
  topAnchor = [horizontalStackView topAnchor];
  topAnchor2 = [(NWCSevenDayForecastView *)self topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[0] = v17;
  bottomAnchor = [(NWCSevenDayForecastView *)self bottomAnchor];
  horizontalStackView2 = [(NWCSevenDayForecastView *)self horizontalStackView];
  bottomAnchor2 = [horizontalStackView2 bottomAnchor];
  v3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[1] = v3;
  horizontalStackView3 = [(NWCSevenDayForecastView *)self horizontalStackView];
  leadingAnchor = [horizontalStackView3 leadingAnchor];
  leadingAnchor2 = [(NWCSevenDayForecastView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[2] = v7;
  trailingAnchor = [(NWCSevenDayForecastView *)self trailingAnchor];
  horizontalStackView4 = [(NWCSevenDayForecastView *)self horizontalStackView];
  trailingAnchor2 = [horizontalStackView4 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v6 = [(NWCSevenDayForecastView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
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

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v7 = [metadata objectForKeyedSubscript:@"NWCDailyForecastMetadata_Simple"];

  v6 = v7;
  if (v7)
  {
    [(NWCSevenDayForecastView *)self processSimpleEntryModel:v7];
    v6 = v7;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NWCSevenDayForecastView *)self filterProvider];
  v6 = [filterProvider colorForView:self accented:0];
  device = [(NWCSevenDayForecastView *)self device];
  v8 = [device supportsCapability:GossamerCapability_0];

  if (v8)
  {
    v9 = [filterProvider filtersForView:self style:2 fraction:fraction];
    v10 = [filterProvider filtersForView:self style:0 fraction:fraction];
    dailyForecastRangeView = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    layer = [dailyForecastRangeView layer];
    [layer setFilters:v10];

    dailyForecastViews = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __62__NWCSevenDayForecastView_transitionToMonochromeWithFraction___block_invoke;
    v33[3] = &unk_279962238;
    fractionCopy = fraction;
    v34 = v9;
    v35 = v10;
    v36 = v6;
    v14 = v10;
    v15 = v9;
    [dailyForecastViews enumerateObjectsUsingBlock:v33];
  }

  else
  {
    v16 = [filterProvider colorForView:self accented:1];
    dailyForecastViews2 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __62__NWCSevenDayForecastView_transitionToMonochromeWithFraction___block_invoke_2;
    v30[3] = &unk_279962260;
    v31 = v16;
    fractionCopy2 = fraction;
    v15 = v16;
    [dailyForecastViews2 enumerateObjectsUsingBlock:v30];

    filterProvider2 = [(NWCSevenDayForecastView *)self filterProvider];
    v19 = [filterProvider2 filtersForView:self style:0 fraction:fraction];

    dailyForecastRangeView2 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    layer2 = [dailyForecastRangeView2 layer];
    [layer2 setFilters:v19];

    dailyForecastViews3 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __62__NWCSevenDayForecastView_transitionToMonochromeWithFraction___block_invoke_3;
    v28[3] = &unk_279962288;
    v29 = v19;
    v23 = v19;
    [dailyForecastViews3 enumerateObjectsUsingBlock:v28];

    v14 = v31;
  }

  v24 = [v6 colorWithAlphaComponent:0.25];
  v25 = +[NWCForecastSeparatorView defaultColor];
  v26 = NWMInterpolateBetweenColors();

  separatorViews = [(NWCSevenDayForecastView *)self separatorViews];
  [separatorViews makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v26];
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
  filterProvider = [(NWCSevenDayForecastView *)self filterProvider];
  v4 = [filterProvider colorForView:self accented:0];
  device = [(NWCSevenDayForecastView *)self device];
  v6 = [device supportsCapability:GossamerCapability_0];

  if (v6)
  {
    v7 = [filterProvider filtersForView:self style:2];
    v8 = [filterProvider filtersForView:self style:0];
    dailyForecastRangeView = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
    layer = [dailyForecastRangeView layer];
    [layer setFilters:v8];

    dailyForecastViews = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke;
    v27[3] = &unk_2799622B0;
    v28 = v7;
    v29 = v8;
    v30 = v4;
    v12 = v8;
    v13 = v7;
    [dailyForecastViews enumerateObjectsUsingBlock:v27];
  }

  else
  {
    v14 = [filterProvider colorForView:self accented:1];
    dailyForecastViews2 = [(NWCSevenDayForecastView *)self dailyForecastViews];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke_2;
    v25[3] = &unk_279962288;
    v13 = v14;
    v26 = v13;
    [dailyForecastViews2 enumerateObjectsUsingBlock:v25];

    filterProvider2 = [(NWCSevenDayForecastView *)self filterProvider];
    v17 = [filterProvider2 filtersForView:self style:0 fraction:1.0];

    if ([v17 count])
    {
      dailyForecastRangeView2 = [(NWCSevenDayForecastView *)self dailyForecastRangeView];
      layer2 = [dailyForecastRangeView2 layer];
      [layer2 setFilters:v17];

      dailyForecastViews3 = [(NWCSevenDayForecastView *)self dailyForecastViews];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke_3;
      v23[3] = &unk_279962288;
      v24 = v17;
      [dailyForecastViews3 enumerateObjectsUsingBlock:v23];
    }

    v12 = v26;
  }

  v21 = [v4 colorWithAlphaComponent:0.25];
  separatorViews = [(NWCSevenDayForecastView *)self separatorViews];
  [separatorViews makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v21];
}

void __48__NWCSevenDayForecastView_updateMonochromeColor__block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 applyAccentFilters:v3 fraction:1.0];
  [v4 applyNonAccentFilters:a1[5] fraction:1.0];
  [v4 updateWithHighlightColor:a1[6] fraction:1.0];
}

- (id)_setupViewBuilderForDevice:(id)device
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
    device = [(NWCSevenDayForecastView *)self device];
    v5 = [(NWCSevenDayForecastView *)self _setupViewBuilderForDevice:device];
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