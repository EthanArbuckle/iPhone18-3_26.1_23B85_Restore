@interface ICPeerOutputStream
- (ICPeerOutputStream)initWithOutputStream:(id)a3;
- (void)dealloc;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)writeData;
- (void)writeMessageData:(id)a3;
@end

@implementation ICPeerOutputStream

- (ICPeerOutputStream)initWithOutputStream:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ICPeerOutputStream;
  v6 = [(ICPeerOutputStream *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputStream, a3);
    [v5 setDelegate:v7];
    v8 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v5 scheduleInRunLoop:v8 forMode:*MEMORY[0x277CBE640]];

    if (![v5 streamStatus])
    {
      [v5 open];
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

- (void)writeMessageData:(id)a3
{
  v4 = a3;
  v5 = [(ICPeerOutputStream *)self data];
  objc_sync_enter(v5);
  v8 = [v4 length];
  v6 = [(ICPeerOutputStream *)self data];
  [v6 appendBytes:&v8 length:4];

  v7 = [(ICPeerOutputStream *)self data];
  [v7 appendData:v4];

  objc_sync_exit(v5);
  [(ICPeerOutputStream *)self writeData];
}

- (void)writeData
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "ICPeerOutputStream error writing data: %@", buf, 0xCu);
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 > 3)
  {
    if (a4 != 4)
    {
      if (a4 == 8)
      {
        v9 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v6 streamError];
          v14 = 138412546;
          v15 = v6;
          v16 = 2112;
          v17 = v11;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Stream error occurred %@ %@.", &v14, 0x16u);
        }
      }

      else
      {
        if (a4 != 16)
        {
          goto LABEL_25;
        }

        v9 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v6;
          _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_DEFAULT, "Stream end %@.", &v14, 0xCu);
        }
      }

      [v6 close];
      v12 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v6 removeFromRunLoop:v12 forMode:*MEMORY[0x277CBE640]];

      outputStream = self->_outputStream;
      self->_outputStream = 0;

      goto LABEL_25;
    }

    v10 = os_log_create("com.apple.notes", "networking");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_DEFAULT, "Stream space available %@.", &v14, 0xCu);
    }

    [(ICPeerOutputStream *)self writeData];
  }

  else
  {
    switch(a4)
    {
      case 0uLL:
        v7 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v6;
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
          v15 = v6;
          v8 = "Stream open %@.";
          goto LABEL_19;
        }

        goto LABEL_20;
      case 2uLL:
        v7 = os_log_create("com.apple.notes", "networking");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v6;
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