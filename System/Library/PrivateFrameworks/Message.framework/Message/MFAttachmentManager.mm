@interface MFAttachmentManager
+ (OS_os_log)log;
+ (id)allManagers;
+ (id)defaultManager;
+ (id)supportedDocumentUTIs;
- (BOOL)_setupAttachment:(id)a3 withMimeBody:(id)a4 error:(id *)a5;
- (EDAttachmentPersistenceManager)persistenceManager;
- (MFAttachmentManager)init;
- (id)_contentIDForAttachment:(id)a3;
- (id)_createSynapseAttributesForAttachment:(id)a3;
- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4;
- (id)_fetchDataForAttachment:(id)a3 withProvider:(id)a4 request:(id)a5 syncLock:(id *)a6;
- (id)_filePathForAttachment:(id)a3;
- (id)attachmentForCID:(id)a3;
- (id)attachmentForContentID:(id)a3;
- (id)attachmentForContentID:(id)a3 preferredSchemes:(id)a4;
- (id)attachmentForItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7;
- (id)attachmentForTextAttachment:(id)a3 error:(id *)a4;
- (id)attachmentForURL:(id)a3 error:(id *)a4;
- (id)attachmentForURL:(id)a3 withMimeBody:(id)a4 error:(id *)a5;
- (id)attachmentsForURLs:(id)a3 error:(id *)a4;
- (id)fetchDataForAttachment:(id)a3;
- (id)metadataForAttachment:(id)a3 forKey:(id)a4;
- (id)prepareAttachmentForDisplay:(id)a3 fileURL:(id)a4;
- (void)_cancelFetchForAttachment:(id)a3;
- (void)_fetchCompletedForAttachment:(id)a3 error:(id)a4;
- (void)addProvider:(id)a3 forBaseURL:(id)a4;
- (void)clearMetadataForAttachment:(id)a3;
- (void)fetchDataSynchronouslyForAttachment:(id)a3;
- (void)insertMessageAttachmentMetadataToPersistence:(id)a3 forMessage:(id)a4;
- (void)removeProvider:(id)a3;
- (void)removeProviderForBaseURL:(id)a3;
- (void)setContentID:(id)a3 forAttachment:(id)a4;
- (void)setMetadataForAttachment:(id)a3 toValue:(id)a4 forKey:(id)a5;
@end

@implementation MFAttachmentManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__MFAttachmentManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_10 != -1)
  {
    dispatch_once(&log_onceToken_10, block);
  }

  v2 = log_log_10;

  return v2;
}

void __26__MFAttachmentManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_10;
  log_log_10 = v1;
}

+ (id)allManagers
{
  if (allManagers_onceToken != -1)
  {
    +[MFAttachmentManager allManagers];
  }

  v3 = allManagers_sAllManagers;

  return v3;
}

void __34__MFAttachmentManager_allManagers__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69AD790]);
  v1 = allManagers_sAllManagers;
  allManagers_sAllManagers = v0;
}

+ (id)defaultManager
{
  v2 = [a1 allManagers];
  v3 = [v2 allObjects];
  v4 = [v3 firstObject];

  return v4;
}

- (MFAttachmentManager)init
{
  v14.receiver = self;
  v14.super_class = MFAttachmentManager;
  v2 = [(MFAttachmentManager *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attachments = v2->_attachments;
    v2->_attachments = v3;

    v5 = dispatch_queue_create("com.apple.mail.attachmentManagerAttachmentArray", 0);
    arrayAccessQueue = v2->_arrayAccessQueue;
    v2->_arrayAccessQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
    metaDataLock = v2->_metaDataLock;
    v2->_metaDataLock = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.message.attachmentManager.imagescaling", v9);
    imageScalingQueue = v2->_imageScalingQueue;
    v2->_imageScalingQueue = v10;

    v2->_providersLock._os_unfair_lock_opaque = 0;
    v12 = [objc_opt_class() allManagers];
    [v12 addObject:v2];
  }

  return v2;
}

+ (id)supportedDocumentUTIs
{
  if (supportedDocumentUTIs_onceToken != -1)
  {
    +[MFAttachmentManager supportedDocumentUTIs];
  }

  v3 = sSupportedUTIs;

  return v3;
}

void __44__MFAttachmentManager_supportedDocumentUTIs__block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E6982D50] identifier];
  v5[0] = v0;
  v1 = [*MEMORY[0x1E6982E48] identifier];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = sSupportedUTIs;
  sSupportedUTIs = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)addProvider:(id)a3 forBaseURL:(id)a4
{
  v11 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_providersLock);
  if (!self->_providers)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    providers = self->_providers;
    self->_providers = v7;
  }

  os_unfair_lock_unlock(&self->_providersLock);
  v9 = [v6 absoluteString];
  if ([v9 hasSuffix:@"/"])
  {
    v10 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 1}];

    v9 = v10;
  }

  os_unfair_lock_lock(&self->_providersLock);
  [(NSMutableDictionary *)self->_providers setObject:v11 forKeyedSubscript:v9];
  os_unfair_lock_unlock(&self->_providersLock);
}

