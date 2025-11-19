@interface HKSleepStageSeries
- (HKSleepStageSeries)init;
- (NSArray)sleepStageFillStyles;
- (NSNumber)highlightedSleepStage;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)_drawColumnForLayer:(int64_t)a3 offsets:(id)a4 coordinate:(id)a5 selectedBezierPaths:(id)a6 unselectedBezierPaths:(id)a7 barWidth:(double)a8 pathCount:(int64_t *)a9;
- (void)_drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 axisResolution:(double)a8 seriesRenderingDelegate:(id)a9;
- (void)_rebuildFillStyles;
- (void)setHighlightedSleepStage:(id)a3;
- (void)setSleepStageFillStyles:(id)a3;
- (void)updateChartPointUserInfo:(id)a3 forHighlightedSleepStage:(id)a4;
@end

@implementation HKSleepStageSeries

- (HKSleepStageSeries)init
{
  v9.receiver = self;
  v9.super_class = HKSleepStageSeries;
  v2 = [(HKSleepPeriodSeries *)&v9 init];
  v3 = v2;
  if (v2)
  {
    highlightedSleepStageStorage = v2->_highlightedSleepStageStorage;
    v2->_highlightedSleepStageStorage = 0;

    sleepStageFillStylesStorage = v3->_sleepStageFillStylesStorage;
    v3->_sleepStageFillStylesStorage = MEMORY[0x1E695E0F0];

    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v3->_seriesMutableStateLock;
    v3->_seriesMutableStateLock = v6;

    [(NSLock *)v3->_seriesMutableStateLock setName:@"HKSleepStageSeriesLock"];
  }

  return v3;
}

- (NSNumber)highlightedSleepStage
{
  v3 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_highlightedSleepStageStorage;
  v5 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setHighlightedSleepStage:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v5 lock];

  highlightedSleepStageStorage = self->_highlightedSleepStageStorage;
  self->_highlightedSleepStageStorage = v4;

  v7 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v7 unlock];

  [(HKSleepStageSeries *)self _rebuildFillStyles];
}

- (NSArray)sleepStageFillStyles
{
  v3 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_sleepStageFillStylesStorage;
  v5 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSleepStageFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  sleepStageFillStylesStorage = self->_sleepStageFillStylesStorage;
  self->_sleepStageFillStylesStorage = v6;

  v8 = [(HKSleepStageSeries *)self seriesMutableStateLock];
  [v8 unlock];

  [(HKSleepStageSeries *)self _rebuildFillStyles];
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = [a3 chartPoints];
  if (!v13)
  {
    [HKSleepStageSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v14 = [v11 transform];
  v15 = [v12 transform];

  v16 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __64__HKSleepStageSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v24[3] = &unk_1E81B98A0;
  v25 = v14;
  v26 = v15;
  v27 = self;
  v28 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  [v13 enumerateObjectsUsingBlock:v24];
  v22 = *&a4->index;
  resolution = a4->resolution;
  v20 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v17 blockPath:&v22];

  return v20;
}

void __64__HKSleepStageSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 yValue];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 xValueAsGenericType];
    [v5 coordinateForValue:v6];
    v8 = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = [v3 allYValues];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(a1 + 40) coordinateForValue:*(*(&v30 + 1) + 8 * v14)];
          v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v16 = *(a1 + 48);
    v17 = [v3 userInfo];
    v18 = [*(a1 + 48) highlightedSleepStage];
    [v16 updateChartPointUserInfo:v17 forHighlightedSleepStage:v18];

    v29 = [HKSleepStageCoordinate alloc];
    v27 = [v3 asleepUnspecifiedOffsets];
    v25 = [v3 asleepDeepOffsets];
    v28 = [v3 asleepCoreOffsets];
    v26 = [v3 asleepRemOffsets];
    v19 = [v3 awakeOffsets];
    v20 = [v3 inBedOffsets];
    v21 = [v3 allYValues];
    LOBYTE(v16) = [v3 highlighted];
    v22 = [v3 userInfo];
    LOBYTE(v24) = v16;
    v23 = [(HKSleepStageCoordinate *)v29 initWithXValue:v27 asleepUnspecifiedYValues:v25 asleepDeepYValues:v28 asleepCoreYValues:v26 asleepRemYValues:v19 awakeValues:v20 inBedYValues:v8 yValues:v21 highlighted:v24 userInfo:v22];

    [*(a1 + 56) addObject:v23];
  }
}

