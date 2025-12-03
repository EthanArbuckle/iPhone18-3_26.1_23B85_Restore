@interface HKGraphView
+ (BOOL)visibleIntersectionForRange:(id)range visibleRange:(id)visibleRange;
+ (double)_modelCoordinateSpanForRange:(id)range axis:(id)axis;
+ (id)_rangeFromModelCoordinateMin:(double)min max:(double)max axis:(id)axis;
- ($27550797B7AF9FA742559CA72F5B5CB4)_closestDataPointPathToPoint:(SEL)point seriesGroupRow:(CGPoint)row minimumXDistance:(int64_t)distance xDistanceOut:(double)out;
- ($27550797B7AF9FA742559CA72F5B5CB4)_closestDataPointPathToPoint:(SEL)point seriesGroupRow:(CGPoint)row seriesInGroup:(int64_t)group minimumXDistance:(id)distance xDistanceOut:(double)out;
- (BOOL)_allSeriesAreInverted:(id)inverted;
- (BOOL)_anySeriesWantsInternalLegends:(int64_t)legends;
- (BOOL)_autoscaleTransformIsSignificant:(id)significant;
- (BOOL)_axisRangeIsDateRange;
- (BOOL)_compareRange:(id)range toRange:(id)toRange;
- (BOOL)_configureYAxisViewIfNeeded;
- (BOOL)_drawingDuringScrolling;
- (BOOL)_graphViewIsConfigured;
- (BOOL)_initializationPeriodIsActive;
- (BOOL)_measureStartupFlagFromEnvironment;
- (BOOL)_needsYAxisUpdateDuringRender;
- (BOOL)_selectionContextsNotPreviouslySelected:(id)selected;
- (BOOL)_seriesGroupHasLegendEntries:(id)entries;
- (BOOL)_seriesRequiresYAutoscale:(id)autoscale;
- (BOOL)_setRangesForActiveVisibleRange:(id)range;
- (BOOL)_skipRenderingToView:(id)view yAxisView:(id)axisView context:(CGContext *)context chartRect:(CGRect)rect;
- (BOOL)_stickySelectionActive;
- (BOOL)_touchesActuallyMoved:(id)moved;
- (BOOL)allSeriesHaveDataAvailable;
- (BOOL)rangeIsVisible:(id)visible;
- (BOOL)stillAnimating:(id)animating;
- (CGAffineTransform)_xAxisCoordinateTransform;
- (CGAffineTransform)_xAxisCoordinateTransformWithContentOffset:(SEL)offset zoomScale:(CGPoint)scale chartRect:(double)rect;
- (CGPoint)_contentOffsetForActualViewRange;
- (CGPoint)_touchPointForSeriesGroupIndex:(int64_t)index originalTouchPoint:(CGPoint)point;
- (CGPoint)contentOffset;
- (CGRect)_adjustLeftMarginRectForBaselines:(CGRect)baselines;
- (CGRect)_dataAreaRect;
- (CGRect)_overlayAreaRect;
- (CGRect)_scrollingAreaRect;
- (CGRect)_tileScreenRectForColumn:(int64_t)column;
- (CGRect)_verticalAxisRect;
- (CGRect)_yAxisRectForSeriesGroupRow:(int64_t)row chartRect:(CGRect)rect;
- (CGRect)_yAxisRectForSeriesGroupRow:(int64_t)row insetForLegends:(BOOL)legends chartRect:(CGRect)rect;
- (CGRect)leftMarginViewRect;
- (HKGraphView)initWithFrame:(CGRect)frame;
- (HKGraphViewDelegate)delegate;
- (HKValueRange)chartableValueRange;
- (NSArray)allSeries;
- (UIEdgeInsets)_currentLegendInsets;
- (UIEdgeInsets)_dataAreaInsets;
- (UIEdgeInsets)_virtualMarginInsets;
- (UIEdgeInsets)axisInset;
- (_HKLocationSpan)_locationSpanForSeriesGroupRow:(int64_t)row chartRect:(CGRect)rect;
- (double)_bottomBaselineYValueForChartRect:(CGRect)rect;
- (double)_contentWidth;
- (double)_detailViewWidth;
- (double)_inactiveRightAreaForRect:(CGRect)rect;
- (double)_maxTimeThreshold;
- (double)_maximumZoomScale;
- (double)_topBaselineYValueForChartRect:(CGRect)rect;
- (double)snapScreenCoordinateToXAxisResolution:(double)resolution;
- (id)_actualVisibleRangeFromEffectiveVisibleRange:(id)range dataAreaRect:(CGRect)rect;
- (id)_autoscaleSeriesOnlyIfNeeded:(BOOL)needed;
- (id)_autoscaleTransformsFromAutoscaleSeriesList:(id)list specificRange:(id)range;
- (id)_captureColor:(id)color;
- (id)_closestGraphSeriesForTouchPoint:(CGPoint)point seriesGroup:(id)group;
- (id)_closestSeriesToPoint:(CGPoint)point allSeries:(id)series;
- (id)_combinedYAxisRangeForAutoscaleSeries:(id)series yAxisRect:(CGRect)rect;
- (id)_createRendererSeriesConfigurationWithInsetDataArea:(CGRect)area drawingToTile:(BOOL)tile;
- (id)_createRendererSeriesRowFromIndex:(int64_t)index insetDataArea:(CGRect)area drawingToTile:(BOOL)tile;
- (id)_createRendererWithCurrentStateWithChartRect:(CGRect)rect contentOffset:(CGPoint)offset drawingToTile:(BOOL)tile tileColumn:(int64_t)column effectiveVisibleRangeCadence:(id)cadence effectiveVisibleRangeActive:(id)active actualVisibleRange:(id)range;
- (id)_defaultXAxisValueRange;
- (id)_effectiveVisibleRangeFromActualVisibleRange:(id)range;
- (id)_findActualAxisRangeFromVisibleRanges;
- (id)_findAutoscaleSeriesForYAxis:(id)axis allAutoscaleSeries:(id)series;
- (id)_graphSeriesForZoom:(int64_t)zoom seriesGroupRow:(int64_t)row;
- (id)_gridlineRangesForChartRect:(CGRect)rect;
- (id)_insertAutoscaleAnimation:(id)animation;
- (id)_multiSeriesSelectionContextsWithTouchPoints:(id)points updateViewStates:(BOOL)states;
- (id)_newPointSelectionContextsWithTouchPoints:(id)points updateViewStates:(BOOL)states;
- (id)_nonOverlappingOverlaySeriesData:(id)data;
- (id)_oneSeriesSelectionContextsWithTouchPoints:(id)points updateViewStates:(BOOL)states;
- (id)_overlappingOverlaySeriesData:(id)data;
- (id)_pointSelectionContextWithPathRange:(id *)range touchPoints:(id)points seriesGroupRow:(int64_t)row seriesInGroup:(id)group;
- (id)_propertyAnimationForTransform:(id)transform;
- (id)_rangeFromRange:(id)range withStartOfRange:(id)ofRange;
- (id)_valueForXAxisLocation:(double)location;
- (id)_visibleSeriesForSeriesGroup:(id)group;
- (id)createTileRendererWithTileRect:(CGRect)rect column:(int64_t)column;
- (id)findVisibleBlockCoordinatesForPrimarySeries;
- (id)primarySeries;
- (int64_t)_currentSelectionStateForSeriesGroup:(id)group;
- (int64_t)_ordinalForOverlayType:(int64_t)type;
- (int64_t)_overlayEnvironmentType;
- (int64_t)_overlayTypeForOverlaySeriesData:(id)data;
- (int64_t)_resolutionFromSeries:(id)series;
- (int64_t)resolutionFromTraitCollectionAttributes;
- (void)_actionsAfterAnimationTransform:(id)transform finalVisibleRange:(id)range;
- (void)_actionsBeforeAnimationTransform:(id)transform;
- (void)_activateStickySelection;
- (void)_addSelectionRecognizerToView:(id)view;
- (void)_addTapGestureRecognizerForTapOnView:(id)view;
- (void)_addTapGestureRecognizerForTogglingStickyToView:(id)view;
- (void)_autoScaleXAxis;
- (void)_autoscaleAnimationCancelled;
- (void)_autoscaleAnimationEnd;
- (void)_autoscaleAnimationStart;
- (void)_cancelAndFinishSelection;
- (void)_cancelAutoscaleAnimations;
- (void)_cancelExternalSelection;
- (void)_clearRenderViewIfNecessary;
- (void)_createLegendForSeriesGroup:(id)group;
- (void)_createLegendsIfNecessary;
- (void)_deactivateStickySelection;
- (void)_deselectAllSeriesWithAlpha:(double)alpha offScreenIndicatorAlpha:(double)indicatorAlpha seriesGroup:(id)group;
- (void)_drawOverlaysIfNeeded:(id)needed;
- (void)_enumerateSeriesSelectionRegionsForSeriesGroup:(id)group withBlock:(id)block;
- (void)_finishSelection;
- (void)_finishSelectionForSeriesGroup:(id)group;
- (void)_handleMarkDirtyCompletion;
- (void)_handleStartTouchPoint:(CGPoint)point seriesGroupRow:(int64_t)row;
- (void)_handleTilesInitialRender;
- (void)_hideTiles;
- (void)_hideTilesWithForce;
- (void)_installExternalSelectionCancelTimer;
- (void)_installExternalSelectionEndTimer;
- (void)_invalidateExternalSelectionCancelTimer;
- (void)_layoutDetailView;
- (void)_layoutLegendsForChartRect:(CGRect)rect;
- (void)_layoutOverlayView;
- (void)_loadScrollView;
- (void)_loadSeriesForZoom:(int64_t)zoom;
- (void)_markTilesDirtyWithCompletion:(id)completion;
- (void)_moveSeriesToFront:(id)front;
- (void)_notifyDateZoomDidChangeFromValue:(int64_t)value toValue:(int64_t)toValue;
- (void)_notifyDelegateOfFinishUserScrolling;
- (void)_notifyDelegateOfSizeChange;
- (void)_notifyDelegateOfTapOnYAxis;
- (void)_notifyDelegateOfVisibleValueRange:(id)range changeContext:(int64_t)context;
- (void)_notifyDelegateOfYAxisWidth:(double)width toWidth:(double)toWidth;
- (void)_notifyDelegateSeriesUpdate:(id)update newDataArrived:(BOOL)arrived;
- (void)_notifyDidBeginSelection;
- (void)_notifyDidEndExternalSelection;
- (void)_notifyDidEndSelection;
- (void)_notifyDidUpdateSelectionWithPointContext:(id)context;
- (void)_notifyGraphViewRendered;
- (void)_overlayViewsForOverlayData:(id)data overlayView:(id)view;
- (void)_performPostAxisUpdates:(int64_t)updates newXAxisHeight:(double)height;
- (void)_performPostLeftMarginUpdates;
- (void)_processExternalSelection;
- (void)_reconfigureScrollingTiles;
- (void)_recordLastRenderTime;
- (void)_reloadViewScope;
- (void)_removeAutoscaleAnimationWithName:(id)name cancelled:(BOOL)cancelled completion:(id)completion;
- (void)_removeSelectionRecognizerFromView:(id)view;
- (void)_renderYAxisLabelsInContext:(CGContext *)context chartRect:(CGRect)rect;
- (void)_restoreDestinationActiveRange;
- (void)_scheduleExternalSelectionIfNeeded;
- (void)_scheduleExternalSelectionIfNeededClearingLastLocation;
- (void)_scheduleRequiredExternalSelection;
- (void)_scrollToCurrentVisibleRangeAnimated:(BOOL)animated;
- (void)_selectionRecognizerDidBegin:(id)begin;
- (void)_selectionRecognizerDidBeginWithTouchPoint:(CGPoint)point;
- (void)_selectionRecognizerDidFinish:(id)finish;
- (void)_selectionRecognizerDidMove:(id)move;
- (void)_selectionRecognizerDidMoveWithTouchPoints:(id)points;
- (void)_selectionRecognizerDidUpdate:(id)update;
- (void)_setNeedsUpdateGraphViewConfiguration;
- (void)_setVisibleRangesForEffectiveRangeCadence:(id)cadence;
- (void)_shareYAxesForSeriesGroup:(id)group;
- (void)_showTiles;
- (void)_shutdownTilingThread;
- (void)_snapXAxisRangeToPreservedRange;
- (void)_startupTimerCallback:(id)callback;
- (void)_tapOnViewAction:(id)action;
- (void)_tileHiddenFlag:(BOOL)flag;
- (void)_toggleStickySelectionAction:(id)action;
- (void)_touchAtPoint:(CGPoint)point;
- (void)_touchTilesForContentOffset:(CGPoint)offset applyHysteresis:(BOOL)hysteresis;
- (void)_updateAllLegendsWithSelectedValues:(id)values;
- (void)_updateAxisZoomScaleValueRange;
- (void)_updateDateZoomIfNecessary;
- (void)_updateEffectiveAxisRange:(id)range effectiveVisibleRangeCadence:(id)cadence effectiveVisibleRangeActive:(id)active virtualLeftMarginWidth:(double)width virtualRightMarginWidth:(double)marginWidth;
- (void)_updateGraphViewConfiguration;
- (void)_updateGraphViewConfigurationIfNecessary;
- (void)_updateLegendForSeriesGroup:(id)group;
- (void)_updateLegendsForAllSeriesGroups;
- (void)_updateRangesForEffectiveAxisRange:(id)range effectiveVisibleRangeCadence:(id)cadence effectiveVisibleRangeActive:(id)active;
- (void)_updateScene;
- (void)_updateScrollViewPropertiesIgnoringScrollViewCallbacks:(id)callbacks;
- (void)_updateSelectionContextStateWithTouchPoint:(CGPoint)point seriesGroup:(id)group;
- (void)_updateZoomForParameters;
- (void)_walkAllSeries:(id)series;
- (void)autoscaleYAxesAnimated:(BOOL)animated specificRange:(id)range onlyIfNeeded:(BOOL)needed completion:(id)completion;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)enumerateVisibleCoordinatesForSeries:(id)series block:(id)block;
- (void)gestureWillBeginWithRecognizer:(id)recognizer;
- (void)graphRenderer:(id)renderer shouldRenderSceneWithContext:(CGContext *)context chartRect:(CGRect)rect;
- (void)invalidateDataSourceCaches;
- (void)layoutSubviews;
- (void)nonemptyDrawComplete;
- (void)removeSeries;
- (void)resetAndRedraw;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)seriesDidInvalidatePaths:(id)paths newDataArrived:(BOOL)arrived;
- (void)setAxisInset:(UIEdgeInsets)inset;
- (void)setBackgroundColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setChartableValueRange:(id)range;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setDetailView:(id)view;
- (void)setDisableSelection:(BOOL)selection;
- (void)setEffectiveVisibleRangeActive:(id)active animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setHardLeftMarginWidth:(double)width;
- (void)setIndependentAxes:(id)axes stackOffset:(int64_t)offset;
- (void)setNeedsReloadSeries;
- (void)setOutlineColor:(id)color;
- (void)setRenderView:(id)view;
- (void)setVirtualLeftMarginStyle:(int64_t)style;
- (void)setVirtualRightMarginStyle:(int64_t)style;
- (void)setXAxis:(id)axis;
- (void)setZoomScale:(double)scale animated:(BOOL)animated;
- (void)tileRenderDidFinish;
- (void)touchSelectionAtModelX:(id)x;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation HKGraphView

- (HKGraphView)initWithFrame:(CGRect)frame
{
  v46.receiver = self;
  v46.super_class = HKGraphView;
  v3 = [(HKGraphView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    seriesGroupRows = v3->_seriesGroupRows;
    v3->_seriesGroupRows = v4;

    hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
    [(HKGraphView *)v3 setBackgroundColor:hk_chartBackgroundColor];

    v7 = [HKGraphRenderView alloc];
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [(HKGraphRenderView *)v7 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
    renderView = v3->_renderView;
    v3->_renderView = v12;

    [(HKGraphRenderer *)v3->_renderView setUserInteractionEnabled:0];
    [(HKGraphRenderer *)v3->_renderView setRenderDelegate:v3];
    [(HKGraphView *)v3 addSubview:v3->_renderView];
    v14 = [[HKGraphRenderView alloc] initWithFrame:v8, v9, v10, v11];
    yAxisLabelContent = v3->_yAxisLabelContent;
    v3->_yAxisLabelContent = v14;

    hk_chartBackgroundColor2 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
    [(HKGraphRenderer *)v3->_yAxisLabelContent setBackgroundColor:hk_chartBackgroundColor2];

    [(HKGraphRenderer *)v3->_yAxisLabelContent setUserInteractionEnabled:1];
    [(HKGraphRenderer *)v3->_yAxisLabelContent setRenderDelegate:v3];
    [(HKGraphView *)v3 addSubview:v3->_yAxisLabelContent];
    [(HKGraphView *)v3 _addTapGestureRecognizerForTapOnView:v3->_yAxisLabelContent];
    v3->_yAxisLabelMinimumWidth = 0.0;
    [(HKGraphView *)v3 _loadScrollView];
    v3->_disableSelection = 0;
    v17 = objc_alloc_init(HKGraphViewSelectionStyle);
    selectionStyle = v3->_selectionStyle;
    v3->_selectionStyle = v17;

    [(HKGraphViewSelectionStyle *)v3->_selectionStyle setUnselectedSeriesAlpha:0.3];
    v19 = v3->_selectionStyle;
    v20 = HKHealthKeyColor();
    v21 = [HKStrokeStyle strokeStyleWithColor:v20 lineWidth:2.0];
    [(HKGraphViewSelectionStyle *)v19 setSelectedPointLineStrokeStyle:v21];

    v3->_moveSelectedSeriesToFront = 1;
    v3->_animationAutoscaleInProgress = 0;
    v22 = objc_alloc_init(HKPropertyAnimationApplier);
    animationApplier = v3->_animationApplier;
    v3->_animationApplier = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentAnimationProperties = v3->_currentAnimationProperties;
    v3->_currentAnimationProperties = v24;

    v3->_shouldInformDelegateOfUpdates = 1;
    _defaultXAxisValueRange = [(HKGraphView *)v3 _defaultXAxisValueRange];
    effectiveAxisRange = v3->_effectiveAxisRange;
    v3->_effectiveAxisRange = _defaultXAxisValueRange;

    objc_storeStrong(&v3->_actualAxisRange, v3->_effectiveAxisRange);
    objc_storeStrong(&v3->_effectiveVisibleRangeCadence, v3->_actualAxisRange);
    objc_storeStrong(&v3->_effectiveVisibleRangeActive, v3->_effectiveVisibleRangeCadence);
    objc_storeStrong(&v3->_actualVisibleRange, v3->_effectiveVisibleRangeCadence);
    v3->_scrollingOptions = 0;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v3->_currentCalendar;
    v3->_currentCalendar = currentCalendar;

    v3->_shouldListenToScrollViewDelegate = 0;
    v3->_enableStickySelection = 1;
    v3->_contentWidthFromTimeScope = 1;
    v3->_enableZoomInGesture = 0;
    v30 = [[HKBorderLineView alloc] initWithFrame:v8, v9, v10, v11];
    leftMarginView = v3->_leftMarginView;
    v3->_leftMarginView = v30;

    [(HKBorderLineView *)v3->_leftMarginView setEdges:8];
    [(HKBorderLineView *)v3->_leftMarginView setBorderWidth:HKUIOnePixel()];
    [(HKBorderLineView *)v3->_leftMarginView setBorderLineColor:v3->_outlineColor];
    backgroundColor = [(HKGraphView *)v3 backgroundColor];
    [(HKBorderLineView *)v3->_leftMarginView setBackgroundColor:backgroundColor];

    [(HKGraphView *)v3 addSubview:v3->_leftMarginView];
    [(HKGraphView *)v3 setHardLeftMarginWidth:0.0];
    v3->_subviewsHaveBeenLaidOut = 0;
    v3->_contentOffsetIsSet = 0;
    v3->_tilingDisabled = 0;
    v3->_tilesTransientDisabled = 0;
    v3->_tileInitialRedrawCount = 0;
    v3->_tilesWaitingForInitialRender = 1;
    v33 = objc_alloc(MEMORY[0x1E695E000]);
    v34 = [v33 initWithSuiteName:*MEMORY[0x1E696C858]];
    v35 = [v34 BOOLForKey:@"DisableTileThreading"];
    LODWORD(v20) = [MEMORY[0x1E696C608] isAppleInternalInstall];

    if (v20 && v35)
    {
      graphViewTileThread = v3->_graphViewTileThread;
      v3->_graphViewTileThread = 0;
    }

    else
    {
      v37 = [[HKGraphViewTileThread alloc] initWithGraphView:v3];
      v38 = v3->_graphViewTileThread;
      v3->_graphViewTileThread = v37;

      [(HKGraphViewTileThread *)v3->_graphViewTileThread setName:@"HKGraphViewTileThread"];
      [(HKGraphViewTileThread *)v3->_graphViewTileThread start];
    }

    v3->_prefersOpaqueLegends = 0;
    v3->_drawsGridlinesPerSeriesGroup = 0;
    v3->_lastSingleSelectionXValue = 2.22507386e-308;
    v39 = [[_HKGraphViewOverlayView alloc] initWithFrame:v8, v9, v10, v11];
    overlayView = v3->_overlayView;
    v3->_overlayView = v39;

    [(_HKGraphViewOverlayView *)v3->_overlayView setHidden:1];
    [(HKGraphView *)v3 addSubview:v3->_overlayView];
    [(HKGraphView *)v3 setPreviousOverlayType:0];
    v41 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:10];
    [(HKGraphView *)v3 setOverlayInteractiveViews:v41];

    v3->_measuringStartupTime = [(HKGraphView *)v3 _measureStartupFlagFromEnvironment];
    v3->_startTime = 0.0;
    v3->_lastEndTime = 0.0;
    startupTimer = v3->_startupTimer;
    v3->_startupTimer = 0;

    v3->_firstNonemptyDrawTime = 0.0;
    v3->_measurementStartupAutoscale = 0;
    externalSelectionModelCoordinate = v3->_externalSelectionModelCoordinate;
    v3->_externalSelectionModelCoordinate = 0;

    v3->_externalSelectionScheduled = 0;
    v3->_externalSelectionLastLocation = -1.79769313e308;
    v3->_xAxisDateZoom = 8;
    v44 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"BodyView"];
    [(HKGraphView *)v3 setAccessibilityIdentifier:v44];
  }

  return v3;
}

- (void)dealloc
{
  if (self->_graphViewTileThread)
  {
    [(HKGraphView *)self _shutdownTilingThread];
  }

  v3.receiver = self;
  v3.super_class = HKGraphView;
  [(HKGraphView *)&v3 dealloc];
}

- (BOOL)_measureStartupFlagFromEnvironment
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  environment = [processInfo environment];

  v4 = [environment objectForKeyedSubscript:@"MEASURE_CHART_STARTUP_TIME"];
  v5 = v4;
  v6 = v4 && [v4 length];

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = HKGraphView;
  changeCopy = change;
  [(HKGraphView *)&v10 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(HKGraphView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    backgroundColor = [(HKGraphView *)self backgroundColor];
    v9 = [(HKGraphView *)self _captureColor:backgroundColor];
    [(HKGraphView *)self setCapturedTileBackgroundColor:v9];

    [(HKGraphView *)self resetAndRedraw];
  }
}

- (void)resetAndRedraw
{
  v39 = *MEMORY[0x1E69E9840];
  [(HKAxis *)self->_xAxis clearCache];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
  obj = self->_seriesGroupRows;
  v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v21)
  {
    v20 = *v33;
    do
    {
      v3 = 0;
      do
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v3;
        v4 = *(*(&v32 + 1) + 8 * v3);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        zoomToSeriesMapping = [v4 zoomToSeriesMapping];
        v5 = [zoomToSeriesMapping countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v29;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v29 != v7)
              {
                objc_enumerationMutation(zoomToSeriesMapping);
              }

              v9 = *(*(&v28 + 1) + 8 * i);
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              zoomToSeriesMapping2 = [v4 zoomToSeriesMapping];
              v11 = [zoomToSeriesMapping2 objectForKey:v9];

              v12 = [v11 countByEnumeratingWithState:&v24 objects:v36 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v25;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v25 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v24 + 1) + 8 * j);
                    yAxis = [v16 yAxis];
                    [yAxis clearCache];

                    [v16 clearCaches];
                  }

                  v13 = [v11 countByEnumeratingWithState:&v24 objects:v36 count:16];
                }

                while (v13);
              }
            }

            v6 = [zoomToSeriesMapping countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v6);
        }

        v3 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v21);
  }

  [(HKGraphView *)selfCopy _reconfigureScrollingTiles];
  [(HKGraphView *)selfCopy setNeedsReloadSeries];
  [(HKGraphRenderer *)selfCopy->_yAxisLabelContent setNeedsRender];
}

