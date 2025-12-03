@interface OspreyMessageReader
- (OspreyMessageReader)initWithMessageHandler:(id)handler;
- (void)_produceMessageBody:(id)body;
- (void)readData:(id)data;
@end

@implementation OspreyMessageReader

- (OspreyMessageReader)initWithMessageHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = OspreyMessageReader;
  v5 = [(OspreyMessageReader *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    messageHandler = v5->_messageHandler;
    v5->_messageHandler = v6;
  }

  return v5;
}

- (void)_produceMessageBody:(id)body
{
  bodyCopy = body;
  OspreyLoggingInit();
  v5 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyMessageReader *)self _produceMessageBody:v5, bodyCopy];
  }

  messageHandler = self->_messageHandler;
  if (messageHandler)
  {
    messageHandler[2](messageHandler, bodyCopy);
  }
}

- (void)readData:(id)data
{
  dataCopy = data;
  OspreyLoggingInit();
  v5 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [(OspreyMessageReader *)self readData:v5, dataCopy];
  }

  if (self->_readerState == 1)
  {
    OspreyLoggingInit();
    v6 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [(OspreyMessageReader *)self readData:v6];
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__OspreyMessageReader_readData___block_invoke;
  v8[3] = &unk_2799F1DD0;
  v8[4] = self;
  v8[5] = 5;
  [dataCopy enumerateByteRangesUsingBlock:v8];
  if (self->_readerState == 1)
  {
    OspreyLoggingInit();
    v7 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [(OspreyMessageReader *)self readData:v7];
    }
  }
}

void __32__OspreyMessageReader_readData___block_invoke(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, unint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    a3.n128_u64[0] = 136315650;
    v35 = a3;
    v8 = a5;
    do
    {
      v9 = *(a1 + 32);
      if (!*(v9 + 48))
      {
        if (!*(v9 + 16))
        {
          v9 = a1;
        }

        v10 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:*(v9 + 40)];
        v11 = *(a1 + 32);
        v12 = *(v11 + 48);
        *(v11 + 48) = v10;

        v9 = *(a1 + 32);
      }

      v13 = a5 - v8;
      v14 = *(v9 + 16);
      if (v14 == 1)
      {
        v21 = [*(v9 + 48) length];
        v22 = *(a1 + 32);
        v23 = *(v22 + 40);
        if (v21 + v8 <= v23)
        {
          v24 = v8;
        }

        else
        {
          v24 = v23 - [*(v22 + 48) length];
          v22 = *(a1 + 32);
        }

        [*(v22 + 48) appendBytes:a2 + v13 length:{v24, *&v35}];
        v8 -= v24;
        v25 = [*(*(a1 + 32) + 48) length];
        v26 = *(a1 + 32);
        if (v25 == *(v26 + 40))
        {
          if (*(v26 + 32) == 1)
          {
            v27 = [[OspreyZlibDataDecompressor alloc] initWithOptions:31];
            v28 = [*(*(a1 + 32) + 48) _createDispatchData];
            v36 = 0;
            v29 = [(OspreyZlibDataDecompressor *)v27 decompressedDataForData:v28 error:&v36];
            v30 = v36;

            if (v30 || !v29)
            {
              OspreyLoggingInit();
              v31 = OspreyLogContextGRPC;
              if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
              {
                v34 = *(*(a1 + 32) + 24);
                *buf = v35.n128_u32[0];
                v38 = "[OspreyMessageReader readData:]_block_invoke";
                v39 = 2048;
                v40 = v34;
                v41 = 2112;
                v42 = v30;
                _os_log_error_impl(&dword_25DDE6000, v31, OS_LOG_TYPE_ERROR, "%s Error decompressing message %lu with %@", buf, 0x20u);
              }
            }

            else
            {
              [*(a1 + 32) _produceMessageBody:v29];
            }
          }

          else
          {
            v30 = [*(v26 + 48) copy];
            [v26 _produceMessageBody:v30];
          }

          v32 = *(a1 + 32);
          v33 = *(v32 + 48);
          *(v32 + 48) = 0;

          *(*(a1 + 32) + 32) = 0;
          *(*(a1 + 32) + 40) = 0;
          *(*(a1 + 32) + 16) = 0;
          ++*(*(a1 + 32) + 24);
        }
      }

      else if (!v14)
      {
        v15 = [*(v9 + 48) length];
        v16 = *(a1 + 40);
        v17 = v8;
        if (v15 + v8 > v16)
        {
          v17 = v16 - [*(*(a1 + 32) + 48) length];
        }

        [*(*(a1 + 32) + 48) appendBytes:a2 + v13 length:{v17, *&v35}];
        v8 -= v17;
        if ([*(*(a1 + 32) + 48) length] == *(a1 + 40))
        {
          v18 = [*(*(a1 + 32) + 48) bytes];
          *(*(a1 + 32) + 40) = bswap32(*(v18 + 1));
          *(*(a1 + 32) + 32) = *v18 != 0;
          v19 = *(a1 + 32);
          v20 = *(v19 + 48);
          *(v19 + 48) = 0;

          *(*(a1 + 32) + 16) = 1;
        }
      }
    }

    while (v8);
  }
}

- (void)_produceMessageBody:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 length];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x3Au);
}

- (void)readData:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 length];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)readData:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = a2;
  [v2 length];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x34u);
}

- (void)readData:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v3 = a2;
  [v2 length];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x34u);
}

@end