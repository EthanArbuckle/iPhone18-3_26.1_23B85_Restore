@interface CardDAVDaemonAccount
+ (OS_os_log)os_log_summary;
+ (id)contactsByFilteringOutContacts:(id)a3 withoutExternalIUUID:(id)a4;
+ (id)contactsByFilteringOutContacts:(id)a3 withoutExternalIdentifier:(id)a4;
+ (id)groupByFilteringOutGroups:(id)a3 withoutExternalIdentifier:(id)a4;
+ (id)groupByFilteringOutGroups:(id)a3 withoutExternalUUID:(id)a4;
- (BOOL)_handleOrphanarium:(id)a3 toBeCreatedContainersByURL:(id)a4;
- (BOOL)_reallyUpdateMeCardWithWithConsumer:(id)a3 allowDistantUpdate:(BOOL)a4;
- (BOOL)_serverMeCard:(id)a3 hasChangedInContainer:(id)a4;
- (BOOL)_shouldBlacklistForErrorItem:(id)a3;
- (BOOL)finishInitialSyncOfContactsFolder:(id)a3 previousTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6 useCRUD:(BOOL)a7 maxResources:(int64_t)a8 maxSize:(int64_t)a9 consumer:(id)a10 context:(id)a11;
- (BOOL)isForgivableError:(id)a3;
- (BOOL)setExternalLocation:(id)a3 forItemWithURL:(id)a4 inFolderWithURL:(id)a5;
- (BOOL)setLocalETag:(id)a3 forItemWithURL:(id)a4 inFolderWithURL:(id)a5;
- (BOOL)syncDeleteTask:(id)a3 parentTaskGroup:(id)a4 completedWithError:(id)a5;
- (BOOL)syncPostTask:(id)a3 postedData:(id)a4 parentTaskGroup:(id)a5 error:(id)a6;
- (BOOL)syncPropPatchTask:(id)a3 parsedResponses:(id)a4 parentTaskGroup:(id)a5 completedWithError:(id)a6;
- (BOOL)syncPutTask:(id)a3 completedWithNewETag:(id)a4 parentTaskGroup:(id)a5 error:(id)a6;
- (BOOL)updateMeCardWithWithConsumer:(id)a3;
- (CardDAVDaemonAccount)initWithBackingAccountInfo:(id)a3;
- (DAChangeHistoryClerk)changeHistoryClerk;
- (DAContactsAccountProvider)accountProvider;
- (DAContactsProvider)contactsProvider;
- (DAContainerProvider)containerProvider;
- (DAGroupsProvider)groupsProvider;
- (id)_bestDefaultContainerFromCandidateContainers:(id)a3;
- (id)_copyABAccount:(BOOL)a3;
- (id)_copyCardFromMeIdentifierAndContainer:(id *)a3;
- (id)accountDescription;
- (id)cdvActionsFromDAActions:(id)a3;
- (id)copyAllLocalURLsInFolderWithURL:(id)a3;
- (id)copyCDVActionFromDAAction:(id)a3;
- (id)copyDAActionFromCDVAction:(id)a3;
- (id)copyLocalETagsForURLs:(id)a3 inFolderWithURL:(id)a4;
- (id)daActionsFromCDVActions:(id)a3;
- (id)handleInsufficientStorageForTask:(id)a3 inFolderWithURL:(id)a4;
- (id)newDAContainerForContainer:(id)a3;
- (id)pushedActionsForTaskGroup:(id)a3;
- (int)_typeOfDAVContainer:(id)a3;
- (void)_bulkUploadTaskGroup:(id)a3 didFinishWithError:(id)a4;
- (void)_fillOutActionsArray:(id)a3 addedOrModified:(id)a4 removed:(id)a5;
- (void)_fillOutAddressBooksFromLocalDB;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)a3;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)_reallySyncAddressBookURLsWithConsumer:(id)a3;
- (void)_updateMeTaskGroup:(id)a3 didFinishWithError:(id)a4;
- (void)_updateStoredMeCardWithURL:(id)a3;
- (void)containerInfoTask:(id)a3 completedWithContainers:(id)a4 error:(id)a5;
- (void)containerQueryTask:(id)a3 completedWithFoundItems:(id)a4 error:(id)a5;
- (void)containerSyncTask:(id)a3 completedWithNewCTag:(id)a4 newSyncToken:(id)a5 addedOrModified:(id)a6 removed:(id)a7 error:(id)a8;
- (void)containerSyncTask:(id)a3 retrievedAddedOrModifiedActions:(id)a4 removed:(id)a5;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5;
- (void)getAccountPropertiesTask:(id)a3 completedWithError:(id)a4;
- (void)removePushedActionsForTaskGroup:(id)a3;
- (void)syncAddressBookURLsWithConsumer:(id)a3;
- (void)taskGroup:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CardDAVDaemonAccount

+ (OS_os_log)os_log_summary
{
  if (qword_46F38 != -1)
  {
    sub_2572C();
  }

  v3 = qword_46F40;

  return v3;
}

- (CardDAVDaemonAccount)initWithBackingAccountInfo:(id)a3
{
  v13.receiver = self;
  v13.super_class = CardDAVDaemonAccount;
  v3 = [(CardDAVDaemonAccount *)&v13 initWithBackingAccountInfo:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    [(CardDAVDaemonAccount *)v3 setSearchTaskSet:v4];

    v5 = +[NSMapTable mapTableWithStrongToStrongObjects];
    [(CardDAVDaemonAccount *)v3 setPushedActionsByTaskGroup:v5];

    v6 = +[NSMutableDictionary dictionary];
    groupsByExternalIdentifier = v3->_groupsByExternalIdentifier;
    v3->_groupsByExternalIdentifier = v6;

    v8 = +[NSMutableDictionary dictionary];
    contactsByExternalIdentifier = v3->_contactsByExternalIdentifier;
    v3->_contactsByExternalIdentifier = v8;

    v10 = +[NSMutableDictionary dictionary];
    externalURLForNewLocation = v3->_externalURLForNewLocation;
    v3->_externalURLForNewLocation = v10;
  }

  return v3;
}

- (id)accountDescription
{
  v3 = [objc_opt_class() description];
  v4 = [(CardDAVDaemonAccount *)self backingAccountInfo];
  v5 = [v4 username];

  v6 = [NSString stringWithFormat:@"%@ %@", v3, v5];

  return v6;
}

- (DAContactsProvider)contactsProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAContactsProvider providerWithContactStore:v6];
  }

  else
  {
    v7 = +[DAContactsProvider providerWithAddressBook:](DAContactsProvider, "providerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (DAGroupsProvider)groupsProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAGroupsProvider providerWithContactStore:v6];
  }

  else
  {
    v7 = +[DAGroupsProvider providerWithAddressBook:](DAGroupsProvider, "providerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (DAContainerProvider)containerProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAContainerProvider providerWithContactStore:v6];
  }

  else
  {
    v7 = +[DAContainerProvider providerWithAddressBook:](DAContainerProvider, "providerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (DAContactsAccountProvider)accountProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAContactsAccountProvider providerWithContactStore:v6];
  }

  else
  {
    v7 = +[DAContactsAccountProvider providerWithAddressBook:](DAContactsAccountProvider, "providerWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (DAChangeHistoryClerk)changeHistoryClerk
{
  v3 = +[DABehaviorOptions useContactsFramework];
  v4 = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 contactStore];
    v7 = [DAChangeHistoryClerk clerkWithContactStore:v6];
  }

  else
  {
    v7 = +[DAChangeHistoryClerk clerkWithAddressBook:](DAChangeHistoryClerk, "clerkWithAddressBook:", [v4 abDB]);
  }

  return v7;
}

- (id)pushedActionsForTaskGroup:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDaemonAccount *)self pushedActionsByTaskGroup];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = +[NSMutableArray array];
    v7 = [(CardDAVDaemonAccount *)self pushedActionsByTaskGroup];
    [v7 setObject:v6 forKey:v4];
  }

  return v6;
}

- (void)removePushedActionsForTaskGroup:(id)a3
{
  v4 = a3;
  v5 = [(CardDAVDaemonAccount *)self pushedActionsByTaskGroup];
  [v5 removeObjectForKey:v4];
}

- (BOOL)isForgivableError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:CoreDAVHTTPStatusErrorDomain] && objc_msgSend(v3, "code") >= 400 && objc_msgSend(v3, "code") < 500;

  return v5;
}

- (BOOL)syncPutTask:(id)a3 completedWithNewETag:(id)a4 parentTaskGroup:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13 && ![(CardDAVDaemonAccount *)self isForgivableError:v13])
  {
    v20 = 0;
  }

  else
  {
    v14 = [(CardDAVDaemonAccount *)self pushedActionsForTaskGroup:v12];
    v15 = [v10 backingAction];
    [v14 addObject:v15];

    v16 = [v10 backingAction];
    v17 = [v16 context];
    v18 = [v17 serverID];
    v19 = [v12 folderURL];
    [(CardDAVDaemonAccount *)self setLocalETag:v11 forItemWithURL:v18 inFolderWithURL:v19];

    v20 = 1;
  }

  return v20;
}

- (BOOL)syncPostTask:(id)a3 postedData:(id)a4 parentTaskGroup:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13 && ![(CardDAVDaemonAccount *)self isForgivableError:v13])
  {
    v16 = 0;
  }

  else
  {
    v14 = [(CardDAVDaemonAccount *)self pushedActionsForTaskGroup:v12];
    v15 = [v10 backingAction];
    [v14 addObject:v15];

    v16 = 1;
  }

  return v16;
}

- (BOOL)syncDeleteTask:(id)a3 parentTaskGroup:(id)a4 completedWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10 && ![(CardDAVDaemonAccount *)self isForgivableError:v10])
  {
    v13 = 0;
  }

  else
  {
    v11 = [(CardDAVDaemonAccount *)self pushedActionsForTaskGroup:v9];
    v12 = [v8 backingAction];
    [v11 addObject:v12];

    v13 = 1;
  }

  return v13;
}

- (void)_fillOutActionsArray:(id)a3 addedOrModified:(id)a4 removed:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        v15 = [DAAction alloc];
        v16 = [v14 serverID];
        v17 = [v15 initWithItemChangeType:1 changedItem:v14 serverId:v16];

        [v7 addObject:v17];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * v22);
        v24 = [DAAction alloc];
        v25 = [v23 serverID];
        v26 = [v24 initWithItemChangeType:2 changedItem:v23 serverId:v25];

        [v7 addObject:v26];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }
}

- (void)containerSyncTask:(id)a3 retrievedAddedOrModifiedActions:(id)a4 removed:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = v9;
  v29 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v9, "count") + objc_msgSend(v10, "count")}];
  if ([v10 count])
  {
    v11 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          v17 = objc_alloc(+[CardDAVVCardItem currentImplementationClass]);
          v18 = [v8 folderURL];
          v19 = [v17 initWithURL:v16 eTag:0 dataPayload:0 inContainerWithURL:v18 withAccountInfoProvider:self];

          [v11 addObject:v19];
        }

        v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v11 = 0;
  }

  obja = v11;
  [(CardDAVDaemonAccount *)self _fillOutActionsArray:v29 addedOrModified:v30 removed:v11];
  v20 = v8;
  v21 = [(CardDAVDaemonAccount *)self consumerForTask:v8];
  v22 = [v8 folderURL];
  v23 = [v22 absoluteString];
  v24 = [v8 previousCTag];
  v25 = [v29 allObjects];
  v26 = [v8 isInitialSync];
  v27 = [(CardDAVDaemonAccount *)self externalURLForNewLocation];
  *(&v28 + 1) = 1;
  LOBYTE(v28) = v26;
  [v21 syncResultForContactsFolder:v23 newTag:0 previousTag:v24 newSyncToken:0 actions:v25 results:0 changeIdContext:0 isInitialSync:v28 moreAvailable:0 moreLocalChangesAvailable:v27 pushedActions:? externalURLForNewLocation:?];
}

