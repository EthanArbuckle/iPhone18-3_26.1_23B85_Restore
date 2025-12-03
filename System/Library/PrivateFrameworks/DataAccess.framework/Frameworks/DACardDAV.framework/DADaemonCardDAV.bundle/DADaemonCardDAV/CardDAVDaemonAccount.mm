@interface CardDAVDaemonAccount
+ (OS_os_log)os_log_summary;
+ (id)contactsByFilteringOutContacts:(id)contacts withoutExternalIUUID:(id)d;
+ (id)contactsByFilteringOutContacts:(id)contacts withoutExternalIdentifier:(id)identifier;
+ (id)groupByFilteringOutGroups:(id)groups withoutExternalIdentifier:(id)identifier;
+ (id)groupByFilteringOutGroups:(id)groups withoutExternalUUID:(id)d;
- (BOOL)_handleOrphanarium:(id)orphanarium toBeCreatedContainersByURL:(id)l;
- (BOOL)_reallyUpdateMeCardWithWithConsumer:(id)consumer allowDistantUpdate:(BOOL)update;
- (BOOL)_serverMeCard:(id)card hasChangedInContainer:(id)container;
- (BOOL)_shouldBlacklistForErrorItem:(id)item;
- (BOOL)finishInitialSyncOfContactsFolder:(id)folder previousTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions useCRUD:(BOOL)d maxResources:(int64_t)resources maxSize:(int64_t)size consumer:(id)self0 context:(id)self1;
- (BOOL)isForgivableError:(id)error;
- (BOOL)setExternalLocation:(id)location forItemWithURL:(id)l inFolderWithURL:(id)rL;
- (BOOL)setLocalETag:(id)tag forItemWithURL:(id)l inFolderWithURL:(id)rL;
- (BOOL)syncDeleteTask:(id)task parentTaskGroup:(id)group completedWithError:(id)error;
- (BOOL)syncPostTask:(id)task postedData:(id)data parentTaskGroup:(id)group error:(id)error;
- (BOOL)syncPropPatchTask:(id)task parsedResponses:(id)responses parentTaskGroup:(id)group completedWithError:(id)error;
- (BOOL)syncPutTask:(id)task completedWithNewETag:(id)tag parentTaskGroup:(id)group error:(id)error;
- (BOOL)updateMeCardWithWithConsumer:(id)consumer;
- (CardDAVDaemonAccount)initWithBackingAccountInfo:(id)info;
- (DAChangeHistoryClerk)changeHistoryClerk;
- (DAContactsAccountProvider)accountProvider;
- (DAContactsProvider)contactsProvider;
- (DAContainerProvider)containerProvider;
- (DAGroupsProvider)groupsProvider;
- (id)_bestDefaultContainerFromCandidateContainers:(id)containers;
- (id)_copyABAccount:(BOOL)account;
- (id)_copyCardFromMeIdentifierAndContainer:(id *)container;
- (id)accountDescription;
- (id)cdvActionsFromDAActions:(id)actions;
- (id)copyAllLocalURLsInFolderWithURL:(id)l;
- (id)copyCDVActionFromDAAction:(id)action;
- (id)copyDAActionFromCDVAction:(id)action;
- (id)copyLocalETagsForURLs:(id)ls inFolderWithURL:(id)l;
- (id)daActionsFromCDVActions:(id)actions;
- (id)handleInsufficientStorageForTask:(id)task inFolderWithURL:(id)l;
- (id)newDAContainerForContainer:(id)container;
- (id)pushedActionsForTaskGroup:(id)group;
- (int)_typeOfDAVContainer:(id)container;
- (void)_bulkUploadTaskGroup:(id)group didFinishWithError:(id)error;
- (void)_fillOutActionsArray:(id)array addedOrModified:(id)modified removed:(id)removed;
- (void)_fillOutAddressBooksFromLocalDB;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)query;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_reallySyncAddressBookURLsWithConsumer:(id)consumer;
- (void)_updateMeTaskGroup:(id)group didFinishWithError:(id)error;
- (void)_updateStoredMeCardWithURL:(id)l;
- (void)containerInfoTask:(id)task completedWithContainers:(id)containers error:(id)error;
- (void)containerQueryTask:(id)task completedWithFoundItems:(id)items error:(id)error;
- (void)containerSyncTask:(id)task completedWithNewCTag:(id)tag newSyncToken:(id)token addedOrModified:(id)modified removed:(id)removed error:(id)error;
- (void)containerSyncTask:(id)task retrievedAddedOrModifiedActions:(id)actions removed:(id)removed;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error;
- (void)getAccountPropertiesTask:(id)task completedWithError:(id)error;
- (void)removePushedActionsForTaskGroup:(id)group;
- (void)syncAddressBookURLsWithConsumer:(id)consumer;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
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

- (CardDAVDaemonAccount)initWithBackingAccountInfo:(id)info
{
  v13.receiver = self;
  v13.super_class = CardDAVDaemonAccount;
  v3 = [(CardDAVDaemonAccount *)&v13 initWithBackingAccountInfo:info];
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
  backingAccountInfo = [(CardDAVDaemonAccount *)self backingAccountInfo];
  username = [backingAccountInfo username];

  v6 = [NSString stringWithFormat:@"%@ %@", v3, username];

  return v6;
}

- (DAContactsProvider)contactsProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAContactsProvider providerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAContactsProvider providerWithAddressBook:](DAContactsProvider, "providerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (DAGroupsProvider)groupsProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAGroupsProvider providerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAGroupsProvider providerWithAddressBook:](DAGroupsProvider, "providerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (DAContainerProvider)containerProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAContainerProvider providerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAContainerProvider providerWithAddressBook:](DAContainerProvider, "providerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (DAContactsAccountProvider)accountProvider
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAContactsAccountProvider providerWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAContactsAccountProvider providerWithAddressBook:](DAContactsAccountProvider, "providerWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (DAChangeHistoryClerk)changeHistoryClerk
{
  v3 = +[DABehaviorOptions useContactsFramework];
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  v5 = databaseHelper;
  if (v3)
  {
    contactStore = [databaseHelper contactStore];
    v7 = [DAChangeHistoryClerk clerkWithContactStore:contactStore];
  }

  else
  {
    v7 = +[DAChangeHistoryClerk clerkWithAddressBook:](DAChangeHistoryClerk, "clerkWithAddressBook:", [databaseHelper abDB]);
  }

  return v7;
}

- (id)pushedActionsForTaskGroup:(id)group
{
  groupCopy = group;
  pushedActionsByTaskGroup = [(CardDAVDaemonAccount *)self pushedActionsByTaskGroup];
  v6 = [pushedActionsByTaskGroup objectForKey:groupCopy];

  if (!v6)
  {
    v6 = +[NSMutableArray array];
    pushedActionsByTaskGroup2 = [(CardDAVDaemonAccount *)self pushedActionsByTaskGroup];
    [pushedActionsByTaskGroup2 setObject:v6 forKey:groupCopy];
  }

  return v6;
}

- (void)removePushedActionsForTaskGroup:(id)group
{
  groupCopy = group;
  pushedActionsByTaskGroup = [(CardDAVDaemonAccount *)self pushedActionsByTaskGroup];
  [pushedActionsByTaskGroup removeObjectForKey:groupCopy];
}

- (BOOL)isForgivableError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:CoreDAVHTTPStatusErrorDomain] && objc_msgSend(errorCopy, "code") >= 400 && objc_msgSend(errorCopy, "code") < 500;

  return v5;
}

- (BOOL)syncPutTask:(id)task completedWithNewETag:(id)tag parentTaskGroup:(id)group error:(id)error
{
  taskCopy = task;
  tagCopy = tag;
  groupCopy = group;
  errorCopy = error;
  if (errorCopy && ![(CardDAVDaemonAccount *)self isForgivableError:errorCopy])
  {
    v20 = 0;
  }

  else
  {
    v14 = [(CardDAVDaemonAccount *)self pushedActionsForTaskGroup:groupCopy];
    backingAction = [taskCopy backingAction];
    [v14 addObject:backingAction];

    backingAction2 = [taskCopy backingAction];
    context = [backingAction2 context];
    serverID = [context serverID];
    folderURL = [groupCopy folderURL];
    [(CardDAVDaemonAccount *)self setLocalETag:tagCopy forItemWithURL:serverID inFolderWithURL:folderURL];

    v20 = 1;
  }

  return v20;
}

- (BOOL)syncPostTask:(id)task postedData:(id)data parentTaskGroup:(id)group error:(id)error
{
  taskCopy = task;
  dataCopy = data;
  groupCopy = group;
  errorCopy = error;
  if (errorCopy && ![(CardDAVDaemonAccount *)self isForgivableError:errorCopy])
  {
    v16 = 0;
  }

  else
  {
    v14 = [(CardDAVDaemonAccount *)self pushedActionsForTaskGroup:groupCopy];
    backingAction = [taskCopy backingAction];
    [v14 addObject:backingAction];

    v16 = 1;
  }

  return v16;
}

- (BOOL)syncDeleteTask:(id)task parentTaskGroup:(id)group completedWithError:(id)error
{
  taskCopy = task;
  groupCopy = group;
  errorCopy = error;
  if (errorCopy && ![(CardDAVDaemonAccount *)self isForgivableError:errorCopy])
  {
    v13 = 0;
  }

  else
  {
    v11 = [(CardDAVDaemonAccount *)self pushedActionsForTaskGroup:groupCopy];
    backingAction = [taskCopy backingAction];
    [v11 addObject:backingAction];

    v13 = 1;
  }

  return v13;
}

