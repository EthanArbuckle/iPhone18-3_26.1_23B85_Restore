void handleNotification(int a1, void *a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"com.apple.coreaccessories.AcctoolTestGetTime", 0))
  {
    if (CFStringCompare(theString1, @"com.apple.coreaccessories.AcctoolTestSendTime", 0))
    {
      return;
    }

    v5 = a2;
    v6 = [v5 daemonCore];
    v7 = [v6 workloop];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __handleNotification_block_invoke_5;
    v13[3] = &unk_C510;
    v8 = &v14;
    v14 = v5;
    v9 = v5;
    v10 = v13;
  }

  else
  {
    v11 = a2;
    v6 = [v11 daemonCore];
    v7 = [v6 workloop];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __handleNotification_block_invoke;
    block[3] = &unk_C510;
    v8 = &v16;
    v16 = v11;
    v12 = v11;
    v10 = block;
  }

  dispatch_async(v7, v10);
}

id __handleNotification_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Acctool requested a gettime", v3, 2u);
  }

  return [*(a1 + 32) _getTimeFromAccessory];
}

void __handleNotification_block_invoke_5(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Acctool requested a sendtime", v3, 2u);
  }

  v2 = [*(a1 + 32) daemonCore];
  [v2 testAndApplySystemTime];
}

void handleServerArrivedNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 daemonCore];
  v4 = [v3 workloop];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __handleServerArrivedNotification_block_invoke;
  block[3] = &unk_C510;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, block);
}

id __handleServerArrivedNotification_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Server arrived notification received. Attempting to connect...", v4, 2u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = [*(a1 + 32) _connectToServer];
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "returning from connectToSErver: %d", v4, 8u);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4[0]) = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sync time with accessory", v4, 2u);
  }

  return [*(a1 + 32) _getTimeFromAccessory];
}