- (void)containerSyncTask:(id)a3 completedWithNewCTag:(id)a4 newSyncToken:(id)a5 addedOrModified:(id)a6 removed:(id)a7 error:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = DALoggingwithCategory();
  v20 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138413570;
    v116 = v13;
    v117 = 2112;
    v118 = v14;
    v119 = 2112;
    v120 = v15;
    v121 = 2048;
    v122 = [v16 count];
    v123 = 2048;
    v124 = [v17 count];
    v125 = 2112;
    v126 = v18;
    _os_log_impl(&dword_0, v19, v20, "Container sync task %@ completed with next cTag %@, next synctoken %@, add/modify count %lu, remove count %lu, error %@", buf, 0x3Eu);
  }

  v92 = v18;

  v21 = self;
  v22 = [(CardDAVDaemonAccount *)self consumerForTask:v13];
  v91 = [(CardDAVDaemonAccount *)self databaseHelper];
  v93 = v22;
  v89 = v16;
  v90 = v15;
  v88 = v17;
  if ([v17 count])
  {
    v85 = v14;
    v23 = v13;
    v24 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v17, "count")}];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v25 = v17;
    v26 = [v25 countByEnumeratingWithState:&v108 objects:v114 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v109;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v109 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v108 + 1) + 8 * i);
          v31 = objc_alloc(+[CardDAVVCardItem currentImplementationClass]);
          v32 = [v23 folderURL];
          v33 = [v31 initWithURL:v30 eTag:0 dataPayload:0 inContainerWithURL:v32 withAccountInfoProvider:self];

          [v24 addObject:v33];
        }

        v27 = [v25 countByEnumeratingWithState:&v108 objects:v114 count:16];
      }

      while (v27);
    }

    v13 = v23;
    v14 = v85;
    v16 = v89;
    v22 = v93;
    v21 = self;
  }

  else
  {
    v24 = 0;
  }

  v103 = _NSConcreteStackBlock;
  v104 = 3221225472;
  v105 = sub_CDA4;
  v106 = &unk_3CB18;
  v107 = v92;
  AnalyticsSendEventLazy();
  if (v107)
  {
    v34 = [(CardDAVDaemonAccount *)v21 pushedActionsForTaskGroup:v13];
    v35 = [v34 count];

    if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v36 = [v13 folderURL];
      v37 = [v36 absoluteString];
      v38 = [(CardDAVDaemonAccount *)v21 pushedActionsForTaskGroup:v13];
      v39 = [(CardDAVDaemonAccount *)v21 daActionsFromCDVActions:v38];
      [v93 contactsFolderWithId:v37 successfullyPushedActions:v39];

      v21 = self;
      v22 = v93;
    }

    v40 = v88;
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v41 = [(CardDAVDaemonAccount *)v21 databaseHelper];
      [v41 abCloseDBAndSave:0];
    }

    v42 = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      [(CardDAVDaemonAccount *)v21 accountDescription];
      v43 = v86 = v13;
      v44 = [(CardDAVDaemonAccount *)v21 publicDescription];
      v45 = [v107 domain];
      *buf = 138413058;
      v116 = v43;
      v117 = 2114;
      v118 = v44;
      v119 = 2112;
      v120 = v107;
      v121 = 2114;
      v122 = v45;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- sync completed with error: %@ %{public}@", buf, 0x2Au);

      v21 = self;
      v22 = v93;

      v13 = v86;
    }

    v46 = v107;
    [v22 actionFailed:10 forTask:v13 error:v107];
  }

  else
  {
    if (v21->_hasOutstandingABChanges && +[DABehaviorOptions useContactsFramework])
    {
      v47 = v14;
      v48 = v13;
      v49 = objc_alloc_init(CNSaveRequest);
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v50 = [(CardDAVDaemonAccount *)v21 contactsByExternalIdentifier];
      v51 = [v50 allValues];

      v52 = [v51 countByEnumeratingWithState:&v99 objects:v113 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v100;
        do
        {
          for (j = 0; j != v53; j = j + 1)
          {
            if (*v100 != v54)
            {
              objc_enumerationMutation(v51);
            }

            [*(*(&v99 + 1) + 8 * j) updateSaveRequest:v49];
          }

          v53 = [v51 countByEnumeratingWithState:&v99 objects:v113 count:16];
        }

        while (v53);
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v56 = [(CardDAVDaemonAccount *)v21 groupsByExternalIdentifier];
      v57 = [v56 allValues];

      v58 = [v57 countByEnumeratingWithState:&v95 objects:v112 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v96;
        do
        {
          for (k = 0; k != v59; k = k + 1)
          {
            if (*v96 != v60)
            {
              objc_enumerationMutation(v57);
            }

            [*(*(&v95 + 1) + 8 * k) updateSaveRequest:v49];
          }

          v59 = [v57 countByEnumeratingWithState:&v95 objects:v112 count:16];
        }

        while (v59);
      }

      v62 = [(CardDAVDaemonAccount *)v21 databaseHelper];
      [v62 addSaveRequest:v49];

      [v91 executeAllSaveRequests];
      v13 = v48;
      v14 = v47;
    }

    v63 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v16, "count") + objc_msgSend(v24, "count")}];
    [(CardDAVDaemonAccount *)v21 _fillOutActionsArray:v63 addedOrModified:v16 removed:v24];
    v64 = [v13 folderURL];
    v65 = [v64 absoluteString];
    v66 = [v13 previousCTag];
    v87 = v63;
    v67 = [v63 allObjects];
    v68 = [v13 context];
    v69 = [v13 isInitialSync];
    v70 = [(CardDAVDaemonAccount *)self externalURLForNewLocation];
    *(&v84 + 1) = 0;
    LOBYTE(v84) = v69;
    v15 = v90;
    [v93 syncResultForContactsFolder:v65 newTag:v14 previousTag:v66 newSyncToken:v90 actions:v67 results:0 changeIdContext:v68 isInitialSync:v84 moreAvailable:0 moreLocalChangesAvailable:v70 pushedActions:? externalURLForNewLocation:?];

    v21 = self;
    [(CardDAVDaemonAccount *)self removePushedActionsForTaskGroup:v13];
    v71 = [v13 folderURL];
    v72 = [(CardDAVDaemonAccount *)self homeURL];
    v73 = [v71 da_leastInfoStringRepresentationRelativeToParentURL:v72];

    v74 = [(CardDAVDaemonAccount *)self containerProvider];
    v75 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
    v76 = [v74 containerWithExternalIdentifier:v73 forAccountWithExternalIdentifier:v75];

    if (v76)
    {
      v77 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = [(CardDAVDaemonAccount *)self accountDescription];
        v79 = [(CardDAVDaemonAccount *)self publicDescription];
        *buf = 138412546;
        v116 = v78;
        v117 = 2114;
        v118 = v79;
        _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- sync complete", buf, 0x16u);

        v21 = self;
      }

      v80 = [(CardDAVDaemonAccount *)v21 containerProvider];
      v81 = [v80 setLastSyncDateForContainer:v76];

      if (v81)
      {
        v21->_hasOutstandingABChanges = 1;
      }
    }

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v82 = [(CardDAVDaemonAccount *)v21 databaseHelper];
      [v82 abCloseDBAndSave:v21->_hasOutstandingABChanges];
    }

    v40 = v88;
    v16 = v89;
    v46 = 0;
    v22 = v93;
  }

  [(CardDAVDaemonAccount *)v21 removeConsumerForTask:v13];
  v83 = +[DABabysitter sharedBabysitter];
  [v83 unregisterAccount:v21 forOperationWithName:@"CardDAVSync"];
}

- (BOOL)syncPropPatchTask:(id)a3 parsedResponses:(id)a4 parentTaskGroup:(id)a5 completedWithError:(id)a6
{
  v8 = [a3 backingAction];
  v9 = [v8 context];

  if (!a6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 action];
      v11 = [v10 propertyName];
      v12 = [v11 isEqualToString:cdXMLCardDAVGuardianRestricted];

      if (v12)
      {
        v13 = [(CardDAVDaemonAccount *)self databaseHelper];
        if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
        {
          v14 = [(CardDAVDaemonAccount *)self changeTrackingID];
          [v13 abOpenDBWithClientIdentifier:v14];
        }

        v15 = [v10 changedItem];
        [v15 setGuardianStateDirty:0];
        if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
        {
          v16 = objc_alloc_init(CNSaveRequest);
          [v15 updateSaveRequest:v16];
          [v13 addSaveRequest:v16];
          [v13 executeAllSaveRequests];
        }

        else
        {
          [v13 abCloseDBAndSave:1];
        }
      }
    }
  }

  return a6 == 0;
}

+ (id)contactsByFilteringOutContacts:(id)a3 withoutExternalIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 externalIdentifier];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)groupByFilteringOutGroups:(id)a3 withoutExternalIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 externalIdentifier];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)contactsByFilteringOutContacts:(id)a3 withoutExternalIUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 externalUUID];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)groupByFilteringOutGroups:(id)a3 withoutExternalUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 externalUUID];
        v15 = [v14 isEqualToString:v6];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)copyLocalETagsForURLs:(id)a3 inFolderWithURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v9 = [(CardDAVDaemonAccount *)self homeURL];
  v10 = [v7 da_leastInfoStringRepresentationRelativeToParentURL:v9];

  v11 = [(CardDAVDaemonAccount *)self containerProvider];
  v12 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v13 = [v11 containerWithExternalIdentifier:v10 forAccountWithExternalIdentifier:v12];

  v51 = v13;
  if (v13)
  {
    v48 = v10;
    v49 = v6;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (!v15)
    {
      goto LABEL_24;
    }

    v16 = v15;
    obj = v14;
    v53 = *v55;
    v50 = v7;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v55 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v54 + 1) + 8 * v17);
        v19 = [v18 da_leastInfoStringRepresentationRelativeToParentURL:{v7, v48, v49}];
        v20 = [(CardDAVDaemonAccount *)self contactsByExternalIdentifier];
        v21 = [v20 objectForKeyedSubscript:v19];

        if (v21)
        {
          v22 = [(CardDAVDaemonAccount *)self contactsByExternalIdentifier];
          v23 = [v22 objectForKeyedSubscript:v19];
          goto LABEL_9;
        }

        v26 = [(CardDAVDaemonAccount *)self contactsProvider];
        v67 = v19;
        v27 = [NSArray arrayWithObjects:&v67 count:1];
        v22 = [v26 contactsWithExternalHREFs:v27 container:v51];

        if ([v22 count])
        {
          v28 = [v22 firstObject];
          v29 = [v28 eTag];

          if (v29)
          {
            v23 = [v22 firstObject];
LABEL_9:
            v24 = v23;
            v25 = [v23 eTag];
            [v8 setObject:v25 forKeyedSubscript:v18];
LABEL_10:

            goto LABEL_11;
          }
        }

        v30 = [(CardDAVDaemonAccount *)self groupsByExternalIdentifier];
        v31 = [v30 objectForKeyedSubscript:v19];

        if (v31)
        {
          v24 = [(CardDAVDaemonAccount *)self groupsByExternalIdentifier];
          v32 = [v24 objectForKeyedSubscript:v19];
LABEL_18:
          v25 = v32;
          v33 = [v32 eTag];
          [v8 setObject:v33 forKeyedSubscript:v18];

          v7 = v50;
          goto LABEL_10;
        }

        v34 = [(CardDAVDaemonAccount *)self groupsProvider];
        v66 = v19;
        v35 = [NSArray arrayWithObjects:&v66 count:1];
        v24 = [v34 groupsWithExternalHREFs:v35 container:v51];

        if ([v24 count])
        {
          v36 = [v24 firstObject];
          v37 = [v36 eTag];

          if (v37)
          {
            v32 = [v24 firstObject];
            goto LABEL_18;
          }
        }

        v7 = v50;
