@interface MFDeliveryResult
- (MFDeliveryResult)initWithStatus:(int64_t)a3;
@end

@implementation MFDeliveryResult

- (MFDeliveryResult)initWithStatus:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = MFDeliveryResult;
  v4 = [(MFDeliveryResult *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_status = a3;
    v4->_isWifi = [+[MFNetworkController sharedInstance](MFNetworkController isFatPipe];
  }

  return v5;
}

@end