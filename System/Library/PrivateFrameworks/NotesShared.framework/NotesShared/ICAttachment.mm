@interface ICAttachment
+ (BOOL)isPathExtensionSupportedForPasswordProtectedNotes:(id)notes;
+ (BOOL)isTypeUTISupportedForPasswordProtectedNotes:(id)notes;
+ (BOOL)isTypeUTISupportedForWatch:(id)watch;
+ (BOOL)typeUTIIsDrawing:(id)drawing;
+ (BOOL)typeUTIIsImage:(id)image;
+ (BOOL)typeUTIIsInlineDrawing:(id)drawing;
+ (BOOL)typeUTIIsPlayableAudio:(id)audio;
+ (BOOL)typeUTIIsPlayableMovie:(id)movie;
+ (NSPredicate)predicateForAllPaperKitBackedAttachments;
+ (NSPredicate)predicateForOutdatedOrMissingHandwritingSummary;
+ (id)attachmentIdentifiersForAccount:(id)account;
+ (id)attachmentSectionSortOrder;
+ (id)attachmentTypeUTIsToHideFromAttachmentBrowser;
+ (id)defaultTitleForAttachmentType:(signed __int16)type;
+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context;
+ (id)fallbackImageContainerURLForIdentifier:(id)identifier account:(id)account;
+ (id)fallbackImageEncryptedFallbackURLForIdentifier:(id)identifier account:(id)account;
+ (id)fallbackImageFallbackURLForIdentifier:(id)identifier account:(id)account;
+ (id)fallbackPDFContainerURLForIdentifier:(id)identifier account:(id)account;
+ (id)fallbackPDFEncryptedFallbackURLForIdentifier:(id)identifier account:(id)account;
+ (id)fallbackPDFFallbackURLForIdentifier:(id)identifier account:(id)account;
+ (id)filenameExtensionForUTI:(id)i;
+ (id)filenameFromUTI:(id)i;
+ (id)isBeingEditedLocallyOnDeviceSet;
+ (id)keyPathsForValuesAffectingIsSharedViaICloud;
+ (id)mentionNotificationSnippetForAttachmentType:(signed __int16)type;
+ (id)mergeableWallClockValueKeyPaths;
+ (id)mimeTypeFromUTI:(id)i;
+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context;
+ (id)newFetchRequestForAttachments;
+ (id)noteFromAttachmentRecord:(id)record accountID:(id)d context:(id)context;
+ (id)noteFromAttachmentUserSpecificRecord:(id)record accountID:(id)d context:(id)context;
+ (id)predicateForAttachmentBrowserWithContext:(id)context;
+ (id)predicateForInlineDrawing;
+ (id)predicateForPasswordProtected:(BOOL)protected;
+ (id)predicateForSearchableAttachmentsInContext:(id)context;
+ (id)predicateForVisibleAttachmentsWithTypeUTI:(id)i inContext:(id)context;
+ (id)temporaryPaperBundleURLForIdentifier:(id)identifier account:(id)account;
+ (signed)sectionFromTypeUTI:(id)i url:(id)url;
+ (unint64_t)countOfAttachmentsMatchingPredicate:(id)predicate context:(id)context;
+ (void)addPreviewImages:(id)images toRecord:(id)record;
+ (void)deleteAttachment:(id)attachment;
+ (void)enumerateAttachmentsInContext:(id)context batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch usingBlock:(id)block;
+ (void)initialize;
+ (void)purgeAttachment:(id)attachment;
+ (void)purgeAttachmentFilesForIdentifiers:(id)identifiers account:(id)account;
+ (void)purgeHandwritingSummariesInContext:(id)context;
+ (void)undeleteAttachment:(id)attachment;
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
- (BOOL)hasUnfetchedAssetForRecordKey:(id)key;
- (BOOL)hasUnfetchedLinkPresentationMetadata;
- (BOOL)hasVisibleInlineAttachments;
- (BOOL)hasVisualFallbackMedia;
- (BOOL)isAppStore;
- (BOOL)isBeingEditedLocallyOnDevice;
- (BOOL)isChildOfDocumentGallery;
- (BOOL)isDeletedOrInTrash;
- (BOOL)isEncryptableKeyBinaryData:(id)data;
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
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state newAttachment:(BOOL)attachment;
- (BOOL)mergeDataFromUserSpecificRecord:(id)record accountID:(id)d;
- (BOOL)needsToBePushedToCloud;
- (BOOL)needsToBeRequested;
- (BOOL)preferLocalPreviewImages;
- (BOOL)previewsSupportMultipleAppearances;
- (BOOL)processFallbackAsset:(id)asset fallbackAssetType:(int64_t)type;
- (BOOL)saveToArchive:(void *)archive dataPersister:(id)persister stripImageMarkupMetadata:(BOOL)metadata error:(id *)error;
- (BOOL)shouldAlwaysDownloadAssets;
- (BOOL)shouldEmbedMarkupDataInMedia;
- (BOOL)shouldShowInContentInfoText;
- (BOOL)supportsQuickLook;
- (BOOL)supportsRenaming;
- (BOOL)updateHandwritingSummary:(id)summary;
- (BOOL)wantsUserSpecificRecord;
- (BOOL)willShowFallbackImage;
- (BOOL)writeFallbackImageData:(id)data;
- (BOOL)writeFallbackPDFData:(id)data;
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
- (id)addInlineAttachmentWithIdentifier:(id)identifier;
- (id)addLocationWithLatitude:(double)latitude longitude:(double)longitude;
- (id)addMediaWithData:(id)data filename:(id)filename updateFileBasedAttributes:(BOOL)attributes;
- (id)addMediaWithFileWrapper:(id)wrapper;
- (id)addMediaWithURL:(id)l filename:(id)filename updateFileBasedAttributes:(BOOL)attributes;
- (id)addMediaWithURL:(id)l updateFileBasedAttributes:(BOOL)attributes;
- (id)attachmentModel;
- (id)attachmentPreviewImageCreatingIfNecessaryWithWidth:(double)width height:(double)height scale:(double)scale appearanceType:(unint64_t)type scaleWhenDrawing:(BOOL)drawing metadata:(id)metadata;
- (id)attachmentPreviewImageWithMinSize:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type matchScale:(BOOL)matchScale matchAppearance:(BOOL)appearance;
- (id)attachmentPreviewImageWithMinSize:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type requireAppearance:(BOOL)appearance;
- (id)audioModel;
- (id)childCloudObjects;
- (id)childCloudObjectsForMinimumSupportedVersionPropagation;
- (id)dataForTypeIdentifier:(id)identifier;
- (id)defaultTitle;
- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)context shouldFetchObject:(id)object;
- (id)drawingModel;
- (id)fallbackImageData;
- (id)fallbackImageEncryptedURL;
- (id)fallbackImageURL;
- (id)fallbackPDFData;
- (id)fallbackPDFEncryptedURL;
- (id)fallbackPDFURL;
- (id)fileSizeString;
- (id)fileURLForTypeIdentifier:(id)identifier;
- (id)galleryModel;
- (id)ic_loggingValues;
- (id)inlineDrawingModel;
- (id)inlineFormFillingDismissalCountForAllDevices;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach;
- (id)mergeDecryptedValue:(id)value withOldValue:(id)oldValue forKey:(id)key;
- (id)objectsToBeDeletedBeforeThisObject;
- (id)paperBundleAssetsSubdirectoryURL;
- (id)paperBundleDatabaseSubdirectoryURL;
- (id)paperBundleModel;
- (id)paperBundleURL;
- (id)paperCoherenceContextURL;
- (id)parentAttachmentFromRecord:(id)record accountID:(id)d context:(id)context;
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
- (id)updateAttachmentPreviewImageWithImageData:(id)data size:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type scaleWhenDrawing:(BOOL)drawing metadata:(id)metadata sendNotification:(BOOL)notification;
- (id)updateAttachmentPreviewImageWithImageSrc:(CGImageSource *)src maxDimension:(double)dimension scale:(double)scale appearanceType:(unint64_t)type scaleWhenDrawing:(BOOL)drawing metadata:(id)metadata sendNotification:(BOOL)notification;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario;
- (signed)attachmentType;
- (signed)attachmentTypeFromTypeUTI;
- (signed)attachmentTypeFromURL;
- (signed)attachmentTypeIgnoringSupport;
- (signed)preferredViewSize;
- (unint64_t)approximateArchiveSizeIncludingPreviews:(BOOL)previews;
- (unint64_t)inlineFormFillingBannerDismissalCountForDevice;
- (unint64_t)inlineFormFillingBannerDismissalCountForDeviceIdentifier:(id)identifier;
- (void)accountWillChangeToAccount:(id)account;
- (void)addLocationIfNeeded;
- (void)addPaperBundleToRecordIfAppropriate:(id)appropriate;
- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set;
- (void)attachmentDidChange;
- (void)awakeFromFetch;
- (void)clearDecryptedData;
- (void)dealloc;
- (void)deleteAttachmentPreviewImages;
- (void)deserializeAndMergeValues:(id)values;
- (void)didRefresh:(BOOL)refresh;
- (void)didTurnIntoFault;
- (void)fixBrokenReferencesWithError:(id)error;
- (void)fixMarkedForDeletionForScannedDocuments;
- (void)inlineFormFillingBannerWasDismissedByDeviceIdentifier:(id)identifier;
- (void)inlineFormFillingBannerWasDismissedByUser;
- (void)invalidateAttachmentPreviewImages;
- (void)loadFromArchive:(const void *)archive dataPersister:(id)persister withIdentifierMap:(id)map;
- (void)loadLinkPreviewForSynapseItem:(id)item;
- (void)loadPreviewArchive:(const void *)archive previewDataIdentifier:(id)identifier dataPersister:(id)persister;
- (void)markForDeletion;
- (void)mergeFallbackImageAndPDFFromRecord:(id)record;
- (void)mergePaperBundleFromRecord:(id)record;
- (void)metadata;
- (void)metadataData;
- (void)noteWillMoveToRecentlyDeletedFolder;
- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force;
- (void)persistPendingChanges;
- (void)prepareForDeletion;
- (void)purgeAttachmentPreviewImages;
- (void)recursivelyAddSubAttachments:(id)attachments;
- (void)regenerateTitleWithInferredTitle:(id)title;
- (void)removeTemporaryPaperBundle;
- (void)resetPreferredViewSizeIfNecessary;
- (void)saveMergeableDataIfNeeded;
- (void)savePreview:(id)preview toArchive:(void *)archive previewDataIdentifier:(id)identifier dataPersister:(id)persister;
- (void)setBounds:(CGRect)bounds;
- (void)setHandwritingSummary:(id)summary;
- (void)setImageClassificationSummary:(id)summary;
- (void)setImageFilterType:(signed __int16)type;
- (void)setIsBeingEditedLocallyOnDevice:(BOOL)device;
- (void)setMarkedForDeletion:(BOOL)deletion;
- (void)setMarkupModelData:(id)data;
- (void)setMergeableData:(id)data;
- (void)setMergeablePreferredViewSize:(id)size;
- (void)setMetadata:(id)metadata;
- (void)setMetadataData:(id)data;
- (void)setNote:(id)note;
- (void)setOcrSummary:(id)summary;
- (void)setOrientation:(signed __int16)orientation;
- (void)setParentAttachment:(id)attachment;
- (void)setPreferredViewSize:(signed __int16)size;
- (void)setRemoteFileURL:(id)l;
- (void)setTypeUTI:(id)i resetToIntrinsicNotesVersion:(BOOL)version;
- (void)setUrlString:(id)string;
- (void)undeleteAttachmentPreviewImages;
- (void)unmarkForDeletion;
- (void)updateAfterMediaChange;
- (void)updateAttachmentMetadataWithBlock:(id)block;
- (void)updateAttachmentSectionWithTypeUTI:(id)i;
- (void)updateCombinedSummary;
- (void)updateMarkedForDeletionStateAttachmentIsInUse:(BOOL)use;
- (void)updateParentReferenceIfNecessary;
- (void)updatePlaceInLocationIfNeededHandler:(id)handler;
- (void)updatePreviewsFromRecord:(id)record;
- (void)willRefresh:(BOOL)refresh;
- (void)willSave;
- (void)willTurnIntoFault;
- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)version;
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

    typeUTI = [(ICAttachment *)self typeUTI];

    if (!typeUTI)
    {
      return self->_attachmentType;
    }

    attachmentTypeIgnoringSupport = [(ICAttachment *)self attachmentTypeIgnoringSupport];
    if (attachmentTypeIgnoringSupport)
    {
      attachmentType = attachmentTypeIgnoringSupport;
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
  isUnsupported = [(ICCloudSyncingObject *)&v8 isUnsupported];
  typeUTI = [(ICAttachment *)self typeUTI];
  if (typeUTI)
  {
    typeUTI2 = [(ICAttachment *)self typeUTI];
    v6 = ![ICAttachment isTypeUTISupportedForPasswordProtectedNotes:typeUTI2];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return (isUnsupported | [(ICAttachment *)self isPasswordProtected]& v6) & 1;
}

- (signed)attachmentTypeIgnoringSupport
{
  attachmentTypeFromTypeUTI = [(ICAttachment *)self attachmentTypeFromTypeUTI];
  if (!attachmentTypeFromTypeUTI)
  {
    attachmentTypeFromTypeUTI = [(ICAttachment *)self isURL];
    if (attachmentTypeFromTypeUTI)
    {

      LOWORD(attachmentTypeFromTypeUTI) = [(ICAttachment *)self attachmentTypeFromURL];
    }
  }

  return attachmentTypeFromTypeUTI;
}

- (signed)attachmentTypeFromTypeUTI
{
  typeUTI = [(ICAttachment *)self typeUTI];

  if (!typeUTI)
  {
    return 0;
  }

  typeUTI2 = [(ICAttachment *)self typeUTI];
  v5 = [ICAttachment typeUTIIsImage:typeUTI2];

  if (v5)
  {
    return 3;
  }

  typeUTI3 = [(ICAttachment *)self typeUTI];
  v8 = [ICAttachment typeUTIIsPlayableAudio:typeUTI3];

  if (v8)
  {
    return 4;
  }

  typeUTI4 = [(ICAttachment *)self typeUTI];
  v10 = [ICAttachment typeUTIIsPlayableMovie:typeUTI4];

  if (v10)
  {
    return 5;
  }

  v11 = MEMORY[0x277CE1CB8];
  typeUTI5 = [(ICAttachment *)self typeUTI];
  v13 = [v11 typeWithIdentifier:typeUTI5];
  v14 = [v13 conformsToType:*MEMORY[0x277CE1E08]];

  if (v14)
  {
    return 6;
  }

  typeUTI6 = [(ICAttachment *)self typeUTI];
  v16 = [ICAttachment typeUTIIsInlineDrawing:typeUTI6];

  if (v16)
  {
    return 10;
  }

  typeUTI7 = [(ICAttachment *)self typeUTI];
  v18 = [ICAttachment typeUTIIsDrawing:typeUTI7];

  if (v18)
  {
    return 9;
  }

  typeUTI8 = [(ICAttachment *)self typeUTI];
  v20 = [typeUTI8 isEqualToString:@"com.apple.notes.gallery"];

  if (v20)
  {
    return 11;
  }

  typeUTI9 = [(ICAttachment *)self typeUTI];
  v22 = [typeUTI9 isEqualToString:@"com.apple.notes.table"];

  if (v22)
  {
    return 12;
  }

  typeUTI10 = [(ICAttachment *)self typeUTI];
  v24 = [typeUTI10 isEqualToString:@"com.apple.paper"];

  if (v24)
  {
    return 13;
  }

  typeUTI11 = [(ICAttachment *)self typeUTI];
  if ([typeUTI11 isEqualToString:@"com.apple.paper.doc"])
  {

    return 14;
  }

  typeUTI12 = [(ICAttachment *)self typeUTI];
  v27 = [typeUTI12 isEqualToString:@"com.apple.paper.doc.pdf"];

  if (v27)
  {
    return 14;
  }

  typeUTI13 = [(ICAttachment *)self typeUTI];
  v29 = [typeUTI13 isEqualToString:@"com.apple.paper.doc.scan"];

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
  mergeablePreferredViewSize = [(ICAttachment *)self mergeablePreferredViewSize];
  v4 = [mergeablePreferredViewSize length];

  if (v4)
  {
    v5 = [ICTTMergeableWallClockValue alloc];
    mergeablePreferredViewSize2 = [(ICAttachment *)self mergeablePreferredViewSize];
    v7 = [(ICTTMergeableWallClockValue *)v5 initWithData:mergeablePreferredViewSize2];
  }

  else
  {
    v7 = 0;
  }

  value = [(ICTTMergeableWallClockValue *)v7 value];

  if (value)
  {
    value2 = [(ICTTMergeableWallClockValue *)v7 value];
    shortValue = [value2 shortValue];
  }

  else
  {
    value2 = [(ICAttachment *)self note];
    shortValue = [value2 attachmentViewType];
  }

  v11 = shortValue;

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
    attachmentModel = [(ICAttachment *)self attachmentModel];
    shouldUsePlaceholderBoundsIfNecessary = [attachmentModel shouldUsePlaceholderBoundsIfNecessary];

    if (shouldUsePlaceholderBoundsIfNecessary)
    {
      attachmentModel2 = [(ICAttachment *)self attachmentModel];
      [attachmentModel2 placeholderWidth];
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
    attachmentModel = [(ICAttachment *)self attachmentModel];
    shouldUsePlaceholderBoundsIfNecessary = [attachmentModel shouldUsePlaceholderBoundsIfNecessary];

    if (shouldUsePlaceholderBoundsIfNecessary)
    {
      attachmentModel2 = [(ICAttachment *)self attachmentModel];
      [attachmentModel2 placeholderHeight];
      v5 = v9;
    }
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  [attachmentModel intrinsicContentSize];
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
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ICAttachment_attachmentModel__block_invoke;
  v5[3] = &unk_278194B00;
  v5[4] = self;
  [managedObjectContext performBlockAndWait:v5];

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
  media = [(ICAttachment *)self media];

  if (media)
  {
    media2 = [(ICAttachment *)self media];
    v7[0] = media2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)loadFromArchive:(const void *)archive dataPersister:(id)persister withIdentifierMap:(id)map
{
  v197 = *MEMORY[0x277D85DE8];
  persisterCopy = persister;
  mapCopy = map;
  archiveCopy = archive;
  if (*(archive + 32))
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = *(archive + 5);
    v10 = *(v9 + 23);
    if (v10 < 0)
    {
      v9 = *v9;
      v10 = *(*(archive + 5) + 8);
    }

    v11 = [v8 initWithBytes:v9 length:v10 encoding:4];
    if (mapCopy)
    {
      identifier = [(ICAttachment *)self identifier];
      [mapCopy setObject:identifier forKeyedSubscript:v11];
    }

    v186 = v11;
  }

  else
  {
    v186 = &stru_2827172C0;
  }

  if ((*(archive + 8) & 0x1000000) != 0)
  {
    v13 = *(archive + 29);
  }

  else
  {
    v13 = 0;
  }

  v14 = [(ICCloudSyncingObject *)self requireMinimumSupportedVersionAndPropagateToChildObjects:v13];
  if ((*(archive + 32) & 2) != 0)
  {
    v17 = objc_alloc(MEMORY[0x277CBEA90]);
    v18 = *(archive + 6);
    v19 = *(v18 + 23);
    if (v19 < 0)
    {
      v18 = *v18;
      v19 = *(*(archive + 6) + 8);
    }

    v15 = [v17 initWithBytes:v18 length:v19];
    [(ICAttachment *)self setMergeableData:v15];
  }

  else
  {
    if (!persisterCopy)
    {
      goto LABEL_18;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"mergeableData"];
    v16 = [persisterCopy loadDataForIdentifier:v15];
    [(ICAttachment *)self setMergeableData:v16];
  }

LABEL_18:
  v20 = *(archive + 8);
  if ((v20 & 4) != 0)
  {
    v14 = [(ICAttachment *)self setSizeHeight:*(archive + 14)];
    v20 = *(archive + 8);
  }

  if ((v20 & 8) != 0)
  {
    v14 = [(ICAttachment *)self setSizeWidth:*(archive + 15)];
    v20 = *(archive + 8);
  }

  if ((v20 & 0x800) != 0)
  {
    v14 = [(ICAttachment *)self setOriginX:*(archive + 34)];
    v20 = *(archive + 8);
  }

  if ((v20 & 0x1000) != 0)
  {
    v14 = [(ICAttachment *)self setOriginY:*(archive + 35)];
    v20 = *(archive + 8);
  }

  if ((v20 & 0x2000) != 0)
  {
    v14 = [(ICAttachment *)self setOrientation:*(archive + 80)];
    v20 = *(archive + 8);
  }

  if ((v20 & 0x10) != 0)
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = *(archive + 8);
    v23 = *(v22 + 23);
    if (v23 < 0)
    {
      v22 = *v22;
      v23 = *(*(archive + 8) + 8);
    }

    v24 = [v21 initWithBytes:v22 length:v23 encoding:4];
    [(ICAttachment *)self setSummary:v24];

    v20 = *(archive + 8);
  }

  if ((v20 & 0x20) != 0)
  {
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    v26 = *(archive + 9);
    v27 = *(v26 + 23);
    if (v27 < 0)
    {
      v26 = *v26;
      v27 = *(*(archive + 9) + 8);
    }

    v28 = [v25 initWithBytes:v26 length:v27 encoding:4];
    [(ICAttachment *)self setTitle:v28];
  }

  if ((*(archive + 36) & 4) != 0)
  {
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = *(archive + 39);
    v31 = *(v30 + 23);
    if (v31 < 0)
    {
      v30 = *v30;
      v31 = *(*(archive + 39) + 8);
    }

    v32 = [v29 initWithBytes:v30 length:v31 encoding:4];
    [(ICAttachment *)self setUserTitle:v32];
  }

  v33 = *(archive + 8);
  if ((v33 & 0x40) != 0)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = *(archive + 10);
    v36 = *(v35 + 23);
    if (v36 < 0)
    {
      v35 = *v35;
      v36 = *(*(archive + 10) + 8);
    }

    v37 = [v34 initWithBytes:v35 length:v36 encoding:4];
    [(ICAttachment *)self setTypeUTI:v37 resetToIntrinsicNotesVersion:0];

    v33 = *(archive + 8);
  }

  if ((v33 & 0x80) != 0)
  {
    v38 = objc_alloc(MEMORY[0x277CCACA8]);
    v39 = *(archive + 11);
    v40 = *(v39 + 23);
    if (v40 < 0)
    {
      v39 = *v39;
      v40 = *(*(archive + 11) + 8);
    }

    v41 = [v38 initWithBytes:v39 length:v40 encoding:4];
    [(ICAttachment *)self setUrlString:v41];

    v33 = *(archive + 8);
  }

  if ((v33 & 0x4000) != 0)
  {
    v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(archive + 18)];
    [(ICAttachment *)self setPreviewUpdateDate:v42];

    v33 = *(archive + 8);
  }

  if ((v33 & 0x8000) != 0)
  {
    v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(archive + 19)];
    [(ICAttachment *)self setCreationDate:v43];

    v33 = *(archive + 8);
  }

  if ((v33 & 0x10000) != 0)
  {
    v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(archive + 21)];
    [(ICAttachment *)self setModificationDate:v44];

    v33 = *(archive + 8);
  }

  if ((v33 & 0x20000) != 0)
  {
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    v46 = *(archive + 22);
    v47 = *(v46 + 23);
    if (v47 < 0)
    {
      v46 = *v46;
      v47 = *(*(archive + 22) + 8);
    }

    v48 = [v45 initWithBytes:v46 length:v47 encoding:4];
    v49 = [MEMORY[0x277CBEBC0] URLWithString:v48];
    [(ICAttachment *)self setRemoteFileURL:v49];

    v33 = *(archive + 8);
  }

  if ((v33 & 0x40000) != 0)
  {
    v14 = [(ICAttachment *)self setCheckedForLocation:*(archive + 164)];
    v33 = *(archive + 8);
  }

  if ((v33 & 0x80000) != 0)
  {
    v14 = [(ICAttachment *)self setFileSize:*(archive + 23)];
    v33 = *(archive + 8);
  }

  if ((v33 & 0x100000) != 0)
  {
    v14 = [(ICAttachment *)self setDuration:*(archive + 24)];
    v33 = *(archive + 8);
  }

  if ((v33 & 0x200000) != 0)
  {
    v14 = [(ICAttachment *)self setImageFilterType:*(archive + 196)];
    v33 = *(archive + 8);
  }

  if ((v33 & 0x400000) != 0)
  {
    v52 = objc_alloc(MEMORY[0x277CBEA90]);
    v53 = *(archive + 25);
    v54 = *(v53 + 23);
    if (v54 < 0)
    {
      v53 = *v53;
      v54 = *(*(archive + 25) + 8);
    }

    v50 = [v52 initWithBytes:v53 length:v54];
    [(ICAttachment *)self setMarkupModelData:v50];
    goto LABEL_72;
  }

  if (persisterCopy)
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"markupModelData"];
    v51 = [persisterCopy loadDataForIdentifier:v50];
    [(ICAttachment *)self setMarkupModelData:v51];