- (void)updateChartPointUserInfo:(id)a3 forHighlightedSleepStage:(id)a4
{
  v7 = a3;
  [v7 setAnnotationOptions:HKSleepChartPointFormatterOptionsForSleepAnalysis(a4)];
  v5 = [v7 chartPointInfoProvider];
  v6 = [v5 hasSleepStageData];

  if (v6)
  {
    [v7 setAnnotationOptions:{objc_msgSend(v7, "annotationOptions") | 0x40}];
    [v7 setCurrentValueViewOptions:{objc_msgSend(v7, "currentValueViewOptions") | 0x40}];
    [v7 setCurrentValueViewOptionsPriority:2];
  }
}

- (void)_drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 axisResolution:(double)a8 seriesRenderingDelegate:(id)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v93[6] = *MEMORY[0x1E69E9840];
  v53 = a3;
  v56 = a9;
  v51 = [v56 seriesDrawingDuringTiling];
  if (v51 && ([(HKSleepPeriodSeries *)self tiledStrokeStyle], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v57 = [(HKSleepPeriodSeries *)self tiledStrokeStyle];
  }

  else
  {
    v57 = [(HKSleepPeriodSeries *)self strokeStyle];
  }

  [v57 lineWidth];
  v19 = v18;
  [v56 screenRectForSeries:self];
  [HKSleepPeriodSeries barWidthForVisibleBarCount:"barWidthForVisibleBarCount:axisRect:minimumSpacing:" axisRect:a4 minimumSpacing:?];
  v21 = v20;
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = height;
  MaxX = CGRectGetMaxX(v94);
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  MinX = CGRectGetMinX(v95);
  v24 = [MEMORY[0x1E69DC728] bezierPath];
  v93[0] = v24;
  v25 = [MEMORY[0x1E69DC728] bezierPath];
  v93[1] = v25;
  v26 = [MEMORY[0x1E69DC728] bezierPath];
  v93[2] = v26;
  v27 = [MEMORY[0x1E69DC728] bezierPath];
  v93[3] = v27;
  v28 = [MEMORY[0x1E69DC728] bezierPath];
  v93[4] = v28;
  v29 = [MEMORY[0x1E69DC728] bezierPath];
  v93[5] = v29;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:6];

  v30 = [v55 mutableCopy];
  v31 = [v55 mutableCopy];
  v32 = [MEMORY[0x1E69DC728] bezierPath];
  v33 = [MEMORY[0x1E69DC728] bezierPath];
  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x3032000000;
  v91[3] = __Block_byref_object_copy__15;
  v91[4] = __Block_byref_object_dispose__15;
  v92 = 0;
  v89[0] = 0;
  v89[1] = v89;
  v89[2] = 0x3032000000;
  v89[3] = __Block_byref_object_copy__15;
  v89[4] = __Block_byref_object_dispose__15;
  v90 = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v88[3] = 0xFFEFFFFFFFFFFFFFLL;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3032000000;
  v86[3] = __Block_byref_object_copy__15;
  v86[4] = __Block_byref_object_dispose__15;
  v87 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__15;
  v84[4] = __Block_byref_object_dispose__15;
  v85 = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2020000000;
  v83[3] = 0xFFEFFFFFFFFFFFFFLL;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = v19 + v21 + v19 + v21;
  v37 = a8 / 86400.0 * 0.05;
  v59[1] = 3221225472;
  v38 = a8 / 86400.0 - v37;
  v59[0] = MEMORY[0x1E69E9820];
  v59[2] = __135__HKSleepStageSeries__drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_axisResolution_seriesRenderingDelegate___block_invoke;
  v59[3] = &unk_1E81B98C8;
  v73 = MinX;
  v74 = v36;
  v39 = a8 / 86400.0 + v37;
  v75 = MaxX;
  v59[4] = self;
  v40 = v31;
  v60 = v40;
  v41 = v30;
  v61 = v41;
  v66 = &v79;
  v76 = v21;
  v77 = v38;
  v78 = v39;
  v67 = v88;
  v68 = v86;
  v69 = v83;
  v42 = v32;
  v62 = v42;
  v43 = v34;
  v63 = v43;
  v70 = v84;
  v44 = v33;
  v64 = v44;
  v45 = v35;
  v65 = v45;
  v71 = v91;
  v72 = v89;
  v46 = *&a5->c;
  v58[0] = *&a5->a;
  v58[1] = v46;
  v58[2] = *&a5->tx;
  [v53 enumerateCoordinatesWithTransform:v58 roundToViewScale:1 block:v59];
  if ([(HKGraphSeries *)self allowsSelection])
  {
    [(HKSleepPeriodSeries *)self defaultFillStyles];
  }

  else
  {
    [(HKSleepPeriodSeries *)self inactiveFillStyles];
  }
  v47 = ;
  [(HKSleepPeriodSeries *)self drawPaths:v41 withFillStyles:v47 strokeStyle:v57 axisRect:a6 context:x, y, width, height];
  v48 = [(HKSleepPeriodSeries *)self highlightedFillStyles];
  v49 = v48;
  if (!v48)
  {
    v49 = [(HKSleepPeriodSeries *)self defaultFillStyles];
  }

  [(HKSleepPeriodSeries *)self drawPaths:v40 withFillStyles:v49 strokeStyle:v57 axisRect:a6 context:x, y, width, height];
  if (!v48)
  {
  }

  if (((v51 | [v56 measuringStartupTime] ^ 1) & 1) == 0 && v80[3] >= 1)
  {
    v50 = [(HKGraphSeries *)self delegate];
    [v50 nonemptyDrawComplete];
  }

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(v83, 8);
  _Block_object_dispose(v84, 8);

  _Block_object_dispose(v86, 8);
  _Block_object_dispose(v88, 8);
  _Block_object_dispose(v89, 8);

  _Block_object_dispose(v91, 8);
}

