@interface ICAttachment
+ (BOOL)isPathExtensionSupportedForPasswordProtectedNotes:(id)a3;
+ (BOOL)isTypeUTISupportedForPasswordProtectedNotes:(id)a3;
+ (BOOL)isTypeUTISupportedForWatch:(id)a3;
+ (BOOL)typeUTIIsDrawing:(id)a3;
+ (BOOL)typeUTIIsImage:(id)a3;
+ (BOOL)typeUTIIsInlineDrawing:(id)a3;
+ (BOOL)typeUTIIsPlayableAudio:(id)a3;
+ (BOOL)typeUTIIsPlayableMovie:(id)a3;
+ (NSPredicate)predicateForAllPaperKitBackedAttachments;
+ (NSPredicate)predicateForOutdatedOrMissingHandwritingSummary;
+ (id)attachmentIdentifiersForAccount:(id)a3;
+ (id)attachmentSectionSortOrder;
+ (id)attachmentTypeUTIsToHideFromAttachmentBrowser;
+ (id)defaultTitleForAttachmentType:(signed __int16)a3;
+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)fallbackImageContainerURLForIdentifier:(id)a3 account:(id)a4;
+ (id)fallbackImageEncryptedFallbackURLForIdentifier:(id)a3 account:(id)a4;
+ (id)fallbackImageFallbackURLForIdentifier:(id)a3 account:(id)a4;
+ (id)fallbackPDFContainerURLForIdentifier:(id)a3 account:(id)a4;
+ (id)fallbackPDFEncryptedFallbackURLForIdentifier:(id)a3 account:(id)a4;
+ (id)fallbackPDFFallbackURLForIdentifier:(id)a3 account:(id)a4;
+ (id)filenameExtensionForUTI:(id)a3;
+ (id)filenameFromUTI:(id)a3;
+ (id)isBeingEditedLocallyOnDeviceSet;
+ (id)keyPathsForValuesAffectingIsSharedViaICloud;
+ (id)mentionNotificationSnippetForAttachmentType:(signed __int16)a3;
+ (id)mergeableWallClockValueKeyPaths;
+ (id)mimeTypeFromUTI:(id)a3;
+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)newFetchRequestForAttachments;
+ (id)noteFromAttachmentRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)noteFromAttachmentUserSpecificRecord:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)predicateForAttachmentBrowserWithContext:(id)a3;
+ (id)predicateForInlineDrawing;
+ (id)predicateForPasswordProtected:(BOOL)a3;
+ (id)predicateForSearchableAttachmentsInContext:(id)a3;
+ (id)predicateForVisibleAttachmentsWithTypeUTI:(id)a3 inContext:(id)a4;
+ (id)temporaryPaperBundleURLForIdentifier:(id)a3 account:(id)a4;
+ (signed)sectionFromTypeUTI:(id)a3 url:(id)a4;
+ (unint64_t)countOfAttachmentsMatchingPredicate:(id)a3 context:(id)a4;
+ (void)addPreviewImages:(id)a3 toRecord:(id)a4;
+ (void)deleteAttachment:(id)a3;
+ (void)enumerateAttachmentsInContext:(id)a3 batchSize:(unint64_t)a4 visibleOnly:(BOOL)a5 saveAfterBatch:(BOOL)a6 usingBlock:(id)a7;
+ (void)initialize;
+ (void)purgeAttachment:(id)a3;
+ (void)purgeAttachmentFilesForIdentifiers:(id)a3 account:(id)a4;
+ (void)purgeHandwritingSummariesInContext:(id)a3;
+ (void)undeleteAttachment:(id)a3;
- (BOOL)checkPreviewImagesIntegrity;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasAnyPNGPreviewImageFiles;
- (BOOL)hasCroppingQuad;
- (BOOL)hasDeepLink;
- (BOOL)hasFallbackImage;
- (BOOL)hasFallbackPDF;
- (BOOL)hasImageFilterType;
- (BOOL)hasMetadata;
- (BOOL)hasOrientation;
- (BOOL)hasSynapseLink;
- (BOOL)hasUnfetchedAssetForRecordKey:(id)a3;
- (BOOL)hasUnfetchedLinkPresentationMetadata;
- (BOOL)hasVisibleInlineAttachments;
- (BOOL)hasVisualFallbackMedia;
- (BOOL)isAppStore;
- (BOOL)isBeingEditedLocallyOnDevice;
- (BOOL)isChildOfDocumentGallery;
- (BOOL)isDeletedOrInTrash;
- (BOOL)isEncryptableKeyBinaryData:(id)a3;
- (BOOL)isFolder;
- (BOOL)isHiddenFromIndexing;
- (BOOL)isHiddenFromSearch;
- (BOOL)isInICloudAccount;
- (BOOL)isInNoteTitleOrSnippet;
- (BOOL)isLoadingFromCloud;
- (BOOL)isMap;
- (BOOL)isNews;
- (BOOL)isPodcasts;
- (BOOL)isReadOnly;
- (BOOL)isURL;
- (BOOL)isUnsupported;
- (BOOL)isVisibleTable;
- (BOOL)isiTunes;
- (BOOL)locationNeedsUpdate;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6 newAttachment:(BOOL)a7;
- (BOOL)mergeDataFromUserSpecificRecord:(id)a3 accountID:(id)a4;
- (BOOL)needsToBePushedToCloud;
- (BOOL)needsToBeRequested;
- (BOOL)preferLocalPreviewImages;
- (BOOL)previewsSupportMultipleAppearances;
- (BOOL)processFallbackAsset:(id)a3 fallbackAssetType:(int64_t)a4;
- (BOOL)saveToArchive:(void *)a3 dataPersister:(id)a4 stripImageMarkupMetadata:(BOOL)a5 error:(id *)a6;
- (BOOL)shouldAlwaysDownloadAssets;
- (BOOL)shouldEmbedMarkupDataInMedia;
- (BOOL)shouldShowInContentInfoText;
- (BOOL)supportsQuickLook;
- (BOOL)supportsRenaming;
- (BOOL)updateHandwritingSummary:(id)a3;
- (BOOL)wantsUserSpecificRecord;
- (BOOL)willShowFallbackImage;
- (BOOL)writeFallbackImageData:(id)a3;
- (BOOL)writeFallbackPDFData:(id)a3;
- (CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (CSSearchableItemAttributeSet)searchableItemAttributeSet;
- (CSSearchableItemAttributeSet)userActivityContentAttributeSet;
- (NSData)mergeableData;
- (NSData)metadataData;
- (NSDictionary)metadata;
- (NSSet)visibleInlineAttachments;
- (NSString)accessibilityDescriptionForType;
- (NSString)description;
- (NSString)quotedText;
- (NSString)searchDomainIdentifier;
- (NSString)searchIndexingIdentifier;
- (NSURL)URL;
- (NSURL)fileURL;
- (NSURL)remoteFileURL;
- (double)sizeHeight;
- (double)sizeWidth;
- (id)_accessibilityDescriptionForGenericType;
- (id)addInlineAttachmentWithIdentifier:(id)a3;
- (id)addLocationWithLatitude:(double)a3 longitude:(double)a4;
- (id)addMediaWithData:(id)a3 filename:(id)a4 updateFileBasedAttributes:(BOOL)a5;
- (id)addMediaWithFileWrapper:(id)a3;
- (id)addMediaWithURL:(id)a3 filename:(id)a4 updateFileBasedAttributes:(BOOL)a5;
- (id)addMediaWithURL:(id)a3 updateFileBasedAttributes:(BOOL)a4;
- (id)attachmentModel;
- (id)attachmentPreviewImageCreatingIfNecessaryWithWidth:(double)a3 height:(double)a4 scale:(double)a5 appearanceType:(unint64_t)a6 scaleWhenDrawing:(BOOL)a7 metadata:(id)a8;
- (id)attachmentPreviewImageWithMinSize:(CGSize)a3 scale:(double)a4 appearanceType:(unint64_t)a5 matchScale:(BOOL)a6 matchAppearance:(BOOL)a7;
- (id)attachmentPreviewImageWithMinSize:(CGSize)a3 scale:(double)a4 appearanceType:(unint64_t)a5 requireAppearance:(BOOL)a6;
- (id)audioModel;
- (id)childCloudObjects;
- (id)childCloudObjectsForMinimumSupportedVersionPropagation;
- (id)dataForTypeIdentifier:(id)a3;
- (id)defaultTitle;
- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)a3 shouldFetchObject:(id)a4;
- (id)drawingModel;
- (id)fallbackImageData;
- (id)fallbackImageEncryptedURL;
- (id)fallbackImageURL;
- (id)fallbackPDFData;
- (id)fallbackPDFEncryptedURL;
- (id)fallbackPDFURL;
- (id)fileSizeString;
- (id)fileURLForTypeIdentifier:(id)a3;
- (id)galleryModel;
- (id)ic_loggingValues;
- (id)inlineDrawingModel;
- (id)inlineFormFillingDismissalCountForAllDevices;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3;
- (id)mergeDecryptedValue:(id)a3 withOldValue:(id)a4 forKey:(id)a5;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)paperBundleAssetsSubdirectoryURL;
- (id)paperBundleDatabaseSubdirectoryURL;
- (id)paperBundleModel;
- (id)paperBundleURL;
- (id)paperCoherenceContextURL;
- (id)parentAttachmentFromRecord:(id)a3 accountID:(id)a4 context:(id)a5;
- (id)parentEncryptableObject;
- (id)previewItemTitle;
- (id)previewItemURL;
- (id)searchableTextContent;
- (id)searchableTextContentWithoutTitle;
- (id)synapseBasedMetadata;
- (id)systemPaperModel;
- (id)tableModel;
- (id)temporaryPaperBundleURL;
- (id)unsupportedAttachmentSubtitle;
- (id)unsupportedAttachmentTitle;
- (id)updateAttachmentPreviewImageWithImageData:(id)a3 size:(CGSize)a4 scale:(double)a5 appearanceType:(unint64_t)a6 scaleWhenDrawing:(BOOL)a7 metadata:(id)a8 sendNotification:(BOOL)a9;
- (id)updateAttachmentPreviewImageWithImageSrc:(CGImageSource *)a3 maxDimension:(double)a4 scale:(double)a5 appearanceType:(unint64_t)a6 scaleWhenDrawing:(BOOL)a7 metadata:(id)a8 sendNotification:(BOOL)a9;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3;
- (signed)attachmentType;
- (signed)attachmentTypeFromTypeUTI;
- (signed)attachmentTypeFromURL;
- (signed)attachmentTypeIgnoringSupport;
- (signed)preferredViewSize;
- (unint64_t)approximateArchiveSizeIncludingPreviews:(BOOL)a3;
- (unint64_t)inlineFormFillingBannerDismissalCountForDevice;
- (unint64_t)inlineFormFillingBannerDismissalCountForDeviceIdentifier:(id)a3;
- (void)accountWillChangeToAccount:(id)a3;
- (void)addLocationIfNeeded;
- (void)addPaperBundleToRecordIfAppropriate:(id)a3;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3;
- (void)attachmentDidChange;
- (void)awakeFromFetch;
- (void)clearDecryptedData;
- (void)dealloc;
- (void)deleteAttachmentPreviewImages;
- (void)deserializeAndMergeValues:(id)a3;
- (void)didRefresh:(BOOL)a3;
- (void)didTurnIntoFault;
- (void)fixBrokenReferencesWithError:(id)a3;
- (void)fixMarkedForDeletionForScannedDocuments;
- (void)inlineFormFillingBannerWasDismissedByDeviceIdentifier:(id)a3;
- (void)inlineFormFillingBannerWasDismissedByUser;
- (void)invalidateAttachmentPreviewImages;
- (void)loadFromArchive:(const void *)a3 dataPersister:(id)a4 withIdentifierMap:(id)a5;
- (void)loadLinkPreviewForSynapseItem:(id)a3;
- (void)loadPreviewArchive:(const void *)a3 previewDataIdentifier:(id)a4 dataPersister:(id)a5;
- (void)markForDeletion;
- (void)mergeFallbackImageAndPDFFromRecord:(id)a3;
- (void)mergePaperBundleFromRecord:(id)a3;
- (void)metadata;
- (void)metadataData;
- (void)noteWillMoveToRecentlyDeletedFolder;
- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5;
- (void)persistPendingChanges;
- (void)prepareForDeletion;
- (void)purgeAttachmentPreviewImages;
- (void)recursivelyAddSubAttachments:(id)a3;
- (void)regenerateTitleWithInferredTitle:(id)a3;
- (void)removeTemporaryPaperBundle;
- (void)resetPreferredViewSizeIfNecessary;
- (void)saveMergeableDataIfNeeded;
- (void)savePreview:(id)a3 toArchive:(void *)a4 previewDataIdentifier:(id)a5 dataPersister:(id)a6;
- (void)setBounds:(CGRect)a3;
- (void)setHandwritingSummary:(id)a3;
- (void)setImageClassificationSummary:(id)a3;
- (void)setImageFilterType:(signed __int16)a3;
- (void)setIsBeingEditedLocallyOnDevice:(BOOL)a3;
- (void)setMarkedForDeletion:(BOOL)a3;
- (void)setMarkupModelData:(id)a3;
- (void)setMergeableData:(id)a3;
- (void)setMergeablePreferredViewSize:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setMetadataData:(id)a3;
- (void)setNote:(id)a3;
- (void)setOcrSummary:(id)a3;
- (void)setOrientation:(signed __int16)a3;
- (void)setParentAttachment:(id)a3;
- (void)setPreferredViewSize:(signed __int16)a3;
- (void)setRemoteFileURL:(id)a3;
- (void)setTypeUTI:(id)a3 resetToIntrinsicNotesVersion:(BOOL)a4;
- (void)setUrlString:(id)a3;
- (void)undeleteAttachmentPreviewImages;
- (void)unmarkForDeletion;
- (void)updateAfterMediaChange;
- (void)updateAttachmentMetadataWithBlock:(id)a3;
- (void)updateAttachmentSectionWithTypeUTI:(id)a3;
- (void)updateCombinedSummary;
- (void)updateMarkedForDeletionStateAttachmentIsInUse:(BOOL)a3;
- (void)updateParentReferenceIfNecessary;
- (void)updatePlaceInLocationIfNeededHandler:(id)a3;
- (void)updatePreviewsFromRecord:(id)a3;
- (void)willRefresh:(BOOL)a3;
- (void)willSave;
- (void)willTurnIntoFault;
- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)a3;
@end

@implementation ICAttachment

+ (NSPredicate)predicateForAllPaperKitBackedAttachments
{
  if (predicateForAllPaperKitBackedAttachments_onceToken != -1)
  {
    +[ICAttachment(Management) predicateForAllPaperKitBackedAttachments];
  }

  v3 = predicateForAllPaperKitBackedAttachments_predicate;

  return v3;
}

void __68__ICAttachment_Management__predicateForAllPaperKitBackedAttachments__block_invoke()
{
  v0 = MEMORY[0x277CCAC30];
  v3 = ICPaperKitBackedAttachmentUTTypes();
  v1 = [v0 predicateWithFormat:@"typeUTI IN %@", v3];
  v2 = predicateForAllPaperKitBackedAttachments_predicate;
  predicateForAllPaperKitBackedAttachments_predicate = v1;
}

+ (NSPredicate)predicateForOutdatedOrMissingHandwritingSummary
{
  if (predicateForOutdatedOrMissingHandwritingSummary_onceToken != -1)
  {
    +[ICAttachment(Management) predicateForOutdatedOrMissingHandwritingSummary];
  }

  v3 = predicateForOutdatedOrMissingHandwritingSummary_predicate;

  return v3;
}

void __75__ICAttachment_Management__predicateForOutdatedOrMissingHandwritingSummary__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA920];
  v1 = [MEMORY[0x277CCAC30] predicateWithFormat:@"handwritingSummary == nil"];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"handwritingSummaryVersion < %d", 9, v1];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v0 orPredicateWithSubpredicates:v3];
  v5 = predicateForOutdatedOrMissingHandwritingSummary_predicate;
  predicateForOutdatedOrMissingHandwritingSummary_predicate = v4;
}

+ (void)initialize
{
  v10 = [MEMORY[0x277CCAB68] stringWithCapacity:26];
  v2 = 112;
  v3 = MEMORY[0x277D85DE0];
  v4 = 1u;
  do
  {
    LOWORD(v5) = v2;
    v6 = v2 & 0xFFFF;
    if (v2 < 0)
    {
      if (!__maskrune(v2, 0x100uLL))
      {
        goto LABEL_9;
      }

      if (__maskrune(v5, 0x8000uLL))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(v3 + 4 * v2 + 60);
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      if ((v7 & 0x8000) != 0)
      {
LABEL_5:
        v5 = (v6 - 52) % 26 + 65;
        goto LABEL_9;
      }
    }

    v5 = (v6 - 84) % 26 + 97;
LABEL_9:
    [v10 appendFormat:@"%C", v5];
    v2 = aPbzNccyrVebapn[v4++];
  }

  while (v4 != 27);
  v8 = [v10 copy];
  v9 = ICAttachmentUTTypeDrawingLegacy;
  ICAttachmentUTTypeDrawingLegacy = v8;
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v3 awakeFromFetch];
  [(ICAttachmentModel *)self->_attachmentModel attachmentAwakeFromFetch];
  [(ICAssetGenerationManager *)self->_fallbackImageGenerationManager updateCurrentGeneration];
  [(ICAssetGenerationManager *)self->_fallbackPDFGenerationManager updateCurrentGeneration];
}

- (signed)attachmentType
{
  if ([(ICAttachment *)self isUnsupported])
  {
    attachmentType = 1;
  }

  else
  {
    attachmentType = self->_attachmentType;
    if (attachmentType)
    {
      return attachmentType;
    }

    v5 = [(ICAttachment *)self typeUTI];

    if (!v5)
    {
      return self->_attachmentType;
    }

    v6 = [(ICAttachment *)self attachmentTypeIgnoringSupport];
    if (v6)
    {
      attachmentType = v6;
    }

    else
    {
      attachmentType = 2;
    }
  }

  self->_attachmentType = attachmentType;
  return attachmentType;
}

- (BOOL)isUnsupported
{
  v8.receiver = self;
  v8.super_class = ICAttachment;
  v3 = [(ICCloudSyncingObject *)&v8 isUnsupported];
  v4 = [(ICAttachment *)self typeUTI];
  if (v4)
  {
    v5 = [(ICAttachment *)self typeUTI];
    v6 = ![ICAttachment isTypeUTISupportedForPasswordProtectedNotes:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return (v3 | [(ICAttachment *)self isPasswordProtected]& v6) & 1;
}

- (signed)attachmentTypeIgnoringSupport
{
  v3 = [(ICAttachment *)self attachmentTypeFromTypeUTI];
  if (!v3)
  {
    v3 = [(ICAttachment *)self isURL];
    if (v3)
    {

      LOWORD(v3) = [(ICAttachment *)self attachmentTypeFromURL];
    }
  }

  return v3;
}

- (signed)attachmentTypeFromTypeUTI
{
  v3 = [(ICAttachment *)self typeUTI];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICAttachment *)self typeUTI];
  v5 = [ICAttachment typeUTIIsImage:v4];

  if (v5)
  {
    return 3;
  }

  v7 = [(ICAttachment *)self typeUTI];
  v8 = [ICAttachment typeUTIIsPlayableAudio:v7];

  if (v8)
  {
    return 4;
  }

  v9 = [(ICAttachment *)self typeUTI];
  v10 = [ICAttachment typeUTIIsPlayableMovie:v9];

  if (v10)
  {
    return 5;
  }

  v11 = MEMORY[0x277CE1CB8];
  v12 = [(ICAttachment *)self typeUTI];
  v13 = [v11 typeWithIdentifier:v12];
  v14 = [v13 conformsToType:*MEMORY[0x277CE1E08]];

  if (v14)
  {
    return 6;
  }

  v15 = [(ICAttachment *)self typeUTI];
  v16 = [ICAttachment typeUTIIsInlineDrawing:v15];

  if (v16)
  {
    return 10;
  }

  v17 = [(ICAttachment *)self typeUTI];
  v18 = [ICAttachment typeUTIIsDrawing:v17];

  if (v18)
  {
    return 9;
  }

  v19 = [(ICAttachment *)self typeUTI];
  v20 = [v19 isEqualToString:@"com.apple.notes.gallery"];

  if (v20)
  {
    return 11;
  }

  v21 = [(ICAttachment *)self typeUTI];
  v22 = [v21 isEqualToString:@"com.apple.notes.table"];

  if (v22)
  {
    return 12;
  }

  v23 = [(ICAttachment *)self typeUTI];
  v24 = [v23 isEqualToString:@"com.apple.paper"];

  if (v24)
  {
    return 13;
  }

  v25 = [(ICAttachment *)self typeUTI];
  if ([v25 isEqualToString:@"com.apple.paper.doc"])
  {

    return 14;
  }

  v26 = [(ICAttachment *)self typeUTI];
  v27 = [v26 isEqualToString:@"com.apple.paper.doc.pdf"];

  if (v27)
  {
    return 14;
  }

  v28 = [(ICAttachment *)self typeUTI];
  v29 = [v28 isEqualToString:@"com.apple.paper.doc.scan"];

  if (v29)
  {
    return 15;
  }

  else
  {
    return 0;
  }
}

- (signed)preferredViewSize
{
  v3 = [(ICAttachment *)self mergeablePreferredViewSize];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [ICTTMergeableWallClockValue alloc];
    v6 = [(ICAttachment *)self mergeablePreferredViewSize];
    v7 = [(ICTTMergeableWallClockValue *)v5 initWithData:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(ICTTMergeableWallClockValue *)v7 value];

  if (v8)
  {
    v9 = [(ICTTMergeableWallClockValue *)v7 value];
    v10 = [v9 shortValue];
  }

  else
  {
    v9 = [(ICAttachment *)self note];
    v10 = [v9 attachmentViewType];
  }

  v11 = v10;

  return v11;
}

- (double)sizeWidth
{
  [(ICAttachment *)self willAccessValueForKey:@"sizeWidth"];
  v3 = [(ICAttachment *)self primitiveValueForKey:@"sizeWidth"];
  [v3 doubleValue];
  v5 = v4;

  [(ICAttachment *)self didAccessValueForKey:@"sizeWidth"];
  if (v5 == 0.0)
  {
    v6 = [(ICAttachment *)self attachmentModel];
    v7 = [v6 shouldUsePlaceholderBoundsIfNecessary];

    if (v7)
    {
      v8 = [(ICAttachment *)self attachmentModel];
      [v8 placeholderWidth];
      v5 = v9;
    }
  }

  return v5;
}

- (double)sizeHeight
{
  [(ICAttachment *)self willAccessValueForKey:@"sizeHeight"];
  v3 = [(ICAttachment *)self primitiveValueForKey:@"sizeHeight"];
  [v3 doubleValue];
  v5 = v4;

  [(ICAttachment *)self didAccessValueForKey:@"sizeHeight"];
  if (v5 == 0.0)
  {
    v6 = [(ICAttachment *)self attachmentModel];
    v7 = [v6 shouldUsePlaceholderBoundsIfNecessary];

    if (v7)
    {
      v8 = [(ICAttachment *)self attachmentModel];
      [v8 placeholderHeight];
      v5 = v9;
    }
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(ICAttachment *)self attachmentModel];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)attachmentModel
{
  v3 = [(ICAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ICAttachment_attachmentModel__block_invoke;
  v5[3] = &unk_278194B00;
  v5[4] = self;
  [v3 performBlockAndWait:v5];

  return self->_attachmentModel;
}

void __31__ICAttachment_attachmentModel__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (!v1[25])
  {
    v3 = [objc_alloc(+[ICAttachmentModel modelClassForAttachmentType:](ICAttachmentModel modelClassForAttachmentType:{objc_msgSend(v1, "attachmentType"))), "initWithAttachment:", *v2}];
    v4 = *(*v2 + 25);
    *(*v2 + 25) = v3;

    v1 = *v2;
  }

  if ([v1 isFault])
  {
    if ([*v2 attachmentType] == 9)
    {
      v5 = [*v2 identifier];

      if (v5)
      {
        v6 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __31__ICAttachment_attachmentModel__block_invoke_cold_1(v2);
        }
      }
    }
  }
}

- (void)willTurnIntoFault
{
  [(ICAttachmentModel *)self->_attachmentModel attachmentWillTurnIntoFault];
  v3.receiver = self;
  v3.super_class = ICAttachment;
  [(ICAttachment *)&v3 willTurnIntoFault];
}

- (void)didTurnIntoFault
{
  v4.receiver = self;
  v4.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v4 didTurnIntoFault];
  remoteFileURL = self->_remoteFileURL;
  self->_remoteFileURL = 0;
}

- (void)dealloc
{
  attachmentModel = self->_attachmentModel;
  if (attachmentModel)
  {
    [(ICAttachmentModel *)attachmentModel attachmentIsDeallocating:self];
  }

  v4.receiver = self;
  v4.super_class = ICAttachment;
  [(ICAttachment *)&v4 dealloc];
}

- (id)childCloudObjects
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachment *)self media];

  if (v3)
  {
    v4 = [(ICAttachment *)self media];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)loadFromArchive:(const void *)a3 dataPersister:(id)a4 withIdentifierMap:(id)a5
{
  v197 = *MEMORY[0x277D85DE8];
  v188 = a4;
  v187 = a5;
  v189 = a3;
  if (*(a3 + 32))
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = *(a3 + 5);
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = *(*(a3 + 5) + 8);
    }

    v11 = [v8 initWithBytes:v9 length:v10 encoding:4];
    if (v187)
    {
      v12 = [(ICAttachment *)self identifier];
      [v187 setObject:v12 forKeyedSubscript:v11];
    }

    v186 = v11;
  }

  else
  {
    v186 = &stru_2827172C0;
  }

  if ((*(a3 + 8) & 0x1000000) != 0)
  {
    v13 = *(a3 + 29);
  }

  else
  {
    v13 = 0;
  }

  v14 = [(ICCloudSyncingObject *)self requireMinimumSupportedVersionAndPropagateToChildObjects:v13];
  if ((*(a3 + 32) & 2) != 0)
  {
    v17 = objc_alloc(MEMORY[0x277CBEA90]);
    v18 = *(a3 + 6);
    v19 = *(v18 + 23);
    if (v19 < 0)
    {
      v18 = *v18;
      v19 = *(*(a3 + 6) + 8);
    }

    v15 = [v17 initWithBytes:v18 length:v19];
    [(ICAttachment *)self setMergeableData:v15];
  }

  else
  {
    if (!v188)
    {
      goto LABEL_18;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"mergeableData"];
    v16 = [v188 loadDataForIdentifier:v15];
    [(ICAttachment *)self setMergeableData:v16];
  }

LABEL_18:
  v20 = *(a3 + 8);
  if ((v20 & 4) != 0)
  {
    v14 = [(ICAttachment *)self setSizeHeight:*(a3 + 14)];
    v20 = *(a3 + 8);
  }

  if ((v20 & 8) != 0)
  {
    v14 = [(ICAttachment *)self setSizeWidth:*(a3 + 15)];
    v20 = *(a3 + 8);
  }

  if ((v20 & 0x800) != 0)
  {
    v14 = [(ICAttachment *)self setOriginX:*(a3 + 34)];
    v20 = *(a3 + 8);
  }

  if ((v20 & 0x1000) != 0)
  {
    v14 = [(ICAttachment *)self setOriginY:*(a3 + 35)];
    v20 = *(a3 + 8);
  }

  if ((v20 & 0x2000) != 0)
  {
    v14 = [(ICAttachment *)self setOrientation:*(a3 + 80)];
    v20 = *(a3 + 8);
  }

  if ((v20 & 0x10) != 0)
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = *(a3 + 8);
    v23 = *(v22 + 23);
    if (v23 < 0)
    {
      v22 = *v22;
      v23 = *(*(a3 + 8) + 8);
    }

    v24 = [v21 initWithBytes:v22 length:v23 encoding:4];
    [(ICAttachment *)self setSummary:v24];

    v20 = *(a3 + 8);
  }

  if ((v20 & 0x20) != 0)
  {
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = *(a3 + 9);
    v27 = *(v26 + 23);
    if (v27 < 0)
    {
      v26 = *v26;
      v27 = *(*(a3 + 9) + 8);
    }

    v28 = [v25 initWithBytes:v26 length:v27 encoding:4];
    [(ICAttachment *)self setTitle:v28];
  }

  if ((*(a3 + 36) & 4) != 0)
  {
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = *(a3 + 39);
    v31 = *(v30 + 23);
    if (v31 < 0)
    {
      v30 = *v30;
      v31 = *(*(a3 + 39) + 8);
    }

    v32 = [v29 initWithBytes:v30 length:v31 encoding:4];
    [(ICAttachment *)self setUserTitle:v32];
  }

  v33 = *(a3 + 8);
  if ((v33 & 0x40) != 0)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = *(a3 + 10);
    v36 = *(v35 + 23);
    if (v36 < 0)
    {
      v35 = *v35;
      v36 = *(*(a3 + 10) + 8);
    }

    v37 = [v34 initWithBytes:v35 length:v36 encoding:4];
    [(ICAttachment *)self setTypeUTI:v37 resetToIntrinsicNotesVersion:0];

    v33 = *(a3 + 8);
  }

  if ((v33 & 0x80) != 0)
  {
    v38 = objc_alloc(MEMORY[0x277CCACA8]);
    v39 = *(a3 + 11);
    v40 = *(v39 + 23);
    if (v40 < 0)
    {
      v39 = *v39;
      v40 = *(*(a3 + 11) + 8);
    }

    v41 = [v38 initWithBytes:v39 length:v40 encoding:4];
    [(ICAttachment *)self setUrlString:v41];

    v33 = *(a3 + 8);
  }

  if ((v33 & 0x4000) != 0)
  {
    v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a3 + 18)];
    [(ICAttachment *)self setPreviewUpdateDate:v42];

    v33 = *(a3 + 8);
  }

  if ((v33 & 0x8000) != 0)
  {
    v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a3 + 19)];
    [(ICAttachment *)self setCreationDate:v43];

    v33 = *(a3 + 8);
  }

  if ((v33 & 0x10000) != 0)
  {
    v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a3 + 21)];
    [(ICAttachment *)self setModificationDate:v44];

    v33 = *(a3 + 8);
  }

  if ((v33 & 0x20000) != 0)
  {
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    v46 = *(a3 + 22);
    v47 = *(v46 + 23);
    if (v47 < 0)
    {
      v46 = *v46;
      v47 = *(*(a3 + 22) + 8);
    }

    v48 = [v45 initWithBytes:v46 length:v47 encoding:4];
    v49 = [MEMORY[0x277CBEBC0] URLWithString:v48];
    [(ICAttachment *)self setRemoteFileURL:v49];

    v33 = *(a3 + 8);
  }

  if ((v33 & 0x40000) != 0)
  {
    v14 = [(ICAttachment *)self setCheckedForLocation:*(a3 + 164)];
    v33 = *(a3 + 8);
  }

  if ((v33 & 0x80000) != 0)
  {
    v14 = [(ICAttachment *)self setFileSize:*(a3 + 23)];
    v33 = *(a3 + 8);
  }

  if ((v33 & 0x100000) != 0)
  {
    v14 = [(ICAttachment *)self setDuration:*(a3 + 24)];
    v33 = *(a3 + 8);
  }

  if ((v33 & 0x200000) != 0)
  {
    v14 = [(ICAttachment *)self setImageFilterType:*(a3 + 196)];
    v33 = *(a3 + 8);
  }

  if ((v33 & 0x400000) != 0)
  {
    v52 = objc_alloc(MEMORY[0x277CBEA90]);
    v53 = *(a3 + 25);
    v54 = *(v53 + 23);
    if (v54 < 0)
    {
      v53 = *v53;
      v54 = *(*(a3 + 25) + 8);
    }

    v50 = [v52 initWithBytes:v53 length:v54];
    [(ICAttachment *)self setMarkupModelData:v50];
    goto LABEL_72;
  }

  if (v188)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"markupModelData"];
    v51 = [v188 loadDataForIdentifier:v50];
    [(ICAttachment *)self setMarkupModelData:v51];

