@interface ICGalleryTextAttachment
- (double)viewCornerRadius;
- (id)attachmentFileWrapper;
- (void)attachmentFileWrapper;
@end

@implementation ICGalleryTextAttachment

- (double)viewCornerRadius
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  preferredViewSize = [attachment preferredViewSize];

  result = 12.0;
  if (preferredViewSize == 1)
  {
    return 16.0;
  }

  return result;
}

- (id)attachmentFileWrapper
{
  objc_opt_class();
  attachment = [(ICAbstractTextAttachment *)self attachment];
  attachmentModel = [attachment attachmentModel];
  v5 = ICDynamicCast();
  blockingGeneratePDFURL = [v5 blockingGeneratePDFURL];

  if (blockingGeneratePDFURL)
  {
    v11 = 0;
    v7 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:blockingGeneratePDFURL options:0 error:&v11];
    v8 = v11;
    if (!v7)
    {
      v9 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ICGalleryTextAttachment *)v8 attachmentFileWrapper];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)attachmentFileWrapper
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Failed to create file wrapper from generated PDF: %@", &v2, 0xCu);
}

@end