@interface _CardDAVActionsContactsDataSource
+ (OS_os_log)os_log;
+ (OS_os_log)os_log_summary;
- (BOOL)changeHistoryIsValid;
- (_CardDAVActionsContactsDataSource)initWithContactStore:(id)a3;
- (id)_copyCoalescedChangesInContainer:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 isImageUploadRestricted:(BOOL)a6 databaseHelper:(id)a7 accountHomeURL:(id)a8 changeTrackingID:(id)a9 existingActions:(id)a10 maxImageSize:(int64_t)a11 maxResourceSize:(int64_t)a12 changeContext:(id)a13 outTouchedDB:(BOOL *)a14;
- (id)coalesceExistingActions:(id)a3 withNewlyGeneratedActions:(id)a4 discardActionHandler:(id)a5;
- (id)copyWithoutImageAction:(id)a3 withFolderURL:(id)a4 maxResourceSize:(int64_t)a5;
- (id)extractContactActionsFromExistingActions:(id)a3;
- (id)extractGroupActionsFromExistingActions:(id)a3;
- (id)generateActionsFromContactChanges:(id)a3 databaseHelper:(id)a4 storeURL:(id)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 outTouchedDB:(BOOL *)a8;
- (id)generateActionsFromGroupChanges:(id)a3 databaseHelper:(id)a4 storeURL:(id)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 outTouchedDB:(BOOL *)a8;
- (id)itemForContactChange:(id)a3;
- (id)itemForGroupChange:(id)a3;
- (void)prepareChangeHistoryForClientWithIdentifier:(id)a3 forContainer:(id)a4 withChangeContext:(id)a5;
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

