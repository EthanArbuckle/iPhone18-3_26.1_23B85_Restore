void sub_248BF6280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248BF6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248BF6F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248BF747C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *KmlErrorString(int a1)
{
  if (!a1)
  {
    return "Success";
  }

  v2 = &dword_278F6FC20;
  v3 = 85;
  result = "Unknown Error";
  while (--v3)
  {
    v5 = v2 + 4;
    v6 = *v2;
    v2 += 4;
    if (v6 == a1)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

uint64_t sesErrorCodeToKmlErrorCode(uint64_t a1, uint64_t a2)
{
  if (a1 == 3)
  {
    return 209;
  }

  v2 = &qword_248C29D28;
  v3 = 3;
  while (--v3)
  {
    v4 = v2 + 2;
    v5 = *v2;
    v2 += 2;
    if (v5 == a1)
    {
      return *(v4 - 2);
    }
  }

  return a2;
}

id sesErrorToKmlError(void *a1, unsigned int a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [v3 domain];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.sharing"];
  if ([v5 isEqual:v6])
  {
    goto LABEL_5;
  }

  v7 = [v4 domain];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  if (([v7 isEqual:v8] & 1) == 0)
  {
    v12 = [v4 domain];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml"];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      goto LABEL_6;
    }

    v15 = [v4 underlyingErrors];
    if ([v15 count])
    {
      v16 = [v4 underlyingErrors];
      v17 = [v16 firstObject];
      v18 = [v17 code];
    }

    else
    {
      v18 = [v4 code];
    }

    switch(v18)
    {
      case -1009:
        a2 = 228;
        break;
      case 3:
        a2 = 209;
        break;
      case 6:
        a2 = 215;
        break;
      default:
        v19 = MEMORY[0x277CCACA8];
        if (!a2)
        {
          v22 = "Success";
LABEL_25:
          v25 = [v19 stringWithUTF8String:v22];
          v26 = [v4 localizedFailureReason];
          if (v26)
          {
            v27 = [v4 localizedFailureReason];
          }

          else
          {
            v27 = &stru_285B97268;
          }

          v28 = *MEMORY[0x277CCA470];
          v32[0] = *MEMORY[0x277CCA450];
          v32[1] = v28;
          v33[0] = v25;
          v33[1] = v27;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
          v30 = MEMORY[0x277CCA9B8];
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml"];
          v9 = [v30 errorWithDomain:v31 code:a2 userInfo:v29];

          goto LABEL_7;
        }

LABEL_21:
        v20 = &dword_278F6FC20;
        v21 = 85;
        v22 = "Unknown Error";
        while (--v21)
        {
          v23 = v20 + 4;
          v24 = *v20;
          v20 += 4;
          if (v24 == a2)
          {
            v22 = *(v23 - 1);
            goto LABEL_25;
          }
        }

        goto LABEL_25;
    }

    v19 = MEMORY[0x277CCACA8];
    goto LABEL_21;
  }

LABEL_5:
LABEL_6:
  v9 = v4;
LABEL_7:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id kmlUtilDataForHexString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v4 = [v2 stringByReplacingOccurrencesOfString:@" " withString:&stru_285B97268];
    v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_285B97268];

    if ([v5 length] != 1)
    {
      v6 = 0;
      do
      {
        v7 = [v5 characterAtIndex:v6];
        v8 = [v5 characterAtIndex:v6 + 1];
        v9 = __toupper(v7);
        v10 = v9 - 48;
        if (v10 >= 0xA)
        {
          v10 = -1;
        }

        if (v9 - 65 >= 6)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9 - 55;
        }

        v12 = __toupper(v8);
        v13 = v12 - 48;
        if (v13 >= 0xA)
        {
          v13 = -1;
        }

        if (v12 - 65 < 6)
        {
          v13 = v12 - 55;
        }

        v14 = v13 == -1 || v11 == -1;
        v15 = v13 | (16 * v11);
        if (v14)
        {
          v15 = 0;
        }

        v17 = v15;
        [v3 appendBytes:&v17 length:1];
        v6 += 2;
      }

      while ([v5 length] - 1 > v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id kmlUtilHexStringFromData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    v3 = 2 * [v2 length];
    v4 = malloc_type_malloc(v3 | 1, 0x100004077774924uLL);
    v4[v3] = 0;
    v5 = [v2 bytes];
    if ([v2 length])
    {
      v6 = 0;
      v7 = v4;
      do
      {
        sprintf(v7, "%02X", *(v5 + v6++));
        v7 += 2;
      }

      while ([v2 length] > v6);
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v4];
    free(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id kmlUtilSHA1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = CC_SHA1(v2, v3, md);
  if (v4)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id kmlUtilSHA256(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  v4 = CC_SHA256(v2, v3, md);
  if (v4)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

void kmlUtilLogLargeData(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (KmlLogIsInternalBuild())
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
      v17 = 1024;
      v18 = 118;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : --- start %@ ---", buf, 0x1Cu);
    }
  }

  v6 = kmlUtilHexStringFromData(v4);
  v7 = [v6 length];
  if (v7 < 0x321)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (KmlLogIsInternalBuild())
      {
        v9 = KmlLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v6 substringWithRange:{v8, 800}];
          *buf = 136315650;
          v16 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
          v17 = 1024;
          v18 = 123;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_INFO, "%s : %i : %@", buf, 0x1Cu);
        }
      }

      v8 += 800;
      v7 -= 800;
    }

    while (v7 > 0x320);
  }

  if (KmlLogIsInternalBuild())
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 substringWithRange:{v8, v7}];
      *buf = 136315650;
      v16 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
      v17 = 1024;
      v18 = 127;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : %@", buf, 0x1Cu);
    }
  }

  if (KmlLogIsInternalBuild())
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v16 = "void kmlUtilLogLargeData(NSString *__strong, NSData *__strong)";
      v17 = 1024;
      v18 = 128;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : --- end %@ ---", buf, 0x1Cu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

