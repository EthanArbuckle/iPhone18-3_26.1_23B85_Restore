@interface DIPStreamingCryptor
- (DIPStreamingCryptor)initWithKey:(id)key;
- (id)encryptBuffer:(id)buffer;
- (id)finish;
- (void)addAuthParameter:(id)parameter;
- (void)addIVParameter:(id)parameter;
@end

@implementation DIPStreamingCryptor

- (DIPStreamingCryptor)initWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = DIPStreamingCryptor;
  v5 = [(DIPStreamingCryptor *)&v7 init];
  if (v5)
  {
    CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, [keyCopy bytes], objc_msgSend(keyCopy, "length"), 0, 0, 0, 0, &v5->_cryptor);
  }

  return v5;
}

- (void)addIVParameter:(id)parameter
{
  cryptor = self->_cryptor;
  parameterCopy = parameter;
  parameterCopy2 = parameter;
  bytes = [parameterCopy2 bytes];
  v8 = [parameterCopy2 length];

  MEMORY[0x282200FC0](cryptor, 0, bytes, v8);
}

- (void)addAuthParameter:(id)parameter
{
  cryptor = self->_cryptor;
  parameterCopy = parameter;
  parameterCopy2 = parameter;
  bytes = [parameterCopy2 bytes];
  v8 = [parameterCopy2 length];

  MEMORY[0x282200FC0](cryptor, 1, bytes, v8);
}

- (id)encryptBuffer:(id)buffer
{
  v4 = MEMORY[0x277CBEB28];
  bufferCopy = buffer;
  v6 = [v4 dataWithLength:{objc_msgSend(bufferCopy, "length")}];
  cryptor = self->_cryptor;
  bytes = [bufferCopy bytes];
  v9 = [bufferCopy length];

  CCCryptorUpdate(cryptor, bytes, v9, [v6 mutableBytes], objc_msgSend(v6, "length"), 0);

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