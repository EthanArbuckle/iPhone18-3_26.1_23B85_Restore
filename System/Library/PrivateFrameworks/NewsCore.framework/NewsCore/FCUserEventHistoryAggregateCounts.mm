@interface FCUserEventHistoryAggregateCounts
+ (FCUserEventHistoryAggregateCounts)empty;
@end

@implementation FCUserEventHistoryAggregateCounts

+ (FCUserEventHistoryAggregateCounts)empty
{
  v2 = objc_opt_new();
  [v2 setTag:-1];
  [v2 setChannelTopic:-1];
  [v2 setGroup:-1];

  return v2;
}

@end