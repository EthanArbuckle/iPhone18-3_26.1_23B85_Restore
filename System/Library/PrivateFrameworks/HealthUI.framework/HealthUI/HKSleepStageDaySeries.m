@interface HKSleepStageDaySeries
- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9;
- (CGRect)_enumerationRectForStage:(int64_t)a3 axisRect:(CGRect)a4;
- (CGRect)_nonSleepStageBarRectForCoordinate:(id)a3 axisRect:(CGRect)a4;
- (CGRect)_sleepStageBarRectForCoordinate:(id)a3 axisRect:(CGRect)a4;
- (CGSize)cornerRadii;
- (CGSize)cornerRadiiStorage;
- (HKFillStyle)sleepStageBackgroundFillStyle;
- (HKFillStyle)sleepStageBackgroundInactiveFillStyle;
- (HKSleepStageDaySeries)init;
- (NSArray)sleepStageFillStyles;
- (NSNumber)highlightedSleepStage;
- (UIColor)sleepStageLabelColor;
- (UIFont)sleepStageLabelFont;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)_buildConnectionFromStageRect:(CGRect)a3 toStageRect:(CGRect)a4;
- (id)_buildConnectionPathFromBackgroundRects:(id)a3;
- (id)_visibleSleepStagesInBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 screenRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)determineBottomConnectionPathFromRect:(CGRect)a3 toRect:(CGRect)a4 cornerRadius:(double)a5;
- (id)determineTopConnectionPathFromRect:(CGRect)a3 toRect:(CGRect)a4 cornerRadius:(double)a5;
- (id)mergeOverlappingRects:(id)a3;
- (void)_addSomnogramConnectionPath:(id)a3 toBezierPath:(id)a4;
- (void)_drawLabelAndRuleLineForString:(id)a3 inRect:(CGRect)a4 horizontalOffset:(double)a5 verticalOffset:(double)a6 axisRect:(CGRect)a7 context:(CGContext *)a8;
- (void)_drawPaths:(id)a3 withFillStyles:(id)a4 axisRect:(CGRect)a5 context:(CGContext *)a6;
- (void)_drawSleepStageLabels:(CGContext *)a3 axisRect:(CGRect)a4;
- (void)_drawStagesBackgroundWithRects:(id)a3 buildPath:(id)a4 cornerRadii:(CGSize)a5 highlightedSleepStage:(id)a6 axisRect:(CGRect)a7 renderContext:(CGContext *)a8;
- (void)_rebuildFillStyles;
- (void)drawOverlayInContext:(CGContext *)a3 seriesOverlayData:(id)a4;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setCornerRadii:(CGSize)a3;
- (void)setHighlightedSleepStage:(id)a3;
- (void)setSleepStageBackgroundFillStyle:(id)a3;
- (void)setSleepStageBackgroundInactiveFillStyle:(id)a3;
- (void)setSleepStageFillStyles:(id)a3;
- (void)setSleepStageLabelColor:(id)a3;
- (void)setSleepStageLabelFont:(id)a3;
@end

@implementation HKSleepStageDaySeries

