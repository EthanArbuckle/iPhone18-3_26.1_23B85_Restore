@interface NSData(HMFoundation)
+ (NSString)shortDescription;
- (__CFString)hmf_hexadecimalStringWithOptions:()HMFoundation;
- (id)hmf_initWithHexadecimalString:()HMFoundation options:;
- (id)shortDescription;
- (uint64_t)hmf_isZeroed;
@end

@implementation NSData(HMFoundation)

- (id)shortDescription
{
  if (qword_280AFC598 != -1)
  {
    dispatch_once(&qword_280AFC598, &__block_literal_global_3);
  }

  v2 = [self length];
  v3 = v2 - 8;
  if (v2 > 8)
  {
    v5 = v2;
    v6 = [self subdataWithRange:{0, 8}];
    v7 = [v6 length];
    v8 = 0;
    v9 = v5 - v7;
    if (v5 != v7)
    {
      if (v3 <= 8)
      {
        v10 = 8;
      }

      else
      {
        v10 = v3;
      }

      if (v9 >= 8)
      {
        v11 = 8;
      }

      else
      {
        v11 = v5 - v7;
      }

      v8 = [self subdataWithRange:{v10, v11}];
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [v6 description];
    v14 = [v13 stringByTrimmingCharactersInSet:_MergedGlobals_56];
    v15 = v14;
    if (v9 <= 8)
    {
      v16 = &stru_283EBDA30;
    }

    else
    {
      v16 = @" ... ";
    }

    if (v8)
    {
      v17 = [v8 description];
      v18 = [v17 stringByTrimmingCharactersInSet:_MergedGlobals_56];
      v4 = [v12 stringWithFormat:@"<[%tu] %@%@%@>", v5, v15, v16, v18];
    }

    else
    {
      v4 = [v12 stringWithFormat:@"<[%tu] %@%@%@>", v5, v14, v16, &stru_283EBDA30];
    }
  }

  else
  {
    v4 = [self description];
  }

  return v4;
}

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (uint64_t)hmf_isZeroed
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__NSData_HMFoundation__hmf_isZeroed__block_invoke;
  v3[3] = &unk_2786E6E08;
  v3[4] = &v4;
  [self enumerateByteRangesUsingBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (id)hmf_initWithHexadecimalString:()HMFoundation options:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_283EBDA30];

    v7 = v8;
  }

  if ([v7 hasPrefix:@"0x"])
  {
    v9 = 2;
  }

  else if ([v7 hasPrefix:@"0X"])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 length];
  v11 = v10;
  if (v10)
  {
LABEL_36:
    v26 = 0;
  }

  else
  {
    v12 = (v10 - v9) >> 1;
    v13 = malloc_type_malloc(v12, 0xDBEEEAAuLL);
    v14 = v13;
    if (v11 > v9)
    {
      v15 = v13;
      do
      {
        if (v11 - v9 >= 0x200)
        {
          v16 = 512;
        }

        else
        {
          v16 = v11 - v9;
        }

        [v7 getCharacters:v29 range:{v9, v16}];
        if (v11 != v9)
        {
          for (i = 0; i < v16; i += 2)
          {
            v18 = v29[i];
            v19 = v18 - 48;
            v20 = v18 - 65;
            if ((v18 - 97) >= 6)
            {
              v21 = -1;
            }

            else
            {
              v21 = v18 - 87;
            }

            v22 = v18 - 55;
            if (v20 > 5)
            {
              v22 = v21;
            }

            if (v19 <= 9)
            {
              v22 = v19;
            }

            v23 = v29[i + 1];
            if ((v23 - 48) >= 0xA)
            {
              if ((v23 - 65) >= 6)
              {
                if ((v23 - 97) > 5 || (v24 = -87, (v22 & 0x80000000) != 0))
                {
LABEL_35:
                  free(v14);
                  goto LABEL_36;
                }
              }

              else
              {
                v24 = -55;
                if ((v22 & 0x80000000) != 0)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {
              v24 = -48;
              if ((v22 & 0x80000000) != 0)
              {
                goto LABEL_35;
              }
            }

            v25 = v24 + v23;
            if (v25 < 0)
            {
              goto LABEL_35;
            }

            *v15++ = v25 | (16 * v22);
          }
        }

        v9 += v16;
      }

      while (v9 < v11);
    }

    v26 = [self initWithBytesNoCopy:v14 length:v12 freeWhenDone:1];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (__CFString)hmf_hexadecimalStringWithOptions:()HMFoundation
{
  v5 = a3 & 1;
  v6 = [self length];
  if (v6)
  {
    v7 = 2 * (v6 + v5);
    v8 = malloc_type_malloc(v7, 0xA688A6A8uLL);
    v9 = v8;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = v8;
    if (v5)
    {
      *v8 = 48;
      v16 = v8 + 2;
      v8[1] = 120;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__NSData_HMFoundation__hmf_hexadecimalStringWithOptions___block_invoke;
    v13[3] = &unk_2786E6E30;
    v13[4] = v15;
    v14 = (a3 & 2) != 0;
    [self enumerateByteRangesUsingBlock:v13];
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v9 length:v7 encoding:1 freeWhenDone:1];
    _Block_object_dispose(v15, 8);
  }

  else
  {
    v11 = @"0x";
    if (!v5)
    {
      v11 = &stru_283EBDA30;
    }

    v10 = v11;
  }

  return v10;
}

@end