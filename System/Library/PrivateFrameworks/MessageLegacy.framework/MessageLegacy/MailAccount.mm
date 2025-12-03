@interface MailAccount
+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount;
+ (BOOL)mailboxListingNotificationAreEnabled;
+ (MailAccount)accountWithPath:(id)path;
+ (MailAccount)accountWithURL:(id)l;
+ (MailAccount)accountWithURLString:(id)string;
+ (MailAccount)accountWithUniqueId:(id)id;
+ (id)URLForInfo:(id)info;
+ (id)_accountContainingEmailAddress:(id)address matchingAddress:(id *)matchingAddress fullUserName:(id *)name includingInactive:(BOOL)inactive;
+ (id)_accountWithPath:(id)path;
+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)restricted;
+ (id)_loadAllAccountsWithOptions:(unint64_t)options error:(id *)error;
+ (id)accountThatMessageIsFrom:(id)from;
+ (id)accountUsingHeadersFromMessage:(id)message;
+ (id)activeAccountsWithError:(id *)error;
+ (id)addressesThatReceivedMessage:(id)message;
+ (id)allActivePrimaryMailboxUids;
+ (id)allEmailAddressesIncludingFullUserName:(BOOL)name includeReceiveAliases:(BOOL)aliases;
+ (id)allMailboxUids;
+ (id)defaultAccountDirectory;
+ (id)defaultDeliveryAccount;
+ (id)defaultPathForAccountWithHostname:(id)hostname username:(id)username;
+ (id)existingAccountForUniqueID:(id)d;
+ (id)existingAccountWithType:(id)type hostname:(id)hostname username:(id)username;
+ (id)infoForURL:(id)l;
+ (id)lastMailAccountsReloadDate;
+ (id)lastMailAccountsReloadError;
+ (id)mailAccountsWithError:(id *)error;
+ (id)mailboxUidFromActiveAccountsForURL:(id)l;
+ (id)newAccountWithDictionary:(id)dictionary;
+ (id)newAccountWithPath:(id)path;
+ (id)outboxMailboxUid;
+ (id)purgableAccountsWithError:(id *)error;
+ (id)standardAccountClass:(Class)class valueForKey:(id)key;
+ (void)_addAccountToSortedPaths:(id)paths;
+ (void)_removeAccountFromSortedPaths:(id)paths;
+ (void)_setMailAccounts:(id)accounts saveIfChanged:(BOOL)changed alreadyLocked:(BOOL)locked;
+ (void)_setOutboxMailboxUid:(id)uid;
+ (void)_setupSortedPathsForAccounts:(id)accounts;
+ (void)disableMailboxListingNotifications;
+ (void)enableMailboxListingNotifications:(BOOL)notifications;
+ (void)initialize;
+ (void)reloadAccounts;
+ (void)resetMailboxTimers;
+ (void)saveStateForAllAccounts;
+ (void)setDataclassesConsideredActive:(id)active;
+ (void)setGlobalPathForAccounts:(id)accounts;
+ (void)setMailAccountLoadOptions:(unint64_t)options;
+ (void)updateAutoFetchSettings;
+ (void)updateEmailAliasesForActiveAccounts;
- (BOOL)_renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (BOOL)_resetSpecialMailboxes;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)_setPath:(id)path;
- (BOOL)_shouldLogDeleteActivity;
- (BOOL)canArchiveForMailbox:(id)mailbox;
- (BOOL)canMailboxBeRenamed:(id)renamed;
- (BOOL)canUseCarrierDeliveryFallback;
- (BOOL)canUseDeliveryAccount:(id)account;
- (BOOL)deleteMailbox:(id)mailbox;
- (BOOL)deliveryAccountInUseByOtherAccounts:(id)accounts;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)isAccountClassEquivalentTo:(id)to;
- (BOOL)isActive;
- (BOOL)isActiveWithPersistentAccount:(id)account;
- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username;
- (BOOL)isHostnameEquivalentTo:(id)to;
- (BOOL)isSpecialMailbox:(id)mailbox;
- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure;
- (BOOL)ownsMailboxUidWithURL:(id)l;
- (BOOL)perMessageEncryptionEnabled;
- (BOOL)preventArchiveForMailbox:(id)mailbox;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name;
- (BOOL)restrictedFromSendingExternally;
- (BOOL)restrictedFromSyncingRecents;
- (BOOL)restrictedFromTransferingMessagesToOtherAccounts;
- (BOOL)secureMIMEEnabled;
- (BOOL)shouldArchiveByDefault;
- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request;
- (BOOL)sourceIsManaged;
- (BOOL)supportsMailDrop;
- (BOOL)willPerformActionForChokePoint:(id)point coalescePoint:(id)coalescePoint result:(id *)result;
- (MailAccount)initWithLibrary:(id)library path:(id)path;
- (MailAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (id)URLString;
- (id)_URLForInfo:(id)info;
- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name;
- (id)_defaultSpecialMailboxNameForType:(int)type;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)_infoForMatchingURL:(id)l;
- (id)_specialMailboxIvarOfType:(int)type;
- (id)allLocalMailboxUids;
- (id)allMailboxUids;
- (id)connectionError;
- (id)deliveryAccountAlternates;
- (id)description;
- (id)displayName;
- (id)displayNameForMailboxUid:(id)uid;
- (id)emailAddresses;
- (id)emailAddressesAndAliases;
- (id)emailAddressesDictionary;
- (id)encryptionIdentityPersistentReferenceForAddress:(id)address;
- (id)firstEmailAddress;
- (id)iconString;
- (id)lastEmailAliasesSyncDate;
- (id)library;
- (id)loggingIdentifier;
- (id)mailboxCachePath;
- (id)mailboxUidForInfo:(id)info;
- (id)mailboxUidForURL:(id)l;
- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)time;
- (id)moveMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox markAsRead:(BOOL)read;
- (id)newMailboxWithParent:(id)parent name:(id)name;
- (id)path;
- (id)powerAssertionIdentifierWithPrefix:(id)prefix;
- (id)pushedMailboxUids;
- (id)receiveEmailAliasAddresses;
- (id)receiveEmailAliasAddressesList;
- (id)rootMailboxUid;
- (id)signingIdentityPersistentReferenceForAddress:(id)address;
- (id)specialMailboxNameForType:(int)type;
- (id)storeForMailboxUid:(id)uid;
- (id)tildeAbbreviatedPath;
- (id)uniqueServerIdForMessage:(id)message;
- (int)_emptyFrequencyForKey:(id)key defaultValue:(id)value;
- (int)archiveDestinationForMailbox:(id)mailbox;
- (int)cachePolicy;
- (int)secureCompositionEncryptionPolicyForAddress:(id)address;
- (int)secureCompositionSigningPolicyForAddress:(id)address;
- (int64_t)libraryID;
- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)data;
- (void)_didBecomeActive:(BOOL)active;
- (void)_invalidateAndDeleteAccountData:(BOOL)data;
- (void)_invalidateCachedMailboxen;
- (void)_loadEntriesFromFileSystemPath:(id)path parent:(id)parent;
- (void)_resetAllMailboxURLs:(BOOL)ls;
- (void)_setAccountProperties:(id)properties;
- (void)_setEmptyFrequency:(int)frequency forKey:(id)key;
- (void)_setSpecialMailboxName:(id)name forType:(int)type;
- (void)_synchronizeMailboxListWithFileSystem;
- (void)_writeMailboxCacheWithPrejudice:(BOOL)prejudice;
- (void)dealloc;
- (void)deleteDeliveryAccountIfNeeded;
- (void)deliveryAccountWillBeRemoved:(id)removed;
- (void)didFinishActionForChokePoint:(id)point coalescePoint:(id)coalescePoint withResult:(id)result;
- (void)emptyTrash;
- (void)forceFetchMailboxList;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)persistentAccountDidChange:(id)change previousAccount:(id)account;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)saveState;
- (void)setCachePolicy:(int)policy;
- (void)setConnectionError:(id)error;
- (void)setDefaultEmailAddress:(id)address;
- (void)setDeliveryAccount:(id)account;
- (void)setDeliveryAccountAlternates:(id)alternates;
- (void)setEmailAddresses:(id)addresses;
- (void)setFullUserName:(id)name;
- (void)setHostname:(id)hostname;
- (void)setLastEmailAliasesSyncDate:(id)date;
- (void)setLastKnownHostname:(id)hostname;
- (void)setLibrary:(id)library;
- (void)setMailboxCachePath:(id)path;
- (void)setPath:(id)path;
- (void)setReceiveEmailAliasAddresses:(id)addresses;
- (void)setUsername:(id)username;
- (void)setValueInAccountProperties:(id)properties forKey:(id)key;
@end

@implementation MailAccount

+ (void)initialize
{
  if (!_accountsSortedByPath)
  {
    _accountsSortedByPath = CFArrayCreateMutable(0, 0, 0);
    _sortedAccountPaths = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  }
}

+ (BOOL)mailboxListingNotificationAreEnabled
{
  _MFLockGlobalLock();
  v2 = _disableMailboxListingNotifications;
  _MFUnlockGlobalLock();
  return (v2 & 1) == 0;
}

+ (void)disableMailboxListingNotifications
{
  _MFLockGlobalLock();
  _disableMailboxListingNotifications = 1;

  _MFUnlockGlobalLock();
}

+ (void)enableMailboxListingNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  _MFLockGlobalLock();
  _disableMailboxListingNotifications = 0;
  _MFUnlockGlobalLock();
  if (notificationsCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"AccountMailboxListingDidChange" object:0 userInfo:0];
  }
}

+ (void)_addAccountToSortedPaths:(id)paths
{
  path = [paths path];
  if ([path hasPrefix:@"~"])
  {
    mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [path mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  }

  else
  {
    mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = path;
    path = [paths tildeAbbreviatedPath];
  }

  mf_betterStringByResolvingSymlinksInPath = [mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath mf_betterStringByResolvingSymlinksInPath];
  v7 = _sortedAccountPaths;
  v15.length = CFArrayGetCount(_sortedAccountPaths);
  v15.location = 0;
  v8 = CFArrayBSearchValues(v7, v15, mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath, MEMORY[0x277CBE560], 0);
  CFArrayInsertValueAtIndex(_sortedAccountPaths, v8, mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath);
  CFArrayInsertValueAtIndex(_accountsSortedByPath, v8, paths);
  if (([mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath isEqualToString:path] & 1) == 0)
  {
    v9 = _sortedAccountPaths;
    v16.length = CFArrayGetCount(_sortedAccountPaths);
    v16.location = 0;
    v10 = CFArrayBSearchValues(v9, v16, path, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v10, path);
    CFArrayInsertValueAtIndex(_accountsSortedByPath, v10, paths);
  }

  if (([mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath isEqualToString:mf_betterStringByResolvingSymlinksInPath] & 1) == 0)
  {
    v11 = _sortedAccountPaths;
    v17.length = CFArrayGetCount(_sortedAccountPaths);
    v17.location = 0;
    v12 = CFArrayBSearchValues(v11, v17, mf_betterStringByResolvingSymlinksInPath, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v12, mf_betterStringByResolvingSymlinksInPath);
    v13 = _accountsSortedByPath;

    CFArrayInsertValueAtIndex(v13, v12, paths);
  }
}

+ (void)_setupSortedPathsForAccounts:(id)accounts
{
  v15 = *MEMORY[0x277D85DE8];
  CFArrayRemoveAllValues(_sortedAccountPaths);
  CFArrayRemoveAllValues(_accountsSortedByPath);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(accounts);
        }

        [self _addAccountToSortedPaths:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)existingAccountForUniqueID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  +[MailAccount mf_lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = _accounts;
  v5 = [_accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "uniqueId")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  +[MailAccount mf_unlock];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (void)setMailAccountLoadOptions:(unint64_t)options
{
  +[MailAccount mf_lock];
  __mailAccountLoadOptions = options;

  +[MailAccount mf_unlock];
}

+ (id)_loadAllAccountsWithOptions:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  v25[5] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  array = [MEMORY[0x277CBEB18] array];
  v9 = array;
  if (optionsCopy)
  {
    [array addObject:*MEMORY[0x277CB8CD8]];
  }

  if ((optionsCopy & 2) != 0)
  {
    v10 = *MEMORY[0x277CB8D38];
    v25[0] = *MEMORY[0x277CB8B98];
    v25[1] = v10;
    v11 = *MEMORY[0x277CB8C60];
    v25[2] = *MEMORY[0x277CB8C40];
    v25[3] = v11;
    v25[4] = *MEMORY[0x277CB8C68];
    [v9 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v25, 5)}];
  }

  if (![v9 count])
  {
    goto LABEL_11;
  }

  v23 = 0;
  v12 = [+[MFAccountStore sharedAccountStore](MFAccountStore "sharedAccountStore")];
  if (v12)
  {
    [v7 addObjectsFromArray:v12];
  }

  if (v23)
  {
    if (error)
    {
      *error = v23;
    }
  }

  else
  {
LABEL_11:
    [self _removeLookAsideValuesNotInAccountList:v7];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v19 + 1) + 8 * v16++) accountDidLoad];
      }

      while (v14 != v16);
      v14 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)reloadAccounts
{
  [self disableMailboxListingNotifications];
  +[MailAccount mf_lock];

  _lastAccountsReloadDate = [MEMORY[0x277CBEAA8] date];
  v4 = 0;
  v3 = [objc_msgSend(self _loadAllAccountsWithOptions:__mailAccountLoadOptions error:{&v4), "mutableCopy"}];
  if (v4 != _lastAccountsReloadError)
  {

    _lastAccountsReloadError = v4;
  }

  if (v3)
  {
    [self _setMailAccounts:v3 saveIfChanged:0 alreadyLocked:1];
  }

  +[MailAccount mf_unlock];
  [self enableMailboxListingNotifications:0];
}

