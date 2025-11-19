@interface ICAttachmentMapModel
@end

@implementation ICAttachmentMapModel

void __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained attachment];
  v4 = [v3 URL];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [WeakRetained attachment];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2;
  v8[3] = &unk_1E846AA90;
  v8[4] = WeakRetained;
  [v7 updatePlaceInLocationIfNeededHandler:v8];
}

void __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_cold_1(v5, v6);
    }

    goto LABEL_6;
  }

  if (a2)
  {
    v6 = [*(a1 + 32) attachment];
    v7 = [v6 managedObjectContext];
    [v7 ic_save];

LABEL_6:
  }
}

void __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_13;
  v5[3] = &unk_1E846AAE0;
  v5[4] = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = v4;
  v6 = v4;
  [v1 startFetchingMetadataForRequest:v2 completionHandler:v5];
}

void __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) attachment];
    v9 = [v8 managedObjectContext];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_3;
    v14[3] = &unk_1E8468F80;
    v10 = v5;
    v11 = *(a1 + 32);
    v15 = v10;
    v16 = v11;
    [v9 performBlock:v14];
  }

  else if (v6)
  {
    v12 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_13_cold_1(v7, v12);
    }

    v13 = [*(a1 + 32) attachment];
    [v13 ic_postNotificationOnMainThreadWithName:@"ICAttachmentDidFailFetchingMetadataNotification"];

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) specialization];
  gotLoadHelper_x8__OBJC_CLASS___LPMapMetadata(v3);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) specialization];
    v6 = [v5 address];
    v7 = [*(a1 + 40) attachment];
    [v7 setSummary:v6];
  }

  v8 = [*(a1 + 40) attachment];
  [v8 persistLinkMetadata:*(a1 + 32)];

  v9 = [*(a1 + 40) attachment];
  [v9 ic_postNotificationOnMainThreadWithName:@"ICAttachmentInitialPreviewDidLoadNotification"];
}

void __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Updating map location failed: %@", &v2, 0xCu);
}

void __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_13_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Map preview generation failed with error: %@", &v2, 0xCu);
}

@end