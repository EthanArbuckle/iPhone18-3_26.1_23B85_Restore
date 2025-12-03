@interface IDSUTunTimingEventKernelTest
- (IDSUTunTimingEventKernelTest)initWithTimestamp:(double)timestamp kernelTime:(double)time bytes:(int64_t)bytes;
@end

@implementation IDSUTunTimingEventKernelTest

- (IDSUTunTimingEventKernelTest)initWithTimestamp:(double)timestamp kernelTime:(double)time bytes:(int64_t)bytes
{
  v9.receiver = self;
  v9.super_class = IDSUTunTimingEventKernelTest;
  result = [(IDSUTunTimingEventKernelTest *)&v9 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_kernelTime = time;
    result->_bytes = bytes;
  }

  return result;
}

@end