@interface ICPeerOutputStream
- (ICPeerOutputStream)initWithOutputStream:(id)stream;
- (void)dealloc;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)writeData;
- (void)writeMessageData:(id)data;
@end

@implementation ICPeerOutputStream

- (ICPeerOutputStream)initWithOutputStream:(id)stream
{
  streamCopy = stream;
  v12.receiver = self;
  v12.super_class = ICPeerOutputStream;
  v6 = [(ICPeerOutputStream *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputStream, stream);
    [streamCopy setDelegate:v7];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [streamCopy scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

    if (![streamCopy streamStatus])
    {
      [streamCopy open];
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
    data = v7->_data;
    v7->_data = v9;
  }

  return v7;
}

- (void)dealloc
{
  [(NSOutputStream *)self->_outputStream setDelegate:0];
  [(NSOutputStream *)self->_outputStream close];
  outputStream = self->_outputStream;
  self->_outputStream = 0;

  v4.receiver = self;
  v4.super_class = ICPeerOutputStream;
  [(ICPeerOutputStream *)&v4 dealloc];
}

- (void)writeMessageData:(id)data
{
  dataCopy = data;
  data = [(ICPeerOutputStream *)self data];
  objc_sync_enter(data);
  v8 = [dataCopy length];
  data2 = [(ICPeerOutputStream *)self data];
  [data2 appendBytes:&v8 length:4];

  data3 = [(ICPeerOutputStream *)self data];
  [data3 appendData:dataCopy];

  objc_sync_exit(data);
  [(ICPeerOutputStream *)self writeData];
}

- (void)writeData
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "ICPeerOutputStream error writing data: %@", buf, 0xCu);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v18 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if (event > 3)
  {
    if (event != 4)
    {
      if (event == 8)
      {
        v9 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          streamError = [streamCopy streamError];
          v14 = 138412546;
          v15 = streamCopy;
          v16 = 2112;
          v17 = streamError;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Stream error occurred %@ %@.", &v14, 0x16u);
        }
      }

      else
      {
        if (event != 16)
        {
          goto LABEL_25;
        }

        v9 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = streamCopy;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Stream end %@.", &v14, 0xCu);
        }
      }

      [streamCopy close];
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [streamCopy removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

      outputStream = self->_outputStream;
      self->_outputStream = 0;

      goto LABEL_25;
    }

    v10 = os_log_create("com.apple.notes", "networking");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = streamCopy;
      _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEFAULT, "Stream space available %@.", &v14, 0xCu);
    }

    [(ICPeerOutputStream *)self writeData];
  }

  else
  {
    switch(event)
    {
      case 0uLL:
        v7 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = streamCopy;
          v8 = "Stream none event %@.";
          goto LABEL_19;
        }

LABEL_20:

        break;
      case 1uLL:
        v7 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = streamCopy;
          v8 = "Stream open %@.";
          goto LABEL_19;
        }

        goto LABEL_20;
      case 2uLL:
        v7 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = streamCopy;
          v8 = "Stream bytes available %@.";
LABEL_19:
          _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_DEFAULT, v8, &v14, 0xCu);
          goto LABEL_20;
        }

        goto LABEL_20;
    }
  }

LABEL_25:
}

@end