LABEL_72:
    v33 = *(a3 + 8);
  }

  if (v33 >> 25 == 127 && (*(a3 + 36) & 1) != 0)
  {
    [(ICAttachment *)self setCroppingQuadBottomLeftX:*(a3 + 30)];
    [(ICAttachment *)self setCroppingQuadBottomLeftY:*(a3 + 31)];
    [(ICAttachment *)self setCroppingQuadBottomRightX:*(a3 + 32)];
    [(ICAttachment *)self setCroppingQuadBottomRightY:*(a3 + 33)];
    [(ICAttachment *)self setCroppingQuadTopLeftX:*(a3 + 34)];
    [(ICAttachment *)self setCroppingQuadTopLeftY:*(a3 + 35)];
    [(ICAttachment *)self setCroppingQuadTopRightX:*(a3 + 36)];
    v14 = [(ICAttachment *)self setCroppingQuadTopRightY:*(a3 + 37)];
    v33 = *(a3 + 8);
  }

  if ((v33 & 0x100) != 0)
  {
    v55 = *(a3 + 12);
    if (v55)
    {
      v56 = *(v55 + 40);
    }

    else
    {
      v57 = topotext::Attachment::default_instance(v14);
      v55 = *(a3 + 12);
      v56 = *(*(v57 + 12) + 40);
      if (!v55)
      {
        v55 = *(topotext::Attachment::default_instance(v57) + 96);
      }
    }

    v14 = [(ICAttachment *)self addLocationWithLatitude:v56 longitude:*(v55 + 48)];
    v58 = *(a3 + 12);
    v59 = v58;
    if (!v58)
    {
      v14 = topotext::Attachment::default_instance(v14);
      v59 = *(v14 + 12);
      v58 = *(a3 + 12);
    }

    if ((*(v59 + 32) & 8) != 0)
    {
      if (!v58)
      {
        v58 = *(topotext::Attachment::default_instance(v14) + 96);
      }

      v60 = *(v58 + 64);
      v61 = [(ICAttachment *)self location];
      [v61 setPlaceUpdated:v60];

      v58 = *(a3 + 12);
    }

    if (!v58)
    {
      v14 = topotext::Attachment::default_instance(v14);
      v58 = *(v14 + 12);
    }

    if ((*(v58 + 32) & 4) != 0)
    {
      v62 = objc_alloc(MEMORY[0x277CBEA90]);
      v63 = v62;
      v64 = *(a3 + 12);
      if (!v64)
      {
        v62 = topotext::Attachment::default_instance(v62);
        v64 = v62[12];
      }

      v65 = *(v64 + 56);
      if (*(v65 + 23) < 0)
      {
        v65 = *v65;
      }

      v66 = *(a3 + 12);
      if (!v66)
      {
        v66 = *(topotext::Attachment::default_instance(v62) + 96);
      }

      v67 = *(v66 + 56);
      v68 = *(v67 + 23);
      if (v68 < 0)
      {
        v68 = *(v67 + 8);
      }

      v69 = [v63 initWithBytes:v65 length:v68];
      v190 = 0;
      v70 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v69 error:&v190];
      v71 = v190;
      if (v71)
      {
        v72 = os_log_create("com.apple.notes", "Topotext");
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment(ICAttachmentPersistenceAdditions) loadFromArchive:v71 dataPersister:v72 withIdentifierMap:?];
        }
      }

      objc_opt_class();
      v73 = [v70 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
      v74 = ICCheckedDynamicCast();
      v75 = [(ICAttachment *)self location];
      [v75 setPlacemark:v74];
    }
  }

  if ((*(a3 + 33) & 2) != 0)
  {
    v76 = *(a3 + 13);
    if (!v76)
    {
      v76 = *(topotext::Attachment::default_instance(v14) + 104);
    }

    if ((*(v76 + 32) & 8) != 0)
    {
      v88 = objc_alloc(MEMORY[0x277CCACA8]);
      v89 = v88;
      v90 = *(a3 + 13);
      if (!v90)
      {
        v88 = topotext::Attachment::default_instance(v88);
        v90 = v88[13];
      }

      v91 = *(v90 + 64);
      if (*(v91 + 23) < 0)
      {
        v91 = *v91;
      }

      v92 = *(a3 + 13);
      if (!v92)
      {
        v92 = *(topotext::Attachment::default_instance(v88) + 104);
      }

      v93 = *(v92 + 64);
      v94 = *(v93 + 23);
      if (v94 < 0)
      {
        v94 = *(v93 + 8);
      }

      v87 = [v89 initWithBytes:v91 length:v94 encoding:4];
    }

    else
    {
      v77 = objc_alloc(MEMORY[0x277CCACA8]);
      v78 = v77;
      v79 = *(a3 + 13);
      if (!v79)
      {
        v77 = topotext::Attachment::default_instance(v77);
        v79 = v77[13];
      }

      v80 = *(v79 + 40);
      if (*(v80 + 23) < 0)
      {
        v80 = *v80;
      }

      v81 = *(a3 + 13);
      if (!v81)
      {
        v81 = *(topotext::Attachment::default_instance(v77) + 104);
      }

      v82 = *(v81 + 40);
      v83 = *(v82 + 23);
      if (v83 < 0)
      {
        v83 = *(v82 + 8);
      }

      v84 = [v78 initWithBytes:v80 length:v83 encoding:4];
      v85 = v84;
      v86 = *(a3 + 13);
      if (!v86)
      {
        v86 = *(topotext::Attachment::default_instance(v84) + 104);
      }

      if ((*(v86 + 32) & 2) != 0)
      {
        v95 = objc_alloc(MEMORY[0x277CCACA8]);
        v96 = v95;
        v97 = *(a3 + 13);
        if (!v97)
        {
          v95 = topotext::Attachment::default_instance(v95);
          v97 = v95[13];
        }

        v98 = *(v97 + 48);
        if (*(v98 + 23) < 0)
        {
          v98 = *v98;
        }

        v99 = *(a3 + 13);
        if (!v99)
        {
          v99 = *(topotext::Attachment::default_instance(v95) + 104);
        }

        v100 = *(v99 + 48);
        v101 = *(v100 + 23);
        if (v101 < 0)
        {
          v101 = *(v100 + 8);
        }

        v102 = [v96 initWithBytes:v98 length:v101 encoding:4];
        v87 = [(topotext::Attachment *)v85 stringByAppendingPathExtension:v102];
      }

      else
      {
        v87 = v85;
      }
    }

    v103 = [(topotext::Attachment *)v87 ic_sanitizedFilenameString];

    v105 = *(a3 + 13);
    if (!v105)
    {
      v105 = *(topotext::Attachment::default_instance(v104) + 104);
    }

    if ((*(v105 + 32) & 4) != 0)
    {
      v108 = objc_alloc(MEMORY[0x277CBEA90]);
      v109 = v108;
      v110 = *(a3 + 13);
      if (!v110)
      {
        v108 = topotext::Attachment::default_instance(v108);
        v110 = v108[13];
      }

      v111 = *(v110 + 56);
      if (*(v111 + 23) < 0)
      {
        v111 = *v111;
      }

      v112 = *(a3 + 13);
      if (!v112)
      {
        v112 = *(topotext::Attachment::default_instance(v108) + 104);
      }

      v113 = *(v112 + 56);
      v114 = *(v113 + 23);
      if (v114 < 0)
      {
        v114 = *(v113 + 8);
      }

      v107 = [v109 initWithBytes:v111 length:v114];
      if (!v107)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (!v188)
      {
        v107 = 0;
        goto LABEL_163;
      }

      v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"media"];
      v107 = [v188 loadDataForIdentifier:v106];

      if (!v107)
      {
        goto LABEL_163;
      }
    }

    if (v103)
    {
      v115 = [(ICAttachment *)self addMediaWithData:v107 filename:v103 updateFileBasedAttributes:0];
      v116 = v115;
      isa = *(a3 + 13);
      if (!isa)
      {
        v115 = topotext::Attachment::default_instance(v115);
        isa = v115[13].isa;
      }

      if ((*(isa + 32) & 0x10) != 0)
      {
        v119 = *(a3 + 13);
        if (!v119)
        {
          v119 = *(topotext::Attachment::default_instance(v115) + 104);
        }

        v118 = *(v119 + 72);
      }

      else
      {
        v118 = 0;
      }

      [v116 requireMinimumSupportedVersionAndPropagateToChildObjects:v118];
      goto LABEL_166;
    }

LABEL_163:
    v116 = os_log_create("com.apple.notes", "Archiving");
    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
    {
      v182 = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
      v183 = [v107 length];
      *buf = 138412802;
      v192 = v182;
      v193 = 2048;
      v194 = v183;
      v195 = 2112;
      v196 = v103;
      _os_log_error_impl(&dword_214D51000, v116, OS_LOG_TYPE_ERROR, "Failed to unarchive media for attachment (%@) because either the data (%lu bytes) or filename (%@) were missing", buf, 0x20u);
    }

LABEL_166:
  }

  if (v188)
  {
    v120 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackImage", v186];
    v184 = [v188 loadDataForIdentifier:v120];
  }

  else
  {
    v121 = *(a3 + 9);
    if ((v121 & 8) == 0)
    {
      v184 = 0;
      if ((v121 & 0x100) == 0)
      {
        goto LABEL_185;
      }

      goto LABEL_180;
    }

    v122 = objc_alloc(MEMORY[0x277CBEA90]);
    v123 = *(a3 + 40);
    v124 = *(v123 + 23);
    if (v124 < 0)
    {
      v123 = *v123;
      v124 = *(*(a3 + 40) + 8);
    }

    v184 = [v122 initWithBytes:v123 length:v124];
  }

  if (v184)
  {
    [(ICAttachment *)self writeFallbackImageData:v184];
  }

  if (v188)
  {
    v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackPDF", v186];
    v185 = [v188 loadDataForIdentifier:v125];

    goto LABEL_183;
  }

  if ((*(a3 + 9) & 0x100) == 0)
  {
    goto LABEL_185;
  }

LABEL_180:
  v126 = objc_alloc(MEMORY[0x277CBEA90]);
  v127 = *(a3 + 47);
  v128 = *(v127 + 23);
  if (v128 < 0)
  {
    v127 = *v127;
    v128 = *(*(a3 + 47) + 8);
  }

  v185 = [v126 initWithBytes:v127 length:v128];
LABEL_183:
  if (v185)
  {
    [(ICAttachment *)self writeFallbackPDFData:?];
    goto LABEL_186;
  }

LABEL_185:
  v185 = 0;
LABEL_186:
  v129 = *(a3 + 9);
  if ((v129 & 2) != 0)
  {
    v130 = objc_alloc(MEMORY[0x277CBEA90]);
    v131 = *(a3 + 38);
    v132 = *(v131 + 23);
    if (v132 < 0)
    {
      v131 = *v131;
      v132 = *(*(a3 + 38) + 8);
    }

    v133 = [v130 initWithBytes:v131 length:v132];
    [(ICAttachment *)self setMetadataData:v133];

    v129 = *(a3 + 9);
  }

  if ((v129 & 0x10) != 0)
  {
    v134 = objc_alloc(MEMORY[0x277CBEA90]);
    v135 = *(a3 + 41);
    v136 = *(v135 + 23);
    if (v136 < 0)
    {
      v135 = *v135;
      v136 = *(*(a3 + 41) + 8);
    }

    v137 = [v134 initWithBytes:v135 length:v136];
    [(ICAttachment *)self setLinkPresentationArchivedMetadata:v137];
  }

  v138 = *(a3 + 30);
  if (v138)
  {
    for (i = 0; i != v138; ++i)
    {
      v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_previewImage_%lu", v186, i];
      [(ICAttachment *)self loadPreviewArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>((v189 + 28) previewDataIdentifier:i) dataPersister:v140, v188];
    }
  }

  v141 = v189[54];
  if (v141)
  {
    for (j = 0; j != v141; ++j)
    {
      v143 = objc_autoreleasePoolPush();
      v144 = [(ICAttachment *)self note];
      v145 = [MEMORY[0x277CCAD78] UUID];
      v146 = [v145 UUIDString];
      v147 = [v144 addAttachmentWithIdentifier:v146];

      [v147 setParentAttachment:self];
      [(ICAttachment *)self addSubAttachmentsObject:v147];
      [v147 loadFromArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>((v189 + 52) dataPersister:j) withIdentifierMap:{v188, v187}];
      [v147 updateChangeCountWithReason:@"Loaded subattachment from archive"];
      v148 = [v147 media];
      [v148 updateChangeCountWithReason:@"Loaded subattachment from archive"];

      objc_autoreleasePoolPop(v143);
    }
  }

  v149 = [(ICAttachment *)self attachmentModel];
  [v149 updateAfterLoadWithSubAttachmentIdentifierMap:v187];

  v150 = [(ICAttachment *)self attachmentModel];
  [v150 updateFileBasedAttributes];

  v151 = v189[86];
  if (v151)
  {
    for (k = 0; k != v151; ++k)
    {
      v153 = [(ICAttachment *)self note];
      v154 = [MEMORY[0x277CCAD78] UUID];
      v155 = [v154 UUIDString];
      v156 = [v153 addInlineAttachmentWithIdentifier:v155];

      [v156 setParentAttachment:self];
      [(ICAttachment *)self addInlineAttachmentsObject:v156];
      [v156 loadFromArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>((v189 + 84) dataPersister:k) withIdentifierMap:{v188, v187}];
      [v156 updateChangeCountWithReason:@"Loaded inline attachment from archive"];
    }
  }

  objc_opt_class();
  v157 = [(ICAttachment *)self attachmentModel];
  v158 = ICDynamicCast();

  if (v158)
  {
    if ((v189[9] & 0x40) == 0)
    {
      if (!v188)
      {
        goto LABEL_214;
      }

      v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"systemPaperBundle"];
      v160 = [v188 loadDataForIdentifier:v159];

      if (!v160)
      {
        goto LABEL_214;
      }

      goto LABEL_211;
    }

    v161 = objc_alloc(MEMORY[0x277CBEA90]);
    v162 = *(v189 + 45);
    v163 = *(v162 + 23);
    if (v163 < 0)
    {
      v162 = *v162;
      v163 = *(*(v189 + 45) + 8);
    }

    v160 = [v161 initWithBytes:v162 length:v163];
    if (v160)
    {
LABEL_211:
      v164 = NSTemporaryDirectory();
      v165 = [MEMORY[0x277CCAD78] UUID];
      v166 = [v165 UUIDString];
      v167 = [v164 stringByAppendingPathComponent:v166];

      v168 = [MEMORY[0x277CBEBC0] fileURLWithPath:v167];
      v169 = [v168 URLByAppendingPathExtension:@"zip"];
      v170 = [v169 path];
      LODWORD(v166) = [v160 writeToFile:v170 atomically:1];

      if (v166)
      {
        [v158 restorePaperBundleFromArchiveURL:v169 error:0];
        v171 = [MEMORY[0x277CCAA00] defaultManager];
        [v171 removeItemAtURL:v169 error:0];
      }
    }
  }

LABEL_214:
  v172 = v189[9];
  if ((v172 & 0x80) != 0)
  {
    v173 = objc_alloc(MEMORY[0x277CBEA90]);
    v174 = *(v189 + 46);
    v175 = *(v174 + 23);
    if (v175 < 0)
    {
      v174 = *v174;
      v175 = *(*(v189 + 46) + 8);
    }

    v176 = [v173 initWithBytes:v174 length:v175];
    [(ICAttachment *)self setSynapseData:v176];

    v172 = v189[9];
  }

  if ((v172 & 0x200) != 0)
  {
    v177 = objc_alloc(MEMORY[0x277CBEA90]);
    v178 = *(v189 + 48);
    v179 = *(v178 + 23);
    if (v179 < 0)
    {
      v178 = *v178;
      v179 = *(*(v189 + 48) + 8);
    }

    v180 = [v177 initWithBytes:v178 length:v179];
    [(ICAttachment *)self setMergeablePreferredViewSize:v180];

    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set preferred view size"];
  }

  v181 = [(ICAttachment *)self attachmentModel];
  [v181 updateAfterLoadWithInlineAttachmentIdentifierMap:v187];
}

- (void)loadPreviewArchive:(const void *)a3 previewDataIdentifier:(id)a4 dataPersister:(id)a5
{
  v39 = a4;
  v8 = a5;
  v9 = v8;
  v10 = *(a3 + 8);
  if (v10)
  {
    v11 = *(a3 + 12);
  }

  else
  {
    v11 = 1.0;
  }

  v12 = (*(a3 + 8) & 2) == 0;
  v13 = *(a3 + 52);
  v38 = *(a3 + 17);
  v14 = *MEMORY[0x277CBF3A8];
  v15 = *(MEMORY[0x277CBF3A8] + 8);
  if ((v10 & 4) != 0)
  {
    v17 = objc_alloc(MEMORY[0x277CBEA90]);
    v18 = *(a3 + 5);
    v19 = *(v18 + 23);
    if (v19 < 0)
    {
      v18 = *v18;
      v19 = *(*(a3 + 5) + 8);
    }

    v16 = [v17 initWithBytes:v18 length:v19];
  }

  else
  {
    if (!v8)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v16 = [v8 loadDataForIdentifier:v39];
  }

  v20 = v16;
  if (!v16)
  {
LABEL_16:
    LOBYTE(v22) = 1;
    goto LABEL_17;
  }

  v21 = CGImageSourceCreateWithData(v16, 0);
  v22 = v21;
  if (v21)
  {
    v23 = CGImageSourceCopyPropertiesAtIndex(v21, 0, 0);
    v24 = v23;
    if (v23)
    {
      v25 = [(__CFDictionary *)v23 objectForKeyedSubscript:*MEMORY[0x277CD3450]];
      [v25 doubleValue];
      v14 = v26;
      v27 = [(__CFDictionary *)v24 objectForKeyedSubscript:*MEMORY[0x277CD3448]];
      [v27 doubleValue];
      v15 = v28;

      v12 = (v10 & 2) == 0;
    }

    CFRelease(v22);

    LOBYTE(v22) = 0;
  }

LABEL_17:
  if ((*(a3 + 32) & 8) != 0)
  {
    v30 = objc_alloc(MEMORY[0x277CBEA90]);
    v31 = *(a3 + 7);
    v32 = *(v31 + 23);
    if (v32 < 0)
    {
      v31 = *v31;
      v32 = *(*(a3 + 7) + 8);
    }

    v29 = [v30 initWithBytes:v31 length:v32];
    if (v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v29 = 0;
    if (v22)
    {
      goto LABEL_29;
    }
  }

  v33 = [(ICAttachment *)self updateAttachmentPreviewImageWithImageData:v20 size:v38 & (v10 >> 7) scale:(v12 | v13) & 1 appearanceType:v29 scaleWhenDrawing:1 metadata:v14 sendNotification:v15, v11];
  v34 = v33;
  if (!v33)
  {
LABEL_29:
    v36 = 0;
    goto LABEL_31;
  }

  v35 = *(a3 + 8);
  if ((v35 & 0x10) != 0)
  {
    [v33 setVersion:*(a3 + 32)];
    v35 = *(a3 + 8);
  }

  if ((v35 & 0x20) != 0 && *(a3 + 53) == 1)
  {
    v36 = v34;
    [v34 setVersionOutOfDate:1];
  }

  else
  {
    v36 = v34;
  }

LABEL_31:
  if ((*(a3 + 8) & 0x40) != 0)
  {
    v37 = *(a3 + 9);
  }

  else
  {
    v37 = 0;
  }

  [v36 requireMinimumSupportedVersionAndPropagateToChildObjects:v37];
}

- (BOOL)saveToArchive:(void *)a3 dataPersister:(id)a4 stripImageMarkupMetadata:(BOOL)a5 error:(id *)a6
{
  v300 = a5;
  v330 = *MEMORY[0x277D85DE8];
  v305 = a4;
  v303 = self;
  v8 = [(ICAttachment *)self identifier];

  if (v8)
  {
    v9 = [(ICAttachment *)v303 identifier];
    v10 = [v9 UTF8String];
    *(a3 + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v11 = v10;
    v12 = *(a3 + 5);
    if (v12 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v12, v11);
  }

  v13 = [(ICAttachment *)v303 intrinsicNotesVersionForScenario:1];
  if (v13)
  {
    *(a3 + 8) |= 0x1000000u;
    *(a3 + 29) = v13;
  }

  v14 = [(ICAttachment *)v303 attachmentModel];
  v320 = 0;
  v299 = [v14 mergeableDataForCopying:&v320];
  v298 = v320;

  if (v299)
  {
    if (!v305 || (-[ICAttachment identifier](v303, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v15, @"mergeableData"], v16 = objc_claimAutoreleasedReturnValue(), v15, LOBYTE(v15) = objc_msgSend(v305, "saveData:identifier:", v299, v16), v16, (v15 & 1) == 0))
    {
      v17 = v299;
      v18 = [v299 bytes];
      v19 = [v299 length];
      *(a3 + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v20 = v19;
      v21 = *(a3 + 6);
      if (v21 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v21, v18, v20);
    }
  }

  [(ICAttachment *)v303 sizeHeight];
  if (v22 != 0.0)
  {
    [(ICAttachment *)v303 sizeHeight];
    *&v23 = v23;
    *(a3 + 8) |= 4u;
    *(a3 + 14) = LODWORD(v23);
  }

  [(ICAttachment *)v303 sizeWidth];
  if (v24 != 0.0)
  {
    [(ICAttachment *)v303 sizeWidth];
    *&v25 = v25;
    *(a3 + 8) |= 8u;
    *(a3 + 15) = LODWORD(v25);
  }

  [(ICAttachment *)v303 originX];
  if (v26 != 0.0)
  {
    [(ICAttachment *)v303 originX];
    *&v27 = v27;
    *(a3 + 8) |= 0x800u;
    *(a3 + 34) = LODWORD(v27);
  }

  [(ICAttachment *)v303 originY];
  if (v28 != 0.0)
  {
    [(ICAttachment *)v303 originY];
    *&v29 = v29;
    *(a3 + 8) |= 0x1000u;
    *(a3 + 35) = LODWORD(v29);
  }

  if ([(ICAttachment *)v303 orientation])
  {
    v30 = [(ICAttachment *)v303 orientation];
    *(a3 + 8) |= 0x2000u;
    *(a3 + 40) = v30;
  }

  v31 = [(ICAttachment *)v303 summary];
  v32 = v31 == 0;

  if (!v32)
  {
    v33 = [(ICAttachment *)v303 summary];
    v34 = v33;
    v35 = [v33 UTF8String];
    *(a3 + 8) |= 0x10u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v36 = v35;
    v37 = *(a3 + 8);
    if (v37 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v37, v36);
  }

  v38 = [(ICAttachment *)v303 title];
  v39 = v38 == 0;

  if (!v39)
  {
    v40 = [(ICAttachment *)v303 title];
    v41 = v40;
    v42 = [v40 UTF8String];
    *(a3 + 8) |= 0x20u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v43 = v42;
    v44 = *(a3 + 9);
    if (v44 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v44, v43);
  }

  v45 = [(ICAttachment *)v303 userTitle];
  v46 = v45 == 0;

  if (!v46)
  {
    v47 = [(ICAttachment *)v303 userTitle];
    v48 = v47;
    v49 = [v47 UTF8String];
    *(a3 + 9) |= 4u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v50 = v49;
    v51 = *(a3 + 39);
    if (v51 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v51, v50);
  }

  v52 = [(ICAttachment *)v303 typeUTI];
  v53 = v52 == 0;

  if (!v53)
  {
    v54 = [(ICAttachment *)v303 typeUTI];
    v55 = v54;
    v56 = [v54 UTF8String];
    *(a3 + 8) |= 0x40u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v57 = v56;
    v58 = *(a3 + 10);
    if (v58 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v58, v57);
  }

  v59 = [(ICAttachment *)v303 urlString];
  v60 = v59 == 0;

  if (!v60)
  {
    v61 = [(ICAttachment *)v303 urlString];
    v62 = v61;
    v63 = [v61 UTF8String];
    *(a3 + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v64 = v63;
    v65 = *(a3 + 11);
    if (v65 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v65, v64);
  }

  v66 = [(ICAttachment *)v303 previewUpdateDate];
  v67 = v66 == 0;

  if (!v67)
  {
    v68 = [(ICAttachment *)v303 previewUpdateDate];
    [v68 timeIntervalSinceReferenceDate];
    *(a3 + 8) |= 0x4000u;
    *(a3 + 18) = v69;
  }

  v70 = [(ICCloudSyncingObject *)v303 creationDate];
  v71 = v70 == 0;

  if (!v71)
  {
    v72 = [(ICCloudSyncingObject *)v303 creationDate];
    [v72 timeIntervalSinceReferenceDate];
    *(a3 + 8) |= 0x8000u;
    *(a3 + 19) = v73;
  }

  v74 = [(ICCloudSyncingObject *)v303 modificationDate];
  v75 = v74 == 0;

  if (!v75)
  {
    v76 = [(ICCloudSyncingObject *)v303 modificationDate];
    [v76 timeIntervalSinceReferenceDate];
    *(a3 + 8) |= 0x10000u;
    *(a3 + 21) = v77;
  }

  v78 = [(ICAttachment *)v303 remoteFileURL];
  v79 = v78 == 0;

  if (!v79)
  {
    v80 = [(ICAttachment *)v303 remoteFileURL];
    v81 = [v80 absoluteString];
    v82 = v81;
    v83 = [v81 UTF8String];
    *(a3 + 8) |= 0x20000u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v84 = v83;
    v85 = *(a3 + 22);
    if (v85 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v85, v84);
  }

  if ([(ICAttachment *)v303 checkedForLocation])
  {
    v86 = [(ICAttachment *)v303 checkedForLocation];
    *(a3 + 8) |= 0x40000u;
    *(a3 + 164) = v86;
  }

  if ([(ICAttachment *)v303 fileSize])
  {
    v87 = [(ICAttachment *)v303 fileSize];
    *(a3 + 8) |= 0x80000u;
    *(a3 + 23) = v87;
  }

  [(ICAttachment *)v303 duration];
  if (v88 != 0.0)
  {
    [(ICAttachment *)v303 duration];
    *(a3 + 8) |= 0x100000u;
    *(a3 + 24) = v89;
  }

  if ([(ICAttachment *)v303 imageFilterType])
  {
    v90 = [(ICAttachment *)v303 imageFilterType];
    *(a3 + 8) |= 0x200000u;
    *(a3 + 98) = v90;
  }

  v91 = [(ICAttachment *)v303 markupModelData];
  v92 = [v91 length] == 0;

  if (!v92)
  {
    if (!v305 || (-[ICAttachment identifier](v303, "identifier"), v93 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v93, @"markupModelData"], v94 = objc_claimAutoreleasedReturnValue(), v93, -[ICAttachment markupModelData](v303, "markupModelData"), v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v305, "saveData:identifier:", v95, v94), v95, v94, (v96 & 1) == 0))
    {
      v97 = [(ICAttachment *)v303 markupModelData];
      v98 = v97;
      v99 = [v97 bytes];
      v100 = [(ICAttachment *)v303 markupModelData];
      v101 = [v100 length];
      *(a3 + 8) |= 0x400000u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v102 = v101;
      v103 = *(a3 + 25);
      if (v103 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v103, v99, v102);
    }
  }

  if ([(ICAttachment *)v303 hasCroppingQuad])
  {
    [(ICAttachment *)v303 croppingQuadBottomLeftX];
    *(a3 + 8) |= 0x2000000u;
    *(a3 + 30) = v104;
    [(ICAttachment *)v303 croppingQuadBottomLeftY];
    *(a3 + 8) |= 0x4000000u;
    *(a3 + 31) = v105;
    [(ICAttachment *)v303 croppingQuadBottomRightX];
    *(a3 + 8) |= 0x8000000u;
    *(a3 + 32) = v106;
    [(ICAttachment *)v303 croppingQuadBottomRightY];
    *(a3 + 8) |= 0x10000000u;
    *(a3 + 33) = v107;
    [(ICAttachment *)v303 croppingQuadTopLeftX];
    *(a3 + 8) |= 0x20000000u;
    *(a3 + 34) = v108;
    [(ICAttachment *)v303 croppingQuadTopLeftY];
    *(a3 + 8) |= 0x40000000u;
    *(a3 + 35) = v109;
    [(ICAttachment *)v303 croppingQuadTopRightX];
    *(a3 + 8) |= 0x80000000;
    *(a3 + 36) = v110;
    [(ICAttachment *)v303 croppingQuadTopRightY];
    *(a3 + 9) |= 1u;
    *(a3 + 37) = v111;
  }

  v112 = [(ICAttachment *)v303 location];
  v113 = v112 == 0;

  if (!v113)
  {
    *(a3 + 8) |= 0x100u;
    v114 = *(a3 + 12);
    if (!v114)
    {
      operator new();
    }

    v115 = [(ICAttachment *)v303 location];
    [v115 latitude];
    *(v114 + 32) |= 1u;
    *(v114 + 40) = v116;

    v117 = [(ICAttachment *)v303 location];
    [v117 longitude];
    *(v114 + 32) |= 2u;
    *(v114 + 48) = v118;

    v119 = [(ICAttachment *)v303 location];
    v120 = [v119 placeUpdated];
    *(v114 + 32) |= 8u;
    *(v114 + 64) = v120;

    v121 = [(ICAttachment *)v303 location];
    v122 = [v121 placemark];
    v123 = v122 == 0;

    if (!v123)
    {
      v124 = MEMORY[0x277CCAAB0];
      v125 = [(ICAttachment *)v303 location];
      v126 = [v125 placemark];
      v127 = [v124 archivedDataWithRootObject:v126 requiringSecureCoding:1 error:0];

      v128 = v127;
      v129 = [v127 bytes];
      v130 = [v127 length];
      *(v114 + 32) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v131 = v130;
      v132 = *(v114 + 56);
      if (v132 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v132, v129, v131);
    }
  }

  if ([(ICAttachment *)v303 hasFallbackImage])
  {
    v133 = [(ICAttachment *)v303 fallbackImageData];
    if (!v305 || (-[ICAttachment identifier](v303, "identifier"), v134 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackImage", v134], v135 = objc_claimAutoreleasedReturnValue(), v134, LOBYTE(v134) = objc_msgSend(v305, "saveData:identifier:", v133, v135), v135, (v134 & 1) == 0))
    {
      v136 = v133;
      v137 = [v133 bytes];
      v138 = [v133 length];
      *(a3 + 9) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v139 = v138;
      v140 = *(a3 + 40);
      if (v140 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v140, v137, v139);
    }
  }

  if ([(ICAttachment *)v303 hasFallbackPDF])
  {
    v141 = [(ICAttachment *)v303 fallbackPDFData];
    if (!v305 || (-[ICAttachment identifier](v303, "identifier"), v142 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackPDF", v142], v143 = objc_claimAutoreleasedReturnValue(), v142, LOBYTE(v142) = objc_msgSend(v305, "saveData:identifier:", v141, v143), v143, (v142 & 1) == 0))
    {
      v144 = v141;
      v145 = [v141 bytes];
      v146 = [v141 length];
      *(a3 + 9) |= 0x100u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v147 = v146;
      v148 = *(a3 + 47);
      if (v148 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v148, v145, v147);
    }
  }

  v149 = [(ICAttachment *)v303 media];
  if (!v149 || (-[ICAttachment media](v303, "media"), v150 = objc_claimAutoreleasedReturnValue(), [v150 identifier], v151 = objc_claimAutoreleasedReturnValue(), v152 = v151 == 0, v151, v150, v149, v152))
  {
    v301 = 1;
    goto LABEL_143;
  }

  *(a3 + 8) |= 0x200u;
  v153 = *(a3 + 13);
  if (!v153)
  {
    operator new();
  }

  v154 = [(ICAttachment *)v303 media];
  v155 = [v154 identifier];
  v156 = v155;
  v157 = [v155 UTF8String];
  *(v153 + 32) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v158 = v157;
  v159 = *(v153 + 40);
  if (v159 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v159, v158);

  v160 = [(ICAttachment *)v303 media];
  v161 = [v160 intrinsicNotesVersionForScenario:1];

  if (v161)
  {
    *(v153 + 32) |= 0x10u;
    *(v153 + 72) = v161;
  }

  v162 = [(ICAttachment *)v303 media];
  v163 = [v162 filename];
  v164 = v163 == 0;

  if (v164)
  {
    v182 = [(ICAttachment *)v303 media];
    v183 = [v182 identifier];
    v184 = v183;
    v185 = [v183 UTF8String];
    *(v153 + 32) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v186 = v185;
    v187 = *(v153 + 64);
    if (v187 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v187, v186);

    v176 = os_log_create("com.apple.notes", "Archiving");
    if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
    {
      v188 = [(ICAttachment *)v303 media];
      v189 = [v188 ic_loggingIdentifier];
      [ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:v189 dataPersister:v329 stripImageMarkupMetadata:v176 error:v188];
    }

    v175 = v176;
    goto LABEL_127;
  }

  v165 = [(ICAttachment *)v303 media];
  v166 = [v165 filename];
  v167 = v166;
  v168 = [v166 UTF8String];
  *(v153 + 32) |= 8u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v169 = v168;
  v170 = *(v153 + 64);
  if (v170 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v170, v169);

  v171 = [(ICAttachment *)v303 media];
  v172 = [v171 filename];
  v173 = [v172 pathExtension];
  v174 = v173 == 0;

  if (!v174)
  {
    v175 = [(ICAttachment *)v303 media];
    v176 = [v175 filename];
    v177 = [v176 pathExtension];
    v178 = v177;
    v179 = [v177 UTF8String];
    *(v153 + 32) |= 2u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v180 = v179;
    v181 = *(v153 + 48);
    if (v181 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v181, v180);

LABEL_127:
  }

  v190 = [(ICAttachment *)v303 media];
  v191 = [v190 dataWithoutImageMarkupMetadata:v300];

  if (!v191)
  {
    v199 = os_log_create("com.apple.notes", "Archiving");
    if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
    {
      v200 = [(ICAttachment *)v303 media];
      v201 = [v200 ic_loggingIdentifier];
      [ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:v201 dataPersister:v324 stripImageMarkupMetadata:v199 error:v200];
    }

    goto LABEL_141;
  }

  if (!v305 || (-[ICAttachment identifier](v303, "identifier"), v192 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v192, @"media"], v193 = objc_claimAutoreleasedReturnValue(), v192, LOBYTE(v192) = objc_msgSend(v305, "saveData:identifier:", v191, v193), v193, (v192 & 1) == 0))
  {
    if (!([v191 length] >> 28))
    {
      v194 = v191;
      v195 = [v191 bytes];
      v196 = [v191 length];
      *(v153 + 32) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v197 = v196;
      v198 = *(v153 + 56);
      if (v198 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v198, v195, v197);
      goto LABEL_136;
    }

    v199 = os_log_create("com.apple.notes", "Archiving");
    if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
    {
      v295 = [(ICAttachment *)v303 media];
      v296 = [v295 ic_loggingIdentifier];
      v297 = [v191 length];
      *buf = 138412546;
      v326 = v296;
      v327 = 2048;
      v328 = v297;
      _os_log_error_impl(&dword_214D51000, v199, OS_LOG_TYPE_ERROR, "Media (%@) is too large (%lu) to persist to protobuf", buf, 0x16u);
    }

LABEL_141:

    v301 = 0;
    goto LABEL_142;
  }

LABEL_136:
  v301 = 1;
LABEL_142:

LABEL_143:
  v202 = [(ICAttachment *)v303 metadataData];
  v203 = v202 == 0;

  if (!v203)
  {
    v204 = [(ICAttachment *)v303 metadataData];
    v205 = v204;
    v206 = [v204 bytes];
    v207 = [(ICAttachment *)v303 metadataData];
    v208 = [v207 length];
    *(a3 + 9) |= 2u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v209 = v208;
    v210 = *(a3 + 38);
    if (v210 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v210, v206, v209);
  }

  v211 = [(ICAttachment *)v303 linkPresentationArchivedMetadata];
  v212 = v211 == 0;

  if (!v212)
  {
    v213 = [(ICAttachment *)v303 linkPresentationArchivedMetadata];
    v214 = v213;
    v215 = [v213 bytes];
    v216 = [(ICAttachment *)v303 linkPresentationArchivedMetadata];
    v217 = [v216 length];
    *(a3 + 9) |= 0x10u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v218 = v217;
    v219 = *(a3 + 41);
    if (v219 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v219, v215, v218);
  }

  v318 = 0u;
  v319 = 0u;
  v316 = 0u;
  v317 = 0u;
  obj = [(ICAttachment *)v303 previewImages];
  v220 = [obj countByEnumeratingWithState:&v316 objects:v323 count:16];
  if (v220)
  {
    v221 = 0;
    v222 = *v317;
    do
    {
      for (i = 0; i != v220; ++i)
      {
        if (*v317 != v222)
        {
          objc_enumerationMutation(obj);
        }

        v224 = *(*(&v316 + 1) + 8 * i);
        v225 = *(a3 + 31);
        v226 = *(a3 + 30);
        if (v226 >= v225)
        {
          if (v225 == *(a3 + 32))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 112, v225 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::PreviewImage>::New();
        }

        v227 = *(a3 + 14);
        *(a3 + 30) = v226 + 1;
        v228 = *(v227 + 8 * v226);
        v229 = [(ICAttachment *)v303 identifier];
        v230 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_previewImage_%lu", v229, v221];

        [(ICAttachment *)v303 savePreview:v224 toArchive:v228 previewDataIdentifier:v230 dataPersister:v305];
        ++v221;
      }

      v220 = [obj countByEnumeratingWithState:&v316 objects:v323 count:16];
    }

    while (v220);
  }

  v315 = 0u;
  v313 = 0u;
  v314 = 0u;
  v312 = 0u;
  v231 = [(ICAttachment *)v303 subAttachments];
  v232 = [v231 countByEnumeratingWithState:&v312 objects:v322 count:16];
  if (v232)
  {
    v233 = *v313;
    do
    {
      for (j = 0; j != v232; ++j)
      {
        if (*v313 != v233)
        {
          objc_enumerationMutation(v231);
        }

        v235 = *(*(&v312 + 1) + 8 * j);
        if (([v235 markedForDeletion] & 1) == 0)
        {
          v236 = objc_autoreleasePoolPush();
          v237 = *(a3 + 55);
          v238 = *(a3 + 54);
          if (v238 >= v237)
          {
            if (v237 == *(a3 + 56))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 208, v237 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
          }

          v239 = *(a3 + 26);
          *(a3 + 54) = v238 + 1;
          v240 = *(v239 + 8 * v238);
          v311 = 0;
          v241 = [v235 saveToArchive:v240 dataPersister:v305 stripImageMarkupMetadata:v300 error:&v311];
          v242 = v311;
          objc_autoreleasePoolPop(v236);
          v301 = v241;
          if (a6 && v242)
          {
            v243 = v242;
            *a6 = v242;
          }
        }
      }

      v232 = [v231 countByEnumeratingWithState:&v312 objects:v322 count:16];
    }

    while (v232);
  }

  v244 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v245 = [(ICAttachment *)v303 visibleInlineAttachments];
  v246 = [v245 allObjects];
  [v244 ic_addObjectsFromNonNilArray:v246];

  v247 = [v298 allObjects];
  [v244 ic_addObjectsFromNonNilArray:v247];

  v309 = 0u;
  v310 = 0u;
  v307 = 0u;
  v308 = 0u;
  v248 = v244;
  v249 = [v248 countByEnumeratingWithState:&v307 objects:v321 count:16];
  if (v249)
  {
    v250 = *v308;
    do
    {
      for (k = 0; k != v249; ++k)
      {
        if (*v308 != v250)
        {
          objc_enumerationMutation(v248);
        }

        v252 = *(*(&v307 + 1) + 8 * k);
        v253 = *(a3 + 86);
        v254 = *(a3 + 87);
        if (v253 >= v254)
        {
          if (v254 == *(a3 + 88))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 336, v254 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
        }

        v255 = *(a3 + 42);
        *(a3 + 86) = v253 + 1;
        v256 = *(v255 + 8 * v253);
        v306 = 0;
        [v252 saveToArchive:v256 dataPersister:v305 error:&v306];
        v257 = v306;
        if (a6 && v257)
        {
          v257 = v257;
          *a6 = v257;
        }
      }

      v249 = [v248 countByEnumeratingWithState:&v307 objects:v321 count:16];
    }

    while (v249);
  }

  objc_opt_class();
  v258 = [(ICAttachment *)v303 attachmentModel];
  v259 = ICDynamicCast();

  if (v259)
  {
    v260 = [v259 archivePaperBundleToDiskWithError:a6];
    v261 = v260;
    if (!v260)
    {
      goto LABEL_207;
    }

    v262 = MEMORY[0x277CBEA90];
    v263 = [v260 path];
    v264 = [v262 dataWithContentsOfFile:v263];

    if (v264)
    {
      if (!v305 || (-[ICAttachment identifier](v303, "identifier"), v265 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v265, @"systemPaperBundle"], v266 = objc_claimAutoreleasedReturnValue(), v265, LOBYTE(v265) = objc_msgSend(v305, "saveData:identifier:", v264, v266), v266, (v265 & 1) == 0))
      {
        v267 = v264;
        v268 = [v264 bytes];
        v269 = [v264 length];
        *(a3 + 9) |= 0x40u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v270 = v269;
        v271 = *(a3 + 45);
        if (v271 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        std::string::__assign_external(v271, v268, v270);
      }
    }

    v272 = [MEMORY[0x277CCAA00] defaultManager];
    [v272 removeItemAtURL:v261 error:0];

    if (!v264)
    {
LABEL_207:
      v273 = os_log_create("com.apple.notes", "Archiving");
      if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
      {
        v274 = [(ICCloudSyncingObject *)v303 ic_loggingIdentifier];
        v275 = [v259 paperBundleURL];
        [ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:v274 dataPersister:v275 stripImageMarkupMetadata:buf error:v273];
      }

      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:dataPersister:stripImageMarkupMetadata:error:]" simulateCrash:1 showAlert:1 format:@"Failed to archive PaperKit bundle"];
      v301 = 0;
    }
  }

  v276 = [(ICAttachment *)v303 synapseData];
  v277 = v276 == 0;

  if (!v277)
  {
    v278 = [(ICAttachment *)v303 synapseData];
    v279 = v278;
    v280 = [v278 bytes];
    v281 = [(ICAttachment *)v303 synapseData];
    v282 = [v281 length];
    *(a3 + 9) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v283 = v282;
    v284 = *(a3 + 46);
    if (v284 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v284, v280, v283);
  }

  v285 = [(ICAttachment *)v303 mergeablePreferredViewSize];
  v286 = v285 == 0;

  if (!v286)
  {
    v287 = [(ICAttachment *)v303 mergeablePreferredViewSize];
    v288 = v287;
    v289 = [v287 bytes];
    v290 = [(ICAttachment *)v303 mergeablePreferredViewSize];
    v291 = [v290 length];
    *(a3 + 9) |= 0x200u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v292 = v291;
    v293 = *(a3 + 48);
    if (v293 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v293, v289, v292);
  }

  return v301 & 1;
}

- (void)savePreview:(id)a3 toArchive:(void *)a4 previewDataIdentifier:(id)a5 dataPersister:(id)a6
{
  v30 = a3;
  v9 = a5;
  v10 = a6;
  [v30 scale];
  *&v11 = v11;
  *(a4 + 8) |= 1u;
  *(a4 + 12) = LODWORD(v11);
  v12 = [v30 scaleWhenDrawing];
  *(a4 + 8) |= 2u;
  *(a4 + 52) = v12;
  v13 = [v30 appearanceType];
  *(a4 + 8) |= 0x80u;
  *(a4 + 17) = v13;
  if (![v30 isPasswordProtected])
  {
    v15 = MEMORY[0x277CBEA90];
    v16 = [v30 previewImageURL];
    v14 = [v15 dataWithContentsOfURL:v16];

    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_6:
    if (!v10 || ([v10 saveData:v14 identifier:v9] & 1) == 0)
    {
      v17 = [v14 bytes];
      v18 = [v14 length];
      *(a4 + 8) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v19 = v18;
      v20 = *(a4 + 5);
      if (v20 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v20, v17, v19);
    }

    goto LABEL_13;
  }

  if (![v30 isAuthenticated])
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = [v30 decryptedImageData];
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_13:
  v21 = [v30 metadata];

  if (v21)
  {
    v22 = [v30 metadata];
    v23 = [v22 bytes];
    v24 = [v30 metadata];
    v25 = [v24 length];
    *(a4 + 8) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v26 = v25;
    v27 = *(a4 + 7);
    if (v27 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v27, v23, v26);
  }

  if ([v30 version])
  {
    v28 = [v30 version];
    *(a4 + 8) |= 0x10u;
    *(a4 + 16) = v28;
  }

  if ([v30 versionOutOfDate])
  {
    *(a4 + 8) |= 0x20u;
    *(a4 + 53) = 1;
  }

  v29 = [v30 intrinsicNotesVersionForScenario:1];
  if (v29)
  {
    *(a4 + 8) |= 0x40u;
    *(a4 + 9) = v29;
  }
}

- (unint64_t)approximateArchiveSizeIncludingPreviews:(BOOL)a3
{
  v3 = a3;
  v48 = *MEMORY[0x277D85DE8];
  v4 = [(ICAttachment *)self mergeableData];

  if (v4)
  {
    v5 = [(ICAttachment *)self mergeableData];
    v4 = [v5 length];
  }

  v6 = [(ICAttachment *)self media];
  if (v6 && (-[ICAttachment media](self, "media"), v7 = objc_claimAutoreleasedReturnValue(), [v7 identifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v8))
  {
    v9 = self;
    if (![(ICAttachment *)self fileSize])
    {
      v10 = [(ICAttachment *)self attachmentModel];
      [v10 updateFileBasedAttributes];

      v9 = self;
    }

    if ([(ICAttachment *)v9 fileSize])
    {
      v4 += [(ICAttachment *)v9 fileSize];
    }

    else if ([(ICAttachment *)v9 attachmentType]== 3)
    {
      [(ICAttachment *)v9 sizeWidth];
      v32 = v31;
      [(ICAttachment *)v9 sizeHeight];
      v4 = (v4 + v32 * v33 * 4.0);
    }
  }

  else
  {
    v9 = self;
  }

  if (v3)
  {
    v11 = [(ICAttachment *)v9 previewImages];
    v12 = [v11 count];

    if (v12)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = [(ICAttachment *)self previewImages];
      v13 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v13)
      {
        v14 = *v43;
        v15 = *MEMORY[0x277CBE838];
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v42 + 1) + 8 * i);
            if ([v17 isPasswordProtected])
            {
              [v17 encryptedPreviewImageURL];
            }

            else
            {
              [v17 previewImageURL];
            }
            v18 = ;
            v40 = 0;
            v41 = 0;
            v19 = [v18 getResourceValue:&v41 forKey:v15 error:&v40];
            v20 = v41;
            v21 = v40;
            v22 = v21;
            if (v19)
            {
              v4 += [v20 unsignedIntegerValue];
            }

            else
            {
              NSLog(&cfstr_ErrorReadingAt.isa, v21);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v13);
      }

      v9 = self;
    }

    else
    {
      v9 = self;
      if ([(ICAttachment *)self attachmentType]== 9)
      {
        +[ICDrawing defaultPixelSize];
        v4 = (v4 + v23 * v24);
      }
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v25 = [(ICAttachment *)v9 subAttachments];
  v26 = [v25 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v26)
  {
    v27 = *v37;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v36 + 1) + 8 * j);
        if ([v29 isVisible])
        {
          v4 += [v29 approximateArchiveSizeIncludingPreviews:v3];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v26);
  }

  return v4;
}

- (id)synapseBasedMetadata
{
  v3 = [(ICAttachment *)self synapseData];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D6B790]);
    v5 = [(ICAttachment *)self synapseData];
    v13 = 0;
    v6 = [v4 initWithData:v5 error:&v13];
    v7 = v13;

    if (v7)
    {
      v9 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachment(SearchLinkPresentation) *)v6 synapseBasedMetadata];
      }

      v10 = 0;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v8);
      v10 = [objc_alloc(*(v11 + 1736)) _initWithSynapseContentItem:v6];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)quotedText
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__21;
  v11 = __Block_byref_object_dispose__21;
  v12 = 0;
  v3 = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ICAttachment_SearchLinkPresentation__quotedText__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__ICAttachment_SearchLinkPresentation__quotedText__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hasSynapseLink];
  if (v2)
  {
    v4 = [*(a1 + 32) synapseBasedMetadata];
    v3 = [v4 selectedText];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v2)
  {
  }
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  LOBYTE(a5) = [(ICAttachment *)self mergeCloudKitRecord:v12 accountID:v11 approach:a5 mergeableFieldState:v10 newAttachment:[(ICAttachment *)self needsInitialFetchFromCloud]];

  return a5;
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6 newAttachment:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v171.receiver = self;
  v171.super_class = ICAttachment;
  v15 = [(ICCloudSyncingObject *)&v171 mergeCloudKitRecord:v12 accountID:v13 approach:a5 mergeableFieldState:v14];
  if (v15)
  {
    v16 = [(ICAttachment *)self managedObjectContext];
    v17 = [v12 recordID];
    v18 = [v17 recordName];
    [(ICAttachment *)self setIdentifier:v18];

    v19 = [v12 objectForKeyedSubscript:@"UTI"];
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v22 = [v12 encryptedValues];
      v23 = [v22 objectForKeyedSubscript:@"UTIEncrypted"];

      if (!v23 || ([v23 ic_stringValue], v20 = objc_claimAutoreleasedReturnValue(), v23, !v20))
      {
        v168 = 0;
        goto LABEL_11;
      }
    }

    v21 = [(ICAttachment *)self typeUTI];
    if ([v20 isEqual:v21])
    {
      v168 = 0;
    }

    else
    {
      v168 = [v20 isEqual:@"com.apple.notes.gallery"];
    }

    [(ICAttachment *)self setTypeUTI:v20 resetToIntrinsicNotesVersion:0];
