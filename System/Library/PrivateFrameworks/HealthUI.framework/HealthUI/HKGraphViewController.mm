@interface HKGraphViewController
- (BOOL)graphViewPointSelectionDifferentiatesSeriesGroups:(id)groups;
- (HKGraphViewController)initWithGraphView:(id)view dateZoom:(int64_t)zoom;
- (HKGraphViewControllerDelegate)delegate;
- (HKGraphViewDelegate)graphViewDelegateProxy;
- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset;
- (id)seriesSelectionLineColorForGraphView:(id)view;
- (id)stackedSeriesGroupHeightsForGraphView:(id)view;
- (int64_t)primarySeriesGroupIndexForGraphView:(id)view;
- (int64_t)stackCountForGraphView:(id)view;
- (void)graphView:(id)view didFinishUserScrollingToValueRange:(id)range;
- (void)graphView:(id)view didUpdateFromDateZoom:(int64_t)zoom toDateZoom:(int64_t)dateZoom newVisibleRange:(id)range;
- (void)graphView:(id)view didUpdateLegendViewsWithTopLegendFrame:(CGRect)frame;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context;
- (void)graphView:(id)view didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context;
- (void)graphView:(id)view didUpdateYAxisWidth:(double)width toWidth:(double)toWidth;
- (void)graphView:(id)view startupTime:(int64_t)time;
- (void)graphViewDidBeginSelection:(id)selection;
- (void)graphViewDidEndSelection:(id)selection;
- (void)graphViewDidTapYAxis:(id)axis;
- (void)graphViewExternalSelectionEnd:(id)end;
- (void)graphViewRenderedView:(id)view;
- (void)graphViewSizeChanged:(id)changed;
@end

@implementation HKGraphViewController

- (HKGraphViewController)initWithGraphView:(id)view dateZoom:(int64_t)zoom
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = HKGraphViewController;
  v8 = [(HKGraphViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_graphView, view);
    [(HKGraphView *)v9->_graphView setDelegate:v9];
    objc_storeWeak(&v9->_graphViewDelegateProxy, 0);
    v9->_dateZoom = zoom;
  }

  return v9;
}

- (BOOL)graphViewPointSelectionDifferentiatesSeriesGroups:(id)groups
{
  groupsCopy = groups;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = [WeakRetained graphViewPointSelectionDifferentiatesSeriesGroups:groupsCopy];

  return v6;
}

- (void)graphViewDidBeginSelection:(id)selection
{
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewDidBeginSelection:selectionCopy];
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  pointCopy = point;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy didUpdateSelectedPoint:pointCopy];
}

- (void)graphViewDidEndSelection:(id)selection
{
  selectionCopy = selection;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewDidEndSelection:selectionCopy];
}

- (void)graphView:(id)view didUpdateFromDateZoom:(int64_t)zoom toDateZoom:(int64_t)dateZoom newVisibleRange:(id)range
{
  rangeCopy = range;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy didUpdateFromDateZoom:zoom toDateZoom:dateZoom newVisibleRange:rangeCopy];
}

- (void)graphView:(id)view didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context
{
  rangeCopy = range;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy didUpdateVisibleValueRange:rangeCopy changeContext:context];
}

- (void)graphView:(id)view didFinishUserScrollingToValueRange:(id)range
{
  rangeCopy = range;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy didFinishUserScrollingToValueRange:rangeCopy];
}

- (int64_t)stackCountForGraphView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = [WeakRetained stackCountForGraphView:viewCopy];

  return v6;
}

- (int64_t)primarySeriesGroupIndexForGraphView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
    v8 = [v7 primarySeriesGroupIndexForGraphView:viewCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stackedSeriesGroupHeightsForGraphView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
    v8 = [v7 stackedSeriesGroupHeightsForGraphView:viewCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v10 = [WeakRetained graphView:viewCopy graphSeriesForZoom:zoom stackOffset:offset];

  return v10;
}

- (void)graphViewSizeChanged:(id)changed
{
  changedCopy = changed;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewSizeChanged:changedCopy];
}

- (void)graphView:(id)view didUpdateYAxisWidth:(double)width toWidth:(double)toWidth
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy didUpdateYAxisWidth:width toWidth:toWidth];
}

- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context
{
  arrivedCopy = arrived;
  seriesCopy = series;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy didUpdateSeries:seriesCopy newDataArrived:arrivedCopy changeContext:context];
}

- (id)seriesSelectionLineColorForGraphView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = [WeakRetained seriesSelectionLineColorForGraphView:viewCopy];

  return v6;
}

- (void)graphView:(id)view didUpdateLegendViewsWithTopLegendFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy didUpdateLegendViewsWithTopLegendFrame:{x, y, width, height}];
}

- (void)graphViewDidTapYAxis:(id)axis
{
  axisCopy = axis;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewDidTapYAxis:axisCopy];
}

- (void)graphView:(id)view startupTime:(int64_t)time
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:viewCopy startupTime:time];
}

- (void)graphViewExternalSelectionEnd:(id)end
{
  endCopy = end;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewExternalSelectionEnd:endCopy];
}

- (void)graphViewRenderedView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewRenderedView:viewCopy];
}

- (HKGraphViewDelegate)graphViewDelegateProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);

  return WeakRetained;
}

- (HKGraphViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end