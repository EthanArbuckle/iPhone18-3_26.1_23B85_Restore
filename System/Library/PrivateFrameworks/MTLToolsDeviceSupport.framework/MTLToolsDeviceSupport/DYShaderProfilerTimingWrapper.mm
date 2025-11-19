@interface DYShaderProfilerTimingWrapper
- (DYShaderProfilerTiming)timing;
- (DYShaderProfilerTimingWrapper)init;
- (id).cxx_construct;
- (void)setTiming:(DYShaderProfilerTiming *)a3;
@end

@implementation DYShaderProfilerTimingWrapper

- (DYShaderProfilerTimingWrapper)init
{
  v6.receiver = self;
  v6.super_class = DYShaderProfilerTimingWrapper;
  v2 = [(DYShaderProfilerTimingWrapper *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (DYShaderProfilerTiming)timing
{
  v3 = *&self->_time.average;
  *&retstr->_cycle.average = *&self->_cycle.min;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self->_time.max;
  return self;
}

- (void)setTiming:(DYShaderProfilerTiming *)a3
{
  v3 = *&a3->_cycle.average;
  v4 = *&a3->_cycle.max;
  *&self->_timing._time.min = *&a3->_time.min;
  *&self->_timing._cycle.max = v4;
  *&self->_timing._cycle.average = v3;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end