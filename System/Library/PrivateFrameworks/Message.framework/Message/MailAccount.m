@interface MailAccount
+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4;
+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4 profileConnection:(id)a5;
+ (MailAccount)accountWithPath:(id)a3;
+ (MailAccount)accountWithURL:(id)a3;
+ (MailAccount)accountWithURLString:(id)a3;
+ (MailAccount)accountWithUniqueId:(id)a3;
+ (OS_os_log)log;
+ (id)URLForInfo:(id)a3;
+ (id)_accountContainingEmailAddress:(id)a3 matchingAddress:(id *)a4 fullUserName:(id *)a5 includingInactive:(BOOL)a6;
+ (id)_accountWithPath:(id)a3;
+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)a3;
+ (id)_loadAllAccountsWithError:(id *)a3;
+ (id)_loadDataAccessAccountsWithError:(id *)a3;
+ (id)accountContainingEmailAddress:(id)a3;
+ (id)accountIDFromMailboxURLString:(id)a3 urlScheme:(id)a4;
+ (id)accountThatMessageIsFrom:(id)a3;
+ (id)activeAccountEmailAddresses;
+ (id)activeAccountsWithError:(id *)a3;
+ (id)activeNonLocalAccounts;
+ (id)addressesThatReceivedMessage:(id)a3;
+ (id)allActivePrimaryMailboxUids;
+ (id)allMailboxUids;
+ (id)allMailboxUidsForAccounts:(id)a3;
+ (id)allPurgeableMailboxUids;
+ (id)defaultAccountDirectory;
+ (id)defaultDeliveryAccount;
+ (id)existingAccountForUniqueID:(id)a3;
+ (id)existingAccountWithType:(id)a3 hostname:(id)a4 username:(id)a5;
+ (id)existingDAMailAccountForDAAccount:(id)a3;
+ (id)infoForURL:(id)a3;
+ (id)lastMailAccountsReloadDate;
+ (id)legacyPathForAccountIdentifier:(id)a3 withHostname:(id)a4 username:(id)a5;
+ (id)legacyPathNameForAccountWithHostname:(id)a3 username:(id)a4;
+ (id)mailAccountsWithError:(id *)a3;
+ (id)mailboxUidFromActiveAccountsForURL:(id)a3;
+ (id)newAccountWithDictionary:(id)a3;
+ (id)newAccountWithPath:(id)a3;
+ (id)outboxMailboxUid;
+ (id)predefinedValueForKey:(id)a3;
+ (id)purgeableAccounts;
+ (id)standardAccountClass:(Class)a3 valueForKey:(id)a4;
+ (void)_addAccountToSortedPaths:(id)a3;
+ (void)_postMailboxListNotificationAfterBlock:(id)a3;
+ (void)_removeAccountFromSortedPaths:(id)a3;
+ (void)_removeLookAsideValuesNotInAccountList:(id)a3;
+ (void)_setMailAccounts:(id)a3 saveIfChanged:(BOOL)a4 alreadyLocked:(BOOL)a5;
+ (void)_setOutboxMailboxUid:(id)a3;
+ (void)_setupSortedPathsForAccounts:(id)a3;
+ (void)enableMailboxListingNotifications:(BOOL)a3;
+ (void)initialize;
+ (void)notifyOfAccountsAdded:(id)a3 accountsRemoved:(id)a4 changedAccounts:(id)a5;
+ (void)performOnAccounts:(id)a3 accountBlock:(id)a4;
+ (void)reloadAccounts;
+ (void)resetMailboxTimers;
+ (void)saveStateForAllAccounts;
+ (void)test_tearDown;
+ (void)updateEmailAliasesForActiveAccounts;
+ (void)updatePersonalStatusForAccounts:(id)a3 forceUpdate:(BOOL)a4;
- (BOOL)_assignSpecialMailboxToAppropriateIvar:(id)a3 forType:(int64_t)a4;
- (BOOL)_loadMailboxListingIntoCache:(id)a3 attributes:(unsigned int)a4 children:(id)a5 parent:(id)a6;
- (BOOL)_renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (BOOL)_resetSpecialMailboxesCanPost:(BOOL)a3;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)_setPath:(id)a3;
- (BOOL)_shouldLogDeleteActivity;
- (BOOL)cacheHasBeenRead;
- (BOOL)canArchiveForMailbox:(id)a3;
- (BOOL)canMailboxBeRenamed:(id)a3;
- (BOOL)canUseCarrierDeliveryFallback;
- (BOOL)canUseDeliveryAccount:(id)a3;
- (BOOL)checkAndSetDefaultEmailAddress:(id)a3;
- (BOOL)checkAndSetEmailAddresses:(id)a3;
- (BOOL)checkAndSetReceiveEmailAliasAddresses:(id)a3;
- (BOOL)containsMailboxWithURL:(id)a3;
- (BOOL)deliveryAccountInUseByOtherAccounts:(id)a3;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)isAccountClassEquivalentTo:(id)a3;
- (BOOL)isActive;
- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5;
- (BOOL)isHostnameEquivalentTo:(id)a3;
- (BOOL)isSpecialMailbox:(id)a3;
- (BOOL)isUsernameEquivalentTo:(id)a3;
- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4;
- (BOOL)ownsMailboxUidWithURL:(id)a3;
- (BOOL)perMessageEncryptionEnabledForAddress:(id)a3;
- (BOOL)preventArchiveForMailbox:(id)a3;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4;
- (BOOL)shouldArchiveByDefault;
- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4;
- (BOOL)sourceIsManaged;
- (BOOL)supportsHandoffType:(id)a3;
- (BOOL)supportsMailDrop;
- (BOOL)willPerformActionForChokePoint:(id)a3 coalescePoint:(id)a4 result:(id *)a5;
- (Class)storeClassForMailbox:(id)a3;
- (MFMailboxUid)rootMailbox;
- (MailAccount)initWithLibrary:(id)a3 path:(id)a4;
- (MailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (NSArray)emailAddressStrings;
- (NSArray)emailAddresses;
- (NSDate)lastEmailAliasesSyncDate;
- (NSString)defaultPath;
- (NSString)description;
- (NSString)displayName;
- (NSString)lastEmailAliasesSyncEntityTag;
- (NSString)smtpIdentifier;
- (id)URL;
- (id)URLString;
- (id)URLStringFromLegacyURLString:(id)a3;
- (id)_URLForInfo:(id)a3;
- (id)_cachedSpecialMailboxOfType:(int64_t)a3;
- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4;
- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7;
- (id)_copyMailboxWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 dictionary:(id)a6;
- (id)_defaultSpecialMailboxNameForType:(int64_t)a3;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)_infoForMatchingURL:(id)a3;
- (id)_localMailboxNameForType:(int64_t)a3 usingDisplayName:(id)a4;
- (id)allLocalMailboxUids;
- (id)allMailboxesFilteringNotes:(BOOL)a3;
- (id)connectionError;
- (id)copyReceivingEmailAddresses;
- (id)debugAccountState;
- (id)deliveryAccountAlternates;
- (id)displayNameUsingSpecialNamesForMailboxUid:(id)a3;
- (id)emailAddressesAndAliases;
- (id)emailAddressesDictionary;
- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3;
- (id)firstEmailAddress;
- (id)iconString;
- (id)legacySQLExpressionToMatchAllMailboxes;
- (id)library;
- (id)loggingIdentifier;
- (id)mailboxCachePath;
- (id)mailboxForType:(int64_t)a3;
- (id)mailboxUidForInfo:(id)a3;
- (id)mailboxUidForRelativePath:(id)a3 create:(BOOL)a4 withOption:(int64_t)a5;
- (id)mailboxUidForURL:(id)a3;
- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)a3;
- (id)newMailboxWithParent:(id)a3 name:(id)a4;
- (id)path;
- (id)powerAssertionIdentifierWithPrefix:(id)a3;
- (id)pushedMailboxUids;
- (id)receiveEmailAliasAddresses;
- (id)signingIdentityPersistentReferenceForAddress:(id)a3;
- (id)specialMailboxNameForType:(int64_t)a3;
- (id)storeForMailboxUid:(id)a3;
- (id)uniqueServerIdForMessage:(id)a3;
- (id)valueInAccountLookAsidePropertiesForKey:(id)a3;
- (int)_emptyFrequencyForKey:(id)a3 defaultValue:(id)a4;
- (int64_t)archiveDestinationForMailbox:(id)a3;
- (int64_t)secureCompositionEncryptionPolicyForAddress:(id)a3;
- (int64_t)secureCompositionSigningPolicyForAddress:(id)a3;
- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)a3;
- (void)_didBecomeActive:(BOOL)a3;
- (void)_incrementCacheDirtyCount;
- (void)_invalidateAndDeleteAccountData:(BOOL)a3;
- (void)_invalidateCachedMailboxen;
- (void)_loadEntriesFromFileSystemPath:(id)a3 parent:(id)a4;
- (void)_registerStateCaptureHandler;
- (void)_resetAllMailboxURLs:(BOOL)a3;
- (void)_setAccountProperties:(id)a3;
- (void)_setEmptyFrequency:(int)a3 forKey:(id)a4;
- (void)_setSpecialMailbox:(id)a3 forType:(int64_t)a4;
- (void)_setSpecialMailboxName:(id)a3 forType:(int64_t)a4;
- (void)_setValueInAccountLookAsideProperties:(id)a3 forKey:(id)a4 subKey:(id)a5;
- (void)_synchronizeMailboxListWithFileSystem;
- (void)_writeMailboxCacheWithPrejudice:(BOOL)a3 completionHandler:(id)a4;
- (void)addNewAction:(id)a3;
- (void)dealloc;
- (void)deleteDeliveryAccountIfNeeded;
- (void)deliveryAccountWillBeRemoved:(id)a3;
- (void)didFinishActionForChokePoint:(id)a3 coalescePoint:(id)a4 withResult:(id)a5;
- (void)emptyTrash;
- (void)forceFetchMailboxListWithKind:(int64_t)a3;
- (void)invalidateEmailAliases;
- (void)newActionsAdded;
- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)saveState;
- (void)setCacheHasBeenRead:(BOOL)a3;
- (void)setConnectionError:(id)a3;
- (void)setDeliveryAccount:(id)a3;
- (void)setDeliveryAccountAlternates:(id)a3;
- (void)setFullUserName:(id)a3;
- (void)setHostname:(id)a3;
- (void)setLastEmailAliasesSyncDate:(id)a3;
- (void)setLastEmailAliasesSyncEntityTag:(id)a3;
- (void)setLibrary:(id)a3;
- (void)setMailboxCachePath:(id)a3;
- (void)setPath:(id)a3;
- (void)setUsername:(id)a3;
- (void)setValueInAccountLookAsideProperties:(id)a3 forKey:(id)a4;
- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4;
- (void)setupLibrary;
- (void)shouldArchiveByDefault;
- (void)test_setTaskManager:(id)a3;
- (void)test_tearDown;
- (void)updateEmailAliasesIfNeeded;
@end

@implementation MailAccount

void __18__MailAccount_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_4;
  log_log_4 = v1;
}

- (id)iconString
{
  v3 = [(MFAccount *)self accountPropertyForKey:@"AccountIcon"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"otherAccountIcon";
  }

  v5 = [(MFAccount *)self baseAccount];
  v6 = [v5 isAppleEmployeeAccount];

  if (v6)
  {

    v4 = @"appleAccountIcon";
  }

  return v4;
}

- (NSArray)emailAddresses
{
  v2 = MEMORY[0x1E699B240];
  v3 = [(MailAccount *)self emailAddressStrings];
  v4 = [v2 emailAddressesFromStrings:v3 invalidAddresses:0];

  return v4;
}

+ (void)reloadAccounts
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1B0389000, log, OS_LOG_TYPE_FAULT, "Ignoring accounts without paths: %{public}@", buf, 0xCu);
}

- (void)setupLibrary
{
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    v3 = +[MFMailMessageLibrary defaultInstance];
    [(MailAccount *)self setLibrary:?];
  }
}

- (void)_registerStateCaptureHandler
{
  objc_initWeak(&location, self);
  v3 = [(MailAccount *)self stateCaptureTitle];
  v4 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v7, &location);
  v5 = EFLogRegisterStateCaptureBlock();
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = v5;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (id)path
{
  path = self->_path;
  if (!path)
  {
    v4 = [(MailAccount *)self defaultPath];
    [(MailAccount *)self setPath:v4];

    path = self->_path;
  }

  return path;
}

+ (void)initialize
{
  if (!_accountsSortedByPath)
  {
    _accountsSortedByPath = CFArrayCreateMutable(0, 0, 0);
    _sortedAccountPaths = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }
}

- (BOOL)sourceIsManaged
{
  if ([MEMORY[0x1E699ACE8] preferenceEnabled:3])
  {
    return 1;
  }

  v4 = [(MFAccount *)self persistentAccount];
  v3 = [(MFAccount *)MailAccount accountSourceIsManaged:v4];

  return v3;
}

- (id)library
{
  v11 = *MEMORY[0x1E69E9840];
  library = self->_library;
  if (!library)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = objc_opt_class();
      v9 = 2048;
      v10 = self;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "#Warning <%@ %p>: no library!", &v7, 0x16u);
    }

    library = self->_library;
  }

  v5 = *MEMORY[0x1E69E9840];

  return library;
}

BOOL __29__MailAccount_reloadAccounts__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 path];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)defaultPath
{
  v3 = [(MFAccount *)self personaIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x1E699B620];
    v5 = [(MFAccount *)self personaIdentifier];
    v6 = [v4 baseAccountDirectoryPathForPersonaIdentifier:v5];

    v7 = v6;
  }

  else
  {
    v7 = [objc_opt_class() defaultAccountDirectory];
  }

  v8 = [(MFAccount *)self uniqueID];
  v9 = [v7 stringByAppendingPathComponent:v8];

  v10 = [v9 mf_betterStringByResolvingSymlinksInPath];

  return v10;
}

+ (id)defaultAccountDirectory
{
  if (defaultAccountDirectory_sOnceToken != -1)
  {
    +[MailAccount defaultAccountDirectory];
  }

  v3 = defaultAccountDirectory_sMailAccountDirectory;

  return v3;
}

