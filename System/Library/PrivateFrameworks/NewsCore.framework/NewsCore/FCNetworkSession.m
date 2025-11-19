@interface FCNetworkSession
- (FCNetworkSession)init;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)generateSessionJSONDataWithOptions:(unint64_t)a3 error:(id *)a4;
- (unint64_t)totalFailureCount;
- (unint64_t)totalSuccessCount;
@end

@implementation FCNetworkSession

- (FCNetworkSession)init
{
  v6.receiver = self;
  v6.super_class = FCNetworkSession;
  v2 = [(FCNetworkSession *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    eventGroups = v2->_eventGroups;
    v2->_eventGroups = v3;
  }

  return v2;
}

- (NSDate)startDate
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"startDate"];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  v4 = [v3 firstObject];

  return v4;
}

- (NSDate)endDate
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"endDate"];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  v4 = [v3 lastObject];

  return v4;
}

- (unint64_t)totalSuccessCount
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"@sum.successesCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unint64_t)totalFailureCount
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"@sum.failuresCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (id)generateSessionJSONDataWithOptions:(unint64_t)a3 error:(id *)a4
{
  v6 = [(NSMutableArray *)self->_eventGroups fc_arrayByTransformingWithBlock:&__block_literal_global_197];
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:a3 error:a4];

  return v7;
}

@end