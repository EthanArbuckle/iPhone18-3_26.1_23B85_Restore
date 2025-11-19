@interface _CardDAVActionsContactsFinalizer
+ (OS_os_log)os_log;
- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)a3 pushedActions:(id)a4 inContainer:(id)a5 changeTrackingID:(id)a6;
- (_CardDAVActionsContactsFinalizer)initWithContactStore:(id)a3;
- (void)clearChangesForActions:(id)a3 inContainer:(id)a4 changeTrackingID:(id)a5;
- (void)clearChangesToAnchor:(id)a3 changeTrackingID:(id)a4 inContainer:(id)a5;
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

- (_CardDAVActionsContactsFinalizer)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CardDAVActionsContactsFinalizer;
  v6 = [(_CardDAVActionsContactsFinalizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)a3 pushedActions:(id)a4 inContainer:(id)a5 changeTrackingID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 count])
  {
    [(_CardDAVActionsContactsFinalizer *)self clearChangesForActions:v11 inContainer:v12 changeTrackingID:v13];
  }

  v14 = [v10 cnChangeAnchor];
  if (v14)
  {
    [(_CardDAVActionsContactsFinalizer *)self clearChangesToAnchor:v14 changeTrackingID:v13 inContainer:v12];
  }

  return 0;
}

- (void)clearChangesToAnchor:(id)a3 changeTrackingID:(id)a4 inContainer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:v9];

  [v11 setToChangeAnchor:v10];
  v12 = [v8 asContainer];

  v13 = [v12 identifier];

  if (!v13)
  {
    v14 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_25754(v14);
    }
  }

  [v11 setContainerIdentifier:v13];
  v15 = [(_CardDAVActionsContactsFinalizer *)self contactStore];
  v19 = 0;
  v16 = [v15 executeChangeHistoryClearRequest:v11 error:&v19];
  v17 = v19;

  if ((v16 & 1) == 0)
  {
    v18 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_25798();
    }
  }
}

- (void)clearChangesForActions:(id)a3 inContainer:(id)a4 changeTrackingID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v41 = a5;
  v10 = [[CNChangeHistoryClearRequest alloc] initWithClientIdentifier:v41];
  v42 = v9;
  v11 = [v9 asContainer];
  v12 = [v11 identifier];
  v40 = v10;
  [v10 setContainerIdentifier:v12];

  v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v43 = objc_alloc_init(NSMutableArray);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = v8;
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
            v20 = [objc_opt_class() os_log];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v19 changeId];
              *buf = 67109120;
              LODWORD(v50) = v21;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Clearing Person change index %d", buf, 8u);
            }

            v22 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 changeId]);
            [v13 addObject:v22];
            goto LABEL_23;
          }

          v22 = [v19 changedItem];
          v23 = [v22 cardDAVRecordItem];
          v24 = [v23 isContact];

          if (v24)
          {
            v25 = [objc_opt_class() os_log];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v19 changeId];
              *buf = 67109120;
              LODWORD(v50) = v26;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Clearing Person change index %d", buf, 8u);
            }

            v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 changeId]);
            v28 = v13;
            goto LABEL_19;
          }

          v29 = [v22 cardDAVRecordItem];
          v30 = [v29 isGroup];

          v31 = [objc_opt_class() os_log];
          v27 = v31;
          if (v30)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v19 changeId];
              *buf = 67109120;
              LODWORD(v50) = v32;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Clearing Group change index %d", buf, 8u);
            }

            v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v19 changeId]);
            v28 = v43;
LABEL_19:
            [v28 addObject:v27];
          }

          else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v50 = v22;
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
  v33 = [v40 contactChangeIDs];
  if ([v33 count])
  {

    goto LABEL_29;
  }

  v34 = [v40 contactChangeIDs];
  v35 = [v34 count];

  if (v35)
  {
LABEL_29:
    v36 = [(_CardDAVActionsContactsFinalizer *)self contactStore];
    v44 = 0;
    v37 = [v36 executeChangeHistoryClearRequest:v40 error:&v44];
    v38 = v44;

    if ((v37 & 1) == 0)
    {
      v39 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_25800();
      }
    }

    goto LABEL_35;
  }

  v38 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    sub_25868(v38);
  }

LABEL_35:
}

@end