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
  v2 = [val managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__ICAttachment_LinkPresentation__retrieveLinkMetadata__block_invoke;
  v16[3] = &unk_1E846D2B0;
  objc_copyWeak(&v17, &location);
  v16[4] = val;
  v16[5] = &v24;
  v16[6] = &v18;
  [v2 performBlockAndWait:v16];

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

    v10 = [v7 specialization];
    gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v11);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [v7 specialization];
      [v13 setName:v19[5]];
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
  v2 = [a1 archiveLinkmetadata:?];
  v3 = [a1 managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__ICAttachment_LinkPresentation__persistLinkMetadata___block_invoke;
  v5[3] = &unk_1E8468F80;
  v5[4] = a1;
  v6 = v2;
  v4 = v2;
  [v3 performBlockAndWait:v5];
}

- (uint64_t)metadataExists
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  objc_initWeak(&location, val);
  v2 = [val managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__ICAttachment_LinkPresentation__metadataExists__block_invoke;
  v5[3] = &unk_1E846AAB8;
  objc_copyWeak(&v6, &location);
  v5[4] = &v8;
  [v2 performBlockAndWait:v5];

  v3 = *(v9 + 24);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (BOOL)usesLinkPresentation
{
  v2 = [a1 attachmentType];
  result = 1;
  if (v2 <= 0xF)
  {
    if (((1 << v2) & 0x362B) != 0)
    {
      return 0;
    }

    else
    {
      v4 = 1 << v2;
      if ((v4 & 0x840) != 0)
      {
        return [a1 preferredViewSize] == 1;
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
    v5 = [a1 attachmentPreviewImageWithMinSize:192.0 scale:{192.0, 1.0}];
    if (v5)
    {
      v6 = [a1 lpImageFromPreviewImage:v5];
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
  [a1 addPreviewImageToMetadata:v4];
  v5 = __ICLocalizedFrameworkString_impl(@"%lu scans", @"%lu scans", 0, 1);
  objc_opt_class();
  v6 = [a1 attachmentModel];
  v7 = ICDynamicCast();

  if (v7)
  {
    v8 = [v7 subAttachmentCount];
  }

  else
  {
    objc_opt_class();
    v9 = [a1 attachmentModel];
    v10 = ICDynamicCast();
    v8 = [v10 paperPageCount];
  }

  v11 = [a1 title];
  [v4 setTitle:v11];

  v12 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v5, v8];
  [v4 setSummary:v12];

  return v4;
}

- (id)fileMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3232));
  gotLoadHelper_x8__OBJC_CLASS___LPFileMetadata(v5);
  v7 = objc_alloc_init(*(v6 + 3160));
  if ([a1 hasFallbackPDF])
  {
    v8 = [a1 lpImageFromFallbackPDF];
    [v7 setThumbnail:v8];
    v9 = [MEMORY[0x1E69B7680] fallbackPDFUTI];
    [v7 setType:v9];

    v10 = [a1 fallbackPDFURL];
    v40 = 0;
    v11 = [v10 getResourceValue:&v40 forKey:*MEMORY[0x1E695DB50] error:0];
    v12 = v40;

    if (v11 && ([v12 floatValue], v13 != 0.0))
    {
      v16 = v13;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [a1 fallbackPDFData];
      v16 = [v15 length];

      objc_autoreleasePoolPop(v14);
    }

    [v7 setSize:v16];
  }

  else
  {
    v17 = [a1 previewImages];

    if (v17)
    {
      v18 = [a1 attachmentPreviewImageWithMinSize:*MEMORY[0x1E695F060] scale:{*(MEMORY[0x1E695F060] + 8), 1.0}];
      v19 = [a1 lpImageFromPreviewImage:v18];
      [v7 setThumbnail:v19];
    }

    v20 = [a1 typeUTI];
    [v7 setType:v20];

    [v7 setSize:{objc_msgSend(a1, "fileSize")}];
  }

  v21 = [a1 title];
  [v7 setName:v21];

  v22 = [a1 creationDate];
  [v7 setCreationDate:v22];

  [v4 setSpecialization:v7];
  if ([a1 attachmentType] == 4)
  {
    v23 = [a1 typeUTI];
    if (v23)
    {
      v24 = v23;
      v25 = [a1 media];
      v26 = [v25 mediaURL];

      if (v26)
      {
        v27 = MEMORY[0x1E69B7680];
        v28 = [a1 typeUTI];
        v29 = [v27 mimeTypeFromUTI:v28];

        gotLoadHelper_x8__OBJC_CLASS___LPAudioProperties(v30);
        v32 = objc_alloc_init(*(v31 + 3136));
        gotLoadHelper_x8__OBJC_CLASS___LPAudio(v33);
        v35 = objc_alloc(*(v34 + 3128));
        v36 = [a1 media];
        v37 = [v36 mediaURL];
        v38 = [v35 initByReferencingFileURL:v37 MIMEType:v29 properties:v32];

        [v4 setAudio:v38];
      }
    }
  }

  return v4;
}

- (id)fallbackRemoteAttachmentMetadata
{
  if ([a1 attachmentType] == 7)
  {
    [a1 fallbackMapMetadata];
  }

  else
  {
    [a1 fallbackWebMetadata];
  }
  v2 = ;

  return v2;
}

- (id)plainURLMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3232));
  v5 = [a1 URL];
  [v4 setURL:v5];

  return v4;
}