void sub_19D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CFStringRef CFCreateUUIDString()
{
  v0 = CFUUIDCreate(kCFAllocatorDefault);
  v1 = CFUUIDCreateString(kCFAllocatorDefault, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CFStringRef CFArrayCreateRawValuesString(const __CFArray *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  v5.length = CFArrayGetCount(a1);
  if (a2)
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  v5.location = 0;
  CFArrayApplyFunction(a1, v5, v6, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFSetCreateRawValuesString(const __CFSet *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  if (a2)
  {
    v5 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v5 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  CFSetApplyFunction(a1, v5, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFDictCreateRawKeyValueString(const __CFDictionary *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  if (a2)
  {
    v5 = _CFDictPrintRawKeyValueApplierFunctionHex;
  }

  else
  {
    v5 = _CFDictPrintRawKeyValueApplierFunctionDecimal;
  }

  CFDictionaryApplyFunction(a1, v5, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

const __CFString *CFStringCreateFromCFData(const __CFData *a1, const __CFString *a2)
{
  if (!a1)
  {
    return &stru_C880;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Length >= 1)
  {
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, a2, v7);
      --Length;
    }

    while (Length);
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFStringCreateFromFormat(uint64_t a1, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, a2, a1);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFSetRef CFDictionaryGetKeys(const __CFDictionary *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2 ? &kCFTypeSetCallBacks : 0;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, v3);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  CFDictionaryApplyFunction(a1, CFDictionaryApplierFunction_addKeyToMutableSet, Mutable);
  Copy = CFSetCreateCopy(kCFAllocatorDefault, v5);
  CFRelease(v5);
  return Copy;
}

void CFDictionaryApplierFunction_addKeyToMutableSet(void *value, int a2, CFMutableSetRef theSet)
{
  if (value)
  {
    if (theSet)
    {
      CFSetAddValue(theSet, value);
    }
  }
}

char *createCStringFromCFString(const __CFString *a1, CFStringEncoding a2)
{
  bufferSize = 0;
  if (!a1)
  {
    return 0;
  }

  v9.length = CFStringGetLength(a1);
  v9.location = 0;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, 0, 0, &bufferSize);
  v4 = malloc_type_malloc(++bufferSize, 0xAE6E017BuLL);
  CString = CFStringGetCString(a1, v4, bufferSize, a2);
  if (v4)
  {
    v6 = CString == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v4);
    return 0;
  }

  return v4;
}

void CFDictionaryApplierFunction_addValueToMutableDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (theDict)
    {
      CFDictionaryAddValue(theDict, key, value);
    }
  }
}

void CFDictionaryApplierFunction_setValueInMutableDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void executeOnMainThreadSync(uint64_t a1)
{
  if (pthread_main_np())
  {
    v2 = *(a1 + 16);

    v2(a1);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __executeOnMainThreadSync_block_invoke;
    block[3] = &unk_C618;
    block[4] = a1;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

void executeOnMainThreadAsync(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __executeOnMainThreadAsync_block_invoke;
  block[3] = &unk_C640;
  block[4] = a1;
  dispatch_async(&_dispatch_main_q, block);
}

unint64_t sntp_timestamp_gettime()
{
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  if (clock_gettime(_CLOCK_REALTIME, &v3))
  {
    sntp_timestamp_gettime_cold_1();
  }

  v3.tv_sec += 2208988800;
  v0 = sntp_datestamp_from_timespec(v3.tv_sec);
  return sntp_timestamp_from_datestamp(v0, v1);
}

double create_sntp_request_payload@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = 35;
  *(a2 + 32) = 0;
  *(a2 + 40) = a1;
  *(a2 + 24) = a1;
  return result;
}

uint64_t create_sntp_time_payload@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = 35;
  *(a2 + 32) = 0;
  *(a2 + 40) = a1;
  *(a2 + 24) = a1;
  sntp_datestamp_from_double(a3);
  v6 = sntp_timestamp_from_datestamp(v4, v5);
  result = sntp_timestamp_to_shortstamp(v6);
  *(a2 + 8) = result;
  *(a2 + 12) = 1;
  return result;
}

id convertNSDataToNSString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v3 bytes];
    v6 = objc_alloc_init(NSMutableString);
    if ([v3 length])
    {
      v7 = 0;
      do
      {
        [v6 appendFormat:v4, v5[v7++]];
      }

      while (v7 < [v3 length]);
    }

    v8 = [NSString stringWithString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id trimBidirectionalUnicodeCharacters(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v3 = [v1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

id removeBidirectionalUnicodeCharacters(void *a1)
{
  v1 = a1;
  v2 = [NSCharacterSet characterSetWithCharactersInString:@"\u202A\u202B\u202C\u202D"];
  v3 = [v1 componentsSeparatedByCharactersInSet:v2];

  v4 = [v3 componentsJoinedByString:&stru_C880];

  return v4;
}

id convertNSStringToNSData(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = +[NSCharacterSet hexadecimalCharacterSet];
    v3 = [v2 invertedSet];
    v4 = [v1 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 componentsJoinedByString:&stru_C880];

    v6 = [v5 UTF8String];
    v7 = strlen(v6) >> 1;
    v8 = malloc_type_malloc(v7, 0x5E84AA4CuLL);
    if (v6 && [v5 length] >= 2)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = 0;
        v23 = -86;
        v22 = -86;
        v12 = &v23;
        v13 = 1;
        do
        {
          v14 = v13;
          v15 = v6[2 * v10 + v11];
          v16 = v15 - 48;
          v17 = v15 - 65;
          if ((v15 - 97) >= 6)
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - 87;
          }

          v19 = v15 - 55;
          if (v17 > 5)
          {
            v19 = v18;
          }

          if (v16 < 0xA)
          {
            v19 = v16;
          }

          *v12 = v19;
          v12 = &v22;
          v11 = 1;
          v13 = 0;
        }

        while ((v14 & 1) != 0);
        v8[v9] = v22 | (16 * v23);
        v9 = (v10 + 1);
        v20 = [v5 length];
        v10 = v9;
      }

      while (v9 < v20 >> 1);
    }

    v1 = [NSData dataWithBytes:v8 length:v7];
    if (v8)
    {
      free(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v1;
}

uint64_t classImplementsMethodsInProtocol(void *a1, void *a2, BOOL a3, BOOL a4, void *a5)
{
  v9 = a2;
  v10 = +[NSMutableSet set];
  outCount = 0;
  v11 = protocol_copyMethodDescriptionList(v9, a3, a4, &outCount);
  v12 = v11;
  if (outCount)
  {
    v13 = 0;
    p_name = &v11->name;
    do
    {
      if (([a1 instancesRespondToSelector:*p_name] & 1) == 0)
      {
        v15 = NSStringFromSelector(*p_name);
        [v10 addObject:v15];
      }

      ++v13;
      p_name += 2;
    }

    while (v13 < outCount);
  }

  free(v12);
  if (outCount && [v10 count])
  {
    v16 = 0;
    if (!a5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = 1;
  if (a5)
  {
LABEL_11:
    *a5 = [NSSet setWithSet:v10];
  }

LABEL_12:

  return v16;
}

uint64_t isNSObjectNull(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  v2 = +[NSNull null];
  v3 = [v1 isEqual:v2];

  return v3;
}

id NSObjectIfNotNull(void *a1)
{
  v1 = a1;
  if (isNSObjectNull(v1))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

id isNSObjectEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return &dword_0 + 1;
  }
}

id castNSObjectToType(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id readJSONFile(uint64_t a1)
{
  if (a1)
  {
    v1 = [NSData dataWithContentsOfFile:a1];
    if (v1)
    {
      v5 = 0;
      v2 = [NSJSONSerialization JSONObjectWithData:v1 options:0 error:&v5];
      v3 = v2;
      if (!v5)
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

id writeJSONFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    v3 = &__NSDictionary0__struct;
  }

  if ([NSJSONSerialization isValidJSONObject:v3])
  {
    v9 = 0;
    v5 = [NSJSONSerialization dataWithJSONObject:v3 options:1 error:&v9];
    v6 = v5;
    if (v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 writeToFile:v4 atomically:1];
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

id base64EncodeArray(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) base64EncodedStringWithOptions:{0, v10}];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id base64DecodeArray(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [NSData alloc];
        v10 = [v9 initWithBase64EncodedString:v8 options:{0, v12}];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t ascii_to_hex(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = 0;
      v14 = -86;
      v13 = -86;
      v5 = &v14;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(a2 + 2 * v3 + v4);
        v9 = v8 - 48;
        v10 = v8 - 65;
        if ((v8 - 97) >= 6)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 - 87;
        }

        v12 = v8 - 55;
        if (v10 > 5)
        {
          v12 = v11;
        }

        if (v9 < 0xA)
        {
          v12 = v9;
        }

        *v5 = v12;
        v5 = &v13;
        v4 = 1;
        v6 = 0;
      }

      while ((v7 & 1) != 0);
      *(result + v3++) = v13 | (16 * v14);
    }

    while (v3 != a3 >> 1);
  }

  return result;
}

unsigned __int8 *printBytes(unsigned __int8 *result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = a2;
    if (a2)
    {
      v7 = result;
      do
      {
        v8 = *v7++;
        result = printf(a3, v8);
        --v4;
      }

      while (v4);
      if (a4)
      {

        return putchar(10);
      }
    }
  }

  return result;
}

const char *removeNewline(const char *a1)
{
  v2 = strlen(a1);
  if (v2 && a1[v2 - 1] == 10)
  {
    a1[v2 - 1] = 0;
  }

  return a1;
}

uint64_t obfuscatedPointer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = obfuscatedPointer_salt;
    if (!obfuscatedPointer_salt)
    {
      v2 = random();
      obfuscatedPointer_salt = v2;
    }

    return v1 + v2;
  }

  return result;
}

BOOL getMemoryUse(void *a1, void *a2, void *a3)
{
  v33 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  *task_info_out = v6;
  v11 = v6;
  task_info_outCnt = 93;
  v7 = task_info(mach_task_self_, 0x16u, task_info_out, &task_info_outCnt);
  if (!v7)
  {
    if (a1)
    {
      *a1 = v11;
    }

    if (a2)
    {
      *a2 = *task_info_out;
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v7 == 0;
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + v3);
      if (!v7)
      {
        v7 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v12) = v4;
          _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v6 = *(a1 + 32);
          v7 = "<Undefined>";
        }
      }

      v8 = *(v6 + v3 + 8);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v15, v4, &v16);
          v8 = "<Undefined>";
        }
      }

      v9 = os_log_create(v7, v8);
      *(*(a1 + 40) + 8 * v4) = v9;
      if (v9)
      {
        ++v5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = v7;
          v13 = 2080;
          v14 = v8;
          _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 219);
    LODWORD(v12) = v5;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v10;
}

