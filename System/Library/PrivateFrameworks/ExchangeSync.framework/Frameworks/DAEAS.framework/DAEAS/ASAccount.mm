@interface ASAccount
- (ASAccount)initWithBackingAccountInfo:(id)info;
- (ASTaskManager)taskManager;
- (BOOL)_generateAutodiscoverURLsForEmailAddress:(id)address explicitUsername:(id)username withConsumer:(id)consumer;
- (BOOL)_managedConfigurationDisablesNotes;
- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info;
- (BOOL)autodiscoverAccountConfigurationWithConsumer:(id)consumer;
- (BOOL)enabledForDADataclass:(int64_t)dataclass;
- (BOOL)folderItemsSyncTask:(id)task hasPartialAdded:(id)added removed:(id)removed modified:(id)modified addedResponse:(id)response modifiedResponse:(id)modifiedResponse removedResponse:(id)removedResponse fetchedResponse:(id)self0 moreAvailable:(BOOL)self1;
- (BOOL)isEqualToAccount:(id)account;
- (BOOL)isGoogleAccount;
- (BOOL)isHotmailAccount;
- (BOOL)itemOperationsTask:(id)task hasPartialResponses:(id)responses;
- (BOOL)upgradeAccount;
- (id)_defaultMailFolderWithDefaultType:(int)type fallbackType:(int)fallbackType fallbackName:(id)name;
- (id)_easEndPointFQDNFromURL:(id)l;
- (id)_externalInfoDictionary;
- (id)_visibleASFolders;
- (id)addressBookConstraintsPath;
- (id)asFolderWithId:(id)id;
- (id)calendarConstraintsPath;
- (id)changeTrackingID;
- (id)contactsFolders;
- (id)defaultContactsFolder;
- (id)defaultContainerIdentifierForDADataclass:(int64_t)dataclass;
- (id)defaultEventsFolder;
- (id)defaultNotesFolder;
- (id)defaultToDosFolder;
- (id)domainOnly;
- (id)emailAddresses;
- (id)eventsFolders;
- (id)folderHierarchy;
- (id)folderIdsForPersistentPush;
- (id)folderIdsForPersistentPushForClientID:(id)d;
- (id)folderIdsForPersistentPushForDataclasses:(int64_t)dataclasses clientID:(id)d;
- (id)folderIdsThatExternalClientsCareAbout;
- (id)folderIdsThatExternalClientsCareAboutForDataclasses:(int64_t)dataclasses;
- (id)folderWithId:(id)id;
- (id)foldersTag;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)notesFolders;
- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer;
- (id)policyManager;
- (id)protocol;
- (id)stateString;
- (id)toDosFolders;
- (id)usernameWithoutDomain;
- (id)visibleFolders;
- (int)mailNumberOfPastDaysToSync;
- (int)mailNumberOfPastDaysToSyncUpperLimit;
- (int)sendMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID useSmartTasksIfPossible:(BOOL)self0 sourceApplicationBundleIdentifier:(id)self1 consumer:(id)self2 context:(id)self3;
- (int)sendSmartMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID replaceOriginalMime:(BOOL)self0 sourceApplicationBundleIdentifier:(id)self1 consumer:(id)self2 context:(id)self3;
- (int)sniffableTypeForFolder:(id)folder;
- (int)supportsConversations;
- (int)supportsDraftFolderSync;
- (int)supportsEmailFlagging;
- (int)supportsMailboxSearch;
- (int)supportsSmartForwardReply;
- (int)supportsUniqueServerId;
- (void)_copyExchangeCalendarStore:(BOOL)store;
- (void)_explodeEmailAddress:(id)address outUsername:(id *)username outEmailAddress:(id *)emailAddress;
- (void)_fillOutActionsArray:(id)array responseArray:(id)responseArray withTask:(id)task added:(id)added removed:(id)removed modified:(id)modified preserved:(id)preserved addedResponse:(id)self0 modifiedResponse:(id)self1 removedResponse:(id)self2 fetchedResponse:(id)self3;
- (void)_getContextElementsForItemChangeType:(unint64_t)type dataclass:(int64_t)dataclass nativeContext:(id)context outContext:(id *)outContext outServerId:(id *)id;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelPendingSearchQuery:(id)query;
- (void)_reallyCancelSearchQuery:(id)query;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_removeInvitationsForMailboxFolderID:(id)d;
- (void)_silentlyTearDownAutodiscoveryTasks;
- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error;
- (void)accountDidUpdateProtocolVersion;
- (void)applyNewAccountProperties:(id)properties saveIfDifferent:(BOOL)different;
- (void)autodiscoverTask:(id)task completedWithStatus:(int64_t)status accountInfo:(id)info shouldRetryWithEmail:(id)email error:(id)error;
- (void)autodiscoverV2Task:(id)task completedWithStatus:(int64_t)status authorizationURI:(id)i easEndPoint:(id)point issuer:(id)issuer error:(id)error;
- (void)blowAwayFolderCache;
- (void)cleanupAccountFiles;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)fetchAttachmentTask:(id)task receivedData:(id)data ofContentType:(id)type;
- (void)folderItemsSyncTask:(id)task completedWithStatus:(int64_t)status error:(id)error newSyncKey:(id)key added:(id)added removed:(id)removed modified:(id)modified addedResponse:(id)self0 modifiedResponse:(id)self1 removedResponse:(id)self2 fetchedResponse:(id)self3;
- (void)getOptionsTask:(id)task completedWithStatus:(int64_t)status supportedCommands:(id)commands supportedVersions:(id)versions error:(id)error;
- (void)itemOperationsTask:(id)task completedWithStatus:(int64_t)status error:(id)error responses:(id)responses;
- (void)moveItemsTask:(id)task completedWithStatus:(int64_t)status error:(id)error movedItems:(id)items;
- (void)performSearchQuery:(id)query;
- (void)renewCredentialsWithHandler:(id)handler;
- (void)resetAccountID;
- (void)searchTask:(id)task finishedWithError:(id)error;
- (void)searchTask:(id)task returnedResults:(id)results;
- (void)searchTask:(id)task returnedTotalCount:(id)count;
- (void)sendMailTask:(id)task completedWithStatus:(int64_t)status error:(id)error;
- (void)setEncryptionIdentityPersistentReference:(id)reference;
- (void)setLastKnownProtocolVersion:(id)version;
- (void)setLastKnownProtocolVersion:(id)version save:(BOOL)save;
- (void)setPrimarySMTPAddress:(id)address emailAddresses:(id)addresses;
- (void)setProtocolVersion:(id)version;
- (void)setSavedFolderPathsThatClientsCareAbout:(id)about;
- (void)setSigningIdentityPersistentReference:(id)reference;
- (void)settingsTask:(id)task completedWithStatus:(int64_t)status error:(id)error response:(id)response;
@end

@implementation ASAccount

- (ASAccount)initWithBackingAccountInfo:(id)info
{
  v11.receiver = self;
  v11.super_class = ASAccount;
  v3 = [(ASAccount *)&v11 initWithBackingAccountInfo:info];
  if (v3)
  {
    if (initWithBackingAccountInfo__onceToken != -1)
    {
      [ASAccount initWithBackingAccountInfo:];
    }

    v4 = objc_opt_new();
    searchTaskSet = v3->_searchTaskSet;
    v3->_searchTaskSet = v4;

    v6 = objc_opt_new();
    autodiscoveryTasks = v3->_autodiscoveryTasks;
    v3->_autodiscoveryTasks = v6;

    v8 = objc_opt_new();
    autodiscoverTaskLock = v3->_autodiscoverTaskLock;
    v3->_autodiscoverTaskLock = v8;

    v3->_useHTTPForTesting = 0;
  }

  return v3;
}

void __40__ASAccount_initWithBackingAccountInfo___block_invoke()
{
  v0 = [MEMORY[0x277D03800] sharedLogger];
  [v0 registerWithiCalendar];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASAccount;
  [(ASAccount *)&v4 dealloc];
}

- (id)changeTrackingID
{
  v2 = MEMORY[0x277CCACA8];
  persistentUUID = [(ASAccount *)self persistentUUID];
  v4 = [v2 stringWithFormat:@"%@%@", @"com.apple.dataaccessd-", persistentUUID];

  return v4;
}

- (id)policyManager
{
  taskManager = [(ASAccount *)self taskManager];
  policyManager = [taskManager policyManager];

  return policyManager;
}

- (ASTaskManager)taskManager
{
  v3 = *MEMORY[0x277D03808];
  v4 = *(&self->super.super.super.isa + v3);
  if (!v4)
  {
    _newPolicyManager = [(ASAccount *)self _newPolicyManager];
    v6 = [[ASTaskManager alloc] initWithAccount:self policyManager:_newPolicyManager];
    v7 = *(&self->super.super.super.isa + v3);
    *(&self->super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.isa + v3);
  }

  return v4;
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  self->_isValidating = 1;
  consumerCopy = consumer;
  v6 = objc_opt_new();
  [v6 setDelegate:self];
  [(ASAccount *)self setConsumer:consumerCopy forTask:v6];

  taskManager = [(ASAccount *)self taskManager];
  [taskManager submitExclusiveTask:v6 toFrontOfQueue:1];
}

- (void)getOptionsTask:(id)task completedWithStatus:(int64_t)status supportedCommands:(id)commands supportedVersions:(id)versions error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  commandsCopy = commands;
  versionsCopy = versions;
  errorCopy = error;
  taskCopy = task;
  v16 = [(ASAccount *)self consumerForTask:taskCopy];
  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v17, v18))
  {
    v22 = 138412290;
    v23 = versionsCopy;
    _os_log_impl(&dword_24A0AC000, v17, v18, "supported versions: %@", &v22, 0xCu);
  }

  v19 = DALoggingwithCategory();
  if (os_log_type_enabled(v19, v18))
  {
    v22 = 138412290;
    v23 = commandsCopy;
    _os_log_impl(&dword_24A0AC000, v19, v18, "supported commands: %@", &v22, 0xCu);
  }

  v20 = bestProtocolVersionFromVersions(versionsCopy);
  [(ASAccount *)self setProtocolVersion:v20];
  self->_isValidating = 0;
  [v16 account:self isValid:status == 2 validationError:errorCopy];

  [(ASAccount *)self removeConsumerForTask:taskCopy];
  v21 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v6.receiver = self;
  v6.super_class = ASAccount;
  stateString = [(ASAccount *)&v6 stateString];
  v4 = [stateString stringByAppendingFormat:@" is %@\n", self];

  return v4;
}

- (BOOL)enabledForDADataclass:(int64_t)dataclass
{
  isHotmailAccount = [(ASAccount *)self isHotmailAccount];
  if (dataclass == 8 && isHotmailAccount)
  {
    return 0;
  }

  if (dataclass == 32)
  {
    if ([(ASAccount *)self isGoogleAccount])
    {
      return 0;
    }

    protocol = [(ASAccount *)self protocol];
    supportsNoteSyncing = [protocol supportsNoteSyncing];

    if (!supportsNoteSyncing)
    {
      return 0;
    }
  }

  v9.receiver = self;
  v9.super_class = ASAccount;
  return [(ASAccount *)&v9 enabledForDADataclass:dataclass];
}

- (BOOL)upgradeAccount
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = ASAccount;
  upgradeAccount = [(ASAccount *)&v24 upgradeAccount];
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277D03988];
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v6))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_24A0AC000, v4, v6, "didReEnableDataclassesForEDUMode Checking to See if we need to Re-Enable Activesync account %@", buf, 0xCu);
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if (![mEMORY[0x277D262A0] isEphemeralMultiUser])
  {
    goto LABEL_14;
  }

  backingAccountInfo = [(ASAccount *)self backingAccountInfo];
  accountType = [backingAccountInfo accountType];
  identifier = [accountType identifier];
  if (![identifier isEqualToString:*MEMORY[0x277CB8C00]])
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  policyManager = [(ASAccount *)self policyManager];
  currentPolicyKey = [policyManager currentPolicyKey];
  if (![currentPolicyKey isEqualToString:@"0"])
  {

    goto LABEL_13;
  }

  [(ASAccount *)self backingAccountInfo];
  v13 = v23 = upgradeAccount;
  enabledDataclasses = [v13 enabledDataclasses];
  v22 = [enabledDataclasses count];

  upgradeAccount = v23;
  if (!v22)
  {
    v15 = DALoggingwithCategory();
    v16 = *(v5 + 5);
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 0;
      _os_log_impl(&dword_24A0AC000, v15, v16, "EDU Mode: Inactive Exchange account due to no policy information", buf, 2u);
    }

    v17 = DALoggingwithCategory();
    if (os_log_type_enabled(v17, v16))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_24A0AC000, v17, v16, "********* RE-Enabling All Exchange Dataclasses***** %@", buf, 0xCu);
    }

    upgradeAccount = 1;
    [(ASAccount *)self setEnabled:1 forDADataclass:1];
    [(ASAccount *)self setEnabled:1 forDADataclass:2];
    [(ASAccount *)self setEnabled:1 forDADataclass:4];
    [(ASAccount *)self setEnabled:1 forDADataclass:16];
    [(ASAccount *)self setEnabled:1 forDADataclass:32];
    goto LABEL_18;
  }

LABEL_15:
  v18 = DALoggingwithCategory();
  v19 = *(v5 + 5);
  if (os_log_type_enabled(v18, v19))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_24A0AC000, v18, v19, "Account %@ Is Not Re-Enabled", buf, 0xCu);
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return upgradeAccount;
}

- (void)resetAccountID
{
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  [folderHierarchy blowAwayFolderCache];

  v4.receiver = self;
  v4.super_class = ASAccount;
  [(ASAccount *)&v4 resetAccountID];
}

- (id)folderHierarchy
{
  folderHierarchy = self->_folderHierarchy;
  if (!folderHierarchy)
  {
    v4 = [[ASFolderHierarchy alloc] initWithAccount:self];
    v5 = self->_folderHierarchy;
    self->_folderHierarchy = v4;

    [(ASFolderHierarchy *)self->_folderHierarchy setDelegate:self];
    folderHierarchy = self->_folderHierarchy;
  }

  return folderHierarchy;
}

- (id)visibleFolders
{
  _visibleASFolders = [(ASAccount *)self _visibleASFolders];
  v3 = DAFolderArrayForASFolderArray(_visibleASFolders);

  return v3;
}

