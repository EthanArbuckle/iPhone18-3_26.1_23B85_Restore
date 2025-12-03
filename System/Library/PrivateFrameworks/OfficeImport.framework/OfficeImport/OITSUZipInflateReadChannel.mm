@interface OITSUZipInflateReadChannel
- (BOOL)processData:(id)data inflateResult:(int *)result CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler;
- (OITSUZipInflateReadChannel)initWithReadChannel:(id)channel uncompressedSize:(unint64_t)size CRC:(unsigned int)c validateCRC:(BOOL)rC;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)handler error:(id)error;
- (void)prepareBuffer;
- (void)readWithHandler:(id)handler;
@end

@implementation OITSUZipInflateReadChannel

- (OITSUZipInflateReadChannel)initWithReadChannel:(id)channel uncompressedSize:(unint64_t)size CRC:(unsigned int)c validateCRC:(BOOL)rC
{
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = OITSUZipInflateReadChannel;
  v12 = [(OITSUZipInflateReadChannel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readChannel, channel);
    v13->_stream.next_in = 0;
    v13->_remainingUncompressedSize = size;
    v13->_CRC = c;
    v13->_validateCRC = rC;
    v13->_stream.avail_in = 0;
    v13->_stream.avail_out = 0;
    v13->_stream.next_out = 0;
    v13->_stream.zfree = 0;
    v13->_stream.opaque = 0;
    v13->_stream.zalloc = 0;
    if (inflateInit2_(&v13->_stream, -15, "1.2.12", 112))
    {
      if (TSUDefaultCat_init_token != -1)
      {
        [OITSUZipInflateReadChannel initWithReadChannel:uncompressedSize:CRC:validateCRC:];
      }

      v13 = 0;
    }
  }

  return v13;
}

void __83__OITSUZipInflateReadChannel_initWithReadChannel_uncompressedSize_CRC_validateCRC___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)dealloc
{
  [(OITSUZipInflateReadChannel *)self close];
  inflateEnd(&self->_stream);
  free(self->_outBuffer);
  v3.receiver = self;
  v3.super_class = OITSUZipInflateReadChannel;
  [(OITSUZipInflateReadChannel *)&v3 dealloc];
}

- (void)prepareBuffer
{
  if (self->_outBuffer)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUZipInflateReadChannel prepareBuffer]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipInflateReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:79 isFatal:0 description:"expected nil value for '%{public}s'", "_outBuffer"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  remainingUncompressedSize = self->_remainingUncompressedSize;
  if (remainingUncompressedSize >= 0x40000)
  {
    v6 = 0x40000;
  }

  else
  {
    v6 = self->_remainingUncompressedSize;
  }

  if (remainingUncompressedSize)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x40000;
  }

  self->_outBufferSize = v7;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  self->_outBuffer = v8;
  self->_stream.avail_out = self->_outBufferSize;
  self->_stream.next_out = v8;
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = crc32(0, 0, 0);
  readChannel = self->_readChannel;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__OITSUZipInflateReadChannel_readWithHandler___block_invoke;
  v7[3] = &unk_2799C67E8;
  v9 = v19;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  v10 = v15;
  v11 = v17;
  v12 = v13;
  [(TSUStreamReadChannel *)readChannel readWithHandler:v7];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __46__OITSUZipInflateReadChannel_readWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  if (v7 && *(v8 + 24))
  {
    *(v8 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!*(v8 + 24))
  {
    goto LABEL_10;
  }

  v9 = *(*(a1 + 56) + 8);
  if (!*(v9 + 24))
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 32) prepareBuffer];
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v9 = *(*(a1 + 56) + 8);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v10 inflateResult:v9 + 24 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_10:
}

