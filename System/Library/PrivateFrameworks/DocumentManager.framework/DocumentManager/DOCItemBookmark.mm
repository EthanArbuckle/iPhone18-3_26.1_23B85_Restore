@interface DOCItemBookmark
+ (BOOL)isAnyItemBookmarkAFault:(id)a3;
+ (BOOL)isAnyNodeAFault:(id)a3;
+ (id)_contentTypeForURL:(id)a3;
+ (id)documentsURLsForItemBookmarks:(id)a3;
+ (void)_fetchDocumentURLFromBookmarkableString:(id)a3 completion:(id)a4;
- (DOCItemBookmark)initWithBookmarkableString:(id)a3 node:(id)a4;
- (DOCItemBookmark)initWithCoder:(id)a3;
- (DOCItemBookmark)initWithURL:(id)a3 node:(id)a4;
- (id)coordinatedFileURL;
- (id)description;
- (void)convertAndCopyURLToInbox:(id)a3 ofType:(id)a4 conversionRules:(id)a5 completion:(id)a6;
- (void)coordinatedFileURL;
- (void)copyURLToInbox:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)prepareForMode:(unint64_t)a3 usingBookmark:(BOOL)a4 shouldConvert:(BOOL)a5 conversionRules:(id)a6 completionBlock:(id)a7;
@end

@implementation DOCItemBookmark

- (DOCItemBookmark)initWithBookmarkableString:(id)a3 node:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DOCItemBookmark;
  v8 = [(DOCItemBookmark *)&v14 init];
  if (v8)
  {
    v9 = MEMORY[0x1E699A450];
    v10 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_INFO, "DOCItemBookmark: initWithBookmarkableString: %@, node: %{public}@", buf, 0x16u);
    }

    [(DOCItemBookmark *)v8 setBookmarkableString:v6];
    [(DOCItemBookmark *)v8 setNode:v7];
    v11 = [v7 contentType];
    [(DOCItemBookmark *)v8 setContentType:v11];

    v8->_needsToBeImported = 0;
    v12 = v8;
  }

  return v8;
}

- (DOCItemBookmark)initWithURL:(id)a3 node:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = DOCItemBookmark;
  v8 = [(DOCItemBookmark *)&v27 init];
  if (v8)
  {
    v9 = MEMORY[0x1E699A450];
    v10 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_INFO, "DOCItemBookmark: initWithURL: %@, node: %{public}@", buf, 0x16u);
    }

    v11 = [v6 startAccessingSecurityScopedResource];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__2;
    v36 = __Block_byref_object_dispose__2;
    v37 = 0;
    v12 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    v25[4] = buf;
    v26 = 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __36__DOCItemBookmark_initWithURL_node___block_invoke;
    v25[3] = &unk_1E8783630;
    [v12 coordinateReadingItemAtURL:v6 options:0 error:&v26 byAccessor:v25];
    v13 = v26;
    if (v13)
    {
      v14 = *v9;
      if (!*v9)
      {
        DOCInitLogging();
        v14 = *v9;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v28 = 138412802;
        v29 = v6;
        v30 = 2114;
        v31 = v7;
        v32 = 2112;
        v33 = v13;
        _os_log_error_impl(&dword_1E57D8000, v14, OS_LOG_TYPE_ERROR, "Failed to coordinate on bookmark item with URL: %@, node: %{public}@, error: %@", v28, 0x20u);
      }
    }

    else
    {
      v16 = *(*&buf[8] + 40);
      if (v16)
      {
        v17 = v16;

        v6 = v17;
      }
    }

    _Block_object_dispose(buf, 8);
    v24 = v13;
    v18 = [DOCItemBookmark _wrapperForURL:v6 error:&v24];
    v19 = v24;

    wrapper = v8->_wrapper;
    v8->_wrapper = v18;

    if (v11)
    {
      [v6 stopAccessingSecurityScopedResource];
    }

    if (v8->_wrapper)
    {
      if (v7)
      {
        [(DOCItemBookmark *)v8 setNode:v7];
        [v7 contentType];
      }

      else
      {
        [DOCItemBookmark _contentTypeForURL:v6];
      }
      v22 = ;
      [(DOCItemBookmark *)v8 setContentType:v22];

      v8->_needsToBeImported = 0;
      v15 = v8;
    }

    else
    {
      v21 = *v9;
      if (!*v9)
      {
        DOCInitLogging();
        v21 = *v9;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = v6;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        *&buf[22] = 2112;
        v35 = v19;
        _os_log_error_impl(&dword_1E57D8000, v21, OS_LOG_TYPE_ERROR, "Failed to create FPSandboxingURLWrapper with URL: %@, node: %{public}@, error: %@", buf, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_contentTypeForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E6982C38] typeWithFilenameExtension:v4];
  }

  else
  {
    v11 = 0;
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [v3 path];
    [v6 fileExistsAtPath:v7 isDirectory:&v11];

    v8 = MEMORY[0x1E6982D78];
    if (!v11)
    {
      v8 = MEMORY[0x1E6982E50];
    }

    v5 = *v8;
  }

  v9 = v5;

  return v9;
}

