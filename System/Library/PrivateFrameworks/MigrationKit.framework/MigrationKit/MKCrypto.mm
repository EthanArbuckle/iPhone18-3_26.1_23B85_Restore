@interface MKCrypto
- (MKCrypto)initWithKey:(id)key;
- (id)bytes:(unint64_t)bytes;
- (id)decryptData:(id)data;
- (id)encrypt:(BOOL)encrypt data:(id)data withKey:(id)key iv:(id)iv;
- (id)encryptData:(id)data;
@end

@implementation MKCrypto

- (MKCrypto)initWithKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v26.receiver = self;
  v26.super_class = MKCrypto;
  v5 = [(MKCrypto *)&v26 init];
  if (!v5)
  {
LABEL_18:
    v13 = v5;
    goto LABEL_19;
  }

  if ([keyCopy length] > 0xF)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [&unk_286AAD338 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(&unk_286AAD338);
          }

          unsignedIntegerValue = [*(*(&v22 + 1) + 8 * i) unsignedIntegerValue];
          if ([keyCopy length] > unsignedIntegerValue)
          {
            v19 = [keyCopy subdataWithRange:{0, unsignedIntegerValue}];

            keyCopy = v19;
            goto LABEL_17;
          }

          if ([keyCopy length] == unsignedIntegerValue)
          {
            goto LABEL_17;
          }
        }

        v15 = [&unk_286AAD338 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
    [(MKCrypto *)v5 setKey:keyCopy];
    goto LABEL_18;
  }

  v6 = +[MKLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(MKCrypto *)v5 initWithKey:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = 0;
LABEL_19:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)encryptData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v5 = [(MKCrypto *)self bytes:16];
    v6 = [(MKCrypto *)self encrypt:1 data:dataCopy withKey:self->_key iv:v5];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v5, "length")}];
      [v7 appendData:v5];
      [v7 appendData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MKCrypto *)self encryptData:v8, v9, v10, v11, v12, v13, v14];
    }

    v7 = 0;
  }

  return v7;
}

- (id)decryptData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] > 0x10)
  {
    v13 = [dataCopy subdataWithRange:{0, 16}];
    v14 = [dataCopy subdataWithRange:{objc_msgSend(v13, "length"), objc_msgSend(dataCopy, "length") - objc_msgSend(v13, "length")}];
    v12 = [(MKCrypto *)self encrypt:0 data:v14 withKey:self->_key iv:v13];
  }

  else
  {
    v5 = +[MKLog log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MKCrypto *)self decryptData:v5, v6, v7, v8, v9, v10, v11];
    }

    v12 = 0;
  }

  return v12;
}

- (id)encrypt:(BOOL)encrypt data:(id)data withKey:(id)key iv:(id)iv
{
  encryptCopy = encrypt;
  dataCopy = data;
  keyCopy = key;
  ivCopy = iv;
  cryptorRef = 0;
  v13 = [keyCopy length];
  if (v13 > 0x20 || ((1 << v13) & 0x101010000) == 0)
  {
    v16 = [MKError alloc];
    v17 = @"did receive an invalid key.";
    v18 = 0;
    goto LABEL_13;
  }

  if ([ivCopy length] != 16)
  {
    v16 = [MKError alloc];
    v17 = @"did receive an invalid iv.";
    v18 = 1;
    goto LABEL_13;
  }

  if ([(MKCrypto *)self useCFB8Mode])
  {
    v15 = 10;
  }

  else
  {
    v15 = 3;
  }

  if (CCCryptorCreateWithMode(!encryptCopy, v15, 0, 0, [ivCopy bytes], objc_msgSend(keyCopy, "bytes"), objc_msgSend(keyCopy, "length"), 0, 0, 0, 0, &cryptorRef))
  {
    v16 = [MKError alloc];
    v17 = @"could not create a cryptor.";
    v18 = 3;
LABEL_13:
    v19 = [(MKError *)v16 initWithDomain:0x286A907B0 code:v18 message:v17];
    v20 = 0;
    goto LABEL_14;
  }

  dataOutMoved = 0;
  v23 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(dataCopy, "length") + 16}];
  if (CCCryptorUpdate(cryptorRef, [dataCopy bytes], objc_msgSend(dataCopy, "length"), objc_msgSend(v23, "mutableBytes"), objc_msgSend(v23, "length"), &dataOutMoved))
  {
    v24 = [MKError alloc];
    v25 = @"could not update the cryptor.";
  }

  else
  {
    [v23 setLength:dataOutMoved];
    if (!CCCryptorFinal(cryptorRef, [v23 mutableBytes], objc_msgSend(v23, "length"), &dataOutMoved))
    {
      v20 = v23;
      v19 = 0;
      goto LABEL_28;
    }

    v24 = [MKError alloc];
    v25 = @"could not finalize the cryptor.";
  }

  v19 = [(MKError *)v24 initWithDomain:0x286A907B0 code:3 message:v25];
  v20 = 0;
LABEL_28:

LABEL_14:
  if (cryptorRef)
  {
    CCCryptorRelease(cryptorRef);
  }

  if (v19)
  {
    v21 = +[MKLog log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MKCrypto encrypt:v19 data:v21 withKey:? iv:?];
    }
  }

  return v20;
}

- (id)bytes:(unint64_t)bytes
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:bytes];
  if (bytes >= 4)
  {
    v5 = bytes >> 2;
    do
    {
      v7 = arc4random();
      [v4 appendBytes:&v7 length:4];
      --v5;
    }

    while (v5);
  }

  return v4;
}

@end