id kmlUtilUUIDToData(void *a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  [a1 getUUIDBytes:v4];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id kmlUtilTimeNow()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAA8] date];
  v1 = objc_alloc_init(MEMORY[0x277CCA968]);
  v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v1 setTimeZone:v2];

  [v1 setDateFormat:@"yyyyMMddHHmmss'Z'"];
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v1 setLocale:v3];

  v4 = [v1 stringFromDate:v0];
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "NSData *kmlUtilTimeNow(void)";
    v11 = 1024;
    v12 = 150;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_DEBUG, "%s : %i : date now %@", &v9, 0x1Cu);
  }

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v4 length:{"UTF8String"), objc_msgSend(v4, "length")}];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id kmlUtilTimeFiveMinutesFromNow()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAA8] date];
  [v0 timeIntervalSince1970];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v1 + 300.0];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v3 setTimeZone:v4];

  [v3 setDateFormat:@"yyyyMMddHHmmss'Z'"];
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v5];

  v6 = [v3 stringFromDate:v2];
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "NSData *kmlUtilTimeFiveMinutesFromNow(void)";
    v13 = 1024;
    v14 = 168;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_DEBUG, "%s : %i : date five minutes from %@", &v11, 0x1Cu);
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v6 length:{"UTF8String"), objc_msgSend(v6, "length")}];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id kmlUtilInfiniteTime()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = KmlLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "NSData *kmlUtilInfiniteTime(void)";
    v6 = 1024;
    v7 = 176;
    v8 = 2112;
    v9 = @"99991231235959Z";
    _os_log_impl(&dword_248BF3000, v0, OS_LOG_TYPE_DEBUG, "%s : %i : infinite date %@", &v4, 0x1Cu);
  }

  v1 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(@"99991231235959Z" length:{"UTF8String"), objc_msgSend(@"99991231235959Z", "length")}];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

uint64_t isInternalBuild()
{
  if ((isInternalBuild_hasChecked & 1) == 0)
  {
    if (MGGetBoolAnswer())
    {
      isInternalBuild_internalBuild = 1;
    }

    isInternalBuild_hasChecked = 1;
  }

  return isInternalBuild_internalBuild;
}