- (void)_fillOutActionsArray:(id)array addedOrModified:(id)modified removed:(id)removed
{
  arrayCopy = array;
  modifiedCopy = modified;
  removedCopy = removed;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [modifiedCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(modifiedCopy);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        v15 = [DAAction alloc];
        serverID = [v14 serverID];
        v17 = [v15 initWithItemChangeType:1 changedItem:v14 serverId:serverID];

        [arrayCopy addObject:v17];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [modifiedCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = removedCopy;
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
        serverID2 = [v23 serverID];
        v26 = [v24 initWithItemChangeType:2 changedItem:v23 serverId:serverID2];

        [arrayCopy addObject:v26];
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }
}

- (void)containerSyncTask:(id)task retrievedAddedOrModifiedActions:(id)actions removed:(id)removed
{
  taskCopy = task;
  actionsCopy = actions;
  removedCopy = removed;
  v30 = actionsCopy;
  v29 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(actionsCopy, "count") + objc_msgSend(removedCopy, "count")}];
  if ([removedCopy count])
  {
    v11 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(removedCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = removedCopy;
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
          folderURL = [taskCopy folderURL];
          v19 = [v17 initWithURL:v16 eTag:0 dataPayload:0 inContainerWithURL:folderURL withAccountInfoProvider:self];

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
  v20 = taskCopy;
  v21 = [(CardDAVDaemonAccount *)self consumerForTask:taskCopy];
  folderURL2 = [taskCopy folderURL];
  absoluteString = [folderURL2 absoluteString];
  previousCTag = [taskCopy previousCTag];
  allObjects = [v29 allObjects];
  isInitialSync = [taskCopy isInitialSync];
  externalURLForNewLocation = [(CardDAVDaemonAccount *)self externalURLForNewLocation];
  *(&v28 + 1) = 1;
  LOBYTE(v28) = isInitialSync;
  [v21 syncResultForContactsFolder:absoluteString newTag:0 previousTag:previousCTag newSyncToken:0 actions:allObjects results:0 changeIdContext:0 isInitialSync:v28 moreAvailable:0 moreLocalChangesAvailable:externalURLForNewLocation pushedActions:? externalURLForNewLocation:?];
}

- (void)containerSyncTask:(id)task completedWithNewCTag:(id)tag newSyncToken:(id)token addedOrModified:(id)modified removed:(id)removed error:(id)error
{
  taskCopy = task;
  tagCopy = tag;
  tokenCopy = token;
  modifiedCopy = modified;
  removedCopy = removed;
  errorCopy = error;
  v19 = DALoggingwithCategory();
  v20 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138413570;
    v116 = taskCopy;
    v117 = 2112;
    v118 = tagCopy;
    v119 = 2112;
    v120 = tokenCopy;
    v121 = 2048;
    v122 = [modifiedCopy count];
    v123 = 2048;
    v124 = [removedCopy count];
    v125 = 2112;
    v126 = errorCopy;
    _os_log_impl(&dword_0, v19, v20, "Container sync task %@ completed with next cTag %@, next synctoken %@, add/modify count %lu, remove count %lu, error %@", buf, 0x3Eu);
  }

  v92 = errorCopy;

  selfCopy6 = self;
  v22 = [(CardDAVDaemonAccount *)self consumerForTask:taskCopy];
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  v93 = v22;
  v89 = modifiedCopy;
  v90 = tokenCopy;
  v88 = removedCopy;
  if ([removedCopy count])
  {
    v85 = tagCopy;
    v23 = taskCopy;
    v24 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(removedCopy, "count")}];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v25 = removedCopy;
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
          folderURL = [v23 folderURL];
          v33 = [v31 initWithURL:v30 eTag:0 dataPayload:0 inContainerWithURL:folderURL withAccountInfoProvider:self];

          [v24 addObject:v33];
        }

        v27 = [v25 countByEnumeratingWithState:&v108 objects:v114 count:16];
      }

      while (v27);
    }

    taskCopy = v23;
    tagCopy = v85;
    modifiedCopy = v89;
    v22 = v93;
    selfCopy6 = self;
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
    v34 = [(CardDAVDaemonAccount *)selfCopy6 pushedActionsForTaskGroup:taskCopy];
    v35 = [v34 count];

    if (v35 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      folderURL2 = [taskCopy folderURL];
      absoluteString = [folderURL2 absoluteString];
      v38 = [(CardDAVDaemonAccount *)selfCopy6 pushedActionsForTaskGroup:taskCopy];
      v39 = [(CardDAVDaemonAccount *)selfCopy6 daActionsFromCDVActions:v38];
      [v93 contactsFolderWithId:absoluteString successfullyPushedActions:v39];

      selfCopy6 = self;
      v22 = v93;
    }

    v40 = v88;
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper2 = [(CardDAVDaemonAccount *)selfCopy6 databaseHelper];
      [databaseHelper2 abCloseDBAndSave:0];
    }

    os_log_summary = [objc_opt_class() os_log_summary];
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      [(CardDAVDaemonAccount *)selfCopy6 accountDescription];
      v43 = v86 = taskCopy;
      publicDescription = [(CardDAVDaemonAccount *)selfCopy6 publicDescription];
      domain = [v107 domain];
      *buf = 138413058;
      v116 = v43;
      v117 = 2114;
      v118 = publicDescription;
      v119 = 2112;
      v120 = v107;
      v121 = 2114;
      v122 = domain;
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- sync completed with error: %@ %{public}@", buf, 0x2Au);

      selfCopy6 = self;
      v22 = v93;

      taskCopy = v86;
    }

    v46 = v107;
    [v22 actionFailed:10 forTask:taskCopy error:v107];
  }

  else
  {
    if (selfCopy6->_hasOutstandingABChanges && +[DABehaviorOptions useContactsFramework])
    {
      v47 = tagCopy;
      v48 = taskCopy;
      v49 = objc_alloc_init(CNSaveRequest);
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      contactsByExternalIdentifier = [(CardDAVDaemonAccount *)selfCopy6 contactsByExternalIdentifier];
      allValues = [contactsByExternalIdentifier allValues];

      v52 = [allValues countByEnumeratingWithState:&v99 objects:v113 count:16];
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
              objc_enumerationMutation(allValues);
            }

            [*(*(&v99 + 1) + 8 * j) updateSaveRequest:v49];
          }

          v53 = [allValues countByEnumeratingWithState:&v99 objects:v113 count:16];
        }

        while (v53);
      }

      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      groupsByExternalIdentifier = [(CardDAVDaemonAccount *)selfCopy6 groupsByExternalIdentifier];
      allValues2 = [groupsByExternalIdentifier allValues];

      v58 = [allValues2 countByEnumeratingWithState:&v95 objects:v112 count:16];
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
              objc_enumerationMutation(allValues2);
            }

            [*(*(&v95 + 1) + 8 * k) updateSaveRequest:v49];
          }

          v59 = [allValues2 countByEnumeratingWithState:&v95 objects:v112 count:16];
        }

        while (v59);
      }

      databaseHelper3 = [(CardDAVDaemonAccount *)selfCopy6 databaseHelper];
      [databaseHelper3 addSaveRequest:v49];

      [databaseHelper executeAllSaveRequests];
      taskCopy = v48;
      tagCopy = v47;
    }

    v63 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(modifiedCopy, "count") + objc_msgSend(v24, "count")}];
    [(CardDAVDaemonAccount *)selfCopy6 _fillOutActionsArray:v63 addedOrModified:modifiedCopy removed:v24];
    folderURL3 = [taskCopy folderURL];
    absoluteString2 = [folderURL3 absoluteString];
    previousCTag = [taskCopy previousCTag];
    v87 = v63;
    allObjects = [v63 allObjects];
    context = [taskCopy context];
    isInitialSync = [taskCopy isInitialSync];
    externalURLForNewLocation = [(CardDAVDaemonAccount *)self externalURLForNewLocation];
    *(&v84 + 1) = 0;
    LOBYTE(v84) = isInitialSync;
    tokenCopy = v90;
    [v93 syncResultForContactsFolder:absoluteString2 newTag:tagCopy previousTag:previousCTag newSyncToken:v90 actions:allObjects results:0 changeIdContext:context isInitialSync:v84 moreAvailable:0 moreLocalChangesAvailable:externalURLForNewLocation pushedActions:? externalURLForNewLocation:?];

    selfCopy6 = self;
    [(CardDAVDaemonAccount *)self removePushedActionsForTaskGroup:taskCopy];
    folderURL4 = [taskCopy folderURL];
    homeURL = [(CardDAVDaemonAccount *)self homeURL];
    v73 = [folderURL4 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

    containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
    syncStoreIdentifier = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
    v76 = [containerProvider containerWithExternalIdentifier:v73 forAccountWithExternalIdentifier:syncStoreIdentifier];

    if (v76)
    {
      os_log_summary2 = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(os_log_summary2, OS_LOG_TYPE_DEFAULT))
      {
        accountDescription = [(CardDAVDaemonAccount *)self accountDescription];
        publicDescription2 = [(CardDAVDaemonAccount *)self publicDescription];
        *buf = 138412546;
        v116 = accountDescription;
        v117 = 2114;
        v118 = publicDescription2;
        _os_log_impl(&dword_0, os_log_summary2, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- sync complete", buf, 0x16u);

        selfCopy6 = self;
      }

      containerProvider2 = [(CardDAVDaemonAccount *)selfCopy6 containerProvider];
      v81 = [containerProvider2 setLastSyncDateForContainer:v76];

      if (v81)
      {
        selfCopy6->_hasOutstandingABChanges = 1;
      }
    }

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      databaseHelper4 = [(CardDAVDaemonAccount *)selfCopy6 databaseHelper];
      [databaseHelper4 abCloseDBAndSave:selfCopy6->_hasOutstandingABChanges];
    }

    v40 = v88;
    modifiedCopy = v89;
    v46 = 0;
    v22 = v93;
  }

  [(CardDAVDaemonAccount *)selfCopy6 removeConsumerForTask:taskCopy];
  v83 = +[DABabysitter sharedBabysitter];
  [v83 unregisterAccount:selfCopy6 forOperationWithName:@"CardDAVSync"];
}

- (BOOL)syncPropPatchTask:(id)task parsedResponses:(id)responses parentTaskGroup:(id)group completedWithError:(id)error
{
  backingAction = [task backingAction];
  context = [backingAction context];

  if (!error)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      action = [context action];
      propertyName = [action propertyName];
      v12 = [propertyName isEqualToString:cdXMLCardDAVGuardianRestricted];

      if (v12)
      {
        databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
        if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
        {
          changeTrackingID = [(CardDAVDaemonAccount *)self changeTrackingID];
          [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
        }

        changedItem = [action changedItem];
        [changedItem setGuardianStateDirty:0];
        if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
        {
          v16 = objc_alloc_init(CNSaveRequest);
          [changedItem updateSaveRequest:v16];
          [databaseHelper addSaveRequest:v16];
          [databaseHelper executeAllSaveRequests];
        }

        else
        {
          [databaseHelper abCloseDBAndSave:1];
        }
      }
    }
  }

  return error == 0;
}

