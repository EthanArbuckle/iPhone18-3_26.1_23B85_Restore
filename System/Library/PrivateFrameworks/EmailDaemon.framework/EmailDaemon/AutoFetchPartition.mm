@interface AutoFetchPartition
- (AutoFetchPartition)initWithSyncedByMailbox:(id)a3 syncedByAccount:(id)a4;
@end

@implementation AutoFetchPartition

- (AutoFetchPartition)initWithSyncedByMailbox:(id)a3 syncedByAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AutoFetchPartition;
  v8 = [(AutoFetchPartition *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    syncedByMailbox = v8->_syncedByMailbox;
    v8->_syncedByMailbox = v9;

    v11 = [v7 copy];
    syncedByAccount = v8->_syncedByAccount;
    v8->_syncedByAccount = v11;
  }

  return v8;
}

@end