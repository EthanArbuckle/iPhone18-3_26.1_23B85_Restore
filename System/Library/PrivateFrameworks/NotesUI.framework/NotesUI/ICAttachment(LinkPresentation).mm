@interface ICAttachment(LinkPresentation)
- (BOOL)usesLinkPresentation;
- (id)archiveLinkmetadata:()LinkPresentation;
- (id)fallbackMapMetadata;
- (id)fallbackRemoteAttachmentMetadata;
- (id)fallbackWebMetadata;
- (id)fileMetadata;
- (id)filePreviewGenerationQueue;
- (id)loadingAttachmentsMetadata;
- (id)lpImageFromFallbackPDF;
- (id)lpImageFromPreviewImage:()LinkPresentation;
- (id)mapPreviewGenerationQueue;
- (id)plainURLMetadata;
- (id)retrieveLinkMetadata;
- (id)scannedDocumentsMetadata;
- (id)webPreviewGenerationQueue;
- (uint64_t)metadataExists;
- (void)addPreviewImageToMetadata:()LinkPresentation;
- (void)persistLinkMetadata:()LinkPresentation;
- (void)requestFileMetadataIfNecessary;
- (void)requestRemoteMetadata;
- (void)retrieveLinkMetadata;
@end

@implementation ICAttachment(LinkPresentation)

- (id)retrieveLinkMetadata
{
  objc_initWeak(&location, val);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__51;
  v28 = __Block_byref_object_dispose__51;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__51;
  v22 = __Block_byref_object_dispose__51;
  v23 = 0;
  managedObjectContext = [val managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__ICAttachment_LinkPresentation__retrieveLinkMetadata__block_invoke;
  v16[3] = &unk_1E846D2B0;
  objc_copyWeak(&v17, &location);
  v16[4] = val;
  v16[5] = &v24;
  v16[6] = &v18;
  [managedObjectContext performBlockAndWait:v16];

  if (v25[5])
  {
    v4 = MEMORY[0x1E696ACD0];
    gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v3);
    v5 = objc_opt_class();
    v6 = v25[5];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v15];
    v8 = v15;
    if (v8)
    {
      v9 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachment(LinkPresentation) *)v8 retrieveLinkMetadata];
      }
    }

    specialization = [v7 specialization];
    gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v11);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      specialization2 = [v7 specialization];
      [specialization2 setName:v19[5]];
    }
  }

  else
  {
    v7 = 0;
  }

  objc_destroyWeak(&v17);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  objc_destroyWeak(&location);

  return v7;
}

- (void)persistLinkMetadata:()LinkPresentation
{
  v2 = [self archiveLinkmetadata:?];
  managedObjectContext = [self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__ICAttachment_LinkPresentation__persistLinkMetadata___block_invoke;
  v5[3] = &unk_1E8468F80;
  v5[4] = self;
  v6 = v2;
  v4 = v2;
  [managedObjectContext performBlockAndWait:v5];
}

- (uint64_t)metadataExists
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, val);
  managedObjectContext = [val managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__ICAttachment_LinkPresentation__metadataExists__block_invoke;
  v5[3] = &unk_1E846AAB8;
  objc_copyWeak(&v6, &location);
  v5[4] = &v8;
  [managedObjectContext performBlockAndWait:v5];

  v3 = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (BOOL)usesLinkPresentation
{
  attachmentType = [self attachmentType];
  result = 1;
  if (attachmentType <= 0xF)
  {
    if (((1 << attachmentType) & 0x362B) != 0)
    {
      return 0;
    }

    else
    {
      v4 = 1 << attachmentType;
      if ((v4 & 0x840) != 0)
      {
        return [self preferredViewSize] == 1;
      }

      else
      {
        return (v4 & 0xC000) == 0;
      }
    }
  }

  return result;
}

- (void)addPreviewImageToMetadata:()LinkPresentation
{
  v4 = a3;
  if (v4)
  {
    v5 = [self attachmentPreviewImageWithMinSize:192.0 scale:{192.0, 1.0}];
    if (v5)
    {
      v6 = [self lpImageFromPreviewImage:v5];
      [v4 setImage:v6];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICAttachment(LinkPresentation) addPreviewImageToMetadata:v7];
    }
  }
}

