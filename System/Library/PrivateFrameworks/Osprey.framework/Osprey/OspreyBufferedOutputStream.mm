@interface OspreyBufferedOutputStream
- (BOOL)_flushBuffer;
- (OspreyBufferedOutputStream)initWithBufferSize:(unint64_t)size underlyingOutputStream:(id)stream queue:(id)queue;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)_closeUnderlying;
- (void)close;
- (void)dealloc;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation OspreyBufferedOutputStream

- (OspreyBufferedOutputStream)initWithBufferSize:(unint64_t)size underlyingOutputStream:(id)stream queue:(id)queue
{
  streamCopy = stream;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = OspreyBufferedOutputStream;
  v11 = [(OspreyBufferedOutputStream *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:size];
    outputBuffer = v11->_outputBuffer;
    v11->_outputBuffer = v12;

    objc_storeStrong(&v11->_outputStream, stream);
    MEMORY[0x25F8A5610](v11->_outputStream, queueCopy);
    [(NSOutputStream *)v11->_outputStream setDelegate:v11];
    objc_storeStrong(&v11->_queue, queue);
  }

  return v11;
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  if (![(OspreyBufferedOutputStream *)self _flushBuffer]|| ![(NSOutputStream *)self->_outputStream hasSpaceAvailable])
  {
    goto LABEL_5;
  }

  v7 = [(NSOutputStream *)self->_outputStream write:write maxLength:length];
  if (v7 > 0)
  {
    goto LABEL_6;
  }

  if (v7 != -1)
  {
LABEL_5:
    v7 = 0;
LABEL_6:
    if (length <= v7)
    {
      return v7;
    }

    [(NSMutableData *)self->_outputBuffer appendBytes:&write[v7] length:length - v7];
    return length;
  }

  OspreyLoggingInit();
  v9 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
  {
    [OspreyBufferedOutputStream write:v9 maxLength:?];
  }

  return -1;
}

- (void)close
{
  self->_closed = 1;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__OspreyBufferedOutputStream_close__block_invoke;
  block[3] = &unk_2799F1D30;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __35__OspreyBufferedOutputStream_close__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 136) length];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 136);
    *(v3 + 136) = 0;

    v5 = *(a1 + 32);

    return [v5 _closeUnderlying];
  }

  return result;
}

- (void)dealloc
{
  [(OspreyBufferedOutputStream *)self _closeUnderlying];
  v3.receiver = self;
  v3.super_class = OspreyBufferedOutputStream;
  [(OspreyBufferedOutputStream *)&v3 dealloc];
}

- (void)_closeUnderlying
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25DDE6000, v0, OS_LOG_TYPE_DEBUG, "%s Closing underlying stream: %@", v1, 0x16u);
}

- (BOOL)_flushBuffer
{
  if (![(NSMutableData *)self->_outputBuffer length])
  {
    return 1;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  outputBuffer = self->_outputBuffer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__OspreyBufferedOutputStream__flushBuffer__block_invoke;
  v7[3] = &unk_2799F1D80;
  v7[4] = self;
  v7[5] = &v8;
  [(NSMutableData *)outputBuffer enumerateByteRangesUsingBlock:v7];
  v4 = v9[3];
  if (v4)
  {
    [(NSMutableData *)self->_outputBuffer replaceBytesInRange:0 withBytes:v4 length:0, 0];
  }

  v5 = [(NSMutableData *)self->_outputBuffer length]== 0;
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __42__OspreyBufferedOutputStream__flushBuffer__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = (a1 + 32);
  if ([*(*(a1 + 32) + 144) hasSpaceAvailable])
  {
    v10 = [*(*v9 + 144) write:a2 maxLength:a4];
    if (v10 < 1)
    {
      *a5 = 1;
      if (v10 == -1)
      {
        OspreyLoggingInit();
        v11 = OspreyLogContextGRPC;
        if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
        {
          __42__OspreyBufferedOutputStream__flushBuffer__block_invoke_cold_1(v9, 144, v11);
        }
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) += v10;
    }
  }

  else
  {
    *a5 = 1;
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  if (self->_outputStream != streamCopy)
  {
    goto LABEL_13;
  }

  switch(event)
  {
    case 0x10uLL:
      goto LABEL_12;
    case 8uLL:
      OspreyLoggingInit();
      v7 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
      {
        [OspreyBufferedOutputStream stream:v7 handleEvent:?];
      }

      goto LABEL_12;
    case 4uLL:
      OspreyLoggingInit();
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
      {
        [OspreyBufferedOutputStream stream:handleEvent:];
      }

      if ([(OspreyBufferedOutputStream *)self _flushBuffer]&& self->_closed)
      {
LABEL_12:
        [(OspreyBufferedOutputStream *)self _closeUnderlying];
      }

      break;
  }

LABEL_13:
}

- (void)write:(void *)a1 maxLength:(void *)a2 .cold.1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 streamError];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25DDE6000, v5, v6, "%s Error writing bytes to %@ with: %@", v7, v8, v9, v10, 2u);
}

void __42__OspreyBufferedOutputStream__flushBuffer__block_invoke_cold_1(void *a1, uint64_t a2, void *a3)
{
  v3 = *(*a1 + a2);
  v4 = a3;
  v5 = [v3 streamError];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25DDE6000, v6, v7, "%s Error writing bytes to %@ with: %@", v8, v9, v10, v11, 2u);
}

- (void)stream:(void *)a1 handleEvent:(void *)a2 .cold.1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 streamError];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25DDE6000, v5, v6, "%s OutputStream %@ error occurred: %@.", v7, v8, v9, v10, 2u);
}

- (void)stream:handleEvent:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25DDE6000, v0, OS_LOG_TYPE_DEBUG, "%s OutputStream %@ has space available.", v1, 0x16u);
}

@end