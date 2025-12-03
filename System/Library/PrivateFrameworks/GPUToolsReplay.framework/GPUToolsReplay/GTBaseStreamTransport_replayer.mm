@interface GTBaseStreamTransport_replayer
- (BOOL)_packMessage:(id)message error:(id *)error;
- (GTBaseStreamTransport_replayer)init;
- (int64_t)_performRead:(void *)read size:(unint64_t)size;
- (int64_t)_readAndAccumulate;
- (int64_t)_relayBuffer:(const void *)buffer size:(unint64_t)size;
- (int64_t)_relayBufferInner:(const void *)inner size:(unint64_t)size;
- (int64_t)_sendMessage:(id)message error:(id *)error;
- (int64_t)_syncTmuToHeader:(dy_transport_message_unpack_s *)header ioBlock:(id)block;
- (int64_t)_writeBuffers:(id *)buffers;
- (void)_allocateMessageBuffer;
- (void)_clearBuffers;
- (void)_invalidate;
- (void)_scheduleInvalidation:(id)invalidation;
- (void)_unpackAndDispatchMessage;
- (void)dealloc;
@end

@implementation GTBaseStreamTransport_replayer

- (int64_t)_relayBuffer:(const void *)buffer size:(unint64_t)size
{
  v7 = BYTE1(self->super._interposerVersion);
  if (v7 == 1)
  {
    dispatch_suspend(self->super._queue);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  relayQueue = self->_relayQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__GTBaseStreamTransport__relayBuffer_size___block_invoke;
  block[3] = &unk_279657EB0;
  block[4] = self;
  block[5] = &v13;
  block[6] = buffer;
  block[7] = size;
  v12 = v7;
  dispatch_sync(relayQueue, block);
  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

- (int64_t)_relayBufferInner:(const void *)inner size:(unint64_t)size
{
  if (self->super._interposerVersion)
  {
    return -1;
  }

  sizeCopy = size;
  if (self->_relayTmu->var5)
  {
    v7 = 0;
    if (!size)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = [GTBaseStreamTransport_replayer _syncTmuToHeader:"_syncTmuToHeader:ioBlock:" ioBlock:?];
  if (v14 == -1)
  {
    return -1;
  }

  relayTmu = self->_relayTmu;
  if (!relayTmu->var5)
  {
    return 0;
  }

  v16 = v14;
  *&relayTmu->var0.var0 = vrev32q_s8(*&relayTmu->var0.var0);
  *&relayTmu->var0.var4 = vrev32_s8(*&relayTmu->var0.var4);
  p_sendSema = &self->_sendSema;
  v9 = -1;
  dispatch_semaphore_wait(self->_sendSema, 0xFFFFFFFFFFFFFFFFLL);
  if (self->super._interposerVersion)
  {
    goto LABEL_9;
  }

  self->_buffers[0] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:self->_relayTmu length:24 freeWhenDone:0];
  v17 = self->_relayTmu;
  v17->var3 += 24;
  if (!v17->var5)
  {
    return 0;
  }

  sizeCopy -= v16;
  inner = inner + v16;
  v7 = 1;
  if (sizeCopy)
  {
LABEL_4:
    self->_buffers[v7] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:inner length:sizeCopy freeWhenDone:0];
  }

LABEL_5:
  v8 = [(GTBaseStreamTransport_replayer *)self _writeBuffers:0];
  v9 = v8;
  if (v8 == -1)
  {
LABEL_8:
    p_sendSema = &self->_sendSema;
LABEL_9:
    dispatch_semaphore_signal(*p_sendSema);
    return v9;
  }

  v10 = self->_relayTmu;
  v11 = v10->var3 - v8;
  v12 = v10->var4 + v8;
  v10->var3 = v11;
  v10->var4 = v12;
  if (!v11)
  {
    *&v10->var3 = xmmword_24DA8BC10;
    v10->var5 = 0;
    goto LABEL_8;
  }

  return v9;
}

- (int64_t)_sendMessage:(id)message error:(id *)error
{
  payload = [message payload];
  encodedAttributes = [message encodedAttributes];
  kind = [message kind];
  serial = [message serial];
  replySerial = [message replySerial];
  if (encodedAttributes)
  {
    v12 = [encodedAttributes length] | 0x80000000;
    if (payload)
    {
LABEL_3:
      v13 = [payload length] | 0x80000000;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (payload)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v17[0] = 1296389188;
  v17[1] = bswap32(kind);
  v17[2] = bswap32(serial);
  v17[3] = bswap32(replySerial);
  v17[4] = bswap32(v12);
  v17[5] = bswap32(v13);
  dispatch_semaphore_wait(self->_sendSema, 0xFFFFFFFFFFFFFFFFLL);
  if (LOBYTE(self->super._interposerVersion) == 1)
  {
    dispatch_semaphore_signal(self->_sendSema);
    [message setEncodedAttributes:0];
    return -1;
  }

  self->_buffers[0] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v17 length:24];
  if (!encodedAttributes)
  {
    v14 = 1;
    if (!payload)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_buffers[1] = encodedAttributes;
  [message setEncodedAttributes:0];
  v14 = 2;
  if (payload)
  {
LABEL_9:
    self->_buffers[v14] = payload;
  }

LABEL_10:
  v15 = [(GTBaseStreamTransport_replayer *)self _writeBuffers:error];
  dispatch_semaphore_signal(self->_sendSema);
  return v15;
}

- (BOOL)_packMessage:(id)message error:(id *)error
{
  if ([message attributes])
  {
    v14 = 0;
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:objc_msgSend(message format:"attributes") options:200 error:{0, &v14}];
    v8 = v7;
    v9 = v14;
    objc_autoreleasePoolPop(v6);
    if (!v7)
    {
      if (error)
      {
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v14 forKey:*MEMORY[0x277CCA7E8]];

        *error = [GTError_replayer errorWithDomain:@"DYErrorDomain" code:36 userInfo:v13];
      }

      return 0;
    }

    [message setEncodedAttributes:v7];
  }

  else
  {
    v7 = 0;
  }

  v10 = [v7 length];
  if (v10 + [objc_msgSend(message "payload")] + 24 < 0xF4240001uLL)
  {
    [message _setTransportSize:?];
    return 1;
  }

  [message setEncodedAttributes:0];
  if (error)
  {
    v12 = [GTError_replayer errorWithDomain:@"DYErrorDomain" code:261 userInfo:0];
    result = 0;
    *error = v12;
    return result;
  }

  return 0;
}

- (int64_t)_writeBuffers:(id *)buffers
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  buffers = self->_buffers;
  do
  {
    v9 = buffers[v7];
    if (v9)
    {
      v10 = &self->_iov[v6];
      v10->iov_base = [(NSData *)v9 bytes];
      v11 = [(NSData *)buffers[v7] length];
      v10->iov_len = v11;
      v5 += v11;
      ++v6;
    }

    ++v7;
  }

  while (v7 != 3);
  if (v5)
  {
    v12 = 0;
    iov = self->_iov;
    v14 = v6;
    while (1)
    {
      do
      {
        while (1)
        {
          v15 = [(GTBaseStreamTransport_replayer *)self _write:iov->iov_base size:iov->iov_len];
          v16 = __error();
          if (v15 == -1)
          {
            break;
          }

          v12 += v15;
          if (v12 == v5)
          {
            goto LABEL_25;
          }

          if (v14 < 1)
          {
            v14 = 0;
          }

          else
          {
            v18 = 0;
            v19 = iov;
            while (1)
            {
              iov_len = v19->iov_len;
              if (v15 < iov_len)
              {
                break;
              }

              ++v18;
              ++v19;
              v15 -= iov_len;
              if (v14 == v18)
              {
                goto LABEL_20;
              }
            }

            v19->iov_base = v19->iov_base + v15;
            v19->iov_len = iov_len - v15;
            v14 = v18;
          }

LABEL_20:
          iov += v14;
          v14 = v6 - ((iov - self->_iov) >> 4);
        }

        v17 = *v16;
      }

      while (*v16 == 4);
      if (v17 != 35)
      {
        break;
      }

      if (LOBYTE(self->super._interposerVersion) == 1)
      {
        if (buffers)
        {
          *buffers = [(GTTransport_replayer *)self error];
        }

        goto LABEL_24;
      }

      [(GTBaseStreamTransport_replayer *)self _waitEAGAIN];
    }

    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v17 userInfo:0];
    [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:v21];
    if (buffers)
    {
      *buffers = v21;
    }

    *__error() = v17;
LABEL_24:
    v5 = -1;
  }

