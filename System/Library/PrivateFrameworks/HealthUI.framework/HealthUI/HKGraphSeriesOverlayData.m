@interface HKGraphSeriesOverlayData
- (CGAffineTransform)graphSeriesPointTransform;
- (CGRect)graphSeriesScreenRect;
- (HKGraphSeriesOverlayData)initWithGraphSeries:(id)a3 graphSeriesScreenRect:(CGRect)a4 graphSeriesCoordinates:(id)a5 graphSeriesPointTransform:(CGAffineTransform *)a6;
@end

@implementation HKGraphSeriesOverlayData

- (HKGraphSeriesOverlayData)initWithGraphSeries:(id)a3 graphSeriesScreenRect:(CGRect)a4 graphSeriesCoordinates:(id)a5 graphSeriesPointTransform:(CGAffineTransform *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = HKGraphSeriesOverlayData;
  v16 = [(HKGraphSeriesOverlayData *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_graphSeries, a3);
    v17->_graphSeriesScreenRect.origin.x = x;
    v17->_graphSeriesScreenRect.origin.y = y;
    v17->_graphSeriesScreenRect.size.width = width;
    v17->_graphSeriesScreenRect.size.height = height;
    objc_storeStrong(&v17->_graphSeriesCoordinates, a5);
    v18 = *&a6->a;
    v19 = *&a6->c;
    *&v17->_graphSeriesPointTransform.tx = *&a6->tx;
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