- (BOOL)_axisRangeIsDateRange
{
  effectiveAxisRange = self->_effectiveAxisRange;
  if (effectiveAxisRange)
  {
    minValue = [(HKValueRange *)effectiveAxisRange minValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_walkAllSeries:(id)series
{
  v28 = *MEMORY[0x1E69E9840];
  seriesCopy = series;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_seriesGroupRows;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        currentSeries = [v10 currentSeries];
        v12 = [currentSeries countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(currentSeries);
              }

              v16 = *(*(&v18 + 1) + 8 * j);
              v17 = 0;
              seriesCopy[2](seriesCopy, v16, &v17);
              if (v17)
              {

                goto LABEL_18;
              }
            }

            v13 = [currentSeries countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

LABEL_18:
}

- (BOOL)_needsYAxisUpdateDuringRender
{
  isDragging = [(UIScrollView *)self->_scrollView isDragging];
  animationAutoscaleInProgress = [(HKGraphView *)self animationAutoscaleInProgress];
  return animationAutoscaleInProgress | (((isDragging | [(UIScrollView *)self->_scrollView isScrollAnimating]) & 1) == 0);
}

- (BOOL)_configureYAxisViewIfNeeded
{
  [(HKGraphRenderer *)self->_yAxisLabelContent bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(HKGraphView *)self zoomScale];
  v19 = 0;
  v20 = &v19;
  v21 = 0x4010000000;
  v22 = &unk_1C3DAF4DA;
  v11 = *(MEMORY[0x1E695F050] + 16);
  v23 = *MEMORY[0x1E695F050];
  v24 = v11;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __42__HKGraphView__configureYAxisViewIfNeeded__block_invoke;
  v18[3] = &unk_1E81B6390;
  v18[5] = v4;
  v18[6] = v6;
  v18[7] = v8;
  v18[8] = v10;
  v18[9] = v12;
  v18[4] = &v19;
  [(HKGraphView *)self _walkAllSeries:v18];
  if (CGRectIsNull(v20[1]) || CGRectGetWidth(v20[1]) <= self->_yAxisLabelMinimumWidth || [(HKGraphView *)self _drawingDuringScrolling])
  {
    v13 = 0;
  }

  else
  {
    yAxisLabelMinimumWidth = self->_yAxisLabelMinimumWidth;
    Width = CGRectGetWidth(v20[1]);
    [(HKBorderLineView *)self->_leftMarginView frame];
    v17 = CGRectGetWidth(v25);
    if (Width >= v17)
    {
      v17 = Width;
    }

    self->_yAxisLabelMinimumWidth = v17;
    [(HKGraphView *)self setNeedsLayout];
    [(HKGraphView *)self _setNeedsUpdateGraphViewConfiguration];
    [(HKGraphView *)self _notifyDelegateOfYAxisWidth:yAxisLabelMinimumWidth toWidth:self->_yAxisLabelMinimumWidth];
    v13 = 1;
  }

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __42__HKGraphView__configureYAxisViewIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 yAxis];
  if (v3)
  {
    v4 = [v13 visibleValueRange];
    [v3 labelRectWithModelRange:v4 chartRect:*(a1 + 40) zoomScale:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
  }

  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v15);
}

- (CGRect)leftMarginViewRect
{
  [(HKGraphView *)self bounds];

  [(HKGraphView *)self _adjustLeftMarginRectForBaselines:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_adjustLeftMarginRectForBaselines:(CGRect)baselines
{
  height = baselines.size.height;
  width = baselines.size.width;
  y = baselines.origin.y;
  x = baselines.origin.x;
  [(HKGraphView *)self _dataAreaRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(HKGraphView *)self _bottomBaselineYValueForChartRect:?];
  v16 = v15;
  [(HKGraphView *)self _topBaselineYValueForChartRect:v8, v10, v12, v14];
  if (v17 <= 0.00000011920929)
  {
    v20 = x + 0.0;
    v19 = v10 + 4.0;
    v18 = 4.0 + 0.0;
  }

  else
  {
    v18 = v17 - y;
    v19 = y + v17 - y;
    v20 = x;
  }

  v21 = height - v18;
  if (v16 <= v17 || v16 <= 0.00000011920929)
  {
    v23 = v21;
  }

  else
  {
    v23 = v16 - v19;
  }

  if (y >= v19)
  {
    v24 = y;
  }

  else
  {
    v24 = v19;
  }

  v25 = v20;
  v26 = v24;
  v27 = width;
  MaxY = CGRectGetMaxY(*(&v23 - 3));
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v29 = CGRectGetMaxY(v35);
  if (MaxY < v29)
  {
    v29 = MaxY;
  }

  v30 = v29 - v24;
  v31 = v20;
  v32 = v24;
  v33 = width;
  result.size.height = v30;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (double)_detailViewWidth
{
  if (!self->_detailView)
  {
    return 0.0;
  }

  [(HKGraphView *)self frame];
  return v3 + -125.0 - self->_hardLeftMarginWidth + -16.0;
}

- (CGRect)_scrollingAreaRect
{
  [(HKGraphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  yAxisLabelMinimumWidth = self->_yAxisLabelMinimumWidth;
  hardLeftMarginWidth = self->_hardLeftMarginWidth;
  [(HKGraphView *)self _detailViewWidth];
  v14 = hardLeftMarginWidth + v13;
  v15 = v4 + hardLeftMarginWidth + v13;
  v16 = v6 + 0.0;
  v17 = v8 - (yAxisLabelMinimumWidth + v14);
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_verticalAxisRect
{
  [(HKGraphView *)self bounds];
  v4 = v3 - self->_yAxisLabelMinimumWidth;
  v6 = v5 + v4;
  v8 = v7 + 0.0;
  v9 = v3 - (v4 + 0.0);
  v11 = v10 - (self->_axisInset.bottom + 0.0);
  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (UIEdgeInsets)_dataAreaInsets
{
  top = self->_axisInset.top;
  left = self->_axisInset.left;
  right = self->_axisInset.right;
  v5 = self->_axisInset.bottom + self->_xAxisSpace;
  if (top < 0.00000011920929)
  {
    top = 2.0;
  }

  if (v5 < 0.00000011920929)
  {
    v5 = 2.0;
  }

  result.right = right;
  result.bottom = v5;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)_dataAreaRect
{
  [(HKGraphView *)self _scrollingAreaRect];
  v4 = v3;
  v6 = v5;
  [(HKGraphView *)self _dataAreaInsets];
  v8 = v7 + 0.0;
  v11 = v4 - (v9 + v10);
  v13 = v6 - (v7 + v12);
  v14 = v9 + 0.0;
  v15 = v8;
  v16 = v11;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_overlayAreaRect
{
  [(HKGraphView *)self _scrollingAreaRect];
  v4 = v3 + 0.0;
  v6 = v5 + -2.0;
  v8 = v7 + 2.0;
  result.size.height = v8;
  result.size.width = v2;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (void)_updateScene
{
  renderView = self->_renderView;
  [(HKGraphView *)self _scrollingAreaRect];
  [(HKGraphRenderer *)renderView setFrame:?];
  v4 = self->_renderView;
  [(HKGraphView *)self _scrollingAreaRect];
  [(HKGraphRenderer *)v4 convertRect:self fromView:?];
  [(HKGraphRenderer *)v4 setAxisRect:?];
  [(HKGraphRenderer *)self->_renderView setNeedsRender];
  [(HKGraphRenderer *)self->_yAxisLabelContent setNeedsRender];
  effectiveVisibleRangeActive = self->_effectiveVisibleRangeActive;

  [(HKGraphView *)self _notifyDelegateOfVisibleValueRange:effectiveVisibleRangeActive changeContext:2];
}

- (HKValueRange)chartableValueRange
{
  chartableValueRange = self->_chartableValueRange;
  if (chartableValueRange)
  {
    effectiveAxisRange = chartableValueRange;
  }

  else
  {
    effectiveAxisRange = [(HKGraphView *)self effectiveAxisRange];
  }

  return effectiveAxisRange;
}

- (NSArray)allSeries
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_seriesGroupRows;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        currentSeries = [*(*(&v11 + 1) + 8 * i) currentSeries];
        [v3 addObjectsFromArray:currentSeries];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_loadScrollView
{
  v3 = objc_alloc(MEMORY[0x1E69DCEF8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(UIScrollView *)v4 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v4 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v4 setDecelerationRate:*MEMORY[0x1E69DE3A0]];
  [(UIScrollView *)v4 setDelegate:self];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UIScrollView *)v4 setBackgroundColor:clearColor];

  [(UIScrollView *)v4 setAutoresizingMask:18];
  [(UIScrollView *)v4 setBounces:1];
  [(UIScrollView *)v4 setBouncesZoom:0];
  [(HKGraphView *)self addSubview:v4];
  scrollView = self->_scrollView;
  self->_scrollView = v4;
  v7 = v4;

  if (self->_disableSelection)
  {
    [(HKGraphView *)self _removeSelectionRecognizerFromView:v7];
  }

  else
  {
    [(HKGraphView *)self _addSelectionRecognizerToView:v7];
  }

  [(HKGraphView *)self _addTapGestureRecognizerForTogglingStickyToView:v7];
}

- (void)layoutSubviews
{
  [(HKGraphView *)self leftMarginViewRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(HKGraphView *)self _verticalAxisRect];
  v33 = v12;
  v34 = v11;
  v31 = v14;
  v32 = v13;
  [(HKGraphView *)self _scrollingAreaRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(HKGraphView *)self _dataAreaRect];
  v29 = v24;
  v30 = v23;
  v27 = v26;
  v28 = v25;
  [(HKBorderLineView *)self->_leftMarginView setFrame:v4, v6, v8, v10];
  [(HKGraphRenderer *)self->_renderView setFrame:v16, v18, v20, v22];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __29__HKGraphView_layoutSubviews__block_invoke;
  v35[3] = &unk_1E81B63B8;
  v35[4] = self;
  *&v35[5] = v16;
  *&v35[6] = v18;
  *&v35[7] = v20;
  *&v35[8] = v22;
  [(HKGraphView *)self _updateScrollViewPropertiesIgnoringScrollViewCallbacks:v35];
  [(HKGraphRenderer *)self->_yAxisLabelContent setFrame:v34, v33, v32, v31];
  [(HKGraphView *)self _layoutLegendsForChartRect:v30, v29, v28, v27];
  [(HKGraphView *)self _layoutOverlayView];
  if (!self->_subviewsHaveBeenLaidOut)
  {
    [(HKGraphView *)self _hideTilesWithForce];
    self->_subviewsHaveBeenLaidOut = 1;
  }

  [(HKGraphView *)self autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
}

- (void)willMoveToWindow:(id)window
{
  [(HKGraphView *)self setStartTime:CACurrentMediaTime()];
  measuringStartupTime = [(HKGraphView *)self measuringStartupTime];
  if (window)
  {
    if (measuringStartupTime)
    {
      startupTimer = [(HKGraphView *)self startupTimer];

      if (!startupTimer)
      {
        [(HKGraphView *)self startTime];
        [(HKGraphView *)self setLastEndTime:?];
        v7 = HKLogWellnessDashboard();
        v8 = _HKLogSignpostIDGenerate();

        _HKInitializeLogging();
        v9 = HKLogWellnessDashboard();
        v10 = os_signpost_enabled(v9);

        if (v10)
        {
          v11 = HKLogWellnessDashboard();
          v12 = v11;
          if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
          {
            *v14 = 0;
            _os_signpost_emit_with_name_impl(&dword_1C3942000, v12, OS_SIGNPOST_EVENT, v8, "chart-ppt-start", "", v14, 2u);
          }
        }

        v13 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__startupTimerCallback_ selector:0 userInfo:1 repeats:0.1];
        [(HKGraphView *)self setStartupTimer:v13];
      }
    }
  }
}

- (void)_startupTimerCallback:(id)callback
{
  v4 = CACurrentMediaTime();
  [(HKGraphView *)self lastEndTime];
  if (v4 - v5 >= 3.0)
  {
    [(HKGraphView *)self firstNonemptyDrawTime];
    if (v6 <= 0.0)
    {
      [(HKGraphView *)self lastEndTime];
    }

    else
    {
      [(HKGraphView *)self firstNonemptyDrawTime];
    }

    v8 = v7;
    [(HKGraphView *)self startTime];
    v10 = v9;
    delegate = [(HKGraphView *)self delegate];
    if (delegate)
    {
      v12 = delegate;
      delegate2 = [(HKGraphView *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate3 = [(HKGraphView *)self delegate];
        [delegate3 graphView:self startupTime:vcvtmd_s64_f64((v8 - v10) * 1000000.0)];
      }
    }

    [(HKGraphView *)self setMeasuringStartupTime:0];
    [(HKGraphView *)self setStartTime:0.0];
    [(HKGraphView *)self setLastEndTime:0.0];
    startupTimer = [(HKGraphView *)self startupTimer];
    [startupTimer invalidate];

    [(HKGraphView *)self setStartupTimer:0];
  }
}

- (void)_recordLastRenderTime
{
  if (![(HKGraphView *)self measurementStartupAutoscale])
  {
    [(HKGraphView *)self setMeasurementStartupAutoscale:[(HKGraphView *)self animationAutoscaleInProgress]];
    [(HKGraphView *)self setLastEndTime:CACurrentMediaTime()];
    v3 = HKLogWellnessDashboard();
    v4 = _HKLogSignpostIDGenerate();

    _HKInitializeLogging();
    v5 = HKLogWellnessDashboard();
    v6 = os_signpost_enabled(v5);

    if (v6)
    {
      v7 = HKLogWellnessDashboard();
      v8 = v7;
      if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        *v9 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C3942000, v8, OS_SIGNPOST_EVENT, v4, "chart-ppt-render", "", v9, 2u);
      }
    }
  }
}

- (BOOL)_graphViewIsConfigured
{
  xAxis = [(HKGraphView *)self xAxis];
  if (xAxis)
  {
    xAxis2 = [(HKGraphView *)self xAxis];
    v5 = ([xAxis2 requiresScaling] & 1) == 0 && self->_subviewsHaveBeenLaidOut;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_createLegendsIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_seriesGroupRows;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        legendView = [v8 legendView];
        if (legendView)
        {
        }

        else if ([(HKGraphView *)self _seriesGroupHasLegendEntries:v8])
        {
          [(HKGraphView *)self _createLegendForSeriesGroup:v8];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (BOOL)_seriesGroupHasLegendEntries:(id)entries
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentSeries = [entries currentSeries];
  v4 = [currentSeries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(currentSeries);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        titleLegendEntries = [v8 titleLegendEntries];
        if ([titleLegendEntries count])
        {

LABEL_13:
          v11 = 1;
          goto LABEL_14;
        }

        detailLegendEntries = [v8 detailLegendEntries];

        if (detailLegendEntries)
        {
          goto LABEL_13;
        }
      }

      v5 = [currentSeries countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (void)_updateLegendForSeriesGroup:(id)group
{
  v38 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  legendView = [groupCopy legendView];

  if (legendView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = groupCopy;
    currentSeries = [groupCopy currentSeries];
    v9 = [currentSeries countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(currentSeries);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          xAxisDateZoom = [(HKGraphView *)self xAxisDateZoom];
          effectiveVisibleRangeActive = [(HKGraphView *)self effectiveVisibleRangeActive];
          [v13 updateLegendsForTimeScope:xAxisDateZoom range:effectiveVisibleRangeActive drawingDuringScrolling:{-[HKGraphView _drawingDuringScrolling](self, "_drawingDuringScrolling")}];

          titleLegendEntries = [v13 titleLegendEntries];
          v17 = [titleLegendEntries count];

          if (v17)
          {
            titleLegendEntries2 = [v13 titleLegendEntries];
            [v6 addObjectsFromArray:titleLegendEntries2];
          }

          detailLegendEntries = [v13 detailLegendEntries];
          v20 = [detailLegendEntries count];

          if (v20)
          {
            detailLegendEntries2 = [v13 detailLegendEntries];
            [v7 addObjectsFromArray:detailLegendEntries2];
          }
        }

        v10 = [currentSeries countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    groupCopy = v32;
    if ([v6 count] || objc_msgSend(v7, "count"))
    {
      legendView2 = [v32 legendView];
      [legendView2 setLeftEntries:v6 rightEntries:v7];

      [(HKGraphView *)self _currentLegendInsets];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      legendView3 = [v32 legendView];
      [legendView3 setEdgeInsets:{v24, v26, v28, v30}];
    }
  }
}

- (void)_updateLegendsForAllSeriesGroups
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_seriesGroupRows;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(HKGraphView *)self _updateLegendForSeriesGroup:*(*(&v8 + 1) + 8 * v7++), v8];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (UIEdgeInsets)_currentLegendInsets
{
  [(HKGraphView *)self _dataAreaRect];
  [(HKGraphView *)self _inactiveRightAreaForRect:?];
  v4 = v3;
  detailView = [(HKGraphView *)self detailView];
  virtualLeftMarginWidth = 16.0;
  if (!detailView)
  {
    virtualLeftMarginWidth = self->_virtualLeftMarginWidth;
  }

  v7 = v4 + self->_virtualRightMarginWidth;
  prefersOpaqueLegends = self->_prefersOpaqueLegends;

  [HKLegendView modifiedInsetsForOpaqueLegend:prefersOpaqueLegends originalInsets:0.0, virtualLeftMarginWidth, 0.0, v7];
  result.right = v12;
  result.bottom = v11;
  result.left = v10;
  result.top = v9;
  return result;
}

- (void)_createLegendForSeriesGroup:(id)group
{
  groupCopy = group;
  [(HKGraphView *)self _currentLegendInsets];
  v11 = [[HKLegendView alloc] initWithEdgeInsets:self->_prefersOpaqueLegends opaqueBackground:v5, v6, v7, v8];
  delegate = [(HKGraphView *)self delegate];
  v10 = [delegate seriesSelectionLineColorForGraphView:self];
  [(HKLegendView *)v11 setLollipopColor:v10];

  [groupCopy setLegendView:v11];
  [groupCopy setLastLegendSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  [(HKGraphView *)self addSubview:v11];
  [(HKGraphView *)self insertSubview:self->_renderView belowSubview:v11];
  [(HKGraphView *)self bringSubviewToFront:self->_scrollView];
  [(HKGraphView *)self _updateLegendForSeriesGroup:groupCopy];
}

- (void)_layoutLegendsForChartRect:(CGRect)rect
{
  v5 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v6 = *(MEMORY[0x1E695F050] + 16);
  v7 = *(MEMORY[0x1E695F050] + 24);
  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v8 = 0;
    v38 = *(MEMORY[0x1E69DE090] + 8);
    v39 = *MEMORY[0x1E69DE090];
    while (1)
    {
      [(HKGraphView *)self _locationSpanForSeriesGroupRow:v8 chartRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
      v10 = v9;
      v11 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v8];
      v46.origin.x = v5;
      v46.origin.y = v4;
      v46.size.width = v6;
      v46.size.height = v7;
      IsNull = CGRectIsNull(v46);
      if (v10 < v4 || IsNull)
      {
        v4 = v10;
        v5 = 0.0;
      }

      legendView = [v11 legendView];

      if (!legendView)
      {
        goto LABEL_20;
      }

      v42 = v5;
      v43 = v6;
      legendView2 = [v11 legendView];
      [legendView2 systemLayoutSizeFittingSize:{v39, v38}];
      v17 = v16;

      [(HKGraphView *)self bounds];
      v19 = v18;
      v20 = [(HKGraphView *)self _visibleSeriesForSeriesGroup:v11];
      yAxis = [v20 yAxis];
      if ([(HKGraphView *)self _anySeriesWantsInternalLegends:v8])
      {
        if (yAxis)
        {
          break;
        }
      }

      v22 = v7;
      v24 = 0.0;
      v25 = 0.0;
      if (yAxis)
      {
        goto LABEL_13;
      }

LABEL_14:
      v41 = v25;
      legendView3 = [v11 legendView];
      +[HKLegendView horizontalOffsetWithOpaque:](HKLegendView, "horizontalOffsetWithOpaque:", [legendView3 opaqueBackground]);
      v28 = v27;

      hardLeftMarginWidth = self->_hardLeftMarginWidth;
      v30 = v28 + hardLeftMarginWidth;
      v31 = v10 + v24;
      v32 = v19 - hardLeftMarginWidth - self->_yAxisLabelMinimumWidth - v28;
      v33 = HKUIEqualCGFloats(v4, v10);
      if (v33)
      {
        v7 = v17;
      }

      else
      {
        v7 = v22;
      }

      v5 = v42;
      v34 = v43;
      if (v33)
      {
        v34 = v32;
        v4 = v31;
        v5 = v30;
      }

      legendView4 = [v11 legendView];
      v36 = v31;
      v6 = v34;
      [legendView4 setFrame:{v30, v36, v32, v17}];

      [v11 setLastLegendSize:{v32, v17 + v41}];
      legendView5 = [v11 legendView];
      [(HKGraphView *)self bringSubviewToFront:legendView5];

LABEL_20:
      if (++v8 >= [(NSMutableArray *)self->_seriesGroupRows count])
      {
        goto LABEL_21;
      }
    }

    v22 = v7;
    [yAxis offsetForLegendView];
    v24 = v23;
LABEL_13:
    [yAxis legendViewBottomPadding];
    goto LABEL_14;
  }

LABEL_21:
  v47.origin.x = v5;
  v47.origin.y = v4;
  v47.size.width = v6;
  v47.size.height = v7;
  if (!CGRectIsNull(v47))
  {
    delegate = [(HKGraphView *)self delegate];
    [delegate graphView:self didUpdateLegendViewsWithTopLegendFrame:{v5, v4, v6, v7}];
  }
}

- (void)_layoutDetailView
{
  topAnchor = [(UIView *)self->_detailView topAnchor];
  topAnchor2 = [(HKGraphView *)self topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:40.0];
  [v5 setActive:1];

  leftAnchor = [(UIView *)self->_detailView leftAnchor];
  leftAnchor2 = [(HKGraphView *)self leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:self->_hardLeftMarginWidth + 16.0];
  [v8 setActive:1];

  bottomAnchor = [(UIView *)self->_detailView bottomAnchor];
  bottomAnchor2 = [(HKGraphView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-30.0];
  [v11 setActive:1];

  leftAnchor3 = [(HKGraphRenderer *)self->_renderView leftAnchor];
  rightAnchor = [(UIView *)self->_detailView rightAnchor];
  v13 = [leftAnchor3 constraintEqualToAnchor:rightAnchor constant:16.0];
  [v13 setActive:1];
}

- (id)_graphSeriesForZoom:(int64_t)zoom seriesGroupRow:(int64_t)row
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:row];
  zoomToSeriesMapping = [v7 zoomToSeriesMapping];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:zoom];
  v10 = [zoomToSeriesMapping objectForKeyedSubscript:v9];

  if (!v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained graphView:self graphSeriesForZoom:zoom stackOffset:row];
    v13 = [v12 mutableCopy];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v13;
    v14 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          [v18 setDelegate:{self, v23}];
          yAxis = [v18 yAxis];
          [yAxis clearCache];
        }

        v15 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    if (v10)
    {
      zoomToSeriesMapping2 = [v7 zoomToSeriesMapping];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:zoom];
      [zoomToSeriesMapping2 setObject:v10 forKeyedSubscript:v21];
    }
  }

  return v10;
}

- (void)_shareYAxesForSeriesGroup:(id)group
{
  v34 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  currentSeries = [groupCopy currentSeries];
  v5 = [currentSeries count];

  if (v5)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    currentSeries2 = [groupCopy currentSeries];
    v7 = [currentSeries2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(currentSeries2);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        yAxis = [v11 yAxis];

        if (yAxis)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [currentSeries2 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      yAxis2 = [v11 yAxis];

      if (!yAxis2)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_10:

LABEL_11:
      [HKGraphView _shareYAxesForSeriesGroup:];
      yAxis2 = 0;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [groupCopy currentSeries];
    v14 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          yAxis3 = [v18 yAxis];
          independentAxes = [groupCopy independentAxes];
          if (independentAxes)
          {
            independentAxes2 = [groupCopy independentAxes];
            v22 = [independentAxes2 containsObject:yAxis3];
          }

          else
          {
            v22 = 0;
          }

          if ((v22 & 1) == 0 && yAxis3 != yAxis2)
          {
            [v18 setYAxis:yAxis2];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }
  }
}

- (void)_loadSeriesForZoom:(int64_t)zoom
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained stackCountForGraphView:self];

  if (v6 != [(NSMutableArray *)self->_seriesGroupRows count])
  {
    [(HKGraphView *)self removeSeries];
    if (v6 >= 1)
    {
      do
      {
        v7 = objc_alloc_init(_HKGraphViewSeriesGroup);
        [(NSMutableArray *)self->_seriesGroupRows addObject:v7];

        --v6;
      }

      while (v6);
    }
  }

  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v8 = 0;
    do
    {
      v9 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v8];
      v10 = [(HKGraphView *)self _graphSeriesForZoom:zoom seriesGroupRow:v8];
      [v9 setCurrentSeries:v10];

      [(HKGraphView *)self _shareYAxesForSeriesGroup:v9];
      ++v8;
    }

    while (v8 < [(NSMutableArray *)self->_seriesGroupRows count]);
  }
}

- (void)setNeedsReloadSeries
{
  [(HKGraphView *)self removeSeries];
  [(HKGraphView *)self _reloadViewScope];

  [(HKGraphView *)self _markTilesDirtyWithCompletion:0];
}

- (void)removeSeries
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_seriesGroupRows;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        axisAnnotationHandler = [v8 axisAnnotationHandler];
        [axisAnnotationHandler _forceClearAxisAnnotations];

        legendView = [v8 legendView];
        [legendView removeFromSuperview];

        [v8 setLegendView:0];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(HKGraphView *)self _finishSelection];
  [(NSMutableArray *)self->_seriesGroupRows removeAllObjects];
}

- (void)invalidateDataSourceCaches
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = self->_seriesGroupRows;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        currentSeries = [v7 currentSeries];
        v9 = [currentSeries countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(currentSeries);
              }

              dataSource = [*(*(&v14 + 1) + 8 * v12) dataSource];
              [dataSource invalidateCache];

              ++v12;
            }

            while (v10 != v12);
            v10 = [currentSeries countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)_clearRenderViewIfNecessary
{
  renderView = self->_renderView;
  if (renderView)
  {
    [(HKGraphRenderer *)renderView setRenderDelegate:0];
    [(HKGraphRenderer *)self->_renderView removeFromSuperview];
    v4 = self->_renderView;
    self->_renderView = 0;
  }
}

- (void)setRenderView:(id)view
{
  viewCopy = view;
  [(HKGraphView *)self _clearRenderViewIfNecessary];
  [(HKGraphView *)self _scrollingAreaRect];
  [(HKGraphRenderer *)self->_renderView setFrame:?];
  renderView = self->_renderView;
  self->_renderView = viewCopy;
  v7 = viewCopy;

  [(HKGraphView *)self insertSubview:self->_renderView belowSubview:self->_scrollView];
  [(HKGraphRenderer *)self->_renderView setRenderDelegate:self];
  v6 = self->_renderView;
  [(HKGraphView *)self _scrollingAreaRect];
  [(HKGraphRenderer *)v6 convertRect:self fromView:?];
  [(HKGraphRenderer *)self->_renderView setAxisRect:?];
  [(HKGraphRenderer *)self->_renderView setNeedsRender];
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = HKGraphView;
  colorCopy = color;
  [(HKGraphView *)&v5 setBackgroundColor:colorCopy];
  [(HKGraphRenderer *)self->_renderView setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)setXAxis:(id)axis
{
  objc_storeStrong(&self->_xAxis, axis);
  axisCopy = axis;
  xAxis = self->_xAxis;
  chartableValueRange = [(HKGraphView *)self chartableValueRange];
  [(HKAxis *)xAxis setAxisChartableValueRange:chartableValueRange];

  [(HKGraphView *)self _updateAxisZoomScaleValueRange];
  [(HKGraphRenderer *)self->_renderView setNeedsRender];
}

- (void)setChartableValueRange:(id)range
{
  rangeCopy = range;
  if (([rangeCopy isEqual:self->_chartableValueRange] & 1) == 0)
  {
    objc_storeStrong(&self->_chartableValueRange, range);
    [(HKAxis *)self->_xAxis setAxisChartableValueRange:rangeCopy];
    [(HKGraphRenderer *)self->_renderView setNeedsRender];
  }
}

- (void)setHardLeftMarginWidth:(double)width
{
  if (self->_hardLeftMarginWidth != width)
  {
    self->_hardLeftMarginWidth = width;
    [(HKBorderLineView *)self->_leftMarginView setHidden:width <= 0.0];
    [(HKGraphView *)self setNeedsLayout];

    [(HKGraphView *)self _setNeedsUpdateGraphViewConfiguration];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(HKGraphView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  self->_shouldListenToScrollViewDelegate = 0;
  v16.receiver = self;
  v16.super_class = HKGraphView;
  [(HKGraphView *)&v16 setFrame:x, y, width, height];
  self->_shouldListenToScrollViewDelegate = 1;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    if (![(HKGraphView *)self externalSelectionScheduled])
    {
      [(HKGraphView *)self _cancelAndFinishSelection];
    }

    [(HKGraphView *)self _notifyDelegateOfSizeChange];
    [(HKGraphView *)self _setNeedsUpdateGraphViewConfiguration];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(HKGraphView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  self->_shouldListenToScrollViewDelegate = 0;
  v16.receiver = self;
  v16.super_class = HKGraphView;
  [(HKGraphView *)&v16 setBounds:x, y, width, height];
  self->_shouldListenToScrollViewDelegate = 1;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18.origin.x = v9;
  v18.origin.y = v11;
  v18.size.width = v13;
  v18.size.height = v15;
  if (!CGRectEqualToRect(v17, v18))
  {
    if (![(HKGraphView *)self externalSelectionScheduled])
    {
      [(HKGraphView *)self _cancelAndFinishSelection];
    }

    [(HKGraphView *)self _notifyDelegateOfSizeChange];
    [(HKGraphView *)self _setNeedsUpdateGraphViewConfiguration];
  }
}

- (void)setAxisInset:(UIEdgeInsets)inset
{
  v3 = *&self->_axisInset.top;
  v4 = *&self->_axisInset.bottom;
  self->_axisInset = inset;
  left = inset.left;
  right = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&inset.top, v3), vceqq_f64(*&inset.bottom, v4)))) & 1) == 0)
  {
    [(HKGraphView *)self _setNeedsUpdateGraphViewConfiguration];
  }
}