- (void)removeProviderForBaseURL:(id)a3
{
  v5 = [a3 absoluteString];
  if ([v5 hasSuffix:@"/"])
  {
    v4 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

    v5 = v4;
  }

  os_unfair_lock_lock(&self->_providersLock);
  if (v5)
  {
    [(NSMutableDictionary *)self->_providers setObject:0 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&self->_providersLock);
}

- (void)removeProvider:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_providersLock);
  v4 = [(NSMutableDictionary *)self->_providers allKeysForObject:v7];
  v5 = [v4 firstObject];

  os_unfair_lock_unlock(&self->_providersLock);
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    [(MFAttachmentManager *)self removeProviderForBaseURL:v6];
  }
}

- (EDAttachmentPersistenceManager)persistenceManager
{
  persistenceManager = self->_persistenceManager;
  if (!persistenceManager)
  {
    v4 = +[MFMailMessageLibrary defaultInstance];
    v5 = [v4 persistence];
    v6 = [v5 attachmentPersistenceManager];
    v7 = self->_persistenceManager;
    self->_persistenceManager = v6;

    persistenceManager = self->_persistenceManager;
  }

  return persistenceManager;
}

- (BOOL)_setupAttachment:(id)a3 withMimeBody:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 url];
  v11 = [v10 mf_isValidAttachmentURL];

  if ((v11 & 1) == 0)
  {
    if (a5)
    {
      [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Invalid attachment URL." title:@"Invalid Attachment URL" userInfo:0];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_27;
  }

  v12 = [v8 url];
  v13 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v12 error:a5];

  v14 = v13 != 0;
  if (v13)
  {
    if (v9 || ([v13 messageForAttachment:v8], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "messageBody"), v9 = objc_claimAutoreleasedReturnValue(), v15, v9))
    {
      v16 = [v8 url];
      v17 = [v16 mf_lastPartNumber];
      v18 = [v9 partWithNumber:v17];

      [v8 setPart:v18];
      v19 = [v8 fileName];

      if (v19)
      {
        if (!v18)
        {
          goto LABEL_20;
        }

LABEL_12:
        v22 = MEMORY[0x1E696AEC0];
        v23 = [v18 type];
        v24 = [v18 subtype];
        v25 = [v22 stringWithFormat:@"%@/%@", v23, v24];
        [v8 setMimeType:v25];

        [v8 setEncodedFileSize:{objc_msgSend(v18, "approximateRawSize")}];
        v26 = [v18 disposition];
        [v8 setDisposition:v26];

        v27 = [v18 bodyParameterForKey:@"x-mac-preserve-fidelity"];
        v46 = v27;
        if (v27)
        {
          [v8 setShouldPreserveFidelity:{objc_msgSend(v27, "caseInsensitiveCompare:", @"yes"}];
        }

        v28 = [v18 dispositionParameterForKey:@"remote-image"];
        if (v28)
        {
          [v8 setRemoteImageFileName:v28];
        }

        v29 = [v8 url];
        v30 = [v29 scheme];
        v31 = [v30 isEqualToString:@"x-attach-maildrop-image"];

        if (v31)
        {
          v32 = [v8 remoteImageFileName];
          [v8 setFileName:v32];

          v33 = [MEMORY[0x1E696AC08] defaultManager];
          v34 = [v8 path];
          v35 = [v33 attributesOfItemAtPath:v34 error:0];

          [v8 setEncodedFileSize:{objc_msgSend(v35, "fileSize")}];
        }

        goto LABEL_20;
      }

      v20 = [v18 attachmentFilename];
      v21 = [v20 ef_sanitizedFileName];
      [v8 setFileName:v21];

      if (v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_20:
    v36 = [(MFAttachmentManager *)self metadataForAttachment:v8 forKey:@"MFAttachmentContentIDKey"];
    if (!v36)
    {
      v36 = [v18 contentID];
      if (!v36)
      {
        v36 = [v18 bodyParameterForKey:*MEMORY[0x1E69AD630]];
        if (!v36)
        {
          v36 = [MEMORY[0x1E696AEC0] mf_messageIDStringWithDomainHint:0];
        }
      }

      [(MFAttachmentManager *)self setContentID:v36 forAttachment:v8];
    }
  }

LABEL_27:
  v37 = [v8 mimePartNumber];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v40 = [v8 part];
    v39 = [v40 partNumber];
  }

  v41 = EDAttachmentsLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v8 ef_publicDescription];
    v43 = [v8 fileName];
    *buf = 138543874;
    v48 = v42;
    v49 = 2112;
    v50 = v43;
    v51 = 2114;
    v52 = v39;
    _os_log_impl(&dword_1B0389000, v41, OS_LOG_TYPE_DEFAULT, "Setup attachment %{public}@, name = %@, part number = %{public}@", buf, 0x20u);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_filePathForAttachment:(id)a3
{
  v15[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 url];
  v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:0];

  if (v6)
  {
    v7 = [v6 messageForAttachment:v4];
    v8 = [v4 url];
    v9 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v8 error:0];

    v10 = [v9 storageLocationForAttachment:v4 withMessage:v7];
  }

  else
  {
    v11 = EDAttachmentsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v4 url];
      [(MFAttachmentManager *)v12 _filePathForAttachment:v15, v11];
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 mf_partNumbers];
  if ([v7 count])
  {
    v8 = [v6 URLByDeletingLastPathComponent];
    v9 = [v7 count];
    if (v9 == -1)
    {
LABEL_8:
      if (a4)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:&unk_1F27761A0];
        *a4 = v14 = 0;
      }

      else
      {
        v14 = 0;
      }

      v11 = v8;
    }

    else
    {
      v10 = v9 + 1;
      v11 = v8;
      while (1)
      {
        v12 = [v11 absoluteString];
        if ([v12 hasSuffix:@"/"])
        {
          v13 = [v12 substringToIndex:{objc_msgSend(v12, "length") - 1}];

          v12 = v13;
        }

        os_unfair_lock_lock(&self->_providersLock);
        v14 = [(NSMutableDictionary *)self->_providers objectForKeyedSubscript:v12];
        os_unfair_lock_unlock(&self->_providersLock);
        if (v14)
        {
          break;
        }

        v8 = [v11 URLByDeletingLastPathComponent];

        v11 = v8;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:&unk_1F2776178];
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)attachmentForURL:(id)a3 error:(id *)a4
{
  v4 = [(MFAttachmentManager *)self attachmentForURL:a3 withMimeBody:0 error:a4];

  return v4;
}