LABEL_11:

        v17 = v17 + 1;
      }

      while (v16 != v17);
      v14 = obj;
      v38 = [obj countByEnumeratingWithState:&v54 objects:v68 count:16];
      v16 = v38;
      if (!v38)
      {
LABEL_24:

        v39 = [objc_opt_class() os_log_summary];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [(CardDAVDaemonAccount *)self accountDescription];
          v41 = [(CardDAVDaemonAccount *)self publicDescription];
          v42 = [v14 count];
          v43 = [v8 count];
          *buf = 138413058;
          v59 = v40;
          v60 = 2114;
          v61 = v41;
          v62 = 2048;
          v63 = v42;
          v64 = 2048;
          v65 = v43;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- server requested %lu etags, we matched %lu", buf, 0x2Au);
        }

        v44 = v8;
        v10 = v48;
        v6 = v49;
        goto LABEL_30;
      }
    }
  }

  v45 = DALoggingwithCategory();
  v46 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v45, v46))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v45, v46, "Our ab store went missing mid sync. Shenanigans!", buf, 2u);
  }

  v44 = 0;
LABEL_30:

  return v44;
}

- (id)copyAllLocalURLsInFolderWithURL:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = [(CardDAVDaemonAccount *)self homeURL];
  v7 = [v4 da_leastInfoStringRepresentationRelativeToParentURL:v6];

  v8 = [(CardDAVDaemonAccount *)self containerProvider];
  v9 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v10 = [v8 containerWithExternalIdentifier:v7 forAccountWithExternalIdentifier:v9];

  if (v10)
  {
    v49 = v7;
    v11 = [(CardDAVDaemonAccount *)self contactsProvider];
    v12 = [v11 contactsInContainer:v10];

    v47 = self;
    v13 = [(CardDAVDaemonAccount *)self groupsProvider];
    v46 = [v13 groupsInContainer:v10];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v56;
      v17 = _CPLog_to_os_log_type[3];
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          v20 = [v19 externalIdentifier];

          if (v20)
          {
            v21 = [v19 externalIdentifier];
            v22 = [v21 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v4];

            if (v22)
            {
              [v5 addObject:v22];
            }

            else
            {
              v23 = DALoggingwithCategory();
              if (os_log_type_enabled(v23, v17))
              {
                v24 = [v19 externalIdentifier];
                *buf = 138412546;
                v60 = v24;
                v61 = 2112;
                v62 = v4;
                _os_log_impl(&dword_0, v23, v17, "Found a contact with full path %@, which I can't make into a URL relative to %@", buf, 0x16u);
              }
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v15);
    }

    v48 = v10;
    v25 = v5;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v26 = v46;
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      v30 = _CPLog_to_os_log_type[3];
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v51 + 1) + 8 * j);
          v33 = [v32 externalIdentifier];

          if (v33)
          {
            v34 = [v32 externalIdentifier];
            v35 = [v34 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v4];

            if (v35)
            {
              [v25 addObject:v35];
            }

            else
            {
              v36 = DALoggingwithCategory();
              if (os_log_type_enabled(v36, v30))
              {
                v37 = [v32 externalIdentifier];
                *buf = 138412546;
                v60 = v37;
                v61 = 2112;
                v62 = v4;
                _os_log_impl(&dword_0, v36, v30, "Found a group with full path %@, which I can't make into a URL relative to %@", buf, 0x16u);
              }
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v28);
    }

    v38 = [objc_opt_class() os_log_summary];
    v5 = v25;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(CardDAVDaemonAccount *)v47 accountDescription];
      v40 = [(CardDAVDaemonAccount *)v47 publicDescription];
      v41 = [v25 count];
      *buf = 138412802;
      v60 = v39;
      v61 = 2114;
      v62 = v40;
      v63 = 2048;
      v64 = v41;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) - server requested local urls, we provided %lu", buf, 0x20u);
    }

    v42 = v25;
    v10 = v48;
    v7 = v49;
  }

  else
  {
    v43 = DALoggingwithCategory();
    v44 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v43, v44))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v43, v44, "Our ab store went missing mid sync.  Shenanigans!", buf, 2u);
    }

    v42 = 0;
  }

  return v42;
}

- (BOOL)setLocalETag:(id)a3 forItemWithURL:(id)a4 inFolderWithURL:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(CardDAVDaemonAccount *)self homeURL];
  v12 = [v9 da_leastInfoStringRepresentationRelativeToParentURL:v11];

  v13 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v9];

  v14 = [(CardDAVDaemonAccount *)self containerProvider];
  v15 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v16 = [v14 containerWithExternalIdentifier:v12 forAccountWithExternalIdentifier:v15];

  if (v16)
  {
    v17 = [(CardDAVDaemonAccount *)self contactsProvider];
    v32 = v13;
    v18 = [NSArray arrayWithObjects:&v32 count:1];
    v19 = [v17 contactsWithExternalHREFs:v18 container:v16];

    if ([v19 count])
    {
      v20 = [v19 firstObject];
      [v20 setETag:v8];

      v21 = [v19 firstObject];
      v22 = [(CardDAVDaemonAccount *)self contactsByExternalIdentifier];
      [v22 setObject:v21 forKeyedSubscript:v13];
    }

    else
    {
      v25 = [(CardDAVDaemonAccount *)self groupsProvider];
      v31 = v13;
      v26 = [NSArray arrayWithObjects:&v31 count:1];
      v21 = [v25 groupsWithExternalHREFs:v26 container:v16];

      if (![v21 count])
      {
LABEL_10:

        self->_hasOutstandingABChanges = 1;
        goto LABEL_11;
      }

      v27 = [v21 firstObject];
      [v27 setETag:v8];

      v22 = [v21 firstObject];
      v28 = [(CardDAVDaemonAccount *)self groupsByExternalIdentifier];
      [v28 setObject:v22 forKeyedSubscript:v13];
    }

    goto LABEL_10;
  }

  v23 = DALoggingwithCategory();
  v24 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v23, v24))
  {
    *v30 = 0;
    _os_log_impl(&dword_0, v23, v24, "Our ab store went missing mid sync.  Shenanigans!", v30, 2u);
  }

LABEL_11:
  return v16 != 0;
}

- (BOOL)setExternalLocation:(id)a3 forItemWithURL:(id)a4 inFolderWithURL:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 da_leastInfoStringRepresentationRelativeToParentURL:v9];
  v12 = [v11 da_stringByRemovingPercentEscapesForUsername];

  v13 = [NSURL URLWithString:v10];

  v14 = [v13 da_leastInfoStringRepresentationRelativeToParentURL:v9];

  v15 = [v14 da_stringByRemovingPercentEscapesForUsername];

  if (v15 && ([v12 isEqualToString:v15] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_externalURLForNewLocation setObject:v8 forKeyedSubscript:v15];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)handleInsufficientStorageForTask:(id)a3 inFolderWithURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(CardDAVDaemonAccount *)self homeURL];
    v10 = [v7 da_leastInfoStringRepresentationRelativeToParentURL:v9];

    v11 = [(CardDAVDaemonAccount *)self containerProvider];
    v12 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
    v13 = [v11 containerWithExternalIdentifier:v10 forAccountWithExternalIdentifier:v12];

    v14 = [CardDAVPropertiesHelper maxResourceSizeFromContainer:v13];
    v15 = [(CardDAVDaemonAccount *)self databaseHelper];
    v16 = +[CardDAVActionsDataSource dataSourceWithAddressBook:](CardDAVActionsDataSource, "dataSourceWithAddressBook:", [v15 abDB]);

    v17 = [v6 backingAction];
    v18 = [(CardDAVDaemonAccount *)self copyDAActionFromCDVAction:v17];
    v19 = [v16 copyWithoutImageAction:v18 withFolderURL:v7 maxResourceSize:v14];

    v8 = [(CardDAVDaemonAccount *)self copyCDVActionFromDAAction:v19];
  }

  return v8;
}

- (BOOL)finishInitialSyncOfContactsFolder:(id)a3 previousTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6 useCRUD:(BOOL)a7 maxResources:(int64_t)a8 maxSize:(int64_t)a9 consumer:(id)a10 context:(id)a11
{
  v11 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v63 = a6;
  v62 = a10;
  v61 = a11;
  v19 = +[DABabysitter sharedBabysitter];
  LOBYTE(a5) = [v19 registerAccount:self forOperationWithName:@"CardDAVInitialUpload"];

  if (a5)
  {
    v60 = [NSURL URLWithString:v16];
    v58 = v18;
    if (v11)
    {
      v57 = v17;
      v20 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v18, "count")}];
      v21 = v18;
      v22 = v20;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v23 = v21;
      v24 = [v23 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v69;
        do
        {
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v69 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v68 + 1) + 8 * i);
            v29 = [v23 objectForKeyedSubscript:v28];
            v30 = [(CardDAVDaemonAccount *)self copyCDVActionFromDAAction:v29];

            if (v30)
            {
              [v22 setObject:v30 forKeyedSubscript:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v25);
      }

      v56 = v16;

      v31 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v63, "count")}];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v32 = v63;
      v33 = [v32 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v65;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v65 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v64 + 1) + 8 * j);
            v38 = [v32 objectForKeyedSubscript:v37];
            v39 = [(CardDAVDaemonAccount *)self copyCDVActionFromDAAction:v38];

            if (v39)
            {
              [v31 setObject:v39 forKeyedSubscript:v37];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v34);
      }

      v40 = DALoggingwithCategory();
      v41 = _CPLog_to_os_log_type[6];
      v16 = v56;
      v42 = v62;
      if (os_log_type_enabled(v40, v41))
      {
        *buf = 138412290;
        v75 = v56;
        _os_log_impl(&dword_0, v40, v41, "Folder with id %@ supports bulk upload.  Using it", buf, 0xCu);
      }

      v43 = [CardDAVBulkUploadTaskGroup alloc];
      v44 = [(CardDAVDaemonAccount *)self taskManager];
      v45 = v43;
      v46 = v61;
      v47 = [v45 initWithFolderURL:v60 checkCTag:v57 uuidsToAddActions:v22 hrefsToModDeleteActions:v31 context:v61 accountInfoProvider:self taskManager:v44];

      if (a8)
      {
        if (a8 >= 25)
        {
          v48 = 25;
        }

        else
        {
          v48 = a8;
        }

        [v47 setMultiPutBatchMaxNumResources:v48];
      }

      if (a9)
      {
        [v47 setMultiPutBatchMaxSize:a9];
      }

      [v47 setDelegate:self];
      [(CardDAVDaemonAccount *)self setConsumer:v62 forTask:v47];
      [v47 startTaskGroup];

      v17 = v57;
    }

    else
    {
      v52 = DALoggingwithCategory();
      v53 = _CPLog_to_os_log_type[3];
      v46 = v61;
      v42 = v62;
      if (os_log_type_enabled(v52, v53))
      {
        *buf = 138412290;
        v75 = v16;
        _os_log_impl(&dword_0, v52, v53, "Asked to do a bulk upload to folder id %@, but it doesn't support it.  Failing", buf, 0xCu);
      }

      v54 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
      [v62 failedToFinishInitialSync:v16 error:v54];

      v22 = +[DABabysitter sharedBabysitter];
      [v22 unregisterAccount:self forOperationWithName:@"CardDAVInitialUpload"];
    }

    v18 = v58;
    v51 = v60;
  }

  else
  {
    v49 = DALoggingwithCategory();
    v50 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v49, v50))
    {
      *buf = 138412290;
      v75 = self;
      _os_log_impl(&dword_0, v49, v50, "The babysitter put us in timeout. Failing initial contacts sync. %@", buf, 0xCu);
    }

    v51 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    v42 = v62;
    [v62 failedToFinishInitialSync:v16 error:v51];
    v46 = v61;
  }

  return 0;
}

