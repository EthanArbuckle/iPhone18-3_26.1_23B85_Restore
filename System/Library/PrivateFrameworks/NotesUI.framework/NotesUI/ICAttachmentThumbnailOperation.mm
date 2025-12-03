@interface ICAttachmentThumbnailOperation
- (BOOL)isMatchingOperationForCacheKey:(id)key cache:(id)cache;
- (CGSize)minSize;
- (ICAttachmentThumbnailOperation)initWithAttachment:(id)attachment size:(CGSize)size scale:(double)scale appearanceInfo:(id)info cache:(id)cache cacheKey:(id)key processingBlock:(id)block completionBlock:(id)self0 fallbackBlock:(id)self1 queue:(id)self2;
- (ICAttachmentThumbnailOperationQueue)queue;
- (void)addCompletionBlock:(id)block;
- (void)capturePropertiesFromAttachment:(id)attachment;
- (void)main;
- (void)requestThumbnail;
@end

@implementation ICAttachmentThumbnailOperation

- (ICAttachmentThumbnailOperation)initWithAttachment:(id)attachment size:(CGSize)size scale:(double)scale appearanceInfo:(id)info cache:(id)cache cacheKey:(id)key processingBlock:(id)block completionBlock:(id)self0 fallbackBlock:(id)self1 queue:(id)self2
{
  height = size.height;
  width = size.width;
  attachmentCopy = attachment;
  infoCopy = info;
  cacheCopy = cache;
  keyCopy = key;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  fallbackBlockCopy = fallbackBlock;
  queueCopy = queue;
  v41.receiver = self;
  v41.super_class = ICAttachmentThumbnailOperation;
  v29 = [(ICAttachmentThumbnailOperation *)&v41 init];
  v30 = v29;
  if (v29)
  {
    [(ICAttachmentThumbnailOperation *)v29 setMinSize:width, height];
    [(ICAttachmentThumbnailOperation *)v30 setScale:scale];
    [(ICAttachmentThumbnailOperation *)v30 setAppearanceInfo:infoCopy];
    [(ICAttachmentThumbnailOperation *)v30 setCache:cacheCopy];
    [(ICAttachmentThumbnailOperation *)v30 setCacheKey:keyCopy];
    [(ICAttachmentThumbnailOperation *)v30 setFallbackBlock:fallbackBlockCopy];
    [(ICAttachmentThumbnailOperation *)v30 setProcessingBlock:blockCopy];
    v40 = blockCopy;
    v31 = keyCopy;
    v32 = cacheCopy;
    v33 = infoCopy;
    v34 = MEMORY[0x1E695DF70];
    v35 = [completionBlockCopy copy];
    v36 = [v34 arrayWithObject:v35];
    [(ICAttachmentThumbnailOperation *)v30 setCompletionBlocks:v36];

    infoCopy = v33;
    cacheCopy = v32;
    keyCopy = v31;
    blockCopy = v40;

    [(ICAttachmentThumbnailOperation *)v30 setQueue:queueCopy];
    objectID = [attachmentCopy objectID];
    [(ICAttachmentThumbnailOperation *)v30 setAttachmentID:objectID];

    note = [attachmentCopy note];

    if (!note)
    {
      [(ICAttachmentThumbnailOperation *)v30 capturePropertiesFromAttachment:attachmentCopy];
    }
  }

  return v30;
}

- (void)capturePropertiesFromAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachmentModel = [attachmentCopy attachmentModel];
  hasPreviews = [attachmentModel hasPreviews];

  if (hasPreviews)
  {
    [(ICAttachmentThumbnailOperation *)self minSize];
    v7 = v6;
    v9 = v8;
    [(ICAttachmentThumbnailOperation *)self scale];
    v11 = v10;
    appearanceInfo = [(ICAttachmentThumbnailOperation *)self appearanceInfo];
    v13 = [attachmentCopy attachmentPreviewImageWithMinSize:objc_msgSend(appearanceInfo scale:"type") appearanceType:1 requireAppearance:{v7, v9, v11}];

    v14 = [v13 newImageLoaderForUpdatingImageOnCompletion:1];
    [(ICAttachmentThumbnailOperation *)self setAttachmentPreviewImageLoader:v14];

    -[ICAttachmentThumbnailOperation setImageScaling:](self, "setImageScaling:", [v13 scaleWhenDrawing]);
  }

  else
  {
    media = [attachmentCopy media];
    mediaURL = [media mediaURL];
    [(ICAttachmentThumbnailOperation *)self setMediaURL:mediaURL];

    [(ICAttachmentThumbnailOperation *)self setImageScaling:2];
    [(ICAttachmentThumbnailOperation *)self setShowAsFileIcon:1];
  }

  attachmentPreviewImageLoader = [(ICAttachmentThumbnailOperation *)self attachmentPreviewImageLoader];
  if (attachmentPreviewImageLoader)
  {
  }

  else
  {
    mediaURL2 = [(ICAttachmentThumbnailOperation *)self mediaURL];

    if (!mediaURL2)
    {
      goto LABEL_8;
    }
  }

  -[ICAttachmentThumbnailOperation setIsMovie:](self, "setIsMovie:", [attachmentCopy attachmentType] == 5);
