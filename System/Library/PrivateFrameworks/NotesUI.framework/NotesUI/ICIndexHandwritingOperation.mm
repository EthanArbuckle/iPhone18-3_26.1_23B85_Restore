@interface ICIndexHandwritingOperation
+ (NSOperationQueue)sharedOperationQueue;
- (ICIndexHandwritingOperation)initWithAttachmentObjectID:(id)a3 context:(id)a4;
- (void)main;
@end

@implementation ICIndexHandwritingOperation

+ (NSOperationQueue)sharedOperationQueue
{
  if (sharedOperationQueue_onceToken != -1)
  {
    +[ICIndexHandwritingOperation sharedOperationQueue];
  }

  v3 = sharedOperationQueue_queue;

  return v3;
}

uint64_t __51__ICIndexHandwritingOperation_sharedOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedOperationQueue_queue;
  sharedOperationQueue_queue = v0;

  [sharedOperationQueue_queue setName:@"com.apple.notes.index-handwriting-queue"];
  v2 = sharedOperationQueue_queue;

  return [v2 setMaxConcurrentOperationCount:1];
}

- (ICIndexHandwritingOperation)initWithAttachmentObjectID:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICIndexHandwritingOperation;
  v9 = [(ICIndexHandwritingOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentObjectID, a3);
    objc_storeStrong(&v10->_context, a4);
  }

  return v10;
}

- (void)main
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  v3 = [(ICIndexHandwritingOperation *)self context];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__ICIndexHandwritingOperation_main__block_invoke;
  v11[3] = &unk_1E8468FA8;
  v11[4] = self;
  v11[5] = &v12;
  [v3 performBlockAndWait:v11];

  v4 = [ICInlineDrawingChangeCoalescer alloc];
  v5 = [(ICInlineDrawingChangeCoalescer *)v4 initWithAttachment:v13[5]];
  v6 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__ICIndexHandwritingOperation_main__block_invoke_2;
  v8[3] = &unk_1E8469AE0;
  v8[4] = self;
  v10 = &v12;
  v7 = v6;
  v9 = v7;
  [(ICInlineDrawingChangeCoalescer *)v5 processIndexableContentWithCompletion:v8];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v12, 8);
}

void __35__ICIndexHandwritingOperation_main__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7680];
  v3 = [*(a1 + 32) attachmentObjectID];
  v4 = [*(a1 + 32) context];
  v5 = [v2 ic_existingObjectWithID:v3 context:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(*(*(a1 + 40) + 8) + 40) inlineDrawingModel];
  [v8 setHandwritingRecognitionEnabled:1];
}

intptr_t __35__ICIndexHandwritingOperation_main__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__ICIndexHandwritingOperation_main__block_invoke_3;
  v4[3] = &unk_1E8469370;
  v4[4] = *(a1 + 48);
  [v2 performBlockAndWait:v4];

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __35__ICIndexHandwritingOperation_main__block_invoke_3(uint64_t a1)
{
  v4 = [*(*(*(a1 + 32) + 8) + 40) note];
  v2 = [v4 isHandwritingRecognitionEnabled];
  v3 = [*(*(*(a1 + 32) + 8) + 40) inlineDrawingModel];
  [v3 setHandwritingRecognitionEnabled:v2];
}

@end