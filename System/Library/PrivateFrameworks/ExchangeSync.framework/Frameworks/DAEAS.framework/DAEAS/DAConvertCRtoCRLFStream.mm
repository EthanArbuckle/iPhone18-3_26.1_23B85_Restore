@interface DAConvertCRtoCRLFStream
- (BOOL)_setCFClientFlags:(unint64_t)flags callback:(void *)callback context:(id *)context;
- (DAConvertCRtoCRLFStream)initWithData:(id)data;
- (DAConvertCRtoCRLFStream)initWithMIMEData:(id)data preflightData:(id)preflightData postflightData:(id)postflightData intendToStream:(BOOL)stream;
- (id)delegate;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (void)_scheduleCallback;
- (void)_scheduleInCFRunLoop:(__CFRunLoop *)loop forMode:(__CFString *)mode;
- (void)_streamEventTrigger;
- (void)close;
- (void)dealloc;
- (void)removeFromRunLoop:(id)loop forMode:(id)mode;
- (void)scheduleInRunLoop:(id)loop forMode:(id)mode;
@end

@implementation DAConvertCRtoCRLFStream

- (void)_streamEventTrigger
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DAConvertCRtoCRLFStream.m" lineNumber:45 description:@"sanity check for stream data"];
}

- (void)_scheduleCallback
{
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceSignal(rls);
  }
}

- (void)_scheduleInCFRunLoop:(__CFRunLoop *)loop forMode:(__CFString *)mode
{
  rls = self->_rls;
  if (!rls)
  {
    v9.version = 0;
    memset(&v9.retain, 0, 56);
    v9.info = self;
    v9.perform = _streamEventTrigger;
    rls = CFRunLoopSourceCreate(*MEMORY[0x277CBECE8], 0, &v9);
    self->_rls = rls;
    if (!rls)
    {
      [(DAConvertCRtoCRLFStream *)a2 _scheduleInCFRunLoop:&self->_rls forMode:&v10];
      rls = v10;
    }
  }

  CFRunLoopAddSource(loop, rls, mode);
}

