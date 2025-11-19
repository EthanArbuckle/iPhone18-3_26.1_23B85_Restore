@interface ICAttachmentPreviewGeneratorImageClassificationOperation
- (void)main;
@end

@implementation ICAttachmentPreviewGeneratorImageClassificationOperation

- (void)main
{
  v4 = [MEMORY[0x1E69B7800] sharedContext];
  v5 = [v4 workerManagedObjectContext];
  [(ICAttachmentPreviewGeneratorImageClassificationOperation *)self setManagedObjectContext:v5];

  v6 = [(ICAttachmentPreviewGeneratorImageClassificationOperation *)self managedObjectContext];
  [v6 setIc_debugName:@"ImageClassificationOperationContext"];

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__55;
  v16[4] = __Block_byref_object_dispose__55;
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = [(ICAttachmentPreviewGeneratorImageClassificationOperation *)self managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__ICAttachmentPreviewGeneratorImageClassificationOperation_main__block_invoke;
  v11[3] = &unk_1E846A080;
  v11[4] = self;
  v11[5] = v16;
  v11[6] = &v12;
  v11[7] = a2;
  [v7 performBlockAndWait:v11];

  if (*(v13 + 24) == 1)
  {
    v8 = [(ICAttachmentPreviewGeneratorImageClassificationOperation *)self attachmentModel];
    [v8 classifyImageInOperation:self];
  }

  else
  {
    v8 = [(ICAttachmentPreviewGeneratorImageClassificationOperation *)self managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__ICAttachmentPreviewGeneratorImageClassificationOperation_main__block_invoke_13;
    v10[3] = &unk_1E8469370;
    v10[4] = v16;
    [v8 performBlockAndWait:v10];
  }

  v9 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v9 operationComplete:self];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v16, 8);
}

void __64__ICAttachmentPreviewGeneratorImageClassificationOperation_main__block_invoke(uint64_t a1)
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
  if (!v9)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __64__ICAttachmentPreviewGeneratorImageClassificationOperation_main__block_invoke_cold_1(v2, v6, v11);
    }

    goto LABEL_11;
  }

  v10 = [v9 attachmentModel];
  [*v2 setAttachmentModel:v10];

  if ([*v2 isCancelled] & 1) != 0 || (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isDeleted"))
  {
    goto LABEL_12;
  }

  v11 = [*v2 attachmentModel];
  if (([v11 needToPostProcessAttachment]& 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [*v2 attachmentModel];
  v13 = [v12 supportsImageClassification];

  if (v13)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_12:
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
    _os_log_debug_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEBUG, "%@ %@ %@ image classifcation %d", buf, 0x26u);
  }
}

void __64__ICAttachmentPreviewGeneratorImageClassificationOperation_main__block_invoke_13(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 32) + 8) + 40) identifier];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1D4171000, v2, OS_LOG_TYPE_INFO, "Skipping image classification for attachment because it is either cancelled or not needed: %@", &v4, 0xCu);
  }
}

void __64__ICAttachmentPreviewGeneratorImageClassificationOperation_main__block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*a1 attachmentID];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Error getting object from ID %@ for image classification %@", &v6, 0x16u);
}

@end