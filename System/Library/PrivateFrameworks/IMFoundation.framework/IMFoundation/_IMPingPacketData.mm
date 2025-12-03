@interface _IMPingPacketData
- (_IMPingPacketData)initWithSequeneceNumber:(int)number timesent:(timeval *)timesent error:(int)error;
- (id)copyWithZone:(_NSZone *)zone;
- (timeval)timeSent;
@end

@implementation _IMPingPacketData

- (_IMPingPacketData)initWithSequeneceNumber:(int)number timesent:(timeval *)timesent error:(int)error
{
  v9.receiver = self;
  v9.super_class = _IMPingPacketData;
  result = [(_IMPingPacketData *)&v9 init];
  if (result)
  {
    result->_sequenceNumber = number;
    result->_timeSent = *timesent;
    result->_error = error;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(_IMPingPacketData, a2, zone);
  result = objc_msgSend_init(v4, v5, v6);
  if (result)
  {
    *(result + 2) = self->_sequenceNumber;
    *(result + 5) = *&self->_rtt;
    *(result + 12) = self->_timedOut;
    *(result + 24) = self->_timeSent;
    *(result + 4) = self->_error;
  }

  return result;
}

- (timeval)timeSent
{
  v2 = *&self->_timeSent.tv_usec;
  tv_sec = self->_timeSent.tv_sec;
  result.tv_usec = v2;
  result.tv_sec = tv_sec;
  return result;
}

@end