+ (id)mailAccountsWithError:(id *)error
{
  +[MailAccount mf_lock];
  v5 = _accounts;
  if (!_accounts)
  {
    [self reloadAccounts];
    v5 = _accounts;
  }

  v6 = v5;
  if (error)
  {
    *error = _lastAccountsReloadError;
  }

  +[MailAccount mf_unlock];
  return v6;
}

+ (id)lastMailAccountsReloadDate
{
  +[MailAccount mf_lock];
  v2 = _lastAccountsReloadDate;
  +[MailAccount mf_unlock];

  return v2;
}

+ (id)lastMailAccountsReloadError
{
  +[MailAccount mf_lock];
  v2 = _lastAccountsReloadError;
  +[MailAccount mf_unlock];

  return v2;
}

+ (void)_setMailAccounts:(id)accounts saveIfChanged:(BOOL)changed alreadyLocked:(BOOL)locked
{
  changedCopy = changed;
  v49 = *MEMORY[0x277D85DE8];
  if (!locked)
  {
    [self disableMailboxListingNotifications];
    +[MailAccount mf_lock];
  }

  v8 = objc_opt_new();
  [v8 setMaxConcurrentOperationCount:1];
  v9 = [accounts mutableCopy];
  v10 = +[LocalAccount localAccount];
  if ([v9 indexOfObjectIdenticalTo:v10] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [_accounts indexOfObjectIdenticalTo:v10];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    [v9 insertObject:v10 atIndex:v12];
  }

  v13 = _accounts;
  _accounts = v9;
  selfCopy = self;
  [self _setupSortedPathsForAccounts:v9];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        if (([v9 containsObject:v18] & 1) == 0)
        {
          [v18 invalidate];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v15);
  }

  if (changedCopy)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(v13);
          }

          v23 = *(*(&v38 + 1) + 8 * j);
          if (([v9 containsObject:v23] & 1) == 0)
          {
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __60__MailAccount__setMailAccounts_saveIfChanged_alreadyLocked___block_invoke;
            v37[3] = &unk_2798B61C0;
            v37[4] = v23;
            [v8 addOperationWithBlock:v37];
          }
        }

        v20 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v20);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = [v9 countByEnumeratingWithState:&v33 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v34;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v9);
          }

          v28 = *(*(&v33 + 1) + 8 * k);
          if (([v13 containsObject:v28] & 1) == 0)
          {
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __60__MailAccount__setMailAccounts_saveIfChanged_alreadyLocked___block_invoke_2;
            v32[3] = &unk_2798B61C0;
            v32[4] = v28;
            [v8 addOperationWithBlock:v32];
          }
        }

        v25 = [v9 countByEnumeratingWithState:&v33 objects:v46 count:16];
      }

      while (v25);
    }
  }

  if (!locked)
  {
    +[MailAccount mf_unlock];
    [selfCopy enableMailboxListingNotifications:0];
  }

  [v8 waitUntilAllOperationsAreFinished];
  v29 = *MEMORY[0x277D85DE8];
}

+ (void)_removeAccountFromSortedPaths:(id)paths
{
  if (_accountsSortedByPath)
  {
    Count = CFArrayGetCount(_accountsSortedByPath);
    if (Count)
    {
      v5 = Count - 1;
      do
      {
        if (CFArrayGetValueAtIndex(_accountsSortedByPath, v5) == paths)
        {
          CFArrayRemoveValueAtIndex(_accountsSortedByPath, v5);
          CFArrayRemoveValueAtIndex(_sortedAccountPaths, v5);
        }

        --v5;
      }

      while (v5 != -1);
    }
  }
}

+ (id)activeAccountsWithError:(id *)error
{
  v3 = [self mailAccountsWithError:error];

  return [v3 ef_filter:&__block_literal_global_5];
}

+ (id)purgableAccountsWithError:(id *)error
{
  v3 = [self mailAccountsWithError:error];

  return [v3 ef_filter:&__block_literal_global_107];
}

+ (MailAccount)accountWithUniqueId:(id)id
{
  mailAccounts = [self mailAccounts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__MailAccount_accountWithUniqueId___block_invoke;
  v6[3] = &unk_2798B6820;
  v6[4] = id;
  return [mailAccounts ef_firstObjectPassingTest:v6];
}

uint64_t __35__MailAccount_accountWithUniqueId___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueId];

  return [v2 isEqualToString:v3];
}

