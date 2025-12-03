@interface FPDVersionsFileCoordinationProviderDelegate
- (FPDVersionsFileCoordinationProviderDelegate)initWithExtensionManager:(id)manager;
- (id)_physicalURLForURL:(id)l;
- (id)_providedItemsOperationQueue;
- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
@end

@implementation FPDVersionsFileCoordinationProviderDelegate

- (FPDVersionsFileCoordinationProviderDelegate)initWithExtensionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FPDVersionsFileCoordinationProviderDelegate;
  v6 = [(FPDVersionsFileCoordinationProviderDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionManager, manager);
  }

  return v7;
}

- (id)_providedItemsOperationQueue
{
  if (_providedItemsOperationQueue_onceToken != -1)
  {
    [FPDVersionsFileCoordinationProviderDelegate _providedItemsOperationQueue];
  }

  v3 = _providedItemsOperationQueue_operationQueue;

  return v3;
}

uint64_t __75__FPDVersionsFileCoordinationProviderDelegate__providedItemsOperationQueue__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _providedItemsOperationQueue_operationQueue;
  _providedItemsOperationQueue_operationQueue = v0;

  [_providedItemsOperationQueue_operationQueue setMaxConcurrentOperationCount:1];
  v2 = _providedItemsOperationQueue_operationQueue;

  return [v2 setName:@"com.apple.FileProvider.Versions"];
}