- (void)setOutlineColor:(id)color
{
  objc_storeStrong(&self->_outlineColor, color);
  colorCopy = color;
  [(HKBorderLineView *)self->_leftMarginView setBorderLineColor:self->_outlineColor];

  [(HKGraphView *)self setNeedsDisplay];
}

- (void)_setVisibleRangesForEffectiveRangeCadence:(id)cadence
{
  cadenceCopy = cadence;
  [(HKGraphView *)self _dataAreaRect];
  xAxis = self->_xAxis;
  v6 = cadenceCopy;
  if (xAxis)
  {
    v6 = cadenceCopy;
    if (v4 > 0.0)
    {
      v6 = [(HKAxis *)xAxis adjustedRangeForFittedRange:cadenceCopy chartRange:0.0, v4];
    }
  }

  if (self->_actualAxisRange)
  {
    minValue = [(HKValueRange *)v6 minValue];
    maxValue = [(HKValueRange *)v6 maxValue];
    minValue2 = [(HKValueRange *)self->_effectiveAxisRange minValue];
    maxValue2 = [(HKValueRange *)self->_effectiveAxisRange maxValue];
    if (HKUIObjectIsSmaller(minValue, minValue2))
    {
      v11 = minValue2;

      minValue = v11;
    }

    if (HKUIObjectIsSmaller(maxValue2, maxValue))
    {
      v12 = maxValue2;

      maxValue = v12;
    }

    v13 = [HKValueRange valueRangeWithMinValue:minValue maxValue:maxValue];

    v6 = v13;
  }

  effectiveVisibleRangeCadence = self->_effectiveVisibleRangeCadence;
  self->_effectiveVisibleRangeCadence = v6;
  v15 = v6;

  v16 = self->_effectiveVisibleRangeCadence;
  [(HKGraphView *)self _dataAreaRect];
  v17 = [(HKGraphView *)self _actualVisibleRangeFromEffectiveVisibleRange:v16 dataAreaRect:?];
  actualVisibleRange = self->_actualVisibleRange;
  self->_actualVisibleRange = v17;
}

- (void)_updateRangesForEffectiveAxisRange:(id)range effectiveVisibleRangeCadence:(id)cadence effectiveVisibleRangeActive:(id)active
{
  rangeCopy = range;
  activeCopy = active;
  effectiveAxisRange = self->_effectiveAxisRange;
  self->_effectiveAxisRange = rangeCopy;
  v16 = rangeCopy;
  cadenceCopy = cadence;

  [(HKGraphView *)self _setVisibleRangesForEffectiveRangeCadence:cadenceCopy];
  effectiveVisibleRangeActive = self->_effectiveVisibleRangeActive;
  self->_effectiveVisibleRangeActive = activeCopy;
  v13 = activeCopy;

  _findActualAxisRangeFromVisibleRanges = [(HKGraphView *)self _findActualAxisRangeFromVisibleRanges];
  actualAxisRange = self->_actualAxisRange;
  self->_actualAxisRange = _findActualAxisRangeFromVisibleRanges;
}

- (void)_updateGraphViewConfiguration
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__HKGraphView__updateGraphViewConfiguration__block_invoke;
  v3[3] = &unk_1E81B55A8;
  v3[4] = self;
  [(HKGraphView *)self _updateScrollViewPropertiesIgnoringScrollViewCallbacks:v3];
  [(HKGraphView *)self _reloadViewScope];
}

uint64_t __44__HKGraphView__updateGraphViewConfiguration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateRangesForEffectiveAxisRange:*(*(a1 + 32) + 600) effectiveVisibleRangeCadence:*(*(a1 + 32) + 664) effectiveVisibleRangeActive:*(*(a1 + 32) + 672)];
  [*(a1 + 32) _updateZoomForParameters];
  [*(a1 + 32) _autoScaleXAxis];
  [*(a1 + 32) _reconfigureScrollingTiles];
  [*(a1 + 32) _scrollToCurrentVisibleRangeAnimated:0];
  v2 = *(a1 + 32);

  return [v2 _updateScene];
}

- (void)setVirtualLeftMarginStyle:(int64_t)style
{
  if (self->_virtualLeftMarginStyle != style)
  {
    self->_virtualLeftMarginStyle = style;
    if (![(HKGraphView *)self _drawingDuringScrolling])
    {
      renderView = self->_renderView;

      [(HKGraphRenderer *)renderView setNeedsRender];
    }
  }
}

- (void)setVirtualRightMarginStyle:(int64_t)style
{
  if (self->_virtualRightMarginStyle != style)
  {
    self->_virtualRightMarginStyle = style;
    if (![(HKGraphView *)self _drawingDuringScrolling])
    {
      renderView = self->_renderView;

      [(HKGraphRenderer *)renderView setNeedsRender];
    }
  }
}

- (id)_rangeFromRange:(id)range withStartOfRange:(id)ofRange
{
  xAxis = self->_xAxis;
  ofRangeCopy = ofRange;
  rangeCopy = range;
  transform = [(HKAxis *)xAxis transform];
  minValue = [rangeCopy minValue];
  [transform coordinateForValue:minValue];
  v12 = v11;

  transform2 = [(HKAxis *)self->_xAxis transform];
  maxValue = [rangeCopy maxValue];

  [transform2 coordinateForValue:maxValue];
  v16 = v15;

  v17 = v16 - v12;
  transform3 = [(HKAxis *)self->_xAxis transform];
  minValue2 = [ofRangeCopy minValue];

  [transform3 coordinateForValue:minValue2];
  v21 = v20;

  v22 = objc_opt_class();
  xAxis = [(HKGraphView *)self xAxis];
  v24 = [v22 _rangeFromModelCoordinateMin:xAxis max:v21 axis:v17 + v21];

  return v24;
}

+ (double)_modelCoordinateSpanForRange:(id)range axis:(id)axis
{
  axisCopy = axis;
  rangeCopy = range;
  transform = [axisCopy transform];
  minValue = [rangeCopy minValue];
  [transform coordinateForValue:minValue];
  v10 = v9;

  transform2 = [axisCopy transform];

  maxValue = [rangeCopy maxValue];

  [transform2 coordinateForValue:maxValue];
  v14 = v13;

  return v14 - v10;
}

+ (id)_rangeFromModelCoordinateMin:(double)min max:(double)max axis:(id)axis
{
  axisCopy = axis;
  transform = [axisCopy transform];
  v9 = [transform valueForCoordinate:min];

  transform2 = [axisCopy transform];

  v11 = [transform2 valueForCoordinate:max];

  v12 = [HKValueRange valueRangeWithMinValue:v9 maxValue:v11];

  return v12;
}

- (BOOL)_setRangesForActiveVisibleRange:(id)range
{
  rangeCopy = range;
  v5 = objc_opt_class();
  xAxis = [(HKGraphView *)self xAxis];
  [v5 _modelCoordinateSpanForRange:rangeCopy axis:xAxis];
  v8 = v7;

  v9 = objc_opt_class();
  effectiveVisibleRangeCadence = [(HKGraphView *)self effectiveVisibleRangeCadence];
  xAxis2 = [(HKGraphView *)self xAxis];
  [v9 _modelCoordinateSpanForRange:effectiveVisibleRangeCadence axis:xAxis2];
  v13 = v12;

  if (fabs(v13) <= 2.22044605e-16 || v8 / v13 > 0.99)
  {
    v14 = rangeCopy;
  }

  else
  {
    v14 = [(HKGraphView *)self _rangeFromRange:self->_effectiveVisibleRangeCadence withStartOfRange:rangeCopy, v8 / v13];
  }

  v15 = v14;
  [(HKGraphView *)self _setVisibleRangesForEffectiveRangeCadence:v14];
  v16 = [(HKGraphView *)self _compareRange:rangeCopy toRange:self->_effectiveVisibleRangeActive];
  effectiveVisibleRangeActive = self->_effectiveVisibleRangeActive;
  self->_effectiveVisibleRangeActive = rangeCopy;
  v18 = rangeCopy;

  return !v16;
}

- (void)setEffectiveVisibleRangeActive:(id)active animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(HKGraphView *)self _setRangesForActiveVisibleRange:active])
  {
    [(HKGraphView *)self _finishSelection];
  }

  [(HKGraphView *)self _scrollToCurrentVisibleRangeAnimated:animatedCopy];
}

- (BOOL)_compareRange:(id)range toRange:(id)toRange
{
  rangeCopy = range;
  toRangeCopy = toRange;
  startDate = [rangeCopy startDate];
  if (startDate)
  {
    v9 = startDate;
    startDate2 = [toRangeCopy startDate];

    if (startDate2)
    {
      startDate3 = [rangeCopy startDate];
      startDate4 = [toRangeCopy startDate];
      if ([(HKGraphView *)self _compareChartDate:startDate3 toDate:startDate4])
      {
        endDate = [rangeCopy endDate];
        endDate2 = [toRangeCopy endDate];
        v15 = [(HKGraphView *)self _compareChartDate:endDate toDate:endDate2];
LABEL_9:
        v24 = v15;

LABEL_12:
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  startDate3 = [rangeCopy minValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    minValue = [toRangeCopy minValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v24 = 0;
      goto LABEL_14;
    }

    startDate3 = [rangeCopy minValue];
    [startDate3 doubleValue];
    v19 = v18;
    startDate4 = [toRangeCopy minValue];
    [startDate4 doubleValue];
    if (HKUIEqualCGFloats(v19, v20))
    {
      endDate = [rangeCopy maxValue];
      [endDate doubleValue];
      v22 = v21;
      endDate2 = [toRangeCopy maxValue];
      [endDate2 doubleValue];
      v15 = HKUIEqualCGFloats(v22, v23);
      goto LABEL_9;
    }

LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  v24 = 0;
LABEL_13:

LABEL_14:
  return v24;
}

- (void)_updateEffectiveAxisRange:(id)range effectiveVisibleRangeCadence:(id)cadence effectiveVisibleRangeActive:(id)active virtualLeftMarginWidth:(double)width virtualRightMarginWidth:(double)marginWidth
{
  rangeCopy = range;
  cadenceCopy = cadence;
  activeCopy = active;
  effectiveVisibleRangeActive = [(HKGraphView *)self effectiveVisibleRangeActive];
  v16 = [(HKGraphView *)self _compareRange:activeCopy toRange:effectiveVisibleRangeActive];

  if (!v16)
  {
    [(HKGraphView *)self _finishSelection];
  }

  self->_virtualLeftMarginWidth = width;
  self->_virtualRightMarginWidth = marginWidth;
  [(HKGraphView *)self _updateRangesForEffectiveAxisRange:rangeCopy effectiveVisibleRangeCadence:cadenceCopy effectiveVisibleRangeActive:activeCopy];
  xAxis = self->_xAxis;
  chartableValueRange = [(HKGraphView *)self chartableValueRange];
  [(HKAxis *)xAxis setAxisChartableValueRange:chartableValueRange];

  [(HKGraphView *)self _updateAxisZoomScaleValueRange];
  [(HKGraphView *)self _updateGraphViewConfiguration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __145__HKGraphView__updateEffectiveAxisRange_effectiveVisibleRangeCadence_effectiveVisibleRangeActive_virtualLeftMarginWidth_virtualRightMarginWidth___block_invoke;
  v19[3] = &unk_1E81B55A8;
  v19[4] = self;
  [(HKGraphView *)self _updateScrollViewPropertiesIgnoringScrollViewCallbacks:v19];
  [(HKGraphView *)self _notifyDelegateOfVisibleValueRange:self->_effectiveVisibleRangeActive changeContext:2];
}

- (id)_actualVisibleRangeFromEffectiveVisibleRange:(id)range dataAreaRect:(CGRect)rect
{
  width = rect.size.width;
  x = rect.origin.x;
  rangeCopy = range;
  if ([(HKGraphView *)self _axisRangeIsDateRange])
  {
    transform = [(HKAxis *)self->_xAxis transform];
    minValue = [rangeCopy minValue];
    [transform coordinateForValue:minValue];
    v11 = v10;
    transform2 = [(HKAxis *)self->_xAxis transform];
    maxValue = [rangeCopy maxValue];
    [transform2 coordinateForValue:maxValue];
    v15 = v14;

    [HKAxis expandByPointsLow:self->_virtualLeftMarginWidth high:self->_virtualRightMarginWidth modelRange:v11 pointRange:v15, x, x + width];
    v17 = v16;
    v19 = v18;
    v20 = objc_opt_class();
    xAxis = [(HKGraphView *)self xAxis];
    v22 = [v20 _rangeFromModelCoordinateMin:xAxis max:v17 axis:v19];
  }

  else
  {
    v22 = rangeCopy;
  }

  return v22;
}

- (id)_effectiveVisibleRangeFromActualVisibleRange:(id)range
{
  rangeCopy = range;
  if ([(HKGraphView *)self _axisRangeIsDateRange])
  {
    [(HKGraphView *)self _dataAreaRect];
    v6 = v5;
    v8 = v5 + v7;
    transform = [(HKAxis *)self->_xAxis transform];
    minValue = [rangeCopy minValue];
    [transform coordinateForValue:minValue];
    v12 = v11;
    transform2 = [(HKAxis *)self->_xAxis transform];
    maxValue = [rangeCopy maxValue];
    [transform2 coordinateForValue:maxValue];
    v16 = v15;

    [HKAxis contractByPointsLow:self->_virtualLeftMarginWidth high:self->_virtualRightMarginWidth modelRange:v12 pointRange:v16, v6, v8];
    v18 = v17;
    v20 = v19;
    v21 = objc_opt_class();
    xAxis = [(HKGraphView *)self xAxis];
    v23 = [v21 _rangeFromModelCoordinateMin:xAxis max:v18 axis:v20];
  }

  else
  {
    v23 = rangeCopy;
  }

  return v23;
}

- (id)_findActualAxisRangeFromVisibleRanges
{
  transform = [(HKAxis *)self->_xAxis transform];
  minValue = [(HKValueRange *)self->_effectiveVisibleRangeCadence minValue];
  [transform coordinateForValue:minValue];
  v6 = v5;
  transform2 = [(HKAxis *)self->_xAxis transform];
  minValue2 = [(HKValueRange *)self->_actualVisibleRange minValue];
  [transform2 coordinateForValue:minValue2];
  v10 = v6 - v9;

  transform3 = [(HKAxis *)self->_xAxis transform];
  maxValue = [(HKValueRange *)self->_actualVisibleRange maxValue];
  [transform3 coordinateForValue:maxValue];
  v14 = v13;
  transform4 = [(HKAxis *)self->_xAxis transform];
  maxValue2 = [(HKValueRange *)self->_effectiveVisibleRangeCadence maxValue];
  [transform4 coordinateForValue:maxValue2];
  v18 = v14 - v17;

  transform5 = [(HKAxis *)self->_xAxis transform];
  minValue3 = [(HKValueRange *)self->_effectiveAxisRange minValue];
  [transform5 coordinateForValue:minValue3];
  v22 = v21;

  transform6 = [(HKAxis *)self->_xAxis transform];
  maxValue3 = [(HKValueRange *)self->_effectiveAxisRange maxValue];
  [transform6 coordinateForValue:maxValue3];
  v26 = v25;

  v27 = objc_opt_class();
  xAxis = [(HKGraphView *)self xAxis];
  v29 = [v27 _rangeFromModelCoordinateMin:xAxis max:v22 - v10 axis:v18 + v26];

  return v29;
}

- (void)seriesDidInvalidatePaths:(id)paths newDataArrived:(BOOL)arrived
{
  arrivedCopy = arrived;
  pathsCopy = paths;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [HKGraphView seriesDidInvalidatePaths:newDataArrived:];
  }

  if (![(HKGraphView *)self _drawingDuringScrolling])
  {
    [(HKGraphRenderer *)self->_renderView setNeedsRender];
    [(HKGraphRenderer *)self->_yAxisLabelContent setNeedsRender];
  }

  if (arrivedCopy && [(HKGraphView *)self _tilesAreEnabled])
  {
    [(HKGraphView *)self _markTilesDirtyWithCompletion:0];
  }

  [(HKGraphView *)self _notifyDelegateSeriesUpdate:pathsCopy newDataArrived:arrivedCopy];
}

- (void)nonemptyDrawComplete
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(HKGraphView *)self firstNonemptyDrawTime];
    if (v3 == 0.0)
    {
      [(HKGraphView *)self setFirstNonemptyDrawTime:CACurrentMediaTime()];
      v4 = HKLogWellnessDashboard();
      v5 = _HKLogSignpostIDGenerate();

      _HKInitializeLogging();
      v6 = HKLogWellnessDashboard();
      v7 = os_signpost_enabled(v6);

      if (v7)
      {
        v8 = HKLogWellnessDashboard();
        v9 = v8;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          *v10 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C3942000, v9, OS_SIGNPOST_EVENT, v5, "chart-ppt-nonempty-draw", "", v10, 2u);
        }
      }
    }
  }
}

- (double)snapScreenCoordinateToXAxisResolution:(double)resolution
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [HKGraphView snapScreenCoordinateToXAxisResolution:];
  }

  if ([(HKGraphView *)self xAxisDateZoom]!= 8)
  {
    xAxis = [(HKGraphView *)self xAxis];
    transform = [xAxis transform];

    actualVisibleRange = [(HKGraphView *)self actualVisibleRange];
    startDate = [actualVisibleRange startDate];

    [transform coordinateForValue:startDate];
    v10 = v9;
    xAxis2 = [(HKGraphView *)self xAxis];
    [xAxis2 pointTransform];
    v14 = HKLinearTransformValue(v12, v13, v10);

    v15 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:[(HKGraphView *)self xAxisDateZoom]];
    resolutionFromTraitCollectionAttributes = [(HKGraphView *)self resolutionFromTraitCollectionAttributes];
    primarySeries = [(HKGraphView *)self primarySeries];
    v18 = [primarySeries resolutionForTimeScope:-[HKGraphView xAxisDateZoom](self traitResolution:{"xAxisDateZoom"), resolutionFromTraitCollectionAttributes}];

    [v15 approximateSeriesPointIntervalAtResolution:v18];
    v19 = [startDate dateByAddingTimeInterval:?];
    [transform coordinateForValue:v19];
    v21 = v20;
    xAxis3 = [(HKGraphView *)self xAxis];
    [xAxis3 pointTransform];
    v25 = HKLinearTransformValue(v23, v24, v21);

    resolution = (v25 - v14) * 0.5 + floor(resolution / (v25 - v14)) * (v25 - v14);
  }

  return resolution;
}

- (BOOL)rangeIsVisible:(id)visible
{
  v4 = MEMORY[0x1E696AF00];
  visibleCopy = visible;
  if (([v4 isMainThread] & 1) == 0)
  {
    [HKGraphView rangeIsVisible:];
  }

  actualVisibleRange = [(HKGraphView *)self actualVisibleRange];
  v7 = [HKGraphView visibleIntersectionForRange:visibleCopy visibleRange:actualVisibleRange];

  return v7;
}

- (UIEdgeInsets)_virtualMarginInsets
{
  [(HKGraphView *)self _dataAreaRect];
  [(HKGraphView *)self _inactiveRightAreaForRect:?];
  virtualLeftMarginWidth = self->_virtualLeftMarginWidth;
  v5 = v4 + self->_virtualRightMarginWidth;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v5;
  result.bottom = v7;
  result.left = virtualLeftMarginWidth;
  result.top = v6;
  return result;
}

- (BOOL)_drawingDuringScrolling
{
  if ([(UIScrollView *)self->_scrollView isDragging]|| [(UIScrollView *)self->_scrollView isDecelerating])
  {
    return 1;
  }

  scrollView = self->_scrollView;

  return [(UIScrollView *)scrollView isScrollAnimating];
}

+ (BOOL)visibleIntersectionForRange:(id)range visibleRange:(id)visibleRange
{
  rangeCopy = range;
  visibleRangeCopy = visibleRange;
  minValue = [rangeCopy minValue];
  minValue2 = [visibleRangeCopy minValue];
  v9 = [minValue2 compare:minValue];

  if (v9 == 1)
  {
    minValue3 = [visibleRangeCopy minValue];

    minValue = minValue3;
  }

  maxValue = [rangeCopy maxValue];
  maxValue2 = [visibleRangeCopy maxValue];
  v13 = [maxValue2 compare:maxValue];

  if (v13 == -1)
  {
    maxValue3 = [visibleRangeCopy maxValue];

    maxValue = maxValue3;
  }

  v15 = [minValue compare:maxValue] == -1;

  return v15;
}

- (id)_defaultXAxisValueRange
{
  v2 = +[HKGraphZoomLevelConfiguration defaultCalendar];
  v3 = +[HKGraphZoomLevelConfiguration defaultCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [v3 startOfDayForDate:date];

  v6 = [v2 dateByAddingUnit:16 value:1 toDate:v5 options:0];
  v7 = [HKValueRange valueRangeWithMinValue:v5 maxValue:v6];

  return v7;
}

- (void)_autoScaleXAxis
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_actualAxisRange)
  {
    [(HKGraphView *)self _contentWidth];
    v4 = v3;
    xAxis = self->_xAxis;
    v11[0] = self->_actualAxisRange;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(HKAxis *)xAxis _pointTransformFromSeriesRanges:v6 linearTransform:0.0 chartRange:1.0, 0.0, v4];
    v8 = v7;
    v10 = v9;

    [(HKAxis *)self->_xAxis setPointTransform:v8, v10];
  }
}

- (void)autoscaleYAxesAnimated:(BOOL)animated specificRange:(id)range onlyIfNeeded:(BOOL)needed completion:(id)completion
{
  neededCopy = needed;
  animatedCopy = animated;
  v54 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  completionCopy = completion;
  _initializationPeriodIsActive = [(HKGraphView *)self _initializationPeriodIsActive];
  v12 = [(HKGraphView *)self _autoscaleSeriesOnlyIfNeeded:neededCopy];
  v35 = rangeCopy;
  v13 = [(HKGraphView *)self _autoscaleTransformsFromAutoscaleSeriesList:v12 specificRange:rangeCopy];
  if ([v13 count])
  {
    [(HKGraphView *)self _cancelAutoscaleAnimations];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (!v15)
  {

LABEL_26:
    if ([v14 count])
    {
      [(HKGraphView *)self _markTilesDirtyWithCompletion:0];
    }

    if (completionCopy)
    {
      completionCopy[2]();
    }

    goto LABEL_30;
  }

  v16 = v15;
  v34 = v12;
  v17 = 0;
  v18 = animatedCopy & ~_initializationPeriodIsActive;
  v19 = *v49;
  selfCopy = self;
  v38 = v18;
  v37 = *v49;
  do
  {
    v20 = 0;
    v40 = v16;
    do
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v48 + 1) + 8 * v20);
      if (v18 && [(HKGraphView *)self _autoscaleTransformIsSignificant:*(*(&v48 + 1) + 8 * v20)])
      {
        seriesForTransform = [(HKGraphView *)self _propertyAnimationForTransform:v21];
        v23 = [(HKGraphView *)self _insertAutoscaleAnimation:seriesForTransform];
        [seriesForTransform setProperty:v23];
        [(HKGraphView *)self _actionsBeforeAnimationTransform:v21];
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __76__HKGraphView_autoscaleYAxesAnimated_specificRange_onlyIfNeeded_completion___block_invoke;
        v45[3] = &unk_1E81B63E0;
        v45[4] = self;
        v45[5] = v21;
        v46 = v23;
        v47 = completionCopy;
        v24 = v23;
        [seriesForTransform setCompletion:v45];
        if (!v17)
        {
          [(HKGraphView *)self _autoscaleAnimationStart];
        }

        [(HKPropertyAnimationApplier *)self->_animationApplier applyAnimation:seriesForTransform, v34];
        ++v17;
      }

      else
      {
        yAxisForTransform = [v21 yAxisForTransform];
        [v21 endingTransform];
        [yAxisForTransform setPointTransform:?];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        seriesForTransform = [v21 seriesForTransform];
        v26 = [seriesForTransform countByEnumeratingWithState:&v41 objects:v52 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = v17;
          v29 = v14;
          v30 = *v42;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v42 != v30)
              {
                objc_enumerationMutation(seriesForTransform);
              }

              v32 = *(*(&v41 + 1) + 8 * i);
              endingRange = [v21 endingRange];
              [v32 updateForAutoscale:endingRange];
            }

            v27 = [seriesForTransform countByEnumeratingWithState:&v41 objects:v52 count:16];
          }

          while (v27);
          v14 = v29;
          v17 = v28;
          self = selfCopy;
          v16 = v40;
          v18 = v38;
          v19 = v37;
        }
      }

      ++v20;
    }

    while (v20 != v16);
    v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  }

  while (v16);

  v12 = v34;
  rangeCopy = v35;
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_30:
}

uint64_t __76__HKGraphView_autoscaleYAxesAnimated_specificRange_onlyIfNeeded_completion___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = [v5 endingRange];
  [v4 _actionsAfterAnimationTransform:v5 finalVisibleRange:v6];

  v7 = a1[4];
  v8 = a1[6];
  v9 = a1[7];

  return [v7 _removeAutoscaleAnimationWithName:v8 cancelled:a2 completion:v9];
}

- (BOOL)_initializationPeriodIsActive
{
  v3 = CACurrentMediaTime();
  [(HKGraphView *)self startTime];
  if (v4 == 0.0)
  {
    return 1;
  }

  [(HKGraphView *)self startTime];
  return v3 - v6 < 1.5;
}

- (id)_autoscaleSeriesOnlyIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v26 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v6 = 0;
    do
    {
      v20 = v6;
      v7 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v6];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v19 = v7;
      currentSeries = [v7 currentSeries];
      v9 = [currentSeries countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(currentSeries);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            if (!neededCopy || [(HKGraphView *)self _seriesRequiresYAutoscale:*(*(&v21 + 1) + 8 * i)])
            {
              yAxis = [v13 yAxis];
              v15 = [(HKGraphView *)self _findAutoscaleSeriesForYAxis:yAxis allAutoscaleSeries:v5];

              if (!v15)
              {
                v16 = [_HKGraphViewAutoscaleSeries alloc];
                yAxis2 = [v13 yAxis];
                v15 = [(_HKGraphViewAutoscaleSeries *)v16 initWithAutoscaleGroupRow:v20 autoscaleYAxis:yAxis2];

                [v5 addObject:v15];
              }

              [(_HKGraphViewAutoscaleSeries *)v15 addAutoscaleSeries:v13];
            }
          }

          v10 = [currentSeries countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }

      v6 = v20 + 1;
    }

    while (v20 + 1 < [(NSMutableArray *)self->_seriesGroupRows count]);
  }

  return v5;
}

