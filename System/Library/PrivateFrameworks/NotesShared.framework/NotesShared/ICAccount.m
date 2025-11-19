@interface ICAccount
+ (BOOL)clearAccountForAppleCloudKitTable;
+ (BOOL)hasModernAccountInContext:(id)a3;
+ (BOOL)hidesCallNotesInCustomFolders;
+ (BOOL)hidesMathNotesInCustomFolders;
+ (BOOL)hidesSystemPaperNotesInCustomFolders;
+ (BOOL)isCloudKitAccountAvailable;
+ (BOOL)isCloudKitAccountAvailableInContext:(id)a3;
+ (ICAccount)accountWithIdentifier:(id)a3 context:(id)a4;
+ (ICAccountUtilities)accountUtilities;
+ (id)accountsWithAccountType:(int)a3 context:(id)a4;
+ (id)activeAccountWithUserRecordName:(id)a3 context:(id)a4;
+ (id)allAccountIdentifiersInContext:(id)a3;
+ (id)allAccountsInContext:(id)a3;
+ (id)allActiveAccountsInContext:(id)a3 sortDescriptors:(id)a4 relationshipKeyPathsForPrefetching:(id)a5;
+ (id)allActiveAccountsInContextSortedByAccountType:(id)a3;
+ (id)allActiveAccountsInContextWithDefaultBeingFirstIfApplicable:(id)a3;
+ (id)allActiveCloudKitAccountsInContext:(id)a3;
+ (id)allCloudObjectIDsInContext:(id)a3 passingTest:(id)a4;
+ (id)cloudKitAccountInContext:(id)a3;
+ (id)cloudKitAccountWithIdentifier:(id)a3 context:(id)a4;
+ (id)cloudKitIfMigratedElseLocalAccountInContext:(id)a3;
+ (id)defaultAccountInContext:(id)a3;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)inMemoryAccountInContext:(id)a3;
+ (id)localAccountInContext:(id)a3;
+ (id)localizedLocalAccountName;
+ (id)localizedLocalAccountNameMidSentence;
+ (id)mostRecentSystemPaperNoteInManagedObjectContext:(id)a3;
+ (id)newAccountWithIdentifier:(id)a3 type:(int)a4 context:(id)a5 persistentStore:(id)a6;
+ (id)newLocalAccountInContext:(id)a3;
+ (id)passwordProtectedNoteIdentifiersInAccountIdentifier:(id)a3 context:(id)a4;
+ (id)standardFolderIdentifierWithPrefix:(id)a3 accountIdentifier:(id)a4 accountType:(int)a5;
+ (unint64_t)numberOfCloudKitAccountsInContext:(id)a3 onlyMigrated:(BOOL)a4;
+ (void)deleteAccount:(id)a3;
+ (void)deleteAccountWithBatchDelete:(id)a3;
+ (void)enumerateAllCloudObjectsInContext:(id)a3 batchSize:(unint64_t)a4 saveAfterBatch:(BOOL)a5 usingBlock:(id)a6;
+ (void)initialize;
+ (void)initializeLocalAccountNamesInBackground;
+ (void)localeDidChange:(id)a3;
+ (void)setHidesCallNotesInCustomFolders:(BOOL)a3;
+ (void)setHidesMathNotesInCustomFolders:(BOOL)a3;
+ (void)setHidesSystemPaperNotesInCustomFolders:(BOOL)a3;
- (BOOL)canPasswordProtectNotes;
- (BOOL)containsSharedFolders;
- (BOOL)hasAnyCustomFoldersIncludingSystem:(BOOL)a3;
- (BOOL)isDataSeparated;
- (BOOL)isInICloudAccount;
- (BOOL)isLocalAccount;
- (BOOL)isManaged;
- (BOOL)isPrimaryiCloudAccount;
- (BOOL)isShowingDateHeaders;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)needsToBePushedToCloud;
- (BOOL)supportsDateHeaders;
- (BOOL)visibleRootFoldersContainFolderWithTitle:(id)a3;
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
- (id)folderWithIdentifier:(id)a3;
- (id)ic_loggingIdentifier;
- (id)ic_loggingValues;
- (id)localizedNameMidSentence;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
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
- (id)replicaIDForBundleIdentifier:(id)a3;
- (id)reservedAccountFolderTitles;
- (id)searchableTextContent;
- (id)standardFolderIdentifierWithPrefix:(id)a3;
- (id)subFolderIdentifiersOrderedSet;
- (id)subFolderOrderMergeableData;
- (id)systemPaperBundlesDirectoryURL;
- (id)systemPaperDirectoryURL;
- (id)systemPaperNotes;
- (id)systemPaperTemporaryDirectoryURL;
- (id)temporaryDirectoryURL;
- (id)uniqueUserParticipants;
- (id)visibleFolders;
- (id)visibleFoldersWithParent:(id)a3;
- (id)visibleNoteContainerChildren;
- (id)visibleNoteContainers;
- (id)visibleNotes;
- (id)visibleRootFolderWithTitle:(id)a3;
- (id)visibleSubFolders;
- (int64_t)compare:(id)a3;
- (signed)resolvedLockedNotesMode;
- (unint64_t)indexOfCustomRootLevelFolder:(id)a3;
- (unint64_t)visibleAttachmentsIncludingTrashCount;
- (unint64_t)visibleCustomFoldersCount;
- (unint64_t)visibleInCloudNotesIncludingTrashCount;
- (unint64_t)visibleNotesCount;
- (unint64_t)visibleNotesIncludingTrashCount;
- (void)addTrashObserversIfNecessary;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)createDefaultFolder;
- (void)createStandardFolders;
- (void)createTrashFolder;
- (void)dealloc;
- (void)deleteUnusedHashtagsWithStandardizedContent:(id)a3;
- (void)ensureCriticalPaperDirectoriesExist;
- (void)managedObjectContextDidSave:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performBlockInPersonaContext:(id)a3;
- (void)performBlockInPersonaContextIfNecessary:(id)a3;
- (void)prepareForDeletion;
- (void)removeTrashObserversIfNecessary;
- (void)setAccountType:(int)a3;
- (void)setDidChooseToMigrate:(BOOL)a3;
- (void)setMarkedForDeletion:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setResolvedLockedNotesMode:(signed __int16)a3;
- (void)setSubFolderOrderMergeableData:(id)a3;
- (void)setUserRecordName:(id)a3;
- (void)updateAccountNameForAccountListSorting;
- (void)updateFullNameAndEmail:(id)a3;
- (void)updateSubFolderMergeableDataChangeCount;
- (void)updateTrashFolderHiddenNoteContainerState;
- (void)willTurnIntoFault;
@end

@implementation ICAccount

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v4 = accountForAppleCloudKitTable;
    accountForAppleCloudKitTable = v3;

    v5 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v6 = accountsForAppleCloudKitTable;
    accountsForAppleCloudKitTable = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:a1 selector:sel_localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
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
  v3 = [(ICAccount *)self identifier];
  v4 = [v3 isEqualToString:@"LocalAccount"];

  if (v4)
  {
    [(ICAccount *)self setAccountType:3];
  }
}

- (id)predicateForVisibleFolders
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCA920]);
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICFolder predicateForVisibleFoldersInContext:v4];
  v10[0] = v5;
  v6 = [(ICAccount *)self predicateForFolders];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 initWithType:1 subpredicates:v7];

  return v8;
}

- (ICFolder)trashFolder
{
  trashFolder = self->_trashFolder;
  if (!trashFolder)
  {
    v4 = [(ICAccount *)self trashFolderIdentifier];
    v5 = [(ICAccount *)self folderWithIdentifier:v4];
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
  v3 = [(ICAccount *)self predicateForVisibleFolders];
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICFolder foldersMatchingPredicate:v3 context:v4];

  return v5;
}

- (id)predicateForFolders
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [(ICAccount *)self identifier];
  v4 = [v2 predicateWithFormat:@"account.identifier == %@", v3];

  return v4;
}

