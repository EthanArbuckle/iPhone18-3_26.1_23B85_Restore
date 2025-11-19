@interface ICAttachmentPDFModel(UI)
- (void)drawPreviewInRect:()UI;
@end

@implementation ICAttachmentPDFModel(UI)

- (void)drawPreviewInRect:()UI
{
  v10 = [a1 attachment];
  v11 = [v10 preferredViewSize];

  if (v11 == 1)
  {
    v19.receiver = a1;
    v19.super_class = &off_1F50593E8;
    objc_msgSendSuper2(&v19, sel_drawPreviewInRect_, a2, a3, a4, a5);
    return;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc(MEMORY[0x1E6978028]);
  v14 = [a1 attachment];
  v15 = [v14 media];
  v16 = [v15 mediaURL];
  v17 = [v13 initWithURL:v16];

  if (!v17)
  {
    v18 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentPDFModel(UI) drawPreviewInRect:a1];
    }

    goto LABEL_9;
  }

  if (![ICPDFPreviewHelper drawPreviewOfPDFDocument:v17 inRect:a2, a3, a4, a5])
  {
    v18 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ICAttachmentPDFModel(UI) drawPreviewInRect:a1];
    }

LABEL_9:
  }

  objc_autoreleasePoolPop(v12);
}

- (void)drawPreviewInRect:()UI .cold.1(void *a1)
{
  v1 = [a1 attachment];
  v2 = [v1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_4(&dword_1D4171000, v3, v4, "Unable to draw preview for attachment: %@", v5, v6, v7, v8, 2u);
}

- (void)drawPreviewInRect:()UI .cold.2(void *a1)
{
  v1 = [a1 attachment];
  v2 = [v1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_4(&dword_1D4171000, v3, v4, "Unable to load pdfData/mediaURL for attachment while previewing note: %@", v5, v6, v7, v8, 2u);
}

@end