- (id)_visibleASFolders
{
  v44 = *MEMORY[0x277D85DE8];
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  [folderHierarchy folders];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v3 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  v7 = *v39;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v39 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v38 + 1) + 8 * i);
      if ([v9 folderType] == 4)
      {
        v10 = v5;
        v5 = v9;
        v11 = v6;
LABEL_8:
        v12 = v9;

        v6 = v11;
        goto LABEL_11;
      }

      if ([v9 folderType] == 12)
      {
        displayName = [v9 displayName];
        v14 = [displayName isEqualToString:@"Sync Issues"];

        v10 = v6;
        v11 = v9;
        if (v14)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      if (v6 && v5)
      {
        goto LABEL_17;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v4);
LABEL_17:

  v28 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v29 = obj;
  obja = [v29 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (obja)
  {
    v30 = *v35;
    do
    {
      for (j = 0; j != obja; j = j + 1)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v29);
        }

        v16 = *(*(&v34 + 1) + 8 * j);
        v17 = v16 != v6;
        if ([(ASAccount *)self syncDefaultFoldersOnly])
        {
          v18 = [v16 folderType] - 13;
          if (v18 <= 4)
          {
            v17 = (v16 != v6) & ~(0x17u >> v18);
          }
        }

        parentID = [v16 parentID];
        v20 = parentID;
        if (parentID)
        {
          v21 = v17 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          parentID2 = parentID;
        }

        else
        {
          do
          {
            v23 = [folderHierarchy folderForID:v20];
            v24 = v23;
            if (v23)
            {
              if (v23 == v5)
              {
                folderType = [v16 folderType];
                if (folderType >= 0x12)
                {
                  LOBYTE(v17) = 1;
                }

                else
                {
                  LOBYTE(v17) = 0x1187Fu >> folderType;
                }
              }

              else
              {
                LOBYTE(v17) = v23 != v6;
              }
            }

            else
            {
              LOBYTE(v17) = 1;
            }

            parentID2 = [v24 parentID];

            if (!parentID2)
            {
              break;
            }

            v20 = parentID2;
          }

          while ((v17 & 1) != 0);
        }

        if (v17)
        {
          [v28 addObject:v16];
        }
      }

      obja = [v29 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (obja);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v28;
}

- (int)sniffableTypeForFolder:(id)folder
{
  v32 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  folders = [folderHierarchy folders];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [folders countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v28;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(folders);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      folderType = [v13 folderType];
      if (folderType == 5)
      {
        serverID = [v13 serverID];
        v16 = v10;
        v10 = serverID;
      }

      else
      {
        if (folderType != 4)
        {
          continue;
        }

        serverID2 = [v13 serverID];
        v16 = v9;
        v9 = serverID2;
      }
    }

    v8 = [folders countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v8);
LABEL_15:
  v18 = folderCopy;
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    while (1)
    {
      folderID = [v20 folderID];
      if ([v9 isEqualToString:folderID])
      {
        v24 = 2;
        goto LABEL_23;
      }

      if ([v10 isEqualToString:folderID])
      {
        break;
      }

      parentFolderID = [v20 parentFolderID];
      v23 = [(ASAccount *)self folderWithId:parentFolderID];

      v20 = v23;
      if (!v23)
      {
        goto LABEL_20;
      }
    }

    v24 = 0;
LABEL_23:
  }

  else
  {
LABEL_20:
    v24 = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)defaultContactsFolder
{
  v21 = *MEMORY[0x277D85DE8];
  [(ASAccount *)self _visibleASFolders];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v4 = v2;
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *v17;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v16 + 1) + 8 * i);
      folderType = [v7 folderType];
      if (folderType == 14)
      {
        if (v4)
        {
          displayName = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_CONTACTS_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [displayName isEqual:v11];

          if (v12)
          {
            v13 = v7;

            v4 = v13;
          }
        }

        else
        {
          v4 = v7;
        }
      }

      else if (folderType == 9)
      {
        v3 = CreateDAFolderForASFolder(v7);

        goto LABEL_18;
      }
    }

    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v3);

  if (v4)
  {
    v3 = CreateDAFolderForASFolder(v4);
LABEL_18:

    goto LABEL_19;
  }

  v3 = 0;
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)contactsFolders
{
  v20 = *MEMORY[0x277D85DE8];
  _visibleASFolders = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = _visibleASFolders;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        folderType = [v10 folderType];
        if (folderType == 9 || folderType == 14 && ![(ASAccount *)self syncDefaultFoldersOnly])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = DAFolderArrayForASFolderArray(v4);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)defaultEventsFolder
{
  v21 = *MEMORY[0x277D85DE8];
  [(ASAccount *)self _visibleASFolders];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v4 = v2;
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *v17;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v16 + 1) + 8 * i);
      folderType = [v7 folderType];
      if (folderType == 13)
      {
        if (v4)
        {
          displayName = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_EVENT_CALENDAR_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [displayName isEqual:v11];

          if (v12)
          {
            v13 = v7;

            v4 = v13;
          }
        }

        else
        {
          v4 = v7;
        }
      }

      else if (folderType == 8)
      {
        v3 = CreateDAFolderForASFolder(v7);

        goto LABEL_18;
      }
    }

    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v3);

  if (v4)
  {
    v3 = CreateDAFolderForASFolder(v4);
LABEL_18:

    goto LABEL_19;
  }

  v3 = 0;
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)eventsFolders
{
  v20 = *MEMORY[0x277D85DE8];
  _visibleASFolders = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = _visibleASFolders;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        folderType = [v10 folderType];
        if (folderType == 8 || folderType == 13 && ![(ASAccount *)self syncDefaultFoldersOnly])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = DAFolderArrayForASFolderArray(v4);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)defaultToDosFolder
{
  v21 = *MEMORY[0x277D85DE8];
  [(ASAccount *)self _visibleASFolders];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v4 = v2;
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *v17;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v16 + 1) + 8 * i);
      folderType = [v7 folderType];
      if (folderType == 15)
      {
        if (v4)
        {
          displayName = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_TASKS_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [displayName isEqual:v11];

          if (v12)
          {
            v13 = v7;

            v4 = v13;
          }
        }

        else
        {
          v4 = v7;
        }
      }

      else if (folderType == 7)
      {
        v3 = CreateDAFolderForASFolder(v7);

        goto LABEL_18;
      }
    }

    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v3);

  if (v4)
  {
    v3 = CreateDAFolderForASFolder(v4);
LABEL_18:

    goto LABEL_19;
  }

  v3 = 0;
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)toDosFolders
{
  v20 = *MEMORY[0x277D85DE8];
  _visibleASFolders = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = _visibleASFolders;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        folderType = [v10 folderType];
        if (folderType == 7 || folderType == 15 && ![(ASAccount *)self syncDefaultFoldersOnly])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = DAFolderArrayForASFolderArray(v4);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)defaultNotesFolder
{
  v21 = *MEMORY[0x277D85DE8];
  [(ASAccount *)self _visibleASFolders];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v19 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v4 = v2;
    goto LABEL_18;
  }

  v4 = 0;
  v5 = *v17;
  do
  {
    for (i = 0; i != v3; i = i + 1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v16 + 1) + 8 * i);
      folderType = [v7 folderType];
      if (folderType == 17)
      {
        if (v4)
        {
          displayName = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_NOTES_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [displayName isEqual:v11];

          if (v12)
          {
            v13 = v7;

            v4 = v13;
          }
        }

        else
        {
          v4 = v7;
        }
      }

      else if (folderType == 10)
      {
        v3 = CreateDAFolderForASFolder(v7);

        goto LABEL_18;
      }
    }

    v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v3);

  if (v4)
  {
    v3 = CreateDAFolderForASFolder(v4);
LABEL_18:

    goto LABEL_19;
  }

  v3 = 0;
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)notesFolders
{
  v20 = *MEMORY[0x277D85DE8];
  _visibleASFolders = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = _visibleASFolders;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        folderType = [v10 folderType];
        if (folderType == 10 || folderType == 17 && ![(ASAccount *)self syncDefaultFoldersOnly])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = DAFolderArrayForASFolderArray(v4);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_defaultMailFolderWithDefaultType:(int)type fallbackType:(int)fallbackType fallbackName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  [folderHierarchy folders];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v28 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v23 = folderHierarchy;
    v12 = 0;
    v13 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        folderType = [v15 folderType];
        if (folderType == fallbackType)
        {
          displayName = [v15 displayName];
          v18 = [displayName isEqualToString:nameCopy];

          if (v18)
          {
            v19 = v15;

            v12 = v19;
          }
        }

        else if (folderType == type)
        {
          v20 = CreateDAFolderForASFolder(v15);

          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    if (v12)
    {
      v20 = CreateDAFolderForASFolder(v12);
LABEL_15:
      folderHierarchy = v23;
      goto LABEL_17;
    }

    v20 = 0;
    folderHierarchy = v23;
  }

  else
  {
    v20 = 0;
    v12 = v9;
LABEL_17:
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)foldersTag
{
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  foldersTag = [folderHierarchy foldersTag];

  return foldersTag;
}

- (void)blowAwayFolderCache
{
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  [folderHierarchy blowAwayFolderCache];
}

- (id)asFolderWithId:(id)id
{
  idCopy = id;
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  v6 = [folderHierarchy folderForID:idCopy];

  return v6;
}

- (id)folderWithId:(id)id
{
  v3 = [(ASAccount *)self asFolderWithId:id];
  v4 = CreateDAFolderForASFolder(v3);

  return v4;
}

- (id)folderIdsThatExternalClientsCareAbout
{
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  folderIdsThatExternalClientsCareAbout = [folderHierarchy folderIdsThatExternalClientsCareAbout];

  return folderIdsThatExternalClientsCareAbout;
}

- (id)folderIdsThatExternalClientsCareAboutForDataclasses:(int64_t)dataclasses
{
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  v5 = [folderHierarchy folderIdsThatExternalClientsCareAboutForDataclasses:dataclasses];

  return v5;
}

- (id)folderIdsForPersistentPush
{
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  folderIdsForPersistentPush = [folderHierarchy folderIdsForPersistentPush];

  return folderIdsForPersistentPush;
}

- (id)folderIdsForPersistentPushForClientID:(id)d
{
  dCopy = d;
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  v6 = [folderHierarchy folderIdsForPersistentPushForClientID:dCopy];

  return v6;
}

- (id)folderIdsForPersistentPushForDataclasses:(int64_t)dataclasses clientID:(id)d
{
  dCopy = d;
  folderHierarchy = [(ASAccount *)self folderHierarchy];
  v8 = [folderHierarchy folderIdsForPersistentPushForDataclasses:dataclasses clientID:dCopy];

  return v8;
}

- (id)defaultContainerIdentifierForDADataclass:(int64_t)dataclass
{
  v3 = 0;
  if (dataclass <= 3)
  {
    if (dataclass == 1)
    {
      inboxFolder = [(ASAccount *)self inboxFolder];
    }

    else
    {
      if (dataclass != 2)
      {
        goto LABEL_13;
      }

      inboxFolder = [(ASAccount *)self defaultContactsFolder];
    }
  }

  else
  {
    switch(dataclass)
    {
      case 4:
        inboxFolder = [(ASAccount *)self defaultEventsFolder];
        break;
      case 16:
        inboxFolder = [(ASAccount *)self defaultToDosFolder];
        break;
      case 32:
        inboxFolder = [(ASAccount *)self defaultNotesFolder];
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = inboxFolder;
LABEL_13:
  folderID = [v3 folderID];

  return folderID;
}

- (void)_getContextElementsForItemChangeType:(unint64_t)type dataclass:(int64_t)dataclass nativeContext:(id)context outContext:(id *)outContext outServerId:(id *)id
{
  if (dataclass == 1)
  {
    *outContext = [[ASMailMessage alloc] initWithASEmailItem:context];
  }

  else
  {
    contextCopy = context;
    *outContext = context;
    contextCopy2 = context;
  }

  serverID = [context serverID];

  v13 = serverID;
  *id = serverID;
}

- (void)_fillOutActionsArray:(id)array responseArray:(id)responseArray withTask:(id)task added:(id)added removed:(id)removed modified:(id)modified preserved:(id)preserved addedResponse:(id)self0 modifiedResponse:(id)self1 removedResponse:(id)self2 fetchedResponse:(id)self3
{
  arrayCopy = array;
  responseArrayCopy = responseArray;
  taskCopy = task;
  addedCopy = added;
  removedCopy = removed;
  modifiedCopy = modified;
  preservedCopy = preserved;
  responseCopy = response;
  modifiedResponseCopy = modifiedResponse;
  removedResponseCopy = removedResponse;
  fetchedResponseCopy = fetchedResponse;
  v22 = [addedCopy count];
  if (v22)
  {
    v23 = v22;
    for (i = 0; i != v23; ++i)
    {
      dataclass = [taskCopy dataclass];
      v26 = [addedCopy objectAtIndexedSubscript:i];
      v109 = 0;
      v110[0] = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:0 dataclass:dataclass nativeContext:v26 outContext:v110 outServerId:&v109];
      v27 = v110[0];
      v28 = v109;

      v29 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v27 serverId:v28];
      [arrayCopy addObject:v29];
    }
  }

  v30 = [modifiedCopy count];
  if (v30)
  {
    v31 = v30;
    for (j = 0; j != v31; ++j)
    {
      dataclass2 = [taskCopy dataclass];
      v34 = [modifiedCopy objectAtIndexedSubscript:j];
      v107 = 0;
      v108 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:1 dataclass:dataclass2 nativeContext:v34 outContext:&v108 outServerId:&v107];
      v35 = v108;
      v36 = v107;

      v37 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v35 serverId:v36];
      [arrayCopy addObject:v37];
    }
  }

  v38 = [removedCopy count];
  if (v38)
  {
    v39 = v38;
    for (k = 0; k != v39; ++k)
    {
      dataclass3 = [taskCopy dataclass];
      v42 = [removedCopy objectAtIndexedSubscript:k];
      v105 = 0;
      v106 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:2 dataclass:dataclass3 nativeContext:v42 outContext:&v106 outServerId:&v105];
      v43 = v106;
      v44 = v105;

      v45 = [[ASAction alloc] initWithItemChangeType:2 changedItem:v43 serverId:v44];
      [arrayCopy addObject:v45];
    }
  }

  if ([preservedCopy count])
  {
    [arrayCopy addObjectsFromArray:preservedCopy];
  }

  v89 = arrayCopy;
  v46 = [responseCopy count];
  v47 = responseArrayCopy;
  if (v46)
  {
    v48 = v46;
    for (m = 0; m != v48; ++m)
    {
      v50 = [responseCopy objectAtIndexedSubscript:m];
      status = [v50 status];
      v52 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status, "intValue")}];

      dataclass4 = [taskCopy dataclass];
      v103 = 0;
      v104 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:0 dataclass:dataclass4 nativeContext:v50 outContext:&v104 outServerId:&v103];
      v54 = v104;
      v55 = v103;
      v56 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:0 changedItem:v54 serverId:v55 status:v52];

      [responseArrayCopy addObject:v56];
    }
  }

  v57 = modifiedResponseCopy;
  v58 = [modifiedResponseCopy count];
  if (v58)
  {
    v59 = v58;
    for (n = 0; n != v59; ++n)
    {
      v61 = [v57 objectAtIndexedSubscript:n];
      status2 = [v61 status];
      v63 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status2, "intValue")}];

      dataclass5 = [taskCopy dataclass];
      v101 = 0;
      v102 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:1 dataclass:dataclass5 nativeContext:v61 outContext:&v102 outServerId:&v101];
      v65 = v102;
      v66 = v101;
      v67 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:1 changedItem:v65 serverId:v66 status:v63];

      [responseArrayCopy addObject:v67];
      v57 = modifiedResponseCopy;
    }
  }

  v68 = [removedResponseCopy count];
  if (v68)
  {
    v69 = v68;
    for (ii = 0; ii != v69; ++ii)
    {
      v71 = [removedResponseCopy objectAtIndexedSubscript:ii];
      status3 = [v71 status];
      v73 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status3, "intValue")}];

      dataclass6 = [taskCopy dataclass];
      v99 = 0;
      v100 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:2 dataclass:dataclass6 nativeContext:v71 outContext:&v100 outServerId:&v99];
      v75 = v100;
      v76 = v99;
      v77 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:2 changedItem:v75 serverId:v76 status:v73];

      v47 = responseArrayCopy;
      [responseArrayCopy addObject:v77];
    }
  }

  v78 = [fetchedResponseCopy count];
  if (v78)
  {
    v79 = v78;
    for (jj = 0; jj != v79; ++jj)
    {
      v81 = [fetchedResponseCopy objectAtIndexedSubscript:jj];
      status4 = [v81 status];
      v83 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status4, "intValue")}];

      dataclass7 = [taskCopy dataclass];
      v97 = 0;
      v98 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:3 dataclass:dataclass7 nativeContext:v81 outContext:&v98 outServerId:&v97];
      v85 = v98;
      v86 = v97;
      v87 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:3 changedItem:v85 serverId:v86 status:v83];

      v47 = responseArrayCopy;
      [responseArrayCopy addObject:v87];
    }
  }
}

