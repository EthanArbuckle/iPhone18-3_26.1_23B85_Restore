@interface NWCFiveHourForecastView
+ (void)initialize;
- (CLKMonochromeFilterProvider)filterProvider;
- (NWCHourlyForecastViewBuildable)viewBuilder;
- (id)_setupViewBuilderForDevice:(id)device;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_addHourlyForecastViewsToStackView:(id)view;
- (void)_applyConstraints;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)processSimpleEntryModel:(id)model;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NWCFiveHourForecastView

+ (void)initialize
{
  if (initialize_onceToken_3 != -1)
  {
    +[NWCFiveHourForecastView initialize];
  }
}

uint64_t __37__NWCFiveHourForecastView_initialize__block_invoke()
{
  GossamerCapability_2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E"];

  return MEMORY[0x2821F96F8]();
}

- (void)processSimpleEntryModel:(id)model
{
  hourlyEntryModels = [model hourlyEntryModels];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NWCFiveHourForecastView_processSimpleEntryModel___block_invoke;
  v5[3] = &unk_279962358;
  v5[4] = self;
  [hourlyEntryModels enumerateObjectsUsingBlock:v5];
}

void __51__NWCFiveHourForecastView_processSimpleEntryModel___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 hourlyForecastViews];
  v10 = [v9 count];

  if (v10 <= a3)
  {
    *a4 = 1;
  }

  v12 = [*(a1 + 32) hourlyForecastViews];
  v11 = [v12 objectAtIndexedSubscript:a3];
  [v11 applySimpleEntryModel:v8];
}

- (void)_addHourlyForecastViewsToStackView:(id)view
{
  viewBuilder = [(NWCFiveHourForecastView *)self viewBuilder];
  v4 = +[NWCFiveHourForecastView maximumHourlyConditionCount];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:v4];
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v4 + 1];
  {
    v7 = objc_opt_new();
    [i addObject:v7];
    horizontalStackView = [(NWCFiveHourForecastView *)self horizontalStackView];
    [horizontalStackView addArrangedSubview:v7];

    createHourlyForecastView = [viewBuilder createHourlyForecastView];
    [v5 addObject:createHourlyForecastView];
    horizontalStackView2 = [(NWCFiveHourForecastView *)self horizontalStackView];
    [horizontalStackView2 addArrangedSubview:createHourlyForecastView];

    widthAnchor = [createHourlyForecastView widthAnchor];
    horizontalStackView3 = [(NWCFiveHourForecastView *)self horizontalStackView];
    widthAnchor2 = [horizontalStackView3 widthAnchor];
    [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.19];
    v15 = v14 = i;
    [v20 addObject:v15];

    i = v14;
  }

  v16 = objc_opt_new();
  [i addObject:v16];
  horizontalStackView4 = [(NWCFiveHourForecastView *)self horizontalStackView];
  [horizontalStackView4 addArrangedSubview:v16];

  [MEMORY[0x277CCAAD0] activateConstraints:v20];
  v18 = [v5 copy];
  [(NWCFiveHourForecastView *)self setHourlyForecastViews:v18];

  v19 = [i copy];
  [(NWCFiveHourForecastView *)self setSeparatorViews:v19];
}

