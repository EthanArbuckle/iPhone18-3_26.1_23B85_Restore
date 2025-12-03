@interface NSMutableData(FastEncoding)
- (void)hmf_appendArray:()FastEncoding;
- (void)hmf_appendData:()FastEncoding;
- (void)hmf_appendDictionary:()FastEncoding;
- (void)hmf_appendFastEncodableObject:()FastEncoding;
- (void)hmf_appendNumber:()FastEncoding;
- (void)hmf_appendObject:()FastEncoding;
- (void)hmf_appendOffsetTable:()FastEncoding block:;
- (void)hmf_appendSet:()FastEncoding;
- (void)hmf_appendUTF8String:()FastEncoding;
@end

@implementation NSMutableData(FastEncoding)

- (void)hmf_appendNumber:()FastEncoding
{
  v4 = a3;
  v5 = *[v4 objCType];
  if (v5 <= 0x62)
  {
    if (v5 <= 72)
    {
      if (v5 == 66)
      {
        LOBYTE(unsignedLongLongValue) = [v4 BOOLValue];
        selfCopy11 = self;
        v14 = 66;
      }

      else
      {
        if (v5 != 67)
        {
          goto LABEL_31;
        }

        LOBYTE(unsignedLongLongValue) = [v4 unsignedCharValue];
        selfCopy11 = self;
        v14 = 67;
      }

      goto LABEL_27;
    }

    if (v5 == 73)
    {
      LODWORD(unsignedLongLongValue) = [v4 unsignedIntValue];
      selfCopy14 = self;
      v8 = 73;
      goto LABEL_29;
    }

    if (v5 == 81)
    {
      unsignedLongLongValue = [v4 unsignedLongLongValue];
      selfCopy13 = self;
      v16 = 81;
LABEL_24:
      [selfCopy13 hmf_appendUInt8:v16];
      selfCopy15 = self;
      v12 = 8;
      goto LABEL_30;
    }

    if (v5 != 83)
    {
      goto LABEL_31;
    }

    LOWORD(unsignedLongLongValue) = [v4 unsignedShortValue];
    selfCopy10 = self;
    v10 = 83;
LABEL_16:
    [selfCopy10 hmf_appendUInt8:v10];
    selfCopy15 = self;
    v12 = 2;
LABEL_30:
    [selfCopy15 appendBytes:&unsignedLongLongValue length:v12];
    goto LABEL_31;
  }

  if (v5 > 104)
  {
    if (v5 == 105)
    {
      LODWORD(unsignedLongLongValue) = [v4 intValue];
      selfCopy14 = self;
      v8 = 105;
      goto LABEL_29;
    }

    if (v5 == 113)
    {
      unsignedLongLongValue = [v4 longLongValue];
      selfCopy13 = self;
      v16 = 113;
      goto LABEL_24;
    }

    if (v5 != 115)
    {
      goto LABEL_31;
    }

    LOWORD(unsignedLongLongValue) = [v4 shortValue];
    selfCopy10 = self;
    v10 = 115;
    goto LABEL_16;
  }

  switch(v5)
  {
    case 'c':
      LOBYTE(unsignedLongLongValue) = [v4 charValue];
      selfCopy11 = self;
      v14 = 99;
LABEL_27:
      [selfCopy11 hmf_appendUInt8:v14];
      selfCopy15 = self;
      v12 = 1;
      goto LABEL_30;
    case 'd':
      [v4 doubleValue];
      unsignedLongLongValue = v17;
      selfCopy13 = self;
      v16 = 100;
      goto LABEL_24;
    case 'f':
      [v4 floatValue];
      LODWORD(unsignedLongLongValue) = v6;
      selfCopy14 = self;
      v8 = 102;
LABEL_29:
      [selfCopy14 hmf_appendUInt8:v8];
      selfCopy15 = self;
      v12 = 4;
      goto LABEL_30;
  }

LABEL_31:
}

- (void)hmf_appendData:()FastEncoding
{
  v4 = a3;
  [self hmf_appendUInt8:68];
  [self hmf_appendUInt32:{objc_msgSend(v4, "length")}];
  [self appendData:v4];
}

- (void)hmf_appendUTF8String:()FastEncoding
{
  v4 = [a3 dataUsingEncoding:4];
  if ([v4 length] > 0xFF)
  {
    [self hmf_appendUInt8:64];
    [self hmf_appendUInt32:{objc_msgSend(v4, "length")}];
  }

  else
  {
    [self hmf_appendUInt8:38];
    [self hmf_appendUInt8:{objc_msgSend(v4, "length")}];
  }

  [self appendData:v4];
}

- (void)hmf_appendOffsetTable:()FastEncoding block:
{
  v9 = a4;
  [self hmf_appendUInt32:a3];
  v6 = [self length];
  [self increaseLengthBy:4 * a3];
  if (a3)
  {
    v7 = 0;
    do
    {
      v8 = [self length];
      *([self mutableBytes] + v6 + 4 * v7) = v8;
      v9[2](v9, v7++);
    }

    while (a3 != v7);
  }
}

- (void)hmf_appendArray:()FastEncoding
{
  v4 = a3;
  [self hmf_appendUInt8:91];
  v5 = [v4 count];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NSMutableData_FastEncoding__hmf_appendArray___block_invoke;
  v7[3] = &unk_2786E6EA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [self hmf_appendOffsetTable:v5 block:v7];
}

- (void)hmf_appendSet:()FastEncoding
{
  v4 = a3;
  [self hmf_appendUInt8:123];
  allObjects = [v4 allObjects];

  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_142];

  v7 = [v6 count];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__NSMutableData_FastEncoding__hmf_appendSet___block_invoke_2;
  v9[3] = &unk_2786E6EA8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [self hmf_appendOffsetTable:v7 block:v9];
}

- (void)hmf_appendFastEncodableObject:()FastEncoding
{
  v7 = a3;
  hmf_encodeForFastEncoder = [v7 hmf_encodeForFastEncoder];
  if (hmf_encodeForFastEncoder)
  {
    [self hmf_appendUInt8:88];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [self hmf_appendUTF8String:v6];
    [self hmf_appendData:hmf_encodeForFastEncoder];
  }

  else
  {
    [self hmf_appendNil];
  }
}

- (void)hmf_appendDictionary:()FastEncoding
{
  v4 = a3;
  [self hmf_appendUInt8:60];
  allKeys = [v4 allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v7 = [v6 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__NSMutableData_FastEncoding__hmf_appendDictionary___block_invoke;
  v10[3] = &unk_2786E6EF0;
  v11 = v6;
  selfCopy = self;
  v13 = v4;
  v8 = v4;
  v9 = v6;
  [self hmf_appendOffsetTable:v7 block:v10];
}

- (void)hmf_appendObject:()FastEncoding
{
  v12 = a3;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self hmf_appendNumber:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self hmf_appendData:v12];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [self hmf_appendUTF8String:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [self hmf_appendArray:v12];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [self hmf_appendSet:v12];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [self hmf_appendDictionary:v12];
              }

              else
              {
                if (![v12 conformsToProtocol:&unk_283EE3118])
                {
                  v4 = objc_opt_class();
                  NSStringFromClass(v4);
                  objc_claimAutoreleasedReturnValue();
                  _HMFPreconditionFailureWithFormat(@"Unexpected object type %@ (%@) in hmf_appendObject", v5, v6, v7, v8, v9, v10, v11, v12);
                }

                [self hmf_appendFastEncodableObject:v12];
              }
            }
          }
        }
      }
    }
  }

  else
  {
    [self hmf_appendNil];
  }
}

@end