@interface _CNBufferingStrategy
+ (_CNBufferingStrategy)strategyWithCapacity:(unint64_t)a3;
+ (_CNBufferingStrategy)strategyWithTimeInterval:(double)a3 scheduler:(id)a4;
+ (id)combine:(id)a3;
@end

@implementation _CNBufferingStrategy

+ (_CNBufferingStrategy)strategyWithCapacity:(unint64_t)a3
{
  v3 = [[_CNSpatialBufferingStrategy alloc] initWithCapacity:a3];

  return v3;
}

+ (_CNBufferingStrategy)strategyWithTimeInterval:(double)a3 scheduler:(id)a4
{
  v5 = a4;
  v6 = [[_CNTemporalBufferingStrategy alloc] initWithTimeInterval:v5 scheduler:a3];

  return v6;
}

+ (id)combine:(id)a3
{
  v3 = a3;
  v4 = [[_CNCombinedBufferingStrategy alloc] initWithStrategies:v3];

  return v4;
}

@end