- (id)_physicalURLForURL:(id)l
{
  v43 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDVersionsFileCoordinationProviderDelegate _physicalURLForURL:];
  }

  v40 = 0;
  v41 = 0;
  v39 = 0;
  v6 = [MEMORY[0x1E6967340] parseInfoFromVersionURL:lCopy domainIdentifier:&v41 fpItemIdentifier:&v40 etag:&v39];
  v7 = v41;
  v8 = v40;
  v9 = v39;
  v10 = v9;
  if (v7 && v8)
  {
    v33 = v9;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    selfCopy = self;
    providerDomainsByID = [(FPDExtensionManager *)self->_extensionManager providerDomainsByID];
    allKeys = [providerDomainsByID allKeys];

    v14 = [allKeys countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
LABEL_7:
      v17 = 0;
      while (1)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        fp_toDomainIdentifier = [v18 fp_toDomainIdentifier];
        if ([fp_toDomainIdentifier isEqualToString:v7])
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [allKeys countByEnumeratingWithState:&v35 objects:v42 count:16];
          if (v15)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      v21 = [(FPDExtensionManager *)selfCopy->_extensionManager domainWithID:v18 reason:0];

      if (!v21)
      {
        goto LABEL_19;
      }

      versionsCache = [v21 versionsCache];
      v10 = v33;
      v23 = [versionsCache objectForKey:v33];

      if (v23)
      {
        manager = [MEMORY[0x1E69A07C0] manager];
        originalURL = [v23 originalURL];
        v34 = 0;
        v26 = [manager permanentStorageForItemAtURL:originalURL allocateIfNone:1 error:&v34];
        v32 = v34;

        if (v26)
        {
          physicalURL = [v23 physicalURL];
        }

        else
        {
          v29 = fp_current_or_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [FPDVersionsFileCoordinationProviderDelegate _physicalURLForURL:];
          }

          physicalURL = lCopy;
        }

        v20 = physicalURL;
      }

      else
      {
        v28 = fp_current_or_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          [FPDVersionsFileCoordinationProviderDelegate _physicalURLForURL:];
        }

        v20 = lCopy;
      }
    }

    else
    {
LABEL_13:

LABEL_19:
      v20 = lCopy;
      v10 = v33;
    }
  }

  else
  {
    v20 = lCopy;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v69 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  readerID = [infoCopy readerID];
  [MEMORY[0x1E696ABF8] _processIdentifierForID:readerID];
  if (readerID)
  {
    v9 = [MEMORY[0x1E696ABF8] _processIdentifierForID:readerID];
  }

  else
  {
    v9 = 0;
  }

  if (infoCopy)
  {
    [infoCopy readerAuditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  kernelMaterializationInfo = [infoCopy kernelMaterializationInfo];
  fileMaterializationInfo = [kernelMaterializationInfo fileMaterializationInfo];
  v41 = [FPDRequest requestForPID:v9 auditToken:buf fromPOSIX:0 kernelFileInfo:fileMaterializationInfo];

  if (v41)
  {
    v12 = MEMORY[0x1E696AEC0];
    processName = [v41 processName];
    v39 = [v12 stringWithFormat:@"%@ (on behalf of %@)", 0, processName];
  }

  else
  {
    v39 = 0;
  }

  section = __fp_create_section();
  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    *buf = 134219010;
    *&buf[4] = section;
    *&buf[12] = 2112;
    *&buf[14] = self;
    *&buf[22] = 2112;
    *&buf[24] = fp_shortDescription;
    v65 = 2112;
    v66 = v39;
    v67 = 2114;
    v68 = readerID;
    _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx ⭕️ NSFileCoordinator requested %@ to provide item version at %@ (consumer: %@, readerID: %{public}@)", buf, 0x34u);
  }

  v60 = 0;
  v61 = 0;
  v59 = 0;
  v38 = [MEMORY[0x1E6967340] parseInfoFromVersionURL:lCopy domainIdentifier:&v61 fpItemIdentifier:&v60 etag:&v59];
  v16 = v61;
  v17 = v60;
  v36 = v59;
  if (v16 && v17)
  {
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v55 = 0u;
    providerDomainsByID = [(FPDExtensionManager *)self->_extensionManager providerDomainsByID];
    allKeys = [providerDomainsByID allKeys];

    v20 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v20)
    {
      v21 = *v56;
LABEL_16:
      v22 = 0;
      while (1)
      {
        if (*v56 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v55 + 1) + 8 * v22);
        fp_toDomainIdentifier = [v23 fp_toDomainIdentifier];
        if ([fp_toDomainIdentifier isEqualToString:v16])
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [allKeys countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v20)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v27 = [(FPDExtensionManager *)self->_extensionManager domainWithID:v23 reason:0];

      if (!v27)
      {
        goto LABEL_28;
      }

      v28 = [objc_alloc(MEMORY[0x1E69673A0]) initWithProviderDomainID:v16 itemIdentifier:v17];
      defaultBackend = [v27 defaultBackend];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke;
      v43[3] = &unk_1E83BED90;
      v44 = lCopy;
      v45 = v39;
      v46 = readerID;
      v53 = handlerCopy;
      v30 = v27;
      v47 = v30;
      v31 = v28;
      v48 = v31;
      v49 = v36;
      v50 = v41;
      v54 = a2;
      v51 = v17;
      selfCopy = self;
      [defaultBackend URLForItemID:v31 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v50 completionHandler:v43];
    }

    else
    {
LABEL_22:

LABEL_28:
      v32 = MEMORY[0x1E696AC28];
      v30 = FPProviderNotFoundErrorForURL();
      v31 = [v32 responseWithError:v30];
      (*(handlerCopy + 2))(handlerCopy, v31);
    }
  }

  else
  {
    if ([v38 isEqual:*MEMORY[0x1E69A07A8]])
    {
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        fp_shortDescription2 = [lCopy fp_shortDescription];
        [FPDVersionsFileCoordinationProviderDelegate _provideItemAtURL:fp_shortDescription2 withInfo:readerID completionHandler:buf];
      }
    }

    else
    {
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        fp_shortDescription3 = [lCopy fp_shortDescription];
        [FPDVersionsFileCoordinationProviderDelegate _provideItemAtURL:fp_shortDescription3 withInfo:readerID completionHandler:buf];
      }
    }

    v30 = [MEMORY[0x1E696AC28] responseWithError:0];
    (*(handlerCopy + 2))(handlerCopy, v30);
  }

  __fp_leave_section_Notice();
  v34 = *MEMORY[0x1E69E9840];
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v24 = *(a1 + 104);
    v25 = [MEMORY[0x1E696AC28] responseWithError:v7];
    (*(v24 + 16))(v24, v25);

    goto LABEL_10;
  }

  v10 = [v8 url];
  v11 = [MEMORY[0x1E69A07C0] manager];
  v45 = 0;
  v12 = [v11 permanentStorageForItemAtURL:v10 allocateIfNone:0 error:&v45];
  v13 = v45;

  if (!v12)
  {
LABEL_9:

    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    v29 = *(a1 + 80);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_15;
    v33[3] = &unk_1E83BED68;
    v34 = v28;
    v35 = *(a1 + 64);
    v36 = *(a1 + 48);
    v42 = *(a1 + 104);
    v37 = *(a1 + 32);
    v38 = *(a1 + 56);
    v30 = *(a1 + 88);
    v43 = *(a1 + 112);
    v31 = *(a1 + 96);
    v39 = v30;
    v40 = v31;
    v41 = *(a1 + 40);
    [v26 downloadVersionWithItemID:v27 etag:v34 request:v29 completionHandler:v33];

    goto LABEL_10;
  }

  v14 = [*(a1 + 32) lastPathComponent];
  v15 = *MEMORY[0x1E69A0798];
  v44 = v13;
  v16 = [v12 additionWithName:v14 inNameSpace:v15 error:&v44];
  v17 = v44;

  if (!v16)
  {
    v13 = v17;
    goto LABEL_9;
  }

  v18 = fp_current_or_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(a1 + 32) fp_shortDescription];
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    *buf = 138412802;
    v47 = v19;
    v48 = 2112;
    v49 = v20;
    v50 = 2114;
    v51 = v21;
    _os_log_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEFAULT, "[NOTICE] ✅ NSFileCoordinator: item exist on disk %@ (consumer: %@, readerID: %{public}@)", buf, 0x20u);
  }

  v22 = *(a1 + 104);
  v23 = [MEMORY[0x1E696AC28] responseWithError:0];
  (*(v22 + 16))(v22, v23);