- (void)updateTrashFolderHiddenNoteContainerState
{
  v2 = [(ICAccount *)self trashFolder];
  v3 = [v2 managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ICAccount_updateTrashFolderHiddenNoteContainerState__block_invoke;
  v5[3] = &unk_278194B00;
  v6 = v2;
  v4 = v2;
  [v3 performBlockAndWait:v5];
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
    v4 = [(ICAccount *)self defaultFolderIdentifier];
    v5 = [(ICAccount *)self folderWithIdentifier:v4];
    v6 = self->_defaultFolder;
    self->_defaultFolder = v5;

    v7 = self->_defaultFolder;
    if (!v7)
    {
      [(ICAccount *)self createDefaultFolder];
      v7 = self->_defaultFolder;
    }

    v8 = [(ICFolder *)v7 markedForDeletion];
    defaultFolder = self->_defaultFolder;
    if (v8)
    {
      [(ICFolder *)defaultFolder setMarkedForDeletion:0];
      defaultFolder = self->_defaultFolder;
    }
  }

  return defaultFolder;
}

- (unint64_t)visibleNotesIncludingTrashCount
{
  v3 = [(ICAccount *)self predicateForVisibleNotesIncludingTrash];
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICNote countOfNotesMatchingPredicate:v3 context:v4];

  return v5;
}

- (id)predicateForVisibleNotesIncludingTrash
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v4 = [(ICAccount *)self predicateForNotesInAccount];
  v10[0] = v4;
  v5 = [(ICAccount *)self managedObjectContext];
  v6 = [ICNote predicateForVisibleNotesIncludingTrash:1 includingSystemPaper:1 includingMathNotes:1 includingCallNotes:1 inContext:v5];
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
      v3 = [(ICAccount *)self trashFolder];

      if (v3)
      {
        v4 = [(ICAccount *)self trashFolder];
        [v4 ic_addObserver:self forKeyPath:@"notes" context:compoundliteral explicitOptions:4];

        [(ICAccount *)self setDidAddTrashObservers:1];
        v7 = [MEMORY[0x277CCAB98] defaultCenter];
        v5 = *MEMORY[0x277CBE1B0];
        v6 = [(ICAccount *)self managedObjectContext];
        [v7 addObserver:self selector:sel_managedObjectContextDidSave_ name:v5 object:v6];
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
    v3 = [(ICAccount *)self trashFolder];
    [v3 ic_removeObserver:self forKeyPath:@"notes" context:compoundliteral];

    [(ICAccount *)self setDidAddTrashObservers:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = *MEMORY[0x277CBE1B0];
    v5 = [(ICAccount *)self managedObjectContext];
    [v6 removeObserver:self name:v4 object:v5];
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ICAccountHidesSystemPaperNotesInCustomFolders"];

  return v3;
}

+ (BOOL)hidesMathNotesInCustomFolders
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ICAccountHidesMathNotesInCustomFolders"];

  return v3;
}

+ (BOOL)hidesCallNotesInCustomFolders
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ICAccountHidesCallNotesInCustomFolders"];

  return v3;
}

- (BOOL)isShowingDateHeaders
{
  v2 = [(ICAccount *)self supportsDateHeaders];
  if (v2)
  {
    LOBYTE(v2) = [MEMORY[0x277D361C8] defaultDateHeadersType] == 2;
  }

  return v2;
}

- (BOOL)supportsDateHeaders
{
  v2 = [(ICNoteContainer *)self customNoteSortType];
  v3 = [v2 resolvedCustomSortTypeOrder] != 3;

  return v3;
}

- (id)predicateForVisibleNotes
{
  v3 = [(ICCloudSyncingObject *)self viewContext];
  v4 = MEMORY[0x277CBEB18];
  v5 = [(ICAccount *)self predicateForNotesInAccount];
  v6 = [v4 arrayWithObject:v5];

  v7 = +[ICNote predicateForVisibleNotesIncludingTrash:includingSystemPaper:includingMathNotes:includingCallNotes:inContext:](ICNote, "predicateForVisibleNotesIncludingTrash:includingSystemPaper:includingMathNotes:includingCallNotes:inContext:", 0, +[ICAccount hidesSystemPaperNotesInCustomFolders](ICAccount, "hidesSystemPaperNotesInCustomFolders") ^ 1, +[ICAccount hidesMathNotesInCustomFolders](ICAccount, "hidesMathNotesInCustomFolders") ^ 1, +[ICAccount hidesCallNotesInCustomFolders]^ 1, v3);
  [v6 ic_addNonNilObject:v7];

  v8 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];

  return v8;
}

- (BOOL)isLocalAccount
{
  v2 = [(ICAccount *)self identifier];
  v3 = [v2 isEqualToString:@"LocalAccount"];

  return v3;
}

- (id)mediaDirectoryURL
{
  v2 = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277D360D0] isDirectory:1];

  return v3;
}

- (id)accountFilesDirectoryURL
{
  v3 = [objc_opt_class() accountUtilities];
  v4 = [(ICAccount *)self identifier];
  v5 = [v3 applicationDocumentsURLForAccountIdentifier:v4];

  v6 = [(ICAccount *)self identifier];
  if (v6 && (v7 = v6, v8 = [(ICAccount *)self storeDataSeparately], v7, (v8 & 1) != 0))
  {
    v9 = [v5 URLByAppendingPathComponent:*MEMORY[0x277D360F0] isDirectory:1];

    v10 = [(ICAccount *)self identifier];
    v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:1];
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
    v3 = [MEMORY[0x277D36178] sharedInstance];
    v4 = _accountUtilities;
    _accountUtilities = v3;

    v2 = _accountUtilities;
  }

  return v2;
}

- (BOOL)isManaged
{
  v3 = [(ICAccount *)self identifier];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = +[ICAccount accountUtilities];
  v6 = [(ICAccount *)self identifier];
  v7 = [v5 isManagedACAccountWithIdentifier:v6];

  return v7;
}

- (BOOL)isPrimaryiCloudAccount
{
  v3 = [(ICAccount *)self identifier];
  if ([v3 length])
  {
    v4 = [(ICAccount *)self accountType];

    if (v4 != 1)
    {
      return 0;
    }

    v3 = +[ICAccount accountUtilities];
    v5 = [(ICAccount *)self identifier];
    v6 = [v3 iCloudACAccountWithIdentifier:v5];
    v7 = [v6 ic_isPrimaryAppleAccount];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(ICAccount *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v2 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];

  return v2;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v3 = [(ICAccount *)self userActivityContentAttributeSet];
  v4 = [(ICAccount *)self name];
  if (![v4 length])
  {
    v5 = [(ICAccount *)self username];

    v4 = v5;
  }

  [v3 setDisplayName:v4];
  [v3 setTextContent:v4];
  [v3 setIc_searchResultType:3];
  [v3 ic_populateValuesForSpecializedFields];
  if ([(ICAccount *)self isManaged])
  {
    v6 = &unk_282747AC0;
  }

  else
  {
    v6 = &unk_282747AD8;
  }

  [v3 setDataOwnerType:v6];
  if (objc_opt_respondsToSelector())
  {
    [(ICAccount *)self associateAppEntityWithSearchableItemAttributeSet:v3];
  }

  return v3;
}

- (id)searchableTextContent
{
  v2 = [(ICAccount *)self name];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v3 = [(ICAccount *)self identifier];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = +[ICAccount accountUtilities];
  v6 = [(ICAccount *)self identifier];
  v7 = [v5 iCloudACAccountWithIdentifier:v6];

  LOBYTE(v6) = [v7 ic_shouldCreateSeparatePersistentStore];
  return v6;
}

- (NSString)dsid
{
  if (!self->_dsid)
  {
    v3 = [(ICAccount *)self identifier];
    if ([v3 length])
    {
      v4 = [(ICAccount *)self accountType];

      if (v4 != 1)
      {
        goto LABEL_6;
      }

      v3 = +[ICAccount accountUtilities];
      v5 = [(ICAccount *)self identifier];
      v6 = [v3 iCloudACAccountWithIdentifier:v5];
      v7 = [v6 aa_personID];
      dsid = self->_dsid;
      self->_dsid = v7;
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
    v3 = [(ICAccount *)self identifier];
    if ([v3 length])
    {
      v4 = [(ICAccount *)self accountType];

      if (v4 != 1)
      {
        goto LABEL_6;
      }

      v3 = +[ICAccount accountUtilities];
      v5 = [(ICAccount *)self identifier];
      v6 = [v3 iCloudACAccountWithIdentifier:v5];
      v7 = [v6 aa_altDSID];
      altDSID = self->_altDSID;
      self->_altDSID = v7;
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
    v3 = [(ICAccount *)self identifier];
    if ([v3 length])
    {
      v4 = [(ICAccount *)self accountType];

      if (v4 != 1)
      {
        goto LABEL_6;
      }

      v3 = +[ICAccount accountUtilities];
      v5 = [(ICAccount *)self identifier];
      v6 = [v3 iCloudACAccountWithIdentifier:v5];
      v7 = [v6 username];
      username = self->_username;
      self->_username = v7;
    }
  }

LABEL_6:
  v9 = self->_username;

  return v9;
}

- (id)cacheKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ICAccount *)self identifier];
  v4 = [v2 stringWithFormat:@"%@:%@", v3, 0];

  return v4;
}