- (void)_applyConstraints
{
  v21[4] = *MEMORY[0x277D85DE8];
  horizontalStackView = [(NWCFiveHourForecastView *)self horizontalStackView];
  topAnchor = [horizontalStackView topAnchor];
  topAnchor2 = [(NWCFiveHourForecastView *)self topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[0] = v17;
  bottomAnchor = [(NWCFiveHourForecastView *)self bottomAnchor];
  horizontalStackView2 = [(NWCFiveHourForecastView *)self horizontalStackView];
  bottomAnchor2 = [horizontalStackView2 bottomAnchor];
  v3 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[1] = v3;
  horizontalStackView3 = [(NWCFiveHourForecastView *)self horizontalStackView];
  leadingAnchor = [horizontalStackView3 leadingAnchor];
  leadingAnchor2 = [(NWCFiveHourForecastView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[2] = v7;
  trailingAnchor = [(NWCFiveHourForecastView *)self trailingAnchor];
  horizontalStackView4 = [(NWCFiveHourForecastView *)self horizontalStackView];
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
  v6 = [(NWCFiveHourForecastView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
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

    [(NWCFiveHourForecastView *)v7 addSubview:v7->_horizontalStackView];
    [(NWCFiveHourForecastView *)v7 _addHourlyForecastViewsToStackView:v7->_horizontalStackView];
    [(NWCFiveHourForecastView *)v7 _applyConstraints];
  }

  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v7 = [metadata objectForKeyedSubscript:@"NWCHourlyForecastMetadata_Simple"];

  v6 = v7;
  if (v7)
  {
    [(NWCFiveHourForecastView *)self processSimpleEntryModel:v7];
    v6 = v7;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v27 = *MEMORY[0x277D85DE8];
  filterProvider = [(NWCFiveHourForecastView *)self filterProvider];
  v6 = [filterProvider colorForView:self accented:0];
  device = [(NWCFiveHourForecastView *)self device];
  v8 = [device supportsCapability:GossamerCapability_2];

  if (v8)
  {
    v9 = [filterProvider filtersForView:self style:2 fraction:fraction];
    layer = [filterProvider filtersForView:self style:0 fraction:fraction];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    hourlyForecastViews = [(NWCFiveHourForecastView *)self hourlyForecastViews];
    v12 = [hourlyForecastViews countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(hourlyForecastViews);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          [v16 applyAccentFilters:v9];
          [v16 applyNonAccentFilters:layer];
        }

        v13 = [hourlyForecastViews countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v9 = [filterProvider filtersForView:self style:0 fraction:fraction];
    layer = [(NWCFiveHourForecastView *)self layer];
    [layer setFilters:v9];
  }

  v17 = [v6 colorWithAlphaComponent:0.25];
  v18 = +[NWCForecastSeparatorView defaultColor];
  v19 = NWMInterpolateBetweenColors();

  separatorViews = [(NWCFiveHourForecastView *)self separatorViews];
  [separatorViews makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v19];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateMonochromeColor
{
  v23 = *MEMORY[0x277D85DE8];
  filterProvider = [(NWCFiveHourForecastView *)self filterProvider];
  v4 = [filterProvider colorForView:self accented:0];
  device = [(NWCFiveHourForecastView *)self device];
  v6 = [device supportsCapability:GossamerCapability_2];

  if (v6)
  {
    v7 = [filterProvider filtersForView:self style:2];
    layer = [filterProvider filtersForView:self style:0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    hourlyForecastViews = [(NWCFiveHourForecastView *)self hourlyForecastViews];
    v10 = [hourlyForecastViews countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(hourlyForecastViews);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          [v14 applyAccentFilters:v7];
          [v14 applyNonAccentFilters:layer];
        }

        v11 = [hourlyForecastViews countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v7 = [filterProvider filtersForView:self style:0];
    layer = [(NWCFiveHourForecastView *)self layer];
    [layer setFilters:v7];
  }

  v15 = [v4 colorWithAlphaComponent:0.25];
  separatorViews = [(NWCFiveHourForecastView *)self separatorViews];
  [separatorViews makeObjectsPerformSelector:sel_setBackgroundColor_ withObject:v15];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_setupViewBuilderForDevice:(id)device
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  v6 = NSStringFromProtocol(&unk_286D0F248);
  [v3 raise:v4 format:{@"Subclasses are expected to override %@ with a valid %@.", v5, v6}];

  return 0;
}

- (NWCHourlyForecastViewBuildable)viewBuilder
{
  viewBuilder = self->_viewBuilder;
  if (!viewBuilder)
  {
    device = [(NWCFiveHourForecastView *)self device];
    v5 = [(NWCFiveHourForecastView *)self _setupViewBuilderForDevice:device];
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