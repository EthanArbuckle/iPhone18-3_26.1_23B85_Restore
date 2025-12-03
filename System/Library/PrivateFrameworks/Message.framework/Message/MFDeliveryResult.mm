@interface MFDeliveryResult
- (MFDeliveryResult)initWithStatus:(int64_t)status;
- (id)description;
@end

@implementation MFDeliveryResult

- (MFDeliveryResult)initWithStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = MFDeliveryResult;
  v4 = [(MFDeliveryResult *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_status = status;
    v6 = +[MFNetworkController sharedInstance];
    v5->_isWifi = [v6 isFatPipe];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = MFMessageDeliveryStatusString(self->_status);
  v5 = [v3 stringWithFormat:@"status: %@, duration:%f, bytesSent: %d, isWifi: %d", v4, *&self->_duration, self->_bytesSent, self->_isWifi];

  return v5;
}

@end