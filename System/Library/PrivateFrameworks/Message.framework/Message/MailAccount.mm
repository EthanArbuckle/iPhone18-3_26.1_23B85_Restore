@interface MailAccount
+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount;
+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount profileConnection:(id)connection;
+ (MailAccount)accountWithPath:(id)path;
+ (MailAccount)accountWithURL:(id)l;
+ (MailAccount)accountWithURLString:(id)string;
+ (MailAccount)accountWithUniqueId:(id)id;
+ (OS_os_log)log;
+ (id)URLForInfo:(id)info;
+ (id)_accountContainingEmailAddress:(id)address matchingAddress:(id *)matchingAddress fullUserName:(id *)name includingInactive:(BOOL)inactive;
+ (id)_accountWithPath:(id)path;
+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)restricted;
+ (id)_loadAllAccountsWithError:(id *)error;
+ (id)_loadDataAccessAccountsWithError:(id *)error;
+ (id)accountContainingEmailAddress:(id)address;
+ (id)accountIDFromMailboxURLString:(id)string urlScheme:(id)scheme;
+ (id)accountThatMessageIsFrom:(id)from;
+ (id)activeAccountEmailAddresses;
+ (id)activeAccountsWithError:(id *)error;
+ (id)activeNonLocalAccounts;
+ (id)addressesThatReceivedMessage:(id)message;
+ (id)allActivePrimaryMailboxUids;
+ (id)allMailboxUids;
+ (id)allMailboxUidsForAccounts:(id)accounts;
+ (id)allPurgeableMailboxUids;
+ (id)defaultAccountDirectory;
+ (id)defaultDeliveryAccount;
+ (id)existingAccountForUniqueID:(id)d;
+ (id)existingAccountWithType:(id)type hostname:(id)hostname username:(id)username;
+ (id)existingDAMailAccountForDAAccount:(id)account;
+ (id)infoForURL:(id)l;
+ (id)lastMailAccountsReloadDate;
+ (id)legacyPathForAccountIdentifier:(id)identifier withHostname:(id)hostname username:(id)username;
+ (id)legacyPathNameForAccountWithHostname:(id)hostname username:(id)username;
+ (id)mailAccountsWithError:(id *)error;
+ (id)mailboxUidFromActiveAccountsForURL:(id)l;
+ (id)newAccountWithDictionary:(id)dictionary;
+ (id)newAccountWithPath:(id)path;
+ (id)outboxMailboxUid;
+ (id)predefinedValueForKey:(id)key;
+ (id)purgeableAccounts;
+ (id)standardAccountClass:(Class)class valueForKey:(id)key;
+ (void)_addAccountToSortedPaths:(id)paths;
+ (void)_postMailboxListNotificationAfterBlock:(id)block;
+ (void)_removeAccountFromSortedPaths:(id)paths;
+ (void)_removeLookAsideValuesNotInAccountList:(id)list;
+ (void)_setMailAccounts:(id)accounts saveIfChanged:(BOOL)changed alreadyLocked:(BOOL)locked;
+ (void)_setOutboxMailboxUid:(id)uid;
+ (void)_setupSortedPathsForAccounts:(id)accounts;
+ (void)enableMailboxListingNotifications:(BOOL)notifications;
+ (void)initialize;
+ (void)notifyOfAccountsAdded:(id)added accountsRemoved:(id)removed changedAccounts:(id)accounts;
+ (void)performOnAccounts:(id)accounts accountBlock:(id)block;
+ (void)reloadAccounts;
+ (void)resetMailboxTimers;
+ (void)saveStateForAllAccounts;
+ (void)test_tearDown;
+ (void)updateEmailAliasesForActiveAccounts;
+ (void)updatePersonalStatusForAccounts:(id)accounts forceUpdate:(BOOL)update;
- (BOOL)_assignSpecialMailboxToAppropriateIvar:(id)ivar forType:(int64_t)type;
- (BOOL)_loadMailboxListingIntoCache:(id)cache attributes:(unsigned int)attributes children:(id)children parent:(id)parent;
- (BOOL)_renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (BOOL)_resetSpecialMailboxesCanPost:(BOOL)post;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)_setPath:(id)path;
- (BOOL)_shouldLogDeleteActivity;
- (BOOL)cacheHasBeenRead;
- (BOOL)canArchiveForMailbox:(id)mailbox;
- (BOOL)canMailboxBeRenamed:(id)renamed;
- (BOOL)canUseCarrierDeliveryFallback;
- (BOOL)canUseDeliveryAccount:(id)account;
- (BOOL)checkAndSetDefaultEmailAddress:(id)address;
- (BOOL)checkAndSetEmailAddresses:(id)addresses;
- (BOOL)checkAndSetReceiveEmailAliasAddresses:(id)addresses;
- (BOOL)containsMailboxWithURL:(id)l;
- (BOOL)deliveryAccountInUseByOtherAccounts:(id)accounts;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)isAccountClassEquivalentTo:(id)to;
- (BOOL)isActive;
- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username;
- (BOOL)isHostnameEquivalentTo:(id)to;
- (BOOL)isSpecialMailbox:(id)mailbox;
- (BOOL)isUsernameEquivalentTo:(id)to;
- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure;
- (BOOL)ownsMailboxUidWithURL:(id)l;
- (BOOL)perMessageEncryptionEnabledForAddress:(id)address;
- (BOOL)preventArchiveForMailbox:(id)mailbox;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name;
- (BOOL)shouldArchiveByDefault;
- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request;
- (BOOL)sourceIsManaged;
- (BOOL)supportsHandoffType:(id)type;
- (BOOL)supportsMailDrop;
- (BOOL)willPerformActionForChokePoint:(id)point coalescePoint:(id)coalescePoint result:(id *)result;
- (Class)storeClassForMailbox:(id)mailbox;
- (MFMailboxUid)rootMailbox;
- (MailAccount)initWithLibrary:(id)library path:(id)path;
- (MailAccount)initWithLibrary:(id)library persistentAccount:(id)account;
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
- (id)URLStringFromLegacyURLString:(id)string;
- (id)_URLForInfo:(id)info;
- (id)_cachedSpecialMailboxOfType:(int64_t)type;
- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name;
- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary;
- (id)_copyMailboxWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes dictionary:(id)dictionary;
- (id)_defaultSpecialMailboxNameForType:(int64_t)type;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)_infoForMatchingURL:(id)l;
- (id)_localMailboxNameForType:(int64_t)type usingDisplayName:(id)name;
- (id)allLocalMailboxUids;
- (id)allMailboxesFilteringNotes:(BOOL)notes;
- (id)connectionError;
- (id)copyReceivingEmailAddresses;
- (id)debugAccountState;
- (id)deliveryAccountAlternates;
- (id)displayNameUsingSpecialNamesForMailboxUid:(id)uid;
- (id)emailAddressesAndAliases;
- (id)emailAddressesDictionary;
- (id)encryptionIdentityPersistentReferenceForAddress:(id)address;
- (id)firstEmailAddress;
- (id)iconString;
- (id)legacySQLExpressionToMatchAllMailboxes;
- (id)library;
- (id)loggingIdentifier;
- (id)mailboxCachePath;
- (id)mailboxForType:(int64_t)type;
- (id)mailboxUidForInfo:(id)info;
- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create withOption:(int64_t)option;
- (id)mailboxUidForURL:(id)l;
- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)time;
- (id)newMailboxWithParent:(id)parent name:(id)name;
- (id)path;
- (id)powerAssertionIdentifierWithPrefix:(id)prefix;
- (id)pushedMailboxUids;
- (id)receiveEmailAliasAddresses;
- (id)signingIdentityPersistentReferenceForAddress:(id)address;
- (id)specialMailboxNameForType:(int64_t)type;
- (id)storeForMailboxUid:(id)uid;
- (id)uniqueServerIdForMessage:(id)message;
- (id)valueInAccountLookAsidePropertiesForKey:(id)key;
- (int)_emptyFrequencyForKey:(id)key defaultValue:(id)value;
- (int64_t)archiveDestinationForMailbox:(id)mailbox;
- (int64_t)secureCompositionEncryptionPolicyForAddress:(id)address;
- (int64_t)secureCompositionSigningPolicyForAddress:(id)address;
- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)data;
- (void)_didBecomeActive:(BOOL)active;
- (void)_incrementCacheDirtyCount;
- (void)_invalidateAndDeleteAccountData:(BOOL)data;
- (void)_invalidateCachedMailboxen;
- (void)_loadEntriesFromFileSystemPath:(id)path parent:(id)parent;
- (void)_registerStateCaptureHandler;
- (void)_resetAllMailboxURLs:(BOOL)ls;
- (void)_setAccountProperties:(id)properties;
- (void)_setEmptyFrequency:(int)frequency forKey:(id)key;
- (void)_setSpecialMailbox:(id)mailbox forType:(int64_t)type;
- (void)_setSpecialMailboxName:(id)name forType:(int64_t)type;
- (void)_setValueInAccountLookAsideProperties:(id)properties forKey:(id)key subKey:(id)subKey;
- (void)_synchronizeMailboxListWithFileSystem;
- (void)_writeMailboxCacheWithPrejudice:(BOOL)prejudice completionHandler:(id)handler;
- (void)addNewAction:(id)action;
- (void)dealloc;
- (void)deleteDeliveryAccountIfNeeded;
- (void)deliveryAccountWillBeRemoved:(id)removed;
- (void)didFinishActionForChokePoint:(id)point coalescePoint:(id)coalescePoint withResult:(id)result;
- (void)emptyTrash;
- (void)forceFetchMailboxListWithKind:(int64_t)kind;
- (void)invalidateEmailAliases;
- (void)newActionsAdded;
- (void)persistentAccountDidChange:(id)change previousAccount:(id)account;
- (void)releaseAllConnections;
- (void)releaseAllForcedConnections;
- (void)saveState;
- (void)setCacheHasBeenRead:(BOOL)read;
- (void)setConnectionError:(id)error;
- (void)setDeliveryAccount:(id)account;
- (void)setDeliveryAccountAlternates:(id)alternates;
- (void)setFullUserName:(id)name;
- (void)setHostname:(id)hostname;
- (void)setLastEmailAliasesSyncDate:(id)date;
- (void)setLastEmailAliasesSyncEntityTag:(id)tag;
- (void)setLibrary:(id)library;
- (void)setMailboxCachePath:(id)path;
- (void)setPath:(id)path;
- (void)setUsername:(id)username;
- (void)setValueInAccountLookAsideProperties:(id)properties forKey:(id)key;
- (void)setValueInAccountProperties:(id)properties forKey:(id)key;
- (void)setupLibrary;
- (void)shouldArchiveByDefault;
- (void)test_setTaskManager:(id)manager;
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

  baseAccount = [(MFAccount *)self baseAccount];
  isAppleEmployeeAccount = [baseAccount isAppleEmployeeAccount];

  if (isAppleEmployeeAccount)
  {

    v4 = @"appleAccountIcon";
  }

  return v4;
}

- (NSArray)emailAddresses
{
  v2 = MEMORY[0x1E699B240];
  emailAddressStrings = [(MailAccount *)self emailAddressStrings];
  v4 = [v2 emailAddressesFromStrings:emailAddressStrings invalidAddresses:0];

  return v4;
}

+ (void)reloadAccounts
{
  *buf = 138543362;
  *(buf + 4) = self;
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
  stateCaptureTitle = [(MailAccount *)self stateCaptureTitle];
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
    defaultPath = [(MailAccount *)self defaultPath];
    [(MailAccount *)self setPath:defaultPath];

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

  persistentAccount = [(MFAccount *)self persistentAccount];
  v3 = [(MFAccount *)MailAccount accountSourceIsManaged:persistentAccount];

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
      selfCopy = self;
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
  personaIdentifier = [(MFAccount *)self personaIdentifier];

  if (personaIdentifier)
  {
    v4 = MEMORY[0x1E699B620];
    personaIdentifier2 = [(MFAccount *)self personaIdentifier];
    v6 = [v4 baseAccountDirectoryPathForPersonaIdentifier:personaIdentifier2];

    defaultAccountDirectory = v6;
  }

  else
  {
    defaultAccountDirectory = [objc_opt_class() defaultAccountDirectory];
  }

  uniqueID = [(MFAccount *)self uniqueID];
  v9 = [defaultAccountDirectory stringByAppendingPathComponent:uniqueID];

  mf_betterStringByResolvingSymlinksInPath = [v9 mf_betterStringByResolvingSymlinksInPath];

  return mf_betterStringByResolvingSymlinksInPath;
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
  block[4] = self;
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
    path = [(MailAccount *)self path];
    v3 = [path stringByAppendingPathComponent:@".mboxCache.plist"];
  }

  return v3;
}

