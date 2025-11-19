@interface DSArchiveService
- (DSArchiveServiceUnarchivingDelegate)unarchivingDelegate;
- (id)archiveItemsAtURLs:(id)a3 toURL:(id)a4 options:(unint64_t)a5 compressionFormat:(unint64_t)a6 passphrase:(id)a7 completionHandler:(id)a8;
- (id)archiveItemsWithURLs:(id)a3 compressionFormat:(unint64_t)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6;
- (id)archiveItemsWithURLs:(id)a3 passphrase:(id)a4 addToKeychain:(BOOL)a5 compressionFormat:(unint64_t)a6 destinationFolderURL:(id)a7 completionHandler:(id)a8;
- (id)unarchiveItemAtURL:(id)a3 passphrase:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6;
- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 acceptedFormats:(unint64_t)a6 completionHandler:(id)a7;
- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6;
- (id)unarchiveItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 acceptedFormats:(unint64_t)a6 passphrases:(id)a7 completionHandler:(id)a8;
- (void)itemDescriptorsForItemAtURL:(id)a3 passphrase:(id)a4 completionHandler:(id)a5;
- (void)itemDescriptorsForItemAtURL:(id)a3 passphrases:(id)a4 completionHandler:(id)a5;
- (void)receiveArchivedItemsDescriptors:(id)a3 placeholderName:(id)a4 placeholderTypeIdentifier:(id)a5;
@end

@implementation DSArchiveService

- (void)itemDescriptorsForItemAtURL:(id)a3 passphrase:(id)a4 completionHandler:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v13[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  [(DSArchiveService *)self itemDescriptorsForItemAtURL:v8 passphrases:v11 completionHandler:v10];
  if (v9)
  {
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)itemDescriptorsForItemAtURL:(id)a3 passphrases:(id)a4 completionHandler:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = archiveServiceConnection(0);
  [v10 resume];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__DSArchiveService_itemDescriptorsForItemAtURL_passphrases_completionHandler___block_invoke;
  v21[3] = &unk_1E877EB60;
  v11 = v9;
  v23 = v11;
  v12 = v10;
  v22 = v12;
  v13 = [v12 remoteObjectProxyWithErrorHandler:v21];
  if (v7)
  {
    v14 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v7 readonly:1];
    if (v14)
    {
      [v13 itemDescriptorsForItemWithURLWrapper:v14 passphrases:v8 completionHandler:v11];
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A998];
      v25[0] = v7;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v18 = [v16 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v17];

      (*(v11 + 2))(v11, 0, v18);
      [v12 invalidate];
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v15 = LogObj(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "itemDescriptorsForItemAtURL: url is nil", v20, 2u);
    }

    (*(v11 + 2))(v11, 0, v14);
    [v12 invalidate];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __78__DSArchiveService_itemDescriptorsForItemAtURL_passphrases_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

