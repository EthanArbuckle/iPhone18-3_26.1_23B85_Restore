@interface ICNote
+ (BOOL)containsUnduplicatableNotes:(id)a3;
+ (BOOL)didShowExceededStorageQuotaAlertForNoteWithIdentifier:(id)a3;
+ (BOOL)notes:(id)a3 containSharedNotesNotSharedViaFolder:(id)a4;
+ (ICNote)noteWithIdentifier:(id)a3 includeDeleted:(BOOL)a4 accountID:(id)a5 context:(id)a6;
+ (ICNote)noteWithLegacyManagedObjectID:(id)a3 context:(id)a4;
+ (ICNote)noteWithUUID:(id)a3 context:(id)a4;
+ (id)accountIdentifiersOfNotes:(id)a3;
+ (id)allPasswordProtectedNoteIdentifiersInContext:(id)a3;
+ (id)contentInfoAttributedTextWithSnippet:(id)a3 attachmentContentInfoType:(signed __int16)a4 attachmentContentInfoCount:(int64_t)a5 account:(id)a6;
+ (id)contentInfoTextWithSnippet:(id)a3 attachmentContentInfoType:(signed __int16)a4 attachmentContentInfoCount:(int64_t)a5 account:(id)a6;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)keyPathsForValuesAffectingCanBeSharedViaICloud;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newEmptyNoteInContext:(id)a3;
+ (id)newEmptyNoteInFolder:(id)a3;
+ (id)newEmptyNoteWithIdentifier:(id)a3 folder:(id)a4;
+ (id)newEmptyNoteWithUUID:(id)a3 folder:(id)a4;
+ (id)newFetchRequestForNotes;
+ (id)newNoteWithoutIdentifierInAccount:(id)a3;
+ (id)newObjectWithIdentifier:(id)a3 context:(id)a4;
+ (id)newObjectWithIdentifier:(id)a3 folder:(id)a4;
+ (id)newPlaceholderObjectForRecordName:(id)a3 account:(id)a4;
+ (id)newPlaceholderObjectForRecordName:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)noteIdentifiersMatchingPredicate:(id)a3 context:(id)a4;
+ (id)notesContainingHashtagWithStandarizedContent:(id)a3 context:(id)a4;
+ (id)notesMatchingPredicate:(id)a3 context:(id)a4;
+ (id)passwordProtectedNoteIdentifiersForAccount:(id)a3;
+ (id)predicateForSystemPaperNotesNotInTrash;
+ (id)predicateForVisibleNotesIncludingTrash:(BOOL)a3 includingSystemPaper:(BOOL)a4 includingMathNotes:(BOOL)a5 includingCallNotes:(BOOL)a6 inContext:(id)a7;
+ (id)refreshAllOfNoteWithIdentifier:(id)a3 context:(id)a4;
+ (id)snippetForPasswordProtectedNote:(id)a3;
+ (id)systemPaperNotesFetchRequest;
+ (id)visibleNotesInContext:(id)a3;
+ (unint64_t)countOfAllNotesInContext:(id)a3;
+ (unint64_t)countOfNotesMatchingPredicate:(id)a3 context:(id)a4;
+ (unint64_t)countOfPasswordProtectedNotesInContext:(id)a3;
+ (unint64_t)countOfVisibleNotesInContext:(id)a3;
+ (unint64_t)countOfVisiblePasswordProtectedNotesInAccount:(id)a3;
+ (unint64_t)maxNoteAttachments;
+ (void)createNoteForAirDropDocument:(id)a3 processAttributedString:(id)a4 completion:(id)a5;
+ (void)deleteEmptyNote:(id)a3;
+ (void)deleteNote:(id)a3;
+ (void)enumerateNotesInContext:(id)a3 batchSize:(unint64_t)a4 visibleOnly:(BOOL)a5 saveAfterBatch:(BOOL)a6 usingBlock:(id)a7;
+ (void)purgeNote:(id)a3;
+ (void)setDidShowExceededStorageQuotaAlert:(BOOL)a3 forNoteWithIdentifier:(id)a4;
- (BOOL)addUserID:(id)a3 forReplicaID:(id)a4;
- (BOOL)attachmentExceedsMaxSizeAllowed:(unint64_t)a3;
- (BOOL)canAddAttachments:(unint64_t)a3;
- (BOOL)canBeSharedViaICloud;
- (BOOL)containsAttachmentWithDeepLink;
- (BOOL)containsAttachmentsUnsupportedInPasswordProtection;
- (BOOL)containsPlaceholderBlockOrInlineAttachments;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasChecklistOnlyInProgress:(BOOL)a3;
- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)a3;
- (BOOL)hasPresentableContent;
- (BOOL)hasTags;
- (BOOL)hasThumbnailImage;
- (BOOL)hasUnreadChanges;
- (BOOL)hasVisibleInlineAttachments;
- (BOOL)isCallNote;
- (BOOL)isDeletable;
- (BOOL)isDeletedOrInTrash;
- (BOOL)isDuplicatable;
- (BOOL)isEditable;
- (BOOL)isEmpty;
- (BOOL)isHiddenFromIndexing;
- (BOOL)isInICloudAccount;
- (BOOL)isLockable;
- (BOOL)isMathNote;
- (BOOL)isMovable;
- (BOOL)isPinnable;
- (BOOL)isSharable;
- (BOOL)isSharedAndEmpty;
- (BOOL)isSharedViaICloudFolder;
- (BOOL)isVisible;
- (BOOL)mergeCloudKitRecord:(id)a3 account:(id)a4 approach:(int64_t)a5;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)mergeCloudKitRecord:(id)a3 mergePolicy:(int64_t)a4 account:(id)a5 approach:(int64_t)a6 mergeableFieldState:(id)a7;
- (BOOL)mergeDataFromUserSpecificRecord:(id)a3 accountID:(id)a4;
- (BOOL)mergeEncryptedDataFromRecord:(id)a3;
- (BOOL)needsInitialDerivedAttributesUpdate;
- (BOOL)needsToBeDeletedFromCloud;
- (BOOL)needsToDeleteShare;
- (BOOL)objc_hasRecentExternalEdits;
- (BOOL)regenerateTitle:(BOOL)a3 snippet:(BOOL)a4 isNewNote:(BOOL)a5;
- (BOOL)regenerateTitleAndSnippetIfNecessaryForEdit:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5;
- (BOOL)requiresLegacyTombstoneAfterDeletion;
- (BOOL)saveNoteData;
- (BOOL)shouldReleaseDocumentWhenTurningIntoFault;
- (BOOL)showsCollaboratorCursors;
- (BOOL)textStorageHasAttribute:(id)a3;
- (BOOL)updateDeviceReplicaIDsToUserIDIfNeeded;
- (BOOL)updateLastViewedTimestampWithCurrentTimestamp;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (ICMergeableDictionary)replicaIDToUserID;
- (ICNote)noteWithoutTitle;
- (ICOutlineState)outlineState;
- (ICTTMergeableStringVersionedDocument)document;
- (ICTTVectorMultiTimestamp)lastNotifiedTimestamp;
- (ICTTVectorMultiTimestamp)lastViewedTimestamp;
- (ICTTVectorMultiTimestamp)timestamp;
- (NSArray)allDocumentMergeControllers;
- (NSArray)authorsExcludingCurrentUser;
- (NSAttributedString)attributedContentInfoText;
- (NSAttributedString)trimmedAttributedTitle;
- (NSDate)recentUpdatesGenerationDate;
- (NSSet)distinctAttachmentViewTypes;
- (NSString)accountName;
- (NSString)contentInfoText;
- (NSString)folderManagedIdentifier;
- (NSString)folderName;
- (NSString)folderNameForNoteList;
- (NSString)noteAsPlainTextWithoutTitle;
- (NSString)recordType;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (NSString)trimmedTitle;
- (NSString)widgetInfoText;
- (NSURL)paperCoherenceContextURL;
- (_NSRange)rangeForAttachment:(id)a3;
- (_NSRange)rangeForSnippetWithTitleRange:(_NSRange)a3;
- (_NSRange)rangeForTitle:(BOOL *)a3;
- (_NSRange)textRangeForSearchRange:(_NSRange)a3 inSearchableString:(id)a4;
- (id)addAttachment;
- (id)addAttachmentWithData:(id)a3 filename:(id)a4;
- (id)addAttachmentWithFileURL:(id)a3 filename:(id)a4 updateFileBasedAttributes:(BOOL)a5 analytics:(BOOL)a6;
- (id)addAttachmentWithFileURL:(id)a3 updateFileBasedAttributes:(BOOL)a4 analytics:(BOOL)a5;
- (id)addAttachmentWithFileWrapper:(id)a3;
- (id)addAttachmentWithIdentifier:(id)a3;
- (id)addAttachmentWithRemoteFileURL:(id)a3;
- (id)addAttachmentWithUTI:(id)a3 data:(id)a4 filename:(id)a5 updateFileBasedAttributes:(BOOL)a6 analytics:(BOOL)a7 regulatoryLogging:(BOOL)a8;
- (id)addAttachmentWithUTI:(id)a3 data:(id)a4 filenameExtension:(id)a5;
- (id)addAttachmentWithUTI:(id)a3 identifier:(id)a4 urlString:(id)a5 analytics:(BOOL)a6 regulatoryLogging:(BOOL)a7;
- (id)addAttachmentWithUTI:(id)a3 withURL:(id)a4;
- (id)addAttachmentWithUTI:(id)a3 withURL:(id)a4 filename:(id)a5 updateFileBasedAttributes:(BOOL)a6 analytics:(BOOL)a7;
- (id)addAttachmentWithUTI:(id)a3 withURL:(id)a4 updateFileBasedAttributes:(BOOL)a5 analytics:(BOOL)a6;
- (id)addAudioAttachmentWithIdentifier:(id)a3;
- (id)addGalleryAttachmentWithIdentifier:(id)a3;
- (id)addInlineAttachmentWithIdentifier:(id)a3;
- (id)addInlineDrawingAttachmentWithAnalytics:(BOOL)a3;
- (id)addPaperDocumentAttachmentWithIdentifier:(id)a3 subtype:(id)a4;
- (id)addSynapseLinkAttachmentWithContentItem:(id)a3;
- (id)addTableAttachment;
- (id)addTableAttachmentWithTableData:(id)a3;
- (id)addTableAttachmentWithText:(id)a3;
- (id)addURLAttachmentWithURL:(id)a3;
- (id)additionalSearchIndexablesForChangedKeys:(id)a3;
- (id)allAttachmentsIncludingSubAttachments;
- (id)allDrawings;
- (id)allNoteTextAttachmentsIncludingSubAttachments:(BOOL)a3;
- (id)allNoteTextInlineAttachments;
- (id)anyVisibleInstanceOfHashtag:(id)a3;
- (id)attachmentForWebThumbnail;
- (id)attachmentWithIdentifier:(id)a3;
- (id)attachmentsInOrder;
- (id)attachmentsWithUTType:(id)a3;
- (id)attributedString;
- (id)childCloudObjects;
- (id)childCloudObjectsForMinimumSupportedVersionPropagation;
- (id)cloudAccount;
- (id)csPersonForShareParticipant:(id)a3;
- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)a3;
- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)a3 shouldFetchObject:(id)a4;
- (id)folderReferenceFromRecord:(id)a3;
- (id)ic_loggingValues;
- (id)inlineAttachmentWithICTTAttachment:(id)a3;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3;
- (id)mergeableString;
- (id)minimumNotesVersionForAllParticipants;
- (id)minimumNotesVersionForUserIDs:(id)a3;
- (id)newAirDropDocument;
- (id)noteAsPlainText;
- (id)notesVersionForParticipant:(id)a3;
- (id)notesVersionForUserID:(id)a3;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)participantForReplicaID:(id)a3;
- (id)primaryEncryptedData;
- (id)quotedTitle;
- (id)searchableString;
- (id)showsCollaboratorCursorsUserDefaultsKey;
- (id)textDataDecryptedIfNecessary;
- (id)userIDForReplicaID:(id)a3;
- (id)uuid;
- (id)visibleAttachments;
- (id)visibleAttachmentsWithType:(signed __int16)a3;
- (id)visibleInlineAttachments;
- (id)visibleTopLevelAttachments;
- (id)widgetSnippetByEnumeratingAttachments;
- (int64_t)attachmentContentInfoCount;
- (int64_t)currentStatus;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3;
- (int64_t)mergePolicyForRecord:(id)a3;
- (signed)attachmentContentInfoType;
- (unint64_t)mergeReplicaIDToUserID:(id)a3;
- (unint64_t)mergeWithNoteData:(id)a3;
- (unint64_t)performMerge:(id)a3;
- (unint64_t)textOffsetAtSearchIndex:(unint64_t)a3 inSearchableString:(id)a4;
- (unint64_t)visibleTopLevelAttachmentsCount;
- (void)_updateLinksOnMainThreadSelectorDelayer;
- (void)addInlineAttachments:(id)a3;
- (void)addInlineAttachmentsObject:(id)a3;
- (void)addMediaToAttachment:(id)a3 withBlock:(id)a4;
- (void)addNoteBodyToRecord:(id)a3 forApproach:(int64_t)a4 mergeableFieldState:(id)a5;
- (void)addShareParticipantsToAttributeSet:(id)a3;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3;
- (void)awakeFromFetch;
- (void)changePinStatusIfPossible;
- (void)clearDecryptedData;
- (void)clearRecentUpdatesGenerationDateIfNeeded;
- (void)dealloc;
- (void)deduplicateSelfAndCreateNewObjectFromRecord:(id)a3;
- (void)didAcceptShare:(id)a3;
- (void)didChangeNoteText;
- (void)didFetchUserSpecificRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5;
- (void)didRefresh:(BOOL)a3;
- (void)didSave;
- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5;
- (void)enumerateAbstractAttachmentsInOrderUsingBlock:(id)a3;
- (void)enumerateAttachmentsInOrderUsingBlock:(id)a3;
- (void)enumerateInlineAttachmentsInOrderUsingBlock:(id)a3;
- (void)fixBrokenReferencesWithError:(id)a3;
- (void)inlineAssetsForRecord:(id)a3;
- (void)markActivitySummaryViewed;
- (void)markAsCallNoteIfAttachmentIsCallRecording;
- (void)markAsCallNoteIfNeeded:(BOOL)a3;
- (void)markAsMathNoteIfNeeded:(BOOL)a3;
- (void)markAsSystemPaperIfNeeded:(BOOL)a3;
- (void)markForDeletion;
- (void)markLastActivityRecentUpdatesViewed;
- (void)mergeEncryptedData:(id)a3 mergeConflict:(id)a4;
- (void)mergeFoldersFromRecord:(id)a3 account:(id)a4;
- (void)mergeNotePrimitiveData;
- (void)mergeTextDataFromRecord:(id)a3 mergePolicy:(int64_t)a4 mergeableFieldState:(id)a5;
- (void)notifyAttachmentsNoteWillMoveToRecentlyDeletedFolder;
- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4;
- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5;
- (void)persistPendingChanges;
- (void)prepareForDeletion;
- (void)refreshNoteTextFromDataStore;
- (void)removeInlineAttachments:(id)a3;
- (void)removeInlineAttachmentsObject:(id)a3;
- (void)replaceWithDocument:(id)a3;
- (void)saveNoteData;
- (void)setAccount:(id)a3;
- (void)setAttachmentViewType:(signed __int16)a3;
- (void)setCryptoInitializationVector:(id)a3;
- (void)setCryptoTag:(id)a3;
- (void)setFolder:(id)a3;
- (void)setHostApplicationIdentifier:(id)a3;
- (void)setIsPinned:(BOOL)a3;
- (void)setLastActivityRecentUpdatesViewedDate:(id)a3;
- (void)setLastNotifiedTimestamp:(id)a3;
- (void)setLastViewedTimestamp:(id)a3;
- (void)setLegacyManagedObjectID:(id)a3;
- (void)setMarkedForDeletion:(BOOL)a3;
- (void)setNeedsInitialFetchFromCloud:(BOOL)a3;
- (void)setOutlineStateData:(id)a3;
- (void)setPrimaryEncryptedData:(id)a3;
- (void)setShowsCollaboratorCursors:(BOOL)a3;
- (void)turnAttachmentsIntoFaults;
- (void)unmarkForDeletion;
- (void)updateArchivedAndLastViewedTimeStampsAfterSavingNoteData;
- (void)updateAttachmentViewTypeAndPropagateToAttachments:(signed __int16)a3;
- (void)updateChangeCountWithReason:(id)a3;
- (void)updateDerivedAttributesIfNeeded;
- (void)updateDeviceReplicaIDsToUserIDIfNeeded;
- (void)updateLastViewedTimestampWithCurrentTimestamp;
- (void)updateLinksWhenPossible;
- (void)updateTimestampWithUnserializedChanges;
- (void)visibleTopLevelAttachmentsCount;
- (void)widgetSnippetByEnumeratingAttachments;
- (void)willRefresh:(BOOL)a3;
- (void)willSave;
- (void)willTurnIntoFault;
- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)a3;
- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:(id)a3;
@end

@implementation ICNote

+ (id)newFetchRequestForNotes
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"ICNote"];
  v3 = [MEMORY[0x277D36220] sortDescriptorsForCurrentTypeIncludingPinnedNotes:1];
  [v2 setSortDescriptors:v3];

  return v2;
}

- (void)awakeFromFetch
{
  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 awakeFromFetch];
  if (self->_document)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(ICNote *)self documentMergeController];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __24__ICNote_awakeFromFetch__block_invoke;
      v5[3] = &unk_278194B00;
      v5[4] = self;
      [v3 requestMergeWithBlock:v5];
    }

    else
    {
      [(ICNote *)self mergeNotePrimitiveData];
    }

    if ([(ICNote *)self wasAuthenticatedBeforeTurningIntoFault])
    {
      if ([(ICCloudSyncingObject *)self isPasswordProtectedAndLocked])
      {
        v4 = [MEMORY[0x277CCAB98] defaultCenter];
        [v4 postNotificationName:@"ICNoteDidDeauthenticateAfterMergeNotification" object:self];
      }
    }
  }
}

- (void)dealloc
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = ICNote;
  [(ICNote *)&v3 dealloc];
}

- (void)willTurnIntoFault
{
  if (([(ICNote *)self ic_isTransitioning]& 1) == 0 && ([(ICNote *)self isFault]& 1) == 0)
  {
    [(ICNote *)self setWasAuthenticatedBeforeTurningIntoFault:[(ICCloudSyncingObject *)self isAuthenticated]];
  }

  v8.receiver = self;
  v8.super_class = ICNote;
  [(ICNote *)&v8 willTurnIntoFault];
  if (self->_document)
  {
    if (objc_opt_respondsToSelector())
    {
      if (([(ICNote *)self shouldReleaseTextStorageWhenTurningIntoFault]& 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (![(ICNote *)self shouldReleaseDocumentWhenTurningIntoFault])
    {
      goto LABEL_12;
    }

    if (objc_opt_respondsToSelector())
    {
      [(ICNote *)self noteWillReleaseTextStorage];
    }

    document = self->_document;
    self->_document = 0;
  }

LABEL_12:
  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)self noteWillTurnIntoFault];
  }

  lastNotifiedTimestamp = self->_lastNotifiedTimestamp;
  self->_lastNotifiedTimestamp = 0;

  lastViewedTimestamp = self->_lastViewedTimestamp;
  self->_lastViewedTimestamp = 0;

  replicaIDToUserID = self->_replicaIDToUserID;
  self->_replicaIDToUserID = 0;

  outlineState = self->_outlineState;
  self->_outlineState = 0;
}

- (BOOL)isSharedAndEmpty
{
  v3 = [(ICCloudSyncingObject *)self isSharedViaICloud];
  if (v3)
  {

    LOBYTE(v3) = [(ICNote *)self isEmpty];
  }

  return v3;
}

- (ICTTMergeableStringVersionedDocument)document
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(ICNote *)self managedObjectContext];

  if (v3)
  {
    if (!self->_document)
    {
      v4 = [(ICNote *)self textDataDecryptedIfNecessary];
      if (!-[ICNote isPasswordProtected](self, "isPasswordProtected") || (-[ICNote noteData](self, "noteData"), v5 = objc_claimAutoreleasedReturnValue(), [v5 data], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4) || !v6)
      {
        v7 = [ICTTMergeableStringVersionedDocument alloc];
        v8 = [(ICCloudSyncingObject *)self currentReplicaID];
        v9 = [(ICTTVersionedDocument *)v7 initWithData:v4 replicaID:v8];
        document = self->_document;
        self->_document = v9;

        v11 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        [v11 setDelegate:self];

        v12 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        v13 = [v12 timestamp];
        [(ICNote *)self setArchivedTimestamp:v13];

        if (objc_opt_respondsToSelector())
        {
          [(ICNote *)self noteDidReplaceDocument];
        }

        [(ICCloudSyncingObject *)self mergeUnappliedEncryptedRecord];
      }
    }
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x277CCACC8] callStackSymbols];
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Trying to access the text storage on a note that has no managed object context: %@", &v18, 0xCu);
    }
  }

  v16 = self->_document;

  return v16;
}

- (id)textDataDecryptedIfNecessary
{
  if (([(ICNote *)self isPasswordProtected]& 1) != 0)
  {
    if ([(ICCloudSyncingObject *)self isAuthenticated]&& ![(ICCloudSyncingObject *)self isUnsupported])
    {
      v6 = [(ICNote *)self decryptedData];

      if (!v6)
      {
        v7 = [(ICCloudSyncingObject *)self cryptoStrategy];
        [v7 decrypt];
      }

      v3 = [(ICNote *)self decryptedData];
      [(ICNote *)self setDecryptedData:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = [(ICNote *)self noteData];
    v3 = [v4 data];
  }

  return v3;
}

- (BOOL)needsInitialDerivedAttributesUpdate
{
  v3 = [(ICNote *)self hasChecklist];
  if (v3)
  {
    v4 = [(ICNote *)self hasChecklistInProgress];
    if (v4)
    {
      v5 = [(ICNote *)self hasSystemTextAttachments];
      if (v5)
      {
        v6 = [(ICNote *)self hasEmphasis];
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)cloudAccount
{
  v3 = [(ICNote *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICNote *)self folder];
    v5 = [v6 cloudAccount];
  }

  return v5;
}

- (ICOutlineState)outlineState
{
  outlineState = self->_outlineState;
  if (!outlineState)
  {
    v4 = [ICOutlineState alloc];
    v5 = [(ICNote *)self outlineStateData];
    v6 = [(ICOutlineState *)v4 initWithData:v5];
    v7 = self->_outlineState;
    self->_outlineState = v6;

    outlineState = self->_outlineState;
  }

  return outlineState;
}

- (BOOL)isEmpty
{
  v3 = [(ICNote *)self managedObjectContext];

  if (!v3)
  {
    return 0;
  }

  if (([(ICNote *)self isPasswordProtected]& 1) != 0)
  {
    return 0;
  }

  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    v5 = [(ICNote *)self folder];
    v6 = [v5 isSharedViaICloud];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [(ICNote *)self mergeableString];
  if (v7)
  {
    v8 = [(ICNote *)self mergeableString];
    v4 = [v8 length] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mergeableString
{
  v2 = [(ICNote *)self document];
  v3 = [v2 mergeableString];

  return v3;
}

- (void)didChangeNoteText
{
  v3 = [(ICNote *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__ICNote_didChangeNoteText__block_invoke;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  [v3 performBlockAndWait:v4];
}

void __27__ICNote_didChangeNoteText__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mergeableString];
  if ([v2 hasLocalChanges])
  {
  }

  else
  {
    v3 = [*(a1 + 32) mergeableString];
    v4 = [v3 timestamp];
    v5 = [*(a1 + 32) archivedTimestamp];
    v6 = [v4 compareTo:v5];

    if ((v6 & 4) == 0)
    {
      return;
    }
  }

  [*(a1 + 32) willChangeValueForKey:@"isEmpty"];
  v7 = [*(a1 + 32) noteData];
  v8 = [v7 needsToBeSaved];

  if ((v8 & 1) == 0)
  {
    v9 = [*(a1 + 32) noteData];
    [v9 willChangeValueForKey:@"data"];

    v10 = [*(a1 + 32) noteData];
    [v10 setNeedsToBeSaved:1];

    v11 = [*(a1 + 32) noteData];
    [v11 didChangeValueForKey:@"data"];
  }

  [*(a1 + 32) didChangeValueForKey:@"isEmpty"];
  v12 = *(a1 + 32);

  [v12 setThumbnailAttachmentIdentifier:0];
}

- (BOOL)hasVisibleInlineAttachments
{
  v2 = [(ICNote *)self inlineAttachments];
  v3 = +[(ICBaseAttachment *)ICInlineAttachment];
  v4 = [v2 ic_containsObjectMatchingPredicate:v3];

  return v4;
}

- (BOOL)isEditable
{
  v3 = [(ICNote *)self folder];
  v4 = [v3 supportsEditingNotes];

  if (v4 && ![(ICCloudSyncingObject *)self isSharedReadOnly])
  {
    return ![(ICCloudSyncingObject *)self isUnsupported];
  }

  else
  {
    return 0;
  }
}

- (BOOL)showsCollaboratorCursors
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(ICNote *)self showsCollaboratorCursorsUserDefaultsKey];
  v9 = v4;
  v10[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v3 registerDefaults:v5];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [(ICNote *)self showsCollaboratorCursorsUserDefaultsKey];
  LOBYTE(self) = [v6 BOOLForKey:v7];

  return self;
}

- (id)showsCollaboratorCursorsUserDefaultsKey
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ICNote *)self identifier];
  v4 = [v2 stringWithFormat:@"%@-%@", v3, @"ICNoteShouldShowCollaboratorCursors"];

  return v4;
}

- (id)attributedString
{
  v2 = [(ICNote *)self mergeableString];
  v3 = [v2 attributedString];

  return v3;
}

- (BOOL)isDeletedOrInTrash
{
  if (([(ICNote *)self markedForDeletion]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ICNote *)self folder];
  v5 = [v4 isTrashFolder];

  return v5;
}

- (id)childCloudObjects
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(ICNote *)self attachments];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v3 addObject:v9];
        v10 = [v9 media];

        if (v10)
        {
          v11 = [v9 media];
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = [(ICNote *)self inlineAttachments];
  v13 = [v12 allObjects];
  [v3 addObjectsFromArray:v13];

  v14 = [v3 copy];

  return v14;
}

- (BOOL)isSharable
{
  if (![(ICNote *)self isPasswordProtected]|| (v3 = [(ICCloudSyncingObject *)self isAuthenticated]))
  {
    if ([(ICNote *)self isDeletedOrInTrash]|| [(ICNote *)self isEmpty])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(ICCloudSyncingObject *)self isUnsupported];
    }
  }

  return v3;
}

- (void)mergeNotePrimitiveData
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)prepareForDeletion
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)willSave
{
  v3 = [(ICNote *)self changedValues];
  v4 = [v3 allKeys];
  v5 = [v4 count];

  if (v5)
  {
    [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
  }

  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 willSave];
}

- (BOOL)shouldReleaseDocumentWhenTurningIntoFault
{
  if (!self->_document)
  {
    return 0;
  }

  if ([(ICNote *)self preventReleasingTextStorage])
  {
    return 0;
  }

  v4 = [(ICNote *)self noteData];
  v5 = [v4 needsToBeSaved];

  return v5 ^ 1;
}

- (void)didSave
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = ICNote;
  [(ICNote *)&v14 didSave];
  WeakRetained = objc_loadWeakRetained(&self->_noteDidSaveObserver);

  if (!WeakRetained)
  {
    v4 = [(ICNote *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICNoteDidSaveNotification"];
    objc_storeWeak(&self->_noteDidSaveObserver, v4);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_noteDidSaveBlocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_noteDidSaveBlocks removeAllObjects];
}

- (void)willRefresh:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = ICNote;
  [(ICNote *)&v8 willRefresh:?];
  if (self->_document)
  {
    v5 = [(ICNote *)self noteData];
    v6 = [v5 managedObjectContext];
    v7 = [(ICNote *)self noteData];
    [v6 ic_refreshObject:v7 mergeChanges:v3];
  }
}

- (void)didRefresh:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = ICNote;
  [(ICNote *)&v13 didRefresh:a3];
  if (self->_document)
  {
    v4 = MEMORY[0x277CCAC30];
    v5 = [(ICNote *)self noteData];
    v6 = [v4 predicateWithFormat:@"self == %@", v5];
    v7 = [(ICNote *)self managedObjectContext];
    v8 = [ICNoteData ic_objectsMatchingPredicate:v6 context:v7];

    if (!v8)
    {
      v9 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICNote didRefresh:?];
      }
    }

    v10 = [(ICNote *)self identifier];

    v11 = os_log_create("com.apple.notes", "CoreData");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      if (v12)
      {
        [ICNote didRefresh:?];
      }
    }

    else if (v12)
    {
      [ICNote didRefresh:?];
    }
  }
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3
{
  if ([(ICCloudSyncingObject *)self isUnsupported]|| [(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {

    return [(ICNote *)self minimumSupportedNotesVersion];
  }

  else
  {
    v6 = [(ICNote *)self hasEmphasis];
    v7 = [v6 BOOLValue];

    if (v7 & 1) != 0 || (-[ICNote hasSystemTextAttachments](self, "hasSystemTextAttachments"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 BOOLValue], v8, (v9))
    {
      v10 = 14;
    }

    else if ([(ICNote *)self hasVisibleInlineAttachments])
    {
      if ([(ICNote *)self isPasswordProtected])
      {
        v10 = 13;
      }

      else
      {
        v10 = 6;
      }
    }

    else
    {
      v10 = [(ICCloudSyncingObject *)self isSharedReadOnly];
    }

    v11.receiver = self;
    v11.super_class = ICNote;
    result = [(ICCloudSyncingObject *)&v11 intrinsicNotesVersionForScenario:a3];
    if (v10 > result)
    {
      return v10;
    }
  }

  return result;
}

- (void)setAttachmentViewType:(signed __int16)a3
{
  v3 = a3;
  if ([(ICNote *)self attachmentViewType]!= a3)
  {
    v7 = NSStringFromSelector(sel_attachmentViewType);
    [(ICNote *)self willChangeValueForKey:v7];
    performBlockOnMainThread();
    v5 = [MEMORY[0x277CCABB0] numberWithShort:v3];
    [(ICNote *)self setPrimitiveValue:v5 forKey:v7];

    v6 = [(ICNote *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidChangePreferredSizeNotification"];
    [(ICNote *)self didChangeValueForKey:v7];
  }
}

void __32__ICNote_setAttachmentViewType___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"ICAttachmentWillChangePreferredSizeNotification" object:0];
}

- (void)updateAttachmentViewTypeAndPropagateToAttachments:(signed __int16)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  if ([(ICNote *)self attachmentViewType]!= a3)
  {
    goto LABEL_4;
  }

  v12 = [(ICNote *)self distinctAttachmentViewTypes];
  if ([v12 count] >= 2)
  {

LABEL_4:
    if ([(ICNote *)self attachmentViewType]!= v3)
    {
      [(ICNote *)self setAttachmentViewType:v3];
      [(ICNote *)self updateChangeCountWithReason:@"User chose a new attachmentViewType"];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(ICNote *)self visibleTopLevelAttachments];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * i) resetPreferredViewSizeIfNecessary];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    if (objc_opt_respondsToSelector())
    {
      [(ICNote *)self noteDidApplyAttachmentViewTypeToAllAttachments];
    }

    return;
  }

  if ([v12 count] == 1)
  {
    v10 = [v12 anyObject];
    v11 = [v10 integerValue];

    if (v11 == v3)
    {
      return;
    }

    goto LABEL_4;
  }
}

