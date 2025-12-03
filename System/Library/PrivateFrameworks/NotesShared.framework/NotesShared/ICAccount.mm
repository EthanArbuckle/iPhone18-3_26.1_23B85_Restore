@interface ICAccount
+ (BOOL)clearAccountForAppleCloudKitTable;
+ (BOOL)hasModernAccountInContext:(id)context;
+ (BOOL)hidesCallNotesInCustomFolders;
+ (BOOL)hidesMathNotesInCustomFolders;
+ (BOOL)hidesSystemPaperNotesInCustomFolders;
+ (BOOL)isCloudKitAccountAvailable;
+ (BOOL)isCloudKitAccountAvailableInContext:(id)context;
+ (ICAccount)accountWithIdentifier:(id)identifier context:(id)context;
+ (ICAccountUtilities)accountUtilities;
+ (id)accountsWithAccountType:(int)type context:(id)context;
+ (id)activeAccountWithUserRecordName:(id)name context:(id)context;
+ (id)allAccountIdentifiersInContext:(id)context;
+ (id)allAccountsInContext:(id)context;
+ (id)allActiveAccountsInContext:(id)context sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching;
+ (id)allActiveAccountsInContextSortedByAccountType:(id)type;
+ (id)allActiveAccountsInContextWithDefaultBeingFirstIfApplicable:(id)applicable;
+ (id)allActiveCloudKitAccountsInContext:(id)context;
+ (id)allCloudObjectIDsInContext:(id)context passingTest:(id)test;
+ (id)cloudKitAccountInContext:(id)context;
+ (id)cloudKitAccountWithIdentifier:(id)identifier context:(id)context;
+ (id)cloudKitIfMigratedElseLocalAccountInContext:(id)context;
+ (id)defaultAccountInContext:(id)context;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)inMemoryAccountInContext:(id)context;
+ (id)localAccountInContext:(id)context;
+ (id)localizedLocalAccountName;
+ (id)localizedLocalAccountNameMidSentence;
+ (id)mostRecentSystemPaperNoteInManagedObjectContext:(id)context;
+ (id)newAccountWithIdentifier:(id)identifier type:(int)type context:(id)context persistentStore:(id)store;
+ (id)newLocalAccountInContext:(id)context;
+ (id)passwordProtectedNoteIdentifiersInAccountIdentifier:(id)identifier context:(id)context;
+ (id)standardFolderIdentifierWithPrefix:(id)prefix accountIdentifier:(id)identifier accountType:(int)type;
+ (unint64_t)numberOfCloudKitAccountsInContext:(id)context onlyMigrated:(BOOL)migrated;
+ (void)deleteAccount:(id)account;
+ (void)deleteAccountWithBatchDelete:(id)delete;
+ (void)enumerateAllCloudObjectsInContext:(id)context batchSize:(unint64_t)size saveAfterBatch:(BOOL)batch usingBlock:(id)block;
+ (void)initialize;
+ (void)initializeLocalAccountNamesInBackground;
+ (void)localeDidChange:(id)change;
+ (void)setHidesCallNotesInCustomFolders:(BOOL)folders;
+ (void)setHidesMathNotesInCustomFolders:(BOOL)folders;
+ (void)setHidesSystemPaperNotesInCustomFolders:(BOOL)folders;
- (BOOL)canPasswordProtectNotes;
- (BOOL)containsSharedFolders;
- (BOOL)hasAnyCustomFoldersIncludingSystem:(BOOL)system;
- (BOOL)isDataSeparated;
- (BOOL)isInICloudAccount;
- (BOOL)isLocalAccount;
- (BOOL)isManaged;
- (BOOL)isPrimaryiCloudAccount;
- (BOOL)isShowingDateHeaders;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)needsToBePushedToCloud;
- (BOOL)supportsDateHeaders;
- (BOOL)visibleRootFoldersContainFolderWithTitle:(id)title;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (ICAccountProxy)accountProxy;
- (ICFolder)defaultFolder;
- (ICFolder)trashFolder;
- (NSPersistentStore)persistentStore;
- (NSString)altDSID;
- (NSString)dsid;
- (NSString)localizedName;
- (NSString)searchIndexingIdentifier;
- (NSString)username;
- (id)accountDataCreateIfNecessary;
- (id)accountFilesDirectoryURL;
- (id)accountFilesDirectoryURLInApplicationDataContainer;
- (id)allChildObjects;
- (id)allItemsFolderLocalizedTitle;
- (id)cacheKey;
- (id)customRootLevelFolders;
- (id)exportableMediaDirectoryURL;
- (id)fallbackImageDirectoryURL;
- (id)fallbackPDFDirectoryURL;
- (id)folderWithIdentifier:(id)identifier;
- (id)ic_loggingIdentifier;
- (id)ic_loggingValues;
- (id)localizedNameMidSentence;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)mediaDirectoryURL;
- (id)passwordProtectedNotes;
- (id)predicateForCustomFolders;
- (id)predicateForFolders;
- (id)predicateForPinnedNotes;
- (id)predicateForSearchableAttachments;
- (id)predicateForVisibleAttachments;
- (id)predicateForVisibleAttachmentsIncludingTrash;
- (id)predicateForVisibleFolders;
- (id)predicateForVisibleNotes;
- (id)predicateForVisibleNotesIncludingTrash;
- (id)previewImageDirectoryURL;
- (id)replicaIDForBundleIdentifier:(id)identifier;
- (id)reservedAccountFolderTitles;
- (id)searchableTextContent;
- (id)standardFolderIdentifierWithPrefix:(id)prefix;
- (id)subFolderIdentifiersOrderedSet;
- (id)subFolderOrderMergeableData;
- (id)systemPaperBundlesDirectoryURL;
- (id)systemPaperDirectoryURL;
- (id)systemPaperNotes;
- (id)systemPaperTemporaryDirectoryURL;
- (id)temporaryDirectoryURL;
- (id)uniqueUserParticipants;
- (id)visibleFolders;
- (id)visibleFoldersWithParent:(id)parent;
- (id)visibleNoteContainerChildren;
- (id)visibleNoteContainers;
- (id)visibleNotes;
- (id)visibleRootFolderWithTitle:(id)title;
- (id)visibleSubFolders;
- (int64_t)compare:(id)compare;
- (signed)resolvedLockedNotesMode;
- (unint64_t)indexOfCustomRootLevelFolder:(id)folder;
- (unint64_t)visibleAttachmentsIncludingTrashCount;
- (unint64_t)visibleCustomFoldersCount;
- (unint64_t)visibleInCloudNotesIncludingTrashCount;
- (unint64_t)visibleNotesCount;
- (unint64_t)visibleNotesIncludingTrashCount;
- (void)addTrashObserversIfNecessary;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)createDefaultFolder;
- (void)createStandardFolders;
- (void)createTrashFolder;
- (void)dealloc;
- (void)deleteUnusedHashtagsWithStandardizedContent:(id)content;
- (void)ensureCriticalPaperDirectoriesExist;
- (void)managedObjectContextDidSave:(id)save;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performBlockInPersonaContext:(id)context;
- (void)performBlockInPersonaContextIfNecessary:(id)necessary;
- (void)prepareForDeletion;
- (void)removeTrashObserversIfNecessary;
- (void)setAccountType:(int)type;
- (void)setDidChooseToMigrate:(BOOL)migrate;
- (void)setMarkedForDeletion:(BOOL)deletion;
- (void)setName:(id)name;
- (void)setResolvedLockedNotesMode:(signed __int16)mode;
- (void)setSubFolderOrderMergeableData:(id)data;
- (void)setUserRecordName:(id)name;
- (void)updateAccountNameForAccountListSorting;
- (void)updateFullNameAndEmail:(id)email;
- (void)updateSubFolderMergeableDataChangeCount;
- (void)updateTrashFolderHiddenNoteContainerState;
- (void)willTurnIntoFault;
@end

@implementation ICAccount

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v4 = accountForAppleCloudKitTable;
    accountForAppleCloudKitTable = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v6 = accountsForAppleCloudKitTable;
    accountsForAppleCloudKitTable = weakToStrongObjectsMapTable2;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }
}

+ (id)localizedLocalAccountName
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = localizedLocalAccountName;
  if (localizedLocalAccountName)
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [ICAccount localizedLocalAccountNameMidSentence:0];
    v5 = localizedLocalAccountName;
    localizedLocalAccountName = v4;

    v3 = localizedLocalAccountName;
LABEL_4:
    v6 = v3;
    goto LABEL_5;
  }

  v6 = @"On My Device";
LABEL_5:
  objc_sync_exit(v2);

  return v6;
}

- (void)awakeFromFetch
{
  v5.receiver = self;
  v5.super_class = ICAccount;
  [(ICCloudSyncingObject *)&v5 awakeFromFetch];
  identifier = [(ICAccount *)self identifier];
  v4 = [identifier isEqualToString:@"LocalAccount"];

  if (v4)
  {
    [(ICAccount *)self setAccountType:3];
  }
}

- (id)predicateForVisibleFolders
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCA920]);
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICFolder predicateForVisibleFoldersInContext:managedObjectContext];
  v10[0] = v5;
  predicateForFolders = [(ICAccount *)self predicateForFolders];
  v10[1] = predicateForFolders;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 initWithType:1 subpredicates:v7];

  return v8;
}

- (ICFolder)trashFolder
{
  trashFolder = self->_trashFolder;
  if (!trashFolder)
  {
    trashFolderIdentifier = [(ICAccount *)self trashFolderIdentifier];
    v5 = [(ICAccount *)self folderWithIdentifier:trashFolderIdentifier];
    v6 = self->_trashFolder;
    self->_trashFolder = v5;

    v7 = self->_trashFolder;
    if (!v7)
    {
      [(ICAccount *)self createTrashFolder];
      v7 = self->_trashFolder;
    }

    if ([(ICFolder *)v7 markedForDeletion])
    {
      [(ICFolder *)self->_trashFolder setMarkedForDeletion:0];
    }

    [(ICAccount *)self addTrashObserversIfNecessary];
    trashFolder = self->_trashFolder;
  }

  return trashFolder;
}

- (id)visibleFolders
{
  predicateForVisibleFolders = [(ICAccount *)self predicateForVisibleFolders];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICFolder foldersMatchingPredicate:predicateForVisibleFolders context:managedObjectContext];

  return v5;
}

- (id)predicateForFolders
{
  v2 = MEMORY[0x277CCAC30];
  identifier = [(ICAccount *)self identifier];
  v4 = [v2 predicateWithFormat:@"account.identifier == %@", identifier];

  return v4;
}

- (void)updateTrashFolderHiddenNoteContainerState
{
  trashFolder = [(ICAccount *)self trashFolder];
  managedObjectContext = [trashFolder managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ICAccount_updateTrashFolderHiddenNoteContainerState__block_invoke;
  v5[3] = &unk_278194B00;
  v6 = trashFolder;
  v4 = trashFolder;
  [managedObjectContext performBlockAndWait:v5];
}

uint64_t __54__ICAccount_updateTrashFolderHiddenNoteContainerState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) visibleNotesCount];
    result = [*(a1 + 32) isHiddenNoteContainer];
    if ((v3 == 0) != result)
    {
      v4 = *(a1 + 32);

      return [v4 setIsHiddenNoteContainer:v3 == 0];
    }
  }

  return result;
}

- (ICFolder)defaultFolder
{
  defaultFolder = self->_defaultFolder;
  if (!defaultFolder)
  {
    defaultFolderIdentifier = [(ICAccount *)self defaultFolderIdentifier];
    v5 = [(ICAccount *)self folderWithIdentifier:defaultFolderIdentifier];
    v6 = self->_defaultFolder;
    self->_defaultFolder = v5;

    v7 = self->_defaultFolder;
    if (!v7)
    {
      [(ICAccount *)self createDefaultFolder];
      v7 = self->_defaultFolder;
    }

    markedForDeletion = [(ICFolder *)v7 markedForDeletion];
    defaultFolder = self->_defaultFolder;
    if (markedForDeletion)
    {
      [(ICFolder *)defaultFolder setMarkedForDeletion:0];
      defaultFolder = self->_defaultFolder;
    }
  }

  return defaultFolder;
}