- (void)_bulkUploadTaskGroup:(id)a3 didFinishWithError:(id)a4
{
  v86 = a3;
  v84 = a4;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412546;
    *&buf[4] = v86;
    *&buf[12] = 2112;
    *&buf[14] = v84;
    _os_log_impl(&dword_0, v5, v6, "bulk upload task group %@ completed with error %@", buf, 0x16u);
  }

  v7 = [v86 uuidToHREF];
  if ([v7 count])
  {
    goto LABEL_6;
  }

  v8 = [v86 hrefToETag];
  if ([v8 count])
  {

LABEL_6:
    goto LABEL_7;
  }

  v73 = [v86 hrefToStatus];
  v74 = [v73 count] == 0;

  if (v74)
  {
    v82 = [(CardDAVDaemonAccount *)self databaseHelper];
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      v75 = [(CardDAVDaemonAccount *)self changeTrackingID];
      [v82 abOpenDBWithClientIdentifier:v75];
    }

    v76 = [v86 folderURL];
    v77 = [(CardDAVDaemonAccount *)self homeURL];
    v81 = [v76 da_leastInfoStringRepresentationRelativeToParentURL:v77];

    v78 = [(CardDAVDaemonAccount *)self containerProvider];
    v79 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
    v83 = [v78 containerWithExternalIdentifier:v81 forAccountWithExternalIdentifier:v79];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      [v82 abCloseDBAndSave:0];
    }

    goto LABEL_57;
  }

LABEL_7:
  v82 = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v9 = [(CardDAVDaemonAccount *)self changeTrackingID];
    [v82 abOpenDBWithClientIdentifier:v9];
  }

  v10 = [v86 folderURL];
  v11 = [(CardDAVDaemonAccount *)self homeURL];
  v81 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v11];

  v12 = [(CardDAVDaemonAccount *)self containerProvider];
  v13 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v83 = [v12 containerWithExternalIdentifier:v81 forAccountWithExternalIdentifier:v13];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v138 = 0;
  v14 = objc_alloc_init(CNSaveRequest);
  if (v83)
  {
    v15 = +[NSMutableDictionary dictionary];
    v16 = +[NSMutableDictionary dictionary];
    v120[0] = _NSConcreteStackBlock;
    v120[1] = 3221225472;
    v120[2] = sub_F980;
    v120[3] = &unk_3CB40;
    v17 = v86;
    v121 = v17;
    v122 = self;
    v88 = v83;
    v123 = v88;
    v93 = v15;
    v124 = v93;
    v80 = v14;
    v90 = v14;
    v125 = v90;
    v127 = buf;
    v87 = v16;
    v126 = v87;
    v18 = objc_retainBlock(v120);
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v19 = [v17 uuidToHREF];
    v20 = [v19 allKeys];

    v21 = [v20 countByEnumeratingWithState:&v116 objects:v136 count:16];
    if (v21)
    {
      v22 = *v117;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v117 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v116 + 1) + 8 * i);
          v25 = [v17 uuidToHREF];
          v26 = [v25 objectForKeyedSubscript:v24];
          (v18[2])(v18, v24, v26);
        }

        v21 = [v20 countByEnumeratingWithState:&v116 objects:v136 count:16];
      }

      while (v21);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v27 = [v17 hrefToStatus];
    v28 = [v27 allKeys];

    v29 = [v28 countByEnumeratingWithState:&v112 objects:v135 count:16];
    if (v29)
    {
      v30 = *v113;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v113 != v30)
          {
            objc_enumerationMutation(v28);
          }

          (v18[2])(v18, 0, *(*(&v112 + 1) + 8 * j));
        }

        v29 = [v28 countByEnumeratingWithState:&v112 objects:v135 count:16];
      }

      while (v29);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v32 = [v17 hrefToETag];
    obj = [v32 allKeys];

    v33 = [obj countByEnumeratingWithState:&v108 objects:v134 count:16];
    if (v33)
    {
      v92 = *v109;
      type = _CPLog_to_os_log_type[3];
      do
      {
        v34 = 0;
        do
        {
          if (*v109 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v108 + 1) + 8 * v34);
          v36 = [v17 hrefToETag];
          v37 = [v36 objectForKeyedSubscript:v35];

          v38 = [v17 folderURL];
          v39 = [v35 da_leastInfoStringRepresentationRelativeToParentURL:v38];

          v40 = [v93 objectForKeyedSubscript:v35];
          if (v40)
          {
            goto LABEL_31;
          }

          v41 = [(CardDAVDaemonAccount *)self contactsProvider];
          v133 = v39;
          v42 = [NSArray arrayWithObjects:&v133 count:1];
          v43 = [v41 contactsWithExternalHREFs:v42 container:v88];

          v40 = [v43 firstObject];

          if (v40)
          {
LABEL_31:
            [v40 setETag:v37];
            if (+[DABehaviorOptions useContactsFramework])
            {
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          v40 = [v87 objectForKeyedSubscript:v35];
          if (v40)
          {
            goto LABEL_38;
          }

          v44 = [(CardDAVDaemonAccount *)self groupsProvider];
          v132 = v39;
          v45 = [NSArray arrayWithObjects:&v132 count:1];
          v46 = [v44 groupsWithExternalHREFs:v45 container:v88];

          v40 = [v46 firstObject];

          if (v40)
          {
LABEL_38:
            [v40 setETag:v37];
            if (+[DABehaviorOptions useContactsFramework])
            {
LABEL_32:
              [v40 updateSaveRequest:v90];
            }

LABEL_33:
            *(*&buf[8] + 24) = 1;
            goto LABEL_34;
          }

          v40 = DALoggingwithCategory();
          if (os_log_type_enabled(v40, type))
          {
            *v128 = 138412546;
            v129 = v35;
            v130 = 2112;
            v131 = v37;
            _os_log_impl(&dword_0, v40, type, "For href %@, I have new etag %@, but no local record", v128, 0x16u);
          }

LABEL_34:

          v34 = v34 + 1;
        }

        while (v33 != v34);
        v47 = [obj countByEnumeratingWithState:&v108 objects:v134 count:16];
        v33 = v47;
      }

      while (v47);
    }

    v48 = [v17 nextCTag];

    if (v48)
    {
      v49 = [v17 nextCTag];
      [v88 setCTag:v49];

      if (+[DABehaviorOptions useContactsFramework])
      {
        [v88 updateSaveRequest:v90];
      }

      *(*&buf[8] + 24) = 1;
    }

    v50 = [v17 hrefToStatus];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_FDB0;
    v100[3] = &unk_3CB68;
    v101 = v17;
    v51 = v93;
    v102 = v51;
    v103 = self;
    v104 = v88;
    v105 = v90;
    v107 = buf;
    v52 = v87;
    v106 = v52;
    [v50 enumerateKeysAndObjectsUsingBlock:v100];

    v14 = v80;
  }

  else
  {
    v53 = DALoggingwithCategory();
    v54 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v53, v54))
    {
      *v128 = 0;
      _os_log_impl(&dword_0, v53, v54, "Bulk upload finished, but I have no store for it!", v128, 2u);
    }

    if (!v84)
    {
      v84 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    }
  }

  if (+[DABehaviorOptions useContactsFramework])
  {
    if (*(*&buf[8] + 24))
    {
      [v82 executeAllSaveRequests];
    }
  }

  else
  {
    [v82 abCloseDBAndSave:*(*&buf[8] + 24)];
  }

  _Block_object_dispose(buf, 8);
LABEL_57:

  v55 = [(CardDAVDaemonAccount *)self consumerForTask:v86];
  v56 = [v86 uuidToErrorItems];
  v57 = [v56 count] == 0;

  if (v57)
  {
    v61 = 0;
    v62 = 0;
  }

  else
  {
    v58 = +[NSMutableSet set];
    v59 = +[NSMutableSet set];
    v60 = [v86 uuidToErrorItems];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_10000;
    v97[3] = &unk_3CB90;
    v97[4] = self;
    v61 = v58;
    v98 = v61;
    v62 = v59;
    v99 = v62;
    [v60 enumerateKeysAndObjectsUsingBlock:v97];
  }

  v63 = [v86 hrefToErrorItems];
  v64 = [v63 count] == 0;

  if (v64)
  {
    v67 = 0;
  }

  else
  {
    v65 = +[NSMutableSet set];
    v66 = [v86 hrefToErrorItems];
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_101F0;
    v94[3] = &unk_3CBB8;
    v94[4] = self;
    v67 = v65;
    v95 = v67;
    v96 = 0;
    [v66 enumerateKeysAndObjectsUsingBlock:v94];
  }

  if ([v61 count])
  {
    v68 = 0;
  }

  else
  {
    v68 = [v67 count] == 0;
  }

  if (v84 && (([v84 DA_isFailedDependencyError] | v68) & 1) != 0)
  {
    v69 = [v86 folderURL];
    v70 = [v69 absoluteString];
    [v55 failedToFinishInitialSync:v70 error:v84];
  }

  else
  {
    v69 = [v86 folderURL];
    v70 = [v69 absoluteString];
    v71 = [v86 context];
    [v55 successfullyFinishedInitalUploadForFolderWithID:v70 container:v83 guardianRestrictedUUIDs:v62 guardianRestrictedHREFs:0 blacklistedUUIDs:v61 blacklistedHREFs:v67 context:v71];
  }

  [(CardDAVDaemonAccount *)self removeConsumerForTask:v86];
  v72 = +[DABabysitter sharedBabysitter];
  [v72 unregisterAccount:self forOperationWithName:@"CardDAVInitialUpload"];
}

- (BOOL)_shouldBlacklistForErrorItem:(id)a3
{
  v3 = a3;
  v4 = [v3 maxResourceSize];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 maxImageSize];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 invalidImageType];
      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v8 = [v3 imageError];
        if (v8)
        {
          v5 = 1;
        }

        else
        {
          v9 = [v3 noUIDConflict];
          if (v9)
          {
            v5 = 1;
          }

          else
          {
            v10 = [v3 validAddressData];
            v5 = v10 != 0;
          }
        }
      }
    }
  }

  return v5;
}

- (void)taskGroup:(id)a3 didFinishWithError:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CardDAVDaemonAccount *)self _updateMeTaskGroup:v7 didFinishWithError:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CardDAVDaemonAccount *)self _bulkUploadTaskGroup:v7 didFinishWithError:v6];
    }
  }
}