id randomStringWithLength(uint64_t a1)
{
  v2 = [@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" length];
  for (i = [MEMORY[0x277CCAB68] stringWithCapacity:a1];
  {
    [i appendFormat:@"%C", objc_msgSend(@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", "characterAtIndex:", arc4random_uniform(v2))];
  }

  return i;
}

id kmlUtilSanitizeFriendlyName(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 dataUsingEncoding:4];
  if ([v2 length] > 0x1E)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__0;
    *&buf[32] = __Block_byref_object_dispose__0;
    v21 = [MEMORY[0x277CCAB68] string];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = 0;
    v5 = [v1 length];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __kmlUtilSanitizeFriendlyName_block_invoke;
    v10[3] = &unk_278F70178;
    v10[4] = v11;
    v10[5] = buf;
    [v1 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v10}];
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*&buf[8] + 40);
      *v12 = 136315906;
      v13 = "NSString *kmlUtilSanitizeFriendlyName(NSString *__strong)";
      v14 = 1024;
      v15 = 235;
      v16 = 2112;
      v17 = v1;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_INFO, "%s : %i : Original key name: %@ ,  truncated key name: %@", v12, 0x26u);
    }

    v4 = *(*&buf[8] + 40);
    _Block_object_dispose(v11, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      *&buf[4] = "NSString *kmlUtilSanitizeFriendlyName(NSString *__strong)";
      *&buf[12] = 1024;
      *&buf[14] = 217;
      *&buf[18] = 2048;
      *&buf[20] = 30;
      *&buf[28] = 2112;
      *&buf[30] = v1;
      _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : UTF8 encoded friendly name is less than %ld chars : %@", buf, 0x26u);
    }

    v4 = v1;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

void sub_248BFA010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __kmlUtilSanitizeFriendlyName_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  *(*(*(a1 + 32) + 8) + 24) += [v9 lengthOfBytesUsingEncoding:4];
  if (*(*(*(a1 + 32) + 8) + 24) > 0x1EuLL)
  {
    *a7 = 1;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) appendString:v9];
  }
}

id kmlUtilGetDckIdFromSlotId(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length])
  {
    if ([v2 length] == 8)
    {
      v3 = v2;
LABEL_10:
      v5 = v3;
      goto LABEL_14;
    }

    if ([v2 length] >= 9)
    {
      v3 = [v2 subdataWithRange:{0, 8}];
      goto LABEL_10;
    }

    v5 = [MEMORY[0x277CBEB28] dataWithLength:8];
    [v5 replaceBytesInRange:8 - objc_msgSend(v2 withBytes:{"length"), objc_msgSend(v2, "length"), objc_msgSend(v2, "bytes")}];
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315650;
      v10 = "NSData *kmlUtilGetDckIdFromSlotId(NSData *__strong)";
      v11 = 1024;
      v12 = 256;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_INFO, "%s : %i : DCK Identifier : %@", &v9, 0x1Cu);
    }
  }

  else
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "NSData *kmlUtilGetDckIdFromSlotId(NSData *__strong)";
      v11 = 1024;
      v12 = 242;
      v13 = 2112;
      v14 = v2;
      _os_log_impl(&dword_248BF3000, v4, OS_LOG_TYPE_ERROR, "%s : %i : Invalid slotId %@:", &v9, 0x1Cu);
    }

    v5 = 0;
  }

LABEL_14:

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