LABEL_25:
  [(GTBaseStreamTransport_replayer *)self _clearBuffers];
  return v5;
}

- (void)_clearBuffers
{
  v2 = 0;
  buffers = self->_buffers;
  do
  {

    buffers[v2++] = 0;
  }

  while (v2 != 3);
}

- (int64_t)_readAndAccumulate
{
  if (self->super._interposerVersion)
  {
    return -1;
  }

  tmu = self->_tmu;
  if (tmu->var5)
  {
    v4 = 0;
  }

  else
  {
    v4 = [GTBaseStreamTransport_replayer _syncTmuToHeader:"_syncTmuToHeader:ioBlock:" ioBlock:?];
    if (v4 == -1)
    {
      return v4;
    }

    v8 = self->_tmu;
    if (!v8->var5)
    {
      return v4;
    }

    if (!v8->var3)
    {
LABEL_16:
      [(GTBaseStreamTransport_replayer *)self _unpackAndDispatchMessage];
      return v4;
    }

    [(GTBaseStreamTransport_replayer *)self _allocateMessageBuffer];
    mutableBytes = [(GTVMBuffer *)self->_messageBuffer mutableBytes];
    var1 = self->_tmu->var1;
    self->_messageBufferWritePtr = ((mutableBytes + var1 - 1) & -var1);
    tmu = self->_tmu;
    if (!tmu->var5)
    {
      return v4;
    }
  }

  var4 = tmu->var4;
  v6 = tmu->var0.var4 & 0x7FFFFFFF;
  var3 = v6 - var4;
  if (v6 <= var4)
  {
    if (v6 == var4)
    {
      self->_messageBufferWritePtr = ((self->_messageBufferWritePtr + tmu->var2 - 1) & -tmu->var2);
      var3 = self->_tmu->var3;
    }

    else
    {
      var3 = tmu->var3;
    }
  }

  v11 = [(GTBaseStreamTransport_replayer *)self _performRead:self->_messageBufferWritePtr size:var3];
  if (v11 == -1)
  {
    return -1;
  }

  v4 += v11;
  self->_messageBufferWritePtr = self->_messageBufferWritePtr + v11;
  if (!self->_tmu->var3)
  {
    goto LABEL_16;
  }

  return v4;
}