- (id)copyCDVActionFromDAAction:(id)a3
{
  v3 = a3;
  v4 = [v3 itemChangeType];
  if (v4 > 1)
  {
    if (v4 == &dword_0 + 2)
    {
      v13 = [CoreDAVAction alloc];
      v6 = [v3 serverId];
      v7 = v13;
      v8 = 2;
      goto LABEL_13;
    }

    if (v4 == &dword_8 + 2)
    {
      v6 = [[DAEditPropertyActionAdapter alloc] initWithDAEditPropertyAction:v3];
      v7 = [CoreDAVAction alloc];
      v8 = 4;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v4)
    {
      v12 = [CoreDAVAction alloc];
      v6 = [v3 changedItem];
      v7 = v12;
      v8 = 0;
      goto LABEL_13;
    }

    if (v4 == &dword_0 + 1)
    {
      v5 = [CoreDAVAction alloc];
      v6 = [v3 changedItem];
      v7 = v5;
      v8 = 1;
LABEL_13:
      v11 = [v7 initWithAction:v8 context:v6];

      goto LABEL_14;
    }
  }

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v9, v10))
  {
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&dword_0, v9, v10, "Unacceptable DAAction %@.  Not handing it to CoreDAV", &v16, 0xCu);
  }

  v11 = 0;
LABEL_14:
  if ([v3 ignoresGuardianRestrictions])
  {
    [v11 setIgnoresGuardianRestrictions:1];
  }

  if ([v3 changeId] != -1)
  {
    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 changeId]);
    [v11 setChangeContext:v14];
  }

  return v11;
}

- (id)cdvActionsFromDAActions:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CardDAVDaemonAccount *)self copyCDVActionFromDAAction:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)copyDAActionFromCDVAction:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  switch(v4)
  {
    case 2u:
      v13 = [DAAction alloc];
      v6 = [v3 context];
      v12 = [v13 initWithItemChangeType:2 changedItem:0 serverId:v6];
      goto LABEL_8;
    case 1u:
      v11 = [DAAction alloc];
      v6 = [v3 context];
      v7 = [v3 context];
      v8 = [v7 serverID];
      v9 = v11;
      v10 = 1;
      goto LABEL_6;
    case 0u:
      v5 = [DAAction alloc];
      v6 = [v3 context];
      v7 = [v3 context];
      v8 = [v7 serverID];
      v9 = v5;
      v10 = 0;
LABEL_6:
      v12 = [v9 initWithItemChangeType:v10 changedItem:v6 serverId:v8];

LABEL_8:
      goto LABEL_12;
  }

  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v14, v15))
  {
    v19 = 138412290;
    v20 = v3;
    _os_log_impl(&dword_0, v14, v15, "Unacceptable CoreDAVAction %@.  Not handing it to DA", &v19, 0xCu);
  }

  v12 = 0;
LABEL_12:
  v16 = [v3 changeContext];

  if (v16)
  {
    v17 = [v3 changeContext];
    [v12 setChangeId:{objc_msgSend(v17, "intValue")}];
  }

  return v12;
}

- (id)daActionsFromCDVActions:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CardDAVDaemonAccount *)self copyDAActionFromCDVAction:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_copyABAccount:(BOOL)a3
{
  v3 = a3;
  v5 = [(CardDAVDaemonAccount *)self accountProvider];
  v6 = [(CardDAVDaemonAccount *)self accountID];
  v7 = [v5 fetchedAccountWithExternalIdentifier:v6];

  if (!v7 && v3)
  {
    v8 = [(CardDAVDaemonAccount *)self accountProvider];
    v9 = [(CardDAVDaemonAccount *)self accountID];
    v7 = [v8 accountByCreatingAccountWithExternalIdentifier:v9];

    v10 = [(CardDAVDaemonAccount *)self databaseHelper];
    if (+[DABehaviorOptions useContactsFramework])
    {
      v11 = objc_alloc_init(CNSaveRequest);
      [v7 updateSaveRequest:v11];
      [v10 addSaveRequest:v11];
      [v10 executeAllSaveRequests];
    }

    else
    {
      [v10 abSaveDB];
    }
  }

  return v7;
}

- (int)_typeOfDAVContainer:(id)a3
{
  if ([a3 isSearchAddressBook])
  {
    return 16777220;
  }

  else
  {
    return 4;
  }
}

- (id)newDAContainerForContainer:(id)a3
{
  v4 = a3;
  if (([v4 isSearchAddressBook] & 1) != 0 || objc_msgSend(v4, "isAddressBook") && (objc_msgSend(v4, "isSharedAddressBook") & 1) == 0)
  {
    v5 = [v4 containerTitle];
    if (!v5)
    {
      v6 = [v4 url];
      v7 = [v6 lastPathComponent];
      v5 = [v7 prettyStringForDisplayName];
    }

    v8 = [v4 url];
    v9 = [(CardDAVDaemonAccount *)self homeURL];
    v10 = [v8 da_leastInfoStringRepresentationRelativeToParentURL:v9];

    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 138412290;
      v34 = self;
      _os_log_impl(&dword_0, v11, v12, "Creating AB store for account %@", buf, 0xCu);
    }

    v32 = [(CardDAVDaemonAccount *)self _copyABAccount:1];
    v30 = [(CardDAVDaemonAccount *)self _typeOfDAVContainer:v4];
    v13 = @"CardDAV";
    if (v5)
    {
      v13 = v5;
    }

    v14 = v13;
    v31 = [objc_opt_class() addressBookConstraintsPlistPath];
    v15 = [v4 privileges];
    if ([v15 count])
    {
      v16 = [v4 hasWriteContentPrivileges] ^ 1;
    }

    else
    {
      v16 = 0;
    }

    v18 = [v4 privileges];
    if ([v18 count])
    {
      v19 = [v4 hasWritePropertiesPrivileges] ^ 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_opt_new();
    [CardDAVPropertiesHelper updateSyncDict:v20 withDAVContainer:v4];
    v21 = [NSPropertyListSerialization dataFromPropertyList:v20 format:200 errorDescription:0];
    v22 = [(CardDAVDaemonAccount *)self containerProvider];
    LOBYTE(v29) = v19;
    v23 = v10;
    v17 = [v22 createNewContainerWithType:v30 name:v14 externalIdentifier:v10 constraintsPath:v31 syncData:v21 contentReadonly:v16 propertiesReadonly:v29 forAccount:v32];

    v24 = [(CardDAVDaemonAccount *)self databaseHelper];
    [v24 abProcessAddedRecords];

    if ([(CardDAVDaemonAccount *)self isDelegateAccount])
    {
      v25 = [(CardDAVDaemonAccount *)self containerProvider];
      [v25 mergeAllRecordsIntoContainer:v17 shouldInsertChangeHistoryRecords:0];
    }

    if ([v17 type] == &dword_4)
    {
      v26 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
      v27 = [(CardDAVDaemonAccount *)self changeTrackingID];
      [v26 registerClientWithIdentifier:v27 forContainer:v17];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_handleOrphanarium:(id)a3 toBeCreatedContainersByURL:(id)a4
{
  v5 = a3;
  v6 = [(CardDAVDaemonAccount *)self databaseHelper];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v9 = v8;
  if (v8)
  {
    v10 = *v18;
    v11 = v8;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 markForDeletion];
        v14 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
        v15 = [v6 abChangeTrackingID];
        [v14 unregisterClientWithIdentifier:v15 forContainer:v13];
      }

      v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v9 != 0;
}

- (void)containerInfoTask:(id)a3 completedWithContainers:(id)a4 error:(id)a5
{
  v8 = a3;
  v125 = a4;
  v9 = a5;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412802;
    v162 = v8;
    v163 = 2048;
    v164 = [v125 count];
    v165 = 2114;
    v166 = v9;
    _os_log_impl(&dword_0, v10, v11, "containerInfoTask for %@ completed with %lul containers, error: %{public}@ ", buf, 0x20u);
  }

  v12 = objc_opt_new();
  [(CardDAVDaemonAccount *)self setMPushKeysToFolderURLs:v12];

  [(CardDAVDaemonAccount *)self setPushTransport:0];
  meCardURL = self->_meCardURL;
  self->_meCardURL = 0;

  meFolderURL = self->_meFolderURL;
  self->_meFolderURL = 0;

  homeURL = self->_homeURL;
  self->_homeURL = 0;

  if (v9)
  {
    goto LABEL_153;
  }

  v124 = v8;
  v16 = [(NSURL *)v8 containerURLs];
  v17 = +[NSMutableDictionary dictionary];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = v125;
  v139 = v17;
  v144 = [obj countByEnumeratingWithState:&v154 objects:v160 count:16];
  if (v144)
  {
    v141 = *v155;
    v18 = _CPLog_to_os_log_type[6];
    v19 = _CPLog_to_os_log_type[3];
    v20 = v19;
    do
    {
      for (i = 0; i != v144; i = i + 1)
      {
        if (*v155 != v141)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v154 + 1) + 8 * i);
        v23 = DALoggingwithCategory();
        if (os_log_type_enabled(v23, v18))
        {
          *buf = 138412290;
          v162 = v22;
          _os_log_impl(&dword_0, v23, v18, "container info %@", buf, 0xCu);
        }

        v24 = [(NSURL *)v22 url];
        if ([v16 containsObject:v24])
        {
          v25 = [(NSURL *)v22 pushTransports];

          if (v25)
          {
            v26 = [(CardDAVDaemonAccount *)self pushTransport];

            if (v26)
            {
              v27 = DALoggingwithCategory();
              if (os_log_type_enabled(v27, v19))
              {
                v28 = [(NSURL *)v22 pushTransports];
                *buf = 138412290;
                v162 = v28;
                _os_log_impl(&dword_0, v27, v20, "Ignoring push transports from additional home set %@", buf, 0xCu);

                v19 = v20;
              }
            }

            else
            {
              v27 = [(NSURL *)v22 pushTransports];
              [(CardDAVDaemonAccount *)self setPushTransport:v27];
            }
          }

          v29 = [(NSURL *)v22 meCardURL];

          if (v29)
          {
            if (self->_meCardURL)
            {
              v30 = DALoggingwithCategory();
              if (os_log_type_enabled(v30, v19))
              {
                v31 = [(NSURL *)v22 meCardURL];
                *buf = 138412290;
                v162 = v31;
                _os_log_impl(&dword_0, v30, v20, "Ignoring Me card from additional home set %@", buf, 0xCu);
              }
            }

            else
            {
              v32 = [(NSURL *)v22 meCardURL];
              v33 = self->_meCardURL;
              self->_meCardURL = v32;

              v30 = DALoggingwithCategory();
              if (os_log_type_enabled(v30, v18))
              {
                v34 = self->_meCardURL;
                *buf = 138412290;
                v162 = v34;
                _os_log_impl(&dword_0, v30, v18, "Me card URL is %@", buf, 0xCu);
              }
            }

            objc_storeStrong(&self->_homeURL, v24);
          }
        }

        if ([(NSURL *)v22 isAddressBook]&& ![(NSURL *)v22 isSharedAddressBook]|| [(NSURL *)v22 isSearchAddressBook])
        {
          v35 = [(NSURL *)v22 url];
          [v17 setObject:v22 forKeyedSubscript:v35];

          if ([(NSURL *)v22 isAddressBook])
          {
            v36 = [(NSURL *)v22 pushKey];
            v37 = [v36 length];

            if (v37)
            {
              v38 = [(NSURL *)v22 url];
              v39 = [(CardDAVDaemonAccount *)self mPushKeysToFolderURLs];
              [(NSURL *)v22 pushKey];
              v41 = v40 = v16;
              [v39 setObject:v38 forKeyedSubscript:v41];

              v16 = v40;
              v17 = v139;
            }
          }
        }

        if (!self->_meFolderURL && [(NSURL *)v22 isAddressBook])
        {
          v42 = [(NSURL *)v22 url];
          v43 = self->_meFolderURL;
          self->_meFolderURL = v42;
        }

        self->_isImageUploadRestricted = [(NSURL *)v22 isImageUploadRestricted];
        v44 = [(NSURL *)v22 quotaAvailable];
        self->_vcfDataOverQuota = [v44 integerValue] < 0;

        v19 = v20;
      }

      v144 = [obj countByEnumeratingWithState:&v154 objects:v160 count:16];
    }

    while (v144);
  }

  if (!self->_homeURL && [v16 count])
  {
    v45 = [v16 anyObject];
    v46 = self->_homeURL;
    self->_homeURL = v45;
  }

  v47 = [(CardDAVDaemonAccount *)self databaseHelper];
  v8 = v124;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    [(CardDAVDaemonAccount *)self changeTrackingID];
    v49 = v48 = v47;
    [v48 abOpenDBWithClientIdentifier:v49];

    v47 = v48;
  }

  v50 = [(CardDAVDaemonAccount *)self _copyABAccount:1];
  v128 = objc_alloc_init(CNSaveRequest);
  v123 = v50;
  if (!v50)
  {
    v9 = 0;
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      goto LABEL_152;
    }

    v107 = 0;
    goto LABEL_151;
  }

  v126 = v47;
  v51 = [(CardDAVDaemonAccount *)self containerProvider];
  v52 = [v50 externalIdentifier];
  v53 = [v51 allContainersForAccountWithExternalIdentifier:v52];

  v122 = v53;
  if (!v53)
  {
    v127 = 0;
    v107 = 0;
    goto LABEL_146;
  }

  v54 = +[NSMutableArray array];
  if (-[CardDAVDaemonAccount isDelegateAccount](self, "isDelegateAccount") && [v53 count] == &dword_0 + 1)
  {
    v55 = [(CardDAVDaemonAccount *)self containerProvider];
    v56 = [v53 firstObject];
    [v55 mergeAllRecordsIntoContainer:v56 shouldInsertChangeHistoryRecords:1];
  }

  v120 = v16;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v133 = v53;
  v57 = [v133 countByEnumeratingWithState:&v150 objects:v159 count:16];
  if (!v57)
  {
    v127 = 0;
    LOBYTE(v143) = 0;
    goto LABEL_128;
  }

  v58 = v57;
  v127 = 0;
  v143 = 0;
  v59 = *v151;
  v130 = *v151;
  v131 = v54;
  v129 = self;
  do
  {
    v60 = 0;
    v132 = v58;
    do
    {
      if (*v151 != v59)
      {
        objc_enumerationMutation(v133);
      }

      v61 = *(*(&v150 + 1) + 8 * v60);
      v62 = [v61 externalIdentifier];
      v63 = [(CardDAVDaemonAccount *)self homeURL];
      v64 = [v62 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v63];

      if (!v64 || ([v139 objectForKeyedSubscript:v64], v65 = objc_claimAutoreleasedReturnValue(), v65, !v65))
      {
        [v54 addObject:v61];
        goto LABEL_121;
      }

      v145 = [v139 objectForKeyedSubscript:v64];
      v66 = [v61 constraintsPath];
      v67 = [objc_opt_class() addressBookConstraintsPlistPath];
      v68 = v67;
      v69 = v143;
      if (v66 && !v67 || !v66 && v67 || v66 && ([v66 isEqualToString:v67] & 1) == 0)
      {
        [v61 setConstraintsPath:v68];
        v69 = 1;
      }

      v70 = [v61 name];
      v71 = [v145 containerTitle];
      v140 = v64;
      v136 = v68;
      obja = v66;
      v135 = v70;
      if (v71)
      {
        v72 = v71;
        v73 = v70 != 0;
LABEL_62:
        v74 = v69;
        goto LABEL_63;
      }

      v75 = [v145 url];
      v76 = [v75 lastPathComponent];
      v72 = [v76 prettyStringForDisplayName];

      v73 = v70 != 0;
      if (!v70)
      {
        goto LABEL_62;
      }

      v74 = v69;
      if (!v72)
      {
        self = v129;
LABEL_72:
        [v61 setName:v72];
        v74 = 1;
        goto LABEL_73;
      }

LABEL_63:
      self = v129;
      if (!v70 && v72 || v73 && ([v70 isEqualToString:v72] & 1) == 0)
      {
        goto LABEL_72;
      }

LABEL_73:
      v134 = v72;
      v77 = [(CardDAVDaemonAccount *)self _typeOfDAVContainer:v145];
      if ([v61 type] == v77)
      {
        goto LABEL_87;
      }

      v78 = v77;
      v79 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = [v61 type];
        *buf = 134349568;
        v162 = v77;
        v163 = 2050;
        v164 = v80;
        v165 = 2050;
        v166 = v77;
        _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, "Container type from the server (%{public}ld) differs from our records (%{public}ld). Changing local type to (%{public}ld).", buf, 0x20u);
      }

      v81 = [v61 isSearchContainer];
      [v61 setType:v78];
      v82 = [v145 isSearchAddressBook];
      if (v81)
      {
        if ((v82 & 1) == 0)
        {
          v83 = [objc_opt_class() os_log_summary];
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "Registered container with change history because the server reports it as storage, yet we had categorized it as a search node.", buf, 2u);
          }

          v84 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
          v85 = [v126 abChangeTrackingID];
          [v84 registerClientWithIdentifier:v85 forContainer:v61];
