@interface CKDPCSKeySyncTracker
- (unint64_t)state;
- (void)waitOnSyncWithQueue:(id)a3 waiterOperationID:(id)a4 handler:(id)a5;
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

- (void)waitOnSyncWithQueue:(id)a3 waiterOperationID:(id)a4 handler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v13 = objc_msgSend_syncGroup(self, v11, v12);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22528EF70;
  block[3] = &unk_278546C30;
  block[4] = self;
  v17 = v8;
  v18 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_group_notify(v13, v10, block);
}

@end