void __38__MailAccount_defaultAccountDirectory__block_invoke()
{
  v2 = [MEMORY[0x1E699AE20] mailAccountDirectory];
  v0 = [v2 path];
  v1 = defaultAccountDirectory_sMailAccountDirectory;
  defaultAccountDirectory_sMailAccountDirectory = v0;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__MailAccount_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

- (id)mailboxCachePath
{
  mailboxCachePath = self->_mailboxCachePath;
  if (mailboxCachePath)
  {
    v3 = mailboxCachePath;
  }

  else
  {
    v4 = [(MailAccount *)self path];
    v3 = [v4 stringByAppendingPathComponent:@".mboxCache.plist"];
  }

  return v3;
}

- (NSString)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(MailAccount *)self firstEmailAddress];

    if (v4)
    {
      [(MailAccount *)self mf_lock];
      [(MFAccount *)self setAccountProperty:v4 forKey:@"DisplayName"];
      [(MailAccount *)self mf_unlock];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MailAccount;
      v4 = [(MFAccount *)&v6 displayName];
    }
  }

  return v4;
}

id __39__MailAccount_emailAddressesDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ef_stringByTrimmingWhitespaceAndNewlineCharacters];

  return v2;
}

- (BOOL)shouldArchiveByDefault
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(MailAccount *)self supportsArchiving])
  {
    v3 = [(MFAccount *)self _BOOLForAccountInfoKey:@"ArchiveMessages" defaultValue:0];
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(MFAccount *)self ef_publicDescription];
      [(MailAccount *)v5 shouldArchiveByDefault:v3];
    }
  }

  else
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MFAccount *)self ef_publicDescription];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: shouldArchiveByDefault: Account does not support archiving", &v9, 0xCu);
    }

    v3 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)emailAddressesDictionary
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"EmailAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 componentsSeparatedByString:{@", "}];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v2;
        v4 = 0;
        goto LABEL_21;
      }

      if (v2)
      {
        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v22 = v2;
          _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Returned unhandled email addresses %@", buf, 0xCu);
        }
      }

      v4 = 0;
LABEL_20:
      v11 = 0;
      goto LABEL_21;
    }

    v3 = v2;
  }

  v4 = v3;
  if (!v3)
  {
    goto LABEL_20;
  }

  v5 = [v3 ef_map:&__block_literal_global_214];
  v6 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    v10 = MEMORY[0x1E695E118];
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v7);
      }

      [v6 addObject:{v10, v16}];
      if (!--v8)
      {
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v7];

LABEL_21:
  v13 = v11;

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

id __34__MailAccount_emailAddressStrings__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

- (BOOL)cacheHasBeenRead
{
  os_unfair_lock_lock(&self->_flagsLock);
  v3 = HIWORD(*&self->_flags) & 1;
  os_unfair_lock_unlock(&self->_flagsLock);
  return v3;
}

- (MFMailboxUid)rootMailbox
{
  _configureMailboxCache(self);
  [(MailAccount *)self mf_lock];
  v3 = self->_rootMailboxUid;
  [(MailAccount *)self mf_unlock];

  return v3;
}

- (NSArray)emailAddressStrings
{
  v2 = [(MailAccount *)self emailAddressesDictionary];
  v3 = [v2 allKeys];
  v4 = [v3 ef_map:&__block_literal_global_204];

  return v4;
}

- (BOOL)isActive
{
  v2 = self;
  v3 = [(MFAccount *)self persistentAccount];
  LOBYTE(v2) = [(MailAccount *)v2 isActiveWithPersistentAccount:v3];

  return v2;
}

- (id)copyReceivingEmailAddresses
{
  v3 = [(MFAccount *)self uniqueID];
  if (receivingEmailAddressesCache_onceToken != -1)
  {
    [MailAccount copyReceivingEmailAddresses];
  }

  v4 = receivingEmailAddressesCache__receivingEmailAddressesCache;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MailAccount_copyReceivingEmailAddresses__block_invoke;
  v7[3] = &unk_1E7AA31D8;
  v7[4] = self;
  v5 = [v4 objectForKey:v3 generator:v7];

  return v5;
}

id __42__MailAccount_copyReceivingEmailAddresses__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

+ (id)activeAccountEmailAddresses
{
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 copy];

  v4 = [v3 ef_map:&__block_literal_global_131];
  v5 = [v4 ef_flatten];
  v6 = [v5 ef_filter:*MEMORY[0x1E699B748]];

  v7 = objc_alloc_init(MEMORY[0x1E699AFD8]);
  [v7 addObjectsFromArray:v6];

  return v7;
}

id __42__MailAccount_copyReceivingEmailAddresses__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) emailAddressesAndAliasesList];
  v2 = [v1 ef_map:&__block_literal_global_217];

  v3 = [v2 ef_flatMap:&__block_literal_global_220];
  v4 = [MEMORY[0x1E695DFD8] setWithArray:v3];

  return v4;
}

- (id)URLString
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"Account";
  v8[1] = @"RelativePath";
  v9[0] = self;
  v9[1] = &stru_1F273A5E0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v4 = [(MailAccount *)self _URLForInfo:v3];
  v5 = [v4 absoluteString];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_incrementCacheDirtyCount
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  if ((*&flags & 0x20000) == 0)
  {
    self->_flags = (*&flags & 0xFFFD0000 | (*&flags + 1));
  }

  os_unfair_lock_unlock(&self->_flagsLock);
}

+ (id)activeNonLocalAccounts
{
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 ef_filter:&__block_literal_global_135];

  return v3;
}

id __42__MailAccount_activeAccountEmailAddresses__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyReceivingEmailAddresses];
  v3 = [v2 allObjects];

  return v3;
}

id __42__MailAccount_copyReceivingEmailAddresses__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mf_emailAddressesWithEquivalentDomains];

  return v2;
}

- (void)saveState
{
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagsLock);
  if (flags)
  {

    [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  }
}

+ (void)resetMailboxTimers
{
  v12 = *MEMORY[0x1E69E9840];
  [a1 activeAccounts];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v2 = v8 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v5++) resetMailboxTimer];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateCachedMailboxen
{
  [(MFLock *)self->_cachedMailboxenLock lock];
  draftsMailboxUid = self->_draftsMailboxUid;
  self->_draftsMailboxUid = 0;

  sentMessagesMailboxUid = self->_sentMessagesMailboxUid;
  self->_sentMessagesMailboxUid = 0;

  trashMailboxUid = self->_trashMailboxUid;
  self->_trashMailboxUid = 0;

  archiveMailboxUid = self->_archiveMailboxUid;
  self->_archiveMailboxUid = 0;

  junkMailboxUid = self->_junkMailboxUid;
  self->_junkMailboxUid = 0;

  [(MFLock *)self->_cachedMailboxenLock unlock];

  [(MailAccount *)self setCacheHasBeenRead:0];
}

- (void)invalidateEmailAliases
{
  v2 = +[MailAccount log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [MailAccount invalidateEmailAliases];
  }
}

- (void)releaseAllConnections
{
  v2 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  [v2 releaseAllConnections];
}

- (void)setCacheHasBeenRead:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_flagsLock);
  if (v3)
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFEFFFF | v5);

  os_unfair_lock_unlock(&self->_flagsLock);
}

+ (void)enableMailboxListingNotifications:(BOOL)a3
{
  atomic_store(0, sDisableMailboxListingNotifications);
  if (a3)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"AccountMailboxListingDidChange" object:0 userInfo:0];
  }
}

+ (void)_addAccountToSortedPaths:(id)a3
{
  value = a3;
  v3 = [value path];
  v4 = _sortedAccountPaths;
  v8.length = CFArrayGetCount(_sortedAccountPaths);
  v8.location = 0;
  v5 = CFArrayBSearchValues(v4, v8, v3, MEMORY[0x1E695D7F0], 0);
  CFArrayInsertValueAtIndex(_sortedAccountPaths, v5, v3);
  CFArrayInsertValueAtIndex(_accountsSortedByPath, v5, value);
}

+ (void)_setupSortedPathsForAccounts:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  CFArrayRemoveAllValues(_sortedAccountPaths);
  CFArrayRemoveAllValues(_accountsSortedByPath);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [a1 _addAccountToSortedPaths:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)existingAccountForUniqueID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  +[MailAccount lockMailAccount];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _accounts;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 uniqueID];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[MailAccount unlockMailAccount];
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)existingDAMailAccountForDAAccount:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  +[MailAccount lockMailAccount];
  v4 = [v3 accountID];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = _accounts;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 uniqueID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  +[MailAccount unlockMailAccount];
  [v9 setDAAccount:v3];

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_loadAllAccountsWithError:(id *)a3
{
  v33[6] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v25 = [MEMORY[0x1E695DF70] array];
  v5 = *MEMORY[0x1E69597F0];
  v33[0] = *MEMORY[0x1E69598D8];
  v33[1] = v5;
  v6 = *MEMORY[0x1E6959868];
  v33[2] = *MEMORY[0x1E6959918];
  v33[3] = v6;
  v7 = *MEMORY[0x1E6959898];
  v33[4] = *MEMORY[0x1E6959890];
  v33[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:6];
  [v25 addObjectsFromArray:v8];

  if ([v25 count])
  {
    v9 = +[MFAccountStore sharedAccountStore];
    v31 = 0;
    v10 = [v9 accountsWithTypeIdentifiers:v25 error:&v31];
    v11 = v31;

    if (v10)
    {
      [v4 addObjectsFromArray:v10];
    }

    if (v11)
    {
      v12 = v11;
    }
  }

  else
  {
    v11 = 0;
  }

  v30 = 0;
  v13 = [a1 _loadDataAccessAccountsWithError:&v30];
  v24 = v30;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [a1 existingDAMailAccountForDAAccount:v18];
        if (v19 || (v19 = [[DAMailAccount alloc] initWithDAAccount:v18]) != 0)
        {
          [v4 addObject:v19];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v15);
  }

  if (!v24 || v11)
  {
    if (!v11)
    {
      [a1 _removeLookAsideValuesNotInAccountList:v4];
      v11 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v11 = v24;
  }

  if (a3)
  {
    v20 = v11;
    *a3 = v11;
  }

LABEL_25:

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_loadDataAccessAccountsWithError:(id *)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = sharedDAAccountStore();
  v5 = *MEMORY[0x1E6959878];
  v20[0] = *MEMORY[0x1E6959840];
  v20[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v7 = [v4 da_accountsWithAccountTypeIdentifiers:v6 outError:a3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    v11 = *MEMORY[0x1E69B17F0];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * i) setSourceApplicationBundleIdentifier:{v11, v15}];
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)mailAccountsWithError:(id *)a3
{
  +[MailAccount lockMailAccount];
  v5 = _accounts;
  if (!_accounts)
  {
    [a1 reloadAccounts];
    v5 = _accounts;
  }

  v6 = [v5 copy];
  if (a3)
  {
    *a3 = _lastAccountsReloadError;
  }

  +[MailAccount unlockMailAccount];

  return v6;
}

+ (id)lastMailAccountsReloadDate
{
  +[MailAccount lockMailAccount];
  v2 = _lastAccountsReloadDate;
  +[MailAccount unlockMailAccount];

  return v2;
}

+ (void)_setMailAccounts:(id)a3 saveIfChanged:(BOOL)a4 alreadyLocked:(BOOL)a5
{
  v6 = a4;
  v90 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v48 = v8;
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = a5;
  if (!a5)
  {
    [a1 disableMailboxListingNotifications];
    [a1 mf_lock];
  }

  v10 = objc_opt_new();
  [v10 setMaxConcurrentOperationCount:1];
  obj = [v8 mutableCopy];
  v11 = +[LocalAccount localAccount];
  v51 = v6;
  v50 = v11;
  if ([obj indexOfObjectIdenticalTo:v11] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [_accounts indexOfObjectIdenticalTo:v11];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    [obj insertObject:v11 atIndex:v13];
  }

  v53 = _accounts;
  objc_storeStrong(&_accounts, obj);
  [a1 _setupSortedPathsForAccounts:_accounts];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v14 = v53;
  v15 = [v14 countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v15)
  {
    v16 = *v81;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v80 + 1) + 8 * i);
        if ([obj containsObject:v18])
        {
          [v9 addObject:v18];
        }

        else
        {
          [v54 addObject:v18];
          [v18 invalidate];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v15);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v19 = obj;
  v20 = [v19 countByEnumeratingWithState:&v76 objects:v88 count:16];
  if (v20)
  {
    v21 = *v77;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v77 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v76 + 1) + 8 * j);
        v24 = [v14 containsObject:v23];
        v25 = v55;
        if (v24)
        {
          v26 = [v9 containsObject:v23];
          v25 = v9;
          if (v26)
          {
            continue;
          }
        }

        [v25 addObject:v23];
      }

      v20 = [v19 countByEnumeratingWithState:&v76 objects:v88 count:16];
    }

    while (v20);
  }

  if (v51)
  {
    v47 = v19;
    v52 = a1;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v27 = v54;
    v28 = [v27 countByEnumeratingWithState:&v72 objects:v87 count:16];
    if (v28)
    {
      v29 = *v73;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v73 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v72 + 1) + 8 * k);
          v71[0] = MEMORY[0x1E69E9820];
          v71[1] = 3221225472;
          v71[2] = __60__MailAccount__setMailAccounts_saveIfChanged_alreadyLocked___block_invoke;
          v71[3] = &unk_1E7AA25C0;
          v71[4] = v31;
          [v10 addOperationWithBlock:v71];
        }

        v28 = [v27 countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v28);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v32 = v55;
    v33 = [v32 countByEnumeratingWithState:&v67 objects:v86 count:16];
    if (v33)
    {
      v34 = *v68;
      do
      {
        for (m = 0; m != v33; ++m)
        {
          if (*v68 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v67 + 1) + 8 * m);
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __60__MailAccount__setMailAccounts_saveIfChanged_alreadyLocked___block_invoke_2;
          v66[3] = &unk_1E7AA25C0;
          v66[4] = v36;
          [v10 addOperationWithBlock:v66];
        }

        v33 = [v32 countByEnumeratingWithState:&v67 objects:v86 count:16];
      }

      while (v33);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v37 = v9;
    v38 = [v37 countByEnumeratingWithState:&v62 objects:v85 count:16];
    if (v38)
    {
      v39 = *v63;
      do
      {
        for (n = 0; n != v38; ++n)
        {
          if (*v63 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v62 + 1) + 8 * n);
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = __60__MailAccount__setMailAccounts_saveIfChanged_alreadyLocked___block_invoke_3;
          v61[3] = &unk_1E7AA25C0;
          v61[4] = v41;
          [v10 addOperationWithBlock:v61];
        }

        v38 = [v37 countByEnumeratingWithState:&v62 objects:v85 count:16];
      }

      while (v38);
    }

    a1 = v52;
    v19 = v47;
  }

  if (!v49)
  {
    [a1 mf_unlock];
    [a1 enableMailboxListingNotifications:0];
  }

  [v10 waitUntilAllOperationsAreFinished];
  clearMailboxUIDCache();
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = v9;
  v43 = [v42 countByEnumeratingWithState:&v57 objects:v84 count:16];
  if (v43)
  {
    v44 = *v58;
    do
    {
      for (ii = 0; ii != v43; ++ii)
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v57 + 1) + 8 * ii) invalidateEmailAliases];
      }

      v43 = [v42 countByEnumeratingWithState:&v57 objects:v84 count:16];
    }

    while (v43);
  }

  [a1 notifyOfAccountsAdded:v55 accountsRemoved:v54 changedAccounts:v42];
  v46 = *MEMORY[0x1E69E9840];
}

