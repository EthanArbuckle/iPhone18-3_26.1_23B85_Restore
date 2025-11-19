@interface MFAttachmentManager
+ (id)allManagers;
+ (id)defaultManager;
+ (id)supportedDocumentUTIs;
- (BOOL)_setupAttachment:(id)a3 withMimeBody:(id)a4 error:(id *)a5;
- (MFAttachmentManager)init;
- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4;
- (id)_filePathForAttachment:(id)a3;
- (id)attachmentForCID:(id)a3;
- (id)attachmentForContentID:(id)a3 preferredSchemes:(id)a4;
- (id)attachmentForTextAttachment:(id)a3 error:(id *)a4;
- (id)attachmentForURL:(id)a3 withMimeBody:(id)a4 error:(id *)a5;
- (id)attachmentsForURLs:(id)a3 error:(id *)a4;
- (id)metadataForAttachment:(id)a3 forKey:(id)a4;
- (void)_fetchCompletedForAttachment:(id)a3 error:(id)a4;
- (void)addProvider:(id)a3 forBaseURL:(id)a4;
- (void)cancelFetchForAttachment:(id)a3;
- (void)clearMetadataForAttachment:(id)a3;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)a3;
- (void)fetchDataSynchronouslyForAttachment:(id)a3;
- (void)removeProvider:(id)a3;
- (void)removeProviderForBaseURL:(id)a3;
- (void)setContentID:(id)a3 forAttachment:(id)a4;
- (void)setMetadataForAttachment:(id)a3 toValue:(id)a4 forKey:(id)a5;
@end

@implementation MFAttachmentManager

+ (id)allManagers
{
  if (allManagers_onceToken != -1)
  {
    +[MFAttachmentManager allManagers];
  }

  return allManagers_sAllManagers;
}

id __34__MFAttachmentManager_allManagers__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x277D24FC8]);
  allManagers_sAllManagers = result;
  return result;
}

+ (id)defaultManager
{
  v2 = [objc_msgSend(a1 "allManagers")];

  return [v2 firstObject];
}

- (MFAttachmentManager)init
{
  v5.receiver = self;
  v5.super_class = MFAttachmentManager;
  v2 = [(MFAttachmentManager *)&v5 init];
  if (v2)
  {
    v2->_attachments = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_arrayAccessQueue = dispatch_queue_create("com.apple.mail.attachmentManagerAttachmentArray", 0);
    v2->_metaDataLock = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v2->_imageScalingQueue = dispatch_queue_create("com.apple.message.attachmentManager.imagescaling", v3);
    [objc_msgSend(objc_opt_class() "allManagers")];
  }

  return v2;
}

- (void)dealloc
{
  arrayAccessQueue = self->_arrayAccessQueue;
  if (arrayAccessQueue)
  {
    dispatch_release(arrayAccessQueue);
  }

  [objc_msgSend(objc_opt_class() "allManagers")];

  v4.receiver = self;
  v4.super_class = MFAttachmentManager;
  [(MFAttachmentManager *)&v4 dealloc];
}

+ (id)supportedDocumentUTIs
{
  if (supportedDocumentUTIs_onceToken != -1)
  {
    +[MFAttachmentManager supportedDocumentUTIs];
  }

  return _supportedUTIs;
}