LABEL_11:
    v24 = [objc_opt_class() noteFromAttachmentRecord:v12 accountID:v13 context:v16];
    if (v24)
    {
      [(ICAttachment *)self setNote:v24];
      v25 = [(ICAttachment *)self note];
      [v25 addAttachmentsObject:self];
    }

    v26 = [(ICAttachment *)self parentAttachmentFromRecord:v12 accountID:v13 context:v16];
    if (v26)
    {
      [(ICAttachment *)self setParentAttachment:v26];
    }

    v169 = v26;
    v27 = [(ICAttachment *)self attachmentModel];
    [v27 mergeMergeableDataFromCloudKitRecord:v12 approach:a5 mergeableFieldState:v14];

    if (a5)
    {
      goto LABEL_113;
    }

    if (a7 || [(ICAttachment *)self attachmentType]!= 9)
    {
      v28 = [v12 objectForKeyedSubscript:@"OriginX"];

      if (v28)
      {
        v29 = [v12 objectForKeyedSubscript:@"OriginX"];
        [v29 doubleValue];
        [(ICAttachment *)self setOriginX:?];
      }

      v30 = [v12 objectForKeyedSubscript:@"OriginY"];

      if (v30)
      {
        v31 = [v12 objectForKeyedSubscript:@"OriginY"];
        [v31 doubleValue];
        [(ICAttachment *)self setOriginY:?];
      }

      v32 = [v12 objectForKeyedSubscript:@"Width"];

      if (v32)
      {
        v33 = [v12 objectForKeyedSubscript:@"Width"];
        [v33 doubleValue];
        [(ICAttachment *)self setSizeWidth:?];
      }

      v34 = [v12 objectForKeyedSubscript:@"Height"];

      if (v34)
      {
        v35 = [v12 objectForKeyedSubscript:@"Height"];
        [v35 doubleValue];
        [(ICAttachment *)self setSizeHeight:?];
      }

      v36 = [v12 objectForKeyedSubscript:@"Orientation"];

      if (v36)
      {
        v37 = [v12 objectForKeyedSubscript:@"Orientation"];
        -[ICAttachment setOrientation:](self, "setOrientation:", [v37 integerValue]);
      }
    }

    v38 = [v12 encryptedValues];
    v39 = [v38 objectForKeyedSubscript:@"URLStringEncrypted"];

    v160 = v39;
    v161 = v24;
    if (v39)
    {
      v40 = [v39 ic_stringValue];
      v41 = [v40 ic_substringToIndex:2047];
      [(ICAttachment *)self setUrlString:v41];
    }

    else
    {
      v42 = [v12 objectForKeyedSubscript:@"URLString"];

      if (!v42)
      {
        goto LABEL_33;
      }

      objc_opt_class();
      v40 = [v12 objectForKeyedSubscript:@"URLString"];
      v41 = ICDynamicCast();
      v43 = [v41 ic_substringToIndex:2047];
      [(ICAttachment *)self setUrlString:v43];
    }

LABEL_33:
    v44 = [v12 encryptedValues];
    v45 = [v44 objectForKeyedSubscript:@"TitleEncrypted"];

    if (v45)
    {
      v46 = [v45 ic_stringValue];
    }

    else
    {
      v47 = [v12 objectForKeyedSubscript:@"Title"];

      if (!v47)
      {
        goto LABEL_38;
      }

      v46 = [v12 objectForKeyedSubscript:@"Title"];
    }

    v48 = v46;
    [(ICAttachment *)self setTitle:v46];

LABEL_38:
    v159 = v45;
    v49 = [v12 encryptedValues];
    v50 = [v49 objectForKeyedSubscript:@"UserTitle"];

    v158 = v50;
    v51 = [v50 ic_stringValue];
    [(ICAttachment *)self setUserTitle:v51];

    v52 = [v12 objectForKeyedSubscript:@"ImageFilterType"];

    if (v52)
    {
      v53 = [v12 objectForKeyedSubscript:@"ImageFilterType"];
      -[ICAttachment setImageFilterType:](self, "setImageFilterType:", [v53 integerValue]);
    }

    v54 = [v12 ic_encryptedInlineableDataAssetForKeyPrefix:@"HandwritingSummary"];
    v55 = [v12 objectForKeyedSubscript:@"HandwritingSummaryVersion"];
    v56 = [v55 intValue];

    v167 = v54;
    if (v54)
    {
      v57 = [(ICAttachment *)self handwritingSummary];
      if (!v57 || (v58 = v57, v59 = [(ICAttachment *)self handwritingSummaryVersion], v58, v59 <= v56))
      {
        v60 = [v167 ic_stringValue];
        [(ICAttachment *)self setHandwritingSummary:v60];

        [(ICAttachment *)self setHandwritingSummaryVersion:v56];
      }
    }

    v61 = [v12 ic_encryptedInlineableDataAssetForKeyPrefix:@"ImageClassificationSummary"];
    v62 = [v12 objectForKeyedSubscript:@"ImageClassificationSummaryVersion"];
    v63 = [v62 intValue];

    v166 = v61;
    if (v61)
    {
      v64 = [(ICAttachment *)self imageClassificationSummary];
      if (!v64 || (v65 = v64, v66 = [(ICAttachment *)self imageClassificationSummaryVersion], v65, v66 <= v63))
      {
        v67 = [v166 ic_stringValue];
        [(ICAttachment *)self setImageClassificationSummary:v67];

        [(ICAttachment *)self setImageClassificationSummaryVersion:v63];
      }
    }

    v68 = [v12 ic_encryptedInlineableDataAssetForKeyPrefix:@"OcrSummary"];
    v69 = [v12 objectForKeyedSubscript:@"OcrSummaryVersion"];
    v70 = [v69 intValue];

    v165 = v68;
    if (v68)
    {
      v71 = [(ICAttachment *)self ocrSummary];
      if (!v71 || (v72 = v71, v73 = [(ICAttachment *)self ocrSummaryVersion], v72, v73 <= v70))
      {
        v74 = [v165 ic_stringValue];
        [(ICAttachment *)self setOcrSummary:v74];

        v75 = [v12 objectForKeyedSubscript:@"OcrSummaryVersion"];
        -[ICAttachment setOcrSummaryVersion:](self, "setOcrSummaryVersion:", [v75 intValue]);
      }
    }

    v76 = [(ICAttachment *)self handwritingSummary];
    if (v76 || ([(ICAttachment *)self imageClassificationSummary], (v76 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v77 = v76;
    }

    else
    {
      v150 = [(ICAttachment *)self ocrSummary];

      if (v150)
      {
LABEL_56:
        v78 = [v12 encryptedValues];
        v79 = [v78 objectForKeyedSubscript:@"MarkupModelData"];

        v157 = v79;
        [(ICAttachment *)self setMarkupModelData:v79];
        v80 = [v12 objectForKeyedSubscript:@"FileSize"];

        if (v80)
        {
          v81 = [v12 objectForKeyedSubscript:@"FileSize"];
          -[ICAttachment setFileSize:](self, "setFileSize:", [v81 integerValue]);
        }

        v82 = [v12 objectForKeyedSubscript:@"HasMarkupData"];

        if (v82)
        {
          v83 = [v12 objectForKeyedSubscript:@"HasMarkupData"];
          -[ICAttachment setHasMarkupData:](self, "setHasMarkupData:", [v83 BOOLValue]);
        }

        v84 = [v12 objectForKeyedSubscript:@"Duration"];

        if (v84)
        {
          v85 = [v12 objectForKeyedSubscript:@"Duration"];
          [v85 doubleValue];
          [(ICAttachment *)self setDuration:?];
        }

        v86 = [v12 objectForKeyedSubscript:@"CreationDate"];

        if (v86)
        {
          v87 = [v12 objectForKeyedSubscript:@"CreationDate"];
          [(ICAttachment *)self setCreationDate:v87];
        }

        v88 = [v12 objectForKeyedSubscript:@"LastModificationDate"];

        v162 = v16;
        if (v88)
        {
          v89 = [v12 objectForKeyedSubscript:@"LastModificationDate"];
          v90 = [(ICCloudSyncingObject *)self modificationDate];
          v91 = [v89 laterDate:v90];
          [(ICAttachment *)self setModificationDate:v91];

          v92 = [(ICCloudSyncingObject *)self creationDate];
          if (!v92 || (v93 = v92, -[ICCloudSyncingObject creationDate](self, "creationDate"), v94 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CBEAA8] distantPast], v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v94, "isEqual:", v95), v95, v94, v93, v96))
          {
            v97 = [(ICCloudSyncingObject *)self modificationDate];
            [(ICAttachment *)self setCreationDate:v97];
          }
        }

        v98 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomLeftX"];

        if (v98)
        {
          v99 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomLeftX"];
          [v99 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomLeftX:?];
        }

        v100 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomLeftY"];

        if (v100)
        {
          v101 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomLeftY"];
          [v101 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomLeftY:?];
        }

        v102 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomRightX"];

        if (v102)
        {
          v103 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomRightX"];
          [v103 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomRightX:?];
        }

        v104 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomRightY"];

        if (v104)
        {
          v105 = [v12 objectForKeyedSubscript:@"CroppingQuadBottomRightY"];
          [v105 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomRightY:?];
        }

        v106 = [v12 objectForKeyedSubscript:@"CroppingQuadTopLeftX"];

        if (v106)
        {
          v107 = [v12 objectForKeyedSubscript:@"CroppingQuadTopLeftX"];
          [v107 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopLeftX:?];
        }

        v108 = [v12 objectForKeyedSubscript:@"CroppingQuadTopLeftY"];

        if (v108)
        {
          v109 = [v12 objectForKeyedSubscript:@"CroppingQuadTopLeftY"];
          [v109 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopLeftY:?];
        }

        v110 = [v12 objectForKeyedSubscript:@"CroppingQuadTopRightX"];

        if (v110)
        {
          v111 = [v12 objectForKeyedSubscript:@"CroppingQuadTopRightX"];
          [v111 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopRightX:?];
        }

        v112 = [v12 objectForKeyedSubscript:@"CroppingQuadTopRightY"];

        if (v112)
        {
          v113 = [v12 objectForKeyedSubscript:@"CroppingQuadTopRightY"];
          [v113 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopRightY:?];
        }

        v114 = [v12 encryptedValues];
        v115 = [v114 objectForKeyedSubscript:@"MetadataData"];

        if (v115)
        {
          [(ICAttachment *)self setMetadataData:v115];
        }

        [(ICAttachment *)self setHasPaperForm:0];
        [(ICAttachment *)self setDidRunPaperFormDetection:0];
        v116 = [v12 encryptedValues];
        v117 = [v116 objectForKeyedSubscript:@"PlacemarkEncrypted"];

        v163 = v15;
        v155 = v117;
        v156 = v115;
        if (v117)
        {
          v118 = v117;
        }

        else
        {
          v132 = [v12 objectForKeyedSubscript:@"Placemark"];

          if (!v132 || ([v12 objectForKeyedSubscript:@"Placemark"], (v118 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v153 = 0;
LABEL_99:
            v133 = [v12 ic_encryptedInlineableDataAssetForKeyPrefix:{@"LinkPresentationMetadata", v153}];
            if (v133)
            {
              [(ICAttachment *)self setLinkPresentationArchivedMetadata:v133];
            }

            v164 = v14;
            v134 = [v12 ic_encryptedInlineableDataAssetForKeyPrefix:@"SynapseData"];
            if (v134)
            {
              [(ICAttachment *)self setSynapseData:v134];
            }

            v135 = [v12 objectForKeyedSubscript:@"Media"];
            v136 = v135;
            if (v135)
            {
              v137 = [v135 recordID];
              v138 = [v137 recordName];

              v139 = [(ICAttachment *)self managedObjectContext];
              v140 = [ICMedia mediaWithIdentifier:v138 context:v139];

              if (!v140)
              {
                v140 = [ICMedia newMediaWithAttachment:self];
                [v140 setIdentifier:v138];
                [v140 setNeedsInitialFetchFromCloud:1];
              }

              [(ICAttachment *)self setMedia:v140];
            }

            [(ICAttachment *)self updatePreviewsFromRecord:v12];
            [(ICAttachment *)self mergeFallbackImageAndPDFFromRecord:v12];
            [(ICAttachment *)self mergePaperBundleFromRecord:v12];
            v141 = [(ICAttachment *)self systemPaperModel];
            [v141 fixupMetadataAndMinimumSupportedNotesVersion];

            if (v168 && ([(ICAttachment *)self markedForDeletion]& 1) == 0)
            {
              v142 = [MEMORY[0x277CCAB98] defaultCenter];
              [v142 postNotificationName:@"ICAttachmentDidCreateGalleryFromCloudNotification" object:self];
            }

            [(ICAttachment *)self fixMarkedForDeletionForScannedDocuments];
            v143 = [(ICAttachment *)self markedForDeletion];
            v144 = [(ICAttachment *)self media];
            v145 = [v144 markedForDeletion];

            LOBYTE(v15) = v163;
            if (v143 != v145)
            {
              v146 = [(ICAttachment *)self markedForDeletion];
              v147 = [(ICAttachment *)self media];
              [v147 setMarkedForDeletion:v146];
            }

            v14 = v164;
            v24 = v161;
            v16 = v162;
LABEL_113:
            v148 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];

            goto LABEL_114;
          }
        }

        v170 = 0;
        v153 = v118;
        v119 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v118 error:&v170];
        v120 = v170;
        if (v120)
        {
          v121 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            [ICAttachment(CloudKit) mergeCloudKitRecord:accountID:approach:mergeableFieldState:newAttachment:];
          }
        }

        objc_opt_class();
        v122 = [v119 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
        v123 = ICCheckedDynamicCast();

        v124 = [(ICAttachment *)self location];

        if (!v124)
        {
          v125 = [v123 location];
          [v125 coordinate];
          v127 = v126;
          v128 = [v123 location];
          [v128 coordinate];
          v129 = [(ICAttachment *)self addLocationWithLatitude:v127 longitude:?];
        }

        v130 = [(ICAttachment *)self location];
        [v130 setPlacemark:v123];

        v131 = [(ICAttachment *)self location];
        [v131 setPlaceUpdated:1];

        goto LABEL_99;
      }

      v151 = [v12 encryptedValues];
      v77 = [v151 objectForKeyedSubscript:@"SummaryEncrypted"];

      if (v77)
      {
        [v77 ic_stringValue];
      }

      else
      {
        [v12 objectForKeyedSubscript:@"Summary"];
      }
      v152 = ;
      [(ICAttachment *)self setSummary:v152];
    }

    goto LABEL_56;
  }