+ (void)_removeAccountFromSortedPaths:(id)a3
{
  v5 = a3;
  if (_accountsSortedByPath)
  {
    Count = CFArrayGetCount(_accountsSortedByPath);
    if (Count)
    {
      v4 = Count - 1;
      do
      {
        if (CFArrayGetValueAtIndex(_accountsSortedByPath, v4) == v5)
        {
          CFArrayRemoveValueAtIndex(_accountsSortedByPath, v4);
          CFArrayRemoveValueAtIndex(_sortedAccountPaths, v4);
        }

        --v4;
      }

      while (v4 != -1);
    }
  }
}

+ (id)activeAccountsWithError:(id *)a3
{
  v3 = [a1 mailAccountsWithError:a3];
  v4 = [v3 ef_filter:&__block_literal_global_137];

  return v4;
}

+ (id)purgeableAccounts
{
  v2 = +[MailAccount mailAccounts];
  v3 = [v2 ef_filter:&__block_literal_global_139];

  return v3;
}

+ (MailAccount)accountWithUniqueId:(id)a3
{
  v4 = a3;
  v5 = [a1 mailAccounts];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__MailAccount_accountWithUniqueId___block_invoke;
  v9[3] = &unk_1E7AA30E0;
  v6 = v4;
  v10 = v6;
  v7 = [v5 ef_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __35__MailAccount_accountWithUniqueId___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (void)notifyOfAccountsAdded:(id)a3 accountsRemoved:(id)a4 changedAccounts:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    v9 = +[MFMailMessageLibrary defaultInstance];
    v10 = [v9 persistence];
    v11 = [v10 hookRegistry];

    if ([v12 count])
    {
      [v11 accountsAdded:v12];
    }

    if ([v7 count])
    {
      [v11 accountsRemoved:v7];
    }

    if ([v8 count])
    {
      [v11 accountsChanged:v8];
    }
  }
}

+ (id)existingAccountWithType:(id)a3 hostname:(id)a4 username:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [a1 mailAccounts];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 isEquivalentTo:v8 hostname:v9 username:v10])
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isEquivalentTo:(id)a3 hostname:(id)a4 username:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MailAccount *)self isAccountClassEquivalentTo:v8]&& [(MailAccount *)self isHostnameEquivalentTo:v9]&& [(MailAccount *)self isUsernameEquivalentTo:v10];

  return v11;
}

- (BOOL)isUsernameEquivalentTo:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self username];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(MFAccount *)self username];
    v7 = [v4 compare:v6 options:1] == 0;
  }

  return v7;
}

+ (id)_accountContainingEmailAddress:(id)a3 matchingAddress:(id *)a4 fullUserName:(id *)a5 includingInactive:(BOOL)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 emailAddressValue];
  v8 = [v7 simpleAddress];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v6 stringValue];
  }

  v11 = v10;

  v36 = v6;
  v12 = [v36 emailAddressValue];
  v13 = [v12 displayName];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [v36 stringValue];
  }

  v16 = v15;

  if (([v16 isEqualToString:&stru_1F273A5E0] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v36))
  {

    v16 = 0;
  }

  +[MailAccount lockMailAccount];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = _accounts;
  v17 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v17)
  {
    v44 = 0;
    v18 = 0;
    v39 = *v50;
LABEL_12:
    v41 = 0;
    v38 = v17;
    while (1)
    {
      if (*v50 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v49 + 1) + 8 * v41);
      if (a6 || [*(*(&v49 + 1) + 8 * v41) isActive])
      {
        v20 = [v19 emailAddressesAndAliasesList];
        v21 = [v20 ef_map:&__block_literal_global_146];

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v22 = v21;
        v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v23)
        {
          v24 = *v46;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v46 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v45 + 1) + 8 * i);
              if (![v26 caseInsensitiveCompare:v11])
              {
                v27 = [v19 fullUserName];
                v28 = v27;
                if (v16 && (!v27 || [v16 caseInsensitiveCompare:v27]))
                {
                  v29 = v19;

                  v44 = v29;
                }

                else
                {
                  if (a4)
                  {
                    v30 = v26;
                    *a4 = v26;
                  }

                  if (a5 && v28 && ([v28 isEqualToString:&stru_1F273A5E0] & 1) == 0)
                  {
                    v31 = v28;
                    *a5 = v28;
                  }

                  v32 = v19;

                  if ([v32 isActive])
                  {

                    v18 = v32;
                    goto LABEL_40;
                  }

                  v18 = v32;
                }
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_40:
      }

      if ([v18 isActive])
      {
        break;
      }

      if (++v41 == v38)
      {
        v17 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        if (v17)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  else
  {
    v44 = 0;
    v18 = 0;
  }

  +[MailAccount unlockMailAccount];
  if (!v18 && v44)
  {
    v18 = v44;
  }

  v33 = v18;

  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

id __93__MailAccount__accountContainingEmailAddress_matchingAddress_fullUserName_includingInactive___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 emailAddressValue];
  v4 = [v3 simpleAddress];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v2 stringValue];
  }

  v7 = v6;

  return v7;
}

+ (id)accountContainingEmailAddress:(id)a3
{
  v3 = [a1 _accountContainingEmailAddress:a3 matchingAddress:0 fullUserName:0 includingInactive:0];

  return v3;
}

+ (id)accountThatMessageIsFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 headersIfAvailable];
  v6 = [a1 accountForHeaders:v5 message:v4 includingInactive:0 error:0];

  return v6;
}

+ (id)addressesThatReceivedMessage:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = [a3 headersIfAvailable];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v22 copyAddressListForTo];
  [v23 addObjectsFromArray:v5];
  v6 = [v22 copyAddressListForCc];

  [v23 addObjectsFromArray:v6];
  v21 = v6;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v23;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 emailAddressValue];
        v13 = [v12 simpleAddress];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [v11 stringValue];
        }

        v16 = v15;

        v17 = [a1 _accountContainingEmailAddress:v16 matchingAddress:0 fullUserName:0 includingInactive:0];
        v18 = v17 == 0;

        if (!v18)
        {
          [v4 addObject:v16];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)outboxMailboxUid
{
  +[MailAccount lockMailAccount];
  v3 = +[LocalAccount localAccount];
  v4 = _outboxUid;
  if ([v4 isValid])
  {
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = [v3 mailboxUidForRelativePath:@"Outbox" create:1];
  if (v5)
  {
    [a1 _setOutboxMailboxUid:v5];
    v4 = v5;
    [v3 resetSpecialMailboxes];
  }

  else
  {
    v4 = 0;
  }

LABEL_8:
  +[MailAccount unlockMailAccount];

  return v4;
}

+ (id)allMailboxUids
{
  v2 = +[MailAccount mailAccounts];
  v3 = [MailAccount allMailboxUidsForAccounts:v2];

  return v3;
}

+ (id)allPurgeableMailboxUids
{
  v2 = +[MailAccount purgeableAccounts];
  v3 = [MailAccount allMailboxUidsForAccounts:v2];

  return v3;
}

+ (id)allMailboxUidsForAccounts:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) rootMailbox];
        if (v10)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = v6;
  while (1)
  {

    if (![v5 count])
    {
      break;
    }

    v11 = [v5 lastObject];
    v12 = [v11 mutableCopyOfChildren];
    [v4 addObjectsFromArray:v12];
    [v5 removeLastObject];
    [v5 addObjectsFromArray:v12];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)allActivePrimaryMailboxUids
{
  v2 = [a1 activeAccounts];
  v3 = [v2 ef_compactMap:&__block_literal_global_152];

  return v3;
}

id __42__MailAccount_allActivePrimaryMailboxUids__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 primaryMailboxUid];

  return v2;
}

+ (MailAccount)accountWithPath:(id)a3
{
  v3 = accountWithPathTryResolvingSymlinks(a3, 1);

  return v3;
}

+ (id)newAccountWithPath:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = accountWithPathTryResolvingSymlinks(v3, 0);
    if (!v4)
    {
      v5 = [v3 mf_betterStringByResolvingSymlinksInPath];

      v4 = accountWithPathTryResolvingSymlinks(v5, 0);
      if (!v4)
      {
        v4 = [objc_alloc(objc_opt_class()) initWithPath:v5];
      }

      v3 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(EFCancelable *)self->_stateCancelable cancel];
  v3.receiver = self;
  v3.super_class = MailAccount;
  [(MailAccount *)&v3 dealloc];
}

- (void)test_setTaskManager:(id)a3
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MailAccount.m" lineNumber:880 description:{@"%s can only be called from unit tests", "-[MailAccount test_setTaskManager:]"}];
  }

  messageStoresCache = self->_messageStoresCache;

  [(MFWeakObjectCache *)messageStoresCache removeAllObjects];
}

+ (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:a1 file:@"MailAccount.m" lineNumber:886 description:{@"%s can only be called from unit tests", "+[MailAccount test_tearDown]"}];
  }

  v5 = mailAccountQueue();
  dispatch_sync(v5, &__block_literal_global_161);
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"MailAccount.m" lineNumber:893 description:{@"%s can only be called from unit tests", "-[MailAccount test_tearDown]"}];
  }

  [(MailAccount *)self test_setTaskManager:0];

  [(MailAccount *)self setLibrary:0];
}

- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = MailAccount;
  [(MFAccount *)&v10 persistentAccountDidChange:v6 previousAccount:v7];
  if (v7)
  {
    v8 = [(MailAccount *)self isActiveWithPersistentAccount:v7];
    v9 = [(MailAccount *)self isActiveWithPersistentAccount:v6];
    if (v8 != v9)
    {
      [(MailAccount *)self _didBecomeActive:v9];
    }

    [(MailAccount *)self _invalidateCachedMailboxen];
  }
}

- (void)_setAccountProperties:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MailAccount;
  [(MFAccount *)&v6 _setAccountProperties:v4];
  v5 = [v4 objectForKey:@"SMTPAlternateIdentifiers"];

  if (!v5)
  {
    [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
  }
}

+ (id)newAccountWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"AccountPath"];
  v6 = [v5 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  v7 = [a1 newAccountWithPath:v6];
  if (v7 || (v7 = objc_alloc_init(a1)) != 0)
  {
    if (v6 && ([v5 isEqualToString:v6] & 1) == 0)
    {
      v8 = [v4 mutableCopy];
      [v8 setObject:v6 forKey:@"AccountPath"];
    }

    else
    {
      v8 = v4;
    }

    v4 = v8;
    [v7 _setAccountProperties:v8];
  }

  return v7;
}

- (MailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = MailAccount;
  v8 = [(MFAccount *)&v28 initWithPersistentAccount:v7];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"CachedMailboxenLock" andDelegate:v8];
    cachedMailboxenLock = v8->_cachedMailboxenLock;
    v8->_cachedMailboxenLock = v9;

    v11 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"MailAccountDeletionLock" andDelegate:0];
    deletionLock = v8->_deletionLock;
    v8->_deletionLock = v11;

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v8 selector:sel_deliveryAccountWillBeRemoved_ name:@"DeliveryAccountWillBeRemoved" object:0];

    if (v6)
    {
      [(MailAccount *)v8 setLibrary:v6];
    }

    else
    {
      [(MailAccount *)v8 setupLibrary];
    }

    objc_initWeak(&location, v8);
    v14 = [MFWeakObjectCache alloc];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __49__MailAccount_initWithLibrary_persistentAccount___block_invoke;
    v25 = &unk_1E7AA3148;
    objc_copyWeak(&v26, &location);
    v15 = [(MFWeakObjectCache *)v14 initWithBlock:&v22];
    messageStoresCache = v8->_messageStoresCache;
    v8->_messageStoresCache = v15;

    v17 = [MFLocalActionReplayHandler alloc];
    v18 = [(MailAccount *)v8 library:v22];
    v19 = [(MFLocalActionReplayHandler *)v17 initWithLibrary:v18 account:v8];
    replayHandler = v8->_replayHandler;
    v8->_replayHandler = v19;

    v8->_flagsLock._os_unfair_lock_opaque = 0;
    [(MailAccount *)v8 _registerStateCaptureHandler];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __49__MailAccount_initWithLibrary_persistentAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 account];
  v6 = [objc_alloc(objc_msgSend(v5 storeClassForMailbox:{v3)), "initWithMailbox:readOnly:", v3, 0}];
  v7 = [WeakRetained library];
  [v6 setLibrary:v7];

  return v6;
}

- (MailAccount)initWithLibrary:(id)a3 path:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailAccount *)self initWithLibrary:v6 persistentAccount:0];
  v9 = v8;
  if (v8)
  {
    [(MailAccount *)v8 _setPath:v7];
  }

  return v9;
}

+ (id)legacyPathForAccountIdentifier:(id)a3 withHostname:(id)a4 username:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a1 defaultAccountDirectory];
  v10 = [a1 legacyPathNameForAccountWithHostname:v7 username:v8];
  v11 = [v9 stringByAppendingPathComponent:v10];
  v12 = [v11 mf_betterStringByResolvingSymlinksInPath];

  return v12;
}

+ (id)legacyPathNameForAccountWithHostname:(id)a3 username:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E696AEC0];
  v9 = [a1 accountTypeString];
  v10 = [v8 stringWithFormat:@"%@-%@@%@", v9, v7, v6];

  return v10;
}

- (id)legacySQLExpressionToMatchAllMailboxes
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MFAccount *)self username];
  v5 = encodedURLComponent(v4);
  v6 = [(MFAccount *)self hostname];
  v7 = encodedURLComponent(v6);
  v8 = [v3 stringWithFormat:@"%@@%@", v5, v7];

  v9 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"url"];
  v10 = [v9 contains:v8 caseSensitive:0];

  return v10;
}