id __44__MFAttachmentManager_supportedDocumentUTIs__block_invoke()
{
  v14[25] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CC2128];
  v14[0] = *MEMORY[0x277CC2048];
  v14[1] = v0;
  v1 = *MEMORY[0x277CC2188];
  v14[2] = *MEMORY[0x277CC2028];
  v14[3] = v1;
  v2 = *MEMORY[0x277CC2098];
  v14[4] = *MEMORY[0x277CC2050];
  v14[5] = v2;
  v3 = *MEMORY[0x277CC2168];
  v14[6] = *MEMORY[0x277CC21B0];
  v14[7] = v3;
  v4 = *MEMORY[0x277CC20D8];
  v14[8] = *MEMORY[0x277CC2160];
  v14[9] = v4;
  v5 = *MEMORY[0x277CC20B0];
  v14[10] = *MEMORY[0x277CC2148];
  v14[11] = v5;
  v6 = *MEMORY[0x277CC2090];
  v14[12] = *MEMORY[0x277CC2020];
  v14[13] = v6;
  v7 = *MEMORY[0x277CC21B8];
  v14[14] = *MEMORY[0x277CC2030];
  v14[15] = v7;
  v8 = *MEMORY[0x277CC2140];
  v14[16] = *MEMORY[0x277CC2170];
  v14[17] = v8;
  v9 = *MEMORY[0x277CC20B8];
  v14[18] = *MEMORY[0x277CC21A0];
  v14[19] = v9;
  v10 = *MEMORY[0x277CC1F68];
  v14[20] = *MEMORY[0x277CC2080];
  v14[21] = v10;
  v11 = *MEMORY[0x277CC21A8];
  v14[22] = *MEMORY[0x277CC2118];
  v14[23] = v11;
  v14[24] = *MEMORY[0x277CC2060];
  _supportedUTIs = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:25];
  result = _supportedUTIs;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)addProvider:(id)a3 forBaseURL:(id)a4
{
  if (!self->_providers)
  {
    self->_providers = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  }

  v7 = [a4 absoluteString];
  if ([v7 hasSuffix:@"/"])
  {
    v7 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];
  }

  providers = self->_providers;

  [(NSMutableDictionary *)providers setObject:a3 forKey:v7];
}

- (void)removeProviderForBaseURL:(id)a3
{
  v4 = [a3 absoluteString];
  if ([v4 hasSuffix:@"/"])
  {
    v4 = [v4 substringToIndex:{objc_msgSend(v4, "length") - 1}];
  }

  if (v4)
  {
    providers = self->_providers;

    [(NSMutableDictionary *)providers removeObjectForKey:v4];
  }
}