- (id)_findAutoscaleSeriesForYAxis:(id)axis allAutoscaleSeries:(id)series
{
  v18 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  seriesCopy = series;
  v7 = [seriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(seriesCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        autoscaleYAxis = [v10 autoscaleYAxis];

        if (autoscaleYAxis == axisCopy)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [seriesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)_autoscaleTransformIsSignificant:(id)significant
{
  significantCopy = significant;
  [significantCopy startingTransform];
  v6 = HKLinearTransformEqualToTransform(v4, v5, 0.0, 1.0);
  [significantCopy startingTransform];
  v8 = v7;
  v10 = v9;
  [significantCopy endingTransform];
  v12 = v11;
  v14 = v13;

  return ((v6 | HKLinearTransformEqualToTransform(v8, v10, v12, v14)) & 1) == 0;
}

- (BOOL)_seriesRequiresYAutoscale:(id)autoscale
{
  yAxis = [autoscale yAxis];
  requiresScaling = [yAxis requiresScaling];

  return requiresScaling;
}

- (id)_autoscaleTransformsFromAutoscaleSeriesList:(id)list specificRange:(id)range
{
  v57 = *MEMORY[0x1E69E9840];
  listCopy = list;
  rangeCopy = range;
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = listCopy;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v51 + 1) + 8 * i);
        [(HKGraphView *)self _dataAreaRect];
        -[HKGraphView _yAxisRectForSeriesGroupRow:chartRect:](self, "_yAxisRectForSeriesGroupRow:chartRect:", [v13 autoscaleGroupRow], v14, v15, v16, v17);
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v26 = rangeCopy;
        if (!rangeCopy)
        {
          v26 = [(HKGraphView *)self _combinedYAxisRangeForAutoscaleSeries:v13 yAxisRect:v19, v21, v23, v25];
        }

        v27 = v26;
        if (v26 && v25 >= 0.0 && v23 >= 0.0)
        {
          v59.origin.x = v19;
          v59.origin.y = v21;
          v59.size.width = v23;
          v59.size.height = v25;
          MinY = CGRectGetMinY(v59);
          v60.origin.x = v19;
          v60.origin.y = v21;
          v60.size.width = v23;
          v60.size.height = v25;
          MaxY = CGRectGetMaxY(v60);
          v30 = MaxY - MinY;
          autoscaleSeries = [v13 autoscaleSeries];
          v32 = [(HKGraphView *)self _allSeriesAreInverted:autoscaleSeries];

          if (v32)
          {
            MaxY = -MinY;
            v33 = 1.0;
          }

          else
          {
            v33 = -1.0;
          }

          autoscaleYAxis = [v13 autoscaleYAxis];
          [autoscaleYAxis pointTransform];
          v36 = v35;
          v38 = v37;

          autoscaleYAxis2 = [v13 autoscaleYAxis];
          v55 = v27;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
          [autoscaleYAxis2 _pointTransformFromSeriesRanges:v40 linearTransform:MaxY chartRange:{v33, MinY, v30}];
          v42 = v41;
          v44 = v43;

          v45 = [_HKGraphViewYAxisTransform alloc];
          autoscaleYAxis3 = [v13 autoscaleYAxis];
          autoscaleSeries2 = [v13 autoscaleSeries];
          v48 = [(_HKGraphViewYAxisTransform *)v45 initWithYAxis:autoscaleYAxis3 seriesForTransform:autoscaleSeries2 startingTransform:v27 endingTransform:v36 endingRange:v38, v42, v44];

          [v50 addObject:v48];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v10);
  }

  return v50;
}

- (BOOL)_allSeriesAreInverted:(id)inverted
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  invertedCopy = inverted;
  v4 = [invertedCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(invertedCopy);
        }

        if (![*(*(&v10 + 1) + 8 * i) shouldInvertAxis])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [invertedCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (id)_propertyAnimationForTransform:(id)transform
{
  transformCopy = transform;
  v4 = objc_alloc_init(HKPropertyAnimation);
  v5 = MEMORY[0x1E696B098];
  [transformCopy startingTransform];
  v6 = [v5 valueWithHKLinearTransform:?];
  [(HKPropertyAnimation *)v4 setFromValue:v6];

  v7 = MEMORY[0x1E696B098];
  [transformCopy endingTransform];
  v8 = [v7 valueWithHKLinearTransform:?];
  [(HKPropertyAnimation *)v4 setToValue:v8];

  [(HKPropertyAnimation *)v4 setDuration:0.3];
  LODWORD(v9) = 1051361018;
  LODWORD(v10) = 1.0;
  v11 = [MEMORY[0x1E69793D0] functionWithControlPoints:v9 :0.0 :0.0 :v10];
  [(HKPropertyAnimation *)v4 setTimingFunction:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__HKGraphView__propertyAnimationForTransform___block_invoke;
  v14[3] = &unk_1E81B6408;
  v15 = transformCopy;
  v12 = transformCopy;
  [(HKPropertyAnimation *)v4 setPropertyApplicationFunction:v14];

  return v4;
}

void __46__HKGraphView__propertyAnimationForTransform___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  [a2 HKLinearTransformValue];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) yAxisForTransform];
  [v7 setPointTransform:{v4, v6}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [*(a1 + 32) seriesForTransform];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [*(a1 + 32) endingRange];
        [v13 updateForAutoscale:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_actionsBeforeAnimationTransform:(id)transform
{
  v16 = *MEMORY[0x1E69E9840];
  transformCopy = transform;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  seriesForTransform = [transformCopy seriesForTransform];
  v5 = [seriesForTransform countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {

LABEL_11:
    yAxisForTransform = [transformCopy yAxisForTransform];
    [yAxisForTransform setAxisLabelEndings:3];

    goto LABEL_12;
  }

  v6 = v5;
  v7 = *v12;
  v8 = 1;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(seriesForTransform);
      }

      v8 &= [*(*(&v11 + 1) + 8 * i) adjustYAxisForLabels];
    }

    v6 = [seriesForTransform countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);

  if (v8)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_actionsAfterAnimationTransform:(id)transform finalVisibleRange:(id)range
{
  v20 = *MEMORY[0x1E69E9840];
  transformCopy = transform;
  rangeCopy = range;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  seriesForTransform = [transformCopy seriesForTransform];
  v8 = [seriesForTransform countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {

LABEL_11:
    yAxisForTransform = [transformCopy yAxisForTransform];
    [yAxisForTransform setAxisLabelEndings:0];

    goto LABEL_12;
  }

  v9 = v8;
  v10 = *v16;
  v11 = 1;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(seriesForTransform);
      }

      v13 = *(*(&v15 + 1) + 8 * i);
      v11 &= [v13 adjustYAxisForLabels];
      [v13 updateForAutoscale:rangeCopy];
    }

    v9 = [seriesForTransform countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v9);

  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)_autoscaleAnimationStart
{
  [(HKGraphView *)self setAnimationAutoscaleInProgress:1];

  [(HKGraphView *)self setTilesTransientDisabled:1];
}

- (void)_autoscaleAnimationEnd
{
  [(HKGraphView *)self setAnimationAutoscaleInProgress:0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__HKGraphView__autoscaleAnimationEnd__block_invoke;
  v3[3] = &unk_1E81B55A8;
  v3[4] = self;
  [(HKGraphView *)self _markTilesDirtyWithCompletion:v3];
}

- (void)_autoscaleAnimationCancelled
{
  [(HKGraphView *)self setAnimationAutoscaleInProgress:0];

  [(HKGraphView *)self setTilesTransientDisabled:0];
}

- (id)_insertAutoscaleAnimation:(id)animation
{
  animationCopy = animation;
  currentAnimationProperties = [(HKGraphView *)self currentAnimationProperties];
  v6 = [currentAnimationProperties objectForKeyedSubscript:@"y_axis_point_transform"];

  if (v6)
  {
    v7 = 1;
    v8 = @"y_axis_point_transform";
    do
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%ld", @"y_axis_point_transform", v7];

      ++v7;
      currentAnimationProperties2 = [(HKGraphView *)self currentAnimationProperties];
      v11 = [currentAnimationProperties2 objectForKeyedSubscript:v9];

      v8 = v9;
    }

    while (v11);
  }

  else
  {
    v9 = @"y_axis_point_transform";
  }

  currentAnimationProperties3 = [(HKGraphView *)self currentAnimationProperties];
  [currentAnimationProperties3 setObject:animationCopy forKeyedSubscript:v9];

  return v9;
}

- (void)_removeAutoscaleAnimationWithName:(id)name cancelled:(BOOL)cancelled completion:(id)completion
{
  cancelledCopy = cancelled;
  completionCopy = completion;
  nameCopy = name;
  currentAnimationProperties = [(HKGraphView *)self currentAnimationProperties];
  [currentAnimationProperties removeObjectForKey:nameCopy];

  currentAnimationProperties2 = [(HKGraphView *)self currentAnimationProperties];
  v11 = [currentAnimationProperties2 count];

  v12 = completionCopy;
  if (!v11)
  {
    if (cancelledCopy)
    {
      [(HKGraphView *)self _autoscaleAnimationCancelled];
    }

    else
    {
      [(HKGraphView *)self _autoscaleAnimationEnd];
    }

    v12 = completionCopy;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
      v12 = completionCopy;
    }
  }
}

- (void)_cancelAutoscaleAnimations
{
  v18 = *MEMORY[0x1E69E9840];
  currentAnimationProperties = [(HKGraphView *)self currentAnimationProperties];
  allKeys = [currentAnimationProperties allKeys];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        animationApplier = [(HKGraphView *)self animationApplier];
        [animationApplier cancelAnimationsForProperty:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  currentAnimationProperties2 = [(HKGraphView *)self currentAnimationProperties];
  [currentAnimationProperties2 removeAllObjects];
}

- (int64_t)resolutionFromTraitCollectionAttributes
{
  traitCollection = [(HKGraphView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return horizontalSizeClass == 2;
}

- (int64_t)_resolutionFromSeries:(id)series
{
  seriesCopy = series;
  v5 = [seriesCopy resolutionForTimeScope:self->_xAxisDateZoom traitResolution:{-[HKGraphView resolutionFromTraitCollectionAttributes](self, "resolutionFromTraitCollectionAttributes")}];

  return v5;
}

- (id)_combinedYAxisRangeForAutoscaleSeries:(id)series yAxisRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  seriesCopy = series;
  obj = [seriesCopy autoscaleSeries];
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v15 = [(HKGraphView *)self _resolutionFromSeries:v14];
        effectiveVisibleRangeCadence = [(HKGraphView *)self effectiveVisibleRangeCadence];
        v17 = [v14 valueRangeForYAxisWithXAxisRange:effectiveVisibleRangeCadence dateZoom:self->_xAxisDateZoom resolution:v15 chartRect:{x, y, width, height}];

        if ([v14 isCriticalForAutoscale])
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          effectiveVisibleRangeCadence2 = [(HKGraphView *)self effectiveVisibleRangeCadence];
          v20 = [v14 hasAnyDataLoadedInXAxisRange:effectiveVisibleRangeCadence2 dateZoom:self->_xAxisDateZoom resolution:v15];

          if ((v20 & 1) == 0)
          {

            v22 = 0;
            goto LABEL_22;
          }
        }

        else if (v17)
        {
          if (v11)
          {
            [v11 unionRange:v17];
          }

          else
          {
            v11 = v17;
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v21 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v10 = v21;
    }

    while (v21);
  }

  else
  {
    v11 = 0;
  }

  v11 = v11;
  v22 = v11;
LABEL_22:

  return v22;
}

- (double)_inactiveRightAreaForRect:(CGRect)rect
{
  width = rect.size.width;
  v5 = 0.0;
  if (![(HKValueRange *)self->_effectiveVisibleRangeCadence isEqual:self->_effectiveVisibleRangeActive, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height])
  {
    transform = [(HKAxis *)self->_xAxis transform];
    minValue = [(HKValueRange *)self->_actualVisibleRange minValue];
    [transform coordinateForValue:minValue];
    v9 = v8;

    transform2 = [(HKAxis *)self->_xAxis transform];
    maxValue = [(HKValueRange *)self->_actualVisibleRange maxValue];
    [transform2 coordinateForValue:maxValue];
    v13 = v12;

    if (vabdd_f64(v13, v9) > 2.22044605e-16)
    {
      v14 = width / (v13 - v9);
      transform3 = [(HKAxis *)self->_xAxis transform];
      maxValue2 = [(HKValueRange *)self->_effectiveVisibleRangeCadence maxValue];
      [transform3 coordinateForValue:maxValue2];
      v18 = v17;

      transform4 = [(HKAxis *)self->_xAxis transform];
      maxValue3 = [(HKValueRange *)self->_effectiveVisibleRangeActive maxValue];
      [transform4 coordinateForValue:maxValue3];
      v22 = v21;

      return v14 * (v18 - v22);
    }
  }

  return v5;
}

- (double)_bottomBaselineYValueForChartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(HKGraphView *)self zoomScale];
  v9 = v8;
  if (![(NSMutableArray *)self->_seriesGroupRows count])
  {
    return -1.0;
  }

  v10 = 0;
  v11 = 1;
  v12 = 2.22507386e-308;
  v34 = y;
  v35 = x;
  do
  {
    v13 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v10];
    [(HKGraphView *)self _yAxisRectForSeriesGroupRow:v10 chartRect:x, y, width, height];
    v14 = v9;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = width;
    v22 = height;
    v24 = v23;
    v25 = [(HKGraphView *)self _visibleSeriesForSeriesGroup:v13];
    yAxis = [v25 yAxis];
    visibleValueRange = [v25 visibleValueRange];
    v28 = v16;
    v9 = v14;
    [yAxis bottomBaselineYCoordinateForModelRange:visibleValueRange axisRect:v28 zoomScale:{v18, v20, v24, v14}];
    v30 = v29;

    if (v12 >= v30)
    {
      v31 = v12;
    }

    else
    {
      v31 = v30;
    }

    if (yAxis)
    {
      v32 = v30 < -0.00000011920929;
    }

    else
    {
      v32 = 1;
    }

    height = v22;
    width = v21;
    y = v34;
    x = v35;
    if (!v32)
    {
      v11 = 0;
      v12 = v31;
    }

    ++v10;
  }

  while (v10 < [(NSMutableArray *)self->_seriesGroupRows count]);
  result = -1.0;
  if ((v11 & 1) == 0)
  {
    return v12;
  }

  return result;
}

- (double)_topBaselineYValueForChartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(HKGraphView *)self zoomScale];
  v9 = v8;
  if (![(NSMutableArray *)self->_seriesGroupRows count])
  {
    return -1.0;
  }

  v10 = 0;
  v11 = 1;
  v12 = 1.79769313e308;
  v34 = y;
  v35 = x;
  do
  {
    v13 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v10];
    [(HKGraphView *)self _yAxisRectForSeriesGroupRow:v10 chartRect:x, y, width, height];
    v14 = v9;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = width;
    v22 = height;
    v24 = v23;
    v25 = [(HKGraphView *)self _visibleSeriesForSeriesGroup:v13];
    yAxis = [v25 yAxis];
    visibleValueRange = [v25 visibleValueRange];
    v28 = v16;
    v9 = v14;
    [yAxis topBaselineYCoordinateForModelRange:visibleValueRange axisRect:v28 zoomScale:{v18, v20, v24, v14}];
    v30 = v29;

    if (v12 >= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v12;
    }

    if (yAxis)
    {
      v32 = v30 < -0.00000011920929;
    }

    else
    {
      v32 = 1;
    }

    height = v22;
    width = v21;
    y = v34;
    x = v35;
    if (!v32)
    {
      v11 = 0;
      v12 = v31;
    }

    ++v10;
  }

  while (v10 < [(NSMutableArray *)self->_seriesGroupRows count]);
  result = -1.0;
  if ((v11 & 1) == 0)
  {
    return v12;
  }

  return result;
}

- (id)_gridlineRangesForChartRect:(CGRect)rect
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  if (self->_drawsGridlinesPerSeriesGroup)
  {
    x = rect.origin.x;
    [(HKGraphView *)self zoomScale];
    v6 = v5;
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(NSMutableArray *)self->_seriesGroupRows count])
    {
      v7 = 0;
      while (1)
      {
        v8 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v7];
        [(HKGraphView *)self _yAxisRectForSeriesGroupRow:v7 chartRect:x, y, width, height];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [(HKGraphView *)self _visibleSeriesForSeriesGroup:v8];
        yAxis = [v17 yAxis];
        if (!yAxis)
        {
          break;
        }

        v19 = yAxis;
        visibleValueRange = [v17 visibleValueRange];
        [v19 bottomBaselineYCoordinateForModelRange:visibleValueRange axisRect:v10 zoomScale:{v12, v14, v16, v6}];
        v22 = v21;

        if (v22 < 0.00000011920929)
        {
          v22 = v12 + v16;
        }

        visibleValueRange2 = [v17 visibleValueRange];
        [v19 topBaselineYCoordinateForModelRange:visibleValueRange2 axisRect:v10 zoomScale:{v12, v14, v16, v6}];
        v25 = v24;

        if (v22 < 0.00000011920929 || v25 < 0.00000011920929)
        {

          break;
        }

        *&v26 = v22;
        v28 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
        *&v29 = v25;
        v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        v31 = [HKValueRange valueRangeWithMinValue:v30 maxValue:v28];
        [v35 addObject:v31];

        if (++v7 >= [(NSMutableArray *)self->_seriesGroupRows count])
        {
          goto LABEL_12;
        }
      }

      v33 = 0;
      v32 = v35;
    }

    else
    {
LABEL_12:
      v32 = v35;
      v33 = v35;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)_updateAllLegendsWithSelectedValues:(id)values
{
  v20 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_seriesGroupRows;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        legendView = [v10 legendView];

        if (legendView)
        {
          if (valuesCopy && [valuesCopy count] && (objc_msgSend(v10, "legendView"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "opaqueBackground"), v12, v13))
          {
            legendView2 = [v10 legendView];
            [legendView2 showLollipopsWithSelectedValues:valuesCopy];
          }

          else
          {
            legendView2 = [v10 legendView];
            [legendView2 hideLollipops];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (id)_visibleSeriesForSeriesGroup:(id)group
{
  groupCopy = group;
  selectionContext = [groupCopy selectionContext];
  closestSeriesToSelection = [selectionContext closestSeriesToSelection];
  if (!closestSeriesToSelection)
  {
    currentSeries = [groupCopy currentSeries];
    closestSeriesToSelection = [currentSeries firstObject];
  }

  return closestSeriesToSelection;
}

- (void)_renderYAxisLabelsInContext:(CGContext *)context chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(HKGraphView *)self zoomScale];
  v28 = v9;
  [(HKGraphView *)self contentOffset];
  v26 = v11;
  v27 = v10;
  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v12 = 0;
    do
    {
      v13 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v12];
      [(HKGraphRenderer *)self->_yAxisLabelContent bounds];
      v15 = v14;
      v17 = v16;
      [(HKGraphView *)self _yAxisRectForSeriesGroupRow:v12 chartRect:x, y, width, height];
      v19 = v18;
      v21 = v20;
      v29[0] = 0;
      v29[1] = 0x4030000000000000;
      v22 = [(HKGraphView *)self _visibleSeriesForSeriesGroup:v13];
      visibleValueRange = [v22 visibleValueRange];
      yAxis = [v22 yAxis];
      v25 = yAxis;
      if (v17 > 0.0 && v21 > 0.0)
      {
        [yAxis drawLabelsWithModelRange:visibleValueRange chartRect:self->_yAxisLabelContent zoomScale:v29 contentOffset:0 renderView:v15 maximumLabelSize:v19 omitOffscreenLabels:{v17, v21, v28, v27, v26}];
      }

      ++v12;
    }

    while (v12 < [(NSMutableArray *)self->_seriesGroupRows count]);
  }
}

- (_HKLocationSpan)_locationSpanForSeriesGroupRow:(int64_t)row chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  v10 = [(NSMutableArray *)self->_seriesGroupRows count];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 stackedSeriesGroupHeightsForGraphView:self];

    if (v14 && [v14 count] > row)
    {
      v15 = [v14 objectAtIndexedSubscript:row];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v35;
        v20 = height;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v34 + 1) + 8 * i);
            if ([v22 kind] == 1)
            {
              [v22 heightValue];
              v20 = v20 - v23;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v18);
      }

      else
      {
        v20 = height;
      }
    }

    else
    {
      v15 = 0;
      v20 = height;
    }
  }

  else
  {
    v15 = 0;
    v20 = height;
  }

  if (row < 1)
  {
    v26 = y;
  }

  else
  {
    [(HKGraphView *)self _locationSpanForSeriesGroupRow:row - 1 chartRect:x, y, width, height];
    v26 = v24 + v25;
  }

  v27 = floor(height * (1.0 / v10));
  if (v15)
  {
    kind = [v15 kind];
    if (kind == 1)
    {
      [v15 heightValue];
    }

    else
    {
      if (kind)
      {
        goto LABEL_28;
      }

      [v15 heightValue];
      v30 = v20 * v29;
    }

    v27 = floor(v30);
  }

LABEL_28:
  if (v10 - 1 == row)
  {
    v31 = y + height - v26;
  }

  else
  {
    v31 = v27;
  }

  v32 = v26;
  v33 = v31;
  result.var1 = v33;
  result.var0 = v32;
  return result;
}

- (CGRect)_yAxisRectForSeriesGroupRow:(int64_t)row insetForLegends:(BOOL)legends chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  legendsCopy = legends;
  v12 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:?];
  [v12 lastLegendSize];
  v14 = v13;
  outlineOptions = self->_outlineOptions;
  v16 = 0.0;
  v17 = 0.0;
  if (outlineOptions)
  {
    v17 = HKUIOnePixel();
    outlineOptions = self->_outlineOptions;
  }

  if ((outlineOptions & 4) != 0)
  {
    v16 = HKUIOnePixel();
  }

  if (legendsCopy)
  {
    v18 = v14 + v17;
  }

  else
  {
    v18 = v17;
  }

  [(HKGraphView *)self _locationSpanForSeriesGroupRow:row chartRect:x, y, width, height];
  v20 = v18 + v19;
  v22 = v21 - (v18 + v16);

  v23 = x + 0.0;
  v24 = v20;
  v25 = width;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)_yAxisRectForSeriesGroupRow:(int64_t)row chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = [(HKGraphView *)self _anySeriesWantsInternalLegends:?]^ 1;

  [(HKGraphView *)self _yAxisRectForSeriesGroupRow:row insetForLegends:v10 chartRect:x, y, width, height];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_anySeriesWantsInternalLegends:(int64_t)legends
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:legends];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  currentSeries = [v3 currentSeries];
  v5 = [currentSeries countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(currentSeries);
        }

        if ([*(*(&v9 + 1) + 8 * i) drawLegendInsideSeries])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [currentSeries countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)_skipRenderingToView:(id)view yAxisView:(id)axisView context:(CGContext *)context chartRect:(CGRect)rect
{
  viewCopy = view;
  axisViewCopy = axisView;
  [viewCopy bounds];
  if (!CGRectIsEmpty(v15) && [(HKGraphView *)self contentOffsetIsSet])
  {
    if (![(HKGraphView *)self _needsYAxisUpdateDuringRender]|| ![(HKGraphView *)self _configureYAxisViewIfNeeded])
    {
      v10 = 0;
      goto LABEL_7;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__HKGraphView__skipRenderingToView_yAxisView_context_chartRect___block_invoke;
    v12[3] = &unk_1E81B5AD0;
    v13 = viewCopy;
    v14 = axisViewCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  v10 = 1;
LABEL_7:

  return v10;
}

uint64_t __64__HKGraphView__skipRenderingToView_yAxisView_context_chartRect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsRender];
  v2 = *(a1 + 40);

  return [v2 setNeedsRender];
}

- (id)_createRendererSeriesRowFromIndex:(int64_t)index insetDataArea:(CGRect)area drawingToTile:(BOOL)tile
{
  height = area.size.height;
  width = area.size.width;
  y = area.origin.y;
  x = area.origin.x;
  v11 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:?];
  v12 = [(HKGraphView *)self _visibleSeriesForSeriesGroup:v11];
  selectionContext = [v11 selectionContext];
  if (selectionContext)
  {
    selectionContext2 = [v11 selectionContext];
    closestSeriesToSelection = [selectionContext2 closestSeriesToSelection];
  }

  else
  {
    closestSeriesToSelection = 0;
  }

  v16 = objc_alloc(MEMORY[0x1E695DEC8]);
  selectionContext3 = [v11 selectionContext];
  selectedRangeBoundariesXValue = [selectionContext3 selectedRangeBoundariesXValue];
  v19 = [v16 initWithArray:selectedRangeBoundariesXValue];

  v20 = objc_alloc(MEMORY[0x1E695DEC8]);
  currentSeries = [v11 currentSeries];
  v22 = [v20 initWithArray:currentSeries];

  selectionContext4 = [v11 selectionContext];
  touchPoints = [selectionContext4 touchPoints];
  v25 = [touchPoints count];

  [(HKGraphView *)self _yAxisRectForSeriesGroupRow:index chartRect:x, y, width, height];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (tile)
  {
    axisAnnotationHandler = 0;
  }

  else
  {
    axisAnnotationHandler = [v11 axisAnnotationHandler];
  }

  v35 = [[HKGraphViewRendererSeriesRow alloc] initWithRowSeries:v22 mainSeriesForRow:v12 selectedSeriesForRow:closestSeriesToSelection selectedRangeBoundariesXValue:v19 selectedTouchPointCount:v25 yAxisRect:axisAnnotationHandler axisAnnotationHandler:v27, v29, v31, v33];

  return v35;
}

- (id)_createRendererSeriesConfigurationWithInsetDataArea:(CGRect)area drawingToTile:(BOOL)tile
{
  tileCopy = tile;
  height = area.size.height;
  width = area.size.width;
  y = area.origin.y;
  x = area.origin.x;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v11 = 0;
    do
    {
      height = [(HKGraphView *)self _createRendererSeriesRowFromIndex:v11 insetDataArea:tileCopy drawingToTile:x, y, width, height];
      [v10 addObject:height];

      ++v11;
    }

    while (v11 < [(NSMutableArray *)self->_seriesGroupRows count]);
  }

  v13 = [[HKGraphViewRendererSeriesConfiguration alloc] initWithRendererSeriesRows:v10];

  return v13;
}

