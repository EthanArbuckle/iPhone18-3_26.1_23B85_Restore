@interface CPLPrequeliteWriteTransactionBlocker
- (CPLPrequeliteWriteTransactionBlocker)initWithBypassQueue:(id)queue blockedQueue:(id)blockedQueue;
@end

@implementation CPLPrequeliteWriteTransactionBlocker

- (CPLPrequeliteWriteTransactionBlocker)initWithBypassQueue:(id)queue blockedQueue:(id)blockedQueue
{
  queueCopy = queue;
  blockedQueueCopy = blockedQueue;
  dispatch_assert_queue_V2(blockedQueueCopy);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001BB920;
  v12[3] = &unk_100271F40;
  v8 = blockedQueueCopy;
  v13 = v8;
  v11.receiver = self;
  v11.super_class = CPLPrequeliteWriteTransactionBlocker;
  v9 = [(CPLPrequeliteWriteTransactionBlocker *)&v11 initWithUnblockBlock:v12];
  if (v9)
  {
    sub_1001BE068(v8, v9, queueCopy);
  }

  return v9;
}

@end