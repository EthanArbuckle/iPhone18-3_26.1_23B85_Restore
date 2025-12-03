@interface _CardDAVActionsABLegacyDataSource
- (BOOL)_fillOutExternalURLForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType inFolderWithURL:(id)l outNewExternalURL:(id *)rL outTouchedDB:(BOOL *)b;
- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType outTouchedDB:(BOOL *)b;
- (BOOL)_isValidRecordType:(unsigned int)type forDACardDAVRecord:(id)record;
- (_CardDAVActionsABLegacyDataSource)initWithAddressBook:(void *)book;
- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4;
- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size;
- (void)_addChangeForType:(unint64_t)type changedItemId:(id)id changeId:(id)changeId addedIdsToChangeId:(id)toChangeId modifiedIdsToChangeId:(id)idsToChangeId deletedIdsToChangeId:(id)deletedIdsToChangeId changeIdsToClear:(id)clear;
@end

@implementation _CardDAVActionsABLegacyDataSource

- (_CardDAVActionsABLegacyDataSource)initWithAddressBook:(void *)book
{
  v5.receiver = self;
  v5.super_class = _CardDAVActionsABLegacyDataSource;
  result = [(_CardDAVActionsABLegacyDataSource *)&v5 init];
  if (result)
  {
    result->_addressBook = book;
  }

  return result;
}

- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4
{
  u18AccountCopy = u18Account;
  accountCopy = account;
  containerCopy = container;
  lCopy = l;
  dCopy = d;
  actionsCopy = actions;
  contextCopy = context;
  v21 = objc_opt_new();
  asSource = [containerCopy asSource];
  if ([containerCopy isGuardianStateDirty])
  {
    externalIdentifier = [containerCopy externalIdentifier];
    v46 = externalIdentifier;
    isGuardianRestricted = [containerCopy isGuardianRestricted];
    v25 = @"true";
    if (!isGuardianRestricted)
    {
      v25 = 0;
    }

    restrictedCopy = restricted;
    v26 = actionsCopy;
    v27 = v25;
    v28 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
    v29 = [DAEditPropertyAction alloc];
    v30 = dCopy;
    v31 = lCopy;
    v32 = [v29 initWithChangedItem:containerCopy propertyName:cdXMLCardDAVGuardianRestricted value:v27 propertyNamespace:cdXMLMMeDAVURI serverId:v28];

    actionsCopy = v26;
    restricted = restrictedCopy;
    [v32 setIgnoresGuardianRestrictions:accountCopy & u18AccountCopy];
    [v21 addObject:v32];

    lCopy = v31;
    dCopy = v30;
  }

  BYTE1(v44) = restricted;
  LOBYTE(v44) = accountCopy;
  v33 = [(_CardDAVActionsABLegacyDataSource *)self _copyABActionsOfType:0 inContainer:asSource accountHomeURL:lCopy changeTrackingID:dCopy existingActions:actionsCopy maxImageSize:size maxResourceSize:resourceSize isPrimaryAppleAccount:v44 isImageUploadRestricted:?];
  actions = [v33 actions];

  if (actions)
  {
    actions2 = [v33 actions];
    [v21 addObjectsFromArray:actions2];
  }

  BYTE1(v45) = restricted;
  LOBYTE(v45) = accountCopy;
  v36 = [(_CardDAVActionsABLegacyDataSource *)self _copyABActionsOfType:1 inContainer:asSource accountHomeURL:lCopy changeTrackingID:dCopy existingActions:actionsCopy maxImageSize:size maxResourceSize:resourceSize isPrimaryAppleAccount:v45 isImageUploadRestricted:?];
  actions3 = [v36 actions];

  if (actions3)
  {
    actions4 = [v36 actions];
    [v21 addObjectsFromArray:actions4];
  }

  [contextCopy setAbPersonChangeId:{objc_msgSend(v33, "highestChangeID")}];
  [contextCopy setAbGroupChangeId:{objc_msgSend(v36, "highestChangeID")}];
  latestSequenceNumber = [v33 latestSequenceNumber];
  latestSequenceNumber2 = [v36 latestSequenceNumber];
  if (latestSequenceNumber >= latestSequenceNumber2)
  {
    v41 = latestSequenceNumber2;
  }

  else
  {
    v41 = latestSequenceNumber;
  }

  [contextCopy setLatestSequenceNumber:v41];
  if (([v33 isChangeHistoryTruncated] & 1) != 0 || objc_msgSend(v36, "isChangeHistoryTruncated"))
  {
    [contextCopy setChangeHistoryTruncated:1];
  }

  if ([v33 touchedDatabase])
  {
    touchedDatabase = 1;
  }

  else
  {
    touchedDatabase = [v36 touchedDatabase];
  }

  *b = touchedDatabase;

  return v21;
}

