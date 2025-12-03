@interface MFArchiveOrDeleteMutedThreadMessageRule
- (BOOL)canExecuteRuleOnMessage:(id)message;
- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager;
@end

@implementation MFArchiveOrDeleteMutedThreadMessageRule

- (BOOL)canExecuteRuleOnMessage:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = MFArchiveOrDeleteMutedThreadMessageRule;
  if ([(MFMutedThreadMessageRule *)&v11 canExecuteRuleOnMessage:messageCopy])
  {
    mailbox = [messageCopy mailbox];
    mailboxType = [mailbox mailboxType];

    account = [messageCopy account];
    shouldArchiveByDefault = [account shouldArchiveByDefault];

    if (mailboxType == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = (mailboxType != 3) | shouldArchiveByDefault;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager
{
  messagesCopy = messages;
  managerCopy = manager;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [messagesCopy ef_groupBy:&stru_100157E50];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000505A8;
  v16 = &unk_100157E98;
  v9 = v7;
  v17 = v9;
  v10 = managerCopy;
  v18 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:&v13];
  if ([v9 count])
  {
    v11 = +[ECMessageFlagChange setRead];
    v12 = [v10 applyFlagChange:v11 toMessages:v9];
  }
}

@end