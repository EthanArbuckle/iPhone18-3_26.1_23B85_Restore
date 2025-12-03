@interface ASTrafficLogger
+ (id)_logQueue;
- (void)_moveLogFileContentsAtPath:(id)path;
- (void)_openLookasideFile;
- (void)dealloc;
- (void)flushLogs;
- (void)logPlainTextData:(id)data;
- (void)logWBXMLData:(id)data;
@end

@implementation ASTrafficLogger

+ (id)_logQueue
{
  v2 = _logQueue_logQueue;
  if (!_logQueue_logQueue)
  {
    v3 = dispatch_queue_create("com.apple.dataaccess.ASTrafficLoggerQueue", 0);
    v4 = _logQueue_logQueue;
    _logQueue_logQueue = v3;

    v2 = _logQueue_logQueue;
  }

  return v2;
}

- (void)_openLookasideFile
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ASTrafficLogger.m" lineNumber:33 description:@"_lookasideFilePath is not nil in _openTempLogFile"];
}

- (void)_moveLogFileContentsAtPath:(id)path
{
  pathCopy = path;
  isOutgoingTraffic = self->_isOutgoingTraffic;
  v6 = +[ASTrafficLogger _logQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__ASTrafficLogger__moveLogFileContentsAtPath___block_invoke;
  v8[3] = &unk_278FC78C0;
  v10 = isOutgoingTraffic;
  v9 = pathCopy;
  v7 = pathCopy;
  dispatch_async(v6, v8);
}

void __46__ASTrafficLogger__moveLogFileContentsAtPath___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D03980] filenameWithBasename:@"ExchangeTraffic"];
  v3 = [objc_alloc(MEMORY[0x277D037E8]) initWithFilename:v2];
  if (*(a1 + 40))
  {
    v4 = @">>>>>>";
  }

  else
  {
    v4 = @"<<<<<<";
  }

  v5 = [@"\n" stringByAppendingString:v4];
  v6 = [v5 stringByAppendingString:@"END_BLOBD016177C-133C-4AA3-BCDC-DFF0C0E6BFE5\n"];
  v7 = [v5 stringByAppendingString:@"START_BLOB\n"];

  Current = CFAbsoluteTimeGetCurrent();
  v9 = CFCalendarCreateWithIdentifier(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE80]);
  if (v9)
  {
    v10 = v9;
    v21 = 0;
    v20 = 0;
    v18 = 0;
    v19 = 0;
    v11 = CFCalendarDecomposeAbsoluteTime(v9, Current, "yMdHms", &v21, &v20, &v19 + 4, &v19, &v18 + 4, &v18);
    CFRelease(v10);
    if (v11)
    {
      v12 = modf(Current, &__y);
      v13 = &off_24A14D000;
      LODWORD(v13) = vcvtmd_s64_f64(v12 * 1000.0);
      v14 = [v7 stringByAppendingFormat:@"<<%04d-%02d-%02d %02d:%02d:%02d.%03d>>", v21, v20, HIDWORD(v19), v19, HIDWORD(v18), v18, v13];

      v7 = v14;
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    [v3 slurpAndRemoveLookasideFile:v15 prefixString:v7 suffixString:v6];
  }

  else
  {
    v16 = objc_opt_new();
    [v16 appendBytes:objc_msgSend(v7 length:{"UTF8String"), objc_msgSend(v7, "lengthOfBytesUsingEncoding:", 4)}];
    [v16 appendBytes:objc_msgSend(v6 length:{"UTF8String"), objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4)}];
    [v3 logSnippet:v16];
  }
}

- (void)flushLogs
{
  if (self->_lookasideFileHandle || !self->_didFlushLogs)
  {
    self->_didFlushLogs = 1;
    [(ASTrafficLogger *)self _moveLogFileContentsAtPath:self->_lookasideFilePath];
    lookasideFileHandle = self->_lookasideFileHandle;
    self->_lookasideFileHandle = 0;

    lookasideFilePath = self->_lookasideFilePath;
    self->_lookasideFilePath = 0;
  }
}

- (void)dealloc
{
  [(ASTrafficLogger *)self flushLogs];
  v3.receiver = self;
  v3.super_class = ASTrafficLogger;
  [(ASTrafficLogger *)&v3 dealloc];
}

- (void)logWBXMLData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    if ([dataCopy length])
    {
      lookasideFileHandle = self->_lookasideFileHandle;
      if (lookasideFileHandle || !self->_lookasideFilePath && ([(ASTrafficLogger *)self _openLookasideFile], (lookasideFileHandle = self->_lookasideFileHandle) != 0))
      {
        write([(NSFileHandle *)lookasideFileHandle fileDescriptor], "BLOB_CHUNK", 0xAuLL);
        bytes = [v5 bytes];
        v8 = [v5 length];
        bzero(__buf, 0x480uLL);
        if (v8 >= 1)
        {
          v9 = bytes + v8;
          do
          {
            v10 = 0;
            v11 = __buf;
            do
            {
              v13 = bytes + v10 + 1;
              v12 = *(bytes + v10);
              v14 = (v12 >> 4) + 87;
              if (v12 < 0xA0)
              {
                LOBYTE(v14) = (*(bytes + v10) >> 4) | 0x30;
              }

              *v11 = v14;
              v15 = v12 & 0xF;
              v16 = v12 & 0xF | 0x30;
              v17 = (v12 & 0xF) + 87;
              if (v15 < 0xA)
              {
                v17 = v16;
              }

              v11[1] = v17;
              v18 = v11 + 2;
              if (v13 < v9 && ((v10 + 1) & 3) == 3)
              {
                v11[2] = 32;
                v18 = v11 + 3;
              }

              v19 = v10 + 1;
              if (v10 > 0x1FE)
              {
                break;
              }

              v11 = v18;
              ++v10;
            }

            while (v13 < v9);
            write([(NSFileHandle *)self->_lookasideFileHandle fileDescriptor], __buf, v18 - __buf);
            bytes += v19;
          }

          while (v13 < v9);
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)logPlainTextData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v8 = dataCopy;
    if ([dataCopy length])
    {
      lookasideFileHandle = self->_lookasideFileHandle;
      if (lookasideFileHandle || !self->_lookasideFilePath && ([(ASTrafficLogger *)self _openLookasideFile], (lookasideFileHandle = self->_lookasideFileHandle) != 0))
      {
        write([(NSFileHandle *)lookasideFileHandle fileDescriptor], "TEXT_CHUNK", 0xAuLL);
        fileDescriptor = [(NSFileHandle *)self->_lookasideFileHandle fileDescriptor];
        v7 = v8;
        write(fileDescriptor, [v8 bytes], objc_msgSend(v8, "length"));
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

@end