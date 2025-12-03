@interface QueueGroup
- (void)scheduleJob:(id)job toDispatchGroup:(id)group;
@end

@implementation QueueGroup

- (void)scheduleJob:(id)job toDispatchGroup:(id)group
{
  groupCopy = group;
  jobCopy = job;
  queues = [(QueueGroup *)self queues];
  v9 = [queues objectAtIndexedSubscript:self->_roundRobinIdx];
  dispatch_group_async(groupCopy, v9, jobCopy);

  v10 = self->_roundRobinIdx + 1;
  queues2 = [(QueueGroup *)self queues];
  self->_roundRobinIdx = v10 % [queues2 count];
}

@end