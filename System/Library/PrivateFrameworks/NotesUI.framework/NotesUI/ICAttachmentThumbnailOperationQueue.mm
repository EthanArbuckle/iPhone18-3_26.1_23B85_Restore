@interface ICAttachmentThumbnailOperationQueue
- (id)checkPreviewImagesIntegrityOperationForAttachment:(id)a3;
- (void)addOperationWithAttachment:(id)a3 size:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6 cache:(id)a7 cacheKey:(id)a8 processingBlock:(id)a9 completionBlock:(id)a10 fallbackBlock:(id)a11;
@end

@implementation ICAttachmentThumbnailOperationQueue

- (void)addOperationWithAttachment:(id)a3 size:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6 cache:(id)a7 cacheKey:(id)a8 processingBlock:(id)a9 completionBlock:(id)a10 fallbackBlock:(id)a11
{
  height = a4.height;
  width = a4.width;
  v45 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v38 = a6;
  v20 = a7;
  v21 = a8;
  v37 = a9;
  v22 = a10;
  v36 = a11;
  [(ICAttachmentThumbnailOperationQueue *)self setSuspended:1];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = [(ICAttachmentThumbnailOperationQueue *)self operations];
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v41;
    while (2)
    {
      v27 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = ICProtocolCast();
        v29 = v28;
        if (v28 && [v28 isMatchingOperationForCacheKey:v21 cache:v20])
        {
          [v29 addCompletionBlock:v22];

          [(ICAttachmentThumbnailOperationQueue *)self setSuspended:0];
          v34 = v38;
          v30 = v39;
          v33 = v36;
          v32 = v37;
          goto LABEL_12;
        }

        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  [(ICAttachmentThumbnailOperationQueue *)self setSuspended:0];
  v30 = v39;
  v31 = [(ICAttachmentThumbnailOperationQueue *)self checkPreviewImagesIntegrityOperationForAttachment:v39];
  v33 = v36;
  v32 = v37;
  v34 = v38;
  v35 = [[ICAttachmentThumbnailOperation alloc] initWithAttachment:v39 size:v38 scale:v20 appearanceInfo:v21 cache:v37 cacheKey:v22 processingBlock:width completionBlock:height fallbackBlock:a5 queue:v36, self];
  [(ICAttachmentThumbnailOperation *)v35 addDependency:v31];
  [(ICAttachmentThumbnailOperationQueue *)self addOperation:v31];
  [(ICAttachmentThumbnailOperationQueue *)self addOperation:v35];

LABEL_12:
}

- (id)checkPreviewImagesIntegrityOperationForAttachment:(id)a3
{
  v3 = [a3 objectID];
  v4 = MEMORY[0x1E696AAE0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__ICAttachmentThumbnailOperationQueue_checkPreviewImagesIntegrityOperationForAttachment___block_invoke;
  v8[3] = &unk_1E8468BA0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 blockOperationWithBlock:v8];

  return v6;
}

void __89__ICAttachmentThumbnailOperationQueue_checkPreviewImagesIntegrityOperationForAttachment___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69B7800] sharedContext];
  v3 = [v2 workerManagedObjectContext];

  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__69;
  v9[4] = __Block_byref_object_dispose__69;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89__ICAttachmentThumbnailOperationQueue_checkPreviewImagesIntegrityOperationForAttachment___block_invoke_13;
  v5[3] = &unk_1E8469640;
  v8 = v9;
  v4 = v3;
  v6 = v4;
  v7 = *(a1 + 32);
  [v4 performBlockAndWait:v5];

  _Block_object_dispose(v9, 8);
}

void __89__ICAttachmentThumbnailOperationQueue_checkPreviewImagesIntegrityOperationForAttachment___block_invoke_13(void *a1)
{
  v3 = a1 + 5;
  v2 = a1[5];
  v4 = a1[4];
  v12 = 0;
  v5 = [v4 existingObjectWithID:v2 error:&v12];
  v6 = v12;
  v7 = *(v3[1] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(v3[1] + 8) + 40);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == 0;
  }

  if (!v10)
  {
    v11 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __89__ICAttachmentThumbnailOperationQueue_checkPreviewImagesIntegrityOperationForAttachment___block_invoke_13_cold_1(v3, v11);
    }

    v9 = *(*(a1[6] + 8) + 40);
  }

  [v9 checkPreviewImagesIntegrity];
}

void __89__ICAttachmentThumbnailOperationQueue_checkPreviewImagesIntegrityOperationForAttachment___block_invoke_13_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Failed to find attachment with object ID %@ for checking preview image integrity", &v3, 0xCu);
}

@end