LABEL_114:

  return v15;
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  v165 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v162.receiver = self;
  v162.super_class = ICAttachment;
  v7 = [(ICCloudSyncingObject *)&v162 makeCloudKitRecordForApproach:a3 mergeableFieldState:v6];
  if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
  {
    v8 = [(ICAttachment *)self attachmentModel];
    [v8 addMergeableDataToCloudKitRecord:v7 approach:a3 mergeableFieldState:v6];
  }

  v9 = [(ICAttachment *)self typeUTI];

  if (v9)
  {
    v10 = [(ICAttachment *)self typeUTI];
    v11 = [v10 dataUsingEncoding:4];
    v12 = [v7 encryptedValues];
    [v12 setObject:v11 forKeyedSubscript:@"UTIEncrypted"];

    v13 = [(ICAttachment *)self typeUTI];
    [v7 setObject:v13 forKeyedSubscript:@"UTI"];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(ICCloudSyncingObject *)self loggingDescription];
      *buf = 138412290;
      v164 = v14;
      _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_DEFAULT, "Trying to create a record for an attachment that is of an unknown type: %@", buf, 0xCu);
    }
  }

  v15 = [(ICAttachment *)self note];
  v16 = [v15 recordID];

  v17 = [(ICAttachment *)self parentAttachment];
  v18 = [v17 recordID];

  v19 = MEMORY[0x277CBC070];
  if (v16)
  {
    v20 = objc_alloc(MEMORY[0x277CBC620]);
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v19;
    }

    v22 = [v20 initWithRecordID:v16 action:v21];
    [v7 setObject:v22 forKeyedSubscript:@"Note"];
  }

  if (v18)
  {
    v23 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v18 action:*v19];
    [v7 setObject:v23 forKeyedSubscript:@"ParentAttachment"];
  }

  if (!a3)
  {
    v24 = 0x277CCA000uLL;
    v25 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICAttachment imageFilterType](self, "imageFilterType")}];
    [v7 setObject:v25 forKeyedSubscript:@"ImageFilterType"];

    [(ICAttachment *)self originX];
    if (v26 != 0.0)
    {
      v27 = MEMORY[0x277CCABB0];
      [(ICAttachment *)self originX];
      v28 = [v27 numberWithDouble:?];
      [v7 setObject:v28 forKeyedSubscript:@"OriginX"];
    }

    [(ICAttachment *)self originY];
    if (v29 != 0.0)
    {
      v30 = MEMORY[0x277CCABB0];
      [(ICAttachment *)self originY];
      v31 = [v30 numberWithDouble:?];
      [v7 setObject:v31 forKeyedSubscript:@"OriginY"];
    }

    [(ICAttachment *)self sizeWidth];
    if (v32 != 0.0)
    {
      v33 = MEMORY[0x277CCABB0];
      [(ICAttachment *)self sizeWidth];
      v34 = [v33 numberWithDouble:?];
      [v7 setObject:v34 forKeyedSubscript:@"Width"];
    }

    [(ICAttachment *)self sizeHeight];
    if (v35 != 0.0)
    {
      v36 = MEMORY[0x277CCABB0];
      [(ICAttachment *)self sizeHeight];
      v37 = [v36 numberWithDouble:?];
      [v7 setObject:v37 forKeyedSubscript:@"Height"];
    }

    v38 = [MEMORY[0x277CCABB0] numberWithShort:{-[ICAttachment orientation](self, "orientation")}];
    [v7 setObject:v38 forKeyedSubscript:@"Orientation"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v39 = [(ICAttachment *)self urlString];

      if (v39)
      {
        v40 = [(ICAttachment *)self urlString];
        v41 = [v40 ic_substringToIndex:2047];
        v42 = [v41 dataUsingEncoding:4];
        [v7 encryptedValues];
        v43 = v18;
        v44 = v16;
        v45 = v6;
        v47 = v46 = v19;
        [v47 setObject:v42 forKeyedSubscript:@"URLStringEncrypted"];

        v19 = v46;
        v6 = v45;
        v16 = v44;
        v18 = v43;

        v24 = 0x277CCA000;
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v48 = [(ICAttachment *)self title];

      if (v48)
      {
        v49 = [(ICAttachment *)self title];
        v50 = [v49 dataUsingEncoding:4];
        v51 = [v7 encryptedValues];
        [v51 setObject:v50 forKeyedSubscript:@"TitleEncrypted"];

        v24 = 0x277CCA000uLL;
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v52 = [(ICAttachment *)self handwritingSummary];

      if (v52)
      {
        v53 = [(ICAttachment *)self handwritingSummary];
        v54 = [v53 dataUsingEncoding:4];

        [v7 ic_setEncryptedInlineableDataAsset:v54 forKeyPrefix:@"HandwritingSummary" approach:0 withObject:self];
      }
    }

    v55 = [*(v24 + 2992) numberWithShort:{-[ICAttachment handwritingSummaryVersion](self, "handwritingSummaryVersion")}];
    [v7 setObject:v55 forKeyedSubscript:@"HandwritingSummaryVersion"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v56 = [(ICAttachment *)self imageClassificationSummary];

      if (v56)
      {
        v57 = [(ICAttachment *)self imageClassificationSummary];
        v58 = [v57 dataUsingEncoding:4];

        [v7 ic_setEncryptedInlineableDataAsset:v58 forKeyPrefix:@"ImageClassificationSummary" approach:0 withObject:self];
      }
    }

    v59 = [*(v24 + 2992) numberWithShort:{-[ICAttachment imageClassificationSummaryVersion](self, "imageClassificationSummaryVersion")}];
    [v7 setObject:v59 forKeyedSubscript:@"ImageClassificationSummaryVersion"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v60 = [(ICAttachment *)self ocrSummary];

      if (v60)
      {
        v61 = [(ICAttachment *)self ocrSummary];
        v62 = [v61 dataUsingEncoding:4];

        [v7 ic_setEncryptedInlineableDataAsset:v62 forKeyPrefix:@"OcrSummary" approach:0 withObject:self];
      }
    }

    v63 = [*(v24 + 2992) numberWithShort:{-[ICAttachment ocrSummaryVersion](self, "ocrSummaryVersion")}];
    [v7 setObject:v63 forKeyedSubscript:@"OcrSummaryVersion"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v64 = [(ICAttachment *)self summary];

      if (v64)
      {
        v65 = [(ICAttachment *)self summary];
        v66 = [v65 ic_substringToIndex:999];

        v67 = [v66 dataUsingEncoding:4];
        v68 = [v7 encryptedValues];
        [v68 setObject:v67 forKeyedSubscript:@"SummaryEncrypted"];

        v24 = 0x277CCA000;
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v69 = [(ICAttachment *)self userTitle];
      v70 = [v69 dataUsingEncoding:4];
      v71 = [v7 encryptedValues];
      [v71 setObject:v70 forKeyedSubscript:@"UserTitle"];

      v24 = 0x277CCA000uLL;
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v72 = [(ICAttachment *)self markupModelData];

      if (v72)
      {
        v73 = [(ICAttachment *)self markupModelData];
        v74 = [v7 encryptedValues];
        [v74 setObject:v73 forKeyedSubscript:@"MarkupModelData"];
      }

      else
      {
        [v7 setObject:0 forKeyedSubscript:@"MarkupModelData"];
      }
    }

    if ([(ICAttachment *)self hasMarkupData])
    {
      v75 = [*(v24 + 2992) numberWithBool:{-[ICAttachment hasMarkupData](self, "hasMarkupData")}];
      [v7 setObject:v75 forKeyedSubscript:@"HasMarkupData"];
    }

    if ([(ICAttachment *)self fileSize])
    {
      v76 = [*(v24 + 2992) numberWithLongLong:{-[ICAttachment fileSize](self, "fileSize")}];
      [v7 setObject:v76 forKeyedSubscript:@"FileSize"];
    }

    [(ICAttachment *)self duration];
    if (v77 != 0.0)
    {
      v78 = *(v24 + 2992);
      [(ICAttachment *)self duration];
      v79 = [v78 numberWithDouble:?];
      [v7 setObject:v79 forKeyedSubscript:@"Duration"];
    }

    if ([(ICAttachment *)self attachmentType]== 5 && ([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v80 = [(ICAttachment *)self managedObjectContext];
      v81 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"PreviewImage" inRecord:v7 forObject:self context:v80];

      if (v81)
      {
        v82 = [(ICAttachment *)self attachmentModel];
        v83 = [v82 asset];

        v84 = [v83 previewImageDataWithUTType:*MEMORY[0x277CE1DC0]];
        v85 = [objc_opt_class() assetForData:v84];
        [v7 setObject:v85 forKeyedSubscript:@"PreviewImage"];

        v24 = 0x277CCA000uLL;
      }
    }

    v86 = [(ICAttachment *)self previewUpdateDate];

    if (v86)
    {
      v87 = [(ICAttachment *)self previewUpdateDate];
      [v7 setObject:v87 forKeyedSubscript:@"PreviewUpdateDate"];
    }

    v88 = [(ICCloudSyncingObject *)self creationDate];

    if (v88)
    {
      v89 = [(ICCloudSyncingObject *)self creationDate];
      [v7 setObject:v89 forKeyedSubscript:@"CreationDate"];
    }

    v90 = [(ICCloudSyncingObject *)self modificationDate];

    if (v90)
    {
      v91 = [(ICCloudSyncingObject *)self modificationDate];
      [v7 setObject:v91 forKeyedSubscript:@"LastModificationDate"];
    }

    v92 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadBottomLeftX];
    v93 = [v92 numberWithDouble:?];
    [v7 setObject:v93 forKeyedSubscript:@"CroppingQuadBottomLeftX"];

    v94 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadBottomLeftY];
    v95 = [v94 numberWithDouble:?];
    [v7 setObject:v95 forKeyedSubscript:@"CroppingQuadBottomLeftY"];

    v96 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadBottomRightX];
    v97 = [v96 numberWithDouble:?];
    [v7 setObject:v97 forKeyedSubscript:@"CroppingQuadBottomRightX"];

    v98 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadBottomRightY];
    v99 = [v98 numberWithDouble:?];
    [v7 setObject:v99 forKeyedSubscript:@"CroppingQuadBottomRightY"];

    v100 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadTopLeftX];
    v101 = [v100 numberWithDouble:?];
    [v7 setObject:v101 forKeyedSubscript:@"CroppingQuadTopLeftX"];

    v102 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadTopLeftY];
    v103 = [v102 numberWithDouble:?];
    [v7 setObject:v103 forKeyedSubscript:@"CroppingQuadTopLeftY"];

    v104 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadTopRightX];
    v105 = [v104 numberWithDouble:?];
    [v7 setObject:v105 forKeyedSubscript:@"CroppingQuadTopRightX"];

    v106 = *(v24 + 2992);
    [(ICAttachment *)self croppingQuadTopRightY];
    v107 = [v106 numberWithDouble:?];
    [v7 setObject:v107 forKeyedSubscript:@"CroppingQuadTopRightY"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v108 = [(ICAttachment *)self metadataData];

      if (v108)
      {
        v109 = [(ICAttachment *)self metadataData];
        v110 = [v7 encryptedValues];
        [v110 setObject:v109 forKeyedSubscript:@"MetadataData"];
      }
    }

    v111 = [(ICAttachment *)self location];
    v112 = [v111 placemark];

    if (v112)
    {
      v160 = v16;
      v113 = v6;
      v114 = v19;
      v115 = MEMORY[0x277CCAAB0];
      v116 = [(ICAttachment *)self location];
      v117 = [v116 placemark];
      v161 = 0;
      v118 = [v115 archivedDataWithRootObject:v117 requiringSecureCoding:1 error:&v161];
      v119 = v161;

      if (v119)
      {
        v120 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment(CloudKit) makeCloudKitRecordForApproach:v119 mergeableFieldState:?];
        }
      }

      v121 = [v7 encryptedValues];
      [v121 setObject:v118 forKeyedSubscript:@"PlacemarkEncrypted"];

      v122 = [(ICAttachment *)self location];
      v123 = [v122 formattedAddressWithoutAttachmentTitle];

      if (v123)
      {
        v124 = [v123 dataUsingEncoding:4];
        v125 = [v7 encryptedValues];
        [v125 setObject:v124 forKeyedSubscript:@"SummaryEncrypted"];
      }

      v19 = v114;
      v6 = v113;
      v16 = v160;
    }

    v126 = [(ICAttachment *)self media];
    v127 = [v126 recordID];

    if (v127)
    {
      v128 = [(ICAttachment *)self media];
      v129 = [v128 hasFile];

      if (v129)
      {
        v130 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v127 action:*v19];
        [v7 setObject:v130 forKeyedSubscript:@"Media"];
      }
    }

    v131 = [(ICAttachment *)self previewImages];
    v132 = [v131 count];

    if (v132)
    {
      v133 = objc_opt_class();
      v134 = [(ICAttachment *)self previewImages];
      [v133 addPreviewImages:v134 toRecord:v7];
    }

    if ([(ICAttachment *)self hasFallbackImage])
    {
      if (([(ICAttachment *)self isPasswordProtected]& 1) != 0)
      {
        [(ICAttachment *)self fallbackImageEncryptedURL];
      }

      else
      {
        [(ICAttachment *)self fallbackImageURL];
      }
      v135 = ;

      if (v135)
      {
        v136 = [(ICAttachment *)self managedObjectContext];
        v137 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"FallbackImage" inRecord:v7 forObject:self context:v136];

        if (v137)
        {
          v138 = [ICCloudSyncingObject assetForURL:v135];
          [v7 setObject:v138 forKeyedSubscript:@"FallbackImage"];
          v139 = [(ICAttachment *)self fallbackImageCryptoTag];
          [v7 setObject:v139 forKeyedSubscript:@"FallbackImageCryptoTag"];

          v140 = [(ICAttachment *)self fallbackImageCryptoInitializationVector];
          [v7 setObject:v140 forKeyedSubscript:@"FallbackImageCryptoInitializationVector"];
        }
      }
    }

    if ([(ICAttachment *)self hasFallbackPDF])
    {
      if (([(ICAttachment *)self isPasswordProtected]& 1) != 0)
      {
        [(ICAttachment *)self fallbackPDFEncryptedURL];
      }

      else
      {
        [(ICAttachment *)self fallbackPDFURL];
      }
      v141 = ;

      if (v141)
      {
        v142 = [ICCloudSyncingObject assetForURL:v141];
        [v7 setObject:v142 forKeyedSubscript:@"FallbackPDF"];
        v143 = [(ICAttachment *)self fallbackPDFCryptoTag];
        [v7 setObject:v143 forKeyedSubscript:@"FallbackPDFCryptoTag"];

        v144 = [(ICAttachment *)self fallbackPDFCryptoInitializationVector];
        [v7 setObject:v144 forKeyedSubscript:@"FallbackPDFCryptoInitializationVector"];
      }
    }

    v145 = [(ICAttachment *)self fallbackTitle];
    if (v145)
    {
      v146 = v145;
    }

    else
    {
      v147 = [(ICAttachment *)self attachmentModel];
      v146 = [v147 localizedFallbackTitle];

      if (!v146)
      {
        goto LABEL_99;
      }
    }

    [v7 setObject:v146 forKeyedSubscript:@"FallbackTitle"];

LABEL_99:
    v148 = [(ICAttachment *)self fallbackSubtitleIOS];
    if (v148)
    {
      v149 = v148;
    }

    else
    {
      v150 = [(ICAttachment *)self attachmentModel];
      v149 = [v150 localizedFallbackSubtitleIOS];

      if (!v149)
      {
        goto LABEL_103;
      }
    }

    [v7 setObject:v149 forKeyedSubscript:@"FallbackSubtitleIOS"];

LABEL_103:
    v151 = [(ICAttachment *)self fallbackSubtitleMac];
    if (v151)
    {
      v152 = v151;
    }

    else
    {
      v153 = [(ICAttachment *)self attachmentModel];
      v152 = [v153 localizedFallbackSubtitleMac];

      if (!v152)
      {
        goto LABEL_107;
      }
    }

    [v7 setObject:v152 forKeyedSubscript:@"FallbackSubtitleMac"];

LABEL_107:
    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v154 = [(ICAttachment *)self linkPresentationArchivedMetadata];

      if (v154)
      {
        v155 = [(ICAttachment *)self linkPresentationArchivedMetadata];
        [v7 ic_setEncryptedInlineableDataAsset:v155 forKeyPrefix:@"LinkPresentationMetadata" approach:0 withObject:self];
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      v156 = [(ICAttachment *)self synapseData];

      if (v156)
      {
        v157 = [(ICAttachment *)self synapseData];
        [v7 ic_setEncryptedInlineableDataAsset:v157 forKeyPrefix:@"SynapseData" approach:0 withObject:self];
      }
    }

    if (([objc_opt_class() suppressWritingPaperKitBundles] & 1) == 0)
    {
      [(ICAttachment *)self addPaperBundleToRecordIfAppropriate:v7];
    }
  }

  v158 = v7;

  return v7;
}

+ (id)existingCloudObjectForRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v6 = a5;
  v7 = [a3 recordName];
  v8 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v7 context:v6];

  return v8;
}

- (id)parentAttachmentFromRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"ParentAttachment"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 recordID];
    v14 = [ICAttachment existingCloudObjectForRecordID:v13 accountID:v9 context:v10];

    if (!v14)
    {
      v15 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v20 = [(ICAttachment *)self className];
        v24 = [v8 recordID];
        v21 = [v24 recordName];
        v23 = [v12 recordID];
        v22 = [v23 recordName];
        *buf = 138412802;
        v26 = v20;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a parent attachment (%@) that we don't know about yet", buf, 0x20u);
      }

      v16 = [v12 recordID];
      v17 = [v16 recordName];
      v18 = [(ICAttachment *)self note];
      v14 = [(ICBaseAttachment *)ICAttachment newAttachmentWithIdentifier:v17 note:v18];

      [v14 setNeedsInitialFetchFromCloud:1];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)noteFromAttachmentUserSpecificRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:@"NoteUUID"];
  if ([v10 length])
  {
    v11 = [ICNote noteWithIdentifier:v10 context:v9];
    if (!v11)
    {
      v12 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v7 recordID];
        v17 = [v16 recordName];
        v18 = 138412802;
        v19 = v17;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = v8;
        _os_log_debug_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEBUG, "Found a user-specific attachment record (%@) for a note (%@) in account (%@) that we haven't seen yet", &v18, 0x20u);
      }

      v13 = [ICAccount cloudKitAccountWithIdentifier:v8 context:v9];
      v11 = [ICNote newNoteWithoutIdentifierInAccount:v13];
      [v11 setIdentifier:v10];
      [v11 setNeedsInitialFetchFromCloud:1];
    }
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ICAttachment(CloudKit) noteFromAttachmentUserSpecificRecord:accountID:context:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[ICAttachment(CloudKit) noteFromAttachmentUserSpecificRecord:accountID:context:]" simulateCrash:1 showAlert:1 format:@"Missing note reference in attachment user-specific record"];
    v11 = 0;
  }

  return v11;
}

+ (id)noteFromAttachmentRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"Note"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 recordID];
    v14 = [ICNote existingCloudObjectForRecordID:v13 accountID:v9 context:v10];

    if (v14)
    {
      goto LABEL_10;
    }

    v15 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = [a1 className];
      v27 = [v8 recordID];
      v24 = [v27 recordName];
      v25 = [v12 recordID];
      v26 = [v25 recordName];
      *buf = 138413058;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v9;
      _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a note (%@) that we don't know about yet in account ID %@", buf, 0x2Au);
    }

    v16 = [ICAccount cloudKitAccountWithIdentifier:v9 context:v10];
    v14 = [ICNote newNoteWithoutIdentifierInAccount:v16];
    v17 = [v12 recordID];
    v18 = [v17 recordName];
    [v14 setIdentifier:v18];

    [v14 setNeedsInitialFetchFromCloud:1];
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [a1 className];
      v20 = [v8 recordID];
      v21 = [v20 recordName];
      *buf = 138412802;
      v29 = v19;
      v30 = 2112;
      v31 = v21;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "Found an %@ (%@) in the cloud with no note in account ID %@", buf, 0x20u);
    }

    v14 = 0;
  }

LABEL_10:

  return v14;
}

+ (id)newCloudObjectForRecord:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 noteFromAttachmentRecord:v9 accountID:v8 context:a5];
  v11 = [v9 recordID];
  v12 = [v11 recordName];
  v13 = [v10 addAttachmentWithIdentifier:v12];

  v14 = [MEMORY[0x277CBEAA8] distantPast];
  [v13 setModificationDate:v14];

  v15 = [MEMORY[0x277CBEAA8] distantPast];
  [v13 setCreationDate:v15];

  [v13 mergeCloudKitRecord:v9 accountID:v8 approach:0 mergeableFieldState:0 newAttachment:1];
  [v13 setServerRecord:v9];

  [v13 setInCloud:1];
  [v13 clearChangeCountWithReason:@"Created attachment"];
  [v13 updateParentReferenceIfNecessary];
  v16 = [v13 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];

  return v13;
}

- (BOOL)wantsUserSpecificRecord
{
  v2 = [(ICAttachment *)self mergeablePreferredViewSize];
  v3 = v2 != 0;

  return v3;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = ICAttachment;
  v4 = [(ICCloudSyncingObject *)&v13 makeUserSpecificCloudKitRecordForApproach:a3];
  v5 = [(ICAttachment *)self note];
  v6 = [v5 recordID];

  if (v6)
  {
    v7 = [(ICAttachment *)self note];
    v8 = [v7 recordID];
    v9 = [v8 recordName];
    [v4 setObject:v9 forKeyedSubscript:@"NoteUUID"];
  }

  v10 = [(ICAttachment *)self mergeablePreferredViewSize];
  if (v10)
  {
    v11 = [v4 encryptedValues];
    [v11 setObject:v10 forKeyedSubscript:@"MergeablePreferredViewSizeEncrypted"];
  }

  return v4;
}

- (BOOL)mergeDataFromUserSpecificRecord:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = ICAttachment;
  v8 = [(ICCloudSyncingObject *)&v23 mergeDataFromUserSpecificRecord:v6 accountID:v7];
  if (v8)
  {
    v9 = [(ICAttachment *)self note];
    if (v9)
    {
    }

    else
    {
      v16 = [v6 objectForKeyedSubscript:@"NoteUUID"];

      if (v16)
      {
        v17 = objc_opt_class();
        v18 = [(ICAttachment *)self managedObjectContext];
        v19 = [v17 noteFromAttachmentUserSpecificRecord:v6 accountID:v7 context:v18];
        [(ICAttachment *)self setNote:v19];

        v20 = [(ICAttachment *)self note];

        if (!v20)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.note" functionName:"-[ICAttachment(CloudKit) mergeDataFromUserSpecificRecord:accountID:]" simulateCrash:1 showAlert:0 format:@"Expected a note (existing or placeholder) to be created from user-specific record"];
        }
      }
    }

    v10 = [v6 encryptedValues];
    v11 = [v10 objectForKeyedSubscript:@"MergeablePreferredViewSizeEncrypted"];

    if (v11)
    {
      v12 = [(ICAttachment *)self mergeablePreferredViewSize];
      if (v12)
      {
        v13 = [[ICTTMergeableWallClockValue alloc] initWithData:v11];
        v14 = [[ICTTMergeableWallClockValue alloc] initWithData:v12];
        if ([(ICTTMergeableWallClockValue *)v14 merge:v13]== 2)
        {
          v15 = [(ICTTMergeableWallClockValue *)v14 serialize];
          [(ICAttachment *)self setMergeablePreferredViewSize:v15];
        }
      }

      else
      {
        [(ICAttachment *)self setMergeablePreferredViewSize:v11];
      }
    }

    v21 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];
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
  v3 = [(ICAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ICAttachment_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194D68;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __43__ICAttachment_CloudKit__isInICloudAccount__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isInCloud])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v2 = [*(a1 + 32) note];
    *(*(*(a1 + 40) + 8) + 24) = [v2 isInICloudAccount];
  }
}

- (void)fixMarkedForDeletionForScannedDocuments
{
  if ([(ICAttachment *)self markedForDeletion])
  {
    v3 = [(ICAttachment *)self parentAttachment];
    if (v3)
    {
      v7 = v3;
      v4 = [(ICAttachment *)self parentAttachment];
      if ([v4 needsInitialFetchFromCloud])
      {
      }

      else
      {
        v5 = [(ICAttachment *)self parentAttachment];
        v6 = [v5 markedForDeletion];

        if (v6)
        {
          return;
        }

        v7 = [(ICAttachment *)self parentAttachment];
        [v7 updateMarkedForDeletionStateAttachmentIsInUse:1];
      }
    }
  }
}

- (void)fixBrokenReferencesWithError:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(ICCloudSyncingObject *)self loggingDescription];
    v6 = [(ICAttachment *)self media];
    v7 = [v6 loggingDescription];
    v8 = [(ICAttachment *)self note];
    v9 = [v8 loggingDescription];
    v65 = 138412802;
    v66 = v5;
    v67 = 2112;
    v68 = v7;
    v69 = 2112;
    v70 = v9;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Fixing broken references for attachment: %@\n\tMedia=%@\n\tNote=%@", &v65, 0x20u);
  }

  v10 = [(ICAttachment *)self note];
  v11 = [v10 needsInitialFetchFromCloud];

  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ICAttachment *)self identifier];
      v14 = [(ICAttachment *)self note];
      v15 = [v14 identifier];
      v65 = 138412546;
      v66 = v13;
      v67 = 2112;
      v68 = v15;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEFAULT, "Tried to push an attachment (%@) for a note (%@) that we don't know about. Manually fetching note.", &v65, 0x16u);
    }

    v16 = [(ICAttachment *)self note];
    [v16 setNeedsToBeFetchedFromCloud:1];
  }

  else
  {
    v17 = [(ICAttachment *)self note];
    v18 = [v17 noteData];
    v19 = [v18 data];
    if (v19)
    {
      v20 = v19;
      v21 = [(ICAttachment *)self note];
      v22 = [v21 creationDate];

      if (v22)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v23 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(ICAttachment *)self identifier];
      v25 = [(ICAttachment *)self note];
      v26 = [v25 identifier];
      v65 = 138412546;
      v66 = v24;
      v67 = 2112;
      v68 = v26;
      _os_log_impl(&dword_214D51000, v23, OS_LOG_TYPE_DEFAULT, "Tried to push an attachment (%@) for a note (%@) that no longer exists. Deleting attachment.", &v65, 0x16u);
    }

    [(ICAttachment *)self deleteFromLocalDatabase];
  }

LABEL_14:
  v27 = [(ICAttachment *)self note];
  v28 = [v27 markedForDeletion];

  if (v28)
  {
    v29 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v65 = 138412290;
      v66 = v30;
      _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Marking %@ for deletion because its note is deleted too", &v65, 0xCu);
    }

    [(ICAttachment *)self markForDeletion];
    v31 = [(ICAttachment *)self media];
    [v31 markForDeletion];
  }

  if ([(ICCloudSyncingObject *)self isInCloud])
  {
    v32 = [(ICAttachment *)self note];
    v33 = [v32 isInCloud];

    if ((v33 & 1) == 0)
    {
      v34 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        v36 = [(ICAttachment *)self note];
        v37 = [v36 shortLoggingDescription];
        v65 = 138412546;
        v66 = v35;
        v67 = 2112;
        v68 = v37;
        _os_log_impl(&dword_214D51000, v34, OS_LOG_TYPE_DEFAULT, "We think %@ is in the cloud, but its parent %@ isn't. That's not possible, so let's try to fetch it.", &v65, 0x16u);
      }

      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
    }
  }

  v38 = [(ICAttachment *)self note];
  v39 = [v38 isInCloud];

  if ((v39 & 1) == 0)
  {
    v40 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [(ICAttachment *)self note];
      v42 = [v41 identifier];
      v65 = 138412290;
      v66 = v42;
      _os_log_impl(&dword_214D51000, v40, OS_LOG_TYPE_DEFAULT, "Tried to push an attachment for note: (%@) which isn't yet in iCloud", &v65, 0xCu);
    }
  }

  v43 = [(ICAttachment *)self note];
  [v43 updateChangeCountWithReason:@"Fixed broken reference"];

  v44 = [(ICAttachment *)self media];

  if (v44)
  {
    v45 = [(ICAttachment *)self media];
    if ([v45 needsInitialFetchFromCloud])
    {
LABEL_31:

      goto LABEL_32;
    }

    v46 = [(ICAttachment *)self media];
    if ([v46 needsToBeFetchedFromCloud])
    {

      goto LABEL_31;
    }

    v57 = [(ICAttachment *)self media];
    v58 = [v57 hasFile];

    if (v58)
    {
LABEL_32:
      v47 = [(ICAttachment *)self media];
      v48 = [v47 filename];
      if (![v48 length])
      {
        v49 = [(ICAttachment *)self media];
        v50 = [v49 identifier];
        v51 = [v50 length];

        if (!v51)
        {
LABEL_38:
          v56 = [(ICAttachment *)self media];
          [v56 updateChangeCountWithReason:@"Fixed broken reference"];

          return;
        }

        v52 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [(ICAttachment *)self media];
          v54 = [v53 identifier];
          v65 = 138412290;
          v66 = v54;
          _os_log_impl(&dword_214D51000, v52, OS_LOG_TYPE_DEFAULT, "Empty filename for media, falling back on identifier (%@)", &v65, 0xCu);
        }

        v47 = [(ICAttachment *)self media];
        v48 = [v47 identifier];
        v55 = [(ICAttachment *)self media];
        [v55 setFilename:v48];
      }

      goto LABEL_38;
    }

    v59 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [(ICAttachment *)self media];
      v61 = [v60 identifier];
      v62 = [(ICAttachment *)self note];
      v63 = [v62 identifier];
      v65 = 138412546;
      v66 = v61;
      v67 = 2112;
      v68 = v63;
      _os_log_impl(&dword_214D51000, v59, OS_LOG_TYPE_DEFAULT, "Invalid media (%@) for a note (%@). Deleting media.", &v65, 0x16u);
    }

    v64 = [(ICAttachment *)self media];
    [v64 markForDeletion];

    [(ICAttachment *)self setMedia:0];
  }
}

- (BOOL)hasAllMandatoryFields
{
  v10.receiver = self;
  v10.super_class = ICAttachment;
  v3 = [(ICCloudSyncingObject *)&v10 hasAllMandatoryFields];
  v4 = [(ICAttachment *)self typeUTI];
  if (![v4 length])
  {
    v3 = 0;
  }

  v5 = [(ICAttachment *)self note];
  v6 = v3 & [v5 hasAllMandatoryFields];

  v7 = [(ICAttachment *)self media];

  if (v7)
  {
    v8 = [(ICAttachment *)self media];
    v6 &= [v8 hasAllMandatoryFields];
  }

  return v6;
}

- (BOOL)needsToBePushedToCloud
{
  v7.receiver = self;
  v7.super_class = ICAttachment;
  v3 = [(ICCloudSyncingObject *)&v7 needsToBePushedToCloud];
  v4 = self;
  if (v4 && v3)
  {
    do
    {
      v5 = v4;
      v3 = [(ICAttachment *)v4 isBeingEditedLocallyOnDevice];
      v4 = [(ICAttachment *)v4 parentAttachment];
    }

    while (v4 && !v3);
    LOBYTE(v3) = v3 ^ 1;
  }

  return v3;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v9.receiver = self;
  v9.super_class = ICAttachment;
  v3 = [(ICCloudSyncingObject *)&v9 objectsToBeDeletedBeforeThisObject];
  v4 = [v3 mutableCopy];

  v5 = [(ICAttachment *)self subAttachments];
  v6 = [v5 allObjects];
  [v4 addObjectsFromArray:v6];

  v7 = [v4 copy];

  return v7;
}

- (void)updateParentReferenceIfNecessary
{
  v4.receiver = self;
  v4.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v4 updateParentReferenceIfNecessary];
  v3 = [(ICAttachment *)self media];
  [v3 updateParentReferenceIfNecessary];
}

- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5
{
  v5 = a5;
  v11.receiver = self;
  v11.super_class = ICAttachment;
  v8 = a3;
  [(ICCloudSyncingObject *)&v11 objectWasFetchedFromCloudWithRecord:v8 accountID:a4 force:v5];
  v9 = [v8 objectForKeyedSubscript:{@"PreviewImages", v11.receiver, v11.super_class}];

  if (v9 && [v9 count])
  {
    v10 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
  }
}

- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)a3 shouldFetchObject:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  if (v6 && v7 && (v7[2](v7, self, v6) & 1) != 0)
  {
    v9 = [(ICAttachment *)self media];
    v10 = [v9 updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:v6 shouldFetchObject:v7];
    v11 = [v10 allObjects];
    [v8 ic_addObjectsFromNonNilArray:v11];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [(ICAttachment *)self subAttachments];
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v33 + 1) + 8 * i) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:v6 shouldFetchObject:v7];
          v18 = [v17 allObjects];
          [v8 ic_addObjectsFromNonNilArray:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = [(ICAttachment *)self inlineAttachments];
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v29 + 1) + 8 * j) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:v6 shouldFetchObject:v7];
          v25 = [v24 allObjects];
          [v8 ic_addObjectsFromNonNilArray:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);
    }

    v26 = [v8 copy];
  }

  else
  {
    v26 = [MEMORY[0x277CBEB98] set];
  }

  v27 = v26;

  return v27;
}

- (BOOL)shouldAlwaysDownloadAssets
{
  v2 = self;
  v3 = [(ICAttachment *)self managedObjectContext];
  LOBYTE(v2) = [ICAssetSignature hasLocallyStoredAssetsInObject:v2 context:v3];

  return v2;
}

+ (void)addPreviewImages:(id)a3 toRecord:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v42 = [MEMORY[0x277CBEB18] array];
  v41 = [MEMORY[0x277CBEB18] array];
  v40 = [MEMORY[0x277CBEB18] array];
  v39 = [MEMORY[0x277CBEB18] array];
  v38 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (!v7)
  {
    v43 = 0;
    v9 = 0;
    goto LABEL_44;
  }

  v8 = v7;
  v43 = 0;
  v9 = 0;
  v10 = *v47;
  v36 = v6;
  v37 = *v47;
  do
  {
    v11 = 0;
    do
    {
      if (*v47 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v46 + 1) + 8 * v11);
      if ([v12 isPasswordProtected])
      {
        v13 = [v12 encryptedPreviewImageURL];
        if (!v9)
        {
          v9 = [MEMORY[0x277CBEB18] array];
          v14 = [MEMORY[0x277CBEB18] array];

          v43 = v14;
        }
      }

      else
      {
        v13 = [v12 previewImageURL];
      }

      if ([v12 shouldSyncToCloud])
      {
        v45 = 0;
        v15 = [v13 checkResourceIsReachableAndReturnError:&v45];
        v16 = v45;
        v17 = v16;
        if (v15)
        {
          v18 = [ICCloudSyncingObject assetForURL:v13];
          if (v18)
          {
            [v6 addObject:v18];
            v19 = MEMORY[0x277CCABB0];
            [v12 width];
            v20 = [v19 numberWithDouble:?];
            [v42 addObject:v20];

            v21 = MEMORY[0x277CCABB0];
            [v12 height];
            v22 = [v21 numberWithDouble:?];
            [v41 addObject:v22];

            v23 = MEMORY[0x277CCABB0];
            [v12 scale];
            v24 = [v23 numberWithDouble:?];
            [v40 addObject:v24];

            v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "scaleWhenDrawing")}];
            [v39 addObject:v25];

            v26 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v12, "appearanceType")}];
            [v38 addObject:v26];

            if ([v12 isPasswordProtected])
            {
              v27 = [v12 cryptoTag];

              if (v27)
              {
                v28 = [v12 cryptoTag];
                [v9 addObject:v28];
                v10 = v37;
              }

              else
              {
                v28 = os_log_create("com.apple.notes", "Cloud");
                v10 = v37;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = [v12 identifier];
                  *buf = 138412290;
                  v51 = v31;
                  _os_log_impl(&dword_214D51000, v28, OS_LOG_TYPE_DEFAULT, "No cryptoTag for preview image %@", buf, 0xCu);
                }
              }

              v32 = [v12 cryptoInitializationVector];

              if (v32)
              {
                v29 = [v12 cryptoInitializationVector];
                [v43 addObject:v29];
              }

              else
              {
                v29 = os_log_create("com.apple.notes", "Cloud");
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v33 = [v12 identifier];
                  *buf = 138412290;
                  v51 = v33;
                  _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "No cryptoInitializationVector for preview image %@", buf, 0xCu);
                }
              }

              v6 = v36;
              goto LABEL_35;
            }

            v10 = v37;
          }

          else
          {
            v29 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(ICAttachment(CloudKit) *)v54 addPreviewImages:v12 toRecord:&v55, v29];
            }

LABEL_35:
          }

          goto LABEL_37;
        }

        if (v16 && [v16 code] != 260)
        {
          v29 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [v12 identifier];
            *buf = 138412546;
            v51 = v30;
            v52 = 2112;
            v53 = v17;
            _os_log_error_impl(&dword_214D51000, v29, OS_LOG_TYPE_ERROR, "Error checking if preview image (%@) exists: %@", buf, 0x16u);
LABEL_40:
          }
        }

        else
        {
          v29 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v30 = [v12 identifier];
            *buf = 138412546;
            v51 = v30;
            v52 = 2112;
            v53 = v13;
            _os_log_debug_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEBUG, "Pushing an attachment with a preview image (%@) but nothing at the URL: %@", buf, 0x16u);
            goto LABEL_40;
          }
        }

        v18 = v29;
        goto LABEL_35;
      }

LABEL_37:

      ++v11;
    }

    while (v8 != v11);
    v34 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    v8 = v34;
  }

  while (v34);
LABEL_44:

  [v35 setObject:v6 forKeyedSubscript:@"PreviewImages"];
  [v35 setObject:v42 forKeyedSubscript:@"PreviewWidths"];
  [v35 setObject:v41 forKeyedSubscript:@"PreviewHeights"];
  [v35 setObject:v40 forKeyedSubscript:@"PreviewScales"];
  [v35 setObject:v39 forKeyedSubscript:@"PreviewScaleWhenDrawings"];
  [v35 setObject:v38 forKeyedSubscript:@"PreviewAppearances"];
  if (v9)
  {
    [v35 setObject:v9 forKeyedSubscript:@"PreviewCryptoTags"];
  }

  if (v43)
  {
    [v35 setObject:v43 forKeyedSubscript:@"PreviewCryptoInitializationVectors"];
  }
}

