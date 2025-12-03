@interface CHDPieSeries
- (CHDPieSeries)init;
- (id)shallowCopy;
@end

@implementation CHDPieSeries

- (id)shallowCopy
{
  v5.receiver = self;
  v5.super_class = CHDPieSeries;
  shallowCopy = [(CHDSeries *)&v5 shallowCopy];
  [shallowCopy setExplosion:*(&self->super.mHiddenFlag + 3)];

  return shallowCopy;
}

- (CHDPieSeries)init
{
  v3.receiver = self;
  v3.super_class = CHDPieSeries;
  result = [(CHDPieSeries *)&v3 init];
  if (result)
  {
    *(&result->super.mHiddenFlag + 3) = 0;
  }

  return result;
}

@end