- (unint64_t)visibleNotesIncludingTrashCount
{
  predicateForVisibleNotesIncludingTrash = [(ICAccount *)self predicateForVisibleNotesIncludingTrash];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICNote countOfNotesMatchingPredicate:predicateForVisibleNotesIncludingTrash context:managedObjectContext];

  return v5;
}

- (id)predicateForVisibleNotesIncludingTrash
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  predicateForNotesInAccount = [(ICAccount *)self predicateForNotesInAccount];
  v10[0] = predicateForNotesInAccount;
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v6 = [ICNote predicateForVisibleNotesIncludingTrash:1 includingSystemPaper:1 includingMathNotes:1 includingCallNotes:1 inContext:managedObjectContext];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

+ (void)initializeLocalAccountNamesInBackground
{
  v2 = dispatch_get_global_queue(2, 0);
  dispatch_async(v2, &__block_literal_global_636);
}

+ (id)localizedLocalAccountNameMidSentence
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = localizedLocalAccountNameMidSentence;
  if (localizedLocalAccountNameMidSentence)
  {
    goto LABEL_4;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [ICAccount localizedLocalAccountNameMidSentence:1];
    v5 = localizedLocalAccountNameMidSentence;
    localizedLocalAccountNameMidSentence = v4;

    v3 = localizedLocalAccountNameMidSentence;
LABEL_4:
    v6 = v3;
    goto LABEL_5;
  }

  v6 = @"on my device";
LABEL_5:
  objc_sync_exit(v2);

  return v6;
}

- (void)addTrashObserversIfNecessary
{
  if ([(ICCloudSyncingObject *)self hasContextOptions:721457])
  {
    if (![(ICAccount *)self didAddTrashObservers])
    {
      trashFolder = [(ICAccount *)self trashFolder];

      if (trashFolder)
      {
        trashFolder2 = [(ICAccount *)self trashFolder];
        [trashFolder2 ic_addObserver:self forKeyPath:@"notes" context:compoundliteral explicitOptions:4];

        [(ICAccount *)self setDidAddTrashObservers:1];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v5 = *MEMORY[0x277CBE1B0];
        managedObjectContext = [(ICAccount *)self managedObjectContext];
        [defaultCenter addObserver:self selector:sel_managedObjectContextDidSave_ name:v5 object:managedObjectContext];
      }
    }
  }
}

- (void)dealloc
{
  [(ICAccount *)self removeAllObserversIfNecessary];
  v3.receiver = self;
  v3.super_class = ICAccount;
  [(ICAccount *)&v3 dealloc];
}

- (void)removeTrashObserversIfNecessary
{
  if ([(ICAccount *)self didAddTrashObservers])
  {
    trashFolder = [(ICAccount *)self trashFolder];
    [trashFolder ic_removeObserver:self forKeyPath:@"notes" context:compoundliteral];

    [(ICAccount *)self setDidAddTrashObservers:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CBE1B0];
    managedObjectContext = [(ICAccount *)self managedObjectContext];
    [defaultCenter removeObserver:self name:v4 object:managedObjectContext];
  }
}

- (void)willTurnIntoFault
{
  v5.receiver = self;
  v5.super_class = ICAccount;
  [(ICNoteContainer *)&v5 willTurnIntoFault];
  [(ICAccount *)self removeAllObserversIfNecessary];
  trashFolder = self->_trashFolder;
  self->_trashFolder = 0;

  defaultFolder = self->_defaultFolder;
  self->_defaultFolder = 0;
}

+ (BOOL)hidesSystemPaperNotesInCustomFolders
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ICAccountHidesSystemPaperNotesInCustomFolders"];

  return v3;
}

+ (BOOL)hidesMathNotesInCustomFolders
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ICAccountHidesMathNotesInCustomFolders"];

  return v3;
}

+ (BOOL)hidesCallNotesInCustomFolders
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"ICAccountHidesCallNotesInCustomFolders"];

  return v3;
}

- (BOOL)isShowingDateHeaders
{
  supportsDateHeaders = [(ICAccount *)self supportsDateHeaders];
  if (supportsDateHeaders)
  {
    LOBYTE(supportsDateHeaders) = [MEMORY[0x277D361C8] defaultDateHeadersType] == 2;
  }

  return supportsDateHeaders;
}

- (BOOL)supportsDateHeaders
{
  customNoteSortType = [(ICNoteContainer *)self customNoteSortType];
  v3 = [customNoteSortType resolvedCustomSortTypeOrder] != 3;

  return v3;
}

- (id)predicateForVisibleNotes
{
  viewContext = [(ICCloudSyncingObject *)self viewContext];
  v4 = MEMORY[0x277CBEB18];
  predicateForNotesInAccount = [(ICAccount *)self predicateForNotesInAccount];
  v6 = [v4 arrayWithObject:predicateForNotesInAccount];

  v7 = +[ICNote predicateForVisibleNotesIncludingTrash:includingSystemPaper:includingMathNotes:includingCallNotes:inContext:](ICNote, "predicateForVisibleNotesIncludingTrash:includingSystemPaper:includingMathNotes:includingCallNotes:inContext:", 0, +[ICAccount hidesSystemPaperNotesInCustomFolders](ICAccount, "hidesSystemPaperNotesInCustomFolders") ^ 1, +[ICAccount hidesMathNotesInCustomFolders](ICAccount, "hidesMathNotesInCustomFolders") ^ 1, +[ICAccount hidesCallNotesInCustomFolders]^ 1, viewContext);
  [v6 ic_addNonNilObject:v7];

  v8 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];

  return v8;
}

- (BOOL)isLocalAccount
{
  identifier = [(ICAccount *)self identifier];
  v3 = [identifier isEqualToString:@"LocalAccount"];

  return v3;
}

- (id)mediaDirectoryURL
{
  accountFilesDirectoryURL = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [accountFilesDirectoryURL URLByAppendingPathComponent:*MEMORY[0x277D360D0] isDirectory:1];

  return v3;
}

- (id)accountFilesDirectoryURL
{
  accountUtilities = [objc_opt_class() accountUtilities];
  identifier = [(ICAccount *)self identifier];
  v5 = [accountUtilities applicationDocumentsURLForAccountIdentifier:identifier];

  identifier2 = [(ICAccount *)self identifier];
  if (identifier2 && (v7 = identifier2, v8 = [(ICAccount *)self storeDataSeparately], v7, (v8 & 1) != 0))
  {
    v9 = [v5 URLByAppendingPathComponent:*MEMORY[0x277D360F0] isDirectory:1];

    identifier3 = [(ICAccount *)self identifier];
    v11 = [v9 URLByAppendingPathComponent:identifier3 isDirectory:1];
  }

  else
  {
    v11 = v5;
    v9 = v11;
  }

  return v11;
}

+ (ICAccountUtilities)accountUtilities
{
  v2 = _accountUtilities;
  if (!_accountUtilities)
  {
    mEMORY[0x277D36178] = [MEMORY[0x277D36178] sharedInstance];
    v4 = _accountUtilities;
    _accountUtilities = mEMORY[0x277D36178];

    v2 = _accountUtilities;
  }

  return v2;
}

- (BOOL)isManaged
{
  identifier = [(ICAccount *)self identifier];
  v4 = [identifier length];

  if (!v4)
  {
    return 0;
  }

  v5 = +[ICAccount accountUtilities];
  identifier2 = [(ICAccount *)self identifier];
  v7 = [v5 isManagedACAccountWithIdentifier:identifier2];

  return v7;
}

- (BOOL)isPrimaryiCloudAccount
{
  identifier = [(ICAccount *)self identifier];
  if ([identifier length])
  {
    accountType = [(ICAccount *)self accountType];

    if (accountType != 1)
    {
      return 0;
    }

    identifier = +[ICAccount accountUtilities];
    identifier2 = [(ICAccount *)self identifier];
    v6 = [identifier iCloudACAccountWithIdentifier:identifier2];
    ic_isPrimaryAppleAccount = [v6 ic_isPrimaryAppleAccount];
  }

  else
  {
    ic_isPrimaryAppleAccount = 0;
  }

  return ic_isPrimaryAppleAccount;
}

- (NSString)searchIndexingIdentifier
{
  objectID = [(ICAccount *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v2 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];

  return v2;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  userActivityContentAttributeSet = [(ICAccount *)self userActivityContentAttributeSet];
  name = [(ICAccount *)self name];
  if (![name length])
  {
    username = [(ICAccount *)self username];

    name = username;
  }

  [userActivityContentAttributeSet setDisplayName:name];
  [userActivityContentAttributeSet setTextContent:name];
  [userActivityContentAttributeSet setIc_searchResultType:3];
  [userActivityContentAttributeSet ic_populateValuesForSpecializedFields];
  if ([(ICAccount *)self isManaged])
  {
    v6 = &unk_282747AC0;
  }

  else
  {
    v6 = &unk_282747AD8;
  }

  [userActivityContentAttributeSet setDataOwnerType:v6];
  if (objc_opt_respondsToSelector())
  {
    [(ICAccount *)self associateAppEntityWithSearchableItemAttributeSet:userActivityContentAttributeSet];
  }

  return userActivityContentAttributeSet;
}

- (id)searchableTextContent
{
  name = [(ICAccount *)self name];
  v3 = name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = &stru_2827172C0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)isDataSeparated
{
  identifier = [(ICAccount *)self identifier];
  v4 = [identifier length];

  if (!v4)
  {
    return 0;
  }

  v5 = +[ICAccount accountUtilities];
  identifier2 = [(ICAccount *)self identifier];
  v7 = [v5 iCloudACAccountWithIdentifier:identifier2];

  LOBYTE(identifier2) = [v7 ic_shouldCreateSeparatePersistentStore];
  return identifier2;
}

- (NSString)dsid
{
  if (!self->_dsid)
  {
    identifier = [(ICAccount *)self identifier];
    if ([identifier length])
    {
      accountType = [(ICAccount *)self accountType];

      if (accountType != 1)
      {
        goto LABEL_6;
      }

      identifier = +[ICAccount accountUtilities];
      identifier2 = [(ICAccount *)self identifier];
      v6 = [identifier iCloudACAccountWithIdentifier:identifier2];
      aa_personID = [v6 aa_personID];
      dsid = self->_dsid;
      self->_dsid = aa_personID;
    }
  }

LABEL_6:
  v9 = self->_dsid;

  return v9;
}

- (NSString)altDSID
{
  if (!self->_altDSID)
  {
    identifier = [(ICAccount *)self identifier];
    if ([identifier length])
    {
      accountType = [(ICAccount *)self accountType];

      if (accountType != 1)
      {
        goto LABEL_6;
      }

      identifier = +[ICAccount accountUtilities];
      identifier2 = [(ICAccount *)self identifier];
      v6 = [identifier iCloudACAccountWithIdentifier:identifier2];
      aa_altDSID = [v6 aa_altDSID];
      altDSID = self->_altDSID;
      self->_altDSID = aa_altDSID;
    }
  }

LABEL_6:
  v9 = self->_altDSID;

  return v9;
}

- (NSString)username
{
  if (!self->_username)
  {
    identifier = [(ICAccount *)self identifier];
    if ([identifier length])
    {
      accountType = [(ICAccount *)self accountType];

      if (accountType != 1)
      {
        goto LABEL_6;
      }

      identifier = +[ICAccount accountUtilities];
      identifier2 = [(ICAccount *)self identifier];
      v6 = [identifier iCloudACAccountWithIdentifier:identifier2];
      username = [v6 username];
      username = self->_username;
      self->_username = username;
    }
  }

LABEL_6:
  v9 = self->_username;

  return v9;
}

- (id)cacheKey
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(ICAccount *)self identifier];
  v4 = [v2 stringWithFormat:@"%@:%@", identifier, 0];

  return v4;
}