+ (id)contactsByFilteringOutContacts:(id)contacts withoutExternalIdentifier:(id)identifier
{
  contactsCopy = contacts;
  identifierCopy = identifier;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = contactsCopy;
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
        externalIdentifier = [v13 externalIdentifier];
        v15 = [externalIdentifier isEqualToString:identifierCopy];

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

+ (id)groupByFilteringOutGroups:(id)groups withoutExternalIdentifier:(id)identifier
{
  groupsCopy = groups;
  identifierCopy = identifier;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = groupsCopy;
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
        externalIdentifier = [v13 externalIdentifier];
        v15 = [externalIdentifier isEqualToString:identifierCopy];

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

+ (id)contactsByFilteringOutContacts:(id)contacts withoutExternalIUUID:(id)d
{
  contactsCopy = contacts;
  dCopy = d;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = contactsCopy;
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
        externalUUID = [v13 externalUUID];
        v15 = [externalUUID isEqualToString:dCopy];

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

+ (id)groupByFilteringOutGroups:(id)groups withoutExternalUUID:(id)d
{
  groupsCopy = groups;
  dCopy = d;
  v7 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = groupsCopy;
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
        externalUUID = [v13 externalUUID];
        v15 = [externalUUID isEqualToString:dCopy];

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

- (id)copyLocalETagsForURLs:(id)ls inFolderWithURL:(id)l
{
  lsCopy = ls;
  lCopy = l;
  v8 = +[NSMutableDictionary dictionary];
  homeURL = [(CardDAVDaemonAccount *)self homeURL];
  v10 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
  syncStoreIdentifier = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v13 = [containerProvider containerWithExternalIdentifier:v10 forAccountWithExternalIdentifier:syncStoreIdentifier];

  v51 = v13;
  if (v13)
  {
    v48 = v10;
    v49 = lsCopy;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v14 = lsCopy;
    v15 = [v14 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (!v15)
    {
      goto LABEL_24;
    }

    v16 = v15;
    obj = v14;
    v53 = *v55;
    v50 = lCopy;
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
        v19 = [v18 da_leastInfoStringRepresentationRelativeToParentURL:{lCopy, v48, v49}];
        contactsByExternalIdentifier = [(CardDAVDaemonAccount *)self contactsByExternalIdentifier];
        v21 = [contactsByExternalIdentifier objectForKeyedSubscript:v19];

        if (v21)
        {
          contactsByExternalIdentifier2 = [(CardDAVDaemonAccount *)self contactsByExternalIdentifier];
          firstObject2 = [contactsByExternalIdentifier2 objectForKeyedSubscript:v19];
          goto LABEL_9;
        }

        contactsProvider = [(CardDAVDaemonAccount *)self contactsProvider];
        v67 = v19;
        v27 = [NSArray arrayWithObjects:&v67 count:1];
        contactsByExternalIdentifier2 = [contactsProvider contactsWithExternalHREFs:v27 container:v51];

        if ([contactsByExternalIdentifier2 count])
        {
          firstObject = [contactsByExternalIdentifier2 firstObject];
          eTag = [firstObject eTag];

          if (eTag)
          {
            firstObject2 = [contactsByExternalIdentifier2 firstObject];
LABEL_9:
            groupsByExternalIdentifier2 = firstObject2;
            eTag2 = [firstObject2 eTag];
            [v8 setObject:eTag2 forKeyedSubscript:v18];
LABEL_10:

            goto LABEL_11;
          }
        }

        groupsByExternalIdentifier = [(CardDAVDaemonAccount *)self groupsByExternalIdentifier];
        v31 = [groupsByExternalIdentifier objectForKeyedSubscript:v19];

        if (v31)
        {
          groupsByExternalIdentifier2 = [(CardDAVDaemonAccount *)self groupsByExternalIdentifier];
          firstObject4 = [groupsByExternalIdentifier2 objectForKeyedSubscript:v19];
LABEL_18:
          eTag2 = firstObject4;
          eTag3 = [firstObject4 eTag];
          [v8 setObject:eTag3 forKeyedSubscript:v18];

          lCopy = v50;
          goto LABEL_10;
        }

        groupsProvider = [(CardDAVDaemonAccount *)self groupsProvider];
        v66 = v19;
        v35 = [NSArray arrayWithObjects:&v66 count:1];
        groupsByExternalIdentifier2 = [groupsProvider groupsWithExternalHREFs:v35 container:v51];

        if ([groupsByExternalIdentifier2 count])
        {
          firstObject3 = [groupsByExternalIdentifier2 firstObject];
          eTag4 = [firstObject3 eTag];

          if (eTag4)
          {
            firstObject4 = [groupsByExternalIdentifier2 firstObject];
            goto LABEL_18;
          }
        }

        lCopy = v50;
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

        os_log_summary = [objc_opt_class() os_log_summary];
        if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
        {
          accountDescription = [(CardDAVDaemonAccount *)self accountDescription];
          publicDescription = [(CardDAVDaemonAccount *)self publicDescription];
          v42 = [v14 count];
          v43 = [v8 count];
          *buf = 138413058;
          v59 = accountDescription;
          v60 = 2114;
          v61 = publicDescription;
          v62 = 2048;
          v63 = v42;
          v64 = 2048;
          v65 = v43;
          _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) -- server requested %lu etags, we matched %lu", buf, 0x2Au);
        }

        v44 = v8;
        v10 = v48;
        lsCopy = v49;
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

- (id)copyAllLocalURLsInFolderWithURL:(id)l
{
  lCopy = l;
  v5 = +[NSMutableSet set];
  homeURL = [(CardDAVDaemonAccount *)self homeURL];
  v7 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
  syncStoreIdentifier = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v10 = [containerProvider containerWithExternalIdentifier:v7 forAccountWithExternalIdentifier:syncStoreIdentifier];

  if (v10)
  {
    v49 = v7;
    contactsProvider = [(CardDAVDaemonAccount *)self contactsProvider];
    v12 = [contactsProvider contactsInContainer:v10];

    selfCopy = self;
    groupsProvider = [(CardDAVDaemonAccount *)self groupsProvider];
    v46 = [groupsProvider groupsInContainer:v10];

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
          externalIdentifier = [v19 externalIdentifier];

          if (externalIdentifier)
          {
            externalIdentifier2 = [v19 externalIdentifier];
            v22 = [externalIdentifier2 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];

            if (v22)
            {
              [v5 addObject:v22];
            }

            else
            {
              v23 = DALoggingwithCategory();
              if (os_log_type_enabled(v23, v17))
              {
                externalIdentifier3 = [v19 externalIdentifier];
                *buf = 138412546;
                v60 = externalIdentifier3;
                v61 = 2112;
                v62 = lCopy;
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
          externalIdentifier4 = [v32 externalIdentifier];

          if (externalIdentifier4)
          {
            externalIdentifier5 = [v32 externalIdentifier];
            v35 = [externalIdentifier5 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];

            if (v35)
            {
              [v25 addObject:v35];
            }

            else
            {
              v36 = DALoggingwithCategory();
              if (os_log_type_enabled(v36, v30))
              {
                externalIdentifier6 = [v32 externalIdentifier];
                *buf = 138412546;
                v60 = externalIdentifier6;
                v61 = 2112;
                v62 = lCopy;
                _os_log_impl(&dword_0, v36, v30, "Found a group with full path %@, which I can't make into a URL relative to %@", buf, 0x16u);
              }
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v28);
    }

    os_log_summary = [objc_opt_class() os_log_summary];
    v5 = v25;
    if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
    {
      accountDescription = [(CardDAVDaemonAccount *)selfCopy accountDescription];
      publicDescription = [(CardDAVDaemonAccount *)selfCopy publicDescription];
      v41 = [v25 count];
      *buf = 138412802;
      v60 = accountDescription;
      v61 = 2114;
      v62 = publicDescription;
      v63 = 2048;
      v64 = v41;
      _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Syncing account %@ (%{public}@) - server requested local urls, we provided %lu", buf, 0x20u);
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

- (BOOL)setLocalETag:(id)tag forItemWithURL:(id)l inFolderWithURL:(id)rL
{
  tagCopy = tag;
  rLCopy = rL;
  lCopy = l;
  homeURL = [(CardDAVDaemonAccount *)self homeURL];
  v12 = [rLCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

  v13 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:rLCopy];

  containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
  syncStoreIdentifier = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v16 = [containerProvider containerWithExternalIdentifier:v12 forAccountWithExternalIdentifier:syncStoreIdentifier];

  if (v16)
  {
    contactsProvider = [(CardDAVDaemonAccount *)self contactsProvider];
    v32 = v13;
    v18 = [NSArray arrayWithObjects:&v32 count:1];
    v19 = [contactsProvider contactsWithExternalHREFs:v18 container:v16];

    if ([v19 count])
    {
      firstObject = [v19 firstObject];
      [firstObject setETag:tagCopy];

      firstObject2 = [v19 firstObject];
      contactsByExternalIdentifier = [(CardDAVDaemonAccount *)self contactsByExternalIdentifier];
      [contactsByExternalIdentifier setObject:firstObject2 forKeyedSubscript:v13];
    }

    else
    {
      groupsProvider = [(CardDAVDaemonAccount *)self groupsProvider];
      v31 = v13;
      v26 = [NSArray arrayWithObjects:&v31 count:1];
      firstObject2 = [groupsProvider groupsWithExternalHREFs:v26 container:v16];

      if (![firstObject2 count])
      {
LABEL_10:

        self->_hasOutstandingABChanges = 1;
        goto LABEL_11;
      }

      v21FirstObject = [firstObject2 firstObject];
      [v21FirstObject setETag:tagCopy];

      contactsByExternalIdentifier = [firstObject2 firstObject];
      groupsByExternalIdentifier = [(CardDAVDaemonAccount *)self groupsByExternalIdentifier];
      [groupsByExternalIdentifier setObject:contactsByExternalIdentifier forKeyedSubscript:v13];
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

- (BOOL)setExternalLocation:(id)location forItemWithURL:(id)l inFolderWithURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  locationCopy = location;
  v11 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:rLCopy];
  da_stringByRemovingPercentEscapesForUsername = [v11 da_stringByRemovingPercentEscapesForUsername];

  v13 = [NSURL URLWithString:locationCopy];

  v14 = [v13 da_leastInfoStringRepresentationRelativeToParentURL:rLCopy];

  da_stringByRemovingPercentEscapesForUsername2 = [v14 da_stringByRemovingPercentEscapesForUsername];

  if (da_stringByRemovingPercentEscapesForUsername2 && ([da_stringByRemovingPercentEscapesForUsername isEqualToString:da_stringByRemovingPercentEscapesForUsername2] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_externalURLForNewLocation setObject:lCopy forKeyedSubscript:da_stringByRemovingPercentEscapesForUsername2];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)handleInsufficientStorageForTask:(id)task inFolderWithURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    homeURL = [(CardDAVDaemonAccount *)self homeURL];
    v10 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

    containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
    syncStoreIdentifier = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
    v13 = [containerProvider containerWithExternalIdentifier:v10 forAccountWithExternalIdentifier:syncStoreIdentifier];

    v14 = [CardDAVPropertiesHelper maxResourceSizeFromContainer:v13];
    databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
    v16 = +[CardDAVActionsDataSource dataSourceWithAddressBook:](CardDAVActionsDataSource, "dataSourceWithAddressBook:", [databaseHelper abDB]);

    backingAction = [taskCopy backingAction];
    v18 = [(CardDAVDaemonAccount *)self copyDAActionFromCDVAction:backingAction];
    v19 = [v16 copyWithoutImageAction:v18 withFolderURL:lCopy maxResourceSize:v14];

    v8 = [(CardDAVDaemonAccount *)self copyCDVActionFromDAAction:v19];
  }

  return v8;
}

- (BOOL)finishInitialSyncOfContactsFolder:(id)folder previousTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions useCRUD:(BOOL)d maxResources:(int64_t)resources maxSize:(int64_t)size consumer:(id)self0 context:(id)self1
{
  dCopy = d;
  folderCopy = folder;
  tagCopy = tag;
  actionsCopy = actions;
  deleteActionsCopy = deleteActions;
  consumerCopy = consumer;
  contextCopy = context;
  v19 = +[DABabysitter sharedBabysitter];
  LOBYTE(actions) = [v19 registerAccount:self forOperationWithName:@"CardDAVInitialUpload"];

  if (actions)
  {
    v60 = [NSURL URLWithString:folderCopy];
    v58 = actionsCopy;
    if (dCopy)
    {
      v57 = tagCopy;
      v20 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
      v21 = actionsCopy;
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

      v56 = folderCopy;

      v31 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(deleteActionsCopy, "count")}];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v32 = deleteActionsCopy;
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
      folderCopy = v56;
      v42 = consumerCopy;
      if (os_log_type_enabled(v40, v41))
      {
        *buf = 138412290;
        selfCopy = v56;
        _os_log_impl(&dword_0, v40, v41, "Folder with id %@ supports bulk upload.  Using it", buf, 0xCu);
      }

      v43 = [CardDAVBulkUploadTaskGroup alloc];
      taskManager = [(CardDAVDaemonAccount *)self taskManager];
      v45 = v43;
      v46 = contextCopy;
      v47 = [v45 initWithFolderURL:v60 checkCTag:v57 uuidsToAddActions:v22 hrefsToModDeleteActions:v31 context:contextCopy accountInfoProvider:self taskManager:taskManager];

      if (resources)
      {
        if (resources >= 25)
        {
          resourcesCopy = 25;
        }

        else
        {
          resourcesCopy = resources;
        }

        [v47 setMultiPutBatchMaxNumResources:resourcesCopy];
      }

      if (size)
      {
        [v47 setMultiPutBatchMaxSize:size];
      }

      [v47 setDelegate:self];
      [(CardDAVDaemonAccount *)self setConsumer:consumerCopy forTask:v47];
      [v47 startTaskGroup];

      tagCopy = v57;
    }

    else
    {
      v52 = DALoggingwithCategory();
      v53 = _CPLog_to_os_log_type[3];
      v46 = contextCopy;
      v42 = consumerCopy;
      if (os_log_type_enabled(v52, v53))
      {
        *buf = 138412290;
        selfCopy = folderCopy;
        _os_log_impl(&dword_0, v52, v53, "Asked to do a bulk upload to folder id %@, but it doesn't support it.  Failing", buf, 0xCu);
      }

      v54 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
      [consumerCopy failedToFinishInitialSync:folderCopy error:v54];

      v22 = +[DABabysitter sharedBabysitter];
      [v22 unregisterAccount:self forOperationWithName:@"CardDAVInitialUpload"];
    }

    actionsCopy = v58;
    v51 = v60;
  }

  else
  {
    v49 = DALoggingwithCategory();
    v50 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v49, v50))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v49, v50, "The babysitter put us in timeout. Failing initial contacts sync. %@", buf, 0xCu);
    }

    v51 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    v42 = consumerCopy;
    [consumerCopy failedToFinishInitialSync:folderCopy error:v51];
    v46 = contextCopy;
  }

  return 0;
}

- (void)_bulkUploadTaskGroup:(id)group didFinishWithError:(id)error
{
  groupCopy = group;
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412546;
    *&buf[4] = groupCopy;
    *&buf[12] = 2112;
    *&buf[14] = errorCopy;
    _os_log_impl(&dword_0, v5, v6, "bulk upload task group %@ completed with error %@", buf, 0x16u);
  }

  uuidToHREF = [groupCopy uuidToHREF];
  if ([uuidToHREF count])
  {
    goto LABEL_6;
  }

  hrefToETag = [groupCopy hrefToETag];
  if ([hrefToETag count])
  {

LABEL_6:
    goto LABEL_7;
  }

  hrefToStatus = [groupCopy hrefToStatus];
  v74 = [hrefToStatus count] == 0;

  if (v74)
  {
    databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      changeTrackingID = [(CardDAVDaemonAccount *)self changeTrackingID];
      [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
    }

    folderURL = [groupCopy folderURL];
    homeURL = [(CardDAVDaemonAccount *)self homeURL];
    v81 = [folderURL da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

    containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
    syncStoreIdentifier = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
    v83 = [containerProvider containerWithExternalIdentifier:v81 forAccountWithExternalIdentifier:syncStoreIdentifier];

    if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
    {
      [databaseHelper abCloseDBAndSave:0];
    }

    goto LABEL_57;
  }

LABEL_7:
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    changeTrackingID2 = [(CardDAVDaemonAccount *)self changeTrackingID];
    [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID2];
  }

  folderURL2 = [groupCopy folderURL];
  homeURL2 = [(CardDAVDaemonAccount *)self homeURL];
  v81 = [folderURL2 da_leastInfoStringRepresentationRelativeToParentURL:homeURL2];

  containerProvider2 = [(CardDAVDaemonAccount *)self containerProvider];
  syncStoreIdentifier2 = [(CardDAVDaemonAccount *)self syncStoreIdentifier];
  v83 = [containerProvider2 containerWithExternalIdentifier:v81 forAccountWithExternalIdentifier:syncStoreIdentifier2];

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
    v17 = groupCopy;
    v121 = v17;
    selfCopy = self;
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
    uuidToHREF2 = [v17 uuidToHREF];
    allKeys = [uuidToHREF2 allKeys];

    v21 = [allKeys countByEnumeratingWithState:&v116 objects:v136 count:16];
    if (v21)
    {
      v22 = *v117;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v117 != v22)
          {
            objc_enumerationMutation(allKeys);
          }

          v24 = *(*(&v116 + 1) + 8 * i);
          uuidToHREF3 = [v17 uuidToHREF];
          v26 = [uuidToHREF3 objectForKeyedSubscript:v24];
          (v18[2])(v18, v24, v26);
        }

        v21 = [allKeys countByEnumeratingWithState:&v116 objects:v136 count:16];
      }

      while (v21);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    hrefToStatus2 = [v17 hrefToStatus];
    allKeys2 = [hrefToStatus2 allKeys];

    v29 = [allKeys2 countByEnumeratingWithState:&v112 objects:v135 count:16];
    if (v29)
    {
      v30 = *v113;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v113 != v30)
          {
            objc_enumerationMutation(allKeys2);
          }

          (v18[2])(v18, 0, *(*(&v112 + 1) + 8 * j));
        }

        v29 = [allKeys2 countByEnumeratingWithState:&v112 objects:v135 count:16];
      }

      while (v29);
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    hrefToETag2 = [v17 hrefToETag];
    obj = [hrefToETag2 allKeys];

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
          hrefToETag3 = [v17 hrefToETag];
          v37 = [hrefToETag3 objectForKeyedSubscript:v35];

          folderURL3 = [v17 folderURL];
          v39 = [v35 da_leastInfoStringRepresentationRelativeToParentURL:folderURL3];

          firstObject = [v93 objectForKeyedSubscript:v35];
          if (firstObject)
          {
            goto LABEL_31;
          }

          contactsProvider = [(CardDAVDaemonAccount *)self contactsProvider];
          v133 = v39;
          v42 = [NSArray arrayWithObjects:&v133 count:1];
          v43 = [contactsProvider contactsWithExternalHREFs:v42 container:v88];

          firstObject = [v43 firstObject];

          if (firstObject)
          {
LABEL_31:
            [firstObject setETag:v37];
            if (+[DABehaviorOptions useContactsFramework])
            {
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          firstObject = [v87 objectForKeyedSubscript:v35];
          if (firstObject)
          {
            goto LABEL_38;
          }

          groupsProvider = [(CardDAVDaemonAccount *)self groupsProvider];
          v132 = v39;
          v45 = [NSArray arrayWithObjects:&v132 count:1];
          v46 = [groupsProvider groupsWithExternalHREFs:v45 container:v88];

          firstObject = [v46 firstObject];

          if (firstObject)
          {
LABEL_38:
            [firstObject setETag:v37];
            if (+[DABehaviorOptions useContactsFramework])
            {
LABEL_32:
              [firstObject updateSaveRequest:v90];
            }

LABEL_33:
            *(*&buf[8] + 24) = 1;
            goto LABEL_34;
          }

          firstObject = DALoggingwithCategory();
          if (os_log_type_enabled(firstObject, type))
          {
            *v128 = 138412546;
            v129 = v35;
            v130 = 2112;
            v131 = v37;
            _os_log_impl(&dword_0, firstObject, type, "For href %@, I have new etag %@, but no local record", v128, 0x16u);
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

    nextCTag = [v17 nextCTag];

    if (nextCTag)
    {
      nextCTag2 = [v17 nextCTag];
      [v88 setCTag:nextCTag2];

      if (+[DABehaviorOptions useContactsFramework])
      {
        [v88 updateSaveRequest:v90];
      }

      *(*&buf[8] + 24) = 1;
    }

    hrefToStatus3 = [v17 hrefToStatus];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_FDB0;
    v100[3] = &unk_3CB68;
    v101 = v17;
    v51 = v93;
    v102 = v51;
    selfCopy2 = self;
    v104 = v88;
    v105 = v90;
    v107 = buf;
    v52 = v87;
    v106 = v52;
    [hrefToStatus3 enumerateKeysAndObjectsUsingBlock:v100];

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

    if (!errorCopy)
    {
      errorCopy = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    }
  }

  if (+[DABehaviorOptions useContactsFramework])
  {
    if (*(*&buf[8] + 24))
    {
      [databaseHelper executeAllSaveRequests];
    }
  }

  else
  {
    [databaseHelper abCloseDBAndSave:*(*&buf[8] + 24)];
  }

  _Block_object_dispose(buf, 8);
LABEL_57:

  v55 = [(CardDAVDaemonAccount *)self consumerForTask:groupCopy];
  uuidToErrorItems = [groupCopy uuidToErrorItems];
  v57 = [uuidToErrorItems count] == 0;

  if (v57)
  {
    v61 = 0;
    v62 = 0;
  }

  else
  {
    v58 = +[NSMutableSet set];
    v59 = +[NSMutableSet set];
    uuidToErrorItems2 = [groupCopy uuidToErrorItems];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_10000;
    v97[3] = &unk_3CB90;
    v97[4] = self;
    v61 = v58;
    v98 = v61;
    v62 = v59;
    v99 = v62;
    [uuidToErrorItems2 enumerateKeysAndObjectsUsingBlock:v97];
  }

  hrefToErrorItems = [groupCopy hrefToErrorItems];
  v64 = [hrefToErrorItems count] == 0;

  if (v64)
  {
    v67 = 0;
  }

  else
  {
    v65 = +[NSMutableSet set];
    hrefToErrorItems2 = [groupCopy hrefToErrorItems];
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_101F0;
    v94[3] = &unk_3CBB8;
    v94[4] = self;
    v67 = v65;
    v95 = v67;
    v96 = 0;
    [hrefToErrorItems2 enumerateKeysAndObjectsUsingBlock:v94];
  }

  if ([v61 count])
  {
    v68 = 0;
  }

  else
  {
    v68 = [v67 count] == 0;
  }

  if (errorCopy && (([errorCopy DA_isFailedDependencyError] | v68) & 1) != 0)
  {
    folderURL4 = [groupCopy folderURL];
    absoluteString = [folderURL4 absoluteString];
    [v55 failedToFinishInitialSync:absoluteString error:errorCopy];
  }

  else
  {
    folderURL4 = [groupCopy folderURL];
    absoluteString = [folderURL4 absoluteString];
    context = [groupCopy context];
    [v55 successfullyFinishedInitalUploadForFolderWithID:absoluteString container:v83 guardianRestrictedUUIDs:v62 guardianRestrictedHREFs:0 blacklistedUUIDs:v61 blacklistedHREFs:v67 context:context];
  }

  [(CardDAVDaemonAccount *)self removeConsumerForTask:groupCopy];
  v72 = +[DABabysitter sharedBabysitter];
  [v72 unregisterAccount:self forOperationWithName:@"CardDAVInitialUpload"];
}

- (BOOL)_shouldBlacklistForErrorItem:(id)item
{
  itemCopy = item;
  maxResourceSize = [itemCopy maxResourceSize];
  if (maxResourceSize)
  {
    v5 = 1;
  }

  else
  {
    maxImageSize = [itemCopy maxImageSize];
    if (maxImageSize)
    {
      v5 = 1;
    }

    else
    {
      invalidImageType = [itemCopy invalidImageType];
      if (invalidImageType)
      {
        v5 = 1;
      }

      else
      {
        imageError = [itemCopy imageError];
        if (imageError)
        {
          v5 = 1;
        }

        else
        {
          noUIDConflict = [itemCopy noUIDConflict];
          if (noUIDConflict)
          {
            v5 = 1;
          }

          else
          {
            validAddressData = [itemCopy validAddressData];
            v5 = validAddressData != 0;
          }
        }
      }
    }
  }

  return v5;
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  groupCopy = group;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CardDAVDaemonAccount *)self _updateMeTaskGroup:groupCopy didFinishWithError:errorCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CardDAVDaemonAccount *)self _bulkUploadTaskGroup:groupCopy didFinishWithError:errorCopy];
    }
  }
}