void __135__HKSleepStageSeries__drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_axisResolution_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v57 = a2;
  v6 = a4;
  [v57 xValue];
  v8 = v7;
  v9 = *(a1 + 152);
  if (*(a1 + 144) - v8 <= v9 && v8 - *(a1 + 160) <= v9)
  {
    v10 = *(a1 + 32);
    v11 = [v57 awakeValues];
    [v10 _drawColumnForLayer:0 offsets:v11 coordinate:v57 selectedBezierPaths:*(a1 + 40) unselectedBezierPaths:*(a1 + 48) barWidth:*(*(a1 + 88) + 8) + 24 pathCount:*(a1 + 168)];

    v12 = *(a1 + 32);
    v13 = [v57 asleepRemYValues];
    v14 = 1;
    [v12 _drawColumnForLayer:1 offsets:v13 coordinate:v57 selectedBezierPaths:*(a1 + 40) unselectedBezierPaths:*(a1 + 48) barWidth:*(*(a1 + 88) + 8) + 24 pathCount:*(a1 + 168)];

    v15 = *(a1 + 32);
    v16 = [v57 asleepCoreYValues];
    [v15 _drawColumnForLayer:2 offsets:v16 coordinate:v57 selectedBezierPaths:*(a1 + 40) unselectedBezierPaths:*(a1 + 48) barWidth:*(*(a1 + 88) + 8) + 24 pathCount:*(a1 + 168)];

    v17 = *(a1 + 32);
    v18 = [v57 asleepDeepYValues];
    [v17 _drawColumnForLayer:3 offsets:v18 coordinate:v57 selectedBezierPaths:*(a1 + 40) unselectedBezierPaths:*(a1 + 48) barWidth:*(*(a1 + 88) + 8) + 24 pathCount:*(a1 + 168)];

    v19 = *(a1 + 32);
    v20 = [v57 asleepUnspecifiedYValues];
    [v19 _drawColumnForLayer:5 offsets:v20 coordinate:v57 selectedBezierPaths:*(a1 + 40) unselectedBezierPaths:*(a1 + 48) barWidth:*(*(a1 + 88) + 8) + 24 pathCount:*(a1 + 168)];

    v21 = *(a1 + 32);
    v22 = [v57 inBedYValues];
    [v21 _drawColumnForLayer:4 offsets:v22 coordinate:v57 selectedBezierPaths:*(a1 + 40) unselectedBezierPaths:*(a1 + 48) barWidth:*(*(a1 + 88) + 8) + 24 pathCount:*(a1 + 168)];

    [v6 xValue];
    v24 = vabdd_f64(v23, *(*(*(a1 + 96) + 8) + 24));
    if (v24 >= *(a1 + 176))
    {
      v14 = v24 > *(a1 + 184);
    }

    v25 = [v57 upperGoalYValue];

    v26 = v57;
    if (v25)
    {
      v27 = [v57 upperGoalYValue];
      [v27 doubleValue];
      v29 = v28;

      v30 = *(*(*(a1 + 104) + 8) + 40);
      if (v30)
      {
        v31 = *(*(*(a1 + 112) + 8) + 24);
        if (v31 < v8 && !v14)
        {
          [v30 doubleValue];
          [*(a1 + 56) moveToPoint:{v31, v32}];
          [*(a1 + 56) addLineToPoint:{v8, v29}];
        }
      }

      v33 = *(a1 + 64);
      v34 = [MEMORY[0x1E696B098] valueWithCGPoint:{v8, v29}];
      [v33 addObject:v34];

      v26 = v57;
    }

    v35 = [v26 lowerGoalYValue];

    if (v35)
    {
      v36 = [v57 lowerGoalYValue];
      [v36 doubleValue];
      v38 = v37;

      v39 = *(*(*(a1 + 120) + 8) + 40);
      if (v39)
      {
        v40 = *(*(*(a1 + 112) + 8) + 24);
        if (v40 < v8 && !v14)
        {
          [v39 doubleValue];
          [*(a1 + 72) moveToPoint:{v40, v41}];
          [*(a1 + 72) addLineToPoint:{v8, v38}];
        }
      }

      v42 = *(a1 + 80);
      v43 = [MEMORY[0x1E696B098] valueWithCGPoint:{v8, v38}];
      [v42 addObject:v43];
    }

    if (v8 <= *(a1 + 160))
    {
      v44 = [v6 upperGoalYValue];
      v45 = *(*(a1 + 128) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = v44;

      v47 = [v6 lowerGoalYValue];
      v48 = *(*(a1 + 136) + 8);
      v49 = *(v48 + 40);
      *(v48 + 40) = v47;
    }

    [v6 xValue];
    *(*(*(a1 + 96) + 8) + 24) = v50;
    v51 = [v57 upperGoalYValue];
    v52 = *(*(a1 + 104) + 8);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;

    v54 = [v57 lowerGoalYValue];
    v55 = *(*(a1 + 120) + 8);
    v56 = *(v55 + 40);
    *(v55 + 40) = v54;

    *(*(*(a1 + 112) + 8) + 24) = v8;
  }
}