- (NSString)displayName
{
  v3 = [(MFAccount *)self _objectForAccountInfoKey:@"DisplayName"];
  if ([v3 length])
  {
    firstEmailAddress = v3;
  }

  else
  {
    firstEmailAddress = [(MailAccount *)self firstEmailAddress];

    if (firstEmailAddress)
    {
      [(MailAccount *)self mf_lock];
      [(MFAccount *)self setAccountProperty:firstEmailAddress forKey:@"DisplayName"];
      [(MailAccount *)self mf_unlock];
    }

    else
    {
      v6.receiver = self;
      v6.super_class = MailAccount;
      firstEmailAddress = [(MFAccount *)&v6 displayName];
    }
  }

  return firstEmailAddress;
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
      ef_publicDescription = [(MFAccount *)self ef_publicDescription];
      [(MailAccount *)ef_publicDescription shouldArchiveByDefault:v3];
    }
  }

  else
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription2 = [(MFAccount *)self ef_publicDescription];
      v9 = 138543362;
      v10 = ef_publicDescription2;
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
  array = [MEMORY[0x1E695DF70] array];
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

      [array addObject:{v10, v16}];
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

  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:array forKeys:v7];

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
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  allKeys = [emailAddressesDictionary allKeys];
  v4 = [allKeys ef_map:&__block_literal_global_204];

  return v4;
}

- (BOOL)isActive
{
  selfCopy = self;
  persistentAccount = [(MFAccount *)self persistentAccount];
  LOBYTE(selfCopy) = [(MailAccount *)selfCopy isActiveWithPersistentAccount:persistentAccount];

  return selfCopy;
}

- (id)copyReceivingEmailAddresses
{
  uniqueID = [(MFAccount *)self uniqueID];
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
  v5 = [v4 objectForKey:uniqueID generator:v7];

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
  ef_flatten = [v4 ef_flatten];
  v6 = [ef_flatten ef_filter:*MEMORY[0x1E699B748]];

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
  absoluteString = [v4 absoluteString];

  v6 = *MEMORY[0x1E69E9840];

  return absoluteString;
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
  [self activeAccounts];
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

- (void)setCacheHasBeenRead:(BOOL)read
{
  readCopy = read;
  os_unfair_lock_lock(&self->_flagsLock);
  if (readCopy)
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

+ (void)enableMailboxListingNotifications:(BOOL)notifications
{
  atomic_store(0, sDisableMailboxListingNotifications);
  if (notifications)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"AccountMailboxListingDidChange" object:0 userInfo:0];
  }
}

+ (void)_addAccountToSortedPaths:(id)paths
{
  value = paths;
  path = [value path];
  v4 = _sortedAccountPaths;
  v8.length = CFArrayGetCount(_sortedAccountPaths);
  v8.location = 0;
  v5 = CFArrayBSearchValues(v4, v8, path, MEMORY[0x1E695D7F0], 0);
  CFArrayInsertValueAtIndex(_sortedAccountPaths, v5, path);
  CFArrayInsertValueAtIndex(_accountsSortedByPath, v5, value);
}