+ (void)localeDidChange:(id)a3
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICAccount *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/Shared/CoreData/ICAccount.m"]& 1) != 0)
  {
    v13 = [(ICAccount *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == compoundliteral && (v13 & 1) == 0)
    {

      [(ICAccount *)self updateTrashFolderHiddenNoteContainerState];
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICAccount;
    [(ICAccount *)&v14 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (void)setMarkedForDeletion:(BOOL)a3
{
  if (a3)
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
  v3 = [(ICAccount *)self accountData];

  if (!v3)
  {
    v4 = [ICAccountData newAccountDataForAccount:self];
    [(ICAccount *)self setAccountData:v4];
  }

  v5 = [(ICAccount *)self accountData];
  v6 = [v5 markedForDeletion];

  if (v6)
  {
    v7 = [(ICAccount *)self accountData];
    [v7 setMarkedForDeletion:0];
  }

  return [(ICAccount *)self accountData];
}

- (void)performBlockInPersonaContext:(id)a3
{
  v4 = a3;
  v6 = +[ICAccount accountUtilities];
  v5 = [(ICAccount *)self identifier];
  [v6 performBlockInPersonaContext:v4 forAccountIdentifier:v5];
}

- (void)performBlockInPersonaContextIfNecessary:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__ICAccount_performBlockInPersonaContextIfNecessary___block_invoke;
  v6[3] = &unk_278195F28;
  v7 = v4;
  v5 = v4;
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
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Existing folder's account isn't deleted. Faulting it by checking its identifier: (%@)", a1, 0xCu);
}

- (void)createDefaultFolder
{
  v3 = [(ICAccount *)self defaultFolderIdentifier];
  v4 = [ICFolder newFolderWithIdentifier:v3 account:self];
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
  v3 = [(ICAccount *)self trashFolderIdentifier];
  v4 = [ICFolder newFolderWithIdentifier:v3 account:self];
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

- (id)standardFolderIdentifierWithPrefix:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(ICAccount *)self identifier];
  v7 = [v5 standardFolderIdentifierWithPrefix:v4 accountIdentifier:v6 accountType:{-[ICAccount accountType](self, "accountType")}];

  return v7;
}

+ (id)standardFolderIdentifierWithPrefix:(id)a3 accountIdentifier:(id)a4 accountType:(int)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    if (a5 == 1)
    {
      v10 = @"CloudKit";
    }

    else
    {
      v10 = v8;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v7, v10];
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
  v3 = [(ICAccount *)self identifier];
  v4 = [v3 isEqualToString:@"InMemoryAccount"];

  if (v4 || [(ICAccount *)self accountType]!= 3)
  {
    v5 = [(ICAccount *)self name];
  }

  else
  {
    v5 = +[ICAccount localizedLocalAccountName];
  }

  return v5;
}

- (id)localizedNameMidSentence
{
  v3 = [(ICAccount *)self identifier];
  v4 = [v3 isEqualToString:@"InMemoryAccount"];

  if (v4 || [(ICAccount *)self accountType]!= 3)
  {
    v5 = [(ICAccount *)self name];
  }

  else
  {
    v5 = +[ICAccount localizedLocalAccountNameMidSentence];
  }

  return v5;
}

- (NSPersistentStore)persistentStore
{
  v2 = [(ICAccount *)self objectID];
  v3 = [v2 persistentStore];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ICAccount *)self accountType];
    v7 = [v5 accountType];
    v8 = [(ICAccount *)self accountType];
    if (v6 == v7)
    {
      if (v8 != 1)
      {
        goto LABEL_18;
      }

      v9 = [MEMORY[0x277D36230] persistentStoreURL];
      v10 = [(ICAccount *)self persistentStore];
      v11 = [v10 URL];
      v12 = [v11 isEqual:v9];

      v13 = [v5 persistentStore];
      v14 = [v13 URL];
      v15 = [v14 isEqual:v9];

      if (v12 && !v15)
      {
        v16 = -1;
LABEL_19:

        goto LABEL_20;
      }

      if (v12 & 1 | ((v15 & 1) == 0))
      {
LABEL_18:
        v9 = [(ICAccount *)self name];
        v18 = [v5 name];
        v16 = [v9 localizedCaseInsensitiveCompare:v18];

        goto LABEL_19;
      }
    }

    else
    {
      if (v8 == 1)
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
      [(ICAccount *)self compare:v4, v17];
    }

    v16 = 0;
  }

LABEL_21:

  return v16;
}

- (unint64_t)visibleCustomFoldersCount
{
  v3 = [(ICAccount *)self predicateForCustomFolders];
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICFolder countOfFoldersMatchingPredicate:v3 context:v4];

  return v5;
}

- (BOOL)containsSharedFolders
{
  if ([(ICAccount *)self accountType]!= 1)
  {
    return 0;
  }

  v3 = [(ICAccount *)self visibleFolders];
  v4 = [v3 ic_containsObjectPassingTest:&__block_literal_global_25];

  return v4;
}

- (id)customRootLevelFolders
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICAccount *)self predicateForVisibleFolders];
  v12[0] = v3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"parent == nil"];
  v12[1] = v4;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"sortOrder == %d", 2];
  v12[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  v7 = [(ICAccount *)self folders];
  v8 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];
  v9 = [v7 filteredSetUsingPredicate:v8];

  v10 = [v9 allObjects];

  return v10;
}

- (unint64_t)indexOfCustomRootLevelFolder:(id)a3
{
  v4 = a3;
  if ([v4 sortOrder] != 2)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"folder.sortOrder == ICNoteContainerSortOrderFolder" functionName:"-[ICAccount indexOfCustomRootLevelFolder:]" simulateCrash:1 showAlert:0 format:@"Grabbing index of non-custom folder"];
  }

  v5 = [(ICAccount *)self subFolderIdentifiersOrderedSet];
  v6 = [v4 identifier];
  v7 = [v5 indexOfObject:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ICAccount *)self customRootLevelFolders];
    v9 = [v8 sortedArrayUsingSelector:sel_compare_];
    v7 = [v9 indexOfObject:v4];
  }

  return v7;
}

- (id)predicateForCustomFolders
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICAccount *)self predicateForVisibleFolders];
  [v3 addObject:v4];

  v5 = MEMORY[0x277CCAC30];
  v6 = [(ICAccount *)self defaultFolderIdentifier];
  v7 = [v5 predicateWithFormat:@"identifier != %@", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x277CCAC30];
  v9 = [(ICAccount *)self trashFolderIdentifier];
  v10 = [v8 predicateWithFormat:@"identifier != %@", v9];
  [v3 addObject:v10];

  v11 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v3];

  return v11;
}

- (id)predicateForPinnedNotes
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v3 = [(ICAccount *)self predicateForNotesInAccount];
  v8[0] = v3;
  v4 = +[ICNote predicateForPinnedNotes];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

