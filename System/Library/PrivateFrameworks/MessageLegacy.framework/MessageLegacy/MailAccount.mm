@interface MailAccount
+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4;
+ (BOOL)mailboxListingNotificationAreEnabled;
+ (MailAccount)accountWithPath:(id)a3;
+ (MailAccount)accountWithURL:(id)a3;
+ (MailAccount)accountWithURLString:(id)a3;
+ (MailAccount)accountWithUniqueId:(id)a3;
+ (id)URLForInfo:(id)a3;
+ (id)_accountContainingEmailAddress:(id)a3 matchingAddress:(id *)a4 fullUserName:(id *)a5 includingInactive:(BOOL)a6;
+ (id)_accountWithPath:(id)a3;
+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)a3;
+ (id)_loadAllAccountsWithOptions:(unint64_t)a3 error:(id *)a4;
+ (id)accountThatMessageIsFrom:(id)a3;
+ (id)accountUsingHeadersFromMessage:(id)a3;
+ (id)activeAccountsWithError:(id *)a3;
+ (id)addressesThatReceivedMessage:(id)a3;
+ (id)allActivePrimaryMailboxUids;
+ (id)allEmailAddressesIncludingFullUserName:(BOOL)a3 includeReceiveAliases:(BOOL)a4;
+ (id)allMailboxUids;
+ (id)defaultAccountDirectory;
+ (id)defaultDeliveryAccount;
+ (id)defaultPathForAccountWithHostname:(id)a3 username:(id)a4;
+ (id)existingAccountForUniqueID:(id)a3;
+ (id)existingAccountWithType:(id)a3 hostname:(id)a4 username:(id)a5;
+ (id)infoForURL:(id)a3;
+ (id)lastMailAccountsReloadDate;
+ (id)lastMailAccountsReloadError;
+ (id)mailAccountsWithError:(id *)a3;
+ (id)mailboxUidFromActiveAccountsForURL:(id)a3;
+ (id)newAccountWithDictionary:(id)a3;
+ (id)newAccountWithPath:(id)a3;
+ (id)outboxMailboxUid;
+ (id)purgableAccountsWithError:(id *)a3;
+ (id)standardAccountClass:(Class)a3 valueForKey:(id)a4;
+ (void)_addAccountToSortedPaths:(id)a3;
+ (void)_removeAccountFromSortedPaths:(id)a3;
+ (void)_setMailAccounts:(id)a3 saveIfChanged:(BOOL)a4 alreadyLocked:(BOOL)a5;
+ (void)_setOutboxMailboxUid:(id)a3;
+ (void)_setupSortedPathsForAccounts:(id)a3;
+ (void)disableMailboxListingNotifications;
+ (void)enableMailboxListingNotifications:(BOOL)a3;
+ (void)initialize;
+ (void)reloadAccounts;
+ (void)resetMailboxTimers;
+ (void)saveStateForAllAccounts;
+ (void)setDataclassesConsideredActive:(id)a3;
+ (void)setGlobalPathForAccounts:(id)a3;
+ (void)setMailAccountLoadOptions:(unint64_t)a3;
+ (void)updateAutoFetchSettings;
+ (void)updateEmailAliasesForActiveAccounts;
- (BOOL)_renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (BOOL)_resetSpecialMailboxes;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)_setPath:(id)a3;
- (BOOL)_shouldLogDeleteActivity;
- (BOOL)canArchiveForMailbox:(id)a3;
- (BOOL)canMailboxBeRenamed:(id)a3;
- (BOOL)canUseCarrierDeliveryFallback;
- (BOOL)canUseDeliveryAccount:(id)a3;
- (BOOL)deleteMailbox:(id)a3;
- (BOOL)deliveryAccountInUseByOtherAccounts:(id)a3;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)isAccountClassEquivalentTo:(id)a3;
- (BOOL)isActive;
- (BOOL)isActiveWithPersistentAccount:(id)a3;
- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5;
- (BOOL)isHostnameEquivalentTo:(id)a3;
- (BOOL)isSpecialMailbox:(id)a3;
- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4;
- (BOOL)ownsMailboxUidWithURL:(id)a3;
- (BOOL)perMessageEncryptionEnabled;
- (BOOL)preventArchiveForMailbox:(id)a3;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4;
- (BOOL)restrictedFromSendingExternally;
- (BOOL)restrictedFromSyncingRecents;
- (BOOL)restrictedFromTransferingMessagesToOtherAccounts;
- (BOOL)secureMIMEEnabled;
- (BOOL)shouldArchiveByDefault;
- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4;
- (BOOL)sourceIsManaged;
- (BOOL)supportsMailDrop;
- (BOOL)willPerformActionForChokePoint:(id)a3 coalescePoint:(id)a4 result:(id *)a5;
- (MailAccount)initWithLibrary:(id)a3 path:(id)a4;
- (MailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (id)URLString;
- (id)_URLForInfo:(id)a3;
- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4;
- (id)_defaultSpecialMailboxNameForType:(int)a3;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)_infoForMatchingURL:(id)a3;
- (id)_specialMailboxIvarOfType:(int)a3;
- (id)allLocalMailboxUids;
- (id)allMailboxUids;
- (id)connectionError;
- (id)deliveryAccountAlternates;
- (id)description;
- (id)displayName;
- (id)displayNameForMailboxUid:(id)a3;
- (id)emailAddresses;
- (id)emailAddressesAndAliases;
- (id)emailAddressesDictionary;
- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3;
- (id)firstEmailAddress;
- (id)iconString;
- (id)lastEmailAliasesSyncDate;
- (id)library;
- (id)loggingIdentifier;
- (id)mailboxCachePath;
- (id)mailboxUidForInfo:(id)a3;
- (id)mailboxUidForURL:(id)a3;
- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)a3;
- (id)moveMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5 markAsRead:(BOOL)a6;
- (id)newMailboxWithParent:(id)a3 name:(id)a4;
- (id)path;
- (id)powerAssertionIdentifierWithPrefix:(id)a3;
- (id)pushedMailboxUids;
- (id)receiveEmailAliasAddresses;
- (id)receiveEmailAliasAddressesList;
- (id)rootMailboxUid;
- (id)signingIdentityPersistentReferenceForAddress:(id)a3;
- (id)specialMailboxNameForType:(int)a3;
- (id)storeForMailboxUid:(id)a3;
- (id)tildeAbbreviatedPath;
- (id)uniqueServerIdForMessage:(id)a3;
- (int)_emptyFrequencyForKey:(id)a3 defaultValue:(id)a4;
- (int)archiveDestinationForMailbox:(id)a3;
- (int)cachePolicy;
- (int)secureCompositionEncryptionPolicyForAddress:(id)a3;
- (int)secureCompositionSigningPolicyForAddress:(id)a3;
- (int64_t)libraryID;
- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)a3;
- (void)_didBecomeActive:(BOOL)a3;
- (void)_invalidateAndDeleteAccountData:(BOOL)a3;
- (void)_invalidateCachedMailboxen;
- (void)_loadEntriesFromFileSystemPath:(id)a3 parent:(id)a4;
- (void)_resetAllMailboxURLs:(BOOL)a3;
- (void)_setAccountProperties:(id)a3;
- (void)_setEmptyFrequency:(int)a3 forKey:(id)a4;
- (void)_setSpecialMailboxName:(id)a3 forType:(int)a4;
- (void)_synchronizeMailboxListWithFileSystem;
- (void)_writeMailboxCacheWithPrejudice:(BOOL)a3;
- (void)dealloc;
- (void)deleteDeliveryAccountIfNeeded;
- (void)deliveryAccountWillBeRemoved:(id)a3;
- (void)didFinishActionForChokePoint:(id)a3 coalescePoint:(id)a4 withResult:(id)a5;
- (void)emptyTrash;
- (void)forceFetchMailboxList;
- (void)nowWouldBeAGoodTimeToStartBackgroundSynchronization;
- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)saveState;
- (void)setCachePolicy:(int)a3;
- (void)setConnectionError:(id)a3;
- (void)setDefaultEmailAddress:(id)a3;
- (void)setDeliveryAccount:(id)a3;
- (void)setDeliveryAccountAlternates:(id)a3;
- (void)setEmailAddresses:(id)a3;
- (void)setFullUserName:(id)a3;
- (void)setHostname:(id)a3;
- (void)setLastEmailAliasesSyncDate:(id)a3;
- (void)setLastKnownHostname:(id)a3;
- (void)setLibrary:(id)a3;
- (void)setMailboxCachePath:(id)a3;
- (void)setPath:(id)a3;
- (void)setReceiveEmailAliasAddresses:(id)a3;
- (void)setUsername:(id)a3;
- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4;
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