- (void)_removeInvitationsForMailboxFolderID:(id)d
{
  dCopy = d;
  v4 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASAccount *)self accountID];
  changeTrackingID = [(ASAccount *)self changeTrackingID];
  [v4 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v7 = +[ASLocalDBHelper sharedInstance];
  accountID2 = [(ASAccount *)self accountID];
  v9 = [v7 calDatabaseForAccountID:accountID2];

  if (v9)
  {
    v10 = CalDatabaseCopyOfAllStores();
    v11 = 0;
    if ([v10 count])
    {
      v12 = 0;
      do
      {
        [v10 objectAtIndexedSubscript:v12];

        if (CalStoreGetType() == 1)
        {
          v13 = CalDatabaseCopyOfAllEventActionsWithFolderIDInStore();
          if ([v13 count])
          {
            v14 = 0;
            do
            {
              [v13 objectAtIndexedSubscript:v14];

              v15 = CalEventActionCopyOwningEvent();
              if (v15)
              {
                v16 = v15;
                v17 = CalCalendarItemCopyExternalID();
                if (v17)
                {
                  CalEventRemoveEventAction();
                }

                else
                {
                  CalRemoveEventAndDetachedEvents();
                }

                CFRelease(v16);

                v11 = 1;
              }

              ++v14;
            }

            while (v14 < [v13 count]);
          }
        }

        ++v12;
      }

      while (v12 < [v10 count]);
    }
  }

  else
  {
    v11 = 0;
  }

  v18 = +[ASLocalDBHelper sharedInstance];
  accountID3 = [(ASAccount *)self accountID];
  [v18 calCloseDatabaseForAccountID:accountID3 save:v11 & 1];
}

- (void)folderItemsSyncTask:(id)task completedWithStatus:(int64_t)status error:(id)error newSyncKey:(id)key added:(id)added removed:(id)removed modified:(id)modified addedResponse:(id)self0 modifiedResponse:(id)self1 removedResponse:(id)self2 fetchedResponse:(id)self3
{
  v136[1] = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  keyCopy = key;
  addedCopy = added;
  removedCopy = removed;
  modifiedCopy = modified;
  responseCopy = response;
  modifiedResponseCopy = modifiedResponse;
  removedResponseCopy = removedResponse;
  fetchedResponseCopy = fetchedResponse;
  selfCopy = self;
  v126 = taskCopy;
  selfCopy2 = self;
  v27 = modifiedResponseCopy;
  v28 = removedCopy;
  v123 = [(ASAccount *)selfCopy2 consumerForTask:taskCopy];
  v116 = errorCopy;
  v29 = statusAndErrorIndicatePersistentFolderSyncFailure();
  v119 = addedCopy;
  v30 = [addedCopy count];
  v122 = modifiedCopy;
  v31 = [modifiedCopy count];
  v121 = v28;
  v32 = v31 + v30 + [v28 count];
  v118 = responseCopy;
  v33 = [responseCopy count];
  v34 = v32 + v33 + [v27 count];
  v117 = removedResponseCopy;
  v35 = removedResponseCopy;
  v36 = fetchedResponseCopy;
  v37 = [v35 count];
  v38 = (v34 + v37 + [fetchedResponseCopy count]);
  v39 = DALoggingwithCategory();
  v40 = MEMORY[0x277D03988];
  v41 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v39, v41))
  {
    *buf = 134217984;
    v129 = v38;
    _os_log_impl(&dword_24A0AC000, v39, v41, "responseItemsCount: %lu", buf, 0xCu);
  }

  folderID = [taskCopy folderID];
  [(ASAccount *)selfCopy _reportFolderItemSyncSuccess:v29 ^ 1u forFolderWithID:folderID withItemsCount:v38];

  ADClientAddValueForScalarKey();
  v43 = 0x277CBE000uLL;
  if (status != 2)
  {
    v62 = v123;
    [v123 actionFailed:status forTask:taskCopy error:errorCopy];
    v63 = selfCopy;
    goto LABEL_17;
  }

  ADClientAddValueForScalarKey();
  ADClientAddValueForScalarKey();
  ADClientPushValueForDistributionKey();
  previousSyncKey = [taskCopy previousSyncKey];
  if (!previousSyncKey || (v45 = previousSyncKey, [taskCopy previousSyncKey], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", @"0"), v46, v45, v47))
  {
    if ([taskCopy dataclass] == 1)
    {
      folderID2 = [taskCopy folderID];
      [(ASAccount *)selfCopy _removeInvitationsForMailboxFolderID:folderID2];
    }

    v49 = [taskCopy copy];
    [v49 setPreviousSyncKey:keyCopy];
    [v49 setWillUpdate:{objc_msgSend(taskCopy, "willUpdate")}];
    [v49 setDelegate:selfCopy];
    [v49 setIsInitialSync:1];
    [v49 setIsInitialBootstrapSync:1];
    v50 = [(ASAccount *)selfCopy consumerForTask:taskCopy];
    [(ASAccount *)selfCopy setConsumer:v50 forTask:v49];

    folderID3 = [taskCopy folderID];
    v136[0] = folderID3;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:1];
    [(ASAccount *)selfCopy suspendMonitoringFoldersWithIDs:v52];

    taskManager = [(ASAccount *)selfCopy taskManager];
    [taskManager submitQueuedTask:v49];
    goto LABEL_10;
  }

  v63 = selfCopy;
  v53 = v123;
  if (v123)
  {
    v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v122, "count") + objc_msgSend(v119, "count") + objc_msgSend(v121, "count")}];
    v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count") + objc_msgSend(v118, "count") + objc_msgSend(v117, "count")}];
    preservedActions = [taskCopy preservedActions];
    taskManager = v67;
    [(ASAccount *)selfCopy _fillOutActionsArray:v49 responseArray:v67 withTask:taskCopy added:v119 removed:v121 modified:v122 preserved:preservedActions addedResponse:v118 modifiedResponse:v27 removedResponse:v117 fetchedResponse:fetchedResponseCopy];

    dataclass = [taskCopy dataclass];
    if (dataclass <= 3)
    {
      v40 = MEMORY[0x277D03988];
      if (dataclass == 1)
      {
        ADClientAddValueForScalarKey();
        ADClientAddValueForScalarKey();
        ADClientPushValueForDistributionKey();
        v36 = fetchedResponseCopy;
        v43 = 0x277CBE000;
        if (objc_opt_respondsToSelector())
        {
          if (!keyCopy || ![keyCopy length] || objc_msgSend(keyCopy, "isEqualToString:", @"0"))
          {
            v81 = DALoggingwithCategory();
            v82 = *(v40 + 3);
            if (os_log_type_enabled(v81, v82))
            {
              folderID4 = [taskCopy folderID];
              sentBytesCount = [taskCopy sentBytesCount];
              receivedBytesCount = [taskCopy receivedBytesCount];
              *buf = 138413058;
              v129 = folderID4;
              v130 = 2112;
              v131 = keyCopy;
              v132 = 2048;
              v133 = sentBytesCount;
              v134 = 2048;
              v135 = receivedBytesCount;
              _os_log_impl(&dword_24A0AC000, v81, v82, "SyncKey 0: sending sync result for mail folder :%@, syncKey: %@, bytes sent: %lld, bytes received: %lld", buf, 0x2Au);
            }
          }

          folderID5 = [taskCopy folderID];
          [taskCopy percentComplete];
          v72 = folderID5;
          [v123 resultsForMailbox:folderID5 newTag:keyCopy actions:v49 responses:taskManager percentComplete:objc_msgSend(taskCopy moreAvailable:"moreAvailable") sentBytesCount:objc_msgSend(taskCopy receivedBytesCount:{"sentBytesCount"), v86, objc_msgSend(taskCopy, "receivedBytesCount")}];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_10;
          }

          if (!keyCopy || ![keyCopy length] || objc_msgSend(keyCopy, "isEqualToString:", @"0"))
          {
            v87 = DALoggingwithCategory();
            v88 = *(v40 + 3);
            if (os_log_type_enabled(v87, v88))
            {
              folderID6 = [taskCopy folderID];
              *buf = 138413058;
              v129 = folderID6;
              v130 = 2112;
              v131 = keyCopy;
              v132 = 2112;
              v133 = v49;
              v134 = 2112;
              v135 = taskManager;
              _os_log_impl(&dword_24A0AC000, v87, v88, "SyncKey 0: sending sync result for mail folder :%@ -> %@ (%@,%@)", buf, 0x2Au);
            }
          }

          folderID7 = [taskCopy folderID];
          [taskCopy percentComplete];
          v72 = folderID7;
          [v123 resultsForMailbox:folderID7 newTag:keyCopy actions:v49 responses:taskManager percentComplete:objc_msgSend(taskCopy moreAvailable:{"moreAvailable"), v91}];
        }

        goto LABEL_36;
      }

      v36 = fetchedResponseCopy;
      v43 = 0x277CBE000;
      if (dataclass != 2)
      {
        goto LABEL_10;
      }

      ADClientAddValueForScalarKey();
      ADClientAddValueForScalarKey();
      ADClientPushValueForDistributionKey();
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_10;
      }

      folderID8 = [taskCopy folderID];
      previousSyncKeyForAgent = [taskCopy previousSyncKeyForAgent];
      context = [taskCopy context];
      isInitialSync = [taskCopy isInitialSync];
      moreAvailable = [taskCopy moreAvailable];
      moreLocalChangesAvailable = [taskCopy moreLocalChangesAvailable];
      v72 = folderID8;
      pushedActions = [taskCopy pushedActions];
      BYTE2(v93) = moreLocalChangesAvailable;
      BYTE1(v93) = moreAvailable;
      LOBYTE(v93) = isInitialSync;
      context3 = context;
      v73 = previousSyncKeyForAgent;
      [v123 syncResultForContactsFolder:v72 newTag:keyCopy previousTag:previousSyncKeyForAgent newSyncToken:0 actions:v49 results:taskManager changeIdContext:context isInitialSync:v93 moreAvailable:pushedActions moreLocalChangesAvailable:? pushedActions:?];

      goto LABEL_29;
    }

    v40 = MEMORY[0x277D03988];
    if (dataclass == 4)
    {
      ADClientAddValueForScalarKey();
      ADClientAddValueForScalarKey();
      ADClientPushValueForDistributionKey();
      v36 = fetchedResponseCopy;
      v43 = 0x277CBE000;
      if (objc_opt_respondsToSelector())
      {
        folderID9 = [taskCopy folderID];
        previousSyncKeyForAgent2 = [taskCopy previousSyncKeyForAgent];
        context2 = [taskCopy context];
        isInitialSync2 = [taskCopy isInitialSync];
        moreAvailable2 = [taskCopy moreAvailable];
        moreLocalChangesAvailable2 = [taskCopy moreLocalChangesAvailable];
        pushedActions2 = [taskCopy pushedActions];
        v72 = folderID9;
        rejectedServerIds = [taskCopy rejectedServerIds];
        BYTE2(v92) = moreLocalChangesAvailable2;
        BYTE1(v92) = moreAvailable2;
        LOBYTE(v92) = isInitialSync2;
        v79 = context2;
        v73 = previousSyncKeyForAgent2;
        [v123 syncResultForEventsFolder:v72 newTag:keyCopy previousTag:previousSyncKeyForAgent2 actions:v49 results:taskManager changeIdContext:context2 isInitialSync:v92 moreAvailable:pushedActions2 moreLocalChangesAvailable:rejectedServerIds pushedActions:? rejectedServerIds:?];
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      v36 = fetchedResponseCopy;
      v43 = 0x277CBE000;
      if (dataclass != 16)
      {
        if (dataclass != 32)
        {
          goto LABEL_10;
        }

        ADClientAddValueForScalarKey();
        ADClientAddValueForScalarKey();
        ADClientPushValueForDistributionKey();
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_10;
        }

        folderID10 = [taskCopy folderID];
        previousSyncKeyForAgent3 = [taskCopy previousSyncKeyForAgent];
        context3 = [taskCopy context];
        isInitialSync3 = [taskCopy isInitialSync];
        moreAvailable3 = [taskCopy moreAvailable];
        v72 = folderID10;
        BYTE2(v94) = [taskCopy moreLocalChangesAvailable];
        BYTE1(v94) = moreAvailable3;
        LOBYTE(v94) = isInitialSync3;
        v73 = previousSyncKeyForAgent3;
        [v123 syncResultForNotesFolder:folderID10 noteContext:0 newTag:keyCopy previousTag:previousSyncKeyForAgent3 actions:v49 results:v67 changeSet:context3 notesToDeleteAfterSync:0 isInitialSync:v94 moreAvailable:? moreLocalChangesAvailable:?];
LABEL_29:

LABEL_35:
LABEL_36:

        goto LABEL_10;
      }

      ADClientAddValueForScalarKey();
      ADClientAddValueForScalarKey();
      ADClientPushValueForDistributionKey();
      if (objc_opt_respondsToSelector())
      {
        folderID11 = [taskCopy folderID];
        previousSyncKeyForAgent4 = [taskCopy previousSyncKeyForAgent];
        context4 = [taskCopy context];
        isInitialSync4 = [taskCopy isInitialSync];
        moreAvailable4 = [taskCopy moreAvailable];
        moreLocalChangesAvailable3 = [taskCopy moreLocalChangesAvailable];
        pushedActions2 = [taskCopy pushedActions];
        v72 = folderID11;
        rejectedServerIds = [taskCopy rejectedServerIds];
        BYTE2(v92) = moreLocalChangesAvailable3;
        BYTE1(v92) = moreAvailable4;
        LOBYTE(v92) = isInitialSync4;
        v79 = context4;
        v73 = previousSyncKeyForAgent4;
        [v123 syncResultForToDosFolder:v72 newTag:keyCopy previousTag:previousSyncKeyForAgent4 actions:v49 results:taskManager changeIdContext:context4 isInitialSync:v92 moreAvailable:pushedActions2 moreLocalChangesAvailable:rejectedServerIds pushedActions:? rejectedServerIds:?];
        goto LABEL_34;
      }
    }