- (id)archiveItemsAtURLs:(id)a3 toURL:(id)a4 options:(unint64_t)a5 compressionFormat:(unint64_t)a6 passphrase:(id)a7 completionHandler:(id)a8
{
  v75[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v53 = a7;
  v13 = a8;
  v54 = v11;
  v14 = [v11 count];
  if (v12 && v14)
  {
    v67 = 0;
    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v16 = [v12 path];
    v17 = [v15 fileExistsAtPath:v16 isDirectory:&v67];
    v18 = v67;

    if (v17 & v18)
    {
      v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v54, "count")}];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v20 = v54;
      v21 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v21)
      {
        v22 = *v64;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v64 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v63 + 1) + 8 * i);
            v25 = objc_opt_class();
            v62 = 0;
            v26 = [v25 wrapperWithURL:v24 readonly:1 error:&v62];
            v27 = v62;
            if (!v26)
            {
              v42 = LogObj(0);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v73 = v27;
                _os_log_impl(&dword_1E5674000, v42, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: Couldn't get url wrapper: %@", buf, 0xCu);
              }

              v13[2](v13, 0, v27);
              goto LABEL_29;
            }

            [v19 addObject:v26];
          }

          v21 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v20 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v12 readonly:0];
      if (v20)
      {
        v48 = archiveServiceConnection(0);
        [v48 resume];
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke;
        v59[3] = &unk_1E877EB60;
        v28 = v13;
        v61 = v28;
        v29 = v48;
        v60 = v29;
        v50 = [v29 remoteObjectProxyWithErrorHandler:v59];
        v49 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.ArchiveService" name:@"BackgroundArchive"];
        v30 = objc_alloc(MEMORY[0x1E69C7548]);
        v31 = [MEMORY[0x1E69C7640] currentProcess];
        v68 = v49;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
        v33 = [v30 initWithExplanation:@"ArchiveServices archive operation" target:v31 attributes:v32];

        [v33 acquireWithInvalidationHandler:&__block_literal_global];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke_60;
        v55[3] = &unk_1E877EBA8;
        v58 = v28;
        v34 = v33;
        v56 = v34;
        v27 = v29;
        v57 = v27;
        v35 = [v50 archiveItemsWithURLWrappers:v19 toURLWrapper:v20 options:a5 compressionFormat:a6 passphrase:v53 completionHandler:v55];
      }

      else
      {
        v45 = MEMORY[0x1E696ABC0];
        v69 = *MEMORY[0x1E696A998];
        v70 = v12;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v27 = [v45 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v46];

        v47 = LogObj(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v73 = v27;
          _os_log_impl(&dword_1E5674000, v47, OS_LOG_TYPE_ERROR, "archiveItemsAtURLs: Couldn't get url wrapper for destination: %@", buf, 0xCu);
        }

        v13[2](v13, 0, v27);
LABEL_29:
        v35 = 0;
      }
    }

    else
    {
      v39 = MEMORY[0x1E696ABC0];
      v74 = *MEMORY[0x1E696A998];
      v75[0] = v12;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];
      v19 = [v39 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v40];

      v41 = LogObj(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = v19;
        _os_log_impl(&dword_1E5674000, v41, OS_LOG_TYPE_ERROR, "archiveItemsAtURLs: destination doesn't exist or isn't a directory: %@", buf, 0xCu);
      }

      v35 = 0;
      v13[2](v13, 0, v19);
    }
  }

  else
  {
    v36 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    if (![v11 count])
    {
      v37 = LogObj(0);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v37, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: no urls", buf, 2u);
      }
    }

    if (!v12)
    {
      v38 = LogObj(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: destination is nil", buf, 2u);
      }
    }

    v13[2](v13, 0, v36);

    v35 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];

  return v35;
}

void __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Archive Service archive assertion invalidated with error: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __100__DSArchiveService_archiveItemsAtURLs_toURL_options_compressionFormat_passphrase_completionHandler___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
}

