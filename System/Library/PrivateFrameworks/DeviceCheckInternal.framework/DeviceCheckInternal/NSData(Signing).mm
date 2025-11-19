@interface NSData(Signing)
- (id)dc_compressedData:()Signing;
@end

@implementation NSData(Signing)

- (id)dc_compressedData:()Signing
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [a1 length];
  if (v5 < 0)
  {
    if (DCInternalLogSystem_onceToken_4 != -1)
    {
      [NSData(Signing) dc_compressedData:];
    }

    v11 = DCInternalLogSystem_log_4;
    if (!os_log_type_enabled(DCInternalLogSystem_log_4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v16 = 136315394;
    v17 = "NSData+Signing.m";
    v18 = 1024;
    v19 = 21;
    v12 = "%25s:%-5d Overflow while attempting to compress data.";
LABEL_13:
    _os_log_impl(&dword_2488FB000, v11, OS_LOG_TYPE_ERROR, v12, &v16, 0x12u);
    goto LABEL_19;
  }

  v6 = 2 * v5;
  v7 = malloc_type_malloc(2 * v5, 0x3E933E65uLL);
  if (!v7)
  {
    if (DCInternalLogSystem_onceToken_4 != -1)
    {
      [NSData(Signing) dc_compressedData:];
    }

    v11 = DCInternalLogSystem_log_4;
    if (!os_log_type_enabled(DCInternalLogSystem_log_4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v16 = 136315394;
    v17 = "NSData+Signing.m";
    v18 = 1024;
    v19 = 27;
    v12 = "%25s:%-5d Failed to allocate buffer for compressed data.";
    goto LABEL_13;
  }

  v8 = v7;
  v9 = compression_encode_buffer(v7, v6, [a1 bytes], objc_msgSend(a1, "length"), 0, a3);
  if (v9)
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:v9 freeWhenDone:1];
    goto LABEL_20;
  }

  if (DCInternalLogSystem_onceToken_4 != -1)
  {
    [NSData(Signing) dc_compressedData:];
  }

  v13 = DCInternalLogSystem_log_4;
  if (os_log_type_enabled(DCInternalLogSystem_log_4, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315394;
    v17 = "NSData+Signing.m";
    v18 = 1024;
    v19 = 33;
    _os_log_impl(&dword_2488FB000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to compress data.", &v16, 0x12u);
  }

  free(v8);
LABEL_19:
  v10 = 0;
LABEL_20:
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

@end