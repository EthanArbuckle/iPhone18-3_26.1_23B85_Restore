@interface CUPairingStream
- (BOOL)decryptInputBytes:(const void *)bytes inputLength:(unint64_t)length inputAADBytes:(const void *)dBytes inputAADLength:(unint64_t)dLength inputAuthTagPtr:(const void *)ptr inputAuthTagLength:(unint64_t)tagLength outputBytes:(void *)outputBytes error:(id *)self0;
- (BOOL)encryptInputBytes:(const void *)bytes inputLength:(unint64_t)length inputAADBytes:(const void *)dBytes inputAADLength:(unint64_t)dLength outputBytes:(void *)outputBytes outputAuthTagBytes:(void *)tagBytes outputAuthTagLength:(unint64_t)tagLength error:(id *)self0;
- (BOOL)prepareWithName:(id)name isClient:(BOOL)client pskData:(id)data error:(id *)error;
- (CUPairingStream)init;
- (id)decryptData:(id)data aadBytes:(const void *)bytes aadLength:(unint64_t)length error:(id *)error;
- (id)decryptData:(id)data aadData:(id)aadData error:(id *)error;
- (id)encryptData:(id)data aadBytes:(const void *)bytes aadLength:(unint64_t)length error:(id *)error;
- (id)encryptData:(id)data aadData:(id)aadData error:(id *)error;
- (void)_cleanup;
- (void)dealloc;
@end

@implementation CUPairingStream

- (void)_cleanup
{
  encryptAEAD = self->_encryptAEAD;
  if (encryptAEAD)
  {
    CFRelease(encryptAEAD);
    self->_encryptAEAD = 0;
  }

  decryptAEAD = self->_decryptAEAD;
  if (decryptAEAD)
  {
    CFRelease(decryptAEAD);
    self->_decryptAEAD = 0;
  }
}

- (void)dealloc
{
  [(CUPairingStream *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CUPairingStream;
  [(CUPairingStream *)&v3 dealloc];
}

- (BOOL)decryptInputBytes:(const void *)bytes inputLength:(unint64_t)length inputAADBytes:(const void *)dBytes inputAADLength:(unint64_t)dLength inputAuthTagPtr:(const void *)ptr inputAuthTagLength:(unint64_t)tagLength outputBytes:(void *)outputBytes error:(id *)self0
{
  decryptAEAD = self->_decryptAEAD;
  if (decryptAEAD)
  {
    decryptNonce = self->_decryptNonce;
    ptrCopy = ptr;
    v13 = (*(*(decryptAEAD + 2) + 24))();
    v14 = 0;
    do
    {
      if (++decryptNonce[v14])
      {
        v16 = 1;
      }

      else
      {
        v16 = v14 == 11;
      }

      ++v14;
    }

    while (!v16);
    if (!v13)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_10;
    }

    v20 = "DecryptFailed";
  }

  else
  {
    v20 = "DecryptWhenNotOpen";
    v13 = 4294960541;
  }

  v18 = NSErrorWithOSStatusF(v13, v20, bytes, length, dBytes, dLength, ptr, tagLength, ptrCopy);
  v17 = v18 != 0;
  if (error)
  {
    v21 = v18 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v18 = v18;
    *error = v18;
    v17 = 1;
  }

LABEL_10:

  return !v17;
}

- (BOOL)encryptInputBytes:(const void *)bytes inputLength:(unint64_t)length inputAADBytes:(const void *)dBytes inputAADLength:(unint64_t)dLength outputBytes:(void *)outputBytes outputAuthTagBytes:(void *)tagBytes outputAuthTagLength:(unint64_t)tagLength error:(id *)self0
{
  encryptAEAD = self->_encryptAEAD;
  if (encryptAEAD)
  {
    encryptNonce = self->_encryptNonce;
    tagBytesCopy = tagBytes;
    v13 = (*(*(encryptAEAD + 2) + 16))();
    v14 = 0;
    do
    {
      if (++encryptNonce[v14])
      {
        v16 = 1;
      }

      else
      {
        v16 = v14 == 11;
      }

      ++v14;
    }

    while (!v16);
    if (!v13)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_10;
    }

    v20 = "EncryptFailed";
  }

  else
  {
    v20 = "EncryptWhenNotOpen";
    v13 = 4294960541;
  }

  v18 = NSErrorWithOSStatusF(v13, v20, bytes, length, dBytes, dLength, outputBytes, tagBytes, tagBytesCopy);
  v17 = v18 != 0;
  if (error)
  {
    v21 = v18 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v18 = v18;
    *error = v18;
    v17 = 1;
  }

LABEL_10:

  return !v17;
}