+ (void)_fetchDocumentURLFromBookmarkableString:(id)a3 completion:(id)a4
{
  v5 = a4;
  v4 = v5;
  FPDocumentURLFromBookmarkableString();
}

- (void)prepareForMode:(unint64_t)a3 usingBookmark:(BOOL)a4 shouldConvert:(BOOL)a5 conversionRules:(id)a6 completionBlock:(id)a7
{
  v8 = a5;
  v9 = a4;
  v64[1] = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = a7;
  v15 = [(DOCItemBookmark *)self fileURL];

  if (v15)
  {
    v59 = MEMORY[0x1E69E9820];
    v60 = 3221225472;
    v61 = __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke;
    v62 = &unk_1E87823C0;
    v63 = v14;
    DOCRunInMainThread();
  }

  if (!v9)
  {
    v20 = self->_wrapper != 0;
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to prepare a DOCItem in mode %lu without using bookmark and with a nil _wrapper", a3];
    LOBYTE(v20) = DOCAssertWithIntenalBuildAlert(v20, 0, @"[INTERNAL BUILD] Elusive Bug Alert", @"Trying to prepare a DOCItemBookmark with usingBookmark==NO and with a nil _wrapper.\n\n Please file a radar to DocumentManager | iOS and attach a sysdiagnose.\n\n We will now abort the action.", v21, 0);

    if ((v20 & 1) == 0)
    {
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_5;
      v48 = &unk_1E87823C0;
      v49 = v14;
      DOCRunInMainThread();
      v19 = v49;
      goto LABEL_27;
    }

    v22 = [(FPSandboxingURLWrapper *)self->_wrapper url];
    [(DOCItemBookmark *)self setFileURL:v22];

    if (a3 && ![(DOCItemBookmark *)self needsToBeImported])
    {
      v41 = v14;
      DOCRunInMainThread();
      v19 = v41;
      goto LABEL_27;
    }

    v23 = [(DOCItemBookmark *)self fileURL];

    if (!v23)
    {
      [DOCItemBookmark prepareForMode:a2 usingBookmark:self shouldConvert:? conversionRules:? completionBlock:?];
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_6;
    v43[3] = &unk_1E8783680;
    v43[4] = self;
    v24 = v14;
    v44 = v24;
    v25 = MEMORY[0x1E692E2E0](v43);
    v26 = [(DOCItemBookmark *)self fileURL];
    v27 = v26;
    if (v8)
    {
      v40 = v25;
      v28 = [v26 startAccessingSecurityScopedResource];

      v29 = [(DOCItemBookmark *)self fileURL];
      v30 = *MEMORY[0x1E695DAA0];
      v64[0] = *MEMORY[0x1E695DAA0];
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
      v42 = 0;
      v27 = [v29 promisedItemResourceValuesForKeys:v31 error:&v42];
      v32 = v42;

      if (v28)
      {
        v33 = [(DOCItemBookmark *)self fileURL];
        [v33 stopAccessingSecurityScopedResource];
      }

      v34 = [v27 valueForKey:v30];
      v35 = [v34 identifier];

      if (v32 || !v35)
      {
        v24[2](v24, 0);

LABEL_26:
        v19 = v44;
        goto LABEL_27;
      }

      v36 = [MEMORY[0x1E6982C38] typeWithIdentifier:v35];
      v37 = [v13 allKeys];
      v38 = [v37 containsObject:v36];

      v39 = [(DOCItemBookmark *)self fileURL];
      v25 = v40;
      if (v38)
      {
        [(DOCItemBookmark *)self copyURLToInbox:v39 completion:v40];
      }

      else
      {
        [(DOCItemBookmark *)self convertAndCopyURLToInbox:v39 ofType:v36 conversionRules:v13 completion:v40];
      }
    }

    else
    {
      [(DOCItemBookmark *)self copyURLToInbox:v26 completion:v25];
    }

    goto LABEL_26;
  }

  v16 = self->_bookmarkableString != 0;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to prepare a DOCItem in mode %lu with a nil bookmarkableString", a3];
  LOBYTE(v16) = DOCAssertWithIntenalBuildAlert(v16, 0, @"[INTERNAL BUILD] Elusive Bug Alert", @"Trying to prepare a DOCItemBookmark with usingBookmark==YES and with a nil bookmarkableString.\n\n Please file a radar to DocumentManager | iOS and attach a sysdiagnose.\n\n We will now abort the action.", v17, 0);

  if (v16)
  {
    bookmarkableString = self->_bookmarkableString;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_3;
    v50[3] = &unk_1E87836A8;
    v50[4] = self;
    v51 = v14;
    v52 = a3;
    v53 = a2;
    [DOCItemBookmark _fetchDocumentURLFromBookmarkableString:bookmarkableString completion:v50];
    v19 = v51;
  }

  else
  {
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_2;
    v57 = &unk_1E87823C0;
    v58 = v14;
    DOCRunInMainThread();
    v19 = v58;
  }

LABEL_27:
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x1E699A450];
    v8 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_3_cold_1();
    }

    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_15;
    v21 = &unk_1E87823C0;
    v22 = *(a1 + 40);
    DOCRunInMainThread();
    v9 = v22;
  }

  else
  {
    v10 = (a1 + 32);
    [*(a1 + 32) setFileURL:v5];
    if (*(a1 + 48) && ![*v10 needsToBeImported])
    {
      v15 = *(a1 + 40);
      DOCRunInMainThread();
      v9 = v15;
    }

    else
    {
      v11 = [*v10 fileURL];

      if (!v11)
      {
        __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_3_cold_2(a1, (a1 + 32));
      }

      v12 = *(a1 + 32);
      v13 = [v12 fileURL];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_2_23;
      v16[3] = &unk_1E8783680;
      v14 = *(a1 + 40);
      v16[4] = *(a1 + 32);
      v17 = v14;
      [v12 copyURLToInbox:v13 completion:v16];

      v9 = v17;
    }
  }
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_2_23(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFileURL:a2];
  v3 = *(a1 + 40);
  DOCRunInMainThread();
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_3_24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fileURL];
  (*(v1 + 16))(v1, v2 != 0);
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fileURL];
  (*(v1 + 16))(v1, v2 != 0);
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_6(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setFileURL:a2];
  v3 = *(a1 + 40);
  DOCRunInMainThread();
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fileURL];
  (*(v1 + 16))(v1, v2 != 0);
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fileURL];
  (*(v1 + 16))(v1, v2 != 0);
}