- (void)updatePreviewsFromRecord:(id)a3
{
  v101 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICAttachment *)self previewImages];
  v6 = [v5 mutableCopy];

  if (!-[ICAttachment preferLocalPreviewImages](self, "preferLocalPreviewImages") || ![v6 count])
  {
    v7 = [v4 objectForKeyedSubscript:@"PreviewUpdateDate"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"PreviewUpdateDate"];
      v9 = [(ICAttachment *)self previewUpdateDate];
      v10 = [v8 laterDate:v9];
      [(ICAttachment *)self setPreviewUpdateDate:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"PreviewImages"];
    v88 = [v4 objectForKeyedSubscript:@"PreviewWidths"];
    v87 = [v4 objectForKeyedSubscript:@"PreviewHeights"];
    v86 = [v4 objectForKeyedSubscript:@"PreviewScales"];
    v85 = [v4 objectForKeyedSubscript:@"PreviewScaleWhenDrawings"];
    v81 = [v4 objectForKeyedSubscript:@"PreviewCryptoTags"];
    v80 = [v4 objectForKeyedSubscript:@"PreviewCryptoInitializationVectors"];
    v76 = v4;
    v12 = [v4 objectForKeyedSubscript:@"PreviewAppearances"];
    v83 = v11;
    v84 = v12;
    if ([v11 count])
    {
      v14 = 0;
      *&v13 = 138412290;
      v75 = v13;
      v77 = v6;
      do
      {
        v15 = objc_autoreleasePoolPush();
        v16 = [v88 objectAtIndexedSubscript:v14];
        [v16 doubleValue];
        v18 = v17;

        v19 = [v87 objectAtIndexedSubscript:v14];
        [v19 doubleValue];
        v21 = v20;

        v22 = [v86 objectAtIndexedSubscript:v14];
        [v22 doubleValue];
        v24 = v23;

        v25 = [v85 objectAtIndexedSubscript:v14];
        v26 = [v25 BOOLValue];

        if (v12 && [v12 count] > v14)
        {
          v27 = [v12 objectAtIndexedSubscript:v14];
          v28 = [v27 unsignedIntValue];
        }

        else
        {
          v28 = 0;
        }

        v29 = [v11 objectAtIndexedSubscript:{v14, v75}];
        v30 = [v29 fileURL];
        if (!v30 || (v31 = v30, [v29 fileURL], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "checkResourceIsReachableAndReturnError:", 0), v32, v11 = v83, v31, (v33 & 1) == 0))
        {
          v42 = [(ICAttachment *)self identifier];
          v34 = [ICAttachmentPreviewImage identifierForContentIdentifier:v42 scale:v28 width:v24 height:v18 appearanceType:v21];

          v43 = [(ICAttachment *)self managedObjectContext];
          v41 = [ICAttachmentPreviewImage attachmentPreviewImageWithIdentifier:v34 inContext:v43];

          if (v41)
          {
            [v6 removeObject:v41];
          }

          goto LABEL_24;
        }

        v34 = [(ICAttachment *)self attachmentPreviewImageCreatingIfNecessaryWithWidth:v28 height:v26 scale:0 appearanceType:v18 scaleWhenDrawing:v21 metadata:v24];
        if (v34)
        {
          [v6 removeObject:v34];
        }

        if (([(ICAttachment *)self isPasswordProtected]& 1) != 0)
        {
          v35 = [v34 encryptedPreviewImageURL];
          if ([v81 count] > v14)
          {
            v36 = [v81 objectAtIndexedSubscript:v14];
            [v34 setCryptoTag:v36];
          }

          if ([v80 count] > v14)
          {
            v37 = [v80 objectAtIndexedSubscript:v14];
            [v34 setCryptoInitializationVector:v37];
          }

          [v34 setCryptoIterationCount:{-[ICAttachment cryptoIterationCount](self, "cryptoIterationCount")}];
          v38 = [(ICAttachment *)self cryptoSalt];
          [v34 setCryptoSalt:v38];

          v39 = [(ICAttachment *)self cryptoWrappedKey];
          [v34 setCryptoWrappedKey:v39];

          v40 = [(ICCloudSyncingObject *)self passwordHint];
          [v34 setPasswordHint:v40];

          v41 = v35;
          if (!v34)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v41 = [v34 previewImageURL];
          if (!v34)
          {
            goto LABEL_24;
          }
        }

        if (v41)
        {
          v82 = v41;
          v79 = v15;
          v97 = 0;
          v44 = [v34 makeSurePreviewImageDirectoryExists:&v97];
          v45 = v97;
          if ((v44 & 1) == 0)
          {
            v46 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              *buf = v75;
              v100 = v45;
              _os_log_error_impl(&dword_214D51000, v46, OS_LOG_TYPE_ERROR, "Error creating preview image directory: %@", buf, 0xCu);
            }
          }

          v47 = [MEMORY[0x277CCAA00] defaultManager];
          v96 = 0;
          v48 = [v47 removeItemAtURL:v82 error:&v96];
          v49 = v96;
          v50 = v49;
          if (v48)
          {
LABEL_36:
          }

          else
          {
            v51 = [v49 code];

            if (v51 != 4)
            {
              v47 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                *buf = v75;
                v100 = v50;
                _os_log_error_impl(&dword_214D51000, v47, OS_LOG_TYPE_ERROR, "Error removing old preview image URL: %@", buf, 0xCu);
              }

              goto LABEL_36;
            }
          }

          v78 = v50;
          v52 = [MEMORY[0x277CCAA00] defaultManager];
          v53 = [v29 fileURL];
          v95 = 0;
          v54 = [v52 moveItemAtURL:v53 toURL:v82 error:&v95];
          v55 = v95;

          if (v54)
          {
            v6 = v77;
            v41 = v82;
          }

          else
          {
            v56 = [MEMORY[0x277CCAA00] defaultManager];
            v57 = [v29 fileURL];
            v94 = v55;
            v58 = [v56 linkItemAtURL:v57 toURL:v82 error:&v94];
            v59 = v94;

            if (v58)
            {
              v55 = v59;
              v6 = v77;
              v15 = v79;
            }

            else
            {
              v60 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v75;
                v100 = v59;
                _os_log_impl(&dword_214D51000, v60, OS_LOG_TYPE_DEFAULT, "Failed to move or link an attachment preview asset. Falling back to copy: %@", buf, 0xCu);
              }

              v61 = [MEMORY[0x277CCAA00] defaultManager];
              v62 = [v29 fileURL];
              v93 = v59;
              v63 = [v61 copyItemAtURL:v62 toURL:v82 error:&v93];
              v55 = v93;

              v15 = v79;
              if ((v63 & 1) == 0)
              {
                v64 = os_log_create("com.apple.notes", "Cloud");
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = v75;
                  v100 = v55;
                  _os_log_error_impl(&dword_214D51000, v64, OS_LOG_TYPE_ERROR, "Error writing preview image from asset: %@", buf, 0xCu);
                }
              }

              v6 = v77;
            }

            v41 = v82;
          }

          [v34 invalidateCache];

          v11 = v83;
        }

LABEL_24:

        objc_autoreleasePoolPop(v15);
        ++v14;
        v12 = v84;
      }

      while (v14 < [v11 count]);
    }

    v65 = [v6 count];
    if (v65)
    {
      [(ICAttachment *)self removePreviewImages:v6];
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v66 = v6;
      v67 = [v66 countByEnumeratingWithState:&v89 objects:v98 count:16];
      if (v67)
      {
        v68 = v67;
        v69 = *v90;
        do
        {
          for (i = 0; i != v68; ++i)
          {
            if (*v90 != v69)
            {
              objc_enumerationMutation(v66);
            }

            v71 = *(*(&v89 + 1) + 8 * i);
            v72 = [(ICAttachment *)self managedObjectContext];
            [v72 deleteObject:v71];
          }

          v68 = [v66 countByEnumeratingWithState:&v89 objects:v98 count:16];
        }

        while (v68);
      }

      v11 = v83;
      v12 = v84;
      if ([(ICAttachment *)self ic_obtainPermanentObjectIDIfNecessary])
      {
        v73 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentNeedsPreviewGenerationNotification"];
      }
    }

    if ([v11 count] | v65)
    {
      v74 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
    }

    v4 = v76;
  }
}

- (BOOL)processFallbackAsset:(id)a3 fallbackAssetType:(int64_t)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v9 = NSStringFromFallbackAssetType(a4);
    *buf = 138413058;
    v39 = v8;
    v40 = 2112;
    v42 = 2080;
    v41 = v9;
    v43 = "[ICAttachment(CloudKit) processFallbackAsset:fallbackAssetType:]";
    v44 = 1024;
    v45 = 1219;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Processing fallback asset… {attachment: %@, type: %@}%s:%d", buf, 0x26u);
  }

  v10 = [v6 fileURL];
  v11 = [v10 ic_isReachable];

  if (v11)
  {
    if (a4 == 1)
    {
      v18 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
      v13 = [v18 beginGeneration];

      v14 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
      if (([(ICAttachment *)self isPasswordProtected]& 1) != 0)
      {
        [(ICAttachment *)self fallbackPDFEncryptedURL];
      }

      else
      {
        [(ICAttachment *)self fallbackPDFURL];
      }
    }

    else
    {
      if (a4)
      {
        v14 = 0;
        v16 = 0;
        goto LABEL_23;
      }

      v12 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
      v13 = [v12 beginGeneration];

      v14 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
      if ([(ICAttachment *)self isPasswordProtected])
      {
        [(ICAttachment *)self fallbackImageEncryptedURL];
      }

      else
      {
        [(ICAttachment *)self fallbackImageURL];
      }
    }
    v15 = ;
    v16 = v15;
    if (v13)
    {
      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = [v6 fileURL];
      v37 = 0;
      v21 = [v19 moveItemAtURL:v20 toURL:v16 error:&v37];
      v22 = v37;

      if (v21)
      {
LABEL_30:
        v32 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [ICAttachment(CloudKit) processFallbackAsset:v32 fallbackAssetType:?];
        }

        v17 = [v14 commitGeneration];
        goto LABEL_33;
      }

      v23 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(CloudKit) processFallbackAsset:fallbackAssetType:];
      }

      v24 = [MEMORY[0x277CCAA00] defaultManager];
      v25 = [v6 fileURL];
      v36 = v22;
      v26 = [v24 linkItemAtURL:v25 toURL:v16 error:&v36];
      v27 = v36;

      if (v26)
      {
        v22 = v27;
        goto LABEL_30;
      }

      v28 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(CloudKit) processFallbackAsset:fallbackAssetType:];
      }

      v29 = [MEMORY[0x277CCAA00] defaultManager];
      v30 = [v6 fileURL];
      v35 = v27;
      v31 = [v29 copyItemAtURL:v30 toURL:v16 error:&v35];
      v22 = v35;

      if (v31)
      {
        goto LABEL_30;
      }

      v34 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(CloudKit) processFallbackAsset:fallbackAssetType:];
      }

      [v14 rollbackGeneration];
LABEL_26:
      v17 = 0;
LABEL_33:

      goto LABEL_34;
    }

LABEL_23:
    v22 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(CloudKit) processFallbackAsset:? fallbackAssetType:?];
    }

    goto LABEL_26;
  }

  v16 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ICAttachment(CloudKit) processFallbackAsset:? fallbackAssetType:?];
  }

  v17 = 0;
  v14 = v16;
LABEL_34:

  return v17;
}

- (void)mergeFallbackImageAndPDFFromRecord:(id)a3
{
  v13 = a3;
  v4 = [v13 objectForKeyedSubscript:@"FallbackImage"];
  if (v4)
  {
    [(ICAttachment *)self processFallbackAsset:v4 fallbackAssetType:0];
  }

  v5 = [v13 objectForKeyedSubscript:@"FallbackPDF"];
  if (v5)
  {
    [(ICAttachment *)self processFallbackAsset:v5 fallbackAssetType:1];
  }

  v6 = [v13 objectForKeyedSubscript:@"FallbackImageCryptoTag"];
  [(ICAttachment *)self setFallbackImageCryptoTag:v6];

  v7 = [v13 objectForKeyedSubscript:@"FallbackImageCryptoInitializationVector"];
  [(ICAttachment *)self setFallbackImageCryptoInitializationVector:v7];

  v8 = [v13 objectForKeyedSubscript:@"FallbackPDFCryptoTag"];
  [(ICAttachment *)self setFallbackPDFCryptoTag:v8];

  v9 = [v13 objectForKeyedSubscript:@"FallbackPDFCryptoInitializationVector"];
  [(ICAttachment *)self setFallbackPDFCryptoInitializationVector:v9];

  v10 = [v13 objectForKeyedSubscript:@"FallbackTitle"];
  if (v10)
  {
    [(ICAttachment *)self setFallbackTitle:v10];
  }

  v11 = [v13 objectForKeyedSubscript:@"FallbackSubtitleIOS"];
  if (v11)
  {
    [(ICAttachment *)self setFallbackSubtitleIOS:v11];
  }

  v12 = [v13 objectForKeyedSubscript:@"FallbackSubtitleMac"];
  if (v12)
  {
    [(ICAttachment *)self setFallbackSubtitleMac:v12];
  }
}

- (void)addPaperBundleToRecordIfAppropriate:(id)a3
{
  v16 = a3;
  objc_opt_class();
  v4 = [(ICAttachment *)self attachmentModel];
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [[_TtC11NotesShared21ICSystemPaperDocument alloc] initWithPaperAttachment:self];
    v7 = [(ICSystemPaperDocument *)v6 archiveBundleForSyncAndReturnError:0];
    v8 = [(ICAttachment *)self managedObjectContext];
    v9 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"PaperDatabase" inRecord:v16 forObject:self context:v8];

    if (v9)
    {
      v10 = [v7 databaseArchive];
      v11 = [ICCloudSyncingObject assetForTemporaryURL:v10];

      if (v11)
      {
        [v16 setObject:v11 forKeyedSubscript:@"PaperDatabase"];
      }
    }

    v12 = [(ICAttachment *)self managedObjectContext];
    v13 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"PaperAssets" inRecord:v16 forObject:self context:v12];

    if (v13)
    {
      v14 = [v7 assetArchives];
      v15 = [v14 ic_compactMap:&__block_literal_global_58];

      if (v15)
      {
        [v16 setObject:v15 forKeyedSubscript:@"PaperAssets"];
      }
    }
  }
}

- (void)mergePaperBundleFromRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"PaperDatabase"];
  v6 = ICDynamicCast();
  v7 = [v6 fileURL];

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"PaperAssets"];

  v9 = ICDynamicCast();
  v10 = [v9 ic_compactMap:&__block_literal_global_274];

  v11 = [[_TtC11NotesShared21ICSystemPaperDocument alloc] initWithPaperAttachment:self];
  if (v7)
  {
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v7 path];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      v15 = [[ICSystemPaperSyncArchive alloc] initWithDatabaseArchive:v7 assetArchives:v10];
      v19 = 0;
      v16 = [(ICSystemPaperDocument *)v11 writeNewVersionFromSyncArchive:v15 error:&v19];
      v17 = v19;
      if (v16)
      {
        v18 = [MEMORY[0x277CCAB98] defaultCenter];
        [v18 postNotificationName:@"ICAttachmentDidMergePaperKitBundleNotification" object:self];
      }

      else
      {
        v18 = os_log_create("com.apple.notes", "SystemPaper");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment(CloudKit) mergePaperBundleFromRecord:];
        }
      }
    }
  }
}

id __53__ICAttachment_CloudKit__mergePaperBundleFromRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  v4 = [v3 fileURL];

  return v4;
}

- (BOOL)hasUnfetchedAssetForRecordKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(ICAttachment *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ICAttachment_CloudKit__hasUnfetchedAssetForRecordKey___block_invoke;
  v8[3] = &unk_2781961E0;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = &v12;
  [v5 performBlockAndWait:v8];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return self;
}

void __56__ICAttachment_CloudKit__hasUnfetchedAssetForRecordKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [v3 managedObjectContext];
  v5 = [ICAssetSignature assetSignatureForCloudKitRecordKey:v2 isUserSpecificRecordKey:0 cloudSyncingObject:v3 context:v4];

  *(*(a1[6] + 8) + 24) = [v5 outOfDate];
}

- (BOOL)willShowFallbackImage
{
  if ([(ICAttachment *)self attachmentType]== 1)
  {
    v3 = [(ICAttachment *)self note];
    v4 = [v3 isPasswordProtected] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  if (![(ICAttachment *)self hasFallbackImage]&& ![(ICAttachment *)self hasUnfetchedFallbackImage])
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)hasUnfetchedLinkPresentationMetadata
{
  v3 = [(ICAttachment *)self linkPresentationArchivedMetadata];

  if (v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CBC5A0] ic_assetKeyForKeyPrefix:@"LinkPresentationMetadata"];
  v6 = [(ICAttachment *)self hasUnfetchedAssetForRecordKey:v5];

  return v6;
}

- (BOOL)isHiddenFromIndexing
{
  if (([(ICAttachment *)self isDeleted]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ICAttachment *)self note];
  if (!v4 || ([(ICAttachment *)self markedForDeletion]& 1) != 0 || ([(ICAttachment *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v6 = [(ICAttachment *)self note];
    if (([v6 isHiddenFromSearch] & 1) != 0 || (-[ICAttachment isPasswordProtected](self, "isPasswordProtected") & 1) != 0 || -[ICAttachment isChildOfDocumentGallery](self, "isChildOfDocumentGallery") || -[ICAttachment attachmentType](self, "attachmentType") == 9 || -[ICAttachment attachmentType](self, "attachmentType") == 10 || -[ICAttachment attachmentType](self, "attachmentType") == 13)
    {
      v3 = 1;
    }

    else if ([(ICAttachment *)self attachmentType]== 4)
    {
      v7 = [(ICAttachment *)self parentAttachment];
      if (v7)
      {
        v3 = 1;
      }

      else
      {
        v3 = [(ICAttachment *)self isUnsupported];
      }
    }

    else
    {
      v3 = [(ICAttachment *)self isUnsupported];
    }
  }

  return v3;
}

- (BOOL)isHiddenFromSearch
{
  if ([(ICAttachment *)self isHiddenFromIndexing])
  {
    return 1;
  }

  return [(ICAttachment *)self isTable];
}

- (BOOL)isVisibleTable
{
  if (([(ICAttachment *)self isDeleted]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(ICAttachment *)self note];
    if (!v4 || ([(ICAttachment *)self markedForDeletion]& 1) != 0 || ([(ICAttachment *)self needsInitialFetchFromCloud]& 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v6 = [(ICAttachment *)self note];
      if (([v6 isHiddenFromSearch] & 1) != 0 || !-[ICAttachment isTable](self, "isTable"))
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v3 = ![(ICAttachment *)self isUnsupported];
      }
    }
  }

  return v3;
}

- (NSString)searchIndexingIdentifier
{
  v2 = [(ICAttachment *)self objectID];
  v3 = [v2 URIRepresentation];
  v4 = [v3 absoluteString];

  return v4;
}

- (NSString)searchDomainIdentifier
{
  v2 = [(ICAttachment *)self note];
  v3 = [v2 account];
  v4 = [v3 identifier];

  return v4;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  v3 = [(ICAttachment *)self typeUTI];
  v4 = [v3 copy];

  if (!v4 || ![(__CFString *)v4 length])
  {

    v4 = @"com.apple.notes.spotlightrecord";
  }

  v5 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:v4];
  v6 = [(ICCloudSyncingObject *)self modificationDate];
  [v5 setContentModificationDate:v6];

  v7 = [(ICCloudSyncingObject *)self creationDate];
  [v5 setContentCreationDate:v7];

  v8 = [(ICCloudSyncingObject *)self creationDate];
  [v5 setAddedDate:v8];

  return v5;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachment *)self userActivityContentAttributeSet];
  v4 = [(ICAttachment *)self title];
  if (![v4 length])
  {
    v5 = [(ICAttachment *)self media];
    v6 = [v5 filename];

    v4 = v6;
  }

  [v3 setDisplayName:v4];
  v7 = [(ICAttachment *)self summary];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(ICAttachment *)self summary];
    [v3 setContentDescription:v9];
  }

  v10 = [(ICAttachment *)self searchableTextContentWithoutTitle];
  v11 = v10;
  if (v4)
  {
    v12 = [v4 stringByAppendingFormat:@" %@", v10];

    v11 = v12;
  }

  [v3 setTextContent:v11];
  [v3 setIc_searchResultType:1];
  v13 = [(ICAttachment *)self typeUTI];

  if (v13)
  {
    v14 = MEMORY[0x277CE1CB8];
    v15 = [(ICAttachment *)self typeUTI];
    v16 = [v14 typeWithIdentifier:v15];
    v17 = [v16 supertypes];
    v18 = [v17 ic_map:&__block_literal_global_61];

    v19 = [(ICAttachment *)self typeUTI];
    v39[0] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v21 = [v18 allObjects];
    v22 = [v20 arrayByAddingObjectsFromArray:v21];

    if ([(ICAttachment *)self attachmentType]== 14)
    {
      v23 = [*MEMORY[0x277CE1E08] identifier];
      v24 = [v22 arrayByAddingObject:v23];

      v22 = v24;
    }

    [v3 setAttachmentTypes:v22];
  }

  [v3 ic_populateValuesForSpecializedFields];
  v25 = [(ICAttachment *)self attachmentModel];
  v26 = [v25 providerFileTypes];
  [v3 setProviderFileTypes:v26];

  v27 = [(ICAttachment *)self attachmentModel];
  v28 = [v27 providerDataTypes];
  [v3 setProviderDataTypes:v28];

  [v3 setDataOwnerType:&unk_282747DA8];
  if ([(ICCloudSyncingObject *)self isSharedViaICloud]&& ([(ICAttachment *)self attachmentType]== 7 || [(ICAttachment *)self attachmentType]== 8))
  {
    [(ICCloudSyncingObject *)self addEmailAddressesAndPhoneNumbersToAttributeSet:v3];
  }

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudSyncingObject isSharedViaICloud](self, "isSharedViaICloud")}];
  [v3 setShared:v29];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAttachment isDeletedOrInTrash](self, "isDeletedOrInTrash")}];
  [v3 setTrashed:v30];

  v31 = [(ICAttachment *)self note];
  v32 = [v31 objectID];
  v33 = [v32 URIRepresentation];
  v34 = [v33 absoluteString];
  [v3 setIc_relatedModernNoteUniqueIdentifier:v34];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAttachment supportsPhotosProcessing](self, "supportsPhotosProcessing")}];
  [v3 setEligibleForPhotosProcessing:v35];

  v36 = [(ICAttachment *)self urlString];

  if (v36)
  {
    v37 = [(ICAttachment *)self urlString];
    [v3 ic_setURLString:v37];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICAttachment *)self associateAppEntityWithSearchableItemAttributeSet:v3];
  }

  return v3;
}

- (id)searchableTextContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICAttachment *)self title];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(ICAttachment *)self searchableTextContentWithoutTitle];
  [v3 addObject:v5];

  v6 = [v3 componentsJoinedByString:@" "];

  return v6;
}

- (id)searchableTextContentWithoutTitle
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICAttachment *)self urlString];
  if (v4 && ![(ICAttachment *)self isMap])
  {
    [v3 addObject:v4];
  }

  v5 = [(ICAttachment *)self summary];
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(ICAttachment *)self attachmentModel];
  v7 = [v6 searchableTextContent];

  if ([v7 length])
  {
    [v3 addObject:v7];
  }

  v8 = [v3 componentsJoinedByString:@" "];

  return v8;
}

- (id)dataForTypeIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__52;
  v16 = __Block_byref_object_dispose__52;
  v17 = 0;
  if ([v4 isEqualToString:@"com.apple.notes.noteitemprovider"])
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(SearchIndexable) dataForTypeIdentifier:v5];
    }
  }

  else
  {
    v6 = [(ICAttachment *)self managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__ICAttachment_SearchIndexable__dataForTypeIdentifier___block_invoke;
    v9[3] = &unk_278195740;
    v11 = &v12;
    v9[4] = self;
    v10 = v4;
    [v6 performBlockAndWait:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__ICAttachment_SearchIndexable__dataForTypeIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachmentModel];
  v2 = [v5 dataForTypeIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)fileURLForTypeIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__52;
  v16 = __Block_byref_object_dispose__52;
  v17 = 0;
  if ([v4 isEqualToString:@"com.apple.notes.noteitemprovider"])
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(SearchIndexable) dataForTypeIdentifier:v5];
    }
  }

  else
  {
    v6 = [(ICAttachment *)self managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ICAttachment_SearchIndexable__fileURLForTypeIdentifier___block_invoke;
    v9[3] = &unk_278195740;
    v11 = &v12;
    v9[4] = self;
    v10 = v4;
    [v6 performBlockAndWait:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__ICAttachment_SearchIndexable__fileURLForTypeIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachmentModel];
  v2 = [v5 fileURLForTypeIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)attachmentSectionSortOrder
{
  if (attachmentSectionSortOrder_onceToken != -1)
  {
    +[ICAttachment attachmentSectionSortOrder];
  }

  v3 = attachmentSectionSortOrder_sSortOrderSet;

  return v3;
}

uint64_t __42__ICAttachment_attachmentSectionSortOrder__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v1 = attachmentSectionSortOrder_sSortOrderSet;
  attachmentSectionSortOrder_sSortOrderSet = v0;

  [attachmentSectionSortOrder_sSortOrderSet addObject:&unk_282747DC0];
  [attachmentSectionSortOrder_sSortOrderSet addObject:&unk_282747DD8];
  [attachmentSectionSortOrder_sSortOrderSet addObject:&unk_282747DF0];
  [attachmentSectionSortOrder_sSortOrderSet addObject:&unk_282747E08];
  [attachmentSectionSortOrder_sSortOrderSet addObject:&unk_282747E20];
  [attachmentSectionSortOrder_sSortOrderSet addObject:&unk_282747E38];
  v2 = attachmentSectionSortOrder_sSortOrderSet;

  return [v2 addObject:&unk_282747E50];
}

- (void)prepareForDeletion
{
  v11.receiver = self;
  v11.super_class = ICAttachment;
  [(ICAttachment *)&v11 prepareForDeletion];
  v3 = [(ICAttachment *)self identifier];
  if (v3)
  {
    v4 = [(ICAttachment *)self note];
    v5 = [v4 account];
    if (!v5)
    {
LABEL_5:

      goto LABEL_6;
    }

    v6 = v5;
    v7 = [(ICAttachment *)self suppressesFileDeletion];

    if (!v7)
    {
      v8 = objc_opt_class();
      v4 = [MEMORY[0x277CBEB98] setWithObject:v3];
      v9 = [(ICAttachment *)self note];
      v10 = [v9 account];
      [v8 purgeAttachmentFilesForIdentifiers:v4 account:v10];

      goto LABEL_5;
    }
  }

LABEL_6:
}

- (void)willRefresh:(BOOL)a3
{
  v3 = a3;
  [(ICAttachmentModel *)self->_attachmentModel attachmentWillRefresh:?];
  v5.receiver = self;
  v5.super_class = ICAttachment;
  [(ICAttachment *)&v5 willRefresh:v3];
}

- (void)didRefresh:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = ICAttachment;
  [(ICAttachment *)&v5 didRefresh:?];
  [(ICAttachmentModel *)self->_attachmentModel attachmentDidRefresh:v3];
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3
{
  if (![(ICAttachment *)self isUnsupported]&& ![(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {
    v5 = [(ICAttachment *)self typeUTI];

    if (v5)
    {
      v6 = [(ICAttachment *)self typeUTI];
      if (([v6 isEqualToString:@"com.apple.paper.doc"] & 1) == 0)
      {
        v7 = [(ICAttachment *)self typeUTI];
        if (![v7 isEqualToString:@"com.apple.paper.doc.pdf"])
        {
          v14 = [(ICAttachment *)self typeUTI];
          v15 = [v14 isEqualToString:@"com.apple.paper.doc.scan"];

          if ((v15 & 1) == 0)
          {
            v16 = [(ICAttachment *)self typeUTI];
            v17 = [v16 isEqualToString:@"com.apple.paper"];

            if (v17)
            {
              v18 = [(ICAttachment *)self paperBundleModel];
              v19 = [v18 paperHasNewInks2025];

              if (v19)
              {
                goto LABEL_9;
              }

              v20 = [(ICAttachment *)self paperBundleModel];
              v21 = [v20 paperHasMath];

              if ((v21 & 1) == 0)
              {
                v22 = [(ICAttachment *)self systemPaperModel];
                v23 = [v22 paperHasNewInksSpring2024];

                if (v23)
                {
                  v10 = 14;
                }

                else
                {
                  v34 = [(ICAttachment *)self systemPaperModel];
                  v35 = [v34 paperHasNewInks2023];

                  if (v35)
                  {
                    v10 = 13;
                  }

                  else
                  {
                    v38 = [(ICAttachment *)self account];
                    v39 = [v38 isDataSeparated];

                    if (v39 & 1) != 0 || (-[ICAttachment systemPaperModel](self, "systemPaperModel"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 paperHasNewInks2022], v40, (v41))
                    {
                      v10 = 10;
                    }

                    else
                    {
                      v44 = [(ICAttachment *)self systemPaperModel];
                      v45 = [v44 paperHasEnhancedCanvas];

                      if (v45)
                      {
                        v10 = 9;
                      }

                      else
                      {
                        v10 = 7;
                      }
                    }
                  }
                }

                goto LABEL_24;
              }
            }

            else
            {
              v26 = [(ICAttachment *)self parentAttachment];
              if (!v26 || (v27 = v26, [(ICAttachment *)self typeUTI], v28 = objc_claimAutoreleasedReturnValue(), v29 = [ICAttachment typeUTIIsPlayableAudio:v28], v28, v27, !v29))
              {
                if ([(ICAttachment *)self hasVisibleInlineAttachments])
                {
                  v10 = 6;
                }

                else
                {
                  v30 = [(ICAttachment *)self typeUTI];
                  v31 = [v30 isEqualToString:@"com.apple.drawing.2"];

                  if (v31)
                  {
                    v10 = 4;
                  }

                  else
                  {
                    v32 = [(ICAttachment *)self typeUTI];
                    v33 = [v32 isEqualToString:@"com.apple.drawing"];

                    if (v33)
                    {
                      v10 = 3;
                    }

                    else
                    {
                      v36 = [(ICAttachment *)self typeUTI];
                      v37 = [v36 isEqualToString:@"com.apple.notes.table"];

                      if (v37)
                      {
                        v10 = 2;
                      }

                      else
                      {
                        v42 = [(ICAttachment *)self typeUTI];
                        v43 = [v42 isEqualToString:@"com.apple.notes.gallery"];

                        if (v43)
                        {
                          v10 = 2;
                        }

                        else
                        {
                          v10 = 0;
                        }
                      }
                    }
                  }
                }

                goto LABEL_24;
              }
            }

            goto LABEL_14;
          }

LABEL_8:
          v8 = [(ICAttachment *)self paperBundleModel];
          v9 = [v8 paperHasNewInks2025];

          if (v9)
          {
LABEL_9:
            v10 = 17;
            goto LABEL_24;
          }

          v12 = [(ICAttachment *)self paperBundleModel];
          v13 = [v12 paperHasMath];

          if ((v13 & 1) == 0)
          {
            v24 = [(ICAttachment *)self paperBundleModel];
            v25 = [v24 paperHasNewInksSpring2024];

            if (v25)
            {
              v10 = 14;
            }

            else
            {
              v10 = 13;
            }

            goto LABEL_24;
          }

LABEL_14:
          v10 = 15;
LABEL_24:
          v46.receiver = self;
          v46.super_class = ICAttachment;
          result = [(ICCloudSyncingObject *)&v46 intrinsicNotesVersionForScenario:a3];
          if (v10 > result)
          {
            return v10;
          }

          return result;
        }
      }

      goto LABEL_8;
    }
  }

  return [(ICAttachment *)self minimumSupportedNotesVersion];
}

- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 == 6)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [(ICCloudSyncingObject *)self deviceReplicaIDs];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(ICAttachmentModel *)self->_attachmentModel removeTimestampsForReplicaID:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

+ (id)attachmentIdentifiersForAccount:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [v3 managedObjectContext];
  v6 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"ICAttachment"];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.account == %@", v3];
  [v6 setPredicate:v7];

  [v6 setResultType:2];
  [v6 setPropertiesToFetch:&unk_2827480F0];
  v13 = 0;
  v8 = [v5 executeFetchRequest:v6 error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[ICAttachment attachmentIdentifiersForAccount:];
    }

    v11 = v10;
  }

  else
  {
    v11 = [v8 valueForKey:@"identifier"];
    if (!v11)
    {
      goto LABEL_8;
    }

    [MEMORY[0x277CBEB98] setWithArray:v11];
    v4 = v10 = v4;
  }

LABEL_8:

  return v4;
}

+ (void)purgeAttachmentFilesForIdentifiers:(id)a3 account:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v30 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v34 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v34)
  {
    v31 = *v44;
    v32 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v8;
        v9 = *(*(&v43 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [ICAttachmentPaperBundleModel paperBundleURLForAttachmentIdentifier:v9 inAccount:v6];
        if (v10)
        {
          v11 = [ICFileUtilities coordinateDeleteItemAt:v10 coordinator:v30];
          if (v11)
          {
            v12 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v11;
              _os_log_error_impl(&dword_214D51000, v12, OS_LOG_TYPE_ERROR, "Error removing paper bundle file: %@", buf, 0xCu);
            }
          }
        }

        v35 = v10;
        v13 = [MEMORY[0x277CBEB18] array];
        v14 = [a1 fallbackImageFallbackURLForIdentifier:v9 account:v6];
        [v13 ic_addNonNilObject:v14];

        v15 = [a1 fallbackImageEncryptedFallbackURLForIdentifier:v9 account:v6];
        [v13 ic_addNonNilObject:v15];

        v16 = [a1 fallbackImageContainerURLForIdentifier:v9 account:v6];
        [v13 ic_addNonNilObject:v16];

        v17 = [a1 fallbackPDFFallbackURLForIdentifier:v9 account:v6];
        [v13 ic_addNonNilObject:v17];

        v18 = [a1 fallbackPDFEncryptedFallbackURLForIdentifier:v9 account:v6];
        [v13 ic_addNonNilObject:v18];

        v19 = [a1 fallbackPDFContainerURLForIdentifier:v9 account:v6];
        [v13 ic_addNonNilObject:v19];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v20 = [v13 copy];
        v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v40;
          do
          {
            v24 = 0;
            do
            {
              if (*v40 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v39 + 1) + 8 * v24);
              v38 = 0;
              [v7 removeItemAtURL:v25 error:&v38];
              v26 = v38;
              v27 = v26;
              if (v26 && [v26 code] != 4)
              {
                v28 = os_log_create("com.apple.notes", "CoreData");
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v49 = v27;
                  _os_log_error_impl(&dword_214D51000, v28, OS_LOG_TYPE_ERROR, "Error removing attachment file: %@", buf, 0xCu);
                }
              }

              ++v24;
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v22);
        }

        objc_autoreleasePoolPop(context);
        v8 = v37 + 1;
        v6 = v32;
      }

      while (v37 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v34);
  }
}

- (NSURL)URL
{
  URL = self->_URL;
  if (URL)
  {
    goto LABEL_2;
  }

  v5 = [(ICAttachment *)self urlString];
  if (!v5)
  {
    URL = self->_URL;
LABEL_2:
    v3 = URL;
    goto LABEL_5;
  }

  v6 = v5;
  v3 = [MEMORY[0x277CBEBC0] URLWithString:v5];

LABEL_5:

  return v3;
}

- (BOOL)hasDeepLink
{
  v3 = [(ICAttachment *)self synapseData];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICAttachment *)self attachmentModel];
    v4 = [v5 hasDeepLink];
  }

  return v4;
}

- (BOOL)isReadOnly
{
  v3 = [(ICAttachment *)self note];
  v4 = ([v3 isSharedReadOnly] & 1) != 0 || -[ICCloudSyncingObject isSharedReadOnly](self, "isSharedReadOnly");

  return v4;
}