+ (id)existingAccountWithType:(id)type hostname:(id)hostname username:(id)username
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mailAccounts = [self mailAccounts];
  v9 = [mailAccounts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(mailAccounts);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if ([v13 isEquivalentTo:type hostname:hostname username:username])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [mailAccounts countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  result = v13;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username
{
  if (![(MailAccount *)self isAccountClassEquivalentTo:to]|| ![(MailAccount *)self isHostnameEquivalentTo:hostname])
  {
    return 0;
  }

  return [(MailAccount *)self isUsernameEquivalentTo:username];
}

+ (void)resetMailboxTimers
{
  v13 = *MEMORY[0x277D85DE8];
  activeAccounts = [self activeAccounts];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [activeAccounts countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(activeAccounts);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetMailboxTimer];
      }

      while (v4 != v6);
      v4 = [activeAccounts countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)updateAutoFetchSettings
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    _os_log_impl(&dword_258BDA000, v2, OS_LOG_TYPE_INFO, "updateAutoFetchSettings was called. Backtrace:\n%{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)allEmailAddressesIncludingFullUserName:(BOOL)name includeReceiveAliases:(BOOL)aliases
{
  aliasesCopy = aliases;
  nameCopy = name;
  result = _allEmailAddressesIncludingFullName(name, aliases);
  if (nameCopy && !result)
  {

    return _allEmailAddressesIncludingFullName(0, aliasesCopy);
  }

  return result;
}

+ (id)_accountContainingEmailAddress:(id)address matchingAddress:(id *)matchingAddress fullUserName:(id *)name includingInactive:(BOOL)inactive
{
  v42 = *MEMORY[0x277D85DE8];
  mf_uncommentedAddress = [address mf_uncommentedAddress];
  mf_addressComment = [address mf_addressComment];
  if (([mf_addressComment isEqualToString:&stru_2869ED3E0] & 1) != 0 || objc_msgSend(mf_addressComment, "isEqualToString:", address))
  {
    mf_addressComment = 0;
  }

  +[MailAccount mf_lock];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = _accounts;
  v10 = [_accounts countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v29 = 0;
    matchingAddressCopy = matchingAddress;
    v11 = 0;
    v26 = *v37;
LABEL_6:
    v12 = 0;
    v25 = v10;
    while (1)
    {
      if (*v37 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v36 + 1) + 8 * v12);
      v28 = v12;
      if (inactive || [v13 isActive])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v14 = [objc_msgSend(v13 "emailAddressesAndAliasesList")];
        v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v15)
        {
          v16 = *v33;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v32 + 1) + 8 * i);
              if (![v18 caseInsensitiveCompare:mf_uncommentedAddress])
              {
                fullUserName = [v13 fullUserName];
                v20 = fullUserName;
                if (mf_addressComment && (!fullUserName || [mf_addressComment caseInsensitiveCompare:fullUserName]))
                {
                  v29 = v13;
                }

                else
                {
                  if (matchingAddressCopy)
                  {
                    *matchingAddressCopy = v18;
                  }

                  if (name && v20 && ([v20 isEqualToString:&stru_2869ED3E0] & 1) == 0)
                  {
                    *name = v20;
                  }

                  v11 = v13;
                  if ([v13 isActive])
                  {
                    v11 = v13;
                    goto LABEL_32;
                  }
                }
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_32:
      if ([v11 isActive])
      {
        break;
      }

      v12 = v28 + 1;
      if (v28 + 1 == v25)
      {
        v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        if (v10)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v29 = 0;
    v11 = 0;
  }

  +[MailAccount mf_unlock];
  if (v29)
  {
    v21 = v11 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    result = v29;
  }

  else
  {
    result = v11;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)accountUsingHeadersFromMessage:(id)message
{
  headers = [message headers];
  if (!headers)
  {
    headers = [message headersIfAvailable];
  }

  return [self accountForHeaders:headers message:message includingInactive:0];
}

+ (id)accountThatMessageIsFrom:(id)from
{
  headersIfAvailable = [from headersIfAvailable];

  return [self accountForHeaders:headersIfAvailable message:from includingInactive:0];
}

+ (id)addressesThatReceivedMessage:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  headersIfAvailable = [message headersIfAvailable];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  array = [MEMORY[0x277CBEB18] array];
  copyAddressListForTo = [headersIfAvailable copyAddressListForTo];
  [v5 addObjectsFromArray:copyAddressListForTo];

  copyAddressListForCc = [headersIfAvailable copyAddressListForCc];
  [v5 addObjectsFromArray:copyAddressListForCc];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v5);
        }

        mf_uncommentedAddress = [*(*(&v16 + 1) + 8 * v12) mf_uncommentedAddress];
        if ([self _accountContainingEmailAddress:mf_uncommentedAddress matchingAddress:0 fullUserName:0 includingInactive:0])
        {
          [array addObject:mf_uncommentedAddress];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return array;
}

+ (id)outboxMailboxUid
{
  +[MailAccount mf_lock];
  v3 = +[LocalAccount localAccount];
  v4 = _outboxUid;
  isValid = [_outboxUid isValid];
  if (!v4 || (isValid & 1) == 0)
  {
    v4 = [v3 mailboxUidForRelativePath:@"Outbox" create:1];
    if (v4)
    {
      [self _setOutboxMailboxUid:v4];
      [v3 resetSpecialMailboxes];
    }
  }

  +[MailAccount mf_unlock];
  return v4;
}

+ (id)allMailboxUids
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v4 = +[MailAccount mailAccounts];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        rootMailboxUid = [*(*(&v13 + 1) + 8 * i) rootMailboxUid];
        if (rootMailboxUid)
        {
          [array2 addObject:rootMailboxUid];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  while ([array2 count])
  {
    v10 = [objc_msgSend(array2 "lastObject")];
    [array addObjectsFromArray:v10];
    [array2 removeLastObject];
    [array2 addObjectsFromArray:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return array;
}

+ (id)allActivePrimaryMailboxUids
{
  v2 = [objc_msgSend(self "activeAccounts")];
  v3 = *MEMORY[0x277D07110];

  return [v2 ef_filter:v3];
}

+ (MailAccount)accountWithPath:(id)path
{
  result = [path length];
  if (result)
  {
    result = [MailAccount _accountWithPath:path];
    if (!result)
    {
      mf_betterStringByResolvingSymlinksInPath = [path mf_betterStringByResolvingSymlinksInPath];

      return [MailAccount _accountWithPath:mf_betterStringByResolvingSymlinksInPath];
    }
  }

  return result;
}

+ (id)newAccountWithPath:(id)path
{
  result = [path length];
  if (result)
  {
    if ([path length] && (v5 = +[MailAccount _accountWithPath:](MailAccount, "_accountWithPath:", path)) != 0 || (v6 = objc_msgSend(path, "mf_betterStringByResolvingSymlinksInPath"), objc_msgSend(v6, "length")) && (v5 = +[MailAccount _accountWithPath:](MailAccount, "_accountWithPath:", v6)) != 0)
    {

      return v5;
    }

    else
    {
      v7 = objc_alloc(objc_opt_class());

      return [v7 initWithPath:v6];
    }
  }

  return result;
}

- (void)_invalidateCachedMailboxen
{
  [(MFLock *)self->_cachedMailboxenLock lock];

  self->_draftsMailboxUid = 0;
  self->_sentMessagesMailboxUid = 0;

  self->_trashMailboxUid = 0;
  self->_archiveMailboxUid = 0;

  self->_junkMailboxUid = 0;
  [(MFLock *)self->_cachedMailboxenLock unlock];
  *&self->_flags &= ~0x20000u;
}

- (void)persistentAccountDidChange:(id)change previousAccount:(id)account
{
  v9.receiver = self;
  v9.super_class = MailAccount;
  [MFAccount persistentAccountDidChange:sel_persistentAccountDidChange_previousAccount_ previousAccount:?];
  if (account)
  {
    v7 = [(MailAccount *)self isActiveWithPersistentAccount:account];
    v8 = [(MailAccount *)self isActiveWithPersistentAccount:change];
    if (v7 != v8)
    {
      [(MailAccount *)self _didBecomeActive:v8];
    }

    [(MailAccount *)self _invalidateCachedMailboxen];
  }
}

- (void)_setAccountProperties:(id)properties
{
  v5.receiver = self;
  v5.super_class = MailAccount;
  [(MFAccount *)&v5 _setAccountProperties:?];
  if (![properties objectForKey:@"SMTPAlternateIdentifiers"])
  {
    [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
  }
}

+ (id)newAccountWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionary objectForKey:@"AccountPath"];
  mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [v5 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  v7 = [self newAccountWithPath:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_alloc_init(self);
    if (!v8)
    {
      return v8;
    }
  }

  if (mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath && ([v5 isEqualToString:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath] & 1) == 0)
  {
    dictionaryCopy = [dictionaryCopy mutableCopy];
    [dictionaryCopy setObject:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath forKey:@"AccountPath"];
  }

  [v8 _setAccountProperties:dictionaryCopy];
  return v8;
}

- (MailAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  v7.receiver = self;
  v7.super_class = MailAccount;
  v5 = [(MFAccount *)&v7 initWithPersistentAccount:account];
  if (v5)
  {
    v5->_cachedMailboxenLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"CachedMailboxenLock" andDelegate:v5];
    v5->_deletionLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MailAccountDeletionLock" andDelegate:0];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    if (library)
    {
      [(MailAccount *)v5 setLibrary:library];
    }

    else
    {
      [(MailAccount *)v5 setupLibrary];
    }

    v5->_cachedLibraryID = -1;
    v5->_cachedLibraryIDLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MailAccount LibraryID Lock" andDelegate:0];
    v5->_messageStoresCache = [[MFWeakObjectCache alloc] initWithBlock:&__block_literal_global_140];
  }

  return v5;
}

id __49__MailAccount_initWithLibrary_persistentAccount___block_invoke(uint64_t a1, void *a2)
{
  v2 = [objc_alloc(objc_msgSend(objc_msgSend(a2 "account")];

  return v2;
}

- (MailAccount)initWithLibrary:(id)library path:(id)path
{
  v5 = [(MailAccount *)self initWithLibrary:library persistentAccount:0];
  v6 = v5;
  if (v5)
  {
    [(MailAccount *)v5 _setPath:path];
  }

  return v6;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = MailAccount;
  [(MFAccount *)&v3 dealloc];
}

+ (id)defaultPathForAccountWithHostname:(id)hostname username:(id)username
{
  v4 = [objc_msgSend(self "defaultAccountDirectory")];

  return [v4 mf_betterStringByResolvingSymlinksInPath];
}

+ (id)defaultAccountDirectory
{
  if (defaultAccountDirectory_sOnceToken != -1)
  {
    +[MailAccount defaultAccountDirectory];
  }

  return defaultAccountDirectory_sMailAccountDirectory;
}

id __38__MailAccount_defaultAccountDirectory__block_invoke()
{
  result = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Mail"];
  defaultAccountDirectory_sMailAccountDirectory = result;
  return result;
}

+ (void)setGlobalPathForAccounts:(id)accounts
{
  if (__globalPathSwitch != accounts)
  {

    __globalPathSwitch = [accounts copy];
  }
}

- (id)path
{
  if (!self->_path)
  {
    -[MailAccount setPath:](self, "setPath:", [objc_opt_class() defaultPathForAccountWithHostname:-[MFAccount hostname](self username:{"hostname"), -[MFAccount username](self, "username")}]);
  }

  if (!__globalPathSwitch)
  {
    return self->_path;
  }

  result = self->_nonPersistentPath;
  if (!result)
  {
    v4 = [__globalPathSwitch stringByAppendingPathComponent:{objc_msgSend(objc_opt_class(), "defaultPathNameForAccountWithHostname:username:", -[MFAccount hostname](self, "hostname"), -[MFAccount username](self, "username"))}];
    self->_nonPersistentPath = v4;
    result = [(NSString *)v4 mf_betterStringByResolvingSymlinksInPath];
    self->_nonPersistentPath = result;
  }

  return result;
}

- (void)setPath:(id)path
{
  if ([(MailAccount *)self _setPath:path])
  {

    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)setLastKnownHostname:(id)hostname
{
  [(MailAccount *)self mf_lock];
  if (self->_lastKnownHostname == hostname || ([hostname isEqualToString:?] & 1) != 0)
  {

    [(MailAccount *)self mf_unlock];
  }

  else
  {

    self->_lastKnownHostname = [hostname copy];
    [(MailAccount *)self mf_unlock];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"MailAccountCurrentURLDidChange" object:self];
  }
}

- (id)tildeAbbreviatedPath
{
  +[MailAccount mf_lock];
  for (i = CFArrayGetCount(_accountsSortedByPath) - 1; i != -1; --i)
  {
    if (CFArrayGetValueAtIndex(_accountsSortedByPath, i) == self && (ValueAtIndex = CFArrayGetValueAtIndex(_sortedAccountPaths, i), [ValueAtIndex hasPrefix:@"~"]))
    {
      mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = ValueAtIndex;
    }

    else
    {
      mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = 0;
    }

    if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath)
    {
      +[MailAccount mf_unlock];
      return mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
    }
  }

  +[MailAccount mf_unlock];
  _MFLockGlobalLock();
  v6 = [(MFAccount *)self accountPropertyForKey:@"AccountPath"];
  _MFUnlockGlobalLock();
  mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = [v6 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  v7 = [mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath hasPrefix:@"~"];
  if (mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath && (v7 & 1) != 0)
  {
    return mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath;
  }

  path = self->_path;

  return [(NSString *)path mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
}

- (void)setFullUserName:(id)name
{
  fullUserName = [(MailAccount *)self fullUserName];
  if ([name length])
  {
    name = [name mf_stringWithNoExtraSpaces];
  }

  if (name != fullUserName)
  {
    v6 = fullUserName ? fullUserName : &stru_2869ED3E0;
    if (([name isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (name)
      {
        [(MFAccount *)self setAccountProperty:name forKey:@"FullUserName"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"FullUserName"];
      }

      _MFUnlockGlobalLock();

      _resetAllEmailAddresses();
    }
  }
}

+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)restricted
{
  v25 = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [*MEMORY[0x277D28668] isEqualToString:{objc_msgSend(mainBundle, "bundleIdentifier")}];
  v7 = MFMobileMailPreferenceDomain();
  if (v6)
  {
    v8 = CFPreferencesCopyAppValue(@"DefaultSendingAccount", v7);
  }

  else
  {
    v9 = *MEMORY[0x277CBF040];
    v10 = *MEMORY[0x277CBF010];
    MFMobileMailContainerPath();
    v8 = _CFPreferencesCopyValueWithContainer();
  }

  v11 = v8;
  if ([v8 length] && (v12 = objc_msgSend(self, "accountWithUniqueId:", v11), objc_msgSend(v12, "isActive")) && (restricted || !objc_msgSend(v12, "restrictedFromSendingExternally")))
  {

    if (v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  mailAccounts = [self mailAccounts];
  v14 = [mailAccounts countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
LABEL_11:
    v17 = 0;
    while (1)
    {
      if (*v21 != v16)
      {
        objc_enumerationMutation(mailAccounts);
      }

      v12 = *(*(&v20 + 1) + 8 * v17);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && [v12 isActive] && (restricted || !objc_msgSend(v12, "restrictedFromSendingExternally")))
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [mailAccounts countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v12 = 0;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)defaultDeliveryAccount
{
  defaultMailAccountForDelivery = [self defaultMailAccountForDelivery];

  return [defaultMailAccountForDelivery deliveryAccount];
}

- (id)deliveryAccountAlternates
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
  if (v2)
  {
    v3 = v2;
    array = [MEMORY[0x277CBEB18] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [DeliveryAccount accountWithIdentifier:*(*(&v12 + 1) + 8 * i)];
          if (v9)
          {
            [array addObject:v9];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    array = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return array;
}

- (void)setDeliveryAccount:(id)account
{
  if (([objc_opt_class() primaryDeliveryAccountIsDynamic] & 1) == 0)
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
    identifier = [account identifier];
    v7 = identifier;
    if (!v5 || ([identifier isEqualToString:v5] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (v7)
      {
        [(MFAccount *)self setAccountProperty:v7 forKey:@"SMTPIdentifier"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"SMTPIdentifier"];
      }

      _MFUnlockGlobalLock();
    }
  }
}

- (void)setDeliveryAccountAlternates:(id)alternates
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [alternates countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(alternates);
        }

        identifier = [*(*(&v12 + 1) + 8 * v9) identifier];
        if (identifier)
        {
          [array addObject:identifier];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [alternates countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (([-[MFAccount _objectForAccountInfoKey:](self _objectForAccountInfoKey:{@"SMTPAlternateIdentifiers", "isEqual:", array}] & 1) == 0)
  {
    _MFLockGlobalLock();
    if ([array count])
    {
      [(MFAccount *)self setAccountProperty:array forKey:@"SMTPAlternateIdentifiers"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
    }

    _MFUnlockGlobalLock();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)canUseDeliveryAccount:(id)account
{
  if ([account isEqual:{-[MailAccount deliveryAccount](self, "deliveryAccount")}])
  {
    return 1;
  }

  identifier = [account identifier];
  v7 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];

  return [v7 containsObject:identifier];
}

- (BOOL)canUseCarrierDeliveryFallback
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPCarrierFallbackAllowed"];

  return [v2 BOOLValue];
}

- (id)firstEmailAddress
{
  emailAddresses = [(MailAccount *)self emailAddresses];
  result = [emailAddresses count];
  if (result)
  {

    return [emailAddresses objectAtIndex:0];
  }

  return result;
}

- (void)setDefaultEmailAddress:(id)address
{
  defaultEmailAddress = [(MailAccount *)self defaultEmailAddress];
  if (defaultEmailAddress != address)
  {
    string = defaultEmailAddress;
    if (!defaultEmailAddress)
    {
      string = [MEMORY[0x277CCACA8] string];
    }

    if (([address isEqualToString:string] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (address)
      {
        [(MFAccount *)self setAccountProperty:address forKey:@"defaultAddress"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"defaultAddress"];
      }

      _MFUnlockGlobalLock();
    }
  }
}

- (id)emailAddresses
{
  v2 = [-[MailAccount emailAddressesDictionary](self "emailAddressesDictionary")];

  return [v2 mf_uncommentedAddressList];
}

- (void)setEmailAddresses:(id)addresses
{
  v18 = *MEMORY[0x277D85DE8];
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  objc_opt_class();
  addressesCopy = addresses;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    addressesCopy = [addresses componentsSeparatedByString:{@", "}];
  }

  if (addressesCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [addressesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      v11 = MEMORY[0x277CBEC38];
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(addressesCopy);
        }

        [array addObject:v11];
        if (!--v9)
        {
          v9 = [addressesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    addresses = [MEMORY[0x277CBEAC0] dictionaryWithObjects:array forKeys:addressesCopy];
  }

LABEL_12:
  if (emailAddressesDictionary != addresses)
  {
    if (!emailAddressesDictionary)
    {
      emailAddressesDictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    if (([addresses isEqual:emailAddressesDictionary] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (addresses)
      {
        [(MFAccount *)self setAccountProperty:addresses forKey:@"EmailAddresses"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"EmailAddresses"];
      }

      _MFUnlockGlobalLock();
      _resetAllEmailAddresses();
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)emailAddressesDictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"EmailAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v2 componentsSeparatedByString:{@", "}];
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_4:
    if (v2)
    {
      array = [MEMORY[0x277CBEB18] array];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v12;
        v7 = MEMORY[0x277CBEC38];
        while (1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v2);
          }

          [array addObject:v7];
          if (!--v5)
          {
            v5 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
            if (!v5)
            {
              break;
            }
          }
        }
      }

      v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:array forKeys:v2];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v2)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v2;
      _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Returned unhandled email addresses %@", buf, 0xCu);
    }

    v2 = 0;
  }

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)receiveEmailAliasAddresses
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"ReceiveEmailAliasAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      v7 = MEMORY[0x277CBEC38];
      while (1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        [v3 addObject:v7];
        if (!--v5)
        {
          v5 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (!v5)
          {
            break;
          }
        }
      }
    }

    v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)receiveEmailAliasAddressesList
{
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];

  return [receiveEmailAliasAddresses allKeys];
}

- (void)setReceiveEmailAliasAddresses:(id)addresses
{
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
  if (receiveEmailAliasAddresses != addresses)
  {
    dictionary = receiveEmailAliasAddresses;
    if (!receiveEmailAliasAddresses)
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    if (([addresses isEqual:dictionary] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (addresses)
      {
        [(MFAccount *)self setAccountProperty:addresses forKey:@"ReceiveEmailAliasAddresses"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"ReceiveEmailAliasAddresses"];
      }

      _MFUnlockGlobalLock();

      _resetAllEmailAddresses();
    }
  }
}

- (id)lastEmailAliasesSyncDate
{
  result = [(MFAccount *)self _objectForAccountInfoKey:@"LastEmailAliasesSyncDate"];
  if (result)
  {
    v3 = MEMORY[0x277CBEAA8];
    [result doubleValue];

    return [v3 dateWithTimeIntervalSince1970:?];
  }

  return result;
}

- (void)setLastEmailAliasesSyncDate:(id)date
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  [date timeIntervalSince1970];
  v6 = [v5 initWithDouble:?];
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:v6 forKey:@"LastEmailAliasesSyncDate"];
  _MFUnlockGlobalLock();
}

- (id)emailAddressesAndAliases
{
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
  if (!receiveEmailAliasAddresses)
  {
    lastEmailAliasesSyncDate = [(MailAccount *)self lastEmailAliasesSyncDate];
    if (lastEmailAliasesSyncDate && ([lastEmailAliasesSyncDate timeIntervalSinceNow], v7 >= -600.0) || !-[MailAccount updateEmailAliases](self, "updateEmailAliases"))
    {
      receiveEmailAliasAddresses = 0;
      v5 = emailAddressesDictionary != 0;
      goto LABEL_10;
    }

    receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
    [(MFAccount *)self savePersistentAccount];
  }

  v5 = emailAddressesDictionary != 0;
  if (emailAddressesDictionary && receiveEmailAliasAddresses)
  {
    emailAddressesDictionary = [MEMORY[0x277CBEB38] dictionaryWithDictionary:emailAddressesDictionary];
    [emailAddressesDictionary addEntriesFromDictionary:receiveEmailAliasAddresses];
    return emailAddressesDictionary;
  }

LABEL_10:
  if (!v5)
  {
    return receiveEmailAliasAddresses;
  }

  return emailAddressesDictionary;
}

- (void)_invalidateAndDeleteAccountData:(BOOL)data
{
  dataCopy = data;
  v34 = *MEMORY[0x277D85DE8];
  [objc_opt_class() disableMailboxListingNotifications];
  [(MailAccount *)self releaseAllConnections];
  [(MFLock *)self->_deletionLock lock];
  _invalidateMailboxCache(self);
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:7];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:4];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:3];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:5];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:2];
  [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:0 forType:1];
  [-[MailAccount library](self "library")];
  if (dataCopy)
  {
    v5 = [-[MailAccount allMailboxUids](self "allMailboxUids")];
    allLocalMailboxUids = [(MailAccount *)self allLocalMailboxUids];
    [(MailAccount *)self path];
    MFRemoveItemAtPath();
    [-[MailAccount library](self "library")];
    if ([allLocalMailboxUids count])
    {
      selfCopy = self;
      v7 = +[LocalAccount localAccount];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = [allLocalMailboxUids countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(allLocalMailboxUids);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            [v7 deleteMailbox:v12];
            defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
            [defaultCenter postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"MailboxUserInfoDidChange", v12, 0)}];
          }

          v9 = [allLocalMailboxUids countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v9);
      }

      _invalidateMailboxCache(v7);
      self = selfCopy;
    }

    v14 = [MailAccount outboxMessageStore:1];
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = [v14 copyOfAllMessagesWithOptions:128];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * j);
          if (![MailAccount accountThatMessageIsFrom:v21])
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    if ([v15 count])
    {
      [v14 deleteMessages:v15 moveToTrash:0];
      [v14 doCompact];
    }

    [-[MailAccount library](self "library")];
    [(MailAccount *)self _deleteHook];
    [(MFAccount *)self setPassword:0];
    [(MailAccount *)self deleteDeliveryAccountIfNeeded];
  }

  [(MFLock *)self->_deletionLock unlock];
  [objc_opt_class() enableMailboxListingNotifications:1];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)data
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__MailAccount__asynchronouslyInvalidateAndDeleteAccountData___block_invoke;
  v6[3] = &unk_2798B6640;
  v6[4] = self;
  dataCopy = data;
  dispatch_async(global_queue, v6);
}

