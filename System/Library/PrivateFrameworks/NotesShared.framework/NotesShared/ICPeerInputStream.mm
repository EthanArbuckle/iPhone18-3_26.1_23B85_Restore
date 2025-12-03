@interface ICPeerInputStream
- (ICPeerInputStream)initWithInputStream:(id)stream;
- (ICPeerInputStreamDelegate)delegate;
- (void)dealloc;
- (void)readDataFrom:(id)from;
- (void)startReadLength;
- (void)startReadMessage:(unint64_t)message;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation ICPeerInputStream

- (ICPeerInputStream)initWithInputStream:(id)stream
{
  streamCopy = stream;
  v10.receiver = self;
  v10.super_class = ICPeerInputStream;
  v6 = [(ICPeerInputStream *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputStream, stream);
    [streamCopy setDelegate:v7];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [streamCopy scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

    if (![streamCopy streamStatus])
    {
      [streamCopy open];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(NSInputStream *)self->_inputStream setDelegate:0];
  [(NSInputStream *)self->_inputStream close];
  inputStream = self->_inputStream;
  self->_inputStream = 0;

  v4.receiver = self;
  v4.super_class = ICPeerInputStream;
  [(ICPeerInputStream *)&v4 dealloc];
}

- (void)startReadLength
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:4];
  [(ICPeerInputStream *)self setData:v3];

  [(ICPeerInputStream *)self setLength:0];
  [(ICPeerInputStream *)self setMaxLength:4];

  [(ICPeerInputStream *)self setIsMessage:0];
}

- (void)startReadMessage:(unint64_t)message
{
  v5 = [MEMORY[0x277CBEB28] dataWithLength:?];
  [(ICPeerInputStream *)self setData:v5];

  [(ICPeerInputStream *)self setLength:0];
  [(ICPeerInputStream *)self setMaxLength:message];

  [(ICPeerInputStream *)self setIsMessage:1];
}

- (void)readDataFrom:(id)from
{
  fromCopy = from;
  if (![fromCopy hasBytesAvailable])
  {
    goto LABEL_18;
  }

  v5 = *MEMORY[0x277CCA5B8];
  while (1)
  {
    maxLength = [(ICPeerInputStream *)self maxLength];
    v7 = maxLength - [(ICPeerInputStream *)self length];
    data = [(ICPeerInputStream *)self data];
    v9 = [fromCopy read:objc_msgSend(data maxLength:{"bytes") + -[ICPeerInputStream length](self, "length"), v7}];

    if (v9 >= 1)
    {
      [(ICPeerInputStream *)self setLength:[(ICPeerInputStream *)self length]+ v9];
      maxLength2 = [(ICPeerInputStream *)self maxLength];
      if (maxLength2 == [(ICPeerInputStream *)self length])
      {
        if ([(ICPeerInputStream *)self isMessage])
        {
          delegate = [(ICPeerInputStream *)self delegate];
          data2 = [(ICPeerInputStream *)self data];
          [delegate handleMessage:data2 fromInputStream:self];

          [(ICPeerInputStream *)self startReadLength];
        }

        else
        {
          data3 = [(ICPeerInputStream *)self data];
          v18 = *[data3 bytes];

          [(ICPeerInputStream *)self startReadMessage:v18];
        }
      }

      goto LABEL_12;
    }

    if (v9 < 0)
    {
      break;
    }

LABEL_12:
    if (([fromCopy hasBytesAvailable] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  streamError = [fromCopy streamError];
  domain = [streamError domain];
  if ([domain isEqualToString:v5])
  {
    streamError2 = [fromCopy streamError];
    code = [streamError2 code];

    if (code != 35)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

LABEL_15:
  v19 = os_log_create("com.apple.notes", "Multipeer");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(ICPeerInputStream *)fromCopy readDataFrom:v19];
  }

LABEL_18:
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v18 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if (event > 3)
  {
    switch(event)
    {
      case 4uLL:
        v10 = os_log_create("com.apple.notes", "Multipeer");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = streamCopy;
          v11 = "Stream space available %@.";
          goto LABEL_17;
        }

LABEL_18:

        goto LABEL_26;
      case 8uLL:
        v8 = os_log_create("com.apple.notes", "Multipeer");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = streamCopy;
          v9 = "Stream error occurred %@.";
          goto LABEL_24;
        }

        break;
      case 0x10uLL:
        v8 = os_log_create("com.apple.notes", "Multipeer");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v16 = 138412290;
          v17 = streamCopy;
          v9 = "Stream end %@.";
LABEL_24:
          _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, v9, &v16, 0xCu);
        }

        break;
      default:
        goto LABEL_26;
    }

    [streamCopy close];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [streamCopy removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

    inputStream = self->_inputStream;
    self->_inputStream = 0;

    delegate = [(ICPeerInputStream *)self delegate];
    [delegate didDisconnectInputStream:self];

    goto LABEL_26;
  }

  switch(event)
  {
    case 0uLL:
      v10 = os_log_create("com.apple.notes", "Multipeer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = streamCopy;
        v11 = "Stream none event %@.";
LABEL_17:
        _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_INFO, v11, &v16, 0xCu);
        goto LABEL_18;
      }

      goto LABEL_18;
    case 1uLL:
      v12 = os_log_create("com.apple.notes", "Multipeer");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = streamCopy;
        _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Stream open %@.", &v16, 0xCu);
      }

      [(ICPeerInputStream *)self startReadLength];
      break;
    case 2uLL:
      v7 = os_log_create("com.apple.notes", "Multipeer");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = streamCopy;
        _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Stream bytes available %@.", &v16, 0xCu);
      }

      [(ICPeerInputStream *)self readDataFrom:streamCopy];
      break;
  }

LABEL_26:
}

- (ICPeerInputStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)readDataFrom:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 streamError];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "ICPeerInputStream error reading data: %@", &v4, 0xCu);
}

@end