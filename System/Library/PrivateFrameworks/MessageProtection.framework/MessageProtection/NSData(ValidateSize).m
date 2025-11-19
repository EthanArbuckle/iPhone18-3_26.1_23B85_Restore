@interface NSData(ValidateSize)
- (id)lengthValidatedBuffer;
@end

@implementation NSData(ValidateSize)

- (id)lengthValidatedBuffer
{
  v6 = 0;
  v5 = [a1 bytes];
  v4 = [a1 length];
  if (readSize(&v5, &v4, &v6, 0) || v4 < v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:?];
  }

  return v2;
}

@end