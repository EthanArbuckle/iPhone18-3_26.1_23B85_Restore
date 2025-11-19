@interface DIPStreamingCryptor
- (DIPStreamingCryptor)initWithKey:(id)a3;
- (id)encryptBuffer:(id)a3;
- (id)finish;
- (void)addAuthParameter:(id)a3;
- (void)addIVParameter:(id)a3;
@end

@implementation DIPStreamingCryptor

- (DIPStreamingCryptor)initWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DIPStreamingCryptor;
  v5 = [(DIPStreamingCryptor *)&v7 init];
  if (v5)
  {
    CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, [v4 bytes], objc_msgSend(v4, "length"), 0, 0, 0, 0, &v5->_cryptor);
  }

  return v5;
}

- (void)addIVParameter:(id)a3
{
  cryptor = self->_cryptor;
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  MEMORY[0x282200FC0](cryptor, 0, v7, v8);
}

- (void)addAuthParameter:(id)a3
{
  cryptor = self->_cryptor;
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  MEMORY[0x282200FC0](cryptor, 1, v7, v8);
}

- (id)encryptBuffer:(id)a3
{
  v4 = MEMORY[0x277CBEB28];
  v5 = a3;
  v6 = [v4 dataWithLength:{objc_msgSend(v5, "length")}];
  cryptor = self->_cryptor;
  v8 = [v5 bytes];
  v9 = [v5 length];

  CCCryptorUpdate(cryptor, v8, v9, [v6 mutableBytes], objc_msgSend(v6, "length"), 0);

  return v6;
}

- (id)finish
{
  v3 = [MEMORY[0x277CBEB28] dataWithLength:16];
  [v3 mutableBytes];
  [v3 length];
  CCCryptorGCMFinalize();
  CCCryptorRelease(self->_cryptor);

  return v3;
}

@end