@interface NSString(MobileStorageMounter)
+ (id)hexStringWithData:()MobileStorageMounter;
- (id)initHexStringWithData:()MobileStorageMounter;
@end

@implementation NSString(MobileStorageMounter)

+ (id)hexStringWithData:()MobileStorageMounter
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [[v3 alloc] initHexStringWithData:v4];

  return v5;
}

- (id)initHexStringWithData:()MobileStorageMounter
{
  v4 = a3;
  v5 = v4;
  if (v4 && (v6 = [v4 length], v7 = objc_msgSend(v5, "bytes"), v8 = 2 * v6, (v9 = malloc_type_malloc(2 * v6, 0x100004077774924uLL)) != 0))
  {
    if (v6)
    {
      v10 = v9 + 1;
      do
      {
        if (*v7 <= 0x9Fu)
        {
          v11 = (*v7 >> 4) | 0x30;
        }

        else
        {
          v11 = (*v7 >> 4) + 55;
        }

        *(v10 - 1) = v11;
        v12 = *v7++;
        v13 = (v12 & 0xF) + 55;
        v14 = v12 & 0xF | 0x30;
        if ((v12 & 0xFu) <= 9)
        {
          v15 = v14;
        }

        else
        {
          v15 = v13;
        }

        *v10 = v15;
        v10 += 2;
        --v6;
      }

      while (v6);
    }

    a1 = [a1 initWithBytesNoCopy:v9 length:v8 encoding:1 freeWhenDone:1];
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end