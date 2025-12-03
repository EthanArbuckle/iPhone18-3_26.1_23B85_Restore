@interface ICAttachmentWebModel(PreviewGeneration)
- (uint64_t)downloadPreviewForAttachmentURL:()PreviewGeneration;
- (uint64_t)extractPreviewImagesFromSynapseData:()PreviewGeneration;
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (uint64_t)needToGeneratePreviews;
- (uint64_t)updateAttachmentPreviewImagesMetadata;
- (void)saveImagesFromLinkMetadata:()PreviewGeneration;
- (void)updateAttachmentWithPreviewImage:()PreviewGeneration;
- (void)updateTitle:()PreviewGeneration andDescription:;
@end

@implementation ICAttachmentWebModel(PreviewGeneration)

- (uint64_t)needToGeneratePreviews
{
  v37 = *MEMORY[0x1E69E9840];
  attachment = [self attachment];
  if ([attachment hasSynapseLink])
  {
    attachment2 = [self attachment];
    previewUpdateDate = [attachment2 previewUpdateDate];

    if (previewUpdateDate)
    {
      return 0;
    }
  }

  else
  {
  }

  attachment3 = [self attachment];
  v9 = [attachment3 URL];
  if ([v9 ic_isWebURL] && (objc_msgSend(self, "isGeneratingPreviews") & 1) == 0)
  {
    attachment4 = [self attachment];
    if ([attachment4 wasCreatedByCurrentUser])
    {
      attachment5 = [self attachment];
      if ([attachment5 metadataExists])
      {
        attachment6 = [self attachment];
        previewUpdateDate2 = [attachment6 previewUpdateDate];
        if (previewUpdateDate2)
        {
          attachment7 = [self attachment];
          v7 = [attachment7 hasMetadata] ^ 1;
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
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    attachment8 = [self attachment];
    identifier = [attachment8 identifier];
    attachment9 = [self attachment];
    previewUpdateDate3 = [attachment9 previewUpdateDate];
    attachment10 = [self attachment];
    v25 = 138413570;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = identifier;
    v31 = 1024;
    v32 = v7;
    v33 = 2112;
    v34 = previewUpdateDate3;
    v35 = 1024;
    hasMetadata = [attachment10 hasMetadata];
    _os_log_debug_impl(&dword_1D4171000, v15, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d self.attachment.previewUpdateDate %@ has self.attachment.metadataData %d", &v25, 0x36u);
  }

  return v7;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v5 = a3;
  if ([self isGeneratingPreviews])
  {
    v6 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentWebModel(PreviewGeneration) generatePreviewsInOperation:v6];
    }

    v7 = 0;
    goto LABEL_15;
  }

  [self setGeneratingPreviews:1];
  v44 = 0;
  v45[0] = &v44;
  v45[1] = 0x3032000000;
  v45[2] = __Block_byref_object_copy__45;
  v45[3] = __Block_byref_object_dispose__45;
  v46 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__45;
  v42 = __Block_byref_object_dispose__45;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__45;
  v28 = __Block_byref_object_dispose__45;
  v29 = 0;
  objc_initWeak(&location, self);
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __71__ICAttachmentWebModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
  v16 = &unk_1E846BEF0;
  objc_copyWeak(v22, &location);
  v17 = &v44;
  v18 = &v38;
  v19 = &v24;
  v20 = &v34;
  v22[1] = a2;
  v21 = &v30;
  [managedObjectContext performBlockAndWait:&v13];

  if (*(v35 + 24) == 1)
  {
    updateAttachmentPreviewImagesMetadata = [self downloadPreviewForAttachmentURL:{v39[5], v13, v14, v15, v16}];
  }

  else if (*(v31 + 24) == 1)
  {
    updateAttachmentPreviewImagesMetadata = [self updateAttachmentPreviewImagesMetadata];
  }

  else
  {
    if (!v25[5])
    {
      v7 = 0;
      goto LABEL_12;
    }

    updateAttachmentPreviewImagesMetadata = [self extractPreviewImagesFromSynapseData:{v13, v14, v15, v16}];
  }

  v7 = updateAttachmentPreviewImagesMetadata;
LABEL_12:
  v11 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentWebModel(PreviewGeneration) *)v45 generatePreviewsInOperation:v11];
  }

  [self setGeneratingPreviews:0];
  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