- (HKSleepStageDaySeries)init
{
  v12.receiver = self;
  v12.super_class = HKSleepStageDaySeries;
  v2 = [(HKGraphSeries *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_cornerRadiiStorage.width = 0.0;
    v2->_cornerRadiiStorage.height = 0.0;
    sleepStageFillStylesStorage = v2->_sleepStageFillStylesStorage;
    v2->_sleepStageFillStylesStorage = MEMORY[0x1E695E0F0];

    sleepStageBackgroundFillStyleStorage = v3->_sleepStageBackgroundFillStyleStorage;
    v3->_sleepStageBackgroundFillStyleStorage = 0;

    sleepStageBackgroundInactiveFillStyleStorage = v3->_sleepStageBackgroundInactiveFillStyleStorage;
    v3->_sleepStageBackgroundInactiveFillStyleStorage = 0;

    sleepStageLabelFontStorage = v3->_sleepStageLabelFontStorage;
    v3->_sleepStageLabelFontStorage = 0;

    sleepStageLabelColorStorage = v3->_sleepStageLabelColorStorage;
    v3->_sleepStageLabelColorStorage = 0;

    v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v3->_seriesMutableStateLock;
    v3->_seriesMutableStateLock = v9;

    [(NSLock *)v3->_seriesMutableStateLock setName:@"HKSleepStageDaySeriesLock"];
  }

  return v3;
}

- (CGSize)cornerRadii
{
  v3 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  v6 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v6 unlock];

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setCornerRadii:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v6 lock];

  self->_cornerRadiiStorage.width = width;
  self->_cornerRadiiStorage.height = height;
  v7 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKFillStyle)sleepStageBackgroundFillStyle
{
  v3 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_sleepStageBackgroundFillStyleStorage;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSleepStageBackgroundFillStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  sleepStageBackgroundFillStyleStorage = self->_sleepStageBackgroundFillStyleStorage;
  self->_sleepStageBackgroundFillStyleStorage = v6;

  v8 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (HKFillStyle)sleepStageBackgroundInactiveFillStyle
{
  v3 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_sleepStageBackgroundInactiveFillStyleStorage;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSleepStageBackgroundInactiveFillStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  sleepStageBackgroundInactiveFillStyleStorage = self->_sleepStageBackgroundInactiveFillStyleStorage;
  self->_sleepStageBackgroundInactiveFillStyleStorage = v6;

  v8 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (NSArray)sleepStageFillStyles
{
  v3 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_sleepStageFillStylesStorage;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSleepStageFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  sleepStageFillStylesStorage = self->_sleepStageFillStylesStorage;
  self->_sleepStageFillStylesStorage = v6;

  v8 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (NSNumber)highlightedSleepStage
{
  v3 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_highlightedSleepStageStorage;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setHighlightedSleepStage:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  highlightedSleepStageStorage = self->_highlightedSleepStageStorage;
  self->_highlightedSleepStageStorage = v4;

  v7 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v7 unlock];

  [(HKSleepStageDaySeries *)self _rebuildFillStyles];
}

- (UIFont)sleepStageLabelFont
{
  v3 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_sleepStageLabelFontStorage;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSleepStageLabelFont:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  sleepStageLabelFontStorage = self->_sleepStageLabelFontStorage;
  self->_sleepStageLabelFontStorage = v4;

  v7 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIColor)sleepStageLabelColor
{
  v3 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_sleepStageLabelColorStorage;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSleepStageLabelColor:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  sleepStageLabelColorStorage = self->_sleepStageLabelColorStorage;
  self->_sleepStageLabelColorStorage = v4;

  v7 = [(HKSleepStageDaySeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v9 = a5;
  v10 = [a3 chartPoints];
  if (!v10)
  {
    [HKSleepStageDaySeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v11 = [v9 transform];
  v12 = objc_opt_new();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__HKSleepStageDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v19[3] = &unk_1E81BAA28;
  v20 = v11;
  v21 = self;
  v22 = v12;
  v13 = v12;
  v14 = v11;
  [v10 enumerateObjectsUsingBlock:v19];
  v17 = *&a4->index;
  resolution = a4->resolution;
  v15 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v13 blockPath:&v17];

  return v15;
}

void __67__HKSleepStageDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [v20 yValue];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v20 startDate];
    [v4 coordinateForValue:v5];
    v7 = v6;

    v8 = *(a1 + 32);
    v9 = [v20 endDate];
    [v8 coordinateForValue:v9];
    v11 = v10;

    v12 = [*(a1 + 40) highlightedSleepStage];

    if (v12)
    {
      v13 = [v20 userInfo];
      [v13 setAnnotationOverridePrefixColorsActive:MEMORY[0x1E695E110]];
    }

    v14 = *(a1 + 48);
    v15 = [HKSleepStageDayCoordinate alloc];
    v16 = [v20 yValue];
    v17 = [v16 intValue];
    v18 = [v20 userInfo];
    v19 = [(HKSleepStageDayCoordinate *)v15 initWithXValueStart:v17 xValueEnd:v18 sleepStage:v7 userInfo:v11];
    [v14 addObject:v19];
  }
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v60[6] = *MEMORY[0x1E69E9840];
  v14 = MEMORY[0x1E69DC728];
  v41 = a3;
  v15 = [v14 bezierPath];
  v60[0] = v15;
  v16 = [MEMORY[0x1E69DC728] bezierPath];
  v60[1] = v16;
  v17 = [MEMORY[0x1E69DC728] bezierPath];
  v60[2] = v17;
  v18 = [MEMORY[0x1E69DC728] bezierPath];
  v60[3] = v18;
  v19 = [MEMORY[0x1E69DC728] bezierPath];
  v60[4] = v19;
  v20 = [MEMORY[0x1E69DC728] bezierPath];
  v60[5] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:6];
  v22 = [v21 mutableCopy];

  v23 = 6;
  v24 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(HKSleepStageDaySeries *)self cornerRadii];
  v27 = v26;
  v29 = v28;
  v30 = [(HKSleepStageDaySeries *)self highlightedSleepStage];
  v31 = v30;
  if (v30)
  {
    v32 = [v30 intValue];
    if (v32 > 5)
    {
      v23 = 0;
    }

    else
    {
      v23 = qword_1C3D5DAB8[v32];
    }
  }

  v33 = [(HKGraphSeries *)self allowsSelection];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __164__HKSleepStageDaySeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v44[3] = &unk_1E81BAA50;
  v59 = v33;
  v45 = v31;
  v46 = self;
  v51 = x;
  v52 = y;
  v53 = width;
  v54 = height;
  v55 = v27;
  v56 = v29;
  v57 = v27 + 0.75;
  v58 = v29 + 0.75;
  v47 = v22;
  v48 = v24;
  v49 = v25;
  v50 = v23;
  v34 = *&a6->c;
  v43[0] = *&a6->a;
  v43[1] = v34;
  v43[2] = *&a6->tx;
  v35 = v25;
  v36 = v24;
  v37 = v22;
  v38 = v31;
  [v41 enumerateCoordinatesWithTransform:v43 roundToViewScale:1 block:v44];

  [(HKSleepStageDaySeries *)self _drawStagesBackgroundWithRects:v35 buildPath:v36 cornerRadii:v38 highlightedSleepStage:a7 axisRect:v27 + 0.75 renderContext:v29 + 0.75, x, y, width, height];
  v39 = [(HKSleepStageDaySeries *)self sleepStageFillStyles];
  [(HKSleepStageDaySeries *)self _drawPaths:v37 withFillStyles:v39 axisRect:a7 context:x, y, width, height];
}

