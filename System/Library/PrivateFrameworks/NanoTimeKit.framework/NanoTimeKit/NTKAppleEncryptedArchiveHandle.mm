@interface NTKAppleEncryptedArchiveHandle
- (AAArchiveStream_impl)openReturningError:(id *)error;
- (BOOL)closeReturningError:(id *)error;
- (NTKAppleEncryptedArchiveHandle)initWithArchiveURL:(id)l symmetricKey:(id)key;
- (id)errorWithCode:(void *)code;
- (id)errorWithCode:(void *)code userInfo:;
- (void)dealloc;
@end

@implementation NTKAppleEncryptedArchiveHandle

- (NTKAppleEncryptedArchiveHandle)initWithArchiveURL:(id)l symmetricKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = NTKAppleEncryptedArchiveHandle;
  v8 = [(NTKAppleEncryptedArchiveHandle *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    archiveURL = v8->_archiveURL;
    v8->_archiveURL = v9;

    v11 = [keyCopy copy];
    symmetricKey = v8->_symmetricKey;
    v8->_symmetricKey = v11;
  }

  return v8;
}

- (void)dealloc
{
  AAArchiveStreamClose(self->_archiveStream);
  AAByteStreamClose(self->_decryptedStream);
  AEAContextDestroy(self->_context);
  AAByteStreamClose(self->_encryptedStream);
  v3.receiver = self;
  v3.super_class = NTKAppleEncryptedArchiveHandle;
  [(NTKAppleEncryptedArchiveHandle *)&v3 dealloc];
}

- (AAArchiveStream_impl)openReturningError:(id *)error
{
  if (!self->_encryptedStream)
  {
    archiveURL = [(NTKAppleEncryptedArchiveHandle *)self archiveURL];
    absoluteURL = [archiveURL absoluteURL];
    path = [absoluteURL path];
    self->_encryptedStream = AAFileStreamOpenWithPath([path fileSystemRepresentation], 16777472, 0);

    encryptedStream = self->_encryptedStream;
    if (encryptedStream)
    {
      v10 = AEAContextCreateWithEncryptedStream(encryptedStream);
      self->_context = v10;
      if (v10 && (v11 = v10, -[NTKAppleEncryptedArchiveHandle symmetricKey](self, "symmetricKey"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 bytes], -[NTKAppleEncryptedArchiveHandle symmetricKey](self, "symmetricKey"), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = AEAContextSetFieldBlob(v11, 9u, 0, v13, objc_msgSend(v14, "length")), v14, v12, !v11) && (v15 = AEADecryptionInputStreamOpen(self->_encryptedStream, self->_context, 0xC010000000000001, 0), (self->_decryptedStream = v15) != 0))
      {
        archiveEntryEvent = [(NTKAppleEncryptedArchiveHandle *)self archiveEntryEvent];

        decryptedStream = self->_decryptedStream;
        if (archiveEntryEvent)
        {
          archiveEntryEvent2 = [(NTKAppleEncryptedArchiveHandle *)self archiveEntryEvent];
          self->_archiveStream = AADecodeArchiveInputStreamOpen(decryptedStream, archiveEntryEvent2, invokeBlockForArchiveEvent, 0xC010000000000001, 0);

          archiveStream = self->_archiveStream;
          if (archiveStream)
          {
LABEL_11:
            v19 = 0;
LABEL_12:

            return archiveStream;
          }
        }

        else
        {
          archiveStream = AADecodeArchiveInputStreamOpen(self->_decryptedStream, 0, 0, 0xC010000000000001, 0);
          self->_archiveStream = archiveStream;
          if (archiveStream)
          {
            goto LABEL_11;
          }
        }

        v20 = 3;
      }

      else
      {
        v20 = 2;
      }
    }

    else
    {
      v20 = 1;
    }

    v19 = [(NTKAppleEncryptedArchiveHandle *)self errorWithCode:v20];
    AAArchiveStreamClose(self->_archiveStream);
    self->_archiveStream = 0;
    AAByteStreamClose(self->_decryptedStream);
    self->_decryptedStream = 0;
    AEAContextDestroy(self->_context);
    self->_context = 0;
    AAByteStreamClose(self->_encryptedStream);
    self->_encryptedStream = 0;
    if (error)
    {
      if (*error)
      {
        v22 = *error;
      }

      else
      {
        v22 = v19;
      }

      archiveStream = 0;
      *error = v22;
    }

    else
    {
      archiveStream = 0;
    }

    goto LABEL_12;
  }

  if (!error)
  {
    return 0;
  }

  if (!*error)
  {
    [(NTKAppleEncryptedArchiveHandle *)self openReturningError:error];
    return 0;
  }

  archiveStream = 0;
  *error = *error;
  return archiveStream;
}

- (BOOL)closeReturningError:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (!self->_encryptedStream)
  {
    if (error)
    {
      if (*error)
      {
        v11 = 0;
        *error = *error;
        return v11;
      }

      [(NTKAppleEncryptedArchiveHandle *)self openReturningError:error];
    }

    return 0;
  }

  v5 = AAArchiveStreamClose(self->_archiveStream);
  v6 = v5;
  if (v5)
  {
    v7 = @"archiveStream";
  }

  else
  {
    v7 = @"decryptedStream";
  }

  if (v5)
  {
    v8 = @"archiveStream";
  }

  else
  {
    v8 = 0;
  }

  self->_archiveStream = 0;
  v9 = AAByteStreamClose(self->_decryptedStream);
  if (v9)
  {
    v8 = v7;
  }

  self->_decryptedStream = 0;
  AEAContextDestroy(self->_context);
  self->_context = 0;
  if (AAByteStreamClose(self->_encryptedStream))
  {
    v10 = @"encryptedStream";
    if (v6)
    {
      v10 = @"archiveStream";
    }

    if (v9)
    {
      v10 = v7;
    }

    v8 = v10;
  }

  self->_encryptedStream = 0;
  v11 = v8 == 0;
  if (error && v8)
  {
    if (*error)
    {
      *error = *error;
    }

    else
    {
      v15 = @"failureStep";
      v16[0] = v8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v13 = [(NTKAppleEncryptedArchiveHandle *)self errorWithCode:v12 userInfo:?];
      *error = v13;
    }
  }

  return v11;
}

- (id)errorWithCode:(void *)code
{
  if (code)
  {
    code = [(NTKAppleEncryptedArchiveHandle *)code errorWithCode:a2 userInfo:MEMORY[0x277CBEC10]];
    v2 = vars8;
  }

  return code;
}

- (id)errorWithCode:(void *)code userInfo:
{
  if (self)
  {
    v5 = [code mutableCopy];
    v6 = *MEMORY[0x277CCA760];
    v7 = [v5 objectForKey:*MEMORY[0x277CCA760]];

    if (!v7)
    {
      archiveURL = [self archiveURL];
      [v5 setObject:archiveURL forKey:v6];
    }

    v9 = MEMORY[0x277CCA9B8];
    v10 = [v5 copy];
    v11 = [v9 errorWithDomain:@"NTKAppleEncryptedArchiveHandleErrorDomain" code:a2 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)openReturningError:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [(NTKAppleEncryptedArchiveHandle *)a1 errorWithCode:?];
  *a2 = v3;
}

@end