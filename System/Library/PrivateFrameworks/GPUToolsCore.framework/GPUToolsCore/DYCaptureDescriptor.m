@interface DYCaptureDescriptor
- (DYCaptureDescriptor)initWithAPI:(unint64_t)a3;
- (void)dealloc;
@end

@implementation DYCaptureDescriptor

- (DYCaptureDescriptor)initWithAPI:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DYCaptureDescriptor;
  result = [(DYCaptureDescriptor *)&v5 init];
  if (result)
  {
    result->_api = a3;
    *&result->_sessionId = xmmword_24D6A9380;
    result->_triggerFrame = 0xFFFFFFFFLL;
    *&result->_suspendAfterCapture = 257;
    result->_includeBacktraceInFbufs = 1;
    *&result->_unlockGraphicThreadsOnActivateCapture = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYCaptureDescriptor;
  [(DYCaptureDescriptor *)&v3 dealloc];
}

@end