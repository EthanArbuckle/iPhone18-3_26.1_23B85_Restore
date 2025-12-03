@interface ICFolder
+ (BOOL)isTitleValid:(id)valid account:(id)account folder:(id)folder parentFolder:(id)parentFolder error:(id *)error;
+ (ICFolder)folderWithIdentifier:(id)identifier context:(id)context;
+ (id)ancestorFolderPredicatesWithBlock:(id)block;
+ (id)contentInfoTextWithNoteCount:(int64_t)count subfolderCount:(int64_t)subfolderCount;
+ (id)deduplicatingTitle:(id)title forFolder:(id)folder forNewFolderParent:(id)parent ofAccount:(id)account;
+ (id)defaultFolderInContext:(id)context;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)keyPathsForValuesAffectingCanBeSharedViaICloud;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newFolderInAccount:(id)account;
+ (id)newFolderInParentFolder:(id)folder;
+ (id)newFolderWithIdentifier:(id)identifier account:(id)account query:(id)query;
+ (id)newFolderWithIdentifier:(id)identifier parentFolder:(id)folder;
+ (id)newPlaceholderObjectForRecordName:(id)name accountID:(id)d context:(id)context;
+ (id)objc_defaultSmartFolderTitleWithComponents:(id)components;
+ (id)objc_smartFolderWithQuery:(id)query account:(id)account;
+ (id)objc_smartFolderWithQuery:(id)query titleComponents:(id)components account:(id)account;
+ (id)predicateForDeprecatedObjects;
+ (id)predicateForVisibleCustomFolders;
+ (id)predicateForVisibleFoldersIncludingHiddenNoteContainers:(BOOL)containers inContext:(id)context;
+ (id)predicateForVisibleObjects;
+ (id)purgableFoldersFetchRequest;
+ (id)reservedFolderTitles;
+ (id)rootSharingFolderForNote:(id)note;
+ (id)stringByScrubbingStringForFolderName:(id)name;
+ (id)visibleFoldersInContext:(id)context;
+ (id)visibleSmartFoldersForHashtagStandardizedContent:(id)content account:(id)account;
+ (unint64_t)countOfFoldersMatchingPredicate:(id)predicate context:(id)context;
+ (unint64_t)maximumDepthOfFolders:(id)folders;
+ (unint64_t)maximumDistanceToLeafFolderOfFolders:(id)folders;
+ (void)deleteFolder:(id)folder;
+ (void)purgeFolder:(id)folder;
- (BOOL)canAddSubfolder;
- (BOOL)canBeSharedViaICloud;
- (BOOL)canMoveAddOrDeleteContents;
- (BOOL)containsSharedDescendantFolders:(BOOL *)folders;
- (BOOL)containsSharedNotesOrSharedDescendantFolders:(BOOL *)folders;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)record;
- (BOOL)hasSharedContentsNotSharedViaSharedFolder:(id)folder;
- (BOOL)isAncestorOfFolder:(id)folder;
- (BOOL)isDefaultFolderForAccount;
- (BOOL)isDefaultFolderOrDescendantOfDefaultFolder;
- (BOOL)isDeletable;
- (BOOL)isDescendantOfFolder:(id)folder;
- (BOOL)isEditableSmartFolder;
- (BOOL)isInICloudAccount;
- (BOOL)isLeaf;
- (BOOL)isMovable;
- (BOOL)isRenamable;
- (BOOL)isSharedViaSharedFolder:(id)folder;
- (BOOL)isShowingDateHeaders;
- (BOOL)isSubfolderOfReadonlyFolder;
- (BOOL)isSystemFolder;
- (BOOL)isTitleValid:(id)valid error:(id *)error;
- (BOOL)isTrashFolder;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)mergeDataFromUserSpecificRecord:(id)record accountID:(id)d;
- (BOOL)supportsDateHeaders;
- (BOOL)validate;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (BOOL)visibleChildFoldersContainsFolderWithTitle:(id)title;
- (BOOL)wantsUserSpecificRecord;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (ICQueryObjC)smartFolderQueryObjC;
- (NSArray)ancestorFolderObjectIDs;
- (NSArray)foldersInFolder;
- (NSArray)visibleNotesInFolder;
- (NSString)localizedTitle;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (id)accountName;
- (id)associatedNoteParticipants;
- (id)cacheKey;
- (id)childCloudObjects;
- (id)customNoteSortType;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)pinnedNotesInFolder;
- (id)predicateForFoldersInFolder;
- (id)predicateForNotesInFolder;
- (id)predicateForPinnedNotesInFolder;
- (id)predicateForVisibleAttachmentsInFolder;
- (id)predicateForVisibleNotesInFolder;
- (id)recursiveVisibleSubfolders;
- (id)rootSharedFoldersInDescendantsIncludingSelf;
- (id)rootSharedNotesIncludingChildFolders;
- (id)rootSharingFolder;
- (id)searchableTextContent;
- (id)shareType;
- (id)visibleChildFolderWithTitle:(id)title;
- (id)visibleNoteContainerChildren;
- (id)visibleNoteContainerChildrenUnsorted;
- (id)visibleNotesIncludingChildFolders;
- (int64_t)compare:(id)compare;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario;
- (unint64_t)countOfVisibleNotesInFolder;
- (unint64_t)depth;
- (unint64_t)indexOfVisibleChild:(id)child;
- (unint64_t)maximumDepthIncludingChildFolders;
- (unint64_t)maximumDistanceToLeafFolder;
- (unint64_t)visibleNoteContainerChildrenCount;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set;
- (void)awakeFromFetch;
- (void)fixBrokenReferencesWithError:(id)error;
- (void)markForDeletion;
- (void)mergeParentFromRecord:(id)record;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)recursivelyAddSubfoldersToArray:(id)array;
- (void)setAccount:(id)account;
- (void)setCustomNoteSortType:(id)type;
- (void)setFolderType:(signed __int16)type;
- (void)setMarkedForDeletion:(BOOL)deletion;
- (void)setNeedsInitialFetchFromCloud:(BOOL)cloud;
- (void)setParent:(id)parent;
- (void)setSmartFolderQueryJSON:(id)n;
- (void)setSmartFolderQueryObjC:(id)c;
- (void)setTitle:(id)title;
- (void)unmarkForDeletionIncludingParentHierarchy;
- (void)updateChangeCountWithReason:(id)reason;
- (void)updateSortOrder;
@end

@implementation ICFolder

+ (id)predicateForDeprecatedObjects
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___ICFolder;
  v3 = objc_msgSendSuper2(&v8, sel_predicateForDeprecatedObjects);
  v9[0] = v3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folderType != %d", 3];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

+ (id)predicateForVisibleObjects
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___ICFolder;
  v3 = objc_msgSendSuper2(&v8, sel_predicateForVisibleObjects);
  v9[0] = v3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"owner.didChooseToMigrate == YES"];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

- (void)awakeFromFetch
{
  v4.receiver = self;
  v4.super_class = ICFolder;
  [(ICCloudSyncingObject *)&v4 awakeFromFetch];
  [(ICFolder *)self updateSortOrder];
  if ([(ICFolder *)self folderType]== 1)
  {
    isDeprecated = [(ICFolder *)self visibleNotesCount]== 0;
  }

  else
  {
    isDeprecated = [(ICFolder *)self isDeprecated];
  }

  [(ICFolder *)self setIsHiddenNoteContainer:isDeprecated];
}