- (id)_createRendererWithCurrentStateWithChartRect:(CGRect)rect contentOffset:(CGPoint)offset drawingToTile:(BOOL)tile tileColumn:(int64_t)column effectiveVisibleRangeCadence:(id)cadence effectiveVisibleRangeActive:(id)active actualVisibleRange:(id)range
{
  tileCopy = tile;
  y = offset.y;
  x = offset.x;
  rangeCopy = range;
  activeCopy = active;
  cadenceCopy = cadence;
  [(HKGraphView *)self _dataAreaInsets];
  v14 = v13;
  v16 = v15;
  v82 = v17;
  v73 = v18;
  [(HKGraphView *)self _dataAreaRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v76 = [(HKGraphView *)self _createRendererSeriesConfigurationWithInsetDataArea:tileCopy drawingToTile:?];
  v27 = [HKGraphViewRendererVirtualMarginConfiguration alloc];
  [(HKGraphView *)self virtualLeftMarginWidth];
  v29 = v28;
  [(HKGraphView *)self virtualRightMarginWidth];
  v31 = v30;
  v80 = tileCopy;
  if (tileCopy)
  {
    virtualLeftMarginStyle = 0;
    virtualRightMarginStyle = 0;
  }

  else
  {
    virtualLeftMarginStyle = [(HKGraphView *)self virtualLeftMarginStyle];
    virtualRightMarginStyle = [(HKGraphView *)self virtualRightMarginStyle];
  }

  v72 = rect.size.height - (v14 + v82);
  v71 = [(HKGraphViewRendererVirtualMarginConfiguration *)v27 initWithVirtualLeftMarginWidth:virtualLeftMarginStyle virtualRightMarginWidth:virtualRightMarginStyle virtualLeftMarginStyle:v29 virtualRightMarginStyle:v31];
  [(HKGraphView *)self _topBaselineYValueForChartRect:v20, v22, v24, v26];
  v70 = v34;
  [(HKGraphView *)self _bottomBaselineYValueForChartRect:v20, v22, v24, v26];
  v69 = v35;
  delegate = [(HKGraphView *)self delegate];
  v83 = [delegate seriesSelectionLineColorForGraphView:self];

  v37 = [(HKGraphView *)self _gridlineRangesForChartRect:v20, v22, v24, v26];
  [(HKGraphView *)self _scrollingAreaRect];
  v66 = v39;
  v67 = v38;
  v65 = v40;
  v63 = v41;
  [(HKGraphView *)self _inactiveRightAreaForRect:v20, v22, v24, v26];
  v68 = v42;
  [(HKGraphView *)self zoomScale];
  v44 = v43;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  [(HKGraphView *)self _xAxisCoordinateTransformWithContentOffset:x zoomScale:y chartRect:v43, v20, v22, v24, v26];
  _drawingDuringScrolling = [(HKGraphView *)self _drawingDuringScrolling];
  resolutionFromTraitCollectionAttributes = [(HKGraphView *)self resolutionFromTraitCollectionAttributes];
  v59 = [HKGraphViewRenderer alloc];
  xAxisDateZoom = self->_xAxisDateZoom;
  renderView = self->_renderView;
  animationAutoscaleInProgress = [(HKGraphView *)self animationAutoscaleInProgress];
  xAxis = self->_xAxis;
  outlineColor = [(HKGraphView *)self outlineColor];
  capturedTileBackgroundColor = [(HKGraphView *)self capturedTileBackgroundColor];
  selectionStyle = [(HKGraphView *)self selectionStyle];
  disableXAxis = [(HKGraphView *)self disableXAxis];
  [(HKGraphView *)self xAxisSpace];
  v51 = v50;
  measuringStartupTime = [(HKGraphView *)self measuringStartupTime];
  v85[0] = v86;
  v85[1] = v87;
  v85[2] = v88;
  LOBYTE(v57) = measuringStartupTime;
  LOBYTE(v56) = disableXAxis;
  BYTE1(v55) = animationAutoscaleInProgress;
  LOBYTE(v55) = _drawingDuringScrolling;
  v53 = [(HKGraphViewRenderer *)v59 initWithRendererSeries:v76 renderingView:renderView fullChartRect:resolutionFromTraitCollectionAttributes insetChartRect:xAxisDateZoom insetDataArea:v80 rightHandInactiveArea:column zoomScale:rect.origin.x traitResolution:rect.origin.y contentOffset:rect.size.width xAxisDateZoom:rect.size.height drawingToTile:rect.origin.x + v16 tileColumn:rect.origin.y + v14 drawingDuringScrolling:rect.size.width - (v16 + v73) drawingDuringAutoscale:v72 xAxis:*&v20 xAxisCoordinateTransform:*&v22 virtualMargins:*&v24 outlineColor:*&v26 tileBackgroundColor:v68 topBaselineY:*&v44 bottomBaselineY:*&x selectionLineColor:*&y selectionLineStyle:v55 disableXAxis:xAxis currentXAxisHeight:v85 gridlineRanges:v71 effectiveVisibleRangeCadence:outlineColor effectiveVisibleRangeActive:capturedTileBackgroundColor actualVisibleRange:v70 scrollingAreaRect:v69 chartMeasuringStartupTime:v83, selectionStyle, v56, v51, v37, cadenceCopy, activeCopy, rangeCopy, v67, v66, v65, v63, v57];

  return v53;
}

- (void)_performPostAxisUpdates:(int64_t)updates newXAxisHeight:(double)height
{
  if ((updates & 4) != 0)
  {
    [(HKGraphView *)self _configureYAxisViewIfNeeded];
    [(HKGraphRenderer *)self->_yAxisLabelContent setNeedsRender];
    self->_xAxisSpace = height;
    [(HKGraphView *)self _verticalAxisRect];
    [(HKGraphRenderer *)self->_yAxisLabelContent setFrame:?];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__HKGraphView__performPostAxisUpdates_newXAxisHeight___block_invoke;
    v8[3] = &unk_1E81B55A8;
    v8[4] = self;
    [(HKGraphView *)self _updateScrollViewPropertiesIgnoringScrollViewCallbacks:v8];
    [(HKGraphView *)self autoscaleYAxesAnimated:0 specificRange:0 onlyIfNeeded:0 completion:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__HKGraphView__performPostAxisUpdates_newXAxisHeight___block_invoke_2;
    v7[3] = &unk_1E81B55A8;
    v7[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  else if ((updates & 1) != 0 && [(HKGraphView *)self _needsYAxisUpdateDuringRender])
  {
    [(HKGraphView *)self _configureYAxisViewIfNeeded];
    yAxisLabelContent = self->_yAxisLabelContent;

    [(HKGraphRenderer *)yAxisLabelContent setNeedsRender];
  }
}

uint64_t __54__HKGraphView__performPostAxisUpdates_newXAxisHeight___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateZoomForParameters];
  v2 = *(a1 + 32);

  return [v2 _reconfigureScrollingTiles];
}

uint64_t __54__HKGraphView__performPostAxisUpdates_newXAxisHeight___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 464) setNeedsRender];
  [*(*(a1 + 32) + 488) setNeedsRender];
  v2 = *(a1 + 32);
  [v2 _dataAreaRect];

  return [v2 _layoutLegendsForChartRect:?];
}

- (void)_performPostLeftMarginUpdates
{
  [(HKGraphView *)self _dataAreaRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(HKGraphView *)self leftMarginViewRect];
  [(HKBorderLineView *)self->_leftMarginView setFrame:?];
  v11 = [(HKGraphView *)self _gridlineRangesForChartRect:v4, v6, v8, v10];
  [(HKBorderLineView *)self->_leftMarginView setVerticalDrawRanges:v11];
}

- (void)graphRenderer:(id)renderer shouldRenderSceneWithContext:(CGContext *)context chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rendererCopy = renderer;
  yAxisLabelContent = self->_yAxisLabelContent;
  v28 = rendererCopy;
  if (self->_renderView == rendererCopy)
  {
    if ([(HKGraphView *)self _skipRenderingToView:rendererCopy yAxisView:yAxisLabelContent context:context chartRect:x, y, width, height])
    {
      goto LABEL_12;
    }

    [(UIScrollView *)self->_scrollView contentOffset];
    v18 = v17;
    v20 = v19;
    effectiveVisibleRangeCadence = [(HKGraphView *)self effectiveVisibleRangeCadence];
    effectiveVisibleRangeActive = [(HKGraphView *)self effectiveVisibleRangeActive];
    actualVisibleRange = [(HKGraphView *)self actualVisibleRange];
    v24 = [(HKGraphView *)self _createRendererWithCurrentStateWithChartRect:0 contentOffset:-1 drawingToTile:effectiveVisibleRangeCadence tileColumn:effectiveVisibleRangeActive effectiveVisibleRangeCadence:actualVisibleRange effectiveVisibleRangeActive:x actualVisibleRange:y, width, height, v18, v20];

    [v24 renderContentToContext:context];
    postUpdates = [v24 postUpdates];
    [v24 postXAxisHeight];
    [(HKGraphView *)self _performPostAxisUpdates:postUpdates newXAxisHeight:?];
    [(HKGraphView *)self _performPostLegendUpdates];
    postOverlayData = [v24 postOverlayData];
    [(HKGraphView *)self _drawOverlaysIfNeeded:postOverlayData];

    [(HKGraphView *)self _performPostLeftMarginUpdates];
    postSelectionPoints = [v24 postSelectionPoints];
    [(HKGraphView *)self _updateAllLegendsWithSelectedValues:postSelectionPoints];
  }

  else if (yAxisLabelContent == rendererCopy)
  {
    [(HKGraphView *)self _dataAreaInsets];
    if (width - (v14 + v16) > 0.0 && height - (v13 + v15) > 0.0)
    {
      [(HKGraphView *)self _renderYAxisLabelsInContext:context chartRect:x + v14, y + v13];
    }
  }

  [(HKGraphView *)self _handleTilesInitialRender];
  [(HKGraphView *)self _scheduleExternalSelectionIfNeeded];
  if ([(HKGraphView *)self measuringStartupTime]&& self->_renderView == v28)
  {
    [(HKGraphView *)self _recordLastRenderTime];
  }

  [(HKGraphView *)self _notifyGraphViewRendered];
LABEL_12:
}

- (BOOL)allSeriesHaveDataAvailable
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_seriesGroupRows;
  v18 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v18)
  {
    v4 = *v25;
    v19 = v3;
    v17 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        currentSeries = [v6 currentSeries];
        v8 = [currentSeries countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(currentSeries);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              v13 = [(HKGraphView *)self _resolutionFromSeries:v12];
              actualVisibleRange = [(HKGraphView *)self actualVisibleRange];
              LODWORD(v12) = [v12 hasAnyDataLoadedInXAxisRange:actualVisibleRange dateZoom:self->_xAxisDateZoom resolution:v13];

              if (!v12)
              {

                v15 = 0;
                v3 = v19;
                goto LABEL_19;
              }
            }

            v9 = [currentSeries countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v3 = v19;
        v4 = v17;
      }

      v15 = 1;
      v18 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v18);
  }

  else
  {
    v15 = 1;
  }

LABEL_19:

  return v15;
}

- (void)setZoomScale:(double)scale animated:(BOOL)animated
{
  [(UIScrollView *)self->_scrollView zoomScale];
  if (!HKUIEqualCGFloats(v6, scale))
  {
    [(UIScrollView *)self->_scrollView contentOffset];
    v8 = v7;
    [(UIScrollView *)self->_scrollView contentSize];
    v10 = v9;
    [(UIScrollView *)self->_scrollView bounds];
    v11 = v10 - CGRectGetWidth(v16) + -2.0;
    [(UIScrollView *)self->_scrollView setZoomScale:scale];
    if (v8 >= v11)
    {
      [(UIScrollView *)self->_scrollView contentSize];
      v13 = v12;
      [(UIScrollView *)self->_scrollView bounds];
      v14 = v13 - CGRectGetWidth(v17);
      [(UIScrollView *)self->_scrollView contentOffset];

      [(HKGraphView *)self setContentOffset:0 animated:v14];
    }
  }
}

- (CGPoint)contentOffset
{
  [(UIScrollView *)self->_scrollView contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  y = offset.y;
  x = offset.x;
  [(UIScrollView *)self->_scrollView contentOffset];
  v9 = v8;
  if (!HKUIEqualCGFloats(v10, x) || !HKUIEqualCGFloats(v9, y))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__HKGraphView_setContentOffset_animated___block_invoke;
    v11[3] = &unk_1E81B6430;
    v11[4] = self;
    *&v11[5] = x;
    *&v11[6] = y;
    animatedCopy = animated;
    [(HKGraphView *)self _updateScrollViewPropertiesIgnoringScrollViewCallbacks:v11];
  }

  self->_contentOffsetIsSet = 1;
}

- (BOOL)stillAnimating:(id)animating
{
  layer = [(HKGraphRenderer *)self->_renderView layer];
  animationKeys = [layer animationKeys];
  v6 = [animationKeys count] || -[UIScrollView isDecelerating](self->_scrollView, "isDecelerating") || -[UIScrollView isTracking](self->_scrollView, "isTracking") || -[UIScrollView isZooming](self->_scrollView, "isZooming") || -[UIScrollView isZoomBouncing](self->_scrollView, "isZoomBouncing");

  return v6;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (self->_shouldListenToScrollViewDelegate)
  {
    v25 = scrollCopy;
    [(HKGraphView *)self _dataAreaRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(HKGraphView *)self zoomScale];
    v14 = v13;
    [(HKGraphView *)self contentOffset];
    v16 = v15;
    v18 = v17;
    v19 = [(HKAxis *)self->_xAxis rangeForChartRect:v6 zoomScale:v8 contentOffset:v10, v12, v14, v15, v17];
    actualVisibleRange = self->_actualVisibleRange;
    self->_actualVisibleRange = v19;

    v21 = [(HKGraphView *)self _effectiveVisibleRangeFromActualVisibleRange:self->_actualVisibleRange];
    effectiveVisibleRangeCadence = self->_effectiveVisibleRangeCadence;
    self->_effectiveVisibleRangeCadence = v21;

    [(HKGraphView *)self _updateDateZoomIfNecessary];
    if (-[HKGraphView _tilesAreEnabled](self, "_tilesAreEnabled") && (([v25 isDragging] & 1) != 0 || (objc_msgSend(v25, "isDecelerating") & 1) != 0 || objc_msgSend(v25, "isScrollAnimating")))
    {
      objc_storeStrong(&self->_effectiveVisibleRangeActive, self->_effectiveVisibleRangeCadence);
      [(HKGraphView *)self _showTiles];
      [(HKGraphView *)self _touchTilesForContentOffset:1 applyHysteresis:v16, v18];
      [(HKGraphView *)self _updateLegendsForAllSeriesGroups];
    }

    else
    {
      v23 = [(HKGraphView *)self _rangeFromRange:self->_effectiveVisibleRangeActive withStartOfRange:self->_effectiveVisibleRangeCadence];
      effectiveVisibleRangeActive = self->_effectiveVisibleRangeActive;
      self->_effectiveVisibleRangeActive = v23;

      [(HKGraphRenderer *)self->_renderView setNeedsRender];
    }

    -[HKGraphView _notifyDelegateOfVisibleValueRange:changeContext:](self, "_notifyDelegateOfVisibleValueRange:changeContext:", self->_effectiveVisibleRangeActive, [v25 isDragging]);
    scrollCopy = v25;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(HKGraphView *)self _hideTiles];

    [(HKGraphView *)self _notifyDelegateOfFinishUserScrolling];
  }
}

- (void)_snapXAxisRangeToPreservedRange
{
  if (self->_destinationEffectiveVisibleRangeActive)
  {
    [(HKGraphView *)self _restoreDestinationActiveRange];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  [(HKGraphView *)self _snapXAxisRangeToPreservedRange];
  [(HKGraphView *)self _hideTiles];
  [(HKGraphView *)self _notifyDelegateOfVisibleValueRange:self->_effectiveVisibleRangeActive changeContext:0];

  [(HKGraphView *)self _notifyDelegateOfFinishUserScrolling];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(HKGraphView *)self _snapXAxisRangeToPreservedRange];
  [(HKGraphView *)self _hideTiles];
  [(HKGraphView *)self _notifyDelegateOfVisibleValueRange:self->_effectiveVisibleRangeActive changeContext:0];

  [(HKGraphView *)self _notifyDelegateOfFinishUserScrolling];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = self->_xAxis;
    [(HKGraphView *)self _dataAreaRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(HKGraphView *)self zoomScale];
    v19 = v18;
    [(HKGraphView *)self zoomScale];
    v20 = v9;
    v21 = [(HKAxis *)v9 dateZoomForZoomScale:?];
    v37 = *MEMORY[0x1E695EFF8];
    v22 = [(HKAxis *)self->_xAxis rangeForChartRect:v11 zoomScale:v13 contentOffset:v15, v17, v19, offset->x, offset->y];
    v23 = [(HKGraphView *)self _effectiveVisibleRangeFromActualVisibleRange:v22];

    delegate = [(HKGraphView *)self delegate];
    if (delegate && (v25 = delegate, [(HKGraphView *)self delegate], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_opt_respondsToSelector(), v26, v25, (v27 & 1) != 0))
    {
      delegate2 = [(HKGraphView *)self delegate];
      v29 = [delegate2 defaultAlignmentForTimeScope:v21];
    }

    else
    {
      v29 = 3;
    }

    effectiveAxisRange = self->_effectiveAxisRange;
    currentCalendar = [(HKGraphView *)self currentCalendar];
    v32 = [HKGraphZoomLevelConfiguration snappingRangeForRange:v23 axisRange:effectiveAxisRange timeScope:v21 velocity:currentCalendar calendar:self->_scrollingOptions options:v29 alignment:x, y];

    [(HKGraphView *)self _dataAreaRect];
    v33 = [(HKGraphView *)self _actualVisibleRangeFromEffectiveVisibleRange:v32 dataAreaRect:?];
    [(HKAxis *)v20 offsetForValueRange:v33 chartRect:0 zoomScaleOut:&v37 contentOffsetOut:v11, v13, v15, v17];
    *offset = v37;
    v34 = self->_effectiveAxisRange;
    currentCalendar2 = [(HKGraphView *)self currentCalendar];
    v36 = [HKGraphZoomLevelConfiguration activeRangeFromCadenceRange:v32 timeScope:v21 axisRange:v34 calendar:currentCalendar2];

    [(HKGraphView *)self _preserveDestinationActiveRange:v36];
  }
}

- (void)_reloadViewScope
{
  [(HKGraphView *)self _updateDateZoomIfNecessary];
  [(HKGraphView *)self _loadSeriesForZoom:self->_xAxisDateZoom];
  [(HKGraphRenderer *)self->_renderView setNeedsRender];
  [(HKGraphRenderer *)self->_yAxisLabelContent setNeedsRender];

  [(HKGraphView *)self _createLegendsIfNecessary];
}

- (void)_updateDateZoomIfNecessary
{
  xAxisDateZoom = self->_xAxisDateZoom;
  xAxis = self->_xAxis;
  [(HKGraphView *)self zoomScale];
  v5 = [(HKAxis *)xAxis dateZoomForZoomScale:?];
  if (v5 != xAxisDateZoom)
  {
    self->_xAxisDateZoom = v5;

    [(HKGraphView *)self _notifyDateZoomDidChangeFromValue:xAxisDateZoom toValue:v5];
  }
}

- (double)_maxTimeThreshold
{
  transform = [(HKAxis *)self->_xAxis transform];
  maxValue = [(HKValueRange *)self->_effectiveVisibleRangeCadence maxValue];
  [transform coordinateForValue:maxValue];
  v6 = v5;
  transform2 = [(HKAxis *)self->_xAxis transform];
  minValue = [(HKValueRange *)self->_effectiveVisibleRangeCadence minValue];
  [transform2 coordinateForValue:minValue];
  v10 = v6 - v9;

  return v10;
}

- (void)_updateAxisZoomScaleValueRange
{
  if ([(HKGraphView *)self _axisRangeIsDateRange])
  {
    [(HKGraphView *)self _maxTimeThreshold];
    v4 = v3;
    zoomScaleEngine = [(HKAxis *)self->_xAxis zoomScaleEngine];
    [zoomScaleEngine setUnitZoomScaleValueRangeForTimeInterval:v4];
  }
}

- (double)_maximumZoomScale
{
  if ([(HKGraphView *)self _axisRangeIsDateRange]&& self->_contentWidthFromTimeScope)
  {
    result = 1.0;
    if (self->_enableZoomInGesture)
    {
      [(HKGraphView *)self _maxTimeThreshold];
      v5 = v4;
      v6 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:self->_minimumDateZoom];
      [v6 zoomLevelThreshold];
      v8 = v7;

      return v5 / v8;
    }
  }

  else
  {
    result = 1.0;
    if (self->_actualVisibleRange && self->_actualAxisRange)
    {
      v9 = objc_opt_class();
      actualAxisRange = [(HKGraphView *)self actualAxisRange];
      xAxis = [(HKGraphView *)self xAxis];
      [v9 _modelCoordinateSpanForRange:actualAxisRange axis:xAxis];
      v13 = v12;

      v14 = objc_opt_class();
      actualVisibleRange = [(HKGraphView *)self actualVisibleRange];
      xAxis2 = [(HKGraphView *)self xAxis];
      [v14 _modelCoordinateSpanForRange:actualVisibleRange axis:xAxis2];
      v18 = v17;

      v19 = v18 >= v13 || v18 <= 0.0;
      result = v13 / v18;
      if (v19)
      {
        return 1.0;
      }
    }
  }

  return result;
}

- (double)_contentWidth
{
  [(HKGraphView *)self _dataAreaRect];
  v4 = v3;
  v5 = objc_opt_class();
  effectiveAxisRange = [(HKGraphView *)self effectiveAxisRange];
  xAxis = [(HKGraphView *)self xAxis];
  [v5 _modelCoordinateSpanForRange:effectiveAxisRange axis:xAxis];
  v9 = v8;

  v10 = objc_opt_class();
  effectiveVisibleRangeCadence = [(HKGraphView *)self effectiveVisibleRangeCadence];
  xAxis2 = [(HKGraphView *)self xAxis];
  [v10 _modelCoordinateSpanForRange:effectiveVisibleRangeCadence axis:xAxis2];
  v14 = v13;

  if (fabs(v14) < 2.22044605e-16)
  {
    return v4;
  }

  v16 = self->_virtualLeftMarginWidth + self->_virtualRightMarginWidth;
  return v16 + (v4 - v16) * (v9 / v14);
}

- (void)_updateZoomForParameters
{
  [(HKGraphView *)self _maximumZoomScale];
  v4 = v3;
  [(HKGraphView *)self _contentWidth];
  v6 = v5;
  [(HKGraphView *)self _dataAreaRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = HKUICeilToScreenScale(v6);
  v19.origin.x = v8;
  v19.origin.y = v10;
  v19.size.width = v12;
  v19.size.height = v14;
  Height = CGRectGetHeight(v19);
  [(UIScrollView *)self->_scrollView setZoomScale:1.0];
  [(UIScrollView *)self->_scrollView setContentSize:v15, Height];
  [(UIScrollView *)self->_scrollView setMinimumZoomScale:1.0];
  scrollView = self->_scrollView;

  [(UIScrollView *)scrollView setMaximumZoomScale:v4];
}

- (void)_restoreDestinationActiveRange
{
  destinationEffectiveVisibleRangeActive = [(HKGraphView *)self destinationEffectiveVisibleRangeActive];

  if (destinationEffectiveVisibleRangeActive)
  {
    destinationEffectiveVisibleRangeActive2 = [(HKGraphView *)self destinationEffectiveVisibleRangeActive];
    v5 = [(HKGraphView *)self _setRangesForActiveVisibleRange:destinationEffectiveVisibleRangeActive2];

    if (v5)
    {
      [(HKGraphView *)self _finishSelection];
    }

    [(HKGraphView *)self setDestinationEffectiveVisibleRangeActive:0];
    renderView = self->_renderView;

    [(HKGraphRenderer *)renderView setNeedsRender];
  }
}

- (void)_scrollToCurrentVisibleRangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(HKGraphView *)self _dataAreaRect];
  if (self->_effectiveVisibleRangeCadence)
  {
    if (self->_xAxis)
    {
      v9 = v5;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      if (!CGRectIsEmpty(*&v5))
      {
        v13 = *MEMORY[0x1E695EFF8];
        [(HKAxis *)self->_xAxis offsetForValueRange:self->_actualVisibleRange chartRect:0 zoomScaleOut:&v13 contentOffsetOut:v9, v10, v11, v12];
        if (animatedCopy)
        {
          [(HKGraphView *)self _preserveDestinationActiveRange:self->_effectiveVisibleRangeActive];
        }

        [(HKGraphView *)self setContentOffset:animatedCopy animated:v13];
      }
    }
  }
}

- (void)_setNeedsUpdateGraphViewConfiguration
{
  self->_needsUpdateGraphViewConfiguration = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HKGraphView__setNeedsUpdateGraphViewConfiguration__block_invoke;
  block[3] = &unk_1E81B55A8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateGraphViewConfigurationIfNecessary
{
  if (self->_needsUpdateGraphViewConfiguration)
  {
    self->_needsUpdateGraphViewConfiguration = 0;
    [(HKGraphView *)self _updateGraphViewConfiguration];
  }
}

- (void)_updateScrollViewPropertiesIgnoringScrollViewCallbacks:(id)callbacks
{
  self->_shouldListenToScrollViewDelegate = 0;
  (*(callbacks + 2))(callbacks, a2);
  self->_shouldListenToScrollViewDelegate = 1;
}

- (void)_addTapGestureRecognizerForTapOnView:(id)view
{
  v4 = MEMORY[0x1E69DD060];
  viewCopy = view;
  v6 = [[v4 alloc] initWithTarget:self action:sel__tapOnViewAction_];
  [v6 setNumberOfTapsRequired:1];
  [viewCopy addGestureRecognizer:v6];
}

- (void)_tapOnViewAction:(id)action
{
  [(HKGraphView *)self _finishSelection];

  [(HKGraphView *)self _notifyDelegateOfTapOnYAxis];
}

- (void)setDetailView:(id)view
{
  viewCopy = view;
  detailView = self->_detailView;
  if (detailView != viewCopy)
  {
    v7 = viewCopy;
    if (detailView)
    {
      [(UIView *)detailView removeFromSuperview];
    }

    objc_storeStrong(&self->_detailView, view);
    if (self->_detailView)
    {
      [(HKGraphView *)self addSubview:?];
      [(HKGraphView *)self _layoutDetailView];
    }

    viewCopy = v7;
    if ((v7 == 0) != (detailView == 0))
    {
      [(HKGraphView *)self _setNeedsUpdateGraphViewConfiguration];
      viewCopy = v7;
    }
  }
}

- (void)_addTapGestureRecognizerForTogglingStickyToView:(id)view
{
  v4 = MEMORY[0x1E69DD060];
  viewCopy = view;
  v6 = [[v4 alloc] initWithTarget:self action:sel__toggleStickySelectionAction_];
  [v6 setNumberOfTapsRequired:1];
  [viewCopy addGestureRecognizer:v6];
}

- (void)_toggleStickySelectionAction:(id)action
{
  actionCopy = action;
  [(HKGraphView *)self _invalidateExternalSelectionCancelTimer];
  [(HKGraphView *)self _cancelExternalSelection];
  [actionCopy locationInView:self->_renderView];
  v6 = v5;
  v8 = v7;

  [(HKGraphView *)self _touchAtPoint:v6, v8];
}

- (void)_touchAtPoint:(CGPoint)point
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_enableStickySelection && !self->_disableSelection)
  {
    y = point.y;
    x = point.x;
    [(HKGraphView *)self _selectionRecognizerDidBeginWithTouchPoint:?];
    [(HKGraphView *)self _activateStickySelection];
    v6 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    v8[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(HKGraphView *)self _selectionRecognizerDidMoveWithTouchPoints:v7];
  }
}

- (void)setDisableSelection:(BOOL)selection
{
  selectionCopy = selection;
  self->_disableSelection = selection;
  scrollView = self->_scrollView;
  if (selectionCopy)
  {
    [(HKGraphView *)self _removeSelectionRecognizerFromView:scrollView];
  }

  else
  {
    [(HKGraphView *)self _addSelectionRecognizerToView:scrollView];
  }
}

- (int64_t)_currentSelectionStateForSeriesGroup:(id)group
{
  groupCopy = group;
  selectionContext = [groupCopy selectionContext];
  if (selectionContext)
  {
    selectionContext2 = [groupCopy selectionContext];
    selectionState = [selectionContext2 selectionState];
  }

  else
  {
    selectionState = 0;
  }

  return selectionState;
}

- (void)_enumerateSeriesSelectionRegionsForSeriesGroup:(id)group withBlock:(id)block
{
  groupCopy = group;
  blockCopy = block;
  selectionContext = [groupCopy selectionContext];
  [selectionContext seriesSelectionRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v25.origin.x = v9;
  v25.origin.y = v11;
  v25.size.width = v13;
  v25.size.height = v15;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  Width = CGRectGetWidth(v26);
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  MinY = CGRectGetMinY(v27);
  selectionContext2 = [groupCopy selectionContext];
  selectionAreaMapping = [selectionContext2 selectionAreaMapping];
  v21 = [selectionAreaMapping count];

  if (v21 >= 1)
  {
    v22 = 0;
    do
    {
      v24 = 0;
      blockCopy[2](blockCopy, v22, &v24, MinX, MinY + v22 * 15.0, Width, 15.0);
      if (v24)
      {
        break;
      }
    }

    while (v21 - 1 != v22++);
  }
}

- (id)_closestGraphSeriesForTouchPoint:(CGPoint)point seriesGroup:(id)group
{
  y = point.y;
  x = point.x;
  groupCopy = group;
  if (-[HKGraphView _currentSelectionStateForSeriesGroup:](self, "_currentSelectionStateForSeriesGroup:", groupCopy) == 2 || ([groupCopy selectionContext], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "seriesSelectionRect"), v10 = v9, v12 = v11, v14 = v13, v16 = v15, v8, v35.origin.x = v10, v35.origin.y = v12, v35.size.width = v14, v35.size.height = v16, x < CGRectGetMinX(v35)) || (v36.origin.x = v10, v36.origin.y = v12, v36.size.width = v14, v36.size.height = v16, x > CGRectGetMaxX(v36)))
  {
    v17 = 0;
  }

  else
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__2;
    v32 = __Block_byref_object_dispose__2;
    v33 = 0;
    v37.origin.x = v10;
    v37.origin.y = v12;
    v37.size.width = v14;
    v37.size.height = v16;
    if (y >= CGRectGetMinY(v37))
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __60__HKGraphView__closestGraphSeriesForTouchPoint_seriesGroup___block_invoke;
      v23[3] = &unk_1E81B6458;
      v25 = &v28;
      v24 = groupCopy;
      v26 = x;
      v27 = y;
      [(HKGraphView *)self _enumerateSeriesSelectionRegionsForSeriesGroup:v24 withBlock:v23];
      selectionContext = v24;
    }

    else
    {
      selectionContext = [groupCopy selectionContext];
      selectionAreaMapping = [selectionContext selectionAreaMapping];
      firstObject = [selectionAreaMapping firstObject];
      v22 = v29[5];
      v29[5] = firstObject;
    }

    v17 = v29[5];
    _Block_object_dispose(&v28, 8);
  }

  return v17;
}

