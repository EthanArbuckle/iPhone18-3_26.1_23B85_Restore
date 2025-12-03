@interface MFAttachmentManager
+ (OS_os_log)log;
+ (id)allManagers;
+ (id)defaultManager;
+ (id)supportedDocumentUTIs;
- (BOOL)_setupAttachment:(id)attachment withMimeBody:(id)body error:(id *)error;
- (EDAttachmentPersistenceManager)persistenceManager;
- (MFAttachmentManager)init;
- (id)_contentIDForAttachment:(id)attachment;
- (id)_createSynapseAttributesForAttachment:(id)attachment;
- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error;
- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider request:(id)request syncLock:(id *)lock;
- (id)_filePathForAttachment:(id)attachment;
- (id)attachmentForCID:(id)d;
- (id)attachmentForContentID:(id)d;
- (id)attachmentForContentID:(id)d preferredSchemes:(id)schemes;
- (id)attachmentForItemProvider:(id)provider mimeType:(id)type fileName:(id)name contentID:(id)d context:(id)context;
- (id)attachmentForTextAttachment:(id)attachment error:(id *)error;
- (id)attachmentForURL:(id)l error:(id *)error;
- (id)attachmentForURL:(id)l withMimeBody:(id)body error:(id *)error;
- (id)attachmentsForURLs:(id)ls error:(id *)error;
- (id)fetchDataForAttachment:(id)attachment;
- (id)metadataForAttachment:(id)attachment forKey:(id)key;
- (id)prepareAttachmentForDisplay:(id)display fileURL:(id)l;
- (void)_cancelFetchForAttachment:(id)attachment;
- (void)_fetchCompletedForAttachment:(id)attachment error:(id)error;
- (void)addProvider:(id)provider forBaseURL:(id)l;
- (void)clearMetadataForAttachment:(id)attachment;
- (void)fetchDataSynchronouslyForAttachment:(id)attachment;
- (void)insertMessageAttachmentMetadataToPersistence:(id)persistence forMessage:(id)message;
- (void)removeProvider:(id)provider;
- (void)removeProviderForBaseURL:(id)l;
- (void)setContentID:(id)d forAttachment:(id)attachment;
- (void)setMetadataForAttachment:(id)attachment toValue:(id)value forKey:(id)key;
@end

@implementation MFAttachmentManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__MFAttachmentManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  allManagers = [self allManagers];
  allObjects = [allManagers allObjects];
  firstObject = [allObjects firstObject];

  return firstObject;
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
    allManagers = [objc_opt_class() allManagers];
    [allManagers addObject:v2];
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

- (void)addProvider:(id)provider forBaseURL:(id)l
{
  providerCopy = provider;
  lCopy = l;
  os_unfair_lock_lock(&self->_providersLock);
  if (!self->_providers)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    providers = self->_providers;
    self->_providers = v7;
  }

  os_unfair_lock_unlock(&self->_providersLock);
  absoluteString = [lCopy absoluteString];
  if ([absoluteString hasSuffix:@"/"])
  {
    v10 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 1}];

    absoluteString = v10;
  }

  os_unfair_lock_lock(&self->_providersLock);
  [(NSMutableDictionary *)self->_providers setObject:providerCopy forKeyedSubscript:absoluteString];
  os_unfair_lock_unlock(&self->_providersLock);
}

- (void)removeProviderForBaseURL:(id)l
{
  absoluteString = [l absoluteString];
  if ([absoluteString hasSuffix:@"/"])
  {
    v4 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 1}];

    absoluteString = v4;
  }

  os_unfair_lock_lock(&self->_providersLock);
  if (absoluteString)
  {
    [(NSMutableDictionary *)self->_providers setObject:0 forKeyedSubscript:absoluteString];
  }

  os_unfair_lock_unlock(&self->_providersLock);
}

- (void)removeProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&self->_providersLock);
  v4 = [(NSMutableDictionary *)self->_providers allKeysForObject:providerCopy];
  firstObject = [v4 firstObject];

  os_unfair_lock_unlock(&self->_providersLock);
  if (firstObject)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:firstObject];
    [(MFAttachmentManager *)self removeProviderForBaseURL:v6];
  }
}

