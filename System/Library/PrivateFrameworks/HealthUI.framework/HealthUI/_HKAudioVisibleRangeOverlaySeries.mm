@interface _HKAudioVisibleRangeOverlaySeries
- (id)_leqDataFromBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform screenRect:(CGRect)rect;
- (void)drawOverlayInContext:(CGContext *)context seriesOverlayData:(id)data;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
@end

@implementation _HKAudioVisibleRangeOverlaySeries

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  delegateCopy = delegate;
  v18 = [delegateCopy axisAnnotationDelegateForSeries:self];
  if (([delegateCopy seriesDrawingDuringScrolling] & 1) != 0 || (objc_msgSend(delegateCopy, "seriesDrawingDuringTiling") & 1) != 0 || objc_msgSend(delegateCopy, "seriesDrawingDuringAutoscale"))
  {
    [v18 clearAxisAnnotations];
  }

  else
  {
    coordinates = [coordinatesCopy coordinates];
    v20 = *&transform->c;
    v22[0] = *&transform->a;
    v22[1] = v20;
    v22[2] = *&transform->tx;
    height = [(_HKAudioVisibleRangeOverlaySeries *)self _leqDataFromBlockCoordinates:coordinates pointTransform:v22 screenRect:x, y, width, height];

    if (height)
    {
      [height averageLEQ];
      [(HKLineSeries *)self addAxisAnnotationForValue:v18 axisAnnotationDelegate:?];
    }
  }
}

- (void)drawOverlayInContext:(CGContext *)context seriesOverlayData:(id)data
{
  dataCopy = data;
  if ([dataCopy count] == 1)
  {
    firstObject = [dataCopy firstObject];
    graphSeriesCoordinates = [firstObject graphSeriesCoordinates];
    coordinates = [graphSeriesCoordinates coordinates];
    if (firstObject)
    {
      [firstObject graphSeriesPointTransform];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
    }

    [firstObject graphSeriesScreenRect];
    v10 = [(_HKAudioVisibleRangeOverlaySeries *)self _leqDataFromBlockCoordinates:coordinates pointTransform:&v29 screenRect:?];

    graphSeries = [firstObject graphSeries];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && v10)
    {
      [v10 averageLEQ];
      v14 = v13;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      if (firstObject)
      {
        [firstObject graphSeriesPointTransform];
        v17 = *(&v29 + 1);
        v16 = *(&v30 + 1);
        v15 = *(&v31 + 1);
      }

      v18 = v15 + v14 * v16 + v17 * 0.0;
      [firstObject graphSeriesScreenRect];
      v20 = v18 + v19;
      graphSeries2 = [firstObject graphSeries];
      unhighlightedPresentationStyles = [graphSeries2 unhighlightedPresentationStyles];
      firstObject2 = [unhighlightedPresentationStyles firstObject];

      strokeStyle = [firstObject2 strokeStyle];
      [strokeStyle applyToContext:context];
      [firstObject graphSeriesScreenRect];
      CGContextMoveToPoint(context, v25, v20);
      [firstObject graphSeriesScreenRect];
      v27 = v26;
      [firstObject graphSeriesScreenRect];
      CGContextAddLineToPoint(context, v27 + v28, v20);
      CGContextStrokePath(context);
    }
  }
}

- (id)_leqDataFromBlockCoordinates:(id)coordinates pointTransform:(CGAffineTransform *)transform screenRect:(CGRect)rect
{
  width = rect.size.width;
  x = rect.origin.x;
  v52 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = coordinatesCopy;
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    v13 = x + width;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        [v16 startXValue];
        v18 = transform->tx + transform->c * 0.0 + transform->a * v17;
        if (v18 >= x && v18 <= v13)
        {
          userInfo = [v16 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            userInfo2 = [v16 userInfo];
            [v40 addObject:userInfo2];
            v23 = objc_alloc(MEMORY[0x1E696BF28]);
            [userInfo2 averageLEQ];
            v25 = v24;
            [userInfo2 duration];
            v27 = [v23 initWithValue:v25 duration:v26];
            [v41 addObject:v27];
            [userInfo2 duration];
            v14 = v14 + v28;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v11);
  }

  else
  {
    v14 = 0.0;
  }

  v29 = [MEMORY[0x1E696BF20] computeLEQFromAudioExposureValues:v41];
  if (v29)
  {
    decibelAWeightedSoundPressureLevelUnit = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
    [v29 doubleValueForUnit:decibelAWeightedSoundPressureLevelUnit];
    v32 = v31;
    v33 = objc_alloc_init(HKInteractiveChartAudioData);
    [(HKInteractiveChartAudioData *)v33 setAverageLEQ:v32];
    [(HKInteractiveChartAudioData *)v33 setDuration:v14];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v40;
    v35 = [v34 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v43;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v43 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v42 + 1) + 8 * j) setOverviewData:{v33, v40}];
        }

        v36 = [v34 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v36);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

@end