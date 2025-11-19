@interface GTShaderProfilerSessionRequest
- (GTShaderProfilerSessionRequest)init;
@end

@implementation GTShaderProfilerSessionRequest

- (GTShaderProfilerSessionRequest)init
{
  v6.receiver = self;
  v6.super_class = GTShaderProfilerSessionRequest;
  v2 = [(GTShaderProfilerSessionRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_executionMode = 0;
    *&v2->_profilerMode = 0x200000000;
    streamDataToLoad = v2->_streamDataToLoad;
    v2->_streamDataToLoad = 0;
  }

  return v3;
}

@end