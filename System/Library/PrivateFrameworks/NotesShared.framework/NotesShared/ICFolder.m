@interface ICFolder
+ (BOOL)isTitleValid:(id)a3 account:(id)a4 folder:(id)a5 parentFolder:(id)a6 error:(id *)a7;
+ (ICFolder)folderWithIdentifier:(id)a3 context:(id)a4;
+ (id)ancestorFolderPredicatesWithBlock:(id)a3;
+ (id)contentInfoTextWithNoteCount:(int64_t)a3 subfolderCount:(int64_t)a4;
+ (id)deduplicatingTitle:(id)a3 forFolder:(id)a4 forNewFolderParent:(id)a5 ofAccount:(id)a6;
+ (id)defaultFolderInContext:(id)a3;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)keyPathsForValuesAffectingCanBeSharedViaICloud;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newFolderInAccount:(id)a3;
+ (id)newFolderInParentFolder:(id)a3;
+ (id)newFolderWithIdentifier:(id)a3 account:(id)a4 query:(id)a5;
+ (id)newFolderWithIdentifier:(id)a3 parentFolder:(id)a4;
+ (id)newPlaceholderObjectForRecordName:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)objc_defaultSmartFolderTitleWithComponents:(id)a3;
+ (id)objc_smartFolderWithQuery:(id)a3 account:(id)a4;
+ (id)objc_smartFolderWithQuery:(id)a3 titleComponents:(id)a4 account:(id)a5;
+ (id)predicateForDeprecatedObjects;
+ (id)predicateForVisibleCustomFolders;
+ (id)predicateForVisibleFoldersIncludingHiddenNoteContainers:(BOOL)a3 inContext:(id)a4;
+ (id)predicateForVisibleObjects;
+ (id)purgableFoldersFetchRequest;
+ (id)reservedFolderTitles;
+ (id)rootSharingFolderForNote:(id)a3;
+ (id)stringByScrubbingStringForFolderName:(id)a3;
+ (id)visibleFoldersInContext:(id)a3;
+ (id)visibleSmartFoldersForHashtagStandardizedContent:(id)a3 account:(id)a4;
+ (unint64_t)countOfFoldersMatchingPredicate:(id)a3 context:(id)a4;
+ (unint64_t)maximumDepthOfFolders:(id)a3;
+ (unint64_t)maximumDistanceToLeafFolderOfFolders:(id)a3;
+ (void)deleteFolder:(id)a3;
+ (void)purgeFolder:(id)a3;
- (BOOL)canAddSubfolder;
- (BOOL)canBeSharedViaICloud;
- (BOOL)canMoveAddOrDeleteContents;
- (BOOL)containsSharedDescendantFolders:(BOOL *)a3;
- (BOOL)containsSharedNotesOrSharedDescendantFolders:(BOOL *)a3;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)a3;
- (BOOL)hasSharedContentsNotSharedViaSharedFolder:(id)a3;
- (BOOL)isAncestorOfFolder:(id)a3;
- (BOOL)isDefaultFolderForAccount;
- (BOOL)isDefaultFolderOrDescendantOfDefaultFolder;
- (BOOL)isDeletable;
- (BOOL)isDescendantOfFolder:(id)a3;
- (BOOL)isEditableSmartFolder;
- (BOOL)isInICloudAccount;
- (BOOL)isLeaf;
- (BOOL)isMovable;
- (BOOL)isRenamable;
- (BOOL)isSharedViaSharedFolder:(id)a3;
- (BOOL)isShowingDateHeaders;
- (BOOL)isSubfolderOfReadonlyFolder;
- (BOOL)isSystemFolder;
- (BOOL)isTitleValid:(id)a3 error:(id *)a4;
- (BOOL)isTrashFolder;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)mergeDataFromUserSpecificRecord:(id)a3 accountID:(id)a4;
- (BOOL)supportsDateHeaders;
- (BOOL)validate;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (BOOL)visibleChildFoldersContainsFolderWithTitle:(id)a3;
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
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3;
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
- (id)visibleChildFolderWithTitle:(id)a3;
- (id)visibleNoteContainerChildren;
- (id)visibleNoteContainerChildrenUnsorted;
- (id)visibleNotesIncludingChildFolders;
- (int64_t)compare:(id)a3;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3;
- (unint64_t)countOfVisibleNotesInFolder;
- (unint64_t)depth;
- (unint64_t)indexOfVisibleChild:(id)a3;
- (unint64_t)maximumDepthIncludingChildFolders;
- (unint64_t)maximumDistanceToLeafFolder;
- (unint64_t)visibleNoteContainerChildrenCount;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3;
- (void)awakeFromFetch;
- (void)fixBrokenReferencesWithError:(id)a3;
- (void)markForDeletion;
- (void)mergeParentFromRecord:(id)a3;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)recursivelyAddSubfoldersToArray:(id)a3;
- (void)setAccount:(id)a3;
- (void)setCustomNoteSortType:(id)a3;
- (void)setFolderType:(signed __int16)a3;
- (void)setMarkedForDeletion:(BOOL)a3;
- (void)setNeedsInitialFetchFromCloud:(BOOL)a3;
- (void)setParent:(id)a3;
- (void)setSmartFolderQueryJSON:(id)a3;
- (void)setSmartFolderQueryObjC:(id)a3;
- (void)setTitle:(id)a3;
- (void)unmarkForDeletionIncludingParentHierarchy;
- (void)updateChangeCountWithReason:(id)a3;
- (void)updateSortOrder;
@end

@implementation ICFolder

+ (id)predicateForDeprecatedObjects
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v8.receiver = a1;
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
  v8.receiver = a1;
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
    v3 = [(ICFolder *)self visibleNotesCount]== 0;
  }

  else
  {
    v3 = [(ICFolder *)self isDeprecated];
  }

  [(ICFolder *)self setIsHiddenNoteContainer:v3];
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
  v3 = [(ICFolder *)self parent];

  if (v3)
  {
    v4 = [(ICFolder *)self parent];
    v5 = [v4 isDefaultFolderOrDescendantOfDefaultFolder];

    return v5;
  }

  else
  {

    return [(ICFolder *)self isDefaultFolderForAccount];
  }
}

- (BOOL)isDefaultFolderForAccount
{
  v3 = [(ICFolder *)self account];
  v4 = [v3 standardFolderIdentifierWithPrefix:@"DefaultFolder"];

  v5 = [(ICFolder *)self identifier];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 isEqualToString:v4];
  }

  else
  {
    v7 = [v5 hasPrefix:@"DefaultFolder"];
  }

  v8 = v7;

  return v8;
}

- (unint64_t)countOfVisibleNotesInFolder
{
  v3 = [(ICFolder *)self predicateForVisibleNotesInFolder];
  v4 = [(ICFolder *)self managedObjectContext];
  v5 = [ICNote countOfNotesMatchingPredicate:v3 context:v4];

  return v5;
}

