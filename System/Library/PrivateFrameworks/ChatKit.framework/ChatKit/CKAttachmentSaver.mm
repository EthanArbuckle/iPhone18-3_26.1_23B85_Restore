@interface CKAttachmentSaver
- (CKAttachmentSaver)initWithAttachments:(id)attachments;
- (void)_pop;
- (void)_saveCompletion:(id)completion;
- (void)_saveNextAttachment;
- (void)popAndSaveNextAttachment;
@end

@implementation CKAttachmentSaver

- (CKAttachmentSaver)initWithAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v9.receiver = self;
  v9.super_class = CKAttachmentSaver;
  v5 = [(CKAttachmentSaver *)&v9 init];
  if (v5)
  {
    v6 = [attachmentsCopy mutableCopy];
    attachments = v5->_attachments;
    v5->_attachments = v6;
  }

  return v5;
}

- (void)popAndSaveNextAttachment
{
  [(CKAttachmentSaver *)self _pop];

  [(CKAttachmentSaver *)self _saveNextAttachment];
}

- (void)_pop
{
  if ([(NSMutableArray *)self->_attachments count])
  {
    attachments = self->_attachments;

    [(NSMutableArray *)attachments removeObjectAtIndex:0];
  }
}

- (void)_saveNextAttachment
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 138412802;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  v7 = 2112;
  v8 = 0;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Could not create video complement object using imagePath %@ and videoPath %@ vc %@", &v3, 0x20u);
}

void __40__CKAttachmentSaver__saveNextAttachment__block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __40__CKAttachmentSaver__saveNextAttachment__block_invoke_2_cold_1(v6);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  v7 = IMLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    if (a2)
    {
      v8 = @"YES";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Saved iris asset %@ with error %@", &v9, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) popAndSaveNextAttachment];
}

- (void)_saveCompletion:(id)completion
{
  v9 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(46);
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v8 = completionCopy;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "Unexpected error saving attachment. Skipping. Error: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      v6 = completionCopy;
      _CKLog();
    }
  }

  [(CKAttachmentSaver *)self popAndSaveNextAttachment];
}

@end