void __164__HKSleepStageDaySeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2)
{
  v38 = a2;
  v3 = [v38 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v38 userInfo];
    v6 = [v5 chartPointInfoProvider];
    v7 = [v6 sleepDaySummaries];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  if ([v38 sleepStage] == 5 || objc_msgSend(v38, "sleepStage") == 4)
  {
    v9 = 0;
    if ([v8 hasSleepStageData])
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 144);
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  v11 = v38;
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 32))
    {
      v12 = *(a1 + 72);
      v13 = [v38 sleepStage];
      v11 = v38;
      v14 = v12 == v13;
      v15 = *(a1 + 144) ^ 1;
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  if (v10)
  {
    [*(a1 + 40) _nonSleepStageBarRectForCoordinate:v11 axisRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v24 = v9 & v14;
    [*(a1 + 40) _sleepStageBarRectForCoordinate:v11 axisRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    v17 = v25;
    v19 = v26;
    v21 = v27;
    v23 = v28;
    if (v24 != 1)
    {
      goto LABEL_19;
    }
  }

  v29 = [*(a1 + 48) objectAtIndexedSubscript:{objc_msgSend(v38, "sleepStage")}];
  v30 = [HKBarSeries barSeriesRoundedRect:-1 byRoundingCorners:v17 cornerRadii:v19, v21, v23, *(a1 + 112), *(a1 + 120)];
  [v29 appendPath:v30];

LABEL_19:
  if (((v15 | v10) & 1) == 0)
  {
    v31 = v17 + -1.5;
    v32 = v19 + -1.5;
    v33 = v21 + 3.0;
    v34 = v23 + 3.0;
    v35 = [HKBarSeries barSeriesRoundedRect:-1 byRoundingCorners:v31 cornerRadii:v32, v33, v34, *(a1 + 128), *(a1 + 136)];
    [*(a1 + 56) appendPath:v35];
    v36 = *(a1 + 64);
    v37 = [MEMORY[0x1E696B098] valueWithRect:{v31, v32, v33, v34}];
    [v36 addObject:v37];
  }
}

- (void)_drawPaths:(id)a3 withFillStyles:(id)a4 axisRect:(CGRect)a5 context:(CGContext *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v19 = a3;
  v13 = a4;
  if ([v19 count])
  {
    v14 = 0;
    do
    {
      v15 = [v19 objectAtIndexedSubscript:v14];
      if (([v15 isEmpty] & 1) == 0)
      {
        v16 = [v13 objectAtIndexedSubscript:v14];
        if (v16)
        {
          v17 = [v15 CGPath];
          [(HKGraphSeries *)self alpha];
          [v16 renderPath:v17 context:a6 axisRect:x alpha:{y, width, height, v18}];
        }
      }

      ++v14;
    }

    while (v14 < [v19 count]);
  }
}

- (void)_drawStagesBackgroundWithRects:(id)a3 buildPath:(id)a4 cornerRadii:(CGSize)a5 highlightedSleepStage:(id)a6 axisRect:(CGRect)a7 renderContext:(CGContext *)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = [(HKSleepStageDaySeries *)self mergeOverlappingRects:a3];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v27 + 1) + 8 * i) CGRectValue];
        v22 = [HKBarSeries barSeriesRoundedRect:"barSeriesRoundedRect:byRoundingCorners:cornerRadii:" byRoundingCorners:-1 cornerRadii:?];
        [v16 appendPath:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v19);
  }

  v23 = [(HKSleepStageDaySeries *)self _buildConnectionPathFromBackgroundRects:v17];
  [v16 appendPath:v23];
  if (a6)
  {
    [(HKSleepStageDaySeries *)self sleepStageBackgroundInactiveFillStyle];
  }

  else
  {
    [(HKSleepStageDaySeries *)self sleepStageBackgroundFillStyle];
  }
  v24 = ;
  v32 = v16;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v31 = v24;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [(HKSleepStageDaySeries *)self _drawPaths:v25 withFillStyles:v26 axisRect:a8 context:x, y, width, height];
}

