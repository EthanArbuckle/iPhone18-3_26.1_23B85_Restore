@interface DTTapHeartbeatMessage
- (DTTapHeartbeatMessage)init;
- (unint64_t)heartbeatTime;
- (void)setHeartbeatTime:(unint64_t)time;
@end

@implementation DTTapHeartbeatMessage

- (DTTapHeartbeatMessage)init
{
  v3.receiver = self;
  v3.super_class = DTTapHeartbeatMessage;
  return [(DTTapMessage *)&v3 initAsKind:8];
}

- (unint64_t)heartbeatTime
{
  plist = [(DTTapMessage *)self plist];
  v3 = [plist objectForKey:@"heart"];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setHeartbeatTime:(unint64_t)time
{
  plist = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
  [plist setObject:v4 forKey:@"heart"];
}

@end