uint64_t sntp_datestamp_subsecs_to_nsec(unint64_t a1)
{
  v1 = (a1 * 0x3B9ACA00uLL) >> 64;
  if (1000000000 * a1 < 0x8000000000000000)
  {
    return v1;
  }

  else
  {
    return (v1 + 1);
  }
}

uint64_t sntp_calc_offset(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = sntp_timestamp_to_datestamp(*(a1 + 28));
  v14 = __PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6 + __CFADD__(v8 - v4, v11) + v9, v8 - v4 + v11) - v13;
  return (__CFADD__(v14, (*(&v14 + 1) - v12) >> 63) + *(&v14 + 1) - v12) >> 1;
}

uint64_t sntp_calc_delay(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 4));
  v4 = v3;
  v5 = -v2;
  v6 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v8 = v7;
  v9 = sntp_timestamp_to_datestamp(*(a1 + 20));
  v11 = v10;
  v12 = -v9;
  v13 = sntp_timestamp_to_datestamp(*(a1 + 28));
  return v13 + ((__PAIR128__(v5 - (v4 != 0) + __CFADD__(-v4, v8) + v6, v8 - v4) - v11 + __PAIR128__(v12, v14)) >> 64);
}

uint64_t sntp_calc_mean(uint64_t a1)
{
  v2 = sntp_timestamp_to_datestamp(*(a1 + 12));
  v4 = v3;
  v5 = sntp_timestamp_to_datestamp(*(a1 + 20));
  if (__CFADD__(v4, v6))
  {
    v7 = v2 + 1;
  }

  else
  {
    v7 = v2;
  }

  return ((__PAIR128__(v7, v4 + v6) + __PAIR128__(v5, (v2 + __CFADD__(v4, v6) + v5) >> 63)) >> 64) >> 1;
}

