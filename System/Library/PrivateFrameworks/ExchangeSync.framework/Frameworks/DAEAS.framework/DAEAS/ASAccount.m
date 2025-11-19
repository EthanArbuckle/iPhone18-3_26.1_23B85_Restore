@interface ASAccount
- (ASAccount)initWithBackingAccountInfo:(id)a3;
- (ASTaskManager)taskManager;
- (BOOL)_generateAutodiscoverURLsForEmailAddress:(id)a3 explicitUsername:(id)a4 withConsumer:(id)a5;
- (BOOL)_managedConfigurationDisablesNotes;
- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)a3;
- (BOOL)autodiscoverAccountConfigurationWithConsumer:(id)a3;
- (BOOL)enabledForDADataclass:(int64_t)a3;
- (BOOL)folderItemsSyncTask:(id)a3 hasPartialAdded:(id)a4 removed:(id)a5 modified:(id)a6 addedResponse:(id)a7 modifiedResponse:(id)a8 removedResponse:(id)a9 fetchedResponse:(id)a10 moreAvailable:(BOOL)a11;
- (BOOL)isEqualToAccount:(id)a3;
- (BOOL)isGoogleAccount;
- (BOOL)isHotmailAccount;
- (BOOL)itemOperationsTask:(id)a3 hasPartialResponses:(id)a4;
- (BOOL)upgradeAccount;
- (id)_defaultMailFolderWithDefaultType:(int)a3 fallbackType:(int)a4 fallbackName:(id)a5;
- (id)_easEndPointFQDNFromURL:(id)a3;
- (id)_externalInfoDictionary;
- (id)_visibleASFolders;
- (id)addressBookConstraintsPath;
- (id)asFolderWithId:(id)a3;
- (id)calendarConstraintsPath;
- (id)changeTrackingID;
- (id)contactsFolders;
- (id)defaultContactsFolder;
- (id)defaultContainerIdentifierForDADataclass:(int64_t)a3;
- (id)defaultEventsFolder;
- (id)defaultNotesFolder;
- (id)defaultToDosFolder;
- (id)domainOnly;
- (id)emailAddresses;
- (id)eventsFolders;
- (id)folderHierarchy;
- (id)folderIdsForPersistentPush;
- (id)folderIdsForPersistentPushForClientID:(id)a3;
- (id)folderIdsForPersistentPushForDataclasses:(int64_t)a3 clientID:(id)a4;
- (id)folderIdsThatExternalClientsCareAbout;
- (id)folderIdsThatExternalClientsCareAboutForDataclasses:(int64_t)a3;
- (id)folderWithId:(id)a3;
- (id)foldersTag;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)notesFolders;
- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6;
- (id)policyManager;
- (id)protocol;
- (id)stateString;
- (id)toDosFolders;
- (id)usernameWithoutDomain;
- (id)visibleFolders;
- (int)mailNumberOfPastDaysToSync;
- (int)mailNumberOfPastDaysToSyncUpperLimit;
- (int)sendMessageWithRFC822Data:(id)a3 messageID:(id)a4 outgoingMessageType:(int)a5 originalMessageFolderID:(id)a6 originalMessageItemID:(id)a7 originalMessageLongID:(id)a8 originalAccountID:(id)a9 useSmartTasksIfPossible:(BOOL)a10 sourceApplicationBundleIdentifier:(id)a11 consumer:(id)a12 context:(id)a13;
- (int)sendSmartMessageWithRFC822Data:(id)a3 messageID:(id)a4 outgoingMessageType:(int)a5 originalMessageFolderID:(id)a6 originalMessageItemID:(id)a7 originalMessageLongID:(id)a8 originalAccountID:(id)a9 replaceOriginalMime:(BOOL)a10 sourceApplicationBundleIdentifier:(id)a11 consumer:(id)a12 context:(id)a13;
- (int)sniffableTypeForFolder:(id)a3;
- (int)supportsConversations;
- (int)supportsDraftFolderSync;
- (int)supportsEmailFlagging;
- (int)supportsMailboxSearch;
- (int)supportsSmartForwardReply;
- (int)supportsUniqueServerId;
- (void)_copyExchangeCalendarStore:(BOOL)a3;
- (void)_explodeEmailAddress:(id)a3 outUsername:(id *)a4 outEmailAddress:(id *)a5;
- (void)_fillOutActionsArray:(id)a3 responseArray:(id)a4 withTask:(id)a5 added:(id)a6 removed:(id)a7 modified:(id)a8 preserved:(id)a9 addedResponse:(id)a10 modifiedResponse:(id)a11 removedResponse:(id)a12 fetchedResponse:(id)a13;
- (void)_getContextElementsForItemChangeType:(unint64_t)a3 dataclass:(int64_t)a4 nativeContext:(id)a5 outContext:(id *)a6 outServerId:(id *)a7;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelPendingSearchQuery:(id)a3;
- (void)_reallyCancelSearchQuery:(id)a3;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)_removeInvitationsForMailboxFolderID:(id)a3;
- (void)_silentlyTearDownAutodiscoveryTasks;
- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5;
- (void)accountDidUpdateProtocolVersion;
- (void)applyNewAccountProperties:(id)a3 saveIfDifferent:(BOOL)a4;
- (void)autodiscoverTask:(id)a3 completedWithStatus:(int64_t)a4 accountInfo:(id)a5 shouldRetryWithEmail:(id)a6 error:(id)a7;
- (void)autodiscoverV2Task:(id)a3 completedWithStatus:(int64_t)a4 authorizationURI:(id)a5 easEndPoint:(id)a6 issuer:(id)a7 error:(id)a8;
- (void)blowAwayFolderCache;
- (void)cleanupAccountFiles;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)fetchAttachmentTask:(id)a3 receivedData:(id)a4 ofContentType:(id)a5;
- (void)folderItemsSyncTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 newSyncKey:(id)a6 added:(id)a7 removed:(id)a8 modified:(id)a9 addedResponse:(id)a10 modifiedResponse:(id)a11 removedResponse:(id)a12 fetchedResponse:(id)a13;
- (void)getOptionsTask:(id)a3 completedWithStatus:(int64_t)a4 supportedCommands:(id)a5 supportedVersions:(id)a6 error:(id)a7;
- (void)itemOperationsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 responses:(id)a6;
- (void)moveItemsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 movedItems:(id)a6;
- (void)performSearchQuery:(id)a3;
- (void)renewCredentialsWithHandler:(id)a3;
- (void)resetAccountID;
- (void)searchTask:(id)a3 finishedWithError:(id)a4;
- (void)searchTask:(id)a3 returnedResults:(id)a4;
- (void)searchTask:(id)a3 returnedTotalCount:(id)a4;
- (void)sendMailTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5;
- (void)setEncryptionIdentityPersistentReference:(id)a3;
- (void)setLastKnownProtocolVersion:(id)a3;
- (void)setLastKnownProtocolVersion:(id)a3 save:(BOOL)a4;
- (void)setPrimarySMTPAddress:(id)a3 emailAddresses:(id)a4;
- (void)setProtocolVersion:(id)a3;
- (void)setSavedFolderPathsThatClientsCareAbout:(id)a3;
- (void)setSigningIdentityPersistentReference:(id)a3;
- (void)settingsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 response:(id)a6;
@end

@implementation ASAccount

- (ASAccount)initWithBackingAccountInfo:(id)a3
{
  v11.receiver = self;
  v11.super_class = ASAccount;
  v3 = [(ASAccount *)&v11 initWithBackingAccountInfo:a3];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASAccount;
  [(ASAccount *)&v4 dealloc];
}

- (id)changeTrackingID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ASAccount *)self persistentUUID];
  v4 = [v2 stringWithFormat:@"%@%@", @"com.apple.dataaccessd-", v3];

  return v4;
}

- (id)policyManager
{
  v2 = [(ASAccount *)self taskManager];
  v3 = [v2 policyManager];

  return v3;
}

- (ASTaskManager)taskManager
{
  v3 = *MEMORY[0x277D03808];
  v4 = *(&self->super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(ASAccount *)self _newPolicyManager];
    v6 = [[ASTaskManager alloc] initWithAccount:self policyManager:v5];
    v7 = *(&self->super.super.super.isa + v3);
    *(&self->super.super.super.isa + v3) = v6;

    v4 = *(&self->super.super.super.isa + v3);
  }

  return v4;
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  self->_isValidating = 1;
  v4 = a3;
  v6 = objc_opt_new();
  [v6 setDelegate:self];
  [(ASAccount *)self setConsumer:v4 forTask:v6];

  v5 = [(ASAccount *)self taskManager];
  [v5 submitExclusiveTask:v6 toFrontOfQueue:1];
}

- (void)getOptionsTask:(id)a3 completedWithStatus:(int64_t)a4 supportedCommands:(id)a5 supportedVersions:(id)a6 error:(id)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a3;
  v16 = [(ASAccount *)self consumerForTask:v15];
  v17 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v17, v18))
  {
    v22 = 138412290;
    v23 = v13;
    _os_log_impl(&dword_24A0AC000, v17, v18, "supported versions: %@", &v22, 0xCu);
  }

  v19 = DALoggingwithCategory();
  if (os_log_type_enabled(v19, v18))
  {
    v22 = 138412290;
    v23 = v12;
    _os_log_impl(&dword_24A0AC000, v19, v18, "supported commands: %@", &v22, 0xCu);
  }

  v20 = bestProtocolVersionFromVersions(v13);
  [(ASAccount *)self setProtocolVersion:v20];
  self->_isValidating = 0;
  [v16 account:self isValid:a4 == 2 validationError:v14];

  [(ASAccount *)self removeConsumerForTask:v15];
  v21 = *MEMORY[0x277D85DE8];
}

- (id)stateString
{
  v6.receiver = self;
  v6.super_class = ASAccount;
  v3 = [(ASAccount *)&v6 stateString];
  v4 = [v3 stringByAppendingFormat:@" is %@\n", self];

  return v4;
}

- (BOOL)enabledForDADataclass:(int64_t)a3
{
  v5 = [(ASAccount *)self isHotmailAccount];
  if (a3 == 8 && v5)
  {
    return 0;
  }

  if (a3 == 32)
  {
    if ([(ASAccount *)self isGoogleAccount])
    {
      return 0;
    }

    v7 = [(ASAccount *)self protocol];
    v8 = [v7 supportsNoteSyncing];

    if (!v8)
    {
      return 0;
    }
  }

  v9.receiver = self;
  v9.super_class = ASAccount;
  return [(ASAccount *)&v9 enabledForDADataclass:a3];
}

