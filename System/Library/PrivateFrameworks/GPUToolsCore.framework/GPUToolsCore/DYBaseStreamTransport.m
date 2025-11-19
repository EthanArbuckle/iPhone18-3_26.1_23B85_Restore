@interface DYBaseStreamTransport
- (BOOL)_packMessage:(id)a3 error:(id *)a4;
- (DYBaseStreamTransport)init;
- (int64_t)_performRead:(void *)a3 size:(unint64_t)a4;
- (int64_t)_readAndAccumulate;
- (int64_t)_relayBuffer:(const void *)a3 size:(unint64_t)a4;
- (int64_t)_relayBufferInner:(const void *)a3 size:(unint64_t)a4;
- (int64_t)_sendMessage:(id)a3 error:(id *)a4;
- (int64_t)_syncTmuToHeader:(dy_transport_message_unpack_s *)a3 ioBlock:(id)a4;
- (int64_t)_writeBuffers:(id *)a3;
- (void)_allocateMessageBuffer;
- (void)_clearBuffers;
- (void)_invalidate;
- (void)_scheduleInvalidation:(id)a3;
- (void)_unpackAndDispatchMessage;
- (void)dealloc;
@end

@implementation DYBaseStreamTransport

- (DYBaseStreamTransport)init
{
  v7.receiver = self;
  v7.super_class = DYBaseStreamTransport;
  v2 = [(DYTransport *)&v7 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x31uLL, 0x1000040BB36FE7BuLL);
    *(v2 + 13) = v3;
    if (!v3)
    {
      [DYBaseStreamTransport init];
    }

    v3[3] = 0x1000000001;
    *(v3 + 2) = xmmword_24D6A9350;
    *(v3 + 48) = 0;
    v4 = malloc_type_calloc(1uLL, 0x31uLL, 0x1000040BB36FE7BuLL);
    *(v2 + 28) = v4;
    if (!v4)
    {
      [DYBaseStreamTransport init];
    }

    v4[3] = 0x100000001;
    *(v4 + 2) = xmmword_24D6A9350;
    *(v4 + 48) = 0;
    v5 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p.%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v2)), v2, @"relay", "UTF8String"];
    *(v2 + 27) = dispatch_queue_create_with_target_V2(v5, 0, *(v2 + 2));
    *(v2 + 26) = dispatch_semaphore_create(1);
  }

  return v2;
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
  v5.super_class = DYBaseStreamTransport;
  [(DYTransport *)&v5 dealloc];
}

- (void)_invalidate
{
  free(self->_relayTmu);
  self->_relayTmu = 0;
  free(self->_tmu);
  self->_tmu = 0;

  self->_messageBuffer = 0;
  v3.receiver = self;
  v3.super_class = DYBaseStreamTransport;
  [(DYTransport *)&v3 _invalidate];
}

- (void)_scheduleInvalidation:(id)a3
{
  v4.receiver = self;
  v4.super_class = DYBaseStreamTransport;
  [(DYTransport *)&v4 _scheduleInvalidation:a3];
  dispatch_semaphore_signal(self->_sendSema);
}

- (int64_t)_syncTmuToHeader:(dy_transport_message_unpack_s *)a3 ioBlock:(id)a4
{
  result = (*(a4 + 2))(a4, a2);
  if (result != -1 && !a3->var3)
  {
    a3->var5 = 1;
    v7 = *&a3->var0.var0;
    *&a3->var0.var0 = vrev32q_s8(*&a3->var0.var0);
    v8 = vrev32_s8(*&a3->var0.var4);
    *&a3->var0.var4 = v8;
    if (v7 == 1296389188)
    {
      a3->var3 = (v8.i32[1] & 0x7FFFFFFF) + (v8.i32[0] & 0x7FFFFFFFu);
      a3->var4 = 0;
      if (self->_tmu->var3 + self->_tmu->var1 - 1 + self->_tmu->var2 - 1 < 0xF4240001)
      {
        return result;
      }

      v9 = objc_autoreleasePoolPush();
      _DYOLog(self, 3, @"message buffer too large", v10, v11, v12, v13, v14, v21);
      v15 = 261;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      _DYOLog(self, 3, @"bad message header received", v16, v17, v18, v19, v20, v21);
      v15 = 259;
    }

    [(DYBaseStreamTransport *)self _scheduleInvalidation:[DYError errorWithDomain:@"DYErrorDomain" code:v15 userInfo:0]];
    objc_autoreleasePoolPop(v9);
    return -1;
  }

  return result;
}