+ (void)localeDidChange:(id)change
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  v3 = localizedLocalAccountName;
  localizedLocalAccountName = 0;

  v4 = localizedLocalAccountNameMidSentence;
  localizedLocalAccountNameMidSentence = 0;

  objc_sync_exit(obj);
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = ICAccount;
  [(ICCloudSyncingObject *)&v3 awakeFromInsert];
  [(ICAccount *)self setOwner:self];
  [(ICAccount *)self setSortOrder:0];
  [(ICAccount *)self setNestedTitleForSorting:&stru_2827172C0];
  [(ICAccount *)self setIsHiddenNoteContainer:1];
  [(ICAccount *)self setStoreDataSeparately:1];
}

- (void)prepareForDeletion
{
  v4.receiver = self;
  v4.super_class = ICAccount;
  [(ICAccount *)&v4 prepareForDeletion];
  [(ICAccount *)self removeAllObserversIfNecessary];
  v3 = +[ICAuthenticationState sharedState];
  [v3 removeMainKeyFromKeychainForObject:self];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICAccount *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/Shared/CoreData/ICAccount.m"]& 1) != 0)
  {
    v13 = [(ICAccount *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == compoundliteral && (v13 & 1) == 0)
    {

      [(ICAccount *)self updateTrashFolderHiddenNoteContainerState];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICAccount;
    [(ICAccount *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setMarkedForDeletion:(BOOL)deletion
{
  if (deletion)
  {
    v3 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [ICAccount setMarkedForDeletion:];
    }
  }

  else
  {
    [(ICAccount *)self willChangeValueForKey:@"markedForDeletion"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [(ICAccount *)self setPrimitiveValue:v5 forKey:@"markedForDeletion"];

    [(ICAccount *)self didChangeValueForKey:@"markedForDeletion"];
  }
}

- (id)accountDataCreateIfNecessary
{
  accountData = [(ICAccount *)self accountData];

  if (!accountData)
  {
    v4 = [ICAccountData newAccountDataForAccount:self];
    [(ICAccount *)self setAccountData:v4];
  }

  accountData2 = [(ICAccount *)self accountData];
  markedForDeletion = [accountData2 markedForDeletion];

  if (markedForDeletion)
  {
    accountData3 = [(ICAccount *)self accountData];
    [accountData3 setMarkedForDeletion:0];
  }

  return [(ICAccount *)self accountData];
}

- (void)performBlockInPersonaContext:(id)context
{
  contextCopy = context;
  v6 = +[ICAccount accountUtilities];
  identifier = [(ICAccount *)self identifier];
  [v6 performBlockInPersonaContext:contextCopy forAccountIdentifier:identifier];
}

- (void)performBlockInPersonaContextIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ICAccount_performBlockInPersonaContextIfNecessary___block_invoke;
  v6[3] = &unk_278195F28;
  v7 = necessaryCopy;
  v5 = necessaryCopy;
  [(ICAccount *)self performBlockInPersonaContext:v6];
}

uint64_t __53__ICAccount_performBlockInPersonaContextIfNecessary___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)createStandardFolders
{
  identifier = [a2 identifier];
  *self = 138412290;
  *a3 = identifier;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Existing folder's account isn't deleted. Faulting it by checking its identifier: (%@)", self, 0xCu);
}

- (void)createDefaultFolder
{
  defaultFolderIdentifier = [(ICAccount *)self defaultFolderIdentifier];
  v4 = [ICFolder newFolderWithIdentifier:defaultFolderIdentifier account:self];
  defaultFolder = self->_defaultFolder;
  self->_defaultFolder = v4;

  v6 = +[ICFolder englishTitleForDefaultFolder];
  [(ICFolder *)self->_defaultFolder setTitle:v6];

  [(ICFolder *)self->_defaultFolder setSortOrder:1];
  v7 = self->_defaultFolder;

  [(ICFolder *)v7 updateChangeCountWithReason:@"Created default folder"];
}

- (void)createTrashFolder
{
  trashFolderIdentifier = [(ICAccount *)self trashFolderIdentifier];
  v4 = [ICFolder newFolderWithIdentifier:trashFolderIdentifier account:self];
  trashFolder = self->_trashFolder;
  self->_trashFolder = v4;

  v6 = +[ICFolder englishTitleForTrashFolder];
  [(ICFolder *)self->_trashFolder setTitle:v6];

  [(ICFolder *)self->_trashFolder setFolderType:1];
  [(ICFolder *)self->_trashFolder setIsHiddenNoteContainer:1];
  [(ICFolder *)self->_trashFolder setSortOrder:3];
  [(ICAccount *)self addTrashObserversIfNecessary];
  v7 = self->_trashFolder;

  [(ICFolder *)v7 updateChangeCountWithReason:@"Created trash folder"];
}

- (id)standardFolderIdentifierWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = objc_opt_class();
  identifier = [(ICAccount *)self identifier];
  v7 = [v5 standardFolderIdentifierWithPrefix:prefixCopy accountIdentifier:identifier accountType:{-[ICAccount accountType](self, "accountType")}];

  return v7;
}

+ (id)standardFolderIdentifierWithPrefix:(id)prefix accountIdentifier:(id)identifier accountType:(int)type
{
  prefixCopy = prefix;
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (identifierCopy)
  {
    if (type == 1)
    {
      v10 = @"CloudKit";
    }

    else
    {
      v10 = identifierCopy;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", prefixCopy, v10];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount standardFolderIdentifierWithPrefix:accountIdentifier:accountType:];
    }

    v12 = 0;
  }

  return v12;
}

- (NSString)localizedName
{
  identifier = [(ICAccount *)self identifier];
  v4 = [identifier isEqualToString:@"InMemoryAccount"];

  if (v4 || [(ICAccount *)self accountType]!= 3)
  {
    name = [(ICAccount *)self name];
  }

  else
  {
    name = +[ICAccount localizedLocalAccountName];
  }

  return name;
}

- (id)localizedNameMidSentence
{
  identifier = [(ICAccount *)self identifier];
  v4 = [identifier isEqualToString:@"InMemoryAccount"];

  if (v4 || [(ICAccount *)self accountType]!= 3)
  {
    name = [(ICAccount *)self name];
  }

  else
  {
    name = +[ICAccount localizedLocalAccountNameMidSentence];
  }

  return name;
}

- (NSPersistentStore)persistentStore
{
  objectID = [(ICAccount *)self objectID];
  persistentStore = [objectID persistentStore];

  return persistentStore;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = compareCopy;
    accountType = [(ICAccount *)self accountType];
    accountType2 = [v5 accountType];
    accountType3 = [(ICAccount *)self accountType];
    if (accountType == accountType2)
    {
      if (accountType3 != 1)
      {
        goto LABEL_18;
      }

      persistentStoreURL = [MEMORY[0x277D36230] persistentStoreURL];
      persistentStore = [(ICAccount *)self persistentStore];
      v11 = [persistentStore URL];
      v12 = [v11 isEqual:persistentStoreURL];

      persistentStore2 = [v5 persistentStore];
      v14 = [persistentStore2 URL];
      v15 = [v14 isEqual:persistentStoreURL];

      if (v12 && !v15)
      {
        v16 = -1;
LABEL_19:

        goto LABEL_20;
      }

      if (v12 & 1 | ((v15 & 1) == 0))
      {
LABEL_18:
        persistentStoreURL = [(ICAccount *)self name];
        name = [v5 name];
        v16 = [persistentStoreURL localizedCaseInsensitiveCompare:name];

        goto LABEL_19;
      }
    }

    else
    {
      if (accountType3 == 1)
      {
        v16 = -1;
LABEL_20:

        goto LABEL_21;
      }

      if ([v5 accountType] != 1)
      {
        goto LABEL_18;
      }
    }

    v16 = 1;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v16 = -1;
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccount *)self compare:compareCopy, v17];
    }

    v16 = 0;
  }

LABEL_21:

  return v16;
}

- (unint64_t)visibleCustomFoldersCount
{
  predicateForCustomFolders = [(ICAccount *)self predicateForCustomFolders];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICFolder countOfFoldersMatchingPredicate:predicateForCustomFolders context:managedObjectContext];

  return v5;
}

- (BOOL)containsSharedFolders
{
  if ([(ICAccount *)self accountType]!= 1)
  {
    return 0;
  }

  visibleFolders = [(ICAccount *)self visibleFolders];
  v4 = [visibleFolders ic_containsObjectPassingTest:&__block_literal_global_25];

  return v4;
}

- (id)customRootLevelFolders
{
  v12[3] = *MEMORY[0x277D85DE8];
  predicateForVisibleFolders = [(ICAccount *)self predicateForVisibleFolders];
  v12[0] = predicateForVisibleFolders;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"parent == nil"];
  v12[1] = v4;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"sortOrder == %d", 2];
  v12[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  folders = [(ICAccount *)self folders];
  v8 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];
  v9 = [folders filteredSetUsingPredicate:v8];

  allObjects = [v9 allObjects];

  return allObjects;
}

- (unint64_t)indexOfCustomRootLevelFolder:(id)folder
{
  folderCopy = folder;
  if ([folderCopy sortOrder] != 2)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"folder.sortOrder == ICNoteContainerSortOrderFolder" functionName:"-[ICAccount indexOfCustomRootLevelFolder:]" simulateCrash:1 showAlert:0 format:@"Grabbing index of non-custom folder"];
  }

  subFolderIdentifiersOrderedSet = [(ICAccount *)self subFolderIdentifiersOrderedSet];
  identifier = [folderCopy identifier];
  v7 = [subFolderIdentifiersOrderedSet indexOfObject:identifier];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    customRootLevelFolders = [(ICAccount *)self customRootLevelFolders];
    v9 = [customRootLevelFolders sortedArrayUsingSelector:sel_compare_];
    v7 = [v9 indexOfObject:folderCopy];
  }

  return v7;
}

- (id)predicateForCustomFolders
{
  array = [MEMORY[0x277CBEB18] array];
  predicateForVisibleFolders = [(ICAccount *)self predicateForVisibleFolders];
  [array addObject:predicateForVisibleFolders];

  v5 = MEMORY[0x277CCAC30];
  defaultFolderIdentifier = [(ICAccount *)self defaultFolderIdentifier];
  v7 = [v5 predicateWithFormat:@"identifier != %@", defaultFolderIdentifier];
  [array addObject:v7];

  v8 = MEMORY[0x277CCAC30];
  trashFolderIdentifier = [(ICAccount *)self trashFolderIdentifier];
  v10 = [v8 predicateWithFormat:@"identifier != %@", trashFolderIdentifier];
  [array addObject:v10];

  v11 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];

  return v11;
}

- (id)predicateForPinnedNotes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  predicateForNotesInAccount = [(ICAccount *)self predicateForNotesInAccount];
  v8[0] = predicateForNotesInAccount;
  v4 = +[ICNote predicateForPinnedNotes];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

