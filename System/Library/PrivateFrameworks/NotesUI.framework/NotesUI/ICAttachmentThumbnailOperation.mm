@interface ICAttachmentThumbnailOperation
- (BOOL)isMatchingOperationForCacheKey:(id)a3 cache:(id)a4;
- (CGSize)minSize;
- (ICAttachmentThumbnailOperation)initWithAttachment:(id)a3 size:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6 cache:(id)a7 cacheKey:(id)a8 processingBlock:(id)a9 completionBlock:(id)a10 fallbackBlock:(id)a11 queue:(id)a12;
- (ICAttachmentThumbnailOperationQueue)queue;
- (void)addCompletionBlock:(id)a3;
- (void)capturePropertiesFromAttachment:(id)a3;
- (void)main;
- (void)requestThumbnail;
@end

@implementation ICAttachmentThumbnailOperation

- (ICAttachmentThumbnailOperation)initWithAttachment:(id)a3 size:(CGSize)a4 scale:(double)a5 appearanceInfo:(id)a6 cache:(id)a7 cacheKey:(id)a8 processingBlock:(id)a9 completionBlock:(id)a10 fallbackBlock:(id)a11 queue:(id)a12
{
  height = a4.height;
  width = a4.width;
  v21 = a3;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  v28 = a12;
  v41.receiver = self;
  v41.super_class = ICAttachmentThumbnailOperation;
  v29 = [(ICAttachmentThumbnailOperation *)&v41 init];
  v30 = v29;
  if (v29)
  {
    [(ICAttachmentThumbnailOperation *)v29 setMinSize:width, height];
    [(ICAttachmentThumbnailOperation *)v30 setScale:a5];
    [(ICAttachmentThumbnailOperation *)v30 setAppearanceInfo:v22];
    [(ICAttachmentThumbnailOperation *)v30 setCache:v23];
    [(ICAttachmentThumbnailOperation *)v30 setCacheKey:v24];
    [(ICAttachmentThumbnailOperation *)v30 setFallbackBlock:v27];
    [(ICAttachmentThumbnailOperation *)v30 setProcessingBlock:v25];
    v40 = v25;
    v31 = v24;
    v32 = v23;
    v33 = v22;
    v34 = MEMORY[0x1E695DF70];
    v35 = [v26 copy];
    v36 = [v34 arrayWithObject:v35];
    [(ICAttachmentThumbnailOperation *)v30 setCompletionBlocks:v36];

    v22 = v33;
    v23 = v32;
    v24 = v31;
    v25 = v40;

    [(ICAttachmentThumbnailOperation *)v30 setQueue:v28];
    v37 = [v21 objectID];
    [(ICAttachmentThumbnailOperation *)v30 setAttachmentID:v37];

    v38 = [v21 note];

    if (!v38)
    {
      [(ICAttachmentThumbnailOperation *)v30 capturePropertiesFromAttachment:v21];
    }
  }

  return v30;
}

- (void)capturePropertiesFromAttachment:(id)a3
{
  v19 = a3;
  v4 = [v19 attachmentModel];
  v5 = [v4 hasPreviews];

  if (v5)
  {
    [(ICAttachmentThumbnailOperation *)self minSize];
    v7 = v6;
    v9 = v8;
    [(ICAttachmentThumbnailOperation *)self scale];
    v11 = v10;
    v12 = [(ICAttachmentThumbnailOperation *)self appearanceInfo];
    v13 = [v19 attachmentPreviewImageWithMinSize:objc_msgSend(v12 scale:"type") appearanceType:1 requireAppearance:{v7, v9, v11}];

    v14 = [v13 newImageLoaderForUpdatingImageOnCompletion:1];
    [(ICAttachmentThumbnailOperation *)self setAttachmentPreviewImageLoader:v14];

    -[ICAttachmentThumbnailOperation setImageScaling:](self, "setImageScaling:", [v13 scaleWhenDrawing]);
  }

  else
  {
    v15 = [v19 media];
    v16 = [v15 mediaURL];
    [(ICAttachmentThumbnailOperation *)self setMediaURL:v16];

    [(ICAttachmentThumbnailOperation *)self setImageScaling:2];
    [(ICAttachmentThumbnailOperation *)self setShowAsFileIcon:1];
  }

  v17 = [(ICAttachmentThumbnailOperation *)self attachmentPreviewImageLoader];
  if (v17)
  {
  }

  else
  {
    v18 = [(ICAttachmentThumbnailOperation *)self mediaURL];

    if (!v18)
    {
      goto LABEL_8;
    }
  }

  -[ICAttachmentThumbnailOperation setIsMovie:](self, "setIsMovie:", [v19 attachmentType] == 5);
LABEL_8:
  [(ICAttachmentThumbnailOperation *)self setAttachmentPropertiesCaptured:1];
}

