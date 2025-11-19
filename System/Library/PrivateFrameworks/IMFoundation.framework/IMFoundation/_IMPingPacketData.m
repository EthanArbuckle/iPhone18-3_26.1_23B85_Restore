@interface _IMPingPacketData
- (_IMPingPacketData)initWithSequeneceNumber:(int)a3 timesent:(timeval *)a4 error:(int)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (timeval)timeSent;
@end

@implementation _IMPingPacketData

- (_IMPingPacketData)initWithSequeneceNumber:(int)a3 timesent:(timeval *)a4 error:(int)a5
{
  v9.receiver = self;
  v9.super_class = _IMPingPacketData;
  result = [(_IMPingPacketData *)&v9 init];
  if (result)
  {
    result->_sequenceNumber = a3;
    result->_timeSent = *a4;
    result->_error = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(_IMPingPacketData, a2, a3);
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