- (NSSet)distinctAttachmentViewTypes
{
  v2 = [(ICNote *)self visibleTopLevelAttachments];
  v3 = [v2 ic_map:&__block_literal_global_123];

  return v3;
}

uint64_t __37__ICNote_distinctAttachmentViewTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 preferredViewSize];

  return [v2 numberWithShort:v3];
}

- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4
{
  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 objectWasFetchedFromCloudWithRecord:a3 accountID:a4];
  if (![(ICNote *)self wantsUserSpecificRecord]|| ([(ICCloudSyncingObject *)self userSpecificServerRecord], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [(ICNote *)self clearRecentUpdatesGenerationDateIfNeeded];
  }
}

- (void)didFetchUserSpecificRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v16.receiver = self;
  v16.super_class = ICNote;
  [(ICCloudSyncingObject *)&v16 didFetchUserSpecificRecord:v8 accountID:a4 force:v5];
  if ([(ICNote *)self needsInitialFetchFromCloud])
  {
    v9 = [ICUserSpecificRecordIDParser alloc];
    v10 = [v8 recordID];
    v11 = [v10 recordName];
    v12 = [(ICUserSpecificRecordIDParser *)v9 initWithRecordName:v11];

    v13 = [(ICUserSpecificRecordIDParser *)v12 sharedRecordType];
    LODWORD(v11) = [v13 isEqual:@"PasswordProtectedNote"];

    if (v11)
    {
      v14 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Deriving that placeholder note is password-protected from user-specific record {noteID: %@}", buf, 0xCu);
      }

      [(ICNote *)self setIsPasswordProtected:1];
    }
  }

  else
  {
    [(ICNote *)self clearRecentUpdatesGenerationDateIfNeeded];
  }
}

+ (unint64_t)maxNoteAttachments
{
  v2 = +[ICCloudConfiguration sharedConfiguration];
  v3 = [v2 maxAttachmentsPerNote];

  return v3;
}

- (id)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = [(ICNote *)self identifier];
    v6 = [v4 initWithUUIDString:v5];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

- (id)noteAsPlainText
{
  v2 = [(ICNote *)self attributedString];
  v3 = [v2 string];

  return v3;
}

- (id)quotedTitle
{
  v2 = [(ICNote *)self title];
  v3 = [v2 ic_quotedString];

  return v3;
}

- (NSString)noteAsPlainTextWithoutTitle
{
  v3 = [(ICNote *)self searchableString];
  v4 = [v3 string];

  v5 = MEMORY[0x277D36228];
  v6 = [(ICNote *)self title];
  v7 = [v5 stringByRemovingTitle:v6 fromString:v4];

  return v7;
}

- (ICNote)noteWithoutTitle
{
  v3 = [(ICNote *)self searchableString];
  v4 = MEMORY[0x277D36228];
  v5 = [(ICNote *)self title];
  v6 = [v4 attributedStringByRemovingTitle:v5 fromAttributedString:v3];

  return v6;
}

- (void)updateTimestampWithUnserializedChanges
{
  v2 = [(ICNote *)self mergeableString];
  [v2 generateIdsForLocalChanges];
}

- (BOOL)updateLastViewedTimestampWithCurrentTimestamp
{
  if (![(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    return 0;
  }

  v3 = [(ICNote *)self mergeableString];
  if ([v3 hasLocalChanges])
  {
    v4 = [(ICNote *)self needsToSaveLastViewedTimestamp];

    if (!v4)
    {
      v5 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self updateLastViewedTimestampWithCurrentTimestamp];
      }

      [(ICNote *)self setNeedsToSaveLastViewedTimestamp:1];
      v6 = @"Need to save last viewed timestamp on next save";
      goto LABEL_15;
    }
  }

  else
  {
  }

  v8 = [(ICNote *)self lastViewedTimestamp];
  if (v8)
  {
    v9 = v8;
    v10 = [(ICNote *)self timestamp];
    v11 = [(ICNote *)self lastViewedTimestamp];
    v12 = [v10 compareTo:v11];

    if ((v12 & 4) == 0)
    {
      v7 = 0;
      goto LABEL_16;
    }
  }

  v13 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ICNote updateLastViewedTimestampWithCurrentTimestamp];
  }

  v14 = [(ICNote *)self timestamp];
  [(ICNote *)self setLastViewedTimestamp:v14];

  v6 = @"Setting last viewed timestamp";
LABEL_15:
  [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:v6];
  v7 = 1;
LABEL_16:
  if ([(ICNote *)self hasUnreadChanges])
  {
    v15 = [(ICCloudSyncingObject *)self modificationDate];
    [(ICNote *)self setLastViewedModificationDate:v15];

    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Updated last viewed modification date"];
    v16 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICNote updateLastViewedTimestampWithCurrentTimestamp];
    }

    return 1;
  }

  return v7;
}

- (void)edited:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5
{
  if ([(ICNote *)self regenerateTitleAndSnippetIfNecessaryForEdit:a3 range:a4.location changeInLength:a4.length, a5]&& ![(ICCloudSyncingObject *)self isMergingRecord])
  {
    [(ICCloudSyncingObject *)self markShareDirtyIfNeededWithReason:@"Updated title after edit"];

    [(ICNote *)self updateChangeCountWithReason:@"Updated title after edit"];
  }
}

- (BOOL)isVisible
{
  v6.receiver = self;
  v6.super_class = ICNote;
  if (![(ICCloudSyncingObject *)&v6 isVisible])
  {
    return 0;
  }

  v3 = [(ICNote *)self folder];
  v4 = [v3 folderType] != 1;

  return v4;
}

- (BOOL)isDeletable
{
  v2 = [(ICNote *)self folder];
  v3 = [v2 isSharedReadOnly];

  return v3 ^ 1;
}

- (BOOL)isDuplicatable
{
  if ([(ICCloudSyncingObject *)self isSharedReadOnly]|| ([(ICNote *)self isPasswordProtected]& 1) != 0 || [(ICNote *)self isDeletedOrInTrash])
  {
    return 0;
  }

  else
  {
    return ![(ICNote *)self isEmpty];
  }
}

+ (BOOL)containsUnduplicatableNotes:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 ic_containsObjectPassingTest:&__block_literal_global_166];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isLockable
{
  if ([(ICNote *)self isDeletedOrInTrash]|| [(ICNote *)self isEmpty])
  {
    return 0;
  }

  else
  {
    return ![(ICCloudSyncingObject *)self isUnsupported];
  }
}

- (BOOL)isMovable
{
  v3 = [(ICNote *)self folder];
  if (([v3 isSharedReadOnly] & 1) != 0 || -[ICNote isEmpty](self, "isEmpty"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(ICCloudSyncingObject *)self isUnsupported];
  }

  return v4;
}

- (BOOL)isPinnable
{
  if ([(ICNote *)self isDeletedOrInTrash]|| [(ICNote *)self isEmpty])
  {
    return 0;
  }

  else
  {
    return ![(ICCloudSyncingObject *)self isUnsupported];
  }
}

- (BOOL)requiresLegacyTombstoneAfterDeletion
{
  v3 = [(ICNote *)self legacyContentHashAtImport];
  if ([v3 length])
  {
    v4 = [(ICNote *)self account];
    v5 = [v4 supportsLegacyTombstones];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasChecklistOnlyInProgress:(BOOL)a3
{
  v5 = [(ICNote *)self attributedString];
  v6 = [v5 length];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(ICNote *)self attributedString];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ICNote_hasChecklistOnlyInProgress___block_invoke;
  v9[3] = &unk_278195278;
  v10 = a3;
  v9[4] = &v11;
  [v7 enumerateAttribute:ICTTAttributeNameParagraphStyle inRange:0 options:v6 usingBlock:{0, v9}];

  LOBYTE(v6) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void __37__ICNote_hasChecklistOnlyInProgress___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v10 = ICCheckedDynamicCast();

  if ([v10 style] == 103)
  {
    if (*(a1 + 40) != 1 || ([v10 todo], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "done"), v8, (v9 & 1) == 0))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }
}

- (void)markForDeletion
{
  if (([(ICNote *)self markedForDeletion]& 1) == 0)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v3 = [MEMORY[0x277CCAB98] defaultCenter];
      [v3 postNotificationName:@"ICNoteWillBeDeletedNotification" object:self];
    }

    v4 = [(ICCloudSyncingObject *)self modificationDate];
    [(ICNote *)self setModificationDate:v4];
  }

  v5.receiver = self;
  v5.super_class = ICNote;
  [(ICCloudSyncingObject *)&v5 markForDeletion];
}

- (void)unmarkForDeletion
{
  if ([(ICNote *)self markedForDeletion])
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v3 = [MEMORY[0x277CCAB98] defaultCenter];
      [v3 postNotificationName:@"ICNoteWillBeUndeletedNotification" object:self];
    }

    v4 = [(ICCloudSyncingObject *)self modificationDate];
    [(ICNote *)self setModificationDate:v4];
  }

  v5.receiver = self;
  v5.super_class = ICNote;
  [(ICCloudSyncingObject *)&v5 unmarkForDeletion];
}

- (void)updateChangeCountWithReason:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 updateChangeCountWithReason:a3];
  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    v4 = [(ICNote *)self managedObjectContext];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__ICNote_updateChangeCountWithReason___block_invoke;
    v5[3] = &unk_278194B00;
    v5[4] = self;
    [v4 performBlockAndWait:v5];
  }
}

void __38__ICNote_updateChangeCountWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changedValues];
  v3 = [v2 objectForKeyedSubscript:@"folder"];
  if (v3)
  {
  }

  else
  {
    v4 = [*(a1 + 32) changedValues];
    v5 = [v4 objectForKeyedSubscript:@"folderModificationDate"];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v6 = [*(a1 + 32) folder];
  v7 = [v6 isOwnedByCurrentUser];

  if (v7)
  {
    [*(a1 + 32) updateUserSpecificChangeCountWithReason:@"Side effect of changing folder or folderModificationDate"];
  }

LABEL_6:
  v8 = [*(a1 + 32) changedValues];
  v9 = [v8 objectForKeyedSubscript:@"lastActivitySummaryViewedDate"];
  if (!v9)
  {
    v9 = [*(a1 + 32) changedValues];
    v10 = [v9 objectForKeyedSubscript:@"lastActivityRecentUpdatesViewedDate"];
    if (!v10)
    {
      v12 = [*(a1 + 32) changedValues];
      v13 = [v12 objectForKeyedSubscript:@"lastAttributionsViewedDate"];

      if (!v13)
      {
        return;
      }

      goto LABEL_10;
    }
  }

LABEL_10:
  v11 = *(a1 + 32);

  [v11 updateUserSpecificChangeCountWithReason:@"Side effect of changing activity timestamps"];
}

- (BOOL)canAddAttachments:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(ICNote *)self visibleTopLevelAttachmentsCount];
  v5 = [objc_opt_class() maxNoteAttachments];
  if (v4 + a3 > v5)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [objc_opt_class() maxNoteAttachments];
      v9 = +[ICCloudConfiguration sharedConfiguration];
      v10 = 134218752;
      v11 = a3;
      v12 = 2048;
      v13 = v4;
      v14 = 2048;
      v15 = v8;
      v16 = 2048;
      v17 = v9;
      _os_log_debug_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEBUG, "Can't add attachments %lu %lu %lu %p", &v10, 0x2Au);
    }
  }

  return v4 + a3 <= v5;
}

- (BOOL)attachmentExceedsMaxSizeAllowed:(unint64_t)a3
{
  v3 = a3 != 0;
  if (a3)
  {
    v5 = +[ICCloudConfiguration sharedConfiguration];
    v6 = [v5 maximumAttachmentSizeMB];
    v7 = [v6 unsignedLongLongValue] << 20;

    if (v7 >= a3)
    {
      return 0;
    }

    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICNote attachmentExceedsMaxSizeAllowed:];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICNote attachmentExceedsMaxSizeAllowed:];
    }
  }

  return v3;
}

- (BOOL)containsAttachmentsUnsupportedInPasswordProtection
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(ICNote *)self attributedString];
  v4 = [(ICNote *)self attributedString];
  v5 = [v4 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ICNote_containsAttachmentsUnsupportedInPasswordProtection__block_invoke;
  v7[3] = &unk_2781952F0;
  v7[4] = self;
  v7[5] = &v8;
  [v3 enumerateAttribute:@"NSAttachment" inRange:0 options:v5 usingBlock:{0, v7}];

  LOBYTE(v3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v3;
}

void __60__ICNote_containsAttachmentsUnsupportedInPasswordProtection__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = v7;
  if (v7 && [v7 conformsToProtocol:&unk_282766DE0])
  {
    v9 = v8;
    v10 = [v9 attachmentUTI];
    if (![ICAttachment isTypeUTISupportedForPasswordProtectedNotes:v10])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a5 = 1;
    }

    v11 = *(a1 + 32);
    v12 = [v9 attachmentIdentifier];
    v13 = [v11 attachmentWithIdentifier:v12];

    if ([v13 isUnsupported])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a5 = 1;
    }

    if ([v10 isEqualToString:@"com.apple.notes.table"])
    {
      objc_opt_class();
      v14 = [v13 attachmentModel];
      v15 = ICDynamicCast();
      v16 = [v15 table];

      if (v16)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __60__ICNote_containsAttachmentsUnsupportedInPasswordProtection__block_invoke_2;
        v17[3] = &unk_2781952C8;
        v19 = a5;
        v18 = *(a1 + 32);
        [v16 enumerateCellObjectsInCellSelectionContainingColumnIndices:0 rowIndices:0 copyItems:0 usingBlock:v17];
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a5 = 1;
      }
    }
  }
}

uint64_t __60__ICNote_containsAttachmentsUnsupportedInPasswordProtection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 attributedString];
  v4 = [v3 length];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ICNote_containsAttachmentsUnsupportedInPasswordProtection__block_invoke_3;
  v6[3] = &unk_2781952A0;
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  [v3 enumerateAttribute:@"NSAttachment" inRange:0 options:v4 usingBlock:{0, v6}];

  return 0;
}

void __60__ICNote_containsAttachmentsUnsupportedInPasswordProtection__block_invoke_3(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 attachmentUTI];
  if (v3 && ![ICAttachment isTypeUTISupportedForPasswordProtectedNotes:v3])
  {
    v4 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *v4 = 1;
  }

  v5 = a1[4];
  v6 = [v9 attachmentIdentifier];
  v7 = [v5 attachmentWithIdentifier:v6];

  if ([v7 isUnsupported])
  {
    v8 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *v8 = 1;
  }
}

- (id)visibleAttachments
{
  v2 = [(ICNote *)self attachments];
  v3 = [v2 objectsPassingTest:&__block_literal_global_256];

  return v3;
}

- (id)visibleInlineAttachments
{
  v2 = [(ICNote *)self inlineAttachments];
  v3 = [v2 objectsPassingTest:&__block_literal_global_259];

  return v3;
}

- (BOOL)textStorageHasAttribute:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ICNote *)self uiAttributedString];

    v5 = v6;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = [v5 ic_range];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__ICNote_textStorageHasAttribute___block_invoke;
  v11[3] = &unk_278195358;
  v11[4] = &v12;
  [v5 enumerateAttribute:v4 inRange:v7 options:v8 usingBlock:{0, v11}];
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __34__ICNote_textStorageHasAttribute___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (BOOL)containsPlaceholderBlockOrInlineAttachments
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = [(ICNote *)self documentWithoutCreating];

  if (v3)
  {
    if ((v13[3] & 1) == 0)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __53__ICNote_containsPlaceholderBlockOrInlineAttachments__block_invoke;
      v11[3] = &unk_278195380;
      v11[4] = &v12;
      [(ICNote *)self enumerateAttachmentsInOrderUsingBlock:v11];
      if ((v13[3] & 1) == 0)
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __53__ICNote_containsPlaceholderBlockOrInlineAttachments__block_invoke_2;
        v10[3] = &unk_2781953A8;
        v10[4] = &v12;
        [(ICNote *)self enumerateInlineAttachmentsInOrderUsingBlock:v10];
      }
    }
  }

  else if ((v13[3] & 1) == 0)
  {
    v4 = [(ICNote *)self attachments];
    v5 = [v4 ic_containsObjectPassingTest:&__block_literal_global_266];
    *(v13 + 24) = v5;

    if ((v13[3] & 1) == 0)
    {
      v6 = [(ICNote *)self inlineAttachments];
      v7 = [v6 ic_containsObjectPassingTest:&__block_literal_global_268];
      *(v13 + 24) = v7;
    }
  }

  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void __53__ICNote_containsPlaceholderBlockOrInlineAttachments__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if ([v8 needsInitialFetchFromCloud])
  {
    v7 = [v8 markedForDeletion] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) |= v7;
  *a5 = *(*(*(a1 + 32) + 8) + 24);
}

void __53__ICNote_containsPlaceholderBlockOrInlineAttachments__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if ([v8 needsInitialFetchFromCloud])
  {
    v7 = [v8 markedForDeletion] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) |= v7;
  *a5 = *(*(*(a1 + 32) + 8) + 24);
}

uint64_t __53__ICNote_containsPlaceholderBlockOrInlineAttachments__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 needsInitialFetchFromCloud])
  {
    v3 = [v2 markedForDeletion] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __53__ICNote_containsPlaceholderBlockOrInlineAttachments__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 needsInitialFetchFromCloud])
  {
    v3 = [v2 markedForDeletion] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)visibleTopLevelAttachmentsCount
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note == %@ AND parentAttachment == nil", self];
  v4 = MEMORY[0x277CCA920];
  v13[0] = v3;
  v5 = +[ICCloudSyncingObject predicateForVisibleObjects];
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v4 andPredicateWithSubpredicates:v6];

  v8 = [(ICNote *)self managedObjectContext];
  v9 = [ICAttachment countOfAttachmentsMatchingPredicate:v7 context:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(ICNote *)self visibleTopLevelAttachments];
    v9 = [v10 count];

    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICNote visibleTopLevelAttachmentsCount];
    }
  }

  return v9;
}

- (id)visibleTopLevelAttachments
{
  v2 = [(ICNote *)self visibleAttachments];
  v3 = [v2 objectsPassingTest:&__block_literal_global_276];

  return v3;
}

BOOL __36__ICNote_visibleTopLevelAttachments__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 parentAttachment];
  v3 = v2 == 0;

  return v3;
}

- (id)allAttachmentsIncludingSubAttachments
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ICNote *)self attachments];
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

        v9 = *(*(&v12 + 1) + 8 * i);
        [v3 addObject:v9];
        [v9 recursivelyAddSubAttachments:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)allNoteTextAttachmentsIncludingSubAttachments:(BOOL)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__ICNote_allNoteTextAttachmentsIncludingSubAttachments___block_invoke;
  v12 = &unk_2781953D0;
  v13 = v5;
  v14 = a3;
  v6 = v5;
  [(ICNote *)self enumerateAttachmentsInOrderUsingBlock:&v9];
  v7 = [v6 copy];

  return v7;
}

void __56__ICNote_allNoteTextAttachmentsIncludingSubAttachments___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) addObject:?];
  if (*(a1 + 40) == 1)
  {
    [v3 recursivelyAddSubAttachments:*(a1 + 32)];
  }
}

- (id)allNoteTextInlineAttachments
{
  v3 = [MEMORY[0x277CBEB58] set];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ICNote_allNoteTextInlineAttachments__block_invoke;
  v7[3] = &unk_2781953F8;
  v8 = v3;
  v4 = v3;
  [(ICNote *)self enumerateInlineAttachmentsInOrderUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (id)attachmentsInOrder
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__ICNote_attachmentsInOrder__block_invoke;
  v6[3] = &unk_278195420;
  v4 = v3;
  v7 = v4;
  [(ICNote *)self enumerateAttachmentsInOrderUsingBlock:v6];

  return v4;
}

- (void)enumerateAbstractAttachmentsInOrderUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ICNote *)self uiAttributedString];

    v5 = v6;
  }

  v7 = [(ICNote *)self managedObjectContext];
  v8 = [v5 ic_range];
  v10 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ICNote_enumerateAbstractAttachmentsInOrderUsingBlock___block_invoke;
  v12[3] = &unk_278195448;
  v13 = v4;
  v11 = v4;
  [v5 ic_enumerateAbstractAttachmentsInContext:v7 range:v8 options:v10 usingBlock:{0, v12}];
}

- (void)enumerateAttachmentsInOrderUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(ICNote *)self uiAttributedString];

    v5 = v6;
  }

  v7 = [(ICNote *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__ICNote_enumerateAttachmentsInOrderUsingBlock___block_invoke;
  v9[3] = &unk_278195470;
  v10 = v4;
  v8 = v4;
  [v5 ic_enumerateAttachmentsInContext:v7 usingBlock:v9];
}

- (void)enumerateInlineAttachmentsInOrderUsingBlock:(id)a3
{
  v4 = a3;
  v9 = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(ICNote *)self uiAttributedString];

    v9 = v5;
  }

  v6 = [(ICNote *)self managedObjectContext];
  v7 = [v9 ic_range];
  [v9 ic_enumerateInlineAttachmentsInContext:v6 range:v7 options:v8 usingBlock:{0, v4}];
}

- (BOOL)hasThumbnailImage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (([(ICNote *)self isPasswordProtected]& 1) == 0)
  {
    v3 = [(ICNote *)self attachments];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__ICNote_hasThumbnailImage__block_invoke;
    v6[3] = &unk_278195498;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __27__ICNote_hasThumbnailImage__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if ([v7 isVisible])
  {
    v5 = [v7 attachmentModel];
    v6 = [v5 showThumbnailInNoteList];

    if (v6)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

- (_NSRange)rangeForAttachment:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3010000000;
  v26 = "";
  v27 = xmmword_2150C0620;
  if ([(ICNote *)self needsInitialFetchFromCloud])
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
      [(ICNote *)v6 rangeForAttachment:v28, v5];
    }

LABEL_8:
    v10 = v5;
    goto LABEL_9;
  }

  if (([v4 markedForDeletion] & 1) != 0 || (objc_msgSend(v4, "note"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == self, v7, !v8))
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v4 shortLoggingDescription];
      [(ICCloudSyncingObject *)self shortLoggingDescription];
      objc_claimAutoreleasedReturnValue();
      [ICNote rangeForAttachment:];
    }

    goto LABEL_8;
  }

  v10 = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    v15 = [(ICNote *)self uiAttributedString];

    v10 = v15;
  }

  v16 = [(ICNote *)self managedObjectContext];
  v17 = [v10 ic_range];
  v19 = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __29__ICNote_rangeForAttachment___block_invoke;
  v20[3] = &unk_2781954C0;
  v21 = v4;
  v22 = &v23;
  [v10 ic_enumerateAbstractAttachmentsInContext:v16 range:v17 options:v19 usingBlock:{0, v20}];

  v5 = v21;
LABEL_9:

  v11 = v24[4];
  v12 = v24[5];
  _Block_object_dispose(&v23, 8);

  v13 = v11;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

uint64_t __29__ICNote_rangeForAttachment___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    v5 = *(*(result + 40) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
    *a5 = 1;
  }

  return result;
}

- (id)allDrawings
{
  v3 = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__ICNote_allDrawings__block_invoke;
  v7[3] = &unk_278195420;
  v8 = v3;
  v4 = v3;
  [(ICNote *)self enumerateAttachmentsInOrderUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __21__ICNote_allDrawings__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 attachmentModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 attachmentModel];
    v7 = [v6 handwritingRecognitionDrawing];

    if (!v7)
    {
      v8 = [v3 attachmentModel];
      v7 = [v8 newDrawingFromMergeableData];
    }

    [*(a1 + 32) ic_addNonNilObject:v7];
LABEL_13:

    goto LABEL_14;
  }

  if ([v3 attachmentType] == 13)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [ICSystemPaperDrawingsHelper drawingsForAttachment:v3, 0];
    v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          [v13 setRecognitionEnabled:1];
          [*(a1 + 32) addObject:v13];
        }

        v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)visibleAttachmentsWithType:(signed __int16)a3
{
  v4 = [(ICNote *)self visibleAttachments];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ICNote_visibleAttachmentsWithType___block_invoke;
  v7[3] = &__block_descriptor_34_e26_B24__0__ICAttachment_8_B16l;
  v8 = a3;
  v5 = [v4 objectsPassingTest:v7];

  return v5;
}

- (id)attachmentsWithUTType:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__ICNote_attachmentsWithUTType___block_invoke;
  v13 = &unk_278195508;
  v14 = v4;
  v15 = v5;
  v6 = v5;
  v7 = v4;
  [(ICNote *)self enumerateAttachmentsInOrderUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

void __32__ICNote_attachmentsWithUTType___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 typeUTI];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)notifyAttachmentsNoteWillMoveToRecentlyDeletedFolder
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ICNote *)self attachmentsInOrder];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) noteWillMoveToRecentlyDeletedFolder];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)refreshNoteTextFromDataStore
{
  if (self->_document)
  {
    [(ICNote *)self didChangeNoteText];
  }
}

- (unint64_t)mergeWithNoteData:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__ICNote_mergeWithNoteData___block_invoke;
  v8[3] = &unk_278195138;
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = [(ICNote *)self performMerge:v8];

  return v6;
}

uint64_t __28__ICNote_mergeWithNoteData___block_invoke(uint64_t a1)
{
  v2 = [ICTTMergeableStringVersionedDocument alloc];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [(ICTTVersionedDocument *)v2 initWithData:v3 replicaID:v4];

  v6 = [*(a1 + 40) document];
  v7 = [v6 mergeWithStringVersionedDocument:v5];

  return v7;
}

- (unint64_t)performMerge:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ICNoteWillPerformMergeNotification" object:self];

  [(ICNote *)self setIsPerformingMerge:1];
  [(ICNote *)self willChangeValueForKey:@"isEmpty"];
  v6 = [(ICNote *)self mergeableString];
  [v6 generateIdsForLocalChanges];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)self noteWillMergeDocumentWithUserInfo:v7];
  }

  v8 = v4[2](v4);
  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)self noteDidMergeNoteDocumentWithUserInfo:v7];
  }

  if (v8 == 2 && ([(ICNote *)self needsInitialFetchFromCloud]& 1) == 0)
  {
    [(ICNote *)self regenerateTitle:1 snippet:1];
  }

  [(ICNote *)self didChangeValueForKey:@"isEmpty"];
  [(ICNote *)self setIsPerformingMerge:0];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = @"MergeResult";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v9 postNotificationName:@"ICNoteDidPerformMergeNotification" object:self userInfo:v11];

  return v8;
}

- (void)replaceWithDocument:(id)a3
{
  v4 = a3;
  [(ICNote *)self willChangeValueForKey:@"isEmpty"];
  document = self->_document;
  self->_document = v4;
  v6 = v4;

  LOBYTE(document) = objc_opt_respondsToSelector();
  if (document)
  {
    [(ICNote *)self noteDidReplaceDocument];
  }

  [(ICNote *)self regenerateTitle:1 snippet:1];
  [(ICCloudSyncingObject *)self markShareDirtyIfNeededWithReason:@"Reset document"];

  [(ICNote *)self didChangeValueForKey:@"isEmpty"];
}

- (BOOL)saveNoteData
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_document)
  {
    v4 = os_log_create("com.apple.notes", "Topotext");
    v5 = os_signpost_id_generate(v4);
    v6 = [(ICTTVersionedDocument *)self->_document serialize];
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v31 = 138412802;
      v32 = v29;
      v33 = 2112;
      v34 = v30;
      v35 = 2048;
      v36 = [v6 hash];
      _os_log_debug_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEBUG, "%@ %@ %lu", &v31, 0x20u);
    }

    if ([(ICNote *)self isPasswordProtected])
    {
      if ([(ICCloudSyncingObject *)self isAuthenticated])
      {
        v8 = v4;
        v9 = v8;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          LOWORD(v31) = 0;
          _os_signpost_emit_with_name_impl(&dword_214D51000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Serialize Encrypted NoteData", "", &v31, 2u);
        }

        v10 = [(ICCloudSyncingObject *)self cryptoStrategy];
        v11 = [v10 writeEncryptedNoteData:v6];

        v12 = v9;
        v13 = v12;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
        {
          v14 = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
          v15 = [v6 length];
          v16 = [(ICCloudSyncingObject *)self cryptoStrategy];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v31 = 138412802;
          v32 = v14;
          v33 = 2048;
          v34 = v15;
          v35 = 2112;
          v36 = v18;
          _os_signpost_emit_with_name_impl(&dword_214D51000, v13, OS_SIGNPOST_INTERVAL_END, v5, "Serialize Encrypted NoteData", "Note ID: %@, Size: %lu, Strategy: %@", &v31, 0x20u);
        }

        goto LABEL_28;
      }

      v13 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ICNote *)self saveNoteData];
      }
    }

    else
    {
      if (v6)
      {
        v19 = v4;
        v20 = v19;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          LOWORD(v31) = 0;
          _os_signpost_emit_with_name_impl(&dword_214D51000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Serialize NoteData", "", &v31, 2u);
        }

        v21 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [ICNote saveNoteData];
        }

        v22 = [(ICNote *)self noteData];
        [v22 setData:v6];

        [(ICNote *)self setCryptoTag:0];
        [(ICNote *)self setCryptoInitializationVector:0];
        [(ICNote *)self updateArchivedAndLastViewedTimeStampsAfterSavingNoteData];
        v23 = v20;
        v13 = v23;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          v24 = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
          v25 = [v6 length];
          v31 = 138412546;
          v32 = v24;
          v33 = 2048;
          v34 = v25;
          _os_signpost_emit_with_name_impl(&dword_214D51000, v13, OS_SIGNPOST_INTERVAL_END, v5, "Serialize NoteData", "Note ID: %@, Size: %lu", &v31, 0x16u);
        }

        v11 = 1;
        goto LABEL_28;
      }

      v13 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v26 = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
        v31 = 138412290;
        v32 = v26;
        _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Trying to save note data for %@, but we don't have any data", &v31, 0xCu);
      }
    }

    v11 = 0;
