@interface HDEncryptedArchive
+ (BOOL)encryptContentsOfFileHandle:(id)handle to:(id)to key:(id)key error:(id *)error;
+ (id)archiveForDecryptionWithFileHandle:(id)handle key:(id)key error:(id *)error;
+ (id)archiveForEncryptionWithFileHandle:(id)handle key:(id)key error:(id *)error;
+ (id)randomSymmetricKeyWithError:(id *)error;
- (BOOL)writeData:(id)data error:(id *)error;
- (HDEncryptedArchive)initWithContext:(AEAContext_impl *)context fileStream:(AAByteStream_impl *)stream byteStream:(AAByteStream_impl *)byteStream mode:(int64_t)mode;
- (id)readDataOfLength:(int64_t)length offset:(int64_t)offset error:(id *)error;
- (void)close;
- (void)dealloc;
@end

@implementation HDEncryptedArchive

+ (id)archiveForDecryptionWithFileHandle:(id)handle key:(id)key error:(id *)error
{
  keyCopy = key;
  v8 = dup([handle fileDescriptor]);
  v9 = AAFileStreamOpenWithFD(v8, 1);
  if (!v9)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = @"Failed to open file stream.";
    errorCopy2 = error;
    v21 = 922;
LABEL_9:
    [v18 hk_assignError:errorCopy2 code:v21 format:v19];
    v22 = 0;
    goto LABEL_16;
  }

  v10 = v9;
  v11 = AEAContextCreateWithEncryptedStream(v9);
  if (!v11)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = @"Failed to construct context from encrypted stream.";
    errorCopy2 = error;
    v21 = 921;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = [keyCopy keyDataForDecryptionWithError:error];
  if (v13)
  {
    symmetric = [keyCopy symmetric];
    bytes = [v13 bytes];
    v16 = [v13 length];
    if (symmetric)
    {
      v17 = AEAContextSetFieldBlob(v12, 9u, 0, bytes, v16);
      if ((v17 & 0x80000000) != 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:921 format:{@"Failed to set symmetric key: %d", v17}];
        goto LABEL_14;
      }
    }

    else
    {
      v23 = AEAContextSetFieldBlob(v12, 0xBu, 1u, bytes, v16);
      if ((v23 & 0x80000000) != 0)
      {
        [MEMORY[0x277CCA9B8] hk_assignError:error code:921 format:{@"Failed to set recipient private key: %d", v23}];
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

+ (id)archiveForEncryptionWithFileHandle:(id)handle key:(id)key error:(id *)error
{
  handleCopy = handle;
  keyCopy = key;
  if ([keyCopy symmetric])
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
    [MEMORY[0x277CCA9B8] hk_assignError:error code:921 format:@"Failed to create context."];
    v19 = 0;
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [keyCopy keyDataForEncryptionWithError:error];
  if (!v12)
  {
    goto LABEL_18;
  }

  symmetric = [keyCopy symmetric];
  bytes = [v12 bytes];
  v15 = [v12 length];
  if (symmetric)
  {
    v16 = AEAContextSetFieldBlob(v11, 9u, 0, bytes, v15);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = MEMORY[0x277CCA9B8];
      v28 = v16;
      v18 = @"Failed to set symmetric key: %d";
LABEL_16:
      v24 = v17;
      errorCopy2 = error;
      v26 = 921;
LABEL_17:
      [v24 hk_assignError:errorCopy2 code:v26 format:{v18, v28}];
LABEL_18:
      v19 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v20 = AEAContextSetFieldBlob(v11, 0xAu, 1u, bytes, v15);
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

  v22 = dup([handleCopy fileDescriptor]);
  v23 = AAFileStreamOpenWithFD(v22, 1);
  if (!v23)
  {
    v24 = MEMORY[0x277CCA9B8];
    v18 = @"Failed to open file stream.";
    errorCopy2 = error;
    v26 = 922;
    goto LABEL_17;
  }

  v19 = [[HDEncryptedArchive alloc] initWithContext:v11 fileStream:v23 byteStream:AEAEncryptionOutputStreamOpen(v23 mode:v11, 0, 1), 0];
LABEL_19:

LABEL_20:

  return v19;
}

+ (BOOL)encryptContentsOfFileHandle:(id)handle to:(id)to key:(id)key error:(id *)error
{
  handleCopy = handle;
  v10 = [HDEncryptedArchive archiveForEncryptionWithFileHandle:to key:key error:error];
  if (v10)
  {
    while (1)
    {
      v11 = [handleCopy readDataUpToLength:0x8000 error:error];
      if (![v11 length])
      {
        break;
      }

      v12 = [v10 writeData:v11 error:error];

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

+ (id)randomSymmetricKeyWithError:(id *)error
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  v5 = SecRandomCopyBytes(*MEMORY[0x277CDC540], [v4 length], objc_msgSend(v4, "mutableBytes"));
  if (v5)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:2000 format:{@"Failed to generate random symmetric key: %d", v5}];
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (HDEncryptedArchive)initWithContext:(AEAContext_impl *)context fileStream:(AAByteStream_impl *)stream byteStream:(AAByteStream_impl *)byteStream mode:(int64_t)mode
{
  v11.receiver = self;
  v11.super_class = HDEncryptedArchive;
  result = [(HDEncryptedArchive *)&v11 init];
  if (result)
  {
    result->_byteStream = byteStream;
    result->_mode = mode;
    result->_context = context;
    result->_fileStream = stream;
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

- (BOOL)writeData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (self->_mode)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = @"Archive is not open for encryption.";
    errorCopy2 = error;
    v11 = 126;
LABEL_3:
    [v8 hk_assignError:errorCopy2 code:v11 format:{v9, v16}];
    goto LABEL_4;
  }

  byteStream = self->_byteStream;
  if (!byteStream)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = @"Archive is not open.";
    errorCopy2 = error;
    v11 = 3;
    goto LABEL_3;
  }

  v15 = AAByteStreamWrite(byteStream, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  if ((v15 & 0x8000000000000000) == 0)
  {
    v12 = 1;
    goto LABEL_5;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:error code:923 format:{@"Failed to write encrypted data: %ld", v15}];
LABEL_4:
  v12 = 0;
LABEL_5:

  return v12;
}

- (id)readDataOfLength:(int64_t)length offset:(int64_t)offset error:(id *)error
{
  if (self->_mode != 1)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Archive is not open for decryption.";
    errorCopy2 = error;
    v15 = 126;
LABEL_9:
    [v12 hk_assignError:errorCopy2 code:v15 format:v13];
    v11 = 0;
    goto LABEL_12;
  }

  if (!self->_byteStream)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = @"Archive is not open.";
    errorCopy2 = error;
    v15 = 3;
    goto LABEL_9;
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:length];
  v10 = AAByteStreamPRead(self->_byteStream, [v9 mutableBytes], length, offset);
  if (v10 < 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:923 format:{@"Failed to read encrypted data at %lld (length %ld): %ld (errno: %d)", offset, length, v10, *__error()}];
    v11 = 0;
  }

  else
  {
    if (length > v10)
    {
      [v9 replaceBytesInRange:v10 withBytes:length - v10 length:{0, 0}];
    }

    v11 = v9;
  }

LABEL_12:

  return v11;
}

@end