LABEL_10:
  v32 = *MEMORY[0x1E69E9840];
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_15(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v77[7] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v55 = v9;
    v13 = objc_opt_new();
    v14 = [v10 lastEditorDeviceName];

    if (v14)
    {
      v15 = [v10 lastEditorDeviceName];
      [v13 setObject:v15 forKeyedSubscript:@"fpVersionLastEditorDeviceName"];
    }

    v54 = v12;
    v16 = [v10 lastEditorNameComponents];

    if (v16)
    {
      v17 = MEMORY[0x1E696ACC8];
      v18 = [v10 lastEditorNameComponents];
      v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
      [v13 setObject:v19 forKeyedSubscript:@"fpVersionLastEditorNameComponents"];
    }

    v76[0] = *MEMORY[0x1E69A0788];
    v20 = [v10 originalURL];
    v21 = [v20 lastPathComponent];
    v77[0] = v21;
    v76[1] = *MEMORY[0x1E69A0758];
    v22 = [v10 displayName];
    v23 = *MEMORY[0x1E69A0770];
    v24 = *MEMORY[0x1E69A0798];
    v77[1] = v22;
    v77[2] = v24;
    v25 = *MEMORY[0x1E69A0768];
    v76[2] = v23;
    v76[3] = v25;
    v26 = [*(a1 + 56) lastPathComponent];
    v27 = *MEMORY[0x1E69A0780];
    v77[3] = v26;
    v77[4] = &unk_1F4C629B8;
    v28 = *MEMORY[0x1E69A0778];
    v76[4] = v27;
    v76[5] = v28;
    v76[6] = *MEMORY[0x1E69A0790];
    v77[5] = &unk_1F4C629D0;
    v77[6] = v13;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:7];

    v30 = [MEMORY[0x1E69A07C0] manager];
    v31 = [v10 originalURL];
    v69 = 0;
    v32 = [v30 permanentStorageForItemAtURL:v31 allocateIfNone:1 error:&v69];
    v33 = v69;

    if (v32)
    {
      v52 = v33;
      v68 = 0;
      [v32 prepareAdditionCreationWithItemAtURL:v11 byMoving:0 creationInfo:v29 error:&v68];
      v35 = v34 = v11;
      v36 = v68;
      v53 = v29;
      if (v36)
      {
        v37 = v34;
        v38 = fp_current_or_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v49 = *(a1 + 48);
          *buf = 138412802;
          v71 = v34;
          v72 = 2112;
          v73 = v36;
          v74 = 2114;
          v75 = v49;
          _os_log_error_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_ERROR, "[ERROR] ❌ NSFileCoordinator: Failed to prepare addition for item version %@: %@ (readerID: %{public}@)", buf, 0x20u);
        }

        v39 = *(a1 + 96);
        v40 = [MEMORY[0x1E696AC28] responseWithError:v36];
        (*(v39 + 16))(v39, v40);
      }

      else
      {
        v51 = *(a1 + 64);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_28;
        v56[3] = &unk_1E83BED40;
        v57 = v10;
        v58 = *(a1 + 48);
        v59 = v35;
        v60 = *(a1 + 72);
        v61 = v32;
        v62 = v29;
        v45 = *(a1 + 56);
        v46 = *(a1 + 80);
        v63 = v45;
        v64 = v46;
        v50 = *(a1 + 96);
        v47 = v50;
        v67 = v50;
        v65 = *(a1 + 88);
        v37 = v34;
        v66 = v34;
        [v51 downloadVersionThumbnail:v55 version:v57 completionHandler:v56];

        v40 = v57;
      }

      v33 = v52;

      v11 = v37;
      v29 = v53;
    }

    else
    {
      v43 = fp_current_or_default_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_15_cold_1(v10, a1);
      }

      v44 = *(a1 + 96);
      v36 = [MEMORY[0x1E696AC28] responseWithError:v33];
      (*(v44 + 16))(v44, v36);
    }

    v12 = v54;
    v9 = v55;
  }

  else
  {
    v41 = fp_current_or_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_15_cold_2();
    }

    v42 = *(a1 + 96);
    v13 = [MEMORY[0x1E696AC28] responseWithError:v12];
    (*(v42 + 16))(v42, v13);
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && !v9)
  {
    v11 = *(a1 + 48);
    v12 = [v7 url];
    v48 = 0;
    v13 = [v11 fp_associateThumbnailToVersionAtURL:v12 thumbnailMetadata:v8 error:&v48];
    v14 = v48;

    v15 = fp_current_or_default_log();
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 48) fp_shortDescription];
        v18 = *(a1 + 56);
        v19 = *(a1 + 32);
        v20 = *(a1 + 40);
        *buf = 138544130;
        v50 = v17;
        v51 = 2112;
        v52 = v18;
        v53 = 2112;
        v54 = v19;
        v55 = 2114;
        v56 = v20;
        _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_INFO, "[INFO] Associated thumbnail data for %{public}@ for identifier: %@, version: %@ (readerID: %{public}@)", buf, 0x2Au);
      }

      v21 = MEMORY[0x1E696AEC0];
      v22 = [*(a1 + 48) path];
      v23 = [v21 stringWithFormat:@"com.apple.fileprovider.thumbnail-available.%@", v22];
      v16 = [v23 fp_libnotifyPerUserNotificationName];

      notify_post([v16 UTF8String]);
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 48);
      v32 = *(a1 + 56);
      v37 = v32;
      v38 = *(a1 + 32);
      v34 = [v7 url];
      v35 = [v14 fp_prettyDescription];
      v36 = *(a1 + 40);
      *buf = 138413570;
      v50 = v33;
      v51 = 2112;
      v52 = v37;
      v53 = 2112;
      v54 = v38;
      v55 = 2112;
      v56 = v34;
      v57 = 2114;
      v58 = v35;
      v59 = 2114;
      v60 = v36;
      _os_log_error_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_ERROR, "[ERROR] Failed to associate thumbnail data to promised URL %@ for identifier: %@, version: %@, thumbnailDataURL: %@, error: %{public}@ (readerID: %{public}@)", buf, 0x3Eu);
    }

    goto LABEL_11;
  }

  v14 = fp_current_or_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 32);
    v16 = [v10 fp_prettyDescription];
    v25 = *(a1 + 40);
    *buf = 138412802;
    v50 = v24;
    v51 = 2114;
    v52 = v16;
    v53 = 2114;
    v54 = v25;
    _os_log_impl(&dword_1CEFC7000, v14, OS_LOG_TYPE_INFO, "[INFO] failed to download thumbnail for version %@: %{public}@ (readerID: %{public}@)", buf, 0x20u);