- (id)URLStringFromLegacyURLString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithString:v4];
    [v5 setUser:0];
    [v5 setPort:0];
    v6 = [(MFAccount *)self uniqueID];
    [v5 setHost:v6];

    v7 = [v5 URL];
    v8 = [v7 absoluteString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setPath:(id)a3
{
  v4 = a3;
  if ([(MailAccount *)self _setPath:?])
  {
    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)setFullUserName:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self fullUserName];
  if ([(__CFString *)v4 length])
  {
    v7 = [(__CFString *)v4 mf_stringWithNoExtraSpaces];
  }

  else
  {
    v7 = v4;
  }

  if (v7 != v5)
  {
    v6 = v5 ? v5 : &stru_1F273A5E0;
    if (([(__CFString *)v7 isEqualToString:v6]& 1) == 0)
    {
      [(MailAccount *)self mf_lock];
      if (v7)
      {
        [MFAccount setAccountProperty:"setAccountProperty:forKey:" forKey:?];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"FullUserName"];
      }

      [(MailAccount *)self mf_unlock];
    }
  }
}

+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695E000] em_userDefaults];
  v6 = [v5 objectForKey:@"DefaultSendingAccount"];

  if ([v6 length])
  {
    v7 = [a1 accountWithUniqueId:v6];
    if ([v7 isActive] && (a3 || (objc_msgSend(v7, "restrictedFromSendingExternally") & 1) == 0))
    {
      if (v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [a1 mailAccounts];
  v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && [v11 isActive] && (a3 || (objc_msgSend(v11, "restrictedFromSendingExternally") & 1) == 0))
        {
          v7 = v11;
          goto LABEL_19;
        }
      }

      v7 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

LABEL_20:
  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)defaultDeliveryAccount
{
  v2 = [a1 defaultMailAccountForDelivery];
  v3 = [v2 deliveryAccount];

  return v3;
}

- (id)deliveryAccountAlternates
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [DeliveryAccount accountWithIdentifier:*(*(&v11 + 1) + 8 * i), v11];
          if (v8)
          {
            [v3 addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setDeliveryAccount:(id)a3
{
  v7 = a3;
  if (([objc_opt_class() primaryDeliveryAccountIsDynamic] & 1) == 0)
  {
    v4 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
    v5 = [v7 identifier];
    v6 = v5;
    if (!v4 || ([v5 isEqualToString:v4] & 1) == 0)
    {
      [(MailAccount *)self mf_lock];
      if (v6)
      {
        [(MFAccount *)self setAccountProperty:v6 forKey:@"SMTPIdentifier"];
      }

      else
      {
        [(MFAccount *)self removeAccountPropertyForKey:@"SMTPIdentifier"];
      }

      [(MailAccount *)self mf_unlock];
    }
  }
}

- (void)setDeliveryAccountAlternates:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * v9) identifier];
        if (v10)
        {
          [v5 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
  if (([v11 isEqual:v5] & 1) == 0)
  {
    [(MailAccount *)self mf_lock];
    if ([v5 count])
    {
      [(MFAccount *)self setAccountProperty:v5 forKey:@"SMTPAlternateIdentifiers"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
    }

    [(MailAccount *)self mf_unlock];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)canUseDeliveryAccount:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self deliveryAccount];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 identifier];
    v9 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
    v7 = [v9 containsObject:v8];
  }

  return v7;
}

- (BOOL)canUseCarrierDeliveryFallback
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPCarrierFallbackAllowed"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)firstEmailAddress
{
  v2 = [(MailAccount *)self emailAddressStrings];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)checkAndSetDefaultEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self defaultEmailAddress];
  v6 = v5;
  if (v5 == v4 || (v5 ? (v7 = v5) : (v7 = &stru_1F273A5E0), ([v4 isEqualToString:v7] & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    [(MailAccount *)self mf_lock];
    if (v4)
    {
      [(MFAccount *)self setAccountProperty:v4 forKey:@"defaultAddress"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"defaultAddress"];
    }

    [(MailAccount *)self mf_unlock];
    v8 = 1;
  }

  return v8;
}

+ (void)updatePersonalStatusForAccounts:(id)a3 forceUpdate:(BOOL)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v5 = MFUserAgent();
  v6 = [v5 isMaild];

  if (v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v17;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v7)
    {
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v21 = 0;
          v22 = &v21;
          v23 = 0x3032000000;
          v24 = __Block_byref_object_copy__4;
          v25 = __Block_byref_object_dispose__4;
          v26 = [v10 systemAccount];
          v11 = [v10 firstEmailAddress];
          if (v11)
          {
            v12 = [v22[5] ed_accountIsNonPersonal];
            v13 = v12;
            if (a4 || !v12)
            {
              v14 = [v22[5] ed_accountIsPersonalDomainForMailAccount:v10 force:1];
              v20[0] = MEMORY[0x1E69E9820];
              v20[1] = 3221225472;
              v20[2] = __59__MailAccount_updatePersonalStatusForAccounts_forceUpdate___block_invoke;
              v20[3] = &unk_1E7AA3170;
              v20[4] = &v21;
              v20[5] = a1;
              [v14 addSuccessBlock:v20];
            }
          }

          else
          {
            v13 = +[MailAccount log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v10 ef_publicDescription];
              *buf = 138543362;
              v32 = v15;
              _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Skip updating isNonPersonal since emailAddress is nil for %{public}@", buf, 0xCu);
            }
          }

          _Block_object_dispose(&v21, 8);
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v7);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __59__MailAccount_updatePersonalStatusForAccounts_forceUpdate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 BOOLValue];
  [*(a1 + 40) mf_lock];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3 ^ 1u];
  [v4 setAccountProperty:v5 forKey:*MEMORY[0x1E699B718]];

  [*(a1 + 40) mf_unlock];
}

- (BOOL)checkAndSetEmailAddresses:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MailAccount *)self emailAddressesDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_13:
      v13 = v4;
      v9 = 0;
      goto LABEL_14;
    }

    v6 = [v4 componentsSeparatedByString:{@", "}];
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  v8 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    v12 = MEMORY[0x1E695E118];
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v9);
      }

      [v8 addObject:{v12, v19}];
      if (!--v10)
      {
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v9];

LABEL_14:
  if (v5 == v13)
  {
    goto LABEL_20;
  }

  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DF20] dictionary];
  }

  v15 = [v13 isEqual:{v14, v19}];
  if (!v5)
  {
  }

  if (v15)
  {
LABEL_20:
    v16 = 0;
  }

  else
  {
    [(MailAccount *)self mf_lock];
    if (v13)
    {
      [(MFAccount *)self setAccountProperty:v13 forKey:@"EmailAddresses"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"EmailAddresses"];
    }

    [(MailAccount *)self mf_unlock];
    v16 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)receiveEmailAliasAddresses
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"ReceiveEmailAliasAddresses"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      v7 = MEMORY[0x1E695E118];
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{v7, v11}];
        if (!--v5)
        {
          v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (!v5)
          {
            break;
          }
        }
      }
    }

    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v4];

    v2 = v8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)checkAndSetReceiveEmailAliasAddresses:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self receiveEmailAliasAddresses];
  v6 = v5;
  if (v5 == v4 || v5 && ([v4 isEqual:v5] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    [(MailAccount *)self mf_lock];
    if (v4)
    {
      [(MFAccount *)self setAccountProperty:v4 forKey:@"ReceiveEmailAliasAddresses"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"ReceiveEmailAliasAddresses"];
    }

    [(MailAccount *)self mf_unlock];
    v7 = 1;
  }

  return v7;
}

- (NSDate)lastEmailAliasesSyncDate
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"LastEmailAliasesSyncDate"];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E695DF00];
    [v2 doubleValue];
    v5 = [v4 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLastEmailAliasesSyncDate:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    [v4 timeIntervalSince1970];
    v6 = [v5 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  [(MailAccount *)self mf_lock];
  [(MFAccount *)self setAccountProperty:v6 forKey:@"LastEmailAliasesSyncDate"];
  [(MailAccount *)self mf_unlock];
}

- (NSString)lastEmailAliasesSyncEntityTag
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"LastEmailAliasesSyncEntityTag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setLastEmailAliasesSyncEntityTag:(id)a3
{
  v4 = a3;
  [(MailAccount *)self mf_lock];
  [(MFAccount *)self setAccountProperty:v4 forKey:@"LastEmailAliasesSyncEntityTag"];
  [(MailAccount *)self mf_unlock];
}

- (id)emailAddressesAndAliases
{
  v3 = [(MailAccount *)self emailAddressesDictionary];
  v4 = [(MailAccount *)self receiveEmailAliasAddresses];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (v3)
    {
      v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
      [v7 addEntriesFromDictionary:v5];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  [(MailAccount *)self updateEmailAliasesIfNeeded];
  v6 = v3;
  if (v3)
  {
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSString)smtpIdentifier
{
  v2 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 identifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_invalidateAndDeleteAccountData:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
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
  v5 = [(MailAccount *)self library];
  [v5 invalidateAccount:self];

  if (v3)
  {
    v6 = [(MailAccount *)self allMailboxUids];
    v7 = [v6 arrayByApplyingSelector:sel_URLString];

    v28 = v7;
    v8 = [(MailAccount *)self allLocalMailboxUids];
    v29 = v8;
    v9 = [(MailAccount *)self path];
    v10 = MFRemoveItemAtPath();

    v11 = [(MailAccount *)self library];
    [v11 deleteMailboxes:v7 account:self];

    if ([v8 count])
    {
      v12 = +[LocalAccount localAccount];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v14)
      {
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v13);
            }

            [v12 deleteMailbox:*(*(&v34 + 1) + 8 * i)];
          }

          v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      _invalidateMailboxCache(v12);
    }

    v17 = [MailAccount outboxMessageStore:1];
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [v17 copyOfAllMessagesWithOptions:2048];
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          v24 = [MailAccount accountThatMessageIsFrom:v23];
          v25 = v24 == 0;

          if (v25)
          {
            [v18 addObject:v23];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    if ([v18 count])
    {
      [v17 deleteMessages:v18 moveToTrash:0];
      [v17 doCompact];
    }

    v26 = [(MailAccount *)self library];
    [v26 deleteAccount:self];

    [(MailAccount *)self _deleteHook];
    [(MFAccount *)self setPassword:0];
    [(MailAccount *)self deleteDeliveryAccountIfNeeded];
  }

  [(MFLock *)self->_deletionLock unlock];
  [objc_opt_class() enableMailboxListingNotifications:1];
  v27 = *MEMORY[0x1E69E9840];
}

- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)a3
{
  v5 = mailAccountQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MailAccount__asynchronouslyInvalidateAndDeleteAccountData___block_invoke;
  v6[3] = &unk_1E7AA25E8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

+ (void)saveStateForAllAccounts
{
  +[MailAccount lockMailAccount];
  v2 = [_accounts copy];
  +[MailAccount unlockMailAccount];
  [v2 makeObjectsPerformSelector:sel_saveState withObject:0];
}

- (void)releaseAllForcedConnections
{
  v2 = [(MailAccount *)self deliveryAccount];
  [v2 releaseAllForcedConnections];
}

- (void)_synchronizeMailboxListWithFileSystem
{
  v3 = [(MailAccount *)self _mailboxPathPrefix];
  v4 = [(MailAccount *)self path];
  v7 = [v4 mutableCopyWithZone:0];

  if (v3 && [v3 length])
  {
    [v7 appendString:@"/"];
    v5 = [(MailAccount *)self _mailboxPathPrefix];
    [v7 appendString:v5];
  }

  [(MailAccount *)self mf_lock];
  v6 = [(MailAccount *)self rootMailbox];
  [(MailAccount *)self _loadEntriesFromFileSystemPath:v7 parent:v6];

  [(MailAccount *)self mf_unlock];
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags &= ~0x20000u;
  os_unfair_lock_unlock(&self->_flagsLock);
  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  [(MailAccount *)self resetSpecialMailboxes];
  [(MailAccount *)self emptyTrash];
}

- (void)forceFetchMailboxListWithKind:(int64_t)a3
{
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    v7 = +[MFInvocationQueue sharedInvocationQueue];
    v5 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_resetMailboxTimer target:self];
    [v7 addInvocation:v5];

    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v8 = +[MFInvocationQueue sharedInvocationQueue];
      v6 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_fetchMailboxListExplicit target:self];
      [v8 addInvocation:v6];
    }

    else
    {
      v8 = +[MFInvocationQueue sharedInvocationQueue];
      v6 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_fetchMailboxListImplicit target:self];
      [v8 addInvocation:v6];
    }
  }
}

- (void)deleteDeliveryAccountIfNeeded
{
  v3 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  if (v3 && ![(MailAccount *)self deliveryAccountInUseByOtherAccounts:v3])
  {
    [DeliveryAccount removeDeliveryAccount:v3];
  }
}

- (BOOL)deliveryAccountInUseByOtherAccounts:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [a3 uniqueID];
  +[MailAccount lockMailAccount];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = _accounts;
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v22 = 0;
    v24 = *v31;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [v6 uniqueID];
        v8 = [(MFAccount *)self uniqueID];
        v9 = v7 == v8;

        if (!v9)
        {
          v10 = [v6 _deliveryAccountCreateIfNeeded:0];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 uniqueID];
            v13 = [v12 isEqualToString:v3];

            if (v13)
            {

              v22 = 1;
              goto LABEL_25;
            }
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = [v6 deliveryAccountAlternates];
          v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = [*(*(&v26 + 1) + 8 * j) uniqueID];
                v19 = [v18 isEqualToString:v3];

                if (v19)
                {
                  v22 = 1;
                  goto LABEL_19;
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:
        }
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_25:

  +[MailAccount unlockMailAccount];
  v20 = *MEMORY[0x1E69E9840];
  return v22 & 1;
}

- (BOOL)isSpecialMailbox:(id)a3
{
  v3 = a3;
  if ([v3 isStandardizedMailboxUid])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 isStore] ^ 1;
  }

  return v4;
}

- (id)mailboxForType:(int64_t)a3
{
  v4 = mailboxUIDTypeFromECMailboxType(a3);

  return [(MailAccount *)self mailboxUidOfType:v4 createIfNeeded:1];
}

- (BOOL)containsMailboxWithURL:(id)a3
{
  v4 = [a3 absoluteString];
  LOBYTE(self) = [(MailAccount *)self ownsMailboxUidWithURL:v4];

  return self;
}

- (id)specialMailboxNameForType:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:off_1E7AA3370[a3 - 1], v3];
  }

  return v5;
}

