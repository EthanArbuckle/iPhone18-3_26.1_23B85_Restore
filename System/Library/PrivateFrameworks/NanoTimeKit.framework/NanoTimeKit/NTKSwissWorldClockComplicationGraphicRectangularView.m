@interface NTKSwissWorldClockComplicationGraphicRectangularView
- (BOOL)_shouldGenerate:(id)a3 date:(id)a4;
- (CGPoint)_locationMarkerOffsetForCoordinate:(id)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (void)_reloadCities;
- (void)_updateNightMaskImage;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKSwissWorldClockComplicationGraphicRectangularView

- (void)dealloc
{
  v3 = [MEMORY[0x277CBB700] sharedInstance];
  v4 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self timeUpdateToken];
  [v3 stopUpdatesForToken:v4];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self significantTimeChangeObserver];
  [v5 removeObserver:v6];

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
  v11 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self locationViews];
  [v11 makeObjectsPerformSelector:sel_removeFromSuperview];

  if (![(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy])
  {
    v12 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cities];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self device];
      ___LayoutConstants_block_invoke_27(v14, v14);
      v16 = v15;

      v17 = MEMORY[0x277CBEB18];
      v18 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cities];
      v19 = [v17 arrayWithCapacity:{objc_msgSend(v18, "count")}];

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v20 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cities];
      v21 = [v20 countByEnumeratingWithState:&v54 objects:v59 count:16];
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
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v54 + 1) + 8 * v24);
            v26 = [[NTKWorldClockMapLocationView alloc] initWithFrame:0.0, 0.0, v16, v16];
            [v19 addObject:v26];
            [(NTKSwissWorldClockComplicationGraphicRectangularView *)self addSubview:v26];
            v27 = [v25 alCity];
            [v27 latitude];
            v29 = v28;
            [v27 longitude];
            v31 = v30;

            [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _locationMarkerOffsetForCoordinate:v29, v31];
            [(NTKWorldClockMapLocationView *)v26 positionAtPoint:NTKWorldClock_MapPointForLocationOnMap(v29 withinBounds:v31, v8, v10, v32)];

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v22);
      }

      v33 = [v19 copy];
      [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setLocationViews:v33];
    }
  }

  if (![(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy]&& ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLatitude], (v34 = objc_claimAutoreleasedReturnValue()) != 0) && (v35 = v34, [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLongitude], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, v36))
  {
    v37 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLatitude];
    [v37 doubleValue];
    v39 = v38;

    v40 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self cityLongitude];
    [v40 doubleValue];
    v42 = v41;

    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _locationMarkerOffsetForCoordinate:v39, v42];
    v44 = NTKWorldClock_MapPointForLocationOnMap(v39, v42, v8, v10, v43);
    v46 = v45;
    v47 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
    [v47 positionAtPoint:v44 withinBounds:{v46, v4, v6, v8, v10}];

    v48 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self bringSubviewToFront:v48];

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
  [v50 setHidden:v49];

  v51 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
  [v51 setFrame:{v4, v6, v8, v10}];

  v52 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
  [v52 setFrame:{v4, v6, v8, v10}];

  if (self->_showGossamerUI)
  {
    v53 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
    [v53 setFrame:{v4, v6, v8, v10}];
  }

  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _updateNightMaskImage];
}

- (CGPoint)_locationMarkerOffsetForCoordinate:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
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
  v5 = [v4 cities];

  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setCities:v5];
}

- (void)_updateNightMaskImage
{
  if ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy]|| ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self overrideDate], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self overrideDate];
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
    v4 = ;
  }

  v26 = v4;
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self bounds];
  v6 = v5;
  v8 = v7;
  showGossamerUI = self->_showGossamerUI;
  v10 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMask];
  v11 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _shouldGenerate:v10 date:v26];

  if (showGossamerUI)
  {
    if (v11)
    {
      v12 = [MEMORY[0x277D755B8] ntk_gossamer_nightMaskForDate:v26 size:{v6, v8}];
      [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setNightMask:v12];
      v13 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
      v14 = [v13 subviews];
      [v14 makeObjectsPerformSelector:sel_removeFromSuperview];

      v15 = [MEMORY[0x277D75D18] ntk_gossamer_terminatorViewForDate:v26 size:{v6, v8}];
      v16 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
      [v16 addSubview:v15];

      v17 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMask];
      v18 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
      [v18 setImage:v17];

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

  v20 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMask];
  v21 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
  [v21 setImage:v20];

LABEL_10:
  v22 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy];
  if (v22)
  {
    v23 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
    [v23 setMaskView:0];
  }

  else
  {
    v23 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self nightMaskView];
    v24 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
    [v24 setMaskView:v23];
  }

  v25 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
  [v25 setHidden:v22];
}

- (BOOL)_shouldGenerate:(id)a3 date:(id)a4
{
  v5 = a3;
  if ([(NTKSwissWorldClockComplicationGraphicRectangularView *)self isPrivacy])
  {
    v6 = 0;
  }

  else
  {
    [(NTKSwissWorldClockComplicationGraphicRectangularView *)self bounds];
    v8 = v7;
    v10 = v9;
    v11 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self generatedDate];
    v12 = v11;
    v6 = 1;
    if (v5)
    {
      if (v11)
      {
        [v5 size];
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

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = NTKSwissWorldClockComplicationGraphicRectangularView;
  v6 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)&v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [MEMORY[0x277D75348] ntk_wc_sunYellowColor];
    tintColor = v7->_tintColor;
    v7->_tintColor = v8;

    v10 = [MEMORY[0x277D75348] whiteColor];
    strokeColor = v7->_strokeColor;
    v7->_strokeColor = v10;

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

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v10 = [a3 metadata];
  v5 = [v10 objectForKeyedSubscript:@"Latitude"];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setCityLatitude:v5];

  v6 = [v10 objectForKeyedSubscript:@"Longitude"];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setCityLongitude:v6];

  v7 = [v10 objectForKeyedSubscript:@"OverrideDate"];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self setOverrideDate:v7];

  v8 = [v10 objectForKeyedSubscript:@"ShowIdealizedTime"];
  -[NTKSwissWorldClockComplicationGraphicRectangularView setShowIdealizedTime:](self, "setShowIdealizedTime:", [v8 BOOLValue]);

  v9 = [v10 objectForKeyedSubscript:@"IsPrivacy"];
  -[NTKSwissWorldClockComplicationGraphicRectangularView setIsPrivacy:](self, "setIsPrivacy:", [v9 BOOLValue]);

  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self _updateNightMaskImage];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v4 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self filterProvider];
  [(NTKSwissWorldClockComplicationGraphicRectangularView *)self tintColor];
  objc_claimAutoreleasedReturnValue();
  [v4 colorForView:self accented:1];
  objc_claimAutoreleasedReturnValue();
  CLKUIInterpolateBetweenColors();
}

- (void)updateMonochromeColor
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self filterProvider];
  v4 = [v3 colorForView:self accented:1];
  v5 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
  [v5 setFillColor:v4];

  v6 = [v3 colorForView:self accented:0];
  v7 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self highlightedLocationView];
  [v7 setStrokeColor:v6];

  if (self->_showGossamerUI)
  {
    v8 = [v3 filtersForView:self style:2];
    v9 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self terminatorView];
    v10 = [v9 layer];
    [v10 setFilters:v8];

    v11 = [v3 filtersForView:self style:0];
    v12 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self mapView];
    v13 = [v12 layer];
    [v13 setFilters:v11];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [(NTKSwissWorldClockComplicationGraphicRectangularView *)self locationViews];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v20 + 1) + 8 * v18) layer];
          [v19 setFilters:v11];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
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