- (void)removeProvider:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  providers = self->_providers;
  v6 = [(NSMutableDictionary *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(providers);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(NSMutableDictionary *)self->_providers objectForKey:v10]== a3)
        {
          if (v10)
          {
            -[MFAttachmentManager removeProviderForBaseURL:](self, "removeProviderForBaseURL:", [MEMORY[0x277CBEBC0] URLWithString:v10]);
          }

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableDictionary *)providers countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupAttachment:(id)a3 withMimeBody:(id)a4 error:(id *)a5
{
  if ([objc_msgSend(a3 "url")])
  {
    v9 = -[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", [a3 url], a5);
    if (v9)
    {
      if (a4 || (a4 = [objc_msgSend(v9 messageForAttachment:{a3), "messageBody"}]) != 0)
      {
        a4 = [a4 partWithNumber:{objc_msgSend(objc_msgSend(a3, "url"), "mf_lastPartNumber")}];
        [a3 setPart:a4];
        if (![a3 fileName])
        {
          [a3 setFileName:{objc_msgSend(a4, "attachmentFilename")}];
        }

        if (a4)
        {
          [a3 setMimeType:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@/%@", objc_msgSend(a4, "type"), objc_msgSend(a4, "subtype"))}];
          [a3 setEncodedFileSize:{objc_msgSend(a4, "approximateRawSize")}];
          [a3 setDisposition:{objc_msgSend(a4, "disposition")}];
          v10 = [a4 dispositionParameterForKey:@"remote-image"];
          if (v10)
          {
            [a3 setRemoteImageFileName:v10];
          }
        }
      }

      if ([(MFAttachmentManager *)self metadataForAttachment:a3 forKey:@"MFAttachmentContentIDKey"])
      {
        goto LABEL_18;
      }

      v11 = [a4 contentID];
      if (!v11)
      {
        v12 = [a4 bodyParameterForKey:*MEMORY[0x277D24E78]];
        if (v12)
        {
          goto LABEL_17;
        }

        v11 = [MEMORY[0x277CCACA8] mf_messageIDStringWithDomainHint:?];
      }

      v12 = v11;
LABEL_17:
      [(MFAttachmentManager *)self setContentID:v12 forAttachment:a3];
LABEL_18:
      LOBYTE(v9) = 1;
    }
  }

  else if (a5)
  {
    v13 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Invalid attachment URL." title:@"Invalid Attachment URL" userInfo:0];
    LOBYTE(v9) = 0;
    *a5 = v13;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_filePathForAttachment:(id)a3
{
  result = -[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", [a3 url], 0);
  if (result)
  {
    v6 = [result messageForAttachment:a3];
    result = [-[MFAttachmentManager _dataProviderForAttachmentURL:error:](self _dataProviderForAttachmentURL:objc_msgSend(a3 error:{"url"), 0), "storageLocationForAttachment:withMessage:", a3, v6}];
    if (!result)
    {
      v7 = [v6 messageStore];

      return [v7 storagePath];
    }
  }

  return result;
}

- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4
{
  v7 = [a3 mf_partNumbers];
  if (![v7 count])
  {
    if (a4)
    {
      v13 = &unk_286A053C8;
      goto LABEL_12;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v8 = [a3 URLByDeletingLastPathComponent];
  v9 = [v7 count];
  if (v9 == -1)
  {
LABEL_8:
    if (a4)
    {
      v13 = &unk_286A053F0;
LABEL_12:
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:v13];
      v12 = 0;
      *a4 = v14;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = v9 + 1;
  while (1)
  {
    v11 = [v8 absoluteString];
    if ([v11 hasSuffix:@"/"])
    {
      v11 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];
    }

    v12 = [(NSMutableDictionary *)self->_providers objectForKey:v11];
    if (v12)
    {
      break;
    }

    v8 = [v8 URLByDeletingLastPathComponent];
    if (!--v10)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  v15 = v12;

  return v15;
}

- (id)attachmentForURL:(id)a3 withMimeBody:(id)a4 error:(id *)a5
{
  v5 = a3;
  if (a3)
  {
    v5 = [[MFAttachment alloc] initWithURL:a3 attachmentManager:self];
    if (![(MFAttachmentManager *)self _setupAttachment:v5 withMimeBody:a4 error:a5])
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)attachmentsForURLs:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = [(MFAttachmentManager *)self attachmentForURL:*(*(&v15 + 1) + 8 * i) error:a4];
        if (!v12)
        {
          v7 = 0;
          goto LABEL_11;
        }

        [v7 addObject:v12];
      }

      v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)attachmentForTextAttachment:(id)a3 error:(id *)a4
{
  v7 = [objc_msgSend(a3 "mimePart")];
  v8 = [objc_msgSend(a3 "mimePart")];

  return [(MFAttachmentManager *)self attachmentForURL:v7 withMimeBody:v8 error:a4];
}

- (id)attachmentForCID:(id)a3
{
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  [v4 setQuery:0];
  v5 = [v4 path];

  return [(MFAttachmentManager *)self attachmentForContentID:v5 preferredSchemes:0];
}

- (id)attachmentForContentID:(id)a3 preferredSchemes:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  if (![a3 length])
  {
    v14 = 0;
    goto LABEL_14;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NSLock *)self->_metaDataLock lock];
  metadata = self->_metadata;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__MFAttachmentManager_attachmentForContentID_preferredSchemes___block_invoke;
  v21[3] = &unk_2798B7060;
  v21[4] = a3;
  v21[5] = v7;
  v21[6] = a4;
  [(NSMutableDictionary *)metadata enumerateKeysAndObjectsUsingBlock:v21];
  [(NSLock *)self->_metaDataLock unlock];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [a4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(a4);
      }

      v13 = [v7 objectForKeyedSubscript:{objc_msgSend(*(*(&v17 + 1) + 8 * v12), "lowercaseString")}];
      if (v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [a4 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v10)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = [objc_msgSend(v7 "allValues")];
    if (!v13)
    {
      v14 = 0;
      goto LABEL_12;
    }
  }

  v14 = [(MFAttachmentManager *)self attachmentForURL:v13 error:0];
LABEL_12:

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __63__MFAttachmentManager_attachmentForContentID_preferredSchemes___block_invoke(id *a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a1[4] caseInsensitiveCompare:{objc_msgSend(a3, "objectForKeyedSubscript:", @"MFAttachmentContentIDKey"}];
  if (!result)
  {
    [a1[5] setObject:a2 forKeyedSubscript:{objc_msgSend(objc_msgSend(a2, "scheme"), "lowercaseString")}];
    result = [a1[6] count];
    if (!result || (result = [objc_msgSend(a2 "scheme")]) == 0)
    {
      *a4 = 1;
    }
  }

  return result;
}

- (void)fetchDataForAttachment:(id)a3
{
  v12 = 0;
  v5 = -[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", [a3 url], &v12);
  if (v5)
  {
    arrayAccessQueue = self->_arrayAccessQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke_2;
    v10[3] = &unk_2798B70B0;
    v10[4] = self;
    v10[5] = a3;
    v10[6] = v5;
    v7 = v10;
    v8 = arrayAccessQueue;
  }

  else
  {
    v9 = [a3 fetchCompletionBlock];
    if (!v9)
    {
      return;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke;
    block[3] = &unk_2798B7088;
    block[4] = v12;
    block[5] = v9;
    v8 = MEMORY[0x277D85CD0];
    v7 = block;
  }

  dispatch_async(v8, v7);
}

- (void)fetchDataSynchronouslyForAttachment:(id)a3
{
  v5 = [a3 fetchCompletionBlock];
  [a3 setFetchCompletionBlock:0];
  v24 = 0;
  v6 = -[MFAttachmentManager _dataProviderForAttachmentURL:error:](self, "_dataProviderForAttachmentURL:error:", [a3 url], &v24);
  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    arrayAccessQueue = self->_arrayAccessQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__MFAttachmentManager_fetchDataSynchronouslyForAttachment___block_invoke;
    v11[3] = &unk_2798B70D8;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = v6;
    v11[7] = &v18;
    v11[8] = &v12;
    dispatch_sync(arrayAccessQueue, v11);
    v8 = [MEMORY[0x277CCACC8] isMainThread];
    v9 = v13[5];
    if (v8)
    {
      if (([v9 tryLockWhenCondition:1] & 1) == 0)
      {
        if ([objc_msgSend(MEMORY[0x277D07148] "currentDevice")])
        {
          v10 = MFLogGeneral();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [MFAttachmentManager fetchDataSynchronouslyForAttachment:v10];
          }
        }

        v19[5] = 0;
        goto LABEL_12;
      }
    }

    else
    {
      [v9 lockWhenCondition:1];
    }

    [v13[5] unlock];
LABEL_12:
    if (v5)
    {
      v5[2](v5, [v19[5] data], 0);
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
    goto LABEL_15;
  }

  if (v5)
  {
    v5[2](v5, 0, v24);
  }

LABEL_15:
}

uint64_t __59__MFAttachmentManager_fetchDataSynchronouslyForAttachment___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _fetchDataForAttachment:*(a1 + 40) withProvider:*(a1 + 48) syncLock:*(*(a1 + 64) + 8) + 40];
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

- (void)_fetchCompletedForAttachment:(id)a3 error:(id)a4
{
  arrayAccessQueue = self->_arrayAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke;
  block[3] = &unk_2798B70B0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(arrayAccessQueue, block);
}

void __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{objc_msgSend(*(a1 + 40), "url")), "copy"}];
  if ([*(a1 + 40) url])
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_INFO, "removing attachment %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 24) removeObjectForKey:{objc_msgSend(*(a1 + 40), "url")}];
  }

  v5 = [v2 objectForKey:@"MFAttachmentAttachmentKey"];
  v6 = [v2 objectForKey:@"MFAttachmentPrimaryConsumerKey"];
  if (*(a1 + 48))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 data];
  }

  v8 = [v5 ef_partition:&__block_literal_global_85];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v21 = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_2;
  v22 = &unk_2798B7120;
  v23 = *(a1 + 48);
  v24 = v7;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 first];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v21(v20, *(*(&v16 + 1) + 8 * v13++));
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v11);
  }

  if ([objc_msgSend(v8 "second")])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_3;
    v15[3] = &unk_2798B7148;
    v15[4] = v8;
    v15[5] = v20;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [a2 downloadProgress];
  if (*(a1 + 32))
  {
    [v4 cancel];
  }

  else
  {
    [v4 setCompletedUnitCount:{objc_msgSend(v4, "totalUnitCount")}];
  }

  if ([a2 fetchCompletionBlock])
  {
    v5 = [a2 fetchCompletionBlock];
    (*(v5 + 16))(v5, *(a1 + 40), *(a1 + 32));
    [a2 setFetchCompletionBlock:0];
  }

  return [a2 resetProgress];
}