- (BOOL)_isValidRecordType:(unsigned int)type forDACardDAVRecord:(id)record
{
  recordCopy = record;
  v6 = recordCopy;
  if (type == 1)
  {
    isGroup = [recordCopy isGroup];
  }

  else
  {
    if (type)
    {
      v8 = 0;
      goto LABEL_7;
    }

    isGroup = [recordCopy isContact];
  }

  v8 = isGroup;
LABEL_7:

  return v8;
}

- (void)_addChangeForType:(unint64_t)type changedItemId:(id)id changeId:(id)changeId addedIdsToChangeId:(id)toChangeId modifiedIdsToChangeId:(id)idsToChangeId deletedIdsToChangeId:(id)deletedIdsToChangeId changeIdsToClear:(id)clear
{
  idCopy = id;
  changeIdCopy = changeId;
  toChangeIdCopy = toChangeId;
  idsToChangeIdCopy = idsToChangeId;
  deletedIdsToChangeIdCopy = deletedIdsToChangeId;
  clearCopy = clear;
  v20 = DALoggingwithCategory();
  v21 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v20, v21))
  {
    v32 = 134219522;
    typeCopy = type;
    v34 = 2112;
    v35 = idCopy;
    v36 = 2112;
    v37 = changeIdCopy;
    v38 = 2112;
    v39 = toChangeIdCopy;
    v40 = 2112;
    v41 = idsToChangeIdCopy;
    v42 = 2112;
    v43 = deletedIdsToChangeIdCopy;
    v44 = 2112;
    v45 = clearCopy;
    _os_log_impl(&dword_0, v20, v21, "_addChange for type %lu, changedItemId %@ changeId %@ addedIds %@ modifiedIds %@ deletedIds %@, changeIdsToClear %@", &v32, 0x48u);
  }

  if (!changeIdCopy)
  {
    changeIdCopy = &off_3DC90;
  }

  switch(type)
  {
    case 2uLL:
      v28 = [toChangeIdCopy objectForKeyedSubscript:idCopy];

      if (!v28)
      {
        v30 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];

        if (v30)
        {
          v31 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
          [clearCopy addObject:v31];

          [idsToChangeIdCopy removeObjectForKey:idCopy];
        }

        [deletedIdsToChangeIdCopy setObject:changeIdCopy forKeyedSubscript:idCopy];
        break;
      }

      v29 = [toChangeIdCopy objectForKeyedSubscript:idCopy];
      [clearCopy addObject:v29];

      [toChangeIdCopy removeObjectForKey:idCopy];
