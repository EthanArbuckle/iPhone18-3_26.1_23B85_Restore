@interface UploadDataStream
- (UploadDataStream)initWithLength:(unint64_t)a3 andThroughputDelegate:(id)a4;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (void)open;
- (void)signalProgress;
@end

@implementation UploadDataStream

- (UploadDataStream)initWithLength:(unint64_t)a3 andThroughputDelegate:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = UploadDataStream;
  v8 = [(UploadDataStream *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->remainingLength = a3;
    v8->status = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.networkQuality.uploadDataStreamCallBackQueue", v10);
    callBackQueue = v9->callBackQueue;
    v9->callBackQueue = v11;

    objc_storeStrong(&v9->_tputDelegate, a4);
    v9->stalling = 0;
  }

  return v9;
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->remainingLength >= a4)
  {
    remainingLength = a4;
  }

  else
  {
    remainingLength = self->remainingLength;
  }

  v7 = [(ThroughputDelegate *)self->_tputDelegate lastUpdate];
  memset(a3, 114, remainingLength);
  self->remainingLength -= remainingLength;
  v8 = [MEMORY[0x277CBEAA8] now];
  [v8 timeIntervalSinceDate:v7];
  v10 = v9;

  if (v10 > 0.4)
  {
    if (!self->stalling)
    {
      netqual_log_init();
      v11 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "[UploadDataStream read:maxLength:]";
        v16 = 1024;
        v17 = 68;
        v18 = 2112;
        v19 = self;
        _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - Stalling upload stream %@", &v14, 0x1Cu);
      }
    }

    self->stalling = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return remainingLength;
}

- (void)signalProgress
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->stalling)
  {
    v3 = [(UploadDataStream *)self delegate];

    if (v3)
    {
      netqual_log_init();
      v4 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = "[UploadDataStream signalProgress]";
        v9 = 1024;
        v10 = 89;
        v11 = 2112;
        v12 = self;
        _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - Signaling HasBytesAvailable on %@", &v7, 0x1Cu);
      }

      v5 = [(UploadDataStream *)self delegate];
      [v5 stream:self handleEvent:2];

      self->stalling = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)open
{
  self->status = 2;
  callBackQueue = self->callBackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__UploadDataStream_open__block_invoke;
  block[3] = &unk_279969378;
  block[4] = self;
  dispatch_async(callBackQueue, block);
}

void __24__UploadDataStream_open__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 stream:*(a1 + 32) handleEvent:1];

    v4 = [*(a1 + 32) delegate];
    [v4 stream:*(a1 + 32) handleEvent:2];
  }
}

@end