- (id)visibleFoldersWithParent:(id)parent
{
  v19 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  visibleFolders = [(ICAccount *)self visibleFolders];
  v7 = [visibleFolders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(visibleFolders);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        parent = [v11 parent];

        if (parent == parentCopy)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [visibleFolders countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)visibleRootFoldersContainFolderWithTitle:(id)title
{
  titleCopy = title;
  v5 = [(ICAccount *)self visibleFoldersWithParent:0];
  v6 = [v5 valueForKey:@"title"];
  v7 = [v6 mutableCopy];

  v8 = +[ICFolder reservedFolderTitles];
  [v7 unionSet:v8];

  reservedAccountFolderTitles = [(ICAccount *)self reservedAccountFolderTitles];
  [v7 unionSet:reservedAccountFolderTitles];

  LOBYTE(reservedAccountFolderTitles) = [v7 containsObject:titleCopy];
  return reservedAccountFolderTitles;
}

- (id)visibleRootFolderWithTitle:(id)title
{
  v18 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ICAccount *)self visibleFoldersWithParent:0, 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        title = [v9 title];
        v11 = [title isEqualToString:titleCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)hasAnyCustomFoldersIncludingSystem:(BOOL)system
{
  systemCopy = system;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  visibleFolders = [(ICAccount *)self visibleFolders];
  v6 = [visibleFolders countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(visibleFolders);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (systemCopy)
        {
          trashFolder = [(ICAccount *)self trashFolder];
          if ([v10 isEqual:trashFolder])
          {
          }

          else
          {
            defaultFolder = [(ICAccount *)self defaultFolder];
            v13 = [v10 isEqual:defaultFolder];

            if (!v13)
            {
LABEL_15:
              v14 = 1;
              goto LABEL_16;
            }
          }
        }

        else if ([*(*(&v16 + 1) + 8 * i) isModernCustomFolder])
        {
          goto LABEL_15;
        }
      }

      v7 = [visibleFolders countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_16:

  return v14;
}

- (id)reservedAccountFolderTitles
{
  v2 = MEMORY[0x277CBEB98];
  allItemsFolderLocalizedTitle = [(ICAccount *)self allItemsFolderLocalizedTitle];
  v4 = [v2 setWithObject:allItemsFolderLocalizedTitle];

  return v4;
}

- (id)visibleNoteContainers
{
  visibleFolders = [(ICAccount *)self visibleFolders];
  accountProxy = [(ICAccount *)self accountProxy];
  v5 = [visibleFolders arrayByAddingObject:accountProxy];

  return v5;
}

- (id)visibleNoteContainerChildren
{
  v23 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  visibleFolders = [(ICAccount *)self visibleFolders];
  v5 = [visibleFolders countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(visibleFolders);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        parent = [v9 parent];
        if (parent)
        {
        }

        else if (([v9 isHiddenNoteContainer] & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [visibleFolders countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v11 = [array sortedArrayUsingSelector:sel_compare_];
  v12 = [v11 mutableCopy];

  v13 = [v12 count];
  trashFolder = [(ICAccount *)self trashFolder];
  v15 = [v12 containsObject:trashFolder];

  if (v13 - v15 >= 2)
  {
    accountProxy = [(ICAccount *)self accountProxy];
    [v12 insertObject:accountProxy atIndex:0];
  }

  return v12;
}

- (id)uniqueUserParticipants
{
  v80[3] = *MEMORY[0x277D85DE8];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v4 = [ICNote predicateForVisibleNotesInContext:managedObjectContext];

  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folder.account == %@", self];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"serverShareData != nil", self];
  v7 = MEMORY[0x277CCA920];
  v64 = v5;
  v65 = v4;
  v80[0] = v4;
  v80[1] = v5;
  v80[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  managedObjectContext2 = [(ICAccount *)self managedObjectContext];
  v11 = [ICFolder predicateForVisibleFoldersInContext:managedObjectContext2];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"account == %@", self];
  v13 = MEMORY[0x277CCA920];
  v60 = v12;
  v61 = v11;
  v79[0] = v11;
  v79[1] = v12;
  v63 = v6;
  v79[2] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  v16 = +[ICNote fetchRequest];
  v62 = v9;
  [v16 setPredicate:v9];
  managedObjectContext3 = [(ICAccount *)self managedObjectContext];
  v76 = 0;
  v58 = v16;
  v18 = [managedObjectContext3 executeFetchRequest:v16 error:&v76];
  v19 = v76;

  if (v19)
  {
    v20 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICAccount uniqueUserParticipants];
    }
  }

  v21 = +[ICFolder fetchRequest];
  [v21 setPredicate:v15];
  managedObjectContext4 = [(ICAccount *)self managedObjectContext];
  v75 = v19;
  v56 = v21;
  v23 = [managedObjectContext4 executeFetchRequest:v21 error:&v75];
  v24 = v75;

  if (v24)
  {
    v25 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ICAccount uniqueUserParticipants];
    }
  }

  v55 = v24;
  v59 = v15;
  v57 = v18;
  v26 = [MEMORY[0x277CBEB18] arrayWithArray:v18];
  v54 = v23;
  [v26 addObjectsFromArray:v23];
  v53 = v26;
  v27 = [v26 ic_flatMap:&__block_literal_global_151];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v27;
  v29 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v72;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v72 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v71 + 1) + 8 * i);
        userIdentity = [v33 userIdentity];
        userRecordID = [userIdentity userRecordID];
        recordName = [userRecordID recordName];

        if (recordName)
        {
          v37 = MEMORY[0x277CCACA8];
          ic_participantName = [v33 ic_participantName];
          v39 = [v37 stringWithFormat:@"%@_%@", ic_participantName, recordName];

          allKeys = [dictionary allKeys];
          v41 = [allKeys containsObject:v39];

          if ((v41 & 1) == 0)
          {
            [dictionary setObject:v33 forKeyedSubscript:v39];
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v30);
  }

  allKeys2 = [dictionary allKeys];
  v43 = [allKeys2 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  array = [MEMORY[0x277CBEB18] array];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v45 = v43;
  v46 = [v45 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v68;
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v68 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [dictionary objectForKeyedSubscript:*(*(&v67 + 1) + 8 * j)];
        [array ic_addNonNilObject:v50];
      }

      v47 = [v45 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v47);
  }

  v51 = [array copy];

  return v51;
}

id __35__ICAccount_uniqueUserParticipants__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serverShare];
  v3 = [v2 ic_acceptedParticipants];
  v4 = [v3 ic_objectsPassingTest:&__block_literal_global_154];

  return v4;
}

uint64_t __35__ICAccount_uniqueUserParticipants__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userIdentity];
  v3 = [v2 userRecordID];
  v4 = [v3 recordName];
  v5 = [v4 isEqual:*MEMORY[0x277CBBF28]];

  return v5 ^ 1u;
}

- (id)subFolderIdentifiersOrderedSet
{
  accountDataCreateIfNecessary = [(ICAccount *)self accountDataCreateIfNecessary];
  accountData = [(ICAccount *)self accountData];

  if (!accountData)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.accountData) != nil)" functionName:"-[ICAccount subFolderIdentifiersOrderedSet]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.accountData"}];
  }

  v7.receiver = self;
  v7.super_class = ICAccount;
  subFolderIdentifiersOrderedSet = [(ICNoteContainer *)&v7 subFolderIdentifiersOrderedSet];

  return subFolderIdentifiersOrderedSet;
}

- (ICAccountProxy)accountProxy
{
  accountProxy = self->_accountProxy;
  if (!accountProxy)
  {
    v4 = [ICAccountProxy accountProxyWithAccount:self];
    v5 = self->_accountProxy;
    self->_accountProxy = v4;

    accountProxy = self->_accountProxy;
  }

  return accountProxy;
}

- (id)folderWithIdentifier:(id)identifier
{
  v12[2] = *MEMORY[0x277D85DE8];
  identifier = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", identifier];
  v12[0] = identifier;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"account", self];
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v9 = [ICFolder foldersMatchingPredicate:v7 context:managedObjectContext];
  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)allItemsFolderLocalizedTitle
{
  v3 = __ICLocalizedFrameworkString_impl(@"All %@", @"All %@", 0, 1);
  v4 = MEMORY[0x277CCACA8];
  localizedNameMidSentence = [(ICAccount *)self localizedNameMidSentence];
  v6 = [v4 localizedStringWithFormat:v3, localizedNameMidSentence];

  return v6;
}

- (id)allChildObjects
{
  v66 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  folders = [(ICAccount *)self folders];
  allObjects = [folders allObjects];

  if (allObjects)
  {
    [array addObjectsFromArray:allObjects];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = allObjects;
    obj = [allObjects copy];
    v41 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v41)
    {
      v40 = *v60;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v60 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v59 + 1) + 8 * i);
          identifier = [v7 identifier];
          v9 = [ICLegacyTombstone tombstoneIdentifierForObjectIdentifier:identifier type:2];

          managedObjectContext = [(ICAccount *)selfCopy managedObjectContext];
          v45 = v9;
          v11 = [ICLegacyTombstone legacyTombstoneWithIdentifier:v9 context:managedObjectContext];

          if (v11)
          {
            [array addObject:v11];
          }

          notes = [v7 notes];
          allObjects2 = [notes allObjects];

          if (allObjects2)
          {
            v43 = v11;
            v44 = i;
            [array addObjectsFromArray:allObjects2];
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v42 = allObjects2;
            v46 = allObjects2;
            v49 = [v46 countByEnumeratingWithState:&v55 objects:v64 count:16];
            if (v49)
            {
              v47 = *v56;
              do
              {
                for (j = 0; j != v49; ++j)
                {
                  if (*v56 != v47)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v15 = *(*(&v55 + 1) + 8 * j);
                  identifier2 = [v15 identifier];
                  v17 = [ICLegacyTombstone tombstoneIdentifierForObjectIdentifier:identifier2 type:2];

                  managedObjectContext2 = [(ICAccount *)selfCopy managedObjectContext];
                  v50 = v17;
                  v19 = [ICLegacyTombstone legacyTombstoneWithIdentifier:v17 context:managedObjectContext2];

                  if (v19)
                  {
                    [array addObject:v19];
                  }

                  attachments = [v15 attachments];
                  allObjects3 = [attachments allObjects];

                  [array ic_addObjectsFromNonNilArray:allObjects3];
                  v53 = 0u;
                  v54 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v22 = allObjects3;
                  v23 = [v22 countByEnumeratingWithState:&v51 objects:v63 count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v52;
                    do
                    {
                      for (k = 0; k != v24; ++k)
                      {
                        if (*v52 != v25)
                        {
                          objc_enumerationMutation(v22);
                        }

                        v27 = *(*(&v51 + 1) + 8 * k);
                        media = [v27 media];

                        if (media)
                        {
                          media2 = [v27 media];
                          [array addObject:media2];
                        }

                        previewImages = [v27 previewImages];

                        if (previewImages)
                        {
                          previewImages2 = [v27 previewImages];
                          allObjects4 = [previewImages2 allObjects];
                          [array addObjectsFromArray:allObjects4];
                        }
                      }

                      v24 = [v22 countByEnumeratingWithState:&v51 objects:v63 count:16];
                    }

                    while (v24);
                  }

                  inlineAttachments = [v15 inlineAttachments];
                  allObjects5 = [inlineAttachments allObjects];
                  [array ic_addObjectsFromNonNilArray:allObjects5];
                }

                v49 = [v46 countByEnumeratingWithState:&v55 objects:v64 count:16];
              }

              while (v49);
            }

            v11 = v43;
            i = v44;
            allObjects2 = v42;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v41);
    }

    allObjects = v38;
  }

  hashtags = [(ICAccount *)selfCopy hashtags];
  allObjects6 = [hashtags allObjects];
  [array ic_addObjectsFromNonNilArray:allObjects6];

  return array;
}

- (id)accountFilesDirectoryURLInApplicationDataContainer
{
  accountUtilities = [objc_opt_class() accountUtilities];
  identifier = [(ICAccount *)self identifier];
  v5 = [accountUtilities applicationDataContainerURLForAccountIdentifier:identifier];

  identifier2 = [(ICAccount *)self identifier];

  if (identifier2)
  {
    v7 = [v5 URLByAppendingPathComponent:@"Documents" isDirectory:1];

    v8 = [v7 URLByAppendingPathComponent:*MEMORY[0x277D360F0] isDirectory:1];

    identifier3 = [(ICAccount *)self identifier];
    v5 = [v8 URLByAppendingPathComponent:identifier3 isDirectory:1];
  }

  v10 = v5;

  return v5;
}

- (id)fallbackImageDirectoryURL
{
  accountFilesDirectoryURL = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [accountFilesDirectoryURL URLByAppendingPathComponent:*MEMORY[0x277D360C0] isDirectory:1];

  return v3;
}

- (id)fallbackPDFDirectoryURL
{
  accountFilesDirectoryURL = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [accountFilesDirectoryURL URLByAppendingPathComponent:*MEMORY[0x277D360C8] isDirectory:1];

  return v3;
}

- (id)exportableMediaDirectoryURL
{
  accountFilesDirectoryURL = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [accountFilesDirectoryURL URLByAppendingPathComponent:*MEMORY[0x277D360B8] isDirectory:1];

  return v3;
}

- (id)previewImageDirectoryURL
{
  accountFilesDirectoryURL = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [accountFilesDirectoryURL URLByAppendingPathComponent:*MEMORY[0x277D360E0] isDirectory:1];

  return v3;
}

