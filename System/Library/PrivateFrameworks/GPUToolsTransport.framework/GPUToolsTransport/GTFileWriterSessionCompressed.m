@interface GTFileWriterSessionCompressed
+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)_finalizeCompressedFileData:(id *)a3;
- (BOOL)_writeCompressedFileData:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)finish:(id *)a3;
- (GTFileWriterSessionCompressed)initWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6;
- (void)writeFileData:(id)a3 completionHandler:(id)a4;
@end

@implementation GTFileWriterSessionCompressed

+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithFileEntries:v12 relativeToURL:v11 options:v10 error:a6];

  return v13;
}

- (GTFileWriterSessionCompressed)initWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26.receiver = self;
  v26.super_class = GTFileWriterSessionCompressed;
  v13 = [(GTFileWriterSessionCompressed *)&v26 init];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [GTFileWriterSessionUncompressed sessionWithFileEntries:v10 relativeToURL:v11 options:v12 error:a6];
  v15 = *(v13 + 8);
  *(v13 + 8) = v14;

  if (!*(v13 + 8))
  {
LABEL_15:
    a6 = 0;
    goto LABEL_16;
  }

  v16 = [v12 compressionAlgorithm] - 1;
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
    *(v13 + 6) = malloc_type_malloc([v12 chunkSize], 0x28ACB392uLL);
    v19 = [v12 chunkSize];
    *(v13 + 7) = v19;
    *(v13 + 1) = *(v13 + 6);
    *(v13 + 2) = v19;
LABEL_11:
    a6 = v13;
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

  if (a6)
  {
    v21 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Compression failed: %@", @"Failed to initialize decode compression stream"];
    v28[0] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    *a6 = [v21 errorWithDomain:@"com.apple.gputools.filewriter" code:0 userInfo:v23];

    goto LABEL_15;
  }

LABEL_16:

  v24 = *MEMORY[0x277D85DE8];
  return a6;
}

- (void)writeFileData:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = a3;
  v10 = [v9 bytes];
  v11 = [v9 length];

  v13 = 0;
  [(GTFileWriterSessionCompressed *)self _writeCompressedFileData:v10 length:v11 error:&v13];
  v12 = v13;
  v8[2](v8, v12);
}

- (BOOL)_writeCompressedFileData:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__GTFileWriterSessionCompressed__writeCompressedFileData_length_error___block_invoke;
  v10[3] = &unk_2796614B0;
  v10[4] = self;
  return ProcessCompressionStream(&self->_compressionStream, a3, a4, decompressorOutput, decompressorOutputSize, a5, v10);
}

- (BOOL)finish:(id *)a3
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
    if (a3)
    {
      v8 = v8;
      LOBYTE(v5) = 0;
      *a3 = v8;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_finalizeCompressedFileData:(id *)a3
{
  decompressorOutput = self->_decompressorOutput;
  decompressorOutputSize = self->_decompressorOutputSize;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__GTFileWriterSessionCompressed__finalizeCompressedFileData___block_invoke;
  v7[3] = &unk_2796614B0;
  v7[4] = self;
  return FinalizeCompressionStream(&self->_compressionStream, decompressorOutput, decompressorOutputSize, a3, v7);
}

@end