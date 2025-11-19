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
        LOBYTE(v18) = [v4 BOOLValue];
        v13 = a1;
        v14 = 66;
      }

      else
      {
        if (v5 != 67)
        {
          goto LABEL_31;
        }

        LOBYTE(v18) = [v4 unsignedCharValue];
        v13 = a1;
        v14 = 67;
      }

      goto LABEL_27;
    }

    if (v5 == 73)
    {
      LODWORD(v18) = [v4 unsignedIntValue];
      v7 = a1;
      v8 = 73;
      goto LABEL_29;
    }

    if (v5 == 81)
    {
      v18 = [v4 unsignedLongLongValue];
      v15 = a1;
      v16 = 81;
LABEL_24:
      [v15 hmf_appendUInt8:v16];
      v11 = a1;
      v12 = 8;
      goto LABEL_30;
    }

    if (v5 != 83)
    {
      goto LABEL_31;
    }

    LOWORD(v18) = [v4 unsignedShortValue];
    v9 = a1;
    v10 = 83;
LABEL_16:
    [v9 hmf_appendUInt8:v10];
    v11 = a1;
    v12 = 2;
LABEL_30:
    [v11 appendBytes:&v18 length:v12];
    goto LABEL_31;
  }

  if (v5 > 104)
  {
    if (v5 == 105)
    {
      LODWORD(v18) = [v4 intValue];
      v7 = a1;
      v8 = 105;
      goto LABEL_29;
    }

    if (v5 == 113)
    {
      v18 = [v4 longLongValue];
      v15 = a1;
      v16 = 113;
      goto LABEL_24;
    }

    if (v5 != 115)
    {
      goto LABEL_31;
    }

    LOWORD(v18) = [v4 shortValue];
    v9 = a1;
    v10 = 115;
    goto LABEL_16;
  }

  switch(v5)
  {
    case 'c':
      LOBYTE(v18) = [v4 charValue];
      v13 = a1;
      v14 = 99;
LABEL_27:
      [v13 hmf_appendUInt8:v14];
      v11 = a1;
      v12 = 1;
      goto LABEL_30;
    case 'd':
      [v4 doubleValue];
      v18 = v17;
      v15 = a1;
      v16 = 100;
      goto LABEL_24;
    case 'f':
      [v4 floatValue];
      LODWORD(v18) = v6;
      v7 = a1;
      v8 = 102;
LABEL_29:
      [v7 hmf_appendUInt8:v8];
      v11 = a1;
      v12 = 4;
      goto LABEL_30;
  }

LABEL_31:
}

- (void)hmf_appendData:()FastEncoding
{
  v4 = a3;
  [a1 hmf_appendUInt8:68];
  [a1 hmf_appendUInt32:{objc_msgSend(v4, "length")}];
  [a1 appendData:v4];
}

- (void)hmf_appendUTF8String:()FastEncoding
{
  v4 = [a3 dataUsingEncoding:4];
  if ([v4 length] > 0xFF)
  {
    [a1 hmf_appendUInt8:64];
    [a1 hmf_appendUInt32:{objc_msgSend(v4, "length")}];
  }

  else
  {
    [a1 hmf_appendUInt8:38];
    [a1 hmf_appendUInt8:{objc_msgSend(v4, "length")}];
  }

  [a1 appendData:v4];
}

- (void)hmf_appendOffsetTable:()FastEncoding block:
{
  v9 = a4;
  [a1 hmf_appendUInt32:a3];
  v6 = [a1 length];
  [a1 increaseLengthBy:4 * a3];
  if (a3)
  {
    v7 = 0;
    do
    {
      v8 = [a1 length];
      *([a1 mutableBytes] + v6 + 4 * v7) = v8;
      v9[2](v9, v7++);
    }

    while (a3 != v7);
  }
}

- (void)hmf_appendArray:()FastEncoding
{
  v4 = a3;
  [a1 hmf_appendUInt8:91];
  v5 = [v4 count];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NSMutableData_FastEncoding__hmf_appendArray___block_invoke;
  v7[3] = &unk_2786E6EA8;
  v7[4] = a1;
  v8 = v4;
  v6 = v4;
  [a1 hmf_appendOffsetTable:v5 block:v7];
}

- (void)hmf_appendSet:()FastEncoding
{
  v4 = a3;
  [a1 hmf_appendUInt8:123];
  v5 = [v4 allObjects];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_142];

  v7 = [v6 count];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__NSMutableData_FastEncoding__hmf_appendSet___block_invoke_2;
  v9[3] = &unk_2786E6EA8;
  v9[4] = a1;
  v10 = v6;
  v8 = v6;
  [a1 hmf_appendOffsetTable:v7 block:v9];
}

- (void)hmf_appendFastEncodableObject:()FastEncoding
{
  v7 = a3;
  v4 = [v7 hmf_encodeForFastEncoder];
  if (v4)
  {
    [a1 hmf_appendUInt8:88];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [a1 hmf_appendUTF8String:v6];
    [a1 hmf_appendData:v4];
  }

  else
  {
    [a1 hmf_appendNil];
  }
}

- (void)hmf_appendDictionary:()FastEncoding
{
  v4 = a3;
  [a1 hmf_appendUInt8:60];
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  v7 = [v6 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__NSMutableData_FastEncoding__hmf_appendDictionary___block_invoke;
  v10[3] = &unk_2786E6EF0;
  v11 = v6;
  v12 = a1;
  v13 = v4;
  v8 = v4;
  v9 = v6;
  [a1 hmf_appendOffsetTable:v7 block:v10];
}

- (void)hmf_appendObject:()FastEncoding
{
  v12 = a3;
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 hmf_appendNumber:v12];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 hmf_appendData:v12];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 hmf_appendUTF8String:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [a1 hmf_appendArray:v12];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [a1 hmf_appendSet:v12];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [a1 hmf_appendDictionary:v12];
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

                [a1 hmf_appendFastEncodableObject:v12];
              }
            }
          }
        }
      }
    }
  }

  else
  {
    [a1 hmf_appendNil];
  }
}

@end