id kmlUtilGetOOBKey(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "NSData *kmlUtilGetOOBKey(NSData *__strong, NSData *__strong)";
      v16 = 1024;
      v17 = 263;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : Missing masterKey or identifier", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CBEB28] dataWithLength:64];
  ccsha256_di();
  [v3 length];
  [v3 bytes];
  [v5 length];
  [v5 bytes];
  [v6 length];
  v13 = [v6 mutableBytes];
  v7 = cchkdf();
  if (v7)
  {
    v8 = v7;
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "NSData *kmlUtilGetOOBKey(NSData *__strong, NSData *__strong)";
      v16 = 1024;
      v17 = 274;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_248BF3000, v9, OS_LOG_TYPE_ERROR, "%s : %i : cchkdf failed with %d", buf, 0x18u);
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [v6 subdataWithRange:0, 16, v13];
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id kmlUtilRandomDataWithSize(size_t a1)
{
  v2 = [MEMORY[0x277CBEB28] dataWithLength:a1];
  arc4random_buf([v2 mutableBytes], a1);

  return v2;
}

id kmlUtilGeneratePasscode(void *a1, void *a2, unint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v20 = a2;
  if ([v19 length] && (v5 = objc_msgSend(v20, "length"), a3) && v5)
  {
    v21 = 0;
    v6 = [MEMORY[0x277CCAB68] stringWithCapacity:a3];
    v7 = 0;
    while (1)
    {
      if (KmlLogIsInternalBuild())
      {
        v8 = KmlLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v23 = "NSString *kmlUtilGeneratePasscode(NSData *__strong, NSData *__strong, NSUInteger)";
          v24 = 1024;
          v25 = 306;
          v26 = 1024;
          v27 = v21;
          v28 = 1024;
          v29 = v7;
          _os_log_impl(&dword_248BF3000, v8, OS_LOG_TYPE_DEBUG, "%s : %i : counter : %u ; digits scored : %u", buf, 0x1Eu);
        }
      }

      v9 = [MEMORY[0x277CBEB28] dataWithBytes:&v21 length:1];
      [v9 appendData:v19];
      [v9 appendData:v20];
      v10 = kmlUtilSHA256(v9);
      v11 = [v10 bytes];
      if ([v10 length])
      {
        v12 = 0;
        while (1)
        {
          if (*(v11 + v12) <= 0xF9u)
          {
            [v6 appendFormat:@"%C", a0123456789[*(v11 + v12) % 0xAu]];
            if (++v7 == a3)
            {
              break;
            }
          }

          if (++v12 >= [v10 length])
          {
            goto LABEL_16;
          }
        }

        v7 = a3;
      }

LABEL_16:
      if (v21 == 255)
      {
        break;
      }

      ++v21;

      if (v7 >= a3)
      {
        v13 = v6;
        goto LABEL_25;
      }
    }

    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "NSString *kmlUtilGeneratePasscode(NSData *__strong, NSData *__strong, NSUInteger)";
      v24 = 1024;
      v25 = 327;
      _os_log_impl(&dword_248BF3000, v16, OS_LOG_TYPE_ERROR, "%s : %i : Ran out of randomizer counter. Abort!", buf, 0x12u);
    }

    v13 = 0;
LABEL_25:
    v15 = v13;
  }

  else
  {
    v14 = KmlLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v23 = "NSString *kmlUtilGeneratePasscode(NSData *__strong, NSData *__strong, NSUInteger)";
      v24 = 1024;
      v25 = 291;
      v26 = 1024;
      v27 = [v19 length];
      v28 = 1024;
      v29 = [v20 length];
      v30 = 1024;
      v31 = a3;
      _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_ERROR, "%s : %i : length of : longTermSecret:%u; seed:%u; desiredPasscode:%u", buf, 0x24u);
    }

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

