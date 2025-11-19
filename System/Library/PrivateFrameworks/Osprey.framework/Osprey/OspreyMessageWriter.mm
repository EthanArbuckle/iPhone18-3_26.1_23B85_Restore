@interface OspreyMessageWriter
- (void)writeMessageData:(id)a3 toStream:(id)a4 compressionEnabled:(BOOL)a5 error:(id *)a6;
@end

@implementation OspreyMessageWriter

- (void)writeMessageData:(id)a3 toStream:(id)a4 compressionEnabled:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v25[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = [[OspreyZlibDataCompressor alloc] initWithOptions:31];
    v12 = [v9 _createDispatchData];
    v23 = 0;
    v13 = [(OspreyZlibDataCompressor *)v11 compressedDataForData:v12 error:&v23];
    v14 = v23;

    if (v13)
    {
      v15 = LengthPrefixedMessageFromData(v13, 1);

      v14 = v15;
      if (!v15)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    OspreyLoggingInit();
    v21 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyMessageWriter writeMessageData:v21 toStream:v14 compressionEnabled:? error:?];
      if (!a6)
      {
        goto LABEL_16;
      }
    }

    else if (!a6)
    {
LABEL_16:

LABEL_17:
      goto LABEL_18;
    }

    v22 = v14;
    *a6 = v14;
    goto LABEL_16;
  }

  v14 = LengthPrefixedMessageFromData(v9, 0);
  if (v14)
  {
LABEL_6:
    if ([v10 write:objc_msgSend(v14 maxLength:{"bytes"), objc_msgSend(v14, "length")}] == -1 && (objc_msgSend(v10, "streamError"), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
      v24 = *MEMORY[0x277CCA7E8];
      v18 = [v10 streamError];
      v25[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyMessageWriterErrorDomain" code:1 userInfo:v19];
      if (a6)
      {
        v20 = v20;
        *a6 = v20;
      }
    }

    else
    {
      OspreyLoggingInit();
      v16 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
      {
        [OspreyMessageWriter writeMessageData:v16 toStream:v14 compressionEnabled:v7 error:?];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

- (void)writeMessageData:(char)a3 toStream:compressionEnabled:error:.cold.1(void *a1, void *a2, char a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 136315650;
  v7 = "[OspreyMessageWriter writeMessageData:toStream:compressionEnabled:error:]";
  v8 = 2048;
  v9 = [a2 length];
  v10 = 1024;
  v11 = a3 & 1;
  _os_log_debug_impl(&dword_25DDE6000, v5, OS_LOG_TYPE_DEBUG, "%s Wrote data of size: %lu, compressed: %d", &v6, 0x1Cu);
}

- (void)writeMessageData:(void *)a1 toStream:(void *)a2 compressionEnabled:error:.cold.2(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 136315394;
  v6 = "[OspreyMessageWriter writeMessageData:toStream:compressionEnabled:error:]";
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_ERROR, "%s Error compressing data! Error: %@", &v5, 0x16u);
}

@end