LABEL_85:
        }
      }

      else if (v82)
      {
        v86 = [objc_opt_class() os_log_summary];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "Unregistered container from change history because the server reports it to be a search node, yet we had categorized it as storage.", buf, 2u);
        }

        v84 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
        v85 = [v126 abChangeTrackingID];
        [v84 unregisterClientWithIdentifier:v85 forContainer:v61];
        goto LABEL_85;
      }

      v127 = 1;
      v74 = 1;
LABEL_87:
      v87 = [v145 privileges];
      v142 = v62;
      if ([v87 count])
      {
        v88 = [v145 hasWriteContentPrivileges] ^ 1;
      }

      else
      {
        v88 = 0;
      }

      v89 = [v145 privileges];
      if ([v89 count])
      {
        v90 = [v145 hasWritePropertiesPrivileges] ^ 1;
      }

      else
      {
        v90 = 0;
      }

      v91 = [v61 isContentReadonly];
      v92 = [v61 arePropertiesReadonly];
      if (v88 != v91)
      {
        [v61 setContentReadonly:v88];
        v74 = 1;
      }

      if (v90 != v92)
      {
        [v61 setArePropertiesReadonly:v90];
        v74 = 1;
      }

      v93 = [v61 isGuardianRestricted];
      v94 = [v145 isGuardianRestricted];
      v95 = [v61 isGuardianStateDirty];
      if (v93 == v94)
      {
        v96 = v145;
        if (!v95)
        {
          goto LABEL_103;
        }

        [v61 setGuardianStateDirty:0];
      }

      else
      {
        v96 = v145;
        if (v95)
        {
          goto LABEL_103;
        }

        [v61 setGuardianRestricted:{objc_msgSend(v145, "isGuardianRestricted")}];
      }

      v74 = 1;
LABEL_103:
      v97 = [v61 syncData];
      v143 = v74;
      if (v97)
      {
        [NSPropertyListSerialization propertyListFromData:v97 mutabilityOption:1 format:0 errorDescription:0];
      }

      else
      {
        +[NSMutableDictionary dictionary];
      }
      v98 = ;
      v99 = [v98 objectForKeyedSubscript:@"BulkRequests"];
      v100 = [v96 bulkRequests];
      v101 = v100;
      if (v99)
      {
        v102 = [v99 isEqualToDictionary:v100];

        if ((v102 & 1) == 0)
        {
          goto LABEL_111;
        }

        LODWORD(v101) = 0;
      }

      else if (v100)
      {

LABEL_111:
        v103 = v145;
        v104 = [v145 bulkRequests];

        if (v104)
        {
          v105 = [v145 bulkRequests];
          [v98 setObject:v105 forKeyedSubscript:@"BulkRequests"];
        }

        else
        {
          [v98 removeObjectForKey:@"BulkRequests"];
        }

        LODWORD(v101) = 1;
        v59 = v130;
        goto LABEL_116;
      }

      v59 = v130;
      v103 = v145;
LABEL_116:
      v58 = v132;
      if (v101 | [CardDAVPropertiesHelper updateSyncDict:v98 withDAVContainer:v103])
      {
        v106 = [NSPropertyListSerialization dataFromPropertyList:v98 format:200 errorDescription:0];
        [v61 setSyncData:v106];

        v143 = 1;
      }

      if (+[DABehaviorOptions useContactsFramework])
      {
        [v61 updateSaveRequest:v128];
      }

      v64 = v140;
      [v139 removeObjectForKey:v140];

      v54 = v131;
      v62 = v142;
LABEL_121:

      v60 = v60 + 1;
    }

    while (v58 != v60);
    v58 = [v133 countByEnumeratingWithState:&v150 objects:v159 count:16];
  }

  while (v58);
LABEL_128:

  if ([v54 count])
  {
    v107 = v143 | [(CardDAVDaemonAccount *)self _handleOrphanarium:v54 toBeCreatedContainersByURL:v139];
  }

  else
  {
    v107 = v143;
  }

  v108 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v139 count]);
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v109 = [v139 allValues];
  v110 = [v109 countByEnumeratingWithState:&v146 objects:v158 count:16];
  if (v110)
  {
    v111 = v110;
    v112 = *v147;
    do
    {
      for (j = 0; j != v111; j = j + 1)
      {
        if (*v147 != v112)
        {
          objc_enumerationMutation(v109);
        }

        v114 = [(CardDAVDaemonAccount *)self newDAContainerForContainer:*(*(&v146 + 1) + 8 * j)];
        if (v114)
        {
          [v108 addObject:v114];
          v107 = 1;
        }
      }

      v111 = [v109 countByEnumeratingWithState:&v146 objects:v158 count:16];
    }

    while (v111);
  }

  if ([v108 count])
  {
    v115 = [(CardDAVDaemonAccount *)self _bestDefaultContainerFromCandidateContainers:v108];
    v16 = v121;
    if (v115)
    {
      v116 = [(CardDAVDaemonAccount *)self containerProvider];
      v107 = 1;
      [v116 setDefaultContainer:v115 withLocalDBHelper:v126 onlyIfNotSet:1];
    }
  }

  else
  {
    v16 = v121;
  }

  v8 = v124;
LABEL_146:
  v9 = 0;

  v47 = v126;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    if (v127)
    {
      [v126 abValidateDefaultSource];
    }

LABEL_151:
    [v47 abCloseDBAndSave:v107 & 1];
    goto LABEL_152;
  }

  if (v107)
  {
    [v126 addSaveRequest:v128];
    [v126 executeAllSaveRequests];
  }

LABEL_152:

