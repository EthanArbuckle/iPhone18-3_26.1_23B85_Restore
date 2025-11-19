@interface MFAttachmentComposeManager
- (BOOL)updateAttachment:(id)a3 withNewData:(id)a4;
- (MFAttachmentComposeManager)init;
- (id)_composeAttachmentDataProviderForContext:(id)a3;
- (id)_contentIDWithoutBracket:(id)a3;
- (id)_fetchDataForAttachment:(id)a3 withProvider:(id)a4 request:(id)a5 syncLock:(id *)a6;
- (id)_providerForURL:(id)a3;
- (id)_queueForAttachment:(id)a3;
- (id)attachmentForCID:(id)a3;
- (id)attachmentForData:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7;
- (id)attachmentForItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7;
- (id)attachmentsForContext:(id)a3;
- (void)_callProgressBlockForAttachmentURL:(id)a3 withBytes:(int64_t)a4 expectedSize:(int64_t)a5;
- (void)loadAttachmentURL:(id)a3 forContextID:(id)a4;
- (void)removeAllAttachments;
- (void)removeAttachmentForURL:(id)a3;
@end

@implementation MFAttachmentComposeManager

- (MFAttachmentComposeManager)init
{
  v6.receiver = self;
  v6.super_class = MFAttachmentComposeManager;
  v2 = [(MFAttachmentManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mail.attachmentComposeManagerAttachmentURLArray", 0);
    composeAttachmentsQueue = v2->_composeAttachmentsQueue;
    v2->_composeAttachmentsQueue = v3;
  }

  return v2;
}

- (id)_queueForAttachment:(id)a3
{
  v4 = a3;
  if (([v4 isDataAvailableLocally] & 1) == 0)
  {
    v5 = [v4 url];
    v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:0];

    v7 = [v6 messageForAttachment:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 mailbox];
      v9 = [v8 attachmentDownloadQueue];

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  defaultDownloadQueue = self->_defaultDownloadQueue;
  if (!defaultDownloadQueue)
  {
    v11 = objc_alloc_init(MFInvocationQueue);
    v12 = self->_defaultDownloadQueue;
    self->_defaultDownloadQueue = v11;

    defaultDownloadQueue = self->_defaultDownloadQueue;
  }

  v9 = defaultDownloadQueue;
LABEL_9:

  return v9;
}

- (id)_fetchDataForAttachment:(id)a3 withProvider:(id)a4 request:(id)a5 syncLock:(id *)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v39 = a4;
  v43 = v9;
  v44 = a5;
  v10 = [v9 url];
  v41 = v10;
  v45 = [(NSMutableDictionary *)self->super._attachments objectForKeyedSubscript:v10];
  if (v45)
  {
    v11 = EDAttachmentsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v55 = v9;
      v56 = 2112;
      v57 = v10;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Attachment %p with url %@ already exists in the dictionary of attachment compose manager", buf, 0x16u);
    }

    v40 = [v9 customConsumer];
    if (v40)
    {
      v12 = [v45 objectForKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
      [v12 addDataConsumer:v40];
    }

    v13 = [v45 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    [v13 addObject:v44];
    v14 = [v45 objectForKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    v15 = [v45 objectForKeyedSubscript:@"MFAttachmentSyncLockKey"];
  }

  else
  {
    v40 = [v9 path];
    if (v40 && ([v9 isContainedInRFC822] & 1) == 0 && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isReadableFileAtPath:", v40), v16, (v17 & 1) != 0))
    {
      v18 = 0x1E69AD798;
    }

    else
    {
      v18 = 0x1E69AD698;
    }

    v14 = objc_alloc_init(*v18);
    v19 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    v20 = [objc_alloc(MEMORY[0x1E69AD738]) initWithMainConsumer:v14];
    v37 = v19;
    v38 = v20;
    v21 = [v9 customConsumer];

    if (v21)
    {
      v22 = [v9 customConsumer];
      [v20 addDataConsumer:v22];
    }

    v23 = [MEMORY[0x1E695DF90] dictionary];
    v24 = [MEMORY[0x1E695DF70] arrayWithObject:v44];
    [v23 setObject:v24 forKeyedSubscript:@"MFAttachmentAttachmentKey"];

    [v23 setObject:v14 forKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    [v23 setObject:v20 forKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
    [v23 setObject:v19 forKeyedSubscript:@"MFAttachmentSyncLockKey"];
    v25 = EDAttachmentsLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v9 ef_publicDescription];
      *buf = 138543874;
      v55 = v26;
      v56 = 2112;
      v57 = v10;
      v58 = 2114;
      v59 = v14;
      _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "requesting download of attachment %{public}@ with URL %@ (primaryConsumer: %{public}@)", buf, 0x20u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke;
    aBlock[3] = &unk_1E7AA4D10;
    v47 = v44;
    v48 = self;
    v27 = v10;
    v49 = v27;
    v50 = v39;
    v28 = v9;
    v51 = v28;
    v13 = v38;
    v52 = v13;
    v15 = v37;
    v53 = v15;
    v29 = _Block_copy(aBlock);
    v30 = _Block_copy(v29);
    v31 = [MFMonitoredInvocation invocationWithSelector:sel__fetchInvocationCallUsingBlock_ target:self object:v30 taskName:@"FetchDataForURL" priority:4 canBeCancelled:1];

    [v31 setPowerAssertionId:@"com.apple.message.MFAttachmentComposeManager"];
    [v31 retainArguments];
    v32 = [v31 monitor];
    [v23 setObject:v32 forKeyedSubscript:@"MFAttachmentMonitorKey"];

    [(NSMutableDictionary *)self->super._attachments setObject:v23 forKeyedSubscript:v27];
    v33 = [(MFAttachmentComposeManager *)self _queueForAttachment:v28];
    [v33 addInvocation:v31];
  }

  if (a6)
  {
    v34 = v15;
    *a6 = v15;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v14;
}

void __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadProgress];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_2;
  v21[3] = &unk_1E7AA4CC0;
  v3 = *(a1 + 48);
  v21[4] = *(a1 + 40);
  v22 = v3;
  v4 = v2;
  v23 = v4;
  v5 = [v4 ef_observeKeyPath:@"fractionCompleted" options:1 autoCancelToken:0 usingBlock:v21];
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_3;
  v13[3] = &unk_1E7AA4CE8;
  v9 = v8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 64);
  v18 = *(a1 + 56);
  v19 = *(a1 + 80);
  v20 = v5;
  v12 = v5;
  [v6 fetchDataForAttachment:v7 consumer:v9 progress:v4 completion:v13];
}

uint64_t __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) completedUnitCount];
  v5 = [*(a1 + 48) totalUnitCount];

  return [v2 _callProgressBlockForAttachmentURL:v3 withBytes:v4 expectedSize:v5];
}

