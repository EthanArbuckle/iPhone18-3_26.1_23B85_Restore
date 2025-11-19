@interface CKMediaObject
+ (BOOL)genmojiShouldAppearAsFailedForMediaObject:(id)a3;
+ (BOOL)shouldUseTranscoderGeneratedPreviewSize;
+ (id)_generateIconWithSize:(CGSize)a3 scale:(double)a4 type:(id)a5 fileURL:(id)a6;
+ (id)mediaClasses;
+ (id)spatialMetadataProcessingQueue;
+ (id)transferGUIDSFailingPreviewGeneration;
+ (void)generateAndCacheIconForMediaObjectWithUTIType:(id)a3 fileURL:(id)a4 completion:(id)a5;
- (BOOL)_shouldDenyUTITypeFromRichIcon;
- (BOOL)canPerformQuickAction;
- (BOOL)generatePreviewOutOfProcess;
- (BOOL)isDirectory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFromMe;
- (BOOL)isPreviewable;
- (BOOL)isPromisedItem;
- (BOOL)shouldBeQuickLooked;
- (BOOL)shouldShowViewer;
- (BOOL)shouldSuppressPreview;
- (BOOL)transcoderPreviewGenerationFailed;
- (BOOL)validPreviewExistsAtURL:(id)a3;
- (CGSize)bbSize;
- (CGSize)transcoderGeneratedSizeForConstraints:(IMPreviewConstraints *)a3;
- (CGSize)transcodingPreviewPxSize;
- (CKMediaObject)initWithCoder:(id)a3;
- (CKMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5;
- (Class)balloonViewClassForWidth:(double)a3 orientation:(char)a4;
- (Class)placeholderBalloonViewClass;
- (IMHandle)senderHandle;
- (IMPreviewConstraints)_previewConstraintsForWidth:(SEL)a3;
- (IMPreviewConstraints)transcodingPreviewConstraints;
- (NSData)data;
- (NSDictionary)transcoderUserInfo;
- (NSString)UTIType;
- (NSString)description;
- (NSString)filename;
- (NSString)mimeType;
- (NSString)syndicationIdentifier;
- (NSString)transferGUID;
- (NSURL)backgroundFileURL;
- (NSURL)fileURL;
- (NSURL)previewItemURL;
- (UIImage)cachedIcon;
- (UIImage)icon;
- (double)defaultPreviewWidth;
- (id)_balloonViewForClassWithWidth:(double)a3 orientation:(char)a4;
- (id)_composeImageForBalloonView:(id)a3 colorType:(char)a4 traitCollection:(id)a5;
- (id)_generateIconWithSize:(CGSize)a3 scale:(double)a4;
- (id)adaptiveImageGlyph;
- (id)attachmentSummary:(unint64_t)a3;
- (id)bbPreviewFillToSize:(CGSize)a3;
- (id)blastdooredAdaptiveImageGlyphFileURL;
- (id)cachedBlastdooredAdaptiveImageGlyph;
- (id)composeImagesForEntryContentViewWidth:(double)a3 traitCollection:(id)a4 gradientReferenceView:(id)a5;
- (id)fileSizeString;
- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5;
- (id)generateSingleStrikeAdaptiveImageGlyphFromBlastdooredPreviewImage;
- (id)image:(id)a3 withBackgroundColor:(id)a4;
- (id)invisibleInkEffectImageWithPreview:(id)a3;
- (id)pasteboardItemProvider;
- (id)previewCacheKeyWithOrientation:(char)a3;
- (id)previewCachesFileURLWithOrientation:(char)a3 extension:(id)a4 generateIntermediaries:(BOOL)a5;
- (id)previewCachesFileURLWithOrientation:(char)a3 extension:(id)a4 generateIntermediaries:(BOOL)a5 transferGUID:(id)a6;
- (id)previewForTapback;
- (id)previewForWidth:(double)a3 orientation:(char)a4;
- (id)previewMetadata;
- (id)richIcon;
- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4;
- (id)savedPreviewFromURL:(id)a3 forOrientation:(char)a4;
- (id)title;
- (int64_t)commSafetySensitive;
- (void)_refreshSpatialMetadata;
- (void)_sampleImageEdges:(id)a3 usingRect:(CGRect)a4 forMostlyWhitePixels:(unint64_t *)a5 otherPixels:(unint64_t *)a6;
- (void)_transferUpdated:(id)a3;
- (void)cacheAndPersistPreview:(id)a3 orientation:(char)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fetchHighQualityFile:(id)a3;
- (void)generateAndCacheBlastdooredAdaptiveImageGlyph;
- (void)generateOOPPreviewForWidth:(double)a3 orientation:(char)a4;
- (void)mediaIsSpatialBasedOnMetadata:(id)a3;
- (void)mediaIsSpatialUsingPhotosFormats:(id)a3;
- (void)postPreviewDidChangeNotifications;
- (void)prewarmPreviewForWidth:(double)a3 orientation:(char)a4;
- (void)saveAdaptiveImageGlyphToFileCache:(id)a3;
- (void)savePreview:(id)a3 toURL:(id)a4 forOrientation:(char)a5;
- (void)setAdaptiveImageGlyph:(id)a3;
- (void)syndicationIdentifier;
@end

@implementation CKMediaObject

- (id)_balloonViewForClassWithWidth:(double)a3 orientation:(char)a4
{
  v4 = [(CKMediaObject *)self balloonViewClassForWidth:a4 orientation:a3];

  return CKBalloonViewForClass(v4);
}

- (id)_composeImageForBalloonView:(id)a3 colorType:(char)a4 traitCollection:(id)a5
{
  v6 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    [CKMediaObject(Compose) _composeImageForBalloonView:a2 colorType:self traitCollection:v9];
  }

  [v9 setColor:v6];
  v11 = [v9 traitMutationsForSnapshotRendering];
  v12 = [v9 traitOverrides];
  (v11)[2](v11, v12);

  v13 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:v11];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (v9)
  {
    [v9 balloonDescriptorForSnapshotRenderingUsingTraitCollection:v10];
  }

  v35[4] = v40;
  v35[5] = v41;
  v35[6] = v42;
  v35[7] = v43;
  v35[0] = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  [v9 setBalloonDescriptor:v35];
  [v9 prepareForDisplayIfNeeded];
  [v9 layoutIfNeeded];
  [v10 displayScale];
  [v9 ck_recursivelySetContentScaleFactor:?];
  [v9 bounds];
  v15 = v14;
  v17 = v16;
  [v10 displayScale];
  v19 = v18;
  v47.width = v15;
  v47.height = v17;
  UIGraphicsBeginImageContextWithOptions(v47, 0, v19);
  v20 = [v9 layer];
  [v20 renderInContext:UIGraphicsGetCurrentContext()];

  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v21 = v13;
  v22 = [v13 changedTraitsFromTraitCollection:0];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v31 + 1) + 8 * i);
        v28 = [v9 traitOverrides];
        [v28 removeTrait:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v24);
  }

  return v30;
}

- (id)composeImagesForEntryContentViewWidth:(double)a3 traitCollection:(id)a4 gradientReferenceView:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 previewMaxWidth];
  v13 = v12;

  v14 = [(CKMediaObject *)self _balloonViewForClassWithWidth:1 orientation:v13];
  [v14 configureForMediaObject:self previewWidth:1 orientation:v13];
  [v14 prepareForDisplayIfNeeded];
  [v14 setOrientation:1];
  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 balloonCornerRadius];
  [v14 setCornerRadius:?];

  [v14 setIsBeingUsedForSnapshot:1];
  [v14 setCanUseOpaqueMask:0];
  [v14 setHasTail:0];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v14 chevron];
    [v16 setHidden:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [v14 setControlHidden:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v14 prepareForDisplayIfNeeded];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (([v14 isMemberOfClass:objc_opt_class()] & 1) == 0 && (objc_msgSend(v14, "isMemberOfClass:", objc_opt_class()) & 1) == 0 && (objc_msgSend(v14, "isMemberOfClass:", objc_opt_class()) & 1) == 0 && !objc_msgSend(v14, "isMemberOfClass:", objc_opt_class()))
      {
        v43 = +[CKUIBehavior sharedBehaviors];
        [v43 composeBalloonMaxWidthForEntryContentViewWidth:a3];
        v45 = v44;

        [v14 prepareForDisplayIfNeeded];
        [v14 sizeThatFits:{v45, 1.79769313e308}];
        if (v46 >= v45)
        {
          v48 = v45;
        }

        else
        {
          v48 = v46;
        }

        [v14 setFrame:{0.0, 0.0, v48, v47}];
        [v14 layoutIfNeeded];
        [v14 bounds];
        v74.width = v49;
        v74.height = v50;
        UIGraphicsBeginImageContextWithOptions(v74, 0, 0.0);
        if (CKIsRunningInMacCatalyst())
        {
          [v14 bounds];
          v52 = v51;
          v54 = v53;
          [v14 contentScaleFactor];
          v56 = v55;
          v75.width = v52;
          v75.height = v54;
          UIGraphicsBeginImageContextWithOptions(v75, 0, v56);
          [CKTranscriptPrintPageRenderer renderViewWithText:v14 withOffsetVertical:0.0];
        }

        else
        {
          v57 = [v14 layer];
          [v57 renderInContext:UIGraphicsGetCurrentContext()];
        }

        v58 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [v10 setObject:v58 forKey:&unk_1F04E76F8];
        [v10 setObject:v58 forKey:&unk_1F04E7710];
        [v10 setObject:v58 forKey:&unk_1F04E7728];
        [v10 setObject:v58 forKey:&unk_1F04E76E0];

        goto LABEL_33;
      }

      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 composeBalloonMaxWidthForEntryContentViewWidth:a3];
      v33 = v32;

      [v14 sizeThatFits:{v33, 1.79769313e308}];
      if (v34 >= v33)
      {
        v36 = v33;
      }

      else
      {
        v36 = v34;
      }

      [v14 setFrame:{0.0, 0.0, v36, v35}];
      [v14 prepareForDisplayIfNeeded];
      [v14 layoutIfNeeded];
      v37 = [v14 image];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      if (v14)
      {
        [v14 balloonDescriptor];
      }

      BYTE1(v65) = 0;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
        if (!v38)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v39 = [MEMORY[0x1E69DCA80] preferredFormat];
        [v39 setScale:0.0];
        [v39 setPreferredRange:0];
        [v39 setOpaque:0];
        v40 = objc_alloc(MEMORY[0x1E69DCA78]);
        [v14 bounds];
        v41 = [v40 initWithBounds:v39 format:?];
        v59 = MEMORY[0x1E69E9820];
        v60 = 3221225472;
        v61 = __102__CKMediaObject_Compose__composeImagesForEntryContentViewWidth_traitCollection_gradientReferenceView___block_invoke;
        v62 = &unk_1E72EBD00;
        v63 = v14;
        v64 = v37;
        v38 = [v41 imageWithActions:&v59];

        if (!v38)
        {
LABEL_32:

          goto LABEL_33;
        }
      }

      [v10 setObject:v38 forKey:{&unk_1F04E76F8, v59, v60, v61, v62}];
      [v10 setObject:v38 forKey:&unk_1F04E7710];
      [v10 setObject:v38 forKey:&unk_1F04E7728];
      [v10 setObject:v38 forKey:&unk_1F04E76E0];
      goto LABEL_32;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 composeBalloonMaxWidthForEntryContentViewWidth:a3];
  v20 = v19;

  [v14 sizeThatFits:{v20, 1.79769313e308}];
  v23 = v22;
  if (v21 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  [v14 setFrame:{0.0, 0.0, v24, v22}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v14;
    [v25 setGradientReferenceView:v9];
    [v9 gradientFrame];
    [v25 setGradientOverrideFrame:{0.0, v23 - v26}];
  }

  [v14 setNeedsLayout];
  [v14 layoutIfNeeded];
  v27 = [(CKMediaObject *)self _composeImageForBalloonView:v14 colorType:0xFFFFFFFFLL traitCollection:v8];
  [v10 setObject:v27 forKey:&unk_1F04E76E0];
  if (isKindOfClass)
  {
    [v10 setObject:v27 forKey:&unk_1F04E76F8];
    [v10 setObject:v27 forKey:&unk_1F04E7710];
    [v10 setObject:v27 forKey:&unk_1F04E7728];
  }

  else
  {
    v28 = [(CKMediaObject *)self _composeImageForBalloonView:v14 colorType:0 traitCollection:v8];
    [v10 setObject:v28 forKey:&unk_1F04E76F8];

    v29 = [(CKMediaObject *)self _composeImageForBalloonView:v14 colorType:1 traitCollection:v8];
    [v10 setObject:v29 forKey:&unk_1F04E7710];

    v30 = [(CKMediaObject *)self _composeImageForBalloonView:v14 colorType:6 traitCollection:v8];
    [v10 setObject:v30 forKey:&unk_1F04E7728];
  }

LABEL_33:
  CKBalloonViewReuse(v14);

  return v10;
}