uint64_t __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) second];
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))();
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelFetchForAttachment:(id)a3
{
  arrayAccessQueue = self->_arrayAccessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke;
  v4[3] = &unk_2798B61E8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(arrayAccessQueue, v4);
}

uint64_t __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = [*(*(a1 + 32) + 24) objectForKey:{objc_msgSend(*(a1 + 40), "url")}];
  if (result)
  {
    v3 = result;
    if ([*(a1 + 40) fetchCompletionBlock])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke_2;
      block[3] = &unk_2798B61C0;
      block[4] = *(a1 + 40);
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }

    [*(a1 + 40) resetProgress];
    v4 = [v3 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    [v4 removeObjectIdenticalTo:*(a1 + 40)];
    result = [v4 count];
    if (!result)
    {
      [objc_msgSend(v3 objectForKeyedSubscript:{@"MFAttachmentMonitorKey", "cancel"}];
      v5 = MFLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v10 = v6;
        _os_log_impl(&dword_258BDA000, v5, OS_LOG_TYPE_INFO, "removing attachment %@", buf, 0xCu);
      }

      result = [*(*(a1 + 32) + 24) removeObjectForKey:{objc_msgSend(*(a1 + 40), "url")}];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __48__MFAttachmentManager_cancelFetchForAttachment___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchCompletionBlock];
  (*(v2 + 16))(v2, 0, [MFError errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:@"Download Canceled." title:@"Download Canceled" userInfo:0]);
  v3 = *(a1 + 32);

  return [v3 setFetchCompletionBlock:0];
}