LABEL_10:

    v53 = v123;
    v63 = selfCopy;
  }

  backingAccountInfo = [(ASAccount *)v63 backingAccountInfo];
  if ([backingAccountInfo supportsAuthentication])
  {
    v55 = v40;
    v62 = v53;
    backingAccountInfo2 = [(ASAccount *)v63 backingAccountInfo];
    isAuthenticated = [backingAccountInfo2 isAuthenticated];

    errorCopy = v116;
    if ((isAuthenticated & 1) == 0)
    {
      v58 = DALoggingwithCategory();
      v59 = *(v55 + 6);
      if (os_log_type_enabled(v58, v59))
      {
        *buf = 138412290;
        v129 = v63;
        _os_log_impl(&dword_24A0AC000, v58, v59, "Received a success response from server while account is marked as not authenticated. Recheck validity on account %@", buf, 0xCu);
      }

      v60 = sharedDAAccountStore();
      v61 = dataaccess_get_global_queue();
      [(ASAccount *)v63 checkValidityOnAccountStore:v60 withConsumer:v63 inQueue:v61];
    }
  }

  else
  {
    v62 = v53;

    errorCopy = v116;
  }

LABEL_17:
  folderID12 = [v126 folderID];
  v127 = folderID12;
  v65 = [*(v43 + 2656) arrayWithObjects:&v127 count:1];
  [(ASAccount *)v63 resumeMonitoringFoldersWithIDs:v65];

  [(ASAccount *)v63 removeConsumerForTask:v126];
  v66 = *MEMORY[0x277D85DE8];
}

- (BOOL)folderItemsSyncTask:(id)task hasPartialAdded:(id)added removed:(id)removed modified:(id)modified addedResponse:(id)response modifiedResponse:(id)modifiedResponse removedResponse:(id)removedResponse fetchedResponse:(id)self0 moreAvailable:(BOOL)self1
{
  v68 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  addedCopy = added;
  removedCopy = removed;
  modifiedCopy = modified;
  responseCopy = response;
  modifiedResponseCopy = modifiedResponse;
  removedResponseCopy = removedResponse;
  fetchedResponseCopy = fetchedResponse;
  selfCopy = self;
  selfCopy2 = self;
  v26 = fetchedResponseCopy;
  v59 = [(ASAccount *)selfCopy2 consumerForTask:taskCopy];
  v61 = addedCopy;
  v27 = [addedCopy count];
  v28 = [modifiedCopy count] + v27;
  v60 = removedCopy;
  v29 = removedCopy;
  v30 = responseCopy;
  v31 = [v29 count];
  v32 = v28 + v31 + [responseCopy count];
  v33 = v32 + [modifiedResponseCopy count];
  v34 = v33 + [removedResponseCopy count];
  v35 = (v34 + [v26 count]);
  v36 = DALoggingwithCategory();
  v37 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v36, v37))
  {
    *buf = 134217984;
    v63 = v35;
    _os_log_impl(&dword_24A0AC000, v36, v37, "responseItemsCount: %lu", buf, 0xCu);
  }

  folderID = [taskCopy folderID];
  [(ASAccount *)selfCopy _reportFolderItemSyncSuccess:1 forFolderWithID:folderID withItemsCount:v35];

  ADClientAddValueForScalarKey();
  ADClientPushValueForDistributionKey();
  if ([taskCopy dataclass] == 1)
  {
    v39 = v59;
    if (objc_opt_respondsToSelector())
    {
      ADClientAddValueForScalarKey();
      ADClientPushValueForDistributionKey();
      v40 = modifiedResponseCopy;
      v41 = v30;
      v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(modifiedCopy, "count") + objc_msgSend(v61, "count") + objc_msgSend(v60, "count")}];
      v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v40, "count") + objc_msgSend(v41, "count") + objc_msgSend(removedResponseCopy, "count")}];
      preservedActions = [taskCopy preservedActions];
      v56 = v40;
      v57 = v41;
      v55 = v41;
      v45 = v42;
      v46 = v43;
      [(ASAccount *)selfCopy _fillOutActionsArray:v45 responseArray:v43 withTask:taskCopy added:v61 removed:v60 modified:modifiedCopy preserved:preservedActions addedResponse:v55 modifiedResponse:v40 removedResponse:removedResponseCopy fetchedResponse:v26];

      v47 = DALoggingwithCategory();
      if (os_log_type_enabled(v47, v37))
      {
        folderID2 = [taskCopy folderID];
        sentBytesCount = [taskCopy sentBytesCount];
        receivedBytesCount = [taskCopy receivedBytesCount];
        *buf = 138412802;
        v63 = folderID2;
        v64 = 2048;
        v65 = sentBytesCount;
        v66 = 2048;
        v67 = receivedBytesCount;
        _os_log_impl(&dword_24A0AC000, v47, v37, "Sending Partial Sync Results for Mail Folder :%@, bytes sent: %lld, bytes received: %lld", buf, 0x20u);
      }

      folderID3 = [taskCopy folderID];
      [taskCopy percentComplete];
      v39 = v59;
      [v59 partialResultsForMailbox:folderID3 actions:v45 responses:v46 percentComplete:available moreAvailable:?];

      v52 = 1;
      modifiedResponseCopy = v56;
      v30 = v57;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
    v39 = v59;
  }

  v53 = *MEMORY[0x277D85DE8];
  return v52;
}

- (void)fetchAttachmentTask:(id)task receivedData:(id)data ofContentType:(id)type
{
  typeCopy = type;
  dataCopy = data;
  taskCopy = task;
  v13 = [(ASAccount *)self consumerForTask:taskCopy];
  attachmentName = [taskCopy attachmentName];
  messageID = [taskCopy messageID];

  [v13 consumeData:dataCopy ofContentType:typeCopy forAttachmentNamed:attachmentName ofMessageWithServerID:messageID];
}

- (void)itemOperationsTask:(id)task completedWithStatus:(int64_t)status error:(id)error responses:(id)responses
{
  v38 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  responsesCopy = responses;
  v13 = [(ASAccount *)self consumerForTask:taskCopy];
  v14 = v13;
  if (status == 2)
  {
    v27 = v13;
    v29 = errorCopy;
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = responsesCopy;
    obj = responsesCopy;
    v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          status = [v20 status];
          v22 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status, "intValue")}];

          v31 = 0;
          v32 = 0;
          [(ASAccount *)self _getContextElementsForItemChangeType:3 dataclass:1 nativeContext:v20 outContext:&v32 outServerId:&v31];
          v23 = v32;
          v24 = v31;
          v25 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:3 changedItem:v23 serverId:v24 status:v22];

          [v15 addObject:v25];
        }

        v17 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v14 = v27;
    [v27 searchResultFetchedWithResponses:v15];

    responsesCopy = v28;
    errorCopy = v29;
  }

  else
  {
    [v13 actionFailed:status forTask:taskCopy error:errorCopy];
  }

  [(ASAccount *)self removeConsumerForTask:taskCopy, v27];

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)itemOperationsTask:(id)task hasPartialResponses:(id)responses
{
  v35 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responsesCopy = responses;
  v8 = [(ASAccount *)self consumerForTask:taskCopy];
  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  if (v9)
  {
    v24 = v8;
    v25 = v9;
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(responsesCopy, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = responsesCopy;
    obj = responsesCopy;
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          status = [v16 status];
          v18 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status, "intValue")}];

          v28 = 0;
          v29 = 0;
          [(ASAccount *)self _getContextElementsForItemChangeType:3 dataclass:1 nativeContext:v16 outContext:&v29 outServerId:&v28];
          v19 = v29;
          v20 = v28;
          v21 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:3 changedItem:v19 serverId:v20 status:v18];

          [v11 addObject:v21];
        }

        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v8 = v24;
    [v24 partialSearchResultFetchedWithResponses:v11];

    responsesCopy = v26;
    v10 = v25;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)sendMailTask:(id)task completedWithStatus:(int64_t)status error:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 136315138;
    v9 = "[ASAccount sendMailTask:completedWithStatus:error:]";
    _os_log_impl(&dword_24A0AC000, v5, v6, "%s should be overridden!", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)applyNewAccountProperties:(id)properties saveIfDifferent:(BOOL)different
{
  differentCopy = different;
  v23 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [propertiesCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v17 = differentCopy;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [propertiesCopy objectForKeyedSubscript:v13];
        v15 = [(ASAccount *)self objectForKeyedSubscript:v13];
        if (([v14 isEqual:v15] & 1) == 0)
        {
          [(ASAccount *)self setObject:v14 forKeyedSubscript:v13];
          v10 = 1;
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);

    if ((v10 & v17) == 1)
    {
      [(ASAccount *)self saveAccountProperties];
    }
  }

  else
  {
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (int)sendMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID useSmartTasksIfPossible:(BOOL)self0 sourceApplicationBundleIdentifier:(id)self1 consumer:(id)self2 context:(id)self3
{
  v53 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  itemIDCopy = itemID;
  longIDCopy = longID;
  accountIDCopy = accountID;
  identifierCopy = identifier;
  contextCopy = context;
  consumerCopy = consumer;
  selfCopy = self;
  protocol = [(ASAccount *)self protocol];
  useSmartMailTasks = [protocol useSmartMailTasks];
  HIDWORD(v43) = type;
  v47 = itemIDCopy;
  if (!type || !possible || !useSmartMailTasks)
  {

    v28 = dataCopy;
    v29 = longIDCopy;
    v30 = selfCopy;
    goto LABEL_17;
  }

  if (iDCopy && itemIDCopy)
  {

    v28 = dataCopy;
    v29 = longIDCopy;
    v30 = selfCopy;
  }

  else
  {

    v28 = dataCopy;
    v29 = longIDCopy;
    v30 = selfCopy;
    if (!longIDCopy)
    {
      goto LABEL_17;
    }
  }

  v31 = v28;
  v45 = iDCopy;
  accountID = [(ASAccount *)v30 accountID];
  v33 = [accountID isEqualToString:accountIDCopy];

  v34 = DALoggingwithCategory();
  v35 = *(MEMORY[0x277D03988] + 6);
  v36 = os_log_type_enabled(v34, v35);
  if (!v33)
  {
    if (v36)
    {
      accountID2 = [(ASAccount *)v30 accountID];
      *buf = 138412546;
      v50 = accountID2;
      v51 = 2112;
      v52 = accountIDCopy;
      _os_log_impl(&dword_24A0AC000, v34, v35, "Using normal send mail task, as this Exchange account's id (%@) doesn't match the one in the replied-to email (%@)", buf, 0x16u);

      v29 = longIDCopy;
    }

    iDCopy = v45;
    v28 = v31;
LABEL_17:
    v37 = dCopy;
    v38 = [[ASSendMailTask alloc] initWithMessage:v28 messageID:dCopy];
    v31 = v28;
    if (!identifierCopy)
    {
      goto LABEL_19;
    }

LABEL_18:
    [(ASTask *)v38 setSourceApplicationBundleIdentifier:identifierCopy];
    goto LABEL_19;
  }

  if (v36)
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v34, v35, "Using smart email task, as we have sufficient original headers in the email", buf, 2u);
  }

  LOBYTE(v43) = 1;
  v37 = dCopy;
  iDCopy = v45;
  v38 = [[ASSmartMailTask alloc] initWithMessage:v31 messageID:dCopy messageType:HIDWORD(v43) originalMessageID:v47 instanceId:0 originalFolderID:v45 originalLongID:v29 replaceMime:v43];
  if (identifierCopy)
  {
    goto LABEL_18;
  }

LABEL_19:
  [(ASTask *)v38 setDelegate:v30];
  [(ASTask *)v38 setContext:contextCopy];

  [(ASAccount *)v30 setConsumer:consumerCopy forTask:v38];
  taskManager = [(ASAccount *)v30 taskManager];
  [taskManager submitQueuedTask:v38];

  LODWORD(taskManager) = [(ASTask *)v38 taskID];
  v41 = *MEMORY[0x277D85DE8];
  return taskManager;
}

- (int)sendSmartMessageWithRFC822Data:(id)data messageID:(id)d outgoingMessageType:(int)type originalMessageFolderID:(id)iD originalMessageItemID:(id)itemID originalMessageLongID:(id)longID originalAccountID:(id)accountID replaceOriginalMime:(BOOL)self0 sourceApplicationBundleIdentifier:(id)self1 consumer:(id)self2 context:(id)self3
{
  identifierCopy = identifier;
  contextCopy = context;
  consumerCopy = consumer;
  longIDCopy = longID;
  itemIDCopy = itemID;
  iDCopy = iD;
  dCopy = d;
  dataCopy = data;
  LOBYTE(v30) = mime;
  v27 = [[ASSmartMailTask alloc] initWithMessage:dataCopy messageID:dCopy messageType:type originalMessageID:itemIDCopy instanceId:0 originalFolderID:iDCopy originalLongID:longIDCopy replaceMime:v30];

  if (identifierCopy)
  {
    [(ASTask *)v27 setSourceApplicationBundleIdentifier:identifierCopy];
  }

  [(ASTask *)v27 setDelegate:self];
  [(ASTask *)v27 setContext:contextCopy];

  [(ASAccount *)self setConsumer:consumerCopy forTask:v27];
  taskManager = [(ASAccount *)self taskManager];
  [taskManager submitQueuedTask:v27];

  LODWORD(taskManager) = [(ASTask *)v27 taskID];
  return taskManager;
}

