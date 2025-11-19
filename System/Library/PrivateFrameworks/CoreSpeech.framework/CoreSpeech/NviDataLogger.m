@interface NviDataLogger
- (NviDataLogger)initWithFilePath:(id)a3 appendHdr:(id)a4;
- (void)endRequest;
- (void)logData:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation NviDataLogger

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[NviDataLogger stream:handleEvent:]";
    v12 = 2048;
    v13 = a4;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s Got event! %lu\n", &v10, 0x16u);
  }

  if (a4 != 4)
  {
    if (a4 == 16)
    {
      [v5 close];
      v7 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v5 removeFromRunLoop:v7 forMode:*MEMORY[0x277CBE640]];
    }

    else
    {
      v8 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[NviDataLogger stream:handleEvent:]";
        v12 = 2048;
        v13 = a4;
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
  v4 = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSOutputStream *)oStream removeFromRunLoop:v4 forMode:*MEMORY[0x277CBE640]];

  v5 = self->_oStream;
  self->_oStream = 0;
}

- (void)logData:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSOutputStream *)self->_oStream hasSpaceAvailable])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v4];
    if (-[NSOutputStream write:maxLength:](self->_oStream, "write:maxLength:", [v5 cStringUsingEncoding:4], objc_msgSend(v5, "lengthOfBytesUsingEncoding:", 4)) == -1)
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

- (NviDataLogger)initWithFilePath:(id)a3 appendHdr:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = NviDataLogger;
  v8 = [(NviDataLogger *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:v6 append:0];
    oStream = v8->_oStream;
    v8->_oStream = v9;

    [(NSOutputStream *)v8->_oStream setDelegate:v8];
    v11 = v8->_oStream;
    v12 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(NSOutputStream *)v11 scheduleInRunLoop:v12 forMode:*MEMORY[0x277CBE640]];

    [(NSOutputStream *)v8->_oStream open];
    if ([(NSOutputStream *)v8->_oStream hasSpaceAvailable])
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n", v7];
      -[NSOutputStream write:maxLength:](v8->_oStream, "write:maxLength:", [v13 cStringUsingEncoding:4], objc_msgSend(v13, "lengthOfBytesUsingEncoding:", 4));
    }
  }

  return v8;
}

@end