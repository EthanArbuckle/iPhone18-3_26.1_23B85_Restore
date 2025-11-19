@interface _CardDAVActionsABLegacyDataSource
- (BOOL)_fillOutExternalURLForRecordType:(unsigned int)a3 localId:(int)a4 changeType:(unint64_t)a5 inFolderWithURL:(id)a6 outNewExternalURL:(id *)a7 outTouchedDB:(BOOL *)a8;
- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)a3 localId:(int)a4 changeType:(unint64_t)a5 outTouchedDB:(BOOL *)a6;
- (BOOL)_isValidRecordType:(unsigned int)a3 forDACardDAVRecord:(id)a4;
- (_CardDAVActionsABLegacyDataSource)initWithAddressBook:(void *)a3;
- (id)_copyCoalescedChangesInContainer:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 isImageUploadRestricted:(BOOL)a6 databaseHelper:(id)a7 accountHomeURL:(id)a8 changeTrackingID:(id)a9 existingActions:(id)a10 maxImageSize:(int64_t)a11 maxResourceSize:(int64_t)a12 changeContext:(id)a13 outTouchedDB:(BOOL *)a14;
- (id)copyWithoutImageAction:(id)a3 withFolderURL:(id)a4 maxResourceSize:(int64_t)a5;
- (void)_addChangeForType:(unint64_t)a3 changedItemId:(id)a4 changeId:(id)a5 addedIdsToChangeId:(id)a6 modifiedIdsToChangeId:(id)a7 deletedIdsToChangeId:(id)a8 changeIdsToClear:(id)a9;
@end

@implementation _CardDAVActionsABLegacyDataSource

- (_CardDAVActionsABLegacyDataSource)initWithAddressBook:(void *)a3
{
  v5.receiver = self;
  v5.super_class = _CardDAVActionsABLegacyDataSource;
  result = [(_CardDAVActionsABLegacyDataSource *)&v5 init];
  if (result)
  {
    result->_addressBook = a3;
  }

  return result;
}

- (id)_copyCoalescedChangesInContainer:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 isImageUploadRestricted:(BOOL)a6 databaseHelper:(id)a7 accountHomeURL:(id)a8 changeTrackingID:(id)a9 existingActions:(id)a10 maxImageSize:(int64_t)a11 maxResourceSize:(int64_t)a12 changeContext:(id)a13 outTouchedDB:(BOOL *)a14
{
  v48 = a5;
  v16 = a4;
  v17 = a3;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v49 = a13;
  v21 = objc_opt_new();
  v22 = [v17 asSource];
  if ([v17 isGuardianStateDirty])
  {
    v23 = [v17 externalIdentifier];
    v46 = v23;
    v24 = [v17 isGuardianRestricted];
    v25 = @"true";
    if (!v24)
    {
      v25 = 0;
    }

    v47 = a6;
    v26 = v20;
    v27 = v25;
    v28 = [v23 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v18];
    v29 = [DAEditPropertyAction alloc];
    v30 = v19;
    v31 = v18;
    v32 = [v29 initWithChangedItem:v17 propertyName:cdXMLCardDAVGuardianRestricted value:v27 propertyNamespace:cdXMLMMeDAVURI serverId:v28];

    v20 = v26;
    a6 = v47;
    [v32 setIgnoresGuardianRestrictions:v16 & v48];
    [v21 addObject:v32];

    v18 = v31;
    v19 = v30;
  }

  BYTE1(v44) = a6;
  LOBYTE(v44) = v16;
  v33 = [(_CardDAVActionsABLegacyDataSource *)self _copyABActionsOfType:0 inContainer:v22 accountHomeURL:v18 changeTrackingID:v19 existingActions:v20 maxImageSize:a11 maxResourceSize:a12 isPrimaryAppleAccount:v44 isImageUploadRestricted:?];
  v34 = [v33 actions];

  if (v34)
  {
    v35 = [v33 actions];
    [v21 addObjectsFromArray:v35];
  }

  BYTE1(v45) = a6;
  LOBYTE(v45) = v16;
  v36 = [(_CardDAVActionsABLegacyDataSource *)self _copyABActionsOfType:1 inContainer:v22 accountHomeURL:v18 changeTrackingID:v19 existingActions:v20 maxImageSize:a11 maxResourceSize:a12 isPrimaryAppleAccount:v45 isImageUploadRestricted:?];
  v37 = [v36 actions];

  if (v37)
  {
    v38 = [v36 actions];
    [v21 addObjectsFromArray:v38];
  }

  [v49 setAbPersonChangeId:{objc_msgSend(v33, "highestChangeID")}];
  [v49 setAbGroupChangeId:{objc_msgSend(v36, "highestChangeID")}];
  v39 = [v33 latestSequenceNumber];
  v40 = [v36 latestSequenceNumber];
  if (v39 >= v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = v39;
  }

  [v49 setLatestSequenceNumber:v41];
  if (([v33 isChangeHistoryTruncated] & 1) != 0 || objc_msgSend(v36, "isChangeHistoryTruncated"))
  {
    [v49 setChangeHistoryTruncated:1];
  }

  if ([v33 touchedDatabase])
  {
    v42 = 1;
  }

  else
  {
    v42 = [v36 touchedDatabase];
  }

  *a14 = v42;

  return v21;
}

- (BOOL)_isValidRecordType:(unsigned int)a3 forDACardDAVRecord:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 isGroup];
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [v5 isContact];
  }

  v8 = v7;
LABEL_7:

  return v8;
}