BOOL __60__HKGraphView__closestGraphSeriesForTouchPoint_seriesGroup___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v14 = [*(a1 + 32) selectionContext];
  v15 = [v14 selectionAreaMapping];
  v16 = [v15 objectAtIndexedSubscript:a2];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v20.origin.x = a4;
  v20.origin.y = a5;
  v20.size.width = a6;
  v20.size.height = a7;
  result = CGRectContainsPoint(v20, *(a1 + 48));
  if (result)
  {
    *a3 = 1;
  }

  return result;
}

- (void)_addSelectionRecognizerToView:(id)view
{
  if (!self->_multiTouchGestureRecognizer)
  {
    viewCopy = view;
    v4 = [[HKMultiTouchPressGestureRecognizer alloc] initWithTarget:self action:sel__selectionRecognizerDidUpdate_];
    multiTouchGestureRecognizer = self->_multiTouchGestureRecognizer;
    self->_multiTouchGestureRecognizer = v4;

    [(HKMultiTouchPressGestureRecognizer *)self->_multiTouchGestureRecognizer setDelegate:self];
    [(HKMultiTouchPressGestureRecognizer *)self->_multiTouchGestureRecognizer setMaximumNumberOfTouches:2];
    [(HKMultiTouchPressGestureRecognizer *)self->_multiTouchGestureRecognizer setRequiredPressDelay:0.2];
    [viewCopy addGestureRecognizer:self->_multiTouchGestureRecognizer];
  }
}

- (void)_removeSelectionRecognizerFromView:(id)view
{
  multiTouchGestureRecognizer = self->_multiTouchGestureRecognizer;
  if (multiTouchGestureRecognizer)
  {
    [view removeGestureRecognizer:multiTouchGestureRecognizer];
    v5 = self->_multiTouchGestureRecognizer;
    self->_multiTouchGestureRecognizer = 0;
  }

  [(HKGraphView *)self _finishSelection];
}

- (void)_selectionRecognizerDidUpdate:(id)update
{
  updateCopy = update;
  state = [updateCopy state];
  if ((state - 3) < 3)
  {
    [(HKGraphView *)self _selectionRecognizerDidFinish:updateCopy];
LABEL_9:
    v6 = updateCopy;
    goto LABEL_10;
  }

  if (state == 2)
  {
    touches = [updateCopy touches];
    v8 = [(HKGraphView *)self _touchesActuallyMoved:touches];

    v6 = updateCopy;
    if (!v8)
    {
      goto LABEL_10;
    }

    [(HKGraphView *)self _selectionRecognizerDidMove:updateCopy];
    goto LABEL_9;
  }

  v5 = state == 1;
  v6 = updateCopy;
  if (v5)
  {
    [(HKGraphView *)self _selectionRecognizerDidBegin:updateCopy];
    goto LABEL_9;
  }

LABEL_10:
}

- (BOOL)_touchesActuallyMoved:(id)moved
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  movedCopy = moved;
  v5 = [movedCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(movedCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        [v9 previousLocationInView:{self, v18}];
        v11 = v10;
        v13 = v12;
        [v9 locationInView:self];
        if (hypot(v11 - v14, v13 - v15) > 2.22044605e-16)
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v6 = [movedCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_closestSeriesToPoint:(CGPoint)point allSeries:(id)series
{
  v44 = *MEMORY[0x1E69E9840];
  seriesCopy = series;
  [(HKGraphView *)self _dataAreaRect];
  v33 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(HKGraphView *)self zoomScale];
  v14 = v13;
  [(HKGraphView *)self contentOffset];
  v16 = v15;
  v18 = v17;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  [(HKGraphView *)self _xAxisCoordinateTransform];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = seriesCopy;
  v20 = [v19 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v37;
    v24 = 1.79769313e308;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        v27 = [(HKGraphView *)self _resolutionFromSeries:v26];
        xAxis = self->_xAxis;
        v35[0] = v40;
        v35[1] = v41;
        v35[2] = v42;
        [v26 distanceFromTouchPoint:xAxis inChartRect:v27 xAxis:v35 zoomScale:point.x resolution:point.y contentOffset:v33 xAxisTransform:{v8, v10, v12, v14, v16, v18}];
        if (v29 < v24)
        {
          v30 = v29;
          v31 = v26;

          v22 = v31;
          v24 = v30;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)gestureWillBeginWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__HKGraphView_gestureWillBeginWithRecognizer___block_invoke;
  v6[3] = &unk_1E81B6480;
  v6[4] = &v7;
  [(HKGraphView *)self _walkAllSeries:v6];
  if (*(v8 + 24))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(HKMultiTouchPressGestureRecognizer *)self->_multiTouchGestureRecognizer setMaximumNumberOfTouches:v5];
  _Block_object_dispose(&v7, 8);
}

uint64_t __46__HKGraphView_gestureWillBeginWithRecognizer___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 supportsMultiTouchSelection];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (CGPoint)_touchPointForSeriesGroupIndex:(int64_t)index originalTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(HKGraphView *)self _dataAreaRect];
  v9 = (y / v8 + index) * (v8 / [(NSMutableArray *)self->_seriesGroupRows count]);
  v10 = x;
  result.y = v9;
  result.x = v10;
  return result;
}

- (void)_selectionRecognizerDidBegin:(id)begin
{
  beginCopy = begin;
  v4 = [beginCopy touchAtIndex:0];
  [v4 locationInView:self->_renderView];
  v6 = v5;
  v8 = v7;

  [(HKGraphView *)self _selectionRecognizerDidBeginWithTouchPoint:v6, v8];
  [(HKGraphView *)self _invalidateExternalSelectionCancelTimer];
  [(HKGraphView *)self _selectionRecognizerDidMove:beginCopy];
}

- (void)_selectionRecognizerDidBeginWithTouchPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v6 = 0;
    do
    {
      [(HKGraphView *)self _touchPointForSeriesGroupIndex:v6 originalTouchPoint:x, y];
      [(HKGraphView *)self _handleStartTouchPoint:v6++ seriesGroupRow:?];
    }

    while (v6 < [(NSMutableArray *)self->_seriesGroupRows count]);
  }

  [(HKGraphView *)self _notifyDidBeginSelection];
}

- (void)_handleStartTouchPoint:(CGPoint)point seriesGroupRow:(int64_t)row
{
  v67 = *MEMORY[0x1E69E9840];
  [(HKGraphView *)self _dataAreaRect];
  [(HKGraphView *)self _yAxisRectForSeriesGroupRow:row chartRect:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v41 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:row];
  [(HKGraphView *)self zoomScale];
  v15 = v14;
  [(HKGraphView *)self contentOffset];
  v17 = v16;
  v19 = v18;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  [(HKGraphView *)self _xAxisCoordinateTransform];
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  currentSeries = [v41 currentSeries];
  v22 = [currentSeries countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v22)
  {
    v23 = *v60;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(currentSeries);
        }

        v25 = *(*(&v59 + 1) + 8 * i);
        v26 = [(HKGraphView *)self _resolutionFromSeries:v25];
        if ([v25 allowsSelection])
        {
          xAxis = self->_xAxis;
          v56 = v63;
          v57 = v64;
          v58 = v65;
          if ([v25 containsCoordinatesInChartRect:xAxis xAxis:v26 zoomScale:&v56 resolution:v7 contentOffset:v9 xAxisTransform:{v11, v13, v15, v17, v19}])
          {
            [v20 addObject:v25];
          }
        }
      }

      v22 = [currentSeries countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v22);
  }

  v40 = [(HKGraphView *)self _closestSeriesToPoint:v20 allSeries:point.x, point.y];
  [v20 removeObject:v40];
  v45 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v40, 0}];
  v68.origin.x = v7;
  v68.origin.y = v9;
  v68.size.width = v11;
  v68.size.height = v13;
  MinY = CGRectGetMinY(v68);
  v69.origin.x = v7;
  v69.origin.y = v9;
  v69.size.width = v11;
  v69.size.height = v13;
  MaxY = CGRectGetMaxY(v69);
  if ([v20 count])
  {
    v29 = ((MaxY - point.y) / 15.0) - 1;
    v30 = ((point.y - MinY) / 15.0) - 1;
    v43 = MEMORY[0x1E69E9820];
    do
    {
      *&v56 = 0;
      *(&v56 + 1) = &v56;
      v57 = 0x2020000000uLL;
      v55[0] = 0;
      v55[1] = v55;
      v55[2] = 0x2020000000;
      v55[3] = 0x7FEFFFFFFFFFFFFFLL;
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 0;
      v46[0] = v43;
      v46[1] = 3221225472;
      v46[2] = __53__HKGraphView__handleStartTouchPoint_seriesGroupRow___block_invoke;
      v46[3] = &unk_1E81B64D0;
      *&v46[8] = v7;
      *&v46[9] = v9;
      *&v46[10] = v11;
      *&v46[11] = v13;
      *&v46[12] = v15;
      *&v46[13] = v17;
      v49 = v65;
      v48 = v64;
      v47 = v63;
      *&v46[14] = v19;
      pointCopy = point;
      v46[4] = self;
      v46[5] = v55;
      v46[6] = &v56;
      v46[7] = &v51;
      [v20 enumerateObjectsUsingBlock:v46];
      v31 = [v20 objectAtIndexedSubscript:*(*(&v56 + 1) + 24)];
      [v20 removeObjectAtIndex:*(*(&v56 + 1) + 24)];
      if (v52[3])
      {
        v32 = v30 <= 0;
        v30 -= v30 > 0;
        if (v32)
        {
          goto LABEL_17;
        }
      }

      else if (v29 > 0)
      {
LABEL_17:
        v33 = [v45 count];
        --v29;
        goto LABEL_18;
      }

      v33 = 0;
LABEL_18:
      [v45 insertObject:v31 atIndex:v33];

      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(v55, 8);
      _Block_object_dispose(&v56, 8);
    }

    while ([v20 count]);
  }

  v34 = [v45 indexOfObject:v40];
  v35 = [v45 count];
  v36 = objc_alloc_init(_HKGraphViewSelectionContext);
  [v41 setSelectionContext:v36];

  selectionContext = [v41 selectionContext];
  [selectionContext setSelectionState:1];

  selectionContext2 = [v41 selectionContext];
  [selectionContext2 setSeriesSelectionRect:{point.x + -20.0, point.y + v34 * -15.0 + -7.5, 40.0, v35 * 15.0}];

  selectionContext3 = [v41 selectionContext];
  [selectionContext3 setSelectionAreaMapping:v45];
}

void __53__HKGraphView__handleStartTouchPoint_seriesGroupRow___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0x7FEFFFFFFFFFFFFFLL;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v6 = [*(a1 + 32) _resolutionFromSeries:v5];
  v7 = *(*(a1 + 32) + 536);
  v8 = *(a1 + 96);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__HKGraphView__handleStartTouchPoint_seriesGroupRow___block_invoke_2;
  v19[3] = &unk_1E81B64A8;
  v9 = v5;
  v23 = *(a1 + 168);
  v10 = *(a1 + 80);
  v24 = *(a1 + 64);
  v25 = v10;
  v20 = v9;
  v21 = &v30;
  v22 = &v26;
  *&v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 136);
  v18[0] = *(a1 + 120);
  v18[1] = v16;
  v18[2] = *(a1 + 152);
  [v9 enumerateCoordinatesInChartRect:v7 xAxis:v6 zoomScale:v18 resolution:1 contentOffset:0 xAxisTransform:v19 roundToViewScale:*&v10 exclusionOptions:v11 block:{v12, v13, v8, v14, v15}];
  v17 = v31[3];
  if (v17 < *(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *(*(*(a1 + 40) + 8) + 24) = v17;
    *(*(*(a1 + 56) + 8) + 24) = *(v27 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

void __53__HKGraphView__handleStartTouchPoint_seriesGroupRow___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  [*(a1 + 32) distanceFromPoint:*(a1 + 56) blockCoordinate:*(a1 + 64) chartRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v5 = *(*(a1 + 40) + 8);
  if (v4 < *(v5 + 24))
  {
    *(v5 + 24) = v4;
    [*(a1 + 32) yAxisDifferenceToPoint:v7 blockCoordinate:*(a1 + 56) chartRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    *(*(*(a1 + 48) + 8) + 24) = v6 < 0.0;
  }
}

- (CGAffineTransform)_xAxisCoordinateTransformWithContentOffset:(SEL)offset zoomScale:(CGPoint)scale chartRect:(double)rect
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  memset(&v20, 0, sizeof(v20));
  CGAffineTransformMakeTranslation(&v20, -scale.x, 0.0);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinX = CGRectGetMinX(v21);
  t1 = v20;
  CGAffineTransformTranslate(&v19, &t1, MinX, 0.0);
  v20 = v19;
  t1 = v19;
  CGAffineTransformScale(&v19, &t1, rect, 1.0);
  v20 = v19;
  memset(&v19, 0, sizeof(v19));
  [(HKAxis *)self->_xAxis pointTransform];
  HKAffineTransformFromLinearTransforms(&v19, v14, v15, 0.0, 1.0);
  t1 = v19;
  v17 = v20;
  return CGAffineTransformConcat(retstr, &t1, &v17);
}

- (CGAffineTransform)_xAxisCoordinateTransform
{
  [(HKGraphView *)self contentOffset];
  v5 = v4;
  v7 = v6;
  [(HKGraphView *)self zoomScale];
  v9 = v8;
  [(HKGraphView *)self _dataAreaRect];

  return [(HKGraphView *)self _xAxisCoordinateTransformWithContentOffset:v5 zoomScale:v7 chartRect:v9, v10, v11, v12, v13];
}

- (id)_valueForXAxisLocation:(double)location
{
  memset(&v10, 0, sizeof(v10));
  [(HKGraphView *)self _xAxisCoordinateTransform];
  CGAffineTransformInvert(&v10, &v9);
  v5 = round((v10.tx + v10.c * 0.0 + v10.a * location) * 864000.0) / 864000.0;
  transform = [(HKAxis *)self->_xAxis transform];
  v7 = [transform valueForCoordinate:v5];

  return v7;
}

- (void)_updateSelectionContextStateWithTouchPoint:(CGPoint)point seriesGroup:(id)group
{
  y = point.y;
  x = point.x;
  groupCopy = group;
  v7 = [(HKGraphView *)self _currentSelectionStateForSeriesGroup:groupCopy];
  v8 = groupCopy;
  if (v7 != 2)
  {
    v9 = v7;
    v7 = [(HKGraphView *)self _closestGraphSeriesForTouchPoint:groupCopy seriesGroup:x, y];
    if (v7)
    {
      selectionContext2 = v7;
      selectionContext = [groupCopy selectionContext];
      [selectionContext setClosestSeriesToSelection:selectionContext2];
    }

    else
    {
      v8 = groupCopy;
      if (v9 != 1)
      {
        goto LABEL_7;
      }

      selectionContext2 = [groupCopy selectionContext];
      [selectionContext2 setSelectionState:2];
    }

    v8 = groupCopy;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](v7, v8);
}

- ($27550797B7AF9FA742559CA72F5B5CB4)_closestDataPointPathToPoint:(SEL)point seriesGroupRow:(CGPoint)row seriesInGroup:(int64_t)group minimumXDistance:(id)distance xDistanceOut:(double)out
{
  distanceCopy = distance;
  v13 = [(HKGraphView *)self _resolutionFromSeries:distanceCopy];
  [(HKGraphView *)self _dataAreaRect];
  [(HKGraphView *)self _yAxisRectForSeriesGroupRow:group chartRect:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(HKGraphView *)self _virtualMarginInsets];
  v21 = v20;
  [(HKGraphView *)self _virtualMarginInsets];
  v23 = v22;
  [(HKGraphView *)self _virtualMarginInsets];
  v25 = v24;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0x7FEFFFFFFFFFFFFFLL;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v59[3] = 0x7FEFFFFFFFFFFFFFLL;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x4010000000;
  v54 = &unk_1C3DAF4DA;
  v55 = HKGraphSeriesDataPointPathNone;
  v56 = unk_1C3D5D5B8;
  xAxis = self->_xAxis;
  [(HKGraphView *)self zoomScale];
  v35 = v27;
  [(HKGraphView *)self contentOffset];
  v29 = v28;
  v31 = v30;
  [(HKGraphView *)self _xAxisCoordinateTransform];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __103__HKGraphView__closestDataPointPathToPoint_seriesGroupRow_seriesInGroup_minimumXDistance_xDistanceOut___block_invoke;
  v38[3] = &unk_1E81B64F8;
  v32 = distanceCopy;
  rowCopy = row;
  v45 = v21;
  v46 = v15;
  v47 = v17 - (v23 + v25);
  v48 = v19;
  outCopy = out;
  v39 = v32;
  v40 = &v60;
  v41 = v57;
  v42 = v59;
  v43 = &v51;
  [v32 enumerateCoordinatesInChartRect:xAxis xAxis:v13 zoomScale:v50 resolution:0 contentOffset:2 xAxisTransform:v38 roundToViewScale:v21 exclusionOptions:v15 block:{v47, v19, v35, v29, v31}];
  if (a8)
  {
    *a8 = v61[3];
  }

  v33 = *(v52 + 3);
  *&retstr->var0.index = *(v52 + 2);
  *&retstr->var0.resolution = v33;

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);
  _Block_object_dispose(&v60, 8);

  return result;
}

void __103__HKGraphView__closestDataPointPathToPoint_seriesGroupRow_seriesInGroup_minimumXDistance_xDistanceOut___block_invoke(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = a3;
  [v6 xAxisDistanceFromPoint:v13 blockCoordinate:v7 chartRect:{v8, v9, v10, v11, v12}];
  v15 = v14;
  [*(a1 + 32) yAxisDifferenceToPoint:v13 blockCoordinate:*(a1 + 72) chartRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v17 = v16;

  if (v15 <= *(a1 + 120))
  {
    v18 = *(*(*(a1 + 40) + 8) + 24);
    if (v15 <= v18)
    {
      v19 = fabs(v17);
      if (v15 < v18 || (v20 = HKUIEqualDoubles(v15, v18), v20 && v19 < *(*(*(a1 + 56) + 8) + 24)))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *(*(*(a1 + 40) + 8) + 24) = v15;
        *(*(*(a1 + 56) + 8) + 24) = v19;
        v21 = *(*(a1 + 64) + 8);
        v22 = a4[1];
        *(v21 + 32) = *a4;
        *(v21 + 48) = v22;
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }
  }
}

- ($27550797B7AF9FA742559CA72F5B5CB4)_closestDataPointPathToPoint:(SEL)point seriesGroupRow:(CGPoint)row minimumXDistance:(int64_t)distance xDistanceOut:(double)out
{
  y = row.y;
  x = row.x;
  v13 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:?];
  [(HKGraphView *)self _dataAreaRect];
  [(HKGraphView *)self _yAxisRectForSeriesGroupRow:distance chartRect:?];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(HKGraphView *)self _virtualMarginInsets];
  v21 = v20;
  [(HKGraphView *)self _virtualMarginInsets];
  v23 = v22;
  [(HKGraphView *)self _virtualMarginInsets];
  v25 = v24;
  selectionContext = [v13 selectionContext];
  closestSeriesToSelection = [selectionContext closestSeriesToSelection];

  if (closestSeriesToSelection)
  {
    v38 = y;
    outCopy = out;
    v28 = [(HKGraphView *)self _resolutionFromSeries:closestSeriesToSelection];
    v64 = 0;
    v65 = &v64;
    v66 = 0x2020000000;
    v67 = 0x7FEFFFFFFFFFFFFFLL;
    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x2020000000;
    v63[3] = 0x7FEFFFFFFFFFFFFFLL;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x4010000000;
    v58 = &unk_1C3DAF4DA;
    v59 = HKGraphSeriesDataPointPathNone;
    v60 = unk_1C3D5D5B8;
    xAxis = self->_xAxis;
    [(HKGraphView *)self zoomScale];
    v37 = v30;
    [(HKGraphView *)self contentOffset];
    v32 = v31;
    v34 = v33;
    [(HKGraphView *)self _xAxisCoordinateTransform];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __89__HKGraphView__closestDataPointPathToPoint_seriesGroupRow_minimumXDistance_xDistanceOut___block_invoke;
    v41[3] = &unk_1E81B64F8;
    v47 = x;
    v48 = v38;
    v49 = v21;
    v50 = v15;
    v51 = v17 - (v23 + v25);
    v52 = v19;
    v53 = outCopy;
    v42 = closestSeriesToSelection;
    v43 = &v64;
    v44 = v61;
    v45 = v63;
    v46 = &v55;
    [v42 enumerateCoordinatesInChartRect:xAxis xAxis:v28 zoomScale:v54 resolution:0 contentOffset:2 xAxisTransform:v41 roundToViewScale:v21 exclusionOptions:v15 block:{v51, v19, v37, v32, v34}];
    if (a7)
    {
      *a7 = v65[3];
    }

    v35 = *(v56 + 3);
    *&retstr->var0.index = *(v56 + 2);
    *&retstr->var0.resolution = v35;

    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(v61, 8);
    _Block_object_dispose(v63, 8);
    _Block_object_dispose(&v64, 8);
  }

  else
  {
    if (a7)
    {
      *a7 = 1.79769313e308;
    }

    *&retstr->var0.index = HKGraphSeriesDataPointPathNone;
    *&retstr->var0.resolution = unk_1C3D5D5B8;
  }

  return result;
}

void __89__HKGraphView__closestDataPointPathToPoint_seriesGroupRow_minimumXDistance_xDistanceOut___block_invoke(uint64_t a1, uint64_t a2, void *a3, _OWORD *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = a3;
  [v6 xAxisDistanceFromPoint:v13 blockCoordinate:v7 chartRect:{v8, v9, v10, v11, v12}];
  v15 = v14;
  [*(a1 + 32) yAxisDifferenceToPoint:v13 blockCoordinate:*(a1 + 72) chartRect:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v17 = v16;

  if (v15 <= *(a1 + 120))
  {
    v18 = *(*(*(a1 + 40) + 8) + 24);
    if (v15 <= v18)
    {
      v19 = fabs(v17);
      if (v15 < v18 || (v20 = HKUIEqualDoubles(v15, v18), v20 && v19 < *(*(*(a1 + 56) + 8) + 24)))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *(*(*(a1 + 40) + 8) + 24) = v15;
        *(*(*(a1 + 56) + 8) + 24) = v19;
        v21 = *(*(a1 + 64) + 8);
        v22 = a4[1];
        *(v21 + 32) = *a4;
        *(v21 + 48) = v22;
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }
  }
}

- (void)_selectionRecognizerDidMove:(id)move
{
  v18 = *MEMORY[0x1E69E9840];
  orderedTouches = [move orderedTouches];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(orderedTouches, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = orderedTouches;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = MEMORY[0x1E696B098];
        [*(*(&v13 + 1) + 8 * v10) locationInView:{self->_renderView, v13}];
        v12 = [v11 valueWithCGPoint:?];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(HKGraphView *)self _cancelExternalSelection];
  [(HKGraphView *)self _selectionRecognizerDidMoveWithTouchPoints:v5];
}

- (BOOL)_selectionContextsNotPreviouslySelected:(id)selected
{
  firstObject = [selected firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    selectedRangeXValues = [firstObject selectedRangeXValues];

    if (selectedRangeXValues)
    {
      _stickySelectionActive = [(HKGraphView *)self _stickySelectionActive];
      selectedRangeXValues2 = [v5 selectedRangeXValues];
      minValue = [selectedRangeXValues2 minValue];
      [minValue doubleValue];
      v11 = v10;

      if (_stickySelectionActive)
      {
        [(HKGraphView *)self lastSingleSelectionXValue];
        if (vabdd_f64(v11, v12) <= 0.00000011920929)
        {
          [(HKGraphView *)self _resetSingleSelectionXValue];
          v13 = 0;
          goto LABEL_7;
        }
      }

      [(HKGraphView *)self setLastSingleSelectionXValue:v11];
    }
  }

  v13 = 1;
LABEL_7:

  return v13;
}

- (void)_selectionRecognizerDidMoveWithTouchPoints:(id)points
{
  v4 = [(HKGraphView *)self _newPointSelectionContextsWithTouchPoints:points updateViewStates:1];
  if ([v4 count] && -[HKGraphView _selectionContextsNotPreviouslySelected:](self, "_selectionContextsNotPreviouslySelected:", v4))
  {
    [(HKGraphView *)self _notifyDidUpdateSelectionWithPointContext:v4];
  }

  else
  {
    [(HKGraphView *)self _finishSelection];
  }

  [(HKGraphRenderer *)self->_renderView setNeedsRender];
}

- (id)_multiSeriesSelectionContextsWithTouchPoints:(id)points updateViewStates:(BOOL)states
{
  statesCopy = states;
  v96 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  firstObject = [pointsCopy firstObject];
  [firstObject CGPointValue];
  v8 = v7;
  v10 = v9;

  v68 = [pointsCopy count];
  selfCopy = self;
  v70 = pointsCopy;
  if (v68 <= 1)
  {
    v13 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    lastObject = [pointsCopy lastObject];
    [lastObject CGPointValue];
    v13 = v12;
    v15 = v14;

    self = selfCopy;
  }

  v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v16 = 0;
    do
    {
      v17 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v16];
      if (statesCopy)
      {
        [(HKGraphView *)self _updateSelectionContextStateWithTouchPoint:v17 seriesGroup:v8, v10];
      }

      selectionContext = [v17 selectionContext];
      [selectionContext setSelectedRangeBoundariesXValue:0];

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      currentSeries = [v17 currentSeries];
      v20 = [currentSeries countByEnumeratingWithState:&v89 objects:v95 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v90;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v90 != v22)
            {
              objc_enumerationMutation(currentSeries);
            }

            v24 = *(*(&v89 + 1) + 8 * i);
            if ([v24 allowsSelection])
            {
              v87 = 1.79769313e308;
              v88 = 1.79769313e308;
              v85 = 0u;
              v86 = 0u;
              selectionContext2 = [v17 selectionContext];
              [selectionContext2 minimumSelectionDistance];
              [(HKGraphView *)self _closestDataPointPathToPoint:v16 seriesGroupRow:v24 seriesInGroup:&v88 minimumXDistance:v8 xDistanceOut:v10, v26];

              v83 = v85;
              v84 = v86;
              if (v68 >= 2)
              {
                selectionContext3 = [v17 selectionContext];
                closestSeriesToSelection = [selectionContext3 closestSeriesToSelection];
                selectionContext4 = [v17 selectionContext];
                [selectionContext4 minimumSelectionDistance];
                [(HKGraphView *)selfCopy _closestDataPointPathToPoint:v16 seriesGroupRow:closestSeriesToSelection seriesInGroup:&v87 minimumXDistance:v13 xDistanceOut:v15, v30];

                self = selfCopy;
              }

              v79 = v85;
              v80 = v86;
              v75 = HKGraphSeriesDataPointPathNone;
              v76 = unk_1C3D5D5B8;
              if (!HKGraphSeriesDataPointPathEqualToPath(&v79, &v75))
              {
                v79 = v85;
                v80 = v86;
                v81 = v83;
                v82 = v84;
                v75 = v85;
                v76 = v86;
                v77 = v83;
                v78 = v84;
                v31 = [(HKGraphView *)self _pointSelectionContextWithPathRange:&v75 touchPoints:v70 seriesGroupRow:v16 seriesInGroup:v24];
                [v31 setXDistanceFromFirstTouchPoint:v88];
                [v31 setXDistanceFromSecondTouchPoint:v87];
                [v67 addObject:v31];
              }
            }
          }

          v21 = [currentSeries countByEnumeratingWithState:&v89 objects:v95 count:16];
        }

        while (v21);
      }

      ++v16;
    }

    while (v16 < [(NSMutableArray *)self->_seriesGroupRows count]);
  }

  v32 = v67;
  v33 = [(NSMutableArray *)self->_seriesGroupRows count];
  selfCopy2 = self;
  v35 = v32;
  if (v33)
  {
    v36 = 0;
    v35 = v32;
    while (1)
    {
      v37 = [(NSMutableArray *)selfCopy2->_seriesGroupRows objectAtIndexedSubscript:v36];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      currentSeries2 = [v37 currentSeries];
      v39 = [currentSeries2 countByEnumeratingWithState:&v71 objects:v94 count:16];
      if (!v39)
      {
        goto LABEL_35;
      }

      v40 = v39;
      v41 = 0;
      v42 = *v72;
      do
      {
        v43 = 0;
        v44 = v35;
        do
        {
          if (*v72 != v42)
          {
            objc_enumerationMutation(currentSeries2);
          }

          v45 = *(*(&v71 + 1) + 8 * v43);
          LOBYTE(v79) = 0;
          v35 = [v45 filteredPointSelectionContexts:v44 forTouchPoints:v70 resultsDidChange:&v79];

          v41 |= v79;
          ++v43;
          v44 = v35;
        }

        while (v40 != v43);
        v40 = [currentSeries2 countByEnumeratingWithState:&v71 objects:v94 count:16];
      }

      while (v40);

      if ((v41 & 1) == 0)
      {
        goto LABEL_36;
      }

      currentSeries2 = [v37 selectionContext];
      closestSeriesToSelection2 = [currentSeries2 closestSeriesToSelection];
      if (!closestSeriesToSelection2)
      {
        goto LABEL_35;
      }

      v47 = closestSeriesToSelection2;
      v48 = [v35 count];

      if (v48 == 1)
      {
        break;
      }

LABEL_36:

      ++v36;
      selfCopy2 = selfCopy;
      if (v36 >= [(NSMutableArray *)selfCopy->_seriesGroupRows count])
      {
        goto LABEL_37;
      }
    }

    v49 = [v35 objectAtIndexedSubscript:0];
    selectedSeries = [v49 selectedSeries];
    selectionContext5 = [v37 selectionContext];
    [selectionContext5 setClosestSeriesToSelection:selectedSeries];

    v52 = [v35 objectAtIndexedSubscript:0];
    selectedRangeXValues = [v52 selectedRangeXValues];
    minValue = [selectedRangeXValues minValue];
    [minValue doubleValue];
    v56 = v55 - selfCopy->_hardLeftMarginWidth;

    v57 = [v35 objectAtIndexedSubscript:0];
    selectedRangeXValues2 = [v57 selectedRangeXValues];
    maxValue = [selectedRangeXValues2 maxValue];
    [maxValue doubleValue];
    v61 = v60 - selfCopy->_hardLeftMarginWidth;

    currentSeries2 = [v37 selectionContext];
    v62 = [MEMORY[0x1E696AD98] numberWithDouble:v56];
    v93[0] = v62;
    v63 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
    v93[1] = v63;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
    [currentSeries2 setSelectedRangeBoundariesXValue:v64];

LABEL_35:
    goto LABEL_36;
  }