uint64_t __102__CKMediaObject_Compose__composeImagesForEntryContentViewWidth_traitCollection_gradientReferenceView___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DC728];
  [*(a1 + 32) bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 composeBalloonCornerRadius];
  v13 = [v2 bezierPathWithRoundedRect:v4 cornerRadius:{v6, v8, v10, v12}];
  [v13 addClip];

  v14 = *(a1 + 40);
  [*(a1 + 32) bounds];

  return [v14 drawInRect:?];
}

- (void)dealloc
{
  [(CKFileTransfer *)self->_transfer mediaObjectRemoved];
  v3.receiver = self;
  v3.super_class = CKMediaObject;
  [(CKMediaObject *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKMediaObject;
  v4 = [(CKMediaObject *)&v8 description];
  v5 = [(CKMediaObject *)self transfer];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (CKMediaObject)initWithTransfer:(id)a3 context:(id)a4 forceInlinePreview:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = CKMediaObject;
  v10 = [(CKMediaObject *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(CKMediaObject *)v10 setTransfer:v8];
    v12 = [(CKMediaObject *)v11 transfer];
    [v12 mediaObjectAdded];

    [(CKMediaObject *)v11 setMessageContext:v9];
    [(CKMediaObject *)v11 setForceInlinePreviewGeneration:v5];
    [(CKMediaObject *)v11 _refreshSpatialMetadata];
    [(CKMediaObject *)v11 setSpatialState:0];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v11 selector:sel__transferUpdated_ name:*MEMORY[0x1E69A5998] object:0];
  }

  return v11;
}

- (void)_transferUpdated:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 guid];
  v7 = [(CKFileTransfer *)self->_transfer guid];
  if ([v6 isEqualToString:v7])
  {
    v8 = [v5 transferState];

    if (v8 == 5)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v5 guid];
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Transfer finished for guid: %@; refreshing spatial metadata", &v11, 0xCu);
        }
      }

      [(CKMediaObject *)self _refreshSpatialMetadata];
    }
  }

  else
  {
  }
}

- (void)mediaIsSpatialBasedOnMetadata:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Checking spatial state using metadata for %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [(CKMediaObject *)self previewFilenameExtension];
  v7 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:0 extension:v6 generateIntermediaries:0];

  v8 = +[CKMediaObject spatialMetadataProcessingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CKMediaObject_mediaIsSpatialBasedOnMetadata___block_invoke;
  block[3] = &unk_1E72EFD00;
  v13 = v4;
  p_buf = &buf;
  v12 = v7;
  v9 = v4;
  v10 = v7;
  dispatch_async(v8, block);

  _Block_object_dispose(&buf, 8);
}

void __47__CKMediaObject_mediaIsSpatialBasedOnMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) URLByDeletingPathExtension];
  v6 = [v2 URLByAppendingPathExtension:@"plist"];

  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7090]];
      *(*(*(a1 + 48) + 8) + 24) = [v5 BOOLValue];
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)mediaIsSpatialUsingPhotosFormats:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Checking spatial state using PhotosFormats for %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x2020000000;
  v19 = 0;
  if (![(CKMediaObject *)self isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v15 = 138412290;
        v16 = self;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Not checking mediaIsSpatialUsingPhotosFormats because media isn't from self: %@", v15, 0xCu);
      }
    }

    v4[2](v4, *(*(&buf + 1) + 24));
  }

  v7 = [(CKMediaObject *)self fileURL];
  v8 = +[CKMediaObject spatialMetadataProcessingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CKMediaObject_mediaIsSpatialUsingPhotosFormats___block_invoke;
  block[3] = &unk_1E72EFD00;
  v13 = v4;
  p_buf = &buf;
  v12 = v7;
  v9 = v4;
  v10 = v7;
  dispatch_async(v8, block);

  _Block_object_dispose(&buf, 8);
}

void __50__CKMediaObject_mediaIsSpatialUsingPhotosFormats___block_invoke(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69C0718]) initWithMediaURL:a1[4] detail:1 timeZoneLookup:0 shouldCache:1];
  *(*(a1[6] + 8) + 24) = [v2 isSpatialMedia];
  (*(a1[5] + 16))();
}

+ (id)spatialMetadataProcessingQueue
{
  if (spatialMetadataProcessingQueue_once != -1)
  {
    +[CKMediaObject spatialMetadataProcessingQueue];
  }

  v3 = spatialMetadataProcessingQueue_sSpatialQueue;

  return v3;
}

void __47__CKMediaObject_spatialMetadataProcessingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Messages.CKMediaObjectSpatialMetadataProcessingQueue", v2);
  v1 = spatialMetadataProcessingQueue_sSpatialQueue;
  spatialMetadataProcessingQueue_sSpatialQueue = v0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(CKMediaObject *)self transferGUID];
    v8 = [v4 transferGUID];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)transferGUID
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 guid];

  return v3;
}

- (int64_t)commSafetySensitive
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 commSafetySensitive];

  return v3;
}

- (NSData)data
{
  v2 = [(CKMediaObject *)self fileURL];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v2 options:8 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)attachmentSummary:(unint64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = IMSharedUtilitiesFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"%lu Files" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

- (NSURL)fileURL
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 fileURL];

  return v3;
}

- (NSString)filename
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 filename];

  return v3;
}

- (NSDictionary)transcoderUserInfo
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 transcoderUserInfo];

  return v3;
}

- (NSString)mimeType
{
  v3 = [MEMORY[0x1E69A60D8] defaultHFSFileManager];
  v4 = [(CKMediaObject *)self filename];
  v5 = [v3 MIMETypeOfPath:v4];

  return v5;
}

- (BOOL)isDirectory
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 isDirectory];

  return v3;
}

- (NSString)UTIType
{
  if (-[CKMediaObject isDirectory](self, "isDirectory") && (-[CKMediaObject filename](self, "filename"), v3 = objc_claimAutoreleasedReturnValue(), [v3 pathExtension], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v3, !v5))
  {
    v8 = *MEMORY[0x1E69637D0];
  }

  else
  {
    v6 = +[CKMediaObjectManager sharedInstance];
    v7 = [(CKMediaObject *)self filename];
    v8 = [v6 UTITypeForFilename:v7];
  }

  return v8;
}

- (id)pasteboardItemProvider
{
  v3 = [(CKMediaObject *)self fileURL];
  v4 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithContentsOfURL:v3];
  v5 = [(CKMediaObject *)self filename];
  [v4 setSuggestedName:v5];

  return v4;
}

- (id)rtfDocumentItemsWithFormatString:(id)a3 selectedTextRange:(_NSRange)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CKMediaObject *)self fileURL];
  if (!v6)
  {
    v13 = objc_alloc(MEMORY[0x1E69DB7F0]);
    v14 = [(CKMediaObject *)self data];
    v15 = [(CKMediaObject *)self UTIType];
    v10 = [v13 initWithData:v14 ofType:v15];

LABEL_13:
    v7 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
    v18 = v7;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    goto LABEL_14;
  }

  v17 = 0;
  v7 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v6 options:0 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v10 setFileWrapper:v7];

    goto LABEL_13;
  }

  v10 = v8;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Unable to create file wrapper for NSItemProvider with error: %@", buf, 0xCu);
    }
  }

  v12 = MEMORY[0x1E695E0F0];
LABEL_14:

  return v12;
}

- (BOOL)generatePreviewOutOfProcess
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObject *)self UTIType];
  v4 = IMIsSupportedUTIType();

  v5 = [(CKMediaObject *)self transfer];
  v6 = [v5 isFileURLFinalized];

  v7 = [(CKMediaObject *)self forceInlinePreviewGeneration];
  if (v4)
  {
    v8 = v6 & !v7;
  }

  else
  {
    v8 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11[0] = 67109888;
      v11[1] = v8;
      v12 = 1024;
      v13 = v4;
      v14 = 1024;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Generating Preview OOP: %{BOOL}d. (isSupported: %{BOOL}d , isFinalized: %{BOOL}d , forceInline: %{BOOL}d)", v11, 0x1Au);
    }
  }

  return v8;
}

- (void)fetchHighQualityFile:(id)a3
{
  v4 = a3;
  v5 = [(CKMediaObject *)self highQualityFetchInProgressGroup];

  if (v5)
  {
    v6 = [(CKMediaObject *)self highQualityFetchInProgressGroup];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__CKMediaObject_fetchHighQualityFile___block_invoke;
    block[3] = &unk_1E72ED1C8;
    block[4] = self;
    v17 = v4;
    dispatch_group_notify(v6, MEMORY[0x1E69E96A0], block);
  }

  v7 = [(CKMediaObject *)self cachedHighQualityFileURL];

  if (v7)
  {
    if (v4)
    {
      v8 = [(CKMediaObject *)self cachedHighQualityFileURL];
      (*(v4 + 2))(v4, 1, v8);
    }
  }

  else
  {
    v9 = [(CKMediaObject *)self transfer];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = dispatch_group_create();
      [(CKMediaObject *)self setHighQualityFetchInProgressGroup:v11];

      v12 = [(CKMediaObject *)self highQualityFetchInProgressGroup];
      dispatch_group_enter(v12);

      v13 = [(CKMediaObject *)self transfer];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __38__CKMediaObject_fetchHighQualityFile___block_invoke_2;
      v14[3] = &unk_1E72EFD28;
      v14[4] = self;
      v15 = v4;
      [v13 fetchHighQualityFile:v14];
    }

    else if (v4)
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }
}

void __38__CKMediaObject_fetchHighQualityFile___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    [*(a1 + 32) setCachedHighQualityFileURL:v7];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v7);
  }

  v6 = [*(a1 + 32) highQualityFetchInProgressGroup];
  dispatch_group_leave(v6);

  [*(a1 + 32) setHighQualityFetchInProgressGroup:0];
}

- (NSString)syndicationIdentifier
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [(CKMediaObject *)self transferGUID];
  if (v2)
  {
    v3 = [MEMORY[0x1E69A5B80] sharedInstance];
    v4 = [v3 transferForGUID:v2];

    v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v6 = [v5 isLQMHQEnabled];

    if (v6)
    {
      v7 = [v4 userInfo];
      v8 = [v7 objectForKey:@"isHQTransfer"];
      v9 = [v8 stringValue];
      v10 = [v9 isEqualToString:@"YES"];
    }

    else
    {
      v10 = 0;
    }

    if (!IMFileTransferGUIDIsTemporary())
    {
      v11 = v2;
LABEL_33:
      v20 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v21 = [v20 isLQMHQEnabled];

      if ((v21 & v10) == 1)
      {
        v22 = [v11 stringByAppendingString:@"hq"];
      }

      else
      {
        v22 = v11;
      }

      v12 = v22;

      goto LABEL_37;
    }

    if (!v4)
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObject syndicationIdentifier];
      }

      v11 = 0;
      goto LABEL_33;
    }

    v13 = [MEMORY[0x1E69A5B80] sharedInstance];
    v14 = [v13 chatForTransfer:v4];

    if (!v14)
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObject syndicationIdentifier];
      }

      v11 = 0;
      goto LABEL_32;
    }

    v15 = [v4 messageGUID];
    v16 = [v14 messageItemForGUID:v15];
    if (v16)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v25 = 138412546;
          v26 = v2;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Found message item for transfer with GUID %@, messageGUID: %@", &v25, 0x16u);
        }
      }

      if ([v16 messagePartIndexForAttachmentMessagePartWithTransferGUID:v2] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
        goto LABEL_31;
      }

      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObject syndicationIdentifier];
      }
    }

    else
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v24 = [v14 guid];
        v25 = 138412802;
        v26 = v2;
        v27 = 2112;
        v28 = v15;
        v29 = 2112;
        v30 = v24;
        _os_log_error_impl(&dword_19020E000, v18, OS_LOG_TYPE_ERROR, "Could not get message item to derive attachment index. transferGUID: %@. messageGUID: %@. chat: %@", &v25, 0x20u);
      }
    }

    v11 = 0;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [CKMediaObject syndicationIdentifier];
  }

  v12 = 0;
