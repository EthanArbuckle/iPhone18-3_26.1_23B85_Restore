@interface ICAttachmentPaperBundleModel
@end

@implementation ICAttachmentPaperBundleModel

void __70__ICAttachmentPaperBundleModel_PreviewGeneration__generateFallbackPDF__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(v1[3] + 1) + 24) = [*(a1 + 32) writeFallbackPDFData:*(a1 + 40)];
  [objc_opt_class() generateImagePreviewsForAttachment:*v1 withFallbackPDFData:v1[1]];
  if (*(*(v1[3] + 1) + 24) == 1)
  {
    v2 = [MEMORY[0x1E695DF00] date];
    [*v1 setPreviewUpdateDate:v2];

    [*v1 updateChangeCountWithReason:@"Regenerated paper document fallback PDF and preview images"];
    v3 = [*v1 modificationDate];
    v4 = [*v1 previewUpdateDate];
    v5 = [v3 compare:v4];

    if (v5 == 1)
    {
      v6 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __70__ICAttachmentPaperBundleModel_PreviewGeneration__generateFallbackPDF__block_invoke_cold_1(v1, v6);
      }

      v7 = [*v1 previewUpdateDate];
      [*v1 setModificationDate:v7];
    }

    else
    {
      v8 = [*v1 modificationDate];
      [*v1 setModificationDate:v8];
    }
  }
}

void __79__ICAttachmentPaperBundleModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) paperBundleURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v8 = [*(a1 + 32) attachment];
  v5 = [v8 ic_loggingIdentifier];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __70__ICAttachmentPaperBundleModel_PreviewGeneration__generateFallbackPDF__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*a1 ic_loggingDescription];
  v5 = [*a1 modificationDate];
  v6 = [*a1 creationDate];
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Attachment's modificationDate was later than its previewUpdateDate. Using previewUpdateDate as modificationDate so we don't end up in a preview loop (Attachment: %@, modificationDate: %@, previewUpdateDate: %@).", &v7, 0x20u);
}

@end