LABEL_15:

  return v7;
}

- (uint64_t)extractPreviewImagesFromSynapseData:()PreviewGeneration
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  objc_initWeak(&location, self);
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__ICAttachmentWebModel_PreviewGeneration__extractPreviewImagesFromSynapseData___block_invoke;
  v9[3] = &unk_1E846AAB8;
  objc_copyWeak(&v10, &location);
  v9[4] = &v12;
  [managedObjectContext performBlockAndWait:v9];

  v7 = *(v13 + 24);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (uint64_t)downloadPreviewForAttachmentURL:()PreviewGeneration
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke;
  v10[3] = &unk_1E846BF40;
  v11 = v4;
  v6 = v4;
  objc_copyWeak(&v15, &location);
  v13 = v5;
  v14 = &v16;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], v10);
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v17 + 24);

  objc_destroyWeak(&v15);
  _Block_object_dispose(&v16, 8);
  objc_destroyWeak(&location);
  return v8;
}

- (uint64_t)updateAttachmentPreviewImagesMetadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__ICAttachmentWebModel_PreviewGeneration__updateAttachmentPreviewImagesMetadata__block_invoke;
  v6[3] = &unk_1E846B1D8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)updateTitle:()PreviewGeneration andDescription:
{
  v7 = a3;
  v8 = a4;
  attachment = [self attachment];
  if (![attachment isValidObject])
  {
LABEL_10:

    goto LABEL_11;
  }

  previewGenerationOperationCancelled = [self previewGenerationOperationCancelled];

  if ((previewGenerationOperationCancelled & 1) == 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    attachment2 = [self attachment];
    identifier = [attachment2 identifier];
    attachment = [v11 stringWithFormat:@"%@ %@ %@", v13, v14, identifier];

    v17 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentWebModel(PreviewGeneration) *)a2 updateTitle:attachment andDescription:v17];
    }

    if ([v7 length])
    {
      attachment3 = [self attachment];
      title = [attachment3 title];
      v20 = [title isEqualToString:v7];

      if ((v20 & 1) == 0)
      {
        attachment4 = [self attachment];
        [attachment4 setTitle:v7];
      }
    }

    attachment5 = [self attachment];
    summary = [attachment5 summary];
    v24 = [summary length];

    if (!v24)
    {
      attachment6 = [self attachment];
      [attachment6 setSummary:v8];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)saveImagesFromLinkMetadata:()PreviewGeneration
{
  v17 = a3;
  image = [v17 image];

  if (image)
  {
    image2 = [v17 image];
    platformImage = [image2 platformImage];
    [platformImage size];
    v9 = v8 <= 192.0 && v7 <= 192.0;
    goto LABEL_7;
  }

  icon = [v17 icon];

  if (icon)
  {
    image2 = [v17 icon];
    platformImage = [image2 platformImage];
    v9 = 1;
LABEL_7:
    [self updateAttachmentWithPreviewImage:platformImage];

    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:
  attachment = [self attachment];
  metadata = [attachment metadata];
  v13 = metadata;
  if (!metadata)
  {
    metadata = MEMORY[0x1E695E0F8];
  }

  v14 = [metadata mutableCopy];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v14 setObject:v15 forKey:*MEMORY[0x1E69B7408]];

  attachment2 = [self attachment];
  [attachment2 setMetadata:v14];
}

- (void)updateAttachmentWithPreviewImage:()PreviewGeneration
{
  v10 = a3;
  [v10 scale];
  v5 = v4;
  attachment = [self attachment];
  v7 = [attachment updateAttachmentPreviewImageWithImage:v10 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:v5];

  attachment2 = [self attachment];
  [attachment2 updateChangeCountWithReason:@"Updated preview images with image"];

  attachment3 = [self attachment];
  [attachment3 ic_postNotificationOnMainThreadWithName:*MEMORY[0x1E69B7420]];
}

- (void)generatePreviewsInOperation:()PreviewGeneration .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "%@ completed", &v3, 0xCu);
}

- (void)updateTitle:()PreviewGeneration andDescription:.cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1D4171000, a3, OS_LOG_TYPE_DEBUG, "%@ %@", &v6, 0x16u);
}

@end