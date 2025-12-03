@interface _ActivityGoalLineSeries
- (BOOL)_lineSeriesCoordinateIsPaused:(id)paused;
- (_ActivityGoalLineSeries)initWithColor:(id)color;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
@end

@implementation _ActivityGoalLineSeries

- (_ActivityGoalLineSeries)initWithColor:(id)color
{
  v31[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v28.receiver = self;
  v28.super_class = _ActivityGoalLineSeries;
  v5 = [(HKLineSeries *)&v28 init];
  if (v5)
  {
    v6 = [HKGradientFillStyle alloc];
    v7 = [colorCopy colorWithAlphaComponent:0.3];
    v8 = [colorCopy colorWithAlphaComponent:0.0];
    v26 = [(HKGradientFillStyle *)v6 initWithFirstColor:v7 secondColor:v8];

    v9 = [HKGradientFillStyle alloc];
    v10 = [colorCopy colorWithAlphaComponent:0.3];
    v11 = [colorCopy colorWithAlphaComponent:0.0];
    v27 = [(HKGradientFillStyle *)v9 initWithFirstColor:v10 secondColor:v11];

    v12 = [HKStrokeStyle strokeStyleWithColor:colorCopy lineWidth:1.0];
    [v12 setDashStyle:1];
    v13 = objc_alloc_init(HKAxisLabelStyle);
    [(HKAxisLabelStyle *)v13 setTextColor:colorCopy];
    v14 = objc_alloc_init(_ActivityGoalLineAnnotationFormatter);
    [(HKAxisLabelStyle *)v13 setNumberFormatter:v14];

    v15 = objc_alloc_init(HKLineSeriesPresentationStyle);
    [(HKLineSeriesPresentationStyle *)v15 setStrokeStyle:v12];
    [(HKLineSeriesPresentationStyle *)v15 setWaveForm:0];
    [(HKLineSeriesPresentationStyle *)v15 setAxisAnnotationStyle:v13];
    v16 = objc_alloc_init(HKLineSeriesPresentationStyle);
    [(HKLineSeriesPresentationStyle *)v16 setStrokeStyle:v12];
    [(HKLineSeriesPresentationStyle *)v16 setFillStyle:v26];
    [(HKLineSeriesPresentationStyle *)v16 setWaveForm:0];
    v17 = objc_alloc_init(HKLineSeriesPresentationStyle);
    v18 = HKHealthKeyColor();
    v19 = [HKStrokeStyle strokeStyleWithColor:v18 lineWidth:1.0];

    [v19 setDashStyle:2];
    [(HKLineSeriesPresentationStyle *)v17 setStrokeStyle:v19];
    v20 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:colorCopy radius:0 style:3.0];
    [(HKLineSeriesPresentationStyle *)v17 setPointMarkerStyle:v20];
    [(HKLineSeriesPresentationStyle *)v17 setFillStyle:v27];
    [(HKLineSeriesPresentationStyle *)v17 setWaveForm:0];
    v31[0] = v15;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    [(HKLineSeries *)v5 setUnhighlightedPresentationStyles:v21];

    v30 = v16;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [(HKLineSeries *)v5 setHighlightedPresentationStyles:v22];

    v29 = v17;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [(HKLineSeries *)v5 setSelectedPresentationStyles:v23];

    [(HKLineSeries *)v5 setInactivePresentationStyle:v15];
    v24 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:colorCopy radius:0 style:5.0];
    [(HKLineSeries *)v5 setSelectedPointMarkerStyle:v24];
    [(HKLineSeries *)v5 setFlatLastValue:1];
    [(HKGraphSeries *)v5 setAllowsSelection:0];
  }

  return v5;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  renderContextCopy = renderContext;
  delegateCopy = delegate;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  MaxX = CGRectGetMaxX(v56);
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__19;
  v53 = __Block_byref_object_dispose__19;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__19;
  v43 = __Block_byref_object_dispose__19;
  v44 = 0;
  unhighlightedPresentationStyles = [(HKLineSeries *)self unhighlightedPresentationStyles];
  firstObject = [unhighlightedPresentationStyles firstObject];
  strokeStyle = [firstObject strokeStyle];

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __166___ActivityGoalLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v38[3] = &unk_1E81BA658;
  *&v38[8] = MinX;
  *&v38[9] = MaxX;
  v38[4] = self;
  v38[5] = &v49;
  v38[10] = context;
  v38[6] = &v45;
  v38[7] = &v39;
  v28 = *&transform->c;
  v37[0] = *&transform->a;
  v37[1] = v28;
  v37[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v37 roundToViewScale:1 block:v38];
  v29 = v50[5];
  if (v29)
  {
    [v29 coordinate];
    v31 = v30;
    CGContextMoveToPoint(context, v32, v30);
    CGContextAddLineToPoint(context, MaxX, v31);
    v33 = v46[3] + 1;
    v46[3] = v33;
  }

  else
  {
    v33 = v46[3];
  }

  if (v33 >= 1)
  {
    [strokeStyle applyToContext:context];
    CGContextStrokePath(context);
  }

  v34 = [delegateCopy axisAnnotationDelegateForSeries:self];
  v35 = v40[5];
  if (v35)
  {
    [v35 coordinate];
    [(HKLineSeries *)self addAxisAnnotationForValue:v34 axisAnnotationDelegate:v36];
  }

  else
  {
    [v34 clearAxisAnnotations];
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);
}

- (BOOL)_lineSeriesCoordinateIsPaused:(id)paused
{
  userInfo = [paused userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activitySummaryData = [userInfo activitySummaryData];
    isPaused = [activitySummaryData isPaused];
  }

  else
  {
    isPaused = 0;
  }

  return isPaused;
}

@end