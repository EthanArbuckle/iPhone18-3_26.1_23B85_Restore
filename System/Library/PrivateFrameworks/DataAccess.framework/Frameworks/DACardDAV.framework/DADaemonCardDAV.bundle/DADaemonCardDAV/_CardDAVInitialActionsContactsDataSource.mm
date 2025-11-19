@interface _CardDAVInitialActionsContactsDataSource
+ (OS_os_log)os_log;
- (_CardDAVInitialActionsContactsDataSource)initWithContactStore:(id)a3;
- (id)actionsForContacts:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 databaseHelper:(id)a6 inFolderWithURL:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 containerIsRestricted:(BOOL)a12 outTouchedDB:(BOOL *)a13;
- (id)actionsForGroups:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 inFolderWithURL:(id)a6 databaseHelper:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 outTouchedDB:(BOOL *)a12;
@end

@implementation _CardDAVInitialActionsContactsDataSource

+ (OS_os_log)os_log
{
  if (qword_46FA8 != -1)
  {
    sub_25DB8();
  }

  v3 = qword_46FB0;

  return v3;
}

- (_CardDAVInitialActionsContactsDataSource)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CardDAVInitialActionsContactsDataSource;
  v6 = [(_CardDAVInitialActionsContactsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)actionsForContacts:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 databaseHelper:(id)a6 inFolderWithURL:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 containerIsRestricted:(BOOL)a12 outTouchedDB:(BOOL *)a13
{
  v42 = a13;
  v16 = a3;
  v43 = a6;
  v17 = a7;
  v51 = a8;
  v47 = a9;
  v45 = +[NSMutableArray array];
  v46 = objc_alloc_init(CNSaveRequest);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    v49 = 0;
    v20 = *v53;
    v44 = v17;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v52 + 1) + 8 * i);
        v23 = [v22 externalUUID];

        if (!v23)
        {
          v24 = +[NSString da_newGUID];
          [v22 setExternalUUID:v24];

          [v22 updateSaveRequest:v46];
          v49 = 1;
        }

        v25 = [v22 externalUUID];
        v26 = [v22 externalIdentifier];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v17];
        }

        else
        {
          v28 = 0;
        }

        if (([v51 containsObject:v25] & 1) != 0 || objc_msgSend(v47, "containsObject:", v28))
        {
          v29 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v57 = v25;
            v58 = 2112;
            v59 = v28;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Not pushing person with uuid %@ href %@ because the server rejected it", buf, 0x16u);
          }
        }

        else
        {
          v29 = [v22 eTag];
          if (!v29)
          {
            buf[0] = 0;
            v30 = [(_CardDAVInitialActionsContactsDataSource *)self contactStore];
            v31 = v17;
            v32 = v30;
            v33 = [CardDAVVCardItem itemWithDACardDAVRecord:v22 contactStore:v30 outNeedsDBSave:buf maxImageSize:a10 maxResourceSize:a11 inContainerWithURL:v31];

            v49 = (buf[0] | v49) != 0;
            v34 = [DAAction alloc];
            if (v28)
            {
              v35 = [v34 initWithItemChangeType:1 changedItem:v33 serverId:0];
              v36 = [DACardDAVActionResult alloc];
              v37 = v35;
              v38 = 0;
              v39 = v28;
            }

            else
            {
              v35 = [v34 initWithItemChangeType:0 changedItem:v33 serverId:0];
              v36 = [DACardDAVActionResult alloc];
              v37 = v35;
              v38 = v25;
              v39 = 0;
            }

            v40 = [(DACardDAVActionResult *)v36 initWithAction:v37 externalUUID:v38 externalURL:v39];
            [v45 addObject:v40];

            v17 = v44;
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v19);
  }

  else
  {
    v49 = 0;
  }

  [v43 addSaveRequest:v46];
  *v42 |= v49;

  return v45;
}

- (id)actionsForGroups:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 inFolderWithURL:(id)a6 databaseHelper:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 outTouchedDB:(BOOL *)a12
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v50 = a8;
  v47 = a9;
  v45 = +[NSMutableArray array];
  *a12 = 0;
  if ([v15 count])
  {
    v42 = v17;
    v46 = objc_alloc_init(CNSaveRequest);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = v15;
    obj = v15;
    v18 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v52;
      v44 = v16;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v51 + 1) + 8 * i);
          v23 = [v22 externalUUID];

          if (!v23)
          {
            v24 = +[NSString da_newGUID];
            [v22 setExternalUUID:v24];

            [v22 updateSaveRequest:v46];
            *a12 = 1;
          }

          v25 = [v22 externalUUID];
          v26 = [v22 externalIdentifier];
          v27 = v26;
          if (v26)
          {
            v28 = [v26 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v16];
          }

          else
          {
            v28 = 0;
          }

          if (([v50 containsObject:v25] & 1) != 0 || objc_msgSend(v47, "containsObject:", v28))
          {
            v29 = [objc_opt_class() os_log];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v56 = v25;
              v57 = 2112;
              v58 = v28;
              _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Not pushing group with uuid %@ href %@ because the server rejected it", buf, 0x16u);
            }
          }

          else
          {
            v29 = [v22 eTag];
            if (!v29)
            {
              buf[0] = 0;
              v30 = [(_CardDAVInitialActionsContactsDataSource *)self contactStore];
              v31 = v16;
              v32 = v30;
              v33 = [CardDAVVCardItem itemWithDACardDAVRecord:v22 contactStore:v30 outNeedsDBSave:buf maxImageSize:a10 maxResourceSize:a11 inContainerWithURL:v31];

              if (buf[0] == 1)
              {
                *a12 = 1;
              }

              v34 = [DAAction alloc];
              if (v28)
              {
                v35 = [v34 initWithItemChangeType:1 changedItem:v33 serverId:0];
                v36 = [DACardDAVActionResult alloc];
                v37 = v35;
                v38 = 0;
                v39 = v28;
              }

              else
              {
                v35 = [v34 initWithItemChangeType:0 changedItem:v33 serverId:0];
                v36 = [DACardDAVActionResult alloc];
                v37 = v35;
                v38 = v25;
                v39 = 0;
              }

              v40 = [(DACardDAVActionResult *)v36 initWithAction:v37 externalUUID:v38 externalURL:v39];
              [v45 addObject:v40];

              v16 = v44;
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v19);
    }

    v17 = v42;
    [v42 addSaveRequest:v46];

    v15 = v43;
  }

  return v45;
}

@end