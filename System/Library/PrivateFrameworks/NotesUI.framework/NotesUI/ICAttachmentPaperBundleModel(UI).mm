@interface ICAttachmentPaperBundleModel(UI)
- (ICAttachmentPaperBundleActivityItemSource)activityItem;
- (id)activityItems;
- (void)drawPreviewInRect:()UI;
@end

@implementation ICAttachmentPaperBundleModel(UI)

- (ICAttachmentPaperBundleActivityItemSource)activityItem
{
  v2 = [ICAttachmentPaperBundleActivityItemSource alloc];
  v3 = [a1 attachment];
  v4 = [(ICAttachmentActivityItemSource *)v2 initWithAttachment:v3];

  return v4;
}

- (id)activityItems
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 activityItem];
  v2 = v1;
  if (v1)
  {
    v5[0] = v1;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)drawPreviewInRect:()UI
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  v11 = [a1 attachment];
  if ([v11 isPasswordProtected])
  {
  }

  else
  {
    v12 = [a1 attachment];
    v13 = [v12 hasFallbackPDF];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E6978028]);
      v15 = [a1 attachment];
      v16 = [v15 fallbackPDFURL];
      v17 = [v14 initWithURL:v16];

      goto LABEL_10;
    }
  }

  v18 = [a1 attachment];
  v15 = [v18 fallbackPDFData];

  if (!v15)
  {
    v19 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [a1 attachment];
      v21 = [v20 ic_loggingIdentifier];
      v25 = 138412290;
      v26 = v21;
      _os_log_impl(&dword_1D4171000, v19, OS_LOG_TYPE_INFO, "Fallback PDF data didn't exist for attachment, taking some extra time to generate it: %@", &v25, 0xCu);
    }

    v22 = objc_opt_class();
    v23 = [a1 attachment];
    v15 = [v22 generateFallbackPDFDataForAttachment:v23];
  }

  v17 = [objc_alloc(MEMORY[0x1E6978028]) initWithData:v15];
LABEL_10:

  if (!v17)
  {
    v24 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentPaperBundleModel(UI) drawPreviewInRect:a1];
    }

    goto LABEL_16;
  }

  if (![ICPDFPreviewHelper drawPreviewOfPDFDocument:v17 inRect:a2, a3, a4, a5])
  {
    v24 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentPDFModel(UI) drawPreviewInRect:a1];
    }

LABEL_16:
  }

  objc_autoreleasePoolPop(v10);
}

- (void)drawPreviewInRect:()UI .cold.2(void *a1)
{
  v1 = [a1 attachment];
  v2 = [v1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_4(&dword_1D4171000, v3, v4, "Unable to generate PDF Document from fallback PDF Data for attachment: %@", v5, v6, v7, v8, 2u);
}

@end