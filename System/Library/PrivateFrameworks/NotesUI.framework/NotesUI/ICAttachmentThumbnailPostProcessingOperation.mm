@interface ICAttachmentThumbnailPostProcessingOperation
- (BOOL)isMatchingOperationForCacheKey:(id)a3 cache:(id)a4;
- (CGSize)minSize;
- (ICAttachmentThumbnailPostProcessingOperation)initWithSize:(CGSize)a3 scale:(double)a4 appearanceInfo:(id)a5 cache:(id)a6 cacheKey:(id)a7 processingBlock:(id)a8 completionBlocks:(id)a9 fallbackBlock:(id)a10;
- (void)addCompletionBlock:(id)a3;
- (void)main;
@end

@implementation ICAttachmentThumbnailPostProcessingOperation

- (ICAttachmentThumbnailPostProcessingOperation)initWithSize:(CGSize)a3 scale:(double)a4 appearanceInfo:(id)a5 cache:(id)a6 cacheKey:(id)a7 processingBlock:(id)a8 completionBlocks:(id)a9 fallbackBlock:(id)a10
{
  height = a3.height;
  width = a3.width;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v29.receiver = self;
  v29.super_class = ICAttachmentThumbnailPostProcessingOperation;
  v25 = [(ICAttachmentThumbnailPostProcessingOperation *)&v29 init];
  v26 = v25;
  if (v25)
  {
    [(ICAttachmentThumbnailPostProcessingOperation *)v25 setMinSize:width, height];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setScale:a4];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setAppearanceInfo:v19];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setCache:v20];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setCacheKey:v21];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setFallbackBlock:v24];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setProcessingBlock:v22];
    v27 = [v23 mutableCopy];
    [(ICAttachmentThumbnailPostProcessingOperation *)v26 setCompletionBlocks:v27];
  }

  return v26;
}

- (BOOL)isMatchingOperationForCacheKey:(id)a3 cache:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICAttachmentThumbnailPostProcessingOperation *)self cacheKey];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = [(ICAttachmentThumbnailPostProcessingOperation *)self cache];
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

void __67__ICAttachmentThumbnailPostProcessingOperation_addCompletionBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completionBlocks];
  v2 = _Block_copy(*(a1 + 40));
  [v3 addObject:v2];
}

- (void)main
{
  v3 = [(ICAttachmentThumbnailPostProcessingOperation *)self image];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [(ICAttachmentThumbnailPostProcessingOperation *)self mediaURL];
    [(ICAttachmentThumbnailPostProcessingOperation *)self minSize];
    v4 = [v5 ic_fileIconForURL:v6 withPreferredSize:?];

    if (v4)
    {
      [(ICAttachmentThumbnailPostProcessingOperation *)self setShowAsFileIcon:1];
    }

    else
    {
      v4 = [(ICAttachmentThumbnailPostProcessingOperation *)self fallbackBlock];

      if (!v4)
      {
        goto LABEL_7;
      }

      v13 = [(ICAttachmentThumbnailPostProcessingOperation *)self fallbackBlock];
      [(ICAttachmentThumbnailPostProcessingOperation *)self scale];
      v4 = v13[2](v13);

      if (!v4)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = [(ICAttachmentThumbnailPostProcessingOperation *)self processingBlock];

  if (v7)
  {
    v8 = [(ICAttachmentThumbnailPostProcessingOperation *)self processingBlock];
    v9 = (v8)[2](v8, v4, [(ICAttachmentThumbnailPostProcessingOperation *)self imageScaling], [(ICAttachmentThumbnailPostProcessingOperation *)self showAsFileIcon], [(ICAttachmentThumbnailPostProcessingOperation *)self isMovie]);

    v4 = v9;
  }

LABEL_7:
  v10 = [v4 ic_decodeInBackground];

  v11 = [objc_alloc(MEMORY[0x1E69B7900]) initWithImage:v10 imageScaling:-[ICAttachmentThumbnailPostProcessingOperation imageScaling](self showAsFileIcon:"imageScaling") isMovie:{-[ICAttachmentThumbnailPostProcessingOperation showAsFileIcon](self, "showAsFileIcon"), -[ICAttachmentThumbnailPostProcessingOperation isMovie](self, "isMovie")}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__ICAttachmentThumbnailPostProcessingOperation_main__block_invoke;
  v14[3] = &unk_1E8468F80;
  v15 = v11;
  v16 = self;
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