LABEL_153:
  v117 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v117 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

  v118 = [(CardDAVDaemonAccount *)self consumerForTask:v8];
  v119 = v118;
  if (v9)
  {
    [v118 failedToRetrieveAddressBookURLsWithError:v9];
  }

  else
  {
    [(CardDAVDaemonAccount *)self _fillOutAddressBooksFromLocalDB];
    [v119 successfullyRetrievedAddressBookURLs];
  }

  [(CardDAVDaemonAccount *)self removeConsumerForTask:v8];
}

- (id)_bestDefaultContainerFromCandidateContainers:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isContentReadonly] & 1) == 0 && (objc_msgSend(v7, "isSearchContainer") & 1) == 0)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)getAccountPropertiesTask:(id)a3 completedWithError:(id)a4
{
  v17 = a4;
  v6 = a3;
  v7 = [(CardDAVDaemonAccount *)self consumerForTask:v6];
  if (v17)
  {
    v8 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v8 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

    [v7 failedToRetrieveAddressBookURLsWithError:v17];
  }

  else
  {
    v9 = objc_opt_new();
    v10 = [v6 addressBookHomes];
    [v9 unionSet:v10];

    v11 = [v6 directoryGatewayURLs];
    [v9 unionSet:v11];

    v12 = [CardDAVFolderInfoTaskGroup alloc];
    v13 = [v6 directoryGatewayURLs];
    v14 = [(CardDAVDaemonAccount *)self taskManager];
    v15 = [v12 initWithAccountInfoProvider:self containerURLs:v9 directoryGatewayURLs:v13 taskManager:v14];

    [v15 setDelegate:self];
    [(CardDAVDaemonAccount *)self setConsumer:v7 forTask:v15];
    [v15 startTaskGroup];
  }

  [(CardDAVDaemonAccount *)self removeConsumerForTask:v6];

  v16 = +[DABabysitter sharedBabysitter];
  [v16 unregisterAccount:self forOperationWithName:@"CardDAVSyncABURLS"];
}

- (void)_reallySyncAddressBookURLsWithConsumer:(id)a3
{
  v4 = a3;
  v5 = [CardDAVGetAccountPropertiesTaskGroup alloc];
  v6 = [(CardDAVDaemonAccount *)self taskManager];
  v7 = [v5 initWithAccountInfoProvider:self taskManager:v6];

  [v7 setDelegate:self];
  [(CardDAVDaemonAccount *)self setConsumer:v4 forTask:v7];

  [v7 startTaskGroup];
}

- (void)syncAddressBookURLsWithConsumer:(id)a3
{
  v4 = a3;
  v5 = +[DABabysitter sharedBabysitter];
  v6 = [v5 registerAccount:self forOperationWithName:@"CardDAVSyncABURLS"];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [v7 transactionId];
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_0, v8, v9, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    v11 = +[DALocalDBGateKeeper sharedGateKeeper];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_12C70;
    v15[3] = &unk_3CBE0;
    v15[4] = self;
    v16 = v4;
    v17 = v7;
    v12 = v7;
    [v11 registerWaiter:self forDataclassLocks:2 completionHandler:v15];
  }

  else
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138412290;
      v19 = self;
      _os_log_impl(&dword_0, v13, v14, "The babysitter put us in timeout. Failing to sync AB URLs. %@", buf, 0xCu);
    }

    v12 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [v4 failedToRetrieveAddressBookURLsWithError:v12];
  }
}

- (void)_fillOutAddressBooksFromLocalDB
{
  v3 = [(CardDAVDaemonAccount *)self mAddressBooksByFolderURL];

  if (!v3)
  {
    v4 = +[NSMutableDictionary dictionary];
    [(CardDAVDaemonAccount *)self setMAddressBooksByFolderURL:v4];

    v5 = +[NSMutableSet set];
    [(CardDAVDaemonAccount *)self setMAddressBooks:v5];

    v6 = +[NSMutableSet set];
    [(CardDAVDaemonAccount *)self setMSearchAddressBooks:v6];
  }

  v7 = [(CardDAVDaemonAccount *)self mAddressBooks];
  [v7 removeAllObjects];

  v8 = [(CardDAVDaemonAccount *)self mSearchAddressBooks];
  [v8 removeAllObjects];

  v9 = [(CardDAVDaemonAccount *)self mAddressBooksByFolderURL];
  [v9 removeAllObjects];

  v10 = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v11 = [(CardDAVDaemonAccount *)self changeTrackingID];
    [v10 abOpenDBWithClientIdentifier:v11];
  }

  v12 = [(CardDAVDaemonAccount *)self accountProvider];
  v13 = [(CardDAVDaemonAccount *)self accountID];
  v14 = [v12 fetchedAccountWithExternalIdentifier:v13];

  v41 = v14;
  if (v14)
  {
    v40 = v10;
    v15 = [(CardDAVDaemonAccount *)self containerProvider];
    v16 = [v14 externalIdentifier];
    v17 = [v15 allContainersForAccountWithExternalIdentifier:v16];

    v18 = DALoggingwithCategory();
    v19 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v18, v19))
    {
      v20 = [v17 count];
      v21 = [v14 externalIdentifier];
      *buf = 134218242;
      v50 = v20;
      v51 = 2114;
      v52 = v21;
      _os_log_impl(&dword_0, v18, v19, "DEBUG: Filling in %lu containers for externalIdentifier: %{public}@", buf, 0x16u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v17;
    v44 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v44)
    {
      v22 = *v46;
      v23 = _CPLog_to_os_log_type[3];
      v42 = *v46;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          v25 = v23;
          if (*v46 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v45 + 1) + 8 * i);
          v27 = [v26 name];
          v28 = [v26 externalIdentifier];
          v29 = [(CardDAVDaemonAccount *)self homeURL];
          v30 = [v28 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v29];

          if (v30)
          {
            v31 = objc_opt_new();
            [v31 setFolderName:v27];
            v32 = [v30 absoluteString];
            [v31 setFolderID:v32];

            [v31 setDataclass:2];
            if (([v26 type] & 0x1000000) != 0)
            {
              v35 = [(CardDAVDaemonAccount *)self mSearchAddressBooks];
              [v35 addObject:v31];
            }

            else
            {
              v33 = [(CardDAVDaemonAccount *)self mAddressBooksByFolderURL];
              [v33 setObject:v31 forKeyedSubscript:v30];

              v34 = [(CardDAVDaemonAccount *)self mAddressBooks];
              [v34 addObject:v31];

              v35 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
              v36 = [(CardDAVDaemonAccount *)self changeTrackingID];
              [v35 registerClientWithIdentifier:v36 forContainer:v26];

              v22 = v42;
            }

            v23 = v25;
          }

          else
          {
            v31 = DALoggingwithCategory();
            v23 = v25;
            if (os_log_type_enabled(v31, v25))
            {
              v37 = [v41 externalIdentifier];
              v38 = [v26 externalIdentifier];
              v39 = [(CardDAVDaemonAccount *)self homeURL];
              *buf = 138543874;
              v50 = v37;
              v51 = 2114;
              v52 = v38;
              v53 = 2114;
              v54 = v39;
              _os_log_impl(&dword_0, v31, v25, "Got unexpected nil externalURL, skipping constructing a DAFolder for account with identifier: %{public}@, container with identifier: %{public}@, homeURL: %{public}@", buf, 0x20u);

              v23 = v25;
              v22 = v42;
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v44);
    }

    v10 = v40;
  }

  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    [v10 abCloseDBAndSave:0];
  }
}

- (void)_reallyPerformSearchQuery:(id)a3
{
  v4 = a3;
  [(CardDAVDaemonAccount *)self setShouldUseOpportunisticSockets:0];
  v5 = [(CardDAVDaemonAccount *)self mSearchAddressBooks];
  v13 = [v5 anyObject];

  v6 = [v13 folderID];
  v7 = [NSURL URLWithString:v6];

  v8 = [CardDAVFolderQueryTask alloc];
  v9 = [v4 searchString];
  v10 = [v8 initWithSearchString:v9 searchLimit:objc_msgSend(v4 atURL:"maxResults") appSpecificDataItemClass:{v7, +[CardDAVVCardItem currentImplementationClass](CardDAVVCardItem, "currentImplementationClass")}];

  [v10 setAccountInfoProvider:self];
  [v10 setDelegate:self];
  [v10 setContext:v4];
  v11 = [v4 consumer];

  [(CardDAVDaemonAccount *)self setConsumer:v11 forTask:v10];
  [(NSMutableSet *)self->_searchTaskSet addObject:v10];
  v12 = [(CardDAVDaemonAccount *)self taskManager];
  [v12 submitIndependentTask:v10];
}

- (void)containerQueryTask:(id)a3 completedWithFoundItems:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 context];
  v12 = v11;
  if (v9)
  {
    v33 = v11;
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [0 count]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = v9;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v34 + 1) + 8 * i) convertToDAContactSearchResultElement];
          if (v20)
          {
            [v13 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v17);
    }

    v12 = v33;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v21 = [(CardDAVDaemonAccount *)self consumerForTask:v8];
  if (!v10)
  {
    v26 = DALoggingwithCategory();
    v27 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 138412802;
      v39 = v21;
      v40 = 2112;
      v41 = v12;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_0, v26, v27, "Sending CardDAV search results back to consumer %@.\nQuery: %@\nResults: %@", buf, 0x20u);
    }

    [v21 searchQuery:v12 returnedResults:v13];
    v28 = v21;
    v29 = v12;
    v30 = 0;
    goto LABEL_26;
  }

  v22 = [v10 domain];
  if (![v22 isEqual:CoreDAVErrorDomain])
  {

    goto LABEL_23;
  }

  v23 = [v10 code];

  if (v23 != &dword_0 + 1)
  {
LABEL_23:
    v31 = DALoggingwithCategory();
    v32 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 138412290;
      v39 = v10;
      _os_log_impl(&dword_0, v31, v32, "The CardDAV search returned an error: (%@)", buf, 0xCu);
    }

    v28 = v21;
    v29 = v12;
    v30 = v10;
LABEL_26:
    [v28 searchQuery:v29 finishedWithError:v30];
    goto LABEL_27;
  }

  v24 = DALoggingwithCategory();
  v25 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v24, v25))
  {
    *buf = 134217984;
    v39 = v8;
    _os_log_impl(&dword_0, v24, v25, "CardDAV search task %p was cancelled", buf, 0xCu);
  }

LABEL_27:
  [(NSMutableSet *)self->_searchTaskSet removeObject:v8];
  [(CardDAVDaemonAccount *)self removeConsumerForTask:v8];
}

- (void)_reallyCancelSearchQuery:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_0, v5, v6, "cancelling search query %@", buf, 0xCu);
  }

  v7 = [(NSMutableSet *)self->_searchTaskSet copy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = *v19;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v18 + 1) + 8 * v13);
      v15 = [v14 context];
      v16 = [v15 isEqual:v4];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        v10 = v8;
        goto LABEL_14;
      }
    }

    v10 = v14;

    if (!v10)
    {
      goto LABEL_15;
    }

    v17 = [(CardDAVDaemonAccount *)self taskManager];
    [v17 cancelTask:v10];
  }

LABEL_14:

LABEL_15:
}