LABEL_37:

  return v12;
}

- (BOOL)isFromMe
{
  v2 = [(CKMediaObject *)self messageContext];
  v3 = [v2 isFromMe];

  return v3;
}

- (BOOL)shouldSuppressPreview
{
  result = 1;
  if (![(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v4 = [(CKMediaObject *)self messageContext];
    v5 = [v4 isFromMe];

    if (v5)
    {
      return 0;
    }

    v6 = [(CKMediaObject *)self messageContext];
    v7 = [v6 chatContext];
    v8 = [v7 filterCategory];

    v9 = [(CKMediaObject *)self messageContext];
    LODWORD(v7) = [v9 isSpam];

    if (!v7 || (v8 - 5) >= 0xFFFFFFFFFFFFFFFELL)
    {
      if ([(CKMediaObject *)self supportsUnknownSenderPreview])
      {
        return 0;
      }

      v10 = [(CKMediaObject *)self messageContext];
      v11 = [v10 chatContext];
      v12 = [v11 hasResponded];

      if (v12)
      {
        return 0;
      }

      v13 = [(CKMediaObject *)self messageContext];
      v14 = [v13 isSenderUnknown];

      if ((v14 & 1) == 0)
      {
        v15 = [(CKMediaObject *)self messageContext];
        v16 = [v15 isSenderUnauthenticated];

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (IMHandle)senderHandle
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 IMMessage];
  v4 = [v3 sender];

  return v4;
}

- (NSURL)previewItemURL
{
  v3 = [(CKMediaObject *)self cachedHighQualityFileURL];

  if (v3)
  {
    [(CKMediaObject *)self cachedHighQualityFileURL];
  }

  else
  {
    [(CKMediaObject *)self fileURL];
  }
  v4 = ;

  return v4;
}

- (BOOL)isPromisedItem
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 isRestoring];

  return v3;
}

+ (id)mediaClasses
{
  if (mediaClasses_once != -1)
  {
    +[CKMediaObject mediaClasses];
  }

  v3 = mediaClasses_classes;

  return v3;
}

void __29__CKMediaObject_mediaClasses__block_invoke()
{
  v2[15] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v2[7] = objc_opt_class();
  v2[8] = objc_opt_class();
  v2[9] = objc_opt_class();
  v2[10] = objc_opt_class();
  v2[11] = objc_opt_class();
  v2[12] = objc_opt_class();
  v2[13] = objc_opt_class();
  v2[14] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:15];
  v1 = mediaClasses_classes;
  mediaClasses_classes = v0;
}

- (CKMediaObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CKMediaObject;
  v5 = [(CKMediaObject *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKMEDIAOBJECT_FILEURL_KEY"];
    [(CKMediaObject *)v5 setFileURL:v6];

    -[CKMediaObject setForceInlinePreviewGeneration:](v5, "setForceInlinePreviewGeneration:", [v4 decodeBoolForKey:@"CKMEDIAOBJECT_FORCEINLINEPREVIEWGENERATION_KEY"]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKMEDIAOBJECT_TRANSFERGUID_KEY"];
    [(CKMediaObject *)v5 setTransferGUID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKMEDIAOBJECT_DATA_KEY"];
    [(CKMediaObject *)v5 setData:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKMEDIAOBJECT_FILENAME_KEY"];
    [(CKMediaObject *)v5 setFilename:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKMEDIAOBJECT_MIMETYPE_KEY"];
    [(CKMediaObject *)v5 setMimeType:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKMEDIAOBJECT_UTITYPE_KEY"];
    [(CKMediaObject *)v5 setUTIType:v11];

    -[CKMediaObject setGeneratePreviewOutOfProcess:](v5, "setGeneratePreviewOutOfProcess:", [v4 decodeBoolForKey:@"CKMEDIAOBJECT_GENERATEPREIVIEWOOP_KEY"]);
    -[CKMediaObject setIsPhotosCompatible:](v5, "setIsPhotosCompatible:", [v4 decodeBoolForKey:@"CKMEDIAOBJECT_ISPHOTOSCOMPTAIBLE_KEY"]);
    -[CKMediaObject setValidatePreviewFormat:](v5, "setValidatePreviewFormat:", [v4 decodeBoolForKey:@"CKMEDIAOBJECT_VALIDATEPREVIEWFORMAT_KEY"]);
    -[CKMediaObject setIsFromMe:](v5, "setIsFromMe:", [v4 decodeBoolForKey:@"CKMEDIAOBJECT_ISFROMME_KEY"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(CKMediaObject *)self fileURL];
  [v10 encodeObject:v4 forKey:@"CKMEDIAOBJECT_FILEURL_KEY"];

  [v10 encodeBool:-[CKMediaObject forceInlinePreviewGeneration](self forKey:{"forceInlinePreviewGeneration"), @"CKMEDIAOBJECT_FORCEINLINEPREVIEWGENERATION_KEY"}];
  v5 = [(CKMediaObject *)self transferGUID];
  [v10 encodeObject:v5 forKey:@"CKMEDIAOBJECT_TRANSFERGUID_KEY"];

  v6 = [(CKMediaObject *)self data];
  [v10 encodeObject:v6 forKey:@"CKMEDIAOBJECT_DATA_KEY"];

  v7 = [(CKMediaObject *)self filename];
  [v10 encodeObject:v7 forKey:@"CKMEDIAOBJECT_FILENAME_KEY"];

  v8 = [(CKMediaObject *)self mimeType];
  [v10 encodeObject:v8 forKey:@"CKMEDIAOBJECT_MIMETYPE_KEY"];

  v9 = [(CKMediaObject *)self UTIType];
  [v10 encodeObject:v9 forKey:@"CKMEDIAOBJECT_UTITYPE_KEY"];

  [v10 encodeBool:-[CKMediaObject generatePreviewOutOfProcess](self forKey:{"generatePreviewOutOfProcess"), @"CKMEDIAOBJECT_GENERATEPREIVIEWOOP_KEY"}];
  [v10 encodeBool:-[CKMediaObject isPhotosCompatible](self forKey:{"isPhotosCompatible"), @"CKMEDIAOBJECT_ISPHOTOSCOMPTAIBLE_KEY"}];
  [v10 encodeBool:-[CKMediaObject validatePreviewFormat](self forKey:{"validatePreviewFormat"), @"CKMEDIAOBJECT_VALIDATEPREVIEWFORMAT_KEY"}];
  [v10 encodeBool:-[CKMediaObject isFromMe](self forKey:{"isFromMe"), @"CKMEDIAOBJECT_ISFROMME_KEY"}];
}

- (void)_refreshSpatialMetadata
{
  if (![(CKMediaObject *)self spatialState])
  {
    [(CKMediaObject *)self setSpatialState:1];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__CKMediaObject_Internal___refreshSpatialMetadata__block_invoke;
    aBlock[3] = &unk_1E72EB9C8;
    aBlock[4] = self;
    v3 = _Block_copy(aBlock);
    if ([(CKMediaObject *)self isFromMe])
    {
      [(CKMediaObject *)self mediaIsSpatialUsingPhotosFormats:v3];
    }

    else
    {
      [(CKMediaObject *)self mediaIsSpatialBasedOnMetadata:v3];
    }
  }
}

void __50__CKMediaObject_Internal___refreshSpatialMetadata__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__CKMediaObject_Internal___refreshSpatialMetadata__block_invoke_2;
  v2[3] = &unk_1E72ED8D8;
  v3 = a2;
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __50__CKMediaObject_Internal___refreshSpatialMetadata__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Determined spatial state = %@ for %p", &v7, 0x16u);
    }
  }

  if (*(a1 + 40))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  result = [*(a1 + 32) setSpatialState:v5];
  if (*(a1 + 40) == 1)
  {
    return [*(a1 + 32) postPreviewDidChangeNotifications];
  }

  return result;
}

- (IMPreviewConstraints)_previewConstraintsForWidth:(SEL)a3
{
  *&retstr->var3 = 0;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;
  retstr->var2 = v8;

  retstr->var0 = v9 * a4;
  retstr->var1.width = v9 * 50.0;
  retstr->var1.height = v9 * 50.0;
  v12 = [(CKMediaObject *)self transfer];
  retstr->var3 = [v12 isSticker];
  retstr->var5 = [v12 isAdaptiveImageGlyph];
  if ([(CKMediaObject *)self conformsToProtocol:&unk_1F05A0E70])
  {
    v10 = [(CKMediaObject *)self supportsPreviewMetadata];
  }

  else
  {
    v10 = 1;
  }

  retstr->var4 = v10;

  return result;
}

- (BOOL)isPreviewable
{
  v2 = objc_opt_class();

  return [v2 isPreviewable];
}

- (Class)balloonViewClassForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self shouldSuppressPreview])
  {
    v7 = [(CKMediaObject *)self placeholderBalloonViewClass];
    goto LABEL_30;
  }

  v8 = [(CKMediaObject *)self transfer];
  if (([v8 isSticker] & 1) == 0)
  {

    goto LABEL_7;
  }

  v9 = [(CKMediaObject *)self transfer];
  v10 = [v9 fileURL];

  if (!v10)
  {
LABEL_7:
    v12 = [(CKMediaObject *)self previewCacheKeyWithOrientation:v4];
    v13 = [(CKMediaObject *)self previewDispatchCache];
    v14 = [v13 cachedPreviewForKey:v12];
    if (v14)
    {
      v11 = [(CKMediaObject *)self previewBalloonViewClass];
      if (v11)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v15 = [(CKMediaObject *)self previewFilenameExtension];
    v16 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:v4 extension:v15 generateIntermediaries:0];

    v17 = [(CKMediaObject *)self transfer];
    if ([v17 isDownloadable])
    {
    }

    else
    {
      v18 = [(CKMediaObject *)self validPreviewExistsAtURL:v16];

      if (v18)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v24 = 138412290;
            v25 = 0;
            _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Got disk preview exists preview, class is %@", &v24, 0xCu);
          }
        }

        v11 = [(CKMediaObject *)self previewBalloonViewClass];

        if (v11)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = +[CKUIBehavior sharedBehaviors];
      [v20 mapPreviewMaxWidth];
      a3 = v21;
    }

    v22 = [(CKMediaObject *)self previewForWidth:v4 orientation:a3];
    if (!v22 || (v11 = [(CKMediaObject *)self previewBalloonViewClass], v22, !v11))
    {
      v11 = [(CKMediaObject *)self placeholderBalloonViewClass];
    }

    goto LABEL_24;
  }

  v11 = [(CKMediaObject *)self inlineStickerBalloonViewClass];
LABEL_25:
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v11 = [(CKMediaObject *)self placeholderBalloonViewClass];
  }

  if (!v11)
  {
    v11 = [(CKMediaObject *)self balloonViewClass];
  }

  v7 = v11;
LABEL_30:

  return v7;
}

- (Class)placeholderBalloonViewClass
{
  v3 = [(CKMediaObject *)self transfer];
  v4 = [v3 isFromMomentShare];

  if (v4)
  {
    objc_opt_class();
  }

  else
  {
    [(CKMediaObject *)self balloonViewClass];
  }
  v5 = ;

  return v5;
}

- (id)title
{
  v3 = [(CKMediaObject *)self filename];
  v4 = CKIsAttachmentFallbackFilename(v3);

  if (!v4 || (v5 = UTTypeCopyDescription([(CKMediaObject *)self UTIType])) == 0)
  {
    v6 = [(CKMediaObject *)self filename];
    v5 = CKAttachmentTitleFromFilename();
  }

  return v5;
}