- (BOOL)_setCFClientFlags:(unint64_t)flags callback:(void *)callback context:(id *)context
{
  p_clientContext = &self->_clientContext;
  release = self->_clientContext.release;
  info = self->_clientContext.info;
  if (!context)
  {
    self->_clientContext.copyDescription = 0;
    *&p_clientContext->version = 0u;
    *&self->_clientContext.retain = 0u;
    if (!release)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = *&context->var0;
  v11 = *&context->var2;
  self->_clientContext.copyDescription = context->var4;
  *&p_clientContext->version = v10;
  *&self->_clientContext.retain = v11;
  retain = self->_clientContext.retain;
  if (retain)
  {
    retain(self->_clientContext.info, a2, flags);
  }

  if (release)
  {
LABEL_5:
    release(info, a2, flags);
  }

LABEL_6:
  self->_clientCallback = callback;
  return 1;
}

- (void)scheduleInRunLoop:(id)loop forMode:(id)mode
{
  modeCopy = mode;
  -[DAConvertCRtoCRLFStream _scheduleInCFRunLoop:forMode:](self, "_scheduleInCFRunLoop:forMode:", [loop getCFRunLoop], modeCopy);
}

- (void)removeFromRunLoop:(id)loop forMode:(id)mode
{
  modeCopy = mode;
  -[DAConvertCRtoCRLFStream _unscheduleFromCFRunLoop:forMode:](self, "_unscheduleFromCFRunLoop:forMode:", [loop getCFRunLoop], modeCopy);
}

- (void)close
{
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
  }

  self->_streamStatus = 6;
  [(ASTrafficLogger *)self->_trafficLogger flushLogs];
  trafficLogger = self->_trafficLogger;
  self->_trafficLogger = 0;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = -1;
  if (read)
  {
    lengthCopy = length;
    if (length)
    {
      readCopy = read;
      bzero(read, length);
      v8 = [(NSData *)self->_preflightData length];
      v9 = 168;
      readOffset = self->_readOffset;
      if (readOffset >= v8)
      {
        v4 = 0;
      }

      else
      {
        v4 = 0;
        do
        {
          v11 = v8 - readOffset;
          if (lengthCopy - v4 >= v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = lengthCopy - v4;
          }

          memcpy(&readCopy[v4], [(NSData *)self->_preflightData bytes]+ self->_readOffset, v12);
          readOffset = self->_readOffset + v12;
          self->_readOffset = readOffset;
          v4 += v12;
          self->_lastByteCopiedWasCR = 0;
        }

        while (readOffset < v8 && v4 < lengthCopy);
      }

      v14 = [(NSData *)self->_mimeData length]+ v8;
      v15 = lengthCopy - 1;
      v16 = self->_readOffset;
      v17 = v16 < v14;
      if (v16 < v14 && v4 < v15)
      {
        v55 = v14;
        while (1)
        {
          v23 = v14 - v16;
          if (v15 - v4 >= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v15 - v4;
          }

          v25 = memccpy(&readCopy[v4], [(NSData *)self->_mimeData bytes]+ self->_readOffset - [(NSData *)self->_preflightData length], 10, v24);
          if (!v25)
          {
            v16 = self->_readOffset + v24;
            self->_readOffset = v16;
            v4 += v24;
            v15 = lengthCopy - 1;
            self->_lastByteCopiedWasCR = readCopy[v4 - 1] == 13;
            goto LABEL_43;
          }

          v26 = v25 - &readCopy[v4];
          self->_readOffset += v26;
          v4 = v25 - readCopy;
          v27 = v25;
          if (*(v25 - 1) != 10)
          {
            [(DAConvertCRtoCRLFStream *)v25 read:a2 maxLength:self];
          }

          if (v26 == 1)
          {
            break;
          }

          if (v26 < 2)
          {
            v15 = lengthCopy - 1;
            goto LABEL_42;
          }

          v15 = lengthCopy - 1;
          if (*(v27 - 2) != 13)
          {
            goto LABEL_40;
          }

LABEL_42:
          self->_lastByteCopiedWasCR = 0;
          v16 = self->_readOffset;
LABEL_43:
          v14 = v55;
          v17 = v16 < v55;
          if (v16 >= v55 || v4 >= v15)
          {
            goto LABEL_20;
          }
        }

        v15 = lengthCopy - 1;
        if (self->_lastByteCopiedWasCR)
        {
          goto LABEL_42;
        }

LABEL_40:
        *(v27 - 1) = 2573;
        ++v4;
        goto LABEL_42;
      }

LABEL_20:
      if (v17 && v4 == v15)
      {
        bytes = [(NSData *)self->_mimeData bytes];
        v21 = self->_readOffset;
        v22 = bytes[v21 - [(NSData *)self->_preflightData length]];
        if (v22 == 10)
        {
          if (self->_lastByteCopiedWasCR)
          {
            readCopy[v15] = 10;
            ++self->_readOffset;
            self->_lastByteCopiedWasCR = 0;
          }

          else
          {
            readCopy[v15] = 13;
            self->_lastByteCopiedWasCR = 1;
          }
        }

        else
        {
          readCopy[v15] = v22;
          ++self->_readOffset;
          self->_lastByteCopiedWasCR = readCopy[v15] == 13;
        }

        v4 = lengthCopy;
      }

      v28 = 152;
      v29 = [(NSData *)self->_postflightData length];
      v30 = v29 + v14;
      v31 = self->_readOffset;
      if (v31 < v29 + v14 && v4 < lengthCopy)
      {
        v56 = v29 + v14;
        do
        {
          v33 = v30 - v31;
          if (lengthCopy - v4 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = lengthCopy - v4;
          }

          bytes2 = [*(&self->super.super.super.isa + v28) bytes];
          v36 = lengthCopy;
          v37 = readCopy;
          v38 = *(&self->super.super.super.isa + v9);
          v39 = v9;
          v40 = v28;
          v41 = [(NSData *)self->_mimeData length];
          v42 = v41 + [(NSData *)self->_preflightData length];
          v28 = v40;
          v9 = v39;
          v43 = v38 - v42;
          readCopy = v37;
          lengthCopy = v36;
          memcpy(&readCopy[v4], (bytes2 + v43), v34);
          v30 = v56;
          v31 = (*(&self->super.super.super.isa + v39) + v34);
          *(&self->super.super.super.isa + v39) = v31;
          v4 += v34;
        }

        while (v31 < v56 && v4 < v36);
      }

      if (shouldDALogAtLevel() && self->_intendToStream)
      {
        if (!self->_trafficLogger)
        {
          v45 = objc_opt_new();
          trafficLogger = self->_trafficLogger;
          self->_trafficLogger = v45;

          [(ASTrafficLogger *)self->_trafficLogger setIsOutgoingTraffic:1];
        }

        v47 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:readCopy length:v4];
        [(ASTrafficLogger *)self->_trafficLogger logWBXMLData:v47];
      }

      v48 = DALoggingwithCategory();
      v49 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v48, v49))
      {
        v50 = *(&self->super.super.super.isa + v9);
        totalLength = self->_totalLength;
        *buf = 138413058;
        selfCopy = self;
        v59 = 2048;
        v60 = v4;
        v61 = 2048;
        v62 = v50;
        v63 = 2048;
        v64 = totalLength;
        _os_log_impl(&dword_24A0AC000, v48, v49, "%@ read %lu bytes (now up to %lu of %lu)", buf, 0x2Au);
      }

      if (*(&self->super.super.super.isa + v9) >= self->_totalLength)
      {
        self->_streamStatus = 5;
      }

      [(DAConvertCRtoCRLFStream *)self _scheduleCallback];
    }
  }

  v52 = *MEMORY[0x277D85DE8];
  return v4;
}

