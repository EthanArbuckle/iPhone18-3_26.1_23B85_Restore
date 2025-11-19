@interface HDEncryptedArchive
+ (BOOL)encryptContentsOfFileHandle:(id)a3 to:(id)a4 key:(id)a5 error:(id *)a6;
+ (id)archiveForDecryptionWithFileHandle:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)archiveForEncryptionWithFileHandle:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)randomSymmetricKeyWithError:(id *)a3;
- (BOOL)writeData:(id)a3 error:(id *)a4;
- (HDEncryptedArchive)initWithContext:(AEAContext_impl *)a3 fileStream:(AAByteStream_impl *)a4 byteStream:(AAByteStream_impl *)a5 mode:(int64_t)a6;
- (id)readDataOfLength:(int64_t)a3 offset:(int64_t)a4 error:(id *)a5;
- (void)close;
- (void)dealloc;
@end

@implementation HDEncryptedArchive

+ (id)archiveForDecryptionWithFileHandle:(id)a3 key:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = dup([a3 fileDescriptor]);
  v9 = AAFileStreamOpenWithFD(v8, 1);
  if (!v9)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = @"Failed to open file stream.";
    v20 = a5;
    v21 = 922;
LABEL_9:
    [v18 hk_assignError:v20 code:v21 format:v19];
    v22 = 0;
    goto LABEL_16;
  }

  v10 = v9;
  v11 = AEAContextCreateWithEncryptedStream(v9);
  if (!v11)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = @"Failed to construct context from encrypted stream.";
    v20 = a5;
    v21 = 921;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [v7 keyDataForDecryptionWithError:a5];
  if (v13)
  {
    v14 = [v7 symmetric];
    v15 = [v13 bytes];
    v16 = [v13 length];
    if (v14)
    {
      v17 = AEAContextSetFieldBlob(v12, 9u, 0, v15, v16);
      if ((v17 & 0x80000000) != 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a5 code:921 format:{@"Failed to set symmetric key: %d", v17}];
        goto LABEL_14;
      }
    }

    else
    {
      v23 = AEAContextSetFieldBlob(v12, 0xBu, 1u, v15, v16);
      if ((v23 & 0x80000000) != 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:a5 code:921 format:{@"Failed to set recipient private key: %d", v23}];
        goto LABEL_14;
      }
    }

    v22 = AEADecryptionRandomAccessInputStreamOpen(v10, v12, 0, 0, 1);
    if (v22)
    {
      v22 = [[HDEncryptedArchive alloc] initWithContext:v12 fileStream:v10 byteStream:v22 mode:1];
    }

    goto LABEL_15;
  }

LABEL_14:
  v22 = 0;
LABEL_15:

LABEL_16:

  return v22;
}

+ (id)archiveForEncryptionWithFileHandle:(id)a3 key:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 symmetric])
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  v10 = AEAContextCreateWithProfile(v9);
  if (!v10)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:921 format:@"Failed to create context."];
    v19 = 0;
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v8 keyDataForEncryptionWithError:a5];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = [v8 symmetric];
  v14 = [v12 bytes];
  v15 = [v12 length];
  if (v13)
  {
    v16 = AEAContextSetFieldBlob(v11, 9u, 0, v14, v15);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = MEMORY[0x277CCA9B8];
      v28 = v16;
      v18 = @"Failed to set symmetric key: %d";
LABEL_16:
      v24 = v17;
      v25 = a5;
      v26 = 921;
LABEL_17:
      [v24 hk_assignError:v25 code:v26 format:{v18, v28}];
LABEL_18:
      v19 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v20 = AEAContextSetFieldBlob(v11, 0xAu, 1u, v14, v15);
    if ((v20 & 0x80000000) != 0)
    {
      v17 = MEMORY[0x277CCA9B8];
      v28 = v20;
      v18 = @"Failed to set recipient public key: %d";
      goto LABEL_16;
    }
  }

  v21 = AEAContextSetFieldUInt(v11, 3u, 0);
  if ((v21 & 0x80000000) != 0)
  {
    v17 = MEMORY[0x277CCA9B8];
    v28 = v21;
    v18 = @"Failed to set compression algorithm key: %d";
    goto LABEL_16;
  }

  v22 = dup([v7 fileDescriptor]);
  v23 = AAFileStreamOpenWithFD(v22, 1);
  if (!v23)
  {
    v24 = MEMORY[0x277CCA9B8];
    v18 = @"Failed to open file stream.";
    v25 = a5;
    v26 = 922;
    goto LABEL_17;
  }

  v19 = [[HDEncryptedArchive alloc] initWithContext:v11 fileStream:v23 byteStream:AEAEncryptionOutputStreamOpen(v23 mode:v11, 0, 1), 0];