- (void)_copyExchangeCalendarStore:(BOOL)store
{
  storeCopy = store;
  v62 = *MEMORY[0x277D85DE8];
  v6 = 0x278FC6000uLL;
  v7 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASAccount *)self accountID];
  [v7 calDatabaseForAccountID:accountID];

  [(ASAccount *)self accountID];
  v9 = CalDatabaseCopyStoreWithExternalID();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = storeCopy;
  }

  v11 = MEMORY[0x277D03988];
  if (v10 == 1)
  {
    v12 = DALoggingwithCategory();
    v13 = *(v11 + 3);
    if (os_log_type_enabled(v12, v13))
    {
      accountID2 = [(ASAccount *)self accountID];
      *buf = 138412290;
      v61 = accountID2;
      _os_log_impl(&dword_24A0AC000, v12, v13, "ACCOUNTDCOERROR Didn't find store with identifier %@ in cal db. Creating one", buf, 0xCu);
    }

    Store = CalDatabaseCreateStore();
    v16 = 1;
    CalStoreSetType();
    backingAccountInfo = [(ASAccount *)self backingAccountInfo];
    [backingAccountInfo accountDescription];
    CalStoreSetName();

    [(ASAccount *)self accountID];
    CalStoreSetExternalID();
    MEMORY[0x24C211180](Store, [(ASAccount *)self persistentUUID]);
    CalDatabaseSave();
    CFRelease(Store);
    v18 = [(ASAccount *)self _copyExchangeCalendarStore:0];
    if (!v18)
    {
LABEL_80:
      v51 = +[ASLocalDBHelper sharedInstance];
      accountID3 = [(ASAccount *)self accountID];
      [v51 calSaveDatabaseForAccountID:accountID3];

      if (v16)
      {
        goto LABEL_84;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v18 = v9;
    if (!v9)
    {
      goto LABEL_84;
    }
  }

  if (([(ASAccount *)self isHotmailAccount]|| [(ASAccount *)self isGoogleAccount]) && CalStoreAllowsCalendarAddDeleteModify())
  {
    CalStoreSetAllowsCalendarAddDeleteModify();
    v10 = 1;
  }

  if (CalStoreUsesSelfAttendee())
  {
    CalStoreSetUsesSelfAttendee();
    v10 = 1;
  }

  v19 = CalStoreCopyExternalID();
  if (v19)
  {
    accountID4 = [(ASAccount *)self accountID];
    v21 = [accountID4 isEqualToString:v19];

    if ((v21 & 1) == 0)
    {
      [(ASAccount *)self _copyExchangeCalendarStore:a2, v19];
    }
  }

  else
  {
    [(ASAccount *)self accountID];
    CalStoreSetExternalID();
    v10 = 1;
  }

  v22 = MEMORY[0x24C2110A0](v18);
  calendarConstraintsPath = [(ASAccount *)self calendarConstraintsPath];
  v59 = v22;
  if (([v22 isEqualToString:calendarConstraintsPath] & 1) == 0)
  {
    MEMORY[0x24C2111E0](v18, calendarConstraintsPath);
    v10 = 1;
  }

  v24 = [(ASAccount *)self enabledForDADataclass:4];
  v25 = [(ASAccount *)self enabledForDADataclass:16];
  v26 = CalStoreAllowsEvents();
  v27 = CalStoreAllowsTasks();
  if (v24 != v26)
  {
    CalStoreSetAllowsEvents();
    v10 = 1;
  }

  if (v25 != v27)
  {
    CalStoreSetAllowsTasks();
    v10 = 1;
  }

  if ((CalStoreSnoozeAlarmRequiresDetach() & 1) == 0)
  {
    v10 = 1;
    CalStoreSetSnoozeAlarmRequiresDetach();
  }

  v28 = CalStoreCopyName();
  backingAccountInfo2 = [(ASAccount *)self backingAccountInfo];
  accountDescription = [backingAccountInfo2 accountDescription];
  v31 = [v28 isEqualToString:accountDescription];

  if ((v31 & 1) == 0)
  {
    backingAccountInfo3 = [(ASAccount *)self backingAccountInfo];
    [backingAccountInfo3 accountDescription];
    CalStoreSetName();
  }

  CalStoreSetSupportsPrivateEvents();
  if (CalStoreGetPreferredEventPrivateValue() != 2)
  {
    CalStoreSetPreferredEventPrivateValue();
  }

  if (CalStoreGetStrictestEventPrivateValue() != 2)
  {
    CalStoreSetStrictestEventPrivateValue();
  }

  if ((CalStoreRequiresSamePrivacyLevelAcrossRecurrenceSeries() & 1) == 0)
  {
    CalStoreSetRequiresSamePrivacyLevelAcrossRecurrenceSeries();
  }

  v33 = CalStoreSupportsAvailabilityRequests();
  supportsFreeBusyLookup = [(ASProtocol *)self->_protocol supportsFreeBusyLookup];
  if (v33 != (![(ASAccount *)self isHotmailAccount]&& supportsFreeBusyLookup))
  {
    CalStoreSetSupportsAvailabilityRequests();
  }

  if ((CalStoreProhibitsMultipleDaysInMonthlyRecurrence() & 1) == 0)
  {
    v10 = 1;
    CalStoreSetProhibitsMultipleDaysInMonthlyRecurrence();
  }

  if ((CalStoreProhibitsMultipleMonthsInYearlyRecurrence() & 1) == 0)
  {
    v10 = 1;
    CalStoreSetProhibitsMultipleMonthsInYearlyRecurrence();
  }

  if ((CalStoreProhibitsYearlyRecurrenceInterval() & 1) == 0)
  {
    v10 = 1;
    CalStoreSetProhibitsYearlyRecurrenceInterval();
  }

  if ((CalStoreProhibitsDetachmentOnCommentChange() & 1) == 0)
  {
    v10 = 1;
    CalStoreSetProhibitsDetachmentOnCommentChange();
  }

  if ((CalStoreRequiresOccurrencesConformToRecurrenceRule() & 1) == 0)
  {
    v10 = 1;
    CalStoreSetRequiresOccurrencesConformToRecurrenceRule();
  }

  if (CalStoreGetProhibitsICSImport())
  {
    CalStoreSetProhibitsICSImport();
    v10 = 1;
  }

  v35 = CalStoreSupportsEventForwarding();
  useSmartMailTasks = [(ASProtocol *)self->_protocol useSmartMailTasks];
  v37 = DALoggingwithCategory();
  v38 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = @"NO";
    if (useSmartMailTasks)
    {
      v39 = @"YES";
    }

    *buf = 138412290;
    v61 = v39;
    _os_log_impl(&dword_24A0AC000, v37, v38, "Account supports event forwarding: %@", buf, 0xCu);
  }

  if (v35 != useSmartMailTasks)
  {
    v40 = DALoggingwithCategory();
    if (os_log_type_enabled(v40, v38))
    {
      v41 = @"NO";
      if (useSmartMailTasks)
      {
        v41 = @"YES";
      }

      *buf = 138412290;
      v61 = v41;
      _os_log_impl(&dword_24A0AC000, v40, v38, "Setting calstore supporting event forwarding to: %@", buf, 0xCu);
    }

    CalStoreSetSupportsEventForwarding();
    v10 = 1;
  }

  v42 = CalStoreAllowsProposeNewTime();
  supportsProposeNewTime = [(ASProtocol *)self->_protocol supportsProposeNewTime];
  v44 = DALoggingwithCategory();
  if (os_log_type_enabled(v44, v38))
  {
    v45 = @"NO";
    if (supportsProposeNewTime)
    {
      v45 = @"YES";
    }

    *buf = 138412290;
    v61 = v45;
    _os_log_impl(&dword_24A0AC000, v44, v38, "Account supports propose new time: %@", buf, 0xCu);
  }

  if (v42 != supportsProposeNewTime)
  {
    v46 = DALoggingwithCategory();
    if (os_log_type_enabled(v46, v38))
    {
      v47 = @"NO";
      if (supportsProposeNewTime)
      {
        v47 = @"YES";
      }

      *buf = 138412290;
      v61 = v47;
      _os_log_impl(&dword_24A0AC000, v46, v38, "Setting calstore supporting propose new time to: %@", buf, 0xCu);
    }

    CalStoreSetAllowsProposeNewTime();
    v10 = 1;
  }

  if ((CalStoreProhibitsSlicingEventsWithAttendees() & 1) == 0)
  {
    v10 = 1;
    CalStoreSetProhibitsSlicingEventsWithAttendees();
  }

  v48 = CalStoreSupportsAttachments();
  if (v48 != [(ASProtocol *)self->_protocol supportsAttachments])
  {
    CalStoreSetSupportsAttachments();
    v10 = 1;
  }

  v49 = CalStoreCopyCachedExternalInfo();
  _externalInfoDictionary = [(ASAccount *)self _externalInfoDictionary];
  if (v49 | _externalInfoDictionary && ([v49 isEqual:_externalInfoDictionary] & 1) == 0)
  {
    CalStoreSetCachedExternalInfo();

    goto LABEL_79;
  }

  if (v10)
  {
LABEL_79:
    v16 = 0;
    v6 = 0x278FC6000uLL;
    goto LABEL_80;
  }

  v6 = 0x278FC6000;
LABEL_81:
  sharedInstance = [*(v6 + 3688) sharedInstance];
  changeTrackingID = [sharedInstance changeTrackingID];

  if (changeTrackingID)
  {
    sharedInstance2 = [*(v6 + 3688) sharedInstance];
    accountID5 = [(ASAccount *)self accountID];
    [sharedInstance2 calDatabaseForAccountID:accountID5];
    CalDatabaseRegisterClientForPersistentChangeTrackingInStore();
  }

LABEL_84:
  v57 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_externalInfoDictionary
{
  v17[3] = *MEMORY[0x277D85DE8];
  host = [(ASAccount *)self host];
  v4 = host;
  if (host)
  {
    v5 = *MEMORY[0x277CF7468];
    v17[0] = host;
    v6 = *MEMORY[0x277CF7480];
    v16[0] = v5;
    v16[1] = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASAccount port](self, "port")}];
    v17[1] = v7;
    v16[2] = *MEMORY[0x277CF7490];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ASAccount useSSL](self, "useSSL")}];
    v17[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

    emailAddresses = [(ASAccount *)self emailAddresses];
    preferredAddress = [(ASAccount *)self preferredAddress];
    if (emailAddresses | preferredAddress)
    {
      v12 = [v9 mutableCopy];
      v13 = v12;
      if (emailAddresses)
      {
        [v12 setObject:emailAddresses forKeyedSubscript:*MEMORY[0x277CF7478]];
      }

      if (preferredAddress)
      {
        [v13 setObject:preferredAddress forKeyedSubscript:*MEMORY[0x277CF7488]];
      }
    }

    else
    {
      v13 = v9;
    }
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)moveItemsTask:(id)task completedWithStatus:(int64_t)status error:(id)error movedItems:(id)items
{
  v68 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  itemsCopy = items;
  v13 = [(ASAccount *)self consumerForTask:taskCopy];
  v14 = v13;
  if (status != 2)
  {
    statusCopy = status;
    v44 = taskCopy;
    v45 = errorCopy;
LABEL_35:
    [v13 actionFailed:statusCopy forTask:v44 error:v45];
    goto LABEL_36;
  }

  if (!v13)
  {
    goto LABEL_36;
  }

  if (![itemsCopy count])
  {
    v32 = 10;
LABEL_34:
    v13 = v14;
    statusCopy = v32;
    v44 = taskCopy;
    v45 = 0;
    goto LABEL_35;
  }

  v47 = v14;
  v48 = errorCopy;
  v49 = itemsCopy;
  v15 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = taskCopy;
  pushedMoveRequests = [taskCopy pushedMoveRequests];
  v17 = [pushedMoveRequests countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v59;
    v20 = *(MEMORY[0x277D03988] + 3);
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v59 != v19)
        {
          objc_enumerationMutation(pushedMoveRequests);
        }

        v22 = *(*(&v58 + 1) + 8 * i);
        message = [v22 message];
        v24 = [v15 objectForKeyedSubscript:message];

        if (v24)
        {
          message2 = DALoggingwithCategory();
          if (os_log_type_enabled(message2, v20))
          {
            *buf = 0;
            _os_log_impl(&dword_24A0AC000, message2, v20, "FAILWHALE!  The EAS spec is lossy when moving items, and you managed to move two items with the same (local-to-folder) id.  I am sorry for the inevitable event hilarity in your future", buf, 2u);
          }
        }

        else
        {
          message2 = [v22 message];
          [v15 setObject:v22 forKeyedSubscript:message2];
        }
      }

      v18 = [pushedMoveRequests countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v18);
  }

  itemsCopy = v49;
  v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v49, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v49;
  v26 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (!v26)
  {
    v32 = 10;
    taskCopy = v53;
LABEL_33:

    v14 = v47;
    errorCopy = v48;
    goto LABEL_34;
  }

  v27 = v26;
  v28 = *v55;
  type = *(MEMORY[0x277D03988] + 3);
  taskCopy = v53;
  while (2)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*v55 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v54 + 1) + 8 * j);
      status = [v30 status];
      v32 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status, "intValue")}];

      if (v32 != 2)
      {
        itemsCopy = v49;
        goto LABEL_33;
      }

      v33 = objc_alloc(MEMORY[0x277D037A8]);
      status2 = [v30 status];
      intValue = [status2 intValue];
      srcMsgId = [v30 srcMsgId];
      dstMsgId = [v30 dstMsgId];
      v38 = [v33 initWithStatus:intValue sourceID:srcMsgId destID:dstMsgId];

      srcMsgId2 = [v30 srcMsgId];
      v40 = [v15 objectForKeyedSubscript:srcMsgId2];

      if (v40)
      {
        [v38 setOrigRequest:v40];
      }

      else
      {
        v41 = DALoggingwithCategory();
        if (os_log_type_enabled(v41, type))
        {
          srcMsgId3 = [v30 srcMsgId];
          *buf = 138412546;
          v63 = v15;
          v64 = 2112;
          v65 = srcMsgId3;
          _os_log_impl(&dword_24A0AC000, v41, type, "We found a move response to an item we didn't try to move.  Orig requests %@, srcMsgId %@", buf, 0x16u);
        }
      }

      taskCopy = v53;
      [v52 addObject:v38];
    }

    v27 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v27)
    {
      continue;
    }

    break;
  }

  v14 = v47;
  [v47 resultsForMessageMove:v52];

  errorCopy = v48;
  itemsCopy = v49;
LABEL_36:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelSearchQuery:(id)query
{
  v26 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v25 = queryCopy;
    _os_log_impl(&dword_24A0AC000, v5, v6, "cancelling search query %@", buf, 0xCu);
  }

  v7 = [(NSMutableSet *)self->_searchTaskSet copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      query = [v14 query];
      v16 = [query isEqual:queryCopy];

      if (v16)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

    taskManager = [(ASAccount *)self taskManager];
    [taskManager cancelTask:v10];
  }