LABEL_72:
    v33 = *(archive + 8);
  }

  if (v33 >> 25 == 127 && (*(archive + 36) & 1) != 0)
  {
    [(ICAttachment *)self setCroppingQuadBottomLeftX:*(archive + 30)];
    [(ICAttachment *)self setCroppingQuadBottomLeftY:*(archive + 31)];
    [(ICAttachment *)self setCroppingQuadBottomRightX:*(archive + 32)];
    [(ICAttachment *)self setCroppingQuadBottomRightY:*(archive + 33)];
    [(ICAttachment *)self setCroppingQuadTopLeftX:*(archive + 34)];
    [(ICAttachment *)self setCroppingQuadTopLeftY:*(archive + 35)];
    [(ICAttachment *)self setCroppingQuadTopRightX:*(archive + 36)];
    v14 = [(ICAttachment *)self setCroppingQuadTopRightY:*(archive + 37)];
    v33 = *(archive + 8);
  }

  if ((v33 & 0x100) != 0)
  {
    v55 = *(archive + 12);
    if (v55)
    {
      v56 = *(v55 + 40);
    }

    else
    {
      v57 = topotext::Attachment::default_instance(v14);
      v55 = *(archive + 12);
      v56 = *(*(v57 + 12) + 40);
      if (!v55)
      {
        v55 = *(topotext::Attachment::default_instance(v57) + 96);
      }
    }

    v14 = [(ICAttachment *)self addLocationWithLatitude:v56 longitude:*(v55 + 48)];
    v58 = *(archive + 12);
    v59 = v58;
    if (!v58)
    {
      v14 = topotext::Attachment::default_instance(v14);
      v59 = *(v14 + 12);
      v58 = *(archive + 12);
    }

    if ((*(v59 + 32) & 8) != 0)
    {
      if (!v58)
      {
        v58 = *(topotext::Attachment::default_instance(v14) + 96);
      }

      v60 = *(v58 + 64);
      location = [(ICAttachment *)self location];
      [location setPlaceUpdated:v60];

      v58 = *(archive + 12);
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
      v64 = *(archive + 12);
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

      v66 = *(archive + 12);
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
      location2 = [(ICAttachment *)self location];
      [location2 setPlacemark:v74];
    }
  }

  if ((*(archive + 33) & 2) != 0)
  {
    v76 = *(archive + 13);
    if (!v76)
    {
      v76 = *(topotext::Attachment::default_instance(v14) + 104);
    }

    if ((*(v76 + 32) & 8) != 0)
    {
      v88 = objc_alloc(MEMORY[0x277CCACA8]);
      v89 = v88;
      v90 = *(archive + 13);
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

      v92 = *(archive + 13);
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
      v79 = *(archive + 13);
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

      v81 = *(archive + 13);
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
      v86 = *(archive + 13);
      if (!v86)
      {
        v86 = *(topotext::Attachment::default_instance(v84) + 104);
      }

      if ((*(v86 + 32) & 2) != 0)
      {
        v95 = objc_alloc(MEMORY[0x277CCACA8]);
        v96 = v95;
        v97 = *(archive + 13);
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

        v99 = *(archive + 13);
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

    ic_sanitizedFilenameString = [(topotext::Attachment *)v87 ic_sanitizedFilenameString];

    v105 = *(archive + 13);
    if (!v105)
    {
      v105 = *(topotext::Attachment::default_instance(v104) + 104);
    }

    if ((*(v105 + 32) & 4) != 0)
    {
      v108 = objc_alloc(MEMORY[0x277CBEA90]);
      v109 = v108;
      v110 = *(archive + 13);
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

      v112 = *(archive + 13);
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
      if (!persisterCopy)
      {
        v107 = 0;
        goto LABEL_163;
      }

      v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"media"];
      v107 = [persisterCopy loadDataForIdentifier:v106];

      if (!v107)
      {
        goto LABEL_163;
      }
    }

    if (ic_sanitizedFilenameString)
    {
      v115 = [(ICAttachment *)self addMediaWithData:v107 filename:ic_sanitizedFilenameString updateFileBasedAttributes:0];
      v116 = v115;
      isa = *(archive + 13);
      if (!isa)
      {
        v115 = topotext::Attachment::default_instance(v115);
        isa = v115[13].isa;
      }

      if ((*(isa + 32) & 0x10) != 0)
      {
        v119 = *(archive + 13);
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
      ic_loggingIdentifier = [(ICCloudSyncingObject *)self ic_loggingIdentifier];
      v183 = [v107 length];
      *buf = 138412802;
      v192 = ic_loggingIdentifier;
      v193 = 2048;
      v194 = v183;
      v195 = 2112;
      v196 = ic_sanitizedFilenameString;
      _os_log_error_impl(&dword_214D51000, v116, OS_LOG_TYPE_ERROR, "Failed to unarchive media for attachment (%@) because either the data (%lu bytes) or filename (%@) were missing", buf, 0x20u);
    }

LABEL_166:
  }

  if (persisterCopy)
  {
    v186 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackImage", v186];
    v184 = [persisterCopy loadDataForIdentifier:v186];
  }

  else
  {
    v121 = *(archive + 9);
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
    v123 = *(archive + 40);
    v124 = *(v123 + 23);
    if (v124 < 0)
    {
      v123 = *v123;
      v124 = *(*(archive + 40) + 8);
    }

    v184 = [v122 initWithBytes:v123 length:v124];
  }

  if (v184)
  {
    [(ICAttachment *)self writeFallbackImageData:v184];
  }

  if (persisterCopy)
  {
    v1862 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackPDF", v186];
    v185 = [persisterCopy loadDataForIdentifier:v1862];

    goto LABEL_183;
  }

  if ((*(archive + 9) & 0x100) == 0)
  {
    goto LABEL_185;
  }

LABEL_180:
  v126 = objc_alloc(MEMORY[0x277CBEA90]);
  v127 = *(archive + 47);
  v128 = *(v127 + 23);
  if (v128 < 0)
  {
    v127 = *v127;
    v128 = *(*(archive + 47) + 8);
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
  v129 = *(archive + 9);
  if ((v129 & 2) != 0)
  {
    v130 = objc_alloc(MEMORY[0x277CBEA90]);
    v131 = *(archive + 38);
    v132 = *(v131 + 23);
    if (v132 < 0)
    {
      v131 = *v131;
      v132 = *(*(archive + 38) + 8);
    }

    v133 = [v130 initWithBytes:v131 length:v132];
    [(ICAttachment *)self setMetadataData:v133];

    v129 = *(archive + 9);
  }

  if ((v129 & 0x10) != 0)
  {
    v134 = objc_alloc(MEMORY[0x277CBEA90]);
    v135 = *(archive + 41);
    v136 = *(v135 + 23);
    if (v136 < 0)
    {
      v135 = *v135;
      v136 = *(*(archive + 41) + 8);
    }

    v137 = [v134 initWithBytes:v135 length:v136];
    [(ICAttachment *)self setLinkPresentationArchivedMetadata:v137];
  }

  v138 = *(archive + 30);
  if (v138)
  {
    for (i = 0; i != v138; ++i)
    {
      v140 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_previewImage_%lu", v186, i];
      [(ICAttachment *)self loadPreviewArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::PreviewImage>::TypeHandler>((archiveCopy + 28) previewDataIdentifier:i) dataPersister:v140, persisterCopy];
    }
  }

  v141 = archiveCopy[54];
  if (v141)
  {
    for (j = 0; j != v141; ++j)
    {
      v143 = objc_autoreleasePoolPush();
      note = [(ICAttachment *)self note];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v147 = [note addAttachmentWithIdentifier:uUIDString];

      [v147 setParentAttachment:self];
      [(ICAttachment *)self addSubAttachmentsObject:v147];
      [v147 loadFromArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>((archiveCopy + 52) dataPersister:j) withIdentifierMap:{persisterCopy, mapCopy}];
      [v147 updateChangeCountWithReason:@"Loaded subattachment from archive"];
      media = [v147 media];
      [media updateChangeCountWithReason:@"Loaded subattachment from archive"];

      objc_autoreleasePoolPop(v143);
    }
  }

  attachmentModel = [(ICAttachment *)self attachmentModel];
  [attachmentModel updateAfterLoadWithSubAttachmentIdentifierMap:mapCopy];

  attachmentModel2 = [(ICAttachment *)self attachmentModel];
  [attachmentModel2 updateFileBasedAttributes];

  v151 = archiveCopy[86];
  if (v151)
  {
    for (k = 0; k != v151; ++k)
    {
      note2 = [(ICAttachment *)self note];
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      uUIDString2 = [uUID2 UUIDString];
      v156 = [note2 addInlineAttachmentWithIdentifier:uUIDString2];

      [v156 setParentAttachment:self];
      [(ICAttachment *)self addInlineAttachmentsObject:v156];
      [v156 loadFromArchive:google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>((archiveCopy + 84) dataPersister:k) withIdentifierMap:{persisterCopy, mapCopy}];
      [v156 updateChangeCountWithReason:@"Loaded inline attachment from archive"];
    }
  }

  objc_opt_class();
  attachmentModel3 = [(ICAttachment *)self attachmentModel];
  v158 = ICDynamicCast();

  if (v158)
  {
    if ((archiveCopy[9] & 0x40) == 0)
    {
      if (!persisterCopy)
      {
        goto LABEL_214;
      }

      v159 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v186, @"systemPaperBundle"];
      v160 = [persisterCopy loadDataForIdentifier:v159];

      if (!v160)
      {
        goto LABEL_214;
      }

      goto LABEL_211;
    }

    v161 = objc_alloc(MEMORY[0x277CBEA90]);
    v162 = *(archiveCopy + 45);
    v163 = *(v162 + 23);
    if (v163 < 0)
    {
      v162 = *v162;
      v163 = *(*(archiveCopy + 45) + 8);
    }

    v160 = [v161 initWithBytes:v162 length:v163];
    if (v160)
    {
LABEL_211:
      v164 = NSTemporaryDirectory();
      uUID3 = [MEMORY[0x277CCAD78] UUID];
      uUIDString3 = [uUID3 UUIDString];
      v167 = [v164 stringByAppendingPathComponent:uUIDString3];

      v168 = [MEMORY[0x277CBEBC0] fileURLWithPath:v167];
      v169 = [v168 URLByAppendingPathExtension:@"zip"];
      path = [v169 path];
      LODWORD(uUIDString3) = [v160 writeToFile:path atomically:1];

      if (uUIDString3)
      {
        [v158 restorePaperBundleFromArchiveURL:v169 error:0];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtURL:v169 error:0];
      }
    }
  }

LABEL_214:
  v172 = archiveCopy[9];
  if ((v172 & 0x80) != 0)
  {
    v173 = objc_alloc(MEMORY[0x277CBEA90]);
    v174 = *(archiveCopy + 46);
    v175 = *(v174 + 23);
    if (v175 < 0)
    {
      v174 = *v174;
      v175 = *(*(archiveCopy + 46) + 8);
    }

    v176 = [v173 initWithBytes:v174 length:v175];
    [(ICAttachment *)self setSynapseData:v176];

    v172 = archiveCopy[9];
  }

  if ((v172 & 0x200) != 0)
  {
    v177 = objc_alloc(MEMORY[0x277CBEA90]);
    v178 = *(archiveCopy + 48);
    v179 = *(v178 + 23);
    if (v179 < 0)
    {
      v178 = *v178;
      v179 = *(*(archiveCopy + 48) + 8);
    }

    v180 = [v177 initWithBytes:v178 length:v179];
    [(ICAttachment *)self setMergeablePreferredViewSize:v180];

    [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"Set preferred view size"];
  }

  attachmentModel4 = [(ICAttachment *)self attachmentModel];
  [attachmentModel4 updateAfterLoadWithInlineAttachmentIdentifierMap:mapCopy];
}