- (id)_buildConnectionPathFromBackgroundRects:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v30 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v35 + 1) + 8 * i) CGRectValue];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v18 = v6;
        v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v32;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v32 != v21)
              {
                objc_enumerationMutation(v18);
              }

              [*(*(&v31 + 1) + 8 * j) CGRectValue];
              if (v23 > v11 && v23 <= v11 + v15)
              {
                v28 = [(HKSleepStageDaySeries *)self _buildConnectionFromStageRect:v11 toStageRect:v13, v15, v17, v23, v24, v25, v26];
                [v5 appendPath:v28];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v20);
        }
      }

      v8 = [v18 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)mergeOverlappingRects:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v3];
  if ([v4 count] >= 2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
      v7 = v5 + 1;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:v5];
        [v8 CGRectValue];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v17 = [v4 objectAtIndexedSubscript:v7];
        [v17 CGRectValue];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v29.origin.x = v10;
        v29.origin.y = v12;
        v29.size.width = v14;
        v29.size.height = v16;
        v32.origin.x = v19;
        v32.origin.y = v21;
        v32.size.width = v23;
        v32.size.height = v25;
        if (CGRectIntersectsRect(v29, v32) && vabdd_f64(v16, v25) < 0.1 && vabdd_f64(v12, v21) < 0.1)
        {
          v30.origin.x = v10;
          v30.origin.y = v12;
          v30.size.width = v14;
          v30.size.height = v16;
          v33.origin.x = v19;
          v33.origin.y = v21;
          v33.size.width = v23;
          v33.size.height = v25;
          v31 = CGRectUnion(v30, v33);
          v26 = [MEMORY[0x1E696B098] valueWithCGRect:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
          [v4 setObject:v26 atIndexedSubscript:v5];

          [v4 removeObjectAtIndex:v7];
        }

        else
        {
          ++v7;
        }
      }

      while (v7 < [v4 count]);
      ++v5;
    }

    while (v6 < [v4 count] - 1);
  }

  return v4;
}

