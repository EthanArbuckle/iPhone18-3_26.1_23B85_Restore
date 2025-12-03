@interface _CardDAVActionsContactsFinalizer
+ (OS_os_log)os_log;
- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)context pushedActions:(id)actions inContainer:(id)container changeTrackingID:(id)d;
- (_CardDAVActionsContactsFinalizer)initWithContactStore:(id)store;
- (void)clearChangesForActions:(id)actions inContainer:(id)container changeTrackingID:(id)d;
- (void)clearChangesToAnchor:(id)anchor changeTrackingID:(id)d inContainer:(id)container;
@end

@implementation _CardDAVActionsContactsFinalizer

+ (OS_os_log)os_log
{
  if (qword_46F48 != -1)
  {
    sub_25740();
  }

  v3 = qword_46F50;

  return v3;
}

- (_CardDAVActionsContactsFinalizer)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _CardDAVActionsContactsFinalizer;
  v6 = [(_CardDAVActionsContactsFinalizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)context pushedActions:(id)actions inContainer:(id)container changeTrackingID:(id)d
{
  contextCopy = context;
  actionsCopy = actions;
  containerCopy = container;
  dCopy = d;
  if ([actionsCopy count])
  {
    [(_CardDAVActionsContactsFinalizer *)self clearChangesForActions:actionsCopy inContainer:containerCopy changeTrackingID:dCopy];
  }

  cnChangeAnchor = [contextCopy cnChangeAnchor];
  if (cnChangeAnchor)
  {
    [(_CardDAVActionsContactsFinalizer *)self clearChangesToAnchor:cnChangeAnchor changeTrackingID:dCopy inContainer:containerCopy];
  }

  return 0;
}

- (void)clearChangesToAnchor:(id)anchor changeTrackingID:(id)d inContainer:(id)container
{
  containerCopy = container;
  dCopy = d;
  anchorCopy = anchor;
  v11 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:dCopy];

  [v11 setToChangeAnchor:anchorCopy];
  asContainer = [containerCopy asContainer];

  identifier = [asContainer identifier];

  if (!identifier)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_25754(os_log);
    }
  }

  [v11 setContainerIdentifier:identifier];
  contactStore = [(_CardDAVActionsContactsFinalizer *)self contactStore];
  v19 = 0;
  v16 = [contactStore executeChangeHistoryClearRequest:v11 error:&v19];
  v17 = v19;

  if ((v16 & 1) == 0)
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      sub_25798();
    }
  }
}

- (void)clearChangesForActions:(id)actions inContainer:(id)container changeTrackingID:(id)d
{
  actionsCopy = actions;
  containerCopy = container;
  dCopy = d;
  v10 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:dCopy];
  v42 = containerCopy;
  asContainer = [containerCopy asContainer];
  identifier = [asContainer identifier];
  v40 = v10;
  [v10 setContainerIdentifier:identifier];

  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v43 = objc_alloc_init(NSMutableArray);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = actionsCopy;
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v46;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        if ([v19 changeId] != -1)
        {
          if ([v19 itemChangeType] == &dword_0 + 2)
          {
            os_log = [objc_opt_class() os_log];
            if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
            {
              changeId = [v19 changeId];
              *buf = 67109120;
              LODWORD(v50) = changeId;
              _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Clearing Person change index %d", buf, 8u);
            }

            changedItem = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 changeId]);
            [v13 addObject:changedItem];
            goto LABEL_23;
          }

          changedItem = [v19 changedItem];
          cardDAVRecordItem = [changedItem cardDAVRecordItem];
          isContact = [cardDAVRecordItem isContact];

          if (isContact)
          {
            os_log2 = [objc_opt_class() os_log];
            if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEFAULT))
            {
              changeId2 = [v19 changeId];
              *buf = 67109120;
              LODWORD(v50) = changeId2;
              _os_log_impl(&dword_0, os_log2, OS_LOG_TYPE_DEFAULT, "Clearing Person change index %d", buf, 8u);
            }

            v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 changeId]);
            v28 = v13;
            goto LABEL_19;
          }

          cardDAVRecordItem2 = [changedItem cardDAVRecordItem];
          isGroup = [cardDAVRecordItem2 isGroup];

          os_log3 = [objc_opt_class() os_log];
          v27 = os_log3;
          if (isGroup)
          {
            if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEFAULT))
            {
              changeId3 = [v19 changeId];
              *buf = 67109120;
              LODWORD(v50) = changeId3;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Clearing Group change index %d", buf, 8u);
            }

            v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 changeId]);
            v28 = v43;
LABEL_19:
            [v28 addObject:v27];
          }

          else if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v50 = changedItem;
            _os_log_error_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "Malformed CardDAVVCardItem: %@", buf, 0xCu);
          }

LABEL_23:
          continue;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v16);
  }

  [v40 setContactChangeIDs:v13];
  [v40 setGroupChangeIDs:v43];
  contactChangeIDs = [v40 contactChangeIDs];
  if ([contactChangeIDs count])
  {

    goto LABEL_29;
  }

  contactChangeIDs2 = [v40 contactChangeIDs];
  v35 = [contactChangeIDs2 count];

  if (v35)
  {
LABEL_29:
    contactStore = [(_CardDAVActionsContactsFinalizer *)self contactStore];
    v44 = 0;
    v37 = [contactStore executeChangeHistoryClearRequest:v40 error:&v44];
    os_log5 = v44;

    if ((v37 & 1) == 0)
    {
      os_log4 = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log4, OS_LOG_TYPE_ERROR))
      {
        sub_25800();
      }
    }

    goto LABEL_35;
  }

  os_log5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log5, OS_LOG_TYPE_ERROR))
  {
    sub_25868(os_log5);
  }

LABEL_35:
}

@end