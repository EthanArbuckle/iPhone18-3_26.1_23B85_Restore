@interface MFAttachmentComposeManager
- (BOOL)updateAttachment:(id)a3 withNewData:(id)a4;
- (id)_composeAttachmentDataProviderForContext:(id)a3;
- (id)_fetchDataForAttachment:(id)a3 withProvider:(id)a4 syncLock:(id *)a5;
- (id)_queueForAttachment:(id)a3;
- (id)attachmentForData:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7;
- (id)attachmentsForContext:(id)a3;
- (void)_callProgressBlockForAttachmentURL:(id)a3 withBytes:(unint64_t)a4 expectedSize:(unint64_t)a5;
- (void)dealloc;
- (void)loadAttachmentURL:(id)a3 forContextID:(id)a4;
- (void)recordPasteboardAttachmentsForURLs:(id)a3 forContextID:(id)a4;
- (void)recordUndoAttachmentsForURLs:(id)a3 forContextID:(id)a4;
- (void)removeAttachmentForURL:(id)a3;
@end

@implementation MFAttachmentComposeManager

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFAttachmentComposeManager;
  [(MFAttachmentManager *)&v3 dealloc];
}

- (id)_queueForAttachment:(id)a3
{
  if (([a3 isDataAvailableLocally] & 1) != 0 || (v5 = objc_msgSend(-[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", objc_msgSend(a3, "url"), 0), "messageForAttachment:", a3), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (result = objc_msgSend(objc_msgSend(v5, "mailbox"), "attachmentDownloadQueue")) == 0)
  {
    result = self->_defaultDownloadQueue;
    if (!result)
    {
      result = objc_alloc_init(MFInvocationQueue);
      self->_defaultDownloadQueue = result;
    }
  }

  return result;
}

- (id)_fetchDataForAttachment:(id)a3 withProvider:(id)a4 syncLock:(id *)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = [a3 url];
  v11 = [(NSMutableDictionary *)self->super._attachments objectForKeyedSubscript:v10];
  if (v11)
  {
    v12 = v11;
    v13 = [a3 customConsumer];
    if (v13)
    {
      [objc_msgSend(v12 objectForKeyedSubscript:{@"MFAttachmentCollectionFilterKey", "addDataConsumer:", v13}];
    }

    v14 = [v12 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    if ([objc_msgSend(MEMORY[0x277D07148] "currentDevice")] && objc_msgSend(v14, "indexOfObjectIdenticalTo:", a3) != 0x7FFFFFFFFFFFFFFFLL)
    {
      [MFAttachmentComposeManager _fetchDataForAttachment:a2 withProvider:self syncLock:a3];
    }

    [v14 addObject:a3];
    v15 = [v12 objectForKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    v16 = [v12 objectForKeyedSubscript:@"MFAttachmentSyncLockKey"];
    if (a5)
    {
LABEL_8:
      *a5 = v16;
    }
  }

  else
  {
    v23 = a5;
    v15 = objc_alloc_init(MEMORY[0x277D24EE8]);
    v16 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v19 = [objc_alloc(MEMORY[0x277D24F78]) initWithMainConsumer:v15];
    if ([a3 customConsumer])
    {
      [v19 addDataConsumer:{objc_msgSend(a3, "customConsumer")}];
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    [v20 setObject:objc_msgSend(MEMORY[0x277CBEB18] forKeyedSubscript:{"arrayWithObject:", a3), @"MFAttachmentAttachmentKey"}];
    [v20 setObject:v15 forKeyedSubscript:@"MFAttachmentPrimaryConsumerKey"];
    [v20 setObject:v19 forKeyedSubscript:@"MFAttachmentCollectionFilterKey"];
    [v20 setObject:v16 forKeyedSubscript:@"MFAttachmentSyncLockKey"];
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v26 = a3;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_258BDA000, v21, OS_LOG_TYPE_DEFAULT, "#Attachments requesting download of attachment %p with URL %@", buf, 0x16u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke;
    v24[3] = &unk_2798B6F78;
    v24[4] = a3;
    v24[5] = self;
    v24[6] = v10;
    v24[7] = a4;
    v24[8] = v19;
    v24[9] = v16;
    v22 = +[MFMonitoredInvocation invocationWithSelector:target:object:taskName:priority:canBeCancelled:](MFMonitoredInvocation, "invocationWithSelector:target:object:taskName:priority:canBeCancelled:", sel__fetchInvocationCallUsingBlock_, self, [v24 copy], @"FetchDataForURL", 4, 1);
    [(MFMonitoredInvocation *)v22 setPowerAssertionId:@"com.apple.message.MFAttachmentComposeManager"];
    [(MFMonitoredInvocation *)v22 retainArguments];
    [v20 setObject:-[MFMonitoredInvocation monitor](v22 forKeyedSubscript:{"monitor"), @"MFAttachmentMonitorKey"}];
    [(NSMutableDictionary *)self->super._attachments setObject:v20 forKeyedSubscript:v10];
    [-[MFAttachmentComposeManager _queueForAttachment:](self _queueForAttachment:{a3), "addInvocation:", v22}];
    a5 = v23;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  result = v15;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:{objc_msgSend(*(a1 + 32), "encodedFileSize")}];
  v2 = v12[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_18;
  v8[3] = &unk_2798B6F00;
  v9 = *(a1 + 40);
  v10 = &v11;
  [v2 ef_observeKeyPath:@"fractionCompleted" options:1 usingBlock:v8];
  v3 = v12[5];
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  [*(a1 + 56) fetchDataForAttachment:? consumer:? progress:? completion:?];
  _Block_object_dispose(&v11, 8);
}

uint64_t __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_18(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [*(*(a1[6] + 8) + 40) completedUnitCount];
  v5 = [*(*(a1[6] + 8) + 40) totalUnitCount];

  return [v2 _callProgressBlockForAttachmentURL:v3 withBytes:v4 expectedSize:v5];
}

uint64_t __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_2(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = [*(a1 + 32) data];
  v9 = v8;
  if (a2 && a4 && (v10 = [v8 length], !a3) && v10)
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 40) + 8);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3;
    v18[3] = &unk_2798B6F28;
    v19 = v11;
    v20 = *(a1 + 56);
    v21 = v9;
    dispatch_sync(v12, v18);
  }

  else
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 48);
      v14 = *(a1 + 56);
      *buf = 134219266;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 1024;
      v27 = a4;
      v28 = 1024;
      v29 = a2;
      v30 = 2048;
      v31 = [v9 length];
      v32 = 2112;
      v33 = a3;
      _os_log_impl(&dword_258BDA000, v13, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (shouldWriteToDisk=%d, success=%d, data.length=%lu, error=%@)", buf, 0x36u);
    }
  }

  [*(a1 + 64) lock];
  [*(a1 + 64) unlockWithCondition:1];
  [*(a1 + 40) _fetchCompletedForAttachment:*(a1 + 56) error:a3];
  result = [*(a1 + 72) cancel];
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void __76__MFAttachmentComposeManager__fetchDataForAttachment_withProvider_syncLock___block_invoke_3(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 24) objectForKeyedSubscript:a1[5]])
  {
    v2 = a1[6];
    v3 = a1[7];
    v4 = *MEMORY[0x277D85DE8];

    [v2 writeToDiskWithData:v3];
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v6 = a1[6];
      v9 = 134218242;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_DEFAULT, "#Attachments not writing attachment %p %@ to disk (no-existing-attachment-dictionary)", &v9, 0x16u);
    }

    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)_callProgressBlockForAttachmentURL:(id)a3 withBytes:(unint64_t)a4 expectedSize:(unint64_t)a5
{
  v48 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3052000000;
  v38 = __Block_byref_object_copy_;
  arrayAccessQueue = self->super._arrayAccessQueue;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke;
  block[3] = &unk_2798B6FA0;
  block[5] = a3;
  block[6] = &v35;
  block[4] = self;
  dispatch_sync(arrayAccessQueue, block);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v36[5];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v47 count:16];
  if (v12)
  {
    v14 = *v31;
    *&v13 = 138412802;
    v23 = v13;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [v16 lastProgressBytes];
        [v16 lastProgressTime];
        if (v9 - v18 >= 0.0333333333 || a5 * 0.02 <= (a4 - v17))
        {
          v20 = MFLogGeneral();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = [v16 fileName];
            *buf = v23;
            v42 = v21;
            v43 = 2048;
            v44 = a4;
            v45 = 2048;
            v46 = a5;
            _os_log_debug_impl(&dword_258BDA000, v20, OS_LOG_TYPE_DEBUG, "Calling progress block for %@.  %lu/%lu", buf, 0x20u);
          }

          [v16 setLastProgressBytes:a4];
          [v16 setLastProgressTime:v9];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v26 = __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke_32;
          v27 = &unk_2798B6FC8;
          v28 = v16;
          v29 = a4;
          if ([v16 wantsCompletionBlockOffMainThread])
          {
            v26(v25);
          }

          else
          {
            dispatch_async(MEMORY[0x277D85CD0], v25);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v30 objects:v47 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v35, 8);
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __88__MFAttachmentComposeManager__callProgressBlockForAttachmentURL_withBytes_expectedSize___block_invoke(void *a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1[4] + 24) objectForKeyedSubscript:{a1[5]), "objectForKeyedSubscript:", @"MFAttachmentAttachmentKey", "copy"}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (id)attachmentsForContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_composeAttachmentURLs, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  composeAttachmentURLs = self->_composeAttachmentURLs;
  v7 = [(NSMutableArray *)composeAttachmentURLs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(composeAttachmentURLs);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 rangeOfString:a3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = -[MFAttachmentManager attachmentForURL:error:](self, "attachmentForURL:error:", [MEMORY[0x277CBEBC0] URLWithString:v11], 0);
          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [(NSMutableArray *)composeAttachmentURLs countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_composeAttachmentDataProviderForContext:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"x-attach-compose://%@", a3)}];
  providers = self->super._providers;
  v6 = [v4 absoluteString];

  return [(NSMutableDictionary *)providers valueForKey:v6];
}

