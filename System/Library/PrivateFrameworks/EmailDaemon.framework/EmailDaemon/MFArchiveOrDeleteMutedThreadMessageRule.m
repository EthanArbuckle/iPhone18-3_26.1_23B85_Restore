@interface MFArchiveOrDeleteMutedThreadMessageRule
- (BOOL)canExecuteRuleOnMessage:(id)a3;
- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4;
@end

@implementation MFArchiveOrDeleteMutedThreadMessageRule

- (BOOL)canExecuteRuleOnMessage:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MFArchiveOrDeleteMutedThreadMessageRule;
  if ([(MFMutedThreadMessageRule *)&v11 canExecuteRuleOnMessage:v4])
  {
    v5 = [v4 mailbox];
    v6 = [v5 mailboxType];

    v7 = [v4 account];
    v8 = [v7 shouldArchiveByDefault];

    if (v6 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = (v6 != 3) | v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v5 ef_groupBy:&stru_100157E50];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000505A8;
  v16 = &unk_100157E98;
  v9 = v7;
  v17 = v9;
  v10 = v6;
  v18 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:&v13];
  if ([v9 count])
  {
    v11 = +[ECMessageFlagChange setRead];
    v12 = [v10 applyFlagChange:v11 toMessages:v9];
  }
}

@end