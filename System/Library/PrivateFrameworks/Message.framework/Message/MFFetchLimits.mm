@interface MFFetchLimits
- (MFFetchLimits)init;
@end

@implementation MFFetchLimits

- (MFFetchLimits)init
{
  v4.receiver = self;
  v4.super_class = MFFetchLimits;
  result = [(MFFetchLimits *)&v4 init];
  if (result)
  {
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    *&result->_fetchMinBytes = vnegq_f64(v3);
    result->_minBytesLeft = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end