- (id)unarchiveItemAtURL:(id)a3 toURL:(id)a4 options:(unint64_t)a5 acceptedFormats:(unint64_t)a6 passphrases:(id)a7 completionHandler:(id)a8
{
  v74[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v56 = a7;
  v15 = a8;
  v16 = [(DSArchiveService *)self unarchivingDelegate];

  if (v16)
  {
    v17 = a5 | 0x100000;
  }

  else
  {
    v17 = a5;
  }

  if (v13 && v14)
  {
    v67 = 0;
    v18 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = [v14 path];
    v20 = [v18 fileExistsAtPath:v19 isDirectory:&v67];
    v21 = v67;

    if (v20 & v21)
    {
      v66 = 0;
      v22 = [objc_opt_class() wrapperWithURL:v13 readonly:0 error:&v66];
      v23 = v66;
      v24 = v23;
      v54 = v22;
      if (v22)
      {
        v52 = v23;
LABEL_23:
        v53 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v14 readonly:0];
        if (v53)
        {
          if (v16)
          {
            v34 = self;
          }

          else
          {
            v34 = 0;
          }

          v35 = archiveServiceConnection(v34);
          [v35 resume];
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke;
          v62[3] = &unk_1E877EB60;
          v36 = v15;
          v64 = v36;
          v37 = v35;
          v63 = v37;
          v50 = [v37 remoteObjectProxyWithErrorHandler:v62];
          v51 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.ArchiveService" name:@"BackgroundArchive"];
          v38 = objc_alloc(MEMORY[0x1E69C7548]);
          v39 = [MEMORY[0x1E69C7640] currentProcess];
          v68 = v51;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
          v41 = [v38 initWithExplanation:@"ArchiveServices unarchive operation" target:v39 attributes:v40];

          [v41 acquireWithInvalidationHandler:&__block_literal_global_66];
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke_67;
          v57[3] = &unk_1E877EBD0;
          v58 = v13;
          v61 = v36;
          v42 = v41;
          v59 = v42;
          v43 = v37;
          v60 = v43;
          v28 = [v50 unarchiveItemWithURLWrapper:v54 toURLWrapper:v53 options:v17 passphrases:v56 acceptedFormats:a6 completionHandler:v57];
        }

        else
        {
          v44 = MEMORY[0x1E696ABC0];
          v69 = *MEMORY[0x1E696A998];
          v70 = v14;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v43 = [v44 errorWithDomain:*MEMORY[0x1E696A250] code:257 userInfo:v45];

          v46 = LogObj(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v72 = v43;
            _os_log_impl(&dword_1E5674000, v46, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for destination: %@", buf, 0xCu);
          }

          v28 = 0;
          (*(v15 + 2))(v15, 0, v43);
        }

        v33 = v52;
        goto LABEL_32;
      }

      v65 = v23;
      v54 = [objc_opt_class() wrapperWithURL:v13 readonly:1 error:&v65];
      v52 = v65;

      if (v54)
      {
        goto LABEL_23;
      }

      v49 = LogObj(0);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v52;
        _os_log_impl(&dword_1E5674000, v49, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: Couldn't get url wrapper for item: %@", buf, 0xCu);
      }

      v33 = v52;
      (*(v15 + 2))(v15, 0, v52);
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v73 = *MEMORY[0x1E696A998];
      v74[0] = v14;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
      v31 = [v29 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v30];

      v32 = LogObj(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = v31;
        _os_log_impl(&dword_1E5674000, v32, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: destination doesn't exist or isn't a directory: %@", buf, 0xCu);
      }

      v33 = v31;
      (*(v15 + 2))(v15, 0, v31);
    }

    v28 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  if (!v13)
  {
    v26 = LogObj(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: url is nil", buf, 2u);
    }
  }

  if (!v14)
  {
    v27 = LogObj(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v27, OS_LOG_TYPE_ERROR, "unarchiveItemAtURL: destination is nil", buf, 2u);
    }
  }

  (*(v15 + 2))(v15, 0, v25);

  v28 = 0;
LABEL_33:

  v47 = *MEMORY[0x1E69E9840];

  return v28;
}

void __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = LogObj(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Archive Service unarchive assertion invalidated with error: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __99__DSArchiveService_unarchiveItemAtURL_toURL_options_acceptedFormats_passphrases_completionHandler___block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"com.apple.desktopservices.ArchiveService"])
  {
    v8 = [v6 code];

    if (v8 == -1000)
    {
      v9 = MEMORY[0x1E695DF90];
      v10 = [v6 userInfo];
      v11 = [v9 dictionaryWithDictionary:v10];

      TCFURLInfo::LocalizedStringWithFileName(@"ArchiveEnterPassword", *(a1 + 32), &v15);
      [v11 setObject:v15.fString.fRef forKeyedSubscript:*MEMORY[0x1E696A598]];
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
      v12 = MEMORY[0x1E696ABC0];
      v13 = [v6 domain];
      v14 = [v12 errorWithDomain:v13 code:objc_msgSend(v6 userInfo:{"code"), v11}];

      v6 = v14;
    }
  }

  else
  {
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) invalidate];
  [*(a1 + 48) invalidate];
}

- (id)archiveItemsWithURLs:(id)a3 compressionFormat:(unint64_t)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6
{
  v6 = [(DSArchiveService *)self archiveItemsWithURLs:a3 passphrase:0 addToKeychain:0 compressionFormat:a4 destinationFolderURL:a5 completionHandler:a6];

  return v6;
}

