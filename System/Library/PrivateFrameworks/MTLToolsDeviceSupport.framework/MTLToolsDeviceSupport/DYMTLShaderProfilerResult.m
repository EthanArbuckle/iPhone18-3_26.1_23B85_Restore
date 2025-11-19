@interface DYMTLShaderProfilerResult
- (DYMTLShaderProfilerResult)init;
@end

@implementation DYMTLShaderProfilerResult

- (DYMTLShaderProfilerResult)init
{
  v7.receiver = self;
  v7.super_class = DYMTLShaderProfilerResult;
  v2 = [(DYShaderProfilerResult *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:1024];
    [(DYShaderProfilerResult *)v2 setShaderProfilingFrameTimes:v3];

    v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1024];
    [(DYShaderProfilerResult *)v2 setBlitEncoderTimeInfo:v4];

    v5 = v2;
  }

  return v2;
}

@end