+ (void)enableMailboxListingNotifications:(BOOL)a3
{
  v3 = a3;
  _MFLockGlobalLock();
  _disableMailboxListingNotifications = 0;
  _MFUnlockGlobalLock();
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];

    [v4 postNotificationName:@"AccountMailboxListingDidChange" object:0 userInfo:0];
  }
}

+ (void)_addAccountToSortedPaths:(id)a3
{
  v4 = [a3 path];
  if ([v4 hasPrefix:@"~"])
  {
    v5 = [v4 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  }

  else
  {
    v5 = v4;
    v4 = [a3 tildeAbbreviatedPath];
  }

  v6 = [v5 mf_betterStringByResolvingSymlinksInPath];
  v7 = _sortedAccountPaths;
  v15.length = CFArrayGetCount(_sortedAccountPaths);
  v15.location = 0;
  v8 = CFArrayBSearchValues(v7, v15, v5, MEMORY[0x277CBE560], 0);
  CFArrayInsertValueAtIndex(_sortedAccountPaths, v8, v5);
  CFArrayInsertValueAtIndex(_accountsSortedByPath, v8, a3);
  if (([v5 isEqualToString:v4] & 1) == 0)
  {
    v9 = _sortedAccountPaths;
    v16.length = CFArrayGetCount(_sortedAccountPaths);
    v16.location = 0;
    v10 = CFArrayBSearchValues(v9, v16, v4, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v10, v4);
    CFArrayInsertValueAtIndex(_accountsSortedByPath, v10, a3);
  }

  if (([v5 isEqualToString:v6] & 1) == 0)
  {
    v11 = _sortedAccountPaths;
    v17.length = CFArrayGetCount(_sortedAccountPaths);
    v17.location = 0;
    v12 = CFArrayBSearchValues(v11, v17, v6, MEMORY[0x277CBE560], 0);
    CFArrayInsertValueAtIndex(_sortedAccountPaths, v12, v6);
    v13 = _accountsSortedByPath;

    CFArrayInsertValueAtIndex(v13, v12, a3);
  }
}

+ (void)_setupSortedPathsForAccounts:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  CFArrayRemoveAllValues(_sortedAccountPaths);
  CFArrayRemoveAllValues(_accountsSortedByPath);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        [a1 _addAccountToSortedPaths:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)existingAccountForUniqueID:(id)a3
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

+ (void)setMailAccountLoadOptions:(unint64_t)a3
{
  +[MailAccount mf_lock];
  __mailAccountLoadOptions = a3;

  +[MailAccount mf_unlock];
}

+ (id)_loadAllAccountsWithOptions:(unint64_t)a3 error:(id *)a4
{
  v5 = a3;
  v25[5] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = v8;
  if (v5)
  {
    [v8 addObject:*MEMORY[0x277CB8CD8]];
  }

  if ((v5 & 2) != 0)
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
    if (a4)
    {
      *a4 = v23;
    }
  }

  else
  {
LABEL_11:
    [a1 _removeLookAsideValuesNotInAccountList:v7];
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
  [a1 disableMailboxListingNotifications];
  +[MailAccount mf_lock];

  _lastAccountsReloadDate = [MEMORY[0x277CBEAA8] date];
  v4 = 0;
  v3 = [objc_msgSend(a1 _loadAllAccountsWithOptions:__mailAccountLoadOptions error:{&v4), "mutableCopy"}];
  if (v4 != _lastAccountsReloadError)
  {

    _lastAccountsReloadError = v4;
  }

  if (v3)
  {
    [a1 _setMailAccounts:v3 saveIfChanged:0 alreadyLocked:1];
  }

  +[MailAccount mf_unlock];
  [a1 enableMailboxListingNotifications:0];
}

+ (id)mailAccountsWithError:(id *)a3
{
  +[MailAccount mf_lock];
  v5 = _accounts;
  if (!_accounts)
  {
    [a1 reloadAccounts];
    v5 = _accounts;
  }

  v6 = v5;
  if (a3)
  {
    *a3 = _lastAccountsReloadError;
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

+ (void)_setMailAccounts:(id)a3 saveIfChanged:(BOOL)a4 alreadyLocked:(BOOL)a5
{
  v5 = a4;
  v49 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    [a1 disableMailboxListingNotifications];
    +[MailAccount mf_lock];
  }

  v8 = objc_opt_new();
  [v8 setMaxConcurrentOperationCount:1];
  v9 = [a3 mutableCopy];
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
  v30 = a1;
  [a1 _setupSortedPathsForAccounts:v9];
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

  if (v5)
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

  if (!a5)
  {
    +[MailAccount mf_unlock];
    [v30 enableMailboxListingNotifications:0];
  }

  [v8 waitUntilAllOperationsAreFinished];
  v29 = *MEMORY[0x277D85DE8];
}

+ (void)_removeAccountFromSortedPaths:(id)a3
{
  if (_accountsSortedByPath)
  {
    Count = CFArrayGetCount(_accountsSortedByPath);
    if (Count)
    {
      v5 = Count - 1;
      do
      {
        if (CFArrayGetValueAtIndex(_accountsSortedByPath, v5) == a3)
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

+ (id)activeAccountsWithError:(id *)a3
{
  v3 = [a1 mailAccountsWithError:a3];

  return [v3 ef_filter:&__block_literal_global_5];
}

+ (id)purgableAccountsWithError:(id *)a3
{
  v3 = [a1 mailAccountsWithError:a3];

  return [v3 ef_filter:&__block_literal_global_107];
}

+ (MailAccount)accountWithUniqueId:(id)a3
{
  v4 = [a1 mailAccounts];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__MailAccount_accountWithUniqueId___block_invoke;
  v6[3] = &unk_2798B6820;
  v6[4] = a3;
  return [v4 ef_firstObjectPassingTest:v6];
}

uint64_t __35__MailAccount_accountWithUniqueId___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueId];

  return [v2 isEqualToString:v3];
}

+ (id)existingAccountWithType:(id)a3 hostname:(id)a4 username:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a1 mailAccounts];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if ([v13 isEquivalentTo:a3 hostname:a4 username:a5])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5
{
  if (![(MailAccount *)self isAccountClassEquivalentTo:a3]|| ![(MailAccount *)self isHostnameEquivalentTo:a4])
  {
    return 0;
  }

  return [(MailAccount *)self isUsernameEquivalentTo:a5];
}

+ (void)resetMailboxTimers
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [a1 activeAccounts];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetMailboxTimer];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v5 = [MEMORY[0x277CCACC8] callStackSymbols];
    _os_log_impl(&dword_258BDA000, v2, OS_LOG_TYPE_INFO, "updateAutoFetchSettings was called. Backtrace:\n%{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (id)allEmailAddressesIncludingFullUserName:(BOOL)a3 includeReceiveAliases:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  result = _allEmailAddressesIncludingFullName(a3, a4);
  if (v5 && !result)
  {

    return _allEmailAddressesIncludingFullName(0, v4);
  }

  return result;
}

+ (id)_accountContainingEmailAddress:(id)a3 matchingAddress:(id *)a4 fullUserName:(id *)a5 includingInactive:(BOOL)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = [a3 mf_uncommentedAddress];
  v9 = [a3 mf_addressComment];
  if (([v9 isEqualToString:&stru_2869ED3E0] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", a3))
  {
    v9 = 0;
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
    v30 = a4;
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
      if (a6 || [v13 isActive])
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
              if (![v18 caseInsensitiveCompare:v8])
              {
                v19 = [v13 fullUserName];
                v20 = v19;
                if (v9 && (!v19 || [v9 caseInsensitiveCompare:v19]))
                {
                  v29 = v13;
                }

                else
                {
                  if (v30)
                  {
                    *v30 = v18;
                  }

                  if (a5 && v20 && ([v20 isEqualToString:&stru_2869ED3E0] & 1) == 0)
                  {
                    *a5 = v20;
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

+ (id)accountUsingHeadersFromMessage:(id)a3
{
  v5 = [a3 headers];
  if (!v5)
  {
    v5 = [a3 headersIfAvailable];
  }

  return [a1 accountForHeaders:v5 message:a3 includingInactive:0];
}

+ (id)accountThatMessageIsFrom:(id)a3
{
  v5 = [a3 headersIfAvailable];

  return [a1 accountForHeaders:v5 message:a3 includingInactive:0];
}

+ (id)addressesThatReceivedMessage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 headersIfAvailable];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 copyAddressListForTo];
  [v5 addObjectsFromArray:v7];

  v8 = [v4 copyAddressListForCc];
  [v5 addObjectsFromArray:v8];

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

        v13 = [*(*(&v16 + 1) + 8 * v12) mf_uncommentedAddress];
        if ([a1 _accountContainingEmailAddress:v13 matchingAddress:0 fullUserName:0 includingInactive:0])
        {
          [v6 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)outboxMailboxUid
{
  +[MailAccount mf_lock];
  v3 = +[LocalAccount localAccount];
  v4 = _outboxUid;
  v5 = [_outboxUid isValid];
  if (!v4 || (v5 & 1) == 0)
  {
    v4 = [v3 mailboxUidForRelativePath:@"Outbox" create:1];
    if (v4)
    {
      [a1 _setOutboxMailboxUid:v4];
      [v3 resetSpecialMailboxes];
    }
  }

  +[MailAccount mf_unlock];
  return v4;
}

+ (id)allMailboxUids
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
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

        v9 = [*(*(&v13 + 1) + 8 * i) rootMailboxUid];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  while ([v3 count])
  {
    v10 = [objc_msgSend(v3 "lastObject")];
    [v2 addObjectsFromArray:v10];
    [v3 removeLastObject];
    [v3 addObjectsFromArray:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)allActivePrimaryMailboxUids
{
  v2 = [objc_msgSend(a1 "activeAccounts")];
  v3 = *MEMORY[0x277D07110];

  return [v2 ef_filter:v3];
}

+ (MailAccount)accountWithPath:(id)a3
{
  result = [a3 length];
  if (result)
  {
    result = [MailAccount _accountWithPath:a3];
    if (!result)
    {
      v5 = [a3 mf_betterStringByResolvingSymlinksInPath];

      return [MailAccount _accountWithPath:v5];
    }
  }

  return result;
}

+ (id)newAccountWithPath:(id)a3
{
  result = [a3 length];
  if (result)
  {
    if ([a3 length] && (v5 = +[MailAccount _accountWithPath:](MailAccount, "_accountWithPath:", a3)) != 0 || (v6 = objc_msgSend(a3, "mf_betterStringByResolvingSymlinksInPath"), objc_msgSend(v6, "length")) && (v5 = +[MailAccount _accountWithPath:](MailAccount, "_accountWithPath:", v6)) != 0)
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

- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4
{
  v9.receiver = self;
  v9.super_class = MailAccount;
  [MFAccount persistentAccountDidChange:sel_persistentAccountDidChange_previousAccount_ previousAccount:?];
  if (a4)
  {
    v7 = [(MailAccount *)self isActiveWithPersistentAccount:a4];
    v8 = [(MailAccount *)self isActiveWithPersistentAccount:a3];
    if (v7 != v8)
    {
      [(MailAccount *)self _didBecomeActive:v8];
    }

    [(MailAccount *)self _invalidateCachedMailboxen];
  }
}

- (void)_setAccountProperties:(id)a3
{
  v5.receiver = self;
  v5.super_class = MailAccount;
  [(MFAccount *)&v5 _setAccountProperties:?];
  if (![a3 objectForKey:@"SMTPAlternateIdentifiers"])
  {
    [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
  }
}

+ (id)newAccountWithDictionary:(id)a3
{
  v3 = a3;
  v5 = [a3 objectForKey:@"AccountPath"];
  v6 = [v5 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  v7 = [a1 newAccountWithPath:v6];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_alloc_init(a1);
    if (!v8)
    {
      return v8;
    }
  }

  if (v6 && ([v5 isEqualToString:v6] & 1) == 0)
  {
    v3 = [v3 mutableCopy];
    [v3 setObject:v6 forKey:@"AccountPath"];
  }

  [v8 _setAccountProperties:v3];
  return v8;
}

- (MailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v7.receiver = self;
  v7.super_class = MailAccount;
  v5 = [(MFAccount *)&v7 initWithPersistentAccount:a4];
  if (v5)
  {
    v5->_cachedMailboxenLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"CachedMailboxenLock" andDelegate:v5];
    v5->_deletionLock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MailAccountDeletionLock" andDelegate:0];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    if (a3)
    {
      [(MailAccount *)v5 setLibrary:a3];
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

- (MailAccount)initWithLibrary:(id)a3 path:(id)a4
{
  v5 = [(MailAccount *)self initWithLibrary:a3 persistentAccount:0];
  v6 = v5;
  if (v5)
  {
    [(MailAccount *)v5 _setPath:a4];
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

+ (id)defaultPathForAccountWithHostname:(id)a3 username:(id)a4
{
  v4 = [objc_msgSend(a1 "defaultAccountDirectory")];

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

+ (void)setGlobalPathForAccounts:(id)a3
{
  if (__globalPathSwitch != a3)
  {

    __globalPathSwitch = [a3 copy];
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

- (void)setPath:(id)a3
{
  if ([(MailAccount *)self _setPath:a3])
  {

    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)setLastKnownHostname:(id)a3
{
  [(MailAccount *)self mf_lock];
  if (self->_lastKnownHostname == a3 || ([a3 isEqualToString:?] & 1) != 0)
  {

    [(MailAccount *)self mf_unlock];
  }

  else
  {

    self->_lastKnownHostname = [a3 copy];
    [(MailAccount *)self mf_unlock];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];

    [v5 postNotificationName:@"MailAccountCurrentURLDidChange" object:self];
  }
}

- (id)tildeAbbreviatedPath
{
  +[MailAccount mf_lock];
  for (i = CFArrayGetCount(_accountsSortedByPath) - 1; i != -1; --i)
  {
    if (CFArrayGetValueAtIndex(_accountsSortedByPath, i) == self && (ValueAtIndex = CFArrayGetValueAtIndex(_sortedAccountPaths, i), [ValueAtIndex hasPrefix:@"~"]))
    {
      v5 = ValueAtIndex;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      +[MailAccount mf_unlock];
      return v5;
    }
  }

  +[MailAccount mf_unlock];
  _MFLockGlobalLock();
  v6 = [(MFAccount *)self accountPropertyForKey:@"AccountPath"];
  _MFUnlockGlobalLock();
  v5 = [v6 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
  v7 = [v5 hasPrefix:@"~"];
  if (v5 && (v7 & 1) != 0)
  {
    return v5;
  }

  path = self->_path;

  return [(NSString *)path mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
}

- (void)setFullUserName:(id)a3
{
  v5 = [(MailAccount *)self fullUserName];
  if ([a3 length])
  {
    a3 = [a3 mf_stringWithNoExtraSpaces];
  }

  if (a3 != v5)
  {
    v6 = v5 ? v5 : &stru_2869ED3E0;
    if (([a3 isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (a3)
      {
        [(MFAccount *)self setAccountProperty:a3 forKey:@"FullUserName"];
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

+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [*MEMORY[0x277D28668] isEqualToString:{objc_msgSend(v5, "bundleIdentifier")}];
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
  if ([v8 length] && (v12 = objc_msgSend(a1, "accountWithUniqueId:", v11), objc_msgSend(v12, "isActive")) && (a3 || !objc_msgSend(v12, "restrictedFromSendingExternally")))
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
  v13 = [a1 mailAccounts];
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v13);
      }

      v12 = *(*(&v20 + 1) + 8 * v17);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && [v12 isActive] && (a3 || !objc_msgSend(v12, "restrictedFromSendingExternally")))
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v2 = [a1 defaultMailAccountForDelivery];

  return [v2 deliveryAccount];
}

- (id)deliveryAccountAlternates
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CBEB18] array];
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
            [v4 addObject:v9];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setDeliveryAccount:(id)a3
{
  if (([objc_opt_class() primaryDeliveryAccountIsDynamic] & 1) == 0)
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
    v6 = [a3 identifier];
    v7 = v6;
    if (!v5 || ([v6 isEqualToString:v5] & 1) == 0)
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

- (void)setDeliveryAccountAlternates:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(a3);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) identifier];
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (([-[MFAccount _objectForAccountInfoKey:](self _objectForAccountInfoKey:{@"SMTPAlternateIdentifiers", "isEqual:", v5}] & 1) == 0)
  {
    _MFLockGlobalLock();
    if ([v5 count])
    {
      [(MFAccount *)self setAccountProperty:v5 forKey:@"SMTPAlternateIdentifiers"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
    }

    _MFUnlockGlobalLock();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)canUseDeliveryAccount:(id)a3
{
  if ([a3 isEqual:{-[MailAccount deliveryAccount](self, "deliveryAccount")}])
  {
    return 1;
  }

  v6 = [a3 identifier];
  v7 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];

  return [v7 containsObject:v6];
}

- (BOOL)canUseCarrierDeliveryFallback
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPCarrierFallbackAllowed"];

  return [v2 BOOLValue];
}

- (id)firstEmailAddress
{
  v2 = [(MailAccount *)self emailAddresses];
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (void)setDefaultEmailAddress:(id)a3
{
  v5 = [(MailAccount *)self defaultEmailAddress];
  if (v5 != a3)
  {
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x277CCACA8] string];
    }

    if (([a3 isEqualToString:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (a3)
      {
        [(MFAccount *)self setAccountProperty:a3 forKey:@"defaultAddress"];
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

- (void)setEmailAddresses:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(MailAccount *)self emailAddressesDictionary];
  objc_opt_class();
  v6 = a3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v6 = [a3 componentsSeparatedByString:{@", "}];
  }

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      v11 = MEMORY[0x277CBEC38];
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [v7 addObject:v11];
        if (!--v9)
        {
          v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    a3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6];
  }

LABEL_12:
  if (v5 != a3)
  {
    if (!v5)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionary];
    }

    if (([a3 isEqual:v5] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (a3)
      {
        [(MFAccount *)self setAccountProperty:a3 forKey:@"EmailAddresses"];
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
      v3 = [MEMORY[0x277CBEB18] array];
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

          [v3 addObject:v7];
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

      v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2];
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
  v2 = [(MailAccount *)self receiveEmailAliasAddresses];

  return [v2 allKeys];
}

- (void)setReceiveEmailAliasAddresses:(id)a3
{
  v5 = [(MailAccount *)self receiveEmailAliasAddresses];
  if (v5 != a3)
  {
    v6 = v5;
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEAC0] dictionary];
    }

    if (([a3 isEqual:v6] & 1) == 0)
    {
      _MFLockGlobalLock();
      if (a3)
      {
        [(MFAccount *)self setAccountProperty:a3 forKey:@"ReceiveEmailAliasAddresses"];
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

- (void)setLastEmailAliasesSyncDate:(id)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  [a3 timeIntervalSince1970];
  v6 = [v5 initWithDouble:?];
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:v6 forKey:@"LastEmailAliasesSyncDate"];
  _MFUnlockGlobalLock();
}

- (id)emailAddressesAndAliases
{
  v3 = [(MailAccount *)self emailAddressesDictionary];
  v4 = [(MailAccount *)self receiveEmailAliasAddresses];
  if (!v4)
  {
    v6 = [(MailAccount *)self lastEmailAliasesSyncDate];
    if (v6 && ([v6 timeIntervalSinceNow], v7 >= -600.0) || !-[MailAccount updateEmailAliases](self, "updateEmailAliases"))
    {
      v4 = 0;
      v5 = v3 != 0;
      goto LABEL_10;
    }

    v4 = [(MailAccount *)self receiveEmailAliasAddresses];
    [(MFAccount *)self savePersistentAccount];
  }

  v5 = v3 != 0;
  if (v3 && v4)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
    [v3 addEntriesFromDictionary:v4];
    return v3;
  }

LABEL_10:
  if (!v5)
  {
    return v4;
  }

  return v3;
}

- (void)_invalidateAndDeleteAccountData:(BOOL)a3
{
  v3 = a3;
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
  if (v3)
  {
    v5 = [-[MailAccount allMailboxUids](self "allMailboxUids")];
    v6 = [(MailAccount *)self allLocalMailboxUids];
    [(MailAccount *)self path];
    MFRemoveItemAtPath();
    [-[MailAccount library](self "library")];
    if ([v6 count])
    {
      v23 = self;
      v7 = +[LocalAccount localAccount];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            [v7 deleteMailbox:v12];
            v13 = [MEMORY[0x277CCAB98] defaultCenter];
            [v13 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"MailboxUserInfoDidChange", v12, 0)}];
          }

          v9 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v9);
      }

      _invalidateMailboxCache(v7);
      self = v23;
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

- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)a3
{
  global_queue = dispatch_get_global_queue(0, 0);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__MailAccount__asynchronouslyInvalidateAndDeleteAccountData___block_invoke;
  v6[3] = &unk_2798B6640;
  v6[4] = self;
  v7 = a3;
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
  v2 = [(MailAccount *)self deliveryAccount];

  [v2 releaseAllForcedConnections];
}

- (void)_synchronizeMailboxListWithFileSystem
{
  v3 = [(MailAccount *)self _mailboxPathPrefix];
  v4 = [-[MailAccount path](self "path")];
  if (v3 && [v3 length])
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

- (BOOL)deliveryAccountInUseByOtherAccounts:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [a3 uniqueId];
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
        v11 = [v10 uniqueId];
        if (v11 != [(MFAccount *)self uniqueId])
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
          v13 = [v10 deliveryAccountAlternates];
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                  objc_enumerationMutation(v13);
                }

                if ([objc_msgSend(*(*(&v21 + 1) + 8 * j) "uniqueId")])
                {
                  v7 = 1;
                  goto LABEL_19;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (BOOL)isSpecialMailbox:(id)a3
{
  if ([a3 isStandardizedMailboxUid])
  {
    return 1;
  }

  else
  {
    return [a3 isStore] ^ 1;
  }
}

- (id)specialMailboxNameForType:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return [(MFAccount *)self _objectForAccountInfoKey:off_2798B6930[a3 - 1]];
  }
}

- (id)allMailboxUids
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(MailAccount *)self rootMailboxUid];
  if (v5)
  {
    [v4 addObject:v5];
  }

  while ([v4 count])
  {
    v6 = [objc_msgSend(v4 "lastObject")];
    [v3 addObjectsFromArray:v6];
    [v4 removeLastObject];
    [v4 addObjectsFromArray:v6];
  }

  v7 = [v3 indexOfObject:{-[MailAccount primaryMailboxUid](self, "primaryMailboxUid")}];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 exchangeObjectAtIndex:0 withObjectAtIndex:v7];
  }

  return v3;
}

- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [(MailAccount *)self allMailMailboxUid];
  if (v5)
  {
    v12[0] = v5;
    result = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  else
  {
    v7 = [(MailAccount *)self allMailboxUids];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke;
    v11[3] = &__block_descriptor_40_e22_B16__0__MFMailboxUid_8l;
    *&v11[4] = a3;
    v8 = [v7 ef_filter:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2;
    v10[3] = &__block_descriptor_40_e39_q24__0__MFMailboxUid_8__MFMailboxUid_16l;
    *&v10[4] = a3;
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

- (void)_setEmptyFrequency:(int)a3 forKey:(id)a4
{
  v6 = EFStringWithInt();
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:v6 forKey:a4];

  _MFUnlockGlobalLock();
}

- (id)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if (![v3 length])
  {
    v4 = [(MailAccount *)self firstEmailAddress];
    if (v4)
    {
      v3 = v4;
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

- (id)displayNameForMailboxUid:(id)a3
{
  if (self->_rootMailboxUid == a3)
  {

    return [(MailAccount *)self displayName];
  }

  else
  {
    v4 = [a3 name];

    return [(MailAccount *)self _pathComponentForUidName:v4];
  }
}

- (BOOL)_resetSpecialMailboxes
{
  [(MailAccount *)self mf_lock];
  v3 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0));
  v4 = self->_junkMailboxUid != 0;
  [(MailAccount *)self mf_unlock];
  v5 = [objc_opt_class() mailboxListingNotificationAreEnabled];
  if (v5)
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
    if (!v5)
    {
      return v8;
    }

    goto LABEL_9;
  }

  [(MailAccount *)self mf_lock];
  v9 = (self->_inboxMailboxUid != 0) | (2 * (self->_draftsMailboxUid != 0)) | (4 * (self->_sentMessagesMailboxUid != 0)) | (8 * (self->_trashMailboxUid != 0)) | (16 * (self->_archiveMailboxUid != 0)) | (32 * (self->_junkMailboxUid != 0));
  [(MailAccount *)self mf_unlock];
  v8 = v11 != v9;
  if (v5)
  {
LABEL_9:
    [objc_opt_class() enableMailboxListingNotifications:v8];
  }

  return v8;
}

- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4
{
  v5 = [objc_msgSend(a3 "pathComponents")];
  v6 = v5;
  if (a4)
  {
    if (v5 == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"MAILBOX_NAME_INCLUDES_PATH_SEPARATOR", @"Mailbox names may not include “%@”.", @"Delayed", @"/"];
    }

    *a4 = v7;
  }

  return v6 == 1;
}

- (BOOL)canMailboxBeRenamed:(id)a3
{
  if ([a3 isEqual:self->_rootMailboxUid])
  {
    return 0;
  }

  v5 = [a3 type];
  return v5 == -100 || v5 == 0;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4
{
  v7 = [a3 parent];

  return [(MailAccount *)self renameMailbox:a3 newName:a4 parent:v7];
}

- (BOOL)_renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = [a3 fullPath];
  v38 = [a3 attributes];
  v10 = [a3 parent];
  [(MailAccount *)self mf_lock];
  v11 = [objc_msgSend(a3 "depthFirstEnumerator")];
  v12 = [v11 arrayByApplyingSelector:sel_URLString];
  if (a4)
  {
    [a3 setName:{-[MailAccount _uidNameForPathComponent:](self, "_uidNameForPathComponent:", a4)}];
  }

  if (a5)
  {
    [a3 setParent:a5];
  }

  [v11 makeObjectsPerformSelector:sel_flushCriteria];
  v13 = [v11 arrayByApplyingSelector:sel_URLString];
  v14 = [a3 fullPath];
  v15 = [v14 stringByDeletingLastPathComponent];
  v16 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v16 fileExistsAtPath:v15] & 1) == 0 && !objc_msgSend(v16, "mf_makeCompletePath:mode:", v15, 448) || objc_msgSend(v16, "fileExistsAtPath:", v9) && (v17 = objc_msgSend(v9, "fileSystemRepresentation"), v18 = objc_msgSend(v14, "fileSystemRepresentation"), rename(v17, v18, v19), v20))
  {
    [(MailAccount *)self mf_unlock];
LABEL_16:
    v27 = +[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1033, [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"RENAME_FAILED", @"Mail was unable to rename “%@”.", @"Delayed", objc_msgSend(v9, "mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath")]);
    v28 = 0;
    goto LABEL_19;
  }

  v21 = [-[MailAccount library](self "library")];
  v22 = v21;
  if (!v21 || (v38 & 3) != 0)
  {
    [(MailAccount *)self mf_unlock];
    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = [v9 stringByDeletingPathExtension];
    if ([v16 fileExistsAtPath:v9])
    {
      v23 = [v9 fileSystemRepresentation];
      v24 = [objc_msgSend(v14 "stringByDeletingPathExtension")];
      rename(v23, v24, v25);
      LODWORD(v23) = v26;
      [(MailAccount *)self mf_unlock];
      if (v23)
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

  if (([a5 isEqual:v10] & 1) == 0 && ((v28 ^ 1) & 1) == 0 && objc_msgSend(objc_opt_class(), "mailboxListingNotificationAreEnabled"))
  {
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"AccountMailboxListingDidChange", v10, 0)}];
  }

  v39 = v28;
  v30 = v10;
  if (a5 && (*(&self->_flags + 2) & 2) != 0 && [objc_opt_class() mailboxListingNotificationAreEnabled])
  {
    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"AccountMailboxListingDidChange", a5, 0)}];
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

  [(MailAccount *)self _synchronouslyLoadListingForParent:a5];
  if (([a5 isEqual:v30] & 1) == 0)
  {
    [(MailAccount *)self _synchronouslyLoadListingForParent:v30];
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  v36 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)deleteMailbox:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = 0x2798B5000uLL;
  v6 = +[MFActivityMonitor currentMonitor];
  v7 = [a3 type];
  v8 = [a3 fullPath];
  v9 = [a3 depthFirstEnumerator];
  v10 = [v9 nextObject];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0;
  if (([v6 shouldCancel] & 1) == 0 && v10)
  {
    v24 = v8;
    v25 = v7;
    do
    {
      v12 = [v10 parent];
      v13 = [(MailAccount *)self _deleteMailbox:v10];
      if (v13)
      {
        [v11 addObject:{objc_msgSend(v10, "URLString")}];
        if (v9)
        {
          v14 = [v9 nextObject];
        }

        else
        {
          v14 = 0;
        }

        flags = self->_flags;
        if ((*&flags & 0x40000) == 0)
        {
          self->_flags = (*&flags & 0xFFFB0000 | (*&flags + 1));
        }

        [v10 setParent:0];
      }

      else
      {
        v14 = v10;
      }

      if ((v13 & ([v6 shouldCancel] ^ 1)) != 1)
      {
        break;
      }

      v10 = v14;
    }

    while (v14);
    if (!v13)
    {
      v18 = 0;
      v5 = 0x2798B5000uLL;
      v7 = v25;
      goto LABEL_22;
    }

    v5 = 0x2798B5000;
    v7 = v25;
    v8 = v24;
  }

  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] && MFRemoveItemAtPath())
  {
    v16 = v8;
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
    if (v7 <= 2)
    {
      switch(v7)
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
      if (v7 <= 4)
      {
        if (v7 == 3)
        {
          v20 = &OBJC_IVAR___MailAccount__trashMailboxUid;
        }

        else
        {
          v20 = &OBJC_IVAR___MailAccount__sentMessagesMailboxUid;
        }

        goto LABEL_41;
      }

      if (v7 == 7)
      {
        v20 = &OBJC_IVAR___MailAccount__inboxMailboxUid;
        goto LABEL_41;
      }

      if (v7 == 5)
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
  if (v12)
  {
    v21 = [objc_msgSend(*(v5 + 1456) "currentMonitor")];
    [(MailAccount *)self _synchronouslyLoadListingForParent:v12];
    [(MailAccount *)self mf_lock];
    [(MailAccount *)self _setChildren:0 forMailboxUid:v12];
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

- (void)_resetAllMailboxURLs:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  if ([(MailAccount *)self isActive])
  {
    v5 = +[MailAccount mailAccounts];
    if (v5)
    {
      if ([v5 containsObject:self])
      {
        v6 = [(MailAccount *)self allMailboxUids];
        v7 = [v6 count];
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
        v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
                objc_enumerationMutation(v6);
              }

              v14 = *(*(&v20 + 1) + 8 * i);
              v15 = [v14 URLString];
              if (v15)
              {
                v16 = v15;
                [v14 flushCriteria];
                v17 = [v14 URLString];
                if (v17)
                {
                  v18 = v17;
                  if (([v16 isEqualToString:v17] & 1) == 0)
                  {
                    [v8 addObject:v16];
                    [v9 addObject:v18];
                  }
                }
              }
            }

            v11 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v11);
        }

        if ([v9 count] && v3)
        {
          [-[MailAccount library](self "library")];
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setUsername:(id)a3
{
  v5 = [(MFAccount *)self username];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_2869ED3E0;
  }

  v8.receiver = self;
  v8.super_class = MailAccount;
  [(MFAccount *)&v8 setUsername:a3];
  v7 = [(MFAccount *)self username];
  if (!v7)
  {
    v7 = &stru_2869ED3E0;
  }

  if (([(__CFString *)v7 isEqualToString:v6]& 1) == 0)
  {
    [(MailAccount *)self _resetAllMailboxURLs:0];
  }
}

- (void)setHostname:(id)a3
{
  v5 = [(MFAccount *)self hostname];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_2869ED3E0;
  }

  v8.receiver = self;
  v8.super_class = MailAccount;
  [(MFAccount *)&v8 setHostname:a3];
  v7 = [(MFAccount *)self hostname];
  if (!v7)
  {
    v7 = &stru_2869ED3E0;
  }

  if (([(__CFString *)v7 isEqualToString:v6]& 1) == 0)
  {
    [(MailAccount *)self _resetAllMailboxURLs:0];
  }
}

- (BOOL)isHostnameEquivalentTo:(id)a3
{
  if ([(MFAccount *)self hostname]== a3)
  {
    return 1;
  }

  v5 = [(MFAccount *)self hostname];

  return [(NSString *)v5 isEqualToString:a3];
}

- (BOOL)isAccountClassEquivalentTo:(id)a3
{
  v4 = objc_opt_class();
  if (NSStringFromClass(v4) == a3)
  {
    return 1;
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);

  return [(NSString *)v6 isEqualToString:a3];
}

- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4
{
  if (([a4 isEqual:@"Hostname"] & 1) != 0 || (objc_msgSend(a4, "isEqual:", @"Username") & 1) != 0 || objc_msgSend(a4, "isEqual:", @"PortNumber"))
  {
    [-[MailAccount allMailboxUids](self "allMailboxUids")];
    v7.receiver = self;
    v7.super_class = MailAccount;
    [(MFAccount *)&v7 setValueInAccountProperties:a3 forKey:a4];
    [(MailAccount *)self _resetAllMailboxURLs:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MailAccount;
    [(MFAccount *)&v7 setValueInAccountProperties:a3 forKey:a4];
  }
}

- (void)setConnectionError:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  lastConnectionError = self->_lastConnectionError;
  self->_lastConnectionError = a3;
  _MFUnlockGlobalLock();

  if ((a3 != 0) == (lastConnectionError == 0))
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];

    [v7 postNotificationName:@"AccountOfflineStatusDidChange" object:self userInfo:0];
  }
}

- (id)connectionError
{
  _MFLockGlobalLock();
  v3 = self->_lastConnectionError;
  _MFUnlockGlobalLock();

  return v3;
}

- (id)storeForMailboxUid:(id)a3
{
  if (!a3 || self->_rootMailboxUid == a3)
  {
    return 0;
  }

  v4 = [(MFWeakObjectCache *)self->_messageStoresCache objectForKey:?];
  [v4 setLibrary:{-[MailAccount library](self, "library")}];
  return v4;
}

- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4
{
  result = [a3 childWithName:a4];
  if (!result)
  {

    return [a3 childWithExtraAttribute:a4];
  }

  return result;
}

+ (MailAccount)accountWithURL:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = [a3 scheme];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = v5;
  v7 = [a3 user];
  v8 = [a3 ef_hostNilForEmpty];
  v9 = [a3 port];
  v10 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [a1 mailAccounts];
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        if ([v16 isActive])
        {
          [v10 insertObject:v16 atIndex:0];
        }

        else
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
        objc_enumerationMutation(v10);
      }

      v21 = *(*(&v30 + 1) + 8 * v20);
      v22 = [(MailAccount *)v21 _URLScheme];
      if (!v22 || [v22 caseInsensitiveCompare:v6])
      {
        goto LABEL_19;
      }

      v23 = [(MFAccount *)v21 hostname];
      if (v8 == v23)
      {
        v24 = 1;
      }

      else
      {
        if (!v8)
        {
          goto LABEL_19;
        }

        v24 = [v8 caseInsensitiveCompare:v23] == 0;
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      if (v9)
      {
        v25 = [(MFAccount *)v21 portNumber];
        if (!v25 && (![(MFAccount *)v21 usesSSL]|| (v25 = [(MFAccount *)v21 defaultSecurePortNumber]) == 0))
        {
          v25 = [(MFAccount *)v21 defaultPortNumber];
        }

        v24 = [v9 unsignedIntValue] == v25;
      }

LABEL_32:
      if (v24 && v7)
      {
        v26 = [(MFAccount *)v21 username];
        if (v26 && [(NSString *)v26 caseInsensitiveCompare:v7]== NSOrderedSame)
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
    v27 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    v18 = v27;
  }

  while (v27);
LABEL_40:
  v21 = 0;
LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

+ (id)infoForURL:(id)a3
{
  v4 = [a1 accountWithURL:?];

  return [v4 _infoForMatchingURL:a3];
}

+ (id)URLForInfo:(id)a3
{
  result = [a3 objectForKey:@"Account"];
  if (result)
  {

    return [result _URLForInfo:a3];
  }

  return result;
}

- (id)URLString
{
  v2 = -[MailAccount _URLForInfo:](self, "_URLForInfo:", [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{self, @"Account", &stru_2869ED3E0, @"RelativePath", 0}]);

  return [v2 absoluteString];
}

+ (MailAccount)accountWithURLString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a3];
  v5 = [a1 accountWithURL:v4];

  return v5;
}