- (UIImage)cachedIcon
{
  v2 = [(CKMediaObject *)self UTIType];
  if (v2)
  {
    v3 = [objc_opt_class() iconCache];
    v4 = [v3 objectForKeyedSubscript:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIImage)icon
{
  v3 = [objc_opt_class() iconCache];
  v4 = [(CKMediaObject *)self UTIType];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:v4];
    if (!v5)
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      [v6 mediaObjectCachedIconSize];
      v8 = v7;
      v10 = v9;

      v11 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v11 scale];
      v13 = v12;

      v5 = [(CKMediaObject *)self _generateIconWithSize:v8 scale:v10, v13];
      if (v5)
      {
        [v3 setObject:v5 forKeyedSubscript:v4];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)generateAndCacheIconForMediaObjectWithUTIType:(id)a3 fileURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __91__CKMediaObject_Display__generateAndCacheIconForMediaObjectWithUTIType_fileURL_completion___block_invoke;
  v14[3] = &unk_1E72EDE78;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v18 = a1;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __91__CKMediaObject_Display__generateAndCacheIconForMediaObjectWithUTIType_fileURL_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 40) copy];
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 mediaObjectCachedIconSize];
  v6 = v5;
  v8 = v7;

  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = +[CKPreviewDispatchCache defaultPreviewPriority];
  v13 = +[CKMediaObject iconCache];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__CKMediaObject_Display__generateAndCacheIconForMediaObjectWithUTIType_fileURL_completion___block_invoke_2;
  v23[3] = &unk_1E72F7618;
  v14 = *(a1 + 56);
  v25 = v2;
  v26 = v14;
  v27 = v6;
  v28 = v8;
  v29 = v11;
  v24 = v3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __91__CKMediaObject_Display__generateAndCacheIconForMediaObjectWithUTIType_fileURL_completion___block_invoke_3;
  v19[3] = &unk_1E72EDA68;
  v20 = v13;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v13;
  v17 = v2;
  v18 = v3;
  [v16 enqueueGenerationBlock:v23 completion:v19 withPriority:v12 forKey:v15];
}

void __91__CKMediaObject_Display__generateAndCacheIconForMediaObjectWithUTIType_fileURL_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

+ (id)_generateIconWithSize:(CGSize)a3 scale:(double)a4 type:(id)a5 fileURL:(id)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc(MEMORY[0x1E69A8A00]);
  if (v11)
  {
    v13 = [v12 initWithURL:v11];
  }

  else
  {
    v13 = [v12 initWithType:v10];
  }

  v14 = v13;
  v15 = objc_opt_new();
  [v15 setSize:{width, height}];
  [v15 setScale:a4];
  if (CKIsRunningInMacCatalyst())
  {
    [v15 setVariantOptions:1];
  }

  v16 = [v14 prepareImageForDescriptor:v15];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x1E69DCAB8];
    v19 = [v16 CGImage];
    [v17 scale];
    v21 = [v18 imageWithCGImage:v19 scale:0 orientation:v20 + v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_generateIconWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_opt_class();
  v9 = [(CKMediaObject *)self UTIType];
  v10 = [v9 copy];
  v11 = [(CKMediaObject *)self fileURL];
  v12 = [v11 copy];
  v13 = [v8 _generateIconWithSize:v10 scale:v12 type:width fileURL:{height, a4}];

  return v13;
}

- (BOOL)_shouldDenyUTITypeFromRichIcon
{
  v3 = [(CKMediaObject *)self UTIType];
  v4 = UTTypeConformsTo(v3, *MEMORY[0x1E69638F0]);
  v5 = [(CKMediaObject *)self UTIType];
  v6 = UTTypeConformsTo(v5, *MEMORY[0x1E69637E8]);
  v7 = [(CKMediaObject *)self UTIType];
  v8 = UTTypeConformsTo(v7, *MEMORY[0x1E6963898]);
  v9 = UTTypeConformsTo([(CKMediaObject *)self UTIType], @"public.xhtml");
  v10 = [(CKMediaObject *)self UTIType];
  v11 = UTTypeConformsTo(v10, *MEMORY[0x1E6963858]);
  v12 = UTTypeConformsTo([(CKMediaObject *)self UTIType], @"com.adobe.illustrator.ai-image");
  v13 = UTTypeConformsTo([(CKMediaObject *)self UTIType], @"com.pixar.universal-scene-description-mobile");
  v14 = UTTypeConformsTo([(CKMediaObject *)self UTIType], @"com.apple.reality");
  if (v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v6 == 0;
  }

  return !v15 || v8 != 0 || v9 != 0 || v11 != 0 || v12 != 0 || (v13 | v14) != 0;
}

- (id)richIcon
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObject *)self messageContext];
  v4 = [v3 isSenderUnknown];

  if ((v4 & 1) != 0 || [(CKMediaObject *)self generatePreviewOutOfProcess]|| [(CKMediaObject *)self shouldSuppressPreview])
  {
LABEL_4:
    v5 = 0;
    goto LABEL_5;
  }

  if ([MEMORY[0x1E69A8020] deviceIsLockedDown])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Skipping rich icon generation - we are in Lockdown mode", buf, 2u);
      }
    }

    goto LABEL_4;
  }

  v8 = CKRichIconPreviewCacheKey(self);
  v9 = [(CKMediaObject *)self previewDispatchCache];
  v10 = [v9 cachedPreviewForKey:v8];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Got cached rich icon %@", buf, 0xCu);
    }
  }

  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = v10 == v12;

  if (v13)
  {
    goto LABEL_25;
  }

  if (v10 || ([v9 isGeneratingPreviewForKey:v8] & 1) != 0)
  {
    goto LABEL_29;
  }

  if (![(CKMediaObject *)self _shouldDenyUTITypeFromRichIcon])
  {
    v16 = [(CKMediaObject *)self fileURL];
    if (!v16)
    {
      v17 = [(CKMediaObject *)self transfer];
      v16 = [v17 thumbnailURL];

      if (!v16)
      {
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Not generating rich icon due to nil fileURL", buf, 2u);
          }
        }

        goto LABEL_25;
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __34__CKMediaObject_Display__richIcon__block_invoke;
    v24[3] = &unk_1E72F7668;
    v25 = v16;
    v26 = self;
    v27 = v9;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __34__CKMediaObject_Display__richIcon__block_invoke_249;
    v20[3] = &unk_1E72EB880;
    v21 = v27;
    v22 = v8;
    v23 = self;
    v18 = v16;
    [v21 enqueueGenerationBlock:v24 completion:v20 withPriority:0 forKey:v22];

LABEL_29:
    v5 = v10;
    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(CKMediaObject *)self UTIType];
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Don't generate rich icon for %@", buf, 0xCu);
    }
  }

LABEL_25:
  v5 = 0;
LABEL_30:

LABEL_5:

  return v5;
}

id __34__CKMediaObject_Display__richIcon__block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__72;
  v45 = __Block_byref_object_dispose__72;
  v46 = 0;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 attachmentBalloonSize];
  v6 = v5;
  v8 = v7;

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 attachmentBalloonRichIconInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = [objc_alloc(MEMORY[0x1E697A0E0]) initWithFileAtURL:*(a1 + 32) size:4 scale:v6 - (v13 + v17) representationTypes:{v8 - (v11 + v15), v20}];
  [v21 setShouldUseRestrictedExtension:1];
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v48 = v21;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Requesting rich icon generation with request %@", buf, 0xCu);
    }
  }

  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  v24 = [*(a1 + 40) _qlThumbnailGeneratorSharedGenerator];
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __34__CKMediaObject_Display__richIcon__block_invoke_245;
  v36 = &unk_1E72F7640;
  v40 = &v41;
  v37 = *(a1 + 48);
  v25 = v3;
  v38 = v25;
  v26 = v23;
  v39 = v26;
  [v24 generateBestRepresentationForRequest:v21 completionHandler:&v33];

  v27 = dispatch_time(0, 3000000000);
  if (dispatch_group_wait(v26, v27))
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v48 = v21;
        _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Timed out getting rich icon from QuickLookThumbnailing for request %@", buf, 0xCu);
      }
    }

    v29 = *(a1 + 48);
    v30 = [MEMORY[0x1E695DFB0] null];
    [v29 setCachedPreview:v30 key:v25];
  }

  v31 = v42[5];

  _Block_object_dispose(&v41, 8);

  return v31;
}

void __34__CKMediaObject_Display__richIcon__block_invoke_245(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 UIImage];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(*(a1 + 56) + 8) + 40);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Generation completed with result %@ error %@", &v15, 0x16u);
    }
  }

  v12 = *(*(*(a1 + 56) + 8) + 40);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v14 = v13;
  [*(a1 + 32) setCachedPreview:v13 key:*(a1 + 40)];
  dispatch_group_leave(*(a1 + 48));
}

void __34__CKMediaObject_Display__richIcon__block_invoke_249(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__CKMediaObject_Display__richIcon__block_invoke_2;
    v5[3] = &unk_1E72EB8D0;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = v3;
    v7 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __34__CKMediaObject_Display__richIcon__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Posting rich icon change notif for generating rich icon for key: %@", &v5, 0xCu);
    }
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"CKRichIconDidChangeNotification" object:*(a1 + 40)];
}

- (BOOL)shouldShowViewer
{
  if (![(CKMediaObject *)self shouldBeQuickLooked])
  {
    return 0;
  }

  v3 = [(CKMediaObject *)self transfer];
  if ([v3 isFileDataReady])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isRestoring];
  }

  return v4;
}

- (BOOL)shouldBeQuickLooked
{
  v3 = [(CKMediaObject *)self transfer];
  if ([CKCommSafetyHelper shouldDisableTranscriptCapabilitiesForCKFileTransfer:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E697A0C8] canPreviewItem:self];
  }

  return v4;
}

- (BOOL)canPerformQuickAction
{
  if ([(CKMediaObject *)self isFromMe])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(CKMediaObject *)self canExport];
    if (v3)
    {
      LOBYTE(v3) = [(CKMediaObject *)self mediaType]== 3 || [(CKMediaObject *)self mediaType]== 2;
    }
  }

  return v3;
}

- (id)previewCacheKeyWithOrientation:(char)a3
{
  v4 = [(CKMediaObject *)self transfer];
  v5 = [v4 isSticker];

  if (v5)
  {
    CKStickerPreviewCacheKey(self);
  }

  else
  {
    [(CKMediaObject *)self transferGUID];
  }
  v6 = ;

  return v6;
}

- (double)defaultPreviewWidth
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 previewMaxWidth];
  v4 = v3;

  return v4;
}

- (id)previewCachesFileURLWithOrientation:(char)a3 extension:(id)a4 generateIntermediaries:(BOOL)a5 transferGUID:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [(CKMediaObject *)self fileURL];
  v11 = IMAttachmentPreviewFileURL();

  if (!v11)
  {
    v12 = [(CKMediaObject *)self transfer];
    [v12 filename];
    [(CKMediaObject *)self mimeType];
    [(CKMediaObject *)self UTIType];
    v13 = IMDCopyAttachmentPersistentPath();
    if (v13)
    {
      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
    }

    else
    {
      v14 = 0;
    }

    v11 = IMAttachmentPreviewFileURL();
  }

  return v11;
}

- (id)previewCachesFileURLWithOrientation:(char)a3 extension:(id)a4 generateIntermediaries:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = [(CKMediaObject *)self transfer];
  v10 = [v9 guid];
  v11 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:v6 extension:v8 generateIntermediaries:v5 transferGUID:v10];

  return v11;
}

- (BOOL)transcoderPreviewGenerationFailed
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObject *)self transfer];
  v4 = [v3 isRejected];

  if (v4)
  {
    v5 = IMOSLoggingEnabled();
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "transcoderPreviewGenerationFailed: Transfer Rejected for preview", &v17, 2u);
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = [(CKMediaObject *)self transfer];
    v8 = [v7 previewGenerationState];

    if (v8 == 2)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [(CKMediaObject *)self transfer];
          v11 = [v10 guid];
          v17 = 138412290;
          v18 = v11;
          _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "transcoderPreviewGenerationFailed: Preview not allowed for transfer %@ due to failure", &v17, 0xCu);
        }
      }
    }

    else
    {
      v12 = +[CKMediaObject transferGUIDSFailingPreviewGeneration];
      v13 = [(CKMediaObject *)self transferGUID];
      v14 = [v12 containsObject:v13];

      if (!v14)
      {
LABEL_17:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "transcoderPreviewGenerationFailed: Failed to generate preview OOP from CKMediaObject", &v17, 2u);
        }
      }
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (id)fileSizeString
{
  v2 = [(CKMediaObject *)self transfer];
  v3 = [v2 totalBytes];

  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAF0] stringFromByteCount:v3 countStyle:0];
  }

  return v4;
}