- (id)decryptData:(id)data aadBytes:(const void *)bytes aadLength:(unint64_t)length error:(id *)error
{
  dataCopy = data;
  v11 = [dataCopy length];
  v18 = v11;
  authTagLength = self->_authTagLength;
  if (v11 < authTagLength)
  {
    NSErrorWithOSStatusF(4294960553, "Data too small for auth tag (%zu bytes)", v12, v13, v14, v15, v16, v17, v11);
    v31 = LABEL_18:;
    goto LABEL_19;
  }

  bytes = [dataCopy bytes];
  v21 = v18 - authTagLength;
  if (!v21)
  {
    v22 = 0;
    goto LABEL_5;
  }

  v22 = malloc_type_malloc(v21, 0x100004077774924uLL);
  if (!v22)
  {
    NSErrorWithOSStatusF(4294960568, "Malloc %zu bytes failed", v23, v24, v25, v26, v27, v28, v21);
    goto LABEL_18;
  }

LABEL_5:
  v29 = self->_authTagLength;
  v42 = 0;
  v30 = [(CUPairingStream *)self decryptInputBytes:bytes inputLength:v21 inputAADBytes:bytes inputAADLength:length inputAuthTagPtr:bytes + v21 inputAuthTagLength:v29 outputBytes:v22 error:&v42];
  v31 = v42;
  if (v30)
  {
    if (v22)
    {
      v38 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v22 length:v21];
      if (!v38)
      {
        v39 = NSErrorWithOSStatusF(4294960541, "NSData %zu bytes failed", v32, v33, v34, v35, v36, v37, v21);

        v31 = v39;
LABEL_16:
        free(v22);
        goto LABEL_19;
      }
    }

    else
    {
      v38 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    }

    v31 = 0;
    goto LABEL_11;
  }

  if (v22)
  {
    goto LABEL_16;
  }

LABEL_19:
  v38 = 0;
  if (error && v31)
  {
    v41 = v31;
    v38 = 0;
    *error = v31;
  }

LABEL_11:

  return v38;
}

- (id)decryptData:(id)data aadData:(id)aadData error:(id *)error
{
  aadDataCopy = aadData;
  aadDataCopy2 = aadData;
  dataCopy = data;
  bytes = [aadDataCopy2 bytes];
  v13 = [aadDataCopy2 length];

  v14 = [(CUPairingStream *)self decryptData:dataCopy aadBytes:bytes aadLength:v13 error:error];

  return v14;
}

- (id)encryptData:(id)data aadBytes:(const void *)bytes aadLength:(unint64_t)length error:(id *)error
{
  dataCopy = data;
  v11 = [dataCopy length];
  v12 = self->_authTagLength + v11;
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  if (v13)
  {
    v20 = v13;
    bytes = [dataCopy bytes];
    authTagLength = self->_authTagLength;
    v36 = 0;
    v23 = [(CUPairingStream *)self encryptInputBytes:bytes inputLength:v11 inputAADBytes:bytes inputAADLength:length outputBytes:v20 outputAuthTagBytes:&v20[v11] outputAuthTagLength:authTagLength error:&v36];
    v24 = v36;
    if (v23)
    {
      v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v20 length:v12];
      if (v25)
      {
        v32 = v25;

        v24 = 0;
        goto LABEL_5;
      }

      v34 = NSErrorWithOSStatusF(4294960568, "NSData %zu bytes failed", v26, v27, v28, v29, v30, v31, v12);

      v24 = v34;
    }

    free(v20);
  }

  else
  {
    v24 = NSErrorWithOSStatusF(4294960568, "Malloc %zu bytes failed", v14, v15, v16, v17, v18, v19, v12);
  }

  v32 = 0;
  if (error && v24)
  {
    v35 = v24;
    v32 = 0;
    *error = v24;
  }

