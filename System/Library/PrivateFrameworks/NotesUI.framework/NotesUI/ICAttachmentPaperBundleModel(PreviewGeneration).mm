@interface ICAttachmentPaperBundleModel(PreviewGeneration)
+ (uint64_t)fallbackPDFGenerationEnabled;
+ (uint64_t)generateImagePreviewsForAttachment:()PreviewGeneration withFallbackPDFData:;
- (BOOL)needToGeneratePreviews;
- (uint64_t)generateFallbackPDF;
- (uint64_t)generateFallbackPDFIfNecessary;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (void)needToGeneratePreviews;
@end

@implementation ICAttachmentPaperBundleModel(PreviewGeneration)

- (BOOL)needToGeneratePreviews
{
  v36 = *MEMORY[0x1E69E9840];
  if ((ICInternalSettingsIsPDFsInNotesEnabled() & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentPaperBundleModel(PreviewGeneration) *)v12 needToGeneratePreviews];
    }

    goto LABEL_11;
  }

  if (([objc_opt_class() fallbackPDFGenerationEnabled] & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentPaperBundleModel(PreviewGeneration) *)v12 needToGeneratePreviews];
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  attachment = [self attachment];
  previewUpdateDate = [attachment previewUpdateDate];

  if (previewUpdateDate)
  {
    attachment2 = [self attachment];
    previewUpdateDate2 = [attachment2 previewUpdateDate];
    attachment3 = [self attachment];
    modificationDate = [attachment3 modificationDate];
    v10 = [previewUpdateDate2 compare:modificationDate];
    v11 = v10 == -1;

    v12 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v23 = v10 == -1;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      attachment4 = [self attachment];
      identifier = [attachment4 identifier];
      attachment5 = [self attachment];
      previewUpdateDate3 = [attachment5 previewUpdateDate];
      attachment6 = [self attachment];
      modificationDate2 = [attachment6 modificationDate];
      *buf = 138413570;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = identifier;
      v30 = 1024;
      v31 = v23;
      v32 = 2112;
      v33 = previewUpdateDate3;
      v34 = 2112;
      v35 = modificationDate2;
      _os_log_debug_impl(&dword_1D4171000, v12, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d self.attachment.previewUpdateDate %@ self.attachment.modificationDate %@", buf, 0x3Au);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentPaperBundleModel(PreviewGeneration) *)self needToGeneratePreviews];
    }

    v11 = 1;
  }

LABEL_12:

  return v11;
}

+ (uint64_t)fallbackPDFGenerationEnabled
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  ic_isAppExtension = [mainBundle ic_isAppExtension];

  if (ic_isAppExtension)
  {
    return 0;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69B7488]] ^ 1;

  return v2;
}

- (uint64_t)generateFallbackPDFIfNecessary
{
  result = [self needToGeneratePreviews];
  if (result)
  {

    return [self generateFallbackPDF];
  }

  return result;
}

- (uint64_t)generateFallbackPDF
{
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v4 = [MEMORY[0x1E69B76A8] generateFallbackPDFDataForAttachment:attachment];
  if ([v4 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__ICAttachmentPaperBundleModel_PreviewGeneration__generateFallbackPDF__block_invoke;
    v8[3] = &unk_1E84692A8;
    v12 = &v13;
    v9 = attachment;
    v10 = v4;
    selfCopy = self;
    [managedObjectContext performBlockAndWait:v8];
    v5 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICAttachmentPaperBundleModel(PreviewGeneration) *)v6 generateFallbackPDF];
    }

    v5 = 0;
  }

  return v5 & 1;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v4 = a3;
  if (+[ICSystemPaperTextAttachment isEnabled])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__68;
    v19 = __Block_byref_object_dispose__68;
    v20 = 0;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__68;
    v13[4] = __Block_byref_object_dispose__68;
    v14 = 0;
    attachment = [self attachment];
    managedObjectContext = [attachment managedObjectContext];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__ICAttachmentPaperBundleModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
    v12[3] = &unk_1E8468FF8;
    v12[4] = self;
    v12[5] = &v15;
    v12[6] = v13;
    [managedObjectContext performBlockAndWait:v12];

    if (v16[5] && ([MEMORY[0x1E696AC08] defaultManager], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16[5], "path"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "fileExistsAtPath:", v8), v8, v7, v9))
    {
      generateFallbackPDF = [self generateFallbackPDF];
    }

    else
    {
      generateFallbackPDF = 0;
    }

    _Block_object_dispose(v13, 8);

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    generateFallbackPDF = 0;
  }

  return generateFallbackPDF;
}

+ (uint64_t)generateImagePreviewsForAttachment:()PreviewGeneration withFallbackPDFData:
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E6978028]) initWithData:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 pageAtIndex:0];
      v10 = v9;
      v11 = v9 != 0;
      if (v9)
      {
        v37 = v8;
        v38 = v9 != 0;
        [v9 boundsForBox:1];
        v13 = v12;
        [v5 setSizeWidth:v14];
        [v5 setSizeHeight:v13];
        previewImages = [v5 previewImages];
        v16 = [previewImages mutableCopy];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v17 = +[ICPreviewDeviceContext sharedContext];
        v18 = [v17 deviceInfoScalable:0];

        v19 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v44;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v43 + 1) + 8 * i);
              [v23 imageSize];
              v25 = v24;
              [v23 imageSize];
              v27 = [v10 thumbnailOfSize:1 forBox:{v25, v26}];
              if (v27)
              {
                [v23 scale];
                v28 = [v5 updateAttachmentPreviewImageWithImage:v27 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:?];
                [v16 ic_removeNonNilObject:v28];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
          }

          while (v20);
        }

        if ([v16 count])
        {
          [v5 removePreviewImages:v16];
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v29 = v16;
          v30 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v40;
            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v40 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v39 + 1) + 8 * j);
                managedObjectContext = [v5 managedObjectContext];
                [managedObjectContext deleteObject:v34];
              }

              v31 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v31);
          }
        }

        v11 = v38;
        v8 = v37;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)needToGeneratePreviews
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  attachment = [self attachment];
  identifier = [attachment identifier];
  attachment2 = [self attachment];
  previewUpdateDate = [attachment2 previewUpdateDate];
  v13 = 138413058;
  v14 = v7;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = identifier;
  v19 = 2112;
  v20 = previewUpdateDate;
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return 1 self.attachment.previewUpdateDate %@", &v13, 0x2Au);
}

@end