- (id)visibleFoldersWithParent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(ICAccount *)self visibleFolders];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 parent];

        if (v12 == v4)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)visibleRootFoldersContainFolderWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(ICAccount *)self visibleFoldersWithParent:0];
  v6 = [v5 valueForKey:@"title"];
  v7 = [v6 mutableCopy];

  v8 = +[ICFolder reservedFolderTitles];
  [v7 unionSet:v8];

  v9 = [(ICAccount *)self reservedAccountFolderTitles];
  [v7 unionSet:v9];

  LOBYTE(v9) = [v7 containsObject:v4];
  return v9;
}

- (id)visibleRootFolderWithTitle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v10 = [v9 title];
        v11 = [v10 isEqualToString:v4];

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

- (BOOL)hasAnyCustomFoldersIncludingSystem:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ICAccount *)self visibleFolders];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (v3)
        {
          v11 = [(ICAccount *)self trashFolder];
          if ([v10 isEqual:v11])
          {
          }

          else
          {
            v12 = [(ICAccount *)self defaultFolder];
            v13 = [v10 isEqual:v12];

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

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = [(ICAccount *)self allItemsFolderLocalizedTitle];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)visibleNoteContainers
{
  v3 = [(ICAccount *)self visibleFolders];
  v4 = [(ICAccount *)self accountProxy];
  v5 = [v3 arrayByAddingObject:v4];

  return v5;
}

- (id)visibleNoteContainerChildren
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(ICAccount *)self visibleFolders];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 parent];
        if (v10)
        {
        }

        else if (([v9 isHiddenNoteContainer] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v11 = [v3 sortedArrayUsingSelector:sel_compare_];
  v12 = [v11 mutableCopy];

  v13 = [v12 count];
  v14 = [(ICAccount *)self trashFolder];
  v15 = [v12 containsObject:v14];

  if (v13 - v15 >= 2)
  {
    v16 = [(ICAccount *)self accountProxy];
    [v12 insertObject:v16 atIndex:0];
  }

  return v12;
}

- (id)uniqueUserParticipants
{
  v80[3] = *MEMORY[0x277D85DE8];
  v3 = [(ICAccount *)self managedObjectContext];
  v4 = [ICNote predicateForVisibleNotesInContext:v3];

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

  v10 = [(ICAccount *)self managedObjectContext];
  v11 = [ICFolder predicateForVisibleFoldersInContext:v10];

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
  v17 = [(ICAccount *)self managedObjectContext];
  v76 = 0;
  v58 = v16;
  v18 = [v17 executeFetchRequest:v16 error:&v76];
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
  v22 = [(ICAccount *)self managedObjectContext];
  v75 = v19;
  v56 = v21;
  v23 = [v22 executeFetchRequest:v21 error:&v75];
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
  v28 = [MEMORY[0x277CBEB38] dictionary];
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
        v34 = [v33 userIdentity];
        v35 = [v34 userRecordID];
        v36 = [v35 recordName];

        if (v36)
        {
          v37 = MEMORY[0x277CCACA8];
          v38 = [v33 ic_participantName];
          v39 = [v37 stringWithFormat:@"%@_%@", v38, v36];

          v40 = [v28 allKeys];
          v41 = [v40 containsObject:v39];

          if ((v41 & 1) == 0)
          {
            [v28 setObject:v33 forKeyedSubscript:v39];
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
    }

    while (v30);
  }

  v42 = [v28 allKeys];
  v43 = [v42 sortedArrayUsingSelector:sel_localizedStandardCompare_];

  v44 = [MEMORY[0x277CBEB18] array];
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

        v50 = [v28 objectForKeyedSubscript:*(*(&v67 + 1) + 8 * j)];
        [v44 ic_addNonNilObject:v50];
      }

      v47 = [v45 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v47);
  }

  v51 = [v44 copy];

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
  v3 = [(ICAccount *)self accountDataCreateIfNecessary];
  v4 = [(ICAccount *)self accountData];

  if (!v4)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((self.accountData) != nil)" functionName:"-[ICAccount subFolderIdentifiersOrderedSet]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "self.accountData"}];
  }

  v7.receiver = self;
  v7.super_class = ICAccount;
  v5 = [(ICNoteContainer *)&v7 subFolderIdentifiersOrderedSet];

  return v5;
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

- (id)folderWithIdentifier:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"identifier", a3];
  v12[0] = v4;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"account", self];
  v12[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];
  v8 = [(ICAccount *)self managedObjectContext];
  v9 = [ICFolder foldersMatchingPredicate:v7 context:v8];
  v10 = [v9 firstObject];

  return v10;
}

- (id)allItemsFolderLocalizedTitle
{
  v3 = __ICLocalizedFrameworkString_impl(@"All %@", @"All %@", 0, 1);
  v4 = MEMORY[0x277CCACA8];
  v5 = [(ICAccount *)self localizedNameMidSentence];
  v6 = [v4 localizedStringWithFormat:v3, v5];

  return v6;
}

- (id)allChildObjects
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v48 = self;
  v4 = [(ICAccount *)self folders];
  v5 = [v4 allObjects];

  if (v5)
  {
    [v3 addObjectsFromArray:v5];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v38 = v5;
    obj = [v5 copy];
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
          v8 = [v7 identifier];
          v9 = [ICLegacyTombstone tombstoneIdentifierForObjectIdentifier:v8 type:2];

          v10 = [(ICAccount *)v48 managedObjectContext];
          v45 = v9;
          v11 = [ICLegacyTombstone legacyTombstoneWithIdentifier:v9 context:v10];

          if (v11)
          {
            [v3 addObject:v11];
          }

          v12 = [v7 notes];
          v13 = [v12 allObjects];

          if (v13)
          {
            v43 = v11;
            v44 = i;
            [v3 addObjectsFromArray:v13];
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v42 = v13;
            v46 = v13;
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
                  v16 = [v15 identifier];
                  v17 = [ICLegacyTombstone tombstoneIdentifierForObjectIdentifier:v16 type:2];

                  v18 = [(ICAccount *)v48 managedObjectContext];
                  v50 = v17;
                  v19 = [ICLegacyTombstone legacyTombstoneWithIdentifier:v17 context:v18];

                  if (v19)
                  {
                    [v3 addObject:v19];
                  }

                  v20 = [v15 attachments];
                  v21 = [v20 allObjects];

                  [v3 ic_addObjectsFromNonNilArray:v21];
                  v53 = 0u;
                  v54 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  v22 = v21;
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
                        v28 = [v27 media];

                        if (v28)
                        {
                          v29 = [v27 media];
                          [v3 addObject:v29];
                        }

                        v30 = [v27 previewImages];

                        if (v30)
                        {
                          v31 = [v27 previewImages];
                          v32 = [v31 allObjects];
                          [v3 addObjectsFromArray:v32];
                        }
                      }

                      v24 = [v22 countByEnumeratingWithState:&v51 objects:v63 count:16];
                    }

                    while (v24);
                  }

                  v33 = [v15 inlineAttachments];
                  v34 = [v33 allObjects];
                  [v3 ic_addObjectsFromNonNilArray:v34];
                }

                v49 = [v46 countByEnumeratingWithState:&v55 objects:v64 count:16];
              }

              while (v49);
            }

            v11 = v43;
            i = v44;
            v13 = v42;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v41);
    }

    v5 = v38;
  }

  v35 = [(ICAccount *)v48 hashtags];
  v36 = [v35 allObjects];
  [v3 ic_addObjectsFromNonNilArray:v36];

  return v3;
}

- (id)accountFilesDirectoryURLInApplicationDataContainer
{
  v3 = [objc_opt_class() accountUtilities];
  v4 = [(ICAccount *)self identifier];
  v5 = [v3 applicationDataContainerURLForAccountIdentifier:v4];

  v6 = [(ICAccount *)self identifier];

  if (v6)
  {
    v7 = [v5 URLByAppendingPathComponent:@"Documents" isDirectory:1];

    v8 = [v7 URLByAppendingPathComponent:*MEMORY[0x277D360F0] isDirectory:1];

    v9 = [(ICAccount *)self identifier];
    v5 = [v8 URLByAppendingPathComponent:v9 isDirectory:1];
  }

  v10 = v5;

  return v5;
}