LABEL_28:

    return v11;
  }

  return 0;
}

- (void)updateArchivedAndLastViewedTimeStampsAfterSavingNoteData
{
  OUTLINED_FUNCTION_3();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() timestamp];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (BOOL)hasUnreadChanges
{
  v3 = [(ICCloudSyncingObject *)self serverRecord];
  v4 = [v3 lastModifiedUserRecordID];
  v5 = [v4 recordName];
  v6 = [v5 isEqualToString:*MEMORY[0x277CBBF28]];

  v7 = [(ICCloudSyncingObject *)self modificationDate];
  v8 = [(ICNote *)self lastViewedModificationDate];
  v9 = [v7 ic_isLaterThanDate:v8];

  document = self->_document;
  if (document)
  {
    v11 = [(ICTTMergeableStringVersionedDocument *)document mergeableString];
    v12 = [v11 hasLocalChanges] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return (v6 ^ 1) & v9 & v12;
}

- (void)changePinStatusIfPossible
{
  if ([(ICNote *)self isPinnable])
  {
    [(ICNote *)self setIsPinned:[(ICNote *)self isPinned]^ 1];

    [(ICNote *)self updateChangeCountWithReason:@"Changed pin state"];
  }
}

- (void)setIsPinned:(BOOL)a3
{
  v3 = a3;
  if ([(ICNote *)self isPinned]!= a3)
  {
    [(ICNote *)self willChangeValueForKey:@"isPinned"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(ICNote *)self setPrimitiveValue:v5 forKey:@"isPinned"];

    [(ICNote *)self didChangeValueForKey:@"isPinned"];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"ICNotePinnedStatusChangedNotification" object:self];

    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set isPinned"];
  }
}

- (void)markAsSystemPaperIfNeeded:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(ICNote *)self markAsMathNoteIfNeeded:0];
    [(ICNote *)self markAsCallNoteIfNeeded:0];
  }

  if ([(ICNote *)self isSystemPaper]!= v3)
  {
    [(ICNote *)self setIsSystemPaper:v3];
    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set isSystemPaper"];

    [(ICNote *)self updateChangeCountWithReason:@"Set isSystemPaper"];
  }
}

- (BOOL)isMathNote
{
  v3 = [(ICNote *)self hostApplicationIdentifier];
  if ([v3 isEqual:@"com.apple.greyparrot"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICNote *)self hostApplicationIdentifier];
    v4 = [v5 isEqual:@"com.apple.calculator"];
  }

  return v4;
}

- (void)markAsMathNoteIfNeeded:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(ICNote *)self markAsSystemPaperIfNeeded:0];
    [(ICNote *)self markAsCallNoteIfNeeded:0];
  }

  if ([(ICNote *)self isMathNote]!= v3)
  {
    if (v3)
    {
      v5 = @"com.apple.calculator";
    }

    else
    {
      v5 = 0;
    }

    [(ICNote *)self setHostApplicationIdentifier:v5];
    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set isMathNote"];

    [(ICNote *)self updateChangeCountWithReason:@"Set isMathNote"];
  }
}

- (BOOL)isCallNote
{
  v2 = [(ICNote *)self hostApplicationIdentifier];
  v3 = [v2 isEqual:@"com.apple.mobilephone"];

  return v3;
}

- (void)markAsCallNoteIfNeeded:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    [(ICNote *)self markAsSystemPaperIfNeeded:0];
    [(ICNote *)self markAsMathNoteIfNeeded:0];
  }

  if ([(ICNote *)self isCallNote]!= v3)
  {
    if (v3)
    {
      v5 = @"com.apple.mobilephone";
    }

    else
    {
      v5 = 0;
    }

    [(ICNote *)self setHostApplicationIdentifier:v5];
    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set isCallNote"];

    [(ICNote *)self updateChangeCountWithReason:@"Set isCallNote"];
  }
}

- (void)markAsCallNoteIfAttachmentIsCallRecording
{
  if (![(ICNote *)self isCallNote])
  {
    v3 = [(ICNote *)self attachments];
    v4 = [v3 ic_containsObjectPassingTest:&__block_literal_global_329];

    if (v4)
    {

      [(ICNote *)self markAsCallNoteIfNeeded:1];
    }
  }
}

uint64_t __51__ICNote_markAsCallNoteIfAttachmentIsCallRecording__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 audioModel];
  v3 = [v2 audioDocument];
  v4 = [v3 isCallRecording];

  return v4;
}

- (void)setHostApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self hostApplicationIdentifier];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if (!(v8 | v10))
  {
LABEL_18:

    goto LABEL_19;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {

LABEL_15:
    v14 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICNote setHostApplicationIdentifier:];
    }

    v15 = NSStringFromSelector(sel_hostApplicationIdentifier);
    [(ICNote *)self willChangeValueForKey:v15];

    v16 = NSStringFromSelector(sel_hostApplicationIdentifier);
    [(ICNote *)self setPrimitiveValue:v4 forKey:v16];

    v5 = NSStringFromSelector(sel_hostApplicationIdentifier);
    [(ICNote *)self didChangeValueForKey:v5];
    goto LABEL_18;
  }

  v13 = [v8 isEqual:v10];

  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
}

- (void)markActivitySummaryViewed
{
  v3 = [(ICNote *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ICNote_markActivitySummaryViewed__block_invoke;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __35__ICNote_markActivitySummaryViewed__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) isSharedViaICloud];
  v3 = os_log_create("com.apple.notes", "ActivityStream");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __35__ICNote_markActivitySummaryViewed__block_invoke_cold_2(v1);
    }

    v5 = [MEMORY[0x277CBEAA8] now];
    [*v1 setLastActivitySummaryViewedDate:v5];

    [*v1 updateUserSpecificChangeCountWithReason:@"Marked activity summary viewed"];
    v3 = [*v1 managedObjectContext];
    [v3 ic_save];
  }

  else
  {
    if (v4)
    {
      __35__ICNote_markActivitySummaryViewed__block_invoke_cold_1(v1);
    }
  }
}

- (void)markLastActivityRecentUpdatesViewed
{
  v3 = [(ICNote *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ICNote_markLastActivityRecentUpdatesViewed__block_invoke;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  [v3 performBlock:v4];
}

void __45__ICNote_markLastActivityRecentUpdatesViewed__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) isSharedViaICloud];
  v3 = os_log_create("com.apple.notes", "ActivityStream");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      __45__ICNote_markLastActivityRecentUpdatesViewed__block_invoke_cold_2(v1);
    }

    v5 = [MEMORY[0x277CBEAA8] now];
    [*v1 setLastActivityRecentUpdatesViewedDate:v5];

    [*v1 updateUserSpecificChangeCountWithReason:@"Marked recent updates viewed"];
    v3 = [*v1 managedObjectContext];
    [v3 ic_save];
  }

  else
  {
    if (v4)
    {
      __45__ICNote_markLastActivityRecentUpdatesViewed__block_invoke_cold_1(v1);
    }
  }
}

- (BOOL)containsAttachmentWithDeepLink
{
  v2 = [(ICNote *)self attachments];
  v3 = [v2 ic_containsObjectPassingTest:&__block_literal_global_341];

  return v3;
}

- (NSArray)allDocumentMergeControllers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(ICNote *)self documentMergeController];
  [v3 ic_addNonNilObject:v4];

  v5 = [(ICNote *)self attachments];
  v6 = [v5 ic_compactMap:&__block_literal_global_344];
  [v3 unionSet:v6];

  v7 = [v3 allObjects];

  return v7;
}

- (void)setShowsCollaboratorCursors:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [(ICNote *)self showsCollaboratorCursorsUserDefaultsKey];
  [v5 setBool:v3 forKey:v6];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"ICNoteShowsCollaboratorCursorsDidChangeNotification" object:self];
}

- (void)addInlineAttachmentsObject:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self inlineAttachments];
  v6 = [v5 containsObject:v4];

  [(ICNote *)self managedObjectOriginal_addInlineAttachmentsObject:v4];
  if ((v6 & 1) == 0)
  {

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (void)removeInlineAttachmentsObject:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self inlineAttachments];
  v6 = [v5 containsObject:v4];

  [(ICNote *)self managedObjectOriginal_removeInlineAttachmentsObject:v4];
  if (v6)
  {

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (void)addInlineAttachments:(id)a3
{
  [(ICNote *)self managedObjectOriginal_addInlineAttachments:a3];

  [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (void)removeInlineAttachments:(id)a3
{
  [(ICNote *)self managedObjectOriginal_removeInlineAttachments:a3];

  [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:v4];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "note cannot have crypto strategy, but is asked to decrypt and merge text from record: %@", &v11, 0xCu);
    }

    [(ICCloudSyncingObject *)self setUnappliedEncryptedRecord:v4];
    v7 = 0;
  }

  return v7;
}

- (BOOL)mergeEncryptedDataFromRecord:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v6 = [v5 mergeEncryptedDataFromRecord:v4];

  return v6;
}

- (void)mergeEncryptedData:(id)a3 mergeConflict:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudSyncingObject *)self cryptoStrategy];
  [v8 mergeEncryptedData:v7 mergeConflict:v6];
}

- (void)setCryptoInitializationVector:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNote;
  v4 = a3;
  [(ICCloudSyncingObject *)&v6 setCryptoInitializationVector:v4];
  v5 = [(ICNote *)self noteData:v6.receiver];
  [v5 setCryptoInitializationVector:v4];
}

- (void)setCryptoTag:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICNote;
  v4 = a3;
  [(ICCloudSyncingObject *)&v6 setCryptoTag:v4];
  v5 = [(ICNote *)self noteData:v6.receiver];
  [v5 setCryptoTag:v4];
}

- (void)persistPendingChanges
{
  [(ICNote *)self didChangeNoteText];
  v3 = [(ICNote *)self noteData];
  [v3 saveNoteDataIfNeeded];

  v4.receiver = self;
  v4.super_class = ICNote;
  [(ICCloudSyncingObject *)&v4 persistPendingChanges];
}

- (void)clearDecryptedData
{
  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)self noteWillReleaseTextStorage];
  }

  document = self->_document;
  self->_document = 0;

  [(ICNote *)self setDecryptedData:0];
  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)self noteDidClearDecryptedData];
  }

  v4.receiver = self;
  v4.super_class = ICNote;
  [(ICCloudSyncingObject *)&v4 clearDecryptedData];
}

- (void)inlineAssetsForRecord:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICNote;
  v3 = a3;
  [(ICCloudSyncingObject *)&v4 inlineAssetsForRecord:v3];
  [v3 ic_inlineEncryptedDataAssetForKeyPrefix:{@"TextData", v4.receiver, v4.super_class}];
}

- (BOOL)regenerateTitleAndSnippetIfNecessaryForEdit:(unint64_t)a3 range:(_NSRange)a4 changeInLength:(int64_t)a5
{
  if ((a3 & 2) == 0)
  {
    return 0;
  }

  length = a4.length;
  location = a4.location;
  v9 = [(ICNote *)self rangeForTitle:0, a4.location, a4.length, a5];
  v11.length = v10 + v9 + 1;
  if (location >= v11.length)
  {
    v12 = v9;
    v13 = v10;
    v18.location = location;
    v18.length = length;
    v11.location = 0;
    if (!NSIntersectionRange(v18, v11).length)
    {
      v14 = [(ICNote *)self rangeForSnippetWithTitleRange:v12, v13];
      v16.length = v15 + v14 + 1;
      if (location >= v16.length)
      {
        v19.location = location;
        v19.length = length;
        v16.location = 0;
        if (!NSIntersectionRange(v19, v16).length)
        {
          return 0;
        }
      }
    }
  }

  return [(ICNote *)self regenerateTitle:1 snippet:1];
}

- (_NSRange)rangeForSnippetWithTitleRange:(_NSRange)a3
{
  v4 = a3.location + a3.length;
  v5 = [(ICNote *)self attributedString];
  v6 = [v5 length] - v4;

  if ((v6 & ~(v6 >> 63)) >= 255)
  {
    v7 = 255;
  }

  else
  {
    v7 = v6 & ~(v6 >> 63);
  }

  v8 = [(ICNote *)self noteAsPlainText];
  v9 = [v8 rangeOfComposedCharacterSequencesForRange:{v4, v7}];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)rangeForTitle:(BOOL *)a3
{
  v4 = MEMORY[0x277D36228];
  v5 = [(ICNote *)self attributedString];
  v6 = [v5 string];
  v7 = [v4 rangeForTitleInContent:v6 truncated:a3];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)widgetSnippetByEnumeratingAttachments
{
  if ([(ICNote *)self isPasswordProtected])
  {
    v3 = [(ICNote *)self widgetSnippet];
    v4 = [v3 length];

    if (v4)
    {
      v5 = os_log_create("com.apple.notes", "Widget");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(ICNote *)self widgetSnippetByEnumeratingAttachments];
      }

      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNote widgetSnippetByEnumeratingAttachments]" simulateCrash:1 showAlert:1 format:@"Non-empty widget snippet set on a locked note"];
    }

    v6 = 0;
  }

  else
  {
    v7 = [(ICNote *)self attributedString];
    v8 = [v7 mutableCopy];

    if ([v8 length] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ICNote *)self formatExpressionsInAttributedString:v8 range:0 textStorageOffset:255 skipStaleExpressions:0, 1];
    }

    v9 = [(ICNote *)self managedObjectContext];
    v10 = [v8 ic_range];
    v12 = v11;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__ICNote_widgetSnippetByEnumeratingAttachments__block_invoke;
    v17[3] = &unk_278195550;
    v18 = v8;
    v13 = v8;
    [v13 ic_enumerateAbstractAttachmentsInContext:v9 range:v10 options:v12 usingBlock:{0, v17}];

    v14 = MEMORY[0x277D36228];
    v15 = [v13 string];
    v6 = [v14 widgetSnippetForContent:v15];
  }

  return v6;
}

void __47__ICNote_widgetSnippetByEnumeratingAttachments__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  objc_opt_class();
  v7 = ICDynamicCast();
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 altText];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_2827172C0;
    }

    [v9 replaceCharactersInRange:a3 withString:{a4, v12}];
  }

  else
  {
    v13 = [v14 attachmentModel];
    if (![v13 providesTextContentInNote] || (objc_msgSend(v13, "textContentInNote"), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = &stru_2827172C0;
    }

    [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v11}];
  }
}

- (BOOL)regenerateTitle:(BOOL)a3 snippet:(BOOL)a4 isNewNote:(BOOL)a5
{
  v5 = a5;
  v93[1] = *MEMORY[0x277D85DE8];
  if ([(ICNote *)self containsPlaceholderBlockOrInlineAttachments]|| [(ICNote *)self needsInitialFetchFromCloud])
  {
    v9 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICNote regenerateTitle:? snippet:? isNewNote:?];
    }

    return 0;
  }

  else
  {
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = a3;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v88 = a4;
    if ([(ICNote *)self markedForDeletion])
    {
      *(v90 + 24) = 0;
      *(v86 + 24) = 0;
    }

    else if ([(ICNote *)self isPasswordProtected])
    {
      *(v86 + 24) = 0;
      if (![(ICCloudSyncingObject *)self isAuthenticated])
      {
        *(v90 + 24) = 0;
      }

      [(ICNote *)self setWidgetSnippet:0];
    }

    if ((v90[3] & 1) != 0 || *(v86 + 24) == 1)
    {
      v11 = [(ICNote *)self attributedString];
      v12 = [v11 string];

      v79 = 0;
      v80 = &v79;
      v81 = 0x3032000000;
      v82 = __Block_byref_object_copy__4;
      v83 = __Block_byref_object_dispose__4;
      v84 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x3032000000;
      v76 = __Block_byref_object_copy__4;
      v77 = __Block_byref_object_dispose__4;
      v78 = 0;
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__4;
      v71 = __Block_byref_object_dispose__4;
      v72 = 0;
      v61 = 0;
      v62 = &v61;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__4;
      v65 = __Block_byref_object_dispose__4;
      v66 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x3032000000;
      v58 = __Block_byref_object_copy__4;
      v59 = __Block_byref_object_dispose__4;
      v60 = 0;
      if (*(v86 + 24) == 1)
      {
        v13 = [(ICNote *)self widgetSnippetByEnumeratingAttachments];
        [(ICNote *)self setWidgetSnippet:v13];
      }

      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v54 = 0;
      v14 = [v12 length];
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __44__ICNote_regenerateTitle_snippet_isNewNote___block_invoke;
      v42 = &unk_2781955A0;
      v43 = self;
      v45 = &v79;
      v46 = &v89;
      v47 = &v85;
      v15 = v12;
      v44 = v15;
      v48 = v53;
      v49 = &v55;
      v50 = &v67;
      v51 = &v61;
      v52 = &v73;
      [v15 ic_enumerateParagraphsInRange:0 usingBlock:{v14, &v39}];
      if (*(v90 + 24) == 1)
      {
        v16 = v80[5];
        if (!v16 || ![v16 length])
        {
          v17 = [objc_opt_class() defaultTitleForEmptyNote];
          v18 = v80[5];
          v80[5] = v17;
        }

        v19 = [(ICNote *)self title:v39];
        v20 = v19;
        v21 = &stru_2827172C0;
        if (v19)
        {
          v21 = v19;
        }

        v22 = v21;

        v23 = [v80[5] isEqualToString:v22];
        if (v23)
        {
          v24 = 0;
        }

        else
        {
          v25 = [MEMORY[0x277D36268] userActivityPersistentIdentifierForNote:self];
          v26 = v25;
          if (v25)
          {
            v27 = MEMORY[0x277CC1EF0];
            v93[0] = v25;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
            [v27 deleteSavedUserActivitiesWithPersistentIdentifiers:v28 completionHandler:&__block_literal_global_475];
          }

          [(ICNote *)self setTitle:v80[5]];
          [(ICNote *)self setAttributedTitle:v68[5]];

          v24 = !v5;
        }

        v10 = v23 ^ 1;
      }

      else
      {
        v10 = 0;
        v24 = 0;
      }

      if (*(v86 + 24) == 1)
      {
        v29 = [(ICNote *)self snippet];
        v30 = v29;
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = &stru_2827172C0;
        }

        v32 = v31;

        if (v74[5])
        {
          v33 = v74[5];
        }

        else
        {
          v33 = &stru_2827172C0;
        }

        objc_storeStrong(v74 + 5, v33);
        v34 = [(ICNote *)self attributedSnippet];
        v35 = v62[5];
        if ((!v35 && v34 || ([v35 isEqualToAttributedString:{v34, v39, v40, v41, v42, v43}] & 1) == 0) && (-[ICNote isPasswordProtected](self, "isPasswordProtected", v39, v40, v41, v42, v43) & 1) == 0)
        {
          [(ICNote *)self setAttributedSnippet:v62[5]];
          v10 = 1;
        }

        if (([v74[5] isEqualToString:v32] & 1) == 0 && (-[ICNote isPasswordProtected](self, "isPasswordProtected") & 1) == 0)
        {
          [(ICNote *)self setSnippet:v74[5]];
          v10 = 1;
        }
      }

      if (v24)
      {
        [(ICNote *)self updateLinksWhenPossible];
      }

      v36 = [(ICNote *)self titleSourceAttachment:v39];
      v37 = v36 == v56[5];

      if (!v37)
      {
        [(ICNote *)self setTitleSourceAttachment:v56[5]];
      }

      _Block_object_dispose(v53, 8);
      _Block_object_dispose(&v55, 8);

      _Block_object_dispose(&v61, 8);
      _Block_object_dispose(&v67, 8);

      _Block_object_dispose(&v73, 8);
      _Block_object_dispose(&v79, 8);
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(&v85, 8);
    _Block_object_dispose(&v89, 8);
  }

  return v10;
}

void __44__ICNote_regenerateTitle_snippet_isNewNote___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a4 - a2;
  v9 = [*(a1 + 32) attributedString];
  v10 = [v9 attributedSubstringFromRange:{a2, v8}];
  v11 = [v10 mutableCopy];

  if ([v11 length])
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = *(a1 + 32);
      v13 = [v11 ic_range];
      [v12 formatExpressionsInAttributedString:v11 range:v13 textStorageOffset:v14 skipStaleExpressions:{a2, 1}];
    }

    v15 = [*(a1 + 32) managedObjectContext];
    v16 = [v11 ic_range];
    v18 = v17;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __44__ICNote_regenerateTitle_snippet_isNewNote___block_invoke_2;
    v54[3] = &unk_278195578;
    v58 = *(a1 + 48);
    v19 = v11;
    v55 = v19;
    v59 = *(a1 + 56);
    v20 = *(a1 + 40);
    v60 = *(a1 + 72);
    v21 = *(a1 + 32);
    v56 = v20;
    v57 = v21;
    [v19 ic_enumerateAbstractAttachmentsInContext:v15 range:v16 options:v18 usingBlock:{0, v54}];

    v22 = *(*(*(a1 + 48) + 8) + 40);
    if (v22 && [v22 length])
    {
      if (![*(*(*(a1 + 104) + 8) + 40) length] && (*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        v23 = *(*(a1 + 96) + 8);
        obj = *(v23 + 40);
        v24 = [MEMORY[0x277D36228] snippetForAttributedContent:v19 attributedSnippetIfNecessary:&obj];
        objc_storeStrong((v23 + 40), obj);
        v25 = *(*(a1 + 104) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = v24;
      }
    }

    else
    {
      v53 = 0;
      v27 = *(*(a1 + 88) + 8);
      v52 = *(v27 + 40);
      v28 = [MEMORY[0x277D36228] titleForAttributedContent:v19 truncated:&v53 attributedTitleIfNecessary:&v52];
      objc_storeStrong((v27 + 40), v52);
      v29 = *(*(a1 + 48) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        v31 = [MEMORY[0x277D36228] attributedStringByRemovingTitle:*(*(*(a1 + 48) + 8) + 40) fromAttributedString:v19];
        v32 = *(*(a1 + 96) + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = v31;

        v34 = *(*(*(a1 + 96) + 8) + 40);
        v35 = [*(a1 + 32) managedObjectContext];
        v36 = [v34 ic_searchableStringInContext:v35];
        v37 = *(*(a1 + 96) + 8);
        v38 = *(v37 + 40);
        *(v37 + 40) = v36;

        v39 = *(*(a1 + 96) + 8);
        v51 = *(v39 + 40);
        v40 = [MEMORY[0x277D36228] snippetForAttributedContent:? attributedSnippetIfNecessary:?];
        objc_storeStrong((v39 + 40), v51);
        v41 = *(*(a1 + 104) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;
      }

      if (v53 == 1)
      {
        v43 = __ICLocalizedFrameworkString_impl(@"…", @"…", 0, 1);
        v44 = [*(*(*(a1 + 48) + 8) + 40) stringByAppendingString:v43];
        v45 = *(*(a1 + 48) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v44;

        v47 = [*(*(*(a1 + 88) + 8) + 40) ic_attributedStringByAppendingString:v43];
        v48 = *(*(a1 + 88) + 8);
        v49 = *(v48 + 40);
        *(v48 + 40) = v47;
      }
    }
  }

  if ([*(*(*(a1 + 48) + 8) + 40) length] && ((*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || *(*(*(a1 + 64) + 8) + 24) != 1) || objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length") && (objc_msgSend(*(*(*(a1 + 104) + 8) + 40), "length") || (*(*(*(a1 + 72) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 64) + 8) + 24) & 1) == 0))
  {
    *a5 = 1;
  }
}

void __44__ICNote_regenerateTitle_snippet_isNewNote___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v28;
    v9 = [v8 attachmentModel];
    if ([*(*(*(a1 + 56) + 8) + 40) length] || !objc_msgSend(v9, "providesStandaloneTitleForNote"))
    {
LABEL_23:
      if (![v9 providesTextContentInNote] || (objc_msgSend(v9, "textContentInNote"), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v18 = &stru_2827172C0;
      }

      [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v18}];

      goto LABEL_27;
    }

    if (!a3 || ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "invertedSet"), v11 = objc_claimAutoreleasedReturnValue(), v10, objc_msgSend(*(a1 + 32), "string"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "rangeOfCharacterFromSet:options:range:", v11, 0, 0, a3), v12, v11, v13 == 0x7FFFFFFFFFFFFFFFLL))
    {
      if ([v8 needsInitialFetchFromCloud])
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
        *(*(*(a1 + 72) + 8) + 24) = 0;
        goto LABEL_21;
      }

      if ([v8 attachmentType] == 11)
      {
        v24 = [v8 userTitle];
        if (v24)
        {
        }

        else if ([*(a1 + 40) ic_containsNonWhitespaceAndAttachmentCharacters])
        {
          goto LABEL_21;
        }
      }

      v25 = [v9 standaloneTitleForNote];
      v26 = *(*(a1 + 56) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

LABEL_21:
    if ([*(*(*(a1 + 56) + 8) + 40) length])
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_28;
  }

  v14 = v28;
  v15 = [v14 altText];
  v16 = v15;
  v17 = &stru_2827172C0;
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  if ([v14 isLinkAttachment])
  {
    v19 = [v14 tokenContentIdentifier];
    v20 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(v19);

    v21 = [ICAppURLUtilities noteIdentifierFromNotesAppURL:v20];
    v22 = [*(a1 + 48) identifier];
    v23 = [v22 caseInsensitiveCompare:v21];

    if (!v23)
    {

      v18 = &stru_2827172C0;
    }
  }

  [*(a1 + 32) replaceCharactersInRange:a3 withString:{a4, v18}];
LABEL_27:

LABEL_28:
}

- (void)updateLinksWhenPossible
{
  v3 = [(ICNote *)self updateLinksSelectorDelayer];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel__updateLinksOnMainThreadSelectorDelayer delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.2];
    [(ICNote *)self setUpdateLinksSelectorDelayer:v4];
  }

  v5 = [(ICNote *)self managedObjectContext];
  v6 = [v5 concurrencyType];

  if (v6 == 2)
  {
    v7 = [(ICNote *)self updateLinksSelectorDelayer];
    [v7 requestFire];
  }
}

- (void)_updateLinksOnMainThreadSelectorDelayer
{
  v3 = [(ICNote *)self managedObjectContext];
  v4 = [v3 concurrencyType];

  if (v4 == 2)
  {
    v5 = [(ICNote *)self titleForLinking];
    if ([v5 length])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      v6 = [(ICNote *)self managedObjectContext];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__ICNote__updateLinksOnMainThreadSelectorDelayer__block_invoke;
      v8[3] = &unk_2781955C8;
      v9 = v5;
      v10 = self;
      v11 = &v12;
      [ICInlineAttachment enumerateLinksToNote:self batchSize:100 visibleOnly:1 saveAfterBatch:0 context:v6 usingBlock:v8];

      if (*(v13 + 24) == 1)
      {
        v7 = [(ICNote *)self managedObjectContext];
        [v7 ic_saveWithLogDescription:@"Saving updated linked note titles"];
      }

      _Block_object_dispose(&v12, 8);
    }
  }
}

void __49__ICNote__updateLinksOnMainThreadSelectorDelayer__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 altText];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if ((v5 & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) length];
      v9 = [v3 ic_loggingIdentifier];
      v10 = [*(a1 + 40) ic_loggingIdentifier];
      v11 = 134218498;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEBUG, "Updating altText (length=%lu) for link (%@) to note (%@)", &v11, 0x20u);
    }

    [v3 setAltText:*(a1 + 32)];
    [v3 updateChangeCountWithReason:@"Updated alt text from note title"];
    v7 = [v3 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICInlineAttachmentDataChangedNotification"];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (signed)attachmentContentInfoType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(ICNote *)self attachments];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ICNote_attachmentContentInfoType__block_invoke;
  v4[3] = &unk_278195498;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOWORD(v2) = *(v6 + 12);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __35__ICNote_attachmentContentInfoType__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [v9 shouldShowInContentInfoText];
  v6 = v9;
  if (v5)
  {
    v7 = [v9 attachmentTypeIgnoringSupport];
    v8 = *(*(a1 + 32) + 8);
    if (v7 <= 1)
    {
      *(v8 + 24) = v7;
      *a3 = 1;
LABEL_8:
      v6 = v9;
      goto LABEL_9;
    }

    if (!*(v8 + 24))
    {
      *(v8 + 24) = v7;
      goto LABEL_8;
    }

    v6 = v9;
    if (*(v8 + 24) != v7)
    {
      *(v8 + 24) = 0;
      *a3 = 1;
    }
  }

LABEL_9:
}