void __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_3(uint64_t a1, int a2, void *a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [*(a1 + 32) data];
  v9 = v8;
  if (a2 && a4 && (v10 = [v8 length], !v7) && v10 && +[MFMailMessageLibrary canUsePersistence](MFMailMessageLibrary, "canUsePersistence"))
  {
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v13 = *(v12 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_4;
    block[3] = &unk_1E7AA3FA0;
    block[4] = v12;
    v21 = v11;
    v22 = *(a1 + 56);
    v23 = v9;
    v24 = *(a1 + 64);
    dispatch_sync(v13, block);
  }

  else
  {
    v14 = EDAttachmentsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      *buf = 134219266;
      v26 = v19;
      v27 = 2112;
      v28 = v18;
      v29 = 1024;
      v30 = a4;
      v31 = 1024;
      v32 = a2;
      v33 = 2048;
      v34 = [v9 length];
      v35 = 2112;
      v36 = v7;
      _os_log_error_impl(&dword_1B0389000, v14, OS_LOG_TYPE_ERROR, "not writing attachment %p %@ to disk (shouldWriteToDisk=%d, success=%d, data.length=%lu, error=%@)", buf, 0x36u);
    }
  }

  [*(a1 + 72) lock];
  [*(a1 + 72) unlockWithCondition:1];
  v15 = [v9 length];
  v16 = v7;
  if (!v7 && !v15)
  {
    v16 = [MEMORY[0x1E696ABC0] ef_connectionInterruptedError];
  }

  [*(a1 + 40) _fetchCompletedForAttachment:*(a1 + 56) error:v16];
  [*(a1 + 80) cancel];

  v17 = *MEMORY[0x1E69E9840];
}