LABEL_11:
  }

  v26 = *(a1 + 48);
  v28 = *(a1 + 64);
  v27 = *(a1 + 72);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_32;
  v39[3] = &unk_1E83BED18;
  v29 = *(a1 + 80);
  v47 = *(a1 + 120);
  v30 = *(a1 + 88);
  v40 = v29;
  v41 = v30;
  v42 = *(a1 + 48);
  v43 = *(a1 + 40);
  v46 = *(a1 + 112);
  v44 = *(a1 + 96);
  v45 = *(a1 + 104);
  [v28 createAdditionStagedAtURL:v26 creationInfo:v27 completionHandler:v39];

  v31 = *MEMORY[0x1E69E9840];
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 url];
  v8 = [v7 path];
  v9 = [*(a1 + 32) path];
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_32_cold_1();
  }

  v11 = fp_current_or_default_log();
  v12 = v11;
  if (v6)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_32_cold_2();
    }

    v13 = *(a1 + 80);
    v14 = MEMORY[0x1E696AC28];
    v15 = v6;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 32) fp_shortDescription];
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      v25 = 138412802;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEFAULT, "[NOTICE] ✅ NSFileCoordinator: providing item version at %@ (consumer: %@, readerID: %{public}@)", &v25, 0x20u);
    }

    v19 = MEMORY[0x1E696ABF8];
    v20 = *(a1 + 72);
    v21 = *MEMORY[0x1E69A0798];
    v22 = [v5 name];
    [v19 __itemAtURL:v20 didGainVersionWithClientID:v21 name:v22 purposeID:0];

    v13 = *(a1 + 80);
    v14 = MEMORY[0x1E696AC28];
    v15 = 0;
  }

  v23 = [v14 responseWithError:v15];
  (*(v13 + 16))(v13, v23);

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696AC10];
  handlerCopy = handler;
  providingRequiredResponse = [v6 providingRequiredResponse];
  (*(handler + 2))(handlerCopy, providingRequiredResponse);
}

