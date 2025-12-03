@interface MKHex
- (id)dataToHex:(id)hex;
- (id)hexToData:(id)data;
@end

@implementation MKHex

- (id)dataToHex:(id)hex
{
  hexCopy = hex;
  v4 = 2 * [hexCopy length];
  v5 = malloc_type_malloc(v4, 0x4F913ADAuLL);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __19__MKHex_dataToHex___block_invoke;
  v8[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v8[4] = v5;
  [hexCopy enumerateByteRangesUsingBlock:v8];

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:v4 encoding:4];
  free(v5);

  return v6;
}

uint64_t __19__MKHex_dataToHex___block_invoke(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = 2 * a3;
    do
    {
      v5 = *a2++;
      *(*(result + 32) + v4) = dataToHex__intToHexMap[v5 >> 4];
      *(*(result + 32) + v4 + 1) = dataToHex__intToHexMap[v5 & 0xF];
      v4 += 2;
      --a4;
    }

    while (a4);
  }

  return result;
}

- (id)hexToData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v12 = 0;
    goto LABEL_17;
  }

  v4 = [dataCopy length] >> 1;
  v5 = malloc_type_malloc(v4, 0xB53D9334uLL);
  if (![dataCopy length])
  {
LABEL_14:
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:v4];
    goto LABEL_15;
  }

  v6 = 0;
  while (1)
  {
    v7 = [dataCopy characterAtIndex:v6];
    if ((v7 - 48) >= 0xA)
    {
      break;
    }

    v8 = -48;
LABEL_10:
    v9 = v8 + v7;
    v10 = v6 >> 1;
    if (v6)
    {
      v11 = v5[v10] | v9;
    }

    else
    {
      v11 = 16 * v9;
    }

    v5[v10] = v11;
    if (++v6 >= [dataCopy length])
    {
      goto LABEL_14;
    }
  }

  if ((v7 - 97) < 6)
  {
    v8 = -87;
    goto LABEL_10;
  }

  if ((v7 - 65) <= 5)
  {
    v8 = -55;
    goto LABEL_10;
  }

  v12 = 0;
LABEL_15:
  free(v5);
LABEL_17:

  return v12;
}

@end