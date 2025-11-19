@interface ICAttachmentImageLoadingOperation
- (ICAttachmentImageLoadingOperation)initWithCache:(id)a3 attachment:(id)a4 attachmentType:(signed __int16)a5 forceFullSizeImage:(BOOL)a6 completionHandler:(id)a7;
- (id)addCompletionHandler:(id)a3;
- (void)main;
- (void)removeCompletionHandler:(id)a3 cancelIfNoneLeft:(BOOL)a4;
@end

@implementation ICAttachmentImageLoadingOperation

- (void)main
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Had to fall back to rotating media for attachment: %@", &v3, 0xCu);
}

void __41__ICAttachmentImageLoadingOperation_main__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7680];
  v3 = [*(a1 + 32) attachmentObjectID];
  v4 = [v2 ic_existingObjectWithID:v3 context:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(*(*(a1 + 48) + 8) + 40) identifier];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 48) + 8) + 40) isUnsupportedOnCurrentPlatform];
  if (v10)
  {
    LOBYTE(v10) = [*(*(*(a1 + 48) + 8) + 40) hasFallbackImage];
  }

  *(*(*(a1 + 64) + 8) + 24) = v10;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v11 = [*(*(*(a1 + 48) + 8) + 40) media];
    v12 = *(*(a1 + 72) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *(*(*(a1 + 80) + 8) + 24) = [*(*(*(a1 + 72) + 8) + 40) hasFile];
  }

  *(*(*(a1 + 88) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) imageFilterType];
  *(*(*(a1 + 96) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) orientation];
  v14 = [*(*(*(a1 + 48) + 8) + 40) markupModelData];
  v15 = *(*(a1 + 104) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  *(*(*(a1 + 112) + 8) + 24) = [*(*(*(a1 + 72) + 8) + 40) isPasswordProtected];
  v17 = [*(*(*(a1 + 48) + 8) + 40) croppingQuad];
  v18 = *(*(a1 + 120) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = [*(*(*(a1 + 48) + 8) + 40) attachmentModel];
  v21 = [v20 needsFullSizePreview];

  if (v21)
  {
    [*(*(*(a1 + 48) + 8) + 40) sizeWidth];
    v23 = v22;
    [*(*(*(a1 + 48) + 8) + 40) sizeHeight];
    v25 = v24;
    v26 = [*(*(*(a1 + 48) + 8) + 40) attachmentPreviewImageWithMinSize:v23 scale:{v24, 1.0}];
    v27 = *(*(a1 + 128) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    [*(*(*(a1 + 128) + 8) + 40) width];
    v30 = v29;
    [*(*(*(a1 + 128) + 8) + 40) height];
    if (v30 >= v31)
    {
      v31 = v30;
    }

    if (v23 >= v25)
    {
      v32 = v23;
    }

    else
    {
      v32 = v25;
    }

    if (vabdd_f64(v31, v32) >= 0.00999999978)
    {
      *(*(*(a1 + 136) + 8) + 24) = 0;
      if (![*(*(*(a1 + 104) + 8) + 40) length])
      {
        v33 = *(*(a1 + 128) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = 0;
      }
    }
  }
}

- (ICAttachmentImageLoadingOperation)initWithCache:(id)a3 attachment:(id)a4 attachmentType:(signed __int16)a5 forceFullSizeImage:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v30.receiver = self;
  v30.super_class = ICAttachmentImageLoadingOperation;
  v15 = [(ICAttachmentImageLoadingOperation *)&v30 init];
  v16 = v15;
  if (v15)
  {
    [(ICAttachmentImageLoadingOperation *)v15 setCache:v12];
    v17 = [v13 managedObjectContext];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __114__ICAttachmentImageLoadingOperation_initWithCache_attachment_attachmentType_forceFullSizeImage_completionHandler___block_invoke;
    v27 = &unk_1E8468F80;
    v28 = v13;
    v18 = v16;
    v29 = v18;
    [v17 performBlockAndWait:&v24];

    [(ICAttachmentImageLoadingOperation *)v18 setAttachmentType:v9, v24, v25, v26, v27];
    [(ICAttachmentImageLoadingOperation *)v18 setForceFullSizeImage:v8];
    v19 = [MEMORY[0x1E695DF70] array];
    [(ICAttachmentImageLoadingOperation *)v18 setCompletionHandlers:v19];

    if (v14)
    {
      v20 = [(ICAttachmentImageLoadingOperation *)v18 completionHandlers];
      v21 = [v14 copy];
      v22 = _Block_copy(v21);
      [v20 addObject:v22];
    }
  }

  return v16;
}

void __114__ICAttachmentImageLoadingOperation_initWithCache_attachment_attachmentType_forceFullSizeImage_completionHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) media];
  v2 = [v5 mediaURL];
  [*(a1 + 40) setMediaURL:v2];

  v3 = [*(a1 + 32) objectID];
  [*(a1 + 40) setAttachmentObjectID:v3];

  v4 = [*(a1 + 32) imageCacheKey];
  [*(a1 + 40) setCacheKey:v4];
}

- (id)addCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = [(ICAttachmentImageLoadingOperation *)self completionHandlers];
  objc_sync_enter(v6);
  v7 = [(ICAttachmentImageLoadingOperation *)self completionHandlers];
  v8 = _Block_copy(v5);
  [v7 addObject:v8];

  objc_sync_exit(v6);
  v9 = _Block_copy(v5);

  return v9;
}

- (void)removeCompletionHandler:(id)a3 cancelIfNoneLeft:(BOOL)a4
{
  v4 = a4;
  aBlock = a3;
  v6 = [(ICAttachmentImageLoadingOperation *)self completionHandlers];
  objc_sync_enter(v6);
  v7 = [(ICAttachmentImageLoadingOperation *)self completionHandlers];
  v8 = _Block_copy(aBlock);
  [v7 removeObject:v8];

  if (v4)
  {
    v9 = [(ICAttachmentImageLoadingOperation *)self completionHandlers];
    v10 = [v9 count];

    if (!v10)
    {
      [(ICAttachmentImageLoadingOperation *)self cancel];
    }
  }

  objc_sync_exit(v6);
}

uint64_t __41__ICAttachmentImageLoadingOperation_main__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) fallbackImageData];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DCAB8] ic_imageWithData:v2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return MEMORY[0x1EEE66BB8]();
}

intptr_t __41__ICAttachmentImageLoadingOperation_main__block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) statusOfValueForKey:@"tracks" error:0] == 2)
  {
    v2 = [*(a1 + 32) ic_previewImage];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

uint64_t __41__ICAttachmentImageLoadingOperation_main__block_invoke_4(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(*(*(a1 + 40) + 8) + 40) orientedImage];

  return MEMORY[0x1EEE66BB8]();
}

void __41__ICAttachmentImageLoadingOperation_main__block_invoke_5(uint64_t a1)
{
  v5 = [*(*(*(a1 + 32) + 8) + 40) decryptedData];
  v2 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end