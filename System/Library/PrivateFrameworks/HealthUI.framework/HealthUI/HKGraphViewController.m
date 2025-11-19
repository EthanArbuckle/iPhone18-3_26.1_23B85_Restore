@interface HKGraphViewController
- (BOOL)graphViewPointSelectionDifferentiatesSeriesGroups:(id)a3;
- (HKGraphViewController)initWithGraphView:(id)a3 dateZoom:(int64_t)a4;
- (HKGraphViewControllerDelegate)delegate;
- (HKGraphViewDelegate)graphViewDelegateProxy;
- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5;
- (id)seriesSelectionLineColorForGraphView:(id)a3;
- (id)stackedSeriesGroupHeightsForGraphView:(id)a3;
- (int64_t)primarySeriesGroupIndexForGraphView:(id)a3;
- (int64_t)stackCountForGraphView:(id)a3;
- (void)graphView:(id)a3 didFinishUserScrollingToValueRange:(id)a4;
- (void)graphView:(id)a3 didUpdateFromDateZoom:(int64_t)a4 toDateZoom:(int64_t)a5 newVisibleRange:(id)a6;
- (void)graphView:(id)a3 didUpdateLegendViewsWithTopLegendFrame:(CGRect)a4;
- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4;
- (void)graphView:(id)a3 didUpdateSeries:(id)a4 newDataArrived:(BOOL)a5 changeContext:(int64_t)a6;
- (void)graphView:(id)a3 didUpdateVisibleValueRange:(id)a4 changeContext:(int64_t)a5;
- (void)graphView:(id)a3 didUpdateYAxisWidth:(double)a4 toWidth:(double)a5;
- (void)graphView:(id)a3 startupTime:(int64_t)a4;
- (void)graphViewDidBeginSelection:(id)a3;
- (void)graphViewDidEndSelection:(id)a3;
- (void)graphViewDidTapYAxis:(id)a3;
- (void)graphViewExternalSelectionEnd:(id)a3;
- (void)graphViewRenderedView:(id)a3;
- (void)graphViewSizeChanged:(id)a3;
@end

@implementation HKGraphViewController

- (HKGraphViewController)initWithGraphView:(id)a3 dateZoom:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HKGraphViewController;
  v8 = [(HKGraphViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_graphView, a3);
    [(HKGraphView *)v9->_graphView setDelegate:v9];
    objc_storeWeak(&v9->_graphViewDelegateProxy, 0);
    v9->_dateZoom = a4;
  }

  return v9;
}

- (BOOL)graphViewPointSelectionDifferentiatesSeriesGroups:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = [WeakRetained graphViewPointSelectionDifferentiatesSeriesGroups:v4];

  return v6;
}

- (void)graphViewDidBeginSelection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewDidBeginSelection:v4];
}

- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v7 didUpdateSelectedPoint:v6];
}

- (void)graphViewDidEndSelection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewDidEndSelection:v4];
}

- (void)graphView:(id)a3 didUpdateFromDateZoom:(int64_t)a4 toDateZoom:(int64_t)a5 newVisibleRange:(id)a6
{
  v10 = a6;
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v11 didUpdateFromDateZoom:a4 toDateZoom:a5 newVisibleRange:v10];
}

- (void)graphView:(id)a3 didUpdateVisibleValueRange:(id)a4 changeContext:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v9 didUpdateVisibleValueRange:v8 changeContext:a5];
}

- (void)graphView:(id)a3 didFinishUserScrollingToValueRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v7 didFinishUserScrollingToValueRange:v6];
}

- (int64_t)stackCountForGraphView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = [WeakRetained stackCountForGraphView:v4];

  return v6;
}

- (int64_t)primarySeriesGroupIndexForGraphView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
    v8 = [v7 primarySeriesGroupIndexForGraphView:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stackedSeriesGroupHeightsForGraphView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
    v8 = [v7 stackedSeriesGroupHeightsForGraphView:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v10 = [WeakRetained graphView:v8 graphSeriesForZoom:a4 stackOffset:a5];

  return v10;
}

- (void)graphViewSizeChanged:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewSizeChanged:v4];
}

- (void)graphView:(id)a3 didUpdateYAxisWidth:(double)a4 toWidth:(double)a5
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v8 didUpdateYAxisWidth:a4 toWidth:a5];
}

- (void)graphView:(id)a3 didUpdateSeries:(id)a4 newDataArrived:(BOOL)a5 changeContext:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v11 didUpdateSeries:v10 newDataArrived:v7 changeContext:a6];
}

- (id)seriesSelectionLineColorForGraphView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  v6 = [WeakRetained seriesSelectionLineColorForGraphView:v4];

  return v6;
}

- (void)graphView:(id)a3 didUpdateLegendViewsWithTopLegendFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v9 didUpdateLegendViewsWithTopLegendFrame:{x, y, width, height}];
}

- (void)graphViewDidTapYAxis:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewDidTapYAxis:v4];
}

- (void)graphView:(id)a3 startupTime:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphView:v6 startupTime:a4];
}

- (void)graphViewExternalSelectionEnd:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewExternalSelectionEnd:v4];
}

- (void)graphViewRenderedView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_graphViewDelegateProxy);
  [WeakRetained graphViewRenderedView:v4];
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