@interface _HKAudioVisibleRangeOverlaySeries
- (id)_leqDataFromBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 screenRect:(CGRect)a5;
- (void)drawOverlayInContext:(CGContext *)a3 seriesOverlayData:(id)a4;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
@end

@implementation _HKAudioVisibleRangeOverlaySeries

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v17 = a9;
  v18 = [v17 axisAnnotationDelegateForSeries:self];
  if (([v17 seriesDrawingDuringScrolling] & 1) != 0 || (objc_msgSend(v17, "seriesDrawingDuringTiling") & 1) != 0 || objc_msgSend(v17, "seriesDrawingDuringAutoscale"))
  {
    [v18 clearAxisAnnotations];
  }

  else
  {
    v19 = [v16 coordinates];
    v20 = *&a6->c;
    v22[0] = *&a6->a;
    v22[1] = v20;
    v22[2] = *&a6->tx;
    v21 = [(_HKAudioVisibleRangeOverlaySeries *)self _leqDataFromBlockCoordinates:v19 pointTransform:v22 screenRect:x, y, width, height];

    if (v21)
    {
      [v21 averageLEQ];
      [(HKLineSeries *)self addAxisAnnotationForValue:v18 axisAnnotationDelegate:?];
    }
  }
}

- (void)drawOverlayInContext:(CGContext *)a3 seriesOverlayData:(id)a4
{
  v6 = a4;
  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];
    v8 = [v7 graphSeriesCoordinates];
    v9 = [v8 coordinates];
    if (v7)
    {
      [v7 graphSeriesPointTransform];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
    }

    [v7 graphSeriesScreenRect];
    v10 = [(_HKAudioVisibleRangeOverlaySeries *)self _leqDataFromBlockCoordinates:v9 pointTransform:&v29 screenRect:?];

    v11 = [v7 graphSeries];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && v10)
    {
      [v10 averageLEQ];
      v14 = v13;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      if (v7)
      {
        [v7 graphSeriesPointTransform];
        v17 = *(&v29 + 1);
        v16 = *(&v30 + 1);
        v15 = *(&v31 + 1);
      }

      v18 = v15 + v14 * v16 + v17 * 0.0;
      [v7 graphSeriesScreenRect];
      v20 = v18 + v19;
      v21 = [v7 graphSeries];
      v22 = [v21 unhighlightedPresentationStyles];
      v23 = [v22 firstObject];

      v24 = [v23 strokeStyle];
      [v24 applyToContext:a3];
      [v7 graphSeriesScreenRect];
      CGContextMoveToPoint(a3, v25, v20);
      [v7 graphSeriesScreenRect];
      v27 = v26;
      [v7 graphSeriesScreenRect];
      CGContextAddLineToPoint(a3, v27 + v28, v20);
      CGContextStrokePath(a3);
    }
  }
}

- (id)_leqDataFromBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 screenRect:(CGRect)a5
{
  width = a5.size.width;
  x = a5.origin.x;
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v8;
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
        v18 = a4->tx + a4->c * 0.0 + a4->a * v17;
        if (v18 >= x && v18 <= v13)
        {
          v20 = [v16 userInfo];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v22 = [v16 userInfo];
            [v40 addObject:v22];
            v23 = objc_alloc(MEMORY[0x1E696BF28]);
            [v22 averageLEQ];
            v25 = v24;
            [v22 duration];
            v27 = [v23 initWithValue:v25 duration:v26];
            [v41 addObject:v27];
            [v22 duration];
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
    v30 = [MEMORY[0x1E696C510] decibelAWeightedSoundPressureLevelUnit];
    [v29 doubleValueForUnit:v30];
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