- (void)_physicalURLForURL:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_4(&dword_1CEFC7000, v0, v1, "[DEBUG] %@ called for %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_physicalURLForURL:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_4(&dword_1CEFC7000, v0, v1, "[DEBUG] %@ failed to find storage for %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_physicalURLForURL:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_4(&dword_1CEFC7000, v0, v1, "[DEBUG] %@ failed to find version for %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_provideItemAtURL:(void *)a1 withInfo:(uint64_t)a2 completionHandler:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_3(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ❌ NSFileCoordinator: Item URL %@ could not be parsed (readerID: %{public}@)", v4, 0x16u);
}

- (void)_provideItemAtURL:(void *)a1 withInfo:(uint64_t)a2 completionHandler:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_3(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ⛔️ NSFileCoordinator: Item URL %@ belongs to a conflict version and should already be present (readerID: %{public}@)", v4, 0x16u);
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_15_cold_1(void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a1 originalURL];
  v10 = [v3 fp_shortDescription];
  v11 = *(a2 + 48);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_15_cold_2()
{
  OUTLINED_FUNCTION_3_3();
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = [0 originalURL];
  v11 = [v4 fp_shortDescription];
  v12 = *(v0 + 48);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);

  v10 = *MEMORY[0x1E69E9840];
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_32_cold_1()
{
  OUTLINED_FUNCTION_3_3();
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = *(v2 + 88);
  v4 = *(v2 + 40);
  v5 = [v1 url];
  v6 = [v5 fp_shortDescription];
  v7 = [*v0 fp_shortDescription];
  v8 = [*(v2 + 48) fp_shortDescription];
  [v9 handleFailureInMethod:v3 object:v4 file:@"FPDVersionsFileCoordinationProviderDelegate.m" lineNumber:244 description:{@"Result URL %@ differs from requested URL %@ (staged was %@)", v6, v7, v8}];
}

void __92__FPDVersionsFileCoordinationProviderDelegate__provideItemAtURL_withInfo_completionHandler___block_invoke_32_cold_2()
{
  OUTLINED_FUNCTION_3_3();
  v10 = *MEMORY[0x1E69E9840];
  v8 = [*(v1 + 48) fp_shortDescription];
  v9 = *(v0 + 56);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end