id kmlUtilGenerateAccountInfoHash(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = [MEMORY[0x277CBEB28] data];
    [v5 appendData:v3];
    [v5 appendData:v4];
    v6 = kmlUtilSHA256(v5);
  }

  else
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 136315906;
      v11 = "NSData *kmlUtilGenerateAccountInfoHash(NSData *__strong, NSData *__strong)";
      v12 = 1024;
      v13 = 341;
      v14 = 2048;
      v15 = [v3 length];
      v16 = 2048;
      v17 = [v4 length];
      _os_log_impl(&dword_248BF3000, v7, OS_LOG_TYPE_INFO, "%s : %i : anonymizedDsid.length = %lu, readerIdentifier.length = %lu", &v10, 0x26u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

id kmlUtilGetMockInstanceCAData()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB28] data];
  v1 = [MEMORY[0x277CBEB18] array];
  v2 = [@"ECIES_v1" dataUsingEncoding:4];
  v3 = [KmlTlv TLVWithTag:218 value:v2];
  [v1 addObject:v3];

  v4 = kmlUtilRandomDataWithSize(0x41uLL);
  v5 = [KmlTlv TLVWithTag:69 value:v4];
  [v1 addObject:v5];

  v6 = kmlUtilRandomDataWithSize(0x20uLL);
  v7 = [KmlTlv TLVWithTag:70 value:v6];
  [v1 addObject:v7];

  v8 = kmlUtilRandomDataWithSize(0x80uLL);
  v9 = [KmlTlv TLVWithTag:74 value:v8];
  [v1 addObject:v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v1;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v20 + 1) + 8 * i) asData];
        [v0 appendData:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [KmlTlv TLVWithTag:32546 value:v0];
  v17 = [v16 asData];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

NSObject *kmlUtilDecodeJson(void *a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (![v7 length])
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
      v52 = 1024;
      v53 = 408;
      _os_log_impl(&dword_248BF3000, v10, OS_LOG_TYPE_INFO, "%s : %i : json data is nil", buf, 0x12u);
    }

    v16 = 0;
    goto LABEL_55;
  }

  v10 = [MEMORY[0x277CBEB38] dictionary];
  v48 = 0;
  v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v48];
  v12 = v48;
  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
    v52 = 1024;
    v53 = 418;
    v54 = 2112;
    v55 = v12;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : json serialization error : %@", buf, 0x1Cu);
  }

  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
    v52 = 1024;
    v53 = 419;
    v54 = 2112;
    v55 = v11;
    _os_log_impl(&dword_248BF3000, v14, OS_LOG_TYPE_DEBUG, "%s : %i : jsonObject : %@", buf, 0x1Cu);
  }

  if (!v12 && v11)
  {
    if ([v9 length])
    {
      v15 = [v11 objectForKey:v9];
      if (!v15)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v15 = v11;
    }

    if (![v15 count])
    {
LABEL_50:
      v35 = KmlLogger();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
        v52 = 1024;
        v53 = 435;
        v54 = 2112;
        v55 = v9;
        _os_log_impl(&dword_248BF3000, v35, OS_LOG_TYPE_INFO, "%s : %i : Missing target dictionary with keyName : %@", buf, 0x1Cu);
      }

      goto LABEL_53;
    }

    v38 = v11;
    v43 = v10;
    v39 = v9;
    v40 = v7;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v18 = [v8 allKeys];
    v19 = [v18 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (!v19)
    {
      goto LABEL_49;
    }

    v20 = v19;
    v21 = 0x277CCA000uLL;
    v22 = *v45;
    v41 = v8;
    v42 = v18;
LABEL_21:
    v23 = 0;
    while (1)
    {
      if (*v45 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v44 + 1) + 8 * v23);
      v25 = [v15 objectForKey:v24];
      v26 = *(v21 + 3240);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = KmlLogger();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
          v52 = 1024;
          v53 = 442;
          v54 = 2112;
          v55 = v24;
          _os_log_impl(&dword_248BF3000, v27, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since it has non string value in json", buf, 0x1Cu);
        }

        goto LABEL_47;
      }

      v27 = [v8 objectForKeyedSubscript:v24];
      v28 = *(v21 + 3240);
      if (v27 == objc_opt_class())
      {
        [v43 setObject:v25 forKeyedSubscript:v24];
      }

      else
      {
        if (v27 == objc_opt_class())
        {
          v30 = objc_alloc_init(MEMORY[0x277CCABB8]);
          v31 = [v30 numberFromString:v25];
          if (v31)
          {
            [v43 setObject:v31 forKeyedSubscript:v24];
          }

          else
          {
            v33 = KmlLogger();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
              v52 = 1024;
              v53 = 458;
              v54 = 2112;
              v55 = v24;
              _os_log_impl(&dword_248BF3000, v33, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since value is nil", buf, 0x1Cu);
            }

            v8 = v41;
          }

          v18 = v42;
        }

        else
        {
          if (v27 == objc_opt_class())
          {
            v32 = kmlUtilDataForHexString(v25);
            if ([v32 length])
            {
              [v43 setObject:v32 forKeyedSubscript:v24];
            }

            else
            {
              v34 = KmlLogger();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
                v52 = 1024;
                v53 = 468;
                v54 = 2112;
                v55 = v24;
                _os_log_impl(&dword_248BF3000, v34, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since value is nil", buf, 0x1Cu);
              }

              v21 = 0x277CCA000;
            }

            v18 = v42;
            goto LABEL_47;
          }

          v29 = KmlLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v51 = "NSDictionary *kmlUtilDecodeJson(NSData *__strong, NSDictionary *__strong, NSString *__strong, NSError *__autoreleasing *)";
            v52 = 1024;
            v53 = 472;
            v54 = 2112;
            v55 = v24;
            _os_log_impl(&dword_248BF3000, v29, OS_LOG_TYPE_INFO, "%s : %i : Skip %@, since it is expected to have value of unsupported class", buf, 0x1Cu);
          }
        }

        v21 = 0x277CCA000;
      }