- (id)predicateForVisibleNotesInFolder
{
  v26[3] = *MEMORY[0x277D85DE8];
  if (-[ICFolder isSmartFolder](self, "isSmartFolder") && (-[ICFolder smartFolderQuery](self, "smartFolderQuery"), v3 = objc_claimAutoreleasedReturnValue(), [v3 entityName], v4 = objc_claimAutoreleasedReturnValue(), +[ICNote entity](ICNote, "entity"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "name"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v4, v3, v7))
  {
    v8 = MEMORY[0x277CCA920];
    v9 = [(ICFolder *)self smartFolderQuery];
    v10 = [v9 predicate];
    v26[0] = v10;
    v11 = [(ICFolder *)self account];
    v12 = [v11 identifier];
    v13 = [ICNote predicateForNotesInAccountWithIdentifier:v12];
    v26[1] = v13;
    v14 = +[(ICCloudSyncingObject *)ICNote];
    v26[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
    v16 = [v8 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v17 = [(ICFolder *)self folderType];
    if (v17 == 1)
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

    v21 = [(ICFolder *)self predicateForNotesInFolder];
    v22 = [(ICFolder *)self managedObjectContext];
    v23 = [ICNote predicateForVisibleNotesIncludingTrash:v17 == 1 includingSystemPaper:v19 includingMathNotes:v18 includingCallNotes:v20 inContext:v22];
    v25[1] = v23;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    v16 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v9];
  }

  return v16;
}

- (BOOL)isTrashFolder
{
  v3 = [(ICFolder *)self folderType];
  if (v3 != 1)
  {
    v4 = [(ICFolder *)self identifier];
    v5 = [v4 hasPrefix:@"TrashFolder"];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)predicateForNotesInFolder
{
  v3 = objc_opt_class();

  return [v3 predicateForNotesInFolder:self];
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(ICFolder *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (NSString)searchDomainIdentifier
{
  v2 = [(ICFolder *)self account];
  v3 = [v2 identifier];

  return v3;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  v4 = [(ICFolder *)self dateForLastTitleModification];
  [v3 setContentModificationDate:v4];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v3 = [(ICFolder *)self userActivityContentAttributeSet];
  v4 = [(ICFolder *)self localizedTitle];
  [v3 setDisplayName:v4];
  [v3 setTextContent:v4];
  [v3 setIc_searchResultType:4];
  [v3 ic_populateValuesForSpecializedFields];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNoteContainer isSharedViaICloud](self, "isSharedViaICloud")}];
  [v3 setShared:v5];

  v6 = [(ICFolder *)self account];
  if ([v6 isManaged])
  {
    v7 = &unk_282747C28;
  }

  else
  {
    v7 = &unk_282747C40;
  }

  [v3 setDataOwnerType:v7];

  if (objc_opt_respondsToSelector())
  {
    [(ICFolder *)self associateAppEntityWithSearchableItemAttributeSet:v3];
  }

  return v3;
}

- (id)searchableTextContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICFolder *)self title];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(ICFolder *)self localizedTitle];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [v3 componentsJoinedByString:@" "];

  return v6;
}

- (void)unmarkForDeletionIncludingParentHierarchy
{
  [(ICCloudSyncingObject *)self unmarkForDeletion];
  v3 = [(ICFolder *)self parent];
  [v3 unmarkForDeletionIncludingParentHierarchy];
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (!a5)
  {
    v65.receiver = self;
    v65.super_class = ICFolder;
    if (![(ICCloudSyncingObject *)&v65 mergeCloudKitRecord:v10 accountID:a4 approach:0 mergeableFieldState:a6])
    {
      goto LABEL_6;
    }

    [(ICFolder *)self unmarkForDeletionIncludingParentHierarchy];
    v14 = [v10 recordID];
    v15 = [v14 recordName];
    [(ICFolder *)self setIdentifier:v15];

    v16 = [v10 objectForKeyedSubscript:@"TitleModificationDate"];
    [(ICFolder *)self needsInitialFetchFromCloud];
    v17 = [(ICFolder *)self title];
    v18 = [v17 length];

    v19 = [(ICFolder *)self dateForLastTitleModification];
    if (v19)
    {
      v20 = [(ICFolder *)self dateForLastTitleModification];
      v21 = [v16 ic_isLaterThanDate:v20];

      v22 = v21 ^ 1;
    }

    else
    {
      v22 = 0;
    }

    v25 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
    if (v25)
    {
      v22 |= [(ICCloudSyncingObject *)self isSharedRootObject];
    }

    if (v18 && (v22 & 1) != 0)
    {
LABEL_19:
      v35 = [v10 objectForKeyedSubscript:@"ImportedFromLegacy"];

      if (v35)
      {
        v36 = [v10 objectForKeyedSubscript:@"ImportedFromLegacy"];
        -[ICFolder setImportedFromLegacy:](self, "setImportedFromLegacy:", [v36 BOOLValue]);
      }

      v37 = [(ICFolder *)self identifier];
      if ([v37 hasPrefix:@"TrashFolder"])
      {
        v38 = [(ICFolder *)self folderType];

        if (v38 != 1)
        {
          v39 = [(ICFolder *)self identifier];
          v40 = [v39 isEqualToString:@"TrashFolder"];

          if (v40)
          {
            v59 = v10;
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
            v42 = [(ICFolder *)self notes];
            v43 = [v42 copy];

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
                  v49 = [v48 account];
                  v50 = [v49 trashFolder];
                  [v48 setFolder:v50];

                  v51 = [MEMORY[0x277CBEAA8] date];
                  [v48 setFolderModificationDate:v51];

                  [v48 updateChangeCountWithReason:@"Moved to trash folder"];
                }

                v45 = [v43 countByEnumeratingWithState:&v60 objects:v66 count:16];
              }

              while (v45);
            }

            [ICFolder deleteFolder:self];
            v23 = 0;
            v10 = v59;
LABEL_44:

            goto LABEL_7;
          }

          [(ICFolder *)self setFolderType:1];
        }
      }

      else
      {
      }

      v52 = [(ICFolder *)self identifier];
      v53 = [v52 hasPrefix:@"SystemPaper"];

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
        v55 = [v10 ic_encryptedInlineableDataAssetForKeyPrefix:@"MergeableData"];
        if (v55)
        {
          [(ICFolder *)self mergeWithMergeableData:v55];
          [(ICFolder *)self saveMergeableDataIfNeeded];
        }

        v56 = [v10 encryptedValues];
        v57 = [v56 objectForKeyedSubscript:@"SmartFolderQueryJSONEncrypted"];

        v58 = [v57 ic_stringValue];
        [(ICFolder *)self setSmartFolderQueryJSON:v58];
        if (v58)
        {
          [(ICFolder *)self setFolderType:2];
        }

        [(ICFolder *)self mergeParentFromRecord:v10];

        v23 = 1;
      }

      goto LABEL_44;
    }

    [(ICFolder *)self setDateForLastTitleModification:v16];
    v26 = [v10 encryptedValues];
    v27 = [v26 objectForKeyedSubscript:@"TitleEncrypted"];

    if (v27)
    {
      v28 = [v27 ic_stringValue];
    }

    else
    {
      v29 = [v10 objectForKeyedSubscript:@"Title"];

      if (!v29)
      {
LABEL_18:
        v31 = [(ICFolder *)self title];
        v32 = [(ICFolder *)self parent];
        v33 = [(ICFolder *)self account];
        v34 = [ICFolder deduplicatingTitle:v31 forFolder:self forNewFolderParent:v32 ofAccount:v33];
        [(ICFolder *)self setTitle:v34];

        goto LABEL_19;
      }

      v28 = [v10 objectForKeyedSubscript:@"Title"];
    }

    v30 = v28;
    [(ICFolder *)self setTitle:v28];

    goto LABEL_18;
  }

  v11 = MEMORY[0x277D36198];
  v12 = [(ICFolder *)self className];
  v13 = ICStringFromSyncingApproach(a5);
  [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICFolder(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:{@"Object %@ does not support sync approach: %@", v12, v13}];

LABEL_6:
  v23 = 0;
LABEL_7:

  return v23;
}