- (BOOL)isMatchingOperationForCacheKey:(id)a3 cache:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICAttachmentThumbnailOperation *)self cacheKey];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(ICAttachmentThumbnailOperation *)self cache];
    v11 = v10 == v6;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addCompletionBlock:(id)a3
{
  v4 = [a3 copy];
  v3 = v4;
  performBlockOnMainThreadAndWait();
}

void __53__ICAttachmentThumbnailOperation_addCompletionBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completionBlocks];
  v2 = _Block_copy(*(a1 + 40));
  [v3 addObject:v2];
}

- (void)main
{
  if ([(ICAttachmentThumbnailOperation *)self attachmentPropertiesCaptured])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E69B7800] sharedContext];
    v5 = [v4 workerManagedObjectContext];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__ICAttachmentThumbnailOperation_main__block_invoke;
    v22[3] = &unk_1E8468F80;
    v3 = v5;
    v23 = v3;
    v24 = self;
    [v3 performBlockAndWait:v22];
  }

  v6 = [(ICAttachmentThumbnailOperation *)self attachmentPreviewImageLoader];
  v7 = [v6 canLoadImage];

  if (v7)
  {
    v8 = [(ICAttachmentThumbnailOperation *)self attachmentPreviewImageLoader];
    v9 = [v8 loadOrientedImage];
  }

  else
  {
    v17 = [(ICAttachmentThumbnailOperation *)self mediaURL];

    if (v17)
    {
      [(ICAttachmentThumbnailOperation *)self requestThumbnail];
      goto LABEL_12;
    }

    v18 = [(ICAttachmentThumbnailOperation *)self fallbackBlock];

    if (!v18)
    {
      goto LABEL_12;
    }

    v8 = [(ICAttachmentThumbnailOperation *)self fallbackBlock];
    [(ICAttachmentThumbnailOperation *)self scale];
    v9 = v8[2](v8);
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(ICAttachmentThumbnailOperation *)self processingBlock];

    if (v11)
    {
      v12 = [(ICAttachmentThumbnailOperation *)self processingBlock];
      v13 = (v12)[2](v12, v10, [(ICAttachmentThumbnailOperation *)self imageScaling], [(ICAttachmentThumbnailOperation *)self showAsFileIcon], [(ICAttachmentThumbnailOperation *)self isMovie]);

      v10 = v13;
    }
  }

  v14 = [v10 ic_decodeInBackground];

  v15 = [objc_alloc(MEMORY[0x1E69B7900]) initWithImage:v14 imageScaling:-[ICAttachmentThumbnailOperation imageScaling](self showAsFileIcon:"imageScaling") isMovie:{-[ICAttachmentThumbnailOperation showAsFileIcon](self, "showAsFileIcon"), -[ICAttachmentThumbnailOperation isMovie](self, "isMovie")}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__ICAttachmentThumbnailOperation_main__block_invoke_12;
  v19[3] = &unk_1E8468F80;
  v20 = v15;
  v21 = self;
  v16 = v15;
  dispatch_async(MEMORY[0x1E69E96A0], v19);

LABEL_12:
}

void __38__ICAttachmentThumbnailOperation_main__block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) attachmentID];
  v8 = 0;
  v4 = [v2 existingObjectWithID:v3 error:&v8];
  v5 = v8;

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    v7 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __38__ICAttachmentThumbnailOperation_main__block_invoke_cold_1(v1, v7);
    }
  }

  [*v1 capturePropertiesFromAttachment:v4];
}

