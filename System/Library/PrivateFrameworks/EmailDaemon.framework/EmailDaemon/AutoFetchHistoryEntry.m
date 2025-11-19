@interface AutoFetchHistoryEntry
- (AutoFetchHistoryEntry)initWithMailboxPath:(id)a3;
@end

@implementation AutoFetchHistoryEntry

- (AutoFetchHistoryEntry)initWithMailboxPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AutoFetchHistoryEntry;
  v5 = [(AutoFetchHistoryEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    mailboxPath = v5->_mailboxPath;
    v5->_mailboxPath = v6;
  }

  return v5;
}

@end