- (int64_t)_performRead:(void *)read size:(unint64_t)size
{
  if (!self->_bytesToRead)
  {
    self->_bytesToRead = size;
  }

  do
  {
    result = [(GTBaseStreamTransport_replayer *)self _read:read size:self->_bytesToRead];
    if (result != -1)
    {
      if (result)
      {
        tmu = self->_tmu;
        v11 = tmu->var4 + result;
        tmu->var3 -= result;
        tmu->var4 = v11;
        self->_bytesToRead = 0;
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:[GTError_replayer errorWithDomain:@"DYErrorDomain" code:31 userInfo:0]];
        objc_autoreleasePoolPop(v9);
        return 0;
      }

      return result;
    }

    v7 = *__error();
  }

  while (v7 == 4);
  if (v7 != 35)
  {
    v8 = objc_autoreleasePoolPush();
    [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:[GTError_replayer errorWithDomain:@"DYErrorDomain" code:31 userInfo:0]];
    objc_autoreleasePoolPop(v8);
  }

  *__error() = v7;
  return -1;
}

- (void)_allocateMessageBuffer
{
  tmu = self->_tmu;
  if (!tmu->var5)
  {
    v7 = "_tmu->hasHeader";
    goto LABEL_11;
  }

  v3 = tmu->var3 + tmu->var1 - 1 + tmu->var2 - 1;
  if (v3 >= 0xF4240001)
  {
    v7 = "size_aligned <= MAXIMUM_MESSAGE_SIZE";
    goto LABEL_11;
  }

  if (v3 >= 3 * *MEMORY[0x277D85FA0])
  {
    v5 = &off_279312750;
  }

  else
  {
    v5 = 0x277CBEB28;
  }

  v6 = [objc_alloc(*v5) initWithLength:v3];
  self->_messageBuffer = v6;
  if (!v6)
  {
    v7 = "_messageBuffer != nil";
LABEL_11:
    __assert_rtn("[GTBaseStreamTransport _allocateMessageBuffer]", "", 0, v7);
  }
}

