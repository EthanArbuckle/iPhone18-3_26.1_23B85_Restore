@interface CDRichComplicationSegmentedCornerView
- (int64_t)_segmentShapeStyleForIndex:(unint64_t)index angle:(double)angle;
@end

@implementation CDRichComplicationSegmentedCornerView

- (int64_t)_segmentShapeStyleForIndex:(unint64_t)index angle:(double)angle
{
  v8.receiver = self;
  v8.super_class = CDRichComplicationSegmentedCornerView;
  result = [(CDRichComplicationSegmentedView *)&v8 _segmentShapeStyleForIndex:index angle:?];
  v6 = 1;
  v7 = 2;
  if (result != 1)
  {
    v7 = result;
  }

  if (result != 2)
  {
    v6 = v7;
  }

  if (angle <= 3.14159265)
  {
    return v6;
  }

  return result;
}

@end