- (id)archiveItemsWithURLs:(id)a3 passphrase:(id)a4 addToKeychain:(BOOL)a5 compressionFormat:(unint64_t)a6 destinationFolderURL:(id)a7 completionHandler:(id)a8
{
  v11 = a5;
  v53 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v35 = a4;
  v37 = a7;
  v34 = a8;
  v33 = archiveServiceConnection(0);
  [v33 resume];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke;
  v47[3] = &unk_1E877EB60;
  v13 = v34;
  v49 = v13;
  v14 = v33;
  v48 = v14;
  v36 = [v14 remoteObjectProxyWithErrorHandler:v47];
  v15 = [v38 count];
  if (v37 && v15)
  {
    v31 = v11;
    v32 = a6;
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v38, "count")}];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = v38;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v18)
    {
      v19 = *v44;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          v22 = objc_opt_class();
          v42 = 0;
          v23 = [v22 wrapperWithURL:v21 readonly:1 error:&v42];
          v24 = v42;
          if (!v23)
          {
            v28 = LogObj(0);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v51 = v24;
              _os_log_impl(&dword_1E5674000, v28, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: Couldn't get url wrapper: %@", buf, 0xCu);
            }

            (*(v13 + 2))(v13, 0, 0, v24);
            [v14 invalidate];
            v25 = 0;
            goto LABEL_24;
          }

          [v16 addObject:v23];
        }

        v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v17 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:v37 readonly:0];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke_72;
    v39[3] = &unk_1E877EBF8;
    v41 = v13;
    v40 = v14;
    v25 = [v36 archiveItemsWithURLWrappers:v16 passphrase:v35 addToKeychain:v31 compressionFormat:v32 destinationFolderURLWrapper:v17 usePlaceholder:0 completionHandler:v39];

    v24 = v41;
LABEL_24:
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    if (![v38 count])
    {
      v26 = LogObj(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v26, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: no urls", buf, 2u);
      }
    }

    if (!v37)
    {
      v27 = LogObj(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E5674000, v27, OS_LOG_TYPE_ERROR, "archiveItemsWithURLs: destination is nil", buf, 2u);
      }
    }

    (*(v13 + 2))(v13, 0, 0, v16);
    [v14 invalidate];
    v25 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v25;
}

void __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __123__DSArchiveService_archiveItemsWithURLs_passphrase_addToKeychain_compressionFormat_destinationFolderURL_completionHandler___block_invoke_72(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  v10 = [v11 url];
  (*(v9 + 16))(v9, v10, v7, v8);

  [*(a1 + 32) invalidate];
}

- (id)unarchiveItemAtURL:(id)a3 passphrase:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v18[0] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(DSArchiveService *)self unarchiveItemAtURL:v10 passphrases:v14 addToKeychain:0 destinationFolderURL:v12 acceptedFormats:1 completionHandler:v13];
  if (v11)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 completionHandler:(id)a6
{
  v6 = [(DSArchiveService *)self unarchiveItemAtURL:a3 passphrases:a4 addToKeychain:0 destinationFolderURL:a5 acceptedFormats:1 completionHandler:a6];

  return v6;
}

- (id)unarchiveItemAtURL:(id)a3 passphrases:(id)a4 destinationFolderURL:(id)a5 acceptedFormats:(unint64_t)a6 completionHandler:(id)a7
{
  v7 = [(DSArchiveService *)self unarchiveItemAtURL:a3 passphrases:a4 addToKeychain:0 destinationFolderURL:a5 acceptedFormats:a6 completionHandler:a7];

  return v7;
}

void __120__DSArchiveService_unarchiveItemAtURL_passphrases_addToKeychain_destinationFolderURL_acceptedFormats_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __120__DSArchiveService_unarchiveItemAtURL_passphrases_addToKeychain_destinationFolderURL_acceptedFormats_completionHandler___block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if ([v7 isEqualToString:@"com.apple.desktopservices.ArchiveService"])
  {
    v8 = [v6 code];

    if (v8 == -1000)
    {
      v9 = MEMORY[0x1E695DF90];
      v10 = [v6 userInfo];
      v11 = [v9 dictionaryWithDictionary:v10];

      TCFURLInfo::LocalizedStringWithFileName(@"ArchiveEnterPassword", *(a1 + 32), &v16);
      [v11 setObject:v16.fString.fRef forKeyedSubscript:*MEMORY[0x1E696A598]];
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
      v12 = MEMORY[0x1E696ABC0];
      v13 = [v6 domain];
      v14 = [v12 errorWithDomain:v13 code:objc_msgSend(v6 userInfo:{"code"), v11}];

      v6 = v14;
    }
  }

  else
  {
  }

  v15 = [v5 url];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];
}

- (void)receiveArchivedItemsDescriptors:(id)a3 placeholderName:(id)a4 placeholderTypeIdentifier:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(DSArchiveService *)self unarchivingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 service:self didReceiveArchivedItemsDescriptors:v11 placeholderName:v8 placeholderTypeIdentifier:v9];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v10 service:self didReceiveArchivedItemsDescriptors:v11];
  }
}

- (DSArchiveServiceUnarchivingDelegate)unarchivingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unarchivingDelegate);

  return WeakRetained;
}

@end