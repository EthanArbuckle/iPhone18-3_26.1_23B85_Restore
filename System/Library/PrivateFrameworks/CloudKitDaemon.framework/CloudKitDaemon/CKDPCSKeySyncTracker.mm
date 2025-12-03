@interface CKDPCSKeySyncTracker
- (unint64_t)state;
- (void)waitOnSyncWithQueue:(id)queue waiterOperationID:(id)d handler:(id)handler;
@end

@implementation CKDPCSKeySyncTracker

- (unint64_t)state
{
  v4 = objc_msgSend_syncGroup(self, a2, v2);

  if (!v4)
  {
    return 0;
  }

  v7 = objc_msgSend_completionDate(self, v5, v6);
  objc_msgSend_timeIntervalSinceNow(v7, v8, v9);
  v11 = v10;

  v14 = objc_msgSend_completionDate(self, v12, v13);

  if (v14 && fabs(v11) < 1800.0)
  {
    return 2;
  }

  v18 = objc_msgSend_syncStatus(self, v15, v16);
  if (v18)
  {
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)waitOnSyncWithQueue:(id)queue waiterOperationID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queueCopy = queue;
  v13 = objc_msgSend_syncGroup(self, v11, v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22528EF70;
  block[3] = &unk_278546C30;
  block[4] = self;
  v17 = dCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = dCopy;
  dispatch_group_notify(v13, queueCopy, block);
}

@end