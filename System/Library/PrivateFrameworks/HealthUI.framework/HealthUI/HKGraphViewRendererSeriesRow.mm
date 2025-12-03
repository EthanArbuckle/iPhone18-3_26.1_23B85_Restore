@interface HKGraphViewRendererSeriesRow
- (CGRect)yAxisRect;
- (HKGraphViewRendererSeriesRow)initWithRowSeries:(id)series mainSeriesForRow:(id)row selectedSeriesForRow:(id)forRow selectedRangeBoundariesXValue:(id)value selectedTouchPointCount:(int64_t)count yAxisRect:(CGRect)rect axisAnnotationHandler:(id)handler;
@end

@implementation HKGraphViewRendererSeriesRow

- (HKGraphViewRendererSeriesRow)initWithRowSeries:(id)series mainSeriesForRow:(id)row selectedSeriesForRow:(id)forRow selectedRangeBoundariesXValue:(id)value selectedTouchPointCount:(int64_t)count yAxisRect:(CGRect)rect axisAnnotationHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  seriesCopy = series;
  rowCopy = row;
  forRowCopy = forRow;
  valueCopy = value;
  handlerCopy = handler;
  v28.receiver = self;
  v28.super_class = HKGraphViewRendererSeriesRow;
  v23 = [(HKGraphViewRendererSeriesRow *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_overlaidSeries, series);
    objc_storeStrong(&v24->_mainSeriesForRow, row);
    objc_storeStrong(&v24->_selectedSeriesForRow, forRow);
    objc_storeStrong(&v24->_selectedRangeBoundariesXValue, value);
    v24->_selectedTouchPointCount = count;
    v24->_yAxisRect.origin.x = x;
    v24->_yAxisRect.origin.y = y;
    v24->_yAxisRect.size.width = width;
    v24->_yAxisRect.size.height = height;
    objc_storeStrong(&v24->_axisAnnotationHandler, handler);
  }

  return v24;
}

- (CGRect)yAxisRect
{
  x = self->_yAxisRect.origin.x;
  y = self->_yAxisRect.origin.y;
  width = self->_yAxisRect.size.width;
  height = self->_yAxisRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end