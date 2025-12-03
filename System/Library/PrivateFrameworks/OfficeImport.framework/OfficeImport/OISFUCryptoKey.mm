@interface OISFUCryptoKey
- (id)initAes128Key:(const char *)key length:(unsigned int)length iterationCount:(unsigned int)count;
- (id)initAes128KeyFromPassphrase:(const char *)passphrase length:(unsigned int)length iterationCount:(unsigned int)count saltData:(id)data;
- (id)initAes128KeyFromPassphrase:(id)passphrase iterationCount:(unsigned int)count;
- (id)initAes128KeyFromPassphrase:(id)passphrase iterationCount:(unsigned int)count saltData:(id)data;
- (id)initAes128KeyFromPassphrase:(id)passphrase withIterationCountAndSaltDataFromCryptoKey:(id)key;
- (void)dealloc;
@end

@implementation OISFUCryptoKey

- (id)initAes128KeyFromPassphrase:(id)passphrase iterationCount:(unsigned int)count
{
  if (!passphrase)
  {
    return 0;
  }

  v4 = *&count;
  uTF8String = [passphrase UTF8String];
  v7 = strlen(uTF8String);
  v8 = [OISFUCryptoUtils generateRandomSaltWithLength:16];

  return [(OISFUCryptoKey *)self initAes128KeyFromPassphrase:uTF8String length:v7 iterationCount:v4 saltData:v8];
}

- (id)initAes128KeyFromPassphrase:(id)passphrase withIterationCountAndSaltDataFromCryptoKey:(id)key
{
  if (!passphrase)
  {
    return 0;
  }

  uTF8String = [passphrase UTF8String];
  v7 = strlen(uTF8String);
  iterationCount = [key iterationCount];
  saltData = [key saltData];

  return [(OISFUCryptoKey *)self initAes128KeyFromPassphrase:uTF8String length:v7 iterationCount:iterationCount saltData:saltData];
}

- (id)initAes128KeyFromPassphrase:(id)passphrase iterationCount:(unsigned int)count saltData:(id)data
{
  if (!passphrase)
  {
    return 0;
  }

  v6 = *&count;
  uTF8String = [passphrase UTF8String];
  v10 = strlen([passphrase UTF8String]);

  return [(OISFUCryptoKey *)self initAes128KeyFromPassphrase:uTF8String length:v10 iterationCount:v6 saltData:data];
}

- (id)initAes128KeyFromPassphrase:(const char *)passphrase length:(unsigned int)length iterationCount:(unsigned int)count saltData:(id)data
{
  v14.receiver = self;
  v14.super_class = OISFUCryptoKey;
  v10 = [(OISFUCryptoKey *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->mIterationCount = count;
    v10->mKeyLength = 16;
    v10->mKey = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
    v11->_passphrase = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:passphrase length:length encoding:4];
    v12 = [data copy];
    v11->mSaltData = v12;
    if ((SFUDeriveAes128Key(passphrase, length, v11->mIterationCount, v11->mKey, v11->mKeyLength, [(NSData *)v12 bytes], [(NSData *)v11->mSaltData length]) & 1) == 0)
    {

      return 0;
    }
  }

  return v11;
}

- (id)initAes128Key:(const char *)key length:(unsigned int)length iterationCount:(unsigned int)count
{
  v10.receiver = self;
  v10.super_class = OISFUCryptoKey;
  v7 = [(OISFUCryptoKey *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->mIterationCount = count;
    v7->mKeyLength = 16;
    if (length == 16)
    {
      v7->mKey = malloc_type_calloc(1uLL, 0x10uLL, 0x100004077774924uLL);
      __memcpy_chk();
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  mKey = self->mKey;
  if (mKey)
  {
    free(mKey);
    self->mKey = 0;
  }

  v4.receiver = self;
  v4.super_class = OISFUCryptoKey;
  [(OISFUCryptoKey *)&v4 dealloc];
}

@end