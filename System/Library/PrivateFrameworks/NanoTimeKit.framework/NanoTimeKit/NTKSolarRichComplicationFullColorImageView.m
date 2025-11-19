@interface NTKSolarRichComplicationFullColorImageView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)a3 family:(int64_t)a4;
- (void)_dateDidUpdate;
- (void)_didReceiveSignificantTimeChangeNotification;
- (void)_didReceiveTimeZoneDidChangeNotification;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateGradientBackgroundWithYPosition:(double)a3 xPercentage:(double)a4 topDistanceAboveHorizonLine:(double)a5 bottomDistanceBelowHorizonLine:(double)a6;
- (void)_updateSolarDiskWithUsingIdealizedTime:(BOOL)a3 forceUpdate:(BOOL)a4 animated:(BOOL)a5;
- (void)_updateSolarPathWithAnimated:(BOOL)a3;
- (void)_updateWaypoints;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
- (void)updateWithLocation:(id)a3 useIdealizedTime:(BOOL)a4 forceUpdate:(BOOL)a5 animated:(BOOL)a6;
@end

@implementation NTKSolarRichComplicationFullColorImageView

- (id)initFullColorImageViewWithDevice:(id)a3 family:(int64_t)a4
{
  v73[5] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v66.receiver = self;
  v66.super_class = NTKSolarRichComplicationFullColorImageView;
  v8 = [(NTKSolarRichComplicationFullColorImageView *)&v66 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    [(NTKSolarRichComplicationFullColorImageView *)v9 _setSolarPathNeedsUpdate];
    memset(v71, 0, sizeof(v71));
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(&v67, 0, sizeof(v67));
    v10 = &v67;
    ___LayoutConstants_block_invoke_58(v7, &v67);
    if (a4 != 10)
    {
      if (a4 == 12)
      {
        v10 = v71;
      }

      else
      {
        v11 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          _LayoutConstants_cold_1(a4, v11);
        }

        v10 = &v67;
      }
    }

    v12 = *&v10[1].a;
    v62 = *&v10->tx;
    v63 = v12;
    v14 = *&v10[1].tx;
    v64 = *&v10[1].c;
    v13 = v64;
    v65 = v14;
    v16 = *&v10->c;
    v60 = *&v10->a;
    v15 = v60;
    v61 = v16;
    *&v9->_layoutConstants.lineTop = v62;
    *&v9->_layoutConstants.strokeDiskDiameter = v12;
    *&v9->_layoutConstants.fillDiskDiameter = v13;
    *&v9->_layoutConstants.haloMaxScale = v14;
    *&v9->_layoutConstants.complicationContentDiameter = v15;
    v9->_layoutConstants.curveMaxSize = v16;
    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v17;

    CGAffineTransformMakeRotation(&v59, 3.14159265);
    v19 = v9->_backgroundView;
    v67 = v59;
    [(UIView *)v19 setTransform:&v67];
    [(NTKSolarRichComplicationFullColorImageView *)v9 addSubview:v9->_backgroundView];
    v20 = objc_alloc_init(MEMORY[0x277CD9EB0]);
    gradientLayer = v9->_gradientLayer;
    v9->_gradientLayer = v20;

    v22 = [(UIView *)v9->_backgroundView layer];
    [v22 addSublayer:v9->_gradientLayer];

    v23 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    gradientAdjustmentLayer = v9->_gradientAdjustmentLayer;
    v9->_gradientAdjustmentLayer = v23;

    v25 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.541176471 blue:0.474509804 alpha:1.0];
    -[CALayer setBackgroundColor:](v9->_gradientAdjustmentLayer, "setBackgroundColor:", [v25 CGColor]);

    v26 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA608]];
    [(CALayer *)v9->_gradientAdjustmentLayer setCompositingFilter:v26];

    v27 = [(UIView *)v9->_backgroundView layer];
    [v27 addSublayer:v9->_gradientAdjustmentLayer];

    v28 = objc_alloc_init(MEMORY[0x277D75D18]);
    lineView = v9->_lineView;
    v9->_lineView = v28;

    [(NTKSolarRichComplicationFullColorImageView *)v9 addSubview:v9->_lineView];
    v30 = objc_alloc_init(NTKBezierPathView);
    pathView = v9->_pathView;
    v9->_pathView = v30;

    [(NTKBezierPathView *)v9->_pathView setLineCap:*MEMORY[0x277CDA780]];
    [(NTKSolarRichComplicationFullColorImageView *)v9 addSubview:v9->_pathView];
    v32 = [NTKSolarTimeModel alloc];
    v33 = +[NTKDate faceDate];
    v34 = [(NTKSolarTimeModel *)v32 initWithReferenceDate:v33 referenceLocation:0];
    solarTimeModel = v9->_solarTimeModel;
    v9->_solarTimeModel = v34;

    [(NTKSolarTimeModel *)v9->_solarTimeModel setUsePlaceholderData:1];
    v72[0] = &unk_284185938;
    v36 = [[NTKSolarWaypoint alloc] initWithType:1 solarTimeModel:v9->_solarTimeModel];
    v73[0] = v36;
    v72[1] = &unk_284185950;
    v37 = [[NTKSolarWaypoint alloc] initWithType:2 solarTimeModel:v9->_solarTimeModel];
    v73[1] = v37;
    v72[2] = &unk_284185968;
    v38 = [[NTKSolarWaypoint alloc] initWithType:3 solarTimeModel:v9->_solarTimeModel];
    v73[2] = v38;
    v72[3] = &unk_284185980;
    v39 = [[NTKSolarWaypoint alloc] initWithType:4 solarTimeModel:v9->_solarTimeModel];
    v73[3] = v39;
    v72[4] = &unk_284185998;
    v40 = [[NTKSolarWaypoint alloc] initWithType:5 solarTimeModel:v9->_solarTimeModel];
    v73[4] = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:5];
    waypoints = v9->_waypoints;
    v9->_waypoints = v41;

    strokeDiskDiameter = v9->_layoutConstants.strokeDiskDiameter;
    v44 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    strokeDiskMaskLayer = v9->_strokeDiskMaskLayer;
    v9->_strokeDiskMaskLayer = v44;

    v46 = [MEMORY[0x277D75348] whiteColor];
    -[CALayer setBackgroundColor:](v9->_strokeDiskMaskLayer, "setBackgroundColor:", [v46 CGColor]);

    v47 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA628]];
    [(CALayer *)v9->_strokeDiskMaskLayer setCompositingFilter:v47];

    [(CALayer *)v9->_strokeDiskMaskLayer setFrame:0.0, 0.0, strokeDiskDiameter, strokeDiskDiameter];
    [(CALayer *)v9->_strokeDiskMaskLayer setCornerRadius:strokeDiskDiameter * 0.5];
    v48 = [(NTKBezierPathView *)v9->_pathView layer];
    [v48 addSublayer:v9->_strokeDiskMaskLayer];

    v49 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    strokeDiskBorderLayer = v9->_strokeDiskBorderLayer;
    v9->_strokeDiskBorderLayer = v49;

    v51 = [MEMORY[0x277D75348] whiteColor];
    -[CALayer setBorderColor:](v9->_strokeDiskBorderLayer, "setBorderColor:", [v51 CGColor]);

    [(CALayer *)v9->_strokeDiskBorderLayer setBorderWidth:v9->_layoutConstants.strokeDiskBorderWidth];
    [(CALayer *)v9->_strokeDiskBorderLayer setFrame:0.0, 0.0, strokeDiskDiameter, strokeDiskDiameter];
    [(CALayer *)v9->_strokeDiskBorderLayer setCornerRadius:strokeDiskDiameter * 0.5];
    v52 = [(NTKBezierPathView *)v9->_pathView layer];
    [v52 addSublayer:v9->_strokeDiskBorderLayer];

    v53 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    fillDiskLayer = v9->_fillDiskLayer;
    v9->_fillDiskLayer = v53;

    v55 = [MEMORY[0x277D75348] whiteColor];
    -[CALayer setBackgroundColor:](v9->_fillDiskLayer, "setBackgroundColor:", [v55 CGColor]);

    [(CALayer *)v9->_fillDiskLayer setFrame:0.0, 0.0, v9->_layoutConstants.fillDiskDiameter, v9->_layoutConstants.fillDiskDiameter];
    [(CALayer *)v9->_fillDiskLayer setCornerRadius:v9->_layoutConstants.fillDiskDiameter * 0.5];
    v56 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    fillDiskHaloLayer = v9->_fillDiskHaloLayer;
    v9->_fillDiskHaloLayer = v56;

    NTKImageNamed(@"RC-Solar-Disk-Halo-Color-Mask");
  }

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKSolarRichComplicationFullColorImageView;
  [(NTKSolarRichComplicationFullColorImageView *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = NTKSolarRichComplicationFullColorImageView;
  [(NTKSolarRichComplicationFullColorImageView *)&v16 layoutSubviews];
  [(NTKSolarRichComplicationFullColorImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_backgroundView setFrame:?];
  [(CAGradientLayer *)self->_gradientLayer setFrame:v4, v6, v8, v10];
  [(CALayer *)self->_gradientAdjustmentLayer setFrame:v4, v6, v8, v10];
  [(UIView *)self->_lineView setFrame:0.0, self->_layoutConstants.lineTop, v8, self->_layoutConstants.lineHeight];
  v11 = self->_layoutConstants.lineTop + self->_layoutConstants.lineHeight;
  [(CALayer *)self->_belowHorizonLayer setFrame:0.0, v11, v8, v10 - v11];
  [(UIView *)self->_fillDiskHaloContainerView setFrame:v4, v6, v8, v10];
  [(NTKBezierPathView *)self->_pathView setFrame:v4, v6, v8, v10];
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  Width = CGRectGetWidth(v17);
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Height = CGRectGetHeight(v18);
  if (Width < Height)
  {
    Height = Width;
  }

  v14 = Height * 0.5;
  v15 = [(NTKSolarRichComplicationFullColorImageView *)self layer];
  [v15 setCornerRadius:v14];
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v9 = a3;
  v5 = [v9 metadata];
  v6 = [v5 objectForKeyedSubscript:@"NTKSolarComplicationEntryLocationKey"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  v7 = [v9 metadata];
  v8 = [v7 objectForKeyedSubscript:@"NTKSolarComplicationUseIdealizedTimeKey"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  -[NTKSolarRichComplicationFullColorImageView updateWithLocation:useIdealizedTime:forceUpdate:animated:](self, "updateWithLocation:useIdealizedTime:forceUpdate:animated:", v6, [v8 BOOLValue], 0, -[NTKSolarRichComplicationFullColorImageView _shouldAnimateWithTemplateUpdateReason:](self, "_shouldAnimateWithTemplateUpdateReason:", 1));
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  CLKInterpolateBetweenFloatsClipped();
  [(UIView *)self->_backgroundView setAlpha:?];
  if (fabs(a3) >= 0.00000011920929)
  {
    v6 = [(NTKSolarRichComplicationFullColorImageView *)self filterProvider];
    v7 = [v6 filtersForView:self style:2];

    if (v7)
    {
      v8 = [(UIView *)self->_fillDiskHaloContainerView layer];
      [v8 setFilters:v7];

      [(CALayer *)self->_strokeDiskBorderLayer setFilters:v7];
    }
  }

  else
  {
    v5 = [(UIView *)self->_fillDiskHaloContainerView layer];
    [v5 setFilters:0];

    [(CALayer *)self->_strokeDiskBorderLayer setFilters:0];
  }

  v9 = [(NTKSolarRichComplicationFullColorImageView *)self filterProvider];
  v13 = [v9 colorForView:self accented:0];

  v10 = [v13 colorWithAlphaComponent:0.4];
  [(UIView *)self->_lineView setBackgroundColor:v10];

  v11 = [v13 colorWithAlphaComponent:0.78];
  [(NTKBezierPathView *)self->_pathView setPathColor:v11];

  v12 = [v13 colorWithAlphaComponent:0.1];
  [(NTKSolarRichComplicationFullColorImageView *)self setBackgroundColor:v12];
}

- (void)updateMonochromeColor
{
  [(UIView *)self->_backgroundView setAlpha:0.0];
  v3 = [(NTKSolarRichComplicationFullColorImageView *)self filterProvider];
  v10 = [v3 filtersForView:self style:2];

  if (v10)
  {
    v4 = [(UIView *)self->_fillDiskHaloContainerView layer];
    [v4 setFilters:v10];

    [(CALayer *)self->_strokeDiskBorderLayer setFilters:v10];
  }

  v5 = [(NTKSolarRichComplicationFullColorImageView *)self filterProvider];
  v6 = [v5 colorForView:self accented:0];

  v7 = [v6 colorWithAlphaComponent:0.4];
  [(UIView *)self->_lineView setBackgroundColor:v7];

  v8 = [v6 colorWithAlphaComponent:0.78];
  [(NTKBezierPathView *)self->_pathView setPathColor:v8];

  v9 = [v6 colorWithAlphaComponent:0.1];
  [(NTKSolarRichComplicationFullColorImageView *)self setBackgroundColor:v9];
}

- (void)_startClockUpdates
{
  self->_paused = 0;
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    v3 = [MEMORY[0x277CBB700] sharedInstance];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__NTKSolarRichComplicationFullColorImageView__startClockUpdates__block_invoke;
    v6[3] = &unk_27877ED48;
    objc_copyWeak(&v7, &location);
    v4 = [v3 startUpdatesWithUpdateFrequency:0 withHandler:v6 identificationLog:&__block_literal_global_151];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __64__NTKSolarRichComplicationFullColorImageView__startClockUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && (WeakRetained[696] & 1) == 0)
  {
    [WeakRetained _dateDidUpdate];
  }
}

- (void)_stopClockUpdates
{
  self->_paused = 1;
  if (self->_clockTimerToken)
  {
    v3 = [MEMORY[0x277CBB700] sharedInstance];
    [v3 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_dateDidUpdate
{
  v3 = [(NTKSolarRichComplicationFullColorImageView *)self _shouldAnimateWithTemplateUpdateReason:1];
  location = self->_location;
  usingIdealizedTime = self->_usingIdealizedTime;

  [(NTKSolarRichComplicationFullColorImageView *)self updateWithLocation:location useIdealizedTime:usingIdealizedTime forceUpdate:0 animated:v3];
}

- (void)updateWithLocation:(id)a3 useIdealizedTime:(BOOL)a4 forceUpdate:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  objc_storeStrong(&self->_location, a3);
  v11 = a3;
  self->_usingIdealizedTime = v8;
  [(NTKSolarTimeModel *)self->_solarTimeModel setUsePlaceholderData:v11 == 0];
  [(NTKSolarTimeModel *)self->_solarTimeModel setReferenceLocation:v11];

  [(NTKSolarRichComplicationFullColorImageView *)self _setSolarPathNeedsUpdate];
  [(NTKSolarRichComplicationFullColorImageView *)self _updateSolarPathWithAnimated:v6];

  [(NTKSolarRichComplicationFullColorImageView *)self _updateSolarDiskWithUsingIdealizedTime:v8 forceUpdate:v7 animated:v6];
}

- (void)_updateSolarPathWithAnimated:(BOOL)a3
{
  v3 = a3;
  solarPath = self->_solarPath;
  solarPathNeedsUpdate = self->_solarPathNeedsUpdate;
  v7 = solarPath;
  if (solarPathNeedsUpdate)
  {
    v8 = [(NSDictionary *)self->_waypoints objectForKeyedSubscript:&unk_284185950];
    v9 = [(NSDictionary *)self->_waypoints objectForKeyedSubscript:&unk_284185980];
    v10 = [NTKSolarRichComplicatonCircularPath pathWithDiameter:self->_solarTimeModel horizonLineTop:v8 horizonLineHeight:v9 maxCurveHeight:self->_layoutConstants.curveMaxSize.width solarTimeModel:self->_layoutConstants.lineTop sunriseWaypoint:self->_layoutConstants.lineHeight sunsetWayPoint:self->_layoutConstants.curveMaxSize.height];
    v11 = self->_solarPath;
    self->_solarPath = v10;

    v7 = self->_solarPath;
  }

  v12 = [(NTKSolarPath *)v7 bezierPath];
  v13 = [v12 copy];

  [v13 setLineWidth:self->_layoutConstants.curveLineWidth];
  if (self->_solarPathNeedsUpdate)
  {
    v14 = [[NTKBezierPathPointModel alloc] initWithPath:v13];
    pointModel = self->_pointModel;
    self->_pointModel = v14;
  }

  self->_solarPathNeedsUpdate = 0;
  [(NTKSolarRichComplicationFullColorImageView *)self _updateWaypoints];
  [(NTKSolarPath *)self->_solarPath bounds];
  v17 = (self->_layoutConstants.complicationContentDiameter - v16) * 0.5;
  v18 = self->_layoutConstants.lineTop - self->_horizonYInCurve;
  self->_solarPathViewRect.origin.x = v17;
  self->_solarPathViewRect.origin.y = v18;
  self->_solarPathViewRect.size.width = v16;
  self->_solarPathViewRect.size.height = v19;
  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeTranslation(&v22, v17, v18);
  v21 = v22;
  [v13 applyTransform:&v21];
  pathView = self->_pathView;
  if (v3 && solarPath)
  {
    [(NTKBezierPathView *)pathView animateToPath:v13 duration:1 curve:0.5];
  }

  else
  {
    [(NTKBezierPathView *)pathView setPath:v13];
  }
}

- (void)_updateWaypoints
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = [(NSDictionary *)self->_waypoints allValues];
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [(NTKSolarTimeModel *)self->_solarTimeModel referenceLocation];

        if (v9)
        {
          [v8 updateDependentValues];
        }

        else
        {
          [v8 updateDependentValuesWithPlaceholderData];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v5);
  }

  v10 = [(NSDictionary *)self->_waypoints objectForKeyedSubscript:&unk_284185950];
  v11 = [(NSDictionary *)self->_waypoints objectForKeyedSubscript:&unk_284185980];
  [v10 percentageThroughPeriodForWaypointDate];
  if (v12 == -1.0)
  {
    [v11 percentageThroughPeriodForWaypointDate];
    if (v19 == -1.0)
    {
      [(NTKBezierPathPointModel *)self->_pointModel pointOnPathForHorizontalPercentage:0.5];
      v26 = v25;
      [(NTKSolarPath *)self->_solarPath altitudeAtPercentage:0.5];
      v18 = v26 + v27;
    }

    else
    {
      solarTimeModel = self->_solarTimeModel;
      v21 = [v11 waypointDate];
      [(NTKSolarTimeModel *)solarTimeModel percentageThroughPeriodForDate:v21];
      v23 = v22;

      [(NTKBezierPathPointModel *)self->_pointModel pointOnPathForHorizontalPercentage:v23];
      v18 = v24 + self->_layoutConstants.lineHeight;
    }
  }

  else
  {
    v13 = self->_solarTimeModel;
    v14 = [v10 waypointDate];
    [(NTKSolarTimeModel *)v13 percentageThroughPeriodForDate:v14];
    v16 = v15;

    [(NTKBezierPathPointModel *)self->_pointModel pointOnPathForHorizontalPercentage:v16];
    v18 = v17 + self->_layoutConstants.lineHeight;
  }

  v28 = v18;
  self->_horizonYInCurve = floorf(v28);
  [v11 percentageThroughPeriodForWaypointDate];
  if (v29 == -1.0)
  {
    [(NTKBezierPathPointModel *)self->_pointModel pointOnPathForHorizontalPercentage:0.75];
  }

  else
  {
    v30 = self->_solarTimeModel;
    v31 = [v11 waypointDate];
    [(NTKSolarTimeModel *)v30 percentageThroughPeriodForDate:v31];
    v33 = v32;

    [(NTKBezierPathPointModel *)self->_pointModel pointOnPathForHorizontalPercentage:v33];
    *&v34 = v34;
    v35 = floorf(*&v34);
  }

  self->_sunsetXInCurve = v35;
}

- (void)_updateSolarDiskWithUsingIdealizedTime:(BOOL)a3 forceUpdate:(BOOL)a4 animated:(BOOL)a5
{
  v6 = a3;
  v8 = [(NTKSolarRichComplicationFullColorImageView *)self timeTravelDate:a3];

  solarTimeModel = self->_solarTimeModel;
  if (v8)
  {
    v10 = [(NTKSolarRichComplicationFullColorImageView *)self timeTravelDate];
LABEL_6:
    v13 = v10;
    [(NTKSolarTimeModel *)solarTimeModel percentageThroughPeriodForDate:v10];
    v12 = v14;

    goto LABEL_7;
  }

  if (!v6)
  {
    v10 = [MEMORY[0x277CBBAD8] complicationDate];
    goto LABEL_6;
  }

  [(NTKSolarTimeModel *)self->_solarTimeModel percentageThroughPeriodForIdealizedTimeInCurrentSolarDay];
  v12 = v11;
LABEL_7:
  v15 = (self->_layoutConstants.strokeDiskDiameter + self->_layoutConstants.strokeDiskBorderWidth) * 0.5;
  [(NTKBezierPathPointModel *)self->_pointModel pointOnPathForHorizontalPercentage:v12 withEndPadding:v15];
  y = self->_solarPathViewRect.origin.y;
  prevDiskTimePercentage = self->_prevDiskTimePercentage;
  if (a4 || vabdd_f64(v12, prevDiskTimePercentage) >= 0.00000011920929)
  {
    v30 = v16;
    height = self->_layoutConstants.curveMaxSize.height;
    v20 = self->_layoutConstants.lineTop + self->_layoutConstants.lineHeight * 0.5 - y;
    v21 = height * v20 / height;
    v22 = height - v21;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__NTKSolarRichComplicationFullColorImageView__updateSolarDiskWithUsingIdealizedTime_forceUpdate_animated___block_invoke;
    aBlock[3] = &unk_2787867A8;
    objc_copyWeak(v34, &location);
    *&v34[1] = v12 - prevDiskTimePercentage;
    v34[2] = *&prevDiskTimePercentage;
    v34[3] = *&v15;
    v34[4] = *&v20;
    v34[5] = *&v21;
    v34[6] = *&v22;
    v23 = _Block_copy(aBlock);
    self->_prevDiskTimePercentage = v12;
    v23[2](1.0);
    v24 = (self->_layoutConstants.lineTop - (v30 + y)) / (self->_layoutConstants.lineTop - self->_solarPathViewRect.origin.y);
    v25 = 1.0;
    if (v24 < 0.1)
    {
      v26 = (0.1 - v24) / -0.2 + 1.0;
      if (v26 > 1.0)
      {
        v26 = 1.0;
      }

      if (v26 < 0.0)
      {
        v26 = 0.0;
      }

      v25 = v26;
    }

    if (v24 > 1.0)
    {
      v24 = 1.0;
    }

    if (v24 < 0.0)
    {
      v24 = 0.0;
    }

    v27 = self->_layoutConstants.haloMinScale + (self->_layoutConstants.haloMaxScale - self->_layoutConstants.haloMinScale) * v24;
    CGAffineTransformMakeScale(&v32, v27, v27);
    fillDiskHaloLayer = self->_fillDiskHaloLayer;
    v31 = v32;
    [(CALayer *)fillDiskHaloLayer setAffineTransform:&v31];
    *&v29 = v25;
    [(CALayer *)self->_fillDiskHaloLayer setOpacity:v29];

    objc_destroyWeak(v34);
    objc_destroyWeak(&location);
  }
}

void __106__NTKSolarRichComplicationFullColorImageView__updateSolarDiskWithUsingIdealizedTime_forceUpdate_animated___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 48) + *(a1 + 40) * a2;
    v12 = WeakRetained;
    [WeakRetained[70] pointOnPathForHorizontalPercentage:v5 - v5 withEndPadding:*(a1 + 56)];
    v7 = v6;
    v9 = v8;
    v10 = v6 + *(v12 + 80);
    v11 = v8 + *(v12 + 81);
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [v12[72] setPosition:{v10, v11}];
    [v12[71] setPosition:{v10, v11}];
    [v12[73] setPosition:{v10, v11}];
    [v12[74] setPosition:{v10, v11}];
    [v12 _updateGradientBackgroundWithYPosition:*(a1 + 64) - v9 xPercentage:v7 / *(v12 + 82) topDistanceAboveHorizonLine:*(a1 + 72) bottomDistanceBelowHorizonLine:*(a1 + 80)];
    [MEMORY[0x277CD9FF0] commit];
    WeakRetained = v12;
  }
}