- (void)deleteUnusedHashtagsWithStandardizedContent:(id)content
{
  v16 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [contentCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(contentCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![ICInlineAttachment isHashtagStandardizedContent:v9 usedInAccount:self])
        {
          v10 = [ICHashtag hashtagWithStandardizedContent:v9 account:self];
          [v10 markForDeletion];
        }
      }

      v6 = [contentCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)temporaryDirectoryURL
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__22;
  v9 = __Block_byref_object_dispose__22;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__ICAccount_temporaryDirectoryURL__block_invoke;
  v4[3] = &unk_278196B18;
  v4[4] = &v5;
  [(ICAccount *)self performBlockInPersonaContext:v4];
  if (v6[5])
  {
    v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__ICAccount_temporaryDirectoryURL__block_invoke(uint64_t a1)
{
  v2 = NSTemporaryDirectory();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)systemPaperTemporaryDirectoryURL
{
  v3 = +[ICAccount accountUtilities];
  identifier = [(ICAccount *)self identifier];
  v5 = [v3 applicationDocumentsURLForAccountIdentifier:identifier];

  v6 = [v5 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v7 = [v6 URLByAppendingPathComponent:@"Caches" isDirectory:1];
  v8 = [v7 URLByAppendingPathComponent:*MEMORY[0x277D360D8] isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v10 = [defaultManager createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v16];
  v11 = v16;

  if ((v10 & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICAccount systemPaperTemporaryDirectoryURL];
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectory = [defaultManager2 temporaryDirectory];

    v8 = temporaryDirectory;
  }

  return v8;
}

- (void)ensureCriticalPaperDirectoriesExist
{
  ic_loggingIdentifier = [self ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (id)systemPaperDirectoryURL
{
  accountFilesDirectoryURL = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [accountFilesDirectoryURL URLByAppendingPathComponent:*MEMORY[0x277D360D8] isDirectory:1];

  return v3;
}

- (id)systemPaperBundlesDirectoryURL
{
  systemPaperDirectoryURL = [(ICAccount *)self systemPaperDirectoryURL];
  v3 = [systemPaperDirectoryURL URLByAppendingPathComponent:*MEMORY[0x277D360B0] isDirectory:1];

  return v3;
}

- (id)systemPaperNotes
{
  v10[2] = *MEMORY[0x277D85DE8];
  predicateForNotesInAccount = [(ICAccount *)self predicateForNotesInAccount];
  v10[0] = predicateForNotesInAccount;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isSystemPaper == YES"];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v6 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v8 = [ICNote notesMatchingPredicate:v6 context:managedObjectContext];

  return v8;
}

+ (id)mostRecentSystemPaperNoteInManagedObjectContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "+[ICAccount mostRecentSystemPaperNoteInManagedObjectContext:]";
    v15 = 1024;
    v16 = 1033;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d", buf, 0x12u);
  }

  v5 = +[ICNote systemPaperNotesFetchRequest];
  [v5 setFetchLimit:1];
  v12 = 0;
  v6 = [contextCopy executeFetchRequest:v5 error:&v12];

  v7 = v12;
  if (v7)
  {
    v8 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ICAccount mostRecentSystemPaperNoteInManagedObjectContext:];
    }
  }

  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICAccount mostRecentSystemPaperNoteInManagedObjectContext:firstObject];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount mostRecentSystemPaperNoteInManagedObjectContext:];
    }

    firstObject = 0;
  }

  return firstObject;
}

+ (void)setHidesSystemPaperNotesInCustomFolders:(BOOL)folders
{
  foldersCopy = folders;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:foldersCopy forKey:@"ICAccountHidesSystemPaperNotesInCustomFolders"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICAccountHidesSystemPaperNotesInCustomFoldersDidChangeNotification" object:0 userInfo:0];
}

+ (void)setHidesMathNotesInCustomFolders:(BOOL)folders
{
  foldersCopy = folders;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:foldersCopy forKey:@"ICAccountHidesMathNotesInCustomFolders"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICAccountHidesMathNotesInCustomFoldersDidChangeNotification" object:0 userInfo:0];
}

+ (void)setHidesCallNotesInCustomFolders:(BOOL)folders
{
  foldersCopy = folders;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setBool:foldersCopy forKey:@"ICAccountHidesCallNotesInCustomFolders"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICAccountHidesCallNotesInCustomFoldersDidChangeNotification" object:0 userInfo:0];
}

- (void)updateFullNameAndEmail:(id)email
{
  v19 = *MEMORY[0x277D85DE8];
  emailCopy = email;
  if ([(ICAccount *)self accountType]== 1)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      *buf = 138412802;
      v14 = shortLoggingDescription;
      v15 = 2080;
      v16 = "[ICAccount updateFullNameAndEmail:]";
      v17 = 1024;
      v18 = 1112;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Fetching user's full name and primary email address… {account: %@}%s:%d", buf, 0x1Cu);
    }

    objc_initWeak(buf, self);
    cloudContext = [(ICCloudSyncingObject *)self cloudContext];
    identifier = [(ICAccount *)self identifier];
    v9 = [cloudContext containerForAccountID:identifier];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__ICAccount_updateFullNameAndEmail___block_invoke;
    v10[3] = &unk_278196B40;
    objc_copyWeak(&v12, buf);
    v11 = emailCopy;
    [v9 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __36__ICAccount_updateFullNameAndEmail___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = os_log_create("com.apple.notes", "Cloud");
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __36__ICAccount_updateFullNameAndEmail___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __36__ICAccount_updateFullNameAndEmail___block_invoke_cold_2();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFullName:v9];

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 setPrimaryEmail:v8];

  performBlockOnMainThread();
}

- (signed)resolvedLockedNotesMode
{
  accountData = [(ICAccount *)self accountData];
  if (!accountData)
  {
    return 1;
  }

  v4 = accountData;
  accountData2 = [(ICAccount *)self accountData];
  lockedNotesMode = [accountData2 lockedNotesMode];

  if (!lockedNotesMode)
  {
    return 1;
  }

  accountData3 = [(ICAccount *)self accountData];
  lockedNotesMode2 = [accountData3 lockedNotesMode];

  return lockedNotesMode2;
}

- (void)setResolvedLockedNotesMode:(signed __int16)mode
{
  modeCopy = mode;
  accountData = [(ICAccount *)self accountData];
  if (accountData && (v6 = accountData, -[ICAccount accountData](self, "accountData"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lockedNotesMode], v7, v6, v8 == modeCopy))
  {
    accountData2 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(accountData2, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccount *)self setResolvedLockedNotesMode:modeCopy];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccount *)self setResolvedLockedNotesMode:modeCopy];
    }

    accountDataCreateIfNecessary = [(ICAccount *)self accountDataCreateIfNecessary];
    [accountDataCreateIfNecessary setLockedNotesMode:modeCopy];

    accountData2 = [(ICAccount *)self accountData];
    [accountData2 updateChangeCountWithReason:@"Set locked notes mode"];
  }
}

- (id)passwordProtectedNotes
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  predicateForNotesInAccount = [(ICAccount *)self predicateForNotesInAccount];
  v5 = +[(ICCloudSyncingObject *)ICNote];
  v12[1] = v5;
  v6 = +[(ICCloudSyncingObject *)ICNote];
  v12[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v10 = [ICNote notesMatchingPredicate:v8 context:managedObjectContext];

  return v10;
}

- (BOOL)canPasswordProtectNotes
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentUser = [mEMORY[0x277D77BF8] currentUser];
  userType = [currentUser userType];

  return [(ICAccount *)self accountType]!= 1 || userType != 1;
}

- (id)visibleNotes
{
  predicateForVisibleNotes = [(ICAccount *)self predicateForVisibleNotes];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICNote notesMatchingPredicate:predicateForVisibleNotes context:managedObjectContext];

  return v5;
}

- (unint64_t)visibleNotesCount
{
  predicateForVisibleNotes = [(ICAccount *)self predicateForVisibleNotes];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICNote countOfNotesMatchingPredicate:predicateForVisibleNotes context:managedObjectContext];

  return v5;
}

- (unint64_t)visibleInCloudNotesIncludingTrashCount
{
  v3 = MEMORY[0x277CCA920];
  v4 = MEMORY[0x277CBEA60];
  predicateForVisibleNotesIncludingTrash = [(ICAccount *)self predicateForVisibleNotesIncludingTrash];
  v6 = +[ICCloudSyncingObject predicateForInCloudObjects];
  v7 = [v4 arrayWithObjects:{predicateForVisibleNotesIncludingTrash, v6, 0}];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v10 = [ICNote countOfNotesMatchingPredicate:v8 context:managedObjectContext];

  return v10;
}

- (unint64_t)visibleAttachmentsIncludingTrashCount
{
  predicateForVisibleAttachmentsIncludingTrash = [(ICAccount *)self predicateForVisibleAttachmentsIncludingTrash];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICAttachment countOfAttachmentsMatchingPredicate:predicateForVisibleAttachmentsIncludingTrash context:managedObjectContext];

  return v5;
}

