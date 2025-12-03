@interface NSData(ValidateSize)
- (id)lengthValidatedBuffer;
@end

@implementation NSData(ValidateSize)

- (id)lengthValidatedBuffer
{
  v6 = 0;
  bytes = [self bytes];
  v4 = [self length];
  if (readSize(&bytes, &v4, &v6, 0) || v4 < v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:?];
  }

  return v2;
}

@end