- (id)_buildConnectionFromStageRect:(CGRect)a3 toStageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v13 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [(HKSleepStageDaySeries *)self cornerRadii];
  v18 = v14;
  v15 = [(HKSleepStageDaySeries *)self determineTopConnectionPathFromRect:v11 toRect:v10 cornerRadius:v9, v8, x, y, width, height, v14];
  [v15 startPoint];
  [v13 moveToPoint:?];
  [(HKSleepStageDaySeries *)self _addSomnogramConnectionPath:v15 toBezierPath:v13];
  v16 = [(HKSleepStageDaySeries *)self determineBottomConnectionPathFromRect:v11 toRect:v10 cornerRadius:v9, v8, x, y, width, height, v18];
  [v16 startPoint];
  [v13 addLineToPoint:?];
  [(HKSleepStageDaySeries *)self _addSomnogramConnectionPath:v16 toBezierPath:v13];
  [v13 closePath];

  return v13;
}

- (id)determineTopConnectionPathFromRect:(CGRect)a3 toRect:(CGRect)a4 cornerRadius:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [[HKSleepSomnogramBar alloc] initWithBarRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = [[HKSleepSomnogramBar alloc] initWithBarRect:x, y, width, height];
  v10 = HKSleepSomnogramConnectionOrientationForBars(v8, v9, 1);
  v11 = a5 * 1.5;
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      [(HKSleepSomnogramBar *)v9 right];
      v13 = v23;
      [(HKSleepSomnogramBar *)v9 top];
      v15 = v24 + a5;
      [(HKSleepSomnogramBar *)v8 right];
      v26 = v25;
      [(HKSleepSomnogramBar *)v9 right];
      v28 = v26 - v27;
      [(HKSleepSomnogramBar *)v9 right];
      v21 = v29;
      if (v28 >= v11)
      {
        v21 = v29 + a5;
        [(HKSleepSomnogramBar *)v8 bottom];
        goto LABEL_14;
      }

LABEL_7:
      [(HKSleepSomnogramBar *)v8 top];
      v31 = v30 + a5;
      goto LABEL_15;
    }

    [(HKSleepSomnogramBar *)v8 horizontalMidpoint];
    v21 = v39;
    [(HKSleepSomnogramBar *)v8 top];
    v31 = v40;
    [(HKSleepSomnogramBar *)v9 horizontalMidpoint];
    v13 = v41;
LABEL_12:
    [(HKSleepSomnogramBar *)v9 top];
    v15 = v43;
    goto LABEL_15;
  }

  if (v10 >= 2)
  {
    [(HKSleepSomnogramBar *)v8 right];
    v21 = v32;
    [(HKSleepSomnogramBar *)v8 top];
    v31 = v33 + a5;
    [(HKSleepSomnogramBar *)v9 right];
    v35 = v34;
    [(HKSleepSomnogramBar *)v8 right];
    if (v35 - v36 < v11)
    {
      [(HKSleepSomnogramBar *)v9 right];
      v13 = v37;
      [(HKSleepSomnogramBar *)v9 top];
      v15 = v38 + a5;
      goto LABEL_15;
    }

    [(HKSleepSomnogramBar *)v8 right];
    v13 = v42 + a5;
    goto LABEL_12;
  }

  [(HKSleepSomnogramBar *)v9 left];
  v13 = v12;
  [(HKSleepSomnogramBar *)v9 top];
  v15 = v14 + a5;
  [(HKSleepSomnogramBar *)v9 left];
  v17 = v16;
  [(HKSleepSomnogramBar *)v8 left];
  v19 = v17 - v18;
  [(HKSleepSomnogramBar *)v9 left];
  v21 = v20;
  if (v19 < v11)
  {
    goto LABEL_7;
  }

  v21 = v20 - a5;
  [(HKSleepSomnogramBar *)v8 top];
LABEL_14:
  v31 = v22;
LABEL_15:
  v44 = [[HKSleepSomnogramConnection alloc] initWithStartPoint:v21 endPoint:v31, v13, v15];

  return v44;
}