- (BOOL)upgradeAccount
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = ASAccount;
  v3 = [(ASAccount *)&v24 upgradeAccount];
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277D03988];
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v6))
  {
    *buf = 138412290;
    v26 = self;
    _os_log_impl(&dword_24A0AC000, v4, v6, "didReEnableDataclassesForEDUMode Checking to See if we need to Re-Enable Activesync account %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277D262A0] sharedConnection];
  if (![v7 isEphemeralMultiUser])
  {
    goto LABEL_14;
  }

  v8 = [(ASAccount *)self backingAccountInfo];
  v9 = [v8 accountType];
  v10 = [v9 identifier];
  if (![v10 isEqualToString:*MEMORY[0x277CB8C00]])
  {
LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v11 = [(ASAccount *)self policyManager];
  v12 = [v11 currentPolicyKey];
  if (![v12 isEqualToString:@"0"])
  {

    goto LABEL_13;
  }

  [(ASAccount *)self backingAccountInfo];
  v13 = v23 = v3;
  v14 = [v13 enabledDataclasses];
  v22 = [v14 count];

  v3 = v23;
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
      v26 = self;
      _os_log_impl(&dword_24A0AC000, v17, v16, "********* RE-Enabling All Exchange Dataclasses***** %@", buf, 0xCu);
    }

    v3 = 1;
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
    v26 = self;
    _os_log_impl(&dword_24A0AC000, v18, v19, "Account %@ Is Not Re-Enabled", buf, 0xCu);
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)resetAccountID
{
  v3 = [(ASAccount *)self folderHierarchy];
  [v3 blowAwayFolderCache];

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
  v2 = [(ASAccount *)self _visibleASFolders];
  v3 = DAFolderArrayForASFolderArray(v2);

  return v3;
}

- (id)_visibleASFolders
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [(ASAccount *)self folderHierarchy];
  [v2 folders];
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
        v13 = [v9 displayName];
        v14 = [v13 isEqualToString:@"Sync Issues"];

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

        v19 = [v16 parentID];
        v20 = v19;
        if (v19)
        {
          v21 = v17 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          v22 = v19;
        }

        else
        {
          do
          {
            v23 = [v2 folderForID:v20];
            v24 = v23;
            if (v23)
            {
              if (v23 == v5)
              {
                v25 = [v16 folderType];
                if (v25 >= 0x12)
                {
                  LOBYTE(v17) = 1;
                }

                else
                {
                  LOBYTE(v17) = 0x1187Fu >> v25;
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

            v22 = [v24 parentID];

            if (!v22)
            {
              break;
            }

            v20 = v22;
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

- (int)sniffableTypeForFolder:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASAccount *)self folderHierarchy];
  v6 = [v5 folders];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      v14 = [v13 folderType];
      if (v14 == 5)
      {
        v17 = [v13 serverID];
        v16 = v10;
        v10 = v17;
      }

      else
      {
        if (v14 != 4)
        {
          continue;
        }

        v15 = [v13 serverID];
        v16 = v9;
        v9 = v15;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v8);
LABEL_15:
  v18 = v4;
  v19 = v18;
  if (v18)
  {
    v20 = v18;
    while (1)
    {
      v21 = [v20 folderID];
      if ([v9 isEqualToString:v21])
      {
        v24 = 2;
        goto LABEL_23;
      }

      if ([v10 isEqualToString:v21])
      {
        break;
      }

      v22 = [v20 parentFolderID];
      v23 = [(ASAccount *)self folderWithId:v22];

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
      v8 = [v7 folderType];
      if (v8 == 14)
      {
        if (v4)
        {
          v9 = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_CONTACTS_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [v9 isEqual:v11];

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

      else if (v8 == 9)
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
  v3 = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 folderType];
        if (v11 == 9 || v11 == 14 && ![(ASAccount *)self syncDefaultFoldersOnly])
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
      v8 = [v7 folderType];
      if (v8 == 13)
      {
        if (v4)
        {
          v9 = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_EVENT_CALENDAR_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [v9 isEqual:v11];

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

      else if (v8 == 8)
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
  v3 = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 folderType];
        if (v11 == 8 || v11 == 13 && ![(ASAccount *)self syncDefaultFoldersOnly])
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
      v8 = [v7 folderType];
      if (v8 == 15)
      {
        if (v4)
        {
          v9 = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_TASKS_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [v9 isEqual:v11];

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

      else if (v8 == 7)
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
  v3 = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 folderType];
        if (v11 == 7 || v11 == 15 && ![(ASAccount *)self syncDefaultFoldersOnly])
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
      v8 = [v7 folderType];
      if (v8 == 17)
      {
        if (v4)
        {
          v9 = [v7 displayName];
          v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v10 localizedStringForKey:@"AUTOGENERATED_MAIN_NOTES_TITLE" value:&stru_285D39BD0 table:@"DataAccess"];
          v12 = [v9 isEqual:v11];

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

      else if (v8 == 10)
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
  v3 = [(ASAccount *)self _visibleASFolders];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 folderType];
        if (v11 == 10 || v11 == 17 && ![(ASAccount *)self syncDefaultFoldersOnly])
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

- (id)_defaultMailFolderWithDefaultType:(int)a3 fallbackType:(int)a4 fallbackName:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v24 = a5;
  v8 = [(ASAccount *)self folderHierarchy];
  [v8 folders];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v28 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v23 = v8;
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
        v16 = [v15 folderType];
        if (v16 == a4)
        {
          v17 = [v15 displayName];
          v18 = [v17 isEqualToString:v24];

          if (v18)
          {
            v19 = v15;

            v12 = v19;
          }
        }

        else if (v16 == a3)
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
      v8 = v23;
      goto LABEL_17;
    }

    v20 = 0;
    v8 = v23;
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
  v2 = [(ASAccount *)self folderHierarchy];
  v3 = [v2 foldersTag];

  return v3;
}

- (void)blowAwayFolderCache
{
  v2 = [(ASAccount *)self folderHierarchy];
  [v2 blowAwayFolderCache];
}

- (id)asFolderWithId:(id)a3
{
  v4 = a3;
  v5 = [(ASAccount *)self folderHierarchy];
  v6 = [v5 folderForID:v4];

  return v6;
}

- (id)folderWithId:(id)a3
{
  v3 = [(ASAccount *)self asFolderWithId:a3];
  v4 = CreateDAFolderForASFolder(v3);

  return v4;
}

- (id)folderIdsThatExternalClientsCareAbout
{
  v2 = [(ASAccount *)self folderHierarchy];
  v3 = [v2 folderIdsThatExternalClientsCareAbout];

  return v3;
}

- (id)folderIdsThatExternalClientsCareAboutForDataclasses:(int64_t)a3
{
  v4 = [(ASAccount *)self folderHierarchy];
  v5 = [v4 folderIdsThatExternalClientsCareAboutForDataclasses:a3];

  return v5;
}

- (id)folderIdsForPersistentPush
{
  v2 = [(ASAccount *)self folderHierarchy];
  v3 = [v2 folderIdsForPersistentPush];

  return v3;
}

- (id)folderIdsForPersistentPushForClientID:(id)a3
{
  v4 = a3;
  v5 = [(ASAccount *)self folderHierarchy];
  v6 = [v5 folderIdsForPersistentPushForClientID:v4];

  return v6;
}

- (id)folderIdsForPersistentPushForDataclasses:(int64_t)a3 clientID:(id)a4
{
  v6 = a4;
  v7 = [(ASAccount *)self folderHierarchy];
  v8 = [v7 folderIdsForPersistentPushForDataclasses:a3 clientID:v6];

  return v8;
}

- (id)defaultContainerIdentifierForDADataclass:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      v4 = [(ASAccount *)self inboxFolder];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v4 = [(ASAccount *)self defaultContactsFolder];
    }
  }

  else
  {
    switch(a3)
    {
      case 4:
        v4 = [(ASAccount *)self defaultEventsFolder];
        break;
      case 16:
        v4 = [(ASAccount *)self defaultToDosFolder];
        break;
      case 32:
        v4 = [(ASAccount *)self defaultNotesFolder];
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = v4;
LABEL_13:
  v5 = [v3 folderID];

  return v5;
}

- (void)_getContextElementsForItemChangeType:(unint64_t)a3 dataclass:(int64_t)a4 nativeContext:(id)a5 outContext:(id *)a6 outServerId:(id *)a7
{
  if (a4 == 1)
  {
    *a6 = [[ASMailMessage alloc] initWithASEmailItem:a5];
  }

  else
  {
    v10 = a5;
    *a6 = a5;
    v11 = a5;
  }

  v12 = [a5 serverID];

  v13 = v12;
  *a7 = v12;
}

- (void)_fillOutActionsArray:(id)a3 responseArray:(id)a4 withTask:(id)a5 added:(id)a6 removed:(id)a7 modified:(id)a8 preserved:(id)a9 addedResponse:(id)a10 modifiedResponse:(id)a11 removedResponse:(id)a12 fetchedResponse:(id)a13
{
  v19 = a3;
  v96 = a4;
  v20 = a5;
  v21 = a6;
  v94 = a7;
  v93 = a8;
  v92 = a9;
  v91 = a10;
  v95 = a11;
  v90 = a12;
  v88 = a13;
  v22 = [v21 count];
  if (v22)
  {
    v23 = v22;
    for (i = 0; i != v23; ++i)
    {
      v25 = [v20 dataclass];
      v26 = [v21 objectAtIndexedSubscript:i];
      v109 = 0;
      v110[0] = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:0 dataclass:v25 nativeContext:v26 outContext:v110 outServerId:&v109];
      v27 = v110[0];
      v28 = v109;

      v29 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v27 serverId:v28];
      [v19 addObject:v29];
    }
  }

  v30 = [v93 count];
  if (v30)
  {
    v31 = v30;
    for (j = 0; j != v31; ++j)
    {
      v33 = [v20 dataclass];
      v34 = [v93 objectAtIndexedSubscript:j];
      v107 = 0;
      v108 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:1 dataclass:v33 nativeContext:v34 outContext:&v108 outServerId:&v107];
      v35 = v108;
      v36 = v107;

      v37 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v35 serverId:v36];
      [v19 addObject:v37];
    }
  }

  v38 = [v94 count];
  if (v38)
  {
    v39 = v38;
    for (k = 0; k != v39; ++k)
    {
      v41 = [v20 dataclass];
      v42 = [v94 objectAtIndexedSubscript:k];
      v105 = 0;
      v106 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:2 dataclass:v41 nativeContext:v42 outContext:&v106 outServerId:&v105];
      v43 = v106;
      v44 = v105;

      v45 = [[ASAction alloc] initWithItemChangeType:2 changedItem:v43 serverId:v44];
      [v19 addObject:v45];
    }
  }

  if ([v92 count])
  {
    [v19 addObjectsFromArray:v92];
  }

  v89 = v19;
  v46 = [v91 count];
  v47 = v96;
  if (v46)
  {
    v48 = v46;
    for (m = 0; m != v48; ++m)
    {
      v50 = [v91 objectAtIndexedSubscript:m];
      v51 = [v50 status];
      v52 = [v20 taskStatusForExchangeStatus:{objc_msgSend(v51, "intValue")}];

      v53 = [v20 dataclass];
      v103 = 0;
      v104 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:0 dataclass:v53 nativeContext:v50 outContext:&v104 outServerId:&v103];
      v54 = v104;
      v55 = v103;
      v56 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:0 changedItem:v54 serverId:v55 status:v52];

      [v96 addObject:v56];
    }
  }

  v57 = v95;
  v58 = [v95 count];
  if (v58)
  {
    v59 = v58;
    for (n = 0; n != v59; ++n)
    {
      v61 = [v57 objectAtIndexedSubscript:n];
      v62 = [v61 status];
      v63 = [v20 taskStatusForExchangeStatus:{objc_msgSend(v62, "intValue")}];

      v64 = [v20 dataclass];
      v101 = 0;
      v102 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:1 dataclass:v64 nativeContext:v61 outContext:&v102 outServerId:&v101];
      v65 = v102;
      v66 = v101;
      v67 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:1 changedItem:v65 serverId:v66 status:v63];

      [v96 addObject:v67];
      v57 = v95;
    }
  }

  v68 = [v90 count];
  if (v68)
  {
    v69 = v68;
    for (ii = 0; ii != v69; ++ii)
    {
      v71 = [v90 objectAtIndexedSubscript:ii];
      v72 = [v71 status];
      v73 = [v20 taskStatusForExchangeStatus:{objc_msgSend(v72, "intValue")}];

      v74 = [v20 dataclass];
      v99 = 0;
      v100 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:2 dataclass:v74 nativeContext:v71 outContext:&v100 outServerId:&v99];
      v75 = v100;
      v76 = v99;
      v77 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:2 changedItem:v75 serverId:v76 status:v73];

      v47 = v96;
      [v96 addObject:v77];
    }
  }

  v78 = [v88 count];
  if (v78)
  {
    v79 = v78;
    for (jj = 0; jj != v79; ++jj)
    {
      v81 = [v88 objectAtIndexedSubscript:jj];
      v82 = [v81 status];
      v83 = [v20 taskStatusForExchangeStatus:{objc_msgSend(v82, "intValue")}];

      v84 = [v20 dataclass];
      v97 = 0;
      v98 = 0;
      [(ASAccount *)self _getContextElementsForItemChangeType:3 dataclass:v84 nativeContext:v81 outContext:&v98 outServerId:&v97];
      v85 = v98;
      v86 = v97;
      v87 = [objc_alloc(MEMORY[0x277D037C8]) initWithItemChangeType:3 changedItem:v85 serverId:v86 status:v83];

      v47 = v96;
      [v96 addObject:v87];
    }
  }
}

