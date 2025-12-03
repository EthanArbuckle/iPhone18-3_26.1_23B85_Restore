@interface NTKSwissWorldClockComplicationGraphicRectangularView
- (BOOL)_shouldGenerate:(id)generate date:(id)date;
- (CGPoint)_locationMarkerOffsetForCoordinate:(id)coordinate;
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_reloadCities;
- (void)_updateNightMaskImage;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)dealloc;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKSwissWorldClockComplicationGraphicRectangularView

- (void)dealloc
{
  mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
  timeUpdateToken = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self timeUpdateToken];
  [mEMORY[0x277CBB700] stopUpdatesForToken:timeUpdateToken];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  significantTimeChangeObserver = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self significantTimeChangeObserver];
  [defaultCenter removeObserver:significantTimeChangeObserver];

  v7.receiver = self;
  v7.super_class = NTKSwissWorldClockComplicationGraphicRectangularView;
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)&v7 dealloc];
}

- (void)layoutSubviews
{
  v60 = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = NTKSwissWorldClockComplicationGraphicRectangularView;
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)&v58 layoutSubviews];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  locationViews = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self locationViews];
  [locationViews makeObjectsPerformSelector:sel_removeFromSuperview];

  if (![(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy])
  {
    cities = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cities];
    v13 = [cities count];

    if (v13)
    {
      device = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self device];
      ___LayoutConstants_block_invoke_27(device, device);
      v16 = v15;

      v17 = MEMORY[0x277CBEB18];
      cities2 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cities];
      v19 = [v17 arrayWithCapacity:{objc_msgSend(cities2, "count")}];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      cities3 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cities];
      v21 = [cities3 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v55;
        do
        {
          v24 = 0;
          do
          {
            if (*v55 != v23)
            {
              objc_enumerationMutation(cities3);
            }

            v25 = *(*(&v54 + 1) + 8 * v24);
            v26 = [[NTKWorldClockMapLocationView alloc] initWithFrame:0.0, 0.0, v16, v16];
            [v19 addObject:v26];
            [(NTKSwissWorldClockComplicationGraphicRectangularView *)self addSubview:v26];
            alCity = [v25 alCity];
            [alCity latitude];
            v29 = v28;
            [alCity longitude];
            v31 = v30;

            [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _locationMarkerOffsetForCoordinate:v29, v31];
            [(NTKWorldClockMapLocationView *)v26 positionAtPoint:NTKWorldClock_MapPointForLocationOnMap(v29 withinBounds:v31, v8, v10, v32)];

            ++v24;
          }

          while (v22 != v24);
          v22 = [cities3 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v22);
      }

      v33 = [v19 copy];
      [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setLocationViews:v33];
    }
  }

  if (![(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy]&& ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLatitude], (v34 = objc_claimAutoreleasedReturnValue()) != 0) && (v35 = v34, [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLongitude], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, v36))
  {
    cityLatitude = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLatitude];
    [cityLatitude doubleValue];
    v39 = v38;

    cityLongitude = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLongitude];
    [cityLongitude doubleValue];
    v42 = v41;

    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _locationMarkerOffsetForCoordinate:v39, v42];
    v44 = NTKWorldClock_MapPointForLocationOnMap(v39, v42, v8, v10, v43);
    v46 = v45;
    highlightedLocationView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
    [highlightedLocationView positionAtPoint:v44 withinBounds:{v46, v4, v6, v8, v10}];

    highlightedLocationView2 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self bringSubviewToFront:highlightedLocationView2];

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  highlightedLocationView3 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
  [highlightedLocationView3 setHidden:v49];

  mapView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
  [mapView setFrame:{v4, v6, v8, v10}];

  nightMaskView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
  [nightMaskView setFrame:{v4, v6, v8, v10}];

  if (self->_showGossamerUI)
  {
    terminatorView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
    [terminatorView setFrame:{v4, v6, v8, v10}];
  }

  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _updateNightMaskImage];
}

- (CGPoint)_locationMarkerOffsetForCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v5 = -1.5;
  v6 = 0.5;
  if (var1 > 0.0)
  {
    v6 = var1 * -10.0 / 180.0;
    if (var0 < 0.0)
    {
      v5 = var0 * -10.0 / 90.0;
    }
  }

  result.y = v5;
  result.x = v6;
  return result;
}

- (void)_reloadCities
{
  v3 = +[NTKWorldClockManager sharedManager];
  [v3 loadCities];

  v4 = +[NTKWorldClockManager sharedManager];
  cities = [v4 cities];

  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setCities:cities];
}

