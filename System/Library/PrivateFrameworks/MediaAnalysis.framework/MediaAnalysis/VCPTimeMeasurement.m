@interface VCPTimeMeasurement
- (VCPTimeMeasurement)init;
- (int)start;
- (int)stop;
@end

@implementation VCPTimeMeasurement

- (VCPTimeMeasurement)init
{
  v6.receiver = self;
  v6.super_class = VCPTimeMeasurement;
  v2 = [(VCPTimeMeasurement *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_elapsedTimeSeconds = 0.0;
    v2->_timebase = 0;
    v2->_started = 0;
    v4 = v2;
  }

  return v3;
}

- (int)start
{
  if (self->_started)
  {
    return -18;
  }

  numer = self->_timebase.numer;
  p_timebase = &self->_timebase;
  if (numer || self->_timebase.denom || (result = mach_timebase_info(p_timebase)) == 0)
  {
    self->_started = 1;
    v6 = mach_absolute_time();
    result = 0;
    self->_start = v6;
  }

  return result;
}

- (int)stop
{
  if (!self->_started)
  {
    return -18;
  }

  v3 = mach_absolute_time();
  result = 0;
  v5 = (v3 - self->_start) * self->_timebase.numer;
  self->_started = 0;
  LODWORD(v6) = self->_timebase.denom;
  self->_elapsedTimeSeconds = self->_elapsedTimeSeconds + v5 / v6 / 1000000000.0;
  return result;
}

@end