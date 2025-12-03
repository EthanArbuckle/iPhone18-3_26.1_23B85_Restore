@interface FCNetworkSession
- (FCNetworkSession)init;
- (NSDate)endDate;
- (NSDate)startDate;
- (id)generateSessionJSONDataWithOptions:(unint64_t)options error:(id *)error;
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
    array = [MEMORY[0x1E695DF70] array];
    eventGroups = v2->_eventGroups;
    v2->_eventGroups = array;
  }

  return v2;
}

- (NSDate)startDate
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"startDate"];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (NSDate)endDate
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"endDate"];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];
  lastObject = [v3 lastObject];

  return lastObject;
}

- (unint64_t)totalSuccessCount
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"@sum.successesCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)totalFailureCount
{
  v2 = [(NSMutableArray *)self->_eventGroups valueForKeyPath:@"@sum.failuresCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)generateSessionJSONDataWithOptions:(unint64_t)options error:(id *)error
{
  v6 = [(NSMutableArray *)self->_eventGroups fc_arrayByTransformingWithBlock:&__block_literal_global_197];
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:options error:error];

  return v7;
}

@end