- (id)determineBottomConnectionPathFromRect:(CGRect)a3 toRect:(CGRect)a4 cornerRadius:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [[HKSleepSomnogramBar alloc] initWithBarRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v9 = [[HKSleepSomnogramBar alloc] initWithBarRect:x, y, width, height];
  v10 = HKSleepSomnogramConnectionOrientationForBars(v8, v9, 0);
  v11 = a5 * 1.5;
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      [(HKSleepSomnogramBar *)v9 right];
      v13 = v24;
      [(HKSleepSomnogramBar *)v9 top];
      v15 = v25 + a5;
      [(HKSleepSomnogramBar *)v8 right];
      v27 = v26;
      [(HKSleepSomnogramBar *)v9 right];
      v29 = v27 - v28;
      [(HKSleepSomnogramBar *)v9 right];
      v21 = v30;
      if (v29 < v11)
      {
        [(HKSleepSomnogramBar *)v8 top];
        v23 = v31 + a5;
        goto LABEL_14;
      }

      v21 = v30 + a5;
      [(HKSleepSomnogramBar *)v8 top];
      goto LABEL_13;
    }

    [(HKSleepSomnogramBar *)v9 horizontalMidpoint];
    v13 = v40;
    [(HKSleepSomnogramBar *)v9 bottom];
    v15 = v41;
    [(HKSleepSomnogramBar *)v8 horizontalMidpoint];
    v21 = v42;
LABEL_12:
    [(HKSleepSomnogramBar *)v8 bottom];
LABEL_13:
    v23 = v43;
    goto LABEL_14;
  }

  if (v10 < 2)
  {
    [(HKSleepSomnogramBar *)v9 left];
    v13 = v12;
    [(HKSleepSomnogramBar *)v9 bottom];
    v15 = v14 - a5;
    [(HKSleepSomnogramBar *)v9 left];
    v17 = v16;
    [(HKSleepSomnogramBar *)v8 left];
    v19 = v17 - v18;
    [(HKSleepSomnogramBar *)v9 left];
    v21 = v20;
    if (v19 < v11)
    {
      [(HKSleepSomnogramBar *)v8 bottom];
      v23 = v22 - a5;
      goto LABEL_14;
    }

    v21 = v20 - a5;
    goto LABEL_12;
  }

  [(HKSleepSomnogramBar *)v8 right];
  v21 = v32;
  [(HKSleepSomnogramBar *)v8 bottom];
  v23 = v33 - a5;
  [(HKSleepSomnogramBar *)v9 right];
  v35 = v34;
  [(HKSleepSomnogramBar *)v8 right];
  v37 = v35 - v36;
  [(HKSleepSomnogramBar *)v8 right];
  v13 = v38;
  if (v37 >= v11)
  {
    v13 = v38 + a5;
    [(HKSleepSomnogramBar *)v9 bottom];
    v15 = v46;
  }

  else
  {
    [(HKSleepSomnogramBar *)v9 bottom];
    v15 = v39 - a5;
  }

LABEL_14:
  v44 = [[HKSleepSomnogramConnection alloc] initWithStartPoint:v13 endPoint:v15, v21, v23];

  return v44;
}

- (void)_addSomnogramConnectionPath:(id)a3 toBezierPath:(id)a4
{
  v22 = a4;
  v5 = a3;
  [v5 startPoint];
  v7 = v6;
  v9 = v8;
  [v5 endPoint];
  v11 = v10;
  v13 = v12;

  if (v9 == v13)
  {
    goto LABEL_2;
  }

  v14 = v22;
  if (v7 == v11)
  {
    goto LABEL_4;
  }

  v15 = vabdd_f64(v11, v7);
  if (v7 < v11 && v9 > v13)
  {
    v16 = v9 - v15;
    v17 = 1.57079633;
    v18 = 6.28318531;
LABEL_11:
    [v22 addArcWithCenter:0 radius:v7 startAngle:v16 endAngle:v15 clockwise:{v17, v18}];
LABEL_2:
    v14 = v22;
LABEL_4:
    [v14 addLineToPoint:{v11, v13}];
    goto LABEL_5;
  }

  if (v7 >= v11 || v9 >= v13)
  {
    if (v7 <= v11 || v9 <= v13)
    {
      v16 = v9 + v15;
      v17 = 4.71238898;
      v18 = 3.14159265;
      goto LABEL_11;
    }

    v19 = v13 + v15;
    [v22 addLineToPoint:{v7, v19}];
    v20 = 6.28318531;
    v21 = 4.71238898;
  }

  else
  {
    v19 = v13 - v15;
    [v22 addLineToPoint:{v7, v19}];
    v20 = 3.14159265;
    v21 = 1.57079633;
  }

  [v22 addArcWithCenter:0 radius:v11 startAngle:v19 endAngle:v15 clockwise:{v20, v21}];
LABEL_5:
}