- (void)mergeParentFromRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ParentModificationDate"];
  if (!v5 || ([(ICFolder *)self parentModificationDate], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v10 = [(ICFolder *)self parentModificationDate];

    v11 = os_log_create("com.apple.notes", "Cloud");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10)
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
    v11 = [v4 objectForKeyedSubscript:@"ParentFolder"];
    v13 = [v4 share];

    v14 = [v11 recordID];
    v15 = [v14 ic_isOwnedByCurrentUser];

    v16 = [v4 recordID];
    v17 = [ICUserSpecificRecordIDParser isUserSpecificRecordID:v16];

    if (v11)
    {
      if (v13)
      {
        v18 = v15;
      }

      else
      {
        v18 = 1;
      }

      if (v18 != 1)
      {
        goto LABEL_31;
      }

      v19 = [(ICFolder *)self account];
      v20 = [v19 identifier];

      v21 = [v11 recordID];
      v22 = [(ICFolder *)self managedObjectContext];
      v23 = v20;
      v24 = [ICFolder existingCloudObjectForRecordID:v21 accountID:v20 context:v22];

      if (!v24)
      {
        v30 = v23;
        v25 = [v11 recordID];
        v26 = [v25 recordName];

        v27 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [ICFolder(CloudKit) mergeParentFromRecord:?];
        }

        v28 = [(ICFolder *)self account];
        v24 = [ICFolder newFolderWithIdentifier:v26 account:v28];

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

    if (v13)
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

  v7 = [(ICFolder *)self parentModificationDate];
  v8 = [v5 ic_isLaterThanDate:v7];

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

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  v33.receiver = self;
  v33.super_class = ICFolder;
  v6 = [(ICCloudSyncingObject *)&v33 makeCloudKitRecordForApproach:a3 mergeableFieldState:a4];
  if ([(ICCloudSyncingObject *)self isOwnedByCurrentUser]|| ![(ICCloudSyncingObject *)self isSharedRootObject])
  {
    v7 = [(ICFolder *)self dateForLastTitleModification];

    if (v7)
    {
      v8 = [(ICFolder *)self dateForLastTitleModification];
      [v6 setObject:v8 forKeyedSubscript:@"TitleModificationDate"];
    }

    v9 = [(ICFolder *)self title];

    if (v9)
    {
      v10 = [(ICFolder *)self title];
      v11 = [v10 dataUsingEncoding:4];
      v12 = [v6 encryptedValues];
      [v12 setObject:v11 forKeyedSubscript:@"TitleEncrypted"];
    }

    v13 = [(ICFolder *)self parent];
    v14 = [v13 recordID];

    v15 = [v14 zoneID];
    if (v15 && (v16 = v15, [v14 zoneID], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "recordID"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "zoneID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "isEqual:", v19), v19, v18, v17, v16, v20))
    {
      v21 = objc_alloc(MEMORY[0x277CBC620]);
      v22 = [v21 initWithRecordID:v14 action:*MEMORY[0x277CBC070]];
      [v6 setObject:v22 forKeyedSubscript:@"ParentFolder"];
    }

    else if ([(ICCloudSyncingObject *)self isOwnedByCurrentUser])
    {
      [v6 setObject:0 forKeyedSubscript:@"ParentFolder"];
    }

    v23 = [(ICFolder *)self parentModificationDate];

    if (v23)
    {
      v24 = [(ICFolder *)self parentModificationDate];
      [v6 setObject:v24 forKeyedSubscript:@"ParentModificationDate"];
    }

    v25 = [(ICFolder *)self mergeableData];

    if (v25)
    {
      v26 = [(ICFolder *)self mergeableData];
      [v6 ic_setEncryptedInlineableDataAsset:v26 forKeyPrefix:@"MergeableData" approach:a3 withObject:self];
    }
  }

  if (!a3)
  {
    [v6 setWantsChainPCS:1];
    if ([(ICFolder *)self importedFromLegacy])
    {
      v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICFolder importedFromLegacy](self, "importedFromLegacy")}];
      [v6 setObject:v27 forKeyedSubscript:@"ImportedFromLegacy"];
    }

    v28 = [(ICFolder *)self smartFolderQueryJSON];

    if (v28)
    {
      v29 = [(ICFolder *)self smartFolderQueryJSON];
      v30 = [v29 dataUsingEncoding:4];
      v31 = [v6 encryptedValues];
      [v31 setObject:v30 forKeyedSubscript:@"SmartFolderQueryJSONEncrypted"];
    }
  }

  return v6;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = [ICAccount cloudKitAccountWithIdentifier:a4 context:a5];
  v9 = [v7 recordName];

  v10 = [v8 folderWithIdentifier:v9];

  return v10;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ICAccount cloudKitAccountWithIdentifier:v7 context:a5];
  v10 = [v8 recordID];
  v11 = [v10 recordName];
  v12 = [ICFolder newFolderWithIdentifier:v11 account:v9];

  [v12 mergeCloudKitRecord:v8 accountID:v7 approach:0];
  [v12 setServerRecord:v8];

  [v12 setInCloud:1];
  [v12 clearChangeCountWithReason:@"Created folder"];
  [v12 updateParentReferenceIfNecessary];

  return v12;
}

+ (id)newPlaceholderObjectForRecordName:(id)a3 accountID:(id)a4 context:(id)a5
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___ICFolder;
  v7 = a5;
  v8 = a4;
  v9 = objc_msgSendSuper2(&v12, sel_newPlaceholderObjectForRecordName_accountID_context_, a3, v8, v7);
  v10 = [ICAccount cloudKitAccountWithIdentifier:v8 context:v7, v12.receiver, v12.super_class];

  [v9 setAccount:v10];
  return v9;
}

- (BOOL)isInICloudAccount
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICFolder *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ICFolder_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __39__ICFolder_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  *(*(*(a1 + 40) + 8) + 24) = [v2 accountType] == 1;
}

