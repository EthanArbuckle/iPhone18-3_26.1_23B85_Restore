@interface DTTapHeartbeatMemo
- (DTTapHeartbeatMemo)initWithTimestamp:(unint64_t)timestamp;
@end

@implementation DTTapHeartbeatMemo

- (DTTapHeartbeatMemo)initWithTimestamp:(unint64_t)timestamp
{
  v5.receiver = self;
  v5.super_class = DTTapHeartbeatMemo;
  result = [(DTTapHeartbeatMemo *)&v5 init];
  if (result)
  {
    result->_timestamp = timestamp;
  }

  return result;
}

@end