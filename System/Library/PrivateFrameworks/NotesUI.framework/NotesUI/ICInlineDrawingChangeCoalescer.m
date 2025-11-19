@interface ICInlineDrawingChangeCoalescer
- (ICInlineDrawingChangeCoalescer)initWithAttachment:(id)a3;
- (ICSelectorDelayer)processChangesSelectorDelayer;
- (id)retrieveAndClearLatestDrawingToMerge;
- (void)dealloc;
- (void)drawingDataDidChange:(id)a3;
- (void)mergeDrawingChanges;
- (void)mergeDrawingWithDrawing:(id)a3;
- (void)processIndexableContentWithCompletion:(id)a3;
- (void)retrieveAndClearLatestDrawingToMerge;
- (void)updateNowIfNecessary;
- (void)updateVersionIfNeededForAttachment:(id)a3 withDrawing:(id)a4;
@end

@implementation ICInlineDrawingChangeCoalescer

- (ICInlineDrawingChangeCoalescer)initWithAttachment:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = ICInlineDrawingChangeCoalescer;
  v6 = [(ICInlineDrawingChangeCoalescer *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachment, a3);
    v8 = [MEMORY[0x1E69B7800] sharedContext];
    v9 = [v8 workerManagedObjectContext];
    workerContext = v7->_workerContext;
    v7->_workerContext = v9;

    v11 = [MEMORY[0x1E69B7800] sharedContext];
    v12 = [v11 managedObjectContext];
    mainContext = v7->_mainContext;
    v7->_mainContext = v12;

    v14 = [MEMORY[0x1E69B7800] sharedContext];
    v15 = [v14 workerManagedObjectContext];
    handwritingRecognitionContext = v7->_handwritingRecognitionContext;
    v7->_handwritingRecognitionContext = v15;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_latestDrawing)
  {
    v3 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ICInlineDrawingChangeCoalescer *)v3 dealloc];
    }
  }

  v4.receiver = self;
  v4.super_class = ICInlineDrawingChangeCoalescer;
  [(ICInlineDrawingChangeCoalescer *)&v4 dealloc];
}

- (ICSelectorDelayer)processChangesSelectorDelayer
{
  processChangesSelectorDelayer = self->_processChangesSelectorDelayer;
  if (!processChangesSelectorDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:self selector:sel_mergeDrawingChanges delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:2.0];
    v5 = self->_processChangesSelectorDelayer;
    self->_processChangesSelectorDelayer = v4;

    processChangesSelectorDelayer = self->_processChangesSelectorDelayer;
  }

  return processChangesSelectorDelayer;
}

- (void)drawingDataDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  [(ICInlineDrawingChangeCoalescer *)self setLatestDrawing:v5];
  [(ICInlineDrawingChangeCoalescer *)self setNumberOfChanges:[(ICInlineDrawingChangeCoalescer *)self numberOfChanges]+ 1];
  v6 = [(ICInlineDrawingChangeCoalescer *)self processChangesSelectorDelayer];
  [v6 requestFire];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__77;
  v17[4] = __Block_byref_object_dispose__77;
  v18 = 0;
  v7 = [(ICInlineDrawingChangeCoalescer *)self attachment];
  v8 = [v7 managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__ICInlineDrawingChangeCoalescer_drawingDataDidChange___block_invoke;
  v16[3] = &unk_1E8468FA8;
  v16[4] = self;
  v16[5] = v17;
  [v8 performBlockAndWait:v16];

  v9 = [(ICInlineDrawingChangeCoalescer *)self attachment];
  v10 = [v9 inlineDrawingModel];
  v11 = [v10 handwritingRecognitionDrawingQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__ICInlineDrawingChangeCoalescer_drawingDataDidChange___block_invoke_30;
  v13[3] = &unk_1E8468FA8;
  v14 = v5;
  v15 = v17;
  v12 = v5;
  dispatch_async(v11, v13);

  _Block_object_dispose(v17, 8);
}

void __55__ICInlineDrawingChangeCoalescer_drawingDataDidChange___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 inlineDrawingModel];
  v4 = [v3 handwritingRecognitionDrawing];
  v5 = *(*(v1 + 8) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __55__ICInlineDrawingChangeCoalescer_drawingDataDidChange___block_invoke_cold_1(v1);
  }
}