- (void)fixBrokenReferencesWithError:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICCloudSyncingObject *)self loggingDescription];
    [(ICFolder *)self parent];
    obj = v44 = v4;
    v7 = [obj loggingDescription];
    v8 = [(ICFolder *)self notes];
    v9 = [v8 allObjects];
    v10 = [v9 valueForKey:@"loggingDescription"];
    v11 = [(ICFolder *)self children];
    v12 = [v11 allObjects];
    v13 = [v12 valueForKey:@"loggingDescription"];
    *buf = 138413314;
    *v57 = v6;
    *&v57[8] = 2112;
    *&v57[10] = v7;
    v58 = 2112;
    v59 = v10;
    v60 = 2112;
    v61 = v13;
    v62 = 2112;
    v63 = v44;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Fixing broken references for folder: %@\n\tParent: %@\n\tNotes: %@\n\tChildren: %@\n\tError: %@", buf, 0x34u);

    v4 = v44;
  }

  if (![(ICFolder *)self markedForDeletion])
  {
    v18 = [(ICCloudSyncingObject *)self serverShare];
    if (v18)
    {
    }

    else
    {
      v39 = [(ICCloudSyncingObject *)self serverRecord];
      v40 = [v39 share];

      if (!v40)
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
      v15 = [(ICFolder *)self visibleNotesCount];
      v16 = [(ICFolder *)self identifier];
      *buf = 67109378;
      *v57 = v15;
      *&v57[4] = 2112;
      *&v57[6] = v16;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Found a deleted folder with %d undeleted notes: %@", buf, 0x12u);
    }

    v17 = v14;
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
    v17 = [(ICFolder *)self children];
    v19 = [v17 countByEnumeratingWithState:&v50 objects:v55 count:16];
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
            objc_enumerationMutation(v17);
          }

          if (([*(*(&v50 + 1) + 8 * i) markedForDeletion] & 1) == 0)
          {
            v14 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [(ICFolder *)self identifier];
              *buf = 138412290;
              *v57 = v41;
              _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Found a deleted folder with at least one undeleted child folder: %@", buf, 0xCu);
            }

            goto LABEL_36;
          }
        }

        v20 = [v17 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v23 = [(ICFolder *)self notes];
    v24 = [v23 count];

    if (v24)
    {
      v25 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(ICFolder *)self identifier];
        *buf = 138412290;
        *v57 = v26;
        _os_log_impl(&dword_214D51000, v25, OS_LOG_TYPE_DEFAULT, "Broken references because we still have notes in folder (%@)", buf, 0xCu);
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v27 = self;
      v28 = [(ICFolder *)self notes];
      v29 = [v28 copy];

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

            v36 = [(ICFolder *)v27 account];
            v37 = [v36 trashFolder];
            [v34 setFolder:v37];

            v38 = [MEMORY[0x277CBEAA8] date];
            [v34 setFolderModificationDate:v38];

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
      [(ICCloudSyncingObject *)self findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:v4];
      v42 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        *buf = 138412290;
        *v57 = v43;
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

  v3 = [(ICFolder *)self title];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v11.receiver = self;
  v11.super_class = ICFolder;
  v3 = [(ICCloudSyncingObject *)&v11 objectsToBeDeletedBeforeThisObject];
  v4 = [v3 mutableCopy];

  v5 = [(ICFolder *)self notes];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = [(ICFolder *)self children];
  v8 = [v7 allObjects];
  [v4 addObjectsFromArray:v8];

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
  v3 = [(ICFolder *)self children];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v17 + 1) + 8 * v7);
      if ([v8 hasSuccessfullyPushedLatestVersionToCloud] & 1) == 0 && (objc_msgSend(v8, "isInCloud"))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
    v3 = [(ICFolder *)self notes];
    v9 = [v3 countByEnumeratingWithState:&v13 objects:v22 count:16];
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
        objc_enumerationMutation(v3);
      }

      if (![*(*(&v13 + 1) + 8 * v12) hasSuccessfullyPushedLatestVersionToCloud])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v3 countByEnumeratingWithState:&v13 objects:v22 count:16];
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
  v3 = [(ICNoteContainer *)self isSharedViaICloud];
  if (v3)
  {
    LOBYTE(v3) = ![(ICCloudSyncingObject *)self isOwnedByCurrentUser];
  }

  return v3;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = ICFolder;
  v4 = [(ICCloudSyncingObject *)&v15 makeUserSpecificCloudKitRecordForApproach:a3];
  v5 = [(ICFolder *)self title];

  if (v5)
  {
    v6 = [(ICFolder *)self title];
    v7 = [v6 dataUsingEncoding:4];
    v8 = [v4 encryptedValues];
    [v8 setObject:v7 forKeyedSubscript:@"TitleEncrypted"];
  }

  v9 = [(ICFolder *)self parent];
  v10 = [v9 recordID];

  if (v10 && [v10 ic_isOwnedByCurrentUser])
  {
    v11 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v10 action:1];
    [v4 setObject:v11 forKeyedSubscript:@"ParentFolder"];
  }

  else
  {
    [v4 setObject:0 forKeyedSubscript:@"ParentFolder"];
  }

  v12 = [(ICFolder *)self parentModificationDate];

  if (v12)
  {
    v13 = [(ICFolder *)self parentModificationDate];
    [v4 setObject:v13 forKeyedSubscript:@"ParentModificationDate"];
  }

  return v4;
}

- (BOOL)mergeDataFromUserSpecificRecord:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = ICFolder;
  v7 = [(ICCloudSyncingObject *)&v12 mergeDataFromUserSpecificRecord:v6 accountID:a4];
  if (v7)
  {
    v8 = [v6 encryptedValues];
    v9 = [v8 objectForKeyedSubscript:@"TitleEncrypted"];

    if (v9)
    {
      v10 = [v9 ic_stringValue];
      [(ICFolder *)self setTitle:v10];
    }

    [(ICFolder *)self mergeParentFromRecord:v6];
  }

  return v7;
}

- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"ParentFolder"];

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

+ (id)deduplicatingTitle:(id)a3 forFolder:(id)a4 forNewFolderParent:(id)a5 ofAccount:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v10 && !v11 && !v12)
  {
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICFolder deduplicatingTitle:v13 forFolder:? forNewFolderParent:? ofAccount:?];
    }

    v14 = 0;
    goto LABEL_30;
  }

  if (v12)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (v13)
    {
      v15 = [v11 account];

      if (v15 != v13)
      {
        v16 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ICFolder deduplicatingTitle:v13 forFolder:v11 forNewFolderParent:? ofAccount:?];
        }
      }
    }

    goto LABEL_18;
  }

  if (v11)
  {
    v13 = [v11 account];
    goto LABEL_12;
  }

  v13 = [v10 account];
LABEL_18:
  v17 = [v13 visibleFoldersWithParent:v11];
  v18 = [v17 mutableCopy];

  if (v10)
  {
    [v18 removeObject:v10];
  }

  v28 = v18;
  v19 = [v18 valueForKey:@"title"];
  v20 = [v13 reservedAccountFolderTitles];
  v21 = [v19 setByAddingObjectsFromSet:v20];

  v22 = v9;
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

+ (id)stringByScrubbingStringForFolderName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v5 = [v3 rangeOfCharacterFromSet:v4];

  v6 = v3;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v8 = [v3 componentsSeparatedByCharactersInSet:v7];

    v6 = [v8 componentsJoinedByString:@" "];
  }

  if ([v6 length] >= 0x81)
  {
    v9 = [v6 ic_substringToIndex:128];

    v6 = v9;
  }

  return v6;
}

+ (id)ancestorFolderPredicatesWithBlock:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  if (+[ICFolder folderDepthLimit])
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = v6;
      do
      {
        [v7 addObject:@"parent"];
        --v8;
      }

      while (v8);
      v9 = [v7 componentsJoinedByString:@"."];
      v10 = v3[2](v3, v9);
      [v4 addObject:v10];

      ++v5;
      ++v6;
    }

    while (v5 < +[ICFolder folderDepthLimit]);
  }

  return v4;
}

- (id)cacheKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ICFolder *)self account];
  v5 = [v4 identifier];
  v6 = [(ICFolder *)self identifier];
  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

  return v7;
}

- (void)setCustomNoteSortType:(id)a3
{
  v4 = [a3 valueRepresentation];
  [(ICFolder *)self setCustomNoteSortTypeValue:v4];

  v5 = [MEMORY[0x277CBEAA8] date];
  [(ICFolder *)self setCustomNoteSortTypeModificationDate:v5];
}

- (id)customNoteSortType
{
  if ([(ICFolder *)self supportsCustomNoteSortType])
  {
    v3 = MEMORY[0x277D361F0];
    v4 = [(ICFolder *)self customNoteSortTypeValue];
    v5 = [v3 folderNoteSortTypeFromValue:v4];
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
  v3 = [(ICCloudSyncingObject *)self serverShare];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(ICNoteContainer *)self isSharedReadOnly];
  }

  return v4;
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
  v2 = [(ICFolder *)self visibleNoteContainerChildren];
  v3 = [v2 count] == 0;

  return v3;
}

- (unint64_t)depth
{
  v2 = [(ICFolder *)self parent];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
    do
    {
      ++v3;
      v2 = [v4 parent];

      objc_opt_class();
      v4 = v2;
    }

    while ((objc_opt_isKindOfClass() & 1) != 0);
  }

  return v3;
}

+ (unint64_t)maximumDepthOfFolders:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) maximumDepthIncludingChildFolders];
        if (v6 <= v9)
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v4 = [(ICFolder *)self visibleSubFolders];
    v5 = [ICFolder maximumDepthOfFolders:v4];

    return v5;
  }
}

- (unint64_t)maximumDistanceToLeafFolder
{
  if ([(ICFolder *)self isLeaf])
  {
    return 0;
  }

  v4 = [(ICFolder *)self maximumDepthIncludingChildFolders];
  return v4 - [(ICFolder *)self depth];
}