- (id)copyCDVActionFromDAAction:(id)action
{
  actionCopy = action;
  itemChangeType = [actionCopy itemChangeType];
  if (itemChangeType > 1)
  {
    if (itemChangeType == &dword_0 + 2)
    {
      v13 = [CoreDAVAction alloc];
      serverId = [actionCopy serverId];
      v7 = v13;
      v8 = 2;
      goto LABEL_13;
    }

    if (itemChangeType == &dword_8 + 2)
    {
      serverId = [[DAEditPropertyActionAdapter alloc] initWithDAEditPropertyAction:actionCopy];
      v7 = [CoreDAVAction alloc];
      v8 = 4;
      goto LABEL_13;
    }
  }

  else
  {
    if (!itemChangeType)
    {
      v12 = [CoreDAVAction alloc];
      serverId = [actionCopy changedItem];
      v7 = v12;
      v8 = 0;
      goto LABEL_13;
    }

    if (itemChangeType == &dword_0 + 1)
    {
      v5 = [CoreDAVAction alloc];
      serverId = [actionCopy changedItem];
      v7 = v5;
      v8 = 1;
LABEL_13:
      v11 = [v7 initWithAction:v8 context:serverId];

      goto LABEL_14;
    }
  }

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v9, v10))
  {
    v16 = 138412290;
    v17 = actionCopy;
    _os_log_impl(&dword_0, v9, v10, "Unacceptable DAAction %@.  Not handing it to CoreDAV", &v16, 0xCu);
  }

  v11 = 0;
