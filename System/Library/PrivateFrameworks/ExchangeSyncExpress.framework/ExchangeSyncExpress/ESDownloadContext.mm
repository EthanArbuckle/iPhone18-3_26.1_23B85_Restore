@interface ESDownloadContext
- (ESDownloadContext)initWithAttachmentUUID:(id)d accountID:(id)iD queue:(id)queue downloadProgressBlock:(id)block completionBlock:(id)completionBlock;
- (void)finishedWithError:(id)error;
- (void)updateProgressDownloadedByteCount:(int64_t)count totalByteCount:(int64_t)byteCount;
@end

@implementation ESDownloadContext

- (ESDownloadContext)initWithAttachmentUUID:(id)d accountID:(id)iD queue:(id)queue downloadProgressBlock:(id)block completionBlock:(id)completionBlock
{
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (!dCopy)
  {
    [ESDownloadContext initWithAttachmentUUID:accountID:queue:downloadProgressBlock:completionBlock:];
  }

  if (!iDCopy)
  {
    [ESDownloadContext initWithAttachmentUUID:accountID:queue:downloadProgressBlock:completionBlock:];
  }

  v18 = completionBlockCopy;
  v26.receiver = self;
  v26.super_class = ESDownloadContext;
  v19 = [(ESDownloadContext *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_attachmentUUID, d);
    objc_storeStrong(&v20->_accountID, iD);
    objc_storeStrong(&v20->_queue, queue);
    v21 = [blockCopy copy];
    progressBlock = v20->_progressBlock;
    v20->_progressBlock = v21;

    v23 = [v18 copy];
    completionBlock = v20->_completionBlock;
    v20->_completionBlock = v23;
  }

  return v20;
}

- (void)updateProgressDownloadedByteCount:(int64_t)count totalByteCount:(int64_t)byteCount
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    attachmentUUID = self->_attachmentUUID;
    accountID = self->_accountID;
    *buf = 138413058;
    v17 = attachmentUUID;
    v18 = 2112;
    v19 = accountID;
    v20 = 2048;
    countCopy = count;
    v22 = 2048;
    byteCountCopy = byteCount;
    _os_log_impl(&dword_24A1B8000, v7, v8, "Download of attachment UUID %@ for accountID %@ progress: %lld bytes of %lld", buf, 0x2Au);
  }

  if (self->_progressBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v12 = queue;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
    }

    v13 = v12;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__ESDownloadContext_updateProgressDownloadedByteCount_totalByteCount___block_invoke;
    block[3] = &unk_278FCFAF0;
    block[4] = self;
    block[5] = count;
    block[6] = byteCount;
    dispatch_async(v12, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)finishedWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    attachmentUUID = self->_attachmentUUID;
    accountID = self->_accountID;
    *buf = 138412546;
    v16 = attachmentUUID;
    v17 = 2112;
    v18 = accountID;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Download of attachment UUID %@ for account %@ completed.", buf, 0x16u);
  }

  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v10 = queue;
    }

    else
    {
      v10 = dispatch_get_global_queue(0, 0);
    }

    v11 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__ESDownloadContext_finishedWithError___block_invoke;
    v13[3] = &unk_278FCFB18;
    v13[4] = self;
    v14 = errorCopy;
    dispatch_async(v11, v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __39__ESDownloadContext_finishedWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v2[1];
  v4 = v2[2];
  return (*(v2[5] + 16))();
}

@end