- (BOOL)processData:(id)data inflateResult:(int *)result CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler
{
  doneCopy = done;
  dataCopy = data;
  handlerCopy = handler;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke;
  applier[3] = &unk_2799C6810;
  v20 = &v23;
  resultCopy = result;
  applier[4] = self;
  cCopy = c;
  v14 = handlerCopy;
  v19 = v14;
  dispatch_data_apply(dataCopy, applier);
  v15 = *(v24 + 24);
  if (!self->_validateCRC || (v24[3] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (doneCopy)
  {
    if (!c)
    {
LABEL_9:
      v15 = 1;
LABEL_10:
      if ((v15 & 1) == 0 || !doneCopy || *result == 1)
      {
        if (v15)
        {
          v16 = 1;
          goto LABEL_21;
        }

LABEL_20:
        [(OITSUZipInflateReadChannel *)self handleFailureWithHandler:v14 error:0];
        v16 = *(v24 + 24);
        goto LABEL_21;
      }

      if (TSUDefaultCat_init_token != -1)
      {
        [OITSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:];
      }

LABEL_19:
      *(v24 + 24) = 0;
      goto LABEL_20;
    }

LABEL_8:
    if (self->_CRC != *c)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        [OITSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:];
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v16 = 1;
  if (c && *result == 1)
  {
    goto LABEL_8;
  }

LABEL_21:

  _Block_object_dispose(&v23, 8);
  return v16 & 1;
}

uint64_t __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (HIDWORD(a5))
  {
    if (TSUDefaultCat_init_token != -1)
    {
      __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_cold_3();
    }

    goto LABEL_32;
  }

  v9 = *(a1 + 32);
  if (!*(v9 + 64))
  {
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipInflateReadChannel.m"];
    [OITSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:127 isFatal:0 description:"Buffer should have been initialized."];

    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_32;
  }

  *(v9 + 40) = a5;
  *(*(a1 + 32) + 32) = a4;
  v10 = *(a1 + 32);
  v11 = 1;
  if (*(v10 + 40))
  {
    v12 = *MEMORY[0x277D85CB0];
    while (1)
    {
      if (**(a1 + 56))
      {
LABEL_34:
        v11 = 1;
        goto LABEL_33;
      }

      v13 = inflate((v10 + 32), 0);
      **(a1 + 56) = v13;
      if ((v13 + 5) > 6 || ((1 << (v13 + 5)) & 0x61) == 0)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_cold_2();
        }

LABEL_32:
        v11 = 0;
        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_33;
      }

      v15 = v13;
      v10 = *(a1 + 32);
      v16 = *(v10 + 64);
      if (v13 == 1)
      {
        goto LABEL_15;
      }

      if (!v16)
      {
        break;
      }

LABEL_28:
      if (!*(v10 + 40))
      {
        goto LABEL_34;
      }
    }

    v16 = 0;
LABEL_15:
    v17 = *(v10 + 144);
    v18 = v17 - v16;
    if (*(v10 + 28) == 1)
    {
      v19 = *(a1 + 64);
      if (v19)
      {
        v20 = *v19;
        v21 = *(v10 + 152);
        if (HIDWORD(v18))
        {
          __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_cold_1();
          v22 = -1;
        }

        else
        {
          v22 = v18;
        }

        **(a1 + 64) = crc32(v20, v21, v22);
        v10 = *(a1 + 32);
        v17 = *(v10 + 144);
      }
    }

    v23 = dispatch_data_create(*(v10 + 152), v17, 0, v12);
    v24 = v23;
    if (*(*(a1 + 32) + 144) == v18)
    {
      subrange = v23;
    }

    else
    {
      subrange = dispatch_data_create_subrange(v23, 0, v18);
    }

    v26 = subrange;
    (*(*(a1 + 40) + 16))();
    *(*(a1 + 32) + 144) = 0;
    *(*(a1 + 32) + 152) = 0;
    v27 = *(a1 + 32);
    v28 = *(v27 + 16);
    v29 = v28 >= v18;
    v30 = v28 - v18;
    if (!v29)
    {
      v30 = 0;
    }

    *(v27 + 16) = v30;
    if (v15 != 1)
    {
      [*(a1 + 32) prepareBuffer];
    }

    v10 = *(a1 + 32);
    goto LABEL_28;
  }

LABEL_33:

  return v11;
}

void __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_3()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

void __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_5()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (void)handleFailureWithHandler:(id)handler error:(id)error
{
  if (error)
  {
    v5 = *(handler + 2);
    handlerCopy = handler;
    v5();
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    handlerCopy2 = handler;
    handlerCopy = [v6 tsu_fileReadUnknownErrorWithUserInfo:0];
    (*(handler + 2))(handlerCopy2, 1, 0);
  }
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

uint64_t __75__OITSUZipInflateReadChannel_processData_inflateResult_CRC_isDone_handler___block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUZipInflateReadChannel.m"];
  [OITSUAssertionHandler handleFailureInFunction:v0 file:v1 lineNumber:151 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

  return +[OITSUAssertionHandler logBacktraceThrottled];
}

@end