- (void)updateSortOrder
{
  if ([(ICFolder *)self isDefaultFolderOrDescendantOfDefaultFolder])
  {
    v3 = 1;
  }

  else if ([(ICFolder *)self folderType]== 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  [(ICFolder *)self setSortOrder:v3];
}

- (BOOL)isDefaultFolderOrDescendantOfDefaultFolder
{
  parent = [(ICFolder *)self parent];

  if (parent)
  {
    parent2 = [(ICFolder *)self parent];
    isDefaultFolderOrDescendantOfDefaultFolder = [parent2 isDefaultFolderOrDescendantOfDefaultFolder];

    return isDefaultFolderOrDescendantOfDefaultFolder;
  }

  else
  {

    return [(ICFolder *)self isDefaultFolderForAccount];
  }
}

- (BOOL)isDefaultFolderForAccount
{
  account = [(ICFolder *)self account];
  v4 = [account standardFolderIdentifierWithPrefix:@"DefaultFolder"];

  identifier = [(ICFolder *)self identifier];
  v6 = identifier;
  if (v4)
  {
    v7 = [identifier isEqualToString:v4];
  }

  else
  {
    v7 = [identifier hasPrefix:@"DefaultFolder"];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)countOfVisibleNotesInFolder
{
  predicateForVisibleNotesInFolder = [(ICFolder *)self predicateForVisibleNotesInFolder];
  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v5 = [ICNote countOfNotesMatchingPredicate:predicateForVisibleNotesInFolder context:managedObjectContext];

  return v5;
}

- (id)predicateForVisibleNotesInFolder
{
  v26[3] = *MEMORY[0x277D85DE8];
  if (-[ICFolder isSmartFolder](self, "isSmartFolder") && (-[ICFolder smartFolderQuery](self, "smartFolderQuery"), v3 = objc_claimAutoreleasedReturnValue(), [v3 entityName], v4 = objc_claimAutoreleasedReturnValue(), +[ICNote entity](ICNote, "entity"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "name"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v3, v7))
  {
    v8 = MEMORY[0x277CCA920];
    smartFolderQuery = [(ICFolder *)self smartFolderQuery];
    predicate = [smartFolderQuery predicate];
    v26[0] = predicate;
    account = [(ICFolder *)self account];
    identifier = [account identifier];
    v13 = [ICNote predicateForNotesInAccountWithIdentifier:identifier];
    v26[1] = v13;
    v14 = +[(ICCloudSyncingObject *)ICNote];
    v26[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    v16 = [v8 andPredicateWithSubpredicates:v15];
  }

  else
  {
    folderType = [(ICFolder *)self folderType];
    if (folderType == 1)
    {
      v18 = 1;
      v19 = 1;
      v20 = 1;
    }

    else
    {
      v19 = +[ICAccount hidesSystemPaperNotesInCustomFolders]^ 1;
      v18 = +[ICAccount hidesMathNotesInCustomFolders]^ 1;
      v20 = +[ICAccount hidesCallNotesInCustomFolders]^ 1;
    }

    predicateForNotesInFolder = [(ICFolder *)self predicateForNotesInFolder];
    managedObjectContext = [(ICFolder *)self managedObjectContext];
    v23 = [ICNote predicateForVisibleNotesIncludingTrash:folderType == 1 includingSystemPaper:v19 includingMathNotes:v18 includingCallNotes:v20 inContext:managedObjectContext];
    v25[1] = v23;
    smartFolderQuery = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    v16 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:smartFolderQuery];
  }

  return v16;
}

- (BOOL)isTrashFolder
{
  folderType = [(ICFolder *)self folderType];
  if (folderType != 1)
  {
    identifier = [(ICFolder *)self identifier];
    v5 = [identifier hasPrefix:@"TrashFolder"];

    LOBYTE(folderType) = v5;
  }

  return folderType;
}

- (id)predicateForNotesInFolder
{
  v3 = objc_opt_class();

  return [v3 predicateForNotesInFolder:self];
}

- (NSString)searchIndexingIdentifier
{
  objectID = [(ICFolder *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (NSString)searchDomainIdentifier
{
  account = [(ICFolder *)self account];
  identifier = [account identifier];

  return identifier;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  dateForLastTitleModification = [(ICFolder *)self dateForLastTitleModification];
  [v3 setContentModificationDate:dateForLastTitleModification];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  userActivityContentAttributeSet = [(ICFolder *)self userActivityContentAttributeSet];
  localizedTitle = [(ICFolder *)self localizedTitle];
  [userActivityContentAttributeSet setDisplayName:localizedTitle];
  [userActivityContentAttributeSet setTextContent:localizedTitle];
  [userActivityContentAttributeSet setIc_searchResultType:4];
  [userActivityContentAttributeSet ic_populateValuesForSpecializedFields];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteContainer isSharedViaICloud](self, "isSharedViaICloud")}];
  [userActivityContentAttributeSet setShared:v5];

  account = [(ICFolder *)self account];
  if ([account isManaged])
  {
    v7 = &unk_282747C28;
  }

  else
  {
    v7 = &unk_282747C40;
  }

  [userActivityContentAttributeSet setDataOwnerType:v7];

  if (objc_opt_respondsToSelector())
  {
    [(ICFolder *)self associateAppEntityWithSearchableItemAttributeSet:userActivityContentAttributeSet];
  }

  return userActivityContentAttributeSet;
}

- (id)searchableTextContent
{
  array = [MEMORY[0x277CBEB18] array];
  title = [(ICFolder *)self title];
  if (title)
  {
    [array addObject:title];
  }

  localizedTitle = [(ICFolder *)self localizedTitle];
  if (localizedTitle)
  {
    [array addObject:localizedTitle];
  }

  v6 = [array componentsJoinedByString:@" "];

  return v6;
}

- (void)unmarkForDeletionIncludingParentHierarchy
{
  [(ICCloudSyncingObject *)self unmarkForDeletion];
  parent = [(ICFolder *)self parent];
  [parent unmarkForDeletionIncludingParentHierarchy];
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  v67 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (!approach)
  {
    v65.receiver = self;
    v65.super_class = ICFolder;
    if (![(ICCloudSyncingObject *)&v65 mergeCloudKitRecord:recordCopy accountID:d approach:0 mergeableFieldState:state])
    {
      goto LABEL_6;
    }

    [(ICFolder *)self unmarkForDeletionIncludingParentHierarchy];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [(ICFolder *)self setIdentifier:recordName];

    v16 = [recordCopy objectForKeyedSubscript:@"TitleModificationDate"];
    [(ICFolder *)self needsInitialFetchFromCloud];
    title = [(ICFolder *)self title];
    v18 = [title length];

    dateForLastTitleModification = [(ICFolder *)self dateForLastTitleModification];
    if (dateForLastTitleModification)
    {
      dateForLastTitleModification2 = [(ICFolder *)self dateForLastTitleModification];
      v21 = [v16 ic_isLaterThanDate:dateForLastTitleModification2];

      v22 = v21 ^ 1;
    }

    else
    {
      v22 = 0;
    }

    userSpecificServerRecord = [(ICCloudSyncingObject *)self userSpecificServerRecord];
    if (userSpecificServerRecord)
    {
      v22 |= [(ICCloudSyncingObject *)self isSharedRootObject];
    }

    if (v18 && (v22 & 1) != 0)
    {
LABEL_19:
      v35 = [recordCopy objectForKeyedSubscript:@"ImportedFromLegacy"];

      if (v35)
      {
        v36 = [recordCopy objectForKeyedSubscript:@"ImportedFromLegacy"];
        -[ICFolder setImportedFromLegacy:](self, "setImportedFromLegacy:", [v36 BOOLValue]);
      }

      identifier = [(ICFolder *)self identifier];
      if ([identifier hasPrefix:@"TrashFolder"])
      {
        folderType = [(ICFolder *)self folderType];

        if (folderType != 1)
        {
          identifier2 = [(ICFolder *)self identifier];
          v40 = [identifier2 isEqualToString:@"TrashFolder"];

          if (v40)
          {
            v59 = recordCopy;
            v41 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_214D51000, v41, OS_LOG_TYPE_DEFAULT, "Downloaded the old trash folder from the cloud. Deleting it now.", buf, 2u);
            }

            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            notes = [(ICFolder *)self notes];
            v43 = [notes copy];

            v44 = [v43 countByEnumeratingWithState:&v60 objects:v66 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v61;
              do
              {
                for (i = 0; i != v45; ++i)
                {
                  if (*v61 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v48 = *(*(&v60 + 1) + 8 * i);
                  account = [v48 account];
                  trashFolder = [account trashFolder];
                  [v48 setFolder:trashFolder];

                  date = [MEMORY[0x277CBEAA8] date];
                  [v48 setFolderModificationDate:date];

                  [v48 updateChangeCountWithReason:@"Moved to trash folder"];
                }

                v45 = [v43 countByEnumeratingWithState:&v60 objects:v66 count:16];
              }

              while (v45);
            }

            [ICFolder deleteFolder:self];
            v23 = 0;
            recordCopy = v59;
LABEL_44:

            goto LABEL_7;
          }

          [(ICFolder *)self setFolderType:1];
        }
      }

      else
      {
      }

      identifier3 = [(ICFolder *)self identifier];
      v53 = [identifier3 hasPrefix:@"SystemPaper"];

      if (v53)
      {
        v54 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_214D51000, v54, OS_LOG_TYPE_DEFAULT, "Downloaded the old System Paper folder from the cloud. Deleting it now.", buf, 2u);
        }

        [ICFolder deleteFolder:self];
        v23 = 0;
      }

      else
      {
        v55 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"MergeableData"];
        if (v55)
        {
          [(ICFolder *)self mergeWithMergeableData:v55];
          [(ICFolder *)self saveMergeableDataIfNeeded];
        }

        encryptedValues = [recordCopy encryptedValues];
        v57 = [encryptedValues objectForKeyedSubscript:@"SmartFolderQueryJSONEncrypted"];

        ic_stringValue = [v57 ic_stringValue];
        [(ICFolder *)self setSmartFolderQueryJSON:ic_stringValue];
        if (ic_stringValue)
        {
          [(ICFolder *)self setFolderType:2];
        }

        [(ICFolder *)self mergeParentFromRecord:recordCopy];

        v23 = 1;
      }

      goto LABEL_44;
    }

    [(ICFolder *)self setDateForLastTitleModification:v16];
    encryptedValues2 = [recordCopy encryptedValues];
    v27 = [encryptedValues2 objectForKeyedSubscript:@"TitleEncrypted"];

    if (v27)
    {
      ic_stringValue2 = [v27 ic_stringValue];
    }

    else
    {
      v29 = [recordCopy objectForKeyedSubscript:@"Title"];

      if (!v29)
      {
LABEL_18:
        title2 = [(ICFolder *)self title];
        parent = [(ICFolder *)self parent];
        account2 = [(ICFolder *)self account];
        v34 = [ICFolder deduplicatingTitle:title2 forFolder:self forNewFolderParent:parent ofAccount:account2];
        [(ICFolder *)self setTitle:v34];

        goto LABEL_19;
      }

      ic_stringValue2 = [recordCopy objectForKeyedSubscript:@"Title"];
    }

    v30 = ic_stringValue2;
    [(ICFolder *)self setTitle:ic_stringValue2];

    goto LABEL_18;
  }

  v11 = MEMORY[0x277D36198];
  className = [(ICFolder *)self className];
  v13 = ICStringFromSyncingApproach(approach);
  [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICFolder(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", className, v13}];

LABEL_6:
  v23 = 0;
LABEL_7:

  return v23;
}

- (void)mergeParentFromRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"ParentModificationDate"];
  if (!v5 || ([(ICFolder *)self parentModificationDate], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    parentModificationDate = [(ICFolder *)self parentModificationDate];

    v11 = os_log_create("com.apple.notes", "Cloud");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (parentModificationDate)
    {
      if (v12)
      {
        [ICFolder(CloudKit) mergeParentFromRecord:?];
      }

      goto LABEL_31;
    }

    if (v12)
    {
      [ICFolder(CloudKit) mergeParentFromRecord:?];
    }

LABEL_14:
    v11 = [recordCopy objectForKeyedSubscript:@"ParentFolder"];
    share = [recordCopy share];

    recordID = [v11 recordID];
    ic_isOwnedByCurrentUser = [recordID ic_isOwnedByCurrentUser];

    recordID2 = [recordCopy recordID];
    v17 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:recordID2];

    if (v11)
    {
      if (share)
      {
        v18 = ic_isOwnedByCurrentUser;
      }

      else
      {
        v18 = 1;
      }

      if (v18 != 1)
      {
        goto LABEL_31;
      }

      account = [(ICFolder *)self account];
      identifier = [account identifier];

      recordID3 = [v11 recordID];
      managedObjectContext = [(ICFolder *)self managedObjectContext];
      v23 = identifier;
      v24 = [ICFolder existingCloudObjectForRecordID:recordID3 accountID:identifier context:managedObjectContext];

      if (!v24)
      {
        v30 = v23;
        recordID4 = [v11 recordID];
        recordName = [recordID4 recordName];

        v27 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [ICFolder(CloudKit) mergeParentFromRecord:?];
        }

        account2 = [(ICFolder *)self account];
        v24 = [ICFolder newFolderWithIdentifier:recordName account:account2];

        [v24 setNeedsInitialFetchFromCloud:1];
        v23 = v30;
      }

      [(ICFolder *)self setParent:v24];
    }

    else
    {
      if (![(ICCloudSyncingObject *)self isOwnedByCurrentUser])
      {
LABEL_31:

        goto LABEL_32;
      }

      [(ICFolder *)self setParent:0];
    }

    if (share)
    {
      v29 = 0;
    }

    else
    {
      v29 = v17;
    }

    if (!v29)
    {
      [(ICFolder *)self setParentModificationDate:v5];
    }

    goto LABEL_31;
  }

  parentModificationDate2 = [(ICFolder *)self parentModificationDate];
  v8 = [v5 ic_isLaterThanDate:parentModificationDate2];

  v9 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ICFolder(CloudKit) mergeParentFromRecord:?];
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_32:
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  v33.receiver = self;
  v33.super_class = ICFolder;
  v6 = [(ICCloudSyncingObject *)&v33 makeCloudKitRecordForApproach:approach mergeableFieldState:state];
  if ([(ICCloudSyncingObject *)self isOwnedByCurrentUser]|| ![(ICCloudSyncingObject *)self isSharedRootObject])
  {
    dateForLastTitleModification = [(ICFolder *)self dateForLastTitleModification];

    if (dateForLastTitleModification)
    {
      dateForLastTitleModification2 = [(ICFolder *)self dateForLastTitleModification];
      [v6 setObject:dateForLastTitleModification2 forKeyedSubscript:@"TitleModificationDate"];
    }

    title = [(ICFolder *)self title];

    if (title)
    {
      title2 = [(ICFolder *)self title];
      v11 = [title2 dataUsingEncoding:4];
      encryptedValues = [v6 encryptedValues];
      [encryptedValues setObject:v11 forKeyedSubscript:@"TitleEncrypted"];
    }

    parent = [(ICFolder *)self parent];
    recordID = [parent recordID];

    zoneID = [recordID zoneID];
    if (zoneID && (v16 = zoneID, [recordID zoneID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "recordID"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "zoneID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "isEqual:", v19), v19, v18, v17, v16, v20))
    {
      v21 = objc_alloc(MEMORY[0x277CBC620]);
      v22 = [v21 initWithRecordID:recordID action:*MEMORY[0x277CBC070]];
      [v6 setObject:v22 forKeyedSubscript:@"ParentFolder"];
    }

    else if ([(ICCloudSyncingObject *)self isOwnedByCurrentUser])
    {
      [v6 setObject:0 forKeyedSubscript:@"ParentFolder"];
    }

    parentModificationDate = [(ICFolder *)self parentModificationDate];

    if (parentModificationDate)
    {
      parentModificationDate2 = [(ICFolder *)self parentModificationDate];
      [v6 setObject:parentModificationDate2 forKeyedSubscript:@"ParentModificationDate"];
    }

    mergeableData = [(ICFolder *)self mergeableData];

    if (mergeableData)
    {
      mergeableData2 = [(ICFolder *)self mergeableData];
      [v6 ic_setEncryptedInlineableDataAsset:mergeableData2 forKeyPrefix:@"MergeableData" approach:approach withObject:self];
    }
  }

  if (!approach)
  {
    [v6 setWantsChainPCS:1];
    if ([(ICFolder *)self importedFromLegacy])
    {
      v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICFolder importedFromLegacy](self, "importedFromLegacy")}];
      [v6 setObject:v27 forKeyedSubscript:@"ImportedFromLegacy"];
    }

    smartFolderQueryJSON = [(ICFolder *)self smartFolderQueryJSON];

    if (smartFolderQueryJSON)
    {
      smartFolderQueryJSON2 = [(ICFolder *)self smartFolderQueryJSON];
      v30 = [smartFolderQueryJSON2 dataUsingEncoding:4];
      encryptedValues2 = [v6 encryptedValues];
      [encryptedValues2 setObject:v30 forKeyedSubscript:@"SmartFolderQueryJSONEncrypted"];
    }
  }

  return v6;
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  dCopy = d;
  v8 = [ICAccount cloudKitAccountWithIdentifier:iD context:context];
  recordName = [dCopy recordName];

  v10 = [v8 folderWithIdentifier:recordName];

  return v10;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  dCopy = d;
  recordCopy = record;
  v9 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:context];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v12 = [ICFolder newFolderWithIdentifier:recordName account:v9];

  [v12 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];
  [v12 setServerRecord:recordCopy];

  [v12 setInCloud:1];
  [v12 clearChangeCountWithReason:@"Created folder"];
  [v12 updateParentReferenceIfNecessary];

  return v12;
}