- (void)_unpackAndDispatchMessage
{
  v3 = objc_autoreleasePoolPush();
  v4 = self->_tmu->var0.var4 & 0x7FFFFFFF;
  v5 = [(DYVMBuffer *)self->_messageBuffer mutableBytes];
  tmu = self->_tmu;
  v7 = (v5 + tmu->var1 - 1) & -tmu->var1;
  if ((tmu->var0.var4 & 0x80000000) == 0)
  {
    v8 = 0;
    v9 = 24;
LABEL_5:
    var5 = tmu->var0.var5;
    if ((var5 & 0x80000000) != 0)
    {
      v19 = var5 & 0x7FFFFFFF;
      v18 = [-[DYVMBuffer subdataWithRange:](self->_messageBuffer subdataWithRange:{((v7 + v4 + tmu->var2 - 1) & -tmu->var2) - -[DYVMBuffer mutableBytes](self->_messageBuffer, "mutableBytes"), var5 & 0x7FFFFFFF), "DYGPUToolsData"}];
      v9 = (v19 + v9);
      tmu = self->_tmu;
    }

    else
    {
      v18 = 0;
    }

    v20 = [[DYTransportMessage alloc] initWithKind:tmu->var0.var1 attributes:v8 payload:v18];
    [(DYTransportMessage *)v20 _setSerial:self->_tmu->var0.var2 replySerial:self->_tmu->var0.var3 transport:self];
    [(DYTransportMessage *)v20 _setTransportSize:v9];
    objc_autoreleasePoolPop(v3);
    messageBuffer = self->_messageBuffer;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      GPUTools::VMBuffer::protect_readonly([(DYVMBuffer *)self->_messageBuffer vmBuffer]);
    }

    self->_messageBuffer = 0;
    [(DYTransport *)self _dispatchMessage:v20];

    v22 = self->_tmu;
    *&v22->var3 = xmmword_24D6A9350;
    v22->var5 = 0;
    return;
  }

  v10 = [-[DYVMBuffer subdataWithRange:](self->_messageBuffer subdataWithRange:{v7 - -[DYVMBuffer mutableBytes](self->_messageBuffer, "mutableBytes"), v4), "DYGPUToolsData"}];
  v11 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];
  if (v11)
  {
    v8 = v11;
    v9 = (v4 + 24);
    tmu = self->_tmu;
    goto LABEL_5;
  }

  _DYOLog(self, 3, @"failed to unpack message attributes", v12, v13, v14, v15, v16, v23);
  [(DYBaseStreamTransport *)self _scheduleInvalidation:[DYError errorWithDomain:@"DYErrorDomain" code:260 userInfo:0]];

  objc_autoreleasePoolPop(v3);
}

- (void)_allocateMessageBuffer
{
  tmu = self->_tmu;
  if (!tmu->var5)
  {
    [DYBaseStreamTransport _allocateMessageBuffer];
  }

  v3 = tmu->var3 + tmu->var1 - 1 + tmu->var2 - 1;
  if (v3 >= 0xF4240001)
  {
    [DYBaseStreamTransport _allocateMessageBuffer];
  }

  if (v3 >= 3 * *MEMORY[0x277D85FA0])
  {
    v5 = &off_27930BB88;
  }

  else
  {
    v5 = 0x277CBEB28;
  }

  v6 = [objc_alloc(*v5) initWithLength:v3];
  self->_messageBuffer = v6;
  if (!v6)
  {
    [DYBaseStreamTransport _allocateMessageBuffer];
  }
}

- (int64_t)_performRead:(void *)a3 size:(unint64_t)a4
{
  if (!self->_bytesToRead)
  {
    self->_bytesToRead = a4;
  }

  do
  {
    v6 = [(DYBaseStreamTransport *)self _read:a3 size:self->_bytesToRead];
    v7 = v6;
    if (v6 != -1)
    {
      if (v6)
      {
        tmu = self->_tmu;
        v18 = tmu->var4 + v6;
        tmu->var3 -= v6;
        tmu->var4 = v18;
        self->_bytesToRead = 0;
      }

      else
      {
        v16 = objc_autoreleasePoolPush();
        [(DYBaseStreamTransport *)self _scheduleInvalidation:[DYError errorWithDomain:@"DYErrorDomain" code:31 userInfo:0]];
        objc_autoreleasePoolPop(v16);
      }

      return v7;
    }

    v8 = *__error();
  }

  while (v8 == 4);
  if (v8 != 35)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:strerror(v8)];
    _DYOLog(self, 3, @"read io failure: %@ (%d)", v11, v12, v13, v14, v15, v10);
    [(DYBaseStreamTransport *)self _scheduleInvalidation:[DYError errorWithDomain:@"DYErrorDomain" code:31 userInfo:0]];
    objc_autoreleasePoolPop(v9);
  }

  *__error() = v8;
  return v7;
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

