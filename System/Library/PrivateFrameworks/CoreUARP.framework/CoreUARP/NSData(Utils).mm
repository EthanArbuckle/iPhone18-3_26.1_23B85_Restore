@interface NSData(Utils)
- (id)byteString;
@end

@implementation NSData(Utils)

- (id)byteString
{
  string = [MEMORY[0x277CCAB68] string];
  bytes = [self bytes];
  if ([self length])
  {
    v4 = 0;
    do
    {
      [string appendFormat:@"%02x", *(bytes + v4++)];
    }

    while (v4 < [self length]);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithString:string];

  return v5;
}

@end