+ (id)newPlaceholderObjectForRecordName:(id)name accountID:(id)d context:(id)context
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___ICFolder;
  contextCopy = context;
  dCopy = d;
  v9 = objc_msgSendSuper2(&v12, sel_newPlaceholderObjectForRecordName_accountID_context_, name, dCopy, contextCopy);
  v10 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:contextCopy, v12.receiver, v12.super_class];

  [v9 setAccount:v10];
  return v9;
}

- (BOOL)isInICloudAccount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ICFolder_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __39__ICFolder_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  *(*(*(a1 + 40) + 8) + 24) = [v2 accountType] == 1;
}

- (void)fixBrokenReferencesWithError:(id)error
{
  v64 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
    [(ICFolder *)self parent];
    obj = v44 = errorCopy;
    loggingDescription2 = [obj loggingDescription];
    notes = [(ICFolder *)self notes];
    allObjects = [notes allObjects];
    v10 = [allObjects valueForKey:@"loggingDescription"];
    children = [(ICFolder *)self children];
    allObjects2 = [children allObjects];
    v13 = [allObjects2 valueForKey:@"loggingDescription"];
    *buf = 138413314;
    *v57 = loggingDescription;
    *&v57[8] = 2112;
    *&v57[10] = loggingDescription2;
    v58 = 2112;
    v59 = v10;
    v60 = 2112;
    v61 = v13;
    v62 = 2112;
    v63 = v44;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Fixing broken references for folder: %@\n\tParent: %@\n\tNotes: %@\n\tChildren: %@\n\tError: %@", buf, 0x34u);

    errorCopy = v44;
  }

  if (![(ICFolder *)self markedForDeletion])
  {
    serverShare = [(ICCloudSyncingObject *)self serverShare];
    if (serverShare)
    {
    }

    else
    {
      serverRecord = [(ICCloudSyncingObject *)self serverRecord];
      share = [serverRecord share];

      if (!share)
      {
        goto LABEL_38;
      }
    }

    [(ICCloudSyncingObject *)self setServerShare:0];
    [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
    goto LABEL_38;
  }

  if ([(ICFolder *)self visibleNotesCount])
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      visibleNotesCount = [(ICFolder *)self visibleNotesCount];
      identifier = [(ICFolder *)self identifier];
      *buf = 67109378;
      *v57 = visibleNotesCount;
      *&v57[4] = 2112;
      *&v57[6] = identifier;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Found a deleted folder with %d undeleted notes: %@", buf, 0x12u);
    }

    children2 = v14;
LABEL_36:

    [(ICCloudSyncingObject *)self unmarkForDeletion];
    if ([(ICFolder *)self importedFromLegacy])
    {
      [ICLegacyTombstone removeLegacyTombstoneForFolder:self];
    }
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    children2 = [(ICFolder *)self children];
    v19 = [children2 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v51;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(children2);
          }

          if (([*(*(&v50 + 1) + 8 * i) markedForDeletion] & 1) == 0)
          {
            v14 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [(ICFolder *)self identifier];
              *buf = 138412290;
              *v57 = identifier2;
              _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Found a deleted folder with at least one undeleted child folder: %@", buf, 0xCu);
            }

            goto LABEL_36;
          }
        }

        v20 = [children2 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    notes2 = [(ICFolder *)self notes];
    v24 = [notes2 count];

    if (v24)
    {
      v25 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [(ICFolder *)self identifier];
        *buf = 138412290;
        *v57 = identifier3;
        _os_log_impl(&dword_214D51000, v25, OS_LOG_TYPE_DEFAULT, "Broken references because we still have notes in folder (%@)", buf, 0xCu);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      selfCopy = self;
      notes3 = [(ICFolder *)self notes];
      v29 = [notes3 copy];

      v30 = [v29 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v47;
        do
        {
          v33 = 0;
          do
          {
            if (*v47 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v46 + 1) + 8 * v33);
            v35 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              [(ICFolder(CloudKit) *)buf fixBrokenReferencesWithError:v34, v57, v35];
            }

            account = [(ICFolder *)selfCopy account];
            trashFolder = [account trashFolder];
            [v34 setFolder:trashFolder];

            date = [MEMORY[0x277CBEAA8] date];
            [v34 setFolderModificationDate:date];

            [v34 updateChangeCountWithReason:@"Moved to trash folder"];
            ++v33;
          }

          while (v31 != v33);
          v31 = [v29 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v31);
      }
    }

    else
    {
      [(ICCloudSyncingObject *)self findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:errorCopy];
      v42 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
        *buf = 138412290;
        *v57 = shortLoggingDescription;
        _os_log_impl(&dword_214D51000, v42, OS_LOG_TYPE_INFO, "Broken reference for %@, but not un-deleting or moving any notes", buf, 0xCu);
      }
    }
  }

LABEL_38:
}

- (BOOL)hasAllMandatoryFields
{
  v6.receiver = self;
  v6.super_class = ICFolder;
  if (![(ICCloudSyncingObject *)&v6 hasAllMandatoryFields])
  {
    return 0;
  }

  title = [(ICFolder *)self title];
  v4 = [title length] != 0;

  return v4;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v11.receiver = self;
  v11.super_class = ICFolder;
  objectsToBeDeletedBeforeThisObject = [(ICCloudSyncingObject *)&v11 objectsToBeDeletedBeforeThisObject];
  v4 = [objectsToBeDeletedBeforeThisObject mutableCopy];

  notes = [(ICFolder *)self notes];
  allObjects = [notes allObjects];
  [v4 addObjectsFromArray:allObjects];

  children = [(ICFolder *)self children];
  allObjects2 = [children allObjects];
  [v4 addObjectsFromArray:allObjects2];

  v9 = [v4 copy];

  return v9;
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = ICFolder;
  [(ICCloudSyncingObject *)&v21 objectWasDeletedFromCloudByAnotherDevice];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [(ICFolder *)self children];
  v4 = [children countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v18 != v6)
      {
        objc_enumerationMutation(children);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      if ([v8 hasSuccessfullyPushedLatestVersionToCloud] & 1) == 0 && (objc_msgSend(v8, "isInCloud"))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [children countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v5)
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

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    children = [(ICFolder *)self notes];
    v9 = [children countByEnumeratingWithState:&v13 objects:v22 count:16];
    if (!v9)
    {
LABEL_18:

      return;
    }

    v10 = v9;
    v11 = *v14;
LABEL_12:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(children);
      }

      if (![*(*(&v13 + 1) + 8 * v12) hasSuccessfullyPushedLatestVersionToCloud])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [children countByEnumeratingWithState:&v13 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }
  }

  [(ICFolder *)self unmarkForDeletionIncludingParentHierarchy];
}

- (BOOL)wantsUserSpecificRecord
{
  isSharedViaICloud = [(ICNoteContainer *)self isSharedViaICloud];
  if (isSharedViaICloud)
  {
    LOBYTE(isSharedViaICloud) = ![(ICCloudSyncingObject *)self isOwnedByCurrentUser];
  }

  return isSharedViaICloud;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach
{
  v15.receiver = self;
  v15.super_class = ICFolder;
  v4 = [(ICCloudSyncingObject *)&v15 makeUserSpecificCloudKitRecordForApproach:approach];
  title = [(ICFolder *)self title];

  if (title)
  {
    title2 = [(ICFolder *)self title];
    v7 = [title2 dataUsingEncoding:4];
    encryptedValues = [v4 encryptedValues];
    [encryptedValues setObject:v7 forKeyedSubscript:@"TitleEncrypted"];
  }

  parent = [(ICFolder *)self parent];
  recordID = [parent recordID];

  if (recordID && [recordID ic_isOwnedByCurrentUser])
  {
    v11 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:recordID action:1];
    [v4 setObject:v11 forKeyedSubscript:@"ParentFolder"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"ParentFolder"];
  }

  parentModificationDate = [(ICFolder *)self parentModificationDate];

  if (parentModificationDate)
  {
    parentModificationDate2 = [(ICFolder *)self parentModificationDate];
    [v4 setObject:parentModificationDate2 forKeyedSubscript:@"ParentModificationDate"];
  }

  return v4;
}