void __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_4(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1B0389000, "Write attachment to database", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &state);
  v3 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    v4 = [*(a1 + 48) fileName];

    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E699B7C0]) initRegularFileWithContents:*(a1 + 56)];
      v6 = [*(a1 + 48) fileName];
      [v5 setPreferredFilename:v6];

      v7 = [v5 fileAttributes];
      v33 = [v7 mutableCopy];

      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "length")}];
      [v33 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A3B8]];

      [v5 setFileAttributes:v33];
      v9 = [*(a1 + 48) mimePartNumber];
      v10 = v9;
      if (v9)
      {
        v32 = v9;
      }

      else
      {
        v12 = [*(a1 + 48) part];
        v32 = [v12 partNumber];
      }

      v13 = [*(a1 + 64) messageForAttachment:*(a1 + 48)];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v31 = v13;
      v14 = objc_alloc(MEMORY[0x1E699B590]);
      v15 = [v31 globalMessageID];
      v16 = [*(a1 + 48) fileName];
      v17 = [*(a1 + 48) mailDropMetadata];
      v18 = [v17 directUrl];
      v19 = [v14 initWithGlobalMessageID:v15 name:v16 mimePart:v32 attachmentID:0 remoteURL:v18];

      v20 = MEMORY[0x1E695DFF8];
      v21 = +[MFMailMessageLibrary defaultInstance];
      v22 = [v31 account];
      v23 = [v21 messageBasePathForAccount:v22];
      v24 = [v20 fileURLWithPath:v23 isDirectory:1];

      v25 = [*(a1 + 32) persistenceManager];
      v34 = 0;
      LOBYTE(v22) = [v25 persistAttachment:v5 attachmentMetadata:v19 basePath:v24 error:&v34];

      if (v22)
      {
        [*(a1 + 48) updatePath];
        v26 = [MEMORY[0x1E696AD88] defaultCenter];
        [v26 postNotificationName:@"LibraryMessageAttachmentDataBecameAvailableNotification" object:v31];

        v27 = @"Success";
      }

      else
      {
LABEL_13:
        v27 = @"Failed";
      }

      v28 = EDAttachmentsLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [*(a1 + 48) ef_publicDescription];
        *buf = 138412546;
        v37 = v27;
        v38 = 2114;
        v39 = v29;
        _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_DEFAULT, "%@ attachment %{public}@ write to persistence", buf, 0x16u);
      }
    }

    else
    {
      v5 = EDAttachmentsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(a1 + 48) ef_publicDescription];
        __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_4_cold_1(v11, buf, v5);
      }
    }
  }

  else
  {
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_4_cold_2(a1, (a1 + 40), v5);
    }
  }

  os_activity_scope_leave(&state);
  v30 = *MEMORY[0x1E69E9840];
}