- (void)_removeInvitationsForMailboxFolderID:(id)a3
{
  v20 = a3;
  v4 = +[ASLocalDBHelper sharedInstance];
  v5 = [(ASAccount *)self accountID];
  v6 = [(ASAccount *)self changeTrackingID];
  [v4 calOpenDatabaseForAccountID:v5 clientID:v6];

  v7 = +[ASLocalDBHelper sharedInstance];
  v8 = [(ASAccount *)self accountID];
  v9 = [v7 calDatabaseForAccountID:v8];

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
  v19 = [(ASAccount *)self accountID];
  [v18 calCloseDatabaseForAccountID:v19 save:v11 & 1];
}

- (void)folderItemsSyncTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 newSyncKey:(id)a6 added:(id)a7 removed:(id)a8 modified:(id)a9 addedResponse:(id)a10 modifiedResponse:(id)a11 removedResponse:(id)a12 fetchedResponse:(id)a13
{
  v136[1] = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a5;
  v124 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v120 = a13;
  v125 = self;
  v126 = v18;
  v26 = self;
  v27 = v24;
  v28 = v21;
  v123 = [(ASAccount *)v26 consumerForTask:v18];
  v116 = v19;
  v29 = statusAndErrorIndicatePersistentFolderSyncFailure();
  v119 = v20;
  v30 = [v20 count];
  v122 = v22;
  v31 = [v22 count];
  v121 = v28;
  v32 = v31 + v30 + [v28 count];
  v118 = v23;
  v33 = [v23 count];
  v34 = v32 + v33 + [v27 count];
  v117 = v25;
  v35 = v25;
  v36 = v120;
  v37 = [v35 count];
  v38 = (v34 + v37 + [v120 count]);
  v39 = DALoggingwithCategory();
  v40 = MEMORY[0x277D03988];
  v41 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v39, v41))
  {
    *buf = 134217984;
    v129 = v38;
    _os_log_impl(&dword_24A0AC000, v39, v41, "responseItemsCount: %lu", buf, 0xCu);
  }

  v42 = [v18 folderID];
  [(ASAccount *)v125 _reportFolderItemSyncSuccess:v29 ^ 1u forFolderWithID:v42 withItemsCount:v38];

  ADClientAddValueForScalarKey();
  v43 = 0x277CBE000uLL;
  if (a4 != 2)
  {
    v62 = v123;
    [v123 actionFailed:a4 forTask:v18 error:v19];
    v63 = v125;
    goto LABEL_17;
  }

  ADClientAddValueForScalarKey();
  ADClientAddValueForScalarKey();
  ADClientPushValueForDistributionKey();
  v44 = [v18 previousSyncKey];
  if (!v44 || (v45 = v44, [v18 previousSyncKey], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", @"0"), v46, v45, v47))
  {
    if ([v18 dataclass] == 1)
    {
      v48 = [v18 folderID];
      [(ASAccount *)v125 _removeInvitationsForMailboxFolderID:v48];
    }

    v49 = [v18 copy];
    [v49 setPreviousSyncKey:v124];
    [v49 setWillUpdate:{objc_msgSend(v18, "willUpdate")}];
    [v49 setDelegate:v125];
    [v49 setIsInitialSync:1];
    [v49 setIsInitialBootstrapSync:1];
    v50 = [(ASAccount *)v125 consumerForTask:v18];
    [(ASAccount *)v125 setConsumer:v50 forTask:v49];

    v51 = [v18 folderID];
    v136[0] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:1];
    [(ASAccount *)v125 suspendMonitoringFoldersWithIDs:v52];

    v115 = [(ASAccount *)v125 taskManager];
    [v115 submitQueuedTask:v49];
    goto LABEL_10;
  }

  v63 = v125;
  v53 = v123;
  if (v123)
  {
    v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v122, "count") + objc_msgSend(v119, "count") + objc_msgSend(v121, "count")}];
    v67 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count") + objc_msgSend(v118, "count") + objc_msgSend(v117, "count")}];
    v68 = [v18 preservedActions];
    v115 = v67;
    [(ASAccount *)v125 _fillOutActionsArray:v49 responseArray:v67 withTask:v18 added:v119 removed:v121 modified:v122 preserved:v68 addedResponse:v118 modifiedResponse:v27 removedResponse:v117 fetchedResponse:v120];

    v69 = [v18 dataclass];
    if (v69 <= 3)
    {
      v40 = MEMORY[0x277D03988];
      if (v69 == 1)
      {
        ADClientAddValueForScalarKey();
        ADClientAddValueForScalarKey();
        ADClientPushValueForDistributionKey();
        v36 = v120;
        v43 = 0x277CBE000;
        if (objc_opt_respondsToSelector())
        {
          if (!v124 || ![v124 length] || objc_msgSend(v124, "isEqualToString:", @"0"))
          {
            v81 = DALoggingwithCategory();
            v82 = *(v40 + 3);
            if (os_log_type_enabled(v81, v82))
            {
              v83 = [v18 folderID];
              v113 = [v18 sentBytesCount];
              v84 = [v18 receivedBytesCount];
              *buf = 138413058;
              v129 = v83;
              v130 = 2112;
              v131 = v124;
              v132 = 2048;
              v133 = v113;
              v134 = 2048;
              v135 = v84;
              _os_log_impl(&dword_24A0AC000, v81, v82, "SyncKey 0: sending sync result for mail folder :%@, syncKey: %@, bytes sent: %lld, bytes received: %lld", buf, 0x2Au);
            }
          }

          v85 = [v18 folderID];
          [v18 percentComplete];
          v72 = v85;
          [v123 resultsForMailbox:v85 newTag:v124 actions:v49 responses:v115 percentComplete:objc_msgSend(v18 moreAvailable:"moreAvailable") sentBytesCount:objc_msgSend(v18 receivedBytesCount:{"sentBytesCount"), v86, objc_msgSend(v18, "receivedBytesCount")}];
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_10;
          }

          if (!v124 || ![v124 length] || objc_msgSend(v124, "isEqualToString:", @"0"))
          {
            v87 = DALoggingwithCategory();
            v88 = *(v40 + 3);
            if (os_log_type_enabled(v87, v88))
            {
              v89 = [v18 folderID];
              *buf = 138413058;
              v129 = v89;
              v130 = 2112;
              v131 = v124;
              v132 = 2112;
              v133 = v49;
              v134 = 2112;
              v135 = v115;
              _os_log_impl(&dword_24A0AC000, v87, v88, "SyncKey 0: sending sync result for mail folder :%@ -> %@ (%@,%@)", buf, 0x2Au);
            }
          }

          v90 = [v18 folderID];
          [v18 percentComplete];
          v72 = v90;
          [v123 resultsForMailbox:v90 newTag:v124 actions:v49 responses:v115 percentComplete:objc_msgSend(v18 moreAvailable:{"moreAvailable"), v91}];
        }

        goto LABEL_36;
      }

      v36 = v120;
      v43 = 0x277CBE000;
      if (v69 != 2)
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

      v74 = [v18 folderID];
      v110 = [v18 previousSyncKeyForAgent];
      v106 = [v18 context];
      v102 = [v18 isInitialSync];
      v98 = [v18 moreAvailable];
      v75 = [v18 moreLocalChangesAvailable];
      v72 = v74;
      v76 = [v18 pushedActions];
      BYTE2(v93) = v75;
      BYTE1(v93) = v98;
      LOBYTE(v93) = v102;
      v70 = v106;
      v73 = v110;
      [v123 syncResultForContactsFolder:v72 newTag:v124 previousTag:v110 newSyncToken:0 actions:v49 results:v115 changeIdContext:v106 isInitialSync:v93 moreAvailable:v76 moreLocalChangesAvailable:? pushedActions:?];

      goto LABEL_29;
    }

    v40 = MEMORY[0x277D03988];
    if (v69 == 4)
    {
      ADClientAddValueForScalarKey();
      ADClientAddValueForScalarKey();
      ADClientPushValueForDistributionKey();
      v36 = v120;
      v43 = 0x277CBE000;
      if (objc_opt_respondsToSelector())
      {
        v77 = [v18 folderID];
        v111 = [v18 previousSyncKeyForAgent];
        v107 = [v18 context];
        v103 = [v18 isInitialSync];
        v99 = [v18 moreAvailable];
        v95 = [v18 moreLocalChangesAvailable];
        v97 = [v18 pushedActions];
        v72 = v77;
        v78 = [v18 rejectedServerIds];
        BYTE2(v92) = v95;
        BYTE1(v92) = v99;
        LOBYTE(v92) = v103;
        v79 = v107;
        v73 = v111;
        [v123 syncResultForEventsFolder:v72 newTag:v124 previousTag:v111 actions:v49 results:v115 changeIdContext:v107 isInitialSync:v92 moreAvailable:v97 moreLocalChangesAvailable:v78 pushedActions:? rejectedServerIds:?];
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
      v36 = v120;
      v43 = 0x277CBE000;
      if (v69 != 16)
      {
        if (v69 != 32)
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

        v105 = [v18 folderID];
        v109 = [v18 previousSyncKeyForAgent];
        v70 = [v18 context];
        v101 = [v18 isInitialSync];
        v71 = [v18 moreAvailable];
        v72 = v105;
        BYTE2(v94) = [v18 moreLocalChangesAvailable];
        BYTE1(v94) = v71;
        LOBYTE(v94) = v101;
        v73 = v109;
        [v123 syncResultForNotesFolder:v105 noteContext:0 newTag:v124 previousTag:v109 actions:v49 results:v67 changeSet:v70 notesToDeleteAfterSync:0 isInitialSync:v94 moreAvailable:? moreLocalChangesAvailable:?];
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
        v80 = [v18 folderID];
        v112 = [v18 previousSyncKeyForAgent];
        v108 = [v18 context];
        v104 = [v18 isInitialSync];
        v100 = [v18 moreAvailable];
        v96 = [v18 moreLocalChangesAvailable];
        v97 = [v18 pushedActions];
        v72 = v80;
        v78 = [v18 rejectedServerIds];
        BYTE2(v92) = v96;
        BYTE1(v92) = v100;
        LOBYTE(v92) = v104;
        v79 = v108;
        v73 = v112;
        [v123 syncResultForToDosFolder:v72 newTag:v124 previousTag:v112 actions:v49 results:v115 changeIdContext:v108 isInitialSync:v92 moreAvailable:v97 moreLocalChangesAvailable:v78 pushedActions:? rejectedServerIds:?];
        goto LABEL_34;
      }
    }

LABEL_10:

    v53 = v123;
    v63 = v125;
  }

  v54 = [(ASAccount *)v63 backingAccountInfo];
  if ([v54 supportsAuthentication])
  {
    v55 = v40;
    v62 = v53;
    v56 = [(ASAccount *)v63 backingAccountInfo];
    v57 = [v56 isAuthenticated];

    v19 = v116;
    if ((v57 & 1) == 0)
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

    v19 = v116;
  }

