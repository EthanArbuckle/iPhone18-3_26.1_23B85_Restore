@interface MFComposeAttachmentDataProvider
- (MFComposeAttachmentDataProvider)initWithAttachmentDataItemProvider:(id)provider forContentID:(id)d;
- (MFComposeAttachmentDataProvider)initWithData:(id)data forContentID:(id)d;
- (id)_dataForAttachment:(id)attachment;
- (id)dataForContentID:(id)d;
- (id)rawDataForContentID:(id)d;
- (void)_commonInitWithDataProvider:(id)provider forContentID:(id)d;
- (void)addData:(id)data forContentID:(id)d;
- (void)addDataItemProvider:(id)provider forContentID:(id)d;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
- (void)removeDataForAttachment:(id)attachment;
@end

@implementation MFComposeAttachmentDataProvider

- (MFComposeAttachmentDataProvider)initWithData:(id)data forContentID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MFComposeAttachmentDataProvider;
  v8 = [(MFComposeAttachmentDataProvider *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attachmentsData = v8->_attachmentsData;
    v8->_attachmentsData = v9;

    [(MFComposeAttachmentDataProvider *)v8 addData:dataCopy forContentID:dCopy];
    [(MFComposeAttachmentDataProvider *)v8 _commonInitWithDataProvider:dataCopy forContentID:dCopy];
  }

  return v8;
}

- (MFComposeAttachmentDataProvider)initWithAttachmentDataItemProvider:(id)provider forContentID:(id)d
{
  providerCopy = provider;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MFComposeAttachmentDataProvider;
  v8 = [(MFComposeAttachmentDataProvider *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attachmentsData = v8->_attachmentsData;
    v8->_attachmentsData = v9;

    [(MFComposeAttachmentDataProvider *)v8 addDataItemProvider:providerCopy forContentID:dCopy];
    [(MFComposeAttachmentDataProvider *)v8 _commonInitWithDataProvider:providerCopy forContentID:dCopy];
  }

  return v8;
}

- (void)_commonInitWithDataProvider:(id)provider forContentID:(id)d
{
  v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  attachmentsPlaceholderData = self->_attachmentsPlaceholderData;
  self->_attachmentsPlaceholderData = v5;
}

- (void)addData:(id)data forContentID:(id)d
{
  dataCopy = data;
  dCopy = d;
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:dCopy];
    v8 = [v7 isEqualToData:dataCopy];

    if ((v8 & 1) == 0)
    {
      v9 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithData:dataCopy];
      [(NSMutableDictionary *)self->_attachmentsData setValue:v9 forKey:dCopy];
    }
  }
}

- (void)addDataItemProvider:(id)provider forContentID:(id)d
{
  providerCopy = provider;
  dCopy = d;
  if (dCopy)
  {
    v7 = [(NSMutableDictionary *)self->_attachmentsData objectForKeyedSubscript:dCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & (v7 != providerCopy)) == 1)
    {
      [(NSMutableDictionary *)self->_attachmentsData setValue:providerCopy forKey:dCopy];
    }
  }
}

- (void)removeDataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (attachmentCopy)
  {
    v6 = attachmentCopy;
    lastPathComponent = [attachmentCopy lastPathComponent];
    [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:lastPathComponent];

    attachmentCopy = v6;
  }
}

- (id)_dataForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  contentID = [attachmentCopy contentID];
  if (![contentID length])
  {
    v6 = [attachmentCopy url];
    lastPathComponent = [v6 lastPathComponent];

    contentID = lastPathComponent;
  }

  v8 = [(MFComposeAttachmentDataProvider *)self dataForContentID:contentID];

  return v8;
}

- (id)dataForContentID:(id)d
{
  dCopy = d;
  v5 = [(MFComposeAttachmentDataProvider *)self rawDataForContentID:dCopy];
  if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v5])
  {
    v6 = [(NSCache *)self->_attachmentsPlaceholderData objectForKey:dCopy];
    if (v6)
    {
      goto LABEL_3;
    }

    v9 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v5];
    if (v9)
    {
      v6 = [MFAttachmentPlaceholder dataForPlaceholder:v9];
      if ([v6 length])
      {
        [(NSCache *)self->_attachmentsPlaceholderData setObject:v6 forKey:dCopy];
      }

      if (v6)
      {
LABEL_3:
        v7 = v6;

        v5 = v7;
      }
    }
  }

  return v5;
}

- (id)rawDataForContentID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:dCopy];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__10;
  v23 = __Block_byref_object_dispose__10;
  v24 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    registeredTypeIdentifiers = [v6 registeredTypeIdentifiers];
    firstObject = [registeredTypeIdentifiers firstObject];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __55__MFComposeAttachmentDataProvider_rawDataForContentID___block_invoke;
    v16 = &unk_1E7AA5320;
    v18 = &v19;
    v9 = dCopy;
    v17 = v9;
    v10 = [v6 loadDataRepresentationForTypeIdentifier:firstObject completionHandler:&v13];

    [(NSMutableDictionary *)self->_attachmentsData setObject:v20[5] forKeyedSubscript:v9, v13, v14, v15, v16];
LABEL_3:

    goto LABEL_5;
  }

  objc_storeStrong(v20 + 5, v5);
  if (![v20[5] length])
  {
    if (v20[5])
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(MFComposeAttachmentDataProvider *)dCopy rawDataForContentID:v6];
      }
    }

    else
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(MFComposeAttachmentDataProvider *)dCopy rawDataForContentID:v6];
      }
    }

    goto LABEL_3;
  }

LABEL_5:
  v11 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __55__MFComposeAttachmentDataProvider_rawDataForContentID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E69AD6B0]) initWithData:v5];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (v6)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__MFComposeAttachmentDataProvider_rawDataForContentID___block_invoke_cold_1(a1, v7, v11);
    }
  }
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  attachmentCopy = attachment;
  consumerCopy = consumer;
  progressCopy = progress;
  completionCopy = completion;
  v13 = [(MFComposeAttachmentDataProvider *)self _dataForAttachment:attachmentCopy];
  if (v13)
  {
    [consumerCopy appendData:v13];
    encodedFileSize = [attachmentCopy encodedFileSize];
    [progressCopy setCompletedUnitCount:encodedFileSize];
    [progressCopy setTotalUnitCount:encodedFileSize];
    v15 = 0;
    [consumerCopy done];
  }

  else
  {
    v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not find data for compose attachment." title:@"No Data Found" userInfo:0];
  }

  completionCopy[2](completionCopy, v13 != 0, v15, 0);
}

- (void)rawDataForContentID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "Zero length attachment for [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)rawDataForContentID:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0389000, a2, OS_LOG_TYPE_DEBUG, "No attachment for [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __55__MFComposeAttachmentDataProvider_rawDataForContentID___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "failed to get attachment data for [%@], error:%@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end