- (void)loadPreviewArchive:(const void *)archive previewDataIdentifier:(id)identifier dataPersister:(id)persister
{
  identifierCopy = identifier;
  persisterCopy = persister;
  v9 = persisterCopy;
  v10 = *(archive + 8);
  if (v10)
  {
    v11 = *(archive + 12);
  }

  else
  {
    v11 = 1.0;
  }

  v12 = (*(archive + 8) & 2) == 0;
  v13 = *(archive + 52);
  v38 = *(archive + 17);
  v14 = *MEMORY[0x277CBF3A8];
  v15 = *(MEMORY[0x277CBF3A8] + 8);
  if ((v10 & 4) != 0)
  {
    v17 = objc_alloc(MEMORY[0x277CBEA90]);
    v18 = *(archive + 5);
    v19 = *(v18 + 23);
    if (v19 < 0)
    {
      v18 = *v18;
      v19 = *(*(archive + 5) + 8);
    }

    v16 = [v17 initWithBytes:v18 length:v19];
  }

  else
  {
    if (!persisterCopy)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v16 = [persisterCopy loadDataForIdentifier:identifierCopy];
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
  if ((*(archive + 32) & 8) != 0)
  {
    v30 = objc_alloc(MEMORY[0x277CBEA90]);
    v31 = *(archive + 7);
    v32 = *(v31 + 23);
    if (v32 < 0)
    {
      v31 = *v31;
      v32 = *(*(archive + 7) + 8);
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

  v35 = *(archive + 8);
  if ((v35 & 0x10) != 0)
  {
    [v33 setVersion:*(archive + 32)];
    v35 = *(archive + 8);
  }

  if ((v35 & 0x20) != 0 && *(archive + 53) == 1)
  {
    v36 = v34;
    [v34 setVersionOutOfDate:1];
  }

  else
  {
    v36 = v34;
  }

LABEL_31:
  if ((*(archive + 8) & 0x40) != 0)
  {
    v37 = *(archive + 9);
  }

  else
  {
    v37 = 0;
  }

  [v36 requireMinimumSupportedVersionAndPropagateToChildObjects:v37];
}

- (BOOL)saveToArchive:(void *)archive dataPersister:(id)persister stripImageMarkupMetadata:(BOOL)metadata error:(id *)error
{
  metadataCopy = metadata;
  v330 = *MEMORY[0x277D85DE8];
  persisterCopy = persister;
  selfCopy = self;
  identifier = [(ICAttachment *)self identifier];

  if (identifier)
  {
    identifier2 = [(ICAttachment *)selfCopy identifier];
    uTF8String = [identifier2 UTF8String];
    *(archive + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v11 = uTF8String;
    v12 = *(archive + 5);
    if (v12 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v12, v11);
  }

  v13 = [(ICAttachment *)selfCopy intrinsicNotesVersionForScenario:1];
  if (v13)
  {
    *(archive + 8) |= 0x1000000u;
    *(archive + 29) = v13;
  }

  attachmentModel = [(ICAttachment *)selfCopy attachmentModel];
  v320 = 0;
  v299 = [attachmentModel mergeableDataForCopying:&v320];
  v298 = v320;

  if (v299)
  {
    if (!persisterCopy || (-[ICAttachment identifier](selfCopy, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v15, @"mergeableData"], v16 = objc_claimAutoreleasedReturnValue(), v15, LOBYTE(v15) = objc_msgSend(persisterCopy, "saveData:identifier:", v299, v16), v16, (v15 & 1) == 0))
    {
      v17 = v299;
      bytes = [v299 bytes];
      v19 = [v299 length];
      *(archive + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v20 = v19;
      v21 = *(archive + 6);
      if (v21 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v21, bytes, v20);
    }
  }

  [(ICAttachment *)selfCopy sizeHeight];
  if (v22 != 0.0)
  {
    [(ICAttachment *)selfCopy sizeHeight];
    *&v23 = v23;
    *(archive + 8) |= 4u;
    *(archive + 14) = LODWORD(v23);
  }

  [(ICAttachment *)selfCopy sizeWidth];
  if (v24 != 0.0)
  {
    [(ICAttachment *)selfCopy sizeWidth];
    *&v25 = v25;
    *(archive + 8) |= 8u;
    *(archive + 15) = LODWORD(v25);
  }

  [(ICAttachment *)selfCopy originX];
  if (v26 != 0.0)
  {
    [(ICAttachment *)selfCopy originX];
    *&v27 = v27;
    *(archive + 8) |= 0x800u;
    *(archive + 34) = LODWORD(v27);
  }

  [(ICAttachment *)selfCopy originY];
  if (v28 != 0.0)
  {
    [(ICAttachment *)selfCopy originY];
    *&v29 = v29;
    *(archive + 8) |= 0x1000u;
    *(archive + 35) = LODWORD(v29);
  }

  if ([(ICAttachment *)selfCopy orientation])
  {
    orientation = [(ICAttachment *)selfCopy orientation];
    *(archive + 8) |= 0x2000u;
    *(archive + 40) = orientation;
  }

  summary = [(ICAttachment *)selfCopy summary];
  v32 = summary == 0;

  if (!v32)
  {
    summary2 = [(ICAttachment *)selfCopy summary];
    v34 = summary2;
    uTF8String2 = [summary2 UTF8String];
    *(archive + 8) |= 0x10u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v36 = uTF8String2;
    v37 = *(archive + 8);
    if (v37 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v37, v36);
  }

  title = [(ICAttachment *)selfCopy title];
  v39 = title == 0;

  if (!v39)
  {
    title2 = [(ICAttachment *)selfCopy title];
    v41 = title2;
    uTF8String3 = [title2 UTF8String];
    *(archive + 8) |= 0x20u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v43 = uTF8String3;
    v44 = *(archive + 9);
    if (v44 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v44, v43);
  }

  userTitle = [(ICAttachment *)selfCopy userTitle];
  v46 = userTitle == 0;

  if (!v46)
  {
    userTitle2 = [(ICAttachment *)selfCopy userTitle];
    v48 = userTitle2;
    uTF8String4 = [userTitle2 UTF8String];
    *(archive + 9) |= 4u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v50 = uTF8String4;
    v51 = *(archive + 39);
    if (v51 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v51, v50);
  }

  typeUTI = [(ICAttachment *)selfCopy typeUTI];
  v53 = typeUTI == 0;

  if (!v53)
  {
    typeUTI2 = [(ICAttachment *)selfCopy typeUTI];
    v55 = typeUTI2;
    uTF8String5 = [typeUTI2 UTF8String];
    *(archive + 8) |= 0x40u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v57 = uTF8String5;
    v58 = *(archive + 10);
    if (v58 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v58, v57);
  }

  urlString = [(ICAttachment *)selfCopy urlString];
  v60 = urlString == 0;

  if (!v60)
  {
    urlString2 = [(ICAttachment *)selfCopy urlString];
    v62 = urlString2;
    uTF8String6 = [urlString2 UTF8String];
    *(archive + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v64 = uTF8String6;
    v65 = *(archive + 11);
    if (v65 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v65, v64);
  }

  previewUpdateDate = [(ICAttachment *)selfCopy previewUpdateDate];
  v67 = previewUpdateDate == 0;

  if (!v67)
  {
    previewUpdateDate2 = [(ICAttachment *)selfCopy previewUpdateDate];
    [previewUpdateDate2 timeIntervalSinceReferenceDate];
    *(archive + 8) |= 0x4000u;
    *(archive + 18) = v69;
  }

  creationDate = [(ICCloudSyncingObject *)selfCopy creationDate];
  v71 = creationDate == 0;

  if (!v71)
  {
    creationDate2 = [(ICCloudSyncingObject *)selfCopy creationDate];
    [creationDate2 timeIntervalSinceReferenceDate];
    *(archive + 8) |= 0x8000u;
    *(archive + 19) = v73;
  }

  modificationDate = [(ICCloudSyncingObject *)selfCopy modificationDate];
  v75 = modificationDate == 0;

  if (!v75)
  {
    modificationDate2 = [(ICCloudSyncingObject *)selfCopy modificationDate];
    [modificationDate2 timeIntervalSinceReferenceDate];
    *(archive + 8) |= 0x10000u;
    *(archive + 21) = v77;
  }

  remoteFileURL = [(ICAttachment *)selfCopy remoteFileURL];
  v79 = remoteFileURL == 0;

  if (!v79)
  {
    remoteFileURL2 = [(ICAttachment *)selfCopy remoteFileURL];
    absoluteString = [remoteFileURL2 absoluteString];
    v82 = absoluteString;
    uTF8String7 = [absoluteString UTF8String];
    *(archive + 8) |= 0x20000u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v84 = uTF8String7;
    v85 = *(archive + 22);
    if (v85 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v85, v84);
  }

  if ([(ICAttachment *)selfCopy checkedForLocation])
  {
    checkedForLocation = [(ICAttachment *)selfCopy checkedForLocation];
    *(archive + 8) |= 0x40000u;
    *(archive + 164) = checkedForLocation;
  }

  if ([(ICAttachment *)selfCopy fileSize])
  {
    fileSize = [(ICAttachment *)selfCopy fileSize];
    *(archive + 8) |= 0x80000u;
    *(archive + 23) = fileSize;
  }

  [(ICAttachment *)selfCopy duration];
  if (v88 != 0.0)
  {
    [(ICAttachment *)selfCopy duration];
    *(archive + 8) |= 0x100000u;
    *(archive + 24) = v89;
  }

  if ([(ICAttachment *)selfCopy imageFilterType])
  {
    imageFilterType = [(ICAttachment *)selfCopy imageFilterType];
    *(archive + 8) |= 0x200000u;
    *(archive + 98) = imageFilterType;
  }

  markupModelData = [(ICAttachment *)selfCopy markupModelData];
  v92 = [markupModelData length] == 0;

  if (!v92)
  {
    if (!persisterCopy || (-[ICAttachment identifier](selfCopy, "identifier"), v93 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v93, @"markupModelData"], v94 = objc_claimAutoreleasedReturnValue(), v93, -[ICAttachment markupModelData](selfCopy, "markupModelData"), v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(persisterCopy, "saveData:identifier:", v95, v94), v95, v94, (v96 & 1) == 0))
    {
      markupModelData2 = [(ICAttachment *)selfCopy markupModelData];
      v98 = markupModelData2;
      bytes2 = [markupModelData2 bytes];
      markupModelData3 = [(ICAttachment *)selfCopy markupModelData];
      v101 = [markupModelData3 length];
      *(archive + 8) |= 0x400000u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v102 = v101;
      v103 = *(archive + 25);
      if (v103 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v103, bytes2, v102);
    }
  }

  if ([(ICAttachment *)selfCopy hasCroppingQuad])
  {
    [(ICAttachment *)selfCopy croppingQuadBottomLeftX];
    *(archive + 8) |= 0x2000000u;
    *(archive + 30) = v104;
    [(ICAttachment *)selfCopy croppingQuadBottomLeftY];
    *(archive + 8) |= 0x4000000u;
    *(archive + 31) = v105;
    [(ICAttachment *)selfCopy croppingQuadBottomRightX];
    *(archive + 8) |= 0x8000000u;
    *(archive + 32) = v106;
    [(ICAttachment *)selfCopy croppingQuadBottomRightY];
    *(archive + 8) |= 0x10000000u;
    *(archive + 33) = v107;
    [(ICAttachment *)selfCopy croppingQuadTopLeftX];
    *(archive + 8) |= 0x20000000u;
    *(archive + 34) = v108;
    [(ICAttachment *)selfCopy croppingQuadTopLeftY];
    *(archive + 8) |= 0x40000000u;
    *(archive + 35) = v109;
    [(ICAttachment *)selfCopy croppingQuadTopRightX];
    *(archive + 8) |= 0x80000000;
    *(archive + 36) = v110;
    [(ICAttachment *)selfCopy croppingQuadTopRightY];
    *(archive + 9) |= 1u;
    *(archive + 37) = v111;
  }

  location = [(ICAttachment *)selfCopy location];
  v113 = location == 0;

  if (!v113)
  {
    *(archive + 8) |= 0x100u;
    v114 = *(archive + 12);
    if (!v114)
    {
      operator new();
    }

    location2 = [(ICAttachment *)selfCopy location];
    [location2 latitude];
    *(v114 + 32) |= 1u;
    *(v114 + 40) = v116;

    location3 = [(ICAttachment *)selfCopy location];
    [location3 longitude];
    *(v114 + 32) |= 2u;
    *(v114 + 48) = v118;

    location4 = [(ICAttachment *)selfCopy location];
    placeUpdated = [location4 placeUpdated];
    *(v114 + 32) |= 8u;
    *(v114 + 64) = placeUpdated;

    location5 = [(ICAttachment *)selfCopy location];
    placemark = [location5 placemark];
    v123 = placemark == 0;

    if (!v123)
    {
      v124 = MEMORY[0x277CCAAB0];
      location6 = [(ICAttachment *)selfCopy location];
      placemark2 = [location6 placemark];
      v127 = [v124 archivedDataWithRootObject:placemark2 requiringSecureCoding:1 error:0];

      v128 = v127;
      bytes3 = [v127 bytes];
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

      std::string::__assign_external(v132, bytes3, v131);
    }
  }

  if ([(ICAttachment *)selfCopy hasFallbackImage])
  {
    fallbackImageData = [(ICAttachment *)selfCopy fallbackImageData];
    if (!persisterCopy || (-[ICAttachment identifier](selfCopy, "identifier"), v134 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackImage", v134], v135 = objc_claimAutoreleasedReturnValue(), v134, LOBYTE(v134) = objc_msgSend(persisterCopy, "saveData:identifier:", fallbackImageData, v135), v135, (v134 & 1) == 0))
    {
      v136 = fallbackImageData;
      bytes4 = [fallbackImageData bytes];
      v138 = [fallbackImageData length];
      *(archive + 9) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v139 = v138;
      v140 = *(archive + 40);
      if (v140 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v140, bytes4, v139);
    }
  }

  if ([(ICAttachment *)selfCopy hasFallbackPDF])
  {
    fallbackPDFData = [(ICAttachment *)selfCopy fallbackPDFData];
    if (!persisterCopy || (-[ICAttachment identifier](selfCopy, "identifier"), v142 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_fallbackPDF", v142], v143 = objc_claimAutoreleasedReturnValue(), v142, LOBYTE(v142) = objc_msgSend(persisterCopy, "saveData:identifier:", fallbackPDFData, v143), v143, (v142 & 1) == 0))
    {
      v144 = fallbackPDFData;
      bytes5 = [fallbackPDFData bytes];
      v146 = [fallbackPDFData length];
      *(archive + 9) |= 0x100u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v147 = v146;
      v148 = *(archive + 47);
      if (v148 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v148, bytes5, v147);
    }
  }

  media = [(ICAttachment *)selfCopy media];
  if (!media || (-[ICAttachment media](selfCopy, "media"), v150 = objc_claimAutoreleasedReturnValue(), [v150 identifier], v151 = objc_claimAutoreleasedReturnValue(), v152 = v151 == 0, v151, v150, media, v152))
  {
    v301 = 1;
    goto LABEL_143;
  }

  *(archive + 8) |= 0x200u;
  v153 = *(archive + 13);
  if (!v153)
  {
    operator new();
  }

  media2 = [(ICAttachment *)selfCopy media];
  identifier3 = [media2 identifier];
  v156 = identifier3;
  uTF8String8 = [identifier3 UTF8String];
  *(v153 + 32) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v158 = uTF8String8;
  v159 = *(v153 + 40);
  if (v159 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v159, v158);

  media3 = [(ICAttachment *)selfCopy media];
  v161 = [media3 intrinsicNotesVersionForScenario:1];

  if (v161)
  {
    *(v153 + 32) |= 0x10u;
    *(v153 + 72) = v161;
  }

  media4 = [(ICAttachment *)selfCopy media];
  filename = [media4 filename];
  v164 = filename == 0;

  if (v164)
  {
    media5 = [(ICAttachment *)selfCopy media];
    identifier4 = [media5 identifier];
    v184 = identifier4;
    uTF8String9 = [identifier4 UTF8String];
    *(v153 + 32) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v186 = uTF8String9;
    v187 = *(v153 + 64);
    if (v187 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v187, v186);

    filename4 = os_log_create("com.apple.notes", "Archiving");
    if (os_log_type_enabled(filename4, OS_LOG_TYPE_ERROR))
    {
      media6 = [(ICAttachment *)selfCopy media];
      ic_loggingIdentifier = [media6 ic_loggingIdentifier];
      [ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:ic_loggingIdentifier dataPersister:v329 stripImageMarkupMetadata:filename4 error:media6];
    }

    media9 = filename4;
    goto LABEL_127;
  }

  media7 = [(ICAttachment *)selfCopy media];
  filename2 = [media7 filename];
  v167 = filename2;
  uTF8String10 = [filename2 UTF8String];
  *(v153 + 32) |= 8u;
  if (!google::protobuf::internal::empty_string_)
  {
    __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
  }

  v169 = uTF8String10;
  v170 = *(v153 + 64);
  if (v170 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  std::string::__assign_external(v170, v169);

  media8 = [(ICAttachment *)selfCopy media];
  filename3 = [media8 filename];
  pathExtension = [filename3 pathExtension];
  v174 = pathExtension == 0;

  if (!v174)
  {
    media9 = [(ICAttachment *)selfCopy media];
    filename4 = [media9 filename];
    pathExtension2 = [filename4 pathExtension];
    v178 = pathExtension2;
    uTF8String11 = [pathExtension2 UTF8String];
    *(v153 + 32) |= 2u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v180 = uTF8String11;
    v181 = *(v153 + 48);
    if (v181 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v181, v180);

LABEL_127:
  }

  media10 = [(ICAttachment *)selfCopy media];
  v191 = [media10 dataWithoutImageMarkupMetadata:metadataCopy];

  if (!v191)
  {
    v199 = os_log_create("com.apple.notes", "Archiving");
    if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
    {
      media11 = [(ICAttachment *)selfCopy media];
      ic_loggingIdentifier2 = [media11 ic_loggingIdentifier];
      [ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:ic_loggingIdentifier2 dataPersister:v324 stripImageMarkupMetadata:v199 error:media11];
    }

    goto LABEL_141;
  }

  if (!persisterCopy || (-[ICAttachment identifier](selfCopy, "identifier"), v192 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v192, @"media"], v193 = objc_claimAutoreleasedReturnValue(), v192, LOBYTE(v192) = objc_msgSend(persisterCopy, "saveData:identifier:", v191, v193), v193, (v192 & 1) == 0))
  {
    if (!([v191 length] >> 28))
    {
      v194 = v191;
      bytes6 = [v191 bytes];
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

      std::string::__assign_external(v198, bytes6, v197);
      goto LABEL_136;
    }

    v199 = os_log_create("com.apple.notes", "Archiving");
    if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
    {
      media12 = [(ICAttachment *)selfCopy media];
      ic_loggingIdentifier3 = [media12 ic_loggingIdentifier];
      v297 = [v191 length];
      *buf = 138412546;
      v326 = ic_loggingIdentifier3;
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
  metadataData = [(ICAttachment *)selfCopy metadataData];
  v203 = metadataData == 0;

  if (!v203)
  {
    metadataData2 = [(ICAttachment *)selfCopy metadataData];
    v205 = metadataData2;
    bytes7 = [metadataData2 bytes];
    metadataData3 = [(ICAttachment *)selfCopy metadataData];
    v208 = [metadataData3 length];
    *(archive + 9) |= 2u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v209 = v208;
    v210 = *(archive + 38);
    if (v210 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v210, bytes7, v209);
  }

  linkPresentationArchivedMetadata = [(ICAttachment *)selfCopy linkPresentationArchivedMetadata];
  v212 = linkPresentationArchivedMetadata == 0;

  if (!v212)
  {
    linkPresentationArchivedMetadata2 = [(ICAttachment *)selfCopy linkPresentationArchivedMetadata];
    v214 = linkPresentationArchivedMetadata2;
    bytes8 = [linkPresentationArchivedMetadata2 bytes];
    linkPresentationArchivedMetadata3 = [(ICAttachment *)selfCopy linkPresentationArchivedMetadata];
    v217 = [linkPresentationArchivedMetadata3 length];
    *(archive + 9) |= 0x10u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v218 = v217;
    v219 = *(archive + 41);
    if (v219 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v219, bytes8, v218);
  }

  v318 = 0u;
  v319 = 0u;
  v316 = 0u;
  v317 = 0u;
  obj = [(ICAttachment *)selfCopy previewImages];
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
        v225 = *(archive + 31);
        v226 = *(archive + 30);
        if (v226 >= v225)
        {
          if (v225 == *(archive + 32))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 112, v225 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::PreviewImage>::New();
        }

        v227 = *(archive + 14);
        *(archive + 30) = v226 + 1;
        v228 = *(v227 + 8 * v226);
        identifier5 = [(ICAttachment *)selfCopy identifier];
        v221 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_previewImage_%lu", identifier5, v221];

        [(ICAttachment *)selfCopy savePreview:v224 toArchive:v228 previewDataIdentifier:v221 dataPersister:persisterCopy];
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
  subAttachments = [(ICAttachment *)selfCopy subAttachments];
  v232 = [subAttachments countByEnumeratingWithState:&v312 objects:v322 count:16];
  if (v232)
  {
    v233 = *v313;
    do
    {
      for (j = 0; j != v232; ++j)
      {
        if (*v313 != v233)
        {
          objc_enumerationMutation(subAttachments);
        }

        v235 = *(*(&v312 + 1) + 8 * j);
        if (([v235 markedForDeletion] & 1) == 0)
        {
          v236 = objc_autoreleasePoolPush();
          v237 = *(archive + 55);
          v238 = *(archive + 54);
          if (v238 >= v237)
          {
            if (v237 == *(archive + 56))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 208, v237 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
          }

          v239 = *(archive + 26);
          *(archive + 54) = v238 + 1;
          v240 = *(v239 + 8 * v238);
          v311 = 0;
          v241 = [v235 saveToArchive:v240 dataPersister:persisterCopy stripImageMarkupMetadata:metadataCopy error:&v311];
          v242 = v311;
          objc_autoreleasePoolPop(v236);
          v301 = v241;
          if (error && v242)
          {
            v243 = v242;
            *error = v242;
          }
        }
      }

      v232 = [subAttachments countByEnumeratingWithState:&v312 objects:v322 count:16];
    }

    while (v232);
  }

  v244 = objc_alloc_init(MEMORY[0x277CBEB58]);
  visibleInlineAttachments = [(ICAttachment *)selfCopy visibleInlineAttachments];
  allObjects = [visibleInlineAttachments allObjects];
  [v244 ic_addObjectsFromNonNilArray:allObjects];

  allObjects2 = [v298 allObjects];
  [v244 ic_addObjectsFromNonNilArray:allObjects2];

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
        v253 = *(archive + 86);
        v254 = *(archive + 87);
        if (v253 >= v254)
        {
          if (v254 == *(archive + 88))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 336, v254 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<topotext::Attachment>::New();
        }

        v255 = *(archive + 42);
        *(archive + 86) = v253 + 1;
        v256 = *(v255 + 8 * v253);
        v306 = 0;
        [v252 saveToArchive:v256 dataPersister:persisterCopy error:&v306];
        v257 = v306;
        if (error && v257)
        {
          v257 = v257;
          *error = v257;
        }
      }

      v249 = [v248 countByEnumeratingWithState:&v307 objects:v321 count:16];
    }

    while (v249);
  }

  objc_opt_class();
  attachmentModel2 = [(ICAttachment *)selfCopy attachmentModel];
  v259 = ICDynamicCast();

  if (v259)
  {
    v260 = [v259 archivePaperBundleToDiskWithError:error];
    v261 = v260;
    if (!v260)
    {
      goto LABEL_207;
    }

    v262 = MEMORY[0x277CBEA90];
    path = [v260 path];
    v264 = [v262 dataWithContentsOfFile:path];

    if (v264)
    {
      if (!persisterCopy || (-[ICAttachment identifier](selfCopy, "identifier"), v265 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v265, @"systemPaperBundle"], v266 = objc_claimAutoreleasedReturnValue(), v265, LOBYTE(v265) = objc_msgSend(persisterCopy, "saveData:identifier:", v264, v266), v266, (v265 & 1) == 0))
      {
        v267 = v264;
        bytes9 = [v264 bytes];
        v269 = [v264 length];
        *(archive + 9) |= 0x40u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v270 = v269;
        v271 = *(archive + 45);
        if (v271 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        std::string::__assign_external(v271, bytes9, v270);
      }
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v261 error:0];

    if (!v264)
    {
LABEL_207:
      v273 = os_log_create("com.apple.notes", "Archiving");
      if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
      {
        ic_loggingIdentifier4 = [(ICCloudSyncingObject *)selfCopy ic_loggingIdentifier];
        paperBundleURL = [v259 paperBundleURL];
        [ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:ic_loggingIdentifier4 dataPersister:paperBundleURL stripImageMarkupMetadata:buf error:v273];
      }

      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICAttachment(ICAttachmentPersistenceAdditions) saveToArchive:dataPersister:stripImageMarkupMetadata:error:]" simulateCrash:1 showAlert:1 format:@"Failed to archive PaperKit bundle"];
      v301 = 0;
    }
  }

  synapseData = [(ICAttachment *)selfCopy synapseData];
  v277 = synapseData == 0;

  if (!v277)
  {
    synapseData2 = [(ICAttachment *)selfCopy synapseData];
    v279 = synapseData2;
    bytes10 = [synapseData2 bytes];
    synapseData3 = [(ICAttachment *)selfCopy synapseData];
    v282 = [synapseData3 length];
    *(archive + 9) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v283 = v282;
    v284 = *(archive + 46);
    if (v284 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v284, bytes10, v283);
  }

  mergeablePreferredViewSize = [(ICAttachment *)selfCopy mergeablePreferredViewSize];
  v286 = mergeablePreferredViewSize == 0;

  if (!v286)
  {
    mergeablePreferredViewSize2 = [(ICAttachment *)selfCopy mergeablePreferredViewSize];
    v288 = mergeablePreferredViewSize2;
    bytes11 = [mergeablePreferredViewSize2 bytes];
    mergeablePreferredViewSize3 = [(ICAttachment *)selfCopy mergeablePreferredViewSize];
    v291 = [mergeablePreferredViewSize3 length];
    *(archive + 9) |= 0x200u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v292 = v291;
    v293 = *(archive + 48);
    if (v293 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v293, bytes11, v292);
  }

  return v301 & 1;
}

- (void)savePreview:(id)preview toArchive:(void *)archive previewDataIdentifier:(id)identifier dataPersister:(id)persister
{
  previewCopy = preview;
  identifierCopy = identifier;
  persisterCopy = persister;
  [previewCopy scale];
  *&v11 = v11;
  *(archive + 8) |= 1u;
  *(archive + 12) = LODWORD(v11);
  scaleWhenDrawing = [previewCopy scaleWhenDrawing];
  *(archive + 8) |= 2u;
  *(archive + 52) = scaleWhenDrawing;
  appearanceType = [previewCopy appearanceType];
  *(archive + 8) |= 0x80u;
  *(archive + 17) = appearanceType;
  if (![previewCopy isPasswordProtected])
  {
    v15 = MEMORY[0x277CBEA90];
    previewImageURL = [previewCopy previewImageURL];
    decryptedImageData = [v15 dataWithContentsOfURL:previewImageURL];

    if (!decryptedImageData)
    {
      goto LABEL_13;
    }

LABEL_6:
    if (!persisterCopy || ([persisterCopy saveData:decryptedImageData identifier:identifierCopy] & 1) == 0)
    {
      bytes = [decryptedImageData bytes];
      v18 = [decryptedImageData length];
      *(archive + 8) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v19 = v18;
      v20 = *(archive + 5);
      if (v20 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::__assign_external(v20, bytes, v19);
    }

    goto LABEL_13;
  }

  if (![previewCopy isAuthenticated])
  {
    decryptedImageData = 0;
    goto LABEL_13;
  }

  decryptedImageData = [previewCopy decryptedImageData];
  if (decryptedImageData)
  {
    goto LABEL_6;
  }

LABEL_13:
  metadata = [previewCopy metadata];

  if (metadata)
  {
    metadata2 = [previewCopy metadata];
    bytes2 = [metadata2 bytes];
    metadata3 = [previewCopy metadata];
    v25 = [metadata3 length];
    *(archive + 8) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v26 = v25;
    v27 = *(archive + 7);
    if (v27 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::__assign_external(v27, bytes2, v26);
  }

  if ([previewCopy version])
  {
    version = [previewCopy version];
    *(archive + 8) |= 0x10u;
    *(archive + 16) = version;
  }

  if ([previewCopy versionOutOfDate])
  {
    *(archive + 8) |= 0x20u;
    *(archive + 53) = 1;
  }

  v29 = [previewCopy intrinsicNotesVersionForScenario:1];
  if (v29)
  {
    *(archive + 8) |= 0x40u;
    *(archive + 9) = v29;
  }
}

- (unint64_t)approximateArchiveSizeIncludingPreviews:(BOOL)previews
{
  previewsCopy = previews;
  v48 = *MEMORY[0x277D85DE8];
  mergeableData = [(ICAttachment *)self mergeableData];

  if (mergeableData)
  {
    mergeableData2 = [(ICAttachment *)self mergeableData];
    mergeableData = [mergeableData2 length];
  }

  media = [(ICAttachment *)self media];
  if (media && (-[ICAttachment media](self, "media"), v7 = objc_claimAutoreleasedReturnValue(), [v7 identifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, media, v8))
  {
    selfCopy5 = self;
    if (![(ICAttachment *)self fileSize])
    {
      attachmentModel = [(ICAttachment *)self attachmentModel];
      [attachmentModel updateFileBasedAttributes];

      selfCopy5 = self;
    }

    if ([(ICAttachment *)selfCopy5 fileSize])
    {
      mergeableData += [(ICAttachment *)selfCopy5 fileSize];
    }

    else if ([(ICAttachment *)selfCopy5 attachmentType]== 3)
    {
      [(ICAttachment *)selfCopy5 sizeWidth];
      v32 = v31;
      [(ICAttachment *)selfCopy5 sizeHeight];
      mergeableData = (mergeableData + v32 * v33 * 4.0);
    }
  }

  else
  {
    selfCopy5 = self;
  }

  if (previewsCopy)
  {
    previewImages = [(ICAttachment *)selfCopy5 previewImages];
    v12 = [previewImages count];

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
              mergeableData += [v20 unsignedIntegerValue];
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

      selfCopy5 = self;
    }

    else
    {
      selfCopy5 = self;
      if ([(ICAttachment *)self attachmentType]== 9)
      {
        +[ICDrawing defaultPixelSize];
        mergeableData = (mergeableData + v23 * v24);
      }
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  subAttachments = [(ICAttachment *)selfCopy5 subAttachments];
  v26 = [subAttachments countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v26)
  {
    v27 = *v37;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(subAttachments);
        }

        v29 = *(*(&v36 + 1) + 8 * j);
        if ([v29 isVisible])
        {
          mergeableData += [v29 approximateArchiveSizeIncludingPreviews:previewsCopy];
        }
      }

      v26 = [subAttachments countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v26);
  }

  return mergeableData;
}

- (id)synapseBasedMetadata
{
  synapseData = [(ICAttachment *)self synapseData];

  if (synapseData)
  {
    v4 = objc_alloc(MEMORY[0x277D6B790]);
    synapseData2 = [(ICAttachment *)self synapseData];
    v13 = 0;
    v6 = [v4 initWithData:synapseData2 error:&v13];
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
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ICAttachment_SearchLinkPresentation__quotedText__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

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

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  stateCopy = state;
  dCopy = d;
  recordCopy = record;
  LOBYTE(approach) = [(ICAttachment *)self mergeCloudKitRecord:recordCopy accountID:dCopy approach:approach mergeableFieldState:stateCopy newAttachment:[(ICAttachment *)self needsInitialFetchFromCloud]];

  return approach;
}

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state newAttachment:(BOOL)attachment
{
  recordCopy = record;
  dCopy = d;
  stateCopy = state;
  v171.receiver = self;
  v171.super_class = ICAttachment;
  v15 = [(ICCloudSyncingObject *)&v171 mergeCloudKitRecord:recordCopy accountID:dCopy approach:approach mergeableFieldState:stateCopy];
  if (v15)
  {
    managedObjectContext = [(ICAttachment *)self managedObjectContext];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [(ICAttachment *)self setIdentifier:recordName];

    v19 = [recordCopy objectForKeyedSubscript:@"UTI"];
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      encryptedValues = [recordCopy encryptedValues];
      v23 = [encryptedValues objectForKeyedSubscript:@"UTIEncrypted"];

      if (!v23 || ([v23 ic_stringValue], v20 = objc_claimAutoreleasedReturnValue(), v23, !v20))
      {
        v168 = 0;
        goto LABEL_11;
      }
    }

    typeUTI = [(ICAttachment *)self typeUTI];
    if ([v20 isEqual:typeUTI])
    {
      v168 = 0;
    }

    else
    {
      v168 = [v20 isEqual:@"com.apple.notes.gallery"];
    }

    [(ICAttachment *)self setTypeUTI:v20 resetToIntrinsicNotesVersion:0];
LABEL_11:
    v24 = [objc_opt_class() noteFromAttachmentRecord:recordCopy accountID:dCopy context:managedObjectContext];
    if (v24)
    {
      [(ICAttachment *)self setNote:v24];
      note = [(ICAttachment *)self note];
      [note addAttachmentsObject:self];
    }

    v26 = [(ICAttachment *)self parentAttachmentFromRecord:recordCopy accountID:dCopy context:managedObjectContext];
    if (v26)
    {
      [(ICAttachment *)self setParentAttachment:v26];
    }

    v169 = v26;
    attachmentModel = [(ICAttachment *)self attachmentModel];
    [attachmentModel mergeMergeableDataFromCloudKitRecord:recordCopy approach:approach mergeableFieldState:stateCopy];

    if (approach)
    {
      goto LABEL_113;
    }

    if (attachment || [(ICAttachment *)self attachmentType]!= 9)
    {
      v28 = [recordCopy objectForKeyedSubscript:@"OriginX"];

      if (v28)
      {
        v29 = [recordCopy objectForKeyedSubscript:@"OriginX"];
        [v29 doubleValue];
        [(ICAttachment *)self setOriginX:?];
      }

      v30 = [recordCopy objectForKeyedSubscript:@"OriginY"];

      if (v30)
      {
        v31 = [recordCopy objectForKeyedSubscript:@"OriginY"];
        [v31 doubleValue];
        [(ICAttachment *)self setOriginY:?];
      }

      v32 = [recordCopy objectForKeyedSubscript:@"Width"];

      if (v32)
      {
        v33 = [recordCopy objectForKeyedSubscript:@"Width"];
        [v33 doubleValue];
        [(ICAttachment *)self setSizeWidth:?];
      }

      v34 = [recordCopy objectForKeyedSubscript:@"Height"];

      if (v34)
      {
        v35 = [recordCopy objectForKeyedSubscript:@"Height"];
        [v35 doubleValue];
        [(ICAttachment *)self setSizeHeight:?];
      }

      v36 = [recordCopy objectForKeyedSubscript:@"Orientation"];

      if (v36)
      {
        v37 = [recordCopy objectForKeyedSubscript:@"Orientation"];
        -[ICAttachment setOrientation:](self, "setOrientation:", [v37 integerValue]);
      }
    }

    encryptedValues2 = [recordCopy encryptedValues];
    v39 = [encryptedValues2 objectForKeyedSubscript:@"URLStringEncrypted"];

    v160 = v39;
    v161 = v24;
    if (v39)
    {
      ic_stringValue = [v39 ic_stringValue];
      v41 = [ic_stringValue ic_substringToIndex:2047];
      [(ICAttachment *)self setUrlString:v41];
    }

    else
    {
      v42 = [recordCopy objectForKeyedSubscript:@"URLString"];

      if (!v42)
      {
        goto LABEL_33;
      }

      objc_opt_class();
      ic_stringValue = [recordCopy objectForKeyedSubscript:@"URLString"];
      v41 = ICDynamicCast();
      v43 = [v41 ic_substringToIndex:2047];
      [(ICAttachment *)self setUrlString:v43];
    }

LABEL_33:
    encryptedValues3 = [recordCopy encryptedValues];
    v45 = [encryptedValues3 objectForKeyedSubscript:@"TitleEncrypted"];

    if (v45)
    {
      ic_stringValue2 = [v45 ic_stringValue];
    }

    else
    {
      v47 = [recordCopy objectForKeyedSubscript:@"Title"];

      if (!v47)
      {
        goto LABEL_38;
      }

      ic_stringValue2 = [recordCopy objectForKeyedSubscript:@"Title"];
    }

    v48 = ic_stringValue2;
    [(ICAttachment *)self setTitle:ic_stringValue2];

LABEL_38:
    v159 = v45;
    encryptedValues4 = [recordCopy encryptedValues];
    v50 = [encryptedValues4 objectForKeyedSubscript:@"UserTitle"];

    v158 = v50;
    ic_stringValue3 = [v50 ic_stringValue];
    [(ICAttachment *)self setUserTitle:ic_stringValue3];

    v52 = [recordCopy objectForKeyedSubscript:@"ImageFilterType"];

    if (v52)
    {
      v53 = [recordCopy objectForKeyedSubscript:@"ImageFilterType"];
      -[ICAttachment setImageFilterType:](self, "setImageFilterType:", [v53 integerValue]);
    }

    v54 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"HandwritingSummary"];
    v55 = [recordCopy objectForKeyedSubscript:@"HandwritingSummaryVersion"];
    intValue = [v55 intValue];

    v167 = v54;
    if (v54)
    {
      handwritingSummary = [(ICAttachment *)self handwritingSummary];
      if (!handwritingSummary || (v58 = handwritingSummary, v59 = [(ICAttachment *)self handwritingSummaryVersion], v58, v59 <= intValue))
      {
        ic_stringValue4 = [v167 ic_stringValue];
        [(ICAttachment *)self setHandwritingSummary:ic_stringValue4];

        [(ICAttachment *)self setHandwritingSummaryVersion:intValue];
      }
    }

    v61 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"ImageClassificationSummary"];
    v62 = [recordCopy objectForKeyedSubscript:@"ImageClassificationSummaryVersion"];
    intValue2 = [v62 intValue];

    v166 = v61;
    if (v61)
    {
      imageClassificationSummary = [(ICAttachment *)self imageClassificationSummary];
      if (!imageClassificationSummary || (v65 = imageClassificationSummary, v66 = [(ICAttachment *)self imageClassificationSummaryVersion], v65, v66 <= intValue2))
      {
        ic_stringValue5 = [v166 ic_stringValue];
        [(ICAttachment *)self setImageClassificationSummary:ic_stringValue5];

        [(ICAttachment *)self setImageClassificationSummaryVersion:intValue2];
      }
    }

    v68 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"OcrSummary"];
    v69 = [recordCopy objectForKeyedSubscript:@"OcrSummaryVersion"];
    intValue3 = [v69 intValue];

    v165 = v68;
    if (v68)
    {
      ocrSummary = [(ICAttachment *)self ocrSummary];
      if (!ocrSummary || (v72 = ocrSummary, v73 = [(ICAttachment *)self ocrSummaryVersion], v72, v73 <= intValue3))
      {
        ic_stringValue6 = [v165 ic_stringValue];
        [(ICAttachment *)self setOcrSummary:ic_stringValue6];

        v75 = [recordCopy objectForKeyedSubscript:@"OcrSummaryVersion"];
        -[ICAttachment setOcrSummaryVersion:](self, "setOcrSummaryVersion:", [v75 intValue]);
      }
    }

    handwritingSummary2 = [(ICAttachment *)self handwritingSummary];
    if (handwritingSummary2 || ([(ICAttachment *)self imageClassificationSummary], (handwritingSummary2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v77 = handwritingSummary2;
    }

    else
    {
      ocrSummary2 = [(ICAttachment *)self ocrSummary];

      if (ocrSummary2)
      {
LABEL_56:
        encryptedValues5 = [recordCopy encryptedValues];
        v79 = [encryptedValues5 objectForKeyedSubscript:@"MarkupModelData"];

        v157 = v79;
        [(ICAttachment *)self setMarkupModelData:v79];
        v80 = [recordCopy objectForKeyedSubscript:@"FileSize"];

        if (v80)
        {
          v81 = [recordCopy objectForKeyedSubscript:@"FileSize"];
          -[ICAttachment setFileSize:](self, "setFileSize:", [v81 integerValue]);
        }

        v82 = [recordCopy objectForKeyedSubscript:@"HasMarkupData"];

        if (v82)
        {
          v83 = [recordCopy objectForKeyedSubscript:@"HasMarkupData"];
          -[ICAttachment setHasMarkupData:](self, "setHasMarkupData:", [v83 BOOLValue]);
        }

        v84 = [recordCopy objectForKeyedSubscript:@"Duration"];

        if (v84)
        {
          v85 = [recordCopy objectForKeyedSubscript:@"Duration"];
          [v85 doubleValue];
          [(ICAttachment *)self setDuration:?];
        }

        v86 = [recordCopy objectForKeyedSubscript:@"CreationDate"];

        if (v86)
        {
          v87 = [recordCopy objectForKeyedSubscript:@"CreationDate"];
          [(ICAttachment *)self setCreationDate:v87];
        }

        v88 = [recordCopy objectForKeyedSubscript:@"LastModificationDate"];

        v162 = managedObjectContext;
        if (v88)
        {
          v89 = [recordCopy objectForKeyedSubscript:@"LastModificationDate"];
          modificationDate = [(ICCloudSyncingObject *)self modificationDate];
          v91 = [v89 laterDate:modificationDate];
          [(ICAttachment *)self setModificationDate:v91];

          creationDate = [(ICCloudSyncingObject *)self creationDate];
          if (!creationDate || (v93 = creationDate, -[ICCloudSyncingObject creationDate](self, "creationDate"), v94 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x277CBEAA8] distantPast], v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v94, "isEqual:", v95), v95, v94, v93, v96))
          {
            modificationDate2 = [(ICCloudSyncingObject *)self modificationDate];
            [(ICAttachment *)self setCreationDate:modificationDate2];
          }
        }

        v98 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomLeftX"];

        if (v98)
        {
          v99 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomLeftX"];
          [v99 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomLeftX:?];
        }

        v100 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomLeftY"];

        if (v100)
        {
          v101 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomLeftY"];
          [v101 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomLeftY:?];
        }

        v102 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomRightX"];

        if (v102)
        {
          v103 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomRightX"];
          [v103 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomRightX:?];
        }

        v104 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomRightY"];

        if (v104)
        {
          v105 = [recordCopy objectForKeyedSubscript:@"CroppingQuadBottomRightY"];
          [v105 doubleValue];
          [(ICAttachment *)self setCroppingQuadBottomRightY:?];
        }

        v106 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopLeftX"];

        if (v106)
        {
          v107 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopLeftX"];
          [v107 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopLeftX:?];
        }

        v108 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopLeftY"];

        if (v108)
        {
          v109 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopLeftY"];
          [v109 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopLeftY:?];
        }

        v110 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopRightX"];

        if (v110)
        {
          v111 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopRightX"];
          [v111 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopRightX:?];
        }

        v112 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopRightY"];

        if (v112)
        {
          v113 = [recordCopy objectForKeyedSubscript:@"CroppingQuadTopRightY"];
          [v113 doubleValue];
          [(ICAttachment *)self setCroppingQuadTopRightY:?];
        }

        encryptedValues6 = [recordCopy encryptedValues];
        v115 = [encryptedValues6 objectForKeyedSubscript:@"MetadataData"];

        if (v115)
        {
          [(ICAttachment *)self setMetadataData:v115];
        }

        [(ICAttachment *)self setHasPaperForm:0];
        [(ICAttachment *)self setDidRunPaperFormDetection:0];
        encryptedValues7 = [recordCopy encryptedValues];
        v117 = [encryptedValues7 objectForKeyedSubscript:@"PlacemarkEncrypted"];

        v163 = v15;
        v155 = v117;
        v156 = v115;
        if (v117)
        {
          v118 = v117;
        }

        else
        {
          v132 = [recordCopy objectForKeyedSubscript:@"Placemark"];

          if (!v132 || ([recordCopy objectForKeyedSubscript:@"Placemark"], (v118 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v153 = 0;
LABEL_99:
            v133 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:{@"LinkPresentationMetadata", v153}];
            if (v133)
            {
              [(ICAttachment *)self setLinkPresentationArchivedMetadata:v133];
            }

            v164 = stateCopy;
            v134 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"SynapseData"];
            if (v134)
            {
              [(ICAttachment *)self setSynapseData:v134];
            }

            v135 = [recordCopy objectForKeyedSubscript:@"Media"];
            v136 = v135;
            if (v135)
            {
              recordID2 = [v135 recordID];
              recordName2 = [recordID2 recordName];

              managedObjectContext2 = [(ICAttachment *)self managedObjectContext];
              v140 = [ICMedia mediaWithIdentifier:recordName2 context:managedObjectContext2];

              if (!v140)
              {
                v140 = [ICMedia newMediaWithAttachment:self];
                [v140 setIdentifier:recordName2];
                [v140 setNeedsInitialFetchFromCloud:1];
              }

              [(ICAttachment *)self setMedia:v140];
            }

            [(ICAttachment *)self updatePreviewsFromRecord:recordCopy];
            [(ICAttachment *)self mergeFallbackImageAndPDFFromRecord:recordCopy];
            [(ICAttachment *)self mergePaperBundleFromRecord:recordCopy];
            systemPaperModel = [(ICAttachment *)self systemPaperModel];
            [systemPaperModel fixupMetadataAndMinimumSupportedNotesVersion];

            if (v168 && ([(ICAttachment *)self markedForDeletion]& 1) == 0)
            {
              defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
              [defaultCenter postNotificationName:@"ICAttachmentDidCreateGalleryFromCloudNotification" object:self];
            }

            [(ICAttachment *)self fixMarkedForDeletionForScannedDocuments];
            markedForDeletion = [(ICAttachment *)self markedForDeletion];
            media = [(ICAttachment *)self media];
            markedForDeletion2 = [media markedForDeletion];

            LOBYTE(v15) = v163;
            if (markedForDeletion != markedForDeletion2)
            {
              markedForDeletion3 = [(ICAttachment *)self markedForDeletion];
              media2 = [(ICAttachment *)self media];
              [media2 setMarkedForDeletion:markedForDeletion3];
            }

            stateCopy = v164;
            v24 = v161;
            managedObjectContext = v162;
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

        location = [(ICAttachment *)self location];

        if (!location)
        {
          location2 = [v123 location];
          [location2 coordinate];
          v127 = v126;
          location3 = [v123 location];
          [location3 coordinate];
          v129 = [(ICAttachment *)self addLocationWithLatitude:v127 longitude:?];
        }

        location4 = [(ICAttachment *)self location];
        [location4 setPlacemark:v123];

        location5 = [(ICAttachment *)self location];
        [location5 setPlaceUpdated:1];

        goto LABEL_99;
      }

      encryptedValues8 = [recordCopy encryptedValues];
      v77 = [encryptedValues8 objectForKeyedSubscript:@"SummaryEncrypted"];

      if (v77)
      {
        [v77 ic_stringValue];
      }

      else
      {
        [recordCopy objectForKeyedSubscript:@"Summary"];
      }
      v152 = ;
      [(ICAttachment *)self setSummary:v152];
    }

    goto LABEL_56;
  }

LABEL_114:

  return v15;
}

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  v165 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v162.receiver = self;
  v162.super_class = ICAttachment;
  v7 = [(ICCloudSyncingObject *)&v162 makeCloudKitRecordForApproach:approach mergeableFieldState:stateCopy];
  if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
  {
    attachmentModel = [(ICAttachment *)self attachmentModel];
    [attachmentModel addMergeableDataToCloudKitRecord:v7 approach:approach mergeableFieldState:stateCopy];
  }

  typeUTI = [(ICAttachment *)self typeUTI];

  if (typeUTI)
  {
    typeUTI2 = [(ICAttachment *)self typeUTI];
    v11 = [typeUTI2 dataUsingEncoding:4];
    encryptedValues = [v7 encryptedValues];
    [encryptedValues setObject:v11 forKeyedSubscript:@"UTIEncrypted"];

    typeUTI3 = [(ICAttachment *)self typeUTI];
    [v7 setObject:typeUTI3 forKeyedSubscript:@"UTI"];
  }

  else
  {
    typeUTI3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(typeUTI3, OS_LOG_TYPE_DEFAULT))
    {
      loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
      *buf = 138412290;
      v164 = loggingDescription;
      _os_log_impl(&dword_214D51000, typeUTI3, OS_LOG_TYPE_DEFAULT, "Trying to create a record for an attachment that is of an unknown type: %@", buf, 0xCu);
    }
  }

  note = [(ICAttachment *)self note];
  recordID = [note recordID];

  parentAttachment = [(ICAttachment *)self parentAttachment];
  recordID2 = [parentAttachment recordID];

  v19 = MEMORY[0x277CBC070];
  if (recordID)
  {
    v20 = objc_alloc(MEMORY[0x277CBC620]);
    if (recordID2)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v19;
    }

    v22 = [v20 initWithRecordID:recordID action:v21];
    [v7 setObject:v22 forKeyedSubscript:@"Note"];
  }

  if (recordID2)
  {
    v23 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:recordID2 action:*v19];
    [v7 setObject:v23 forKeyedSubscript:@"ParentAttachment"];
  }

  if (!approach)
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
      urlString = [(ICAttachment *)self urlString];

      if (urlString)
      {
        urlString2 = [(ICAttachment *)self urlString];
        v41 = [urlString2 ic_substringToIndex:2047];
        v42 = [v41 dataUsingEncoding:4];
        [v7 encryptedValues];
        v43 = recordID2;
        v44 = recordID;
        v45 = stateCopy;
        v47 = v46 = v19;
        [v47 setObject:v42 forKeyedSubscript:@"URLStringEncrypted"];

        v19 = v46;
        stateCopy = v45;
        recordID = v44;
        recordID2 = v43;

        v24 = 0x277CCA000;
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      title = [(ICAttachment *)self title];

      if (title)
      {
        title2 = [(ICAttachment *)self title];
        v50 = [title2 dataUsingEncoding:4];
        encryptedValues2 = [v7 encryptedValues];
        [encryptedValues2 setObject:v50 forKeyedSubscript:@"TitleEncrypted"];

        v24 = 0x277CCA000uLL;
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      handwritingSummary = [(ICAttachment *)self handwritingSummary];

      if (handwritingSummary)
      {
        handwritingSummary2 = [(ICAttachment *)self handwritingSummary];
        v54 = [handwritingSummary2 dataUsingEncoding:4];

        [v7 ic_setEncryptedInlineableDataAsset:v54 forKeyPrefix:@"HandwritingSummary" approach:0 withObject:self];
      }
    }

    v55 = [*(v24 + 2992) numberWithShort:{-[ICAttachment handwritingSummaryVersion](self, "handwritingSummaryVersion")}];
    [v7 setObject:v55 forKeyedSubscript:@"HandwritingSummaryVersion"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      imageClassificationSummary = [(ICAttachment *)self imageClassificationSummary];

      if (imageClassificationSummary)
      {
        imageClassificationSummary2 = [(ICAttachment *)self imageClassificationSummary];
        v58 = [imageClassificationSummary2 dataUsingEncoding:4];

        [v7 ic_setEncryptedInlineableDataAsset:v58 forKeyPrefix:@"ImageClassificationSummary" approach:0 withObject:self];
      }
    }

    v59 = [*(v24 + 2992) numberWithShort:{-[ICAttachment imageClassificationSummaryVersion](self, "imageClassificationSummaryVersion")}];
    [v7 setObject:v59 forKeyedSubscript:@"ImageClassificationSummaryVersion"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      ocrSummary = [(ICAttachment *)self ocrSummary];

      if (ocrSummary)
      {
        ocrSummary2 = [(ICAttachment *)self ocrSummary];
        v62 = [ocrSummary2 dataUsingEncoding:4];

        [v7 ic_setEncryptedInlineableDataAsset:v62 forKeyPrefix:@"OcrSummary" approach:0 withObject:self];
      }
    }

    v63 = [*(v24 + 2992) numberWithShort:{-[ICAttachment ocrSummaryVersion](self, "ocrSummaryVersion")}];
    [v7 setObject:v63 forKeyedSubscript:@"OcrSummaryVersion"];

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      summary = [(ICAttachment *)self summary];

      if (summary)
      {
        summary2 = [(ICAttachment *)self summary];
        v66 = [summary2 ic_substringToIndex:999];

        v67 = [v66 dataUsingEncoding:4];
        encryptedValues3 = [v7 encryptedValues];
        [encryptedValues3 setObject:v67 forKeyedSubscript:@"SummaryEncrypted"];

        v24 = 0x277CCA000;
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      userTitle = [(ICAttachment *)self userTitle];
      v70 = [userTitle dataUsingEncoding:4];
      encryptedValues4 = [v7 encryptedValues];
      [encryptedValues4 setObject:v70 forKeyedSubscript:@"UserTitle"];

      v24 = 0x277CCA000uLL;
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      markupModelData = [(ICAttachment *)self markupModelData];

      if (markupModelData)
      {
        markupModelData2 = [(ICAttachment *)self markupModelData];
        encryptedValues5 = [v7 encryptedValues];
        [encryptedValues5 setObject:markupModelData2 forKeyedSubscript:@"MarkupModelData"];
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
      managedObjectContext = [(ICAttachment *)self managedObjectContext];
      v81 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"PreviewImage" inRecord:v7 forObject:self context:managedObjectContext];

      if (v81)
      {
        attachmentModel2 = [(ICAttachment *)self attachmentModel];
        asset = [attachmentModel2 asset];

        v84 = [asset previewImageDataWithUTType:*MEMORY[0x277CE1DC0]];
        v85 = [objc_opt_class() assetForData:v84];
        [v7 setObject:v85 forKeyedSubscript:@"PreviewImage"];

        v24 = 0x277CCA000uLL;
      }
    }

    previewUpdateDate = [(ICAttachment *)self previewUpdateDate];

    if (previewUpdateDate)
    {
      previewUpdateDate2 = [(ICAttachment *)self previewUpdateDate];
      [v7 setObject:previewUpdateDate2 forKeyedSubscript:@"PreviewUpdateDate"];
    }

    creationDate = [(ICCloudSyncingObject *)self creationDate];

    if (creationDate)
    {
      creationDate2 = [(ICCloudSyncingObject *)self creationDate];
      [v7 setObject:creationDate2 forKeyedSubscript:@"CreationDate"];
    }

    modificationDate = [(ICCloudSyncingObject *)self modificationDate];

    if (modificationDate)
    {
      modificationDate2 = [(ICCloudSyncingObject *)self modificationDate];
      [v7 setObject:modificationDate2 forKeyedSubscript:@"LastModificationDate"];
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
      metadataData = [(ICAttachment *)self metadataData];

      if (metadataData)
      {
        metadataData2 = [(ICAttachment *)self metadataData];
        encryptedValues6 = [v7 encryptedValues];
        [encryptedValues6 setObject:metadataData2 forKeyedSubscript:@"MetadataData"];
      }
    }

    location = [(ICAttachment *)self location];
    placemark = [location placemark];

    if (placemark)
    {
      v160 = recordID;
      v113 = stateCopy;
      v114 = v19;
      v115 = MEMORY[0x277CCAAB0];
      location2 = [(ICAttachment *)self location];
      placemark2 = [location2 placemark];
      v161 = 0;
      v118 = [v115 archivedDataWithRootObject:placemark2 requiringSecureCoding:1 error:&v161];
      v119 = v161;

      if (v119)
      {
        v120 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          [ICAttachment(CloudKit) makeCloudKitRecordForApproach:v119 mergeableFieldState:?];
        }
      }

      encryptedValues7 = [v7 encryptedValues];
      [encryptedValues7 setObject:v118 forKeyedSubscript:@"PlacemarkEncrypted"];

      location3 = [(ICAttachment *)self location];
      formattedAddressWithoutAttachmentTitle = [location3 formattedAddressWithoutAttachmentTitle];

      if (formattedAddressWithoutAttachmentTitle)
      {
        v124 = [formattedAddressWithoutAttachmentTitle dataUsingEncoding:4];
        encryptedValues8 = [v7 encryptedValues];
        [encryptedValues8 setObject:v124 forKeyedSubscript:@"SummaryEncrypted"];
      }

      v19 = v114;
      stateCopy = v113;
      recordID = v160;
    }

    media = [(ICAttachment *)self media];
    recordID3 = [media recordID];

    if (recordID3)
    {
      media2 = [(ICAttachment *)self media];
      hasFile = [media2 hasFile];

      if (hasFile)
      {
        v130 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:recordID3 action:*v19];
        [v7 setObject:v130 forKeyedSubscript:@"Media"];
      }
    }

    previewImages = [(ICAttachment *)self previewImages];
    v132 = [previewImages count];

    if (v132)
    {
      v133 = objc_opt_class();
      previewImages2 = [(ICAttachment *)self previewImages];
      [v133 addPreviewImages:previewImages2 toRecord:v7];
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
        managedObjectContext2 = [(ICAttachment *)self managedObjectContext];
        v137 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"FallbackImage" inRecord:v7 forObject:self context:managedObjectContext2];

        if (v137)
        {
          v138 = [ICCloudSyncingObject assetForURL:v135];
          [v7 setObject:v138 forKeyedSubscript:@"FallbackImage"];
          fallbackImageCryptoTag = [(ICAttachment *)self fallbackImageCryptoTag];
          [v7 setObject:fallbackImageCryptoTag forKeyedSubscript:@"FallbackImageCryptoTag"];

          fallbackImageCryptoInitializationVector = [(ICAttachment *)self fallbackImageCryptoInitializationVector];
          [v7 setObject:fallbackImageCryptoInitializationVector forKeyedSubscript:@"FallbackImageCryptoInitializationVector"];
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
        fallbackPDFCryptoTag = [(ICAttachment *)self fallbackPDFCryptoTag];
        [v7 setObject:fallbackPDFCryptoTag forKeyedSubscript:@"FallbackPDFCryptoTag"];

        fallbackPDFCryptoInitializationVector = [(ICAttachment *)self fallbackPDFCryptoInitializationVector];
        [v7 setObject:fallbackPDFCryptoInitializationVector forKeyedSubscript:@"FallbackPDFCryptoInitializationVector"];
      }
    }

    fallbackTitle = [(ICAttachment *)self fallbackTitle];
    if (fallbackTitle)
    {
      localizedFallbackTitle = fallbackTitle;
    }

    else
    {
      attachmentModel3 = [(ICAttachment *)self attachmentModel];
      localizedFallbackTitle = [attachmentModel3 localizedFallbackTitle];

      if (!localizedFallbackTitle)
      {
        goto LABEL_99;
      }
    }

    [v7 setObject:localizedFallbackTitle forKeyedSubscript:@"FallbackTitle"];

LABEL_99:
    fallbackSubtitleIOS = [(ICAttachment *)self fallbackSubtitleIOS];
    if (fallbackSubtitleIOS)
    {
      localizedFallbackSubtitleIOS = fallbackSubtitleIOS;
    }

    else
    {
      attachmentModel4 = [(ICAttachment *)self attachmentModel];
      localizedFallbackSubtitleIOS = [attachmentModel4 localizedFallbackSubtitleIOS];

      if (!localizedFallbackSubtitleIOS)
      {
        goto LABEL_103;
      }
    }

    [v7 setObject:localizedFallbackSubtitleIOS forKeyedSubscript:@"FallbackSubtitleIOS"];

LABEL_103:
    fallbackSubtitleMac = [(ICAttachment *)self fallbackSubtitleMac];
    if (fallbackSubtitleMac)
    {
      localizedFallbackSubtitleMac = fallbackSubtitleMac;
    }

    else
    {
      attachmentModel5 = [(ICAttachment *)self attachmentModel];
      localizedFallbackSubtitleMac = [attachmentModel5 localizedFallbackSubtitleMac];

      if (!localizedFallbackSubtitleMac)
      {
        goto LABEL_107;
      }
    }

    [v7 setObject:localizedFallbackSubtitleMac forKeyedSubscript:@"FallbackSubtitleMac"];

LABEL_107:
    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      linkPresentationArchivedMetadata = [(ICAttachment *)self linkPresentationArchivedMetadata];

      if (linkPresentationArchivedMetadata)
      {
        linkPresentationArchivedMetadata2 = [(ICAttachment *)self linkPresentationArchivedMetadata];
        [v7 ic_setEncryptedInlineableDataAsset:linkPresentationArchivedMetadata2 forKeyPrefix:@"LinkPresentationMetadata" approach:0 withObject:self];
      }
    }

    if (([(ICAttachment *)self isPasswordProtected]& 1) == 0)
    {
      synapseData = [(ICAttachment *)self synapseData];

      if (synapseData)
      {
        synapseData2 = [(ICAttachment *)self synapseData];
        [v7 ic_setEncryptedInlineableDataAsset:synapseData2 forKeyPrefix:@"SynapseData" approach:0 withObject:self];
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

+ (id)existingCloudObjectForRecordID:(id)d accountID:(id)iD context:(id)context
{
  contextCopy = context;
  recordName = [d recordName];
  v8 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:recordName context:contextCopy];

  return v8;
}

- (id)parentAttachmentFromRecord:(id)record accountID:(id)d context:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  v11 = [recordCopy objectForKeyedSubscript:@"ParentAttachment"];
  v12 = v11;
  if (v11)
  {
    recordID = [v11 recordID];
    v14 = [ICAttachment existingCloudObjectForRecordID:recordID accountID:dCopy context:contextCopy];

    if (!v14)
    {
      v15 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        className = [(ICAttachment *)self className];
        recordID2 = [recordCopy recordID];
        recordName = [recordID2 recordName];
        recordID3 = [v12 recordID];
        recordName2 = [recordID3 recordName];
        *buf = 138412802;
        v26 = className;
        v27 = 2112;
        v28 = recordName;
        v29 = 2112;
        v30 = recordName2;
        _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a parent attachment (%@) that we don't know about yet", buf, 0x20u);
      }

      recordID4 = [v12 recordID];
      recordName3 = [recordID4 recordName];
      note = [(ICAttachment *)self note];
      v14 = [(ICBaseAttachment *)ICAttachment newAttachmentWithIdentifier:recordName3 note:note];

      [v14 setNeedsInitialFetchFromCloud:1];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)noteFromAttachmentUserSpecificRecord:(id)record accountID:(id)d context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  v10 = [recordCopy objectForKeyedSubscript:@"NoteUUID"];
  if ([v10 length])
  {
    v11 = [ICNote noteWithIdentifier:v10 context:contextCopy];
    if (!v11)
    {
      v12 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        recordID = [recordCopy recordID];
        recordName = [recordID recordName];
        v18 = 138412802;
        v19 = recordName;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = dCopy;
        _os_log_debug_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEBUG, "Found a user-specific attachment record (%@) for a note (%@) in account (%@) that we haven't seen yet", &v18, 0x20u);
      }

      v13 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:contextCopy];
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

+ (id)noteFromAttachmentRecord:(id)record accountID:(id)d context:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  v11 = [recordCopy objectForKeyedSubscript:@"Note"];
  v12 = v11;
  if (v11)
  {
    recordID = [v11 recordID];
    v14 = [ICNote existingCloudObjectForRecordID:recordID accountID:dCopy context:contextCopy];

    if (v14)
    {
      goto LABEL_10;
    }

    v15 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      className = [self className];
      recordID2 = [recordCopy recordID];
      recordName = [recordID2 recordName];
      recordID3 = [v12 recordID];
      recordName2 = [recordID3 recordName];
      *buf = 138413058;
      v29 = className;
      v30 = 2112;
      v31 = recordName;
      v32 = 2112;
      v33 = recordName2;
      v34 = 2112;
      v35 = dCopy;
      _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Found an %@ (%@) from the cloud for a note (%@) that we don't know about yet in account ID %@", buf, 0x2Au);
    }

    v16 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:contextCopy];
    v14 = [ICNote newNoteWithoutIdentifierInAccount:v16];
    recordID4 = [v12 recordID];
    recordName3 = [recordID4 recordName];
    [v14 setIdentifier:recordName3];

    [v14 setNeedsInitialFetchFromCloud:1];
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      className2 = [self className];
      recordID5 = [recordCopy recordID];
      recordName4 = [recordID5 recordName];
      *buf = 138412802;
      v29 = className2;
      v30 = 2112;
      v31 = recordName4;
      v32 = 2112;
      v33 = dCopy;
      _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEFAULT, "Found an %@ (%@) in the cloud with no note in account ID %@", buf, 0x20u);
    }

    v14 = 0;
  }

