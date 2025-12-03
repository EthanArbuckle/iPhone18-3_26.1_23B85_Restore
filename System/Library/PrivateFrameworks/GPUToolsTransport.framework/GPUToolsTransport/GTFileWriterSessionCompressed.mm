@interface GTFileWriterSessionCompressed
+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (BOOL)_finalizeCompressedFileData:(id *)data;
- (BOOL)_writeCompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error;
- (BOOL)finish:(id *)finish;
- (GTFileWriterSessionCompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (void)writeFileData:(id)data completionHandler:(id)handler;
@end

@implementation GTFileWriterSessionCompressed

+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  entriesCopy = entries;
  v13 = [[self alloc] initWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];

  return v13;
}

- (GTFileWriterSessionCompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  lCopy = l;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = GTFileWriterSessionCompressed;
  v13 = [(GTFileWriterSessionCompressed *)&v26 init];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [GTFileWriterSessionUncompressed sessionWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];
  v15 = *(v13 + 8);
  *(v13 + 8) = v14;

  if (!*(v13 + 8))
  {
LABEL_15:
    error = 0;
    goto LABEL_16;
  }

  v16 = [optionsCopy compressionAlgorithm] - 1;
  if (v16 > 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = dword_24DC0EEE0[v16];
  }

  if (compression_stream_init((v13 + 8), COMPRESSION_STREAM_DECODE, v17) == COMPRESSION_STATUS_OK)
  {
    *(v13 + 6) = malloc_type_malloc([optionsCopy chunkSize], 0x28ACB392uLL);
    chunkSize = [optionsCopy chunkSize];
    *(v13 + 7) = chunkSize;
    *(v13 + 1) = *(v13 + 6);
    *(v13 + 2) = chunkSize;
LABEL_11:
    error = v13;
    goto LABEL_16;
  }

  if (GTCoreLogUseOsLog())
  {
    v18 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [GTFileWriterSessionCompressed initWithFileEntries:relativeToURL:options:error:];
    }
  }

  else
  {
    v20 = *MEMORY[0x277D85DF8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize decode compression stream"];
    fprintf(v20, "%s\n", [v18 UTF8String]);
  }

  if (error)
  {
    v21 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Compression failed: %@", @"Failed to initialize decode compression stream"];
    v28[0] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    *error = [v21 errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v23];

    goto LABEL_15;
  }

LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)writeFileData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  v13 = 0;
  [(GTFileWriterSessionCompressed *)self _writeCompressedFileData:bytes length:v11 error:&v13];
  v12 = v13;
  handlerCopy[2](handlerCopy, v12);
}

- (BOOL)_writeCompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__GTFileWriterSessionCompressed__writeCompressedFileData_length_error___block_invoke;
  v10[3] = &unk_2796614B0;
  v10[4] = self;
  return ProcessCompressionStream(&self->_compressionStream, data, length, decompressorOutput, decompressorOutputSize, error, v10);
}

- (BOOL)finish:(id *)finish
{
  v5 = [(GTFileWriterSessionCompressed *)self _finalizeCompressedFileData:?];
  compression_stream_destroy(&self->_compressionStream);
  free(self->_decompressorOutput);
  self->_decompressorOutput = 0;
  self->_decompressorOutputSize = 0;
  uncompressedSession = self->_uncompressedSession;
  v10 = 0;
  v7 = [(GTFileWriterSessionUncompressed *)uncompressedSession finish:&v10];
  v8 = v10;
  if (v5 && !v7)
  {
    if (finish)
    {
      v8 = v8;
      LOBYTE(v5) = 0;
      *finish = v8;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_finalizeCompressedFileData:(id *)data
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__GTFileWriterSessionCompressed__finalizeCompressedFileData___block_invoke;
  v7[3] = &unk_2796614B0;
  v7[4] = self;
  return FinalizeCompressionStream(&self->_compressionStream, decompressorOutput, decompressorOutputSize, data, v7);
}

@end