LABEL_37:

  return v35;
}

- (id)_oneSeriesSelectionContextsWithTouchPoints:(id)points updateViewStates:(BOOL)states
{
  statesCopy = states;
  v93 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  firstObject = [pointsCopy firstObject];
  [firstObject CGPointValue];
  v9 = v8;
  v11 = v10;

  v12 = [pointsCopy count];
  if (v12 <= 1)
  {
    v63 = *(MEMORY[0x1E695EFF8] + 8);
    v64 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    lastObject = [pointsCopy lastObject];
    [lastObject CGPointValue];
    v63 = v15;
    v64 = v14;
  }

  v62 = pointsCopy;
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v90 = HKGraphSeriesDataPointPathNone;
  v91 = unk_1C3D5D5B8;
  v88 = HKGraphSeriesDataPointPathNone;
  v89 = unk_1C3D5D5B8;
  [(HKGraphView *)self _dataAreaRect];
  v72 = v17;
  v73 = v16;
  v70 = v19;
  v71 = v18;
  if ([(NSMutableArray *)self->_seriesGroupRows count])
  {
    v67 = 0;
    v20 = 0;
    v65 = -1;
    v68 = 1.79769313e308;
    v69 = v9;
    v66 = 1.79769313e308;
    do
    {
      v21 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v20];
      v86 = 1.79769313e308;
      v87 = 1.79769313e308;
      if (statesCopy)
      {
        [(HKGraphView *)self _updateSelectionContextStateWithTouchPoint:v21 seriesGroup:v9, v11];
      }

      selectionContext = [v21 selectionContext];
      [selectionContext setSelectedRangeBoundariesXValue:0];

      [(HKGraphView *)self _yAxisRectForSeriesGroupRow:v20 insetForLegends:0 chartRect:v73, v72, v71, v70];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [(HKGraphView *)self _virtualMarginInsets];
      v30 = v29;
      [(HKGraphView *)self _virtualMarginInsets];
      v32 = v31;
      [(HKGraphView *)self _virtualMarginInsets];
      v34 = v26 - (v32 + v33);
      delegate = [(HKGraphView *)self delegate];
      v36 = [delegate graphViewPointSelectionDifferentiatesSeriesGroups:self];

      if (v36)
      {
        v37 = v24;
      }

      else
      {
        v37 = v72;
      }

      v9 = v69;
      if (v36)
      {
        v38 = v28;
      }

      else
      {
        v38 = v70;
      }

      v39 = v30;
      v40 = v34;
      v95.x = v69;
      v95.y = v11;
      if (CGRectContainsPoint(*(&v37 - 1), v95))
      {
        v82 = 0u;
        v83 = 0u;
        selectionContext2 = [v21 selectionContext];
        closestSeriesToSelection = [selectionContext2 closestSeriesToSelection];
        selectionContext3 = [v21 selectionContext];
        [selectionContext3 minimumSelectionDistance];
        [(HKGraphView *)self _closestDataPointPathToPoint:v20 seriesGroupRow:closestSeriesToSelection seriesInGroup:&v87 minimumXDistance:v69 xDistanceOut:v11, v44];

        v78 = 0u;
        v79 = 0u;
        v45 = v87;
        if (v87 >= v68)
        {
          v45 = v68;
        }

        else
        {
          v90 = v82;
          v91 = v83;
          v88 = v82;
          v89 = v83;
          selectionContext4 = [v21 selectionContext];
          closestSeriesToSelection2 = [selectionContext4 closestSeriesToSelection];

          v65 = v20;
          v67 = closestSeriesToSelection2;
        }

        if (v12 >= 2)
        {
          selectionContext5 = [v21 selectionContext];
          closestSeriesToSelection3 = [selectionContext5 closestSeriesToSelection];
          selectionContext6 = [v21 selectionContext];
          [selectionContext6 minimumSelectionDistance];
          [(HKGraphView *)self _closestDataPointPathToPoint:v20 seriesGroupRow:closestSeriesToSelection3 seriesInGroup:&v86 minimumXDistance:v64 xDistanceOut:v63, v51];

          if (v86 < v66)
          {
            v88 = v78;
            v89 = v79;
            v66 = v86;
          }
        }

        v68 = v45;
      }

      ++v20;
    }

    while (v20 < [(NSMutableArray *)self->_seriesGroupRows count]);
  }

  else
  {
    v67 = 0;
    v65 = -1;
  }

  v82 = v90;
  v83 = v91;
  v78 = HKGraphSeriesDataPointPathNone;
  v79 = unk_1C3D5D5B8;
  v52 = v67;
  if (!HKGraphSeriesDataPointPathEqualToPath(&v82, &v78) && v67)
  {
    v82 = v90;
    v83 = v91;
    v84 = v88;
    v85 = v89;
    v78 = v90;
    v79 = v91;
    v80 = v88;
    v81 = v89;
    v53 = [(HKGraphView *)self _pointSelectionContextWithPathRange:&v78 touchPoints:v62 seriesGroupRow:v65 seriesInGroup:v67];
    [v61 addObject:v53];
    if (statesCopy)
    {
      v54 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v65];
      [(HKGraphViewSelectionStyle *)self->_selectionStyle unselectedSeriesAlpha];
      [HKGraphView _deselectAllSeriesWithAlpha:"_deselectAllSeriesWithAlpha:offScreenIndicatorAlpha:seriesGroup:" offScreenIndicatorAlpha:v54 seriesGroup:?];
      [v67 setAlpha:1.0];
      [v67 setOffscreenIndicatorAlpha:1.0];
      if ([(HKGraphView *)self moveSelectedSeriesToFront])
      {
        [(HKGraphView *)self _moveSeriesToFront:v67];
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v55 = self->_seriesGroupRows;
      v56 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v74 objects:v92 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v75;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v75 != v58)
            {
              objc_enumerationMutation(v55);
            }

            if (v54 != *(*(&v74 + 1) + 8 * i))
            {
              [(HKGraphView *)self _finishSelectionForSeriesGroup:?];
            }
          }

          v57 = [(NSMutableArray *)v55 countByEnumeratingWithState:&v74 objects:v92 count:16];
        }

        while (v57);
      }

      v52 = v67;
    }
  }

  return v61;
}

- (id)_newPointSelectionContextsWithTouchPoints:(id)points updateViewStates:(BOOL)states
{
  statesCopy = states;
  pointsCopy = points;
  if ([pointsCopy count])
  {
    if ([(HKGraphView *)self multiSeriesSelection])
    {
      [(HKGraphView *)self _multiSeriesSelectionContextsWithTouchPoints:pointsCopy updateViewStates:statesCopy];
    }

    else
    {
      [(HKGraphView *)self _oneSeriesSelectionContextsWithTouchPoints:pointsCopy updateViewStates:statesCopy];
    }
    v7 = ;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_pointSelectionContextWithPathRange:(id *)range touchPoints:(id)points seriesGroupRow:(int64_t)row seriesInGroup:(id)group
{
  v104[2] = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  groupCopy = group;
  [(HKGraphView *)self _dataAreaRect];
  [(HKGraphView *)self _yAxisRectForSeriesGroupRow:row chartRect:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v78 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:row];
  v19 = [(HKGraphView *)self _resolutionFromSeries:groupCopy];
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__2;
  v102 = __Block_byref_object_dispose__2;
  v103 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__2;
  v96 = __Block_byref_object_dispose__2;
  v97 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__2;
  v90 = __Block_byref_object_dispose__2;
  v91 = objc_opt_new();
  xAxis = self->_xAxis;
  [(HKGraphView *)self zoomScale];
  v22 = v21;
  [(HKGraphView *)self contentOffset];
  v24 = v23;
  v26 = v25;
  [(HKGraphView *)self _xAxisCoordinateTransform];
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v27 = *&range->var0.var0.resolution;
  v82 = *&range->var0.var0.index;
  v83 = v27;
  v28 = *&range->var1.var0.resolution;
  v84 = *&range->var1.var0.index;
  v81[2] = __92__HKGraphView__pointSelectionContextWithPathRange_touchPoints_seriesGroupRow_seriesInGroup___block_invoke;
  v81[3] = &unk_1E81B6520;
  v85 = v28;
  v81[4] = &v98;
  v81[5] = &v92;
  v81[6] = &v86;
  [groupCopy enumerateCoordinatesInChartRect:xAxis xAxis:v19 zoomScale:v80 resolution:0 contentOffset:2 xAxisTransform:v81 roundToViewScale:v12 exclusionOptions:v14 block:{v16, v18, v22, v24, v26}];
  firstObject = [pointsCopy firstObject];
  [firstObject CGPointValue];
  v31 = v30;

  v32 = [pointsCopy count];
  if (v32 < 2)
  {
    v35 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    lastObject = [pointsCopy lastObject];
    [lastObject CGPointValue];
    v35 = v34;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:range->var0.var1];
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:range->var1.var1];
  v77 = [HKValueRange valueRangeWithMinValue:v36 maxValue:v37];

  if (v99[5])
  {
    [groupCopy xAxisSelectedCoordinate:v31 blockCoordinate:v12 chartRect:{v14, v16, v18}];
    v39 = v38;
    [groupCopy xAxisSelectedCoordinate:v93[5] blockCoordinate:v31 chartRect:{v12, v14, v16, v18}];
    if (v32 >= 2)
    {
      [groupCopy xAxisSelectedCoordinate:v93[5] blockCoordinate:v35 chartRect:{v12, v14, v16, v18}];
    }

    v41 = v40;
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
    v44 = [HKValueRange valueRangeWithMinValue:v42 maxValue:v43];

    [v99[5] startXValue];
    v46 = v45;
    [v93[5] endXValue];
    v48 = v47;
    if (HKUIEqualCGFloats(v46, v47))
    {
      v49 = [(HKGraphView *)self _valueForXAxisLocation:v46];
      v50 = [HKValueRange valueRangeWithMinValue:v49 maxValue:v49];
    }

    else
    {
      v49 = [(HKGraphView *)self _valueForXAxisLocation:v46];
      v51 = [(HKGraphView *)self _valueForXAxisLocation:v48];
      v50 = [HKValueRange valueRangeWithMinValue:v49 maxValue:v51];
    }
  }

  else
  {
    v50 = 0;
    v44 = 0;
  }

  minValue = [v44 minValue];
  if (!minValue || ([v44 maxValue], v53 = objc_claimAutoreleasedReturnValue(), v54 = v53 == 0, v53, minValue, v54))
  {
    selectionContext = [v78 selectionContext];
    [selectionContext setSelectedRangeBoundariesXValue:0];
  }

  else
  {
    selectionContext = [v78 selectionContext];
    minValue2 = [v44 minValue];
    v104[0] = minValue2;
    maxValue = [v44 maxValue];
    v104[1] = maxValue;
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
    [selectionContext setSelectedRangeBoundariesXValue:v58];
  }

  v59 = *&range->var0.var0.resolution;
  v80[0] = *&range->var0.var0.index;
  v80[1] = v59;
  v60 = *&range->var1.var0.resolution;
  v80[2] = *&range->var1.var0.index;
  v80[3] = v60;
  [groupCopy selectPathsinPathRange:v80 coordinateRange:v44];
  selectionContext2 = [v78 selectionContext];
  [selectionContext2 setTouchPoints:pointsCopy];

  v62 = objc_alloc_init(HKGraphViewPointSelectionContext);
  [(HKGraphViewPointSelectionContext *)v62 setSelectedSeries:groupCopy];
  minValue3 = [v44 minValue];
  [minValue3 doubleValue];
  v65 = v64;
  hardLeftMarginWidth = self->_hardLeftMarginWidth;

  maxValue2 = [v44 maxValue];
  [maxValue2 doubleValue];
  v69 = v68;
  v70 = self->_hardLeftMarginWidth;

  hardLeftMarginWidth = [MEMORY[0x1E696AD98] numberWithDouble:v65 + hardLeftMarginWidth];
  v72 = [MEMORY[0x1E696AD98] numberWithDouble:v69 + v70];
  v73 = [HKValueRange valueRangeWithMinValue:hardLeftMarginWidth maxValue:v72];

  [(HKGraphViewPointSelectionContext *)v62 setSelectedRangeXValues:v73];
  [(HKGraphViewPointSelectionContext *)v62 setSelectedPathIndexRange:v77];
  [(HKGraphViewPointSelectionContext *)v62 setUserInfo:v87[5]];
  v74 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:self->_xAxisDateZoom];
  v75 = [v74 seriesPointIntervalComponentsAtResolution:v19];
  [(HKGraphViewPointSelectionContext *)v62 setPointIntervalComponents:v75];

  [(HKGraphViewPointSelectionContext *)v62 setSelectedPointValueRange:v50];
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v98, 8);

  return v62;
}

void __92__HKGraphView__pointSelectionContextWithPathRange_touchPoints_seriesGroupRow_seriesInGroup___block_invoke(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  v7 = a3;
  v8 = *(a1 + 72);
  v18 = *(a1 + 56);
  v19 = v8;
  v9 = a4[1];
  v22 = *a4;
  v23 = v9;
  if (HKGraphSeriesDataPointPathEqualToPath(&v18, &v22))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v10 = *(a1 + 104);
  v18 = *(a1 + 88);
  v19 = v10;
  v11 = a4[1];
  v22 = *a4;
  v23 = v11;
  if (HKGraphSeriesDataPointPathEqualToPath(&v18, &v22))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v12 = a4[1];
  v22 = *a4;
  v23 = v12;
  v13 = *(a1 + 72);
  v18 = *(a1 + 56);
  v19 = v13;
  v14 = *(a1 + 104);
  v20 = *(a1 + 88);
  v21 = v14;
  if (HKGraphSeriesDataPointPathInRangeInclusive(&v22, &v18))
  {
    v15 = [v7 userInfo];

    if (v15)
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);
      v17 = [v7 userInfo];
      [v16 addObject:v17];
    }
  }
}

- (void)_deselectAllSeriesWithAlpha:(double)alpha offScreenIndicatorAlpha:(double)indicatorAlpha seriesGroup:(id)group
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  currentSeries = [group currentSeries];
  v8 = [currentSeries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(currentSeries);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [v12 setAlpha:alpha];
        [v12 setOffscreenIndicatorAlpha:indicatorAlpha];
        [v12 deselectPath];
      }

      v9 = [currentSeries countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_finishSelectionForSeriesGroup:(id)group
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  currentSeries = [group currentSeries];
  v4 = [currentSeries countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(currentSeries);
        }

        [*(*(&v8 + 1) + 8 * v7++) finishSelection];
      }

      while (v5 != v7);
      v5 = [currentSeries countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_finishSelection
{
  v16 = *MEMORY[0x1E69E9840];
  [(HKGraphView *)self _updateAllLegendsWithSelectedValues:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_seriesGroupRows;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        selectionContext = [v9 selectionContext];

        if (selectionContext)
        {
          [v9 setSelectionContext:0];
          [(HKGraphView *)self _finishSelectionForSeriesGroup:v9];
          [(HKGraphView *)self _deselectAllSeriesWithAlpha:v9 offScreenIndicatorAlpha:1.0 seriesGroup:1.0];
          v6 = 1;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);

    if (v6)
    {
      [(HKGraphView *)self _notifyDidEndSelection];
      [(HKGraphRenderer *)self->_renderView setNeedsRender];
      [(HKGraphRenderer *)self->_yAxisLabelContent setNeedsRender];
    }
  }

  else
  {
  }

  if (self->_enableStickySelection)
  {
    [(HKGraphView *)self _deactivateStickySelection];
  }

  [(HKGraphView *)self _resetSingleSelectionXValue];
  [(HKGraphView *)self _scheduleExternalSelectionIfNeededClearingLastLocation];
}

- (void)_cancelAndFinishSelection
{
  [(HKGraphView *)self _cancelExternalSelection];

  [(HKGraphView *)self _finishSelection];
}

- (void)_selectionRecognizerDidFinish:(id)finish
{
  if (self->_enableStickySelection)
  {
    [(HKGraphView *)self _activateStickySelection];
  }

  else
  {
    [(HKGraphView *)self _finishSelection];
  }
}

- (void)_moveSeriesToFront:(id)front
{
  v24 = *MEMORY[0x1E69E9840];
  frontCopy = front;
  if (frontCopy)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_seriesGroupRows;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v19 + 1) + 8 * i);
          currentSeries = [v9 currentSeries];
          v11 = [currentSeries indexOfObjectIdenticalTo:frontCopy];

          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            currentSeries2 = [v9 currentSeries];
            v13 = [currentSeries2 count] - 1;

            currentSeries3 = [v9 currentSeries];
            v15 = [currentSeries3 objectAtIndexedSubscript:v13];
            currentSeries4 = [v9 currentSeries];
            [currentSeries4 setObject:v15 atIndexedSubscript:v11];

            currentSeries5 = [v9 currentSeries];
            [currentSeries5 setObject:frontCopy atIndexedSubscript:v13];
          }
        }

        v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v6);
    }
  }
}

- (void)touchSelectionAtModelX:(id)x
{
  [(HKGraphView *)self setExternalSelectionModelCoordinate:x];
  [(HKGraphView *)self _installExternalSelectionEndTimer];
  [(HKGraphView *)self _installExternalSelectionCancelTimer];

  [(HKGraphView *)self _scheduleRequiredExternalSelection];
}

- (void)_installExternalSelectionEndTimer
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__HKGraphView__installExternalSelectionEndTimer__block_invoke;
  v3[3] = &unk_1E81B6548;
  v3[4] = self;
  v2 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v3 block:1.0];
}

- (void)_installExternalSelectionCancelTimer
{
  [(HKGraphView *)self _invalidateExternalSelectionCancelTimer];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x1E696C608] isAppleInternalInstall];

  v6 = 4.0;
  if (isAppleInternalInstall)
  {
    v7 = objc_alloc(MEMORY[0x1E695E000]);
    v8 = [v7 initWithSuiteName:*MEMORY[0x1E696C858]];
    if ([v8 hk_keyExists:@"HKLollipopDeselectDelayInSec"])
    {
      [v8 doubleForKey:@"HKLollipopDeselectDelayInSec"];
      v6 = v9;
    }
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__HKGraphView__installExternalSelectionCancelTimer__block_invoke;
  v14 = &unk_1E81B5F30;
  objc_copyWeak(&v15, &location);
  v10 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v11 block:v6];
  [(HKGraphView *)self setExternalSelectionCancelTimer:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __51__HKGraphView__installExternalSelectionCancelTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelAndFinishSelection];
}

- (void)_invalidateExternalSelectionCancelTimer
{
  [(NSTimer *)self->_externalSelectionCancelTimer invalidate];
  externalSelectionCancelTimer = self->_externalSelectionCancelTimer;
  self->_externalSelectionCancelTimer = 0;
}

- (void)_cancelExternalSelection
{
  externalSelectionModelCoordinate = [(HKGraphView *)self externalSelectionModelCoordinate];

  if (externalSelectionModelCoordinate)
  {
    [(HKGraphView *)self setExternalSelectionModelCoordinate:0];

    [(HKGraphView *)self _notifyDidEndExternalSelection];
  }
}

- (void)_scheduleExternalSelectionIfNeeded
{
  externalSelectionModelCoordinate = [(HKGraphView *)self externalSelectionModelCoordinate];

  if (externalSelectionModelCoordinate)
  {
    if (![(HKGraphView *)self externalSelectionScheduled])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__HKGraphView__scheduleExternalSelectionIfNeeded__block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      [(HKGraphView *)self setExternalSelectionScheduled:1];
    }
  }
}

- (void)_scheduleRequiredExternalSelection
{
  [(HKGraphView *)self setExternalSelectionLastLocation:-1.79769313e308];
  [(HKGraphView *)self setExternalSelectionScheduled:0];

  [(HKGraphView *)self _scheduleExternalSelectionIfNeeded];
}

- (void)_scheduleExternalSelectionIfNeededClearingLastLocation
{
  [(HKGraphView *)self setExternalSelectionLastLocation:-1.79769313e308];

  [(HKGraphView *)self _scheduleExternalSelectionIfNeeded];
}

- (void)_processExternalSelection
{
  externalSelectionModelCoordinate = [(HKGraphView *)self externalSelectionModelCoordinate];

  if (externalSelectionModelCoordinate)
  {
    [(HKGraphView *)self setExternalSelectionScheduled:0];
    transform = [(HKAxis *)self->_xAxis transform];
    externalSelectionModelCoordinate2 = [(HKGraphView *)self externalSelectionModelCoordinate];
    [transform coordinateForValue:externalSelectionModelCoordinate2];
    v7 = v6;

    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    [(HKGraphView *)self _xAxisCoordinateTransform];
    v8 = *&v42 + *&v41 * 0.0 + *&v40 * v7;
    xAxisDateZoom = [(HKGraphView *)self xAxisDateZoom];
    [(HKGraphView *)self _dataAreaRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0x7FEFFFFFFFFFFFFFLL;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v35[3] = 0x7FEFFFFFFFFFFFFFLL;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0x7FEFFFFFFFFFFFFFLL;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __40__HKGraphView__processExternalSelection__block_invoke;
    v30[3] = &unk_1E81B6598;
    v30[7] = &v31;
    v30[8] = xAxisDateZoom;
    *&v30[9] = v14;
    *&v30[10] = v8;
    v30[4] = self;
    v30[5] = v35;
    v30[6] = &v36;
    [(HKGraphView *)self _walkAllSeries:v30];
    v18 = v37[3];
    if (v18 < 1.79769313e308)
    {
      [(HKGraphView *)self externalSelectionLastLocation];
      if (!HKUIEqualCGFloats(v18, v19))
      {
        v20 = v37[3];
        v43.origin.x = v11;
        v43.origin.y = v13;
        v43.size.width = v15;
        v43.size.height = v17;
        MinX = CGRectGetMinX(v43);
        v44.origin.x = v11;
        v44.origin.y = v13;
        v44.size.width = v15;
        v44.size.height = v17;
        v22 = CGRectGetMaxX(v44) + -0.00000011920929;
        v23 = v37[3];
        if (v23 < MinX + 0.00000011920929 || v23 > v22)
        {
          v24 = v32[3];
          v25 = v24 * 0.5;
          v26 = v24 < 1.79769313e308;
          v27 = 0.0;
          if (v26)
          {
            v27 = v25;
          }

          v28 = v22 - v27;
          if (MinX + 0.00000011920929 + v27 >= v23)
          {
            v23 = MinX + 0.00000011920929 + v27;
          }

          if (v28 >= v23)
          {
            v20 = v23;
          }

          else
          {
            v20 = v28;
          }
        }

        [(HKGraphView *)self bounds];
        [(HKGraphView *)self _touchAtPoint:v20, v29 * 0.5];
        [(HKGraphView *)self setExternalSelectionLastLocation:v37[3]];
      }
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(v35, 8);
    _Block_object_dispose(&v36, 8);
  }
}

void __40__HKGraphView__processExternalSelection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 allowsSelection])
  {
    if (*(a1 + 64) == 8)
    {
      v4 = 44.0;
      v5 = 1.79769313e308;
    }

    else
    {
      v5 = *(a1 + 72) / +[HKGraphZoomLevelConfiguration visibleSeriesPointCountForTimeScope:resolution:](HKGraphZoomLevelConfiguration, "visibleSeriesPointCountForTimeScope:resolution:", *(a1 + 64), [*(a1 + 32) _resolutionFromSeries:v3]);
      v4 = HKUICeilToScreenScale(fmax(v5, 44.0));
    }

    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__HKGraphView__processExternalSelection__block_invoke_2;
    v7[3] = &unk_1E81B6570;
    v10 = *(a1 + 80);
    v11 = v4;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v12 = v5;
    [v6 enumerateVisibleCoordinatesForSeries:v3 block:v7];
  }
}