LABEL_10:

  return v14;
}

+ (id)newCloudObjectForRecord:(id)record accountID:(id)d context:(id)context
{
  dCopy = d;
  recordCopy = record;
  v10 = [self noteFromAttachmentRecord:recordCopy accountID:dCopy context:context];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v13 = [v10 addAttachmentWithIdentifier:recordName];

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [v13 setModificationDate:distantPast];

  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  [v13 setCreationDate:distantPast2];

  [v13 mergeCloudKitRecord:recordCopy accountID:dCopy approach:0 mergeableFieldState:0 newAttachment:1];
  [v13 setServerRecord:recordCopy];

  [v13 setInCloud:1];
  [v13 clearChangeCountWithReason:@"Created attachment"];
  [v13 updateParentReferenceIfNecessary];
  v16 = [v13 ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];

  return v13;
}

- (BOOL)wantsUserSpecificRecord
{
  mergeablePreferredViewSize = [(ICAttachment *)self mergeablePreferredViewSize];
  v3 = mergeablePreferredViewSize != 0;

  return v3;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach
{
  v13.receiver = self;
  v13.super_class = ICAttachment;
  v4 = [(ICCloudSyncingObject *)&v13 makeUserSpecificCloudKitRecordForApproach:approach];
  note = [(ICAttachment *)self note];
  recordID = [note recordID];

  if (recordID)
  {
    note2 = [(ICAttachment *)self note];
    recordID2 = [note2 recordID];
    recordName = [recordID2 recordName];
    [v4 setObject:recordName forKeyedSubscript:@"NoteUUID"];
  }

  mergeablePreferredViewSize = [(ICAttachment *)self mergeablePreferredViewSize];
  if (mergeablePreferredViewSize)
  {
    encryptedValues = [v4 encryptedValues];
    [encryptedValues setObject:mergeablePreferredViewSize forKeyedSubscript:@"MergeablePreferredViewSizeEncrypted"];
  }

  return v4;
}

- (BOOL)mergeDataFromUserSpecificRecord:(id)record accountID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = ICAttachment;
  v8 = [(ICCloudSyncingObject *)&v23 mergeDataFromUserSpecificRecord:recordCopy accountID:dCopy];
  if (v8)
  {
    note = [(ICAttachment *)self note];
    if (note)
    {
    }

    else
    {
      v16 = [recordCopy objectForKeyedSubscript:@"NoteUUID"];

      if (v16)
      {
        v17 = objc_opt_class();
        managedObjectContext = [(ICAttachment *)self managedObjectContext];
        v19 = [v17 noteFromAttachmentUserSpecificRecord:recordCopy accountID:dCopy context:managedObjectContext];
        [(ICAttachment *)self setNote:v19];

        note2 = [(ICAttachment *)self note];

        if (!note2)
        {
          [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.note" functionName:"-[ICAttachment(CloudKit) mergeDataFromUserSpecificRecord:accountID:]" simulateCrash:1 showAlert:0 format:@"Expected a note (existing or placeholder) to be created from user-specific record"];
        }
      }
    }

    encryptedValues = [recordCopy encryptedValues];
    v11 = [encryptedValues objectForKeyedSubscript:@"MergeablePreferredViewSizeEncrypted"];

    if (v11)
    {
      mergeablePreferredViewSize = [(ICAttachment *)self mergeablePreferredViewSize];
      if (mergeablePreferredViewSize)
      {
        v13 = [[ICTTMergeableWallClockValue alloc] initWithData:v11];
        v14 = [[ICTTMergeableWallClockValue alloc] initWithData:mergeablePreferredViewSize];
        if ([(ICTTMergeableWallClockValue *)v14 merge:v13]== 2)
        {
          serialize = [(ICTTMergeableWallClockValue *)v14 serialize];
          [(ICAttachment *)self setMergeablePreferredViewSize:serialize];
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ICAttachment_CloudKit__isInICloudAccount__block_invoke;
  v5[3] = &unk_278194D68;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
    parentAttachment = [(ICAttachment *)self parentAttachment];
    if (parentAttachment)
    {
      parentAttachment4 = parentAttachment;
      parentAttachment2 = [(ICAttachment *)self parentAttachment];
      if ([parentAttachment2 needsInitialFetchFromCloud])
      {
      }

      else
      {
        parentAttachment3 = [(ICAttachment *)self parentAttachment];
        markedForDeletion = [parentAttachment3 markedForDeletion];

        if (markedForDeletion)
        {
          return;
        }

        parentAttachment4 = [(ICAttachment *)self parentAttachment];
        [parentAttachment4 updateMarkedForDeletionStateAttachmentIsInUse:1];
      }
    }
  }
}

- (void)fixBrokenReferencesWithError:(id)error
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
    media = [(ICAttachment *)self media];
    loggingDescription2 = [media loggingDescription];
    note = [(ICAttachment *)self note];
    loggingDescription3 = [note loggingDescription];
    v65 = 138412802;
    v66 = loggingDescription;
    v67 = 2112;
    v68 = loggingDescription2;
    v69 = 2112;
    v70 = loggingDescription3;
    _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_DEFAULT, "Fixing broken references for attachment: %@\n\tMedia=%@\n\tNote=%@", &v65, 0x20u);
  }

  note2 = [(ICAttachment *)self note];
  needsInitialFetchFromCloud = [note2 needsInitialFetchFromCloud];

  if (needsInitialFetchFromCloud)
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(ICAttachment *)self identifier];
      note3 = [(ICAttachment *)self note];
      identifier2 = [note3 identifier];
      v65 = 138412546;
      v66 = identifier;
      v67 = 2112;
      v68 = identifier2;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_DEFAULT, "Tried to push an attachment (%@) for a note (%@) that we don't know about. Manually fetching note.", &v65, 0x16u);
    }

    note4 = [(ICAttachment *)self note];
    [note4 setNeedsToBeFetchedFromCloud:1];
  }

  else
  {
    note5 = [(ICAttachment *)self note];
    noteData = [note5 noteData];
    data = [noteData data];
    if (data)
    {
      v20 = data;
      note6 = [(ICAttachment *)self note];
      creationDate = [note6 creationDate];

      if (creationDate)
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
      identifier3 = [(ICAttachment *)self identifier];
      note7 = [(ICAttachment *)self note];
      identifier4 = [note7 identifier];
      v65 = 138412546;
      v66 = identifier3;
      v67 = 2112;
      v68 = identifier4;
      _os_log_impl(&dword_214D51000, v23, OS_LOG_TYPE_DEFAULT, "Tried to push an attachment (%@) for a note (%@) that no longer exists. Deleting attachment.", &v65, 0x16u);
    }

    [(ICAttachment *)self deleteFromLocalDatabase];
  }

LABEL_14:
  note8 = [(ICAttachment *)self note];
  markedForDeletion = [note8 markedForDeletion];

  if (markedForDeletion)
  {
    v29 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v65 = 138412290;
      v66 = shortLoggingDescription;
      _os_log_impl(&dword_214D51000, v29, OS_LOG_TYPE_DEFAULT, "Marking %@ for deletion because its note is deleted too", &v65, 0xCu);
    }

    [(ICAttachment *)self markForDeletion];
    media2 = [(ICAttachment *)self media];
    [media2 markForDeletion];
  }

  if ([(ICCloudSyncingObject *)self isInCloud])
  {
    note9 = [(ICAttachment *)self note];
    isInCloud = [note9 isInCloud];

    if ((isInCloud & 1) == 0)
    {
      v34 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        shortLoggingDescription2 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        note10 = [(ICAttachment *)self note];
        shortLoggingDescription3 = [note10 shortLoggingDescription];
        v65 = 138412546;
        v66 = shortLoggingDescription2;
        v67 = 2112;
        v68 = shortLoggingDescription3;
        _os_log_impl(&dword_214D51000, v34, OS_LOG_TYPE_DEFAULT, "We think %@ is in the cloud, but its parent %@ isn't. That's not possible, so let's try to fetch it.", &v65, 0x16u);
      }

      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
    }
  }

  note11 = [(ICAttachment *)self note];
  isInCloud2 = [note11 isInCloud];

  if ((isInCloud2 & 1) == 0)
  {
    v40 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      note12 = [(ICAttachment *)self note];
      identifier5 = [note12 identifier];
      v65 = 138412290;
      v66 = identifier5;
      _os_log_impl(&dword_214D51000, v40, OS_LOG_TYPE_DEFAULT, "Tried to push an attachment for note: (%@) which isn't yet in iCloud", &v65, 0xCu);
    }
  }

  note13 = [(ICAttachment *)self note];
  [note13 updateChangeCountWithReason:@"Fixed broken reference"];

  media3 = [(ICAttachment *)self media];

  if (media3)
  {
    media4 = [(ICAttachment *)self media];
    if ([media4 needsInitialFetchFromCloud])
    {
LABEL_31:

      goto LABEL_32;
    }

    media5 = [(ICAttachment *)self media];
    if ([media5 needsToBeFetchedFromCloud])
    {

      goto LABEL_31;
    }

    media6 = [(ICAttachment *)self media];
    hasFile = [media6 hasFile];

    if (hasFile)
    {
LABEL_32:
      media7 = [(ICAttachment *)self media];
      filename = [media7 filename];
      if (![filename length])
      {
        media8 = [(ICAttachment *)self media];
        identifier6 = [media8 identifier];
        v51 = [identifier6 length];

        if (!v51)
        {
LABEL_38:
          media9 = [(ICAttachment *)self media];
          [media9 updateChangeCountWithReason:@"Fixed broken reference"];

          return;
        }

        v52 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          media10 = [(ICAttachment *)self media];
          identifier7 = [media10 identifier];
          v65 = 138412290;
          v66 = identifier7;
          _os_log_impl(&dword_214D51000, v52, OS_LOG_TYPE_DEFAULT, "Empty filename for media, falling back on identifier (%@)", &v65, 0xCu);
        }

        media7 = [(ICAttachment *)self media];
        filename = [media7 identifier];
        media11 = [(ICAttachment *)self media];
        [media11 setFilename:filename];
      }

      goto LABEL_38;
    }

    v59 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      media12 = [(ICAttachment *)self media];
      identifier8 = [media12 identifier];
      note14 = [(ICAttachment *)self note];
      identifier9 = [note14 identifier];
      v65 = 138412546;
      v66 = identifier8;
      v67 = 2112;
      v68 = identifier9;
      _os_log_impl(&dword_214D51000, v59, OS_LOG_TYPE_DEFAULT, "Invalid media (%@) for a note (%@). Deleting media.", &v65, 0x16u);
    }

    media13 = [(ICAttachment *)self media];
    [media13 markForDeletion];

    [(ICAttachment *)self setMedia:0];
  }
}

- (BOOL)hasAllMandatoryFields
{
  v10.receiver = self;
  v10.super_class = ICAttachment;
  hasAllMandatoryFields = [(ICCloudSyncingObject *)&v10 hasAllMandatoryFields];
  typeUTI = [(ICAttachment *)self typeUTI];
  if (![typeUTI length])
  {
    hasAllMandatoryFields = 0;
  }

  note = [(ICAttachment *)self note];
  v6 = hasAllMandatoryFields & [note hasAllMandatoryFields];

  media = [(ICAttachment *)self media];

  if (media)
  {
    media2 = [(ICAttachment *)self media];
    v6 &= [media2 hasAllMandatoryFields];
  }

  return v6;
}

- (BOOL)needsToBePushedToCloud
{
  v7.receiver = self;
  v7.super_class = ICAttachment;
  needsToBePushedToCloud = [(ICCloudSyncingObject *)&v7 needsToBePushedToCloud];
  selfCopy = self;
  if (selfCopy && needsToBePushedToCloud)
  {
    do
    {
      v5 = selfCopy;
      needsToBePushedToCloud = [(ICAttachment *)selfCopy isBeingEditedLocallyOnDevice];
      selfCopy = [(ICAttachment *)selfCopy parentAttachment];
    }

    while (selfCopy && !needsToBePushedToCloud);
    LOBYTE(needsToBePushedToCloud) = needsToBePushedToCloud ^ 1;
  }

  return needsToBePushedToCloud;
}

- (id)objectsToBeDeletedBeforeThisObject
{
  v9.receiver = self;
  v9.super_class = ICAttachment;
  objectsToBeDeletedBeforeThisObject = [(ICCloudSyncingObject *)&v9 objectsToBeDeletedBeforeThisObject];
  v4 = [objectsToBeDeletedBeforeThisObject mutableCopy];

  subAttachments = [(ICAttachment *)self subAttachments];
  allObjects = [subAttachments allObjects];
  [v4 addObjectsFromArray:allObjects];

  v7 = [v4 copy];

  return v7;
}