LABEL_17:
  v64 = [v126 folderID];
  v127 = v64;
  v65 = [*(v43 + 2656) arrayWithObjects:&v127 count:1];
  [(ASAccount *)v63 resumeMonitoringFoldersWithIDs:v65];

  [(ASAccount *)v63 removeConsumerForTask:v126];
  v66 = *MEMORY[0x277D85DE8];
}

- (BOOL)folderItemsSyncTask:(id)a3 hasPartialAdded:(id)a4 removed:(id)a5 modified:(id)a6 addedResponse:(id)a7 modifiedResponse:(id)a8 removedResponse:(id)a9 fetchedResponse:(id)a10 moreAvailable:(BOOL)a11
{
  v68 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v58 = self;
  v25 = self;
  v26 = v24;
  v59 = [(ASAccount *)v25 consumerForTask:v17];
  v61 = v18;
  v27 = [v18 count];
  v28 = [v20 count] + v27;
  v60 = v19;
  v29 = v19;
  v30 = v21;
  v31 = [v29 count];
  v32 = v28 + v31 + [v21 count];
  v33 = v32 + [v22 count];
  v34 = v33 + [v23 count];
  v35 = (v34 + [v26 count]);
  v36 = DALoggingwithCategory();
  v37 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v36, v37))
  {
    *buf = 134217984;
    v63 = v35;
    _os_log_impl(&dword_24A0AC000, v36, v37, "responseItemsCount: %lu", buf, 0xCu);
  }

  v38 = [v17 folderID];
  [(ASAccount *)v58 _reportFolderItemSyncSuccess:1 forFolderWithID:v38 withItemsCount:v35];

  ADClientAddValueForScalarKey();
  ADClientPushValueForDistributionKey();
  if ([v17 dataclass] == 1)
  {
    v39 = v59;
    if (objc_opt_respondsToSelector())
    {
      ADClientAddValueForScalarKey();
      ADClientPushValueForDistributionKey();
      v40 = v22;
      v41 = v30;
      v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v20, "count") + objc_msgSend(v61, "count") + objc_msgSend(v60, "count")}];
      v43 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v40, "count") + objc_msgSend(v41, "count") + objc_msgSend(v23, "count")}];
      v44 = [v17 preservedActions];
      v56 = v40;
      v57 = v41;
      v55 = v41;
      v45 = v42;
      v46 = v43;
      [(ASAccount *)v58 _fillOutActionsArray:v45 responseArray:v43 withTask:v17 added:v61 removed:v60 modified:v20 preserved:v44 addedResponse:v55 modifiedResponse:v40 removedResponse:v23 fetchedResponse:v26];

      v47 = DALoggingwithCategory();
      if (os_log_type_enabled(v47, v37))
      {
        v48 = [v17 folderID];
        v49 = [v17 sentBytesCount];
        v50 = [v17 receivedBytesCount];
        *buf = 138412802;
        v63 = v48;
        v64 = 2048;
        v65 = v49;
        v66 = 2048;
        v67 = v50;
        _os_log_impl(&dword_24A0AC000, v47, v37, "Sending Partial Sync Results for Mail Folder :%@, bytes sent: %lld, bytes received: %lld", buf, 0x20u);
      }

      v51 = [v17 folderID];
      [v17 percentComplete];
      v39 = v59;
      [v59 partialResultsForMailbox:v51 actions:v45 responses:v46 percentComplete:a11 moreAvailable:?];

      v52 = 1;
      v22 = v56;
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

- (void)fetchAttachmentTask:(id)a3 receivedData:(id)a4 ofContentType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = [(ASAccount *)self consumerForTask:v10];
  v11 = [v10 attachmentName];
  v12 = [v10 messageID];

  [v13 consumeData:v9 ofContentType:v8 forAttachmentNamed:v11 ofMessageWithServerID:v12];
}