- (void)cacheAndPersistPreview:(id)a3 orientation:(char)a4
{
  v4 = a4;
  v6 = a3;
  if (CKIsRunningInFullCKClient())
  {
    v7 = [(CKMediaObject *)self previewCacheKeyWithOrientation:v4];
    v8 = [(CKMediaObject *)self previewDispatchCache];
    [v8 setCachedPreview:v6 key:v7];
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKMediaObject_Display__cacheAndPersistPreview_orientation___block_invoke;
    block[3] = &unk_1E72EBBC0;
    block[4] = self;
    v12 = v4;
    v11 = v6;
    dispatch_async(v9, block);
  }
}

void __61__CKMediaObject_Display__cacheAndPersistPreview_orientation___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [v2 previewFilenameExtension];
  v5 = [v2 previewCachesFileURLWithOrientation:v3 extension:v4 generateIntermediaries:1];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Persisting preview to URL %@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) savePreview:*(a1 + 40) toURL:v5 forOrientation:*(a1 + 48)];
}

- (id)invisibleInkEffectImageWithPreview:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(CKMediaObject *)self transferGUID];
  v7 = [v5 stringWithFormat:@"%@-invisibleInk", v6];

  v8 = [(CKMediaObject *)self previewDispatchCache];
  v9 = [v8 cachedPreviewForKey:v7];
  if (!v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v4;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_8:
        v9 = 0;
        goto LABEL_9;
      }

      v10 = [v4 image];
    }

    v11 = v10;
    if (v10)
    {
      v12 = +[CKUIBehavior sharedBehaviors];
      v13 = [v12 theme];
      v14 = [v13 transcriptBackgroundColor];
      v9 = [(CKMediaObject *)self image:v11 withBackgroundColor:v14];

      [v8 setCachedPreview:v9 key:v7];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (id)image:(id)a3 withBackgroundColor:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 size];
  v8 = v7;
  v10 = v9;
  [v6 scale];
  v12 = v11;
  v24.width = v8;
  v24.height = v10;
  UIGraphicsBeginImageContextWithOptions(v24, 0, v12);
  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = [v5 cgColor];

  CGContextSetFillColorWithColor(CurrentContext, v14);
  [v6 size];
  v16 = v15;
  [v6 size];
  v25.size.height = v17;
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v16;
  CGContextFillRect(CurrentContext, v25);
  [v6 size];
  v19 = v18;
  [v6 size];
  [v6 drawInRect:{0.0, 0.0, v19, v20}];

  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v21;
}

- (id)previewForTapback
{
  +[CKTapbackStickerView previewWidth];

  return [(CKMediaObject *)self previewForWidth:0 orientation:?];
}

- (id)previewForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v7 = [(CKMediaObject *)self previewCacheKeyWithOrientation:?];
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(CKMediaObject *)self transferGUID];
      v10 = [(CKMediaObject *)self filename];
      *buf = 134218754;
      v54 = self;
      v55 = 2112;
      v56 = v9;
      v57 = 2112;
      v58 = v10;
      v59 = 1024;
      LODWORD(v60) = v4;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] previewForOrientation:%d", buf, 0x26u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v11 = [(CKMediaObject *)self transferGUID];
    v50 = [(CKMediaObject *)self filename];
    v52 = v4;
    v48 = self;
    v49 = v11;
    _CKLog();
  }

  if ([(CKMediaObject *)self shouldSuppressPreview:v48])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Preview generation aborted - shouldSuppressPreview is YES", buf, 2u);
      }

LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Preview generation failed - returning no preview", buf, 2u);
      }

      goto LABEL_17;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_89;
  }

  v14 = [(CKMediaObject *)self transfer];
  if (!-[CKMediaObject isPreviewable](self, "isPreviewable") || ([v14 isFileDataReady] & 1) == 0 && (objc_msgSend(v14, "isRestoring") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(2);
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v54 = self;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_DEBUG, "%@ isn't previewable.", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v13 = 0;
    goto LABEL_88;
  }

  v15 = [(CKMediaObject *)self previewDispatchCache];
  v13 = [v15 cachedPreviewForKey:v7];
  if (!v13)
  {
    v21 = [(CKMediaObject *)self transfer];
    if ([v21 isFileURLFinalized])
    {
    }

    else
    {
      v22 = [(CKMediaObject *)self transfer];
      v23 = [v22 isSticker];

      if (!v23)
      {
        goto LABEL_66;
      }
    }

    v24 = [(CKMediaObject *)self previewFilenameExtension];
    v25 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:v4 extension:v24 generateIntermediaries:0];

    if ([(CKMediaObject *)self validPreviewExistsAtURL:v25])
    {
      v26 = [(CKMediaObject *)self savedPreviewFromURL:v25 forOrientation:v4];
      v27 = [MEMORY[0x1E69A8168] sharedInstance];
      [v27 trackEvent:*MEMORY[0x1E69A7578]];

      if (IMOSLoggingEnabled())
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [(CKMediaObject *)self isFromMe];
          v30 = @"NO";
          *buf = 138412802;
          v54 = v25;
          v55 = 2112;
          if (v29)
          {
            v30 = @"YES";
          }

          v56 = v30;
          v57 = 2112;
          v58 = v26;
          _os_log_impl(&dword_19020E000, v28, OS_LOG_TYPE_INFO, "Persisted preview at url %@ isFromMe %@ is %@", buf, 0x20u);
        }
      }

      v31 = IMOSLoggingEnabled();
      if (v26)
      {
        if (v31)
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v54 = self;
            _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "%@ preview read from disk.", buf, 0xCu);
          }
        }

        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = [(CKMediaObject *)self isFromMe];
            v35 = @"NO";
            if (v34)
            {
              v35 = @"YES";
            }

            *buf = 138412546;
            v54 = v25;
            v55 = 2112;
            v56 = v35;
            _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Got persisted preview from disk at URL %@ isFromMe %@", buf, 0x16u);
          }
        }

        [v15 setCachedPreview:v26 key:v7];
        v13 = v26;

        goto LABEL_87;
      }

      if (v31)
      {
        v36 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v54 = v25;
          _os_log_impl(&dword_19020E000, v36, OS_LOG_TYPE_INFO, "Preview at URL %@ exists but could not be read. Deleting the file so we can retranscode it.", buf, 0xCu);
        }
      }

      v37 = [MEMORY[0x1E696AC08] defaultManager];
      [v37 removeItemAtURL:v25 error:0];
    }

LABEL_66:
    if ([(CKMediaObject *)self generatePreviewOutOfProcess])
    {
      [(CKMediaObject *)self generateOOPPreviewForWidth:v4 orientation:a3];
      v13 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "Using legacy preview generator", buf, 2u);
        }
      }

      v39 = objc_alloc_init(MEMORY[0x1E69A6170]);
      [(__CFString *)v39 startTimingForKey:@"CKMediaObject_PreviewGenerationTime"];
      if ([(CKMediaObject *)self mediaType]== 7 || [(CKMediaObject *)self mediaType]== 9)
      {
        v13 = [(CKMediaObject *)self generateThumbnailForWidth:v4 orientation:a3];
      }

      else
      {
        v40 = [(CKMediaObject *)self generateThumbnailForWidth:v4 orientation:a3];
        v13 = [(CKMediaObject *)self generatePreviewFromThumbnail:v40 width:v4 orientation:a3];
      }

      [(__CFString *)v39 stopTimingForKey:@"CKMediaObject_PreviewGenerationTime"];
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = [(CKMediaObject *)self UTIType];
          *buf = 138412546;
          v54 = v42;
          v55 = 2112;
          v56 = v39;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Cache miss on UTI type %@ generated with timing: %@", buf, 0x16u);
        }
      }

      v43 = [MEMORY[0x1E69A8168] sharedInstance];
      [v43 trackEvent:*MEMORY[0x1E69A7580]];

      if (v13)
      {
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = [(CKMediaObject *)self transferGUID];
            v46 = [(CKMediaObject *)self filename];
            *buf = 134218498;
            v54 = self;
            v55 = 2112;
            v56 = v45;
            v57 = 2112;
            v58 = v46;
            _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "[%p, %@, %@] preview generated.", buf, 0x20u);
          }
        }

        [(CKMediaObject *)self cacheAndPersistPreview:v13 orientation:v4];
      }
    }

    goto LABEL_87;
  }

  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(2);
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(CKMediaObject *)self transferGUID];
      v18 = [(CKMediaObject *)self filename];
      *buf = 134218754;
      v54 = self;
      v55 = 2112;
      v56 = v17;
      v57 = 2112;
      v58 = v18;
      v59 = 2112;
      v60 = v13;
      _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_DEBUG, "[%p, %@, %@] found in cache! returning %@", buf, 0x2Au);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v19 = [(CKMediaObject *)self transferGUID];
    v51 = [(CKMediaObject *)self filename];
    _CKLog();
  }

LABEL_87:

LABEL_88:
LABEL_89:

  return v13;
}

- (void)prewarmPreviewForWidth:(double)a3 orientation:(char)a4
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v6 = [(CKMediaObject *)self previewCacheKeyWithOrientation:a3];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Prewarm: Asked to prewarm preview for key %@", buf, 0xCu);
    }
  }

  if (![(CKMediaObject *)self shouldSuppressPreview])
  {
    if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_37;
      }

      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v6;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Prewarm: Not prewarming %@, transcode generation failed", buf, 0xCu);
      }

      goto LABEL_9;
    }

    v9 = [(CKMediaObject *)self transfer];
    if (!-[CKMediaObject isPreviewable](self, "isPreviewable") || ([v9 isFileDataReady] & 1) == 0 && (objc_msgSend(v9, "isRestoring") & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v6;
          _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Prewarm: Not prewarming %@, not previewable", buf, 0xCu);
        }
      }

      goto LABEL_36;
    }

    v10 = [(CKMediaObject *)self previewDispatchCache];
    v11 = [v10 cachedPreviewForKey:v6];
    if (v11)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = v6;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Prewarm: %@ already in cache", buf, 0xCu);
        }
      }

      goto LABEL_35;
    }

    v14 = [(CKMediaObject *)self transfer];
    if ([v14 isFileURLFinalized])
    {
    }

    else
    {
      v15 = [(CKMediaObject *)self transfer];
      v16 = [v15 isSticker];

      if (!v16)
      {
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }
    }

    v17 = [(CKMediaObject *)self previewFilenameExtension];
    v18 = [(CKMediaObject *)self previewCachesFileURLWithOrientation:v4 extension:v17 generateIntermediaries:0];

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v6;
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Prewarm: Async fetching %@ at path %@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, self);
    v20 = +[CKPreviewDispatchCache previewPrewarmQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__CKMediaObject_Display__prewarmPreviewForWidth_orientation___block_invoke;
    block[3] = &unk_1E72F7690;
    objc_copyWeak(&v26, buf);
    v23 = v18;
    v27 = v4;
    v24 = v6;
    v25 = v10;
    v21 = v18;
    dispatch_async(v20, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
    goto LABEL_35;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v6;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Prewarm: Not prewarming %@, shouldSuppressPreview is YES", buf, 0xCu);
    }

LABEL_9:
  }

LABEL_37:
}

void __61__CKMediaObject_Display__prewarmPreviewForWidth_orientation___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained validPreviewExistsAtURL:*(a1 + 32)];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = [v4 savedPreviewFromURL:*(a1 + 32) forOrientation:*(a1 + 64)];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_loadWeakRetained((a1 + 56));
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Prewarm: preview %@, welf %@", &v15, 0x16u);
      }
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__CKMediaObject_Display__prewarmPreviewForWidth_orientation___block_invoke_283;
    v11[3] = &unk_1E72EB880;
    v12 = v5;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Prewarm: No valid preview exists at %@", &v15, 0xCu);
    }
  }
}

void __61__CKMediaObject_Display__prewarmPreviewForWidth_orientation___block_invoke_283(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Prewarm: returned value is %@", &v10, 0xCu);
    }
  }

  v4 = *(a1 + 32) == 0;
  v5 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 40);
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Prewarm: No preview on disk for %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Prewarm: Successfully prewarmed %@", &v10, 0xCu);
      }
    }

    [*(a1 + 48) setCachedPreview:*(a1 + 32) key:*(a1 + 40)];
  }
}

