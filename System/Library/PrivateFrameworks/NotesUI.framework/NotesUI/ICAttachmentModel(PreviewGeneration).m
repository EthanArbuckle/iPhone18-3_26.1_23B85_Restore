@interface ICAttachmentModel(PreviewGeneration)
- (BOOL)needToGeneratePreviews;
@end

@implementation ICAttachmentModel(PreviewGeneration)

- (BOOL)needToGeneratePreviews
{
  v35 = *MEMORY[0x1E69E9840];
  if ([a1 hasPreviews])
  {
    v4 = [a1 attachment];
    v5 = [v4 previewUpdateDate];
    if (v5)
    {
      v6 = [a1 attachment];
      v7 = [v6 previewImages];
      v8 = [v7 count] == 0;
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
    v20 = [a1 attachment];
    v14 = [v20 identifier];
    v15 = [a1 hasPreviews];
    v16 = [a1 attachment];
    v17 = [v16 previewUpdateDate];
    v18 = [a1 attachment];
    v19 = [v18 previewImages];
    *buf = 138413826;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 1024;
    v28 = v8;
    v29 = 1024;
    v30 = v15;
    v31 = 2112;
    v32 = v17;
    v33 = 2048;
    v34 = [v19 count];
    _os_log_debug_impl(&dword_1D4171000, v9, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d hasPreviews %d self.attachment.previewUpdateDate %@ self.attachment.previewImages.count %lu", buf, 0x40u);
  }

  return v8;
}

@end