- (void)_drawColumnForLayer:(int64_t)a3 offsets:(id)a4 coordinate:(id)a5 selectedBezierPaths:(id)a6 unselectedBezierPaths:(id)a7 barWidth:(double)a8 pathCount:(int64_t *)a9
{
  v48 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v48 count])
  {
    v47 = a9;
    [v16 xValue];
    v20 = v19;
    v46 = v17;
    if ([v16 highlighted])
    {
      v21 = v17;
    }

    else
    {
      v21 = v18;
    }

    v22 = [v21 objectAtIndexedSubscript:a3];
    v23 = [v48 firstObject];
    if ([v48 count] < 2)
    {
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 1;
      v26 = v23;
      do
      {
        v23 = [v48 objectAtIndexedSubscript:v25];
        v27 = [v26 value];
        [v27 doubleValue];
        v29 = v28;

        v30 = [v23 value];
        [v30 doubleValue];
        v32 = v31;

        if (v25)
        {
          if ([v26 continuation])
          {
            v33 = 0;
          }

          else
          {
            v33 = 3;
          }

          if ([v23 continuation])
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 | 0xC;
          }

          if (v32 - v29 >= 0.0)
          {
            v35 = v32 - v29;
          }

          else
          {
            v35 = -(v32 - v29);
          }

          v36 = v20;
          v37 = v29;
          v38 = a8;
          v50 = CGRectStandardize(*(&v35 - 3));
          v51 = CGRectOffset(v50, a8 * -0.5, 0.0);
          x = v51.origin.x;
          y = v51.origin.y;
          width = v51.size.width;
          height = v51.size.height;
          [(HKSleepPeriodSeries *)self cornerRadii];
          v45 = [HKBarSeries barSeriesRoundedRect:v34 byRoundingCorners:x cornerRadii:y, width, height, v43, v44];
          [v22 appendPath:v45];

          ++v24;
        }

        ++v25;
        v26 = v23;
      }

      while (v25 < [v48 count]);
    }

    *v47 = v24;

    v17 = v46;
  }
}

- (void)_rebuildFillStyles
{
  v3 = [(HKSleepStageSeries *)self highlightedSleepStage];
  v4 = [HKSleepUtilities sleepStageFillStylesWithActiveSleepStage:v3];

  [(HKSleepPeriodSeries *)self setHighlightedFillStyles:v4];
  [(HKSleepPeriodSeries *)self setDefaultFillStyles:v4];
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepStageSeries.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end