- (id)mailboxUidForInfo:(id)a3
{
  v4 = [a3 objectForKey:@"RelativePath"];

  return [(MailAccount *)self mailboxUidForRelativePath:v4 create:0];
}

+ (id)mailboxUidFromActiveAccountsForURL:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = +[MailAccount infoForURL:](MailAccount, "infoForURL:", [MEMORY[0x277CBEBC0] URLWithString:?]);
  v4 = [v3 objectForKey:@"Account"];

  return [v4 mailboxUidForInfo:v3];
}

- (id)mailboxUidForURL:(id)a3
{
  if (![(MailAccount *)self ownsMailboxUidWithURL:?])
  {
    return 0;
  }

  v5 = -[MailAccount _infoForMatchingURL:](self, "_infoForMatchingURL:", [MEMORY[0x277CBEBC0] URLWithString:a3]);

  return [(MailAccount *)self mailboxUidForInfo:v5];
}

- (BOOL)ownsMailboxUidWithURL:(id)a3
{
  v4 = [(MailAccount *)self URLString];

  return [a3 hasPrefix:v4];
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
        v8 = [v7 lastEmailAliasesSyncDate];
        if (v8)
        {
          [v8 timeIntervalSinceNow];
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

+ (id)standardAccountClass:(Class)a3 valueForKey:(id)a4
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

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v8 = [v7 bundleIdentifier];
  if (([standardAccountClass_valueForKey__loadedBundles containsObject:v8] & 1) == 0)
  {
    [standardAccountClass_valueForKey__loadedBundles addObject:v8];
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
        v13 = [v11 allKeys];
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v23 + 1) + 8 * i);
              v19 = [v12 objectForKey:v18];
              [standardAccountClass_valueForKey__standardAccountValues setObject:v19 forKey:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v15);
        }
      }
    }
  }

  if (standardAccountClass_valueForKey__standardAccountValues)
  {
    v20 = [objc_msgSend(standardAccountClass_valueForKey__standardAccountValues objectForKey:{NSStringFromClass(a3)), "objectForKey:", a4}];
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
  v3 = [(MailAccount *)self library];
  [(MFLock *)self->_cachedLibraryIDLock lock];
  if (self->_cachedLibraryID < 0)
  {
    v4 = [v3 libraryIDForAccount:self];
    self->_cachedLibraryID = v4;
    if (v4 < 0)
    {
      v5 = [v3 createLibraryIDForAccount:self];
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

- (void)setLibrary:(id)a3
{
  library = self->_library;
  if (library != a3)
  {

    self->_library = a3;
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
      v7 = self;
      _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, "#Warning %@: no library!", &v6, 0xCu);
    }
  }

  result = self->_library;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setCachePolicy:(int)a3
{
  v3 = a3;
  if ([(MailAccount *)self cachePolicy]!= a3)
  {
    if (v3 > 3)
    {
      v3 = 0;
    }

    _MFLockGlobalLock();
    [(MFAccount *)self setAccountProperty:_cachePolicyNames[v3] forKey:@"CachePolicy"];

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
  v3 = [(MailAccount *)self statisticsKind];
  v4 = [(NSString *)[(MFAccount *)self uniqueId] substringToIndex:8];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v3, v4];
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

- (BOOL)willPerformActionForChokePoint:(id)a3 coalescePoint:(id)a4 result:(id *)a5
{
  [(MailAccount *)self mf_lock];
  currentChokedActions = self->_currentChokedActions;
  if (!currentChokedActions)
  {
    currentChokedActions = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_currentChokedActions = currentChokedActions;
  }

  v10 = [(NSMutableDictionary *)currentChokedActions mf_objectForKey:a3 ofClass:objc_opt_class()];
  v11 = v10;
  v12 = [v10 objectForKey:@"MFMailboxDictClientCount"];
  [v10 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", objc_msgSend(v12, "intValue") + 1), @"MFMailboxDictClientCount"}];
  v13 = [v10 objectForKey:@"MFMailboxDictLock"];
  if (v13)
  {
    [(MailAccount *)self mf_unlock];
    [v13 lockWhenCondition:2];
    *a5 = [v10 objectForKey:a4];
    [(MailAccount *)self mf_lock];
    v14 = [objc_msgSend(v10 objectForKey:{@"MFMailboxDictClientCount", "intValue"}];
    if (v14 < 2)
    {
      [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:a3];
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

- (void)didFinishActionForChokePoint:(id)a3 coalescePoint:(id)a4 withResult:(id)a5
{
  [(MailAccount *)self mf_lock];
  v9 = [(NSMutableDictionary *)self->_currentChokedActions objectForKey:a3];
  v10 = [v9 objectForKey:@"MFMailboxDictLock"];
  v11 = [objc_msgSend(v9 objectForKey:{@"MFMailboxDictClientCount", "intValue"}];
  if (v11 < 2)
  {
    [v10 unlock];
    [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:a3];
  }

  else
  {
    if (!a5)
    {
      [MailAccount didFinishActionForChokePoint:v9 coalescePoint:? withResult:?];
    }

    [v9 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", (v11 - 1)), @"MFMailboxDictClientCount"}];
    [v9 setObject:a5 forKey:a4];
    [v10 unlockWithCondition:2];
  }

  [(MailAccount *)self mf_unlock];
}

- (void)deliveryAccountWillBeRemoved:(id)a3
{
  v5 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  if (v5 == [a3 object])
  {

    [(MailAccount *)self setDeliveryAccount:0];
  }
}

- (id)pushedMailboxUids
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(MailAccount *)self primaryMailboxUid];

  return [v2 setWithObject:v3];
}

+ (id)_accountWithPath:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [a1 mailboxUidForFileSystemPath:a3 create:0];
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
        if ([a3 isEqualToString:{objc_msgSend(v12, "path")}])
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

- (BOOL)_setPath:(id)a3
{
  v5 = [objc_msgSend(a3 "mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath")];
  if (!a3)
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
  v10 = [(MailAccount *)self tildeAbbreviatedPath];
  _MFLockGlobalLock();
  [(MFAccount *)self setAccountProperty:v10 forKey:@"AccountPath"];
  _MFUnlockGlobalLock();
  return 1;
}

+ (void)setDataclassesConsideredActive:(id)a3
{
  if (setDataclassesConsideredActive__pred != -1)
  {
    +[MailAccount setDataclassesConsideredActive:];
  }

  [__dataclassesConsideredActiveLock lock];
  if (__dataclassesConsideredActive != a3)
  {

    __dataclassesConsideredActive = [a3 copy];
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

- (BOOL)isActiveWithPersistentAccount:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 isEnabledForDataclass:*MEMORY[0x277CB9150]];
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

          if ([a3 isEnabledForDataclass:*(*(&v12 + 1) + 8 * i)])
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
  v3 = [(MFAccount *)self persistentAccount];

  return [(MailAccount *)self isActiveWithPersistentAccount:v3];
}

- (void)_didBecomeActive:(BOOL)a3
{
  if (a3)
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

- (int)_emptyFrequencyForKey:(id)a3 defaultValue:(id)a4
{
  v5 = [(MFAccount *)self _objectForAccountInfoKey:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 isEqualToString:&stru_2869ED3E0])
    {
      v5 = a4;
    }
  }

  return [v5 intValue];
}

- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4
{
  v6 = [a3 domain];
  if (!a3)
  {
    goto LABEL_12;
  }

  v7 = v6;
  if ([v6 isEqualToString:*MEMORY[0x277CCA670]])
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    LOBYTE(v8) = [a3 code] != 60 || a4;
    return v8 & 1;
  }

  if (![v7 isEqualToString:@"MFMessageErrorDomain"])
  {
LABEL_12:
    LOBYTE(v8) = 1;
    return v8 & 1;
  }

  v9 = [a3 code];
  v8 = 0x77FFF7Eu >> (v9 - 8);
  if ((v9 - 1032) > 0x1B)
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
    v5 = [(MailAccount *)self path];

    return [v5 stringByAppendingPathComponent:@".mboxCache.plist"];
  }
}

- (void)setMailboxCachePath:(id)a3
{
  mailboxCachePath = self->_mailboxCachePath;
  if (mailboxCachePath != a3)
  {

    self->_mailboxCachePath = a3;
  }
}

- (void)_loadEntriesFromFileSystemPath:(id)a3 parent:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v7 = [a3 length];
  v8 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context[0] = self;
  context[1] = a3;
  v18 = a4;
  context[2] = a4;
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

        v13 = *(*(&v22 + 1) + 8 * i);
        if (([v13 hasPrefix:@"."] & 1) == 0)
        {
          v21 = 0;
          [a3 appendString:@"/"];
          [a3 appendString:v13];
          if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] && v21 == 1)
          {
            if (-[NSString isEqualToString:](-[MailAccount mailboxPathExtension](self, "mailboxPathExtension"), "isEqualToString:", [v13 pathExtension]))
            {
              v13 = [v13 stringByDeletingPathExtension];
            }

            v14 = [(MailAccount *)self _uidNameForPathComponent:v13];
            v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v14, @"MailboxName", &unk_286A05358, @"MailboxAttributes", 0}];
            [v20 addObject:v15];
          }

          [a3 deleteCharactersInRange:{v7, objc_msgSend(a3, "length") - v7}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  if (-[MailAccount _loadMailboxListingIntoCache:attributes:children:parent:](self, "_loadMailboxListingIntoCache:attributes:children:parent:", [v18 name], 2, v20, v18))
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

- (void)_writeMailboxCacheWithPrejudice:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 || ((*&self->_flags & 0xFFFEu) >= 0xA ? (v4 = (*&self->_flags & 0x40000) == 0) : (v4 = 1), !v4))
  {
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      [-[MailAccount path](self "path")];
    }

    v5 = [(MailAccount *)self mailboxCachePath];
    [(MailAccount *)self mf_lock];
    v6 = [(MFMailboxUid *)self->_rootMailboxUid children];
    v7 = [v6 count];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v6);
            }

            [v8 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
          }

          v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      CFDictionarySetValue(v12, @"mboxes", v8);

      [(MailAccount *)self _writeCustomInfoToMailboxCache:v12];
      [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:200 options:0 error:{0), "writeToFile:options:error:", v5, 1073741825, 0}];
    }

    [(MailAccount *)self mf_unlock];
    self->_flags = (*(&self->_flags + 1) << 16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v7 = [a4 mutableCopyOfChildren];
  v8 = v7;
  if (a3)
  {
    v9 = a3;
    if (![a4 setChildren:a3])
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    a3 = v7;
    if (a3)
    {
      [a4 setChildren:a3];
    }
  }

  if ((*(&self->_flags + 2) & 2) != 0 && [objc_opt_class() mailboxListingNotificationAreEnabled])
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"AccountMailboxListingDidChange", a4, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v8, @"OldChildren", a3, @"NewChildren", 0))}];
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