- (void)updateParentReferenceIfNecessary
{
  v4.receiver = self;
  v4.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v4 updateParentReferenceIfNecessary];
  media = [(ICAttachment *)self media];
  [media updateParentReferenceIfNecessary];
}

- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force
{
  forceCopy = force;
  v11.receiver = self;
  v11.super_class = ICAttachment;
  recordCopy = record;
  [(ICCloudSyncingObject *)&v11 objectWasFetchedFromCloudWithRecord:recordCopy accountID:d force:forceCopy];
  v9 = [recordCopy objectForKeyedSubscript:{@"PreviewImages", v11.receiver, v11.super_class}];

  if (v9 && [v9 count])
  {
    v10 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
  }
}

- (id)descendantsNeedingOnDemandAssetFetchWithContext:(id)context shouldFetchObject:(id)object
{
  v39 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  objectCopy = object;
  v8 = [MEMORY[0x277CBEB58] set];
  if (contextCopy && objectCopy && (objectCopy[2](objectCopy, self, contextCopy) & 1) != 0)
  {
    media = [(ICAttachment *)self media];
    v10 = [media updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:contextCopy shouldFetchObject:objectCopy];
    allObjects = [v10 allObjects];
    [v8 ic_addObjectsFromNonNilArray:allObjects];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    subAttachments = [(ICAttachment *)self subAttachments];
    v13 = [subAttachments countByEnumeratingWithState:&v33 objects:v38 count:16];
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
            objc_enumerationMutation(subAttachments);
          }

          v17 = [*(*(&v33 + 1) + 8 * i) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:contextCopy shouldFetchObject:objectCopy];
          allObjects2 = [v17 allObjects];
          [v8 ic_addObjectsFromNonNilArray:allObjects2];
        }

        v14 = [subAttachments countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v14);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    inlineAttachments = [(ICAttachment *)self inlineAttachments];
    v20 = [inlineAttachments countByEnumeratingWithState:&v29 objects:v37 count:16];
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
            objc_enumerationMutation(inlineAttachments);
          }

          v24 = [*(*(&v29 + 1) + 8 * j) updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:contextCopy shouldFetchObject:objectCopy];
          allObjects3 = [v24 allObjects];
          [v8 ic_addObjectsFromNonNilArray:allObjects3];
        }

        v21 = [inlineAttachments countByEnumeratingWithState:&v29 objects:v37 count:16];
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
  selfCopy = self;
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  LOBYTE(selfCopy) = [ICAssetSignature hasLocallyStoredAssetsInObject:selfCopy context:managedObjectContext];

  return selfCopy;
}

+ (void)addPreviewImages:(id)images toRecord:(id)record
{
  v57 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  recordCopy = record;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = imagesCopy;
  v7 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (!v7)
  {
    v43 = 0;
    array7 = 0;
    goto LABEL_44;
  }

  v8 = v7;
  v43 = 0;
  array7 = 0;
  v10 = *v47;
  v36 = array;
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
        encryptedPreviewImageURL = [v12 encryptedPreviewImageURL];
        if (!array7)
        {
          array7 = [MEMORY[0x277CBEB18] array];
          array8 = [MEMORY[0x277CBEB18] array];

          v43 = array8;
        }
      }

      else
      {
        encryptedPreviewImageURL = [v12 previewImageURL];
      }

      if ([v12 shouldSyncToCloud])
      {
        v45 = 0;
        v15 = [encryptedPreviewImageURL checkResourceIsReachableAndReturnError:&v45];
        v16 = v45;
        v17 = v16;
        if (v15)
        {
          v18 = [ICCloudSyncingObject assetForURL:encryptedPreviewImageURL];
          if (v18)
          {
            [array addObject:v18];
            v19 = MEMORY[0x277CCABB0];
            [v12 width];
            v20 = [v19 numberWithDouble:?];
            [array2 addObject:v20];

            v21 = MEMORY[0x277CCABB0];
            [v12 height];
            v22 = [v21 numberWithDouble:?];
            [array3 addObject:v22];

            v23 = MEMORY[0x277CCABB0];
            [v12 scale];
            v24 = [v23 numberWithDouble:?];
            [array4 addObject:v24];

            v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "scaleWhenDrawing")}];
            [array5 addObject:v25];

            v26 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(v12, "appearanceType")}];
            [array6 addObject:v26];

            if ([v12 isPasswordProtected])
            {
              cryptoTag = [v12 cryptoTag];

              if (cryptoTag)
              {
                cryptoTag2 = [v12 cryptoTag];
                [array7 addObject:cryptoTag2];
                v10 = v37;
              }

              else
              {
                cryptoTag2 = os_log_create("com.apple.notes", "Cloud");
                v10 = v37;
                if (os_log_type_enabled(cryptoTag2, OS_LOG_TYPE_DEFAULT))
                {
                  identifier = [v12 identifier];
                  *buf = 138412290;
                  v51 = identifier;
                  _os_log_impl(&dword_214D51000, cryptoTag2, OS_LOG_TYPE_DEFAULT, "No cryptoTag for preview image %@", buf, 0xCu);
                }
              }

              cryptoInitializationVector = [v12 cryptoInitializationVector];

              if (cryptoInitializationVector)
              {
                cryptoInitializationVector2 = [v12 cryptoInitializationVector];
                [v43 addObject:cryptoInitializationVector2];
              }

              else
              {
                cryptoInitializationVector2 = os_log_create("com.apple.notes", "Cloud");
                if (os_log_type_enabled(cryptoInitializationVector2, OS_LOG_TYPE_DEFAULT))
                {
                  identifier2 = [v12 identifier];
                  *buf = 138412290;
                  v51 = identifier2;
                  _os_log_impl(&dword_214D51000, cryptoInitializationVector2, OS_LOG_TYPE_DEFAULT, "No cryptoInitializationVector for preview image %@", buf, 0xCu);
                }
              }

              array = v36;
              goto LABEL_35;
            }

            v10 = v37;
          }

          else
          {
            cryptoInitializationVector2 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(cryptoInitializationVector2, OS_LOG_TYPE_ERROR))
            {
              [(ICAttachment(CloudKit) *)v54 addPreviewImages:v12 toRecord:&v55, cryptoInitializationVector2];
            }

LABEL_35:
          }

          goto LABEL_37;
        }

        if (v16 && [v16 code] != 260)
        {
          cryptoInitializationVector2 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(cryptoInitializationVector2, OS_LOG_TYPE_ERROR))
          {
            identifier3 = [v12 identifier];
            *buf = 138412546;
            v51 = identifier3;
            v52 = 2112;
            v53 = v17;
            _os_log_error_impl(&dword_214D51000, cryptoInitializationVector2, OS_LOG_TYPE_ERROR, "Error checking if preview image (%@) exists: %@", buf, 0x16u);
LABEL_40:
          }
        }

        else
        {
          cryptoInitializationVector2 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(cryptoInitializationVector2, OS_LOG_TYPE_DEBUG))
          {
            identifier3 = [v12 identifier];
            *buf = 138412546;
            v51 = identifier3;
            v52 = 2112;
            v53 = encryptedPreviewImageURL;
            _os_log_debug_impl(&dword_214D51000, cryptoInitializationVector2, OS_LOG_TYPE_DEBUG, "Pushing an attachment with a preview image (%@) but nothing at the URL: %@", buf, 0x16u);
            goto LABEL_40;
          }
        }

        v18 = cryptoInitializationVector2;
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

  [recordCopy setObject:array forKeyedSubscript:@"PreviewImages"];
  [recordCopy setObject:array2 forKeyedSubscript:@"PreviewWidths"];
  [recordCopy setObject:array3 forKeyedSubscript:@"PreviewHeights"];
  [recordCopy setObject:array4 forKeyedSubscript:@"PreviewScales"];
  [recordCopy setObject:array5 forKeyedSubscript:@"PreviewScaleWhenDrawings"];
  [recordCopy setObject:array6 forKeyedSubscript:@"PreviewAppearances"];
  if (array7)
  {
    [recordCopy setObject:array7 forKeyedSubscript:@"PreviewCryptoTags"];
  }

  if (v43)
  {
    [recordCopy setObject:v43 forKeyedSubscript:@"PreviewCryptoInitializationVectors"];
  }
}

- (void)updatePreviewsFromRecord:(id)record
{
  v101 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  previewImages = [(ICAttachment *)self previewImages];
  v6 = [previewImages mutableCopy];

  if (!-[ICAttachment preferLocalPreviewImages](self, "preferLocalPreviewImages") || ![v6 count])
  {
    v7 = [recordCopy objectForKeyedSubscript:@"PreviewUpdateDate"];

    if (v7)
    {
      v8 = [recordCopy objectForKeyedSubscript:@"PreviewUpdateDate"];
      previewUpdateDate = [(ICAttachment *)self previewUpdateDate];
      v10 = [v8 laterDate:previewUpdateDate];
      [(ICAttachment *)self setPreviewUpdateDate:v10];
    }

    v11 = [recordCopy objectForKeyedSubscript:@"PreviewImages"];
    v88 = [recordCopy objectForKeyedSubscript:@"PreviewWidths"];
    v87 = [recordCopy objectForKeyedSubscript:@"PreviewHeights"];
    v86 = [recordCopy objectForKeyedSubscript:@"PreviewScales"];
    v85 = [recordCopy objectForKeyedSubscript:@"PreviewScaleWhenDrawings"];
    v81 = [recordCopy objectForKeyedSubscript:@"PreviewCryptoTags"];
    v80 = [recordCopy objectForKeyedSubscript:@"PreviewCryptoInitializationVectors"];
    v76 = recordCopy;
    v12 = [recordCopy objectForKeyedSubscript:@"PreviewAppearances"];
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
        bOOLValue = [v25 BOOLValue];

        if (v12 && [v12 count] > v14)
        {
          v27 = [v12 objectAtIndexedSubscript:v14];
          unsignedIntValue = [v27 unsignedIntValue];
        }

        else
        {
          unsignedIntValue = 0;
        }

        v29 = [v11 objectAtIndexedSubscript:{v14, v75}];
        fileURL = [v29 fileURL];
        if (!fileURL || (v31 = fileURL, [v29 fileURL], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "checkResourceIsReachableAndReturnError:", 0), v32, v11 = v83, v31, (v33 & 1) == 0))
        {
          identifier = [(ICAttachment *)self identifier];
          v34 = [ICAttachmentPreviewImage identifierForContentIdentifier:identifier scale:unsignedIntValue width:v24 height:v18 appearanceType:v21];

          managedObjectContext = [(ICAttachment *)self managedObjectContext];
          previewImageURL = [ICAttachmentPreviewImage attachmentPreviewImageWithIdentifier:v34 inContext:managedObjectContext];

          if (previewImageURL)
          {
            [v6 removeObject:previewImageURL];
          }

          goto LABEL_24;
        }

        v34 = [(ICAttachment *)self attachmentPreviewImageCreatingIfNecessaryWithWidth:unsignedIntValue height:bOOLValue scale:0 appearanceType:v18 scaleWhenDrawing:v21 metadata:v24];
        if (v34)
        {
          [v6 removeObject:v34];
        }

        if (([(ICAttachment *)self isPasswordProtected]& 1) != 0)
        {
          encryptedPreviewImageURL = [v34 encryptedPreviewImageURL];
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
          cryptoSalt = [(ICAttachment *)self cryptoSalt];
          [v34 setCryptoSalt:cryptoSalt];

          cryptoWrappedKey = [(ICAttachment *)self cryptoWrappedKey];
          [v34 setCryptoWrappedKey:cryptoWrappedKey];

          passwordHint = [(ICCloudSyncingObject *)self passwordHint];
          [v34 setPasswordHint:passwordHint];

          previewImageURL = encryptedPreviewImageURL;
          if (!v34)
          {
            goto LABEL_24;
          }
        }

        else
        {
          previewImageURL = [v34 previewImageURL];
          if (!v34)
          {
            goto LABEL_24;
          }
        }

        if (previewImageURL)
        {
          v82 = previewImageURL;
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

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v96 = 0;
          v48 = [defaultManager removeItemAtURL:v82 error:&v96];
          v49 = v96;
          v50 = v49;
          if (v48)
          {
LABEL_36:
          }

          else
          {
            code = [v49 code];

            if (code != 4)
            {
              defaultManager = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
              {
                *buf = v75;
                v100 = v50;
                _os_log_error_impl(&dword_214D51000, defaultManager, OS_LOG_TYPE_ERROR, "Error removing old preview image URL: %@", buf, 0xCu);
              }

              goto LABEL_36;
            }
          }

          v78 = v50;
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          fileURL2 = [v29 fileURL];
          v95 = 0;
          v54 = [defaultManager2 moveItemAtURL:fileURL2 toURL:v82 error:&v95];
          v55 = v95;

          if (v54)
          {
            v6 = v77;
            previewImageURL = v82;
          }

          else
          {
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            fileURL3 = [v29 fileURL];
            v94 = v55;
            v58 = [defaultManager3 linkItemAtURL:fileURL3 toURL:v82 error:&v94];
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

              defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
              fileURL4 = [v29 fileURL];
              v93 = v59;
              v63 = [defaultManager4 copyItemAtURL:fileURL4 toURL:v82 error:&v93];
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

            previewImageURL = v82;
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
            managedObjectContext2 = [(ICAttachment *)self managedObjectContext];
            [managedObjectContext2 deleteObject:v71];
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

    recordCopy = v76;
  }
}

- (BOOL)processFallbackAsset:(id)asset fallbackAssetType:(int64_t)type
{
  v46 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v9 = NSStringFromFallbackAssetType(type);
    *buf = 138413058;
    v39 = shortLoggingDescription;
    v40 = 2112;
    v42 = 2080;
    v41 = v9;
    v43 = "[ICAttachment(CloudKit) processFallbackAsset:fallbackAssetType:]";
    v44 = 1024;
    v45 = 1219;
    _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, "Processing fallback asset… {attachment: %@, type: %@}%s:%d", buf, 0x26u);
  }

  fileURL = [assetCopy fileURL];
  ic_isReachable = [fileURL ic_isReachable];

  if (ic_isReachable)
  {
    if (type == 1)
    {
      fallbackPDFGenerationManager = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
      beginGeneration = [fallbackPDFGenerationManager beginGeneration];

      fallbackPDFGenerationManager2 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
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
      if (type)
      {
        fallbackPDFGenerationManager2 = 0;
        v16 = 0;
        goto LABEL_23;
      }

      fallbackImageGenerationManager = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
      beginGeneration = [fallbackImageGenerationManager beginGeneration];

      fallbackPDFGenerationManager2 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
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
    if (beginGeneration)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      fileURL2 = [assetCopy fileURL];
      v37 = 0;
      v21 = [defaultManager moveItemAtURL:fileURL2 toURL:v16 error:&v37];
      v22 = v37;

      if (v21)
      {
LABEL_30:
        v32 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [ICAttachment(CloudKit) processFallbackAsset:v32 fallbackAssetType:?];
        }

        commitGeneration = [fallbackPDFGenerationManager2 commitGeneration];
        goto LABEL_33;
      }

      v23 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [ICAttachment(CloudKit) processFallbackAsset:fallbackAssetType:];
      }

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      fileURL3 = [assetCopy fileURL];
      v36 = v22;
      v26 = [defaultManager2 linkItemAtURL:fileURL3 toURL:v16 error:&v36];
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

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      fileURL4 = [assetCopy fileURL];
      v35 = v27;
      v31 = [defaultManager3 copyItemAtURL:fileURL4 toURL:v16 error:&v35];
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

      [fallbackPDFGenerationManager2 rollbackGeneration];
LABEL_26:
      commitGeneration = 0;
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

  commitGeneration = 0;
  fallbackPDFGenerationManager2 = v16;
LABEL_34:

  return commitGeneration;
}

- (void)mergeFallbackImageAndPDFFromRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy objectForKeyedSubscript:@"FallbackImage"];
  if (v4)
  {
    [(ICAttachment *)self processFallbackAsset:v4 fallbackAssetType:0];
  }

  v5 = [recordCopy objectForKeyedSubscript:@"FallbackPDF"];
  if (v5)
  {
    [(ICAttachment *)self processFallbackAsset:v5 fallbackAssetType:1];
  }

  v6 = [recordCopy objectForKeyedSubscript:@"FallbackImageCryptoTag"];
  [(ICAttachment *)self setFallbackImageCryptoTag:v6];

  v7 = [recordCopy objectForKeyedSubscript:@"FallbackImageCryptoInitializationVector"];
  [(ICAttachment *)self setFallbackImageCryptoInitializationVector:v7];

  v8 = [recordCopy objectForKeyedSubscript:@"FallbackPDFCryptoTag"];
  [(ICAttachment *)self setFallbackPDFCryptoTag:v8];

  v9 = [recordCopy objectForKeyedSubscript:@"FallbackPDFCryptoInitializationVector"];
  [(ICAttachment *)self setFallbackPDFCryptoInitializationVector:v9];

  v10 = [recordCopy objectForKeyedSubscript:@"FallbackTitle"];
  if (v10)
  {
    [(ICAttachment *)self setFallbackTitle:v10];
  }

  v11 = [recordCopy objectForKeyedSubscript:@"FallbackSubtitleIOS"];
  if (v11)
  {
    [(ICAttachment *)self setFallbackSubtitleIOS:v11];
  }

  v12 = [recordCopy objectForKeyedSubscript:@"FallbackSubtitleMac"];
  if (v12)
  {
    [(ICAttachment *)self setFallbackSubtitleMac:v12];
  }
}

- (void)addPaperBundleToRecordIfAppropriate:(id)appropriate
{
  appropriateCopy = appropriate;
  objc_opt_class();
  attachmentModel = [(ICAttachment *)self attachmentModel];
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [[_TtC11NotesShared21ICSystemPaperDocument alloc] initWithPaperAttachment:self];
    v7 = [(ICSystemPaperDocument *)v6 archiveBundleForSyncAndReturnError:0];
    managedObjectContext = [(ICAttachment *)self managedObjectContext];
    v9 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"PaperDatabase" inRecord:appropriateCopy forObject:self context:managedObjectContext];

    if (v9)
    {
      databaseArchive = [v7 databaseArchive];
      v11 = [ICCloudSyncingObject assetForTemporaryURL:databaseArchive];

      if (v11)
      {
        [appropriateCopy setObject:v11 forKeyedSubscript:@"PaperDatabase"];
      }
    }

    managedObjectContext2 = [(ICAttachment *)self managedObjectContext];
    v13 = [ICAssetSignature shouldWriteAssetIfNeededToKey:@"PaperAssets" inRecord:appropriateCopy forObject:self context:managedObjectContext2];

    if (v13)
    {
      assetArchives = [v7 assetArchives];
      v15 = [assetArchives ic_compactMap:&__block_literal_global_58];

      if (v15)
      {
        [appropriateCopy setObject:v15 forKeyedSubscript:@"PaperAssets"];
      }
    }
  }
}

- (void)mergePaperBundleFromRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  v5 = [recordCopy objectForKeyedSubscript:@"PaperDatabase"];
  v6 = ICDynamicCast();
  fileURL = [v6 fileURL];

  objc_opt_class();
  v8 = [recordCopy objectForKeyedSubscript:@"PaperAssets"];

  v9 = ICDynamicCast();
  v10 = [v9 ic_compactMap:&__block_literal_global_274];

  v11 = [[_TtC11NotesShared21ICSystemPaperDocument alloc] initWithPaperAttachment:self];
  if (fileURL)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [fileURL path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      v15 = [[ICSystemPaperSyncArchive alloc] initWithDatabaseArchive:fileURL assetArchives:v10];
      v19 = 0;
      v16 = [(ICSystemPaperDocument *)v11 writeNewVersionFromSyncArchive:v15 error:&v19];
      v17 = v19;
      if (v16)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"ICAttachmentDidMergePaperKitBundleNotification" object:self];
      }

      else
      {
        defaultCenter = os_log_create("com.apple.notes", "SystemPaper");
        if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_ERROR))
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

- (BOOL)hasUnfetchedAssetForRecordKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ICAttachment_CloudKit__hasUnfetchedAssetForRecordKey___block_invoke;
  v8[3] = &unk_2781961E0;
  v6 = keyCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [managedObjectContext performBlockAndWait:v8];

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
    note = [(ICAttachment *)self note];
    v4 = [note isPasswordProtected] ^ 1;
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
  linkPresentationArchivedMetadata = [(ICAttachment *)self linkPresentationArchivedMetadata];

  if (linkPresentationArchivedMetadata)
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

  note = [(ICAttachment *)self note];
  if (!note || ([(ICAttachment *)self markedForDeletion]& 1) != 0 || ([(ICAttachment *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    isUnsupported = 1;
  }

  else
  {
    note2 = [(ICAttachment *)self note];
    if (([note2 isHiddenFromSearch] & 1) != 0 || (-[ICAttachment isPasswordProtected](self, "isPasswordProtected") & 1) != 0 || -[ICAttachment isChildOfDocumentGallery](self, "isChildOfDocumentGallery") || -[ICAttachment attachmentType](self, "attachmentType") == 9 || -[ICAttachment attachmentType](self, "attachmentType") == 10 || -[ICAttachment attachmentType](self, "attachmentType") == 13)
    {
      isUnsupported = 1;
    }

    else if ([(ICAttachment *)self attachmentType]== 4)
    {
      parentAttachment = [(ICAttachment *)self parentAttachment];
      if (parentAttachment)
      {
        isUnsupported = 1;
      }

      else
      {
        isUnsupported = [(ICAttachment *)self isUnsupported];
      }
    }

    else
    {
      isUnsupported = [(ICAttachment *)self isUnsupported];
    }
  }

  return isUnsupported;
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
    note = [(ICAttachment *)self note];
    if (!note || ([(ICAttachment *)self markedForDeletion]& 1) != 0 || ([(ICAttachment *)self needsInitialFetchFromCloud]& 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      note2 = [(ICAttachment *)self note];
      if (([note2 isHiddenFromSearch] & 1) != 0 || !-[ICAttachment isTable](self, "isTable"))
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
  objectID = [(ICAttachment *)self objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];

  return absoluteString;
}

- (NSString)searchDomainIdentifier
{
  note = [(ICAttachment *)self note];
  account = [note account];
  identifier = [account identifier];

  return identifier;
}

- (CSSearchableItemAttributeSet)userActivityContentAttributeSet
{
  typeUTI = [(ICAttachment *)self typeUTI];
  v4 = [typeUTI copy];

  if (!v4 || ![(__CFString *)v4 length])
  {

    v4 = @"com.apple.notes.spotlightrecord";
  }

  v5 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:v4];
  modificationDate = [(ICCloudSyncingObject *)self modificationDate];
  [v5 setContentModificationDate:modificationDate];

  creationDate = [(ICCloudSyncingObject *)self creationDate];
  [v5 setContentCreationDate:creationDate];

  creationDate2 = [(ICCloudSyncingObject *)self creationDate];
  [v5 setAddedDate:creationDate2];

  return v5;
}

- (CSSearchableItemAttributeSet)searchableItemAttributeSet
{
  v39[1] = *MEMORY[0x277D85DE8];
  userActivityContentAttributeSet = [(ICAttachment *)self userActivityContentAttributeSet];
  title = [(ICAttachment *)self title];
  if (![title length])
  {
    media = [(ICAttachment *)self media];
    filename = [media filename];

    title = filename;
  }

  [userActivityContentAttributeSet setDisplayName:title];
  summary = [(ICAttachment *)self summary];
  v8 = [summary length];

  if (v8)
  {
    summary2 = [(ICAttachment *)self summary];
    [userActivityContentAttributeSet setContentDescription:summary2];
  }

  searchableTextContentWithoutTitle = [(ICAttachment *)self searchableTextContentWithoutTitle];
  v11 = searchableTextContentWithoutTitle;
  if (title)
  {
    v12 = [title stringByAppendingFormat:@" %@", searchableTextContentWithoutTitle];

    v11 = v12;
  }

  [userActivityContentAttributeSet setTextContent:v11];
  [userActivityContentAttributeSet setIc_searchResultType:1];
  typeUTI = [(ICAttachment *)self typeUTI];

  if (typeUTI)
  {
    v14 = MEMORY[0x277CE1CB8];
    typeUTI2 = [(ICAttachment *)self typeUTI];
    v16 = [v14 typeWithIdentifier:typeUTI2];
    supertypes = [v16 supertypes];
    v18 = [supertypes ic_map:&__block_literal_global_61];

    typeUTI3 = [(ICAttachment *)self typeUTI];
    v39[0] = typeUTI3;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    allObjects = [v18 allObjects];
    v22 = [v20 arrayByAddingObjectsFromArray:allObjects];

    if ([(ICAttachment *)self attachmentType]== 14)
    {
      identifier = [*MEMORY[0x277CE1E08] identifier];
      v24 = [v22 arrayByAddingObject:identifier];

      v22 = v24;
    }

    [userActivityContentAttributeSet setAttachmentTypes:v22];
  }

  [userActivityContentAttributeSet ic_populateValuesForSpecializedFields];
  attachmentModel = [(ICAttachment *)self attachmentModel];
  providerFileTypes = [attachmentModel providerFileTypes];
  [userActivityContentAttributeSet setProviderFileTypes:providerFileTypes];

  attachmentModel2 = [(ICAttachment *)self attachmentModel];
  providerDataTypes = [attachmentModel2 providerDataTypes];
  [userActivityContentAttributeSet setProviderDataTypes:providerDataTypes];

  [userActivityContentAttributeSet setDataOwnerType:&unk_282747DA8];
  if ([(ICCloudSyncingObject *)self isSharedViaICloud]&& ([(ICAttachment *)self attachmentType]== 7 || [(ICAttachment *)self attachmentType]== 8))
  {
    [(ICCloudSyncingObject *)self addEmailAddressesAndPhoneNumbersToAttributeSet:userActivityContentAttributeSet];
  }

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudSyncingObject isSharedViaICloud](self, "isSharedViaICloud")}];
  [userActivityContentAttributeSet setShared:v29];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAttachment isDeletedOrInTrash](self, "isDeletedOrInTrash")}];
  [userActivityContentAttributeSet setTrashed:v30];

  note = [(ICAttachment *)self note];
  objectID = [note objectID];
  uRIRepresentation = [objectID URIRepresentation];
  absoluteString = [uRIRepresentation absoluteString];
  [userActivityContentAttributeSet setIc_relatedModernNoteUniqueIdentifier:absoluteString];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICAttachment supportsPhotosProcessing](self, "supportsPhotosProcessing")}];
  [userActivityContentAttributeSet setEligibleForPhotosProcessing:v35];

  urlString = [(ICAttachment *)self urlString];

  if (urlString)
  {
    urlString2 = [(ICAttachment *)self urlString];
    [userActivityContentAttributeSet ic_setURLString:urlString2];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ICAttachment *)self associateAppEntityWithSearchableItemAttributeSet:userActivityContentAttributeSet];
  }

  return userActivityContentAttributeSet;
}

- (id)searchableTextContent
{
  array = [MEMORY[0x277CBEB18] array];
  title = [(ICAttachment *)self title];
  if (title)
  {
    [array addObject:title];
  }

  searchableTextContentWithoutTitle = [(ICAttachment *)self searchableTextContentWithoutTitle];
  [array addObject:searchableTextContentWithoutTitle];

  v6 = [array componentsJoinedByString:@" "];

  return v6;
}

- (id)searchableTextContentWithoutTitle
{
  array = [MEMORY[0x277CBEB18] array];
  urlString = [(ICAttachment *)self urlString];
  if (urlString && ![(ICAttachment *)self isMap])
  {
    [array addObject:urlString];
  }

  summary = [(ICAttachment *)self summary];
  if (summary)
  {
    [array addObject:summary];
  }

  attachmentModel = [(ICAttachment *)self attachmentModel];
  searchableTextContent = [attachmentModel searchableTextContent];

  if ([searchableTextContent length])
  {
    [array addObject:searchableTextContent];
  }

  v8 = [array componentsJoinedByString:@" "];

  return v8;
}