LABEL_14:
  if ([actionCopy ignoresGuardianRestrictions])
  {
    [v11 setIgnoresGuardianRestrictions:1];
  }

  if ([actionCopy changeId] != -1)
  {
    v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [actionCopy changeId]);
    [v11 setChangeContext:v14];
  }

  return v11;
}

- (id)cdvActionsFromDAActions:(id)actions
{
  actionsCopy = actions;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = actionsCopy;
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

- (id)copyDAActionFromCDVAction:(id)action
{
  actionCopy = action;
  action = [actionCopy action];
  switch(action)
  {
    case 2u:
      v13 = [DAAction alloc];
      context = [actionCopy context];
      v12 = [v13 initWithItemChangeType:2 changedItem:0 serverId:context];
      goto LABEL_8;
    case 1u:
      v11 = [DAAction alloc];
      context = [actionCopy context];
      context2 = [actionCopy context];
      serverID = [context2 serverID];
      v9 = v11;
      v10 = 1;
      goto LABEL_6;
    case 0u:
      v5 = [DAAction alloc];
      context = [actionCopy context];
      context2 = [actionCopy context];
      serverID = [context2 serverID];
      v9 = v5;
      v10 = 0;
LABEL_6:
      v12 = [v9 initWithItemChangeType:v10 changedItem:context serverId:serverID];

LABEL_8:
      goto LABEL_12;
  }

  v14 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v14, v15))
  {
    v19 = 138412290;
    v20 = actionCopy;
    _os_log_impl(&dword_0, v14, v15, "Unacceptable CoreDAVAction %@.  Not handing it to DA", &v19, 0xCu);
  }

  v12 = 0;
LABEL_12:
  changeContext = [actionCopy changeContext];

  if (changeContext)
  {
    changeContext2 = [actionCopy changeContext];
    [v12 setChangeId:{objc_msgSend(changeContext2, "intValue")}];
  }

  return v12;
}

