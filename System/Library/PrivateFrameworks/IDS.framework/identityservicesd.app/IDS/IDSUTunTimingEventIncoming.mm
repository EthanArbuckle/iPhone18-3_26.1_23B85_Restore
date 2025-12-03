@interface IDSUTunTimingEventIncoming
- (IDSUTunTimingEventIncoming)initWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime kernelTime:(double)kernelTime bytes:(int64_t)bytes;
@end

@implementation IDSUTunTimingEventIncoming

- (IDSUTunTimingEventIncoming)initWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime kernelTime:(double)kernelTime bytes:(int64_t)bytes
{
  v15.receiver = self;
  v15.super_class = IDSUTunTimingEventIncoming;
  result = [(IDSUTunTimingEventIncoming *)&v15 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_duration = duration;
    result->_processTime = time;
    result->_compressionTime = compressionTime;
    result->_kernelTime = kernelTime;
    result->_bytes = bytes;
  }

  return result;
}

@end