LABEL_14:

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelAllSearchQueries
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableSet *)self->_searchTaskSet copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        taskManager = [(ASAccount *)self taskManager];
        [taskManager cancelTask:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelPendingSearchQuery:(id)query
{
  queryCopy = query;
  consumer = [queryCopy consumer];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  [consumer searchQuery:queryCopy finishedWithError:v4];
}

- (void)_reallyPerformSearchQuery:(id)query
{
  v25 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  [(ASAccount *)self setShouldUseOpportunisticSockets:0];
  [queryCopy setState:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    taskManager = [(ASAccount *)self taskManager];
    protocol = [taskManager protocol];
    if ([protocol supportsMailboxEnhancedSearch] == 2)
    {

LABEL_11:
      consumer2 = [(ASSearchTask *)[ASMailboxSearchTask alloc] initWithQuery:queryCopy];
      goto LABEL_12;
    }

    searchPredicate = [queryCopy searchPredicate];

    if (!searchPredicate)
    {
      goto LABEL_11;
    }

    v10 = [ASMailboxSearchPredicate alloc];
    searchPredicate2 = [queryCopy searchPredicate];
    consumer2 = [(ASMailboxSearchPredicate *)v10 initWithPredicate:searchPredicate2];

    if ([(ASMailboxSearchTask *)consumer2 isValid])
    {
      v12 = [[ASMailboxEnhancedSearchTask alloc] initWithQuery:queryCopy];

      consumer2 = v12;
LABEL_12:
      v8 = @"com.apple.mobilemail";
LABEL_13:
      [(ASTask *)consumer2 setSourceApplicationBundleIdentifier:v8];
      [(ASTask *)consumer2 setDelegate:self];
      consumer = [queryCopy consumer];
      [(ASAccount *)self setConsumer:consumer forTask:consumer2];

      [(NSMutableSet *)self->_searchTaskSet addObject:consumer2];
      taskManager2 = [(ASAccount *)self taskManager];
      [taskManager2 submitIndependentTask:consumer2];
      goto LABEL_20;
    }

    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v18, v19))
    {
      searchPredicate3 = [queryCopy searchPredicate];
      v23 = 138412290;
      v24 = searchPredicate3;
      _os_log_impl(&dword_24A0AC000, v18, v19, "_reallyPerformSearchQuery was passed an invalid search predicate: %@", &v23, 0xCu);
    }

    taskManager2 = [queryCopy consumer];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:29 userInfo:0];
    [taskManager2 searchQuery:queryCopy finishedWithError:v21];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      consumer2 = [(ASSearchTask *)[ASGALSearchTask alloc] initWithQuery:queryCopy];
      if ([queryCopy calendarInitiated])
      {
        v8 = @"com.apple.mobilecal";
      }

      else
      {
        v8 = @"com.apple.MobileAddressBook";
      }

      goto LABEL_13;
    }

    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v23 = 138412290;
      v24 = objc_opt_class();
      v17 = v24;
      _os_log_impl(&dword_24A0AC000, v15, v16, "_reallyPerformSearchQuery was passed an unknown search type: %@", &v23, 0xCu);
    }

    consumer2 = [queryCopy consumer];
    taskManager2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:29 userInfo:0];
    [(ASMailboxSearchTask *)consumer2 searchQuery:queryCopy finishedWithError:taskManager2];
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)searchTask:(id)task returnedResults:(id)results
{
  resultsCopy = results;
  taskCopy = task;
  v9 = [(ASAccount *)self consumerForTask:taskCopy];
  query = [taskCopy query];

  [v9 searchQuery:query returnedResults:resultsCopy];
}

- (void)searchTask:(id)task returnedTotalCount:(id)count
{
  taskCopy = task;
  countCopy = count;
  v7 = [(ASAccount *)self consumerForTask:taskCopy];
  if (objc_opt_respondsToSelector())
  {
    query = [taskCopy query];
    [v7 searchQuery:query returnedTotalCount:countCopy];
  }
}

- (void)searchTask:(id)task finishedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  v8 = [(ASAccount *)self consumerForTask:taskCopy];
  if ([taskCopy taskStatusForError:errorCopy] == -1)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      v13 = 134217984;
      v14 = taskCopy;
      _os_log_impl(&dword_24A0AC000, v9, v10, "Search task %p was cancelled", &v13, 0xCu);
    }
  }

  query = [taskCopy query];
  [v8 searchQuery:query finishedWithError:errorCopy];

  [(NSMutableSet *)self->_searchTaskSet removeObject:taskCopy];
  [(ASAccount *)self removeConsumerForTask:taskCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer
{
  v34 = *MEMORY[0x277D85DE8];
  termsCopy = terms;
  typesCopy = types;
  consumerCopy = consumer;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = typesCopy;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    v17 = *MEMORY[0x277D038D8];
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(v13);
      }

      if ([*(*(&v29 + 1) + 8 * v18) isEqualToString:v17])
      {
        break;
      }

      if (v15 == ++v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if ([termsCopy count] <= 1)
    {
      v24 = MEMORY[0x277D03920];
      anyObject = [termsCopy anyObject];
      v23 = [v24 contactsSearchQueryWithSearchString:anyObject searchBase:0 searchScope:0 consumer:consumerCopy];

      if (limit)
      {
        [v23 setRange:{0, limit - 1}];
      }

      [v23 setIncludePhotos:0];
      [v23 setCalendarInitiated:1];
      [(ASAccount *)self performSearchQuery:v23];
      goto LABEL_19;
    }

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    *v28 = 0;
    v21 = "Exchange calendar directory search does not support more than one search term.";
    goto LABEL_14;
  }

LABEL_9:

  v19 = DALoggingwithCategory();
  v20 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v19, v20))
  {
    *v28 = 0;
    v21 = "Exchange calendar directory search does not support non-user search.";
LABEL_14:
    _os_log_impl(&dword_24A0AC000, v19, v20, v21, v28, 2u);
  }

LABEL_15:

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:85 userInfo:0];
  [consumerCopy calendarDirectorySearchFinishedWithError:v22 exceededResultLimit:0];

  v23 = 0;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)performSearchQuery:(id)query
{
  queryCopy = query;
  searchString = [queryCopy searchString];
  v6 = [searchString length];

  if (!v6)
  {
LABEL_10:
    consumer = [queryCopy consumer];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [consumer searchQuery:queryCopy finishedWithError:v14];

    goto LABEL_11;
  }

  searchString2 = [queryCopy searchString];
  v8 = [searchString2 length];

  if (v8 < 4)
  {
    searchString3 = [queryCopy searchString];
    v10 = -[ASAccount isUnicodeGeneralCategoryLetterOther:](self, "isUnicodeGeneralCategoryLetterOther:", [searchString3 characterAtIndex:0]);

    if (v10)
    {
      v16.receiver = self;
      v16.super_class = ASAccount;
      [(ASAccount *)&v16 performSearchQuery:queryCopy];
      goto LABEL_11;
    }

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v12))
    {
      *v15 = 0;
      _os_log_impl(&dword_24A0AC000, v11, v12, "Exchange GAL directory search doesn't support queries of size <4 characters unless the first character of the query is in Unicode General Category, 'Letter, Other'", v15, 2u);
    }

    goto LABEL_10;
  }

  v17.receiver = self;
  v17.super_class = ASAccount;
  [(ASAccount *)&v17 performSearchQuery:queryCopy];
LABEL_11:
}

- (void)settingsTask:(id)task completedWithStatus:(int64_t)status error:(id)error response:(id)response
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    v8 = v11;
    _os_log_impl(&dword_24A0AC000, v6, v7, "ASSettingsTaskDelegate interface is required, but not implemented in %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_explodeEmailAddress:(id)address outUsername:(id *)username outEmailAddress:(id *)emailAddress
{
  addressCopy = address;
  *emailAddress = addressCopy;
  v7 = [addressCopy rangeOfString:@"@" options:4];
  v8 = addressCopy;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [addressCopy substringToIndex:v7];
    if ([v9 length])
    {
      v10 = v9;
      *username = v9;
    }

    v8 = addressCopy;
  }

  v11 = [v8 rangeOfString:@"\\""];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [addressCopy substringFromIndex:v11 + v12];
    if ([v13 length])
    {
      v14 = v13;
      *emailAddress = v13;
    }
  }

  MEMORY[0x2821F97C8]();
}

- (BOOL)_generateAutodiscoverURLsForEmailAddress:(id)address explicitUsername:(id)username withConsumer:(id)consumer
{
  v76[2] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  usernameCopy = username;
  consumerCopy = consumer;
  emailAddress = [(ASAccount *)self emailAddress];
  v67 = 0;
  v68 = 0;
  [(ASAccount *)self _explodeEmailAddress:emailAddress outUsername:&v68 outEmailAddress:&v67];
  v11 = v68;
  v58 = v67;

  v12 = [(NSMutableSet *)addressCopy componentsSeparatedByString:@"@"];
  v13 = [v12 count];
  v14 = MEMORY[0x277D03988];
  if (v13 >= 2 && ([(__CFString *)v11 length]|| [(__CFString *)v58 length]))
  {
    v48 = v11;
    v49 = usernameCopy;
    v47 = v12;
    lastObject = [v12 lastObject];
    if (self->_useHTTPForTesting)
    {
      v16 = &stru_285D39BD0;
    }

    else
    {
      v16 = @"s";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"http%@://%@/%@", v16, lastObject, @"Autodiscover/Autodiscover.xml"];
    v76[0] = v17;
    if (self->_useHTTPForTesting)
    {
      v18 = &stru_285D39BD0;
    }

    else
    {
      v18 = @"s";
    }

    if (self->_useLocalhostForAutodiscoveryTesting)
    {
      v19 = &stru_285D39BD0;
    }

    else
    {
      v19 = @"autodiscover.";
    }

    v46 = lastObject;
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"http%@://%@%@/%@", v18, v19, lastObject, @"Autodiscover/Autodiscover.xml"];
    v76[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];

    ADClientAddValueForScalarKey();
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = v21;
    v55 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v55)
    {
      v22 = v58;
      if (!v58)
      {
        v22 = &stru_285D39BD0;
      }

      v53 = v22;
      v54 = *v64;
      if (v48)
      {
        v23 = v48;
      }

      else
      {
        v23 = &stru_285D39BD0;
      }

      v24 = usernameCopy;
      if (!usernameCopy)
      {
        v24 = &stru_285D39BD0;
      }

      v51 = v24;
      v52 = v23;
      do
      {
        v25 = 0;
        do
        {
          if (*v64 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v56 = v25;
          v26 = *(*(&v63 + 1) + 8 * v25);
          v74[0] = v53;
          v74[1] = v52;
          v74[2] = v51;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v28 = v27;
          v29 = [v28 countByEnumeratingWithState:&v59 objects:v73 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v60;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v60 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v59 + 1) + 8 * i);
                if ([v33 length])
                {
                  v34 = [[ASAutodiscoverTask alloc] initWithURL:v26 emailAddress:v58 authUsername:v33];
                  [(NSMutableSet *)self->_autodiscoveryTasks addObject:v34];
                  [(ASTask *)v34 setDelegate:self];
                  [(ASAccount *)self setConsumer:consumerCopy forTask:v34];
                  oneAutodiscoverAtATime = self->_oneAutodiscoverAtATime;
                  taskManager = [(ASAccount *)self taskManager];
                  v37 = taskManager;
                  if (oneAutodiscoverAtATime)
                  {
                    [taskManager submitQueuedTask:v34];
                  }

                  else
                  {
                    [taskManager submitIndependentTask:v34];
                  }
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v59 objects:v73 count:16];
            }

            while (v30);
          }

          v25 = v56 + 1;
        }

        while (v56 + 1 != v55);
        v55 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v55);
    }

    v38 = 1;
    v11 = v48;
    usernameCopy = v49;
    v39 = v46;
    v12 = v47;
    v14 = MEMORY[0x277D03988];
  }

  else
  {
    v39 = DALoggingwithCategory();
    v40 = *(v14 + 3);
    if (os_log_type_enabled(v39, v40))
    {
      *buf = 138412546;
      v70 = addressCopy;
      v71 = 2112;
      v72 = v12;
      _os_log_impl(&dword_24A0AC000, v39, v40, "Email did not have enough components: %@ (%@)", buf, 0x16u);
    }

    v38 = 0;
  }

  v41 = DALoggingwithCategory();
  v42 = *(v14 + 7);
  if (os_log_type_enabled(v41, v42))
  {
    autodiscoveryTasks = self->_autodiscoveryTasks;
    *buf = 138412290;
    v70 = autodiscoveryTasks;
    _os_log_impl(&dword_24A0AC000, v41, v42, "URLs were generated. All tasks to try: %@", buf, 0xCu);
  }

  v44 = *MEMORY[0x277D85DE8];
  return v38;
}

- (void)_silentlyTearDownAutodiscoveryTasks
{
  v28 = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_autodiscoverTaskLock lock];
  v3 = [(NSMutableSet *)self->_autodiscoveryTasks copy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        [v9 setDelegate:0];
        [(ASAccount *)self removeConsumerForTask:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_autodiscoveryTasks removeAllObjects];
  [(NSLock *)self->_autodiscoverTaskLock unlock];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        taskManager = [(ASAccount *)self taskManager];
        [taskManager cancelTask:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)autodiscoverV2Task:(id)task completedWithStatus:(int64_t)status authorizationURI:(id)i easEndPoint:(id)point issuer:(id)issuer error:(id)error
{
  v76 = *MEMORY[0x277D85DE8];
  iCopy = i;
  pointCopy = point;
  issuerCopy = issuer;
  errorCopy = error;
  taskCopy = task;
  v17 = [(ASAccount *)self consumerForTask:?];
  [(NSMutableSet *)self->_autodiscoveryTasks removeAllObjects];
  v18 = [(ASAccount *)self _easEndPointFQDNFromURL:pointCopy];
  v19 = DALoggingwithCategory();
  v20 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 138543362;
    v71 = v18;
    _os_log_impl(&dword_24A0AC000, v19, v20, "AutoDV2 - Discovered EAS End Point FQDN %{public}@", buf, 0xCu);
  }

  type = v20;

  v21 = _os_feature_enabled_impl();
  v22 = v21;
  if (v18)
  {
    v23 = [v18 isEqualToString:*MEMORY[0x277D07A10]] ^ 1;
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (iCopy)
    {
      v29 = v23;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v23 = 0;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (iCopy)
  {
LABEL_6:
    v65 = v17;
    [(ASAccount *)self setObject:v18 forKeyedSubscript:*MEMORY[0x277D07A30]];
    v67 = issuerCopy;
    if ([issuerCopy isEqualToString:@"ADFS"])
    {
      [(ASAccount *)self setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D07A98]];
    }

    v66 = errorCopy;
    v24 = [MEMORY[0x277CBEBC0] URLWithString:pointCopy];
    host = [v24 host];
    v26 = *MEMORY[0x277D07A28];
    [(ASAccount *)self setObject:host forKeyedSubscript:*MEMORY[0x277D07A28]];

    v27 = pointCopy;
    if (v23)
    {
      v28 = iCopy;
    }

    else
    {

      v28 = @"https://login.microsoftonline.com/consumers/oauth2/v2.0/authorize/";
    }

    [(ASAccount *)self setObject:v28 forKeyedSubscript:*MEMORY[0x277D07A78]];
    [(ASAccount *)self setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D07AA0]];
    v43 = *MEMORY[0x277D03820];
    v44 = [(ASAccount *)self objectForKeyedSubscript:*MEMORY[0x277D03820]];
    v45 = *MEMORY[0x277D07A18];
    if (!v44 || (v46 = v44, -[ASAccount objectForKeyedSubscript:](self, "objectForKeyedSubscript:", *MEMORY[0x277D07A18]), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 BOOLValue], v47, v46, v48))
    {
      v49 = [MEMORY[0x277CBEBC0] URLWithString:v27];
      host2 = [v49 host];
      [(ASAccount *)self setObject:host2 forKeyedSubscript:v43];

      [(ASAccount *)self setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v45];
    }

    v51 = *MEMORY[0x277D07AB0];
    v52 = [(ASAccount *)self objectForKeyedSubscript:*MEMORY[0x277D07AB0]];
    v53 = *MEMORY[0x277D07A20];
    if (!v52 || (v54 = v52, -[ASAccount objectForKeyedSubscript:](self, "objectForKeyedSubscript:", *MEMORY[0x277D07A20]), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 BOOLValue], v55, v54, v56))
    {
      [(ASAccount *)self setObject:v28 forKeyedSubscript:v51];
      [(ASAccount *)self setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v53];
    }

    ADClientAddValueForScalarKey();
    v57 = [(ASAccount *)self objectForKeyedSubscript:v26];
    v58 = [v57 caseInsensitiveCompare:@"outlook.office365.com"];

    if (!v58)
    {
      ADClientAddValueForScalarKey();
    }

    v59 = DALoggingwithCategory();
    pointCopy = v27;
    if (os_log_type_enabled(v59, type))
    {
      emailAddress = [(ASAccount *)self emailAddress];
      v61 = [(ASAccount *)self objectForKeyedSubscript:v26];
      v62 = [(ASAccount *)self objectForKeyedSubscript:v51];
      *buf = 138412802;
      v71 = emailAddress;
      v72 = 2112;
      v73 = v61;
      v74 = 2112;
      v75 = v62;
      _os_log_impl(&dword_24A0AC000, v59, type, "AutoDV2 Task Successfully finished for emailAddress %@ with Host::%@ AuthURI::%@", buf, 0x20u);
    }

    iCopy = v28;
    errorCopy = v66;
    issuerCopy = v67;
    v17 = v65;
    goto LABEL_42;
  }