- (id)allMailboxesFilteringNotes:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(MailAccount *)self rootMailbox];
  if (v7)
  {
    [v6 addObject:v7];
  }

  while ([v6 count])
  {
    v8 = [v6 lastObject];
    v9 = v8;
    if (v3 && [v8 isNotesMailboxUid])
    {
      [v5 removeObject:v9];
      [v6 removeLastObject];
    }

    else
    {
      v10 = [v9 mutableCopyOfChildren];
      [v5 addObjectsFromArray:v10];
      [v6 removeLastObject];
      [v6 addObjectsFromArray:v10];
    }
  }

  v11 = [(MailAccount *)self primaryMailboxUid];
  v12 = [v5 indexOfObject:v11];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 exchangeObjectAtIndex:0 withObjectAtIndex:v12];
  }

  return v5;
}

- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [(MailAccount *)self allMailMailboxUid];
  v6 = v5;
  if (v5)
  {
    v14[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    v8 = [(MailAccount *)self allMailboxUids];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke;
    v13[3] = &__block_descriptor_40_e22_B16__0__MFMailboxUid_8l;
    *&v13[4] = a3;
    v9 = [v8 ef_filter:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2;
    v12[3] = &__block_descriptor_40_e39_q24__0__MFMailboxUid_8__MFMailboxUid_16l;
    *&v12[4] = a3;
    v7 = [v9 sortedArrayUsingComparator:v12];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

BOOL __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  if ([v3 mailboxType] != 3 && objc_msgSend(v3, "mailboxType") != 1)
  {
    if ([v3 isStore])
    {
      v4 = *(a1 + 32);
      if (v4 == 0.0 || ([v3 suggestionsLostMessageSearchTimestamp], v4 >= v5))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

uint64_t __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) != 0.0)
  {
    [v5 suggestionsLostMessageSearchTimestamp];
    v8 = v7;
    [v6 suggestionsLostMessageSearchTimestamp];
    if (v8 < v9)
    {
      v10 = -1;
      goto LABEL_10;
    }

    [v5 suggestionsLostMessageSearchTimestamp];
    v12 = v11;
    [v6 suggestionsLostMessageSearchTimestamp];
    if (v12 > v13)
    {
      goto LABEL_6;
    }
  }

  v14 = [v5 suggestionsLostMessageSearchResultCount];
  if (v14 > [v6 suggestionsLostMessageSearchResultCount])
  {
LABEL_6:
    v10 = 1;
    goto LABEL_10;
  }

  v15 = [v5 suggestionsLostMessageSearchResultCount];
  if (v15 >= [v6 suggestionsLostMessageSearchResultCount])
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

LABEL_10:

  return v10;
}

- (void)_setEmptyFrequency:(int)a3 forKey:(id)a4
{
  v6 = a4;
  v5 = EFStringWithInt();
  [(MailAccount *)self mf_lock];
  [(MFAccount *)self setAccountProperty:v5 forKey:v6];
  [(MailAccount *)self mf_unlock];
}

- (BOOL)_resetSpecialMailboxesCanPost:(BOOL)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MailAccount__resetSpecialMailboxesCanPost___block_invoke;
  v8[3] = &unk_1E7AA3240;
  v8[4] = self;
  v8[5] = &v10;
  v9 = a3;
  [v5 _postMailboxListNotificationAfterBlock:v8];
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __45__MailAccount__resetSpecialMailboxesCanPost___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) mf_lock];
  v2 = *(a1 + 32);
  v12 = (v2[15] != 0) | (2 * (v2[16] != 0)) | (4 * (v2[17] != 0)) | (8 * (v2[18] != 0)) | (16 * (v2[19] != 0)) | (32 * (v2[20] != 0));
  [v2 mf_unlock];
  v3 = 0;
  v13[0] = xmmword_1B0E975B0;
  v13[1] = xmmword_1B0E975C0;
  v13[2] = xmmword_1B0E975D0;
  do
  {
    v4 = *(a1 + 32);
    v5 = *(v13 + v3);
    v6 = [v4 _specialMailboxUidWithType:v5 create:0];
    LODWORD(v5) = [v4 _assignSpecialMailboxToAppropriateIvar:v6 forType:v5];

    if (v5)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v3 += 8;
  }

  while (v3 != 48);
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) mf_lock];
    v7 = *(a1 + 32);
    v8 = (v7[15] != 0) | (2 * (v7[16] != 0)) | (4 * (v7[17] != 0)) | (8 * (v7[18] != 0)) | (16 * (v7[19] != 0)) | (32 * (v7[20] != 0));
    [v7 mf_unlock];
    *(*(*(a1 + 40) + 8) + 24) = v12 != v8;
  }

  if (*(a1 + 48) == 1)
  {
    v9 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

+ (void)performOnAccounts:(id)a3 accountBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MailAccount_performOnAccounts_accountBlock___block_invoke;
  v10[3] = &unk_1E7AA3290;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a1 _postMailboxListNotificationAfterBlock:v10];
}

uint64_t __46__MailAccount_performOnAccounts_accountBlock___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MailAccount_performOnAccounts_accountBlock___block_invoke_2;
  v4[3] = &unk_1E7AA3268;
  v6 = &v7;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v2;
}

void __46__MailAccount_performOnAccounts_accountBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) |= (*(*(a1 + 32) + 16))();
}

+ (void)_postMailboxListNotificationAfterBlock:(id)a3
{
  v5 = a3;
  v3 = [objc_opt_class() mailboxListingNotificationsAreEnabled];
  if (v3)
  {
    [objc_opt_class() disableMailboxListingNotifications];
  }

  v4 = v5[2]();
  if (v3)
  {
    [objc_opt_class() enableMailboxListingNotifications:v4];
  }
}

- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4
{
  v5 = a3;
  v6 = [v5 pathComponents];
  v7 = [v6 count];

  if (a4)
  {
    if (v7 == 1)
    {
      *a4 = 0;
    }

    else
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = MFLookupLocalizedString(@"MAILBOX_NAME_INCLUDES_PATH_SEPARATOR", @"Mailbox names may not include “%@”.", @"Delayed");
      v10 = [v8 stringWithFormat:v9, @"/"];
      *a4 = v10;
    }
  }

  return v7 == 1;
}

- (BOOL)canMailboxBeRenamed:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_rootMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 mailboxType];
    v5 = v6 == -100 || v6 == 0;
  }

  return v5;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 parent];
  LOBYTE(self) = [(MailAccount *)self renameMailbox:v6 newName:v7 parent:v8];

  return self;
}

- (BOOL)_renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v62 = a4;
  v70 = a5;
  v68 = v8;
  v65 = [v8 fullPath];
  v9 = [v8 attributes];
  v63 = [v8 parent];
  v10 = +[MailAccount log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 ef_publicDescription];
    v12 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v62];
    *buf = 138543618;
    v77 = v11;
    v78 = 2114;
    v79 = v12;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Renaming mailbox %{public}@ newName: %{public}@", buf, 0x16u);
  }

  [(MailAccount *)self mf_lock];
  v13 = [v8 depthFirstEnumerator];
  v67 = [v13 allObjects];

  v59 = [v67 arrayByApplyingSelector:sel_URLString];
  if (v62)
  {
    v14 = [(MailAccount *)self _uidNameForPathComponent:v62];
    [v8 setName:v14];
  }

  if (v70)
  {
    [v8 setParent:v70];
  }

  [v67 makeObjectsPerformSelector:sel_flushCriteria];
  v60 = [v67 arrayByApplyingSelector:sel_URLString];
  v61 = [v8 fullPath];
  v15 = [v61 stringByDeletingLastPathComponent];
  v66 = [v15 ef_pathByReplacingRelativePathWithFolderName:@"mbox"];

  v69 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v69 fileExistsAtPath:v66] & 1) == 0 && !objc_msgSend(v69, "mf_makeCompletePath:mode:", v66, 448))
  {
    goto LABEL_20;
  }

  if ([v69 fileExistsAtPath:v65])
  {
    v16 = v65;
    v17 = [v65 fileSystemRepresentation];
    v18 = v61;
    v19 = [v61 fileSystemRepresentation];
    rename(v17, v19, v20);
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = +[MailAccount log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v68 ef_publicDescription];
    *buf = 138543618;
    v77 = v24;
    v78 = 1024;
    LODWORD(v79) = v22;
    _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Renaming file at new path for mailbox %{public}@ result %d", buf, 0x12u);
  }

  if (v22)
  {
    v25 = [(MailAccount *)self library];
    v64 = [v25 renameMailboxes:v59 to:v60];

    v26 = +[MailAccount log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v67 ef_mapSelector:sel_ef_publicDescription];
      *buf = 138543618;
      v77 = v27;
      v78 = 1024;
      LODWORD(v79) = v64;
      _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "Renaming mailboxes in the database %{public}@ result %d", buf, 0x12u);
    }

    if ((v64 & ((v9 & 3) == 0)) == 1)
    {
      v28 = [v65 stringByDeletingPathExtension];

      if ([v69 fileExistsAtPath:v28])
      {
        v29 = v28;
        v30 = [v28 fileSystemRepresentation];
        v31 = [v61 stringByDeletingPathExtension];
        v32 = v31;
        v33 = [v31 fileSystemRepresentation];
        rename(v30, v33, v34);
        v64 = v35 == 0;
      }

      else
      {
        v64 = 1;
      }

      v36 = +[MailAccount log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v68 ef_publicDescription];
        *buf = 138543618;
        v77 = v37;
        v78 = 1024;
        LODWORD(v79) = v64;
        _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_DEFAULT, "Renaming file that requires two renames at new path for mailbox %{public}@ result %d", buf, 0x12u);
      }

      v65 = v28;
    }
  }

  else
  {
LABEL_20:
    v64 = 0;
  }

  [(MailAccount *)self mf_unlock];
  if (v64)
  {
    v38 = 0;
  }

  else
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = MFLookupLocalizedString(@"RENAME_FAILED", @"Mail was unable to rename “%@”.", @"Delayed");
    v41 = [v65 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
    v42 = [v39 stringWithFormat:v40, v41];
    v38 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v42];
  }

  v43 = [v38 localizedDescription];

  if (v43)
  {
    v44 = +[MFActivityMonitor currentMonitor];
    [v44 setError:v38];
  }

  if ((([v70 isEqual:v63] | v64 ^ 1) & 1) == 0 && objc_msgSend(objc_opt_class(), "mailboxListingNotificationsAreEnabled"))
  {
    v45 = [MEMORY[0x1E696AD88] defaultCenter];
    v46 = [MEMORY[0x1E696AD80] notificationWithName:@"AccountMailboxListingDidChange" object:v63 userInfo:0];
    [v45 postNotification:v46];

    v47 = +[MailAccount log];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [v68 ef_publicDescription];
      *buf = 138543362;
      v77 = v48;
      _os_log_impl(&dword_1B0389000, v47, OS_LOG_TYPE_DEFAULT, "Successfully renamed mailbox %{public}@", buf, 0xCu);
    }
  }

  if (v70 && -[MailAccount cacheHasBeenRead](self, "cacheHasBeenRead") && [objc_opt_class() mailboxListingNotificationsAreEnabled])
  {
    v49 = [MEMORY[0x1E696AD88] defaultCenter];
    v50 = [MEMORY[0x1E696AD80] notificationWithName:@"AccountMailboxListingDidChange" object:v70 userInfo:0];
    [v49 postNotification:v50];
  }

  if (!v38)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v51 = v67;
    v52 = [v51 countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v52)
    {
      v53 = *v72;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v72 != v53)
          {
            objc_enumerationMutation(v51);
          }

          v55 = *(*(&v71 + 1) + 8 * i);
          v56 = [MEMORY[0x1E696AD88] defaultCenter];
          [v56 postNotificationName:@"MFMailboxUidWasRenamedNotification" object:v55 userInfo:0];
        }

        v52 = [v51 countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v52);
    }
  }

  [(MailAccount *)self _synchronouslyLoadListingForParent:v70];
  if (([v70 isEqual:v63] & 1) == 0)
  {
    [(MailAccount *)self _synchronouslyLoadListingForParent:v63];
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  clearMailboxUIDCache();

  v57 = *MEMORY[0x1E69E9840];
  return v64;
}

- (void)_resetAllMailboxURLs:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  if ([(MailAccount *)self isActive])
  {
    v5 = +[MailAccount mailAccounts];
    v21 = v5;
    v6 = v5;
    if (v5)
    {
      v7 = [v5 containsObject:self];
      v6 = v21;
      if (v7)
      {
        v8 = [(MailAccount *)self allMailboxUids];
        v9 = [v8 count];
        v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
        v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = v8;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          v14 = *v23;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v22 + 1) + 8 * i);
              v17 = [v16 URLString];
              if (v17)
              {
                [v16 flushCriteria];
                v18 = [v16 URLString];
                if (v18 && ([v17 isEqualToString:v18] & 1) == 0)
                {
                  [v10 addObject:v17];
                  [v11 addObject:v18];
                }
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v13);
        }

        if ([v11 count] && v3)
        {
          v19 = [(MailAccount *)self library];
          [v19 renameMailboxes:v10 to:v11];
        }

        clearMailboxUIDCache();

        v6 = v21;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setUsername:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self username];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F273A5E0;
  }

  v9.receiver = self;
  v9.super_class = MailAccount;
  [(MFAccount *)&v9 setUsername:v4];
  v7 = [(MFAccount *)self username];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F273A5E0;
  }

  if (([(__CFString *)v8 isEqualToString:v6]& 1) == 0)
  {
    [(MailAccount *)self _resetAllMailboxURLs:0];
  }
}

- (void)setHostname:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self hostname];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F273A5E0;
  }

  v9.receiver = self;
  v9.super_class = MailAccount;
  [(MFAccount *)&v9 setHostname:v4];
  v7 = [(MFAccount *)self hostname];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F273A5E0;
  }

  if (([(__CFString *)v8 isEqualToString:v6]& 1) == 0)
  {
    [(MailAccount *)self _resetAllMailboxURLs:0];
  }
}

- (BOOL)isHostnameEquivalentTo:(id)a3
{
  v4 = a3;
  v5 = [(MFAccount *)self hostname];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(MFAccount *)self hostname];
    v7 = [v6 isEqualToString:v4];
  }

  return v7;
}

- (BOOL)isAccountClassEquivalentTo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (v5 == v3)
  {
    v8 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 isEqualToString:v3];
  }

  return v8;
}

- (void)setValueInAccountProperties:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqual:@"Hostname"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"Username") & 1) != 0 || objc_msgSend(v7, "isEqual:", @"PortNumber"))
  {
    v8 = [(MailAccount *)self allMailboxUids];
    [v8 makeObjectsPerformSelector:sel_URLString];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = self;
  v10.super_class = MailAccount;
  [(MFAccount *)&v10 setValueInAccountProperties:v6 forKey:v7];
  if (v9)
  {
    [(MailAccount *)self _resetAllMailboxURLs:1];
  }
}