- (void)drawOverlayInContext:(CGContext *)a3 seriesOverlayData:(id)a4
{
  v6 = a4;
  if ([v6 count] == 1 && -[HKGraphSeries allowsSelection](self, "allowsSelection"))
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
      memset(v31, 0, sizeof(v31));
    }

    [v7 graphSeriesScreenRect];
    v10 = [(HKSleepStageDaySeries *)self _visibleSleepStagesInBlockCoordinates:v9 pointTransform:v31 screenRect:?];

    v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4381AE0];
    if ([v10 isSubsetOfSet:v11] && objc_msgSend(v10, "count"))
    {
      v12 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4381AF8];
      v13 = [v10 isEqualToSet:v12];
      v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v15 = v14;
      if (v13)
      {
        v16 = @"IN_BED";
        v17 = @"HealthUI-Localizable";
      }

      else
      {
        v16 = @"ASLEEP_UNSPECIFIED";
        v17 = @"HealthUI-Localizable-Acacia";
      }

      v18 = [v14 localizedStringForKey:v16 value:&stru_1F42FFBE0 table:v17];

      [v7 graphSeriesScreenRect];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v7 graphSeriesScreenRect];
      [(HKSleepStageDaySeries *)self _drawLabelAndRuleLineForString:v18 inRect:a3 horizontalOffset:v20 verticalOffset:v22 axisRect:v24 context:v26, 6.0, 6.0, v27, v28, v29, v30];
    }

    else
    {
      [v7 graphSeriesScreenRect];
      [(HKSleepStageDaySeries *)self _drawSleepStageLabels:a3 axisRect:?];
    }
  }
}

- (void)_drawSleepStageLabels:(CGContext *)a3 axisRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v31[4] = *MEMORY[0x1E69E9840];
  v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v24 = [v25 localizedStringForKey:@"STAGES_OVERLAY_CONTEXT_AWAKE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v31[0] = v24;
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"STAGES_OVERLAY_CONTEXT_REM" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v31[1] = v11;
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v12 localizedStringForKey:@"STAGES_OVERLAY_CONTEXT_CORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v31[2] = v13;
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"STAGES_OVERLAY_CONTEXT_DEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v31[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v26 + 1) + 8 * v22);
        [(HKSleepStageDaySeries *)self _enumerationRectForStage:v20 axisRect:x, y, width, height];
        [(HKSleepStageDaySeries *)self _drawLabelAndRuleLineForString:v23 inRect:a3 horizontalOffset:*&x verticalOffset:*&y axisRect:*&width context:*&height];
        ++v20;
        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)_drawLabelAndRuleLineForString:(id)a3 inRect:(CGRect)a4 horizontalOffset:(double)a5 verticalOffset:(double)a6 axisRect:(CGRect)a7 context:(CGContext *)a8
{
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v29[2] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = [(HKSleepStageDaySeries *)self sleepStageLabelFont];
  if (v16)
  {
    v17 = v16;
    v18 = [(HKSleepStageDaySeries *)self sleepStageLabelColor];

    if (v18)
    {
      v28[0] = *MEMORY[0x1E69DB648];
      v19 = [(HKSleepStageDaySeries *)self sleepStageLabelFont];
      v29[0] = v19;
      v28[1] = *MEMORY[0x1E69DB650];
      v20 = [(HKSleepStageDaySeries *)self sleepStageLabelColor];
      v29[1] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

      v22 = [(HKSleepStageDaySeries *)self sleepStageLabelColor];
      v23 = [v22 CGColor];

      [v15 sizeWithAttributes:v21];
      [v15 drawInRect:v21 withAttributes:{x + a5, y + a6, v24, v25}];
      v26 = y + height;
      CGContextSetStrokeColorWithColor(a8, v23);
      v27 = HKUIOnePixel();
      CGContextSetLineWidth(a8, v27);
      CGContextMoveToPoint(a8, a7.origin.x, v26);
      CGContextAddLineToPoint(a8, a7.origin.x + a7.size.width, v26);
      CGContextStrokePath(a8);
    }
  }
}

