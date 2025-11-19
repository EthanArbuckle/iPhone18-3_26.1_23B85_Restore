@interface ENGroupContextNotifyingObserver
- (ENGroupContextNotifyingObserver)initWithQueue:(id)a3;
- (void)groupContext:(id)a3 didCacheGroup:(id)a4;
- (void)groupContext:(id)a3 didCreateGroup:(id)a4;
- (void)groupContext:(id)a3 didUpdateGroup:(id)a4 withNewGroup:(id)a5;
@end

@implementation ENGroupContextNotifyingObserver

- (ENGroupContextNotifyingObserver)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ENGroupContextNotifyingObserver;
  v6 = [(ENGroupContextNotifyingObserver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)groupContext:(id)a3 didCreateGroup:(id)a4
{
  v8 = a4;
  v5 = [(ENGroupContextNotifyingObserver *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ENGroupContextNotifyingObserver *)self onGroupCreate];

  if (v6)
  {
    v7 = [(ENGroupContextNotifyingObserver *)self onGroupCreate];
    (v7)[2](v7, v8);
  }
}

- (void)groupContext:(id)a3 didCacheGroup:(id)a4
{
  v8 = a4;
  v5 = [(ENGroupContextNotifyingObserver *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ENGroupContextNotifyingObserver *)self onGroupCache];

  if (v6)
  {
    v7 = [(ENGroupContextNotifyingObserver *)self onGroupCache];
    (v7)[2](v7, v8);
  }
}

- (void)groupContext:(id)a3 didUpdateGroup:(id)a4 withNewGroup:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(ENGroupContextNotifyingObserver *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ENGroupContextNotifyingObserver *)self onGroupUpdate];

  if (v9)
  {
    v10 = [(ENGroupContextNotifyingObserver *)self onGroupUpdate];
    (v10)[2](v10, v11, v7);
  }
}

@end