- (id)dataForTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__52;
  v16 = __Block_byref_object_dispose__52;
  v17 = 0;
  if ([identifierCopy isEqualToString:@"com.apple.notes.noteitemprovider"])
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(SearchIndexable) dataForTypeIdentifier:v5];
    }
  }

  else
  {
    managedObjectContext = [(ICAttachment *)self managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__ICAttachment_SearchIndexable__dataForTypeIdentifier___block_invoke;
    v9[3] = &unk_278195740;
    v11 = &v12;
    v9[4] = self;
    v10 = identifierCopy;
    [managedObjectContext performBlockAndWait:v9];
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

- (id)fileURLForTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__52;
  v16 = __Block_byref_object_dispose__52;
  v17 = 0;
  if ([identifierCopy isEqualToString:@"com.apple.notes.noteitemprovider"])
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(SearchIndexable) dataForTypeIdentifier:v5];
    }
  }

  else
  {
    managedObjectContext = [(ICAttachment *)self managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __58__ICAttachment_SearchIndexable__fileURLForTypeIdentifier___block_invoke;
    v9[3] = &unk_278195740;
    v11 = &v12;
    v9[4] = self;
    v10 = identifierCopy;
    [managedObjectContext performBlockAndWait:v9];
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
  identifier = [(ICAttachment *)self identifier];
  if (identifier)
  {
    note = [(ICAttachment *)self note];
    account = [note account];
    if (!account)
    {
LABEL_5:

      goto LABEL_6;
    }

    v6 = account;
    suppressesFileDeletion = [(ICAttachment *)self suppressesFileDeletion];

    if (!suppressesFileDeletion)
    {
      v8 = objc_opt_class();
      note = [MEMORY[0x277CBEB98] setWithObject:identifier];
      note2 = [(ICAttachment *)self note];
      account2 = [note2 account];
      [v8 purgeAttachmentFilesForIdentifiers:note account:account2];

      goto LABEL_5;
    }
  }

LABEL_6:
}

- (void)willRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  [(ICAttachmentModel *)self->_attachmentModel attachmentWillRefresh:?];
  v5.receiver = self;
  v5.super_class = ICAttachment;
  [(ICAttachment *)&v5 willRefresh:refreshCopy];
}

