@interface CHDLineSeries
- (CHDLineSeries)initWithChart:(id)chart;
- (void)setMarker:(id)marker;
@end

@implementation CHDLineSeries

- (CHDLineSeries)initWithChart:(id)chart
{
  v4.receiver = self;
  v4.super_class = CHDLineSeries;
  result = [(CHDSeries *)&v4 initWithChart:chart];
  if (result)
  {
    result->mSmooth = 0;
  }

  return result;
}

- (void)setMarker:(id)marker
{
  markerCopy = marker;
  if (self->mMarker != markerCopy)
  {
    v6 = markerCopy;
    objc_storeStrong(&self->mMarker, marker);
    markerCopy = v6;
  }
}

@end