+ (unint64_t)maximumDistanceToLeafFolderOfFolders:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) maximumDistanceToLeafFolder];
        if (v6 <= v9)
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDescendantOfFolder:(id)a3
{
  v4 = a3;
  if (v4 && ([(ICFolder *)self parent], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    do
    {
      v7 = [v6 identifier];
      v8 = [v4 identifier];
      v9 = [v7 isEqualToString:v8];

      if (v9)
      {
        break;
      }

      v10 = [v6 parent];

      v6 = v10;
    }

    while (v10);
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
  v4 = [(ICFolder *)self notes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) participants];
        v10 = [v9 allObjects];
        [v3 addObjectsFromArray:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isMovable
{
  v3 = [(ICFolder *)self account];
  v4 = [v3 defaultFolder];
  if (v4 == self)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v5 = [(ICFolder *)self account];
    v6 = [v5 trashFolder];
    if (v6 == self)
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
  v3 = [(ICFolder *)self canMoveAddOrDeleteContents];
  if (v3)
  {
    if ([(ICFolder *)self isDefaultFolderForAccount]|| [(ICFolder *)self isTrashFolder])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(ICFolder *)self isSmartFolder];
    }
  }

  return v3;
}

- (id)visibleNoteContainerChildrenUnsorted
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(ICFolder *)self children];
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
        if (([v9 markedForDeletion] & 1) == 0 && (objc_msgSend(v9, "isUnsupported") & 1) == 0 && (objc_msgSend(v9, "isHiddenNoteContainer") & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)visibleNoteContainerChildren
{
  v2 = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  return v3;
}

- (unint64_t)visibleNoteContainerChildrenCount
{
  v2 = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)indexOfVisibleChild:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteContainer *)self subFolderIdentifiersOrderedSet];
  v6 = [v4 identifier];
  v7 = [v5 indexOfObject:v6];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ICFolder *)self visibleSubFolders];
    v7 = [v8 indexOfObject:v4];
  }

  return v7;
}

- (int64_t)compare:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

    v14 = [(ICFolder *)self sortOrder];
    if (v14 != [v5 sortOrder])
    {
      v25 = [(ICFolder *)self sortOrder];
      if (v25 > [v5 sortOrder])
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }

      goto LABEL_57;
    }

    v15 = [(ICFolder *)self parent];
    v16 = [v5 parent];

    if (v15 != v16)
    {
      v17 = self;
      v18 = v5;
      v19 = [(ICFolder *)v17 depth];
      v20 = [v18 depth];
      v21 = v20;
      v22 = v17;
      if (v19 <= v20)
      {
        v24 = v18;
        if (v20 > v19)
        {
          v24 = v18;
          do
          {
            v27 = v24;
            v24 = [v24 parent];

            --v21;
          }

          while (v21 > v19);
          v22 = v17;
        }
      }

      else
      {
        do
        {
          v23 = v22;
          v22 = [v22 parent];

          --v19;
        }

        while (v19 > v21);
        v24 = v18;
      }

      v28 = [v22 parent];
      v29 = [v24 parent];

      if (v28 == v29)
      {
        v30 = v22;
        v31 = v24;
      }

      else
      {
        do
        {
          v30 = [v22 parent];

          v31 = [v24 parent];

          v32 = [v30 parent];
          v33 = [v31 parent];

          v24 = v31;
          v22 = v30;
        }

        while (v32 != v33);
      }

      if ([v30 isEqual:v31])
      {
        v34 = [(ICFolder *)v17 depth];
        if (v34 < [v18 depth])
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
        v6 = [v30 compare:v31];
      }

      goto LABEL_57;
    }

    v26 = [(ICFolder *)self parent];
    if (v26)
    {
      [(ICFolder *)self parent];
    }

    else
    {
      [(ICFolder *)self account];
    }
    v35 = ;
    v36 = [v35 subFolderIdentifiersOrderedSet];

    if (v36 && [v36 count])
    {
      v37 = [(ICFolder *)self identifier];
      v38 = [v36 indexOfObject:v37];

      v39 = [v5 identifier];
      v40 = [v36 indexOfObject:v39];

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

    v42 = [(ICFolder *)self localizedTitle];
    v43 = [v5 localizedTitle];
    v6 = [v42 localizedStandardCompare:v43];

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

- (void)setNeedsInitialFetchFromCloud:(BOOL)a3
{
  v3 = a3;
  if ([(ICFolder *)self needsInitialFetchFromCloud]!= a3)
  {
    v5 = [(ICFolder *)self account];
    [v5 willChangeValueForKey:@"visibleFolders"];

    v6 = [(ICFolder *)self account];
    [v6 willChangeValueForKey:@"visibleNoteContainers"];

    v9.receiver = self;
    v9.super_class = ICFolder;
    [(ICCloudSyncingObject *)&v9 setNeedsInitialFetchFromCloud:v3];
    v7 = [(ICFolder *)self account];
    [v7 didChangeValueForKey:@"visibleFolders"];

    v8 = [(ICFolder *)self account];
    [v8 didChangeValueForKey:@"visibleNoteContainers"];
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(ICFolder *)self title];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(ICFolder *)self willChangeValueForKey:@"title"];
    [(ICFolder *)self setPrimitiveValue:v6 forKey:@"title"];
    [(ICFolder *)self didChangeValueForKey:@"title"];
  }
}