- (void)generateOOPPreviewForWidth:(double)a3 orientation:(char)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = [(CKMediaObject *)self previewCacheKeyWithOrientation:?];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(CKMediaObject *)self UTIType];
      *buf = 138412802;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2112;
      v31 = v7;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Request to generate OOP preview for type %@ width %f key %@", buf, 0x20u);
    }
  }

  v10 = [(CKMediaObject *)self previewDispatchCache];
  if ([v10 isGeneratingPreviewForKey:v7])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Already generating OOP preview for key %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [v12 startTimingForKey:@"OOPPreviewGeneration"];
    v29 = 0;
    v28 = 0u;
    v27 = 0u;
    [(CKMediaObject *)self _previewConstraintsForWidth:a3];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy__72;
    v32 = __Block_byref_object_dispose__72;
    v13 = [(CKMediaObject *)self fileURL];
    v14 = [(CKMediaObject *)self previewFilenameExtension];
    v33 = IMAttachmentPreviewFileURL();

    v15 = [(CKMediaObject *)self transferGUID];
    v16 = v15;
    if (*(*&buf[8] + 40))
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke;
      v18[3] = &unk_1E72F76E0;
      v22 = buf;
      v18[4] = self;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v19 = v15;
      v26 = a4;
      v20 = v10;
      v21 = v12;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke_288;
      v17[3] = &unk_1E72F6A78;
      v17[4] = self;
      v17[5] = buf;
      [v20 enqueueGenerationBlock:v18 completion:v17 withPriority:0 forKey:v7];
    }

    _Block_object_dispose(buf, 8);
  }
}

id __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) fileURL];
  v5 = [*(a1 + 32) previewFilenameExtension];
  v6 = IMAttachmentPreviewFileURL();
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__72;
  v34 = __Block_byref_object_dispose__72;
  v35 = 0;
  v9 = [*(a1 + 32) senderContext];
  v10 = [*(a1 + 32) _transcodeControllerSharedInstance];
  v11 = [*(a1 + 32) fileURL];
  v12 = *(a1 + 64);
  v13 = *(*(v12 + 8) + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke_2;
  v23[3] = &unk_1E72F76B8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v27 = &v30;
  v28 = v12;
  v23[4] = v14;
  v29 = *(a1 + 112);
  v24 = *(a1 + 48);
  v16 = v3;
  v25 = v16;
  v26 = *(a1 + 40);
  v17 = *(a1 + 88);
  buf[0] = *(a1 + 72);
  buf[1] = v17;
  v37 = *(a1 + 104);
  LOBYTE(v22) = 1;
  [v10 generatePreview:v11 previewURL:v13 senderContext:v9 constraints:buf balloonBundleID:0 transferGUID:v15 completionBlock:v23 blockUntilReply:v22];

  if (v31[5])
  {
    [*(a1 + 32) setCachedValidPreviewExists:1];
  }

  [*(a1 + 56) stopTimingForKey:@"OOPPreviewGeneration"];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 56);
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v19;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Preview generation timing %@", buf, 0xCu);
    }
  }

  v20 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v20;
}

void __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [*(a1 + 32) savedPreviewFromURL:*(*(*(a1 + 72) + 8) + 40) forOrientation:*(a1 + 80)];
  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(*(a1 + 64) + 8) + 40);
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "IMTranscoderAgent preview generation completed with preview %@ error %@", &v12, 0x16u);
    }
  }

  v10 = *(*(*(a1 + 64) + 8) + 40);
  if (v10)
  {
    [*(a1 + 40) setCachedPreview:v10 key:*(a1 + 48)];
  }

  else
  {
    v11 = +[CKMediaObject transferGUIDSFailingPreviewGeneration];
    [v11 addObject:*(a1 + 56)];
  }
}

void __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke_288(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke_2_289;
  v1[3] = &unk_1E72F6A78;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

uint64_t __65__CKMediaObject_Display__generateOOPPreviewForWidth_orientation___block_invoke_2_289(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Posting preview change notif for OOP generation completion", v4, 2u);
    }
  }

  [*(a1 + 32) postPreviewDidChangeNotifications];
  [*(a1 + 32) _refreshSpatialMetadata];
  return [*(a1 + 32) updateIntentFileManagerIfNecessaryWith:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)_sampleImageEdges:(id)a3 usingRect:(CGRect)a4 forMostlyWhitePixels:(unint64_t *)a5 otherPixels:(unint64_t *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v40 = a3;
  [v40 size];
  v13 = v40;
  v15 = v14;
  if ((v14 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_54;
  }

  v16 = v12;
  v17 = 4 * v15;
  v18 = [v40 ioSurface];
  v19 = v18;
  if (v18)
  {
    IOSurfaceLock(v18, 1u, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v19);
    if (!BaseAddress)
    {
      v26 = 0;
      v27 = 0;
LABEL_47:
      IOSurfaceUnlock(v19, 1u, 0);
      goto LABEL_50;
    }

    v21 = BaseAddress;
LABEL_5:
    v22 = x;
    v23 = width;
    v24 = y;
    v25 = height;
    if (y >= height)
    {
      v27 = 0;
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v28 = 4 * v15 * v24;
      v29 = &v21[4 * v22 + 1 + v28];
      v30 = 8 * v15;
      v31 = y;
      do
      {
        if ((v29[1] < 0xFBu || *v29 < 0xFBu || *(v29 - 1) <= 0xFAu) && v29[2] > 0x31u)
        {
          v27 = (v27 + 1);
        }

        else
        {
          ++v26;
        }

        v31 += 2;
        v29 += v30;
      }

      while (v31 < v25);
      v32 = &v21[4 * v23 - 2 + v28];
      v33 = y;
      do
      {
        if ((*v32 < 0xFBu || *(v32 - 1) < 0xFBu || *(v32 - 2) <= 0xFAu) && v32[1] > 0x31u)
        {
          v27 = (v27 + 1);
        }

        else
        {
          ++v26;
        }

        v32 += v30;
        v33 += 2;
      }

      while (v33 < v25);
    }

    if (v22 < v23)
    {
      v37 = &v21[4 * v22 + 1 + v17 * v24];
      v38 = x;
      do
      {
        if ((v37[1] < 0xFBu || *v37 < 0xFBu || *(v37 - 1) <= 0xFAu) && v37[2] > 0x31u)
        {
          v27 = (v27 + 1);
        }

        else
        {
          ++v26;
        }

        v38 += 2;
        v37 += 8;
      }

      while (v38 < v23);
      v39 = &v21[4 * v22 + 1 + v17 * (v25 - 1)];
      do
      {
        if ((v39[1] < 0xFBu || *v39 < 0xFBu || *(v39 - 1) <= 0xFAu) && v39[2] > 0x31u)
        {
          v27 = (v27 + 1);
        }

        else
        {
          ++v26;
        }

        v22 += 2;
        v39 += 8;
      }

      while (v22 < v23);
    }

    if (!v19)
    {
      free(v21);
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  v27 = [v40 CGImage];
  if (!v27)
  {
    v26 = 0;
    goto LABEL_50;
  }

  v34 = v16 * v17;
  v13 = v40;
  if ((v16 * v17) >> 64 != v34 >> 63)
  {
    goto LABEL_54;
  }

  v21 = malloc_type_malloc(v34, 0x91D11C7BuLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v36 = CGBitmapContextCreate(v21, v15, v16, 8uLL, 4 * v15, DeviceRGB, 0x4001u);
  v42.size.width = v15;
  v42.size.height = v16;
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  CGContextDrawImage(v36, v42, v27);
  CGContextRelease(v36);
  CGColorSpaceRelease(DeviceRGB);
  if (v21)
  {
    goto LABEL_5;
  }

  v26 = 0;
  v27 = 0;
LABEL_50:
  v13 = v40;
  if (a5)
  {
    *a5 = v26;
  }

  if (a6)
  {
    *a6 = v27;
  }

LABEL_54:
}

- (id)generatePreviewFromThumbnail:(id)a3 width:(double)a4 orientation:(char)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    v8 = [MEMORY[0x1E69DCA80] preferredFormat];
    [v8 setScale:0.0];
    [v8 setPreferredRange:0];
    [v8 setOpaque:0];
    v9 = +[CKUIBehavior sharedBehaviors];
    [v7 size];
    [v9 thumbnailFillSizeForWidth:a4 imageSize:{v10, v11}];
    v13 = v12;
    v15 = v14;

    v16 = [v7 __ck_imageScaledToFillSize:{v13, v15}];
    [v16 size];
    v18 = (v13 - v17) * 0.5;
    [v16 size];
    v20 = (v15 - v19) * 0.5;
    v21 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v8 format:{v13, v15}];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__CKMediaObject_Display__generatePreviewFromThumbnail_width_orientation___block_invoke;
    v26[3] = &unk_1E72F4320;
    v29 = v18;
    v30 = v20;
    v27 = v16;
    v28 = self;
    v22 = v16;
    v23 = [v21 imageWithActions:v26];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v32 = "[CKMediaObject(Display) generatePreviewFromThumbnail:width:orientation:]";
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "passed %s a nil thumbnail", buf, 0xCu);
      }
    }

    v23 = 0;
  }

  return v23;
}

void __73__CKMediaObject_Display__generatePreviewFromThumbnail_width_orientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) drawAtPoint:{*(a1 + 48), *(a1 + 56)}];
  if ([objc_opt_class() shouldShadePreview])
  {
    v10 = 0;
    v11 = 0;
    v6 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v6 + 8);
    v7 = [v3 format];
    [v7 bounds];
    [v5 _sampleImageEdges:v4 usingRect:&v11 forMostlyWhitePixels:&v10 otherPixels:?];

    if ((v10 + v11) / 5.0 < v11)
    {
      v8 = [MEMORY[0x1E69DC888] colorWithRed:0.525490196 green:0.525490196 blue:0.525490196 alpha:0.06];
      [v8 set];

      v9 = [v3 format];
      [v9 bounds];
      UIRectFillUsingBlendMode(v12, kCGBlendModeSourceAtop);
    }
  }
}

+ (BOOL)shouldUseTranscoderGeneratedPreviewSize
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a1 UTITypes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (IMIsSupportedUTIType())
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (CGSize)transcoderGeneratedSizeForConstraints:(IMPreviewConstraints *)a3
{
  [(CKMediaObject *)self transcodingPreviewConstraints];
  v13 = *a3;
  v5 = 0.0;
  if (!IMPreviewConstraintsEqualToConstraints() || (([(CKMediaObject *)self transcodingPreviewPxSize:*&v13.var0], v6 == *MEMORY[0x1E695F060]) ? (v8 = v7 == *(MEMORY[0x1E695F060] + 8)) : (v8 = 0), v8))
  {
    v10 = 0.0;
  }

  else
  {
    var2 = a3->var2;
    v10 = 0.0;
    if (var2 > 0.0)
    {
      v10 = v6 / var2;
      v5 = v7 / var2;
    }
  }

  v11 = v10;
  v12 = v5;
  result.height = v12;
  result.width = v11;
  return result;
}

- (IMPreviewConstraints)transcodingPreviewConstraints
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [(CKMediaObject *)self transfer];
  v6 = [v5 attributionInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A6FC8]];

  if (v7)
  {
    *&retstr->var3 = 0;
    *&retstr->var0 = 0u;
    *&retstr->var1.height = 0u;
    IMPreviewConstraintsFromDictionary();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(CKMediaObject *)self transferGUID];
        v11 = 138412290;
        v12 = v9;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "CKMediaObject_Display: no generated preview constraints dictionary found for media object %@", &v11, 0xCu);
      }
    }

    IMPreviewConstraintsZero();
  }

  return result;
}

- (CGSize)transcodingPreviewPxSize
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CKMediaObject *)self transfer];
  v4 = [v3 attributionInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69A6FD8]];

  v6 = [v3 attributionInfo];
  v7 = [v6 objectForKey:*MEMORY[0x1E69A6FD0]];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [(CKMediaObject *)self transferGUID];
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "CKMediaObject_Display: no generated preview size value found for media object %@", &v17, 0xCu);
      }
    }

    v12 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [v5 floatValue];
    v12 = v11;
    [v7 floatValue];
    v14 = v13;
  }

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)savePreview:(id)a3 toURL:(id)a4 forOrientation:(char)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[CKMediaObject(Display) savePreview:toURL:forOrientation:]";
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "%s persisting to %@", buf, 0x16u);
    }
  }

  v10 = [(CKMediaObject *)self transferGUID];
  if (v7)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;

  if ((v12 & 1) != 0 || v8 && (-[CKMediaObject fileManager](self, "fileManager"), v13 = objc_claimAutoreleasedReturnValue(), [v8 path], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "fileExistsAtPath:", v14), v14, v13, (v15 & 1) == 0))
  {
    v16 = v7;
    v17 = v8;
    im_perform_with_task_assertion();
  }
}

