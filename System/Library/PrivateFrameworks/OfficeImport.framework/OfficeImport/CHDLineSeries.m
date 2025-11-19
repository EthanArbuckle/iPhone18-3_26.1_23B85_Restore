@interface CHDLineSeries
- (CHDLineSeries)initWithChart:(id)a3;
- (void)setMarker:(id)a3;
@end

@implementation CHDLineSeries

- (CHDLineSeries)initWithChart:(id)a3
{
  v4.receiver = self;
  v4.super_class = CHDLineSeries;
  result = [(CHDSeries *)&v4 initWithChart:a3];
  if (result)
  {
    result->mSmooth = 0;
  }

  return result;
}

- (void)setMarker:(id)a3
{
  v5 = a3;
  if (self->mMarker != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mMarker, a3);
    v5 = v6;
  }
}

@end