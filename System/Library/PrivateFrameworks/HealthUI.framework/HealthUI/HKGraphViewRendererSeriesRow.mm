@interface HKGraphViewRendererSeriesRow
- (CGRect)yAxisRect;
- (HKGraphViewRendererSeriesRow)initWithRowSeries:(id)a3 mainSeriesForRow:(id)a4 selectedSeriesForRow:(id)a5 selectedRangeBoundariesXValue:(id)a6 selectedTouchPointCount:(int64_t)a7 yAxisRect:(CGRect)a8 axisAnnotationHandler:(id)a9;
@end

@implementation HKGraphViewRendererSeriesRow

- (HKGraphViewRendererSeriesRow)initWithRowSeries:(id)a3 mainSeriesForRow:(id)a4 selectedSeriesForRow:(id)a5 selectedRangeBoundariesXValue:(id)a6 selectedTouchPointCount:(int64_t)a7 yAxisRect:(CGRect)a8 axisAnnotationHandler:(id)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v27 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a9;
  v28.receiver = self;
  v28.super_class = HKGraphViewRendererSeriesRow;
  v23 = [(HKGraphViewRendererSeriesRow *)&v28 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_overlaidSeries, a3);
    objc_storeStrong(&v24->_mainSeriesForRow, a4);
    objc_storeStrong(&v24->_selectedSeriesForRow, a5);
    objc_storeStrong(&v24->_selectedRangeBoundariesXValue, a6);
    v24->_selectedTouchPointCount = a7;
    v24->_yAxisRect.origin.x = x;
    v24->_yAxisRect.origin.y = y;
    v24->_yAxisRect.size.width = width;
    v24->_yAxisRect.size.height = height;
    objc_storeStrong(&v24->_axisAnnotationHandler, a9);
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