- (void)setAccountType:(int)type
{
  v3 = *&type;
  if ([(ICAccount *)self accountType]!= type)
  {
    [(ICAccount *)self willChangeValueForKey:@"accountType"];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [(ICAccount *)self setPrimitiveValue:v5 forKey:@"accountType"];

    [(ICAccount *)self didChangeValueForKey:@"accountType"];

    [(ICAccount *)self updateAccountNameForAccountListSorting];
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  name = [(ICAccount *)self name];
  v5 = [name isEqualToString:nameCopy];

  if ((v5 & 1) == 0)
  {
    [(ICAccount *)self willChangeValueForKey:@"name"];
    [(ICAccount *)self setPrimitiveValue:nameCopy forKey:@"name"];
    [(ICAccount *)self didChangeValueForKey:@"name"];
    [(ICAccount *)self updateAccountNameForAccountListSorting];
  }
}

- (void)setDidChooseToMigrate:(BOOL)migrate
{
  migrateCopy = migrate;
  if ([(ICAccount *)self didChooseToMigrate]!= migrate)
  {
    [(ICAccount *)self willChangeValueForKey:@"didChooseToMigrate"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:migrateCopy];
    [(ICAccount *)self setPrimitiveValue:v5 forKey:@"didChooseToMigrate"];

    [(ICAccount *)self didChangeValueForKey:@"didChooseToMigrate"];

    [ICMigrationUtilities updateLegacyAccountMigrationStateForModernAccount:self];
  }
}

- (void)updateAccountNameForAccountListSorting
{
  v20 = *MEMORY[0x277D85DE8];
  localizedName = [(ICAccount *)self localizedName];
  v4 = localizedName;
  v5 = &stru_2827172C0;
  if (localizedName)
  {
    v5 = localizedName;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld_%@", -[ICAccount accountType](self, "accountType"), v6];
  [(ICAccount *)self setAccountNameForAccountListSorting:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  ownerInverse = [(ICAccount *)self ownerInverse];
  v9 = [ownerInverse countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(ownerInverse);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        accountNameForAccountListSorting = [(ICAccount *)self accountNameForAccountListSorting];
        [v13 setAccountNameForAccountListSorting:accountNameForAccountListSorting];

        ++v12;
      }

      while (v10 != v12);
      v10 = [ownerInverse countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)predicateForVisibleAttachments
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  predicateForAttachmentsInAccount = [(ICAccount *)self predicateForAttachmentsInAccount];
  v10[0] = predicateForAttachmentsInAccount;
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v6 = [(ICBaseAttachment *)ICAttachment predicateForVisibleAttachmentsInContext:managedObjectContext];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

- (id)predicateForVisibleAttachmentsIncludingTrash
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  predicateForAttachmentsInAccount = [(ICAccount *)self predicateForAttachmentsInAccount];
  v10[0] = predicateForAttachmentsInAccount;
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v6 = [(ICBaseAttachment *)ICAttachment predicateForVisibleAttachmentsIncludingTrashInContext:managedObjectContext];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

- (id)predicateForSearchableAttachments
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5 = [ICAttachment predicateForSearchableAttachmentsInContext:managedObjectContext];
  v10[0] = v5;
  predicateForAttachmentsInAccount = [(ICAccount *)self predicateForAttachmentsInAccount];
  v10[1] = predicateForAttachmentsInAccount;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

- (void)managedObjectContextDidSave:(id)save
{
  v23 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  if ([(ICCloudSyncingObject *)self hasContextOptions:1])
  {
    managedObjectContext = [(ICAccount *)self managedObjectContext];
    object = [saveCopy object];
    v7 = [managedObjectContext isEqual:object];

    if (v7)
    {
      userInfo = [saveCopy userInfo];
      v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBE308]];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            trashFolder = [(ICAccount *)self trashFolder];
            objectID = [trashFolder objectID];

            if (v15 == objectID)
            {
              [(ICAccount *)self updateTrashFolderHiddenNoteContainerState];
              goto LABEL_13;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }
}

- (id)ic_loggingIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__22;
  v11 = __Block_byref_object_dispose__22;
  v12 = 0;
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__ICAccount_ic_loggingIdentifier__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__ICAccount_ic_loggingIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICAccount;
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__ICAccount_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v6;
  return v6;
}

void __29__ICAccount_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) dsid];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"nil";
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"dsid"];

  v5 = [*(a1 + 40) userRecordName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"nil";
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"userRecordName"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "didChooseToMigrate")}];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"didChooseToMigrate"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "didFinishMigration")}];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"didFinishMigration"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "didMigrateOnMac")}];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"didMigrateOnMac"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [*(a1 + 40) notes];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:@"noteCount"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [*(a1 + 40) folders];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
  [*(a1 + 32) setObject:v16 forKeyedSubscript:@"folderCount"];

  v17 = [*(a1 + 40) serverSideUpdateTaskContinuationToken];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:@"serverSideUpdateTaskContinuationToken"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(a1 + 40), "serverSideUpdateTaskFailureCount")}];
  [*(a1 + 32) setObject:v18 forKeyedSubscript:@"serverSideUpdateTaskFailureCount"];

  v19 = [*(a1 + 40) serverSideUpdateTaskLastAttemptedBuild];
  [*(a1 + 32) setObject:v19 forKeyedSubscript:@"serverSideUpdateTaskLastAttemptedBuild"];

  v20 = [*(a1 + 40) serverSideUpdateTaskLastAttemptedVersion];
  [*(a1 + 32) setObject:v20 forKeyedSubscript:@"serverSideUpdateTaskLastAttemptedVersion"];

  v21 = [*(a1 + 40) serverSideUpdateTaskLastCompletedBuild];
  [*(a1 + 32) setObject:v21 forKeyedSubscript:@"serverSideUpdateTaskLastCompletedBuild"];

  v22 = [*(a1 + 40) serverSideUpdateTaskLastCompletedVersion];
  [*(a1 + 32) setObject:v22 forKeyedSubscript:@"serverSideUpdateTaskLastCompletedVersion"];
}

- (id)visibleSubFolders
{
  customRootLevelFolders = [(ICAccount *)self customRootLevelFolders];
  v3 = [customRootLevelFolders sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (void)setSubFolderOrderMergeableData:(id)data
{
  dataCopy = data;
  accountData = [(ICAccount *)self accountData];
  [accountData setMergeableData:dataCopy];
}

- (id)subFolderOrderMergeableData
{
  accountData = [(ICAccount *)self accountData];
  mergeableData = [accountData mergeableData];

  return mergeableData;
}

- (void)updateSubFolderMergeableDataChangeCount
{
  accountData = [(ICAccount *)self accountData];
  [accountData updateChangeCountWithReason:@"Updated subfolders"];
}

- (void)setUserRecordName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v10 = 138413058;
    v11 = shortLoggingDescription;
    v12 = 2112;
    v14 = 2080;
    v13 = nameCopy;
    v15 = "[ICAccount setUserRecordName:]";
    v16 = 1024;
    v17 = 1474;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Setting user record name… {account: %@, userRecordName: %@}%s:%d", &v10, 0x26u);
  }

  v7 = NSStringFromSelector(sel_userRecordName);
  [(ICAccount *)self willChangeValueForKey:v7];

  v8 = NSStringFromSelector(sel_userRecordName);
  [(ICAccount *)self setPrimitiveValue:nameCopy forKey:v8];

  v9 = NSStringFromSelector(sel_userRecordName);
  [(ICAccount *)self didChangeValueForKey:v9];
}

- (id)replicaIDForBundleIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  concurrencyType = [managedObjectContext concurrencyType];

  if (concurrencyType == 2)
  {
    replicaIDToBundleIdentifier = [(ICAccount *)self replicaIDToBundleIdentifier];

    if (!replicaIDToBundleIdentifier)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      bundleIdentifiersWithReplicaID = [objc_opt_class() bundleIdentifiersWithReplicaID];
      v10 = [bundleIdentifiersWithReplicaID countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(bundleIdentifiersWithReplicaID);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            uUID = [MEMORY[0x277CCAD78] UUID];
            [dictionary setObject:uUID forKeyedSubscript:v14];
          }

          v11 = [bundleIdentifiersWithReplicaID countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      v16 = [dictionary copy];
      [(ICAccount *)self setReplicaIDToBundleIdentifier:v16];
    }

    replicaIDToBundleIdentifier2 = [(ICAccount *)self replicaIDToBundleIdentifier];
    v18 = [replicaIDToBundleIdentifier2 objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)newAccountWithIdentifier:(id)identifier type:(int)type context:(id)context persistentStore:(id)store
{
  v8 = *&type;
  identifierCopy = identifier;
  storeCopy = store;
  if (context)
  {
    v12 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICAccount" inManagedObjectContext:context];
    [v12 setIdentifier:identifierCopy];
    [v12 setAccountType:v8];
    if (storeCopy)
    {
      v13 = storeCopy;
    }

    else
    {
      v15 = +[ICNoteContext sharedContext];
      v13 = [v15 persistentStoreForAccountID:identifierCopy];
    }

    [v12 assignToPersistentStore:v13];
    [v12 createStandardFolders];
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICAccount(Management) newAccountWithIdentifier:a2 type:? context:? persistentStore:?];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)newLocalAccountInContext:(id)context
{
  contextCopy = context;
  v5 = [self accountWithIdentifier:@"LocalAccount" context:contextCopy];
  if (v5)
  {
    v6 = v5;
    v7 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Trying to add the local account, but it already exists", v12, 2u);
    }
  }

  else
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentUser = [mEMORY[0x277D77BF8] currentUser];

    if ([currentUser userType] == 1 && !objc_msgSend(currentUser, "isTransientUser"))
    {

      v6 = 0;
      goto LABEL_9;
    }

    v6 = [self newAccountWithIdentifier:@"LocalAccount" type:3 context:contextCopy];
    [v6 setDidChooseToMigrate:1];
  }

  localizedLocalAccountName = [self localizedLocalAccountName];
  [v6 setName:localizedLocalAccountName];

LABEL_9:
  return v6;
}

+ (id)inMemoryAccountInContext:(id)context
{
  contextCopy = context;
  v5 = [self accountWithIdentifier:@"InMemoryAccount" context:contextCopy];
  if (!v5)
  {
    v5 = [self newAccountWithIdentifier:@"InMemoryAccount" type:3 context:contextCopy];
    [v5 setDidChooseToMigrate:1];
    [v5 setName:@"In-Memory"];
  }

  return v5;
}

+ (void)deleteAccount:(id)account
{
  accountCopy = account;
  v4 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICAccount(Management) deleteAccount:accountCopy];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICAccountWillBeDeletedNotification" object:accountCopy];

  [accountCopy removeAllObserversIfNecessary];
  if ([accountCopy storeDataSeparately])
  {
    accountFilesDirectoryURL = [accountCopy accountFilesDirectoryURL];
  }

  else
  {
    accountFilesDirectoryURL = 0;
  }

  managedObjectContext = [accountCopy managedObjectContext];
  [managedObjectContext deleteObject:accountCopy];

  if (accountFilesDirectoryURL)
  {
    v8 = [ICFileUtilities coordinateDeleteItemAt:accountFilesDirectoryURL];
    if (v8)
    {
      v9 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ICAccount(Management) deleteAccount:];
      }
    }
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"ICAccountWasDeletedNotification" object:accountCopy];
}

+ (void)deleteAccountWithBatchDelete:(id)delete
{
  v42 = *MEMORY[0x277D85DE8];
  deleteCopy = delete;
  identifier = [deleteCopy identifier];
  v6 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = identifier;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Deleting modern account with batch delete %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICAccountWillBeDeletedNotification" object:deleteCopy];

  [deleteCopy removeAllObserversIfNecessary];
  storeDataSeparately = [deleteCopy storeDataSeparately];
  v37 = identifier;
  if (storeDataSeparately)
  {
    accountFilesDirectoryURL = [deleteCopy accountFilesDirectoryURL];
    v36 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = [ICMedia mediaIdentifiersForAccount:deleteCopy];
    v34 = [ICAttachmentPreviewImage attachmentPreviewImageIdentifiersForAccount:deleteCopy];
    [ICAttachment attachmentIdentifiersForAccount:deleteCopy];
    v36 = accountFilesDirectoryURL = 0;
  }

  v9 = +[ICAuthenticationState sharedState];
  [v9 removeMainKeysFromKeychainForAccount:deleteCopy];

  v10 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ICAccount"];
  v11 = MEMORY[0x277CCAC30];
  identifier2 = [deleteCopy identifier];
  v13 = [v11 predicateWithFormat:@"identifier == %@", identifier2];
  [v10 setPredicate:v13];

  v14 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v10];
  [v14 setResultType:0];
  v15 = objc_autoreleasePoolPush();
  managedObjectContext = [deleteCopy managedObjectContext];
  v39 = 0;
  v17 = [managedObjectContext executeRequest:v14 error:&v39];
  v18 = v39;
  if (v18)
  {
    v19 = v18;
    selfCopy = self;
    v21 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[ICAccount(Management) deleteAccountWithBatchDelete:];
    }

    v22 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount(Management) deleteAccountWithBatchDelete:];
    }

    [selfCopy deleteAccount:deleteCopy];
  }

  v38 = 0;
  [managedObjectContext save:&v38];
  v23 = v38;
  if (v23)
  {
    v24 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[ICAccount(Management) deleteAccountWithBatchDelete:];
    }
  }

  objc_autoreleasePoolPop(v15);
  if (storeDataSeparately)
  {
    v25 = accountFilesDirectoryURL;
    v26 = [ICFileUtilities coordinateDeleteItemAt:accountFilesDirectoryURL];
    v27 = v33;
    v28 = v34;
    v29 = v36;
    if (v26)
    {
      v30 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        +[ICAccount(Management) deleteAccount:];
      }
    }
  }

  else
  {
    v27 = v33;
    [ICMedia purgeMediaFilesForIdentifiers:v33 account:deleteCopy];
    v28 = v34;
    [ICAttachmentPreviewImage purgePreviewImageFilesForIdentifiers:v34 account:deleteCopy];
    v29 = v36;
    [ICAttachment purgeAttachmentFilesForIdentifiers:v36 account:deleteCopy];
    v25 = accountFilesDirectoryURL;
  }

  v31 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v37;
    _os_log_impl(&dword_214D51000, v31, OS_LOG_TYPE_INFO, "Completed batch delete for modern account %@", buf, 0xCu);
  }

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"ICAccountWasDeletedNotification" object:deleteCopy];
}

