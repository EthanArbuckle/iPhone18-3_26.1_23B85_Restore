@interface ICGalleryTextAttachment
- (double)viewCornerRadius;
- (id)attachmentFileWrapper;
- (void)attachmentFileWrapper;
@end

@implementation ICGalleryTextAttachment

- (double)viewCornerRadius
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 preferredViewSize];

  result = 12.0;
  if (v3 == 1)
  {
    return 16.0;
  }

  return result;
}

- (id)attachmentFileWrapper
{
  objc_opt_class();
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 attachmentModel];
  v5 = ICDynamicCast();
  v6 = [v5 blockingGeneratePDFURL];

  if (v6)
  {
    v11 = 0;
    v7 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:v6 options:0 error:&v11];
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
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Failed to create file wrapper from generated PDF: %@", &v2, 0xCu);
}

@end