- (void)convertAndCopyURLToInbox:(id)a3 ofType:(id)a4 conversionRules:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = dispatch_get_global_queue(21, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke;
  v18[3] = &unk_1E8783720;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  v17 = v9;
  dispatch_async(v13, v18);
}

void __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) startAccessingSecurityScopedResource])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__2;
    v39 = __Block_byref_object_dispose__2;
    v40 = 0;
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_2;
    v32[3] = &unk_1E87836D0;
    v33 = v2;
    v34 = &v35;
    [v3 enumerateKeysAndObjectsUsingBlock:v32];
    if (v36[5])
    {
      v4 = [*(a1 + 32) lastPathComponent];
      v5 = [v4 stringByDeletingPathExtension];
      v6 = [v36[5] preferredFilenameExtension];
      v7 = [v5 stringByAppendingPathExtension:v6];

      v8 = [MEMORY[0x1E695DFF8] ui_incomingDirectory:1];
      v9 = [v8 URLByAppendingPathComponent:v7];
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v10 = objc_alloc_init(MEMORY[0x1E696ABF8]);
      v11 = *(a1 + 32);
      v27 = 0;
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_35;
      v23 = &unk_1E87836F8;
      v25 = &v28;
      v12 = v9;
      v24 = v12;
      v26 = &v35;
      [v10 coordinateReadingItemAtURL:v11 options:1 error:&v27 byAccessor:&v20];
      v13 = v27;
      [*(a1 + 32) stopAccessingSecurityScopedResource];
      if (v29[3])
      {
        (*(*(a1 + 56) + 16))();
        [v12 ui_scheduleForCleanup];
      }

      else
      {
        v18 = MEMORY[0x1E699A450];
        v19 = *MEMORY[0x1E699A450];
        if (!*MEMORY[0x1E699A450])
        {
          DOCInitLogging();
          v19 = *v18;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_cold_2();
        }

        (*(*(a1 + 56) + 16))();
      }

      _Block_object_dispose(&v28, 8);
    }

    else
    {
      v16 = MEMORY[0x1E699A450];
      v17 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v17 = *v16;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_cold_3();
      }

      (*(*(a1 + 56) + 16))();
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v14 = MEMORY[0x1E699A450];
    v15 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_35(void *a1, CFURLRef url)
{
  v3 = CGImageSourceCreateWithURL(url, 0);
  if (v3)
  {
    v4 = v3;
    v5 = a1[4];
    v6 = [*(*(a1[6] + 8) + 40) identifier];
    v7 = 1;
    v8 = CGImageDestinationCreateWithURL(v5, v6, 1uLL, 0);

    CGImageDestinationAddImageFromSource(v8, v4, 0, 0);
    CGImageDestinationFinalize(v8);
    CFRelease(v8);
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  *(*(a1[5] + 8) + 24) = v7;
}

- (void)copyURLToInbox:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(21, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__DOCItemBookmark_copyURLToInbox_completion___block_invoke;
  v10[3] = &unk_1E8782630;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __45__DOCItemBookmark_copyURLToInbox_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) startAccessingSecurityScopedResource])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v3 = objc_alloc_init(MEMORY[0x1E696ABF8]);
    v4 = [MEMORY[0x1E695DFF8] ui_incomingDirectory:1];
    v5 = [*(a1 + 32) lastPathComponent];
    v6 = [v4 URLByAppendingPathComponent:v5];

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__2;
    v25[4] = __Block_byref_object_dispose__2;
    v26 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v7 = *(a1 + 32);
    obj = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __45__DOCItemBookmark_copyURLToInbox_completion___block_invoke_2;
    v16 = &unk_1E8783748;
    v8 = v2;
    v17 = v8;
    v18 = &v21;
    v19 = v25;
    [v3 coordinateReadingItemAtURL:v7 options:1 writingItemAtURL:v6 options:8 error:&obj byAccessor:&v13];
    objc_storeStrong(&v26, obj);
    [*(a1 + 32) stopAccessingSecurityScopedResource];
    if (v22[3])
    {
      (*(*(a1 + 40) + 16))();
      [v6 ui_scheduleForCleanup];
    }

    else
    {
      v11 = MEMORY[0x1E699A450];
      v12 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __45__DOCItemBookmark_copyURLToInbox_completion___block_invoke_cold_2();
      }

      (*(*(a1 + 40) + 16))();
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(v25, 8);
  }

  else
  {
    v9 = MEMORY[0x1E699A450];
    v10 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __78__DOCItemBookmark_convertAndCopyURLToInbox_ofType_conversionRules_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __45__DOCItemBookmark_copyURLToInbox_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) removeItemAtURL:v6 error:0];
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 copyItemAtURL:v5 toURL:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v9;
  [v6 setResourceValue:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E695DBE0] error:0];
  v10 = 0;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v14 = 0;
    v11 = [MEMORY[0x1E697A0D8] associateThumbnailsForDocumentAtURL:v5 withImmutableDocument:0 atURL:v6 error:&v14];
    v10 = v14;
    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x1E699A450];
      v13 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v17 = v5;
        v18 = 2112;
        v19 = v6;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&dword_1E57D8000, v13, OS_LOG_TYPE_ERROR, "Failed to associate thumbnails for picked URL %@ with the Inbox copy %@: %@", buf, 0x20u);
      }
    }
  }
}

