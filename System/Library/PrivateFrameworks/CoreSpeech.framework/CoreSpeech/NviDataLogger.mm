@interface NviDataLogger
- (NviDataLogger)initWithFilePath:(id)path appendHdr:(id)hdr;
- (void)endRequest;
- (void)logData:(id)data;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation NviDataLogger

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v14 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v6 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[NviDataLogger stream:handleEvent:]";
    v12 = 2048;
    eventCopy2 = event;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Got event! %lu\n", &v10, 0x16u);
  }

  if (event != 4)
  {
    if (event == 16)
    {
      [streamCopy close];
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      [streamCopy removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
    }

    else
    {
      v8 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[NviDataLogger stream:handleEvent:]";
        v12 = 2048;
        eventCopy2 = event;
        _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Got unhandled evt code %lu \n", &v10, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)endRequest
{
  [(NSOutputStream *)self->_oStream close];
  oStream = self->_oStream;
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSOutputStream *)oStream removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

  v5 = self->_oStream;
  self->_oStream = 0;
}

- (void)logData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(NSOutputStream *)self->_oStream hasSpaceAvailable])
  {
    dataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", dataCopy];
    if (-[NSOutputStream write:maxLength:](self->_oStream, "write:maxLength:", [dataCopy cStringUsingEncoding:4], objc_msgSend(dataCopy, "lengthOfBytesUsingEncoding:", 4)) == -1)
    {
      v6 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v9 = "[NviDataLogger logData:]";
        _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Unable to write to o/p stream ! \n", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NviDataLogger)initWithFilePath:(id)path appendHdr:(id)hdr
{
  pathCopy = path;
  hdrCopy = hdr;
  v15.receiver = self;
  v15.super_class = NviDataLogger;
  v8 = [(NviDataLogger *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:pathCopy append:0];
    oStream = v8->_oStream;
    v8->_oStream = v9;

    [(NSOutputStream *)v8->_oStream setDelegate:v8];
    v11 = v8->_oStream;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(NSOutputStream *)v11 scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

    [(NSOutputStream *)v8->_oStream open];
    if ([(NSOutputStream *)v8->_oStream hasSpaceAvailable])
    {
      hdrCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", hdrCopy];
      -[NSOutputStream write:maxLength:](v8->_oStream, "write:maxLength:", [hdrCopy cStringUsingEncoding:4], objc_msgSend(hdrCopy, "lengthOfBytesUsingEncoding:", 4));
    }
  }

  return v8;
}

@end