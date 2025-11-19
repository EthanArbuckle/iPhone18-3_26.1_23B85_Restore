@interface DESPFLEncryptableBuffer
- (DESPFLEncryptableBuffer)initWithEncryptor:(id)a3 count:(unint64_t)a4;
@end

@implementation DESPFLEncryptableBuffer

- (DESPFLEncryptableBuffer)initWithEncryptor:(id)a3 count:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = DESPFLEncryptableBuffer;
  return [(DESPFLEncryptableBuffer *)&v5 init:a3];
}

@end