- (id)coordinatedFileURL
{
  p_wrapper = &self->_wrapper;
  wrapper = self->_wrapper;
  if (!wrapper)
  {
    [(DOCItemBookmark *)a2 coordinatedFileURL:p_wrapper];
    wrapper = v12;
  }

  v5 = [(FPSandboxingURLWrapper *)wrapper url];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  [v5 startAccessingSecurityScopedResource];
  v6 = objc_alloc_init(MEMORY[0x1E696ABF8]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__DOCItemBookmark_coordinatedFileURL__block_invoke;
  v10[3] = &unk_1E8783630;
  v10[4] = &v12;
  v11 = 0;
  [v6 coordinateReadingItemAtURL:v5 options:0 error:&v11 byAccessor:v10];
  v7 = v11;
  [v5 stopAccessingSecurityScopedResource];
  v8 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v8;
}

+ (id)documentsURLsForItemBookmarks:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) fileURL];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (DOCItemBookmark)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DOCItemBookmark;
  v5 = [(DOCItemBookmark *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentType"];
    contentType = v5->_contentType;
    v5->_contentType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_wrapper"];
    wrapper = v5->_wrapper;
    v5->_wrapper = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_node"];
    node = v5->_node;
    v5->_node = v14;

    if (!v5->_node)
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fileProviderItem"];
      v17 = v5->_node;
      v5->_node = v16;
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bookmarkableString"];
    bookmarkableString = v5->_bookmarkableString;
    v5->_bookmarkableString = v18;

    -[DOCItemBookmark setNeedsToBeImported:](v5, "setNeedsToBeImported:", [v4 decodeBoolForKey:@"_needsToBeImported"]);
    v20 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  if (self->_contentType)
  {
    v4 = [(DOCItemBookmark *)self contentType];
    [v8 encodeObject:v4 forKey:@"_contentType"];
  }

  wrapper = self->_wrapper;
  if (wrapper)
  {
    [v8 encodeObject:wrapper forKey:@"_wrapper"];
  }

  node = self->_node;
  if (node)
  {
    [v8 encodeObject:node forKey:@"_node"];
  }

  bookmarkableString = self->_bookmarkableString;
  if (bookmarkableString)
  {
    [v8 encodeObject:bookmarkableString forKey:@"_bookmarkableString"];
  }

  [v8 encodeBool:-[DOCItemBookmark needsToBeImported](self forKey:{"needsToBeImported"), @"_needsToBeImported"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = DOCItemBookmark;
  v4 = [(DOCItemBookmark *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ nosw=%@", v4, self->_node];

  return v5;
}

+ (BOOL)isAnyItemBookmarkAFault:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) node];
        if ([v7 isCloudItem])
        {
          v8 = [v7 isDownloaded];

          if ((v8 & 1) == 0)
          {
            LOBYTE(v4) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

LABEL_12:

  return v4;
}

+ (BOOL)isAnyNodeAFault:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isCloudItem] && !objc_msgSend(v7, "isDownloaded"))
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)prepareForMode:(uint64_t)a1 usingBookmark:(uint64_t)a2 shouldConvert:conversionRules:completionBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCItemBookmark.m" lineNumber:176 description:@"Trying to prepare a DOCItemBookmark in mode ImportCopy with a nil urls"];
}

void __94__DOCItemBookmark_prepareForMode_usingBookmark_shouldConvert_conversionRules_completionBlock___block_invoke_3_cold_2(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"DOCItemBookmark.m" lineNumber:151 description:@"Trying to prepare a DOCItemBookmark in mode ImportCopy with a nil urls"];
}

- (void)coordinatedFileURL
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"DOCItemBookmark.m" lineNumber:327 description:@"Trying to prepare a coordinatedFileURL with a nil wrapper"];

  *a4 = *a3;
}

@end