@interface NSString(MSStringUtilities)
+ (__CFString)MSMakeUUID;
+ (__CFString)MSStringWithBool:()MSStringUtilities;
+ (uint64_t)MSTempFileOutFileName:()MSStringUtilities;
- (id)MSHexData;
- (unint64_t)MSUniqueID;
@end

@implementation NSString(MSStringUtilities)

- (unint64_t)MSUniqueID
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&v7, 0, sizeof(v7));
  CC_MD5_Init(&v7);
  v2 = [a1 cStringUsingEncoding:4];
  v3 = strlen(v2);
  if (HIDWORD(v3))
  {
    __assert_rtn("[NSString(MSStringUtilities) MSUniqueID]", "MSStringUtilities.m", 85, "len <= UINT32_MAX");
  }

  CC_MD5_Update(&v7, v2, v3);
  CC_MD5_Final(md, &v7);
  v4 = 0;
  result = 0;
  do
  {
    result = md[v4++] | (result << 8);
  }

  while (v4 != 8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)MSHexData
{
  v2 = malloc_type_malloc([a1 length] >> 1, 0xD7030CC7uLL);
  v3 = [a1 cStringUsingEncoding:1];
  if ([a1 length] == 1)
  {
LABEL_6:
    v11 = [MEMORY[0x277CBEA90] dataWithBytes:v2 length:{objc_msgSend(a1, "length") >> 1}];
  }

  else
  {
    v4 = 0;
    v5 = v2;
    while (1)
    {
      v6 = __tolower(*(v3 + v4));
      v7 = memchr("0123456789abcdef", v6, 0x11uLL);
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = __tolower(*(v3 + v4 + 1));
      v10 = memchr("0123456789abcdef", v9, 0x11uLL);
      if (!v10)
      {
        break;
      }

      *v5++ = (v10 - "0123456789abcdef") | (16 * (v8 - "0123456789abcdef"));
      v4 += 2;
      if (v4 >= [a1 length] - 1)
      {
        goto LABEL_6;
      }
    }

    v11 = 0;
  }

  free(v2);

  return v11;
}

+ (__CFString)MSStringWithBool:()MSStringUtilities
{
  if (a3)
  {
    return @"Yes";
  }

  else
  {
    return @"No";
  }
}

+ (uint64_t)MSTempFileOutFileName:()MSStringUtilities
{
  if (MSTempFileOutFileName__onceToken != -1)
  {
    dispatch_once(&MSTempFileOutFileName__onceToken, &__block_literal_global_803);
  }

  v4 = malloc_type_malloc([MSTempFileOutFileName__formatString length] + 1, 0xAFAAEDBBuLL);
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"MSTempFilePathCannotAllocateTemplate" format:@"Cannot allocate temporary file path"];
  }

  v5 = strcpy(v4, [MSTempFileOutFileName__formatString cStringUsingEncoding:4]);
  v6 = mkstemp(v5);
  if (v6 == -1)
  {
    [MEMORY[0x277CBEAD8] raise:@"MSTempFilePathCannotCreatePath" format:@"Cannot create temporary file path"];
  }

  if (a3)
  {
    *a3 = [MEMORY[0x277CCACA8] stringWithCString:v4 encoding:1];
  }

  free(v4);
  return v6;
}

+ (__CFString)MSMakeUUID
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

@end