- (void)_callProgressBlockForAttachmentURL:(id)a3 withBytes:(int64_t)a4 expectedSize:(int64_t)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__7;
  v38 = __Block_byref_object_dispose__7;
  v39 = 0;
  arrayAccessQueue = self->super._arrayAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke;
  block[3] = &unk_1E7AA4D38;
  v33 = &v34;
  block[4] = self;
  v24 = v7;
  v32 = v24;
  dispatch_sync(arrayAccessQueue, block);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v35[5];
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v46 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [v15 lastProgressBytes];
        [v15 lastProgressTime];
        if (v9 - v17 >= 0.0333333333 || a5 * 0.02 <= (a4 - v16))
        {
          v19 = MFLogGeneral();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v21 = [v15 attachment];
            v22 = [v21 fileName];
            *buf = 138412802;
            v41 = v22;
            v42 = 2048;
            v43 = a4;
            v44 = 2048;
            v45 = a5;
            _os_log_debug_impl(&dword_1B0389000, v19, OS_LOG_TYPE_DEBUG, "Calling progress block for %@.  %lu/%lu", buf, 0x20u);
          }

          [v15 setLastProgressBytes:a4];
          [v15 setLastProgressTime:v9];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke_48;
          aBlock[3] = &unk_1E7AA33B0;
          aBlock[4] = v15;
          aBlock[5] = a4;
          v20 = _Block_copy(aBlock);
          if ([v15 wantsCompletionBlockOffMainThread])
          {
            v20[2](v20);
          }

          else
          {
            dispatch_async(MEMORY[0x1E69E96A0], v20);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v46 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v34, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke(void *a1)
{
  v6 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v2 = [v6 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
  v3 = [v2 copy];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke_48(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) downloadProgress];
  [v2 setCompletedUnitCount:v1];
}

- (id)attachmentsForContext:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  composeAttachmentsQueue = self->_composeAttachmentsQueue;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MFAttachmentComposeManager_attachmentsForContext___block_invoke;
  block[3] = &unk_1E7AA4D38;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(composeAttachmentsQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__MFAttachmentComposeManager_attachmentsForContext___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1[4] + 80), "count")}];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(*v2 + 80);
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 rangeOfString:{a1[5], v15}] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = a1[4];
          v12 = [MEMORY[0x1E695DFF8] URLWithString:v10];
          v13 = [v11 attachmentForURL:v12 error:0];

          if (v13)
          {
            [*(*(a1[6] + 8) + 40) addObject:v13];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)attachmentForCID:(id)a3
{
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  [v4 setQuery:0];
  v5 = [v4 path];
  v6 = [(MFAttachmentManager *)self attachmentForContentID:v5 preferredSchemes:&unk_1F2774CE0];

  return v6;
}

- (id)_providerForURL:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._providersLock);
  providers = self->super._providers;
  v6 = [v4 absoluteString];
  v7 = [(NSMutableDictionary *)providers objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->super._providersLock);

  return v7;
}

- (id)_composeAttachmentDataProviderForContext:(id)a3
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-attach-compose://%@", a3];
  v6 = [v4 URLWithString:v5];

  v7 = [(MFAttachmentComposeManager *)self _providerForURL:v6];

  return v7;
}

- (id)attachmentForData:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v55 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v12 length] >= 0x834 || !+[MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:](MFAttachmentPlaceholder, "isPlaceholderSerializedRepresentation:", v12))
  {
    v18 = 0;
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v16 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v12];
  v17 = v16;
  if (!v14)
  {
    [v16 contentID];
    v14 = v18 = v17;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MFAttachmentComposeManager attachmentForData:mimeType:fileName:contentID:context:];
    }

