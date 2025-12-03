@interface _CardDAVActionsContactsDataSource
+ (OS_os_log)os_log;
+ (OS_os_log)os_log_summary;
- (BOOL)changeHistoryIsValid;
- (_CardDAVActionsContactsDataSource)initWithContactStore:(id)store;
- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4;
- (id)coalesceExistingActions:(id)actions withNewlyGeneratedActions:(id)generatedActions discardActionHandler:(id)handler;
- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size;
- (id)extractContactActionsFromExistingActions:(id)actions;
- (id)extractGroupActionsFromExistingActions:(id)actions;
- (id)generateActionsFromContactChanges:(id)changes databaseHelper:(id)helper storeURL:(id)l maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize outTouchedDB:(BOOL *)b;
- (id)generateActionsFromGroupChanges:(id)changes databaseHelper:(id)helper storeURL:(id)l maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize outTouchedDB:(BOOL *)b;
- (id)itemForContactChange:(id)change;
- (id)itemForGroupChange:(id)change;
- (void)prepareChangeHistoryForClientWithIdentifier:(id)identifier forContainer:(id)container withChangeContext:(id)context;
@end

@implementation _CardDAVActionsContactsDataSource

+ (OS_os_log)os_log
{
  if (qword_46F58 != -1)
  {
    sub_258AC();
  }

  v3 = qword_46F60;

  return v3;
}

+ (OS_os_log)os_log_summary
{
  if (qword_46F68 != -1)
  {
    sub_258C0();
  }

  v3 = qword_46F70;

  return v3;
}