+ (void)saveStateForAllAccounts
{
  +[MailAccount mf_lock];
  v2 = [_accounts copy];
  +[MailAccount mf_unlock];
  [v2 makeObjectsPerformSelector:sel_saveState withObject:0];
}

- (void)saveState
{
  if (self->_flags)
  {
    [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  }
}

- (void)releaseAllConnections
{
  v2 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];

  [v2 releaseAllConnections];
}

- (void)releaseAllForcedConnections
{
  deliveryAccount = [(MailAccount *)self deliveryAccount];

  [deliveryAccount releaseAllForcedConnections];
}

- (void)_synchronizeMailboxListWithFileSystem
{
  _mailboxPathPrefix = [(MailAccount *)self _mailboxPathPrefix];
  v4 = [-[MailAccount path](self "path")];
  if (_mailboxPathPrefix && [_mailboxPathPrefix length])
  {
    [v4 appendString:@"/"];
    [v4 appendString:{-[MailAccount _mailboxPathPrefix](self, "_mailboxPathPrefix")}];
  }

  [(MailAccount *)self mf_lock];
  [(MailAccount *)self _loadEntriesFromFileSystemPath:v4 parent:[(MailAccount *)self rootMailboxUid]];
  [(MailAccount *)self mf_unlock];

  *&self->_flags &= ~0x40000u;
  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  [(MailAccount *)self resetSpecialMailboxes];

  [(MailAccount *)self emptyTrash];
}

- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization
{
  v3 = +[MFInvocationQueue sharedInvocationQueue];
  v4 = +[MFMonitoredInvocation invocationWithSelector:target:taskName:priority:canBeCancelled:](MFMonitoredInvocation, "invocationWithSelector:target:taskName:priority:canBeCancelled:", sel__synchronizeMailboxListWithFileSystem, self, [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"SYNCHRONIZING_WITH_FILE_SYSTEM_FORMAT", @"Synchronizing with file system", 0), -[MailAccount displayName](self, "displayName")], 0, 0);

  [v3 addInvocation:v4];
}

- (void)forceFetchMailboxList
{
  [+[MFInvocationQueue sharedInvocationQueue](MFInvocationQueue "sharedInvocationQueue")];
  v3 = +[MFInvocationQueue sharedInvocationQueue];
  v4 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_fetchMailboxList target:self];

  [v3 addInvocation:v4];
}

- (id)rootMailboxUid
{
  _configureMailboxCache(self);
  [(MailAccount *)self mf_lock];
  v3 = self->_rootMailboxUid;
  [(MailAccount *)self mf_unlock];
  return v3;
}

- (void)deleteDeliveryAccountIfNeeded
{
  v3 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  if (v3)
  {
    v4 = v3;
    if (![(MailAccount *)self deliveryAccountInUseByOtherAccounts:v3])
    {

      [DeliveryAccount removeDeliveryAccount:v4];
    }
  }
}