- (BOOL)mergeDataFromUserSpecificRecord:(id)record accountID:(id)d
{
  recordCopy = record;
  v12.receiver = self;
  v12.super_class = ICFolder;
  v7 = [(ICCloudSyncingObject *)&v12 mergeDataFromUserSpecificRecord:recordCopy accountID:d];
  if (v7)
  {
    encryptedValues = [recordCopy encryptedValues];
    v9 = [encryptedValues objectForKeyedSubscript:@"TitleEncrypted"];

    if (v9)
    {
      ic_stringValue = [v9 ic_stringValue];
      [(ICFolder *)self setTitle:ic_stringValue];
    }

    [(ICFolder *)self mergeParentFromRecord:recordCopy];
  }

  return v7;
}

- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  v4 = [recordCopy objectForKeyedSubscript:@"ParentFolder"];

  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [v5 referenceAction] == 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)reservedFolderTitles
{
  if (reservedFolderTitles_onceToken != -1)
  {
    +[ICFolder reservedFolderTitles];
  }

  v3 = reservedFolderTitles_reservedFolderTitles;

  return v3;
}

void __32__ICFolder_reservedFolderTitles__block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = MEMORY[0x277CCA8D8];
  v2 = ICSharedFrameworkBundleIdentifier();
  v3 = [v1 bundleWithIdentifier:v2];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = v3;
  obj = [v3 localizations];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [v19 URLForResource:@"Localizable" withExtension:@"strings" subdirectory:0 localization:*(*(&v20 + 1) + 8 * v7)];
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8];
        v10 = +[ICFolder englishTitleForDefaultFolder];
        v11 = [v9 objectForKey:v10];

        if (v11)
        {
          [v0 addObject:v11];
        }

        v12 = +[ICFolder englishTitleForTrashFolder];
        v13 = [v9 objectForKey:v12];

        if (v13)
        {
          [v0 addObject:v13];
        }

        v14 = +[ICFolder englishTitleForSystemPaperFolder];
        v15 = [v9 objectForKey:v14];

        if (v15)
        {
          [v0 addObject:v15];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v16 = [v0 copy];
  v17 = reservedFolderTitles_reservedFolderTitles;
  reservedFolderTitles_reservedFolderTitles = v16;
}

+ (id)deduplicatingTitle:(id)title forFolder:(id)folder forNewFolderParent:(id)parent ofAccount:(id)account
{
  titleCopy = title;
  folderCopy = folder;
  parentCopy = parent;
  accountCopy = account;
  account2 = accountCopy;
  if (!folderCopy && !parentCopy && !accountCopy)
  {
    account2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(account2, OS_LOG_TYPE_ERROR))
    {
      [ICFolder deduplicatingTitle:account2 forFolder:? forNewFolderParent:? ofAccount:?];
    }

    v14 = 0;
    goto LABEL_30;
  }

  if (accountCopy)
  {
    if (!parentCopy)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (account2)
    {
      account = [parentCopy account];

      if (account != account2)
      {
        v16 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ICFolder deduplicatingTitle:account2 forFolder:parentCopy forNewFolderParent:? ofAccount:?];
        }
      }
    }

    goto LABEL_18;
  }

  if (parentCopy)
  {
    account2 = [parentCopy account];
    goto LABEL_12;
  }

  account2 = [folderCopy account];
LABEL_18:
  v17 = [account2 visibleFoldersWithParent:parentCopy];
  v18 = [v17 mutableCopy];

  if (folderCopy)
  {
    [v18 removeObject:folderCopy];
  }

  v28 = v18;
  v19 = [v18 valueForKey:@"title"];
  reservedAccountFolderTitles = [account2 reservedAccountFolderTitles];
  v21 = [v19 setByAddingObjectsFromSet:reservedAccountFolderTitles];

  v22 = titleCopy;
  if ([v21 containsObject:v22])
  {
    v23 = 1;
    v24 = v22;
    do
    {
      v25 = v24;
      v24 = [MEMORY[0x277CCACA8] localizedStringWithFormat:@"%@ %lu", v22, v23];

      v26 = [v21 containsObject:v24];
      if (v23 == -1)
      {
        break;
      }

      ++v23;
    }

    while ((v26 & 1) != 0);
  }

  else
  {
    v24 = v22;
  }

  if ([v21 containsObject:v24])
  {
    v14 = 0;
  }

  else
  {
    v14 = v24;
  }

LABEL_30:

  return v14;
}

+ (id)stringByScrubbingStringForFolderName:(id)name
{
  nameCopy = name;
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v5 = [nameCopy rangeOfCharacterFromSet:newlineCharacterSet];

  v6 = nameCopy;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    newlineCharacterSet2 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v8 = [nameCopy componentsSeparatedByCharactersInSet:newlineCharacterSet2];

    v6 = [v8 componentsJoinedByString:@" "];
  }

  if ([v6 length] >= 0x81)
  {
    v9 = [v6 ic_substringToIndex:128];

    v6 = v9;
  }

  return v6;
}

+ (id)ancestorFolderPredicatesWithBlock:(id)block
{
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  if (+[ICFolder folderDepthLimit])
  {
    v5 = 0;
    v6 = 1;
    do
    {
      array2 = [MEMORY[0x277CBEB18] array];
      v8 = v6;
      do
      {
        [array2 addObject:@"parent"];
        --v8;
      }

      while (v8);
      v9 = [array2 componentsJoinedByString:@"."];
      v10 = blockCopy[2](blockCopy, v9);
      [array addObject:v10];

      ++v5;
      ++v6;
    }

    while (v5 < +[ICFolder folderDepthLimit]);
  }

  return array;
}

- (id)cacheKey
{
  v3 = MEMORY[0x277CCACA8];
  account = [(ICFolder *)self account];
  identifier = [account identifier];
  identifier2 = [(ICFolder *)self identifier];
  v7 = [v3 stringWithFormat:@"%@:%@", identifier, identifier2];

  return v7;
}

- (void)setCustomNoteSortType:(id)type
{
  valueRepresentation = [type valueRepresentation];
  [(ICFolder *)self setCustomNoteSortTypeValue:valueRepresentation];

  date = [MEMORY[0x277CBEAA8] date];
  [(ICFolder *)self setCustomNoteSortTypeModificationDate:date];
}