- (void)setContentID:(id)a3 forAttachment:(id)a4
{
  v5 = a3;
  if ([a3 hasPrefix:@"<"])
  {
    v5 = [v5 substringFromIndex:1];
  }

  if ([v5 hasSuffix:@">"])
  {
    v5 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];
  }

  [(MFAttachmentManager *)self setMetadataForAttachment:a4 toValue:v5 forKey:@"MFAttachmentContentIDKey"];
}

- (void)setMetadataForAttachment:(id)a3 toValue:(id)a4 forKey:(id)a5
{
  if ([a3 url])
  {
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    if (!metadata)
    {
      metadata = objc_alloc_init(MEMORY[0x277CBEB38]);
      self->_metadata = metadata;
    }

    v10 = -[NSMutableDictionary objectForKeyedSubscript:](metadata, "objectForKeyedSubscript:", [a3 url]);
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_metadata, "setObject:forKeyedSubscript:", v10, [a3 url]);
    }

    [v10 setObject:a4 forKeyedSubscript:a5];
    metaDataLock = self->_metaDataLock;

    [(NSLock *)metaDataLock unlock];
  }
}

- (id)metadataForAttachment:(id)a3 forKey:(id)a4
{
  [(NSLock *)self->_metaDataLock lock];
  v7 = [-[NSMutableDictionary objectForKey:](self->_metadata objectForKey:{objc_msgSend(a3, "url")), "objectForKey:", a4}];
  [(NSLock *)self->_metaDataLock unlock];
  return v7;
}

- (void)clearMetadataForAttachment:(id)a3
{
  if ([a3 url])
  {
    [(NSLock *)self->_metaDataLock lock];
    -[NSMutableDictionary removeObjectForKey:](self->_metadata, "removeObjectForKey:", [a3 url]);
    metaDataLock = self->_metaDataLock;

    [(NSLock *)metaDataLock unlock];
  }
}

@end