- (id)attachmentForData:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7
{
  if ([a3 length] < 0x834 && +[MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:](MFAttachmentPlaceholder, "isPlaceholderSerializedRepresentation:", a3))
  {
    v13 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:a3];
    a6 = [v13 contentID];
    if (!a7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    if (!a7)
    {
LABEL_4:
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MFAttachmentComposeManager attachmentForData:mimeType:fileName:contentID:context:];
      }

      return 0;
    }
  }

  if (![a3 length])
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MFAttachmentComposeManager attachmentForData:mimeType:fileName:contentID:context:];
    }

    return 0;
  }

  if (!a6)
  {
    a6 = [MEMORY[0x277CCACA8] mf_messageIDStringWithDomainHint:0];
  }

  if ([a6 hasPrefix:@"<"])
  {
    a6 = [a6 substringWithRange:{1, objc_msgSend(a6, "length") - 2}];
  }

  if ([a5 length])
  {
    v15 = a5;
  }

  else
  {
    v15 = a6;
  }

  v16 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"x-attach-compose://%@", a7)}];
  v17 = -[NSMutableDictionary valueForKey:](self->super._providers, "valueForKey:", [v16 absoluteString]);
  if (v17)
  {
    [v17 addData:a3 forContentID:a6];
  }

  else
  {
    [(MFAttachmentManager *)self addProvider:[[MFComposeAttachmentDataProvider alloc] initWithData:a3 forContentID:a6] forBaseURL:v16];
  }

  v19 = -[MFAttachment initWithURL:attachmentManager:]([MFAttachment alloc], "initWithURL:attachmentManager:", [v16 URLByAppendingPathComponent:a6], self);
  [(MFAttachment *)v19 setFileName:v15];
  [(MFAttachment *)v19 setContentID:a6];
  if (a4)
  {
    v21 = v19;
    v22 = a4;
  }

  else
  {
    v23 = [objc_msgSend(v15 "pathExtension")];
    v22 = [objc_msgSend(MEMORY[0x277CCAD00] "sharedMappings")];
    v21 = v19;
  }

  [(MFAttachment *)v21 setMimeType:v22];
  if (v13)
  {
    [(MFAttachment *)v19 setPlaceholder:v13];
    [(MFAttachment *)v19 setIsPlaceholder:1];
  }

  [(MFAttachmentManager *)self setContentID:a6 forAttachment:v19];
  -[MFAttachment setDecodedFileSize:](v19, "setDecodedFileSize:", [a3 length]);
  if (v19)
  {
    if (!self->_composeAttachmentURLs)
    {
      self->_composeAttachmentURLs = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v24 = [(NSURL *)[(MFAttachment *)v19 url] absoluteString];
    if (([(NSMutableArray *)self->_composeAttachmentURLs containsObject:v24]& 1) == 0)
    {
      [(NSMutableArray *)self->_composeAttachmentURLs addObject:v24];
    }
  }

  return v19;
}

