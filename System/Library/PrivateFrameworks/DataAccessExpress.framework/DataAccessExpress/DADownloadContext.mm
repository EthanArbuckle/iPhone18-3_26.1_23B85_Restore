@interface DADownloadContext
- (DADownloadContext)initWithAttachmentUUID:(id)d accountID:(id)iD queue:(id)queue downloadProgressBlock:(id)block completionBlock:(id)completionBlock;
- (void)finishedWithError:(id)error;
- (void)updateProgressDownloadedByteCount:(int64_t)count totalByteCount:(int64_t)byteCount;
@end

@implementation DADownloadContext

- (DADownloadContext)initWithAttachmentUUID:(id)d accountID:(id)iD queue:(id)queue downloadProgressBlock:(id)block completionBlock:(id)completionBlock
{
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (!dCopy)
  {
    [DADownloadContext initWithAttachmentUUID:accountID:queue:downloadProgressBlock:completionBlock:];
  }

  if (!iDCopy)
  {
    [DADownloadContext initWithAttachmentUUID:accountID:queue:downloadProgressBlock:completionBlock:];
  }

  v18 = completionBlockCopy;
  v26.receiver = self;
  v26.super_class = DADownloadContext;
  v19 = [(DADownloadContext *)&v26 init];
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
  v23 = *MEMORY[0x277D85DE8];
  v7 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    attachmentUUID = self->_attachmentUUID;
    accountID = self->_accountID;
    *buf = 138413058;
    v16 = attachmentUUID;
    v17 = 2114;
    v18 = accountID;
    v19 = 2048;
    countCopy = count;
    v21 = 2048;
    byteCountCopy = byteCount;
    _os_log_impl(&dword_2243BD000, v7, OS_LOG_TYPE_DEBUG, "Download of attachment UUID %@ for accountID %{public}@ progress: %lld bytes of %lld", buf, 0x2Au);
  }

  if (self->_progressBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v11 = queue;
    }

    else
    {
      v11 = dispatch_get_global_queue(0, 0);
    }

    v12 = v11;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__DADownloadContext_updateProgressDownloadedByteCount_totalByteCount___block_invoke;
    block[3] = &unk_27851FEB0;
    block[4] = self;
    block[5] = count;
    block[6] = byteCount;
    dispatch_async(v11, block);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)finishedWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    attachmentUUID = self->_attachmentUUID;
    accountID = self->_accountID;
    *buf = 138412546;
    v15 = attachmentUUID;
    v16 = 2114;
    v17 = accountID;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Download of attachment UUID %@ for account %{public}@ completed.", buf, 0x16u);
  }

  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v9 = queue;
    }

    else
    {
      v9 = dispatch_get_global_queue(0, 0);
    }

    v10 = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__DADownloadContext_finishedWithError___block_invoke;
    v12[3] = &unk_27851FED8;
    v12[4] = self;
    v13 = errorCopy;
    dispatch_async(v10, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __39__DADownloadContext_finishedWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v2[1];
  v4 = v2[2];
  return (*(v2[5] + 16))();
}

@end