- (void)updateNowIfNecessary
{
  v3 = [(ICInlineDrawingChangeCoalescer *)self processChangesSelectorDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [(ICInlineDrawingChangeCoalescer *)self retrieveAndClearLatestDrawingToMerge];
  if (v4)
  {
    v7 = v4;
    v5 = [(ICInlineDrawingChangeCoalescer *)self attachment];
    v6 = [v5 managedObjectContext];
    [v6 ic_save];

    [(ICInlineDrawingChangeCoalescer *)self mergeDrawingWithDrawing:v7];
    v4 = v7;
  }
}

- (void)mergeDrawingChanges
{
  v3 = [(ICInlineDrawingChangeCoalescer *)self retrieveAndClearLatestDrawingToMerge];
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__ICInlineDrawingChangeCoalescer_mergeDrawingChanges__block_invoke;
    v5[3] = &unk_1E8468F80;
    v5[4] = self;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

- (id)retrieveAndClearLatestDrawingToMerge
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"-[ICInlineDrawingChangeCoalescer retrieveAndClearLatestDrawingToMerge]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  v3 = [(ICInlineDrawingChangeCoalescer *)self latestDrawing];
  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(ICInlineDrawingChangeCoalescer *)self retrieveAndClearLatestDrawingToMerge];
    }

    [(ICInlineDrawingChangeCoalescer *)self setNumberOfChanges:0];
    [(ICInlineDrawingChangeCoalescer *)self setLatestDrawing:0];
  }

  return v3;
}

- (void)mergeDrawingWithDrawing:(id)a3
{
  v4 = a3;
  v5 = [(ICInlineDrawingChangeCoalescer *)self attachment];
  v6 = [v5 objectID];

  v7 = [(ICInlineDrawingChangeCoalescer *)self mainContext];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__ICInlineDrawingChangeCoalescer_mergeDrawingWithDrawing___block_invoke;
  v25[3] = &unk_1E8468F80;
  v8 = v7;
  v26 = v8;
  v9 = v6;
  v27 = v9;
  [v8 performBlockAndWait:v25];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v10 = [(ICInlineDrawingChangeCoalescer *)self workerContext];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __58__ICInlineDrawingChangeCoalescer_mergeDrawingWithDrawing___block_invoke_2;
  v16 = &unk_1E846E460;
  v11 = v9;
  v17 = v11;
  v18 = self;
  v20 = &v21;
  v12 = v4;
  v19 = v12;
  [v10 performBlockAndWait:&v13];

  if (*(v22 + 24) == 1)
  {
    [(ICInlineDrawingChangeCoalescer *)self processIndexableContentWithCompletion:0, v13, v14, v15, v16, v17, v18];
  }

  _Block_object_dispose(&v21, 8);
}

void __58__ICInlineDrawingChangeCoalescer_mergeDrawingWithDrawing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  if ([v2 isPasswordProtected] && objc_msgSend(v2, "hasChanges"))
  {
    [*(a1 + 32) ic_save];
  }
}

void __58__ICInlineDrawingChangeCoalescer_mergeDrawingWithDrawing___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7680];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) workerContext];
  v10 = [v2 ic_existingObjectWithID:v3 context:v4];

  objc_opt_class();
  v5 = [v10 attachmentModel];
  v6 = ICCheckedDynamicCast();

  *(*(*(a1 + 56) + 8) + 24) = [v6 mergeWithDrawing:*(a1 + 48)];
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 40) updateVersionIfNeededForAttachment:v10 withDrawing:*(a1 + 48)];
    [v10 updateChangeCountWithReason:@"Merged drawing"];
    v7 = [v10 note];
    [v7 updateModificationDateAndChangeCount];

    v8 = [v10 note];
    v9 = [v8 managedObjectContext];
    [v9 ic_save];
  }
}

- (void)processIndexableContentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICInlineDrawingChangeCoalescer *)self attachment];
  v6 = [v5 objectID];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__77;
  v18 = __Block_byref_object_dispose__77;
  v19 = 0;
  v7 = [(ICInlineDrawingChangeCoalescer *)self attachment];
  v8 = [v7 managedObjectContext];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke;
  v13[3] = &unk_1E846B1D8;
  v13[4] = self;
  v13[5] = &v14;
  [v8 performBlockAndWait:v13];

  v9 = v15[5];
  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_42;
    block[3] = &unk_1E846BA48;
    block[4] = self;
    v11 = v6;
    v12 = v4;
    dispatch_async(v9, block);
  }

  else if (v4)
  {
    v4[2](v4);
  }

  _Block_object_dispose(&v14, 8);
}

void __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 managedObjectContext];
  v4 = [*(a1 + 32) attachment];
  [v3 ic_refreshObject:v4 mergeChanges:1];

  v5 = [*(a1 + 32) attachment];
  v6 = [v5 inlineDrawingModel];
  v7 = [v6 handwritingRecognitionDrawingQueue];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(a1 + 32) attachment];
  v11 = [v10 inlineDrawingModel];

  if (([v11 isHandwritingRecognitionEnabled] & 1) == 0)
  {
    v12 = [v11 attachment];
    v13 = [v12 note];

    [v13 updatePKDrawingsWithHandwritingRecognitionEnabled:{objc_msgSend(v13, "isHandwritingRecognitionEnabled")}];
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v14 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) attachment];
      v16 = [v15 shortLoggingDescription];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_1D4171000, v14, OS_LOG_TYPE_DEFAULT, "No queue to process drawing changes for %@", &v17, 0xCu);
    }
  }
}