- (BOOL)deliveryAccountInUseByOtherAccounts:(id)accounts
{
  v31 = *MEMORY[0x277D85DE8];
  uniqueId = [accounts uniqueId];
  +[MailAccount mf_lock];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = _accounts;
  v5 = [_accounts countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        uniqueId2 = [v10 uniqueId];
        if (uniqueId2 != [(MFAccount *)self uniqueId])
        {
          v12 = [v10 _deliveryAccountCreateIfNeeded:0];
          if (v12 && ([objc_msgSend(v12 "uniqueId")] & 1) != 0)
          {
            v7 = 1;
            goto LABEL_24;
          }

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          deliveryAccountAlternates = [v10 deliveryAccountAlternates];
          v14 = [deliveryAccountAlternates countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(deliveryAccountAlternates);
                }

                if ([objc_msgSend(*(*(&v21 + 1) + 8 * j) "uniqueId")])
                {
                  v7 = 1;
                  goto LABEL_19;
                }
              }

              v15 = [deliveryAccountAlternates countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_19:
        ;
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_24:
  +[MailAccount mf_unlock];
  v18 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (BOOL)isSpecialMailbox:(id)mailbox
{
  if ([mailbox isStandardizedMailboxUid])
  {
    return 1;
  }

  else
  {
    return [mailbox isStore] ^ 1;
  }
}

- (id)specialMailboxNameForType:(int)type
{
  if ((type - 1) > 4)
  {
    return 0;
  }

  else
  {
    return [(MFAccount *)self _objectForAccountInfoKey:off_2798B6930[type - 1]];
  }
}

- (id)allMailboxUids
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  rootMailboxUid = [(MailAccount *)self rootMailboxUid];
  if (rootMailboxUid)
  {
    [array2 addObject:rootMailboxUid];
  }

  while ([array2 count])
  {
    v6 = [objc_msgSend(array2 "lastObject")];
    [array addObjectsFromArray:v6];
    [array2 removeLastObject];
    [array2 addObjectsFromArray:v6];
  }

  v7 = [array indexOfObject:{-[MailAccount primaryMailboxUid](self, "primaryMailboxUid")}];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [array exchangeObjectAtIndex:0 withObjectAtIndex:v7];
  }

  return array;
}

- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)time
{
  v12[1] = *MEMORY[0x277D85DE8];
  allMailMailboxUid = [(MailAccount *)self allMailMailboxUid];
  if (allMailMailboxUid)
  {
    v12[0] = allMailMailboxUid;
    result = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke;
    v11[3] = &__block_descriptor_40_e22_B16__0__MFMailboxUid_8l;
    *&v11[4] = time;
    v8 = [allMailboxUids ef_filter:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2;
    v10[3] = &__block_descriptor_40_e39_q24__0__MFMailboxUid_8__MFMailboxUid_16l;
    *&v10[4] = time;
    result = [v8 sortedArrayUsingComparator:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 type] == 3 || objc_msgSend(a2, "type") == 1)
  {
    return 0;
  }

  result = [a2 isStore];
  if (result)
  {
    v5 = *(a1 + 32);
    if (v5 == 0.0)
    {
      return 1;
    }

    [a2 suggestionsLostMessageSearchTimestamp];
    return v5 >= v6;
  }

  return result;
}

uint64_t __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 32) != 0.0)
  {
    [a2 suggestionsLostMessageSearchTimestamp];
    v6 = v5;
    [a3 suggestionsLostMessageSearchTimestamp];
    if (v6 < v7)
    {
      return -1;
    }

    [a2 suggestionsLostMessageSearchTimestamp];
    v10 = v9;
    [a3 suggestionsLostMessageSearchTimestamp];
    if (v10 > v11)
    {
      return 1;
    }
  }

  v12 = [a2 suggestionsLostMessageSearchResultCount];
  if (v12 > [a3 suggestionsLostMessageSearchResultCount])
  {
    return 1;
  }

  v13 = [a2 suggestionsLostMessageSearchResultCount];
  if (v13 >= [a3 suggestionsLostMessageSearchResultCount])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)_setEmptyFrequency:(int)frequency forKey:(id)key
{
  v6 = EFStringWithInt();
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:v6 forKey:key];

  _MFUnlockGlobalLock();
}

- (id)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if (![v3 length])
  {
    firstEmailAddress = [(MailAccount *)self firstEmailAddress];
    if (firstEmailAddress)
    {
      v3 = firstEmailAddress;
      _MFLockGlobalLock();
      [(MFAccount *)self setAccountProperty:v3 forKey:@"DisplayName"];
      _MFUnlockGlobalLock();
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MailAccount;
      return [(MFAccount *)&v6 displayName];
    }
  }

  return v3;
}

- (id)displayNameForMailboxUid:(id)uid
{
  if (self->_rootMailboxUid == uid)
  {

    return [(MailAccount *)self displayName];
  }

  else
  {
    name = [uid name];

    return [(MailAccount *)self _pathComponentForUidName:name];
  }
}

- (BOOL)_resetSpecialMailboxes
{
  [(MailAccount *)self mf_lock];
  v3 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0));
  v4 = self->_junkMailboxUid != 0;
  [(MailAccount *)self mf_unlock];
  mailboxListingNotificationAreEnabled = [objc_opt_class() mailboxListingNotificationAreEnabled];
  if (mailboxListingNotificationAreEnabled)
  {
    [objc_opt_class() disableMailboxListingNotifications];
  }

  v6 = 0;
  v7 = 0;
  v11 = v3 | (32 * v4);
  do
  {
    v7 |= [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:[(MailAccount *)self _specialMailboxUidWithType:dword_258C4B470[v6] create:0] forType:dword_258C4B470[v6]];
    ++v6;
  }

  while (v6 != 6);
  if (v7)
  {
    v8 = 1;
    if (!mailboxListingNotificationAreEnabled)
    {
      return v8;
    }

    goto LABEL_9;
  }

  [(MailAccount *)self mf_lock];
  v9 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0)) | (32 * (self->_junkMailboxUid != 0));
  [(MailAccount *)self mf_unlock];
  v8 = v11 != v9;
  if (mailboxListingNotificationAreEnabled)
  {
LABEL_9:
    [objc_opt_class() enableMailboxListingNotifications:v8];
  }

  return v8;
}

- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure
{
  v5 = [objc_msgSend(acceptable "pathComponents")];
  v6 = v5;
  if (failure)
  {
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"MAILBOX_NAME_INCLUDES_PATH_SEPARATOR", @"Mailbox names may not include “%@”.", @"Delayed", @"/"];
    }

    *failure = v7;
  }

  return v6 == 1;
}

- (BOOL)canMailboxBeRenamed:(id)renamed
{
  if ([renamed isEqual:self->_rootMailboxUid])
  {
    return 0;
  }

  type = [renamed type];
  return type == -100 || type == 0;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name
{
  parent = [mailbox parent];

  return [(MailAccount *)self renameMailbox:mailbox newName:name parent:parent];
}

- (BOOL)_renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  v45 = *MEMORY[0x277D85DE8];
  fullPath = [mailbox fullPath];
  attributes = [mailbox attributes];
  parent = [mailbox parent];
  [(MailAccount *)self mf_lock];
  v11 = [objc_msgSend(mailbox "depthFirstEnumerator")];
  v12 = [v11 arrayByApplyingSelector:sel_URLString];
  if (name)
  {
    [mailbox setName:{-[MailAccount _uidNameForPathComponent:](self, "_uidNameForPathComponent:", name)}];
  }

  if (parent)
  {
    [mailbox setParent:parent];
  }

  [v11 makeObjectsPerformSelector:sel_flushCriteria];
  v13 = [v11 arrayByApplyingSelector:sel_URLString];
  fullPath2 = [mailbox fullPath];
  stringByDeletingLastPathComponent = [fullPath2 stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0 && !objc_msgSend(defaultManager, "mf_makeCompletePath:mode:", stringByDeletingLastPathComponent, 448) || objc_msgSend(defaultManager, "fileExistsAtPath:", fullPath) && (v17 = objc_msgSend(fullPath, "fileSystemRepresentation"), v18 = objc_msgSend(fullPath2, "fileSystemRepresentation"), rename(v17, v18, v19), v20))
  {
    [(MailAccount *)self mf_unlock];
LABEL_16:
    v27 = +[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1033, [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"RENAME_FAILED", @"Mail was unable to rename “%@”.", @"Delayed", objc_msgSend(fullPath, "mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath")]);
    v28 = 0;
    goto LABEL_19;
  }

  v21 = [-[MailAccount library](self "library")];
  v22 = v21;
  if (!v21 || (attributes & 3) != 0)
  {
    [(MailAccount *)self mf_unlock];
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    fullPath = [fullPath stringByDeletingPathExtension];
    if ([defaultManager fileExistsAtPath:fullPath])
    {
      fileSystemRepresentation = [fullPath fileSystemRepresentation];
      v24 = [objc_msgSend(fullPath2 "stringByDeletingPathExtension")];
      rename(fileSystemRepresentation, v24, v25);
      LODWORD(fileSystemRepresentation) = v26;
      [(MailAccount *)self mf_unlock];
      if (fileSystemRepresentation)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [(MailAccount *)self mf_unlock];
    }
  }

  v27 = 0;
  v28 = 1;
LABEL_19:
  if ([(MFError *)v27 localizedDescription])
  {
    [+[MFActivityMonitor currentMonitor](MFActivityMonitor "currentMonitor")];
  }

  if (([parent isEqual:parent] & 1) == 0 && ((v28 ^ 1) & 1) == 0 && objc_msgSend(objc_opt_class(), "mailboxListingNotificationAreEnabled"))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"AccountMailboxListingDidChange", parent, 0)}];
  }

  v39 = v28;
  v30 = parent;
  if (parent && (*(&self->_flags + 2) & 2) != 0 && [objc_opt_class() mailboxListingNotificationAreEnabled])
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"AccountMailboxListingDidChange", parent, 0)}];
  }

  if (!v27)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v41;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v41 != v34)
          {
            objc_enumerationMutation(v11);
          }

          [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
        }

        v33 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v33);
    }
  }

  [(MailAccount *)self _synchronouslyLoadListingForParent:parent];
  if (([parent isEqual:v30] & 1) == 0)
  {
    [(MailAccount *)self _synchronouslyLoadListingForParent:v30];
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  v36 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)deleteMailbox:(id)mailbox
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = 0x2798B5000uLL;
  v6 = +[MFActivityMonitor currentMonitor];
  type = [mailbox type];
  fullPath = [mailbox fullPath];
  depthFirstEnumerator = [mailbox depthFirstEnumerator];
  nextObject = [depthFirstEnumerator nextObject];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  parent = 0;
  if (([v6 shouldCancel] & 1) == 0 && nextObject)
  {
    v24 = fullPath;
    v25 = type;
    do
    {
      parent = [nextObject parent];
      v13 = [(MailAccount *)self _deleteMailbox:nextObject];
      if (v13)
      {
        [v11 addObject:{objc_msgSend(nextObject, "URLString")}];
        if (depthFirstEnumerator)
        {
          nextObject2 = [depthFirstEnumerator nextObject];
        }

        else
        {
          nextObject2 = 0;
        }

        flags = self->_flags;
        if ((*&flags & 0x40000) == 0)
        {
          self->_flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
        }

        [nextObject setParent:0];
      }

      else
      {
        nextObject2 = nextObject;
      }

      if ((v13 & ([v6 shouldCancel] ^ 1)) != 1)
      {
        break;
      }

      nextObject = nextObject2;
    }

    while (nextObject2);
    if (!v13)
    {
      v18 = 0;
      v5 = 0x2798B5000uLL;
      type = v25;
      goto LABEL_22;
    }

    v5 = 0x2798B5000;
    type = v25;
    fullPath = v24;
  }

  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] && MFRemoveItemAtPath())
  {
    v16 = fullPath;
    v17 = MFLogGeneral();
    v18 = 1;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v16;
      _os_log_impl(&dword_258BDA000, v17, OS_LOG_TYPE_INFO, "failed to remove path %@", buf, 0xCu);
    }
  }

  else
  {
    v18 = 1;
  }

LABEL_22:
  if ([v11 count])
  {
    [-[MailAccount library](self "library")];
  }

  if (v18)
  {
    v19 = 0;
    if (type <= 2)
    {
      switch(type)
      {
        case 0:
          goto LABEL_45;
        case 1:
          v20 = &OBJC_IVAR___MailAccount__junkMailboxUid;
          goto LABEL_41;
        case 2:
          v20 = &OBJC_IVAR___MailAccount__archiveMailboxUid;
LABEL_41:
          v19 = (&self->super.super.isa + *v20);
          break;
      }
    }

    else
    {
      if (type <= 4)
      {
        if (type == 3)
        {
          v20 = &OBJC_IVAR___MailAccount__trashMailboxUid;
        }

        else
        {
          v20 = &OBJC_IVAR___MailAccount__sentMessagesMailboxUid;
        }

        goto LABEL_41;
      }

      if (type == 7)
      {
        v20 = &OBJC_IVAR___MailAccount__inboxMailboxUid;
        goto LABEL_41;
      }

      if (type == 5)
      {
        v20 = &OBJC_IVAR___MailAccount__draftsMailboxUid;
        goto LABEL_41;
      }
    }

    [(MFLock *)self->_cachedMailboxenLock lock];
    if (v19)
    {

      *v19 = 0;
    }

    [(MFLock *)self->_cachedMailboxenLock unlock];
    goto LABEL_45;
  }

  if (![objc_msgSend(*(v5 + 1456) "currentMonitor")])
  {
    [objc_msgSend(*(v5 + 1456) "currentMonitor")];
  }

