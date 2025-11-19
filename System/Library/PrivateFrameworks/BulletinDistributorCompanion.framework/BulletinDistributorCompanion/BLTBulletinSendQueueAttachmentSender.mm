@interface BLTBulletinSendQueueAttachmentSender
- (BLTBulletinSendQueueAttachmentSender)init;
- (BOOL)sendAttachmentsWithSender:(id)a3 timeout:(id)a4 completion:(id)a5;
- (void)addAttachment:(id)a3 key:(id)a4;
@end

@implementation BLTBulletinSendQueueAttachmentSender

- (BLTBulletinSendQueueAttachmentSender)init
{
  v6.receiver = self;
  v6.super_class = BLTBulletinSendQueueAttachmentSender;
  v2 = [(BLTBulletinSendQueueAttachmentSender *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    urls = v2->_urls;
    v2->_urls = v3;
  }

  return v2;
}

- (void)addAttachment:(id)a3 key:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = objc_alloc_init(BLTBulletinSendQueueAttachmentInfo);
    [(BLTBulletinSendQueueAttachmentInfo *)v8 setUrl:v7];

    [(BLTBulletinSendQueueAttachmentInfo *)v8 setKey:v6];
    [(NSMutableArray *)self->_urls addObject:v8];
  }
}

- (BOOL)sendAttachmentsWithSender:(id)a3 timeout:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableArray *)self->_urls count];
  if (v11)
  {
    v24 = v11;
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [v12 setIdsMetadataFileURLType:1];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = self;
    obj = self->_urls;
    v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [v17 key];
          [v12 setIdsMetadataFileKey:v18];

          v19 = [v17 url];
          v20 = [v12 copy];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __85__BLTBulletinSendQueueAttachmentSender_sendAttachmentsWithSender_timeout_completion___block_invoke;
          v27[3] = &unk_278D31A20;
          v28 = v10;
          [v8 sendFileURL:v19 withTimeout:v9 extraMetadata:v20 responseHandlers:0 didSend:v27 didQueue:0];
        }

        v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    [(NSMutableArray *)v25->_urls removeAllObjects];
    v11 = v24;
  }

  v21 = v11 != 0;

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __85__BLTBulletinSendQueueAttachmentSender_sendAttachmentsWithSender_timeout_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end