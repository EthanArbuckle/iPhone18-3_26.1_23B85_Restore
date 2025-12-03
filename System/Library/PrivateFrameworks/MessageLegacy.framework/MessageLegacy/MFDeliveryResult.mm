@interface MFDeliveryResult
- (MFDeliveryResult)initWithStatus:(int64_t)status;
@end

@implementation MFDeliveryResult

- (MFDeliveryResult)initWithStatus:(int64_t)status
{
  v7.receiver = self;
  v7.super_class = MFDeliveryResult;
  v4 = [(MFDeliveryResult *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_status = status;
    v4->_isWifi = [+[MFNetworkController sharedInstance](MFNetworkController isFatPipe];
  }

  return v5;
}

@end