uint64_t sntp_calc_error(uint64_t a1)
{
  v2 = sntp_timestamp_from_shortstamp(*(a1 + 40));
  v3 = sntp_timestamp_to_datestamp(v2);
  v5 = v4;
  v6 = sntp_timestamp_from_shortstamp(*(a1 + 44));
  v7 = sntp_timestamp_to_datestamp(v6);
  if (__CFADD__(v5, v3 >> 63))
  {
    v9 = v3 + 1;
  }

  else
  {
    v9 = v3;
  }

  *(&v10 + 1) = v9;
  *&v10 = v5 + (v3 >> 63);
  return ((v10 >> 1) + __PAIR128__(v7, v8)) >> 64;
}

unint64_t sntp_clock_select(unint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = 0;
  v4 = a1 + 80 * a2;
  v5 = a1;
  do
  {
    if (!*v5 && *(v5 + 37))
    {
      ++v3;
    }

    v5 += 80;
  }

  while (v5 < v4);
  result = 0;
  v7 = 0;
  v8 = 0;
  v31 = v3 >> 1;
  do
  {
    if (!*v2 && *(v2 + 37))
    {
      v32 = v8;
      v33 = v7;
      v34 = result;
      v9 = sntp_calc_delay(v2);
      v37 = v10;
      v11 = (v2 + 80);
      if (v2 + 80 >= v4)
      {
        v36 = 1;
        v35 = v2;
      }

      else
      {
        v36 = 1;
        v35 = v2;
        do
        {
          if (!*v11)
          {
            v12 = sntp_calc_offset(v2);
            v14 = v13;
            v15 = sntp_calc_offset(v11);
            v17 = v16;
            v18 = sntp_calc_delay(v2);
            v20 = v19;
            v21 = sntp_calc_delay(v11);
            if ((__PAIR128__(v18, v20) + __PAIR128__(v12, v14)) >= (__PAIR128__(v15, v17) - __PAIR128__(v21, v22)) && (__PAIR128__(v21, v22) + __PAIR128__(v15, v17)) >= (__PAIR128__(v12, v14) - __PAIR128__(v18, v20)))
            {
              ++v36;
              v23 = sntp_calc_delay(v11);
              v25 = v37;
              v26 = v35;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v26 = v11;
              }

              v35 = v26;
              if (__PAIR128__(v23, v24) < __PAIR128__(v9, v37))
              {
                v9 = v23;
                v25 = v24;
              }

              v37 = v25;
            }
          }

          v11 += 20;
        }

        while (v11 < v4);
      }

      v8 = v32;
      v7 = v33;
      v27 = v37;
      result = v34;
      v28 = v35;
      v29 = __PAIR128__(v9, v37) < __PAIR128__(v32, v33) || v34 == 0;
      if (v29)
      {
        v30 = v9;
      }

      else
      {
        v30 = v32;
      }

      if (!v29)
      {
        v27 = v33;
        v28 = v34;
      }

      if (v36 > v31)
      {
        v7 = v27;
        v8 = v30;
        result = v28;
      }
    }

    v2 += 80;
  }

  while (v2 < v4);
  return result;
}

