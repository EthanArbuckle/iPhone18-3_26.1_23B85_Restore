@interface ICAttachmentPreviewGeneratorOperation
- (ICAttachmentPreviewGeneratorOperation)initWithAttachmentManagedObjectID:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation ICAttachmentPreviewGeneratorOperation

- (ICAttachmentPreviewGeneratorOperation)initWithAttachmentManagedObjectID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICAttachmentPreviewGeneratorOperation;
  v5 = [(ICAttachmentPreviewGeneratorOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICAttachmentPreviewGeneratorOperation *)v5 setAttachmentID:v4];
  }

  return v6;
}

- (void)main
{
  v4 = [MEMORY[0x1E69B7800] sharedContext];
  v5 = [v4 workerManagedObjectContext];
  [(ICAttachmentPreviewGeneratorOperation *)self setManagedObjectContext:v5];

  v6 = [(ICAttachmentPreviewGeneratorOperation *)self managedObjectContext];
  [v6 setAutomaticallyMergesChangesFromParent:0];

  v7 = [(ICAttachmentPreviewGeneratorOperation *)self managedObjectContext];
  [v7 setIc_debugName:@"previewGenerator"];

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__61;
  v19[4] = __Block_byref_object_dispose__61;
  v20 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = [(ICAttachmentPreviewGeneratorOperation *)self managedObjectContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke;
  v14[3] = &unk_1E846A080;
  v14[4] = self;
  v14[5] = v19;
  v14[6] = &v15;
  v14[7] = a2;
  [v8 performBlockAndWait:v14];

  if (*(v16 + 24) != 1 || (-[ICAttachmentPreviewGeneratorOperation attachmentModel](self, "attachmentModel"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 generatePreviewsInOperation:self], v9, (v10 & 1) != 0))
  {
    v11 = [(ICAttachmentPreviewGeneratorOperation *)self managedObjectContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke_13;
    v13[3] = &unk_1E8469928;
    v13[4] = self;
    v13[5] = v19;
    v13[6] = a2;
    [v11 performBlockAndWait:v13];
  }

  [(ICAttachmentPreviewGeneratorOperation *)self setManagedObjectContext:0];
  v12 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v12 operationComplete:self];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);
}

void __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [*v2 attachmentID];
  v20 = 0;
  v5 = [v3 existingObjectWithID:v4 error:&v20];
  v6 = v20;
  v7 = *(*(v2 + 8) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(*(v2 + 8) + 8) + 40);
  if (v9)
  {
    v10 = [v9 attachmentModel];
    [*v2 setAttachmentModel:v10];

    if (([*v2 isCancelled] & 1) == 0 && (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isDeleted") & 1) == 0)
    {
      v11 = [*v2 attachmentModel];
      v12 = [v11 needToGeneratePreviews];

      if (v12)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  else if (v6)
  {
    v13 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke_cold_1(v2, v6, v13);
    }
  }

  v14 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(*(a1 + 56));
    v18 = [*(*(*(a1 + 40) + 8) + 40) shortLoggingDescription];
    v19 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 138413058;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    v25 = 2112;
    v26 = v18;
    v27 = 1024;
    v28 = v19;
    _os_log_debug_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEBUG, "%@ %@ %@ generate %d", buf, 0x26u);
  }
}

uint64_t __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke_13(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke_13_cold_1(a1, v2);
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v3 = [*(a1 + 32) managedObjectContext];
    v4 = [*(a1 + 32) attachmentModel];
    v5 = [v4 attachment];
    v6 = [v5 shortLoggingDescription];
    [v3 ic_saveWithLogDescription:{@"Saving after preview creation for %@", v6}];

    v7 = +[ICAttachmentPreviewGenerator sharedGenerator];
    [v7 postProcessIfNeededForAttachment:*(*(*(a1 + 40) + 8) + 40)];

    v8 = *MEMORY[0x1E69B7420];
    [*(*(*(a1 + 40) + 8) + 40) ic_postNotificationOnMainThreadWithName:*MEMORY[0x1E69B7420]];
    v9 = [*(*(*(a1 + 40) + 8) + 40) parentAttachment];
    v10 = [v9 attachmentModel];
    v11 = [*(*(*(a1 + 40) + 8) + 40) identifier];
    v12 = [v10 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v11];

    if (v12)
    {
      v13 = [*(*(*(a1 + 40) + 8) + 40) parentAttachment];
      [v13 ic_postNotificationOnMainThreadWithName:v8];
    }
  }

  return [*(a1 + 32) setAttachmentModel:0];
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = ICAttachmentPreviewGeneratorOperation;
  [(ICAttachmentPreviewGeneratorOperation *)&v6 cancel];
  v3 = [(ICAttachmentPreviewGeneratorOperation *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__ICAttachmentPreviewGeneratorOperation_cancel__block_invoke;
  v5[3] = &unk_1E8468BA0;
  v5[4] = self;
  [v3 performBlock:v5];

  v4 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v4 operationComplete:self];
}

void __47__ICAttachmentPreviewGeneratorOperation_cancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) attachmentModel];
  [v1 didCancelPreviewGeneratorOperation];
}

void __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*a1 attachmentID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Error getting object from ID %@ for preview generation %@", &v6, 0x16u);
}

void __45__ICAttachmentPreviewGeneratorOperation_main__block_invoke_13_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(*(a1 + 48));
  v7 = [*(*(*(a1 + 40) + 8) + 40) shortLoggingDescription];
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "%@ %@ %@ generation complete", &v8, 0x20u);
}

@end