@interface DYShaderProfilerDrawCallInfo
- (DYShaderProfilerDrawCallInfo)init;
- (DYShaderProfilerTiming)computeTiming;
- (DYShaderProfilerTiming)fragmentTiming;
- (DYShaderProfilerTiming)timing;
- (DYShaderProfilerTiming)vertexTiming;
- (id).cxx_construct;
@end

@implementation DYShaderProfilerDrawCallInfo

- (DYShaderProfilerDrawCallInfo)init
{
  v6.receiver = self;
  v6.super_class = DYShaderProfilerDrawCallInfo;
  v2 = [(DYShaderProfilerDrawCallInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (DYShaderProfilerTiming)vertexTiming
{
  v3 = *&self[1]._cycle.min;
  *&retstr->_cycle.average = *&self->_time.max;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self[1]._time.average;
  return self;
}

- (DYShaderProfilerTiming)fragmentTiming
{
  v3 = *&self[2]._cycle.min;
  *&retstr->_cycle.average = *&self[1]._time.max;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self[2]._time.average;
  return self;
}

- (DYShaderProfilerTiming)computeTiming
{
  v3 = *&self[3]._cycle.min;
  *&retstr->_cycle.average = *&self[2]._time.max;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self[3]._time.average;
  return self;
}

- (DYShaderProfilerTiming)timing
{
  v3 = *&self[4]._cycle.min;
  *&retstr->_cycle.average = *&self[3]._time.max;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self[4]._time.average;
  return self;
}

- (id).cxx_construct
{
  *(self + 216) = 0u;
  *(self + 200) = 0u;
  *(self + 184) = 0u;
  *(self + 168) = 0u;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  return self;
}

@end