LABEL_18:
      [clearCopy addObject:changeIdCopy];
      break;
    case 1uLL:
      v24 = [toChangeIdCopy objectForKeyedSubscript:idCopy];

      if (!v24)
      {
        v25 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
        v22 = v25;
        if (v25)
        {
          intValue = [v25 intValue];
          intValue2 = [changeIdCopy intValue];
          if (intValue == -1 || intValue2 == -1)
          {
            if (intValue2 == -1)
            {
LABEL_25:

              break;
            }
          }

          else
          {
            [clearCopy addObject:v22];
          }
        }

        v23 = idsToChangeIdCopy;
LABEL_24:
        [v23 setObject:changeIdCopy forKeyedSubscript:idCopy];
        goto LABEL_25;
      }

      goto LABEL_18;
    case 0uLL:
      v22 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
      if (v22)
      {
        [clearCopy addObject:v22];
        [idsToChangeIdCopy removeObjectForKey:idCopy];
      }

      v23 = toChangeIdCopy;
      goto LABEL_24;
  }
}

- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType outTouchedDB:(BOOL *)b
{
  if (changeType > 1)
  {
    LOBYTE(GroupWithRecordID) = 1;
    return GroupWithRecordID;
  }

  addressBook = [(_CardDAVActionsABLegacyDataSource *)self addressBook];
  if (type)
  {
    GroupWithRecordID = ABAddressBookGetGroupWithRecordID(addressBook, id);
    if (!GroupWithRecordID)
    {
      return GroupWithRecordID;
    }

    v11 = GroupWithRecordID;
    v12 = &kABGroupExternalUUIDProperty;
  }

  else
  {
    GroupWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, id);
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
    *b = 1;
    v15 = +[NSString da_newGUID];
    ABRecordSetValue(v11, v13, v15, 0);
  }

  LOBYTE(GroupWithRecordID) = 1;
  return GroupWithRecordID;
}

- (BOOL)_fillOutExternalURLForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType inFolderWithURL:(id)l outNewExternalURL:(id *)rL outTouchedDB:(BOOL *)b
{
  lCopy = l;
  if (changeType > 1)
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

  addressBook = [(_CardDAVActionsABLegacyDataSource *)self addressBook];
  if (!type)
  {
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, id);
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

  GroupWithRecordID = ABAddressBookGetGroupWithRecordID(addressBook, id);
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
    *rL = [v24 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
  }

  else
  {
    *b = 1;
    v26 = +[NSString da_newGUID];
    v27 = [NSString stringWithFormat:@"%@.vcf", v26];
    *rL = [lCopy URLByAppendingPathComponent:v27];

    v25 = [*rL da_leastInfoStringRepresentationRelativeToParentURL:lCopy];
    ABRecordSetValue(v17, v23, v25, 0);
  }

  v21 = 1;
LABEL_15:

  return v21;
}

- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size
{
  actionCopy = action;
  lCopy = l;
  changedItem = [actionCopy changedItem];
  clientID = [changedItem clientID];
  intValue = [clientID intValue];

  PersonWithRecordID = ABAddressBookGetPersonWithRecordID([(_CardDAVActionsABLegacyDataSource *)self addressBook], intValue);
  if (PersonWithRecordID)
  {
    buf[0] = 0;
    LOBYTE(v22) = 1;
    v14 = [CardDAVVCardItem itemWithABRecord:PersonWithRecordID addressBook:[(_CardDAVActionsABLegacyDataSource *)self addressBook] outNeedsDBSave:buf maxImageSize:0 maxResourceSize:size inContainerWithURL:lCopy afterImageSyncFailed:v22];
    v15 = [DAAction alloc];
    itemChangeType = [actionCopy itemChangeType];
    serverId = [actionCopy serverId];
    v18 = [v15 initWithItemChangeType:itemChangeType changedItem:v14 serverId:serverId];

    [v18 setChangeId:{objc_msgSend(actionCopy, "changeId")}];
    [v18 setIgnoresGuardianRestrictions:{objc_msgSend(actionCopy, "ignoresGuardianRestrictions")}];
  }

  else
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 67109120;
      v24 = intValue;
      _os_log_impl(&dword_0, v19, v20, "Missing item with id %d for sync retry!", buf, 8u);
    }

    v18 = 0;
  }

  return v18;
}

@end