LABEL_47:

      if (v20 == ++v23)
      {
        v20 = [v18 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (!v20)
        {
LABEL_49:

          v10 = v43;
          v16 = v43;
          v9 = v39;
          v7 = v40;
          v11 = v38;
          v12 = 0;
          goto LABEL_54;
        }

        goto LABEL_21;
      }
    }
  }

  if (a4)
  {
    v17 = v12;
    v15 = 0;
    v16 = 0;
    *a4 = v12;
    goto LABEL_54;
  }

  v15 = 0;
LABEL_53:
  v16 = 0;
LABEL_54:

LABEL_55:
  v36 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t kmlUtilAddUniqueTagToSet(void *a1, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "_Bool kmlUtilAddUniqueTagToSet(NSMutableSet *__strong, uint16_t)";
      v12 = 1024;
      v13 = 481;
      v14 = 1024;
      v15 = a2;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_ERROR, "%s : %i : Received duplicated tag: 0x%02X", &v10, 0x18u);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v3 addObject:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 ^ 1u;
}

id KmlLogger()
{
  if (KmlLogger_onceToken != -1)
  {
    KmlLogger_cold_1();
  }

  v1 = KmlLogger__logger;

  return v1;
}

uint64_t __KmlLogger_block_invoke()
{
  KmlLogger__logger = os_log_create("com.apple.sesd.kml", "GeneralLogging");

  return MEMORY[0x2821F96F8]();
}

uint64_t KmlLogIsInternalBuild()
{
  if (KmlLogIsInternalBuild_onceToken != -1)
  {
    KmlLogIsInternalBuild_cold_1();
  }

  return KmlLogIsInternalBuild_internalBuild;
}

uint64_t __KmlLogIsInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  KmlLogIsInternalBuild_internalBuild = result;
  return result;
}

id KmlSignpostLogger()
{
  if (KmlSignpostLogger_onceToken != -1)
  {
    KmlSignpostLogger_cold_1();
  }

  v1 = KmlSignpostLogger__signpostLogger;

  return v1;
}

uint64_t __KmlSignpostLogger_block_invoke()
{
  KmlSignpostLogger__signpostLogger = os_log_create("com.apple.sesd.kml", "SignpostLogging");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x12u);
}

uint64_t cccErrorCodeToKmlErrorCode(int a1)
{
  v1 = &byte_248C29D6C;
  v2 = 4;
  while (*v1 != a1)
  {
    v1 += 8;
    if (!--v2)
    {
      return 105;
    }
  }

  return *(v1 - 1);
}

uint64_t kmlErrorCodeToCCCErrorCode(int a1)
{
  v1 = &byte_248C29D6C;
  v2 = 4;
  while (*(v1 - 1) != a1)
  {
    v1 += 8;
    if (!--v2)
    {
      return 255;
    }
  }

  return *v1;
}