- (id)attachmentForURL:(id)a3 withMimeBody:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [[MFAttachment alloc] initWithURL:v8 attachmentManager:self];
    if (![(MFAttachmentManager *)self _setupAttachment:v10 withMimeBody:v9 error:a5])
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
  }

  v10 = v10;
  v11 = v10;
LABEL_6:

  return v11;
}

- (id)attachmentsForURLs:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(MFAttachmentManager *)self attachmentForURL:*(*(&v15 + 1) + 8 * i) error:a4, v15];
        if (!v12)
        {

          v7 = 0;
          goto LABEL_11;
        }

        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)attachmentForTextAttachment:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 mimePart];
  v8 = [v7 partURL];

  v9 = [v6 mimePart];
  v10 = [v9 mimeBody];

  v11 = [(MFAttachmentManager *)self attachmentForURL:v8 withMimeBody:v10 error:a4];

  return v11;
}

- (id)attachmentForCID:(id)a3
{
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  [v4 setQuery:0];
  v5 = [v4 path];
  v6 = [(MFAttachmentManager *)self attachmentForContentID:v5 preferredSchemes:0];

  return v6;
}

- (id)attachmentForContentID:(id)a3
{
  v3 = [(MFAttachmentManager *)self attachmentForContentID:a3 preferredSchemes:0];

  return v3;
}