unint64_t sntp_packet_hton@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_hton(&v5, a2);
  *(a2 + 24) = sntp_timestamp_hton(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_hton(*(a1 + 4));
  result = sntp_timestamp_hton(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_packet_ntoh@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *a1;
  v6 = *(a1 + 2);
  sntp_header_ntoh(&v5, a2);
  *(a2 + 24) = sntp_timestamp_ntoh(*(a1 + 3));
  *(a2 + 32) = sntp_timestamp_ntoh(*(a1 + 4));
  result = sntp_timestamp_ntoh(*(a1 + 5));
  *(a2 + 40) = result;
  return result;
}

unint64_t sntp_header_hton@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_hton(v4);
  v6 = sntp_shortstamp_hton(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_hton(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

unint64_t sntp_header_ntoh@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_ntoh(v4);
  v6 = sntp_shortstamp_ntoh(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_ntoh(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

void *sntp_header_mmap(const char *a1, uint64_t a2, int a3)
{
  v6 = open(a1, 2);
  if (v6 < 0)
  {
    if (*__error() != 2 || (v8 = umask(0), v7 = open(a1, 514, 436), umask(v8), v7 < 0))
    {
      warn("open");
      return 0;
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 12);
    v11 = *(a2 + 16);
    v12 = *(a2 + 4);
    __buf[0] = *a2;
    __buf[1] = sntp_shortstamp_hton(v12);
    __buf[2] = sntp_shortstamp_hton(v9);
    __buf[3] = bswap32(v10);
    v17 = sntp_timestamp_hton(v11);
    if (write(v7, __buf, 0x18uLL) != 24)
    {
      warn("write");
      return 0;
    }
  }

  else
  {
    v7 = v6;
    if (ftruncate(v6, 24))
    {
      warn("ftruncate");
      return 0;
    }
  }

  if (a3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = mmap(0, 0x18uLL, v13, 1, v7, 0);
  if (v14 == -1)
  {
    warn("mmap");
    v14 = 0;
  }

  if (close(v7))
  {
    warn("close");
  }

  return v14;
}

void sntp_header_unmap(void *a1)
{
  if (munmap(a1, 0x18uLL))
  {

    warn("munmap");
  }
}

unint64_t sntp_server_respond@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = a3();
  *a4 = *a2;
  v9 = *(a1 + 40);
  *(a4 + 16) = *(a2 + 16);
  *(a4 + 24) = v9;
  *(a4 + 32) = sntp_timestamp_hton(v8);
  v10 = a3();
  result = sntp_timestamp_hton(v10);
  *(a4 + 40) = result;
  if (__ROR8__(v10, 32) < __ROR8__(v8, 32))
  {
    *(a4 + 1) = 0;
    *(a4 + 12) = 1398031696;
  }

  return result;
}

uint64_t sntp_server_exchange@<X0>(sockaddr *a1@<X1>, socklen_t *a2@<X2>, int a3@<W0>, __int128 *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  if (!a5)
  {
    sntp_server_exchange_cold_1();
  }

  v23 = 0uLL;
  v24 = 0uLL;
  v22 = 0uLL;
  result = recvfrom(a3, &v22, 0x30uLL, 64, a1, a2);
  if (result == 48)
  {
    if (a1 && a2)
    {
      v13 = *a2;
      sa_family = a1->sa_family;
      *(a6 + 76) = sa_family;
      if (v13 == 16 && sa_family == 2)
      {
        *(a6 + 60) = *&a1->sa_data[2];
      }

      else if (v13 == 28 && sa_family == 30)
      {
        *(a6 + 60) = *&a1->sa_data[6];
      }
    }

    v21 = 0u;
    v19[0] = v22;
    v19[1] = v23;
    v19[2] = v24;
    memset(v20, 0, sizeof(v20));
    v17 = *a4;
    v18 = *(a4 + 2);
    sntp_server_respond(v19, &v17, a5, v20);
    if (a2)
    {
      v15 = *a2;
    }

    else
    {
      v15 = 0;
    }

    if (sendto(a3, v20, 0x30uLL, 0, a1, v15) != 48)
    {
      *a6 = 5;
    }

    *(a6 + 36) = v22;
    v16 = *(&v24 + 1);
    *(a6 + 52) = v23;
    *(a6 + 4) = sntp_timestamp_ntoh(v16);
    *(a6 + 12) = sntp_timestamp_ntoh(v21);
    result = sntp_timestamp_ntoh(*(&v21 + 1));
    *(a6 + 20) = result;
  }

  else
  {
    *a6 = 7;
  }

  return result;
}

__n128 sntp_client_exchange@<Q0>(int a1@<W0>, timeval *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v19 = 0u;
  v20 = 0u;
  memset(v18, 0, sizeof(v18));
  memset(&v17, 0, sizeof(v17));
  if (__darwin_check_fd_set_overflow(a1, &v17, 0))
  {
    *(v17.fds_bits + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  LOBYTE(v15[0]) = 35;
  if (a3)
  {
    *(v18 + 4) = a3();
    *(&v16 + 1) = sntp_timestamp_hton(*(v18 + 4));
  }

  if (send(a1, v15, 0x30uLL, 0) != 48)
  {
    v9 = 5;
LABEL_17:
    LODWORD(v18[0]) = v9;
    v10 = v19;
    *(a4 + 32) = v18[2];
    *(a4 + 48) = v10;
    *(a4 + 64) = v20;
    result = v18[1];
    *a4 = v18[0];
    *(a4 + 16) = result;
    return result;
  }

  if (a2 && (a2->tv_sec || a2->tv_usec) && select(a1 + 1, &v17, 0, &v17, a2) != 1)
  {
    v9 = 6;
    goto LABEL_17;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (recv(a1, &v12, 0x30uLL, 0) != 48)
  {
    v9 = 7;
    goto LABEL_17;
  }

  if (a3)
  {
    *(&v18[1] + 12) = a3();
  }

  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  sntp_client_process_response(v11, (v18 + 4), (&v18[1] + 12), a4);
  return result;
}

unint64_t sntp_client_process_response@<X0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a2)
  {
    v8 = *a2;
    *(a4 + 4) = *a2;
    v9 = HIDWORD(v8);
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LODWORD(v9) = 0;
  LODWORD(v8) = 0;
  if (a3)
  {
LABEL_3:
    *(a4 + 28) = *a3;
  }

LABEL_4:
  v10 = *(a1 + 1);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 2);
  result = sntp_packet_ntoh(v16, v17);
  v12 = v17[1];
  *a1 = v17[0];
  *(a1 + 1) = v12;
  *(a1 + 2) = v17[2];
  *(a4 + 36) = *a1;
  *(a4 + 52) = *(a1 + 2);
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  *(a4 + 12) = v13;
  *(a4 + 20) = v14;
  if (*a1 <= 0xBFu)
  {
    if (a1[1])
    {
      if (__ROR8__(v14, 32) >= __ROR8__(v13, 32))
      {
        if (a2)
        {
          if (*(a1 + 6) != v8 || *(a1 + 7) != v9)
          {
            v15 = 10;
            goto LABEL_19;
          }

          if (a3)
          {
            result = sntp_calc_delay(a4);
            if ((result & 0x8000000000000000) != 0)
            {
              v15 = 11;
              goto LABEL_19;
            }
          }
        }

        v15 = 0;
      }

      else
      {
        v15 = 12;
      }
    }

    else
    {
      v15 = 8;
    }
  }

  else
  {
    v15 = 9;
  }

LABEL_19:
  *a4 = v15;
  return result;
}

void sntp_client_unicast(const char *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, timeval *a4@<X3>, uint64_t (*a5)(void)@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  snprintf(__str, 6uLL, "%u", a3);
  v28 = 0;
  if (getaddrinfo(a1, __str, 0, &v28))
  {
    *a7 = 1;
    return;
  }

  if (!v28)
  {
    sntp_client_unicast_cold_1();
  }

  if (a2)
  {
    v13 = 0;
    v14 = v28;
    while (1)
    {
      v14 = v14->ai_next;
      if (!v14)
      {
        break;
      }

      if (++v13 >= a2)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = v28;
LABEL_10:
  ai_addr = v14->ai_addr;
  ai_addrlen = v14->ai_addrlen;
  ai_family = v14->ai_family;
  sa_family = ai_addr->sa_family;
  *(a7 + 76) = sa_family;
  if (ai_addrlen == 16 && sa_family == 2)
  {
    *(a7 + 60) = *&ai_addr->sa_data[2];
  }

  else if (ai_addrlen == 28 && sa_family == 30)
  {
    *(a7 + 60) = *&ai_addr->sa_data[6];
  }

  v21 = socket(ai_family, 2, 17);
  if (v21)
  {
    v22 = v21;
    if (!a6)
    {
      goto LABEL_29;
    }

    v30 = 0;
    v31 = 0;
    memset(v27, 0, 28);
    if (ai_family == 2)
    {
      v30 = 2063598080;
      v31 = 0;
      v23 = &v30;
      v24 = 16;
    }

    else
    {
      memset(&v27[0].sa_data[2], 0, 24);
      *&v27[0].sa_data[6] = in6addr_any;
      *&v27[0].sa_len = 2063605276;
      v23 = v27;
      v24 = 28;
    }

    if (bind(v21, v23, v24))
    {
      v25 = 3;
    }

    else
    {
LABEL_29:
      if (!connect(v22, ai_addr, ai_addrlen))
      {
        sntp_client_exchange(v22, a4, a5, a7);
        v26 = ai_addr->sa_family;
        *(a7 + 76) = v26;
        if (ai_addrlen == 16 && v26 == 2)
        {
          *(a7 + 60) = *&ai_addr->sa_data[2];
        }

        else if (ai_addrlen == 28 && v26 == 30)
        {
          *(a7 + 60) = *&ai_addr->sa_data[6];
        }

        goto LABEL_32;
      }

      v25 = 4;
    }

    *a7 = v25;
LABEL_32:
    close(v22);
    goto LABEL_33;
  }

  *a7 = 2;
LABEL_33:
  freeaddrinfo(v28);
}

void sntp_timestamp_gettime_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

char *createHexString(uint64_t a1, unint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
        v6 = (2 * a2) | 1;
LABEL_10:
        v8 = malloc_type_malloc(v6, 0x100004077774924uLL);
        if (v8)
        {
          v9 = 0;
          v10 = v8;
          v19 = v8;
          v11 = v8;
          v12 = v6;
          while (a3)
          {
            v13 = *(a1 + v9);
            if (v9 >= a2 - 1)
            {
              v18 = *(a1 + v9);
              v15 = v11;
              v16 = v12;
              goto LABEL_17;
            }

            v17 = *(a1 + v9);
            snprintf(v11, v12, "%02X ");
LABEL_18:
            ++v9;
            v12 -= 3;
            v11 += 3;
            v10 += 2;
            v6 -= 2;
            if (a2 == v9)
            {
              return v19;
            }
          }

          v14 = *(a1 + v9);
          v15 = v10;
          v16 = v6;
LABEL_17:
          snprintf(v15, v16, "%02X");
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (is_mul_ok(a2, 3uLL))
      {
        v6 = 3 * a2;
        goto LABEL_10;
      }
    }

    do
    {
LABEL_21:
      result = malloc_type_malloc(0xEuLL, 0x100004077774924uLL);
    }

    while (!result);
    strcpy(result, "<print error>");
    return result;
  }

  result = malloc_type_malloc(7uLL, 0x100004077774924uLL);
  if (result)
  {
    strcpy(result, "(null)");
  }

  return result;
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}