- (int64_t)attachmentContentInfoCount
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA940] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(ICNote *)self attachments];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 shouldShowInContentInfoText])
        {
          v12 = [v11 attachmentModel];
          v13 = [v12 isIncludedInGenericAttachmentCount];

          v7 += v13;
          v14 = [v11 attachmentModel];
          v15 = objc_opt_class();

          if (v15 == objc_opt_class())
          {
            ++v8;
          }

          else
          {
            [v3 addObject:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
    v16 = v8 == 0;
  }

  else
  {
    v7 = 0;
    v16 = 1;
  }

  if ([v3 count] == 1 && v16)
  {
    v18 = [v3 anyObject];
    v7 = [v3 countForObject:v18];
  }

  return v7;
}

- (NSString)contentInfoText
{
  if ([(ICNote *)self isPasswordProtected])
  {
    v3 = [ICNote snippetForPasswordProtectedNote:self];
  }

  else
  {
    v4 = objc_opt_class();
    v5 = [(ICNote *)self snippet];
    v6 = [(ICNote *)self attachmentContentInfoType];
    v7 = [(ICNote *)self attachmentContentInfoCount];
    v8 = [(ICNote *)self account];
    v3 = [v4 contentInfoTextWithSnippet:v5 attachmentContentInfoType:v6 attachmentContentInfoCount:v7 account:v8];
  }

  return v3;
}

- (NSAttributedString)attributedContentInfoText
{
  if ([(ICNote *)self isPasswordProtected])
  {
    v3 = [ICNote snippetForPasswordProtectedNote:self];
    v4 = [v3 ic_attributedString];
  }

  else
  {
    v3 = [(ICNote *)self attributedSnippet];
    if (!v3)
    {
      v3 = [(ICNote *)self snippet];

      if (v3)
      {
        v5 = objc_alloc(MEMORY[0x277CCA898]);
        v6 = [(ICNote *)self snippet];
        v3 = [v5 initWithString:v6];
      }
    }

    v7 = objc_opt_class();
    v8 = [(ICNote *)self attachmentContentInfoType];
    v9 = [(ICNote *)self attachmentContentInfoCount];
    v10 = [(ICNote *)self account];
    v4 = [v7 contentInfoAttributedTextWithSnippet:v3 attachmentContentInfoType:v8 attachmentContentInfoCount:v9 account:v10];
  }

  return v4;
}

- (NSString)widgetInfoText
{
  v3 = MEMORY[0x277D36228];
  v4 = [(ICNote *)self title];
  v5 = [(ICNote *)self widgetSnippet];
  v6 = [v3 stringByRemovingTitle:v4 fromString:v5];

  v7 = [v6 ic_trimmedString];

  if ([(ICNote *)self isPasswordProtected])
  {
    v8 = [ICNote snippetForPasswordProtectedNote:self];
  }

  else
  {
    v9 = objc_opt_class();
    v10 = [(ICNote *)self attachmentContentInfoType];
    v11 = [(ICNote *)self attachmentContentInfoCount];
    v12 = [(ICNote *)self account];
    v8 = [v9 contentInfoTextWithSnippet:v7 attachmentContentInfoType:v10 attachmentContentInfoCount:v11 account:v12];
  }

  return v8;
}

+ (id)contentInfoTextWithSnippet:(id)a3 attachmentContentInfoType:(signed __int16)a4 attachmentContentInfoCount:(int64_t)a5 account:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = [v9 ic_containsHashtagPrefix];
  if (!v10 || !v11)
  {
LABEL_6:
    if ([v9 length])
    {
      v17 = v9;
    }

    else
    {
      v17 = [ICAttachmentModel contentInfoTextForAttachmentType:v8 withCount:a5];
    }

    v16 = v17;
    goto LABEL_10;
  }

  v12 = [v9 ic_withoutHashtagPrefix];
  v13 = [ICHashtag standardizedHashtagRepresentationForDisplayText:v12];

  v14 = [ICHashtag hashtagWithStandardizedContent:v13 account:v10];
  v15 = [v14 displayText];
  if (![v15 length])
  {

    goto LABEL_6;
  }

  v16 = [v15 ic_withHashtagPrefix];

LABEL_10:

  return v16;
}

+ (id)contentInfoAttributedTextWithSnippet:(id)a3 attachmentContentInfoType:(signed __int16)a4 attachmentContentInfoCount:(int64_t)a5 account:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = [v9 string];
  v12 = [v11 ic_containsHashtagPrefix];

  if (v10 && v12)
  {
    v13 = [v9 string];
    v14 = [v13 ic_withoutHashtagPrefix];
    v15 = [ICHashtag standardizedHashtagRepresentationForDisplayText:v14];

    v16 = [ICHashtag hashtagWithStandardizedContent:v15 account:v10];
    v17 = [v16 displayText];
    if ([v17 length])
    {
      v18 = objc_alloc(MEMORY[0x277CCA898]);
      v19 = [v17 ic_withHashtagPrefix];
      v20 = [v18 initWithString:v19];

      goto LABEL_9;
    }
  }

  if ([v9 length])
  {
    v20 = v9;
  }

  else
  {
    v21 = [ICAttachmentModel contentInfoTextForAttachmentType:v8 withCount:a5];
    v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v21];
  }

LABEL_9:

  return v20;
}

- (void)setNeedsInitialFetchFromCloud:(BOOL)a3
{
  v3 = a3;
  if ([(ICNote *)self needsInitialFetchFromCloud]!= a3)
  {
    v5 = [(ICNote *)self folder];
    [v5 willChangeValueForKey:@"visibleNotes"];

    v6 = [(ICNote *)self account];
    [v6 willChangeValueForKey:@"visibleNotes"];

    v9.receiver = self;
    v9.super_class = ICNote;
    [(ICCloudSyncingObject *)&v9 setNeedsInitialFetchFromCloud:v3];
    v7 = [(ICNote *)self folder];
    [v7 didChangeValueForKey:@"visibleNotes"];

    v8 = [(ICNote *)self account];
    [v8 didChangeValueForKey:@"visibleNotes"];
  }
}

- (void)setAccount:(id)a3
{
  v8 = a3;
  v4 = [(ICNote *)self account];
  v5 = [v4 isEqual:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [(ICNote *)self attachments];
    v7 = [v6 copy];
    [v7 makeObjectsPerformSelector:sel_accountWillChangeToAccount_ withObject:v8];
  }

  [(ICNote *)self willChangeValueForKey:@"account"];
  [(ICNote *)self setPrimitiveValue:v8 forKey:@"account"];
  [(ICNote *)self didChangeValueForKey:@"account"];
}

- (void)setFolder:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self folder];
  if (v5 != v4)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICNote *)v4 setFolder:v6];
    }

    [(ICNote *)self willChangeValueForKey:@"folder"];
    [(ICNote *)self willChangeValueForKey:@"parentCloudObject"];
    [(ICNote *)self setPrimitiveFolder:v4];
    [(ICNote *)self didChangeValueForKey:@"folder"];
    [(ICNote *)self didChangeValueForKey:@"parentCloudObject"];
    if (!v4)
    {
      v7 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self setFolder:v7];
      }
    }

    v8 = [v4 account];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 account];
      v11 = [(ICNote *)self account];

      if (v10 != v11)
      {
        v12 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(ICNote *)v4 setFolder:v12];
        }

        v13 = [v4 account];
        [(ICNote *)self setAccount:v13];
      }
    }

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
    [v5 markShareDirtyIfNeededWithReason:@"Updated note's folder"];
    [v4 markShareDirtyIfNeededWithReason:@"Updated note's folder"];
  }
}

- (void)setMarkedForDeletion:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNote *)self folder];
  [v5 willChangeValueForKey:@"visibleNotesCount"];
  [v5 willChangeValueForKey:@"children"];
  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 setMarkedForDeletion:v3];
  [v5 didChangeValueForKey:@"children"];
  [v5 didChangeValueForKey:@"visibleNotesCount"];
}

- (void)setLegacyManagedObjectID:(id)a3
{
  v5 = [a3 URIRepresentation];
  v4 = [v5 absoluteString];
  [(ICNote *)self setLegacyManagedObjectIDURIRepresentation:v4];
}

- (ICTTVectorMultiTimestamp)timestamp
{
  v2 = [(ICNote *)self document];
  v3 = [v2 mergeableString];
  v4 = [v3 timestamp];

  return v4;
}

- (ICTTVectorMultiTimestamp)lastNotifiedTimestamp
{
  lastNotifiedTimestamp = self->_lastNotifiedTimestamp;
  if (!lastNotifiedTimestamp)
  {
    v4 = [(ICNote *)self lastNotifiedTimestampData];
    if (v4)
    {
      v5 = [[ICTTVectorMultiTimestamp alloc] initWithData:v4 andCapacity:2];
      v6 = self->_lastNotifiedTimestamp;
      self->_lastNotifiedTimestamp = v5;
    }

    lastNotifiedTimestamp = self->_lastNotifiedTimestamp;
  }

  return lastNotifiedTimestamp;
}

- (void)setLastNotifiedTimestamp:(id)a3
{
  v4 = [a3 serialize];
  [(ICNote *)self setLastNotifiedTimestampData:v4];

  lastNotifiedTimestamp = self->_lastNotifiedTimestamp;
  self->_lastNotifiedTimestamp = 0;
}

- (ICTTVectorMultiTimestamp)lastViewedTimestamp
{
  lastViewedTimestamp = self->_lastViewedTimestamp;
  if (!lastViewedTimestamp)
  {
    v4 = [(ICNote *)self lastViewedTimestampData];
    if (v4)
    {
      v5 = [[ICTTVectorMultiTimestamp alloc] initWithData:v4 andCapacity:2];
      v6 = self->_lastViewedTimestamp;
      self->_lastViewedTimestamp = v5;
    }

    lastViewedTimestamp = self->_lastViewedTimestamp;
  }

  return lastViewedTimestamp;
}

- (void)setLastViewedTimestamp:(id)a3
{
  v4 = [a3 serialize];
  [(ICNote *)self setLastViewedTimestampData:v4];

  lastViewedTimestamp = self->_lastViewedTimestamp;
  self->_lastViewedTimestamp = 0;
}

- (void)setLastActivityRecentUpdatesViewedDate:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self recentUpdatesFirstSeenDate];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [(ICNote *)self setRecentUpdatesFirstSeenDate:v6];
  }

  if (!self->_recentUpdatesGenerationDate)
  {
    v7 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    recentUpdatesGenerationDate = self->_recentUpdatesGenerationDate;
    self->_recentUpdatesGenerationDate = v7;
  }

  [(ICNote *)self willChangeValueForKey:@"lastActivityRecentUpdatesViewedDate"];
  [(ICNote *)self setPrimitiveValue:v4 forKey:@"lastActivityRecentUpdatesViewedDate"];

  [(ICNote *)self didChangeValueForKey:@"lastActivityRecentUpdatesViewedDate"];
}

- (NSDate)recentUpdatesGenerationDate
{
  if ([(ICCloudSyncingObject *)self isInCloud]&& ([(ICCloudSyncingObject *)self userSpecificServerRecord], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = 0;
  }

  else if (self->_recentUpdatesGenerationDate && (-[ICNote recentUpdatesFirstSeenDate](self, "recentUpdatesFirstSeenDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 ic_isLaterThanUnitsAgo:64 value:10], v4, v5))
  {
    v6 = self->_recentUpdatesGenerationDate;
  }

  else
  {
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = [v7 dateByAddingUnit:16 value:-7 toDate:v8 options:0];

    v10 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    LODWORD(v8) = [v10 ic_isLaterThanDate:v9];

    if (v8)
    {
      v6 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    }

    else
    {
      v11 = [(ICCloudSyncingObject *)self shareTimestamp];
      if (!v11 || (v12 = [v9 ic_isLaterThanDate:v11], v13 = v9, (v12 & 1) == 0))
      {
        v13 = v11;
      }

      v6 = v13;
    }
  }

  return v6;
}

- (void)clearRecentUpdatesGenerationDateIfNeeded
{
  if ([(ICNote *)self hasRecentExternalEdits])
  {
    v3 = [(ICCloudSyncingObject *)self viewContext];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__ICNote_clearRecentUpdatesGenerationDateIfNeeded__block_invoke;
    v5[3] = &unk_278194AD8;
    v6 = v3;
    v7 = self;
    v4 = v3;
    [v4 performBlockAndWait:v5];
  }
}

void __50__ICNote_clearRecentUpdatesGenerationDateIfNeeded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectID];
  v4 = [v1 ic_existingObjectWithID:v2];

  v3 = [v4 lastActivityRecentUpdatesViewedDate];
  [v4 setRecentUpdatesGenerationDate:v3];

  [v4 setRecentUpdatesFirstSeenDate:0];
}

- (id)ic_loggingValues
{
  v3 = [(ICNote *)self noteData];
  v4 = [v3 needsToBeSaved];

  v5 = [(ICNote *)self noteData];
  [v5 setNeedsToBeSaved:0];

  v16.receiver = self;
  v16.super_class = ICNote;
  v6 = [(ICCloudSyncingObject *)&v16 ic_loggingValues];
  v7 = [v6 mutableCopy];

  v8 = [(ICNote *)self noteData];
  [v8 setNeedsToBeSaved:v4];

  v9 = [(ICNote *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __26__ICNote_ic_loggingValues__block_invoke;
  v14[3] = &unk_278194AD8;
  v14[4] = self;
  v10 = v7;
  v15 = v10;
  [v9 performBlockAndWait:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

uint64_t __26__ICNote_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentWithoutCreating];

  if (v2)
  {
    v3 = MEMORY[0x277CCABB0];
    v4 = [*(a1 + 32) documentWithoutCreating];
    v5 = [v4 mergeableString];
    v6 = [v3 numberWithUnsignedInteger:{objc_msgSend(v5, "length")}];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:@"length"];
  }

  v7 = [*(a1 + 32) folder];
  v8 = [v7 identifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_2827172C0;
  }

  [*(a1 + 40) setObject:v10 forKeyedSubscript:@"folder"];

  v11 = [*(a1 + 32) account];
  v12 = [v11 identifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_2827172C0;
  }

  [*(a1 + 40) setObject:v14 forKeyedSubscript:@"account"];

  v15 = [*(a1 + 32) creationDate];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_2827172C0;
  }

  [*(a1 + 40) setObject:v17 forKeyedSubscript:@"creationDate"];

  v18 = [*(a1 + 32) modificationDate];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &stru_2827172C0;
  }

  [*(a1 + 40) setObject:v20 forKeyedSubscript:@"modificationDate"];

  v21 = [*(a1 + 32) folderModificationDate];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = &stru_2827172C0;
  }

  [*(a1 + 40) setObject:v23 forKeyedSubscript:@"folderModificationDate"];

  if ([*(a1 + 32) isPinned])
  {
    [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"pinned"];
  }

  if ([*(a1 + 32) prefersLightBackground])
  {
    [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"prefersLightBackground"];
  }

  v24 = [*(a1 + 32) titleSourceAttachment];

  if (v24)
  {
    v25 = [*(a1 + 32) titleSourceAttachment];
    v26 = [v25 identifier];
    [*(a1 + 40) setObject:v26 forKeyedSubscript:@"titleSourceAttachmentID"];
  }

  v27 = [*(a1 + 32) attachments];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [*(a1 + 32) attachments];
    v30 = [v29 allObjects];
    v31 = [v30 valueForKey:@"recordName"];
    [*(a1 + 40) setObject:v31 forKeyedSubscript:@"attachments"];
  }

  v32 = [*(a1 + 32) inlineAttachments];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [*(a1 + 32) inlineAttachments];
    v35 = [v34 allObjects];
    v36 = [v35 valueForKey:@"recordName"];
    [*(a1 + 40) setObject:v36 forKeyedSubscript:@"inlineAttachments"];
  }

  v37 = [*(a1 + 32) legacyContentHashAtImport];

  if (v37)
  {
    v38 = [*(a1 + 32) legacyContentHashAtImport];
    [*(a1 + 40) setObject:v38 forKeyedSubscript:@"legacyContentHashAtImport"];
  }

  v39 = [*(a1 + 32) legacyImportDeviceIdentifier];

  if (v39)
  {
    v40 = [*(a1 + 32) legacyImportDeviceIdentifier];
    [*(a1 + 40) setObject:v40 forKeyedSubscript:@"legacyImportDeviceIdentifier"];
  }

  v41 = [*(a1 + 32) legacyModificationDateAtImport];

  if (v41)
  {
    v42 = [*(a1 + 32) legacyModificationDateAtImport];
    [*(a1 + 40) setObject:v42 forKeyedSubscript:@"legacyModificationDateAtImport"];
  }

  v43 = [*(a1 + 32) lastNotifiedDate];

  if (v43)
  {
    v44 = [*(a1 + 32) lastNotifiedDate];
    [*(a1 + 40) setObject:v44 forKeyedSubscript:@"lastNotifiedDate"];
  }

  result = [*(a1 + 32) isSystemPaper];
  if (result)
  {
    v46 = MEMORY[0x277CBEC38];
    v47 = *(a1 + 40);

    return [v47 setObject:v46 forKeyedSubscript:@"isSystemPaper"];
  }

  return result;
}

- (ICMergeableDictionary)replicaIDToUserID
{
  replicaIDToUserID = self->_replicaIDToUserID;
  if (replicaIDToUserID)
  {
    v4 = replicaIDToUserID;
    v5 = self->_replicaIDToUserID;
    self->_replicaIDToUserID = v4;
  }

  else
  {
    v6 = [ICMergeableDictionary alloc];
    v5 = [(ICNote *)self replicaIDToUserIDDictData];
    v7 = [(ICCloudSyncingObject *)self currentReplicaID];
    v8 = [(ICMergeableDictionary *)v6 initWithData:v5 replicaID:v7];
    v9 = self->_replicaIDToUserID;
    self->_replicaIDToUserID = v8;
  }

  v10 = self->_replicaIDToUserID;

  return v10;
}

- (BOOL)addUserID:(id)a3 forReplicaID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICNote *)self replicaIDToUserID];
  v9 = [v7 UUIDString];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [(ICNote *)self replicaIDToUserID];
    v12 = [v7 UUIDString];
    [v11 setObject:v6 forKeyedSubscript:v12];

    v13 = [(ICNote *)self replicaIDToUserID];
    v14 = [v13 encodedData];
    [(ICNote *)self setReplicaIDToUserIDDictData:v14];
  }

  return v10 == 0;
}

- (unint64_t)mergeReplicaIDToUserID:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self replicaIDToUserIDDictData];
  if (v5 && (v6 = v5, -[ICNote replicaIDToUserID](self, "replicaIDToUserID"), v7 = objc_claimAutoreleasedReturnValue(), [v7 allKeys], v8 = objc_claimAutoreleasedReturnValue(), -[ICCloudSyncingObject deviceReplicaIDs](self, "deviceReplicaIDs"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v7, v6, !v10))
  {
    v15 = [(ICNote *)self replicaIDToUserID];
    v13 = [v15 mergeWithDictionary:v4];

    if (v13 != 2)
    {
      goto LABEL_5;
    }

    v16 = [(ICNote *)self replicaIDToUserID];
    v17 = [v16 encodedData];
    [(ICNote *)self setReplicaIDToUserIDDictData:v17];
  }

  else
  {
    [(ICNote *)self willChangeValueForKey:@"replicaIDToUserID"];
    v11 = [v4 encodedData];
    [(ICNote *)self setReplicaIDToUserIDDictData:v11];

    replicaIDToUserID = self->_replicaIDToUserID;
    self->_replicaIDToUserID = 0;

    [(ICNote *)self didChangeValueForKey:@"replicaIDToUserID"];
  }

  v13 = 2;
LABEL_5:

  return v13;
}

- (void)setOutlineStateData:(id)a3
{
  v4 = a3;
  v6 = NSStringFromSelector(sel_outlineStateData);
  [(ICNote *)self willChangeValueForKey:v6];
  [(ICNote *)self setPrimitiveValue:v4 forKey:v6];

  [(ICNote *)self didChangeValueForKey:v6];
  outlineState = self->_outlineState;
  self->_outlineState = 0;
}

- (BOOL)updateDeviceReplicaIDsToUserIDIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  if (([(ICNote *)self isDeleted]& 1) == 0 && ![(ICNote *)self markedForDeletion])
  {
    v6 = [(ICNote *)self cloudAccount];
    v7 = ICNotesAppBundleIdentifier();
    v5 = [v6 replicaIDForBundleIdentifier:v7];

    if (!v5)
    {
      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
      }

      LOBYTE(v4) = 0;
      v3 = v9;
      goto LABEL_18;
    }

    v8 = [(ICNote *)self cloudAccount];
    v3 = [v8 userRecordName];

    if (v3)
    {
      if (![(ICNote *)self needsInitialFetchFromCloud])
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v9 = [(ICCloudSyncingObject *)self deviceReplicaIDs];
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v11)
        {
          v12 = v11;
          v4 = 0;
          v13 = *v16;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v4 |= [(ICNote *)self addUserID:v3 forReplicaID:*(*(&v15 + 1) + 8 * i)];
            }

            v12 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v12);
          goto LABEL_18;
        }

LABEL_17:
        LOBYTE(v4) = 0;
LABEL_18:

        goto LABEL_19;
      }

      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
      }
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
      }
    }

    goto LABEL_17;
  }

  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
  }

  LOBYTE(v4) = 0;
  v5 = v3;
LABEL_19:

  return v4 & 1;
}

- (id)userIDForReplicaID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] CR_unserialized];
  if ([v4 isEqual:v5])
  {
    v6 = [(ICNote *)self account];
    v7 = [v6 userRecordName];
  }

  else
  {
    v6 = [(ICNote *)self replicaIDToUserID];
    v8 = [v4 UUIDString];
    v7 = [v6 objectForKeyedSubscript:v8];
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [MEMORY[0x277CCAD78] CR_unknown];
    v9 = [v10 UUIDString];
  }

  return v9;
}

- (id)participantForReplicaID:(id)a3
{
  v4 = [(ICNote *)self userIDForReplicaID:a3];
  v5 = [MEMORY[0x277CCAD78] CR_unknown];
  v6 = [v5 UUIDString];
  if ([v4 isEqual:v6])
  {
    v7 = 0;
  }

  else
  {
    v7 = [(ICCloudSyncingObject *)self participantForUserID:v4];
  }

  return v7;
}

- (void)updateDerivedAttributesIfNeeded
{
  v3 = [(ICNote *)self noteData];
  if (v3)
  {
    v16 = v3;
    if (([(ICNote *)self needsInitialFetchFromCloud]& 1) == 0)
    {
      if (self->_document)
      {
      }

      else
      {
        v4 = [(ICNote *)self needsInitialDerivedAttributesUpdate];

        if (!v4)
        {
          return;
        }
      }

      v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote hasChecklistOnlyInProgress:](self, "hasChecklistOnlyInProgress:", 0)}];
      v5 = [(ICNote *)self hasChecklist];
      v6 = [v5 isEqualToNumber:v16];

      if ((v6 & 1) == 0)
      {
        [(ICNote *)self setHasChecklist:v16];
      }

      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote hasChecklistOnlyInProgress:](self, "hasChecklistOnlyInProgress:", 1)}];
      v8 = [(ICNote *)self hasChecklistInProgress];
      v9 = [v8 isEqualToNumber:v7];

      if ((v9 & 1) == 0)
      {
        [(ICNote *)self setHasChecklistInProgress:v7];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote textStorageHasAttribute:](self, "textStorageHasAttribute:", *MEMORY[0x277D74058])}];
      v11 = [(ICNote *)self hasSystemTextAttachments];
      v12 = [v11 isEqualToNumber:v10];

      if ((v12 & 1) == 0)
      {
        [(ICNote *)self setHasSystemTextAttachments:v10];
      }

      v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote textStorageHasAttribute:](self, "textStorageHasAttribute:", ICTTAttributeNameEmphasis)}];
      v14 = [(ICNote *)self hasEmphasis];
      v15 = [v14 isEqualToNumber:v13];

      if ((v15 & 1) == 0)
      {
        [(ICNote *)self setHasEmphasis:v13];
      }
    }

    v3 = v16;
  }
}

- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3 == 6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(ICCloudSyncingObject *)self deviceReplicaIDs];
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
          v10 = [(ICNote *)self document];
          v11 = [v10 mergeableString];
          [v11 removeTimestampsForReplicaID:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (id)notesVersionForUserID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(ICNote *)self replicaIDToUserID];
  v6 = [v5 allKeys];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v22;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v21 + 1) + 8 * i)];
        v13 = [(ICNote *)self userIDForReplicaID:v12];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          v15 = [(ICCloudSyncingObject *)self notesVersionForReplicaID:v12];
          if (!v15)
          {

            goto LABEL_16;
          }

          v16 = v15;
          if (!v9 || (v17 = [v15 integerValue], v17 < objc_msgSend(v9, "integerValue")))
          {
            v18 = v16;

            v9 = v18;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_16:
    v9 = 0;
  }

  return v9;
}

- (id)notesVersionForParticipant:(id)a3
{
  v4 = [a3 userIdentity];
  v5 = [v4 userRecordID];
  v6 = [v5 recordName];
  v7 = [(ICNote *)self notesVersionForUserID:v6];

  return v7;
}

- (id)minimumNotesVersionForUserIDs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(ICNote *)self notesVersionForUserID:*(*(&v15 + 1) + 8 * i), v15];
        if (!v10)
        {

          goto LABEL_14;
        }

        v11 = v10;
        if (!v7 || (v12 = [v10 integerValue], v12 < objc_msgSend(v7, "integerValue")))
        {
          v13 = v11;

          v7 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_14:
    v7 = 0;
  }

  return v7;
}

- (id)minimumNotesVersionForAllParticipants
{
  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    v3 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
    v4 = [v3 participants];
    v5 = [v4 ic_map:&__block_literal_global_572];

    v6 = [(ICNote *)self minimumNotesVersionForUserIDs:v5];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(objc_opt_class(), "currentNotesVersion")}];
  }

  return v6;
}

id __47__ICNote_minimumNotesVersionForAllParticipants__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userIdentity];
  v3 = [v2 userRecordID];
  v4 = [v3 recordName];

  return v4;
}

+ (id)newObjectWithIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 persistentStoreCoordinator];
  v9 = [v8 persistentStores];
  v10 = [v9 firstObject];
  v11 = [v10 options];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBE2B0]];
  v13 = [v12 BOOLValue];

  if (v13)
  {
    v14 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(Management) newObjectWithIdentifier:context:];
    }

    v15 = 0;
  }

  else
  {
    v17.receiver = a1;
    v17.super_class = &OBJC_METACLASS___ICNote;
    v15 = objc_msgSendSuper2(&v17, sel_newObjectWithIdentifier_context_, v6, v7);
    if (v7)
    {
      v14 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICNoteData" inManagedObjectContext:v7];
      [v15 setNoteData:v14];
      [v14 setNote:v15];
    }

    else
    {
      v14 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[ICNote(Management) newObjectWithIdentifier:context:];
      }
    }
  }

  return v15;
}

+ (id)newEmptyNoteInContext:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [a1 newObjectWithIdentifier:v7 context:v5];

  return v8;
}

+ (id)newNoteWithoutIdentifierInAccount:(id)a3
{
  v4 = [a3 defaultFolder];
  v5 = [a1 newObjectWithIdentifier:0 folder:v4];

  return v5;
}

+ (id)newObjectWithIdentifier:(id)a3 folder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 managedObjectContext];
    v10 = [v9 persistentStoreCoordinator];
    v11 = [v10 persistentStores];
    v12 = [v11 firstObject];
    v13 = [v12 options];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBE2B0]];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      v16 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[ICNote(Management) newObjectWithIdentifier:context:];
      }

      v17 = 0;
    }

    else
    {
      v27.receiver = a1;
      v27.super_class = &OBJC_METACLASS___ICNote;
      v17 = objc_msgSendSuper2(&v27, sel_newObjectWithIdentifier_context_, v6, v9);
      v16 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICNoteData" inManagedObjectContext:v9];
      v20 = [v8 account];
      v21 = [v20 persistentStore];
      [v17 assignToPersistentStore:v21];

      v22 = [v8 managedObjectContext];
      v23 = [v8 account];
      v24 = [v23 persistentStore];
      [v22 assignObject:v16 toPersistentStore:v24];

      [v17 setNoteData:v16];
      [v16 setNote:v17];
      [v17 setFolder:v8];
      v25 = [MEMORY[0x277CBEAA8] date];
      [v17 setFolderModificationDate:v25];
    }
  }

  else
  {
    v18 = MEMORY[0x277D36198];
    v19 = NSStringFromClass(a1);
    [v18 handleFailedAssertWithCondition:"folder" functionName:"+[ICNote(Management) newObjectWithIdentifier:folder:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no folder", v19}];

    v17 = 0;
  }

  return v17;
}

+ (id)newEmptyNoteInFolder:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [a1 newEmptyNoteWithUUID:v6 folder:v5];

  return v7;
}

+ (id)newEmptyNoteWithIdentifier:(id)a3 folder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] date];
  if (ICInternalSettingsGetBundleBoolSettingValue())
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:255830400.0];

    v8 = v9;
  }

  v10 = [a1 newObjectWithIdentifier:v6 folder:v7];
  [v10 setCreationDate:v8];
  [v10 setModificationDate:v8];
  v11 = [v10 noteData];
  [v11 setData:0];

  [v10 regenerateTitle:1 snippet:0 isNewNote:1];
  v12 = [MEMORY[0x277CBEAA8] now];
  [v10 setLastAttributionsViewedDate:v12];

  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = [v13 dateByAddingUnit:16 value:-7 toDate:v14 options:0];
  [v10 setLastActivityRecentUpdatesViewedDate:v15];

  v16 = [v10 lastActivityRecentUpdatesViewedDate];
  [v10 setLastActivitySummaryViewedDate:v16];

  if (objc_opt_respondsToSelector())
  {
    v17 = [v10 persistCreateActivityEventForObject:v10 inParentObject:v7];
  }

  return v10;
}

+ (id)newEmptyNoteWithUUID:(id)a3 folder:(id)a4
{
  v6 = a4;
  v7 = [a3 UUIDString];
  v8 = [a1 newEmptyNoteWithIdentifier:v7 folder:v6];

  return v8;
}

+ (void)deleteEmptyNote:(id)a3
{
  v4 = a3;
  if (([v4 isEmpty] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"note.isEmpty" functionName:"+[ICNote(Management) deleteEmptyNote:]" simulateCrash:1 showAlert:0 format:@"Note is not empty for deletion"];
  }

  if ([v4 isEmpty])
  {
    v5 = os_log_create("com.apple.notes", "Delete");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) deleteEmptyNote:v4];
    }

    v6 = [v4 account];
    v7 = [v6 trashFolder];
    [v4 setFolder:v7];

    v8 = [MEMORY[0x277CBEAA8] now];
    [v4 setFolderModificationDate:v8];

    [a1 deleteNote:v4];
  }
}

+ (void)deleteNote:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 hasContextOptions:64];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(Management) deleteNote:];
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v3 attachments];
    v8 = [v7 copy];

    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [ICAttachment deleteAttachment:*(*(&v24 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v3 inlineAttachments];
    v14 = [v13 copy];

    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [(ICBaseAttachment *)ICInlineAttachment deleteAttachment:*(*(&v20 + 1) + 8 * v18++)];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }

    v19 = os_log_create("com.apple.notes", "Delete");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) deleteNote:v3];
    }

    [v3 markForDeletion];
    if ([v3 requiresLegacyTombstoneAfterDeletion])
    {
      [ICLegacyTombstone addLegacyTombstoneForNote:v3];
    }
  }
}

+ (void)purgeNote:(id)a3
{
  v3 = a3;
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 hasContextOptions:64];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(Management) purgeNote:];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"ICNoteWillBeDeletedNotification" object:v3];

    v6 = [v3 managedObjectContext];
    [v6 deleteObject:v3];
  }
}