- (void)setParent:(id)a3
{
  v13 = a3;
  v4 = [(ICFolder *)self parent];

  v5 = v13;
  if (v4 != v13)
  {
    if (v13 == self)
    {
      v6 = MEMORY[0x277D36198];
      v7 = @"Cannot set a folder's parent to be itself";
    }

    else
    {
      if (![(ICFolder *)v13 isDescendantOfFolder:self])
      {
        v8 = [(ICFolder *)self parent];
        v9 = [(ICFolder *)self account];
        [v9 willChangeValueForKey:@"visibleNoteContainerChildren"];

        [(ICFolder *)self willChangeValueForKey:@"parent"];
        [(ICFolder *)self willChangeValueForKey:@"parentCloudObject"];
        [v8 willChangeValueForKey:@"children"];
        [(ICFolder *)v13 willChangeValueForKey:@"children"];
        [(ICFolder *)self setPrimitiveValue:v13 forKey:@"parent"];
        v10 = [v8 mutableSetValueForKey:@"children"];
        [v10 removeObject:self];

        v11 = [(ICFolder *)v13 mutableSetValueForKey:@"children"];
        [v11 addObject:self];

        [v8 didChangeValueForKey:@"children"];
        [(ICFolder *)v13 didChangeValueForKey:@"children"];
        [(ICFolder *)self didChangeValueForKey:@"parent"];
        [(ICFolder *)self didChangeValueForKey:@"parentCloudObject"];
        v12 = [(ICFolder *)self account];
        [v12 didChangeValueForKey:@"visibleNoteContainerChildren"];

        [(ICFolder *)self updateSortOrder];
        [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
        [v8 markShareDirtyIfNeededWithReason:@"Reparented folder"];
        [(ICCloudSyncingObject *)v13 markShareDirtyIfNeededWithReason:@"Reparented folder"];

        goto LABEL_8;
      }

      v6 = MEMORY[0x277D36198];
      v7 = @"Cannot set a folder's parent to be its descendant";
    }

    [v6 handleFailedAssertWithCondition:"NO" functionName:"-[ICFolder setParent:]" simulateCrash:1 showAlert:1 alertMessage:@"An issue occured when moving a folder. Do you want to file a radar?" format:v7];
LABEL_8:
    v5 = v13;
  }
}

- (BOOL)isAncestorOfFolder:(id)a3
{
  v4 = a3;
  v5 = [(ICFolder *)self account];
  v6 = [v4 account];

  if (v5 == v6)
  {
    v8 = [v4 parent];
    v9 = v8;
    if (v8)
    {
      v7 = v8 == self || [(ICFolder *)self isAncestorOfFolder:v8];
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
  v2 = [(ICCloudSyncingObject *)self ancestorCloudObjects];
  v3 = [v2 ic_compactMap:&__block_literal_global_102];

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

- (void)setAccount:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICFolder *)self account];
  if (([v5 isEqual:v4] & 1) == 0)
  {
    [(ICFolder *)self willChangeValueForKey:@"account"];
    [(ICFolder *)self setPrimitiveValue:v4 forKey:@"account"];
    v6 = [v5 mutableSetValueForKey:@"folders"];
    [v6 removeObject:self];

    v7 = [v4 mutableSetValueForKey:@"folders"];
    [v7 addObject:self];

    [(ICFolder *)self didChangeValueForKey:@"account"];
    [(ICFolder *)self setOwner:v4];
    v8 = [v4 accountNameForAccountListSorting];
    [(ICFolder *)self setAccountNameForAccountListSorting:v8];

    [(ICFolder *)self updateSortOrder];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(ICFolder *)self children];
    v10 = [v9 copy];

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

          [*(*(&v26 + 1) + 8 * v14++) setAccount:v4];
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
    v15 = [(ICFolder *)self notes];
    v16 = [v15 copy];

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

          [*(*(&v22 + 1) + 8 * v20++) setAccount:v4];
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }

    v21 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(ICFolder *)v4 setAccount:v21];
    }
  }
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3
{
  if ([(ICCloudSyncingObject *)self isUnsupported]|| [(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {

    return [(ICFolder *)self minimumSupportedNotesVersion];
  }

  else
  {
    if ([(ICFolder *)self isSmartFolder])
    {
      v6 = [(ICFolder *)self smartFolderQuery];
      v7 = [v6 minimumSupportedVersion];
    }

    else if ([(ICCloudSyncingObject *)self isSharedRootObject])
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    v8.receiver = self;
    v8.super_class = ICFolder;
    result = [(ICCloudSyncingObject *)&v8 intrinsicNotesVersionForScenario:a3];
    if (v7 > result)
    {
      return v7;
    }
  }

  return result;
}

+ (id)contentInfoTextWithNoteCount:(int64_t)a3 subfolderCount:(int64_t)a4
{
  v6 = [MEMORY[0x277CBEB18] array];
  if (a4)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = __ICLocalizedFrameworkString_impl(@"%lu Folders", @"%lu Folders", 0, 1);
    v9 = [v7 localizedStringWithFormat:v8, a4];

    [v6 addObject:v9];
  }

  if (a3)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = __ICLocalizedFrameworkString_impl(@"%lu Notes", @"%lu Notes", 0, 1);
    v12 = [v10 localizedStringWithFormat:v11, a3];

    [v6 addObject:v12];
  }

  if ([v6 count])
  {
    v13 = [v6 componentsJoinedByString:@" · "];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)markForDeletion
{
  v1 = [a1 serverShare];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v2, v3, "A shared folder is deleted but may have not been unshared yet: %@, share: %@", v4, v5, v6, v7, v8);
}

- (void)setMarkedForDeletion:(BOOL)a3
{
  v3 = a3;
  if (a3 && ![(ICFolder *)self isDeletable])
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
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(ICFolder *)self setPrimitiveValue:v5 forKey:@"markedForDeletion"];

    [(ICFolder *)self didChangeValueForKey:@"markedForDeletion"];
    v7 = [(ICFolder *)self account];
    [v7 setMarkedForDeletion:0];
  }
}

- (void)updateChangeCountWithReason:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICFolder;
  [(ICCloudSyncingObject *)&v11 updateChangeCountWithReason:v4];
  v5 = [(ICFolder *)self changedValues];
  v6 = NSStringFromSelector(sel_title);
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {

LABEL_4:
    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:v4];
    goto LABEL_5;
  }

  v8 = [(ICFolder *)self changedValues];
  v9 = NSStringFromSelector(sel_parent);
  v10 = [v8 objectForKeyedSubscript:v9];

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

  v4 = [(ICFolder *)self customNoteSortType];
  v3 = [v4 resolvedCustomSortTypeOrder] != 3;

  return v3;
}

- (BOOL)isShowingDateHeaders
{
  LODWORD(v3) = [(ICFolder *)self supportsDateHeaders];
  if (v3)
  {
    v3 = [(ICFolder *)self dateHeadersType];
    if (v3)
    {
      LOBYTE(v3) = v3 == 2;
    }

    else
    {
      LOBYTE(v3) = [MEMORY[0x277D361C8] defaultDateHeadersType] == 2;
    }
  }

  return v3;
}

- (BOOL)validateForInsert:(id *)a3
{
  v6.receiver = self;
  v6.super_class = ICFolder;
  v4 = [(ICFolder *)&v6 validateForInsert:a3];
  if (v4)
  {
    LOBYTE(v4) = [(ICFolder *)self validate];
  }

  return v4;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v6.receiver = self;
  v6.super_class = ICFolder;
  v4 = [(ICFolder *)&v6 validateForUpdate:a3];
  if (v4)
  {
    LOBYTE(v4) = [(ICFolder *)self validate];
  }

  return v4;
}

- (BOOL)validate
{
  v3 = [(ICFolder *)self depth];
  if (v3 > +[ICFolder folderDepthLimit])
  {
    v4 = [(ICFolder *)self parent];
    v5 = [v4 parent];
    [(ICFolder *)self setParent:v5];
  }

  v6 = [(ICFolder *)self title];
  if (!v6 || (v7 = v6, -[ICFolder title](self, "title"), v8 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "stringByTrimmingCharactersInSet:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v9, v8, v7, !v11))
  {
    v12 = objc_opt_class();
    v13 = [objc_opt_class() localizedNewFolderName];
    v14 = [(ICFolder *)self parent];
    v15 = [(ICFolder *)self account];
    v16 = [v12 deduplicatingTitle:v13 forFolder:self forNewFolderParent:v14 ofAccount:v15];
    [(ICFolder *)self setTitle:v16];
  }

  return 1;
}

- (BOOL)isTitleValid:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ICFolder *)self account];
  v8 = [(ICFolder *)self parent];
  LOBYTE(a4) = [ICFolder isTitleValid:v6 account:v7 folder:self parentFolder:v8 error:a4];

  return a4;
}

+ (BOOL)isTitleValid:(id)a3 account:(id)a4 folder:(id)a5 parentFolder:(id)a6 error:(id *)a7
{
  v35[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = &stru_2827172C0;
  }

  v16 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v17 = [(__CFString *)v15 stringByTrimmingCharactersInSet:v16];

  if (![v17 length])
  {
    if (a7)
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
    if (a7)
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
        *a7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:1024 userInfo:v32];

        v22 = 0;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v23 = [v12 visibleFoldersWithParent:v14];
  v24 = [v23 mutableCopy];

  if (v13)
  {
    [v24 removeObject:v13];
  }

  v25 = [v24 valueForKey:@"title"];
  v26 = [v25 mutableCopy];

  v27 = +[ICFolder reservedFolderTitles];
  [v26 unionSet:v27];

  v28 = [v12 reservedAccountFolderTitles];
  [v26 unionSet:v28];

  v29 = [v26 containsObject:v17];
  v30 = v29;
  v21 = 0;
  v18 = 0;
  if (a7 && v29)
  {
    v18 = __ICLocalizedFrameworkString_impl(@"Name Taken", @"Name Taken", 0, 1);
    v21 = __ICLocalizedFrameworkString_impl(@"Please choose a different name.", @"Please choose a different name.", 0, 1);
  }

  v22 = v30 ^ 1;

  if (a7)
  {
    goto LABEL_17;
  }

LABEL_20:

  return v22;
}

