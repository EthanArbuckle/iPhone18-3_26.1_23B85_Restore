@interface ICCameraFileFingerprint
- (ICCameraFileFingerprint)init;
- (NSString)zeroByteFileFingerprint;
- (id)fingerprintForData:(id)a3 error:(id *)a4;
- (id)fingerprintForFD:(int)a3 error:(id *)a4;
- (id)fingerprintForFileAtURL:(id)a3 error:(id *)a4;
- (id)fixupFileHandleError:(id)a3;
- (void)_createSignatureGenerator;
@end

@implementation ICCameraFileFingerprint

- (ICCameraFileFingerprint)init
{
  v3.receiver = self;
  v3.super_class = ICCameraFileFingerprint;
  return [(ICCameraFileFingerprint *)&v3 init];
}

- (id)fixupFileHandleError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = *MEMORY[0x29EDB9E30];
  v6 = [v4 isEqualToString:*MEMORY[0x29EDB9E30]];

  if (v6)
  {
    v7 = [v3 userInfo];
    v8 = *MEMORY[0x29EDB9F18];
    v9 = [v7 objectForKey:*MEMORY[0x29EDB9F18]];

    if (!v9)
    {
      v10 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:objc_msgSend(v3 userInfo:{"code"), 0}];
      v11 = [v3 userInfo];
      v12 = [v11 mutableCopy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [MEMORY[0x29EDB8E00] dictionary];
      }

      v15 = v14;

      [v15 setObject:v10 forKey:v8];
      v16 = [MEMORY[0x29EDB9FA0] errorWithDomain:v5 code:objc_msgSend(v3 userInfo:{"code"), v15}];

      v3 = v16;
    }
  }

  return v3;
}

- (void)_createSignatureGenerator
{
  v2 = [@"MYSUPERSECRECTKEYPADDEDTO32BYTES" dataUsingEncoding:4];
  v3 = MMCSSignatureGeneratorCreateWithBoundaryKey();

  return v3;
}

- (id)fingerprintForFileAtURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x29EDB9FB0] fileHandleForReadingFromURL:a3 error:?];
  v7 = v6;
  if (v6)
  {
    v8 = -[ICCameraFileFingerprint fingerprintForFD:error:](self, "fingerprintForFD:error:", [v6 fileDescriptor], a4);
    [v7 closeFile];
  }

  else if (a4)
  {
    [(ICCameraFileFingerprint *)self fixupFileHandleError:*a4];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fingerprintForData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(ICCameraFileFingerprint *)self _createSignatureGenerator];
  v7 = [v5 bytes];
  v8 = [v5 length];

  MEMORY[0x29EDA9470](v6, v7, v8, 1);
  v9 = MMCSSignatureGeneratorFinish();
  v10 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytesNoCopy:v9 length:MEMORY[0x29EDA9440](v9) freeWhenDone:1];
  v11 = [v10 base64EncodedStringWithOptions:0];

  return v11;
}

- (id)fingerprintForFD:(int)a3 error:(id *)a4
{
  lseek(a3, 0, 0);
  v6 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  for (i = [(ICCameraFileFingerprint *)self _createSignatureGenerator]; ; MEMORY[0x29EDA9470](i, v6, v8, 1))
  {
    v8 = read(a3, v6, 0x20000uLL);
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
    v3 = [MEMORY[0x29EDB8DA0] data];
    v9 = 0;
    v4 = [(ICCameraFileFingerprint *)self fingerprintForData:v3 error:&v9];
    v5 = v9;
    zeroByteFileFingerprint = self->_zeroByteFileFingerprint;
    self->_zeroByteFileFingerprint = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_zeroByteFileFingerprint;

  return v7;
}

@end