- (void)setConnectionError:(id)a3
{
  v5 = a3;
  [(MailAccount *)self mf_lock];
  objc_storeStrong(&self->_lastConnectionError, a3);
  [(MailAccount *)self mf_unlock];
}

- (id)connectionError
{
  [(MailAccount *)self mf_lock];
  v3 = self->_lastConnectionError;
  [(MailAccount *)self mf_unlock];

  return v3;
}

- (id)storeForMailboxUid:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_rootMailboxUid == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MFWeakObjectCache *)self->_messageStoresCache objectForKey:v4];
  }

  return v6;
}

- (Class)storeClassForMailbox:(id)a3
{
  v3 = [(MailAccount *)self storeClass];

  return v3;
}

- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 childWithName:v6];
  if (!v7)
  {
    v7 = [v5 childWithExtraAttribute:v6];
  }

  return v7;
}

- (id)mailboxUidForRelativePath:(id)a3 create:(BOOL)a4 withOption:(int64_t)a5
{
  v5 = a4;
  v34[1] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v33 = [v29 pathComponents];
  v7 = [v33 count];
  v8 = [(MailAccount *)self rootMailbox];
  [(MailAccount *)self mf_lock];
  v32 = 0;
  if (v8 && v7)
  {
    v32 = 0;
    v9 = 0;
    v30 = 0;
    v10 = 1;
    do
    {
      v11 = [v33 objectAtIndex:v10 - 1];
      if (v7 == v10)
      {
        v12 = [(MailAccount *)self mailboxPathExtension];
        v13 = [v11 hasSuffix:v12];

        if (v13)
        {
          v14 = [v11 stringByDeletingPathExtension];

          v11 = v14;
        }
      }

      v15 = [(MailAccount *)self _uidNameForPathComponent:v11];
      v16 = [(MailAccount *)self _childOfMailbox:v8 withComponentName:v15];

      if (!v16 && v5)
      {
        [(MailAccount *)self mf_unlock];
        if (v7 == v10)
        {
          v17 = 257;
        }

        else
        {
          v17 = 258;
        }

        v18 = [(MailAccount *)self _newMailboxWithParent:v8 name:v15 attributes:v17 dictionary:0 withCreationOption:a5];
        [(MailAccount *)self mf_lock];
        v19 = [(MailAccount *)self _childOfMailbox:v8 withComponentName:v15];
        v16 = v19;
        if (v18 && !v19)
        {
          if (v32)
          {
            v34[0] = v18;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
            [v8 setChildren:v20];
          }

          else
          {
            v32 = v8;
            v21 = [v32 mutableCopyOfChildren];

            v22 = v21;
            if (!v21)
            {
              v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v30 = v22;
            [v22 addObject:v18];
          }

          v23 = v18;
          [(MailAccount *)self _incrementCacheDirtyCount];
          v16 = v23;
        }
      }

      v9 = v16;

      if (!v9)
      {
        break;
      }

      v8 = v9;
    }

    while (v10++ < v7);
    if (v9 && v32)
    {
      [(MailAccount *)self mf_unlock];
      [(MailAccount *)self _setChildren:v30 forMailboxUid:v32];
      v25 = v9;
      [(MailAccount *)self mf_lock];
    }

    else
    {
      v25 = v9;
    }
  }

  else
  {
    v25 = 0;
    v9 = v8;
    v30 = 0;
  }

  [(MailAccount *)self mf_unlock];
  v26 = v9;

  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (MailAccount)accountWithURL:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = v4;
  v5 = [v4 scheme];
  if (v5)
  {
    v6 = [v4 ef_hostNilForEmpty];
    v7 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = [a1 mailAccounts];
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          if ([v12 isActive])
          {
            [v7 insertObject:v12 atIndex:0];
          }

          else
          {
            [v7 addObject:v12];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v14)
    {
      v15 = *v29;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v28 + 1) + 8 * j);
          v18 = [v17 _URLScheme];
          v19 = v18;
          if (v18)
          {
            v20 = [v18 caseInsensitiveCompare:v5] == 0;

            if (v20)
            {
              v21 = [v17 uniqueID];
              v22 = v21;
              if (v6 == v21)
              {

LABEL_29:
                v24 = v17;
                goto LABEL_30;
              }

              if (v6)
              {
                v23 = [v6 caseInsensitiveCompare:v21] == 0;

                if (v23)
                {
                  goto LABEL_29;
                }
              }

              else
              {
              }
            }
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0;
LABEL_30:
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)infoForURL:(id)a3
{
  v4 = a3;
  v5 = [a1 accountWithURL:v4];
  v6 = [v5 _infoForMatchingURL:v4];

  return v6;
}

+ (id)accountIDFromMailboxURLString:(id)a3 urlScheme:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithString:v5];
    v8 = v7;
    if (v7 && (!v6 || ([v7 scheme], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v6), v9, (v10 & 1) != 0)))
    {
      v11 = [v8 host];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)URLForInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"Account"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _URLForInfo:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)URL
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"Account";
  v7[1] = @"RelativePath";
  v8[0] = self;
  v8[1] = &stru_1F273A5E0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = [(MailAccount *)self _URLForInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (MailAccount)accountWithURLString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v4];
    v6 = [a1 accountWithURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mailboxUidForInfo:(id)a3
{
  v4 = [a3 objectForKey:@"RelativePath"];
  v5 = [(MailAccount *)self mailboxUidForRelativePath:v4 create:0];

  return v5;
}

+ (id)mailboxUidFromActiveAccountsForURL:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = cachedMailboxUIDs();
    v5 = [v4 objectForKey:v3];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFF8] URLWithString:v3];
      v11 = [MailAccount infoForURL:v10];

      v12 = [v11 objectForKeyedSubscript:@"Account"];
      v13 = [v12 mailboxUidForInfo:v11];
      if (v13)
      {
        v14 = +[MailAccount log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(MailAccount *)v3 mailboxUidFromActiveAccountsForURL:v14];
        }

        v15 = cachedMailboxUIDs();
        v16 = [v3 copy];
        [v15 setObject:v13 forKey:v16];
      }

      v6 = v13;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E699B780] sharedReporter];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 reportIssueType:v9 description:@"Account URL is nil"];

    v6 = 0;
  }

  return v6;
}

- (id)mailboxUidForURL:(id)a3
{
  v4 = a3;
  if ([(MailAccount *)self ownsMailboxUidWithURL:v4])
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    v6 = [(MailAccount *)self _infoForMatchingURL:v5];
    v7 = [(MailAccount *)self mailboxUidForInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)ownsMailboxUidWithURL:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self URLString];
  v6 = [v4 hasPrefix:v5];

  return v6;
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

- (void)updateEmailAliasesIfNeeded
{
  v2 = +[MailAccount log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [MailAccount updateEmailAliasesIfNeeded];
  }
}

+ (void)updateEmailAliasesForActiveAccounts
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = +[MailAccount activeAccounts];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v5++) updateEmailAliasesIfNeeded];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)standardAccountClass:(Class)a3 valueForKey:(id)a4
{
  v6 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MailAccount_standardAccountClass_valueForKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (standardAccountClass_valueForKey__onceToken != -1)
  {
    dispatch_once(&standardAccountClass_valueForKey__onceToken, block);
  }

  v7 = standardAccountClass_valueForKey__sStandardAccountValues;
  v8 = NSStringFromClass(a3);
  v9 = [v7 objectForKey:v8];

  v10 = [v9 objectForKey:v6];

  return v10;
}

void __48__MailAccount_standardAccountClass_valueForKey___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];
  v1 = [v5 pathForResource:@"ISP" ofType:@"plist"];
  v2 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v1];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:0];
    v4 = standardAccountClass_valueForKey__sStandardAccountValues;
    standardAccountClass_valueForKey__sStandardAccountValues = v3;
  }
}

+ (id)predefinedValueForKey:(id)a3
{
  v3 = [a1 standardAccountClass:a1 valueForKey:a3];

  return v3;
}

- (void)setLibrary:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MFLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412546;
        v9 = self;
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "#Warning %@: Cannot set library to %@. See rdar://problem/42167098.", &v8, 0x16u);
      }

      v4 = 0;
    }
  }

  library = self->_library;
  self->_library = v4;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)displayNameUsingSpecialNamesForMailboxUid:(id)a3
{
  v3 = a3;
  if ([v3 isSendLaterMailbox])
  {
    v4 = [objc_opt_class() sendLaterDisplayName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)loggingIdentifier
{
  v3 = [(MailAccount *)self statisticsKind];
  v4 = [(MFAccount *)self uniqueID];
  v5 = [v4 substringToIndex:8];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v3, v5];

  return v6;
}

- (void)newActionsAdded
{
  v3 = [(MailAccount *)self taskManager];
  v5 = v3;
  if (v3)
  {
    [v3 checkForNewLocalActions];
  }

  else
  {
    v4 = [(MailAccount *)self replayHandler];
    [v4 newActionsAdded];
  }
}

- (void)addNewAction:(id)a3
{
  v5 = a3;
  v4 = [(MailAccount *)self replayHandler];
  [v4 addNewAction:v5];
}

- (BOOL)hasEnoughInformationForEasySetup
{
  v3 = [(MFAccount *)self hostname];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MFAccount *)self username];
  v6 = [v5 length];

  if (!v6)
  {
    return 0;
  }

  v7 = [(MFAccount *)self password];
  v8 = [v7 length] != 0;

  return v8;
}

- (BOOL)willPerformActionForChokePoint:(id)a3 coalescePoint:(id)a4 result:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v30 = a4;
  v31 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v8];
  v29 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v30];
  v9 = MFAutoFetchLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(MFAccount *)self ef_publicDescription];
    *buf = 138412802;
    v33 = v10;
    v34 = 2112;
    v35 = v31;
    v36 = 2112;
    v37 = v29;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "Account: %@ willPerformActionForChokePoint: %@ - coalescePoint: %@", buf, 0x20u);
  }

  [(MailAccount *)self mf_lock];
  currentChokedActions = self->_currentChokedActions;
  if (!currentChokedActions)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = self->_currentChokedActions;
    self->_currentChokedActions = v12;

    currentChokedActions = self->_currentChokedActions;
  }

  v14 = [(NSMutableDictionary *)currentChokedActions mf_objectForKey:v8 ofClass:objc_opt_class()];
  v15 = [v14 objectForKey:@"MFMailboxDictClientCount"];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
  [v14 setObject:v16 forKey:@"MFMailboxDictClientCount"];
  v17 = MFAutoFetchLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v16;
    _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Clients for choke point - %@", buf, 0xCu);
  }

  v18 = [v14 objectForKey:@"MFMailboxDictLock"];
  v19 = v18;
  if (!v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithName:@"ChokeLock" condition:1 andDelegate:0];
    [v14 setObject:v19 forKey:@"MFMailboxDictLock"];
  }

  [(MailAccount *)self mf_unlock];
  if (v18)
  {
    v20 = MFAutoFetchLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v31;
      _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "Waiting for existing fetch to finish for choke point: %@", buf, 0xCu);
    }

    [v19 lockWhenCondition:2];
    *a5 = [v14 objectForKeyedSubscript:v30];
    v21 = MFAutoFetchLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a5;
      *buf = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = v31;
      _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Result: %@ returned for chokepoint: %@", buf, 0x16u);
    }

    [(MailAccount *)self mf_lock];
    v23 = [v14 objectForKey:@"MFMailboxDictClientCount"];

    v15 = v23;
    v24 = [v23 intValue];
    if (v24 < 2)
    {
      v26 = MFAutoFetchLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v31;
        _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "Removing choke point from current actions: %@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:v8];
    }

    else
    {
      v25 = [MEMORY[0x1E696AD98] numberWithInt:(v24 - 1)];
      [v14 setObject:v25 forKey:@"MFMailboxDictClientCount"];
    }

    [(MailAccount *)self mf_unlock];
    [v19 unlockWithCondition:2];
  }

  else
  {
    [v19 lock];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v18 != 0;
}

- (void)didFinishActionForChokePoint:(id)a3 coalescePoint:(id)a4 withResult:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v8];
  v22 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v9];
  v11 = MFAutoFetchLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(MFAccount *)self ef_publicDescription];
    *buf = 138413058;
    v26 = v12;
    v27 = 2112;
    v28 = v24;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Account: %@ didFinishActionForChokePoint: %@ - coalescePoint: %@ - result: %@", buf, 0x2Au);
  }

  [(MailAccount *)self mf_lock];
  v13 = [(NSMutableDictionary *)self->_currentChokedActions objectForKey:v8];
  v14 = [v13 objectForKey:@"MFMailboxDictLock"];
  v15 = [v13 objectForKey:@"MFMailboxDictClientCount"];
  v16 = [v15 intValue];
  if (v16 < 2)
  {
    [v14 unlock];
    v19 = MFAutoFetchLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v24;
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "Removing choke point from current actions: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:v8];
  }

  else
  {
    if (!v10)
    {
      v21 = MFLogGeneral();
      [MailAccount didFinishActionForChokePoint:v21 coalescePoint:&self->_currentChokedActions withResult:v13];

      __assert_rtn("[MailAccount didFinishActionForChokePoint:coalescePoint:withResult:]", "MailAccount.m", 2989, "0");
    }

    v17 = MFAutoFetchLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v24;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Updating result for for choke point: %@ - result: %@", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E696AD98] numberWithInt:(v16 - 1)];
    [v13 setObject:v18 forKey:@"MFMailboxDictClientCount"];

    [v13 setObject:v10 forKey:v9];
    [v14 unlockWithCondition:2];
  }

  [(MailAccount *)self mf_unlock];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)deliveryAccountWillBeRemoved:(id)a3
{
  v6 = a3;
  v4 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  v5 = [v6 object];

  if (v4 == v5)
  {
    [(MailAccount *)self setDeliveryAccount:0];
  }
}

- (id)pushedMailboxUids
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(MailAccount *)self primaryMailboxUid];
  v4 = [v2 setWithObject:v3];

  return v4;
}

