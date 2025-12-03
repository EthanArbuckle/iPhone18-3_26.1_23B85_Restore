@interface ICNote
+ (BOOL)containsUnduplicatableNotes:(id)notes;
+ (BOOL)didShowExceededStorageQuotaAlertForNoteWithIdentifier:(id)identifier;
+ (BOOL)notes:(id)notes containSharedNotesNotSharedViaFolder:(id)folder;
+ (ICNote)noteWithIdentifier:(id)identifier includeDeleted:(BOOL)deleted accountID:(id)d context:(id)context;
+ (ICNote)noteWithLegacyManagedObjectID:(id)d context:(id)context;
+ (ICNote)noteWithUUID:(id)d context:(id)context;
+ (id)accountIdentifiersOfNotes:(id)notes;
+ (id)allPasswordProtectedNoteIdentifiersInContext:(id)context;
+ (id)contentInfoAttributedTextWithSnippet:(id)snippet attachmentContentInfoType:(signed __int16)type attachmentContentInfoCount:(int64_t)count account:(id)account;
+ (id)contentInfoTextWithSnippet:(id)snippet attachmentContentInfoType:(signed __int16)type attachmentContentInfoCount:(int64_t)count account:(id)account;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)keyPathsForValuesAffectingCanBeSharedViaICloud;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newEmptyNoteInContext:(id)context;
+ (id)newEmptyNoteInFolder:(id)folder;
+ (id)newEmptyNoteWithIdentifier:(id)identifier folder:(id)folder;
+ (id)newEmptyNoteWithUUID:(id)d folder:(id)folder;
+ (id)newFetchRequestForNotes;
+ (id)newNoteWithoutIdentifierInAccount:(id)account;
+ (id)newObjectWithIdentifier:(id)identifier context:(id)context;
+ (id)newObjectWithIdentifier:(id)identifier folder:(id)folder;
+ (id)newPlaceholderObjectForRecordName:(id)name account:(id)account;
+ (id)newPlaceholderObjectForRecordName:(id)name accountID:(id)d context:(id)context;
+ (id)noteIdentifiersMatchingPredicate:(id)predicate context:(id)context;
+ (id)notesContainingHashtagWithStandarizedContent:(id)content context:(id)context;
+ (id)notesMatchingPredicate:(id)predicate context:(id)context;
+ (id)passwordProtectedNoteIdentifiersForAccount:(id)account;
+ (id)predicateForSystemPaperNotesNotInTrash;
+ (id)predicateForVisibleNotesIncludingTrash:(BOOL)trash includingSystemPaper:(BOOL)paper includingMathNotes:(BOOL)notes includingCallNotes:(BOOL)callNotes inContext:(id)context;
+ (id)refreshAllOfNoteWithIdentifier:(id)identifier context:(id)context;
+ (id)snippetForPasswordProtectedNote:(id)note;
+ (id)systemPaperNotesFetchRequest;
+ (id)visibleNotesInContext:(id)context;
+ (unint64_t)countOfAllNotesInContext:(id)context;
+ (unint64_t)countOfNotesMatchingPredicate:(id)predicate context:(id)context;
+ (unint64_t)countOfPasswordProtectedNotesInContext:(id)context;
+ (unint64_t)countOfVisibleNotesInContext:(id)context;
+ (unint64_t)countOfVisiblePasswordProtectedNotesInAccount:(id)account;
+ (unint64_t)maxNoteAttachments;
+ (void)createNoteForAirDropDocument:(id)document processAttributedString:(id)string completion:(id)completion;
+ (void)deleteEmptyNote:(id)note;
+ (void)deleteNote:(id)note;
+ (void)enumerateNotesInContext:(id)context batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch usingBlock:(id)block;
+ (void)purgeNote:(id)note;
+ (void)setDidShowExceededStorageQuotaAlert:(BOOL)alert forNoteWithIdentifier:(id)identifier;
- (BOOL)addUserID:(id)d forReplicaID:(id)iD;
- (BOOL)attachmentExceedsMaxSizeAllowed:(unint64_t)allowed;
- (BOOL)canAddAttachments:(unint64_t)attachments;
- (BOOL)canBeSharedViaICloud;
- (BOOL)containsAttachmentWithDeepLink;
- (BOOL)containsAttachmentsUnsupportedInPasswordProtection;
- (BOOL)containsPlaceholderBlockOrInlineAttachments;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasChecklistOnlyInProgress:(BOOL)progress;
- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)record;
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
- (BOOL)mergeCloudKitRecord:(id)record account:(id)account approach:(int64_t)approach;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)mergeCloudKitRecord:(id)record mergePolicy:(int64_t)policy account:(id)account approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)mergeDataFromUserSpecificRecord:(id)record accountID:(id)d;
- (BOOL)mergeEncryptedDataFromRecord:(id)record;
- (BOOL)needsInitialDerivedAttributesUpdate;
- (BOOL)needsToBeDeletedFromCloud;
- (BOOL)needsToDeleteShare;
- (BOOL)objc_hasRecentExternalEdits;
- (BOOL)regenerateTitle:(BOOL)title snippet:(BOOL)snippet isNewNote:(BOOL)note;
- (BOOL)regenerateTitleAndSnippetIfNecessaryForEdit:(unint64_t)edit range:(_NSRange)range changeInLength:(int64_t)length;
- (BOOL)requiresLegacyTombstoneAfterDeletion;
- (BOOL)saveNoteData;
- (BOOL)shouldReleaseDocumentWhenTurningIntoFault;
- (BOOL)showsCollaboratorCursors;
- (BOOL)textStorageHasAttribute:(id)attribute;
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
- (_NSRange)rangeForAttachment:(id)attachment;
- (_NSRange)rangeForSnippetWithTitleRange:(_NSRange)range;
- (_NSRange)rangeForTitle:(BOOL *)title;
- (_NSRange)textRangeForSearchRange:(_NSRange)range inSearchableString:(id)string;
- (id)addAttachment;
- (id)addAttachmentWithData:(id)data filename:(id)filename;
- (id)addAttachmentWithFileURL:(id)l filename:(id)filename updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics;
- (id)addAttachmentWithFileURL:(id)l updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics;
- (id)addAttachmentWithFileWrapper:(id)wrapper;
- (id)addAttachmentWithIdentifier:(id)identifier;
- (id)addAttachmentWithRemoteFileURL:(id)l;
- (id)addAttachmentWithUTI:(id)i data:(id)data filename:(id)filename updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics regulatoryLogging:(BOOL)logging;
- (id)addAttachmentWithUTI:(id)i data:(id)data filenameExtension:(id)extension;
- (id)addAttachmentWithUTI:(id)i identifier:(id)identifier urlString:(id)string analytics:(BOOL)analytics regulatoryLogging:(BOOL)logging;
- (id)addAttachmentWithUTI:(id)i withURL:(id)l;
- (id)addAttachmentWithUTI:(id)i withURL:(id)l filename:(id)filename updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics;
- (id)addAttachmentWithUTI:(id)i withURL:(id)l updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics;
- (id)addAudioAttachmentWithIdentifier:(id)identifier;
- (id)addGalleryAttachmentWithIdentifier:(id)identifier;
- (id)addInlineAttachmentWithIdentifier:(id)identifier;
- (id)addInlineDrawingAttachmentWithAnalytics:(BOOL)analytics;
- (id)addPaperDocumentAttachmentWithIdentifier:(id)identifier subtype:(id)subtype;
- (id)addSynapseLinkAttachmentWithContentItem:(id)item;
- (id)addTableAttachment;
- (id)addTableAttachmentWithTableData:(id)data;
- (id)addTableAttachmentWithText:(id)text;
- (id)addURLAttachmentWithURL:(id)l;
- (id)additionalSearchIndexablesForChangedKeys:(id)keys;
- (id)allAttachmentsIncludingSubAttachments;
- (id)allDrawings;
- (id)allNoteTextAttachmentsIncludingSubAttachments:(BOOL)attachments;
- (id)allNoteTextInlineAttachments;
- (id)anyVisibleInstanceOfHashtag:(id)hashtag;
- (id)attachmentForWebThumbnail;
- (id)attachmentWithIdentifier:(id)identifier;
- (id)attachmentsInOrder;
- (id)attachmentsWithUTType:(id)type;
- (id)attributedString;
- (id)childCloudObjects;
- (id)childCloudObjectsForMinimumSupportedVersionPropagation;
- (id)cloudAccount;
- (id)csPersonForShareParticipant:(id)participant;
- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)authenticated;
- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)context shouldFetchObject:(id)object;
- (id)folderReferenceFromRecord:(id)record;
- (id)ic_loggingValues;
- (id)inlineAttachmentWithICTTAttachment:(id)attachment;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach;
- (id)mergeableString;
- (id)minimumNotesVersionForAllParticipants;
- (id)minimumNotesVersionForUserIDs:(id)ds;
- (id)newAirDropDocument;
- (id)noteAsPlainText;
- (id)notesVersionForParticipant:(id)participant;
- (id)notesVersionForUserID:(id)d;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)participantForReplicaID:(id)d;
- (id)primaryEncryptedData;
- (id)quotedTitle;
- (id)searchableString;
- (id)showsCollaboratorCursorsUserDefaultsKey;
- (id)textDataDecryptedIfNecessary;
- (id)userIDForReplicaID:(id)d;
- (id)uuid;
- (id)visibleAttachments;
- (id)visibleAttachmentsWithType:(signed __int16)type;
- (id)visibleInlineAttachments;
- (id)visibleTopLevelAttachments;
- (id)widgetSnippetByEnumeratingAttachments;
- (int64_t)attachmentContentInfoCount;
- (int64_t)currentStatus;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario;
- (int64_t)mergePolicyForRecord:(id)record;
- (signed)attachmentContentInfoType;
- (unint64_t)mergeReplicaIDToUserID:(id)d;
- (unint64_t)mergeWithNoteData:(id)data;
- (unint64_t)performMerge:(id)merge;
- (unint64_t)textOffsetAtSearchIndex:(unint64_t)index inSearchableString:(id)string;
- (unint64_t)visibleTopLevelAttachmentsCount;
- (void)_updateLinksOnMainThreadSelectorDelayer;
- (void)addInlineAttachments:(id)attachments;
- (void)addInlineAttachmentsObject:(id)object;
- (void)addMediaToAttachment:(id)attachment withBlock:(id)block;
- (void)addNoteBodyToRecord:(id)record forApproach:(int64_t)approach mergeableFieldState:(id)state;
- (void)addShareParticipantsToAttributeSet:(id)set;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set;
- (void)awakeFromFetch;
- (void)changePinStatusIfPossible;
- (void)clearDecryptedData;
- (void)clearRecentUpdatesGenerationDateIfNeeded;
- (void)dealloc;
- (void)deduplicateSelfAndCreateNewObjectFromRecord:(id)record;
- (void)didAcceptShare:(id)share;
- (void)didChangeNoteText;
- (void)didFetchUserSpecificRecord:(id)record accountID:(id)d force:(BOOL)force;
- (void)didRefresh:(BOOL)refresh;
- (void)didSave;
- (void)edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length;
- (void)enumerateAbstractAttachmentsInOrderUsingBlock:(id)block;
- (void)enumerateAttachmentsInOrderUsingBlock:(id)block;
- (void)enumerateInlineAttachmentsInOrderUsingBlock:(id)block;
- (void)fixBrokenReferencesWithError:(id)error;
- (void)inlineAssetsForRecord:(id)record;
- (void)markActivitySummaryViewed;
- (void)markAsCallNoteIfAttachmentIsCallRecording;
- (void)markAsCallNoteIfNeeded:(BOOL)needed;
- (void)markAsMathNoteIfNeeded:(BOOL)needed;
- (void)markAsSystemPaperIfNeeded:(BOOL)needed;
- (void)markForDeletion;
- (void)markLastActivityRecentUpdatesViewed;
- (void)mergeEncryptedData:(id)data mergeConflict:(id)conflict;
- (void)mergeFoldersFromRecord:(id)record account:(id)account;
- (void)mergeNotePrimitiveData;
- (void)mergeTextDataFromRecord:(id)record mergePolicy:(int64_t)policy mergeableFieldState:(id)state;
- (void)notifyAttachmentsNoteWillMoveToRecentlyDeletedFolder;
- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d;
- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force;
- (void)persistPendingChanges;
- (void)prepareForDeletion;
- (void)refreshNoteTextFromDataStore;
- (void)removeInlineAttachments:(id)attachments;
- (void)removeInlineAttachmentsObject:(id)object;
- (void)replaceWithDocument:(id)document;
- (void)saveNoteData;
- (void)setAccount:(id)account;
- (void)setAttachmentViewType:(signed __int16)type;
- (void)setCryptoInitializationVector:(id)vector;
- (void)setCryptoTag:(id)tag;
- (void)setFolder:(id)folder;
- (void)setHostApplicationIdentifier:(id)identifier;
- (void)setIsPinned:(BOOL)pinned;
- (void)setLastActivityRecentUpdatesViewedDate:(id)date;
- (void)setLastNotifiedTimestamp:(id)timestamp;
- (void)setLastViewedTimestamp:(id)timestamp;
- (void)setLegacyManagedObjectID:(id)d;
- (void)setMarkedForDeletion:(BOOL)deletion;
- (void)setNeedsInitialFetchFromCloud:(BOOL)cloud;
- (void)setOutlineStateData:(id)data;
- (void)setPrimaryEncryptedData:(id)data;
- (void)setShowsCollaboratorCursors:(BOOL)cursors;
- (void)turnAttachmentsIntoFaults;
- (void)unmarkForDeletion;
- (void)updateArchivedAndLastViewedTimeStampsAfterSavingNoteData;
- (void)updateAttachmentViewTypeAndPropagateToAttachments:(signed __int16)attachments;
- (void)updateChangeCountWithReason:(id)reason;
- (void)updateDerivedAttributesIfNeeded;
- (void)updateDeviceReplicaIDsToUserIDIfNeeded;
- (void)updateLastViewedTimestampWithCurrentTimestamp;
- (void)updateLinksWhenPossible;
- (void)updateTimestampWithUnserializedChanges;
- (void)visibleTopLevelAttachmentsCount;
- (void)widgetSnippetByEnumeratingAttachments;
- (void)willRefresh:(BOOL)refresh;
- (void)willSave;
- (void)willTurnIntoFault;
- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)version;
- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:(id)necessary;
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
      documentMergeController = [(ICNote *)self documentMergeController];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __24__ICNote_awakeFromFetch__block_invoke;
      v5[3] = &unk_278194B00;
      v5[4] = self;
      [documentMergeController requestMergeWithBlock:v5];
    }

    else
    {
      [(ICNote *)self mergeNotePrimitiveData];
    }

    if ([(ICNote *)self wasAuthenticatedBeforeTurningIntoFault])
    {
      if ([(ICCloudSyncingObject *)self isPasswordProtectedAndLocked])
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"ICNoteDidDeauthenticateAfterMergeNotification" object:self];
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
  isSharedViaICloud = [(ICCloudSyncingObject *)self isSharedViaICloud];
  if (isSharedViaICloud)
  {

    LOBYTE(isSharedViaICloud) = [(ICNote *)self isEmpty];
  }

  return isSharedViaICloud;
}