+ (void)_setupSortedPathsForAccounts:(id)accounts
{
  v15 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  CFArrayRemoveAllValues(_sortedAccountPaths);
  CFArrayRemoveAllValues(_accountsSortedByPath);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = accountsCopy;
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

        [self _addAccountToSortedPaths:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)existingAccountForUniqueID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
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
        uniqueID = [v8 uniqueID];
        v10 = [uniqueID isEqualToString:dCopy];

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

+ (id)existingDAMailAccountForDAAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  +[MailAccount lockMailAccount];
  accountID = [accountCopy accountID];
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
        uniqueID = [v9 uniqueID];
        v11 = [uniqueID isEqual:accountID];

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
  [v9 setDAAccount:accountCopy];

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_loadAllAccountsWithError:(id *)error
{
  v33[6] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  array = [MEMORY[0x1E695DF70] array];
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
  [array addObjectsFromArray:v8];

  if ([array count])
  {
    v9 = +[MFAccountStore sharedAccountStore];
    v31 = 0;
    v10 = [v9 accountsWithTypeIdentifiers:array error:&v31];
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
  v13 = [self _loadDataAccessAccountsWithError:&v30];
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
        v19 = [self existingDAMailAccountForDAAccount:v18];
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
      [self _removeLookAsideValuesNotInAccountList:v4];
      v11 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v11 = v24;
  }

  if (error)
  {
    v20 = v11;
    *error = v11;
  }

LABEL_25:

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_loadDataAccessAccountsWithError:(id *)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = sharedDAAccountStore();
  v5 = *MEMORY[0x1E6959878];
  v20[0] = *MEMORY[0x1E6959840];
  v20[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v7 = [v4 da_accountsWithAccountTypeIdentifiers:v6 outError:error];

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

+ (id)mailAccountsWithError:(id *)error
{
  +[MailAccount lockMailAccount];
  v5 = _accounts;
  if (!_accounts)
  {
    [self reloadAccounts];
    v5 = _accounts;
  }

  v6 = [v5 copy];
  if (error)
  {
    *error = _lastAccountsReloadError;
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

+ (void)_setMailAccounts:(id)accounts saveIfChanged:(BOOL)changed alreadyLocked:(BOOL)locked
{
  changedCopy = changed;
  v90 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v48 = accountsCopy;
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  lockedCopy = locked;
  if (!locked)
  {
    [self disableMailboxListingNotifications];
    [self mf_lock];
  }

  v10 = objc_opt_new();
  [v10 setMaxConcurrentOperationCount:1];
  obj = [accountsCopy mutableCopy];
  v11 = +[LocalAccount localAccount];
  v51 = changedCopy;
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
  [self _setupSortedPathsForAccounts:_accounts];
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
    selfCopy = self;
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

    self = selfCopy;
    v19 = v47;
  }

  if (!lockedCopy)
  {
    [self mf_unlock];
    [self enableMailboxListingNotifications:0];
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

  [self notifyOfAccountsAdded:v55 accountsRemoved:v54 changedAccounts:v42];
  v46 = *MEMORY[0x1E69E9840];
}

+ (void)_removeAccountFromSortedPaths:(id)paths
{
  pathsCopy = paths;
  if (_accountsSortedByPath)
  {
    Count = CFArrayGetCount(_accountsSortedByPath);
    if (Count)
    {
      v4 = Count - 1;
      do
      {
        if (CFArrayGetValueAtIndex(_accountsSortedByPath, v4) == pathsCopy)
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

+ (id)activeAccountsWithError:(id *)error
{
  v3 = [self mailAccountsWithError:error];
  v4 = [v3 ef_filter:&__block_literal_global_137];

  return v4;
}

+ (id)purgeableAccounts
{
  v2 = +[MailAccount mailAccounts];
  v3 = [v2 ef_filter:&__block_literal_global_139];

  return v3;
}

+ (MailAccount)accountWithUniqueId:(id)id
{
  idCopy = id;
  mailAccounts = [self mailAccounts];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__MailAccount_accountWithUniqueId___block_invoke;
  v9[3] = &unk_1E7AA30E0;
  v6 = idCopy;
  v10 = v6;
  v7 = [mailAccounts ef_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __35__MailAccount_accountWithUniqueId___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

+ (void)notifyOfAccountsAdded:(id)added accountsRemoved:(id)removed changedAccounts:(id)accounts
{
  addedCopy = added;
  removedCopy = removed;
  accountsCopy = accounts;
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    v9 = +[MFMailMessageLibrary defaultInstance];
    persistence = [v9 persistence];
    hookRegistry = [persistence hookRegistry];

    if ([addedCopy count])
    {
      [hookRegistry accountsAdded:addedCopy];
    }

    if ([removedCopy count])
    {
      [hookRegistry accountsRemoved:removedCopy];
    }

    if ([accountsCopy count])
    {
      [hookRegistry accountsChanged:accountsCopy];
    }
  }
}

+ (id)existingAccountWithType:(id)type hostname:(id)hostname username:(id)username
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  hostnameCopy = hostname;
  usernameCopy = username;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  mailAccounts = [self mailAccounts];
  v12 = [mailAccounts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(mailAccounts);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 isEquivalentTo:typeCopy hostname:hostnameCopy username:usernameCopy])
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [mailAccounts countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (BOOL)isEquivalentTo:(id)to hostname:(id)hostname username:(id)username
{
  toCopy = to;
  hostnameCopy = hostname;
  usernameCopy = username;
  v11 = [(MailAccount *)self isAccountClassEquivalentTo:toCopy]&& [(MailAccount *)self isHostnameEquivalentTo:hostnameCopy]&& [(MailAccount *)self isUsernameEquivalentTo:usernameCopy];

  return v11;
}

- (BOOL)isUsernameEquivalentTo:(id)to
{
  toCopy = to;
  username = [(MFAccount *)self username];
  if (username == toCopy)
  {
    v7 = 1;
  }

  else
  {
    username2 = [(MFAccount *)self username];
    v7 = [toCopy compare:username2 options:1] == 0;
  }

  return v7;
}

+ (id)_accountContainingEmailAddress:(id)address matchingAddress:(id *)matchingAddress fullUserName:(id *)name includingInactive:(BOOL)inactive
{
  v55 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  emailAddressValue = [addressCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v9 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [addressCopy stringValue];
  }

  v11 = stringValue;

  v36 = addressCopy;
  emailAddressValue2 = [v36 emailAddressValue];
  displayName = [emailAddressValue2 displayName];
  v14 = displayName;
  if (displayName)
  {
    stringValue2 = displayName;
  }

  else
  {
    stringValue2 = [v36 stringValue];
  }

  v16 = stringValue2;

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
      if (inactive || [*(*(&v49 + 1) + 8 * v41) isActive])
      {
        emailAddressesAndAliasesList = [v19 emailAddressesAndAliasesList];
        v21 = [emailAddressesAndAliasesList ef_map:&__block_literal_global_146];

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
                fullUserName = [v19 fullUserName];
                v28 = fullUserName;
                if (v16 && (!fullUserName || [v16 caseInsensitiveCompare:fullUserName]))
                {
                  v29 = v19;

                  v44 = v29;
                }

                else
                {
                  if (matchingAddress)
                  {
                    v30 = v26;
                    *matchingAddress = v26;
                  }

                  if (name && v28 && ([v28 isEqualToString:&stru_1F273A5E0] & 1) == 0)
                  {
                    v31 = v28;
                    *name = v28;
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

+ (id)accountContainingEmailAddress:(id)address
{
  v3 = [self _accountContainingEmailAddress:address matchingAddress:0 fullUserName:0 includingInactive:0];

  return v3;
}

+ (id)accountThatMessageIsFrom:(id)from
{
  fromCopy = from;
  headersIfAvailable = [fromCopy headersIfAvailable];
  v6 = [self accountForHeaders:headersIfAvailable message:fromCopy includingInactive:0 error:0];

  return v6;
}

+ (id)addressesThatReceivedMessage:(id)message
{
  v29 = *MEMORY[0x1E69E9840];
  headersIfAvailable = [message headersIfAvailable];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  array = [MEMORY[0x1E695DF70] array];
  copyAddressListForTo = [headersIfAvailable copyAddressListForTo];
  [v23 addObjectsFromArray:copyAddressListForTo];
  copyAddressListForCc = [headersIfAvailable copyAddressListForCc];

  [v23 addObjectsFromArray:copyAddressListForCc];
  v21 = copyAddressListForCc;
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
        emailAddressValue = [v11 emailAddressValue];
        simpleAddress = [emailAddressValue simpleAddress];
        v14 = simpleAddress;
        if (simpleAddress)
        {
          stringValue = simpleAddress;
        }

        else
        {
          stringValue = [v11 stringValue];
        }

        v16 = stringValue;

        v17 = [self _accountContainingEmailAddress:v16 matchingAddress:0 fullUserName:0 includingInactive:0];
        v18 = v17 == 0;

        if (!v18)
        {
          [array addObject:v16];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];

  return array;
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
    [self _setOutboxMailboxUid:v5];
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

+ (id)allMailboxUidsForAccounts:(id)accounts
{
  v20 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = accountsCopy;
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

        rootMailbox = [*(*(&v15 + 1) + 8 * i) rootMailbox];
        if (rootMailbox)
        {
          [array2 addObject:rootMailbox];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  lastObject = v6;
  while (1)
  {

    if (![array2 count])
    {
      break;
    }

    lastObject = [array2 lastObject];
    mutableCopyOfChildren = [lastObject mutableCopyOfChildren];
    [array addObjectsFromArray:mutableCopyOfChildren];
    [array2 removeLastObject];
    [array2 addObjectsFromArray:mutableCopyOfChildren];
  }

  v13 = *MEMORY[0x1E69E9840];

  return array;
}

+ (id)allActivePrimaryMailboxUids
{
  activeAccounts = [self activeAccounts];
  v3 = [activeAccounts ef_compactMap:&__block_literal_global_152];

  return v3;
}

id __42__MailAccount_allActivePrimaryMailboxUids__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 primaryMailboxUid];

  return v2;
}

+ (MailAccount)accountWithPath:(id)path
{
  v3 = accountWithPathTryResolvingSymlinks(path, 1);

  return v3;
}

+ (id)newAccountWithPath:(id)path
{
  pathCopy = path;
  if ([pathCopy length])
  {
    v4 = accountWithPathTryResolvingSymlinks(pathCopy, 0);
    if (!v4)
    {
      mf_betterStringByResolvingSymlinksInPath = [pathCopy mf_betterStringByResolvingSymlinksInPath];

      v4 = accountWithPathTryResolvingSymlinks(mf_betterStringByResolvingSymlinksInPath, 0);
      if (!v4)
      {
        v4 = [objc_alloc(objc_opt_class()) initWithPath:mf_betterStringByResolvingSymlinksInPath];
      }

      pathCopy = mf_betterStringByResolvingSymlinksInPath;
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

- (void)test_setTaskManager:(id)manager
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MailAccount.m" lineNumber:880 description:{@"%s can only be called from unit tests", "-[MailAccount test_setTaskManager:]"}];
  }

  messageStoresCache = self->_messageStoresCache;

  [(MFWeakObjectCache *)messageStoresCache removeAllObjects];
}

+ (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MailAccount.m" lineNumber:886 description:{@"%s can only be called from unit tests", "+[MailAccount test_tearDown]"}];
  }

  v5 = mailAccountQueue();
  dispatch_sync(v5, &__block_literal_global_161);
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MailAccount.m" lineNumber:893 description:{@"%s can only be called from unit tests", "-[MailAccount test_tearDown]"}];
  }

  [(MailAccount *)self test_setTaskManager:0];

  [(MailAccount *)self setLibrary:0];
}

- (void)persistentAccountDidChange:(id)change previousAccount:(id)account
{
  changeCopy = change;
  accountCopy = account;
  v10.receiver = self;
  v10.super_class = MailAccount;
  [(MFAccount *)&v10 persistentAccountDidChange:changeCopy previousAccount:accountCopy];
  if (accountCopy)
  {
    v8 = [(MailAccount *)self isActiveWithPersistentAccount:accountCopy];
    v9 = [(MailAccount *)self isActiveWithPersistentAccount:changeCopy];
    if (v8 != v9)
    {
      [(MailAccount *)self _didBecomeActive:v9];
    }

    [(MailAccount *)self _invalidateCachedMailboxen];
  }
}

- (void)_setAccountProperties:(id)properties
{
  propertiesCopy = properties;
  v6.receiver = self;
  v6.super_class = MailAccount;
  [(MFAccount *)&v6 _setAccountProperties:propertiesCopy];
  v5 = [propertiesCopy objectForKey:@"SMTPAlternateIdentifiers"];

  if (!v5)
  {
    [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
  }
}

+ (id)newAccountWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"AccountPath"];
  mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [v5 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  v7 = [self newAccountWithPath:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  if (v7 || (v7 = objc_alloc_init(self)) != 0)
  {
    if (mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath && ([v5 isEqualToString:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath] & 1) == 0)
    {
      v8 = [dictionaryCopy mutableCopy];
      [v8 setObject:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath forKey:@"AccountPath"];
    }

    else
    {
      v8 = dictionaryCopy;
    }

    dictionaryCopy = v8;
    [v7 _setAccountProperties:v8];
  }

  return v7;
}

- (MailAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  libraryCopy = library;
  accountCopy = account;
  v28.receiver = self;
  v28.super_class = MailAccount;
  v8 = [(MFAccount *)&v28 initWithPersistentAccount:accountCopy];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"CachedMailboxenLock" andDelegate:v8];
    cachedMailboxenLock = v8->_cachedMailboxenLock;
    v8->_cachedMailboxenLock = v9;

    v11 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:@"MailAccountDeletionLock" andDelegate:0];
    deletionLock = v8->_deletionLock;
    v8->_deletionLock = v11;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_deliveryAccountWillBeRemoved_ name:@"DeliveryAccountWillBeRemoved" object:0];

    if (libraryCopy)
    {
      [(MailAccount *)v8 setLibrary:libraryCopy];
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

- (MailAccount)initWithLibrary:(id)library path:(id)path
{
  libraryCopy = library;
  pathCopy = path;
  v8 = [(MailAccount *)self initWithLibrary:libraryCopy persistentAccount:0];
  v9 = v8;
  if (v8)
  {
    [(MailAccount *)v8 _setPath:pathCopy];
  }

  return v9;
}

+ (id)legacyPathForAccountIdentifier:(id)identifier withHostname:(id)hostname username:(id)username
{
  hostnameCopy = hostname;
  usernameCopy = username;
  defaultAccountDirectory = [self defaultAccountDirectory];
  v10 = [self legacyPathNameForAccountWithHostname:hostnameCopy username:usernameCopy];
  v11 = [defaultAccountDirectory stringByAppendingPathComponent:v10];
  mf_betterStringByResolvingSymlinksInPath = [v11 mf_betterStringByResolvingSymlinksInPath];

  return mf_betterStringByResolvingSymlinksInPath;
}

+ (id)legacyPathNameForAccountWithHostname:(id)hostname username:(id)username
{
  hostnameCopy = hostname;
  usernameCopy = username;
  v8 = MEMORY[0x1E696AEC0];
  accountTypeString = [self accountTypeString];
  hostnameCopy = [v8 stringWithFormat:@"%@-%@@%@", accountTypeString, usernameCopy, hostnameCopy];

  return hostnameCopy;
}

- (id)legacySQLExpressionToMatchAllMailboxes
{
  v3 = MEMORY[0x1E696AEC0];
  username = [(MFAccount *)self username];
  v5 = encodedURLComponent(username);
  hostname = [(MFAccount *)self hostname];
  v7 = encodedURLComponent(hostname);
  v8 = [v3 stringWithFormat:@"%@@%@", v5, v7];

  v9 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"url"];
  v10 = [v9 contains:v8 caseSensitive:0];

  return v10;
}

- (id)URLStringFromLegacyURLString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithString:stringCopy];
    [v5 setUser:0];
    [v5 setPort:0];
    uniqueID = [(MFAccount *)self uniqueID];
    [v5 setHost:uniqueID];

    v7 = [v5 URL];
    absoluteString = [v7 absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  return absoluteString;
}

- (void)setPath:(id)path
{
  pathCopy = path;
  if ([(MailAccount *)self _setPath:?])
  {
    [(MFAccount *)self _queueAccountInfoDidChange];
  }
}

- (void)setFullUserName:(id)name
{
  nameCopy = name;
  fullUserName = [(MailAccount *)self fullUserName];
  if ([(__CFString *)nameCopy length])
  {
    mf_stringWithNoExtraSpaces = [(__CFString *)nameCopy mf_stringWithNoExtraSpaces];
  }

  else
  {
    mf_stringWithNoExtraSpaces = nameCopy;
  }

  if (mf_stringWithNoExtraSpaces != fullUserName)
  {
    v6 = fullUserName ? fullUserName : &stru_1F273A5E0;
    if (([(__CFString *)mf_stringWithNoExtraSpaces isEqualToString:v6]& 1) == 0)
    {
      [(MailAccount *)self mf_lock];
      if (mf_stringWithNoExtraSpaces)
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

+ (id)_defaultMailAccountForDeliveryIncludingRestricted:(BOOL)restricted
{
  v19 = *MEMORY[0x1E69E9840];
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v6 = [em_userDefaults objectForKey:@"DefaultSendingAccount"];

  if ([v6 length])
  {
    v7 = [self accountWithUniqueId:v6];
    if ([v7 isActive] && (restricted || (objc_msgSend(v7, "restrictedFromSendingExternally") & 1) == 0))
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
  mailAccounts = [self mailAccounts];
  v7 = [mailAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(mailAccounts);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && [v11 isActive] && (restricted || (objc_msgSend(v11, "restrictedFromSendingExternally") & 1) == 0))
        {
          v7 = v11;
          goto LABEL_19;
        }
      }

      v7 = [mailAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  defaultMailAccountForDelivery = [self defaultMailAccountForDelivery];
  deliveryAccount = [defaultMailAccountForDelivery deliveryAccount];

  return deliveryAccount;
}

- (id)deliveryAccountAlternates
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
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
            [array addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    array = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)setDeliveryAccount:(id)account
{
  accountCopy = account;
  if (([objc_opt_class() primaryDeliveryAccountIsDynamic] & 1) == 0)
  {
    v4 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
    identifier = [accountCopy identifier];
    v6 = identifier;
    if (!v4 || ([identifier isEqualToString:v4] & 1) == 0)
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

- (void)setDeliveryAccountAlternates:(id)alternates
{
  v18 = *MEMORY[0x1E69E9840];
  alternatesCopy = alternates;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = alternatesCopy;
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

        identifier = [*(*(&v13 + 1) + 8 * v9) identifier];
        if (identifier)
        {
          [array addObject:identifier];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
  if (([v11 isEqual:array] & 1) == 0)
  {
    [(MailAccount *)self mf_lock];
    if ([array count])
    {
      [(MFAccount *)self setAccountProperty:array forKey:@"SMTPAlternateIdentifiers"];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:@"SMTPAlternateIdentifiers"];
    }

    [(MailAccount *)self mf_unlock];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)canUseDeliveryAccount:(id)account
{
  accountCopy = account;
  deliveryAccount = [(MailAccount *)self deliveryAccount];
  v6 = [accountCopy isEqual:deliveryAccount];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    identifier = [accountCopy identifier];
    v9 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPAlternateIdentifiers"];
    v7 = [v9 containsObject:identifier];
  }

  return v7;
}

- (BOOL)canUseCarrierDeliveryFallback
{
  v2 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPCarrierFallbackAllowed"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)firstEmailAddress
{
  emailAddressStrings = [(MailAccount *)self emailAddressStrings];
  if ([emailAddressStrings count])
  {
    v3 = [emailAddressStrings objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)checkAndSetDefaultEmailAddress:(id)address
{
  addressCopy = address;
  defaultEmailAddress = [(MailAccount *)self defaultEmailAddress];
  v6 = defaultEmailAddress;
  if (defaultEmailAddress == addressCopy || (defaultEmailAddress ? (v7 = defaultEmailAddress) : (v7 = &stru_1F273A5E0), ([addressCopy isEqualToString:v7] & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    [(MailAccount *)self mf_lock];
    if (addressCopy)
    {
      [(MFAccount *)self setAccountProperty:addressCopy forKey:@"defaultAddress"];
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

+ (void)updatePersonalStatusForAccounts:(id)accounts forceUpdate:(BOOL)update
{
  v34 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v5 = MFUserAgent();
  isMaild = [v5 isMaild];

  if (isMaild)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = accountsCopy;
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
          systemAccount = [v10 systemAccount];
          firstEmailAddress = [v10 firstEmailAddress];
          if (firstEmailAddress)
          {
            ed_accountIsNonPersonal = [v22[5] ed_accountIsNonPersonal];
            v13 = ed_accountIsNonPersonal;
            if (update || !ed_accountIsNonPersonal)
            {
              v14 = [v22[5] ed_accountIsPersonalDomainForMailAccount:v10 force:1];
              v20[0] = MEMORY[0x1E69E9820];
              v20[1] = 3221225472;
              v20[2] = __59__MailAccount_updatePersonalStatusForAccounts_forceUpdate___block_invoke;
              v20[3] = &unk_1E7AA3170;
              v20[4] = &v21;
              v20[5] = self;
              [v14 addSuccessBlock:v20];
            }
          }

          else
          {
            v13 = +[MailAccount log];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              ef_publicDescription = [v10 ef_publicDescription];
              *buf = 138543362;
              v32 = ef_publicDescription;
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

- (BOOL)checkAndSetEmailAddresses:(id)addresses
{
  v24 = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = addressesCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_13:
      v13 = addressesCopy;
      v9 = 0;
      goto LABEL_14;
    }

    v6 = [addressesCopy componentsSeparatedByString:{@", "}];
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  array = [MEMORY[0x1E695DF70] array];
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

      [array addObject:{v12, v19}];
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

  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:array forKeys:v9];

LABEL_14:
  if (emailAddressesDictionary == v13)
  {
    goto LABEL_20;
  }

  dictionary = emailAddressesDictionary;
  if (!emailAddressesDictionary)
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
  }

  v15 = [v13 isEqual:{dictionary, v19}];
  if (!emailAddressesDictionary)
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

- (BOOL)checkAndSetReceiveEmailAliasAddresses:(id)addresses
{
  addressesCopy = addresses;
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
  v6 = receiveEmailAliasAddresses;
  if (receiveEmailAliasAddresses == addressesCopy || receiveEmailAliasAddresses && ([addressesCopy isEqual:receiveEmailAliasAddresses] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    [(MailAccount *)self mf_lock];
    if (addressesCopy)
    {
      [(MFAccount *)self setAccountProperty:addressesCopy forKey:@"ReceiveEmailAliasAddresses"];
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

- (void)setLastEmailAliasesSyncDate:(id)date
{
  dateCopy = date;
  v7 = dateCopy;
  if (dateCopy)
  {
    v5 = MEMORY[0x1E696AD98];
    [dateCopy timeIntervalSince1970];
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

- (void)setLastEmailAliasesSyncEntityTag:(id)tag
{
  tagCopy = tag;
  [(MailAccount *)self mf_lock];
  [(MFAccount *)self setAccountProperty:tagCopy forKey:@"LastEmailAliasesSyncEntityTag"];
  [(MailAccount *)self mf_unlock];
}

- (id)emailAddressesAndAliases
{
  emailAddressesDictionary = [(MailAccount *)self emailAddressesDictionary];
  receiveEmailAliasAddresses = [(MailAccount *)self receiveEmailAliasAddresses];
  v5 = receiveEmailAliasAddresses;
  if (receiveEmailAliasAddresses)
  {
    v6 = receiveEmailAliasAddresses;
    if (emailAddressesDictionary)
    {
      v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:emailAddressesDictionary];
      [v7 addEntriesFromDictionary:v5];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  [(MailAccount *)self updateEmailAliasesIfNeeded];
  v6 = emailAddressesDictionary;
  if (emailAddressesDictionary)
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
    identifier = [v2 identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (void)_invalidateAndDeleteAccountData:(BOOL)data
{
  dataCopy = data;
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
  library = [(MailAccount *)self library];
  [library invalidateAccount:self];

  if (dataCopy)
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    v7 = [allMailboxUids arrayByApplyingSelector:sel_URLString];

    v28 = v7;
    allLocalMailboxUids = [(MailAccount *)self allLocalMailboxUids];
    v29 = allLocalMailboxUids;
    path = [(MailAccount *)self path];
    v10 = MFRemoveItemAtPath();

    library2 = [(MailAccount *)self library];
    [library2 deleteMailboxes:v7 account:self];

    if ([allLocalMailboxUids count])
    {
      v12 = +[LocalAccount localAccount];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = allLocalMailboxUids;
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

    library3 = [(MailAccount *)self library];
    [library3 deleteAccount:self];

    [(MailAccount *)self _deleteHook];
    [(MFAccount *)self setPassword:0];
    [(MailAccount *)self deleteDeliveryAccountIfNeeded];
  }

  [(MFLock *)self->_deletionLock unlock];
  [objc_opt_class() enableMailboxListingNotifications:1];
  v27 = *MEMORY[0x1E69E9840];
}

- (void)_asynchronouslyInvalidateAndDeleteAccountData:(BOOL)data
{
  v5 = mailAccountQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__MailAccount__asynchronouslyInvalidateAndDeleteAccountData___block_invoke;
  v6[3] = &unk_1E7AA25E8;
  v6[4] = self;
  dataCopy = data;
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
  deliveryAccount = [(MailAccount *)self deliveryAccount];
  [deliveryAccount releaseAllForcedConnections];
}

- (void)_synchronizeMailboxListWithFileSystem
{
  _mailboxPathPrefix = [(MailAccount *)self _mailboxPathPrefix];
  path = [(MailAccount *)self path];
  v7 = [path mutableCopyWithZone:0];

  if (_mailboxPathPrefix && [_mailboxPathPrefix length])
  {
    [v7 appendString:@"/"];
    _mailboxPathPrefix2 = [(MailAccount *)self _mailboxPathPrefix];
    [v7 appendString:_mailboxPathPrefix2];
  }

  [(MailAccount *)self mf_lock];
  rootMailbox = [(MailAccount *)self rootMailbox];
  [(MailAccount *)self _loadEntriesFromFileSystemPath:v7 parent:rootMailbox];

  [(MailAccount *)self mf_unlock];
  os_unfair_lock_lock(&self->_flagsLock);
  *&self->_flags &= ~0x20000u;
  os_unfair_lock_unlock(&self->_flagsLock);
  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  [(MailAccount *)self resetSpecialMailboxes];
  [(MailAccount *)self emptyTrash];
}

- (void)forceFetchMailboxListWithKind:(int64_t)kind
{
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    v7 = +[MFInvocationQueue sharedInvocationQueue];
    v5 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_resetMailboxTimer target:self];
    [v7 addInvocation:v5];

    if (kind)
    {
      if (kind != 1)
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

- (BOOL)deliveryAccountInUseByOtherAccounts:(id)accounts
{
  v36 = *MEMORY[0x1E69E9840];
  uniqueID = [accounts uniqueID];
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
        uniqueID2 = [v6 uniqueID];
        uniqueID3 = [(MFAccount *)self uniqueID];
        v9 = uniqueID2 == uniqueID3;

        if (!v9)
        {
          v10 = [v6 _deliveryAccountCreateIfNeeded:0];
          v11 = v10;
          if (v10)
          {
            uniqueID4 = [v10 uniqueID];
            v13 = [uniqueID4 isEqualToString:uniqueID];

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
          deliveryAccountAlternates = [v6 deliveryAccountAlternates];
          v15 = [deliveryAccountAlternates countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v15)
          {
            v16 = *v27;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v27 != v16)
                {
                  objc_enumerationMutation(deliveryAccountAlternates);
                }

                uniqueID5 = [*(*(&v26 + 1) + 8 * j) uniqueID];
                v19 = [uniqueID5 isEqualToString:uniqueID];

                if (v19)
                {
                  v22 = 1;
                  goto LABEL_19;
                }
              }

              v15 = [deliveryAccountAlternates countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (BOOL)isSpecialMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy isStandardizedMailboxUid])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [mailboxCopy isStore] ^ 1;
  }

  return v4;
}

- (id)mailboxForType:(int64_t)type
{
  v4 = mailboxUIDTypeFromECMailboxType(type);

  return [(MailAccount *)self mailboxUidOfType:v4 createIfNeeded:1];
}

- (BOOL)containsMailboxWithURL:(id)l
{
  absoluteString = [l absoluteString];
  LOBYTE(self) = [(MailAccount *)self ownsMailboxUidWithURL:absoluteString];

  return self;
}

- (id)specialMailboxNameForType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(MFAccount *)self _objectForAccountInfoKey:off_1E7AA3370[type - 1], v3];
  }

  return v5;
}

- (id)allMailboxesFilteringNotes:(BOOL)notes
{
  notesCopy = notes;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  rootMailbox = [(MailAccount *)self rootMailbox];
  if (rootMailbox)
  {
    [array2 addObject:rootMailbox];
  }

  while ([array2 count])
  {
    lastObject = [array2 lastObject];
    v9 = lastObject;
    if (notesCopy && [lastObject isNotesMailboxUid])
    {
      [array removeObject:v9];
      [array2 removeLastObject];
    }

    else
    {
      mutableCopyOfChildren = [v9 mutableCopyOfChildren];
      [array addObjectsFromArray:mutableCopyOfChildren];
      [array2 removeLastObject];
      [array2 addObjectsFromArray:mutableCopyOfChildren];
    }
  }

  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v12 = [array indexOfObject:primaryMailboxUid];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [array exchangeObjectAtIndex:0 withObjectAtIndex:v12];
  }

  return array;
}

- (id)mailboxesForSuggestionsLostMessageSearchPriorToTime:(double)time
{
  v14[1] = *MEMORY[0x1E69E9840];
  allMailMailboxUid = [(MailAccount *)self allMailMailboxUid];
  v6 = allMailMailboxUid;
  if (allMailMailboxUid)
  {
    v14[0] = allMailMailboxUid;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  }

  else
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke;
    v13[3] = &__block_descriptor_40_e22_B16__0__MFMailboxUid_8l;
    *&v13[4] = time;
    v9 = [allMailboxUids ef_filter:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__MailAccount_mailboxesForSuggestionsLostMessageSearchPriorToTime___block_invoke_2;
    v12[3] = &__block_descriptor_40_e39_q24__0__MFMailboxUid_8__MFMailboxUid_16l;
    *&v12[4] = time;
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

- (void)_setEmptyFrequency:(int)frequency forKey:(id)key
{
  keyCopy = key;
  v5 = EFStringWithInt();
  [(MailAccount *)self mf_lock];
  [(MFAccount *)self setAccountProperty:v5 forKey:keyCopy];
  [(MailAccount *)self mf_unlock];
}

- (BOOL)_resetSpecialMailboxesCanPost:(BOOL)post
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
  postCopy = post;
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

+ (void)performOnAccounts:(id)accounts accountBlock:(id)block
{
  accountsCopy = accounts;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MailAccount_performOnAccounts_accountBlock___block_invoke;
  v10[3] = &unk_1E7AA3290;
  v11 = accountsCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = accountsCopy;
  [self _postMailboxListNotificationAfterBlock:v10];
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

+ (void)_postMailboxListNotificationAfterBlock:(id)block
{
  blockCopy = block;
  mailboxListingNotificationsAreEnabled = [objc_opt_class() mailboxListingNotificationsAreEnabled];
  if (mailboxListingNotificationsAreEnabled)
  {
    [objc_opt_class() disableMailboxListingNotifications];
  }

  v4 = blockCopy[2]();
  if (mailboxListingNotificationsAreEnabled)
  {
    [objc_opt_class() enableMailboxListingNotifications:v4];
  }
}

- (BOOL)newMailboxNameIsAcceptable:(id)acceptable reasonForFailure:(id *)failure
{
  acceptableCopy = acceptable;
  pathComponents = [acceptableCopy pathComponents];
  v7 = [pathComponents count];

  if (failure)
  {
    if (v7 == 1)
    {
      *failure = 0;
    }

    else
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = MFLookupLocalizedString(@"MAILBOX_NAME_INCLUDES_PATH_SEPARATOR", @"Mailbox names may not include “%@”.", @"Delayed");
      v10 = [v8 stringWithFormat:v9, @"/"];
      *failure = v10;
    }
  }

  return v7 == 1;
}

- (BOOL)canMailboxBeRenamed:(id)renamed
{
  renamedCopy = renamed;
  if ([renamedCopy isEqual:self->_rootMailboxUid])
  {
    v5 = 0;
  }

  else
  {
    mailboxType = [renamedCopy mailboxType];
    v5 = mailboxType == -100 || mailboxType == 0;
  }

  return v5;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name
{
  mailboxCopy = mailbox;
  nameCopy = name;
  parent = [mailboxCopy parent];
  LOBYTE(self) = [(MailAccount *)self renameMailbox:mailboxCopy newName:nameCopy parent:parent];

  return self;
}

- (BOOL)_renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  v80 = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  nameCopy = name;
  parentCopy = parent;
  v68 = mailboxCopy;
  fullPath = [mailboxCopy fullPath];
  attributes = [mailboxCopy attributes];
  parent = [mailboxCopy parent];
  v10 = +[MailAccount log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [mailboxCopy ef_publicDescription];
    v12 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:nameCopy];
    *buf = 138543618;
    v77 = ef_publicDescription;
    v78 = 2114;
    v79 = v12;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Renaming mailbox %{public}@ newName: %{public}@", buf, 0x16u);
  }

  [(MailAccount *)self mf_lock];
  depthFirstEnumerator = [mailboxCopy depthFirstEnumerator];
  allObjects = [depthFirstEnumerator allObjects];

  v59 = [allObjects arrayByApplyingSelector:sel_URLString];
  if (nameCopy)
  {
    v14 = [(MailAccount *)self _uidNameForPathComponent:nameCopy];
    [mailboxCopy setName:v14];
  }

  if (parentCopy)
  {
    [mailboxCopy setParent:parentCopy];
  }

  [allObjects makeObjectsPerformSelector:sel_flushCriteria];
  v60 = [allObjects arrayByApplyingSelector:sel_URLString];
  fullPath2 = [mailboxCopy fullPath];
  stringByDeletingLastPathComponent = [fullPath2 stringByDeletingLastPathComponent];
  v66 = [stringByDeletingLastPathComponent ef_pathByReplacingRelativePathWithFolderName:@"mbox"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v66] & 1) == 0 && !objc_msgSend(defaultManager, "mf_makeCompletePath:mode:", v66, 448))
  {
    goto LABEL_20;
  }

  if ([defaultManager fileExistsAtPath:fullPath])
  {
    v16 = fullPath;
    fileSystemRepresentation = [fullPath fileSystemRepresentation];
    v18 = fullPath2;
    fileSystemRepresentation2 = [fullPath2 fileSystemRepresentation];
    rename(fileSystemRepresentation, fileSystemRepresentation2, v20);
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = +[MailAccount log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription2 = [v68 ef_publicDescription];
    *buf = 138543618;
    v77 = ef_publicDescription2;
    v78 = 1024;
    LODWORD(v79) = v22;
    _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "Renaming file at new path for mailbox %{public}@ result %d", buf, 0x12u);
  }

  if (v22)
  {
    library = [(MailAccount *)self library];
    v64 = [library renameMailboxes:v59 to:v60];

    v26 = +[MailAccount log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [allObjects ef_mapSelector:sel_ef_publicDescription];
      *buf = 138543618;
      v77 = v27;
      v78 = 1024;
      LODWORD(v79) = v64;
      _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "Renaming mailboxes in the database %{public}@ result %d", buf, 0x12u);
    }

    if ((v64 & ((attributes & 3) == 0)) == 1)
    {
      stringByDeletingPathExtension = [fullPath stringByDeletingPathExtension];

      if ([defaultManager fileExistsAtPath:stringByDeletingPathExtension])
      {
        v29 = stringByDeletingPathExtension;
        fileSystemRepresentation3 = [stringByDeletingPathExtension fileSystemRepresentation];
        stringByDeletingPathExtension2 = [fullPath2 stringByDeletingPathExtension];
        v32 = stringByDeletingPathExtension2;
        fileSystemRepresentation4 = [stringByDeletingPathExtension2 fileSystemRepresentation];
        rename(fileSystemRepresentation3, fileSystemRepresentation4, v34);
        v64 = v35 == 0;
      }

      else
      {
        v64 = 1;
      }

      v36 = +[MailAccount log];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription3 = [v68 ef_publicDescription];
        *buf = 138543618;
        v77 = ef_publicDescription3;
        v78 = 1024;
        LODWORD(v79) = v64;
        _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_DEFAULT, "Renaming file that requires two renames at new path for mailbox %{public}@ result %d", buf, 0x12u);
      }

      fullPath = stringByDeletingPathExtension;
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
    mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath = [fullPath mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
    v42 = [v39 stringWithFormat:v40, mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
    v38 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v42];
  }

  localizedDescription = [v38 localizedDescription];

  if (localizedDescription)
  {
    v44 = +[MFActivityMonitor currentMonitor];
    [v44 setError:v38];
  }

  if ((([parentCopy isEqual:parent] | v64 ^ 1) & 1) == 0 && objc_msgSend(objc_opt_class(), "mailboxListingNotificationsAreEnabled"))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v46 = [MEMORY[0x1E696AD80] notificationWithName:@"AccountMailboxListingDidChange" object:parent userInfo:0];
    [defaultCenter postNotification:v46];

    v47 = +[MailAccount log];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription4 = [v68 ef_publicDescription];
      *buf = 138543362;
      v77 = ef_publicDescription4;
      _os_log_impl(&dword_1B0389000, v47, OS_LOG_TYPE_DEFAULT, "Successfully renamed mailbox %{public}@", buf, 0xCu);
    }
  }

  if (parentCopy && -[MailAccount cacheHasBeenRead](self, "cacheHasBeenRead") && [objc_opt_class() mailboxListingNotificationsAreEnabled])
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v50 = [MEMORY[0x1E696AD80] notificationWithName:@"AccountMailboxListingDidChange" object:parentCopy userInfo:0];
    [defaultCenter2 postNotification:v50];
  }

  if (!v38)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v51 = allObjects;
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
          defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter3 postNotificationName:@"MFMailboxUidWasRenamedNotification" object:v55 userInfo:0];
        }

        v52 = [v51 countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v52);
    }
  }

  [(MailAccount *)self _synchronouslyLoadListingForParent:parentCopy];
  if (([parentCopy isEqual:parent] & 1) == 0)
  {
    [(MailAccount *)self _synchronouslyLoadListingForParent:parent];
  }

  [(MailAccount *)self _writeMailboxCacheWithPrejudice:1];
  clearMailboxUIDCache();

  v57 = *MEMORY[0x1E69E9840];
  return v64;
}

- (void)_resetAllMailboxURLs:(BOOL)ls
{
  lsCopy = ls;
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
        allMailboxUids = [(MailAccount *)self allMailboxUids];
        v9 = [allMailboxUids count];
        v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
        v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:v9];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v12 = allMailboxUids;
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
              uRLString = [v16 URLString];
              if (uRLString)
              {
                [v16 flushCriteria];
                uRLString2 = [v16 URLString];
                if (uRLString2 && ([uRLString isEqualToString:uRLString2] & 1) == 0)
                {
                  [v10 addObject:uRLString];
                  [v11 addObject:uRLString2];
                }
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v13);
        }

        if ([v11 count] && lsCopy)
        {
          library = [(MailAccount *)self library];
          [library renameMailboxes:v10 to:v11];
        }

        clearMailboxUIDCache();

        v6 = v21;
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  username = [(MFAccount *)self username];
  if (username)
  {
    v6 = username;
  }

  else
  {
    v6 = &stru_1F273A5E0;
  }

  v9.receiver = self;
  v9.super_class = MailAccount;
  [(MFAccount *)&v9 setUsername:usernameCopy];
  username2 = [(MFAccount *)self username];

  if (username2)
  {
    v8 = username2;
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

- (void)setHostname:(id)hostname
{
  hostnameCopy = hostname;
  hostname = [(MFAccount *)self hostname];
  if (hostname)
  {
    v6 = hostname;
  }

  else
  {
    v6 = &stru_1F273A5E0;
  }

  v9.receiver = self;
  v9.super_class = MailAccount;
  [(MFAccount *)&v9 setHostname:hostnameCopy];
  hostname2 = [(MFAccount *)self hostname];

  if (hostname2)
  {
    v8 = hostname2;
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

- (BOOL)isHostnameEquivalentTo:(id)to
{
  toCopy = to;
  hostname = [(MFAccount *)self hostname];
  if (hostname == toCopy)
  {
    v7 = 1;
  }

  else
  {
    hostname2 = [(MFAccount *)self hostname];
    v7 = [hostname2 isEqualToString:toCopy];
  }

  return v7;
}

- (BOOL)isAccountClassEquivalentTo:(id)to
{
  toCopy = to;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (v5 == toCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v7 isEqualToString:toCopy];
  }

  return v8;
}

- (void)setValueInAccountProperties:(id)properties forKey:(id)key
{
  propertiesCopy = properties;
  keyCopy = key;
  if (([keyCopy isEqual:@"Hostname"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqual:", @"Username") & 1) != 0 || objc_msgSend(keyCopy, "isEqual:", @"PortNumber"))
  {
    allMailboxUids = [(MailAccount *)self allMailboxUids];
    [allMailboxUids makeObjectsPerformSelector:sel_URLString];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10.receiver = self;
  v10.super_class = MailAccount;
  [(MFAccount *)&v10 setValueInAccountProperties:propertiesCopy forKey:keyCopy];
  if (v9)
  {
    [(MailAccount *)self _resetAllMailboxURLs:1];
  }
}

- (void)setConnectionError:(id)error
{
  errorCopy = error;
  [(MailAccount *)self mf_lock];
  objc_storeStrong(&self->_lastConnectionError, error);
  [(MailAccount *)self mf_unlock];
}

- (id)connectionError
{
  [(MailAccount *)self mf_lock];
  v3 = self->_lastConnectionError;
  [(MailAccount *)self mf_unlock];

  return v3;
}

- (id)storeForMailboxUid:(id)uid
{
  uidCopy = uid;
  v5 = uidCopy;
  if (!uidCopy || self->_rootMailboxUid == uidCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MFWeakObjectCache *)self->_messageStoresCache objectForKey:uidCopy];
  }

  return v6;
}

- (Class)storeClassForMailbox:(id)mailbox
{
  storeClass = [(MailAccount *)self storeClass];

  return storeClass;
}

- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name
{
  mailboxCopy = mailbox;
  nameCopy = name;
  v7 = [mailboxCopy childWithName:nameCopy];
  if (!v7)
  {
    v7 = [mailboxCopy childWithExtraAttribute:nameCopy];
  }

  return v7;
}

- (id)mailboxUidForRelativePath:(id)path create:(BOOL)create withOption:(int64_t)option
{
  createCopy = create;
  v34[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  pathComponents = [pathCopy pathComponents];
  v7 = [pathComponents count];
  rootMailbox = [(MailAccount *)self rootMailbox];
  [(MailAccount *)self mf_lock];
  v32 = 0;
  if (rootMailbox && v7)
  {
    v32 = 0;
    v9 = 0;
    v30 = 0;
    v10 = 1;
    do
    {
      v11 = [pathComponents objectAtIndex:v10 - 1];
      if (v7 == v10)
      {
        mailboxPathExtension = [(MailAccount *)self mailboxPathExtension];
        v13 = [v11 hasSuffix:mailboxPathExtension];

        if (v13)
        {
          stringByDeletingPathExtension = [v11 stringByDeletingPathExtension];

          v11 = stringByDeletingPathExtension;
        }
      }

      v15 = [(MailAccount *)self _uidNameForPathComponent:v11];
      v16 = [(MailAccount *)self _childOfMailbox:rootMailbox withComponentName:v15];

      if (!v16 && createCopy)
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

        v18 = [(MailAccount *)self _newMailboxWithParent:rootMailbox name:v15 attributes:v17 dictionary:0 withCreationOption:option];
        [(MailAccount *)self mf_lock];
        v19 = [(MailAccount *)self _childOfMailbox:rootMailbox withComponentName:v15];
        v16 = v19;
        if (v18 && !v19)
        {
          if (v32)
          {
            v34[0] = v18;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
            [rootMailbox setChildren:v20];
          }

          else
          {
            v32 = rootMailbox;
            mutableCopyOfChildren = [v32 mutableCopyOfChildren];

            v22 = mutableCopyOfChildren;
            if (!mutableCopyOfChildren)
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

      rootMailbox = v9;
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
    v9 = rootMailbox;
    v30 = 0;
  }

  [(MailAccount *)self mf_unlock];
  v26 = v9;

  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (MailAccount)accountWithURL:(id)l
{
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v27 = lCopy;
  scheme = [lCopy scheme];
  if (scheme)
  {
    ef_hostNilForEmpty = [lCopy ef_hostNilForEmpty];
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    mailAccounts = [self mailAccounts];
    v9 = [mailAccounts countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(mailAccounts);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          if ([v12 isActive])
          {
            [array insertObject:v12 atIndex:0];
          }

          else
          {
            [array addObject:v12];
          }
        }

        v9 = [mailAccounts countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = array;
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
          _URLScheme = [v17 _URLScheme];
          v19 = _URLScheme;
          if (_URLScheme)
          {
            v20 = [_URLScheme caseInsensitiveCompare:scheme] == 0;

            if (v20)
            {
              uniqueID = [v17 uniqueID];
              v22 = uniqueID;
              if (ef_hostNilForEmpty == uniqueID)
              {

LABEL_29:
                v24 = v17;
                goto LABEL_30;
              }

              if (ef_hostNilForEmpty)
              {
                v23 = [ef_hostNilForEmpty caseInsensitiveCompare:uniqueID] == 0;

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

+ (id)infoForURL:(id)l
{
  lCopy = l;
  v5 = [self accountWithURL:lCopy];
  v6 = [v5 _infoForMatchingURL:lCopy];

  return v6;
}

+ (id)accountIDFromMailboxURLString:(id)string urlScheme:(id)scheme
{
  stringCopy = string;
  schemeCopy = scheme;
  if (stringCopy)
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithString:stringCopy];
    v8 = v7;
    if (v7 && (!schemeCopy || ([v7 scheme], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", schemeCopy), v9, (v10 & 1) != 0)))
    {
      host = [v8 host];
    }

    else
    {
      host = 0;
    }
  }

  else
  {
    host = 0;
  }

  return host;
}

+ (id)URLForInfo:(id)info
{
  infoCopy = info;
  v4 = [infoCopy objectForKey:@"Account"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _URLForInfo:infoCopy];
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

+ (MailAccount)accountWithURLString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:stringCopy];
    v6 = [self accountWithURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mailboxUidForInfo:(id)info
{
  v4 = [info objectForKey:@"RelativePath"];
  v5 = [(MailAccount *)self mailboxUidForRelativePath:v4 create:0];

  return v5;
}

+ (id)mailboxUidFromActiveAccountsForURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = cachedMailboxUIDs();
    v5 = [v4 objectForKey:lCopy];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
      v11 = [MailAccount infoForURL:v10];

      v12 = [v11 objectForKeyedSubscript:@"Account"];
      v13 = [v12 mailboxUidForInfo:v11];
      if (v13)
      {
        v14 = +[MailAccount log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(MailAccount *)lCopy mailboxUidFromActiveAccountsForURL:v14];
        }

        v15 = cachedMailboxUIDs();
        v16 = [lCopy copy];
        [v15 setObject:v13 forKey:v16];
      }

      v6 = v13;
    }
  }

  else
  {
    mEMORY[0x1E699B780] = [MEMORY[0x1E699B780] sharedReporter];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [mEMORY[0x1E699B780] reportIssueType:v9 description:@"Account URL is nil"];

    v6 = 0;
  }

  return v6;
}

- (id)mailboxUidForURL:(id)l
{
  lCopy = l;
  if ([(MailAccount *)self ownsMailboxUidWithURL:lCopy])
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:lCopy];
    v6 = [(MailAccount *)self _infoForMatchingURL:v5];
    v7 = [(MailAccount *)self mailboxUidForInfo:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)ownsMailboxUidWithURL:(id)l
{
  lCopy = l;
  uRLString = [(MailAccount *)self URLString];
  v6 = [lCopy hasPrefix:uRLString];

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

+ (id)standardAccountClass:(Class)class valueForKey:(id)key
{
  keyCopy = key;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MailAccount_standardAccountClass_valueForKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (standardAccountClass_valueForKey__onceToken != -1)
  {
    dispatch_once(&standardAccountClass_valueForKey__onceToken, block);
  }

  v7 = standardAccountClass_valueForKey__sStandardAccountValues;
  v8 = NSStringFromClass(class);
  v9 = [v7 objectForKey:v8];

  v10 = [v9 objectForKey:keyCopy];

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

+ (id)predefinedValueForKey:(id)key
{
  v3 = [self standardAccountClass:self valueForKey:key];

  return v3;
}

- (void)setLibrary:(id)library
{
  v12 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (libraryCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MFLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412546;
        selfCopy = self;
        v10 = 2112;
        v11 = libraryCopy;
        _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "#Warning %@: Cannot set library to %@. See rdar://problem/42167098.", &v8, 0x16u);
      }

      libraryCopy = 0;
    }
  }

  library = self->_library;
  self->_library = libraryCopy;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)displayNameUsingSpecialNamesForMailboxUid:(id)uid
{
  uidCopy = uid;
  if ([uidCopy isSendLaterMailbox])
  {
    sendLaterDisplayName = [objc_opt_class() sendLaterDisplayName];
  }

  else
  {
    sendLaterDisplayName = 0;
  }

  return sendLaterDisplayName;
}

- (id)loggingIdentifier
{
  statisticsKind = [(MailAccount *)self statisticsKind];
  uniqueID = [(MFAccount *)self uniqueID];
  v5 = [uniqueID substringToIndex:8];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", statisticsKind, v5];

  return v6;
}

- (void)newActionsAdded
{
  taskManager = [(MailAccount *)self taskManager];
  v5 = taskManager;
  if (taskManager)
  {
    [taskManager checkForNewLocalActions];
  }

  else
  {
    replayHandler = [(MailAccount *)self replayHandler];
    [replayHandler newActionsAdded];
  }
}

- (void)addNewAction:(id)action
{
  actionCopy = action;
  replayHandler = [(MailAccount *)self replayHandler];
  [replayHandler addNewAction:actionCopy];
}

- (BOOL)hasEnoughInformationForEasySetup
{
  hostname = [(MFAccount *)self hostname];
  v4 = [hostname length];

  if (!v4)
  {
    return 0;
  }

  username = [(MFAccount *)self username];
  v6 = [username length];

  if (!v6)
  {
    return 0;
  }

  password = [(MFAccount *)self password];
  v8 = [password length] != 0;

  return v8;
}

- (BOOL)willPerformActionForChokePoint:(id)point coalescePoint:(id)coalescePoint result:(id *)result
{
  v38 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  coalescePointCopy = coalescePoint;
  v31 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:pointCopy];
  v29 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:coalescePointCopy];
  v9 = MFAutoFetchLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(MFAccount *)self ef_publicDescription];
    *buf = 138412802;
    v33 = ef_publicDescription;
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

  v14 = [(NSMutableDictionary *)currentChokedActions mf_objectForKey:pointCopy ofClass:objc_opt_class()];
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
    *result = [v14 objectForKeyedSubscript:coalescePointCopy];
    v21 = MFAutoFetchLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *result;
      *buf = 138412546;
      v33 = v22;
      v34 = 2112;
      v35 = v31;
      _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "Result: %@ returned for chokepoint: %@", buf, 0x16u);
    }

    [(MailAccount *)self mf_lock];
    v23 = [v14 objectForKey:@"MFMailboxDictClientCount"];

    v15 = v23;
    intValue = [v23 intValue];
    if (intValue < 2)
    {
      v26 = MFAutoFetchLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v31;
        _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "Removing choke point from current actions: %@", buf, 0xCu);
      }

      [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:pointCopy];
    }

    else
    {
      v25 = [MEMORY[0x1E696AD98] numberWithInt:(intValue - 1)];
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

- (void)didFinishActionForChokePoint:(id)point coalescePoint:(id)coalescePoint withResult:(id)result
{
  v33 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  coalescePointCopy = coalescePoint;
  resultCopy = result;
  v24 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:pointCopy];
  v22 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:coalescePointCopy];
  v11 = MFAutoFetchLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [(MFAccount *)self ef_publicDescription];
    *buf = 138413058;
    v26 = ef_publicDescription;
    v27 = 2112;
    v28 = v24;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = resultCopy;
    _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Account: %@ didFinishActionForChokePoint: %@ - coalescePoint: %@ - result: %@", buf, 0x2Au);
  }

  [(MailAccount *)self mf_lock];
  v13 = [(NSMutableDictionary *)self->_currentChokedActions objectForKey:pointCopy];
  v14 = [v13 objectForKey:@"MFMailboxDictLock"];
  v15 = [v13 objectForKey:@"MFMailboxDictClientCount"];
  intValue = [v15 intValue];
  if (intValue < 2)
  {
    [v14 unlock];
    v19 = MFAutoFetchLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v24;
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEFAULT, "Removing choke point from current actions: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_currentChokedActions removeObjectForKey:pointCopy];
  }

  else
  {
    if (!resultCopy)
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
      v28 = resultCopy;
      _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Updating result for for choke point: %@ - result: %@", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E696AD98] numberWithInt:(intValue - 1)];
    [v13 setObject:v18 forKey:@"MFMailboxDictClientCount"];

    [v13 setObject:resultCopy forKey:coalescePointCopy];
    [v14 unlockWithCondition:2];
  }

  [(MailAccount *)self mf_unlock];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)deliveryAccountWillBeRemoved:(id)removed
{
  removedCopy = removed;
  v4 = [(MailAccount *)self _deliveryAccountCreateIfNeeded:0];
  object = [removedCopy object];

  if (v4 == object)
  {
    [(MailAccount *)self setDeliveryAccount:0];
  }
}

- (id)pushedMailboxUids
{
  v2 = MEMORY[0x1E695DFD8];
  primaryMailboxUid = [(MailAccount *)self primaryMailboxUid];
  v4 = [v2 setWithObject:primaryMailboxUid];

  return v4;
}

+ (id)_accountWithPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [self mailboxUidForFileSystemPath:pathCopy create:0];
  v6 = v5;
  if (v5)
  {
    account = [v5 account];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = _accountsSortedByPath;
    account = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (account)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != account; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          path = [v11 path];
          v13 = [pathCopy isEqualToString:path];

          if (v13)
          {
            account = v11;
            goto LABEL_13;
          }
        }

        account = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (account)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v14 = *MEMORY[0x1E69E9840];

  return account;
}

- (BOOL)_setPath:(id)path
{
  pathCopy = path;
  if (pathCopy && ![(NSString *)self->_path isEqualToString:pathCopy])
  {
    v6 = [pathCopy copy];
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

- (void)_didBecomeActive:(BOOL)active
{
  activeCopy = active;
  if (!+[MFMailMessageLibrary canUsePersistence])
  {
    hookRegistry = 0;
    if (!activeCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    _configureMailboxCache(self);
    [(MailAccount *)self resetSpecialMailboxes];
    [hookRegistry accountBecameActive:self];
    goto LABEL_6;
  }

  v5 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v5 persistence];
  hookRegistry = [persistence hookRegistry];

  if (activeCopy)
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
  v10 = hookRegistry;
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

- (int)_emptyFrequencyForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = [(MFAccount *)self _objectForAccountInfoKey:key];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v10 = [v7 isEqualToString:&stru_1F273A5E0], v9 = v7, v10))
    {
      v9 = valueCopy;
    }
  }

  intValue = [v9 intValue];

  return intValue;
}

- (BOOL)shouldFetchAgainWithError:(id)error foregroundRequest:(BOOL)request
{
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = domain;
  if (!errorCopy)
  {
    goto LABEL_11;
  }

  if ([domain isEqualToString:*MEMORY[0x1E696A8B8]])
  {
    request = 0;
    goto LABEL_12;
  }

  if (![v7 isEqualToString:*MEMORY[0x1E696A798]])
  {
    if ([v7 isEqualToString:@"MFMessageErrorDomain"])
    {
      code = [errorCopy code];
      if ((code - 1032) <= 0x1C)
      {
        request = 0xE7FFF7Eu >> (code - 8);
      }

      else
      {
        request = 1;
      }

      goto LABEL_12;
    }

LABEL_11:
    request = 1;
    goto LABEL_12;
  }

  if ([errorCopy code] != 60)
  {
    request = 1;
  }

LABEL_12:

  return request;
}

- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary
{
  parentCopy = parent;
  nameCopy = name;
  uidCopy = uid;
  dictionaryCopy = dictionary;
  if (nameCopy)
  {
    if (!uidCopy)
    {
      v17 = [(MailAccount *)self _copyMailboxWithParent:parentCopy name:nameCopy attributes:attributes dictionary:dictionaryCopy];
      goto LABEL_8;
    }

    [uidCopy setAttributes:{objc_msgSend(uidCopy, "attributes") & 0xFFFFFE00 | attributes & 0x1FF}];
LABEL_6:
    v17 = uidCopy;
LABEL_8:
    v16 = v17;
    goto LABEL_9;
  }

  if (([uidCopy attributes] & 0x100) != 0)
  {
    goto LABEL_6;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (BOOL)_loadMailboxListingIntoCache:(id)cache attributes:(unsigned int)attributes children:(id)children parent:(id)parent
{
  v60 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  childrenCopy = children;
  parentCopy = parent;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"AccountMailboxListingWillLoad" object:0 userInfo:0];

  Mutable = 0;
  v49 = 0;
  v10 = 0;
  v50 = 0;
  do
  {
    ValueAtIndex = childrenCopy;
    theArray = v10;
    if (v10)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
    }

    v57 = ValueAtIndex;
    v12 = parentCopy;
    if (v49)
    {
      v12 = CFArrayGetValueAtIndex(v49, 0);
    }

    v53 = v12;
    mutableCopyOfChildren = [v53 mutableCopyOfChildren];
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

    v17 = [mutableCopyOfChildren count];
    if (v17)
    {
      v18 = v17 - 1;
      do
      {
        v19 = [mutableCopyOfChildren objectAtIndex:v18];
        name = [v19 name];
        v21 = [v56 objectForKey:name];
        if ([v55 containsObject:name])
        {
          v22 = +[MailAccount log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:name];
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
            unsignedIntValue = [v25 unsignedIntValue];

            v27 = [(MailAccount *)self _copyMailboxUidWithParent:v53 name:name attributes:unsignedIntValue existingMailboxUid:v19 dictionary:v21];
          }

          else
          {
            v27 = [(MailAccount *)self _copyMailboxUidWithParent:v53 name:0 attributes:0 existingMailboxUid:v19 dictionary:0];
          }

          v24 = v27;
        }

        [v55 addObject:name];
        if (v24)
        {
          name2 = [v24 name];
          if (([v24 isEqual:v19] & 1) == 0)
          {
            [mutableCopyOfChildren replaceObjectAtIndex:v18 withObject:v24];
            v50 = 1;
          }

          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
          }

          CFDictionarySetValue(Mutable, name2, v24);
          if (([name2 isEqualToString:name] & 1) == 0)
          {
            CFDictionarySetValue(Mutable, name, v24);
          }

          v29 = v21 == 0;
        }

        else
        {
          [mutableCopyOfChildren removeObjectAtIndex:v18];
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
    if (mutableCopyOfChildren)
    {
      [v31 addObjectsFromArray:mutableCopyOfChildren];
    }

    if (v30)
    {
      for (j = 0; v30 != j; ++j)
      {
        v34 = [v57 objectAtIndex:j];
        v35 = [v34 objectForKey:@"MailboxName"];
        v36 = [v34 objectForKey:@"MailboxAttributes"];
        unsignedIntValue2 = [v36 unsignedIntValue];

        v38 = [v34 objectForKey:@"MailboxChildren"];
        if (Mutable && (v39 = CFDictionaryGetValue(Mutable, v35)) != 0 || (v39 = [(MailAccount *)self _copyMailboxUidWithParent:v53 name:v35 attributes:unsignedIntValue2 existingMailboxUid:0 dictionary:v34]) != 0)
        {
          if ([v32 indexOfObjectIdenticalTo:v39] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v50 = 1;
            [v32 ef_insertObject:v39 usingSortFunction:_MFCompareMailboxUids context:0 allowDuplicates:1];
          }

          if (v38)
          {
            if ((unsignedIntValue2 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            hasChildren = [v39 hasChildren];
            if (unsignedIntValue2)
            {
              v41 = 0;
            }

            else
            {
              v41 = hasChildren;
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
  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"AccountMailboxListingDidLoad" object:0 userInfo:0];

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

- (void)setMailboxCachePath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy copy];
  mailboxCachePath = self->_mailboxCachePath;
  self->_mailboxCachePath = v4;
}

- (void)_loadEntriesFromFileSystemPath:(id)path parent:(id)parent
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  parentCopy = parent;
  v25 = objc_autoreleasePoolPush();
  v6 = [pathCopy length];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v26 = [defaultManager contentsOfDirectoryAtPath:pathCopy error:0];

  theArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  context[0] = self;
  context[1] = pathCopy;
  context[2] = parentCopy;
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
          [pathCopy appendString:@"/"];
          [pathCopy appendString:v11];
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v13 = [defaultManager2 fileExistsAtPath:pathCopy isDirectory:&v31];
          v14 = v31;

          if ((v13 & v14) != 0)
          {
            mailboxPathExtension = [(MailAccount *)self mailboxPathExtension];
            pathExtension = [v11 pathExtension];
            v17 = [mailboxPathExtension isEqualToString:pathExtension];

            if (v17)
            {
              stringByDeletingPathExtension = [v11 stringByDeletingPathExtension];
            }

            else
            {
              stringByDeletingPathExtension = v11;
            }

            v19 = stringByDeletingPathExtension;
            v20 = [(MailAccount *)self _uidNameForPathComponent:stringByDeletingPathExtension];

            v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v20, @"MailboxName", &unk_1F2775838, @"MailboxAttributes", 0}];
            [(__CFArray *)theArray addObject:v21];
          }

          [pathCopy deleteCharactersInRange:{v6, objc_msgSend(pathCopy, "length") - v6}];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  name = [parentCopy name];
  v23 = [(MailAccount *)self _loadMailboxListingIntoCache:name attributes:2 children:theArray parent:parentCopy];

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

- (void)_writeMailboxCacheWithPrejudice:(BOOL)prejudice completionHandler:(id)handler
{
  prejudiceCopy = prejudice;
  v41 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_flagsLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagsLock);
  v8 = +[MFMailMessageLibrary canUsePersistence];
  v9 = (*&flags >> 17) & 1;
  if ((*&flags & 0xFFFEu) <= 9)
  {
    v9 = 0;
  }

  if (v8 & (prejudiceCopy | v9))
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [(MailAccount *)self path];
    v12 = [defaultManager fileExistsAtPath:path];

    if ((v12 & 1) == 0)
    {
      path2 = [(MailAccount *)self path];
      [path2 mf_makeDirectoryWithMode:448];
    }

    mailboxCachePath = [(MailAccount *)self mailboxCachePath];
    [(MailAccount *)self mf_lock];
    v29 = mailboxCachePath;
    children = [(MFMailboxUid *)self->_rootMailboxUid children];
    v16 = [children count];
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v16];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = children;
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

            dictionaryRepresentation = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
            [v17 addObject:dictionaryRepresentation];
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
        selfCopy = self;
        v34 = handlerCopy;
        dispatch_async(v25, block);
      }

      else
      {
        v27 = MFLogGeneral();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [MailAccount _writeMailboxCacheWithPrejudice:completionHandler:];
        }

        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy);
        }
      }
    }

    else
    {
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
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
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
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

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  childrenCopy = children;
  v7 = childrenCopy;
  uidCopy = uid;
  mutableCopyOfChildren = [uidCopy mutableCopyOfChildren];
  v10 = mutableCopyOfChildren;
  if (!childrenCopy)
  {
    v7 = mutableCopyOfChildren;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v11 = [uidCopy setChildren:v7] ^ 1;
  if (!childrenCopy)
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
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v13 = MEMORY[0x1E696AD80];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"OldChildren", v7, @"NewChildren", 0}];
      v15 = [v13 notificationWithName:@"AccountMailboxListingDidChange" object:uidCopy userInfo:v14];
      [defaultCenter postNotification:v15];
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

- (id)powerAssertionIdentifierWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  displayName = [(MailAccount *)self displayName];
  if ([displayName length])
  {
    displayName2 = [(MailAccount *)self displayName];
  }

  else
  {
    displayName2 = &stru_1F273A5E0;
  }

  uniqueID = [(MFAccount *)self uniqueID];
  v8 = [prefixCopy stringByAppendingFormat:@"-%@-(%@)", uniqueID, displayName2];

  return v8;
}

+ (void)_setOutboxMailboxUid:(id)uid
{
  uidCopy = uid;
  [self mf_lock];
  v5 = uidCopy;
  if (_outboxUid != uidCopy)
  {
    objc_storeStrong(&_outboxUid, uid);
    [_outboxUid setMailboxType:6];
    v5 = uidCopy;
  }

  if ([v5 isValid])
  {
    account = [uidCopy account];
    parent = [uidCopy parent];
    [account _setChildren:0 forMailboxUid:parent];
  }

  [self mf_unlock];
}

- (id)_defaultSpecialMailboxNameForType:(int64_t)type
{
  if ((type - 1) > 6)
  {
    return 0;
  }

  else
  {
    return off_1E7AA3300[type - 1];
  }
}

- (id)_cachedSpecialMailboxOfType:(int64_t)type
{
  [(MFLock *)self->_cachedMailboxenLock lock];
  v5 = type - 1;
  if (type - 1) <= 6 && ((0x5Fu >> v5))
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

- (BOOL)_assignSpecialMailboxToAppropriateIvar:(id)ivar forType:(int64_t)type
{
  ivarCopy = ivar;
  [(MFLock *)self->_cachedMailboxenLock lock];
  v8 = type - 1;
  if ((type - 1) >= 7 || ((0x5Fu >> v8) & 1) == 0)
  {
    v10 = 0;
    v15 = 0;
    v16 = 0;
    v13 = ivarCopy != 0;
    goto LABEL_10;
  }

  v9 = *(&self->super.super.isa + *off_1E7AA3338[v8]);
  v10 = v9;
  if (v9 == ivarCopy)
  {
    v13 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  [v9 setMailboxType:0];
  [v10 setRepresentedAccount:0];
  [ivarCopy setMailboxType:type];
  parent = [v10 parent];
  parent2 = [ivarCopy parent];
  v13 = 1;
  if (type > 3)
  {
    switch(type)
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
    v15 = parent;
    v16 = parent2;
    goto LABEL_10;
  }

  if (type == 1)
  {
    v14 = 160;
    goto LABEL_26;
  }

  if (type == 2)
  {
    v14 = 152;
    goto LABEL_26;
  }

  if (type != 3)
  {
    goto LABEL_23;
  }

  v14 = 144;
LABEL_26:
  v16 = parent2;
  objc_storeStrong((&self->super.super.isa + v14), ivar);
  v15 = parent;
LABEL_10:
  [(MFLock *)self->_cachedMailboxenLock unlock];
  if (v16)
  {
    account = [v16 account];
    [account _setChildren:0 forMailboxUid:v16];
  }

  if (v15 && v16 != v15)
  {
    account2 = [v15 account];
    [account2 _setChildren:0 forMailboxUid:v15];
  }

  return v13;
}

- (void)_setSpecialMailboxName:(id)name forType:(int64_t)type
{
  nameCopy = name;
  [(MailAccount *)self mf_lock];
  if ((type - 1) < 5)
  {
    v6 = off_1E7AA3370[type - 1];
    if (nameCopy)
    {
      [(MFAccount *)self setAccountProperty:nameCopy forKey:v6];
    }

    else
    {
      [(MFAccount *)self removeAccountPropertyForKey:v6];
    }
  }

  [(MailAccount *)self mf_unlock];
}

- (void)_setSpecialMailbox:(id)mailbox forType:(int64_t)type
{
  mailboxCopy = mailbox;
  accountRelativePath = [mailboxCopy accountRelativePath];
  v7 = [(MailAccount *)self specialMailboxNameForType:type];
  v8 = v7;
  if (accountRelativePath != v7)
  {
    v9 = v7 ? v7 : &stru_1F273A5E0;
    if (([(__CFString *)accountRelativePath isEqualToString:v9]& 1) == 0)
    {
      [(MailAccount *)self _setSpecialMailboxName:accountRelativePath forType:type];
      [(MailAccount *)self _assignSpecialMailboxToAppropriateIvar:mailboxCopy forType:type];
    }
  }
}

- (BOOL)_shouldLogDeleteActivity
{
  v2 = sLogDeleteActivity;
  if (sLogDeleteActivity == -1)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [standardUserDefaults BOOLForKey:@"LogDeleteActivity"];

    sLogDeleteActivity = v2;
  }

  return v2 == 1;
}

- (id)_infoForMatchingURL:(id)l
{
  lCopy = l;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  relativePath = [lCopy relativePath];
  [dictionary setObject:self forKey:@"Account"];
  v8 = [relativePath rangeOfString:@"/" options:8];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [relativePath substringWithRange:{v8 + v7, objc_msgSend(relativePath, "length") - (v8 + v7)}];

    relativePath = v9;
  }

  if (relativePath && ([relativePath isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    [dictionary setObject:relativePath forKey:@"RelativePath"];
  }

  return dictionary;
}

- (id)_URLForInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
  uniqueID = [(MFAccount *)self uniqueID];
  [v5 setHost:uniqueID];

  _URLScheme = [(MailAccount *)self _URLScheme];
  [v5 setScheme:_URLScheme];

  v8 = [infoCopy objectForKey:@"RelativePath"];
  if (v8)
  {
    v9 = [@"/" stringByAppendingPathComponent:v8];
    [v5 setPath:v9];
  }

  v10 = [v5 URL];

  return v10;
}

- (id)uniqueServerIdForMessage:(id)message
{
  globalMessageURL = [message globalMessageURL];
  absoluteString = [globalMessageURL absoluteString];

  return absoluteString;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v4 = [(MFAccount *)self _objectForAccountInfoKey:@"SMTPIdentifier"];
  if (v4)
  {
    if (neededCopy)
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

- (id)_copyMailboxWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes dictionary:(id)dictionary
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  v11 = [MFMailboxUid alloc];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"MailboxExtraAttributes"];
  v13 = [(MFMailboxUid *)v11 initWithName:nameCopy attributes:attributes forAccount:self extraAttributes:v12];

  return v13;
}

- (id)newMailboxWithParent:(id)parent name:(id)name
{
  parentCopy = parent;
  nameCopy = name;
  account = [parentCopy account];
  rootMailbox = [account rootMailbox];
  v10 = [parentCopy pathRelativeToMailbox:rootMailbox];

  v11 = [v10 stringByAppendingPathComponent:nameCopy];
  v12 = [(MailAccount *)self mailboxUidForRelativePath:v11 create:1];

  return v12;
}

+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  LOBYTE(self) = [self canMoveMessagesFromAccount:accountCopy toAccount:toAccountCopy profileConnection:mEMORY[0x1E69ADFB8]];

  return self;
}

+ (BOOL)canMoveMessagesFromAccount:(id)account toAccount:(id)toAccount profileConnection:(id)connection
{
  accountCopy = account;
  toAccountCopy = toAccount;
  connectionCopy = connection;
  if (accountCopy == toAccountCopy)
  {
    goto LABEL_8;
  }

  if (([accountCopy restrictedFromTransferingMessagesToOtherAccounts] & 1) != 0 || !objc_msgSend(toAccountCopy, "supportsAppend"))
  {
    v12 = 0;
    goto LABEL_9;
  }

  sourceIsManaged = [accountCopy sourceIsManaged];
  if (sourceIsManaged == [toAccountCopy sourceIsManaged])
  {
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  if ([accountCopy sourceIsManaged])
  {
    mayOpenFromManagedToUnmanaged = [connectionCopy mayOpenFromManagedToUnmanaged];
  }

  else
  {
    mayOpenFromManagedToUnmanaged = [connectionCopy mayOpenFromUnmanagedToManaged];
  }

  v12 = mayOpenFromManagedToUnmanaged;
LABEL_9:

  return v12;
}

- (id)_localMailboxNameForType:(int64_t)type usingDisplayName:(id)name
{
  nameCopy = name;
  v7 = +[LocalAccount localAccount];
  v8 = [v7 specialMailboxNameForType:type];
  if (v8)
  {
    if (!nameCopy)
    {
LABEL_5:
      displayName = [(MailAccount *)self displayName];
      nameCopy = displayName;
      if (!displayName || [displayName isEqualToString:&stru_1F273A5E0])
      {
        firstEmailAddress = [(MailAccount *)self firstEmailAddress];

        nameCopy = firstEmailAddress;
        if (!firstEmailAddress)
        {
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v8 = [v7 _defaultSpecialMailboxNameForType:type];
    if (!nameCopy)
    {
      goto LABEL_5;
    }
  }

  if (([nameCopy isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    nameCopy = [v8 stringByAppendingFormat:@" (%@)", nameCopy];

    v8 = nameCopy;
  }

LABEL_10:

  return v8;
}

- (id)allLocalMailboxUids
{
  v3 = 0;
  array = 0;
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
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        [array addObject:v6];
      }
    }

    v3 += 8;
  }

  while (v3 != 40);
  v7 = *MEMORY[0x1E69E9840];

  return array;
}

+ (void)_removeLookAsideValuesNotInAccountList:(id)list
{
  v26 = *MEMORY[0x1E69E9840];
  listCopy = list;
  v4 = MFUserAgent();
  isMaild = [v4 isMaild];

  if (isMaild)
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    v7 = [em_userDefaults dictionaryForKey:@"com.apple.MailAccount-ExtProperties"];
    v8 = [v7 mutableCopy];

    allKeys = [v8 allKeys];
    if ([allKeys count])
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = listCopy;
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

            identifier = [*(*(&v19 + 1) + 8 * v14) identifier];
            [v10 addObject:identifier];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v12);
      }

      v16 = [allKeys mutableCopy];
      [v16 removeObjectsInArray:v10];
      [v8 removeObjectsForKeys:v16];
      v17 = MFLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "Removing lookaside properties for accounts with identifiers: %@", buf, 0xCu);
      }

      [em_userDefaults setObject:v8 forKey:@"com.apple.MailAccount-ExtProperties"];
      [em_userDefaults synchronize];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)valueInAccountLookAsidePropertiesForKey:(id)key
{
  keyCopy = key;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v6 = [em_userDefaults dictionaryForKey:@"com.apple.MailAccount-ExtProperties"];

  identifier = [(MFAccount *)self identifier];
  v8 = [v6 objectForKeyedSubscript:identifier];

  v9 = [v8 objectForKeyedSubscript:keyCopy];

  return v9;
}

- (void)setValueInAccountLookAsideProperties:(id)properties forKey:(id)key
{
  propertiesCopy = properties;
  keyCopy = key;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v8 = [em_userDefaults dictionaryForKey:@"com.apple.MailAccount-ExtProperties"];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  identifier = [(MFAccount *)self identifier];
  v11 = [v9 objectForKeyedSubscript:identifier];
  if (v11)
  {
    v12 = [v9 objectForKeyedSubscript:identifier];
    v13 = [v12 mutableCopy];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (propertiesCopy)
  {
    [v13 setObject:propertiesCopy forKey:keyCopy];
  }

  else
  {
    [v13 removeObjectForKey:keyCopy];
  }

  [v9 setObject:v13 forKeyedSubscript:identifier];
  [em_userDefaults setObject:v9 forKey:@"com.apple.MailAccount-ExtProperties"];
  [em_userDefaults synchronize];
}

- (void)_setValueInAccountLookAsideProperties:(id)properties forKey:(id)key subKey:(id)subKey
{
  v17[1] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  keyCopy = key;
  subKeyCopy = subKey;
  v11 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:keyCopy];
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MailAccount _setValueInAccountLookAsideProperties:forKey:subKey:]", "MailAccount.m", 4113, "[dictionary isKindOfClass:[NSDictionary class]]");
    }

    v12 = [v11 mutableCopy];
    v13 = v12;
    if (propertiesCopy)
    {
      [v12 setObject:propertiesCopy forKey:subKeyCopy];
    }

    else
    {
      [v12 removeObjectForKey:subKeyCopy];
    }

    [(MailAccount *)self setValueInAccountLookAsideProperties:v13 forKey:keyCopy];
  }

  else if (propertiesCopy)
  {
    v16 = subKeyCopy;
    v17[0] = propertiesCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [(MailAccount *)self setValueInAccountLookAsideProperties:v14 forKey:keyCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)signingIdentityPersistentReferenceForAddress:(id)address
{
  addressCopy = address;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"SendingIdentities"];
  v6 = [v5 objectForKey:addressCopy];

  return v6;
}

- (id)encryptionIdentityPersistentReferenceForAddress:(id)address
{
  addressCopy = address;
  v5 = [(MailAccount *)self valueInAccountLookAsidePropertiesForKey:@"EncryptionIdentities"];
  v6 = [v5 objectForKey:addressCopy];

  return v6;
}

- (BOOL)perMessageEncryptionEnabledForAddress:(id)address
{
  addressCopy = address;
  v5 = [(MailAccount *)self encryptionIdentityPersistentReferenceForAddress:addressCopy];

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

- (int64_t)secureCompositionSigningPolicyForAddress:(id)address
{
  addressCopy = address;
  emailAddressValue = [addressCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v7 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [addressCopy stringValue];
  }

  v9 = stringValue;

  firstEmailAddress = [(MailAccount *)self firstEmailAddress];
  emailAddressValue2 = [firstEmailAddress emailAddressValue];
  simpleAddress2 = [emailAddressValue2 simpleAddress];
  v13 = simpleAddress2;
  if (simpleAddress2)
  {
    stringValue2 = simpleAddress2;
  }

  else
  {
    stringValue2 = [firstEmailAddress stringValue];
  }

  v15 = stringValue2;

  v16 = [v9 isEqualToString:v15];
  if (v16)
  {
    v17 = [(MFAccount *)self accountPropertyForKey:@"SMIMESigningEnabled"];
    bOOLValue = [v17 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)secureCompositionEncryptionPolicyForAddress:(id)address
{
  addressCopy = address;
  emailAddressValue = [addressCopy emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v7 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [addressCopy stringValue];
  }

  v9 = stringValue;

  firstEmailAddress = [(MailAccount *)self firstEmailAddress];
  emailAddressValue2 = [firstEmailAddress emailAddressValue];
  simpleAddress2 = [emailAddressValue2 simpleAddress];
  v13 = simpleAddress2;
  if (simpleAddress2)
  {
    stringValue2 = simpleAddress2;
  }

  else
  {
    stringValue2 = [firstEmailAddress stringValue];
  }

  v15 = stringValue2;

  v16 = [v9 isEqualToString:v15];
  if (v16)
  {
    v17 = [(MFAccount *)self accountPropertyForKey:@"SMIMEEncryptionEnabled"];
    bOOLValue = [v17 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)preventArchiveForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v5 = ![(MailAccount *)self supportsArchiving];
  if (!mailboxCopy)
  {
    LOBYTE(v5) = 1;
  }

  v6 = (v5 & 1) == 0 && ([mailboxCopy mailboxType] - 1) < 5;

  return v6;
}

- (BOOL)canArchiveForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([(MailAccount *)self supportsArchiving])
  {
    v5 = ![(MailAccount *)self preventArchiveForMailbox:mailboxCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (int64_t)archiveDestinationForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (![(MailAccount *)self supportsArchiving])
  {
    __assert_rtn("[MailAccount archiveDestinationForMailbox:]", "MailAccount.m", 4263, "[self supportsArchiving] && only accounts that support archiving should call into this");
  }

  if ([(MailAccount *)self canArchiveForMailbox:mailboxCopy])
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (BOOL)supportsHandoffType:(id)type
{
  typeCopy = type;
  unsupportedHandoffTypes = [(MailAccount *)self unsupportedHandoffTypes];
  v6 = [unsupportedHandoffTypes containsObject:typeCopy];

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
  identifier = [(MFAccount *)self identifier];
  lastKnownCapabilities = [(MailAccount *)self lastKnownCapabilities];
  v6 = [(MFDebugAccountState *)v3 initWithStateEventDictionary:self identifier:identifier lastKnownCapabilities:lastKnownCapabilities];

  v11 = @"Account Info";
  dictionaryRepresentation = [(MFDebugAccountState *)v6 dictionaryRepresentation];
  v12[0] = dictionaryRepresentation;
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
  *(buf + 4) = self;
  *(buf + 6) = 1024;
  *(buf + 14) = a2 & 1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "%{public}@: shouldArchiveByDefault: Get BOOL for account info key: %{BOOL}d", buf, 0x12u);
}

@end