- (id)customNoteSortType
{
  if ([(ICFolder *)self supportsCustomNoteSortType])
  {
    v3 = MEMORY[0x277D361F0];
    customNoteSortTypeValue = [(ICFolder *)self customNoteSortTypeValue];
    v5 = [v3 folderNoteSortTypeFromValue:customNoteSortTypeValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRenamable
{
  if ([(ICFolder *)self isSystemFolder])
  {
    return 0;
  }

  else
  {
    return ![(ICNoteContainer *)self isSharedReadOnly];
  }
}

- (BOOL)isSystemFolder
{
  if ([(ICFolder *)self isDefaultFolderForAccount])
  {
    return 1;
  }

  return [(ICFolder *)self isTrashFolder];
}

- (BOOL)isSubfolderOfReadonlyFolder
{
  serverShare = [(ICCloudSyncingObject *)self serverShare];
  if (serverShare)
  {
    isSharedReadOnly = 0;
  }

  else
  {
    isSharedReadOnly = [(ICNoteContainer *)self isSharedReadOnly];
  }

  return isSharedReadOnly;
}

- (BOOL)isDeletable
{
  if ([(ICFolder *)self isSystemFolder])
  {
    return 0;
  }

  else
  {
    return ![(ICFolder *)self isSubfolderOfReadonlyFolder];
  }
}

- (BOOL)isLeaf
{
  visibleNoteContainerChildren = [(ICFolder *)self visibleNoteContainerChildren];
  v3 = [visibleNoteContainerChildren count] == 0;

  return v3;
}

- (unint64_t)depth
{
  parent = [(ICFolder *)self parent];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = parent;
    do
    {
      ++v3;
      parent = [v4 parent];

      objc_opt_class();
      v4 = parent;
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
  }

  return v3;
}

+ (unint64_t)maximumDepthOfFolders:(id)folders
{
  v16 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [foldersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(foldersCopy);
        }

        maximumDepthIncludingChildFolders = [*(*(&v11 + 1) + 8 * i) maximumDepthIncludingChildFolders];
        if (v6 <= maximumDepthIncludingChildFolders)
        {
          v6 = maximumDepthIncludingChildFolders;
        }
      }

      v5 = [foldersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)maximumDepthIncludingChildFolders
{
  if ([(ICFolder *)self isLeaf])
  {

    return [(ICFolder *)self depth];
  }

  else
  {
    visibleSubFolders = [(ICFolder *)self visibleSubFolders];
    v5 = [ICFolder maximumDepthOfFolders:visibleSubFolders];

    return v5;
  }
}

- (unint64_t)maximumDistanceToLeafFolder
{
  if ([(ICFolder *)self isLeaf])
  {
    return 0;
  }

  maximumDepthIncludingChildFolders = [(ICFolder *)self maximumDepthIncludingChildFolders];
  return maximumDepthIncludingChildFolders - [(ICFolder *)self depth];
}

+ (unint64_t)maximumDistanceToLeafFolderOfFolders:(id)folders
{
  v16 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [foldersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(foldersCopy);
        }

        maximumDistanceToLeafFolder = [*(*(&v11 + 1) + 8 * i) maximumDistanceToLeafFolder];
        if (v6 <= maximumDistanceToLeafFolder)
        {
          v6 = maximumDistanceToLeafFolder;
        }
      }

      v5 = [foldersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDescendantOfFolder:(id)folder
{
  folderCopy = folder;
  if (folderCopy && ([(ICFolder *)self parent], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    do
    {
      identifier = [v6 identifier];
      identifier2 = [folderCopy identifier];
      v9 = [identifier isEqualToString:identifier2];

      if (v9)
      {
        break;
      }

      parent = [v6 parent];

      v6 = parent;
    }

    while (parent);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)associatedNoteParticipants
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  notes = [(ICFolder *)self notes];
  v5 = [notes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(notes);
        }

        participants = [*(*(&v12 + 1) + 8 * i) participants];
        allObjects = [participants allObjects];
        [v3 addObjectsFromArray:allObjects];
      }

      v6 = [notes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isMovable
{
  account = [(ICFolder *)self account];
  defaultFolder = [account defaultFolder];
  if (defaultFolder == self)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    account2 = [(ICFolder *)self account];
    trashFolder = [account2 trashFolder];
    if (trashFolder == self)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v7 = ![(ICFolder *)self isSubfolderOfReadonlyFolder];
    }
  }

  return v7;
}

- (BOOL)canMoveAddOrDeleteContents
{
  if ([(ICNoteContainer *)self isSharedReadOnly])
  {
    return 0;
  }

  else
  {
    return ![(ICFolder *)self isSmartFolder];
  }
}

- (BOOL)canAddSubfolder
{
  canMoveAddOrDeleteContents = [(ICFolder *)self canMoveAddOrDeleteContents];
  if (canMoveAddOrDeleteContents)
  {
    if ([(ICFolder *)self isDefaultFolderForAccount]|| [(ICFolder *)self isTrashFolder])
    {
      LOBYTE(canMoveAddOrDeleteContents) = 0;
    }

    else
    {
      LOBYTE(canMoveAddOrDeleteContents) = ![(ICFolder *)self isSmartFolder];
    }
  }

  return canMoveAddOrDeleteContents;
}

- (id)visibleNoteContainerChildrenUnsorted
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  children = [(ICFolder *)self children];
  v5 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 markedForDeletion] & 1) == 0 && (objc_msgSend(v9, "isUnsupported") & 1) == 0 && (objc_msgSend(v9, "isHiddenNoteContainer") & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)visibleNoteContainerChildren
{
  visibleNoteContainerChildrenUnsorted = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v3 = [visibleNoteContainerChildrenUnsorted sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (unint64_t)visibleNoteContainerChildrenCount
{
  visibleNoteContainerChildrenUnsorted = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v3 = [visibleNoteContainerChildrenUnsorted count];

  return v3;
}

- (unint64_t)indexOfVisibleChild:(id)child
{
  childCopy = child;
  subFolderIdentifiersOrderedSet = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  identifier = [childCopy identifier];
  v7 = [subFolderIdentifiersOrderedSet indexOfObject:identifier];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    visibleSubFolders = [(ICFolder *)self visibleSubFolders];
    v7 = [visibleSubFolders indexOfObject:childCopy];
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  v51 = *MEMORY[0x277D85DE8];
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = compareCopy;
    if ([(ICFolder *)self isDefaultFolderForAccount])
    {
      v6 = -1;
LABEL_57:

      goto LABEL_58;
    }

    if ([v5 isDefaultFolderForAccount])
    {
      v6 = 1;
      goto LABEL_57;
    }

    sortOrder = [(ICFolder *)self sortOrder];
    if (sortOrder != [v5 sortOrder])
    {
      sortOrder2 = [(ICFolder *)self sortOrder];
      if (sortOrder2 > [v5 sortOrder])
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }

      goto LABEL_57;
    }

    parent = [(ICFolder *)self parent];
    parent2 = [v5 parent];

    if (parent != parent2)
    {
      selfCopy = self;
      v18 = v5;
      depth = [(ICFolder *)selfCopy depth];
      depth2 = [v18 depth];
      v21 = depth2;
      parent4 = selfCopy;
      if (depth <= depth2)
      {
        parent3 = v18;
        if (depth2 > depth)
        {
          parent3 = v18;
          do
          {
            v27 = parent3;
            parent3 = [parent3 parent];

            --v21;
          }

          while (v21 > depth);
          parent4 = selfCopy;
        }
      }

      else
      {
        do
        {
          v23 = parent4;
          parent4 = [parent4 parent];

          --depth;
        }

        while (depth > v21);
        parent3 = v18;
      }

      v22Parent = [parent4 parent];
      v24Parent = [parent3 parent];

      if (v22Parent == v24Parent)
      {
        v22Parent2 = parent4;
        v24Parent2 = parent3;
      }

      else
      {
        do
        {
          v22Parent2 = [parent4 parent];

          v24Parent2 = [parent3 parent];

          v30Parent = [v22Parent2 parent];
          v31Parent = [v24Parent2 parent];

          parent3 = v24Parent2;
          parent4 = v22Parent2;
        }

        while (v30Parent != v31Parent);
      }

      if ([v22Parent2 isEqual:v24Parent2])
      {
        depth3 = [(ICFolder *)selfCopy depth];
        if (depth3 < [v18 depth])
        {
          v6 = -1;
        }

        else
        {
          v6 = 1;
        }
      }

      else
      {
        v6 = [v22Parent2 compare:v24Parent2];
      }

      goto LABEL_57;
    }

    parent5 = [(ICFolder *)self parent];
    if (parent5)
    {
      [(ICFolder *)self parent];
    }

    else
    {
      [(ICFolder *)self account];
    }
    v35 = ;
    subFolderIdentifiersOrderedSet = [v35 subFolderIdentifiersOrderedSet];

    if (subFolderIdentifiersOrderedSet && [subFolderIdentifiersOrderedSet count])
    {
      identifier = [(ICFolder *)self identifier];
      v38 = [subFolderIdentifiersOrderedSet indexOfObject:identifier];

      identifier2 = [v5 identifier];
      v40 = [subFolderIdentifiersOrderedSet indexOfObject:identifier2];

      if (v38 != 0x7FFFFFFFFFFFFFFFLL && v38 == v40)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"indexOfSelf != indexOfOther || indexOfSelf == NSNotFound" functionName:"-[ICFolder compare:]" simulateCrash:1 showAlert:0 format:@"trying to compare folders that have the same ordering index"];
      }

      if (v38 != 0x7FFFFFFFFFFFFFFFLL && v40 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v38 < v40)
        {
          v6 = -1;
        }

        else
        {
          v6 = 1;
        }

        goto LABEL_56;
      }

      if (v38 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = -1;
      }

      else
      {
        v6 = 1;
      }

      v41 = v40 == 0x7FFFFFFFFFFFFFFFLL || v38 == 0x7FFFFFFFFFFFFFFFLL;
      if (v38 != v40 && v41)
      {
        goto LABEL_56;
      }
    }

    localizedTitle = [(ICFolder *)self localizedTitle];
    localizedTitle2 = [v5 localizedTitle];
    v6 = [localizedTitle localizedStandardCompare:localizedTitle2];

LABEL_56:
    goto LABEL_57;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = 1;
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v45 = 138412802;
      v46 = v9;
      v47 = 2112;
      v48 = v11;
      v49 = 2112;
      v50 = v13;
      _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Trying to compare an %@ with a non-%@: %@", &v45, 0x20u);
    }

    v6 = 0;
  }

LABEL_58:

  return v6;
}

- (void)setNeedsInitialFetchFromCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  if ([(ICFolder *)self needsInitialFetchFromCloud]!= cloud)
  {
    account = [(ICFolder *)self account];
    [account willChangeValueForKey:@"visibleFolders"];

    account2 = [(ICFolder *)self account];
    [account2 willChangeValueForKey:@"visibleNoteContainers"];

    v9.receiver = self;
    v9.super_class = ICFolder;
    [(ICCloudSyncingObject *)&v9 setNeedsInitialFetchFromCloud:cloudCopy];
    account3 = [(ICFolder *)self account];
    [account3 didChangeValueForKey:@"visibleFolders"];

    account4 = [(ICFolder *)self account];
    [account4 didChangeValueForKey:@"visibleNoteContainers"];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(ICFolder *)self title];
  v5 = [titleCopy isEqualToString:title];

  if ((v5 & 1) == 0)
  {
    [(ICFolder *)self willChangeValueForKey:@"title"];
    [(ICFolder *)self setPrimitiveValue:titleCopy forKey:@"title"];
    [(ICFolder *)self didChangeValueForKey:@"title"];
  }
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  parent = [(ICFolder *)self parent];

  v5 = parentCopy;
  if (parent != parentCopy)
  {
    if (parentCopy == self)
    {
      v6 = MEMORY[0x277D36198];
      v7 = @"Cannot set a folder's parent to be itself";
    }

    else
    {
      if (![(ICFolder *)parentCopy isDescendantOfFolder:self])
      {
        parent2 = [(ICFolder *)self parent];
        account = [(ICFolder *)self account];
        [account willChangeValueForKey:@"visibleNoteContainerChildren"];

        [(ICFolder *)self willChangeValueForKey:@"parent"];
        [(ICFolder *)self willChangeValueForKey:@"parentCloudObject"];
        [parent2 willChangeValueForKey:@"children"];
        [(ICFolder *)parentCopy willChangeValueForKey:@"children"];
        [(ICFolder *)self setPrimitiveValue:parentCopy forKey:@"parent"];
        v10 = [parent2 mutableSetValueForKey:@"children"];
        [v10 removeObject:self];

        v11 = [(ICFolder *)parentCopy mutableSetValueForKey:@"children"];
        [v11 addObject:self];

        [parent2 didChangeValueForKey:@"children"];
        [(ICFolder *)parentCopy didChangeValueForKey:@"children"];
        [(ICFolder *)self didChangeValueForKey:@"parent"];
        [(ICFolder *)self didChangeValueForKey:@"parentCloudObject"];
        account2 = [(ICFolder *)self account];
        [account2 didChangeValueForKey:@"visibleNoteContainerChildren"];

        [(ICFolder *)self updateSortOrder];
        [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
        [parent2 markShareDirtyIfNeededWithReason:@"Reparented folder"];
        [(ICCloudSyncingObject *)parentCopy markShareDirtyIfNeededWithReason:@"Reparented folder"];

        goto LABEL_8;
      }

      v6 = MEMORY[0x277D36198];
      v7 = @"Cannot set a folder's parent to be its descendant";
    }

    [v6 handleFailedAssertWithCondition:"NO" functionName:"-[ICFolder setParent:]" simulateCrash:1 showAlert:1 alertMessage:@"An issue occured when moving a folder. Do you want to file a radar?" format:v7];
LABEL_8:
    v5 = parentCopy;
  }
}

- (BOOL)isAncestorOfFolder:(id)folder
{
  folderCopy = folder;
  account = [(ICFolder *)self account];
  account2 = [folderCopy account];

  if (account == account2)
  {
    parent = [folderCopy parent];
    v9 = parent;
    if (parent)
    {
      v7 = parent == self || [(ICFolder *)self isAncestorOfFolder:parent];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)ancestorFolderObjectIDs
{
  ancestorCloudObjects = [(ICCloudSyncingObject *)self ancestorCloudObjects];
  v3 = [ancestorCloudObjects ic_compactMap:&__block_literal_global_102];

  return v3;
}

id __35__ICFolder_ancestorFolderObjectIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  v4 = [v3 objectID];

  return v4;
}

- (void)setAccount:(id)account
{
  v32 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  account = [(ICFolder *)self account];
  if (([account isEqual:accountCopy] & 1) == 0)
  {
    [(ICFolder *)self willChangeValueForKey:@"account"];
    [(ICFolder *)self setPrimitiveValue:accountCopy forKey:@"account"];
    v6 = [account mutableSetValueForKey:@"folders"];
    [v6 removeObject:self];

    v7 = [accountCopy mutableSetValueForKey:@"folders"];
    [v7 addObject:self];

    [(ICFolder *)self didChangeValueForKey:@"account"];
    [(ICFolder *)self setOwner:accountCopy];
    accountNameForAccountListSorting = [accountCopy accountNameForAccountListSorting];
    [(ICFolder *)self setAccountNameForAccountListSorting:accountNameForAccountListSorting];

    [(ICFolder *)self updateSortOrder];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    children = [(ICFolder *)self children];
    v10 = [children copy];

    v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        v14 = 0;
        do
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v26 + 1) + 8 * v14++) setAccount:accountCopy];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v12);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    notes = [(ICFolder *)self notes];
    v16 = [notes copy];

    v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v22 + 1) + 8 * v20++) setAccount:accountCopy];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }

    v21 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(ICFolder *)accountCopy setAccount:v21];
    }
  }
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario
{
  if ([(ICCloudSyncingObject *)self isUnsupported]|| [(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {

    return [(ICFolder *)self minimumSupportedNotesVersion];
  }

  else
  {
    if ([(ICFolder *)self isSmartFolder])
    {
      smartFolderQuery = [(ICFolder *)self smartFolderQuery];
      minimumSupportedVersion = [smartFolderQuery minimumSupportedVersion];
    }

    else if ([(ICCloudSyncingObject *)self isSharedRootObject])
    {
      minimumSupportedVersion = 4;
    }

    else
    {
      minimumSupportedVersion = 0;
    }

    v8.receiver = self;
    v8.super_class = ICFolder;
    result = [(ICCloudSyncingObject *)&v8 intrinsicNotesVersionForScenario:scenario];
    if (minimumSupportedVersion > result)
    {
      return minimumSupportedVersion;
    }
  }

  return result;
}

+ (id)contentInfoTextWithNoteCount:(int64_t)count subfolderCount:(int64_t)subfolderCount
{
  array = [MEMORY[0x277CBEB18] array];
  if (subfolderCount)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = __ICLocalizedFrameworkString_impl(@"%lu Folders", @"%lu Folders", 0, 1);
    subfolderCount = [v7 localizedStringWithFormat:v8, subfolderCount];

    [array addObject:subfolderCount];
  }

  if (count)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = __ICLocalizedFrameworkString_impl(@"%lu Notes", @"%lu Notes", 0, 1);
    v12 = [v10 localizedStringWithFormat:v11, count];

    [array addObject:v12];
  }

  if ([array count])
  {
    v13 = [array componentsJoinedByString:@" · "];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)markForDeletion
{
  serverShare = [self serverShare];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v2, v3, "A shared folder is deleted but may have not been unshared yet: %@, share: %@", v4, v5, v6, v7, v8);
}

- (void)setMarkedForDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  if (deletion && ![(ICFolder *)self isDeletable])
  {
    v6 = os_log_create("com.apple.notes", "Delete");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICFolder setMarkedForDeletion:?];
    }
  }

  else
  {
    [(ICFolder *)self willChangeValueForKey:@"markedForDeletion"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:deletionCopy];
    [(ICFolder *)self setPrimitiveValue:v5 forKey:@"markedForDeletion"];

    [(ICFolder *)self didChangeValueForKey:@"markedForDeletion"];
    account = [(ICFolder *)self account];
    [account setMarkedForDeletion:0];
  }
}