- (ICTTMergeableStringVersionedDocument)document
{
  v20 = *MEMORY[0x277D85DE8];
  managedObjectContext = [(ICNote *)self managedObjectContext];

  if (managedObjectContext)
  {
    if (!self->_document)
    {
      textDataDecryptedIfNecessary = [(ICNote *)self textDataDecryptedIfNecessary];
      if (!-[ICNote isPasswordProtected](self, "isPasswordProtected") || (-[ICNote noteData](self, "noteData"), v5 = objc_claimAutoreleasedReturnValue(), [v5 data], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, textDataDecryptedIfNecessary) || !v6)
      {
        v7 = [ICTTMergeableStringVersionedDocument alloc];
        currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
        v9 = [(ICTTVersionedDocument *)v7 initWithData:textDataDecryptedIfNecessary replicaID:currentReplicaID];
        document = self->_document;
        self->_document = v9;

        mergeableString = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        [mergeableString setDelegate:self];

        mergeableString2 = [(ICTTMergeableStringVersionedDocument *)self->_document mergeableString];
        timestamp = [mergeableString2 timestamp];
        [(ICNote *)self setArchivedTimestamp:timestamp];

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
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v18 = 138412290;
      v19 = callStackSymbols;
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
      decryptedData = [(ICNote *)self decryptedData];

      if (!decryptedData)
      {
        cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
        [cryptoStrategy decrypt];
      }

      decryptedData2 = [(ICNote *)self decryptedData];
      [(ICNote *)self setDecryptedData:0];
    }

    else
    {
      decryptedData2 = 0;
    }
  }

  else
  {
    noteData = [(ICNote *)self noteData];
    decryptedData2 = [noteData data];
  }

  return decryptedData2;
}

- (BOOL)needsInitialDerivedAttributesUpdate
{
  hasChecklist = [(ICNote *)self hasChecklist];
  if (hasChecklist)
  {
    hasChecklistInProgress = [(ICNote *)self hasChecklistInProgress];
    if (hasChecklistInProgress)
    {
      hasSystemTextAttachments = [(ICNote *)self hasSystemTextAttachments];
      if (hasSystemTextAttachments)
      {
        hasEmphasis = [(ICNote *)self hasEmphasis];
        v7 = hasEmphasis == 0;
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
  account = [(ICNote *)self account];
  v4 = account;
  if (account)
  {
    cloudAccount = account;
  }

  else
  {
    folder = [(ICNote *)self folder];
    cloudAccount = [folder cloudAccount];
  }

  return cloudAccount;
}

- (ICOutlineState)outlineState
{
  outlineState = self->_outlineState;
  if (!outlineState)
  {
    v4 = [ICOutlineState alloc];
    outlineStateData = [(ICNote *)self outlineStateData];
    v6 = [(ICOutlineState *)v4 initWithData:outlineStateData];
    v7 = self->_outlineState;
    self->_outlineState = v6;

    outlineState = self->_outlineState;
  }

  return outlineState;
}

- (BOOL)isEmpty
{
  managedObjectContext = [(ICNote *)self managedObjectContext];

  if (!managedObjectContext)
  {
    return 0;
  }

  if (([(ICNote *)self isPasswordProtected]& 1) != 0)
  {
    return 0;
  }

  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    folder = [(ICNote *)self folder];
    isSharedViaICloud = [folder isSharedViaICloud];

    if (!isSharedViaICloud)
    {
      return 0;
    }
  }

  mergeableString = [(ICNote *)self mergeableString];
  if (mergeableString)
  {
    mergeableString2 = [(ICNote *)self mergeableString];
    v4 = [mergeableString2 length] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mergeableString
{
  document = [(ICNote *)self document];
  mergeableString = [document mergeableString];

  return mergeableString;
}

- (void)didChangeNoteText
{
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__ICNote_didChangeNoteText__block_invoke;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  [managedObjectContext performBlockAndWait:v4];
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
  inlineAttachments = [(ICNote *)self inlineAttachments];
  v3 = +[(ICBaseAttachment *)ICInlineAttachment];
  v4 = [inlineAttachments ic_containsObjectMatchingPredicate:v3];

  return v4;
}

- (BOOL)isEditable
{
  folder = [(ICNote *)self folder];
  supportsEditingNotes = [folder supportsEditingNotes];

  if (supportsEditingNotes && ![(ICCloudSyncingObject *)self isSharedReadOnly])
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  showsCollaboratorCursorsUserDefaultsKey = [(ICNote *)self showsCollaboratorCursorsUserDefaultsKey];
  v9 = showsCollaboratorCursorsUserDefaultsKey;
  v10[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [standardUserDefaults registerDefaults:v5];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  showsCollaboratorCursorsUserDefaultsKey2 = [(ICNote *)self showsCollaboratorCursorsUserDefaultsKey];
  LOBYTE(self) = [standardUserDefaults2 BOOLForKey:showsCollaboratorCursorsUserDefaultsKey2];

  return self;
}

- (id)showsCollaboratorCursorsUserDefaultsKey
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(ICNote *)self identifier];
  v4 = [v2 stringWithFormat:@"%@-%@", identifier, @"ICNoteShouldShowCollaboratorCursors"];

  return v4;
}

- (id)attributedString
{
  mergeableString = [(ICNote *)self mergeableString];
  attributedString = [mergeableString attributedString];

  return attributedString;
}

- (BOOL)isDeletedOrInTrash
{
  if (([(ICNote *)self markedForDeletion]& 1) != 0)
  {
    return 1;
  }

  folder = [(ICNote *)self folder];
  isTrashFolder = [folder isTrashFolder];

  return isTrashFolder;
}

- (id)childCloudObjects
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attachments = [(ICNote *)self attachments];
  v5 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [array addObject:v9];
        media = [v9 media];

        if (media)
        {
          media2 = [v9 media];
          [array addObject:media2];
        }
      }

      v6 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  inlineAttachments = [(ICNote *)self inlineAttachments];
  allObjects = [inlineAttachments allObjects];
  [array addObjectsFromArray:allObjects];

  v14 = [array copy];

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
  shortLoggingDescription = [self shortLoggingDescription];
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
  changedValues = [(ICNote *)self changedValues];
  allKeys = [changedValues allKeys];
  v5 = [allKeys count];

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

  noteData = [(ICNote *)self noteData];
  needsToBeSaved = [noteData needsToBeSaved];

  return needsToBeSaved ^ 1;
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

- (void)willRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v8.receiver = self;
  v8.super_class = ICNote;
  [(ICNote *)&v8 willRefresh:?];
  if (self->_document)
  {
    noteData = [(ICNote *)self noteData];
    managedObjectContext = [noteData managedObjectContext];
    noteData2 = [(ICNote *)self noteData];
    [managedObjectContext ic_refreshObject:noteData2 mergeChanges:refreshCopy];
  }
}

- (void)didRefresh:(BOOL)refresh
{
  v13.receiver = self;
  v13.super_class = ICNote;
  [(ICNote *)&v13 didRefresh:refresh];
  if (self->_document)
  {
    v4 = MEMORY[0x277CCAC30];
    noteData = [(ICNote *)self noteData];
    v6 = [v4 predicateWithFormat:@"self == %@", noteData];
    managedObjectContext = [(ICNote *)self managedObjectContext];
    v8 = [ICNoteData ic_objectsMatchingPredicate:v6 context:managedObjectContext];

    if (!v8)
    {
      v9 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICNote didRefresh:?];
      }
    }

    identifier = [(ICNote *)self identifier];

    v11 = os_log_create("com.apple.notes", "CoreData");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (identifier)
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

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario
{
  if ([(ICCloudSyncingObject *)self isUnsupported]|| [(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {

    return [(ICNote *)self minimumSupportedNotesVersion];
  }

  else
  {
    hasEmphasis = [(ICNote *)self hasEmphasis];
    bOOLValue = [hasEmphasis BOOLValue];

    if (bOOLValue & 1) != 0 || (-[ICNote hasSystemTextAttachments](self, "hasSystemTextAttachments"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 BOOLValue], v8, (v9))
    {
      isSharedReadOnly = 14;
    }

    else if ([(ICNote *)self hasVisibleInlineAttachments])
    {
      if ([(ICNote *)self isPasswordProtected])
      {
        isSharedReadOnly = 13;
      }

      else
      {
        isSharedReadOnly = 6;
      }
    }

    else
    {
      isSharedReadOnly = [(ICCloudSyncingObject *)self isSharedReadOnly];
    }

    v11.receiver = self;
    v11.super_class = ICNote;
    result = [(ICCloudSyncingObject *)&v11 intrinsicNotesVersionForScenario:scenario];
    if (isSharedReadOnly > result)
    {
      return isSharedReadOnly;
    }
  }

  return result;
}

- (void)setAttachmentViewType:(signed __int16)type
{
  typeCopy = type;
  if ([(ICNote *)self attachmentViewType]!= type)
  {
    v7 = NSStringFromSelector(sel_attachmentViewType);
    [(ICNote *)self willChangeValueForKey:v7];
    performBlockOnMainThread();
    v5 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
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

- (void)updateAttachmentViewTypeAndPropagateToAttachments:(signed __int16)attachments
{
  attachmentsCopy = attachments;
  v18 = *MEMORY[0x277D85DE8];
  if ([(ICNote *)self attachmentViewType]!= attachments)
  {
    goto LABEL_4;
  }

  distinctAttachmentViewTypes = [(ICNote *)self distinctAttachmentViewTypes];
  if ([distinctAttachmentViewTypes count] >= 2)
  {

LABEL_4:
    if ([(ICNote *)self attachmentViewType]!= attachmentsCopy)
    {
      [(ICNote *)self setAttachmentViewType:attachmentsCopy];
      [(ICNote *)self updateChangeCountWithReason:@"User chose a new attachmentViewType"];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    visibleTopLevelAttachments = [(ICNote *)self visibleTopLevelAttachments];
    v6 = [visibleTopLevelAttachments countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(visibleTopLevelAttachments);
          }

          [*(*(&v13 + 1) + 8 * i) resetPreferredViewSizeIfNecessary];
        }

        v7 = [visibleTopLevelAttachments countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    if (objc_opt_respondsToSelector())
    {
      [(ICNote *)self noteDidApplyAttachmentViewTypeToAllAttachments];
    }

    return;
  }

  if ([distinctAttachmentViewTypes count] == 1)
  {
    anyObject = [distinctAttachmentViewTypes anyObject];
    integerValue = [anyObject integerValue];

    if (integerValue == attachmentsCopy)
    {
      return;
    }

    goto LABEL_4;
  }
}

- (NSSet)distinctAttachmentViewTypes
{
  visibleTopLevelAttachments = [(ICNote *)self visibleTopLevelAttachments];
  v3 = [visibleTopLevelAttachments ic_map:&__block_literal_global_123];

  return v3;
}

uint64_t __37__ICNote_distinctAttachmentViewTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 preferredViewSize];

  return [v2 numberWithShort:v3];
}

- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d
{
  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 objectWasFetchedFromCloudWithRecord:record accountID:d];
  if (![(ICNote *)self wantsUserSpecificRecord]|| ([(ICCloudSyncingObject *)self userSpecificServerRecord], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    [(ICNote *)self clearRecentUpdatesGenerationDateIfNeeded];
  }
}

- (void)didFetchUserSpecificRecord:(id)record accountID:(id)d force:(BOOL)force
{
  forceCopy = force;
  v19 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v16.receiver = self;
  v16.super_class = ICNote;
  [(ICCloudSyncingObject *)&v16 didFetchUserSpecificRecord:recordCopy accountID:d force:forceCopy];
  if ([(ICNote *)self needsInitialFetchFromCloud])
  {
    v9 = [ICUserSpecificRecordIDParser alloc];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v12 = [(ICUserSpecificRecordIDParser *)v9 initWithRecordName:recordName];

    sharedRecordType = [(ICUserSpecificRecordIDParser *)v12 sharedRecordType];
    LODWORD(recordName) = [sharedRecordType isEqual:@"PasswordProtectedNote"];

    if (recordName)
    {
      v14 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
        *buf = 138412290;
        v18 = shortLoggingDescription;
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
  maxAttachmentsPerNote = [v2 maxAttachmentsPerNote];

  return maxAttachmentsPerNote;
}

- (id)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    identifier = [(ICNote *)self identifier];
    v6 = [v4 initWithUUIDString:identifier];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

- (id)noteAsPlainText
{
  attributedString = [(ICNote *)self attributedString];
  string = [attributedString string];

  return string;
}

- (id)quotedTitle
{
  title = [(ICNote *)self title];
  ic_quotedString = [title ic_quotedString];

  return ic_quotedString;
}

- (NSString)noteAsPlainTextWithoutTitle
{
  searchableString = [(ICNote *)self searchableString];
  string = [searchableString string];

  v5 = MEMORY[0x277D36228];
  title = [(ICNote *)self title];
  v7 = [v5 stringByRemovingTitle:title fromString:string];

  return v7;
}

- (ICNote)noteWithoutTitle
{
  searchableString = [(ICNote *)self searchableString];
  v4 = MEMORY[0x277D36228];
  title = [(ICNote *)self title];
  v6 = [v4 attributedStringByRemovingTitle:title fromAttributedString:searchableString];

  return v6;
}

- (void)updateTimestampWithUnserializedChanges
{
  mergeableString = [(ICNote *)self mergeableString];
  [mergeableString generateIdsForLocalChanges];
}

- (BOOL)updateLastViewedTimestampWithCurrentTimestamp
{
  if (![(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    return 0;
  }

  mergeableString = [(ICNote *)self mergeableString];
  if ([mergeableString hasLocalChanges])
  {
    needsToSaveLastViewedTimestamp = [(ICNote *)self needsToSaveLastViewedTimestamp];

    if (!needsToSaveLastViewedTimestamp)
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

  lastViewedTimestamp = [(ICNote *)self lastViewedTimestamp];
  if (lastViewedTimestamp)
  {
    v9 = lastViewedTimestamp;
    timestamp = [(ICNote *)self timestamp];
    lastViewedTimestamp2 = [(ICNote *)self lastViewedTimestamp];
    v12 = [timestamp compareTo:lastViewedTimestamp2];

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

  timestamp2 = [(ICNote *)self timestamp];
  [(ICNote *)self setLastViewedTimestamp:timestamp2];

  v6 = @"Setting last viewed timestamp";
LABEL_15:
  [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:v6];
  v7 = 1;
LABEL_16:
  if ([(ICNote *)self hasUnreadChanges])
  {
    modificationDate = [(ICCloudSyncingObject *)self modificationDate];
    [(ICNote *)self setLastViewedModificationDate:modificationDate];

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

- (void)edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length
{
  if ([(ICNote *)self regenerateTitleAndSnippetIfNecessaryForEdit:edited range:range.location changeInLength:range.length, length]&& ![(ICCloudSyncingObject *)self isMergingRecord])
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

  folder = [(ICNote *)self folder];
  v4 = [folder folderType] != 1;

  return v4;
}

- (BOOL)isDeletable
{
  folder = [(ICNote *)self folder];
  isSharedReadOnly = [folder isSharedReadOnly];

  return isSharedReadOnly ^ 1;
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

+ (BOOL)containsUnduplicatableNotes:(id)notes
{
  notesCopy = notes;
  if ([notesCopy count])
  {
    v4 = [notesCopy ic_containsObjectPassingTest:&__block_literal_global_166];
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
  folder = [(ICNote *)self folder];
  if (([folder isSharedReadOnly] & 1) != 0 || -[ICNote isEmpty](self, "isEmpty"))
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
  legacyContentHashAtImport = [(ICNote *)self legacyContentHashAtImport];
  if ([legacyContentHashAtImport length])
  {
    account = [(ICNote *)self account];
    supportsLegacyTombstones = [account supportsLegacyTombstones];
  }

  else
  {
    supportsLegacyTombstones = 0;
  }

  return supportsLegacyTombstones;
}

- (BOOL)hasChecklistOnlyInProgress:(BOOL)progress
{
  attributedString = [(ICNote *)self attributedString];
  v6 = [attributedString length];

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  attributedString2 = [(ICNote *)self attributedString];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__ICNote_hasChecklistOnlyInProgress___block_invoke;
  v9[3] = &unk_278195278;
  progressCopy = progress;
  v9[4] = &v11;
  [attributedString2 enumerateAttribute:ICTTAttributeNameParagraphStyle inRange:0 options:v6 usingBlock:{0, v9}];

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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"ICNoteWillBeDeletedNotification" object:self];
    }

    modificationDate = [(ICCloudSyncingObject *)self modificationDate];
    [(ICNote *)self setModificationDate:modificationDate];
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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"ICNoteWillBeUndeletedNotification" object:self];
    }

    modificationDate = [(ICCloudSyncingObject *)self modificationDate];
    [(ICNote *)self setModificationDate:modificationDate];
  }

  v5.receiver = self;
  v5.super_class = ICNote;
  [(ICCloudSyncingObject *)&v5 unmarkForDeletion];
}

- (void)updateChangeCountWithReason:(id)reason
{
  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 updateChangeCountWithReason:reason];
  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    managedObjectContext = [(ICNote *)self managedObjectContext];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__ICNote_updateChangeCountWithReason___block_invoke;
    v5[3] = &unk_278194B00;
    v5[4] = self;
    [managedObjectContext performBlockAndWait:v5];
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

- (BOOL)canAddAttachments:(unint64_t)attachments
{
  v18 = *MEMORY[0x277D85DE8];
  visibleTopLevelAttachmentsCount = [(ICNote *)self visibleTopLevelAttachmentsCount];
  maxNoteAttachments = [objc_opt_class() maxNoteAttachments];
  if (visibleTopLevelAttachmentsCount + attachments > maxNoteAttachments)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      maxNoteAttachments2 = [objc_opt_class() maxNoteAttachments];
      v9 = +[ICCloudConfiguration sharedConfiguration];
      v10 = 134218752;
      attachmentsCopy = attachments;
      v12 = 2048;
      v13 = visibleTopLevelAttachmentsCount;
      v14 = 2048;
      v15 = maxNoteAttachments2;
      v16 = 2048;
      v17 = v9;
      _os_log_debug_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEBUG, "Can't add attachments %lu %lu %lu %p", &v10, 0x2Au);
    }
  }

  return visibleTopLevelAttachmentsCount + attachments <= maxNoteAttachments;
}

- (BOOL)attachmentExceedsMaxSizeAllowed:(unint64_t)allowed
{
  v3 = allowed != 0;
  if (allowed)
  {
    v5 = +[ICCloudConfiguration sharedConfiguration];
    maximumAttachmentSizeMB = [v5 maximumAttachmentSizeMB];
    v7 = [maximumAttachmentSizeMB unsignedLongLongValue] << 20;

    if (v7 >= allowed)
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
  attributedString = [(ICNote *)self attributedString];
  attributedString2 = [(ICNote *)self attributedString];
  v5 = [attributedString2 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ICNote_containsAttachmentsUnsupportedInPasswordProtection__block_invoke;
  v7[3] = &unk_2781952F0;
  v7[4] = self;
  v7[5] = &v8;
  [attributedString enumerateAttribute:@"NSAttachment" inRange:0 options:v5 usingBlock:{0, v7}];

  LOBYTE(attributedString) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return attributedString;
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
  attachments = [(ICNote *)self attachments];
  v3 = [attachments objectsPassingTest:&__block_literal_global_256];

  return v3;
}

- (id)visibleInlineAttachments
{
  inlineAttachments = [(ICNote *)self inlineAttachments];
  v3 = [inlineAttachments objectsPassingTest:&__block_literal_global_259];

  return v3;
}

- (BOOL)textStorageHasAttribute:(id)attribute
{
  attributeCopy = attribute;
  attributedString = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    uiAttributedString = [(ICNote *)self uiAttributedString];

    attributedString = uiAttributedString;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  ic_range = [attributedString ic_range];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__ICNote_textStorageHasAttribute___block_invoke;
  v11[3] = &unk_278195358;
  v11[4] = &v12;
  [attributedString enumerateAttribute:attributeCopy inRange:ic_range options:v8 usingBlock:{0, v11}];
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
  documentWithoutCreating = [(ICNote *)self documentWithoutCreating];

  if (documentWithoutCreating)
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
    attachments = [(ICNote *)self attachments];
    v5 = [attachments ic_containsObjectPassingTest:&__block_literal_global_266];
    *(v13 + 24) = v5;

    if ((v13[3] & 1) == 0)
    {
      inlineAttachments = [(ICNote *)self inlineAttachments];
      v7 = [inlineAttachments ic_containsObjectPassingTest:&__block_literal_global_268];
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

  managedObjectContext = [(ICNote *)self managedObjectContext];
  v9 = [ICAttachment countOfAttachmentsMatchingPredicate:v7 context:managedObjectContext];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    visibleTopLevelAttachments = [(ICNote *)self visibleTopLevelAttachments];
    v9 = [visibleTopLevelAttachments count];

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
  visibleAttachments = [(ICNote *)self visibleAttachments];
  v3 = [visibleAttachments objectsPassingTest:&__block_literal_global_276];

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
  attachments = [(ICNote *)self attachments];
  v5 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v3 addObject:v9];
        [v9 recursivelyAddSubAttachments:v3];
      }

      v6 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)allNoteTextAttachmentsIncludingSubAttachments:(BOOL)attachments
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__ICNote_allNoteTextAttachmentsIncludingSubAttachments___block_invoke;
  v12 = &unk_2781953D0;
  v13 = v5;
  attachmentsCopy = attachments;
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
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__ICNote_attachmentsInOrder__block_invoke;
  v6[3] = &unk_278195420;
  v4 = array;
  v7 = v4;
  [(ICNote *)self enumerateAttachmentsInOrderUsingBlock:v6];

  return v4;
}

- (void)enumerateAbstractAttachmentsInOrderUsingBlock:(id)block
{
  blockCopy = block;
  attributedString = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    uiAttributedString = [(ICNote *)self uiAttributedString];

    attributedString = uiAttributedString;
  }

  managedObjectContext = [(ICNote *)self managedObjectContext];
  ic_range = [attributedString ic_range];
  v10 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ICNote_enumerateAbstractAttachmentsInOrderUsingBlock___block_invoke;
  v12[3] = &unk_278195448;
  v13 = blockCopy;
  v11 = blockCopy;
  [attributedString ic_enumerateAbstractAttachmentsInContext:managedObjectContext range:ic_range options:v10 usingBlock:{0, v12}];
}

- (void)enumerateAttachmentsInOrderUsingBlock:(id)block
{
  blockCopy = block;
  attributedString = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    uiAttributedString = [(ICNote *)self uiAttributedString];

    attributedString = uiAttributedString;
  }

  managedObjectContext = [(ICNote *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__ICNote_enumerateAttachmentsInOrderUsingBlock___block_invoke;
  v9[3] = &unk_278195470;
  v10 = blockCopy;
  v8 = blockCopy;
  [attributedString ic_enumerateAttachmentsInContext:managedObjectContext usingBlock:v9];
}

- (void)enumerateInlineAttachmentsInOrderUsingBlock:(id)block
{
  blockCopy = block;
  attributedString = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    uiAttributedString = [(ICNote *)self uiAttributedString];

    attributedString = uiAttributedString;
  }

  managedObjectContext = [(ICNote *)self managedObjectContext];
  ic_range = [attributedString ic_range];
  [attributedString ic_enumerateInlineAttachmentsInContext:managedObjectContext range:ic_range options:v8 usingBlock:{0, blockCopy}];
}

- (BOOL)hasThumbnailImage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (([(ICNote *)self isPasswordProtected]& 1) == 0)
  {
    attachments = [(ICNote *)self attachments];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __27__ICNote_hasThumbnailImage__block_invoke;
    v6[3] = &unk_278195498;
    v6[4] = &v7;
    [attachments enumerateObjectsUsingBlock:v6];
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

- (_NSRange)rangeForAttachment:(id)attachment
{
  v29 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
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
      ic_loggingIdentifier = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
      [(ICNote *)ic_loggingIdentifier rangeForAttachment:v28, v5];
    }

LABEL_8:
    attributedString = v5;
    goto LABEL_9;
  }

  if (([attachmentCopy markedForDeletion] & 1) != 0 || (objc_msgSend(attachmentCopy, "note"), v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 == self, v7, !v8))
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      shortLoggingDescription = [attachmentCopy shortLoggingDescription];
      [(ICCloudSyncingObject *)self shortLoggingDescription];
      objc_claimAutoreleasedReturnValue();
      [ICNote rangeForAttachment:];
    }

    goto LABEL_8;
  }

  attributedString = [(ICNote *)self attributedString];
  if (objc_opt_respondsToSelector())
  {
    uiAttributedString = [(ICNote *)self uiAttributedString];

    attributedString = uiAttributedString;
  }

  managedObjectContext = [(ICNote *)self managedObjectContext];
  ic_range = [attributedString ic_range];
  v19 = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __29__ICNote_rangeForAttachment___block_invoke;
  v20[3] = &unk_2781954C0;
  v21 = attachmentCopy;
  v22 = &v23;
  [attributedString ic_enumerateAbstractAttachmentsInContext:managedObjectContext range:ic_range options:v19 usingBlock:{0, v20}];

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
  array = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __21__ICNote_allDrawings__block_invoke;
  v7[3] = &unk_278195420;
  v8 = array;
  v4 = array;
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

- (id)visibleAttachmentsWithType:(signed __int16)type
{
  visibleAttachments = [(ICNote *)self visibleAttachments];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ICNote_visibleAttachmentsWithType___block_invoke;
  v7[3] = &__block_descriptor_34_e26_B24__0__ICAttachment_8_B16l;
  typeCopy = type;
  v5 = [visibleAttachments objectsPassingTest:v7];

  return v5;
}

- (id)attachmentsWithUTType:(id)type
{
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__ICNote_attachmentsWithUTType___block_invoke;
  v13 = &unk_278195508;
  v14 = typeCopy;
  v15 = array;
  v6 = array;
  v7 = typeCopy;
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
  attachmentsInOrder = [(ICNote *)self attachmentsInOrder];
  v3 = [attachmentsInOrder copy];

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

- (unint64_t)mergeWithNoteData:(id)data
{
  dataCopy = data;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__ICNote_mergeWithNoteData___block_invoke;
  v8[3] = &unk_278195138;
  v9 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
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

- (unint64_t)performMerge:(id)merge
{
  v14[1] = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICNoteWillPerformMergeNotification" object:self];

  [(ICNote *)self setIsPerformingMerge:1];
  [(ICNote *)self willChangeValueForKey:@"isEmpty"];
  mergeableString = [(ICNote *)self mergeableString];
  [mergeableString generateIdsForLocalChanges];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)self noteWillMergeDocumentWithUserInfo:dictionary];
  }

  v8 = mergeCopy[2](mergeCopy);
  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)self noteDidMergeNoteDocumentWithUserInfo:dictionary];
  }

  if (v8 == 2 && ([(ICNote *)self needsInitialFetchFromCloud]& 1) == 0)
  {
    [(ICNote *)self regenerateTitle:1 snippet:1];
  }

  [(ICNote *)self didChangeValueForKey:@"isEmpty"];
  [(ICNote *)self setIsPerformingMerge:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = @"MergeResult";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [defaultCenter2 postNotificationName:@"ICNoteDidPerformMergeNotification" object:self userInfo:v11];

  return v8;
}

- (void)replaceWithDocument:(id)document
{
  documentCopy = document;
  [(ICNote *)self willChangeValueForKey:@"isEmpty"];
  document = self->_document;
  self->_document = documentCopy;
  v6 = documentCopy;

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
    serialize = [(ICTTVersionedDocument *)self->_document serialize];
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
      v36 = [serialize hash];
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

        cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
        v11 = [cryptoStrategy writeEncryptedNoteData:serialize];

        v12 = v9;
        v13 = v12;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
        {
          ic_loggingIdentifier = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
          v15 = [serialize length];
          cryptoStrategy2 = [(ICCloudSyncingObject *)self cryptoStrategy];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v31 = 138412802;
          v32 = ic_loggingIdentifier;
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
      if (serialize)
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

        noteData = [(ICNote *)self noteData];
        [noteData setData:serialize];

        [(ICNote *)self setCryptoTag:0];
        [(ICNote *)self setCryptoInitializationVector:0];
        [(ICNote *)self updateArchivedAndLastViewedTimeStampsAfterSavingNoteData];
        v23 = v20;
        v13 = v23;
        if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          ic_loggingIdentifier2 = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
          v25 = [serialize length];
          v31 = 138412546;
          v32 = ic_loggingIdentifier2;
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
        ic_loggingIdentifier3 = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
        v31 = 138412290;
        v32 = ic_loggingIdentifier3;
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
  timestamp = [OUTLINED_FUNCTION_4() timestamp];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (BOOL)hasUnreadChanges
{
  serverRecord = [(ICCloudSyncingObject *)self serverRecord];
  lastModifiedUserRecordID = [serverRecord lastModifiedUserRecordID];
  recordName = [lastModifiedUserRecordID recordName];
  v6 = [recordName isEqualToString:*MEMORY[0x277CBBF28]];

  modificationDate = [(ICCloudSyncingObject *)self modificationDate];
  lastViewedModificationDate = [(ICNote *)self lastViewedModificationDate];
  v9 = [modificationDate ic_isLaterThanDate:lastViewedModificationDate];

  document = self->_document;
  if (document)
  {
    mergeableString = [(ICTTMergeableStringVersionedDocument *)document mergeableString];
    v12 = [mergeableString hasLocalChanges] ^ 1;
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

- (void)setIsPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  if ([(ICNote *)self isPinned]!= pinned)
  {
    [(ICNote *)self willChangeValueForKey:@"isPinned"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:pinnedCopy];
    [(ICNote *)self setPrimitiveValue:v5 forKey:@"isPinned"];

    [(ICNote *)self didChangeValueForKey:@"isPinned"];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICNotePinnedStatusChangedNotification" object:self];

    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set isPinned"];
  }
}

- (void)markAsSystemPaperIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if (needed)
  {
    [(ICNote *)self markAsMathNoteIfNeeded:0];
    [(ICNote *)self markAsCallNoteIfNeeded:0];
  }

  if ([(ICNote *)self isSystemPaper]!= neededCopy)
  {
    [(ICNote *)self setIsSystemPaper:neededCopy];
    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set isSystemPaper"];

    [(ICNote *)self updateChangeCountWithReason:@"Set isSystemPaper"];
  }
}

- (BOOL)isMathNote
{
  hostApplicationIdentifier = [(ICNote *)self hostApplicationIdentifier];
  if ([hostApplicationIdentifier isEqual:@"com.apple.greyparrot"])
  {
    v4 = 1;
  }

  else
  {
    hostApplicationIdentifier2 = [(ICNote *)self hostApplicationIdentifier];
    v4 = [hostApplicationIdentifier2 isEqual:@"com.apple.calculator"];
  }

  return v4;
}

- (void)markAsMathNoteIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if (needed)
  {
    [(ICNote *)self markAsSystemPaperIfNeeded:0];
    [(ICNote *)self markAsCallNoteIfNeeded:0];
  }

  if ([(ICNote *)self isMathNote]!= neededCopy)
  {
    if (neededCopy)
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
  hostApplicationIdentifier = [(ICNote *)self hostApplicationIdentifier];
  v3 = [hostApplicationIdentifier isEqual:@"com.apple.mobilephone"];

  return v3;
}

- (void)markAsCallNoteIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if (needed)
  {
    [(ICNote *)self markAsSystemPaperIfNeeded:0];
    [(ICNote *)self markAsMathNoteIfNeeded:0];
  }

  if ([(ICNote *)self isCallNote]!= neededCopy)
  {
    if (neededCopy)
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
    attachments = [(ICNote *)self attachments];
    v4 = [attachments ic_containsObjectPassingTest:&__block_literal_global_329];

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

- (void)setHostApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  hostApplicationIdentifier = [(ICNote *)self hostApplicationIdentifier];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == identifierCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = identifierCopy;
  }

  v8 = v7;
  if (v6 == hostApplicationIdentifier)
  {
    v9 = 0;
  }

  else
  {
    v9 = hostApplicationIdentifier;
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
    [(ICNote *)self setPrimitiveValue:identifierCopy forKey:v16];

    hostApplicationIdentifier = NSStringFromSelector(sel_hostApplicationIdentifier);
    [(ICNote *)self didChangeValueForKey:hostApplicationIdentifier];
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
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ICNote_markActivitySummaryViewed__block_invoke;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  [managedObjectContext performBlock:v4];
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
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__ICNote_markLastActivityRecentUpdatesViewed__block_invoke;
  v4[3] = &unk_278194B00;
  v4[4] = self;
  [managedObjectContext performBlock:v4];
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
  attachments = [(ICNote *)self attachments];
  v3 = [attachments ic_containsObjectPassingTest:&__block_literal_global_341];

  return v3;
}

- (NSArray)allDocumentMergeControllers
{
  v3 = [MEMORY[0x277CBEB58] set];
  documentMergeController = [(ICNote *)self documentMergeController];
  [v3 ic_addNonNilObject:documentMergeController];

  attachments = [(ICNote *)self attachments];
  v6 = [attachments ic_compactMap:&__block_literal_global_344];
  [v3 unionSet:v6];

  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)setShowsCollaboratorCursors:(BOOL)cursors
{
  cursorsCopy = cursors;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  showsCollaboratorCursorsUserDefaultsKey = [(ICNote *)self showsCollaboratorCursorsUserDefaultsKey];
  [standardUserDefaults setBool:cursorsCopy forKey:showsCollaboratorCursorsUserDefaultsKey];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICNoteShowsCollaboratorCursorsDidChangeNotification" object:self];
}

- (void)addInlineAttachmentsObject:(id)object
{
  objectCopy = object;
  inlineAttachments = [(ICNote *)self inlineAttachments];
  v6 = [inlineAttachments containsObject:objectCopy];

  [(ICNote *)self managedObjectOriginal_addInlineAttachmentsObject:objectCopy];
  if ((v6 & 1) == 0)
  {

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (void)removeInlineAttachmentsObject:(id)object
{
  objectCopy = object;
  inlineAttachments = [(ICNote *)self inlineAttachments];
  v6 = [inlineAttachments containsObject:objectCopy];

  [(ICNote *)self managedObjectOriginal_removeInlineAttachmentsObject:objectCopy];
  if (v6)
  {

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (void)addInlineAttachments:(id)attachments
{
  [(ICNote *)self managedObjectOriginal_addInlineAttachments:attachments];

  [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (void)removeInlineAttachments:(id)attachments
{
  [(ICNote *)self managedObjectOriginal_removeInlineAttachments:attachments];

  [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
}

- (id)decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:(id)authenticated
{
  v13 = *MEMORY[0x277D85DE8];
  authenticatedCopy = authenticated;
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  v6 = cryptoStrategy;
  if (cryptoStrategy)
  {
    v7 = [cryptoStrategy decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:authenticatedCopy];
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v11 = 138412290;
      v12 = shortLoggingDescription;
      _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "note cannot have crypto strategy, but is asked to decrypt and merge text from record: %@", &v11, 0xCu);
    }

    [(ICCloudSyncingObject *)self setUnappliedEncryptedRecord:authenticatedCopy];
    v7 = 0;
  }

  return v7;
}

- (BOOL)mergeEncryptedDataFromRecord:(id)record
{
  recordCopy = record;
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  v6 = [cryptoStrategy mergeEncryptedDataFromRecord:recordCopy];

  return v6;
}

- (void)mergeEncryptedData:(id)data mergeConflict:(id)conflict
{
  conflictCopy = conflict;
  dataCopy = data;
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  [cryptoStrategy mergeEncryptedData:dataCopy mergeConflict:conflictCopy];
}

- (void)setCryptoInitializationVector:(id)vector
{
  v6.receiver = self;
  v6.super_class = ICNote;
  vectorCopy = vector;
  [(ICCloudSyncingObject *)&v6 setCryptoInitializationVector:vectorCopy];
  v5 = [(ICNote *)self noteData:v6.receiver];
  [v5 setCryptoInitializationVector:vectorCopy];
}

- (void)setCryptoTag:(id)tag
{
  v6.receiver = self;
  v6.super_class = ICNote;
  tagCopy = tag;
  [(ICCloudSyncingObject *)&v6 setCryptoTag:tagCopy];
  v5 = [(ICNote *)self noteData:v6.receiver];
  [v5 setCryptoTag:tagCopy];
}

- (void)persistPendingChanges
{
  [(ICNote *)self didChangeNoteText];
  noteData = [(ICNote *)self noteData];
  [noteData saveNoteDataIfNeeded];

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

- (void)inlineAssetsForRecord:(id)record
{
  v4.receiver = self;
  v4.super_class = ICNote;
  recordCopy = record;
  [(ICCloudSyncingObject *)&v4 inlineAssetsForRecord:recordCopy];
  [recordCopy ic_inlineEncryptedDataAssetForKeyPrefix:{@"TextData", v4.receiver, v4.super_class}];
}

- (BOOL)regenerateTitleAndSnippetIfNecessaryForEdit:(unint64_t)edit range:(_NSRange)range changeInLength:(int64_t)length
{
  if ((edit & 2) == 0)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  v9 = [(ICNote *)self rangeForTitle:0, range.location, range.length, length];
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

- (_NSRange)rangeForSnippetWithTitleRange:(_NSRange)range
{
  v4 = range.location + range.length;
  attributedString = [(ICNote *)self attributedString];
  v6 = [attributedString length] - v4;

  if ((v6 & ~(v6 >> 63)) >= 255)
  {
    v7 = 255;
  }

  else
  {
    v7 = v6 & ~(v6 >> 63);
  }

  noteAsPlainText = [(ICNote *)self noteAsPlainText];
  v9 = [noteAsPlainText rangeOfComposedCharacterSequencesForRange:{v4, v7}];
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (_NSRange)rangeForTitle:(BOOL *)title
{
  v4 = MEMORY[0x277D36228];
  attributedString = [(ICNote *)self attributedString];
  string = [attributedString string];
  v7 = [v4 rangeForTitleInContent:string truncated:title];
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
    widgetSnippet = [(ICNote *)self widgetSnippet];
    v4 = [widgetSnippet length];

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
    attributedString = [(ICNote *)self attributedString];
    v8 = [attributedString mutableCopy];

    if ([v8 length] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ICNote *)self formatExpressionsInAttributedString:v8 range:0 textStorageOffset:255 skipStaleExpressions:0, 1];
    }

    managedObjectContext = [(ICNote *)self managedObjectContext];
    ic_range = [v8 ic_range];
    v12 = v11;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__ICNote_widgetSnippetByEnumeratingAttachments__block_invoke;
    v17[3] = &unk_278195550;
    v18 = v8;
    v13 = v8;
    [v13 ic_enumerateAbstractAttachmentsInContext:managedObjectContext range:ic_range options:v12 usingBlock:{0, v17}];

    v14 = MEMORY[0x277D36228];
    string = [v13 string];
    v6 = [v14 widgetSnippetForContent:string];
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

- (BOOL)regenerateTitle:(BOOL)title snippet:(BOOL)snippet isNewNote:(BOOL)note
{
  noteCopy = note;
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
    titleCopy = title;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    snippetCopy = snippet;
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
      attributedString = [(ICNote *)self attributedString];
      string = [attributedString string];

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
        widgetSnippetByEnumeratingAttachments = [(ICNote *)self widgetSnippetByEnumeratingAttachments];
        [(ICNote *)self setWidgetSnippet:widgetSnippetByEnumeratingAttachments];
      }

      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x2020000000;
      v54 = 0;
      v14 = [string length];
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __44__ICNote_regenerateTitle_snippet_isNewNote___block_invoke;
      v42 = &unk_2781955A0;
      selfCopy = self;
      v45 = &v79;
      v46 = &v89;
      v47 = &v85;
      v15 = string;
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
          defaultTitleForEmptyNote = [objc_opt_class() defaultTitleForEmptyNote];
          v18 = v80[5];
          v80[5] = defaultTitleForEmptyNote;
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

          v24 = !noteCopy;
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
        snippet = [(ICNote *)self snippet];
        v30 = snippet;
        if (snippet)
        {
          v31 = snippet;
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
        attributedSnippet = [(ICNote *)self attributedSnippet];
        v35 = v62[5];
        if ((!v35 && attributedSnippet || ([v35 isEqualToAttributedString:{attributedSnippet, v39, v40, v41, v42, selfCopy}] & 1) == 0) && (-[ICNote isPasswordProtected](self, "isPasswordProtected", v39, v40, v41, v42, selfCopy) & 1) == 0)
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
  updateLinksSelectorDelayer = [(ICNote *)self updateLinksSelectorDelayer];

  if (!updateLinksSelectorDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel__updateLinksOnMainThreadSelectorDelayer delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.2];
    [(ICNote *)self setUpdateLinksSelectorDelayer:v4];
  }

  managedObjectContext = [(ICNote *)self managedObjectContext];
  concurrencyType = [managedObjectContext concurrencyType];

  if (concurrencyType == 2)
  {
    updateLinksSelectorDelayer2 = [(ICNote *)self updateLinksSelectorDelayer];
    [updateLinksSelectorDelayer2 requestFire];
  }
}

- (void)_updateLinksOnMainThreadSelectorDelayer
{
  managedObjectContext = [(ICNote *)self managedObjectContext];
  concurrencyType = [managedObjectContext concurrencyType];

  if (concurrencyType == 2)
  {
    titleForLinking = [(ICNote *)self titleForLinking];
    if ([titleForLinking length])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 0;
      managedObjectContext2 = [(ICNote *)self managedObjectContext];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __49__ICNote__updateLinksOnMainThreadSelectorDelayer__block_invoke;
      v8[3] = &unk_2781955C8;
      v9 = titleForLinking;
      selfCopy = self;
      v11 = &v12;
      [ICInlineAttachment enumerateLinksToNote:self batchSize:100 visibleOnly:1 saveAfterBatch:0 context:managedObjectContext2 usingBlock:v8];

      if (*(v13 + 24) == 1)
      {
        managedObjectContext3 = [(ICNote *)self managedObjectContext];
        [managedObjectContext3 ic_saveWithLogDescription:@"Saving updated linked note titles"];
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
  attachments = [(ICNote *)self attachments];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__ICNote_attachmentContentInfoType__block_invoke;
  v4[3] = &unk_278195498;
  v4[4] = &v5;
  [attachments enumerateObjectsUsingBlock:v4];

  LOWORD(attachments) = *(v6 + 12);
  _Block_object_dispose(&v5, 8);
  return attachments;
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
  attachments = [(ICNote *)self attachments];
  v5 = [attachments countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 shouldShowInContentInfoText])
        {
          attachmentModel = [v11 attachmentModel];
          isIncludedInGenericAttachmentCount = [attachmentModel isIncludedInGenericAttachmentCount];

          v7 += isIncludedInGenericAttachmentCount;
          attachmentModel2 = [v11 attachmentModel];
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

      v6 = [attachments countByEnumeratingWithState:&v20 objects:v24 count:16];
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
    anyObject = [v3 anyObject];
    v7 = [v3 countForObject:anyObject];
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
    snippet = [(ICNote *)self snippet];
    attachmentContentInfoType = [(ICNote *)self attachmentContentInfoType];
    attachmentContentInfoCount = [(ICNote *)self attachmentContentInfoCount];
    account = [(ICNote *)self account];
    v3 = [v4 contentInfoTextWithSnippet:snippet attachmentContentInfoType:attachmentContentInfoType attachmentContentInfoCount:attachmentContentInfoCount account:account];
  }

  return v3;
}

- (NSAttributedString)attributedContentInfoText
{
  if ([(ICNote *)self isPasswordProtected])
  {
    attributedSnippet = [ICNote snippetForPasswordProtectedNote:self];
    ic_attributedString = [attributedSnippet ic_attributedString];
  }

  else
  {
    attributedSnippet = [(ICNote *)self attributedSnippet];
    if (!attributedSnippet)
    {
      attributedSnippet = [(ICNote *)self snippet];

      if (attributedSnippet)
      {
        v5 = objc_alloc(MEMORY[0x277CCA898]);
        snippet = [(ICNote *)self snippet];
        attributedSnippet = [v5 initWithString:snippet];
      }
    }

    v7 = objc_opt_class();
    attachmentContentInfoType = [(ICNote *)self attachmentContentInfoType];
    attachmentContentInfoCount = [(ICNote *)self attachmentContentInfoCount];
    account = [(ICNote *)self account];
    ic_attributedString = [v7 contentInfoAttributedTextWithSnippet:attributedSnippet attachmentContentInfoType:attachmentContentInfoType attachmentContentInfoCount:attachmentContentInfoCount account:account];
  }

  return ic_attributedString;
}

- (NSString)widgetInfoText
{
  v3 = MEMORY[0x277D36228];
  title = [(ICNote *)self title];
  widgetSnippet = [(ICNote *)self widgetSnippet];
  v6 = [v3 stringByRemovingTitle:title fromString:widgetSnippet];

  ic_trimmedString = [v6 ic_trimmedString];

  if ([(ICNote *)self isPasswordProtected])
  {
    v8 = [ICNote snippetForPasswordProtectedNote:self];
  }

  else
  {
    v9 = objc_opt_class();
    attachmentContentInfoType = [(ICNote *)self attachmentContentInfoType];
    attachmentContentInfoCount = [(ICNote *)self attachmentContentInfoCount];
    account = [(ICNote *)self account];
    v8 = [v9 contentInfoTextWithSnippet:ic_trimmedString attachmentContentInfoType:attachmentContentInfoType attachmentContentInfoCount:attachmentContentInfoCount account:account];
  }

  return v8;
}

+ (id)contentInfoTextWithSnippet:(id)snippet attachmentContentInfoType:(signed __int16)type attachmentContentInfoCount:(int64_t)count account:(id)account
{
  typeCopy = type;
  snippetCopy = snippet;
  accountCopy = account;
  ic_containsHashtagPrefix = [snippetCopy ic_containsHashtagPrefix];
  if (!accountCopy || !ic_containsHashtagPrefix)
  {
LABEL_6:
    if ([snippetCopy length])
    {
      v17 = snippetCopy;
    }

    else
    {
      v17 = [ICAttachmentModel contentInfoTextForAttachmentType:typeCopy withCount:count];
    }

    ic_withHashtagPrefix = v17;
    goto LABEL_10;
  }

  ic_withoutHashtagPrefix = [snippetCopy ic_withoutHashtagPrefix];
  v13 = [ICHashtag standardizedHashtagRepresentationForDisplayText:ic_withoutHashtagPrefix];

  v14 = [ICHashtag hashtagWithStandardizedContent:v13 account:accountCopy];
  displayText = [v14 displayText];
  if (![displayText length])
  {

    goto LABEL_6;
  }

  ic_withHashtagPrefix = [displayText ic_withHashtagPrefix];

LABEL_10:

  return ic_withHashtagPrefix;
}

+ (id)contentInfoAttributedTextWithSnippet:(id)snippet attachmentContentInfoType:(signed __int16)type attachmentContentInfoCount:(int64_t)count account:(id)account
{
  typeCopy = type;
  snippetCopy = snippet;
  accountCopy = account;
  string = [snippetCopy string];
  ic_containsHashtagPrefix = [string ic_containsHashtagPrefix];

  if (accountCopy && ic_containsHashtagPrefix)
  {
    string2 = [snippetCopy string];
    ic_withoutHashtagPrefix = [string2 ic_withoutHashtagPrefix];
    v15 = [ICHashtag standardizedHashtagRepresentationForDisplayText:ic_withoutHashtagPrefix];

    v16 = [ICHashtag hashtagWithStandardizedContent:v15 account:accountCopy];
    displayText = [v16 displayText];
    if ([displayText length])
    {
      v18 = objc_alloc(MEMORY[0x277CCA898]);
      ic_withHashtagPrefix = [displayText ic_withHashtagPrefix];
      v20 = [v18 initWithString:ic_withHashtagPrefix];

      goto LABEL_9;
    }
  }

  if ([snippetCopy length])
  {
    v20 = snippetCopy;
  }

  else
  {
    v21 = [ICAttachmentModel contentInfoTextForAttachmentType:typeCopy withCount:count];
    v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v21];
  }

LABEL_9:

  return v20;
}

- (void)setNeedsInitialFetchFromCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  if ([(ICNote *)self needsInitialFetchFromCloud]!= cloud)
  {
    folder = [(ICNote *)self folder];
    [folder willChangeValueForKey:@"visibleNotes"];

    account = [(ICNote *)self account];
    [account willChangeValueForKey:@"visibleNotes"];

    v9.receiver = self;
    v9.super_class = ICNote;
    [(ICCloudSyncingObject *)&v9 setNeedsInitialFetchFromCloud:cloudCopy];
    folder2 = [(ICNote *)self folder];
    [folder2 didChangeValueForKey:@"visibleNotes"];

    account2 = [(ICNote *)self account];
    [account2 didChangeValueForKey:@"visibleNotes"];
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  account = [(ICNote *)self account];
  v5 = [account isEqual:accountCopy];

  if ((v5 & 1) == 0)
  {
    attachments = [(ICNote *)self attachments];
    v7 = [attachments copy];
    [v7 makeObjectsPerformSelector:sel_accountWillChangeToAccount_ withObject:accountCopy];
  }

  [(ICNote *)self willChangeValueForKey:@"account"];
  [(ICNote *)self setPrimitiveValue:accountCopy forKey:@"account"];
  [(ICNote *)self didChangeValueForKey:@"account"];
}

- (void)setFolder:(id)folder
{
  folderCopy = folder;
  folder = [(ICNote *)self folder];
  if (folder != folderCopy)
  {
    v6 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICNote *)folderCopy setFolder:v6];
    }

    [(ICNote *)self willChangeValueForKey:@"folder"];
    [(ICNote *)self willChangeValueForKey:@"parentCloudObject"];
    [(ICNote *)self setPrimitiveFolder:folderCopy];
    [(ICNote *)self didChangeValueForKey:@"folder"];
    [(ICNote *)self didChangeValueForKey:@"parentCloudObject"];
    if (!folderCopy)
    {
      v7 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self setFolder:v7];
      }
    }

    account = [folderCopy account];
    if (account)
    {
      v9 = account;
      account2 = [folderCopy account];
      account3 = [(ICNote *)self account];

      if (account2 != account3)
      {
        v12 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(ICNote *)folderCopy setFolder:v12];
        }

        account4 = [folderCopy account];
        [(ICNote *)self setAccount:account4];
      }
    }

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
    [folder markShareDirtyIfNeededWithReason:@"Updated note's folder"];
    [folderCopy markShareDirtyIfNeededWithReason:@"Updated note's folder"];
  }
}

- (void)setMarkedForDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  folder = [(ICNote *)self folder];
  [folder willChangeValueForKey:@"visibleNotesCount"];
  [folder willChangeValueForKey:@"children"];
  v6.receiver = self;
  v6.super_class = ICNote;
  [(ICCloudSyncingObject *)&v6 setMarkedForDeletion:deletionCopy];
  [folder didChangeValueForKey:@"children"];
  [folder didChangeValueForKey:@"visibleNotesCount"];
}

- (void)setLegacyManagedObjectID:(id)d
{
  uRIRepresentation = [d URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];
  [(ICNote *)self setLegacyManagedObjectIDURIRepresentation:absoluteString];
}

- (ICTTVectorMultiTimestamp)timestamp
{
  document = [(ICNote *)self document];
  mergeableString = [document mergeableString];
  timestamp = [mergeableString timestamp];

  return timestamp;
}

- (ICTTVectorMultiTimestamp)lastNotifiedTimestamp
{
  lastNotifiedTimestamp = self->_lastNotifiedTimestamp;
  if (!lastNotifiedTimestamp)
  {
    lastNotifiedTimestampData = [(ICNote *)self lastNotifiedTimestampData];
    if (lastNotifiedTimestampData)
    {
      v5 = [[ICTTVectorMultiTimestamp alloc] initWithData:lastNotifiedTimestampData andCapacity:2];
      v6 = self->_lastNotifiedTimestamp;
      self->_lastNotifiedTimestamp = v5;
    }

    lastNotifiedTimestamp = self->_lastNotifiedTimestamp;
  }

  return lastNotifiedTimestamp;
}

- (void)setLastNotifiedTimestamp:(id)timestamp
{
  serialize = [timestamp serialize];
  [(ICNote *)self setLastNotifiedTimestampData:serialize];

  lastNotifiedTimestamp = self->_lastNotifiedTimestamp;
  self->_lastNotifiedTimestamp = 0;
}

- (ICTTVectorMultiTimestamp)lastViewedTimestamp
{
  lastViewedTimestamp = self->_lastViewedTimestamp;
  if (!lastViewedTimestamp)
  {
    lastViewedTimestampData = [(ICNote *)self lastViewedTimestampData];
    if (lastViewedTimestampData)
    {
      v5 = [[ICTTVectorMultiTimestamp alloc] initWithData:lastViewedTimestampData andCapacity:2];
      v6 = self->_lastViewedTimestamp;
      self->_lastViewedTimestamp = v5;
    }

    lastViewedTimestamp = self->_lastViewedTimestamp;
  }

  return lastViewedTimestamp;
}

- (void)setLastViewedTimestamp:(id)timestamp
{
  serialize = [timestamp serialize];
  [(ICNote *)self setLastViewedTimestampData:serialize];

  lastViewedTimestamp = self->_lastViewedTimestamp;
  self->_lastViewedTimestamp = 0;
}

- (void)setLastActivityRecentUpdatesViewedDate:(id)date
{
  dateCopy = date;
  recentUpdatesFirstSeenDate = [(ICNote *)self recentUpdatesFirstSeenDate];

  if (!recentUpdatesFirstSeenDate)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [(ICNote *)self setRecentUpdatesFirstSeenDate:v6];
  }

  if (!self->_recentUpdatesGenerationDate)
  {
    lastActivityRecentUpdatesViewedDate = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    recentUpdatesGenerationDate = self->_recentUpdatesGenerationDate;
    self->_recentUpdatesGenerationDate = lastActivityRecentUpdatesViewedDate;
  }

  [(ICNote *)self willChangeValueForKey:@"lastActivityRecentUpdatesViewedDate"];
  [(ICNote *)self setPrimitiveValue:dateCopy forKey:@"lastActivityRecentUpdatesViewedDate"];

  [(ICNote *)self didChangeValueForKey:@"lastActivityRecentUpdatesViewedDate"];
}

- (NSDate)recentUpdatesGenerationDate
{
  if ([(ICCloudSyncingObject *)self isInCloud]&& ([(ICCloudSyncingObject *)self userSpecificServerRecord], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    lastActivityRecentUpdatesViewedDate2 = 0;
  }

  else if (self->_recentUpdatesGenerationDate && (-[ICNote recentUpdatesFirstSeenDate](self, "recentUpdatesFirstSeenDate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 ic_isLaterThanUnitsAgo:64 value:10], v4, v5))
  {
    lastActivityRecentUpdatesViewedDate2 = self->_recentUpdatesGenerationDate;
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [MEMORY[0x277CBEAA8] now];
    v9 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v8 options:0];

    lastActivityRecentUpdatesViewedDate = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    LODWORD(v8) = [lastActivityRecentUpdatesViewedDate ic_isLaterThanDate:v9];

    if (v8)
    {
      lastActivityRecentUpdatesViewedDate2 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    }

    else
    {
      shareTimestamp = [(ICCloudSyncingObject *)self shareTimestamp];
      if (!shareTimestamp || (v12 = [v9 ic_isLaterThanDate:shareTimestamp], v13 = v9, (v12 & 1) == 0))
      {
        v13 = shareTimestamp;
      }

      lastActivityRecentUpdatesViewedDate2 = v13;
    }
  }

  return lastActivityRecentUpdatesViewedDate2;
}

- (void)clearRecentUpdatesGenerationDateIfNeeded
{
  if ([(ICNote *)self hasRecentExternalEdits])
  {
    viewContext = [(ICCloudSyncingObject *)self viewContext];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __50__ICNote_clearRecentUpdatesGenerationDateIfNeeded__block_invoke;
    v5[3] = &unk_278194AD8;
    v6 = viewContext;
    selfCopy = self;
    v4 = viewContext;
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
  noteData = [(ICNote *)self noteData];
  needsToBeSaved = [noteData needsToBeSaved];

  noteData2 = [(ICNote *)self noteData];
  [noteData2 setNeedsToBeSaved:0];

  v16.receiver = self;
  v16.super_class = ICNote;
  ic_loggingValues = [(ICCloudSyncingObject *)&v16 ic_loggingValues];
  v7 = [ic_loggingValues mutableCopy];

  noteData3 = [(ICNote *)self noteData];
  [noteData3 setNeedsToBeSaved:needsToBeSaved];

  managedObjectContext = [(ICNote *)self managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __26__ICNote_ic_loggingValues__block_invoke;
  v14[3] = &unk_278194AD8;
  v14[4] = self;
  v10 = v7;
  v15 = v10;
  [managedObjectContext performBlockAndWait:v14];

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
    replicaIDToUserIDDictData = self->_replicaIDToUserID;
    self->_replicaIDToUserID = v4;
  }

  else
  {
    v6 = [ICMergeableDictionary alloc];
    replicaIDToUserIDDictData = [(ICNote *)self replicaIDToUserIDDictData];
    currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
    v8 = [(ICMergeableDictionary *)v6 initWithData:replicaIDToUserIDDictData replicaID:currentReplicaID];
    v9 = self->_replicaIDToUserID;
    self->_replicaIDToUserID = v8;
  }

  v10 = self->_replicaIDToUserID;

  return v10;
}

- (BOOL)addUserID:(id)d forReplicaID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  replicaIDToUserID = [(ICNote *)self replicaIDToUserID];
  uUIDString = [iDCopy UUIDString];
  v10 = [replicaIDToUserID objectForKeyedSubscript:uUIDString];

  if (!v10)
  {
    replicaIDToUserID2 = [(ICNote *)self replicaIDToUserID];
    uUIDString2 = [iDCopy UUIDString];
    [replicaIDToUserID2 setObject:dCopy forKeyedSubscript:uUIDString2];

    replicaIDToUserID3 = [(ICNote *)self replicaIDToUserID];
    encodedData = [replicaIDToUserID3 encodedData];
    [(ICNote *)self setReplicaIDToUserIDDictData:encodedData];
  }

  return v10 == 0;
}

- (unint64_t)mergeReplicaIDToUserID:(id)d
{
  dCopy = d;
  replicaIDToUserIDDictData = [(ICNote *)self replicaIDToUserIDDictData];
  if (replicaIDToUserIDDictData && (v6 = replicaIDToUserIDDictData, -[ICNote replicaIDToUserID](self, "replicaIDToUserID"), v7 = objc_claimAutoreleasedReturnValue(), [v7 allKeys], v8 = objc_claimAutoreleasedReturnValue(), -[ICCloudSyncingObject deviceReplicaIDs](self, "deviceReplicaIDs"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v7, v6, !v10))
  {
    replicaIDToUserID = [(ICNote *)self replicaIDToUserID];
    v13 = [replicaIDToUserID mergeWithDictionary:dCopy];

    if (v13 != 2)
    {
      goto LABEL_5;
    }

    replicaIDToUserID2 = [(ICNote *)self replicaIDToUserID];
    encodedData = [replicaIDToUserID2 encodedData];
    [(ICNote *)self setReplicaIDToUserIDDictData:encodedData];
  }

  else
  {
    [(ICNote *)self willChangeValueForKey:@"replicaIDToUserID"];
    encodedData2 = [dCopy encodedData];
    [(ICNote *)self setReplicaIDToUserIDDictData:encodedData2];

    replicaIDToUserID = self->_replicaIDToUserID;
    self->_replicaIDToUserID = 0;

    [(ICNote *)self didChangeValueForKey:@"replicaIDToUserID"];
  }

  v13 = 2;
LABEL_5:

  return v13;
}

- (void)setOutlineStateData:(id)data
{
  dataCopy = data;
  v6 = NSStringFromSelector(sel_outlineStateData);
  [(ICNote *)self willChangeValueForKey:v6];
  [(ICNote *)self setPrimitiveValue:dataCopy forKey:v6];

  [(ICNote *)self didChangeValueForKey:v6];
  outlineState = self->_outlineState;
  self->_outlineState = 0;
}

- (BOOL)updateDeviceReplicaIDsToUserIDIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  if (([(ICNote *)self isDeleted]& 1) == 0 && ![(ICNote *)self markedForDeletion])
  {
    cloudAccount = [(ICNote *)self cloudAccount];
    v7 = ICNotesAppBundleIdentifier();
    v5 = [cloudAccount replicaIDForBundleIdentifier:v7];

    if (!v5)
    {
      deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
      }

      LOBYTE(v4) = 0;
      userRecordName = deviceReplicaIDs;
      goto LABEL_18;
    }

    cloudAccount2 = [(ICNote *)self cloudAccount];
    userRecordName = [cloudAccount2 userRecordName];

    if (userRecordName)
    {
      if (![(ICNote *)self needsInitialFetchFromCloud])
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        deviceReplicaIDs = [(ICCloudSyncingObject *)self deviceReplicaIDs];
        v11 = [deviceReplicaIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
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
                objc_enumerationMutation(deviceReplicaIDs);
              }

              v4 |= [(ICNote *)self addUserID:userRecordName forReplicaID:*(*(&v15 + 1) + 8 * i)];
            }

            v12 = [deviceReplicaIDs countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v12);
          goto LABEL_18;
        }

LABEL_17:
        LOBYTE(v4) = 0;
LABEL_18:

        goto LABEL_19;
      }

      deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
      }
    }

    else
    {
      deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
      {
        [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
      }
    }

    goto LABEL_17;
  }

  userRecordName = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(userRecordName, OS_LOG_TYPE_DEBUG))
  {
    [(ICNote *)self updateDeviceReplicaIDsToUserIDIfNeeded];
  }

  LOBYTE(v4) = 0;
  v5 = userRecordName;
