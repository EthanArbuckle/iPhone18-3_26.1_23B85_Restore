@interface MFComposeAttachmentDataProvider
- (MFComposeAttachmentDataProvider)initWithData:(id)a3 forContentID:(id)a4;
- (id)_dataForAttachment:(id)a3;
- (id)dataForContentID:(id)a3;
- (id)rawDataForContentID:(id)a3;
- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4;
- (void)addData:(id)a3 forContentID:(id)a4;
- (void)dealloc;
- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6;
- (void)recordPasteboardDataForAttachments:(id)a3;
- (void)recordUndoDataForAttachments:(id)a3;
- (void)removeDataForAttachment:(id)a3;
@end

@implementation MFComposeAttachmentDataProvider

- (MFComposeAttachmentDataProvider)initWithData:(id)a3 forContentID:(id)a4
{
  v8.receiver = self;
  v8.super_class = MFComposeAttachmentDataProvider;
  v6 = [(MFComposeAttachmentDataProvider *)&v8 init];
  if (v6)
  {
    v6->_attachmentsData = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(MFComposeAttachmentDataProvider *)v6 addData:a3 forContentID:a4];
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

- (void)addData:(id)a3 forContentID:(id)a4
{
  if (a4 && ([-[NSMutableDictionary objectForKey:](self->_attachmentsData objectForKey:{a4), "isEqualToData:", a3}] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277D24F00]) initWithData:a3];
    [(NSMutableDictionary *)self->_attachmentsData setValue:v7 forKey:a4];
  }
}

- (void)removeDataForAttachment:(id)a3
{
  if (a3)
  {
    v4 = [a3 lastPathComponent];
    [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:v4];
    attachmentsPasteboardData = self->_attachmentsPasteboardData;

    [(NSMutableDictionary *)attachmentsPasteboardData removeObjectForKey:v4];
  }
}

- (void)recordPasteboardDataForAttachments:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(NSMutableDictionary *)self->_attachmentsPasteboardData removeAllObjects];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(a3);
          }

          v9 = [*(*(&v12 + 1) + 8 * v8) lastPathComponent];
          if ([v9 length])
          {
            v10 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:v9];
            if (v10)
            {
              [(NSMutableDictionary *)self->_attachmentsPasteboardData setObject:v10 forKey:v9];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:v9];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)recordUndoDataForAttachments:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(NSMutableDictionary *)self->_attachmentsUndoData removeAllObjects];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(a3);
          }

          v9 = [*(*(&v12 + 1) + 8 * v8) lastPathComponent];
          if ([v9 length])
          {
            v10 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:v9];
            if (v10)
            {
              [(NSMutableDictionary *)self->_attachmentsUndoData setObject:v10 forKey:v9];
            }

            [(NSMutableDictionary *)self->_attachmentsData removeObjectForKey:v9];
            [(NSMutableDictionary *)self->_attachmentsPasteboardData removeObjectForKey:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_dataForAttachment:(id)a3
{
  v5 = [a3 contentID];
  if (![v5 length])
  {
    v5 = [objc_msgSend(a3 "url")];
  }

  return [(MFComposeAttachmentDataProvider *)self dataForContentID:v5];
}

- (id)dataForContentID:(id)a3
{
  v5 = [(MFComposeAttachmentDataProvider *)self rawDataForContentID:?];
  if ([MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:v5])
  {
    v6 = [(NSCache *)self->_attachmentsPlaceholderData objectForKey:a3];
    if (!v6)
    {
      v8 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:v5];
      if (v8)
      {
        v6 = [MFAttachmentPlaceholder dataForPlaceholder:v8];
        if ([v6 length])
        {
          [(NSCache *)self->_attachmentsPlaceholderData setObject:v6 forKey:a3];
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

- (id)rawDataForContentID:(id)a3
{
  v5 = [(NSMutableDictionary *)self->_attachmentsData objectForKey:?];
  if (!v5)
  {
    v5 = [(NSMutableDictionary *)self->_attachmentsPasteboardData objectForKey:a3];
    if (!v5)
    {
      v5 = [(NSMutableDictionary *)self->_attachmentsUndoData objectForKey:a3];
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
        [(MFComposeAttachmentDataProvider *)a3 rawDataForContentID:v7];
      }
    }

    else if (v8)
    {
      [(MFComposeAttachmentDataProvider *)a3 rawDataForContentID:v7];
    }
  }

  return v6;
}

- (void)fetchDataForAttachment:(id)a3 consumer:(id)a4 progress:(id)a5 completion:(id)a6
{
  v10 = [(MFComposeAttachmentDataProvider *)self _dataForAttachment:?];
  if (v10)
  {
    [a4 appendData:v10];
    v11 = [a3 encodedFileSize];
    [a5 setCompletedUnitCount:v11];
    [a5 setTotalUnitCount:v11];
    [a4 done];
    v12 = 0;
  }

  else
  {
    v12 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not find data for compose attachment." title:@"No Data Found" userInfo:0];
  }

  v13 = *(a6 + 2);

  v13(a6, v10 != 0, v12, 0);
}

- (id)storageLocationForAttachment:(id)a3 withMessage:(id)a4
{
  result = [a4 attachmentStorageLocation];
  if (result)
  {
    v6 = [result stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(a3, "part"), "partNumber")}];
    v7 = [a3 fileName];

    return [v6 stringByAppendingPathComponent:v7];
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