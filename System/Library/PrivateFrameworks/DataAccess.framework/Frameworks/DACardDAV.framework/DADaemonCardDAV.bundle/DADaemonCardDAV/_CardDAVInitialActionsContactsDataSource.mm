@interface _CardDAVInitialActionsContactsDataSource
+ (OS_os_log)os_log;
- (_CardDAVInitialActionsContactsDataSource)initWithContactStore:(id)store;
- (id)actionsForContacts:(id)contacts isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account databaseHelper:(id)helper inFolderWithURL:(id)l blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)self0 maxResourceSize:(int64_t)self1 containerIsRestricted:(BOOL)self2 outTouchedDB:(BOOL *)self3;
- (id)actionsForGroups:(id)groups isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account inFolderWithURL:(id)l databaseHelper:(id)helper blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)self0 maxResourceSize:(int64_t)self1 outTouchedDB:(BOOL *)self2;
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

- (_CardDAVInitialActionsContactsDataSource)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _CardDAVInitialActionsContactsDataSource;
  v6 = [(_CardDAVInitialActionsContactsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)actionsForContacts:(id)contacts isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account databaseHelper:(id)helper inFolderWithURL:(id)l blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)self0 maxResourceSize:(int64_t)self1 containerIsRestricted:(BOOL)self2 outTouchedDB:(BOOL *)self3
{
  bCopy = b;
  contactsCopy = contacts;
  helperCopy = helper;
  lCopy = l;
  dsCopy = ds;
  lsCopy = ls;
  v45 = +[NSMutableArray array];
  v46 = objc_alloc_init(CNSaveRequest);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = contactsCopy;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    v49 = 0;
    v20 = *v53;
    v44 = lCopy;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v53 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v52 + 1) + 8 * i);
        externalUUID = [v22 externalUUID];

        if (!externalUUID)
        {
          v24 = +[NSString da_newGUID];
          [v22 setExternalUUID:v24];

          [v22 updateSaveRequest:v46];
          v49 = 1;
        }

        externalUUID2 = [v22 externalUUID];
        externalIdentifier = [v22 externalIdentifier];
        v27 = externalIdentifier;
        if (externalIdentifier)
        {
          v28 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
        }

        else
        {
          v28 = 0;
        }

        if (([dsCopy containsObject:externalUUID2] & 1) != 0 || objc_msgSend(lsCopy, "containsObject:", v28))
        {
          os_log = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v57 = externalUUID2;
            v58 = 2112;
            v59 = v28;
            _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Not pushing person with uuid %@ href %@ because the server rejected it", buf, 0x16u);
          }
        }

        else
        {
          os_log = [v22 eTag];
          if (!os_log)
          {
            buf[0] = 0;
            contactStore = [(_CardDAVInitialActionsContactsDataSource *)self contactStore];
            v31 = lCopy;
            v32 = contactStore;
            v33 = [CardDAVVCardItem itemWithDACardDAVRecord:v22 contactStore:contactStore outNeedsDBSave:buf maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:v31];

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
              v38 = externalUUID2;
              v39 = 0;
            }

            v40 = [(DACardDAVActionResult *)v36 initWithAction:v37 externalUUID:v38 externalURL:v39];
            [v45 addObject:v40];

            lCopy = v44;
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

  [helperCopy addSaveRequest:v46];
  *bCopy |= v49;

  return v45;
}

- (id)actionsForGroups:(id)groups isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account inFolderWithURL:(id)l databaseHelper:(id)helper blacklistedUUIDs:(id)ds blacklistedURLs:(id)ls maxImageSize:(int64_t)self0 maxResourceSize:(int64_t)self1 outTouchedDB:(BOOL *)self2
{
  groupsCopy = groups;
  lCopy = l;
  helperCopy = helper;
  dsCopy = ds;
  lsCopy = ls;
  v45 = +[NSMutableArray array];
  *b = 0;
  if ([groupsCopy count])
  {
    v42 = helperCopy;
    v46 = objc_alloc_init(CNSaveRequest);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v43 = groupsCopy;
    obj = groupsCopy;
    v18 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v52;
      v44 = lCopy;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v51 + 1) + 8 * i);
          externalUUID = [v22 externalUUID];

          if (!externalUUID)
          {
            v24 = +[NSString da_newGUID];
            [v22 setExternalUUID:v24];

            [v22 updateSaveRequest:v46];
            *b = 1;
          }

          externalUUID2 = [v22 externalUUID];
          externalIdentifier = [v22 externalIdentifier];
          v27 = externalIdentifier;
          if (externalIdentifier)
          {
            v28 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
          }

          else
          {
            v28 = 0;
          }

          if (([dsCopy containsObject:externalUUID2] & 1) != 0 || objc_msgSend(lsCopy, "containsObject:", v28))
          {
            os_log = [objc_opt_class() os_log];
            if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v56 = externalUUID2;
              v57 = 2112;
              v58 = v28;
              _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_DEFAULT, "Not pushing group with uuid %@ href %@ because the server rejected it", buf, 0x16u);
            }
          }

          else
          {
            os_log = [v22 eTag];
            if (!os_log)
            {
              buf[0] = 0;
              contactStore = [(_CardDAVInitialActionsContactsDataSource *)self contactStore];
              v31 = lCopy;
              v32 = contactStore;
              v33 = [CardDAVVCardItem itemWithDACardDAVRecord:v22 contactStore:contactStore outNeedsDBSave:buf maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:v31];

              if (buf[0] == 1)
              {
                *b = 1;
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
                v38 = externalUUID2;
                v39 = 0;
              }

              v40 = [(DACardDAVActionResult *)v36 initWithAction:v37 externalUUID:v38 externalURL:v39];
              [v45 addObject:v40];

              lCopy = v44;
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v19);
    }

    helperCopy = v42;
    [v42 addSaveRequest:v46];

    groupsCopy = v43;
  }

  return v45;
}

@end