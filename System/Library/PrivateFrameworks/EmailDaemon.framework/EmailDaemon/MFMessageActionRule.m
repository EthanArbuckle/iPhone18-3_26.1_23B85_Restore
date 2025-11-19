@interface MFMessageActionRule
+ (id)log;
- (BOOL)canExecuteRuleOnMessage:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldIncludeInNewMessagesSet;
- (MFMessageActionRule)initWithMessageActions:(id)a3;
- (id)_firstActionsDestination;
- (unint64_t)_flagColorForActionFlagColor:(int64_t)a3;
- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4;
@end

@implementation MFMessageActionRule

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073CAC;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_100185920 != -1)
  {
    dispatch_once(&qword_100185920, block);
  }

  v2 = qword_100185918;

  return v2;
}

- (MFMessageActionRule)initWithMessageActions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageActionRule;
  v6 = [(MFMessageActionRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actions, a3);
  }

  return v7;
}

- (BOOL)canExecuteRuleOnMessage:(id)a3
{
  v4 = a3;
  v5 = [(MFMessageActionRule *)self _firstActionsDestination];
  v6 = v5;
  if (v5)
  {
    [v5 mailboxType];
    v7 = mailboxUIDTypeFromECMailboxType();
    v8 = [v4 mailbox];
    v9 = [v8 type];

    if (v7)
    {
      v10 = v7 == v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = !v10;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)shouldIncludeInNewMessagesSet
{
  v2 = [(MFMessageActionRule *)self _firstActionsDestination];
  v3 = v2 == 0;

  return v3;
}

- (void)performOperationOnMessages:(id)a3 withMessageChangeManager:(id)a4
{
  v6 = a3;
  v31 = a4;
  v32 = v6;
  v30 = [v6 ef_groupBy:&stru_100158E98];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(MFMessageActionRule *)self actions];
  v7 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v7)
  {

    v24 = v6;
    v12 = 0;
    LOBYTE(v11) = 0;
    v10 = 0;
    v9 = 0;
    v36 = 0;
    v8 = 0;
    v34 = 1;
    goto LABEL_42;
  }

  v33 = self;
  v8 = 0;
  v36 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *v55;
  v34 = 1;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v55 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v54 + 1) + 8 * i);
      v16 = [v15 destination];

      if (v16)
      {
        if (v12)
        {
          v17 = +[MFMessageActionRule log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v15 destination];
            sub_1000D48E8(v18, buf, &v59, v17);
          }
        }

        else
        {
          v12 = [v15 destination];
        }
      }

      if ([v15 readStatus] == 1)
      {
        if (v10)
        {
          v19 = +[MFMessageActionRule log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1000D4970(&v52, v53);
          }

          v10 = 1;
LABEL_21:

          goto LABEL_24;
        }

        v10 = 0;
        v8 = 1;
        v11 = 1;
      }

      else
      {
        v20 = [v15 readStatus] == 2;
        if ((v20 & v11) == 1)
        {
          v19 = +[MFMessageActionRule log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1000D4944(&v50, v51);
          }

          v11 = 1;
          goto LABEL_21;
        }

        v8 |= v20;
        v10 |= v20;
      }

LABEL_24:
      v21 = [v15 flagChange];
      v22 = v21;
      if (!v21)
      {
        goto LABEL_37;
      }

      if ([v21 flag])
      {
        if (v9)
        {
          v23 = +[MFMessageActionRule log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000D499C(&v46, v47);
          }

          v9 = 1;
LABEL_34:

          goto LABEL_37;
        }

        v34 = -[MFMessageActionRule _flagColorForActionFlagColor:](v33, "_flagColorForActionFlagColor:", [v22 flag]);
        v9 = 0;
        v8 = 1;
        v36 = 1;
      }

      else
      {
        if (v36)
        {
          v23 = +[MFMessageActionRule log];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000D49C8(&v48, v49);
          }

          v36 = 1;
          goto LABEL_34;
        }

        v36 = 0;
        v8 = 1;
        v9 = 1;
      }

LABEL_37:
    }

    v7 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  }

  while (v7);

  v24 = v32;
  if (v12)
  {
    v25 = objc_alloc_init(NSMutableArray);

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000744F4;
    v42[3] = &unk_100158EC0;
    v12 = v12;
    v43 = v12;
    v26 = v25;
    v44 = v26;
    v45 = v31;
    [v30 enumerateKeysAndObjectsUsingBlock:v42];
    v27 = v45;
    v24 = v26;
  }

LABEL_42:
  if ((([v24 count] != 0) & v8) == 1)
  {
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000746D4;
    v37[3] = &unk_100158EE0;
    v38 = v11 & 1;
    v39 = v10 & 1;
    v40 = v36 & 1;
    v37[4] = v34;
    v41 = v9 & 1;
    v28 = [[ECMessageFlagChange alloc] initWithBuilder:v37];
    v29 = [v31 applyFlagChange:v28 toMessages:v24];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MFMessageActionRule *)self actions];
    v8 = [v6 actions];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_firstActionsDestination
{
  v2 = [(MFMessageActionRule *)self actions];
  v3 = [v2 ef_firstObjectPassingTest:&stru_100158F20];

  v4 = [v3 destination];

  return v4;
}

- (unint64_t)_flagColorForActionFlagColor:(int64_t)a3
{
  if ((a3 - 2) >= 7)
  {
    return 1;
  }

  else
  {
    return a3 - 2;
  }
}

@end