- (void)_updateGradientBackgroundWithYPosition:(double)a3 xPercentage:(double)a4 topDistanceAboveHorizonLine:(double)a5 bottomDistanceBelowHorizonLine:(double)a6
{
  v69[3] = *MEMORY[0x277D85DE8];
  v8 = a3 * 90.0 / a6;
  if (v8 > 90.0)
  {
    v8 = 90.0;
  }

  if (v8 >= -90.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -90.0;
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__47;
  v66 = __Block_byref_object_dispose__47;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__47;
  v60 = __Block_byref_object_dispose__47;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v10 = +[NTKSolarRichComplicationCircularViewColorPoint allPoints];
  v11 = [v10 firstObject];
  [v11 progress];
  v13 = v9 > v12;

  if (v13)
  {
    v14 = [v10 lastObject];
    [v14 progress];
    v16 = v9 < v15;

    if (v16)
    {
      v17 = [v10 firstObject];
      v18 = v63[5];
      v63[5] = v17;

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __156__NTKSolarRichComplicationFullColorImageView__updateGradientBackgroundWithYPosition_xPercentage_topDistanceAboveHorizonLine_bottomDistanceBelowHorizonLine___block_invoke;
      v51[3] = &unk_2787867D0;
      *&v51[7] = v9;
      v51[4] = &v56;
      v51[5] = &v62;
      v51[6] = &v52;
      [v10 enumerateObjectsUsingBlock:v51];
      goto LABEL_12;
    }

    v22 = [v10 lastObject];
    v23 = v63[5];
    v63[5] = v22;

    v21 = [v10 lastObject];
  }

  else
  {
    v19 = [v10 firstObject];
    v20 = v63[5];
    v63[5] = v19;

    v21 = [v10 firstObject];
  }

  v24 = v57[5];
  v57[5] = v21;

  v53[3] = 0x3FF0000000000000;
LABEL_12:
  v25 = [v63[5] color1];
  v26 = [v57[5] color1];
  v27 = NTKInterpolateBetweenColors();

  v28 = [v63[5] color2];
  v29 = [v57[5] color2];
  v30 = NTKInterpolateBetweenColors();

  v31 = [v63[5] color3];
  v32 = [v57[5] color3];
  v33 = NTKInterpolateBetweenColors();

  [v63[5] position1];
  [v57[5] position1];
  CLKInterpolateBetweenFloatsClipped();
  v35 = v34;
  [v63[5] position2];
  [v57[5] position2];
  CLKInterpolateBetweenFloatsClipped();
  v37 = v36;
  [v63[5] position3];
  [v57[5] position3];
  CLKInterpolateBetweenFloatsClipped();
  v39 = v38;
  v40 = v27;
  v69[0] = [v27 CGColor];
  v41 = v30;
  v69[1] = [v30 CGColor];
  v42 = v33;
  v69[2] = [v33 CGColor];
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  [(CAGradientLayer *)self->_gradientLayer setColors:v43];

  v44 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
  v68[0] = v44;
  v45 = [MEMORY[0x277CCABB0] numberWithDouble:v37];
  v68[1] = v45;
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
  v68[2] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  [(CAGradientLayer *)self->_gradientLayer setLocations:v47];

  v48 = self->_sunsetXInCurve / self->_solarPathViewRect.size.width;
  backgroundGradientSunsetLayerMaxAlpha = self->_layoutConstants.backgroundGradientSunsetLayerMaxAlpha;
  if (v48 <= a4)
  {
    *&v48 = backgroundGradientSunsetLayerMaxAlpha;
  }

  else
  {
    v50 = v48 - a4;
    v48 = 0.0;
    if (v50 <= 0.15)
    {
      v48 = backgroundGradientSunsetLayerMaxAlpha + v50 / -0.15 * backgroundGradientSunsetLayerMaxAlpha;
      *&v48 = v48;
    }
  }

  [(CALayer *)self->_gradientAdjustmentLayer setOpacity:v48];

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
}

void __156__NTKSolarRichComplicationFullColorImageView__updateGradientBackgroundWithYPosition_xPercentage_topDistanceAboveHorizonLine_bottomDistanceBelowHorizonLine___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (a3)
  {
    v9 = *(a1 + 56);
    v18 = v8;
    [v8 progress];
    if (v9 <= v10)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      [*(*(*(a1 + 40) + 8) + 40) progress];
      v12 = v11;
      [*(*(*(a1 + 32) + 8) + 40) progress];
      if (v12 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      [*(*(*(a1 + 40) + 8) + 40) progress];
      v16 = v15;
      [*(*(*(a1 + 32) + 8) + 40) progress];
      if (v16 >= v17)
      {
        v17 = v16;
      }

      *(*(*(a1 + 48) + 8) + 24) = (*(a1 + 56) - v14) / (v17 - v14);
      *a4 = 1;
    }

    else
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }

    v8 = v18;
  }
}

- (void)_didReceiveTimeZoneDidChangeNotification
{
  [(NTKSolarTimeModel *)self->_solarTimeModel updateForTimeZoneChange];
  [(NTKSolarRichComplicationFullColorImageView *)self _setSolarPathNeedsUpdate];
  v3 = [(NTKSolarRichComplicationFullColorImageView *)self _shouldAnimateWithTemplateUpdateReason:1];
  location = self->_location;
  usingIdealizedTime = self->_usingIdealizedTime;

  [(NTKSolarRichComplicationFullColorImageView *)self updateWithLocation:location useIdealizedTime:usingIdealizedTime forceUpdate:0 animated:v3];
}

- (void)_didReceiveSignificantTimeChangeNotification
{
  v3 = [(NTKSolarRichComplicationFullColorImageView *)self _shouldAnimateWithTemplateUpdateReason:1];
  location = self->_location;
  usingIdealizedTime = self->_usingIdealizedTime;

  [(NTKSolarRichComplicationFullColorImageView *)self updateWithLocation:location useIdealizedTime:usingIdealizedTime forceUpdate:0 animated:v3];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end