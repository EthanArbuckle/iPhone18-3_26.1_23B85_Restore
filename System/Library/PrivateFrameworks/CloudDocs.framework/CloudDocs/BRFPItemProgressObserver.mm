@interface BRFPItemProgressObserver
- (BRFPItemProgressObserver)initWithFPItem:(id)item queue:(id)queue;
- (NSNumber)downloadPercentCompleted;
- (NSNumber)uploadPercentCompleted;
- (id)description;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)start;
- (void)stop;
- (void)updateWithFPItem:(id)item;
@end

@implementation BRFPItemProgressObserver

- (NSNumber)uploadPercentCompleted
{
  uploadProgress = self->_uploadProgress;
  if (uploadProgress)
  {
    v4 = MEMORY[0x1E696AD98];
    [uploadProgress fractionCompleted];
    uploadProgress = [v4 numberWithDouble:v5 * 100.0];
    v2 = vars8;
  }

  return uploadProgress;
}

- (NSNumber)downloadPercentCompleted
{
  downloadProgress = self->_downloadProgress;
  if (downloadProgress)
  {
    v4 = MEMORY[0x1E696AD98];
    [downloadProgress fractionCompleted];
    downloadProgress = [v4 numberWithDouble:v5 * 100.0];
    v2 = vars8;
  }

  return downloadProgress;
}

- (BRFPItemProgressObserver)initWithFPItem:(id)item queue:(id)queue
{
  itemCopy = item;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = BRFPItemProgressObserver;
  v8 = [(BRFPItemProgressObserver *)&v16 init];
  if (v8)
  {
    itemID = [itemCopy itemID];
    fpItemID = v8->_fpItemID;
    v8->_fpItemID = itemID;

    objc_storeStrong(&v8->_queue, queue);
    downloadingProgress = [itemCopy downloadingProgress];
    downloadProgress = v8->_downloadProgress;
    v8->_downloadProgress = downloadingProgress;

    uploadingProgress = [itemCopy uploadingProgress];
    uploadProgress = v8->_uploadProgress;
    v8->_uploadProgress = uploadingProgress;
  }

  return v8;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@, ulp:%@, dlp:%@>", objc_opt_class(), selfCopy, selfCopy->_fpItemID, selfCopy->_uploadProgress, selfCopy->_downloadProgress];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)updateWithFPItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_V2(self->_queue);
  itemID = [itemCopy itemID];
  v6 = [itemID isEqualToItemID:self->_fpItemID];

  if ((v6 & 1) == 0)
  {
    [BRFPItemProgressObserver updateWithFPItem:];
  }

  downloadingProgress = [itemCopy downloadingProgress];
  downloadProgress = self->_downloadProgress;

  if (downloadingProgress != downloadProgress)
  {
    [(NSProgress *)self->_downloadProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    downloadingProgress2 = [itemCopy downloadingProgress];
    v10 = self->_downloadProgress;
    self->_downloadProgress = downloadingProgress2;

    [(BRFPItemProgressObserver *)self _startObservingProgress:self->_downloadProgress];
  }

  uploadingProgress = [itemCopy uploadingProgress];
  uploadProgress = self->_uploadProgress;

  if (uploadingProgress != uploadProgress)
  {
    [(NSProgress *)self->_uploadProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    uploadingProgress2 = [itemCopy uploadingProgress];
    v14 = self->_uploadProgress;
    self->_uploadProgress = uploadingProgress2;

    [(BRFPItemProgressObserver *)self _startObservingProgress:self->_uploadProgress];
  }
}

- (void)stop
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE2A9000, v0, v1, "[DEBUG] %@ - stopping%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: started twice%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__BRFPItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v10[3] = &unk_1E7A14A08;
  v10[4] = self;
  v11 = objectCopy;
  v9 = objectCopy;
  dispatch_async(queue, v10);
}

void __75__BRFPItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    v3 = *(a1 + 40);
    if (([v3 isIndeterminate] & 1) == 0)
    {
      (*(*(*(a1 + 32) + 40) + 16))();
    }
  }
}

- (void)updateWithFPItem:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRFPItemProgressObserver updateWithFPItem:]", 69);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: [item.itemID isEqualToItemID:_fpItemID]%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end