LABEL_45:
  if (parent)
  {
    v21 = [objc_msgSend(*(v5 + 1456) "currentMonitor")];
    [(MailAccount *)self _synchronouslyLoadListingForParent:parent];
    [(MailAccount *)self mf_lock];
    [(MailAccount *)self _setChildren:0 forMailboxUid:parent];
    [(MailAccount *)self mf_unlock];
    if (v21)
    {
      [objc_msgSend(*(v5 + 1456) "currentMonitor")];
    }
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_resetAllMailboxURLs:(BOOL)ls
{
  lsCopy = ls;
  v25 = *MEMORY[0x277D85DE8];
  if ([(MailAccount *)self isActive])
  {
    v5 = +[MailAccount mailAccounts];
    if (v5)
    {
      if ([v5 containsObject:self])
      {
        allMailboxUids = [(MailAccount *)self allMailboxUids];
        v7 = [allMailboxUids count];
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
        v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [allMailboxUids countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v21;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v21 != v12)
              {
                objc_enumerationMutation(allMailboxUids);
              }

              v14 = *(*(&v20 + 1) + 8 * i);
              uRLString = [v14 URLString];
              if (uRLString)
              {
                v16 = uRLString;
                [v14 flushCriteria];
                uRLString2 = [v14 URLString];
                if (uRLString2)
                {
                  v18 = uRLString2;
                  if (([v16 isEqualToString:uRLString2] & 1) == 0)
                  {
                    [v8 addObject:v16];
                    [v9 addObject:v18];
                  }
                }
              }
            }

            v11 = [allMailboxUids countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v11);
        }

        if ([v9 count] && lsCopy)
        {
          [-[MailAccount library](self "library")];
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setUsername:(id)username
{
  username = [(MFAccount *)self username];
  if (username)
  {
    v6 = username;
  }

  else
  {
    v6 = &stru_2869ED3E0;
  }

  v8.receiver = self;
  v8.super_class = MailAccount;
  [(MFAccount *)&v8 setUsername:username];
  username2 = [(MFAccount *)self username];
  if (!username2)
  {
    username2 = &stru_2869ED3E0;
  }

  if (([(__CFString *)username2 isEqualToString:v6]& 1) == 0)
  {
    [(MailAccount *)self _resetAllMailboxURLs:0];
  }
}

- (void)setHostname:(id)hostname
{
  hostname = [(MFAccount *)self hostname];
  if (hostname)
  {
    v6 = hostname;
  }

  else
  {
    v6 = &stru_2869ED3E0;
  }

  v8.receiver = self;
  v8.super_class = MailAccount;
  [(MFAccount *)&v8 setHostname:hostname];
  hostname2 = [(MFAccount *)self hostname];
  if (!hostname2)
  {
    hostname2 = &stru_2869ED3E0;
  }

  if (([(__CFString *)hostname2 isEqualToString:v6]& 1) == 0)
  {
    [(MailAccount *)self _resetAllMailboxURLs:0];
  }
}

- (BOOL)isHostnameEquivalentTo:(id)to
{
  if ([(MFAccount *)self hostname]== to)
  {
    return 1;
  }

  hostname = [(MFAccount *)self hostname];

  return [(NSString *)hostname isEqualToString:to];
}

- (BOOL)isAccountClassEquivalentTo:(id)to
{
  v4 = objc_opt_class();
  if (NSStringFromClass(v4) == to)
  {
    return 1;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);

  return [(NSString *)v6 isEqualToString:to];
}

- (void)setValueInAccountProperties:(id)properties forKey:(id)key
{
  if (([key isEqual:@"Hostname"] & 1) != 0 || (objc_msgSend(key, "isEqual:", @"Username") & 1) != 0 || objc_msgSend(key, "isEqual:", @"PortNumber"))
  {
    [-[MailAccount allMailboxUids](self "allMailboxUids")];
    v7.receiver = self;
    v7.super_class = MailAccount;
    [(MFAccount *)&v7 setValueInAccountProperties:properties forKey:key];
    [(MailAccount *)self _resetAllMailboxURLs:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MailAccount;
    [(MFAccount *)&v7 setValueInAccountProperties:properties forKey:key];
  }
}

- (void)setConnectionError:(id)error
{
  errorCopy = error;
  _MFLockGlobalLock();
  lastConnectionError = self->_lastConnectionError;
  self->_lastConnectionError = error;
  _MFUnlockGlobalLock();

  if ((error != 0) == (lastConnectionError == 0))
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"AccountOfflineStatusDidChange" object:self userInfo:0];
  }
}

- (id)connectionError
{
  _MFLockGlobalLock();
  v3 = self->_lastConnectionError;
  _MFUnlockGlobalLock();

  return v3;
}

- (id)storeForMailboxUid:(id)uid
{
  if (!uid || self->_rootMailboxUid == uid)
  {
    return 0;
  }

  v4 = [(MFWeakObjectCache *)self->_messageStoresCache objectForKey:?];
  [v4 setLibrary:{-[MailAccount library](self, "library")}];
  return v4;
}

- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name
{
  result = [mailbox childWithName:name];
  if (!result)
  {

    return [mailbox childWithExtraAttribute:name];
  }

  return result;
}

+ (MailAccount)accountWithURL:(id)l
{
  v40 = *MEMORY[0x277D85DE8];
  scheme = [l scheme];
  if (!scheme)
  {
    goto LABEL_40;
  }

  v6 = scheme;
  user = [l user];
  ef_hostNilForEmpty = [l ef_hostNilForEmpty];
  port = [l port];
  array = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  mailAccounts = [self mailAccounts];
  v12 = [mailAccounts countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(mailAccounts);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        if ([v16 isActive])
        {
          [array insertObject:v16 atIndex:0];
        }

        else
        {
          [array addObject:v16];
        }
      }

      v13 = [mailAccounts countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [array countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v17)
  {
    goto LABEL_40;
  }

  v18 = v17;
  v19 = *v31;
  do
  {
    v20 = 0;
    do
    {
      if (*v31 != v19)
      {
        objc_enumerationMutation(array);
      }

      v21 = *(*(&v30 + 1) + 8 * v20);
      _URLScheme = [(MailAccount *)v21 _URLScheme];
      if (!_URLScheme || [_URLScheme caseInsensitiveCompare:v6])
      {
        goto LABEL_19;
      }

      hostname = [(MFAccount *)v21 hostname];
      if (ef_hostNilForEmpty == hostname)
      {
        v24 = 1;
      }

      else
      {
        if (!ef_hostNilForEmpty)
        {
          goto LABEL_19;
        }

        v24 = [ef_hostNilForEmpty caseInsensitiveCompare:hostname] == 0;
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      if (port)
      {
        portNumber = [(MFAccount *)v21 portNumber];
        if (!portNumber && (![(MFAccount *)v21 usesSSL]|| (portNumber = [(MFAccount *)v21 defaultSecurePortNumber]) == 0))
        {
          portNumber = [(MFAccount *)v21 defaultPortNumber];
        }

        v24 = [port unsignedIntValue] == portNumber;
      }

LABEL_32:
      if (v24 && user)
      {
        username = [(MFAccount *)v21 username];
        if (username && [(NSString *)username caseInsensitiveCompare:user]== NSOrderedSame)
        {
          goto LABEL_41;
        }
      }

      else if (v24)
      {
        goto LABEL_41;
      }

LABEL_19:
      ++v20;
    }

    while (v18 != v20);
    v27 = [array countByEnumeratingWithState:&v30 objects:v38 count:16];
    v18 = v27;
  }

  while (v27);
LABEL_40:
  v21 = 0;
LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)infoForURL:(id)l
{
  v4 = [self accountWithURL:?];

  return [v4 _infoForMatchingURL:l];
}

+ (id)URLForInfo:(id)info
{
  result = [info objectForKey:@"Account"];
  if (result)
  {

    return [result _URLForInfo:info];
  }

  return result;
}

- (id)URLString
{
  v2 = -[MailAccount _URLForInfo:](self, "_URLForInfo:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{self, @"Account", &stru_2869ED3E0, @"RelativePath", 0}]);

  return [v2 absoluteString];
}

+ (MailAccount)accountWithURLString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:string];
  v5 = [self accountWithURL:v4];

  return v5;
}

- (id)mailboxUidForInfo:(id)info
{
  v4 = [info objectForKey:@"RelativePath"];

  return [(MailAccount *)self mailboxUidForRelativePath:v4 create:0];
}

+ (id)mailboxUidFromActiveAccountsForURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  v3 = +[MailAccount infoForURL:](MailAccount, "infoForURL:", [MEMORY[0x277CBEBC0] URLWithString:?]);
  v4 = [v3 objectForKey:@"Account"];

  return [v4 mailboxUidForInfo:v3];
}

- (id)mailboxUidForURL:(id)l
{
  if (![(MailAccount *)self ownsMailboxUidWithURL:?])
  {
    return 0;
  }

  v5 = -[MailAccount _infoForMatchingURL:](self, "_infoForMatchingURL:", [MEMORY[0x277CBEBC0] URLWithString:l]);

  return [(MailAccount *)self mailboxUidForInfo:v5];
}

- (BOOL)ownsMailboxUidWithURL:(id)l
{
  uRLString = [(MailAccount *)self URLString];

  return [l hasPrefix:uRLString];
}

- (void)emptyTrash
{
  v3 = [(MailAccount *)self emptyFrequencyForMailboxType:3];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = v3;
    v5 = [(MailAccount *)self mailboxUidOfType:3 createIfNeeded:0];
    if (v5)
    {

      [(MailAccount *)self deleteMessagesFromMailboxUid:v5 olderThanNumberOfDays:v4];
    }
  }
}

+ (void)updateEmailAliasesForActiveAccounts
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        lastEmailAliasesSyncDate = [v7 lastEmailAliasesSyncDate];
        if (lastEmailAliasesSyncDate)
        {
          [lastEmailAliasesSyncDate timeIntervalSinceNow];
          if (v9 >= -600.0)
          {
            continue;
          }
        }

        if ([v7 updateEmailAliases])
        {
          [v7 savePersistentAccount];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)standardAccountClass:(Class)class valueForKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  _MFLockGlobalLock();
  if (!standardAccountClass_valueForKey__standardAccountValues)
  {
    standardAccountClass_valueForKey__standardAccountValues = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (!standardAccountClass_valueForKey__loadedBundles)
  {
    standardAccountClass_valueForKey__loadedBundles = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  bundleIdentifier = [v7 bundleIdentifier];
  if (([standardAccountClass_valueForKey__loadedBundles containsObject:bundleIdentifier] & 1) == 0)
  {
    [standardAccountClass_valueForKey__loadedBundles addObject:bundleIdentifier];
    v9 = [v7 pathForResource:@"ISP" ofType:@"plist"];
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
    if (v10)
    {
      v11 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];
      if (v11)
      {
        v12 = v11;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        allKeys = [v11 allKeys];
        v14 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(allKeys);
              }

              v18 = *(*(&v23 + 1) + 8 * i);
              v19 = [v12 objectForKey:v18];
              [standardAccountClass_valueForKey__standardAccountValues setObject:v19 forKey:v18];
            }

            v15 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v15);
        }
      }
    }
  }

  if (standardAccountClass_valueForKey__standardAccountValues)
  {
    v20 = [objc_msgSend(standardAccountClass_valueForKey__standardAccountValues objectForKey:{NSStringFromClass(class)), "objectForKey:", key}];
  }

  else
  {
    v20 = 0;
  }

  _MFUnlockGlobalLock();
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (int64_t)libraryID
{
  library = [(MailAccount *)self library];
  [(MFLock *)self->_cachedLibraryIDLock lock];
  if (self->_cachedLibraryID < 0)
  {
    v4 = [library libraryIDForAccount:self];
    self->_cachedLibraryID = v4;
    if (v4 < 0)
    {
      v5 = [library createLibraryIDForAccount:self];
      self->_cachedLibraryID = v5;
      if (v5 < 0)
      {
        [MailAccount libraryID];
      }
    }
  }

  [(MFLock *)self->_cachedLibraryIDLock unlock];
  return self->_cachedLibraryID;
}

