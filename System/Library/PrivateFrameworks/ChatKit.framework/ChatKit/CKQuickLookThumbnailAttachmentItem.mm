@interface CKQuickLookThumbnailAttachmentItem
+ (CGSize)defaultSize;
- (CGSize)size;
- (void)generatePreviewWithCompletion:(id)completion;
@end

@implementation CKQuickLookThumbnailAttachmentItem

+ (CGSize)defaultSize
{
  v2 = 100.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)size
{
  v2 = objc_opt_class();

  [v2 defaultSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)generatePreviewWithCompletion:(id)completion
{
  completionCopy = completion;
  previewCache = [objc_opt_class() previewCache];
  v6 = CKAttachmentPreviewCacheKey(self);
  [objc_opt_class() defaultSize];
  v8 = v7;
  v10 = v9;
  v11 = [previewCache cachedPreviewForKey:v6];
  if (v11)
  {
    completionCopy[2](completionCopy, v11);
  }

  else if (([previewCache isGeneratingPreviewForKey:v6] & 1) == 0)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke;
    v17[3] = &unk_1E72EE7C8;
    v17[4] = self;
    v17[5] = v8;
    v17[6] = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_38;
    v12[3] = &unk_1E72EDE00;
    v13 = previewCache;
    v14 = v6;
    selfCopy = self;
    v16 = completionCopy;
    [v13 enqueueGenerationBlock:v17 completion:v12 withPriority:1 forKey:v14];
  }
}

id __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_cold_1(v3, v4);
  }

  v5 = objc_alloc(MEMORY[0x1E697A0E0]);
  v6 = [*(a1 + 32) fileURL];
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = [v5 initWithFileAtURL:v6 size:4 scale:*(a1 + 40) representationTypes:{*(a1 + 48), v8}];

  [v9 setShouldUseRestrictedExtension:1];
  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Requesting attachment generation with request %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__47;
  v24 = __Block_byref_object_dispose__47;
  v25 = 0;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = [MEMORY[0x1E697A0E8] sharedGenerator];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_35;
  v18[3] = &unk_1E72F4DC8;
  p_buf = &buf;
  v13 = v11;
  v19 = v13;
  [v12 generateBestRepresentationForRequest:v9 completionHandler:v18];

  v14 = dispatch_time(0, 20000000000);
  if (dispatch_group_wait(v13, v14))
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_cold_2(v9, v15);
    }
  }

  v16 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v16;
}

void __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 UIImage];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Generation completed with result %@ error %@", &v11, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_38(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_2;
  block[3] = &unk_1E72EDE00;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = *(&v6 + 1);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPreviewForKey:*(a1 + 40)];
  v4 = v2;
  if (v2)
  {
    [*(a1 + 48) _savePreview:v2];
    v2 = v4;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v4, v2);
    v2 = v4;
  }
}

void __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_19020E000, a2, OS_LOG_TYPE_DEBUG, "Run generation block for %@", &v2, 0xCu);
}

void __68__CKQuickLookThumbnailAttachmentItem_generatePreviewWithCompletion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Timed out getting attachment from QuickLookThumbnailing for request %@", &v2, 0xCu);
}

@end