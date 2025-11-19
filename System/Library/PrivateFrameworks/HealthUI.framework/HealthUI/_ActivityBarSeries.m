@interface _ActivityBarSeries
- (HKActivityBarSeriesDelegate)activityBarDelegate;
- (_ActivityBarSeries)initWithUnitPreferenceController:(id)a3 activityBarDelegate:(id)a4 displayTypeController:(id)a5;
- (void)_drawPath:(id)a3 withFillStyle:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7;
- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8;
- (void)updateLegendsForTimeScope:(int64_t)a3 range:(id)a4 drawingDuringScrolling:(BOOL)a5;
@end

@implementation _ActivityBarSeries

- (_ActivityBarSeries)initWithUnitPreferenceController:(id)a3 activityBarDelegate:(id)a4 displayTypeController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _ActivityBarSeries;
  v12 = [(HKBarSeries *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_unitPreferenceController, a3);
    objc_storeWeak(&v13->_activityBarDelegate, v10);
    objc_storeStrong(&v13->_displayTypeController, a5);
    v13->_lastLegendUpdateTime = 0.0;
  }

  return v13;
}

- (void)updateLegendsForTimeScope:(int64_t)a3 range:(id)a4 drawingDuringScrolling:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = CACurrentMediaTime();
  if (!v5 || ([(_ActivityBarSeries *)self lastLegendUpdateTime], v9 - v10 >= 0.2))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77___ActivityBarSeries_updateLegendsForTimeScope_range_drawingDuringScrolling___block_invoke;
    v11[3] = &unk_1E81BA608;
    v11[4] = self;
    v11[5] = a3;
    *&v11[6] = v9;
    [(HKGraphSeries *)self untransformedChartPointsForTimeScope:a3 resolution:0 range:v8 completion:v11];
  }
}

- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8
{
  height = a7.size.height;
  rect = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a8;
  v60 = a3;
  if ([v16 seriesDrawingDuringTiling] && (-[HKBarSeries tiledStrokeStyle](self, "tiledStrokeStyle"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  else
  {
    v19 = [(HKBarSeries *)self tiledStrokeStyle];
  }

  [v19 lineWidth];
  v21 = v20;
  v22 = [(HKBarSeries *)self selectedStrokeStyle];
  [v22 lineWidth];
  v24 = v23;

  if (v24 < v21)
  {
    v24 = v21;
  }

  [v16 screenRectForSeries:self];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [(HKBarSeries *)self barWidthForVisibleBarCount:a4 axisRect:v26 minimumSpacing:v28, v30, v32, v24];
  v34 = v33;
  v35 = v24 + v33;
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = rect;
  v82.size.height = height;
  MaxX = CGRectGetMaxX(v82);
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = rect;
  v83.size.height = height;
  MinX = CGRectGetMinX(v83);
  v38 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v39 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v40 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v41 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v42 = [(HKBarSeries *)self selectedFillStyle];
  if (v42)
  {
    v43 = 1;
  }

  else
  {
    v44 = [(HKBarSeries *)self selectedStrokeStyle];
    v43 = v44 != 0;
  }

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __119___ActivityBarSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke;
  v63[3] = &unk_1E81BA630;
  v69 = MinX;
  v70 = v35;
  v71 = MaxX;
  v45 = v38;
  v64 = v45;
  v46 = v39;
  v65 = v46;
  v47 = v41;
  v66 = v47;
  v77 = v43;
  v72 = v78;
  v73 = v79;
  v74 = v80;
  v75 = v81;
  v48 = v40;
  v76 = v34;
  v67 = v48;
  v68 = self;
  v49 = *&a5->c;
  v62[0] = *&a5->a;
  v62[1] = v49;
  v62[2] = *&a5->tx;
  [v60 enumerateCoordinatesWithTransform:v62 roundToViewScale:1 block:v63];

  v50 = [(_ActivityBarSeries *)self missedGoalUnselectedFillStyle];
  if (v50)
  {
    [(_ActivityBarSeries *)self _drawPath:v46 withFillStyle:v50 strokeStyle:v19 axisRect:a6 context:x, y, rect, height];
  }

  else
  {
    v51 = [(HKBarSeries *)self unselectedFillStyle];
    [(_ActivityBarSeries *)self _drawPath:v46 withFillStyle:v51 strokeStyle:v19 axisRect:a6 context:x, y, rect, height];
  }

  v52 = [(HKBarSeries *)self unselectedFillStyle];
  [(_ActivityBarSeries *)self _drawPath:v45 withFillStyle:v52 strokeStyle:v19 axisRect:a6 context:x, y, rect, height];

  v53 = [(HKBarSeries *)self selectedFillStyle];
  v54 = v53;
  if (!v53)
  {
    v54 = [(HKBarSeries *)self unselectedFillStyle];
  }

  v55 = [(HKBarSeries *)self selectedStrokeStyle];
  v56 = v55;
  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = v19;
  }

  [(_ActivityBarSeries *)self _drawPath:v48 withFillStyle:v54 strokeStyle:v57 axisRect:a6 context:x, y, rect, height];

  if (!v53)
  {
  }

  v58 = [(_ActivityBarSeries *)self pausedUnselectedFillStyle];
  if (v58)
  {
    [(_ActivityBarSeries *)self _drawPath:v47 withFillStyle:v58 strokeStyle:v19 axisRect:a6 context:x, y, rect, height];
  }

  else
  {
    v59 = [(HKBarSeries *)self unselectedFillStyle];
    [(_ActivityBarSeries *)self _drawPath:v47 withFillStyle:v59 strokeStyle:v19 axisRect:a6 context:x, y, rect, height];
  }
}

- (void)_drawPath:(id)a3 withFillStyle:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = a3;
  v15 = a4;
  v16 = a5;
  if (([v19 isEmpty] & 1) == 0)
  {
    if (v16)
    {
      CGContextSaveGState(a7);
      [v16 applyToContext:a7];
      CGContextAddPath(a7, [v19 CGPath]);
      CGContextStrokePath(a7);
      CGContextRestoreGState(a7);
    }

    if (v15)
    {
      v17 = [v19 CGPath];
      [(HKGraphSeries *)self alpha];
      [v15 renderPath:v17 context:a7 axisRect:x alpha:{y, width, height, v18}];
    }
  }
}

- (HKActivityBarSeriesDelegate)activityBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activityBarDelegate);

  return WeakRetained;
}

@end