@interface ICAttachmentModel(PreviewGeneration)
- (BOOL)needToGeneratePreviews;
@end

@implementation ICAttachmentModel(PreviewGeneration)

- (BOOL)needToGeneratePreviews
{
  v35 = *MEMORY[0x1E69E9840];
  if ([self hasPreviews])
  {
    attachment = [self attachment];
    previewUpdateDate = [attachment previewUpdateDate];
    if (previewUpdateDate)
    {
      attachment2 = [self attachment];
      previewImages = [attachment2 previewImages];
      v8 = [previewImages count] == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    attachment3 = [self attachment];
    identifier = [attachment3 identifier];
    hasPreviews = [self hasPreviews];
    attachment4 = [self attachment];
    previewUpdateDate2 = [attachment4 previewUpdateDate];
    attachment5 = [self attachment];
    previewImages2 = [attachment5 previewImages];
    *buf = 138413826;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = identifier;
    v27 = 1024;
    v28 = v8;
    v29 = 1024;
    v30 = hasPreviews;
    v31 = 2112;
    v32 = previewUpdateDate2;
    v33 = 2048;
    v34 = [previewImages2 count];
    _os_log_debug_impl(&dword_1D4171000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d hasPreviews %d self.attachment.previewUpdateDate %@ self.attachment.previewImages.count %lu", buf, 0x40u);
  }

  return v8;
}

@end