- (id)attachmentForContentID:(id)a3 preferredSchemes:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__MFAttachmentManager_attachmentForContentID_preferredSchemes___block_invoke;
    v26[3] = &unk_1E7AA4DD0;
    v27 = v6;
    v9 = v21;
    v28 = v9;
    v10 = v7;
    v29 = v10;
    [(NSMutableDictionary *)metadata enumerateKeysAndObjectsUsingBlock:v26];
    [(NSLock *)self->_metaDataLock unlock];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v12)
    {
      v13 = *v23;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [*(*(&v22 + 1) + 8 * i) lowercaseString];
          v16 = [v9 objectForKeyedSubscript:v15];

          if (v16)
          {

            goto LABEL_13;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = [v9 allValues];
    v16 = [v17 firstObject];

    if (v16)
    {
LABEL_13:
      v18 = [(MFAttachmentManager *)self attachmentForURL:v16 error:0];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __63__MFAttachmentManager_attachmentForContentID_preferredSchemes___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [a3 objectForKeyedSubscript:@"MFAttachmentContentIDKey"];
  if (![*(a1 + 32) caseInsensitiveCompare:v7])
  {
    v8 = *(a1 + 40);
    v9 = [v14 scheme];
    v10 = [v9 lowercaseString];
    [v8 setObject:v14 forKeyedSubscript:v10];

    if (![*(a1 + 48) count] || (objc_msgSend(v14, "scheme"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 48), "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "caseInsensitiveCompare:", v12), v12, v11, !v13))
    {
      *a4 = 1;
    }
  }
}

- (void)insertMessageAttachmentMetadataToPersistence:(id)a3 forMessage:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v29 = a4;
  v5 = EDAttachmentsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v25;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Inserting message attachment metadata for attachments %{public}@ into the persistence", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v25;
  v6 = [(__CFString *)obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v6)
  {
    v28 = *v31;
    v7 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 mimePartNumber];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v13 = [v9 part];
          v12 = [v13 partNumber];
        }

        v14 = objc_alloc(MEMORY[0x1E699B590]);
        v15 = [v29 globalMessageID];
        v16 = [v9 fileName];
        v17 = [v9 mailDropMetadata];
        v18 = [v17 directUrl];
        v19 = [v14 initWithGlobalMessageID:v15 name:v16 mimePart:v12 attachmentID:0 remoteURL:v18];

        if (v7)
        {
          v20 = [(MFAttachmentManager *)self persistenceManager];
          v7 = [v20 persistAttachmentMetadata:v19];
        }

        else
        {
          v7 = 0;
        }
      }

      v6 = [(__CFString *)obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v6);

    if ((v7 & 1) == 0)
    {
      v21 = @"Failed";
      goto LABEL_20;
    }
  }

  else
  {
  }

  v21 = @"Succeeded";
LABEL_20:
  v22 = EDAttachmentsLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v29 globalMessageID];
    *buf = 138412802;
    v35 = v21;
    v36 = 2114;
    v37 = obj;
    v38 = 2048;
    v39 = v23;
    _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "%@ at inserting message attachment metadata for attachments %{public}@ for message %lld", buf, 0x20u);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_fetchDataForAttachment:(id)a3 withProvider:(id)a4 request:(id)a5 syncLock:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [(MFAttachmentManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFAttachmentManager _fetchDataForAttachment:withProvider:request:syncLock:]", "MFAttachmentManager.m", 407, "0");
}