- (EDAttachmentPersistenceManager)persistenceManager
{
  persistenceManager = self->_persistenceManager;
  if (!persistenceManager)
  {
    v4 = +[MFMailMessageLibrary defaultInstance];
    persistence = [v4 persistence];
    attachmentPersistenceManager = [persistence attachmentPersistenceManager];
    v7 = self->_persistenceManager;
    self->_persistenceManager = attachmentPersistenceManager;

    persistenceManager = self->_persistenceManager;
  }

  return persistenceManager;
}

- (BOOL)_setupAttachment:(id)attachment withMimeBody:(id)body error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  bodyCopy = body;
  v10 = [attachmentCopy url];
  mf_isValidAttachmentURL = [v10 mf_isValidAttachmentURL];

  if ((mf_isValidAttachmentURL & 1) == 0)
  {
    if (error)
    {
      [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Invalid attachment URL." title:@"Invalid Attachment URL" userInfo:0];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_27;
  }

  v12 = [attachmentCopy url];
  v13 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v12 error:error];

  v14 = v13 != 0;
  if (v13)
  {
    if (bodyCopy || ([v13 messageForAttachment:attachmentCopy], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "messageBody"), bodyCopy = objc_claimAutoreleasedReturnValue(), v15, bodyCopy))
    {
      v16 = [attachmentCopy url];
      mf_lastPartNumber = [v16 mf_lastPartNumber];
      v18 = [bodyCopy partWithNumber:mf_lastPartNumber];

      [attachmentCopy setPart:v18];
      fileName = [attachmentCopy fileName];

      if (fileName)
      {
        if (!v18)
        {
          goto LABEL_20;
        }

LABEL_12:
        v22 = MEMORY[0x1E696AEC0];
        type = [v18 type];
        subtype = [v18 subtype];
        v25 = [v22 stringWithFormat:@"%@/%@", type, subtype];
        [attachmentCopy setMimeType:v25];

        [attachmentCopy setEncodedFileSize:{objc_msgSend(v18, "approximateRawSize")}];
        disposition = [v18 disposition];
        [attachmentCopy setDisposition:disposition];

        v27 = [v18 bodyParameterForKey:@"x-mac-preserve-fidelity"];
        v46 = v27;
        if (v27)
        {
          [attachmentCopy setShouldPreserveFidelity:{objc_msgSend(v27, "caseInsensitiveCompare:", @"yes"}];
        }

        v28 = [v18 dispositionParameterForKey:@"remote-image"];
        if (v28)
        {
          [attachmentCopy setRemoteImageFileName:v28];
        }

        v29 = [attachmentCopy url];
        scheme = [v29 scheme];
        v31 = [scheme isEqualToString:@"x-attach-maildrop-image"];

        if (v31)
        {
          remoteImageFileName = [attachmentCopy remoteImageFileName];
          [attachmentCopy setFileName:remoteImageFileName];

          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          path = [attachmentCopy path];
          v35 = [defaultManager attributesOfItemAtPath:path error:0];

          [attachmentCopy setEncodedFileSize:{objc_msgSend(v35, "fileSize")}];
        }

        goto LABEL_20;
      }

      attachmentFilename = [v18 attachmentFilename];
      ef_sanitizedFileName = [attachmentFilename ef_sanitizedFileName];
      [attachmentCopy setFileName:ef_sanitizedFileName];

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
    contentID = [(MFAttachmentManager *)self metadataForAttachment:attachmentCopy forKey:@"MFAttachmentContentIDKey"];
    if (!contentID)
    {
      contentID = [v18 contentID];
      if (!contentID)
      {
        contentID = [v18 bodyParameterForKey:*MEMORY[0x1E69AD630]];
        if (!contentID)
        {
          contentID = [MEMORY[0x1E696AEC0] mf_messageIDStringWithDomainHint:0];
        }
      }

      [(MFAttachmentManager *)self setContentID:contentID forAttachment:attachmentCopy];
    }
  }

LABEL_27:
  mimePartNumber = [attachmentCopy mimePartNumber];
  v38 = mimePartNumber;
  if (mimePartNumber)
  {
    partNumber = mimePartNumber;
  }

  else
  {
    part = [attachmentCopy part];
    partNumber = [part partNumber];
  }

  v41 = EDAttachmentsLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [attachmentCopy ef_publicDescription];
    fileName2 = [attachmentCopy fileName];
    *buf = 138543874;
    v48 = ef_publicDescription;
    v49 = 2112;
    v50 = fileName2;
    v51 = 2114;
    v52 = partNumber;
    _os_log_impl(&dword_1B0389000, v41, OS_LOG_TYPE_DEFAULT, "Setup attachment %{public}@, name = %@, part number = %{public}@", buf, 0x20u);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_filePathForAttachment:(id)attachment
{
  v15[3] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = [attachmentCopy url];
  v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:0];

  if (v6)
  {
    v7 = [v6 messageForAttachment:attachmentCopy];
    v8 = [attachmentCopy url];
    v9 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v8 error:0];

    v10 = [v9 storageLocationForAttachment:attachmentCopy withMessage:v7];
  }

  else
  {
    v11 = EDAttachmentsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [attachmentCopy url];
      [(MFAttachmentManager *)v12 _filePathForAttachment:v15, v11];
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error
{
  lCopy = l;
  mf_partNumbers = [lCopy mf_partNumbers];
  if ([mf_partNumbers count])
  {
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    v9 = [mf_partNumbers count];
    if (v9 == -1)
    {
LABEL_8:
      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:&unk_1F27761A0];
        *error = v14 = 0;
      }

      else
      {
        v14 = 0;
      }

      v11 = uRLByDeletingLastPathComponent;
    }

    else
    {
      v10 = v9 + 1;
      v11 = uRLByDeletingLastPathComponent;
      while (1)
      {
        absoluteString = [v11 absoluteString];
        if ([absoluteString hasSuffix:@"/"])
        {
          v13 = [absoluteString substringToIndex:{objc_msgSend(absoluteString, "length") - 1}];

          absoluteString = v13;
        }

        os_unfair_lock_lock(&self->_providersLock);
        v14 = [(NSMutableDictionary *)self->_providers objectForKeyedSubscript:absoluteString];
        os_unfair_lock_unlock(&self->_providersLock);
        if (v14)
        {
          break;
        }

        uRLByDeletingLastPathComponent = [v11 URLByDeletingLastPathComponent];

        v11 = uRLByDeletingLastPathComponent;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"MFMessageErrorDomain" code:1030 userInfo:&unk_1F2776178];
    *error = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)attachmentForURL:(id)l error:(id *)error
{
  v4 = [(MFAttachmentManager *)self attachmentForURL:l withMimeBody:0 error:error];

  return v4;
}

- (id)attachmentForURL:(id)l withMimeBody:(id)body error:(id *)error
{
  lCopy = l;
  bodyCopy = body;
  if (lCopy)
  {
    v10 = [[MFAttachment alloc] initWithURL:lCopy attachmentManager:self];
    if (![(MFAttachmentManager *)self _setupAttachment:v10 withMimeBody:bodyCopy error:error])
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

- (id)attachmentsForURLs:(id)ls error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(lsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = lsCopy;
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

        v12 = [(MFAttachmentManager *)self attachmentForURL:*(*(&v15 + 1) + 8 * i) error:error, v15];
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

- (id)attachmentForTextAttachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  mimePart = [attachmentCopy mimePart];
  partURL = [mimePart partURL];

  mimePart2 = [attachmentCopy mimePart];
  mimeBody = [mimePart2 mimeBody];

  v11 = [(MFAttachmentManager *)self attachmentForURL:partURL withMimeBody:mimeBody error:error];

  return v11;
}

- (id)attachmentForCID:(id)d
{
  v4 = [MEMORY[0x1E696AF20] componentsWithURL:d resolvingAgainstBaseURL:0];
  [v4 setQuery:0];
  path = [v4 path];
  v6 = [(MFAttachmentManager *)self attachmentForContentID:path preferredSchemes:0];

  return v6;
}

- (id)attachmentForContentID:(id)d
{
  v3 = [(MFAttachmentManager *)self attachmentForContentID:d preferredSchemes:0];

  return v3;
}

- (id)attachmentForContentID:(id)d preferredSchemes:(id)schemes
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  schemesCopy = schemes;
  if ([dCopy length])
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __63__MFAttachmentManager_attachmentForContentID_preferredSchemes___block_invoke;
    v26[3] = &unk_1E7AA4DD0;
    v27 = dCopy;
    v9 = v21;
    v28 = v9;
    v10 = schemesCopy;
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

          lowercaseString = [*(*(&v22 + 1) + 8 * i) lowercaseString];
          firstObject = [v9 objectForKeyedSubscript:lowercaseString];

          if (firstObject)
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

    allValues = [v9 allValues];
    firstObject = [allValues firstObject];

    if (firstObject)
    {
LABEL_13:
      v18 = [(MFAttachmentManager *)self attachmentForURL:firstObject error:0];
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

- (void)insertMessageAttachmentMetadataToPersistence:(id)persistence forMessage:(id)message
{
  v41 = *MEMORY[0x1E69E9840];
  persistenceCopy = persistence;
  messageCopy = message;
  v5 = EDAttachmentsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = persistenceCopy;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Inserting message attachment metadata for attachments %{public}@ into the persistence", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = persistenceCopy;
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
        mimePartNumber = [v9 mimePartNumber];
        v11 = mimePartNumber;
        if (mimePartNumber)
        {
          partNumber = mimePartNumber;
        }

        else
        {
          part = [v9 part];
          partNumber = [part partNumber];
        }

        v14 = objc_alloc(MEMORY[0x1E699B590]);
        globalMessageID = [messageCopy globalMessageID];
        fileName = [v9 fileName];
        mailDropMetadata = [v9 mailDropMetadata];
        directUrl = [mailDropMetadata directUrl];
        v19 = [v14 initWithGlobalMessageID:globalMessageID name:fileName mimePart:partNumber attachmentID:0 remoteURL:directUrl];

        if (v7)
        {
          persistenceManager = [(MFAttachmentManager *)self persistenceManager];
          v7 = [persistenceManager persistAttachmentMetadata:v19];
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
    globalMessageID2 = [messageCopy globalMessageID];
    *buf = 138412802;
    v35 = v21;
    v36 = 2114;
    v37 = obj;
    v38 = 2048;
    v39 = globalMessageID2;
    _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "%@ at inserting message attachment metadata for attachments %{public}@ for message %lld", buf, 0x20u);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_fetchDataForAttachment:(id)attachment withProvider:(id)provider request:(id)request syncLock:(id *)lock
{
  attachmentCopy = attachment;
  providerCopy = provider;
  requestCopy = request;
  [(MFAttachmentManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFAttachmentManager _fetchDataForAttachment:withProvider:request:syncLock:]", "MFAttachmentManager.m", 407, "0");
}

- (id)fetchDataForAttachment:(id)attachment
{
  v43 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  [attachmentCopy updatePath];
  fileURL = [attachmentCopy fileURL];
  v6 = fileURL;
  if (fileURL && [fileURL checkResourceIsReachableAndReturnError:0])
  {
    v7 = EDAttachmentsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [attachmentCopy url];
      *buf = 138412546;
      v40 = v6;
      v41 = 2114;
      v42 = v8;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Passing attachment data URL off disk for file %@ '%{public}@'.", buf, 0x16u);
    }

    fetchCompletionBlock = [attachmentCopy fetchCompletionBlock];
    v10 = fetchCompletionBlock;
    if (fetchCompletionBlock)
    {
      (*(fetchCompletionBlock + 16))(fetchCompletionBlock, v6, 0, 0);
    }

    v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
    [v11 setCompletedUnitCount:1];
  }

  else
  {
    v12 = EDAttachmentsLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [attachmentCopy url];
      [(MFAttachmentManager *)v6 fetchDataForAttachment:v13, buf, v12];
    }

    v14 = [attachmentCopy url];
    v36 = 0;
    v10 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v14 error:&v36];
    v6 = v36;

    if (v10)
    {
      v15 = [[_MFAttachmentActiveRequest alloc] initWithAttachment:attachmentCopy];
      v16 = EDAttachmentsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [attachmentCopy url];
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
      v19 = attachmentCopy;
      v30 = v19;
      v31 = v10;
      v20 = v15;
      v32 = v20;
      dispatch_async(arrayAccessQueue, block);
      v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
      downloadProgress = [(_MFAttachmentActiveRequest *)v20 downloadProgress];
      [v11 addChild:downloadProgress withPendingUnitCount:1];

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
      fetchCompletionBlock2 = [attachmentCopy fetchCompletionBlock];
      v20 = fetchCompletionBlock2;
      if (fetchCompletionBlock2)
      {
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __46__MFAttachmentManager_fetchDataForAttachment___block_invoke;
        v33[3] = &unk_1E7AA4DF8;
        v35 = fetchCompletionBlock2;
        v34 = v6;
        dispatch_async(MEMORY[0x1E69E96A0], v33);
      }

      v23 = EDAttachmentsLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [attachmentCopy url];
        [(MFAttachmentManager *)v24 fetchDataForAttachment:v37, v23];
      }

      v11 = 0;
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)fetchDataSynchronouslyForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  fetchCompletionBlock = [attachmentCopy fetchCompletionBlock];
  [attachmentCopy setFetchCompletionBlock:0];
  v6 = [attachmentCopy url];
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
    v10 = attachmentCopy;
    v24 = &v32;
    v21 = v10;
    selfCopy = self;
    v23 = v7;
    v25 = &v26;
    dispatch_sync(arrayAccessQueue, &v17);
    if (![MEMORY[0x1E696AF00] isMainThread] || (EFIsRunningUnitTests() & 1) != 0)
    {
      [v27[5] lockWhenCondition:1];
    }

    else if (([v27[5] tryLockWhenCondition:1] & 1) == 0)
    {
      currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
      isInternal = [currentDevice isInternal];

      if (isInternal)
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
    if (fetchCompletionBlock)
    {
      fileURL = [v10 fileURL];
      data = [v33[5] data];
      (fetchCompletionBlock)[2](fetchCompletionBlock, fileURL, data, 0);
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);

    goto LABEL_17;
  }

  if (fetchCompletionBlock)
  {
    (fetchCompletionBlock)[2](fetchCompletionBlock, 0, 0, v8);
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

- (void)_fetchCompletedForAttachment:(id)attachment error:(id)error
{
  v51 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  errorCopy = error;
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
  [attachmentCopy updatePathIfNeeded];
  arrayAccessQueue = self->_arrayAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke;
  block[3] = &unk_1E7AA4E70;
  v36 = &v44;
  block[4] = self;
  v9 = attachmentCopy;
  v35 = v9;
  v37 = &v38;
  dispatch_sync(arrayAccessQueue, block);
  v10 = [v45[5] objectForKey:@"MFAttachmentPrimaryConsumerKey"];
  v23 = v10;
  if (errorCopy)
  {
    data = 0;
  }

  else
  {
    data = [v10 data];
  }

  v12 = [v39[5] ef_partition:&__block_literal_global_114];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MFAttachmentManager__fetchCompletedForAttachment_error___block_invoke_2;
  aBlock[3] = &unk_1E7AA4EB8;
  v13 = errorCopy;
  v32 = v13;
  v14 = data;
  v33 = v14;
  v15 = _Block_copy(aBlock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  first = [v12 first];
  v17 = [first countByEnumeratingWithState:&v27 objects:v50 count:16];
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
          objc_enumerationMutation(first);
        }

        v15[2](v15, *(*(&v27 + 1) + 8 * v19++));
      }

      while (v17 != v19);
      v17 = [first countByEnumeratingWithState:&v27 objects:v50 count:16];
    }

    while (v17);
  }

  second = [v12 second];
  v21 = [second count] == 0;

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

- (void)_cancelFetchForAttachment:(id)attachment
{
  v13 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = +[MFAttachmentManager log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = attachmentCopy;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Canceling download for attachment %@", buf, 0xCu);
  }

  arrayAccessQueue = self->_arrayAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MFAttachmentManager__cancelFetchForAttachment___block_invoke;
  v9[3] = &unk_1E7AA26E0;
  v9[4] = self;
  v10 = attachmentCopy;
  v7 = attachmentCopy;
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

- (id)attachmentForItemProvider:(id)provider mimeType:(id)type fileName:(id)name contentID:(id)d context:(id)context
{
  providerCopy = provider;
  typeCopy = type;
  nameCopy = name;
  dCopy = d;
  contextCopy = context;
  [(MFAttachmentManager *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFAttachmentManager attachmentForItemProvider:mimeType:fileName:contentID:context:]", "MFAttachmentManager.m", 599, "0");
}

- (void)setContentID:(id)d forAttachment:(id)attachment
{
  dCopy = d;
  attachmentCopy = attachment;
  if ([dCopy hasPrefix:@"<"])
  {
    v7 = [dCopy substringFromIndex:1];

    v8 = v7;
  }

  else
  {
    v8 = dCopy;
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
  [(MFAttachmentManager *)self setMetadataForAttachment:attachmentCopy toValue:v10 forKey:@"MFAttachmentContentIDKey"];
}

- (id)_contentIDForAttachment:(id)attachment
{
  v3 = [(MFAttachmentManager *)self metadataForAttachment:attachment forKey:@"MFAttachmentContentIDKey"];

  return v3;
}

- (void)setMetadataForAttachment:(id)attachment toValue:(id)value forKey:(id)key
{
  attachmentCopy = attachment;
  valueCopy = value;
  keyCopy = key;
  v10 = [attachmentCopy url];

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

    v14 = [attachmentCopy url];
    v15 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:v14];

    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v17 = self->_metadata;
      v18 = [attachmentCopy url];
      [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];

      v15 = v16;
    }

    [v15 setObject:valueCopy forKeyedSubscript:keyCopy];
    [(NSLock *)self->_metaDataLock unlock];
  }
}

- (id)metadataForAttachment:(id)attachment forKey:(id)key
{
  attachmentCopy = attachment;
  keyCopy = key;
  [(NSLock *)self->_metaDataLock lock];
  metadata = self->_metadata;
  v9 = [attachmentCopy url];
  v10 = [(NSMutableDictionary *)metadata objectForKeyedSubscript:v9];
  v11 = [v10 objectForKeyedSubscript:keyCopy];

  [(NSLock *)self->_metaDataLock unlock];

  return v11;
}

- (void)clearMetadataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v4 = [attachmentCopy url];

  if (v4)
  {
    [(NSLock *)self->_metaDataLock lock];
    metadata = self->_metadata;
    v6 = [attachmentCopy url];
    [(NSMutableDictionary *)metadata removeObjectForKey:v6];

    [(NSLock *)self->_metaDataLock unlock];
  }
}

- (id)prepareAttachmentForDisplay:(id)display fileURL:(id)l
{
  displayCopy = display;
  lCopy = l;
  v8 = lCopy;
  if (lCopy)
  {
    fileURL = lCopy;
  }

  else
  {
    fileURL = [displayCopy fileURL];
  }

  v10 = fileURL;
  fileUTType = [displayCopy fileUTType];
  if (fileUTType)
  {
    v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:fileUTType];
  }

  else
  {
    v12 = 0;
  }

  persistenceManager = [(MFAttachmentManager *)self persistenceManager];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __59__MFAttachmentManager_prepareAttachmentForDisplay_fileURL___block_invoke;
  v17[3] = &unk_1E7AA4F30;
  v17[4] = self;
  v14 = displayCopy;
  v18 = v14;
  v15 = [persistenceManager addSynapseAttributesToAttachmentWithURL:v10 contentType:v12 usingGenerator:v17];

  return v15;
}

- (id)_createSynapseAttributesForAttachment:(id)attachment
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v5 = [attachmentCopy url];
  v19 = 0;
  v6 = [(MFAttachmentManager *)self _dataProviderForAttachmentURL:v5 error:&v19];
  v7 = v19;

  if (v6)
  {
    v8 = [v6 messageForAttachment:attachmentCopy];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E699B6E0]);
      senderAddressComment = [v8 senderAddressComment];
      firstSender = [v8 firstSender];
      persistentID = [v8 persistentID];
      dateReceived = [v8 dateReceived];
      v14 = [v9 initWithSenderAddressComment:senderAddressComment senderAddress:firstSender messagePersistentID:persistentID receivedDate:dateReceived];
    }

    else
    {
      senderAddressComment = EDAttachmentsLog();
      if (os_log_type_enabled(senderAddressComment, OS_LOG_TYPE_ERROR))
      {
        v16 = [attachmentCopy url];
        [(MFAttachmentManager *)v16 _createSynapseAttributesForAttachment:buf, senderAddressComment];
      }

      v14 = 0;
    }
  }

  else
  {
    v8 = EDAttachmentsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = [attachmentCopy url];
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