LABEL_19:

  return v4 & 1;
}

- (id)userIDForReplicaID:(id)d
{
  dCopy = d;
  cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];
  if ([dCopy isEqual:cR_unserialized])
  {
    account = [(ICNote *)self account];
    userRecordName = [account userRecordName];
  }

  else
  {
    account = [(ICNote *)self replicaIDToUserID];
    uUIDString = [dCopy UUIDString];
    userRecordName = [account objectForKeyedSubscript:uUIDString];
  }

  if (userRecordName)
  {
    uUIDString2 = userRecordName;
  }

  else
  {
    cR_unknown = [MEMORY[0x277CCAD78] CR_unknown];
    uUIDString2 = [cR_unknown UUIDString];
  }

  return uUIDString2;
}

- (id)participantForReplicaID:(id)d
{
  v4 = [(ICNote *)self userIDForReplicaID:d];
  cR_unknown = [MEMORY[0x277CCAD78] CR_unknown];
  uUIDString = [cR_unknown UUIDString];
  if ([v4 isEqual:uUIDString])
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
  noteData = [(ICNote *)self noteData];
  if (noteData)
  {
    v16 = noteData;
    if (([(ICNote *)self needsInitialFetchFromCloud]& 1) == 0)
    {
      if (self->_document)
      {
      }

      else
      {
        needsInitialDerivedAttributesUpdate = [(ICNote *)self needsInitialDerivedAttributesUpdate];

        if (!needsInitialDerivedAttributesUpdate)
        {
          return;
        }
      }

      v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote hasChecklistOnlyInProgress:](self, "hasChecklistOnlyInProgress:", 0)}];
      hasChecklist = [(ICNote *)self hasChecklist];
      v6 = [hasChecklist isEqualToNumber:v16];

      if ((v6 & 1) == 0)
      {
        [(ICNote *)self setHasChecklist:v16];
      }

      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote hasChecklistOnlyInProgress:](self, "hasChecklistOnlyInProgress:", 1)}];
      hasChecklistInProgress = [(ICNote *)self hasChecklistInProgress];
      v9 = [hasChecklistInProgress isEqualToNumber:v7];

      if ((v9 & 1) == 0)
      {
        [(ICNote *)self setHasChecklistInProgress:v7];
      }

      v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote textStorageHasAttribute:](self, "textStorageHasAttribute:", *MEMORY[0x277D74058])}];
      hasSystemTextAttachments = [(ICNote *)self hasSystemTextAttachments];
      v12 = [hasSystemTextAttachments isEqualToNumber:v10];

      if ((v12 & 1) == 0)
      {
        [(ICNote *)self setHasSystemTextAttachments:v10];
      }

      v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote textStorageHasAttribute:](self, "textStorageHasAttribute:", ICTTAttributeNameEmphasis)}];
      hasEmphasis = [(ICNote *)self hasEmphasis];
      v15 = [hasEmphasis isEqualToNumber:v13];

      if ((v15 & 1) == 0)
      {
        [(ICNote *)self setHasEmphasis:v13];
      }
    }

    noteData = v16;
  }
}

- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)version
{
  v17 = *MEMORY[0x277D85DE8];
  if (version == 6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    deviceReplicaIDs = [(ICCloudSyncingObject *)self deviceReplicaIDs];
    v5 = [deviceReplicaIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(deviceReplicaIDs);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          document = [(ICNote *)self document];
          mergeableString = [document mergeableString];
          [mergeableString removeTimestampsForReplicaID:v9];

          ++v8;
        }

        while (v6 != v8);
        v6 = [deviceReplicaIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (id)notesVersionForUserID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  replicaIDToUserID = [(ICNote *)self replicaIDToUserID];
  allKeys = [replicaIDToUserID allKeys];

  obj = allKeys;
  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        v14 = [v13 isEqual:dCopy];

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

- (id)notesVersionForParticipant:(id)participant
{
  userIdentity = [participant userIdentity];
  userRecordID = [userIdentity userRecordID];
  recordName = [userRecordID recordName];
  v7 = [(ICNote *)self notesVersionForUserID:recordName];

  return v7;
}

- (id)minimumNotesVersionForUserIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  dsCopy = ds;
  v5 = [dsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(dsCopy);
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

      v6 = [dsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
    participants = [serverShareCheckingParent participants];
    v5 = [participants ic_map:&__block_literal_global_572];

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

+ (id)newObjectWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];
  options = [firstObject options];
  v12 = [options objectForKeyedSubscript:*MEMORY[0x277CBE2B0]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
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
    v17.receiver = self;
    v17.super_class = &OBJC_METACLASS___ICNote;
    v15 = objc_msgSendSuper2(&v17, sel_newObjectWithIdentifier_context_, identifierCopy, contextCopy);
    if (contextCopy)
    {
      v14 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICNoteData" inManagedObjectContext:contextCopy];
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

+ (id)newEmptyNoteInContext:(id)context
{
  v4 = MEMORY[0x277CCAD78];
  contextCopy = context;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [self newObjectWithIdentifier:uUIDString context:contextCopy];

  return v8;
}

+ (id)newNoteWithoutIdentifierInAccount:(id)account
{
  defaultFolder = [account defaultFolder];
  v5 = [self newObjectWithIdentifier:0 folder:defaultFolder];

  return v5;
}

+ (id)newObjectWithIdentifier:(id)identifier folder:(id)folder
{
  identifierCopy = identifier;
  folderCopy = folder;
  v8 = folderCopy;
  if (folderCopy)
  {
    managedObjectContext = [folderCopy managedObjectContext];
    persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    firstObject = [persistentStores firstObject];
    options = [firstObject options];
    v14 = [options objectForKeyedSubscript:*MEMORY[0x277CBE2B0]];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
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
      v27.receiver = self;
      v27.super_class = &OBJC_METACLASS___ICNote;
      v17 = objc_msgSendSuper2(&v27, sel_newObjectWithIdentifier_context_, identifierCopy, managedObjectContext);
      v16 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"ICNoteData" inManagedObjectContext:managedObjectContext];
      account = [v8 account];
      persistentStore = [account persistentStore];
      [v17 assignToPersistentStore:persistentStore];

      managedObjectContext2 = [v8 managedObjectContext];
      account2 = [v8 account];
      persistentStore2 = [account2 persistentStore];
      [managedObjectContext2 assignObject:v16 toPersistentStore:persistentStore2];

      [v17 setNoteData:v16];
      [v16 setNote:v17];
      [v17 setFolder:v8];
      date = [MEMORY[0x277CBEAA8] date];
      [v17 setFolderModificationDate:date];
    }
  }

  else
  {
    v18 = MEMORY[0x277D36198];
    v19 = NSStringFromClass(self);
    [v18 handleFailedAssertWithCondition:"folder" functionName:"+[ICNote(Management) newObjectWithIdentifier:folder:]" simulateCrash:1 showAlert:0 format:{@"Trying to create a %@ with no folder", v19}];

    v17 = 0;
  }

  return v17;
}

+ (id)newEmptyNoteInFolder:(id)folder
{
  v4 = MEMORY[0x277CCAD78];
  folderCopy = folder;
  uUID = [v4 UUID];
  v7 = [self newEmptyNoteWithUUID:uUID folder:folderCopy];

  return v7;
}

+ (id)newEmptyNoteWithIdentifier:(id)identifier folder:(id)folder
{
  identifierCopy = identifier;
  folderCopy = folder;
  date = [MEMORY[0x277CBEAA8] date];
  if (ICInternalSettingsGetBundleBoolSettingValue())
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:255830400.0];

    date = v9;
  }

  v10 = [self newObjectWithIdentifier:identifierCopy folder:folderCopy];
  [v10 setCreationDate:date];
  [v10 setModificationDate:date];
  noteData = [v10 noteData];
  [noteData setData:0];

  [v10 regenerateTitle:1 snippet:0 isNewNote:1];
  v12 = [MEMORY[0x277CBEAA8] now];
  [v10 setLastAttributionsViewedDate:v12];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = [currentCalendar dateByAddingUnit:16 value:-7 toDate:v14 options:0];
  [v10 setLastActivityRecentUpdatesViewedDate:v15];

  lastActivityRecentUpdatesViewedDate = [v10 lastActivityRecentUpdatesViewedDate];
  [v10 setLastActivitySummaryViewedDate:lastActivityRecentUpdatesViewedDate];

  if (objc_opt_respondsToSelector())
  {
    v17 = [v10 persistCreateActivityEventForObject:v10 inParentObject:folderCopy];
  }

  return v10;
}

+ (id)newEmptyNoteWithUUID:(id)d folder:(id)folder
{
  folderCopy = folder;
  uUIDString = [d UUIDString];
  v8 = [self newEmptyNoteWithIdentifier:uUIDString folder:folderCopy];

  return v8;
}

+ (void)deleteEmptyNote:(id)note
{
  noteCopy = note;
  if (([noteCopy isEmpty] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"note.isEmpty" functionName:"+[ICNote(Management) deleteEmptyNote:]" simulateCrash:1 showAlert:0 format:@"Note is not empty for deletion"];
  }

  if ([noteCopy isEmpty])
  {
    v5 = os_log_create("com.apple.notes", "Delete");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) deleteEmptyNote:noteCopy];
    }

    account = [noteCopy account];
    trashFolder = [account trashFolder];
    [noteCopy setFolder:trashFolder];

    v8 = [MEMORY[0x277CBEAA8] now];
    [noteCopy setFolderModificationDate:v8];

    [self deleteNote:noteCopy];
  }
}

+ (void)deleteNote:(id)note
{
  v30 = *MEMORY[0x277D85DE8];
  noteCopy = note;
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
    attachments = [noteCopy attachments];
    v8 = [attachments copy];

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
    inlineAttachments = [noteCopy inlineAttachments];
    v14 = [inlineAttachments copy];

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
      [ICNote(Management) deleteNote:noteCopy];
    }

    [noteCopy markForDeletion];
    if ([noteCopy requiresLegacyTombstoneAfterDeletion])
    {
      [ICLegacyTombstone addLegacyTombstoneForNote:noteCopy];
    }
  }
}

+ (void)purgeNote:(id)note
{
  noteCopy = note;
  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 hasContextOptions:64];

  if (v5)
  {
    managedObjectContext = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(Management) purgeNote:];
    }
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICNoteWillBeDeletedNotification" object:noteCopy];

    managedObjectContext = [noteCopy managedObjectContext];
    [managedObjectContext deleteObject:noteCopy];
  }
}

+ (id)refreshAllOfNoteWithIdentifier:(id)identifier context:(id)context
{
  contextCopy = context;
  identifier = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", identifier];
  newFetchRequestForNotes = [self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:identifier];
  [newFetchRequestForNotes setRelationshipKeyPathsForPrefetching:&unk_282747F40];
  v9 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[ICNote(Management) refreshAllOfNoteWithIdentifier:context:];
  }

  v10 = [contextCopy executeFetchRequest:newFetchRequestForNotes error:0];
  lastObject = [v10 lastObject];
  if ([lastObject needsRefresh])
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:lastObject context:?];
    }

    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:lastObject context:?];
    }

    [contextCopy ic_refreshObject:lastObject mergeChanges:1];
    noteData = [lastObject noteData];
    [contextCopy ic_refreshObject:noteData mergeChanges:1];

    folder = [lastObject folder];
    [contextCopy ic_refreshObject:folder mergeChanges:1];

    v16 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:lastObject context:?];
    }

    v17 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:lastObject context:?];
    }

    v18 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:lastObject context:?];
    }

    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:lastObject context:?];
    }

    textDataDecryptedIfNecessary = [lastObject textDataDecryptedIfNecessary];
    v21 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(Management) refreshAllOfNoteWithIdentifier:textDataDecryptedIfNecessary context:?];
    }

    v22 = [lastObject mergeWithNoteData:textDataDecryptedIfNecessary];
    [lastObject setNeedsRefresh:0];
    if (v22 == 2)
    {
      v23 = +[ICNoteContext sharedContext];
      [v23 save];
    }
  }

  return lastObject;
}

+ (ICNote)noteWithUUID:(id)d context:(id)context
{
  contextCopy = context;
  uUIDString = [d UUIDString];
  v8 = [self noteWithIdentifier:uUIDString context:contextCopy];

  return v8;
}

+ (ICNote)noteWithIdentifier:(id)identifier includeDeleted:(BOOL)deleted accountID:(id)d context:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = MEMORY[0x277CCAB68];
  contextCopy = context;
  identifierCopy = identifier;
  v14 = [[v11 alloc] initWithString:@"identifier ==[c] %@"];
  v15 = v14;
  if (!deleted)
  {
    [v14 appendString:@" AND markedForDeletion = NO"];
  }

  v16 = MEMORY[0x277CBEB18];
  v17 = MEMORY[0x277CCAC30];
  v18 = [v15 copy];
  identifierCopy = [v17 predicateWithFormat:v18, identifierCopy];

  v27[0] = identifierCopy;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v21 = [v16 arrayWithArray:v20];

  if ([dCopy length])
  {
    v22 = [self predicateForNotesInAccountWithIdentifier:dCopy];
    [v21 addObject:v22];
  }

  v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v21];
  v24 = [self notesMatchingPredicate:v23 context:contextCopy];

  lastObject = [v24 lastObject];

  return lastObject;
}

+ (ICNote)noteWithLegacyManagedObjectID:(id)d context:(id)context
{
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  uRIRepresentation = [d URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];
  v10 = [v6 predicateWithFormat:@"%K == %@", @"legacyManagedObjectIDURIRepresentation", absoluteString];

  v11 = [self notesMatchingPredicate:v10 context:contextCopy];

  firstObject = [v11 firstObject];

  return firstObject;
}

+ (unint64_t)countOfAllNotesInContext:(id)context
{
  contextCopy = context;
  newFetchRequestForNotes = [self newFetchRequestForNotes];
  v6 = [contextCopy countForFetchRequest:newFetchRequestForNotes error:0];

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

+ (id)visibleNotesInContext:(id)context
{
  contextCopy = context;
  v5 = [self predicateForVisibleNotesInContext:contextCopy];
  v6 = [self notesMatchingPredicate:v5 context:contextCopy];

  return v6;
}

+ (unint64_t)countOfVisibleNotesInContext:(id)context
{
  contextCopy = context;
  v5 = [self predicateForVisibleNotesInContext:contextCopy];
  v6 = [self countOfNotesMatchingPredicate:v5 context:contextCopy];

  return v6;
}

+ (void)enumerateNotesInContext:(id)context batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch usingBlock:(id)block
{
  batchCopy = batch;
  onlyCopy = only;
  contextCopy = context;
  blockCopy = block;
  if (onlyCopy)
  {
    v13 = [self predicateForVisibleNotesInContext:contextCopy];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D36220] sortDescriptorsForCurrentTypeIncludingPinnedNotes:1];
  [self ic_enumerateObjectsMatchingPredicate:v13 sortDescriptors:v14 relationshipKeyPathsForPrefetching:0 context:contextCopy batchSize:size saveAfterBatch:batchCopy usingBlock:blockCopy];
}

+ (id)notesMatchingPredicate:(id)predicate context:(id)context
{
  v6 = MEMORY[0x277D36220];
  contextCopy = context;
  predicateCopy = predicate;
  v9 = [v6 sortDescriptorsForCurrentTypeIncludingPinnedNotes:1];
  v10 = [self ic_objectsMatchingPredicate:predicateCopy sortDescriptors:v9 context:contextCopy];

  return v10;
}

+ (unint64_t)countOfNotesMatchingPredicate:(id)predicate context:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  newFetchRequestForNotes = [self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:predicateCopy];

  v9 = [contextCopy countForFetchRequest:newFetchRequestForNotes error:0];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  return v9;
}

+ (id)noteIdentifiersMatchingPredicate:(id)predicate context:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  v7 = objc_autoreleasePoolPush();
  v8 = +[ICNote fetchRequest];
  [v8 setPredicate:predicateCopy];
  [v8 setResultType:2];
  [v8 setPropertiesToFetch:&unk_282747F58];
  v14 = 0;
  v9 = [contextCopy executeFetchRequest:v8 error:&v14];
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

+ (BOOL)notes:(id)notes containSharedNotesNotSharedViaFolder:(id)folder
{
  folderCopy = folder;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ICNote_Management__notes_containSharedNotesNotSharedViaFolder___block_invoke;
  v8[3] = &unk_278195610;
  v9 = folderCopy;
  v6 = folderCopy;
  LOBYTE(notes) = [notes ic_containsObjectPassingTest:v8];

  return notes;
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

+ (id)notesContainingHashtagWithStandarizedContent:(id)content context:(id)context
{
  v46[3] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  contextCopy = context;
  v7 = [ICInlineAttachment predicateForTypeUTI:@"com.apple.notes.inlinetextattachment.hashtag"];
  v8 = [ICInlineAttachment predicateForTokenContentIdentifier:contentCopy];
  v9 = [(ICBaseAttachment *)ICInlineAttachment predicateForVisibleAttachmentsInContext:contextCopy];
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
  v14 = [contextCopy executeFetchRequest:v13 error:&v38];
  v15 = v38;
  v16 = [MEMORY[0x277CBEB58] set];
  if (v15)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICNote(Management) notesContainingHashtagWithStandarizedContent:context:]" simulateCrash:1 showAlert:0 format:{@"Failed to fetch objects for predicate=%@: %@", v12, v15}];
  }

  else if (v14)
  {
    v29 = v7;
    v30 = contextCopy;
    v31 = contentCopy;
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

    contextCopy = v30;
    contentCopy = v31;
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
      v45 = contextCopy;
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
  newFetchRequestForNotes = [self newFetchRequestForNotes];
  predicateForSystemPaperNotesNotInTrash = [self predicateForSystemPaperNotesNotInTrash];
  [newFetchRequestForNotes setPredicate:predicateForSystemPaperNotesNotInTrash];

  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [newFetchRequestForNotes setSortDescriptors:v6];

  return newFetchRequestForNotes;
}

+ (id)predicateForSystemPaperNotesNotInTrash
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folder.folderType != %d", 1];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"markedForDeletion == NO"];
  v5 = MEMORY[0x277CCA920];
  predicateForSystemPaperNotes = [self predicateForSystemPaperNotes];
  v10[0] = predicateForSystemPaperNotes;
  v10[1] = v3;
  v10[2] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
  v8 = [v5 andPredicateWithSubpredicates:v7];

  return v8;
}

+ (id)predicateForVisibleNotesIncludingTrash:(BOOL)trash includingSystemPaper:(BOOL)paper includingMathNotes:(BOOL)notes includingCallNotes:(BOOL)callNotes inContext:(id)context
{
  v40[1] = *MEMORY[0x277D85DE8];
  predicateForVisibleObjects = [self predicateForVisibleObjects];
  v40[0] = predicateForVisibleObjects;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
  v13 = [v12 mutableCopy];

  if (!trash)
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"folder.folderType != %d", 1];
    [v13 addObject:v14];
  }

  if (!paper)
  {
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"isSystemPaper == NO"];
    [v13 addObject:v15];
  }

  if (!notes)
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

  if (!callNotes)
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = ICEditorExtensionBundleIdentifier();
  v6 = [bundleIdentifier isEqual:v5];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__ICNote_Management__paperCoherenceContextURL__block_invoke;
  v10[3] = &unk_278195638;
  v11 = v6;
  v10[4] = self;
  v10[5] = &v12;
  [managedObjectContext performBlockAndWait:v10];

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
  noteData = [(ICNote *)self noteData];
  primitiveData = [noteData primitiveData];

  return primitiveData;
}