+ (id)refreshAllOfNoteWithIdentifier:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", a3];
  v8 = [a1 newFetchRequestForNotes];
  [v8 setPredicate:v7];
  [v8 setRelationshipKeyPathsForPrefetching:&unk_282747F40];
  v9 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ICNote(Management) refreshAllOfNoteWithIdentifier:context:];
  }

  v10 = [v6 executeFetchRequest:v8 error:0];
  v11 = [v10 lastObject];
  if ([v11 needsRefresh])
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:v11 context:?];
    }

    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:v11 context:?];
    }

    [v6 ic_refreshObject:v11 mergeChanges:1];
    v14 = [v11 noteData];
    [v6 ic_refreshObject:v14 mergeChanges:1];

    v15 = [v11 folder];
    [v6 ic_refreshObject:v15 mergeChanges:1];

    v16 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:v11 context:?];
    }

    v17 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:v11 context:?];
    }

    v18 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:v11 context:?];
    }

    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:v11 context:?];
    }

    v20 = [v11 textDataDecryptedIfNecessary];
    v21 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:v20 context:?];
    }

    v22 = [v11 mergeWithNoteData:v20];
    [v11 setNeedsRefresh:0];
    if (v22 == 2)
    {
      v23 = +[ICNoteContext sharedContext];
      [v23 save];
    }
  }

  return v11;
}

+ (ICNote)noteWithUUID:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 UUIDString];
  v8 = [a1 noteWithIdentifier:v7 context:v6];

  return v8;
}

+ (ICNote)noteWithIdentifier:(id)a3 includeDeleted:(BOOL)a4 accountID:(id)a5 context:(id)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = MEMORY[0x277CCAB68];
  v12 = a6;
  v13 = a3;
  v14 = [[v11 alloc] initWithString:@"identifier ==[c] %@"];
  v15 = v14;
  if (!a4)
  {
    [v14 appendString:@" AND markedForDeletion = NO"];
  }

  v16 = MEMORY[0x277CBEB18];
  v17 = MEMORY[0x277CCAC30];
  v18 = [v15 copy];
  v19 = [v17 predicateWithFormat:v18, v13];

  v27[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v21 = [v16 arrayWithArray:v20];

  if ([v10 length])
  {
    v22 = [a1 predicateForNotesInAccountWithIdentifier:v10];
    [v21 addObject:v22];
  }

  v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v21];
  v24 = [a1 notesMatchingPredicate:v23 context:v12];

  v25 = [v24 lastObject];

  return v25;
}

+ (ICNote)noteWithLegacyManagedObjectID:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [a3 URIRepresentation];
  v9 = [v8 absoluteString];
  v10 = [v6 predicateWithFormat:@"%K == %@", @"legacyManagedObjectIDURIRepresentation", v9];

  v11 = [a1 notesMatchingPredicate:v10 context:v7];

  v12 = [v11 firstObject];

  return v12;
}

+ (unint64_t)countOfAllNotesInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 newFetchRequestForNotes];
  v6 = [v4 countForFetchRequest:v5 error:0];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (id)visibleNotesInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForVisibleNotesInContext:v4];
  v6 = [a1 notesMatchingPredicate:v5 context:v4];

  return v6;
}

+ (unint64_t)countOfVisibleNotesInContext:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForVisibleNotesInContext:v4];
  v6 = [a1 countOfNotesMatchingPredicate:v5 context:v4];

  return v6;
}

+ (void)enumerateNotesInContext:(id)a3 batchSize:(unint64_t)a4 visibleOnly:(BOOL)a5 saveAfterBatch:(BOOL)a6 usingBlock:(id)a7
{
  v8 = a6;
  v9 = a5;
  v15 = a3;
  v12 = a7;
  if (v9)
  {
    v13 = [a1 predicateForVisibleNotesInContext:v15];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D36220] sortDescriptorsForCurrentTypeIncludingPinnedNotes:1];
  [a1 ic_enumerateObjectsMatchingPredicate:v13 sortDescriptors:v14 relationshipKeyPathsForPrefetching:0 context:v15 batchSize:a4 saveAfterBatch:v8 usingBlock:v12];
}

+ (id)notesMatchingPredicate:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277D36220];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sortDescriptorsForCurrentTypeIncludingPinnedNotes:1];
  v10 = [a1 ic_objectsMatchingPredicate:v8 sortDescriptors:v9 context:v7];

  return v10;
}

+ (unint64_t)countOfNotesMatchingPredicate:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 newFetchRequestForNotes];
  [v8 setPredicate:v7];

  v9 = [v6 countForFetchRequest:v8 error:0];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  return v9;
}

+ (id)noteIdentifiersMatchingPredicate:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = +[ICNote fetchRequest];
  [v8 setPredicate:v5];
  [v8 setResultType:2];
  [v8 setPropertiesToFetch:&unk_282747F58];
  v14 = 0;
  v9 = [v6 executeFetchRequest:v8 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(Management) noteIdentifiersMatchingPredicate:context:];
    }

    goto LABEL_4;
  }

  v11 = [v9 valueForKey:@"identifier"];
  if (!v11)
  {
LABEL_4:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
LABEL_7:

  objc_autoreleasePoolPop(v7);

  return v12;
}

+ (BOOL)notes:(id)a3 containSharedNotesNotSharedViaFolder:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ICNote_Management__notes_containSharedNotesNotSharedViaFolder___block_invoke;
  v8[3] = &unk_278195610;
  v9 = v5;
  v6 = v5;
  LOBYTE(a3) = [a3 ic_containsObjectPassingTest:v8];

  return a3;
}

uint64_t __65__ICNote_Management__notes_containSharedNotesNotSharedViaFolder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isSharedRootObject];
  v5 = [v3 folder];
  v6 = [v5 isSharedViaICloud];

  if (v6)
  {
    if ([*(a1 + 32) isSharedViaICloud])
    {
      v7 = [ICFolder rootSharingFolderForNote:v3];
      v8 = [v7 identifier];
      v9 = [*(a1 + 32) identifier];
      if ([v8 isEqualToString:v9])
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        v10 = [*(a1 + 32) isDescendantOfFolder:v7] ^ 1;
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return (v4 | v10) & 1;
}

+ (id)notesContainingHashtagWithStandarizedContent:(id)a3 context:(id)a4
{
  v46[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [ICInlineAttachment predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
  v8 = [ICInlineAttachment predicateForTokenContentIdentifier:v5];
  v9 = [(ICBaseAttachment *)ICInlineAttachment predicateForVisibleAttachmentsInContext:v6];
  v10 = MEMORY[0x277CCA920];
  v46[0] = v7;
  v46[1] = v8;
  v32 = v9;
  v33 = v8;
  v46[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  v13 = +[ICInlineAttachment fetchRequest];
  [v13 setPredicate:v12];
  [v13 setResultType:2];
  [v13 setPropertiesToFetch:&unk_282747F70];
  v38 = 0;
  v14 = [v6 executeFetchRequest:v13 error:&v38];
  v15 = v38;
  v16 = [MEMORY[0x277CBEB58] set];
  if (v15)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICNote(Management) notesContainingHashtagWithStandarizedContent:context:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch objects for predicate=%@: %@", v12, v15}];
  }

  else if (v14)
  {
    v29 = v7;
    v30 = v6;
    v31 = v5;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = v14;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v34 + 1) + 8 * i) objectForKeyedSubscript:@"note"];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v19);
    }

    v6 = v30;
    v5 = v31;
    v14 = v28;
    v7 = v29;
  }

  else
  {
    v23 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      *buf = 138412802;
      v41 = v24;
      v42 = 2112;
      v43 = v12;
      v44 = 2112;
      v45 = v6;
      v25 = v24;
      _os_log_impl(&dword_214D51000, v23, OS_LOG_TYPE_INFO, "Nil objects array fetching %@ (predicate=%@ context=%@)", buf, 0x20u);
    }
  }

  v26 = [v16 copy];

  return v26;
}

+ (id)systemPaperNotesFetchRequest
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [a1 newFetchRequestForNotes];
  v4 = [a1 predicateForSystemPaperNotesNotInTrash];
  [v3 setPredicate:v4];

  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v3 setSortDescriptors:v6];

  return v3;
}

+ (id)predicateForSystemPaperNotesNotInTrash
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folder.folderType != %d", 1];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"markedForDeletion == NO"];
  v5 = MEMORY[0x277CCA920];
  v6 = [a1 predicateForSystemPaperNotes];
  v10[0] = v6;
  v10[1] = v3;
  v10[2] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v8 = [v5 andPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)predicateForVisibleNotesIncludingTrash:(BOOL)a3 includingSystemPaper:(BOOL)a4 includingMathNotes:(BOOL)a5 includingCallNotes:(BOOL)a6 inContext:(id)a7
{
  v40[1] = *MEMORY[0x277D85DE8];
  v11 = [a1 predicateForVisibleObjects];
  v40[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v13 = [v12 mutableCopy];

  if (!a3)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folder.folderType != %d", 1];
    [v13 addObject:v14];
  }

  if (!a4)
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isSystemPaper == NO"];
    [v13 addObject:v15];
  }

  if (!a5)
  {
    v16 = MEMORY[0x277CCA920];
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"hostApplicationIdentifier = NIL"];
    v18 = MEMORY[0x277CCA920];
    v19 = MEMORY[0x277CCAC30];
    v38[0] = @"com.apple.greyparrot";
    v38[1] = @"com.apple.calculator";
    v39[0] = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v21 = [v19 predicateWithFormat:@"hostApplicationIdentifier IN %@", v20];
    v22 = [v18 notPredicateWithSubpredicate:v21];
    v39[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v24 = [v16 orPredicateWithSubpredicates:v23];

    [v13 addObject:v24];
  }

  if (!a6)
  {
    v25 = MEMORY[0x277CCA920];
    v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"hostApplicationIdentifier = NIL"];
    v27 = MEMORY[0x277CCA920];
    v28 = MEMORY[0x277CCAC30];
    v36 = @"com.apple.mobilephone";
    v37[0] = v26;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v30 = [v28 predicateWithFormat:@"hostApplicationIdentifier IN %@", v29];
    v31 = [v27 notPredicateWithSubpredicate:v30];
    v37[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    v33 = [v25 orPredicateWithSubpredicates:v32];

    [v13 addObject:v33];
  }

  v34 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v13];

  return v34;
}

- (NSURL)paperCoherenceContextURL
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = ICEditorExtensionBundleIdentifier();
  v6 = [v4 isEqual:v5];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  v7 = [(ICNote *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__ICNote_Management__paperCoherenceContextURL__block_invoke;
  v10[3] = &unk_278195638;
  v11 = v6;
  v10[4] = self;
  v10[5] = &v12;
  [v7 performBlockAndWait:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __46__ICNote_Management__paperCoherenceContextURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];

  if (v2)
  {
    v3 = [*(a1 + 32) account];
    if (v3)
    {
      v4 = v3;
LABEL_7:
      if (*(a1 + 48) == 1)
      {
        v6 = [MEMORY[0x277CCAA00] defaultManager];
        v7 = [v6 URLsForDirectory:9 inDomains:1];
        v8 = [v7 firstObject];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        v11 = [*(*(*(a1 + 40) + 8) + 40) URLByAppendingPathComponent:*MEMORY[0x277D360F0] isDirectory:1];
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v14 = *(*(*(a1 + 40) + 8) + 40);
        v15 = [v4 identifier];
        v16 = [v14 URLByAppendingPathComponent:v15 isDirectory:1];
        v17 = *(*(a1 + 40) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
      }

      else
      {
        v19 = [v4 accountFilesDirectoryURLInApplicationDataContainer];
        v20 = *(*(a1 + 40) + 8);
        v15 = *(v20 + 40);
        *(v20 + 40) = v19;
      }

      v21 = [*(*(*(a1 + 40) + 8) + 40) URLByAppendingPathComponent:@"CoherenceContexts" isDirectory:1];
      v22 = *(*(a1 + 40) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      v24 = *(*(*(a1 + 40) + 8) + 40);
      v25 = [*(a1 + 32) identifier];
      v26 = [v24 URLByAppendingPathComponent:v25 isDirectory:0];
      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 40);
      *(v27 + 40) = v26;

      goto LABEL_11;
    }

    v5 = [*(a1 + 32) folder];
    v4 = [v5 account];

    if (v4)
    {
      goto LABEL_7;
    }

    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46__ICNote_Management__paperCoherenceContextURL__block_invoke_cold_1();
    }
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __46__ICNote_Management__paperCoherenceContextURL__block_invoke_cold_2();
    }
  }

LABEL_11:
}

- (id)primaryEncryptedData
{
  v2 = [(ICNote *)self noteData];
  v3 = [v2 primitiveData];

  return v3;
}

- (void)setPrimaryEncryptedData:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self noteData];
  [v5 setData:v4];
}

+ (id)snippetForPasswordProtectedNote:(id)a3
{
  v3 = a3;
  if (([v3 isPasswordProtected] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"note.isPasswordProtected" functionName:"+[ICNote(Management) snippetForPasswordProtectedNote:]" simulateCrash:1 showAlert:0 format:@"Trying to get a password snippet for a non password protected note"];
  }

  if ([v3 isAuthenticated])
  {
    v4 = @"NOTE_SNIPPET_UNLOCKED";
    v5 = @"Unlocked";
  }

  else
  {
    v4 = @"NOTE_SNIPPET_LOCKED";
    v5 = @"Locked";
  }

  v6 = __ICLocalizedFrameworkStringWithDefaultValue_impl(v4, v5, 0, 1);

  return v6;
}

+ (id)allPasswordProtectedNoteIdentifiersInContext:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudSyncingObject predicateForPasswordProtectedObjects];
  v6 = [a1 noteIdentifiersMatchingPredicate:v5 context:v4];

  return v6;
}

+ (unint64_t)countOfPasswordProtectedNotesInContext:(id)a3
{
  v4 = a3;
  v5 = +[ICCloudSyncingObject predicateForPasswordProtectedObjects];
  v6 = [a1 countOfNotesMatchingPredicate:v5 context:v4];

  return v6;
}

+ (unint64_t)countOfVisiblePasswordProtectedNotesInAccount:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = [v5 predicateWithFormat:@"account == %@ && isPasswordProtected == YES", v6];
  v15[0] = v7;
  v8 = [v6 managedObjectContext];
  v9 = [a1 predicateForVisibleNotesInContext:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v4 andPredicateWithSubpredicates:v10];

  v12 = [v6 managedObjectContext];

  v13 = [a1 countOfNotesMatchingPredicate:v11 context:v12];
  return v13;
}

+ (id)passwordProtectedNoteIdentifiersForAccount:(id)a3
{
  v4 = MEMORY[0x277CCAC30];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"account == %@ && isPasswordProtected == YES", v5];
  v7 = [v5 managedObjectContext];

  v8 = [a1 noteIdentifiersMatchingPredicate:v6 context:v7];

  return v8;
}

+ (id)accountIdentifiersOfNotes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = ICDynamicCast();
        v11 = v10;
        if (v10)
        {
          v12 = [v10 account];
          v13 = [v12 identifier];
          [v4 ic_addNonNilObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

- (id)childCloudObjectsForMinimumSupportedVersionPropagation
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(ICNote *)self attachments];
  v5 = [v4 count];
  v6 = [(ICNote *)self inlineAttachments];
  v7 = [v3 arrayWithCapacity:{objc_msgSend(v6, "count") + v5}];

  v8 = [(ICNote *)self attachments];
  v9 = [v8 allObjects];
  v10 = [v9 ic_objectsPassingTest:&__block_literal_global_1037];
  [v7 addObjectsFromArray:v10];

  v11 = [(ICNote *)self inlineAttachments];
  v12 = [v11 allObjects];
  [v7 addObjectsFromArray:v12];

  v13 = [v7 copy];

  return v13;
}

BOOL __76__ICNote_Management__childCloudObjectsForMinimumSupportedVersionPropagation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 parentAttachment];
  v3 = v2 == 0;

  return v3;
}

+ (id)keyPathsForValuesAffectingCanBeSharedViaICloud
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICNote;
  v2 = objc_msgSendSuper2(&v5, sel_keyPathsForValuesAffectingCanBeSharedViaICloud);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"folder.folderType"];

  return v3;
}

- (BOOL)canBeSharedViaICloud
{
  if (![(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    v3 = [(ICNote *)self folder];
    v4 = [v3 folderType];

    if (v4 == 1)
    {
      return 0;
    }
  }

  v6.receiver = self;
  v6.super_class = ICNote;
  return [(ICCloudSyncingObject *)&v6 canBeSharedViaICloud];
}

- (BOOL)needsToDeleteShare
{
  v8.receiver = self;
  v8.super_class = ICNote;
  if ([(ICCloudSyncingObject *)&v8 needsToDeleteShare])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = [(ICCloudSyncingObject *)self serverShare];
    if (v3)
    {
      v4 = v3;
      v5 = [(ICNote *)self folder];
      v6 = [v5 isTrashFolder];

      if (v6)
      {
        LOBYTE(v3) = [(ICCloudSyncingObject *)self shareMatchesRecord];
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }
  }

  return v3;
}

- (void)didAcceptShare:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ICNote;
  [(ICCloudSyncingObject *)&v17 didAcceptShare:a3];
  v4 = [(ICNote *)self folder];
  v5 = [v4 isTrashFolder];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v8 = [(ICNote *)self account];
      v9 = [v8 defaultFolder];
      v10 = [v9 identifier];
      v11 = [(ICNote *)self account];
      v12 = [v11 identifier];
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Moving shared note %@ out of the trash to folder %@ in account %@", buf, 0x20u);
    }

    v13 = [(ICNote *)self account];
    v14 = [v13 defaultFolder];
    [(ICNote *)self setFolder:v14];

    v15 = [MEMORY[0x277CBEAA8] date];
    [(ICNote *)self setFolderModificationDate:v15];

    v16 = [MEMORY[0x277CBEAA8] date];
    [(ICNote *)self setModificationDate:v16];

    [(ICNote *)self updateChangeCountWithReason:@"Accepted share"];
  }
}

- (unint64_t)textOffsetAtSearchIndex:(unint64_t)a3 inSearchableString:(id)a4
{
  v5 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [v5 length];
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ICNote_Management__textOffsetAtSearchIndex_inSearchableString___block_invoke;
  v10[3] = &unk_278195680;
  v10[4] = &v11;
  [v5 enumerateAttribute:@"ICAttachmentSearchable" inRange:0 options:v7 usingBlock:{0, v10}];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __65__ICNote_Management__textOffsetAtSearchIndex_inSearchableString___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = a4 + *(*(*(result + 32) + 8) + 24) - 1;
  }

  return result;
}

- (_NSRange)textRangeForSearchRange:(_NSRange)a3 inSearchableString:(id)a4
{
  length = a3.length;
  v5 = a3.location - [(ICNote *)self textOffsetAtSearchIndex:a3.location inSearchableString:a4];
  v6 = length;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)addAttachmentWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 distantPast];
  v7 = [(ICBaseAttachment *)ICAttachment newAttachmentWithIdentifier:v5 note:self];

  [v7 setCreationDate:v6];
  [v7 setModificationDate:v6];
  [(ICNote *)self addAttachmentsObject:v7];
  if ([(ICNote *)self isPasswordProtected])
  {
    [v7 setIsPasswordProtected:1];
    [v7 initializeCryptoProperties];
  }

  return v7;
}

- (id)addAttachmentWithData:(id)a3 filename:(id)a4
{
  v6 = MEMORY[0x277CE1CB8];
  v7 = a4;
  v8 = a3;
  v9 = [v7 pathExtension];
  v10 = [v6 typeWithFilenameExtension:v9];
  v11 = [v10 identifier];

  v12 = [(ICNote *)self addAttachmentWithUTI:v11 data:v8 filename:v7];

  return v12;
}

- (id)addAttachmentWithFileURL:(id)a3 updateFileBasedAttributes:(BOOL)a4 analytics:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [v8 lastPathComponent];
  v10 = [(ICNote *)self addAttachmentWithFileURL:v8 filename:v9 updateFileBasedAttributes:v6 analytics:v5];

  return v10;
}

- (id)addAttachmentWithFileURL:(id)a3 filename:(id)a4 updateFileBasedAttributes:(BOOL)a5 analytics:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v29 = 0;
  v12 = *MEMORY[0x277CBE868];
  v28 = 0;
  v13 = [v10 getResourceValue:&v29 forKey:v12 error:&v28];
  v14 = v29;
  v15 = v28;
  if (v13)
  {
    v27 = v6;
    v16 = [v14 BOOLValue];
    v17 = [*MEMORY[0x277CE1D48] identifier];
    if (v16)
    {
      v18 = [*MEMORY[0x277CE1D80] identifier];

      v17 = v18;
    }

    v19 = [v10 pathExtension];
    v20 = [v19 length];

    if (v20)
    {
      v21 = MEMORY[0x277CE1CB8];
      v22 = [v10 pathExtension];
      if (v16)
      {
        [v21 typeWithFilenameExtension:v22 conformingToType:*MEMORY[0x277CE1D50]];
      }

      else
      {
        [v21 typeWithFilenameExtension:v22];
      }
      v24 = ;
      v25 = [v24 identifier];

      v17 = v25;
    }

    v23 = [(ICNote *)self addAttachmentWithUTI:v17 withURL:v10 filename:v11 updateFileBasedAttributes:v7 analytics:v27];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ICNote(AttachmentManagement) addAttachmentWithFileURL:filename:updateFileBasedAttributes:analytics:];
    }

    v23 = 0;
  }

  return v23;
}

- (id)addAttachmentWithFileWrapper:(id)a3
{
  v4 = a3;
  v5 = [v4 isDirectory];
  v6 = [*MEMORY[0x277CE1D48] identifier];
  if (v5)
  {
    v7 = [*MEMORY[0x277CE1D80] identifier];

    v6 = v7;
  }

  v8 = [ICNoteContext filenameFromFileWrapper:v4];
  v9 = [v8 pathExtension];
  v10 = [v9 length];

  if (v10)
  {
    v11 = MEMORY[0x277CE1CB8];
    v12 = [v8 pathExtension];
    if (v5)
    {
      [v11 typeWithFilenameExtension:v12 conformingToType:*MEMORY[0x277CE1D50]];
    }

    else
    {
      [v11 typeWithFilenameExtension:v12];
    }
    v13 = ;
    v14 = [v13 identifier];

    v6 = v14;
  }

  v15 = [(ICNote *)self addAttachmentWithUTI:v6];
  v16 = [v8 lastPathComponent];
  [v15 setTitle:v16];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__ICNote_AttachmentManagement__addAttachmentWithFileWrapper___block_invoke;
  v19[3] = &unk_2781956D0;
  v20 = v4;
  v17 = v4;
  [(ICNote *)self addMediaToAttachment:v15 withBlock:v19];

  return v15;
}

void __61__ICNote_AttachmentManagement__addAttachmentWithFileWrapper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addMediaWithFileWrapper:*(a1 + 32)];
  v5 = [v3 audioModel];

  if (v5)
  {
    v6 = [v3 audioModel];
    [v6 transformNewlyAddedMediaAttachment];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__ICNote_AttachmentManagement__addAttachmentWithFileWrapper___block_invoke_2;
  v8[3] = &unk_2781956A8;
  v9 = v3;
  v7 = v3;
  [v7 updatePlaceInLocationIfNeededHandler:v8];
}

void __61__ICNote_AttachmentManagement__addAttachmentWithFileWrapper___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) managedObjectContext];
    [v2 ic_save];
  }
}

- (id)addAttachmentWithRemoteFileURL:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  if (v5)
  {
    v6 = MEMORY[0x277CE1CB8];
    v7 = [v4 pathExtension];
    v8 = [v6 typeWithFilenameExtension:v7];
    v9 = [v8 identifier];
  }

  else
  {
    v9 = [*MEMORY[0x277CE1D48] identifier];
  }

  v10 = [(ICNote *)self addAttachmentWithUTI:v9];
  v11 = [v4 lastPathComponent];
  [v10 setTitle:v11];

  [v10 setRemoteFileURL:v4];

  return v10;
}

- (id)addAttachmentWithUTI:(id)a3 identifier:(id)a4 urlString:(id)a5 analytics:(BOOL)a6 regulatoryLogging:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v33[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v13)
  {
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 postNotificationName:@"ICWillAddAttachmentForNoteNotification" object:self];

    v16 = [(ICNote *)self addAttachmentWithIdentifier:v13];
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 postNotificationName:@"ICDidAddAttachmentForNoteNotification" object:self];
  }

  else
  {
    v16 = [(ICNote *)self addAttachment];
  }

  [v16 setTypeUTI:v12];
  v18 = [MEMORY[0x277CBEAA8] date];
  [v16 setCreationDate:v18];

  v19 = [MEMORY[0x277CBEAA8] date];
  [v16 setModificationDate:v19];

  v20 = [*MEMORY[0x277CE1E90] identifier];
  v21 = [v12 isEqualToString:v20];

  if (v21)
  {
    [v16 setUrlString:v14];
    if (v14)
    {
      goto LABEL_10;
    }

    v22 = MEMORY[0x277D36198];
    v23 = "urlString != ((void*)0)";
    v24 = @"Expected a valid URL for a URL attachment. Call addURLAttachmentWithURL:";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_10;
    }

    v22 = MEMORY[0x277D36198];
    v23 = "urlString == ((void*)0)";
    v24 = @"Expected no URL for a non-URL attachment.";
  }

  [v22 handleFailedAssertWithCondition:v23 functionName:"-[ICNote(AttachmentManagement) addAttachmentWithUTI:identifier:urlString:analytics:regulatoryLogging:]" simulateCrash:1 showAlert:0 format:v24];
LABEL_10:
  if (v8)
  {
    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    v32 = @"ICNoteAnalyticsAddAttachmentNotificationAttachmentKey";
    v33[0] = v16;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v25 postNotificationName:@"ICNoteAnalyticsAddAttachmentNotification" object:0 userInfo:v26];
  }

  if (v7)
  {
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    v30 = @"ICRegulatoryLoggerAttachmentKey";
    v31 = v16;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v27 postNotificationName:@"ICRegulatoryLoggerAttachmentAddedNotification" object:0 userInfo:v28];
  }

  return v16;
}

- (id)addAttachmentWithUTI:(id)a3 withURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 ic_isURLAnInternetLocator] && (objc_msgSend(MEMORY[0x277CBEBC0], "ic_urlFromWeblocFileAtURL:", v7), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(ICNote *)self addURLAttachmentWithURL:v8];
  }

  else
  {
    v10 = [(ICNote *)self addAttachmentWithUTI:v6 withURL:v7 updateFileBasedAttributes:1 analytics:1];
  }

  return v10;
}

- (id)addAttachmentWithUTI:(id)a3 withURL:(id)a4 updateFileBasedAttributes:(BOOL)a5 analytics:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v10 lastPathComponent];
  v13 = [(ICNote *)self addAttachmentWithUTI:v11 withURL:v10 filename:v12 updateFileBasedAttributes:v7 analytics:v6];

  return v13;
}

- (id)addAttachmentWithUTI:(id)a3 withURL:(id)a4 filename:(id)a5 updateFileBasedAttributes:(BOOL)a6 analytics:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a5;
  v14 = [(ICNote *)self addAttachmentWithUTI:a3 identifier:0 urlString:0 analytics:v7];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__ICNote_AttachmentManagement__addAttachmentWithUTI_withURL_filename_updateFileBasedAttributes_analytics___block_invoke;
  v18[3] = &unk_2781956F8;
  v19 = v12;
  v20 = v13;
  v21 = a6;
  v15 = v13;
  v16 = v12;
  [(ICNote *)self addMediaToAttachment:v14 withBlock:v18];

  return v14;
}

void __106__ICNote_AttachmentManagement__addAttachmentWithUTI_withURL_filename_updateFileBasedAttributes_analytics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addMediaWithURL:*(a1 + 32) filename:*(a1 + 40) updateFileBasedAttributes:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __106__ICNote_AttachmentManagement__addAttachmentWithUTI_withURL_filename_updateFileBasedAttributes_analytics___block_invoke_2;
  v6[3] = &unk_2781956A8;
  v7 = v3;
  v5 = v3;
  [v5 updatePlaceInLocationIfNeededHandler:v6];
}

void __106__ICNote_AttachmentManagement__addAttachmentWithUTI_withURL_filename_updateFileBasedAttributes_analytics___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) managedObjectContext];
    [v2 ic_save];
  }
}

- (id)addAttachmentWithUTI:(id)a3 data:(id)a4 filenameExtension:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICNote *)self title];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [(ICNote *)self title];
    v14 = [v13 ic_sanitizedFilenameString];

    if ([v14 length])
    {
      if (![v10 length])
      {
        v15 = [ICAttachment filenameExtensionForUTI:v8];

        v10 = v15;
      }

      if ([v10 length])
      {
        v16 = [v14 stringByAppendingPathExtension:v10];

        v14 = v16;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    v17 = [ICAttachment filenameFromUTI:v8];

    v14 = v17;
  }

  v18 = [(ICNote *)self addAttachmentWithUTI:v8 data:v9 filename:v14];

  return v18;
}

- (id)addURLAttachmentWithURL:(id)a3
{
  v4 = *MEMORY[0x277CE1E90];
  v5 = a3;
  v6 = [v4 identifier];
  v7 = [v5 absoluteString];

  v8 = [(ICNote *)self addAttachmentWithUTI:v6 identifier:0 urlString:v7 analytics:1];

  v9 = [v8 modificationDate];

  if (v9)
  {
    v10 = [(ICCloudSyncingObject *)self modificationDate];
    v11 = [v8 modificationDate];
    v12 = [v10 compare:v11];

    if (v12 == -1)
    {
      v13 = [v8 modificationDate];
      [(ICNote *)self setModificationDate:v13];
    }
  }

  return v8;
}

