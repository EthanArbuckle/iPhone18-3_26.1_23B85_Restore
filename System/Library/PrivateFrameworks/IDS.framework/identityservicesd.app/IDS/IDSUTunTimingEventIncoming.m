@interface IDSUTunTimingEventIncoming
- (IDSUTunTimingEventIncoming)initWithTimestamp:(double)a3 duration:(double)a4 processTime:(double)a5 compressionTime:(double)a6 kernelTime:(double)a7 bytes:(int64_t)a8;
@end

@implementation IDSUTunTimingEventIncoming

- (IDSUTunTimingEventIncoming)initWithTimestamp:(double)a3 duration:(double)a4 processTime:(double)a5 compressionTime:(double)a6 kernelTime:(double)a7 bytes:(int64_t)a8
{
  v15.receiver = self;
  v15.super_class = IDSUTunTimingEventIncoming;
  result = [(IDSUTunTimingEventIncoming *)&v15 init];
  if (result)
  {
    result->_timestamp = a3;
    result->_duration = a4;
    result->_processTime = a5;
    result->_compressionTime = a6;
    result->_kernelTime = a7;
    result->_bytes = a8;
  }

  return result;
}

@end