- (void)updateChangeCountWithReason:(id)reason
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = ICFolder;
  [(ICCloudSyncingObject *)&v11 updateChangeCountWithReason:reasonCopy];
  changedValues = [(ICFolder *)self changedValues];
  v6 = NSStringFromSelector(sel_title);
  v7 = [changedValues objectForKeyedSubscript:v6];
  if (v7)
  {

LABEL_4:
    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:reasonCopy];
    goto LABEL_5;
  }

  changedValues2 = [(ICFolder *)self changedValues];
  v9 = NSStringFromSelector(sel_parent);
  v10 = [changedValues2 objectForKeyedSubscript:v9];

  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (BOOL)supportsDateHeaders
{
  if ([(ICFolder *)self isTrashFolder])
  {
    return 0;
  }

  customNoteSortType = [(ICFolder *)self customNoteSortType];
  v3 = [customNoteSortType resolvedCustomSortTypeOrder] != 3;

  return v3;
}

- (BOOL)isShowingDateHeaders
{
  LODWORD(dateHeadersType) = [(ICFolder *)self supportsDateHeaders];
  if (dateHeadersType)
  {
    dateHeadersType = [(ICFolder *)self dateHeadersType];
    if (dateHeadersType)
    {
      LOBYTE(dateHeadersType) = dateHeadersType == 2;
    }

    else
    {
      LOBYTE(dateHeadersType) = [MEMORY[0x277D361C8] defaultDateHeadersType] == 2;
    }
  }

  return dateHeadersType;
}

- (BOOL)validateForInsert:(id *)insert
{
  v6.receiver = self;
  v6.super_class = ICFolder;
  v4 = [(ICFolder *)&v6 validateForInsert:insert];
  if (v4)
  {
    LOBYTE(v4) = [(ICFolder *)self validate];
  }

  return v4;
}

- (BOOL)validateForUpdate:(id *)update
{
  v6.receiver = self;
  v6.super_class = ICFolder;
  v4 = [(ICFolder *)&v6 validateForUpdate:update];
  if (v4)
  {
    LOBYTE(v4) = [(ICFolder *)self validate];
  }

  return v4;
}

- (BOOL)validate
{
  depth = [(ICFolder *)self depth];
  if (depth > +[ICFolder folderDepthLimit])
  {
    parent = [(ICFolder *)self parent];
    v4Parent = [parent parent];
    [(ICFolder *)self setParent:v4Parent];
  }

  title = [(ICFolder *)self title];
  if (!title || (v7 = title, -[ICFolder title](self, "title"), v8 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByTrimmingCharactersInSet:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v8, v7, !v11))
  {
    v12 = objc_opt_class();
    localizedNewFolderName = [objc_opt_class() localizedNewFolderName];
    parent2 = [(ICFolder *)self parent];
    account = [(ICFolder *)self account];
    v16 = [v12 deduplicatingTitle:localizedNewFolderName forFolder:self forNewFolderParent:parent2 ofAccount:account];
    [(ICFolder *)self setTitle:v16];
  }

  return 1;
}

- (BOOL)isTitleValid:(id)valid error:(id *)error
{
  validCopy = valid;
  account = [(ICFolder *)self account];
  parent = [(ICFolder *)self parent];
  LOBYTE(error) = [ICFolder isTitleValid:validCopy account:account folder:self parentFolder:parent error:error];

  return error;
}

+ (BOOL)isTitleValid:(id)valid account:(id)account folder:(id)folder parentFolder:(id)parentFolder error:(id *)error
{
  v35[2] = *MEMORY[0x277D85DE8];
  validCopy = valid;
  accountCopy = account;
  folderCopy = folder;
  parentFolderCopy = parentFolder;
  if (validCopy)
  {
    v15 = validCopy;
  }

  else
  {
    v15 = &stru_2827172C0;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v17 = [(__CFString *)v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v17 length])
  {
    if (error)
    {
      v18 = __ICLocalizedFrameworkString_impl(@"Please choose a different name.", @"Please choose a different name.", 0, 1);
      v21 = __ICLocalizedFrameworkString_impl(@"Folder names can’t be blank.", @"Folder names can’t be blank.", 0, 1);
      goto LABEL_10;
    }

LABEL_19:
    v22 = 0;
    v18 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  if ([v17 length] >= 0x81)
  {
    if (error)
    {
      v18 = __ICLocalizedFrameworkString_impl(@"Please choose a different name.", @"Please choose a different name.", 0, 1);
      v19 = MEMORY[0x277CCACA8];
      v20 = __ICLocalizedFrameworkString_impl(@"Folder names can’t be longer than %d characters.", @"Folder names can’t be longer than %d characters.", 0, 1);
      v21 = [v19 localizedStringWithFormat:v20, 128];

LABEL_10:
      v22 = 0;
LABEL_17:
      if ((v22 & 1) == 0)
      {
        v31 = *MEMORY[0x277CCA498];
        v34[0] = *MEMORY[0x277CCA450];
        v34[1] = v31;
        v35[0] = v18;
        v35[1] = v21;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1024 userInfo:v32];

        v22 = 0;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v23 = [accountCopy visibleFoldersWithParent:parentFolderCopy];
  v24 = [v23 mutableCopy];

  if (folderCopy)
  {
    [v24 removeObject:folderCopy];
  }

  v25 = [v24 valueForKey:@"title"];
  v26 = [v25 mutableCopy];

  v27 = +[ICFolder reservedFolderTitles];
  [v26 unionSet:v27];

  reservedAccountFolderTitles = [accountCopy reservedAccountFolderTitles];
  [v26 unionSet:reservedAccountFolderTitles];

  v29 = [v26 containsObject:v17];
  v30 = v29;
  v21 = 0;
  v18 = 0;
  if (error && v29)
  {
    v18 = __ICLocalizedFrameworkString_impl(@"Name Taken", @"Name Taken", 0, 1);
    v21 = __ICLocalizedFrameworkString_impl(@"Please choose a different name.", @"Please choose a different name.", 0, 1);
  }

  v22 = v30 ^ 1;

  if (error)
  {
    goto LABEL_17;
  }

LABEL_20:

  return v22;
}

- (BOOL)visibleChildFoldersContainsFolderWithTitle:(id)title
{
  titleCopy = title;
  account = [(ICFolder *)self account];
  v6 = [account visibleFoldersWithParent:self];

  v7 = [v6 valueForKey:@"title"];
  v8 = [v7 containsObject:titleCopy];

  return v8;
}

- (id)visibleChildFolderWithTitle:(id)title
{
  v19 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  account = [(ICFolder *)self account];
  v6 = [account visibleFoldersWithParent:self];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        title = [v10 title];
        v12 = [title isEqualToString:titleCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)accountName
{
  account = [(ICFolder *)self account];
  localizedName = [account localizedName];

  return localizedName;
}

- (id)visibleNotesIncludingChildFolders
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  visibleNotes = [(ICFolder *)self visibleNotes];
  v5 = [v3 arrayWithArray:visibleNotes];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(ICFolder *)self children];
  v7 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(children);
        }

        visibleNotesIncludingChildFolders = [*(*(&v14 + 1) + 8 * i) visibleNotesIncludingChildFolders];
        [v5 addObjectsFromArray:visibleNotesIncludingChildFolders];
      }

      v8 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)recursiveVisibleSubfolders
{
  visibleNoteContainerChildrenUnsorted = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v4 = [visibleNoteContainerChildrenUnsorted count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICFolder *)self recursivelyAddSubfoldersToArray:v5];
    v6 = [v5 copy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (void)recursivelyAddSubfoldersToArray:(id)array
{
  arrayCopy = array;
  visibleNoteContainerChildrenUnsorted = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICFolder_recursivelyAddSubfoldersToArray___block_invoke;
  v7[3] = &unk_278197D70;
  v8 = arrayCopy;
  v6 = arrayCopy;
  [visibleNoteContainerChildrenUnsorted enumerateObjectsUsingBlock:v7];
}

void __44__ICFolder_recursivelyAddSubfoldersToArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  [v4 recursivelyAddSubfoldersToArray:*(a1 + 32)];
}

- (NSString)localizedTitle
{
  if ([(ICFolder *)self isDefaultFolderForAccount])
  {
    v3 = +[ICFolder localizedTitleForDefaultFolder];
LABEL_5:
    v4 = v3;
    goto LABEL_9;
  }

  if ([(ICFolder *)self folderType]== 1)
  {
    v3 = +[ICFolder localizedTitleForTrashFolder];
    goto LABEL_5;
  }

  title = [(ICFolder *)self title];
  v6 = title;
  v7 = &stru_2827172C0;
  if (title)
  {
    v7 = title;
  }

  v4 = v7;

LABEL_9:

  return v4;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICFolder;
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__ICFolder_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v6;
  return v6;
}

