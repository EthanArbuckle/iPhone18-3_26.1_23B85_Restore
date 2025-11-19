@interface CUPairingIdentity
- (BOOL)signDataPtr:(const void *)a3 dataLen:(unint64_t)a4 signatureBytes:(unsigned __int8)a5[64] error:(id *)a6;
- (BOOL)verifySignature:(id)a3 data:(id)a4 error:(id *)a5;
- (BOOL)verifySignaturePtr:(const void *)a3 signatureLen:(unint64_t)a4 dataPtr:(const void *)a5 dataLen:(unint64_t)a6 error:(id *)a7;
- (CUPairingIdentity)initWithCoder:(id)a3;
- (id)description;
- (id)signData:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setRandomKeyPair;
@end

@implementation CUPairingIdentity

- (BOOL)verifySignaturePtr:(const void *)a3 signatureLen:(unint64_t)a4 dataPtr:(const void *)a5 dataLen:(unint64_t)a6 error:(id *)a7
{
  if (a4 == 64)
  {
    v9 = self->_publicKey;
    if ([(NSData *)v9 length]== 32)
    {
      [(NSData *)v9 bytes];
      ccsha512_di();
      v15 = cced25519_verify();
      v16 = v15 == 0;
      if (!a7 || !v15)
      {
        goto LABEL_13;
      }

      v17 = *MEMORY[0x1E696A768];
      v18 = "Signature verify failed";
      v19 = 4294960542;
    }

    else
    {
      if (!a7)
      {
        v16 = 0;
        goto LABEL_13;
      }

      v17 = *MEMORY[0x1E696A768];
      v18 = "No EdPK";
      v19 = 4294896141;
    }

    NSErrorF_safe(v17, v19, v18, v10, v11, v12, v13, v14, v21);
    *a7 = v16 = 0;
LABEL_13:

    return v16;
  }

  if (!a7)
  {
    return 0;
  }

  NSErrorF_safe(*MEMORY[0x1E696A768], 4294960580, "Bad signature size (%zu)", a4, a5, a6, a7, v7, a4);
  *a7 = v16 = 0;
  return v16;
}

- (BOOL)verifySignature:(id)a3 data:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a3;
  v12 = [v11 bytes];
  v13 = [v11 length];

  v14 = [v10 bytes];
  v15 = [v10 length];

  return [(CUPairingIdentity *)self verifySignaturePtr:v12 signatureLen:v13 dataPtr:v14 dataLen:v15 error:a5];
}

- (BOOL)signDataPtr:(const void *)a3 dataLen:(unint64_t)a4 signatureBytes:(unsigned __int8)a5[64] error:(id *)a6
{
  v8 = self->_publicKey;
  if ([(NSData *)v8 length]== 32)
  {
    v14 = self->_secretKey;
    v15 = [(NSData *)v14 length];
    v21 = v15 == 32;
    if (v15 == 32)
    {
      [(NSData *)v8 bytes];
      [(NSData *)v14 bytes];
      ccsha512_di();
      cced25519_sign();
    }

    else if (a6)
    {
      *a6 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294896142, "No EdSK", v16, v17, v18, v19, v20, v23);
    }
  }

  else if (a6)
  {
    NSErrorF_safe(*MEMORY[0x1E696A768], 4294896141, "No EdPK", v9, v10, v11, v12, v13, v23);
    *a6 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)signData:(id)a3 error:(id *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  if ([(CUPairingIdentity *)self signDataPtr:v9 dataLen:v10 signatureBytes:v13 error:a4])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v13 length:64];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v38 = 0;
  NSAppendPrintF(&v38, "CUPairingIdentity", v2, v3, v4, v5, v6, v7, v32);
  v9 = v38;
  v16 = v9;
  identifier = self->_identifier;
  if (identifier)
  {
    v37 = v9;
    NSAppendPrintF(&v37, ", ID %@", v10, v11, v12, v13, v14, v15, identifier);
    v18 = v37;

    v16 = v18;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    v36 = v16;
    NSAppendPrintF(&v36, ", PK <%.4@>", v10, v11, v12, v13, v14, v15, publicKey);
    v20 = v36;

    v16 = v20;
  }

  secretKey = self->_secretKey;
  if (secretKey)
  {
    v35 = v16;
    v22 = [(NSData *)secretKey length];
    NSAppendPrintF(&v35, ", SK %ld", v23, v24, v25, v26, v27, v28, v22);
    v29 = v35;

    v16 = v29;
  }

  if (self->_altIRK)
  {
    altIRK = self->_altIRK;
    v34 = v16;
    NSAppendPrintF(&v34, ", IRK %{mask}", v10, v11, v12, v13, v14, v15, altIRK);
    v30 = v34;

    v16 = v30;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  altIRK = self->_altIRK;
  v9 = v4;
  if (altIRK)
  {
    [v4 encodeObject:altIRK forKey:@"altIRK"];
    v4 = v9;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v9 encodeObject:identifier forKey:@"ident"];
    v4 = v9;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    [v9 encodeObject:publicKey forKey:@"pk"];
    v4 = v9;
  }

  secretKey = self->_secretKey;
  if (secretKey)
  {
    [v9 encodeObject:secretKey forKey:@"sk"];
    v4 = v9;
  }
}

- (void)setRandomKeyPair
{
  v9 = *MEMORY[0x1E69E9840];
  cced25519_make_key_pair_compat(v8, v7);
  v3 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:32];
  publicKey = self->_publicKey;
  self->_publicKey = v3;

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v7 length:32];
  secretKey = self->_secretKey;
  self->_secretKey = v5;
}

- (CUPairingIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CUPairingIdentity;
  v5 = [(CUPairingIdentity *)&v16 init];
  if (v5)
  {
    v6 = v4;
    v7 = objc_opt_class();
    NSDecodeObjectIfPresent(v6, @"altIRK", v7, &v5->_altIRK);

    v8 = v6;
    v9 = objc_opt_class();
    NSDecodeObjectIfPresent(v8, @"ident", v9, &v5->_identifier);

    v10 = v8;
    v11 = objc_opt_class();
    NSDecodeObjectIfPresent(v10, @"pk", v11, &v5->_publicKey);

    v12 = v10;
    v13 = objc_opt_class();
    NSDecodeObjectIfPresent(v12, @"sk", v13, &v5->_secretKey);

    v14 = v5;
  }

  return v5;
}

@end