@interface _CardDAVInitialActionsABLegacyDataSource
- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)a3 localId:(int)a4 changeType:(unint64_t)a5 outTouchedDB:(BOOL *)a6;
- (_CardDAVInitialActionsABLegacyDataSource)initWithAddressBook:(void *)a3;
- (id)actionsForGroups:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 databaseHelper:(id)a6 inFolderWithURL:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 containerIsRestricted:(BOOL)a12 outTouchedDB:(BOOL *)a13;
- (void)dealloc;
- (void)generateActionsForContacts:(id)a3 databaseHelper:(id)a4 inFolderWithURL:(id)a5 blacklistedUUIDs:(id)a6 blacklistedURLs:(id)a7 maxImageSize:(int64_t)a8 maxResourceSize:(int64_t)a9 outTouchedDB:(BOOL *)a10 reportingBlock:(id)a11;
- (void)prepareToGenerateInitialActionsWithContext:(id)a3;
@end

@implementation _CardDAVInitialActionsABLegacyDataSource

- (_CardDAVInitialActionsABLegacyDataSource)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _CardDAVInitialActionsABLegacyDataSource;
  v4 = [(_CardDAVInitialActionsABLegacyDataSource *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _CardDAVInitialActionsABLegacyDataSource;
  [(_CardDAVInitialActionsABLegacyDataSource *)&v3 dealloc];
}

- (void)prepareToGenerateInitialActionsWithContext:(id)a3
{
  v4 = a3;
  if ([v4 latestSequenceNumber])
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Error: somebody has already set the latest sequence number for the contacts change context despite this being initial sync.", v7, 2u);
    }
  }

  [(_CardDAVInitialActionsABLegacyDataSource *)self addressBook];
  [v4 setLatestSequenceNumber:ABAddressBookGetSequenceNumber()];
  [v4 setChangeHistoryTruncated:1];
}

- (void)generateActionsForContacts:(id)a3 databaseHelper:(id)a4 inFolderWithURL:(id)a5 blacklistedUUIDs:(id)a6 blacklistedURLs:(id)a7 maxImageSize:(int64_t)a8 maxResourceSize:(int64_t)a9 outTouchedDB:(BOOL *)a10 reportingBlock:(id)a11
{
  v14 = a3;
  v42 = a5;
  v48 = a6;
  v44 = a7;
  v15 = a11;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = v14;
  v47 = [v16 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (!v47)
  {

    v19 = v42;
    goto LABEL_28;
  }

  v17 = 0;
  v46 = *v52;
  v18 = _CPLog_to_os_log_type[3];
  v19 = v42;
  v45 = v18;
  obj = v16;
  do
  {
    v20 = 0;
    do
    {
      if (*v52 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v51 + 1) + 8 * v20);
      v50 = 0;
      -[_CardDAVInitialActionsABLegacyDataSource _fillOutExternalUUIDForRecordType:localId:changeType:outTouchedDB:](self, "_fillOutExternalUUIDForRecordType:localId:changeType:outTouchedDB:", 0, [v21 legacyIdentifier], 0, &v50);
      v22 = v50;
      v23 = [v21 externalUUID];
      v24 = [v21 externalIdentifier];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v19];
      }

      else
      {
        v26 = 0;
      }

      v17 |= v22;
      if (([v48 containsObject:v23] & 1) != 0 || objc_msgSend(v44, "containsObject:", v26))
      {
        v27 = DALoggingwithCategory();
        if (os_log_type_enabled(v27, v18))
        {
          *buf = 138412546;
          v56 = v23;
          v57 = 2112;
          v58 = v26;
          _os_log_impl(&dword_0, v27, v18, "Not pushing person with uuid %@ href %@ because the server rejected it", buf, 0x16u);
        }

LABEL_14:
        v28 = 0;
        goto LABEL_15;
      }

      v27 = [v21 eTag];
      if (v27)
      {
        goto LABEL_14;
      }

      buf[0] = 0;
      LOBYTE(v38) = 0;
      v30 = +[CardDAVVCardItem itemWithABRecord:addressBook:outNeedsDBSave:maxImageSize:maxResourceSize:inContainerWithURL:afterImageSyncFailed:](CardDAVVCardItem, "itemWithABRecord:addressBook:outNeedsDBSave:maxImageSize:maxResourceSize:inContainerWithURL:afterImageSyncFailed:", [v21 asPerson], -[_CardDAVInitialActionsABLegacyDataSource addressBook](self, "addressBook"), buf, a8, a9, v42, v38);
      v40 = buf[0];
      v31 = [DAAction alloc];
      v41 = v30;
      if (v26)
      {
        v32 = [v31 initWithItemChangeType:1 changedItem:v30 serverId:0];
        v33 = [DACardDAVActionResult alloc];
        v34 = v32;
        v35 = 0;
        v36 = v26;
      }

      else
      {
        v32 = [v31 initWithItemChangeType:0 changedItem:v30 serverId:0];
        v33 = [DACardDAVActionResult alloc];
        v34 = v32;
        v35 = v23;
        v36 = 0;
      }

      v28 = [(DACardDAVActionResult *)v33 initWithAction:v34 externalUUID:v35 externalURL:v36];
      v17 |= v40;

      v19 = v42;
LABEL_15:

      v29 = v15[2](v15, v21, v28);
      if (!v29)
      {
        v16 = obj;
        goto LABEL_25;
      }

      v20 = v20 + 1;
      v18 = v45;
    }

    while (v47 != v20);
    v16 = obj;
    v37 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    v47 = v37;
  }

  while (v37);
