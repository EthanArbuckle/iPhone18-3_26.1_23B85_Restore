@interface CDRichComplicationSegmentedCornerView
- (int64_t)_segmentShapeStyleForIndex:(unint64_t)a3 angle:(double)a4;
@end

@implementation CDRichComplicationSegmentedCornerView

- (int64_t)_segmentShapeStyleForIndex:(unint64_t)a3 angle:(double)a4
{
  v8.receiver = self;
  v8.super_class = CDRichComplicationSegmentedCornerView;
  result = [(CDRichComplicationSegmentedView *)&v8 _segmentShapeStyleForIndex:a3 angle:?];
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

  if (a4 <= 3.14159265)
  {
    return v6;
  }

  return result;
}

@end