- (void)itemOperationsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 responses:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(ASAccount *)self consumerForTask:v10];
  v14 = v13;
  if (a4 == 2)
  {
    v27 = v13;
    v29 = v11;
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v12, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v28 = v12;
    obj = v12;
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
          v21 = [v20 status];
          v22 = [v10 taskStatusForExchangeStatus:{objc_msgSend(v21, "intValue")}];

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

    v12 = v28;
    v11 = v29;
  }

  else
  {
    [v13 actionFailed:a4 forTask:v10 error:v11];
  }

  [(ASAccount *)self removeConsumerForTask:v10, v27];

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)itemOperationsTask:(id)a3 hasPartialResponses:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASAccount *)self consumerForTask:v6];
  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  if (v9)
  {
    v24 = v8;
    v25 = v9;
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v7;
    obj = v7;
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
          v17 = [v16 status];
          v18 = [v6 taskStatusForExchangeStatus:{objc_msgSend(v17, "intValue")}];

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

    v7 = v26;
    v10 = v25;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (void)sendMailTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5
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

- (void)applyNewAccountProperties:(id)a3 saveIfDifferent:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v17 = v4;
    v10 = 0;
    v11 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:v13];
        v15 = [(ASAccount *)self objectForKeyedSubscript:v13];
        if (([v14 isEqual:v15] & 1) == 0)
        {
          [(ASAccount *)self setObject:v14 forKeyedSubscript:v13];
          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (int)sendMessageWithRFC822Data:(id)a3 messageID:(id)a4 outgoingMessageType:(int)a5 originalMessageFolderID:(id)a6 originalMessageItemID:(id)a7 originalMessageLongID:(id)a8 originalAccountID:(id)a9 useSmartTasksIfPossible:(BOOL)a10 sourceApplicationBundleIdentifier:(id)a11 consumer:(id)a12 context:(id)a13
{
  v53 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v46 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v48 = a9;
  v22 = a11;
  v23 = a13;
  v24 = a12;
  v25 = self;
  v26 = [(ASAccount *)self protocol];
  v27 = [v26 useSmartMailTasks];
  HIDWORD(v43) = a5;
  v47 = v20;
  if (!a5 || !a10 || !v27)
  {

    v28 = v44;
    v29 = v21;
    v30 = v25;
    goto LABEL_17;
  }

  if (v19 && v20)
  {

    v28 = v44;
    v29 = v21;
    v30 = v25;
  }

  else
  {

    v28 = v44;
    v29 = v21;
    v30 = v25;
    if (!v21)
    {
      goto LABEL_17;
    }
  }

  v31 = v28;
  v45 = v19;
  v32 = [(ASAccount *)v30 accountID];
  v33 = [v32 isEqualToString:v48];

  v34 = DALoggingwithCategory();
  v35 = *(MEMORY[0x277D03988] + 6);
  v36 = os_log_type_enabled(v34, v35);
  if (!v33)
  {
    if (v36)
    {
      v39 = [(ASAccount *)v30 accountID];
      *buf = 138412546;
      v50 = v39;
      v51 = 2112;
      v52 = v48;
      _os_log_impl(&dword_24A0AC000, v34, v35, "Using normal send mail task, as this Exchange account's id (%@) doesn't match the one in the replied-to email (%@)", buf, 0x16u);

      v29 = v21;
    }

    v19 = v45;
    v28 = v31;
LABEL_17:
    v37 = v46;
    v38 = [[ASSendMailTask alloc] initWithMessage:v28 messageID:v46];
    v31 = v28;
    if (!v22)
    {
      goto LABEL_19;
    }

LABEL_18:
    [(ASTask *)v38 setSourceApplicationBundleIdentifier:v22];
    goto LABEL_19;
  }

  if (v36)
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v34, v35, "Using smart email task, as we have sufficient original headers in the email", buf, 2u);
  }

  LOBYTE(v43) = 1;
  v37 = v46;
  v19 = v45;
  v38 = [[ASSmartMailTask alloc] initWithMessage:v31 messageID:v46 messageType:HIDWORD(v43) originalMessageID:v47 instanceId:0 originalFolderID:v45 originalLongID:v29 replaceMime:v43];
  if (v22)
  {
    goto LABEL_18;
  }

LABEL_19:
  [(ASTask *)v38 setDelegate:v30];
  [(ASTask *)v38 setContext:v23];

  [(ASAccount *)v30 setConsumer:v24 forTask:v38];
  v40 = [(ASAccount *)v30 taskManager];
  [v40 submitQueuedTask:v38];

  LODWORD(v40) = [(ASTask *)v38 taskID];
  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

- (int)sendSmartMessageWithRFC822Data:(id)a3 messageID:(id)a4 outgoingMessageType:(int)a5 originalMessageFolderID:(id)a6 originalMessageItemID:(id)a7 originalMessageLongID:(id)a8 originalAccountID:(id)a9 replaceOriginalMime:(BOOL)a10 sourceApplicationBundleIdentifier:(id)a11 consumer:(id)a12 context:(id)a13
{
  v19 = a11;
  v20 = a13;
  v21 = a12;
  v22 = a8;
  v23 = a7;
  v24 = a6;
  v25 = a4;
  v26 = a3;
  LOBYTE(v30) = a10;
  v27 = [[ASSmartMailTask alloc] initWithMessage:v26 messageID:v25 messageType:a5 originalMessageID:v23 instanceId:0 originalFolderID:v24 originalLongID:v22 replaceMime:v30];

  if (v19)
  {
    [(ASTask *)v27 setSourceApplicationBundleIdentifier:v19];
  }

  [(ASTask *)v27 setDelegate:self];
  [(ASTask *)v27 setContext:v20];

  [(ASAccount *)self setConsumer:v21 forTask:v27];
  v28 = [(ASAccount *)self taskManager];
  [v28 submitQueuedTask:v27];

  LODWORD(v28) = [(ASTask *)v27 taskID];
  return v28;
}

- (void)_copyExchangeCalendarStore:(BOOL)a3
{
  v3 = a3;
  v62 = *MEMORY[0x277D85DE8];
  v6 = 0x278FC6000uLL;
  v7 = +[ASLocalDBHelper sharedInstance];
  v8 = [(ASAccount *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  [(ASAccount *)self accountID];
  v9 = CalDatabaseCopyStoreWithExternalID();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v3;
  }

  v11 = MEMORY[0x277D03988];
  if (v10 == 1)
  {
    v12 = DALoggingwithCategory();
    v13 = *(v11 + 3);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [(ASAccount *)self accountID];
      *buf = 138412290;
      v61 = v14;
      _os_log_impl(&dword_24A0AC000, v12, v13, "ACCOUNTDCOERROR Didn't find store with identifier %@ in cal db. Creating one", buf, 0xCu);
    }

    Store = CalDatabaseCreateStore();
    v16 = 1;
    CalStoreSetType();
    v17 = [(ASAccount *)self backingAccountInfo];
    [v17 accountDescription];
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
      v52 = [(ASAccount *)self accountID];
      [v51 calSaveDatabaseForAccountID:v52];

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
    v20 = [(ASAccount *)self accountID];
    v21 = [v20 isEqualToString:v19];

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
  v23 = [(ASAccount *)self calendarConstraintsPath];
  v59 = v22;
  if (([v22 isEqualToString:v23] & 1) == 0)
  {
    MEMORY[0x24C2111E0](v18, v23);
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
  v29 = [(ASAccount *)self backingAccountInfo];
  v30 = [v29 accountDescription];
  v31 = [v28 isEqualToString:v30];

  if ((v31 & 1) == 0)
  {
    v32 = [(ASAccount *)self backingAccountInfo];
    [v32 accountDescription];
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
  v34 = [(ASProtocol *)self->_protocol supportsFreeBusyLookup];
  if (v33 != (![(ASAccount *)self isHotmailAccount]&& v34))
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
  v36 = [(ASProtocol *)self->_protocol useSmartMailTasks];
  v37 = DALoggingwithCategory();
  v38 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v37, v38))
  {
    v39 = @"NO";
    if (v36)
    {
      v39 = @"YES";
    }

    *buf = 138412290;
    v61 = v39;
    _os_log_impl(&dword_24A0AC000, v37, v38, "Account supports event forwarding: %@", buf, 0xCu);
  }

  if (v35 != v36)
  {
    v40 = DALoggingwithCategory();
    if (os_log_type_enabled(v40, v38))
    {
      v41 = @"NO";
      if (v36)
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
  v43 = [(ASProtocol *)self->_protocol supportsProposeNewTime];
  v44 = DALoggingwithCategory();
  if (os_log_type_enabled(v44, v38))
  {
    v45 = @"NO";
    if (v43)
    {
      v45 = @"YES";
    }

    *buf = 138412290;
    v61 = v45;
    _os_log_impl(&dword_24A0AC000, v44, v38, "Account supports propose new time: %@", buf, 0xCu);
  }

  if (v42 != v43)
  {
    v46 = DALoggingwithCategory();
    if (os_log_type_enabled(v46, v38))
    {
      v47 = @"NO";
      if (v43)
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
  v50 = [(ASAccount *)self _externalInfoDictionary];
  if (v49 | v50 && ([v49 isEqual:v50] & 1) == 0)
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
  v53 = [*(v6 + 3688) sharedInstance];
  v54 = [v53 changeTrackingID];

  if (v54)
  {
    v55 = [*(v6 + 3688) sharedInstance];
    v56 = [(ASAccount *)self accountID];
    [v55 calDatabaseForAccountID:v56];
    CalDatabaseRegisterClientForPersistentChangeTrackingInStore();
  }

LABEL_84:
  v57 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)_externalInfoDictionary
{
  v17[3] = *MEMORY[0x277D85DE8];
  v3 = [(ASAccount *)self host];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x277CF7468];
    v17[0] = v3;
    v6 = *MEMORY[0x277CF7480];
    v16[0] = v5;
    v16[1] = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ASAccount port](self, "port")}];
    v17[1] = v7;
    v16[2] = *MEMORY[0x277CF7490];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ASAccount useSSL](self, "useSSL")}];
    v17[2] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

    v10 = [(ASAccount *)self emailAddresses];
    v11 = [(ASAccount *)self preferredAddress];
    if (v10 | v11)
    {
      v12 = [v9 mutableCopy];
      v13 = v12;
      if (v10)
      {
        [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x277CF7478]];
      }

      if (v11)
      {
        [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277CF7488]];
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

- (void)moveItemsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 movedItems:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(ASAccount *)self consumerForTask:v10];
  v14 = v13;
  if (a4 != 2)
  {
    v43 = a4;
    v44 = v10;
    v45 = v11;
LABEL_35:
    [v13 actionFailed:v43 forTask:v44 error:v45];
    goto LABEL_36;
  }

  if (!v13)
  {
    goto LABEL_36;
  }

  if (![v12 count])
  {
    v32 = 10;
LABEL_34:
    v13 = v14;
    v43 = v32;
    v44 = v10;
    v45 = 0;
    goto LABEL_35;
  }

  v47 = v14;
  v48 = v11;
  v49 = v12;
  v15 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v53 = v10;
  v16 = [v10 pushedMoveRequests];
  v17 = [v16 countByEnumeratingWithState:&v58 objects:v67 count:16];
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
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v58 + 1) + 8 * i);
        v23 = [v22 message];
        v24 = [v15 objectForKeyedSubscript:v23];

        if (v24)
        {
          v25 = DALoggingwithCategory();
          if (os_log_type_enabled(v25, v20))
          {
            *buf = 0;
            _os_log_impl(&dword_24A0AC000, v25, v20, "FAILWHALE!  The EAS spec is lossy when moving items, and you managed to move two items with the same (local-to-folder) id.  I am sorry for the inevitable event hilarity in your future", buf, 2u);
          }
        }

        else
        {
          v25 = [v22 message];
          [v15 setObject:v22 forKeyedSubscript:v25];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v18);
  }

  v12 = v49;
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
    v10 = v53;
