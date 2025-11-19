@interface CUPairingStream
- (BOOL)decryptInputBytes:(const void *)a3 inputLength:(unint64_t)a4 inputAADBytes:(const void *)a5 inputAADLength:(unint64_t)a6 inputAuthTagPtr:(const void *)a7 inputAuthTagLength:(unint64_t)a8 outputBytes:(void *)a9 error:(id *)a10;
- (BOOL)encryptInputBytes:(const void *)a3 inputLength:(unint64_t)a4 inputAADBytes:(const void *)a5 inputAADLength:(unint64_t)a6 outputBytes:(void *)a7 outputAuthTagBytes:(void *)a8 outputAuthTagLength:(unint64_t)a9 error:(id *)a10;
- (BOOL)prepareWithName:(id)a3 isClient:(BOOL)a4 pskData:(id)a5 error:(id *)a6;
- (CUPairingStream)init;
- (id)decryptData:(id)a3 aadBytes:(const void *)a4 aadLength:(unint64_t)a5 error:(id *)a6;
- (id)decryptData:(id)a3 aadData:(id)a4 error:(id *)a5;
- (id)encryptData:(id)a3 aadBytes:(const void *)a4 aadLength:(unint64_t)a5 error:(id *)a6;
- (id)encryptData:(id)a3 aadData:(id)a4 error:(id *)a5;
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

- (BOOL)decryptInputBytes:(const void *)a3 inputLength:(unint64_t)a4 inputAADBytes:(const void *)a5 inputAADLength:(unint64_t)a6 inputAuthTagPtr:(const void *)a7 inputAuthTagLength:(unint64_t)a8 outputBytes:(void *)a9 error:(id *)a10
{
  decryptAEAD = self->_decryptAEAD;
  if (decryptAEAD)
  {
    decryptNonce = self->_decryptNonce;
    v22 = a7;
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

  v18 = NSErrorWithOSStatusF(v13, v20, a3, a4, a5, a6, a7, a8, v22);
  v17 = v18 != 0;
  if (a10)
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
    *a10 = v18;
    v17 = 1;
  }

LABEL_10:

  return !v17;
}

- (BOOL)encryptInputBytes:(const void *)a3 inputLength:(unint64_t)a4 inputAADBytes:(const void *)a5 inputAADLength:(unint64_t)a6 outputBytes:(void *)a7 outputAuthTagBytes:(void *)a8 outputAuthTagLength:(unint64_t)a9 error:(id *)a10
{
  encryptAEAD = self->_encryptAEAD;
  if (encryptAEAD)
  {
    encryptNonce = self->_encryptNonce;
    v22 = a8;
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

  v18 = NSErrorWithOSStatusF(v13, v20, a3, a4, a5, a6, a7, a8, v22);
  v17 = v18 != 0;
  if (a10)
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
    *a10 = v18;
    v17 = 1;
  }

LABEL_10:

  return !v17;
}

- (id)decryptData:(id)a3 aadBytes:(const void *)a4 aadLength:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [v10 length];
  v18 = v11;
  authTagLength = self->_authTagLength;
  if (v11 < authTagLength)
  {
    NSErrorWithOSStatusF(4294960553, "Data too small for auth tag (%zu bytes)", v12, v13, v14, v15, v16, v17, v11);
    v31 = LABEL_18:;
    goto LABEL_19;
  }

  v20 = [v10 bytes];
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
  v30 = [(CUPairingStream *)self decryptInputBytes:v20 inputLength:v21 inputAADBytes:a4 inputAADLength:a5 inputAuthTagPtr:v20 + v21 inputAuthTagLength:v29 outputBytes:v22 error:&v42];
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
  if (a6 && v31)
  {
    v41 = v31;
    v38 = 0;
    *a6 = v31;
  }

LABEL_11:

  return v38;
}

- (id)decryptData:(id)a3 aadData:(id)a4 error:(id *)a5
{
  v9 = a4;
  v10 = a4;
  v11 = a3;
  v12 = [v10 bytes];
  v13 = [v10 length];

  v14 = [(CUPairingStream *)self decryptData:v11 aadBytes:v12 aadLength:v13 error:a5];

  return v14;
}

- (id)encryptData:(id)a3 aadBytes:(const void *)a4 aadLength:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [v10 length];
  v12 = self->_authTagLength + v11;
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  if (v13)
  {
    v20 = v13;
    v21 = [v10 bytes];
    authTagLength = self->_authTagLength;
    v36 = 0;
    v23 = [(CUPairingStream *)self encryptInputBytes:v21 inputLength:v11 inputAADBytes:a4 inputAADLength:a5 outputBytes:v20 outputAuthTagBytes:&v20[v11] outputAuthTagLength:authTagLength error:&v36];
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
  if (a6 && v24)
  {
    v35 = v24;
    v32 = 0;
    *a6 = v24;
  }

LABEL_5:

  return v32;
}

- (id)encryptData:(id)a3 aadData:(id)a4 error:(id *)a5
{
  v9 = a4;
  v10 = a4;
  v11 = a3;
  v12 = [v10 bytes];
  v13 = [v10 length];

  v14 = [(CUPairingStream *)self encryptData:v11 aadBytes:v12 aadLength:v13 error:a5];

  return v14;
}

- (BOOL)prepareWithName:(id)a3 isClient:(BOOL)a4 pskData:(id)a5 error:(id *)a6
{
  v8 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  [v12 bytes];
  [v12 length];
  v41 = 0;
  __s = 0;
  if (![v11 length])
  {
    if (!a6)
    {
      goto LABEL_35;
    }

    v33 = "EmptyName";
    v34 = 4294960552;
LABEL_21:
    NSErrorWithOSStatusF(v34, v33, v13, v14, v15, v16, v17, v18, v38);
    *a6 = v31 = 0;
    goto LABEL_14;
  }

  objc_storeStrong(&self->_name, a3);
  if ([v12 length] <= 0x1F)
  {
    if (!a6)
    {
      goto LABEL_35;
    }

    v33 = "PSK too small";
    v34 = 4294960553;
    goto LABEL_21;
  }

  if (v8)
  {
    v19 = "ClientEncrypt-%@";
  }

  else
  {
    v19 = "ServerEncrypt-%@";
  }

  ASPrintF(&__s, v19, v13, v14, v15, v16, v17, v18, v11);
  v20 = __s;
  if (!__s)
  {
    if (!a6)
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
    v35 = a6;
    if (a6)
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

  if (v8)
  {
    v28 = "ServerEncrypt-%@";
  }

  else
  {
    v28 = "ClientEncrypt-%@";
  }

  ASPrintF(&__s, v28, v22, v23, v24, v25, v26, v27, v11);
  v29 = __s;
  if (!__s)
  {
    v35 = a6;
    if (a6)
    {
      v37 = "CreateDecryptInfoFailed";
      v36 = 4294960568;
LABEL_34:
      NSErrorWithOSStatusF(v36, v37, v22, v23, v24, v25, v26, v27, v39);
      *v35 = v31 = 0;
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
    v35 = a6;
    if (a6)
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