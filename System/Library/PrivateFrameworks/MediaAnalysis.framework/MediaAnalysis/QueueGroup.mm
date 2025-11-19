@interface QueueGroup
- (void)scheduleJob:(id)a3 toDispatchGroup:(id)a4;
@end

@implementation QueueGroup

- (void)scheduleJob:(id)a3 toDispatchGroup:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(QueueGroup *)self queues];
  v9 = [v8 objectAtIndexedSubscript:self->_roundRobinIdx];
  dispatch_group_async(v6, v9, v7);

  v10 = self->_roundRobinIdx + 1;
  v11 = [(QueueGroup *)self queues];
  self->_roundRobinIdx = v10 % [v11 count];
}

@end