void __59__CKMediaObject_Display__savePreview_toURL_forOrientation___block_invoke(id *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] transferGUID];
  if (v2 && (v3 = a1[5], v2, v3))
  {
    [a1[5] size];
    v5 = v4;
    v7 = v6;
    [a1[5] scale];
    v9 = v8;
    [a1[5] scale];
    v11 = v10;
    v12 = [MEMORY[0x1E69A5B50] sharedInstance];
    v13 = [v12 remoteDaemon];
    v14 = [a1[4] transferGUID];
    [v13 successfullyGeneratedPreviewForTransfer:v14 withPreviewSize:{v5 * v11, v7 * v9}];
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [a1[4] transferGUID];
      v17 = v16;
      v18 = @"NO";
      if (!a1[5])
      {
        v18 = @"YES";
      }

      v30 = 138412546;
      v31 = v16;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Not notifying imagent of successful preview generation, transfer GUID %@ preview is null %@", &v30, 0x16u);
    }
  }

  if (a1[6] && ([a1[4] fileManager], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[6], "path"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "fileExistsAtPath:", v20), v20, v19, (v21 & 1) == 0))
  {
    if (!+[CKImageData supportsASTC])
    {
      [MEMORY[0x1E69A80C0] persistCPBitmapWithImage:objc_msgSend(a1[5] url:{"CGImage"), a1[6]}];
      return;
    }

    v24 = +[CKImageData supportsASTC];
    v25 = a1[4];
    v26 = a1[5];
    if (v24)
    {
      [v25 ASTCDataFromImage:v26];
    }

    else
    {
      [v25 JPEGDataFromImage:v26];
    }
    v22 = ;
    CKFreeSpaceWriteDataToURL(v22, a1[6], 1);
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = a1[4];
        v29 = a1[6];
        v30 = 138412546;
        v31 = v28;
        v32 = 2112;
        v33 = v29;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "%@ preview saved to %@.", &v30, 0x16u);
      }
    }
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = a1[6];
      v30 = 138412290;
      v31 = v23;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "No need to persist preview, URL already exists: %@", &v30, 0xCu);
    }
  }
}

- (id)savedPreviewFromURL:(id)a3 forOrientation:(char)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Prewarm: %@", buf, 0xCu);
    }
  }

  if (v4)
  {
    v6 = [v4 lastPathComponent];
    v15[1] = 0;
    IMAttachmentFileNameAndExtension();
    v7 = 0;

    if ([v7 isEqualToString:@"cpbitmap"])
    {
      v15[0] = 0;
      v8 = [CKMultiFrameImage firstFrameImageWithContentsOfCPBitmapURL:v4 error:v15];
      v9 = v15[0];
      v10 = v8;
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Prewarm got bitmap %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v4 options:1 error:0];
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v9;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Prewarm got data %@", buf, 0xCu);
        }
      }

      if (v9)
      {
        v10 = [MEMORY[0x1E69DCAB8] ckImageWithData:v9];
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v17 = v10;
            _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Prewarm got image %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)validPreviewExistsAtURL:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(CKMediaObject *)self cachedValidPreviewExists])
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v4 path];
    v8 = [v6 fileExistsAtPath:v7];

    if (v8)
    {
      if (![(CKMediaObject *)self validatePreviewFormat]|| !+[CKImageData supportsASTC])
      {
        goto LABEL_10;
      }

      v9 = CGImageSourceGetTypeWithURL();
      v10 = v9;
      if (v9 && (([v9 isEqualToString:@"org.khronos.ktx"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"com.apple.atx") & 1) != 0))
      {

LABEL_10:
        v11 = [(CKMediaObject *)self transfer];
        v12 = [v11 previewGenerationState];

        if (v12 == 3)
        {
          v13 = [MEMORY[0x1E69A5B50] sharedController];
          v14 = [v13 remoteDaemon];
          v15 = [(CKMediaObject *)self transfer];
          v16 = [v15 guid];
          [v14 successfullyGeneratedPreviewForTransfer:v16];
        }

        v5 = 1;
        goto LABEL_19;
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = 138412802;
          v20 = v4;
          v21 = 2112;
          v22 = @"org.khronos.ktx";
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Persisted preview at %@ expected %@ got %@", &v19, 0x20u);
        }
      }
    }

    v5 = 0;
LABEL_19:
    [(CKMediaObject *)self setCachedValidPreviewExists:v5];
    goto LABEL_20;
  }

  LOBYTE(v5) = 1;
LABEL_20:

  return v5;
}

- (id)previewMetadata
{
  v68 = *MEMORY[0x1E69E9840];
  if (![(CKMediaObject *)self conformsToProtocol:&unk_1F05A0E70])
  {
    v4 = 0;
    goto LABEL_75;
  }

  v3 = self;
  if ([(CKMediaObject *)v3 supportsPreviewMetadata]&& ![(CKMediaObject *)v3 transcoderPreviewGenerationFailed])
  {
    v5 = [(CKMediaObject *)v3 transfer];
    if (!-[CKMediaObject isPreviewable](v3, "isPreviewable") || ([v5 isFileDataReady] & 1) == 0 && (objc_msgSend(v5, "isRestoring") & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LODWORD(v63) = 138412290;
          *(&v63 + 4) = v3;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "%@ isn't previewable.", &v63, 0xCu);
        }
      }

      v4 = 0;
      goto LABEL_73;
    }

    *&v63 = 0;
    *(&v63 + 1) = &v63;
    v64 = 0x3032000000;
    v65 = __Block_byref_object_copy__72;
    v66 = __Block_byref_object_dispose__72;
    v67 = 0;
    v6 = CKPreviewMetadataCacheKey(v3);
    v7 = [(CKMediaObject *)v3 previewDispatchCache];
    v8 = [v7 cachedPreviewForKey:v6];
    v9 = *(*(&v63 + 1) + 40);
    *(*(&v63 + 1) + 40) = v8;

    if (*(*(&v63 + 1) + 40))
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = [(CKMediaObject *)v3 transferGUID];
          v12 = [(CKMediaObject *)v3 filename];
          v13 = *(*(&v63 + 1) + 40);
          *buf = 134218754;
          v56 = v3;
          v57 = 2112;
          v58 = v11;
          v59 = 2112;
          v60 = v12;
          v61 = 2112;
          v62 = v13;
          _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "[%p, %@, %@] found in cache! returning %@", buf, 0x2Au);
        }
      }

      v4 = *(*(&v63 + 1) + 40);
      goto LABEL_72;
    }

    v15 = [(CKMediaObject *)v3 fileURL];
    v16 = [(CKMediaObject *)v3 previewMetadataFilenameExtension];
    v17 = IMAttachmentPreviewMetadataFileURL();

    v18 = [(CKMediaObject *)v3 transfer];
    LODWORD(v16) = [v18 isFileURLFinalized];

    if (!v16)
    {
      goto LABEL_80;
    }

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = [(CKMediaObject *)v17 path];
    v21 = [v19 fileExistsAtPath:v20];

    if (!v21)
    {
      goto LABEL_80;
    }

    v22 = _CKMediaObjectPreviewMetadataWithContentsOfURL(v3, v17, 0);
    v23 = *(*(&v63 + 1) + 40);
    *(*(&v63 + 1) + 40) = v22;

    v24 = [MEMORY[0x1E69A8168] sharedInstance];
    [v24 trackEvent:*MEMORY[0x1E69A7578]];

    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(CKMediaObject *)v3 isFromMe];
        v27 = @"NO";
        v28 = *(*(&v63 + 1) + 40);
        if (v26)
        {
          v27 = @"YES";
        }

        *buf = 138412802;
        v56 = v17;
        v57 = 2112;
        v58 = v27;
        v59 = 2112;
        v60 = v28;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Persisted preview metadata at url %@ isFromMe %@ is %@", buf, 0x20u);
      }
    }

    if (*(*(&v63 + 1) + 40))
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [(CKMediaObject *)v3 isFromMe];
          v31 = @"NO";
          if (v30)
          {
            v31 = @"YES";
          }

          *buf = 138412546;
          v56 = v17;
          v57 = 2112;
          v58 = v31;
          _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Got persisted preview metadata from disk at URL %@ isFromMe %@", buf, 0x16u);
        }
      }

      [v7 setCachedPreview:*(*(&v63 + 1) + 40) key:v6];
    }

    else
    {
LABEL_80:
      if ([(CKMediaObject *)v3 generatePreviewOutOfProcess])
      {
        if ([v7 isGeneratingPreviewForKey:v6])
        {
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v56 = v6;
              _os_log_impl(&dword_19020E000, v32, OS_LOG_TYPE_INFO, "Already generating OOP preview for key %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v41 = [(CKMediaObject *)v3 fileURL];
          v42 = [(CKMediaObject *)v3 previewMetadataFilenameExtension];
          v43 = IMAttachmentPreviewMetadataFileURL();

          if (v43)
          {
            if (IMOSLoggingEnabled())
            {
              v44 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v56 = v6;
                _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "Request to generate OOP preview metadata with key %@", buf, 0xCu);
              }
            }

            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __41__CKMediaObject_Display__previewMetadata__block_invoke;
            v49[3] = &unk_1E72F7730;
            v50 = v3;
            v17 = v43;
            v51 = v17;
            v54 = &v63;
            v52 = v7;
            v53 = v50;
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __41__CKMediaObject_Display__previewMetadata__block_invoke_326;
            v48[3] = &unk_1E72EBA18;
            v48[4] = v50;
            [v52 enqueueGenerationBlock:v49 completion:v48 withPriority:0 forKey:v6];
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v45 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = [(CKMediaObject *)v3 fileURL];
                *buf = 138412290;
                v56 = v46;
                _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "Failed to create destination for %@", buf, 0xCu);
              }
            }

            v17 = 0;
          }
        }

        v4 = 0;
        goto LABEL_71;
      }

      if (objc_opt_respondsToSelector())
      {
        if (IMOSLoggingEnabled())
        {
          v33 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v33, OS_LOG_TYPE_INFO, "Generating preview metadata in process", buf, 2u);
          }
        }

        v34 = objc_alloc_init(MEMORY[0x1E69A6170]);
        [(__CFString *)v34 startTimingForKey:@"CKMediaObject_PreviewMetadataGenerationTime"];
        v35 = [(CKMediaObject *)v3 generatePreviewMetadata];
        v36 = *(*(&v63 + 1) + 40);
        *(*(&v63 + 1) + 40) = v35;

        [(__CFString *)v34 stopTimingForKey:@"CKMediaObject_PreviewMetadataGenerationTime"];
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = [(CKMediaObject *)v3 UTIType];
            *buf = 138412546;
            v56 = v38;
            v57 = 2112;
            v58 = v34;
            _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Cache miss on UTI type %@ generated with timing: %@", buf, 0x16u);
          }
        }

        v39 = [MEMORY[0x1E69A8168] sharedInstance];
        [v39 trackEvent:*MEMORY[0x1E69A7580]];

        if (*(*(&v63 + 1) + 40))
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v56 = v3;
              _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "%@ preview metadata generated.", buf, 0xCu);
            }
          }

          _CKMediaObjectWritePreviewMetadata(v3, *(*(&v63 + 1) + 40));
        }
      }
    }

    v4 = *(*(&v63 + 1) + 40);
LABEL_71:

LABEL_72:
    _Block_object_dispose(&v63, 8);

LABEL_73:
    goto LABEL_74;
  }

  v4 = 0;
LABEL_74:

LABEL_75:

  return v4;
}

