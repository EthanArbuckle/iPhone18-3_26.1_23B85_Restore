@interface NSData(CRXUExtensions)
+ (id)crxu_dataWithHexString:()CRXUExtensions;
+ (uint64_t)crxu_randomDataWithLength:()CRXUExtensions;
- (id)crxu_SHA256Hash;
- (id)crxu_asHexString;
@end

@implementation NSData(CRXUExtensions)

+ (id)crxu_dataWithHexString:()CRXUExtensions
{
  v4 = a3;
  uTF8String = [v4 UTF8String];
  v6 = [v4 length];
  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v6 >> 1];
    __str[2] = 0;
    v15 = 0;
    if (v6)
    {
      v8 = 0;
      v9 = (uTF8String + 1);
      v10 = MEMORY[0x277D85DE0];
      while (1)
      {
        v11 = *(v9 - 1);
        if (v11 < 0)
        {
          break;
        }

        v12 = 0;
        if ((*(v10 + 4 * v11 + 60) & 0x10000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v9;
        if (v13 < 0)
        {
          goto LABEL_12;
        }

        if ((*(v10 + 4 * v13 + 60) & 0x10000) == 0)
        {
          break;
        }

        v8 += 2;
        v9 += 2;
        __str[0] = v11;
        __str[1] = v13;
        v15 = strtoul(__str, 0, 16);
        [v7 appendBytes:&v15 length:1];
        if (v8 >= v6)
        {
          goto LABEL_9;
        }
      }

      v12 = 0;
    }

    else
    {
LABEL_9:
      v12 = [self dataWithData:{v7, v15}];
    }

LABEL_12:
  }

  return v12;
}

+ (uint64_t)crxu_randomDataWithLength:()CRXUExtensions
{
  v4 = malloc_type_malloc(size, 0x100004077774924uLL);
  arc4random_buf(v4, size);
  v5 = MEMORY[0x277CBEA90];

  return [v5 dataWithBytesNoCopy:v4 length:size freeWhenDone:1];
}

- (id)crxu_asHexString
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  bytes = [self bytes];
  v4 = [self length];
  if (v4 >= 1)
  {
    v5 = &bytes[v4];
    do
    {
      v6 = *bytes++;
      [v2 appendFormat:@"%02x", v6];
    }

    while (bytes < v5);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithString:v2];

  return v7;
}

- (id)crxu_SHA256Hash
{
  v6 = *MEMORY[0x277D85DE8];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:md length:32 freeWhenDone:0];
  crxu_asHexString = [v1 crxu_asHexString];

  v3 = *MEMORY[0x277D85DE8];

  return crxu_asHexString;
}

@end