LABEL_33:

    v14 = v47;
    v11 = v48;
    goto LABEL_34;
  }

  v27 = v26;
  v28 = *v55;
  type = *(MEMORY[0x277D03988] + 3);
  v10 = v53;
  while (2)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*v55 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v54 + 1) + 8 * j);
      v31 = [v30 status];
      v32 = [v10 taskStatusForExchangeStatus:{objc_msgSend(v31, "intValue")}];

      if (v32 != 2)
      {
        v12 = v49;
        goto LABEL_33;
      }

      v33 = objc_alloc(MEMORY[0x277D037A8]);
      v34 = [v30 status];
      v35 = [v34 intValue];
      v36 = [v30 srcMsgId];
      v37 = [v30 dstMsgId];
      v38 = [v33 initWithStatus:v35 sourceID:v36 destID:v37];

      v39 = [v30 srcMsgId];
      v40 = [v15 objectForKeyedSubscript:v39];

      if (v40)
      {
        [v38 setOrigRequest:v40];
      }

      else
      {
        v41 = DALoggingwithCategory();
        if (os_log_type_enabled(v41, type))
        {
          v42 = [v30 srcMsgId];
          *buf = 138412546;
          v63 = v15;
          v64 = 2112;
          v65 = v42;
          _os_log_impl(&dword_24A0AC000, v41, type, "We found a move response to an item we didn't try to move.  Orig requests %@, srcMsgId %@", buf, 0x16u);
        }
      }

      v10 = v53;
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

  v11 = v48;
  v12 = v49;
LABEL_36:

  v46 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelSearchQuery:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v25 = v4;
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
      v15 = [v14 query];
      v16 = [v15 isEqual:v4];

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

    v17 = [(ASAccount *)self taskManager];
    [v17 cancelTask:v10];
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
        v10 = [(ASAccount *)self taskManager];
        [v10 cancelTask:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reallyCancelPendingSearchQuery:(id)a3
{
  v3 = a3;
  v5 = [v3 consumer];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
  [v5 searchQuery:v3 finishedWithError:v4];
}

- (void)_reallyPerformSearchQuery:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ASAccount *)self setShouldUseOpportunisticSockets:0];
  [v4 setState:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ASAccount *)self taskManager];
    v6 = [v5 protocol];
    if ([v6 supportsMailboxEnhancedSearch] == 2)
    {

LABEL_11:
      v7 = [(ASSearchTask *)[ASMailboxSearchTask alloc] initWithQuery:v4];
      goto LABEL_12;
    }

    v9 = [v4 searchPredicate];

    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [ASMailboxSearchPredicate alloc];
    v11 = [v4 searchPredicate];
    v7 = [(ASMailboxSearchPredicate *)v10 initWithPredicate:v11];

    if ([(ASMailboxSearchTask *)v7 isValid])
    {
      v12 = [[ASMailboxEnhancedSearchTask alloc] initWithQuery:v4];

      v7 = v12;
LABEL_12:
      v8 = @"com.apple.mobilemail";
LABEL_13:
      [(ASTask *)v7 setSourceApplicationBundleIdentifier:v8];
      [(ASTask *)v7 setDelegate:self];
      v13 = [v4 consumer];
      [(ASAccount *)self setConsumer:v13 forTask:v7];

      [(NSMutableSet *)self->_searchTaskSet addObject:v7];
      v14 = [(ASAccount *)self taskManager];
      [v14 submitIndependentTask:v7];
      goto LABEL_20;
    }

    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = [v4 searchPredicate];
      v23 = 138412290;
      v24 = v20;
      _os_log_impl(&dword_24A0AC000, v18, v19, "_reallyPerformSearchQuery was passed an invalid search predicate: %@", &v23, 0xCu);
    }

    v14 = [v4 consumer];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:29 userInfo:0];
    [v14 searchQuery:v4 finishedWithError:v21];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(ASSearchTask *)[ASGALSearchTask alloc] initWithQuery:v4];
      if ([v4 calendarInitiated])
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

    v7 = [v4 consumer];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:29 userInfo:0];
    [(ASMailboxSearchTask *)v7 searchQuery:v4 finishedWithError:v14];
  }

LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)searchTask:(id)a3 returnedResults:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(ASAccount *)self consumerForTask:v7];
  v8 = [v7 query];

  [v9 searchQuery:v8 returnedResults:v6];
}

- (void)searchTask:(id)a3 returnedTotalCount:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ASAccount *)self consumerForTask:v9];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v9 query];
    [v7 searchQuery:v8 returnedTotalCount:v6];
  }
}

- (void)searchTask:(id)a3 finishedWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASAccount *)self consumerForTask:v6];
  if ([v6 taskStatusForError:v7] == -1)
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      v13 = 134217984;
      v14 = v6;
      _os_log_impl(&dword_24A0AC000, v9, v10, "Search task %p was cancelled", &v13, 0xCu);
    }
  }

  v11 = [v6 query];
  [v8 searchQuery:v11 finishedWithError:v7];

  [(NSMutableSet *)self->_searchTaskSet removeObject:v6];
  [(ASAccount *)self removeConsumerForTask:v6];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v11;
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

    if ([v10 count] <= 1)
    {
      v24 = MEMORY[0x277D03920];
      v25 = [v10 anyObject];
      v23 = [v24 contactsSearchQueryWithSearchString:v25 searchBase:0 searchScope:0 consumer:v12];

      if (a5)
      {
        [v23 setRange:{0, a5 - 1}];
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
  [v12 calendarDirectorySearchFinishedWithError:v22 exceededResultLimit:0];

  v23 = 0;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)performSearchQuery:(id)a3
{
  v4 = a3;
  v5 = [v4 searchString];
  v6 = [v5 length];

  if (!v6)
  {
LABEL_10:
    v13 = [v4 consumer];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:-1 userInfo:0];
    [v13 searchQuery:v4 finishedWithError:v14];

    goto LABEL_11;
  }

  v7 = [v4 searchString];
  v8 = [v7 length];

  if (v8 < 4)
  {
    v9 = [v4 searchString];
    v10 = -[ASAccount isUnicodeGeneralCategoryLetterOther:](self, "isUnicodeGeneralCategoryLetterOther:", [v9 characterAtIndex:0]);

    if (v10)
    {
      v16.receiver = self;
      v16.super_class = ASAccount;
      [(ASAccount *)&v16 performSearchQuery:v4];
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
  [(ASAccount *)&v17 performSearchQuery:v4];
LABEL_11:
}

- (void)settingsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 response:(id)a6
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

- (void)_explodeEmailAddress:(id)a3 outUsername:(id *)a4 outEmailAddress:(id *)a5
{
  v15 = a3;
  *a5 = v15;
  v7 = [v15 rangeOfString:@"@" options:4];
  v8 = v15;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v15 substringToIndex:v7];
    if ([v9 length])
    {
      v10 = v9;
      *a4 = v9;
    }

    v8 = v15;
  }

  v11 = [v8 rangeOfString:@"\\""];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v15 substringFromIndex:v11 + v12];
    if ([v13 length])
    {
      v14 = v13;
      *a5 = v13;
    }
  }

  MEMORY[0x2821F97C8]();
}

