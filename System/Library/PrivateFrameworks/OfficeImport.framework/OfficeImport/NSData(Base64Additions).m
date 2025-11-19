@interface NSData(Base64Additions)
+ (id)tsu_decodeFromBase64CString:()Base64Additions srcLength:;
+ (uint64_t)tsu_decodeFromBase64String:()Base64Additions;
+ (uint64_t)tsu_decodeFromBase64StringWithWhitespace:()Base64Additions;
- (id)tsu_encodeToBase64String;
- (id)tsu_encodeToBase64URLSafeString;
@end

@implementation NSData(Base64Additions)

- (id)tsu_encodeToBase64String
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1 length];
  v3 = (v2 + 2) / 3;
  v4 = 8 * v3;
  if (v2 >= 0xBFFFFFFFFFFFFFFELL)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSData(Base64Additions) tsu_encodeToBase64String]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSData_Base64Additions.mm"], 86, 0, "Overflow when calculating buffer size!");
    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_5;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSData(Base64Additions) tsu_encodeToBase64String]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSData_Base64Additions.mm"], 87, 0, "Overflow when calculating buffer size!");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v7 = malloc_type_malloc(v4, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSData(Base64Additions) tsu_encodeToBase64String]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSData_Base64Additions.mm"], 91, 0, "invalid nil value for '%{public}s'", "result");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [a1 bytes];
  if (v2)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    updated = 0;
    v14 = 384;
    v15 = v2;
    do
    {
      if (v2 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v2;
      }

      v12 += 384;
      if (v12 <= v2)
      {
        memcpy(__dst, v10, sizeof(__dst));
        v10 += 384;
      }

      else
      {
        memcpy(__dst, v10, v15);
      }

      updated = TSUBase64UpdateBase64StringWithChunk(v7, updated, __dst, v16 + v11);
      v14 += 384;
      v11 -= 384;
      v15 -= 384;
    }

    while (v12 < v2);
  }

  else
  {
    updated = 0;
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v7 length:updated freeWhenDone:1];

  return v17;
}

- (id)tsu_encodeToBase64URLSafeString
{
  v1 = [objc_msgSend(a1 base64EncodedStringWithOptions:{0), "mutableCopy"}];
  [v1 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"=" withString:&stru_286EE1130 options:0 range:{0, objc_msgSend(v1, "length")}];
  return v1;
}

+ (uint64_t)tsu_decodeFromBase64StringWithWhitespace:()Base64Additions
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"[ \r\n\t]+" withString:&stru_286EE1130 options:1024 range:{0, objc_msgSend(a3, "length")}];

  return [a1 tsu_decodeFromBase64String:v4];
}

+ (uint64_t)tsu_decodeFromBase64String:()Base64Additions
{
  v4 = MEMORY[0x277CBEA90];
  v5 = [a3 UTF8String];
  v6 = [a3 length];

  return [v4 tsu_decodeFromBase64CString:v5 srcLength:v6];
}

+ (id)tsu_decodeFromBase64CString:()Base64Additions srcLength:
{
  v33 = *MEMORY[0x277D85DE8];
  if ((a4 & 3) != 0)
  {
    goto LABEL_2;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v25 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v24 options:1];
  objc_autoreleasePoolPop(v23);
  if (v25)
  {
    if ([v25 length])
    {

      return v25;
    }
  }

  if (a4)
  {
LABEL_2:
    v6 = (vcvtd_n_f64_u64(a4, 2uLL) * 3.0);
    if (*(a3 + a4 - 1) == 61)
    {
      v7 = -2;
      if (*(a3 + a4 - 2) != 61)
      {
        v7 = -1;
      }

      v6 += v7;
    }

    v8 = malloc_type_calloc(v6, 1uLL, 0x28CB64D4uLL);
    if (!v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSData(Base64Additions) tsu_decodeFromBase64CString:srcLength:]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v9, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/NSData_Base64Additions.mm"], 186, 0, "invalid nil value for '%{public}s'", "result");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    if (a4 < 5)
    {
      v17 = 0;
      v11 = 0;
      v12 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = v8;
      do
      {
        v13 = DECODE_DATA[*(a3 + v10 + 1)];
        v14 = DECODE_DATA[*(a3 + v10 + 2)];
        v15 = DECODE_DATA[*(a3 + v10 + 3)];
        v16 = &__src[v11];
        *v16 = (v13 >> 4) | (4 * DECODE_DATA[*(a3 + v10)]);
        v16[1] = (v14 >> 2) | (16 * v13);
        v11 += 3;
        v16[2] = v15 | (v14 << 6);
        if (v11 == 384)
        {
          memcpy(v12, __src, 0x180uLL);
          v11 = 0;
          v12 += 384;
        }

        v17 = v10 + 4;
        v18 = v10 + 8;
        v10 += 4;
      }

      while (v18 < a4);
    }

    if (v17 < a4)
    {
      v19 = DECODE_DATA[*(a3 + v17 + 1)];
      __src[v11] = (DECODE_DATA[*(a3 + v17 + 1)] >> 4) | (4 * DECODE_DATA[*(a3 + v17)]);
      if ((v17 | 2) >= a4 || (v20 = *(a3 + (v17 | 2)), v20 == 61))
      {
        ++v11;
      }

      else
      {
        v26 = DECODE_DATA[v20];
        v27 = (v26 >> 2) | (16 * v19);
        v28 = v17 | 3;
        v29 = v11 + 2;
        __src[v11 + 1] = v27;
        if (v28 >= a4 || (v30 = *(a3 + v28), v30 == 61))
        {
          v11 += 2;
        }

        else
        {
          v11 += 3;
          __src[v29] = DECODE_DATA[v30] | (v26 << 6);
        }
      }
    }

    if (v11)
    {
      memcpy(v12, __src, v11);
    }

    v21 = MEMORY[0x277CBEA90];

    return [v21 dataWithBytesNoCopy:v8 length:v6 freeWhenDone:1];
  }

  v31 = MEMORY[0x277CBEA90];

  return [v31 data];
}

@end