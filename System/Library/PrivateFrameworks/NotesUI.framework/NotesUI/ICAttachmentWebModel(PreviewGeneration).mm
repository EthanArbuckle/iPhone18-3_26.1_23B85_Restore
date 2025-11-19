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
  v4 = [a1 attachment];
  if ([v4 hasSynapseLink])
  {
    v5 = [a1 attachment];
    v6 = [v5 previewUpdateDate];

    if (v6)
    {
      return 0;
    }
  }

  else
  {
  }

  v8 = [a1 attachment];
  v9 = [v8 URL];
  if ([v9 ic_isWebURL] && (objc_msgSend(a1, "isGeneratingPreviews") & 1) == 0)
  {
    v10 = [a1 attachment];
    if ([v10 wasCreatedByCurrentUser])
    {
      v11 = [a1 attachment];
      if ([v11 metadataExists])
      {
        v12 = [a1 attachment];
        v13 = [v12 previewUpdateDate];
        if (v13)
        {
          v14 = [a1 attachment];
          v7 = [v14 hasMetadata] ^ 1;
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
    v20 = [a1 attachment];
    v21 = [v20 identifier];
    v22 = [a1 attachment];
    v23 = [v22 previewUpdateDate];
    v24 = [a1 attachment];
    v25 = 138413570;
    v26 = v18;
    v27 = 2112;
    v28 = v19;
    v29 = 2112;
    v30 = v21;
    v31 = 1024;
    v32 = v7;
    v33 = 2112;
    v34 = v23;
    v35 = 1024;
    v36 = [v24 hasMetadata];
    _os_log_debug_impl(&dword_1D4171000, v15, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d self.attachment.previewUpdateDate %@ has self.attachment.metadataData %d", &v25, 0x36u);
  }

  return v7;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v5 = a3;
  if ([a1 isGeneratingPreviews])
  {
    v6 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentWebModel(PreviewGeneration) generatePreviewsInOperation:v6];
    }

    v7 = 0;
    goto LABEL_15;
  }

  [a1 setGeneratingPreviews:1];
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
  objc_initWeak(&location, a1);
  v8 = [a1 attachment];
  v9 = [v8 managedObjectContext];
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
  [v9 performBlockAndWait:&v13];

  if (*(v35 + 24) == 1)
  {
    v10 = [a1 downloadPreviewForAttachmentURL:{v39[5], v13, v14, v15, v16}];
  }

  else if (*(v31 + 24) == 1)
  {
    v10 = [a1 updateAttachmentPreviewImagesMetadata];
  }

  else
  {
    if (!v25[5])
    {
      v7 = 0;
      goto LABEL_12;
    }

    v10 = [a1 extractPreviewImagesFromSynapseData:{v13, v14, v15, v16}];
  }

  v7 = v10;
LABEL_12:
  v11 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentWebModel(PreviewGeneration) *)v45 generatePreviewsInOperation:v11];
  }

  [a1 setGeneratingPreviews:0];
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
  objc_initWeak(&location, a1);
  v5 = [a1 attachment];
  v6 = [v5 managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__ICAttachmentWebModel_PreviewGeneration__extractPreviewImagesFromSynapseData___block_invoke;
  v9[3] = &unk_1E846AAB8;
  objc_copyWeak(&v10, &location);
  v9[4] = &v12;
  [v6 performBlockAndWait:v9];

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
  objc_initWeak(&location, a1);
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
  v12 = a1;
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
  v2 = [a1 attachment];
  v3 = [v2 managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__ICAttachmentWebModel_PreviewGeneration__updateAttachmentPreviewImagesMetadata__block_invoke;
  v6[3] = &unk_1E846B1D8;
  v6[4] = a1;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)updateTitle:()PreviewGeneration andDescription:
{
  v7 = a3;
  v8 = a4;
  v9 = [a1 attachment];
  if (![v9 isValidObject])
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = [a1 previewGenerationOperationCancelled];

  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    v15 = [a1 attachment];
    v16 = [v15 identifier];
    v9 = [v11 stringWithFormat:@"%@ %@ %@", v13, v14, v16];

    v17 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentWebModel(PreviewGeneration) *)a2 updateTitle:v9 andDescription:v17];
    }

    if ([v7 length])
    {
      v18 = [a1 attachment];
      v19 = [v18 title];
      v20 = [v19 isEqualToString:v7];

      if ((v20 & 1) == 0)
      {
        v21 = [a1 attachment];
        [v21 setTitle:v7];
      }
    }

    v22 = [a1 attachment];
    v23 = [v22 summary];
    v24 = [v23 length];

    if (!v24)
    {
      v25 = [a1 attachment];
      [v25 setSummary:v8];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)saveImagesFromLinkMetadata:()PreviewGeneration
{
  v17 = a3;
  v4 = [v17 image];

  if (v4)
  {
    v5 = [v17 image];
    v6 = [v5 platformImage];
    [v6 size];
    v9 = v8 <= 192.0 && v7 <= 192.0;
    goto LABEL_7;
  }

  v10 = [v17 icon];

  if (v10)
  {
    v5 = [v17 icon];
    v6 = [v5 platformImage];
    v9 = 1;
LABEL_7:
    [a1 updateAttachmentWithPreviewImage:v6];

    goto LABEL_8;
  }

  v9 = 1;
LABEL_8:
  v11 = [a1 attachment];
  v12 = [v11 metadata];
  v13 = v12;
  if (!v12)
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  v14 = [v12 mutableCopy];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  [v14 setObject:v15 forKey:*MEMORY[0x1E69B7408]];

  v16 = [a1 attachment];
  [v16 setMetadata:v14];
}

- (void)updateAttachmentWithPreviewImage:()PreviewGeneration
{
  v10 = a3;
  [v10 scale];
  v5 = v4;
  v6 = [a1 attachment];
  v7 = [v6 updateAttachmentPreviewImageWithImage:v10 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:v5];

  v8 = [a1 attachment];
  [v8 updateChangeCountWithReason:@"Updated preview images with image"];

  v9 = [a1 attachment];
  [v9 ic_postNotificationOnMainThreadWithName:*MEMORY[0x1E69B7420]];
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