@interface MFMessageActionRule
+ (id)log;
- (BOOL)canExecuteRuleOnMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldIncludeInNewMessagesSet;
- (MFMessageActionRule)initWithMessageActions:(id)actions;
- (id)_firstActionsDestination;
- (unint64_t)_flagColorForActionFlagColor:(int64_t)color;
- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager;
@end

@implementation MFMessageActionRule

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073CAC;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185920 != -1)
  {
    dispatch_once(&qword_100185920, block);
  }

  v2 = qword_100185918;

  return v2;
}

- (MFMessageActionRule)initWithMessageActions:(id)actions
{
  actionsCopy = actions;
  v9.receiver = self;
  v9.super_class = MFMessageActionRule;
  v6 = [(MFMessageActionRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actions, actions);
  }

  return v7;
}

- (BOOL)canExecuteRuleOnMessage:(id)message
{
  messageCopy = message;
  _firstActionsDestination = [(MFMessageActionRule *)self _firstActionsDestination];
  v6 = _firstActionsDestination;
  if (_firstActionsDestination)
  {
    [_firstActionsDestination mailboxType];
    v7 = mailboxUIDTypeFromECMailboxType();
    mailbox = [messageCopy mailbox];
    type = [mailbox type];

    if (v7)
    {
      v10 = v7 == type;
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
  _firstActionsDestination = [(MFMessageActionRule *)self _firstActionsDestination];
  v3 = _firstActionsDestination == 0;

  return v3;
}

- (void)performOperationOnMessages:(id)messages withMessageChangeManager:(id)manager
{
  messagesCopy = messages;
  managerCopy = manager;
  v32 = messagesCopy;
  v30 = [messagesCopy ef_groupBy:&stru_100158E98];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [(MFMessageActionRule *)self actions];
  v7 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v7)
  {

    v24 = messagesCopy;
    destination3 = 0;
    LOBYTE(v11) = 0;
    v10 = 0;
    v9 = 0;
    v36 = 0;
    v8 = 0;
    v34 = 1;
    goto LABEL_42;
  }

  selfCopy = self;
  v8 = 0;
  v36 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  destination3 = 0;
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
      destination = [v15 destination];

      if (destination)
      {
        if (destination3)
        {
          v17 = +[MFMessageActionRule log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            destination2 = [v15 destination];
            sub_1000D48E8(destination2, buf, &v59, v17);
          }
        }

        else
        {
          destination3 = [v15 destination];
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
      flagChange = [v15 flagChange];
      v22 = flagChange;
      if (!flagChange)
      {
        goto LABEL_37;
      }

      if ([flagChange flag])
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

        v34 = -[MFMessageActionRule _flagColorForActionFlagColor:](selfCopy, "_flagColorForActionFlagColor:", [v22 flag]);
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
  if (destination3)
  {
    v25 = objc_alloc_init(NSMutableArray);

    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000744F4;
    v42[3] = &unk_100158EC0;
    destination3 = destination3;
    v43 = destination3;
    v26 = v25;
    v44 = v26;
    v45 = managerCopy;
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
    v29 = [managerCopy applyFlagChange:v28 toMessages:v24];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    actions = [(MFMessageActionRule *)self actions];
    actions2 = [v6 actions];
    v9 = [actions isEqual:actions2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_firstActionsDestination
{
  actions = [(MFMessageActionRule *)self actions];
  v3 = [actions ef_firstObjectPassingTest:&stru_100158F20];

  destination = [v3 destination];

  return destination;
}

- (unint64_t)_flagColorForActionFlagColor:(int64_t)color
{
  if ((color - 2) >= 7)
  {
    return 1;
  }

  else
  {
    return color - 2;
  }
}

@end