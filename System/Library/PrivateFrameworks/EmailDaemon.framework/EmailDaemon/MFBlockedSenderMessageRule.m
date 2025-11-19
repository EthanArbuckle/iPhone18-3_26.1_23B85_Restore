@interface MFBlockedSenderMessageRule
+ (id)log;
- (BOOL)canExecuteRuleOnMessage:(id)a3;
- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4;
@end

@implementation MFBlockedSenderMessageRule

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051420;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_1001857B0 != -1)
  {
    dispatch_once(&qword_1001857B0, block);
  }

  v2 = qword_1001857A8;

  return v2;
}

- (BOOL)canExecuteRuleOnMessage:(id)a3
{
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000516F0;
  v20[3] = &unk_100157EC0;
  v3 = a3;
  v21 = v3;
  v4 = objc_retainBlock(v20);
  v5 = sub_100027C70();
  v6 = [v5 blockedSenderManager];
  v7 = [v6 isMoveToTrashEnabled];

  if ((v7 & 1) == 0)
  {
    v18 = @"Move to trash setting is not enabled";
LABEL_9:
    v17 = (v4[2])(v4, v18);
    goto LABEL_10;
  }

  v8 = sub_100027C70();
  v9 = [v8 blockedSenderManager];
  v10 = [v3 firstSender];
  v11 = [v9 isEmailAddressBlocked:v10];

  if ((v11 & 1) == 0)
  {
    v18 = @"Sender is not blocked";
    goto LABEL_9;
  }

  v12 = [v3 mailbox];
  v13 = +[EMBlockedSenderManager shouldMoveToTrashForMailboxType:gmailLabels:](EMBlockedSenderManager, "shouldMoveToTrashForMailboxType:gmailLabels:", [v12 type], 0);

  if ((v13 & 1) == 0)
  {
    v18 = @"In excluded mailbox";
    goto LABEL_9;
  }

  v14 = [NSDate ef_dateHoursAgo:168];
  v15 = [v3 dateReceived];
  v16 = [v15 ef_isLaterThanDate:v14];

  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = (v4[2])(v4, @"Received more than 7 days ago");
  }

LABEL_10:
  return v17;
}

- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v5 ef_groupBy:&stru_100157EE0];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100051AEC;
  v18 = &unk_100157E98;
  v9 = v7;
  v19 = v9;
  v10 = v6;
  v20 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:&v15];
  if ([v9 count])
  {
    v11 = +[MFBlockedSenderMessageRule log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 count];
      *buf = 134217984;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully moved %lu messages from blocked sender to trash", buf, 0xCu);
    }

    v13 = +[ECMessageFlagChange setRead];
    v14 = [v10 applyFlagChange:v13 toMessages:v9];
  }
}

@end