- (id)fetchDataForAttachment:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 updatePath];
  v5 = [v4 fileURL];
  v6 = v5;
  if (v5 && [v5 checkResourceIsReachableAndReturnError:0])
  {
    v7 = EDAttachmentsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 url];
      *buf = 138412546;
      v40 = v6;
      v41 = 2114;
      v42 = v8;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Passing attachment data URL off disk for file %@ '%{public}@'.", buf, 0x16u);
    }

    v9 = [v4 fetchCompletionBlock];
    v10 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9, v6, 0, 0);
    }

    v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    [v11 setCompletedUnitCount:1];
  }

  else
  {
    v12 = EDAttachmentsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 url];
      [(MFAttachmentManager *)v6 fetchDataForAttachment:v13, buf, v12];
    }

    v14 = [v4 url];
    v36 = 0;
    v10 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v14 error:&v36];
    v6 = v36;

    if (v10)
    {
      v15 = [[_MFAttachmentActiveRequest alloc] initWithAttachment:v4];
      v16 = EDAttachmentsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v4 url];
        *v37 = 138412290;
        v38 = v17;
        _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Fetch data for attachment url: %@", v37, 0xCu);
      }

      arrayAccessQueue = self->_arrayAccessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke_108;
      block[3] = &unk_1E7AA4E20;
      block[4] = self;
      v19 = v4;
      v30 = v19;
      v31 = v10;
      v20 = v15;
      v32 = v20;
      dispatch_async(arrayAccessQueue, block);
      v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
      v21 = [(_MFAttachmentActiveRequest *)v20 downloadProgress];
      [v11 addChild:v21 withPendingUnitCount:1];

      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke_2;
      v27[3] = &unk_1E7AA26E0;
      v27[4] = self;
      v28 = v19;
      [v11 setCancellationHandler:v27];
    }

    else
    {
      v22 = [v4 fetchCompletionBlock];
      v20 = v22;
      if (v22)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke;
        v33[3] = &unk_1E7AA4DF8;
        v35 = v22;
        v34 = v6;
        dispatch_async(MEMORY[0x1E69E96A0], v33);
      }

      v23 = EDAttachmentsLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v4 url];
        [(MFAttachmentManager *)v24 fetchDataForAttachment:v37, v23];
      }

      v11 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)fetchDataSynchronouslyForAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 fetchCompletionBlock];
  [v4 setFetchCompletionBlock:0];
  v6 = [v4 url];
  v38 = 0;
  v7 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v6 error:&v38];
  v8 = v38;

  if (v7)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__8;
    v36 = __Block_byref_object_dispose__8;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__8;
    v30 = __Block_byref_object_dispose__8;
    v31 = 0;
    arrayAccessQueue = self->_arrayAccessQueue;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __59__MFAttachmentManager_fetchDataSynchronouslyForAttachment___block_invoke;
    v20 = &unk_1E7AA4E48;
    v10 = v4;
    v24 = &v32;
    v21 = v10;
    v22 = self;
    v23 = v7;
    v25 = &v26;
    dispatch_sync(arrayAccessQueue, &v17);
    if (![MEMORY[0x1E696AF00] isMainThread] || (EFIsRunningUnitTests() & 1) != 0)
    {
      [v27[5] lockWhenCondition:1];
    }

    else if (([v27[5] tryLockWhenCondition:1] & 1) == 0)
    {
      v11 = [MEMORY[0x1E699B7B0] currentDevice];
      v12 = [v11 isInternal];

      if (v12)
      {
        v13 = MFLogGeneral();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [MFAttachmentManager fetchDataSynchronouslyForAttachment:v13];
        }
      }

      v14 = v33[5];
      v33[5] = 0;

      goto LABEL_14;
    }

    [v27[5] unlock];
LABEL_14:
    if (v5)
    {
      v15 = [v10 fileURL];
      v16 = [v33[5] data];
      (v5)[2](v5, v15, v16, 0);
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);

    goto LABEL_17;
  }

  if (v5)
  {
    (v5)[2](v5, 0, 0, v8);
  }

LABEL_17:
}