- (id)daActionsFromCDVActions:(id)actions
{
  actionsCopy = actions;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = actionsCopy;
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

- (id)_copyABAccount:(BOOL)account
{
  accountCopy = account;
  accountProvider = [(CardDAVDaemonAccount *)self accountProvider];
  accountID = [(CardDAVDaemonAccount *)self accountID];
  v7 = [accountProvider fetchedAccountWithExternalIdentifier:accountID];

  if (!v7 && accountCopy)
  {
    accountProvider2 = [(CardDAVDaemonAccount *)self accountProvider];
    accountID2 = [(CardDAVDaemonAccount *)self accountID];
    v7 = [accountProvider2 accountByCreatingAccountWithExternalIdentifier:accountID2];

    databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
    if (+[DABehaviorOptions useContactsFramework])
    {
      v11 = objc_alloc_init(CNSaveRequest);
      [v7 updateSaveRequest:v11];
      [databaseHelper addSaveRequest:v11];
      [databaseHelper executeAllSaveRequests];
    }

    else
    {
      [databaseHelper abSaveDB];
    }
  }

  return v7;
}

- (int)_typeOfDAVContainer:(id)container
{
  if ([container isSearchAddressBook])
  {
    return 16777220;
  }

  else
  {
    return 4;
  }
}

- (id)newDAContainerForContainer:(id)container
{
  containerCopy = container;
  if (([containerCopy isSearchAddressBook] & 1) != 0 || objc_msgSend(containerCopy, "isAddressBook") && (objc_msgSend(containerCopy, "isSharedAddressBook") & 1) == 0)
  {
    containerTitle = [containerCopy containerTitle];
    if (!containerTitle)
    {
      v6 = [containerCopy url];
      lastPathComponent = [v6 lastPathComponent];
      containerTitle = [lastPathComponent prettyStringForDisplayName];
    }

    v8 = [containerCopy url];
    homeURL = [(CardDAVDaemonAccount *)self homeURL];
    v10 = [v8 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];

    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v11, v12, "Creating AB store for account %@", buf, 0xCu);
    }

    v32 = [(CardDAVDaemonAccount *)self _copyABAccount:1];
    v30 = [(CardDAVDaemonAccount *)self _typeOfDAVContainer:containerCopy];
    v13 = @"CardDAV";
    if (containerTitle)
    {
      v13 = containerTitle;
    }

    v14 = v13;
    addressBookConstraintsPlistPath = [objc_opt_class() addressBookConstraintsPlistPath];
    privileges = [containerCopy privileges];
    if ([privileges count])
    {
      v16 = [containerCopy hasWriteContentPrivileges] ^ 1;
    }

    else
    {
      v16 = 0;
    }

    privileges2 = [containerCopy privileges];
    if ([privileges2 count])
    {
      v19 = [containerCopy hasWritePropertiesPrivileges] ^ 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_opt_new();
    [CardDAVPropertiesHelper updateSyncDict:v20 withDAVContainer:containerCopy];
    v21 = [NSPropertyListSerialization dataFromPropertyList:v20 format:200 errorDescription:0];
    containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
    LOBYTE(v29) = v19;
    v23 = v10;
    v17 = [containerProvider createNewContainerWithType:v30 name:v14 externalIdentifier:v10 constraintsPath:addressBookConstraintsPlistPath syncData:v21 contentReadonly:v16 propertiesReadonly:v29 forAccount:v32];

    databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
    [databaseHelper abProcessAddedRecords];

    if ([(CardDAVDaemonAccount *)self isDelegateAccount])
    {
      containerProvider2 = [(CardDAVDaemonAccount *)self containerProvider];
      [containerProvider2 mergeAllRecordsIntoContainer:v17 shouldInsertChangeHistoryRecords:0];
    }

    if ([v17 type] == &dword_4)
    {
      changeHistoryClerk = [(CardDAVDaemonAccount *)self changeHistoryClerk];
      changeTrackingID = [(CardDAVDaemonAccount *)self changeTrackingID];
      [changeHistoryClerk registerClientWithIdentifier:changeTrackingID forContainer:v17];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_handleOrphanarium:(id)orphanarium toBeCreatedContainersByURL:(id)l
{
  orphanariumCopy = orphanarium;
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = orphanariumCopy;
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
        changeHistoryClerk = [(CardDAVDaemonAccount *)self changeHistoryClerk];
        abChangeTrackingID = [databaseHelper abChangeTrackingID];
        [changeHistoryClerk unregisterClientWithIdentifier:abChangeTrackingID forContainer:v13];
      }

      v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v9 != 0;
}

- (void)containerInfoTask:(id)task completedWithContainers:(id)containers error:(id)error
{
  taskCopy = task;
  containersCopy = containers;
  errorCopy = error;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412802;
    v162 = taskCopy;
    v163 = 2048;
    v164 = [containersCopy count];
    v165 = 2114;
    v166 = errorCopy;
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

  if (errorCopy)
  {
    goto LABEL_153;
  }

  v124 = taskCopy;
  containerURLs = [(NSURL *)taskCopy containerURLs];
  v17 = +[NSMutableDictionary dictionary];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = containersCopy;
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
        if ([containerURLs containsObject:v24])
        {
          pushTransports = [(NSURL *)v22 pushTransports];

          if (pushTransports)
          {
            pushTransport = [(CardDAVDaemonAccount *)self pushTransport];

            if (pushTransport)
            {
              pushTransports3 = DALoggingwithCategory();
              if (os_log_type_enabled(pushTransports3, v19))
              {
                pushTransports2 = [(NSURL *)v22 pushTransports];
                *buf = 138412290;
                v162 = pushTransports2;
                _os_log_impl(&dword_0, pushTransports3, v20, "Ignoring push transports from additional home set %@", buf, 0xCu);

                v19 = v20;
              }
            }

            else
            {
              pushTransports3 = [(NSURL *)v22 pushTransports];
              [(CardDAVDaemonAccount *)self setPushTransport:pushTransports3];
            }
          }

          meCardURL = [(NSURL *)v22 meCardURL];

          if (meCardURL)
          {
            if (self->_meCardURL)
            {
              v30 = DALoggingwithCategory();
              if (os_log_type_enabled(v30, v19))
              {
                meCardURL2 = [(NSURL *)v22 meCardURL];
                *buf = 138412290;
                v162 = meCardURL2;
                _os_log_impl(&dword_0, v30, v20, "Ignoring Me card from additional home set %@", buf, 0xCu);
              }
            }

            else
            {
              meCardURL3 = [(NSURL *)v22 meCardURL];
              v33 = self->_meCardURL;
              self->_meCardURL = meCardURL3;

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
            pushKey = [(NSURL *)v22 pushKey];
            v37 = [pushKey length];

            if (v37)
            {
              v38 = [(NSURL *)v22 url];
              mPushKeysToFolderURLs = [(CardDAVDaemonAccount *)self mPushKeysToFolderURLs];
              [(NSURL *)v22 pushKey];
              v41 = v40 = containerURLs;
              [mPushKeysToFolderURLs setObject:v38 forKeyedSubscript:v41];

              containerURLs = v40;
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
        quotaAvailable = [(NSURL *)v22 quotaAvailable];
        self->_vcfDataOverQuota = [quotaAvailable integerValue] < 0;

        v19 = v20;
      }

      v144 = [obj countByEnumeratingWithState:&v154 objects:v160 count:16];
    }

    while (v144);
  }

  if (!self->_homeURL && [containerURLs count])
  {
    anyObject = [containerURLs anyObject];
    v46 = self->_homeURL;
    self->_homeURL = anyObject;
  }

  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  taskCopy = v124;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    [(CardDAVDaemonAccount *)self changeTrackingID];
    v49 = v48 = databaseHelper;
    [v48 abOpenDBWithClientIdentifier:v49];

    databaseHelper = v48;
  }

  v50 = [(CardDAVDaemonAccount *)self _copyABAccount:1];
  v128 = objc_alloc_init(CNSaveRequest);
  v123 = v50;
  if (!v50)
  {
    errorCopy = 0;
    if ((+[DABehaviorOptions useContactsFramework]& 1) != 0)
    {
      goto LABEL_152;
    }

    v107 = 0;
    goto LABEL_151;
  }

  v126 = databaseHelper;
  containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
  externalIdentifier = [v50 externalIdentifier];
  v53 = [containerProvider allContainersForAccountWithExternalIdentifier:externalIdentifier];

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
    containerProvider2 = [(CardDAVDaemonAccount *)self containerProvider];
    firstObject = [v53 firstObject];
    [containerProvider2 mergeAllRecordsIntoContainer:firstObject shouldInsertChangeHistoryRecords:1];
  }

  v120 = containerURLs;
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
  selfCopy = self;
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
      externalIdentifier2 = [v61 externalIdentifier];
      homeURL = [(CardDAVDaemonAccount *)self homeURL];
      v64 = [externalIdentifier2 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:homeURL];

      if (!v64 || ([v139 objectForKeyedSubscript:v64], v65 = objc_claimAutoreleasedReturnValue(), v65, !v65))
      {
        [v54 addObject:v61];
        goto LABEL_121;
      }

      v145 = [v139 objectForKeyedSubscript:v64];
      constraintsPath = [v61 constraintsPath];
      addressBookConstraintsPlistPath = [objc_opt_class() addressBookConstraintsPlistPath];
      v68 = addressBookConstraintsPlistPath;
      v69 = v143;
      if (constraintsPath && !addressBookConstraintsPlistPath || !constraintsPath && addressBookConstraintsPlistPath || constraintsPath && ([constraintsPath isEqualToString:addressBookConstraintsPlistPath] & 1) == 0)
      {
        [v61 setConstraintsPath:v68];
        v69 = 1;
      }

      name = [v61 name];
      containerTitle = [v145 containerTitle];
      v140 = v64;
      v136 = v68;
      obja = constraintsPath;
      v135 = name;
      if (containerTitle)
      {
        prettyStringForDisplayName = containerTitle;
        v73 = name != 0;
LABEL_62:
        v74 = v69;
        goto LABEL_63;
      }

      v75 = [v145 url];
      lastPathComponent = [v75 lastPathComponent];
      prettyStringForDisplayName = [lastPathComponent prettyStringForDisplayName];

      v73 = name != 0;
      if (!name)
      {
        goto LABEL_62;
      }

      v74 = v69;
      if (!prettyStringForDisplayName)
      {
        self = selfCopy;
LABEL_72:
        [v61 setName:prettyStringForDisplayName];
        v74 = 1;
        goto LABEL_73;
      }

LABEL_63:
      self = selfCopy;
      if (!name && prettyStringForDisplayName || v73 && ([name isEqualToString:prettyStringForDisplayName] & 1) == 0)
      {
        goto LABEL_72;
      }

LABEL_73:
      v134 = prettyStringForDisplayName;
      v77 = [(CardDAVDaemonAccount *)self _typeOfDAVContainer:v145];
      if ([v61 type] == v77)
      {
        goto LABEL_87;
      }

      v78 = v77;
      os_log_summary = [objc_opt_class() os_log_summary];
      if (os_log_type_enabled(os_log_summary, OS_LOG_TYPE_DEFAULT))
      {
        type = [v61 type];
        *buf = 134349568;
        v162 = v77;
        v163 = 2050;
        v164 = type;
        v165 = 2050;
        v166 = v77;
        _os_log_impl(&dword_0, os_log_summary, OS_LOG_TYPE_DEFAULT, "Container type from the server (%{public}ld) differs from our records (%{public}ld). Changing local type to (%{public}ld).", buf, 0x20u);
      }

      isSearchContainer = [v61 isSearchContainer];
      [v61 setType:v78];
      isSearchAddressBook = [v145 isSearchAddressBook];
      if (isSearchContainer)
      {
        if ((isSearchAddressBook & 1) == 0)
        {
          os_log_summary2 = [objc_opt_class() os_log_summary];
          if (os_log_type_enabled(os_log_summary2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, os_log_summary2, OS_LOG_TYPE_DEFAULT, "Registered container with change history because the server reports it as storage, yet we had categorized it as a search node.", buf, 2u);
          }

          changeHistoryClerk = [(CardDAVDaemonAccount *)self changeHistoryClerk];
          abChangeTrackingID = [v126 abChangeTrackingID];
          [changeHistoryClerk registerClientWithIdentifier:abChangeTrackingID forContainer:v61];
LABEL_85:
        }
      }

      else if (isSearchAddressBook)
      {
        os_log_summary3 = [objc_opt_class() os_log_summary];
        if (os_log_type_enabled(os_log_summary3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, os_log_summary3, OS_LOG_TYPE_DEFAULT, "Unregistered container from change history because the server reports it to be a search node, yet we had categorized it as storage.", buf, 2u);
        }

        changeHistoryClerk = [(CardDAVDaemonAccount *)self changeHistoryClerk];
        abChangeTrackingID = [v126 abChangeTrackingID];
        [changeHistoryClerk unregisterClientWithIdentifier:abChangeTrackingID forContainer:v61];
        goto LABEL_85;
      }

      v127 = 1;
      v74 = 1;
LABEL_87:
      privileges = [v145 privileges];
      v142 = externalIdentifier2;
      if ([privileges count])
      {
        v88 = [v145 hasWriteContentPrivileges] ^ 1;
      }

      else
      {
        v88 = 0;
      }

      privileges2 = [v145 privileges];
      if ([privileges2 count])
      {
        v90 = [v145 hasWritePropertiesPrivileges] ^ 1;
      }

      else
      {
        v90 = 0;
      }

      isContentReadonly = [v61 isContentReadonly];
      arePropertiesReadonly = [v61 arePropertiesReadonly];
      if (v88 != isContentReadonly)
      {
        [v61 setContentReadonly:v88];
        v74 = 1;
      }

      if (v90 != arePropertiesReadonly)
      {
        [v61 setArePropertiesReadonly:v90];
        v74 = 1;
      }

      isGuardianRestricted = [v61 isGuardianRestricted];
      isGuardianRestricted2 = [v145 isGuardianRestricted];
      isGuardianStateDirty = [v61 isGuardianStateDirty];
      if (isGuardianRestricted == isGuardianRestricted2)
      {
        v96 = v145;
        if (!isGuardianStateDirty)
        {
          goto LABEL_103;
        }

        [v61 setGuardianStateDirty:0];
      }

      else
      {
        v96 = v145;
        if (isGuardianStateDirty)
        {
          goto LABEL_103;
        }

        [v61 setGuardianRestricted:{objc_msgSend(v145, "isGuardianRestricted")}];
      }

      v74 = 1;
LABEL_103:
      syncData = [v61 syncData];
      v143 = v74;
      if (syncData)
      {
        [NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:1 format:0 errorDescription:0];
      }

      else
      {
        +[NSMutableDictionary dictionary];
      }
      v98 = ;
      v99 = [v98 objectForKeyedSubscript:@"BulkRequests"];
      bulkRequests = [v96 bulkRequests];
      v101 = bulkRequests;
      if (v99)
      {
        v102 = [v99 isEqualToDictionary:bulkRequests];

        if ((v102 & 1) == 0)
        {
          goto LABEL_111;
        }

        LODWORD(v101) = 0;
      }

      else if (bulkRequests)
      {

LABEL_111:
        v103 = v145;
        bulkRequests2 = [v145 bulkRequests];

        if (bulkRequests2)
        {
          bulkRequests3 = [v145 bulkRequests];
          [v98 setObject:bulkRequests3 forKeyedSubscript:@"BulkRequests"];
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
      externalIdentifier2 = v142;
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
  allValues = [v139 allValues];
  v110 = [allValues countByEnumeratingWithState:&v146 objects:v158 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v114 = [(CardDAVDaemonAccount *)self newDAContainerForContainer:*(*(&v146 + 1) + 8 * j)];
        if (v114)
        {
          [v108 addObject:v114];
          v107 = 1;
        }
      }

      v111 = [allValues countByEnumeratingWithState:&v146 objects:v158 count:16];
    }

    while (v111);
  }

  if ([v108 count])
  {
    v115 = [(CardDAVDaemonAccount *)self _bestDefaultContainerFromCandidateContainers:v108];
    containerURLs = v121;
    if (v115)
    {
      containerProvider3 = [(CardDAVDaemonAccount *)self containerProvider];
      v107 = 1;
      [containerProvider3 setDefaultContainer:v115 withLocalDBHelper:v126 onlyIfNotSet:1];
    }
  }

  else
  {
    containerURLs = v121;
  }

  taskCopy = v124;
LABEL_146:
  errorCopy = 0;

  databaseHelper = v126;
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    if (v127)
    {
      [v126 abValidateDefaultSource];
    }

LABEL_151:
    [databaseHelper abCloseDBAndSave:v107 & 1];
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

  v118 = [(CardDAVDaemonAccount *)self consumerForTask:taskCopy];
  v119 = v118;
  if (errorCopy)
  {
    [v118 failedToRetrieveAddressBookURLsWithError:errorCopy];
  }

  else
  {
    [(CardDAVDaemonAccount *)self _fillOutAddressBooksFromLocalDB];
    [v119 successfullyRetrievedAddressBookURLs];
  }

  [(CardDAVDaemonAccount *)self removeConsumerForTask:taskCopy];
}

- (id)_bestDefaultContainerFromCandidateContainers:(id)containers
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  containersCopy = containers;
  v4 = [containersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(containersCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([v7 isContentReadonly] & 1) == 0 && (objc_msgSend(v7, "isSearchContainer") & 1) == 0)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [containersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)getAccountPropertiesTask:(id)task completedWithError:(id)error
{
  errorCopy = error;
  taskCopy = task;
  v7 = [(CardDAVDaemonAccount *)self consumerForTask:taskCopy];
  if (errorCopy)
  {
    v8 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v8 relinquishLocksForWaiter:self dataclasses:2 moreComing:0];

    [v7 failedToRetrieveAddressBookURLsWithError:errorCopy];
  }

  else
  {
    v9 = objc_opt_new();
    addressBookHomes = [taskCopy addressBookHomes];
    [v9 unionSet:addressBookHomes];

    directoryGatewayURLs = [taskCopy directoryGatewayURLs];
    [v9 unionSet:directoryGatewayURLs];

    v12 = [CardDAVFolderInfoTaskGroup alloc];
    directoryGatewayURLs2 = [taskCopy directoryGatewayURLs];
    taskManager = [(CardDAVDaemonAccount *)self taskManager];
    v15 = [v12 initWithAccountInfoProvider:self containerURLs:v9 directoryGatewayURLs:directoryGatewayURLs2 taskManager:taskManager];

    [v15 setDelegate:self];
    [(CardDAVDaemonAccount *)self setConsumer:v7 forTask:v15];
    [v15 startTaskGroup];
  }

  [(CardDAVDaemonAccount *)self removeConsumerForTask:taskCopy];

  v16 = +[DABabysitter sharedBabysitter];
  [v16 unregisterAccount:self forOperationWithName:@"CardDAVSyncABURLS"];
}

- (void)_reallySyncAddressBookURLsWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = [CardDAVGetAccountPropertiesTaskGroup alloc];
  taskManager = [(CardDAVDaemonAccount *)self taskManager];
  v7 = [v5 initWithAccountInfoProvider:self taskManager:taskManager];

  [v7 setDelegate:self];
  [(CardDAVDaemonAccount *)self setConsumer:consumerCopy forTask:v7];

  [v7 startTaskGroup];
}