- (void)didRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  v5.receiver = self;
  v5.super_class = ICAttachment;
  [(ICAttachment *)&v5 didRefresh:?];
  [(ICAttachmentModel *)self->_attachmentModel attachmentDidRefresh:refreshCopy];
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario
{
  if (![(ICAttachment *)self isUnsupported]&& ![(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {
    typeUTI = [(ICAttachment *)self typeUTI];

    if (typeUTI)
    {
      typeUTI2 = [(ICAttachment *)self typeUTI];
      if (([typeUTI2 isEqualToString:@"com.apple.paper.doc"] & 1) == 0)
      {
        typeUTI3 = [(ICAttachment *)self typeUTI];
        if (![typeUTI3 isEqualToString:@"com.apple.paper.doc.pdf"])
        {
          typeUTI4 = [(ICAttachment *)self typeUTI];
          v15 = [typeUTI4 isEqualToString:@"com.apple.paper.doc.scan"];

          if ((v15 & 1) == 0)
          {
            typeUTI5 = [(ICAttachment *)self typeUTI];
            v17 = [typeUTI5 isEqualToString:@"com.apple.paper"];

            if (v17)
            {
              paperBundleModel = [(ICAttachment *)self paperBundleModel];
              paperHasNewInks2025 = [paperBundleModel paperHasNewInks2025];

              if (paperHasNewInks2025)
              {
                goto LABEL_9;
              }

              paperBundleModel2 = [(ICAttachment *)self paperBundleModel];
              paperHasMath = [paperBundleModel2 paperHasMath];

              if ((paperHasMath & 1) == 0)
              {
                systemPaperModel = [(ICAttachment *)self systemPaperModel];
                paperHasNewInksSpring2024 = [systemPaperModel paperHasNewInksSpring2024];

                if (paperHasNewInksSpring2024)
                {
                  v10 = 14;
                }

                else
                {
                  systemPaperModel2 = [(ICAttachment *)self systemPaperModel];
                  paperHasNewInks2023 = [systemPaperModel2 paperHasNewInks2023];

                  if (paperHasNewInks2023)
                  {
                    v10 = 13;
                  }

                  else
                  {
                    account = [(ICAttachment *)self account];
                    isDataSeparated = [account isDataSeparated];

                    if (isDataSeparated & 1) != 0 || (-[ICAttachment systemPaperModel](self, "systemPaperModel"), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 paperHasNewInks2022], v40, (v41))
                    {
                      v10 = 10;
                    }

                    else
                    {
                      systemPaperModel3 = [(ICAttachment *)self systemPaperModel];
                      paperHasEnhancedCanvas = [systemPaperModel3 paperHasEnhancedCanvas];

                      if (paperHasEnhancedCanvas)
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
              parentAttachment = [(ICAttachment *)self parentAttachment];
              if (!parentAttachment || (v27 = parentAttachment, [(ICAttachment *)self typeUTI], v28 = objc_claimAutoreleasedReturnValue(), v29 = [ICAttachment typeUTIIsPlayableAudio:v28], v28, v27, !v29))
              {
                if ([(ICAttachment *)self hasVisibleInlineAttachments])
                {
                  v10 = 6;
                }

                else
                {
                  typeUTI6 = [(ICAttachment *)self typeUTI];
                  v31 = [typeUTI6 isEqualToString:@"com.apple.drawing.2"];

                  if (v31)
                  {
                    v10 = 4;
                  }

                  else
                  {
                    typeUTI7 = [(ICAttachment *)self typeUTI];
                    v33 = [typeUTI7 isEqualToString:@"com.apple.drawing"];

                    if (v33)
                    {
                      v10 = 3;
                    }

                    else
                    {
                      typeUTI8 = [(ICAttachment *)self typeUTI];
                      v37 = [typeUTI8 isEqualToString:@"com.apple.notes.table"];

                      if (v37)
                      {
                        v10 = 2;
                      }

                      else
                      {
                        typeUTI9 = [(ICAttachment *)self typeUTI];
                        v43 = [typeUTI9 isEqualToString:@"com.apple.notes.gallery"];

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
          paperBundleModel3 = [(ICAttachment *)self paperBundleModel];
          paperHasNewInks20252 = [paperBundleModel3 paperHasNewInks2025];

          if (paperHasNewInks20252)
          {
LABEL_9:
            v10 = 17;
            goto LABEL_24;
          }

          paperBundleModel4 = [(ICAttachment *)self paperBundleModel];
          paperHasMath2 = [paperBundleModel4 paperHasMath];

          if ((paperHasMath2 & 1) == 0)
          {
            paperBundleModel5 = [(ICAttachment *)self paperBundleModel];
            paperHasNewInksSpring20242 = [paperBundleModel5 paperHasNewInksSpring2024];

            if (paperHasNewInksSpring20242)
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
          result = [(ICCloudSyncingObject *)&v46 intrinsicNotesVersionForScenario:scenario];
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

- (void)willUpdateDeviceReplicaIDsToNotesVersion:(int64_t)version
{
  v14 = *MEMORY[0x277D85DE8];
  if (version == 6)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    deviceReplicaIDs = [(ICCloudSyncingObject *)self deviceReplicaIDs];
    v5 = [deviceReplicaIDs countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(deviceReplicaIDs);
          }

          [(ICAttachmentModel *)self->_attachmentModel removeTimestampsForReplicaID:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [deviceReplicaIDs countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

+ (id)attachmentIdentifiersForAccount:(id)account
{
  accountCopy = account;
  v4 = [MEMORY[0x277CBEB98] set];
  managedObjectContext = [accountCopy managedObjectContext];
  v6 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"ICAttachment"];
  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.account == %@", accountCopy];
  [v6 setPredicate:accountCopy];

  [v6 setResultType:2];
  [v6 setPropertiesToFetch:&unk_2827480F0];
  v13 = 0;
  v8 = [managedObjectContext executeFetchRequest:v6 error:&v13];
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

+ (void)purgeAttachmentFilesForIdentifiers:(id)identifiers account:(id)account
{
  v51 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  accountCopy = account;
  v30 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = identifiersCopy;
  v34 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v34)
  {
    v31 = *v44;
    v32 = accountCopy;
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
        v10 = [ICAttachmentPaperBundleModel paperBundleURLForAttachmentIdentifier:v9 inAccount:accountCopy];
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
        array = [MEMORY[0x277CBEB18] array];
        v14 = [self fallbackImageFallbackURLForIdentifier:v9 account:accountCopy];
        [array ic_addNonNilObject:v14];

        v15 = [self fallbackImageEncryptedFallbackURLForIdentifier:v9 account:accountCopy];
        [array ic_addNonNilObject:v15];

        v16 = [self fallbackImageContainerURLForIdentifier:v9 account:accountCopy];
        [array ic_addNonNilObject:v16];

        v17 = [self fallbackPDFFallbackURLForIdentifier:v9 account:accountCopy];
        [array ic_addNonNilObject:v17];

        v18 = [self fallbackPDFEncryptedFallbackURLForIdentifier:v9 account:accountCopy];
        [array ic_addNonNilObject:v18];

        v19 = [self fallbackPDFContainerURLForIdentifier:v9 account:accountCopy];
        [array ic_addNonNilObject:v19];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v20 = [array copy];
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
              [defaultManager removeItemAtURL:v25 error:&v38];
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
        accountCopy = v32;
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

  urlString = [(ICAttachment *)self urlString];
  if (!urlString)
  {
    URL = self->_URL;
LABEL_2:
    v3 = URL;
    goto LABEL_5;
  }

  v6 = urlString;
  v3 = [MEMORY[0x277CBEBC0] URLWithString:urlString];

LABEL_5:

  return v3;
}

- (BOOL)hasDeepLink
{
  synapseData = [(ICAttachment *)self synapseData];
  if (synapseData)
  {
    hasDeepLink = 1;
  }

  else
  {
    attachmentModel = [(ICAttachment *)self attachmentModel];
    hasDeepLink = [attachmentModel hasDeepLink];
  }

  return hasDeepLink;
}

- (BOOL)isReadOnly
{
  note = [(ICAttachment *)self note];
  v4 = ([note isSharedReadOnly] & 1) != 0 || -[ICCloudSyncingObject isSharedReadOnly](self, "isSharedReadOnly");

  return v4;
}

- (BOOL)isFolder
{
  typeUTI = [(ICAttachment *)self typeUTI];
  if (typeUTI)
  {
    v4 = MEMORY[0x277CE1CB8];
    typeUTI2 = [(ICAttachment *)self typeUTI];
    v6 = [v4 typeWithIdentifier:typeUTI2];
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
  typeUTI = [(ICAttachment *)self typeUTI];
  if (typeUTI)
  {
    v4 = MEMORY[0x277CE1CB8];
    typeUTI2 = [(ICAttachment *)self typeUTI];
    v6 = [v4 typeWithIdentifier:typeUTI2];
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
  isURL = [(ICAttachment *)self isURL];
  if (isURL)
  {
    v4 = [(ICAttachment *)self URL];
    ic_isMapURL = [v4 ic_isMapURL];

    LOBYTE(isURL) = ic_isMapURL;
  }

  return isURL;
}

- (BOOL)isiTunes
{
  isURL = [(ICAttachment *)self isURL];
  if (isURL)
  {
    v4 = [(ICAttachment *)self URL];
    ic_isiTunesURL = [v4 ic_isiTunesURL];

    LOBYTE(isURL) = ic_isiTunesURL;
  }

  return isURL;
}

- (BOOL)isAppStore
{
  isURL = [(ICAttachment *)self isURL];
  if (isURL)
  {
    v4 = [(ICAttachment *)self URL];
    ic_isAppStoreURL = [v4 ic_isAppStoreURL];

    LOBYTE(isURL) = ic_isAppStoreURL;
  }

  return isURL;
}

- (BOOL)isPodcasts
{
  isURL = [(ICAttachment *)self isURL];
  if (isURL)
  {
    v4 = [(ICAttachment *)self URL];
    ic_isPodcastsURL = [v4 ic_isPodcastsURL];

    LOBYTE(isURL) = ic_isPodcastsURL;
  }

  return isURL;
}

- (BOOL)isNews
{
  isURL = [(ICAttachment *)self isURL];
  if (isURL)
  {
    v4 = [(ICAttachment *)self URL];
    ic_isNewsURL = [v4 ic_isNewsURL];

    LOBYTE(isURL) = ic_isNewsURL;
  }

  return isURL;
}

- (BOOL)isChildOfDocumentGallery
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__ICAttachment_isChildOfDocumentGallery__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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

  attachmentType = [(ICAttachment *)self attachmentType];
  result = 0;
  if (attachmentType <= 0xF)
  {
    if (((1 << attachmentType) & 0xCA74) != 0)
    {
      return 1;
    }

    else if (attachmentType == 3)
    {
      return ![(ICAttachment *)self isChildOfDocumentGallery];
    }
  }

  return result;
}

- (BOOL)previewsSupportMultipleAppearances
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  previewsSupportMultipleAppearances = [attachmentModel previewsSupportMultipleAppearances];

  return previewsSupportMultipleAppearances;
}

- (BOOL)preferLocalPreviewImages
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  preferLocalPreviewImages = [attachmentModel preferLocalPreviewImages];

  return preferLocalPreviewImages;
}

- (id)defaultTitle
{
  attachmentType = [(ICAttachment *)self attachmentType];
  v3 = objc_opt_class();

  return [v3 defaultTitleForAttachmentType:attachmentType];
}

- (void)setNote:(id)note
{
  noteCopy = note;
  note = [(ICAttachment *)self note];
  v6 = [note isEqual:noteCopy];

  if ((v6 & 1) == 0)
  {
    note2 = [(ICAttachment *)self note];
    if (note2)
    {
      v8 = note2;
      note3 = [(ICAttachment *)self note];
      account = [note3 account];
      account2 = [noteCopy account];

      if (account != account2)
      {
        account3 = [noteCopy account];
        [(ICAttachment *)self accountWillChangeToAccount:account3];
      }
    }

    [(ICAttachment *)self willChangeValueForKey:@"note"];
    [(ICAttachment *)self willChangeValueForKey:@"parentCloudObject"];
    [(ICAttachment *)self setPrimitiveValue:noteCopy forKey:@"note"];
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

- (void)setImageFilterType:(signed __int16)type
{
  typeCopy = type;
  if ([(ICAttachment *)self imageFilterType]!= type)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICAttachment *)self setCachedImage:0];
    }

    [(ICAttachment *)self invalidateAttachmentPreviewImages];
    [(ICAttachment *)self willChangeValueForKey:@"imageFilterType"];
    v5 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
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

- (void)setOrientation:(signed __int16)orientation
{
  orientationCopy = orientation;
  if ([(ICAttachment *)self orientation]!= orientation)
  {
    if (objc_opt_respondsToSelector())
    {
      [(ICAttachment *)self setCachedImage:0];
    }

    [(ICAttachment *)self invalidateAttachmentPreviewImages];
    [(ICAttachment *)self willChangeValueForKey:@"orientation"];
    v5 = [MEMORY[0x277CCABB0] numberWithShort:orientationCopy];
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  [(ICAttachment *)self setOriginX:bounds.origin.x];
  [(ICAttachment *)self setOriginY:y];
  [(ICAttachment *)self setSizeWidth:width];

  [(ICAttachment *)self setSizeHeight:height];
}

- (id)fileSizeString
{
  media = [(ICAttachment *)self media];
  mediaURL = [media mediaURL];
  if (mediaURL)
  {
    v5 = [MEMORY[0x277CCA8E8] stringFromByteCount:-[ICAttachment fileSize](self countStyle:{"fileSize"), 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setParentAttachment:(id)attachment
{
  v6.receiver = self;
  v6.super_class = ICAttachment;
  [(ICBaseAttachment *)&v6 setParentAttachment:attachment];
  typeUTI = [(ICAttachment *)self typeUTI];

  if (typeUTI)
  {
    typeUTI2 = [(ICAttachment *)self typeUTI];
    [(ICAttachment *)self updateAttachmentSectionWithTypeUTI:typeUTI2];
  }
}

- (void)updateAttachmentSectionWithTypeUTI:(id)i
{
  iCopy = i;
  parentAttachment = [(ICAttachment *)self parentAttachment];
  typeUTI = [parentAttachment typeUTI];

  if (!typeUTI || ([parentAttachment attachmentModel], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "sectionForSubAttachments"), v6, !v7))
  {
    attachmentModel = [parentAttachment attachmentModel];
    hidesSubAttachmentsInAttachmentBrowser = [attachmentModel hidesSubAttachmentsInAttachmentBrowser];

    if (hidesSubAttachmentsInAttachmentBrowser)
    {
      v7 = 0;
    }

    else
    {
      v10 = objc_opt_class();
      v11 = [(ICAttachment *)self URL];
      v7 = [v10 sectionFromTypeUTI:iCopy url:v11];
    }
  }

  if ([(ICAttachment *)self section]!= v7)
  {
    [(ICAttachment *)self setSection:v7];
  }
}

- (void)setTypeUTI:(id)i resetToIntrinsicNotesVersion:(BOOL)version
{
  versionCopy = version;
  v23 = *MEMORY[0x277D85DE8];
  iCopy = i;
  typeUTI = [(ICAttachment *)self typeUTI];
  v8 = [typeUTI isEqualToString:iCopy];

  if ((v8 & 1) == 0)
  {
    [(ICAttachment *)self willChangeValueForKey:@"typeUTI"];
    [(ICAttachment *)self setPrimitiveValue:iCopy forKey:@"typeUTI"];
    [(ICAttachment *)self updateAttachmentSectionWithTypeUTI:iCopy];
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
    subAttachments = [(ICAttachment *)self subAttachments];
    v12 = [subAttachments countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(subAttachments);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          typeUTI2 = [v16 typeUTI];
          [v16 updateAttachmentSectionWithTypeUTI:typeUTI2];
        }

        v13 = [subAttachments countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    if (versionCopy)
    {
      [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
    }
  }
}

+ (signed)sectionFromTypeUTI:(id)i url:(id)url
{
  iCopy = i;
  urlCopy = url;
  if (iCopy)
  {
    if ([ICAttachment typeUTIIsImage:iCopy]|| [ICAttachment typeUTIIsPlayableMovie:iCopy])
    {
      v7 = 1;
    }

    else if ([ICAttachment typeUTIIsPlayableAudio:iCopy])
    {
      v7 = 5;
    }

    else
    {
      v9 = [MEMORY[0x277CE1CB8] typeWithIdentifier:iCopy];
      v10 = [v9 conformsToType:*MEMORY[0x277CE1E90]];

      if (v10)
      {
        if ([urlCopy ic_isMapURL])
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }

      else if ([ICAttachment typeUTIIsDrawing:iCopy]|| [ICAttachment typeUTIIsInlineDrawing:iCopy]|| [ICAttachment typeUTIIsSystemPaper:iCopy])
      {
        v7 = 2;
      }

      else
      {
        v11 = [MEMORY[0x277CE1CB8] typeWithIdentifier:iCopy];
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

- (void)setUrlString:(id)string
{
  stringCopy = string;
  [(ICAttachment *)self willChangeValueForKey:@"urlString"];
  [(ICAttachment *)self willChangeValueForKey:@"URL"];
  URL = self->_URL;
  self->_URL = 0;

  [(ICCloudSyncingObject *)self setPrimitiveValue:stringCopy forEncryptableKey:@"urlString"];
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

- (void)updateMarkedForDeletionStateAttachmentIsInUse:(BOOL)use
{
  useCopy = use;
  typeUTI = [(ICAttachment *)self typeUTI];

  if (typeUTI)
  {
    attachmentModel = [(ICAttachment *)self attachmentModel];
    [attachmentModel updateAttachmentMarkedForDeletionStateAttachmentIsInUse:useCopy];
  }
}

- (BOOL)needsToBeRequested
{
  attachmentType = [(ICAttachment *)self attachmentType];
  LOBYTE(typeUTI) = 1;
  if (attachmentType > 0xD)
  {
    goto LABEL_14;
  }

  if (((1 << attachmentType) & 0x78) != 0)
  {
    media = [(ICAttachment *)self media];
    if (!media)
    {
LABEL_9:

      return typeUTI;
    }

LABEL_8:
    media2 = [(ICAttachment *)self media];
    LODWORD(typeUTI) = [media2 isValid] ^ 1;

    goto LABEL_9;
  }

  if (((1 << attachmentType) & 0x2A00) == 0)
  {
    if (((1 << attachmentType) & 0x180) != 0)
    {
      if (![(ICAttachment *)self hasSynapseLink])
      {
        urlString = [(ICAttachment *)self urlString];
        LOBYTE(typeUTI) = urlString == 0;

        return typeUTI;
      }

      goto LABEL_13;
    }

LABEL_14:
    if (!attachmentType)
    {
      return typeUTI;
    }

    typeUTI = [(ICAttachment *)self typeUTI];

    if (!typeUTI)
    {
      return typeUTI;
    }

    v8 = MEMORY[0x277CE1CB8];
    typeUTI2 = [(ICAttachment *)self typeUTI];
    v10 = [v8 typeWithIdentifier:typeUTI2];
    if (([v10 conformsToType:*MEMORY[0x277CE1D48]] & 1) == 0)
    {
      v11 = MEMORY[0x277CE1CB8];
      typeUTI3 = [(ICAttachment *)self typeUTI];
      v13 = [v11 typeWithIdentifier:typeUTI3];
      if (([v13 conformsToType:*MEMORY[0x277CE1D40]] & 1) == 0)
      {
        v14 = MEMORY[0x277CE1CB8];
        typeUTI4 = [(ICAttachment *)self typeUTI];
        v16 = [v14 typeWithIdentifier:typeUTI4];
        if (([v16 conformsToType:*MEMORY[0x277CE1D68]] & 1) == 0)
        {
          v18 = MEMORY[0x277CE1CB8];
          typeUTI5 = [(ICAttachment *)self typeUTI];
          v20 = [v18 typeWithIdentifier:typeUTI5];
          v21 = [v20 conformsToType:*MEMORY[0x277CE1D50]];

          if ((v21 & 1) == 0)
          {
LABEL_13:
            LOBYTE(typeUTI) = 0;
            return typeUTI;
          }

LABEL_22:
          media = [(ICAttachment *)self media];
          if (!media)
          {
            LOBYTE(typeUTI) = 1;
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
  note = [(ICAttachment *)self note];
  if (note)
  {
    rangeInNote = [(ICBaseAttachment *)self rangeInNote];
    v6 = v5;
    v7 = [note rangeForTitle:0];
    v9 = v8;
    v13.location = rangeInNote;
    v13.length = v6;
    v15.location = v7;
    v15.length = v9;
    if (NSIntersectionRange(v13, v15).length)
    {
      v10 = 1;
    }

    else
    {
      v16.location = [note rangeForSnippetWithTitleRange:{v7, v9}];
      v16.length = v11;
      v14.location = rangeInNote;
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

- (void)accountWillChangeToAccount:(id)account
{
  accountCopy = account;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__56;
  v15[4] = __Block_byref_object_dispose__56;
  v16 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  media = [(ICAttachment *)self media];
  [media accountWillChangeToAccount:accountCopy];

  previewImages = [(ICAttachment *)self previewImages];
  v8 = [previewImages copy];
  [v8 makeObjectsPerformSelector:sel_accountWillChangeToAccount_ withObject:accountCopy];

  identifier = [(ICAttachment *)self identifier];

  if (accountCopy && identifier)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__ICAttachment_accountWillChangeToAccount___block_invoke;
    v11[3] = &unk_278199D78;
    v11[4] = self;
    v12 = accountCopy;
    v13 = defaultManager;
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

+ (id)filenameExtensionForUTI:(id)i
{
  if (i)
  {
    v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:?];
    preferredFilenameExtension = [v3 preferredFilenameExtension];
  }

  else
  {
    preferredFilenameExtension = 0;
  }

  return preferredFilenameExtension;
}

+ (id)filenameFromUTI:(id)i
{
  iCopy = i;
  if ([ICAttachment typeUTIIsImage:iCopy])
  {
    selfCopy6 = self;
    v6 = 3;
LABEL_14:
    localizedDescription = [selfCopy6 defaultTitleForAttachmentType:v6];
    goto LABEL_15;
  }

  if ([ICAttachment typeUTIIsPlayableAudio:iCopy])
  {
    selfCopy6 = self;
    v6 = 4;
    goto LABEL_14;
  }

  if ([ICAttachment typeUTIIsPlayableMovie:iCopy])
  {
    selfCopy6 = self;
    v6 = 5;
    goto LABEL_14;
  }

  if (iCopy)
  {
    v7 = [MEMORY[0x277CE1CB8] typeWithIdentifier:iCopy];
    v8 = [v7 conformsToType:*MEMORY[0x277CE1E08]];

    if (v8)
    {
      selfCopy6 = self;
      v6 = 6;
      goto LABEL_14;
    }

    if ([ICAttachment typeUTIIsDrawing:iCopy])
    {
LABEL_13:
      selfCopy6 = self;
      v6 = 9;
      goto LABEL_14;
    }

    v15 = [MEMORY[0x277CE1CB8] typeWithIdentifier:iCopy];
    v16 = [v15 conformsToType:*MEMORY[0x277CE1E90]];

    if (v16)
    {
      selfCopy6 = self;
      v6 = 8;
      goto LABEL_14;
    }

    v17 = [MEMORY[0x277CE1CB8] typeWithIdentifier:iCopy];
    localizedDescription = [v17 localizedDescription];
  }

  else
  {
    localizedDescription = 0;
    if ([ICAttachment typeUTIIsDrawing:0])
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  if (![localizedDescription length])
  {
    v10 = [self defaultTitleForAttachmentType:2];

    localizedDescription = v10;
  }

  v11 = [self filenameExtensionForUTI:iCopy];
  if (v11)
  {
    v12 = [localizedDescription stringByAppendingPathExtension:v11];
  }

  else
  {
    v12 = localizedDescription;
  }

  v13 = v12;

  return v13;
}

+ (id)mimeTypeFromUTI:(id)i
{
  iCopy = i;
  if ([iCopy isEqualToString:@"com.apple.coreaudio-format"])
  {
    preferredMIMEType = @"audio/x-caf";
  }

  else if (iCopy)
  {
    v5 = [MEMORY[0x277CE1CB8] typeWithIdentifier:iCopy];
    preferredMIMEType = [v5 preferredMIMEType];
  }

  else
  {
    preferredMIMEType = 0;
  }

  return preferredMIMEType;
}

+ (BOOL)typeUTIIsPlayableMovie:(id)movie
{
  movieCopy = movie;
  if (movieCopy)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:movieCopy];
    if ([v4 conformsToType:*MEMORY[0x277CE1E00]])
    {
      audiovisualTypes = [MEMORY[0x277CE6650] audiovisualTypes];
      if ([audiovisualTypes containsObject:movieCopy])
      {
        v6 = [movieCopy isEqualToString:@"public.avi"] ^ 1;
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

+ (BOOL)typeUTIIsPlayableAudio:(id)audio
{
  audioCopy = audio;
  if (audioCopy)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:audioCopy];
    if ([v4 conformsToType:*MEMORY[0x277CE1D00]])
    {
      audiovisualTypes = [MEMORY[0x277CE6650] audiovisualTypes];
      v6 = [audiovisualTypes containsObject:audioCopy];
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

+ (BOOL)typeUTIIsDrawing:(id)drawing
{
  drawingCopy = drawing;
  if (drawingCopy)
  {
    v4 = [ICUTType typeWithIdentifier:drawingCopy];
    v5 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.notes.sketch"];
    if ([v4 conformsToType:v5])
    {
      v6 = 1;
    }

    else
    {
      v6 = [drawingCopy isEqualToString:ICAttachmentUTTypeDrawingLegacy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)typeUTIIsInlineDrawing:(id)drawing
{
  drawingCopy = drawing;
  if (drawingCopy)
  {
    v4 = [ICUTType typeWithIdentifier:drawingCopy];
    v5 = [MEMORY[0x277CE1CB8] exportedTypeWithIdentifier:@"com.apple.drawing.2"];
    if ([v4 conformsToType:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = [ICUTType typeWithIdentifier:drawingCopy];
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

+ (BOOL)typeUTIIsImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    v4 = [MEMORY[0x277CE1CB8] typeWithIdentifier:imageCopy];
    if ([v4 conformsToType:*MEMORY[0x277CE1DB0]] && (objc_msgSend(imageCopy, "isEqualToString:", @"com.apple.drawing.2") & 1) == 0)
    {
      v5 = [imageCopy isEqualToString:@"com.apple.drawing"] ^ 1;
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

+ (id)defaultTitleForAttachmentType:(signed __int16)type
{
  switch(type)
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

+ (id)mentionNotificationSnippetForAttachmentType:(signed __int16)type
{
  typeCopy = type;
  v4 = __ICLocalizedFrameworkString_impl(@"Mentioned you in an attachment", @"Mentioned you in an attachment", 0, 1);
  if ((typeCopy - 9) < 2 || typeCopy == 13)
  {
    v5 = @"Mentioned you in a drawing";
  }

  else
  {
    if (typeCopy != 12)
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

  media = [(ICAttachment *)self media];
  if (media)
  {
    media2 = [(ICAttachment *)self media];
    needsInitialFetchFromCloud = [media2 needsInitialFetchFromCloud];
  }

  else
  {
    needsInitialFetchFromCloud = 0;
  }

  return needsInitialFetchFromCloud;
}

- (BOOL)hasVisibleInlineAttachments
{
  inlineAttachments = [(ICAttachment *)self inlineAttachments];
  v3 = +[(ICBaseAttachment *)ICInlineAttachment];
  v4 = [inlineAttachments ic_containsObjectMatchingPredicate:v3];

  return v4;
}

- (NSSet)visibleInlineAttachments
{
  inlineAttachments = [(ICAttachment *)self inlineAttachments];
  v3 = +[(ICBaseAttachment *)ICInlineAttachment];
  v4 = [inlineAttachments filteredSetUsingPredicate:v3];

  return v4;
}

- (id)unsupportedAttachmentTitle
{
  fallbackTitle = [(ICAttachment *)self fallbackTitle];
  if (!fallbackTitle)
  {
    if ([(ICAttachment *)self showsLoadingPlaceholder])
    {
      v4 = @"Loading Attachment…";
    }

    else
    {
      v4 = @"Unsupported Attachment";
    }

    fallbackTitle = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
  }

  return fallbackTitle;
}

- (id)unsupportedAttachmentSubtitle
{
  fallbackSubtitleIOS = [(ICAttachment *)self fallbackSubtitleIOS];
  if (!fallbackSubtitleIOS)
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
      fallbackSubtitleIOS = __ICLocalizedFrameworkString_impl(v4, v4, 0, 1);
      goto LABEL_8;
    }

    fallbackSubtitleIOS = &stru_2827172C0;
  }

LABEL_8:

  return fallbackSubtitleIOS;
}

- (BOOL)shouldShowInContentInfoText
{
  if (([(ICAttachment *)self markedForDeletion]& 1) != 0)
  {
    return 0;
  }

  parentAttachment = [(ICAttachment *)self parentAttachment];
  if (parentAttachment || [(ICAttachment *)self isBeingEditedLocallyOnDevice])
  {
    shouldShowInContentInfoText = 0;
  }

  else
  {
    attachmentModel = [(ICAttachment *)self attachmentModel];
    shouldShowInContentInfoText = [attachmentModel shouldShowInContentInfoText];
  }

  return shouldShowInContentInfoText;
}

- (NSURL)fileURL
{
  media = [(ICAttachment *)self media];
  isPasswordProtected = [media isPasswordProtected];
  media2 = [(ICAttachment *)self media];
  v6 = media2;
  if (isPasswordProtected)
  {
    [media2 encryptedMediaURL];
  }

  else
  {
    [media2 mediaURL];
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

  note = [(ICAttachment *)self note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  return isDeletedOrInTrash;
}

- (void)setRemoteFileURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->_remoteFileURL isEqual:?]& 1) == 0)
  {
    if ([(ICAttachment *)self isPasswordProtected])
    {
      absoluteString = [lCopy absoluteString];
      [(ICCloudSyncingObject *)self setValue:absoluteString forEncryptableKey:@"remoteFileURL"];
LABEL_6:

      goto LABEL_7;
    }

    if (lCopy)
    {
      absoluteString = [lCopy absoluteString];
      [(ICAttachment *)self setRemoteFileURLString:absoluteString];
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
      remoteFileURLString = [(ICCloudSyncingObject *)self valueForEncryptableKey:@"remoteFileURL"];
    }

    else
    {
      remoteFileURLString = [(ICAttachment *)self remoteFileURLString];
      if (!remoteFileURLString)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    v4 = [MEMORY[0x277CBEBC0] URLWithString:remoteFileURLString];
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

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  metadata = [(ICAttachment *)self metadata];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == metadataCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = metadataCopy;
  }

  v8 = v7;
  if (v6 == metadata)
  {
    v9 = 0;
  }

  else
  {
    v9 = metadata;
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

  v13 = metadataCopy;
LABEL_29:
}

- (void)updateAttachmentMetadataWithBlock:(id)block
{
  blockCopy = block;
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ICAttachment_updateAttachmentMetadataWithBlock___block_invoke;
  v7[3] = &unk_2781957B0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [managedObjectContext performBlockAndWait:v7];
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

- (void)setMetadataData:(id)data
{
  dataCopy = data;
  metadataData = [(ICAttachment *)self metadataData];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == dataCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = dataCopy;
  }

  v8 = v7;
  if (v6 == metadataData)
  {
    v9 = 0;
  }

  else
  {
    v9 = metadataData;
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
    if (dataCopy)
    {
      objc_opt_class();
      v19 = 0;
      v14 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v19];
      v15 = v19;
      metadataData = ICCheckedDynamicCast();

      if (!metadataData || v15)
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
      metadataData = 0;
    }

    if ([(ICAttachment *)self isPasswordProtected])
    {
      v15 = NSStringFromSelector(sel_metadata);
      [(ICCloudSyncingObject *)self setValue:metadataData forEncryptableKey:v15];
    }

    else
    {
      objc_storeStrong(&self->_metadata, metadataData);
      v17 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self willChangeValueForKey:v17];

      v18 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self setPrimitiveValue:dataCopy forKey:v18];

      v15 = NSStringFromSelector(sel_metadataData);
      [(ICAttachment *)self didChangeValueForKey:v15];
    }

LABEL_25:

LABEL_26:
  }
}

- (BOOL)hasMetadata
{
  isPasswordProtected = [(ICAttachment *)self isPasswordProtected];
  v4 = &selRef_metadata;
  if (!isPasswordProtected)
  {
    v4 = &selRef_metadataData;
  }

  v5 = NSStringFromSelector(*v4);
  v6 = [(ICCloudSyncingObject *)self valueForEncryptableKey:v5];

  return v6 != 0;
}

- (void)updateCombinedSummary
{
  handwritingSummary = [(ICAttachment *)self handwritingSummary];
  if (handwritingSummary || ([(ICAttachment *)self imageClassificationSummary], (handwritingSummary = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    array = [MEMORY[0x277CBEB18] array];
    handwritingSummary2 = [(ICAttachment *)self handwritingSummary];
    [array ic_addNonNilObject:handwritingSummary2];

    imageClassificationSummary = [(ICAttachment *)self imageClassificationSummary];
    [array ic_addNonNilObject:imageClassificationSummary];

    ocrSummary = [(ICAttachment *)self ocrSummary];
    [array ic_addNonNilObject:ocrSummary];

    v7 = [array componentsJoinedByString:@" "];
    [(ICAttachment *)self setSummary:v7];

    return;
  }

  ocrSummary2 = [(ICAttachment *)self ocrSummary];

  if (ocrSummary2)
  {
    goto LABEL_4;
  }

  [(ICAttachment *)self setSummary:0];
}

- (BOOL)updateHandwritingSummary:(id)summary
{
  summaryCopy = summary;
  handwritingSummary = [(ICAttachment *)self handwritingSummary];
  v6 = handwritingSummary;
  v7 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == handwritingSummary)
  {
    v8 = 0;
  }

  else
  {
    v8 = handwritingSummary;
  }

  v9 = v8;
  if (v7 == summaryCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = summaryCopy;
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

  [(ICAttachment *)self setHandwritingSummary:summaryCopy];
  return v14;
}

- (void)setHandwritingSummary:(id)summary
{
  [(ICCloudSyncingObject *)self setValue:summary forEncryptableKey:@"handwritingSummary"];
  [(ICAttachment *)self updateCombinedSummary];
  if (summary)
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  [(ICAttachment *)self setHandwritingSummaryVersion:v5];
}

+ (void)purgeHandwritingSummariesInContext:(id)context
{
  v15[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
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
  v14 = contextCopy;
  v10 = contextCopy;
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

- (void)setImageClassificationSummary:(id)summary
{
  v4 = summary != 0;
  [ICCloudSyncingObject setValue:"setValue:forEncryptableKey:" forEncryptableKey:?];
  [(ICAttachment *)self updateCombinedSummary];

  [(ICAttachment *)self setImageClassificationSummaryVersion:(4 * v4)];
}

- (void)setOcrSummary:(id)summary
{
  [(ICCloudSyncingObject *)self setValue:summary forEncryptableKey:@"ocrSummary"];
  [(ICAttachment *)self updateCombinedSummary];

  [(ICAttachment *)self setOcrSummaryVersion:summary != 0];
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

- (void)setIsBeingEditedLocallyOnDevice:(BOOL)device
{
  deviceCopy = device;
  isBeingEditedLocallyOnDeviceSet = [objc_opt_class() isBeingEditedLocallyOnDeviceSet];
  identifier = [(ICAttachment *)self identifier];
  obj = isBeingEditedLocallyOnDeviceSet;
  objc_sync_enter(obj);
  if (deviceCopy)
  {
    [obj ic_addNonNilObject:identifier];
  }

  else
  {
    [obj ic_removeNonNilObject:identifier];
  }

  objc_sync_exit(obj);
}

- (BOOL)isBeingEditedLocallyOnDevice
{
  isBeingEditedLocallyOnDeviceSet = [objc_opt_class() isBeingEditedLocallyOnDeviceSet];
  identifier = [(ICAttachment *)self identifier];
  v5 = isBeingEditedLocallyOnDeviceSet;
  objc_sync_enter(v5);
  LOBYTE(isBeingEditedLocallyOnDeviceSet) = [v5 containsObject:identifier];
  objc_sync_exit(v5);

  return isBeingEditedLocallyOnDeviceSet;
}

- (void)setMarkupModelData:(id)data
{
  dataCopy = data;
  if (objc_opt_respondsToSelector())
  {
    [(ICAttachment *)self setCachedImage:0];
  }

  [(ICAttachment *)self invalidateAttachmentPreviewImages];
  [(ICCloudSyncingObject *)self setValue:dataCopy forEncryptableKey:@"markupModelData"];
}

- (BOOL)shouldEmbedMarkupDataInMedia
{
  parentAttachment = [(ICAttachment *)self parentAttachment];
  v3 = parentAttachment;
  if (parentAttachment)
  {
    v4 = [parentAttachment attachmentType] != 11;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setMergeableData:(id)data
{
  dataCopy = data;
  [(ICAttachment *)self setSettingMergeableData:1];
  [(ICCloudSyncingObject *)self setValue:dataCopy forEncryptableKey:@"mergeableData"];

  [(ICAttachment *)self setSettingMergeableData:0];
}

- (BOOL)hasSynapseLink
{
  synapseData = [(ICAttachment *)self synapseData];
  v3 = synapseData != 0;

  return v3;
}

- (void)setMergeablePreferredViewSize:(id)size
{
  sizeCopy = size;
  mergeablePreferredViewSize = [(ICAttachment *)self mergeablePreferredViewSize];
  v5 = [mergeablePreferredViewSize isEqualToData:sizeCopy];

  if ((v5 & 1) == 0)
  {
    performBlockOnMainThread();
    v6 = NSStringFromSelector(sel_mergeablePreferredViewSize);
    [(ICAttachment *)self willChangeValueForKey:v6];
    [(ICAttachment *)self setPrimitiveValue:sizeCopy forKey:v6];
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

  v6.receiver = self;
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
  currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
  uUIDString = [currentReplicaID UUIDString];

  [(ICAttachment *)self inlineFormFillingBannerWasDismissedByDeviceIdentifier:uUIDString];
}

- (void)inlineFormFillingBannerWasDismissedByDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__ICAttachment_inlineFormFillingBannerWasDismissedByDeviceIdentifier___block_invoke;
  v6[3] = &unk_278199DC0;
  v7 = identifierCopy;
  v5 = identifierCopy;
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
  currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
  uUIDString = [currentReplicaID UUIDString];

  v5 = [(ICAttachment *)self inlineFormFillingBannerDismissalCountForDeviceIdentifier:uUIDString];
  return v5;
}

- (unint64_t)inlineFormFillingBannerDismissalCountForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  inlineFormFillingDismissalCountForAllDevices = [(ICAttachment *)self inlineFormFillingDismissalCountForAllDevices];
  v6 = inlineFormFillingDismissalCountForAllDevices;
  if (inlineFormFillingDismissalCountForAllDevices)
  {
    v7 = [inlineFormFillingDismissalCountForAllDevices objectForKeyedSubscript:identifierCopy];
    v8 = v7;
    if (v7)
    {
      unsignedIntValue = [v7 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (id)inlineFormFillingDismissalCountForAllDevices
{
  objc_opt_class();
  metadata = [(ICAttachment *)self metadata];
  v4 = [metadata objectForKeyedSubscript:@"inline_form_dismissal_count_by_device"];
  v5 = ICDynamicCast();

  return v5;
}

- (id)parentEncryptableObject
{
  note = [(ICAttachment *)self note];
  v4 = note;
  if (note)
  {
    account = note;
  }

  else
  {
    account = [(ICAttachment *)self account];
  }

  v6 = account;

  return v6;
}

- (BOOL)isEncryptableKeyBinaryData:(id)data
{
  v16[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
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
  if ([(ICCloudSyncingObject *)&v15 isEncryptableKeyBinaryData:dataCopy])
  {
    v13 = 1;
  }

  else
  {
    v13 = [isEncryptableKeyBinaryData__keys containsObject:dataCopy];
  }

  return v13;
}

- (void)deserializeAndMergeValues:(id)values
{
  v9.receiver = self;
  v9.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v9 deserializeAndMergeValues:values];
  typeUTI = [(ICAttachment *)self typeUTI];
  if ([typeUTI isEqualToString:@"com.apple.notes.gallery"])
  {
  }

  else
  {
    parentAttachment = [(ICAttachment *)self parentAttachment];
    typeUTI2 = [parentAttachment typeUTI];
    v7 = [typeUTI2 isEqualToString:@"com.apple.notes.gallery"];

    if ((v7 & 1) == 0)
    {
      v8 = [(ICAttachment *)self ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentDidLoadNotification"];
    }
  }
}

- (id)mergeDecryptedValue:(id)value withOldValue:(id)oldValue forKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  oldValueCopy = oldValue;
  keyCopy = key;
  if (-[ICCloudSyncingObject needsToLoadDecryptedValues](self, "needsToLoadDecryptedValues") || (NSStringFromSelector(sel_mergeableData), v11 = objc_claimAutoreleasedReturnValue(), v12 = [keyCopy isEqualToString:v11], v11, !v12))
  {
    v21.receiver = self;
    v21.super_class = ICAttachment;
    mergeableData = [(ICCloudSyncingObject *)&v21 mergeDecryptedValue:valueCopy withOldValue:oldValueCopy forKey:keyCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = valueCopy;
      attachmentModel = [(ICAttachment *)self attachmentModel];
      [attachmentModel mergeWithMergeableData:v13];
    }

    else
    {
      v16 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        className = [(ICAttachment *)self className];
        identifier = [(ICAttachment *)self identifier];
        *buf = 138412802;
        v23 = keyCopy;
        v24 = 2112;
        v25 = className;
        v26 = 2112;
        v27 = identifier;
        _os_log_impl(&dword_214D51000, v16, OS_LOG_TYPE_INFO, "Trying to merge %@ for %@ (%@), but the data isn't NSData", buf, 0x20u);
      }
    }

    mergeableData = [(ICAttachment *)self mergeableData];
  }

  v19 = mergeableData;

  return v19;
}

- (void)persistPendingChanges
{
  note = [(ICAttachment *)self note];
  modificationDate = [note modificationDate];

  attachmentModel = [(ICAttachment *)self attachmentModel];
  [attachmentModel persistPendingChanges];

  [(ICAttachment *)self saveMergeableDataIfNeeded];
  if (modificationDate)
  {
    note2 = [(ICAttachment *)self note];
    modificationDate2 = [note2 modificationDate];
    v8 = [modificationDate2 isEqual:modificationDate];

    if ((v8 & 1) == 0)
    {
      note3 = [(ICAttachment *)self note];
      [note3 setModificationDate:modificationDate];
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

+ (BOOL)isTypeUTISupportedForWatch:(id)watch
{
  watchCopy = watch;
  if (isTypeUTISupportedForWatch__onceToken != -1)
  {
    +[ICAttachment isTypeUTISupportedForWatch:];
  }

  if ([isTypeUTISupportedForWatch__supportedTypeStrings containsObject:watchCopy])
  {
    v4 = 1;
  }

  else
  {
    v5 = [ICUTType typeWithIdentifier:watchCopy];
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

+ (BOOL)isTypeUTISupportedForPasswordProtectedNotes:(id)notes
{
  notesCopy = notes;
  if (isTypeUTISupportedForPasswordProtectedNotes__onceToken != -1)
  {
    +[ICAttachment isTypeUTISupportedForPasswordProtectedNotes:];
  }

  if ([isTypeUTISupportedForPasswordProtectedNotes__supportedTypeStrings containsObject:notesCopy])
  {
    v4 = 1;
  }

  else
  {
    v5 = [ICUTType typeWithIdentifier:notesCopy];
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

+ (BOOL)isPathExtensionSupportedForPasswordProtectedNotes:(id)notes
{
  if (!notes)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:?];
  identifier = [v4 identifier];

  LOBYTE(self) = [self isTypeUTISupportedForPasswordProtectedNotes:identifier];
  return self;
}

- (BOOL)hasCroppingQuad
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  shouldCropImage = [attachmentModel shouldCropImage];

  return shouldCropImage;
}

- (void)setPreferredViewSize:(signed __int16)size
{
  sizeCopy = size;
  v5 = [ICTTMergeableWallClockValue alloc];
  v6 = [MEMORY[0x277CCABB0] numberWithShort:sizeCopy];
  v10 = [(ICTTMergeableWallClockValue *)v5 initWithValue:v6 timestamp:0];

  v7 = NSStringFromSelector(sel_preferredViewSize);
  [(ICAttachment *)self willChangeValueForKey:v7];

  serialize = [(ICTTMergeableWallClockValue *)v10 serialize];
  [(ICAttachment *)self setMergeablePreferredViewSize:serialize];

  v9 = NSStringFromSelector(sel_preferredViewSize);
  [(ICAttachment *)self didChangeValueForKey:v9];

  [(ICCloudSyncingObject *)self updateUserSpecificChangeCountWithReason:@"set a new preferred view size"];
}

- (void)resetPreferredViewSizeIfNecessary
{
  mergeablePreferredViewSize = [(ICAttachment *)self mergeablePreferredViewSize];
  v4 = [mergeablePreferredViewSize length];

  if (v4)
  {
    v5 = [ICTTMergeableWallClockValue alloc];
    mergeablePreferredViewSize2 = [(ICAttachment *)self mergeablePreferredViewSize];
    v14 = [(ICTTMergeableWallClockValue *)v5 initWithData:mergeablePreferredViewSize2];

    v7 = v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = v7;
  value = [(ICTTMergeableWallClockValue *)v7 value];

  if (value)
  {
    v9 = [[ICTTMergeableWallClockValue alloc] initWithValue:0 timestamp:0];

    v10 = NSStringFromSelector(sel_preferredViewSize);
    [(ICAttachment *)self willChangeValueForKey:v10];

    serialize = [(ICTTMergeableWallClockValue *)v9 serialize];
    [(ICAttachment *)self setMergeablePreferredViewSize:serialize];

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
  v5.receiver = self;
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
  subAttachments = [(ICAttachment *)self subAttachments];
  if (subAttachments)
  {
    v5 = subAttachments;
    media = [(ICAttachment *)self media];

    if (media)
    {
      subAttachments2 = [(ICAttachment *)self subAttachments];
      allObjects = [subAttachments2 allObjects];
      [v3 addObjectsFromArray:allObjects];

LABEL_7:
      media2 = [(ICAttachment *)self media];
      [v3 addObject:media2];
      goto LABEL_8;
    }
  }

  subAttachments3 = [(ICAttachment *)self subAttachments];

  if (!subAttachments3)
  {
    media3 = [(ICAttachment *)self media];

    if (!media3)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  media2 = [(ICAttachment *)self subAttachments];
  allObjects2 = [media2 allObjects];
  [v3 addObjectsFromArray:allObjects2];

LABEL_8:
LABEL_9:
  inlineAttachments = [(ICAttachment *)self inlineAttachments];

  if (inlineAttachments)
  {
    inlineAttachments2 = [(ICAttachment *)self inlineAttachments];
    allObjects3 = [inlineAttachments2 allObjects];
    [v3 addObjectsFromArray:allObjects3];
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

- (void)setMarkedForDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  markedForDeletion = [(ICAttachment *)self markedForDeletion];
  v7.receiver = self;
  v7.super_class = ICAttachment;
  [(ICCloudSyncingObject *)&v7 setMarkedForDeletion:deletionCopy];
  if (!markedForDeletion && deletionCopy)
  {
    paperBundleModel = [(ICAttachment *)self paperBundleModel];
    [paperBundleModel removeStrokesFromStyleInventory];
  }
}

- (void)markForDeletion
{
  if (([(ICAttachment *)self markedForDeletion]& 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICAttachmentWillBeDeletedNotification" object:self];

    v7.receiver = self;
    v7.super_class = ICAttachment;
    [(ICCloudSyncingObject *)&v7 markForDeletion];
    media = [(ICAttachment *)self media];
    [media markForDeletion];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICAttachmentWasDeletedNotification" object:self];

    if (objc_opt_respondsToSelector())
    {
      [(ICAttachment *)self notifyDocCamFrameworkAttachmentWasDeleted];
    }

    [(ICAttachment *)self setHandwritingSummary:0];
    [(ICAttachment *)self setAdditionalIndexableText:0];
    modificationDate = [(ICCloudSyncingObject *)self modificationDate];
    [(ICAttachment *)self setModificationDate:modificationDate];
  }
}

- (void)unmarkForDeletion
{
  if ([(ICAttachment *)self markedForDeletion])
  {
    v6.receiver = self;
    v6.super_class = ICAttachment;
    [(ICCloudSyncingObject *)&v6 unmarkForDeletion];
    media = [(ICAttachment *)self media];
    [media unmarkForDeletion];

    modificationDate = [(ICCloudSyncingObject *)self modificationDate];
    [(ICAttachment *)self setModificationDate:modificationDate];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICAttachmentWasUndeletedNotification" object:self];
  }
}

- (id)previewItemURL
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  previewItemURL = [attachmentModel previewItemURL];

  return previewItemURL;
}

- (id)previewItemTitle
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  previewItemTitle = [attachmentModel previewItemTitle];

  return previewItemTitle;
}

- (BOOL)supportsQuickLook
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  supportsQuickLook = [attachmentModel supportsQuickLook];

  return supportsQuickLook;
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
    location = [(ICAttachment *)self location];
    if (location || [(ICAttachment *)self checkedForLocation])
    {
      location2 = [(ICAttachment *)self location];
      if (location2)
      {
        location3 = [(ICAttachment *)self location];
        if ([location3 placeUpdated])
        {
          LOBYTE(v3) = 0;
        }

        else
        {
          location4 = [(ICAttachment *)self location];
          v3 = [location4 updatingPlace] ^ 1;
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
  ic_loggingValues = [(ICCloudSyncingObject *)&v12 ic_loggingValues];
  v4 = [ic_loggingValues mutableCopy];

  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__ICAttachment_ic_loggingValues__block_invoke;
  v10[3] = &unk_278194AD8;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  [managedObjectContext performBlockAndWait:v10];

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
  attachmentType = [(ICAttachment *)self attachmentType];
  _accessibilityDescriptionForGenericType = 0;
  if (attachmentType > 6u)
  {
    if (attachmentType <= 8u)
    {
      if (attachmentType == 7)
      {
        v5 = @"map";
      }

      else
      {
        v5 = @"web link";
      }
    }

    else if (attachmentType - 9 >= 2)
    {
      if (attachmentType != 12)
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

  else if (attachmentType <= 3u)
  {
    if (attachmentType == 2)
    {
      _accessibilityDescriptionForGenericType = [(ICAttachment *)self _accessibilityDescriptionForGenericType];
      goto LABEL_21;
    }

    if (attachmentType != 3)
    {
      goto LABEL_21;
    }

    v5 = @"image";
  }

  else if (attachmentType == 4)
  {
    v5 = @"audio";
  }

  else if (attachmentType == 5)
  {
    v5 = @"movie";
  }

  else
  {
    v5 = @"PDF";
  }

  _accessibilityDescriptionForGenericType = __ICLocalizedFrameworkString_impl(v5, v5, 0, 1);
LABEL_21:

  return _accessibilityDescriptionForGenericType;
}

- (id)_accessibilityDescriptionForGenericType
{
  v2 = MEMORY[0x277CE1CB8];
  typeUTI = [(ICAttachment *)self typeUTI];
  v4 = [v2 typeWithIdentifier:typeUTI];
  localizedDescription = [v4 localizedDescription];

  if ([localizedDescription length])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = __ICLocalizedFrameworkString_impl(@"file, %@", @"file, %@", 0, 1);
    v8 = [v6 localizedStringWithFormat:v7, localizedDescription];
  }

  else
  {
    v8 = __ICLocalizedFrameworkString_impl(@"file", @"file", 0, 1);
  }

  return v8;
}

+ (void)deleteAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = v5;
  if (v5)
  {
    attachmentModel = [v5 attachmentModel];
    [attachmentModel willMarkAttachmentForDeletion];

    attachmentModel2 = [v6 attachmentModel];
    [attachmentModel2 deleteChildAttachments];

    media = [v6 media];
    [ICMedia deleteMedia:media];

    [v6 deleteAttachmentPreviewImages];
  }

  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___ICAttachment;
  objc_msgSendSuper2(&v10, sel_deleteAttachment_, attachmentCopy);
}

+ (void)undeleteAttachment:(id)attachment
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___ICAttachment;
  attachmentCopy = attachment;
  objc_msgSendSuper2(&v7, sel_undeleteAttachment_, attachmentCopy);
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  if (v4)
  {
    media = [v4 media];
    [ICMedia undeleteMedia:media];

    [v4 undeleteAttachmentPreviewImages];
    attachmentModel = [v4 attachmentModel];
    [attachmentModel undeleteChildAttachments];
  }
}

+ (void)purgeAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  v7 = ICCheckedDynamicCast();

  if (v7)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"ICAttachmentWillBeDeletedNotification" object:v7];

    managedObjectContext = [v7 managedObjectContext];
    [managedObjectContext deleteObject:v7];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 postNotificationName:@"ICAttachmentWasDeletedNotification" object:v7];

    if (objc_opt_respondsToSelector())
    {
      [v7 notifyDocCamFrameworkAttachmentWasDeleted];
    }
  }
}

+ (void)enumerateAttachmentsInContext:(id)context batchSize:(unint64_t)size visibleOnly:(BOOL)only saveAfterBatch:(BOOL)batch usingBlock:(id)block
{
  batchCopy = batch;
  onlyCopy = only;
  contextCopy = context;
  blockCopy = block;
  if (onlyCopy)
  {
    v13 = [self predicateForVisibleAttachmentsInContext:contextCopy];
  }

  else
  {
    v13 = 0;
  }

  [self ic_enumerateObjectsMatchingPredicate:v13 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 context:contextCopy batchSize:size saveAfterBatch:batchCopy usingBlock:blockCopy];
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

+ (id)predicateForAttachmentBrowserWithContext:(id)context
{
  contextCopy = context;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ICAttachment_Management__predicateForAttachmentBrowserWithContext___block_invoke;
  v10[3] = &unk_278196CD8;
  v11 = contextCopy;
  selfCopy = self;
  v5 = predicateForAttachmentBrowserWithContext__onceToken;
  v6 = contextCopy;
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

+ (id)predicateForSearchableAttachmentsInContext:(id)context
{
  v16[2] = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __71__ICAttachment_Management__predicateForSearchableAttachmentsInContext___block_invoke;
  v14 = &__block_descriptor_40_e5_v8__0l;
  selfCopy = self;
  v4 = predicateForSearchableAttachmentsInContext__onceToken;
  contextCopy = context;
  if (v4 != -1)
  {
    dispatch_once(&predicateForSearchableAttachmentsInContext__onceToken, &v11);
  }

  v6 = MEMORY[0x277CCA920];
  v7 = [self predicateForUnsupportedAttachmentsInContext:{contextCopy, v11, v12, v13, v14, selfCopy, predicateForSearchableAttachmentsInContext__predicate}];

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

+ (id)predicateForVisibleAttachmentsWithTypeUTI:(id)i inContext:(id)context
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v8 = [v6 predicateWithFormat:@"typeUTI == %@", i];
  v9 = [self predicateForVisibleAttachmentsInContext:contextCopy];

  v10 = MEMORY[0x277CCA920];
  v14[0] = v8;
  v14[1] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v12 = [v10 andPredicateWithSubpredicates:v11];

  return v12;
}

+ (id)predicateForPasswordProtected:(BOOL)protected
{
  v3 = MEMORY[0x277CCAC30];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:protected];
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

+ (unint64_t)countOfAttachmentsMatchingPredicate:(id)predicate context:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  newFetchRequestForAttachments = [self newFetchRequestForAttachments];
  [newFetchRequestForAttachments setPredicate:predicateCopy];

  v9 = [contextCopy countForFetchRequest:newFetchRequestForAttachments error:0];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  return v9;
}

- (void)recursivelyAddSubAttachments:(id)attachments
{
  v17 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subAttachments = [(ICAttachment *)self subAttachments];
  v6 = [subAttachments copy];

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
        [attachmentsCopy addObject:v11];
        [v11 recursivelyAddSubAttachments:attachmentsCopy];
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

+ (id)fallbackImageContainerURLForIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  fallbackImageDirectoryURL = [account fallbackImageDirectoryURL];
  v7 = [fallbackImageDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:1];

  return v7;
}

+ (id)fallbackImageFallbackURLForIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  fallbackImageDirectoryURL = [account fallbackImageDirectoryURL];
  v7 = [fallbackImageDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:0];

  v8 = [v7 URLByAppendingPathExtension:@"jpg"];

  return v8;
}

+ (id)fallbackImageEncryptedFallbackURLForIdentifier:(id)identifier account:(id)account
{
  v4 = [self fallbackImageFallbackURLForIdentifier:identifier account:account];
  v5 = [v4 URLByAppendingPathExtension:@"encrypted"];

  return v5;
}

- (id)fallbackImageURL
{
  account = [(ICAttachment *)self account];
  v4 = account;
  if (account)
  {
    account3 = account;
  }

  else
  {
    note = [(ICAttachment *)self note];
    account2 = [note account];
    v8 = account2;
    if (account2)
    {
      account3 = account2;
    }

    else
    {
      note2 = [(ICAttachment *)self note];
      folder = [note2 folder];
      account3 = [folder account];
    }
  }

  identifier = [(ICAttachment *)self identifier];

  v12 = 0;
  if (identifier && account3)
  {
    fallbackImageGenerationManager = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
    generationURL = [fallbackImageGenerationManager generationURL];

    if (generationURL)
    {
      fallbackImageGenerationManager2 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
      generationURL2 = [fallbackImageGenerationManager2 generationURL];
      identifier2 = [generationURL2 URLByAppendingPathComponent:@"FallbackImage" isDirectory:0];

      fallbackImageUTI = [objc_opt_class() fallbackImageUTI];
      pathExtension = [fallbackImageUTI pathExtension];
      v12 = [identifier2 URLByAppendingPathExtension:pathExtension];
    }

    else
    {
      v20 = objc_opt_class();
      identifier2 = [(ICAttachment *)self identifier];
      v12 = [v20 fallbackImageFallbackURLForIdentifier:identifier2 account:account3];
    }
  }

  return v12;
}

- (id)fallbackImageEncryptedURL
{
  fallbackImageURL = [(ICAttachment *)self fallbackImageURL];
  v3 = [fallbackImageURL URLByAppendingPathExtension:@"encrypted"];

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
  ic_isReachable = [v3 ic_isReachable];

  return ic_isReachable;
}

- (id)fallbackImageData
{
  if ([(ICAttachment *)self isPasswordProtected])
  {
    cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
    decryptedFallbackImageData = [cryptoStrategy decryptedFallbackImageData];
  }

  else
  {
    fallbackImageURL = [(ICAttachment *)self fallbackImageURL];

    if (fallbackImageURL)
    {
      v6 = MEMORY[0x277CBEA90];
      fallbackImageURL2 = [(ICAttachment *)self fallbackImageURL];
      decryptedFallbackImageData = [v6 dataWithContentsOfURL:fallbackImageURL2];
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachment(Management) *)self fallbackImageData];
      }

      decryptedFallbackImageData = 0;
    }
  }

  return decryptedFallbackImageData;
}

- (BOOL)writeFallbackImageData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    ic_sha256 = [dataCopy ic_sha256];
    v19 = 138413058;
    v20 = shortLoggingDescription;
    v21 = 2112;
    v23 = 2080;
    v22 = ic_sha256;
    v24 = "[ICAttachment(Management) writeFallbackImageData:]";
    v25 = 1024;
    v26 = 2861;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Writing fallback image data… {attachment: %@, data.sha256: %@}%s:%d", &v19, 0x26u);
  }

  fallbackImageGenerationManager = [(ICAttachment(Management) *)self fallbackImageGenerationManager];

  if (fallbackImageGenerationManager)
  {
    fallbackImageGenerationManager2 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
    beginGeneration = [fallbackImageGenerationManager2 beginGeneration];

    if (beginGeneration)
    {
      if ([(ICAttachment *)self isPasswordProtected])
      {
        cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
        v12 = [cryptoStrategy writeEncryptedFallbackImageData:dataCopy];

        if ((v12 & 1) == 0)
        {
LABEL_18:
          fallbackImageGenerationManager3 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
          [fallbackImageGenerationManager3 rollbackGeneration];
          goto LABEL_13;
        }
      }

      else
      {
        fallbackImageURL = [(ICAttachment *)self fallbackImageURL];

        if (fallbackImageURL)
        {
          fallbackImageURL2 = [(ICAttachment *)self fallbackImageURL];
          v18 = [dataCopy writeToURL:fallbackImageURL2 atomically:1];

          if (!v18)
          {
            goto LABEL_18;
          }
        }
      }

      fallbackImageGenerationManager3 = [(ICAttachment(Management) *)self fallbackImageGenerationManager];
      commitGeneration = [fallbackImageGenerationManager3 commitGeneration];
      goto LABEL_14;
    }

    fallbackImageGenerationManager3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(fallbackImageGenerationManager3, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackImageData:?];
    }
  }

  else
  {
    fallbackImageGenerationManager3 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(fallbackImageGenerationManager3, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackImageData:?];
    }
  }

LABEL_13:
  commitGeneration = 0;
LABEL_14:

  return commitGeneration;
}

+ (id)fallbackPDFContainerURLForIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  fallbackPDFDirectoryURL = [account fallbackPDFDirectoryURL];
  v7 = [fallbackPDFDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:1];

  return v7;
}

+ (id)fallbackPDFFallbackURLForIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  fallbackPDFDirectoryURL = [account fallbackPDFDirectoryURL];
  v8 = [fallbackPDFDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:0];

  fallbackPDFUTI = [self fallbackPDFUTI];
  pathExtension = [fallbackPDFUTI pathExtension];
  v11 = [v8 URLByAppendingPathExtension:pathExtension];

  return v11;
}

+ (id)fallbackPDFEncryptedFallbackURLForIdentifier:(id)identifier account:(id)account
{
  v4 = [self fallbackPDFFallbackURLForIdentifier:identifier account:account];
  v5 = [v4 URLByAppendingPathExtension:@"encrypted"];

  return v5;
}

- (id)fallbackPDFURL
{
  account = [(ICAttachment *)self account];
  v4 = account;
  if (account)
  {
    account3 = account;
  }

  else
  {
    note = [(ICAttachment *)self note];
    account2 = [note account];
    v8 = account2;
    if (account2)
    {
      account3 = account2;
    }

    else
    {
      note2 = [(ICAttachment *)self note];
      folder = [note2 folder];
      account3 = [folder account];
    }
  }

  identifier = [(ICAttachment *)self identifier];

  v12 = 0;
  if (identifier && account3)
  {
    fallbackPDFGenerationManager = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
    generationURL = [fallbackPDFGenerationManager generationURL];

    if (generationURL)
    {
      fallbackPDFGenerationManager2 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
      generationURL2 = [fallbackPDFGenerationManager2 generationURL];
      identifier2 = [generationURL2 URLByAppendingPathComponent:@"FallbackPDF" isDirectory:0];

      fallbackPDFUTI = [objc_opt_class() fallbackPDFUTI];
      pathExtension = [fallbackPDFUTI pathExtension];
      v12 = [identifier2 URLByAppendingPathExtension:pathExtension];
    }

    else
    {
      v20 = objc_opt_class();
      identifier2 = [(ICAttachment *)self identifier];
      v12 = [v20 fallbackPDFFallbackURLForIdentifier:identifier2 account:account3];
    }
  }

  return v12;
}

- (id)fallbackPDFEncryptedURL
{
  fallbackPDFURL = [(ICAttachment *)self fallbackPDFURL];
  v3 = [fallbackPDFURL URLByAppendingPathExtension:@"encrypted"];

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
  ic_isReachable = [v3 ic_isReachable];

  return ic_isReachable;
}

- (id)fallbackPDFData
{
  if ([(ICAttachment *)self isPasswordProtected])
  {
    cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
    decryptedFallbackPDFData = [cryptoStrategy decryptedFallbackPDFData];
  }

  else
  {
    fallbackPDFURL = [(ICAttachment *)self fallbackPDFURL];

    if (fallbackPDFURL)
    {
      v6 = MEMORY[0x277CBEA90];
      fallbackPDFURL2 = [(ICAttachment *)self fallbackPDFURL];
      decryptedFallbackPDFData = [v6 dataWithContentsOfURL:fallbackPDFURL2];
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachment(Management) *)self fallbackPDFData];
      }

      decryptedFallbackPDFData = 0;
    }
  }

  return decryptedFallbackPDFData;
}

- (BOOL)writeFallbackPDFData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    ic_sha256 = [dataCopy ic_sha256];
    v19 = 138413058;
    v20 = shortLoggingDescription;
    v21 = 2112;
    v23 = 2080;
    v22 = ic_sha256;
    v24 = "[ICAttachment(Management) writeFallbackPDFData:]";
    v25 = 1024;
    v26 = 2974;
    _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_DEFAULT, "Writing fallback PDF data… {attachment: %@, data.sha256: %@}%s:%d", &v19, 0x26u);
  }

  fallbackPDFGenerationManager = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];

  if (fallbackPDFGenerationManager)
  {
    fallbackPDFGenerationManager2 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
    beginGeneration = [fallbackPDFGenerationManager2 beginGeneration];

    if (beginGeneration)
    {
      if ([(ICAttachment *)self isPasswordProtected])
      {
        cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
        v12 = [cryptoStrategy writeEncryptedFallbackPDFData:dataCopy];

        if ((v12 & 1) == 0)
        {
LABEL_18:
          fallbackPDFGenerationManager3 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
          [fallbackPDFGenerationManager3 rollbackGeneration];
          goto LABEL_13;
        }
      }

      else
      {
        fallbackPDFURL = [(ICAttachment *)self fallbackPDFURL];

        if (fallbackPDFURL)
        {
          fallbackPDFURL2 = [(ICAttachment *)self fallbackPDFURL];
          v18 = [dataCopy writeToURL:fallbackPDFURL2 atomically:1];

          if (!v18)
          {
            goto LABEL_18;
          }
        }
      }

      fallbackPDFGenerationManager3 = [(ICAttachment(Management) *)self fallbackPDFGenerationManager];
      commitGeneration = [fallbackPDFGenerationManager3 commitGeneration];
      goto LABEL_14;
    }

    fallbackPDFGenerationManager3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(fallbackPDFGenerationManager3, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackPDFData:?];
    }
  }

  else
  {
    fallbackPDFGenerationManager3 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(fallbackPDFGenerationManager3, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(Management) writeFallbackPDFData:?];
    }
  }

LABEL_13:
  commitGeneration = 0;
LABEL_14:

  return commitGeneration;
}

- (id)paperBundleURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__56;
  v11 = __Block_byref_object_dispose__56;
  v12 = 0;
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ICAttachment_Management__paperBundleURL__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

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
  paperBundleURL = [(ICAttachment *)self paperBundleURL];
  v3 = [_TtC11NotesShared21ICSystemPaperDocument databaseDirectoryAt:paperBundleURL];

  return v3;
}

- (id)paperBundleAssetsSubdirectoryURL
{
  paperBundleURL = [(ICAttachment *)self paperBundleURL];
  v3 = [_TtC11NotesShared21ICSystemPaperDocument assetsDirectoryAt:paperBundleURL];

  return v3;
}

+ (id)temporaryPaperBundleURLForIdentifier:(id)identifier account:(id)account
{
  identifierCopy = identifier;
  accountCopy = account;
  if (accountCopy)
  {
    if (identifierCopy)
    {
LABEL_3:
      systemPaperTemporaryDirectoryURL = [accountCopy systemPaperTemporaryDirectoryURL];
      v8 = [systemPaperTemporaryDirectoryURL URLByAppendingPathComponent:identifierCopy isDirectory:1];

      v9 = [v8 URLByAppendingPathExtension:@"bundle"];

      goto LABEL_8;
    }
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((account) != nil)" functionName:"+[ICAttachment(Management) temporaryPaperBundleURLForIdentifier:account:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "account"}];
    if (identifierCopy)
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
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ICAttachment_Management__paperCoherenceContextURL__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

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
    identifier = [(ICAttachment *)self identifier];
    note = [(ICAttachment *)self note];
    account = [note account];
    v6 = account;
    if (account)
    {
      account2 = account;
    }

    else
    {
      note2 = [(ICAttachment *)self note];
      folder = [note2 folder];
      account2 = [folder account];
    }

    if ([identifier length])
    {
      if (account2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"identifier.length" functionName:"-[ICAttachment(Management) temporaryPaperBundleURL]" simulateCrash:1 showAlert:1 format:@"identifier is empty"];
      if (account2)
      {
LABEL_8:
        if (identifier)
        {
          v10 = [objc_opt_class() temporaryPaperBundleURLForIdentifier:identifier account:account2];
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
  temporaryPaperBundleURL = [(ICAttachment *)self temporaryPaperBundleURL];
  if (temporaryPaperBundleURL)
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
    [v4 coordinateWritingItemAtURL:temporaryPaperBundleURL options:1 error:&obj byAccessor:v9];
    objc_storeStrong(v6, obj);
    if ((v12[3] & 1) == 0)
    {
      v7 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
        [(ICAttachment(Management) *)shortLoggingDescription removeTemporaryPaperBundle:v16];
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
  location = [(ICAttachment *)self location];
  if (!location)
  {
    if (([(ICAttachment *)self checkedForLocation]& 1) != 0)
    {
      return;
    }

    [(ICAttachment *)self setCheckedForLocation:1];
    attachmentModel = [(ICAttachment *)self attachmentModel];
    [attachmentModel addLocation];
    location = attachmentModel;
  }
}

- (id)addLocationWithLatitude:(double)latitude longitude:(double)longitude
{
  v7 = [ICAttachmentLocation newAttachmentLocationForAttachment:self];
  [(ICAttachment *)self setLocation:v7];

  location = [(ICAttachment *)self location];
  [location setLatitude:latitude];

  location2 = [(ICAttachment *)self location];
  [location2 setLongitude:longitude];

  return [(ICAttachment *)self location];
}

- (void)regenerateTitleWithInferredTitle:(id)title
{
  titleCopy = title;
  userTitle = [(ICAttachment *)self userTitle];

  if (!userTitle)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__56;
    v22 = __Block_byref_object_dispose__56;
    v23 = titleCopy;
    if (!v19[5] && [(ICAttachment *)self attachmentType]== 11)
    {
      objc_opt_class();
      attachmentModel = [(ICAttachment *)self attachmentModel];
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
      title = [(ICAttachment *)self title];
      v11 = [title isEqualToString:v19[5]];

      if ((v11 & 1) == 0)
      {
        [(ICAttachment *)self setTitle:v19[5]];
        [(ICCloudSyncingObject *)self updateChangeCountWithReason:@"Regenerated attachment title"];
        note = [(ICAttachment *)self note];
        v13 = [note regenerateTitle:1 snippet:1];

        if (v13)
        {
          note2 = [(ICAttachment *)self note];
          [note2 markShareDirtyIfNeededWithReason:@"Regenerated attachment title"];

          note3 = [(ICAttachment *)self note];
          [note3 updateChangeCountWithReason:@"Regenerated attachment title"];
        }

        managedObjectContext = [(ICAttachment *)self managedObjectContext];
        [managedObjectContext ic_save];
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

- (void)updatePlaceInLocationIfNeededHandler:(id)handler
{
  handlerCopy = handler;
  [(ICAttachment *)self addLocationIfNeeded];
  location = [(ICAttachment *)self location];
  v6 = location;
  if (!location || ([location placeUpdated] & 1) != 0 || (objc_msgSend(v6, "updatingPlace") & 1) != 0)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    managedObjectContext = [(ICAttachment *)self managedObjectContext];
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
    v15 = managedObjectContext;
    v16 = v6;
    selfCopy = self;
    v18 = handlerCopy;
    v13 = managedObjectContext;
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
  paperBundleModel = [(ICAttachment *)self paperBundleModel];
  [paperBundleModel removeStrokesFromStyleInventory];
}

- (id)addInlineAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  note = [(ICAttachment *)self note];
  v6 = [(ICBaseAttachment *)ICInlineAttachment newAttachmentWithIdentifier:identifierCopy note:note];

  [(ICAttachment *)self addInlineAttachmentsObject:v6];
  note2 = [(ICAttachment *)self note];
  [note2 addInlineAttachmentsObject:v6];

  return v6;
}

- (void)updateAfterMediaChange
{
  attachmentModel = [(ICAttachment *)self attachmentModel];
  [attachmentModel updateFileBasedAttributes];
}

- (id)addMediaWithData:(id)data filename:(id)filename updateFileBasedAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v10 = 0;
  v7 = [ICMedia newMediaWithAttachment:self forData:data filename:filename error:&v10];
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = !attributesCopy;
  }

  if (!v8)
  {
    [(ICAttachment *)self updateAfterMediaChange];
  }

  [(ICAttachment *)self setMedia:v7];
  [v7 setAttachment:self];

  return v7;
}

- (id)addMediaWithFileWrapper:(id)wrapper
{
  v6 = 0;
  v4 = [ICMedia newMediaWithAttachment:self forFileWrapper:wrapper error:&v6];
  if (!v6)
  {
    [(ICAttachment *)self updateAfterMediaChange];
  }

  [(ICAttachment *)self setMedia:v4];
  [v4 setAttachment:self];

  return v4;
}

- (id)addMediaWithURL:(id)l updateFileBasedAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v9 = 0;
  v6 = [ICMedia newMediaWithAttachment:self forURL:l error:&v9];
  if (v9)
  {
    v7 = 1;
  }

  else
  {
    v7 = !attributesCopy;
  }

  if (!v7)
  {
    [(ICAttachment *)self updateAfterMediaChange];
  }

  [(ICAttachment *)self setMedia:v6];
  [v6 setAttachment:self];

  return v6;
}

- (id)addMediaWithURL:(id)l filename:(id)filename updateFileBasedAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  lCopy = l;
  filenameCopy = filename;
  v10 = filenameCopy;
  if (filenameCopy && [filenameCopy length])
  {
    stringByDeletingPathExtension = [v10 stringByDeletingPathExtension];
    pathExtension = [lCopy pathExtension];
    lastPathComponent = [stringByDeletingPathExtension stringByAppendingPathExtension:pathExtension];
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
    stringByDeletingPathExtension = v10;
  }

  v16 = 0;
  v14 = [ICMedia newMediaWithAttachment:self forURL:lCopy filename:lastPathComponent error:&v16];
  if (!v16 && attributesCopy)
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
  previewImages = [(ICAttachment *)self previewImages];
  v3 = [previewImages copy];

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
  previewImages = [(ICAttachment *)self previewImages];
  v4 = [previewImages copy];

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
  previewImages = [(ICAttachment *)self previewImages];
  v3 = [previewImages countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(previewImages);
        }

        [*(*(&v7 + 1) + 8 * v6++) unmarkForDeletion];
      }

      while (v4 != v6);
      v4 = [previewImages countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  previewImages = [(ICAttachment *)self previewImages];
  v4 = [previewImages copy];

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
        managedObjectContext = [(ICAttachment *)self managedObjectContext];
        [managedObjectContext deleteObject:v9];

        attachmentModel = [(ICAttachment *)self attachmentModel];
        LODWORD(managedObjectContext) = [attachmentModel requiresPostProcessing];

        if (managedObjectContext)
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
  previewImages = [(ICAttachment *)self previewImages];
  v3 = [previewImages copy];

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
  objectID = [(ICAttachment *)self objectID];
  LOBYTE(v4) = [v4 containsObject:objectID];

  if (v4)
  {
    objc_sync_exit(v3);
  }

  else
  {
    v7 = checkPreviewImagesIntegrity_sCheckedAttachments;
    objectID2 = [(ICAttachment *)self objectID];
    [v7 addObject:objectID2];

    objc_sync_exit(v3);
    managedObjectContext = [(ICAttachment *)self managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_2;
    v17[3] = &unk_278194D68;
    v17[4] = self;
    v17[5] = &v18;
    [managedObjectContext performBlockAndWait:v17];

    if (v19[3])
    {
      v6 = 1;
      goto LABEL_8;
    }

    managedObjectContext2 = [(ICAttachment *)self managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__ICAttachment_Previews__checkPreviewImagesIntegrity__block_invoke_3;
    v16[3] = &unk_278194B00;
    v16[4] = self;
    [managedObjectContext2 performBlockAndWait:v16];

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

- (void)loadLinkPreviewForSynapseItem:(id)item
{
  itemCopy = item;
  v5 = [[ICSynapseLinkPreviewLoadingOperation alloc] initWithSynapseItem:itemCopy];
  loadOperation = self->_loadOperation;
  self->_loadOperation = v5;

  ic_permanentObjectID = [(ICAttachment *)self ic_permanentObjectID];
  v8 = self->_loadOperation;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ICAttachment_Previews__loadLinkPreviewForSynapseItem___block_invoke;
  v11[3] = &unk_278194DC0;
  v12 = itemCopy;
  v13 = ic_permanentObjectID;
  selfCopy = self;
  v9 = ic_permanentObjectID;
  v10 = itemCopy;
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

- (id)updateAttachmentPreviewImageWithImageData:(id)data size:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type scaleWhenDrawing:(BOOL)drawing metadata:(id)metadata sendNotification:(BOOL)notification
{
  notificationCopy = notification;
  drawingCopy = drawing;
  height = size.height;
  width = size.width;
  dataCopy = data;
  v18 = [(ICAttachment *)self attachmentPreviewImageCreatingIfNecessaryWithWidth:type height:drawingCopy scale:metadata appearanceType:width scaleWhenDrawing:height metadata:scale];
  v19 = v18;
  if (v18)
  {
    [v18 setScaleWhenDrawing:drawingCopy];
    v20 = [v19 setImageData:dataCopy withSize:type scale:width appearanceType:{height, scale}];
    if (v20 && notificationCopy)
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
      managedObjectContext = [v19 managedObjectContext];
      [managedObjectContext deleteObject:v19];

      v19 = 0;
    }
  }

  return v19;
}

- (id)updateAttachmentPreviewImageWithImageSrc:(CGImageSource *)src maxDimension:(double)dimension scale:(double)scale appearanceType:(unint64_t)type scaleWhenDrawing:(BOOL)drawing metadata:(id)metadata sendNotification:(BOOL)notification
{
  notificationCopy = notification;
  drawingCopy = drawing;
  metadataCopy = metadata;
  v17 = CGImageSourceCopyPropertiesAtIndex(src, 0, 0);
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
      v35 = notificationCopy;
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

      v23 = [(ICAttachment *)self attachmentPreviewImageCreatingIfNecessaryWithWidth:type height:drawingCopy scale:metadataCopy appearanceType:round(dimension / v29 * v26) scaleWhenDrawing:round(dimension / v29 * v28) metadata:scale];
      CFRetain(src);
      attachmentModel = [(ICAttachment *)self attachmentModel];
      previewImageTypeUTI = [attachmentModel previewImageTypeUTI];
      v32 = [v23 setScaledImageFromImageSrc:src typeUTI:previewImageTypeUTI];

      CFRelease(src);
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

- (id)attachmentPreviewImageCreatingIfNecessaryWithWidth:(double)width height:(double)height scale:(double)scale appearanceType:(unint64_t)type scaleWhenDrawing:(BOOL)drawing metadata:(id)metadata
{
  v40 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__56;
  v32 = __Block_byref_object_dispose__56;
  v33 = 0;
  [(ICAttachment *)self checkPreviewImagesIntegrity];
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __131__ICAttachment_Previews__attachmentPreviewImageCreatingIfNecessaryWithWidth_height_scale_appearanceType_scaleWhenDrawing_metadata___block_invoke;
  v20[3] = &unk_278199EA8;
  scaleCopy = scale;
  widthCopy = width;
  heightCopy = height;
  typeCopy = type;
  v20[4] = self;
  v22 = &v28;
  drawingCopy = drawing;
  v16 = metadataCopy;
  v21 = v16;
  [managedObjectContext performBlockAndWait:v20];

  v17 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    widthCopy2 = width;
    v36 = 2048;
    heightCopy2 = height;
    v38 = 2048;
    selfCopy = self;
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

- (id)attachmentPreviewImageWithMinSize:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type requireAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  height = size.height;
  width = size.width;
  scale = [ICAttachment attachmentPreviewImageWithMinSize:"attachmentPreviewImageWithMinSize:scale:appearanceType:matchScale:matchAppearance:" scale:type appearanceType:1 matchScale:1 matchAppearance:?];
  if (!scale)
  {
    scale = [(ICAttachment *)self attachmentPreviewImageWithMinSize:type scale:0 appearanceType:appearanceCopy matchScale:width matchAppearance:height, scale];
  }

  return scale;
}

- (id)attachmentPreviewImageWithMinSize:(CGSize)size scale:(double)scale appearanceType:(unint64_t)type matchScale:(BOOL)matchScale matchAppearance:(BOOL)appearance
{
  matchScaleCopy = matchScale;
  scaleCopy = scale;
  height = size.height;
  width = size.width;
  v64 = *MEMORY[0x277D85DE8];
  if (scale <= 0.0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"scale > 0." functionName:"-[ICAttachment(Previews) attachmentPreviewImageWithMinSize:scale:appearanceType:matchScale:matchAppearance:]" simulateCrash:1 showAlert:0 format:@"Passing invalid scale to attachmentPreviewImageWithMinSize"];
    scaleCopy = 1.0;
  }

  attachmentType = [(ICAttachment *)self attachmentType];
  [(ICAttachment *)self checkPreviewImagesIntegrity];
  if (matchScaleCopy)
  {
    v14 = width;
  }

  else
  {
    v14 = width * scaleCopy;
  }

  if (matchScaleCopy)
  {
    v15 = height;
  }

  else
  {
    v15 = height * scaleCopy;
  }

  previewImages = [(ICAttachment *)self previewImages];
  v17 = [previewImages count];

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
  v52 = scaleCopy;
  selfCopy = self;
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
      if (attachmentType == 8 && (v27 > v57 || v28 > v58))
      {
        v31 = v25;

        v57 = v27;
        v58 = v29;
        v55 = v31;
      }

      if (!matchScaleCopy)
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

      if ([v25 appearanceType] == type)
      {
        v42 = v20 != 0;
      }

      else
      {
        v43 = [(ICAttachment *)selfCopy previewsSupportMultipleAppearances]&& appearance;
        v42 = v20 != 0;
        if (v43)
        {
          goto LABEL_47;
        }
      }

      if ((v39 & v42 & 1) == 0)
      {
        if (!matchScaleCopy || ([v25 scale], v44 == 0.0))
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
  if (attachmentType == 8)
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
  attachmentModel = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)paperBundleModel
{
  objc_opt_class();
  attachmentModel = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)systemPaperModel
{
  objc_opt_class();
  attachmentModel = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)galleryModel
{
  objc_opt_class();
  attachmentModel = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)inlineDrawingModel
{
  objc_opt_class();
  attachmentModel = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)tableModel
{
  objc_opt_class();
  attachmentModel = [(ICAttachment *)self attachmentModel];
  v4 = ICDynamicCast();

  return v4;
}

- (id)audioModel
{
  objc_opt_class();
  attachmentModel = [(ICAttachment *)self attachmentModel];
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
  managedObjectContext = [(ICAttachment *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__ICAttachment_Previews__description__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

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

- (void)associateAppEntityWithSearchableItemAttributeSet:(id)set
{
  setCopy = set;
  selfCopy = self;
  ICAttachment.associateAppEntity(with:)(setCopy);
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
  shortLoggingDescription = [v0 shortLoggingDescription];
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
  shortLoggingDescription = [v0 shortLoggingDescription];
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