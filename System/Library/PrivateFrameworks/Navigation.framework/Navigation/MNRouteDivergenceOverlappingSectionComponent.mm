@interface MNRouteDivergenceOverlappingSectionComponent
- (GEOPolylineCoordinateRange)range;
- (id).cxx_construct;
@end

@implementation MNRouteDivergenceOverlappingSectionComponent

- (id).cxx_construct
{
  *(self + 2) = 0xBF80000000000000;
  *(self + 3) = 0xBF80000000000000;
  return self;
}

- (GEOPolylineCoordinateRange)range
{
  end = self->_range.end;
  start = self->_range.start;
  result.end = end;
  result.start = start;
  return result;
}

@end