- (id)addSynapseLinkAttachmentWithContentItem:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  v5 = [(ICNote *)self managedObjectContext];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __72__ICNote_AttachmentManagement__addSynapseLinkAttachmentWithContentItem___block_invoke;
  v13 = &unk_278195740;
  v16 = &v17;
  v14 = self;
  v6 = v4;
  v15 = v6;
  [v5 performBlockAndWait:&v10];

  v7 = v18[5];
  if (!v7)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((attachment) != nil)" functionName:"-[ICNote(AttachmentManagement) addSynapseLinkAttachmentWithContentItem:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "attachment", v10, v11, v12, v13, v14}];
    v7 = v18[5];
  }

  v8 = v7;

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __72__ICNote_AttachmentManagement__addSynapseLinkAttachmentWithContentItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*MEMORY[0x277CE1E90] identifier];
  v4 = [*(a1 + 40) itemURL];
  v5 = [v4 absoluteString];
  v6 = [v2 addAttachmentWithUTI:v3 identifier:0 urlString:v5 analytics:1];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  [*(*(*(a1 + 48) + 8) + 40) updatePlaceInLocationIfNeededHandler:&__block_literal_global_1136];
  v9 = *(a1 + 40);
  v18 = 0;
  v10 = [v9 dataRepresentationWithError:&v18];
  v11 = v18;
  if (v11)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNote(AttachmentManagement) addSynapseLinkAttachmentWithContentItem:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Couldn't serialize SYContentItem to NSData. Error: %@", v11}];
  }

  else
  {
    v12 = [*(a1 + 40) linkPreviewMetadata];

    if (!v12)
    {
      [*(*(*(a1 + 48) + 8) + 40) loadLinkPreviewForSynapseItem:*(a1 + 40)];
    }

    [*(*(*(a1 + 48) + 8) + 40) setSynapseData:v10];
  }

  v13 = [*(*(*(a1 + 48) + 8) + 40) modificationDate];

  if (v13)
  {
    v14 = [*(a1 + 32) modificationDate];
    v15 = [*(*(*(a1 + 48) + 8) + 40) modificationDate];
    v16 = [v14 compare:v15];

    if (v16 == -1)
    {
      v17 = [*(*(*(a1 + 48) + 8) + 40) modificationDate];
      [*(a1 + 32) setModificationDate:v17];
    }
  }
}

void __72__ICNote_AttachmentManagement__addSynapseLinkAttachmentWithContentItem___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4 && (a2 & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72__ICNote_AttachmentManagement__addSynapseLinkAttachmentWithContentItem___block_invoke_2_cold_1();
    }
  }
}

- (id)addGalleryAttachmentWithIdentifier:(id)a3
{
  v3 = [(ICNote *)self addAttachmentWithUTI:@"com.apple.notes.gallery" identifier:a3 urlString:0 analytics:1];
  v4 = [ICAttachment defaultTitleForAttachmentType:11];
  [v3 setTitle:v4];

  return v3;
}

- (id)addTableAttachment
{
  v3 = [ICTableVersionedDocument alloc];
  v4 = [(ICCloudSyncingObject *)self currentReplicaID];
  v5 = [(ICTableVersionedDocument *)v3 initWithColumnCount:2 rowCount:2 replicaID:v4];

  v6 = [(ICTTVersionedDocument *)v5 serialize];
  v7 = [(ICNote *)self addTableAttachmentWithTableData:v6];

  return v7;
}

- (id)addAudioAttachmentWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self visibleTopLevelAttachments];
  v6 = [v5 ic_compactMap:&__block_literal_global_1149];

  v7 = __ICLocalizedFrameworkString_impl(@"New Recording", @"New Recording", 0, 1);
  v8 = v7;
  if ([v6 containsObject:v7])
  {
    v9 = 2;
    v10 = v7;
    do
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = __ICLocalizedFrameworkString_impl(@"New Recording %ld", @"New Recording %ld", 0, 1);
      v8 = [v11 localizedStringWithFormat:v12, v9];

      ++v9;
      v10 = v8;
    }

    while (([v6 containsObject:v8] & 1) != 0);
  }

  v13 = [(ICNote *)self addAttachmentWithUTI:*MEMORY[0x277CE5D68] identifier:v4 urlString:0 analytics:1 regulatoryLogging:0];
  [v13 setTitle:v8];

  return v13;
}

id __65__ICNote_AttachmentManagement__addAudioAttachmentWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 attachmentType] == 4)
  {
    v3 = [v2 title];
    if ([v3 length])
    {
      v4 = [v2 title];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)addPaperDocumentAttachmentWithIdentifier:(id)a3 subtype:(id)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB98];
  v15[0] = @"com.apple.paper.doc.pdf";
  v15[1] = @"com.apple.paper.doc.scan";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];

  if (([v10 containsObject:v7] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[allowedSubtypes containsObject:subtype]" functionName:"-[ICNote(AttachmentManagement) addPaperDocumentAttachmentWithIdentifier:subtype:]" simulateCrash:1 showAlert:0 format:{@"unexpected subtype: %@ is not one of %@; assuming PDF", v7, v10}];
  }

  if (([v10 containsObject:v7] & 1) == 0)
  {
    v11 = @"com.apple.paper.doc.pdf";

    v7 = v11;
  }

  if ((ICInternalSettingsIsPDFsInNotesEnabled() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICInternalSettingsIsPDFsInNotesEnabled()" functionName:"-[ICNote(AttachmentManagement) addPaperDocumentAttachmentWithIdentifier:subtype:]" simulateCrash:1 showAlert:0 format:@"PDFsInNotes must be enabled"];
  }

  v12 = [(ICNote *)self addAttachmentWithUTI:v7 identifier:v6 urlString:0 analytics:1];
  if ([(__CFString *)v7 isEqualToString:@"com.apple.paper.doc.scan"])
  {
    v13 = [ICAttachment defaultTitleForAttachmentType:15];
    [v12 setTitle:v13];
  }

  return v12;
}

- (id)addTableAttachmentWithText:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self managedObjectContext];
  v6 = [(ICCloudSyncingObject *)self currentReplicaID];
  v7 = [ICAttachmentTableModel tableFromAttributedString:v4 managedObjectContext:v5 replicaID:v6];

  v8 = [v7 table];
  v9 = [v8 columnCount];

  if (v9 <= 1)
  {
    do
    {
      v10 = [v7 table];
      v11 = [v7 table];
      v12 = [v10 insertColumnAtIndex:{objc_msgSend(v11, "columnCount")}];

      v13 = [v7 table];
      v14 = [v13 columnCount];
    }

    while (v14 < 2);
  }

  v15 = [v7 serialize];
  v16 = [(ICNote *)self addTableAttachmentWithTableData:v15];

  return v16;
}

- (id)addTableAttachmentWithTableData:(id)a3
{
  v4 = a3;
  v5 = [(ICNote *)self addAttachmentWithUTI:@"com.apple.notes.table"];
  [v5 updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
  [v5 setMergeableData:v4];

  v6 = [v5 managedObjectContext];
  [v6 ic_save];

  return v5;
}

- (id)addInlineDrawingAttachmentWithAnalytics:(BOOL)a3
{
  v3 = [(ICNote *)self addAttachmentWithUTI:@"com.apple.drawing.2" identifier:0 urlString:0 analytics:a3];
  v4 = [ICAttachment defaultTitleForAttachmentType:10];
  [v3 setTitle:v4];

  return v3;
}

- (id)addAttachment
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ICWillAddAttachmentForNoteNotification" object:self];

  v6 = [(ICNote *)self addAttachmentWithIdentifier:v4];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"ICDidAddAttachmentForNoteNotification" object:self];

  return v6;
}

- (id)addAttachmentWithUTI:(id)a3 data:(id)a4 filename:(id)a5 updateFileBasedAttributes:(BOOL)a6 analytics:(BOOL)a7 regulatoryLogging:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a4;
  v15 = a5;
  v16 = [(ICNote *)self addAttachmentWithUTI:a3 identifier:0 urlString:0 analytics:v9 regulatoryLogging:v8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __121__ICNote_AttachmentManagement__addAttachmentWithUTI_data_filename_updateFileBasedAttributes_analytics_regulatoryLogging___block_invoke;
  v20[3] = &unk_2781956F8;
  v21 = v14;
  v22 = v15;
  v23 = a6;
  v17 = v15;
  v18 = v14;
  [(ICNote *)self addMediaToAttachment:v16 withBlock:v20];

  return v16;
}

void __121__ICNote_AttachmentManagement__addAttachmentWithUTI_data_filename_updateFileBasedAttributes_analytics_regulatoryLogging___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addMediaWithData:*(a1 + 32) filename:*(a1 + 40) updateFileBasedAttributes:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __121__ICNote_AttachmentManagement__addAttachmentWithUTI_data_filename_updateFileBasedAttributes_analytics_regulatoryLogging___block_invoke_2;
  v6[3] = &unk_2781956A8;
  v7 = v3;
  v5 = v3;
  [v5 updatePlaceInLocationIfNeededHandler:v6];
}

void __121__ICNote_AttachmentManagement__addAttachmentWithUTI_data_filename_updateFileBasedAttributes_analytics_regulatoryLogging___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) managedObjectContext];
    [v2 ic_save];
  }
}

- (void)addMediaToAttachment:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICNote *)self shouldAddMediaAsynchronously])
  {
    if (addMediaToAttachment_withBlock__onceToken != -1)
    {
      [ICNote(AttachmentManagement) addMediaToAttachment:withBlock:];
    }

    v8 = [v6 shortLoggingDescription];
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(AttachmentManagement) addMediaToAttachment:withBlock:];
    }

    v10 = [v6 isInserted];
    v11 = [v6 ic_permanentObjectID];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1168;
    aBlock[3] = &unk_278195788;
    v12 = v8;
    v28 = v12;
    v29 = self;
    v13 = v11;
    v30 = v13;
    v31 = v7;
    v14 = _Block_copy(aBlock);
    if (v10)
    {
      v15 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICNote(AttachmentManagement) addMediaToAttachment:withBlock:];
      }

      if (!self->_noteDidSaveBlocks)
      {
        v16 = [MEMORY[0x277CBEB18] array];
        noteDidSaveBlocks = self->_noteDidSaveBlocks;
        self->_noteDidSaveBlocks = v16;
      }

      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1170;
      v24 = &unk_2781957B0;
      v25 = v12;
      v26 = v14;
      v18 = _Block_copy(&v21);
      v19 = self->_noteDidSaveBlocks;
      v20 = _Block_copy(v18);
      [(NSMutableArray *)v19 addObject:v20, v21, v22, v23, v24];
    }

    else
    {
      dispatch_async(addMediaToAttachment_withBlock__addMediaToAttachmentQueue, v14);
    }
  }

  else
  {
    (*(v7 + 2))(v7, v6);
  }
}

void __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.notes.addMediaToAttachment", attr);
  v2 = addMediaToAttachment_withBlock__addMediaToAttachmentQueue;
  addMediaToAttachment_withBlock__addMediaToAttachmentQueue = v1;
}

void __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1168(id *a1)
{
  v2 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1168_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [a1[5] workerManagedObjectContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1169;
  v18[3] = &unk_278194E38;
  v19 = a1[6];
  v10 = v9;
  v20 = v10;
  v21 = a1[7];
  [v10 performBlockAndWait:v18];
  v11 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1168_cold_2(a1, v11, v12, v13, v14, v15, v16, v17);
  }
}

void __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1169(uint64_t a1)
{
  v2 = [ICAttachment ic_existingObjectWithID:*(a1 + 32) context:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) ic_save];
}

void __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1170(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Media");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1170_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  dispatch_async(addMediaToAttachment_withBlock__addMediaToAttachmentQueue, *(a1 + 40));
}

- (id)addInlineAttachmentWithIdentifier:(id)a3
{
  v4 = [(ICBaseAttachment *)ICInlineAttachment newAttachmentWithIdentifier:a3 note:self];
  if ([(ICNote *)self isPasswordProtected])
  {
    [v4 setIsPasswordProtected:1];
    [v4 initializeCryptoProperties];
  }

  [(ICNote *)self addInlineAttachmentsObject:v4];

  return v4;
}

- (id)anyVisibleInstanceOfHashtag:(id)a3
{
  v4 = [ICHashtag standardizedHashtagRepresentationForDisplayText:a3];
  v5 = [(ICNote *)self visibleInlineAttachments];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ICNote_AttachmentManagement__anyVisibleInstanceOfHashtag___block_invoke;
  v9[3] = &unk_2781957D8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 ic_objectPassingTest:v9];

  return v7;
}

uint64_t __60__ICNote_AttachmentManagement__anyVisibleInstanceOfHashtag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachmentType] == 1;
  v5 = [v3 tokenContentIdentifier];

  LODWORD(a1) = [v5 isEqualToString:*(a1 + 32)];
  return v4 & a1;
}

- (id)attachmentWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ICNote *)self attachments];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = [(ICNote *)self managedObjectContext];
  v13 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v4 context:v14];

LABEL_12:

  return v13;
}

- (id)inlineAttachmentWithICTTAttachment:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 attachmentIdentifier];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ICNote *)self inlineAttachments];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v14 = [(ICNote *)self managedObjectContext];
  v13 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:v4 context:v14];

LABEL_12:

  return v13;
}

- (void)turnAttachmentsIntoFaults
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(ICNote *)self attachments];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isFault] & 1) == 0)
        {
          v9 = [(ICNote *)self managedObjectContext];
          [v9 ic_refreshObject:v8 mergeChanges:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

+ (void)createNoteForAirDropDocument:(id)a3 processAttributedString:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 document];
    v11 = v10;
    if ((*(v10 + 32) & 1) == 0)
    {
      v10 = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"document.has_notedocument()" functionName:"+[ICNote(AirDropDocument) createNoteForAirDropDocument:processAttributedString:completion:]" simulateCrash:1 showAlert:0 format:@"AirDrop document does not have note document"];
      if ((*(v11 + 32) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v12 = *(v11 + 40);
    if (!v12)
    {
      v10 = airdrop_document::Document::default_instance(v10);
      v12 = *(v10 + 40);
    }

    if ((*(v12 + 32) & 1) == 0)
    {
      v10 = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"noteDocument.has_version1_0()" functionName:"+[ICNote(AirDropDocument) createNoteForAirDropDocument:processAttributedString:completion:]" simulateCrash:1 showAlert:0 format:@"Failed to find any note document version"];
      if ((*(v12 + 32) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v12 + 40);
    if (!v13)
    {
      v10 = airdrop_document::NoteDocument::default_instance(v10);
      v13 = *(v10 + 40);
    }

    if (*(v13 + 32) & 1) != 0 || (v10 = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"version1_0.has_attributedstring()" functionName:"+[ICNote(AirDropDocument) createNoteForAirDropDocument:processAttributedString:completion:]" simulateCrash:1 showAlert:0 format:@"No string found from version 1.0 data"], (*(v13 + 32)))
    {
      v15 = *(v13 + 40);
      if (!v15)
      {
        v15 = *(airdrop_document::NoteDocument1_0::default_instance(v10) + 40);
      }

      v16 = *(v15 + 40);
      v17 = *(v16 + 23);
      if (v17 < 0)
      {
        v16 = *v16;
        v17 = *(*(v15 + 40) + 8);
      }

      v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v16 length:v17 freeWhenDone:0];
      v19 = +[ICNoteContext sharedContext];
      v20 = [v19 managedObjectContext];
      v21 = [ICFolder defaultFolderInContext:v20];

      if (v21)
      {
        v14 = [ICNote newEmptyNoteInFolder:v21];
      }

      else
      {
        v22 = +[ICNoteContext sharedContext];
        v23 = [v22 managedObjectContext];
        v14 = [ICNote newEmptyNoteInContext:v23];
      }

      if ((*(v13 + 32) & 2) != 0)
      {
        v24 = *(v13 + 48);
      }

      else
      {
        v24 = 0;
      }

      [v14 requireMinimumSupportedVersionAndPropagateToChildObjects:v24];
      v29 = 0;
      v25 = [MEMORY[0x277CCA898] ic_attributedStringWithData:v18 dataPersister:0 createNewAttachmentsInNote:v14 error:&v29];
      v26 = v29;
      v27 = v8[2](v8, v21, v14, v25, v26);

      if ((v27 & 1) == 0)
      {

        v14 = 0;
      }

      if (v9 && v14)
      {
        [v14 updateChangeCountWithReason:@"Created note from AirDrop"];
        v28 = [v14 managedObjectContext];
        [v28 ic_save];

        v9[2](v9, v14);
      }
    }

    else
    {
LABEL_12:
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"airDropDocument" functionName:"+[ICNote(AirDropDocument) createNoteForAirDropDocument:processAttributedString:completion:]" simulateCrash:1 showAlert:0 format:@"airDropDocument is nil"];
  }
}

- (id)newAirDropDocument
{
  if (![(ICNote *)self isSharable])
  {
    return 0;
  }

  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 workerManagedObjectContext];

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__8;
  v25 = __Block_byref_object_dispose__8;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__ICNote_AirDropDocument__newAirDropDocument__block_invoke;
  v18[3] = &unk_278195930;
  v20 = &v21;
  v18[4] = self;
  v5 = v4;
  v19 = v5;
  [v5 performBlockAndWait:v18];
  if (v22[5])
  {
    v6 = objc_alloc_init(ICAirDropDocument);
    v7 = [(ICAirDropDocument *)v6 document];
    *(v7 + 32) |= 1u;
    v8 = *(v7 + 40);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 32) |= 1u;
    v9 = *(v8 + 40);
    if (!v9)
    {
      operator new();
    }

    v10 = [(ICNote *)self intrinsicNotesVersionForScenario:1];
    v11 = *(v9 + 32);
    if (v10)
    {
      v11 |= 2u;
      *(v9 + 32) = v11;
      *(v9 + 48) = v10;
    }

    *(v9 + 32) = v11 | 1;
    v12 = *(v9 + 40);
    if (!v12)
    {
      operator new();
    }

    v13 = [v22[5] bytes];
    v14 = [v22[5] length];
    *(v12 + 32) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v15 = v14;
    v16 = *(v12 + 40);
    if (v16 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v16, v13, v15);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v6;
}

void __45__ICNote_AirDropDocument__newAirDropDocument__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attributedString];
  v2 = [v5 ic_serializeWithFlags:3 dataPersister:0 managedObjectContext:*(a1 + 40) error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)recordType
{
  if ([(ICNote *)self isPasswordProtected])
  {
    v2 = @"PasswordProtectedNote";
  }

  else
  {
    v2 = @"Note";
  }

  return v2;
}

- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = ICNote;
  v8 = a3;
  [(ICCloudSyncingObject *)&v14 objectWasFetchedFromCloudWithRecord:v8 accountID:a4 force:v5];
  v9 = [v8 recordID];

  v10 = [v9 recordName];

  v11 = [(ICCloudSyncingObject *)self recordID];
  v12 = [v11 recordName];

  if (([v10 isEqualToString:v12] & 1) == 0)
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEFAULT, "Duplicated note (%@) to (%@), clearing server record again", buf, 0x16u);
    }

    [(ICCloudSyncingObject *)self clearServerRecords];
    [(ICCloudSyncingObject *)self setInCloud:0];
  }
}

- (BOOL)hasPresentableContent
{
  v7.receiver = self;
  v7.super_class = ICNote;
  if (![(ICCloudSyncingObject *)&v7 hasPresentableContent])
  {
    return 0;
  }

  v3 = [(ICNote *)self noteData];
  v4 = [v3 data];
  v5 = v4 != 0;

  return v5;
}

- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)a3 shouldFetchObject:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  if (v6 && v7)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(ICNote *)self attachments];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v30 + 1) + 8 * i) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:v6 shouldFetchObject:v7];
          v15 = [v14 allObjects];
          [v8 ic_addObjectsFromNonNilArray:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = [(ICNote *)self inlineAttachments];
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * j) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:v6 shouldFetchObject:v7];
          v22 = [v21 allObjects];
          [v8 ic_addObjectsFromNonNilArray:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    v23 = [v8 copy];
  }

  else
  {
    v23 = [MEMORY[0x277CBEB98] set];
  }

  v24 = v23;

  return v24;
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(ICNote *)self mergePolicyForRecord:v12];
  v14 = [(ICNote *)self managedObjectContext];
  v15 = [ICAccount cloudKitAccountWithIdentifier:v11 context:v14];

  LOBYTE(a5) = [(ICNote *)self mergeCloudKitRecord:v12 mergePolicy:v13 account:v15 approach:a5 mergeableFieldState:v10];
  return a5;
}

- (BOOL)mergeCloudKitRecord:(id)a3 account:(id)a4 approach:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  LOBYTE(a5) = [(ICNote *)self mergeCloudKitRecord:v9 mergePolicy:[(ICNote *)self mergePolicyForRecord:v9] account:v8 approach:a5 mergeableFieldState:0];

  return a5;
}

- (BOOL)mergeCloudKitRecord:(id)a3 mergePolicy:(int64_t)a4 account:(id)a5 approach:(int64_t)a6 mergeableFieldState:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (a4 != 3)
  {
    v15 = [v13 identifier];
    v96.receiver = self;
    v96.super_class = ICNote;
    v16 = [(ICCloudSyncingObject *)&v96 mergeCloudKitRecord:v12 accountID:v15 approach:a6 mergeableFieldState:v14];

    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = [v12 recordID];
    v18 = [v17 recordName];
    [(ICNote *)self setIdentifier:v18];

    v19 = [v12 objectForKeyedSubscript:@"CreationDate"];
    v20 = [(ICCloudSyncingObject *)self creationDate];
    v95 = v14;
    if (!v20)
    {
      goto LABEL_9;
    }

    v21 = v20;
    v93 = v13;
    v22 = [(ICCloudSyncingObject *)self creationDate];
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    if (([v22 isEqual:v23] & 1) == 0)
    {
      v91 = v19;
      v24 = [(ICCloudSyncingObject *)self creationDate];
      v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
      if (([v24 isEqual:v25] & 1) == 0)
      {
        [(ICCloudSyncingObject *)self creationDate];
        v54 = v88 = v24;
        v55 = [MEMORY[0x277CBEAA8] distantPast];
        v90 = [v54 isEqual:v55];

        v13 = v93;
        v14 = v95;
        v19 = v91;
        if ((v90 & 1) == 0)
        {
          v56 = [(ICCloudSyncingObject *)self creationDate];
          v57 = [v91 earlierDate:v56];
          [(ICNote *)self setCreationDate:v57];

LABEL_10:
          v26 = [v12 objectForKeyedSubscript:@"ModificationDate"];
          if (v26)
          {
            v27 = [(ICCloudSyncingObject *)self modificationDate];
            v28 = [v26 laterDate:v27];
            [(ICNote *)self setModificationDate:v28];
          }

          [(ICNote *)self mergeTextDataFromRecord:v12 mergePolicy:a4 mergeableFieldState:v14];
          if (a6)
          {
            goto LABEL_53;
          }

          v29 = [(ICNote *)self folderReferenceFromRecord:v12];
          v92 = v29;
          if (v29)
          {
            v30 = objc_alloc(MEMORY[0x277CBC5A0]);
            [v29 recordID];
            v32 = v31 = v19;
            v33 = [v30 initWithRecordType:@"Folder" recordID:v32];

            v19 = v31;
            v29 = v33;
          }

          v34 = [v12 ic_isOwnedByCurrentUser];
          v35 = [v29 ic_isOwnedByCurrentUser];
          v89 = v29;
          if (v34 & 1) != 0 || (v36 = v35, [v12 share], v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 == 0, v37, ((v38 | v36)))
          {
            [(ICNote *)self mergeFoldersFromRecord:v12 account:v13];
          }

          else
          {
            v84 = [(ICNote *)self folder];

            if (!v84)
            {
              if (!v13)
              {
                v85 = [(ICNote *)self managedObjectContext];
                v13 = [ICAccount cloudKitAccountInContext:v85];
              }

              v86 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
              {
                [ICNote(CloudKit) mergeCloudKitRecord:v13 mergePolicy:v12 account:v86 approach:? mergeableFieldState:?];
              }

              v87 = [v13 defaultFolder];
              [(ICNote *)self setFolder:v87];
            }
          }

          v39 = [v12 recordType];
          -[ICNote setIsPasswordProtected:](self, "setIsPasswordProtected:", [v39 isEqualToString:@"PasswordProtectedNote"]);

          v40 = [v12 objectForKeyedSubscript:@"AttachmentViewType"];

          if (v40)
          {
            v41 = v19;
            objc_opt_class();
            v42 = [v12 objectForKeyedSubscript:@"AttachmentViewType"];
            v43 = ICCheckedDynamicCast();

            v44 = [v43 intValue];
            if ([(ICNote *)self attachmentViewType]!= v44)
            {
              [(ICNote *)self setAttachmentViewType:v44];
            }

            v19 = v41;
          }

          v45 = [v12 objectForKeyedSubscript:@"PaperStyleType"];

          if (v45)
          {
            v46 = v19;
            objc_opt_class();
            v47 = [v12 objectForKeyedSubscript:@"PaperStyleType"];
            v48 = ICCheckedDynamicCast();

            v49 = [v48 intValue];
            if ([(ICNote *)self paperStyleType]!= v49)
            {
              [(ICNote *)self setPaperStyleType:v49];
            }

            v19 = v46;
          }

          v50 = [v12 encryptedValues];
          v51 = [v50 objectForKeyedSubscript:@"TitleEncrypted"];

          if (v51)
          {
            v52 = [v51 ic_stringValue];
          }

          else
          {
            v58 = [v12 objectForKeyedSubscript:@"Title"];

            if (!v58)
            {
              goto LABEL_34;
            }

            v52 = [v12 objectForKeyedSubscript:@"Title"];
          }

          v59 = v52;
          [(ICNote *)self setTitle:v52];

LABEL_34:
          v94 = v13;
          v60 = [v12 encryptedValues];
          v61 = [v60 objectForKeyedSubscript:@"SnippetEncrypted"];

          if (v61)
          {
            v62 = [v61 ic_stringValue];
          }

          else
          {
            v63 = [v12 objectForKeyedSubscript:@"Snippet"];

            if (!v63)
            {
              goto LABEL_39;
            }

            v62 = [v12 objectForKeyedSubscript:@"Snippet"];
          }

          v64 = v62;
          [(ICNote *)self setSnippet:v62];

LABEL_39:
          v65 = [v12 encryptedValues];
          v66 = [v65 objectForKeyedSubscript:@"ReplicaIDToUserIDEncrypted"];

          if (v66)
          {
            v67 = [v12 encryptedValues];
            v68 = [v67 objectForKeyedSubscript:@"ReplicaIDToUserIDEncrypted"];

            v69 = [ICMergeableDictionary alloc];
            [(ICCloudSyncingObject *)self currentReplicaID];
            v71 = v70 = v19;
            v72 = [(ICMergeableDictionary *)v69 initWithData:v68 replicaID:v71];

            v19 = v70;
            [(ICNote *)self mergeReplicaIDToUserID:v72];
          }

          v73 = [v12 objectForKeyedSubscript:@"LegacyImportDeviceIdentifier"];
          if (v73)
          {
            [(ICNote *)self setLegacyImportDeviceIdentifier:v73];
          }

          v74 = [v12 objectForKeyedSubscript:@"LegacyModificationDateAtImport"];

          if (v74)
          {
            v75 = [v12 objectForKeyedSubscript:@"LegacyModificationDateAtImport"];
            [(ICNote *)self setLegacyModificationDateAtImport:v75];
          }

          v76 = [v12 encryptedValues];
          v77 = [v76 objectForKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];

          if (v77)
          {
            v78 = [v77 ic_stringValue];
          }

          else
          {
            v79 = [v12 objectForKeyedSubscript:@"LegacyContentHashAtImport"];

            if (!v79)
            {
LABEL_50:
              v81 = [(ICNote *)self folder];
              [v81 unmarkForDeletionIncludingParentHierarchy];

              v82 = [(ICNote *)self documentWithoutCreating];

              if (v82)
              {
                [(ICNote *)self regenerateTitle:1 snippet:1];
              }

              v13 = v94;
              v14 = v95;
LABEL_53:

              v53 = 1;
              goto LABEL_54;
            }

            v78 = [v12 objectForKeyedSubscript:@"LegacyContentHashAtImport"];
          }

          v80 = v78;
          [(ICNote *)self setLegacyContentHashAtImport:v78];

          goto LABEL_50;
        }

LABEL_9:
        [(ICNote *)self setCreationDate:v19];
        goto LABEL_10;
      }

      v19 = v91;
    }

    v13 = v93;
    v14 = v95;
    goto LABEL_9;
  }

  [(ICNote *)self deduplicateSelfAndCreateNewObjectFromRecord:v12];
LABEL_28:
  v53 = 0;
LABEL_54:

  return v53;
}

- (void)mergeTextDataFromRecord:(id)a3 mergePolicy:(int64_t)a4 mergeableFieldState:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 ic_encryptedInlineableDataAssetForKeyPrefix:@"TextData"];
  v11 = [v8 ic_encryptedInlineableDataAssetForKeyPrefix:@"TextDeltaData"];
  if (!(v10 | v11))
  {
    v27 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [ICNote(CloudKit) mergeTextDataFromRecord:? mergePolicy:? mergeableFieldState:?];
    }

    goto LABEL_29;
  }

  if ([(ICNote *)self needsInitialFetchFromCloud]&& [(ICNote *)self hasLoadedDocument])
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!self.needsInitialFetchFromCloud || !self.hasLoadedDocument" functionName:"-[ICNote(CloudKit) mergeTextDataFromRecord:mergePolicy:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:{@"Note document was loaded before merging initial text data — this can lead to data loss, see rdar://97565017"}];
  }

  v12 = [(ICNote *)self noteData];
  v13 = [v12 data];
  if (v13 || [(ICNote *)self hasLoadedDocument])
  {

    v14 = [(ICNote *)self isPasswordProtected];
    if (v10 && v14)
    {
      if ([(ICCloudSyncingObject *)self isAuthenticated])
      {
        v15 = [(ICNote *)self mergeableString];
      }

      v16 = [(ICNote *)self decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:v8];

      v10 = v16;
    }

    goto LABEL_12;
  }

  if (!v10)
  {
    [(ICNote *)self isPasswordProtected];
LABEL_12:
    if ([(ICNote *)self isPasswordProtected]&& ![(ICCloudSyncingObject *)self isAuthenticated])
    {
      goto LABEL_69;
    }

    v17 = [(ICNote *)self document];

    if (!v17)
    {
      v28 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ICNote(CloudKit) mergeTextDataFromRecord:v28 mergePolicy:? mergeableFieldState:?];
      }

      v29 = +[ICNoteContext sharedContext];
      v30 = [(ICNote *)self folder];
      v31 = [v29 addNewNoteByCopyingNote:self toFolder:v30];

      v32 = [ICTTMergeableStringVersionedDocument alloc];
      v33 = [(ICCloudSyncingObject *)self currentReplicaID];
      v24 = [(ICTTVersionedDocument *)v32 initWithData:v10 replicaID:v33];

      [(ICNote *)self replaceWithDocument:v24];
      [MEMORY[0x277D36278] postBasicEvent:22];
