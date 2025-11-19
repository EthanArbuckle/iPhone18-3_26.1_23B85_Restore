@interface _dayDrainInfo
- (_dayDrainInfo)init;
@end

@implementation _dayDrainInfo

- (_dayDrainInfo)init
{
  v3.receiver = self;
  v3.super_class = _dayDrainInfo;
  result = [(_dayDrainInfo *)&v3 init];
  if (result)
  {
    result->_drainSoFar = 0;
    result->_lastBatterySoC = 0;
  }

  return result;
}

@end