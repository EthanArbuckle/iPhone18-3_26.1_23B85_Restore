@interface FCUserEventHistoryAggregateStoreData
+ (FCUserEventHistoryAggregateStoreData)empty;
- (FCUserEventHistoryAggregateStoreData)init;
@end

@implementation FCUserEventHistoryAggregateStoreData

- (FCUserEventHistoryAggregateStoreData)init
{
  v6.receiver = self;
  v6.super_class = FCUserEventHistoryAggregateStoreData;
  v2 = [(FCUserEventHistoryAggregateStoreData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    aggregateCounts = v2->_aggregateCounts;
    v2->_aggregateCounts = v3;
  }

  return v2;
}

+ (FCUserEventHistoryAggregateStoreData)empty
{
  v2 = objc_opt_new();
  [v2 setBaselineTimestamp:-1];
  [v2 setBaselineStatelessEventCount:-1];
  [v2 setBaselineTotalEventCount:-1];
  v3 = +[FCUserEventHistoryAggregateCounts empty];
  [v2 setAggregateCounts:v3];

  return v2;
}

@end