- (DAConvertCRtoCRLFStream)initWithMIMEData:(id)data preflightData:(id)preflightData postflightData:(id)postflightData intendToStream:(BOOL)stream
{
  dataCopy = data;
  preflightDataCopy = preflightData;
  postflightDataCopy = postflightData;
  v20.receiver = self;
  v20.super_class = DAConvertCRtoCRLFStream;
  v14 = [(DAConvertCRtoCRLFStream *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mimeData, data);
    objc_storeStrong(&v15->_preflightData, preflightData);
    objc_storeStrong(&v15->_postflightData, postflightData);
    v16 = [(NSData *)v15->_preflightData length];
    v17 = [(NSData *)v15->_mimeData length]+ v16;
    v15->_totalLength = v17 + [(NSData *)v15->_postflightData length];
    v15->_intendToStream = stream;
    trafficLogger = v15->_trafficLogger;
    v15->_trafficLogger = 0;
  }

  return v15;
}

- (DAConvertCRtoCRLFStream)initWithData:(id)data
{
  v3 = [(DAConvertCRtoCRLFStream *)self initWithMIMEData:data preflightData:0 postflightData:0 intendToStream:0];
  trafficLogger = v3->_trafficLogger;
  v3->_trafficLogger = 0;

  return v3;
}

- (void)dealloc
{
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
    CFRelease(self->_rls);
  }

  release = self->_clientContext.release;
  if (release)
  {
    release(self->_clientContext.info, a2);
  }

  v5.receiver = self;
  v5.super_class = DAConvertCRtoCRLFStream;
  [(DAConvertCRtoCRLFStream *)&v5 dealloc];
}

- (void)_scheduleInCFRunLoop:(void *)a3 forMode:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"DAConvertCRtoCRLFStream.m" lineNumber:73 description:@"should be able to make run loop source"];

  *a4 = *a3;
}

- (void)read:(uint64_t)a3 maxLength:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"DAConvertCRtoCRLFStream.m" lineNumber:186 description:{@"expected LF, but got 0x%x instead", *(a1 - 1)}];
}

@end