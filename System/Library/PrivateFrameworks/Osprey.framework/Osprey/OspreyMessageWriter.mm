@interface OspreyMessageWriter
- (void)writeMessageData:(id)data toStream:(id)stream compressionEnabled:(BOOL)enabled error:(id *)error;
@end

@implementation OspreyMessageWriter

- (void)writeMessageData:(id)data toStream:(id)stream compressionEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v25[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  streamCopy = stream;
  if (enabledCopy)
  {
    v11 = [[OspreyZlibDataCompressor alloc] initWithOptions:31];
    _createDispatchData = [dataCopy _createDispatchData];
    v23 = 0;
    v13 = [(OspreyZlibDataCompressor *)v11 compressedDataForData:_createDispatchData error:&v23];
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
      if (!error)
      {
        goto LABEL_16;
      }
    }

    else if (!error)
    {
LABEL_16:

LABEL_17:
      goto LABEL_18;
    }

    v22 = v14;
    *error = v14;
    goto LABEL_16;
  }

  v14 = LengthPrefixedMessageFromData(dataCopy, 0);
  if (v14)
  {
LABEL_6:
    if ([streamCopy write:objc_msgSend(v14 maxLength:{"bytes"), objc_msgSend(v14, "length")}] == -1 && (objc_msgSend(streamCopy, "streamError"), v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
    {
      v24 = *MEMORY[0x277CCA7E8];
      streamError = [streamCopy streamError];
      v25[0] = streamError;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyMessageWriterErrorDomain" code:1 userInfo:v19];
      if (error)
      {
        v20 = v20;
        *error = v20;
      }
    }

    else
    {
      OspreyLoggingInit();
      v16 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
      {
        [OspreyMessageWriter writeMessageData:v16 toStream:v14 compressionEnabled:enabledCopy error:?];
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