- (_CardDAVActionsContactsDataSource)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _CardDAVActionsContactsDataSource;
  v6 = [(_CardDAVActionsContactsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4
{
  containerCopy = container;
  helperCopy = helper;
  lCopy = l;
  dCopy = d;
  actionsCopy = actions;
  changeHistoryResult = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];

  if (changeHistoryResult)
  {
    changeHistoryResult2 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
    changesTruncated = [changeHistoryResult2 changesTruncated];

    if (!changesTruncated)
    {
      v59 = [(_CardDAVActionsContactsDataSource *)self extractContactActionsFromExistingActions:actionsCopy];
      v60 = [(_CardDAVActionsContactsDataSource *)self extractGroupActionsFromExistingActions:actionsCopy];
      externalIdentifier = [containerCopy externalIdentifier];
      [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
      v41 = v63 = containerCopy;
      [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
      v42 = v57 = actionsCopy;
      [v42 contactChanges];
      v43 = v62 = lCopy;
      v58 = v41;
      v44 = [(_CardDAVActionsContactsDataSource *)self generateActionsFromContactChanges:v43 databaseHelper:helperCopy storeURL:v41 maxImageSize:size maxResourceSize:resourceSize outTouchedDB:b];

      changeHistoryResult3 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
      groupChanges = [changeHistoryResult3 groupChanges];
      v47 = [(_CardDAVActionsContactsDataSource *)self generateActionsFromGroupChanges:groupChanges databaseHelper:helperCopy storeURL:v41 maxImageSize:size maxResourceSize:resourceSize outTouchedDB:b];

      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1B708;
      v66[3] = &unk_3CCB8;
      v66[4] = self;
      v48 = dCopy;
      v67 = v48;
      v49 = objc_retainBlock(v66);
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1B8E0;
      v64[3] = &unk_3CCB8;
      v64[4] = self;
      v65 = v48;
      v50 = objc_retainBlock(v64);
      v51 = v44;
      v52 = [(_CardDAVActionsContactsDataSource *)self coalesceExistingActions:v59 withNewlyGeneratedActions:v44 discardActionHandler:v49];
      v53 = helperCopy;
      v54 = v47;
      v55 = [(_CardDAVActionsContactsDataSource *)self coalesceExistingActions:v60 withNewlyGeneratedActions:v47 discardActionHandler:v50];
      v40 = [v52 arrayByAddingObjectsFromArray:v55];

      lCopy = v62;
      actionsCopy = v57;

      helperCopy = v53;
      containerCopy = v63;

      goto LABEL_9;
    }

    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_258D4(os_log, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_2590C(os_log, v33, v34, v35, v36, v37, v38, v39);
    }
  }

  v40 = [actionsCopy copy];
LABEL_9:

  return v40;
}

- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size
{
  v7 = [NSAssertionHandler currentHandler:action];
  [v7 handleFailureInMethod:a2 object:self file:@"_CardDAVActionsContactsDataSource.m" lineNumber:152 description:@"Not implemented"];

  return 0;
}

- (id)extractContactActionsFromExistingActions:(id)actions
{
  actionsCopy = actions;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = actionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        changedItem = [v10 changedItem];
        cardDAVRecordItem = [changedItem cardDAVRecordItem];
        isContact = [cardDAVRecordItem isContact];

        if (isContact)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

- (id)extractGroupActionsFromExistingActions:(id)actions
{
  actionsCopy = actions;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = actionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        changedItem = [v10 changedItem];
        cardDAVRecordItem = [changedItem cardDAVRecordItem];
        isGroup = [cardDAVRecordItem isGroup];

        if (isGroup)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

- (void)prepareChangeHistoryForClientWithIdentifier:(id)identifier forContainer:(id)container withChangeContext:(id)context
{
  containerCopy = container;
  contextCopy = context;
  identifierCopy = identifier;
  v10 = [[CNChangeHistoryFetchRequest alloc] initWithClientIdentifier:identifierCopy];

  [v10 setIncludeGroupChanges:1];
  [v10 setIncludeChangeIDs:1];
  [v10 setIncludeExternalIDs:1];
  [v10 setIncludeImagesChanged:1];
  [v10 setUnifyResults:0];
  asContainer = [containerCopy asContainer];
  identifier = [asContainer identifier];
  [v10 setContainerIdentifier:identifier];

  contactStore = [(_CardDAVActionsContactsDataSource *)self contactStore];
  v29 = 0;
  v14 = [contactStore changeHistoryWithFetchRequest:v10 error:&v29];
  v15 = v29;

  if (v15)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_259B0(containerCopy, v15, os_log);
    }
  }

  if ([v14 changesTruncated])
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      sub_25A54(containerCopy, os_log2);
    }

    AnalyticsSendEvent();
  }

  os_log_summary = [objc_opt_class() os_log_summary];
  if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
  {
    contactChanges = [v14 contactChanges];
    v20 = [contactChanges count];
    identifier2 = [containerCopy identifier];
    *buf = 134218242;
    v31 = v20;
    v32 = 2112;
    v33 = identifier2;
    _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Local contact changes: %lu for %@", buf, 0x16u);
  }

  os_log_summary2 = [objc_opt_class() os_log_summary];
  if (os_log_type_enabled(os_log_summary2, OS_LOG_TYPE_DEFAULT))
  {
    groupChanges = [v14 groupChanges];
    v24 = [groupChanges count];
    identifier3 = [containerCopy identifier];
    *buf = 134218242;
    v31 = v24;
    v32 = 2112;
    v33 = identifier3;
    _os_log_impl(&dword_0, os_log_summary2, OS_LOG_TYPE_DEFAULT, "Local group changes:  %lu for %@", buf, 0x16u);
  }

  latestChangeAnchor = [v14 latestChangeAnchor];
  [v28 setCnChangeAnchor:latestChangeAnchor];

  [(_CardDAVActionsContactsDataSource *)self setChangeHistoryResult:v14];
}

- (BOOL)changeHistoryIsValid
{
  changeHistoryResult = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];

  if (changeHistoryResult)
  {
    changeHistoryResult2 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
    changesTruncated = [changeHistoryResult2 changesTruncated];

    return changesTruncated ^ 1;
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_25AEC(os_log, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }
}

- (id)itemForContactChange:(id)change
{
  changeCopy = change;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v5];
  contactIdentifier = [changeCopy contactIdentifier];
  v21 = contactIdentifier;
  v8 = [NSArray arrayWithObjects:&v21 count:1];
  v9 = [CNContact predicateForContactsWithIdentifiers:v8];
  [v6 setPredicate:v9];

  [v6 setUnifyResults:0];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1C418;
  v19 = sub_1C428;
  v20 = 0;
  contactStore = [(_CardDAVActionsContactsDataSource *)self contactStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1C430;
  v14[3] = &unk_3CCE0;
  v14[4] = &v15;
  [contactStore enumerateContactsWithFetchRequest:v6 error:0 usingBlock:v14];

  if (v16[5])
  {
    v11 = [DAContactsContact alloc];
    v12 = [(DAContactsContact *)v11 initWithContact:v16[5]];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)generateActionsFromContactChanges:(id)changes databaseHelper:(id)helper storeURL:(id)l maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize outTouchedDB:(BOOL *)b
{
  changesCopy = changes;
  helperCopy = helper;
  lCopy = l;
  v52 = +[NSMutableArray array];
  v49 = objc_alloc_init(CNSaveRequest);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = changesCopy;
  v54 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v54)
  {
    v53 = *v56;
    do
    {
      v14 = 0;
      do
      {
        if (*v56 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * v14);
        v16 = [(_CardDAVActionsContactsDataSource *)self itemForContactChange:v15];
        v17 = v16;
        if (!v16)
        {
          externalID = [v15 externalID];

          if (!externalID)
          {
            os_log = [objc_opt_class() os_log];
            if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
            {
              sub_25B24(v66, v15);
            }
          }

          externalID2 = [v15 externalID];
          goto LABEL_14;
        }

        externalIdentifier = [v16 externalIdentifier];

        if (externalIdentifier)
        {
          externalID2 = [v17 externalIdentifier];
LABEL_14:
          v22 = externalID2;
          v23 = [externalID2 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
          goto LABEL_16;
        }

        v22 = +[NSString da_newGUID];
        v24 = [NSString stringWithFormat:@"%@.vcf", v22];
        v23 = [lCopy URLByAppendingPathComponent:v24];

        v25 = [v23 da_leastInfoStringRepresentationRelativeToParentURL:lCopy];
        [v17 setExternalIdentifier:v25];
        [v17 updateSaveRequest:v49];
        *b = 1;

LABEL_16:
        externalUUID = [v17 externalUUID];

        if (!externalUUID)
        {
          v27 = +[NSString da_newGUID];
          [v17 setExternalUUID:v27];

          [v17 updateSaveRequest:v49];
          *b = 1;
        }

        if (![v15 changeType])
        {
          os_log2 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log2, OS_LOG_TYPE_INFO))
          {
            contactIdentifier = [v15 contactIdentifier];
            changeAnchor = [v15 changeAnchor];
            *buf = 138412802;
            v61 = contactIdentifier;
            v62 = 2112;
            v63 = changeAnchor;
            v64 = 2112;
            v65 = &stru_3CFD8;
            _os_log_impl(&dword_0, os_log2, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeAdd action for CONTACT CNChangeHistoryChangeTypeAdd with identifier: %@ anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          buf[0] = 0;
          contactStore = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v32 = [CardDAVVCardItem itemWithDACardDAVRecord:v17 contactStore:contactStore outNeedsDBSave:buf maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:lCopy];

          *b |= buf[0];
          v38 = [DAAction alloc];
          contactIdentifier2 = [v15 contactIdentifier];
          v33 = [v38 initWithItemChangeType:0 changedItem:v32 serverId:0 instanceId:contactIdentifier2];

LABEL_26:
LABEL_27:
          changeID = [v15 changeID];
          -[NSObject setChangeId:](v33, "setChangeId:", [changeID intValue]);

          [v52 addObject:v33];
          goto LABEL_28;
        }

        if ([v15 changeType] == &dword_0 + 1)
        {
          os_log3 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log3, OS_LOG_TYPE_INFO))
          {
            contactIdentifier3 = [v15 contactIdentifier];
            changeAnchor2 = [v15 changeAnchor];
            *buf = 138412802;
            v61 = contactIdentifier3;
            v62 = 2112;
            v63 = changeAnchor2;
            v64 = 2112;
            v65 = &stru_3CFD8;
            _os_log_impl(&dword_0, os_log3, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeModify action for CONTACT CNChangeHistoryChangeTypeUpdate with identifier: %@ anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          contactStore2 = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v32 = [CardDAVVCardItem itemWithDACardDAVRecord:v17 contactStore:contactStore2 outNeedsDBSave:0 maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:lCopy];

          v33 = [[DAAction alloc] initWithItemChangeType:1 changedItem:v32 serverId:0];
          goto LABEL_26;
        }

        changeType = [v15 changeType];
        os_log4 = [objc_opt_class() os_log];
        v33 = os_log4;
        if (changeType == &dword_0 + 2)
        {
          if (os_log_type_enabled(os_log4, OS_LOG_TYPE_INFO))
          {
            changeType2 = [v15 changeType];
            changeAnchor3 = [v15 changeAnchor];
            *buf = 134218498;
            v61 = changeType2;
            v62 = 2112;
            v63 = changeAnchor3;
            v64 = 2112;
            v65 = &stru_3CFD8;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeDelete action for CONTACT CNChangeHistoryChangeTypeDelete with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          v33 = [[DAAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v23];
          goto LABEL_27;
        }

        if (os_log_type_enabled(os_log4, OS_LOG_TYPE_ERROR))
        {
          sub_25B80(v59, v15);
        }

LABEL_28:

        v14 = v14 + 1;
      }

      while (v54 != v14);
      v45 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
      v54 = v45;
    }

    while (v45);
  }

  [helperCopy addSaveRequest:v49];

  return v52;
}

- (id)itemForGroupChange:(id)change
{
  changeCopy = change;
  groupIdentifier = [changeCopy groupIdentifier];
  v17 = groupIdentifier;
  v6 = [NSArray arrayWithObjects:&v17 count:1];
  v7 = [CNGroup predicateForGroupsWithIdentifiers:v6];

  contactStore = [(_CardDAVActionsContactsDataSource *)self contactStore];
  v16 = 0;
  v9 = [contactStore groupsMatchingPredicate:v7 error:&v16];
  v10 = v16;

  if (v10)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      sub_25BD0();
    }

    v12 = 0;
    goto LABEL_7;
  }

  firstObject = [v9 firstObject];

  if (firstObject)
  {
    v14 = [DAContactsGroup alloc];
    os_log = [v9 firstObject];
    v12 = [v14 initWithGroup:os_log];
LABEL_7:

    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)generateActionsFromGroupChanges:(id)changes databaseHelper:(id)helper storeURL:(id)l maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize outTouchedDB:(BOOL *)b
{
  changesCopy = changes;
  helperCopy = helper;
  lCopy = l;
  v52 = +[NSMutableArray array];
  v49 = objc_alloc_init(CNSaveRequest);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = changesCopy;
  v13 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v53 = *v55;
    do
    {
      v15 = 0;
      do
      {
        if (*v55 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v54 + 1) + 8 * v15);
        v17 = [(_CardDAVActionsContactsDataSource *)self itemForGroupChange:v16];
        v18 = v17;
        if (!v17)
        {
          externalID = [v16 externalID];
          goto LABEL_10;
        }

        externalIdentifier = [v17 externalIdentifier];

        if (externalIdentifier)
        {
          externalID = [v18 externalIdentifier];
LABEL_10:
          v21 = externalID;
          v22 = [externalID da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
          goto LABEL_12;
        }

        v21 = +[NSString da_newGUID];
        v23 = [NSString stringWithFormat:@"%@.vcf", v21];
        v22 = [lCopy URLByAppendingPathComponent:v23];

        v24 = [v22 da_leastInfoStringRepresentationRelativeToParentURL:lCopy];
        [v18 setExternalIdentifier:v24];
        [v18 updateSaveRequest:v49];
        *b = 1;

LABEL_12:
        externalUUID = [v18 externalUUID];

        if (!externalUUID)
        {
          v26 = +[NSString da_newGUID];
          [v18 setExternalUUID:v26];

          [v18 updateSaveRequest:v49];
          *b = 1;
        }

        if (![v16 changeType])
        {
          os_log = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
          {
            changeType = [v16 changeType];
            changeAnchor = [v16 changeAnchor];
            *buf = 134218498;
            v60 = changeType;
            v61 = 2112;
            v62 = changeAnchor;
            v63 = 2112;
            v64 = &stru_3CFD8;
            _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeAdd action for GROUP CNChangeHistoryChangeTypeAdd with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          contactStore = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v31 = [CardDAVVCardItem itemWithDACardDAVRecord:0 contactStore:contactStore outNeedsDBSave:0 maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:lCopy];

          v32 = [DAAction alloc];
          v33 = 0;
LABEL_22:
          v38 = [v32 initWithItemChangeType:v33 changedItem:v31 serverId:0];

LABEL_23:
          changeID = [v16 changeID];
          -[NSObject setChangeId:](v38, "setChangeId:", [changeID intValue]);

          [v52 addObject:v38];
          goto LABEL_24;
        }

        if ([v16 changeType] == &dword_0 + 1)
        {
          os_log2 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log2, OS_LOG_TYPE_INFO))
          {
            changeType2 = [v16 changeType];
            changeAnchor2 = [v16 changeAnchor];
            *buf = 134218498;
            v60 = changeType2;
            v61 = 2112;
            v62 = changeAnchor2;
            v63 = 2112;
            v64 = &stru_3CFD8;
            _os_log_impl(&dword_0, os_log2, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeModify action for GROUP CNChangeHistoryChangeTypeUpdate with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          contactStore2 = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v31 = [CardDAVVCardItem itemWithDACardDAVRecord:0 contactStore:contactStore2 outNeedsDBSave:0 maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:lCopy];

          v32 = [DAAction alloc];
          v33 = 1;
          goto LABEL_22;
        }

        changeType3 = [v16 changeType];
        os_log3 = [objc_opt_class() os_log];
        v38 = os_log3;
        if (changeType3 == &dword_0 + 2)
        {
          if (os_log_type_enabled(os_log3, OS_LOG_TYPE_INFO))
          {
            changeType4 = [v16 changeType];
            changeAnchor3 = [v16 changeAnchor];
            *buf = 134218498;
            v60 = changeType4;
            v61 = 2112;
            v62 = changeAnchor3;
            v63 = 2112;
            v64 = &stru_3CFD8;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeDelete action for GROUP CNChangeHistoryChangeTypeDelete with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          v38 = [[DAAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v22];
          goto LABEL_23;
        }

        if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
        {
          sub_25C3C(v58, v16);
        }

LABEL_24:

        v15 = v15 + 1;
      }

      while (v14 != v15);
      v44 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
      v14 = v44;
    }

    while (v44);
  }

  [helperCopy addSaveRequest:v49];

  return v52;
}

- (id)coalesceExistingActions:(id)actions withNewlyGeneratedActions:(id)generatedActions discardActionHandler:(id)handler
{
  generatedActionsCopy = generatedActions;
  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableArray array];
  v8 = +[NSArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = generatedActionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        instanceId = [v14 instanceId];

        if (instanceId)
        {
          instanceId2 = [v14 instanceId];
          [v6 setObject:v14 forKeyedSubscript:instanceId2];
        }

        else
        {
          NSLog(@"Yup, busted for %@", v14);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [v8 arrayByAddingObjectsFromArray:v9];

  v18 = [v17 arrayByAddingObjectsFromArray:v7];

  return v18;
}

@end