- (_CardDAVActionsContactsDataSource)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CardDAVActionsContactsDataSource;
  v6 = [(_CardDAVActionsContactsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)_copyCoalescedChangesInContainer:(id)a3 isPrimaryAppleAccount:(BOOL)a4 isU18Account:(BOOL)a5 isImageUploadRestricted:(BOOL)a6 databaseHelper:(id)a7 accountHomeURL:(id)a8 changeTrackingID:(id)a9 existingActions:(id)a10 maxImageSize:(int64_t)a11 maxResourceSize:(int64_t)a12 changeContext:(id)a13 outTouchedDB:(BOOL *)a14
{
  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];

  if (v22)
  {
    v23 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
    v24 = [v23 changesTruncated];

    if (!v24)
    {
      v59 = [(_CardDAVActionsContactsDataSource *)self extractContactActionsFromExistingActions:v21];
      v60 = [(_CardDAVActionsContactsDataSource *)self extractGroupActionsFromExistingActions:v21];
      v61 = [v17 externalIdentifier];
      [v61 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v19];
      v41 = v63 = v17;
      [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
      v42 = v57 = v21;
      [v42 contactChanges];
      v43 = v62 = v19;
      v58 = v41;
      v44 = [(_CardDAVActionsContactsDataSource *)self generateActionsFromContactChanges:v43 databaseHelper:v18 storeURL:v41 maxImageSize:a11 maxResourceSize:a12 outTouchedDB:a14];

      v45 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
      v46 = [v45 groupChanges];
      v47 = [(_CardDAVActionsContactsDataSource *)self generateActionsFromGroupChanges:v46 databaseHelper:v18 storeURL:v41 maxImageSize:a11 maxResourceSize:a12 outTouchedDB:a14];

      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_1B708;
      v66[3] = &unk_3CCB8;
      v66[4] = self;
      v48 = v20;
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
      v53 = v18;
      v54 = v47;
      v55 = [(_CardDAVActionsContactsDataSource *)self coalesceExistingActions:v60 withNewlyGeneratedActions:v47 discardActionHandler:v50];
      v40 = [v52 arrayByAddingObjectsFromArray:v55];

      v19 = v62;
      v21 = v57;

      v18 = v53;
      v17 = v63;

      goto LABEL_9;
    }

    v25 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_258D4(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    v25 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_2590C(v25, v33, v34, v35, v36, v37, v38, v39);
    }
  }

  v40 = [v21 copy];
LABEL_9:

  return v40;
}

- (id)copyWithoutImageAction:(id)a3 withFolderURL:(id)a4 maxResourceSize:(int64_t)a5
{
  v7 = [NSAssertionHandler currentHandler:a3];
  [v7 handleFailureInMethod:a2 object:self file:@"_CardDAVActionsContactsDataSource.m" lineNumber:152 description:@"Not implemented"];

  return 0;
}

- (id)extractContactActionsFromExistingActions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
        v11 = [v10 changedItem];
        v12 = [v11 cardDAVRecordItem];
        v13 = [v12 isContact];

        if (v13)
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

- (id)extractGroupActionsFromExistingActions:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
        v11 = [v10 changedItem];
        v12 = [v11 cardDAVRecordItem];
        v13 = [v12 isGroup];

        if (v13)
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

- (void)prepareChangeHistoryForClientWithIdentifier:(id)a3 forContainer:(id)a4 withChangeContext:(id)a5
{
  v8 = a4;
  v27 = a5;
  v9 = a3;
  v10 = [[CNChangeHistoryFetchRequest alloc] initWithClientIdentifier:v9];

  [v10 setIncludeGroupChanges:1];
  [v10 setIncludeChangeIDs:1];
  [v10 setIncludeExternalIDs:1];
  [v10 setIncludeImagesChanged:1];
  [v10 setUnifyResults:0];
  v11 = [v8 asContainer];
  v12 = [v11 identifier];
  [v10 setContainerIdentifier:v12];

  v13 = [(_CardDAVActionsContactsDataSource *)self contactStore];
  v29 = 0;
  v14 = [v13 changeHistoryWithFetchRequest:v10 error:&v29];
  v15 = v29;

  if (v15)
  {
    v16 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_259B0(v8, v15, v16);
    }
  }

  if ([v14 changesTruncated])
  {
    v17 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_25A54(v8, v17);
    }

    AnalyticsSendEvent();
  }

  v18 = [objc_opt_class() os_log_summary];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v14 contactChanges];
    v20 = [v19 count];
    v21 = [v8 identifier];
    *buf = 134218242;
    v31 = v20;
    v32 = 2112;
    v33 = v21;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Local contact changes: %lu for %@", buf, 0x16u);
  }

  v22 = [objc_opt_class() os_log_summary];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v14 groupChanges];
    v24 = [v23 count];
    v25 = [v8 identifier];
    *buf = 134218242;
    v31 = v24;
    v32 = 2112;
    v33 = v25;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Local group changes:  %lu for %@", buf, 0x16u);
  }

  v26 = [v14 latestChangeAnchor];
  [v28 setCnChangeAnchor:v26];

  [(_CardDAVActionsContactsDataSource *)self setChangeHistoryResult:v14];
}

- (BOOL)changeHistoryIsValid
{
  v3 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];

  if (v3)
  {
    v4 = [(_CardDAVActionsContactsDataSource *)self changeHistoryResult];
    v5 = [v4 changesTruncated];

    return v5 ^ 1;
  }

  else
  {
    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_25AEC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }
}

- (id)itemForContactChange:(id)a3
{
  v4 = a3;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v5];
  v7 = [v4 contactIdentifier];
  v21 = v7;
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
  v10 = [(_CardDAVActionsContactsDataSource *)self contactStore];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1C430;
  v14[3] = &unk_3CCE0;
  v14[4] = &v15;
  [v10 enumerateContactsWithFetchRequest:v6 error:0 usingBlock:v14];

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

- (id)generateActionsFromContactChanges:(id)a3 databaseHelper:(id)a4 storeURL:(id)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 outTouchedDB:(BOOL *)a8
{
  v12 = a3;
  v47 = a4;
  v13 = a5;
  v52 = +[NSMutableArray array];
  v49 = objc_alloc_init(CNSaveRequest);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v12;
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
          v20 = [v15 externalID];

          if (!v20)
          {
            v21 = [objc_opt_class() os_log];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_25B24(v66, v15);
            }
          }

          v19 = [v15 externalID];
          goto LABEL_14;
        }

        v18 = [v16 externalIdentifier];

        if (v18)
        {
          v19 = [v17 externalIdentifier];
LABEL_14:
          v22 = v19;
          v23 = [v19 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v13];
          goto LABEL_16;
        }

        v22 = +[NSString da_newGUID];
        v24 = [NSString stringWithFormat:@"%@.vcf", v22];
        v23 = [v13 URLByAppendingPathComponent:v24];

        v25 = [v23 da_leastInfoStringRepresentationRelativeToParentURL:v13];
        [v17 setExternalIdentifier:v25];
        [v17 updateSaveRequest:v49];
        *a8 = 1;