LABEL_19:

LABEL_20:

  return v19;
}

+ (BOOL)encryptContentsOfFileHandle:(id)a3 to:(id)a4 key:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [HDEncryptedArchive archiveForEncryptionWithFileHandle:a4 key:a5 error:a6];
  if (v10)
  {
    while (1)
    {
      v11 = [v9 readDataUpToLength:0x8000 error:a6];
      if (![v11 length])
      {
        break;
      }

      v12 = [v10 writeData:v11 error:a6];

      if (!v12)
      {
        goto LABEL_4;
      }
    }

    [v10 close];
    v13 = 1;
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  return v13;
}

+ (id)randomSymmetricKeyWithError:(id *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  v5 = SecRandomCopyBytes(*MEMORY[0x277CDC540], [v4 length], objc_msgSend(v4, "mutableBytes"));
  if (v5)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:2000 format:{@"Failed to generate random symmetric key: %d", v5}];
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (HDEncryptedArchive)initWithContext:(AEAContext_impl *)a3 fileStream:(AAByteStream_impl *)a4 byteStream:(AAByteStream_impl *)a5 mode:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = HDEncryptedArchive;
  result = [(HDEncryptedArchive *)&v11 init];
  if (result)
  {
    result->_byteStream = a5;
    result->_mode = a6;
    result->_context = a3;
    result->_fileStream = a4;
  }

  return result;
}

- (void)dealloc
{
  [(HDEncryptedArchive *)self close];
  v3.receiver = self;
  v3.super_class = HDEncryptedArchive;
  [(HDEncryptedArchive *)&v3 dealloc];
}

- (void)close
{
  byteStream = self->_byteStream;
  if (byteStream)
  {
    AAByteStreamClose(byteStream);
    self->_byteStream = 0;
  }

  fileStream = self->_fileStream;
  if (fileStream)
  {
    AAByteStreamClose(fileStream);
    self->_fileStream = 0;
  }

  context = self->_context;
  if (context)
  {
    AEAContextDestroy(context);
    self->_context = 0;
  }
}

- (BOOL)writeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_mode)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = @"Archive is not open for encryption.";
    v10 = a4;
    v11 = 126;
LABEL_3:
    [v8 hk_assignError:v10 code:v11 format:{v9, v16}];
    goto LABEL_4;
  }

  byteStream = self->_byteStream;
  if (!byteStream)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = @"Archive is not open.";
    v10 = a4;
    v11 = 3;
    goto LABEL_3;
  }

  v15 = AAByteStreamWrite(byteStream, [v6 bytes], objc_msgSend(v6, "length"));
  if ((v15 & 0x8000000000000000) == 0)
  {
    v12 = 1;
    goto LABEL_5;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a4 code:923 format:{@"Failed to write encrypted data: %ld", v15}];
LABEL_4:
  v12 = 0;
LABEL_5:

  return v12;
}

- (id)readDataOfLength:(int64_t)a3 offset:(int64_t)a4 error:(id *)a5
{
  if (self->_mode != 1)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Archive is not open for decryption.";
    v14 = a5;
    v15 = 126;
LABEL_9:
    [v12 hk_assignError:v14 code:v15 format:v13];
    v11 = 0;
    goto LABEL_12;
  }

  if (!self->_byteStream)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Archive is not open.";
    v14 = a5;
    v15 = 3;
    goto LABEL_9;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a3];
  v10 = AAByteStreamPRead(self->_byteStream, [v9 mutableBytes], a3, a4);
  if (v10 < 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a5 code:923 format:{@"Failed to read encrypted data at %lld (length %ld): %ld (errno: %d)", a4, a3, v10, *__error()}];
    v11 = 0;
  }

  else
  {
    if (a3 > v10)
    {
      [v9 replaceBytesInRange:v10 withBytes:a3 - v10 length:{0, 0}];
    }

    v11 = v9;
  }

LABEL_12:

  return v11;
}

@end