LABEL_15:
  if (v23)
  {
    [(ASAccount *)self setObject:v18 forKeyedSubscript:*MEMORY[0x277D07A30]];
    v30 = [MEMORY[0x277CBEBC0] URLWithString:pointCopy];
    v31 = v30;
    if (v30)
    {
      scheme = [v30 scheme];

      if (scheme)
      {
        v33 = MEMORY[0x277CCABB0];
        scheme2 = [v31 scheme];
        v35 = [v33 numberWithBool:{objc_msgSend(scheme2, "hasPrefix:", @"https"}];
        [(ASAccount *)self setUseSSL:v35 != 0];
      }

      host3 = [v31 host];

      if (host3)
      {
        host4 = [v31 host];
        [(ASAccount *)self setHost:host4];
      }

      port = [v31 port];

      if (port)
      {
        port2 = [v31 port];
        -[ASAccount setPort:](self, "setPort:", [port2 integerValue]);
      }

      emailAddress2 = [(ASAccount *)self emailAddress];
      [(ASAccount *)self setUsername:emailAddress2];
    }

    v41 = DALoggingwithCategory();
    if (os_log_type_enabled(v41, type))
    {
      emailAddress3 = [(ASAccount *)self emailAddress];
      *buf = 138412546;
      v71 = emailAddress3;
      v72 = 2112;
      v73 = v18;
      _os_log_impl(&dword_24A0AC000, v41, type, "AutoDV2 for emailAddress %@ returned w/o authorization URI. Will use end point %@", buf, 0x16u);
    }
  }

  else
  {
    ADClientAddValueForScalarKey();
    v31 = DALoggingwithCategory();
    if (os_log_type_enabled(v31, type))
    {
      emailAddress4 = [(ASAccount *)self emailAddress];
      *buf = 138412546;
      v71 = emailAddress4;
      v72 = 2112;
      v73 = errorCopy;
      _os_log_impl(&dword_24A0AC000, v31, type, "AutoDV2 Task Failed for emailAddress %@ With Error :: %@", buf, 0x16u);
    }
  }

  [(ASAccount *)self setAccountProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D03838]];
  v28 = 0;
LABEL_42:
  [v17 OAuthAccount:self authorizationURI:v28 error:errorCopy];
  [(ASAccount *)self removeConsumerForTask:taskCopy];

  v64 = *MEMORY[0x277D85DE8];
}

- (id)_easEndPointFQDNFromURL:(id)l
{
  if (l)
  {
    v3 = MEMORY[0x277CCACE0];
    lCopy = l;
    v5 = [[v3 alloc] initWithString:lCopy];

    v6 = objc_alloc_init(MEMORY[0x277CCACE0]);
    scheme = [v5 scheme];
    [v6 setScheme:scheme];

    host = [v5 host];
    [v6 setHost:host];

    v9 = [v6 URL];
    absoluteString = [v9 absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

- (BOOL)autodiscoverAccountConfigurationWithConsumer:(id)consumer
{
  v22 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  [(ASAccount *)self setShouldUseOpportunisticSockets:0];
  [(NSLock *)self->_autodiscoverTaskLock lock];
  if ([(NSMutableSet *)self->_autodiscoveryTasks count])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v20 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_24A0AC000, v5, v6, "Autodiscovery is already running %@", &v20, 0xCu);
    }

    [(NSLock *)self->_autodiscoverTaskLock unlock];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D038E0];
    v9 = 61;
    goto LABEL_12;
  }

  emailAddress = [(ASAccount *)self emailAddress];

  if (!emailAddress)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v20 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_24A0AC000, v15, v16, "Autodiscover called on account %@, but that account does not have an email address set. Ignoring autodiscovery request", &v20, 0xCu);
    }

    [(NSLock *)self->_autodiscoverTaskLock unlock];
    goto LABEL_11;
  }

  emailAddress2 = [(ASAccount *)self emailAddress];
  username = [(ASAccount *)self username];
  v13 = [(ASAccount *)self _generateAutodiscoverURLsForEmailAddress:emailAddress2 explicitUsername:username withConsumer:consumerCopy];

  [(NSLock *)self->_autodiscoverTaskLock unlock];
  if (!v13)
  {
LABEL_11:
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D038E0];
    v9 = 60;
LABEL_12:
    v17 = [v7 errorWithDomain:v8 code:v9 userInfo:0];
    [consumerCopy account:self wasAutoDiscovered:0 error:v17];

    v14 = 0;
    goto LABEL_13;
  }

  v14 = 1;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)autodiscoverTask:(id)task completedWithStatus:(int64_t)status accountInfo:(id)info shouldRetryWithEmail:(id)email error:(id)error
{
  v56 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  infoCopy = info;
  emailCopy = email;
  errorCopy = error;
  v16 = [(ASAccount *)self consumerForTask:taskCopy];
  v17 = DALoggingwithCategory();
  v18 = v17;
  v19 = MEMORY[0x277D03988];
  if (status == 2)
  {
    v20 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v17, v20))
    {
      *buf = 138412290;
      statusCopy = infoCopy;
      _os_log_impl(&dword_24A0AC000, v18, v20, "Autodiscover task completed successfully. Account info: %@", buf, 0xCu);
    }

    if (infoCopy)
    {
      v51 = emailCopy;
      v21 = [(__CFString *)infoCopy objectForKeyedSubscript:kAutodiscoverShouldUseSSL];
      v22 = DALoggingwithCategory();
      v23 = *(v19 + 4);
      v24 = os_log_type_enabled(v22, v23);
      if (v21)
      {
        if (v24)
        {
          *buf = 138412290;
          statusCopy = v21;
          _os_log_impl(&dword_24A0AC000, v22, v23, "Setting useSSL: %@", buf, 0xCu);
        }

        [(ASAccount *)self setUseSSL:[v21 BOOLValue]];
      }

      else
      {
        if (v24)
        {
          *buf = 138412290;
          statusCopy = kAutodiscoverShouldUseSSL;
          _os_log_impl(&dword_24A0AC000, v22, v23, "No SSL setting found for key %@", buf, 0xCu);
        }
      }

      v38 = [(__CFString *)infoCopy objectForKeyedSubscript:kAutodiscoverHost];
      if (v38)
      {
        v39 = DALoggingwithCategory();
        if (os_log_type_enabled(v39, v20))
        {
          *buf = 138412290;
          statusCopy = v38;
          _os_log_impl(&dword_24A0AC000, v39, v20, "Setting host: %@", buf, 0xCu);
        }

        [(ASAccount *)self setHost:v38];
        v40 = [(ASAccount *)self objectForKeyedSubscript:*MEMORY[0x277D07A28]];
        v41 = [v40 caseInsensitiveCompare:@"outlook.office365.com"];

        if (!v41)
        {
          ADClientAddValueForScalarKey();
        }
      }

      v42 = [(__CFString *)infoCopy objectForKeyedSubscript:kAutodiscoverPort, v16];
      if (v42)
      {
        v43 = DALoggingwithCategory();
        if (os_log_type_enabled(v43, v20))
        {
          *buf = 138412290;
          statusCopy = v42;
          _os_log_impl(&dword_24A0AC000, v43, v20, "Setting port: %@", buf, 0xCu);
        }

        [(ASAccount *)self setPort:[(__CFString *)v42 intValue]];
      }

      v44 = [(__CFString *)infoCopy objectForKeyedSubscript:kAutodiscoverUsername];
      if (v44)
      {
        v45 = DALoggingwithCategory();
        if (os_log_type_enabled(v45, v20))
        {
          *buf = 138412290;
          statusCopy = v44;
          _os_log_impl(&dword_24A0AC000, v45, v20, "Setting username %@", buf, 0xCu);
        }

        [(ASAccount *)self setUsername:v44];
      }

      v16 = v50;
      emailCopy = v51;
    }

    else
    {
      v32 = DALoggingwithCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        [ASAccount autodiscoverTask:v32 completedWithStatus:? accountInfo:? shouldRetryWithEmail:? error:?];
      }

      v21 = DALoggingwithCategory();
      v33 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v21, v33))
      {
        *buf = 0;
        _os_log_impl(&dword_24A0AC000, v21, v33, "Autodiscover task completed, but did not return any account info", buf, 2u);
      }
    }

    [(NSLock *)self->_autodiscoverTaskLock lock];
    [(NSMutableSet *)self->_autodiscoveryTasks removeObject:taskCopy];
    [(NSLock *)self->_autodiscoverTaskLock unlock];
    [(ASAccount *)self _silentlyTearDownAutodiscoveryTasks];
    v35 = v16;
    selfCopy2 = self;
    v37 = 1;
    v34 = errorCopy;
    goto LABEL_48;
  }

  v25 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v17, v25))
  {
    *buf = 134218242;
    statusCopy = status;
    v54 = 2112;
    v55 = errorCopy;
    _os_log_impl(&dword_24A0AC000, v18, v25, "Autodiscover task failed with status %ld and error %@", buf, 0x16u);
  }

  [(NSLock *)self->_autodiscoverTaskLock lock];
  [(NSMutableSet *)self->_autodiscoveryTasks removeObject:taskCopy];
  [(NSLock *)self->_autodiscoverTaskLock unlock];
  if (emailCopy)
  {
    [(ASAccount *)self _silentlyTearDownAutodiscoveryTasks];
    username = [(ASAccount *)self username];
    [(ASAccount *)self _generateAutodiscoverURLsForEmailAddress:emailCopy explicitUsername:username withConsumer:v16];
  }

  [(NSLock *)self->_autodiscoverTaskLock lock];
  if ([(NSMutableSet *)self->_autodiscoveryTasks count])
  {
    domain = [(NSError *)errorCopy domain];
    if ([domain isEqualToString:@"ASHTTPConnectionErrorDomain"] && -[NSError code](errorCopy, "code") == 401)
    {
      autodiscovery401Error = self->_autodiscovery401Error;

      if (autodiscovery401Error)
      {
LABEL_21:
        [(NSLock *)self->_autodiscoverTaskLock unlock];
        [(ASAccount *)self removeConsumerForTask:taskCopy];
        goto LABEL_51;
      }

      v29 = DALoggingwithCategory();
      v30 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v29, *(MEMORY[0x277D03988] + 6)))
      {
        *buf = 0;
        _os_log_impl(&dword_24A0AC000, v29, v30, "Retaining 401 error from autodiscovery.", buf, 2u);
      }

      v31 = errorCopy;
      domain = self->_autodiscovery401Error;
      self->_autodiscovery401Error = v31;
    }

    goto LABEL_21;
  }

  [(NSLock *)self->_autodiscoverTaskLock unlock];
  if (self->_autodiscovery401Error)
  {
    v34 = self->_autodiscovery401Error;
  }

  else
  {
    v34 = errorCopy;
  }

  v35 = v16;
  selfCopy2 = self;
  v37 = 0;
LABEL_48:
  [v35 account:selfCopy2 wasAutoDiscovered:v37 error:v34];
  [(ASAccount *)self removeConsumerForTask:taskCopy];
  v46 = DALoggingwithCategory();
  v47 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v46, v47))
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v46, v47, "Releasing 401 error from autodiscovery.", buf, 2u);
  }

  v48 = self->_autodiscovery401Error;
  self->_autodiscovery401Error = 0;

LABEL_51:
  v49 = *MEMORY[0x277D85DE8];
}