- (void)setPrimaryEncryptedData:(id)data
{
  dataCopy = data;
  noteData = [(ICNote *)self noteData];
  [noteData setData:dataCopy];
}

+ (id)snippetForPasswordProtectedNote:(id)note
{
  noteCopy = note;
  if (([noteCopy isPasswordProtected] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"note.isPasswordProtected" functionName:"+[ICNote(Management) snippetForPasswordProtectedNote:]" simulateCrash:1 showAlert:0 format:@"Trying to get a password snippet for a non password protected note"];
  }

  if ([noteCopy isAuthenticated])
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

+ (id)allPasswordProtectedNoteIdentifiersInContext:(id)context
{
  contextCopy = context;
  v5 = +[ICCloudSyncingObject predicateForPasswordProtectedObjects];
  v6 = [self noteIdentifiersMatchingPredicate:v5 context:contextCopy];

  return v6;
}

+ (unint64_t)countOfPasswordProtectedNotesInContext:(id)context
{
  contextCopy = context;
  v5 = +[ICCloudSyncingObject predicateForPasswordProtectedObjects];
  v6 = [self countOfNotesMatchingPredicate:v5 context:contextCopy];

  return v6;
}

+ (unint64_t)countOfVisiblePasswordProtectedNotesInAccount:(id)account
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = MEMORY[0x277CCAC30];
  accountCopy = account;
  accountCopy = [v5 predicateWithFormat:@"account == %@ && isPasswordProtected == YES", accountCopy];
  v15[0] = accountCopy;
  managedObjectContext = [accountCopy managedObjectContext];
  v9 = [self predicateForVisibleNotesInContext:managedObjectContext];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v4 andPredicateWithSubpredicates:v10];

  managedObjectContext2 = [accountCopy managedObjectContext];

  v13 = [self countOfNotesMatchingPredicate:v11 context:managedObjectContext2];
  return v13;
}

+ (id)passwordProtectedNoteIdentifiersForAccount:(id)account
{
  v4 = MEMORY[0x277CCAC30];
  accountCopy = account;
  accountCopy = [v4 predicateWithFormat:@"account == %@ && isPasswordProtected == YES", accountCopy];
  managedObjectContext = [accountCopy managedObjectContext];

  v8 = [self noteIdentifiersMatchingPredicate:accountCopy context:managedObjectContext];

  return v8;
}

+ (id)accountIdentifiersOfNotes:(id)notes
{
  v21 = *MEMORY[0x277D85DE8];
  notesCopy = notes;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = notesCopy;
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
          account = [v10 account];
          identifier = [account identifier];
          [v4 ic_addNonNilObject:identifier];
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
  attachments = [(ICNote *)self attachments];
  v5 = [attachments count];
  inlineAttachments = [(ICNote *)self inlineAttachments];
  v7 = [v3 arrayWithCapacity:{objc_msgSend(inlineAttachments, "count") + v5}];

  attachments2 = [(ICNote *)self attachments];
  allObjects = [attachments2 allObjects];
  v10 = [allObjects ic_objectsPassingTest:&__block_literal_global_1037];
  [v7 addObjectsFromArray:v10];

  inlineAttachments2 = [(ICNote *)self inlineAttachments];
  allObjects2 = [inlineAttachments2 allObjects];
  [v7 addObjectsFromArray:allObjects2];

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
  v5.receiver = self;
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
    folder = [(ICNote *)self folder];
    folderType = [folder folderType];

    if (folderType == 1)
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
    LOBYTE(serverShare) = 1;
  }

  else
  {
    serverShare = [(ICCloudSyncingObject *)self serverShare];
    if (serverShare)
    {
      v4 = serverShare;
      folder = [(ICNote *)self folder];
      isTrashFolder = [folder isTrashFolder];

      if (isTrashFolder)
      {
        LOBYTE(serverShare) = [(ICCloudSyncingObject *)self shareMatchesRecord];
      }

      else
      {
        LOBYTE(serverShare) = 0;
      }
    }
  }

  return serverShare;
}

- (void)didAcceptShare:(id)share
{
  v24 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ICNote;
  [(ICCloudSyncingObject *)&v17 didAcceptShare:share];
  folder = [(ICNote *)self folder];
  isTrashFolder = [folder isTrashFolder];

  if (isTrashFolder)
  {
    v6 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      account = [(ICNote *)self account];
      defaultFolder = [account defaultFolder];
      identifier = [defaultFolder identifier];
      account2 = [(ICNote *)self account];
      identifier2 = [account2 identifier];
      *buf = 138412802;
      v19 = shortLoggingDescription;
      v20 = 2112;
      v21 = identifier;
      v22 = 2112;
      v23 = identifier2;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Moving shared note %@ out of the trash to folder %@ in account %@", buf, 0x20u);
    }

    account3 = [(ICNote *)self account];
    defaultFolder2 = [account3 defaultFolder];
    [(ICNote *)self setFolder:defaultFolder2];

    date = [MEMORY[0x277CBEAA8] date];
    [(ICNote *)self setFolderModificationDate:date];

    date2 = [MEMORY[0x277CBEAA8] date];
    [(ICNote *)self setModificationDate:date2];

    [(ICNote *)self updateChangeCountWithReason:@"Accepted share"];
  }
}

- (unint64_t)textOffsetAtSearchIndex:(unint64_t)index inSearchableString:(id)string
{
  stringCopy = string;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [stringCopy length];
  if (v6 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v6;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ICNote_Management__textOffsetAtSearchIndex_inSearchableString___block_invoke;
  v10[3] = &unk_278195680;
  v10[4] = &v11;
  [stringCopy enumerateAttribute:@"ICAttachmentSearchable" inRange:0 options:indexCopy usingBlock:{0, v10}];
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

- (_NSRange)textRangeForSearchRange:(_NSRange)range inSearchableString:(id)string
{
  length = range.length;
  v5 = range.location - [(ICNote *)self textOffsetAtSearchIndex:range.location inSearchableString:string];
  v6 = length;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)addAttachmentWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CBEAA8];
  identifierCopy = identifier;
  distantPast = [v4 distantPast];
  v7 = [(ICBaseAttachment *)ICAttachment newAttachmentWithIdentifier:identifierCopy note:self];

  [v7 setCreationDate:distantPast];
  [v7 setModificationDate:distantPast];
  [(ICNote *)self addAttachmentsObject:v7];
  if ([(ICNote *)self isPasswordProtected])
  {
    [v7 setIsPasswordProtected:1];
    [v7 initializeCryptoProperties];
  }

  return v7;
}

- (id)addAttachmentWithData:(id)data filename:(id)filename
{
  v6 = MEMORY[0x277CE1CB8];
  filenameCopy = filename;
  dataCopy = data;
  pathExtension = [filenameCopy pathExtension];
  v10 = [v6 typeWithFilenameExtension:pathExtension];
  identifier = [v10 identifier];

  v12 = [(ICNote *)self addAttachmentWithUTI:identifier data:dataCopy filename:filenameCopy];

  return v12;
}

- (id)addAttachmentWithFileURL:(id)l updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  attributesCopy = attributes;
  lCopy = l;
  lastPathComponent = [lCopy lastPathComponent];
  v10 = [(ICNote *)self addAttachmentWithFileURL:lCopy filename:lastPathComponent updateFileBasedAttributes:attributesCopy analytics:analyticsCopy];

  return v10;
}

- (id)addAttachmentWithFileURL:(id)l filename:(id)filename updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  attributesCopy = attributes;
  lCopy = l;
  filenameCopy = filename;
  v29 = 0;
  v12 = *MEMORY[0x277CBE868];
  v28 = 0;
  v13 = [lCopy getResourceValue:&v29 forKey:v12 error:&v28];
  v14 = v29;
  v15 = v28;
  if (v13)
  {
    v27 = analyticsCopy;
    bOOLValue = [v14 BOOLValue];
    identifier = [*MEMORY[0x277CE1D48] identifier];
    if (bOOLValue)
    {
      identifier2 = [*MEMORY[0x277CE1D80] identifier];

      identifier = identifier2;
    }

    pathExtension = [lCopy pathExtension];
    v20 = [pathExtension length];

    if (v20)
    {
      v21 = MEMORY[0x277CE1CB8];
      pathExtension2 = [lCopy pathExtension];
      if (bOOLValue)
      {
        [v21 typeWithFilenameExtension:pathExtension2 conformingToType:*MEMORY[0x277CE1D50]];
      }

      else
      {
        [v21 typeWithFilenameExtension:pathExtension2];
      }
      v24 = ;
      identifier3 = [v24 identifier];

      identifier = identifier3;
    }

    v23 = [(ICNote *)self addAttachmentWithUTI:identifier withURL:lCopy filename:filenameCopy updateFileBasedAttributes:attributesCopy analytics:v27];
  }

  else
  {
    identifier = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      [ICNote(AttachmentManagement) addAttachmentWithFileURL:filename:updateFileBasedAttributes:analytics:];
    }

    v23 = 0;
  }

  return v23;
}

- (id)addAttachmentWithFileWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  isDirectory = [wrapperCopy isDirectory];
  identifier = [*MEMORY[0x277CE1D48] identifier];
  if (isDirectory)
  {
    identifier2 = [*MEMORY[0x277CE1D80] identifier];

    identifier = identifier2;
  }

  v8 = [ICNoteContext filenameFromFileWrapper:wrapperCopy];
  pathExtension = [v8 pathExtension];
  v10 = [pathExtension length];

  if (v10)
  {
    v11 = MEMORY[0x277CE1CB8];
    pathExtension2 = [v8 pathExtension];
    if (isDirectory)
    {
      [v11 typeWithFilenameExtension:pathExtension2 conformingToType:*MEMORY[0x277CE1D50]];
    }

    else
    {
      [v11 typeWithFilenameExtension:pathExtension2];
    }
    v13 = ;
    identifier3 = [v13 identifier];

    identifier = identifier3;
  }

  v15 = [(ICNote *)self addAttachmentWithUTI:identifier];
  lastPathComponent = [v8 lastPathComponent];
  [v15 setTitle:lastPathComponent];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61__ICNote_AttachmentManagement__addAttachmentWithFileWrapper___block_invoke;
  v19[3] = &unk_2781956D0;
  v20 = wrapperCopy;
  v17 = wrapperCopy;
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

- (id)addAttachmentWithRemoteFileURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  if (pathExtension)
  {
    v6 = MEMORY[0x277CE1CB8];
    pathExtension2 = [lCopy pathExtension];
    v8 = [v6 typeWithFilenameExtension:pathExtension2];
    identifier = [v8 identifier];
  }

  else
  {
    identifier = [*MEMORY[0x277CE1D48] identifier];
  }

  v10 = [(ICNote *)self addAttachmentWithUTI:identifier];
  lastPathComponent = [lCopy lastPathComponent];
  [v10 setTitle:lastPathComponent];

  [v10 setRemoteFileURL:lCopy];

  return v10;
}

- (id)addAttachmentWithUTI:(id)i identifier:(id)identifier urlString:(id)string analytics:(BOOL)analytics regulatoryLogging:(BOOL)logging
{
  loggingCopy = logging;
  analyticsCopy = analytics;
  v33[1] = *MEMORY[0x277D85DE8];
  iCopy = i;
  identifierCopy = identifier;
  stringCopy = string;
  if (identifierCopy)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICWillAddAttachmentForNoteNotification" object:self];

    addAttachment = [(ICNote *)self addAttachmentWithIdentifier:identifierCopy];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICDidAddAttachmentForNoteNotification" object:self];
  }

  else
  {
    addAttachment = [(ICNote *)self addAttachment];
  }

  [addAttachment setTypeUTI:iCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [addAttachment setCreationDate:date];

  date2 = [MEMORY[0x277CBEAA8] date];
  [addAttachment setModificationDate:date2];

  identifier = [*MEMORY[0x277CE1E90] identifier];
  v21 = [iCopy isEqualToString:identifier];

  if (v21)
  {
    [addAttachment setUrlString:stringCopy];
    if (stringCopy)
    {
      goto LABEL_10;
    }

    v22 = MEMORY[0x277D36198];
    v23 = "urlString != ((void*)0)";
    v24 = @"Expected a valid URL for a URL attachment. Call addURLAttachmentWithURL:";
  }

  else
  {
    if (!stringCopy)
    {
      goto LABEL_10;
    }

    v22 = MEMORY[0x277D36198];
    v23 = "urlString == ((void*)0)";
    v24 = @"Expected no URL for a non-URL attachment.";
  }

  [v22 handleFailedAssertWithCondition:v23 functionName:"-[ICNote(AttachmentManagement) addAttachmentWithUTI:identifier:urlString:analytics:regulatoryLogging:]" simulateCrash:1 showAlert:0 format:v24];
LABEL_10:
  if (analyticsCopy)
  {
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v32 = @"ICNoteAnalyticsAddAttachmentNotificationAttachmentKey";
    v33[0] = addAttachment;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [defaultCenter3 postNotificationName:@"ICNoteAnalyticsAddAttachmentNotification" object:0 userInfo:v26];
  }

  if (loggingCopy)
  {
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    v30 = @"ICRegulatoryLoggerAttachmentKey";
    v31 = addAttachment;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [defaultCenter4 postNotificationName:@"ICRegulatoryLoggerAttachmentAddedNotification" object:0 userInfo:v28];
  }

  return addAttachment;
}

- (id)addAttachmentWithUTI:(id)i withURL:(id)l
{
  iCopy = i;
  lCopy = l;
  if ([lCopy ic_isURLAnInternetLocator] && (objc_msgSend(MEMORY[0x277CBEBC0], "ic_urlFromWeblocFileAtURL:", lCopy), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [(ICNote *)self addURLAttachmentWithURL:v8];
  }

  else
  {
    v10 = [(ICNote *)self addAttachmentWithUTI:iCopy withURL:lCopy updateFileBasedAttributes:1 analytics:1];
  }

  return v10;
}

- (id)addAttachmentWithUTI:(id)i withURL:(id)l updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  attributesCopy = attributes;
  lCopy = l;
  iCopy = i;
  lastPathComponent = [lCopy lastPathComponent];
  v13 = [(ICNote *)self addAttachmentWithUTI:iCopy withURL:lCopy filename:lastPathComponent updateFileBasedAttributes:attributesCopy analytics:analyticsCopy];

  return v13;
}

