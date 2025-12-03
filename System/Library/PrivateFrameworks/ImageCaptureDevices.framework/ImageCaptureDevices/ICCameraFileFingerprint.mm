@interface ICCameraFileFingerprint
- (ICCameraFileFingerprint)init;
- (NSString)zeroByteFileFingerprint;
- (id)fingerprintForData:(id)data error:(id *)error;
- (id)fingerprintForFD:(int)d error:(id *)error;
- (id)fingerprintForFileAtURL:(id)l error:(id *)error;
- (id)fixupFileHandleError:(id)error;
- (void)_createSignatureGenerator;
@end

@implementation ICCameraFileFingerprint

- (ICCameraFileFingerprint)init
{
  v3.receiver = self;
  v3.super_class = ICCameraFileFingerprint;
  return [(ICCameraFileFingerprint *)&v3 init];
}

- (id)fixupFileHandleError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = *MEMORY[0x29EDB9E30];
  v6 = [domain isEqualToString:*MEMORY[0x29EDB9E30]];

  if (v6)
  {
    userInfo = [errorCopy userInfo];
    v8 = *MEMORY[0x29EDB9F18];
    v9 = [userInfo objectForKey:*MEMORY[0x29EDB9F18]];

    if (!v9)
    {
      v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:objc_msgSend(errorCopy userInfo:{"code"), 0}];
      userInfo2 = [errorCopy userInfo];
      v12 = [userInfo2 mutableCopy];
      v13 = v12;
      if (v12)
      {
        dictionary = v12;
      }

      else
      {
        dictionary = [MEMORY[0x29EDB8E00] dictionary];
      }

      v15 = dictionary;

      [v15 setObject:v10 forKey:v8];
      v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:v5 code:objc_msgSend(errorCopy userInfo:{"code"), v15}];

      errorCopy = v16;
    }
  }

  return errorCopy;
}

- (void)_createSignatureGenerator
{
  v2 = [@"MYSUPERSECRECTKEYPADDEDTO32BYTES" dataUsingEncoding:4];
  v3 = MMCSSignatureGeneratorCreateWithBoundaryKey();

  return v3;
}

- (id)fingerprintForFileAtURL:(id)l error:(id *)error
{
  v6 = [MEMORY[0x29EDB9FB0] fileHandleForReadingFromURL:l error:?];
  v7 = v6;
  if (v6)
  {
    v8 = -[ICCameraFileFingerprint fingerprintForFD:error:](self, "fingerprintForFD:error:", [v6 fileDescriptor], error);
    [v7 closeFile];
  }

  else if (error)
  {
    [(ICCameraFileFingerprint *)self fixupFileHandleError:*error];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fingerprintForData:(id)data error:(id *)error
{
  dataCopy = data;
  _createSignatureGenerator = [(ICCameraFileFingerprint *)self _createSignatureGenerator];
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];

  MEMORY[0x29EDA9470](_createSignatureGenerator, bytes, v8, 1);
  v9 = MMCSSignatureGeneratorFinish();
  v10 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytesNoCopy:v9 length:MEMORY[0x29EDA9440](v9) freeWhenDone:1];
  v11 = [v10 base64EncodedStringWithOptions:0];

  return v11;
}

- (id)fingerprintForFD:(int)d error:(id *)error
{
  lseek(d, 0, 0);
  v6 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  for (i = [(ICCameraFileFingerprint *)self _createSignatureGenerator]; ; MEMORY[0x29EDA9470](i, v6, v8, 1))
  {
    v8 = read(d, v6, 0x20000uLL);
    if (!v8)
    {
      break;
    }

    if (v8 == -1)
    {
      MMCSSignatureGeneratorFinish();
      i = 0;
      break;
    }
  }

  if (v6)
  {
    free(v6);
  }

  if (i)
  {
    v9 = MMCSSignatureGeneratorFinish();
    v10 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytesNoCopy:v9 length:MEMORY[0x29EDA9440](v9) freeWhenDone:1];
    v11 = [v10 base64EncodedStringWithOptions:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)zeroByteFileFingerprint
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_zeroByteFileFingerprint)
  {
    data = [MEMORY[0x29EDB8DA0] data];
    v9 = 0;
    v4 = [(ICCameraFileFingerprint *)self fingerprintForData:data error:&v9];
    v5 = v9;
    zeroByteFileFingerprint = self->_zeroByteFileFingerprint;
    self->_zeroByteFileFingerprint = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_zeroByteFileFingerprint;

  return v7;
}

@end