- (id)fallbackImageDirectoryURL
{
  v2 = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277D360C0] isDirectory:1];

  return v3;
}

- (id)fallbackPDFDirectoryURL
{
  v2 = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277D360C8] isDirectory:1];

  return v3;
}

- (id)exportableMediaDirectoryURL
{
  v2 = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277D360B8] isDirectory:1];

  return v3;
}

- (id)previewImageDirectoryURL
{
  v2 = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277D360E0] isDirectory:1];

  return v3;
}

- (void)deleteUnusedHashtagsWithStandardizedContent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![ICInlineAttachment isHashtagStandardizedContent:v9 usedInAccount:self])
        {
          v10 = [ICHashtag hashtagWithStandardizedContent:v9 account:self];
          [v10 markForDeletion];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(ICAccount *)self identifier];
  v5 = [v3 applicationDocumentsURLForAccountIdentifier:v4];

  v6 = [v5 URLByAppendingPathComponent:@"Library" isDirectory:1];
  v7 = [v6 URLByAppendingPathComponent:@"Caches" isDirectory:1];
  v8 = [v7 URLByAppendingPathComponent:*MEMORY[0x277D360D8] isDirectory:1];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v16];
  v11 = v16;

  if ((v10 & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICAccount systemPaperTemporaryDirectoryURL];
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v13 temporaryDirectory];

    v8 = v14;
  }

  return v8;
}

- (void)ensureCriticalPaperDirectoriesExist
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (id)systemPaperDirectoryURL
{
  v2 = [(ICAccount *)self accountFilesDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277D360D8] isDirectory:1];

  return v3;
}

- (id)systemPaperBundlesDirectoryURL
{
  v2 = [(ICAccount *)self systemPaperDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:*MEMORY[0x277D360B0] isDirectory:1];

  return v3;
}

- (id)systemPaperNotes
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICAccount *)self predicateForNotesInAccount];
  v10[0] = v3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isSystemPaper == YES"];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v6 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v5];
  v7 = [(ICAccount *)self managedObjectContext];
  v8 = [ICNote notesMatchingPredicate:v6 context:v7];

  return v8;
}

+ (id)mostRecentSystemPaperNoteInManagedObjectContext:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
  v6 = [v3 executeFetchRequest:v5 error:&v12];

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
    v9 = [v6 firstObject];
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICAccount mostRecentSystemPaperNoteInManagedObjectContext:v9];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount mostRecentSystemPaperNoteInManagedObjectContext:];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)setHidesSystemPaperNotesInCustomFolders:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setBool:v3 forKey:@"ICAccountHidesSystemPaperNotesInCustomFolders"];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ICAccountHidesSystemPaperNotesInCustomFoldersDidChangeNotification" object:0 userInfo:0];
}

+ (void)setHidesMathNotesInCustomFolders:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setBool:v3 forKey:@"ICAccountHidesMathNotesInCustomFolders"];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ICAccountHidesMathNotesInCustomFoldersDidChangeNotification" object:0 userInfo:0];
}

+ (void)setHidesCallNotesInCustomFolders:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setBool:v3 forKey:@"ICAccountHidesCallNotesInCustomFolders"];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ICAccountHidesCallNotesInCustomFoldersDidChangeNotification" object:0 userInfo:0];
}

- (void)updateFullNameAndEmail:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICAccount *)self accountType]== 1)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      *buf = 138412802;
      v14 = v6;
      v15 = 2080;
      v16 = "[ICAccount updateFullNameAndEmail:]";
      v17 = 1024;
      v18 = 1112;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Fetching user's full name and primary email address… {account: %@}%s:%d", buf, 0x1Cu);
    }

    objc_initWeak(buf, self);
    v7 = [(ICCloudSyncingObject *)self cloudContext];
    v8 = [(ICAccount *)self identifier];
    v9 = [v7 containerForAccountID:v8];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__ICAccount_updateFullNameAndEmail___block_invoke;
    v10[3] = &unk_278196B40;
    objc_copyWeak(&v12, buf);
    v11 = v4;
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
  v3 = [(ICAccount *)self accountData];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(ICAccount *)self accountData];
  v6 = [v5 lockedNotesMode];

  if (!v6)
  {
    return 1;
  }

  v7 = [(ICAccount *)self accountData];
  v8 = [v7 lockedNotesMode];

  return v8;
}

- (void)setResolvedLockedNotesMode:(signed __int16)a3
{
  v3 = a3;
  v5 = [(ICAccount *)self accountData];
  if (v5 && (v6 = v5, -[ICAccount accountData](self, "accountData"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 lockedNotesMode], v7, v6, v8 == v3))
  {
    v9 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccount *)self setResolvedLockedNotesMode:v3];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ICAccount *)self setResolvedLockedNotesMode:v3];
    }

    v11 = [(ICAccount *)self accountDataCreateIfNecessary];
    [v11 setLockedNotesMode:v3];

    v9 = [(ICAccount *)self accountData];
    [v9 updateChangeCountWithReason:@"Set locked notes mode"];
  }
}

- (id)passwordProtectedNotes
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v4 = [(ICAccount *)self predicateForNotesInAccount];
  v5 = +[(ICCloudSyncingObject *)ICNote];
  v12[1] = v5;
  v6 = +[(ICCloudSyncingObject *)ICNote];
  v12[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  v9 = [(ICAccount *)self managedObjectContext];
  v10 = [ICNote notesMatchingPredicate:v8 context:v9];

  return v10;
}

- (BOOL)canPasswordProtectNotes
{
  v3 = [MEMORY[0x277D77BF8] sharedManager];
  v4 = [v3 currentUser];
  v5 = [v4 userType];

  return [(ICAccount *)self accountType]!= 1 || v5 != 1;
}

- (id)visibleNotes
{
  v3 = [(ICAccount *)self predicateForVisibleNotes];
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICNote notesMatchingPredicate:v3 context:v4];

  return v5;
}

- (unint64_t)visibleNotesCount
{
  v3 = [(ICAccount *)self predicateForVisibleNotes];
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICNote countOfNotesMatchingPredicate:v3 context:v4];

  return v5;
}

- (unint64_t)visibleInCloudNotesIncludingTrashCount
{
  v3 = MEMORY[0x277CCA920];
  v4 = MEMORY[0x277CBEA60];
  v5 = [(ICAccount *)self predicateForVisibleNotesIncludingTrash];
  v6 = +[ICCloudSyncingObject predicateForInCloudObjects];
  v7 = [v4 arrayWithObjects:{v5, v6, 0}];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  v9 = [(ICAccount *)self managedObjectContext];
  v10 = [ICNote countOfNotesMatchingPredicate:v8 context:v9];

  return v10;
}

- (unint64_t)visibleAttachmentsIncludingTrashCount
{
  v3 = [(ICAccount *)self predicateForVisibleAttachmentsIncludingTrash];
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICAttachment countOfAttachmentsMatchingPredicate:v3 context:v4];

  return v5;
}

- (void)setAccountType:(int)a3
{
  v3 = *&a3;
  if ([(ICAccount *)self accountType]!= a3)
  {
    [(ICAccount *)self willChangeValueForKey:@"accountType"];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [(ICAccount *)self setPrimitiveValue:v5 forKey:@"accountType"];

    [(ICAccount *)self didChangeValueForKey:@"accountType"];

    [(ICAccount *)self updateAccountNameForAccountListSorting];
  }
}

- (void)setName:(id)a3
{
  v6 = a3;
  v4 = [(ICAccount *)self name];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(ICAccount *)self willChangeValueForKey:@"name"];
    [(ICAccount *)self setPrimitiveValue:v6 forKey:@"name"];
    [(ICAccount *)self didChangeValueForKey:@"name"];
    [(ICAccount *)self updateAccountNameForAccountListSorting];
  }
}

- (void)setDidChooseToMigrate:(BOOL)a3
{
  v3 = a3;
  if ([(ICAccount *)self didChooseToMigrate]!= a3)
  {
    [(ICAccount *)self willChangeValueForKey:@"didChooseToMigrate"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(ICAccount *)self setPrimitiveValue:v5 forKey:@"didChooseToMigrate"];

    [(ICAccount *)self didChangeValueForKey:@"didChooseToMigrate"];

    [ICMigrationUtilities updateLegacyAccountMigrationStateForModernAccount:self];
  }
}