- (BOOL)_generateAutodiscoverURLsForEmailAddress:(id)a3 explicitUsername:(id)a4 withConsumer:(id)a5
{
  v76[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v57 = a5;
  v10 = [(ASAccount *)self emailAddress];
  v67 = 0;
  v68 = 0;
  [(ASAccount *)self _explodeEmailAddress:v10 outUsername:&v68 outEmailAddress:&v67];
  v11 = v68;
  v58 = v67;

  v12 = [(NSMutableSet *)v8 componentsSeparatedByString:@"@"];
  v13 = [v12 count];
  v14 = MEMORY[0x277D03988];
  if (v13 >= 2 && ([(__CFString *)v11 length]|| [(__CFString *)v58 length]))
  {
    v48 = v11;
    v49 = v9;
    v47 = v12;
    v15 = [v12 lastObject];
    if (self->_useHTTPForTesting)
    {
      v16 = &stru_285D39BD0;
    }

    else
    {
      v16 = @"s";
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"http%@://%@/%@", v16, v15, @"Autodiscover/Autodiscover.xml"];
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

    v46 = v15;
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"http%@://%@%@/%@", v18, v19, v15, @"Autodiscover/Autodiscover.xml"];
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

      v24 = v9;
      if (!v9)
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
                  [(ASAccount *)self setConsumer:v57 forTask:v34];
                  oneAutodiscoverAtATime = self->_oneAutodiscoverAtATime;
                  v36 = [(ASAccount *)self taskManager];
                  v37 = v36;
                  if (oneAutodiscoverAtATime)
                  {
                    [v36 submitQueuedTask:v34];
                  }

                  else
                  {
                    [v36 submitIndependentTask:v34];
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
    v9 = v49;
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
      v70 = v8;
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
        v16 = [(ASAccount *)self taskManager];
        [v16 cancelTask:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)autodiscoverV2Task:(id)a3 completedWithStatus:(int64_t)a4 authorizationURI:(id)a5 easEndPoint:(id)a6 issuer:(id)a7 error:(id)a8
{
  v76 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v69 = a3;
  v17 = [(ASAccount *)self consumerForTask:?];
  [(NSMutableSet *)self->_autodiscoveryTasks removeAllObjects];
  v18 = [(ASAccount *)self _easEndPointFQDNFromURL:v14];
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
    if (v13)
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
  if (v13)
  {
LABEL_6:
    v65 = v17;
    [(ASAccount *)self setObject:v18 forKeyedSubscript:*MEMORY[0x277D07A30]];
    v67 = v15;
    if ([v15 isEqualToString:@"ADFS"])
    {
      [(ASAccount *)self setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D07A98]];
    }

    v66 = v16;
    v24 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v25 = [v24 host];
    v26 = *MEMORY[0x277D07A28];
    [(ASAccount *)self setObject:v25 forKeyedSubscript:*MEMORY[0x277D07A28]];

    v27 = v14;
    if (v23)
    {
      v28 = v13;
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
      v50 = [v49 host];
      [(ASAccount *)self setObject:v50 forKeyedSubscript:v43];

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
    v14 = v27;
    if (os_log_type_enabled(v59, type))
    {
      v60 = [(ASAccount *)self emailAddress];
      v61 = [(ASAccount *)self objectForKeyedSubscript:v26];
      v62 = [(ASAccount *)self objectForKeyedSubscript:v51];
      *buf = 138412802;
      v71 = v60;
      v72 = 2112;
      v73 = v61;
      v74 = 2112;
      v75 = v62;
      _os_log_impl(&dword_24A0AC000, v59, type, "AutoDV2 Task Successfully finished for emailAddress %@ with Host::%@ AuthURI::%@", buf, 0x20u);
    }

    v13 = v28;
    v16 = v66;
    v15 = v67;
    v17 = v65;
    goto LABEL_42;
  }

LABEL_15:
  if (v23)
  {
    [(ASAccount *)self setObject:v18 forKeyedSubscript:*MEMORY[0x277D07A30]];
    v30 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 scheme];

      if (v32)
      {
        v33 = MEMORY[0x277CCABB0];
        v34 = [v31 scheme];
        v35 = [v33 numberWithBool:{objc_msgSend(v34, "hasPrefix:", @"https"}];
        [(ASAccount *)self setUseSSL:v35 != 0];
      }

      v36 = [v31 host];

      if (v36)
      {
        v37 = [v31 host];
        [(ASAccount *)self setHost:v37];
      }

      v38 = [v31 port];

      if (v38)
      {
        v39 = [v31 port];
        -[ASAccount setPort:](self, "setPort:", [v39 integerValue]);
      }

      v40 = [(ASAccount *)self emailAddress];
      [(ASAccount *)self setUsername:v40];
    }

    v41 = DALoggingwithCategory();
    if (os_log_type_enabled(v41, type))
    {
      v42 = [(ASAccount *)self emailAddress];
      *buf = 138412546;
      v71 = v42;
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
      v63 = [(ASAccount *)self emailAddress];
      *buf = 138412546;
      v71 = v63;
      v72 = 2112;
      v73 = v16;
      _os_log_impl(&dword_24A0AC000, v31, type, "AutoDV2 Task Failed for emailAddress %@ With Error :: %@", buf, 0x16u);
    }
  }

  [(ASAccount *)self setAccountProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D03838]];
  v28 = 0;
LABEL_42:
  [v17 OAuthAccount:self authorizationURI:v28 error:v16];
  [(ASAccount *)self removeConsumerForTask:v69];

  v64 = *MEMORY[0x277D85DE8];
}

- (id)_easEndPointFQDNFromURL:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = a3;
    v5 = [[v3 alloc] initWithString:v4];

    v6 = objc_alloc_init(MEMORY[0x277CCACE0]);
    v7 = [v5 scheme];
    [v6 setScheme:v7];

    v8 = [v5 host];
    [v6 setHost:v8];

    v9 = [v6 URL];
    v10 = [v9 absoluteString];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)autodiscoverAccountConfigurationWithConsumer:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ASAccount *)self setShouldUseOpportunisticSockets:0];
  [(NSLock *)self->_autodiscoverTaskLock lock];
  if ([(NSMutableSet *)self->_autodiscoveryTasks count])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v20 = 138412290;
      v21 = self;
      _os_log_impl(&dword_24A0AC000, v5, v6, "Autodiscovery is already running %@", &v20, 0xCu);
    }

    [(NSLock *)self->_autodiscoverTaskLock unlock];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D038E0];
    v9 = 61;
    goto LABEL_12;
  }

  v10 = [(ASAccount *)self emailAddress];

  if (!v10)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v15, v16))
    {
      v20 = 138412290;
      v21 = self;
      _os_log_impl(&dword_24A0AC000, v15, v16, "Autodiscover called on account %@, but that account does not have an email address set. Ignoring autodiscovery request", &v20, 0xCu);
    }

    [(NSLock *)self->_autodiscoverTaskLock unlock];
    goto LABEL_11;
  }

  v11 = [(ASAccount *)self emailAddress];
  v12 = [(ASAccount *)self username];
  v13 = [(ASAccount *)self _generateAutodiscoverURLsForEmailAddress:v11 explicitUsername:v12 withConsumer:v4];

  [(NSLock *)self->_autodiscoverTaskLock unlock];
  if (!v13)
  {
LABEL_11:
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D038E0];
    v9 = 60;
LABEL_12:
    v17 = [v7 errorWithDomain:v8 code:v9 userInfo:0];
    [v4 account:self wasAutoDiscovered:0 error:v17];

    v14 = 0;
    goto LABEL_13;
  }

  v14 = 1;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)autodiscoverTask:(id)a3 completedWithStatus:(int64_t)a4 accountInfo:(id)a5 shouldRetryWithEmail:(id)a6 error:(id)a7
{
  v56 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(ASAccount *)self consumerForTask:v12];
  v17 = DALoggingwithCategory();
  v18 = v17;
  v19 = MEMORY[0x277D03988];
  if (a4 == 2)
  {
    v20 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v17, v20))
    {
      *buf = 138412290;
      v53 = v13;
      _os_log_impl(&dword_24A0AC000, v18, v20, "Autodiscover task completed successfully. Account info: %@", buf, 0xCu);
    }

    if (v13)
    {
      v51 = v14;
      v21 = [(__CFString *)v13 objectForKeyedSubscript:kAutodiscoverShouldUseSSL];
      v22 = DALoggingwithCategory();
      v23 = *(v19 + 4);
      v24 = os_log_type_enabled(v22, v23);
      if (v21)
      {
        if (v24)
        {
          *buf = 138412290;
          v53 = v21;
          _os_log_impl(&dword_24A0AC000, v22, v23, "Setting useSSL: %@", buf, 0xCu);
        }

        [(ASAccount *)self setUseSSL:[v21 BOOLValue]];
      }

      else
      {
        if (v24)
        {
          *buf = 138412290;
          v53 = kAutodiscoverShouldUseSSL;
          _os_log_impl(&dword_24A0AC000, v22, v23, "No SSL setting found for key %@", buf, 0xCu);
        }
      }

      v38 = [(__CFString *)v13 objectForKeyedSubscript:kAutodiscoverHost];
      if (v38)
      {
        v39 = DALoggingwithCategory();
        if (os_log_type_enabled(v39, v20))
        {
          *buf = 138412290;
          v53 = v38;
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

      v42 = [(__CFString *)v13 objectForKeyedSubscript:kAutodiscoverPort, v16];
      if (v42)
      {
        v43 = DALoggingwithCategory();
        if (os_log_type_enabled(v43, v20))
        {
          *buf = 138412290;
          v53 = v42;
          _os_log_impl(&dword_24A0AC000, v43, v20, "Setting port: %@", buf, 0xCu);
        }

        [(ASAccount *)self setPort:[(__CFString *)v42 intValue]];
      }

      v44 = [(__CFString *)v13 objectForKeyedSubscript:kAutodiscoverUsername];
      if (v44)
      {
        v45 = DALoggingwithCategory();
        if (os_log_type_enabled(v45, v20))
        {
          *buf = 138412290;
          v53 = v44;
          _os_log_impl(&dword_24A0AC000, v45, v20, "Setting username %@", buf, 0xCu);
        }

        [(ASAccount *)self setUsername:v44];
      }

      v16 = v50;
      v14 = v51;
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
    [(NSMutableSet *)self->_autodiscoveryTasks removeObject:v12];
    [(NSLock *)self->_autodiscoverTaskLock unlock];
    [(ASAccount *)self _silentlyTearDownAutodiscoveryTasks];
    v35 = v16;
    v36 = self;
    v37 = 1;
    v34 = v15;
    goto LABEL_48;
  }

  v25 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v17, v25))
  {
    *buf = 134218242;
    v53 = a4;
    v54 = 2112;
    v55 = v15;
    _os_log_impl(&dword_24A0AC000, v18, v25, "Autodiscover task failed with status %ld and error %@", buf, 0x16u);
  }

  [(NSLock *)self->_autodiscoverTaskLock lock];
  [(NSMutableSet *)self->_autodiscoveryTasks removeObject:v12];
  [(NSLock *)self->_autodiscoverTaskLock unlock];
  if (v14)
  {
    [(ASAccount *)self _silentlyTearDownAutodiscoveryTasks];
    v26 = [(ASAccount *)self username];
    [(ASAccount *)self _generateAutodiscoverURLsForEmailAddress:v14 explicitUsername:v26 withConsumer:v16];
  }

  [(NSLock *)self->_autodiscoverTaskLock lock];
  if ([(NSMutableSet *)self->_autodiscoveryTasks count])
  {
    v27 = [(NSError *)v15 domain];
    if ([v27 isEqualToString:@"ASHTTPConnectionErrorDomain"] && -[NSError code](v15, "code") == 401)
    {
      autodiscovery401Error = self->_autodiscovery401Error;

      if (autodiscovery401Error)
      {
LABEL_21:
        [(NSLock *)self->_autodiscoverTaskLock unlock];
        [(ASAccount *)self removeConsumerForTask:v12];
        goto LABEL_51;
      }

      v29 = DALoggingwithCategory();
      v30 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v29, *(MEMORY[0x277D03988] + 6)))
      {
        *buf = 0;
        _os_log_impl(&dword_24A0AC000, v29, v30, "Retaining 401 error from autodiscovery.", buf, 2u);
      }

      v31 = v15;
      v27 = self->_autodiscovery401Error;
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
    v34 = v15;
  }

  v35 = v16;
  v36 = self;
  v37 = 0;