LABEL_8:
  [(ICAttachmentThumbnailOperation *)self setAttachmentPropertiesCaptured:1];
}

- (BOOL)isMatchingOperationForCacheKey:(id)key cache:(id)cache
{
  cacheCopy = cache;
  keyCopy = key;
  cacheKey = [(ICAttachmentThumbnailOperation *)self cacheKey];
  v9 = [keyCopy isEqualToString:cacheKey];

  if (v9)
  {
    cache = [(ICAttachmentThumbnailOperation *)self cache];
    v11 = cache == cacheCopy;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addCompletionBlock:(id)block
{
  v4 = [block copy];
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
    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    workerManagedObjectContext = [mEMORY[0x1E69B7800] workerManagedObjectContext];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __38__ICAttachmentThumbnailOperation_main__block_invoke;
    v22[3] = &unk_1E8468F80;
    v3 = workerManagedObjectContext;
    v23 = v3;
    selfCopy = self;
    [v3 performBlockAndWait:v22];
  }

  attachmentPreviewImageLoader = [(ICAttachmentThumbnailOperation *)self attachmentPreviewImageLoader];
  canLoadImage = [attachmentPreviewImageLoader canLoadImage];

  if (canLoadImage)
  {
    attachmentPreviewImageLoader2 = [(ICAttachmentThumbnailOperation *)self attachmentPreviewImageLoader];
    loadOrientedImage = [attachmentPreviewImageLoader2 loadOrientedImage];
  }

  else
  {
    mediaURL = [(ICAttachmentThumbnailOperation *)self mediaURL];

    if (mediaURL)
    {
      [(ICAttachmentThumbnailOperation *)self requestThumbnail];
      goto LABEL_12;
    }

    fallbackBlock = [(ICAttachmentThumbnailOperation *)self fallbackBlock];

    if (!fallbackBlock)
    {
      goto LABEL_12;
    }

    attachmentPreviewImageLoader2 = [(ICAttachmentThumbnailOperation *)self fallbackBlock];
    [(ICAttachmentThumbnailOperation *)self scale];
    loadOrientedImage = attachmentPreviewImageLoader2[2](attachmentPreviewImageLoader2);
  }

  v10 = loadOrientedImage;

  if (v10)
  {
    processingBlock = [(ICAttachmentThumbnailOperation *)self processingBlock];

    if (processingBlock)
    {
      processingBlock2 = [(ICAttachmentThumbnailOperation *)self processingBlock];
      v13 = (processingBlock2)[2](processingBlock2, v10, [(ICAttachmentThumbnailOperation *)self imageScaling], [(ICAttachmentThumbnailOperation *)self showAsFileIcon], [(ICAttachmentThumbnailOperation *)self isMovie]);

      v10 = v13;
    }
  }

  ic_decodeInBackground = [v10 ic_decodeInBackground];

  v15 = [objc_alloc(MEMORY[0x1E69B7900]) initWithImage:ic_decodeInBackground imageScaling:-[ICAttachmentThumbnailOperation imageScaling](self showAsFileIcon:"imageScaling") isMovie:{-[ICAttachmentThumbnailOperation showAsFileIcon](self, "showAsFileIcon"), -[ICAttachmentThumbnailOperation isMovie](self, "isMovie")}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __38__ICAttachmentThumbnailOperation_main__block_invoke_12;
  v19[3] = &unk_1E8468F80;
  v20 = v15;
  selfCopy2 = self;
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
  appearanceInfo = [(ICAttachmentThumbnailOperation *)self appearanceInfo];
  cache = [(ICAttachmentThumbnailOperation *)self cache];
  cacheKey = [(ICAttachmentThumbnailOperation *)self cacheKey];
  processingBlock = [(ICAttachmentThumbnailOperation *)self processingBlock];
  completionBlocks = [(ICAttachmentThumbnailOperation *)self completionBlocks];
  fallbackBlock = [(ICAttachmentThumbnailOperation *)self fallbackBlock];
  v16 = [(ICAttachmentThumbnailPostProcessingOperation *)v3 initWithSize:appearanceInfo scale:cache appearanceInfo:cacheKey cache:processingBlock cacheKey:completionBlocks processingBlock:fallbackBlock completionBlocks:v5 fallbackBlock:v7, v9];

  mediaURL = [(ICAttachmentThumbnailOperation *)self mediaURL];
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
  v30 = mediaURL;
  v31 = v16;
  v24 = v16;
  v25 = mediaURL;
  v26 = [v22 blockOperationWithBlock:v29];
  [(ICAttachmentThumbnailPostProcessingOperation *)v24 addDependency:v26];
  queue = [(ICAttachmentThumbnailOperation *)self queue];
  [queue addOperation:v26];

  queue2 = [(ICAttachmentThumbnailOperation *)self queue];
  [queue2 addOperation:v24];
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