- (void)requestRemoteMetadata
{
  if ([a1 attachmentType] == 7)
  {
    [a1 mapPreviewGenerationQueue];
  }

  else
  {
    [a1 webPreviewGenerationQueue];
  }
  v2 = ;
  objc_initWeak(&location, a1);
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
  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(a1);
  v2 = objc_alloc_init(*(v1 + 3232));
  v3 = __ICLocalizedFrameworkString_impl(@"Loading…", @"Loading…", 0, 1);
  [v2 setTitle:v3];

  return v2;
}

- (void)requestFileMetadataIfNecessary
{
  if ([a1 attachmentType] != 14 && objc_msgSend(a1, "attachmentType") != 15 && objc_msgSend(a1, "attachmentType") != 4)
  {
    v2 = [a1 attachmentModel];
    if ([v2 needToGeneratePreviews])
    {
      v3 = [a1 filePreviewGenerationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__ICAttachment_LinkPresentation__requestFileMetadataIfNecessary__block_invoke;
      block[3] = &unk_1E8468BA0;
      v5 = v2;
      dispatch_async(v3, block);
    }
  }
}

- (id)lpImageFromPreviewImage:()LinkPresentation
{
  v4 = a3;
  if (![a1 isPasswordProtected])
  {
    v5 = [v4 previewImageURL];
    v10 = MEMORY[0x1E69B7680];
    v11 = [a1 attachmentModel];
    v12 = [v11 previewImageTypeUTI];
    v6 = [v10 mimeTypeFromUTI:v12];

    v14 = 0;
    if (!v5 || !v6)
    {
      goto LABEL_10;
    }

    gotLoadHelper_x8__OBJC_CLASS___LPImage(v13);
    v9 = [objc_alloc(*(v15 + 3176)) initByReferencingFileURL:v5 MIMEType:v6];
LABEL_9:
    v14 = v9;
LABEL_10:

    goto LABEL_12;
  }

  if ([a1 isAuthenticated])
  {
    v5 = [v4 decryptedImageData];
    if (!v5)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((decryptedImageData) != nil)" functionName:"-[ICAttachment(LinkPresentation) lpImageFromPreviewImage:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "decryptedImageData"}];
    }

    v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v5];
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
  v3 = [a1 fallbackPDFData];
  v4 = [v2 initWithData:v3];

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
      v10 = [a1 identifier];
      *buf = 138412802;
      v13 = v4;
      v14 = 2112;
      v15 = v10;
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
  v5 = [a1 URL];
  [v4 setURL:v5];

  v6 = [a1 title];
  [v4 setTitle:v6];

  v7 = [a1 summary];
  [v4 setSummary:v7];

  return v4;
}

- (id)fallbackMapMetadata
{
  gotLoadHelper_x8__OBJC_CLASS___LPMapMetadata(a2);
  v4 = objc_alloc_init(*(v3 + 3280));
  v5 = [a1 title];
  [v4 setName:v5];

  v6 = [a1 summary];
  [v4 setAddress:v6];

  gotLoadHelper_x8__OBJC_CLASS___LPLinkMetadata(v7);
  v9 = objc_alloc_init(*(v8 + 3232));
  [v9 setSpecialization:v4];
  v10 = [a1 URL];
  [v9 setURL:v10];

  [v9 URL];

  return v9;
}

- (void)retrieveLinkMetadata
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "LPLinkMetadata unarchiving error: %@", &v2, 0xCu);
}

@end