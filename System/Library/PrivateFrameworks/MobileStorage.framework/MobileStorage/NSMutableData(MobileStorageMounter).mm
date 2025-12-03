@interface NSMutableData(MobileStorageMounter)
+ (id)dataWithHexString:()MobileStorageMounter;
- (id)initDataWithHexString:()MobileStorageMounter;
@end

@implementation NSMutableData(MobileStorageMounter)

+ (id)dataWithHexString:()MobileStorageMounter
{
  v3 = MEMORY[0x277CBEB28];
  v4 = a3;
  v5 = [[v3 alloc] initDataWithHexString:v4];

  return v5;
}

- (id)initDataWithHexString:()MobileStorageMounter
{
  v4 = a3;
  v15 = 0;
  if (v4)
  {
    alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:alphanumericCharacterSet];

    if ([v6 isEqualToString:&stru_286AD7A30])
    {
      if ([v4 length])
      {
        v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"0%@", v4];
      }

      else
      {
        v7 = [v4 copy];
      }

      v9 = v7;
      self = [self init];
      if (self)
      {
        if ([v9 length] >= 2)
        {
          v10 = 0;
          v11 = 1;
          do
          {
            __str[0] = [v9 characterAtIndex:v11 - 1];
            __str[1] = [v9 characterAtIndex:v11];
            HIBYTE(v15) = strtol(__str, 0, 16);
            [self appendBytes:&v15 + 1 length:1];
            ++v10;
            v11 += 2;
          }

          while (v10 < [v9 length] / 2);
        }

        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
      v9 = 0;
    }
  }

  else
  {
    selfCopy = 0;
    v9 = 0;
    v6 = 0;
  }

  v12 = selfCopy;

  return v12;
}

@end