- (void)setLibrary:(id)library
{
  library = self->_library;
  if (library != library)
  {

    self->_library = library;
  }
}

- (id)library
{
  v8 = *MEMORY[0x277D85DE8];
  if (!self->_library)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, "#Warning %@: no library!", &v6, 0xCu);
    }
  }

  result = self->_library;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setCachePolicy:(int)policy
{
  policyCopy = policy;
  if ([(MailAccount *)self cachePolicy]!= policy)
  {
    if (policyCopy > 3)
    {
      policyCopy = 0;
    }

    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:_cachePolicyNames[policyCopy] forKey:@"CachePolicy"];

    _MFUnlockGlobalLock();
  }
}

- (int)cachePolicy
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"CachePolicy"];
  v3 = 0;
  while (([v2 isEqualToString:_cachePolicyNames[v3]] & 1) == 0)
  {
    if (++v3 == 4)
    {
      LODWORD(v3) = 0;
      return v3;
    }
  }

  return v3;
}

- (id)loggingIdentifier
{
  statisticsKind = [(MailAccount *)self statisticsKind];
  v4 = [(NSString *)[(MFAccount *)self uniqueId] substringToIndex:8];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", statisticsKind, v4];
}

- (BOOL)hasEnoughInformationForEasySetup
{
  v3 = [(NSString *)[(MFAccount *)self hostname] length];
  if (v3)
  {
    v3 = [(NSString *)[(MFAccount *)self username] length];
    if (v3)
    {
      LOBYTE(v3) = [-[MFAccount password](self "password")] != 0;
    }
  }

  return v3;
}

- (BOOL)willPerformActionForChokePoint:(id)point coalescePoint:(id)coalescePoint result:(id *)result
{
  [(MailAccount *)self mf_lock];
  currentChokedActions = self->_currentChokedActions;
  if (!currentChokedActions)
  {
    currentChokedActions = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_currentChokedActions = currentChokedActions;
  }

  v10 = [(NSMutableDictionary *)currentChokedActions mf_objectForKey:point ofClass:objc_opt_class()];
  v11 = v10;
  v12 = [v10 objectForKey:@"MFMailboxDictClientCount"];
  [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v12, "intValue") + 1), @"MFMailboxDictClientCount"}];
  v13 = [v10 objectForKey:@"MFMailboxDictLock"];
  if (v13)
  {
    [(MailAccount *)self mf_unlock];
    [v13 lockWhenCondition:2];
    *result = [v10 objectForKey:coalescePoint];
    [(MailAccount *)self mf_lock];
    v14 = [objc_msgSend(v10 objectForKey:{@"MFMailboxDictClientCount", "intValue"}];
    if (v14 < 2)
    {
      [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:point];
    }

    else
    {
      [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", (v14 - 1)), @"MFMailboxDictClientCount"}];
    }

    [(MailAccount *)self mf_unlock];
    [v13 unlockWithCondition:2];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D24EF0]) initWithName:@"ChokeLock" condition:1 andDelegate:0];
    [v10 setObject:v15 forKey:@"MFMailboxDictLock"];

    [(MailAccount *)self mf_unlock];
    [v15 lock];
  }

  return v13 != 0;
}

- (void)didFinishActionForChokePoint:(id)point coalescePoint:(id)coalescePoint withResult:(id)result
{
  [(MailAccount *)self mf_lock];
  v9 = [(NSMutableDictionary *)self->_currentChokedActions objectForKey:point];
  v10 = [v9 objectForKey:@"MFMailboxDictLock"];
  v11 = [objc_msgSend(v9 objectForKey:{@"MFMailboxDictClientCount", "intValue"}];
  if (v11 < 2)
  {
    [v10 unlock];
    [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:point];
  }

  else
  {
    if (!result)
    {
      [MailAccount didFinishActionForChokePoint:v9 coalescePoint:? withResult:?];
    }

    [v9 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", (v11 - 1)), @"MFMailboxDictClientCount"}];
    [v9 setObject:result forKey:coalescePoint];
    [v10 unlockWithCondition:2];
  }

  [(MailAccount *)self mf_unlock];
}

- (void)deliveryAccountWillBeRemoved:(id)removed
{
  v5 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  if (v5 == [removed object])
  {

    [(MailAccount *)self setDeliveryAccount:0];
  }
}

- (id)pushedMailboxUids
{
  v2 = MEMORY[0x277CBEB98];
  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];

  return [v2 setWithObject:primaryMailboxUid];
}

+ (id)_accountWithPath:(id)path
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [self mailboxUidForFileSystemPath:path create:0];
  if (v4)
  {
    v5 = *MEMORY[0x277D85DE8];

    return [v4 account];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = _accountsSortedByPath;
    v8 = [_accountsSortedByPath countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
LABEL_7:
      v11 = 0;
      while (1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if ([path isEqualToString:{objc_msgSend(v12, "path")}])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v9)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v12 = 0;
    }

    v13 = *MEMORY[0x277D85DE8];
    return v12;
  }
}

- (BOOL)_setPath:(id)path
{
  v5 = [objc_msgSend(path "mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath")];
  if (!path)
  {
    return 0;
  }

  v6 = v5;
  if ([(NSString *)self->_path isEqualToString:v5])
  {
    return 0;
  }

  v8 = self->_path;
  self->_path = [v6 copy];
  +[MailAccount mf_lock];
  v9 = _accountsSortedByPath;
  if (!_accountsSortedByPath || (v11.length = CFArrayGetCount(_accountsSortedByPath), v11.location = 0, CFArrayGetFirstIndexOfValue(v9, v11, self) != -1))
  {
    [objc_opt_class() _removeAccountFromSortedPaths:self];
    [objc_opt_class() _addAccountToSortedPaths:self];
  }

  +[MailAccount mf_unlock];
  tildeAbbreviatedPath = [(MailAccount *)self tildeAbbreviatedPath];
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:tildeAbbreviatedPath forKey:@"AccountPath"];
  _MFUnlockGlobalLock();
  return 1;
}

+ (void)setDataclassesConsideredActive:(id)active
{
  if (setDataclassesConsideredActive__pred != -1)
  {
    +[MailAccount setDataclassesConsideredActive:];
  }

  [__dataclassesConsideredActiveLock lock];
  if (__dataclassesConsideredActive != active)
  {

    __dataclassesConsideredActive = [active copy];
  }

  v4 = __dataclassesConsideredActiveLock;

  [v4 unlock];
}

uint64_t __46__MailAccount_setDataclassesConsideredActive___block_invoke()
{
  result = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"Active Dataclasses Lock" andDelegate:0];
  __dataclassesConsideredActiveLock = result;
  return result;
}

- (BOOL)isActiveWithPersistentAccount:(id)account
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [account isEnabledForDataclass:*MEMORY[0x277CB9150]];
  if ((v4 & 1) == 0 && __dataclassesConsideredActive)
  {
    [__dataclassesConsideredActiveLock lock];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = __dataclassesConsideredActive;
    v6 = [__dataclassesConsideredActive countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([account isEnabledForDataclass:*(*(&v12 + 1) + 8 * i)])
          {
            v4 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_13:
    [__dataclassesConsideredActiveLock unlock];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isActive
{
  persistentAccount = [(MFAccount *)self persistentAccount];

  return [(MailAccount *)self isActiveWithPersistentAccount:persistentAccount];
}

- (void)_didBecomeActive:(BOOL)active
{
  if (active)
  {
    _configureMailboxCache(self);
    [(MailAccount *)self resetSpecialMailboxes];
  }

  else
  {
    [(MailAccount *)self _asynchronouslyInvalidateAndDeleteAccountData:?];
  }

  _resetAllEmailAddresses();
}

- (int)_emptyFrequencyForKey:(id)key defaultValue:(id)value
{
  valueCopy = [(MFAccount *)self _objectForAccountInfoKey:key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [valueCopy isEqualToString:&stru_2869ED3E0])
    {
      valueCopy = value;
    }
  }

  return [valueCopy intValue];
}

- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request
{
  domain = [error domain];
  if (!error)
  {
    goto LABEL_12;
  }

  v7 = domain;
  if ([domain isEqualToString:*MEMORY[0x277CCA670]])
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    LOBYTE(v8) = [error code] != 60 || request;
    return v8 & 1;
  }

  if (![v7 isEqualToString:@"MFMessageErrorDomain"])
  {
LABEL_12:
    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  code = [error code];
  v8 = 0x77FFF7Eu >> (code - 8);
  if ((code - 1032) > 0x1B)
  {
    LOBYTE(v8) = 1;
  }

  return v8 & 1;
}

- (id)mailboxCachePath
{
  mailboxCachePath = self->_mailboxCachePath;
  if (mailboxCachePath)
  {
    v3 = mailboxCachePath;

    return v3;
  }

  else
  {
    path = [(MailAccount *)self path];

    return [path stringByAppendingPathComponent:@".mboxCache.plist"];
  }
}

- (void)setMailboxCachePath:(id)path
{
  mailboxCachePath = self->_mailboxCachePath;
  if (mailboxCachePath != path)
  {

    self->_mailboxCachePath = path;
  }
}

- (void)_loadEntriesFromFileSystemPath:(id)path parent:(id)parent
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v7 = [path length];
  v8 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context[0] = self;
  context[1] = path;
  parentCopy = parent;
  context[2] = parent;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        stringByDeletingPathExtension = *(*(&v22 + 1) + 8 * i);
        if (([stringByDeletingPathExtension hasPrefix:@"."] & 1) == 0)
        {
          v21 = 0;
          [path appendString:@"/"];
          [path appendString:stringByDeletingPathExtension];
          if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] && v21 == 1)
          {
            if (-[NSString isEqualToString:](-[MailAccount mailboxPathExtension](self, "mailboxPathExtension"), "isEqualToString:", [stringByDeletingPathExtension pathExtension]))
            {
              stringByDeletingPathExtension = [stringByDeletingPathExtension stringByDeletingPathExtension];
            }

            v14 = [(MailAccount *)self _uidNameForPathComponent:stringByDeletingPathExtension];
            v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v14, @"MailboxName", &unk_286A05358, @"MailboxAttributes", 0}];
            [v20 addObject:v15];
          }

          [path deleteCharactersInRange:{v7, objc_msgSend(path, "length") - v7}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  if (-[MailAccount _loadMailboxListingIntoCache:attributes:children:parent:](self, "_loadMailboxListingIntoCache:attributes:children:parent:", [parentCopy name], 2, v20, parentCopy))
  {
    flags = self->_flags;
    if ((*&flags & 0x40000) == 0)
    {
      self->_flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
    }
  }

  v29.length = [v20 count];
  v29.location = 0;
  CFArrayApplyFunction(v20, v29, _recurseIntoFileSystem, context);

  [v19 drain];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_writeMailboxCacheWithPrejudice:(BOOL)prejudice
{
  v19 = *MEMORY[0x277D85DE8];
  if (prejudice || ((*&self->_flags & 0xFFFEu) >= 0xA ? (v4 = (*&self->_flags & 0x40000) == 0) : (v4 = 1), !v4))
  {
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      [-[MailAccount path](self "path")];
    }

    mailboxCachePath = [(MailAccount *)self mailboxCachePath];
    [(MailAccount *)self mf_lock];
    children = [(MFMailboxUid *)self->_rootMailboxUid children];
    v7 = [children count];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(children);
            }

            [v8 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
          }

          v9 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      CFDictionarySetValue(v12, @"mboxes", v8);

      [(MailAccount *)self _writeCustomInfoToMailboxCache:v12];
      [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:200 options:0 error:{0), "writeToFile:options:error:", mailboxCachePath, 1073741825, 0}];
    }

    [(MailAccount *)self mf_unlock];
    self->_flags = (*(&self->_flags + 1) << 16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  mutableCopyOfChildren = [uid mutableCopyOfChildren];
  v8 = mutableCopyOfChildren;
  if (children)
  {
    childrenCopy = children;
    if (![uid setChildren:children])
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    children = mutableCopyOfChildren;
    if (children)
    {
      [uid setChildren:children];
    }
  }

  if ((*(&self->_flags + 2) & 2) != 0 && [objc_opt_class() mailboxListingNotificationAreEnabled])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"AccountMailboxListingDidChange", uid, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v8, @"OldChildren", children, @"NewChildren", 0))}];
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MailAccount;
  return [(NSString *)[(MFAccount *)&v3 description] stringByAppendingFormat:@" path=%@", self->_path];
}