- (void)syncAddressBookURLsWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = +[DABabysitter sharedBabysitter];
  v6 = [v5 registerAccount:self forOperationWithName:@"CardDAVSyncABURLS"];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      transactionId = [v7 transactionId];
      *buf = 138543362;
      selfCopy = transactionId;
      _os_log_impl(&dword_0, v8, v9, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    v11 = +[DALocalDBGateKeeper sharedGateKeeper];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_12C70;
    v15[3] = &unk_3CBE0;
    v15[4] = self;
    v16 = consumerCopy;
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
      selfCopy = self;
      _os_log_impl(&dword_0, v13, v14, "The babysitter put us in timeout. Failing to sync AB URLs. %@", buf, 0xCu);
    }

    v12 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [consumerCopy failedToRetrieveAddressBookURLsWithError:v12];
  }
}

- (void)_fillOutAddressBooksFromLocalDB
{
  mAddressBooksByFolderURL = [(CardDAVDaemonAccount *)self mAddressBooksByFolderURL];

  if (!mAddressBooksByFolderURL)
  {
    v4 = +[NSMutableDictionary dictionary];
    [(CardDAVDaemonAccount *)self setMAddressBooksByFolderURL:v4];

    v5 = +[NSMutableSet set];
    [(CardDAVDaemonAccount *)self setMAddressBooks:v5];

    v6 = +[NSMutableSet set];
    [(CardDAVDaemonAccount *)self setMSearchAddressBooks:v6];
  }

  mAddressBooks = [(CardDAVDaemonAccount *)self mAddressBooks];
  [mAddressBooks removeAllObjects];

  mSearchAddressBooks = [(CardDAVDaemonAccount *)self mSearchAddressBooks];
  [mSearchAddressBooks removeAllObjects];

  mAddressBooksByFolderURL2 = [(CardDAVDaemonAccount *)self mAddressBooksByFolderURL];
  [mAddressBooksByFolderURL2 removeAllObjects];

  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    changeTrackingID = [(CardDAVDaemonAccount *)self changeTrackingID];
    [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
  }

  accountProvider = [(CardDAVDaemonAccount *)self accountProvider];
  accountID = [(CardDAVDaemonAccount *)self accountID];
  v14 = [accountProvider fetchedAccountWithExternalIdentifier:accountID];

  v41 = v14;
  if (v14)
  {
    v40 = databaseHelper;
    containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
    externalIdentifier = [v14 externalIdentifier];
    v17 = [containerProvider allContainersForAccountWithExternalIdentifier:externalIdentifier];

    v18 = DALoggingwithCategory();
    v19 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v18, v19))
    {
      v20 = [v17 count];
      externalIdentifier2 = [v14 externalIdentifier];
      *buf = 134218242;
      v50 = v20;
      v51 = 2114;
      v52 = externalIdentifier2;
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
          name = [v26 name];
          externalIdentifier3 = [v26 externalIdentifier];
          homeURL = [(CardDAVDaemonAccount *)self homeURL];
          v30 = [externalIdentifier3 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:homeURL];

          if (v30)
          {
            v31 = objc_opt_new();
            [v31 setFolderName:name];
            absoluteString = [v30 absoluteString];
            [v31 setFolderID:absoluteString];

            [v31 setDataclass:2];
            if (([v26 type] & 0x1000000) != 0)
            {
              mSearchAddressBooks2 = [(CardDAVDaemonAccount *)self mSearchAddressBooks];
              [mSearchAddressBooks2 addObject:v31];
            }

            else
            {
              mAddressBooksByFolderURL3 = [(CardDAVDaemonAccount *)self mAddressBooksByFolderURL];
              [mAddressBooksByFolderURL3 setObject:v31 forKeyedSubscript:v30];

              mAddressBooks2 = [(CardDAVDaemonAccount *)self mAddressBooks];
              [mAddressBooks2 addObject:v31];

              mSearchAddressBooks2 = [(CardDAVDaemonAccount *)self changeHistoryClerk];
              changeTrackingID2 = [(CardDAVDaemonAccount *)self changeTrackingID];
              [mSearchAddressBooks2 registerClientWithIdentifier:changeTrackingID2 forContainer:v26];

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
              externalIdentifier4 = [v41 externalIdentifier];
              externalIdentifier5 = [v26 externalIdentifier];
              homeURL2 = [(CardDAVDaemonAccount *)self homeURL];
              *buf = 138543874;
              v50 = externalIdentifier4;
              v51 = 2114;
              v52 = externalIdentifier5;
              v53 = 2114;
              v54 = homeURL2;
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

    databaseHelper = v40;
  }

  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    [databaseHelper abCloseDBAndSave:0];
  }
}

- (void)_reallyPerformSearchQuery:(id)query
{
  queryCopy = query;
  [(CardDAVDaemonAccount *)self setShouldUseOpportunisticSockets:0];
  mSearchAddressBooks = [(CardDAVDaemonAccount *)self mSearchAddressBooks];
  anyObject = [mSearchAddressBooks anyObject];

  folderID = [anyObject folderID];
  v7 = [NSURL URLWithString:folderID];

  v8 = [CardDAVFolderQueryTask alloc];
  searchString = [queryCopy searchString];
  v10 = [v8 initWithSearchString:searchString searchLimit:objc_msgSend(queryCopy atURL:"maxResults") appSpecificDataItemClass:{v7, +[CardDAVVCardItem currentImplementationClass](CardDAVVCardItem, "currentImplementationClass")}];

  [v10 setAccountInfoProvider:self];
  [v10 setDelegate:self];
  [v10 setContext:queryCopy];
  consumer = [queryCopy consumer];

  [(CardDAVDaemonAccount *)self setConsumer:consumer forTask:v10];
  [(NSMutableSet *)self->_searchTaskSet addObject:v10];
  taskManager = [(CardDAVDaemonAccount *)self taskManager];
  [taskManager submitIndependentTask:v10];
}

- (void)containerQueryTask:(id)task completedWithFoundItems:(id)items error:(id)error
{
  taskCopy = task;
  itemsCopy = items;
  errorCopy = error;
  context = [taskCopy context];
  v12 = context;
  if (itemsCopy)
  {
    v33 = context;
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [0 count]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = itemsCopy;
    v15 = itemsCopy;
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

          convertToDAContactSearchResultElement = [*(*(&v34 + 1) + 8 * i) convertToDAContactSearchResultElement];
          if (convertToDAContactSearchResultElement)
          {
            [v13 addObject:convertToDAContactSearchResultElement];
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

  v21 = [(CardDAVDaemonAccount *)self consumerForTask:taskCopy];
  if (!errorCopy)
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

  domain = [errorCopy domain];
  if (![domain isEqual:CoreDAVErrorDomain])
  {

    goto LABEL_23;
  }

  code = [errorCopy code];

  if (code != &dword_0 + 1)
  {
LABEL_23:
    v31 = DALoggingwithCategory();
    v32 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 138412290;
      v39 = errorCopy;
      _os_log_impl(&dword_0, v31, v32, "The CardDAV search returned an error: (%@)", buf, 0xCu);
    }

    v28 = v21;
    v29 = v12;
    v30 = errorCopy;
LABEL_26:
    [v28 searchQuery:v29 finishedWithError:v30];
    goto LABEL_27;
  }

  v24 = DALoggingwithCategory();
  v25 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v24, v25))
  {
    *buf = 134217984;
    v39 = taskCopy;
    _os_log_impl(&dword_0, v24, v25, "CardDAV search task %p was cancelled", buf, 0xCu);
  }

LABEL_27:
  [(NSMutableSet *)self->_searchTaskSet removeObject:taskCopy];
  [(CardDAVDaemonAccount *)self removeConsumerForTask:taskCopy];
}