void __38__ICAttachmentThumbnailOperation_main__block_invoke_12(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) image];

  if (v2)
  {
    v3 = [*(a1 + 40) cache];
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) cacheKey];
    [v3 setThumbnailData:v4 forKey:v5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 40) completionBlocks];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [*(a1 + 32) image];
        (*(v11 + 16))(v11, v12, [*(a1 + 32) imageScaling], objc_msgSend(*(a1 + 32), "showAsFileIcon"), objc_msgSend(*(a1 + 32), "isMovie"));

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)requestThumbnail
{
  v3 = [ICAttachmentThumbnailPostProcessingOperation alloc];
  [(ICAttachmentThumbnailOperation *)self minSize];
  v5 = v4;
  v7 = v6;
  [(ICAttachmentThumbnailOperation *)self scale];
  v9 = v8;
  v10 = [(ICAttachmentThumbnailOperation *)self appearanceInfo];
  v11 = [(ICAttachmentThumbnailOperation *)self cache];
  v12 = [(ICAttachmentThumbnailOperation *)self cacheKey];
  v13 = [(ICAttachmentThumbnailOperation *)self processingBlock];
  v14 = [(ICAttachmentThumbnailOperation *)self completionBlocks];
  v15 = [(ICAttachmentThumbnailOperation *)self fallbackBlock];
  v16 = [(ICAttachmentThumbnailPostProcessingOperation *)v3 initWithSize:v10 scale:v11 appearanceInfo:v12 cache:v13 cacheKey:v14 processingBlock:v15 completionBlocks:v5 fallbackBlock:v7, v9];

  v17 = [(ICAttachmentThumbnailOperation *)self mediaURL];
  [(ICAttachmentThumbnailOperation *)self minSize];
  v19 = v18;
  v21 = v20;
  [(ICAttachmentThumbnailOperation *)self scale];
  v22 = MEMORY[0x1E696AAE0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __50__ICAttachmentThumbnailOperation_requestThumbnail__block_invoke;
  v29[3] = &unk_1E846AB58;
  v32 = v19;
  v33 = v21;
  v34 = v23;
  v30 = v17;
  v31 = v16;
  v24 = v16;
  v25 = v17;
  v26 = [v22 blockOperationWithBlock:v29];
  [(ICAttachmentThumbnailPostProcessingOperation *)v24 addDependency:v26];
  v27 = [(ICAttachmentThumbnailOperation *)self queue];
  [v27 addOperation:v26];

  v28 = [(ICAttachmentThumbnailOperation *)self queue];
  [v28 addOperation:v24];
}

void __50__ICAttachmentThumbnailOperation_requestThumbnail__block_invoke(uint64_t a1, double a2)
{
  gotLoadHelper_x8__OBJC_CLASS___QLThumbnailGenerationRequest(a2);
  v4 = [objc_alloc(*(v3 + 224)) initWithFileAtURL:*(a1 + 32) size:-1 scale:*(a1 + 48) representationTypes:{*(a1 + 56), *(a1 + 64)}];
  Helper_x8__OBJC_CLASS___QLThumbnailGenerator = gotLoadHelper_x8__OBJC_CLASS___QLThumbnailGenerator(v5);
  v8 = [*(v7 + 232) sharedGenerator];
  v9 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__ICAttachmentThumbnailOperation_requestThumbnail__block_invoke_2;
  v11[3] = &unk_1E846AB30;
  v12 = *(a1 + 40);
  v13 = v9;
  v10 = v9;
  [v8 generateBestRepresentationForRequest:v4 completionHandler:v11];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void __50__ICAttachmentThumbnailOperation_requestThumbnail__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 UIImage];
  [*(a1 + 32) setImage:v6];

  if (v5)
  {
    v7 = os_log_create("com.apple.notes", "PreviewGeneration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__ICAttachmentThumbnailOperation_requestThumbnail__block_invoke_2_cold_1(v5, v7);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ICAttachmentThumbnailOperationQueue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

void __38__ICAttachmentThumbnailOperation_main__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 attachmentID];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error getting attachment from object ID %@ in attachment thumbnail operation", &v4, 0xCu);
}

void __50__ICAttachmentThumbnailOperation_requestThumbnail__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error getting thumbnail %@", &v2, 0xCu);
}

@end