+ (ICAccount)accountWithIdentifier:(id)identifier context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"identifier == %@", identifier];
  v9 = [self accountsMatchingPredicate:identifier context:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)cloudKitAccountWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v8 = [identifierCopy length];
  v9 = 0;
  if (contextCopy && v8)
  {
    if ([MEMORY[0x277D361D0] isRunningUnitTests])
    {
      v9 = [self accountWithIdentifier:identifierCopy context:contextCopy];
      goto LABEL_20;
    }

    v10 = accountsForAppleCloudKitTable;
    objc_sync_enter(v10);
    v11 = [accountsForAppleCloudKitTable objectForKey:contextCopy];
    v12 = [v11 objectForKey:identifierCopy];
    v9 = v12;
    if (v12)
    {
      goto LABEL_6;
    }

    v15 = +[ICAccount accountUtilities];
    v16 = [v15 iCloudACAccountWithIdentifier:identifierCopy];

    if (![v16 ic_isNotesEnabled])
    {
      v9 = 0;
      goto LABEL_18;
    }

    v9 = [self accountWithIdentifier:identifierCopy context:contextCopy];

    if (v9)
    {
LABEL_6:
      managedObjectContext = [v9 managedObjectContext];

      if (managedObjectContext)
      {
        if (([v9 isDeleted] & 1) == 0)
        {
          if (v12)
          {
LABEL_19:

            objc_sync_exit(v10);
            goto LABEL_20;
          }

          goto LABEL_14;
        }

        v14 = 0;
      }

      else
      {
        v14 = [self accountWithIdentifier:identifierCopy context:contextCopy];
      }

      v9 = v14;
    }

LABEL_14:
    v16 = [v11 mutableCopy];
    [v16 setObject:v9 forKeyedSubscript:identifierCopy];
    v17 = accountsForAppleCloudKitTable;
    v18 = [v16 copy];
    [v17 setObject:v18 forKey:contextCopy];

LABEL_18:
    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

+ (id)cloudKitAccountInContext:(id)context
{
  v49 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__22;
  v46 = __Block_byref_object_dispose__22;
  v47 = 0;
  v5 = +[ICAccount accountUtilities];
  primaryICloudACAccount = [v5 primaryICloudACAccount];

  v7 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    identifier = [primaryICloudACAccount identifier];
    [(ICAccount(Management) *)identifier cloudKitAccountInContext:buf, v7];
  }

  v9 = accountForAppleCloudKitTable;
  objc_sync_enter(v9);
  v10 = [accountForAppleCloudKitTable objectForKey:contextCopy];
  v11 = v43[5];
  v43[5] = v10;

  objc_sync_exit(v9);
  v12 = v43[5];
  if (v12)
  {
    managedObjectContext = [v12 managedObjectContext];
    v14 = managedObjectContext == 0;

    if (v14)
    {
      v20 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        +[ICAccount(Management) cloudKitAccountInContext:];
      }

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_651;
      v32[3] = &unk_278196B68;
      v35 = &v42;
      selfCopy = self;
      v33 = primaryICloudACAccount;
      v34 = contextCopy;
      [v34 performBlockAndWait:v32];
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      managedObjectContext2 = [v43[5] managedObjectContext];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_2;
      v27[3] = &unk_278196B90;
      v27[4] = &v28;
      v27[5] = &v42;
      [managedObjectContext2 performBlockAndWait:v27];

      if (*(v29 + 24) == 1)
      {
        v16 = os_log_create("com.apple.notes", "Accounts");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          +[ICAccount(Management) cloudKitAccountInContext:];
        }

        v17 = v43[5];
        v43[5] = 0;
      }

      _Block_object_dispose(&v28, 8);
    }
  }

  else if ([primaryICloudACAccount ic_isNotesEnabled])
  {
    identifier2 = [primaryICloudACAccount identifier];
    if (identifier2)
    {
      v19 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[ICAccount(Management) cloudKitAccountInContext:];
      }

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __50__ICAccount_Management__cloudKitAccountInContext___block_invoke;
      v37[3] = &unk_278196B68;
      v40 = &v42;
      selfCopy2 = self;
      v38 = identifier2;
      v39 = contextCopy;
      [v39 performBlockAndWait:v37];
    }
  }

  else
  {
    v21 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount(Management) cloudKitAccountInContext:];
    }
  }

  v22 = accountForAppleCloudKitTable;
  objc_sync_enter(v22);
  [accountForAppleCloudKitTable setObject:v43[5] forKey:contextCopy];
  objc_sync_exit(v22);

  managedObjectContext3 = [v43[5] managedObjectContext];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_652;
  v26[3] = &unk_278196B18;
  v26[4] = &v42;
  [managedObjectContext3 performBlockAndWait:v26];

  v24 = v43[5];
  _Block_object_dispose(&v42, 8);

  return v24;
}

void __50__ICAccount_Management__cloudKitAccountInContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 56) accountWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_651(uint64_t a1)
{
  v2 = *(a1 + 56);
  v6 = [*(a1 + 32) identifier];
  v3 = [v2 accountWithIdentifier:v6 context:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 40) + 8) + 40) isDeleted];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_652(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_652_cold_1(a1);
  }
}

+ (id)cloudKitIfMigratedElseLocalAccountInContext:(id)context
{
  contextCopy = context;
  v5 = [self cloudKitAccountInContext:contextCopy];
  v6 = v5;
  if (v5 && [v5 didChooseToMigrate])
  {
    v7 = v6;
  }

  else
  {
    v8 = [self allActiveCloudKitAccountsInContext:contextCopy];
    if ([v8 count])
    {
      [v8 firstObject];
    }

    else
    {
      [self localAccountInContext:contextCopy];
    }
    v7 = ;
  }

  return v7;
}

+ (id)localAccountInContext:(id)context
{
  v3 = [self accountWithIdentifier:@"LocalAccount" context:context];
  v4 = v3;
  if (v3 && ([v3 didChooseToMigrate] & 1) == 0)
  {
    [v4 setDidChooseToMigrate:1];
  }

  return v4;
}

+ (id)defaultAccountInContext:(id)context
{
  contextCopy = context;
  v5 = ICSettingsBundleID();
  CFPreferencesAppSynchronize(v5);
  v6 = ICSettingsBundleID();
  v7 = CFPreferencesCopyAppValue(@"DefaultNotesAccount", v6);
  v8 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[ICAccount(Management) defaultAccountInContext:];
  }

  if ([MEMORY[0x277D361D0] isRunningUnitTests])
  {
    v9 = +[ICDefaultAccountUtilities _defaultAccountIdentifierForTests];
    if ([v9 length])
    {
      v10 = v9;

      v11 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        +[ICAccount(Management) defaultAccountInContext:];
      }

      v7 = v10;
    }
  }

  if (v7)
  {
    v12 = [ICAccount accountWithIdentifier:v7 context:contextCopy];
    v13 = v12;
    if (v12 && [v12 didChooseToMigrate])
    {
      v14 = v13;
      v13 = v14;
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
  }

  if (![v7 isEqualToString:*MEMORY[0x277D358F8]] || (objc_msgSend(self, "localAccountInContext:", contextCopy), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "didChooseToMigrate"), v15, !v16) || (objc_msgSend(self, "localAccountInContext:", contextCopy), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount(Management) defaultAccountInContext:];
    }

    v14 = [self cloudKitIfMigratedElseLocalAccountInContext:contextCopy];
  }

LABEL_20:
  v18 = v14;

  return v18;
}

+ (id)activeAccountWithUserRecordName:(id)name context:(id)context
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  name = [v6 predicateWithFormat:@"didChooseToMigrate == YES && userRecordName == %@", name];
  v9 = MEMORY[0x277CCAC98];
  v10 = NSStringFromSelector(sel_accountType);
  v11 = [v9 sortDescriptorWithKey:v10 ascending:1];

  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [self ic_objectsMatchingPredicate:name sortDescriptors:v12 context:contextCopy];

  firstObject = [v13 firstObject];

  return firstObject;
}

+ (id)allAccountsInContext:(id)context
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  contextCopy = context;
  v6 = [[v4 alloc] initWithKey:@"name" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = [self ic_objectsMatchingPredicate:0 sortDescriptors:v7 context:contextCopy];

  return v8;
}

+ (id)allAccountIdentifiersInContext:(id)context
{
  contextCopy = context;
  v4 = objc_autoreleasePoolPush();
  v5 = +[ICAccount fetchRequest];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_282747FB8];
  v6 = [contextCopy executeFetchRequest:v5 error:0];
  v7 = [v6 valueForKey:@"identifier"];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v7];
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v8;
}

+ (id)passwordProtectedNoteIdentifiersInAccountIdentifier:(id)identifier context:(id)context
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v5 predicateWithFormat:@"folder.account.identifier == %@", identifier];
  v13[0] = identifier;
  v8 = +[ICCloudSyncingObject predicateForPasswordProtectedObjects];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v9];
  v11 = [ICNote noteIdentifiersMatchingPredicate:v10 context:contextCopy];

  return v11;
}

+ (unint64_t)numberOfCloudKitAccountsInContext:(id)context onlyMigrated:(BOOL)migrated
{
  migratedCopy = migrated;
  v5 = MEMORY[0x277CBE428];
  contextCopy = context;
  v7 = [v5 fetchRequestWithEntityName:@"ICAccount"];
  v8 = MEMORY[0x277CBEB18];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType == %d", 1];
  v10 = [v8 arrayWithObjects:{v9, 0}];

  if (migratedCopy)
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"didChooseToMigrate == YES"];
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v10];
  [v7 setPredicate:v12];

  v18 = 0;
  v13 = [contextCopy countForFetchRequest:v7 error:&v18];

  v14 = v18;
  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ICAccount(Management) numberOfCloudKitAccountsInContext:onlyMigrated:];
    }
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL || v14 != 0)
  {
    v13 = 0;
  }

  return v13;
}

+ (id)allActiveAccountsInContextSortedByAccountType:(id)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  typeCopy = type;
  v6 = [[v4 alloc] initWithKey:@"accountType" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [self allActiveAccountsInContext:typeCopy sortDescriptors:v7 relationshipKeyPathsForPrefetching:0];

  return v8;
}

+ (id)allActiveAccountsInContextWithDefaultBeingFirstIfApplicable:(id)applicable
{
  applicableCopy = applicable;
  v5 = [self allActiveAccountsInContext:applicableCopy];
  v6 = [ICAccount defaultAccountInContext:applicableCopy];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__ICAccount_Management__allActiveAccountsInContextWithDefaultBeingFirstIfApplicable___block_invoke;
  v13[3] = &unk_278196BB8;
  v14 = v6;
  v7 = v6;
  v8 = [v5 ic_objectsPassingTest:v13];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [v5 mutableCopy];
    [v10 removeObject:firstObject];
    [v10 insertObject:firstObject atIndex:0];
    v11 = [v10 copy];

    v5 = v11;
  }

  return v5;
}

uint64_t __85__ICAccount_Management__allActiveAccountsInContextWithDefaultBeingFirstIfApplicable___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (id)allActiveAccountsInContext:(id)context sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching
{
  v8 = MEMORY[0x277CCAC30];
  prefetchingCopy = prefetching;
  descriptorsCopy = descriptors;
  contextCopy = context;
  v12 = [v8 predicateWithFormat:@"accountType != %d || didChooseToMigrate == YES", 1];
  v13 = [self ic_objectsMatchingPredicate:v12 sortDescriptors:descriptorsCopy relationshipKeyPathsForPrefetching:prefetchingCopy fetchLimit:0 context:contextCopy];

  return v13;
}

+ (id)allActiveCloudKitAccountsInContext:(id)context
{
  v4 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v6 = [v4 predicateWithFormat:@"accountType == %d && didChooseToMigrate == YES", 1];
  v7 = [self accountsMatchingPredicate:v6 context:contextCopy];

  return v7;
}

+ (id)accountsWithAccountType:(int)type context:(id)context
{
  v4 = *&type;
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"accountType == %d", v4];
  v9 = [self accountsMatchingPredicate:v8 context:contextCopy];

  return v9;
}

+ (BOOL)isCloudKitAccountAvailable
{
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  v4 = +[ICNoteContext sharedContext];
  v5 = v4;
  if (isMainThread)
  {
    [v4 managedObjectContext];
  }

  else
  {
    [v4 workerManagedObjectContext];
  }
  v6 = ;

  v7 = [self isCloudKitAccountAvailableInContext:v6];
  return v7;
}