- (BOOL)isFolder
{
  v3 = [(ICAttachment *)self typeUTI];
  if (v3)
  {
    v4 = MEMORY[0x277CE1CB8];
    v5 = [(ICAttachment *)self typeUTI];
    v6 = [v4 typeWithIdentifier:v5];
    v7 = [v6 conformsToType:*MEMORY[0x277CE1D80]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isURL
{
  v3 = [(ICAttachment *)self typeUTI];
  if (v3)
  {
    v4 = MEMORY[0x277CE1CB8];
    v5 = [(ICAttachment *)self typeUTI];
    v6 = [v4 typeWithIdentifier:v5];
    v7 = [v6 conformsToType:*MEMORY[0x277CE1E90]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isMap
{
  v3 = [(ICAttachment *)self isURL];
  if (v3)
  {
    v4 = [(ICAttachment *)self URL];
    v5 = [v4 ic_isMapURL];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isiTunes
{
  v3 = [(ICAttachment *)self isURL];
  if (v3)
  {
    v4 = [(ICAttachment *)self URL];
    v5 = [v4 ic_isiTunesURL];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isAppStore
{
  v3 = [(ICAttachment *)self isURL];
  if (v3)
  {
    v4 = [(ICAttachment *)self URL];
    v5 = [v4 ic_isAppStoreURL];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isPodcasts
{
  v3 = [(ICAttachment *)self isURL];
  if (v3)
  {
    v4 = [(ICAttachment *)self URL];
    v5 = [v4 ic_isPodcastsURL];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isNews
{
  v3 = [(ICAttachment *)self isURL];
  if (v3)
  {
    v4 = [(ICAttachment *)self URL];
    v5 = [v4 ic_isNewsURL];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isChildOfDocumentGallery
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ICAttachment_isChildOfDocumentGallery__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __40__ICAttachment_isChildOfDocumentGallery__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parentAttachment];
  *(*(*(a1 + 40) + 8) + 24) = [v2 attachmentType] == 11;
}

- (BOOL)supportsRenaming
{
  if ([(ICAttachment *)self isReadOnly])
  {
    return 0;
  }

  v4 = [(ICAttachment *)self attachmentType];
  result = 0;
  if (v4 <= 0xF)
  {
    if (((1 << v4) & 0xCA74) != 0)
    {
      return 1;
    }

    else if (v4 == 3)
    {
      return ![(ICAttachment *)self isChildOfDocumentGallery];
    }
  }

  return result;
}

- (BOOL)previewsSupportMultipleAppearances
{
  v2 = [(ICAttachment *)self attachmentModel];
  v3 = [v2 previewsSupportMultipleAppearances];

  return v3;
}

- (BOOL)preferLocalPreviewImages
{
  v2 = [(ICAttachment *)self attachmentModel];
  v3 = [v2 preferLocalPreviewImages];

  return v3;
}

- (id)defaultTitle
{
  v2 = [(ICAttachment *)self attachmentType];
  v3 = objc_opt_class();

  return [v3 defaultTitleForAttachmentType:v2];
}

- (void)setNote:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self note];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(ICAttachment *)self note];
    if (v7)
    {
      v8 = v7;
      v9 = [(ICAttachment *)self note];
      v10 = [v9 account];
      v11 = [v4 account];

      if (v10 != v11)
      {
        v12 = [v4 account];
        [(ICAttachment *)self accountWillChangeToAccount:v12];
      }
    }

    [(ICAttachment *)self willChangeValueForKey:@"note"];
    [(ICAttachment *)self willChangeValueForKey:@"parentCloudObject"];
    [(ICAttachment *)self setPrimitiveValue:v4 forKey:@"note"];
    [(ICAttachment *)self didChangeValueForKey:@"note"];
    [(ICAttachment *)self didChangeValueForKey:@"parentCloudObject"];
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachment setNote:];
    }

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (BOOL)hasImageFilterType
{
  v3 = NSStringFromSelector(sel_imageFilterType);
  [(ICAttachment *)self willAccessValueForKey:v3];
  v4 = [(ICAttachment *)self primitiveValueForKey:v3];
  [(ICAttachment *)self didAccessValueForKey:v3];

  return v4 != 0;
}

- (void)setImageFilterType:(signed __int16)a3
{
  v3 = a3;
  if ([(ICAttachment *)self imageFilterType]!= a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICAttachment *)self setCachedImage:0];
    }

    [(ICAttachment *)self invalidateAttachmentPreviewImages];
    [(ICAttachment *)self willChangeValueForKey:@"imageFilterType"];
    v5 = [MEMORY[0x277CCABB0] numberWithShort:v3];
    [(ICAttachment *)self setPrimitiveValue:v5 forKey:@"imageFilterType"];

    [(ICAttachment *)self didChangeValueForKey:@"imageFilterType"];
  }
}

- (BOOL)hasOrientation
{
  v3 = NSStringFromSelector(sel_orientation);
  [(ICAttachment *)self willAccessValueForKey:v3];
  v4 = [(ICAttachment *)self primitiveValueForKey:v3];
  [(ICAttachment *)self didAccessValueForKey:v3];

  return v4 != 0;
}

- (void)setOrientation:(signed __int16)a3
{
  v3 = a3;
  if ([(ICAttachment *)self orientation]!= a3)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICAttachment *)self setCachedImage:0];
    }

    [(ICAttachment *)self invalidateAttachmentPreviewImages];
    [(ICAttachment *)self willChangeValueForKey:@"orientation"];
    v5 = [MEMORY[0x277CCABB0] numberWithShort:v3];
    [(ICAttachment *)self setPrimitiveValue:v5 forKey:@"orientation"];

    [(ICAttachment *)self didChangeValueForKey:@"orientation"];
  }
}

- (CGRect)bounds
{
  [(ICAttachment *)self originX];
  v4 = v3;
  [(ICAttachment *)self originY];
  v6 = v5;
  [(ICAttachment *)self sizeWidth];
  v8 = v7;
  [(ICAttachment *)self sizeHeight];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  [(ICAttachment *)self setOriginX:a3.origin.x];
  [(ICAttachment *)self setOriginY:y];
  [(ICAttachment *)self setSizeWidth:width];

  [(ICAttachment *)self setSizeHeight:height];
}

- (id)fileSizeString
{
  v3 = [(ICAttachment *)self media];
  v4 = [v3 mediaURL];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8E8] stringFromByteCount:-[ICAttachment fileSize](self countStyle:{"fileSize"), 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setParentAttachment:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICAttachment;
  [(ICBaseAttachment *)&v6 setParentAttachment:a3];
  v4 = [(ICAttachment *)self typeUTI];

  if (v4)
  {
    v5 = [(ICAttachment *)self typeUTI];
    [(ICAttachment *)self updateAttachmentSectionWithTypeUTI:v5];
  }
}

- (void)updateAttachmentSectionWithTypeUTI:(id)a3
{
  v12 = a3;
  v4 = [(ICAttachment *)self parentAttachment];
  v5 = [v4 typeUTI];

  if (!v5 || ([v4 attachmentModel], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "sectionForSubAttachments"), v6, !v7))
  {
    v8 = [v4 attachmentModel];
    v9 = [v8 hidesSubAttachmentsInAttachmentBrowser];

    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v10 = objc_opt_class();
      v11 = [(ICAttachment *)self URL];
      v7 = [v10 sectionFromTypeUTI:v12 url:v11];
    }
  }

  if ([(ICAttachment *)self section]!= v7)
  {
    [(ICAttachment *)self setSection:v7];
  }
}

- (void)setTypeUTI:(id)a3 resetToIntrinsicNotesVersion:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICAttachment *)self typeUTI];
  v8 = [v7 isEqualToString:v6];

  if ((v8 & 1) == 0)
  {
    [(ICAttachment *)self willChangeValueForKey:@"typeUTI"];
    [(ICAttachment *)self setPrimitiveValue:v6 forKey:@"typeUTI"];
    [(ICAttachment *)self updateAttachmentSectionWithTypeUTI:v6];
    [(ICAttachment *)self didChangeValueForKey:@"typeUTI"];
    if (self->_attachmentModel)
    {
      v9 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ICAttachment setTypeUTI:? resetToIntrinsicNotesVersion:?];
      }

      attachmentModel = self->_attachmentModel;
      self->_attachmentModel = 0;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [(ICAttachment *)self subAttachments];
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

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = [v16 typeUTI];
          [v16 updateAttachmentSectionWithTypeUTI:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    if (v4)
    {
      [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
    }
  }
}

+ (signed)sectionFromTypeUTI:(id)a3 url:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if ([ICAttachment typeUTIIsImage:v5]|| [ICAttachment typeUTIIsPlayableMovie:v5])
    {
      v7 = 1;
    }

    else if ([ICAttachment typeUTIIsPlayableAudio:v5])
    {
      v7 = 5;
    }

    else
    {
      v9 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v5];
      v10 = [v9 conformsToType:*MEMORY[0x277CE1E90]];

      if (v10)
      {
        if ([v6 ic_isMapURL])
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }

      else if ([ICAttachment typeUTIIsDrawing:v5]|| [ICAttachment typeUTIIsInlineDrawing:v5]|| [ICAttachment typeUTIIsSystemPaper:v5])
      {
        v7 = 2;
      }

      else
      {
        v11 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v5];
        v12 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.paper.doc.scan"];
        v13 = [v11 conformsToType:v12];

        if (v13)
        {
          v7 = 7;
        }

        else
        {
          v7 = 6;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUrlString:(id)a3
{
  v4 = a3;
  [(ICAttachment *)self willChangeValueForKey:@"urlString"];
  [(ICAttachment *)self willChangeValueForKey:@"URL"];
  URL = self->_URL;
  self->_URL = 0;

  [(ICCloudSyncingObject *)self setPrimitiveValue:v4 forEncryptableKey:@"urlString"];
  if ([(ICAttachment *)self isURL])
  {
    if ([(ICAttachment *)self isMap])
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }

    [(ICAttachment *)self setSection:v6];
  }

  [(ICAttachment *)self didChangeValueForKey:@"URL"];

  [(ICAttachment *)self didChangeValueForKey:@"urlString"];
}

- (void)saveMergeableDataIfNeeded
{
  if ([(ICAttachmentModel *)self->_attachmentModel isMergeableDataDirty])
  {
    attachmentModel = self->_attachmentModel;

    [(ICAttachmentModel *)attachmentModel writeMergeableData];
  }
}

- (NSData)mergeableData
{
  [(ICAttachment *)self saveMergeableDataIfNeeded];

  return [(ICCloudSyncingObject *)self primitiveValueForEncryptableKey:@"mergeableData"];
}

- (void)updateMarkedForDeletionStateAttachmentIsInUse:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICAttachment *)self typeUTI];

  if (v5)
  {
    v6 = [(ICAttachment *)self attachmentModel];
    [v6 updateAttachmentMarkedForDeletionStateAttachmentIsInUse:v3];
  }
}

- (BOOL)needsToBeRequested
{
  v3 = [(ICAttachment *)self attachmentType];
  LOBYTE(v4) = 1;
  if (v3 > 0xD)
  {
    goto LABEL_14;
  }

  if (((1 << v3) & 0x78) != 0)
  {
    v6 = [(ICAttachment *)self media];
    if (!v6)
    {
LABEL_9:

      return v4;
    }

LABEL_8:
    v7 = [(ICAttachment *)self media];
    LODWORD(v4) = [v7 isValid] ^ 1;

    goto LABEL_9;
  }

  if (((1 << v3) & 0x2A00) == 0)
  {
    if (((1 << v3) & 0x180) != 0)
    {
      if (![(ICAttachment *)self hasSynapseLink])
      {
        v17 = [(ICAttachment *)self urlString];
        LOBYTE(v4) = v17 == 0;

        return v4;
      }

      goto LABEL_13;
    }

LABEL_14:
    if (!v3)
    {
      return v4;
    }

    v4 = [(ICAttachment *)self typeUTI];

    if (!v4)
    {
      return v4;
    }

    v8 = MEMORY[0x277CE1CB8];
    v9 = [(ICAttachment *)self typeUTI];
    v10 = [v8 typeWithIdentifier:v9];
    if (([v10 conformsToType:*MEMORY[0x277CE1D48]] & 1) == 0)
    {
      v11 = MEMORY[0x277CE1CB8];
      v12 = [(ICAttachment *)self typeUTI];
      v13 = [v11 typeWithIdentifier:v12];
      if (([v13 conformsToType:*MEMORY[0x277CE1D40]] & 1) == 0)
      {
        v14 = MEMORY[0x277CE1CB8];
        v15 = [(ICAttachment *)self typeUTI];
        v16 = [v14 typeWithIdentifier:v15];
        if (([v16 conformsToType:*MEMORY[0x277CE1D68]] & 1) == 0)
        {
          v18 = MEMORY[0x277CE1CB8];
          v19 = [(ICAttachment *)self typeUTI];
          v20 = [v18 typeWithIdentifier:v19];
          v21 = [v20 conformsToType:*MEMORY[0x277CE1D50]];

          if ((v21 & 1) == 0)
          {
LABEL_13:
            LOBYTE(v4) = 0;
            return v4;
          }

LABEL_22:
          v6 = [(ICAttachment *)self media];
          if (!v6)
          {
            LOBYTE(v4) = 1;
            goto LABEL_9;
          }

          goto LABEL_8;
        }
      }
    }

    goto LABEL_22;
  }

  return [(ICAttachment *)self needsInitialFetchFromCloud];
}

- (BOOL)isInNoteTitleOrSnippet
{
  v3 = [(ICAttachment *)self note];
  if (v3)
  {
    v4 = [(ICBaseAttachment *)self rangeInNote];
    v6 = v5;
    v7 = [v3 rangeForTitle:0];
    v9 = v8;
    v13.location = v4;
    v13.length = v6;
    v15.location = v7;
    v15.length = v9;
    if (NSIntersectionRange(v13, v15).length)
    {
      v10 = 1;
    }

    else
    {
      v16.location = [v3 rangeForSnippetWithTitleRange:{v7, v9}];
      v16.length = v11;
      v14.location = v4;
      v14.length = v6;
      v10 = NSIntersectionRange(v14, v16).length != 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (signed)attachmentTypeFromURL
{
  if (![(ICAttachment *)self isURL])
  {
    return 0;
  }

  if ([(ICAttachment *)self isMap])
  {
    return 7;
  }

  return 8;
}

- (void)willSave
{
  [(ICAttachment *)self saveMergeableDataIfNeeded];
  v3.receiver = self;
  v3.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v3 willSave];
}

- (void)accountWillChangeToAccount:(id)a3
{
  v4 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__56;
  v15[4] = __Block_byref_object_dispose__56;
  v16 = 0;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(ICAttachment *)self media];
  [v6 accountWillChangeToAccount:v4];

  v7 = [(ICAttachment *)self previewImages];
  v8 = [v7 copy];
  [v8 makeObjectsPerformSelector:sel_accountWillChangeToAccount_ withObject:v4];

  v9 = [(ICAttachment *)self identifier];

  if (v4 && v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__ICAttachment_accountWillChangeToAccount___block_invoke;
    v11[3] = &unk_278199D78;
    v11[4] = self;
    v12 = v4;
    v13 = v5;
    v14 = v15;
    v10 = _Block_copy(v11);
    v10[2](v10, 0);
    v10[2](v10, 1);
  }

  _Block_object_dispose(v15, 8);
}

void __43__ICAttachment_accountWillChangeToAccount___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = NSStringFromFallbackAssetType(a2);
  if (a2 == 1)
  {
    v5 = [*(a1 + 32) fallbackPDFURL];
    v9 = objc_opt_class();
    v7 = [*(a1 + 32) identifier];
    v8 = [v9 fallbackPDFFallbackURLForIdentifier:v7 account:*(a1 + 40)];
  }

  else
  {
    if (a2)
    {
      v5 = 0;
      v10 = 0;
      goto LABEL_18;
    }

    v5 = [*(a1 + 32) fallbackImageURL];
    v6 = objc_opt_class();
    v7 = [*(a1 + 32) identifier];
    v8 = [v6 fallbackImageFallbackURLForIdentifier:v7 account:*(a1 + 40)];
  }

  v10 = v8;

  if (v5)
  {
    if (v10)
    {
      if (([v5 isEqual:v10] & 1) == 0)
      {
        v11 = *(a1 + 48);
        v12 = [v5 path];
        LODWORD(v11) = [v11 fileExistsAtPath:v12];

        if (v11)
        {
          v13 = *(a1 + 48);
          v14 = [v10 URLByDeletingLastPathComponent];
          v15 = *(*(a1 + 56) + 8);
          obj = *(v15 + 40);
          [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&obj];
          objc_storeStrong((v15 + 40), obj);

          v16 = *(*(a1 + 56) + 8);
          v17 = *(v16 + 40);
          if (v17)
          {
            v18 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              __43__ICAttachment_accountWillChangeToAccount___block_invoke_cold_1();
            }

            v16 = *(*(a1 + 56) + 8);
            v17 = *(v16 + 40);
          }

          v19 = *(a1 + 48);
          v21 = v17;
          [v19 moveItemAtURL:v5 toURL:v10 error:&v21];
          objc_storeStrong((v16 + 40), v21);
          if (*(*(*(a1 + 56) + 8) + 40))
          {
            v20 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              __43__ICAttachment_accountWillChangeToAccount___block_invoke_cold_2();
            }
          }
        }
      }
    }
  }

LABEL_18:
}

+ (id)filenameExtensionForUTI:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:?];
    v4 = [v3 preferredFilenameExtension];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)filenameFromUTI:(id)a3
{
  v4 = a3;
  if ([ICAttachment typeUTIIsImage:v4])
  {
    v5 = a1;
    v6 = 3;
LABEL_14:
    v9 = [v5 defaultTitleForAttachmentType:v6];
    goto LABEL_15;
  }

  if ([ICAttachment typeUTIIsPlayableAudio:v4])
  {
    v5 = a1;
    v6 = 4;
    goto LABEL_14;
  }

  if ([ICAttachment typeUTIIsPlayableMovie:v4])
  {
    v5 = a1;
    v6 = 5;
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v4];
    v8 = [v7 conformsToType:*MEMORY[0x277CE1E08]];

    if (v8)
    {
      v5 = a1;
      v6 = 6;
      goto LABEL_14;
    }

    if ([ICAttachment typeUTIIsDrawing:v4])
    {
LABEL_13:
      v5 = a1;
      v6 = 9;
      goto LABEL_14;
    }

    v15 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v4];
    v16 = [v15 conformsToType:*MEMORY[0x277CE1E90]];

    if (v16)
    {
      v5 = a1;
      v6 = 8;
      goto LABEL_14;
    }

    v17 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v4];
    v9 = [v17 localizedDescription];
  }

  else
  {
    v9 = 0;
    if ([ICAttachment typeUTIIsDrawing:0])
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (![v9 length])
  {
    v10 = [a1 defaultTitleForAttachmentType:2];

    v9 = v10;
  }

  v11 = [a1 filenameExtensionForUTI:v4];
  if (v11)
  {
    v12 = [v9 stringByAppendingPathExtension:v11];
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;

  return v13;
}

+ (id)mimeTypeFromUTI:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.coreaudio-format"])
  {
    v4 = @"audio/x-caf";
  }

  else if (v3)
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v3];
    v4 = [v5 preferredMIMEType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)typeUTIIsPlayableMovie:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v3];
    if ([v4 conformsToType:*MEMORY[0x277CE1E00]])
    {
      v5 = [MEMORY[0x277CE6650] audiovisualTypes];
      if ([v5 containsObject:v3])
      {
        v6 = [v3 isEqualToString:@"public.avi"] ^ 1;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)typeUTIIsPlayableAudio:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v3];
    if ([v4 conformsToType:*MEMORY[0x277CE1D00]])
    {
      v5 = [MEMORY[0x277CE6650] audiovisualTypes];
      v6 = [v5 containsObject:v3];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)typeUTIIsDrawing:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [ICUTType typeWithIdentifier:v3];
    v5 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.notes.sketch"];
    if ([v4 conformsToType:v5])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v3 isEqualToString:ICAttachmentUTTypeDrawingLegacy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)typeUTIIsInlineDrawing:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [ICUTType typeWithIdentifier:v3];
    v5 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.drawing.2"];
    if ([v4 conformsToType:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = [ICUTType typeWithIdentifier:v3];
      v8 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.drawing"];
      v6 = [v7 conformsToType:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)typeUTIIsImage:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v3];
    if ([v4 conformsToType:*MEMORY[0x277CE1DB0]] && (objc_msgSend(v3, "isEqualToString:", @"com.apple.drawing.2") & 1) == 0)
    {
      v5 = [v3 isEqualToString:@"com.apple.drawing"] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)defaultTitleForAttachmentType:(signed __int16)a3
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
      v4 = @"Attachment";
      goto LABEL_12;
    case 3:
      v4 = @"Image";
      goto LABEL_12;
    case 4:
      v4 = @"Audio";
      goto LABEL_12;
    case 5:
      v4 = @"Movie";
      goto LABEL_12;
    case 6:
    case 14:
      v4 = @"PDF";
      goto LABEL_12;
    case 7:
      v4 = @"Map";
      goto LABEL_12;
    case 8:
      v4 = @"URL";
      goto LABEL_12;
    case 9:
    case 10:
    case 13:
      v4 = @"Sketch";
      goto LABEL_12;
    case 11:
    case 15:
      v4 = @"Scanned Documents";
      goto LABEL_12;
    case 12:
      v4 = @"Table";
LABEL_12:
      v5 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);

      break;
    default:
      v5 = &stru_2827172C0;

      break;
  }

  return v5;
}

+ (id)mentionNotificationSnippetForAttachmentType:(signed __int16)a3
{
  v3 = a3;
  v4 = __ICLocalizedFrameworkString_impl(@"Mentioned you in an attachment", @"Mentioned you in an attachment", 0, 1);
  if ((v3 - 9) < 2 || v3 == 13)
  {
    v5 = @"Mentioned you in a drawing";
  }

  else
  {
    if (v3 != 12)
    {
      goto LABEL_7;
    }

    v5 = @"Mentioned you in a table";
  }

  v6 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);

  v4 = v6;
LABEL_7:

  return v4;
}

- (BOOL)isLoadingFromCloud
{
  if (([(ICAttachment *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ICAttachment *)self media];
  if (v4)
  {
    v5 = [(ICAttachment *)self media];
    v3 = [v5 needsInitialFetchFromCloud];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasVisibleInlineAttachments
{
  v2 = [(ICAttachment *)self inlineAttachments];
  v3 = +[(ICBaseAttachment *)ICInlineAttachment];
  v4 = [v2 ic_containsObjectMatchingPredicate:v3];

  return v4;
}

- (NSSet)visibleInlineAttachments
{
  v2 = [(ICAttachment *)self inlineAttachments];
  v3 = +[(ICBaseAttachment *)ICInlineAttachment];
  v4 = [v2 filteredSetUsingPredicate:v3];

  return v4;
}

- (id)unsupportedAttachmentTitle
{
  v3 = [(ICAttachment *)self fallbackTitle];
  if (!v3)
  {
    if ([(ICAttachment *)self showsLoadingPlaceholder])
    {
      v4 = @"Loading Attachment…";
    }

    else
    {
      v4 = @"Unsupported Attachment";
    }

    v3 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
  }

  return v3;
}

- (id)unsupportedAttachmentSubtitle
{
  v3 = [(ICAttachment *)self fallbackSubtitleIOS];
  if (!v3)
  {
    if (![(ICAttachment *)self showsLoadingPlaceholder])
    {
      v4 = @"Upgrade iOS to view this attachment.";
      goto LABEL_6;
    }

    if ([(ICAttachment *)self hasFallbackPDF])
    {
      v4 = @"PDF Document";
LABEL_6:
      v3 = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
      goto LABEL_8;
    }

    v3 = &stru_2827172C0;
  }

LABEL_8:

  return v3;
}

- (BOOL)shouldShowInContentInfoText
{
  if (([(ICAttachment *)self markedForDeletion]& 1) != 0)
  {
    return 0;
  }

  v4 = [(ICAttachment *)self parentAttachment];
  if (v4 || [(ICAttachment *)self isBeingEditedLocallyOnDevice])
  {
    v3 = 0;
  }

  else
  {
    v6 = [(ICAttachment *)self attachmentModel];
    v3 = [v6 shouldShowInContentInfoText];
  }

  return v3;
}

- (NSURL)fileURL
{
  v3 = [(ICAttachment *)self media];
  v4 = [v3 isPasswordProtected];
  v5 = [(ICAttachment *)self media];
  v6 = v5;
  if (v4)
  {
    [v5 encryptedMediaURL];
  }

  else
  {
    [v5 mediaURL];
  }
  v7 = ;

  return v7;
}

- (BOOL)isDeletedOrInTrash
{
  if (([(ICAttachment *)self isDeleted]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ICAttachment *)self note];
  v5 = [v4 isDeletedOrInTrash];

  return v5;
}

- (void)setRemoteFileURL:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->_remoteFileURL isEqual:?]& 1) == 0)
  {
    if ([(ICAttachment *)self isPasswordProtected])
    {
      v4 = [v5 absoluteString];
      [(ICCloudSyncingObject *)self setValue:v4 forEncryptableKey:@"remoteFileURL"];
LABEL_6:

      goto LABEL_7;
    }

    if (v5)
    {
      v4 = [v5 absoluteString];
      [(ICAttachment *)self setRemoteFileURLString:v4];
      goto LABEL_6;
    }

    [(ICAttachment *)self setRemoteFileURLString:0];
  }

LABEL_7:
}

- (NSURL)remoteFileURL
{
  if (!self->_remoteFileURL)
  {
    if ([(ICAttachment *)self isPasswordProtected])
    {
      v3 = [(ICCloudSyncingObject *)self valueForEncryptableKey:@"remoteFileURL"];
    }

    else
    {
      v3 = [(ICAttachment *)self remoteFileURLString];
      if (!v3)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
    remoteFileURL = self->_remoteFileURL;
    self->_remoteFileURL = v4;

    goto LABEL_6;
  }

LABEL_7:
  v6 = self->_remoteFileURL;

  return v6;
}

- (NSDictionary)metadata
{
  if ([(ICAttachment *)self isPasswordProtected])
  {
    objc_opt_class();
    v3 = NSStringFromSelector(sel_metadata);
    v4 = [(ICCloudSyncingObject *)self valueForEncryptableKey:v3];
    v5 = ICCheckedDynamicCast();
  }

  else
  {
    metadata = self->_metadata;
    if (metadata)
    {
      v5 = metadata;
    }

    else
    {
      v7 = NSStringFromSelector(sel_metadataData);
      v8 = [(ICAttachment *)self primitiveValueForKey:v7];

      if (v8)
      {
        objc_opt_class();
        v14 = 0;
        v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v14];
        v10 = v14;
        v11 = ICCheckedDynamicCast();

        if (!v11 || v10)
        {
          v12 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [ICAttachment metadata];
          }

          v5 = 0;
        }

        else
        {
          objc_storeStrong(&self->_metadata, v11);
          v5 = self->_metadata;
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (void)setMetadata:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self metadata];
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
  if (v8 | v10)
  {
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

      goto LABEL_17;
    }

    v14 = [v8 isEqual:v10];

    if ((v14 & 1) == 0)
    {
LABEL_17:
      objc_opt_class();
      v13 = ICCheckedDynamicCast();

      if ([(ICAttachment *)self isPasswordProtected])
      {
        v15 = NSStringFromSelector(sel_metadata);
        [(ICCloudSyncingObject *)self setValue:v13 forEncryptableKey:v15];
LABEL_28:

        goto LABEL_29;
      }

      if (v13)
      {
        v21 = 0;
        v15 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v21];
        v16 = v21;
        v17 = v16;
        if (!v15 || v16)
        {
          v18 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [ICAttachment setMetadata:];
          }

          goto LABEL_27;
        }
      }

      else
      {
        v15 = 0;
      }

      objc_storeStrong(&self->_metadata, v13);
      v19 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self willChangeValueForKey:v19];

      v20 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self setPrimitiveValue:v15 forKey:v20];

      v17 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self didChangeValueForKey:v17];
LABEL_27:

      goto LABEL_28;
    }
  }

  else
  {
  }

  v13 = v4;
LABEL_29:
}

- (void)updateAttachmentMetadataWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICAttachment_updateAttachmentMetadataWithBlock___block_invoke;
  v7[3] = &unk_2781957B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

void __50__ICAttachment_updateAttachmentMetadataWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v7 = v5;

  (*(*(a1 + 40) + 16))();
  v6 = [v7 copy];
  [*(a1 + 32) setMetadata:v6];
}

- (NSData)metadataData
{
  if ([(ICAttachment *)self isPasswordProtected])
  {
    objc_opt_class();
    v3 = NSStringFromSelector(sel_metadata);
    v4 = [(ICCloudSyncingObject *)self valueForEncryptableKey:v3];
    v5 = ICCheckedDynamicCast();

    if (v5)
    {
      v13 = 0;
      v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v13];
      v7 = v13;
      v8 = v7;
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v11 = v6;
      }

      else
      {
        v10 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment metadataData];
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v5 = NSStringFromSelector(sel_metadataData);
    v11 = [(ICAttachment *)self primitiveValueForKey:v5];
  }

  return v11;
}

- (void)setMetadataData:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self metadataData];
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
    goto LABEL_26;
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

    goto LABEL_15;
  }

  v13 = [v8 isEqual:v10];

  if ((v13 & 1) == 0)
  {
LABEL_15:
    if (v4)
    {
      objc_opt_class();
      v19 = 0;
      v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v19];
      v15 = v19;
      v5 = ICCheckedDynamicCast();

      if (!v5 || v15)
      {
        v16 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment metadata];
        }

        goto LABEL_25;
      }
    }

    else
    {
      v5 = 0;
    }

    if ([(ICAttachment *)self isPasswordProtected])
    {
      v15 = NSStringFromSelector(sel_metadata);
      [(ICCloudSyncingObject *)self setValue:v5 forEncryptableKey:v15];
    }

    else
    {
      objc_storeStrong(&self->_metadata, v5);
      v17 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self willChangeValueForKey:v17];

      v18 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self setPrimitiveValue:v4 forKey:v18];

      v15 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self didChangeValueForKey:v15];
    }

LABEL_25:

LABEL_26:
  }
}

- (BOOL)hasMetadata
{
  v3 = [(ICAttachment *)self isPasswordProtected];
  v4 = &selRef_metadata;
  if (!v3)
  {
    v4 = &selRef_metadataData;
  }

  v5 = NSStringFromSelector(*v4);
  v6 = [(ICCloudSyncingObject *)self valueForEncryptableKey:v5];

  return v6 != 0;
}

- (void)updateCombinedSummary
{
  v3 = [(ICAttachment *)self handwritingSummary];
  if (v3 || ([(ICAttachment *)self imageClassificationSummary], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v9 = [MEMORY[0x277CBEB18] array];
    v4 = [(ICAttachment *)self handwritingSummary];
    [v9 ic_addNonNilObject:v4];

    v5 = [(ICAttachment *)self imageClassificationSummary];
    [v9 ic_addNonNilObject:v5];

    v6 = [(ICAttachment *)self ocrSummary];
    [v9 ic_addNonNilObject:v6];

    v7 = [v9 componentsJoinedByString:@" "];
    [(ICAttachment *)self setSummary:v7];

    return;
  }

  v8 = [(ICAttachment *)self ocrSummary];

  if (v8)
  {
    goto LABEL_4;
  }

  [(ICAttachment *)self setSummary:0];
}

- (BOOL)updateHandwritingSummary:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self handwritingSummary];
  v6 = v5;
  v7 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  if (v7 == v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  v11 = v10;
  v12 = v11;
  if (v9 | v11)
  {
    if (v9)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      v14 = [v9 isEqual:v11] ^ 1;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  [(ICAttachment *)self setHandwritingSummary:v4];
  return v14;
}

- (void)setHandwritingSummary:(id)a3
{
  [(ICCloudSyncingObject *)self setValue:a3 forEncryptableKey:@"handwritingSummary"];
  [(ICAttachment *)self updateCombinedSummary];
  if (a3)
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  [(ICAttachment *)self setHandwritingSummaryVersion:v5];
}

+ (void)purgeHandwritingSummariesInContext:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCA920];
  v5 = +[(ICBaseAttachment *)ICAttachment];
  v15[0] = v5;
  v6 = [ICAttachment predicateForPasswordProtected:0];
  v15[1] = v6;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"handwritingSummary != nil"];
  v15[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v9 = [v4 andPredicateWithSubpredicates:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ICAttachment_purgeHandwritingSummariesInContext___block_invoke;
  v12[3] = &unk_278194AD8;
  v13 = v9;
  v14 = v3;
  v10 = v3;
  v11 = v9;
  [v10 performBlockAndWait:v12];
}

void __51__ICAttachment_purgeHandwritingSummariesInContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 ic_loggingIdentifier];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_INFO, "Purging handwriting summary {attachment: %@}", &v5, 0xCu);
  }

  [v2 setHandwritingSummary:0];
  [v2 updateChangeCountWithReason:@"Purged handwriting summary"];
}

- (void)setImageClassificationSummary:(id)a3
{
  v4 = a3 != 0;
  [ICCloudSyncingObject setValue:"setValue:forEncryptableKey:" forEncryptableKey:?];
  [(ICAttachment *)self updateCombinedSummary];

  [(ICAttachment *)self setImageClassificationSummaryVersion:(4 * v4)];
}

- (void)setOcrSummary:(id)a3
{
  [(ICCloudSyncingObject *)self setValue:a3 forEncryptableKey:@"ocrSummary"];
  [(ICAttachment *)self updateCombinedSummary];

  [(ICAttachment *)self setOcrSummaryVersion:a3 != 0];
}

+ (id)isBeingEditedLocallyOnDeviceSet
{
  if (isBeingEditedLocallyOnDeviceSet_onceToken != -1)
  {
    +[ICAttachment isBeingEditedLocallyOnDeviceSet];
  }

  v3 = isBeingEditedLocallyOnDeviceSet_sIsBeingEditedLocallyOnDeviceSet;

  return v3;
}

void __47__ICAttachment_isBeingEditedLocallyOnDeviceSet__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = isBeingEditedLocallyOnDeviceSet_sIsBeingEditedLocallyOnDeviceSet;
  isBeingEditedLocallyOnDeviceSet_sIsBeingEditedLocallyOnDeviceSet = v0;
}