- (void)_unpackAndDispatchMessage
{
  v3 = objc_autoreleasePoolPush();
  v4 = self->_tmu->var0.var4 & 0x7FFFFFFF;
  mutableBytes = [(GTVMBuffer *)self->_messageBuffer mutableBytes];
  tmu = self->_tmu;
  v7 = (mutableBytes + tmu->var1 - 1) & -tmu->var1;
  if ((tmu->var0.var4 & 0x80000000) == 0)
  {
    v8 = 0;
    v9 = 24;
LABEL_5:
    var5 = tmu->var0.var5;
    if ((var5 & 0x80000000) != 0)
    {
      v14 = var5 & 0x7FFFFFFF;
      v13 = [-[GTVMBuffer subdataWithRange:](self->_messageBuffer subdataWithRange:{((v7 + v4 + tmu->var2 - 1) & -tmu->var2) - -[GTVMBuffer mutableBytes](self->_messageBuffer, "mutableBytes"), var5 & 0x7FFFFFFF), "GTGPUToolsData"}];
      v9 = (v14 + v9);
      tmu = self->_tmu;
    }

    else
    {
      v13 = 0;
    }

    v15 = [[GTTransportMessage_replayer alloc] initWithKind:tmu->var0.var1 attributes:v8 payload:v13];
    [(GTTransportMessage_replayer *)v15 _setSerial:self->_tmu->var0.var2 replySerial:self->_tmu->var0.var3 transport:self];
    [(GTTransportMessage_replayer *)v15 _setTransportSize:v9];
    objc_autoreleasePoolPop(v3);
    messageBuffer = self->_messageBuffer;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      vmBuffer = [(GTVMBuffer *)self->_messageBuffer vmBuffer];
      MEMORY[0x253034370](*MEMORY[0x277D85F48], *vmBuffer, vmBuffer[2] * vmBuffer[1], 0, 1);
    }

    self->_messageBuffer = 0;
    [(GTTransport_replayer *)self _dispatchMessage:v15];

    v18 = self->_tmu;
    *&v18->var3 = xmmword_24DA8BC10;
    v18->var5 = 0;
    return;
  }

  v10 = [-[GTVMBuffer subdataWithRange:](self->_messageBuffer subdataWithRange:{v7 - -[GTVMBuffer mutableBytes](self->_messageBuffer, "mutableBytes"), v4), "GTGPUToolsData"}];
  v11 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];
  if (v11)
  {
    v8 = v11;
    v9 = (v4 + 24);
    tmu = self->_tmu;
    goto LABEL_5;
  }

  [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:[GTError_replayer errorWithDomain:@"DYErrorDomain" code:260 userInfo:0]];

  objc_autoreleasePoolPop(v3);
}