LABEL_5:

  return v32;
}

- (id)encryptData:(id)data aadData:(id)aadData error:(id *)error
{
  aadDataCopy = aadData;
  aadDataCopy2 = aadData;
  dataCopy = data;
  bytes = [aadDataCopy2 bytes];
  v13 = [aadDataCopy2 length];

  v14 = [(CUPairingStream *)self encryptData:dataCopy aadBytes:bytes aadLength:v13 error:error];

  return v14;
}

- (BOOL)prepareWithName:(id)name isClient:(BOOL)client pskData:(id)data error:(id *)error
{
  clientCopy = client;
  v43 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dataCopy = data;
  [dataCopy bytes];
  [dataCopy length];
  v41 = 0;
  __s = 0;
  if (![nameCopy length])
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v33 = "EmptyName";
    v34 = 4294960552;
LABEL_21:
    NSErrorWithOSStatusF(v34, v33, v13, v14, v15, v16, v17, v18, v38);
    *error = v31 = 0;
    goto LABEL_14;
  }

  objc_storeStrong(&self->_name, name);
  if ([dataCopy length] <= 0x1F)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v33 = "PSK too small";
    v34 = 4294960553;
    goto LABEL_21;
  }

  if (clientCopy)
  {
    v19 = "ClientEncrypt-%@";
  }

  else
  {
    v19 = "ServerEncrypt-%@";
  }

  ASPrintF(&__s, v19, v13, v14, v15, v16, v17, v18, nameCopy);
  v20 = __s;
  if (!__s)
  {
    if (!error)
    {
      goto LABEL_35;
    }

    v33 = "CreateEncryptInfoFailed";
    v34 = 4294960568;
    goto LABEL_21;
  }

  strlen(__s);
  ccsha512_di();
  v39 = v42;
  cchkdf();
  free(v20);
  v21 = CryptoAEADCreate(kCryptoAEADDescriptorChaCha20Poly1305[0], 1, v42, 32, &v41);
  self->_encryptAEAD = v21;
  if (!v21)
  {
    errorCopy3 = error;
    if (error)
    {
      if (v41)
      {
        v36 = v41;
      }

      else
      {
        v36 = 4294960596;
      }

      v37 = "CreateEncryptAEADFailed";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (clientCopy)
  {
    v28 = "ServerEncrypt-%@";
  }

  else
  {
    v28 = "ClientEncrypt-%@";
  }

  ASPrintF(&__s, v28, v22, v23, v24, v25, v26, v27, nameCopy);
  v29 = __s;
  if (!__s)
  {
    errorCopy3 = error;
    if (error)
    {
      v37 = "CreateDecryptInfoFailed";
      v36 = 4294960568;
LABEL_34:
      NSErrorWithOSStatusF(v36, v37, v22, v23, v24, v25, v26, v27, v39);
      *errorCopy3 = v31 = 0;
      goto LABEL_14;
    }

LABEL_35:
    v31 = 0;
    goto LABEL_14;
  }

  strlen(__s);
  ccsha512_di();
  v39 = v42;
  cchkdf();
  free(v29);
  v30 = CryptoAEADCreate(kCryptoAEADDescriptorChaCha20Poly1305[0], 2, v42, 32, &v41);
  self->_decryptAEAD = v30;
  if (!v30)
  {
    errorCopy3 = error;
    if (error)
    {
      if (v41)
      {
        v36 = v41;
      }

      else
      {
        v36 = 4294960596;
      }

      v37 = "CreateDecryptAEADFailed";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  memset_s(v42, 0x20uLL, 0, 0x20uLL);
  v31 = 1;
LABEL_14:

  return v31;
}

- (CUPairingStream)init
{
  v6.receiver = self;
  v6.super_class = CUPairingStream;
  v2 = [(CUPairingStream *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_authTagLength = 16;
    v4 = v2;
  }

  return v3;
}

@end