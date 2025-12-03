@interface ICAttachmentMapModel(PreviewGeneration)
- (uint64_t)generatePreviewsInOperation:()PreviewGeneration;
- (uint64_t)needToGeneratePreviews;
@end

@implementation ICAttachmentMapModel(PreviewGeneration)

- (uint64_t)needToGeneratePreviews
{
  v21 = *MEMORY[0x1E69E9840];
  attachment = [self attachment];
  if ([attachment metadataExists])
  {
    v5 = 0;
  }

  else
  {
    v5 = [self isGeneratingPreviews] ^ 1;
  }

  v6 = os_log_create("com.apple.notes", "PreviewGeneration");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    attachment2 = [self attachment];
    identifier = [attachment2 identifier];
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = identifier;
    v19 = 1024;
    v20 = v5;
    _os_log_debug_impl(&dword_1D4171000, v6, OS_LOG_TYPE_DEBUG, "%@ %@ %@ return %d", &v13, 0x26u);
  }

  return v5;
}

- (uint64_t)generatePreviewsInOperation:()PreviewGeneration
{
  v4 = a3;
  if ([self isGeneratingPreviews])
  {
    v5 = 0;
  }

  else
  {
    [self setGeneratingPreviews:1];
    v6 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__23;
    v26 = __Block_byref_object_dispose__23;
    v27 = 0;
    attachment = [self attachment];
    managedObjectContext = [attachment managedObjectContext];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke;
    v20[3] = &unk_1E846AAB8;
    objc_copyWeak(&v21, &location);
    v20[4] = &v22;
    [managedObjectContext performBlockAndWait:v20];

    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x1E696AD68] requestWithURL:v23[5]];
    [v10 _setNonAppInitiated:1];
    gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(v11);
    v13 = objc_alloc_init(*(v12 + 3296));
    v14 = objc_loadWeakRetained(&location);
    v16 = MEMORY[0x1E69E9820];
    v17 = v13;
    v18 = v10;
    v19 = v6;
    performBlockOnMainThread();

    objc_autoreleasePoolPop(v9);
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    [self setGeneratingPreviews:{0, v16, 3221225472, __71__ICAttachmentMapModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_12, &unk_1E846AB08}];
    v5 = *(v29 + 24);
    objc_destroyWeak(&v21);
    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
    objc_destroyWeak(&location);
  }

  return v5 & 1;
}

@end