@interface DTTapHeartbeatMessage
- (DTTapHeartbeatMessage)init;
- (unint64_t)heartbeatTime;
- (void)setHeartbeatTime:(unint64_t)a3;
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
  v2 = [(DTTapMessage *)self plist];
  v3 = [v2 objectForKey:@"heart"];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)setHeartbeatTime:(unint64_t)a3
{
  v5 = [(DTTapMessage *)self plist];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forKey:@"heart"];
}

@end