- (void)_updateNightMaskImage
{
  if ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy]|| ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self overrideDate], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    overrideDate = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self overrideDate];
  }

  else
  {
    if ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self shouldShowIdealizedTime])
    {
      NTKIdealizedDate();
    }

    else
    {
      [MEMORY[0x277CBBAD8] complicationDate];
    }
    overrideDate = ;
  }

  v26 = overrideDate;
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self bounds];
  v6 = v5;
  v8 = v7;
  showGossamerUI = self->_showGossamerUI;
  nightMask = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMask];
  v11 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _shouldGenerate:nightMask date:v26];

  if (showGossamerUI)
  {
    if (v11)
    {
      v12 = [MEMORY[0x277D755B8] ntk_gossamer_nightMaskForDate:v26 size:{v6, v8}];
      [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setNightMask:v12];
      terminatorView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
      subviews = [terminatorView subviews];
      [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

      v15 = [MEMORY[0x277D75D18] ntk_gossamer_terminatorViewForDate:v26 size:{v6, v8}];
      terminatorView2 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
      [terminatorView2 addSubview:v15];

      nightMask2 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMask];
      nightMaskView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
      [nightMaskView setImage:nightMask2];

      [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setGeneratedDate:v26];
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    v19 = [MEMORY[0x277D755B8] ntk_pregossamer_nightMaskForDate:v26 size:{v6, v8}];
    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setNightMask:v19];

    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setGeneratedDate:v26];
  }

  nightMask3 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMask];
  nightMaskView2 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
  [nightMaskView2 setImage:nightMask3];

LABEL_10:
  isPrivacy = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy];
  if (isPrivacy)
  {
    mapView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
    [mapView setMaskView:0];
  }

  else
  {
    mapView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
    mapView2 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
    [mapView2 setMaskView:mapView];
  }

  terminatorView3 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
  [terminatorView3 setHidden:isPrivacy];
}

- (BOOL)_shouldGenerate:(id)generate date:(id)date
{
  generateCopy = generate;
  if ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy])
  {
    v6 = 0;
  }

  else
  {
    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self bounds];
    v8 = v7;
    v10 = v9;
    generatedDate = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self generatedDate];
    v12 = generatedDate;
    v6 = 1;
    if (generateCopy)
    {
      if (generatedDate)
      {
        [generateCopy size];
        if (v8 == v14 && v10 == v13)
        {
          v15 = [MEMORY[0x277CBEAA8] now];
          [v15 timeIntervalSinceDate:v12];
          v6 = v16 > 86400.0 / v8;
        }
      }
    }
  }

  return v6;
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKSwissWorldClockComplicationGraphicRectangularView;
  v6 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    ntk_wc_sunYellowColor = [MEMORY[0x277D75348] ntk_wc_sunYellowColor];
    tintColor = v7->_tintColor;
    v7->_tintColor = ntk_wc_sunYellowColor;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    strokeColor = v7->_strokeColor;
    v7->_strokeColor = whiteColor;

    v12 = objc_alloc(MEMORY[0x277D755E8]);
    NTKImageNamed(@"WCGraphicRectangularMap");
  }

  return 0;
}

void __89__NTKSwissWorldClockComplicationGraphicRectangularView_initFullColorImageViewWithDevice___block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNightMaskImage];
}

void __89__NTKSwissWorldClockComplicationGraphicRectangularView_initFullColorImageViewWithDevice___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNightMaskImage];
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  metadata = [provider metadata];
  v5 = [metadata objectForKeyedSubscript:@"Latitude"];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setCityLatitude:v5];

  v6 = [metadata objectForKeyedSubscript:@"Longitude"];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setCityLongitude:v6];

  v7 = [metadata objectForKeyedSubscript:@"OverrideDate"];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setOverrideDate:v7];

  v8 = [metadata objectForKeyedSubscript:@"ShowIdealizedTime"];
  -[NTKSwissWorldClockComplicationGraphicRectangularView setShowIdealizedTime:](self, "setShowIdealizedTime:", [v8 BOOLValue]);

  v9 = [metadata objectForKeyedSubscript:@"IsPrivacy"];
  -[NTKSwissWorldClockComplicationGraphicRectangularView setIsPrivacy:](self, "setIsPrivacy:", [v9 BOOLValue]);

  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _updateNightMaskImage];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self filterProvider];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self tintColor];
  objc_claimAutoreleasedReturnValue();
  [filterProvider colorForView:self accented:1];
  objc_claimAutoreleasedReturnValue();
  CLKUIInterpolateBetweenColors();
}

- (void)updateMonochromeColor
{
  v25 = *MEMORY[0x277D85DE8];
  filterProvider = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self filterProvider];
  v4 = [filterProvider colorForView:self accented:1];
  highlightedLocationView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
  [highlightedLocationView setFillColor:v4];

  v6 = [filterProvider colorForView:self accented:0];
  highlightedLocationView2 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
  [highlightedLocationView2 setStrokeColor:v6];

  if (self->_showGossamerUI)
  {
    v8 = [filterProvider filtersForView:self style:2];
    terminatorView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
    layer = [terminatorView layer];
    [layer setFilters:v8];

    v11 = [filterProvider filtersForView:self style:0];
    mapView = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
    layer2 = [mapView layer];
    [layer2 setFilters:v11];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    locationViews = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self locationViews];
    v15 = [locationViews countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(locationViews);
          }

          layer3 = [*(*(&v20 + 1) + 8 * v18) layer];
          [layer3 setFilters:v11];

          ++v18;
        }

        while (v16 != v18);
        v16 = [locationViews countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end