- (id)scannedDocumentsMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3232));
  [self addPreviewImageToMetadata:v4];
  v5 = __ICLocalizedFrameworkString_impl(@"%lu scans", @"%lu scans", 0, 1);
  objc_opt_class();
  attachmentModel = [self attachmentModel];
  v7 = ICDynamicCast();

  if (v7)
  {
    subAttachmentCount = [v7 subAttachmentCount];
  }

  else
  {
    objc_opt_class();
    attachmentModel2 = [self attachmentModel];
    v10 = ICDynamicCast();
    subAttachmentCount = [v10 paperPageCount];
  }

  title = [self title];
  [v4 setTitle:title];

  v12 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v5, subAttachmentCount];
  [v4 setSummary:v12];

  return v4;
}

- (id)fileMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3232));
  gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v5);
  v7 = objc_alloc_init(*(v6 + 3160));
  if ([self hasFallbackPDF])
  {
    lpImageFromFallbackPDF = [self lpImageFromFallbackPDF];
    [v7 setThumbnail:lpImageFromFallbackPDF];
    fallbackPDFUTI = [MEMORY[0x1E69B7680] fallbackPDFUTI];
    [v7 setType:fallbackPDFUTI];

    fallbackPDFURL = [self fallbackPDFURL];
    v40 = 0;
    v11 = [fallbackPDFURL getResourceValue:&v40 forKey:*MEMORY[0x1E695DB50] error:0];
    v12 = v40;

    if (v11 && ([v12 floatValue], v13 != 0.0))
    {
      v16 = v13;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      fallbackPDFData = [self fallbackPDFData];
      v16 = [fallbackPDFData length];

      objc_autoreleasePoolPop(v14);
    }

    [v7 setSize:v16];
  }

  else
  {
    previewImages = [self previewImages];

    if (previewImages)
    {
      v18 = [self attachmentPreviewImageWithMinSize:*MEMORY[0x1E695F060] scale:{*(MEMORY[0x1E695F060] + 8), 1.0}];
      v19 = [self lpImageFromPreviewImage:v18];
      [v7 setThumbnail:v19];
    }

    typeUTI = [self typeUTI];
    [v7 setType:typeUTI];

    [v7 setSize:{objc_msgSend(self, "fileSize")}];
  }

  title = [self title];
  [v7 setName:title];

  creationDate = [self creationDate];
  [v7 setCreationDate:creationDate];

  [v4 setSpecialization:v7];
  if ([self attachmentType] == 4)
  {
    typeUTI2 = [self typeUTI];
    if (typeUTI2)
    {
      v24 = typeUTI2;
      media = [self media];
      mediaURL = [media mediaURL];

      if (mediaURL)
      {
        v27 = MEMORY[0x1E69B7680];
        typeUTI3 = [self typeUTI];
        v29 = [v27 mimeTypeFromUTI:typeUTI3];

        gotLoadHelper_x8__OBJC_CLASS___LPAudioProperties(v30);
        v32 = objc_alloc_init(*(v31 + 3136));
        gotLoadHelper_x8__OBJC_CLASS___LPAudio(v33);
        v35 = objc_alloc(*(v34 + 3128));
        media2 = [self media];
        mediaURL2 = [media2 mediaURL];
        v38 = [v35 initByReferencingFileURL:mediaURL2 MIMEType:v29 properties:v32];

        [v4 setAudio:v38];
      }
    }
  }

  return v4;
}

- (id)fallbackRemoteAttachmentMetadata
{
  if ([self attachmentType] == 7)
  {
    [self fallbackMapMetadata];
  }

  else
  {
    [self fallbackWebMetadata];
  }
  v2 = ;

  return v2;
}

- (id)plainURLMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3232));
  v5 = [self URL];
  [v4 setURL:v5];

  return v4;
}

- (void)requestRemoteMetadata
{
  if ([self attachmentType] == 7)
  {
    [self mapPreviewGenerationQueue];
  }

  else
  {
    [self webPreviewGenerationQueue];
  }
  v2 = ;
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__ICAttachment_LinkPresentation__requestRemoteMetadata__block_invoke;
  v3[3] = &unk_1E846AA18;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)loadingAttachmentsMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(self);
  v2 = objc_alloc_init(*(v1 + 3232));
  v3 = __ICLocalizedFrameworkString_impl(@"Loading…", @"Loading…", 0, 1);
  [v2 setTitle:v3];

  return v2;
}