void __59__MFAttachmentManager_fetchDataSynchronouslyForAttachment___block_invoke(void *a1)
{
  v2 = [[_MFAttachmentActiveRequest alloc] initWithAttachment:a1[4]];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v3 _fetchDataForAttachment:v4 withProvider:v5 request:v2 syncLock:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)_fetchCompletedForAttachment:(id)a3 error:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__8;
  v48 = __Block_byref_object_dispose__8;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__8;
  v42 = __Block_byref_object_dispose__8;
  v43 = 0;
  [v6 updatePathIfNeeded];
  arrayAccessQueue = self->_arrayAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke;
  block[3] = &unk_1E7AA4E70;
  v36 = &v44;
  block[4] = self;
  v9 = v6;
  v35 = v9;
  v37 = &v38;
  dispatch_sync(arrayAccessQueue, block);
  v10 = [v45[5] objectForKey:@"MFAttachmentPrimaryConsumerKey"];
  v23 = v10;
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 data];
  }

  v12 = [v39[5] ef_partition:&__block_literal_global_114];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_2;
  aBlock[3] = &unk_1E7AA4EB8;
  v13 = v7;
  v32 = v13;
  v14 = v11;
  v33 = v14;
  v15 = _Block_copy(aBlock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = [v12 first];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v50 count:16];
  if (v17)
  {
    v18 = *v28;
    do
    {
      v19 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v15[2](v15, *(*(&v27 + 1) + 8 * v19++));
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v50 count:16];
    }

    while (v17);
  }

  v20 = [v12 second];
  v21 = [v20 count] == 0;

  if (!v21)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_3;
    v24[3] = &unk_1E7AA4EE0;
    v25 = v12;
    v26 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  v22 = *MEMORY[0x1E69E9840];
}

void __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) url];
  v4 = [v2 objectForKey:v3];
  v5 = [v4 copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 40) url];

  if (v8)
  {
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "#Attachments removing attachment %@", &v17, 0xCu);
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [*(a1 + 40) url];
    [v11 removeObjectForKey:v12];
  }

  v13 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:@"MFAttachmentAttachmentKey"];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *MEMORY[0x1E69E9840];
}

void __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 downloadProgress];
  v4 = v3;
  if (*(a1 + 32))
  {
    [v3 cancel];
  }

  else
  {
    [v3 setCompletedUnitCount:{objc_msgSend(v3, "totalUnitCount")}];
  }

  [v5 completeWithData:*(a1 + 40) error:*(a1 + 32)];
}

void __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) second];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        (*(*(a1 + 40) + 16))();
        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_cancelFetchForAttachment:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[MFAttachmentManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Canceling download for attachment %@", buf, 0xCu);
  }

  arrayAccessQueue = self->_arrayAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MFAttachmentManager__cancelFetchForAttachment___block_invoke;
  v9[3] = &unk_1E7AA26E0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(arrayAccessQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __49__MFAttachmentManager__cancelFetchForAttachment___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  v3 = [*(a1 + 40) url];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"MFAttachmentAttachmentKey"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __49__MFAttachmentManager__cancelFetchForAttachment___block_invoke_2;
    v21[3] = &unk_1E7AA4F08;
    v22 = *(a1 + 40);
    v6 = [v5 indexesOfObjectsPassingTest:v21];
    v7 = [v5 objectsAtIndexes:v6];
    [v5 removeObjectsAtIndexes:v6];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __49__MFAttachmentManager__cancelFetchForAttachment___block_invoke_3;
    v19 = &unk_1E7AA25C0;
    v8 = v7;
    v20 = v8;
    dispatch_sync(MEMORY[0x1E69E96A0], &v16);
    if (![v5 count])
    {
      v9 = [v4 objectForKeyedSubscript:@"MFAttachmentMonitorKey"];
      [v9 cancel];

      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 40);
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_INFO, "removing attachment %@", buf, 0xCu);
      }

      v12 = *(a1 + 40);
      v13 = *(*(a1 + 32) + 32);
      v14 = [v12 url];
      [v13 removeObjectForKey:v14];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

BOOL __49__MFAttachmentManager__cancelFetchForAttachment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 attachment];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __49__MFAttachmentManager__cancelFetchForAttachment___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    do
    {
      v4 = 0;
      do
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * v4);
        v6 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:@"Download Canceled." title:@"Download Canceled" userInfo:0, v8];
        [v5 completeWithData:0 error:v6];

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)attachmentForItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5 contentID:(id)a6 context:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  [(MFAttachmentManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFAttachmentManager attachmentForItemProvider:mimeType:fileName:contentID:context:]", "MFAttachmentManager.m", 599, "0");
}

