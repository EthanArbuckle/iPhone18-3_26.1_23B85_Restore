@interface NSData(DYNSDataHexConversion)
- (uint64_t)hexStringWithLength:()DYNSDataHexConversion;
@end

@implementation NSData(DYNSDataHexConversion)

- (uint64_t)hexStringWithLength:()DYNSDataHexConversion
{
  v5 = [a1 bytes];
  if (v5)
  {
    v6 = v5;
    if ([a1 length] <= a3)
    {
      a3 = [a1 length];
    }

    v7 = [MEMORY[0x277CCAB68] stringWithCapacity:a3];
    if (a3)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        [v7 appendFormat:@"%02x", *(v6 + v8)];
        v8 = v9;
      }

      while (a3 > v9++);
    }

    return v7;
  }

  else
  {
    v12 = MEMORY[0x277CCACA8];

    return [v12 string];
  }
}

@end