- (void)_addChangeForType:(unint64_t)a3 changedItemId:(id)a4 changeId:(id)a5 addedIdsToChangeId:(id)a6 modifiedIdsToChangeId:(id)a7 deletedIdsToChangeId:(id)a8 changeIdsToClear:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = DALoggingwithCategory();
  v21 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v20, v21))
  {
    v32 = 134219522;
    v33 = a3;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v16;
    v40 = 2112;
    v41 = v17;
    v42 = 2112;
    v43 = v18;
    v44 = 2112;
    v45 = v19;
    _os_log_impl(&dword_0, v20, v21, "_addChange for type %lu, changedItemId %@ changeId %@ addedIds %@ modifiedIds %@ deletedIds %@, changeIdsToClear %@", &v32, 0x48u);
  }

  if (!v15)
  {
    v15 = &off_3DC90;
  }

  switch(a3)
  {
    case 2uLL:
      v28 = [v16 objectForKeyedSubscript:v14];

      if (!v28)
      {
        v30 = [v17 objectForKeyedSubscript:v14];

        if (v30)
        {
          v31 = [v17 objectForKeyedSubscript:v14];
          [v19 addObject:v31];

          [v17 removeObjectForKey:v14];
        }

        [v18 setObject:v15 forKeyedSubscript:v14];
        break;
      }

      v29 = [v16 objectForKeyedSubscript:v14];
      [v19 addObject:v29];

      [v16 removeObjectForKey:v14];
LABEL_18:
      [v19 addObject:v15];
      break;
    case 1uLL:
      v24 = [v16 objectForKeyedSubscript:v14];

      if (!v24)
      {
        v25 = [v17 objectForKeyedSubscript:v14];
        v22 = v25;
        if (v25)
        {
          v26 = [v25 intValue];
          v27 = [v15 intValue];
          if (v26 == -1 || v27 == -1)
          {
            if (v27 == -1)
            {
LABEL_25:

              break;
            }
          }

          else
          {
            [v19 addObject:v22];
          }
        }

        v23 = v17;
LABEL_24:
        [v23 setObject:v15 forKeyedSubscript:v14];
        goto LABEL_25;
      }

      goto LABEL_18;
    case 0uLL:
      v22 = [v17 objectForKeyedSubscript:v14];
      if (v22)
      {
        [v19 addObject:v22];
        [v17 removeObjectForKey:v14];
      }

      v23 = v16;
      goto LABEL_24;
  }
}

- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)a3 localId:(int)a4 changeType:(unint64_t)a5 outTouchedDB:(BOOL *)a6
{
  if (a5 > 1)
  {
    LOBYTE(GroupWithRecordID) = 1;
    return GroupWithRecordID;
  }

  v9 = [(_CardDAVActionsABLegacyDataSource *)self addressBook];
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

- (BOOL)_fillOutExternalURLForRecordType:(unsigned int)a3 localId:(int)a4 changeType:(unint64_t)a5 inFolderWithURL:(id)a6 outNewExternalURL:(id *)a7 outTouchedDB:(BOOL *)a8
{
  v14 = a6;
  if (a5 > 1)
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, v20, "Found a delete of a record with no external id.  Dropping this delete on the floor", buf, 2u);
    }

    goto LABEL_8;
  }

  v15 = [(_CardDAVActionsABLegacyDataSource *)self addressBook];
  if (!a3)
  {
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(v15, a4);
    if (PersonWithRecordID)
    {
      v17 = PersonWithRecordID;
      v18 = &kABPersonExternalIdentifierProperty;
      goto LABEL_11;
    }

LABEL_8:
    v21 = 0;
    goto LABEL_15;
  }

  GroupWithRecordID = ABAddressBookGetGroupWithRecordID(v15, a4);
  if (!GroupWithRecordID)
  {
    goto LABEL_8;
  }

  v17 = GroupWithRecordID;
  v18 = &kABGroupExternalIdentifierProperty;
LABEL_11:
  v23 = *v18;
  v24 = ABRecordCopyValue(v17, *v18);
  if (v24)
  {
    v25 = v24;
    *a7 = [v24 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v14];
  }

  else
  {
    *a8 = 1;
    v26 = +[NSString da_newGUID];
    v27 = [NSString stringWithFormat:@"%@.vcf", v26];
    *a7 = [v14 URLByAppendingPathComponent:v27];

    v25 = [*a7 da_leastInfoStringRepresentationRelativeToParentURL:v14];
    ABRecordSetValue(v17, v23, v25, 0);
  }

  v21 = 1;
LABEL_15:

  return v21;
}

- (id)copyWithoutImageAction:(id)a3 withFolderURL:(id)a4 maxResourceSize:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 changedItem];
  v11 = [v10 clientID];
  v12 = [v11 intValue];

  PersonWithRecordID = ABAddressBookGetPersonWithRecordID([(_CardDAVActionsABLegacyDataSource *)self addressBook], v12);
  if (PersonWithRecordID)
  {
    buf[0] = 0;
    LOBYTE(v22) = 1;
    v14 = [CardDAVVCardItem itemWithABRecord:PersonWithRecordID addressBook:[(_CardDAVActionsABLegacyDataSource *)self addressBook] outNeedsDBSave:buf maxImageSize:0 maxResourceSize:a5 inContainerWithURL:v9 afterImageSyncFailed:v22];
    v15 = [DAAction alloc];
    v16 = [v8 itemChangeType];
    v17 = [v8 serverId];
    v18 = [v15 initWithItemChangeType:v16 changedItem:v14 serverId:v17];

    [v18 setChangeId:{objc_msgSend(v8, "changeId")}];
    [v18 setIgnoresGuardianRestrictions:{objc_msgSend(v8, "ignoresGuardianRestrictions")}];
  }

  else
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 67109120;
      v24 = v12;
      _os_log_impl(&dword_0, v19, v20, "Missing item with id %d for sync retry!", buf, 8u);
    }

    v18 = 0;
  }

  return v18;
}

@end