- (void)updateAccountNameForAccountListSorting
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICAccount *)self localizedName];
  v4 = v3;
  v5 = &stru_2827172C0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld_%@", -[ICAccount accountType](self, "accountType"), v6];
  [(ICAccount *)self setAccountNameForAccountListSorting:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(ICAccount *)self ownerInverse];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [(ICAccount *)self accountNameForAccountListSorting];
        [v13 setAccountNameForAccountListSorting:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)predicateForVisibleAttachments
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v4 = [(ICAccount *)self predicateForAttachmentsInAccount];
  v10[0] = v4;
  v5 = [(ICAccount *)self managedObjectContext];
  v6 = [(ICBaseAttachment *)ICAttachment predicateForVisibleAttachmentsInContext:v5];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

- (id)predicateForVisibleAttachmentsIncludingTrash
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v4 = [(ICAccount *)self predicateForAttachmentsInAccount];
  v10[0] = v4;
  v5 = [(ICAccount *)self managedObjectContext];
  v6 = [(ICBaseAttachment *)ICAttachment predicateForVisibleAttachmentsIncludingTrashInContext:v5];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

- (id)predicateForSearchableAttachments
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v4 = [(ICAccount *)self managedObjectContext];
  v5 = [ICAttachment predicateForSearchableAttachmentsInContext:v4];
  v10[0] = v5;
  v6 = [(ICAccount *)self predicateForAttachmentsInAccount];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  return v8;
}

- (void)managedObjectContextDidSave:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICCloudSyncingObject *)self hasContextOptions:1])
  {
    v5 = [(ICAccount *)self managedObjectContext];
    v6 = [v4 object];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = [v4 userInfo];
      v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBE308]];

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
            v16 = [(ICAccount *)self trashFolder];
            v17 = [v16 objectID];

            if (v15 == v17)
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
  v3 = [(ICAccount *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__ICAccount_ic_loggingIdentifier__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

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
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICAccount *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__ICAccount_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 performBlockAndWait:v9];

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
  v2 = [(ICAccount *)self customRootLevelFolders];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (void)setSubFolderOrderMergeableData:(id)a3
{
  v4 = a3;
  v5 = [(ICAccount *)self accountData];
  [v5 setMergeableData:v4];
}

- (id)subFolderOrderMergeableData
{
  v2 = [(ICAccount *)self accountData];
  v3 = [v2 mergeableData];

  return v3;
}

- (void)updateSubFolderMergeableDataChangeCount
{
  v2 = [(ICAccount *)self accountData];
  [v2 updateChangeCountWithReason:@"Updated subfolders"];
}

- (void)setUserRecordName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v10 = 138413058;
    v11 = v6;
    v12 = 2112;
    v14 = 2080;
    v13 = v4;
    v15 = "[ICAccount setUserRecordName:]";
    v16 = 1024;
    v17 = 1474;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Setting user record name… {account: %@, userRecordName: %@}%s:%d", &v10, 0x26u);
  }

  v7 = NSStringFromSelector(sel_userRecordName);
  [(ICAccount *)self willChangeValueForKey:v7];

  v8 = NSStringFromSelector(sel_userRecordName);
  [(ICAccount *)self setPrimitiveValue:v4 forKey:v8];

  v9 = NSStringFromSelector(sel_userRecordName);
  [(ICAccount *)self didChangeValueForKey:v9];
}

- (id)replicaIDForBundleIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICAccount *)self managedObjectContext];
  v6 = [v5 concurrencyType];

  if (v6 == 2)
  {
    v7 = [(ICAccount *)self replicaIDToBundleIdentifier];

    if (!v7)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = [objc_opt_class() bundleIdentifiersWithReplicaID];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = [MEMORY[0x277CCAD78] UUID];
            [v8 setObject:v15 forKeyedSubscript:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      v16 = [v8 copy];
      [(ICAccount *)self setReplicaIDToBundleIdentifier:v16];
    }

    v17 = [(ICAccount *)self replicaIDToBundleIdentifier];
    v18 = [v17 objectForKeyedSubscript:v4];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)newAccountWithIdentifier:(id)a3 type:(int)a4 context:(id)a5 persistentStore:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a6;
  if (a5)
  {
    v12 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICAccount" inManagedObjectContext:a5];
    [v12 setIdentifier:v10];
    [v12 setAccountType:v8];
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v15 = +[ICNoteContext sharedContext];
      v13 = [v15 persistentStoreForAccountID:v10];
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

+ (id)newLocalAccountInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 accountWithIdentifier:@"LocalAccount" context:v4];
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
    v8 = [MEMORY[0x277D77BF8] sharedManager];
    v9 = [v8 currentUser];

    if ([v9 userType] == 1 && !objc_msgSend(v9, "isTransientUser"))
    {

      v6 = 0;
      goto LABEL_9;
    }

    v6 = [a1 newAccountWithIdentifier:@"LocalAccount" type:3 context:v4];
    [v6 setDidChooseToMigrate:1];
  }

  v10 = [a1 localizedLocalAccountName];
  [v6 setName:v10];

LABEL_9:
  return v6;
}

+ (id)inMemoryAccountInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 accountWithIdentifier:@"InMemoryAccount" context:v4];
  if (!v5)
  {
    v5 = [a1 newAccountWithIdentifier:@"InMemoryAccount" type:3 context:v4];
    [v5 setDidChooseToMigrate:1];
    [v5 setName:@"In-Memory"];
  }

  return v5;
}

+ (void)deleteAccount:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICAccount(Management) deleteAccount:v3];
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ICAccountWillBeDeletedNotification" object:v3];

  [v3 removeAllObserversIfNecessary];
  if ([v3 storeDataSeparately])
  {
    v6 = [v3 accountFilesDirectoryURL];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 managedObjectContext];
  [v7 deleteObject:v3];

  if (v6)
  {
    v8 = [ICFileUtilities coordinateDeleteItemAt:v6];
    if (v8)
    {
      v9 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ICAccount(Management) deleteAccount:];
      }
    }
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"ICAccountWasDeletedNotification" object:v3];
}

+ (void)deleteAccountWithBatchDelete:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v5;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Deleting modern account with batch delete %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"ICAccountWillBeDeletedNotification" object:v4];

  [v4 removeAllObserversIfNecessary];
  v8 = [v4 storeDataSeparately];
  v37 = v5;
  if (v8)
  {
    v35 = [v4 accountFilesDirectoryURL];
    v36 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v33 = [ICMedia mediaIdentifiersForAccount:v4];
    v34 = [ICAttachmentPreviewImage attachmentPreviewImageIdentifiersForAccount:v4];
    [ICAttachment attachmentIdentifiersForAccount:v4];
    v36 = v35 = 0;
  }

  v9 = +[ICAuthenticationState sharedState];
  [v9 removeMainKeysFromKeychainForAccount:v4];

  v10 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ICAccount"];
  v11 = MEMORY[0x277CCAC30];
  v12 = [v4 identifier];
  v13 = [v11 predicateWithFormat:@"identifier == %@", v12];
  [v10 setPredicate:v13];

  v14 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v10];
  [v14 setResultType:0];
  v15 = objc_autoreleasePoolPush();
  v16 = [v4 managedObjectContext];
  v39 = 0;
  v17 = [v16 executeRequest:v14 error:&v39];
  v18 = v39;
  if (v18)
  {
    v19 = v18;
    v20 = a1;
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

    [v20 deleteAccount:v4];
  }

  v38 = 0;
  [v16 save:&v38];
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
  if (v8)
  {
    v25 = v35;
    v26 = [ICFileUtilities coordinateDeleteItemAt:v35];
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
    [ICMedia purgeMediaFilesForIdentifiers:v33 account:v4];
    v28 = v34;
    [ICAttachmentPreviewImage purgePreviewImageFilesForIdentifiers:v34 account:v4];
    v29 = v36;
    [ICAttachment purgeAttachmentFilesForIdentifiers:v36 account:v4];
    v25 = v35;
  }

  v31 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v37;
    _os_log_impl(&dword_214D51000, v31, OS_LOG_TYPE_INFO, "Completed batch delete for modern account %@", buf, 0xCu);
  }

  v32 = [MEMORY[0x277CCAB98] defaultCenter];
  [v32 postNotificationName:@"ICAccountWasDeletedNotification" object:v4];
}