- (void)requestFileMetadataIfNecessary
{
  if ([self attachmentType] != 14 && objc_msgSend(self, "attachmentType") != 15 && objc_msgSend(self, "attachmentType") != 4)
  {
    attachmentModel = [self attachmentModel];
    if ([attachmentModel needToGeneratePreviews])
    {
      filePreviewGenerationQueue = [self filePreviewGenerationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__ICAttachment_LinkPresentation__requestFileMetadataIfNecessary__block_invoke;
      block[3] = &unk_1E8468BA0;
      v5 = attachmentModel;
      dispatch_async(filePreviewGenerationQueue, block);
    }
  }
}

- (id)lpImageFromPreviewImage:()LinkPresentation
{
  v4 = a3;
  if (![self isPasswordProtected])
  {
    previewImageURL = [v4 previewImageURL];
    v10 = MEMORY[0x1E69B7680];
    attachmentModel = [self attachmentModel];
    previewImageTypeUTI = [attachmentModel previewImageTypeUTI];
    v6 = [v10 mimeTypeFromUTI:previewImageTypeUTI];

    v14 = 0;
    if (!previewImageURL || !v6)
    {
      goto LABEL_10;
    }

    gotLoadHelper_x8__OBJC_CLASS___LPImage(v13);
    v9 = [objc_alloc(*(v15 + 3176)) initByReferencingFileURL:previewImageURL MIMEType:v6];
LABEL_9:
    v14 = v9;
LABEL_10:

    goto LABEL_12;
  }

  if ([self isAuthenticated])
  {
    previewImageURL = [v4 decryptedImageData];
    if (!previewImageURL)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((decryptedImageData) != nil)" functionName:"-[ICAttachment(LinkPresentation) lpImageFromPreviewImage:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "decryptedImageData"}];
    }

    v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:previewImageURL];
    gotLoadHelper_x8__OBJC_CLASS___LPImage(v7);
    v9 = [objc_alloc(*(v8 + 3176)) initWithPlatformImage:v6];
    goto LABEL_9;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)lpImageFromFallbackPDF
{
  v2 = objc_alloc(MEMORY[0x1E6978028]);
  fallbackPDFData = [self fallbackPDFData];
  v4 = [v2 initWithData:fallbackPDFData];

  v5 = [v4 pageAtIndex:0];
  [v5 boundsForBox:0];
  TSDScaleSizeWithinSize();
  v8 = [MEMORY[0x1E69B7830] renderedImageForPage:objc_msgSend(v5 scale:"pageRef") size:TSUDeviceRGBColorSpace() colorSpace:{1.0, v6, v7}];
  gotLoadHelper_x8__OBJC_CLASS___LPImage(v9);
  v11 = [objc_alloc(*(v10 + 3176)) initWithPlatformImage:v8];

  return v11;
}

- (id)archiveLinkmetadata:()LinkPresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = v6;
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      identifier = [self identifier];
      *buf = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = identifier;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_1D4171000, v8, OS_LOG_TYPE_ERROR, "Converting metadata %@ for attachment with identifier: %@ failed with error: %@", buf, 0x20u);
    }

    v5 = 0;
  }

  else if (!v5)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((archivedData) != nil)" functionName:"-[ICAttachment(LinkPresentation) archiveLinkmetadata:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "archivedData"}];
  }

  return v5;
}

- (id)filePreviewGenerationQueue
{
  if (filePreviewGenerationQueue_onceToken != -1)
  {
    [ICAttachment(LinkPresentation) filePreviewGenerationQueue];
  }

  v1 = filePreviewGenerationQueue_queue;

  return v1;
}

- (id)webPreviewGenerationQueue
{
  if (webPreviewGenerationQueue_onceToken != -1)
  {
    [ICAttachment(LinkPresentation) webPreviewGenerationQueue];
  }

  v1 = webPreviewGenerationQueue_queue;

  return v1;
}

- (id)mapPreviewGenerationQueue
{
  if (mapPreviewGenerationQueue_onceToken != -1)
  {
    [ICAttachment(LinkPresentation) mapPreviewGenerationQueue];
  }

  v1 = mapPreviewGenerationQueue_queue;

  return v1;
}

- (id)fallbackWebMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3232));
  v5 = [self URL];
  [v4 setURL:v5];

  title = [self title];
  [v4 setTitle:title];

  summary = [self summary];
  [v4 setSummary:summary];

  return v4;
}

- (id)fallbackMapMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPMapMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3280));
  title = [self title];
  [v4 setName:title];

  summary = [self summary];
  [v4 setAddress:summary];

  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v7);
  v9 = objc_alloc_init(*(v8 + 3232));
  [v9 setSpecialization:v4];
  v10 = [self URL];
  [v9 setURL:v10];

  [v9 URL];

  return v9;
}

- (void)retrieveLinkMetadata
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "LPLinkMetadata unarchiving error: %@", &v2, 0xCu);
}

@end