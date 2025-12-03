@interface _ActivityBarSeries
- (HKActivityBarSeriesDelegate)activityBarDelegate;
- (_ActivityBarSeries)initWithUnitPreferenceController:(id)controller activityBarDelegate:(id)delegate displayTypeController:(id)typeController;
- (void)_drawPath:(id)path withFillStyle:(id)style strokeStyle:(id)strokeStyle axisRect:(CGRect)rect context:(CGContext *)context;
- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate;
- (void)updateLegendsForTimeScope:(int64_t)scope range:(id)range drawingDuringScrolling:(BOOL)scrolling;
@end

@implementation _ActivityBarSeries

- (_ActivityBarSeries)initWithUnitPreferenceController:(id)controller activityBarDelegate:(id)delegate displayTypeController:(id)typeController
{
  controllerCopy = controller;
  delegateCopy = delegate;
  typeControllerCopy = typeController;
  v15.receiver = self;
  v15.super_class = _ActivityBarSeries;
  v12 = [(HKBarSeries *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_unitPreferenceController, controller);
    objc_storeWeak(&v13->_activityBarDelegate, delegateCopy);
    objc_storeStrong(&v13->_displayTypeController, typeController);
    v13->_lastLegendUpdateTime = 0.0;
  }

  return v13;
}

- (void)updateLegendsForTimeScope:(int64_t)scope range:(id)range drawingDuringScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  rangeCopy = range;
  v9 = CACurrentMediaTime();
  if (!scrollingCopy || ([(_ActivityBarSeries *)self lastLegendUpdateTime], v9 - v10 >= 0.2))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77___ActivityBarSeries_updateLegendsForTimeScope_range_drawingDuringScrolling___block_invoke;
    v11[3] = &unk_1E81BA608;
    v11[4] = self;
    v11[5] = scope;
    *&v11[6] = v9;
    [(HKGraphSeries *)self untransformedChartPointsForTimeScope:scope resolution:0 range:rangeCopy completion:v11];
  }
}

- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  rect = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegateCopy = delegate;
  coordinatesCopy = coordinates;
  if ([delegateCopy seriesDrawingDuringTiling] && (-[HKBarSeries tiledStrokeStyle](self, "tiledStrokeStyle"), (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    unselectedStrokeStyle = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  else
  {
    unselectedStrokeStyle = [(HKBarSeries *)self tiledStrokeStyle];
  }

  [unselectedStrokeStyle lineWidth];
  v21 = v20;
  selectedStrokeStyle = [(HKBarSeries *)self selectedStrokeStyle];
  [selectedStrokeStyle lineWidth];
  v24 = v23;

  if (v24 < v21)
  {
    v24 = v21;
  }

  [delegateCopy screenRectForSeries:self];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [(HKBarSeries *)self barWidthForVisibleBarCount:count axisRect:v26 minimumSpacing:v28, v30, v32, v24];
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
  selectedFillStyle = [(HKBarSeries *)self selectedFillStyle];
  if (selectedFillStyle)
  {
    v43 = 1;
  }

  else
  {
    selectedStrokeStyle2 = [(HKBarSeries *)self selectedStrokeStyle];
    v43 = selectedStrokeStyle2 != 0;
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
  selfCopy = self;
  v49 = *&transform->c;
  v62[0] = *&transform->a;
  v62[1] = v49;
  v62[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v62 roundToViewScale:1 block:v63];

  missedGoalUnselectedFillStyle = [(_ActivityBarSeries *)self missedGoalUnselectedFillStyle];
  if (missedGoalUnselectedFillStyle)
  {
    [(_ActivityBarSeries *)self _drawPath:v46 withFillStyle:missedGoalUnselectedFillStyle strokeStyle:unselectedStrokeStyle axisRect:context context:x, y, rect, height];
  }

  else
  {
    unselectedFillStyle = [(HKBarSeries *)self unselectedFillStyle];
    [(_ActivityBarSeries *)self _drawPath:v46 withFillStyle:unselectedFillStyle strokeStyle:unselectedStrokeStyle axisRect:context context:x, y, rect, height];
  }

  unselectedFillStyle2 = [(HKBarSeries *)self unselectedFillStyle];
  [(_ActivityBarSeries *)self _drawPath:v45 withFillStyle:unselectedFillStyle2 strokeStyle:unselectedStrokeStyle axisRect:context context:x, y, rect, height];

  selectedFillStyle2 = [(HKBarSeries *)self selectedFillStyle];
  unselectedFillStyle3 = selectedFillStyle2;
  if (!selectedFillStyle2)
  {
    unselectedFillStyle3 = [(HKBarSeries *)self unselectedFillStyle];
  }

  selectedStrokeStyle3 = [(HKBarSeries *)self selectedStrokeStyle];
  v56 = selectedStrokeStyle3;
  if (selectedStrokeStyle3)
  {
    v57 = selectedStrokeStyle3;
  }

  else
  {
    v57 = unselectedStrokeStyle;
  }

  [(_ActivityBarSeries *)self _drawPath:v48 withFillStyle:unselectedFillStyle3 strokeStyle:v57 axisRect:context context:x, y, rect, height];

  if (!selectedFillStyle2)
  {
  }

  pausedUnselectedFillStyle = [(_ActivityBarSeries *)self pausedUnselectedFillStyle];
  if (pausedUnselectedFillStyle)
  {
    [(_ActivityBarSeries *)self _drawPath:v47 withFillStyle:pausedUnselectedFillStyle strokeStyle:unselectedStrokeStyle axisRect:context context:x, y, rect, height];
  }

  else
  {
    unselectedFillStyle4 = [(HKBarSeries *)self unselectedFillStyle];
    [(_ActivityBarSeries *)self _drawPath:v47 withFillStyle:unselectedFillStyle4 strokeStyle:unselectedStrokeStyle axisRect:context context:x, y, rect, height];
  }
}

- (void)_drawPath:(id)path withFillStyle:(id)style strokeStyle:(id)strokeStyle axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  styleCopy = style;
  strokeStyleCopy = strokeStyle;
  if (([pathCopy isEmpty] & 1) == 0)
  {
    if (strokeStyleCopy)
    {
      CGContextSaveGState(context);
      [strokeStyleCopy applyToContext:context];
      CGContextAddPath(context, [pathCopy CGPath]);
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
    }

    if (styleCopy)
    {
      cGPath = [pathCopy CGPath];
      [(HKGraphSeries *)self alpha];
      [styleCopy renderPath:cGPath context:context axisRect:x alpha:{y, width, height, v18}];
    }
  }
}

- (HKActivityBarSeriesDelegate)activityBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activityBarDelegate);

  return WeakRetained;
}

@end