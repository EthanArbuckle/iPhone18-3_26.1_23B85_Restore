@interface ICAttachmentGenericModel
@end

@implementation ICAttachmentGenericModel

void __75__ICAttachmentGenericModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) media];
  v2 = [v5 mediaURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __75__ICAttachmentGenericModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) persistLinkMetadata:v5];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (v6)
  {
    v8 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __75__ICAttachmentGenericModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_cold_1(v7, v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __75__ICAttachmentGenericModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error generating metadata: %@", &v2, 0xCu);
}

@end