- (int64_t)_writeBuffers:(id *)a3
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
LABEL_7:
    v15 = v14;
    while (1)
    {
      do
      {
        v16 = [(DYBaseStreamTransport *)self _write:iov->iov_base size:iov->iov_len];
        v17 = __error();
        if (v16 != -1)
        {
          v12 += v16;
          if (v12 == v5)
          {
            goto LABEL_26;
          }

          if (v15 < 1)
          {
            v15 = 0;
          }

          else
          {
            v19 = 0;
            p_iov_len = &iov->iov_len;
            while (1)
            {
              v21 = v16 - *p_iov_len;
              if (v16 < *p_iov_len)
              {
                break;
              }

              ++v19;
              p_iov_len += 2;
              v16 = v21;
              if (v15 == v19)
              {
                goto LABEL_21;
              }
            }

            v22 = *p_iov_len - v16;
            *(p_iov_len - 1) += v16;
            *p_iov_len = v22;
            v15 = v19;
          }

LABEL_21:
          iov += v15;
          v14 = v6 - ((iov - self->_iov) >> 4);
          goto LABEL_7;
        }

        v18 = *v17;
      }

      while (*v17 == 4);
      if (v18 != 35)
      {
        break;
      }

      if (LOBYTE(self->super._interposerVersion) == 1)
      {
        if (a3)
        {
          *a3 = [(DYTransport *)self error];
        }

        goto LABEL_25;
      }

      [(DYBaseStreamTransport *)self _waitEAGAIN];
    }

    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:strerror(*v17)];
    _DYOLog(self, 3, @"io failure writing message: %@ (%d)", v24, v25, v26, v27, v28, v23);
    v29 = [DYError errorWithDomain:*MEMORY[0x277CCA5B8] code:v18 userInfo:0];
    [(DYBaseStreamTransport *)self _scheduleInvalidation:v29];
    if (a3)
    {
      *a3 = v29;
    }

    *__error() = v18;
LABEL_25:
    v5 = -1;
  }

LABEL_26:
  [(DYBaseStreamTransport *)self _clearBuffers];
  return v5;
}

- (BOOL)_packMessage:(id)a3 error:(id *)a4
{
  if ([a3 attributes])
  {
    v21 = 0;
    v7 = objc_autoreleasePoolPush();
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:objc_msgSend(a3 format:"attributes") options:200 error:{0, &v21}];
    v9 = v8;
    v10 = v21;
    objc_autoreleasePoolPop(v7);
    if (!v8)
    {
      if (a4)
      {
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v21 forKey:*MEMORY[0x277CCA7E8]];

        *a4 = [DYError errorWithDomain:@"DYErrorDomain" code:36 userInfo:v19];
      }

      return 0;
    }

    [a3 setEncodedAttributes:v8];
  }

  else
  {
    v8 = 0;
  }

  v11 = [v8 length];
  if (v11 + [objc_msgSend(a3 "payload")] + 24 < 0xF4240001uLL)
  {
    [a3 _setTransportSize:?];
    return 1;
  }

  [a3 setEncodedAttributes:0];
  _DYOLog(self, 3, @"message buffer too large", v13, v14, v15, v16, v17, v20);
  if (a4)
  {
    v18 = [DYError errorWithDomain:@"DYErrorDomain" code:261 userInfo:0];
    result = 0;
    *a4 = v18;
    return result;
  }

  return 0;
}