LABEL_48:
  [v35 account:v36 wasAutoDiscovered:v37 error:v34];
  [(ASAccount *)self removeConsumerForTask:v12];
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
  v2 = [(ASAccount *)self username];
  v3 = [v2 rangeOfString:@"\\""];
  v4 = [v2 rangeOfString:@"/"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v2;
LABEL_9:
      v8 = v6;
      goto LABEL_11;
    }

    if (v4 < [v2 length] - 1)
    {
      v7 = v5 + 1;
      goto LABEL_8;
    }
  }

  else if (v3 < [v2 length] - 1)
  {
    v7 = v3 + 1;
LABEL_8:
    v6 = [v2 substringFromIndex:v7];
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
    v5 = [(ASAccount *)self emailAddress];
    if (v5)
    {
      v6 = [(ASAccount *)self emailAddress];
      v9[0] = v6;
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

- (void)setPrimarySMTPAddress:(id)a3 emailAddresses:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v6];
  v8 = [v7 allObjects];
  v9 = [(ASAccount *)self emailAddress];
  v10 = [v8 mutableCopy];
  v11 = v10;
  if (!v9)
  {
    goto LABEL_11;
  }

  if (v19)
  {
    v12 = [v9 isEqualToString:v19];
    [v11 removeObject:v19];
    [v11 insertObject:v19 atIndex:0];
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
    if (![v15 caseInsensitiveCompare:v9])
    {
      break;
    }

    v13 = v14;
    if ([v11 count] <= v14++)
    {
      goto LABEL_11;
    }
  }

  v17 = [v9 isEqualToString:v15];
  [v11 removeObjectAtIndex:v13];
  [v11 insertObject:v15 atIndex:0];

  if ((v17 & 1) == 0)
  {
LABEL_11:
    if (v19)
    {
LABEL_12:
      [(ASAccount *)self setEmailAddress:v19];
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
  v4 = [(ASAccount *)self persistentUUID];
  v5 = [(ASPerAccountPolicyData *)v3 initWithAccountPersistentUUID:v4];

  v6 = [(ASPerAccountPolicyData *)v5 policyValues];
  v7 = [v6 objectForKeyedSubscript:@"MaxEmailAgeFilter"];

  LODWORD(v6) = ASNumPastDaysToSyncForFilterCode([v7 intValue]);
  return v6;
}

- (int)mailNumberOfPastDaysToSync
{
  v3 = [(ASAccount *)self objectForKeyedSubscript:@"ASAccountMailNumberOfPastDaysToSync"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 31;
    [(ASAccount *)self setMailNumberOfPastDaysToSync:31];
  }

  v6 = [(ASAccount *)self mailNumberOfPastDaysToSyncUpperLimit];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (void)setLastKnownProtocolVersion:(id)a3 save:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(ASAccount *)self lastKnownProtocolVersion];
  v7 = [v6 isEqualToString:v8];

  if ((v7 & 1) == 0)
  {
    [(ASAccount *)self setObject:v8 forKeyedSubscript:@"ASLastKnownProtocolVersion"];
    if (v4)
    {
      [(ASAccount *)self saveAccountProperties];
    }
  }
}

- (void)setSavedFolderPathsThatClientsCareAbout:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Setting folder paths that clients care about %@", &v9, 0xCu);
  }

  if ([v4 count])
  {
    v7 = v4;
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

- (void)setLastKnownProtocolVersion:(id)a3
{
  v4 = a3;
  [(ASAccount *)self setLastKnownProtocolVersion:v4 save:[(ASAccount *)self _shouldSaveLastKnownProtocolVersion]];
}

- (void)setSigningIdentityPersistentReference:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"ASSigningIdentityPersistentReference";
  v9[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(ASAccount *)self applyNewAccountProperties:v6 saveIfDifferent:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setEncryptionIdentityPersistentReference:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"ASEncryptionIdentityPersistentReference";
  v9[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [(ASAccount *)self applyNewAccountProperties:v6 saveIfDifferent:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setProtocolVersion:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Account's protocol version set to %@", &v10, 0xCu);
  }

  [(ASAccount *)self setLastKnownProtocolVersion:v4];
  v7 = [[ASProtocol alloc] initWithVersion:v4];
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
    v5 = [(ASAccount *)self lastKnownProtocolVersion];
    v6 = [(ASProtocol *)v4 initWithCachedVersion:v5];
    v7 = self->_protocol;
    self->_protocol = v6;

    protocol = self->_protocol;
  }

  return protocol;
}

- (int)supportsMailboxSearch
{
  v2 = [(ASAccount *)self protocol];
  v3 = [v2 supportsMailboxSearch];

  return v3;
}

- (int)supportsEmailFlagging
{
  v3 = [(ASAccount *)self protocol];
  v4 = [v3 supportsEmailFlagging];

  if ([(ASAccount *)self isGoogleAccount])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (int)supportsConversations
{
  v2 = [(ASAccount *)self protocol];
  v3 = [v2 supportsConversations];

  return v3;
}

- (int)supportsDraftFolderSync
{
  v2 = [(ASAccount *)self protocol];
  v3 = [v2 supportsDraftFolderSync];

  return v3;
}

- (int)supportsSmartForwardReply
{
  v2 = [(ASAccount *)self protocol];
  if ([v2 useSmartMailTasks])
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
  v2 = [(ASAccount *)self protocol];
  v3 = [v2 supportsUniqueServerId];

  return v3;
}

- (id)calendarConstraintsPath
{
  v2 = [(ASAccount *)self protocol];
  v3 = [v2 calendarConstraintsPath];

  return v3;
}

- (id)addressBookConstraintsPath
{
  v2 = [(ASAccount *)self protocol];
  v3 = [v2 addressBookConstraintsPath];

  return v3;
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
    v3 = 0;
  }

  else
  {
    v4 = [(ASAccount *)self protocol];
    v3 = [v4 supportsNoteSyncing];
  }

  v5 = [(ASAccount *)self backingAccountInfo];
  v6 = [v5 provisionedDataclasses];
  v7 = *MEMORY[0x277CB9178];
  v8 = [v6 containsObject:*MEMORY[0x277CB9178]];

  if (!v3 || (v8 & 1) != 0)
  {
    if (v3 & 1 | ((v8 & 1) == 0))
    {
      return;
    }

    v17 = [(ASAccount *)self backingAccountInfo];
    v10 = [v17 provisionedDataclasses];

    [v10 removeObject:v7];
    v18 = [(ASAccount *)self backingAccountInfo];
    [v18 setProvisionedDataclasses:v10];

    v15 = [(ASAccount *)self backingAccountInfo];
    v12 = v15;
    v16 = 0;
  }

  else
  {
    v9 = [(ASAccount *)self backingAccountInfo];
    v10 = [v9 provisionedDataclasses];

    [v10 addObject:v7];
    v11 = [(ASAccount *)self backingAccountInfo];
    [v11 setProvisionedDataclasses:v10];

    v12 = [(ASAccount *)self backingAccountInfo];
    v13 = [v12 enabledDataclasses];
    if (![v13 count])
    {

      goto LABEL_13;
    }

    v14 = [(ASAccount *)self _managedConfigurationDisablesNotes];

    if (v14)
    {
      goto LABEL_14;
    }

    v15 = [(ASAccount *)self backingAccountInfo];
    v12 = v15;
    v16 = 1;
  }

  [v15 setEnabled:v16 forDataclass:v7];
LABEL_13:

LABEL_14:
  if ([(ASAccount *)self _shouldEditNotesSupportOnProtocolChange])
  {

    [(ASAccount *)self saveAccountProperties];
  }
}

- (id)domainOnly
{
  v2 = [(ASAccount *)self username];
  v3 = [v2 rangeOfString:@"\\""];
  v4 = [v2 rangeOfString:@"/"];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL && v3 != 0)
  {
    goto LABEL_9;
  }

  v6 = 0;
  if (v4 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = v4;
LABEL_9:
    v6 = [v2 substringToIndex:v3];
  }

  return v6;
}

- (BOOL)isHotmailAccount
{
  v3 = [(ASAccount *)self domainOnly];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ASAccount *)self host];
    v4 = [v5 hasSuffix:@".hotmail.com"];
  }

  return v4;
}

- (BOOL)isGoogleAccount
{
  v3 = [(ASAccount *)self domainOnly];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ASAccount *)self host];
    v4 = [v5 hasSuffix:@".google.com"];
  }

  return v4;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v4 = a3;
  if (-[ASAccount isHotmailAccount](self, "isHotmailAccount") && ([v4 isHotmailAccount] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ASAccount *)self host];
    v7 = [v4 host];
    v5 = areEqualStrings(v6, v7);
  }

  v8 = [v4 usernameWithoutDomain];
  v9 = [(ASAccount *)self usernameWithoutDomain];
  v10 = 0;
  if (!areEqualStrings(v8, v9) || !v5)
  {
    goto LABEL_19;
  }

  v11 = [v4 identityPersist];
  v12 = [v11 length];
  if (!v12)
  {
    v5 = [(ASAccount *)self identityPersist];
    if (![v5 length])
    {

LABEL_14:
      v8 = [v4 domainOnly];
      v9 = [(ASAccount *)self domainOnly];
      v10 = ![v8 length] || !objc_msgSend(v9, "length") || !objc_msgSend(v8, "caseInsensitiveCompare:", v9);
LABEL_19:

      goto LABEL_20;
    }
  }

  v13 = [v4 identityPersist];
  v14 = [(ASAccount *)self identityPersist];
  v15 = [v13 isEqualToData:v14];

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

- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASAccount;
  if ([(ASAccount *)&v14 accountHasSignificantPropertyChangesFromOldAccountInfo:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ASAccount *)self objectForKeyedSubscript:@"ASAccountEmailAddresses"];
    v7 = [v4 objectForKeyedSubscript:@"ASAccountEmailAddresses"];
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
      v11 = [v4 objectForKeyedSubscript:@"ASLastKnownProtocolVersion"];
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
  v2 = [(ASAccount *)self isHotmailAccount];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
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
  v3 = [(ASAccount *)self isHotmailAccount];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v3)
  {
    v7 = @"INVALID_PASSWORD_BODY_HOTMAIL";
  }

  else
  {
    v7 = @"INVALID_PASSWORD_BODY_EXCHANGE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_285D39BD0 table:@"DataAccess"];
  v9 = [(ASAccount *)self accountDescription];
  v10 = [v4 stringWithFormat:v8, v9];

  return v10;
}

- (void)account:(id)a3 isValid:(BOOL)a4 validationError:(id)a5
{
  v6 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = @"not valid";
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    if (v6)
    {
      v12 = @"valid";
    }

    v17 = v12;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_24A0AC000, v10, v11, "Account validation callback for %@. Account is %@ with error %@", &v14, 0x20u);
  }

  if (v6)
  {
    [(ASAccount *)self saveAccountProperties];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)renewCredentialsWithHandler:(id)a3
{
  v4 = a3;
  v5 = sharedDAAccountStore();
  v6 = [(ASAccount *)self backingAccountInfo];
  v7 = [(ASAccount *)self wasUserInitiated];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ASAccount_RenewCredential__renewCredentialsWithHandler___block_invoke;
  v9[3] = &unk_278FC7E20;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v5 renewCredentialsForAccount:v6 force:v7 reason:0 completion:v9];
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