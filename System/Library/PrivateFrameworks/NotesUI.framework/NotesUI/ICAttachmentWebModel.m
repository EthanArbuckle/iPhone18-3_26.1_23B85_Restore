@interface ICAttachmentWebModel
@end

@implementation ICAttachmentWebModel

void __71__ICAttachmentWebModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(*(a1 + 80));
  v7 = [WeakRetained attachment];
  v8 = [v7 identifier];
  v9 = [v3 stringWithFormat:@"%@ %@ %@", v5, v6, v8];
  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if ([WeakRetained previewGenerationOperationCancelled])
  {
    goto LABEL_19;
  }

  v12 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __71__ICAttachmentWebModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_cold_1(a1 + 32, v12);
  }

  v13 = [WeakRetained attachment];
  v14 = [v13 URL];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = objc_loadWeakRetained((a1 + 72));
  v18 = [v17 attachment];
  v19 = [v18 hasSynapseLink];

  if (v19)
  {
    v20 = objc_loadWeakRetained((a1 + 72));
    v21 = [v20 attachment];
    v22 = [v21 synapseData];
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  else
  {
    v25 = [WeakRetained attachment];
    v26 = [v25 previewUpdateDate];
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = [*(*(*(a1 + 40) + 8) + 40) isFileURL] ^ 1;
    }

    v28 = [WeakRetained attachment];
    if ([v28 urlExpired])
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    else
    {
      v29 = [WeakRetained attachment];
      *(*(*(a1 + 56) + 8) + 24) = v27 & 1 | (([v29 metadataExists] & 1) == 0);
    }

    if (!v27)
    {
      goto LABEL_15;
    }

    v20 = [WeakRetained attachment];
    [v20 deleteAttachmentPreviewImages];
  }

LABEL_15:
  v30 = [WeakRetained attachment];
  v31 = [v30 previewUpdateDate];
  if (v31)
  {
    v32 = [WeakRetained attachment];
    *(*(*(a1 + 64) + 8) + 24) = [v32 hasMetadata] ^ 1;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

LABEL_19:
}

void __79__ICAttachmentWebModel_PreviewGeneration__extractPreviewImagesFromSynapseData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained attachment];
  v3 = [v2 synapseBasedMetadata];

  [WeakRetained saveImagesFromLinkMetadata:v3];
  *(*(*(a1 + 32) + 8) + 24) = v3 != 0;
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [WeakRetained attachment];
  [v5 setPreviewUpdateDate:v4];
}

void __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD68] requestWithURL:*(a1 + 32)];
  [v2 _setNonAppInitiated:1];
  gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(v3);
  v5 = objc_alloc_init(*(v4 + 3296));
  [v5 _setShouldDownloadMediaSubresources:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_2;
  v8[3] = &unk_1E846BF18;
  objc_copyWeak(&v10, (a1 + 64));
  v8[4] = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  [v5 startFetchingMetadataForRequest:v2 completionHandler:v8];

  objc_destroyWeak(&v10);
}

void __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v9 = [WeakRetained attachment];
    v10 = [v9 managedObjectContext];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_3;
    v23[3] = &unk_1E8468D98;
    v23[4] = v8;
    v11 = v5;
    v12 = *(a1 + 32);
    v24 = v11;
    v25 = v12;
    [v10 performBlockAndWait:v23];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    objc_opt_class();
    v13 = [v6 userInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    v15 = ICCheckedDynamicCast();

    v16 = [v8 attachment];
    v17 = [v16 managedObjectContext];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_4;
    v19[3] = &unk_1E8468D98;
    v20 = v15;
    v21 = v8;
    v22 = v6;
    v18 = v15;
    [v17 performBlock:v19];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_3(id *a1)
{
  v2 = a1[4];
  v3 = [a1[5] title];
  v4 = [a1[5] summary];
  [v2 updateTitle:v3 andDescription:v4];

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [a1[6] attachment];
  [v6 setPreviewUpdateDate:v5];

  [a1[6] saveImagesFromLinkMetadata:a1[5]];
  [a1[5] setImage:0];
  v7 = [a1[4] attachment];
  if (([v7 metadataExists] & 1) == 0)
  {
    [v7 persistLinkMetadata:a1[5]];
    [v7 ic_postNotificationOnMainThreadWithName:@"ICAttachmentInitialPreviewDidLoadNotification"];
  }
}

void __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 code] != -1009)
  {
    v3 = [*(a1 + 40) attachment];
    [v3 setUrlExpired:1];

    v4 = [*(a1 + 40) attachment];
    v5 = [v4 managedObjectContext];
    [v5 ic_save];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = [*(a1 + 40) attachment];
  [v6 postNotificationName:@"ICAttachmentDidFailFetchingMetadataNotification" object:v7];

  v8 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_4_cold_1(a1, v8);
  }
}

void __80__ICAttachmentWebModel_PreviewGeneration__updateAttachmentPreviewImagesMetadata__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 previewImages];

  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        [v9 width];
        if (v10 <= 192.0)
        {
          [v9 height];
          if (v11 <= 192.0)
          {
            continue;
          }
        }

        v7 = 0;
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  v12 = [*(a1 + 32) attachment];
  v13 = [v12 metadata];
  v14 = v13;
  if (!v13)
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  v15 = [v13 mutableCopy];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:v7 & 1];
  [v15 setObject:v16 forKey:*MEMORY[0x1E69B7408]];

  v17 = [*(a1 + 32) attachment];
  [v17 setMetadata:v15];

  v18 = [*(a1 + 32) attachment];
  [v18 updateChangeCountWithReason:@"Updated metadata"];

  v19 = [*(a1 + 32) attachment];
  [v19 ic_postNotificationOnMainThreadWithName:*MEMORY[0x1E69B7420]];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

uint64_t __56__ICAttachmentWebModel_UI__genericBrickThumbnailCreator__block_invoke(double a1)
{
  v2 = objc_opt_class();

  return [v2 genericBrickThumbnailWithSize:36.0 scale:{36.0, a1}];
}

uint64_t __61__ICAttachmentWebModel_UI__genericBrickLargeThumbnailCreator__block_invoke(double a1)
{
  v2 = objc_opt_class();

  return [v2 genericBrickThumbnailWithSize:72.0 scale:{72.0, a1}];
}

void __71__ICAttachmentWebModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "%@ start", &v3, 0xCu);
}

void __75__ICAttachmentWebModel_PreviewGeneration__downloadPreviewForAttachmentURL___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Web preview generation failed with error: %@", &v3, 0xCu);
}

@end