- (id)powerAssertionIdentifierWithPrefix:(id)a3
{
  if ([-[MailAccount displayName](self "displayName")])
  {
    v5 = [(MailAccount *)self displayName];
  }

  else
  {
    v5 = &stru_2869ED3E0;
  }

  return [a3 stringByAppendingFormat:@"-%@-(%@)", -[MFAccount uniqueId](self, "uniqueId"), v5];
}

+ (void)_setOutboxMailboxUid:(id)a3
{
  [a1 mf_lock];
  if (_outboxUid != a3)
  {

    _outboxUid = a3;
    [_outboxUid setType:6];
  }

  if ([a3 isValid])
  {
    [objc_msgSend(a3 "account")];
  }

  [a1 mf_unlock];
}

- (id)_defaultSpecialMailboxNameForType:(int)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_2798B68C0[a3 - 1];
  }
}

- (id)_specialMailboxIvarOfType:(int)a3
{
  v3 = a3 - 1;
  if (a3 - 1) <= 6 && ((0x5Fu >> v3))
  {
    return (&self->super.super.isa + *off_2798B68F8[v3]);
  }

  else
  {
    return 0;
  }
}

- (void)_setSpecialMailboxName:(id)a3 forType:(int)a4
{
  _MFLockGlobalLock();
  v7 = a4 - 1;
  if ((a4 - 1) <= 4)
  {
    if (a3)
    {
      [(MFAccount *)self setAccountProperty:a3 forKey:off_2798B6930[v7]];
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

- (id)_infoForMatchingURL:(id)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [a3 relativePath];
  [v5 setObject:self forKey:@"Account"];
  v7 = [v6 rangeOfString:@"/" options:8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v6 substringWithRange:{v7 + v8, objc_msgSend(v6, "length") - (v7 + v8)}];
  }

  if (v6 && ([v6 isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    [v5 setObject:v6 forKey:@"RelativePath"];
  }

  return v5;
}

- (id)_URLForInfo:(id)a3
{
  result = [(MailAccount *)self _URLScheme];
  if (result)
  {
    v6 = result;
    v7 = [(MFAccount *)self hostname];
    v8 = v7;
    if (v7)
    {
      v7 = -[NSString stringByAddingPercentEncodingWithAllowedCharacters:](v7, "stringByAddingPercentEncodingWithAllowedCharacters:", [MEMORY[0x277CBEBC0] ef_defaultAllowedCharacterSet]);
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = [(MFAccount *)self username];
    v11 = v10;
    if (v10)
    {
      v10 = -[NSString stringByAddingPercentEncodingWithAllowedCharacters:](v10, "stringByAddingPercentEncodingWithAllowedCharacters:", [MEMORY[0x277CBEBC0] ef_defaultAllowedCharacterSet]);
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = [(MFAccount *)self portNumber];
    v14 = [a3 objectForKey:@"RelativePath"];
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

    if (v13 && (v13 != -[MFAccount defaultPortNumber](self, "defaultPortNumber") && v13 != -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") || v13 == -[MFAccount defaultSecurePortNumber](self, "defaultSecurePortNumber") && [a3 mf_BOOLForKey:@"IncludeDefaultSecurePortNumber"]))
    {
      [v15 appendFormat:@":%u", v13];
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

- (id)uniqueServerIdForMessage:(id)a3
{
  v3 = [a3 globalMessageURL];

  return [v3 absoluteString];
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  result = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
  if (result)
  {
    if (v3)
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

- (id)newMailboxWithParent:(id)a3 name:(id)a4
{
  v5 = [objc_msgSend(a3 pathRelativeToMailbox:{objc_msgSend(objc_msgSend(a3, "account"), "rootMailboxUid")), "stringByAppendingPathComponent:", a4}];

  return [(MailAccount *)self mailboxUidForRelativePath:v5 create:1];
}

+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4
{
  if (a3 == a4)
  {
    return 1;
  }

  if ([a3 restrictedFromTransferingMessagesToOtherAccounts])
  {
    return 0;
  }

  return [a4 supportsAppend];
}

- (id)moveMessages:(id)a3 fromMailbox:(id)a4 toMailbox:(id)a5 markAsRead:(BOOL)a6
{
  v6 = [MFMessageTransferResult alloc];
  v7 = [(MFMessageTransferResult *)v6 initWithResultCode:0 failedMessages:MEMORY[0x277CBEBF8] transferedMessage:MEMORY[0x277CBEBF8]];

  return v7;
}

- (id)allLocalMailboxUids
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = dword_258C4B490[v3];
    if ([(MailAccount *)self isMailboxLocalForType:v5])
    {
      v6 = [(MailAccount *)self mailboxUidOfType:v5 createIfNeeded:0];
      if (v6)
      {
        v7 = v6;
        if (!v4)
        {
          v4 = [MEMORY[0x277CBEB18] array];
        }

        [v4 addObject:v7];
      }
    }

    ++v3;
  }

  while (v3 != 4);
  return v4;
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

  v5 = [(MailAccount *)self emailAddresses];
  if (v5)
  {
    v6 = v5;
    if ([v5 count])
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

- (id)signingIdentityPersistentReferenceForAddress:(id)a3
{
  v4 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"SendingIdentities"];

  return [v4 objectForKey:a3];
}

- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3
{
  v4 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"EncryptionIdentities"];

  return [v4 objectForKey:a3];
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

- (int)secureCompositionSigningPolicyForAddress:(id)a3
{
  result = [objc_msgSend(a3 "mf_uncommentedAddress")];
  if (result)
  {
    return [-[MFAccount accountPropertyForKey:](self accountPropertyForKey:{@"SMIMESigningEnabled", "BOOLValue"}];
  }

  return result;
}

- (int)secureCompositionEncryptionPolicyForAddress:(id)a3
{
  result = [objc_msgSend(a3 "mf_uncommentedAddress")];
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

- (BOOL)preventArchiveForMailbox:(id)a3
{
  v4 = [(MailAccount *)self supportsArchiving];
  result = 0;
  if (a3)
  {
    if (v4)
    {
      return [a3 type] - 1 < 5;
    }
  }

  return result;
}

- (BOOL)canArchiveForMailbox:(id)a3
{
  v5 = [(MailAccount *)self supportsArchiving];
  if (v5)
  {
    LOBYTE(v5) = ![(MailAccount *)self preventArchiveForMailbox:a3];
  }

  return v5;
}

- (int)archiveDestinationForMailbox:(id)a3
{
  if (![(MailAccount *)self supportsArchiving])
  {
    [MailAccount archiveDestinationForMailbox:];
  }

  if ([(MailAccount *)self canArchiveForMailbox:a3])
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
  v3 = [(MailAccount *)self supportsArchiving];
  if (v3)
  {

    LOBYTE(v3) = [(MFAccount *)self _BOOLForAccountInfoKey:@"ArchiveMessages" defaultValue:0];
  }

  return v3;
}

- (BOOL)sourceIsManaged
{
  if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
  {
    return 1;
  }

  v4 = [(MFAccount *)self persistentAccount];

  return [(ACAccount *)v4 MCIsManaged];
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