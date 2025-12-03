@interface ICAttachmentThumbnailPostProcessingOperation
- (BOOL)isMatchingOperationForCacheKey:(id)key cache:(id)cache;
- (CGSize)minSize;
- (ICAttachmentThumbnailPostProcessingOperation)initWithSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info cache:(id)cache cacheKey:(id)key processingBlock:(id)block completionBlocks:(id)blocks fallbackBlock:(id)self0;
- (void)addCompletionBlock:(id)block;
- (void)main;
@end

@implementation ICAttachmentThumbnailPostProcessingOperation

- (ICAttachmentThumbnailPostProcessingOperation)initWithSize:(CGSize)size scale:(double)scale appearanceInfo:(id)info cache:(id)cache cacheKey:(id)key processingBlock:(id)block completionBlocks:(id)blocks fallbackBlock:(id)self0
{
  height = size.height;
  width = size.width;
  infoCopy = info;
  cacheCopy = cache;
  keyCopy = key;
  blockCopy = block;
  blocksCopy = blocks;
  fallbackBlockCopy = fallbackBlock;
  v29.receiver = self;
  v29.super_class = ICAttachmentThumbnailPostProcessingOperation;
  v25 = [(ICAttachmentThumbnailPostProcessingOperation *)&v29 init];
  v26 = v25;
  if (v25)
  {
    [(ICAttachmentThumbnailPostProcessingOperation *)v25 setMinSize:width, height];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setScale:scale];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setAppearanceInfo:infoCopy];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setCache:cacheCopy];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setCacheKey:keyCopy];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setFallbackBlock:fallbackBlockCopy];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setProcessingBlock:blockCopy];
    v27 = [blocksCopy mutableCopy];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setCompletionBlocks:v27];
  }

  return v26;
}

- (BOOL)isMatchingOperationForCacheKey:(id)key cache:(id)cache
{
  cacheCopy = cache;
  keyCopy = key;
  cacheKey = [(ICAttachmentThumbnailPostProcessingOperation *)self cacheKey];
  v9 = [keyCopy isEqualToString:cacheKey];

  if (v9)
  {
    cache = [(ICAttachmentThumbnailPostProcessingOperation *)self cache];
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

void __67__ICAttachmentThumbnailPostProcessingOperation_addCompletionBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completionBlocks];
  v2 = _Block_copy(*(a1 + 40));
  [v3 addObject:v2];
}

- (void)main
{
  image = [(ICAttachmentThumbnailPostProcessingOperation *)self image];
  if (image)
  {
    fallbackBlock = image;
  }

  else
  {
    v5 = MEMORY[0x1E69DCAB8];
    mediaURL = [(ICAttachmentThumbnailPostProcessingOperation *)self mediaURL];
    [(ICAttachmentThumbnailPostProcessingOperation *)self minSize];
    fallbackBlock = [v5 ic_fileIconForURL:mediaURL withPreferredSize:?];

    if (fallbackBlock)
    {
      [(ICAttachmentThumbnailPostProcessingOperation *)self setShowAsFileIcon:1];
    }

    else
    {
      fallbackBlock = [(ICAttachmentThumbnailPostProcessingOperation *)self fallbackBlock];

      if (!fallbackBlock)
      {
        goto LABEL_7;
      }

      fallbackBlock2 = [(ICAttachmentThumbnailPostProcessingOperation *)self fallbackBlock];
      [(ICAttachmentThumbnailPostProcessingOperation *)self scale];
      fallbackBlock = fallbackBlock2[2](fallbackBlock2);

      if (!fallbackBlock)
      {
        goto LABEL_7;
      }
    }
  }

  processingBlock = [(ICAttachmentThumbnailPostProcessingOperation *)self processingBlock];

  if (processingBlock)
  {
    processingBlock2 = [(ICAttachmentThumbnailPostProcessingOperation *)self processingBlock];
    v9 = (processingBlock2)[2](processingBlock2, fallbackBlock, [(ICAttachmentThumbnailPostProcessingOperation *)self imageScaling], [(ICAttachmentThumbnailPostProcessingOperation *)self showAsFileIcon], [(ICAttachmentThumbnailPostProcessingOperation *)self isMovie]);

    fallbackBlock = v9;
  }

LABEL_7:
  ic_decodeInBackground = [fallbackBlock ic_decodeInBackground];

  v11 = [objc_alloc(MEMORY[0x1E69B7900]) initWithImage:ic_decodeInBackground imageScaling:-[ICAttachmentThumbnailPostProcessingOperation imageScaling](self showAsFileIcon:"imageScaling") isMovie:{-[ICAttachmentThumbnailPostProcessingOperation showAsFileIcon](self, "showAsFileIcon"), -[ICAttachmentThumbnailPostProcessingOperation isMovie](self, "isMovie")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__ICAttachmentThumbnailPostProcessingOperation_main__block_invoke;
  v14[3] = &unk_1E8468F80;
  v15 = v11;
  selfCopy = self;
  v12 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

void __52__ICAttachmentThumbnailPostProcessingOperation_main__block_invoke(uint64_t a1)
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

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end