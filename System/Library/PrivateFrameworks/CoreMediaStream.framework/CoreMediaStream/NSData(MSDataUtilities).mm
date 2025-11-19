@interface NSData(MSDataUtilities)
- (id)MSBase64Encoding;
- (id)MSHexString;
- (id)MSInitWithBase64Encoding:()MSDataUtilities;
@end

@implementation NSData(MSDataUtilities)

- (id)MSHexString
{
  v2 = [a1 length];
  v3 = [a1 bytes];
  v4 = 2 * v2;
  v5 = malloc_type_malloc((2 * v2) | 1, 0xC99B12AEuLL);
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Cannot allocate space for hex conversion buffer"];
  }

  v6 = v5;
  if (v2)
  {
    v7 = v5;
    do
    {
      v8 = *v3++;
      *v7 = a0123456789abcd[v8 >> 4];
      v6 = v7 + 2;
      v7[1] = a0123456789abcd[v8 & 0xF];
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  *v6 = 0;
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:v4 encoding:1];
  free(v5);

  return v9;
}

- (id)MSBase64Encoding
{
  v2 = [a1 length];
  v3 = v2 % 3;
  v4 = 4 * (v2 / 3) + 4 * (v2 % 3 != 0);
  if (v4 < v2)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE730] format:@"data is too large to encode"];
  }

  v5 = malloc_type_malloc(v4, 0x100004077774924uLL);
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"unable to allocate memory for length (%lu)", v4}];
  }

  v6 = [a1 bytes];
  if (v2)
  {
    v7 = 0;
    v8 = 0;
    v9 = (v6 - 1);
    do
    {
      if (v8 % 3 == 2)
      {
        v11 = &v5[v7];
        *v11 = MSPCUCreateBase64StringFromData_DataEncodeTable[((v9[1] | (*v9 << 8)) >> 6) & 0x3F];
        v7 += 2;
        v11[1] = MSPCUCreateBase64StringFromData_DataEncodeTable[v9[1] & 0x3F];
      }

      else
      {
        if (v8 % 3 == 1)
        {
          v10 = ((v9[1] | (*v9 << 8)) >> 4) & 0x3F;
        }

        else
        {
          v10 = v9[1] >> 2;
        }

        v5[v7++] = MSPCUCreateBase64StringFromData_DataEncodeTable[v10];
      }

      ++v8;
      ++v9;
      --v2;
    }

    while (v2);
    if (v3 == 2)
    {
      v14 = &v5[v7];
      *v14 = MSPCUCreateBase64StringFromData_DataEncodeTable[4 * (*v9 & 0xF)];
      v13 = v14 + 1;
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      v12 = &v5[v7];
      *v12 = MSPCUCreateBase64StringFromData_DataEncodeTable[16 * (*v9 & 3)];
      v12[1] = 61;
      v13 = v12 + 2;
    }

    *v13 = 61;
  }

LABEL_19:
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 length:v4 encoding:1 freeWhenDone:1];

  return v15;
}

- (id)MSInitWithBase64Encoding:()MSDataUtilities
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  v6 = malloc_type_malloc(3 * (v5 >> 2), 0x100004077774924uLL);
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:{@"Unable to allocate memory for length (%lu)", 3 * (v5 >> 2)}];
  }

  if (v5 >= 0x3E8)
  {
    v7 = 1000;
  }

  else
  {
    v7 = v5;
  }

  v8 = &v25 - ((2 * v7 + 15) & 0xFF0);
  [v4 getCharacters:v8 range:{0, v7}];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_29;
  }

  v25 = &v25;
  v26 = a1;
  v27 = v6;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = v7;
  do
  {
    if (v10 >= v7)
    {
      if (v5 - (v13 + v16) < v7)
      {
        v16 = v5 - (v13 + v16);
      }

      [v4 getCharacters:v8 range:{v11, v16, v25}];
      v10 = 0;
      v13 = v11;
    }

    v17 = *&v8[2 * v10];
    if (v17 <= 0x7F)
    {
      v18 = MSInitWithBase64Encoding__DataDecodeTable[*&v8[2 * v10]];
      if ((v18 & 0x80000000) == 0)
      {
        if (v17 == 61)
        {
          if ((v14 & 3) == 0)
          {
            goto LABEL_24;
          }

          ++v15;
        }

        else if (v15)
        {
          v24 = v11 == v5;
          a1 = v26;
          v6 = v27;
          if (!v24 || (v14 & 3) != 0 || v15 > 2)
          {
            goto LABEL_27;
          }

          goto LABEL_29;
        }

        ++v14;
        v12 = v18 + (v12 << 6);
        if ((v14 & 3) == 0)
        {
          v19 = v27;
          *(v27 + v9) = BYTE2(v12);
          if (v15 > 1)
          {
            ++v9;
          }

          else
          {
            v20 = v9 + 2;
            v19[v9 + 1] = BYTE1(v12);
            if (v15)
            {
              v15 = 1;
              v9 += 2;
            }

            else
            {
              v9 += 3;
              v19[v20] = v12;
            }
          }
        }
      }
    }

LABEL_24:
    ++v11;
    ++v10;
  }

  while (v5 != v11);
  a1 = v26;
  v6 = v27;
  if ((v14 & 3) != 0 || v15 >= 3)
  {
LABEL_27:
    free(v6);
    v21 = 0;
    goto LABEL_30;
  }

LABEL_29:
  v21 = [a1 initWithBytesNoCopy:v6 length:v9 freeWhenDone:1];
LABEL_30:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end