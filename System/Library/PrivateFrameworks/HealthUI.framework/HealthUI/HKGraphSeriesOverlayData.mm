@interface HKGraphSeriesOverlayData
- (CGAffineTransform)graphSeriesPointTransform;
- (CGRect)graphSeriesScreenRect;
- (HKGraphSeriesOverlayData)initWithGraphSeries:(id)series graphSeriesScreenRect:(CGRect)rect graphSeriesCoordinates:(id)coordinates graphSeriesPointTransform:(CGAffineTransform *)transform;
@end

@implementation HKGraphSeriesOverlayData

- (HKGraphSeriesOverlayData)initWithGraphSeries:(id)series graphSeriesScreenRect:(CGRect)rect graphSeriesCoordinates:(id)coordinates graphSeriesPointTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  seriesCopy = series;
  coordinatesCopy = coordinates;
  v21.receiver = self;
  v21.super_class = HKGraphSeriesOverlayData;
  v16 = [(HKGraphSeriesOverlayData *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_graphSeries, series);
    v17->_graphSeriesScreenRect.origin.x = x;
    v17->_graphSeriesScreenRect.origin.y = y;
    v17->_graphSeriesScreenRect.size.width = width;
    v17->_graphSeriesScreenRect.size.height = height;
    objc_storeStrong(&v17->_graphSeriesCoordinates, coordinates);
    v18 = *&transform->a;
    v19 = *&transform->c;
    *&v17->_graphSeriesPointTransform.tx = *&transform->tx;
    *&v17->_graphSeriesPointTransform.c = v19;
    *&v17->_graphSeriesPointTransform.a = v18;
  }

  return v17;
}

- (CGRect)graphSeriesScreenRect
{
  x = self->_graphSeriesScreenRect.origin.x;
  y = self->_graphSeriesScreenRect.origin.y;
  width = self->_graphSeriesScreenRect.size.width;
  height = self->_graphSeriesScreenRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)graphSeriesPointTransform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

@end