- (void)loadAttachmentURL:(id)a3 forContextID:(id)a4
{
  v6 = [(MFAttachmentManager *)self attachmentForCID:a3];
  v7 = [v6 fetchLocalData];
  v8 = [v6 mimeType];
  v9 = [v6 fileName];
  v10 = [v6 contentID];

  [(MFAttachmentComposeManager *)self attachmentForData:v7 mimeType:v8 fileName:v9 contentID:v10 context:a4];
}

- (BOOL)updateAttachment:(id)a3 withNewData:(id)a4
{
  v6 = -[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", [a3 url], 0);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v6 removeDataForAttachment:{objc_msgSend(a3, "url")}];
    [v6 addData:a4 forContentID:{objc_msgSend(a3, "contentID")}];
  }

  return isKindOfClass & 1;
}

- (void)removeAttachmentForURL:(id)a3
{
  v5 = -[NSMutableArray indexOfObject:](self->_composeAttachmentURLs, "indexOfObject:", [a3 absoluteString]);
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_composeAttachmentURLs removeObjectAtIndex:v5];
    v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:a3 error:0];

    [v6 removeDataForAttachment:a3];
  }
}

- (void)recordPasteboardAttachmentsForURLs:(id)a3 forContextID:(id)a4
{
  v5 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [v5 recordPasteboardDataForAttachments:a3];
  }
}

- (void)recordUndoAttachmentsForURLs:(id)a3 forContextID:(id)a4
{
  v5 = [(MFAttachmentComposeManager *)self _composeAttachmentDataProviderForContext:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [v5 recordUndoDataForAttachments:a3];
  }
}

- (void)attachmentForData:mimeType:fileName:contentID:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_258BDA000, v0, v1, "#Attachments Data was nil for filename:%@ contentID:%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)attachmentForData:mimeType:fileName:contentID:context:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_258BDA000, v0, v1, "#Attachments ContextID was nil for filename:%@ contentID:%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end