- (id)addAttachmentWithUTI:(id)i withURL:(id)l filename:(id)filename updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics
{
  analyticsCopy = analytics;
  lCopy = l;
  filenameCopy = filename;
  v14 = [(ICNote *)self addAttachmentWithUTI:i identifier:0 urlString:0 analytics:analyticsCopy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__ICNote_AttachmentManagement__addAttachmentWithUTI_withURL_filename_updateFileBasedAttributes_analytics___block_invoke;
  v18[3] = &unk_2781956F8;
  v19 = lCopy;
  v20 = filenameCopy;
  attributesCopy = attributes;
  v15 = filenameCopy;
  v16 = lCopy;
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

- (id)addAttachmentWithUTI:(id)i data:(id)data filenameExtension:(id)extension
{
  iCopy = i;
  dataCopy = data;
  extensionCopy = extension;
  title = [(ICNote *)self title];
  v12 = [title length];

  if (v12)
  {
    title2 = [(ICNote *)self title];
    ic_sanitizedFilenameString = [title2 ic_sanitizedFilenameString];

    if ([ic_sanitizedFilenameString length])
    {
      if (![extensionCopy length])
      {
        v15 = [ICAttachment filenameExtensionForUTI:iCopy];

        extensionCopy = v15;
      }

      if ([extensionCopy length])
      {
        v16 = [ic_sanitizedFilenameString stringByAppendingPathExtension:extensionCopy];

        ic_sanitizedFilenameString = v16;
      }
    }
  }

  else
  {
    ic_sanitizedFilenameString = 0;
  }

  if (![ic_sanitizedFilenameString length])
  {
    v17 = [ICAttachment filenameFromUTI:iCopy];

    ic_sanitizedFilenameString = v17;
  }

  v18 = [(ICNote *)self addAttachmentWithUTI:iCopy data:dataCopy filename:ic_sanitizedFilenameString];

  return v18;
}

- (id)addURLAttachmentWithURL:(id)l
{
  v4 = *MEMORY[0x277CE1E90];
  lCopy = l;
  identifier = [v4 identifier];
  absoluteString = [lCopy absoluteString];

  v8 = [(ICNote *)self addAttachmentWithUTI:identifier identifier:0 urlString:absoluteString analytics:1];

  modificationDate = [v8 modificationDate];

  if (modificationDate)
  {
    modificationDate2 = [(ICCloudSyncingObject *)self modificationDate];
    modificationDate3 = [v8 modificationDate];
    v12 = [modificationDate2 compare:modificationDate3];

    if (v12 == -1)
    {
      modificationDate4 = [v8 modificationDate];
      [(ICNote *)self setModificationDate:modificationDate4];
    }
  }

  return v8;
}

- (id)addSynapseLinkAttachmentWithContentItem:(id)item
{
  itemCopy = item;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4;
  v21 = __Block_byref_object_dispose__4;
  v22 = 0;
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __72__ICNote_AttachmentManagement__addSynapseLinkAttachmentWithContentItem___block_invoke;
  v13 = &unk_278195740;
  v16 = &v17;
  selfCopy = self;
  v6 = itemCopy;
  v15 = v6;
  [managedObjectContext performBlockAndWait:&v10];

  v7 = v18[5];
  if (!v7)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((attachment) != nil)" functionName:"-[ICNote(AttachmentManagement) addSynapseLinkAttachmentWithContentItem:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "attachment", v10, v11, v12, v13, selfCopy}];
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

- (id)addGalleryAttachmentWithIdentifier:(id)identifier
{
  v3 = [(ICNote *)self addAttachmentWithUTI:@"com.apple.notes.gallery" identifier:identifier urlString:0 analytics:1];
  v4 = [ICAttachment defaultTitleForAttachmentType:11];
  [v3 setTitle:v4];

  return v3;
}

- (id)addTableAttachment
{
  v3 = [ICTableVersionedDocument alloc];
  currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
  v5 = [(ICTableVersionedDocument *)v3 initWithColumnCount:2 rowCount:2 replicaID:currentReplicaID];

  serialize = [(ICTTVersionedDocument *)v5 serialize];
  v7 = [(ICNote *)self addTableAttachmentWithTableData:serialize];

  return v7;
}

- (id)addAudioAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  visibleTopLevelAttachments = [(ICNote *)self visibleTopLevelAttachments];
  v6 = [visibleTopLevelAttachments ic_compactMap:&__block_literal_global_1149];

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

  v13 = [(ICNote *)self addAttachmentWithUTI:*MEMORY[0x277CE5D68] identifier:identifierCopy urlString:0 analytics:1 regulatoryLogging:0];
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

- (id)addPaperDocumentAttachmentWithIdentifier:(id)identifier subtype:(id)subtype
{
  v15[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  subtypeCopy = subtype;
  v8 = MEMORY[0x277CBEB98];
  v15[0] = @"com.apple.paper.doc.pdf";
  v15[1] = @"com.apple.paper.doc.scan";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];

  if (([v10 containsObject:subtypeCopy] & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[allowedSubtypes containsObject:subtype]" functionName:"-[ICNote(AttachmentManagement) addPaperDocumentAttachmentWithIdentifier:subtype:]" simulateCrash:1 showAlert:0 format:{@"unexpected subtype: %@ is not one of %@; assuming PDF", subtypeCopy, v10}];
  }

  if (([v10 containsObject:subtypeCopy] & 1) == 0)
  {
    v11 = @"com.apple.paper.doc.pdf";

    subtypeCopy = v11;
  }

  if ((ICInternalSettingsIsPDFsInNotesEnabled() & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"ICInternalSettingsIsPDFsInNotesEnabled()" functionName:"-[ICNote(AttachmentManagement) addPaperDocumentAttachmentWithIdentifier:subtype:]" simulateCrash:1 showAlert:0 format:@"PDFsInNotes must be enabled"];
  }

  v12 = [(ICNote *)self addAttachmentWithUTI:subtypeCopy identifier:identifierCopy urlString:0 analytics:1];
  if ([(__CFString *)subtypeCopy isEqualToString:@"com.apple.paper.doc.scan"])
  {
    v13 = [ICAttachment defaultTitleForAttachmentType:15];
    [v12 setTitle:v13];
  }

  return v12;
}

- (id)addTableAttachmentWithText:(id)text
{
  textCopy = text;
  managedObjectContext = [(ICNote *)self managedObjectContext];
  currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
  v7 = [ICAttachmentTableModel tableFromAttributedString:textCopy managedObjectContext:managedObjectContext replicaID:currentReplicaID];

  table = [v7 table];
  columnCount = [table columnCount];

  if (columnCount <= 1)
  {
    do
    {
      table2 = [v7 table];
      table3 = [v7 table];
      v12 = [table2 insertColumnAtIndex:{objc_msgSend(table3, "columnCount")}];

      table4 = [v7 table];
      columnCount2 = [table4 columnCount];
    }

    while (columnCount2 < 2);
  }

  serialize = [v7 serialize];
  v16 = [(ICNote *)self addTableAttachmentWithTableData:serialize];

  return v16;
}

- (id)addTableAttachmentWithTableData:(id)data
{
  dataCopy = data;
  v5 = [(ICNote *)self addAttachmentWithUTI:@"com.apple.notes.table"];
  [v5 updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
  [v5 setMergeableData:dataCopy];

  managedObjectContext = [v5 managedObjectContext];
  [managedObjectContext ic_save];

  return v5;
}

- (id)addInlineDrawingAttachmentWithAnalytics:(BOOL)analytics
{
  v3 = [(ICNote *)self addAttachmentWithUTI:@"com.apple.drawing.2" identifier:0 urlString:0 analytics:analytics];
  v4 = [ICAttachment defaultTitleForAttachmentType:10];
  [v3 setTitle:v4];

  return v3;
}

- (id)addAttachment
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ICWillAddAttachmentForNoteNotification" object:self];

  v6 = [(ICNote *)self addAttachmentWithIdentifier:uUIDString];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"ICDidAddAttachmentForNoteNotification" object:self];

  return v6;
}

- (id)addAttachmentWithUTI:(id)i data:(id)data filename:(id)filename updateFileBasedAttributes:(BOOL)attributes analytics:(BOOL)analytics regulatoryLogging:(BOOL)logging
{
  loggingCopy = logging;
  analyticsCopy = analytics;
  dataCopy = data;
  filenameCopy = filename;
  v16 = [(ICNote *)self addAttachmentWithUTI:i identifier:0 urlString:0 analytics:analyticsCopy regulatoryLogging:loggingCopy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __121__ICNote_AttachmentManagement__addAttachmentWithUTI_data_filename_updateFileBasedAttributes_analytics_regulatoryLogging___block_invoke;
  v20[3] = &unk_2781956F8;
  v21 = dataCopy;
  v22 = filenameCopy;
  attributesCopy = attributes;
  v17 = filenameCopy;
  v18 = dataCopy;
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

- (void)addMediaToAttachment:(id)attachment withBlock:(id)block
{
  attachmentCopy = attachment;
  blockCopy = block;
  if ([(ICNote *)self shouldAddMediaAsynchronously])
  {
    if (addMediaToAttachment_withBlock__onceToken != -1)
    {
      [ICNote(AttachmentManagement) addMediaToAttachment:withBlock:];
    }

    shortLoggingDescription = [attachmentCopy shortLoggingDescription];
    v9 = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(AttachmentManagement) addMediaToAttachment:withBlock:];
    }

    isInserted = [attachmentCopy isInserted];
    ic_permanentObjectID = [attachmentCopy ic_permanentObjectID];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__ICNote_AttachmentManagement__addMediaToAttachment_withBlock___block_invoke_1168;
    aBlock[3] = &unk_278195788;
    v12 = shortLoggingDescription;
    v28 = v12;
    selfCopy = self;
    v13 = ic_permanentObjectID;
    v30 = v13;
    v31 = blockCopy;
    v14 = _Block_copy(aBlock);
    if (isInserted)
    {
      v15 = os_log_create("com.apple.notes", "Media");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ICNote(AttachmentManagement) addMediaToAttachment:withBlock:];
      }

      if (!self->_noteDidSaveBlocks)
      {
        array = [MEMORY[0x277CBEB18] array];
        noteDidSaveBlocks = self->_noteDidSaveBlocks;
        self->_noteDidSaveBlocks = array;
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
    (*(blockCopy + 2))(blockCopy, attachmentCopy);
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

- (id)addInlineAttachmentWithIdentifier:(id)identifier
{
  v4 = [(ICBaseAttachment *)ICInlineAttachment newAttachmentWithIdentifier:identifier note:self];
  if ([(ICNote *)self isPasswordProtected])
  {
    [v4 setIsPasswordProtected:1];
    [v4 initializeCryptoProperties];
  }

  [(ICNote *)self addInlineAttachmentsObject:v4];

  return v4;
}

- (id)anyVisibleInstanceOfHashtag:(id)hashtag
{
  v4 = [ICHashtag standardizedHashtagRepresentationForDisplayText:hashtag];
  visibleInlineAttachments = [(ICNote *)self visibleInlineAttachments];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__ICNote_AttachmentManagement__anyVisibleInstanceOfHashtag___block_invoke;
  v9[3] = &unk_2781957D8;
  v10 = v4;
  v6 = v4;
  v7 = [visibleInlineAttachments ic_objectPassingTest:v9];

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

- (id)attachmentWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attachments = [(ICNote *)self attachments];
  v6 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(attachments);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      identifier = [v10 identifier];
      v12 = [identifier isEqualToString:identifierCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  managedObjectContext = [(ICNote *)self managedObjectContext];
  v13 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:identifierCopy context:managedObjectContext];

LABEL_12:

  return v13;
}

- (id)inlineAttachmentWithICTTAttachment:(id)attachment
{
  v21 = *MEMORY[0x277D85DE8];
  attachmentIdentifier = [attachment attachmentIdentifier];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  inlineAttachments = [(ICNote *)self inlineAttachments];
  v6 = [inlineAttachments countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(inlineAttachments);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      identifier = [v10 identifier];
      v12 = [identifier isEqualToString:attachmentIdentifier];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [inlineAttachments countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  managedObjectContext = [(ICNote *)self managedObjectContext];
  v13 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:attachmentIdentifier context:managedObjectContext];

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
  attachments = [(ICNote *)self attachments];
  v4 = [attachments countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isFault] & 1) == 0)
        {
          managedObjectContext = [(ICNote *)self managedObjectContext];
          [managedObjectContext ic_refreshObject:v8 mergeChanges:0];
        }
      }

      v5 = [attachments countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

+ (void)createNoteForAirDropDocument:(id)document processAttributedString:(id)string completion:(id)completion
{
  documentCopy = document;
  stringCopy = string;
  completionCopy = completion;
  if (documentCopy)
  {
    document = [documentCopy document];
    v11 = document;
    if ((*(document + 32) & 1) == 0)
    {
      document = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"document.has_notedocument()" functionName:"+[ICNote(AirDropDocument) createNoteForAirDropDocument:processAttributedString:completion:]" simulateCrash:1 showAlert:0 format:@"AirDrop document does not have note document"];
      if ((*(v11 + 32) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v12 = *(v11 + 40);
    if (!v12)
    {
      document = airdrop_document::Document::default_instance(document);
      v12 = *(document + 40);
    }

    if ((*(v12 + 32) & 1) == 0)
    {
      document = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"noteDocument.has_version1_0()" functionName:"+[ICNote(AirDropDocument) createNoteForAirDropDocument:processAttributedString:completion:]" simulateCrash:1 showAlert:0 format:@"Failed to find any note document version"];
      if ((*(v12 + 32) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v12 + 40);
    if (!v13)
    {
      document = airdrop_document::NoteDocument::default_instance(document);
      v13 = *(document + 40);
    }

    if (*(v13 + 32) & 1) != 0 || (document = [MEMORY[0x277D36198] handleFailedAssertWithCondition:"version1_0.has_attributedstring()" functionName:"+[ICNote(AirDropDocument) createNoteForAirDropDocument:processAttributedString:completion:]" simulateCrash:1 showAlert:0 format:@"No string found from version 1.0 data"], (*(v13 + 32)))
    {
      v15 = *(v13 + 40);
      if (!v15)
      {
        v15 = *(airdrop_document::NoteDocument1_0::default_instance(document) + 40);
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
      managedObjectContext = [v19 managedObjectContext];
      v21 = [ICFolder defaultFolderInContext:managedObjectContext];

      if (v21)
      {
        v14 = [ICNote newEmptyNoteInFolder:v21];
      }

      else
      {
        v22 = +[ICNoteContext sharedContext];
        managedObjectContext2 = [v22 managedObjectContext];
        v14 = [ICNote newEmptyNoteInContext:managedObjectContext2];
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
      v27 = stringCopy[2](stringCopy, v21, v14, v25, v26);

      if ((v27 & 1) == 0)
      {

        v14 = 0;
      }

      if (completionCopy && v14)
      {
        [v14 updateChangeCountWithReason:@"Created note from AirDrop"];
        managedObjectContext3 = [v14 managedObjectContext];
        [managedObjectContext3 ic_save];

        completionCopy[2](completionCopy, v14);
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
  workerManagedObjectContext = [v3 workerManagedObjectContext];

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
  v5 = workerManagedObjectContext;
  v19 = v5;
  [v5 performBlockAndWait:v18];
  if (v22[5])
  {
    v6 = objc_alloc_init(ICAirDropDocument);
    document = [(ICAirDropDocument *)v6 document];
    *(document + 32) |= 1u;
    v8 = *(document + 40);
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

    bytes = [v22[5] bytes];
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

    std::string::__assign_external(v16, bytes, v15);
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

- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force
{
  forceCopy = force;
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = ICNote;
  recordCopy = record;
  [(ICCloudSyncingObject *)&v14 objectWasFetchedFromCloudWithRecord:recordCopy accountID:d force:forceCopy];
  recordID = [recordCopy recordID];

  recordName = [recordID recordName];

  recordID2 = [(ICCloudSyncingObject *)self recordID];
  recordName2 = [recordID2 recordName];

  if (([recordName isEqualToString:recordName2] & 1) == 0)
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = recordName;
      v17 = 2112;
      v18 = recordName2;
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

  noteData = [(ICNote *)self noteData];
  data = [noteData data];
  v5 = data != 0;

  return v5;
}

- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)context shouldFetchObject:(id)object
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  objectCopy = object;
  v8 = [MEMORY[0x277CBEB58] set];
  if (contextCopy && objectCopy)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    attachments = [(ICNote *)self attachments];
    v10 = [attachments countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(attachments);
          }

          v14 = [*(*(&v30 + 1) + 8 * i) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:contextCopy shouldFetchObject:objectCopy];
          allObjects = [v14 allObjects];
          [v8 ic_addObjectsFromNonNilArray:allObjects];
        }

        v11 = [attachments countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v11);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    inlineAttachments = [(ICNote *)self inlineAttachments];
    v17 = [inlineAttachments countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(inlineAttachments);
          }

          v21 = [*(*(&v26 + 1) + 8 * j) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:contextCopy shouldFetchObject:objectCopy];
          allObjects2 = [v21 allObjects];
          [v8 ic_addObjectsFromNonNilArray:allObjects2];
        }

        v18 = [inlineAttachments countByEnumeratingWithState:&v26 objects:v34 count:16];
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

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  stateCopy = state;
  dCopy = d;
  recordCopy = record;
  v13 = [(ICNote *)self mergePolicyForRecord:recordCopy];
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v15 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:managedObjectContext];

  LOBYTE(approach) = [(ICNote *)self mergeCloudKitRecord:recordCopy mergePolicy:v13 account:v15 approach:approach mergeableFieldState:stateCopy];
  return approach;
}

- (BOOL)mergeCloudKitRecord:(id)record account:(id)account approach:(int64_t)approach
{
  accountCopy = account;
  recordCopy = record;
  LOBYTE(approach) = [(ICNote *)self mergeCloudKitRecord:recordCopy mergePolicy:[(ICNote *)self mergePolicyForRecord:recordCopy] account:accountCopy approach:approach mergeableFieldState:0];

  return approach;
}

- (BOOL)mergeCloudKitRecord:(id)record mergePolicy:(int64_t)policy account:(id)account approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  accountCopy = account;
  stateCopy = state;
  if (policy != 3)
  {
    identifier = [accountCopy identifier];
    v96.receiver = self;
    v96.super_class = ICNote;
    v16 = [(ICCloudSyncingObject *)&v96 mergeCloudKitRecord:recordCopy accountID:identifier approach:approach mergeableFieldState:stateCopy];

    if (!v16)
    {
      goto LABEL_28;
    }

    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [(ICNote *)self setIdentifier:recordName];

    v19 = [recordCopy objectForKeyedSubscript:@"CreationDate"];
    creationDate = [(ICCloudSyncingObject *)self creationDate];
    v95 = stateCopy;
    if (!creationDate)
    {
      goto LABEL_9;
    }

    v21 = creationDate;
    v93 = accountCopy;
    creationDate2 = [(ICCloudSyncingObject *)self creationDate];
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    if (([creationDate2 isEqual:v23] & 1) == 0)
    {
      v91 = v19;
      creationDate3 = [(ICCloudSyncingObject *)self creationDate];
      v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
      if (([creationDate3 isEqual:v25] & 1) == 0)
      {
        [(ICCloudSyncingObject *)self creationDate];
        v54 = v88 = creationDate3;
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        v90 = [v54 isEqual:distantPast];

        accountCopy = v93;
        stateCopy = v95;
        v19 = v91;
        if ((v90 & 1) == 0)
        {
          creationDate4 = [(ICCloudSyncingObject *)self creationDate];
          v57 = [v91 earlierDate:creationDate4];
          [(ICNote *)self setCreationDate:v57];

LABEL_10:
          v26 = [recordCopy objectForKeyedSubscript:@"ModificationDate"];
          if (v26)
          {
            modificationDate = [(ICCloudSyncingObject *)self modificationDate];
            v28 = [v26 laterDate:modificationDate];
            [(ICNote *)self setModificationDate:v28];
          }

          [(ICNote *)self mergeTextDataFromRecord:recordCopy mergePolicy:policy mergeableFieldState:stateCopy];
          if (approach)
          {
            goto LABEL_53;
          }

          v29 = [(ICNote *)self folderReferenceFromRecord:recordCopy];
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

          ic_isOwnedByCurrentUser = [recordCopy ic_isOwnedByCurrentUser];
          ic_isOwnedByCurrentUser2 = [v29 ic_isOwnedByCurrentUser];
          v89 = v29;
          if (ic_isOwnedByCurrentUser & 1) != 0 || (v36 = ic_isOwnedByCurrentUser2, [recordCopy share], v37 = objc_claimAutoreleasedReturnValue(), v38 = v37 == 0, v37, ((v38 | v36)))
          {
            [(ICNote *)self mergeFoldersFromRecord:recordCopy account:accountCopy];
          }

          else
          {
            folder = [(ICNote *)self folder];

            if (!folder)
            {
              if (!accountCopy)
              {
                managedObjectContext = [(ICNote *)self managedObjectContext];
                accountCopy = [ICAccount cloudKitAccountInContext:managedObjectContext];
              }

              v86 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
              {
                [ICNote(CloudKit) mergeCloudKitRecord:accountCopy mergePolicy:recordCopy account:v86 approach:? mergeableFieldState:?];
              }

              defaultFolder = [accountCopy defaultFolder];
              [(ICNote *)self setFolder:defaultFolder];
            }
          }

          recordType = [recordCopy recordType];
          -[ICNote setIsPasswordProtected:](self, "setIsPasswordProtected:", [recordType isEqualToString:@"PasswordProtectedNote"]);

          v40 = [recordCopy objectForKeyedSubscript:@"AttachmentViewType"];

          if (v40)
          {
            v41 = v19;
            objc_opt_class();
            v42 = [recordCopy objectForKeyedSubscript:@"AttachmentViewType"];
            v43 = ICCheckedDynamicCast();

            intValue = [v43 intValue];
            if ([(ICNote *)self attachmentViewType]!= intValue)
            {
              [(ICNote *)self setAttachmentViewType:intValue];
            }

            v19 = v41;
          }

          v45 = [recordCopy objectForKeyedSubscript:@"PaperStyleType"];

          if (v45)
          {
            v46 = v19;
            objc_opt_class();
            v47 = [recordCopy objectForKeyedSubscript:@"PaperStyleType"];
            v48 = ICCheckedDynamicCast();

            intValue2 = [v48 intValue];
            if ([(ICNote *)self paperStyleType]!= intValue2)
            {
              [(ICNote *)self setPaperStyleType:intValue2];
            }

            v19 = v46;
          }

          encryptedValues = [recordCopy encryptedValues];
          v51 = [encryptedValues objectForKeyedSubscript:@"TitleEncrypted"];

          if (v51)
          {
            ic_stringValue = [v51 ic_stringValue];
          }

          else
          {
            v58 = [recordCopy objectForKeyedSubscript:@"Title"];

            if (!v58)
            {
              goto LABEL_34;
            }

            ic_stringValue = [recordCopy objectForKeyedSubscript:@"Title"];
          }

          v59 = ic_stringValue;
          [(ICNote *)self setTitle:ic_stringValue];

LABEL_34:
          v94 = accountCopy;
          encryptedValues2 = [recordCopy encryptedValues];
          v61 = [encryptedValues2 objectForKeyedSubscript:@"SnippetEncrypted"];

          if (v61)
          {
            ic_stringValue2 = [v61 ic_stringValue];
          }

          else
          {
            v63 = [recordCopy objectForKeyedSubscript:@"Snippet"];

            if (!v63)
            {
              goto LABEL_39;
            }

            ic_stringValue2 = [recordCopy objectForKeyedSubscript:@"Snippet"];
          }

          v64 = ic_stringValue2;
          [(ICNote *)self setSnippet:ic_stringValue2];

LABEL_39:
          encryptedValues3 = [recordCopy encryptedValues];
          v66 = [encryptedValues3 objectForKeyedSubscript:@"ReplicaIDToUserIDEncrypted"];

          if (v66)
          {
            encryptedValues4 = [recordCopy encryptedValues];
            v68 = [encryptedValues4 objectForKeyedSubscript:@"ReplicaIDToUserIDEncrypted"];

            v69 = [ICMergeableDictionary alloc];
            [(ICCloudSyncingObject *)self currentReplicaID];
            v71 = v70 = v19;
            v72 = [(ICMergeableDictionary *)v69 initWithData:v68 replicaID:v71];

            v19 = v70;
            [(ICNote *)self mergeReplicaIDToUserID:v72];
          }

          v73 = [recordCopy objectForKeyedSubscript:@"LegacyImportDeviceIdentifier"];
          if (v73)
          {
            [(ICNote *)self setLegacyImportDeviceIdentifier:v73];
          }

          v74 = [recordCopy objectForKeyedSubscript:@"LegacyModificationDateAtImport"];

          if (v74)
          {
            v75 = [recordCopy objectForKeyedSubscript:@"LegacyModificationDateAtImport"];
            [(ICNote *)self setLegacyModificationDateAtImport:v75];
          }

          encryptedValues5 = [recordCopy encryptedValues];
          v77 = [encryptedValues5 objectForKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];

          if (v77)
          {
            ic_stringValue3 = [v77 ic_stringValue];
          }

          else
          {
            v79 = [recordCopy objectForKeyedSubscript:@"LegacyContentHashAtImport"];

            if (!v79)
            {
LABEL_50:
              folder2 = [(ICNote *)self folder];
              [folder2 unmarkForDeletionIncludingParentHierarchy];

              documentWithoutCreating = [(ICNote *)self documentWithoutCreating];

              if (documentWithoutCreating)
              {
                [(ICNote *)self regenerateTitle:1 snippet:1];
              }

              accountCopy = v94;
              stateCopy = v95;
LABEL_53:

              v53 = 1;
              goto LABEL_54;
            }

            ic_stringValue3 = [recordCopy objectForKeyedSubscript:@"LegacyContentHashAtImport"];
          }

          v80 = ic_stringValue3;
          [(ICNote *)self setLegacyContentHashAtImport:ic_stringValue3];

          goto LABEL_50;
        }

LABEL_9:
        [(ICNote *)self setCreationDate:v19];
        goto LABEL_10;
      }

      v19 = v91;
    }

    accountCopy = v93;
    stateCopy = v95;
    goto LABEL_9;
  }

  [(ICNote *)self deduplicateSelfAndCreateNewObjectFromRecord:recordCopy];
LABEL_28:
  v53 = 0;
LABEL_54:

  return v53;
}

- (void)mergeTextDataFromRecord:(id)record mergePolicy:(int64_t)policy mergeableFieldState:(id)state
{
  recordCopy = record;
  stateCopy = state;
  v10 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"TextData"];
  v11 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"TextDeltaData"];
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

  noteData = [(ICNote *)self noteData];
  data = [noteData data];
  if (data || [(ICNote *)self hasLoadedDocument])
  {

    isPasswordProtected = [(ICNote *)self isPasswordProtected];
    if (v10 && isPasswordProtected)
    {
      if ([(ICCloudSyncingObject *)self isAuthenticated])
      {
        mergeableString = [(ICNote *)self mergeableString];
      }

      v16 = [(ICNote *)self decryptTextDataOrSaveAsUnappliedRecordIfNotAuthenticated:recordCopy];

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

    document = [(ICNote *)self document];

    if (!document)
    {
      v28 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ICNote(CloudKit) mergeTextDataFromRecord:v28 mergePolicy:? mergeableFieldState:?];
      }

      v29 = +[ICNoteContext sharedContext];
      folder = [(ICNote *)self folder];
      v31 = [v29 addNewNoteByCopyingNote:self toFolder:folder];

      v32 = [ICTTMergeableStringVersionedDocument alloc];
      currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
      v24 = [(ICTTVersionedDocument *)v32 initWithData:v10 replicaID:currentReplicaID];

      [(ICNote *)self replaceWithDocument:v24];
      [MEMORY[0x277D36278] postBasicEvent:22];
LABEL_59:

      [(ICNote *)self didChangeNoteText];
      unappliedEncryptedRecord = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
      if (unappliedEncryptedRecord)
      {
        cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
        v52 = [cryptoStrategy recordHasChangedPassphrase:unappliedEncryptedRecord];

        if (v52)
        {
          noteData2 = [(ICNote *)self noteData];
          [noteData2 setNeedsToBeSaved:1];
        }
      }

      v54 = [(ICNote *)self noteData:v57];
      if ([v54 saveNoteDataIfNeeded])
      {
      }

      else
      {
        noteData3 = [(ICNote *)self noteData];
        needsToBeSaved = [noteData3 needsToBeSaved];

        if (needsToBeSaved)
        {
LABEL_66:
          if (objc_opt_respondsToSelector())
          {
            [(ICNote *)self createMissingAttachmentsInTextStorage];
          }

          [(ICNote *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:stateCopy];

          goto LABEL_69;
        }
      }

      [(ICCloudSyncingObject *)self setUnappliedEncryptedRecord:0];
      goto LABEL_66;
    }

    if (v10)
    {
      v18 = [ICTTMergeableStringVersionedDocument alloc];
      currentReplicaID2 = [(ICCloudSyncingObject *)self currentReplicaID];
      v20 = [(ICTTVersionedDocument *)v18 initWithData:v10 replicaID:currentReplicaID2];

      selfCopy = self;
      if (policy == 1 || (selfCopy = v20, policy == 2))
      {
        mergeableString2 = [(ICNote *)selfCopy mergeableString];
        mergeableString3 = [(ICNote *)selfCopy mergeableString];
        [mergeableString2 deleteCharactersInRange:{0, objc_msgSend(mergeableString3, "length")}];
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

      if (policy == 1)
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
        if (policy == 2)
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
        folder2 = [(ICNote *)self folder];
        v49 = [v47 addNewNoteByCopyingNote:self toFolder:folder2];

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
      currentReplicaID3 = [(ICCloudSyncingObject *)self currentReplicaID];
      v41 = [(ICTTMergeableString *)v39 initWithData:v11 replicaID:currentReplicaID3 fragment:1];

      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = __76__ICNote_CloudKit__mergeTextDataFromRecord_mergePolicy_mergeableFieldState___block_invoke_120;
      v60 = &unk_278195138;
      selfCopy2 = self;
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

        [MEMORY[0x277D36278] postBasicEvent:{19, v57, v58, v59, v60, selfCopy2}];
      }
    }

LABEL_29:
    v10 = 0;
    goto LABEL_69;
  }

  v34 = [recordCopy objectForKeyedSubscript:@"CryptoTag"];

  if (v34)
  {
    v35 = [recordCopy objectForKeyedSubscript:@"CryptoTag"];
    [(ICNote *)self setCryptoTag:v35];
  }

  v36 = [recordCopy objectForKeyedSubscript:@"CryptoInitializationVector"];

  if (v36)
  {
    v37 = [recordCopy objectForKeyedSubscript:@"CryptoInitializationVector"];
    [(ICNote *)self setCryptoInitializationVector:v37];
  }

  noteData4 = [(ICNote *)self noteData];
  [noteData4 setData:v10];

  [(ICNote *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:stateCopy];
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

- (void)writeCurrentTimestampToMergeableFieldStateIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    v5 = [MEMORY[0x277CBC5A0] ic_encryptedKeyForKeyPrefix:@"TextData"];
    mergeableString = [(ICNote *)self mergeableString];
    timestamp = [mergeableString timestamp];
    serialize = [timestamp serialize];

    if ([serialize length])
    {
      [necessaryCopy setObject:serialize forKey:v5];
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

- (id)folderReferenceFromRecord:(id)record
{
  recordCopy = record;
  firstObject2 = [recordCopy objectForKeyedSubscript:@"Folder"];
  objc_opt_class();
  v6 = [recordCopy objectForKeyedSubscript:@"Folders"];

  v7 = ICDynamicCast();

  if (firstObject2)
  {
    if ([v7 count])
    {
      firstObject = [v7 firstObject];
      if (([firstObject2 isEqual:firstObject] & 1) == 0)
      {
        v9 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [ICNote(CloudKit) folderReferenceFromRecord:?];
        }

        v10 = firstObject;
        firstObject2 = v10;
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

    firstObject2 = [v7 firstObject];
  }

  return firstObject2;
}

- (void)mergeFoldersFromRecord:(id)record account:(id)account
{
  v53 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  recordCopy = record;
  v8 = [(ICNote *)self folderReferenceFromRecord:recordCopy];
  v9 = [recordCopy objectForKeyedSubscript:@"FoldersModificationDate"];

  if (v9 && ([(ICNote *)self folderModificationDate], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    folderModificationDate = [(ICNote *)self folderModificationDate];
    v12 = [v9 ic_isLaterThanDate:folderModificationDate];
  }

  else
  {
    folderModificationDate = [(ICNote *)self folderModificationDate];
    v12 = folderModificationDate == 0;
  }

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    folderModificationDate2 = [(ICNote *)self folderModificationDate];
    v25 = folderModificationDate2;
    v26 = @"N";
    *buf = 138413058;
    v44 = shortLoggingDescription;
    if (v12)
    {
      v26 = @"Y";
    }

    v45 = 2112;
    v46 = v9;
    v47 = 2112;
    v48 = folderModificationDate2;
    v49 = 2112;
    v50 = v26;
    _os_log_debug_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEBUG, "%@: cloud folder modification date: %@, local folder modification date: %@, isCloudFoldersMoreRecentThanLocalFolders: %@", buf, 0x2Au);
  }

  folder = [(ICNote *)self folder];
  isTrashFolder = [folder isTrashFolder];

  if (([(ICNote *)self needsInitialFetchFromCloud]| v12))
  {
    if (v8)
    {
      recordID = [v8 recordID];
      v42 = accountCopy;
      identifier = [accountCopy identifier];
      managedObjectContext = [(ICNote *)self managedObjectContext];
      v19 = [ICFolder existingCloudObjectForRecordID:recordID accountID:identifier context:managedObjectContext];

      if (!v19)
      {
        v20 = os_log_create("com.apple.notes", "Cloud");
        recordName = v20;
        if (v42)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            [(ICNote(CloudKit) *)v8 mergeFoldersFromRecord:recordName account:?];
          }

          recordID2 = [v8 recordID];
          recordName = [recordID2 recordName];

          v19 = [ICFolder newFolderWithIdentifier:recordName account:v42];
          [v19 setNeedsInitialFetchFromCloud:1];
        }

        else
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            recordID3 = [v8 recordID];
            recordName2 = [recordID3 recordName];
            shortLoggingDescription2 = [(ICCloudSyncingObject *)self shortLoggingDescription];
            v31 = objc_opt_class();
            v32 = NSStringFromClass(v31);
            identifier2 = [0 identifier];
            *buf = 138413314;
            v44 = v28;
            v45 = 2112;
            v46 = recordName2;
            v47 = 2112;
            v48 = shortLoggingDescription2;
            v49 = 2112;
            v50 = v32;
            v51 = 2112;
            v52 = identifier2;
            _os_log_impl(&dword_214D51000, recordName, OS_LOG_TYPE_INFO, "Trying to set a %@ (%@) for %@, but we couldn't find the %@ due to a non-existent CloudKit account (%@). Folder will be nil.", buf, 0x34u);
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
      accountCopy = v42;
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
    folder2 = [(ICNote *)self folder];
    isTrashFolder2 = [folder2 isTrashFolder];

    if ((isTrashFolder2 & 1) == 0)
    {
      account = [(ICNote *)self account];
      trashFolder = [account trashFolder];

      v38 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [ICNote(CloudKit) mergeFoldersFromRecord:? account:?];
      }

      [(ICNote *)self setFolder:trashFolder];
      [(ICNote *)self setFolderModificationDate:v9];
    }
  }

  if ((isTrashFolder & 1) == 0)
  {
    folder3 = [(ICNote *)self folder];
    isTrashFolder3 = [folder3 isTrashFolder];

    if (isTrashFolder3)
    {
      [(ICNote *)self notifyAttachmentsNoteWillMoveToRecentlyDeletedFolder];
    }
  }
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  v58[1] = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = ICNote;
  stateCopy = state;
  v7 = [(ICCloudSyncingObject *)&v57 makeCloudKitRecordForApproach:approach mergeableFieldState:stateCopy];
  [(ICNote *)self addNoteBodyToRecord:v7 forApproach:approach mergeableFieldState:stateCopy, v57.receiver, v57.super_class];

  modificationDate = [(ICCloudSyncingObject *)self modificationDate];
  [v7 setObject:modificationDate forKeyedSubscript:@"ModificationDate"];

  creationDate = [(ICCloudSyncingObject *)self creationDate];
  [v7 setObject:creationDate forKeyedSubscript:@"CreationDate"];

  if (!approach)
  {
    folder = [(ICNote *)self folder];
    recordID = [folder recordID];

    if (recordID)
    {
      recordID2 = [v7 recordID];
      zoneID = [recordID2 zoneID];
      zoneID2 = [recordID zoneID];
      v15 = [zoneID isEqual:zoneID2];

      if (v15)
      {
        v16 = objc_alloc(MEMORY[0x277CBC620]);
        v17 = [v16 initWithRecordID:recordID action:*MEMORY[0x277CBC070]];
        [v7 setObject:v17 forKeyedSubscript:@"Folder"];
        folderModificationDate = [(ICNote *)self folderModificationDate];
        [v7 setObject:folderModificationDate forKeyedSubscript:@"FoldersModificationDate"];

        v58[0] = v17;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
        [v7 setObject:v19 forKeyedSubscript:@"Folders"];
      }
    }

    replicaIDToUserIDDictData = [(ICNote *)self replicaIDToUserIDDictData];

    if (replicaIDToUserIDDictData)
    {
      replicaIDToUserIDDictData2 = [(ICNote *)self replicaIDToUserIDDictData];
      encryptedValues = [v7 encryptedValues];
      [encryptedValues setObject:replicaIDToUserIDDictData2 forKeyedSubscript:@"ReplicaIDToUserIDEncrypted"];
    }

    if ([(ICNote *)self isPasswordProtected])
    {
      cryptoInitializationVector = [(ICNote *)self cryptoInitializationVector];
      [v7 setObject:cryptoInitializationVector forKeyedSubscript:@"CryptoInitializationVector"];

      cryptoTag = [(ICNote *)self cryptoTag];
      [v7 setObject:cryptoTag forKeyedSubscript:@"CryptoTag"];

      cryptoWrappedKey = [(ICNote *)self cryptoWrappedKey];
      [v7 setObject:cryptoWrappedKey forKeyedSubscript:@"CryptoWrappedKey"];
    }

    title = [(ICNote *)self title];

    if (title)
    {
      title2 = [(ICNote *)self title];
      v28 = [title2 dataUsingEncoding:4];
      encryptedValues2 = [v7 encryptedValues];
      [encryptedValues2 setObject:v28 forKeyedSubscript:@"TitleEncrypted"];
    }

    snippet = [(ICNote *)self snippet];

    if (snippet)
    {
      snippet2 = [(ICNote *)self snippet];
      v32 = [snippet2 dataUsingEncoding:4];
      encryptedValues3 = [v7 encryptedValues];
      [encryptedValues3 setObject:v32 forKeyedSubscript:@"SnippetEncrypted"];
    }

    legacyModificationDateAtImport = [(ICNote *)self legacyModificationDateAtImport];

    if (legacyModificationDateAtImport)
    {
      legacyModificationDateAtImport2 = [(ICNote *)self legacyModificationDateAtImport];
      [v7 setObject:legacyModificationDateAtImport2 forKeyedSubscript:@"LegacyModificationDateAtImport"];
    }

    legacyContentHashAtImport = [(ICNote *)self legacyContentHashAtImport];

    if (legacyContentHashAtImport)
    {
      legacyContentHashAtImport2 = [(ICNote *)self legacyContentHashAtImport];
      v38 = [legacyContentHashAtImport2 dataUsingEncoding:4];
      encryptedValues4 = [v7 encryptedValues];
      [encryptedValues4 setObject:v38 forKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];
    }

    legacyImportDeviceIdentifier = [(ICNote *)self legacyImportDeviceIdentifier];

    if (legacyImportDeviceIdentifier)
    {
      legacyImportDeviceIdentifier2 = [(ICNote *)self legacyImportDeviceIdentifier];
      [v7 setObject:legacyImportDeviceIdentifier2 forKeyedSubscript:@"LegacyImportDeviceIdentifier"];
    }

    attachmentForWebThumbnail = [(ICNote *)self attachmentForWebThumbnail];
    v43 = attachmentForWebThumbnail;
    if (attachmentForWebThumbnail)
    {
      v44 = [attachmentForWebThumbnail attachmentPreviewImageWithMinSize:*MEMORY[0x277CBF3A8] scale:{*(MEMORY[0x277CBF3A8] + 8), 2.0}];
      if (v44)
      {
        managedObjectContext = [(ICNote *)self managedObjectContext];
        v46 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"FirstAttachmentThumbnail" inRecord:v7 forObject:self context:managedObjectContext];

        if (v46)
        {
          previewImageURL = [v44 previewImageURL];
          v48 = [ICCloudSyncingObject assetForURL:previewImageURL];

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

      typeUTI = [v43 typeUTI];

      if (typeUTI)
      {
        typeUTI2 = [v43 typeUTI];
        v52 = [typeUTI2 dataUsingEncoding:4];
        encryptedValues5 = [v7 encryptedValues];
        [encryptedValues5 setObject:v52 forKeyedSubscript:@"FirstAttachmentUTIEncrypted"];
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

- (void)addNoteBodyToRecord:(id)record forApproach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  stateCopy = state;
  noteData = [(ICNote *)self noteData];
  needsToBeSaved = [noteData needsToBeSaved];

  if ((needsToBeSaved & 1) == 0)
  {
    [(ICNote *)self willChangeValueForKey:@"data"];
    noteData2 = [(ICNote *)self noteData];
    [noteData2 setNeedsToBeSaved:1];

    [(ICNote *)self didChangeValueForKey:@"data"];
  }

  if (stateCopy)
  {
    data = [MEMORY[0x277CBC5A0] ic_encryptedKeyForKeyPrefix:@"TextData"];
    objc_opt_class();
    v14 = [stateCopy objectForKey:data];
    v15 = ICDynamicCast();

    if ([v15 length])
    {
      v16 = [ICTTMergeableString timestampFromData:v15];
      if (v16)
      {
        v17 = v16;
        mergeableString = [(ICNote *)self mergeableString];
        v19 = [mergeableString serializeDeltaSinceTimestamp:v17];

        if ([v19 length])
        {
          [recordCopy ic_setEncryptedInlineableDataAsset:v19 forKeyPrefix:@"TextDeltaData" approach:approach withObject:self];
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

  noteData3 = [(ICNote *)self noteData];
  data = [noteData3 data];

  if (data)
  {
    [recordCopy ic_setEncryptedInlineableDataAsset:data forKeyPrefix:@"TextData" approach:approach withObject:self];
  }

LABEL_18:

  [(ICNote *)self writeCurrentTimestampToMergeableFieldStateIfNecessary:stateCopy];
}

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  contextCopy = context;
  iDCopy = iD;
  recordName = [d recordName];
  v10 = [ICNote noteWithIdentifier:recordName accountID:iDCopy context:contextCopy];

  return v10;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  dCopy = d;
  recordCopy = record;
  v9 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:context];
  v10 = [ICNote newNoteWithoutIdentifierInAccount:v9];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [v10 setModificationDate:distantPast];

  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  [v10 setCreationDate:distantPast2];

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  [v10 setIdentifier:recordName];

  [v10 setNeedsInitialFetchFromCloud:1];
  [v10 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];

  [v10 setNeedsInitialFetchFromCloud:0];
  [v10 setServerRecord:recordCopy];
  [v10 setInCloud:1];
  [v10 clearChangeCountWithReason:@"Created note"];
  [v10 updateParentReferenceIfNecessary];
  recordType = [recordCopy recordType];

  LODWORD(recordCopy) = [recordType isEqualToString:@"PasswordProtectedNote"];
  if (recordCopy)
  {
    [v10 setIsPasswordProtected:1];
  }

  return v10;
}

+ (id)newPlaceholderObjectForRecordName:(id)name accountID:(id)d context:(id)context
{
  nameCopy = name;
  v9 = [ICAccount cloudKitAccountWithIdentifier:d context:context];
  v10 = [self newPlaceholderObjectForRecordName:nameCopy account:v9];

  return v10;
}

+ (id)newPlaceholderObjectForRecordName:(id)name account:(id)account
{
  accountCopy = account;
  nameCopy = name;
  identifier = [accountCopy identifier];
  managedObjectContext = [accountCopy managedObjectContext];
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___ICNote;
  v10 = objc_msgSendSuper2(&v12, sel_newPlaceholderObjectForRecordName_accountID_context_, nameCopy, identifier, managedObjectContext);

  [v10 setAccount:accountCopy];
  return v10;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach
{
  v35 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = ICNote;
  v5 = [(ICCloudSyncingObject *)&v32 makeUserSpecificCloudKitRecordForApproach:?];
  folder = [(ICNote *)self folder];
  recordID = [folder recordID];

  if (!recordID || ![recordID ic_isOwnedByCurrentUser])
  {
    v10 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(ICNote *)self identifier];
      *buf = 138412290;
      v34 = identifier;
      _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEFAULT, "Creating user specific note record with no folder record ID: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  folder2 = [(ICNote *)self folder];
  isTrashFolder = [folder2 isTrashFolder];

  if (isTrashFolder)
  {
    v10 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(CloudKit) makeUserSpecificCloudKitRecordForApproach:?];
    }

LABEL_8:

    goto LABEL_9;
  }

  v10 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:recordID action:0];
  [v5 setObject:v10 forKeyedSubscript:@"Folder"];
LABEL_9:

  recordID2 = [(ICCloudSyncingObject *)self recordID];
  if (recordID2)
  {
    v13 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:recordID2 action:0];
    [v5 setObject:v13 forKeyedSubscript:@"Note"];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(ICNote *)self identifier];
      *buf = 138412290;
      v34 = identifier2;
      _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEFAULT, "Creating user specific note record with no note record ID: %@", buf, 0xCu);
    }
  }

  lastViewedModificationDate = [(ICNote *)self lastViewedModificationDate];

  if (lastViewedModificationDate)
  {
    lastViewedModificationDate2 = [(ICNote *)self lastViewedModificationDate];
    [v5 setObject:lastViewedModificationDate2 forKeyedSubscript:@"LastViewedModificationDate"];
  }

  lastViewedTimestampData = [(ICNote *)self lastViewedTimestampData];
  if (lastViewedTimestampData)
  {
    [v5 setObject:lastViewedTimestampData forKeyedSubscript:@"LastViewedTimestamp"];
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

  hostApplicationIdentifier = [(ICNote *)self hostApplicationIdentifier];
  encryptedValues = [v5 encryptedValues];
  [encryptedValues setObject:hostApplicationIdentifier forKeyedSubscript:@"HostApplicationIdentifierEncrypted"];

  lastActivitySummaryViewedDate = [(ICNote *)self lastActivitySummaryViewedDate];

  if (lastActivitySummaryViewedDate)
  {
    lastActivitySummaryViewedDate2 = [(ICNote *)self lastActivitySummaryViewedDate];
    [v5 setObject:lastActivitySummaryViewedDate2 forKeyedSubscript:@"LastActivitySummaryViewedDate"];
  }

  lastActivityRecentUpdatesViewedDate = [(ICNote *)self lastActivityRecentUpdatesViewedDate];

  if (lastActivityRecentUpdatesViewedDate)
  {
    lastActivityRecentUpdatesViewedDate2 = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
    [v5 setObject:lastActivityRecentUpdatesViewedDate2 forKeyedSubscript:@"LastActivityRecentUpdatesViewedDate"];
  }

  lastAttributionsViewedDate = [(ICNote *)self lastAttributionsViewedDate];

  if (lastAttributionsViewedDate)
  {
    lastAttributionsViewedDate2 = [(ICNote *)self lastAttributionsViewedDate];
    [v5 setObject:lastAttributionsViewedDate2 forKeyedSubscript:@"LastAttributionsViewedDate"];
  }

  outlineStateData = [(ICNote *)self outlineStateData];

  if (outlineStateData)
  {
    outlineStateData2 = [(ICNote *)self outlineStateData];
    [v5 ic_setEncryptedInlineableDataAsset:outlineStateData2 forKeyPrefix:@"OutlineState" approach:approach withObject:self];
  }

  return v5;
}

- (BOOL)mergeDataFromUserSpecificRecord:(id)record accountID:(id)d
{
  v69 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  v62.receiver = self;
  v62.super_class = ICNote;
  LODWORD(v8) = [(ICCloudSyncingObject *)&v62 mergeDataFromUserSpecificRecord:recordCopy accountID:dCopy];
  if (v8)
  {
    v9 = [recordCopy objectForKeyedSubscript:@"Folder"];
    if (v9 && [(ICCloudSyncingObject *)self isSharedViaICloud])
    {
      recordID = [v9 recordID];
      managedObjectContext = [(ICNote *)self managedObjectContext];
      v12 = [ICFolder existingCloudObjectForRecordID:recordID accountID:dCopy context:managedObjectContext];

      if (!v12)
      {
        recordID2 = [v9 recordID];
        recordName = [recordID2 recordName];
        [(ICNote *)self managedObjectContext];
        v16 = v15 = dCopy;
        v12 = [ICFolder newPlaceholderObjectForRecordName:recordName accountID:v15 context:v16];

        dCopy = v15;
      }

      v17 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v12 identifier];
        identifier2 = [(ICNote *)self identifier];
        *buf = 138412802;
        v64 = identifier;
        v65 = 2112;
        v66 = dCopy;
        v67 = 2112;
        v68 = identifier2;
        _os_log_debug_impl(&dword_214D51000, v17, OS_LOG_TYPE_DEBUG, "Setting folder %@ in account %@ to note %@ from user specific record.", buf, 0x20u);
      }

      [(ICNote *)self setFolder:v12];
    }

    v18 = [recordCopy objectForKeyedSubscript:@"LastViewedModificationDate"];
    if (v18)
    {
      lastViewedModificationDate = [(ICNote *)self lastViewedModificationDate];
      v20 = [lastViewedModificationDate ic_isEarlierThanDate:v18];

      if (v20)
      {
        [(ICNote *)self setLastViewedModificationDate:v18];
      }
    }

    v21 = [recordCopy objectForKeyedSubscript:@"LastViewedTimestamp"];
    if (v21)
    {
      v22 = [[ICTTVectorMultiTimestamp alloc] initWithData:v21 andCapacity:2];
      lastViewedTimestamp = [(ICNote *)self lastViewedTimestamp];

      if (!lastViewedTimestamp || (-[ICNote lastViewedTimestamp](self, "lastViewedTimestamp"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 compareTo:v22], v24, (v25 & 1) != 0))
      {
        [(ICNote *)self setLastViewedTimestamp:v22];
      }
    }

    v26 = [recordCopy objectForKeyedSubscript:@"IsPinned"];
    v27 = v26;
    if (v26)
    {
      -[ICNote setIsPinned:](self, "setIsPinned:", [v26 BOOLValue]);
    }

    v58 = v27;
    v28 = [recordCopy objectForKeyedSubscript:@"IsSystemPaper"];
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
    encryptedValues = [recordCopy encryptedValues];
    v31 = [encryptedValues objectForKeyedSubscript:@"HostApplicationIdentifierEncrypted"];
    [(ICNote *)self setHostApplicationIdentifier:v31];

    v32 = [recordCopy objectForKeyedSubscript:@"LastActivitySummaryViewedDate"];
    if (v32)
    {
      lastActivitySummaryViewedDate = [(ICNote *)self lastActivitySummaryViewedDate];
      if (!lastActivitySummaryViewedDate || (v34 = lastActivitySummaryViewedDate, -[ICNote lastActivitySummaryViewedDate](self, "lastActivitySummaryViewedDate"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v32 ic_isLaterThanDate:v35], v35, v34, v36))
      {
        [(ICNote *)self setLastActivitySummaryViewedDate:v32];
      }
    }

    v37 = [recordCopy objectForKeyedSubscript:@"LastActivityRecentUpdatesViewedDate"];
    if (v37)
    {
      lastActivityRecentUpdatesViewedDate = [(ICNote *)self lastActivityRecentUpdatesViewedDate];
      if (!lastActivityRecentUpdatesViewedDate || (v39 = lastActivityRecentUpdatesViewedDate, -[ICNote lastActivityRecentUpdatesViewedDate](self, "lastActivityRecentUpdatesViewedDate"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v37 ic_isLaterThanDate:v40], v40, v39, v41))
      {
        [(ICNote *)self setLastActivityRecentUpdatesViewedDate:v37];
      }
    }

    v42 = [recordCopy objectForKeyedSubscript:@"LastAttributionsViewedDate"];
    if (v42)
    {
      lastAttributionsViewedDate = [(ICNote *)self lastAttributionsViewedDate];
      if (!lastAttributionsViewedDate || (v44 = lastAttributionsViewedDate, -[ICNote lastAttributionsViewedDate](self, "lastAttributionsViewedDate"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v42 ic_isLaterThanDate:v45], v45, v44, v46))
      {
        [(ICNote *)self setLastAttributionsViewedDate:v42];
      }
    }

    v47 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"OutlineState"];
    if (v47)
    {
      v56 = v8;
      v8 = dCopy;
      v48 = [[ICOutlineState alloc] initWithData:v47];
      outlineState = [(ICNote *)self outlineState];
      v50 = [outlineState mergeWithState:v48];

      if (v50)
      {
        outlineState2 = [(ICNote *)self outlineState];
        data = [outlineState2 data];
        [(ICNote *)self setOutlineStateData:data];
      }

      dCopy = v8;
      LOBYTE(v8) = v56;
    }
  }

  return v8;
}

- (BOOL)hasExpectedReferenceActionsInUserSpecificRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  v4 = [recordCopy objectForKeyedSubscript:@"Folder"];
  v5 = ICDynamicCast();

  objc_opt_class();
  v6 = [recordCopy objectForKeyedSubscript:@"Note"];

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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ICNote_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __37__ICNote_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) folder];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isInICloudAccount];
}

- (void)fixBrokenReferencesWithError:(id)error
{
  v75 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
    *buf = 138412290;
    v68 = loggingDescription;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Fixing broken references for %@", buf, 0xCu);
  }

  v6 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    folder = [(ICNote *)self folder];
    loggingDescription2 = [folder loggingDescription];
    *buf = 138412546;
    v68 = shortLoggingDescription;
    v69 = 2112;
    v70 = loggingDescription2;
    _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Folder for %@: %@", buf, 0x16u);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
  attachments = [(ICNote *)self attachments];
  v11 = [attachments countByEnumeratingWithState:&v63 objects:v74 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v15 = *(*(&v63 + 1) + 8 * i);
        v16 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          shortLoggingDescription2 = [(ICCloudSyncingObject *)selfCopy shortLoggingDescription];
          loggingDescription3 = [v15 loggingDescription];
          *buf = 138412546;
          v68 = shortLoggingDescription2;
          v69 = 2112;
          v70 = loggingDescription3;
          _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "Attachment for %@: %@", buf, 0x16u);
        }
      }

      v12 = [attachments countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v12);
  }

  v19 = selfCopy;
  if ([(ICNote *)selfCopy markedForDeletion])
  {
    [(ICCloudSyncingObject *)selfCopy findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:errorCopy];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    attachments2 = [(ICNote *)selfCopy attachments];
    v21 = [attachments2 countByEnumeratingWithState:&v59 objects:v73 count:16];
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
            objc_enumerationMutation(attachments2);
          }

          v28 = *(*(&v59 + 1) + 8 * v27);
          if (([v28 markedForDeletion] & 1) == 0)
          {
            v29 = os_log_create(v24, v25);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              [(ICNote *)v19 identifier];
              v30 = v23;
              v31 = attachments2;
              v32 = v26;
              v33 = v25;
              v35 = v34 = v24;
              identifier = [v28 identifier];
              *buf = 138412546;
              v68 = v35;
              v69 = 2112;
              v70 = identifier;
              _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Found a deleted note (%@) with an undeleted attachment (%@)", buf, 0x16u);

              v19 = selfCopy;
              v24 = v34;
              v25 = v33;
              v26 = v32;
              attachments2 = v31;
              v23 = v30;
              v22 = v57;
            }

            [*(v26 + 2456) deleteAttachment:v28];
          }

          ++v27;
        }

        while (v22 != v27);
        v22 = [attachments2 countByEnumeratingWithState:&v59 objects:v73 count:16];
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

      serverShare = [(ICCloudSyncingObject *)v19 serverShare];
      if (serverShare)
      {
      }

      else
      {
        serverRecord = [(ICCloudSyncingObject *)v19 serverRecord];
        share = [serverRecord share];

        if (!share)
        {
          goto LABEL_36;
        }
      }

      [(ICCloudSyncingObject *)v19 setServerShare:0];
    }

    [(ICCloudSyncingObject *)v19 setNeedsToBeFetchedFromCloud:1];
  }