- (BOOL)visibleChildFoldersContainsFolderWithTitle:(id)a3
{
  v4 = a3;
  v5 = [(ICFolder *)self account];
  v6 = [v5 visibleFoldersWithParent:self];

  v7 = [v6 valueForKey:@"title"];
  v8 = [v7 containsObject:v4];

  return v8;
}

- (id)visibleChildFolderWithTitle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICFolder *)self account];
  v6 = [v5 visibleFoldersWithParent:self];

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
        v11 = [v10 title];
        v12 = [v11 isEqualToString:v4];

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
  v2 = [(ICFolder *)self account];
  v3 = [v2 localizedName];

  return v3;
}

- (id)visibleNotesIncludingChildFolders
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(ICFolder *)self visibleNotes];
  v5 = [v3 arrayWithArray:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(ICFolder *)self children];
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

        v11 = [*(*(&v14 + 1) + 8 * i) visibleNotesIncludingChildFolders];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)recursiveVisibleSubfolders
{
  v3 = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v4 = [v3 count];

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

- (void)recursivelyAddSubfoldersToArray:(id)a3
{
  v4 = a3;
  v5 = [(ICFolder *)self visibleNoteContainerChildrenUnsorted];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICFolder_recursivelyAddSubfoldersToArray___block_invoke;
  v7[3] = &unk_278197D70;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
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

  v5 = [(ICFolder *)self title];
  v6 = v5;
  v7 = &stru_2827172C0;
  if (v5)
  {
    v7 = v5;
  }

  v4 = v7;

LABEL_9:

  return v4;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICFolder;
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICFolder *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__ICFolder_ic_loggingValues__block_invoke;
  v9[3] = &unk_278194AD8;
  v6 = v4;
  v10 = v6;
  v11 = self;
  [v5 performBlockAndWait:v9];

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

- (BOOL)containsSharedDescendantFolders:(BOOL *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(ICFolder *)self recursiveVisibleSubfolders];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICFolder_containsSharedDescendantFolders___block_invoke;
  v7[3] = &unk_278197D98;
  v7[4] = &v8;
  v7[5] = &v12;
  v7[6] = a3;
  [v4 enumerateObjectsUsingBlock:v7];
  if (a3)
  {
    *a3 = *(v13 + 24);
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

- (BOOL)containsSharedNotesOrSharedDescendantFolders:(BOOL *)a3
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
    if (!a3)
    {
      goto LABEL_6;
    }

    if (*(v11 + 24) != 1)
    {
LABEL_5:
      *a3 = *(v11 + 24);
      goto LABEL_6;
    }
  }

  v6 = [(ICFolder *)self visibleNotesIncludingChildFolders];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__ICFolder_containsSharedNotesOrSharedDescendantFolders___block_invoke;
  v9[3] = &unk_278197DC0;
  v9[4] = &v14;
  v9[5] = &v10;
  v9[6] = a3;
  [v6 enumerateObjectsUsingBlock:v9];

  if (a3)
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
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(ICCloudSyncingObject *)self isSharedRootObject])
  {
    [v3 addObject:self];
  }

  v4 = [(ICFolder *)self recursiveVisibleSubfolders];
  v5 = [v4 ic_objectsPassingTest:&__block_literal_global_183];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)rootSharedNotesIncludingChildFolders
{
  v2 = [(ICFolder *)self visibleNotesIncludingChildFolders];
  v3 = [v2 ic_objectsPassingTest:&__block_literal_global_186];

  return v3;
}

- (id)rootSharingFolder
{
  if ([(ICNoteContainer *)self isSharedViaICloud])
  {
    v3 = self;
    if (v3)
    {
      do
      {
        if ([(ICCloudSyncingObject *)v3 isSharedRootObject])
        {
          break;
        }

        v4 = [(ICFolder *)v3 parent];

        v3 = v4;
      }

      while (v4);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)rootSharingFolderForNote:(id)a3
{
  v3 = [a3 folder];
  v4 = [v3 rootSharingFolder];

  return v4;
}

- (BOOL)isSharedViaSharedFolder:(id)a3
{
  v4 = a3;
  if (-[ICNoteContainer isSharedViaICloud](self, "isSharedViaICloud") && [v4 isSharedViaICloud])
  {
    v5 = [(ICFolder *)self rootSharingFolder];
    v6 = [v5 identifier];
    v7 = [v4 identifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v4 isDescendantOfFolder:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)hasSharedContentsNotSharedViaSharedFolder:(id)a3
{
  v4 = a3;
  if (-[ICNoteContainer isSharedViaICloud](self, "isSharedViaICloud") && !-[ICFolder isSharedViaSharedFolder:](self, "isSharedViaSharedFolder:", v4) || (-[ICFolder rootSharedNotesIncludingChildFolders](self, "rootSharedNotesIncludingChildFolders"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v6))
  {
    v7 = 1;
  }

  else
  {
    v8 = [(ICFolder *)self rootSharedFoldersInDescendantsIncludingSelf];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__ICFolder_hasSharedContentsNotSharedViaSharedFolder___block_invoke;
    v10[3] = &unk_278197DE8;
    v11 = v4;
    v7 = [v8 ic_containsObjectPassingTest:v10];
  }

  return v7;
}

- (id)childCloudObjects
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICFolder *)self notes];
  v5 = [v4 allObjects];
  [v3 addObjectsFromArray:v5];

  v6 = [(ICFolder *)self children];
  v7 = [v6 allObjects];
  [v3 addObjectsFromArray:v7];

  return v3;
}

- (id)shareType
{
  v2 = objc_opt_class();

  return [v2 shareType];
}

+ (id)keyPathsForValuesAffectingCanBeSharedViaICloud
{
  v5.receiver = a1;
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
  v3 = [(ICFolder *)self isModernCustomFolder];
  if (v3)
  {
    if ([(ICFolder *)self isSmartFolder])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5.receiver = self;
      v5.super_class = ICFolder;
      LOBYTE(v3) = [(ICNoteContainer *)&v5 canBeSharedViaICloud];
    }
  }

  return v3;
}

- (void)setFolderType:(signed __int16)a3
{
  v3 = a3;
  if ([(ICFolder *)self folderType]!= a3)
  {
    if ((v3 & 0xFFFFFFFE) == 2 && ([(ICFolder *)self isDefaultFolderForAccount]|| [(ICFolder *)self isTrashFolder]))
    {
      v5 = MEMORY[0x277D36198];

      [v5 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICFolder setFolderType:]" simulateCrash:1 showAlert:1 format:@"Attempting to set the default or trash folder as a smart folder"];
    }

    else
    {
      v6 = [(ICCloudSyncingObject *)self intrinsicNotesVersion];
      [(ICFolder *)self willChangeValueForKey:@"folderType"];
      v7 = [MEMORY[0x277CCABB0] numberWithShort:v3];
      [(ICFolder *)self setPrimitiveValue:v7 forKey:@"folderType"];

      [(ICFolder *)self didChangeValueForKey:@"folderType"];
      if ([(ICCloudSyncingObject *)self intrinsicNotesVersion]!= v6)
      {
        [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
      }

      if (v3 == 2)
      {
        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        v8 = [(ICFolder *)self account];
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{self, @"ICAccountDidAddSmartFolderNotificationFolderKey", 0}];
        [v10 postNotificationName:@"ICSmartFolderAddedNotification" object:v8 userInfo:v9];
      }
    }
  }
}

- (void)setSmartFolderQueryJSON:(id)a3
{
  v6 = a3;
  v4 = [(ICFolder *)self smartFolderQueryJSON];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(ICFolder *)self willChangeValueForKey:@"smartFolderQueryJSON"];
    [(ICFolder *)self setPrimitiveValue:v6 forKey:@"smartFolderQueryJSON"];
    [(ICFolder *)self didChangeValueForKey:@"smartFolderQueryJSON"];
    if (v6)
    {
      [(ICFolder *)self setFolderType:2];
    }

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (BOOL)isEditableSmartFolder
{
  v3 = [(ICFolder *)self isSmartFolder];
  if (v3)
  {
    v4 = [(ICFolder *)self smartFolderQuery];
    v5 = [v4 canBeEdited];

    LOBYTE(v3) = v5;
  }

  return v3;
}

+ (id)visibleSmartFoldersForHashtagStandardizedContent:(id)a3 account:(id)a4
{
  v27[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [a1 fetchRequest];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folderType == %d", 2];
    v10 = MEMORY[0x277CCAC30];
    v11 = [v7 identifier];
    v12 = [v10 predicateWithFormat:@"account.identifier == %@", v11];

    v13 = [a1 predicateForVisibleObjects];
    v14 = MEMORY[0x277CCA920];
    v22 = v9;
    v27[0] = v9;
    v27[1] = v12;
    v27[2] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v16 = [v14 andPredicateWithSubpredicates:v15];

    [v8 setPredicate:v16];
    [v8 setReturnsObjectsAsFaults:0];
    v17 = [v7 managedObjectContext];
    v26 = 0;
    v18 = [v17 executeFetchRequest:v8 error:&v26];
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
      v24 = v7;
      v25 = v6;
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

+ (id)newFolderInAccount:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [a1 newFolderWithIdentifier:v7 account:v5];

  return v8;
}

+ (id)newFolderWithIdentifier:(id)a3 account:(id)a4 query:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v11 = MEMORY[0x277D36198];
    v12 = NSStringFromClass(a1);
    [v11 handleFailedAssertWithCondition:"account" functionName:"+[ICFolder(Management) newFolderWithIdentifier:account:query:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no account", v12}];
  }

  v13 = [v9 managedObjectContext];
  v14 = [a1 newObjectWithIdentifier:v8 context:v13];

  v15 = [v9 persistentStore];
  [v14 assignToPersistentStore:v15];

  [v14 setAccount:v9];
  if (v10)
  {
    [v14 setSmartFolderQuery:v10];
  }

  return v14;
}