const char *cccErrorString(int a1)
{
  v2 = &off_278F701C0;
  v3 = 13;
  result = "Unknown Error";
  while (*(v2 - 8) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return [v1 appendData:a1];
}

__n128 OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  *(v19 - 144) = a19.n128_u32[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return [v1 appendData:a1];
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return [v1 appendData:a1];
}

uint64_t OUTLINED_FUNCTION_7(uint64_t result)
{
  *(v2 - 120) = 2112;
  *(v1 + 26) = result;
  return result;
}

BOOL OUTLINED_FUNCTION_11(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_248C020E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C02E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C0355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C03EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_248C04308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0488C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C04E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0539C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C05D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_248C06488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C06AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C07090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C07668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C07C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C080DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C08FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C09708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C09C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0A1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C0A7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C0AE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C0B480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C0BA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C0BFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C0C538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C0CAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
}

const char *DAErrorString(uint64_t a1)
{
  if (!a1)
  {
    return "Success";
  }

  v2 = &qword_278F70450;
  v3 = 65;
  result = "Unknown Error";
  while (--v3)
  {
    v5 = v2 + 2;
    v6 = *v2;
    v2 += 2;
    if (v6 == a1)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

uint64_t kmlErrorCodeToDAErrorCode(int a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = &dword_248C29DA0;
  v3 = 87;
  result = 213;
  while (--v3)
  {
    v5 = v2 + 4;
    v6 = *v2;
    v2 += 4;
    if (v6 == a1)
    {
      return *(v5 - 1);
    }
  }

  return result;
}

id kmlErrorToDAError(void *a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    v4 = [v3 isEqual:@"DigitalAccessError"];

    if (v4)
    {
      v5 = v2;
      goto LABEL_27;
    }

    v6 = [v2 domain];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    if (([v6 isEqual:v7] & 1) == 0)
    {
      v8 = [v2 domain];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      if (([v8 isEqual:v9] & 1) == 0)
      {
        v18 = [v2 domain];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.sesd.kml"];
        v20 = [v18 isEqual:v19];

        if ((v20 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }
    }

LABEL_9:
    v10 = [v2 code];
    if (!v10)
    {
      v15 = 0;
      v16 = MEMORY[0x277CCACA8];
LABEL_16:
      v17 = "Success";
      goto LABEL_23;
    }

    v11 = &dword_248C29DA0;
    v12 = 87;
    while (--v12)
    {
      v13 = v11 + 4;
      v14 = *v11;
      v11 += 4;
      if (v14 == v10)
      {
        v15 = *(v13 - 1);
        v16 = MEMORY[0x277CCACA8];
        if (v15)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }
    }

LABEL_18:
    v16 = MEMORY[0x277CCACA8];
    v15 = 213;
LABEL_19:
    v21 = &qword_278F70450;
    v22 = 65;
    v17 = "Unknown Error";
    while (--v22)
    {
      v23 = v21 + 2;
      v24 = *v21;
      v21 += 2;
      if (v24 == v15)
      {
        v17 = *(v23 - 1);
        break;
      }
    }

LABEL_23:
    v25 = [v16 stringWithUTF8String:v17];
    v26 = [v2 localizedFailureReason];
    if (v26)
    {
      v27 = [v2 localizedFailureReason];
    }

    else
    {
      v27 = &stru_285B97268;
    }

    v28 = *MEMORY[0x277CCA470];
    v32[0] = *MEMORY[0x277CCA450];
    v32[1] = v28;
    v33[0] = v25;
    v33[1] = v27;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DigitalAccessError" code:v15 userInfo:v29];

    goto LABEL_27;
  }

  v5 = 0;
LABEL_27:

  v30 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_248C0F00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C0F5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C0F7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *DAKeyTransportTypeAsString(uint64_t a1)
{
  v1 = @"Bluetooth";
  if (a1 == 1)
  {
    v1 = @"NearField";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Unknown";
  }
}

void sub_248C1171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C121E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v20);
  _Unwind_Resume(a1);
}

void sub_248C124E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C1296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C12DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void DAManagerSetMachServiceName(void *a1)
{
  if (a1)
  {
    DAManagerSetMachServiceName_cold_1(a1);
  }
}

BOOL OUTLINED_FUNCTION_2_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void sub_248C18308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248C18968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C18F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C19BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_248C1A3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C1A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1B088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C1B628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C1BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1C140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1C6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1CE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C1D488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C1DD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_248C1E3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1E9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1F694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C1FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C20158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C206CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C20CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C21334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C21978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C21F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C224B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248C22A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_248C22FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0x1Cu);
}

void sub_248C26070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void DAManagerSetMachServiceName_cold_1(void *a1)
{
  v1 = a1;
  v2 = +[DAManager sharedManager];
  [(DAManager *)v2 setServiceName:v1];
}

void sub_248C26DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_248C2701C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}