+ (id)_accountWithPath:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 mailboxUidForFileSystemPath:v4 create:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 account];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = _accountsSortedByPath;
    v7 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 path];
          v13 = [v4 isEqualToString:v12];

          if (v13)
          {
            v7 = v11;
            goto LABEL_13;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)_setPath:(id)a3
{
  v4 = a3;
  if (v4 && ![(NSString *)self->_path isEqualToString:v4])
  {
    v6 = [v4 copy];
    path = self->_path;
    self->_path = v6;

    +[MailAccount lockMailAccount];
    v8 = _accountsSortedByPath;
    if (!_accountsSortedByPath || (v10.length = CFArrayGetCount(_accountsSortedByPath), v10.location = 0, CFArrayGetFirstIndexOfValue(v8, v10, self) != -1))
    {
      [objc_opt_class() _removeAccountFromSortedPaths:self];
      [objc_opt_class() _addAccountToSortedPaths:self];
    }

    +[MailAccount unlockMailAccount];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didBecomeActive:(BOOL)a3
{
  v3 = a3;
  if (!+[MFMailMessageLibrary canUsePersistence])
  {
    v7 = 0;
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    _configureMailboxCache(self);
    [(MailAccount *)self resetSpecialMailboxes];
    [v7 accountBecameActive:self];
    goto LABEL_6;
  }

  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 persistence];
  v7 = [v6 hookRegistry];

  if (v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = mailAccountQueue();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__MailAccount__didBecomeActive___block_invoke;
  v9[3] = &unk_1E7AA26E0;
  v9[4] = self;
  v10 = v7;
  dispatch_async(v8, v9);

LABEL_6:
}

uint64_t __32__MailAccount__didBecomeActive___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateAndDeleteAccountData:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 accountBecameInactive:v3];
}

- (int)_emptyFrequencyForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a4;
  v7 = [(MFAccount *)self _objectForAccountInfoKey:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = [v7 isEqualToString:&stru_1F273A5E0], v9 = v7, v10))
    {
      v9 = v6;
    }
  }

  v11 = [v9 intValue];

  return v11;
}

- (BOOL)shouldFetchAgainWithError:(id)a3 foregroundRequest:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 domain];
  v7 = v6;
  if (!v5)
  {
    goto LABEL_11;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E696A8B8]])
  {
    a4 = 0;
    goto LABEL_12;
  }

  if (![v7 isEqualToString:*MEMORY[0x1E696A798]])
  {
    if ([v7 isEqualToString:@"MFMessageErrorDomain"])
    {
      v8 = [v5 code];
      if ((v8 - 1032) <= 0x1C)
      {
        a4 = 0xE7FFF7Eu >> (v8 - 8);
      }

      else
      {
        a4 = 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    a4 = 1;
    goto LABEL_12;
  }

  if ([v5 code] != 60)
  {
    a4 = 1;
  }

LABEL_12:

  return a4;
}

- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (v13)
  {
    if (!v14)
    {
      v17 = [(MailAccount *)self _copyMailboxWithParent:v12 name:v13 attributes:a5 dictionary:v15];
      goto LABEL_8;
    }

    [v14 setAttributes:{objc_msgSend(v14, "attributes") & 0xFFFFFE00 | a5 & 0x1FF}];
LABEL_6:
    v17 = v14;
LABEL_8:
    v16 = v17;
    goto LABEL_9;
  }

  if (([v14 attributes] & 0x100) != 0)
  {
    goto LABEL_6;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (BOOL)_loadMailboxListingIntoCache:(id)a3 attributes:(unsigned int)a4 children:(id)a5 parent:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v46 = a3;
  v47 = a5;
  v48 = a6;
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"AccountMailboxListingWillLoad" object:0 userInfo:0];

  Mutable = 0;
  v49 = 0;
  v10 = 0;
  v50 = 0;
  do
  {
    ValueAtIndex = v47;
    theArray = v10;
    if (v10)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
    }

    v57 = ValueAtIndex;
    v12 = v48;
    if (v49)
    {
      v12 = CFArrayGetValueAtIndex(v49, 0);
    }

    v53 = v12;
    v54 = [v53 mutableCopyOfChildren];
    v13 = [v57 count];
    if (theArray)
    {
      CFArrayRemoveValueAtIndex(theArray, 0);
    }

    if (v49)
    {
      CFArrayRemoveValueAtIndex(v49, 0);
    }

    v55 = objc_opt_new();
    v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = [v57 objectAtIndex:i];
        v16 = [v15 objectForKey:@"MailboxName"];
        [v56 setObject:v15 forKey:v16];
      }
    }

    v17 = [v54 count];
    if (v17)
    {
      v18 = v17 - 1;
      do
      {
        v19 = [v54 objectAtIndex:v18];
        v20 = [v19 name];
        v21 = [v56 objectForKey:v20];
        if ([v55 containsObject:v20])
        {
          v22 = +[MailAccount log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v20];
            *buf = 138543362;
            v59 = v23;
            _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Removing duplicate mailbox %{public}@", buf, 0xCu);
          }

          v24 = 0;
        }

        else
        {
          if (v21)
          {
            v25 = [v21 objectForKey:@"MailboxAttributes"];
            v26 = [v25 unsignedIntValue];

            v27 = [(MailAccount *)self _copyMailboxUidWithParent:v53 name:v20 attributes:v26 existingMailboxUid:v19 dictionary:v21];
          }

          else
          {
            v27 = [(MailAccount *)self _copyMailboxUidWithParent:v53 name:0 attributes:0 existingMailboxUid:v19 dictionary:0];
          }

          v24 = v27;
        }

        [v55 addObject:v20];
        if (v24)
        {
          v28 = [v24 name];
          if (([v24 isEqual:v19] & 1) == 0)
          {
            [v54 replaceObjectAtIndex:v18 withObject:v24];
            v50 = 1;
          }

          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
          }

          CFDictionarySetValue(Mutable, v28, v24);
          if (([v28 isEqualToString:v20] & 1) == 0)
          {
            CFDictionarySetValue(Mutable, v20, v24);
          }

          v29 = v21 == 0;
        }

        else
        {
          [v54 removeObjectAtIndex:v18];
          if (v21)
          {
            v29 = -1;
          }

          else
          {
            v29 = 0;
          }

          v50 = 1;
        }

        v13 += v29;
        --v18;
      }

      while (v18 != -1);
    }

    v30 = [v57 count];
    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
    v32 = v31;
    if (v54)
    {
      [v31 addObjectsFromArray:v54];
    }

    if (v30)
    {
      for (j = 0; v30 != j; ++j)
      {
        v34 = [v57 objectAtIndex:j];
        v35 = [v34 objectForKey:@"MailboxName"];
        v36 = [v34 objectForKey:@"MailboxAttributes"];
        v37 = [v36 unsignedIntValue];

        v38 = [v34 objectForKey:@"MailboxChildren"];
        if (Mutable && (v39 = CFDictionaryGetValue(Mutable, v35)) != 0 || (v39 = [(MailAccount *)self _copyMailboxUidWithParent:v53 name:v35 attributes:v37 existingMailboxUid:0 dictionary:v34]) != 0)
        {
          if ([v32 indexOfObjectIdenticalTo:v39] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v50 = 1;
            [v32 ef_insertObject:v39 usingSortFunction:_MFCompareMailboxUids context:0 allowDuplicates:1];
          }

          if (v38)
          {
            if ((v37 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v40 = [v39 hasChildren];
            if (v37)
            {
              v41 = 0;
            }

            else
            {
              v41 = v40;
            }

            if (v41)
            {
LABEL_52:
              if (!theArray)
              {
                theArray = CFArrayCreateMutable(0, 0, 0);
              }

              if (!v49)
              {
                v49 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              }

              CFArrayAppendValue(theArray, v38);
              CFArrayAppendValue(v49, v39);
            }
          }
        }
      }
    }

    if (Mutable)
    {
      CFDictionaryRemoveAllValues(Mutable);
    }

    v50 |= [(MailAccount *)self _cleanInboxDuplication:v32];
    if (v50)
    {
      [(MailAccount *)self _setChildren:v32 forMailboxUid:v53];
    }

    if (!theArray)
    {
      break;
    }

    Count = CFArrayGetCount(theArray);
    v10 = theArray;
  }

  while (Count > 0);
  v43 = [MEMORY[0x1E696AD88] defaultCenter];
  [v43 postNotificationName:@"AccountMailboxListingDidLoad" object:0 userInfo:0];

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v50 & 1;
}

- (void)setMailboxCachePath:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  mailboxCachePath = self->_mailboxCachePath;
  self->_mailboxCachePath = v4;
}

- (void)_loadEntriesFromFileSystemPath:(id)a3 parent:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27 = a4;
  v25 = objc_autoreleasePoolPush();
  v6 = [v5 length];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v26 = [v7 contentsOfDirectoryAtPath:v5 error:0];

  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  context[0] = self;
  context[1] = v5;
  context[2] = v27;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v26;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        if (([v11 hasPrefix:@"."] & 1) == 0)
        {
          v31 = -86;
          [v5 appendString:@"/"];
          [v5 appendString:v11];
          v12 = [MEMORY[0x1E696AC08] defaultManager];
          v13 = [v12 fileExistsAtPath:v5 isDirectory:&v31];
          v14 = v31;

          if ((v13 & v14) != 0)
          {
            v15 = [(MailAccount *)self mailboxPathExtension];
            v16 = [v11 pathExtension];
            v17 = [v15 isEqualToString:v16];

            if (v17)
            {
              v18 = [v11 stringByDeletingPathExtension];
            }

            else
            {
              v18 = v11;
            }

            v19 = v18;
            v20 = [(MailAccount *)self _uidNameForPathComponent:v18];

            v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v20, @"MailboxName", &unk_1F2775838, @"MailboxAttributes", 0}];
            [(__CFArray *)theArray addObject:v21];
          }

          [v5 deleteCharactersInRange:{v6, objc_msgSend(v5, "length") - v6}];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  v22 = [v27 name];
  v23 = [(MailAccount *)self _loadMailboxListingIntoCache:v22 attributes:2 children:theArray parent:v27];

  if (v23)
  {
    [(MailAccount *)self _incrementCacheDirtyCount];
  }

  v39.length = [(__CFArray *)theArray count];
  v39.location = 0;
  CFArrayApplyFunction(theArray, v39, _recurseIntoFileSystem, context);

  objc_autoreleasePoolPop(v25);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_writeMailboxCacheWithPrejudice:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagsLock);
  v8 = +[MFMailMessageLibrary canUsePersistence];
  v9 = (*&flags >> 17) & 1;
  if ((*&flags & 0xFFFEu) <= 9)
  {
    v9 = 0;
  }

  if (v8 & (v4 | v9))
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [(MailAccount *)self path];
    v12 = [v10 fileExistsAtPath:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [(MailAccount *)self path];
      [v13 mf_makeDirectoryWithMode:448];
    }

    v14 = [(MailAccount *)self mailboxCachePath];
    [(MailAccount *)self mf_lock];
    v29 = v14;
    v15 = [(MFMailboxUid *)self->_rootMailboxUid children];
    v16 = [v15 count];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = v15;
      v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v19)
      {
        v20 = *v37;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
            [v17 addObject:v22];
          }

          v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v19);
      }

      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      CFDictionarySetValue(v23, @"mboxes", v17);
      v24 = [(MailAccount *)self _writeCustomInfoToMailboxCache:v23];
      if (v24)
      {
        v25 = +[MFMailboxPersistence_iOS mailboxCacheQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__MailAccount__writeMailboxCacheWithPrejudice_completionHandler___block_invoke;
        block[3] = &unk_1E7AA32B8;
        v31 = v23;
        v35 = v16;
        v32 = v29;
        v33 = self;
        v34 = v6;
        dispatch_async(v25, block);
      }

      else
      {
        v27 = MFLogGeneral();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [MailAccount _writeMailboxCacheWithPrejudice:completionHandler:];
        }

        if (v6)
        {
          v6[2](v6);
        }
      }
    }

    else
    {
      if (v6)
      {
        v6[2](v6);
      }

      v24 = 1;
    }

    v26 = v29;
    [(MailAccount *)self mf_unlock];
    if (v24)
    {
      os_unfair_lock_lock(&self->_flagsLock);
      self->_flags = (*(&self->_flags + 1) << 16);
      os_unfair_lock_unlock(&self->_flagsLock);
    }

    else
    {
      [(MailAccount *)self _repairMailboxCache];
    }
  }

  else
  {
    if (v6)
    {
      v6[2](v6);
    }

    v26 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __65__MailAccount__writeMailboxCacheWithPrejudice_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE40] dataWithPropertyList:*(a1 + 32) format:200 options:0 error:0];
  [v2 writeToFile:*(a1 + 40) options:1073741825 error:0];
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 64);
    v5 = [*(a1 + 48) ef_publicDescription];
    v8 = 134218242;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Finished writing to disk mailbox cache mailboxes.count:%lu self:%{public}@", &v8, 0x16u);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v6 = a3;
  v7 = v6;
  v8 = a4;
  v9 = [v8 mutableCopyOfChildren];
  v10 = v9;
  if (!v6)
  {
    v7 = v9;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v11 = [v8 setChildren:v7] ^ 1;
  if (!v6)
  {
    LOBYTE(v11) = 0;
  }

  if (v11)
  {
    v16 = 0;
  }

  else
  {
LABEL_14:
    if (-[MailAccount cacheHasBeenRead](self, "cacheHasBeenRead") && [objc_opt_class() mailboxListingNotificationsAreEnabled])
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = MEMORY[0x1E696AD80];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"OldChildren", v7, @"NewChildren", 0}];
      v15 = [v13 notificationWithName:@"AccountMailboxListingDidChange" object:v8 userInfo:v14];
      [v12 postNotification:v15];
    }

    v16 = 1;
  }

  return v16;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = MailAccount;
  v3 = [(MFAccount *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" path=%@", self->_path];

  return v4;
}

- (id)powerAssertionIdentifierWithPrefix:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self displayName];
  if ([v5 length])
  {
    v6 = [(MailAccount *)self displayName];
  }

  else
  {
    v6 = &stru_1F273A5E0;
  }

  v7 = [(MFAccount *)self uniqueID];
  v8 = [v4 stringByAppendingFormat:@"-%@-(%@)", v7, v6];

  return v8;
}

+ (void)_setOutboxMailboxUid:(id)a3
{
  v8 = a3;
  [a1 mf_lock];
  v5 = v8;
  if (_outboxUid != v8)
  {
    objc_storeStrong(&_outboxUid, a3);
    [_outboxUid setMailboxType:6];
    v5 = v8;
  }

  if ([v5 isValid])
  {
    v6 = [v8 account];
    v7 = [v8 parent];
    [v6 _setChildren:0 forMailboxUid:v7];
  }

  [a1 mf_unlock];
}

- (id)_defaultSpecialMailboxNameForType:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7AA3300[a3 - 1];
  }
}