void __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_42(uint64_t a1)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__77;
  v29 = __Block_byref_object_dispose__77;
  v30 = 0;
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 managedObjectContext];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_2;
  v24[3] = &unk_1E846B1D8;
  v24[4] = *(a1 + 32);
  v24[5] = &v25;
  [v3 performBlockAndWait:v24];

  v7 = v26[5];
  if (v7)
  {
    v8 = [v7 indexableContent];
    v9 = [v8 indexableTextRepresentation];
    v10 = [v8 presentableTextRepresentation];
    v11 = [*(a1 + 32) handwritingRecognitionContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_43;
    v17[3] = &unk_1E846E488;
    v18 = *(a1 + 40);
    v12 = v11;
    v19 = v12;
    v13 = v10;
    v20 = v13;
    v14 = v9;
    v23 = &v25;
    v15 = *(a1 + 32);
    v21 = v14;
    v22 = v15;
    [v12 performBlockAndWait:v17];
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v4, v5, v6);
  }

  _Block_object_dispose(&v25, 8);
}

void __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_2_cold_1(a1);
  }

  v3 = [*(a1 + 32) attachment];
  v4 = [v3 inlineDrawingModel];
  v5 = [v4 handwritingRecognitionDrawing];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = [*(a1 + 32) attachment];
    v9 = [v8 inlineDrawingModel];
    v10 = [v9 isHandwritingRecognitionEnabled];

    if (v10)
    {
      v11 = [*(a1 + 32) attachment];
      v12 = [v11 inlineDrawingModel];
      v13 = [v12 newDrawingFromMergeableData];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      [*(*(*(a1 + 40) + 8) + 40) setRecognitionEnabled:1];
    }
  }
}

void __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_43(uint64_t a1)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69B7680] ic_existingObjectWithID:*(a1 + 32) context:*(a1 + 40)];
  v3 = v2;
  if (!v2)
  {
    v11 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      *buf = 138412290;
      v23 = v21;
      _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Cannot regenerate text content for non-existent attachment: %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v4 = [v2 identifier];
  if (v4 && (v5 = v4, [v3 note], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_43_cold_1(v3, a1);
    }

    [v3 setHandwritingSummary:*(a1 + 48)];
    [v3 setAdditionalIndexableText:*(a1 + 56)];
    [*(a1 + 40) ic_save];
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v8 = [v3 identifier];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 note];

        if (v10)
        {
          v11 = [MEMORY[0x1E696AD88] defaultCenter];
          v12 = *(a1 + 64);
          v25[0] = *(*(*(a1 + 72) + 8) + 40);
          v24[0] = @"Drawing";
          v24[1] = @"DrawingID";
          v13 = [v3 identifier];
          v25[1] = v13;
          v25[2] = v3;
          v24[2] = @"Attachment";
          v24[3] = @"Note";
          v14 = [v3 note];
          v25[3] = v14;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
          [v11 postNotificationName:@"ICNAInlineDrawingRecognitionReportNotification" object:v12 userInfo:v15];

LABEL_16:
        }
      }
    }
  }

  else
  {
    v16 = [v3 identifier];

    if (!v16)
    {
      v17 = MEMORY[0x1E69B7A38];
      v18 = [v3 shortLoggingDescription];
      [v17 handleFailedAssertWithCondition:"attachment.identifier" functionName:"-[ICInlineDrawingChangeCoalescer processIndexableContentWithCompletion:]_block_invoke" simulateCrash:1 showAlert:1 format:{@"Expected non-nil value for attachment.identifier: %@", v18}];
    }

    v19 = [v3 note];

    if (!v19)
    {
      v20 = MEMORY[0x1E69B7A38];
      v11 = [v3 shortLoggingDescription];
      [v20 handleFailedAssertWithCondition:"attachment.note" functionName:"-[ICInlineDrawingChangeCoalescer processIndexableContentWithCompletion:]_block_invoke" simulateCrash:1 showAlert:1 format:{@"Expected non-nil value for attachment.note: %@", v11}];
      goto LABEL_16;
    }
  }
}

- (void)updateVersionIfNeededForAttachment:(id)a3 withDrawing:(id)a4
{
  v7 = a3;
  if ([a4 _minimumSerializationVersion] >= 2)
  {
    v5 = +[ICDrawingPencilKitConverter sharedConverter];
    v6 = [v5 updateInlineDrawingAttachment:v7];
  }
}

void __55__ICInlineDrawingChangeCoalescer_drawingDataDidChange___block_invoke_cold_1(id *a1)
{
  [*a1 numberOfChanges];
  v2 = [*a1 attachment];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)retrieveAndClearLatestDrawingToMerge
{
  [a1 numberOfChanges];
  v2 = [a1 attachment];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) attachment];
  v7 = [v1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __72__ICInlineDrawingChangeCoalescer_processIndexableContentWithCompletion___block_invoke_43_cold_1(void *a1, uint64_t a2)
{
  v8 = [a1 shortLoggingDescription];
  [*(a2 + 48) length];
  [*(a2 + 56) length];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end