LABEL_59:

      [(ICNote *)self didChangeNoteText];
      v50 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
      if (v50)
      {
        v51 = [(ICCloudSyncingObject *)self cryptoStrategy];
        v52 = [v51 recordHasChangedPassphrase:v50];

        if (v52)
        {
          v53 = [(ICNote *)self noteData];
          [v53 setNeedsToBeSaved:1];
        }
      }

      v54 = [(ICNote *)self noteData:v57];
      if ([v54 saveNoteDataIfNeeded])
      {
      }

      else
      {
        v55 = [(ICNote *)self noteData];
        v56 = [v55 needsToBeSaved];

        if (v56)
        {
LABEL_66:
          if (objc_opt_respondsToSelector())
          {
            [(ICNote *)self createMissingAttachmentsInTextStorage];
          }

          [(ICNote *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:v9];

          goto LABEL_69;
        }
      }

      [(ICCloudSyncingObject *)self setUnappliedEncryptedRecord:0];
      goto LABEL_66;
    }

    if (v10)
    {
      v18 = [ICTTMergeableStringVersionedDocument alloc];
      v19 = [(ICCloudSyncingObject *)self currentReplicaID];
      v20 = [(ICTTVersionedDocument *)v18 initWithData:v10 replicaID:v19];

      v21 = self;
      if (a4 == 1 || (v21 = v20, a4 == 2))
      {
        v22 = [(ICNote *)v21 mergeableString];
        v23 = [(ICNote *)v21 mergeableString];
        [v22 deleteCharactersInRange:{0, objc_msgSend(v23, "length")}];
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __76__ICNote_CloudKit__mergeTextDataFromRecord_mergePolicy_mergeableFieldState___block_invoke;
      v63[3] = &unk_278195138;
      v63[4] = self;
      v24 = v20;
      v64 = v24;
      if ([(ICNote *)self performMerge:v63])
      {
        goto LABEL_57;
      }

      v25 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [ICNote(CloudKit) mergeTextDataFromRecord:? mergePolicy:? mergeableFieldState:?];
      }

      if (a4 == 1)
      {
        v26 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ICNote(CloudKit) mergeTextDataFromRecord:? mergePolicy:? mergeableFieldState:?];
        }
      }

      else
      {
        v44 = os_log_create("com.apple.notes", "Cloud");
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
        if (a4 == 2)
        {
          if (v45)
          {
            [ICNote(CloudKit) mergeTextDataFromRecord:? mergePolicy:? mergeableFieldState:?];
          }

          goto LABEL_56;
        }

        if (v45)
        {
          [ICNote(CloudKit) mergeTextDataFromRecord:? mergePolicy:? mergeableFieldState:?];
        }

        v47 = +[ICNoteContext sharedContext];
        v48 = [(ICNote *)self folder];
        v49 = [v47 addNewNoteByCopyingNote:self toFolder:v48];

        [MEMORY[0x277D36278] postBasicEvent:7];
      }

      [(ICNote *)self replaceWithDocument:v24];
LABEL_56:
      [MEMORY[0x277D36278] postBasicEvent:18];
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNote(CloudKit) mergeTextDataFromRecord:mergePolicy:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:@"TopoText merge failure"];
LABEL_57:
      v46 = v64;
      goto LABEL_58;
    }

    if (v11)
    {
      v39 = [ICTTMergeableAttributedString alloc];
      v40 = [(ICCloudSyncingObject *)self currentReplicaID];
      v41 = [(ICTTMergeableString *)v39 initWithData:v11 replicaID:v40 fragment:1];

      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = __76__ICNote_CloudKit__mergeTextDataFromRecord_mergePolicy_mergeableFieldState___block_invoke_120;
      v60 = &unk_278195138;
      v61 = self;
      v24 = v41;
      v62 = v24;
      v42 = [(ICNote *)self performMerge:&v57];
      if (v42 == 2)
      {
        v46 = v62;
LABEL_58:

        goto LABEL_59;
      }

      if (!v42)
      {
        v43 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [ICNote(CloudKit) mergeTextDataFromRecord:? mergePolicy:? mergeableFieldState:?];
        }

        [MEMORY[0x277D36278] postBasicEvent:{19, v57, v58, v59, v60, v61}];
      }
    }

LABEL_29:
    v10 = 0;
    goto LABEL_69;
  }

  v34 = [v8 objectForKeyedSubscript:@"CryptoTag"];

  if (v34)
  {
    v35 = [v8 objectForKeyedSubscript:@"CryptoTag"];
    [(ICNote *)self setCryptoTag:v35];
  }

  v36 = [v8 objectForKeyedSubscript:@"CryptoInitializationVector"];

  if (v36)
  {
    v37 = [v8 objectForKeyedSubscript:@"CryptoInitializationVector"];
    [(ICNote *)self setCryptoInitializationVector:v37];
  }

  v38 = [(ICNote *)self noteData];
  [v38 setData:v10];

  [(ICNote *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:v9];
LABEL_69:
}

uint64_t __76__ICNote_CloudKit__mergeTextDataFromRecord_mergePolicy_mergeableFieldState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) document];
  v3 = [v2 mergeWithStringVersionedDocument:*(a1 + 40)];

  return v3;
}

uint64_t __76__ICNote_CloudKit__mergeTextDataFromRecord_mergePolicy_mergeableFieldState___block_invoke_120(uint64_t a1)
{
  v2 = [*(a1 + 32) mergeableString];
  v3 = [v2 mergeWithString:*(a1 + 40)];

  return v3;
}

- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBC5A0] ic_encryptedKeyForKeyPrefix:@"TextData"];
    v6 = [(ICNote *)self mergeableString];
    v7 = [v6 timestamp];
    v8 = [v7 serialize];

    if ([v8 length])
    {
      [v4 setObject:v8 forKey:v5];
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICNote(CloudKit) writeCurrentTimestampToMergeableFieldStateIfNecessary:?];
      }
    }
  }
}

- (id)folderReferenceFromRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Folder"];
  objc_opt_class();
  v6 = [v4 objectForKeyedSubscript:@"Folders"];

  v7 = ICDynamicCast();

  if (v5)
  {
    if ([v7 count])
    {
      v8 = [v7 firstObject];
      if (([v5 isEqual:v8] & 1) == 0)
      {
        v9 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [ICNote(CloudKit) folderReferenceFromRecord:?];
        }

        v10 = v8;
        v5 = v10;
      }
    }
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(CloudKit) folderReferenceFromRecord:?];
    }

    v5 = [v7 firstObject];
  }

  return v5;
}

- (void)mergeFoldersFromRecord:(id)a3 account:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(ICNote *)self folderReferenceFromRecord:v7];
  v9 = [v7 objectForKeyedSubscript:@"FoldersModificationDate"];

  if (v9 && ([(ICNote *)self folderModificationDate], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [(ICNote *)self folderModificationDate];
    v12 = [v9 ic_isLaterThanDate:v11];
  }

  else
  {
    v11 = [(ICNote *)self folderModificationDate];
    v12 = v11 == 0;
  }

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v23 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v24 = [(ICNote *)self folderModificationDate];
    v25 = v24;
    v26 = @"N";
    *buf = 138413058;
    v44 = v23;
    if (v12)
    {
      v26 = @"Y";
    }

    v45 = 2112;
    v46 = v9;
    v47 = 2112;
    v48 = v24;
    v49 = 2112;
    v50 = v26;
    _os_log_debug_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEBUG, "%@: cloud folder modification date: %@, local folder modification date: %@, isCloudFoldersMoreRecentThanLocalFolders: %@", buf, 0x2Au);
  }

  v14 = [(ICNote *)self folder];
  v15 = [v14 isTrashFolder];

  if (([(ICNote *)self needsInitialFetchFromCloud]| v12))
  {
    if (v8)
    {
      v16 = [v8 recordID];
      v42 = v6;
      v17 = [v6 identifier];
      v18 = [(ICNote *)self managedObjectContext];
      v19 = [ICFolder existingCloudObjectForRecordID:v16 accountID:v17 context:v18];

      if (!v19)
      {
        v20 = os_log_create("com.apple.notes", "Cloud");
        v21 = v20;
        if (v42)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [(ICNote(CloudKit) *)v8 mergeFoldersFromRecord:v21 account:?];
          }

          v22 = [v8 recordID];
          v21 = [v22 recordName];

          v19 = [ICFolder newFolderWithIdentifier:v21 account:v42];
          [v19 setNeedsInitialFetchFromCloud:1];
        }

        else
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v41 = [v8 recordID];
            v29 = [v41 recordName];
            v30 = [(ICCloudSyncingObject *)self shortLoggingDescription];
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            v33 = [0 identifier];
            *buf = 138413314;
            v44 = v28;
            v45 = 2112;
            v46 = v29;
            v47 = 2112;
            v48 = v30;
            v49 = 2112;
            v50 = v32;
            v51 = 2112;
            v52 = v33;
            _os_log_impl(&dword_214D51000, v21, OS_LOG_TYPE_INFO, "Trying to set a %@ (%@) for %@, but we couldn't find the %@ due to a non-existent CloudKit account (%@). Folder will be nil.", buf, 0x34u);
          }

          v19 = 0;
        }
      }

      if ([v19 folderType]== 1)
      {
        [v19 setMarkedForDeletion:0];
      }

      [(ICNote *)self setFolderModificationDate:v9];
      [(ICNote *)self setFolder:v19];
      v6 = v42;
    }

    else
    {
      v19 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ICNote(CloudKit) mergeFoldersFromRecord:? account:?];
      }
    }
  }

  if ([(ICNote *)self markedForDeletion])
  {
    v34 = [(ICNote *)self folder];
    v35 = [v34 isTrashFolder];

    if ((v35 & 1) == 0)
    {
      v36 = [(ICNote *)self account];
      v37 = [v36 trashFolder];

      v38 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [ICNote(CloudKit) mergeFoldersFromRecord:? account:?];
      }

      [(ICNote *)self setFolder:v37];
      [(ICNote *)self setFolderModificationDate:v9];
    }
  }

  if ((v15 & 1) == 0)
  {
    v39 = [(ICNote *)self folder];
    v40 = [v39 isTrashFolder];

    if (v40)
    {
      [(ICNote *)self notifyAttachmentsNoteWillMoveToRecentlyDeletedFolder];
    }
  }
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  v58[1] = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = ICNote;
  v6 = a4;
  v7 = [(ICCloudSyncingObject *)&v57 makeCloudKitRecordForApproach:a3 mergeableFieldState:v6];
  [(ICNote *)self addNoteBodyToRecord:v7 forApproach:a3 mergeableFieldState:v6, v57.receiver, v57.super_class];

  v8 = [(ICCloudSyncingObject *)self modificationDate];
  [v7 setObject:v8 forKeyedSubscript:@"ModificationDate"];

  v9 = [(ICCloudSyncingObject *)self creationDate];
  [v7 setObject:v9 forKeyedSubscript:@"CreationDate"];

  if (!a3)
  {
    v10 = [(ICNote *)self folder];
    v11 = [v10 recordID];

    if (v11)
    {
      v12 = [v7 recordID];
      v13 = [v12 zoneID];
      v14 = [v11 zoneID];
      v15 = [v13 isEqual:v14];

      if (v15)
      {
        v16 = objc_alloc(MEMORY[0x277CBC620]);
        v17 = [v16 initWithRecordID:v11 action:*MEMORY[0x277CBC070]];
        [v7 setObject:v17 forKeyedSubscript:@"Folder"];
        v18 = [(ICNote *)self folderModificationDate];
        [v7 setObject:v18 forKeyedSubscript:@"FoldersModificationDate"];

        v58[0] = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        [v7 setObject:v19 forKeyedSubscript:@"Folders"];
      }
    }

    v20 = [(ICNote *)self replicaIDToUserIDDictData];

    if (v20)
    {
      v21 = [(ICNote *)self replicaIDToUserIDDictData];
      v22 = [v7 encryptedValues];
      [v22 setObject:v21 forKeyedSubscript:@"ReplicaIDToUserIDEncrypted"];
    }

    if ([(ICNote *)self isPasswordProtected])
    {
      v23 = [(ICNote *)self cryptoInitializationVector];
      [v7 setObject:v23 forKeyedSubscript:@"CryptoInitializationVector"];

      v24 = [(ICNote *)self cryptoTag];
      [v7 setObject:v24 forKeyedSubscript:@"CryptoTag"];

      v25 = [(ICNote *)self cryptoWrappedKey];
      [v7 setObject:v25 forKeyedSubscript:@"CryptoWrappedKey"];
    }

    v26 = [(ICNote *)self title];

    if (v26)
    {
      v27 = [(ICNote *)self title];
      v28 = [v27 dataUsingEncoding:4];
      v29 = [v7 encryptedValues];
      [v29 setObject:v28 forKeyedSubscript:@"TitleEncrypted"];
    }

    v30 = [(ICNote *)self snippet];

    if (v30)
    {
      v31 = [(ICNote *)self snippet];
      v32 = [v31 dataUsingEncoding:4];
      v33 = [v7 encryptedValues];
      [v33 setObject:v32 forKeyedSubscript:@"SnippetEncrypted"];
    }

    v34 = [(ICNote *)self legacyModificationDateAtImport];

    if (v34)
    {
      v35 = [(ICNote *)self legacyModificationDateAtImport];
      [v7 setObject:v35 forKeyedSubscript:@"LegacyModificationDateAtImport"];
    }

    v36 = [(ICNote *)self legacyContentHashAtImport];

    if (v36)
    {
      v37 = [(ICNote *)self legacyContentHashAtImport];
      v38 = [v37 dataUsingEncoding:4];
      v39 = [v7 encryptedValues];
      [v39 setObject:v38 forKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];
    }

    v40 = [(ICNote *)self legacyImportDeviceIdentifier];

    if (v40)
    {
      v41 = [(ICNote *)self legacyImportDeviceIdentifier];
      [v7 setObject:v41 forKeyedSubscript:@"LegacyImportDeviceIdentifier"];
    }

    v42 = [(ICNote *)self attachmentForWebThumbnail];
    v43 = v42;
    if (v42)
    {
      v44 = [v42 attachmentPreviewImageWithMinSize:*MEMORY[0x277CBF3A8] scale:{*(MEMORY[0x277CBF3A8] + 8), 2.0}];
      if (v44)
      {
        v45 = [(ICNote *)self managedObjectContext];
        v46 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"FirstAttachmentThumbnail" inRecord:v7 forObject:self context:v45];

        if (v46)
        {
          v47 = [v44 previewImageURL];
          v48 = [ICCloudSyncingObject assetForURL:v47];

          if (v48)
          {
            [v7 setObject:v48 forKeyedSubscript:@"FirstAttachmentThumbnail"];
            v49 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v43, "orientation")}];
            [v7 setObject:v49 forKeyedSubscript:@"FirstAttachmentThumbnailOrientation"];
          }
        }
      }

      else
      {
        [v7 setObject:0 forKeyedSubscript:@"FirstAttachmentThumbnail"];
      }

      v50 = [v43 typeUTI];

      if (v50)
      {
        v51 = [v43 typeUTI];
        v52 = [v51 dataUsingEncoding:4];
        v53 = [v7 encryptedValues];
        [v53 setObject:v52 forKeyedSubscript:@"FirstAttachmentUTIEncrypted"];
      }
    }

    else
    {
      [v7 setObject:0 forKeyedSubscript:@"FirstAttachmentThumbnail"];
      [v7 setObject:0 forKeyedSubscript:@"FirstAttachmentUTIEncrypted"];
    }

    v54 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICNote attachmentViewType](self, "attachmentViewType")}];
    [v7 setObject:v54 forKeyedSubscript:@"AttachmentViewType"];

    v55 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICNote paperStyleType](self, "paperStyleType")}];
    [v7 setObject:v55 forKeyedSubscript:@"PaperStyleType"];
  }

  return v7;
}

- (void)addNoteBodyToRecord:(id)a3 forApproach:(int64_t)a4 mergeableFieldState:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ICNote *)self noteData];
  v11 = [v10 needsToBeSaved];

  if ((v11 & 1) == 0)
  {
    [(ICNote *)self willChangeValueForKey:@"data"];
    v12 = [(ICNote *)self noteData];
    [v12 setNeedsToBeSaved:1];

    [(ICNote *)self didChangeValueForKey:@"data"];
  }

  if (v9)
  {
    v13 = [MEMORY[0x277CBC5A0] ic_encryptedKeyForKeyPrefix:@"TextData"];
    objc_opt_class();
    v14 = [v9 objectForKey:v13];
    v15 = ICDynamicCast();

    if ([v15 length])
    {
      v16 = [ICTTMergeableString timestampFromData:v15];
      if (v16)
      {
        v17 = v16;
        v18 = [(ICNote *)self mergeableString];
        v19 = [v18 serializeDeltaSinceTimestamp:v17];

        if ([v19 length])
        {
          [v8 ic_setEncryptedInlineableDataAsset:v19 forKeyPrefix:@"TextDeltaData" approach:a4 withObject:self];
        }

        else
        {
          v22 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [ICNote(CloudKit) addNoteBodyToRecord:? forApproach:? mergeableFieldState:?];
          }
        }

        goto LABEL_18;
      }

      v20 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ICNote(CloudKit) addNoteBodyToRecord:? forApproach:? mergeableFieldState:?];
      }
    }
  }

  v21 = [(ICNote *)self noteData];
  v13 = [v21 data];

  if (v13)
  {
    [v8 ic_setEncryptedInlineableDataAsset:v13 forKeyPrefix:@"TextData" approach:a4 withObject:self];
  }

LABEL_18:

  [(ICNote *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:v9];
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 recordName];
  v10 = [ICNote noteWithIdentifier:v9 accountID:v8 context:v7];

  return v10;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ICAccount cloudKitAccountWithIdentifier:v7 context:a5];
  v10 = [ICNote newNoteWithoutIdentifierInAccount:v9];
  v11 = [MEMORY[0x277CBEAA8] distantPast];
  [v10 setModificationDate:v11];

  v12 = [MEMORY[0x277CBEAA8] distantPast];
  [v10 setCreationDate:v12];

  v13 = [v8 recordID];
  v14 = [v13 recordName];
  [v10 setIdentifier:v14];

  [v10 setNeedsInitialFetchFromCloud:1];
  [v10 mergeCloudKitRecord:v8 accountID:v7 approach:0];

  [v10 setNeedsInitialFetchFromCloud:0];
  [v10 setServerRecord:v8];
  [v10 setInCloud:1];
  [v10 clearChangeCountWithReason:@"Created note"];
  [v10 updateParentReferenceIfNecessary];
  v15 = [v8 recordType];

  LODWORD(v8) = [v15 isEqualToString:@"PasswordProtectedNote"];
  if (v8)
  {
    [v10 setIsPasswordProtected:1];
  }

  return v10;
}

+ (id)newPlaceholderObjectForRecordName:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = [ICAccount cloudKitAccountWithIdentifier:a4 context:a5];
  v10 = [a1 newPlaceholderObjectForRecordName:v8 account:v9];

  return v10;
}

+ (id)newPlaceholderObjectForRecordName:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 identifier];
  v9 = [v6 managedObjectContext];
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___ICNote;
  v10 = objc_msgSendSuper2(&v12, sel_newPlaceholderObjectForRecordName_accountID_context_, v7, v8, v9);

  [v10 setAccount:v6];
  return v10;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = ICNote;
  v5 = [(ICCloudSyncingObject *)&v32 makeUserSpecificCloudKitRecordForApproach:?];
  v6 = [(ICNote *)self folder];
  v7 = [v6 recordID];

  if (!v7 || ![v7 ic_isOwnedByCurrentUser])
  {
    v10 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(ICNote *)self identifier];
      *buf = 138412290;
      v34 = v11;
      _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEFAULT, "Creating user specific note record with no folder record ID: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v8 = [(ICNote *)self folder];
  v9 = [v8 isTrashFolder];

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(CloudKit) makeUserSpecificCloudKitRecordForApproach:?];
    }

LABEL_8:

    goto LABEL_9;
  }

  v10 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v7 action:0];
  [v5 setObject:v10 forKeyedSubscript:@"Folder"];
LABEL_9:

  v12 = [(ICCloudSyncingObject *)self recordID];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v12 action:0];
    [v5 setObject:v13 forKeyedSubscript:@"Note"];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(ICNote *)self identifier];
      *buf = 138412290;
      v34 = v14;
      _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEFAULT, "Creating user specific note record with no note record ID: %@", buf, 0xCu);
    }
  }

  v15 = [(ICNote *)self lastViewedModificationDate];

  if (v15)
  {
    v16 = [(ICNote *)self lastViewedModificationDate];
    [v5 setObject:v16 forKeyedSubscript:@"LastViewedModificationDate"];
  }

  v17 = [(ICNote *)self lastViewedTimestampData];
  if (v17)
  {
    [v5 setObject:v17 forKeyedSubscript:@"LastViewedTimestamp"];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote isPinned](self, "isPinned")}];
  [v5 setObject:v18 forKeyedSubscript:@"IsPinned"];

  v19 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [(ICNote(CloudKit) *)self makeUserSpecificCloudKitRecordForApproach:v5];
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote isSystemPaper](self, "isSystemPaper")}];
  [v5 setObject:v20 forKeyedSubscript:@"IsSystemPaper"];

  v21 = [(ICNote *)self hostApplicationIdentifier];
  v22 = [v5 encryptedValues];
  [v22 setObject:v21 forKeyedSubscript:@"HostApplicationIdentifierEncrypted"];

  v23 = [(ICNote *)self lastActivitySummaryViewedDate];

  if (v23)
  {
    v24 = [(ICNote *)self lastActivitySummaryViewedDate];
    [v5 setObject:v24 forKeyedSubscript:@"LastActivitySummaryViewedDate"];
  }

  v25 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];

  if (v25)
  {
    v26 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    [v5 setObject:v26 forKeyedSubscript:@"LastActivityRecentUpdatesViewedDate"];
  }

  v27 = [(ICNote *)self lastAttributionsViewedDate];

  if (v27)
  {
    v28 = [(ICNote *)self lastAttributionsViewedDate];
    [v5 setObject:v28 forKeyedSubscript:@"LastAttributionsViewedDate"];
  }

  v29 = [(ICNote *)self outlineStateData];

  if (v29)
  {
    v30 = [(ICNote *)self outlineStateData];
    [v5 ic_setEncryptedInlineableDataAsset:v30 forKeyPrefix:@"OutlineState" approach:a3 withObject:self];
  }

  return v5;
}

- (BOOL)mergeDataFromUserSpecificRecord:(id)a3 accountID:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v62.receiver = self;
  v62.super_class = ICNote;
  LODWORD(v8) = [(ICCloudSyncingObject *)&v62 mergeDataFromUserSpecificRecord:v6 accountID:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"Folder"];
    if (v9 && [(ICCloudSyncingObject *)self isSharedViaICloud])
    {
      v10 = [v9 recordID];
      v11 = [(ICNote *)self managedObjectContext];
      v12 = [ICFolder existingCloudObjectForRecordID:v10 accountID:v7 context:v11];

      if (!v12)
      {
        v13 = [v9 recordID];
        v14 = [v13 recordName];
        [(ICNote *)self managedObjectContext];
        v16 = v15 = v7;
        v12 = [ICFolder newPlaceholderObjectForRecordName:v14 accountID:v15 context:v16];

        v7 = v15;
      }

      v17 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v54 = [v12 identifier];
        v55 = [(ICNote *)self identifier];
        *buf = 138412802;
        v64 = v54;
        v65 = 2112;
        v66 = v7;
        v67 = 2112;
        v68 = v55;
        _os_log_debug_impl(&dword_214D51000, v17, OS_LOG_TYPE_DEBUG, "Setting folder %@ in account %@ to note %@ from user specific record.", buf, 0x20u);
      }

      [(ICNote *)self setFolder:v12];
    }

    v18 = [v6 objectForKeyedSubscript:@"LastViewedModificationDate"];
    if (v18)
    {
      v19 = [(ICNote *)self lastViewedModificationDate];
      v20 = [v19 ic_isEarlierThanDate:v18];

      if (v20)
      {
        [(ICNote *)self setLastViewedModificationDate:v18];
      }
    }

    v21 = [v6 objectForKeyedSubscript:@"LastViewedTimestamp"];
    if (v21)
    {
      v22 = [[ICTTVectorMultiTimestamp alloc] initWithData:v21 andCapacity:2];
      v23 = [(ICNote *)self lastViewedTimestamp];

      if (!v23 || (-[ICNote lastViewedTimestamp](self, "lastViewedTimestamp"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 compareTo:v22], v24, (v25 & 1) != 0))
      {
        [(ICNote *)self setLastViewedTimestamp:v22];
      }
    }

    v26 = [v6 objectForKeyedSubscript:@"IsPinned"];
    v27 = v26;
    if (v26)
    {
      -[ICNote setIsPinned:](self, "setIsPinned:", [v26 BOOLValue]);
    }

    v58 = v27;
    v28 = [v6 objectForKeyedSubscript:@"IsSystemPaper"];
    if (v28)
    {
      v29 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [ICNote(CloudKit) mergeDataFromUserSpecificRecord:? accountID:?];
      }

      -[ICNote setIsSystemPaper:](self, "setIsSystemPaper:", [v28 BOOLValue]);
    }

    v57 = v28;
    v59 = v21;
    v60 = v18;
    v61 = v9;
    v30 = [v6 encryptedValues];
    v31 = [v30 objectForKeyedSubscript:@"HostApplicationIdentifierEncrypted"];
    [(ICNote *)self setHostApplicationIdentifier:v31];

    v32 = [v6 objectForKeyedSubscript:@"LastActivitySummaryViewedDate"];
    if (v32)
    {
      v33 = [(ICNote *)self lastActivitySummaryViewedDate];
      if (!v33 || (v34 = v33, -[ICNote lastActivitySummaryViewedDate](self, "lastActivitySummaryViewedDate"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v32 ic_isLaterThanDate:v35], v35, v34, v36))
      {
        [(ICNote *)self setLastActivitySummaryViewedDate:v32];
      }
    }

    v37 = [v6 objectForKeyedSubscript:@"LastActivityRecentUpdatesViewedDate"];
    if (v37)
    {
      v38 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
      if (!v38 || (v39 = v38, -[ICNote lastActivityRecentUpdatesViewedDate](self, "lastActivityRecentUpdatesViewedDate"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v37 ic_isLaterThanDate:v40], v40, v39, v41))
      {
        [(ICNote *)self setLastActivityRecentUpdatesViewedDate:v37];
      }
    }

    v42 = [v6 objectForKeyedSubscript:@"LastAttributionsViewedDate"];
    if (v42)
    {
      v43 = [(ICNote *)self lastAttributionsViewedDate];
      if (!v43 || (v44 = v43, -[ICNote lastAttributionsViewedDate](self, "lastAttributionsViewedDate"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v42 ic_isLaterThanDate:v45], v45, v44, v46))
      {
        [(ICNote *)self setLastAttributionsViewedDate:v42];
      }
    }

    v47 = [v6 ic_encryptedInlineableDataAssetForKeyPrefix:@"OutlineState"];
    if (v47)
    {
      v56 = v8;
      v8 = v7;
      v48 = [[ICOutlineState alloc] initWithData:v47];
      v49 = [(ICNote *)self outlineState];
      v50 = [v49 mergeWithState:v48];

      if (v50)
      {
        v51 = [(ICNote *)self outlineState];
        v52 = [v51 data];
        [(ICNote *)self setOutlineStateData:v52];
      }

      v7 = v8;
      LOBYTE(v8) = v56;
    }
  }

  return v8;
}

- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"Folder"];
  v5 = ICDynamicCast();

  objc_opt_class();
  v6 = [v3 objectForKeyedSubscript:@"Note"];

  v7 = ICDynamicCast();

  if (v5)
  {
    v8 = 1;
    if ([v5 referenceAction] && v7)
    {
      v8 = [v7 referenceAction] == 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)isInICloudAccount
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICNote *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ICNote_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __37__ICNote_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) folder];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInICloudAccount];
}

- (void)fixBrokenReferencesWithError:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v56 = a3;
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ICCloudSyncingObject *)self loggingDescription];
    *buf = 138412290;
    v68 = v5;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Fixing broken references for %@", buf, 0xCu);
  }

  v6 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v8 = [(ICNote *)self folder];
    v9 = [v8 loggingDescription];
    *buf = 138412546;
    v68 = v7;
    v69 = 2112;
    v70 = v9;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Folder for %@: %@", buf, 0x16u);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v58 = self;
  v10 = [(ICNote *)self attachments];
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v64;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v63 + 1) + 8 * i);
        v16 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(ICCloudSyncingObject *)v58 shortLoggingDescription];
          v18 = [v15 loggingDescription];
          *buf = 138412546;
          v68 = v17;
          v69 = 2112;
          v70 = v18;
          _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "Attachment for %@: %@", buf, 0x16u);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v12);
  }

  v19 = v58;
  if ([(ICNote *)v58 markedForDeletion])
  {
    [(ICCloudSyncingObject *)v58 findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:v56];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v20 = [(ICNote *)v58 attachments];
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v60;
      v24 = "com.apple.notes";
      v25 = "Cloud";
      v26 = 0x278192000uLL;
      do
      {
        v27 = 0;
        v57 = v22;
        do
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v28 = *(*(&v59 + 1) + 8 * v27);
          if (([v28 markedForDeletion] & 1) == 0)
          {
            v29 = os_log_create(v24, v25);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              [(ICNote *)v19 identifier];
              v30 = v23;
              v31 = v20;
              v32 = v26;
              v33 = v25;
              v35 = v34 = v24;
              v36 = [v28 identifier];
              *buf = 138412546;
              v68 = v35;
              v69 = 2112;
              v70 = v36;
              _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Found a deleted note (%@) with an undeleted attachment (%@)", buf, 0x16u);

              v19 = v58;
              v24 = v34;
              v25 = v33;
              v26 = v32;
              v20 = v31;
              v23 = v30;
              v22 = v57;
            }

            [*(v26 + 2456) deleteAttachment:v28];
          }

          ++v27;
        }

        while (v22 != v27);
        v22 = [v20 countByEnumeratingWithState:&v59 objects:v73 count:16];
      }

      while (v22);
    }
  }

  if ([(ICCloudSyncingObject *)v19 isSharedViaICloud])
  {
    if ([(ICCloudSyncingObject *)v19 isOwnedByCurrentUser]|| ([(ICNote *)v19 markedForDeletion]& 1) == 0)
    {
      if (![(ICCloudSyncingObject *)v19 isOwnedByCurrentUser])
      {
        goto LABEL_36;
      }

      v37 = [(ICCloudSyncingObject *)v19 serverShare];
      if (v37)
      {
      }

      else
      {
        v38 = [(ICCloudSyncingObject *)v19 serverRecord];
        v39 = [v38 share];

        if (!v39)
        {
          goto LABEL_36;
        }
      }

      [(ICCloudSyncingObject *)v19 setServerShare:0];
    }

    [(ICCloudSyncingObject *)v19 setNeedsToBeFetchedFromCloud:1];
  }