LABEL_16:
        v26 = [v17 externalUUID];

        if (!v26)
        {
          v27 = +[NSString da_newGUID];
          [v17 setExternalUUID:v27];

          [v17 updateSaveRequest:v49];
          *a8 = 1;
        }

        if (![v15 changeType])
        {
          v34 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = [v15 contactIdentifier];
            v36 = [v15 changeAnchor];
            *buf = 138412802;
            v61 = v35;
            v62 = 2112;
            v63 = v36;
            v64 = 2112;
            v65 = &stru_3CFD8;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeAdd action for CONTACT CNChangeHistoryChangeTypeAdd with identifier: %@ anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          buf[0] = 0;
          v37 = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v32 = [CardDAVVCardItem itemWithDACardDAVRecord:v17 contactStore:v37 outNeedsDBSave:buf maxImageSize:a6 maxResourceSize:a7 inContainerWithURL:v13];

          *a8 |= buf[0];
          v38 = [DAAction alloc];
          v39 = [v15 contactIdentifier];
          v33 = [v38 initWithItemChangeType:0 changedItem:v32 serverId:0 instanceId:v39];

LABEL_26:
LABEL_27:
          v40 = [v15 changeID];
          -[NSObject setChangeId:](v33, "setChangeId:", [v40 intValue]);

          [v52 addObject:v33];
          goto LABEL_28;
        }

        if ([v15 changeType] == &dword_0 + 1)
        {
          v28 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = [v15 contactIdentifier];
            v30 = [v15 changeAnchor];
            *buf = 138412802;
            v61 = v29;
            v62 = 2112;
            v63 = v30;
            v64 = 2112;
            v65 = &stru_3CFD8;
            _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeModify action for CONTACT CNChangeHistoryChangeTypeUpdate with identifier: %@ anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          v31 = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v32 = [CardDAVVCardItem itemWithDACardDAVRecord:v17 contactStore:v31 outNeedsDBSave:0 maxImageSize:a6 maxResourceSize:a7 inContainerWithURL:v13];

          v33 = [[DAAction alloc] initWithItemChangeType:1 changedItem:v32 serverId:0];
          goto LABEL_26;
        }

        v41 = [v15 changeType];
        v42 = [objc_opt_class() os_log];
        v33 = v42;
        if (v41 == &dword_0 + 2)
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            v43 = [v15 changeType];
            v44 = [v15 changeAnchor];
            *buf = 134218498;
            v61 = v43;
            v62 = 2112;
            v63 = v44;
            v64 = 2112;
            v65 = &stru_3CFD8;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeDelete action for CONTACT CNChangeHistoryChangeTypeDelete with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          v33 = [[DAAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v23];
          goto LABEL_27;
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
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

  [v47 addSaveRequest:v49];

  return v52;
}