- (void)_reallyCancelSearchQuery:(id)query
{
  queryCopy = query;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v24 = queryCopy;
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
      context = [v14 context];
      v16 = [context isEqual:queryCopy];

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

    taskManager = [(CardDAVDaemonAccount *)self taskManager];
    [taskManager cancelTask:v10];
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
        taskManager = [(CardDAVDaemonAccount *)self taskManager];
        [taskManager cancelTask:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error
{
  v7.receiver = self;
  v7.super_class = CardDAVDaemonAccount;
  [(CardDAVDaemonAccount *)&v7 discoveryTask:task gotAccountInfo:info error:error];
  v6 = +[DABabysitter sharedBabysitter];
  [v6 unregisterAccount:self forOperationWithName:@"CardDAVValidityCheck"];
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = +[DABabysitter sharedBabysitter];
  v6 = [v5 registerAccount:self forOperationWithName:@"CardDAVValidityCheck"];

  if (v6)
  {
    v8.receiver = self;
    v8.super_class = CardDAVDaemonAccount;
    [(CardDAVDaemonAccount *)&v8 discoverInitialPropertiesWithConsumer:consumerCopy];
  }

  else
  {
    v7 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [consumerCopy account:self isValid:0 validationError:v7];
  }
}

- (id)_copyCardFromMeIdentifierAndContainer:(id *)container
{
  if (*&self->_meCardURL == 0)
  {
    firstObject = 0;
    *container = 0;
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

    containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
    v10 = self->_meFolderURL;
    homeURL = [(CardDAVDaemonAccount *)self homeURL];
    v12 = [(NSURL *)v10 da_leastInfoStringRepresentationRelativeToParentURL:homeURL];
    accountID = [(CardDAVDaemonAccount *)self accountID];
    v14 = [containerProvider containerWithExternalIdentifier:v12 forAccountWithExternalIdentifier:accountID];

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
      firstObject = 0;
    }

    else
    {
      homeURL2 = [(CardDAVDaemonAccount *)self homeURL];
      v18 = [(NSURL *)v15 da_leastInfoStringRepresentationRelativeToParentURL:homeURL2];

      contactsProvider = [(CardDAVDaemonAccount *)self contactsProvider];
      v27 = v18;
      v20 = [NSArray arrayWithObjects:&v27 count:1];
      v21 = [contactsProvider contactsWithExternalHREFs:v20 container:v14];

      if ([v21 count])
      {
        firstObject = [v21 firstObject];
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

        firstObject = 0;
      }
    }

    v24 = v14;
    *container = v14;
  }

  return firstObject;
}

- (BOOL)_serverMeCard:(id)card hasChangedInContainer:(id)container
{
  containerCopy = container;
  v6 = containerCopy;
  LOBYTE(v7) = 0;
  if (card && containerCopy)
  {
    externalIdentifier = [card externalIdentifier];
    if (externalIdentifier)
    {
      syncData = [v6 syncData];
      if (syncData)
      {
        v10 = [NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:1 format:0 errorDescription:0];
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
        v16 = externalIdentifier;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_0, v12, v13, "Server me card: %@ - stored one: %@", &v15, 0x16u);
      }

      if (v11)
      {
        v7 = [v11 isEqual:externalIdentifier] ^ 1;
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

- (void)_updateStoredMeCardWithURL:(id)l
{
  lCopy = l;
  objc_storeStrong(&self->_meCardURL, l);
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    changeTrackingID = [(CardDAVDaemonAccount *)self changeTrackingID];
    [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
  }

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  containerProvider = [(CardDAVDaemonAccount *)self containerProvider];
  homeURL = [(CardDAVDaemonAccount *)self homeURL];
  v11 = [uRLByDeletingLastPathComponent da_leastInfoStringRepresentationRelativeToParentURL:homeURL];
  accountID = [(CardDAVDaemonAccount *)self accountID];
  v13 = [containerProvider containerWithExternalIdentifier:v11 forAccountWithExternalIdentifier:accountID];

  v14 = objc_alloc_init(CNSaveRequest);
  v15 = DALoggingwithCategory();
  v16 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v15, v16))
  {
    v22 = 138412546;
    v23 = lCopy;
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
    [databaseHelper abCloseDBAndSave:v13 != 0];
    goto LABEL_15;
  }

  syncData = [v13 syncData];
  if (!syncData || ([NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:1 format:0 errorDescription:0], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [NSMutableDictionary dictionaryWithCapacity:1];
  }

  homeURL2 = [(CardDAVDaemonAccount *)self homeURL];
  v20 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:homeURL2];
  [v18 setObject:v20 forKeyedSubscript:cdXMLCardDAVMeCard];

  v21 = [NSPropertyListSerialization dataFromPropertyList:v18 format:200 errorDescription:0];
  [v13 setSyncData:v21];
  if (+[DABehaviorOptions useContactsFramework])
  {
    [v13 updateSaveRequest:v14];
    [databaseHelper addSaveRequest:v14];
  }

  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    goto LABEL_14;
  }

  [databaseHelper executeAllSaveRequests];
LABEL_15:
}

- (void)_updateMeTaskGroup:(id)group didFinishWithError:(id)error
{
  groupCopy = group;
  errorCopy = error;
  v7 = [(CardDAVDaemonAccount *)self consumerForTask:groupCopy];
  v8 = v7;
  if (errorCopy)
  {
    [v7 failedToUpdateServerMeCardWithError:errorCopy];
  }

  else
  {
    cardURL = [groupCopy cardURL];
    [(CardDAVDaemonAccount *)self _updateStoredMeCardWithURL:cardURL];

    cardURL2 = [groupCopy cardURL];
    [v8 successfullyUpdatedServerMeCardWithURL:cardURL2];
  }
}

- (BOOL)_reallyUpdateMeCardWithWithConsumer:(id)consumer allowDistantUpdate:(BOOL)update
{
  consumerCopy = consumer;
  databaseHelper = [(CardDAVDaemonAccount *)self databaseHelper];
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
    changeTrackingID = [(CardDAVDaemonAccount *)self changeTrackingID];
    [databaseHelper abOpenDBWithClientIdentifier:changeTrackingID];
  }

  v47 = 0;
  v8 = [(CardDAVDaemonAccount *)self _copyCardFromMeIdentifierAndContainer:&v47];
  v9 = v47;
  v10 = objc_alloc_init(CNSaveRequest);
  if (v9)
  {
    contactsProvider = [(CardDAVDaemonAccount *)self contactsProvider];
    v12 = [contactsProvider meContactInContainer:v9];
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

  asPerson = [v12 asPerson];
  if (asPerson == [v8 asPerson])
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

    v45 = databaseHelper;

    if ([v8 legacyIdentifier] == -1)
    {
      externalIdentifier4 = DALoggingwithCategory();
      v35 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(externalIdentifier4, v35))
      {
        legacyIdentifier = [v8 legacyIdentifier];
        *buf = 138412546;
        v49 = v8;
        v50 = 1024;
        LODWORD(v51) = legacyIdentifier;
        _os_log_impl(&dword_0, externalIdentifier4, v35, "Can't set me card from distant me card %@, identifier %d", buf, 0x12u);
      }

      v22 = 0;
      v21 = 1;
      goto LABEL_38;
    }

    v46 = v10;
    v43 = consumerCopy;
    v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 legacyIdentifier]);
    stringValue = [v25 stringValue];
    [v9 setMeContactIdentifier:stringValue];

    syncData = [v9 syncData];
    if (!syncData || ([NSPropertyListSerialization propertyListFromData:syncData mutabilityOption:1 format:0 errorDescription:0], (externalIdentifier4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      externalIdentifier4 = [NSMutableDictionary dictionaryWithCapacity:1];
    }

    externalIdentifier = [v8 externalIdentifier];
    homeURL = [(CardDAVDaemonAccount *)self homeURL];
    v30 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:homeURL];

    homeURL2 = [(CardDAVDaemonAccount *)self homeURL];
    v32 = [v30 da_leastInfoStringRepresentationRelativeToParentURL:homeURL2];
    [externalIdentifier4 setObject:v32 forKeyedSubscript:cdXMLCardDAVMeCard];

    v33 = [NSPropertyListSerialization dataFromPropertyList:externalIdentifier4 format:200 errorDescription:0];
    [v9 setSyncData:v33];
    if (+[DABehaviorOptions useContactsFramework])
    {
      [v9 updateSaveRequest:v46];
      databaseHelper2 = [(CardDAVDaemonAccount *)self databaseHelper];
      [databaseHelper2 addSaveRequest:v46];
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

  v45 = databaseHelper;
  v43 = consumerCopy;
  externalIdentifier2 = [v12 externalIdentifier];
  externalIdentifier3 = [v8 externalIdentifier];
  v18 = [externalIdentifier2 isEqualToString:externalIdentifier3];

  externalIdentifier4 = DALoggingwithCategory();
  v20 = os_log_type_enabled(externalIdentifier4, v14);
  if (v18)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_0, externalIdentifier4, v14, "Not updating distant me card, externalIdentifier would not change", buf, 2u);
    }

    v21 = 0;
    v22 = 0;
LABEL_30:
    consumerCopy = v43;
    goto LABEL_31;
  }

  if (update)
  {
    consumerCopy = v43;
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_0, externalIdentifier4, v14, "Updating me card on server", buf, 2u);
    }

    externalIdentifier4 = [v12 externalIdentifier];
    if (externalIdentifier4)
    {
      homeURL3 = [(CardDAVDaemonAccount *)self homeURL];
      v39 = [externalIdentifier4 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:homeURL3];

      v22 = v39 != 0;
      if (v39)
      {
        v40 = [CardDAVUpdateMeCardTaskGroup alloc];
        taskManager = [(CardDAVDaemonAccount *)self taskManager];
        v42 = [v40 initWithAccountInfoProvider:self taskManager:taskManager homeURL:self->_homeURL cardURL:v39];

        consumerCopy = v43;
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
    consumerCopy = v43;
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_0, externalIdentifier4, v14, "Not updating distant me card, allowDistantUpdate is NO", buf, 2u);
    }
  }

  v21 = 0;
  v22 = 0;
LABEL_31:
  v10 = v46;
LABEL_38:

  databaseHelper = v45;
LABEL_39:
  if ((+[DABehaviorOptions useContactsFramework]& 1) == 0)
  {
LABEL_42:
    [databaseHelper abCloseDBAndSave:v21];
    goto LABEL_43;
  }

  if (v21)
  {
    [databaseHelper executeAllSaveRequests];
  }

LABEL_43:

  return v22;
}

- (BOOL)updateMeCardWithWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  LOBYTE(self) = [(CardDAVDaemonAccount *)self _reallyUpdateMeCardWithWithConsumer:consumerCopy allowDistantUpdate:+[DABehaviorOptions sendMeCardEverywhere]];

  return self;
}

@end