- (id)powerAssertionIdentifierWithPrefix:(id)prefix
{
  if ([-[MailAccount displayName](self "displayName")])
  {
    displayName = [(MailAccount *)self displayName];
  }

  else
  {
    displayName = &stru_2869ED3E0;
  }

  return [prefix stringByAppendingFormat:@"-%@-(%@)", -[MFAccount uniqueId](self, "uniqueId"), displayName];
}

+ (void)_setOutboxMailboxUid:(id)uid
{
  [self mf_lock];
  if (_outboxUid != uid)
  {

    _outboxUid = uid;
    [_outboxUid setType:6];
  }

  if ([uid isValid])
  {
    [objc_msgSend(uid "account")];
  }

  [self mf_unlock];
}

- (id)_defaultSpecialMailboxNameForType:(int)type
{
  if ((type - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_2798B68C0[type - 1];
  }
}

- (id)_specialMailboxIvarOfType:(int)type
{
  v3 = type - 1;
  if (type - 1) <= 6 && ((0x5Fu >> v3))
  {
    return (&self->super.super.isa + *off_2798B68F8[v3]);
  }

  else
  {
    return 0;
  }
}

- (void)_setSpecialMailboxName:(id)name forType:(int)type
{
  _MFLockGlobalLock();
  v7 = type - 1;
  if ((type - 1) <= 4)
  {
    if (name)
    {
      [(MFAccount *)self setAccountProperty:name forKey:off_2798B6930[v7]];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:off_2798B6930[v7]];
    }
  }

  _MFUnlockGlobalLock();
}

- (BOOL)_shouldLogDeleteActivity
{
  v2 = _logDeleteActivity;
  if (_logDeleteActivity == -1)
  {
    v2 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
    _logDeleteActivity = v2;
  }

  return v2 == 1;
}

- (id)_infoForMatchingURL:(id)l
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  relativePath = [l relativePath];
  [dictionary setObject:self forKey:@"Account"];
  v7 = [relativePath rangeOfString:@"/" options:8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    relativePath = [relativePath substringWithRange:{v7 + v8, objc_msgSend(relativePath, "length") - (v7 + v8)}];
  }

  if (relativePath && ([relativePath isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    [dictionary setObject:relativePath forKey:@"RelativePath"];
  }

  return dictionary;
}

- (id)_URLForInfo:(id)info
{
  result = [(MailAccount *)self _URLScheme];
  if (result)
  {
    v6 = result;
    hostname = [(MFAccount *)self hostname];
    v8 = hostname;
    if (hostname)
    {
      hostname = -[NSString stringByAddingPercentEncodingWithAllowedCharacters:](hostname, "stringByAddingPercentEncodingWithAllowedCharacters:", [MEMORY[0x277CBEBC0] ef_defaultAllowedCharacterSet]);
    }

    if (hostname)
    {
      v9 = hostname;
    }

    else
    {
      v9 = v8;
    }

    username = [(MFAccount *)self username];
    v11 = username;
    if (username)
    {
      username = -[NSString stringByAddingPercentEncodingWithAllowedCharacters:](username, "stringByAddingPercentEncodingWithAllowedCharacters:", [MEMORY[0x277CBEBC0] ef_defaultAllowedCharacterSet]);
    }

    if (username)
    {
      v12 = username;
    }

    else
    {
      v12 = v11;
    }

    portNumber = [(MFAccount *)self portNumber];
    v14 = [info objectForKey:@"RelativePath"];
    v15 = [v6 mutableCopy];
    [v15 appendString:@"://"];
    if (v12 && ![(NSString *)v12 isEqualToString:&stru_2869ED3E0])
    {
      [v15 appendString:v12];
      [v15 appendString:@"@"];
    }

    if (v9)
    {
      [v15 appendString:v9];
    }

    if (portNumber && (portNumber != -[MFAccount defaultPortNumber](self, "defaultPortNumber") && portNumber != -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") || portNumber == -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") && [info mf_BOOLForKey:@"IncludeDefaultSecurePortNumber"]))
    {
      [v15 appendFormat:@":%u", portNumber];
    }

    [v15 appendString:@"/"];
    if (v14)
    {
      [v15 appendString:{objc_msgSend(v14, "stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x277CCA900], "URLPathAllowedCharacterSet"))}];
    }

    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];

    return v16;
  }

  return result;
}

- (id)uniqueServerIdForMessage:(id)message
{
  globalMessageURL = [message globalMessageURL];

  return [globalMessageURL absoluteString];
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  result = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
  if (result)
  {
    if (neededCopy)
    {

      return [DeliveryAccount accountWithIdentifier:result];
    }

    else
    {

      return [DeliveryAccount existingAccountWithIdentifier:result];
    }
  }

  return result;
}

- (id)newMailboxWithParent:(id)parent name:(id)name
{
  v5 = [objc_msgSend(parent pathRelativeToMailbox:{objc_msgSend(objc_msgSend(parent, "account"), "rootMailboxUid")), "stringByAppendingPathComponent:", name}];

  return [(MailAccount *)self mailboxUidForRelativePath:v5 create:1];
}

+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount
{
  if (account == toAccount)
  {
    return 1;
  }

  if ([account restrictedFromTransferingMessagesToOtherAccounts])
  {
    return 0;
  }

  return [toAccount supportsAppend];
}

- (id)moveMessages:(id)messages fromMailbox:(id)mailbox toMailbox:(id)toMailbox markAsRead:(BOOL)read
{
  v6 = [MFMessageTransferResult alloc];
  v7 = [(MFMessageTransferResult *)v6 initWithResultCode:0 failedMessages:MEMORY[0x277CBEBF8] transferedMessage:MEMORY[0x277CBEBF8]];

  return v7;
}

- (id)allLocalMailboxUids
{
  v3 = 0;
  array = 0;
  do
  {
    v5 = dword_258C4B490[v3];
    if ([(MailAccount *)self isMailboxLocalForType:v5])
    {
      v6 = [(MailAccount *)self mailboxUidOfType:v5 createIfNeeded:0];
      if (v6)
      {
        v7 = v6;
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        [array addObject:v7];
      }
    }

    ++v3;
  }

  while (v3 != 4);
  return array;
}

- (id)iconString
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MFAccount *)self accountPropertyForKey:@"AccountIcon"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"otherAccountIcon";
  }

  emailAddresses = [(MailAccount *)self emailAddresses];
  if (emailAddresses)
  {
    v6 = emailAddresses;
    if ([emailAddresses count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v14 + 1) + 8 * i);
            if ([v11 hasSuffix:@"@apple.com"] & 1) != 0 || (objc_msgSend(v11, "hasSuffix:", @".apple.com"))
            {
              v4 = @"appleAccountIcon";
              goto LABEL_17;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)signingIdentityPersistentReferenceForAddress:(id)address
{
  v4 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"SendingIdentities"];

  return [v4 objectForKey:address];
}

- (id)encryptionIdentityPersistentReferenceForAddress:(id)address
{
  v4 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"EncryptionIdentities"];

  return [v4 objectForKey:address];
}

- (BOOL)secureMIMEEnabled
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"SMIMEEnabled"];

  return [v2 BOOLValue];
}

- (BOOL)perMessageEncryptionEnabled
{
  if (![(MFAccount *)self isManaged])
  {
    return 1;
  }

  v3 = [(MFAccount *)self accountPropertyForKey:@"PerMessageSMIMEEnabled"];

  return [v3 BOOLValue];
}

- (int)secureCompositionSigningPolicyForAddress:(id)address
{
  result = [objc_msgSend(address "mf_uncommentedAddress")];
  if (result)
  {
    return [-[MFAccount accountPropertyForKey:](self accountPropertyForKey:{@"SMIMESigningEnabled", "BOOLValue"}];
  }

  return result;
}

- (int)secureCompositionEncryptionPolicyForAddress:(id)address
{
  result = [objc_msgSend(address "mf_uncommentedAddress")];
  if (result)
  {
    return [-[MFAccount accountPropertyForKey:](self accountPropertyForKey:{@"SMIMEEncryptionEnabled", "BOOLValue"}];
  }

  return result;
}

- (BOOL)restrictedFromTransferingMessagesToOtherAccounts
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MFRestrictMessageTransfersToOtherAccounts"];

  return [v2 BOOLValue];
}

- (BOOL)restrictedFromSendingExternally
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MFRestrictSendingFromExternalProcesses"];

  return [v2 BOOLValue];
}

- (BOOL)restrictedFromSyncingRecents
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"Prevent Recents Syncing"];

  return [v2 BOOLValue];
}

- (BOOL)preventArchiveForMailbox:(id)mailbox
{
  supportsArchiving = [(MailAccount *)self supportsArchiving];
  result = 0;
  if (mailbox)
  {
    if (supportsArchiving)
    {
      return [mailbox type] - 1 < 5;
    }
  }

  return result;
}

- (BOOL)canArchiveForMailbox:(id)mailbox
{
  supportsArchiving = [(MailAccount *)self supportsArchiving];
  if (supportsArchiving)
  {
    LOBYTE(supportsArchiving) = ![(MailAccount *)self preventArchiveForMailbox:mailbox];
  }

  return supportsArchiving;
}

- (int)archiveDestinationForMailbox:(id)mailbox
{
  if (![(MailAccount *)self supportsArchiving])
  {
    [MailAccount archiveDestinationForMailbox:];
  }

  if ([(MailAccount *)self canArchiveForMailbox:mailbox])
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (BOOL)shouldArchiveByDefault
{
  supportsArchiving = [(MailAccount *)self supportsArchiving];
  if (supportsArchiving)
  {

    LOBYTE(supportsArchiving) = [(MFAccount *)self _BOOLForAccountInfoKey:@"ArchiveMessages" defaultValue:0];
  }

  return supportsArchiving;
}

- (BOOL)sourceIsManaged
{
  if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
  {
    return 1;
  }

  persistentAccount = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)persistentAccount MCIsManaged];
}

- (BOOL)supportsMailDrop
{
  v3.receiver = self;
  v3.super_class = MailAccount;
  return [(MFAccount *)&v3 supportsMailDrop];
}

- (void)didFinishActionForChokePoint:(uint64_t *)a1 coalescePoint:(uint64_t)a2 withResult:.cold.1(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&dword_258BDA000, v4, OS_LOG_TYPE_DEFAULT, "#Warning <rdar://problem/17733540> _currentChokedActions: %@\nmailboxDict: %@", &v6, 0x16u);
  }

  __assert_rtn("[MailAccount didFinishActionForChokePoint:coalescePoint:withResult:]", "MailAccount.m", 3005, "0");
}

@end