- (void)setContentID:(id)a3 forAttachment:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v12 hasPrefix:@"<"])
  {
    v7 = [v12 substringFromIndex:1];

    v8 = v7;
  }

  else
  {
    v8 = v12;
  }

  v13 = v8;
  v9 = [v8 hasSuffix:@">"];
  v10 = v13;
  if (v9)
  {
    v11 = [v13 substringToIndex:{objc_msgSend(v13, "length") - 1}];

    v10 = v11;
  }

  v14 = v10;
  [(MFAttachmentManager *)self setMetadataForAttachment:v6 toValue:v10 forKey:@"MFAttachmentContentIDKey"];
}

- (id)_contentIDForAttachment:(id)a3
{
  v3 = [(MFAttachmentManager *)self metadataForAttachment:a3 forKey:@"MFAttachmentContentIDKey"];

  return v3;
}

- (void)setMetadataForAttachment:(id)a3 toValue:(id)a4 forKey:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v19 url];

  if (v10)
  {
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    if (!metadata)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = self->_metadata;
      self->_metadata = v12;

      metadata = self->_metadata;
    }

    v14 = [v19 url];
    v15 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:v14];

    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v17 = self->_metadata;
      v18 = [v19 url];
      [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];

      v15 = v16;
    }

    [v15 setObject:v8 forKeyedSubscript:v9];
    [(NSLock *)self->_metaDataLock unlock];
  }
}

- (id)metadataForAttachment:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSLock *)self->_metaDataLock lock];
  metadata = self->_metadata;
  v9 = [v6 url];
  v10 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:v7];

  [(NSLock *)self->_metaDataLock unlock];

  return v11;
}

- (void)clearMetadataForAttachment:(id)a3
{
  v7 = a3;
  v4 = [v7 url];

  if (v4)
  {
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    v6 = [v7 url];
    [(NSMutableDictionary *)metadata removeObjectForKey:v6];

    [(NSLock *)self->_metaDataLock unlock];
  }
}

- (id)prepareAttachmentForDisplay:(id)a3 fileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 fileURL];
  }

  v10 = v9;
  v11 = [v6 fileUTType];
  if (v11)
  {
    v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(MFAttachmentManager *)self persistenceManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__MFAttachmentManager_prepareAttachmentForDisplay_fileURL___block_invoke;
  v17[3] = &unk_1E7AA4F30;
  v17[4] = self;
  v14 = v6;
  v18 = v14;
  v15 = [v13 addSynapseAttributesToAttachmentWithURL:v10 contentType:v12 usingGenerator:v17];

  return v15;
}

- (id)_createSynapseAttributesForAttachment:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 url];
  v19 = 0;
  v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:&v19];
  v7 = v19;

  if (v6)
  {
    v8 = [v6 messageForAttachment:v4];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E699B6E0]);
      v10 = [v8 senderAddressComment];
      v11 = [v8 firstSender];
      v12 = [v8 persistentID];
      v13 = [v8 dateReceived];
      v14 = [v9 initWithSenderAddressComment:v10 senderAddress:v11 messagePersistentID:v12 receivedDate:v13];
    }

    else
    {
      v10 = EDAttachmentsLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = [v4 url];
        [(MFAttachmentManager *)v16 _createSynapseAttributesForAttachment:buf, v10];
      }

      v14 = 0;
    }
  }

  else
  {
    v8 = EDAttachmentsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = [v4 url];
      [(MFAttachmentManager *)v15 _createSynapseAttributesForAttachment:v7, buf, v8];
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_filePathForAttachment:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0389000, a2, a3, "Failed to create a data provider that generates attachment file path for attachment url: %@", a2);
}

- (void)fetchDataForAttachment:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "No file %@ found at attachment data URL '%{public}@'", buf, 0x16u);
}

- (void)fetchDataForAttachment:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0389000, a2, a3, "Failed to create MFAttachmentDataProvider for attachment url: %@", a2);
}

- (void)_createSynapseAttributesForAttachment:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_1(&dword_1B0389000, a2, a3, "Not adding Synapse attributes - unable to find message for attachment %{public}@", a2);
}

- (void)_createSynapseAttributesForAttachment:(uint8_t *)buf .cold.2(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Not adding Synapse attributes - unable to find provider for attachment %{public}@ error %@", buf, 0x16u);
}

@end