- (void)setIsBeingEditedLocallyOnDevice:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_opt_class() isBeingEditedLocallyOnDeviceSet];
  v6 = [(ICAttachment *)self identifier];
  obj = v5;
  objc_sync_enter(obj);
  if (v3)
  {
    [obj ic_addNonNilObject:v6];
  }

  else
  {
    [obj ic_removeNonNilObject:v6];
  }

  objc_sync_exit(obj);
}

- (BOOL)isBeingEditedLocallyOnDevice
{
  v3 = [objc_opt_class() isBeingEditedLocallyOnDeviceSet];
  v4 = [(ICAttachment *)self identifier];
  v5 = v3;
  objc_sync_enter(v5);
  LOBYTE(v3) = [v5 containsObject:v4];
  objc_sync_exit(v5);

  return v3;
}

- (void)setMarkupModelData:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(ICAttachment *)self setCachedImage:0];
  }

  [(ICAttachment *)self invalidateAttachmentPreviewImages];
  [(ICCloudSyncingObject *)self setValue:v4 forEncryptableKey:@"markupModelData"];
}

- (BOOL)shouldEmbedMarkupDataInMedia
{
  v2 = [(ICAttachment *)self parentAttachment];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 attachmentType] != 11;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setMergeableData:(id)a3
{
  v4 = a3;
  [(ICAttachment *)self setSettingMergeableData:1];
  [(ICCloudSyncingObject *)self setValue:v4 forEncryptableKey:@"mergeableData"];

  [(ICAttachment *)self setSettingMergeableData:0];
}

- (BOOL)hasSynapseLink
{
  v2 = [(ICAttachment *)self synapseData];
  v3 = v2 != 0;

  return v3;
}

- (void)setMergeablePreferredViewSize:(id)a3
{
  v8 = a3;
  v4 = [(ICAttachment *)self mergeablePreferredViewSize];
  v5 = [v4 isEqualToData:v8];

  if ((v5 & 1) == 0)
  {
    performBlockOnMainThread();
    v6 = NSStringFromSelector(sel_mergeablePreferredViewSize);
    [(ICAttachment *)self willChangeValueForKey:v6];
    [(ICAttachment *)self setPrimitiveValue:v8 forKey:v6];
    [(ICAttachment *)self didChangeValueForKey:v6];
    v7 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidChangePreferredSizeNotification"];
  }
}

void __46__ICAttachment_setMergeablePreferredViewSize___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"ICAttachmentWillChangePreferredSizeNotification" object:0];
}

+ (id)mergeableWallClockValueKeyPaths
{
  if (mergeableWallClockValueKeyPaths_onceToken != -1)
  {
    +[ICAttachment mergeableWallClockValueKeyPaths];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___ICAttachment;
  v3 = objc_msgSendSuper2(&v6, sel_mergeableWallClockValueKeyPaths);
  v4 = [v3 setByAddingObjectsFromSet:mergeableWallClockValueKeyPaths_ourSet];

  return v4;
}

void __47__ICAttachment_mergeableWallClockValueKeyPaths__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v3 = NSStringFromSelector(sel_mergeablePreferredViewSize);
  v1 = [v0 setWithObject:v3];
  v2 = mergeableWallClockValueKeyPaths_ourSet;
  mergeableWallClockValueKeyPaths_ourSet = v1;
}

- (void)inlineFormFillingBannerWasDismissedByUser
{
  v3 = [(ICCloudSyncingObject *)self currentReplicaID];
  v4 = [v3 UUIDString];

  [(ICAttachment *)self inlineFormFillingBannerWasDismissedByDeviceIdentifier:v4];
}

- (void)inlineFormFillingBannerWasDismissedByDeviceIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__ICAttachment_inlineFormFillingBannerWasDismissedByDeviceIdentifier___block_invoke;
  v6[3] = &unk_278199DC0;
  v7 = v4;
  v5 = v4;
  [(ICAttachment *)self updateAttachmentMetadataWithBlock:v6];
}

void __70__ICAttachment_inlineFormFillingBannerWasDismissedByDeviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"inline_form_dismissal_count_by_device"];
  v10 = [v4 mutableCopy];

  v5 = v10;
  if (!v10)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = v5;
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_282747E68;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "unsignedIntValue") + 1}];
  [v11 setObject:v8 forKeyedSubscript:*(a1 + 32)];
  v9 = [v11 copy];
  [v3 setObject:v9 forKeyedSubscript:@"inline_form_dismissal_count_by_device"];
}

- (unint64_t)inlineFormFillingBannerDismissalCountForDevice
{
  v3 = [(ICCloudSyncingObject *)self currentReplicaID];
  v4 = [v3 UUIDString];

  v5 = [(ICAttachment *)self inlineFormFillingBannerDismissalCountForDeviceIdentifier:v4];
  return v5;
}

- (unint64_t)inlineFormFillingBannerDismissalCountForDeviceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self inlineFormFillingDismissalCountForAllDevices];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:v4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 unsignedIntValue];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)inlineFormFillingDismissalCountForAllDevices
{
  objc_opt_class();
  v3 = [(ICAttachment *)self metadata];
  v4 = [v3 objectForKeyedSubscript:@"inline_form_dismissal_count_by_device"];
  v5 = ICDynamicCast();

  return v5;
}

- (id)parentEncryptableObject
{
  v3 = [(ICAttachment *)self note];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ICAttachment *)self account];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEncryptableKeyBinaryData:(id)a3
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!isEncryptableKeyBinaryData__keys)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = NSStringFromSelector(sel_mergeableData);
    v16[0] = v6;
    v7 = NSStringFromSelector(sel_markupModelData);
    v16[1] = v7;
    v8 = NSStringFromSelector(sel_linkPresentationArchivedMetadata);
    v16[2] = v8;
    v9 = NSStringFromSelector(sel_synapseData);
    v16[3] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    v11 = [v5 setWithArray:v10];
    v12 = isEncryptableKeyBinaryData__keys;
    isEncryptableKeyBinaryData__keys = v11;
  }

  v15.receiver = self;
  v15.super_class = ICAttachment;
  if ([(ICCloudSyncingObject *)&v15 isEncryptableKeyBinaryData:v4])
  {
    v13 = 1;
  }

  else
  {
    v13 = [isEncryptableKeyBinaryData__keys containsObject:v4];
  }

  return v13;
}

- (void)deserializeAndMergeValues:(id)a3
{
  v9.receiver = self;
  v9.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v9 deserializeAndMergeValues:a3];
  v4 = [(ICAttachment *)self typeUTI];
  if ([v4 isEqualToString:@"com.apple.notes.gallery"])
  {
  }

  else
  {
    v5 = [(ICAttachment *)self parentAttachment];
    v6 = [v5 typeUTI];
    v7 = [v6 isEqualToString:@"com.apple.notes.gallery"];

    if ((v7 & 1) == 0)
    {
      v8 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];
    }
  }
}

- (id)mergeDecryptedValue:(id)a3 withOldValue:(id)a4 forKey:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[ICCloudSyncingObject needsToLoadDecryptedValues](self, "needsToLoadDecryptedValues") || (NSStringFromSelector(sel_mergeableData), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, !v12))
  {
    v21.receiver = self;
    v21.super_class = ICAttachment;
    v15 = [(ICCloudSyncingObject *)&v21 mergeDecryptedValue:v8 withOldValue:v9 forKey:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v8;
      v14 = [(ICAttachment *)self attachmentModel];
      [v14 mergeWithMergeableData:v13];
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(ICAttachment *)self className];
        v18 = [(ICAttachment *)self identifier];
        *buf = 138412802;
        v23 = v10;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_INFO, "Trying to merge %@ for %@ (%@), but the data isn't NSData", buf, 0x20u);
      }
    }

    v15 = [(ICAttachment *)self mergeableData];
  }

  v19 = v15;

  return v19;
}

- (void)persistPendingChanges
{
  v3 = [(ICAttachment *)self note];
  v4 = [v3 modificationDate];

  v5 = [(ICAttachment *)self attachmentModel];
  [v5 persistPendingChanges];

  [(ICAttachment *)self saveMergeableDataIfNeeded];
  if (v4)
  {
    v6 = [(ICAttachment *)self note];
    v7 = [v6 modificationDate];
    v8 = [v7 isEqual:v4];

    if ((v8 & 1) == 0)
    {
      v9 = [(ICAttachment *)self note];
      [v9 setModificationDate:v4];
    }
  }

  v10.receiver = self;
  v10.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v10 persistPendingChanges];
}

- (void)clearDecryptedData
{
  if (objc_opt_respondsToSelector())
  {
    [(ICAttachment *)self setCachedImage:0];
  }

  v3.receiver = self;
  v3.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v3 clearDecryptedData];
}

+ (BOOL)isTypeUTISupportedForWatch:(id)a3
{
  v3 = a3;
  if (isTypeUTISupportedForWatch__onceToken != -1)
  {
    +[ICAttachment isTypeUTISupportedForWatch:];
  }

  if ([isTypeUTISupportedForWatch__supportedTypeStrings containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [ICUTType typeWithIdentifier:v3];
    v6 = v5;
    if (v5)
    {
      v7 = isTypeUTISupportedForWatch__supportedTypes;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __43__ICAttachment_isTypeUTISupportedForWatch___block_invoke_3;
      v9[3] = &unk_278199E08;
      v10 = v5;
      v4 = [v7 ic_containsObjectPassingTest:v9];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __43__ICAttachment_isTypeUTISupportedForWatch___block_invoke()
{
  v7 = [MEMORY[0x277CBEB18] array];
  v0 = [ICUTType typeWithIdentifier:@"com.apple.notes.todo"];
  [v7 ic_addNonNilObject:v0];

  v1 = [ICUTType typeWithIdentifier:@"com.apple.notes.inlinetextattachment.link"];
  [v7 ic_addNonNilObject:v1];

  v2 = [ICUTType typeWithIdentifier:@"com.apple.notes.inlinetextattachment.calculateresult"];
  [v7 ic_addNonNilObject:v2];

  [v7 ic_addNonNilObject:*MEMORY[0x277CE1DB0]];
  [v7 ic_addNonNilObject:*MEMORY[0x277CE1E10]];
  [v7 ic_addNonNilObject:*MEMORY[0x277CE1DC0]];
  [v7 ic_addNonNilObject:*MEMORY[0x277CE1E90]];
  v3 = [v7 copy];
  v4 = isTypeUTISupportedForWatch__supportedTypes;
  isTypeUTISupportedForWatch__supportedTypes = v3;

  v5 = [isTypeUTISupportedForWatch__supportedTypes ic_compactMap:&__block_literal_global_574];
  v6 = isTypeUTISupportedForWatch__supportedTypeStrings;
  isTypeUTISupportedForWatch__supportedTypeStrings = v5;
}

+ (BOOL)isTypeUTISupportedForPasswordProtectedNotes:(id)a3
{
  v3 = a3;
  if (isTypeUTISupportedForPasswordProtectedNotes__onceToken != -1)
  {
    +[ICAttachment isTypeUTISupportedForPasswordProtectedNotes:];
  }

  if ([isTypeUTISupportedForPasswordProtectedNotes__supportedTypeStrings containsObject:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [ICUTType typeWithIdentifier:v3];
    v6 = v5;
    if (v5)
    {
      v7 = isTypeUTISupportedForPasswordProtectedNotes__supportedTypes;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __60__ICAttachment_isTypeUTISupportedForPasswordProtectedNotes___block_invoke_3;
      v9[3] = &unk_278199E08;
      v10 = v5;
      v4 = [v7 ic_containsObjectPassingTest:v9];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __60__ICAttachment_isTypeUTISupportedForPasswordProtectedNotes___block_invoke()
{
  v14 = [MEMORY[0x277CBEB18] array];
  [v14 ic_addNonNilObject:*MEMORY[0x277CE1DB0]];
  [v14 ic_addNonNilObject:*MEMORY[0x277CE1DC0]];
  [v14 ic_addNonNilObject:*MEMORY[0x277CE1E90]];
  v0 = [ICUTType typeWithIdentifier:@"com.apple.notes.sketch"];
  [v14 ic_addNonNilObject:v0];

  v1 = [ICUTType typeWithIdentifier:@"com.apple.notes.gallery"];
  [v14 ic_addNonNilObject:v1];

  v2 = [ICUTType typeWithIdentifier:@"com.apple.notes.table"];
  [v14 ic_addNonNilObject:v2];

  v3 = [ICUTType typeWithIdentifier:@"com.apple.drawing"];
  [v14 ic_addNonNilObject:v3];

  v4 = [ICUTType typeWithIdentifier:@"com.apple.drawing.2"];
  [v14 ic_addNonNilObject:v4];

  v5 = [ICUTType typeWithIdentifier:@"com.apple.paper"];
  [v14 ic_addNonNilObject:v5];

  v6 = [ICUTType typeWithIdentifier:@"com.apple.paper.doc.scan"];
  [v14 ic_addNonNilObject:v6];

  v7 = [ICUTType typeWithIdentifier:@"com.apple.notes.inlinetextattachment.link"];
  [v14 ic_addNonNilObject:v7];

  v8 = [ICUTType typeWithIdentifier:@"com.apple.notes.inlinetextattachment.calculateresult"];
  [v14 ic_addNonNilObject:v8];

  v9 = [ICUTType typeWithIdentifier:@"com.apple.notes.inlinetextattachment.calculategraphexpression"];
  [v14 ic_addNonNilObject:v9];

  v10 = [v14 copy];
  v11 = isTypeUTISupportedForPasswordProtectedNotes__supportedTypes;
  isTypeUTISupportedForPasswordProtectedNotes__supportedTypes = v10;

  v12 = [isTypeUTISupportedForPasswordProtectedNotes__supportedTypes ic_compactMap:&__block_literal_global_579];
  v13 = isTypeUTISupportedForPasswordProtectedNotes__supportedTypeStrings;
  isTypeUTISupportedForPasswordProtectedNotes__supportedTypeStrings = v12;
}

+ (BOOL)isPathExtensionSupportedForPasswordProtectedNotes:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:?];
  v5 = [v4 identifier];

  LOBYTE(a1) = [a1 isTypeUTISupportedForPasswordProtectedNotes:v5];
  return a1;
}

- (BOOL)hasCroppingQuad
{
  v2 = [(ICAttachment *)self attachmentModel];
  v3 = [v2 shouldCropImage];

  return v3;
}

- (void)setPreferredViewSize:(signed __int16)a3
{
  v3 = a3;
  v5 = [ICTTMergeableWallClockValue alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithShort:v3];
  v10 = [(ICTTMergeableWallClockValue *)v5 initWithValue:v6 timestamp:0];

  v7 = NSStringFromSelector(sel_preferredViewSize);
  [(ICAttachment *)self willChangeValueForKey:v7];

  v8 = [(ICTTMergeableWallClockValue *)v10 serialize];
  [(ICAttachment *)self setMergeablePreferredViewSize:v8];

  v9 = NSStringFromSelector(sel_preferredViewSize);
  [(ICAttachment *)self didChangeValueForKey:v9];

  [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"set a new preferred view size"];
}

- (void)resetPreferredViewSizeIfNecessary
{
  v3 = [(ICAttachment *)self mergeablePreferredViewSize];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [ICTTMergeableWallClockValue alloc];
    v6 = [(ICAttachment *)self mergeablePreferredViewSize];
    v14 = [(ICTTMergeableWallClockValue *)v5 initWithData:v6];

    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  v8 = [(ICTTMergeableWallClockValue *)v7 value];

  if (v8)
  {
    v9 = [[ICTTMergeableWallClockValue alloc] initWithValue:0 timestamp:0];

    v10 = NSStringFromSelector(sel_preferredViewSize);
    [(ICAttachment *)self willChangeValueForKey:v10];

    v11 = [(ICTTMergeableWallClockValue *)v9 serialize];
    [(ICAttachment *)self setMergeablePreferredViewSize:v11];

    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"User reset preferredViewSize"];
    v12 = NSStringFromSelector(sel_preferredViewSize);
    [(ICAttachment *)self didChangeValueForKey:v12];

    v13 = v9;
  }

  else
  {
    v13 = v15;
  }
}

+ (id)keyPathsForValuesAffectingIsSharedViaICloud
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICAttachment;
  v2 = objc_msgSendSuper2(&v5, sel_keyPathsForValuesAffectingIsSharedViaICloud);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"self.parentAttachment.note"];
  [v3 addObject:@"self.parentAttachment.note.isSharedViaICloud"];
  [v3 addObject:@"self.note"];
  [v3 addObject:@"self.note.isSharedViaICloud"];

  return v3;
}

- (id)childCloudObjectsForMinimumSupportedVersionPropagation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(ICAttachment *)self subAttachments];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICAttachment *)self media];

    if (v6)
    {
      v7 = [(ICAttachment *)self subAttachments];
      v8 = [v7 allObjects];
      [v3 addObjectsFromArray:v8];

LABEL_7:
      v10 = [(ICAttachment *)self media];
      [v3 addObject:v10];
      goto LABEL_8;
    }
  }

  v9 = [(ICAttachment *)self subAttachments];

  if (!v9)
  {
    v12 = [(ICAttachment *)self media];

    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v10 = [(ICAttachment *)self subAttachments];
  v11 = [v10 allObjects];
  [v3 addObjectsFromArray:v11];

LABEL_8:
LABEL_9:
  v13 = [(ICAttachment *)self inlineAttachments];

  if (v13)
  {
    v14 = [(ICAttachment *)self inlineAttachments];
    v15 = [v14 allObjects];
    [v3 addObjectsFromArray:v15];
  }

  if ([v3 count])
  {
    v16 = [v3 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)setMarkedForDeletion:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICAttachment *)self markedForDeletion];
  v7.receiver = self;
  v7.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v7 setMarkedForDeletion:v3];
  if (!v5 && v3)
  {
    v6 = [(ICAttachment *)self paperBundleModel];
    [v6 removeStrokesFromStyleInventory];
  }
}

- (void)markForDeletion
{
  if (([(ICAttachment *)self markedForDeletion]& 1) == 0)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"ICAttachmentWillBeDeletedNotification" object:self];

    v7.receiver = self;
    v7.super_class = ICAttachment;
    [(ICCloudSyncingObject *)&v7 markForDeletion];
    v4 = [(ICAttachment *)self media];
    [v4 markForDeletion];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"ICAttachmentWasDeletedNotification" object:self];

    if (objc_opt_respondsToSelector())
    {
      [(ICAttachment *)self notifyDocCamFrameworkAttachmentWasDeleted];
    }

    [(ICAttachment *)self setHandwritingSummary:0];
    [(ICAttachment *)self setAdditionalIndexableText:0];
    v6 = [(ICCloudSyncingObject *)self modificationDate];
    [(ICAttachment *)self setModificationDate:v6];
  }
}

- (void)unmarkForDeletion
{
  if ([(ICAttachment *)self markedForDeletion])
  {
    v6.receiver = self;
    v6.super_class = ICAttachment;
    [(ICCloudSyncingObject *)&v6 unmarkForDeletion];
    v3 = [(ICAttachment *)self media];
    [v3 unmarkForDeletion];

    v4 = [(ICCloudSyncingObject *)self modificationDate];
    [(ICAttachment *)self setModificationDate:v4];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"ICAttachmentWasUndeletedNotification" object:self];
  }
}

- (id)previewItemURL
{
  v2 = [(ICAttachment *)self attachmentModel];
  v3 = [v2 previewItemURL];

  return v3;
}

- (id)previewItemTitle
{
  v2 = [(ICAttachment *)self attachmentModel];
  v3 = [v2 previewItemTitle];

  return v3;
}

- (BOOL)supportsQuickLook
{
  v2 = [(ICAttachment *)self attachmentModel];
  v3 = [v2 supportsQuickLook];

  return v3;
}

- (void)attachmentDidChange
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "No note set for attachment %@", v1, 0xCu);
}

- (BOOL)locationNeedsUpdate
{
  if (([(ICAttachment *)self markedForDeletion]& 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = [(ICAttachment *)self location];
    if (v4 || [(ICAttachment *)self checkedForLocation])
    {
      v5 = [(ICAttachment *)self location];
      if (v5)
      {
        v6 = [(ICAttachment *)self location];
        if ([v6 placeUpdated])
        {
          LOBYTE(v3) = 0;
        }

        else
        {
          v7 = [(ICAttachment *)self location];
          v3 = [v7 updatingPlace] ^ 1;
        }
      }

      else
      {
        LOBYTE(v3) = 0;
      }
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (id)ic_loggingValues
{
  v12.receiver = self;
  v12.super_class = ICAttachment;
  v3 = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [v3 mutableCopy];

  v5 = [(ICAttachment *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__ICAttachment_ic_loggingValues__block_invoke;
  v10[3] = &unk_278194AD8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [v5 performBlockAndWait:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __32__ICAttachment_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) media];
  v3 = [v2 identifier];

  if (v3)
  {
    v4 = [*(a1 + 32) media];
    v5 = [v4 identifier];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:@"media"];
  }

  v6 = [*(a1 + 32) typeUTI];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"nil";
  }

  [*(a1 + 40) setObject:v8 forKeyedSubscript:@"type"];

  v9 = [*(a1 + 32) note];
  v10 = [v9 identifier];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"note"];

  v13 = [*(a1 + 32) creationDate];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"nil";
  }

  [*(a1 + 40) setObject:v15 forKeyedSubscript:@"creationDate"];

  v16 = [*(a1 + 32) modificationDate];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"nil";
  }

  [*(a1 + 40) setObject:v18 forKeyedSubscript:@"modificationDate"];

  v19 = [*(a1 + 32) subAttachments];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [*(a1 + 32) subAttachments];
    v22 = [v21 allObjects];
    v23 = [v22 valueForKey:@"recordName"];
    [*(a1 + 40) setObject:v23 forKeyedSubscript:@"subAttachments"];
  }

  v24 = [*(a1 + 32) inlineAttachments];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [*(a1 + 32) inlineAttachments];
    v27 = [v26 allObjects];
    v28 = [v27 valueForKey:@"recordName"];
    [*(a1 + 40) setObject:v28 forKeyedSubscript:@"attachments"];
  }

  v29 = [*(a1 + 32) noteUsingTitleForNoteTitle];

  if (v29)
  {
    v31 = [*(a1 + 32) noteUsingTitleForNoteTitle];
    v30 = [v31 identifier];
    [*(a1 + 40) setObject:v30 forKeyedSubscript:@"noteUsingTitleForNoteTitle"];
  }
}

- (NSString)accessibilityDescriptionForType
{
  v3 = [(ICAttachment *)self attachmentType];
  v4 = 0;
  if (v3 > 6u)
  {
    if (v3 <= 8u)
    {
      if (v3 == 7)
      {
        v5 = @"map";
      }

      else
      {
        v5 = @"web link";
      }
    }

    else if (v3 - 9 >= 2)
    {
      if (v3 != 12)
      {
        goto LABEL_21;
      }

      v5 = @"table";
    }

    else
    {
      v5 = @"drawing";
    }
  }

  else if (v3 <= 3u)
  {
    if (v3 == 2)
    {
      v4 = [(ICAttachment *)self _accessibilityDescriptionForGenericType];
      goto LABEL_21;
    }

    if (v3 != 3)
    {
      goto LABEL_21;
    }

    v5 = @"image";
  }

  else if (v3 == 4)
  {
    v5 = @"audio";
  }

  else if (v3 == 5)
  {
    v5 = @"movie";
  }

  else
  {
    v5 = @"PDF";
  }

  v4 = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
LABEL_21:

  return v4;
}

- (id)_accessibilityDescriptionForGenericType
{
  v2 = MEMORY[0x277CE1CB8];
  v3 = [(ICAttachment *)self typeUTI];
  v4 = [v2 typeWithIdentifier:v3];
  v5 = [v4 localizedDescription];

  if ([v5 length])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = __ICLocalizedFrameworkString_impl(@"file, %@", @"file, %@", 0, 1);
    v8 = [v6 localizedStringWithFormat:v7, v5];
  }

  else
  {
    v8 = __ICLocalizedFrameworkString_impl(@"file", @"file", 0, 1);
  }

  return v8;
}

+ (void)deleteAttachment:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 attachmentModel];
    [v7 willMarkAttachmentForDeletion];

    v8 = [v6 attachmentModel];
    [v8 deleteChildAttachments];

    v9 = [v6 media];
    [ICMedia deleteMedia:v9];

    [v6 deleteAttachmentPreviewImages];
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___ICAttachment;
  objc_msgSendSuper2(&v10, sel_deleteAttachment_, v4);
}

+ (void)undeleteAttachment:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___ICAttachment;
  v3 = a3;
  objc_msgSendSuper2(&v7, sel_undeleteAttachment_, v3);
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    v5 = [v4 media];
    [ICMedia undeleteMedia:v5];

    [v4 undeleteAttachmentPreviewImages];
    v6 = [v4 attachmentModel];
    [v6 undeleteChildAttachments];
  }
}

+ (void)purgeAttachment:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  if (v7)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"ICAttachmentWillBeDeletedNotification" object:v7];

    v5 = [v7 managedObjectContext];
    [v5 deleteObject:v7];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"ICAttachmentWasDeletedNotification" object:v7];

    if (objc_opt_respondsToSelector())
    {
      [v7 notifyDocCamFrameworkAttachmentWasDeleted];
    }
  }
}

+ (void)enumerateAttachmentsInContext:(id)a3 batchSize:(unint64_t)a4 visibleOnly:(BOOL)a5 saveAfterBatch:(BOOL)a6 usingBlock:(id)a7
{
  v8 = a6;
  v9 = a5;
  v14 = a3;
  v12 = a7;
  if (v9)
  {
    v13 = [a1 predicateForVisibleAttachmentsInContext:v14];
  }

  else
  {
    v13 = 0;
  }

  [a1 ic_enumerateObjectsMatchingPredicate:v13 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 context:v14 batchSize:a4 saveAfterBatch:v8 usingBlock:v12];
}

+ (id)attachmentTypeUTIsToHideFromAttachmentBrowser
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.notes.sketch";
  v4[1] = @"com.apple.notes.table";
  v4[2] = @"com.apple.drawing";
  v4[3] = @"com.apple.drawing.2";
  v4[4] = @"com.apple.paper";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)predicateForAttachmentBrowserWithContext:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ICAttachment_Management__predicateForAttachmentBrowserWithContext___block_invoke;
  v10[3] = &unk_278196CD8;
  v11 = v4;
  v12 = a1;
  v5 = predicateForAttachmentBrowserWithContext__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&predicateForAttachmentBrowserWithContext__onceToken, v10);
  }

  v7 = predicateForAttachmentBrowserWithContext__predicate;
  v8 = predicateForAttachmentBrowserWithContext__predicate;

  return v7;
}

void __69__ICAttachment_Management__predicateForAttachmentBrowserWithContext___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) predicateForPasswordProtected:0];
  v10[0] = v2;
  v3 = MEMORY[0x277CCAC30];
  v4 = [*(a1 + 40) attachmentTypeUTIsToHideFromAttachmentBrowser];
  v5 = [v3 predicateWithFormat:@"NOT (typeUTI in %@)", v4];
  v10[1] = v5;
  v6 = [*(a1 + 40) predicateForVisibleAttachmentsInContext:*(a1 + 32)];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v8 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v7];
  v9 = predicateForAttachmentBrowserWithContext__predicate;
  predicateForAttachmentBrowserWithContext__predicate = v8;
}

+ (id)predicateForSearchableAttachmentsInContext:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __71__ICAttachment_Management__predicateForSearchableAttachmentsInContext___block_invoke;
  v14 = &__block_descriptor_40_e5_v8__0l;
  v15 = a1;
  v4 = predicateForSearchableAttachmentsInContext__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&predicateForSearchableAttachmentsInContext__onceToken, &v11);
  }

  v6 = MEMORY[0x277CCA920];
  v7 = [a1 predicateForUnsupportedAttachmentsInContext:{v5, v11, v12, v13, v14, v15, predicateForSearchableAttachmentsInContext__predicate}];

  v16[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v9 = [v6 andPredicateWithSubpredicates:v8];

  return v9;
}

void __71__ICAttachment_Management__predicateForSearchableAttachmentsInContext___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) predicateForVisibleObjects];
  v7[0] = v2;
  v3 = [*(a1 + 32) predicateForPasswordProtected:0];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
  v6 = predicateForSearchableAttachmentsInContext__predicate;
  predicateForSearchableAttachmentsInContext__predicate = v5;
}

+ (id)predicateForVisibleAttachmentsWithTypeUTI:(id)a3 inContext:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"typeUTI == %@", a3];
  v9 = [a1 predicateForVisibleAttachmentsInContext:v7];

  v10 = MEMORY[0x277CCA920];
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  return v12;
}

+ (id)predicateForPasswordProtected:(BOOL)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v5 = [v3 predicateWithFormat:@"isPasswordProtected == %@", v4];

  return v5;
}

+ (id)predicateForInlineDrawing
{
  if (predicateForInlineDrawing_onceToken != -1)
  {
    +[ICAttachment(Management) predicateForInlineDrawing];
  }

  v3 = predicateForInlineDrawing_predicate;

  return v3;
}

void __53__ICAttachment_Management__predicateForInlineDrawing__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"typeUTI == %@ || typeUTI == %@", @"com.apple.drawing.2", @"com.apple.drawing"];
  v1 = predicateForInlineDrawing_predicate;
  predicateForInlineDrawing_predicate = v0;
}

+ (id)newFetchRequestForAttachments
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"ICAttachment"];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"modificationDate" ascending:0];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 setSortDescriptors:v4];

  return v2;
}

+ (unint64_t)countOfAttachmentsMatchingPredicate:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 newFetchRequestForAttachments];
  [v8 setPredicate:v7];

  v9 = [v6 countForFetchRequest:v8 error:0];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  return v9;
}

- (void)recursivelyAddSubAttachments:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(ICAttachment *)self subAttachments];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v4 addObject:v11];
        [v11 recursivelyAddSubAttachments:v4];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)hasVisualFallbackMedia
{
  if ([(ICAttachment *)self hasFallbackImage])
  {
    return 1;
  }

  return [(ICAttachment *)self hasFallbackPDF];
}

+ (id)fallbackImageContainerURLForIdentifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 fallbackImageDirectoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:1];

  return v7;
}

+ (id)fallbackImageFallbackURLForIdentifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 fallbackImageDirectoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:0];

  v8 = [v7 URLByAppendingPathExtension:@"jpg"];

  return v8;
}

+ (id)fallbackImageEncryptedFallbackURLForIdentifier:(id)a3 account:(id)a4
{
  v4 = [a1 fallbackImageFallbackURLForIdentifier:a3 account:a4];
  v5 = [v4 URLByAppendingPathExtension:@"encrypted"];

  return v5;
}

- (id)fallbackImageURL
{
  v3 = [(ICAttachment *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICAttachment *)self note];
    v7 = [v6 account];
    v8 = v7;
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v9 = [(ICAttachment *)self note];
      v10 = [v9 folder];
      v5 = [v10 account];
    }
  }

  v11 = [(ICAttachment *)self identifier];

  v12 = 0;
  if (v11 && v5)
  {
    v13 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
    v14 = [v13 generationURL];

    if (v14)
    {
      v15 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
      v16 = [v15 generationURL];
      v17 = [v16 URLByAppendingPathComponent:@"FallbackImage" isDirectory:0];

      v18 = [objc_opt_class() fallbackImageUTI];
      v19 = [v18 pathExtension];
      v12 = [v17 URLByAppendingPathExtension:v19];
    }

    else
    {
      v20 = objc_opt_class();
      v17 = [(ICAttachment *)self identifier];
      v12 = [v20 fallbackImageFallbackURLForIdentifier:v17 account:v5];
    }
  }

  return v12;
}

- (id)fallbackImageEncryptedURL
{
  v2 = [(ICAttachment *)self fallbackImageURL];
  v3 = [v2 URLByAppendingPathExtension:@"encrypted"];

  return v3;
}

- (BOOL)hasFallbackImage
{
  if (([(ICAttachment *)self isPasswordProtected]& 1) != 0)
  {
    [(ICAttachment *)self fallbackImageEncryptedURL];
  }

  else
  {
    [(ICAttachment *)self fallbackImageURL];
  }
  v3 = ;
  v4 = [v3 ic_isReachable];

  return v4;
}

- (id)fallbackImageData
{
  if ([(ICAttachment *)self isPasswordProtected])
  {
    v3 = [(ICCloudSyncingObject *)self cryptoStrategy];
    v4 = [v3 decryptedFallbackImageData];
  }

  else
  {
    v5 = [(ICAttachment *)self fallbackImageURL];

    if (v5)
    {
      v6 = MEMORY[0x277CBEA90];
      v7 = [(ICAttachment *)self fallbackImageURL];
      v4 = [v6 dataWithContentsOfURL:v7];
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachment(Management) *)self fallbackImageData];
      }

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)writeFallbackImageData:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v7 = [v4 ic_sha256];
    v19 = 138413058;
    v20 = v6;
    v21 = 2112;
    v23 = 2080;
    v22 = v7;
    v24 = "[ICAttachment(Management) writeFallbackImageData:]";
    v25 = 1024;
    v26 = 2861;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Writing fallback image data… {attachment: %@, data.sha256: %@}%s:%d", &v19, 0x26u);
  }

  v8 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];

  if (v8)
  {
    v9 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
    v10 = [v9 beginGeneration];

    if (v10)
    {
      if ([(ICAttachment *)self isPasswordProtected])
      {
        v11 = [(ICCloudSyncingObject *)self cryptoStrategy];
        v12 = [v11 writeEncryptedFallbackImageData:v4];

        if ((v12 & 1) == 0)
        {
LABEL_18:
          v13 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
          [v13 rollbackGeneration];
          goto LABEL_13;
        }
      }

      else
      {
        v16 = [(ICAttachment *)self fallbackImageURL];

        if (v16)
        {
          v17 = [(ICAttachment *)self fallbackImageURL];
          v18 = [v4 writeToURL:v17 atomically:1];

          if (!v18)
          {
            goto LABEL_18;
          }
        }
      }

      v13 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
      v14 = [v13 commitGeneration];
      goto LABEL_14;
    }

    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackImageData:?];
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackImageData:?];
    }
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)fallbackPDFContainerURLForIdentifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 fallbackPDFDirectoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5 isDirectory:1];

  return v7;
}