LABEL_36:
  folder2 = [(ICNote *)v19 folder];
  markedForDeletion = [folder2 markedForDeletion];

  if (markedForDeletion)
  {
    folder3 = [(ICNote *)v19 folder];
    [folder3 unmarkForDeletion];
  }

  folder4 = [(ICNote *)v19 folder];
  needsInitialFetchFromCloud = [folder4 needsInitialFetchFromCloud];

  if (needsInitialFetchFromCloud)
  {
    v45 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(ICNote *)v19 identifier];
      account = [(ICNote *)v19 account];
      identifier3 = [account identifier];
      account2 = [(ICNote *)v19 account];
      trashFolder = [account2 trashFolder];
      identifier4 = [trashFolder identifier];
      *buf = 138412802;
      v68 = identifier2;
      v69 = 2112;
      v70 = identifier3;
      v71 = 2112;
      v72 = identifier4;
      _os_log_impl(&dword_214D51000, v45, OS_LOG_TYPE_DEFAULT, "Moving note %@ in account %@ to trash folder %@ since folder doesn't exist on server.", buf, 0x20u);

      v19 = selfCopy;
    }

    account3 = [(ICNote *)v19 account];
    trashFolder2 = [account3 trashFolder];
    [(ICNote *)v19 setFolder:trashFolder2];

    date = [MEMORY[0x277CBEAA8] date];
    [(ICNote *)v19 setFolderModificationDate:date];

    [(ICNote *)v19 updateChangeCountWithReason:@"Fixed broken reference"];
  }

  else
  {
    folder5 = [(ICNote *)v19 folder];
    [folder5 updateChangeCountWithReason:@"Fixed broken reference"];
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

  noteData = [(ICNote *)self noteData];
  data = [noteData data];
  if (data)
  {
    folder = [(ICNote *)self folder];
    v6 = folder != 0;
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
          folder = [(ICNote *)self folder];
          markedForDeletion = [folder markedForDeletion];

          if (markedForDeletion)
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
  objectsToBeDeletedBeforeThisObject = [(ICCloudSyncingObject *)&v9 objectsToBeDeletedBeforeThisObject];
  v4 = [objectsToBeDeletedBeforeThisObject mutableCopy];

  attachments = [(ICNote *)self attachments];
  allObjects = [attachments allObjects];
  [v4 addObjectsFromArray:allObjects];

  v7 = [v4 copy];

  return v7;
}

- (int64_t)mergePolicyForRecord:(id)record
{
  v74 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (([(ICNote *)self needsInitialFetchFromCloud]& 1) == 0)
  {
    v6 = [recordCopy objectForKeyedSubscript:@"LegacyModificationDateAtImport"];
    legacyModificationDateAtImport = [(ICNote *)self legacyModificationDateAtImport];

    if ((v6 != 0) != (legacyModificationDateAtImport != 0))
    {
      v8 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v63 = v6;
        recordID = [(ICCloudSyncingObject *)self recordID];
        recordName = [recordID recordName];
        legacyContentHashAtImport = [(ICNote *)self legacyContentHashAtImport];
        encryptedValues = [recordCopy encryptedValues];
        v14 = [encryptedValues objectForKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];
        ic_stringValue = [v14 ic_stringValue];
        v16 = ic_stringValue;
        if (!ic_stringValue)
        {
          v16 = [recordCopy objectForKeyedSubscript:@"LegacyContentHashAtImport"];
        }

        legacyModificationDateAtImport2 = [(ICNote *)self legacyModificationDateAtImport];
        *buf = 138413314;
        v65 = recordName;
        v66 = 2112;
        v67 = legacyContentHashAtImport;
        v68 = 2112;
        v69 = v16;
        v70 = 2112;
        v71 = legacyModificationDateAtImport2;
        v72 = 2112;
        v73 = v63;
        _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Duplicating a note received from the cloud because they're not both legacy notes: (%@)\n\tlegacyContentHashAtImport:\t\t%@\n\totherLegacyContentHashAtImport:\t%@\n\tlegacyModificationDateAtImport:\t%@\n\totherLegacyModificationDateAtImport:\t%@", buf, 0x34u);

        if (!ic_stringValue)
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

    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    if (serverRecord)
    {
      v20 = serverRecord;
      v21 = v6 | legacyModificationDateAtImport;
      creationDate = [recordCopy creationDate];
      serverRecord2 = [(ICCloudSyncingObject *)self serverRecord];
      creationDate2 = [serverRecord2 creationDate];
      v25 = [creationDate isEqualToDate:creationDate2];

      if (v21)
      {
        v26 = v25 ^ 1;
LABEL_16:
        v18 = [recordCopy objectForKeyedSubscript:@"LegacyImportDeviceIdentifier"];
        legacyImportDeviceIdentifier = [(ICNote *)self legacyImportDeviceIdentifier];
        v28 = [legacyImportDeviceIdentifier isEqualToString:v18];

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
            identifier = [(ICNote *)self identifier];
            *buf = 138412290;
            v65 = identifier;
            _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Found a legacy note (%@) in the cloud with a record whose creation date is not equal to our own cached version. Replacing our own version with the one in the cloud.", buf, 0xCu);
          }

          v5 = 1;
          v8 = v29;
          goto LABEL_65;
        }

        encryptedValues2 = [recordCopy encryptedValues];
        v32 = [encryptedValues2 objectForKeyedSubscript:@"LegacyContentHashAtImportEncrypted"];
        ic_stringValue2 = [v32 ic_stringValue];

        v62 = v18;
        if (ic_stringValue2)
        {
          goto LABEL_24;
        }

        v50 = [recordCopy objectForKeyedSubscript:@"LegacyContentHashAtImport"];

        if (!v50)
        {
          v60 = 0;
          ic_stringValue2 = 0;
          goto LABEL_25;
        }

        ic_stringValue2 = [recordCopy objectForKeyedSubscript:@"LegacyContentHashAtImport"];
        if (ic_stringValue2)
        {
LABEL_24:
          legacyContentHashAtImport2 = [(ICNote *)self legacyContentHashAtImport];
          v60 = [legacyContentHashAtImport2 isEqualToString:ic_stringValue2];
        }

        else
        {
          v60 = 0;
        }

LABEL_25:
        legacyModificationDateAtImport3 = [(ICNote *)self legacyModificationDateAtImport];
        v57 = [legacyModificationDateAtImport3 isEqualToDate:v6];

        v61 = [recordCopy objectForKeyedSubscript:@"ModificationDate"];
        v59 = [v61 isEqualToDate:v6];
        modificationDate = [(ICCloudSyncingObject *)self modificationDate];
        legacyModificationDateAtImport4 = [(ICNote *)self legacyModificationDateAtImport];
        v58 = [modificationDate isEqualToDate:legacyModificationDateAtImport4];

        v38 = MEMORY[0x277CCACA8];
        recordID2 = [(ICCloudSyncingObject *)self recordID];
        recordName2 = [recordID2 recordName];
        legacyContentHashAtImport3 = [(ICNote *)self legacyContentHashAtImport];
        legacyModificationDateAtImport5 = [(ICNote *)self legacyModificationDateAtImport];
        v43 = [v38 stringWithFormat:@"(%@)\n\tlegacyContentHashAtImport:\t\t%@\n\totherLegacyContentHashAtImport:\t%@\n\tlegacyModificationDateAtImport:\t%@\n\totherLegacyModificationDateAtImport:\t%@", recordName2, legacyContentHashAtImport3, ic_stringValue2, legacyModificationDateAtImport5, v6];

        if (v60 & 1) != 0 || (v57)
        {
          v48 = v59 ^ 1;
          if (((v58 ^ 1) & 1) == 0 && (v48 & 1) == 0)
          {
            v47 = os_log_create("com.apple.notes", "Cloud");
            v18 = v62;
            v8 = ic_stringValue2;
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
          v8 = ic_stringValue2;
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
          legacyModificationDateAtImport6 = [(ICNote *)self legacyModificationDateAtImport];
          v46 = [legacyModificationDateAtImport6 ic_isLaterThanDate:v6] & v59;

          if (v46 == 1)
          {
            v47 = os_log_create("com.apple.notes", "Cloud");
            v18 = v62;
            v8 = ic_stringValue2;
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

          legacyModificationDateAtImport7 = [(ICNote *)self legacyModificationDateAtImport];
          v54 = [legacyModificationDateAtImport7 ic_isEarlierThanDate:v6] & v58;

          v47 = os_log_create("com.apple.notes", "Cloud");
          v55 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          v18 = v62;
          v8 = ic_stringValue2;
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

    else if (v6 | legacyModificationDateAtImport)
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

- (void)deduplicateSelfAndCreateNewObjectFromRecord:(id)record
{
  v19 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  identifier = [(ICNote *)self identifier];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(ICNote *)self setIdentifier:uUIDString];

  [(ICNote *)self setLegacyContentHashAtImport:0];
  [(ICNote *)self setLegacyImportDeviceIdentifier:0];
  [(ICNote *)self setLegacyModificationDateAtImport:0];
  [(ICCloudSyncingObject *)self setInCloud:0];
  [(ICCloudSyncingObject *)self clearServerRecords];
  [(ICCloudSyncingObject *)self unsafelyUpdateChangeCountWithReason:@"De-duplicated from record"];
  account = [(ICNote *)self account];
  identifier2 = [account identifier];

  v10 = objc_opt_class();
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v12 = [v10 newCloudObjectForRecord:recordCopy accountID:identifier2 context:managedObjectContext];

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    identifier3 = [(ICNote *)self identifier];
    v15 = 138412546;
    v16 = identifier;
    v17 = 2112;
    v18 = identifier3;
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
  attributedString = [(ICNote *)self attributedString];
  managedObjectContext = [(ICNote *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ICNote_CloudKit__attachmentForWebThumbnail__block_invoke;
  v7[3] = &unk_278195380;
  v7[4] = &v8;
  [attributedString ic_enumerateAttachmentsInContext:managedObjectContext usingBlock:v7];

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

+ (BOOL)didShowExceededStorageQuotaAlertForNoteWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CBEBD0];
  identifierCopy = identifier;
  standardUserDefaults = [v3 standardUserDefaults];
  v6 = [standardUserDefaults arrayForKey:@"ICDidShowExceededStorageQuotaAlertForNote"];

  LOBYTE(standardUserDefaults) = [v6 containsObject:identifierCopy];
  return standardUserDefaults;
}

+ (void)setDidShowExceededStorageQuotaAlert:(BOOL)alert forNoteWithIdentifier:(id)identifier
{
  alertCopy = alert;
  identifierCopy = identifier;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults arrayForKey:@"ICDidShowExceededStorageQuotaAlertForNote"];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    array = v7;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v10 = array;

  v11 = [v10 containsObject:identifierCopy];
  if (alertCopy)
  {
    if (v11)
    {
      goto LABEL_10;
    }

    [v10 addObject:identifierCopy];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    [v10 removeObjectAtIndex:{objc_msgSend(v10, "indexOfObject:", identifierCopy)}];
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [v10 copy];
  [standardUserDefaults2 setObject:v13 forKey:@"ICDidShowExceededStorageQuotaAlertForNote"];

LABEL_10:
}

- (NSString)folderManagedIdentifier
{
  folder = [(ICNote *)self folder];
  identifier = [folder identifier];

  return identifier;
}

- (NSString)folderName
{
  folder = [(ICNote *)self folder];
  localizedTitle = [folder localizedTitle];

  return localizedTitle;
}

- (NSString)folderNameForNoteList
{
  folderName = [(ICNote *)self folderName];
  if ([(ICNote *)self isSharedViaICloudFolder]&& [(ICNote *)self isDeletedOrInTrash])
  {
    folder = [(ICNote *)self folder];
    rootSharingFolder = [folder rootSharingFolder];
    localizedTitle = [rootSharingFolder localizedTitle];

    folderName = localizedTitle;
  }

  return folderName;
}

- (NSString)accountName
{
  folder = [(ICNote *)self folder];
  account = [folder account];
  localizedName = [account localizedName];

  return localizedName;
}

- (NSString)trimmedTitle
{
  title = [(ICNote *)self title];
  v3 = title;
  v4 = &stru_2827172C0;
  if (title)
  {
    v4 = title;
  }

  ic_whitespaceAndNewlineCoalescedString = v4;

  if ([(__CFString *)ic_whitespaceAndNewlineCoalescedString length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [(__CFString *)ic_whitespaceAndNewlineCoalescedString stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    ic_whitespaceAndNewlineCoalescedString = [v7 ic_whitespaceAndNewlineCoalescedString];
  }

  return ic_whitespaceAndNewlineCoalescedString;
}

- (NSAttributedString)trimmedAttributedTitle
{
  attributedTitle = [(ICNote *)self attributedTitle];
  if ([attributedTitle length])
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v4 = [attributedTitle ic_attributedStringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    attributedTitle = [v4 ic_whitespaceAndNewlineCoalescedAttributedString];
  }

  return attributedTitle;
}

- (BOOL)isHiddenFromIndexing
{
  if (([(ICNote *)self isDeleted]& 1) != 0 || ([(ICNote *)self markedForDeletion]& 1) != 0 || [(ICCloudSyncingObject *)self isUnsupported]|| ([(ICNote *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    return 1;
  }

  folder = [(ICNote *)self folder];
  account = [folder account];
  v3 = account == 0;

  return v3;
}

- (NSArray)authorsExcludingCurrentUser
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  participants = [serverShareCheckingParent participants];

  v6 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(participants);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isCurrentUser] & 1) == 0)
        {
          userIdentity = [v10 userIdentity];
          nameComponents = [userIdentity nameComponents];

          if (nameComponents)
          {
            [array addObject:nameComponents];
          }
        }
      }

      v7 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)searchableString
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([(ICNote *)self uiAttributedString], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    attributedString = [(ICNote *)self attributedString];
    v5 = attributedString;
    if (attributedString)
    {
      v6 = attributedString;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CCA898]);
    }

    v3 = v6;
  }

  managedObjectContext = [(ICNote *)self managedObjectContext];
  v8 = [v3 ic_searchableStringInContext:managedObjectContext];

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
  isSharedViaICloud = [(ICCloudSyncingObject *)self isSharedViaICloud];
  if (isSharedViaICloud)
  {
    LOBYTE(isSharedViaICloud) = ![(ICCloudSyncingObject *)self isSharedRootObject];
  }

  return isSharedViaICloud;
}

- (NSString)searchIndexingIdentifier
{
  objectID = [(ICNote *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (NSString)searchDomainIdentifier
{
  account = [(ICNote *)self account];
  identifier = [account identifier];

  return identifier;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
  creationDate = [(ICCloudSyncingObject *)self creationDate];
  [v3 setContentCreationDate:creationDate];

  modificationDate = [(ICCloudSyncingObject *)self modificationDate];
  [v3 setContentModificationDate:modificationDate];

  title = [(ICNote *)self title];
  [v3 setDisplayName:title];

  return v3;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  selfCopy = self;
  v96[7] = *MEMORY[0x277D85DE8];
  userActivityContentAttributeSet = [(ICNote *)self userActivityContentAttributeSet];
  [userActivityContentAttributeSet setDataOwnerType:&unk_282747EE0];
  v96[0] = @"com.apple.notes.richtext";
  identifier = [*MEMORY[0x277CE1D78] identifier];
  v96[1] = identifier;
  identifier2 = [*MEMORY[0x277CE1ED8] identifier];
  v96[2] = identifier2;
  identifier3 = [*MEMORY[0x277CE1DA0] identifier];
  v96[3] = identifier3;
  identifier4 = [*MEMORY[0x277CE1E50] identifier];
  v96[4] = identifier4;
  identifier5 = [*MEMORY[0x277CE1EB0] identifier];
  v96[5] = identifier5;
  v96[6] = @"com.apple.notes.noteitemprovider";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:7];
  [userActivityContentAttributeSet setProviderDataTypes:v9];

  v72 = userActivityContentAttributeSet;
  v73 = selfCopy;
  if (([(ICNote *)selfCopy isPasswordProtected]& 1) == 0)
  {
    searchableString = [(ICNote *)selfCopy searchableString];
    string = [searchableString string];
    v12 = [string mutableCopy];

    v71 = searchableString;
    v69 = [MEMORY[0x277D36228] titleForAttributedContent:searchableString truncated:0 attributedTitleIfNecessary:0];
    v13 = [MEMORY[0x277D36228] stringByRemovingTitle:? fromString:?];
    v14 = [MEMORY[0x277D36228] snippetForContent:v13];

    v68 = v14;
    [userActivityContentAttributeSet setContentDescription:v14];
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    attachments = [(ICNote *)selfCopy attachments];
    v16 = [attachments countByEnumeratingWithState:&v88 objects:v95 count:16];
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
            objc_enumerationMutation(attachments);
          }

          attachmentModel = [*(*(&v88 + 1) + 8 * i) attachmentModel];
          additionalIndexableTextContentInNote = [attachmentModel additionalIndexableTextContentInNote];

          if (additionalIndexableTextContentInNote)
          {
            [v12 appendString:additionalIndexableTextContentInNote];
          }
        }

        v17 = [attachments countByEnumeratingWithState:&v88 objects:v95 count:16];
      }

      while (v17);
    }

    v70 = v12;
    [userActivityContentAttributeSet setTextContent:v12];
    v22 = [MEMORY[0x277CBEB58] set];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    attachments2 = [(ICNote *)v73 attachments];
    v24 = [attachments2 countByEnumeratingWithState:&v84 objects:v94 count:16];
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
            objc_enumerationMutation(attachments2);
          }

          v28 = *(*(&v84 + 1) + 8 * j);
          typeUTI = [v28 typeUTI];

          if (typeUTI)
          {
            v30 = MEMORY[0x277CE1CB8];
            typeUTI2 = [v28 typeUTI];
            v32 = [v30 typeWithIdentifier:typeUTI2];
            supertypes = [v32 supertypes];
            v34 = [supertypes ic_map:&__block_literal_global_71];

            [v22 unionSet:v34];
          }
        }

        v25 = [attachments2 countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v25);
    }

    if ([v22 count])
    {
      allObjects = [v22 allObjects];
      [userActivityContentAttributeSet setAttachmentTypes:allObjects];
    }

    selfCopy = v73;
  }

  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  visibleInlineAttachments = [(ICNote *)selfCopy visibleInlineAttachments];
  v38 = [visibleInlineAttachments countByEnumeratingWithState:&v80 objects:v93 count:16];
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
          objc_enumerationMutation(visibleInlineAttachments);
        }

        v42 = *(*(&v80 + 1) + 8 * k);
        if ([v42 attachmentType] == 1)
        {
          displayText = [v42 displayText];
          ic_hashtagDisplayText = [displayText ic_hashtagDisplayText];

          folder = [(ICNote *)selfCopy folder];
          account = [folder account];
          v47 = [ICHashtag hashtagWithDisplayText:ic_hashtagDisplayText account:account createIfNecessary:0];

          if (v47)
          {
            [v36 ic_addNonNilObject:ic_hashtagDisplayText];
          }

          selfCopy = v73;
        }
      }

      v39 = [visibleInlineAttachments countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v39);
  }

  if ([v36 count])
  {
    allObjects2 = [v36 allObjects];
    [v72 setHashtags:allObjects2];
  }

  [(ICNote *)selfCopy addShareParticipantsToAttributeSet:v72];
  [(ICCloudSyncingObject *)selfCopy addEmailAddressesAndPhoneNumbersToAttributeSet:v72];
  [v72 setIc_searchResultType:0];
  [v72 ic_populateValuesForSpecializedFields];
  [v72 setIc_isLocked:{-[ICNote isPasswordProtected](selfCopy, "isPasswordProtected")}];
  [v72 setIc_isShared:{-[ICCloudSyncingObject isSharedViaICloud](selfCopy, "isSharedViaICloud")}];
  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudSyncingObject isSharedViaICloud](selfCopy, "isSharedViaICloud")}];
  [v72 setShared:v49];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote isPinned](selfCopy, "isPinned")}];
  [v72 setPinned:v50];

  v51 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICNote isDeletedOrInTrash](selfCopy, "isDeletedOrInTrash")}];
  [v72 setTrashed:v51];

  if ([(ICNote *)selfCopy isPasswordProtected])
  {
    [v72 setIc_hasChecklists:0];
    [v72 setIc_hasTags:0];
    [v72 setIc_hasDrawings:0];
    [v72 setIc_hasScannedDocuments:0];
    [v72 setIc_hasAttachments:0];
  }

  else
  {
    attributedString = [(ICNote *)selfCopy attributedString];
    v53 = [attributedString length];

    attributedString2 = [(ICNote *)selfCopy attributedString];
    v55 = ICTTAttributeNameParagraphStyle;
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __57__ICNote_SearchIndexableNote__searchableItemAttributeSet__block_invoke_2;
    v78[3] = &unk_278197B70;
    v56 = v72;
    v79 = v56;
    [attributedString2 enumerateAttribute:v55 inRange:0 options:v53 usingBlock:{0, v78}];

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    visibleAttachments = [(ICNote *)selfCopy visibleAttachments];
    v58 = [visibleAttachments countByEnumeratingWithState:&v74 objects:v92 count:16];
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
          objc_enumerationMutation(visibleAttachments);
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
          v63 = [visibleAttachments countByEnumeratingWithState:&v74 objects:v92 count:16];
          v59 = v63;
          if (v63)
          {
            goto LABEL_40;
          }

          break;
        }
      }
    }

    [v56 setIc_hasTags:{-[ICNote hasTags](selfCopy, "hasTags")}];
  }

  accountName = [(ICNote *)selfCopy accountName];
  [v72 setIc_accountName:accountName];

  folderNameForNoteList = [(ICNote *)selfCopy folderNameForNoteList];
  [v72 setIc_folderName:folderNameForNoteList];

  if (objc_opt_respondsToSelector())
  {
    searchableItemViewAttributeSet = [(ICNote *)selfCopy searchableItemViewAttributeSet];
    [v72 addAttributesFromAttributeSet:searchableItemViewAttributeSet];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICNote *)selfCopy associateAppEntityWithSearchableItemAttributeSet:v72];
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

