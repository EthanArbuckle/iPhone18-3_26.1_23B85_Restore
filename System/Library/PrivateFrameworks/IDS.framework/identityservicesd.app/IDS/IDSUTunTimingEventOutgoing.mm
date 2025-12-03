@interface IDSUTunTimingEventOutgoing
- (IDSUTunTimingEventOutgoing)initWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime sendTime:(double)sendTime bytes:(int64_t)bytes;
@end

@implementation IDSUTunTimingEventOutgoing

- (IDSUTunTimingEventOutgoing)initWithTimestamp:(double)timestamp duration:(double)duration processTime:(double)time compressionTime:(double)compressionTime sendTime:(double)sendTime bytes:(int64_t)bytes
{
  v15.receiver = self;
  v15.super_class = IDSUTunTimingEventOutgoing;
  result = [(IDSUTunTimingEventOutgoing *)&v15 init];
  if (result)
  {
    result->_timestamp = timestamp;
    result->_duration = duration;
    result->_processTime = time;
    result->_compressionTime = compressionTime;
    result->_sendTime = sendTime;
    result->_bytes = bytes;
  }

  return result;
}

@end