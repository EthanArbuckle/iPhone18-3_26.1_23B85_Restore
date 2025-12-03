@interface DESPFLEncryptableBuffer
- (DESPFLEncryptableBuffer)initWithEncryptor:(id)encryptor count:(unint64_t)count;
@end

@implementation DESPFLEncryptableBuffer

- (DESPFLEncryptableBuffer)initWithEncryptor:(id)encryptor count:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = DESPFLEncryptableBuffer;
  return [(DESPFLEncryptableBuffer *)&v5 init:encryptor];
}

@end