uint64_t __41__CKMediaObject_Display__previewMetadata__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v4 startTimingForKey:@"OOPPreviewGeneration"];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __41__CKMediaObject_Display__previewMetadata__block_invoke_2;
  v22 = &unk_1E72F7708;
  v28 = *(a1 + 64);
  v23 = v5;
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 56);
  v26 = v7;
  v27 = v8;
  v9 = v23;
  v10 = v6;
  v11 = &v19;
  if (objc_opt_respondsToSelector())
  {
    [v9 generateOOPPreviewMetadataToURL:v10 WithCompletionBlock:{v11, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28}];
  }

  else
  {
    v35 = 0;
    *buf = 0u;
    v34 = 0u;
    [v9 defaultPreviewWidth];
    if (v9)
    {
      [v9 _previewConstraintsForWidth:?];
    }

    else
    {
      v35 = 0;
      *buf = 0u;
      v34 = 0u;
    }

    BYTE1(v35) = 1;
    v12 = [v9 messageContext];
    v13 = [v12 isSenderUnknown];

    v14 = [MEMORY[0x1E69A8228] contextWithKnownSender:v13];
    v15 = [v9 _transcodeControllerSharedInstance];
    v16 = [v9 fileURL];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___CKMediaObjectGenerateOOPPreviewMetadata_block_invoke;
    v31[3] = &unk_1E72F7758;
    v32 = v11;
    v29[0] = *buf;
    v29[1] = v34;
    v30 = v35;
    [v15 generateMetadata:v16 metadataURL:v10 senderContext:v14 constraints:v29 completionBlock:v31 blockUntilReply:1];
  }

  [v4 stopTimingForKey:@"OOPPreviewGeneration"];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Preview generation timing %@", buf, 0xCu);
    }
  }

  return 0;
}

void __41__CKMediaObject_Display__previewMetadata__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = a2;
  v5 = a2;
  v6 = _CKMediaObjectPreviewMetadataWithContentsOfURL(v3, v4, &v15);
  v7 = v15;

  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "IMTranscoderAgent preview generation completed with metadata: %@, error: %@", buf, 0x16u);
    }
  }

  v12 = *(*(*(a1 + 72) + 8) + 40);
  if (v12)
  {
    [*(a1 + 48) setCachedPreview:v12 key:*(a1 + 56)];
  }

  else
  {
    v13 = +[CKMediaObject transferGUIDSFailingPreviewGeneration];
    v14 = [*(a1 + 64) transferGUID];
    [v13 addObject:v14];
  }
}

void __41__CKMediaObject_Display__previewMetadata__block_invoke_326(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CKMediaObject_Display__previewMetadata__block_invoke_2_327;
  block[3] = &unk_1E72EBA18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __41__CKMediaObject_Display__previewMetadata__block_invoke_2_327(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "Posting preview change notif for OOP generation completion", v4, 2u);
    }
  }

  return [*(a1 + 32) postPreviewDidChangeNotifications];
}

- (void)postPreviewDidChangeNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"CKPreviewDidChangeNotification" object:self];
  if ([(CKMediaObject *)self didRequestAdaptiveImageGlyphDerivedFromPreviewImage]&& ![(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    [v3 postNotificationName:@"CKAdaptiveImageGlyphGeneratedNotification" object:self];
  }
}

- (id)bbPreviewFillToSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v12 = *MEMORY[0x1E69E9840];
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(CKMediaObject *)self transferGUID];
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Transfer %@ was marked as failed for preview generation, not showing preview in notification", &v10, 0xCu);
      }
    }

    v8 = 0;
  }

  else
  {
    v8 = [(CKMediaObject *)self generateThumbnailFillToSize:width contentAlignmentInsets:height, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  }

  return v8;
}

- (CGSize)bbSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)transferGUIDSFailingPreviewGeneration
{
  if (transferGUIDSFailingPreviewGeneration_once != -1)
  {
    +[CKMediaObject(Display) transferGUIDSFailingPreviewGeneration];
  }

  v3 = transferGUIDSFailingPreviewGeneration_sFailureSet;

  return v3;
}

void __63__CKMediaObject_Display__transferGUIDSFailingPreviewGeneration__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = transferGUIDSFailingPreviewGeneration_sFailureSet;
  transferGUIDSFailingPreviewGeneration_sFailureSet = v0;
}

- (id)blastdooredAdaptiveImageGlyphFileURL
{
  v3 = [(CKMediaObject *)self transfer];
  if ([v3 isFileURLFinalized])
  {
    v4 = [(CKMediaObject *)self fileURL];
    v5 = IMAttachmentEmojiImagePreviewFileURL();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cachedBlastdooredAdaptiveImageGlyph
{
  v3 = [(CKMediaObject *)self transfer];
  if (-[CKMediaObject isPreviewable](self, "isPreviewable") && (([v3 isFileDataReady] & 1) != 0 || (objc_msgSend(v3, "isRestoring") & 1) != 0))
  {
    v4 = [(CKMediaObject *)self previewDispatchCache];
    v5 = CKEmojiImagePreviewCacheKey(self);
    v6 = [v4 cachedPreviewForKey:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
LABEL_35:

        goto LABEL_36;
      }

      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
      }
    }

    else
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
      }
    }

    if ([v3 isFileURLFinalized])
    {
      v9 = [(CKMediaObject *)self blastdooredAdaptiveImageGlyphFileURL];
      v10 = [v9 path];
      if ([v10 length])
      {
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [v11 fileExistsAtPath:v10];
        v13 = [MEMORY[0x1E69A8168] sharedInstance];
        [v13 trackEvent:*MEMORY[0x1E69A7578]];

        if (v12)
        {
          v22 = 0;
          v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9 options:1 error:&v22];
          v15 = v22;
          v16 = IMLogHandleForCategory();
          v17 = v16;
          if (v14)
          {
            v21 = v15;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
            }

            v7 = [objc_alloc(MEMORY[0x1E69DB780]) initWithImageContent:v14];
            v18 = IMLogHandleForCategory();
            v17 = v18;
            if (v7)
            {
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
              }

              [v4 setCachedPreview:v7 key:v5];
              goto LABEL_35;
            }

            v15 = v21;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
            }
          }

          else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
          }
        }
      }

      else
      {
        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
        }
      }
    }

    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
    }

    v7 = 0;
    goto LABEL_35;
  }

  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CKMediaObject(EmojiImage) cachedBlastdooredAdaptiveImageGlyph];
  }

  v7 = 0;
LABEL_36:

  return v7;
}

- (void)generateAndCacheBlastdooredAdaptiveImageGlyph
{
  v3 = [(CKMediaObject *)self previewDispatchCache];
  v4 = CKEmojiImagePreviewCacheKey(self);
  if ([v3 isGeneratingPreviewForKey:v4])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CKMediaObject(EmojiImage) generateAndCacheBlastdooredAdaptiveImageGlyph];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke;
    aBlock[3] = &unk_1E72F7B38;
    objc_copyWeak(&v14, &location);
    v6 = _Block_copy(aBlock);
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [CKMediaObject(EmojiImage) generateAndCacheBlastdooredAdaptiveImageGlyph];
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke_42;
    v8[3] = &unk_1E72ED610;
    objc_copyWeak(&v12, &location);
    v9 = v3;
    v10 = v4;
    v11 = self;
    [v9 enqueueGenerationBlock:v6 completion:v8 withPriority:1 forKey:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

id __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained generateNewBlastdooredAdaptiveImageGlyph];

  return v2;
}

void __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke_42(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke_2;
  v4[3] = &unk_1E72ED610;
  objc_copyWeak(&v8, (a1 + 56));
  v5 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);

  objc_destroyWeak(&v8);
}

void __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 48);
    v5 = v3;
    [v4 saveAdaptiveImageGlyphToFileCache:v5];
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [WeakRetained transferGUID];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Persisted adaptive image glyph with transferGUID {%@} to cache and posting for update.", &v9, 0xCu);
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"CKAdaptiveImageGlyphGeneratedNotification" object:*(a1 + 48)];
  }

  else
  {
    v8 = [WeakRetained transferGUID];
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke_2_cold_1();
    }
  }
}

- (void)saveAdaptiveImageGlyphToFileCache:(id)a3
{
  v4 = a3;
  if (!CKIsRunningInFullCKClient())
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CKMediaObject(EmojiImage) saveAdaptiveImageGlyphToFileCache:];
    }
  }

  v6 = [(CKMediaObject *)self previewDispatchCache];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CKMediaObject_EmojiImage__saveAdaptiveImageGlyphToFileCache___block_invoke;
  v8[3] = &unk_1E72F7B60;
  v9 = v4;
  v7 = v4;
  [v6 enqueueSaveBlock:v8 forMediaObject:self withPriority:0];
}

void __63__CKMediaObject_EmojiImage__saveAdaptiveImageGlyphToFileCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 blastdooredAdaptiveImageGlyphFileURL];
  v4 = [v3 path];
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    if (([v5 fileExistsAtPath:v4]& 1) != 0)
    {
      v6 = IMLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __63__CKMediaObject_EmojiImage__saveAdaptiveImageGlyphToFileCache___block_invoke_cold_2();
      }
    }

    else
    {
      v7 = [*(a1 + 32) imageContent];
      v10 = 0;
      v8 = [v7 writeToFile:v4 atomically:1 error:&v10];
      v6 = v10;
      if ((v8 & 1) == 0)
      {
        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __63__CKMediaObject_EmojiImage__saveAdaptiveImageGlyphToFileCache___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__CKMediaObject_EmojiImage__saveAdaptiveImageGlyphToFileCache___block_invoke_cold_3();
    }
  }
}

- (id)adaptiveImageGlyph
{
  if ([(CKMediaObject *)self transcoderPreviewGenerationFailed])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CKMediaObject *)self internalCachedAdaptiveImageGlyph];
    if (!v3)
    {
      v3 = [(CKMediaObject *)self cachedBlastdooredAdaptiveImageGlyph];
      if (v3)
      {
        [(CKMediaObject *)self setInternalCachedAdaptiveImageGlyph:v3];
      }

      else
      {
        [(CKMediaObject *)self generateAndCacheBlastdooredAdaptiveImageGlyph];
      }
    }
  }

  return v3;
}

- (void)setAdaptiveImageGlyph:(id)a3
{
  v7 = a3;
  v4 = [(CKMediaObject *)self internalCachedAdaptiveImageGlyph];

  if (v4 != v7)
  {
    [(CKMediaObject *)self setInternalCachedAdaptiveImageGlyph:v7];
    if (v7)
    {
      v5 = [(CKMediaObject *)self previewDispatchCache];
      v6 = CKEmojiImagePreviewCacheKey(self);
      [v5 setCachedPreview:v7 key:v6];
      [(CKMediaObject *)self saveAdaptiveImageGlyphToFileCache:v7];
    }
  }
}

- (id)generateSingleStrikeAdaptiveImageGlyphFromBlastdooredPreviewImage
{
  v17[1] = *MEMORY[0x1E69E9840];
  [(CKMediaObject *)self setDidRequestAdaptiveImageGlyphDerivedFromPreviewImage:1];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v4 = [(CKMediaObject *)self previewForWidth:0 orientation:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 CGImage];
    if (!v5)
    {
LABEL_9:
      v15 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = [v4 frames];
    v7 = [v6 firstObject];

    v5 = [v7 CGImage];
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v8 = objc_alloc(MEMORY[0x1E69DB7A8]);
  v9 = [v8 initWithImage:v5 alignmentInset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v10 = v9;
  if (v9)
  {
    v17[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [(CKMediaObject *)self transferGUID];
    v13 = [objc_alloc(MEMORY[0x1E69DB7A0]) initWithContentIdentifier:v12 shortDescription:@"Preview Image" strikeImages:v11];
    v14 = [v13 imageData];
    if ([v14 length])
    {
      v15 = [objc_alloc(MEMORY[0x1E69DB780]) initWithImageContent:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_14:

  return v15;
}

+ (BOOL)genmojiShouldAppearAsFailedForMediaObject:(id)a3
{
  if (a3)
  {
    return [a3 transcoderPreviewGenerationFailed];
  }

  else
  {
    return 1;
  }
}

- (NSURL)backgroundFileURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  CKMediaObject.backgroundFileURL.getter(v5);

  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_190D51570();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)syndicationIdentifier
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_19020E000, v1, OS_LOG_TYPE_ERROR, "Could not derive attachment index from message item. transferGUID: %@. messageGUID: %@", v2, 0x16u);
}

void __74__CKMediaObject_EmojiImage__generateAndCacheBlastdooredAdaptiveImageGlyph__block_invoke_2_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_19020E000, v1, OS_LOG_TYPE_ERROR, "Generated adaptive image glyph with transferGUID {%@} is of unexpected type {%@}. Not saving to file cache.", v2, 0x16u);
}

void __63__CKMediaObject_EmojiImage__saveAdaptiveImageGlyphToFileCache___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __63__CKMediaObject_EmojiImage__saveAdaptiveImageGlyphToFileCache___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end