LABEL_25:

  if (v17)
  {
    *a10 = 1;
  }

LABEL_28:
}

- (id)actionsForGroups:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 databaseHelper:(id)a6 inFolderWithURL:(id)a7 blacklistedUUIDs:(id)a8 blacklistedURLs:(id)a9 maxImageSize:(int64_t)a10 maxResourceSize:(int64_t)a11 containerIsRestricted:(BOOL)a12 outTouchedDB:(BOOL *)a13
{
  v15 = a4;
  v16 = a3;
  v40 = a7;
  v44 = a8;
  v41 = a9;
  if (v15 && a12)
  {
    v39 = &__NSArray0__struct;
    v17 = v40;
  }

  else
  {
    v39 = +[NSMutableArray array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v38 = v16;
    obj = v16;
    v45 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    v18 = 0;
    if (v45)
    {
      v43 = *v49;
      v19 = _CPLog_to_os_log_type[3];
      v17 = v40;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v49 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v48 + 1) + 8 * i);
          v47 = 0;
          -[_CardDAVInitialActionsABLegacyDataSource _fillOutExternalUUIDForRecordType:localId:changeType:outTouchedDB:](self, "_fillOutExternalUUIDForRecordType:localId:changeType:outTouchedDB:", 1, [v21 legacyIdentifier], 0, &v47);
          v22 = v47;
          v23 = [v21 externalUUID];
          v24 = [v21 externalIdentifier];
          v25 = v24;
          if (v24)
          {
            v26 = [v24 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v17];
          }

          else
          {
            v26 = 0;
          }

          v18 |= v22;
          if (([v44 containsObject:v23] & 1) != 0 || objc_msgSend(v41, "containsObject:", v26))
          {
            v27 = DALoggingwithCategory();
            if (os_log_type_enabled(v27, v19))
            {
              *buf = 138412546;
              v53 = v23;
              v54 = 2112;
              v55 = v26;
              _os_log_impl(&dword_0, v27, v19, "Not pushing group with uuid %@ href %@ because the server rejected it", buf, 0x16u);
            }
          }

          else
          {
            v27 = [v21 eTag];
            if (!v27)
            {
              buf[0] = 0;
              LOBYTE(v37) = 0;
              v28 = +[CardDAVVCardItem itemWithABRecord:addressBook:outNeedsDBSave:maxImageSize:maxResourceSize:inContainerWithURL:afterImageSyncFailed:](CardDAVVCardItem, "itemWithABRecord:addressBook:outNeedsDBSave:maxImageSize:maxResourceSize:inContainerWithURL:afterImageSyncFailed:", [v21 asABGroup], -[_CardDAVInitialActionsABLegacyDataSource addressBook](self, "addressBook"), buf, a10, a11, v17, v37);
              v18 = (buf[0] | v18 & 1) != 0;
              v29 = [DAAction alloc];
              if (v26)
              {
                v30 = [v29 initWithItemChangeType:1 changedItem:v28 serverId:0];
                v31 = [DACardDAVActionResult alloc];
                v32 = v30;
                v33 = 0;
                v34 = v26;
              }

              else
              {
                v30 = [v29 initWithItemChangeType:0 changedItem:v28 serverId:0];
                v31 = [DACardDAVActionResult alloc];
                v32 = v30;
                v33 = v23;
                v34 = 0;
              }

              v35 = [(DACardDAVActionResult *)v31 initWithAction:v32 externalUUID:v33 externalURL:v34];
              [v39 addObject:v35];

              v17 = v40;
            }
          }
        }

        v45 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v45);
    }

    else
    {
      v17 = v40;
    }

    v16 = v38;
    *a13 |= v18 & 1;
  }

  return v39;
}

- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)a3 localId:(int)a4 changeType:(unint64_t)a5 outTouchedDB:(BOOL *)a6
{
  if (a5 > 1)
  {
    LOBYTE(GroupWithRecordID) = 1;
    return GroupWithRecordID;
  }

  v9 = [(_CardDAVInitialActionsABLegacyDataSource *)self addressBook];
  if (a3)
  {
    GroupWithRecordID = ABAddressBookGetGroupWithRecordID(v9, a4);
    if (!GroupWithRecordID)
    {
      return GroupWithRecordID;
    }

    v11 = GroupWithRecordID;
    v12 = &kABGroupExternalUUIDProperty;
  }

  else
  {
    GroupWithRecordID = ABAddressBookGetPersonWithRecordID(v9, a4);
    if (!GroupWithRecordID)
    {
      return GroupWithRecordID;
    }

    v11 = GroupWithRecordID;
    v12 = &kABPersonExternalUUIDProperty;
  }

  v13 = *v12;
  v14 = ABRecordCopyValue(v11, *v12);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    *a6 = 1;
    v15 = +[NSString da_newGUID];
    ABRecordSetValue(v11, v13, v15, 0);
  }

  LOBYTE(GroupWithRecordID) = 1;
  return GroupWithRecordID;
}

@end