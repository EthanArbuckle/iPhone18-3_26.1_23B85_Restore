@interface DTTapHeartbeatMemo
- (DTTapHeartbeatMemo)initWithTimestamp:(unint64_t)a3;
@end

@implementation DTTapHeartbeatMemo

- (DTTapHeartbeatMemo)initWithTimestamp:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DTTapHeartbeatMemo;
  result = [(DTTapHeartbeatMemo *)&v5 init];
  if (result)
  {
    result->_timestamp = a3;
  }

  return result;
}

@end