LABEL_15:
    v25 = 0;
    goto LABEL_40;
  }

  v18 = v16;
  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_8:
  if (![v12 length])
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MFAttachmentComposeManager attachmentForData:mimeType:fileName:contentID:context:];
    }

    goto LABEL_15;
  }

  v20 = [(MFAttachmentComposeManager *)self _contentIDWithoutBracket:v14];

  if (![v13 length])
  {
    v21 = v20;

    v13 = v21;
  }

  v22 = MEMORY[0x1E695DFF8];
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-attach-compose://%@", v15];
  v19 = [v22 URLWithString:v23];

  v24 = [(MFAttachmentComposeManager *)self _providerForURL:v19];
  if (v24)
  {
    v52 = v24;
    [(MFComposeAttachmentDataProvider *)v24 addData:v12 forContentID:v20];
  }

  else
  {
    v52 = [[MFComposeAttachmentDataProvider alloc] initWithData:v12 forContentID:v20];
    [(MFAttachmentManager *)self addProvider:v52 forBaseURL:v19];
  }

  v26 = [v13 pathExtension];
  v27 = [v26 lowercaseString];

  v51 = v27;
  if ([v27 isEqualToString:@"zip"])
  {
    v53 = [v13 stringByDeletingPathExtension];
    v28 = [v53 pathExtension];
    v29 = v28;
    if (v28 && [v28 length])
    {
      v50 = [v29 ef_declaredUTTypeFromExtension];
      v30 = [v50 identifier];
      v31 = [v30 ef_conformsToIWorkUTType];

      if (v31)
      {
        v32 = v53;

        v33 = EDAttachmentsLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v34 = [v50 identifier];
          [MFAttachmentComposeManager attachmentForData:v34 mimeType:buf fileName:v33 contentID:? context:?];
        }
      }

      else
      {
        v32 = v13;
      }
    }

    else
    {
      v32 = v13;
    }

    v13 = v32;
  }

  v54 = [v13 ef_filenameWithExtensionForMimeType:v55];

  v35 = [MFAttachment alloc];
  v36 = [v19 URLByAppendingPathComponent:v20];
  v25 = [(MFAttachment *)v35 initWithURL:v36 attachmentManager:self];

  v37 = [v54 ef_sanitizedFileName];
  [(MFAttachment *)v25 setFileName:v37];

  [(MFAttachment *)v25 setContentID:v20];
  if (v55)
  {
    [(MFAttachment *)v25 setMimeType:?];
  }

  else
  {
    v38 = [v54 pathExtension];
    v39 = [v38 lowercaseString];

    v40 = [MEMORY[0x1E696AF48] sharedMappings];
    v41 = [v40 MIMETypeForExtension:v39];

    [(MFAttachment *)v25 setMimeType:v41];
  }

  if (v18)
  {
    [(MFAttachment *)v25 setPlaceholder:v18];
    [(MFAttachment *)v25 setIsPlaceholder:1];
  }

  [(MFAttachmentManager *)self setContentID:v20 forAttachment:v25];
  -[MFAttachment setDecodedFileSize:](v25, "setDecodedFileSize:", [v12 length]);
  if (v25)
  {
    if (!self->_composeAttachmentURLs)
    {
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
      composeAttachmentURLs = self->_composeAttachmentURLs;
      self->_composeAttachmentURLs = v42;
    }

    v44 = [(MFAttachment *)v25 url];
    v45 = [v44 absoluteString];

    composeAttachmentsQueue = self->_composeAttachmentsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__MFAttachmentComposeManager_attachmentForData_mimeType_fileName_contentID_context___block_invoke;
    block[3] = &unk_1E7AA26E0;
    block[4] = self;
    v57 = v45;
    v47 = v45;
    dispatch_async(composeAttachmentsQueue, block);
  }

  v14 = v20;
  v13 = v54;
LABEL_40:

  v48 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __84__MFAttachmentComposeManager_attachmentForData_mimeType_fileName_contentID_context___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 80);

    return [v4 addObject:v3];
  }

  return result;
}

- (id)attachmentForItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7
{
  v36 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v13 && ![0 length])
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"MFAttachmentComposeManager.m" lineNumber:392 description:{@"Invalid parameter not satisfying: %@", @"mimeType || mimeType.length > 0"}];
  }

  v17 = [(MFAttachmentComposeManager *)self _contentIDWithoutBracket:v15];

  if (![v14 length])
  {
    v18 = v17;

    v14 = v18;
  }

  v19 = [v14 ef_filenameWithExtensionForMimeType:v13];

  v20 = MEMORY[0x1E695DFF8];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-attach-compose://%@", v16];
  v22 = [v20 URLWithString:v21];

  v23 = [(MFAttachmentComposeManager *)self _providerForURL:v22];
  v24 = v23;
  if (v23)
  {
    [(MFComposeAttachmentDataProvider *)v23 addDataItemProvider:v36 forContentID:v17];
  }

  else
  {
    v24 = [[MFComposeAttachmentDataProvider alloc] initWithAttachmentDataItemProvider:v36 forContentID:v17];
    [(MFAttachmentManager *)self addProvider:v24 forBaseURL:v22];
  }

  v25 = [MFAttachment alloc];
  v26 = [v22 URLByAppendingPathComponent:v17];
  v27 = [(MFAttachment *)v25 initWithURL:v26 attachmentManager:self];

  [(MFAttachment *)v27 setFileName:v19];
  [(MFAttachment *)v27 setContentID:v17];
  [(MFAttachment *)v27 setMimeType:v13];
  [(MFAttachmentManager *)self setContentID:v17 forAttachment:v27];
  if (v27)
  {
    if (!self->_composeAttachmentURLs)
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      composeAttachmentURLs = self->_composeAttachmentURLs;
      self->_composeAttachmentURLs = v28;
    }

    v30 = [(MFAttachment *)v27 url];
    v31 = [v30 absoluteString];

    composeAttachmentsQueue = self->_composeAttachmentsQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__MFAttachmentComposeManager_attachmentForItemProvider_mimeType_fileName_contentID_context___block_invoke;
    block[3] = &unk_1E7AA26E0;
    block[4] = self;
    v38 = v31;
    v33 = v31;
    dispatch_async(composeAttachmentsQueue, block);
  }

  return v27;
}

