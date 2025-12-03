@interface AutoFetchPartition
- (AutoFetchPartition)initWithSyncedByMailbox:(id)mailbox syncedByAccount:(id)account;
@end

@implementation AutoFetchPartition

- (AutoFetchPartition)initWithSyncedByMailbox:(id)mailbox syncedByAccount:(id)account
{
  mailboxCopy = mailbox;
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = AutoFetchPartition;
  v8 = [(AutoFetchPartition *)&v14 init];
  if (v8)
  {
    v9 = [mailboxCopy copy];
    syncedByMailbox = v8->_syncedByMailbox;
    v8->_syncedByMailbox = v9;

    v11 = [accountCopy copy];
    syncedByAccount = v8->_syncedByAccount;
    v8->_syncedByAccount = v11;
  }

  return v8;
}

@end