- (id)_cachedSpecialMailboxOfType:(int64_t)a3
{
  [(MFLock *)self->_cachedMailboxenLock lock];
  v5 = a3 - 1;
  if (a3 - 1) <= 6 && ((0x5Fu >> v5))
  {
    v6 = *(&self->super.super.isa + *off_1E7AA3338[v5]);
  }

  else
  {
    v6 = 0;
  }

  [(MFLock *)self->_cachedMailboxenLock unlock];

  return v6;
}

- (BOOL)_assignSpecialMailboxToAppropriateIvar:(id)a3 forType:(int64_t)a4
{
  v7 = a3;
  [(MFLock *)self->_cachedMailboxenLock lock];
  v8 = a4 - 1;
  if ((a4 - 1) >= 7 || ((0x5Fu >> v8) & 1) == 0)
  {
    v10 = 0;
    v15 = 0;
    v16 = 0;
    v13 = v7 != 0;
    goto LABEL_10;
  }

  v9 = *(&self->super.super.isa + *off_1E7AA3338[v8]);
  v10 = v9;
  if (v9 == v7)
  {
    v13 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  [v9 setMailboxType:0];
  [v10 setRepresentedAccount:0];
  [v7 setMailboxType:a4];
  v11 = [v10 parent];
  v12 = [v7 parent];
  v13 = 1;
  if (a4 > 3)
  {
    switch(a4)
    {
      case 4:
        v14 = 136;
        goto LABEL_26;
      case 5:
        v14 = 128;
        goto LABEL_26;
      case 7:
        v14 = 120;
        goto LABEL_26;
    }

LABEL_23:
    v15 = v11;
    v16 = v12;
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v14 = 160;
    goto LABEL_26;
  }

  if (a4 == 2)
  {
    v14 = 152;
    goto LABEL_26;
  }

  if (a4 != 3)
  {
    goto LABEL_23;
  }

  v14 = 144;
LABEL_26:
  v16 = v12;
  objc_storeStrong((&self->super.super.isa + v14), a3);
  v15 = v11;
LABEL_10:
  [(MFLock *)self->_cachedMailboxenLock unlock];
  if (v16)
  {
    v17 = [v16 account];
    [v17 _setChildren:0 forMailboxUid:v16];
  }

  if (v15 && v16 != v15)
  {
    v18 = [v15 account];
    [v18 _setChildren:0 forMailboxUid:v15];
  }

  return v13;
}

- (void)_setSpecialMailboxName:(id)a3 forType:(int64_t)a4
{
  v7 = a3;
  [(MailAccount *)self mf_lock];
  if ((a4 - 1) < 5)
  {
    v6 = off_1E7AA3370[a4 - 1];
    if (v7)
    {
      [(MFAccount *)self setAccountProperty:v7 forKey:v6];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:v6];
    }
  }

  [(MailAccount *)self mf_unlock];
}

- (void)_setSpecialMailbox:(id)a3 forType:(int64_t)a4
{
  v10 = a3;
  v6 = [v10 accountRelativePath];
  v7 = [(MailAccount *)self specialMailboxNameForType:a4];
  v8 = v7;
  if (v6 != v7)
  {
    v9 = v7 ? v7 : &stru_1F273A5E0;
    if (([(__CFString *)v6 isEqualToString:v9]& 1) == 0)
    {
      [(MailAccount *)self _setSpecialMailboxName:v6 forType:a4];
      [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:v10 forType:a4];
    }
  }
}

- (BOOL)_shouldLogDeleteActivity
{
  v2 = sLogDeleteActivity;
  if (sLogDeleteActivity == -1)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v3 BOOLForKey:@"LogDeleteActivity"];

    sLogDeleteActivity = v2;
  }

  return v2 == 1;
}

- (id)_infoForMatchingURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v4 relativePath];
  [v5 setObject:self forKey:@"Account"];
  v8 = [v6 rangeOfString:@"/" options:8];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 substringWithRange:{v8 + v7, objc_msgSend(v6, "length") - (v8 + v7)}];

    v6 = v9;
  }

  if (v6 && ([v6 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    [v5 setObject:v6 forKey:@"RelativePath"];
  }

  return v5;
}

- (id)_URLForInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v6 = [(MFAccount *)self uniqueID];
  [v5 setHost:v6];

  v7 = [(MailAccount *)self _URLScheme];
  [v5 setScheme:v7];

  v8 = [v4 objectForKey:@"RelativePath"];
  if (v8)
  {
    v9 = [@"/" stringByAppendingPathComponent:v8];
    [v5 setPath:v9];
  }

  v10 = [v5 URL];

  return v10;
}

- (id)uniqueServerIdForMessage:(id)a3
{
  v3 = [a3 globalMessageURL];
  v4 = [v3 absoluteString];

  return v4;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  v4 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
  if (v4)
  {
    if (v3)
    {
      [DeliveryAccount accountWithIdentifier:v4];
    }

    else
    {
      [DeliveryAccount existingAccountWithIdentifier:v4];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_copyMailboxWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 dictionary:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [MFMailboxUid alloc];
  v12 = [v10 objectForKeyedSubscript:@"MailboxExtraAttributes"];
  v13 = [(MFMailboxUid *)v11 initWithName:v9 attributes:a5 forAccount:self extraAttributes:v12];

  return v13;
}

- (id)newMailboxWithParent:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  v9 = [v8 rootMailbox];
  v10 = [v6 pathRelativeToMailbox:v9];

  v11 = [v10 stringByAppendingPathComponent:v7];
  v12 = [(MailAccount *)self mailboxUidForRelativePath:v11 create:1];

  return v12;
}

+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69ADFB8] sharedConnection];
  LOBYTE(a1) = [a1 canMoveMessagesFromAccount:v6 toAccount:v7 profileConnection:v8];

  return a1;
}

+ (BOOL)canMoveMessagesFromAccount:(id)a3 toAccount:(id)a4 profileConnection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 == v8)
  {
    goto LABEL_8;
  }

  if (([v7 restrictedFromTransferingMessagesToOtherAccounts] & 1) != 0 || !objc_msgSend(v8, "supportsAppend"))
  {
    v12 = 0;
    goto LABEL_9;
  }

  v10 = [v7 sourceIsManaged];
  if (v10 == [v8 sourceIsManaged])
  {
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  if ([v7 sourceIsManaged])
  {
    v11 = [v9 mayOpenFromManagedToUnmanaged];
  }

  else
  {
    v11 = [v9 mayOpenFromUnmanagedToManaged];
  }

  v12 = v11;
LABEL_9:

  return v12;
}

- (id)_localMailboxNameForType:(int64_t)a3 usingDisplayName:(id)a4
{
  v6 = a4;
  v7 = +[LocalAccount localAccount];
  v8 = [v7 specialMailboxNameForType:a3];
  if (v8)
  {
    if (!v6)
    {
LABEL_5:
      v9 = [(MailAccount *)self displayName];
      v6 = v9;
      if (!v9 || [v9 isEqualToString:&stru_1F273A5E0])
      {
        v10 = [(MailAccount *)self firstEmailAddress];

        v6 = v10;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v8 = [v7 _defaultSpecialMailboxNameForType:a3];
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  if (([v6 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    v11 = [v8 stringByAppendingFormat:@" (%@)", v6];

    v8 = v11;
  }

LABEL_10:

  return v8;
}

- (id)allLocalMailboxUids
{
  v3 = 0;
  v4 = 0;
  v12 = *MEMORY[0x1E69E9840];
  v9 = xmmword_1B0E975E0;
  v10 = xmmword_1B0E975F0;
  v11 = 1;
  do
  {
    v5 = *(&v9 + v3);
    if ([(MailAccount *)self isMailboxLocalForType:v5, v9, v10, v11, v12])
    {
      v6 = [(MailAccount *)self mailboxUidOfType:v5 createIfNeeded:0];
      if (v6)
      {
        if (!v4)
        {
          v4 = [MEMORY[0x1E695DF70] array];
        }

        [v4 addObject:v6];
      }
    }

    v3 += 8;
  }

  while (v3 != 40);
  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)_removeLookAsideValuesNotInAccountList:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MFUserAgent();
  v5 = [v4 isMaild];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] em_userDefaults];
    v7 = [v6 dictionaryForKey:@"com.apple.MailAccount-ExtProperties"];
    v8 = [v7 mutableCopy];

    v9 = [v8 allKeys];
    if ([v9 count])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v3;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v12)
      {
        v13 = *v20;
        do
        {
          v14 = 0;
          do
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = [*(*(&v19 + 1) + 8 * v14) identifier];
            [v10 addObject:v15];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v12);
      }

      v16 = [v9 mutableCopy];
      [v16 removeObjectsInArray:v10];
      [v8 removeObjectsForKeys:v16];
      v17 = MFLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "Removing lookaside properties for accounts with identifiers: %@", buf, 0xCu);
      }

      [v6 setObject:v8 forKey:@"com.apple.MailAccount-ExtProperties"];
      [v6 synchronize];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)valueInAccountLookAsidePropertiesForKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] em_userDefaults];
  v6 = [v5 dictionaryForKey:@"com.apple.MailAccount-ExtProperties"];

  v7 = [(MFAccount *)self identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v8 objectForKeyedSubscript:v4];

  return v9;
}

- (void)setValueInAccountLookAsideProperties:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695E000] em_userDefaults];
  v8 = [v7 dictionaryForKey:@"com.apple.MailAccount-ExtProperties"];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10 = [(MFAccount *)self identifier];
  v11 = [v9 objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:v10];
    v13 = [v12 mutableCopy];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (v14)
  {
    [v13 setObject:v14 forKey:v6];
  }

  else
  {
    [v13 removeObjectForKey:v6];
  }

  [v9 setObject:v13 forKeyedSubscript:v10];
  [v7 setObject:v9 forKey:@"com.apple.MailAccount-ExtProperties"];
  [v7 synchronize];
}

- (void)_setValueInAccountLookAsideProperties:(id)a3 forKey:(id)a4 subKey:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:v9];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MailAccount _setValueInAccountLookAsideProperties:forKey:subKey:]", "MailAccount.m", 4113, "[dictionary isKindOfClass:[NSDictionary class]]");
    }

    v12 = [v11 mutableCopy];
    v13 = v12;
    if (v8)
    {
      [v12 setObject:v8 forKey:v10];
    }

    else
    {
      [v12 removeObjectForKey:v10];
    }

    [(MailAccount *)self setValueInAccountLookAsideProperties:v13 forKey:v9];
  }

  else if (v8)
  {
    v16 = v10;
    v17[0] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [(MailAccount *)self setValueInAccountLookAsideProperties:v14 forKey:v9];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)signingIdentityPersistentReferenceForAddress:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"SendingIdentities"];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"EncryptionIdentities"];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (BOOL)perMessageEncryptionEnabledForAddress:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self encryptionIdentityPersistentReferenceForAddress:v4];

  if (v5)
  {
    if ([(MFAccount *)self isManaged])
    {
      v6 = [(MFAccount *)self accountPropertyForKey:@"PerMessageSMIMEEnabled"];
      LOBYTE(v5) = [v6 BOOLValue];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (int64_t)secureCompositionSigningPolicyForAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddressValue];
  v6 = [v5 simpleAddress];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 stringValue];
  }

  v9 = v8;

  v10 = [(MailAccount *)self firstEmailAddress];
  v11 = [v10 emailAddressValue];
  v12 = [v11 simpleAddress];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v10 stringValue];
  }

  v15 = v14;

  v16 = [v9 isEqualToString:v15];
  if (v16)
  {
    v17 = [(MFAccount *)self accountPropertyForKey:@"SMIMESigningEnabled"];
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (int64_t)secureCompositionEncryptionPolicyForAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddressValue];
  v6 = [v5 simpleAddress];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v4 stringValue];
  }

  v9 = v8;

  v10 = [(MailAccount *)self firstEmailAddress];
  v11 = [v10 emailAddressValue];
  v12 = [v11 simpleAddress];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v10 stringValue];
  }

  v15 = v14;

  v16 = [v9 isEqualToString:v15];
  if (v16)
  {
    v17 = [(MFAccount *)self accountPropertyForKey:@"SMIMEEncryptionEnabled"];
    v18 = [v17 BOOLValue];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)preventArchiveForMailbox:(id)a3
{
  v4 = a3;
  v5 = ![(MailAccount *)self supportsArchiving];
  if (!v4)
  {
    LOBYTE(v5) = 1;
  }

  v6 = (v5 & 1) == 0 && ([v4 mailboxType] - 1) < 5;

  return v6;
}

- (BOOL)canArchiveForMailbox:(id)a3
{
  v4 = a3;
  if ([(MailAccount *)self supportsArchiving])
  {
    v5 = ![(MailAccount *)self preventArchiveForMailbox:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int64_t)archiveDestinationForMailbox:(id)a3
{
  v4 = a3;
  if (![(MailAccount *)self supportsArchiving])
  {
    __assert_rtn("[MailAccount archiveDestinationForMailbox:]", "MailAccount.m", 4263, "[self supportsArchiving] && only accounts that support archiving should call into this");
  }

  if ([(MailAccount *)self canArchiveForMailbox:v4])
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (BOOL)supportsHandoffType:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self unsupportedHandoffTypes];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

- (BOOL)supportsMailDrop
{
  v3.receiver = self;
  v3.super_class = MailAccount;
  return [(MFAccount *)&v3 supportsMailDrop];
}

id __43__MailAccount__registerStateCaptureHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained debugAccountState];

  return v2;
}

- (id)debugAccountState
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [MFDebugAccountState alloc];
  v4 = [(MFAccount *)self identifier];
  v5 = [(MailAccount *)self lastKnownCapabilities];
  v6 = [(MFDebugAccountState *)v3 initWithStateEventDictionary:self identifier:v4 lastKnownCapabilities:v5];

  v11 = @"Account Info";
  v7 = [(MFDebugAccountState *)v6 dictionaryRepresentation];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)deleteMailbox:(void *)a3 reflectToServer:(os_log_t)log .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "No URL for mailbox %{public}@", buf, 0xCu);
}

+ (void)mailboxUidFromActiveAccountsForURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "Mailbox UID from account: cache miss. ('%@')", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)didFinishActionForChokePoint:(NSObject *)a1 coalescePoint:(uint64_t *)a2 withResult:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_DEFAULT, "#Warning <rdar://problem/17733540> _currentChokedActions: %@\nmailboxDict: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)shouldArchiveByDefault
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2 & 1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "%{public}@: shouldArchiveByDefault: Get BOOL for account info key: %{BOOL}d", buf, 0x12u);
}

@end