uint64_t __92__MFAttachmentComposeManager_attachmentForItemProvider_mimeType_fileName_contentID_context___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 80);

    return [v4 addObject:v3];
  }

  return result;
}

- (id)_contentIDWithoutBracket:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E696AEC0] mf_messageIDStringWithDomainHint:0];
  }

  if ([v3 hasPrefix:@"<"])
  {
    v4 = [v3 substringWithRange:{1, objc_msgSend(v3, "length") - 2}];

    v3 = v4;
  }

  return v3;
}

- (void)loadAttachmentURL:(id)a3 forContextID:(id)a4
{
  v12 = a4;
  v6 = [(MFAttachmentComposeManager *)self attachmentForCID:a3];
  v7 = [v6 fetchLocalData];
  v8 = [v6 mimeType];
  v9 = [v6 fileName];
  v10 = [v6 contentID];
  v11 = [(MFAttachmentComposeManager *)self attachmentForData:v7 mimeType:v8 fileName:v9 contentID:v10 context:v12];
}

- (BOOL)updateAttachment:(id)a3 withNewData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 url];
  v9 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v8 error:0];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v9;
    v12 = [v6 url];
    [v11 removeDataForAttachment:v12];

    v13 = [v6 contentID];
    [v11 addData:v7 forContentID:v13];
  }

  return isKindOfClass & 1;
}

- (void)removeAttachmentForURL:(id)a3
{
  v4 = a3;
  composeAttachmentsQueue = self->_composeAttachmentsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MFAttachmentComposeManager_removeAttachmentForURL___block_invoke;
  v7[3] = &unk_1E7AA26E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(composeAttachmentsQueue, v7);
}

void __53__MFAttachmentComposeManager_removeAttachmentForURL___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v4 = [*(a1 + 40) absoluteString];
  v3 = [v2 indexOfObject:?];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 80) removeObjectAtIndex:v3];
    v5 = [*(a1 + 32) _dataProviderForAttachmentURL:*(a1 + 40) error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 removeDataForAttachment:*(a1 + 40)];
    }
  }
}

- (void)removeAllAttachments
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_composeAttachmentURLs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(MFAttachmentComposeManager *)self removeAttachmentForURL:*(*(&v8 + 1) + 8 * v6++), v8];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_4_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "not writing attachment. Missing filename: %{public}@", buf, 0xCu);
}

void __84__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_request_syncLock___block_invoke_4_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = *(a1 + 48);
  *&v4[12] = 2112;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_0_3(&dword_1B0389000, a2, a3, "not writing attachment %p %@ to disk (no-existing-attachment-dictionary)", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)attachmentForData:(os_log_t)log mimeType:fileName:contentID:context:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "Stripping .zip extension from attachment with type: %{public}@", buf, 0xCu);
}

- (void)attachmentForData:mimeType:fileName:contentID:context:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_1B0389000, v0, v1, "#Attachments Data was nil for filename:%@ contentID:%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)attachmentForData:mimeType:fileName:contentID:context:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3(&dword_1B0389000, v0, v1, "#Attachments ContextID was nil for filename:%@ contentID:%@");
  v2 = *MEMORY[0x1E69E9840];
}

@end