- (id)csPersonForShareParticipant:(id)participant
{
  if (participant)
  {
    ic_localizedNameWithDefaultFormattingStyle = [participant ic_localizedNameWithDefaultFormattingStyle];
    v4 = objc_alloc(MEMORY[0x277CC3450]);
    v5 = [v4 initWithDisplayName:ic_localizedNameWithDefaultFormattingStyle handles:MEMORY[0x277CBEBF8] handleIdentifier:&stru_2827172C0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addShareParticipantsToAttributeSet:(id)set
{
  v23[1] = *MEMORY[0x277D85DE8];
  setCopy = set;
  serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  if (serverShareCheckingParent)
  {
    [setCopy setShared:MEMORY[0x277CBEC38]];
    owner = [serverShareCheckingParent owner];
    userIdentity = [owner userIdentity];
    nameComponents = [userIdentity nameComponents];
    v8 = [(ICNote *)self csPersonForShareParticipant:nameComponents];

    if (v8)
    {
      v23[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      [setCopy setAuthors:v9];
    }

    array = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    authorsExcludingCurrentUser = [(ICNote *)self authorsExcludingCurrentUser];
    v12 = [authorsExcludingCurrentUser countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(authorsExcludingCurrentUser);
          }

          v16 = [(ICNote *)self csPersonForShareParticipant:*(*(&v18 + 1) + 8 * i)];
          if (v16)
          {
            [array addObject:v16];
          }
        }

        v13 = [authorsExcludingCurrentUser countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    if ([array count])
    {
      [setCopy setPrimaryRecipients:array];
    }
  }

  else
  {
    [setCopy setShared:MEMORY[0x277CBEC28]];
  }
}

- (BOOL)hasTags
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  visibleInlineAttachments = [(ICNote *)self visibleInlineAttachments];
  v3 = [visibleInlineAttachments countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(visibleInlineAttachments);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 isHashtagAttachment])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [visibleInlineAttachments countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (id)additionalSearchIndexablesForChangedKeys:(id)keys
{
  keysCopy = keys;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CBEB98] setWithObjects:{@"needsInitialFetchFromCloud", @"markedForDeletion", 0}];
  v7 = [keysCopy intersectsSet:v6];

  if (v7)
  {
    attachments = [(ICNote *)self attachments];
    v9 = [attachments copy];
    [v5 ic_addObjectsFromNonNilArray:v9];
  }

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"folder", @"isSystemPaper", 0}];
  v11 = [keysCopy intersectsSet:v10];

  if (v11)
  {
    attachments2 = [(ICNote *)self attachments];
    v13 = [attachments2 ic_objectsPassingTest:&__block_literal_global_71];

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

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  ICNote.associateAppEntity(with:)(setCopy);
}

- (BOOL)objc_hasRecentExternalEdits
{
  selfCopy = self;
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
  lastViewedModificationDate = [OUTLINED_FUNCTION_4() lastViewedModificationDate];
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
  ic_loggingIdentifier = [self ic_loggingIdentifier];
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
  ic_loggingDescription = [self ic_loggingDescription];
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
  objectID = [self objectID];
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