@interface _CNBufferingStrategy
+ (_CNBufferingStrategy)strategyWithCapacity:(unint64_t)capacity;
+ (_CNBufferingStrategy)strategyWithTimeInterval:(double)interval scheduler:(id)scheduler;
+ (id)combine:(id)combine;
@end

@implementation _CNBufferingStrategy

+ (_CNBufferingStrategy)strategyWithCapacity:(unint64_t)capacity
{
  v3 = [[_CNSpatialBufferingStrategy alloc] initWithCapacity:capacity];

  return v3;
}

+ (_CNBufferingStrategy)strategyWithTimeInterval:(double)interval scheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v6 = [[_CNTemporalBufferingStrategy alloc] initWithTimeInterval:schedulerCopy scheduler:interval];

  return v6;
}

+ (id)combine:(id)combine
{
  combineCopy = combine;
  v4 = [[_CNCombinedBufferingStrategy alloc] initWithStrategies:combineCopy];

  return v4;
}

@end