- (int64_t)_sendMessage:(id)a3 error:(id *)a4
{
  v7 = [a3 payload];
  v8 = [a3 encodedAttributes];
  v9 = [a3 kind];
  v10 = [a3 serial];
  v11 = [a3 replySerial];
  if (v8)
  {
    v12 = [v8 length] | 0x80000000;
    if (v7)
    {
LABEL_3:
      v13 = [v7 length] | 0x80000000;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v17[0] = 1296389188;
  v17[1] = bswap32(v9);
  v17[2] = bswap32(v10);
  v17[3] = bswap32(v11);
  v17[4] = bswap32(v12);
  v17[5] = bswap32(v13);
  dispatch_semaphore_wait(self->_sendSema, 0xFFFFFFFFFFFFFFFFLL);
  if (LOBYTE(self->super._interposerVersion) == 1)
  {
    [DYBaseStreamTransport _sendMessage:a3 error:?];
    return -1;
  }

  self->_buffers[0] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v17 length:24];
  if (!v8)
  {
    v14 = 1;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  self->_buffers[1] = v8;
  [a3 setEncodedAttributes:0];
  v14 = 2;
  if (v7)
  {
LABEL_9:
    self->_buffers[v14] = v7;
  }

LABEL_10:
  v15 = [(DYBaseStreamTransport *)self _writeBuffers:a4];
  dispatch_semaphore_signal(self->_sendSema);
  return v15;
}

size_t __48__DYBaseStreamTransport__relayBufferInner_size___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 224);
  if (*(v2 + 32) >= *(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  memcpy((*(v2 + 40) + v2), *(a1 + 48), v3);
  *(*(*(a1 + 32) + 224) + 40) += v3;
  *(*(*(a1 + 32) + 224) + 32) -= v3;
  return v3;
}

- (int64_t)_relayBuffer:(const void *)a3 size:(unint64_t)a4
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
  block[2] = __43__DYBaseStreamTransport__relayBuffer_size___block_invoke;
  block[3] = &unk_27930D1A0;
  block[4] = self;
  block[5] = &v13;
  block[6] = a3;
  block[7] = a4;
  v12 = v7;
  dispatch_sync(relayQueue, block);
  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __43__DYBaseStreamTransport__relayBuffer_size___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _relayBufferInner:*(a1 + 48) size:*(a1 + 56)];
  objc_autoreleasePoolPop(v2);
  if (*(a1 + 64) == 1)
  {
    v3 = *(*(a1 + 32) + 24);

    dispatch_resume(v3);
  }
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
    OUTLINED_FUNCTION_0_0();
    v4 = [DYBaseStreamTransport _syncTmuToHeader:"_syncTmuToHeader:ioBlock:" ioBlock:?];
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
      [(DYBaseStreamTransport *)self _unpackAndDispatchMessage];
      return v4;
    }

    [(DYBaseStreamTransport *)self _allocateMessageBuffer];
    v9 = [(DYVMBuffer *)self->_messageBuffer mutableBytes];
    var1 = self->_tmu->var1;
    self->_messageBufferWritePtr = ((v9 + var1 - 1) & -var1);
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

  v11 = [(DYBaseStreamTransport *)self _performRead:self->_messageBufferWritePtr size:var3];
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

- (int64_t)_relayBufferInner:(const void *)a3 size:(unint64_t)a4
{
  if (self->super._interposerVersion)
  {
    return -1;
  }

  v4 = a4;
  v7 = 0x27F082000uLL;
  if (self->_relayTmu->var5)
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_0_0();
  v15 = [DYBaseStreamTransport _syncTmuToHeader:"_syncTmuToHeader:ioBlock:" ioBlock:?];
  if (v15 == -1)
  {
    return -1;
  }

  relayTmu = self->_relayTmu;
  if (!relayTmu->var5)
  {
    return 0;
  }

  v17 = v15;
  *&relayTmu->var0.var0 = vrev32q_s8(*&relayTmu->var0.var0);
  *&relayTmu->var0.var4 = vrev32_s8(*&relayTmu->var0.var4);
  p_sendSema = &self->_sendSema;
  v10 = -1;
  dispatch_semaphore_wait(self->_sendSema, 0xFFFFFFFFFFFFFFFFLL);
  if (self->super._interposerVersion)
  {
    goto LABEL_9;
  }

  self->_buffers[0] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:self->_relayTmu length:24 freeWhenDone:0];
  v18 = self->_relayTmu;
  v18->var3 += 24;
  if (!v18->var5)
  {
    return 0;
  }

  v4 -= v17;
  a3 = a3 + v17;
  v8 = 1;
  v7 = 0x27F082000;
  if (v4)
  {
LABEL_4:
    self->_buffers[v8] = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a3 length:v4 freeWhenDone:0];
  }

LABEL_5:
  v9 = [(DYBaseStreamTransport *)self _writeBuffers:0];
  v10 = v9;
  if (v9 == -1)
  {
LABEL_8:
    p_sendSema = (&self->super.super.isa + *(v7 + 1212));
LABEL_9:
    dispatch_semaphore_signal(*p_sendSema);
    return v10;
  }

  v11 = self->_relayTmu;
  v12 = v11->var3 - v9;
  v13 = v11->var4 + v9;
  v11->var3 = v12;
  v11->var4 = v13;
  if (!v12)
  {
    *&v11->var3 = xmmword_24D6A9350;
    v11->var5 = 0;
    goto LABEL_8;
  }

  return v10;
}

- (uint64_t)_sendMessage:(dispatch_semaphore_t *)a1 error:(void *)a2 .cold.1(dispatch_semaphore_t *a1, void *a2)
{
  dispatch_semaphore_signal(*a1);

  return [a2 setEncodedAttributes:0];
}

@end