void __28__ICFolder_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) account];
  v3 = [v2 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_2827172C0;
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"account"];

  v6 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(*(a1 + 40), "folderType")}];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"folderType"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "isSmartFolder")}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"isSmartFolder"];

  v8 = [*(a1 + 40) smartFolderQueryJSON];

  if (v8)
  {
    v9 = [*(a1 + 40) smartFolderQueryJSON];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:@"smartFolderQueryJSON"];
  }

  v10 = [*(a1 + 40) parent];
  v11 = [v10 identifier];

  if (v11)
  {
    v12 = [*(a1 + 40) parent];
    v13 = [v12 identifier];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:@"parent"];
  }

  v14 = [*(a1 + 40) children];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [*(a1 + 40) children];
    v17 = [v16 allObjects];
    v18 = [v17 valueForKey:@"recordName"];
    [*(a1 + 32) setObject:v18 forKeyedSubscript:@"children"];
  }

  v19 = [*(a1 + 40) notes];
  v20 = [v19 count];

  if (v20)
  {
    v23 = [*(a1 + 40) notes];
    v21 = [v23 allObjects];
    v22 = [v21 valueForKey:@"recordName"];
    [*(a1 + 32) setObject:v22 forKeyedSubscript:@"notes"];
  }
}

- (BOOL)containsSharedDescendantFolders:(BOOL *)folders
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  recursiveVisibleSubfolders = [(ICFolder *)self recursiveVisibleSubfolders];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICFolder_containsSharedDescendantFolders___block_invoke;
  v7[3] = &unk_278197D98;
  v7[4] = &v8;
  v7[5] = &v12;
  v7[6] = folders;
  [recursiveVisibleSubfolders enumerateObjectsUsingBlock:v7];
  if (folders)
  {
    *folders = *(v13 + 24);
  }

  v5 = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __44__ICFolder_containsSharedDescendantFolders___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 isSharedViaICloud];
  v7 = *(a1[4] + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = v6;
  }

  if (v6 && *(*(a1[5] + 8) + 24) == 1)
  {
    *(*(a1[5] + 8) + 24) = [v8 isOwnedByCurrentUser];
  }

  if (*(*(a1[4] + 8) + 24) == 1 && (!a1[6] || (*(*(a1[5] + 8) + 24) & 1) == 0))
  {
    *a4 = 1;
  }
}

- (BOOL)containsSharedNotesOrSharedDescendantFolders:(BOOL *)folders
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13[0] = 1;
  v5 = [(ICFolder *)self containsSharedDescendantFolders:v13];
  *(v15 + 24) = v5;
  if (v5)
  {
    if (!folders)
    {
      goto LABEL_6;
    }

    if (*(v11 + 24) != 1)
    {
LABEL_5:
      *folders = *(v11 + 24);
      goto LABEL_6;
    }
  }

  visibleNotesIncludingChildFolders = [(ICFolder *)self visibleNotesIncludingChildFolders];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ICFolder_containsSharedNotesOrSharedDescendantFolders___block_invoke;
  v9[3] = &unk_278197DC0;
  v9[4] = &v14;
  v9[5] = &v10;
  v9[6] = folders;
  [visibleNotesIncludingChildFolders enumerateObjectsUsingBlock:v9];

  if (folders)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(v15 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __57__ICFolder_containsSharedNotesOrSharedDescendantFolders___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 isSharedViaICloud];
  v7 = *(a1[4] + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = v6;
  }

  if (v6 && *(*(a1[5] + 8) + 24) == 1)
  {
    *(*(a1[5] + 8) + 24) = [v8 isOwnedByCurrentUser];
  }

  if (*(*(a1[4] + 8) + 24) == 1 && (!a1[6] || (*(*(a1[5] + 8) + 24) & 1) == 0))
  {
    *a4 = 1;
  }
}

- (id)rootSharedFoldersInDescendantsIncludingSelf
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(ICCloudSyncingObject *)self isSharedRootObject])
  {
    [array addObject:self];
  }

  recursiveVisibleSubfolders = [(ICFolder *)self recursiveVisibleSubfolders];
  v5 = [recursiveVisibleSubfolders ic_objectsPassingTest:&__block_literal_global_183];
  [array addObjectsFromArray:v5];

  v6 = [array copy];

  return v6;
}

- (id)rootSharedNotesIncludingChildFolders
{
  visibleNotesIncludingChildFolders = [(ICFolder *)self visibleNotesIncludingChildFolders];
  v3 = [visibleNotesIncludingChildFolders ic_objectsPassingTest:&__block_literal_global_186];

  return v3;
}

- (id)rootSharingFolder
{
  if ([(ICNoteContainer *)self isSharedViaICloud])
  {
    selfCopy = self;
    if (selfCopy)
    {
      do
      {
        if ([(ICCloudSyncingObject *)selfCopy isSharedRootObject])
        {
          break;
        }

        parent = [(ICFolder *)selfCopy parent];

        selfCopy = parent;
      }

      while (parent);
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)rootSharingFolderForNote:(id)note
{
  folder = [note folder];
  rootSharingFolder = [folder rootSharingFolder];

  return rootSharingFolder;
}

- (BOOL)isSharedViaSharedFolder:(id)folder
{
  folderCopy = folder;
  if (-[ICNoteContainer isSharedViaICloud](self, "isSharedViaICloud") && [folderCopy isSharedViaICloud])
  {
    rootSharingFolder = [(ICFolder *)self rootSharingFolder];
    identifier = [rootSharingFolder identifier];
    identifier2 = [folderCopy identifier];
    if ([identifier isEqualToString:identifier2])
    {
      v8 = 1;
    }

    else
    {
      v8 = [folderCopy isDescendantOfFolder:rootSharingFolder];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasSharedContentsNotSharedViaSharedFolder:(id)folder
{
  folderCopy = folder;
  if (-[ICNoteContainer isSharedViaICloud](self, "isSharedViaICloud") && !-[ICFolder isSharedViaSharedFolder:](self, "isSharedViaSharedFolder:", folderCopy) || (-[ICFolder rootSharedNotesIncludingChildFolders](self, "rootSharedNotesIncludingChildFolders"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = 1;
  }

  else
  {
    rootSharedFoldersInDescendantsIncludingSelf = [(ICFolder *)self rootSharedFoldersInDescendantsIncludingSelf];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ICFolder_hasSharedContentsNotSharedViaSharedFolder___block_invoke;
    v10[3] = &unk_278197DE8;
    v11 = folderCopy;
    v7 = [rootSharedFoldersInDescendantsIncludingSelf ic_containsObjectPassingTest:v10];
  }

  return v7;
}

- (id)childCloudObjects
{
  array = [MEMORY[0x277CBEB18] array];
  notes = [(ICFolder *)self notes];
  allObjects = [notes allObjects];
  [array addObjectsFromArray:allObjects];

  children = [(ICFolder *)self children];
  allObjects2 = [children allObjects];
  [array addObjectsFromArray:allObjects2];

  return array;
}

- (id)shareType
{
  v2 = objc_opt_class();

  return [v2 shareType];
}

+ (id)keyPathsForValuesAffectingCanBeSharedViaICloud
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICFolder;
  v2 = objc_msgSendSuper2(&v5, sel_keyPathsForValuesAffectingCanBeSharedViaICloud);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"folderType"];
  [v3 addObject:@"isDefaultFolderForAccount"];
  [v3 addObject:@"isSharedThroughParent"];

  return v3;
}

- (BOOL)canBeSharedViaICloud
{
  isModernCustomFolder = [(ICFolder *)self isModernCustomFolder];
  if (isModernCustomFolder)
  {
    if ([(ICFolder *)self isSmartFolder])
    {
      LOBYTE(isModernCustomFolder) = 0;
    }

    else
    {
      v5.receiver = self;
      v5.super_class = ICFolder;
      LOBYTE(isModernCustomFolder) = [(ICNoteContainer *)&v5 canBeSharedViaICloud];
    }
  }

  return isModernCustomFolder;
}

- (void)setFolderType:(signed __int16)type
{
  typeCopy = type;
  if ([(ICFolder *)self folderType]!= type)
  {
    if ((typeCopy & 0xFFFFFFFE) == 2 && ([(ICFolder *)self isDefaultFolderForAccount]|| [(ICFolder *)self isTrashFolder]))
    {
      v5 = MEMORY[0x277D36198];

      [v5 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICFolder setFolderType:]" simulateCrash:1 showAlert:1 format:@"Attempting to set the default or trash folder as a smart folder"];
    }

    else
    {
      intrinsicNotesVersion = [(ICCloudSyncingObject *)self intrinsicNotesVersion];
      [(ICFolder *)self willChangeValueForKey:@"folderType"];
      v7 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
      [(ICFolder *)self setPrimitiveValue:v7 forKey:@"folderType"];

      [(ICFolder *)self didChangeValueForKey:@"folderType"];
      if ([(ICCloudSyncingObject *)self intrinsicNotesVersion]!= intrinsicNotesVersion)
      {
        [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
      }

      if (typeCopy == 2)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        account = [(ICFolder *)self account];
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{self, @"ICAccountDidAddSmartFolderNotificationFolderKey", 0}];
        [defaultCenter postNotificationName:@"ICSmartFolderAddedNotification" object:account userInfo:v9];
      }
    }
  }
}

- (void)setSmartFolderQueryJSON:(id)n
{
  nCopy = n;
  smartFolderQueryJSON = [(ICFolder *)self smartFolderQueryJSON];
  v5 = [nCopy isEqualToString:smartFolderQueryJSON];

  if ((v5 & 1) == 0)
  {
    [(ICFolder *)self willChangeValueForKey:@"smartFolderQueryJSON"];
    [(ICFolder *)self setPrimitiveValue:nCopy forKey:@"smartFolderQueryJSON"];
    [(ICFolder *)self didChangeValueForKey:@"smartFolderQueryJSON"];
    if (nCopy)
    {
      [(ICFolder *)self setFolderType:2];
    }

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (BOOL)isEditableSmartFolder
{
  isSmartFolder = [(ICFolder *)self isSmartFolder];
  if (isSmartFolder)
  {
    smartFolderQuery = [(ICFolder *)self smartFolderQuery];
    canBeEdited = [smartFolderQuery canBeEdited];

    LOBYTE(isSmartFolder) = canBeEdited;
  }

  return isSmartFolder;
}

+ (id)visibleSmartFoldersForHashtagStandardizedContent:(id)content account:(id)account
{
  v27[3] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  accountCopy = account;
  if ([contentCopy length])
  {
    fetchRequest = [self fetchRequest];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folderType == %d", 2];
    v10 = MEMORY[0x277CCAC30];
    identifier = [accountCopy identifier];
    v12 = [v10 predicateWithFormat:@"account.identifier == %@", identifier];

    predicateForVisibleObjects = [self predicateForVisibleObjects];
    v14 = MEMORY[0x277CCA920];
    v22 = v9;
    v27[0] = v9;
    v27[1] = v12;
    v27[2] = predicateForVisibleObjects;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    [fetchRequest setPredicate:v16];
    [fetchRequest setReturnsObjectsAsFaults:0];
    managedObjectContext = [accountCopy managedObjectContext];
    v26 = 0;
    v18 = [managedObjectContext executeFetchRequest:fetchRequest error:&v26];
    v19 = v26;
    if (v19)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICFolder visibleSmartFoldersForHashtagStandardizedContent:account:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch count of smart folders for hashtag standardized content: %@", v19}];
      v20 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __69__ICFolder_visibleSmartFoldersForHashtagStandardizedContent_account___block_invoke;
      v23[3] = &unk_278197E38;
      v24 = accountCopy;
      v25 = contentCopy;
      v20 = [v18 ic_compactMap:v23];
    }
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

void *__69__ICFolder_visibleSmartFoldersForHashtagStandardizedContent_account___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 smartFolderQuery];
  v5 = [*(a1 + 32) managedObjectContext];
  v6 = [v4 tagSelectionWithManagedObjectContext:v5];

  v7 = [v6 tagIdentifiers];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ICFolder_visibleSmartFoldersForHashtagStandardizedContent_account___block_invoke_2;
  v12[3] = &unk_278197E10;
  v13 = *(a1 + 40);
  LOBYTE(v5) = [v7 ic_containsObjectPassingTest:v12];
  v8 = [v6 unresolvedTagIdentifiers];
  LOBYTE(a1) = [v8 containsObject:*(a1 + 40)];

  if ((v5 | a1))
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

+ (id)newFolderInAccount:(id)account
{
  v4 = MEMORY[0x277CCAD78];
  accountCopy = account;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [self newFolderWithIdentifier:uUIDString account:accountCopy];

  return v8;
}

+ (id)newFolderWithIdentifier:(id)identifier account:(id)account query:(id)query
{
  identifierCopy = identifier;
  accountCopy = account;
  queryCopy = query;
  if (!accountCopy)
  {
    v11 = MEMORY[0x277D36198];
    v12 = NSStringFromClass(self);
    [v11 handleFailedAssertWithCondition:"account" functionName:"+[ICFolder(Management) newFolderWithIdentifier:account:query:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no account", v12}];
  }

  managedObjectContext = [accountCopy managedObjectContext];
  v14 = [self newObjectWithIdentifier:identifierCopy context:managedObjectContext];

  persistentStore = [accountCopy persistentStore];
  [v14 assignToPersistentStore:persistentStore];

  [v14 setAccount:accountCopy];
  if (queryCopy)
  {
    [v14 setSmartFolderQuery:queryCopy];
  }

  return v14;
}

+ (id)newFolderInParentFolder:(id)folder
{
  v4 = MEMORY[0x277CCAD78];
  folderCopy = folder;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [self newFolderWithIdentifier:uUIDString parentFolder:folderCopy];

  return v8;
}

+ (id)newFolderWithIdentifier:(id)identifier parentFolder:(id)folder
{
  identifierCopy = identifier;
  folderCopy = folder;
  if (!folderCopy)
  {
    v8 = MEMORY[0x277D36198];
    v9 = NSStringFromClass(self);
    [v8 handleFailedAssertWithCondition:"parentFolder" functionName:"+[ICFolder(Management) newFolderWithIdentifier:parentFolder:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no parent folder", v9}];
  }

  account = [folderCopy account];
  v11 = [self newFolderWithIdentifier:identifierCopy account:account];

  [v11 setParent:folderCopy];
  return v11;
}

+ (void)deleteFolder:(id)folder
{
  v48 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  v5 = os_log_create("com.apple.notes", "Delete");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICFolder(Management) *)folderCopy deleteFolder:v5];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = folderCopy;
  notes = [folderCopy notes];
  v7 = [notes copy];

  v8 = [v7 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    v11 = 0x278192000uLL;
    v28 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        [*(v11 + 3584) deleteNote:v13];
        v14 = os_log_create("com.apple.notes", "Delete");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          account = [v13 account];
          trashFolder = [account trashFolder];
          identifier = [trashFolder identifier];
          identifier2 = [v13 identifier];
          account2 = [v13 account];
          identifier3 = [account2 identifier];
          *buf = 138412802;
          v42 = identifier;
          v43 = 2112;
          v44 = identifier2;
          v45 = 2112;
          v46 = identifier3;
          _os_log_debug_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEBUG, "Setting trash folder %@ to note %@ in account %@", buf, 0x20u);

          v7 = v28;
          v11 = 0x278192000;
        }

        account3 = [v13 account];
        trashFolder2 = [account3 trashFolder];
        [v13 setFolder:trashFolder2];

        date = [MEMORY[0x277CBEAA8] date];
        [v13 setFolderModificationDate:date];
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v9);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  children = [v27 children];
  v22 = [children copy];

  v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [self deleteFolder:*(*(&v32 + 1) + 8 * j)];
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v24);
  }

  [v27 markForDeletion];
  if ([v27 importedFromLegacy])
  {
    [ICLegacyTombstone addLegacyTombstoneForFolder:v27];
  }
}