- (id)_visibleSleepStagesInBlockCoordinates:(id)a3 pointTransform:(CGAffineTransform *)a4 screenRect:(CGRect)a5
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__HKSleepStageDaySeries__visibleSleepStagesInBlockCoordinates_pointTransform_screenRect___block_invoke;
  v8[3] = &__block_descriptor_112_e35__16__0__HKSleepStageDayCoordinate_8l;
  v5 = *&a4->c;
  v9 = *&a4->a;
  v10 = v5;
  v11 = *&a4->tx;
  v12 = a5;
  v6 = [a3 hk_mapToSet:v8];

  return v6;
}

id __89__HKSleepStageDaySeries__visibleSleepStagesInBlockCoordinates_pointTransform_screenRect___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  [v3 startXValue];
  v5 = a1[8] + a1[6] * 0.0 + a1[4] * v4;
  v6 = a1[10];
  if (v5 >= v6 && v5 <= v6 + a1[12])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "sleepStage")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a4;
  [(HKSleepStageDaySeries *)self xAxisDistanceFromPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKSleepStageDaySeries *)self yAxisDifferenceToPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKSleepStageDaySeries xAxisSelectedCoordinate:blockCoordinate:chartRect:];
  }

  v7 = v6;
  [v7 startXValue];
  if (v8 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  [v7 endXValue];
  v11 = v10;

  if (v9 < v11)
  {
    v11 = v9;
  }

  return v11;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKSleepStageDaySeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  v7 = v6;
  [v7 startXValue];
  v9 = v8 - x;
  [v7 endXValue];
  v11 = v10;

  v12 = fmax(v9, 0.0);
  if (x - v11 <= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = x - v11;
  }

  return v13;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v11 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKSleepStageDaySeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [(HKSleepStageDaySeries *)self _yAxisOffsetForCoordinate:v11 axisRect:x, y, width, height];
  v13 = v12 - v9;

  return v13;
}

- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9
{
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)_nonSleepStageBarRectForCoordinate:(id)a3 axisRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v9 = y + (CGRectGetHeight(v21) + -40.0) * 0.5;
  [v8 xValueStart];
  v11 = v10;
  [v8 xValueEnd];
  v13 = v12;
  [v8 xValueStart];
  v15 = v14;

  v17 = 0x4044000000000000;
  v18 = v11;
  v19 = v9;

  v16 = v13 - v15;
  return CGRectStandardize(*&v18);
}

- (CGRect)_sleepStageBarRectForCoordinate:(id)a3 axisRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  -[HKSleepStageDaySeries _enumerationRectForStage:axisRect:](self, "_enumerationRectForStage:axisRect:", [v9 sleepStage], x, y, width, height);
  if (v11 + -23.0 + -12.0 >= 6.0)
  {
    v12 = v11 + -23.0 + -12.0;
  }

  else
  {
    v12 = 6.0;
  }

  v13 = v10 + 23.0;
  [v9 xValueStart];
  v15 = v14;
  [v9 xValueEnd];
  v17 = v16;
  [v9 xValueStart];
  v19 = v18;

  v21 = v15;
  v22 = v13;
  v23 = v12;

  v20 = v17 - v19;
  return CGRectStandardize(*&v21);
}

- (CGRect)_enumerationRectForStage:(int64_t)a3 axisRect:(CGRect)a4
{
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = CGRectGetHeight(a4) * 0.25;
  v9 = y + v8;
  v10 = v8 * 3.0;
  if (a3 != 5)
  {
    v9 = y + a3 * v8;
    v10 = v8;
  }

  v11 = v9 + 3.0;
  v12 = x;
  v13 = width;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (void)_rebuildFillStyles
{
  v4 = [(HKSleepStageDaySeries *)self highlightedSleepStage];
  v3 = [HKSleepUtilities sleepStageFillStylesWithActiveSleepStage:v4];
  [(HKSleepStageDaySeries *)self setSleepStageFillStyles:v3];
}

- (CGSize)cornerRadiiStorage
{
  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)coordinatesForBlock:blockPath:xAxis:yAxis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"points != nil" object:? file:? lineNumber:? description:?];
}

- (void)xAxisSelectedCoordinate:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)xAxisDistanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)yAxisDifferenceToPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end