+ (ICAccount)accountWithIdentifier:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"identifier == %@", a3];
  v9 = [a1 accountsMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)cloudKitAccountWithIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  v9 = 0;
  if (v7 && v8)
  {
    if ([MEMORY[0x277D361D0] isRunningUnitTests])
    {
      v9 = [a1 accountWithIdentifier:v6 context:v7];
      goto LABEL_20;
    }

    v10 = accountsForAppleCloudKitTable;
    objc_sync_enter(v10);
    v11 = [accountsForAppleCloudKitTable objectForKey:v7];
    v12 = [v11 objectForKey:v6];
    v9 = v12;
    if (v12)
    {
      goto LABEL_6;
    }

    v15 = +[ICAccount accountUtilities];
    v16 = [v15 iCloudACAccountWithIdentifier:v6];

    if (![v16 ic_isNotesEnabled])
    {
      v9 = 0;
      goto LABEL_18;
    }

    v9 = [a1 accountWithIdentifier:v6 context:v7];

    if (v9)
    {
LABEL_6:
      v13 = [v9 managedObjectContext];

      if (v13)
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
        v14 = [a1 accountWithIdentifier:v6 context:v7];
      }

      v9 = v14;
    }

LABEL_14:
    v16 = [v11 mutableCopy];
    [v16 setObject:v9 forKeyedSubscript:v6];
    v17 = accountsForAppleCloudKitTable;
    v18 = [v16 copy];
    [v17 setObject:v18 forKey:v7];

LABEL_18:
    goto LABEL_19;
  }

LABEL_20:

  return v9;
}

+ (id)cloudKitAccountInContext:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__22;
  v46 = __Block_byref_object_dispose__22;
  v47 = 0;
  v5 = +[ICAccount accountUtilities];
  v6 = [v5 primaryICloudACAccount];

  v7 = os_log_create("com.apple.notes", "Accounts");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 identifier];
    [(ICAccount(Management) *)v8 cloudKitAccountInContext:buf, v7];
  }

  v9 = accountForAppleCloudKitTable;
  objc_sync_enter(v9);
  v10 = [accountForAppleCloudKitTable objectForKey:v4];
  v11 = v43[5];
  v43[5] = v10;

  objc_sync_exit(v9);
  v12 = v43[5];
  if (v12)
  {
    v13 = [v12 managedObjectContext];
    v14 = v13 == 0;

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
      v36 = a1;
      v33 = v6;
      v34 = v4;
      [v34 performBlockAndWait:v32];
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v15 = [v43[5] managedObjectContext];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_2;
      v27[3] = &unk_278196B90;
      v27[4] = &v28;
      v27[5] = &v42;
      [v15 performBlockAndWait:v27];

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

  else if ([v6 ic_isNotesEnabled])
  {
    v18 = [v6 identifier];
    if (v18)
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
      v41 = a1;
      v38 = v18;
      v39 = v4;
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
  [accountForAppleCloudKitTable setObject:v43[5] forKey:v4];
  objc_sync_exit(v22);

  v23 = [v43[5] managedObjectContext];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __50__ICAccount_Management__cloudKitAccountInContext___block_invoke_652;
  v26[3] = &unk_278196B18;
  v26[4] = &v42;
  [v23 performBlockAndWait:v26];

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

+ (id)cloudKitIfMigratedElseLocalAccountInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 cloudKitAccountInContext:v4];
  v6 = v5;
  if (v5 && [v5 didChooseToMigrate])
  {
    v7 = v6;
  }

  else
  {
    v8 = [a1 allActiveCloudKitAccountsInContext:v4];
    if ([v8 count])
    {
      [v8 firstObject];
    }

    else
    {
      [a1 localAccountInContext:v4];
    }
    v7 = ;
  }

  return v7;
}

+ (id)localAccountInContext:(id)a3
{
  v3 = [a1 accountWithIdentifier:@"LocalAccount" context:a3];
  v4 = v3;
  if (v3 && ([v3 didChooseToMigrate] & 1) == 0)
  {
    [v4 setDidChooseToMigrate:1];
  }

  return v4;
}

+ (id)defaultAccountInContext:(id)a3
{
  v4 = a3;
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
    v12 = [ICAccount accountWithIdentifier:v7 context:v4];
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

  if (![v7 isEqualToString:*MEMORY[0x277D358F8]] || (objc_msgSend(a1, "localAccountInContext:", v4), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "didChooseToMigrate"), v15, !v16) || (objc_msgSend(a1, "localAccountInContext:", v4), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      +[ICAccount(Management) defaultAccountInContext:];
    }

    v14 = [a1 cloudKitIfMigratedElseLocalAccountInContext:v4];
  }

LABEL_20:
  v18 = v14;

  return v18;
}

+ (id)activeAccountWithUserRecordName:(id)a3 context:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"didChooseToMigrate == YES && userRecordName == %@", a3];
  v9 = MEMORY[0x277CCAC98];
  v10 = NSStringFromSelector(sel_accountType);
  v11 = [v9 sortDescriptorWithKey:v10 ascending:1];

  v16[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v13 = [a1 ic_objectsMatchingPredicate:v8 sortDescriptors:v12 context:v7];

  v14 = [v13 firstObject];

  return v14;
}

+ (id)allAccountsInContext:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  v5 = a3;
  v6 = [[v4 alloc] initWithKey:@"name" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = [a1 ic_objectsMatchingPredicate:0 sortDescriptors:v7 context:v5];

  return v8;
}

+ (id)allAccountIdentifiersInContext:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = +[ICAccount fetchRequest];
  [v5 setResultType:2];
  [v5 setPropertiesToFetch:&unk_282747FB8];
  v6 = [v3 executeFetchRequest:v5 error:0];
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

+ (id)passwordProtectedNoteIdentifiersInAccountIdentifier:(id)a3 context:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAC30];
  v6 = a4;
  v7 = [v5 predicateWithFormat:@"folder.account.identifier == %@", a3];
  v13[0] = v7;
  v8 = +[ICCloudSyncingObject predicateForPasswordProtectedObjects];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  v10 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v9];
  v11 = [ICNote noteIdentifiersMatchingPredicate:v10 context:v6];

  return v11;
}

+ (unint64_t)numberOfCloudKitAccountsInContext:(id)a3 onlyMigrated:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277CBE428];
  v6 = a3;
  v7 = [v5 fetchRequestWithEntityName:@"ICAccount"];
  v8 = MEMORY[0x277CBEB18];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType == %d", 1];
  v10 = [v8 arrayWithObjects:{v9, 0}];

  if (v4)
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"didChooseToMigrate == YES"];
    [v10 addObject:v11];
  }

  v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v10];
  [v7 setPredicate:v12];

  v18 = 0;
  v13 = [v6 countForFetchRequest:v7 error:&v18];

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

+ (id)allActiveAccountsInContextSortedByAccountType:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  v5 = a3;
  v6 = [[v4 alloc] initWithKey:@"accountType" ascending:1];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v8 = [a1 allActiveAccountsInContext:v5 sortDescriptors:v7 relationshipKeyPathsForPrefetching:0];

  return v8;
}

