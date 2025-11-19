@interface BRFPItemProgressObserver
- (BRFPItemProgressObserver)initWithFPItem:(id)a3 queue:(id)a4;
- (NSNumber)downloadPercentCompleted;
- (NSNumber)uploadPercentCompleted;
- (id)description;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)start;
- (void)stop;
- (void)updateWithFPItem:(id)a3;
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

- (BRFPItemProgressObserver)initWithFPItem:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = BRFPItemProgressObserver;
  v8 = [(BRFPItemProgressObserver *)&v16 init];
  if (v8)
  {
    v9 = [v6 itemID];
    fpItemID = v8->_fpItemID;
    v8->_fpItemID = v9;

    objc_storeStrong(&v8->_queue, a4);
    v11 = [v6 downloadingProgress];
    downloadProgress = v8->_downloadProgress;
    v8->_downloadProgress = v11;

    v13 = [v6 uploadingProgress];
    uploadProgress = v8->_uploadProgress;
    v8->_uploadProgress = v13;
  }

  return v8;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@, ulp:%@, dlp:%@>", objc_opt_class(), v2, v2->_fpItemID, v2->_uploadProgress, v2->_downloadProgress];
  objc_sync_exit(v2);

  return v3;
}

- (void)updateWithFPItem:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [v4 itemID];
  v6 = [v5 isEqualToItemID:self->_fpItemID];

  if ((v6 & 1) == 0)
  {
    [BRFPItemProgressObserver updateWithFPItem:];
  }

  v7 = [v4 downloadingProgress];
  downloadProgress = self->_downloadProgress;

  if (v7 != downloadProgress)
  {
    [(NSProgress *)self->_downloadProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    v9 = [v4 downloadingProgress];
    v10 = self->_downloadProgress;
    self->_downloadProgress = v9;

    [(BRFPItemProgressObserver *)self _startObservingProgress:self->_downloadProgress];
  }

  v11 = [v4 uploadingProgress];
  uploadProgress = self->_uploadProgress;

  if (v11 != uploadProgress)
  {
    [(NSProgress *)self->_uploadProgress removeObserver:self forKeyPath:@"fractionCompleted"];
    v13 = [v4 uploadingProgress];
    v14 = self->_uploadProgress;
    self->_uploadProgress = v13;

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
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: started twice%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a4;
  queue = self->_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__BRFPItemProgressObserver_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v10[3] = &unk_1E7A14A08;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
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