+ (BOOL)isCloudKitAccountAvailableInContext:(id)context
{
  contextCopy = context;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v4 = accountForAppleCloudKitTable;
  objc_sync_enter(v4);
  objectEnumerator = [accountForAppleCloudKitTable objectEnumerator];
  nextObject = [objectEnumerator nextObject];

  if (nextObject)
  {
    managedObjectContext = [nextObject managedObjectContext];

    if (managedObjectContext)
    {
      *(v20 + 24) = 1;
    }
  }

  objc_sync_exit(v4);
  if (v20[3])
  {
    goto LABEL_9;
  }

  v8 = accountsForAppleCloudKitTable;
  objc_sync_enter(v8);
  objectEnumerator2 = [accountsForAppleCloudKitTable objectEnumerator];
  nextObject2 = [objectEnumerator2 nextObject];

  objectEnumerator3 = [nextObject2 objectEnumerator];
  nextObject3 = [objectEnumerator3 nextObject];

  if (nextObject3)
  {
    managedObjectContext2 = [nextObject3 managedObjectContext];

    if (managedObjectContext2)
    {
      *(v20 + 24) = 1;
    }
  }

  objc_sync_exit(v8);
  if (v20[3])
  {
LABEL_9:
    v14 = 1;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__ICAccount_Management__isCloudKitAccountAvailableInContext___block_invoke;
    v16[3] = &unk_278194DE8;
    v18 = &v19;
    v17 = contextCopy;
    [v17 performBlockAndWait:v16];

    v14 = *(v20 + 24);
  }

  _Block_object_dispose(&v19, 8);

  return v14 & 1;
}

unint64_t __61__ICAccount_Management__isCloudKitAccountAvailableInContext___block_invoke(uint64_t a1)
{
  result = [ICAccount numberOfCloudKitAccountsInContext:*(a1 + 32) onlyMigrated:0];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

+ (BOOL)clearAccountForAppleCloudKitTable
{
  v2 = accountForAppleCloudKitTable;
  objc_sync_enter(v2);
  v3 = [accountForAppleCloudKitTable count];
  v4 = v3 != 0;
  if (v3)
  {
    v5 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount(Management) clearAccountForAppleCloudKitTable];
    }

    [accountForAppleCloudKitTable removeAllObjects];
  }

  objc_sync_exit(v2);

  v6 = accountsForAppleCloudKitTable;
  objc_sync_enter(v6);
  if ([accountsForAppleCloudKitTable count])
  {
    v7 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount(Management) clearAccountForAppleCloudKitTable];
    }

    [accountsForAppleCloudKitTable removeAllObjects];
    v4 = 1;
  }

  objc_sync_exit(v6);

  return v4;
}

+ (BOOL)hasModernAccountInContext:(id)context
{
  contextCopy = context;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ICAccount_Management__hasModernAccountInContext___block_invoke;
  v7[3] = &unk_278194D68;
  v4 = contextCopy;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __51__ICAccount_Management__hasModernAccountInContext___block_invoke(uint64_t a1)
{
  v2 = [ICAccount allActiveAccountsInContext:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

- (BOOL)isInICloudAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICAccount *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ICAccount_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __40__ICAccount_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accountType];
  *(*(*(a1 + 40) + 8) + 24) = result == 1;
  return result;
}

- (BOOL)needsToBePushedToCloud
{
  userRecordName = [(ICAccount *)self userRecordName];
  if ([userRecordName length])
  {
    v6.receiver = self;
    v6.super_class = ICAccount;
    needsToBePushedToCloud = [(ICCloudSyncingObject *)&v6 needsToBePushedToCloud];
  }

  else
  {
    needsToBePushedToCloud = 0;
  }

  return needsToBePushedToCloud;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  dCopy = d;
  v8 = [ICAccount cloudKitAccountWithIdentifier:iD context:context];
  v9 = v8;
  userRecordName = 0;
  if (dCopy)
  {
    if (v8)
    {
      userRecordName = [v8 userRecordName];
      if (userRecordName)
      {
        userRecordName2 = [v9 userRecordName];
        recordName = [dCopy recordName];
        v13 = [userRecordName2 isEqualToString:recordName];

        if (v13)
        {
          userRecordName = v9;
        }

        else
        {
          userRecordName = 0;
        }
      }
    }
  }

  return userRecordName;
}

+ (id)allCloudObjectIDsInContext:(id)context passingTest:(id)test
{
  testCopy = test;
  v6 = [ICAccount allCloudKitAccountsInContext:context];
  if (v6)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__ICAccount_CloudKit__allCloudObjectIDsInContext_passingTest___block_invoke;
    v18[3] = &unk_2781975D0;
    v19 = testCopy;
    v7 = [v6 ic_objectsPassingTest:v18];
    v8 = [v7 ic_compactMap:&__block_literal_global_36];

    v9 = v19;
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccount(CloudKit) *)v9 allCloudObjectIDsInContext:v10 passingTest:v11, v12, v13, v14, v15, v16];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

uint64_t __62__ICAccount_CloudKit__allCloudObjectIDsInContext_passingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    return (*(v4 + 16))(v4, a2, a4);
  }

  else
  {
    return 1;
  }
}

+ (void)enumerateAllCloudObjectsInContext:(id)context batchSize:(unint64_t)size saveAfterBatch:(BOOL)batch usingBlock:(id)block
{
  batchCopy = batch;
  contextCopy = context;
  blockCopy = block;
  v10 = [ICAccount allCloudKitAccountsInContext:contextCopy];
  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __93__ICAccount_CloudKit__enumerateAllCloudObjectsInContext_batchSize_saveAfterBatch_usingBlock___block_invoke;
    v19[3] = &unk_278197618;
    v20 = blockCopy;
    [v10 enumerateObjectsUsingBlock:v19];
    if (batchCopy)
    {
      [contextCopy ic_saveWithLogDescription:@"Saving after enumerating all accounts"];
    }

    v11 = v20;
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccount(CloudKit) *)v11 enumerateAllCloudObjectsInContext:v12 batchSize:v13 saveAfterBatch:v14 usingBlock:v15, v16, v17, v18];
    }
  }
}

uint64_t __93__ICAccount_CloudKit__enumerateAllCloudObjectsInContext_batchSize_saveAfterBatch_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  if (!approach)
  {
    v44.receiver = self;
    v44.super_class = ICAccount;
    if (![(ICCloudSyncingObject *)&v44 mergeCloudKitRecord:recordCopy accountID:d approach:0 mergeableFieldState:state])
    {
      goto LABEL_9;
    }

    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [(ICAccount *)self setUserRecordName:recordName];

    v16 = [recordCopy objectForKeyedSubscript:@"DidChooseToMigrate"];
    v17 = v16;
    if (!v16 || (v18 = [v16 BOOLValue], v18 == -[ICAccount didChooseToMigrate](self, "didChooseToMigrate")))
    {
      v21 = 0;
    }

    else
    {
      v19 = [(ICAccount *)self ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x277D36140]];
      -[ICAccount setDidChooseToMigrate:](self, "setDidChooseToMigrate:", [v17 BOOLValue]);
      v20 = [(ICAccount *)self ic_postNotificationOnMainThreadAfterSaveWithName:*MEMORY[0x277D36138]];
      if (([(ICAccount *)self didChooseToMigrate]& 1) == 0)
      {
        [ICNoteContext setLegacyNotesDisabled:0];
      }

      v21 = 1;
    }

    v24 = [recordCopy objectForKeyedSubscript:@"DidFinishMigration"];
    v25 = v24;
    if (v24)
    {
      bOOLValue = [v24 BOOLValue];
      if (bOOLValue != [(ICAccount *)self didFinishMigration])
      {
        -[ICAccount setDidFinishMigration:](self, "setDidFinishMigration:", [v25 BOOLValue]);
        v21 = 1;
      }
    }

    v27 = [recordCopy objectForKeyedSubscript:@"DidMigrateOnMac"];
    v28 = v27;
    if (!v27 || (v29 = [v27 BOOLValue], v29 == -[ICAccount didMigrateOnMac](self, "didMigrateOnMac")))
    {
      if (!v21)
      {
LABEL_24:

        v22 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      -[ICAccount setDidMigrateOnMac:](self, "setDidMigrateOnMac:", [v28 BOOLValue]);
    }

    v30 = +[ICNoteContext sharedContext];
    primaryICloudACAccount = [v30 primaryICloudACAccount];

    if (primaryICloudACAccount)
    {
      v32 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [(ICAccount(CloudKit) *)v32 mergeCloudKitRecord:v33 accountID:v34 approach:v35 mergeableFieldState:v36, v37, v38, v39];
      }

      didChooseToMigrate = [(ICAccount *)self didChooseToMigrate];
      didFinishMigration = [(ICAccount *)self didFinishMigration];
      didMigrateOnMac = [(ICAccount *)self didMigrateOnMac];
      accountStore = [primaryICloudACAccount accountStore];
      [ICMigrationUtilities saveDidChooseToMigrate:didChooseToMigrate didFinishMigration:didFinishMigration didMigrateOnMac:didMigrateOnMac toACAccount:primaryICloudACAccount inStore:accountStore completionHandler:0];
    }

    goto LABEL_24;
  }

  v11 = MEMORY[0x277D36198];
  className = [(ICAccount *)self className];
  v13 = ICStringFromSyncingApproach(approach);
  [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccount(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v13}];

LABEL_9:
  v22 = 0;
LABEL_10:

  return v22;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  if (approach)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICAccount *)self className:approach];
    v8 = ICStringFromSyncingApproach(approach);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccount(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ICAccount;
    v9 = [(ICCloudSyncingObject *)&v20 makeCloudKitRecordForApproach:0 mergeableFieldState:state];
    cryptoVerifier = [(ICAccount *)self cryptoVerifier];
    [v9 setObject:cryptoVerifier forKeyedSubscript:@"CryptoVerifier"];

    cryptoSalt = [(ICAccount *)self cryptoSalt];
    [v9 setObject:cryptoSalt forKeyedSubscript:@"CryptoSalt"];

    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ICAccount cryptoIterationCount](self, "cryptoIterationCount")}];
    [v9 setObject:v12 forKeyedSubscript:@"CryptoIterationCount"];

    passwordHint = [(ICCloudSyncingObject *)self passwordHint];
    v14 = [passwordHint dataUsingEncoding:4];
    encryptedValues = [v9 encryptedValues];
    [encryptedValues setObject:v14 forKeyedSubscript:@"PasswordHint"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAccount didChooseToMigrate](self, "didChooseToMigrate")}];
    [v9 setObject:v16 forKeyedSubscript:@"DidChooseToMigrate"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAccount didFinishMigration](self, "didFinishMigration")}];
    [v9 setObject:v17 forKeyedSubscript:@"DidFinishMigration"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAccount didMigrateOnMac](self, "didMigrateOnMac")}];
    [v9 setObject:v18 forKeyedSubscript:@"DidMigrateOnMac"];
  }

  return v9;
}

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  ICAccount.associateAppEntity(with:)(setCopy);
}

- (void)setMarkedForDeletion:.cold.1()
{
  v0 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)standardFolderIdentifierWithPrefix:accountIdentifier:accountType:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)compare:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v12 = 138412802;
  v13 = v5;
  OUTLINED_FUNCTION_4_1();
  v14 = v7;
  v15 = v10;
  v16 = v11;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Trying to compare an %@ with a non-%@: %@", &v12, 0x20u);
}

+ (void)mostRecentSystemPaperNoteInManagedObjectContext:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setResolvedLockedNotesMode:(void *)a1 .cold.1(void *a1, __int16 a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = NSStringFromAccountDataLockedNotesMode(a2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)setResolvedLockedNotesMode:(void *)a1 .cold.2(void *a1, __int16 a2)
{
  v3 = [a1 shortLoggingDescription];
  v4 = NSStringFromAccountDataLockedNotesMode(a2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_652_cold_1(uint64_t a1)
{
  v7 = [*(*(*(a1 + 32) + 8) + 40) objectID];
  [*(*(*(a1 + 32) + 8) + 40) didChooseToMigrate];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

@end