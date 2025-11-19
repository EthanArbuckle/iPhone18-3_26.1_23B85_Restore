@interface OspreyGRPCStreamingContext
- (OspreyGRPCStreamingContext)initWithQueue:(id)a3 responseHandler:(id)a4 completion:(id)a5;
- (void)_writeFrame:(id)a3 compressed:(BOOL)a4 error:(id *)a5;
- (void)bindToUrlRequest:(id)a3;
- (void)completeWithError:(id)a3;
- (void)finishWriting;
- (void)handleResponseData:(id)a3;
@end

@implementation OspreyGRPCStreamingContext

- (OspreyGRPCStreamingContext)initWithQueue:(id)a3 responseHandler:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = OspreyGRPCStreamingContext;
  v12 = [(OspreyGRPCStreamingContext *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    v14 = MEMORY[0x25F8A5BA0](v11);
    completion = v13->_completion;
    v13->_completion = v14;

    v16 = [[OspreyMessageReader alloc] initWithMessageHandler:v10];
    messageReader = v13->_messageReader;
    v13->_messageReader = v16;

    v18 = objc_alloc_init(OspreyMessageWriter);
    messageWriter = v13->_messageWriter;
    v13->_messageWriter = v18;

    v31 = 0;
    v32 = 0;
    [MEMORY[0x277CBEAE0] getBoundStreamsWithBufferSize:2048 inputStream:&v32 outputStream:&v31];
    v20 = v32;
    v21 = v31;
    inputStream = v13->_inputStream;
    v13->_inputStream = v20;
    v23 = v20;

    queue = v13->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__OspreyGRPCStreamingContext_initWithQueue_responseHandler_completion___block_invoke;
    block[3] = &unk_2799F1D08;
    v28 = v13;
    v29 = v21;
    v30 = v9;
    v25 = v21;
    dispatch_async(queue, block);
  }

  return v13;
}

uint64_t __71__OspreyGRPCStreamingContext_initWithQueue_responseHandler_completion___block_invoke(void *a1)
{
  v2 = [[OspreyBufferedOutputStream alloc] initWithBufferSize:0x2000 underlyingOutputStream:a1[5] queue:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  v5 = a1[5];

  return [v5 open];
}

- (void)finishWriting
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__OspreyGRPCStreamingContext_finishWriting__block_invoke;
  block[3] = &unk_2799F1D30;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)bindToUrlRequest:(id)a3
{
  if (!self->_closed)
  {
    [a3 setHTTPBodyStream:self->_inputStream];
  }
}

- (void)completeWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    OspreyLoggingInit();
    v5 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [(OspreyGRPCStreamingContext *)v5 completeWithError:v4];
    }
  }

  dispatch_assert_queue_V2(self->_queue);
  inputStream = self->_inputStream;
  self->_inputStream = 0;

  [(OspreyBufferedOutputStream *)self->_outputStream close];
  outputStream = self->_outputStream;
  self->_outputStream = 0;

  messageReader = self->_messageReader;
  self->_messageReader = 0;

  messageWriter = self->_messageWriter;
  self->_messageWriter = 0;

  self->_closed = 1;
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, v4);
    v11 = self->_completion;
    self->_completion = 0;
  }
}

- (void)handleResponseData:(id)a3
{
  v4 = a3;
  messageReader = self->_messageReader;
  OspreyLoggingInit();
  v6 = OspreyLogContextGRPC;
  if (messageReader)
  {
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [OspreyGRPCStreamingContext handleResponseData:];
    }

    dispatch_assert_queue_V2(self->_queue);
    [(OspreyMessageReader *)self->_messageReader readData:v4];
  }

  else if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
  {
    [(OspreyGRPCStreamingContext *)v6 handleResponseData:v7, v8, v9, v10, v11, v12, v13];
  }
}

- (void)_writeFrame:(id)a3 compressed:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (self->_closed)
  {
    OspreyLoggingInit();
    v9 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [(OspreyGRPCStreamingContext *)v9 _writeFrame:v10 compressed:v11 error:v12, v13, v14, v15, v16];
    }
  }

  else
  {
    if (v6 && !self->_compressionEnabled)
    {
      OspreyLoggingInit();
      v17 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
      {
        [(OspreyGRPCStreamingContext *)v17 _writeFrame:v18 compressed:v19 error:v20, v21, v22, v23, v24];
      }

      LOBYTE(v6) = 0;
    }

    queue = self->_queue;
    v26 = qos_class_self();
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke;
    v28[3] = &unk_2799F1D58;
    v29 = v8;
    v30 = self;
    v32 = v6;
    v31 = a5;
    v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v26, 0, v28);
    dispatch_async(queue, v27);
  }
}

uint64_t __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke(uint64_t a1)
{
  OspreyLoggingInit();
  v2 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke_cold_1(a1, v2);
  }

  return [*(*(a1 + 40) + 32) writeMessageData:*(a1 + 32) toStream:*(*(a1 + 40) + 48) compressionEnabled:*(a1 + 56) error:*(a1 + 48)];
}

- (void)completeWithError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s Completed with error: %@", v5, 0x16u);
}

- (void)handleResponseData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_1();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_25DDE6000, v2, OS_LOG_TYPE_DEBUG, "%s %@ handling %@", v3, 0x20u);
}

void __59__OspreyGRPCStreamingContext__writeFrame_compressed_error___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 length];
  v6 = *(*(a1 + 40) + 48);
  v7 = 136315650;
  v8 = "[OspreyGRPCStreamingContext _writeFrame:compressed:error:]_block_invoke";
  v9 = 2048;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&dword_25DDE6000, v4, OS_LOG_TYPE_DEBUG, "%s Writing frame of length %lu to outputStream: %@", &v7, 0x20u);
}

@end