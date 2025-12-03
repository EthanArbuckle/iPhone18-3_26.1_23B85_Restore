@interface MSPDFAttachmentController
+ (id)log;
- (MSPDFAttachmentControllerDelegate)delegate;
- (void)updateToInlinePDFAttachmentIfNeeded:(id)needed;
@end

@implementation MSPDFAttachmentController

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MSPDFAttachmentController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __32__MSPDFAttachmentController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

- (void)updateToInlinePDFAttachmentIfNeeded:(id)needed
{
  v31 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  uttype = [neededCopy uttype];
  v7 = [uttype conformsToType:*MEMORY[0x277CE1E08]];

  if (v7)
  {
    data = [neededCopy data];
    if (data)
    {
      if ([MEMORY[0x277CBEBD0] em_lockdownModeEnabled])
      {
        v9 = +[MSPDFAttachmentController log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          contentID = [neededCopy contentID];
          v24 = 138543362;
          v25 = contentID;
          _os_log_impl(&dword_257FBF000, v9, OS_LOG_TYPE_DEFAULT, "(%{public}@) Lockdown Mode detected, disabling PDF parsing", &v24, 0xCu);
        }
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x277CD93D8]) initWithData:data];
        if (!v9)
        {
          v13 = +[MSPDFAttachmentController log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            contentID2 = [neededCopy contentID];
            [(MSPDFAttachmentController *)contentID2 updateToInlinePDFAttachmentIfNeeded:v30, v13];
          }
        }

        pageCount = [v9 pageCount];
        isLocked = [v9 isLocked];
        v17 = +[MSPDFAttachmentController log];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          contentID3 = [neededCopy contentID];
          v24 = 138543874;
          v25 = contentID3;
          v26 = 2048;
          v27 = pageCount;
          v28 = 1024;
          v29 = isLocked;
          _os_log_impl(&dword_257FBF000, v17, OS_LOG_TYPE_DEFAULT, "(%{public}@) Attached PDF has %lu pages, isLocked=%{BOOL}d", &v24, 0x1Cu);
        }

        if (!((pageCount != 1) | isLocked & 1))
        {
          delegate = [(MSPDFAttachmentController *)self delegate];
          v20 = delegate == 0;

          if (v20)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"MSPDFAttachmentController.m" lineNumber:44 description:@"Delegate is missing to update attachment"];
          }

          delegate2 = [(MSPDFAttachmentController *)self delegate];
          [delegate2 attachmentController:self updateToInlineAttachment:neededCopy];
        }
      }
    }

    else
    {
      v9 = +[MSPDFAttachmentController log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        contentID4 = [neededCopy contentID];
        [(MSPDFAttachmentController *)contentID4 updateToInlinePDFAttachmentIfNeeded:v9];
      }
    }
  }

  else
  {
    data = +[MSPDFAttachmentController log];
    if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
    {
      contentID5 = [neededCopy contentID];
      [(MSPDFAttachmentController *)contentID5 updateToInlinePDFAttachmentIfNeeded:data];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (MSPDFAttachmentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateToInlinePDFAttachmentIfNeeded:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_257FBF000, a2, a3, "(%{public}@) Attachment is not a PDF", a2);
}

- (void)updateToInlinePDFAttachmentIfNeeded:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_257FBF000, a2, a3, "(%{public}@) Could not create PDF document from data", a2);
}

- (void)updateToInlinePDFAttachmentIfNeeded:(NSObject *)a3 .cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_257FBF000, a2, a3, "(%{public}@) Data is missing", a2);
}

@end