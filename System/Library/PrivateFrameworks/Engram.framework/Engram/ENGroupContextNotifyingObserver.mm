@interface ENGroupContextNotifyingObserver
- (ENGroupContextNotifyingObserver)initWithQueue:(id)queue;
- (void)groupContext:(id)context didCacheGroup:(id)group;
- (void)groupContext:(id)context didCreateGroup:(id)group;
- (void)groupContext:(id)context didUpdateGroup:(id)group withNewGroup:(id)newGroup;
@end

@implementation ENGroupContextNotifyingObserver

- (ENGroupContextNotifyingObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ENGroupContextNotifyingObserver;
  v6 = [(ENGroupContextNotifyingObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)groupContext:(id)context didCreateGroup:(id)group
{
  groupCopy = group;
  queue = [(ENGroupContextNotifyingObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  onGroupCreate = [(ENGroupContextNotifyingObserver *)self onGroupCreate];

  if (onGroupCreate)
  {
    onGroupCreate2 = [(ENGroupContextNotifyingObserver *)self onGroupCreate];
    (onGroupCreate2)[2](onGroupCreate2, groupCopy);
  }
}

- (void)groupContext:(id)context didCacheGroup:(id)group
{
  groupCopy = group;
  queue = [(ENGroupContextNotifyingObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  onGroupCache = [(ENGroupContextNotifyingObserver *)self onGroupCache];

  if (onGroupCache)
  {
    onGroupCache2 = [(ENGroupContextNotifyingObserver *)self onGroupCache];
    (onGroupCache2)[2](onGroupCache2, groupCopy);
  }
}

- (void)groupContext:(id)context didUpdateGroup:(id)group withNewGroup:(id)newGroup
{
  groupCopy = group;
  newGroupCopy = newGroup;
  queue = [(ENGroupContextNotifyingObserver *)self queue];
  dispatch_assert_queue_V2(queue);

  onGroupUpdate = [(ENGroupContextNotifyingObserver *)self onGroupUpdate];

  if (onGroupUpdate)
  {
    onGroupUpdate2 = [(ENGroupContextNotifyingObserver *)self onGroupUpdate];
    (onGroupUpdate2)[2](onGroupUpdate2, groupCopy, newGroupCopy);
  }
}

@end