- (int64_t)_syncTmuToHeader:(dy_transport_message_unpack_s *)header ioBlock:(id)block
{
  result = (*(block + 2))(block, a2);
  if (result != -1 && !header->var3)
  {
    header->var5 = 1;
    v7 = *&header->var0.var0;
    *&header->var0.var0 = vrev32q_s8(*&header->var0.var0);
    v8 = vrev32_s8(*&header->var0.var4);
    *&header->var0.var4 = v8;
    if (v7 == 1296389188)
    {
      header->var3 = (v8.i32[1] & 0x7FFFFFFF) + (v8.i32[0] & 0x7FFFFFFFu);
      header->var4 = 0;
      if (self->_tmu->var3 + self->_tmu->var1 - 1 + self->_tmu->var2 - 1 < 0xF4240001)
      {
        return result;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = 261;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = 259;
    }

    [(GTBaseStreamTransport_replayer *)self _scheduleInvalidation:[GTError_replayer errorWithDomain:@"DYErrorDomain" code:v10 userInfo:0]];
    objc_autoreleasePoolPop(v9);
    return -1;
  }

  return result;
}

- (void)_scheduleInvalidation:(id)invalidation
{
  v4.receiver = self;
  v4.super_class = GTBaseStreamTransport_replayer;
  [(GTTransport_replayer *)&v4 _scheduleInvalidation:invalidation];
  dispatch_semaphore_signal(self->_sendSema);
}

- (void)_invalidate
{
  if (self)
  {
    v3 = MEMORY[0x277D85F48];
    MEMORY[0x253034350](*MEMORY[0x277D85F48], self->_relayTmu, 49);
    self->_relayTmu = 0;
    MEMORY[0x253034350](*v3, self->_tmu, 49);
    self->_tmu = 0;
  }

  self->_messageBuffer = 0;
  v4.receiver = self;
  v4.super_class = GTBaseStreamTransport_replayer;
  [(GTTransport_replayer *)&v4 _invalidate];
}

- (void)dealloc
{
  sendSema = self->_sendSema;
  if (sendSema)
  {
    dispatch_release(sendSema);
    self->_sendSema = 0;
  }

  relayQueue = self->_relayQueue;
  if (relayQueue)
  {
    dispatch_release(relayQueue);
    self->_relayQueue = 0;
  }

  v5.receiver = self;
  v5.super_class = GTBaseStreamTransport_replayer;
  [(GTTransport_replayer *)&v5 dealloc];
}

- (GTBaseStreamTransport_replayer)init
{
  v8.receiver = self;
  v8.super_class = GTBaseStreamTransport_replayer;
  v2 = [(GTTransport_replayer *)&v8 init];
  if (v2)
  {
    v3 = GTCoreAlloc(0x31uLL);
    *(v2 + 13) = v3;
    if (v3)
    {
      *(v3 + 24) = 0x1000000001;
      *(v3 + 32) = xmmword_24DA8BC10;
      *(v3 + 48) = 0;
      v4 = GTCoreAlloc(0x31uLL);
      *(v2 + 28) = v4;
      if (v4)
      {
        *(v4 + 24) = 0x100000001;
        *(v4 + 32) = xmmword_24DA8BC10;
        *(v4 + 48) = 0;
        v5 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p.%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v2)), v2, @"relay", "UTF8String"];
        *(v2 + 27) = dispatch_queue_create_with_target_V2(v5, 0, *(v2 + 2));
        *(v2 + 26) = dispatch_semaphore_create(1);
        return v2;
      }

      v7 = "_relayTmu";
    }

    else
    {
      v7 = "_tmu";
    }

    __assert_rtn("[GTBaseStreamTransport init]", "", 0, v7);
  }

  return v2;
}

@end