+ (id)purgableFoldersFetchRequest
{
  v2 = +[ICFolder fetchRequest];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"title MATCHES (^%@|^%@).*", @"DefaultFolder", @"TrashFolder"];
  [v2 setPredicate:v3];

  return v2;
}

+ (void)purgeFolder:(id)folder
{
  folderCopy = folder;
  managedObjectContext = [folderCopy managedObjectContext];
  [managedObjectContext deleteObject:folderCopy];
}

+ (id)defaultFolderInContext:(id)context
{
  v3 = [ICAccount defaultAccountInContext:context];
  defaultFolder = [v3 defaultFolder];

  return defaultFolder;
}

+ (ICFolder)folderWithIdentifier:(id)identifier context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  identifier = [v6 predicateWithFormat:@"%K == %@", @"identifier", identifier];
  v9 = [self foldersMatchingPredicate:identifier context:contextCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)visibleFoldersInContext:(id)context
{
  contextCopy = context;
  v5 = [self predicateForVisibleFoldersInContext:contextCopy];
  v6 = [self foldersMatchingPredicate:v5 context:contextCopy];

  return v6;
}

+ (unint64_t)countOfFoldersMatchingPredicate:(id)predicate context:(id)context
{
  predicateCopy = predicate;
  v6 = MEMORY[0x277CBE428];
  contextCopy = context;
  v8 = [v6 fetchRequestWithEntityName:@"ICFolder"];
  [v8 setPredicate:predicateCopy];
  v13 = 0;
  v9 = [contextCopy countForFetchRequest:v8 error:&v13];

  v10 = v13;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICFolder(Management) *)predicateCopy countOfFoldersMatchingPredicate:v10 context:v11];
    }
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  return v9;
}

+ (id)predicateForVisibleFoldersIncludingHiddenNoteContainers:(BOOL)containers inContext:(id)context
{
  v15[1] = *MEMORY[0x277D85DE8];
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  v15[0] = predicateForVisibleObjects;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [v6 mutableCopy];

  if (!containers)
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"owner != self && isHiddenNoteContainer == NO"];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"owner == self && SUBQUERY(owner.ownerInverse, $noteContainer, $noteContainer.markedForDeletion != YES).@count > 3", v8];
    v14[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

    v11 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v10];
    [v7 addObject:v11];
  }

  v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];

  return v12;
}

+ (id)predicateForVisibleCustomFolders
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folderType == %d AND identifier != '%@*' AND identifier != '@%*'", 0, @"TrashFolder", @"DefaultFolder"];
  v3 = MEMORY[0x277CCA920];
  v4 = +[ICFolder predicateForVisibleObjects];
  v8[0] = v4;
  v8[1] = v2;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v3 andPredicateWithSubpredicates:v5];

  return v6;
}

- (NSArray)visibleNotesInFolder
{
  predicateForVisibleNotesInFolder = [(ICFolder *)self predicateForVisibleNotesInFolder];
  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v5 = [ICNote notesMatchingPredicate:predicateForVisibleNotesInFolder context:managedObjectContext];

  return v5;
}

- (id)pinnedNotesInFolder
{
  predicateForPinnedNotesInFolder = [(ICFolder *)self predicateForPinnedNotesInFolder];
  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v5 = [ICNote notesMatchingPredicate:predicateForPinnedNotesInFolder context:managedObjectContext];

  return v5;
}

- (NSArray)foldersInFolder
{
  predicateForFoldersInFolder = [(ICFolder *)self predicateForFoldersInFolder];
  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v5 = [ICFolder foldersMatchingPredicate:predicateForFoldersInFolder context:managedObjectContext];

  return v5;
}

- (id)predicateForFoldersInFolder
{
  v3 = objc_opt_class();

  return [v3 predicateForFoldersInFolder:self];
}

- (id)predicateForPinnedNotesInFolder
{
  v7[2] = *MEMORY[0x277D85DE8];
  predicateForNotesInFolder = [(ICFolder *)self predicateForNotesInFolder];
  v7[0] = predicateForNotesInFolder;
  v3 = +[ICNote predicateForPinnedNotes];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v4];

  return v5;
}

- (id)predicateForVisibleAttachmentsInFolder
{
  v9[2] = *MEMORY[0x277D85DE8];
  managedObjectContext = [(ICFolder *)self managedObjectContext];
  v4 = [(ICBaseAttachment *)ICAttachment predicateForVisibleAttachmentsInContext:managedObjectContext];
  v9[0] = v4;
  predicateForAttachmentsInFolder = [(ICFolder *)self predicateForAttachmentsInFolder];
  v9[1] = predicateForAttachmentsInFolder;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v6];

  return v7;
}

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  ICFolder.associateAppEntity(with:)(setCopy);
}

- (ICQueryObjC)smartFolderQueryObjC
{
  selfCopy = self;
  v3 = ICFolder.smartFolderQuery.getter();

  return v3;
}

- (void)setSmartFolderQueryObjC:(id)c
{
  cCopy = c;
  selfCopy = self;
  ICFolder.smartFolderQuery.setter(c);
}

+ (id)objc_smartFolderWithQuery:(id)query titleComponents:(id)components account:(id)account
{
  v7 = sub_2150A4ED0();
  swift_getObjCClassMetadata();
  queryCopy = query;
  accountCopy = account;
  v10 = static ICFolder.makeSmartFolder(with:titleComponents:in:)(queryCopy, v7, accountCopy);

  return v10;
}

+ (id)objc_smartFolderWithQuery:(id)query account:(id)account
{
  queryCopy = query;
  accountCopy = account;
  v8 = sub_2150A4EB0();
  v9 = [self objc:queryCopy smartFolderWithQuery:v8 titleComponents:accountCopy account:?];

  return v9;
}

+ (id)objc_defaultSmartFolderTitleWithComponents:(id)components
{
  v3 = sub_2150A4ED0();
  _sSo8ICFolderC11NotesSharedE23defaultSmartFolderTitle10componentsSSSaySSG_tFZ_0(v3);

  v4 = sub_2150A4A90();

  return v4;
}

+ (void)deduplicatingTitle:(uint64_t)a1 forFolder:(void *)a2 forNewFolderParent:ofAccount:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v3, v4, "Folder account mismatch %@ expects %@", v5, v6, v7, v8, v9);
}

- (void)setAccount:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 identifier];
  v6 = [a2 identifier];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Setting account (%@) on folder (%@)", &v7, 0x16u);
}

- (void)setMarkedForDeletion:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 identifier];
  v2 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v3, v4, "Trying to mark an un-deletable folder (%@) for deletion: %@", v5, v6, v7, v8, v9);
}

@end