void __40__HKGraphView__processExternalSelection__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  [v21 startXValue];
  v5 = v4;
  [v21 endXValue];
  v7 = (v5 + v6) * 0.5;
  v8 = vabdd_f64(v7, *(a1 + 56));
  [v21 startXValue];
  v10 = v9;
  [v21 endXValue];
  v12 = v8;
  if (vabdd_f64(v10, v11) > 0.00000011920929)
  {
    v13 = *(a1 + 56);
    [v21 startXValue];
    if (v13 < v14 || (v15 = *(a1 + 56), [v21 endXValue], v12 = 0.0, v15 > v16))
    {
      [v21 startXValue];
      v18 = vabdd_f64(v17, *(a1 + 56));
      [v21 endXValue];
      v20 = vabdd_f64(v19, *(a1 + 56));
      if (v18 >= v20)
      {
        v12 = v20;
      }

      else
      {
        v12 = v18;
      }
    }
  }

  if (v12 <= *(a1 + 64) && v8 < *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 40) + 8) + 24) = v7;
    *(*(*(a1 + 32) + 8) + 24) = v8;
    *(*(*(a1 + 48) + 8) + 24) = *(a1 + 72);
  }
}

- (BOOL)_stickySelectionActive
{
  v15 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_seriesGroupRows count])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_seriesGroupRows;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([(HKGraphView *)self _currentSelectionStateForSeriesGroup:*(*(&v10 + 1) + 8 * i), v10]!= 3)
        {
          v8 = 0;
          goto LABEL_12;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)_deactivateStickySelection
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(HKGraphView *)self _stickySelectionActive])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_seriesGroupRows;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          selectionContext = [*(*(&v9 + 1) + 8 * v7) selectionContext];
          [selectionContext setSelectionState:0];

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)_activateStickySelection
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_seriesGroupRows;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        selectionContext = [*(*(&v10 + 1) + 8 * v7) selectionContext];
        v9 = selectionContext;
        if (selectionContext && [selectionContext selectionState] != 3)
        {
          [v9 setSelectionState:3];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(HKGraphView *)self _reloadViewScope];
}

- (void)didMoveToWindow
{
  window = [(HKGraphView *)self window];

  if (window)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __30__HKGraphView_didMoveToWindow__block_invoke;
    v4[3] = &unk_1E81B65C0;
    objc_copyWeak(&v5, &location);
    [HKOutsideViewTapDetector addOutsideTouchCallbackForView:self outsideTapBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {

    [HKOutsideViewTapDetector removeOutsideTouchCallbackForView:self];
  }
}

void __30__HKGraphView_didMoveToWindow__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancelAndFinishSelection];
}

- (void)_notifyDidBeginSelection
{
  if (self->_shouldInformDelegateOfUpdates)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained graphViewDidBeginSelection:self];
  }
}

- (void)_notifyDidUpdateSelectionWithPointContext:(id)context
{
  if (self->_shouldInformDelegateOfUpdates)
  {
    contextCopy = context;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained graphView:self didUpdateSelectedPoint:contextCopy];
  }
}

- (void)_notifyDidEndSelection
{
  if (self->_shouldInformDelegateOfUpdates)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained graphViewDidEndSelection:self];
  }
}

- (void)_notifyDateZoomDidChangeFromValue:(int64_t)value toValue:(int64_t)toValue
{
  if (self->_shouldInformDelegateOfUpdates)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained graphView:self didUpdateFromDateZoom:value toDateZoom:toValue newVisibleRange:self->_effectiveVisibleRangeActive];
  }
}

- (void)_notifyDelegateOfVisibleValueRange:(id)range changeContext:(int64_t)context
{
  rangeCopy = range;
  if ([(HKGraphView *)self _graphViewIsConfigured])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained graphView:self didUpdateVisibleValueRange:rangeCopy changeContext:context];
  }
}

- (void)_notifyDelegateOfFinishUserScrolling
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained graphView:self didFinishUserScrollingToValueRange:self->_effectiveVisibleRangeActive];
}

- (void)_notifyDelegateOfSizeChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained graphViewSizeChanged:self];
}

- (void)_notifyDelegateOfYAxisWidth:(double)width toWidth:(double)toWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained graphView:self didUpdateYAxisWidth:width toWidth:toWidth];
}

- (void)_notifyDelegateSeriesUpdate:(id)update newDataArrived:(BOOL)arrived
{
  arrivedCopy = arrived;
  scrollView = self->_scrollView;
  updateCopy = update;
  isDragging = [(UIScrollView *)scrollView isDragging];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained graphView:self didUpdateSeries:updateCopy newDataArrived:arrivedCopy changeContext:isDragging];
}

- (void)_notifyDelegateOfTapOnYAxis
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained graphViewDidTapYAxis:self];
}

- (void)_notifyDidEndExternalSelection
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained graphViewExternalSelectionEnd:self];
}

- (void)_notifyGraphViewRendered
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained graphViewRenderedView:self];
}

- (id)findVisibleBlockCoordinatesForPrimarySeries
{
  [(HKGraphView *)self _dataAreaRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  primarySeries = [(HKGraphView *)self primarySeries];
  if (primarySeries)
  {
    v12 = [(HKGraphView *)self _resolutionFromSeries:primarySeries];
    xAxis = self->_xAxis;
    [(HKGraphView *)self zoomScale];
    v15 = v14;
    [(HKGraphView *)self contentOffset];
    v17 = v16;
    v19 = v18;
    [(HKGraphView *)self _xAxisCoordinateTransform];
    v20 = [primarySeries findVisibleBlockCoordinatesForChartRect:xAxis xAxis:v12 zoomScale:&v22 resolution:v4 contentOffset:v6 xAxisTransform:{v8, v10, v15, v17, v19}];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)primarySeries
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 primarySeriesGroupIndexForGraphView:self];
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= [(NSMutableArray *)self->_seriesGroupRows count])
  {
    firstObject = 0;
  }

  else
  {
    v7 = [(NSMutableArray *)self->_seriesGroupRows objectAtIndexedSubscript:v6];
    currentSeries = [v7 currentSeries];
    firstObject = [currentSeries firstObject];
  }

  return firstObject;
}

- (void)setIndependentAxes:(id)axes stackOffset:(int64_t)offset
{
  seriesGroupRows = self->_seriesGroupRows;
  axesCopy = axes;
  v8 = [(NSMutableArray *)seriesGroupRows objectAtIndexedSubscript:offset];
  [v8 setIndependentAxes:axesCopy];

  [(HKGraphRenderer *)self->_renderView setNeedsRender];
  [(HKGraphRenderer *)self->_yAxisLabelContent setNeedsRender];
}

- (void)_handleTilesInitialRender
{
  if ([(HKGraphView *)self tilesWaitingForInitialRender])
  {
    [(HKGraphView *)self setTileInitialRedrawCount:[(HKGraphView *)self tileInitialRedrawCount]+ 1];
    if ([(HKGraphView *)self tileInitialRedrawCount]>= 6)
    {
      if ([(HKGraphView *)self _tilesConfigurableAfterInitialRender])
      {
        [(HKGraphView *)self setTilesWaitingForInitialRender:0];
        backgroundColor = [(HKGraphView *)self backgroundColor];
        v4 = [(HKGraphView *)self _captureColor:backgroundColor];
        [(HKGraphView *)self setCapturedTileBackgroundColor:v4];

        [(HKGraphView *)self _reconfigureScrollingTiles];
      }
    }
  }
}

- (CGPoint)_contentOffsetForActualViewRange
{
  v16 = *MEMORY[0x1E695EFF8];
  xAxis = [(HKGraphView *)self xAxis];

  if (xAxis)
  {
    [(HKGraphView *)self _dataAreaRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    xAxis2 = [(HKGraphView *)self xAxis];
    actualVisibleRange = [(HKGraphView *)self actualVisibleRange];
    [xAxis2 offsetForValueRange:actualVisibleRange chartRect:0 zoomScaleOut:&v16 contentOffsetOut:{v5, v7, v9, v11}];
  }

  v15 = *(&v16 + 1);
  v14 = *&v16;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)_reconfigureScrollingTiles
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(HKGraphView *)self _tilesReconfigurableAfterInitialRender])
  {
    [(UIScrollView *)self->_scrollView contentSize];
    v4 = v3;
    [(HKGraphView *)self _dataAreaRect];
    Width = CGRectGetWidth(v27);
    v6 = HKUICeilToScreenScale(Width * 0.5);
    v7 = HKUICeilToScreenScale(v4 + Width * 2.0);
    if (v6 <= 0.0)
    {
      [(HKGraphView *)self setTileColumns:0, v7];
      [(HKGraphView *)self setTileWidthInPoints:v6];
      v8 = -0.5;
    }

    else
    {
      [(HKGraphView *)self setTileColumns:vcvtpd_s64_f64(v7 / v6)];
      [(HKGraphView *)self setTileWidthInPoints:v6];
      v8 = Width * 1.5 / v6 - Width / (v6 + v6) + -0.5;
    }

    [(HKGraphView *)self setTileColumnHysteresis:vcvtmd_s64_f64(v8)];
    [(HKGraphView *)self setTileFirstColumn:0];
    [(HKGraphView *)self setTileLastColumn:-1];
    tileQueue = [(HKGraphView *)self tileQueue];

    if (!tileQueue)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(HKGraphView *)self setTileQueue:v10];
    }

    tilesByColumnNumber = [(HKGraphView *)self tilesByColumnNumber];

    if (tilesByColumnNumber)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      tilesByColumnNumber2 = [(HKGraphView *)self tilesByColumnNumber];
      allValues = [tilesByColumnNumber2 allValues];

      v14 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(allValues);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            [v18 prepareTileForReuse];
            tileQueue2 = [(HKGraphView *)self tileQueue];
            [tileQueue2 addObject:v18];
          }

          v15 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      tilesByColumnNumber3 = [(HKGraphView *)self tilesByColumnNumber];
      [tilesByColumnNumber3 removeAllObjects];
    }

    else
    {
      tilesByColumnNumber3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(HKGraphView *)self setTilesByColumnNumber:tilesByColumnNumber3];
    }

    [(HKGraphView *)self _contentOffsetForActualViewRange];
    [(HKGraphView *)self _touchTilesForContentOffset:0 applyHysteresis:?];
  }
}

- (id)_captureColor:(id)color
{
  v8 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  [color getRed:&v8 green:&v7 blue:&v6 alpha:&v5];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v7 blue:v6 alpha:v5];

  return v3;
}

- (void)_touchTilesForContentOffset:(CGPoint)offset applyHysteresis:(BOOL)hysteresis
{
  hysteresisCopy = hysteresis;
  x = offset.x;
  [(HKGraphView *)self _dataAreaRect:offset.x];
  Width = CGRectGetWidth(v45);
  [(HKGraphView *)self tileWidthInPoints];
  if (v8 <= 0.0)
  {
    v10 = 0;
    v11 = -1;
  }

  else
  {
    v9 = Width + x + Width * 0.5;
    v10 = vcvtmd_s64_f64((v9 - Width * 1.5) / v8);
    v11 = vcvtmd_s64_f64((Width * 1.5 + v9) / v8);
  }

  v12 = v10 & ~(v10 >> 63);
  tileColumns = [(HKGraphView *)self tileColumns];
  if (v11 >= tileColumns - 1)
  {
    v14 = tileColumns - 1;
  }

  else
  {
    v14 = v11;
  }

  if (!hysteresisCopy || ((v15 = [(HKGraphView *)self tileFirstColumn], v12 - v15 >= 0) ? (v16 = v12 - v15) : (v16 = v15 - v12), v16 > [(HKGraphView *)self tileColumnHysteresis]))
  {
    tileFirstColumn = [(HKGraphView *)self tileFirstColumn];
    if (tileFirstColumn <= [(HKGraphView *)self tileLastColumn])
    {
      do
      {
        if (tileFirstColumn < v12 || tileFirstColumn > v14)
        {
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:tileFirstColumn];
          tilesByColumnNumber = [(HKGraphView *)self tilesByColumnNumber];
          v20 = [tilesByColumnNumber objectForKey:v18];

          if (!v20)
          {
            [HKGraphView _touchTilesForContentOffset:applyHysteresis:];
          }

          tilesByColumnNumber2 = [(HKGraphView *)self tilesByColumnNumber];
          [tilesByColumnNumber2 removeObjectForKey:v18];

          [v20 prepareTileForReuse];
          tileQueue = [(HKGraphView *)self tileQueue];
          [tileQueue addObject:v20];
        }
      }

      while (tileFirstColumn++ < [(HKGraphView *)self tileLastColumn]);
    }

    if (v12 <= v14)
    {
      v24 = v12;
      do
      {
        if (v24 < [(HKGraphView *)self tileFirstColumn]|| v24 > [(HKGraphView *)self tileLastColumn])
        {
          v25 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
          tilesByColumnNumber3 = [(HKGraphView *)self tilesByColumnNumber];
          v27 = [tilesByColumnNumber3 objectForKey:v25];

          if (v27)
          {
            [HKGraphView _touchTilesForContentOffset:applyHysteresis:];
          }

          [(HKGraphView *)self _tileScreenRectForColumn:v24];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          tileQueue2 = [(HKGraphView *)self tileQueue];
          v37 = [tileQueue2 count];

          if (v37)
          {
            tileQueue3 = [(HKGraphView *)self tileQueue];
            lastObject = [tileQueue3 lastObject];

            tileQueue4 = [(HKGraphView *)self tileQueue];
            [tileQueue4 removeLastObject];
          }

          else
          {
            v41 = [HKGraphTile alloc];
            scrollView = self->_scrollView;
            tileQueue4 = [(HKGraphView *)self graphViewTileThread];
            lastObject = [(HKGraphTile *)v41 initWithParentView:scrollView graphViewTileThread:tileQueue4];
          }

          [(HKGraphTile *)lastObject setHidden:[(HKGraphView *)self tilesHidden]];
          [(HKGraphTile *)lastObject setDrawingDelegate:self];
          [(HKGraphTile *)lastObject configureTileWithScreenRect:v24 column:v29, v31, v33, v35];
          tilesByColumnNumber4 = [(HKGraphView *)self tilesByColumnNumber];
          [tilesByColumnNumber4 setObject:lastObject forKey:v25];
        }

        ++v24;
      }

      while (v14 + 1 != v24);
    }

    [(HKGraphView *)self setTileFirstColumn:v12];

    [(HKGraphView *)self setTileLastColumn:v14];
  }
}

- (CGRect)_tileScreenRectForColumn:(int64_t)column
{
  [(HKGraphView *)self _dataAreaRect];
  Width = CGRectGetWidth(v14);
  [(HKGraphView *)self tileWidthInPoints];
  v7 = -(Width - column * v6);
  [(HKGraphView *)self tileWidthInPoints];
  v9 = v8;
  [(HKGraphView *)self _scrollingAreaRect];
  Height = CGRectGetHeight(v15);
  v11 = 0.0;
  v12 = v7;
  v13 = v9;
  result.size.height = Height;
  result.size.width = v13;
  result.origin.y = v11;
  result.origin.x = v12;
  return result;
}

- (void)_tileHiddenFlag:(BOOL)flag
{
  flagCopy = flag;
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  tilesByColumnNumber = [(HKGraphView *)self tilesByColumnNumber];
  v6 = [tilesByColumnNumber countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(tilesByColumnNumber);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        tilesByColumnNumber2 = [(HKGraphView *)self tilesByColumnNumber];
        v12 = [tilesByColumnNumber2 objectForKey:v10];

        [v12 setHidden:flagCopy];
        ++v9;
      }

      while (v7 != v9);
      v7 = [tilesByColumnNumber countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [MEMORY[0x1E6979518] commit];
}

- (void)_markTilesDirtyWithCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  [(HKGraphView *)self setTileMarkDirtyCompletion:completion];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  tilesByColumnNumber = [(HKGraphView *)self tilesByColumnNumber];
  v5 = [tilesByColumnNumber countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(tilesByColumnNumber);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        tilesByColumnNumber2 = [(HKGraphView *)self tilesByColumnNumber];
        v11 = [tilesByColumnNumber2 objectForKey:v9];

        [v11 refreshTileContent];
        ++v8;
      }

      while (v6 != v8);
      v6 = [tilesByColumnNumber countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  tilesByColumnNumber3 = [(HKGraphView *)self tilesByColumnNumber];
  v13 = [tilesByColumnNumber3 count];

  if (!v13)
  {
    [(HKGraphView *)self _handleMarkDirtyCompletion];
  }
}

- (void)_handleMarkDirtyCompletion
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tilesByColumnNumber = [(HKGraphView *)self tilesByColumnNumber];
  v4 = [tilesByColumnNumber countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(tilesByColumnNumber);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        tilesByColumnNumber2 = [(HKGraphView *)self tilesByColumnNumber];
        v10 = [tilesByColumnNumber2 objectForKey:v8];

        LODWORD(tilesByColumnNumber2) = [v10 tileDisplayedSinceSetNeedsDisplay];
        if (!tilesByColumnNumber2)
        {

          return;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [tilesByColumnNumber countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__HKGraphView__handleMarkDirtyCompletion__block_invoke;
  v12[3] = &unk_1E81B6548;
  v12[4] = self;
  v11 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v12 block:0.0];
}

void __41__HKGraphView__handleMarkDirtyCompletion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tileMarkDirtyCompletion];

  if (v2)
  {
    v3 = [*(a1 + 32) tileMarkDirtyCompletion];
    v3[2]();

    v4 = *(a1 + 32);

    [v4 setTileMarkDirtyCompletion:0];
  }
}

- (void)_hideTilesWithForce
{
  [(HKGraphRenderer *)self->_renderView setNeedsDisplay];
  [(HKGraphView *)self _tileHiddenFlag:1];

  [(HKGraphView *)self setTilesHidden:1];
}

- (void)_hideTiles
{
  if (![(HKGraphView *)self tilesHidden])
  {

    [(HKGraphView *)self _hideTilesWithForce];
  }
}

- (void)_showTiles
{
  if ([(HKGraphView *)self tilesHidden])
  {
    [(HKGraphView *)self _tileHiddenFlag:0];

    [(HKGraphView *)self setTilesHidden:0];
  }
}

- (void)_shutdownTilingThread
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  tilesByColumnNumber = [(HKGraphView *)self tilesByColumnNumber];
  v4 = [tilesByColumnNumber countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(tilesByColumnNumber);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        tilesByColumnNumber2 = [(HKGraphView *)self tilesByColumnNumber];
        v10 = [tilesByColumnNumber2 objectForKey:v8];

        [v10 prepareTileForReuse];
        tileQueue = [(HKGraphView *)self tileQueue];
        [tileQueue addObject:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [tilesByColumnNumber countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  tilesByColumnNumber3 = [(HKGraphView *)self tilesByColumnNumber];
  [tilesByColumnNumber3 removeAllObjects];

  [(HKGraphViewTileThread *)self->_graphViewTileThread cancel];
}

- (id)createTileRendererWithTileRect:(CGRect)rect column:(int64_t)column
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  xAxis = self->_xAxis;
  [(HKGraphView *)self zoomScale];
  v12 = [(HKAxis *)xAxis rangeForChartRect:0.0 zoomScale:0.0 contentOffset:width, height, v11, x, y];
  v13 = [(HKGraphView *)self _effectiveVisibleRangeFromActualVisibleRange:v12];
  v14 = [(HKGraphView *)self _createRendererWithCurrentStateWithChartRect:1 contentOffset:column drawingToTile:v13 tileColumn:v13 effectiveVisibleRangeCadence:v12 effectiveVisibleRangeActive:0.0 actualVisibleRange:0.0, width, height, x, y];

  return v14;
}

- (void)tileRenderDidFinish
{
  tileMarkDirtyCompletion = [(HKGraphView *)self tileMarkDirtyCompletion];

  if (tileMarkDirtyCompletion)
  {

    [(HKGraphView *)self _handleMarkDirtyCompletion];
  }
}

- (void)enumerateVisibleCoordinatesForSeries:(id)series block:(id)block
{
  seriesCopy = series;
  blockCopy = block;
  [(HKGraphView *)self _dataAreaRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(HKGraphView *)self _resolutionFromSeries:seriesCopy];
  if (v13 > 0.0 && v15 > 0.0)
  {
    v17 = v16;
    virtualRightMarginWidth = self->_virtualRightMarginWidth;
    [(HKGraphView *)self _inactiveRightAreaForRect:v9, v11, v13, v15];
    virtualLeftMarginWidth = self->_virtualLeftMarginWidth;
    v21 = v9 + virtualLeftMarginWidth;
    v22 = v11 + 0.0;
    v23 = v13 - (virtualRightMarginWidth + v20 + virtualLeftMarginWidth);
    xAxis = [(HKGraphView *)self xAxis];
    v28 = *MEMORY[0x1E695EFF8];
    [xAxis offsetForValueRange:self->_effectiveVisibleRangeActive chartRect:0 zoomScaleOut:&v28 contentOffsetOut:{v21, v22, v23, v15}];
    [(HKGraphView *)self _xAxisCoordinateTransform];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __58__HKGraphView_enumerateVisibleCoordinatesForSeries_block___block_invoke;
    v25[3] = &unk_1E81B65E8;
    v26 = blockCopy;
    [seriesCopy enumerateCoordinatesInChartRect:xAxis xAxis:v17 zoomScale:v27 resolution:1 contentOffset:2 xAxisTransform:v25 roundToViewScale:v21 exclusionOptions:v22 block:{v23, v15, 1.0, v28}];
  }
}

- (void)_layoutOverlayView
{
  [(HKGraphView *)self _overlayAreaRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  overlayView = [(HKGraphView *)self overlayView];
  [overlayView setFrame:{v4, v6, v8, v10}];
}

- (id)_nonOverlappingOverlaySeriesData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = dataCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        graphSeries = [v10 graphSeries];
        if ([graphSeries overlayType])
        {
          overlayIdentifier = [graphSeries overlayIdentifier];
          if (!overlayIdentifier)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_overlappingOverlaySeriesData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dataCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        graphSeries = [v10 graphSeries];
        if ([graphSeries overlayType])
        {
          overlayIdentifier = [graphSeries overlayIdentifier];
          if (overlayIdentifier)
          {
            v13 = [v4 objectForKeyedSubscript:overlayIdentifier];
            if (!v13)
            {
              v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v4 setObject:v13 forKeyedSubscript:overlayIdentifier];
            }

            [v13 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int64_t)_ordinalForOverlayType:(int64_t)type
{
  v3 = 10;
  if (type != 1)
  {
    v3 = 0;
  }

  if (type == 2)
  {
    return 20;
  }

  else
  {
    return v3;
  }
}

- (int64_t)_overlayTypeForOverlaySeriesData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && (v17 = 0u, v18 = 0u, v15 = 0u, v16 = 0u, (v6 = [dataCopy countByEnumeratingWithState:&v15 objects:v19 count:16]) != 0))
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        graphSeries = [*(*(&v15 + 1) + 8 * i) graphSeries];
        overlayType = [graphSeries overlayType];
        v13 = [(HKGraphView *)self _ordinalForOverlayType:overlayType];
        if (v13 > [(HKGraphView *)self _ordinalForOverlayType:v8])
        {
          v8 = overlayType;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_overlayEnvironmentType
{
  if ([(HKGraphView *)self _drawingDuringAutoscale]|| [(HKGraphView *)self _drawingDuringScrolling])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_drawOverlaysIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [(HKGraphView *)self _overlayTypeForOverlaySeriesData:neededCopy];
  if ([(HKGraphView *)self previousOverlayType])
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  v7 = v6;
  if (!v6 || [(HKGraphView *)self previousOverlayType]&& !v5)
  {
    overlayView = [(HKGraphView *)self overlayView];
    [overlayView setHidden:v7];
  }

  [(HKGraphView *)self setPreviousOverlayType:v5];
  _overlayEnvironmentType = [(HKGraphView *)self _overlayEnvironmentType];
  if (![(HKGraphView *)self _drawingDuringScrolling]&& v5 && _overlayEnvironmentType && (_overlayEnvironmentType != 2 || v5 != 1))
  {
    overlayView2 = [(HKGraphView *)self overlayView];
    superview = [overlayView2 superview];

    overlayView3 = [(HKGraphView *)self overlayView];
    [superview bringSubviewToFront:overlayView3];

    v13 = [(HKGraphView *)self _nonOverlappingOverlaySeriesData:neededCopy];
    v14 = [(HKGraphView *)self _overlappingOverlaySeriesData:neededCopy];
    overlayView4 = [(HKGraphView *)self overlayView];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37__HKGraphView__drawOverlaysIfNeeded___block_invoke;
    v18[3] = &unk_1E81B6610;
    v19 = v13;
    selfCopy = self;
    v21 = v14;
    v16 = v14;
    v17 = v13;
    [overlayView4 drawContentUsingBlock:v18];
  }
}

void __37__HKGraphView__drawOverlaysIfNeeded___block_invoke(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v29 + 1) + 8 * i);
        v8 = v34;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        v10 = *(a1 + 40);
        v11 = [v10 overlayView];
        [v10 _overlayViewsForOverlayData:v9 overlayView:v11];

        v12 = [v8 graphSeries];
        [v12 drawOverlayInContext:a2 seriesOverlayData:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = *(a1 + 48);
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v25 + 1) + 8 * j)];
        v19 = *(a1 + 40);
        v20 = [v19 overlayView];
        [v19 _overlayViewsForOverlayData:v18 overlayView:v20];

        v21 = [v18 firstObject];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 graphSeries];
          [v23 drawOverlayInContext:a2 seriesOverlayData:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }
}

- (void)_overlayViewsForOverlayData:(id)data overlayView:(id)view
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  viewCopy = view;
  firstObject = [dataCopy firstObject];
  if (firstObject)
  {
    overlayInteractiveViews = [(HKGraphView *)self overlayInteractiveViews];
    graphSeries = [firstObject graphSeries];
    v11 = [overlayInteractiveViews objectForKey:graphSeries];

    graphSeries2 = [firstObject graphSeries];
    v13 = graphSeries2;
    if (v11)
    {
      [viewCopy bounds];
      [v13 layoutOverlayInteractiveViews:v11 seriesOverlayData:dataCopy overlayRect:?];

LABEL_13:
      goto LABEL_14;
    }

    v14 = [graphSeries2 overlayInteractiveViewsWithDelegate:self];

    if (v14)
    {
      overlayInteractiveViews2 = [(HKGraphView *)self overlayInteractiveViews];
      graphSeries3 = [firstObject graphSeries];
      [overlayInteractiveViews2 setObject:v14 forKey:graphSeries3];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v14;
      v17 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
        do
        {
          v20 = 0;
          do
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v11);
            }

            [viewCopy addSubview:{*(*(&v22 + 1) + 8 * v20++), v22}];
          }

          while (v18 != v20);
          v18 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v18);
      }

      graphSeries4 = [firstObject graphSeries];
      [viewCopy bounds];
      [graphSeries4 layoutOverlayInteractiveViews:v11 seriesOverlayData:dataCopy overlayRect:?];

      goto LABEL_13;
    }
  }

LABEL_14:
}

- (HKGraphViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)axisInset
{
  top = self->_axisInset.top;
  left = self->_axisInset.left;
  bottom = self->_axisInset.bottom;
  right = self->_axisInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_shareYAxesForSeriesGroup:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)seriesDidInvalidatePaths:newDataArrived:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)snapScreenCoordinateToXAxisResolution:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)rangeIsVisible:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_touchTilesForContentOffset:applyHysteresis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_touchTilesForContentOffset:applyHysteresis:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end