LABEL_36:
  v40 = [(ICNote *)v19 folder];
  v41 = [v40 markedForDeletion];

  if (v41)
  {
    v42 = [(ICNote *)v19 folder];
    [v42 unmarkForDeletion];
  }

  v43 = [(ICNote *)v19 folder];
  v44 = [v43 needsInitialFetchFromCloud];

  if (v44)
  {
    v45 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [(ICNote *)v19 identifier];
      v47 = [(ICNote *)v19 account];
      v48 = [v47 identifier];
      v49 = [(ICNote *)v19 account];
      v50 = [v49 trashFolder];
      v51 = [v50 identifier];
      *buf = 138412802;
      v68 = v46;
      v69 = 2112;
      v70 = v48;
      v71 = 2112;
      v72 = v51;
      _os_log_impl(&dword_214D51000, v45, OS_LOG_TYPE_DEFAULT, "Moving note %@ in account %@ to trash folder %@ since folder doesn't exist on server.", buf, 0x20u);

      v19 = v58;
    }

    v52 = [(ICNote *)v19 account];
    v53 = [v52 trashFolder];
    [(ICNote *)v19 setFolder:v53];

    v54 = [MEMORY[0x277CBEAA8] date];
    [(ICNote *)v19 setFolderModificationDate:v54];

    [(ICNote *)v19 updateChangeCountWithReason:@"Fixed broken reference"];
  }

  else
  {
    v55 = [(ICNote *)v19 folder];
    [v55 updateChangeCountWithReason:@"Fixed broken reference"];
  }
}

- (BOOL)hasAllMandatoryFields
{
  v8.receiver = self;
  v8.super_class = ICNote;
  if (![(ICCloudSyncingObject *)&v8 hasAllMandatoryFields])
  {
    return 0;
  }

  v3 = [(ICNote *)self noteData];
  v4 = [v3 data];
  if (v4)
  {
    v5 = [(ICNote *)self folder];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)needsToBeDeletedFromCloud
{
  if ([(ICNote *)self isSharedViaICloudFolder])
  {
    if (![(ICCloudSyncingObject *)self isOwnedByCurrentUser])
    {
      if ([(ICCloudSyncingObject *)self isInCloud])
      {
        if ([(ICNote *)self markedForDeletion])
        {
          v3 = [(ICNote *)self folder];
          v4 = [v3 markedForDeletion];

          if (v4)
          {
            return 1;
          }
        }
      }
    }
  }

  v6.receiver = self;
  v6.super_class = ICNote;
  return [(ICCloudSyncingObject *)&v6 needsToBeDeletedFromCloud];
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v9.receiver = self;
  v9.super_class = ICNote;
  v3 = [(ICCloudSyncingObject *)&v9 objectsToBeDeletedBeforeThisObject];
  v4 = [v3 mutableCopy];

  v5 = [(ICNote *)self attachments];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = [v4 copy];

  return v7;
}

- (int64_t)mergePolicyForRecord:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(ICNote *)self needsInitialFetchFromCloud]& 1) == 0)
  {
    v6 = [v4 objectForKeyedSubscript:@"LegacyModificationDateAtImport"];
    v7 = [(ICNote *)self legacyModificationDateAtImport];

    if ((v6 != 0) != (v7 != 0))
    {
      v8 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v63 = v6;
        v10 = [(ICCloudSyncingObject *)self recordID];
        v11 = [v10 recordName];
        v12 = [(ICNote *)self legacyContentHashAtImport];
        v13 = [v4 encryptedValues];
        v14 = [v13 objectForKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];
        v15 = [v14 ic_stringValue];
        v16 = v15;
        if (!v15)
        {
          v16 = [v4 objectForKeyedSubscript:@"LegacyContentHashAtImport"];
        }

        v17 = [(ICNote *)self legacyModificationDateAtImport];
        *buf = 138413314;
        v65 = v11;
        v66 = 2112;
        v67 = v12;
        v68 = 2112;
        v69 = v16;
        v70 = 2112;
        v71 = v17;
        v72 = 2112;
        v73 = v63;
        _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Duplicating a note received from the cloud because they're not both legacy notes: (%@)\n\tlegacyContentHashAtImport:\t\t%@\n\totherLegacyContentHashAtImport:\t%@\n\tlegacyModificationDateAtImport:\t%@\n\totherLegacyModificationDateAtImport:\t%@", buf, 0x34u);

        if (!v15)
        {
        }

        v5 = 3;
        v18 = v9;
        v6 = v63;
        v8 = v9;
        goto LABEL_66;
      }

      v5 = 3;
      goto LABEL_33;
    }

    v19 = [(ICCloudSyncingObject *)self serverRecord];
    if (v19)
    {
      v20 = v19;
      v21 = v6 | v7;
      v22 = [v4 creationDate];
      v23 = [(ICCloudSyncingObject *)self serverRecord];
      v24 = [v23 creationDate];
      v25 = [v22 isEqualToDate:v24];

      if (v21)
      {
        v26 = v25 ^ 1;
LABEL_16:
        v18 = [v4 objectForKeyedSubscript:@"LegacyImportDeviceIdentifier"];
        v27 = [(ICNote *)self legacyImportDeviceIdentifier];
        v28 = [v27 isEqualToString:v18];

        if (v28)
        {
          if (!v26)
          {
            v5 = 0;
LABEL_67:

            goto LABEL_68;
          }

          v29 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [(ICNote *)self identifier];
            *buf = 138412290;
            v65 = v30;
            _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Found a legacy note (%@) in the cloud with a record whose creation date is not equal to our own cached version. Replacing our own version with the one in the cloud.", buf, 0xCu);
          }

          v5 = 1;
          v8 = v29;
          goto LABEL_65;
        }

        v31 = [v4 encryptedValues];
        v32 = [v31 objectForKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];
        v33 = [v32 ic_stringValue];

        v62 = v18;
        if (v33)
        {
          goto LABEL_24;
        }

        v50 = [v4 objectForKeyedSubscript:@"LegacyContentHashAtImport"];

        if (!v50)
        {
          v60 = 0;
          v33 = 0;
          goto LABEL_25;
        }

        v33 = [v4 objectForKeyedSubscript:@"LegacyContentHashAtImport"];
        if (v33)
        {
LABEL_24:
          v34 = [(ICNote *)self legacyContentHashAtImport];
          v60 = [v34 isEqualToString:v33];
        }

        else
        {
          v60 = 0;
        }

LABEL_25:
        v35 = [(ICNote *)self legacyModificationDateAtImport];
        v57 = [v35 isEqualToDate:v6];

        v61 = [v4 objectForKeyedSubscript:@"ModificationDate"];
        v59 = [v61 isEqualToDate:v6];
        v36 = [(ICCloudSyncingObject *)self modificationDate];
        v37 = [(ICNote *)self legacyModificationDateAtImport];
        v58 = [v36 isEqualToDate:v37];

        v38 = MEMORY[0x277CCACA8];
        v39 = [(ICCloudSyncingObject *)self recordID];
        v40 = [v39 recordName];
        v41 = [(ICNote *)self legacyContentHashAtImport];
        v42 = [(ICNote *)self legacyModificationDateAtImport];
        v43 = [v38 stringWithFormat:@"(%@)\n\tlegacyContentHashAtImport:\t\t%@\n\totherLegacyContentHashAtImport:\t%@\n\tlegacyModificationDateAtImport:\t%@\n\totherLegacyModificationDateAtImport:\t%@", v40, v41, v33, v42, v6];

        if (v60 & 1) != 0 || (v57)
        {
          v48 = v59 ^ 1;
          if (((v58 ^ 1) & 1) == 0 && (v48 & 1) == 0)
          {
            v47 = os_log_create("com.apple.notes", "Cloud");
            v18 = v62;
            v8 = v33;
            v29 = v61;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v65 = v43;
              v49 = "Replacing note content from cloud and no device has modified it: %@";
LABEL_53:
              _os_log_impl(&dword_214D51000, v47, OS_LOG_TYPE_DEFAULT, v49, buf, 0xCu);
            }

LABEL_54:
            v5 = 1;
LABEL_64:

LABEL_65:
            goto LABEL_66;
          }

          v18 = v62;
          v8 = v33;
          v29 = v61;
          if (((v59 | v58 ^ 1) & 1) == 0)
          {
            v47 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v65 = v43;
              v49 = "Replacing note content from cloud and the other device has modified it: %@";
              goto LABEL_53;
            }

            goto LABEL_54;
          }

          if ((v58 | v48))
          {
            v47 = os_log_create("com.apple.notes", "Cloud");
            v51 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
            if ((v59 | v58))
            {
              if (v51)
              {
                *buf = 138412290;
                v65 = v43;
                v52 = "Duplicating a note received from the cloud because we failed to make a decision: %@";
LABEL_62:
                _os_log_impl(&dword_214D51000, v47, OS_LOG_TYPE_DEFAULT, v52, buf, 0xCu);
                goto LABEL_63;
              }
            }

            else if (v51)
            {
              *buf = 138412290;
              v65 = v43;
              v52 = "Duplicating a note received from the cloud because both devices modified the note since import: %@";
              goto LABEL_62;
            }

            v5 = 3;
            goto LABEL_64;
          }

          v47 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v65 = v43;
            v52 = "Duplicating a note received from the cloud because this device modified the note since import: %@";
            goto LABEL_62;
          }
        }

        else
        {
          v44 = v43;
          v45 = [(ICNote *)self legacyModificationDateAtImport];
          v46 = [v45 ic_isLaterThanDate:v6] & v59;

          if (v46 == 1)
          {
            v47 = os_log_create("com.apple.notes", "Cloud");
            v18 = v62;
            v8 = v33;
            v29 = v61;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v44;
              v65 = v44;
              _os_log_impl(&dword_214D51000, v47, OS_LOG_TYPE_DEFAULT, "Fetched legacy note imported from an earlier legacy version than ours: %@", buf, 0xCu);
              v5 = 2;
            }

            else
            {
              v5 = 2;
              v43 = v44;
            }

            goto LABEL_64;
          }

          v53 = [(ICNote *)self legacyModificationDateAtImport];
          v54 = [v53 ic_isEarlierThanDate:v6] & v58;

          v47 = os_log_create("com.apple.notes", "Cloud");
          v55 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          v18 = v62;
          v8 = v33;
          v29 = v61;
          v43 = v44;
          if (v54 == 1)
          {
            if (v55)
            {
              *buf = 138412290;
              v65 = v44;
              v49 = "Fetched legacy note imported from a later legacy version than ours: %@";
              goto LABEL_53;
            }

            goto LABEL_54;
          }

          if (v55)
          {
            *buf = 138412290;
            v65 = v44;
            v52 = "Duplicating a note received from the cloud because both devices didn't import the same legacy version: %@";
            goto LABEL_62;
          }
        }

LABEL_63:
        v5 = 3;
        goto LABEL_64;
      }

      if ((v25 & 1) == 0)
      {
        v8 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [ICNote(CloudKit) mergePolicyForRecord:?];
        }

        v5 = 0;
LABEL_33:
        v18 = v8;
LABEL_66:

        goto LABEL_67;
      }
    }

    else if (v6 | v7)
    {
      v26 = 0;
      goto LABEL_16;
    }

    v5 = 0;
LABEL_68:

    goto LABEL_69;
  }

  v5 = 0;
LABEL_69:

  return v5;
}

- (void)deduplicateSelfAndCreateNewObjectFromRecord:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNote *)self identifier];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  [(ICNote *)self setIdentifier:v7];

  [(ICNote *)self setLegacyContentHashAtImport:0];
  [(ICNote *)self setLegacyImportDeviceIdentifier:0];
  [(ICNote *)self setLegacyModificationDateAtImport:0];
  [(ICCloudSyncingObject *)self setInCloud:0];
  [(ICCloudSyncingObject *)self clearServerRecords];
  [(ICCloudSyncingObject *)self unsafelyUpdateChangeCountWithReason:@"De-duplicated from record"];
  v8 = [(ICNote *)self account];
  v9 = [v8 identifier];

  v10 = objc_opt_class();
  v11 = [(ICNote *)self managedObjectContext];
  v12 = [v10 newCloudObjectForRecord:v4 accountID:v9 context:v11];

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(ICNote *)self identifier];
    v15 = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEFAULT, "De-duplicated note (%@) to new identifier (%@)", &v15, 0x16u);
  }
}

- (id)attachmentForWebThumbnail
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__37;
  v12 = __Block_byref_object_dispose__37;
  v13 = 0;
  v3 = [(ICNote *)self attributedString];
  v4 = [(ICNote *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ICNote_CloudKit__attachmentForWebThumbnail__block_invoke;
  v7[3] = &unk_278195380;
  v7[4] = &v8;
  [v3 ic_enumerateAttachmentsInContext:v4 usingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __45__ICNote_CloudKit__attachmentForWebThumbnail__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  v8 = [v10 attachmentModel];
  v9 = [v8 showThumbnailInNoteList];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a5 = 1;
  }
}

+ (BOOL)didShowExceededStorageQuotaAlertForNoteWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v5 arrayForKey:@"ICDidShowExceededStorageQuotaAlertForNote"];

  LOBYTE(v5) = [v6 containsObject:v4];
  return v5;
}

+ (void)setDidShowExceededStorageQuotaAlert:(BOOL)a3 forNoteWithIdentifier:(id)a4
{
  v4 = a3;
  v14 = a4;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 arrayForKey:@"ICDidShowExceededStorageQuotaAlertForNote"];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] array];
  }

  v10 = v9;

  v11 = [v10 containsObject:v14];
  if (v4)
  {
    if (v11)
    {
      goto LABEL_10;
    }

    [v10 addObject:v14];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    [v10 removeObjectAtIndex:{objc_msgSend(v10, "indexOfObject:", v14)}];
  }

  v12 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [v10 copy];
  [v12 setObject:v13 forKey:@"ICDidShowExceededStorageQuotaAlertForNote"];

LABEL_10:
}

- (NSString)folderManagedIdentifier
{
  v2 = [(ICNote *)self folder];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)folderName
{
  v2 = [(ICNote *)self folder];
  v3 = [v2 localizedTitle];

  return v3;
}

- (NSString)folderNameForNoteList
{
  v3 = [(ICNote *)self folderName];
  if ([(ICNote *)self isSharedViaICloudFolder]&& [(ICNote *)self isDeletedOrInTrash])
  {
    v4 = [(ICNote *)self folder];
    v5 = [v4 rootSharingFolder];
    v6 = [v5 localizedTitle];

    v3 = v6;
  }

  return v3;
}

- (NSString)accountName
{
  v2 = [(ICNote *)self folder];
  v3 = [v2 account];
  v4 = [v3 localizedName];

  return v4;
}

- (NSString)trimmedTitle
{
  v2 = [(ICNote *)self title];
  v3 = v2;
  v4 = &stru_2827172C0;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  if ([(__CFString *)v5 length])
  {
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [(__CFString *)v5 stringByTrimmingCharactersInSet:v6];

    v5 = [v7 ic_whitespaceAndNewlineCoalescedString];
  }

  return v5;
}

- (NSAttributedString)trimmedAttributedTitle
{
  v2 = [(ICNote *)self attributedTitle];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4 = [v2 ic_attributedStringByTrimmingCharactersInSet:v3];

    v2 = [v4 ic_whitespaceAndNewlineCoalescedAttributedString];
  }

  return v2;
}

- (BOOL)isHiddenFromIndexing
{
  if (([(ICNote *)self isDeleted]& 1) != 0 || ([(ICNote *)self markedForDeletion]& 1) != 0 || [(ICCloudSyncingObject *)self isUnsupported]|| ([(ICNote *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    return 1;
  }

  v5 = [(ICNote *)self folder];
  v6 = [v5 account];
  v3 = v6 == 0;

  return v3;
}

- (NSArray)authorsExcludingCurrentUser
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v5 = [v4 participants];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isCurrentUser] & 1) == 0)
        {
          v11 = [v10 userIdentity];
          v12 = [v11 nameComponents];

          if (v12)
          {
            [v3 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)searchableString
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(ICNote *)self uiAttributedString], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(ICNote *)self attributedString];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CCA898]);
    }

    v3 = v6;
  }

  v7 = [(ICNote *)self managedObjectContext];
  v8 = [v3 ic_searchableStringInContext:v7];

  return v8;
}

- (int64_t)currentStatus
{
  if ([(ICNote *)self isPasswordProtected])
  {
    if ([(ICCloudSyncingObject *)self isAuthenticated])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if ([(ICCloudSyncingObject *)self isSharedViaICloud]&& ![(ICNote *)self isSharedViaICloudFolder])
  {
    return 3;
  }

  else if ([(ICNote *)self isSharedViaICloudFolder])
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isSharedViaICloudFolder
{
  v3 = [(ICCloudSyncingObject *)self isSharedViaICloud];
  if (v3)
  {
    LOBYTE(v3) = ![(ICCloudSyncingObject *)self isSharedRootObject];
  }

  return v3;
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(ICNote *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (NSString)searchDomainIdentifier
{
  v2 = [(ICNote *)self account];
  v3 = [v2 identifier];

  return v3;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  v4 = [(ICCloudSyncingObject *)self creationDate];
  [v3 setContentCreationDate:v4];

  v5 = [(ICCloudSyncingObject *)self modificationDate];
  [v3 setContentModificationDate:v5];

  v6 = [(ICNote *)self title];
  [v3 setDisplayName:v6];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v2 = self;
  v96[7] = *MEMORY[0x277D85DE8];
  v3 = [(ICNote *)self userActivityContentAttributeSet];
  [v3 setDataOwnerType:&unk_282747EE0];
  v96[0] = @"com.apple.notes.richtext";
  v4 = [*MEMORY[0x277CE1D78] identifier];
  v96[1] = v4;
  v5 = [*MEMORY[0x277CE1ED8] identifier];
  v96[2] = v5;
  v6 = [*MEMORY[0x277CE1DA0] identifier];
  v96[3] = v6;
  v7 = [*MEMORY[0x277CE1E50] identifier];
  v96[4] = v7;
  v8 = [*MEMORY[0x277CE1EB0] identifier];
  v96[5] = v8;
  v96[6] = @"com.apple.notes.noteitemprovider";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:7];
  [v3 setProviderDataTypes:v9];

  v72 = v3;
  v73 = v2;
  if (([(ICNote *)v2 isPasswordProtected]& 1) == 0)
  {
    v10 = [(ICNote *)v2 searchableString];
    v11 = [v10 string];
    v12 = [v11 mutableCopy];

    v71 = v10;
    v69 = [MEMORY[0x277D36228] titleForAttributedContent:v10 truncated:0 attributedTitleIfNecessary:0];
    v13 = [MEMORY[0x277D36228] stringByRemovingTitle:? fromString:?];
    v14 = [MEMORY[0x277D36228] snippetForContent:v13];

    v68 = v14;
    [v3 setContentDescription:v14];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v15 = [(ICNote *)v2 attachments];
    v16 = [v15 countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v89;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v89 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v88 + 1) + 8 * i) attachmentModel];
          v21 = [v20 additionalIndexableTextContentInNote];

          if (v21)
          {
            [v12 appendString:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v88 objects:v95 count:16];
      }

      while (v17);
    }

    v70 = v12;
    [v3 setTextContent:v12];
    v22 = [MEMORY[0x277CBEB58] set];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v23 = [(ICNote *)v73 attachments];
    v24 = [v23 countByEnumeratingWithState:&v84 objects:v94 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v85;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v85 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v84 + 1) + 8 * j);
          v29 = [v28 typeUTI];

          if (v29)
          {
            v30 = MEMORY[0x277CE1CB8];
            v31 = [v28 typeUTI];
            v32 = [v30 typeWithIdentifier:v31];
            v33 = [v32 supertypes];
            v34 = [v33 ic_map:&__block_literal_global_71];

            [v22 unionSet:v34];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v25);
    }

    if ([v22 count])
    {
      v35 = [v22 allObjects];
      [v3 setAttachmentTypes:v35];
    }

    v2 = v73;
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v37 = [(ICNote *)v2 visibleInlineAttachments];
  v38 = [v37 countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v81;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v81 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v80 + 1) + 8 * k);
        if ([v42 attachmentType] == 1)
        {
          v43 = [v42 displayText];
          v44 = [v43 ic_hashtagDisplayText];

          v45 = [(ICNote *)v2 folder];
          v46 = [v45 account];
          v47 = [ICHashtag hashtagWithDisplayText:v44 account:v46 createIfNecessary:0];

          if (v47)
          {
            [v36 ic_addNonNilObject:v44];
          }

          v2 = v73;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v39);
  }

  if ([v36 count])
  {
    v48 = [v36 allObjects];
    [v72 setHashtags:v48];
  }

  [(ICNote *)v2 addShareParticipantsToAttributeSet:v72];
  [(ICCloudSyncingObject *)v2 addEmailAddressesAndPhoneNumbersToAttributeSet:v72];
  [v72 setIc_searchResultType:0];
  [v72 ic_populateValuesForSpecializedFields];
  [v72 setIc_isLocked:{-[ICNote isPasswordProtected](v2, "isPasswordProtected")}];
  [v72 setIc_isShared:{-[ICCloudSyncingObject isSharedViaICloud](v2, "isSharedViaICloud")}];
  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudSyncingObject isSharedViaICloud](v2, "isSharedViaICloud")}];
  [v72 setShared:v49];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote isPinned](v2, "isPinned")}];
  [v72 setPinned:v50];

  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote isDeletedOrInTrash](v2, "isDeletedOrInTrash")}];
  [v72 setTrashed:v51];

  if ([(ICNote *)v2 isPasswordProtected])
  {
    [v72 setIc_hasChecklists:0];
    [v72 setIc_hasTags:0];
    [v72 setIc_hasDrawings:0];
    [v72 setIc_hasScannedDocuments:0];
    [v72 setIc_hasAttachments:0];
  }

  else
  {
    v52 = [(ICNote *)v2 attributedString];
    v53 = [v52 length];

    v54 = [(ICNote *)v2 attributedString];
    v55 = ICTTAttributeNameParagraphStyle;
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __57__ICNote_SearchIndexableNote__searchableItemAttributeSet__block_invoke_2;
    v78[3] = &unk_278197B70;
    v56 = v72;
    v79 = v56;
    [v54 enumerateAttribute:v55 inRange:0 options:v53 usingBlock:{0, v78}];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v57 = [(ICNote *)v2 visibleAttachments];
    v58 = [v57 countByEnumeratingWithState:&v74 objects:v92 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v75;
LABEL_40:
      v61 = 0;
      while (1)
      {
        if (*v75 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v74 + 1) + 8 * v61);
        if ([v62 attachmentType] == 10 || objc_msgSend(v62, "attachmentType") == 9 || objc_msgSend(v62, "attachmentType") == 13)
        {
          [v56 setIc_hasDrawings:1];
        }

        else
        {
          if ([v62 attachmentType] != 12 && objc_msgSend(v62, "attachmentType") && objc_msgSend(v62, "attachmentType") != 1)
          {
            [v56 setIc_hasAttachments:1];
          }

          if ([v62 attachmentType] == 11 || objc_msgSend(v62, "attachmentType") == 15)
          {
            [v56 setIc_hasScannedDocuments:1];
          }
        }

        if ([v56 ic_hasDrawings] && (objc_msgSend(v56, "ic_hasScannedDocuments") & 1) != 0)
        {
          break;
        }

        if (v59 == ++v61)
        {
          v63 = [v57 countByEnumeratingWithState:&v74 objects:v92 count:16];
          v59 = v63;
          if (v63)
          {
            goto LABEL_40;
          }

          break;
        }
      }
    }

    [v56 setIc_hasTags:{-[ICNote hasTags](v2, "hasTags")}];
  }

  v64 = [(ICNote *)v2 accountName];
  [v72 setIc_accountName:v64];

  v65 = [(ICNote *)v2 folderNameForNoteList];
  [v72 setIc_folderName:v65];

  if (objc_opt_respondsToSelector())
  {
    v66 = [(ICNote *)v2 searchableItemViewAttributeSet];
    [v72 addAttributesFromAttributeSet:v66];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)v2 associateAppEntityWithSearchableItemAttributeSet:v72];
  }

  return v72;
}

void __57__ICNote_SearchIndexableNote__searchableItemAttributeSet__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  objc_opt_class();
  v8 = ICCheckedDynamicCast();

  if ([v8 style] == 103)
  {
    [*(a1 + 32) setIc_hasChecklists:1];
    *a5 = 1;
  }
}

- (id)csPersonForShareParticipant:(id)a3
{
  if (a3)
  {
    v3 = [a3 ic_localizedNameWithDefaultFormattingStyle];
    v4 = objc_alloc(MEMORY[0x277CC3450]);
    v5 = [v4 initWithDisplayName:v3 handles:MEMORY[0x277CBEBF8] handleIdentifier:&stru_2827172C0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addShareParticipantsToAttributeSet:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  if (v5)
  {
    [v4 setShared:MEMORY[0x277CBEC38]];
    v17 = [v5 owner];
    v6 = [v17 userIdentity];
    v7 = [v6 nameComponents];
    v8 = [(ICNote *)self csPersonForShareParticipant:v7];

    if (v8)
    {
      v23[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      [v4 setAuthors:v9];
    }

    v10 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [(ICNote *)self authorsExcludingCurrentUser];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(ICNote *)self csPersonForShareParticipant:*(*(&v18 + 1) + 8 * i)];
          if (v16)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      [v4 setPrimaryRecipients:v10];
    }
  }

  else
  {
    [v4 setShared:MEMORY[0x277CBEC28]];
  }
}

- (BOOL)hasTags
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ICNote *)self visibleInlineAttachments];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 isHashtagAttachment])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (id)additionalSearchIndexablesForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"needsInitialFetchFromCloud", @"markedForDeletion", 0}];
  v7 = [v4 intersectsSet:v6];

  if (v7)
  {
    v8 = [(ICNote *)self attachments];
    v9 = [v8 copy];
    [v5 ic_addObjectsFromNonNilArray:v9];
  }

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"folder", @"isSystemPaper", 0}];
  v11 = [v4 intersectsSet:v10];

  if (v11)
  {
    v12 = [(ICNote *)self attachments];
    v13 = [v12 ic_objectsPassingTest:&__block_literal_global_71];

    if (v13)
    {
      [v5 unionSet:v13];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB98] set];
      [v5 unionSet:v14];
    }
  }

  return v5;
}

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3
{
  v4 = a3;
  v5 = self;
  ICNote.associateAppEntity(with:)(v4);
}

- (BOOL)objc_hasRecentExternalEdits
{
  v2 = self;
  v3 = ICNote.hasRecentExternalEdits.getter();

  return v3 & 1;
}

- (void)didRefresh:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)didRefresh:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)didRefresh:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateLastViewedTimestampWithCurrentTimestamp
{
  OUTLINED_FUNCTION_3();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() lastViewedModificationDate];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)attachmentExceedsMaxSizeAllowed:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)attachmentExceedsMaxSizeAllowed:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v2 = [MEMORY[0x277CCA8E8] stringFromByteCount:v1 countStyle:0];
  v3 = [MEMORY[0x277CCA8E8] stringFromByteCount:v0 countStyle:0];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x16u);
}

- (void)visibleTopLevelAttachmentsCount
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)rangeForAttachment:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2112;
  *(v2 + 14) = v4;
  _os_log_debug_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEBUG, "Attachment not found in note %@, %@", v5, 0x16u);
}

- (void)rangeForAttachment:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7(&dword_214D51000, a3, a3, "Cannot find attachment range because note is placeholder: %@", a2);
}

- (void)saveNoteData
{
  v1 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)setHostApplicationIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __35__ICNote_markActivitySummaryViewed__block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __35__ICNote_markActivitySummaryViewed__block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __45__ICNote_markLastActivityRecentUpdatesViewed__block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __45__ICNote_markLastActivityRecentUpdatesViewed__block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_11(a1) shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)widgetSnippetByEnumeratingAttachments
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_7(v2, v3, v4, v5, v6);
}

- (void)regenerateTitle:(void *)a1 snippet:isNewNote:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setFolder:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = [a1 identifier];
  v7 = [a2 identifier];
  v8 = [a2 folder];
  v9 = [a2 folder];
  v10 = [v9 identifier];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a2, "isDeleted")}];
  v14 = 134219522;
  v15 = a1;
  OUTLINED_FUNCTION_4_1();
  v16 = v6;
  v17 = 2048;
  v18 = a2;
  v19 = v12;
  v20 = v7;
  v21 = 2048;
  v22 = v8;
  v23 = v12;
  v24 = v10;
  v25 = v12;
  v26 = v13;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Setting folder[%p] (%@) on note[%p] (%@) with current folder[%p] (%@), isDeleted = %@", &v14, 0x48u);
}

- (void)setFolder:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [0 identifier];
  v5 = [a1 account];
  v6 = [v5 identifier];
  v7 = [MEMORY[0x277CCACC8] callStackSymbols];
  v10 = 138412802;
  v11 = v4;
  OUTLINED_FUNCTION_4_1();
  v12 = v6;
  v13 = v8;
  v14 = v9;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Setting nil folder on note (%@) with account (%@): %@", &v10, 0x20u);
}

- (void)setFolder:(NSObject *)a3 .cold.3(void *a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [a1 identifier];
  v7 = [a1 account];
  v8 = [v7 identifier];
  v9 = [a2 identifier];
  v10 = [a2 account];
  v11 = [v10 identifier];
  v14 = 138413058;
  v15 = v6;
  OUTLINED_FUNCTION_4_1();
  v16 = v8;
  v17 = v12;
  v18 = v9;
  v19 = v12;
  v20 = v13;
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "Setting folder (%@) account (%@) to note (%@) with previous account (%@)", &v14, 0x2Au);
}

- (void)updateDeviceReplicaIDsToUserIDIfNeeded
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __72__ICNote_AttachmentManagement__addSynapseLinkAttachmentWithContentItem___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end