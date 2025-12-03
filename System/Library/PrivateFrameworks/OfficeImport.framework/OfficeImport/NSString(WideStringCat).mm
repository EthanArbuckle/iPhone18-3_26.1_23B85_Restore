@interface NSString(WideStringCat)
- (uint64_t)cWideString;
@end

@implementation NSString(WideStringCat)

- (uint64_t)cWideString
{
  v2 = [self length];
  if (v2 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Error allocating temporary string"];
  }

  v3 = [MEMORY[0x277CBEB28] dataWithLength:2 * v2 + 2];
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Error allocating temporary string"];
  }

  mutableBytes = [v3 mutableBytes];
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      *(mutableBytes + 2 * i) = [self characterAtIndex:i];
    }
  }

  *(mutableBytes + 2 * v2) = 0;
  bytes = [v3 bytes];

  return bytes;
}

@end