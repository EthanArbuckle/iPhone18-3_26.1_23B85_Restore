@interface MFComposeAttachmentDataProvider
- (MFComposeAttachmentDataProvider)initWithData:(id)data forContentID:(id)d;
- (id)_dataForAttachment:(id)attachment;
- (id)dataForContentID:(id)d;
- (id)rawDataForContentID:(id)d;
- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message;
- (void)addData:(id)data forContentID:(id)d;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion;
- (void)recordPasteboardDataForAttachments:(id)attachments;
- (void)recordUndoDataForAttachments:(id)attachments;
- (void)removeDataForAttachment:(id)attachment;
@end

@implementation MFComposeAttachmentDataProvider

- (MFComposeAttachmentDataProvider)initWithData:(id)data forContentID:(id)d
{
  v8.receiver = self;
  v8.super_class = MFComposeAttachmentDataProvider;
  v6 = [(MFComposeAttachmentDataProvider *)&v8 init];
  if (v6)
  {
    v6->_attachmentsData = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MFComposeAttachmentDataProvider *)v6 addData:data forContentID:d];
    v6->_attachmentsPlaceholderData = objc_alloc_init(MEMORY[0x277CBEA78]);
    v6->_attachmentsPasteboardData = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v6->_attachmentsUndoData = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFComposeAttachmentDataProvider;
  [(MFComposeAttachmentDataProvider *)&v3 dealloc];
}

- (void)addData:(id)data forContentID:(id)d
{
  if (d && ([-[NSMutableDictionary objectForKey:](self->_attachmentsData objectForKey:{d), "isEqualToData:", data}] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277D24F00]) initWithData:data];
    [(NSMutableDictionary *)self->_attachmentsData setValue:v7 forKey:d];
  }
}

- (void)removeDataForAttachment:(id)attachment
{
  if (attachment)
  {
    lastPathComponent = [attachment lastPathComponent];
    [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:lastPathComponent];
    attachmentsPasteboardData = self->_attachmentsPasteboardData;

    [(NSMutableDictionary *)attachmentsPasteboardData removeObjectForKey:lastPathComponent];
  }
}

- (void)recordPasteboardDataForAttachments:(id)attachments
{
  v17 = *MEMORY[0x277D85DE8];
  if (attachments)
  {
    [(NSMutableDictionary *)self->_attachmentsPasteboardData removeAllObjects];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(attachments);
          }

          lastPathComponent = [*(*(&v12 + 1) + 8 * v8) lastPathComponent];
          if ([lastPathComponent length])
          {
            v10 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:lastPathComponent];
            if (v10)
            {
              [(NSMutableDictionary *)self->_attachmentsPasteboardData setObject:v10 forKey:lastPathComponent];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:lastPathComponent];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:lastPathComponent];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)recordUndoDataForAttachments:(id)attachments
{
  v17 = *MEMORY[0x277D85DE8];
  if (attachments)
  {
    [(NSMutableDictionary *)self->_attachmentsUndoData removeAllObjects];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(attachments);
          }

          lastPathComponent = [*(*(&v12 + 1) + 8 * v8) lastPathComponent];
          if ([lastPathComponent length])
          {
            v10 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:lastPathComponent];
            if (v10)
            {
              [(NSMutableDictionary *)self->_attachmentsUndoData setObject:v10 forKey:lastPathComponent];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:lastPathComponent];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:lastPathComponent];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [attachments countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_dataForAttachment:(id)attachment
{
  contentID = [attachment contentID];
  if (![contentID length])
  {
    contentID = [objc_msgSend(attachment "url")];
  }

  return [(MFComposeAttachmentDataProvider *)self dataForContentID:contentID];
}

- (id)dataForContentID:(id)d
{
  v5 = [(MFComposeAttachmentDataProvider *)self rawDataForContentID:?];
  if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v5])
  {
    v6 = [(NSCache *)self->_attachmentsPlaceholderData objectForKey:d];
    if (!v6)
    {
      v8 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v5];
      if (v8)
      {
        v6 = [MFAttachmentPlaceholder dataForPlaceholder:v8];
        if ([v6 length])
        {
          [(NSCache *)self->_attachmentsPlaceholderData setObject:v6 forKey:d];
        }
      }

      else
      {
        v6 = 0;
      }
    }

    if (v6)
    {
      return v6;
    }
  }

  return v5;
}

- (id)rawDataForContentID:(id)d
{
  v5 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:?];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_attachmentsPasteboardData objectForKey:d];
    if (!v5)
    {
      v5 = [(NSMutableDictionary *)self->_attachmentsUndoData objectForKey:d];
    }
  }

  v6 = v5;
  if (![v5 length])
  {
    v7 = MFLogGeneral();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        [(MFComposeAttachmentDataProvider *)d rawDataForContentID:v7];
      }
    }

    else if (v8)
    {
      [(MFComposeAttachmentDataProvider *)d rawDataForContentID:v7];
    }
  }

  return v6;
}

- (void)fetchDataForAttachment:(id)attachment consumer:(id)consumer progress:(id)progress completion:(id)completion
{
  v10 = [(MFComposeAttachmentDataProvider *)self _dataForAttachment:?];
  if (v10)
  {
    [consumer appendData:v10];
    encodedFileSize = [attachment encodedFileSize];
    [progress setCompletedUnitCount:encodedFileSize];
    [progress setTotalUnitCount:encodedFileSize];
    [consumer done];
    v12 = 0;
  }

  else
  {
    v12 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not find data for compose attachment." title:@"No Data Found" userInfo:0];
  }

  v13 = *(completion + 2);

  v13(completion, v10 != 0, v12, 0);
}

- (id)storageLocationForAttachment:(id)attachment withMessage:(id)message
{
  result = [message attachmentStorageLocation];
  if (result)
  {
    v6 = [result stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(attachment, "part"), "partNumber")}];
    fileName = [attachment fileName];

    return [v6 stringByAppendingPathComponent:fileName];
  }

  return result;
}

- (void)rawDataForContentID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258BDA000, a2, OS_LOG_TYPE_DEBUG, "Zero length attachment for [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)rawDataForContentID:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258BDA000, a2, OS_LOG_TYPE_DEBUG, "No attachment for [%@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end