+ (id)allActiveAccountsInContextWithDefaultBeingFirstIfApplicable:(id)a3
{
  v4 = a3;
  v5 = [a1 allActiveAccountsInContext:v4];
  v6 = [ICAccount defaultAccountInContext:v4];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__ICAccount_Management__allActiveAccountsInContextWithDefaultBeingFirstIfApplicable___block_invoke;
  v13[3] = &unk_278196BB8;
  v14 = v6;
  v7 = v6;
  v8 = [v5 ic_objectsPassingTest:v13];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [v5 mutableCopy];
    [v10 removeObject:v9];
    [v10 insertObject:v9 atIndex:0];
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

+ (id)allActiveAccountsInContext:(id)a3 sortDescriptors:(id)a4 relationshipKeyPathsForPrefetching:(id)a5
{
  v8 = MEMORY[0x277CCAC30];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 predicateWithFormat:@"accountType != %d || didChooseToMigrate == YES", 1];
  v13 = [a1 ic_objectsMatchingPredicate:v12 sortDescriptors:v10 relationshipKeyPathsForPrefetching:v9 fetchLimit:0 context:v11];

  return v13;
}

+ (id)allActiveCloudKitAccountsInContext:(id)a3
{
  v4 = MEMORY[0x277CCAC30];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"accountType == %d && didChooseToMigrate == YES", 1];
  v7 = [a1 accountsMatchingPredicate:v6 context:v5];

  return v7;
}

+ (id)accountsWithAccountType:(int)a3 context:(id)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"accountType == %d", v4];
  v9 = [a1 accountsMatchingPredicate:v8 context:v7];

  return v9;
}

+ (BOOL)isCloudKitAccountAvailable
{
  v3 = [MEMORY[0x277CCACC8] isMainThread];
  v4 = +[ICNoteContext sharedContext];
  v5 = v4;
  if (v3)
  {
    [v4 managedObjectContext];
  }

  else
  {
    [v4 workerManagedObjectContext];
  }
  v6 = ;

  v7 = [a1 isCloudKitAccountAvailableInContext:v6];
  return v7;
}

+ (BOOL)isCloudKitAccountAvailableInContext:(id)a3
{
  v3 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v4 = accountForAppleCloudKitTable;
  objc_sync_enter(v4);
  v5 = [accountForAppleCloudKitTable objectEnumerator];
  v6 = [v5 nextObject];

  if (v6)
  {
    v7 = [v6 managedObjectContext];

    if (v7)
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
  v9 = [accountsForAppleCloudKitTable objectEnumerator];
  v10 = [v9 nextObject];

  v11 = [v10 objectEnumerator];
  v12 = [v11 nextObject];

  if (v12)
  {
    v13 = [v12 managedObjectContext];

    if (v13)
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
    v17 = v3;
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

+ (BOOL)hasModernAccountInContext:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ICAccount_Management__hasModernAccountInContext___block_invoke;
  v7[3] = &unk_278194D68;
  v4 = v3;
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICAccount *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ICAccount_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __40__ICAccount_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) accountType];
  *(*(*(a1 + 40) + 8) + 24) = result == 1;
  return result;
}

- (BOOL)needsToBePushedToCloud
{
  v3 = [(ICAccount *)self userRecordName];
  if ([v3 length])
  {
    v6.receiver = self;
    v6.super_class = ICAccount;
    v4 = [(ICCloudSyncingObject *)&v6 needsToBePushedToCloud];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = [ICAccount cloudKitAccountWithIdentifier:a4 context:a5];
  v9 = v8;
  v10 = 0;
  if (v7)
  {
    if (v8)
    {
      v10 = [v8 userRecordName];
      if (v10)
      {
        v11 = [v9 userRecordName];
        v12 = [v7 recordName];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }
    }
  }

  return v10;
}

+ (id)allCloudObjectIDsInContext:(id)a3 passingTest:(id)a4
{
  v5 = a4;
  v6 = [ICAccount allCloudKitAccountsInContext:a3];
  if (v6)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__ICAccount_CloudKit__allCloudObjectIDsInContext_passingTest___block_invoke;
    v18[3] = &unk_2781975D0;
    v19 = v5;
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

+ (void)enumerateAllCloudObjectsInContext:(id)a3 batchSize:(unint64_t)a4 saveAfterBatch:(BOOL)a5 usingBlock:(id)a6
{
  v7 = a5;
  v8 = a3;
  v9 = a6;
  v10 = [ICAccount allCloudKitAccountsInContext:v8];
  if (v10)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __93__ICAccount_CloudKit__enumerateAllCloudObjectsInContext_batchSize_saveAfterBatch_usingBlock___block_invoke;
    v19[3] = &unk_278197618;
    v20 = v9;
    [v10 enumerateObjectsUsingBlock:v19];
    if (v7)
    {
      [v8 ic_saveWithLogDescription:@"Saving after enumerating all accounts"];
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

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a3;
  if (!a5)
  {
    v44.receiver = self;
    v44.super_class = ICAccount;
    if (![(ICCloudSyncingObject *)&v44 mergeCloudKitRecord:v10 accountID:a4 approach:0 mergeableFieldState:a6])
    {
      goto LABEL_9;
    }

    v14 = [v10 recordID];
    v15 = [v14 recordName];
    [(ICAccount *)self setUserRecordName:v15];

    v16 = [v10 objectForKeyedSubscript:@"DidChooseToMigrate"];
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

    v24 = [v10 objectForKeyedSubscript:@"DidFinishMigration"];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 BOOLValue];
      if (v26 != [(ICAccount *)self didFinishMigration])
      {
        -[ICAccount setDidFinishMigration:](self, "setDidFinishMigration:", [v25 BOOLValue]);
        v21 = 1;
      }
    }

    v27 = [v10 objectForKeyedSubscript:@"DidMigrateOnMac"];
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
    v31 = [v30 primaryICloudACAccount];

    if (v31)
    {
      v32 = os_log_create("com.apple.notes", "Accounts");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [(ICAccount(CloudKit) *)v32 mergeCloudKitRecord:v33 accountID:v34 approach:v35 mergeableFieldState:v36, v37, v38, v39];
      }

      v40 = [(ICAccount *)self didChooseToMigrate];
      v41 = [(ICAccount *)self didFinishMigration];
      v42 = [(ICAccount *)self didMigrateOnMac];
      v43 = [v31 accountStore];
      [ICMigrationUtilities saveDidChooseToMigrate:v40 didFinishMigration:v41 didMigrateOnMac:v42 toACAccount:v31 inStore:v43 completionHandler:0];
    }

    goto LABEL_24;
  }

  v11 = MEMORY[0x277D36198];
  v12 = [(ICAccount *)self className];
  v13 = ICStringFromSyncingApproach(a5);
  [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccount(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v12, v13}];

LABEL_9:
  v22 = 0;
LABEL_10:

  return v22;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  if (a3)
  {
    v6 = MEMORY[0x277D36198];
    v7 = [(ICAccount *)self className:a3];
    v8 = ICStringFromSyncingApproach(a3);
    [v6 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAccount(CloudKit) makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v7, v8}];

    v9 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ICAccount;
    v9 = [(ICCloudSyncingObject *)&v20 makeCloudKitRecordForApproach:0 mergeableFieldState:a4];
    v10 = [(ICAccount *)self cryptoVerifier];
    [v9 setObject:v10 forKeyedSubscript:@"CryptoVerifier"];

    v11 = [(ICAccount *)self cryptoSalt];
    [v9 setObject:v11 forKeyedSubscript:@"CryptoSalt"];

    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ICAccount cryptoIterationCount](self, "cryptoIterationCount")}];
    [v9 setObject:v12 forKeyedSubscript:@"CryptoIterationCount"];

    v13 = [(ICCloudSyncingObject *)self passwordHint];
    v14 = [v13 dataUsingEncoding:4];
    v15 = [v9 encryptedValues];
    [v15 setObject:v14 forKeyedSubscript:@"PasswordHint"];

    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAccount didChooseToMigrate](self, "didChooseToMigrate")}];
    [v9 setObject:v16 forKeyedSubscript:@"DidChooseToMigrate"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAccount didFinishMigration](self, "didFinishMigration")}];
    [v9 setObject:v17 forKeyedSubscript:@"DidFinishMigration"];

    v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAccount didMigrateOnMac](self, "didMigrateOnMac")}];
    [v9 setObject:v18 forKeyedSubscript:@"DidMigrateOnMac"];
  }

  return v9;
}

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3
{
  v4 = a3;
  v5 = self;
  ICAccount.associateAppEntity(with:)(v4);
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