- (id)itemForGroupChange:(id)a3
{
  v4 = a3;
  v5 = [v4 groupIdentifier];
  v17 = v5;
  v6 = [NSArray arrayWithObjects:&v17 count:1];
  v7 = [CNGroup predicateForGroupsWithIdentifiers:v6];

  v8 = [(_CardDAVActionsContactsDataSource *)self contactStore];
  v16 = 0;
  v9 = [v8 groupsMatchingPredicate:v7 error:&v16];
  v10 = v16;

  if (v10)
  {
    v11 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_25BD0();
    }

    v12 = 0;
    goto LABEL_7;
  }

  v13 = [v9 firstObject];

  if (v13)
  {
    v14 = [DAContactsGroup alloc];
    v11 = [v9 firstObject];
    v12 = [v14 initWithGroup:v11];
LABEL_7:

    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (id)generateActionsFromGroupChanges:(id)a3 databaseHelper:(id)a4 storeURL:(id)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 outTouchedDB:(BOOL *)a8
{
  v11 = a3;
  v46 = a4;
  v12 = a5;
  v52 = +[NSMutableArray array];
  v49 = objc_alloc_init(CNSaveRequest);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v11;
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
          v20 = [v16 externalID];
          goto LABEL_10;
        }

        v19 = [v17 externalIdentifier];

        if (v19)
        {
          v20 = [v18 externalIdentifier];
LABEL_10:
          v21 = v20;
          v22 = [v20 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v12];
          goto LABEL_12;
        }

        v21 = +[NSString da_newGUID];
        v23 = [NSString stringWithFormat:@"%@.vcf", v21];
        v22 = [v12 URLByAppendingPathComponent:v23];

        v24 = [v22 da_leastInfoStringRepresentationRelativeToParentURL:v12];
        [v18 setExternalIdentifier:v24];
        [v18 updateSaveRequest:v49];
        *a8 = 1;

LABEL_12:
        v25 = [v18 externalUUID];

        if (!v25)
        {
          v26 = +[NSString da_newGUID];
          [v18 setExternalUUID:v26];

          [v18 updateSaveRequest:v49];
          *a8 = 1;
        }

        if (![v16 changeType])
        {
          v34 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = [v16 changeType];
            v36 = [v16 changeAnchor];
            *buf = 134218498;
            v60 = v35;
            v61 = 2112;
            v62 = v36;
            v63 = 2112;
            v64 = &stru_3CFD8;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeAdd action for GROUP CNChangeHistoryChangeTypeAdd with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          v37 = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v31 = [CardDAVVCardItem itemWithDACardDAVRecord:0 contactStore:v37 outNeedsDBSave:0 maxImageSize:a6 maxResourceSize:a7 inContainerWithURL:v12];

          v32 = [DAAction alloc];
          v33 = 0;
LABEL_22:
          v38 = [v32 initWithItemChangeType:v33 changedItem:v31 serverId:0];

LABEL_23:
          v39 = [v16 changeID];
          -[NSObject setChangeId:](v38, "setChangeId:", [v39 intValue]);

          [v52 addObject:v38];
          goto LABEL_24;
        }

        if ([v16 changeType] == &dword_0 + 1)
        {
          v27 = [objc_opt_class() os_log];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v16 changeType];
            v29 = [v16 changeAnchor];
            *buf = 134218498;
            v60 = v28;
            v61 = 2112;
            v62 = v29;
            v63 = 2112;
            v64 = &stru_3CFD8;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeModify action for GROUP CNChangeHistoryChangeTypeUpdate with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          v30 = [(_CardDAVActionsContactsDataSource *)self contactStore];
          v31 = [CardDAVVCardItem itemWithDACardDAVRecord:0 contactStore:v30 outNeedsDBSave:0 maxImageSize:a6 maxResourceSize:a7 inContainerWithURL:v12];

          v32 = [DAAction alloc];
          v33 = 1;
          goto LABEL_22;
        }

        v40 = [v16 changeType];
        v41 = [objc_opt_class() os_log];
        v38 = v41;
        if (v40 == &dword_0 + 2)
        {
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = [v16 changeType];
            v43 = [v16 changeAnchor];
            *buf = 134218498;
            v60 = v42;
            v61 = 2112;
            v62 = v43;
            v63 = 2112;
            v64 = &stru_3CFD8;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "generating DAItemChangeTypeDelete action for GROUP CNChangeHistoryChangeTypeDelete with identifier: %ld anchored at: %@ in container: %@ ", buf, 0x20u);
          }

          v38 = [[DAAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v22];
          goto LABEL_23;
        }

        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
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

  [v46 addSaveRequest:v49];

  return v52;
}

- (id)coalesceExistingActions:(id)a3 withNewlyGeneratedActions:(id)a4 discardActionHandler:(id)a5
{
  v5 = a4;
  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableArray array];
  v8 = +[NSArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v5;
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
        v15 = [v14 instanceId];

        if (v15)
        {
          v16 = [v14 instanceId];
          [v6 setObject:v14 forKeyedSubscript:v16];
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