- (id)usernameWithoutDomain
{
  username = [(ASAccount *)self username];
  v3 = [username rangeOfString:@"\\""];
  v4 = [username rangeOfString:@"/"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = username;
LABEL_9:
      v8 = v6;
      goto LABEL_11;
    }

    if (v4 < [username length] - 1)
    {
      v7 = v5 + 1;
      goto LABEL_8;
    }
  }

  else if (v3 < [username length] - 1)
  {
    v7 = v3 + 1;
LABEL_8:
    v6 = [username substringFromIndex:v7];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)emailAddresses
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(ASAccount *)self objectForKeyedSubscript:@"ASAccountEmailAddresses"];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    emailAddress = [(ASAccount *)self emailAddress];
    if (emailAddress)
    {
      emailAddress2 = [(ASAccount *)self emailAddress];
      v9[0] = emailAddress2;
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setPrimarySMTPAddress:(id)address emailAddresses:(id)addresses
{
  addressCopy = address;
  addressesCopy = addresses;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:addressesCopy];
  allObjects = [v7 allObjects];
  emailAddress = [(ASAccount *)self emailAddress];
  v10 = [allObjects mutableCopy];
  v11 = v10;
  if (!emailAddress)
  {
    goto LABEL_11;
  }

  if (addressCopy)
  {
    v12 = [emailAddress isEqualToString:addressCopy];
    [v11 removeObject:addressCopy];
    [v11 insertObject:addressCopy atIndex:0];
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (![v10 count])
  {
LABEL_13:
    if (![v11 count])
    {
      goto LABEL_16;
    }

    v18 = [v11 objectAtIndexedSubscript:0];
    [(ASAccount *)self setEmailAddress:v18];

    goto LABEL_15;
  }

  v13 = 0;
  v14 = 1;
  while (1)
  {
    v15 = [v11 objectAtIndexedSubscript:v13];
    if (![v15 caseInsensitiveCompare:emailAddress])
    {
      break;
    }

    v13 = v14;
    if ([v11 count] <= v14++)
    {
      goto LABEL_11;
    }
  }

  v17 = [emailAddress isEqualToString:v15];
  [v11 removeObjectAtIndex:v13];
  [v11 insertObject:v15 atIndex:0];

  if ((v17 & 1) == 0)
  {
LABEL_11:
    if (addressCopy)
    {
LABEL_12:
      [(ASAccount *)self setEmailAddress:addressCopy];
LABEL_15:
      [(ASAccount *)self saveAccountProperties];
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_16:
  [(ASAccount *)self setObject:v11 forKeyedSubscript:@"ASAccountEmailAddresses"];
}

- (int)mailNumberOfPastDaysToSyncUpperLimit
{
  v3 = [ASPerAccountPolicyData alloc];
  persistentUUID = [(ASAccount *)self persistentUUID];
  v5 = [(ASPerAccountPolicyData *)v3 initWithAccountPersistentUUID:persistentUUID];

  policyValues = [(ASPerAccountPolicyData *)v5 policyValues];
  v7 = [policyValues objectForKeyedSubscript:@"MaxEmailAgeFilter"];

  LODWORD(policyValues) = ASNumPastDaysToSyncForFilterCode([v7 intValue]);
  return policyValues;
}

- (int)mailNumberOfPastDaysToSync
{
  v3 = [(ASAccount *)self objectForKeyedSubscript:@"ASAccountMailNumberOfPastDaysToSync"];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 31;
    [(ASAccount *)self setMailNumberOfPastDaysToSync:31];
  }

  mailNumberOfPastDaysToSyncUpperLimit = [(ASAccount *)self mailNumberOfPastDaysToSyncUpperLimit];
  if (intValue >= mailNumberOfPastDaysToSyncUpperLimit)
  {
    v7 = mailNumberOfPastDaysToSyncUpperLimit;
  }

  else
  {
    v7 = intValue;
  }

  if (mailNumberOfPastDaysToSyncUpperLimit)
  {
    v8 = v7;
  }

  else
  {
    v8 = intValue;
  }

  return v8;
}

- (void)setLastKnownProtocolVersion:(id)version save:(BOOL)save
{
  saveCopy = save;
  versionCopy = version;
  lastKnownProtocolVersion = [(ASAccount *)self lastKnownProtocolVersion];
  v7 = [lastKnownProtocolVersion isEqualToString:versionCopy];

  if ((v7 & 1) == 0)
  {
    [(ASAccount *)self setObject:versionCopy forKeyedSubscript:@"ASLastKnownProtocolVersion"];
    if (saveCopy)
    {
      [(ASAccount *)self saveAccountProperties];
    }
  }
}

- (void)setSavedFolderPathsThatClientsCareAbout:(id)about
{
  v11 = *MEMORY[0x277D85DE8];
  aboutCopy = about;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = aboutCopy;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Setting folder paths that clients care about %@", &v9, 0xCu);
  }

  if ([aboutCopy count])
  {
    v7 = aboutCopy;
  }

  else
  {
    v7 = 0;
  }

  [(ASAccount *)self setObject:v7 forKeyedSubscript:@"ASSavedFolderPathsThatClientsCareAbout"];
  if ([(ASAccount *)self shouldSavePropertiesForFolderPathsThatClientsCareAbout])
  {
    [(ASAccount *)self saveAccountProperties];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setLastKnownProtocolVersion:(id)version
{
  versionCopy = version;
  [(ASAccount *)self setLastKnownProtocolVersion:versionCopy save:[(ASAccount *)self _shouldSaveLastKnownProtocolVersion]];
}

- (void)setSigningIdentityPersistentReference:(id)reference
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"ASSigningIdentityPersistentReference";
  v9[0] = reference;
  v4 = MEMORY[0x277CBEAC0];
  referenceCopy = reference;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(ASAccount *)self applyNewAccountProperties:v6 saveIfDifferent:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setEncryptionIdentityPersistentReference:(id)reference
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"ASEncryptionIdentityPersistentReference";
  v9[0] = reference;
  v4 = MEMORY[0x277CBEAC0];
  referenceCopy = reference;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(ASAccount *)self applyNewAccountProperties:v6 saveIfDifferent:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setProtocolVersion:(id)version
{
  v12 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    v11 = versionCopy;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Account's protocol version set to %@", &v10, 0xCu);
  }

  [(ASAccount *)self setLastKnownProtocolVersion:versionCopy];
  v7 = [[ASProtocol alloc] initWithVersion:versionCopy];
  protocol = self->_protocol;
  self->_protocol = v7;

  [(ASAccount *)self accountDidUpdateProtocolVersion];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)protocol
{
  protocol = self->_protocol;
  if (!protocol)
  {
    v4 = [ASProtocol alloc];
    lastKnownProtocolVersion = [(ASAccount *)self lastKnownProtocolVersion];
    v6 = [(ASProtocol *)v4 initWithCachedVersion:lastKnownProtocolVersion];
    v7 = self->_protocol;
    self->_protocol = v6;

    protocol = self->_protocol;
  }

  return protocol;
}

- (int)supportsMailboxSearch
{
  protocol = [(ASAccount *)self protocol];
  supportsMailboxSearch = [protocol supportsMailboxSearch];

  return supportsMailboxSearch;
}

- (int)supportsEmailFlagging
{
  protocol = [(ASAccount *)self protocol];
  supportsEmailFlagging = [protocol supportsEmailFlagging];

  if ([(ASAccount *)self isGoogleAccount])
  {
    return 2;
  }

  else
  {
    return supportsEmailFlagging;
  }
}

- (int)supportsConversations
{
  protocol = [(ASAccount *)self protocol];
  supportsConversations = [protocol supportsConversations];

  return supportsConversations;
}

- (int)supportsDraftFolderSync
{
  protocol = [(ASAccount *)self protocol];
  supportsDraftFolderSync = [protocol supportsDraftFolderSync];

  return supportsDraftFolderSync;
}

- (int)supportsSmartForwardReply
{
  protocol = [(ASAccount *)self protocol];
  if ([protocol useSmartMailTasks])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (int)supportsUniqueServerId
{
  protocol = [(ASAccount *)self protocol];
  supportsUniqueServerId = [protocol supportsUniqueServerId];

  return supportsUniqueServerId;
}

- (id)calendarConstraintsPath
{
  protocol = [(ASAccount *)self protocol];
  calendarConstraintsPath = [protocol calendarConstraintsPath];

  return calendarConstraintsPath;
}

- (id)addressBookConstraintsPath
{
  protocol = [(ASAccount *)self protocol];
  addressBookConstraintsPath = [protocol addressBookConstraintsPath];

  return addressBookConstraintsPath;
}

- (BOOL)_managedConfigurationDisablesNotes
{
  v2 = [(ASAccount *)self objectForKeyedSubscript:*MEMORY[0x277D26340]];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)accountDidUpdateProtocolVersion
{
  if ([(ASAccount *)self isGoogleAccount])
  {
    supportsNoteSyncing = 0;
  }

  else
  {
    protocol = [(ASAccount *)self protocol];
    supportsNoteSyncing = [protocol supportsNoteSyncing];
  }

  backingAccountInfo = [(ASAccount *)self backingAccountInfo];
  provisionedDataclasses = [backingAccountInfo provisionedDataclasses];
  v7 = *MEMORY[0x277CB9178];
  v8 = [provisionedDataclasses containsObject:*MEMORY[0x277CB9178]];

  if (!supportsNoteSyncing || (v8 & 1) != 0)
  {
    if (supportsNoteSyncing & 1 | ((v8 & 1) == 0))
    {
      return;
    }

    backingAccountInfo2 = [(ASAccount *)self backingAccountInfo];
    provisionedDataclasses2 = [backingAccountInfo2 provisionedDataclasses];

    [provisionedDataclasses2 removeObject:v7];
    backingAccountInfo3 = [(ASAccount *)self backingAccountInfo];
    [backingAccountInfo3 setProvisionedDataclasses:provisionedDataclasses2];

    backingAccountInfo4 = [(ASAccount *)self backingAccountInfo];
    backingAccountInfo7 = backingAccountInfo4;
    v16 = 0;
  }

  else
  {
    backingAccountInfo5 = [(ASAccount *)self backingAccountInfo];
    provisionedDataclasses2 = [backingAccountInfo5 provisionedDataclasses];

    [provisionedDataclasses2 addObject:v7];
    backingAccountInfo6 = [(ASAccount *)self backingAccountInfo];
    [backingAccountInfo6 setProvisionedDataclasses:provisionedDataclasses2];

    backingAccountInfo7 = [(ASAccount *)self backingAccountInfo];
    enabledDataclasses = [backingAccountInfo7 enabledDataclasses];
    if (![enabledDataclasses count])
    {

      goto LABEL_13;
    }

    _managedConfigurationDisablesNotes = [(ASAccount *)self _managedConfigurationDisablesNotes];

    if (_managedConfigurationDisablesNotes)
    {
      goto LABEL_14;
    }

    backingAccountInfo4 = [(ASAccount *)self backingAccountInfo];
    backingAccountInfo7 = backingAccountInfo4;
    v16 = 1;
  }

  [backingAccountInfo4 setEnabled:v16 forDataclass:v7];
LABEL_13:

LABEL_14:
  if ([(ASAccount *)self _shouldEditNotesSupportOnProtocolChange])
  {

    [(ASAccount *)self saveAccountProperties];
  }
}

- (id)domainOnly
{
  username = [(ASAccount *)self username];
  v3 = [username rangeOfString:@"\\""];
  v4 = [username rangeOfString:@"/"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v3 != 0)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (v4 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v4;
LABEL_9:
    v6 = [username substringToIndex:v3];
  }

  return v6;
}

- (BOOL)isHotmailAccount
{
  domainOnly = [(ASAccount *)self domainOnly];
  if ([domainOnly length])
  {
    v4 = 0;
  }

  else
  {
    host = [(ASAccount *)self host];
    v4 = [host hasSuffix:@".hotmail.com"];
  }

  return v4;
}

- (BOOL)isGoogleAccount
{
  domainOnly = [(ASAccount *)self domainOnly];
  if ([domainOnly length])
  {
    v4 = 0;
  }

  else
  {
    host = [(ASAccount *)self host];
    v4 = [host hasSuffix:@".google.com"];
  }

  return v4;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  if (-[ASAccount isHotmailAccount](self, "isHotmailAccount") && ([accountCopy isHotmailAccount] & 1) != 0)
  {
    identityPersist2 = 1;
  }

  else
  {
    host = [(ASAccount *)self host];
    host2 = [accountCopy host];
    identityPersist2 = areEqualStrings(host, host2);
  }

  usernameWithoutDomain = [accountCopy usernameWithoutDomain];
  usernameWithoutDomain2 = [(ASAccount *)self usernameWithoutDomain];
  v10 = 0;
  if (!areEqualStrings(usernameWithoutDomain, usernameWithoutDomain2) || !identityPersist2)
  {
    goto LABEL_19;
  }

  identityPersist = [accountCopy identityPersist];
  v12 = [identityPersist length];
  if (!v12)
  {
    identityPersist2 = [(ASAccount *)self identityPersist];
    if (![identityPersist2 length])
    {

LABEL_14:
      usernameWithoutDomain = [accountCopy domainOnly];
      usernameWithoutDomain2 = [(ASAccount *)self domainOnly];
      v10 = ![usernameWithoutDomain length] || !objc_msgSend(usernameWithoutDomain2, "length") || !objc_msgSend(usernameWithoutDomain, "caseInsensitiveCompare:", usernameWithoutDomain2);
LABEL_19:

      goto LABEL_20;
    }
  }

  identityPersist3 = [accountCopy identityPersist];
  identityPersist4 = [(ASAccount *)self identityPersist];
  v15 = [identityPersist3 isEqualToData:identityPersist4];

  if (!v12)
  {
  }

  if (v15)
  {
    goto LABEL_14;
  }

  v10 = 0;
LABEL_20:

  return v10;
}

- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = ASAccount;
  if ([(ASAccount *)&v14 accountHasSignificantPropertyChangesFromOldAccountInfo:infoCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ASAccount *)self objectForKeyedSubscript:@"ASAccountEmailAddresses"];
    v7 = [infoCopy objectForKeyedSubscript:@"ASAccountEmailAddresses"];
    if (v6)
    {
      [MEMORY[0x277CBEB98] setWithArray:v6];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v8 = ;
    if (v7)
    {
      [MEMORY[0x277CBEB98] setWithArray:v7];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v9 = ;
    if ([v8 isEqualToSet:v9])
    {
      v10 = [(ASAccount *)self objectForKeyedSubscript:@"ASLastKnownProtocolVersion"];
      v11 = [infoCopy objectForKeyedSubscript:@"ASLastKnownProtocolVersion"];
      v12 = v11;
      v5 = v11 && ![v11 isEqualToString:v10];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)cleanupAccountFiles
{
  v3.receiver = self;
  v3.super_class = ASAccount;
  [(ASAccount *)&v3 cleanupAccountFiles];
  [(ASAccount *)self blowAwayFolderCache];
}

- (id)localizedIdenticalAccountFailureMessage
{
  isHotmailAccount = [(ASAccount *)self isHotmailAccount];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isHotmailAccount)
  {
    v5 = @"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_HOTMAIL";
  }

  else
  {
    v5 = @"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_EXCHANGE";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_285D39BD0 table:@"DataAccess"];

  return v6;
}

- (id)localizedInvalidPasswordMessage
{
  isHotmailAccount = [(ASAccount *)self isHotmailAccount];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (isHotmailAccount)
  {
    v7 = @"INVALID_PASSWORD_BODY_HOTMAIL";
  }

  else
  {
    v7 = @"INVALID_PASSWORD_BODY_EXCHANGE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_285D39BD0 table:@"DataAccess"];
  accountDescription = [(ASAccount *)self accountDescription];
  v10 = [v4 stringWithFormat:v8, accountDescription];

  return v10;
}

- (void)account:(id)account isValid:(BOOL)valid validationError:(id)error
{
  validCopy = valid;
  v20 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  errorCopy = error;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = @"not valid";
    v14 = 138412802;
    v15 = accountCopy;
    v16 = 2112;
    if (validCopy)
    {
      v12 = @"valid";
    }

    v17 = v12;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_24A0AC000, v10, v11, "Account validation callback for %@. Account is %@ with error %@", &v14, 0x20u);
  }

  if (validCopy)
  {
    [(ASAccount *)self saveAccountProperties];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)renewCredentialsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sharedDAAccountStore();
  backingAccountInfo = [(ASAccount *)self backingAccountInfo];
  wasUserInitiated = [(ASAccount *)self wasUserInitiated];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ASAccount_RenewCredential__renewCredentialsWithHandler___block_invoke;
  v9[3] = &unk_278FC7E20;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [v5 renewCredentialsForAccount:backingAccountInfo force:wasUserInitiated reason:0 completion:v9];
}

void __58__ASAccount_RenewCredential__renewCredentialsWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setWasUserInitiated:0];
  (*(*(a1 + 40) + 16))();
}

- (void)_copyExchangeCalendarStore:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = [a1 accountID];
  [v6 handleFailureInMethod:a2 object:a1 file:@"ASAccount.m" lineNumber:1435 description:{@"We pulled out an exchange store with existing account id %@ != our account id %@, self is %@", a3, v7, a1}];
}

@end