+ (id)fallbackPDFFallbackURLForIdentifier:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = [a4 fallbackPDFDirectoryURL];
  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];

  v9 = [a1 fallbackPDFUTI];
  v10 = [v9 pathExtension];
  v11 = [v8 URLByAppendingPathExtension:v10];

  return v11;
}

+ (id)fallbackPDFEncryptedFallbackURLForIdentifier:(id)a3 account:(id)a4
{
  v4 = [a1 fallbackPDFFallbackURLForIdentifier:a3 account:a4];
  v5 = [v4 URLByAppendingPathExtension:@"encrypted"];

  return v5;
}

- (id)fallbackPDFURL
{
  v3 = [(ICAttachment *)self account];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICAttachment *)self note];
    v7 = [v6 account];
    v8 = v7;
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v9 = [(ICAttachment *)self note];
      v10 = [v9 folder];
      v5 = [v10 account];
    }
  }

  v11 = [(ICAttachment *)self identifier];

  v12 = 0;
  if (v11 && v5)
  {
    v13 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
    v14 = [v13 generationURL];

    if (v14)
    {
      v15 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
      v16 = [v15 generationURL];
      v17 = [v16 URLByAppendingPathComponent:@"FallbackPDF" isDirectory:0];

      v18 = [objc_opt_class() fallbackPDFUTI];
      v19 = [v18 pathExtension];
      v12 = [v17 URLByAppendingPathExtension:v19];
    }

    else
    {
      v20 = objc_opt_class();
      v17 = [(ICAttachment *)self identifier];
      v12 = [v20 fallbackPDFFallbackURLForIdentifier:v17 account:v5];
    }
  }

  return v12;
}

- (id)fallbackPDFEncryptedURL
{
  v2 = [(ICAttachment *)self fallbackPDFURL];
  v3 = [v2 URLByAppendingPathExtension:@"encrypted"];

  return v3;
}

- (BOOL)hasFallbackPDF
{
  if (([(ICAttachment *)self isPasswordProtected]& 1) != 0)
  {
    [(ICAttachment *)self fallbackPDFEncryptedURL];
  }

  else
  {
    [(ICAttachment *)self fallbackPDFURL];
  }
  v3 = ;
  v4 = [v3 ic_isReachable];

  return v4;
}

- (id)fallbackPDFData
{
  if ([(ICAttachment *)self isPasswordProtected])
  {
    v3 = [(ICCloudSyncingObject *)self cryptoStrategy];
    v4 = [v3 decryptedFallbackPDFData];
  }

  else
  {
    v5 = [(ICAttachment *)self fallbackPDFURL];

    if (v5)
    {
      v6 = MEMORY[0x277CBEA90];
      v7 = [(ICAttachment *)self fallbackPDFURL];
      v4 = [v6 dataWithContentsOfURL:v7];
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachment(Management) *)self fallbackPDFData];
      }

      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)writeFallbackPDFData:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v7 = [v4 ic_sha256];
    v19 = 138413058;
    v20 = v6;
    v21 = 2112;
    v23 = 2080;
    v22 = v7;
    v24 = "[ICAttachment(Management) writeFallbackPDFData:]";
    v25 = 1024;
    v26 = 2974;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Writing fallback PDF data… {attachment: %@, data.sha256: %@}%s:%d", &v19, 0x26u);
  }

  v8 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];

  if (v8)
  {
    v9 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
    v10 = [v9 beginGeneration];

    if (v10)
    {
      if ([(ICAttachment *)self isPasswordProtected])
      {
        v11 = [(ICCloudSyncingObject *)self cryptoStrategy];
        v12 = [v11 writeEncryptedFallbackPDFData:v4];

        if ((v12 & 1) == 0)
        {
LABEL_18:
          v13 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
          [v13 rollbackGeneration];
          goto LABEL_13;
        }
      }

      else
      {
        v16 = [(ICAttachment *)self fallbackPDFURL];

        if (v16)
        {
          v17 = [(ICAttachment *)self fallbackPDFURL];
          v18 = [v4 writeToURL:v17 atomically:1];

          if (!v18)
          {
            goto LABEL_18;
          }
        }
      }

      v13 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
      v14 = [v13 commitGeneration];
      goto LABEL_14;
    }

    v13 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackPDFData:?];
    }
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackPDFData:?];
    }
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (id)paperBundleURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__56;
  v11 = __Block_byref_object_dispose__56;
  v12 = 0;
  v3 = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ICAttachment_Management__paperBundleURL__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __42__ICAttachment_Management__paperBundleURL__block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 32) note];
  v5 = [v4 account];
  v6 = v5;
  if (!v5)
  {
    v1 = [*(a1 + 32) note];
    v2 = [v1 folder];
    v6 = [v2 account];
  }

  v7 = [ICAttachmentPaperBundleModel paperBundleURLForAttachmentIdentifier:v10 inAccount:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!v5)
  {
  }
}

- (id)paperBundleDatabaseSubdirectoryURL
{
  v2 = [(ICAttachment *)self paperBundleURL];
  v3 = [_TtC11NotesShared21ICSystemPaperDocument databaseDirectoryAt:v2];

  return v3;
}

- (id)paperBundleAssetsSubdirectoryURL
{
  v2 = [(ICAttachment *)self paperBundleURL];
  v3 = [_TtC11NotesShared21ICSystemPaperDocument assetsDirectoryAt:v2];

  return v3;
}

+ (id)temporaryPaperBundleURLForIdentifier:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if (v5)
    {
LABEL_3:
      v7 = [v6 systemPaperTemporaryDirectoryURL];
      v8 = [v7 URLByAppendingPathComponent:v5 isDirectory:1];

      v9 = [v8 URLByAppendingPathExtension:@"bundle"];

      goto LABEL_8;
    }
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((account) != nil)" functionName:"+[ICAttachment(Management) temporaryPaperBundleURLForIdentifier:account:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "account"}];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v10 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachment(Management) temporaryPaperBundleURLForIdentifier:v10 account:?];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)paperCoherenceContextURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__56;
  v11 = __Block_byref_object_dispose__56;
  v12 = 0;
  v3 = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ICAttachment_Management__paperCoherenceContextURL__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__ICAttachment_Management__paperCoherenceContextURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) note];
  v3 = [v2 paperCoherenceContextURL];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(a1 + 32) isPasswordProtected])
  {
    v6 = [*(a1 + 32) identifier];
    v7 = [v6 length];

    if (v7)
    {
      v8 = [*(*(*(a1 + 40) + 8) + 40) URLByDeletingLastPathComponent];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = *(*(*(a1 + 40) + 8) + 40);
      v15 = [*(a1 + 32) identifier];
      v12 = [v11 URLByAppendingPathComponent:v15 isDirectory:1];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }
}

- (id)temporaryPaperBundleURL
{
  if ([(ICAttachment *)self attachmentType]== 6 || [(ICAttachment *)self attachmentType]== 11)
  {
    v3 = [(ICAttachment *)self identifier];
    v4 = [(ICAttachment *)self note];
    v5 = [v4 account];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = [(ICAttachment *)self note];
      v9 = [v8 folder];
      v7 = [v9 account];
    }

    if ([v3 length])
    {
      if (v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"identifier.length" functionName:"-[ICAttachment(Management) temporaryPaperBundleURL]" simulateCrash:1 showAlert:1 format:@"identifier is empty"];
      if (v7)
      {
LABEL_8:
        if (v3)
        {
          v10 = [objc_opt_class() temporaryPaperBundleURLForIdentifier:v3 account:v7];
LABEL_15:

          goto LABEL_17;
        }

LABEL_12:
        v11 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ICAttachment(Management) temporaryPaperBundleURL];
        }

        v10 = 0;
        goto LABEL_15;
      }
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"account" functionName:"-[ICAttachment(Management) temporaryPaperBundleURL]" simulateCrash:1 showAlert:1 format:@"account is nil"];
    goto LABEL_12;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

- (void)removeTemporaryPaperBundle
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachment *)self temporaryPaperBundleURL];
  if (v3)
  {
    v15 = 0;
    v16[0] = &v15;
    v16[1] = 0x3032000000;
    v16[2] = __Block_byref_object_copy__56;
    v16[3] = __Block_byref_object_dispose__56;
    v17 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCA9E8]);
    v6 = (v16[0] + 40);
    v5 = *(v16[0] + 40);
    v9[5] = &v15;
    obj = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__ICAttachment_Management__removeTemporaryPaperBundle__block_invoke;
    v9[3] = &unk_278195820;
    v9[4] = &v11;
    [v4 coordinateWritingItemAtURL:v3 options:1 error:&obj byAccessor:v9];
    objc_storeStrong(v6, obj);
    if ((v12[3] & 1) == 0)
    {
      v7 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        [(ICAttachment(Management) *)v8 removeTemporaryPaperBundle:v16];
      }
    }

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
  }
}

void __54__ICAttachment_Management__removeTemporaryPaperBundle__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 removeItemAtURL:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v7;
}

- (void)addLocationIfNeeded
{
  v3 = [(ICAttachment *)self location];
  if (!v3)
  {
    if (([(ICAttachment *)self checkedForLocation]& 1) != 0)
    {
      return;
    }

    [(ICAttachment *)self setCheckedForLocation:1];
    v4 = [(ICAttachment *)self attachmentModel];
    [v4 addLocation];
    v3 = v4;
  }
}

- (id)addLocationWithLatitude:(double)a3 longitude:(double)a4
{
  v7 = [ICAttachmentLocation newAttachmentLocationForAttachment:self];
  [(ICAttachment *)self setLocation:v7];

  v8 = [(ICAttachment *)self location];
  [v8 setLatitude:a3];

  v9 = [(ICAttachment *)self location];
  [v9 setLongitude:a4];

  return [(ICAttachment *)self location];
}

- (void)regenerateTitleWithInferredTitle:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self userTitle];

  if (!v5)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__56;
    v22 = __Block_byref_object_dispose__56;
    v23 = v4;
    if (!v19[5] && [(ICAttachment *)self attachmentType]== 11)
    {
      objc_opt_class();
      v6 = [(ICAttachment *)self attachmentModel];
      v7 = ICDynamicCast();

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __61__ICAttachment_Management__regenerateTitleWithInferredTitle___block_invoke;
      v17[3] = &unk_278199E30;
      v17[4] = &v18;
      [v7 enumerateSubAttachmentsWithBlock:v17];
    }

    if (v19[5] || ([ICAttachment defaultTitleForAttachmentType:[(ICAttachment *)self attachmentType]], v8 = objc_claimAutoreleasedReturnValue(), v9 = v19[5], v19[5] = v8, v9, v19[5]))
    {
      v10 = [(ICAttachment *)self title];
      v11 = [v10 isEqualToString:v19[5]];

      if ((v11 & 1) == 0)
      {
        [(ICAttachment *)self setTitle:v19[5]];
        [(ICCloudSyncingObject *)self updateChangeCountWithReason:@"Regenerated attachment title"];
        v12 = [(ICAttachment *)self note];
        v13 = [v12 regenerateTitle:1 snippet:1];

        if (v13)
        {
          v14 = [(ICAttachment *)self note];
          [v14 markShareDirtyIfNeededWithReason:@"Regenerated attachment title"];

          v15 = [(ICAttachment *)self note];
          [v15 updateChangeCountWithReason:@"Regenerated attachment title"];
        }

        v16 = [(ICAttachment *)self managedObjectContext];
        [v16 ic_save];
      }
    }

    _Block_object_dispose(&v18, 8);
  }
}

void __61__ICAttachment_Management__regenerateTitleWithInferredTitle___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 title];
  v8 = v7;
  if (v7)
  {
    obj = v7;
    v9 = [v7 length];
    v8 = obj;
    if (v9)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
      v8 = obj;
      *a5 = 1;
    }
  }
}

- (void)updatePlaceInLocationIfNeededHandler:(id)a3
{
  v4 = a3;
  [(ICAttachment *)self addLocationIfNeeded];
  v5 = [(ICAttachment *)self location];
  v6 = v5;
  if (!v5 || ([v5 placeUpdated] & 1) != 0 || (objc_msgSend(v6, "updatingPlace") & 1) != 0)
  {
    if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }

  else
  {
    v7 = [(ICAttachment *)self managedObjectContext];
    [v6 setUpdatingPlace:1];
    v8 = +[ICLocationContext sharedContext];
    [v6 latitude];
    v10 = v9;
    [v6 longitude];
    v12 = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__ICAttachment_Management__updatePlaceInLocationIfNeededHandler___block_invoke;
    v14[3] = &unk_278199E58;
    v15 = v7;
    v16 = v6;
    v17 = self;
    v18 = v4;
    v13 = v7;
    [v8 lookupPlaceAtLatitude:v14 longitude:v10 handler:v12];
  }
}

void __65__ICAttachment_Management__updatePlaceInLocationIfNeededHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__ICAttachment_Management__updatePlaceInLocationIfNeededHandler___block_invoke_2;
  v11[3] = &unk_278198A98;
  v12 = v6;
  v7 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v5;
  v8 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = v8;
  v9 = v5;
  v10 = v6;
  [v7 performBlock:v11];
}

uint64_t __65__ICAttachment_Management__updatePlaceInLocationIfNeededHandler___block_invoke_2(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) setPlacemark:*(a1 + 48)];
    [*(a1 + 40) setPlaceUpdated:1];
    [*(a1 + 56) updateChangeCountWithReason:@"Updated placemark"];
  }

  [*(a1 + 40) setUpdatingPlace:0];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)noteWillMoveToRecentlyDeletedFolder
{
  v2 = [(ICAttachment *)self paperBundleModel];
  [v2 removeStrokesFromStyleInventory];
}

- (id)addInlineAttachmentWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachment *)self note];
  v6 = [(ICBaseAttachment *)ICInlineAttachment newAttachmentWithIdentifier:v4 note:v5];

  [(ICAttachment *)self addInlineAttachmentsObject:v6];
  v7 = [(ICAttachment *)self note];
  [v7 addInlineAttachmentsObject:v6];

  return v6;
}

- (void)updateAfterMediaChange
{
  v2 = [(ICAttachment *)self attachmentModel];
  [v2 updateFileBasedAttributes];
}

- (id)addMediaWithData:(id)a3 filename:(id)a4 updateFileBasedAttributes:(BOOL)a5
{
  v5 = a5;
  v10 = 0;
  v7 = [ICMedia newMediaWithAttachment:self forData:a3 filename:a4 error:&v10];
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v5;
  }

  if (!v8)
  {
    [(ICAttachment *)self updateAfterMediaChange];
  }

  [(ICAttachment *)self setMedia:v7];
  [v7 setAttachment:self];

  return v7;
}

- (id)addMediaWithFileWrapper:(id)a3
{
  v6 = 0;
  v4 = [ICMedia newMediaWithAttachment:self forFileWrapper:a3 error:&v6];
  if (!v6)
  {
    [(ICAttachment *)self updateAfterMediaChange];
  }

  [(ICAttachment *)self setMedia:v4];
  [v4 setAttachment:self];

  return v4;
}

- (id)addMediaWithURL:(id)a3 updateFileBasedAttributes:(BOOL)a4
{
  v4 = a4;
  v9 = 0;
  v6 = [ICMedia newMediaWithAttachment:self forURL:a3 error:&v9];
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    v7 = !v4;
  }

  if (!v7)
  {
    [(ICAttachment *)self updateAfterMediaChange];
  }

  [(ICAttachment *)self setMedia:v6];
  [v6 setAttachment:self];

  return v6;
}

- (id)addMediaWithURL:(id)a3 filename:(id)a4 updateFileBasedAttributes:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && [v9 length])
  {
    v11 = [v10 stringByDeletingPathExtension];
    v12 = [v8 pathExtension];
    v13 = [v11 stringByAppendingPathExtension:v12];
  }

  else
  {
    v13 = [v8 lastPathComponent];
    v11 = v10;
  }

  v16 = 0;
  v14 = [ICMedia newMediaWithAttachment:self forURL:v8 filename:v13 error:&v16];
  if (!v16 && v5)
  {
    [(ICAttachment *)self updateAfterMediaChange];
  }

  [(ICAttachment *)self setMedia:v14];
  [v14 setAttachment:self];

  return v14;
}

- (BOOL)hasAnyPNGPreviewImageFiles
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ICAttachment *)self previewImages];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasAnyPNGPreviewImageFiles])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)deleteAttachmentPreviewImages
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(ICAttachment *)self previewImages];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) markForDeletion];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
}

- (void)undeleteAttachmentPreviewImages
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(ICAttachment *)self previewImages];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) unmarkForDeletion];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)purgeAttachmentPreviewImages
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(ICAttachment *)self previewImages];
  v4 = [v3 copy];

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
        [(ICAttachment *)self removePreviewImagesObject:v9];
        v10 = [(ICAttachment *)self managedObjectContext];
        [v10 deleteObject:v9];

        v11 = [(ICAttachment *)self attachmentModel];
        LODWORD(v10) = [v11 requiresPostProcessing];

        if (v10)
        {
          [(ICAttachment *)self setOcrSummary:0];
          [(ICAttachment *)self setImageClassificationSummary:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)invalidateAttachmentPreviewImages
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(ICAttachment *)self previewImages];
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

        [*(*(&v8 + 1) + 8 * v7++) invalidateImage];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)checkPreviewImagesIntegrity
{
  if (checkPreviewImagesIntegrity_onceToken != -1)
  {
    [ICAttachment(Previews) checkPreviewImagesIntegrity];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v3 = checkPreviewImagesIntegrity_sCheckedAttachments;
  objc_sync_enter(v3);
  v4 = checkPreviewImagesIntegrity_sCheckedAttachments;
  v5 = [(ICAttachment *)self objectID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    objc_sync_exit(v3);
  }

  else
  {
    v7 = checkPreviewImagesIntegrity_sCheckedAttachments;
    v8 = [(ICAttachment *)self objectID];
    [v7 addObject:v8];

    objc_sync_exit(v3);
    v9 = [(ICAttachment *)self managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_2;
    v17[3] = &unk_278194D68;
    v17[4] = self;
    v17[5] = &v18;
    [v9 performBlockAndWait:v17];

    if (v19[3])
    {
      v6 = 1;
      goto LABEL_8;
    }

    v11 = [(ICAttachment *)self managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_3;
    v16[3] = &unk_278194B00;
    v16[4] = self;
    [v11 performBlockAndWait:v16];

    v12 = +[ICNoteContext sharedContext];
    v13 = [v12 hasContextOptions:32];

    if (v13)
    {
      v14 = dispatch_time(0, 1000000000);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_1126;
      v15[3] = &unk_278194B00;
      v15[4] = self;
      dispatch_after(v14, MEMORY[0x277D85CD0], v15);
    }
  }

  v6 = *(v19 + 24);
LABEL_8:
  _Block_object_dispose(&v18, 8);
  return v6 & 1;
}

void __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = checkPreviewImagesIntegrity_sCheckedAttachments;
  checkPreviewImagesIntegrity_sCheckedAttachments = v0;
}

void __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) previewImages];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 imageIsWriting] & 1) == 0 && (objc_msgSend(v7, "imageIsValid") & 1) == 0)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          goto LABEL_12;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

void __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) purgeAttachmentPreviewImages];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 hasChanges];

  if (v3)
  {
    v4 = [*(a1 + 32) managedObjectContext];
    v7 = 0;
    [v4 save:&v7];
    v5 = v7;

    if (v5)
    {
      v6 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_3_cold_1();
      }
    }
  }
}

void __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_1126(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [*(a1 + 32) objectID];
  [v3 postNotificationName:@"ICAttachmentNeedsPreviewGenerationNotification" object:v2];
}

- (void)loadLinkPreviewForSynapseItem:(id)a3
{
  v4 = a3;
  v5 = [[ICSynapseLinkPreviewLoadingOperation alloc] initWithSynapseItem:v4];
  loadOperation = self->_loadOperation;
  self->_loadOperation = v5;

  v7 = [(ICAttachment *)self ic_permanentObjectID];
  v8 = self->_loadOperation;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ICAttachment_Previews__loadLinkPreviewForSynapseItem___block_invoke;
  v11[3] = &unk_278194DC0;
  v12 = v4;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v4;
  [(ICSynapseLinkPreviewLoadingOperation *)v8 loadPreviewWithCompletionBlock:v11];
}

void __56__ICAttachment_Previews__loadLinkPreviewForSynapseItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 dataRepresentationWithError:&v12];
  v4 = v12;
  if (v4)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachment(Previews) loadLinkPreviewForSynapseItem:]_block_invoke" simulateCrash:1 showAlert:0 format:{@"Couldn't serialize SYContentItem to NSData. Error: %@", v4}];
  }

  else
  {
    v5 = +[ICNoteContext sharedContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__ICAttachment_Previews__loadLinkPreviewForSynapseItem___block_invoke_2;
    v8[3] = &unk_278199E80;
    v9 = *(a1 + 40);
    v6 = v3;
    v7 = *(a1 + 48);
    v10 = v6;
    v11 = v7;
    [v5 performBackgroundTask:v8];
  }
}

void __56__ICAttachment_Previews__loadLinkPreviewForSynapseItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [ICAttachment ic_existingObjectWithID:v3 context:v4];
  [v5 setSynapseData:*(a1 + 40)];
  [v4 ic_save];

  [*(a1 + 48) ic_postNotificationOnMainThreadWithName:@"ICAttachmentDidLoadNotification"];
}

- (id)updateAttachmentPreviewImageWithImageData:(id)a3 size:(CGSize)a4 scale:(double)a5 appearanceType:(unint64_t)a6 scaleWhenDrawing:(BOOL)a7 metadata:(id)a8 sendNotification:(BOOL)a9
{
  v9 = a9;
  v11 = a7;
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v18 = [(ICAttachment *)self attachmentPreviewImageCreatingIfNecessaryWithWidth:a6 height:v11 scale:a8 appearanceType:width scaleWhenDrawing:height metadata:a5];
  v19 = v18;
  if (v18)
  {
    [v18 setScaleWhenDrawing:v11];
    v20 = [v19 setImageData:v17 withSize:a6 scale:width appearanceType:{height, a5}];
    if (v20 && v9)
    {
      v21 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
    }

    else if ((v20 & 1) == 0)
    {
      v22 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(Previews) updateAttachmentPreviewImageWithImageData:v19 size:? scale:? appearanceType:? scaleWhenDrawing:? metadata:? sendNotification:?];
      }

      [(ICAttachment *)self removePreviewImagesObject:v19];
      v23 = [v19 managedObjectContext];
      [v23 deleteObject:v19];

      v19 = 0;
    }
  }

  return v19;
}

- (id)updateAttachmentPreviewImageWithImageSrc:(CGImageSource *)a3 maxDimension:(double)a4 scale:(double)a5 appearanceType:(unint64_t)a6 scaleWhenDrawing:(BOOL)a7 metadata:(id)a8 sendNotification:(BOOL)a9
{
  v9 = a9;
  v10 = a7;
  v16 = a8;
  v17 = CGImageSourceCopyPropertiesAtIndex(a3, 0, 0);
  v18 = v17;
  if (v17)
  {
    v19 = [(__CFDictionary *)v17 objectForKeyedSubscript:*MEMORY[0x277CD3450]];
    v20 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x277CD3448]];
    v21 = v20;
    if (v19)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v35 = v9;
      [v19 floatValue];
      v25 = v24;
      v26 = v24;
      [v21 floatValue];
      v28 = v27;
      if (v25 >= v27)
      {
        v29 = v26;
      }

      else
      {
        v29 = v27;
      }

      v23 = [(ICAttachment *)self attachmentPreviewImageCreatingIfNecessaryWithWidth:a6 height:v10 scale:v16 appearanceType:round(a4 / v29 * v26) scaleWhenDrawing:round(a4 / v29 * v28) metadata:a5];
      CFRetain(a3);
      v30 = [(ICAttachment *)self attachmentModel];
      v31 = [v30 previewImageTypeUTI];
      v32 = [v23 setScaledImageFromImageSrc:a3 typeUTI:v31];

      CFRelease(a3);
      if (v32)
      {
        if (v35)
        {
          v33 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
        }
      }

      else
      {
        [(ICAttachment *)self removePreviewImagesObject:v23];
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)attachmentPreviewImageCreatingIfNecessaryWithWidth:(double)a3 height:(double)a4 scale:(double)a5 appearanceType:(unint64_t)a6 scaleWhenDrawing:(BOOL)a7 metadata:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v14 = a8;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__56;
  v32 = __Block_byref_object_dispose__56;
  v33 = 0;
  [(ICAttachment *)self checkPreviewImagesIntegrity];
  v15 = [(ICAttachment *)self managedObjectContext];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __131__ICAttachment_Previews__attachmentPreviewImageCreatingIfNecessaryWithWidth_height_scale_appearanceType_scaleWhenDrawing_metadata___block_invoke;
  v20[3] = &unk_278199EA8;
  v23 = a5;
  v24 = a3;
  v25 = a4;
  v26 = a6;
  v20[4] = self;
  v22 = &v28;
  v27 = a7;
  v16 = v14;
  v21 = v16;
  [v15 performBlockAndWait:v20];

  v17 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    v35 = a3;
    v36 = 2048;
    v37 = a4;
    v38 = 2048;
    v39 = self;
    _os_log_debug_impl(&dword_214D51000, v17, OS_LOG_TYPE_DEBUG, "Update preview image %.0fx%.0f 0x%p", buf, 0x20u);
  }

  v18 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v18;
}

void __131__ICAttachment_Previews__attachmentPreviewImageCreatingIfNecessaryWithWidth_height_scale_appearanceType_scaleWhenDrawing_metadata___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) previewImages];

  if (v3)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = [*(a1 + 32) previewImages];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = *v30;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          [v8 scale];
          if (v9 == *(a1 + 56))
          {
            [v8 width];
            if (v10 == *(a1 + 64))
            {
              [v8 height];
              if (v11 == *(a1 + 72) && *(a1 + 80) == [v8 appearanceType])
              {
                objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
              }
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v5);
    }
  }

  v12 = *(*(*(a1 + 48) + 8) + 40);
  if (!v12)
  {
    v13 = [*(a1 + 32) identifier];
    v14 = [ICAttachmentPreviewImage identifierForContentIdentifier:v13 scale:*(a1 + 80) width:*(a1 + 56) height:*(a1 + 64) appearanceType:*(a1 + 72)];

    v15 = [*(a1 + 32) managedObjectContext];
    v16 = [ICAttachmentPreviewImage attachmentPreviewImageWithIdentifier:v14 inContext:v15];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(*(*(a1 + 48) + 8) + 40);
    if (v19)
    {
      v20 = [v19 attachment];
      v21 = v20 == *(a1 + 32);

      if (v21)
      {
LABEL_23:

        v12 = *(*(*(a1 + 48) + 8) + 40);
        goto LABEL_24;
      }

      v22 = *(*(*(a1 + 48) + 8) + 40);
      if (v22)
      {
        v23 = [v22 attachment];
        v24 = v23 == 0;

        if (v24)
        {
          v25 = [*(a1 + 32) managedObjectContext];
          [v25 deleteObject:*(*(*(a1 + 48) + 8) + 40)];
        }
      }
    }

    v26 = [ICAttachmentPreviewImage newAttachmentPreviewImageWithIdentifier:v14 attachment:*(a1 + 32)];
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    [*(a1 + 32) addPreviewImagesObject:*(*(*(a1 + 48) + 8) + 40)];
    [*(*(*(a1 + 48) + 8) + 40) setWidth:*(a1 + 64)];
    [*(*(*(a1 + 48) + 8) + 40) setHeight:*(a1 + 72)];
    [*(*(*(a1 + 48) + 8) + 40) setScale:*(a1 + 56)];
    [*(*(*(a1 + 48) + 8) + 40) setScaleWhenDrawing:*(a1 + 88)];
    if ([*(a1 + 32) isPasswordProtected])
    {
      [*(*(*(a1 + 48) + 8) + 40) setIsPasswordProtected:1];
      [*(*(*(a1 + 48) + 8) + 40) initializeCryptoProperties];
    }

    goto LABEL_23;
  }

LABEL_24:
  [v12 setMetadata:*(a1 + 40)];
  objc_sync_exit(v2);
}

- (id)attachmentPreviewImageWithMinSize:(CGSize)a3 scale:(double)a4 appearanceType:(unint64_t)a5 requireAppearance:(BOOL)a6
{
  v6 = a6;
  height = a3.height;
  width = a3.width;
  v12 = [ICAttachment attachmentPreviewImageWithMinSize:"attachmentPreviewImageWithMinSize:scale:appearanceType:matchScale:matchAppearance:" scale:a5 appearanceType:1 matchScale:1 matchAppearance:?];
  if (!v12)
  {
    v12 = [(ICAttachment *)self attachmentPreviewImageWithMinSize:a5 scale:0 appearanceType:v6 matchScale:width matchAppearance:height, a4];
  }

  return v12;
}

- (id)attachmentPreviewImageWithMinSize:(CGSize)a3 scale:(double)a4 appearanceType:(unint64_t)a5 matchScale:(BOOL)a6 matchAppearance:(BOOL)a7
{
  v7 = a6;
  v9 = a4;
  height = a3.height;
  width = a3.width;
  v64 = *MEMORY[0x277D85DE8];
  if (a4 <= 0.0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"scale > 0." functionName:"-[ICAttachment(Previews) attachmentPreviewImageWithMinSize:scale:appearanceType:matchScale:matchAppearance:]" simulateCrash:1 showAlert:0 format:@"Passing invalid scale to attachmentPreviewImageWithMinSize"];
    v9 = 1.0;
  }

  v13 = [(ICAttachment *)self attachmentType];
  [(ICAttachment *)self checkPreviewImagesIntegrity];
  if (v7)
  {
    v14 = width;
  }

  else
  {
    v14 = width * v9;
  }

  if (v7)
  {
    v15 = height;
  }

  else
  {
    v15 = height * v9;
  }

  v16 = [(ICAttachment *)self previewImages];
  v17 = [v16 count];

  if (!v17)
  {
    v48 = 0;
    v20 = 0;
    goto LABEL_56;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = [(ICAttachment *)self previewImages];
  v18 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v18)
  {
    v55 = 0;
    v20 = 0;
    goto LABEL_55;
  }

  v19 = v18;
  v52 = v9;
  v53 = self;
  v55 = 0;
  v20 = 0;
  v21 = *MEMORY[0x277CBF3A8];
  v22 = *(MEMORY[0x277CBF3A8] + 8);
  v23 = *v60;
  v57 = *MEMORY[0x277CBF3A8];
  v58 = v22;
  do
  {
    v24 = 0;
    do
    {
      if (*v60 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v59 + 1) + 8 * v24);
      [v25 width];
      v27 = v26;
      [v25 height];
      v29 = v28;
      if (v13 == 8 && (v27 > v57 || v28 > v58))
      {
        v31 = v25;

        v57 = v27;
        v58 = v29;
        v55 = v31;
      }

      if (!v7)
      {
        [v25 scale];
        v27 = v27 * v32;
        [v25 scale];
        v29 = v29 * v33;
      }

      v34 = v22 < v15 || v21 < v14;
      v35 = v21 < v27;
      if (v22 >= v29)
      {
        v35 = 0;
      }

      v36 = !v34 || !v35;
      v37 = v27 < v14;
      if (v29 < v15)
      {
        v37 = 1;
      }

      v38 = v37 || v35;
      if (v34)
      {
        v39 = v36;
      }

      else
      {
        v39 = v38;
      }

      if (v27 < v14 * 0.95 || v29 < v15 * 0.95)
      {
        v41 = [v25 scaleWhenDrawing] ^ 1;
      }

      else
      {
        LOBYTE(v41) = 0;
      }

      if ([v25 appearanceType] == a5)
      {
        v42 = v20 != 0;
      }

      else
      {
        v43 = [(ICAttachment *)v53 previewsSupportMultipleAppearances]&& a7;
        v42 = v20 != 0;
        if (v43)
        {
          goto LABEL_47;
        }
      }

      if ((v39 & v42 & 1) == 0)
      {
        if (!v7 || ([v25 scale], v44 == 0.0))
        {
          if (v41)
          {
            goto LABEL_47;
          }

LABEL_46:
          v45 = v25;

          v22 = v29;
          v21 = v27;
          v20 = v45;
          goto LABEL_47;
        }

        [v25 scale];
        if (!((v46 != v52) | v41 & 1))
        {
          goto LABEL_46;
        }
      }

LABEL_47:
      ++v24;
    }

    while (v19 != v24);
    v47 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    v19 = v47;
  }

  while (v47);
LABEL_55:

  v48 = v55;
LABEL_56:
  if (v13 == 8)
  {
    v49 = v48;
  }

  else
  {
    v49 = v20;
  }

  v50 = v49;

  return v49;
}

- (id)drawingModel
{
  objc_opt_class();
  v3 = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)paperBundleModel
{
  objc_opt_class();
  v3 = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)systemPaperModel
{
  objc_opt_class();
  v3 = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)galleryModel
{
  objc_opt_class();
  v3 = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)inlineDrawingModel
{
  objc_opt_class();
  v3 = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)tableModel
{
  objc_opt_class();
  v3 = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)audioModel
{
  objc_opt_class();
  v3 = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (NSString)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__56;
  v11 = __Block_byref_object_dispose__56;
  v12 = 0;
  v3 = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ICAttachment_Previews__description__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__ICAttachment_Previews__description__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = ICAttachment;
  v2 = objc_msgSendSuper2(&v5, sel_description);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)a3
{
  v4 = a3;
  v5 = self;
  ICAttachment.associateAppEntity(with:)(v4);
}

+ (void)attachmentIdentifiersForAccount:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setNote:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 identifier];
  v8 = [v0 identifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)setTypeUTI:(void *)a1 resetToIntrinsicNotesVersion:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __31__ICAttachment_attachmentModel__block_invoke_cold_1(id *a1)
{
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __43__ICAttachment_accountWillChangeToAccount___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Error creating fallback %@ directory %@");
}

void __43__ICAttachment_accountWillChangeToAccount___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_13(&dword_214D51000, v0, v1, "Error moving fallback %@ %@");
}

- (void)metadata
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setMetadata:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)metadataData
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_3_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Error saving attachment after purging preview images %@", v1, 0xCu);
}

@end