+ (id)newFolderInParentFolder:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [a1 newFolderWithIdentifier:v7 parentFolder:v5];

  return v8;
}

+ (id)newFolderWithIdentifier:(id)a3 parentFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = MEMORY[0x277D36198];
    v9 = NSStringFromClass(a1);
    [v8 handleFailedAssertWithCondition:"parentFolder" functionName:"+[ICFolder(Management) newFolderWithIdentifier:parentFolder:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no parent folder", v9}];
  }

  v10 = [v7 account];
  v11 = [a1 newFolderWithIdentifier:v6 account:v10];

  [v11 setParent:v7];
  return v11;
}

+ (void)deleteFolder:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Delete");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICFolder(Management) *)v4 deleteFolder:v5];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = v4;
  v6 = [v4 notes];
  v7 = [v6 copy];

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
          v31 = [v13 account];
          v30 = [v31 trashFolder];
          v29 = [v30 identifier];
          v18 = [v13 identifier];
          v19 = [v13 account];
          v20 = [v19 identifier];
          *buf = 138412802;
          v42 = v29;
          v43 = 2112;
          v44 = v18;
          v45 = 2112;
          v46 = v20;
          _os_log_debug_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEBUG, "Setting trash folder %@ to note %@ in account %@", buf, 0x20u);

          v7 = v28;
          v11 = 0x278192000;
        }

        v15 = [v13 account];
        v16 = [v15 trashFolder];
        [v13 setFolder:v16];

        v17 = [MEMORY[0x277CBEAA8] date];
        [v13 setFolderModificationDate:v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v9);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = [v27 children];
  v22 = [v21 copy];

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

        [a1 deleteFolder:*(*(&v32 + 1) + 8 * j)];
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

+ (void)purgeFolder:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  [v4 deleteObject:v3];
}

+ (id)defaultFolderInContext:(id)a3
{
  v3 = [ICAccount defaultAccountInContext:a3];
  v4 = [v3 defaultFolder];

  return v4;
}

+ (ICFolder)folderWithIdentifier:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"%K == %@", @"identifier", a3];
  v9 = [a1 foldersMatchingPredicate:v8 context:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)visibleFoldersInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForVisibleFoldersInContext:v4];
  v6 = [a1 foldersMatchingPredicate:v5 context:v4];

  return v6;
}

+ (unint64_t)countOfFoldersMatchingPredicate:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBE428];
  v7 = a4;
  v8 = [v6 fetchRequestWithEntityName:@"ICFolder"];
  [v8 setPredicate:v5];
  v13 = 0;
  v9 = [v7 countForFetchRequest:v8 error:&v13];

  v10 = v13;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICFolder(Management) *)v5 countOfFoldersMatchingPredicate:v10 context:v11];
    }
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  return v9;
}

+ (id)predicateForVisibleFoldersIncludingHiddenNoteContainers:(BOOL)a3 inContext:(id)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = [a1 predicateForVisibleObjects];
  v15[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v7 = [v6 mutableCopy];

  if (!a3)
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
  v3 = [(ICFolder *)self predicateForVisibleNotesInFolder];
  v4 = [(ICFolder *)self managedObjectContext];
  v5 = [ICNote notesMatchingPredicate:v3 context:v4];

  return v5;
}

- (id)pinnedNotesInFolder
{
  v3 = [(ICFolder *)self predicateForPinnedNotesInFolder];
  v4 = [(ICFolder *)self managedObjectContext];
  v5 = [ICNote notesMatchingPredicate:v3 context:v4];

  return v5;
}

- (NSArray)foldersInFolder
{
  v3 = [(ICFolder *)self predicateForFoldersInFolder];
  v4 = [(ICFolder *)self managedObjectContext];
  v5 = [ICFolder foldersMatchingPredicate:v3 context:v4];

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
  v2 = [(ICFolder *)self predicateForNotesInFolder];
  v7[0] = v2;
  v3 = +[ICNote predicateForPinnedNotes];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v4];

  return v5;
}

- (id)predicateForVisibleAttachmentsInFolder
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(ICFolder *)self managedObjectContext];
  v4 = [(ICBaseAttachment *)ICAttachment predicateForVisibleAttachmentsInContext:v3];
  v9[0] = v4;
  v5 = [(ICFolder *)self predicateForAttachmentsInFolder];
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v7 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v6];

  return v7;
}

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3
{
  v4 = a3;
  v5 = self;
  ICFolder.associateAppEntity(with:)(v4);
}

- (ICQueryObjC)smartFolderQueryObjC
{
  v2 = self;
  v3 = ICFolder.smartFolderQuery.getter();

  return v3;
}

- (void)setSmartFolderQueryObjC:(id)a3
{
  v5 = a3;
  v6 = self;
  ICFolder.smartFolderQuery.setter(a3);
}

+ (id)objc_smartFolderWithQuery:(id)a3 titleComponents:(id)a4 account:(id)a5
{
  v7 = sub_2150A4ED0();
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a5;
  v10 = static ICFolder.makeSmartFolder(with:titleComponents:in:)(v8, v7, v9);

  return v10;
}

+ (id)objc_smartFolderWithQuery:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_2150A4EB0();
  v9 = [a1 objc:v6 smartFolderWithQuery:v8 titleComponents:v7 account:?];

  return v9;
}

+ (id)objc_defaultSmartFolderTitleWithComponents:(id)a3
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