- (void)_reallyCancelAllSearchQueries
{
  v3 = [(NSMutableSet *)self->_searchTaskSet copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(CardDAVDaemonAccount *)self taskManager];
        [v10 cancelTask:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5
{
  v7.receiver = self;
  v7.super_class = CardDAVDaemonAccount;
  [(CardDAVDaemonAccount *)&v7 discoveryTask:a3 gotAccountInfo:a4 error:a5];
  v6 = +[DABabysitter sharedBabysitter];
  [v6 unregisterAccount:self forOperationWithName:@"CardDAVValidityCheck"];
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  v4 = a3;
  v5 = +[DABabysitter sharedBabysitter];
  v6 = [v5 registerAccount:self forOperationWithName:@"CardDAVValidityCheck"];

  if (v6)
  {
    v8.receiver = self;
    v8.super_class = CardDAVDaemonAccount;
    [(CardDAVDaemonAccount *)&v8 discoverInitialPropertiesWithConsumer:v4];
  }

  else
  {
    v7 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [v4 account:self isValid:0 validationError:v7];
  }
}

- (id)_copyCardFromMeIdentifierAndContainer:(id *)a3
{
  if (*&self->_meCardURL == 0)
  {
    v26 = 0;
    *a3 = 0;
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      meFolderURL = self->_meFolderURL;
      meCardURL = self->_meCardURL;
      *buf = 138412546;
      v29 = meFolderURL;
      v30 = 2112;
      v31 = meCardURL;
      _os_log_impl(&dword_0, v5, v6, "Looking for Me card as seen on server. Folder URL: %@ - Me Card URL: %@", buf, 0x16u);
    }

    v9 = [(CardDAVDaemonAccount *)self containerProvider];
    v10 = self->_meFolderURL;
    v11 = [(CardDAVDaemonAccount *)self homeURL];
    v12 = [(NSURL *)v10 da_leastInfoStringRepresentationRelativeToParentURL:v11];
    v13 = [(CardDAVDaemonAccount *)self accountID];
    v14 = [v9 containerWithExternalIdentifier:v12 forAccountWithExternalIdentifier:v13];

    v15 = self->_meCardURL;
    if (v15)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v26 = 0;
    }

    else
    {
      v17 = [(CardDAVDaemonAccount *)self homeURL];
      v18 = [(NSURL *)v15 da_leastInfoStringRepresentationRelativeToParentURL:v17];

      v19 = [(CardDAVDaemonAccount *)self contactsProvider];
      v27 = v18;
      v20 = [NSArray arrayWithObjects:&v27 count:1];
      v21 = [v19 contactsWithExternalHREFs:v20 container:v14];

      if ([v21 count])
      {
        v26 = [v21 firstObject];
      }

      else
      {
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v6))
        {
          v23 = self->_meCardURL;
          *buf = 138412290;
          v29 = v23;
          _os_log_impl(&dword_0, v22, v6, "Server Me card %@ as seen on server not found locally", buf, 0xCu);
        }

        v26 = 0;
      }
    }

    v24 = v14;
    *a3 = v14;
  }

  return v26;
}

- (BOOL)_serverMeCard:(id)a3 hasChangedInContainer:(id)a4
{
  v5 = a4;
  v6 = v5;
  LOBYTE(v7) = 0;
  if (a3 && v5)
  {
    v8 = [a3 externalIdentifier];
    if (v8)
    {
      v9 = [v6 syncData];
      if (v9)
      {
        v10 = [NSPropertyListSerialization propertyListFromData:v9 mutabilityOption:1 format:0 errorDescription:0];
      }

      else
      {
        v10 = 0;
      }

      v11 = [v10 objectForKeyedSubscript:cdXMLCardDAVMeCard];
      v12 = DALoggingwithCategory();
      v13 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v12, v13))
      {
        v15 = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_0, v12, v13, "Server me card: %@ - stored one: %@", &v15, 0x16u);
      }

      if (v11)
      {
        v7 = [v11 isEqual:v8] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)_updateStoredMeCardWithURL:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_meCardURL, a3);
  v6 = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v7 = [(CardDAVDaemonAccount *)self changeTrackingID];
    [v6 abOpenDBWithClientIdentifier:v7];
  }

  v8 = [v5 URLByDeletingLastPathComponent];
  v9 = [(CardDAVDaemonAccount *)self containerProvider];
  v10 = [(CardDAVDaemonAccount *)self homeURL];
  v11 = [v8 da_leastInfoStringRepresentationRelativeToParentURL:v10];
  v12 = [(CardDAVDaemonAccount *)self accountID];
  v13 = [v9 containerWithExternalIdentifier:v11 forAccountWithExternalIdentifier:v12];

  v14 = objc_alloc_init(CNSaveRequest);
  v15 = DALoggingwithCategory();
  v16 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v15, v16))
  {
    v22 = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_0, v15, v16, "Updating known server me card to %@ in %@", &v22, 0x16u);
  }

  if (!v13)
  {
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    [v6 abCloseDBAndSave:v13 != 0];
    goto LABEL_15;
  }

  v17 = [v13 syncData];
  if (!v17 || ([NSPropertyListSerialization propertyListFromData:v17 mutabilityOption:1 format:0 errorDescription:0], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  v19 = [(CardDAVDaemonAccount *)self homeURL];
  v20 = [v5 da_leastInfoStringRepresentationRelativeToParentURL:v19];
  [v18 setObject:v20 forKeyedSubscript:cdXMLCardDAVMeCard];

  v21 = [NSPropertyListSerialization dataFromPropertyList:v18 format:200 errorDescription:0];
  [v13 setSyncData:v21];
  if (+[DABehaviorOptions useContactsFramework])
  {
    [v13 updateSaveRequest:v14];
    [v6 addSaveRequest:v14];
  }

  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    goto LABEL_14;
  }

  [v6 executeAllSaveRequests];
LABEL_15:
}

- (void)_updateMeTaskGroup:(id)a3 didFinishWithError:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(CardDAVDaemonAccount *)self consumerForTask:v11];
  v8 = v7;
  if (v6)
  {
    [v7 failedToUpdateServerMeCardWithError:v6];
  }

  else
  {
    v9 = [v11 cardURL];
    [(CardDAVDaemonAccount *)self _updateStoredMeCardWithURL:v9];

    v10 = [v11 cardURL];
    [v8 successfullyUpdatedServerMeCardWithURL:v10];
  }
}

- (BOOL)_reallyUpdateMeCardWithWithConsumer:(id)a3 allowDistantUpdate:(BOOL)a4
{
  v5 = a3;
  v6 = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    v7 = [(CardDAVDaemonAccount *)self changeTrackingID];
    [v6 abOpenDBWithClientIdentifier:v7];
  }

  v47 = 0;
  v8 = [(CardDAVDaemonAccount *)self _copyCardFromMeIdentifierAndContainer:&v47];
  v9 = v47;
  v10 = objc_alloc_init(CNSaveRequest);
  if (v9)
  {
    v11 = [(CardDAVDaemonAccount *)self contactsProvider];
    v12 = [v11 meContactInContainer:v9];
  }

  else
  {
    v12 = 0;
  }

  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412546;
    v49 = v12;
    v50 = 2112;
    v51 = v8;
    _os_log_impl(&dword_0, v13, v14, "Local me card: %@ - Distant me card: %@", buf, 0x16u);
  }

  if (!v12)
  {
    if (v8)
    {
      v23 = DALoggingwithCategory();
      if (os_log_type_enabled(v23, v14))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, v14, "No local me card, will use server provided one", buf, 2u);
      }

      goto LABEL_21;
    }

LABEL_32:
    v22 = 0;
    v21 = 0;
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v15 = [v12 asPerson];
  if (v15 == [v8 asPerson])
  {
    goto LABEL_32;
  }

  if ([(CardDAVDaemonAccount *)self _serverMeCard:v8 hasChangedInContainer:v9])
  {
LABEL_21:
    v24 = DALoggingwithCategory();
    if (os_log_type_enabled(v24, v14))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v24, v14, "Updating me card from server", buf, 2u);
    }

    v45 = v6;

    if ([v8 legacyIdentifier] == -1)
    {
      v19 = DALoggingwithCategory();
      v35 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v19, v35))
      {
        v36 = [v8 legacyIdentifier];
        *buf = 138412546;
        v49 = v8;
        v50 = 1024;
        LODWORD(v51) = v36;
        _os_log_impl(&dword_0, v19, v35, "Can't set me card from distant me card %@, identifier %d", buf, 0x12u);
      }

      v22 = 0;
      v21 = 1;
      goto LABEL_38;
    }

    v46 = v10;
    v43 = v5;
    v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 legacyIdentifier]);
    v26 = [v25 stringValue];
    [v9 setMeContactIdentifier:v26];

    v27 = [v9 syncData];
    if (!v27 || ([NSPropertyListSerialization propertyListFromData:v27 mutabilityOption:1 format:0 errorDescription:0], (v19 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v19 = [NSMutableDictionary dictionaryWithCapacity:1];
    }

    v28 = [v8 externalIdentifier];
    v29 = [(CardDAVDaemonAccount *)self homeURL];
    v30 = [v28 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v29];

    v31 = [(CardDAVDaemonAccount *)self homeURL];
    v32 = [v30 da_leastInfoStringRepresentationRelativeToParentURL:v31];
    [v19 setObject:v32 forKeyedSubscript:cdXMLCardDAVMeCard];

    v33 = [NSPropertyListSerialization dataFromPropertyList:v19 format:200 errorDescription:0];
    [v9 setSyncData:v33];
    if (+[DABehaviorOptions useContactsFramework])
    {
      [v9 updateSaveRequest:v46];
      v34 = [(CardDAVDaemonAccount *)self databaseHelper];
      [v34 addSaveRequest:v46];
    }

    v22 = 0;
    v21 = 1;
    goto LABEL_30;
  }

LABEL_12:
  v46 = v10;
  if (!self->_homeURL)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_39;
  }

  v45 = v6;
  v43 = v5;
  v16 = [v12 externalIdentifier];
  v17 = [v8 externalIdentifier];
  v18 = [v16 isEqualToString:v17];

  v19 = DALoggingwithCategory();
  v20 = os_log_type_enabled(v19, v14);
  if (v18)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, v14, "Not updating distant me card, externalIdentifier would not change", buf, 2u);
    }

    v21 = 0;
    v22 = 0;
LABEL_30:
    v5 = v43;
    goto LABEL_31;
  }

  if (a4)
  {
    v5 = v43;
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, v14, "Updating me card on server", buf, 2u);
    }

    v19 = [v12 externalIdentifier];
    if (v19)
    {
      v38 = [(CardDAVDaemonAccount *)self homeURL];
      v39 = [v19 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v38];

      v22 = v39 != 0;
      if (v39)
      {
        v40 = [CardDAVUpdateMeCardTaskGroup alloc];
        v41 = [(CardDAVDaemonAccount *)self taskManager];
        v42 = [v40 initWithAccountInfoProvider:self taskManager:v41 homeURL:self->_homeURL cardURL:v39];

        v5 = v43;
        [v42 setDelegate:self];
        [(CardDAVDaemonAccount *)self setConsumer:v43 forTask:v42];
        [v42 startTaskGroup];
      }

      v21 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v5 = v43;
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, v14, "Not updating distant me card, allowDistantUpdate is NO", buf, 2u);
    }
  }

  v21 = 0;
  v22 = 0;
LABEL_31:
  v10 = v46;
LABEL_38:

  v6 = v45;
LABEL_39:
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
LABEL_42:
    [v6 abCloseDBAndSave:v21];
    goto LABEL_43;
  }

  if (v21)
  {
    [v6 executeAllSaveRequests];
  }

LABEL_43:

  return v22;
}

- (BOOL)updateMeCardWithWithConsumer:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(CardDAVDaemonAccount *)self _reallyUpdateMeCardWithWithConsumer:v4 allowDistantUpdate:+[DABehaviorOptions sendMeCardEverywhere]];

  return self;
}

@end