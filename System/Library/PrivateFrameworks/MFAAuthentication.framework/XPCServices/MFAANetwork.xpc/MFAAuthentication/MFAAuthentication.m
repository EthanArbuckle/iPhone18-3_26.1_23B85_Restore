int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
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
  v2 = "@0:8";
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
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
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
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = "@16@0:8" + 3;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 117);
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v10;
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

void init_logging()
{
  init_logging_modules(&_gLogObjects, 5, _kLoggingModuleEntries);

  init_logging_signposts();
}

const __CFString *errorDescription(void *a1, unint64_t a2)
{
  v3 = a1;
  if (![v3 isEqualToString:@"MFAACertificateManagerErrorDomain"] && !objc_msgSend(v3, "isEqualToString:", @"MFAATokenManagerErrorDomain"))
  {
    if (![v3 isEqualToString:@"MFAAPairingManagerErrorDomain"])
    {
      v5 = @"An unknown error has occurred.";
      goto LABEL_11;
    }

    if (a2 > 0xFFFFFFFFFFFFFFFBLL)
    {
      v4 = &off_100080600 + a2 + 4;
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_11;
  }

  if (a2 <= 0xFFFFFFFFFFFFFFF9)
  {
    goto LABEL_9;
  }

  v4 = &off_1000805D0 + a2 + 6;
LABEL_5:
  v5 = *v4;
LABEL_11:

  return v5;
}

unint64_t systemInfo_getCurrentUnixTime()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t systemInfo_getCurrentUnixTimeMS()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2 * 1000.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t systemInfo_isInternalBuild()
{
  if (systemInfo_isInternalBuild_onceToken != -1)
  {
    systemInfo_isInternalBuild_cold_1();
  }

  return systemInfo_isInternalBuild_internalBuild;
}

uint64_t systemInfo_isDeveloperBuild()
{
  if (systemInfo_isDeveloperBuild_onceToken != -1)
  {
    systemInfo_isDeveloperBuild_cold_1();
  }

  return systemInfo_isDeveloperBuild_developerBuild;
}

void __systemInfo_isDeveloperBuild_block_invoke(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    systemInfo_isDeveloperBuild_developerBuild = CFEqual(v1, @"Beta") != 0;

    CFRelease(v2);
  }

  else
  {
    systemInfo_isDeveloperBuild_developerBuild = 0;
  }
}

uint64_t systemInfo_systemSupportsPearl()
{
  if (systemInfo_systemSupportsPearl_onceToken != -1)
  {
    systemInfo_systemSupportsPearl_cold_1();
  }

  return systemInfo_systemSupportsPearl_supportsPearl;
}

uint64_t systemInfo_systemSupportsWAPI()
{
  if (systemInfo_systemSupportsWAPI_onceToken != -1)
  {
    systemInfo_systemSupportsWAPI_cold_1();
  }

  return systemInfo_systemSupportsWAPI_supportsWAPI;
}

id systemInfo_isHomePod()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"AudioAccessory"];

  return v1;
}

uint64_t systemInfo_copyRegionCode()
{
  if (systemInfo_copyRegionCode_onceToken != -1)
  {
    systemInfo_copyRegionCode_cold_1();
  }

  if (systemInfo_copyRegionCode_regionCode)
  {
    v0 = CFGetTypeID(systemInfo_copyRegionCode_regionCode);
    if (v0 == CFStringGetTypeID())
    {
      return systemInfo_copyRegionCode_regionCode;
    }
  }

  result = 0;
  systemInfo_copyRegionCode_regionCode = 0;
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

  v4 = [v3 componentsJoinedByString:&stru_100086C60];

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
    v5 = [v4 componentsJoinedByString:&stru_100086C60];

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

uint64_t isNSObjectEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
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

id logObjectForModule(int a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 8 * a1);
  }

  return v3;
}

void sub_100003A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000041D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id _splitASN1Tokens(void *a1)
{
  v1 = a1;
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _splitASN1Tokens_cold_2();
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v5 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _splitASN1Tokens_cold_4(v1);
  }

  v48 = +[NSMutableArray array];
  v7 = [v1 bytes];
  v8 = [v1 bytes];
  v47 = v1;
  v9 = [v1 length];
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v10 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v10 = &_os_log_default;
    v11 = &_os_log_default;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    _splitASN1Tokens_cold_6(v7);
  }

  v12 = &v9[v8];

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v13 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v13 = &_os_log_default;
    v14 = &_os_log_default;
  }

  v15 = (v12 - 1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    _splitASN1Tokens_cold_8((v12 - 1));
  }

  if (v7 < v15)
  {
    while (1)
    {
      v16 = gLogObjects;
      v17 = gNumLogObjects;
      if (!gLogObjects || gNumLogObjects < 3)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v54 = 134218240;
          *&v54[4] = v16;
          *&v54[12] = 1024;
          *&v54[14] = v17;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v54, 0x12u);
        }

        v19 = &_os_log_default;
        v20 = &_os_log_default;
      }

      else
      {
        v20 = *(gLogObjects + 16);
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        _splitASN1Tokens_cold_9(v55, v7);
      }

      v49[0] = v7;
      v49[1] = v12 - v7;
      memset(v54, 0, 24);
      if (DERDecodeItem(v49, v54))
      {
        break;
      }

      v21 = gLogObjects;
      v22 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v23 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v57 = v21;
          v58 = 1024;
          v59 = v22;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v24 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        _splitASN1Tokens_cold_10(v52, v53, v23);
      }

      v26 = *&v54[8];
      v25 = *&v54[16];
      v27 = gLogObjects;
      v28 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v29 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v57 = v27;
          v58 = 1024;
          v59 = v28;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v30 = &_os_log_default;
        v29 = &_os_log_default;
      }

      v31 = v26 + v25 - 1;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        _splitASN1Tokens_cold_11(v51, v31);
      }

      v32 = gLogObjects;
      v33 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v34 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v57 = v32;
          v58 = 1024;
          v59 = v33;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v35 = &_os_log_default;
        v34 = &_os_log_default;
      }

      v36 = v31 - v7 + 1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v57 = v36;
        _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "itemLength: %zu", buf, 0xCu);
      }

      v37 = [NSData dataWithBytes:v7 length:v36];
      [v48 addObject:v37];

      v38 = *&v54[8];
      v39 = *&v54[16];
      v40 = gLogObjects;
      v41 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v42 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v57 = v40;
          v58 = 1024;
          v59 = v41;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v43 = &_os_log_default;
        v42 = &_os_log_default;
      }

      v7 = (v38 + v39);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        _splitASN1Tokens_cold_9(v50, v7);
      }

      if (v7 >= v15)
      {
        goto LABEL_82;
      }
    }

    v48 = 0;
  }

LABEL_82:
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v44 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [MFAANetwork _init];
    }

    v44 = &_os_log_default;
    v45 = &_os_log_default;
  }

  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    _splitASN1Tokens_cold_14();
  }

  return v48;
}

void sub_10000E364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000EAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_11(void *a1, const char *a2)
{

  return [a1 initWithData:v2 encoding:4];
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2)
{

  return obfuscatedPointer(a2);
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_16(void *a1, const char *a2)
{

  return [a1 initWithData:v2 encoding:4];
}

void init_logging_signpost_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_signpost_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_signpost_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_signpost_modules_onceToken, block);
  }
}

void __init_logging_signpost_modules_block_invoke(uint64_t a1)
{
  v2 = "@0:8";
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
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingSignpostModuleEntry_t table)", buf, 8u);
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
          __init_logging_signpost_modules_block_invoke_cold_1(v15, v4, &v16);
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
          _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = "@16@0:8" + 3;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 117);
    LODWORD(v12) = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogSignpostObjects = *(a1 + 40);
  gNumLogSignpostObjects = v10;
}

void sub_100015C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001634C(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = NDR_record;
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = *&v35.mig_vers;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_1000165AC(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = NDR_record;
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_100016740(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = NDR_record;
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_100016934(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (&_voucher_mach_msg_set)
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_100016AB4(uint64_t a1)
{
  v1 = *(&off_100085FF0 + ((-109 * ((qword_100089928 - dword_100089AE8) ^ 0x95)) ^ byte_100076400[byte_100072150[(-109 * ((qword_100089928 - dword_100089AE8) ^ 0x95))] ^ 0x7D]) + 22);
  v2 = *(v1 - 4);
  v3 = *(&off_100085FF0 + ((-109 * ((qword_100089928 + v2) ^ 0x95)) ^ byte_10006E800[byte_1000796E0[(-109 * ((qword_100089928 + v2) ^ 0x95))] ^ 0x7D]) - 65);
  v4 = v2 - &v6 + *(v3 - 4);
  *(v1 - 4) = (665663891 * v4) ^ 0xED30A8472429C395;
  *(v3 - 4) = 665663891 * (v4 ^ 0xED30A8472429C395);
  v8 = 1383 - 210068311 * ((2 * (&v7 & 0x39E8DAB0) - &v7 + 1175921996) ^ 0xD4C11AE8);
  v7 = a1;
  LOBYTE(v3) = -109 * (*(v1 - 4) ^ 0x95 ^ *(v3 - 4));
  return (*(*(&off_100085FF0 + ((-109 * (dword_100089AE8 ^ 0x95 ^ qword_100089928)) ^ byte_10006EB00[byte_1000797E0[(-109 * (dword_100089AE8 ^ 0x95 ^ qword_100089928))] ^ 0xAA]) - 222) + (byte_10006EB0C[(byte_1000797E8[v3 - 8] ^ 0xAA) - 12] ^ v3) + 2156))(&v7);
}

uint64_t sub_100016E20(uint64_t a1)
{
  v1 = *(&off_100085FF0 + ((-109 * ((qword_100089928 + dword_100089940) ^ 0x95)) ^ byte_10006E800[byte_1000796E0[(-109 * ((qword_100089928 + dword_100089940) ^ 0x95))] ^ 0x6B]) - 199);
  v2 = *(&off_100085FF0 + (byte_10006EB00[byte_1000797E0[(-109 * ((qword_100089928 - *v1) ^ 0x95))] ^ 0xAA] ^ (-109 * ((qword_100089928 - *v1) ^ 0x95))) - 231);
  v3 = *(v2 - 4) - *v1 - &v5;
  *v1 = 665663891 * v3 + 0x12CF57B8DBD63C6BLL;
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v6[0] = (2066391179 * ((878467565 - (v6 | 0x345C59ED) + (v6 | 0xCBA3A612)) ^ 0x6484240A)) ^ 0x1E5;
  v7 = a1;
  LOBYTE(v2) = -109 * (*v1 ^ 0x95 ^ *(v2 - 4));
  (*(*(&off_100085FF0 + ((-109 * (dword_100089940 ^ 0x95 ^ qword_100089928)) ^ byte_100072050[byte_10006E900[(-109 * (dword_100089940 ^ 0x95 ^ qword_100089928))] ^ 0x7E]) - 41) + (v2 ^ byte_10006EB00[byte_1000797E0[v2] ^ 0x16]) + 2254))(v6);
  return v6[1];
}

uint64_t sub_10001719C(uint64_t a1)
{
  v1 = *(&off_100085FF0 + (byte_10006EC04[(byte_1000798E0[(-109 * ((qword_100089928 - dword_100089930) ^ 0x95))] ^ 0xE1) - 4] ^ (-109 * ((qword_100089928 - dword_100089930) ^ 0x95))) - 157);
  v2 = *(&off_100085FF0 + (byte_10006EB00[byte_1000797E0[(-109 * ((qword_100089928 - *v1) ^ 0x95))] ^ 0x8F] ^ (-109 * ((qword_100089928 - *v1) ^ 0x95))) - 5);
  v3 = *(v2 - 4) - *v1 - &v5;
  *v1 = 665663891 * v3 + 0x12CF57B8DBD63C6BLL;
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v6 = a1;
  v7 = 2080 - 1388665877 * (((&v6 | 0x87EB4F9F) + (~&v6 | 0x7814B060)) ^ 0xA462D72);
  LOBYTE(v2) = -109 * (*v1 ^ 0x95 ^ *(v2 - 4));
  return (*(*(&off_100085FF0 + ((-109 * (dword_100089930 ^ 0x95 ^ qword_100089928)) ^ byte_10006EB00[byte_1000797E0[(-109 * (dword_100089930 ^ 0x95 ^ qword_100089928))] ^ 0x15]) - 117) + (v2 ^ byte_10006EB00[byte_1000797E0[v2] ^ 0x8F]) + 2349))(&v6);
}

void sub_1000174D4(uint64_t a1)
{
  v1 = 1082434553 * (a1 ^ 0x9B47F68A);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100017628@<X0>(int a1@<W8>)
{
  v7 = v3 - 1;
  *(v6 + v7) = *(v1 + v7);
  return (*(v5 + 8 * ((2158 * (v7 == ((v4 - a1 - 1213) ^ 0x181))) ^ (v2 + v4 + 150))))();
}

uint64_t sub_10001766C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, char *a22)
{
  v26 = 2 * (v22 ^ 0x371);
  LODWORD(a19) = (v22 + 803) ^ ((&a19 ^ 0x142F9D9B) * v25);
  a20 = a17;
  a22 = &a14;
  (*(v24 + 8 * (v22 ^ 0x98C)))(&a19);
  a22 = &a18;
  a20 = a17;
  a21 = &a16;
  HIDWORD(a19) = v26 - 143681137 * (((&a19 | 0xB95E86D2) - &a19 + (&a19 & 0x46A17928)) ^ 0xD8060D02) - 519;
  (*(v24 + 8 * (v26 + 384)))(&a19);
  a20 = a17;
  a22 = &a12;
  LODWORD(a19) = (v26 - 1005) ^ ((&a19 ^ 0x142F9D9B) * v25);
  (*(v24 + 8 * (v26 ^ 0xE9C)))(&a19);
  a19 = a17;
  HIDWORD(a20) = (v26 - 1606) ^ (1388665877 * (&a19 ^ 0x8DAD62EC));
  v27 = (*(v24 + 8 * (v26 + 437)))(&a19);
  return (*(v24 + 8 * ((4027 * (a20 == (((v26 - 1978) | 0x108) ^ (v23 - 201)) + v26 - 1513)) ^ v26)))(v27);
}

uint64_t sub_1000176C4@<X0>(char a1@<W2>, int8x16_t *a2@<X4>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>, uint64_t a6)
{
  v8 = (a6 + a3);
  v9 = vaddq_s8(vsubq_s8(a2[1], vandq_s8(vaddq_s8(a2[1], a2[1]), a4)), a5);
  v8[-1] = vaddq_s8(vsubq_s8(*a2, vandq_s8(vaddq_s8(*a2, *a2), a4)), a5);
  *v8 = v9;
  return (*(v7 + 8 * ((((a1 & 0x60) == 32) * (((v6 - 1053592443) & 0x3ECC8FEE) + 919)) ^ v6)))();
}

uint64_t sub_100017738@<X0>(int a1@<W2>, int a2@<W8>)
{
  v6 = *(v4 + 48 * v2 + 36);
  v8 = v6 != a1 && v6 + 1370294288 < v5;
  return (*(v3 + 8 * ((49 * ((((a2 - 277361224) ^ v8) & 1) == 0)) ^ a2)))();
}

uint64_t sub_100017790()
{
  v2 = STACK[0x328];
  v3 = STACK[0x4F8];
  STACK[0x528] = *(v1 + 8 * (v0 - 1373));
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v1 + 8 * ((v5 * (((v0 + 131631639) & 0xF82775E8) - 1391)) ^ (((v0 + 131631639) & 0xF82775E8) - 1302))))();
}

uint64_t sub_100017880(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, int a6, int8x16_t *a7)
{
  v11 = (v10 + v7);
  v12 = vaddq_s8(vsubq_s8(v11[1], vandq_s8(vaddq_s8(v11[1], v11[1]), a4)), a1);
  *a7 = vaddq_s8(vsubq_s8(*v11, vandq_s8(vaddq_s8(*v11, *v11), a4)), a1);
  a7[1] = v12;
  return (*(v9 + 8 * (a6 + v8 + 666)))();
}

uint64_t sub_1000178E8(unsigned int a1)
{
  v7 = v1 + v4 - v2;
  v8 = *(v7 - 31);
  v9 = v5 + v4 - v2;
  *(v9 - 15) = *(v7 - 15);
  *(v9 - 31) = v8;
  return (*(v6 + 8 * ((107 * ((((v3 - 1191) | a1) ^ 0x588) + v2 != 320)) ^ v3)))();
}

uint64_t sub_100017938@<X0>(uint64_t a1@<X8>)
{
  v8 = (v5 - 838) | 0x320;
  v9 = *(v6 + 8);
  v10 = ((2 * (*(v9 + ((&_mh_execute_header + (a1 << 32)) >> 30)) ^ v1)) << ~((v8 + 94) ^ v4)) | ((v9[a1] ^ (v1 + v8 + 653 - 1589)) >> ((v8 + 94) ^ v4));
  *v9 = v10 + v1 - (v2 & (2 * v10));
  return (*(v7 + 8 * ((102 * (v3 != 1)) ^ v8)))(&_mh_execute_header);
}

uint64_t sub_1000179C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = (a11 + v13);
  *(v16 - 1) = v15;
  *v16 = v15;
  return (*(v14 + 8 * ((((v12 & 0x30) == 16) * (v11 ^ 0x5FA)) ^ v11)))();
}

uint64_t sub_100017A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, int a16)
{
  v20 = 843532609 * (((&a13 | 0x868DA39C) - &a13 + (&a13 & 0x79725C60)) ^ 0xDAC0F719);
  a13 = a11;
  a15 = v16 - ((2 * v16) & 0x15776F42) - v20 + (v19 ^ 0x8ABBBFAD);
  a16 = (v19 - 581) ^ v20;
  v21 = (*(v18 + 8 * (v19 + 295)))(&a13);
  return (*(v18 + 8 * (((a14 != v17) * ((v19 + 24) ^ 0x80C)) ^ v19)))(v21);
}

uint64_t sub_100017B9C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v11.val[1].i64[0] = (v6 + 13) & 0xF;
  v11.val[1].i64[1] = (v6 + 12) & 0xF;
  v11.val[2].i64[0] = (v6 + 11) & 0xF;
  v11.val[2].i64[1] = (v6 + 10) & 0xF;
  v11.val[3].i64[0] = (v6 + 9) & 0xF;
  v11.val[3].i64[1] = v6 & 0xF ^ 8;
  v12.val[0].i64[0] = (v6 + 7) & 0xF;
  v12.val[0].i64[1] = (v6 + 6) & 0xF;
  v12.val[1].i64[0] = (v6 + 5) & 0xF;
  v12.val[1].i64[1] = (v6 + 4) & 0xF;
  v12.val[2].i64[0] = (v6 + 3) & 0xF;
  v12.val[2].i64[1] = (v6 + 2) & 0xF;
  v12.val[3].i64[0] = (v6 + 1) & 0xF;
  v12.val[3].i64[1] = v6 & 0xF;
  v8 = vqtbl4q_s8(v12, xmmword_1000799E0).u64[0];
  v9.i64[0] = 0x7373737373737373;
  v9.i64[1] = 0x7373737373737373;
  v11.val[0].i64[0] = (a1 ^ 0x25CLL) & v7;
  v11.val[0].i64[1] = (v6 + 14) & 0xF;
  v12.val[1].i64[0] = vqtbl4q_s8(v11, xmmword_1000799E0).u64[0];
  v12.val[1].i64[1] = v8;
  v12.val[0] = vrev64q_s8(vmulq_s8(v12.val[1], v9));
  *(v6 + a2 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v4 + v11.val[0].i64[0] - 15), *(v6 + a2 - 16)), veorq_s8(*(v5 + v11.val[0].i64[0] - 15), *(v11.val[0].i64[0] + v3 - 14))), vextq_s8(v12.val[0], v12.val[0], 8uLL));
  return (*(v2 + 8 * ((1086 * ((v6 & 0x10) == 16)) ^ a1)))();
}

uint64_t sub_100017D58@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, int w6_0@<W6>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void))
{
  v17 = (((HIDWORD(a12) ^ 0x70811358) - 1887507288) ^ ((HIDWORD(a12) ^ 0x4566147) - 72769863) ^ ((HIDWORD(a12) ^ 0x781FCB6B) - 2015349611)) + 1741448759 + (((w6_0 ^ 0xB6360BD8) + 1237972008) ^ ((w6_0 ^ 0x93B20C68) + 1817047960) ^ (((v16 + 906731801) ^ 0xE0B8E7D3) + (w6_0 ^ 0x294CBEC4)));
  LODWORD(STACK[0x2C4]) = v17 ^ ((v17 ^ 0x117E91AF) - 1598317280) ^ ((v17 ^ 0x2E900BD7) - 1621817496) ^ ((v17 ^ 0x1A2B9348) - 1410424839) ^ ((v17 ^ 0x6BFFFA7F) - 633669936) ^ 0x42F24A3B;
  return sub_100045DFC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_100017EC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x520] = a63 - 1712;
  LODWORD(STACK[0x4AC]) = v64;
  v65 = *(STACK[0x2A0] + 360) > 1u;
  return (*(v63 + 8 * (((4 * ((((a1 - 1009) ^ v65) & 1) == 0)) & 0xF7 | (8 * (((a1 + 15) ^ ~v65) & 1))) ^ a1)))();
}

uint64_t sub_100017F78@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFD5ELL ^ (v4 - 865)) + v2;
  *(a1 - 7 + v6) = vadd_s8(vadd_s8(*(v1 - 7 + v6), 0xA8A8A8A8A8A8A8A8), vmvn_s8(vand_s8(vadd_s8(*(v1 - 7 + v6), *(v1 - 7 + v6)), 0x4E4E4E4E4E4E4E4ELL)));
  return (*(v5 + 8 * ((39 * ((v2 & 0x1F8) - 8 == v3)) ^ v4)))();
}

void sub_100017FE4(uint64_t a1)
{
  v1 = 1082434553 * (((a1 | 0x1AAF5C21) - a1 + (a1 & 0xE550A3DE)) ^ 0x81E8AAAB);
  v2 = **(a1 + 40) + 2048196473;
  v3 = *(a1 + 12) - v1 + 1975474529;
  v4 = v2 < 0xE2259321;
  v5 = v2 > v3;
  if (v3 < 0xE2259321 != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

void sub_10001835C(uint64_t a1, int a2)
{
  v10 = *(v7 + 8);
  v11 = (*(v10 + 4 * (v9 - 1)) ^ v3) >> v4;
  *(v10 + 4 * v6) = v11 + v3 - (v5 & (2 * v11));
  if (*(*(v7 + 8) + 4 * v6) == v3)
  {
    v12 = -613421125;
  }

  else
  {
    v12 = -613421124;
  }

  v13 = v12 + v2;
  if (*(v7 + 4) + v8 >= ((a2 - 790) ^ 0x7FFFFCE0u))
  {
    v14 = -1306604704 - v13;
  }

  else
  {
    v14 = v13;
  }

  *(v7 + 4) = v14;
}

uint64_t sub_1000184C4(uint64_t a1)
{
  v1 = 2066391179 * (a1 ^ 0xAF278218);
  v2 = *a1 + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 4) + v1;
  v5 = v4 - 2083296424 + *(v3 + 68);
  *(v3 + 68) = v5;
  v4 += 478443033;
  v6 = v4 < 0x98B10AC1;
  v7 = v5 - 1733227839 < v4;
  if (v6 != v5 > 0x674EF53E)
  {
    v7 = v6;
  }

  return (*(*(&off_100085FF0 + v2 - 340) + ((15 * v7) ^ v2) - 1))();
}

uint64_t sub_1000185DC()
{
  v0 = *(&off_100085FF0 + ((-109 * ((qword_100089928 - dword_100089938) ^ 0x95)) ^ byte_100076400[byte_100072150[(-109 * ((qword_100089928 - dword_100089938) ^ 0x95))] ^ 0x7D]) + 29);
  v1 = *(v0 - 4);
  v2 = *(&off_100085FF0 + (byte_10007205C[(byte_10006E908[(-109 * ((qword_100089928 - v1) ^ 0x95)) - 8] ^ 0xE9) - 12] ^ (-109 * ((qword_100089928 - v1) ^ 0x95))) - 141);
  v3 = *(v2 - 4) - v1 - &v7;
  *(v0 - 4) = 665663891 * (v3 + 0x12CF57B8DBD63C6BLL);
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v8[0] = (2066391179 * ((2 * (v8 & 0x118B56D8) - v8 + 1853139236) ^ 0xC1532B3C)) ^ 0x1E5;
  LOBYTE(v3) = -109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95);
  v9 = *(&off_100085FF0 + (byte_100072258[(byte_10006EA04[v3 - 4] ^ 0xA3) - 8] ^ v3) + 59);
  LOBYTE(v3) = -109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95);
  v4 = *(&off_100085FF0 + ((-109 * ((qword_100089928 + dword_100089938) ^ 0x95)) ^ byte_10006EC00[byte_1000798E0[(-109 * ((qword_100089928 + dword_100089938) ^ 0x95))] ^ 0x2B]) - 87) - 8;
  (*&v4[8 * (byte_10006EB0C[(byte_1000797E8[v3 - 8] ^ 0x15) - 12] ^ v3) + 18280])(v8);
  v8[0] = (2066391179 * (((v8 | 0xE6F360F1) - (v8 & 0xE6F360F1)) ^ 0x49D4E2E9)) ^ 0x1E5;
  v9 = *(&off_100085FF0 + (byte_10006E800[byte_1000796E0[(-109 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x95))] ^ 0x6B] ^ (-109 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x95))) - 194);
  (*&v4[8 * (byte_10006EC04[(byte_1000798E0[(-109 * (*(v0 - 4) ^ 0x95 ^ *(v2 - 4)))] ^ 0xCE) - 4] ^ (-109 * (*(v0 - 4) ^ 0x95 ^ *(v2 - 4)))) + 19368])(v8);
  v5 = 50899313 * ((~v8 & 0x9A052509 | v8 & 0x65FADAF6) ^ 0x8E2AB892);
  LOBYTE(v8[0]) = 63 - v5;
  v8[1] = 1047 - v5;
  return (*&v4[8 * ((-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95)) ^ byte_10006E800[byte_1000796E0[(-109 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x95))] ^ 0xB7]) + 17528])(v8);
}

void sub_100018A5C(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1785193651 * ((-2 - ((~a1 | 0x59E8E831) + (a1 | 0xA61717CE))) ^ 0x4A340411));
  v2 = (*a1 - 77 * ((-2 - ((~a1 | 0x31) + (a1 | 0xCE))) ^ 0x11));
  v3 = *(&off_100085FF0 + (v1 & 0x4AAA0066)) - 8;
  (*&v3[8 * v1 + 11056])(*(&off_100085FF0 + (v1 ^ 0x3FC)) - 8, sub_1000185DC);
  v4 = **(&off_100085FF0 + (v1 ^ 0x3DF));
  v6 = v1 - 210068311 * ((&v5 & 0xDA643CC1 | ~(&v5 | 0xDA643CC1)) ^ 0xB74DFC9A) + 430;
  v5 = v4;
  (*&v3[8 * v1 + 11664])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100018C5C()
{
  v2 = (v1 ^ 0xBF77FFBE) - 709035156 + ((2 * v1) & 0x37C);
  v3 = (v2 ^ 0xD489B686) & (2 * (v2 & 0x4D6)) ^ v2 & 0x4D6;
  v4 = ((2 * (v2 ^ 0xDAE92279)) ^ 0x60444D5E) & (v2 ^ 0xDAE92279) ^ (2 * (v2 ^ 0xDAE92279)) & 0xB02226AE;
  v5 = v4 ^ 0x902222A1;
  v6 = (v4 ^ 0x20020409) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xC0889ABC) & v5 ^ (4 * v5) & 0xB02226AC;
  v8 = (v7 ^ 0x800002A3) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x30222403)) ^ 0x2226AF0) & (v7 ^ 0x30222403) ^ (16 * (v7 ^ 0x30222403)) & 0xB02226A0;
  return (*(v0 + 8 * ((27 * ((v2 ^ (2 * ((((v9 ^ 0xB000040F) << 8) & 0xB0222600 ^ 0x202200AF ^ (((v9 ^ 0xB000040F) << 8) ^ 0x2226AF00) & (v9 ^ 0xB000040F)) & (((v9 ^ 0x22220F) & (v8 << 8) ^ v8) << 16) ^ (v9 ^ 0x22220F) & (v8 << 8) ^ v8))) != 1791689942)) ^ 0x407u)))();
}

uint64_t sub_100018E34@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = v63 + 1168;
  v69 = a1 + 528;
  v70 = a1 + 800;
  switch(v65)
  {
    case 32:
      LODWORD(STACK[0x2D8]) = 0;
      v71 = 19;
      break;
    case 20:
      LODWORD(STACK[0x2D8]) = 0;
      v71 = 15;
      break;
    case 16:
      LODWORD(STACK[0x2D8]) = 0;
      v71 = 18;
      break;
    default:
      LODWORD(STACK[0x2E0]) = 0;
      LODWORD(STACK[0x2E8]) = 0;
      LODWORD(STACK[0x2D8]) = 1;
      goto LABEL_9;
  }

  LODWORD(STACK[0x2E8]) = v71;
  LODWORD(STACK[0x2E0]) = 1;
LABEL_9:
  v72 = STACK[0x304];
  v73 = (LODWORD(STACK[0x304]) - 1056) | 0x11;
  v74 = LODWORD(STACK[0x304]) - 126;
  v75 = 1785193651 * ((v67 + 115191039 - 2 * ((v67 - 200) & 0x6DDADC7)) ^ 0x150141E7);
  *(v67 - 176) = &STACK[0x45C];
  *(v67 - 144) = &STACK[0x590] + a63;
  *(v67 - 136) = v69;
  *(v67 - 168) = (v72 - 422) ^ v75;
  *(v67 - 184) = (v64 ^ 0xF6BF4A5C) - v75 + ((2 * v64) & 0xED7E94B8) + 1332461056;
  *(v67 - 160) = v70;
  *(v67 - 152) = 0;
  *(v67 - 128) = v68;
  *(v67 - 192) = 0;
  v76 = (*(v66 + 8 * (v72 + 937)))(v67 - 200);
  return (*(v66 + 8 * ((126 * (*(v67 - 200) != v73 + 972359295)) ^ v74)))(v76);
}

uint64_t sub_100019068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x2D8] = (*(v75 + 8 * a72))(a73 + STACK[0x200]);
  v76 = (*(v75 + 8 * a71))();
  *v73 = v76;
  v73[1] = 1812433253 * (v76 ^ (v76 >> 30)) + 1;
  return (*(v75 + 8 * (v74 - 409)))();
}

uint64_t sub_1000190F8()
{
  v6 = v0 ^ (v4 + 52);
  *v1 = (v6 - 1611341676) ^ v10;
  v12 = v9;
  v11 = v6 + 1711267207 - (((&v11 | 0x94932B54) - &v11 + (&v11 & 0x6B6CD4A8)) ^ 0x193E49B8) * v5;
  (*(v3 + 8 * (v6 + 1711268295)))(&v11);
  v12 = v8;
  v11 = 1711267207 - (((&v11 | 0x818B4E0E) - &v11 + (&v11 & 0x7E74B1F0)) ^ 0xC262CE2) * v5 + v6;
  (*(v3 + 8 * (v6 ^ (v4 + 2665))))(&v11);
  return v2 ^ 0x39F50818u;
}

uint64_t sub_10001921C()
{
  v4 = *(v2 + 8 * (((((v1 - 544298781) & 0x20714F7F) - 262) * (v0 != 442539394)) ^ v1));
  STACK[0x228] = v3;
  return v4();
}

uint64_t sub_1000192C0()
{
  v6 = v5[1];
  *(v3 + v0) = *v5;
  *(v3 + v0 + 16) = v6;
  return (*(v4 + 8 * ((((v1 & 0x60) == 32) * (((v2 + 37895453) & 0x3DBDC357) + 740)) ^ v2)))();
}

void sub_100019444(uint64_t a1)
{
  v1 = *(a1 + 4) + 143681137 * ((-2 - ((a1 | 0xE35D4AC9) + (~a1 | 0x1CA2B536))) ^ 0x7DFA3EE6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100019594@<X0>(int a1@<W8>)
{
  v9 = v4 - 2;
  v10 = v1 + 2;
  *(v3 - 2 + v5) = (v10 ^ v6) * (v10 + 17);
  *(v2 + v9) = (v10 ^ 0xBB) * (v10 + 18);
  return (*(v8 + 8 * (((v9 == 0) * v7) ^ a1)))();
}

uint64_t sub_1000195EC@<X0>(uint64_t a1@<X8>)
{
  v9 = v3 - 5;
  v10 = (*(*(v7 + 8) + 4 * v1) ^ 0x67BC8414) + v2;
  *(*(a1 + 8) + 4 * v1) = v10 + v4 - ((v6 + v9 + 1696 - 2018) & (2 * v10));
  return (*(v5 + 8 * ((v8 > (v1 + 1)) | (4 * (v8 > (v1 + 1))) | v9)))();
}

uint64_t sub_100019654@<X0>(int a1@<W5>, int a2@<W8>)
{
  v5 = STACK[0x304];
  if (v2 <= 0x18 && (v5 = STACK[0x304], ((1 << v2) & 0x1000521) != 0))
  {
    return sub_1000196C4();
  }

  else
  {
    return (*(v4 + 8 * ((((*(v3 + 48 * a2 + 40) & 8) == ((v5 - 1414) | 0x100) - 290) * (((v5 - 1414) ^ a1) + 2157)) ^ (v5 + 215))))();
  }
}

uint64_t sub_1000196C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W8>)
{
  LODWORD(STACK[0x3F0]) = v6;
  v10 = (*(v7 + 48 * a5 + 40) & ((v5 ^ 0x1D7) - 1150)) == (((v5 - 1318) | 0x100) ^ 0x182);
  return (*(v9 + 8 * (((4 * v10) | (8 * v10)) ^ (v5 - 372))))(a1, a2, a3, a4, 1446922884, v8);
}

uint64_t sub_100019778@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x278] + a1 + 72);
  v6 = ((2 * a1) & 0xFDD3F9F8) + (a1 ^ 0x7EE9FCFF) + v1;
  *(v3 + v6) = v5 ^ 0xD3;
  *(v3 + v6 + 1) = ((v2 - 71) ^ BYTE1(v5)) - ((2 * ((v2 - 71) ^ BYTE1(v5))) & 0x4E) - 89;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0xC8) - ((v5 >> 15) & 0x4E) - 89;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0xC) - ((2 * (HIBYTE(v5) ^ 0xC)) & 0x4E) - 89;
  return (*(v4 + 8 * ((3576 * (a1 + 4 < LODWORD(STACK[0x2D4]))) ^ v2)))();
}

uint64_t sub_100019958@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18)
{
  v25 = ((a3 - 493) | 0x40) + v19 - 67;
  *(&a18 + v18) = *(v23 + v19) + (~(2 * *(v23 + v19)) | 0xB1) - 88;
  v26 = a2 + v19 + 69 < v20;
  if (v20 < v21 != v25 > a1)
  {
    v26 = v20 < v21;
  }

  return (*(v24 + 8 * ((!v26 * v22) ^ a3)))();
}

uint64_t sub_1000199D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a1 + v3 + 4) = **(a2 + 8);
  v4 = *(a2 + 4) - 640894628;
  v5 = v4 > 0x34839978;
  if (v4 < 0x34839977)
  {
    v5 = 1;
  }

  return (*(a3 + 8 * ((2847 * v5) ^ 0x3BCu)))();
}

void sub_100019A74()
{
  v4 = *(v0 + 16);
  *(*(v0 + 24) - 0x7E1AE0F446D02EFDLL) = *v1;
  *(v4 - 0x5085E76DB9DAF378) = *v2 - ((v3 - 759294019) & (2 * *v2)) - 379646449;
  *(v0 + 8) = 972359704;
}

uint64_t sub_100019B50(uint64_t a1, int a2)
{
  v7 = a2 - 1330;
  v8 = v2 + v4 + (((v6 ^ 0xCCC628C1) + 859428671) ^ ((v6 ^ 0xC4C8930D) + 993488115) ^ (((((a2 - 429555517) & 0x199A78DD) + 838579011) ^ v6) - 838579156)) - 594774721;
  v9 = v5 + 198205936;
  v10 = (v9 < 0x34D7E954) ^ (v8 < 0x34D7E954);
  v11 = v8 > v9;
  if (v10)
  {
    v11 = v8 < 0x34D7E954;
  }

  return (*(v3 + 8 * ((122 * !v11) ^ v7)))();
}

uint64_t sub_100019C28@<X0>(int a1@<W1>, int a2@<W4>, int a3@<W5>, int a4@<W6>, uint64_t a5@<X8>)
{
  v8 = (v6 | 4) + 333;
  v9 = (*(a5 + 1128) ^ a1) - (*(v5 + 1148) ^ (v8 + 70));
  return (*(v7 + 8 * (((v9 + a2 - (a3 & (2 * v9)) != a2) * a4) ^ v8)))();
}

uint64_t sub_100019CA4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x858u));

  return v3(v1);
}

uint64_t sub_100019DAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = vdupq_n_s32(0x98437BEB);
  *&STACK[0x250] = v7;
  *&STACK[0x260] = v7;
  return (*(v6 + 8 * ((3004 * (((a6 - 1513) ^ 0x174) == (a4 & 0xFFFFFFF8))) ^ (a6 - 1115))))();
}

uint64_t sub_100019DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v63 - 128) = *(v63 - 164) ^ 0xCE5920C4;
  *(v63 - 132) = *(v63 - 160) ^ 0x1978C64A;
  *(v63 - 136) = *(v63 - 168) ^ 0x8AA361C;
  *(v63 - 140) = *(v63 - 156) ^ 0xDCB3F494;
  return sub_1000395F0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10001A310@<X0>(char a1@<W1>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v58 = STACK[0x4B0];
  v59 = *(a3 + 72);
  v60 = a2 - 51323414;
  *(v58 + v60) = (HIBYTE(v59) ^ 0xC) + (a1 | ~(2 * (HIBYTE(v59) ^ 0xC))) - 88;
  *(v58 + v60 + 1) = (BYTE2(v59) ^ 0xC8) - (v56 & (v59 >> 15)) - 89;
  *(v58 + v60 + 2) = (BYTE1(v59) ^ 0xB9) - (v56 & (2 * (BYTE1(v59) ^ 0xB9))) - 89;
  *(v58 + v60 + 3) = v59 ^ 0xD3;
  return (*(v57 + 8 * ((945 * (*(a3 + 92) > 4u)) ^ a56)))();
}

uint64_t sub_10001A574@<X0>(uint64_t a1@<X8>)
{
  v7 = (v3 & 0x9C3F8373) + 50899313 * ((((2 * &v5) | 0x67D7691E) - &v5 + 1276398449) ^ 0xA7C42914) - 471;
  v5 = a1;
  v6 = v2;
  v8 = v2;
  return (*(v1 + 8 * ((v3 & 0x9C3F8373) + 1799)))(&v5);
}

uint64_t sub_10001A730()
{
  v3 = STACK[0x390];
  STACK[0x320] = *(v1 + 8 * (v0 - 1363));
  STACK[0x568] = v3;
  LODWORD(STACK[0x574]) = 1722939934;
  STACK[0x438] = v2;
  return (*(v1 + 8 * ((1978 * ((((v0 + 196) ^ ((*(v3 + 68) & 0x3Fu) - 50 < 0xFFFFFFC0)) & 1) == 0)) ^ (v0 - 429))))();
}

uint64_t sub_10001A790(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v6 = ((((v5 ^ 0x69) + 14) ^ v5 ^ ((v5 ^ 0x28) + 77) ^ ((v5 ^ 0x25) + 66)) ^ (a4 - a2 + 7 * (a4 ^ 0xED) + 30)) & 0x7F;
  v8 = v6 != 27 && (v6 ^ 0x1Bu) < 5;
  return (*(v4 + 8 * ((163 * v8) ^ a4)))();
}

uint64_t sub_10001A81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27)
{
  v31 = a27;
  v32 = (v28 ^ 0x23) - 336;
  *(v30 - 120) = v32 ^ (1785193651 * ((((v30 - 144) | 0x96772157) - (v30 - 144) + ((v30 - 144) & 0x6988DEA8)) ^ 0x85ABCD77));
  *(v30 - 136) = &a22;
  *(v30 - 128) = &a26;
  *(v30 - 144) = v31;
  *(v30 - 112) = &a22;
  *(v30 - 104) = v29;
  (*(v27 + 8 * (v28 ^ 0xFCD)))(v30 - 144);
  *(v30 - 120) = v32 ^ (1785193651 * ((((v30 - 144) | 0x476A9A8) - ((v30 - 144) & 0x476A9A8)) ^ 0x17AA4588));
  *(v30 - 136) = a14;
  *(v30 - 128) = &a26;
  *(v30 - 144) = &a22;
  *(v30 - 112) = &a22;
  *(v30 - 104) = v29;
  (*(v27 + 8 * (v28 ^ 0xFCD)))(v30 - 144);
  *(v30 - 136) = a19;
  *(v30 - 128) = &a22;
  *(v30 - 144) = ((v28 ^ 0x23) - 875955837) ^ (1082434553 * (((v30 - 144) & 0x9270CB0F | ~((v30 - 144) | 0x9270CB0F)) ^ 0xF6C8C27A));
  (*(v27 + 8 * ((v28 ^ 0x23) + 679)))(v30 - 144);
  *(v30 - 144) = (v28 ^ 0x23) + 1082434553 * ((-357967769 - ((v30 - 144) | 0xEAA9D867) + ((v30 - 144) | 0x15562798)) ^ 0x8E11D112) - 1161;
  *(v30 - 136) = &a24;
  *(v30 - 128) = &a22;
  (*(v27 + 8 * (v28 ^ 0xFE2)))(v30 - 144);
  *(v30 - 144) = &a22;
  *(v30 - 136) = ((v28 ^ 0x23) - 776) ^ (1785193651 * ((v30 - 883954858 - 2 * ((v30 - 144) & 0xCB4FEBE6)) ^ 0xD89307C6));
  *(v30 - 128) = &a24;
  v33 = (*(v27 + 8 * (v28 ^ 0xFA0)))(v30 - 144);
  return (*(v27 + 8 * ((((v28 ^ 0x23) - 1739) * (a18 == 0)) ^ ((v28 ^ 0x23) - 1230))))(v33);
}

uint64_t sub_10001AB58@<X0>(int a1@<W0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = v8 + 1007;
  v17 = (v13 + 4 * v9);
  v18 = HIDWORD(v15) + (*v17 ^ a2) + HIDWORD(v10) + v11 * (*(*(a7 + 8) + 4 * v9) ^ a2);
  *(v17 - 1) = a2 + v16 - 417 + v18 - (a1 & (2 * v18)) - 1476;
  return (*(v12 + 8 * (((v9 + 1 == v7) * v14) ^ (v16 - 1630))))();
}

uint64_t sub_10001ABD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  *(v19 - 112) = v15;
  *(v19 - 104) = a13;
  *(v19 - 136) = (v18 + 1309) ^ (1037613739 * ((~(v17 | 0x7DB29869) + (v17 & 0x7DB29869)) ^ 0x534F4AE9));
  *(v19 - 128) = v15;
  *(v19 - 120) = a15;
  v20 = (*(v16 + 8 * (v18 + 1752)))(v19 - 136);
  return (*(v16 + 8 * ((252 * (((a14 >> (v18 ^ 0x49)) & a12) == (((v18 - 406) | 0x148) ^ 0x1FA))) ^ (v18 + 273))))(v20);
}

uint64_t sub_10001ABD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  a17 = v18 - 1388665877 * (&a17 ^ 0x8DAD62EC) - 542397579;
  v21 = (*(v19 + 8 * (v18 + 1191)))(&a17);
  return (*(v19 + 8 * (((a18 == 972359704) * (((v18 ^ 0xF) - 2124586811) ^ (v20 + 2021))) ^ v18)))(v21);
}

uint64_t sub_10001AFC8(uint64_t a1, signed int a2, int a3, uint64_t a4, int a5)
{
  v7 = v5 - a3 + (a5 ^ 0x269) - 1893;
  if (a2 > v7)
  {
    v7 = a2;
  }

  return (*(v6 + 8 * ((30 * (v7 > ((a5 - 1716903189) & 0x6655DF6D ^ 0x7FFFF89Bu))) ^ a5)))();
}

uint64_t sub_10001B02C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (v6 + a1 - 12);
  v8.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v8.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v9.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v9.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v10 = vaddq_s8(vaddq_s8(*(v6 + v4 - 16), v9), vmvnq_s8(vandq_s8(vaddq_s8(*(v6 + v4 - 16), *(v6 + v4 - 16)), v8)));
  v7[-1] = vaddq_s8(vaddq_s8(*(v6 + v4 - 32), v9), vmvnq_s8(vandq_s8(vaddq_s8(*(v6 + v4 - 32), *(v6 + v4 - 32)), v8)));
  *v7 = v10;
  return (*(v3 + 8 * ((((v6 & 0xFFFFFFE0) == 32) * (((v5 + a3 + 543) | 0x104) ^ 0x66)) ^ (v5 + a3 + 1149))))();
}

void sub_10001B104()
{
  *v5 = *v1;
  *v4 = v0;
  *v1 = 0;
  *(v1 + 8) = 0x2907876429078764;
  v2 = *(v1 + 24);
  v3 = *(v1 + 20) & 0xFFFFFFFE;
  *(v1 + 16) = 1481339933;
  *(v1 + 20) = v3;
  *(v6 + 24) = v2;
}

uint64_t sub_10001B184(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = ((a6 + 31) ^ (v6 - 1268)) - a3;
  if (a2 > v8)
  {
    v8 = a2;
  }

  return (*(v7 + 8 * ((504 * ((a6 + 632 + v8 - 1892) < 0x24)) ^ a6)))();
}

uint64_t sub_10001B20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v24 - 144) = v18;
  *(v24 - 136) = &a18;
  *(v24 - 128) = v22;
  *(v24 - 112) = v18;
  *(v24 - 104) = v21;
  *(v24 - 120) = (v19 + 1096) ^ (1785193651 * ((v24 + 2108271482 - 2 * ((v24 - 144) & 0x7DA9AC0A)) ^ 0x6E75402A));
  v25 = (*(v20 + 8 * (v19 + 2046)))(v24 - 144);
  return (*(v20 + 8 * ((122 * (v23 - 540231017 < ((((v19 - 1803645374) & 0x6B8178F1) - 2036) ^ 0x7FFFFB2C ^ (599 * ((v19 - 1803645374) & 0x6B8178F1 ^ 0x873u))))) ^ (((v19 - 1803645374) & 0x6B8178F1) - 973))))(v25);
}

uint64_t sub_10001B298(int8x16_t a1)
{
  v8 = (v3 - 32);
  v9 = (v4 - 32);
  v10 = veorq_s8(*v9, a1);
  v8[-1] = veorq_s8(v9[-1], a1);
  *v8 = v10;
  return (*(v7 + 8 * (((v1 != v5 + 32) * v6) ^ v2)))();
}

uint64_t sub_10001B328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  if (v11)
  {
    v13 = a11 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  return (*(v12 + 8 * ((116 * v14) ^ 0x594)))();
}

uint64_t sub_10001B368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = STACK[0x360];
  v10 = *(STACK[0x360] + 96);
  if (v10 == 2)
  {
    return (*(v8 + 8 * ((v7 + 799) | (8 * (((*(v9 + 92) == 0) ^ (v7 - 1)) & 1)))))(a1, 177, &off_100085FF0, a4, 51323414);
  }

  if (v10 == 1)
  {
    return (*(v8 + 8 * ((120 * (((*(v9 + 92) == 0) ^ (v7 - 35)) & 1)) ^ (v7 - 117))))(a1, a2, &off_100085FF0);
  }

  STACK[0x350] = 91;
  *(v9 + 91) = (&STACK[0x350] ^ a7) * (&STACK[0x350] + 17);
  return (*(v8 + 8 * ((((STACK[0x350] == 0) << 7) | ((STACK[0x350] == 0) << 11)) ^ (v7 - 1276))))(a1, a2, &off_100085FF0);
}

uint64_t sub_10001B5F0(uint64_t a1)
{
  v3 = STACK[0x460];
  v4 = ((2 * LODWORD(STACK[0x3D0])) & 0x1659F1FAALL) - 0x63B5EFF7B2CF8FD6 + (LODWORD(STACK[0x3D0]) ^ ((v1 - 1439) | 0x440u) ^ 0x63B5EFF7B2CF893DLL) + 1;
  STACK[0x388] = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((v1 - 868808904) & 0x33C8F1A1 ^ 0x1EE)) ^ v1)))(a1, v3);
}

void sub_10001B730(uint64_t a1)
{
  v1 = *a1 + 1388665877 * ((-2 - ((a1 | 0xF3824F06) + (~a1 | 0xC7DB0F9))) ^ 0x81D0D215);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 8);
  v5 = *(a1 + 40);
  v9[0] = 0x590F65B000000082;
  v9[1] = &v12;
  v10[0] = 0x590F65B000000082;
  v10[1] = &v11;
  v6 = v3[1];
  v16 = (1785193651 * ((-1528289165 - (&v13 | 0xA4E82873) + (&v13 | 0x5B17D78C)) ^ 0x48CB3BAC)) ^ (v1 + 820);
  v14 = v2;
  v15 = v3;
  v17 = v9;
  v18 = v5;
  v13 = v6;
  v7 = *(&off_100085FF0 + (v1 ^ 0x271)) - 8;
  (*&v7[8 * v1 + 14160])(&v13);
  v8 = *v3;
  v15 = v10;
  v13 = v8;
  LODWORD(v14) = (1785193651 * ((-132549561 - (&v13 | 0xF8197447) + (&v13 | 0x7E68BB8)) ^ 0x143A6798)) ^ (v1 + 380);
  (*&v7[8 * v1 + 14376])(&v13);
  v14 = v4;
  HIDWORD(v13) = v1 + 1388665877 * ((&v13 & 0xA5B1E8F | ~(&v13 | 0xA5B1E8F)) ^ 0x7809839C) + 688;
  (*&v7[8 * v1 + 14272])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10001B960@<X0>(unsigned int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(v9 - 120) = v8 & 0xF;
  v15.val[1].i64[0] = (v8 + 13) & 0xF;
  v15.val[1].i64[1] = (v8 + 12) & 0xF;
  v15.val[2].i64[0] = (v8 + 11) & 0xF;
  v15.val[2].i64[1] = (v8 + 10) & 0xF;
  v15.val[3].i64[0] = (v8 + 9) & 0xF;
  v15.val[3].i64[1] = a2 & 0xF ^ 1;
  v16.val[0].i64[0] = (v8 + 7) & 0xF;
  v16.val[0].i64[1] = (v8 + 6) & 0xF;
  v16.val[1].i64[0] = (v8 + 5) & 0xF;
  v16.val[1].i64[1] = (v8 + 4) & 0xF;
  v16.val[2].i64[0] = (v8 + 3) & 0xF;
  v16.val[2].i64[1] = (v8 + 2) & 0xF;
  v16.val[3].i64[0] = (v8 + 1) & 0xF;
  v16.val[3].i64[1] = *(v9 - 120);
  v10.i64[0] = 0x5959595959595959;
  v10.i64[1] = 0x5959595959595959;
  v11.i64[0] = 0xA7A7A7A7A7A7A7A7;
  v11.i64[1] = 0xA7A7A7A7A7A7A7A7;
  v12 = (a1 ^ 0x5DD) - 1784 + v8;
  v15.val[0].i64[0] = v12 & 0xF;
  v15.val[0].i64[1] = (v8 + 14) & 0xF;
  v13.i64[0] = vqtbl4q_s8(v15, xmmword_1000799E0).u64[0];
  v13.i64[1] = vqtbl4q_s8(v16, xmmword_1000799E0).u64[0];
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v4 - 15 + v12), *(v6 + v15.val[0].i64[0] - 15)), veorq_s8(*(v15.val[0].i64[0] + v7 - 10), *(v15.val[0].i64[0] + v5 - 13))));
  v16.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v16.val[0], v16.val[0], 8uLL), v11), vmulq_s8(v13, v10)));
  *(a3 - 15 + v12) = vextq_s8(v16.val[0], v16.val[0], 8uLL);
  return (*(v3 + 8 * ((3064 * ((v8 & 0x10) == 16)) ^ a1)))();
}

void sub_10001BAD4(int a1@<W8>)
{
  v4 = v3 ^ 0x7E9;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((2 * v2) & 0x3086F7D6) + v4 - 1740409133;
  *(v1 + 4) = a1 + 1;
}

void sub_10001BB18(int a1@<W8>)
{
  if (a1 == ((v2 + 1491315579) & 0xA71C57EB ^ (v4 + 1498)))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  *v1 = v7;
  *(v3 + 8) = *(v5 + 24);
}

uint64_t sub_10001BB88(unint64_t a1)
{
  STACK[0x508] = a1;
  LODWORD(STACK[0x3C4]) = v2;
  v4 = STACK[0x3B0];
  STACK[0x490] = 335;
  *(v4 + 335) = (&STACK[0x490] ^ 0xBA) * (&STACK[0x490] + 17);
  return (*(v3 + 8 * (((STACK[0x490] == 0) * ((59 * ((v1 + 656) ^ 0x5AC) + 318) ^ 0x157)) ^ (59 * ((v1 + 656) ^ 0x5AC)))))();
}

uint64_t sub_10001BC20@<X0>(int a1@<W8>)
{
  v5 = *(v2 + 4 * (v1 - 1));
  *(v2 + 4 * v1) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v2 + 4 * v1)) - v1;
  v6 = STACK[0x2F0];
  v7 = -LODWORD(STACK[0x2F0]);
  *(v4 - 160) = 1212454120 - STACK[0x2F0] + a1;
  *(v4 - 168) = 623 - v6;
  *(v4 - 176) = ((a1 - 998188499) ^ 0x7C) - v6;
  *(v4 - 172) = a1 - 998188499 - v6;
  *(v4 - 184) = v1 + 1 - v6;
  *(v4 - 200) = v7;
  *(v4 - 196) = ((a1 - 998188499) ^ 0x3B) + v6;
  v8 = (*(v3 + 8 * (a1 ^ 0xCEE)))(v4 - 200);
  return (*(v3 + 8 * *(v4 - 192)))(v8);
}

void sub_10001BCD0(uint64_t a1)
{
  v1 = *(a1 + 8) + 210068311 * ((1549542908 - (a1 | 0x5C5C25FC) + (a1 | 0xA3A3DA03)) ^ 0x3175E5A7);
  v2 = *a1;
  v3 = *(&off_100085FF0 + v1 - 1351) - 8;
  (*&v3[8 * v1 + 7616])(*(&off_100085FF0 + v1 - 1280) - 8, sub_10004AE14);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12, _BYTE *a13, uint64_t a14, _BYTE *a15, _BYTE *a16, _BYTE *a17, _BYTE *a18, _BYTE *a19, unsigned __int8 **a20, int a21, _BYTE *a22, _BYTE *a23, uint64_t a24, _BYTE *a25, uint64_t a26, _BYTE *a27, uint64_t a28, _BYTE *a29, uint64_t a30, uint64_t a31, _BYTE *a32, _BYTE *a33, _BYTE *a34, _BYTE *a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *a13 = (a2 + (~(a2 << (5 * (a39 ^ 0x49) + 122)) | 0x1F) + 113) ^ 0x70;
  *a16 = BYTE3(a2);
  a13[1] = ((BYTE6(a2) ^ 0xE2) - ((2 * (BYTE6(a2) ^ 0xE2)) & 0x58) - 84) ^ 0xAC;
  a12[1] = (BYTE4(a2) - ((2 * BYTE4(a2)) & 0x5C) + 46) ^ 0x1E;
  a15[20] = v44 ^ 0x22;
  *a17 = BYTE5(a2) ^ 0xF9;
  a15[64] = (BYTE2(a2) - ((2 * BYTE2(a2)) & 0xD2) - 23) ^ 0xE9;
  a15[50] = (BYTE3(a4) - ((2 * BYTE3(a4)) & 0xD2) + 105) ^ 0x69;
  *a19 = BYTE1(a2);
  *a18 = a4;
  a15[26] = (BYTE6(a4) - ((2 * BYTE6(a4)) & 0x2A) + 21) ^ 0x15;
  *a27 = BYTE4(a4);
  a12[2] = BYTE1(v42);
  a15[45] = (BYTE5(a4) + (~(2 * BYTE5(a4)) | 0xE3) - 113) ^ 0x8E;
  *a33 = HIBYTE(a4);
  a15[11] = (BYTE2(v42) - ((2 * BYTE2(v42)) & 0xE8) + 116) ^ 0x74;
  *a34 = BYTE1(v44) ^ 0x69;
  *a12 = HIBYTE(a2) ^ 0xCA;
  *a23 = BYTE2(v44) ^ 1;
  a15[52] = BYTE4(v44) ^ 0x61;
  *a25 = BYTE3(v44) ^ 0xA7;
  v45 = *(a10 + 526 + (((v44 >> 33) & 0x80 | (v44 >> 41) & 0x7F) ^ 0x26));
  a15[9] = BYTE6(v44) ^ 0xE;
  *a22 = (((v45 >> 4) | (16 * v45)) ^ 0xB ^ (((v45 >> 4) | (16 * v45)) >> 1) & 0x55) + 95;
  v46 = *(a11 + (((v44 >> 51) & 0xE0 | (v44 >> 59)) ^ 0x93));
  a15[39] = v43 ^ 0x53;
  *a32 = (v46 ^ 0xBC) + 74;
  v47 = *(a11 + (((v43 >> 3) & 0xE0 | (v43 >> 11)) ^ 0xEF));
  a15[49] = BYTE5(v43) ^ 0xBB;
  a15[63] = BYTE3(v43) ^ 0xC1;
  v48 = (a8 >> 38) ^ 0xB0;
  a15[13] = BYTE6(v43) ^ 0x15;
  *a29 = BYTE2(v43) ^ 0x1D;
  *a35 = (v47 ^ 0xBC) + 74;
  a15[36] = BYTE4(v43) ^ 0xF2;
  a15[60] = BYTE1(a8) ^ 0x54;
  a15[27] = BYTE2(a8) ^ 0x11;
  v49 = (v43 ^ 0x4F15BBF2C11DE053) >> (v42 & 0x38) >> (v42 & 0x38 ^ 0x38u);
  a15[40] = (v49 - ((2 * v49) & 0x48) + 36) ^ 0x24;
  a15[53] = BYTE3(a8) ^ 5;
  a15[59] = a8 ^ 0x4C;
  a15[22] = BYTE4(a8) ^ 0x2D;
  v50 = *(a14 + ((v48 & 0xFC | (a8 >> 46) & 3) ^ 0x97));
  v51 = ((v48 & 0xFC | (a8 >> 46) & 3) ^ 0x86) - ((2 * v48) & 0xD0) + (v50 ^ 0xB2) + ((2 * v50) & 0x64) + 79;
  a15[37] = -35 * (((v51 ^ 0x7A) + 92) ^ ((v51 ^ 0x6F) + 79) ^ ((v51 ^ 0x90) - 78)) - 113;
  v52 = *(a10 + 526 + (((a8 >> 41) & 0x80 | (a8 >> 49) & 0x7F) ^ 0x56));
  a15[29] = HIBYTE(a8) ^ 0x30;
  v53 = ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55) + (((v52 >> 4) | (16 * v52)) ^ 0xB) - 2 * ((((v52 >> 4) | (16 * v52)) >> 1) & 0x55 & (((v52 >> 4) | (16 * v52)) ^ 0xB));
  a15[57] = (v53 ^ 0x67) + ((2 * v53) & 0xCF) - 8;
  v54 = a20;
  **a20 = a21 + 1;
  v55 = *a20;
  v56 = __ROR8__(v55[54] - ((2 * v55[54]) & 0xA8) - 0x62D8686CF7D430ACLL, 5);
  v57 = ((v55[6] - ((2 * v55[6]) & 0xD6u) + 536451232) << 35) - 0x1A800000000;
  v58 = ((((v55[35] - ((2 * v55[35]) & 0x44u) + 1605468) << 43) - 0x1D00000000000) ^ 0xBBF7A92E835B3433) & (v57 ^ 0x3338E7C35F757FLL) ^ v57 & 0x87C046D000000000;
  v59 = ((((*v54)[30] - ((2 * (*v54)[30]) & 0x1C4u) + 38376) << 48) - 0x6000000000000) ^ ((((*v54)[16] - ((2 * (*v54)[16]) & 0x38u) + 5661267) << 40) - 0x370000000000) ^ (((v55[17] - ((2 * v55[17]) & 0xFFDFu) + 39902239) << 32) - 0x3000000000) ^ (((v55[42] - ((2 * v55[42]) & 0xDAu) + 35) << 56) - 0x3600000000000000) ^ __ROR8__(v56 & 0x70000024804009CALL ^ 0x7D0C8A40052421C8 ^ (v58 & 0xF139901A03191430 ^ 0x70C7D625D556A40ALL ^ (v58 ^ 0x30048164A0420CLL) & ((((v55[21] - ((2 * v55[21]) & 0x28u) + 807) << 51) - 0x98000000000000) ^ 0x16666FE5E4E2620FLL)) & (v56 ^ 0x5B16C34367BEA185), 35) ^ 0x6D34269450FB5624;
  v60 = ((v55[61] - ((2 * v55[61]) & 0xA2u) + 8021112) << 40) - 0x270000000000;
  v61 = ((v55[34] - ((2 * v55[34]) & 0xD6)) << 24) + 0x7B455D36B000000;
  v62 = ((v55[7] - ((2 * v55[7]) & 0x10)) << 16) - 0x429CB60E2AF80000;
  v63 = v55[15] - ((2 * v55[15]) & 0x9E) + 0x69E5B45A61DFB84FLL;
  v64 = v60 & 0x7225510000000000 ^ 0xFB7EFFE3D53382E9 ^ (v61 & 0x4305594D6000000 ^ 0xA6E6D918BEF33183 ^ (v62 & 0x502480041690000 ^ 0x966FC99EF65E8975 ^ (v63 & 0x5000043E44 ^ 0xDC243B222D4983E0 ^ ((((v55[32] - ((2 * v55[32]) & 0x15C)) << 8) - 0x5E29D49D67B35200) ^ 0xC513B3E52B972FBBLL) & (v63 ^ 0x961A4BA59E2047F4)) & (v62 ^ 0x429CB60E2AF7FFFFLL)) & (v61 ^ 0xF84BAA2C94FFFFFFLL)) & (v60 ^ 0x859BAEFFFFFFFFFFLL);
  v65 = (69 * (*a20)[55]) > 0xE1u;
  LOBYTE(v58) = 69 * (*a20)[55] + 30;
  v66 = v58 & 0x2E ^ 0x26;
  v67 = (v58 ^ (2 * ((v58 ^ 0x60) & (2 * ((v58 ^ 0x60) & (2 * ((v58 ^ 0x60) & (2 * ((v58 ^ 0x60) & (2 * (v58 & (2 * v66) ^ v66)) ^ v66)) ^ v66)) ^ v66)) ^ v66))) ^ 0x81;
  v68 = *(&off_100085FF0 + (a39 ^ 0x574));
  v69 = (*(v68 + 10 + (((v58 | (v65 << 8)) - 101 + (((v58 | (v65 << 8)) - 101 - (((v67 ^ 0x52585D30) - 1381522736) ^ ((v67 ^ 0xC357967D) + 1017670019) ^ ((v67 ^ 0x910FCB0A) + 1861235958))) ^ 0xFFFFFFF0) + 71) ^ 0xD5)) - 18) ^ 0x57;
  v70 = (v69 >> 2) | (v69 << 6);
  v71 = ((((*v54)[51] - ((2 * (*v54)[51]) & 0xCu) + 45) << 56) - 0x2700000000000000) ^ ((((*v54)[56] - ((2 * (*v54)[56]) & 0x3333u) + 62165) << 48) - 0x3C000000000000) ^ 0xF72666619A52F05 ^ (((0xFFFFFFFF00000000 * v70) ^ ((v70 << 32) - ((v70 << 33) & 0x12800000000) - 0x3D55786B8C977650) ^ (v64 - (v64 ^ (v70 << 32))) ^ 0xC2AA8794736889B0) + v64);
  LOBYTE(v54) = 69 * (*a20)[31] + 44;
  LOBYTE(v61) = v54 & 0x8C ^ 0x7C;
  v73 = *(v68 + 10 + ((v54 ^ (2 * ((v54 ^ 0x54) & (2 * ((v54 ^ 0x54) & (2 * ((v54 ^ 0x54) & (2 * ((v54 ^ 0x54) & (2 * v61) ^ v61)) ^ v61)) ^ v61)) ^ v61))) ^ 0xB1u)) + 6;
  LODWORD(v63) = (v55[4] >> 4) | (16 * v55[4]);
  v72 = ((v55[46] - ((2 * v55[46]) & 0x84u) + 243) << 56) - 0x3100000000000000;
  v78 = v55[19] - ((2 * v55[19]) & 0xFFFB);
  LODWORD(v63) = *(v68 + 541 + ((v63 + (~(2 * v63) | 3) + 127) ^ 0x22));
  LOBYTE(v54) = v73 & 0x36 ^ 0x27;
  v74 = v73 ^ (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * ((v73 ^ 0x68) & (2 * (v54 ^ v73 & 0x1E)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ v54)) ^ 0x2F;
  v75 = ((((((v74 >> 2) | (v74 << 6)) ^ 0xB6) - 65) ^ ((((v74 >> 2) | (v74 << 6)) ^ 0x5C) + 85) ^ ((((v74 >> 2) | (v74 << 6)) ^ 0x79) + 114)) + 100) << 32;
  v76 = ((v55[8] - ((2 * v55[8]) & 0x140)) << 24) + 0x3B28C29AA0000000;
  v77 = ((v55[33] - ((2 * v55[33]) & 0x14C)) << 16) + 0x773543C318A60000;
  v79 = (v75 & 0x6400000000 | (v76 & 0xB28829340000000 ^ 0xF5A11B0512312132 ^ (v77 & 0x65354042193A0000 ^ 0x72E2BEFA14B0F6FLL ^ ((v78 + 0xFD52930C694BEFDLL) & 0x200204B394 ^ 0x16373C5CE41006B4 ^ (((((v63 >> 5) | (8 * v63)) - ((16 * v63) & 0x40) + 32) << 8) ^ 0x43D27DDE0D1A56BLL) & ((v78 + 0xFD52930C694BEFDLL) ^ 0x8BA81ECF256F4196)) & (v77 ^ 0x8CABC3CE759FFFFLL)) & (v76 ^ 0xC4D73D655FFFFFFFLL)) & ~v75) ^ (((v55[38] << 40) | ((v55[43] - ((2 * v55[43]) & 0x1AAu) + 62441) << 48)) - 0x14000000000000);
  return (*(a42 + 8 * (((5 * (a39 ^ 0x549) != 127) * ((5 * (a39 ^ 0x549)) ^ 0xC3)) ^ (5 * (a39 ^ 0x549)))))(v59, 0x4627F530C8401877, v71, ((v79 & 0x4AF54021979D7FCDLL ^ v72 & 0x4A00000000000000 ^ 0xF5AABFFE7A6280FALL) & (v72 & 0xB500000000000000 ^ 0xDCECEF3A1FDC16DALL ^ v79 & 0xB50ABFDE68628032) | (v79 & 0x4AF54021979D7FCDLL ^ v72 & 0x4A00000000000000) & 0x211000180016905) ^ 0x6BE546A1B7DDDECCLL, 0);
}

uint64_t sub_10001D764(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = (*(v14 + 4 * v13) ^ (v7 - 309) ^ (a6 + 1557) ^ v11) + v9 + a3 * (*(*(v10 + 8) + a2) ^ v7);
  *(v14 + 4 * v13) = v15 + v7 - (v8 & (2 * v15));
  return (*(v6 + 8 * ((a6 + 80) ^ ((a4 == 0) * v12))))();
}

uint64_t sub_10001D7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  if ((a11 - 1323568843) >= 0x2BF953AF)
  {
    v25 = 1908478089;
  }

  else
  {
    v25 = 1908478090;
  }

  v26 = 1564307779 * (((&a17 ^ 0x8955A581) & 0x6EE4A5DF | ~(&a17 ^ 0x8955A581 | 0x6EE4A5DF)) ^ 0x8F4333B2);
  a22 = v25 - v26;
  a17 = a14;
  a21 = &a15;
  a19 = v23 - v26 - 2013066925;
  a20 = -1815814329 - v26;
  v27 = (*(v24 + 8 * (v23 ^ 0x89C)))(&a17);
  return (*(v24 + 8 * (((a18 == v22 + ((v23 + 257) | 0x10C) - 910) * ((v23 + 502247037) & 0x105577 ^ 0x22D)) ^ v23)))(v27);
}

uint64_t sub_10001D964()
{
  v4 = v0;
  v5 = v1 + v0 + 4726784;
  v6 = LODWORD(STACK[0x49C])++;
  *STACK[0x2A8] = v6 + 1562827101;
  v7 = *STACK[0x2C8];
  v8 = v5 ^ 0xE4;
  v9 = STACK[0x238];
  v10 = -LODWORD(STACK[0x238]);
  *(v3 - 160) = 1212454120 - STACK[0x238] + v4;
  *(v3 - 184) = v7 - v9;
  v11 = v5 - v9;
  *(v3 - 176) = v11 - 135;
  *(v3 - 172) = v11;
  *(v3 - 200) = v10;
  *(v3 - 196) = v8 + v9;
  *(v3 - 168) = STACK[0x230];
  v12 = (*(v2 + 8 * (v4 ^ 0xCEEu)))(v3 - 200);
  return (*(v2 + 8 * *(v3 - 192)))(v12);
}

uint64_t sub_10001DA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v13 = *(v6 + 4 * (a6 + v9 - 14));
  HIDWORD(v14) = *(v6 + 4 * (a6 + v9 - 8)) ^ *(v6 + 4 * (a6 + v9 - 3)) ^ v13 ^ *(v6 + 4 * (a6 + v9 - 16)) ^ (a5 + v8 + 947 - 1792);
  LODWORD(v14) = *(v6 + 4 * (a6 + v9 - 8)) ^ *(v6 + 4 * (a6 + v9 - 3)) ^ v13 ^ *(v6 + 4 * (a6 + v9 - 16));
  *(v6 + 4 * (v7 + a6)) = (v14 >> 31) ^ v10;
  return (*(v12 + 8 * ((((v7 + 1 + a6) < 0x50) * v11) ^ v8)))();
}

uint64_t sub_10001DA84(int8x16_t a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = v8 + 2;
  v14 = v10 + 2;
  v15 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a1)), a2);
  v14[-1] = vaddq_s8(vsubq_s8(v13[-1], vandq_s8(vaddq_s8(v13[-1], v13[-1]), a1)), a2);
  *v14 = v15;
  return (*(v12 + 8 * (((v9 == 32) * v11) ^ (a7 + v7 + 300))))();
}

uint64_t sub_10001DA94(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_10001DCE0(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

void sub_10001DCF8(_DWORD *a1)
{
  v1 = *a1 - 843532609 * (((a1 ^ 0x88EA6F2) & 0xE4B4B0D1 | ~(a1 ^ 0x88EA6F2 | 0xE4B4B0D1)) ^ 0x4F88BD59);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10001DDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v24 = 843532609 * ((((2 * &a15) | 0x4BB7A15A) - &a15 - 635162797) ^ 0x79968428);
  a15 = a10;
  HIDWORD(a16) = v21 - ((2 * v21) & 0x15776F42) - v24 - 1967409247;
  LODWORD(a17) = v24 ^ 0x5C7;
  (*(v23 + 18840))(&a15);
  v25 = 1037613739 * (((~&a15 & 0x715C5662) - (~&a15 | 0x715C5663)) ^ 0xA05E7B1C);
  a18 = v25 ^ 0x131;
  a19 = (v20 ^ 0xEFF9B7F7) + ((2 * v20) & 0xDFF36FEE) + 510655103 + v25;
  a16 = a10;
  a17 = v19;
  v26 = (*(v23 + 19072))(&a15);
  return (*(v23 + 8 * ((934 * (a15 == v22)) ^ 0x1D5u)))(v26);
}

uint64_t sub_10001DEF8(int a1, int a2, unsigned int a3, unsigned int a4)
{
  *(v10 + (v4 + 1)) = *(v7 + v9);
  v12 = a4 + v9 + 1 < v5;
  if (v5 < a4 != (v8 & a2 ^ 0x5A9) + v9 > a3)
  {
    v12 = v5 < a4;
  }

  return (*(v11 + 8 * ((v12 * a1) ^ v6)))();
}

uint64_t sub_10001DF04()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 != 0) * v1) ^ v0)))();
}

uint64_t sub_10001DFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4 - 1;
  *(v6 + v8) = *(a3 + v8) + (v5 | ~(2 * *(a3 + v8))) - 88;
  return (*(v7 + 8 * ((2 * (((v3 - 55) ^ (v8 == 0)) & 1)) & 0xDF | (32 * (((v3 - 311) ^ (v8 == 0)) & 1)) | (v3 - 728))))();
}

uint64_t sub_10001E00C()
{
  v6 = ((v1 + 1849) ^ v3) + v2;
  *(v4 + v6) = *(v0 + v6);
  return (*(v5 + 8 * (((2 * (v6 == 0)) | (32 * (v6 == 0))) ^ v1)))();
}

uint64_t sub_10001E200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36)
{
  v42 = (*a3 + 0x48A124310A752B7ALL - ((2 * *a3) & 0xF4)) ^ 0x48A124310A752B7ALL;
  v41 = a2 ^ 0x417A3CF7A2409DB3;
  v43 = (((v41 ^ 0x6E57AD37D75288E2) - 0x6E57AD37D75288E2) ^ ((v41 ^ 0x716A4FA6CAFA5E47) - 0x716A4FA6CAFA5E47) ^ ((v41 ^ 0x94A52756BFE84B16) + 0x6B5AD8A94017B4EALL)) + (((v42 ^ 0xE352F4A5B4410A26) - 0x7D5068FF7774102ELL) ^ ((v42 ^ 0xEFE0ABD1FCF4D425) - 0x71E2378B3FC1CE2DLL) ^ ((v42 ^ 0xCB25F7448B5DE03) + 0x6D4F3CD1747F3BF5)) - ((((2 * (v42 & (v41 ^ 0xB98C5C7A2409DB3))) ^ 0x90280DDF9F6498BALL) + 0x7E3368F5DE215BCALL) ^ (((2 * (v42 & (v41 ^ 0xB98C5C7A2409DB3))) ^ 0xB1D453488E60A67CLL) + 0x5FCF3662CF256510) ^ (((2 * (v42 & (v41 ^ 0xB98C5C7A2409DB3))) ^ 0x21FC5E9711043EC6) - 0x3018C442AFBE024ALL)) + 0x583FB92F4BEF3AE7;
  v44 = (v43 ^ 0xBE674FDC58AC2420) & (2 * (v43 & 0xBF770E1D5ACC4048)) ^ v43 & 0xBF770E1D5ACC4048;
  v45 = ((2 * (v43 ^ 0xFE4957F65CBCA430)) ^ 0x827CB3D60CE1C8F0) & (v43 ^ 0xFE4957F65CBCA430) ^ (2 * (v43 ^ 0xFE4957F65CBCA430)) & v40;
  v46 = v45 ^ 0x4102482902102408;
  v47 = (v45 ^ 0x3C10C204600060) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x4F967AC19C391E0) & v46 ^ (4 * v46) & v40;
  v49 = (v48 ^ 0x3841A800408060) & (16 * v47) ^ v47;
  v50 = ((16 * (v48 ^ 0x4106184306306418)) ^ 0x13E59EB0670E4780) & (v48 ^ 0x4106184306306418) ^ (16 * (v48 ^ 0x4106184306306418)) & (v40 - 8);
  v51 = (v50 ^ 0x12418A006004400) & (v49 << 8) ^ v49;
  v52 = (((v50 ^ 0x401A414B0070A078) << 8) ^ 0x3E59EB0670E47800) & (v50 ^ 0x401A414B0070A078) ^ ((v50 ^ 0x401A414B0070A078) << 8) & (v40 - 120);
  v53 = v51 ^ v40 ^ (v52 ^ 0x18490200600000) & (v51 << 16);
  return (*(v38 + 8 * (((a36 - 803) | 0x5C) ^ 1)))(a1, v43 ^ (2 * ((v53 << 32) & 0x413E59EB00000000 ^ v53 ^ ((v53 << 32) ^ v37) & (((v52 ^ 0x412610E906108478) << 16) & 0x413E59EB00000000 ^ v36 ^ (((v52 ^ 0x412610E906108478) << 16) ^ v39) & (v52 ^ 0x412610E906108478)))));
}

uint64_t sub_10001E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = LOBYTE(STACK[0x2D8]);
  if (v22 == 2)
  {
    return (*(v21 + 8 * ((503 * (LODWORD(STACK[0x2D4]) == ((v20 + 1233) ^ 0x4F7))) ^ (v20 + 1233))))(a20);
  }

  if (v22 != 1)
  {
    JUMPOUT(0x10001E444);
  }

  return (*(v21 + 8 * ((90 * (((v20 ^ (LODWORD(STACK[0x2D4]) == 0)) & 1) == 0)) ^ (v20 + 1685))))();
}

uint64_t sub_10001E858(uint64_t result)
{
  v1 = 742307843 * ((((2 * result) | 0xDB1F010A29036638) - result - 0x6D8F80851481B31CLL) ^ 0xDE135DEE0AA33E49);
  v2 = *(result + 8);
  v3 = v2 - v1;
  v4 = *(result + 24) - v1;
  v5 = *(result + 16) - v1;
  v6 = *result ^ v1;
  v7 = *(result + 28) + v1;
  v8 = *(result + 32);
  v9 = v2 == v8;
  v10 = v3 > v8 - v1;
  if ((v5 & 1) == 0)
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  *(result + 40) = v6 ^ v11;
  return result;
}

void sub_10001E8FC(uint64_t a1)
{
  v1 = 1785193651 * ((a1 & 0xCB705029 | ~(a1 | 0xCB705029)) ^ 0x275343F6);
  if (*(a1 + 8) | *(a1 + 72))
  {
    v3 = *(a1 + 16) + v1 == 1177225308;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  v2 = *(a1 + 32) ^ v1;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10001EA44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = -542396526 - 1388665877 * (((&a15 | 0x70B6400A) - (&a15 & 0x70B6400A)) ^ 0xFD1B22E6);
  v18 = (*(v17 + 17952))(&a15);
  return (*(v17 + 8 * ((35 * (a16 == v16)) | 0x98u)))(v18);
}

uint64_t sub_10001EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a1 + 32) + 1785193651 * (((a1 | 0xE1E68334) - a1 + (a1 & 0x1E197CCB)) ^ 0xF23A6F14);
  v19 = 1785193651 * ((v27 & 0x1F6DFA69 | ~(v27 | 0x1F6DFA69)) ^ 0xF34EE9B6);
  v28 = v18 + v19 - 562358890;
  v29 = v26;
  v30 = v19 ^ 0x79AE6FE9;
  v20 = (*(*(&off_100085FF0 + (v18 & 0x62C16BA0)) + (v18 ^ 0x942) - 1))(v27);
  return sub_10003CA2C(v20, v26, v21, 167, v22, v23, v24, 4080486027, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10001EF44@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v8 = a1 - 1;
  *(a3 + v8) = *(v4 + v8) ^ *(v6 + (v8 & 0xF)) ^ *((v8 & 0xF) + v7 + 5) ^ (89 * (v8 & 0xF)) ^ *((v8 & 0xF) + v5 + 2) ^ 0xA7;
  return (*(v3 + 8 * ((a2 + 187) | (32 * (v8 == (((a2 - 1109) | 0x584u) ^ 0x7B4))))))();
}

uint64_t sub_10001EFB8@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x1C;
  STACK[0x4C0] = 0;
  v5 = 1388665877 * ((863776325 - (v1 | 0x337C2E45) + (v1 | 0xCC83D1BA)) ^ 0x412EB356);
  *(v3 - 168) = 0;
  *(v3 - 184) = v5 + v4 - 28;
  *(v3 - 180) = v5 - 1742635050;
  *(v3 - 200) = &STACK[0x4C0];
  *(v3 - 192) = &STACK[0x31C];
  v6 = (*(v2 + 8 * (v4 + 2065)))(v3 - 200);
  return (*(v2 + 8 * ((31 * (((v4 + 38) ^ (*(v3 - 176) == 972359704)) & 1)) ^ v4)))(v6);
}

uint64_t sub_10001F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v35 - 120) = &a30;
  *(v35 - 112) = v33;
  *(v35 - 144) = (v34 + 137) ^ (1037613739 * ((((v35 - 144) | 0x2CB222C3) - (v35 - 144) + ((v35 - 144) & 0xD34DDD38)) ^ 0xFDB00FBC));
  *(v35 - 136) = &a30;
  *(v35 - 128) = v32;
  (*(v31 + 8 * ((v34 - 804) ^ 0xA98)))(v35 - 144);
  *(v35 - 144) = (v34 + 137) ^ (1037613739 * ((v35 - 1443153448 - 2 * ((v35 - 144) & 0xA9FB3A68)) ^ 0x78F91717));
  *(v35 - 136) = &a30;
  *(v35 - 128) = v32;
  *(v35 - 120) = &a30;
  *(v35 - 112) = v33;
  (*(v31 + 8 * (v34 + 580)))(v35 - 144);
  v36 = 210068311 * ((((v35 - 144) | 0x76D20A) - (v35 - 144) + ((v35 - 144) & 0xFF892DF0)) ^ 0x92A0EDAE);
  *(v35 - 128) = a13;
  *(v35 - 144) = v36 + ((v30 - 540231018) ^ 0xEEBDFAE7) + ((v34 + 425384673) & 0xE6A51F7F) + 1073139266 + ((((v34 - 1483) | 0x2C) - 579079023) & (2 * (v30 - 540231018)));
  *(v35 - 136) = v34 - 804 - v36 - 802;
  v37 = (*(v31 + 8 * (v34 + 587)))(v35 - 144);
  return (*(v31 + 8 * ((127 * (*(v35 - 140) == 529483433)) ^ (v34 - 804))))(v37);
}

uint64_t sub_10001F254@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  a4 = (v8 - 89) ^ (50899313 * ((&a4 + 1394801720 - 2 * (&a4 & 0x5322FC38)) ^ 0x470D61A3));
  a7 = a1;
  a5 = a3;
  v9 = (*(v7 + 8 * (v8 ^ 0xD08)))(&a4);
  return (*(v7 + 8 * (((a6 != 972359704) * ((v8 ^ 0x4FC) - 197)) ^ v8)))(v9);
}

uint64_t sub_10001F4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = ((~((v18 - 144) | 0x4E6BB728) + ((v18 - 144) & 0x4E6BB728)) ^ 0x23427773) * v17;
  *(v18 - 144) = v13 + 243369210 + v19 + 1;
  *(v18 - 136) = v15 - v19 - 1606;
  *(v18 - 128) = a13;
  v20 = (*(v14 + 8 * (v15 ^ 0xFFB)))(v18 - 144);
  return (*(v14 + 8 * ((453 * ((((v15 - 1740) ^ (*(v18 - 140) == v16)) & 1) == 0)) ^ v15)))(v20);
}

uint64_t sub_10001F830@<X0>(int a1@<W8>, uint64_t a2, int a3, __int16 a4, char a5, char a6, char a7, int a8, int a9, char a10, uint64_t a11, int a12, char *a13, char *a14, char *a15, char a16, unsigned int a17, int a18)
{
  v21 = *(v18 + 32);
  v22 = 742307843 * (&a11 ^ 0x1E228D55);
  a17 = (((a1 ^ 0xB653C13B) + 1236025029) ^ ((a1 ^ 0x43568E09) - 1129745929) ^ ((a1 ^ 0x6C2430E2) - 1814311138)) - v22 + ((v20 + 1246849458) & 0xB5AE95FC) - 1683916716;
  a18 = v20 - v22 - 473373993;
  a11 = v21;
  a13 = &a10;
  a14 = &a7;
  a15 = &a6;
  a16 = (3 * (&a11 ^ 0x55)) ^ 0x70;
  v23 = (*(v19 + 8 * (v20 + 2123)))(&a11);
  return (*(v19 + 8 * ((1529 * (a12 == 972359704)) ^ v20)))(v23);
}

uint64_t sub_10001F948@<X0>(uint64_t a1@<X1>, char a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, unint64_t *, uint64_t))
{
  v18 = (a1 + v14);
  *v18 = v15;
  *(v14 + v17 + a1 - 27) = a2;
  v18[2] = v13;
  v18[3] = v16;
  return sub_100024FF4(a1, v17, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t sub_10001F9BC()
{
  *(v7 - 136) = v6;
  *(v7 - 128) = v3;
  *(v7 - 120) = v6;
  *(v7 - 112) = v2;
  *(v7 - 144) = (v0 + 1449) ^ (1037613739 * ((((2 * (v7 - 144)) | 0xF40167C0) - (v7 - 144) + 100617248) ^ 0x2B029E9F));
  (*(v4 + 8 * (v0 + 1892)))(v7 - 144);
  v8 = 210068311 * ((v7 + 265681887 - 2 * ((v7 - 144) & 0xFD5FC6F)) ^ 0x9D03C3CB);
  *(v7 - 128) = v1;
  *(v7 - 144) = v8 + v5 + 243369213;
  *(v7 - 136) = v0 - v8 - 294;
  v9 = (*(v4 + 8 * (v0 ^ 0x89B)))(v7 - 144);
  return (*(v4 + 8 * ((102 * (((v0 - 107) ^ (*(v7 - 140) == 529483433)) & 1)) ^ v0)))(v9);
}

uint64_t sub_10001FAC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int8x16_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37)
{
  *(&STACK[0x590] + v38) = veorq_s8(*a14, a37);
  STACK[0x540] = ((v37 + 1029622445) ^ 0x3D5ECDADu) + STACK[0x540] - 850;
  STACK[0x548] = a1;
  STACK[0x550] = a1;
  return (*(v39 + 8 * (((((v37 + 1029622445) & 0xC2A1357D) - 1006) * ((&STACK[0x590] + v38) != a1)) ^ v37)))();
}

uint64_t sub_10001FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v28 = 843532609 * (&a19 ^ 0x5C4D5485);
  HIDWORD(a20) = v26 - v28 - 1967409247 - ((2 * v26) & 0x15776F42);
  LODWORD(a21) = v28 ^ 0x5C7;
  a19 = a17;
  (*(v27 + 18840))(&a19);
  LODWORD(a19) = 843532609 * (((&a19 | 0xF52813C9) - &a19 + (&a19 & 0xAD7EC30)) ^ 0xA965474C) + 1418;
  a22 = v25;
  a20 = a17;
  (*(v27 + 18944))(&a19);
  v29 = 843532609 * (((&a19 ^ 0xE26F550F) & 0x2BAB8AA9 | ~(&a19 ^ 0xE26F550F | 0x2BAB8AA9)) ^ 0x6A7674DC);
  a19 = a17;
  HIDWORD(a20) = v24 - ((2 * v24) & 0x15776F42) - 1967409247 - v29;
  LODWORD(a21) = v29 ^ 0x5C7;
  (*(v27 + 18840))(&a19);
  v30 = 1037613739 * ((2 * (&a19 & 0x5D5E1310) - &a19 + 581037289) ^ 0xF3A3C196);
  a20 = a17;
  a21 = v22;
  LODWORD(a22) = v30 ^ 0x131;
  HIDWORD(a22) = (v23 ^ 0x7EFBBEFF) + ((2 * v23) & 0xFDF77DFE) - 1888619657 + v30;
  v31 = (*(v27 + 19072))(&a19);
  return (*(v27 + 8 * ((1960 * (a19 == 972359704)) ^ 0x215u)))(v31);
}

uint64_t sub_10001FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v9 + v8 + 1510222016;
  v11 = v9 - 1262811790 + ((a7 + 311) ^ 0x1F0) > v10;
  if (v9 > 0x4B44F724 != v10 < 0xB4BB08DB)
  {
    v11 = v9 > 0x4B44F724;
  }

  return (*(v7 + 8 * (((4 * v11) | (16 * v11)) ^ a7)))();
}

uint64_t sub_10001FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v59 = (*(v57 + 8 * ((v53 | 0x528) ^ 0xC97)))(LODWORD(STACK[0x4C8]), a2, a53);
  v60 = v58 - 200;
  if (v59)
  {
    if (v59 == 268435459)
    {
      LODWORD(STACK[0x4AC]) = -972401888;
      return (*(v57 + 8 * ((((v56 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v56 + 517))))();
    }

    else
    {
      v63 = 843532609 * (v60 ^ 0x5C4D5485);
      *(v58 - 184) = 972359704 - v63 + v59 - ((2 * v59) & 0x73EA1030);
      *(v58 - 200) = v56 - v63 + 222;
      *(v58 - 192) = &STACK[0x4AC];
      v64 = (*(v57 + 8 * (v56 + 964)))(v58 - 200);
      return (*(v57 + 8 * ((((v56 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v56 + 517))))(v64);
    }
  }

  else
  {
    STACK[0x368] = &STACK[0x590] + v54;
    LODWORD(STACK[0x404]) = 798124000;
    STACK[0x520] = v55 - 80;
    STACK[0x508] = 0;
    LODWORD(STACK[0x3C4]) = 1521934363;
    *(v58 - 196) = v56 - 742307843 * ((((v60 | 0xDD9CB152) ^ 0xFFFFFFFE) - (~v60 | 0x22634EAD)) ^ 0x3C41C3F8) + 68670485;
    (*(v57 + 8 * (v56 + 879)))(v58 - 200);
    v62 = (*(v57 + 8 * (v56 + 911)))(336) == 0;
    return (*(v57 + 8 * ((943 * v62) ^ (v56 - 956))))();
  }
}

uint64_t sub_1000200B8()
{
  v3 = STACK[0x390];
  v4 = 1785193651 * ((((v2 - 200) | 0xE8F3167C) - (v2 - 200) + ((v2 - 200) & 0x170CE980)) ^ 0xFB2FFA5C);
  *(v2 - 184) = v4 ^ 0x79AE6FE9;
  *(v2 - 192) = v3;
  *(v2 - 196) = v0 - 562358948 + v4 + 13;
  v5 = (*(v1 + 8 * (v0 ^ 0x937)))(v2 - 200);
  STACK[0x320] = *(v1 + 8 * v0);
  v6 = STACK[0x2E8];
  STACK[0x568] = v3;
  LODWORD(STACK[0x574]) = 1722939937;
  STACK[0x438] = v6;
  return (*(v1 + 8 * ((1978 * ((((((v0 + 311) | 0x271) + 625) ^ ((*(v3 + 68) & 0x3Fu) - 47 < 0xFFFFFFC0)) & 1) == 0)) ^ ((v0 + 311) | 0x271))))(v5);
}

uint64_t sub_100020284(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = a5 - 8;
  v14 = (v11 + v13 + v12 + 84) & 0xF;
  v16.val[0].i64[0] = v14;
  v16.val[0].i64[1] = (v11 + v13 + 22) & 0xF;
  v16.val[1].i64[0] = (v11 + v13 + 21) & 0xF;
  v16.val[1].i64[1] = (v11 + v13 + 20) & 0xF;
  v16.val[2].i64[0] = (v11 + v13 + 19) & 0xF;
  v16.val[2].i64[1] = (v11 + v13 + 18) & 0xF;
  v16.val[3].i64[0] = (v11 + v13 + 17) & 0xF;
  v16.val[3].i64[1] = (v11 + v13 + 8) & 0xF ^ 8;
  *(a6 + v13 + v12 - 691) = veor_s8(veor_s8(veor_s8(*(v9 + v14 - 7), *(a6 + v13 + v12 - 691)), veor_s8(*(v10 + v14 - 7), *(v14 + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v7 + 8 * ((7 * (a4 == v13)) ^ a7)))();
}

uint64_t sub_1000202AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((-311835188 - (&a14 | 0xED69C5CC) + (&a14 | 0x12963A33)) ^ 0xCB4B766);
  a17 = &a11;
  a18 = v19;
  a15 = v22 + v21 - 358;
  a16 = v22 + 411415298;
  a14 = &a13;
  v23 = (*(v20 + 8 * (v21 ^ 0x8DB)))(&a14);
  return (*(v20 + 8 * ((884 * (*(v19 + 24) != ((v21 + 1011) ^ (v18 - 1762)) + v21 + 325)) ^ v21)))(v23);
}

uint64_t sub_100020468@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  if (*(a1 + 56) | *(a1 + 40))
  {
    v4 = *(a1 + 24) + a2 == (((v2 + 1313) | 0x40) ^ 0x2F926F04);
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((4 * (((v2 - 46) ^ v5) & 1)) & 0xF7 | (8 * (((v2 - 46) ^ v5) & 1)) | v2)))();
}

uint64_t sub_1000206DC(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 ^ 0x874)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 1852)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *(v1 + 4) = v5;
  return result;
}

uint64_t sub_100020880()
{
  v3 = (v0 + 1056) | 0x188;
  *v1 = v3 ^ 0x800005A8 | (((STACK[0x290] - v0) | (v0 - STACK[0x290])) >> 31);
  (*(v2 + 8 * (v0 ^ 0x921)))(STACK[0x2D8]);
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(&STACK[0x18A8] + (v5 & 1));
  v7 = v1[398];
  *v1 = v1[397] ^ 0xE3E9F631 ^ ((v4 & 0x7FFFFFFE | *v1 & 0x80000000) >> 1) ^ *(&STACK[0x18A8] + (v4 & 1));
  v1[(v3 ^ 0x31C) - 1715] = v7 ^ 0xE3E9F631 ^ ((v5 & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ v6;
  return (*(v2 + 8 * (v3 ^ 0x31C)))();
}

uint64_t sub_100020A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, unsigned int a21, uint64_t a22, char *a23, char *a24)
{
  a24 = &a16;
  a22 = a19;
  a23 = &a14;
  a21 = v24 - 143681137 * ((&a20 - 1022370825 - 2 * (&a20 & 0xC30FDBF7)) ^ 0xA2575027) + 1142;
  v28 = (*(v27 + 8 * (v24 + 2045)))(&a20);
  return (*(v27 + 8 * ((((v24 ^ 0x2CE) + 29) * (v25 < v26)) ^ v24)))(v28);
}

uint64_t sub_100020AAC(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_100020AEC()
{
  v5 = (v2 + v4 - 228);
  *v5 = 0xA7A7A7A7A7A7A7A7;
  v5[1] = 0xA7A7A7A7A7A7A7A7;
  return (*(v3 + 8 * ((((v0 & 0x30) == 16) * ((v1 - 449) ^ 0xAA9)) ^ v1)))();
}

uint64_t sub_100020B38@<X0>(int a1@<W8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = (a1 - 67530788 + 9 * (v4 ^ 0x28C)) & 0xFFFFF000;
  v6 = (*(v3 + 8 * (v4 + 1701)))(**(v2 + 8 * (v4 - 543)), va, (((v5 ^ 0x18A1CF4) - 1216588127) ^ ((v5 ^ 0xA18D1767) + 393960756) ^ ((v5 ^ 0xA0070B93) + (v4 ^ 0x16F1437F))) + 1225373099, 1) != 0;
  return (*(v3 + 8 * ((122 * v6) ^ v4)))();
}

uint64_t sub_100020C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v20 = (v18 - 595) | 0x612;
  v21 = 1037613739 * ((((v19 - 136) | 0xF3BE6B6C) - ((v19 - 136) & 0xF3BE6B6C)) ^ 0x22BC4613);
  *(v19 - 136) = ((v15 ^ 0x69FD7DFF) - 30691472 + ((v15 << (((v18 - 83) | 0x12) + 15)) & 0xD3FAFBFE)) ^ v21;
  *(v19 - 128) = &a15;
  *(v19 - 120) = v21 + v18 - 309;
  (*(v17 + 8 * (v18 ^ 0xA51)))(v19 - 136);
  *(v19 - 136) = (v20 - 889) ^ (843532609 * ((v19 - 1669286860 - 2 * ((v19 - 136) & 0x9C80B4BC)) ^ 0xC0CDE039));
  *(v19 - 128) = v16;
  *(v19 - 120) = a14;
  v22 = (*(v17 + 8 * (v20 ^ 0xE24)))(v19 - 136);
  return (*(v17 + 8 * (((*(v19 - 132) > 0x23B3030Du) * (((691 * (v20 ^ 0x6F0) - 1276) | 0x190) ^ 0x2E)) ^ v20)))(v22);
}

void sub_100020DBC(int a1@<W8>)
{
  if (a1 == 546664647)
  {
    v2 = 972359704;
  }

  else
  {
    v2 = -972401728;
  }

  *(v1 + 8) = v2;
}

uint64_t sub_100020E2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = *v63;
  STACK[0x430] = *(v64 + 8 * a8);
  return sub_10002FFF0(v65, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100020ECC@<X0>(int a1@<W8>)
{
  v7 = v2 ^ 0x55D;
  v8 = STACK[0x3E0];
  *(v8 + 392) = v1;
  *(v8 + 396) = STACK[0x3EC];
  *(v8 + 400) = STACK[0x3A8];
  *(v8 + 408) = 2073475255 - v4 + LODWORD(STACK[0x4DC]);
  *(v8 + 416) = v6 + (v4 - 1745916841);
  v9 = (*(v3 + 48 * a1 + 8))(STACK[0x2B8], v8 + 392);
  return (*(v5 + 8 * ((1141 * (v9 + 972359704 - ((((v7 - 1937668981) & 0x737E7FFA) + 1944717960) & (2 * v9)) == 972359704)) ^ v7)))();
}

uint64_t sub_100020FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = v7 + 792127191 + ((v5 - 1388) | 2);
  v10 = (v9 < ((v5 - 1517) | 0x283u) + v8) ^ (a5 + 1016109832 < (v8 + 675));
  v11 = v9 < a5 + 1016109832;
  if (v10)
  {
    v11 = a5 + 1016109832 < (v8 + 675);
  }

  return (*(v6 + 8 * ((67 * !v11) ^ v5)))();
}

uint64_t sub_100021018@<X0>(int a1@<W8>)
{
  v8 = v5 + v3;
  v9 = v5 - 1;
  *(*v6 + (v2 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == a1) * v4) ^ v1)))();
}

uint64_t sub_10002104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v15 = (v8 ^ 0x98437BEB) + v10;
  *(v13 + 4 * v14) = v15 + v8 - (v9 & (2 * v15));
  return (*(v7 + 8 * (((((((v12 + 102) ^ a5) * a7 + 1) ^ (HIDWORD(v15) == 0)) & 1) * v11) ^ (v12 + 614))))();
}

uint64_t sub_1000210D0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = (a2 + 261) ^ (a2 + 18);
  v5 = (*(v2 + 19504))();
  if (v5 == (v3 ^ 0x363))
  {
    v6 = -42029;
  }

  else
  {
    v6 = -42030;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  (*(v2 + 18696))(a1);
  return v7;
}

void sub_10002119C(uint64_t a1)
{
  v1 = *(a1 + 16) - 2066391179 * (((a1 | 0xC3204B52) - a1 + (a1 & 0x3CDFB4AD)) ^ 0x6C07C94A);
  v2 = *(&off_100085FF0 + v1 - 1478) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * v1 + 6792])(32) == 0) * (v1 - 504)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100021238@<X0>(int a1@<W8>)
{
  v6 = a1 - v3 + 188;
  v7 = v5 + a1 + 1995;
  v8 = v4 - 1413590416 < (v1 - 1189607938);
  if ((v4 - 1413590416) < 0x13CEE619 != (v1 - 1189607938) < 0x13CEE619)
  {
    v8 = (v1 - 1189607938) < 0x13CEE619;
  }

  return (*(v2 + 8 * (((((v6 ^ v8) & 1) == 0) | (8 * (((v6 ^ v8) & 1) == 0))) ^ v7)))();
}

uint64_t sub_1000212F0@<X0>(int a1@<W2>, int a2@<W8>)
{
  LODWORD(STACK[0x40C]) = a2;
  LODWORD(STACK[0x4CC]) = a1;
  LODWORD(STACK[0x48C]) = v3;
  LODWORD(STACK[0x514]) = v2;
  LODWORD(STACK[0x47C]) = v4 + 64;
  return sub_100061660();
}

void sub_1000213A8(uint64_t a1)
{
  v1 = *(a1 + 16) - 50899313 * ((2 * (a1 & 0x166522FE) - a1 - 375726847) ^ 0xFDB5409A);
  v2 = *(a1 + 8);
  if (*(v2 + 4) - 1494181296 >= 0)
  {
    v3 = *(v2 + 4) - 1494181296;
  }

  else
  {
    v3 = 1494181296 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 1494181296 >= 0)
  {
    v4 = *(*a1 + 4) - 1494181296;
  }

  else
  {
    v4 = 1494181296 - *(*a1 + 4);
  }

  v7[1] = v1 + 1564307779 * ((v7 + 671139632 - 2 * (v7 & 0x2800C730)) ^ 0xBF0D0B23) + 2036;
  v8 = v2;
  v5 = *(&off_100085FF0 + v1 - 60) - 8;
  (*&v5[8 * (v1 ^ 0x90B)])(v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_100021598@<X0>(uint64_t a1@<X8>)
{
  v8 = (LODWORD(STACK[0x51C]) ^ 0xFBD7B7DF) + 2125201152 + ((2 * LODWORD(STACK[0x51C])) & 0xF7AF6FBE);
  v9 = 1785193651 * ((((2 * v5) | 0x9667AAFA) - v5 + 885795459) ^ 0xD8EF395D);
  *(v7 - 160) = a1;
  *(v7 - 168) = v9 + 2 * v2 + (((v1 ^ 0x4CE) + 2013261399) ^ v2) - 1360343592;
  *(v7 - 148) = v8 ^ v9;
  *(v7 - 176) = STACK[0x278];
  v10 = STACK[0x280];
  *(v7 - 200) = v4;
  *(v7 - 192) = v10;
  *(v7 - 184) = v9 + v1 + 1421512155;
  v11 = (*(v6 + 8 * (v1 ^ 0x8E6)))(v7 - 200);
  v12 = *(v7 - 152);
  LODWORD(STACK[0x444]) = v12;
  v13 = *(v6 + 8 * ((2422 * (v12 == 972359704)) ^ v1));
  LODWORD(STACK[0x2B4]) = v3;
  return v13(v11);
}

uint64_t sub_100021A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *(v18 - 128) = (v15 + 319) ^ (((((v18 - 128) | 0xA94F27FD) - ((v18 - 128) & 0xA94F27FD)) ^ 0xF5027378) * v17);
  *(v18 - 120) = &a15;
  *(v18 - 112) = &a13;
  v19 = (*(v16 + 8 * (v15 + 1692)))(v18 - 128);
  return (*(v16 + 8 * (((*(v18 - 124) > 0x23B3030Du) * ((v15 + 869) ^ (v15 - 10) ^ 0x2BE)) ^ v15)))(v19);
}

uint64_t sub_100021AC8()
{
  *(v2 + 4) = v0;
  *(v5 - 144) = &v7;
  *(v5 - 136) = (v1 + 848) ^ (((((v5 - 144) | 0x88C1202A) - ((v5 - 144) & 0x88C1202A)) ^ 0x9B1DCC0A) * v3);
  *(v5 - 128) = v2;
  return (*(v4 + 8 * (v1 + 2265)))(v5 - 144);
}

uint64_t sub_100021F00@<X0>(uint64_t a1@<X1>, const char *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, int a6@<W8>, int8x16_t a7@<Q0>, int8x16_t a8@<Q1>, int32x4_t a9@<Q2>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v102 = *(v35 + 8 * a6);
  v42 = *(v40 - 156);
  v43 = *(v40 - 152);
  v45 = *(v40 - 148);
  v44 = *(v40 - 144);
  v46 = *(v40 - 132);
  if (v46 == 2)
  {
    v103 = vld4q_s8(a2);
    v82 = veorq_s8(v103.val[1], a7);
    _Q21 = vmovl_high_u8(v82);
    _Q20 = vmovl_u8(*v82.i8);
    v85 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v86 = vmovl_u8(*&veorq_s8(v103.val[2], a7)).u64[0];
    v103.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v103.val[3], a7)));
    v87 = vorrq_s8(vorrq_s8(vorrq_s8(v85, vshll_n_u16(v86, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v103.val[0], a7))), 0x18uLL)), v103.val[2]);
    v103.val[2] = veorq_s8(vandq_s8(v87, a8), (*&v103.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    *v33 = vaddq_s32(vsubq_s32(v87, vaddq_s32(v103.val[2], v103.val[2])), a9).u32[0];
    v88 = &v33[v37 + 662480027];
    v89 = *(v88 - 16);
    *v88 = v39 ^ __ROR4__(*(v88 - 8) ^ *(v88 - 3) ^ *(v88 - 14) ^ v89, 31);
    return (*(v35 + 8 * (((v34 ^ (v38 + 251)) == 662480028) | (4 * ((v34 ^ (v38 + 251)) == 662480028)) | 0x6A0u)))(v89, a1, a2, v42, a3, a4, a5, v43, a10, a11, a12, a13, a14, a15, a16, v102, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else if (v46 == 1)
  {
    v104 = vld4q_s8(a2);
    v47 = a1 + v41 + 196;
    v48 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v104.val[0], a7)));
    v49 = veorq_s8(v104.val[2], a7);
    _Q25 = vmovl_u8(*v49.i8);
    _Q24 = vmovl_high_u8(v49);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v104.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v104.val[3], a7))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v104.val[1], a7)), 8uLL), v48));
    v58 = veorq_s8(vandq_s8(v104.val[2], vdupq_n_s32(0x39F5081Fu)), (*&v48 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
    *v33 = vaddq_s32(vsubq_s32(v104.val[2], vaddq_s32(v58, v58)), a9).u32[0];
    v59 = v42 ^ v36;
    v60 = v44;
    v61 = *(&off_100085FF0 + v47 - 271) - 8;
    v62 = *(&off_100085FF0 + v47 - 303) - 4;
    v63 = (v43 & 0x5DC8EBB8 ^ 0x51004288 ^ (v43 ^ 0xF337468B) & (v44 ^ 0x510052CC) | v45 & 0xF2EDDB ^ 0xC0A950 ^ (v43 ^ 0xC3A54AF) & (v45 ^ v36)) + v59 + *&v62[4 * a18 + 4 * v37] + (v33[(v61[a18 + v37] - 69)] ^ v39);
    v64 = (v63 ^ 0xB3708599) & (2 * (v63 & 0xBB8021C1)) ^ v63 & 0xBB8021C1;
    v65 = ((2 * (v63 ^ 0x8570871B)) ^ 0x7DE14DB4) & (v63 ^ 0x8570871B) ^ (2 * (v63 ^ 0x8570871B)) & 0x3EF0A6DA;
    v66 = v65 ^ 0x210A24A;
    v67 = (v65 ^ 0x3C102440) & (4 * v64) ^ v64;
    v68 = ((4 * v66) ^ 0xFBC29B68) & v66 ^ (4 * v66) & 0x3EF0A6D8;
    v69 = (v68 ^ 0x3AC08240) & (16 * v67) ^ v67;
    v70 = ((16 * (v68 ^ 0x4302492)) ^ 0xEF0A6DA0) & (v68 ^ 0x4302492) ^ (16 * (v68 ^ 0x4302492)) & 0x3EF0A6D0;
    v71 = v69 ^ 0x3EF0A6DA ^ (v70 ^ 0x2E002400) & (v69 << 8);
    v72 = (v71 << 16) & 0x3EF00000 ^ v71 ^ ((v71 << 16) ^ 0x26DA0000) & (((v70 ^ 0x10F0825A) << 8) & 0x3EF00000 ^ 0xE500000 ^ (((v70 ^ 0x10F0825A) << 8) ^ 0x70A60000) & (v70 ^ 0x10F0825A));
    v73 = *(*(&off_100085FF0 + (v47 ^ 0x124)) + a18 + v37 - 12);
    v74 = (v73 + 1602598733) ^ (((v73 + 1602598733) ^ 0x603CD24Eu) - 1069114819);
    LOBYTE(v70) = (v73 + 77) ^ (((v73 + 77) ^ 0x4E) + 61) ^ (((v73 + 77) ^ 0xD) + 0x80) ^ (((v73 + 77) ^ 0x31) + 68) ^ (-(v73 + 77) - 115) ^ 0xED;
    v75 = (((v43 ^ 0x110BBEFF) - 285982463) ^ ((v43 ^ 0xF4388DFC) + 197620228) ^ ((v43 ^ 0xE9FB8A77) + 369390985)) + 905047894 + (((v63 ^ (2 * v72) ^ 0x8BC16C75) << (v70 & 0x14) << (v70 & 0xB)) | ((v63 ^ (2 * v72) ^ 0x8BC16C75) >> -v73));
    v76 = (v75 ^ 0xC686C89D) & (2 * (v75 & 0xD6D6CA1E)) ^ v75 & 0xD6D6CA1E;
    v77 = ((2 * (v75 ^ 0x43275C89)) ^ 0x2BE32D2E) & (v75 ^ 0x43275C89) ^ (2 * (v75 ^ 0x43275C89)) & 0x95F19696;
    v78 = v77 ^ 0x94109291;
    v79 = (v77 ^ 0x1E10000) & (4 * v76) ^ v76;
    v80 = ((4 * v78) ^ 0x57C65A5C) & v78 ^ (4 * v78) & 0x95F19694;
    return (*(v35 + 8 * ((125 * (a18 + 1 != v38)) ^ v47)))((((v80 ^ 0x15C01200) & (16 * v79) ^ v79 ^ 0x95F19697 ^ (((16 * (v80 ^ 0x80318483)) ^ 0x5F196970) & (v80 ^ 0x80318483) ^ (16 * (v80 ^ 0x80318483)) & 0x95F19690 ^ 0x15110000) & (((v80 ^ 0x15C01200) & (16 * v79) ^ v79) << 8)) << 16) ^ 0x16970000, v61, v74, v60, a3, v62, a5, v43, a10, a11, a12, a13, a14, a15, a16, v102, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
  }

  else
  {
    v90 = (((v42 ^ 0xA3431CC2) + 1555882814) ^ ((v42 ^ 0xA4BCD0E1) + 1531129631) ^ ((v42 ^ 0xB377557) - 188183895)) + (((*(v40 - 156) ^ 0x33721810) - 863115280) ^ ((*(v40 - 156) ^ 0xCDA5E08E) + 844767090) ^ ((*(v40 - 156) ^ 0xF21F41EA) + 232832534)) + 2011253149;
    v91 = (((v43 ^ 0xAEA5BE94) + 1364869484) ^ ((v43 ^ 0xBD21A7CA) + 1121867830) ^ ((v43 ^ 0x1F4CA02A) - 525115434)) + (((*(v40 - 152) ^ 0x744BCEC4) - 1951125188) ^ ((*(v40 - 152) ^ 0x3EC034DE) - 1052783838) ^ ((*(v40 - 152) ^ 0x4643436E) - 1178813294)) + 1784124952;
    *(v40 - 156) = v90 ^ ((v90 ^ 0xD18CAC8C) + 1883014599) ^ ((v90 ^ 0x112676FD) - 1332322376) ^ ((v90 ^ 0x511CF73B) - 257106318) ^ ((v90 ^ 0xCFF9FBFF) + 1850331830) ^ 0x52876FC1;
    *(v40 - 152) = v91 ^ ((v91 ^ 0x7E584CC0) - 782135280) ^ ((v91 ^ 0xFEF32AE4) + 1372255788) ^ ((v91 ^ 0xC7923AEB) + 1756096037) ^ ((v91 ^ 0x17FF7FFF) - 1194941647) ^ 0x5C0E9A44;
    v92 = (((v45 ^ 0xEED7B306) + 287853818) ^ ((v45 ^ 0x7BF18748) - 2079426376) ^ ((v45 ^ 0x99EE8D3A) + 1712419526)) + (((*(v40 - 148) ^ 0xD9270B7C) + 651752580) ^ ((*(v40 - 148) ^ 0x75E1E774) - 1977739124) ^ ((*(v40 - 148) ^ 0xA00E557C) + 1609673348)) + 1005235981;
    v93 = (((v44 ^ 0x6E6F4347) - 1852785479) ^ ((v44 ^ 0x5FEC4173) - 1609318771) ^ ((v44 ^ 0x3D4BBB40) - 1028373312)) + (((*(v40 - 144) ^ 0xE73545FA) + 415939078) ^ ((*(v40 - 144) ^ 0x7E788356) - 2121827158) ^ ((*(v40 - 144) ^ 0x95857FD8) + 1786413096)) + 1940001566;
    v94 = (v93 ^ 0x21CF1FAB) & (2 * (v93 & 0xA5EF5FCA)) ^ v93 & 0xA5EF5FCA;
    v95 = ((2 * (v93 ^ 0x68858FBB)) ^ 0x9AD5A0E2) & (v93 ^ 0x68858FBB) ^ (2 * (v93 ^ 0x68858FBB)) & 0xCD6AD070;
    v96 = v95 ^ 0x452A5011;
    v97 = (v95 ^ 0xC8408061) & (4 * v94) ^ v94;
    v98 = ((4 * v96) ^ 0x35AB41C4) & v96 ^ (4 * v96) & 0xCD6AD070;
    v99 = (v98 ^ 0x52A4040) & (16 * v97) ^ v97;
    v100 = ((16 * (v98 ^ 0xC8409031)) ^ 0xD6AD0710) & (v98 ^ 0xC8409031) ^ (16 * (v98 ^ 0xC8409031)) & 0xCD6AD070;
    v101 = v99 ^ 0xCD6AD071 ^ (v100 ^ 0xC4280000) & (v99 << 8);
    *(v40 - 148) = v92 ^ ((v92 ^ 0x4D7A9114) - 1864609073) ^ ((v92 ^ 0xE68E5C22) + 992518137) ^ ((v92 ^ 0xF6000EE8) + 732351795) ^ ((v92 ^ 0x7FADFFFB) - 1576322014) ^ 0x2E918551;
    *(v40 - 144) = v93 ^ (2 * ((v101 << 16) & 0x4D6A0000 ^ v101 ^ ((v101 << 16) ^ 0x50710000) & (((v100 ^ 0x942D061) << 8) & 0x4D6A0000 ^ 0x52A0000 ^ (((v100 ^ 0x942D061) << 8) ^ 0x6AD00000) & (v100 ^ 0x942D061)))) ^ 0xB332465C;
    return v102(3359670369, a1, a2, v42, a3, a4, a5, v43);
  }
}

void sub_1000226C8(int a1@<W8>)
{
  v3 = (((v1 ^ 0x89CC5361) + 1983098015) ^ ((v1 ^ 0x57D1E192) - 1473372562) ^ ((v1 ^ 0xD2D50B87) + 757789817)) + 1031522346 + (((*(v2 - 140) ^ 0xB2C51FEB) + 1295704085) ^ ((*(v2 - 140) ^ 0xCE7D25A4) + 830659164) ^ (a1 + (*(v2 - 140) ^ 0x7070833B) - 1886423861));
  *(v2 - 140) = v3 ^ ((v3 ^ 0x3E5586E5) - 499110823) ^ ((v3 ^ 0x9ADB3EA5) + 1187943449) ^ ((v3 ^ 0x789310EC) - 1534674350) ^ ((v3 ^ 0xFFF7FDEE) + 602036052) ^ 0x2F22EC36;
  JUMPOUT(0x100022814);
}

uint64_t sub_100022DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = -542396526 - 1388665877 * (((&a13 | 0x50BA22F9) - (&a13 & 0x50BA22F9)) ^ 0xDD174015);
  v16 = (*(v15 + 17952))(&a13);
  return (*(v15 + 8 * ((254 * (a14 == v14)) ^ 0x26F)))(v16);
}

void sub_100022F18()
{
  if (v0 == 1726759932)
  {
    v2 = 972359704;
  }

  else
  {
    v2 = -972401728;
  }

  *(v1 + 36) = v2;
}

uint64_t sub_100023074@<X0>(int a1@<W4>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29)
{
  v33 = *(&a17 + a2 + 72);
  v34 = ((v29 ^ (a1 - 103) ^ 0x26615817) & (2 * a2)) + (a2 ^ 0x7EFED7AE) + v30;
  *(v31 + v34) = (HIBYTE(v33) ^ 0xC) + (~(2 * (HIBYTE(v33) ^ 0xC)) | 0xB1) - 88;
  *(v31 + v34 + 1) = (BYTE2(v33) ^ 0xC8) - ((v33 >> 15) & 0x4E) - 89;
  *(v31 + v34 + 2) = (BYTE1(v33) ^ 0xB9) - ((2 * (BYTE1(v33) ^ 0xB9)) & 0x4E) - 89;
  *(v31 + v34 + 3) = v33 ^ 0xD3;
  return (*(v32 + 8 * ((862 * (a2 + 4 < a29)) ^ v29)))();
}

void sub_10002313C(_DWORD *a1)
{
  v1 = *a1 ^ (1037613739 * ((827773174 - (a1 | 0x3156D0F6) + (a1 | 0xCEA92F09)) ^ 0x1FAB0276));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100023260@<X0>(uint64_t a1@<X8>)
{
  v8 = (**(v7 + 8) ^ v3) - (**(v6 + 8) ^ v3);
  **(a1 + 8) = v8 + v3 - ((v5 + ((v2 - 992) | 0x240) - 756) & (2 * v8));
  return (*(v4 + 8 * ((413 * (v1 == 1)) ^ v2)))(0xFFFFFFFFLL);
}

uint64_t sub_100023354@<X0>(uint64_t a1@<X8>)
{
  v10 = v1 - 1 + (*(*(v8 + 8) + 4 * v2) ^ v5);
  *(*(a1 + 8) + 4 * v2) = v5 + (v4 ^ 0x3A1) + v10 - (v7 & (2 * v10)) - 322;
  return (*(v6 + 8 * (((v2 + 1 == v9) * v3) ^ v4)))(0xFFFFFFFFLL);
}

uint64_t sub_1000233BC@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v9 = (v8 - v3 + ((a1 + 34) ^ 0x58)) & 0xF;
  v12.val[0].i64[0] = v9;
  v12.val[0].i64[1] = (v8 - v3 + 14) & 0xF;
  v12.val[1].i64[0] = (v8 - v3 + 13) & 0xF;
  v12.val[1].i64[1] = (v8 - v3 + 12) & 0xF;
  v12.val[2].i64[0] = (v8 - v3 + 11) & 0xF;
  v12.val[2].i64[1] = (v8 - v3 + 10) & 0xF;
  v12.val[3].i64[0] = (v8 - v3 + 9) & 0xF;
  v12.val[3].i64[1] = (v8 - v3) & 0xF ^ 8;
  *(a2 + -7 - v3 + v8 + ((a1 + 1570) ^ 0xFFFFFFFFFFFFF958)) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v4 + -7 - v3 + v8 + ((a1 + 1570) ^ 0xFFFFFFFFFFFFF958)), *(v6 + v9 - 7)), veor_s8(*(v9 + v7 - 2), *(v9 + v5 - 5)))), 0xA7A7A7A7A7A7A7A7), vmul_s8(*&vqtbl4q_s8(v12, xmmword_1000799F0), 0x5959595959595959)));
  v10 = 8 - (v8 & 0x18) == -v3;
  return (*(v2 + 8 * ((2 * v10) | (8 * v10) | a1)))(v8 & 7, xmmword_1000799F0);
}

uint64_t sub_100023560()
{
  v4 = v0 - 1927655755;
  v5 = (v4 < 0xF9808875) ^ ((v3 - 1630951334) < 0xF9808875);
  v6 = v3 - 1630951334 > v4;
  if (v5)
  {
    v6 = (v3 - 1630951334) < 0xF9808875;
  }

  return (*(v1 + 8 * ((((203 * (((v2 - 312) | 0x208) ^ 0x361)) ^ 0x65A) * v6) | v2)))();
}

uint64_t sub_1000235F0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = ((v5 - a2 - 1468) ^ 0xFFFFFFFFFFFFFF33) + v4;
  v8 = *(v3 + v7 - 15);
  v9 = *(v3 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((1189 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v2 + v5 + 777))))();
}

uint64_t sub_1000236BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v76 = *(STACK[0x2A0] + 52);
  v77 = 210068311 * (((v73 | 0x9DF8A46D) - v73 + (v73 & 0x62075B90)) ^ 0xF2E9BC9);
  *(v75 - 176) = ((v71 ^ 0xFFF07FFB) + 2100297216 + ((v71 << ((v70 + 66) ^ 0xA9)) & 0xFFE0FFF6)) ^ v77;
  *(v75 - 160) = v77 + 705056782 + v76;
  *(v75 - 184) = &STACK[0x1898];
  *(v75 - 192) = v70 - v77 - 330;
  *(v75 - 188) = a70 ^ v77;
  *(v75 - 168) = STACK[0x288];
  *(v75 - 200) = v72;
  v78 = (*(v74 + 8 * (v70 + 2092)))(v75 - 200);
  v79 = *(v75 - 156);
  LODWORD(STACK[0x444]) = v79;
  v80 = *(v74 + 8 * ((250 * (v79 == 972359704)) ^ v70));
  LODWORD(STACK[0x2B4]) = v71;
  return v80(v78);
}

void sub_1000237D4(int a1@<W8>)
{
  v6 = ((v2 ^ 0x6D0) + 660) ^ 0x40000331 | v1;
  v7 = *(v3 + 4) + a1;
  v8 = *v3;
  *(*v3 + v7) = (HIBYTE(v6) ^ 0x2F) + (~(2 * (HIBYTE(v6) ^ 0x2F)) | 0xB1) - 88;
  *(v8 + v7 + 1) = (BYTE2(v6) ^ 0xF9) - ((2 * (BYTE2(v6) ^ 0xF9)) & 0x4E) - 89;
  *(v8 + v7 + 2) = (BYTE1(v6) ^ 0x75) - ((2 * (BYTE1(v6) ^ 0x75)) & 0x4E) - 89;
  *(v8 + v7 + 3) = v6 ^ 0x15;
  v9 = *v3;
  v10 = ((v4 ^ 0x5D42A4BE) - 1078196344) ^ v4 ^ ((v4 ^ 0xC5F7323E) + 654938376) ^ ((v4 ^ 0x5A4B3D28) - 1196057070) ^ ((v4 ^ 0xDFFFF76E) + 1023497304);
  v11 = ((2 * (a1 + *(v3 + 4) + 4)) & 0xF9F7B954) + ((a1 + *(v3 + 4) + 4) ^ 0x7CFBDCAA) - 2096880810;
  *(*v3 + v11) = (HIBYTE(v10) ^ 0x1D) + (~(2 * (HIBYTE(v10) ^ 0x1D)) | 0xB1) - 88;
  *(v9 + v11 + 1) = (BYTE2(v10) ^ 1) - ((2 * (BYTE2(v10) ^ 1)) & 0x4E) - 89;
  *(v9 + v11 + 2) = (BYTE1(v10) ^ 0x5C) - ((2 * (BYTE1(v10) ^ 0x5C)) & 0x4E) - 89;
  *(v9 + v11 + 3) = ((v4 ^ 0xBE) - 120) ^ v4 ^ ((v4 ^ 0x3E) + 8) ^ ((v4 ^ 0x28) + 18) ^ ((v4 ^ 0x6E) + 88) ^ 0x61;
  *(v3 + 4) = v5 - 486628542;
  sub_1000558CC();
}

uint64_t sub_100023E80(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = ((a12 ^ 0x65F5F0FD) - 709506519) ^ a12 ^ ((a12 ^ 0xFBC6CC6A) + 1267136192) ^ ((a12 ^ v13 ^ 0xAA720105) + 439500216) ^ ((a12 ^ (a3 + 34) ^ 0x7BFEF909) - 876690421);
  v16 = v14 == 1337967914 || (((16 * (a3 + 34)) ^ 0x7D6F) & v14) != 10;
  return (*(v12 + 8 * (((4 * v16) | (32 * v16)) ^ (a3 + 34))))();
}

uint64_t sub_1000241B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  LODWORD(STACK[0x400]) = -1244670490;
  LODWORD(STACK[0x398]) = 128;
  v60 = 1785193651 * ((((v59 - 200) | 0x880AA2D6) - (v59 - 200) + ((v59 - 200) & 0x77F55D28)) ^ 0x9BD64EF6);
  *(v59 - 184) = 1177225436 - v60;
  *(v59 - 176) = &STACK[0x398];
  *(v59 - 168) = (v57 - 308) ^ v60;
  *(v59 - 136) = a57 + 656;
  *(v59 - 128) = a57;
  *(v59 - 160) = a57 + 928;
  *(v59 - 152) = a53;
  *(v59 - 144) = 0;
  *(v59 - 192) = 0;
  v61 = (*(v58 + 8 * (v57 ^ 0xC67)))(v59 - 200);
  return (*(v58 + 8 * (((*(v59 - 200) == 972359704) * ((((v57 - 1190755642) & 0x46F97DAB) + 476) ^ 0xAA9)) ^ v57)))(v61);
}

uint64_t sub_10002468C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v8 = (STACK[0x3B0] + 31);
  a7[12] = ((a1 - 99) ^ 0x45) + (~(2 * ((a1 - 99) ^ 0x45)) | 0xB1) - 88;
  a7[13] = -89;
  a7[14] = -89;
  a7[15] = -90;
  *(v8 - 15) ^= *a7 ^ 0xA7;
  *(v8 - 14) ^= a7[1] ^ 0xA7;
  *(v8 - 13) ^= a7[2] ^ 0xA7;
  *(v8 - 12) ^= a7[3] ^ 0xA7;
  *(v8 - 11) ^= a7[4] ^ 0xA7;
  *(v8 - 10) ^= a7[5] ^ 0xA7;
  *(v8 - 9) ^= a7[6] ^ 0xA7;
  *(v8 - 8) ^= a7[7] ^ 0xA7;
  *(v8 - 7) ^= a7[8] ^ 0xA7;
  *(v8 - 6) ^= a7[9] ^ 0xA7;
  *(v8 - 5) ^= a7[10] ^ 0xA7;
  *(v8 - 4) ^= a7[11] ^ 0xA7;
  *(v8 - 3) ^= a7[12] ^ 0xA7;
  *(v8 - 2) ^= a7[13] ^ 0xA7;
  *(v8 - 1) ^= a7[14] ^ 0xA7;
  *v8 ^= a7[15] ^ 0xA7;
  return (*(v7 + 8 * (a1 + 734)))(2773032933, 4294967215, 182, 390, 175332898, 78);
}

uint64_t sub_100024888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = a18 - 362467034 > a15;
  if (a15 < a14 != a18 - 362467034 < ((v22 + 1607) ^ 0xEA652E44) + v22 + 2211)
  {
    v23 = a18 - 362467034 < ((v22 + 1607) ^ 0xEA652E44) + v22 + 2211;
  }

  return (*(v21 + 8 * ((25 * v23) ^ (v22 + 808))))(197, a2, 78, 486, a21);
}

uint64_t sub_100024D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(a56) = 0;
  LODWORD(STACK[0x400]) = -1244670722;
  v71 = &STACK[0x590] + a68;
  v72 = (v68 ^ 0x45BLL) + a68;
  STACK[0x520] = v72;
  *v71 = 0x6370646600;
  v71[8] = 1;
  STACK[0x220] = &STACK[0x590] + v72;
  v73 = ~(16 * (&STACK[0x590] + v72)) & 0x10;
  STACK[0x2D8] = STACK[0x3C8];
  STACK[0x228] = &STACK[0x590] + a68 + 9;
  v74 = *(v70 + 8 * (((((v68 ^ 0x78B) + 2139408456) & 0x807B37FF) - 1278) ^ (249 * (v68 ^ 0x2E8)) ^ v68 ^ 0x78B));
  STACK[0x2E8] = *(&off_100085FF0 + ((v68 ^ 0x78B) - 1187));
  STACK[0x2E0] = *(&off_100085FF0 + (v68 ^ 0x241)) - 4;
  return v74(a1, a2, a3, a4, &STACK[0x590] + a68 + 9, v73, 119, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v69, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a64 + 2304, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a64 + 2176, 0, &STACK[0x590] + a68 + 128, a56, &STACK[0x590] + a68, a58, a59, a60, a61, a62);
}

uint64_t sub_100024E98(uint64_t a1, int a2)
{
  v14 = (v12 + 4 * v8);
  v15 = HIDWORD(v3) + v5 * (*(v6 + 4 * v8) ^ v2) + (*v14 ^ v2) + HIDWORD(v4) + v7 * (*(v13 + 4 * v8) ^ (v2 + v11 + 1482 - 1875));
  *(v14 - 1) = v15 + v2 - (a2 & (2 * v15));
  return (*(v9 + 8 * (v11 | (2 * (v8 + 1 != v10)))))();
}

uint64_t sub_100024F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t (*a24)(void))
{
  v28 = (((v27 ^ 0xC0C7816E) + 1060667026) ^ ((v27 ^ 0x3E085CE8) - 1040735464) ^ ((v27 ^ 0xF20764F2) + 234396430)) + (((LODWORD(STACK[0x2C0]) ^ 0xC166D9D3) + 1050224173) ^ ((LODWORD(STACK[0x2C0]) ^ 0x66F2F76B) - 1727199083) ^ ((LODWORD(STACK[0x2C0]) ^ 0xAB5C97CC) + 1419995188)) + 872838907;
  v29 = (((v25 ^ 0x404449AC) - 1078217132) ^ ((v25 ^ 0x4D425412) - 1296192530) ^ ((v25 ^ 0x1CEA4CA) - 30319818)) + (((LODWORD(STACK[0x2C4]) ^ 0x3CE75113) - 1021792531) ^ ((LODWORD(STACK[0x2C4]) ^ 0xC10D9B37) + 1056072905) ^ ((LODWORD(STACK[0x2C4]) ^ 0xF1227350) + 249400496)) + 1909073635;
  v30 = (v29 ^ 0x37A66F41) & (2 * (v29 & 0xA7C74C05)) ^ v29 & 0xA7C74C05;
  v31 = ((2 * (v29 ^ 0x7F246F4B)) ^ 0xB1C6469C) & (v29 ^ 0x7F246F4B) ^ (2 * (v29 ^ 0x7F246F4B)) & 0xD8E3234E;
  v32 = v31 ^ 0x48212142;
  v33 = (v31 ^ 0x9002000C) & (4 * v30) ^ v30;
  v34 = ((4 * v32) ^ 0x638C8D38) & v32 ^ (4 * v32) & 0xD8E3234C;
  v35 = (v34 ^ 0x40800100) & (16 * v33) ^ v33;
  v36 = ((16 * (v34 ^ 0x98632246)) ^ 0x8E3234E0) & (v34 ^ 0x98632246) ^ (16 * (v34 ^ 0x98632246)) & 0xD8E32340;
  v37 = v35 ^ 0xD8E3234E ^ (v36 ^ 0x88222000) & (v35 << 8);
  LODWORD(STACK[0x2C0]) = v28 ^ ((v28 ^ 0xFBA9C86B) + 505623432) ^ ((v28 ^ 0x4826A3C3) - 1381214160) ^ ((v28 ^ 0xDC05F045) + 965675946) ^ ((v28 ^ 0x75FF9FFE) - 1871354861) ^ 0x16BDBD67;
  LODWORD(STACK[0x2C4]) = v29 ^ (2 * ((v37 << 16) & 0x58E30000 ^ v37 ^ ((v37 << 16) ^ 0x234E0000) & (((v36 ^ 0x50C1030E) << 8) & 0x58E30000 ^ 0x18C00000 ^ (((v36 ^ 0x50C1030E) << 8) ^ 0x63230000) & (v36 ^ 0x50C1030E)))) ^ 0x1A4DB3ED;
  v38 = (((v26 ^ 0xDCDDFA6B) + 589432213) ^ ((v26 ^ 0x68931EA0) - 1754472096) ^ ((v26 ^ 0xB8865DBF) + 1199153729)) + (((LODWORD(STACK[0x2C8]) ^ 0x230BFD39) - 587988281) ^ ((LODWORD(STACK[0x2C8]) ^ 0x75758351) - 1970635601) ^ ((LODWORD(STACK[0x2C8]) ^ 0x5AB6C71C) - 1521927964)) + 1995407564;
  v39 = (((v24 ^ 0x74685B8) - 122062264) ^ ((v24 ^ 0x4BF6F872) - 1274476658) ^ ((v24 ^ 0x4078C4BE) - 1081656510)) + (((LODWORD(STACK[0x2CC]) ^ 0xDF4254D) - 234104141) ^ ((LODWORD(STACK[0x2CC]) ^ 0x6A9240B2) - 1787969714) ^ ((LODWORD(STACK[0x2CC]) ^ 0x6BAEDC8B) - 1806621835)) + 1169113745;
  v40 = (v39 ^ 0xC3E0BA56) & (2 * (v39 & 0xD3E23057)) ^ v39 & 0xD3E23057;
  v41 = ((2 * (v39 ^ 0xE4209AFE)) ^ 0x6F855552) & (v39 ^ 0xE4209AFE) ^ (2 * (v39 ^ 0xE4209AFE)) & 0x37C2AAA8;
  v42 = v41 ^ 0x1042AAA9;
  v43 = v40 ^ 0x37C2AAA9 ^ (v41 ^ 0x7800000) & (4 * v40);
  v44 = ((4 * v42) ^ 0xDF0AAAA4) & v42 ^ (4 * v42) & 0x37C2AAA8;
  v45 = v44 & 0x80D45E4 ^ v43 ^ (v44 ^ 0x1702AAA9) & ((16 * v43) ^ 0x7427EF74);
  v46 = ((16 * v44) ^ 0x7827EFE4) & (v44 ^ 0x1702AAA9) ^ v44 & 0x80D45E4;
  v47 = v46 & 0x80D45E4 ^ v45 ^ ((v45 << 8) ^ 0xCAA74CE4) & (v46 ^ 0xA9);
  LODWORD(STACK[0x2C8]) = v38 ^ ((v38 ^ 0xE728F2B7) + 1166606509) ^ ((v38 ^ 0x2FA0F64B) - 1929313199) ^ ((v38 ^ 0x6809E7B6) - 894954066) ^ ((v38 ^ 0xFDDFEEAE) + 1602100406) ^ 0x5196B490;
  LODWORD(STACK[0x2CC]) = v39 ^ (2 * (v47 ^ (((v46 << 8) ^ 0x80DE5E4) & (v46 ^ 0xA9) ^ v46 & 0x80D45E4) & 0x80D45E4 ^ ((v47 << 16) ^ 0xA2A445E6) & (((v46 << 8) ^ 0x80DE5E4) & (v46 ^ 0xA9) ^ v46 & 0x80D45E4 ^ 0x37C20000) ^ ((v47 << 16) ^ 0xA2A445E6) & 0x37C200A0)) ^ 0xB0AFDD31;
  return a24();
}

uint64_t sub_100024FF4@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, unint64_t *, uint64_t))
{
  v15 = 2066391179 * ((v14 + 299908024 - 2 * ((v14 - 176) & 0x11E03C68)) ^ 0xBEC7BE70);
  *(v14 - 168) = a1;
  *(v14 - 176) = a2 - v15 + 344;
  *(v14 - 172) = 2083296428 - v15;
  v16 = (*(v13 + 8 * (a2 + 2313)))(v14 - 176);
  return a13(v16, &STACK[0x22C], 78);
}

uint64_t sub_10002507C()
{
  v4 = v2 + 1120;
  if ((v1 - 1) >> 32)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((v4 - 97863309) & 0x5D5471E ^ 0xFFFFF8E8) - v0 >= v1 - 1;
  }

  v6 = !v5;
  return (*(v3 + 8 * ((90 * v6) ^ v4)))();
}

uint64_t sub_1000251E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = (v4 + 1014) - v3 - 1010;
  v9 = *(a3 + v8 - 15);
  v10 = *(a3 + v8 - 31);
  v11 = v6 + v8;
  v12.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v12.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v13.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v13.i64[1] = 0xA8A8A8A8A8A8A8A8;
  *(v11 - 15) = vaddq_s8(vaddq_s8(v9, v13), vmvnq_s8(vandq_s8(vaddq_s8(v9, v9), v12)));
  *(v11 - 31) = vaddq_s8(vaddq_s8(v10, v13), vmvnq_s8(vandq_s8(vaddq_s8(v10, v10), v12)));
  return (*(v7 + 8 * (((v3 != 96) * v5) ^ v4)))();
}

uint64_t sub_1000252F4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v64 = a1 + v59;
  *(v63 - 200) = (v59 - 224640684) ^ (1785193651 * ((2 * ((v63 - 200) & 0x1ABA3B0) - (v63 - 200) - 28025782) ^ 0xED88B06A));
  (*(v62 + 8 * (a1 + v59 + 2344)))(v63 - 200);
  if (((v60 - v59) | (v59 - v60)) > ((v64 + 391) | 0x420) - 1449)
  {
    v65 = 86;
  }

  else
  {
    v65 = 87;
  }

  *(v63 - 200) = (v59 ^ 0xC3) - -77 * ((v63 + 56) ^ 0x20) + v65;
  *(v63 - 196) = (v64 + 952) ^ (1785193651 * ((v63 - 200) ^ 0x13DCEC20));
  *(v63 - 184) = a58;
  *(v63 - 176) = a59;
  v66 = (*(v62 + 8 * (v59 ^ (v61 + 1739))))(v63 - 200);
  return sub_100047380(v66);
}

uint64_t sub_1000253E0(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = -15;
  }

  else
  {
    v2 = -17;
  }

  *(a1 + 88) = ((**(a2 + 8) != 0) ^ 0x53) + v2;
  return 0;
}

uint64_t sub_100025448@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6, unsigned int a7)
{
  v11 = ((-2076228419 - (&a3 | 0x843F44BD) + (&a3 | 0x7BC0BB42)) ^ 0xAAC2963D) * a1;
  a3 = v11 + 262583610;
  a6 = (v10 + 244) ^ v11;
  a7 = 486628562 - v11;
  a4 = v7;
  a5 = &a2;
  v12 = (*(v8 + 8 * (v10 + 1826)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v9) * ((((v10 + 76990664) & 0xFB6937FE) - 647) ^ (5 * (v10 ^ 0x200)))) ^ v10)))(v12);
}

void sub_100025514(uint64_t a1)
{
  v1 = 2066391179 * (((a1 | 0x20DD57A5) - (a1 & 0x20DD57A5)) ^ 0x8FFAD5BD);
  v2 = *(*(a1 + 8) + 12) + 2089713947;
  v3 = (*(a1 + 4) ^ v1) - 1584428433;
  v4 = (v3 < 0xA596087F) ^ (v2 < 0xA596087F);
  v5 = v2 < v3;
  if (v4)
  {
    v5 = v3 < 0xA596087F;
  }

  __asm { BRAA            X11, X17 }
}

uint64_t sub_10002565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  v27 = 843532609 * (((&a17 | 0x5F5F372) - &a17 + (&a17 & 0xFA0A0C88)) ^ 0x59B8A7F7);
  HIDWORD(a18) = v23 - ((2 * v23) & 0x15776F42) - v27 - 1967409247;
  LODWORD(a19) = v27 ^ 0x5C7;
  a17 = a14;
  (*(v25 + 18840))(&a17);
  v28 = 1037613739 * (&a17 ^ 0xD1022D7F);
  a18 = a14;
  a19 = v21;
  a20 = v28 ^ 0x131;
  a21 = (v22 ^ 0x6FEBBAF6) + v28 - 1635911808;
  (*(v25 + 19072))(&a17);
  v29 = 1037613739 * (((&a17 | 0xDBFB7556) - &a17 + (&a17 & 0x24048AA8)) ^ 0xAF95829);
  a20 = v29 ^ 0x131;
  a21 = ((2 * v26) & 0xBDF776EC) + (v26 ^ 0x5EFBBB76) - 1351747840 + v29;
  a18 = a14;
  a19 = v24;
  v30 = (*(v25 + 19072))(&a17);
  return (*(v25 + 8 * ((223 * (a17 != 972359704)) ^ 0x15Eu)))(v30);
}

uint64_t sub_100025980@<X0>(int a1@<W8>)
{
  v5 = v1 + a1;
  v6 = **(&off_100085FF0 + v1 + a1 - 517);
  v7 = 143681137 * ((((v4 - 152) | 0x18F845A27F2F7E20) - ((v4 - 152) & 0x18F845A27F2F7E20)) ^ 0xA97177161E77F5F0);
  *(v4 - 112) = v7;
  *(v3 + 1072) = v6 - v7;
  *(v4 - 144) = (a1 + 2078544719) ^ v7;
  *(v4 - 140) = a1 + 511999040 - v7;
  *(v4 - 152) = (a1 + 511999114) ^ v7;
  *(v4 - 148) = ((a1 + 511999040) | 4) + v7;
  *(v3 + 1056) = v7;
  v8 = (*(v2 + 8 * (v5 + 1752)))(v4 - 152);
  return (*(v2 + 8 * *(v4 - 128)))(v8);
}

uint64_t sub_10002598C()
{
  *(v2 - 184) = &STACK[0x5085E76DB9DAF690];
  *(v2 - 176) = &STACK[0x7E1AE0F446D033F1];
  *(v2 - 200) = 86 - -77 * (((~(v2 + 56) | 0x36) + ((v2 + 56) | 0xC9)) ^ 0xE8);
  *(v2 - 196) = (v0 + 668) ^ (1785193651 * (((~(v2 - 200) | 0x10E18F36) + ((v2 - 200) | 0xEF1E70C9)) ^ 0xFCC29CE8));
  v3 = (*(v1 + 8 * (v0 + 2097)))(v2 - 200);
  v4 = *(v2 - 192);
  LODWORD(STACK[0x444]) = v4;
  return (*(v1 + 8 * ((52 * (v4 != (((v0 - 273) | 0x421) ^ 0x39F50C35))) ^ v0)))(v3);
}

void sub_100025F10(_DWORD *a1)
{
  v5 = v4 + v1;
  *a1 = v5 + 1;
  v6 = a1 + 1;
  *(v6 + v2) = v3;
  *(v6 + v1) = 47;
  *(v6 + v5) = 61;
  *(v6 + v5 + 1) = 0;
  JUMPOUT(0x10004CE60);
}

uint64_t sub_100026134@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v1 - 1 - 31);
  v6 = v3 + v1 - 1;
  *(v6 - 15) = *(a1 + v1 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((31 * (17 * ((v2 + 1250) ^ 0x581u) - 665 == (v1 & 0xFFFFFFE0))) ^ (v2 + 579))))();
}

uint64_t sub_1000261D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, int a17, uint64_t a18)
{
  a15 = v22 + 843532609 * ((&a15 + 1141174831 - 2 * (&a15 & 0x4404F22F)) ^ 0x1849A6AA) + 606;
  a16 = a11;
  a18 = v18;
  v23 = (*(v20 + 8 * (v22 + 1556)))(&a15);
  return (*(v20 + 8 * (((a17 == v19) * ((((v22 - 804) | 0x320) - 1711266724) ^ (v21 + 2062))) ^ v22)))(v23);
}

uint64_t sub_1000262B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v18 - 128) = &a15;
  *(v18 - 120) = a14;
  *(v18 - 136) = (v17 + 70) ^ (((~((v18 - 136) | 0xAA17C6F5) + ((v18 - 136) & 0xAA17C6F5)) ^ 0x9A56D8F) * v15);
  v19 = (*(v16 + 8 * (v17 ^ 0xBE5)))(v18 - 136);
  return (*(v16 + 8 * ((2007 * (*(v18 - 132) == (((v17 - 289) | 0x4E0) ^ 0x23B305FD))) ^ v17)))(v19);
}

uint64_t sub_100026360(uint64_t a1)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  v6 = v5 == (v2 - 656) - 792;
  return (*(v4 + 8 * (((8 * v6) | (v6 << 8)) ^ (v2 - 723))))();
}

uint64_t sub_100026398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 == ((v7 + 1132) ^ 0x74C))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return (*(v9 + 8 * ((v10 * ((v7 ^ 0x89) - 605)) ^ v7)))();
}

uint64_t sub_1000268E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 - 132);
  if (v13 == 2)
  {
    return (*(v10 + 8 * ((969 * (*(v11 - 136) != v12 + a2 - 241)) ^ (v12 + a2))))(a10, -659594938);
  }

  if (v13 == 1)
  {
    return (*(v10 + 8 * (((*(v11 - 136) == 0) * (a2 + v12 - 194)) ^ (a2 + v12 - 19))))(a10, -659594938);
  }

  return sub_1000269B8(a1, -659594938);
}

uint64_t sub_1000269B8@<X0>(char a1@<W1>, int a2@<W8>)
{
  v9 = v5 - v2;
  *(v9 + 91) = ((v2 + v3) ^ v4) * (v2 + v3 + 17);
  *(v9 + 90) = ((v8 + a2 + a1 - 38) ^ (v2 + v3)) * (v2 + v3 + 18);
  return (*(v7 + 8 * (((v2 == 90) * v6) ^ a2)))(0);
}

void sub_100026A10(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((~a1 & 0xB8C3CEDE | a1 & 0x473C3121) ^ 0x69C1E3A1));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100026AD0@<X0>(uint64_t a1@<X8>)
{
  v8 = (*(*(v5 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = (v8 - ((2 * v8) & 0xA6E310F0) - 747534216) ^ 0x4B32F393;
  return (*(v7 + 8 * ((1716 * (v6 > (((17 * (v3 ^ 0x64D)) ^ 0x84C) + v2))) ^ ((v3 ^ 0x66C) + 328))))(2017545039);
}

uint64_t sub_100026BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v9 ^ 0x74;
  v14 = (a3 + (v9 ^ 0x74) + a8 + 800) | v11;
  v15 = v8 + 1;
  if (v10)
  {
    v16 = v15 == 200;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  return (*(v12 + 8 * ((((v17 ^ ((v13 + a8) & a3)) & 1) * (v14 - 1932)) ^ v13)))();
}

uint64_t sub_100026C88@<X0>(int a1@<W8>, uint64_t a2, int a3, unsigned int a4, int a5, int a6)
{
  v7 = (((a6 ^ 0xD1E6244D) + 773446579) ^ ((a6 ^ 0x1449BED4) - 340377300) ^ (((((a1 + 462143511) & 0xE474399D) - 61173504) ^ a6) + 61173119)) - 1759074296;
  v8 = v7 < 0x5D319FF0;
  v9 = v7 > a4 + 1563533296;
  if (a4 > 0xA2CE600F != v8)
  {
    v9 = v8;
  }

  return (*(v6 + 8 * (((4 * !v9) | (16 * !v9)) ^ a1)))();
}

uint64_t sub_100026D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unsigned int a38, uint64_t a39, int a40, uint64_t a41, uint64_t a42)
{
  v47 = (681 * (v44 ^ 0x447u) - 0x3BF5368C43002049) ^ __ROR8__(__ROR8__(a8, 37) ^ 0x714465D33AFA5C0FLL, 27);
  v48 = (v47 - (((v44 + 224) + 0x17318B8F44813641) & (2 * v47)) - 0x74673A385DBF624DLL) ^ a2;
  v49 = v45 ^ a37 ^ 0x5E8CC683F9A37215;
  v50 = v47 ^ v46 ^ 0x3AE2EC8A0DA5A276;
  v51 = (v49 + v42 - 2 * (v49 & 0x267505BF27BB3B3FLL ^ (v45 ^ a37) & 0x22)) ^ v43;
  v52 = v51 ^ 0x629A61E2FE92CDE4;
  v53 = v48 ^ 0x8ABB7B075CE8A96ELL ^ (v51 ^ 0x629A61E2FE92CDE4) & (v45 ^ a37 ^ 0xA173397C065C8DEALL);
  v54 = v47 & (v46 ^ 0xC51D1375F25A5D89);
  v55 = (v51 ^ 0x9D659E1D016D321BLL) & (v46 ^ 0x3AE2EC8A0DA5A276);
  v56 = (v53 ^ v49) & 1;
  if ((v56 & v55) != 0)
  {
    v56 = -v56;
  }

  v57 = (v53 ^ v49) & 0xFFFFFFFFFFFFFFFELL ^ 0x8ABEF87C8808CCB5 ^ (v56 + v55);
  v58 = v54 ^ v52;
  v59 = (v57 ^ (8 * v57) | (v57 >> 61)) ^ (v57 >> 39) ^ ((v57 >> 61) & v57 | (v57 << 25));
  v60 = v48 ^ 0x754484F8A3175691;
  v61 = (v48 ^ 0x8ABB7B075CE8A96ELL | ~v50) - (v48 ^ 0x754484F8A3175691 ^ v50);
  v62 = v60 & v49 ^ v50;
  v63 = v62 ^ 0xB73927F7504FC0F2 ^ ((v62 ^ 0xB73927F7504FC0F2) >> 7);
  v64 = v53 ^ v62 ^ 0xF38BFF733C051F6;
  v65 = v58 ^ 0x92CFC162FD513143 ^ ((v58 ^ 0x92CFC162FD513143) >> 1) ^ (((v58 ^ 0x92CFC162FD513143) >> 6) | ((v58 ^ 0x92CFC162FD513143) << 63)) ^ (v59 + ((v58 ^ 0x92CFC162FD513143) << 58) - 2 * (v59 & ((v58 ^ 0x92CFC162FD513143) << 58)));
  v66 = v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58 ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) >> 10) ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) << 47) ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) >> 17) ^ ((v46 ^ v61 ^ 0x8B7D0EBE2630C5A1 ^ v58) << 54);
  *(&v67 + 1) = v62 ^ 0xB73927F7504FC0F2;
  *&v67 = v62;
  v68 = ((v62 ^ 0xB73927F7504FC0F2) << 57) ^ ((v62 ^ 0xB73927F7504FC0F2) << 23) ^ __ROR8__((v67 >> 44) & 0xE0000000000FFFFFLL ^ __ROR8__(v63, 3) ^ 0xAFA235EACE6B4032, 61) ^ 0x7D11AF5673019D05;
  v69 = v64 ^ __ROR8__(v64, 19) ^ (v64 << 36) ^ (v64 >> 28) ^ v68;
  v70 = v68 ^ v66;
  v71 = v69 & ~v70;
  v72 = v66 & ~v65;
  v73 = (~(2 * v69) + v69) & v59;
  v74 = v65 & ~v59 ^ v69;
  v75 = v65 ^ (__ROR8__(__ROR8__(v66, 62) ^ 0x25DA1EB034059543, 2) ^ 0x36897853F2FE9AAFLL) & v70;
  if ((v73 & &_mh_execute_header & v70) != 0)
  {
    v76 = -(v73 & &_mh_execute_header);
  }

  else
  {
    v76 = v73 & &_mh_execute_header;
  }

  v77 = (v76 + v70) ^ v73 & 0xFFFFFFFEFFFFFFFFLL;
  v78 = v59 ^ v72 ^ v74 ^ 0x5747C156E755AED6;
  v79 = (v75 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v80 = v77 ^ 0x9A383CF881807545;
  v81 = (v77 ^ 0x9A383CF881807545) << (v79 & 0x17);
  v82 = v74 ^ v77;
  v83 = v82 ^ 0xAC7C0FF4012565E3;
  v84 = v66 ^ 0x28FA59BDD48D0B6 ^ v71 ^ v75;
  v85 = v78 ^ __ROR8__(v78, 61) ^ (v78 << 25) ^ (v78 >> 39);
  if ((v82 & 0x8000) != 0)
  {
    v86 = -32768;
  }

  else
  {
    v86 = 0x8000;
  }

  v87 = v86 + v83;
  v88 = v84 ^ __ROR8__(v84, 10) ^ (v84 << 47) ^ (v84 >> 17);
  v89 = v80 ^ (v80 >> 7) ^ ((v80 >> 41) | (v80 << 57)) ^ (v81 << (v79 & 0x17 ^ 0x17));
  *(&v90 + 1) = v75 ^ 0x6F45779FA95FC03ALL;
  *&v90 = v75;
  v91 = v79 ^ (v90 >> 6) ^ ((v75 ^ 0x6F45779FA95FC03ALL) & 0x9B6535C14F352826 ^ (v75 << 63) | (v75 ^ 0x6F45779FA95FC03ALL) & 0x649ACA3EB0CAD7D9) ^ v85;
  v92 = v83 ^ (v83 >> 19) ^ (v87 >> 28) ^ ((v87 ^ 0x8000) << 36) ^ ((v87 ^ 0x8000) << 45) ^ v89;
  v93 = v89 ^ v88;
  v94 = v91 ^ 0x1BD15DE7EA57F00 ^ v89 & ~v88;
  v95 = v92 ^ (v91 ^ 0x1BD15DE7EA57F00) & ~v85;
  v96 = v85 & ~v92 ^ v93;
  v97 = v95 + v85 - 2 * (v92 & v85);
  v98 = (v63 >> 3) & 1;
  v99 = v95 ^ 0x6E04C15915AB860ALL ^ v96;
  v100 = v99 >> 19;
  *(&v90 + 1) = (v99 >> 19) & v99 & 0x1A36E0206AEDLL ^ (v99 >> 28) ^ (((v99 >> 19) | v99) & 0xD8807A36E0206AEDLL | (v99 >> 19) & 0x5C91FDF9512 ^ v99 & 0x277F85C91FDF9512);
  *&v90 = (v99 << 36) ^ (v99 << 45) ^ *(&v90 + 1);
  v101 = v97 ^ (v91 ^ 0xFE42EA21815A80FFLL) & v88;
  v102 = v94 ^ v88 ^ ((v93 - ((2 * v93) & 0x4BCF7563A6B4D67ELL) - 0x5A18454E2CA594C1) ^ 0x5A18454E2CA594C0) & v92 ^ 0x7370AC685030CB36;
  v103 = (v101 >> 39) ^ (v101 >> 61) ^ (8 * (v101 ^ 0x3278F838FE43D2BCLL)) ^ (33554433 * (v101 ^ 0x3278F838FE43D2BCLL) - (((v101 ^ 0x3278F838FE43D2BCLL) << 26) & (2 * (v101 ^ 0x3278F838FE43D2BCLL))));
  v104 = v103 ^ 0x64F1F1;
  v105 = v96 ^ 0x26974B18501E2B14 ^ ((v96 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v96 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v96 ^ 0x26974B18501E2B14) << 23) ^ ((v96 ^ 0x26974B18501E2B14) << 57);
  v106 = v94 ^ 0x7955EAEC4D48B80CLL ^ (v94 << 63) ^ __ROR8__(v94 ^ 0x7955EAEC4D48B80CLL, 6) ^ ((v94 ^ 0x7955EAEC4D48B80CuLL) >> v98 >> (v98 ^ 1u));
  v107 = v103 ^ 0x64F1F1 ^ v106;
  v108 = (v102 >> 17) ^ __ROR8__(v102, 10) ^ __ROR8__(__ROR8__(v102, 14) & 0xFFFC000000000007 ^ __ROR8__(v102, 61), 3);
  *&v90 = __ROR8__(__ROR8__(v105, 7) ^ __ROR8__(__ROR8__(v90 >> 7, 63) ^ 0x24269CE77F144ED3, 1) ^ 0xD364F86CD0CA304BLL, 57);
  v109 = v105 & ~v108 ^ v107;
  v110 = v90 ^ 0xBBDB0FB7A00B9120 ^ (v103 ^ 0xFFFFFFFFFF9B0E0ELL) & v106;
  v111 = v103 ^ (((v107 ^ 0xCC3347B5E5FE3FB3) & 0x10000000000 | 0x33CCB84A1A01C04CLL) ^ (v107 ^ 0xCC3347B5E5FE3FB3) & 0xFFFFFEFFFFFFFFFFLL) & v108 ^ 0x425764BB58132BD4 ^ v110;
  v112 = (v90 ^ 0x4424F0485FF46EDFLL) & v104 ^ v108 ^ v105;
  v113 = (v112 ^ -v112 ^ (0x70C7A8D3F3643DFDLL - (v112 ^ 0x70C7A8D3F3643DFDLL))) + 0x70C7A8D3F3643DFDLL;
  v114 = v110 ^ 0x97F6A7E5F6E8F58ALL ^ v112;
  v115 = v108 ^ 0x44C9D571A5C4A51CLL ^ v109 ^ (v90 ^ 0xBBDB0FB7A00B9120) & ~(v108 ^ v105);
  v116 = v109 ^ 0xD3DA1E3360BF843ALL ^ ((v109 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v109 ^ 0xD3DA1E3360BF843ALL) >> 6);
  v118 = __ROR8__(__ROR8__(v111, 62) & 0xFFFFFE0000000003 ^ __ROR8__(v111 ^ (8 * v111) ^ ((v111 >> 61) | (v111 << 25)), 23) ^ 0x735302FC48340548, 41);
  v119 = (v113 >> 7) ^ (v113 >> 41) ^ (v113 << 23) ^ (v113 << 57);
  v120 = v119 ^ v113;
  v121 = v114 ^ (v114 >> 28) ^ (v114 >> 19) ^ (v114 << 36) ^ (v114 << 45) ^ v119 ^ v113;
  v122 = v116 & 0xFFFFFFF7FFFFFFFFLL ^ (v109 << 63) ^ (v116 & 0x800000000 | ((v109 ^ 0xD3DA1E3360BF843ALL) << (v100 & 0x12) << (v100 & 0x12 ^ 0x3A))) ^ v118;
  if (v119 == v113)
  {
    v123 = 0;
  }

  else
  {
    v123 = v115 << 47;
  }

  v124 = v118 ^ 0x7E241A02A439A981;
  v117 = (v115 ^ (v115 >> 10) | (v115 << 54)) ^ (v115 << 54) & v115;
  v125 = (v123 ^ v117 | (v115 << 47)) ^ (v117 & (v115 << 47) & 0xFFFF800000000000 | (v115 >> 17));
  v126 = v122 ^ 0x7E241A02A439A981;
  v127 = v125 ^ v120 ^ v124 & ~v121;
  v128 = (~(2 * v124) + v124) & (v122 ^ 0x7E241A02A439A981) ^ v121;
  v129 = v127 ^ v128;
  v130 = v127 ^ v128 ^ 0x93C23431B76D41FLL;
  *(&v131 + 1) = v130;
  *&v131 = v127 ^ v128;
  v132 = v124 ^ 0x6005BE354A5BB0B2 ^ v128 ^ v125 & (v122 ^ 0x81DBE5FD5BC6567ELL);
  v133 = v120 & ~v125 ^ v126;
  v134 = v121 & ~(v125 ^ v120) ^ v125 ^ v133;
  v135 = (v131 >> 62) ^ (4 * (v130 >> 28)) ^ 0x406FF36C296024B3;
  v136 = (v132 << (v120 & 3) << (v120 & 3 ^ 3)) ^ v132 ^ ((v132 >> 39) ^ (v132 >> 61) | (v132 << 25));
  *(&v131 + 1) = v130;
  *&v131 = v129;
  v137 = ((v131 >> 19) ^ __ROR8__(v135, 2) ^ 0xD01BFDFC8E306A42) + 1939274075;
  v138 = v133 ^ 0x6DC4FB0BD4FFFF44 ^ ((v133 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ (((v133 ^ 0x6DC4FB0BD4FFFF44) >> 1) ^ ((v133 ^ 0x6DC4FB0BD4FFFF44) >> 6) | (v133 << 63));
  v139 = v127 ^ 0x2DB5B6AF87F64351 ^ ((v127 ^ 0x2DB5B6AF87F64351) >> 7) ^ ((v127 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v127 ^ 0x2DB5B6AF87F64351) << 57) ^ ((v127 ^ 0x2DB5B6AF87F64351) >> 41);
  v140 = __ROR8__(v134 ^ 0xF374A001D380BDC2, 17) ^ ((v134 ^ 0xF374A001D380BDC2) >> 10) ^ (((v134 ^ 0xF374A001D380BDC2) << 54) | (v134 ^ 0xF374A001D380BDC2) & 0xFFFFFFFFFFFFFFDFLL) ^ (((v134 ^ 0xF374A001D380BDC2) << 54) & (v134 ^ 0xF374A001D380BDC2) | v134 & 0x20);
  v141 = v139 ^ (v130 << 36) ^ (((2 * v137) & 0xFFFFFFFF18D20D4ALL) + (v137 ^ 0xFFFFFFFF8C6906A5));
  v142 = v141 ^ v138 & ~v136;
  v143 = v136 & ~v141 ^ v140 ^ v139;
  v144 = v136 ^ v140 & ~(v136 ^ v138) ^ 0x62030E578F798D5ALL ^ v142;
  *(&v131 + 1) = (v143 ^ -v143 ^ (v142 - (v143 ^ v142))) + v142;
  *&v131 = *(&v131 + 1) ^ 0x69309AC4CAE2F93;
  return (*(a42 + 8 * (v44 ^ (13 * (a38 > 2 * (a40 & 1) + (a40 ^ 1u))))))(a1, *(&v131 + 1) ^ 0x69309AC4CAE2F93 ^ __ROR8__(*(&v131 + 1) ^ 0x69309AC4CAE2F93, 19) ^ (v131 >> 28), a3, (8 * v144) ^ (v144 >> 39) ^ ((v144 >> 61) | v144) ^ ((v144 >> 61) & v144 | (v144 << 25)));
}

void sub_1000279CC(_DWORD *a1)
{
  v1 = *a1 ^ (210068311 * ((a1 & 0x333F3DED | ~(a1 | 0x333F3DED)) ^ 0x5E16FDB6));
  __asm { BRAA            X13, X17 }
}

void sub_100027C4C(uint64_t a1)
{
  v1 = 1361651671 * ((a1 - 2 * (a1 & 0x40C2D223) + 1086509603) ^ 0x93E022AF);
  if (*(a1 + 32))
  {
    v2 = *a1 - v1 == 688359268;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100027ED4@<X0>(uint64_t a1@<X7>, uint64_t a2@<X8>)
{
  v8 = (v4 - 214) | 0xD0;
  v9 = (v3 ^ 0xFFFFFFFFFFFFFEC6 ^ v8 ^ 0x5E8u) + v2;
  *(a2 - 7 + v9) = vadd_s8(vsub_s8(*(a1 - 7 + v9), vand_s8(vadd_s8(*(a1 - 7 + v9), *(a1 - 7 + v9)), v6)), v7);
  LODWORD(v9) = ((v8 ^ 0xFFFFFB29) & v2) - 8 != v3;
  return (*(v5 + 8 * (((2 * v9) | (4 * v9)) ^ v8)))();
}

uint64_t sub_100027FB8@<X0>(unsigned int a1@<W8>)
{
  v8 = (v3 - 2);
  v9 = v2 + 2;
  *v8 = (v9 ^ v5) * (v9 + 17);
  *(v8 - 1) = (v9 + v6) * (v9 ^ 0xBB);
  return (*(v7 + 8 * ((v4 != 2) | ((v4 != 2) << 6) | a1)))();
}

uint64_t sub_10002800C@<X0>(int a1@<W4>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q3>)
{
  v8 = (v7 + v4);
  v9 = vaddq_s8(vsubq_s8(v8[1], vandq_s8(vaddq_s8(v8[1], v8[1]), a4)), a3);
  *v5 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a4)), a3);
  v5[1] = v9;
  return (*(v6 + 8 * (a1 + a2 + 985)))();
}

uint64_t sub_100028110@<X0>(int a1@<W4>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v62 = v60[396] ^ ((*v60 & (v61 + a2 - 1768863086) | v60[623] & 0x80000000) >> 1);
  v60[623] = (v62 + v58 - ((a2 - a1 - 1772722701) & (2 * v62))) ^ *(&a58 + (*v60 & 1));
  return (*(v59 + 8 * (a2 ^ (16 * (a40 > 0x26F)))))();
}

uint64_t sub_1000281B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3B8] = -v63;
  v64 = STACK[0x430];
  STACK[0x520] = a9 - 112;
  return v64(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_1000282B0()
{
  v3 = 4 * v1;
  v4 = (STACK[0x2D8] + v3);
  v5 = *v4;
  LODWORD(v4) = 1109941777 * ((*(*STACK[0x2E0] + (*STACK[0x2E8] & 0x7F119944)) ^ v4) & 0x7FFFFFFF);
  LODWORD(v4) = (v4 >> (LODWORD(STACK[0x2D0]) - 49)) ^ v4;
  v6 = 1109941777 * v4;
  *(v0 + v3) ^= v5 ^ (v2 - 1445) ^ ((((v2 - 1445) ^ v1) & v1) >> (__clz((v2 - 1445) ^ v1 | 1) ^ 0x1F)) & 1 ^ *(*(&off_100085FF0 + v2 - 1335) + HIBYTE(v6)) ^ *(*(&off_100085FF0 + v2 - 1390) + HIBYTE(v6) - 2) ^ *(*(&off_100085FF0 + v2 - 1363) + HIBYTE(v6) + 1) ^ (1578172416 * v4) ^ v6 ^ (-471850983 * HIBYTE(v6)) ^ 3;
  JUMPOUT(0x1000283B8);
}

uint64_t sub_1000283F4@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x440]) = 2;
  STACK[0x4D0] = 0;
  LODWORD(STACK[0x39C]) = 0;
  LODWORD(STACK[0x4C8]) = 0;
  return (*(v2 + 8 * (((((a1 - 583) | 0xAA) - 708) * ((v1 & 2) == 0)) ^ a1)))();
}

uint64_t sub_100028560()
{
  v4 = (&STACK[0x26C] + v2 + 8);
  *(v4 - 1) = 0xA7A7A7A7A7A7A7A7;
  *v4 = 0xA7A7A7A7A7A7A7A7;
  return (*(v3 + 8 * ((((v1 & 0x30) == 16) * (v0 - 151)) ^ v0)))();
}

uint64_t sub_1000285E4@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v2 < v4;
  *(&STACK[0x26C] + a2) = *(v8 + v3) - ((2 * *(v8 + v3)) & 0x4E) - 89;
  if (v9 == (((v7 - 694) | 0x45) ^ 0x44) + v3 > a1)
  {
    v9 = v5 + v3 + 70 < v2;
  }

  return (*(v6 + 8 * (((2 * v9) | (8 * v9)) ^ v7)))();
}

uint64_t sub_100028660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int8x16_t a6, int8x8_t a7)
{
  v14 = a2 - 8;
  v16.val[0].i64[0] = (v10 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v10 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v10 + v14 + (v11 ^ 0xFD)) & 0xF;
  v16.val[1].i64[1] = (v10 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v10 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v10 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v10 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v10 + v14) & 0xF ^ 8;
  *(a3 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v7 + v16.val[0].i64[0] - 7), *(a4 - 8 + v10)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v8 + v16.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a6), a7)));
  return (*(v13 + 8 * (((a1 == v14) * a5) | v12)))();
}

uint64_t sub_100028670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = (v14 - 409550636) & 0x18693BE7;
  v22 = 1037613739 * ((1273259283 - (v18 | 0x4BE46513) + (v18 | 0xB41B9AEC)) ^ 0x6519B793);
  *(v20 - 120) = v22 + v14 - 1259;
  *(v20 - 128) = v17;
  *(v20 - 136) = ((v19 ^ 0xFC7F7F6F) + 1806282240 + ((v19 << (((v14 - 44) & 0xE7) + 92)) & 0xF8FEFEDE)) ^ v22;
  (*(v15 + 8 * (v14 ^ 0xF8B)))(v20 - 136);
  *(v20 - 136) = (v21 - 44) ^ (843532609 * ((v18 + 757858084 - 2 * (v18 & 0x2D2BFF24)) ^ 0x7166ABA1));
  *(v20 - 128) = v16;
  *(v20 - 120) = a14;
  v23 = (*(v15 + 8 * (v21 ^ 0xB73u)))(v20 - 136);
  return (*(v15 + 8 * (((*(v20 - 132) > 0x23B3030Du) * (((v21 - 483) | 0x38) ^ ((v21 ^ 0x5AA) + 390))) ^ v21)))(v23);
}

uint64_t sub_100028838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &STACK[0x590] + v5;
  *v8 = 2073475255;
  *(v8 + 1) = 0;
  *(v8 + 4) = 1828645408;
  *(v8 + 6) = 1521934363;
  *(v8 + 4) = 0;
  *(v8 + 10) = 1521934363;
  STACK[0x330] = &STACK[0x590] + v5 + 40;
  *(v8 + 6) = 0;
  *(v8 + 14) = 1521934363;
  STACK[0x380] = &STACK[0x590] + v5 + 48;
  STACK[0x4E8] = &STACK[0x590] + v5 + 56;
  *(v8 + 8) = 0;
  STACK[0x470] = &STACK[0x590] + v5 + 64;
  *(v8 + 18) = 1521934363;
  *(v8 + 10) = 0;
  STACK[0x338] = &STACK[0x590] + v5 + 72;
  STACK[0x308] = &STACK[0x590] + v5 + 80;
  v8[88] = 66;
  *v6 = 2073475255;
  memset((v6 + 4), 167, 20);
  *(v6 + 24) = 1521934363;
  *(v6 + 28) = 0;
  STACK[0x2A8] = v6 + 28;
  *(v6 + 232) = 0;
  STACK[0x290] = v6 + 232;
  memset((v6 + 436), 167, 40);
  memset((v6 + 1128), 167, 40);
  *(v6 + 1168) = 0u;
  *(v6 + 1184) = 0u;
  return (*(v7 + 8 * ((3645 * ((((v4 ^ 0x7ED) - 1725518449) & 0x66D94C3F ^ 0x37) == 256)) ^ v4 ^ 0x7ED)))(a1, a2, a3, a4, 1446922884);
}

uint64_t sub_100028BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{
  v25 = (a17 & 0xDCCF3033) - 678519151 + (((a23 ^ 0x8FAB261D) + 1884608995) ^ ((a23 ^ 0x5A83139C) - 1518539676) ^ (((3 * a18 - 321046766) ^ a23) + 321045095));
  v26 = (v25 ^ 0x52564016) & (2 * (v25 & 0x62666956)) ^ v25 & 0x62666956;
  v27 = ((2 * (v25 ^ 0xD2DE0236)) ^ 0x6170D6C0) & (v25 ^ 0xD2DE0236) ^ (2 * (v25 ^ 0xD2DE0236)) & a7;
  v28 = v27 ^ 0x90882920;
  v29 = (v27 ^ 0x304240) & (4 * v26) ^ v26;
  v30 = ((4 * v28) ^ 0xC2E1AD80) & v28 ^ (4 * v28) & a7;
  v31 = (v30 ^ 0x80A02900) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x30184260)) ^ 0xB86B600) & (v30 ^ 0x30184260) ^ (16 * (v30 ^ 0x30184260)) & a7;
  return (*(v23 + 8 * ((v24 + 1125) | (4 * ((v25 ^ (2 * ((((v32 ^ 0xB0384960) << 8) & 0x30B80000 ^ 0x30280000 ^ (((v32 ^ 0xB0384960) << 8) ^ 0xB86B0000) & (v32 ^ 0xB0384960)) & (((v32 ^ 0x802200) & (v31 << 8) ^ v31) << 16) ^ (v32 ^ 0x802200) & (v31 << 8) ^ v31))) == 1650878806)))))();
}

uint64_t sub_100028DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v19 - 112) = &a16;
  *(v19 - 104) = &a14;
  *(v19 - 120) = (v16 + 636) ^ (((((2 * (v19 - 120)) | 0xE09E9A4A) - (v19 - 120) + 263238363) ^ 0xAC0219A0) * v18);
  v20 = (*(v17 + 8 * (v16 + 2009)))(v19 - 120);
  return (*(v17 + 8 * ((2292 * (*(v19 - 116) - 598934286 < 9 * (v16 ^ 0xE6u) - 162561389)) ^ v16)))(v20);
}

uint64_t sub_100028FD0()
{
  v6 = (*(v2 + 8 * (11 * (v0 ^ 0x25B) + 1913)))(*v3, *v1, *(v1 + 8) + (((11 * (v0 ^ 0x25B) + 55) | 3) ^ 0xD6F87A8F));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return sub_10002901C(v6);
}

uint64_t sub_100029034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  HIDWORD(a18) = HIDWORD(a14) + 372715612;
  v28.i64[0] = 0xA7A7A7A7A7A7A7A7;
  v28.i64[1] = 0xA7A7A7A7A7A7A7A7;
  return sub_100045610(820794494, a4, a5, a6, 390, 78, a5 + v26 - 25, v28, vdupq_n_s32(0x39F5081Cu), vdupq_n_s32(0x39F50818u), a9, a10, a11, a12, a13, a14, a3, a16, a2 + a12, a18, a19, v27 - 16, a21, a22, a23, a24, a25, a26);
}

void sub_1000290B0()
{
  *(v4 - 136) = v2;
  *(v4 - 128) = v3;
  *(v4 - 144) = v1 - 33 + 1082434553 * ((((v4 - 144) | 0x754D8A2E) - (v4 - 144) + ((v4 - 144) & 0x8AB275D0)) ^ 0xEE0A7CA4) - 1161;
  (*(v0 + 8 * ((v1 - 33) ^ 0xFC1)))(v4 - 144);
  JUMPOUT(0x10001A830);
}

uint64_t sub_10002911C@<X0>(int a1@<W8>)
{
  v7 = *(v3 + 4 * (v1 - 1));
  *(v3 + 4 * v1) = ((1566083941 * (v7 ^ (v7 >> 30))) ^ *(v3 + 4 * v1)) - v1;
  v8 = 1361651671 * ((((v6 - 152) | 0xF07A883A91530C94) - ((v6 - 152) & 0xF07A883A91530C94)) ^ 0x23D7FB034271FC18);
  *(v6 - 128) = a1 + 593683607 - v8 - 95;
  *(v6 - 124) = a1 + 593683607 - v8;
  *(v4 + 1072) = 623 - v8;
  *(v4 + 1056) = v1 + 1 - v8;
  *(v6 - 112) = 1591077704 - v8 + a1;
  *(v6 - 152) = -1361651671 * ((((v6 - 152) | 0x91530C94) - ((v6 - 152) & 0x91530C94)) ^ 0x4271FC18);
  *(v6 - 148) = v8 + a1 + 593683607 + 8;
  v9 = (*(v2 + 8 * (a1 ^ (v5 - 2362))))(v6 - 152);
  return (*(v2 + 8 * *(v6 - 144)))(v9);
}

uint64_t sub_100029214()
{
  *(v6 - 120) = (v0 + 748) ^ (((((2 * (v6 - 120)) | 0x863BCDD2) - (v6 - 120) - 1126033129) ^ 0x1F50B26C) * v2);
  *(v6 - 112) = v5;
  *(v6 - 104) = v4;
  v7 = (*(v1 + 8 * (v0 + 2121)))(v6 - 120);
  return (*(v1 + 8 * (((*(v6 - 116) > v3) * (233 * (v0 ^ 0x8F) + 356)) ^ v0)))(v7);
}

uint64_t sub_100029390@<X0>(int a1@<W4>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(a3 + v7) = *(a2 + v7) - (v6 & (2 * *(a2 + v7))) - 89;
  return (*(v5 + 8 * (((v7 == 0) * (v4 ^ a1)) ^ v4)))();
}

uint64_t sub_100029520@<X0>(int a1@<W8>)
{
  v6 = *(v9 + 24);
  if ((a1 + v4) >= 0x7FFFFFFF)
  {
    v7 = -1306604704 - v1;
  }

  else
  {
    v7 = v1;
  }

  v10[1] = v7;
  *(v5 - 112) = v6;
  *(v5 - 120) = (v2 + 227) ^ (1785193651 * (((v5 - 128) & 0x298ECF33 | ~((v5 - 128) | 0x298ECF33)) ^ 0xC5ADDCEC));
  *(v5 - 128) = v10;
  return (*(v3 + 8 * (v2 ^ 0xBBC)))(v5 - 128);
}

uint64_t sub_100029710(double a1, int8x16_t a2, double a3, int8x16_t a4, uint64_t a5, int8x16_t *a6, uint64_t a7, int a8)
{
  v12 = (v10 + v9);
  v13 = vaddq_s8(vsubq_s8(v12[1], vandq_s8(vaddq_s8(v12[1], v12[1]), a4)), a2);
  *a6 = vaddq_s8(vsubq_s8(*v12, vandq_s8(vaddq_s8(*v12, *v12), a4)), a2);
  a6[1] = v13;
  return (*(v11 + 8 * (((((v8 - 1291) ^ 0x1FLL) == 64) * a8) ^ v8)))();
}

void sub_100029774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v34 - 112) = &a30;
  *(v34 - 104) = a12;
  *(v34 - 136) = &a26;
  *(v34 - 128) = v33;
  *(v34 - 144) = &a30;
  *(v34 - 120) = (v31 + 1096) ^ (((((2 * (v34 - 144)) | 0x3AF343A2) - (v34 - 144) - 494510545) ^ 0xEA54DF1) * v30);
  (*(v32 + 8 * (v31 ^ 0x806u)))(v34 - 144);
  JUMPOUT(0x10002A2A0);
}

uint64_t sub_100029824@<X0>(char a1@<W1>, uint64_t a2@<X2>, int a3@<W7>, uint64_t a4@<X8>)
{
  v10 = (v6 - 1);
  *(v8 + v10) = *(a2 + v10) ^ *(v4 + (v10 & 0xF)) ^ *((v10 & 0xF) + v5 + 5) ^ ((v7 + 69) * (v10 & 0xF)) ^ *((v10 & 0xF) + a4 + 1) ^ a1;
  return (*(v9 + 8 * (((((v10 == 0) ^ (v7 - 117)) & 1) * a3) ^ (v7 + 2166))))();
}

uint64_t sub_1000298E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unsigned int a32, unsigned int a33, unsigned int a34, unsigned int a35, int a36, int a37, int a38, char a39, __int16 a40, char a41)
{
  if (a39 == 1)
  {
    BYTE4(a30) = (((a32 - 2 * (a32 & 1) + 8) << (a3 + a5 + 112)) - 56) ^ 0xAF;
    BYTE5(a30) = (a32 >> 5) ^ 0xA7;
    BYTE6(a30) = (a32 >> 13) ^ 0xA7;
    HIBYTE(a30) = (a32 >> 21) ^ 0xA7;
    LOBYTE(a31) = ((__PAIR64__(HIDWORD(a31), a32) >> 29) - ((2 * (__PAIR64__(HIDWORD(a31), a32) >> 29)) & 0x92) - 55) ^ 0x6E;
    BYTE1(a31) = (HIDWORD(a31) >> 5) ^ 0xA7;
    BYTE2(a31) = (HIDWORD(a31) >> 13) ^ 0xA7;
    v41 = (HIDWORD(a31) >> 21) ^ 0xFFFFFFA7;
    goto LABEL_5;
  }

  if (a39 == 2)
  {
    BYTE4(a30) = (HIDWORD(a31) >> 21) - (((a3 + a5 - 119) ^ 0x52) & (2 * (HIDWORD(a31) >> 21))) - 89;
    BYTE5(a30) = (HIDWORD(a31) >> 13) - ((HIDWORD(a31) >> 12) & 0x4E) - 89;
    BYTE6(a30) = (~(HIDWORD(a31) >> 4) | 0xB1) + (HIDWORD(a31) >> 5) - 88;
    HIBYTE(a30) = (__PAIR64__(HIDWORD(a31), a32) >> 29) - ((2 * (__PAIR64__(HIDWORD(a31), a32) >> 29)) & 0x4E) - 89;
    LOBYTE(a31) = (a32 >> 21) - ((a32 >> 20) & 0x4E) - 89;
    BYTE1(a31) = (a32 >> 13) - ((a32 >> 12) & 0x4E) - 89;
    BYTE2(a31) = (a32 >> 5) - ((a32 >> 4) & 0x4E) - 89;
    LOBYTE(v41) = (8 * ((a32 ^ 0x10) - ((2 * a32) & 0x12)) - 56) ^ 0xEF;
LABEL_5:
    BYTE3(a31) = v41;
  }

  return sub_1000564C8(a1, a2, a3, a4, a5, a6, 3121378010, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t sub_100029D54@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0xDB5u));

  return v3(v1);
}

uint64_t sub_100029D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v12 = v9 < 0x3A933762;
  if (v12 == (((v10 - 64) | a8) ^ 0x5C3uLL) + v8 > 0xFFFFFFFFC56CC89DLL)
  {
    v12 = v8 + 982726499 < v9;
  }

  return (*(v11 + 8 * ((44 * v12) ^ v10)))();
}

void sub_10002A010(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  *(*(a1 + 96) + 528) = 64;
  *(*(a1 + 96) + 532) = 1494181296;
  *(*(a1 + 96) + 536) = *(a1 + 96) + 544;
  v10 = *(a1 + 96) + 528;
  v11 = *(a2 + 8) + (*(a2 + 4) - v9);
  v12 = 1082434553 * ((2 * (&a5 & 0x5CB62928) - &a5 - 1555441965) ^ 0x380E2059);
  a8 = v12 ^ 0x517;
  a9 = v9 - v12 - 701133053;
  a5 = v10;
  a7 = v11;
  (*(a3 + 19064))(&a5);
  *(*(a1 + 96) + 512) = *(a2 + 8) + (*(a2 + 4) - v9);
  JUMPOUT(0x10002A120);
}

void sub_10002A150()
{
  LODWORD(STACK[0x518]) = STACK[0x3EC];
  STACK[0x480] = STACK[0x3A8];
  LODWORD(STACK[0x4DC]) = 1745916841;
  JUMPOUT(0x100020C24);
}

uint64_t sub_10002A1C4@<X0>(int a1@<W4>, _DWORD *a2@<X5>, unint64_t a3@<X6>, int a4@<W7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v19 = ((a1 - 357) ^ a11 ^ a2[1]) + (v15 ^ HIDWORD(a3)) + v18 * (*(*(a12 + 8) + 4) ^ v12);
  *a2 = (v19 + v14 - (v13 & (2 * v19))) ^ a4;
  return (*(v17 + 8 * (((a5 == 2) * v16) | a1)))();
}

void sub_10002A234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v33 - 144) = &a30;
  *(v33 - 136) = &a22;
  *(v33 - 120) = (v32 - 748) ^ ((((v33 - 144) & 0x1210EEA9 | ~((v33 - 144) | 0x1210EEA9)) ^ 0xFE33FD76) * v30);
  *(v33 - 128) = v31;
  *(v33 - 112) = &a30;
  *(v33 - 104) = a12;
  JUMPOUT(0x10002A294);
}

uint64_t sub_10002A2FC()
{
  v3 = LODWORD(STACK[0x4DC]) + 1464734422;
  v4 = ((v1 - 421671582) & 0x19222F26 ^ 0x64A7C746) + v0;
  v5 = (v4 < 262 * (v1 ^ 0x49Bu) - 1084316557) ^ (v3 < 0xBF5EA67F);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 262 * (v1 ^ 0x49Bu) - 1084316557;
  }

  return (*(v2 + 8 * ((51 * !v6) ^ v1)))();
}

uint64_t sub_10002A3DC@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  v6 = ((139 * (v3 ^ 0x644u)) ^ 0xFFFFFFFFFFFFFC32) + v5;
  *(*(v1 + 8) + 4 * v6) = *(*(a1 + 8) + 4 * v6);
  return (*(v2 + 8 * ((3664 * (v6 == 0)) ^ v3)))();
}

uint64_t sub_10002A42C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v18 = 843532609 * ((v17 - 128) ^ 0x5C4D5485);
  *(v17 - 120) = &a15;
  *(v17 - 128) = (((a3 << 6) & 0x96F7FDC0) + ((32 * a3) ^ 0xCB7BFEEF) + 2145201120) ^ v18;
  *(v17 - 124) = v15 - v18 - 195;
  v19 = (*(v16 + 8 * (v15 ^ 0xF17)))(v17 - 128);
  return (*(v16 + 8 * ((13 * (((v15 - 58) ^ ((*(a10 + 4) - 1494181297) < 0x7FFFFFFF)) & 1)) ^ v15)))(v19);
}

uint64_t sub_10002A4EC()
{
  v5 = *(*(v1 + 40) + v0) - *(v4 + v0);
  v6 = (v5 ^ 0xF65FBCFF) - 337117256 + ((2 * v5) & 0xECBF79FE);
  v8 = v0 + (v2 - 1544) != 53 && v6 == -498615113;
  return (*(v3 + 8 * ((125 * v8) ^ v2)))();
}

uint64_t sub_10002A55C()
{
  *(v3 - 104) = v5;
  *(v3 - 120) = v2;
  *(v3 - 112) = (v0 + 89) ^ (1785193651 * ((2 * ((v3 - 120) & 0x32ADCBD0) - (v3 - 120) - 850250711) ^ 0xDE8ED809));
  return (*(v1 + 8 * (v0 + 1506)))(v3 - 120);
}

uint64_t sub_10002A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22)
{
  v25 = 1037613739 * ((&a18 + 1030843666 - 2 * (&a18 & 0x3D716D12)) ^ 0xEC73406D);
  a21 = (v24 - 1089) ^ v25;
  a22 = (a11 ^ 0x2EEDBE76) + ((2 * a11) & 0x5DDB7CEC) - 545524736 + v25;
  a19 = a14;
  a20 = v22;
  v26 = (*(v23 + 8 * (v24 + 990)))(&a18);
  return (*(v23 + 8 * ((3386 * (a18 == ((v24 - 341) ^ 0x39F50C05))) ^ v24)))(v26);
}

uint64_t sub_10002A848(uint64_t a1)
{
  v6 = *(v1 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(v1 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((117 * (((v2 + v4 + 1858) | 0x68u) - 1996 != (v3 & 0xFFFFFFE0))) ^ (v2 + v4 + 1404))))();
}

uint64_t sub_10002A964(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  v20 = a15 + 1894650040 > a19;
  if (a19 < 0x70EE1078 != (a15 + 1894650040) < 0x70EE1078)
  {
    v20 = (a15 + 1894650040) < 0x70EE1078;
  }

  return (*(v19 + 8 * (v20 ^ (a5 + a4 + 431))))();
}

uint64_t sub_10002A970(__n128 a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = (a3 + 4 * a6);
  *v10 = a1;
  v10[1] = a1;
  return (*(v9 + 8 * (((a4 + a6 == v8) * a7) ^ v7)))();
}

void sub_10002A9DC()
{
  v4 = STACK[0x368] + 128;
  STACK[0x390] = v4;
  v5 = 1785193651 * ((((v3 - 200) | 0x4B93831A) - ((v3 - 200) & 0x4B93831A)) ^ 0x584F6F3A);
  *(v3 - 196) = v5 + v0 - 562358948;
  *(v3 - 184) = v5 ^ 0x79AE6FE9;
  *(v3 - 192) = v4;
  (*(v1 + 8 * (v0 | 0x904)))(v3 - 200);
  STACK[0x320] = *(v1 + 8 * v0);
  STACK[0x2E8] = v2;
  JUMPOUT(0x100020160);
}

uint64_t sub_10002ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32)
{
  v36 = (((v32 ^ 0x309E9492) - 815699090) ^ ((v32 ^ 0x786F887C) - 2020575356) ^ ((v32 ^ 0x710414F6) - 1896092918)) + (((LODWORD(STACK[0x55C]) ^ 0x9A414691) + 1706998127) ^ ((LODWORD(STACK[0x55C]) ^ 0x98C41EB4) + 1731977548) ^ (a32 + (LODWORD(STACK[0x55C]) ^ 0x3B70503D))) + 1944719408;
  *(STACK[0x2A0] + 52) = ((v36 % 0x2710) ^ 0x735CFDFE) - 1091047576 + ((2 * (v36 % 0x2710)) & 0x7BFC);
  v37 = STACK[0x564];
  STACK[0x520] -= 1616;
  LODWORD(STACK[0x4AC]) = v37;
  return (*(v34 + 8 * ((774 * (v37 == v35)) ^ (v33 - 939))))();
}

uint64_t sub_10002ADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, int a17, unsigned int a18, char *a19, unsigned int a20)
{
  v25 = 1564307779 * ((&a15 & 0x6428632 | ~(&a15 | 0x6428632)) ^ 0x6EB0B5DE);
  a19 = &a13;
  a17 = v23 - v25 - 2013067348;
  a18 = -2097641450 - v25;
  a20 = 1908478090 - v25;
  a15 = a11;
  v26 = (*(v21 + 8 * (v23 ^ 0xA35)))(&a15);
  return (*(v21 + 8 * (((a16 != v20) * ((((v23 - 808) | 0x301) - v24 + 522) ^ (v22 + 794))) | v23)))(v26);
}

uint64_t sub_10002AEF4(_DWORD *a1)
{
  v2 = *a1 + 1388665877 * ((-2 - ((a1 | 0xAD68937B) + (~a1 | 0x52976C84))) ^ 0xDF3A0E68);
  v3 = v2 + 542396693;
  result = (*(*(&off_100085FF0 + (v2 ^ 0xDFABAFB2)) + (v2 + 542398861) - 1))(*(&off_100085FF0 + (v2 ^ 0xDFABAF30)) - 8, sub_10004FBA0);
  v5 = **(&off_100085FF0 + v3);
  if (result)
  {
    v5 = -972402010;
  }

  a1[1] = v5;
  return result;
}

uint64_t sub_10002B200()
{
  v7 = v3 - 1;
  *(v5 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 5) ^ 0xA7;
  return (*(v6 + 8 * ((2651 * (v7 == 0)) ^ (v4 - 108))))();
}

uint64_t sub_10002B2C0()
{
  v4 = (*(v3 + 8 * (v0 ^ 0xC89)))();
  LODWORD(STACK[0x4AC]) = v1;
  return (*(v3 + 8 * (((58 * (v0 ^ 0x5BC) - 924) * (v2 ^ 1)) ^ (v0 - 830))))(v4);
}

uint64_t sub_10002B318@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = v11 + 1215979521 < a11 - 857495734;
  if (a11 - 857495734 < (a7 ^ 0x1B5u) + 1215979453 != v11 > 0xB7859FFE)
  {
    v13 = a11 - 857495734 < (a7 ^ 0x1B5u) + 1215979453;
  }

  return (*(v12 + 8 * ((13 * !v13) ^ a7)))(3078987774, 1215979453, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10002B394(uint64_t a1)
{
  v1 = 210068311 * ((a1 - 205837158 - 2 * (a1 & 0xF3BB2C9A)) ^ 0x616D133E);
  v2 = *a1 - v1;
  v3 = *(a1 + 28) - v1;
  v4 = *(*(a1 + 8) + 4);
  v6 = v4 - 1494181296;
  v5 = v4 - 1494181296 < 0;
  v7 = 1494181296 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_100085FF0 + v2 - 187) + ((((v3 - 57082292) >= (4 * v7)) * (v2 ^ 0x119)) ^ v2) - 1))();
}

void sub_10002B52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, _DWORD **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (v64 + 154174791) & 0xFA06A7B7;
  v69 = *a32;
  if (((((v64 + 53946823) & (v67 + 130) ^ 0xFFFFFFFF16915206) + v68) & *a32) != 0 || (v70 = *(&off_100085FF0 + (v64 ^ 0xFCC8D51C)), v72 = *(v70 - 4), v71 = (v70 - 4), v72))
  {
    *a19 = -972401753;
    sub_10004174C();
  }

  else
  {
    v73 = v68 + 875;
    *v71 = v69;
    **(&off_100085FF0 + (v68 ^ 0x208)) = 255;
    *v69 |= ~v69[*v69 & 0x3ELL] << 16;
    v69[4] |= ~v69[v69[4] & 0x3ELL] << 16;
    v69[8] |= ~v69[v69[8] & ((v68 + 875) ^ 0x61E)] << 16;
    v69[12] |= ~v69[v69[12] & 0x3ELL] << 16;
    v69[16] |= ~v69[v69[16] & 0x3ELL] << 16;
    v69[20] |= ~v69[v69[20] & 0x3ELL] << 16;
    v69[24] |= ~v69[v69[24] & 0x3ELL] << 16;
    v69[28] |= ~v69[v69[28] & 0x3ELL] << 16;
    v69[32] |= ~v69[v69[32] & 0x3ELL] << 16;
    v69[36] |= ~v69[v69[36] & 0x3ELL] << 16;
    v69[40] |= ~v69[v69[40] & 0x3ELL] << 16;
    v69[44] |= ~v69[v69[44] & 0x3ELL] << 16;
    v69[48] |= ~v69[v69[48] & 0x3ELL] << 16;
    v69[52] |= ~v69[v69[52] & 0x3ELL] << 16;
    v69[56] |= ~v69[v69[56] & 0x3ELL] << 16;
    v69[60] |= ~v69[v69[60] & 0x3ELL] << 16;
    v74 = (*(v65 + 8 * (v68 + 1593)))(&a64, 0, 1024);
    *v66 = &a64;
    v75 = ((v73 - 875) ^ (v67 - 331)) == -378622136;
    (*(v65 + 8 * (((2 * v75) | (4 * v75)) ^ v73)))(v74);
  }
}

uint64_t sub_10002B908@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v5.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v6.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v6.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v7 = *(v1 + v2 - 1 - 31);
  v8 = a1 + v2 - 1;
  *(v8 - 15) = vaddq_s8(vaddq_s8(*(v1 + v2 - 1 - 15), v6), vmvnq_s8(vandq_s8(vaddq_s8(*(v1 + v2 - 1 - 15), *(v1 + v2 - 1 - 15)), v5)));
  *(v8 - 31) = vaddq_s8(vaddq_s8(v7, v6), vmvnq_s8(vandq_s8(vaddq_s8(v7, v7), v5)));
  return (*(v4 + 8 * ((394 * (((v3 + 248) | 0x141u) - 1981 == (v2 & 0x1E0))) ^ (v3 - 176))))();
}

uint64_t sub_10002B99C(uint64_t a1)
{
  v2 = 1388665877 * ((((2 * (a1 ^ 0x17587DCA)) | 0xAD7A4B42) - (a1 ^ 0x17587DCA) - 1455236513) ^ 0xCC483A87);
  v3 = *(a1 + 44) ^ v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v8 = 1564307779 * ((&v10 & 0x46C11C45 | ~(&v10 | 0x46C11C45)) ^ 0x2E332FA9);
  v13 = (1931002555 * (*a1 ^ v2) + 1057619391) ^ v8;
  v16 = v4;
  v14 = v6;
  v12 = v7;
  v10 = v5;
  v15 = v3 + 1776823313 + v8 + 680;
  result = (*(*(&off_100085FF0 + v3 + 1776823313) + (v3 ^ 0x9617DD51) - 1))(&v10);
  *(a1 + 40) = v11;
  return result;
}

uint64_t sub_10002BAFC(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) ^ (-6989 * ((2 * (result & 0xEB8A) - result + 5237) ^ 0xF855));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1EB;
  v3 = v2 ^ 0xEB;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -820356988;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xE30512FD6B8D9A75;
    *(v1 + 80) = 0x1CFAED029472658ALL;
    *(v1 + 92) = v4;
  }

  *result = 803265288;
  return result;
}

void sub_10002BBC0(uint64_t a1)
{
  v1 = 1388665877 * ((2 * (a1 & 0x2EF7D36D) - a1 + 1359490194) ^ 0xDCA54E7E);
  v2 = *(a1 + 16) - v1;
  v3 = *(a1 + 20) - v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 402653184;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10002BD50(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v6 + 1424) = 0;
  memset((v6 + 1432), 167, 104);
  *(v7 + 96) = v6;
  STACK[0x410] = v7 + 96;
  STACK[0x228] = v6;
  *(v6 + 476) = 1;
  v9 = STACK[0x4A0];
  STACK[0x450] = *(v8 + 8 * v5);
  STACK[0x220] = v7;
  STACK[0x2B8] = v7;
  v10 = STACK[0x520];
  STACK[0x3E0] = &STACK[0x590] + STACK[0x520];
  STACK[0x520] = v10 + 432;
  v11 = (v5 + 169) | 0x502;
  LODWORD(STACK[0x2E0]) = a1;
  LODWORD(STACK[0x518]) = a1;
  STACK[0x480] = v9;
  LODWORD(STACK[0x3FC]) = 1964545717;
  LODWORD(STACK[0x3EC]) = 1521934363;
  STACK[0x3A8] = 0;
  LODWORD(STACK[0x4DC]) = 1745916841;
  LODWORD(STACK[0x3F0]) = a5 + 1;
  *(&STACK[0x590] + v10) = 1893636603;
  LODWORD(STACK[0x2D8]) = 1775568947;
  LODWORD(STACK[0x2E8]) = (v11 ^ 0xA0B35BEA) + 735514484;
  LODWORD(STACK[0x2C0]) = 1213160799;
  LODWORD(STACK[0x2C8]) = 805923159;
  v13 = *(&STACK[0x590] + v10) != (v11 ^ 0x6A) + 1893635155 || LODWORD(STACK[0x3F0]) != ((v11 + 1434492925) & 0xAA7F5B6B ^ (a5 + 299));
  return (*(v8 + 8 * ((3518 * v13) ^ v11)))();
}

uint64_t sub_10002BF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, unsigned int a22, uint64_t a23)
{
  v26 = (v23 ^ 0x15660EEC) + v25;
  v27 = v26 < v23 + 359009892;
  v28 = v26 > a22;
  if (a22 < a21 != v27)
  {
    v28 = v27;
  }

  return (*(v24 + 8 * ((4078 * v28) ^ (v23 + 2006))))(a1, a2, a3, a4, a23);
}

uint64_t sub_10002BF88()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_10002BFB0@<X0>(int8x16_t *a1@<X4>, uint64_t a2@<X8>, int8x16_t a3@<Q4>, uint64_t a4)
{
  v7 = (a4 + a2);
  v8.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v8.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v9 = vaddq_s8(vaddq_s8(a1[1], v8), vmvnq_s8(vandq_s8(vaddq_s8(a1[1], a1[1]), a3)));
  v7[-1] = vaddq_s8(vaddq_s8(*a1, v8), vmvnq_s8(vandq_s8(vaddq_s8(*a1, *a1), a3)));
  *v7 = v9;
  return (*(v6 + 8 * ((((v5 & 0x60) == 32) * (((v4 - 22) | 0x281) ^ 0x27F)) ^ (v4 + 1030))))();
}

void sub_10002C078(int a1)
{
  v2 = (((v1 ^ 0x3BAFFD69) - 1001389417) ^ ((v1 ^ 0x346DE533) - 879617331) ^ ((v1 ^ 0x30AA12E) - 51028270)) + 515205532 + (((LODWORD(STACK[0x2D0]) ^ 0xD487E997) + 729290345) ^ ((LODWORD(STACK[0x2D0]) ^ 0x8FF3D4A5) + 1879845723) ^ ((((a1 - 1668) | 0x22) ^ 0xA8437B9C) + (LODWORD(STACK[0x2D0]) ^ 0x57BC8446)));
  LODWORD(STACK[0x2D0]) = v2 ^ ((v2 ^ 0xA5170C57) + 1607140637) ^ ((v2 ^ 0xC0C37E95) + 975140831) ^ ((v2 ^ 0x1B0A63A9) - 506041629) ^ ((v2 ^ 0x7BFDE7DF) - 2128482667) ^ 0x9EB4FC0;
  JUMPOUT(0x10002C1C0);
}

uint64_t sub_10002C9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5 + 8;
  *(v8 + v12) = vadd_s8(vsub_s8(*(a5 + v12), vand_s8(vadd_s8(*(a5 + v12), *(a5 + v12)), v10)), v11);
  return (*(v9 + 8 * (((2 * ((((v6 - 663) ^ (v7 == v12)) & 1) == 0)) & 0xFB | (4 * (((v6 + 105) ^ ~(v7 == v12)) & 1))) ^ v6)))();
}

uint64_t sub_10002CB48(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, int8x16_t a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v19 = a4 & (a2 - 16);
  v20 = v17;
  v21.i64[0] = vqtbl4q_s8(*(&a7 - 1), a10).u64[0];
  *&v21.i64[1] = a11;
  v22 = vrev64q_s8(veorq_s8(veorq_s8(*a1, *(v14 + v19 - 15)), veorq_s8(*(v19 + v15 - 12), *(v19 + v13 - 10))));
  v23 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v22, v22, 8uLL), a13), vmulq_s8(v21, a12)));
  *a1 = vextq_s8(v23, v23, 8uLL);
  return (*(v18 + 8 * (((a3 == 16) * a5) ^ v16)))(a1 - 1);
}

uint64_t sub_10002CB7C(uint64_t a1, uint64_t a2)
{
  *(v3 + 1424) = v2;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

void sub_10002CC54(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v8 = 1037613739 * ((((2 * &a3) | 0x56098DD2) - &a3 - 721733353) ^ 0xFA06EB96);
  a5 = v5;
  a3 = (269503522 - v6 - (((v7 + 1061) ^ 0x896E4704) & (-1766697570 - 2 * v6))) ^ v8;
  a4 = (v7 + 1499) ^ v8;
  (*(a1 + 8 * (v7 ^ 0x83Fu)))(&a3);
  sub_100060330();
}

uint64_t sub_10002CCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, char a19, int a20, char a21, char *a22, int a23, int a24, char *a25, int a26, char *a27, int *a28, uint64_t a29)
{
  a20 = 1745916841;
  v31 = *(a2 + 4);
  v32 = *(a2 + 8);
  v33 = 1082434553 * ((&a22 - 993738773 - 2 * (&a22 & 0xC4C4BFEB)) ^ 0x5F834961);
  a25 = &a19;
  a22 = &a16;
  a29 = v32;
  a26 = v33 + v29 + 655;
  a27 = &a21;
  a28 = &a20;
  a24 = (v29 ^ 0x312) + 296703505 + v31 + v33 - 52;
  v35 = (*(v30 + 8 * (v29 ^ 0x9BF)))(&a22);
  return (*(v30 + 8 * ((1175 * (a23 == 972359704)) ^ v29)))(v35, a2);
}

uint64_t sub_10002CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v18 = *(a1 + 8) + 210068311 * ((2 * (a1 & 0x9D6ACF85) - a1 + 1653944442) ^ 0xF0430FDE);
  v19 = 1785193651 * ((((v28 | 0x80BA0A3A) ^ 0xFFFFFFFE) - (~v28 | 0x7F45F5C5)) ^ 0x6C9919E5);
  v29 = v18 + v19 - 562358880;
  v30 = v27;
  v31 = v19 ^ 0x79AE6FE9;
  (*(*(&off_100085FF0 + v18 + 4) + v18 + 2375))(v28);
  return sub_1000452FC(&v26, v27, 78, v20, v21, v22, v23, v24, v18, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_10002D19C()
{
  v3 = *(v0 + 16) - 1006341418;
  v4 = (v1 ^ 7) + *(v0 + 12) - 213361129;
  v5 = v4 < 0x1C4FE6F3;
  v6 = v3 < v4;
  if (v3 < 0x1C4FE6F3 != v5)
  {
    v6 = v5;
  }

  return (*(v2 + 8 * ((1629 * v6) ^ v1)))();
}

uint64_t sub_10002D31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, unsigned int a20, char *a21, unsigned int a22)
{
  v24 = 1564307779 * (((&a17 | 0x2A7BB3C0) - &a17 + (&a17 & 0xD5844C38)) ^ 0xBD767FD3);
  a22 = 1908478090 - v24;
  a17 = a13;
  a21 = &a14;
  a19 = v23 - v24 - 2013067934;
  a20 = 1736966016 - v24;
  v25 = (*(v22 + 8 * (v23 + 939)))(&a17);
  return (*(v22 + 8 * (((a18 == 972359704) * ((((v23 - 814) | 0x4A2) ^ 0xFFFFFA89) + ((v23 + 158341005) & 0xF68FE71D))) | v23)))(v25);
}

uint64_t sub_10002D6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  v17 = (a2 + v12);
  *v17 = v13;
  *(v12 + (a12 ^ 0x53Fu) + a2 - 37) = v14;
  v17[2] = v15;
  v17[3] = v16;
  return sub_10002D6EC();
}

uint64_t sub_10002D6EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, unint64_t *, uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = 2066391179 * (((v18 - 160) & 0x70241125 | ~((v18 - 160) | 0x70241125)) ^ 0x20FC6CC2);
  *(v18 - 152) = a1;
  *(v18 - 160) = a3 - v19 + 334;
  *(v18 - 156) = 2083296428 - v19;
  v20 = (*(v17 + 8 * (a3 + 2303)))(v18 - 160);
  return a10(v20, &STACK[0x278], a2, 167, a17);
}

uint64_t sub_10002D83C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x8AF)))(1576);
  STACK[0x4F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 1977750980) & 0x75E21CFF) - 745) ^ v0 ^ 0x430)) ^ v0)))();
}

void sub_10002D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  v35 = 143681137 * ((((v34 - 144) | 0x1A3D6251) - ((v34 - 144) & 0x1A3D6251)) ^ 0x7B65E981);
  *(v34 - 144) = v35 ^ 0x22DC9984;
  *(v34 - 136) = &a28;
  *(v34 - 128) = v35 + v33 + 1179;
  (*(v30 + 8 * (v33 + 2264)))(v34 - 144);
  *(v34 - 136) = &a28;
  *(v34 - 128) = v32;
  *(v34 - 120) = (v33 + 1288) ^ (1785193651 * ((v34 - 1673515695 - 2 * ((v34 - 144) & 0x9C402DE1)) ^ 0x8F9CC1C1));
  *(v34 - 112) = &a30;
  *(v34 - 104) = v31;
  *(v34 - 144) = &a30;
  (*(v30 + 8 * (v33 ^ 0x946)))(v34 - 144);
  JUMPOUT(0x100021AD0);
}

uint64_t sub_10002DA50@<X0>(unsigned int a1@<W2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v8 = (v7 - 1) & 0xF;
  v12 = (v5 - a3 - v7 + v8 + 1) < 0x10 || a2 < (a1 ^ 0xECF) - 2121 || (v6 - a3 - v7 + v8 + 6) < 0x10 || v4 - a3 - v7 + v8 + (a1 - 17) - 1666 < 0x10;
  return (*(v3 + 8 * ((49 * v12) ^ a1)))(v7);
}

uint64_t sub_10002DB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  v21 = a18 < 0x76D4BEDB;
  if (v21 == v18 > 0x892B4124)
  {
    v21 = v18 + 1993653979 < a18;
  }

  return (*(v20 + 8 * ((v21 * (v19 - 1898)) ^ v19)))(1934, a2, 65);
}

uint64_t sub_10002DBB4@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W8>)
{
  *(*(a1 + 16) + (a4 + a5)) = (a3 ^ v7) >> v8;
  v9 = a4 - 1 != (((a2 ^ 0x15B) - 541) ^ (v6 + 150));
  return (*(v5 + 8 * ((v9 | (4 * v9)) ^ a2)))();
}

uint64_t sub_10002DC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  *(v21 - 120) = (v18 + 1192) ^ (210068311 * ((2 * ((v21 - 120) & 0x3818568) - (v21 - 120) + 2088663696) ^ 0xEEA84534));
  *(v21 - 112) = &a18;
  *(v21 - 104) = &a16;
  v22 = (*(v19 + 8 * (v18 ^ 0x87A)))(v21 - 120);
  return (*(v19 + 8 * (((v20 == ((v18 + 299742578) & 0xEE224BD2) - 465) * (v18 - 105)) ^ v18)))(v22);
}

uint64_t sub_10002DCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v17 - 112) = &a14;
  *(v17 - 104) = a13;
  *(v17 - 120) = (v14 - 333) ^ (((~((v17 - 120) | 0x23070613) + ((v17 - 120) & 0x23070613)) ^ 0x80B5AD69) * v16);
  v18 = (*(v15 + 8 * (v14 ^ 0xC10)))(v17 - 120);
  return (*(v15 + 8 * ((472 * (*(v17 - 116) - 598934287 < (v14 ^ 0x1E9u) - 254595077)) ^ v14)))(v18);
}

uint64_t sub_10002DD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = (v13 + 130) | 5;
  v15 = ((((v14 + 280) ^ 0x1AF) + 917949066 + (a12 ^ 0xC949315E)) ^ ((a12 ^ 0x304BE3F9) - 810279929) ^ ((a12 ^ 0xC0F7DABF) + 1057498433)) + 182292310;
  v16 = v15 < 0xD0E8873E;
  v17 = v15 > 0xD0E8873E;
  if (v16)
  {
    v17 = v16;
  }

  return (*(v12 + 8 * ((50 * v17) ^ v14)))(3237468863, 1057498433, 182292310, 790067393);
}

uint64_t sub_10002DEA8@<X0>(uint64_t a1@<X8>)
{
  v10 = (*(*(v8 + 8) + 4 * v2) ^ v5) + v1;
  *(*(a1 + 8) + 4 * v2) = v10 + v5 - (v6 & (2 * v10));
  return (*(v7 + 8 * (((v2 + 1 == v9) * v4) ^ v3)))();
}

uint64_t sub_10002DFBC@<X0>(uint64_t a1@<X0>, int a2@<W6>, int a3@<W8>)
{
  v10 = v6 + 32;
  v11 = (((v5 ^ (a3 + 1691)) - 1452) ^ v10) + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * v8) ^ (a2 + v5 + 1786))))();
}

uint64_t sub_10002E190(_DWORD *a1)
{
  v1 = *a1 ^ (1785193651 * (a1 ^ 0x13DCEC20));
  v2 = **(&off_100085FF0 + (v1 ^ 0xB8A69570));
  v5 = v1 - 1388665877 * (((&v4 | 0x894FA8B5) - &v4 + (&v4 & 0x76B05748)) ^ 0x4E2CA59) + 1197044490;
  v4 = v2;
  return (*(*(&off_100085FF0 + (v1 ^ 0xB8A69536)) + (v1 ^ 0xB8A69C5C) - 1))(&v4);
}

void sub_10002E28C(uint64_t a1)
{
  v1 = 843532609 * ((a1 - 935319884 - 2 * (a1 & 0xC84026B4)) ^ 0x940D7231);
  v2 = *(a1 + 4) + v1;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10002E364()
{
  v3 = (*(v2 + 8 * (v0 + 889)))();
  v4 = v1 == 23 * (v0 ^ 0x592) + 972358370;
  return (*(v2 + 8 * (((2 * v4) | (4 * v4)) ^ (v0 - 1238))))(v3);
}

uint64_t sub_10002E3C0@<X0>(int a1@<W2>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, int a5@<W8>)
{
  v9 = v7 - 1;
  *(v5 + v9) = *(a4 + v9) ^ (15 * (v9 & 0xF)) ^ *(*(a3 + 8 * (a5 - 1497)) + (v9 & 0xF) - 12) ^ *(*(a3 + 8 * (a5 - 1512)) + (v9 & 0xF) - 10) ^ *(*(a3 + 8 * v6) + (v9 & 0xF) - 5) ^ a2;
  return (*(v8 + 8 * (((v9 != 0) * a1) ^ a5)))();
}

uint64_t sub_10002E3C8()
{
  *(v1 + 52) += ((v0 ^ 0x294) + 1565) ^ 0x778 ^ (179 * (v0 ^ 0x294));
  LODWORD(STACK[0x46C]) = *(v1 + 360);
  STACK[0x520] -= 2432;
  LODWORD(STACK[0x444]) = v3;
  return (*(v2 + 8 * ((81 * (STACK[0x4B8] == 0)) ^ v0)))();
}

uint64_t sub_10002E5BC@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  STACK[0x448] = v3;
  v18 = (&STACK[0x590] + v4 + (a1 ^ 0xFFFFFFFFFFFFF9E4));
  *v18 = 0x5858585858585858;
  v18[1] = 0xA7A7A7A7A1A7A7B5;
  v8 = 1388665877 * ((2 * (v5 & 0x784B060) - v5 + 2021347225) ^ 0xF5D62D75);
  *(v7 - 200) = v8 ^ 0x98FC9C60;
  *(v7 - 192) = (v2 + 1986156097) ^ v8;
  (*(v6 + 8 * (v2 + 222)))(v7 - 200);
  LODWORD(STACK[0x344]) = 1521934699;
  v9 = (*(v6 + 8 * (v2 ^ 0x1B4)))(336);
  STACK[0x3B0] = v9;
  return (*(v6 + 8 * ((((((v2 - 105 + v2 + 117 + 1) ^ (v9 == 0)) & 1) << 7) | ((((v2 - 105 + v2 + 117 + 1) ^ (v9 == 0)) & 1) << 8)) ^ v2)))(v9, v10, v11, v12, v13, v14, v15, v16, a2);
}

uint64_t sub_10002E968@<X0>(int a1@<W8>)
{
  v3 = *(v7 + 16);
  v4 = *(v7 + 32);
  v9[0] = 0xA7A7A7A7A7A7A7A7;
  v9[1] = 0xA7A7A7A7A7A7A7A7;
  v5 = 1037613739 * ((-69914562 - ((v2 - 176) | 0xFBD5303E) + ((v2 - 176) | 0x42ACFC1)) ^ 0xD528E2BE);
  *(v2 - 160) = v4;
  *(v2 - 152) = &v8;
  *(v2 - 168) = v9;
  *(v2 - 144) = (a1 + 1641) ^ v5;
  *(v2 - 136) = v3;
  *(v2 - 176) = v5 + 1337967930;
  result = (*(v1 + 8 * (a1 ^ 0x976)))(v2 - 176);
  *(v7 + 44) = *(v2 - 140);
  return result;
}

uint64_t sub_10002EAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, int a45)
{
  *(STACK[0x2A0] + 360) = v46;
  v54 = (*(v52 + 8 * (v45 + 1694)))(v49, 2, &STACK[0x440], v50, (v48 - 1521934363), v47, &STACK[0x4D0], &STACK[0x39C]);
  if (v54 == 268435459)
  {
    LODWORD(STACK[0x4AC]) = -972401888;
    return (*(v52 + 8 * (((a44 & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v51 + 517))))(v54, STACK[0x4D0], v55, 3322565569);
  }

  else
  {
    if (!v54)
    {
      JUMPOUT(0x100024D6CLL);
    }

    v57 = 843532609 * ((-1420875763 - ((v53 - 200) | 0xAB4F280D) + ((v53 - 200) | 0x54B0D7F2)) ^ 0x8FD8377);
    *(v53 - 184) = 972359704 - v57 + v54 - ((2 * v54) & 0x73EA1030);
    *(v53 - 192) = &STACK[0x4AC];
    *(v53 - 200) = v51 - v57 + 222;
    v58 = (*(v52 + 8 * a45))(v53 - 200);
    return (*(v52 + 8 * ((((v51 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v51 + 517))))(v58);
  }
}

uint64_t sub_10002ECBC@<X0>(int a1@<W8>)
{
  v8 = ((((v7 - 144) | 0x9E517E0) - (v7 - 144) + ((v7 - 144) & 0xF61AE818)) ^ 0x9B332844) * v6;
  *(v7 - 128) = v4;
  *(v7 - 136) = v2 - v8 - 1057;
  *(v7 - 144) = v8 + (a1 & 0xDF6D94EE) + 1056833519 + ((((v2 - 926) | 0x24) - 273233606) ^ v1);
  v9 = (*(v3 + 8 * (v2 + 1136)))(v7 - 144);
  return (*(v3 + 8 * (((*(v7 - 140) == v5) * ((v2 - 453872376) & 0x1B0D877D ^ 0x15E)) ^ v2)))(v9);
}

uint64_t sub_10002EF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46)
{
  *a35 = a46 + 1562827101;
  v52 = *v48;
  v53 = 1361651671 * ((((2 * (v51 - 152)) | 0x79A42FB5B505D2ECLL) - (v51 - 152) + 0x432DE825257D168ALL) ^ 0x6F7F64E309A019FALL);
  *(v49 + 1072) = 5119 - v53;
  *(v51 - 112) = 1591077704 - v53 + v46 - 949;
  *(v51 - 128) = ((v46 + 1586751060) ^ 0x75) - v53;
  *(v51 - 124) = v46 + 1586751060 - v53;
  *(v51 - 152) = -1361651671 * ((((2 * (v51 - 152)) | 0xB505D2EC) - (v51 - 152) + 628954762) ^ 0x9A019FA);
  *(v51 - 148) = v53 + v46 + 1586751060 - 61;
  *(v49 + 1056) = v52 - v53;
  v54 = (*(v47 + 8 * ((v46 - 949) ^ (v50 - 2362))))(v51 - 152);
  return (*(v47 + 8 * *(v51 - 144)))(v54);
}

uint64_t sub_10002F028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a14 = &a11;
  a15 = v17 + 2066391179 * ((831678737 - (&a13 | 0x31926911) + (&a13 | 0xCE6D96EE)) ^ 0x614A14F6) + 887;
  v18 = (*(v16 + 8 * (v17 + 1748)))(&a13);
  return (*(v16 + 8 * ((1529 * (a13 == v15 + (v17 ^ 0xA63) - 2060)) ^ v17)))(v18);
}

uint64_t sub_10002F0C4(void *a1)
{
  if (*a1)
  {
    v3 = (a1[6] | a1[2]) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3;
  return (*(v2 + 8 * ((((((v1 + 1588839834) ^ v4) & 1) == 0) * (((v1 - 911) | 0x200) - 1552)) ^ v1)))();
}

uint64_t sub_10002F15C()
{
  v4 = STACK[0x304];
  v5 = v0 - (LODWORD(STACK[0x304]) - 825) >= ~(LODWORD(STACK[0x304]) - 825);
  v6 = STACK[0x304];
  v7 = 1361651671 * ((~((v3 - 200) | 0xA62E3BB3CABC43) + ((v3 - 200) & 0xA62E3BB3CABC43)) ^ 0x2CF4A2FD9F17B330);
  *(v3 - 160) = 1212454120 - v7 + LODWORD(STACK[0x304]);
  *(v3 - 184) = (v2 - v6 + v5 + 1448) - v7;
  *(v3 - 200) = -1361651671 * ((~((v3 - 200) | 0xB3CABC43) + ((v3 - 200) & 0xB3CABC43)) ^ 0x9F17B330);
  *(v3 - 196) = v7 + v4 + 463466442 - 1;
  *(v3 - 168) = 3 - v7;
  *(v3 - 176) = ((v4 + 463466442) ^ 0x65) - v7;
  *(v3 - 172) = v4 + 463466442 - v7;
  v8 = (*(v1 + 8 * (v6 + 926)))(v3 - 200);
  return (*(v1 + 8 * *(v3 - 192)))(v8);
}

_DWORD *sub_10002F254@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  v5 = ((v4 + 976106226) & 0xC5D1CEC7 ^ 0xC655FFC1) + v3;
  v6 = v2 + 1855795004;
  v7 = v6 < 0xC655F984;
  v8 = v5 < v6;
  if (v3 > 0x39AA067B != v7)
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = a2;
  }

  else
  {
    v9 = a2 + 1;
  }

  *result = v9;
  return result;
}

uint64_t sub_10002F2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 112) = &a13;
  *(v19 - 104) = v16;
  *(v19 - 144) = &a13;
  *(v19 - 136) = &a11;
  *(v19 - 128) = v15;
  *(v19 - 120) = (v13 + 969) ^ (1785193651 * ((v19 - 1075359130 - 2 * ((v19 - 144) & 0xBFE752F6)) ^ 0xAC3BBED6));
  v20 = (*(v17 + 8 * (v13 ^ 0x887)))(v19 - 144);
  return (*(v17 + 8 * ((7 * ((v18 - 540231018) > 0x7FFFFFFE)) ^ v14)))(v20);
}

uint64_t sub_10002F3B0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x22C] + a2 + 72);
  v7 = ((2 * a2) & 0xBB7ACBC0) + (a2 ^ 0x5DBD65E3) + v2;
  *(a1 + v7) = (HIBYTE(v6) ^ 0xC) + ((4 * v3) ^ 0x14) + (~(2 * (HIBYTE(v6) ^ 0xC)) | 0xB1);
  *(a1 + v7 + 1) = (BYTE2(v6) ^ 0xC8) - ((v6 >> 15) & 0x4E) - 89;
  *(a1 + v7 + 2) = (BYTE1(v6) ^ 0xB9) - ((2 * (BYTE1(v6) ^ 0xB9)) & 0x4E) - 89;
  *(a1 + v7 + 3) = v6 ^ 0xD3;
  return (*(v5 + 8 * (((a2 + 4 < LODWORD(STACK[0x288])) * v4) ^ v3)))();
}

void sub_10002F47C(uint64_t a1)
{
  v1 = *a1 ^ (843532609 * ((((2 * a1) | 0x4B562ACC) - a1 - 631969126) ^ 0x79E641E3));
  if (*(*(a1 + 24) + 4) - 1494181296 >= 0)
  {
    v2 = *(*(a1 + 24) + 4) - 1494181296;
  }

  else
  {
    v2 = 1494181296 - *(*(a1 + 24) + 4);
  }

  if (*(*(a1 + 8) + 4) - 1494181296 >= 0)
  {
    v3 = *(*(a1 + 8) + 4) - 1494181296;
  }

  else
  {
    v3 = 1494181296 - *(*(a1 + 8) + 4);
  }

  v7 = *(a1 + 24);
  v6[1] = v1 + 1564307779 * (v6 ^ 0x970DCC13) + 839;
  v4 = *(&off_100085FF0 + v1 - 1257) - 8;
  (*&v4[8 * (v1 ^ 0xC5E)])(v6);
  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  __asm { BRAA            X15, X17 }
}

void sub_10002F5C8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v6 - ((&a4 & 0x29BF5941 | ~(&a4 | 0x29BF5941)) ^ 0x5BEDC452) * v5 + 1077;
  a5 = a1;
  (*(v7 + 8 * (v6 ^ 0x99D)))(&a4);
  sub_10003D434();
}

uint64_t sub_10002F698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, char *a14, int a15, unsigned int a16, char *a17, uint64_t a18)
{
  v22 = 742307843 * ((((2 * &a14) | 0x544CD5D2) - &a14 + 1440322839) ^ 0xB404E7BC);
  a17 = &a13;
  a18 = v18;
  a15 = v22 + v21 - 1318;
  a16 = v22 + 408714310;
  a14 = &a10;
  v23 = (*(v19 + 8 * (v21 + 885)))(&a14);
  return (*(v19 + 8 * ((868 * (*(v18 + 24) == ((v21 - 415) ^ (v20 + 1000)))) ^ v21)))(v23);
}

uint64_t sub_10002F73C(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  v13 = v12 + 4 * v10;
  a6.i32[0] = *(v12 + 4 * (v7 | v10));
  a6.i32[1] = *(v13 + 8);
  a6.i32[2] = *(v13 + 12);
  v14 = vextq_s8(a1, a6, 0xCuLL);
  v15 = a6;
  v15.i32[3] = *(v12 + 4 * (v10 + 4));
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a3), vandq_s8(v14, a2)), 1uLL), *(v13 + 1588));
  v14.i32[0] = *(v8 + 4 * (*(v12 + 4 * (v7 | v10)) & 1));
  v14.i32[1] = *(v8 + 4 * (*(v13 + 8) & 1));
  v14.i32[2] = *(v8 + 4 * (*(v13 + 12) & 1));
  v14.i32[3] = *(v8 + 4 * (v15.i8[12] & 1));
  *v13 = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a4)), a5), v14);
  return (*(v11 + 8 * (((v10 == 220) * v9) ^ (v6 + 779))))();
}

uint64_t sub_10002F7C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x444]) = a4 + 54;
  LODWORD(STACK[0x2B4]) = v4;
  return sub_100047370();
}

uint64_t sub_10002F834()
{
  STACK[0x520] = v0 - 1616;
  LODWORD(STACK[0x4AC]) = v2;
  return (*(v3 + 8 * ((((v1 - 1245658597) & 0x4A3F3CFD ^ 0x48A) * (STACK[0x4D0] == 0)) ^ (v1 + 517))))();
}

uint64_t sub_10002F888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *v8 = (((v6 - 265) | 0x100) ^ 0xFFFFFEDD) + v5;
  v10 = &v8[6 * (v5 - 1893636604)];
  v11 = v10[2];
  LODWORD(STACK[0x518]) = v10[3];
  STACK[0x480] = *(v10 + 2);
  LODWORD(STACK[0x4DC]) = v10[6];
  v12 = *(v7 + 48 * (v11 - 1446922885) + 36);
  LODWORD(STACK[0x3F0]) = v12;
  return (*(v9 + 8 * ((1787 * (v12 == a5)) ^ v6)))();
}

uint64_t sub_10002F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = 2066391179 * ((((2 * &a17) | 0x1326A244) - &a17 - 160649506) ^ 0xA6B4D33A) + 1510;
  a18 = &a13;
  v22 = (*(v21 + 18968))(&a17);
  return (*(v21 + 8 * ((832 * (a17 == v19)) | v20)))(v22);
}

uint64_t sub_10002FAB4@<X0>(int a1@<W8>)
{
  v7 = STACK[0x4DC];
  v8 = STACK[0x480];
  v9 = STACK[0x518];
  v10 = &v5[6 * v1];
  v10[2] = v4;
  v10[3] = v9;
  *(v10 + 2) = v8;
  v10[6] = v7;
  *v5 = a1 + 1;
  LODWORD(STACK[0x3F0]) = v3;
  v12 = v3 - 233762112 > (((v2 ^ 0x126) + 1444) ^ 0xC84F58EC) && v3 - 233762112 < SLODWORD(STACK[0x2C0]);
  return (*(v6 + 8 * ((v12 * ((163 * (v2 ^ 0x126)) ^ 0x164)) ^ v2)))();
}

uint64_t sub_10002FF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57)
{
  STACK[0x3D8] = v58;
  STACK[0x3C8] = STACK[0x2D8];
  STACK[0x430] = *(v59 + 8 * (v57 ^ 0xBA4));
  return sub_10002FFF0(((2 * a56) & 0xFF7FF2BE) + 1526130364 + (((v57 ^ 0xBA4) - 4196009) ^ a56), 167, a3, a4, 522786748, 3772181759, 2146434026, 2073, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a57 + 160);
}

uint64_t sub_10002FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x520] = ((8 * (v70 ^ 0x110u)) ^ 0x5D8) + a70;
  STACK[0x4A0] = v71;
  if (v71)
  {
    v74 = v72 == 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = !v74;
  return (*(v73 + 8 * ((v75 * (v70 ^ 0x1B9)) ^ v70)))();
}

void sub_10003003C()
{
  v0 = __chkstk_darwin();
  v1 = *v0 - 50899313 * ((v0 & 0xEEFB953D | ~(v0 | 0xEEFB953D)) ^ 0x52BF759);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000301E0()
{
  v3 = (*(v2 + 8 * (v0 ^ 0xC89)))();
  STACK[0x520] += ((v0 - 1437) | 0x100u) ^ 0xFFFFFFFFFFFFFEFBLL;
  return (*(v2 + 8 * ((v0 - 1232) ^ (467 * (v1 != 972359704)))))(v3);
}

uint64_t sub_1000302E0(double a1, double a2, double a3, double a4, int8x16_t a5, int8x16_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = (a11 + (v13 + v11));
  v19 = *v18;
  v20 = v18[1];
  v21 = (a8 + v13);
  *v21 = vaddq_s8(vsubq_s8(v19, vandq_s8(vaddq_s8(v19, v19), a5)), a6);
  v21[1] = vaddq_s8(vsubq_s8(v20, vandq_s8(vaddq_s8(v20, v20), a5)), a6);
  return (*(v17 + 8 * (((v13 + 32 == (((v12 - 647) | v14) ^ v15)) * v16) ^ v12)))();
}

uint64_t sub_100030384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v20 = 143681137 * (((v19 - 144) & 0xE1729D49 | ~((v19 - 144) | 0xE1729D49)) ^ 0x7FD5E966);
  *(v19 - 136) = &a16;
  *(v19 - 128) = v20 + v18 - 672 + 278;
  *(v19 - 144) = v20 ^ 0x22DD9984;
  v21 = (*(v16 + 8 * (v18 + 691)))(v19 - 144);
  return (*(v16 + 8 * (((v18 + 227 + ((v18 - 672) ^ 0x387) - 3826) * (v17 == 0)) ^ (v18 + 167))))(v21);
}

uint64_t sub_10003044C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int8x16_t a20, int8x16_t a21, uint64_t a22, uint64_t a23, int8x16_t a24, int8x16_t a25)
{
  v31 = (v28 + a1);
  v32 = veorq_s8(*v26, *v31);
  v33 = veorq_s8(v26[1], v31[1]);
  return (*(v30 + 8 * ((((v29 & 0xFFFFFFE0) == 32) * (21 * (v27 ^ 0x12E) + 74)) ^ v27)))(vorrq_s8(vqtbl1q_s8(v32, a25), v25), vorrq_s8(vqtbl1q_s8(v32, a24), 0), vorrq_s8(vqtbl1q_s8(v32, a21), 0), vorrq_s8(vqtbl1q_s8(v32, a20), 0), vorrq_s8(vqtbl1q_s8(v33, a25), 0), vorrq_s8(vqtbl1q_s8(v33, a21), 0), vorrq_s8(vqtbl1q_s8(v33, a24), 0), vorrq_s8(vqtbl1q_s8(v33, a20), 0));
}

uint64_t sub_100030588(uint64_t a1, unint64_t a2, int a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7)
{
  v16 = HIDWORD(a2) + a4 * (*(a7 + 4 * a6) ^ v8) + (*(v13 + 4 * a5) ^ v8);
  *(v13 + 4 * a5) = v16 + v8 - ((v16 << (v11 & v12 ^ v14)) & v9);
  return (*(v10 + 8 * (((a6 + 1 == v7) * v15) ^ a3)))();
}

uint64_t sub_100030670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, _DWORD *a16)
{
  v20 = (*a16 ^ 0x98437BEB) * *(*(a11 + 32) + 16);
  v21 = 50899313 * ((v18 - 636211487 - 2 * ((v18 - 128) & 0xDA142F61)) ^ 0xCE3BB2FA);
  *(v18 - 128) = v16 - v21 + 145;
  *(v18 - 124) = v21 ^ 0x590F65B0;
  *(v18 - 120) = ((v16 - 871573102) & 0x33F32767 ^ 0xD3F7A9BE) - v21 + (v20 ^ 0x7EEFDEE5) + ((2 * v20) & 0xFDDFBDCA);
  *(v18 - 104) = &a15;
  *(v18 - 112) = a12;
  v22 = (*(v17 + 8 * (v16 + 978)))(v18 - 128);
  return (*(v17 + 8 * ((680 * (a3 == 1)) ^ v16)))(v22);
}

uint64_t sub_1000307A4@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0x1A7;
  v4 = 1388665877 * (((v2 - 200) & 0x5BA628ED | ~((v2 - 200) | 0x5BA628ED)) ^ 0x29F4B5FE);
  *(v2 - 184) = v4 + v3 + 185;
  *(v2 - 180) = v4 - 1742635055;
  *(v2 - 168) = 0;
  *(v2 - 192) = &STACK[0x358];
  *(v2 - 200) = &STACK[0x418];
  v5 = (*(v1 + 8 * (v3 ^ 0x9E6u)))(v2 - 200);
  v6 = *(v1 + 8 * (((*(v2 - 176) == ((v3 - 1380436271) ^ 0x944D3F79)) * (((v3 - 1380436271) & 0x5247C8DF) + 26)) ^ v3));
  STACK[0x2E8] = *(&off_100085FF0 + (v3 | 5u)) - 8;
  return v6(v5);
}

uint64_t sub_1000308E4()
{
  LODWORD(STACK[0x4AC]) = v2;
  STACK[0x520] = v1;
  LODWORD(STACK[0x444]) = v2;
  return sub_10001988C();
}

uint64_t sub_1000309AC@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x49C]) = a1;
  v6 = (*(v4 + 8 * (v1 ^ 0xC6E)))(v3 + 4, 0);
  v7 = v3[4] + 46231500 - ((2 * v3[4]) & 0x582DF98);
  v3[1] = v3[6] + 46231500 - ((v3[6] << ((v1 + 73) ^ 0xA9)) & 0x582DF98);
  v3[2] = v7;
  v8 = (*(v4 + 8 * (v1 + 994)))(v6);
  v3[3] = v8 + 46231500 - ((2 * v8) & 0x582DF98);
  v9 = (*(v4 + 8 * (v1 ^ 0xC1E)))();
  *v3 = v9 + 46231500 - ((2 * v9) & 0x582DF98);
  v10 = (1664525 * (*v2 ^ (*v2 >> 30))) ^ v2[1];
  v2[1] = (((*v3 ^ 0xE8B2B5A0) + 390941280) ^ ((*v3 ^ 0x843B4A58) + 2076489128) ^ ((*v3 ^ 0x6E489034) - 1850249268)) - 1319224355 + (((v10 ^ 0x1FC83426) + 1319831497) ^ ((v10 ^ 0x4E1168AF) + 527588162) ^ ((v10 ^ 0x51D95C89) + 12218216));
  v11 = 1361651671 * ((0xFD58B8C0232C4E9 - ((v5 - 200) | 0xFD58B8C0232C4E9) + STACK[0x2F8]) ^ 0x2387074A2EEFCB9ALL);
  *(v5 - 184) = 2 - v11;
  *(v5 - 160) = 1212454120 - v11 + v1 + 73;
  *(v5 - 200) = -v11;
  *(v5 - 196) = v11 + v1 - 839977131 + 1;
  *(v5 - 168) = 623 - v11;
  *(v5 - 176) = ((v1 - 839977131) ^ 0x76) - v11;
  *(v5 - 172) = v1 - 839977131 - v11;
  v12 = (*(v4 + 8 * ((v1 + 73) ^ 0xCEE)))(v5 - 200);
  return (*(v4 + 8 * *(v5 - 192)))(v12);
}

uint64_t sub_100030C24@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, unsigned int a5@<W8>)
{
  v11 = v9 < v8;
  v12 = *(a4 + v5);
  v13 = v5 + 1;
  *(a2 + a5) = v12 + ~(((3 * (v6 ^ a1)) ^ a3) & (2 * v12)) - 88;
  if (v11 == v13 > v7)
  {
    v11 = v13 + v8 < v9;
  }

  return (*(v10 + 8 * ((v11 | (32 * v11)) ^ v6)))();
}

uint64_t sub_100030C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v25 = 1082434553 * ((2 * ((v24 - 152) & 0x60425370) - (v24 - 152) + 532524172) ^ 0x84FA5A06);
  *(v24 - 136) = &a21;
  *(v24 - 152) = &a14;
  *(v24 - 140) = v25 + v21 + 296704421;
  *(v24 - 112) = &a19;
  *(v24 - 104) = a12;
  *(v24 - 120) = &a17;
  *(v24 - 128) = v25 + v23 + 685;
  v26 = (*(v22 + 8 * (v23 + 2217)))(v24 - 152);
  return (*(v22 + 8 * (((*(v24 - 144) == v23 + 972359516) * (v23 + 187)) ^ v23)))(v26);
}

uint64_t sub_100030DD8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  v19 = &a16 + a1;
  *v19 = 0xA7A7A7A7A7A7A7A7;
  *(v19 + 1) = 0xA7A7A7A7A7A7A7A7;
  return (*(v18 + 8 * ((113 * (((v17 - 665) ^ 0xA0) != (((v17 - 665) ^ 0xFFFFFFFFFFFFFF40) & v16))) ^ (v17 - 665))))();
}

void sub_100030E4C(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 4) - 1494181296;
  if (v2 < 0)
  {
    v2 = 1494181296 - *(*(a1 + 16) + 4);
  }

  v1 = *a1 ^ (1388665877 * ((113357547 - (a1 | 0x6C1B2EB) + (a1 | 0xF93E4D14)) ^ 0x74932FF8));
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100030F64()
{
  v6 = *(v9 + 16);
  v7 = 143681137 * ((((v5 - 144) | 0xEBC3CB05) + (~(v5 - 144) | 0x143C34FA)) ^ 0x8A9B40D4);
  *(v5 - 128) = v7 + v0 + 711;
  *(v5 - 136) = v10;
  *(v5 - 144) = v7 ^ 0x22DC9984;
  (*(v3 + 8 * (v0 ^ 0xB04)))(v5 - 144);
  *(v5 - 136) = v10;
  *(v5 - 128) = v1;
  *(v5 - 120) = (v0 + 820) ^ (1785193651 * ((2 * ((v5 - 144) & 0x27F97488) - (v5 - 144) + 1476823923) ^ 0x4BDA6753));
  *(v5 - 112) = v4;
  *(v5 - 104) = v2;
  *(v5 - 144) = v4;
  (*(v3 + 8 * (v0 + 1770)))(v5 - 144);
  *(v5 - 144) = v4;
  *(v5 - 136) = (v0 + 380) ^ (1785193651 * ((-148316720 - ((v5 - 144) | 0xF728DDD0) + ((v5 - 144) | 0x8D7222F)) ^ 0x1B0BCE0F));
  *(v5 - 128) = v6;
  return (*(v3 + 8 * (v0 + 1797)))(v5 - 144);
}

uint64_t sub_100031258(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  if (a35 == 2)
  {
    return (*(v35 + 8 * (((a34 != 0) * ((a5 - 962457936) & 0x5DC0FBA7 ^ 0x2F9)) ^ (a3 + a5 + 20))))(3684497231);
  }

  if (a35 != 1)
  {
    JUMPOUT(0x100031354);
  }

  return (*(v35 + 8 * ((52 * (a34 == ((a5 + a3) ^ 0x193))) ^ (a5 + a3))))(3684497231, a9);
}

uint64_t sub_100031390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v20 = 1037613739 * ((((2 * (v19 - 120)) | 0x3451313E) - (v19 - 120) - 438868127) ^ 0xCB2AB5E0);
  *(v19 - 104) = v20 + v17 + 44;
  *(v19 - 120) = ((v16 ^ 0xECBBEFEF) + 2070756736 + ((v17 - 646455796) & (2 * v16))) ^ v20;
  *(v19 - 112) = &a16;
  v21 = (*(v18 + 8 * (v17 ^ 0x8B0)))(v19 - 120);
  return sub_100031430(v21);
}

uint64_t sub_100031430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v22 - 112) = &a18;
  *(v22 - 104) = a15;
  *(v22 - 120) = (v21 + 84) ^ (((((v22 - 120) | 0xEC47E9E1) - (v22 - 120) + ((v22 - 120) & 0x13B81618)) ^ 0xB00ABD64) * v19);
  v23 = (*(v18 + 8 * (v21 ^ 0xBF3)))(v22 - 120);
  return (*(v18 + 8 * (((*(v22 - 116) > (((v21 - 21) | 0x64) ^ (v20 - 660))) * (v21 - 725)) | v21)))(v23);
}

uint64_t sub_1000314D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  v38 = (((a35 - 995914010) ^ 0xAD5D83CE) + 1584773725) ^ (a35 - 995914010) ^ (((a35 - 995914010) ^ 0xC34D8984) + 811970583) ^ (((a35 - 995914010) ^ 0x7EFF7BDD) - 1915272624) ^ (((a35 - 995914010) ^ 0x1C38B7FA) + v35 - 1076 + *(v37 - 172) - 284128874);
  *(v37 - 172) = (v35 - 1076) ^ 0x2A3;
  v40 = v38 != 215467629 && (((v35 - 1076) ^ 0x137) & v38) == 13;
  v41 = *(v36 + 8 * ((v40 * ((v35 - 931) ^ 0x1CD)) | (v35 - 1076)));
  *(v37 - 176) = -42899;
  return v41();
}

uint64_t sub_1000316C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v24 = 1037613739 * ((v23 - 985299371 - 2 * ((v23 - 120) & 0xC54586CD)) ^ 0x1447ABB2);
  *(v23 - 112) = &a14;
  *(v23 - 104) = v24 + v16 - 712;
  *(v23 - 120) = ((v19 ^ 0xFD6DEDEF) + 1790656384 + ((v16 - 86255848) & (2 * v19))) ^ v24;
  (*(v18 + 8 * (v16 + 1180)))(v23 - 120);
  *(v23 - 120) = (v16 - 333) ^ ((((v20 | (v23 - 120)) - ((v23 - 120) & v20)) ^ 0x7DEBBFE0) * v21);
  *(v23 - 112) = &a16;
  *(v23 - 104) = a13;
  v25 = (*(v18 + 8 * ((v16 + 105) ^ 0xDF9)))(v23 - 120);
  return (*(v18 + 8 * ((31 * (*(v23 - 116) > ((v16 + 348129337) & (v22 + 70)) + v17 + ((v16 + 348129337 + v22) | 9u))) ^ (v16 + 105))))(v25);
}

uint64_t sub_1000317FC@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(v2 + v7) + (v4 | ~(2 * *(v2 + v7))) - 88;
  return (*(v1 + 8 * (((v7 == 0) * v5) ^ v6)))(0);
}

void sub_100031830()
{
  v3 = v0;
  v4 = (*(v0 + 8 * (v1 ^ 0xD7F)))(3);
  v5 = *(&off_100085FF0 + (v1 ^ 0x4D5));
  *v5 = v4;
  (*(v3 + 8 * (v1 ^ 0xCA6)))();
  v6 = (*(v3 + 8 * (v1 + 1263)))(66);
  v7 = *(&off_100085FF0 + (v1 ^ 0x4D3));
  *(v7 - 4) = v6;
  v7 = (v7 - 4);
  (*(v3 + 8 * (v1 ^ 0xCA6)))();
  v8 = (*(v3 + 8 * (v1 ^ 0xD7F)))(2);
  v9 = *(&off_100085FF0 + v1 - 1047);
  *(v9 - 4) = v8;
  *v8 = 7196;
  **v7 = 0;
  **(&off_100085FF0 + (v1 ^ 0x4C9)) = 0;
  v10 = *(v9 - 4);
  v11 = *v7;
  v12 = *v5;
  v11[64] = 1;
  **(&off_100085FF0 + v1 - 1045) = 51;
  v11[9] = -15;
  v10[1] = 79;
  **(&off_100085FF0 + v1 - 932) = v2;
  **(&off_100085FF0 + v1 - 1039) = -77;
  *v10 = -22;
  v11[11] = 73;
  *v12 = 68;
  v11[20] = -44;
  **(&off_100085FF0 + v1 - 1095) = -121;
  v11[36] = -11;
  v11[45] = -113;
  v11[49] = 25;
  *(v12 + 1) = 6695;
  **(&off_100085FF0 + v1 - 1087) = -122;
  **(&off_100085FF0 + (v1 ^ 0x4C1)) = 88;
  v11[26] = -34;
  v11[60] = -5;
  **(&off_100085FF0 + (v1 ^ 0x4C0)) = 96;
  **(&off_100085FF0 + (v1 ^ 0x41A)) = v2;
  **(&off_100085FF0 + v1 - 1085) = 17;
  **(&off_100085FF0 + (v1 ^ 0x414)) = 119;
  v11[52] = 47;
  v11[50] = 102;
  v11[59] = -59;
  v11[22] = -36;
  v11[29] = 59;
  v11[27] = 34;
  v11[40] = -80;
  v11[13] = 23;
  **(&off_100085FF0 + (v1 ^ 0x409)) = 99;
  v11[53] = 3;
  **(&off_100085FF0 + v1 - 980) = -109;
  v11[39] = 54;
  v11[57] = 73;
  **(&off_100085FF0 + (v1 ^ 0x4E8)) = 83;
  v11[37] = -52;
  v11[63] = -72;
  v13 = *v7;
  *(v13 + 65) = -85;
  *(v13 + 5) = -14;
  *(v13 + 54) = 32;
  *(v13 + 58) = 113;
  *(v13 + 8) = 16909;
  *(v13 + 28) = -39;
  *(v13 + 47) = -4065;
  *(v13 + 21) = 15;
  *(v13 + 41) = -29527;
  *(v13 + 38) = -121;
  *(v13 + 31) = 8824;
  *(v13 + 10) = -98;
  *(v13 + 7) = 27031;
  *(v13 + 23) = -86;
  *(v13 + 14) = -90;
  *(v13 + 62) = -105;
  *(v13 + 35) = 52;
  *(v13 + 33) = 15089;
  *(v13 + 55) = -30385;
  *(v13 + 46) = -17;
  *(v13 + 4) = -92;
  *(v13 + 15) = 72;
  *(v13 + 51) = -15;
  *(v13 + 12) = -15;
  *(v13 + 61) = 73;
  *(v13 + 30) = 36;
  *(v13 + 25) = 69;
  *(v13 + 9) = -9761;
  *(v13 + 43) = 19744;
  *(v13 + 6) = 45;
  *(v13 + 24) = -72;
  JUMPOUT(0x100033C7CLL);
}

uint64_t sub_1000340DC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 4);
  *(v1 + 4) = v4;
  return (*(v2 + 8 * (((((v3 - 328) | 0x43) ^ (v3 - 1035604809) & 0x3DBA0FCD ^ 0x58D) * (v4 == 1494181296)) | v3)))();
}

uint64_t sub_1000341E4()
{
  v5 = *(v1 + v2) - (*(v3 + v2) - 101);
  v6 = ((2 * v5) & 0x5C63B7FE) + (v5 ^ 0x2E31DBFF) == ((2 * (((v0 - 258) | 0x588) ^ 0x569)) ^ 0x2E31DA7D);
  return (*(v4 + 8 * (((2 * v6) | (4 * v6)) ^ v0)))();
}

uint64_t sub_1000342A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v25 = LOBYTE(STACK[0x2D8]);
  if (v25 == 2)
  {
    v37 = LODWORD(STACK[0x2D0]);
    v38 = (v16 + v22 + 1068559148);
    v39 = ((v38[1] ^ a4) << 16) | (((((v17 + 149499864) & 0xF716D3F9) - 81) ^ *v38) << 24) | ((v38[2] ^ a4) << 8);
    *v18 = (v39 | v38[3] ^ a4) + v20 - 2 * ((v39 | v38[3] ^ a4) & (v20 + 4) ^ (v38[3] ^ a4) & 4);
    return (*(v19 + 8 * ((259 * ((v22 + 1068559152) < 0x40)) ^ (v17 + 1023))))(v37);
  }

  else
  {
    if (v25 != 1)
    {
      JUMPOUT(0x10002C1C4);
    }

    v26 = (v16 + v22 + 1068559148);
    v27 = *v26 ^ a4;
    LODWORD(v26) = ((v26[2] ^ a4) << 16) | ((v26[3] ^ a4) << 24) | v27 | ((v26[1] ^ (v21 - 29)) << 8);
    LODWORD(v26) = v26 + v20 - 2 * (v26 & (v20 + 7) ^ v27 & 7);
    v28 = ((2 * ((v23 + 5) ^ 4)) ^ 0x8209008) & 0x1BE7B3FD | (v23 + 5) ^ 4;
    v29 = (4 * v28) & 0x64184C04 ^ v28 ^ ((4 * v28) ^ (v24 + 20)) & 0x1BE7B3F0;
    v30 = (v24 ^ 0x6F9ECFC0) & 0x1BE7B3F0 ^ 5;
    v31 = (16 * v29) & v23 ^ v29 ^ ((16 * v29) ^ 0x4184C010) & v30;
    v32 = (16 * v30) & v23 ^ 0xA4180C05 ^ ((16 * v30) ^ 0x4184C050) & v30;
    v33 = v31 ^ (v31 << 8) & v23 ^ ((v31 << 8) ^ 0x180C0100) & v32 ^ 0x40084004;
    v34 = (v33 << 16) ^ 0x4C050000u;
    v35 = (v33 << 16) & 0x64180000;
    v18[(((2 * (v35 ^ v33 ^ v34 & ((v32 << 8) & 0x64180000 ^ 0x64100000 ^ ((v32 << 8) ^ 0x184C0000) & v32))) ^ 0x3FB0EB2C) >> 2) ^ 0x201FE337] = v26;
    return (*(v19 + 8 * ((126 * ((v22 + 1068559152) > 0x3F)) ^ (v17 + 1684))))(v35, v34, 1679294464, 1068559148, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

void sub_1000345F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = LOBYTE(STACK[0x2CC]);
  if (v4 == 1)
  {
    v9 = STACK[0x2B0];
    v10 = STACK[0x2AC];
    LOBYTE(STACK[0x2A4]) = ((8 * (LOBYTE(STACK[0x2B0]) - ((2 * LOBYTE(STACK[0x2B0])) & 0xAA)) - 72) ^ 0xF) - 16;
    LOBYTE(STACK[0x2A5]) = (((a4 - 120) & 0xDF) + 80) ^ (v9 >> 5);
    LOBYTE(STACK[0x2A6]) = (v9 >> 13) ^ 0xA7;
    LOBYTE(STACK[0x2A7]) = (v9 >> 21) ^ 0xA7;
    LOBYTE(STACK[0x2A8]) = ((__PAIR64__(v10, v9) >> 29) - ((2 * (__PAIR64__(v10, v9) >> 29)) & 4) - 126) ^ 0x25;
    LOBYTE(STACK[0x2A9]) = (v10 >> 5) ^ 0xA7;
    LOBYTE(STACK[0x2AA]) = (v10 >> 13) ^ 0xA7;
    v8 = (v10 >> 21) ^ 0xFFFFFFA7;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    v5 = STACK[0x2AC];
    v6 = STACK[0x2B0];
    v7 = (LODWORD(STACK[0x2AC]) >> 12) & 0x4E;
    LOBYTE(STACK[0x2A4]) = 95 * (a4 ^ (a4 - 9)) + (LODWORD(STACK[0x2AC]) >> 21) - ((LODWORD(STACK[0x2AC]) >> 20) & 0x4E) + 80;
    LOBYTE(STACK[0x2A5]) = (v5 >> 13) - v7 - 89;
    LOBYTE(STACK[0x2A6]) = (v5 >> 5) - ((v5 >> 4) & 0x4E) - 89;
    LOBYTE(STACK[0x2A7]) = (__PAIR64__(v5, v6) >> 29) - ((2 * (__PAIR64__(v5, v6) >> 29)) & 0x4E) - 89;
    LOBYTE(STACK[0x2A8]) = (v6 >> 21) - ((v6 >> 20) & 0x4E) - 89;
    LOBYTE(STACK[0x2A9]) = (v6 >> 13) - ((v6 >> 12) & 0x4E) - 89;
    LOBYTE(STACK[0x2AA]) = (v6 >> 5) - ((v6 >> 4) & 0x4E) - 89;
    LOBYTE(v8) = (8 * (v6 - ((2 * v6) & 4)) + 16) ^ 0xB7;
  }

  LOBYTE(STACK[0x2AB]) = v8;
LABEL_6:
  JUMPOUT(0x100029040);
}

uint64_t sub_1000347A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v22 = 2066391179 * ((((v21 - 176) | 0x5256CFDD) + (~(v21 - 176) | 0xADA93022)) ^ 0xFD714DC4);
  *(v21 - 168) = a2;
  *(v21 - 176) = v20 - v22 + 330;
  *(v21 - 172) = a19 - v22;
  v23 = (*(v19 + 8 * (v20 ^ 0x90F)))(v21 - 176);
  v24 = STACK[0x270] & ((v20 + 1850703060) & 0x91B0831D ^ 0x23);
  *(&STACK[0x22C] + v24) = 39;
  return (*(v19 + 8 * ((1273 * (v24 > 0x37)) ^ v20)))(v23);
}

uint64_t sub_10003488C@<X0>(int a1@<W4>, int a2@<W8>)
{
  v9 = (v3 - 2);
  v10 = v2 + 2;
  *v9 = (v10 ^ v5) * (v10 + 17);
  *(v9 - 1) = (v10 + v6) * (v10 ^ 0xBB);
  return (*(v8 + 8 * (((v4 == 2) * v7) ^ (a1 + a2 + 1878))))();
}

uint64_t sub_100034960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = ((v17 + 1969876289) & 0x8A96104D) + v15 - 448042347 < a15 - 1969976642;
  if ((a15 - 1969976642) < 0xE54B6ADA != v15 > 0x1AB49525)
  {
    v18 = (a15 - 1969976642) < 0xE54B6ADA;
  }

  return (*(v16 + 8 * (((2 * v18) | (8 * v18)) ^ v17)))();
}

uint64_t sub_1000349E0(uint64_t a1)
{
  v2 = 1785193651 * (((a1 | 0xC645374) - a1 + (a1 & 0xF39BAC8B)) ^ 0x1FB8BF54);
  v3 = *(a1 + 16) - v2;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = 1037613739 * ((&v10 + 587612579 - 2 * (&v10 & 0x230641A3)) ^ 0xF2046CDC);
  v10 = (*(a1 + 52) ^ v2) + v8 - 717484469;
  v16 = v7;
  v11 = v6;
  v12 = v4;
  v13 = v5;
  v14 = v8 ^ (v3 - 1421510844);
  result = (*(*(&off_100085FF0 + (v3 ^ 0x54BA8F61)) + v3 - 1421510104))(&v10);
  *(a1 + 48) = v15;
  return result;
}

uint64_t sub_100034B2C(uint64_t a1)
{
  v1 = 742307843 * (((a1 | 0xB9F25DC1) - (a1 & 0xB9F25DC1)) ^ 0xA7D0D094);
  v2 = *(a1 + 12) + v1;
  v3 = *(*(&off_100085FF0 + v2 - 1557) + 83);
  v4 = *(a1 + 4) - v1 - 534564827;
  v5 = v3 + 1293221649 > v4;
  if (v4 < 0x4D14FF11 != v3 > 0xB2EB00EE)
  {
    v5 = v3 > 0xB2EB00EE;
  }

  return (*(*(&off_100085FF0 + v2 - 1573) + ((v5 * ((v2 ^ 0x23F) - 1095)) ^ v2) - 1))();
}

uint64_t sub_100034CE4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16)
{
  v19 = v16 + 975105834 > a16;
  if (a16 < a15 != v16 + 975105834 < (((v18 ^ (v18 - 1429)) - 1201) ^ 0x3A1EEC04u))
  {
    v19 = v16 + 975105834 < (((v18 ^ (v18 - 1429)) - 1201) ^ 0x3A1EEC04u);
  }

  return (*(v17 + 8 * ((55 * v19) ^ (a2 + v18 + 863))))();
}

uint64_t sub_100034D54(_DWORD *a1)
{
  v1 = a1[3] + 2066391179 * ((-2078713933 - (a1 | 0x841957B3) + (a1 | 0x7BE6A84C)) ^ 0xD4C12A54) - 9;
  v2 = v1 + *(*a1 + 4);
  v4 = v2 - 1494182017;
  v3 = (v2 - 1494182017) < 0;
  v5 = 1494182017 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&off_100085FF0 + (v1 - 689)) + (((v5 > 0) * (v1 + 684)) ^ v1) - 1))();
}

uint64_t sub_100034E0C(int8x16_t a1, int8x16_t a2)
{
  v8 = v2 + 2;
  v9 = v4 + 2;
  v10 = vaddq_s8(vsubq_s8(*v8, vandq_s8(vaddq_s8(*v8, *v8), a1)), a2);
  v9[-1] = vaddq_s8(vsubq_s8(v8[-1], vandq_s8(vaddq_s8(v8[-1], v8[-1]), a1)), a2);
  *v9 = v10;
  return (*(v7 + 8 * (((v3 == 32) * ((v5 + 296) ^ v6)) ^ (v5 + 8))))();
}

uint64_t sub_100034E8C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v2 + 1287) ^ (843532609 * (((&v5 | 0x61CCF40C) - &v5 + (&v5 & 0x9E330BF0)) ^ 0x3D81A089));
  v7 = v3;
  v8 = v3;
  v6 = a1;
  return (*(v1 + 8 * (v2 + 2431)))(&v5);
}

void sub_10003506C(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1037613739 * ((2 * (a1 & 0xDA3B98A6) - a1 + 633628505) ^ 0xF4C64A26));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100035180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  *(v35 - 136) = &a30;
  *(v35 - 128) = v33;
  *(v35 - 144) = ((v30 ^ 0x56B) + 1326) ^ (1037613739 * ((456763020 - ((v35 - 144) | 0x1B39A68C) + ((v35 - 144) | 0xE4C65973)) ^ 0x35C4740C));
  *(v35 - 120) = &a30;
  *(v35 - 112) = v34;
  (*(v32 + 8 * ((v30 ^ 0x56B) + 1769)))(v35 - 144);
  *(v35 - 136) = &a30;
  *(v35 - 128) = v33;
  *(v35 - 144) = ((v30 ^ 0x56B) + 1326) ^ (1037613739 * ((-238397004 - ((v35 - 144) | 0xF1CA59B4) + ((v35 - 144) | 0xE35A64B)) ^ 0xDF378B34));
  *(v35 - 120) = &a30;
  *(v35 - 112) = v34;
  (*(v32 + 8 * ((v30 ^ 0x56B) + 1769)))(v35 - 144);
  *(v35 - 144) = ((v30 ^ 0x56B) + 1326) ^ (1037613739 * ((((2 * (v35 - 144)) | 0x513584F4) - (v35 - 144) - 681230970) ^ 0xF998EF05));
  *(v35 - 136) = &a30;
  *(v35 - 128) = v33;
  *(v35 - 120) = &a30;
  *(v35 - 112) = v34;
  (*(v32 + 8 * ((v30 ^ 0x56B) + 1769)))(v35 - 144);
  v36 = 210068311 * ((((v35 - 144) | 0x57D1837) + (~(v35 - 144) | 0xFA82E7C8)) ^ 0x97AB2792);
  *(v35 - 144) = v36 + ((2 * (v31 - 540231018)) & 0x7D7DD5DC) - 269099144 + ((((708 * (v30 ^ 0x75F) + 694875763) & 0xD69505F7) + 1052698167) ^ (v31 - 540231018));
  *(v35 - 136) = (v30 ^ 0x56B) - v36 - 417;
  *(v35 - 128) = a13;
  v37 = (*(v32 + 8 * ((v30 ^ 0x56B) + 1776)))(v35 - 144);
  return (*(v32 + 8 * ((101 * (*(v35 - 140) == 529483433)) ^ v30 ^ 0x56B)))(v37);
}

uint64_t sub_1000353D0()
{
  v6 = (((v0 | 0x9F94708F) - (v0 & 0x9F94708F)) ^ 0x12391263) * v4;
  *(v5 - 184) = v6 + v1 + 185;
  *(v5 - 180) = v6 - 1742635053;
  *(v5 - 200) = &STACK[0x418];
  *(v5 - 192) = &STACK[0x358];
  *(v5 - 168) = 0;
  v7 = (*(v3 + 8 * (v1 + 2278)))(v5 - 200);
  return (*(v3 + 8 * ((91 * (*(v5 - 176) == v2 + v1 - 79 + 5 * (v1 ^ 0x9D) - 130)) ^ v1)))(v7);
}

uint64_t sub_100035480()
{
  v4 = v2 + 568077492 > (v0 + 495355547);
  if ((v0 + 495355547) < 0x89ECC05B != (v2 + 568077492) < 0x89ECC05B)
  {
    v4 = (v2 + 568077492) < 0x89ECC05B;
  }

  return (*(v1 + 8 * (((((v3 - 1202) | 0x369) - 434) * v4) ^ v3)))();
}

uint64_t sub_1000354F0@<X0>(unsigned int a1@<W8>)
{
  v5 = *(&STACK[0x22C] + a1 + 72);
  v6 = ((a1 << (v2 + 82)) & 0xBE9BFDF8) + (a1 ^ 0xDF4DFEFF) + v1;
  *(v3 + v6) = v5 ^ 0xD3;
  *(v3 + v6 + 1) = (BYTE1(v5) ^ 0xB9) - ((2 * (BYTE1(v5) ^ 0xB9)) & 0x4E) - 89;
  *(v3 + v6 + 2) = (BYTE2(v5) ^ 0xC8) - ((v5 >> 15) & 0x4E) - 89;
  *(v3 + v6 + 3) = (HIBYTE(v5) ^ 0xC) - ((2 * (HIBYTE(v5) ^ 0xC)) & 0x4E) - 89;
  return (*(v4 + 8 * ((2885 * (a1 + 4 < LODWORD(STACK[0x288]))) ^ v2)))();
}

uint64_t sub_100035604@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v56 = STACK[0x460];
  v57 = (LODWORD(STACK[0x3D0]) ^ 0x6F7E7DFE) - 105513046 + (((v53 ^ 0xA9F) - 553847883) & (2 * LODWORD(STACK[0x3D0])));
  v58 = 1388665877 * ((2 * ((v55 - 200) & 0x15764768) - (v55 - 200) - 360073068) ^ 0x6724DA78);
  v59 = STACK[0x278];
  *(v55 - 200) = a53;
  *(v55 - 192) = v59;
  *(v55 - 160) = v53 - v58 - 514;
  *(v55 - 180) = -22 - 21 * ((2 * ((v55 + 56) & 0x68) - (v55 + 56) - 108) ^ 0x78);
  *(v55 - 152) = STACK[0x280];
  *(v55 - 144) = v56;
  *(v55 - 184) = v57 ^ v58;
  *(v55 - 176) = (a1 ^ 0x7BDFF70E) - v58 + (((3 * (v53 ^ 0xA)) ^ 0x872) & (2 * a1)) - 537567744;
  *(v55 - 168) = &STACK[0x37C];
  v60 = (*(v54 + 8 * (v53 ^ 0xB53)))(v55 - 200);
  v61 = *(v55 - 172);
  LODWORD(STACK[0x444]) = v61;
  return (*(v54 + 8 * ((43 * (v61 == 972359704)) ^ v53)))(v60);
}

uint64_t sub_100035740@<X0>(uint64_t a1@<X8>)
{
  v5.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v5.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v6.i64[0] = 0xA8A8A8A8A8A8A8A8;
  v6.i64[1] = 0xA8A8A8A8A8A8A8A8;
  v7 = vaddq_s8(vaddq_s8(*(v1 + a1 - 16), v6), vmvnq_s8(vandq_s8(vaddq_s8(*(v1 + a1 - 16), *(v1 + a1 - 16)), v5)));
  *(v1 + v2 + 1420) = vaddq_s8(vaddq_s8(*(v1 + a1 - 32), v6), vmvnq_s8(vandq_s8(vaddq_s8(*(v1 + a1 - 32), *(v1 + a1 - 32)), v5)));
  *(v1 + v2 + 1436) = v7;
  return (*(v4 + 8 * ((((((v3 - 4) ^ 0xFFFFFD37) & v1) != 32) * (((v3 - 205100296) & 0xC3996EF) - 1207)) ^ (v3 - 4))))(32);
}

uint64_t sub_100035820()
{
  v2 = v0 & 0x860EAFF6;
  v3 = ((v0 & 0x860EAFF6) - 1078) | 0x4A8;
  v4 = 12 * (v0 & 0x860EAFF6 ^ 0x514);
  v5 = (*(v1 + 8 * (v0 & 0x860EAFF6 ^ 0xC01)))(1576);
  STACK[0x328] = v5;
  return (*(v1 + 8 * (((v5 != 0) * ((v4 ^ 0xFFFFFB33) + v3)) ^ v2)))();
}

void jfkdDAjba3jd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v6 = *(&off_100085FF0 + ((-109 * (dword_100089B40 ^ 0x95 ^ qword_100089928)) ^ byte_100072050[byte_10006E900[(-109 * (dword_100089B40 ^ 0x95 ^ qword_100089928))] ^ 0xE9]) - 53);
  v7 = *(v6 - 4);
  v8 = *(&off_100085FF0 + (byte_10007205C[(byte_10006E908[(-109 * ((qword_100089928 + v7) ^ 0x95)) - 8] ^ 0x11) - 12] ^ (-109 * ((qword_100089928 + v7) ^ 0x95))) - 81);
  v9 = (*(v8 - 4) + v7) ^ &v11;
  *(v6 - 4) = (665663891 * v9) ^ 0xED30A8472429C395;
  *(v8 - 4) = 665663891 * (v9 ^ 0xED30A8472429C395);
  *a5 = 0;
  *a6 = 0;
  v12[0] = -542396526 - 1388665877 * (((v12 | 0x1A1A5330) - v12 + (v12 & 0xE5E5ACC8)) ^ 0x97B731DC);
  LOBYTE(v8) = -109 * (*(v6 - 4) ^ 0x95 ^ *(v8 - 4));
  v10 = *(&off_100085FF0 + ((-109 * (dword_100089B40 ^ 0x95 ^ qword_100089928)) ^ byte_100072050[byte_10006E900[(-109 * (dword_100089B40 ^ 0x95 ^ qword_100089928))] ^ 0x7E]) - 41) - 8;
  (*&v10[8 * (byte_10006E800[byte_1000796E4[v8 - 4] ^ 0x6B] ^ v8) + 16040])(v12);
  __asm { BRAA            X8, X17 }
}

void sub_100035AE4(int a1@<W8>)
{
  v3 = (a1 - 1129392952) & 0x43512FDF;
  (*(v1 + 8 * (a1 + 2089)))(*STACK[0x218]);
  *(v2 - 200) = (v3 - 1197043899) ^ (1785193651 * (((v2 - 200) & 0x12C320D9 | ~((v2 - 200) | 0x12C320D9)) ^ 0xFEE03306));
  (*(v1 + 8 * (v3 + 856)))(v2 - 200);
  JUMPOUT(0x100035B78);
}

uint64_t sub_100035BC0()
{
  v0.n128_u64[0] = 0xA7A7A7A7A7A7A7A7;
  v0.n128_u64[1] = 0xA7A7A7A7A7A7A7A7;
  return sub_100035BEC(428, v0);
}

uint64_t sub_100035BEC(int a1, int8x16_t a2)
{
  v10 = ~v6 + v4;
  v11 = *(v3 + v10 - 15);
  v12 = *(v3 + v10 - 31);
  v13 = v2 + v10;
  *(v13 - 15) = veorq_s8(v11, a2);
  *(v13 - 31) = veorq_s8(v12, a2);
  return (*(v9 + 8 * (((v8 + v6 == v5) * a1) ^ v7)))();
}

uint64_t sub_100035CDC()
{
  v5 = 2066391179 * ((((v4 - 200) | 0x4B7D2B48) - (v4 - 200) + ((v4 - 200) & 0xB482D4B0)) ^ 0xE45AA950);
  *(v4 - 192) = v2;
  *(v4 - 200) = v1 - v5 - 1076;
  *(v4 - 196) = v0 - v5 + 360356504;
  v6 = (*(v3 + 8 * (v1 ^ 0xC8D)))(v4 - 200);
  return (STACK[0x320])(v6);
}

uint64_t sub_100035D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (v4 + 4 * (a3 + v7));
  *v9 = v6 ^ __ROR4__(*(v9 - 8) ^ *(v9 - 3) ^ *(v9 - 14) ^ *(v9 - 16), 31);
  return (*(v5 + 8 * ((2013 * (a3 + 1 != v8 + 80)) ^ v3)))(a1, 1068559148);
}

uint64_t sub_100035ED8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X4>, uint64_t a3@<X7>, unsigned int a4@<W8>)
{
  v14 = (((v13 ^ 0x372u) - 298 + v6) ^ HIDWORD(a2)) + (*(a3 + 4 * v7) ^ a4);
  v15 = v14 - ((2 * v14) & 0xA4879CB4) + v9;
  *(a3 + 4 * a1) = v15 ^ v10;
  *(a3 + 4 * v7) = HIDWORD(v15) ^ v11;
  return (*(v8 + 8 * (v13 ^ ((v5 + 1 == v4) * v12))))();
}

uint64_t sub_100035F74@<X0>(uint64_t a1@<X8>)
{
  v6 = (v5 - 490);
  *(a1 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3) = vadd_s8(vadd_s8(*(v2 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3), 0xA8A8A8A8A8A8A8A8), vmvn_s8(vand_s8(vadd_s8(*(v2 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3), *(v2 - 7 + (v4 ^ 0xFFFFFFFFFFFFFE15 ^ v6) + v3)), 0x4E4E4E4E4E4E4E4ELL)));
  return (*(v1 + 8 * ((2010 * ((v3 & 0xFFFFFFF8) - 8 == v4)) ^ v5)))();
}

uint64_t sub_10003601C(uint64_t result)
{
  **result = 0;
  *(result + 8) = -849707923;
  return result;
}

void sub_100036034()
{
  STACK[0x2B8] = STACK[0x290];
  STACK[0x450] = *(v1 + 8 * v0);
  JUMPOUT(0x10002BDD8);
}

uint64_t sub_100036158(uint64_t a1)
{
  v2 = 1564307779 * ((1158644730 - (a1 | 0x450F83FA) + (a1 | 0xBAF07C05)) ^ 0x2DFDB016);
  v3 = *(a1 + 12) + v2;
  v4 = *(a1 + 16) + v2;
  v5 = *(a1 + 32) + v2;
  v6 = *a1;
  v7 = *(a1 + 24);
  v8 = (v4 ^ 0xE543C00B) & (2 * (v4 & 0xC84BE92C)) ^ v4 & 0xC84BE92C;
  v9 = ((2 * (v4 ^ 0x75574203)) ^ 0x7A39565E) & (v4 ^ 0x75574203) ^ (2 * (v4 ^ 0x75574203)) & 0xBD1CAB2E;
  v10 = v9 ^ 0x8504A921;
  v11 = (v9 ^ 0x20180000) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xF472ACBC) & v10 ^ (4 * v10) & 0xBD1CAB2C;
  v13 = (v12 ^ 0xB410A820) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x90C0303)) ^ 0xD1CAB2F0) & (v12 ^ 0x90C0303) ^ (16 * (v12 ^ 0x90C0303)) & 0xBD1CAB20;
  v15 = v13 ^ 0xBD1CAB2F ^ (v14 ^ 0x9108A200) & (v13 << 8);
  v16 = v4 ^ (2 * ((v15 << 16) & 0x3D1C0000 ^ v15 ^ ((v15 << 16) ^ 0x2B2F0000) & (((v14 ^ 0x2C14090F) << 8) & 0x3D1C0000 ^ 0x21140000 ^ (((v14 ^ 0x2C14090F) << 8) ^ 0x1CAB0000) & (v14 ^ 0x2C14090F)))) ^ 0x27EA4DD6;
  v17 = 2066391179 * ((2 * (v19 & 0x1D1179B8) - v19 - 487684543) ^ 0x4DC90459);
  v19[1] = v16 + v17;
  v23 = v6;
  v20 = v7;
  v21 = v17 - 1592094861 + (((v5 ^ 0x6231BC94) - 1647426708) ^ ((v5 ^ 0x4E76CE3C) - 1316408892) ^ ((v5 ^ 0x5D866223) - 1569088035));
  v22 = v17 ^ (v3 + 2013067988);
  result = (*(*(&off_100085FF0 + (v3 ^ 0x88030AF4)) + v3 + 2013068964))(v19);
  *(a1 + 8) = v19[0];
  return result;
}

uint64_t sub_1000368E0@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x534]) = a1 + 64;
  v3 = LODWORD(STACK[0x574]) + (((v1 - 2200) | 0x441) ^ 0x2ABF2D42);
  v4 = a1 - 1854856365 > v3;
  if ((a1 - 1854856365) < 0x91712313 != v3 < ((v1 + 85254014) & 0xFAEB17FF ^ 0x91712305))
  {
    v4 = (a1 - 1854856365) < 0x91712313;
  }

  return (*(v2 + 8 * ((54 * v4) ^ v1)))();
}

void sub_100036978(uint64_t a1)
{
  v1 = *(a1 + 12) - 50899313 * ((-2 - ((a1 | 0xB0C40541) + (~a1 | 0x4F3BFABE))) ^ 0x5B146725);
  v2 = *a1;
  v6 = v1 - 2066391179 * ((((&v4 | 0x8D705BB8) ^ 0xFFFFFFFE) - (~&v4 | 0x728FA447)) ^ 0xDDA8265F) - 69;
  v4 = v2;
  v3 = *(&off_100085FF0 + v1 - 767) - 8;
  (*&v3[8 * v1 + 12400])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100036B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25, char *a26, uint64_t a27, char a28)
{
  v44 = v29;
  v34 = ((((v33 - 144) | 0x9E95CF1) + (~(v33 - 144) | 0xF616A30E)) ^ 0x92AEAA7A) * v29;
  *(v33 - 128) = v32;
  *(v33 - 144) = &a20;
  *(v33 - 120) = (v28 - 622) ^ v34;
  *(v33 - 116) = v30 - v34 - 356424205 + 23 * (v28 ^ 0x78C);
  v35 = (*(v31 + 8 * (v28 + 458)))(v33 - 144);
  return sub_1000531C8(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_100036BEC(uint64_t a1)
{
  v1 = *(a1 + 4) - 1388665877 * ((a1 & 0xF983F256 | ~(a1 | 0xF983F256)) ^ 0x8BD16F45);
  v2 = v1 ^ 0x46F;
  v3 = (v1 ^ 0xA6F09F51) + *(*(a1 + 8) + 4);
  if (v3 < 0)
  {
    v3 = -v3;
  }

  return (*(*(&off_100085FF0 + (v2 & 0x66297830)) + ((248 * (((v3 > 0) ^ ((v2 ^ 0x6F) - 58)) & 1)) ^ v2) - 1))();
}

uint64_t sub_100036D58@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, int a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = (v12 ^ a5) * a3;
  v15 = (v11 - 1);
  *(a7 + v15) = *(a8 + v15) ^ *(v9 + ((v14 - 1433) & v15)) ^ *(((v14 - 1433) & v15) + v10 + 5) ^ *(((v14 - 1433) & v15) + a9 + 1) ^ (((v14 + 103) & v15) * a4) ^ a6;
  return (*(v13 + 8 * (((((v15 == 0) ^ (((v14 + 93) ^ a1) + 1)) & 1) * a2) ^ (v14 - 556))))();
}

uint64_t sub_100036DD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) + (~(2 * *(*(a1 + 8) + 12)) | 0xB1) - 88;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((123 * v4) ^ 0x439u)))(0);
}

uint64_t sub_100036E2C@<X0>(uint64_t a1@<X0>, char a2@<W2>, unint64_t a3@<X3>, int a4@<W4>, char a5@<W5>, unsigned int a6@<W6>, uint64_t a7@<X8>)
{
  v13 = v10 - 1;
  *(a1 + v13) = *(v11 + v13) ^ *(a7 + (v13 & 0xF)) ^ *((v13 & 0xF) + v7 + 2) ^ ((v13 & 0xF) * a5) ^ *(v8 + (v13 & 0xF)) ^ a2;
  return (*(v12 + 8 * (((v13 == ((3 * (v9 ^ a6)) ^ a3)) * a4) ^ v9)))();
}

void Fc3vhtJDvr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100036FDC@<X0>(unsigned __int8 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v30 - 120) = v29 - 145;
  v31 = a1[5] ^ 0xE2;
  v32 = *(&off_100085FF0 + v29 - 447);
  *(v30 - 152) = v28;
  v33 = v32 - 8;
  LODWORD(v32) = *(v32 - 8 + v31);
  v34 = *(&off_100085FF0 + v29 - 350) - 12;
  v35 = v34[a1[15] ^ 0x92];
  v36 = v29;
  v37 = ((*(v33 + (((v29 + 111) ^ a1[13]) ^ 0x81u)) << 16) ^ 0xFB969779) & (v35 ^ 0xFFFFD79C);
  v38 = v34[(a1[7] ^ 0x379E8D4EC6A37F07) & 0x44004026 ^ 0x3200894C002233B4 ^ ((a1[7] ^ 0x379E8D4EC6A37F07) & 0x3200894C44227319 | a1[7] & 0xC0)];
  v39 = *(&off_100085FF0 + (v36 ^ 0x165)) - 4;
  v40 = (v38 ^ 0xFFFFFFF3) & ((v32 << 16) ^ 0x6613D89D);
  v41 = ((-1459617792 * v39[a1[4] ^ 0x57] + 1107296256) ^ 0x3D71697B) & ((v40 | v38 & 0x62) ^ 0x997C2126);
  LODWORD(v32) = -87 * v39[a1[12] ^ 0x68] - 62;
  v42 = ((-87 * v39[a1[8] ^ 0xB9] - 62) ^ 0x74) << 24;
  v43 = *(&off_100085FF0 + v36 - 325) - 12;
  LOBYTE(v38) = v43[a1[14] ^ 0xD6] + 37;
  v44 = ((((v38 << 8) ^ 0xFFFFDFFF) & ((v32 << 24) ^ 0x8A98E002) & 0xFFFFE0FF | ((v38 & 0x1F) << 8)) ^ 0xFCAFFD85) & ((v37 | v35 & 0x86) ^ 0x4C968F8) ^ v37 & 0xA1C88078;
  v45 = (v43[a1[6] ^ 0x87] + 37) << 8;
  v46 = v45 & 0x7400 ^ 0xD63C3120 ^ (v45 ^ 0xFFFFCBFF) & ((v41 | v40 & 0x8E8084) ^ 0x1ED16290);
  v47 = v34[a1[3] ^ 0x29];
  v48 = (v47 ^ 0xFFFFF003) & ((*(v33 + (a1[1] ^ 8)) << 16) ^ 0xDA1390A7) | v47 & 0x58;
  LOWORD(v34) = v34[a1[11] ^ 0x62];
  LODWORD(v33) = ((((*(v33 + (a1[9] ^ 0x3BLL)) << 16) ^ 0x15E310D7) & (v42 ^ 0xDFFF7ADF) | v42 & 0xEA000000) ^ 0xF99E2A2B) & (v34 | 0xFFFF7A00);
  LODWORD(v39) = v39[*a1 ^ 0xE1];
  LODWORD(v39) = ((-73 * v39 - 121 * (-82 - 2 * v39)) ^ 0x82) << 24;
  v49 = (v39 ^ 0x23FF88FF) & (v48 ^ 0xAB401841);
  LOBYTE(v48) = v43[a1[2] ^ 0x8FLL] + 37;
  v50 = v43[a1[10] ^ 0xB7] + 37;
  v51 = v44 ^ 0x941EEFBA;
  LODWORD(v43) = (v48 << 8) & 0xEEEE ^ 0xBA6BD9F8 ^ (v39 & 0x8E000000 ^ 0xC326991D ^ v49) & ((v48 << 8) ^ 0xFFFF27FF);
  v52 = (((v50 ^ 0xE7) << 8) & 0x1000 | ((v33 & 0xFFFFFFFC | v34 & 3) ^ 0x37A3D573) & ~((v50 ^ 0xE7) << 8)) ^ 0x1331EF8C;
  v53 = *(&off_100085FF0 + v36 - 322) - 8;
  v54 = *&v53[4 * (BYTE2(v44) ^ 0x9C)];
  v55 = *(&off_100085FF0 + (v36 ^ 0x166)) - 12;
  v56 = v32 ^ 0x88u;
  LODWORD(v34) = *&v55[4 * (v38 ^ 0x7E)] ^ 0x8BEB537A;
  *(v30 - 144) = v36;
  v57 = *(&off_100085FF0 + v36 - 304) - 4;
  v58 = (v54 ^ v34) - ((2 * (v54 ^ v34)) & 0xEE4F534E) - 148395609;
  v59 = *(&off_100085FF0 + (v36 ^ 0x1DC)) - 12;
  LODWORD(v39) = *&v59[4 * (v35 ^ 0x22)];
  v60 = (v58 ^ *&v57[4 * v56]) - ((2 * (v58 ^ *&v57[4 * v56])) & 0x77AA03FC) + 1003815422;
  *(v30 - 208) = v52;
  *(v30 - 204) = v43;
  v61 = v43 ^ v39 ^ v60;
  *(v30 - 196) = v46;
  v62 = (v61 - ((2 * v61) & 0x1C21149E) + 235965007) ^ v46;
  LODWORD(v39) = ((v62 ^ v52) - ((2 * (v62 ^ v52)) & 0x9A7165D6) + 1295561451) ^ v44 ^ 0x941EEFBA;
  v63 = *&v59[4 * ((((v62 ^ v52) - ((2 * (v62 ^ v52)) & 0xD6) - 21) ^ v44 ^ 0xBA) ^ 0x35)] ^ 0x3751DCDB;
  LODWORD(v39) = v39 ^ 0xF83672DE;
  *(v30 - 160) = BYTE1(v39);
  v64 = v63 ^ *&v55[4 * (BYTE1(v39) ^ 0x9E)];
  v65 = (v64 - ((2 * v64) & 0xEE4F534E) - 148395609) ^ *&v57[4 * ((v39 >> 24) ^ 0x86)];
  v66 = v61 ^ *&v53[4 * (BYTE2(v39) ^ 0xBA)] ^ (v65 - ((2 * v65) & 0xEDF1CBE) - 2022732193);
  v249 = v66 ^ v62 ^ 0xA25B684D;
  *(v30 - 200) = v51;
  LODWORD(v39) = ((v249 ^ 0xF73EC34E) - ((2 * (v249 ^ 0xF73EC34E)) & 0x9A7165D6) + 1295561451) ^ v51;
  v67 = v39 ^ 0x7E4FB786;
  v257 = (v39 ^ 0x7E4FB786) >> 24;
  v248 = ((v39 ^ 0x7E4FB786) >> 16);
  v68 = *&v57[4 * (v257 ^ 0x86)] ^ *&v53[4 * (v248 ^ 0xBA)];
  v241 = ((v39 ^ 0xB786) >> 8);
  v69 = ((v68 ^ 0x704827F8) - ((2 * (v68 ^ 0x704827F8)) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (v241 ^ 0x9E)];
  *(v30 - 156) = v39;
  v70 = v66 ^ *&v59[4 * (v39 ^ 0x6D)] ^ (v69 - ((2 * v69) & 0x77AA03FC) + 1003815422);
  *(v30 - 124) = v70;
  v70 ^= 0xFEB4AEEu;
  LODWORD(v39) = v70 ^ v62 ^ v52 ^ 0xF83672DE;
  v182 = v62 ^ v52 ^ 0xF83672DE;
  v71 = v70;
  *(v30 - 232) = v39;
  v72 = v67 ^ v39;
  LODWORD(v39) = ((v67 ^ v39) >> 16);
  *(v30 - 252) = v39;
  LODWORD(v39) = *&v53[4 * (v39 ^ 0xBA)];
  *(v30 - 224) = BYTE1(v72);
  LODWORD(v39) = v39 ^ *&v55[4 * (BYTE1(v72) ^ 0x9E)] ^ 0x8BEB537A;
  *(v30 - 240) = HIBYTE(v72);
  LODWORD(v39) = (v39 - ((2 * v39) & 0xEE4F534E) - 148395609) ^ *&v57[4 * (HIBYTE(v72) ^ 0x86)];
  *(v30 - 164) = v72;
  v73 = v71;
  v255 = BYTE2(v71);
  v74 = v71 ^ *&v59[4 * (v72 ^ 0xEB)] ^ (v39 - ((2 * v39) & 0x77AA03FC) + 1003815422);
  v224 = v249 ^ 0xF73EC34E ^ v182;
  *(v30 - 136) = v74 ^ v224;
  LODWORD(v35) = v74 ^ v224 ^ 0x598844C8;
  v193 = v74 ^ v249 ^ 0x4E ^ v182 ^ 0xC8;
  v216 = v193 ^ v72;
  v219 = (v35 ^ v72 ^ 0xCD2CB9A0) >> 24;
  LODWORD(v39) = *&v59[4 * ((v35 ^ v72) ^ 0x83)] ^ *&v57[4 * (v219 ^ 0x86)] ^ 0xCCF2A859;
  v75 = v39 - ((2 * v39) & 0xEDF1CBE);
  LODWORD(v39) = v35 ^ v72 ^ 0xCD5DCD68;
  v201 = BYTE2(v39);
  v76 = (v75 - 2022732193) ^ *&v53[4 * (BYTE2(v39) ^ 0xBA)];
  v213 = BYTE1(v39);
  v77 = (v76 - ((2 * v76) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (BYTE1(v39) ^ 0x9E)];
  v256 = v73 ^ v249 ^ 0xF73EC34E;
  *(v30 - 140) = v256 ^ 0x7E4FB786;
  v254 = v77 ^ v256 ^ 0x7E4FB786;
  v78 = v254 ^ 0xF39A3E26 ^ v72;
  v79 = *&v57[4 * ((v78 >> (v74 & 0x18) >> (v74 & 0x18 ^ 0x18)) ^ 0x86)] ^ *&v53[4 * (BYTE2(v78) ^ 0xBA)] ^ 0x704827F8;
  v80 = (v79 - ((2 * v79) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (BYTE1(v78) ^ 0x9E)];
  v253 = v77 ^ v74;
  v252 = v254 ^ 0xF39A3E26 ^ v35;
  v185 = v77 ^ v74 ^ *&v59[4 * (v254 ^ 0x26 ^ v35 ^ v39 ^ 0x83)] ^ (v80 - ((2 * v80) & 0x77AA03FC) + 1003815422);
  v81 = v185 ^ 0x53DB0D92 ^ v254 ^ 0xF39A3E26;
  *(v30 - 256) = v185 ^ 0x53DB0D92;
  v82 = v81 ^ 0xF73EC34E;
  *(v30 - 148) = v81;
  LODWORD(v39) = v81 ^ 0xF73EC34E ^ v39;
  v83 = v39 ^ 0xBF7FF0FA;
  v84 = *&v53[4 * (((v39 ^ 0xBF7FF0FA) >> 16) ^ 0xBA)];
  *(v30 - 248) = v39;
  LODWORD(v39) = *&v59[4 * (v39 ^ 0x11)] ^ v84;
  v184 = HIBYTE(v83);
  v85 = ((v39 ^ 0xBCBA8FA1) - 2 * ((v39 ^ 0xBCBA8FA1) & 0x7727A9BF ^ v39 & 0x18) - 148395609) ^ *&v57[4 * (HIBYTE(v83) ^ 0x86)];
  v187 = BYTE1(v83);
  LODWORD(v39) = v185 ^ 0x53DB0D92 ^ *&v55[4 * (BYTE1(v83) ^ 0x9E)] ^ (v85 - ((2 * v85) & 0x1909BA4A) + 210033957);
  *(v30 - 132) = v39;
  v86 = v82 ^ v252 ^ 0xCD5DCD68;
  v231 = v39 ^ 0x85DB0D92 ^ v185 ^ 0x53DB0D92 ^ v254 ^ 0xF39A3E26;
  v204 = v39 ^ 0x85DB0D92;
  v236 = v231 ^ 0x484133B4 ^ v86;
  LODWORD(v39) = v236 ^ 0xBDE5CEDC ^ v83;
  LOBYTE(v49) = v39 ^ 0x26;
  v244 = (v39 ^ 0x29A3E26) >> 24;
  v251 = ((v39 ^ 0x3E26) >> 8);
  v87 = *&v57[4 * (v244 ^ 0x86)] ^ *&v55[4 * (v251 ^ 0x9E)] ^ 0xFBA37482;
  v239 = ((v39 ^ 0x29A3E26) >> 16);
  v88 = (v87 - ((2 * v87) & 0xEDF1CBE) - 2022732193) ^ *&v53[4 * (v239 ^ 0xBA)];
  v222 = v39;
  v207 = (v88 + 1003815422 + (~(2 * v88) | 0x8855FC03) + 1) ^ *&v59[4 * (v39 ^ 0xCD)];
  v209 = v231 ^ 0x484133B4 ^ v207 ^ v204;
  *(v30 - 128) = v207 ^ v204;
  v198 = v236 ^ 0xBDE5CEDC ^ v209 ^ 0x19868409;
  *(v30 - 176) = v209 ^ 0x19868409;
  LODWORD(v39) = v198 ^ 0xC130088F ^ v39 ^ 0x29A3E26;
  v89 = *&v57[4 * (((v39 ^ 0x7B68C86) >> 24) ^ 0x86)] ^ *&v55[4 * (((v39 ^ 0x8C86) >> 8) ^ 0x9E)] ^ 0xFBA37482;
  *(v30 - 212) = v39 ^ 0x7B68C86;
  v90 = (v89 - ((2 * v89) & 0xEDF1CBE) - 2022732193) ^ *&v53[4 * (((v39 ^ 0x7B68C86) >> 16) ^ 0xBA)];
  v232 = v207 ^ v204 ^ *&v59[4 * (v198 ^ 0x8F ^ v49 ^ 0x6D)] ^ (v90 - ((2 * v90) & 0x77AA03FC) + 1003815422);
  *(v30 - 168) = v232 ^ 0x7B68C86;
  v228 = v232 ^ 0x7B68C86 ^ v209 ^ 0x19868409 ^ v198 ^ 0xC130088F;
  *(v30 - 172) = v228 ^ 0xC104CD8D;
  LODWORD(v56) = v228 ^ 0xC104CD8D ^ v39 ^ 0x7B68C86;
  v247 = v228 ^ 0x8D ^ v39 ^ 0x86;
  v91 = *&v59[4 * (v247 ^ 0x49)];
  v246 = (v56 ^ 0xA91877A2) >> 24;
  LODWORD(v57) = *&v57[4 * (v246 ^ 0x86)];
  *(v30 - 116) = 0;
  LODWORD(v57) = ((v91 ^ 0xCCF2A859 ^ v57) - ((2 * (v91 ^ 0xCCF2A859 ^ v57)) & 0x1909BA4A) + 210033957) ^ *&v55[4 * (((v56 ^ 0x77A2) >> 8) ^ 0x9E)];
  v174 = ((v56 ^ 0xA91877A2) >> 16);
  HIDWORD(v181) = (v57 - ((2 * v57) & 0xEDF1CBE) - 2022732193) ^ *&v53[4 * (v174 ^ 0xBA)];
  v92 = *(v30 - 144);
  v93 = *(&off_100085FF0 + (v92 ^ 0x1B3)) - 4;
  LODWORD(v57) = (BYTE2(v182) ^ 0xFD84E2EE) - 2042320752 + *&v93[4 * (BYTE2(v182) ^ 0x7E)];
  v94 = *(&off_100085FF0 + v92 - 430);
  LODWORD(v59) = ((BYTE2(v62) ^ 0xFD84E228) - 2042320752 + *&v93[4 * (BYTE2(v62) ^ 0xB8)]) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v62) ^ 0xE7)) - 1944452531);
  v95 = *(&off_100085FF0 + (v92 ^ 0x1D8));
  LODWORD(v57) = (v57 - ((2 * v57) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * ((v62 ^ v52) ^ 0x33u));
  v96 = *(&off_100085FF0 + (v92 ^ 0x18A)) - 8;
  LODWORD(v59) = (v59 - ((2 * v59) & 0xCC13F682) - 435553471) ^ *&v96[4 * ((((v61 - ((2 * v61) & 0x149E) - 30129) ^ v46) >> 8) ^ 0x4B)];
  v191 = v59 - ((2 * v59) & 0xECE1818C);
  HIDWORD(v192) = *&v96[4 * (((v62 ^ v52) >> 8) ^ 0xE4)] ^ (-1974868763 * *(v94 + 4 * (((v62 ^ v52) >> 24) ^ 0x54)) - 1944452531) ^ (v57 - ((2 * v57) & 0xCC13F682) - 435553471);
  LODWORD(v59) = (((v185 ^ 0xB89A99EC) >> 16) ^ 0xFD84E2A4) - 2042320752 + *&v93[4 * (((v185 ^ 0xB89A99EC) >> 16) ^ 0x34)];
  v179 = v86 ^ 0xBFAB50FA;
  v97 = ((BYTE2(v179) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (BYTE2(v179) ^ 0x7B)]) ^ *(v95 + 4 * (v86 ^ 0x5Fu)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v86) ^ 0xD2)) - ((345229770 * *(v94 + 4 * (HIBYTE(v86) ^ 0xD2)) + 406062234) & 0xECE1818C) + 42648339);
  LODWORD(v43) = (-1974868763 * *(v94 + 4 * (v184 ^ 0xB6)) - ((345229770 * *(v94 + 4 * (v184 ^ 0xB6)) + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * (v187 ^ 0x25)];
  v189 = v43 - ((2 * v43) & 0xECE1818C);
  LODWORD(v57) = *&v96[4 * ((v185 ^ 0x99EC) >> 8)] ^ (v59 - ((2 * v59) & 0xCC13F682) - 435553471);
  LODWORD(v35) = *(v30 - 148);
  LODWORD(v43) = (((v35 ^ 0xE14101D4) >> 16) ^ 0xFD84E2EA) - 2042320752 + *&v93[4 * (((v35 ^ 0xE14101D4) >> 16) ^ 0x7A)];
  HIDWORD(v186) = v57 - ((2 * v57) & 0xECE1818C);
  LODWORD(v186) = v97 - ((2 * v97) & 0xCC13F682);
  LODWORD(v57) = (v43 - ((2 * v43) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v35 ^ 0xA4u)) ^ (-1974868763 * *(v94 + 4 * (BYTE3(v35) ^ 0x40)) - 1944452531);
  v178 = v57 - ((2 * v57) & 0xCC13F682);
  LODWORD(v57) = (((v74 ^ 0xFC9A360D) >> 16) ^ 0xFD84E279) - 2042320752 + *&v93[4 * (((v74 ^ 0xFC9A360D) >> 16) ^ 0xE9)];
  v176 = v74 ^ *(v30 - 140);
  LODWORD(v59) = *(v94 + 4 * (HIBYTE(v176) ^ 0x39));
  LODWORD(v59) = (-1974868763 * v59 - ((345229770 * v59 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * ((v176 ^ 0xDA26) >> 8)];
  LODWORD(v43) = v57 - ((2 * v57) & 0xECE1818C);
  LODWORD(v57) = (v201 ^ 0xFD84E284) - 2042320752 + *&v93[4 * (v201 ^ 0x14)];
  LODWORD(v43) = (v43 + 1987100870) ^ *(v95 + 4 * (v74 ^ 0x7Du)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v74) ^ 0x5D)) - 1944452531);
  v170 = *(v30 - 136) ^ 0xAF58D76C;
  v98 = (BYTE2(v170) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (BYTE2(v170) ^ 0x7B)];
  HIDWORD(v188) = v59 - ((2 * v59) & 0xECE1818C);
  LODWORD(v59) = (v98 - ((2 * v98) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v193 ^ 0xD4u));
  LODWORD(v194) = v59 - ((2 * v59) & 0xCC13F682);
  v202 = (((v176 ^ 0xEA49DA26) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v176 ^ 0xEA49DA26) >> 16) ^ 0x7B)];
  LODWORD(v59) = (v57 - ((2 * v57) & 0xCC13F682) - 435553471) ^ *&v96[4 * (v213 ^ 0xE5)] ^ (-1974868763 * *(v94 + 4 * (v219 ^ 0xF0)) - 1944452531);
  v172 = v43 - ((2 * v43) & 0xCC13F682);
  v214 = v216 ^ 0xC3;
  v220 = v59 - ((2 * v59) & 0xECE1818C);
  v99 = (v248 ^ 0xFD84E219) - 2042320752 + *&v93[4 * (v248 ^ 0x89)];
  LODWORD(v59) = (v99 - ((2 * v99) & 0xCC13F682) - 435553471) ^ *&v96[4 * (v241 ^ 0x93)];
  v217 = v59 - ((2 * v59) & 0xECE1818C);
  v100 = *(v94 + 4 * (HIBYTE(v224) ^ 0xDE));
  LODWORD(v43) = (((v249 ^ 0x47E1030D) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v249 ^ 0x47E1030D) >> 16) ^ 0x7B)];
  LODWORD(v59) = (v43 - ((2 * v43) & 0xCC13F682) - 435553471) ^ *&v96[4 * ((v249 ^ 0x30D) >> 8)];
  v101 = ((BYTE2(v224) ^ 0xFD84E243) - 2042320752 + *&v93[4 * (BYTE2(v224) ^ 0xD3)]) ^ *&v96[4 * (BYTE1(v224) ^ 0xDB)] ^ (-1974868763 * v100 - ((345229770 * v100 + 406062234) & 0xCC13F682) + 1914961294);
  LODWORD(v169) = v59 - ((2 * v59) & 0xECE1818C);
  v168 = v224 ^ 0x6A;
  v225 = v101 - ((2 * v101) & 0xECE1818C);
  LODWORD(v59) = (BYTE2(v198) ^ 0xFD84E256) - 2042320752 + *&v93[4 * (BYTE2(v198) ^ 0xC6)];
  LODWORD(v43) = v59 - ((2 * v59) & 0xECE1818C);
  v102 = *(v30 - 128) ^ 0xDDA7A6D4;
  LODWORD(v59) = *(v94 + 4 * ((v207 ^ ~v204) >> 24));
  v103 = (-1974868763 * v59 - ((345229770 * v59 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * BYTE1(v102)];
  HIDWORD(a28) = v198 ^ 0x8F ^ v49 ^ 0xF9;
  LODWORD(v43) = (v43 + 1987100870) ^ *(v95 + 4 * (v236 ^ 0xDC ^ v209 ^ 9 ^ 0x67u)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v198) ^ 0x3E)) - 1944452531);
  v196 = v103 - ((2 * v103) & 0xECE1818C);
  v164 = BYTE1(v209) ^ 0x9E;
  v104 = *(v94 + 4 * (HIBYTE(v209) ^ 0xCD));
  v105 = *(v95 + 4 * (v231 ^ 0xB4 ^ (v207 ^ v204) ^ 0xC9u)) ^ (-1974868763 * v104 - ((345229770 * v104 + 406062234) & 0xECE1818C) + 42648339);
  v195 = v105 - ((2 * v105) & 0xCC13F682);
  v235 = (BYTE2(v102) ^ 0xFD84E2A5) - 2042320752 + *&v93[4 * (BYTE2(v102) ^ 0x35)];
  v162 = BYTE1(v198) ^ 0x4F;
  v199 = v43 - ((2 * v43) & 0xCC13F682);
  v242 = (BYTE2(v209) ^ 0xFD84E2FB) - 2042320752 + *&v93[4 * (BYTE2(v209) ^ 0x6B)];
  LODWORD(v43) = (BYTE2(v231) ^ 0xFD84E271) - 2042320752 + *&v93[4 * (BYTE2(v231) ^ 0xE1)];
  LODWORD(v43) = (v43 - 435553471 + (~(2 * v43) | 0x33EC097D) + 1) ^ *&v96[4 * (BYTE1(v231) ^ 0x28)];
  v106 = *(v94 + 4 * (HIBYTE(v236) ^ 0x22));
  v107 = (-1974868763 * v106 - ((345229770 * v106 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * ((v236 ^ 0x4AFA) >> 8)];
  v166 = v236 ^ 0xE4;
  v210 = v107 - ((2 * v107) & 0xECE1818C);
  v237 = (((v236 ^ 0xBF864AFA) >> 16) ^ 0xFD84E2A5) - 2042320752 + *&v93[4 * (((v236 ^ 0xBF864AFA) >> 16) ^ 0x35)];
  v159 = v244 ^ 0x67;
  v240 = (v239 ^ 0xFD84E291) - 2042320752 + *&v93[4 * (v239 ^ 1)];
  LODWORD(v35) = *(v30 - 132);
  LODWORD(v59) = *(v94 + 4 * (BYTE3(v35) ^ 0x82));
  LODWORD(v59) = (-1974868763 * v59 - ((345229770 * v59 + 406062234) & 0xCC13F682) + 1914961294) ^ *&v96[4 * (BYTE1(v35) ^ 5)] ^ ((BYTE2(v204) ^ 0xFD84E2FE) - 2042320752 + *&v93[4 * (BYTE2(v204) ^ 0x6E)]);
  v245 = v59 - ((2 * v59) & 0xECE1818C);
  v153 = BYTE1(v228) ^ 0x4E;
  v108 = *(v94 + 4 * (HIBYTE(v228) ^ 0x27));
  v109 = (-1974868763 * v108 - ((345229770 * v108 + 406062234) & 0xECE1818C) + 42648339) ^ *(v95 + 4 * (v228 ^ 0x5Au));
  v158 = BYTE1(v232) ^ 0x82;
  LODWORD(v59) = (((v232 ^ 0xC1698200) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v232 ^ 0xC1698200) >> 16) ^ 0x7B)];
  v110 = (-1974868763 * *(v94 + 4 * (HIBYTE(v232) ^ 0x60)) - 1944452531) ^ *(v95 + 4 * (v232 ^ 0x72u)) ^ (v59 - ((2 * v59) & 0xECE1818C) + 1987100870);
  v111 = *(v94 + 4 * (v246 ^ 0x21));
  v112 = *(v95 + 4 * (v247 ^ 0x12u)) ^ ((v174 ^ 0xFD84E2A2) - 2042320752 + *&v93[4 * (v174 ^ 0x32)]) ^ (-1974868763 * v111 - ((345229770 * v111 + 406062234) & 0xECE1818C) + 42648339);
  v113 = HIBYTE(v249) ^ 0xE6;
  v160 = v249 ^ 0x7D;
  v155 = v110 - ((2 * v110) & 0xCC13F682);
  HIDWORD(v154) = v112 - ((2 * v112) & 0xCC13F682);
  LODWORD(v154) = v109 - ((2 * v109) & 0xCC13F682);
  v250 = (((v228 ^ 0x68D34E2A) >> 16) ^ 0xFD84E2EB) - 2042320752 + *&v93[4 * (((v228 ^ 0x68D34E2A) >> 16) ^ 0x7B)];
  v114 = (BYTE2(v253) ^ 0xFD84E2A2) - 2042320752 + *&v93[4 * (BYTE2(v253) ^ 0x32)];
  v115 = (BYTE2(v252) ^ 0xFD84E24B) - 2042320752 + *&v93[4 * (BYTE2(v252) ^ 0xDB)];
  v116 = (v115 - ((2 * v115) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v252 ^ 0x15u));
  LODWORD(v57) = (((v254 ^ 0xF39A3E26) >> 16) ^ 0xFD84E2B1) - 2042320752 + *&v93[4 * (((v254 ^ 0xF39A3E26) >> 16) ^ 0x21)];
  v117 = (v114 - ((2 * v114) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v253 ^ 0x54u)) ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v253) ^ 0xEA)) - 1944452531);
  HIDWORD(v150) = v117 - ((2 * v117) & 0xCC13F682);
  HIDWORD(a2) = BYTE1(v252) ^ 0xCC;
  LODWORD(v150) = v116 - ((2 * v116) & 0xCC13F682);
  HIDWORD(v151) = v78 ^ 0x81;
  LODWORD(v151) = v254 ^ 0xB;
  LODWORD(v57) = (v57 - ((2 * v57) & 0xCC13F682) - 435553471) ^ *&v96[4 * (BYTE1(v254) ^ 0x56)] ^ (-1974868763 * *(v94 + 4 * (HIBYTE(v254) ^ 0x6D)) - 1944452531);
  HIDWORD(v152) = v57 - ((2 * v57) & 0xECE1818C);
  v205 = (BYTE2(v78) ^ 0xFD84E2DC) - 2042320752 + *&v93[4 * (BYTE2(v78) ^ 0x4C)];
  LODWORD(v57) = (*(v30 - 252) ^ 0xFD84E246) - 2042320752 + *&v93[4 * (*(v30 - 252) ^ 0xD6)];
  *(v30 - 252) = v57 - ((2 * v57) & 0xCC13F682);
  v118 = *(v30 - 124);
  LODWORD(v57) = (-1974868763 * *(v94 + 4 * (HIBYTE(v118) ^ 0x41)) - 1944452531) ^ ((v255 ^ 0xFD84E273) - 2042320752 + *&v93[4 * (v255 ^ 0xE3)]);
  v119 = (v57 - ((2 * v57) & 0xCC13F682) - 435553471) ^ *&v96[4 * (BYTE1(v118) ^ 0x6F)];
  LODWORD(v57) = BYTE2(*(v30 - 140));
  v120 = (v57 ^ 0xFD84E2B8) - 2042320752 + *&v93[4 * (v57 ^ 0x28)];
  v121 = (v120 - ((2 * v120) & 0xECE1818C) + 1987100870) ^ *(v95 + 4 * (v256 ^ 0xCEu));
  v122 = v121 - ((2 * v121) & 0xCC13F682);
  LODWORD(v39) = *(v30 - 232);
  v123 = *(v94 + 4 * ((v39 >> 24) ^ 0x18));
  v124 = *(v94 + 4 * (*(v30 - 240) ^ 7u));
  HIDWORD(v180) = -1974868763 * *(v94 + 4 * v113) - 1944452531;
  v125 = -1974868763 * *(v94 + 4 * (v257 ^ 0x32)) - 1944452531;
  v233 = -1974868763 * *(v94 + 4 * v159) - 1944452531;
  v229 = -1974868763 * *(v94 + 4 * (HIBYTE(v252) ^ 0x5B)) - 1944452531;
  LODWORD(v171) = -1974868763 * *(v94 + 4 * (HIBYTE(v78) ^ 0x17)) - 1944452531;
  LODWORD(v175) = -1974868763 * *(v94 + 4 * (HIBYTE(v256) ^ 0x2E)) - 1944452531;
  HIDWORD(v175) = -1974868763 * *(v94 + 4 * (HIBYTE(*(v30 - 136)) ^ 0xEu)) - 1944452531;
  LODWORD(v57) = (-1974868763 * v123 - ((345229770 * v123 + 406062234) & 0xECE1818C) + 42648339) ^ *(v95 + 4 * (v39 ^ 0xBCu));
  *(v30 - 160) = *&v96[4 * BYTE1(v179)];
  v227 = *&v96[4 * (BYTE1(*(v30 - 148)) ^ 0x2D)];
  *(v30 - 148) = *&v96[4 * BYTE1(v170)];
  LODWORD(v165) = *&v96[4 * v164];
  HIDWORD(v169) = *&v96[4 * v162];
  LODWORD(v167) = *&v96[4 * (v251 ^ 0x72)];
  HIDWORD(v161) = *&v96[4 * v158];
  v126 = *&v96[4 * v153];
  LODWORD(v180) = *&v96[4 * (BYTE1(v78) ^ 0x6E)];
  LODWORD(v35) = (*(v30 - 252) - 435553471) ^ *&v96[4 * (*(v30 - 224) ^ 0xB0)] ^ (-1974868763 * v124 - 1944452531);
  HIDWORD(v173) = *&v96[4 * (BYTE1(v253) ^ 0x83)];
  LODWORD(v163) = *&v96[4 * HIDWORD(a2)];
  LODWORD(v188) = *&v96[4 * (BYTE1(v256) ^ 0x74)];
  HIDWORD(v163) = *&v96[4 * (BYTE1(v39) ^ 0xF4)];
  LODWORD(v96) = *&v93[4 * (BYTE2(v39) ^ 0xF4)];
  LODWORD(v186) = v186 - 435553471;
  HIDWORD(v183) = v178 - 435553471;
  LODWORD(v194) = v194 - 435553471;
  LODWORD(v152) = v172 - 435553471;
  HIDWORD(v157) = v195 - 435553471;
  HIDWORD(v171) = v199 - 435553471;
  HIDWORD(v156) = v155 - 435553471;
  LODWORD(v157) = HIDWORD(v154) - 435553471;
  LODWORD(v183) = HIDWORD(v150) - 435553471;
  HIDWORD(v177) = v150 - 435553471;
  v200 = v122 - 435553471;
  HIDWORD(v194) = v57 - ((2 * v57) & 0xCC13F682) - 435553471;
  LODWORD(v177) = *(v95 + 4 * (v176 ^ 0x3Du));
  LODWORD(v57) = (BYTE2(v39) ^ 0xFD84E264) - 2042320752;
  v215 = *(v95 + 4 * v214);
  LODWORD(v39) = *(v95 + 4 * (*(v30 - 156) ^ 0xC9u));
  LODWORD(v181) = *(v95 + 4 * v160);
  *(v30 - 156) = *(v95 + 4 * v168);
  LODWORD(v161) = *(v95 + 4 * HIDWORD(a28));
  v127 = *(v95 + 4 * (*(v30 - 128) ^ 0x1Cu));
  LODWORD(v156) = *(v95 + 4 * (v222 ^ 0x97u));
  v128 = *(v95 + 4 * (v231 ^ 0xAEu));
  LODWORD(v173) = *(v95 + 4 * v166);
  HIDWORD(v165) = *(v95 + 4 * (*(v30 - 132) ^ 0x33u));
  HIDWORD(a28) = v57 + v96;
  v223 = *(v95 + 4 * HIDWORD(v151));
  HIDWORD(v167) = *(v95 + 4 * v151);
  LODWORD(v192) = *(v95 + 4 * (*(v30 - 124) ^ 0x45u));
  *(v30 - 164) = *(v95 + 4 * (*(v30 - 164) ^ 0xF2u));
  v129 = v191 + 1987100870;
  v130 = v189 + 1987100870;
  HIDWORD(v188) += 1987100870;
  LODWORD(v190) = v169 + 1987100870;
  HIDWORD(v190) = v225 + 1987100870;
  v131 = v196 + 1987100870;
  v132 = v43 - ((2 * v43) & 0xECE1818C) + 1987100870;
  v133 = v210 + 1987100870;
  v134 = v245 + 1987100870;
  v208 = v35 - ((2 * v35) & 0xECE1818C) + 1987100870;
  v211 = v119 - ((2 * v119) & 0xECE1818C) + 1987100870;
  v135 = (v154 - 435553471) ^ v126 ^ v250 ^ 0xC38F08C7;
  LODWORD(v94) = v39 ^ v125 ^ 0xADE18B96 ^ (v217 + 1987100870);
  v136 = *(v30 - 144);
  v137 = *(&off_100085FF0 + (v136 ^ 0x1E2)) - 12;
  v138 = *(&off_100085FF0 + (v136 ^ 0x1B2));
  LODWORD(v39) = (((v137[*(v30 - 111) ^ 0xD5] - 20) ^ 0xED) << 16) | ((*(v138 + (*(v30 - 112) ^ 1)) ^ 0x6F) << 24);
  v139 = *(&off_100085FF0 + v136 - 398);
  v140 = ((*(v139 + (*(v30 - 102) ^ 0x49)) ^ 0x80) << 8) & 0xFF00FFFF | (((v137[*(v30 - 103) ^ 0xB3] - 20) ^ 0x59) << 16);
  v141 = (((v137[*(v30 - 99) ^ 0xDLL] - 20) ^ 0xA9) << 16) | ((*(v138 + (*(v30 - 100) ^ 0xCALL)) ^ 0xFFFFFFFD) << 24);
  v142 = *(v30 - 107) ^ 0x45;
  LODWORD(v43) = ((*(v139 + (*(v30 - 106) ^ 0xD5)) ^ 0xA3) << 8) | ((*(v138 + (*(v30 - 108) ^ 0xC2)) ^ 0xA5) << 24);
  *(v30 - 224) = v137;
  LODWORD(v43) = v43 & 0xFF00FFFF | (((v137[v142] - 20) ^ 0x16) << 16);
  v143 = *(v30 - 110) ^ 0xE7;
  LODWORD(v142) = v141 | ((*(v139 + (*(v30 - 98) ^ 0xC6)) ^ 0xDD) << 8);
  *(v30 - 240) = v139;
  v144 = *(v139 + v143) ^ 0x39u;
  v145 = *(&off_100085FF0 + v136 - 367) - 12;
  LODWORD(v142) = v142 & 0xFFFFFF00 | (53 * v145[*(v30 - 97) ^ 0xCBLL] + 113) ^ 0x79;
  LODWORD(v39) = v39 & 0xFFFFFF00 | (v144 << 8) | (53 * v145[*(v30 - 109) ^ 0x8ALL] + 113) ^ 0xC9;
  LODWORD(v43) = v43 & 0xFFFFFF00 | (53 * v145[*(v30 - 105) ^ 0xB9] + 113) ^ 0x3C;
  v146 = *(v30 - 104) ^ 0x8ALL;
  v147 = *(v30 - 101) ^ 6;
  *(v30 - 248) = v145;
  LOBYTE(v147) = v145[v147];
  *(v30 - 252) = 113;
  *(v30 - 232) = v138;
  v148 = v140 & 0xFFFFFF00 | (53 * v147 + 113) ^ 0x87 | ((*(v138 + v146) ^ 0x82) << 24);
  *(v30 - 136) = v39 ^ 0x37373737;
  *(v30 - 132) = v142 ^ 0x37373737;
  *(v30 - 128) = v43 ^ 0x37373737;
  *(v30 - 140) = v148 ^ 0x37373737;
  *(v30 - 256) = v131 ^ v127 ^ v235;
  *(v30 - 124) = (((*(v30 - 152) ^ 0x79B10127) - 527706914) ^ ((*(v30 - 152) ^ 0x13F92989) - 1966867340) ^ ((*(v30 - 152) ^ 0x669FEEC3) - 5948614)) - 958531474;
  HIDWORD(v243) = v165 ^ HIDWORD(v157) ^ v242;
  LODWORD(v243) = HIDWORD(v171) ^ HIDWORD(v169);
  HIDWORD(v238) = v156 ^ v167 ^ v233 ^ v240;
  LODWORD(v238) = v173 ^ v237 ^ v133;
  HIDWORD(v234) = HIDWORD(v165) ^ v134;
  LODWORD(v234) = v186 ^ *(v30 - 160);
  HIDWORD(v230) = v227 ^ HIDWORD(v183);
  LODWORD(v230) = v163 ^ (v150 - 435553471) ^ v229;
  HIDWORD(v226) = HIDWORD(v167) ^ (HIDWORD(v152) + 1987100870);
  LODWORD(v226) = v180 ^ v223 ^ v171 ^ v205;
  HIDWORD(v221) = HIDWORD(v173) ^ (HIDWORD(v150) - 435553471);
  LODWORD(v221) = v215 ^ (v220 + 1987100870);
  HIDWORD(v218) = v177 ^ HIDWORD(v188) ^ v202;
  LODWORD(v218) = *(v30 - 148) ^ HIDWORD(v175) ^ v194;
  HIDWORD(v212) = v192 ^ v211;
  LODWORD(v212) = HIDWORD(v163) ^ HIDWORD(a28) ^ HIDWORD(v194);
  HIDWORD(v206) = *(v30 - 164) ^ v208;
  LODWORD(v206) = v188 ^ v200 ^ v175;
  HIDWORD(v203) = v181 ^ (v169 + 1987100870) ^ HIDWORD(v180);
  LODWORD(v203) = *(v30 - 156) ^ HIDWORD(v190);
  *(v30 - 212) = v94;
  LODWORD(v197) = HIDWORD(v192) - ((2 * HIDWORD(v192)) & 0xF0F6071E) - 126155889;
  HIDWORD(v197) = 46032142 - v94 - v135;
  HIDWORD(a28) = HIDWORD(v197) ^ v135;
  return sub_1000395F0(v144, 163, v135, v131, v132, v130, v129, v128, a2, v150, v151, v152, v154, v156, v157, v161, v163, v165, v167, v169, v171, v173, v175, v177, v180, v181, v183, v186, v188, v190, v192, v194, a26, a27, a28, v197, v203, v206, v212, v218, v221, v226, v230, v234, v238, v243);
}

uint64_t sub_1000395F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, int a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  *(v77 - 116) = v75;
  *(v77 - 144) = *(v77 - 124) < 0x5CCB0C06u;
  *(v77 - 176) = 0;
  *(v77 - 172) = v74 ^ 0x2A3;
  v78 = (v74 ^ 0x2A3) - 466;
  v79 = v75 | v78 ^ 0x1CC;
  *(v77 - 152) = v78;
  *(v77 - 148) = v79;
  v81 = *(v77 - 232);
  v80 = *(v77 - 224);
  v82 = (v76 + *(v77 - 116));
  v84 = *(v77 - 248);
  v83 = *(v77 - 240);
  v85 = *(v77 - 252);
  v86 = (((*(v80 + (*(v76 + v79) ^ 0x87)) - 20) ^ 0x74) << 16) | ((*(v81 + (v82[4] ^ 2)) ^ 0xB5) << 24) | ((*(v83 + (v82[6] ^ 0xE2)) ^ 0xFF) << 8) | (v85 + 53 * *(v84 + (v82[7] ^ 0xBFLL))) ^ 0xFA;
  v87 = ((v85 + 53 * *(v84 + (v82[15] ^ 0x3CLL))) ^ 0x68 | ((*(v83 + (v82[14] ^ 8)) ^ 0xBB) << 8)) & 0xFF00FFFF | ((*(v81 + (v82[12] ^ 0xBDLL)) ^ 0x9D) << 24) | (((*(v80 + (v82[13] ^ 0xCALL)) - 20) ^ 0xFD) << 16);
  v88 = (v85 + 53 * *(v84 + (v82[3] ^ 0x19))) ^ 0x38 | ((*(v81 + (*v82 ^ 0x50)) ^ 0x80) << 24) | (((*(v80 + (v82[1] ^ 0x1ELL)) - 20) ^ 0x68) << 16) | ((*(v83 + (v82[2] ^ 6)) ^ 0xC7) << 8);
  v89 = ((*(v81 + v82[8]) ^ 0xBE) << 24) | (((*(v80 + (v82[9] ^ 0xB0)) - 20) ^ 0x86) << 16) | ((*(v83 + (v82[10] ^ 0x42)) ^ 0x3A) << 8) | (v85 + 53 * *(v84 + (v82[11] ^ 0x60))) ^ 0xDA;
  if ((((v85 + 53 * *(v84 + (v82[7] ^ 0xBFLL))) ^ 0xFA) & 2) != 0)
  {
    v90 = -2;
  }

  else
  {
    v90 = 2;
  }

  *(v77 - 164) = v86;
  *(v77 - 160) = v87;
  v91 = a65 ^ (v90 + v86);
  *(v77 - 156) = v89;
  v92 = a64 ^ v89;
  v93 = (a64 ^ v89) >> 24;
  *(v77 - 168) = v88;
  v94 = *(&off_100085FF0 + v74 - 130) - 12;
  v95 = *&v94[4 * ((a64 ^ v89) >> 8)];
  HIDWORD(v97) = v95 ^ 0x2920;
  LODWORD(v97) = v95 ^ 0xA9CB8000;
  v96 = v97 >> 14;
  *(v77 - 120) = v74;
  v98 = *(&off_100085FF0 + v74 - 304) - 4;
  v99 = *&v94[4 * ((a63 ^ v88) >> 8)];
  HIDWORD(v97) = v99 ^ 0x2920;
  LODWORD(v97) = v99 ^ 0xA9CB8000;
  v100 = *(&off_100085FF0 + v74 - 158) - 8;
  v101 = (-1120896963 - 21582785 * *&v100[4 * v92]) ^ (*&v98[4 * HIBYTE(v91)] - 1873296457);
  v102 = (-1120896963 - 21582785 * *&v100[4 * v91]) ^ v96;
  v103 = *(&off_100085FF0 + (v74 ^ 0x1AC)) - 4;
  v104 = (*&v98[4 * v93] - 1873296457) ^ (v97 >> 14);
  v105 = *&v103[4 * BYTE2(v91)];
  v106 = *&v94[4 * BYTE1(v91)];
  HIDWORD(v97) = v106 ^ 0x2920;
  LODWORD(v97) = v106 ^ 0xA9CB8000;
  v107 = v97 >> 14;
  v108 = (v104 - 126155889 - ((2 * v104) & 0xF0F6071E)) ^ v105 ^ (-1120896963 - 21582785 * *&v100[4 * (a66 ^ v87)]);
  v109 = *&v94[4 * ((a66 ^ v87) >> 8)];
  HIDWORD(v97) = v109 ^ 0x2920;
  LODWORD(v97) = v109 ^ 0xA9CB8000;
  v110 = (*&v98[4 * ((a66 ^ v87) >> 24)] - 1873296457) ^ (-1120896963 - 21582785 * *&v100[4 * (a63 ^ v88)]) ^ v107;
  v111 = v110 - 126155889 - ((2 * v110) & 0xF0F6071E);
  v112 = a36 ^ (v108 + a38 - 2 * (v108 & a38));
  v113 = a62 ^ *&v103[4 * ((a66 ^ v87) >> 16)] ^ (*&v98[4 * ((a63 ^ v88) >> 24)] - 1873296457) ^ 0x8E1E9161 ^ (v102 - 126155889 - ((2 * v102) & 0xF0F6071E));
  v114 = a61 ^ *&v103[4 * ((a63 ^ v88) >> 16)] ^ (v97 >> 14) ^ 0x7A8BED94 ^ (v101 - 126155889 - ((2 * v101) & 0xF0F6071E));
  v115 = a60 ^ *&v103[4 * BYTE2(v92)] ^ 0x342D1067 ^ v111;
  v116 = *&v94[4 * ((v112 ^ 0xAB13) >> 8)];
  HIDWORD(v97) = v116 ^ 0x2920;
  LODWORD(v97) = v116 ^ 0xA9CB8000;
  v117 = (v97 >> 14) ^ (*&v98[4 * HIBYTE(v113)] - 1873296457);
  v118 = *&v98[4 * HIBYTE(v114)];
  v119 = *&v94[4 * BYTE1(v115)];
  HIDWORD(v97) = v119 ^ 0x2920;
  LODWORD(v97) = v119 ^ 0xA9CB8000;
  v120 = v97 >> 14;
  v121 = *&v98[4 * ((v112 ^ 0xC04AB13u) >> 24)];
  v122 = *&v94[4 * BYTE1(v113)];
  HIDWORD(v97) = v122 ^ 0x2920;
  LODWORD(v97) = v122 ^ 0xA9CB8000;
  v123 = v97 >> 14;
  v124 = (-1120896963 - 21582785 * *&v100[4 * v113]) ^ (*&v98[4 * HIBYTE(v115)] - 1873296457);
  v125 = *&v94[4 * BYTE1(v114)];
  HIDWORD(v97) = v125 ^ 0x2920;
  LODWORD(v97) = v125 ^ 0xA9CB8000;
  v126 = *(v77 - 256) ^ *&v103[4 * BYTE2(v115)] ^ (-1120896963 - 21582785 * *&v100[4 * v114]) ^ (v117 - 126155889 - ((2 * v117) & 0xF0F6071E));
  v127 = a59 ^ *&v103[4 * (BYTE2(v112) ^ 4)] ^ (v97 >> 14) ^ 0xD9D684A ^ (v124 - 126155889 - ((2 * v124) & 0xF0F6071E));
  v128 = a58 ^ *&v103[4 * BYTE2(v113)] ^ (v118 - 1999452346 - ((2 * v118 + 548374382) & 0xF0F6071E)) ^ v120 ^ (-1120896963 - 21582785 * *&v100[4 * ((a36 ^ (v108 + a38 - 2 * (v108 & a38))) ^ 0x33)]) ^ 0x87DD46DC;
  v129 = a57 ^ *&v103[4 * BYTE2(v114)] ^ (v121 - 1999452346 - ((2 * v121 + 548374382) & 0xF0F6071E)) ^ (-1120896963 - 21582785 * *&v100[4 * v115]) ^ v123 ^ 0x96521C3F;
  v130 = *&v94[4 * ((v126 ^ 0xB36B) >> 8)];
  HIDWORD(v97) = v130 ^ 0x2920;
  LODWORD(v97) = v130 ^ 0xA9CB8000;
  v131 = v97 >> 14;
  v132 = *&v94[4 * BYTE1(v127)];
  HIDWORD(v97) = v132 ^ 0x2920;
  LODWORD(v97) = v132 ^ 0xA9CB8000;
  v133 = v97 >> 14;
  v134 = *&v94[4 * ((a58 ^ *&v103[4 * BYTE2(v113)] ^ (v118 - 14522 - ((2 * v118 - 30866) & 0x71E)) ^ v120 ^ (30781 - 21441 * *&v100[4 * ((a36 ^ (v108 + a38 - 2 * (v108 & a38))) ^ 0x33)]) ^ 0x46DC) >> 8)];
  HIDWORD(v97) = v134 ^ 0x2920;
  LODWORD(v97) = v134 ^ 0xA9CB8000;
  v135 = (-1120896963 - 21582785 * *&v100[4 * v127]) ^ v131;
  v136 = -1120896963 - 21582785 * *&v100[4 * ((a58 ^ v103[4 * BYTE2(v113)] ^ (v118 + 70 - ((2 * v118 + 110) & 0x1E)) ^ v120 ^ (61 - -63 * v100[4 * ((a36 ^ (v108 + a38 - 2 * (v108 & a38))) ^ 0x33)])) ^ 0xDC)];
  v137 = (*&v98[4 * HIBYTE(v128)] - 1873296457) ^ (-1120896963 - 21582785 * *&v100[4 * v129]) ^ v133;
  v138 = *&v94[4 * BYTE1(v129)];
  v139 = (*&v98[4 * HIBYTE(v127)] - 1873296457) ^ (v97 >> 14);
  HIDWORD(v97) = v138 ^ 0x2920;
  LODWORD(v97) = v138 ^ 0xA9CB8000;
  v140 = *&v103[4 * BYTE2(v127)];
  v141 = ((v97 >> 14) ^ v136) - 126155889 - ((2 * ((v97 >> 14) ^ v136)) & 0xF0F6071E);
  v142 = v139 ^ (-1120896963 - 21582785 * *&v100[4 * (v126 ^ 0x6B)]);
  v143 = *&v98[4 * (HIBYTE(v126) ^ 0xEE)] - 1873296457;
  v144 = a74 ^ *&v103[4 * ((v126 ^ 0x2F7BB36B) >> 16)] ^ (v137 - 126155889 - ((2 * v137) & 0xF0F6071E));
  v145 = a56 ^ *&v103[4 * BYTE2(v129)] ^ 0x9A30FEDA ^ (v142 - 126155889 - ((2 * v142) & 0xF0F6071E));
  v146 = a55 ^ *&v103[4 * BYTE2(v128)] ^ (*&v98[4 * HIBYTE(v129)] - 1873296457) ^ 0xD8A932B2 ^ (v135 - 126155889 - ((2 * v135) & 0xF0F6071E));
  BYTE2(v118) = BYTE2(v144) ^ 0x6F;
  v147 = a54 ^ v140 ^ v143 ^ 0xDBC82169 ^ v141;
  v148 = *&v94[4 * ((v144 ^ 0x9E59) >> 8)];
  v149 = *&v94[4 * BYTE1(v147)];
  HIDWORD(v97) = v148 ^ 0x2920;
  LODWORD(v97) = v148 ^ 0xA9CB8000;
  v150 = v97 >> 14;
  HIDWORD(v97) = v149 ^ 0x2920;
  LODWORD(v97) = v149 ^ 0xA9CB8000;
  v151 = (-1120896963 - 21582785 * *&v100[4 * ((a55 ^ v103[4 * BYTE2(v128)] ^ (v98[4 * HIBYTE(v129)] - 73)) ^ 0xB2 ^ (v135 - 113 - ((2 * v135) & 0x1E)))]) ^ (*&v98[4 * ((v144 ^ 0xD16F9E59) >> 24)] - 1873296457) ^ (*&v94[4 * BYTE1(v145)] >> 14) ^ (*&v94[4 * BYTE1(v145)] << 18) ^ 0xA482A72E;
  v152 = (*&v98[4 * HIBYTE(v145)] - 1873296457) ^ (-1120896963 - 21582785 * *&v100[4 * v147]) ^ v150;
  v153 = *&v103[4 * BYTE2(v146)];
  v154 = (v97 >> 14) ^ (*&v98[4 * HIBYTE(v146)] - 1873296457) ^ (-1120896963 - 21582785 * *&v100[4 * v145]);
  v155 = *&v100[4 * (v144 ^ 0x79)];
  v156 = *&v94[4 * BYTE1(v146)];
  HIDWORD(v97) = v156 ^ 0x2920;
  LODWORD(v97) = v156 ^ 0xA9CB8000;
  v157 = a73 ^ v153 ^ (v152 - 126155889 - ((2 * v152) & 0xF0F6071E));
  v158 = v157 ^ 0xE0349DAE;
  v159 = a53 ^ *&v103[4 * BYTE2(v118)] ^ 0xF4361671 ^ (v154 - 126155889 - ((2 * v154) & 0xF0F6071E));
  v160 = a72 ^ *&v103[4 * BYTE2(v145)] ^ (*&v98[4 * HIBYTE(v147)] - 1873296457) ^ (v97 >> 14) ^ (-21582785 * v155 - 1247052852 - ((-43165570 * v155 + 2053173370) & 0xF0F6071E));
  v161 = a52 ^ *&v103[4 * BYTE2(v147)] ^ 0x7E1E5010 ^ (v151 - 126155889 - ((2 * v151) & 0xF0F6071E));
  v162 = (v157 ^ 0xE0349DAE) >> 24;
  v163 = (-1120896963 - 21582785 * *&v100[4 * (v157 ^ 0x8E)]) ^ (*&v98[4 * HIBYTE(v159)] - 1873296457);
  v164 = *&v98[4 * v162];
  v165 = v163 - 126155889 - ((2 * v163) & 0xF0F6071E);
  v166 = *&v94[4 * BYTE1(v158)];
  HIDWORD(v97) = v166 ^ 0x2920;
  LODWORD(v97) = v166 ^ 0xA9CB8000;
  v167 = v97 >> 14;
  v168 = (2 * v164 + 548374382) & 0xF0F6071E;
  v169 = v164 - 1999452346;
  v170 = *&v94[4 * BYTE1(v161)];
  HIDWORD(v97) = v170 ^ 0x2920;
  LODWORD(v97) = v170 ^ 0xA9CB8000;
  v171 = v97 >> 14;
  v172 = v169 - v168;
  v173 = *&v94[4 * ((v160 ^ 0x500A) >> 8)];
  HIDWORD(v97) = v173 ^ 0x2920;
  LODWORD(v97) = v173 ^ 0xA9CB8000;
  v174 = v97 >> 14;
  v175 = *&v94[4 * BYTE1(v159)];
  HIDWORD(v97) = v175 ^ 0x2920;
  LODWORD(v97) = v175 ^ 0xA9CB8000;
  v176 = v167 ^ (-1120896963 - 21582785 * *&v100[4 * v159]) ^ (*&v98[4 * HIBYTE(v161)] - 1873296457);
  v177 = (-1120896963 - 21582785 * *&v100[4 * v161]) ^ (*&v98[4 * ((v160 ^ 0x6754500Au) >> 24)] - 1873296457) ^ (v97 >> 14);
  v178 = *&v103[4 * BYTE2(v158)];
  v179 = a51 ^ *&v103[4 * BYTE2(v161)] ^ v174 ^ 0x541774FA ^ v165;
  v180 = a50 ^ *&v103[4 * ((v160 ^ 0x6754500Au) >> 16)] ^ 0x9A279982 ^ (v176 - 126155889 - ((2 * v176) & 0xF0F6071E));
  v181 = a49 ^ *&v103[4 * BYTE2(v159)] ^ v172 ^ (-1120896963 - 21582785 * *&v100[4 * (v160 ^ 0x2A)]) ^ 0xC78C3665 ^ v171;
  v182 = a48 ^ v178 ^ 0x8EB61C45 ^ (v177 - 126155889 - ((2 * v177) & 0xF0F6071E));
  v183 = *&v94[4 * BYTE1(v180)];
  HIDWORD(v97) = v183 ^ 0x2920;
  LODWORD(v97) = v183 ^ 0xA9CB8000;
  v184 = (v97 >> 14) - 126155889 - ((2 * (v97 >> 14)) & 0xF0F6071E);
  v185 = *&v100[4 * (v179 - ((2 * v179) & 0x40)) + 128];
  v186 = *&v94[4 * ((a48 ^ v178 ^ 0x1C45 ^ (v177 + 911 - ((2 * v177) & 0x71E))) >> 8)];
  HIDWORD(v97) = v186 ^ 0x2920;
  LODWORD(v97) = v186 ^ 0xA9CB8000;
  v187 = (v97 >> 14) ^ (*&v98[4 * HIBYTE(v179)] - 1873296457);
  v188 = -21582785 * v185 - 1247052852 - ((-43165570 * v185 + 2053173370) & 0xF0F6071E);
  v189 = *&v94[4 * BYTE1(v179)];
  HIDWORD(v97) = v189 ^ 0x2920;
  LODWORD(v97) = v189 ^ 0xA9CB8000;
  v190 = v97 >> 14;
  v191 = *&v94[4 * BYTE1(v181)];
  HIDWORD(v97) = v191 ^ 0x2920;
  LODWORD(v97) = v191 ^ 0xA9CB8000;
  v192 = a71 ^ *&v103[4 * BYTE2(v181)] ^ v190 ^ (*&v98[4 * HIBYTE(v182)] - 1873296457) ^ (-21582785 * *&v100[4 * v180] - 1247052852 - ((-43165570 * *&v100[4 * v180] + 2053173370) & 0xF0F6071E));
  v193 = -1120896963 - 21582785 * *&v100[4 * v181];
  v194 = a47 ^ *&v103[4 * BYTE2(v179)] ^ (*&v98[4 * HIBYTE(v181)] - 1873296457) ^ v184 ^ (-1120896963 - 21582785 * *&v100[4 * v182]) ^ 0x7C892C4A;
  v195 = a46 ^ *&v103[4 * BYTE2(v182)] ^ (*&v98[4 * HIBYTE(v180)] - 1873296457) ^ (v97 >> 14) ^ 0x190B7FE4 ^ v188;
  v196 = a45 ^ *&v103[4 * BYTE2(v180)] ^ v193 ^ 0xCFA132BA ^ (v187 - 126155889 - ((2 * v187) & 0xF0F6071E));
  v197 = v192 ^ 0x402CF460;
  v198 = *&v94[4 * BYTE1(v194)];
  v199 = (v192 ^ 0x402CF460) >> 24;
  HIDWORD(v97) = v198 ^ 0x2920;
  LODWORD(v97) = v198 ^ 0xA9CB8000;
  v200 = v97 >> 14;
  v201 = *&v94[4 * BYTE1(v196)];
  HIDWORD(v97) = v201 ^ 0x2920;
  LODWORD(v97) = v201 ^ 0xA9CB8000;
  v202 = HIBYTE(v196);
  v203 = *&v100[4 * (v192 ^ 0x40)];
  v204 = -21582785 * v203 - 1247052852 - ((-43165570 * v203 + 2053173370) & 0xF0F6071E);
  v205 = (-1120896963 - 21582785 * *&v100[4 * v195]) ^ (*&v98[4 * v199] - 1873296457);
  v206 = *&v103[4 * BYTE2(v196)];
  v207 = v205 ^ (v97 >> 14);
  v208 = *&v94[4 * BYTE1(v195)];
  HIDWORD(v97) = v208 ^ 0x2920;
  LODWORD(v97) = v208 ^ 0xA9CB8000;
  v209 = v97 >> 14;
  v210 = (*&v98[4 * HIBYTE(v195)] - 1873296457) ^ v200 ^ (-1120896963 - 21582785 * *&v100[4 * v196]);
  v211 = *&v103[4 * BYTE2(v197)];
  v212 = (-1120896963 - 21582785 * *&v100[4 * v194]) ^ (*&v98[4 * v202] - 1873296457);
  v213 = *&v103[4 * BYTE2(v195)];
  v214 = *&v98[4 * HIBYTE(v194)] - 1873296457;
  v215 = *&v94[4 * BYTE1(v197)];
  HIDWORD(v97) = v215 ^ 0x2920;
  LODWORD(v97) = v215 ^ 0xA9CB8000;
  v216 = a44 ^ *&v103[4 * BYTE2(v194)] ^ 0x2655A6B2 ^ (v207 - 126155889 - ((2 * v207) & 0xF0F6071E));
  v217 = a43 ^ v213 ^ (v97 >> 14) ^ 0x354150DE ^ (v212 - 126155889 - ((2 * v212) & 0xF0F6071E));
  v218 = a42 ^ v206 ^ v209 ^ v214 ^ v204 ^ 0x6005D395;
  v219 = *&v94[4 * BYTE1(v218)];
  HIDWORD(v97) = v219 ^ 0x2920;
  LODWORD(v97) = v219 ^ 0xA9CB8000;
  v220 = a41 ^ v211 ^ 0xD6EF510D ^ (v210 - 126155889 - ((2 * v210) & 0xF0F6071E));
  v221 = (v97 >> 14) - 126155889 - ((2 * (v97 >> 14)) & 0xF0F6071E);
  v222 = *&v98[4 * HIBYTE(v216)];
  v223 = (-1120896963 - 21582785 * *&v100[4 * v216]) ^ (*&v98[4 * HIBYTE(v218)] - 1873296457);
  v224 = v222 - 1999452346 - ((2 * v222 + 548374382) & 0xF0F6071E);
  v225 = *&v94[4 * BYTE1(v217)];
  HIDWORD(v97) = v225 ^ 0x2920;
  LODWORD(v97) = v225 ^ 0xA9CB8000;
  v226 = v97 >> 14;
  v227 = *&v94[4 * BYTE1(v216)];
  HIDWORD(v97) = v227 ^ 0x2920;
  LODWORD(v97) = v227 ^ 0xA9CB8000;
  v228 = v97 >> 14;
  v229 = *&v94[4 * BYTE1(v220)];
  HIDWORD(v97) = v229 ^ 0x2920;
  LODWORD(v97) = v229 ^ 0xA9CB8000;
  v230 = *&v103[4 * BYTE2(v217)] ^ *(v77 - 212) ^ (v97 >> 14) ^ (v223 - 126155889 - ((2 * v223) & 0xF0F6071E));
  v231 = a70 ^ *&v103[4 * BYTE2(v218)] ^ v226 ^ v224 ^ (-1120896963 - 21582785 * *&v100[4 * v220]);
  v232 = a40 ^ *&v103[4 * BYTE2(v216)] ^ (*&v98[4 * HIBYTE(v220)] - 1873296457) ^ v221;
  v233 = a39 ^ (*&v98[4 * HIBYTE(v217)] - 1873296457) ^ *&v103[4 * BYTE2(v220)] ^ (-21582785 * *&v100[4 * v218] - 1247052852 - ((-43165570 * *&v100[4 * v218] + 2053173370) & 0xF0F6071E)) ^ v228 ^ 0x8D19C5A6;
  v234 = *&v94[4 * ((a39 ^ (*&v98[4 * HIBYTE(v217)] - 15433) ^ *&v103[4 * BYTE2(v220)] ^ (-21441 * *&v100[4 * v218] + 31692 - ((22654 * *&v100[4 * v218] - 3974) & 0x71E)) ^ v228 ^ 0xC5A6) >> 8)];
  HIDWORD(v97) = v234 ^ 0x2920;
  LODWORD(v97) = v234 ^ 0xA9CB8000;
  v235 = v232 ^ (-1120896963 - 21582785 * *&v100[4 * v217]) ^ 0xDE12593A;
  v236 = (v97 >> 14) - 126155889 - ((2 * (v97 >> 14)) & 0xF0F6071E);
  v237 = *&v100[4 * (v232 ^ (61 - -63 * v100[4 * v217]) ^ 0x3A)];
  v238 = *&v94[4 * ((v230 ^ 0x5930) >> 8)];
  HIDWORD(v97) = v238 ^ 0x2920;
  LODWORD(v97) = v238 ^ 0xA9CB8000;
  v239 = (v97 >> 14) - 126155889 - ((2 * (v97 >> 14)) & 0xF0F6071E);
  v240 = (*&v98[4 * (HIBYTE(v230) ^ 0x50)] - 1873296457) ^ (-1120896963 - 21582785 * *&v100[4 * (v231 ^ 0xE1)]);
  v241 = *&v94[4 * ((v231 ^ 0x12E1) >> 8)];
  HIDWORD(v97) = v241 ^ 0x2920;
  LODWORD(v97) = v241 ^ 0xA9CB8000;
  v242 = v97 >> 14;
  LODWORD(v94) = *&v94[4 * BYTE1(v235)];
  HIDWORD(v97) = v94 ^ 0x2920;
  LODWORD(v97) = v94 ^ 0xA9CB8000;
  v243 = a69 ^ *&v103[4 * (BYTE2(v231) ^ 0xA1)] ^ (*&v98[4 * HIBYTE(v235)] - 1873296457) ^ (-1120896963 - 21582785 * *&v100[4 * v233]) ^ v239;
  LODWORD(v94) = (*&v98[4 * HIBYTE(v233)] - 1873296457) ^ a37 ^ v242 ^ *&v103[4 * BYTE2(v235)] ^ (-1120896963 - 21582785 * *&v100[4 * (v230 ^ 0x30)]);
  v244 = a68 ^ *&v103[4 * ((v230 ^ 0x911C5930) >> 16)] ^ v236 ^ (-1120896963 - 21582785 * v237) ^ (*&v98[4 * (HIBYTE(v231) ^ 0x68)] - 1873296457);
  v245 = a67 ^ *&v103[4 * BYTE2(v233)] ^ (v97 >> 14) ^ (v240 - 126155889 - ((2 * v240) & 0xF0F6071E));
  v246 = v245 ^ 0x644667A6;
  v247 = v244 ^ 0x7EC2C88;
  v248 = *(v77 - 120);
  v249 = *(&off_100085FF0 + v248 - 259) - 4;
  v250 = *&v249[4 * ((v244 ^ 0x7EC2C88u) >> 16)];
  v251 = *(&off_100085FF0 + (v248 ^ 0x199));
  LODWORD(v98) = *(v251 + 4 * (v244 ^ 0xDBu));
  LOBYTE(v216) = v94 ^ 0x63;
  v252 = *&v249[4 * ((v245 ^ 0x644667A6u) >> 16)];
  v253 = *(v251 + 4 * (v245 ^ 0xF5u));
  LODWORD(v100) = *(v251 + 4 * (v243 ^ 0x2Bu));
  v254 = *&v249[4 * ((v94 ^ 0xAD089B63) >> 16)];
  LODWORD(v251) = *(v251 + 4 * (v94 ^ 0x30u));
  v255 = *(&off_100085FF0 + (v248 ^ 0x124)) - 8;
  v256 = *&v255[4 * (BYTE1(v247) ^ 0xF5)];
  LODWORD(v103) = ((v94 ^ 0x9B63) >> 8);
  v257 = *&v255[4 * (v103 ^ 0xF5)];
  v258 = *&v255[4 * (BYTE1(v246) ^ 0xF5)];
  v259 = *&v255[4 * (((v243 ^ 0xD878) >> 8) ^ 0xF5)];
  v260 = *(&off_100085FF0 + v248 - 309);
  v261 = *(v260 + 4 * HIBYTE(v246));
  v262 = *(v260 + 4 * ((v243 ^ 0x9A25D878) >> 24));
  LODWORD(v94) = *(v260 + 4 * ((v94 >> 24) ^ 0xBD));
  v263 = *(v260 + 4 * HIBYTE(v247));
  v264 = *(v77 - 184);
  LODWORD(v94) = *(v77 - 140) ^ *(v77 - 208) ^ BYTE1(v247) ^ v246 ^ v256 ^ v253 ^ *&v249[4 * ((v243 ^ 0x9A25D878) >> 16)] ^ __ROR4__(v94, 7);
  LODWORD(v100) = *(v77 - 136) ^ *(v77 - 204) ^ v103 ^ v243 ^ 0x78 ^ v100 ^ v257 ^ (v252 - ((2 * v252) & 0xBB708860) + 1572357168) ^ __ROR4__(v263, 7);
  v265 = v247 ^ *(v77 - 132) ^ ((v243 ^ 0xD878) >> 8) ^ __ROR4__(v261, 7) ^ v98 ^ v254 ^ v259;
  v266 = v216 ^ *(v77 - 128) ^ BYTE1(v246) ^ v250 ^ __ROR4__(v262, 7) ^ v258 ^ v251;
  LODWORD(v98) = (v266 + 235965007 - ((2 * v266) & 0x1C21149E)) ^ *(v77 - 196);
  v267 = *(&off_100085FF0 + (v248 ^ 0x189));
  v82[3] = *(v267 + (v100 ^ 0xDFLL)) ^ 0xD4;
  v268 = *(&off_100085FF0 + v248 - 188);
  v82[4] = (*(v268 + ((v98 >> 24) ^ 0x2CLL)) - 62) ^ 0x78;
  v269 = (v265 + 1295561451 - ((2 * v265) & 0x9A7165D6)) ^ *(v77 - 200);
  *v82 = (*(v268 + ((v100 >> 24) ^ 0x57)) - 62) ^ 0xC8;
  v270 = *(&off_100085FF0 + v248 - 292) - 12;
  v82[13] = (v270[BYTE2(v269) ^ 0x5CLL] - 89) ^ 0xC7;
  v82[11] = *(v267 + (v94 ^ 0x46)) ^ 0x90;
  v271 = *(&off_100085FF0 + v248 - 262) - 12;
  v82[14] = BYTE1(v269) ^ 0x9B ^ v271[BYTE1(v269)];
  v82[2] = BYTE1(v100) ^ 0x88 ^ v271[BYTE1(v100) ^ 0xE6];
  v82[10] = BYTE1(v94) ^ 0xC6 ^ v271[BYTE1(v94) ^ 0x84];
  v82[15] = *(v267 + (v269 ^ 0x11)) ^ 0x27;
  *(v264 + *(v77 - 148)) = (v270[BYTE2(v98) ^ 0x44] - 89) ^ 0xE2;
  v82[8] = (*(v268 + ((v94 >> 24) ^ 0x26)) - 62) ^ 0xA2;
  v82[7] = *(v267 + (v98 ^ 0x3DLL)) ^ 0x2D;
  v82[12] = (*(v268 + (HIBYTE(v269) ^ 0x44)) - 62) ^ 0x23;
  v82[1] = (v270[BYTE2(v100) ^ 0xA3] - 89) ^ 0x17;
  v272 = *(v77 - 116);
  v82[6] = BYTE1(v98) ^ 0xD0 ^ v271[BYTE1(v98) ^ 0x58];
  v82[9] = (v270[BYTE2(v94) ^ 0xF8] - 89) ^ 0x90;
  v273 = (v272 + 1556810774) < *(v77 - 124);
  if (*(v77 - 144) != (v272 + 1556810774) < 0x5CCB0C06)
  {
    v273 = *(v77 - 144);
  }

  return (*(*(v77 - 192) + 8 * ((84 * v273) ^ v248)))();
}

uint64_t sub_10003AD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45)
{
  STACK[0x2E8] = v46;
  v47 = STACK[0x47C];
  v48 = (v47 ^ 0xBF947218) & (2 * (v47 & 0xBFA57312)) ^ v47 & 0xBFA57312;
  v49 = ((2 * (v47 ^ 0xEF9EF238)) ^ a45) & (v47 ^ 0xEF9EF238) ^ (2 * (v47 ^ 0xEF9EF238)) & 0x503B812A;
  v50 = v49 ^ 0x5008812A;
  v51 = (v49 ^ 0x330120) & (4 * v48) ^ v48;
  v52 = ((4 * v50) ^ 0x40EE04A8) & v50 ^ (4 * v50) & 0x503B8128;
  v53 = v51 ^ 0x503B812A ^ (v52 ^ 0x402A0020) & (16 * v51);
  v54 = (16 * (v52 ^ 0x10118102)) & 0x503B8120 ^ 0x5003810A ^ ((16 * (v52 ^ 0x10118102)) ^ 0x3B812A0) & (v52 ^ 0x10118102);
  v55 = (v53 << 8) & 0x503B8100 ^ v53 ^ ((v53 << 8) ^ 0x3B812A00) & v54;
  *(STACK[0x588] + 4 * (((LODWORD(STACK[0x47C]) ^ (2 * ((v55 << 16) & 0x503B0000 ^ v55 ^ ((v55 << 16) ^ 0x12A0000) & ((v54 << 8) & 0x503B0000 ^ 0x403A0000 ^ ((v54 << 8) ^ 0x3B810000) & v54)))) >> 2) ^ 0xFE11C51)) = v45;
  return sub_10002D7F4(a1, a2, a3, a4, 214481268, -1079676142);
}

uint64_t sub_10003AFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 128) = (v16 + 773) ^ (210068311 * ((((v17 - 128) | 0xCCD3D941) - ((v17 - 128) & 0xCCD3D941)) ^ 0x5E05E6E5));
  *(v17 - 120) = v15;
  *(v17 - 112) = &a13;
  v18 = (*(v14 + 8 * (v16 ^ 0xAC7)))(v17 - 128);
  return (*(v14 + 8 * ((((v16 - 1365771377) & 0x516807DF ^ 0x595) * (v13 != 1)) ^ v16)))(v18);
}

uint64_t sub_10003B090(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v15 = a5 - 8;
  v17.val[0].i64[0] = (v11 + v15 - 1) & 0xF;
  v17.val[0].i64[1] = (v11 + v15 + 14) & 0xF;
  v17.val[1].i64[0] = (v11 + v15 + 13) & 0xF;
  v17.val[1].i64[1] = (v11 + v15 + 12) & 0xF;
  v17.val[2].i64[0] = (v11 + v15 + (v13 ^ 3)) & 0xF;
  v17.val[2].i64[1] = (v11 + v15 + 10) & 0xF;
  v17.val[3].i64[0] = (v11 + v15 + 9) & 0xF;
  v17.val[3].i64[1] = (v11 + v15) & 0xF ^ 8;
  *(a6 + v15) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a6 + v15), *(v9 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v10 - 4), *(v17.val[0].i64[0] + v8 - 2)))), a3), vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v14 + 8 * (((v12 != v15) * a8) ^ a7)))();
}

uint64_t sub_10003B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, int a22)
{
  v24 = (a21 ^ a6) + a22;
  v25 = a16 < 0x87A89178;
  if (v25 == v24 > ((v23 - 1156) | 0x484u) + 2018994691)
  {
    v25 = v24 - 2018995848 < a16;
  }

  return (*(v22 + 8 * ((v25 * (v23 - 1111)) ^ (v23 - 302))))(a1, a2, v24, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10003B124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  LODWORD(STACK[0x2B8]) = a7;
  STACK[0x2C0] = a6;
  LODWORD(STACK[0x18A8]) = v9;
  LODWORD(STACK[0x18AC]) = 2061584110;
  v13 = *(v8 + 8 * (v7 ^ 0x5E3));
  STACK[0x2A8] = v13;
  LODWORD(STACK[0x49C]) = *v13 - 1562827100;
  v14 = *(v8 + 8 * (v7 - 1342));
  STACK[0x2C8] = v14;
  v15 = *v14;
  v16 = 143681137 * ((0x8B740AAE7EF4A087 - (v10 | 0x8B740AAE7EF4A087) + STACK[0x270]) ^ 0xC502C7E5E053D4A8);
  v17 = -143681137 * ((0x8B740AAE7EF4A087 - (v10 | 0x8B740AAE7EF4A087) + STACK[0x270]) ^ 0xC502C7E5E053D4A8);
  STACK[0x290] = v15;
  *(v12 - 168) = v17;
  *(v12 - 184) = v15 + v16;
  *(v12 - 200) = (v7 - 1278685315) & 0xFBEEFF96 ^ v16;
  *(v12 - 196) = v16 + v7 - 1278685315 + 20;
  *(v12 - 160) = v16;
  *(v12 - 192) = (v7 + 1699921135) ^ v16;
  *(v12 - 188) = v7 - 1278685315 - v16;
  v18 = (*(v11 + 8 * (v7 + 927)))(v12 - 200);
  return (*(v11 + 8 * *(v12 - 176)))(v18);
}

uint64_t sub_10003B244()
{
  v4 = *(v3 + 8 * ((1743 * (LODWORD(STACK[0x444]) == ((((v0 ^ 0x2D8) + 698) | 0x188) ^ (v1 - 1913)) + (((v0 ^ 0x2D8) + 1175906691) & 0xB9E917F7))) ^ v0 ^ 0x2D8));
  LODWORD(STACK[0x2B4]) = v2;
  return v4();
}

uint64_t sub_10003B254()
{
  *(v6 - 128) = v1;
  *(v6 - 120) = v3;
  *(v6 - 136) = (v5 - 662) ^ (((((v4 | 0x336CC072) ^ 0xFFFFFFFE) - (~v4 | 0xCC933F8D)) ^ 0x90DE6B08) * v0);
  v7 = (*(v2 + 8 * (v5 ^ 0xED9)))(v6 - 136);
  return (*(v2 + 8 * ((402 * (*(v6 - 132) + ((61 * (v5 ^ 0x612)) ^ 0xDC4CFA1B) < 0xEE916F54)) ^ v5)))(v7);
}

uint64_t sub_10003B464(char a1, uint64_t a2, int a3)
{
  v9 = v3 + 2;
  v10 = (v6 - 2);
  *v10 = (v9 ^ a1) * (v9 + 17);
  *(v10 - 1) = (v9 ^ 0xBB) * (v9 + 18);
  return (*(v8 + 8 * (((v5 + 106 == v7) * a3) ^ v4)))();
}

uint64_t sub_10003B470@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v9 = *a1;
  v10 = a1[4];
  v11 = a1[2];
  *a4 = v6;
  *v11 = v5;
  *v10 = v7;
  *v9 = v4 + v8;
  return sub_100057E10(a1, a2, a3, 972359704);
}

uint64_t sub_10003B4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, int a15, char a16, __int16 a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, char *a25)
{
  v28 = (v25 - 1159) | 0x300;
  LODWORD(a22) = (v25 - 421) ^ ((((&a22 | 0x3477D085) - (&a22 & 0x3477D085)) ^ 0x20584D1E) * v26);
  a25 = &a16;
  a23 = a20;
  (*(v27 + 8 * (v25 + 940)))(&a22);
  a25 = &a14;
  a23 = a20;
  a24 = &a12;
  HIDWORD(a22) = v28 - 143681137 * ((((2 * &a22) | 0x40C4ACB2) - &a22 - 543315545) ^ 0x413ADD89) + 456;
  (*(v27 + 8 * (v28 + 1359)))(&a22);
  a25 = &a18;
  a23 = a20;
  LODWORD(a22) = (v28 - 30) ^ (((&a22 - 1253535800 - 2 * (&a22 & 0xB5488FC8)) ^ 0xA1671253) * v26);
  (*(v27 + 8 * (v28 ^ 0xACD)))(&a22);
  a22 = a20;
  HIDWORD(a23) = (v28 - 631) ^ (1388665877 * (&a22 ^ 0x8DAD62EC));
  v29 = (*(v27 + 8 * (v28 ^ 0xA9C)))(&a22);
  return (*(v27 + 8 * ((1976 * (a23 != ((13 * (v28 ^ 0x3BA) + 669249840) & 0xD81C0BFF) + 972359319)) ^ v28)))(v29);
}

uint64_t sub_10003B6C0@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + ((v3 + 184) | 0x20u) - 546;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((495 * (v5 != 0)) ^ (v3 - 81))))();
}

void sub_10003B8BC(int a1@<W8>, int a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53)
{
  v59 = *(v57 + 8 * (a1 - 879));
  v60 = *v59;
  v61 = *(v57 + 8 * (a1 ^ 0x387));
  v62 = *(v61 - 4);
  a24 = *v62 ^ 0xBD;
  a25 = v62[1] ^ 0xBD;
  a26 = v62[2] ^ 0xBD;
  a27 = v62[3] ^ 0xBD;
  a28 = v62[4] ^ 0xBD;
  a29 = v62[5] ^ 0xBD;
  a30 = v62[6] ^ 0xBD;
  a31 = v62[7] ^ 0xBD;
  a32 = v62[8] ^ 0xBD;
  a33 = v62[9] ^ 0xBD;
  a34 = v62[10] ^ 0xBD;
  a35 = v62[11] ^ 0xBD;
  a36 = v62[12] ^ 0xBD;
  a37 = v62[13] ^ 0xBD;
  a38 = v62[14] ^ 0xBD;
  a39 = v62[15] ^ 0xBD;
  a40 = v62[16] ^ 0xBD;
  a41 = v62[17] ^ 0xBD;
  a42 = v62[18] ^ 0xBD;
  a43 = v62[19] ^ 0xBD;
  v63 = *(v61 - 4);
  a44 = v63[20] ^ 0xBD;
  a45 = v63[21] ^ 0xBD;
  a46 = v63[22] ^ 0xBD;
  a47 = v63[23] ^ 0xBD;
  a48 = v63[24] ^ 0xBD;
  a49 = v63[25] ^ 0xBD;
  a50 = v63[26] ^ 0xBD;
  a51 = v63[27] ^ 0xBD;
  a52 = v63[28] ^ 0xBD;
  a53 = v63[29] ^ 0xBD;
  v64 = (*(v55 + 8 * (a1 ^ 0xAB3)))(v60, &a24, v53);
  if (v64 == 1102)
  {
    v65 = *v59;
    v66 = **(v57 + 8 * (v56 ^ 0x3A3));
    a4 = v56 ^ 0xAC ^ *v66;
    a5 = v66[1] ^ 0x15;
    a6 = v66[2] ^ 0x15;
    a7 = v66[3] ^ 0x15;
    a8 = v66[4] ^ 0x15;
    a9 = v66[5] ^ 0x15;
    a10 = v66[6] ^ 0x15;
    a11 = v66[7] ^ 0x15;
    a12 = v66[8] ^ 0x15;
    a13 = v66[9] ^ 0x15;
    a14 = v66[10] ^ 0x15;
    a15 = v66[11] ^ 0x15;
    a16 = v66[12] ^ 0x15;
    a17 = v66[13] ^ 0x15;
    a18 = v66[14] ^ 0x15;
    a19 = v66[15] ^ 0x15;
    a20 = v66[16] ^ 0x15;
    a21 = v66[17] ^ 0x15;
    a22 = v66[18] ^ 0x15;
    a23 = v66[19] ^ 0x15;
    v67 = (*(v55 + 8 * (v56 + 1361)))(v65, &a4, v53);
    (*(v55 + 8 * ((3165 * (v67 == 0)) ^ (v56 + 168))))(v67, v68, v69, v70, v71, v72, v73);
  }

  else
  {
    if (v64)
    {
      JUMPOUT(0x10003BC24);
    }

    *(v58 + 344) |= ((v56 - 953) | 0x461) ^ 0x46B;
    *(v58 + 44) = 1991861430;
    (*(v55 + 8 * (v56 + 1454)))(*v53, v58 + 332, v58 + 336, v58 + 340, v54);
    sub_100019A74();
  }
}

uint64_t sub_10003BD04()
{
  v4 = (v0 + 1574991006) & 0xA21F8FE8;
  (*(v2 + 8 * (v0 + 2097)))(*STACK[0x218]);
  v5 = LODWORD(STACK[0x444]);
  v6 = 143681137 * (((v1 | 0x81CAC2BA2E6EA0F5) - (v1 | 0x7E353D45D1915F0ALL) + 0x7E353D45D1915F0ALL) ^ 0x3043F00E4F362B25);
  *(v3 - 160) = 143681137 * (((v1 | 0x2E6EA0F5) - (v1 | 0xD1915F0A) - 779002102) ^ 0x4F362B25);
  *(v3 - 200) = (143681137 * (((v1 | 0x2E6EA0F5) - (v1 | 0xD1915F0A) - 779002102) ^ 0x4F362B25)) ^ (v4 + 2101671234) ^ 0x33;
  *(v3 - 196) = ((v4 + 2101671234) ^ 0x7C) + 143681137 * (((v1 | 0x2E6EA0F5) - (v1 | 0xD1915F0A) - 779002102) ^ 0x4F362B25);
  *(v3 - 192) = (v4 + 1699921135) ^ (143681137 * (((v1 | 0x2E6EA0F5) - (v1 | 0xD1915F0A) - 779002102) ^ 0x4F362B25));
  *(v3 - 188) = v4 + 2101671234 - 143681137 * (((v1 | 0x2E6EA0F5) - (v1 | 0xD1915F0A) - 779002102) ^ 0x4F362B25);
  *(v3 - 184) = v6 + 3322565570u;
  *(v3 - 168) = v5 - v6;
  v7 = (*(v2 + 8 * (v4 ^ 0xCEF)))(v3 - 200);
  return (*(v2 + 8 * *(v3 - 176)))(v7);
}

void sub_10003BE24(uint64_t a1)
{
  v1 = 1037613739 * ((-2 - ((a1 | 0x9B3F9159) + (~a1 | 0x64C06EA6))) ^ 0xB5C243D9);
  __asm { BRAA            X4, X17 }
}

uint64_t sub_10003BF64(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_10003BF78@<X0>(int a1@<W8>)
{
  v4 = a1 + 24;
  v5 = (*(v3 + 8 * ((a1 + 24) ^ 0xA48)))(v1 ^ (v2 + 501) ^ (a1 - 338)) == 0;
  return (*(v3 + 8 * ((v5 * (v4 ^ 0x38F)) ^ v4)))();
}

uint64_t sub_10003BFD0@<X0>(uint64_t a1@<X8>, uint64_t a2, char a3, unsigned int a4)
{
  v9 = v4 + 176;
  v10 = v4 + 1703;
  *(v8 - 108) = v4 + 1703 + 1564307779 * (((((v8 - 112) | 0xC546C422) ^ 0xFFFFFFFE) - (~(v8 - 112) | 0x3AB93BDD)) ^ 0xADB4F7CE);
  *(v8 - 104) = a1;
  v11 = (v4 + 176) ^ 0xB0E;
  (*(v6 + 8 * v11))(v8 - 112);
  v12 = *(v8 - 112);
  *(v8 - 108) = v10 + 1564307779 * ((v8 - 112) ^ 0x970DCC13);
  *(v8 - 104) = v5;
  (*(v6 + 8 * v11))(v8 - 112);
  v13 = ((*(v8 - 112) + v12) * (v9 - 235919043) + *(v8 - 112) * v12 + 749452260) * v7;
  a4 = (v13 ^ 0xDB5FFFFD) + 2108646835 + ((2 * v13) & 0xB6BFFFFA);
  *(v8 - 104) = (v9 + 372) ^ (1785193651 * ((((v8 - 112) | 0x85116527) + (~(v8 - 112) | 0x7AEE9AD8)) ^ 0x96CD8906));
  *(v8 - 96) = v5;
  *(v8 - 112) = &a3;
  v14 = (*(v6 + 8 * (v9 + 1789)))(v8 - 112);
  return sub_10003C118(v14);
}

uint64_t sub_10003C18C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v48 = v42 - a4 - 43;
  v49 = (*(v43 + 8 * (v42 + 1687)))(v44 + 4, 0);
  v50 = v44[4] + 654156187 - ((2 * v44[4]) & 0x4DFB4336);
  v44[1] = v44[6] + 654156187 - ((v48 ^ 0xA495EC7E) & (2 * v44[6]));
  v44[2] = v50;
  v51 = (*(v43 + 8 * (v42 ^ 0xBDBu)))(v49);
  v44[3] = v51 + 654156187 - ((2 * v51) & 0x4DFB4336);
  v52 = (*(v43 + 8 * (v42 + 1703)))();
  *v44 = v52 + 654156187 - ((2 * v52) & 0x4DFB4336);
  v53 = 742307843 * ((2 * ((v47 - 152) & 0x4224C4BBFB588900) - (v47 - 152) + 0x3DDB3B4404A776F9) ^ 0x8E47E62F1A85FBACLL);
  v54 = (1664525 * (*v45 ^ (*v45 >> 30))) ^ v45[1];
  v45[1] = (((*v44 ^ 0x5BABB069) - 1537978473) ^ ((*v44 ^ 0x1DF1124) - 31396132) ^ ((*v44 ^ 0x7C8900D6) - 2089353430)) - 1637170640 + (((v54 ^ 0x9F80B1DD) + 387083960) ^ ((v54 ^ 0x15A3C840) - 1657727189) ^ ((v54 ^ 0x8A23799D) + 45197048));
  *(v46 + 1072) = v53 + 623;
  *(v46 + 1048) = v53 + 2;
  *(v47 - 132) = (v48 - 1652122536) ^ v53;
  *(v47 - 128) = v48 - 1662350773 + v53;
  *(v47 - 124) = v48 - 1662350773 - v53 + 22;
  *(v47 - 152) = (v48 - 1662350667) ^ v53;
  *(v47 - 136) = v53 + 1;
  v55 = (*(a42 + 8 * (v48 ^ 0xE96EA626)))(v47 - 152);
  return (*(a42 + 8 * *(v47 - 112)))(v55);
}

uint64_t sub_10003C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  LODWORD(v32) = 1964545717;
  HIDWORD(v32) = a6;
  HIDWORD(a21) = 1745916841;
  *v29 = 644993143;
  return (*(v30 + 8 * ((((v28 - 510) | 0x100) + 1204) ^ 0xA8 ^ (((v28 - 510) | 0x100) - 1791434759) & 0x6AC71DB6 ^ ((v28 - 510) | 0x100))))(a1, a2, a3, a4, HIDWORD(a9), 1610885150, 3758368798, 3649972968, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, &STACK[0x218], &a28, a21, 0, v32, 0);
}

_DWORD *sub_10003C97C(_DWORD *result)
{
  if ((v2 + v3 + 1264) >= 0x7FFFFFFF)
  {
    v6 = -v5;
  }

  else
  {
    v6 = v4;
  }

  *(v1 + 4) = v6;
  *result = -1863490002;
  return result;
}

uint64_t sub_10003C9B0()
{
  v5 = (v1 & 0x672C39BD ^ 0xDC0) + *(v2 + 28) - v0 - 241809452;
  v7 = (*(v3 + 20) & 1) == 0 || v5 > 0xFFFFFFBE;
  return (*(v4 + 8 * ((v7 * ((v1 & 0x672C39BD ^ 0xA88) - 461)) ^ v1 & 0x672C39BD)))();
}

uint64_t sub_10003CE10@<X0>(int a1@<W8>)
{
  v7 = (v6 + v3 - 16);
  v8 = (v1 + v3 - 16);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) != 32) * (v4 - a1 - 1546)) ^ (v2 + v4 + 1591))))();
}

uint64_t sub_10003CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *(&STACK[0x26C] + v5 + 72);
  v10 = ((2 * v5) & 0xFF6DAB50) + (v5 ^ 0x7FB6D5AB) + v7;
  *(a1 + v10) = ((v6 - a5 + 11) ^ HIBYTE(v9)) + (~(2 * ((v6 - a5 + 11) ^ HIBYTE(v9))) | 0xB1) - 88;
  *(a1 + v10 + 1) = (BYTE2(v9) ^ 0xC8) - ((v9 >> 15) & 0x4E) - 89;
  *(a1 + v10 + 2) = (BYTE1(v9) ^ 0xB9) - ((2 * (BYTE1(v9) ^ 0xB9)) & 0x4E) - 89;
  *(a1 + v10 + 3) = v9 ^ 0xD3;
  return (*(v8 + 8 * ((943 * (v5 + 4 < LODWORD(STACK[0x2C8]))) ^ v6)))();
}

uint64_t sub_10003D014@<X0>(uint64_t a1@<X4>, int a2@<W6>, unsigned int a3@<W8>)
{
  v7 = (a1 + (a2 - 1));
  v8 = 1109941777 * ((*(*STACK[0x2E0] + (*STACK[0x2E8] & 0xFFFFFFFFF21893ECLL)) ^ v7) & 0x7FFFFFFF);
  v9 = 1109941777 * (v8 ^ HIWORD(v8));
  v10 = v9 >> ((4 * v4) ^ 0xB4u);
  v11 = *(*(v5 + 8 * (v4 - 597)) + v10 - 8);
  v12 = *(*(v5 + 8 * (v4 - 659)) + ((v4 + 629) ^ 0x565u) + v10 - 4);
  v13 = *(*(v5 + 8 * (v4 - 562)) + v10 - 3);
  LOBYTE(v10) = -101 * v10;
  *v7 = v10 ^ v11 ^ (a3 >> v3) ^ v12 ^ v13 ^ v9;
  return (*(v6 + 8 * ((1616 * (a2 == ((v11 ^ (a3 >> v3) ^ v12 ^ v13 ^ v9) != v10))) ^ v4)))();
}

uint64_t sub_10003D220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 40);
  *v7 = 0;
  return (*(v8 + 8 * (((v10 == 0) * (54 * (v9 ^ 0x6B1) - 1008)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7);
}

void sub_10003D348(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = !v2 && *a1 != 0;
  v1 = *(a1 + 16) - 1564307779 * ((((2 * a1) | 0xCF99E5FC) - a1 + 405998850) ^ 0x70C13EED);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10003D474@<X0>(int a1@<W8>, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  *a2 = a1;
  v58 = (*(v56 + 48 * v57 + 8))(a3);
  return (*(v54 + 8 * ((837 * (v58 + 972359704 - ((2 * v58) & 0x73EA1030) == (((v55 + 324) | 0x405) ^ 0x39F50E1D))) ^ v55)))(v58, v59, 777189359, v60, 3517777936, 3169762674, 2392573310, 2209499561, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

uint64_t sub_10003D550()
{
  v3 = v1 ^ 0x7D4;
  v4 = ((v3 + 2104657463) & 0x828D7AF7) + v0 + 1512675745;
  v5 = v4 > 0xC0DB9698;
  if (v4 < 0xC0DB9698)
  {
    v5 = 1;
  }

  return (*(v2 + 8 * ((v5 * (v3 ^ 0x246)) ^ v3)))(2395, 1647955900);
}

uint64_t sub_10003D560@<X0>(int a1@<W8>)
{
  v7 = (((v1 | 0xCDD89088) - (v1 & 0xCDD89088)) ^ 0x4075F264) * v5;
  *(v6 - 168) = 0;
  *(v6 - 200) = &STACK[0x500];
  *(v6 - 192) = &STACK[0x3F4];
  *(v6 - 184) = v7 + v2 + 264;
  *(v6 - 180) = a1 + v7;
  v8 = (*(v4 + 8 * (v2 + 2357)))(v6 - 200);
  v9 = *(v6 - 176);
  STACK[0x348] = STACK[0x2E8];
  return (*(v4 + 8 * ((1068 * (v9 == ((v2 - 1429891670) & 0x553A6FBC ^ v3 ^ (v2 - 1447291538) & 0x5643EFF8))) | v2)))(v8, 167);
}

uint64_t sub_10003D664@<X0>(unsigned int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v3 < a2;
  if (v5 == (((a1 - 1139) | 0xA8) ^ 0xBDuLL) + v2 > 0xFFFFFFFF08727CACLL)
  {
    v5 = a2 + v2 + 1 < v3;
  }

  return (*(v4 + 8 * ((38 * v5) ^ a1)))();
}

uint64_t sub_10003D7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v50 = ((v43 ^ 0x44) - 1436702668) & 0x55A25FAA;
  v51 = v44 ^ a3;
  v52 = a1 ^ 0x564A516E7D1B671DLL ^ v50;
  v53 = v52 ^ a8;
  v54 = a1 & 0xC2A9604806325AB4 ^ 0x8008200804101224 ^ (v53 ^ 0x926AAF3284BEF3B4) & (a1 ^ 0x9C0A2C2A9554B727);
  v55 = a3 ^ a4 ^ 0x95267F3DEDEEBAF3;
  v56 = v54 + (v51 ^ 0xEA8518D97C07E7A5) - 2 * (v54 & (v51 ^ 0xEA8518D97C07E7A5));
  v57 = v55 & 0x8000000;
  v58 = a1 & 0x517ACD70F939F551 ^ 0x4170C15068294050 ^ (__ROR8__(__ROR8__(v51 ^ 0x72E10F94ACFCC12ELL, 58) ^ 0x7E4E5F8D1B597DC8, 6) ^ 0x17181CBCE25049D2) & (a1 ^ 0x63F5D3D56AAB48D8);
  v59 = v55 & 0xFFFFFFFFF7FFFFFFLL;
  v60 = __ROR8__(a4 ^ v51 & 0xB930232FC2D00029 ^ (v51 ^ 0xEA8518D97C07E7A5) & (a3 ^ a4 ^ 0xF1618F8AE3E72D7DLL) ^ (a3 ^ 0x2BA4786FCC5E8C20) & (a4 ^ 0x1C240EE0AFE62E3) ^ a3 & 0x62379424E797C397 ^ v53 ^ 0xACC48D64F4A05105, 49) ^ 0xC9B7530CD2D0D5A3;
  if ((v58 & v57) != 0)
  {
    v57 = -v57;
  }

  v61 = (v57 + v58) ^ v59;
  v62 = __ROR8__(v60, 15);
  v63 = v53 & 0xDEC3B92B3D3165E8 ^ v52 ^ (v53 ^ 0xAF3C30857D7356FFLL) & (a4 ^ 0x42C9921E2FA73B63) ^ v56;
  v64 = v63 ^ 0xD9CD46E88A9D50EBLL ^ __ROR8__(v63 ^ 0xD9CD46E88A9D50EBLL, 39) ^ (((v63 ^ 0xD9CD46E88A9D50EBLL) >> 61) | 0x3BA2FF9240BC1700);
  v61 ^= 0x8FA8017BC618247ALL;
  *(&v65 + 1) = v64 ^ 0x26097CA20B645BLL;
  *&v65 = v64 ^ 0xE180000000000000;
  v66 = ((v61 >> 41) | (v61 << 57)) ^ (v61 << 23) ^ ((v61 >> 7) + v61 - 2 * ((v61 >> 7) & v61)) ^ 0xFBEB666619A52F05;
  v67 = (v62 >> 10) ^ (v62 >> 17);
  v68 = v67 ^ ((v62 ^ 0x2762BA07CB661344) << 47) ^ 0x379D14C94BC7929ALL ^ (((v62 << 54) ^ 0xC5C0000000000000) - ((2 * ((v62 << 54) ^ 0xC5C0000000000000)) & 0x7777777777777777) + 0x3B8CB538219CDA8BLL);
  return (*(a42 + 8 * (((((v50 + v46) ^ (v45 > ((a5 << ((v50 + 78) ^ v47)) & 2) + (a5 ^ 1u))) & 1) * v48) ^ v50)))(v42 ^ __ROR8__(__ROR8__(v63, 51) & 0xFFFFFFFFFFFFE3FFLL ^ 0x58D529C0B9008114 ^ (v65 >> 54), 10), a2, v66, (v68 - 2 * (v68 & a2 ^ v67 & 0x24) + v49) ^ v62 ^ 0x2762BA07CB661344);
}

uint64_t sub_10003DD28@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X5>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v65 = 294 * (a7 ^ 0x45E);
  v66 = &STACK[0x18B0] + v62;
  v67 = *v61;
  *(v66 + 17) = *(v61 + 1);
  *(v66 + 25) = *(v61 + 9);
  *(v66 + 29) = *(v61 + 13);
  v66[31] = *(v61 + 15);
  v69 = *v61;
  v68 = v61[1];
  *v66 = v69;
  *(v66 + 1) = v68;
  v66[16] = v67;
  v70 = (v66 + 16);
  v71 = *(a6 + 8 * (v65 ^ 0x36C));
  LOBYTE(v66) = *(v71 + (v66[21] ^ v63));
  v72 = *(a6 + 8 * (v65 - 806)) - 4;
  LODWORD(v69) = *(v72 + (v70[2] ^ 0xA4));
  v73 = *(a6 + 8 * (v65 - 752));
  v74 = *(v73 + (v70[12] ^ 0x28));
  v75 = v69 ^ (v69 >> 3) ^ (v69 >> 5);
  LODWORD(v69) = ((v74 ^ (v74 >> 3) ^ (v74 >> 2)) << 24) ^ 0xE39F8056;
  v76 = *(v73 + (*v70 ^ 0xBBLL));
  v77 = *(a6 + 8 * (v65 - 835)) - 4;
  v78 = *(v77 + (v70[15] ^ 0x74));
  v79 = *(v77 + (v70[7] ^ 0xB3));
  LODWORD(v66) = (v79 ^ 0xFFFFFFBF) & ((v65 - 1074694581) ^ (((76 * v66 - 44) ^ (19 * v66)) << 16)) | v79 & 0x42;
  v80 = *(v77 + (v70[11] ^ 0x19));
  LODWORD(v69) = v69 & (v78 ^ 0xFF9F88DF) | v78 & 0xA9;
  LOBYTE(v78) = *(v71 + (v70[13] ^ 0xCFLL));
  v81 = (((v76 ^ (v76 >> 3) ^ (v76 >> 2) ^ 0x79) << 24) ^ 0x33A68386) & ((v75 << 8) ^ 0xFFBE4ECF);
  v82 = *(v73 + (v70[8] ^ 4));
  v83 = ((76 * v78 - 44) ^ (19 * v78)) << 16;
  v220 = v77;
  v84 = (((v82 ^ (v82 >> 3) ^ (v82 >> 2) ^ a2) << 24) ^ 0x4B415387) & (v80 ^ 0xFF45D7C7) | v80 & 0x78;
  v85 = ((v81 & 0xFFFF83FF | (((v75 >> 2) & 0x1F) << 10)) ^ 0xCB3A8DE) & (*(v77 + (v70[3] ^ 0xF1)) ^ 0xFFBFFF16) | (*(v77 + (v70[3] ^ 0xF1)) & a3);
  v86 = *(v72 + (v70[6] ^ 0xAELL));
  LOBYTE(v78) = *(v71 + (v70[1] ^ 0x72));
  v87 = *(v72 + (v70[10] ^ 0x41));
  v88 = (v87 ^ (v87 >> 5) ^ ((v87 >> 3) | 0x60)) << 8;
  v221 = v73;
  v89 = (*(v72 + (v70[14] ^ 0xC9)) ^ (*(v72 + (v70[14] ^ 0xC9)) >> 5) ^ (*(v72 + (v70[14] ^ 0xC9)) >> 3)) << 8;
  v90 = *(v73 + (v70[4] ^ 0x51));
  LODWORD(v69) = (v89 ^ 0xFFFFC0FF) & ((v83 & 0x320000 | (v83 ^ 0xFF4CA1FF) & (v69 ^ 0xFB5221B0)) ^ 0x619ED6D3);
  v91 = (v90 ^ (v90 >> 3) ^ ((~v90 & 0xFC) >> 2)) << 24;
  v222 = v71;
  LOBYTE(v70) = *(v71 + (v70[9] ^ a5));
  HIDWORD(a23) = -44;
  LODWORD(v70) = ((76 * v70 - 44) ^ (19 * v70)) << 16;
  LODWORD(STACK[0x228]) = v85 & 0xFC9C1678 ^ 0x543D44C4 ^ ((((76 * v78 - 44) ^ (19 * v78)) << 16) ^ 0x3EAE987) & (v85 ^ 0x2FEA820D);
  LODWORD(a56) = v91 & 0x8C000000 ^ 0xC6115C7C ^ (v91 ^ 0x1CFFFFFF) & (((((v86 ^ (v86 >> 5) ^ (v86 >> 3)) << 8) ^ 0x55574491) & (v66 ^ 0xE8158606) | v66 & 0x2AA8006E) ^ 0xC1F6C68);
  LODWORD(STACK[0x2A8]) = v89 & 0x88888888 ^ 0x2BA69DF8 ^ v69;
  LODWORD(a53) = v70 & 0xEC0000 ^ 0x80D1CDDA ^ (v70 ^ 0xFF12FFFF) & ((v88 & 0x1B00 | (v88 ^ 0xFFFFBFFF) & (v84 ^ 0xD620B72F)) ^ 0x367273B9);
  v218 = STACK[0x550];
  v219 = STACK[0x548];
  LODWORD(STACK[0x2E8]) = v65 - 656;
  LODWORD(STACK[0x2E0]) = 0;
  v92 = v219[6];
  HIDWORD(v225) = (v65 - 1832979315) & 0x6D410B72;
  LODWORD(STACK[0x2B8]) = HIDWORD(v225) ^ 0x379;
  LOBYTE(v65) = v219[HIDWORD(v225) ^ 0x379];
  LODWORD(v92) = *(v72 + (v92 ^ 0xD3)) ^ (*(v72 + (v92 ^ 0xD3)) >> 5) ^ (*(v72 + (v92 ^ 0xD3)) >> 3);
  STACK[0x2C0] = 14;
  LOBYTE(v65) = v65 ^ (LODWORD(STACK[0x2E8]) + 93);
  STACK[0x220] = 3;
  LOBYTE(v65) = *(v77 + v65);
  LODWORD(v70) = *(v72 + (v219[14] ^ 0xC3));
  v93 = v219[3];
  LOBYTE(v89) = (v65 ^ 0xA8) - 98;
  v94 = ((2 * v65) & 0xC4 ^ 0x84) + v89;
  STACK[0x2C8] = 7;
  v95 = *(v77 + (v93 ^ 0x87));
  LODWORD(v73) = v70 ^ 0x71 ^ (v70 >> 3) ^ (((v70 ^ 0x71) >> 5) | 0x18);
  v96 = *(v77 + (v219[7] ^ 0xEELL));
  STACK[0x2D8] = a4;
  LODWORD(v69) = ((v92 << 8) ^ 0x2BD72781) & ~v96 | v96 & 0x7E;
  LODWORD(v92) = *(v71 + (v219[a4] ^ 0xFLL));
  LOBYTE(v85) = ((((19 * v92) ^ 0xFFFFFFB5) + ((38 * v92) & 0x6A)) << (v89 & 2) << (v89 & 2 ^ 2)) ^ (19 * v92 - ((38 * v92) & 0x6A) + 53);
  v97 = *(v221 + (v219[8] ^ 0xAALL));
  v98 = v97 ^ (v97 >> 3) ^ (v97 >> 2);
  STACK[0x290] = 1;
  v99 = *(v71 + (v219[1] ^ a4));
  v100 = (76 * v99 - 44) ^ (19 * v99);
  v101 = ((v100 >> 4) ^ 0xFFFFFFFFFFFFFE07) & ((v95 << 12) ^ 0xC6156C5B66187209) | (v100 >> 4) & 6;
  v102 = (v101 ^ 0x84A1200994B05F4) & ((v100 << 28) ^ 0xE4A5651495F15F5) ^ v101 & 0x4015280A4600E20ALL;
  LODWORD(v101) = *(v72 + (v219[10] ^ 8));
  v103 = v101 ^ (v101 >> 5) ^ (v101 >> 3);
  LODWORD(v101) = *(v221 + ((v219[4] - ((2 * v219[4]) & 0x1A4u) + 210) ^ 0x71));
  v104 = *(v221 + (v219[12] ^ 0x9FLL));
  v105 = v101 ^ (v101 >> 3) ^ (v101 >> 2);
  LODWORD(v101) = v104 ^ (v104 >> 3) ^ (v104 >> 2);
  v106 = *(v72 + (v219[2] ^ 0x3FLL));
  v107 = *(v222 + (v219[9] ^ 0x9DLL));
  v108 = (76 * v107 - 44) ^ (19 * v107);
  LODWORD(v101) = ((v101 << 24) ^ 0xF3C03249) & ((((v85 << 16) ^ 0x560F4DD3) & ((v73 << 8) ^ 0xD7FF7BFF) | (v73 << 8) & 0xB200) ^ 0xA9A857AA) ^ (((v85 << 16) ^ 0x560F4DD3) & ((v73 << 8) ^ 0xD7FF7BFF) & 0x163FCD10 | (v73 << 8) & 0x8000);
  v109 = *(v77 + (v219[15] ^ 0x4BLL));
  v110 = *(v222 + (v219[5] ^ 0xF7));
  v111 = ((76 * v110 - 44) ^ (19 * v110)) << 16;
  v112 = (((v111 ^ 0xFFF3FFFF) & ((v105 << 24) ^ 0x70DDFBCC) | v111 & 0x22222222) ^ 0x2867998B) & (v69 ^ 0xD428BFEE) ^ v69 & 0x3479DB8;
  LODWORD(v69) = *(v221 + (*v219 ^ 0xD6));
  LODWORD(v69) = (((v69 ^ 0xF6) >> 2) | ((v69 ^ 0xFFFFFFF6) << 6)) ^ 0x64 ^ (((v69 ^ (v69 >> 1)) >> 4) ^ 0x31 | (16 * (v69 ^ (v69 >> 1))));
  v113 = (v102 << 20) ^ 0xF4D00000 | (v102 >> 12) ^ 0xE5BCA9B9;
  v114 = v113 ^ ((v106 ^ (v106 >> 5) ^ (v106 >> 3)) << 8);
  HIDWORD(v223) = (((v69 & 0xC0) << 18) | (v69 << 26)) ^ v114;
  v115 = *(&off_100085FF0 + (LODWORD(STACK[0x2E8]) ^ 0x82));
  v116 = *(&off_100085FF0 + (LODWORD(STACK[0x2E8]) ^ 0xC6));
  v117 = *(v116 + 4 * (v96 ^ 0xCE)) - (v112 ^ 0x21C176A0);
  v118 = v85 ^ 0x61u;
  v119 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 182);
  v120 = *(v119 + 4 * v118) - 1409877230;
  v121 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 121) - 8;
  v122 = *&v121[4 * (v103 ^ 0x29)] ^ v120 ^ v117 ^ (*(v115 + 4 * (HIBYTE(HIDWORD(v223)) ^ 0x94u)) - (HIBYTE(HIDWORD(v223)) ^ 0x5F6A3AC0));
  LODWORD(v223) = v94;
  v123 = *&v121[4 * (v73 ^ 0x5D)] ^ (*(v119 + 4 * (BYTE2(v113) ^ 0x7Cu)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v112) ^ 0xFB)) - (HIBYTE(v112) ^ 0x5F6A3AAF)) ^ (*(v116 + 4 * (v94 ^ 0xAEu)) - (v94 ^ 0x21C17607));
  LODWORD(v225) = v98;
  v124 = (BYTE3(v101) ^ 0xA095C590) + *(v115 + 4 * (BYTE3(v101) ^ 0x3B));
  LODWORD(v101) = *&v121[4 * (BYTE1(v114) ^ 0x2D)] ^ (*(v115 + 4 * (v98 ^ 0x40u)) - (v98 ^ 0x5F6A3A14)) ^ (*(v116 + 4 * (v109 ^ 0x4B)) - (((v101 ^ 0x2A) & ~v109 | v109 & 0x8C) ^ 0x21C17691)) ^ (*(v119 + 4 * ((BYTE2(v112) ^ 0xDC) + ((v112 >> 15) & 0xF8 ^ 0xFFFFFF47) + 125)) - 1409877230);
  HIDWORD(a44) = v108;
  v224 = __PAIR64__(v103, v112);
  v125 = (*(v119 + 4 * (v108 ^ 0xE3u)) - 1409877230) ^ *&v121[4 * (BYTE1(v112) ^ 6)] ^ (*(v116 + 4 * ((v102 >> 12) ^ 0xFLL)) - ((v102 >> 12) ^ 0x21C176A6)) ^ (v124 + 1);
  v126 = *(v119 + 4 * (BYTE2(v125) ^ 0xC5u));
  v127 = *&v121[4 * (BYTE1(v101) ^ 0xF9)] ^ (*(v116 + 4 * (v123 ^ 0x68u)) - (v123 ^ 0x21C176C1)) ^ (*(v115 + 4 * (HIBYTE(v122) ^ 0x9E)) - (HIBYTE(v122) ^ 0x5F6A3ACA)) ^ ((v126 ^ 0xABF6FB12) + ((2 * v126) & 0x57EDF624));
  LODWORD(v69) = (*(v119 + 4 * (BYTE2(v122) ^ 0x96u)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v123) ^ 0xA8)) - (HIBYTE(v123) ^ 0x5F6A3AFC)) ^ *&v121[4 * (BYTE1(v125) ^ 0x6E)] ^ (*(v116 + 4 * (v101 ^ 0xFAu)) - (v101 ^ 0x21C17653));
  LODWORD(v109) = (*(v119 + 4 * ((((BYTE2(v123) ^ 5) - (BYTE2(v123) ^ 0x79)) ^ 0xFFFFFFF8) + (BYTE2(v123) ^ 5))) - 1409877230) ^ (*(v115 + 4 * (BYTE3(v101) ^ 0xA6)) - (BYTE3(v101) ^ 0x5F6A3AF2)) ^ *&v121[4 * (BYTE1(v122) ^ 0xE0)] ^ (*(v116 + 4 * (v125 ^ 0x40u)) - (v125 ^ 0x21C176E9));
  v128 = (*(v119 + 4 * (BYTE2(v101) ^ 0xA3u)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v125) ^ 0x74)) - (HIBYTE(v125) ^ 0x5F6A3A20)) ^ *&v121[4 * (BYTE1(v123) ^ 0x9A)] ^ (*(v116 + 4 * (v122 ^ 0x9Au)) - (v122 ^ 0x21C17633));
  LODWORD(v102) = (*(v119 + 4 * (BYTE2(v128) ^ 0x2Cu)) - 1409877230) ^ *&v121[4 * (BYTE1(v109) ^ 0xBB)] ^ (*(v115 + 4 * (HIBYTE(v127) ^ 0x48)) - (HIBYTE(v127) ^ 0x5F6A3A1C)) ^ (*(v116 + 4 * (v69 ^ 0xE0u)) - (v69 ^ 0x21C17649));
  v129 = (*(v119 + 4 * (BYTE2(v127) ^ 0xE2u)) - 1409877230) ^ (*(v115 + 4 * (BYTE3(v69) ^ 0x7D)) - (BYTE3(v69) ^ 0x5F6A3A29)) ^ *&v121[4 * (BYTE1(v128) ^ 0x4F)] ^ (*(v116 + 4 * (v109 ^ 0x80u)) - (v109 ^ 0x21C17629));
  LODWORD(v101) = (*(v119 + 4 * ((BYTE2(v69) ^ 0xD9) + ((v69 >> 15) & 0xF8 ^ 0xFFFFFF4F) + 125)) - 1409877230) ^ (*(v115 + 4 * (BYTE3(v109) ^ 0x45)) - (BYTE3(v109) ^ 0x5F6A3A11)) ^ *&v121[4 * (BYTE1(v127) ^ 0x46)] ^ (*(v116 + 4 * (v128 ^ 0xA8u)) - (v128 ^ 0x21C17601));
  LODWORD(v69) = (*(v119 + 4 * (BYTE2(v109) ^ 0x90u)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v128) ^ 0x99)) - (HIBYTE(v128) ^ 0x5F6A3ACD)) ^ *&v121[4 * (BYTE1(v69) ^ 0xA2)] ^ (*(v116 + 4 * (v127 ^ 0xA5u)) - (v127 ^ 0x21C1760C));
  v130 = (*(v119 + 4 * (BYTE2(v69) ^ 0xF6u)) - 1409877230) ^ (*(v115 + 4 * (BYTE3(v102) ^ 0xE5)) - (BYTE3(v102) ^ 0x5F6A3AB1)) ^ *&v121[4 * (BYTE1(v101) ^ 0xC1)] ^ (*(v116 + 4 * (v129 ^ 0x57u)) - (v129 ^ 0x21C176FE));
  v131 = (*(v119 + 4 * ((((BYTE2(v102) ^ 0x95) - (BYTE2(v102) ^ 0xE9)) ^ 0xFFFFFFF8) + (BYTE2(v102) ^ 0x95))) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v129) ^ 0x7E)) - (HIBYTE(v129) ^ 0x5F6A3A2A)) ^ *&v121[4 * (BYTE1(v69) ^ 0x2C)] ^ (*(v116 + 4 * (v101 ^ 0x72u)) - (v101 ^ 0x21C176DB));
  v132 = BYTE3(v101) ^ 0x5F6A3A27;
  v133 = (*(v119 + 4 * (BYTE2(v129) ^ 0xDu)) - 1409877230) ^ *&v121[4 * (BYTE1(v102) ^ 0xEC)] ^ (*(v115 + 4 * (BYTE3(v101) ^ 0x73)) - v132) ^ (*(v116 + 4 * (v69 ^ 0x3Au)) - (v69 ^ 0x21C17693));
  v134 = (*(v119 + 4 * (BYTE2(v101) ^ 0x7Fu)) - 1409877230) ^ (*(v115 + 4 * (BYTE3(v69) ^ 0x97)) - (BYTE3(v69) & 0xFFFFFFFD ^ 0x1D ^ (1600797406 - (BYTE3(v69) & 2)))) ^ *&v121[4 * (((BYTE1(v129) ^ 0x6B) - 1853103296 + ((v129 >> 7) & 0x7E ^ 0xFFFFFFA9)) ^ 0x918BE368)] ^ (*(v116 + 4 * (v102 ^ 0x32u)) - (v102 ^ 0x21C1769B));
  v135 = (*(v119 + 4 * (BYTE2(v134) ^ 0xC3u)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v130) ^ 0x85)) - (HIBYTE(v130) ^ 0x5F6A3AD1)) ^ *&v121[4 * (BYTE1(v133) ^ 0x25)] ^ (*(v116 + 4 * (v131 ^ 0x77u)) - (v131 ^ 0x21C176DE));
  v136 = HIWORD(v130) & 0xC0 ^ 0x80;
  if ((v130 & 0x3F0000) != 0x3C0000)
  {
    LOBYTE(v136) = BYTE2(v130) ^ 0xBC;
  }

  v137 = (*(v119 + 4 * (v136 ^ 0x7Cu)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v131) ^ 0xD0)) - (HIBYTE(v131) ^ 0x5F6A3A84)) ^ *&v121[4 * (BYTE1(v134) ^ 0x35)] ^ (*(v116 + 4 * (v133 ^ 0x37u)) - (v133 ^ 0x21C1769E));
  v138 = (*(v119 + 4 * (BYTE2(v131) ^ 0xAEu)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v133) ^ 0x46)) - (HIBYTE(v133) ^ 0x5F6A3A12)) ^ *&v121[4 * (BYTE1(v130) ^ 0x81)] ^ (*(v116 + 4 * (v134 ^ 0x5Au)) - (v134 ^ 0x21C176F3));
  v139 = (*(v119 + 4 * (BYTE2(v133) ^ 0x38u)) - 1409877230) ^ *&v121[4 * (BYTE1(v131) ^ 8)] ^ (*(v115 + 4 * (HIBYTE(v134) ^ 0xAF)) - (HIBYTE(v134) ^ 0x5F6A3AFB)) ^ (*(v116 + 4 * (v130 ^ 0xE7u)) - (v130 ^ 0x21C1764E));
  v140 = BYTE1(v137) ^ 6;
  v141 = (*(v119 + 4 * ((v139 ^ 0x28B1C8AFu) >> 16)) - 1409877230) ^ *&v121[4 * ((v138 ^ 0xF582) >> 8)] ^ (*(v115 + 4 * (((v135 ^ 0x3AB33250u) >> 24) ^ 0x8A)) - (((v135 ^ 0x3AB33250u) >> 24) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v137 ^ 0x82u)) - (v137 ^ 0x21C1762B));
  v142 = (*(v119 + 4 * (BYTE2(v135) ^ 0xCFu)) - 1409877230) ^ *&v121[4 * ((v139 ^ 0xC8AF) >> 8)] ^ (*(v116 + 4 * (v138 ^ 0x52u)) - (v138 ^ 0x21C176FB)) ^ (*(v115 + 4 * (((v137 ^ 0x94240652) >> 24) ^ 0x8A)) - (((v137 ^ 0x94240652) >> 24) ^ 0x5F6A3ADE));
  v143 = (*(v119 + 4 * ((v137 ^ 0x94240652) >> 16)) - 1409877230) ^ (*(v115 + 4 * (((v138 ^ 0x57A0F582u) >> 24) ^ 0x8A)) - (((v138 ^ 0x57A0F582u) >> 24) ^ 0x5F6A3ADE)) ^ *&v121[4 * ((v135 ^ 0x3250) >> 8)] ^ (*(v116 + 4 * (v139 ^ 0x7Fu)) - (v139 ^ 0x21C176D6));
  v144 = (*(v119 + 4 * (BYTE2(v138) ^ 0xDCu)) - 1409877230) ^ (*(v115 + 4 * (((v139 ^ 0x28B1C8AFu) >> 24) ^ 0x8A)) - (((v139 ^ 0x28B1C8AFu) >> 24) ^ 0x5F6A3ADE)) ^ *&v121[4 * (v140 ^ 0x57)] ^ (*(v116 + 4 * (v135 ^ 0x80u)) - (v135 ^ 0x21C17629));
  v145 = v144 ^ 0xBE27B2EF;
  v146 = (*(v119 + 4 * ((v144 ^ 0xBE27B2EF) >> 16)) - 1409877230) ^ *&v121[4 * ((v143 ^ 0x7C12) >> 8)] ^ (*(v115 + 4 * (((v141 ^ 0xDBAE4527) >> 24) ^ 0x8A)) - (((v141 ^ 0xDBAE4527) >> 24) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v142 ^ 0x10u)) - (v142 ^ 0x21C176B9));
  v147 = (*(v119 + 4 * (BYTE2(v141) ^ 0xD2u)) - 1409877230) ^ *&v121[4 * (BYTE1(v144) ^ 0xE5)] ^ (*(v115 + 4 * (((v142 ^ 0x6FA1BBC0) >> 24) ^ 0x8A)) - (((v142 ^ 0x6FA1BBC0) >> 24) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v143 ^ 0xC2u)) - (v143 ^ 0x21C1766B));
  v148 = (*(v119 + 4 * ((v142 ^ 0x6FA1BBC0) >> 16)) - 1409877230) ^ *&v121[4 * ((v141 ^ 0x4527) >> 8)] ^ (*(v115 + 4 * (((v143 ^ 0x2B27C12) >> 24) ^ 0x8A)) - (((v143 ^ 0x2B27C12) >> 24) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v144 ^ 0x3Fu)) - (v144 ^ 0x21C17696));
  v149 = (*(v119 + 4 * ((v143 ^ 0x2B27C12) >> 16)) - 1409877230) ^ *&v121[4 * ((v142 ^ 0xBBC0) >> 8)] ^ (*(v115 + 4 * (HIBYTE(v145) ^ 0x8A)) - (HIBYTE(v145) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v141 ^ 0xF7u)) - (v141 ^ 0x21C1765E));
  v150 = v149 ^ 0x7DDF413F;
  v151 = (*(v119 + 4 * ((v149 ^ 0x7DDF413Fu) >> 16)) - 1409877230) ^ *&v121[4 * (BYTE1(v148) ^ 0x1F)] ^ (*(v115 + 4 * (((v146 ^ 0x179F0454) >> 24) ^ 0x8A)) - (((v146 ^ 0x179F0454) >> 24) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v147 ^ 0xF5u)) - (v147 ^ 0x21C1765C));
  v152 = (*(v119 + 4 * ((v146 ^ 0x179F0454) >> 16)) - 1409877230) ^ *&v121[4 * ((v149 ^ 0x413F) >> 8)] ^ (*(v115 + 4 * (((v147 ^ 0x75457125) >> 24) ^ 0x8A)) - (((v147 ^ 0x75457125) >> 24) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v148 ^ 0xC0u)) - (v148 ^ 0x21C17669));
  v153 = *&v121[4 * (BYTE1(v146) ^ 0x53)];
  v154 = v153 ^ -v153 ^ (-1795874037 - (__ROR4__(__ROR4__(v153, 28) ^ 0xA44BDAEB, 4) ^ 0x2EB19EA5));
  v155 = (*(v119 + 4 * (BYTE2(v147) ^ 0x39u)) - 1409877230) ^ (*(v116 + 4 * (v149 ^ 0xEFu)) - (v149 ^ 0x21C17646)) ^ (*(v115 + 4 * (((v148 ^ 0xAC254810) >> 24) ^ 0x8A)) - (((v148 ^ 0xAC254810) >> 24) ^ 0x5F6A3ADE)) ^ (((2 * v154) & 0x29EA4616) + (v154 ^ 0x94F5230B));
  v156 = (*(v119 + 4 * (BYTE2(v148) ^ 0x59u)) - 1409877230) ^ *&v121[4 * (BYTE1(v147) ^ 0x26)] ^ (*(v115 + 4 * (HIBYTE(v150) ^ 0x8A)) - (HIBYTE(v150) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * (v146 ^ 0x84u)) - (v146 ^ 0x21C1762D));
  v157 = v151 ^ 0x8EBD9B97;
  v158 = v152 ^ 0xA3ECFAB3;
  v159 = *(v116 + 4 * (v152 ^ 0x63u)) - (v152 ^ 0x21C176CA);
  v160 = (*(v119 + 4 * ((v156 ^ 0x10CC86EDu) >> 16)) - 1409877230) ^ (*(v115 + 4 * (HIBYTE(v157) ^ 0x8A)) - (HIBYTE(v157) ^ 0x5F6A3ADE)) ^ 0x94F5230B ^ *&v121[4 * (BYTE1(v155) ^ 0xC2)];
  v161 = (v160 ^ -v160 ^ (v159 - (v160 ^ v159))) + v159;
  v162 = v155 ^ 0x8CA395FC;
  if (((v155 ^ 0x8CA395FC) & 0x10) != 0)
  {
    v163 = -16;
  }

  else
  {
    v163 = 16;
  }

  v164 = (*(v119 + 4 * (BYTE2(v151) ^ 0xC1u)) - 1409877230) ^ *&v121[4 * ((v156 ^ 0x86ED) >> 8)] ^ (*(v115 + 4 * (HIBYTE(v158) ^ 0x8A)) - (HIBYTE(v158) ^ 0x5F6A3ADE)) ^ (*(v116 + 4 * ((v163 + v162) ^ 0xC0u)) - ((v163 + v162) ^ 0x21C17669));
  v165 = (*(v119 + 4 * BYTE2(v158)) - 1409877230) ^ *&v121[4 * BYTE1(v157)] ^ (*(v116 + 4 * (v156 ^ 0x3Du)) - (v156 ^ 0x21C17694)) ^ (*(v115 + 4 * (HIBYTE(v162) ^ 0x8A)) - (HIBYTE(v162) ^ 0x5F6A3ADE));
  v166 = (*(v119 + 4 * (BYTE2(v155) ^ 0xDFu)) - 1409877230) ^ (*(v115 + 4 * (((v156 ^ 0x10CC86EDu) >> 24) ^ 0x8A)) - (((v156 ^ 0x10CC86EDu) >> 24) ^ 0x5F6A3ADE)) ^ *&v121[4 * (BYTE1(v152) ^ 0xAD)] ^ (*(v116 + 4 * (v151 ^ 0x47u)) - (v151 ^ 0x21C176EE));
  v167 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 39) - 8;
  v168 = *&v167[4 * (HIBYTE(v161) ^ 0xBE)];
  v169 = *&v167[4 * (HIBYTE(v164) ^ 0x43)];
  v170 = *&v167[4 * (HIBYTE(v165) ^ 0xD5)];
  v171 = *&v167[4 * ((v166 ^ 0x66EB169A) >> 24)];
  v172 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 95) - 4;
  v173 = *&v172[4 * ((v166 ^ 0x66EB169A) >> 16)];
  v174 = *&v172[4 * (BYTE2(v161) ^ 0xBF)];
  v175 = *&v172[4 * (BYTE2(v164) ^ 0x20)];
  v176 = v165 ^ 0xC4;
  v177 = *&v172[4 * ((v165 ^ 0x6CCB3DC4) >> 16)];
  v178 = *(&off_100085FF0 + (LODWORD(STACK[0x2E8]) ^ 0xE4)) - 8;
  LODWORD(v172) = v170 ^ ((v166 ^ 0x9A) - 1352815326) ^ *&v178[4 * (v166 ^ 0xAF)];
  v179 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 212) - 4;
  v180 = ~v161;
  LODWORD(v172) = v172 ^ *&v179[4 * ((v161 ^ 0x84FF) >> 8)];
  v181 = *&v179[4 * (BYTE1(v165) ^ 0x57)];
  v182 = *&v179[4 * (BYTE1(v166) ^ 0x7C)];
  v183 = *&v179[4 * (BYTE1(v164) ^ 0x2D)];
  v184 = v164;
  v185 = *&v178[4 * (v164 ^ 0x91)];
  v186 = *&v178[4 * (v165 ^ 0xF1)];
  v187 = *&v178[4 * (v161 ^ 0xCA)];
  v188 = v175 ^ 0x4D522762 ^ a53 ^ ((v172 ^ ((v175 ^ 0x4D522762u) >> 2) ^ ((v175 ^ 0x4D522762u) >> 5)) - ((2 * (v172 ^ ((v175 ^ 0x4D522762u) >> 2) ^ ((v175 ^ 0x4D522762u) >> 5))) & 0x60449136) + 807553179);
  v189 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 61) - 12;
  v218[8] = (-97 * v189[HIBYTE(v188) ^ 0x4CLL]) ^ ((-97 * v189[HIBYTE(v188) ^ 0x4CLL]) >> 5) ^ ((-97 * v189[HIBYTE(v188) ^ 0x4CLL]) >> 1) ^ 0xD4;
  v190 = v169 ^ (v176 - 1352815326) ^ v182 ^ v174 ^ 0x4D522762 ^ v186 ^ ((v174 ^ 0x4D522762u) >> 2) ^ ((v174 ^ 0x4D522762u) >> 5);
  v191 = (v190 - ((2 * v190) & 0x6AA39992) - 1252930359) ^ a56;
  v218[4] = (-97 * v189[HIBYTE(v191) ^ 0x61]) ^ ((-97 * v189[HIBYTE(v191) ^ 0x61]) >> 5) ^ ((-97 * v189[HIBYTE(v191) ^ 0x61]) >> 1) ^ 0xD8;
  v192 = ((v188 ^ 0xD2C1) >> 8);
  v193 = ((v192 ^ 0xDA) + 99) ^ v192 ^ 0xDA;
  v194 = v192 ^ 0x6C;
  v195 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 132) - 4;
  v218[10] = (v193 + v195[v194]) ^ 0xB3;
  v196 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 214) - 4;
  v197 = v196[((((v188 ^ 0xA619D2C1) >> 16) ^ -((v188 ^ 0xA619D2C1) >> 16) ^ (510 - ((v188 ^ 0xA619D2C1) >> 16) - ((2 * ((v188 ^ 0xA619D2C1) >> 16)) ^ 0x1FEu))) + 255) ^ 0x5CLL] ^ 0xD9;
  v198 = ((((v188 ^ 0xA619D2C1) >> 16) ^ -((v188 ^ 0xA619D2C1) >> 16) ^ (-2 - ((v188 ^ 0xA619D2C1) >> 16) - ((2 * ((v188 ^ 0xA619D2C1) >> 16)) ^ 0xFE))) - 1) ^ 0xDE;
  v199 = (v198 & 8 & v197) == 0;
  v200 = v198 & 8 ^ v197;
  v201 = v197 - (v198 & 8);
  if (v199)
  {
    v201 = v200;
  }

  v218[9] = v201 ^ v198 & 0xF7;
  v202 = BYTE1(v191) ^ 0x22;
  v218[6] = (v195[BYTE1(v191) ^ 0x94] + ((v202 + 99) ^ v202)) ^ 0xA8;
  v203 = ((v184 ^ 0xA4) - 1352815326) ^ v181 ^ v168 ^ v185 ^ ((((v173 ^ 0x4D522762u) >> (v132 & 3) >> (v132 & 3 ^ 3)) ^ v173 ^ 0x4D522762) >> 2);
  v204 = (v180 - 1352815326) ^ v171 ^ v177 ^ 0x4D522762 ^ v183 ^ ((v177 ^ 0x4D522762) >> 2) ^ ((v177 ^ 0x4D522762) >> 5) ^ v187 ^ 0x23A4540;
  HIDWORD(v205) = (v204 - ((2 * v204) & 0xCBD47E) + 15067711) ^ LODWORD(STACK[0x2A8]);
  LODWORD(v205) = (v204 - ((2 * v204) & 0x93CBD47E) - 907679169) ^ LODWORD(STACK[0x2A8]);
  v206 = v173 ^ 0x4D522762 ^ LODWORD(STACK[0x228]) ^ (v203 - ((2 * v203) & 0x8E955E0A) - 951406843);
  v218[5] = BYTE2(v191) ^ 0x9E ^ v196[BYTE2(v191) ^ 0xD5];
  v207 = *(&off_100085FF0 + LODWORD(STACK[0x2E8]) - 154);
  v208 = *(v207 + (v206 ^ 0xE7)) - 24;
  HIDWORD(v205) = (v205 >> 24) ^ 0x8829CA87;
  LODWORD(v205) = HIDWORD(v205);
  v209 = v205 >> 8;
  v218[STACK[0x220]] = v208 ^ 0x5D ^ (v208 >> 1) & 0x1E;
  v210 = v188;
  v211 = STACK[0x2E0];
  v218[12] = (-97 * v189[HIBYTE(v209) ^ 0x60]) ^ ((-97 * v189[HIBYTE(v209) ^ 0x60]) >> 5) ^ ((-97 * v189[HIBYTE(v209) ^ 0x60]) >> 1) ^ 0xFE;
  v212 = *(v207 + ((180 - (v210 ^ 0x56) + (v210 ^ 0xE2) - 2 * ((180 - (v210 ^ 0x56)) & (v210 ^ 0xE2))) ^ -(v210 ^ 0xE2)) + 180) - 24;
  v218[LODWORD(STACK[0x2B8])] = v212 ^ 0x62 ^ (v212 >> 1) & 0x1E;
  v218[STACK[0x2C0]] = (v195[((HIDWORD(v205) >> 8) >> 8) ^ 0x4FLL] + (((((HIDWORD(v205) >> 8) >> 8) ^ 0xF9) + 99) ^ ((HIDWORD(v205) >> 8) >> 8) ^ 0xF9)) ^ 0xBE;
  v218[2] = (v195[BYTE1(v206) ^ 0x1FLL] + (((BYTE1(v206) ^ 0xA9) + 99) ^ BYTE1(v206) ^ 0xA9)) ^ 0x84;
  v213 = *(v207 + (v191 ^ 0xDDLL));
  v218[STACK[0x2C8]] = (((v213 + ((v213 - 24) ^ 0xAE) - 23) ^ 0xFE) + v213 - 24) ^ ((v213 - 24) >> 1) & 0x1E;
  v214 = -97 * v189[HIBYTE(v206) ^ 0x67];
  *v218 = v214 ^ (v214 >> 5) ^ (v214 >> 1) ^ 0xE1;
  v218[STACK[0x2D8]] = BYTE2(v209) ^ 0x8E ^ v196[BYTE2(v209) ^ 0x55];
  v218[STACK[0x290]] = BYTE2(v206) ^ 0xD3 ^ v196[BYTE2(v206) ^ 0x7DLL];
  v215 = STACK[0x2E8];
  LOBYTE(v206) = *(v207 + (BYTE5(v205) ^ 0xF7)) - 24;
  v218[15] = v206 ^ ((v206 & (v206 ^ 2) & 0x3E) >> 1) ^ 0xCB;
  return (*(v64 + 8 * ((11 * (v211 < 0x140)) ^ v215)))((v213 - 24) ^ 0xAEu, v195, 190, 4294967199, v171, 164, (v202 + 99), v177, a8, a9, a10, a11, a1, a13, a14, a15, a16, a17, v218, v219, v220, v221, v72, a23, v222, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, v223, v224, v225, 4, 9, 8, 10, 5, a53, 0, 12, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_10003FDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char *a26, char *a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  v39 = v32 - 1021;
  v40 = (v32 + 534733449) & 0xE0209EFE;
  v41 = v32 - 306;
  v42 = ((((v38 - 144) ^ 0x13069681 | 0xAC9278CA) - (((v38 - 144) ^ 0x13069681) & 0xAC9278CA)) ^ 0x24D318C1) * v33;
  *(v38 - 120) = v41 ^ v42;
  *(v38 - 136) = v31;
  *(v38 - 128) = &a29;
  *(v38 - 140) = v42 + v34 - 688883145 + v40;
  (*(v36 + 8 * (v39 ^ 0x870)))(v38 - 144);
  a26 = &a31;
  a27 = &a20;
  *(v38 - 136) = a19;
  *(v38 - 128) = &a26;
  *(v38 - 144) = v40 - 1198 - 50899313 * ((((v38 - 144) | 0xF1546FB6) - ((v38 - 144) & 0xF1546FB6)) ^ 0xE57BF22D);
  (*(v36 + 8 * (v40 + 598)))(v38 - 144);
  *(v38 - 136) = a19;
  *(v38 - 128) = &a29;
  *(v38 - 144) = (v40 - 1036) ^ (1388665877 * ((((v38 - 144) | 0xAD366439) - ((v38 - 144) & 0xAD366439)) ^ 0x209B06D5));
  *(v38 - 120) = &a24;
  *(v38 - 112) = &a26;
  (*(v36 + 8 * (v40 ^ 0xFA5)))(v38 - 144);
  v43 = a27;
  *(v38 - 120) = (v40 - 369) ^ (((((v38 - 144) ^ 0x96CC74B4) & 0xCFDB54D4 | ~((v38 - 144) ^ 0x96CC74B4 | 0xCFDB54D4)) ^ 0xB53433BF) * v35);
  *(v38 - 112) = &a24;
  *(v38 - 104) = a19;
  *(v38 - 144) = v43;
  *(v38 - 136) = &a24;
  *(v38 - 128) = &a26;
  (*(v36 + 8 * (v40 + 581)))(v38 - 144);
  *(v38 - 144) = v40 + 379 + 50899313 * ((((v38 - 144) | 0x96199A2E) - ((v38 - 144) & 0x96199A2E)) ^ 0x823607B5);
  *(v38 - 136) = a19;
  *(v38 - 128) = &a26;
  *(v38 - 112) = a12;
  *(v38 - 104) = &a24;
  *(v38 - 120) = &a24;
  (*(v36 + 8 * (v40 ^ 0xFAF)))(v38 - 144);
  *(v38 - 144) = v40 - 1198 - 50899313 * ((((v38 - 144) | 0xEE05088F) - ((v38 - 144) & 0xEE05088F)) ^ 0xFA2A9514);
  *(v38 - 136) = v37;
  *(v38 - 128) = &a26;
  (*(v36 + 8 * (v40 + 598)))(v38 - 144);
  *(v38 - 136) = v37;
  *(v38 - 128) = &a29;
  *(v38 - 144) = (v40 - 1036) ^ (1388665877 * ((((v38 - 144) | 0xE7FD7793) + (~(v38 - 144) | 0x1802886C)) ^ 0x6A50157E));
  *(v38 - 120) = &a22;
  *(v38 - 112) = &a26;
  (*(v36 + 8 * (v40 ^ 0xFA5)))(v38 - 144);
  v44 = a27;
  *(v38 - 136) = &a22;
  *(v38 - 128) = &a26;
  *(v38 - 144) = v44;
  *(v38 - 112) = &a22;
  *(v38 - 104) = v37;
  *(v38 - 120) = (v40 - 369) ^ (1785193651 * ((((v38 - 144) | 0xA8D87DF8) - ((v38 - 144) & 0xA8D87DF8)) ^ 0xBB0491D8));
  (*(v36 + 8 * (v40 ^ 0xFCD)))(v38 - 144);
  *(v38 - 128) = &a26;
  *(v38 - 120) = &a22;
  *(v38 - 112) = a13;
  *(v38 - 104) = &a22;
  *(v38 - 144) = v40 + 379 + 50899313 * (((((v38 - 144) | 0x3ACED934) ^ 0xFFFFFFFE) - (~(v38 - 144) | 0xC53126CB)) ^ 0xD11EBB50);
  *(v38 - 136) = v37;
  (*(v36 + 8 * (v40 + 611)))(v38 - 144);
  *(v38 - 136) = &a22;
  *(v38 - 128) = &a24;
  *(v38 - 144) = (v40 - 449) ^ (210068311 * ((((2 * ((v38 - 144) ^ 0x506B9C37)) | 0xAC1B637C) - ((v38 - 144) ^ 0x506B9C37) + 703745602) ^ 0x14B0122D));
  (*(v36 + 8 * (v40 + 513)))(v38 - 144);
  *(v38 - 136) = &a22;
  *(v38 - 140) = v40 + 1564307779 * (((~(v38 - 144) & 0x48C797C6) - (~(v38 - 144) | 0x48C797C7)) ^ 0xDFCA5BD4) + 346;
  v45 = (*(v36 + 8 * (v40 + 609)))(v38 - 144);
  return (*(v36 + 8 * (((*(v38 - 144) < v40 + 235916660) * (v40 ^ 0x8C3)) ^ v40)))(v45);
}

uint64_t sub_1000402C0@<X0>(int a1@<W8>)
{
  if ((a1 - 1964545697) > 0x18 || ((1 << (a1 + 95)) & 0x1000521) == 0)
  {
    return (*(v1 + 8 * ((((*(v3 + 48 * v5 + 40) >> 3) & 1) * (((v4 + v2 + 436) | 0x103) - 795)) ^ (v4 + v2 + 1747))))(4294925278);
  }

  v7 = (((61 * ((v2 - 66) ^ 0xC3114243)) ^ 0x486) & *(v3 + 48 * v5 + 40)) == 0;
  return (*(v1 + 8 * (((2 * v7) | (4 * v7)) ^ (v4 - 1022278312))))();
}

uint64_t sub_100040388@<X0>(int a1@<W8>)
{
  v5 = *(v3 + a1 * v2 + 36);
  LODWORD(STACK[0x3F0]) = v5;
  v6 = v5 - 640999752;
  v8 = v6 > (v1 ^ 0xB009681E) && v6 < SLODWORD(STACK[0x2C8]);
  return (*(v4 + 8 * ((942 * v8) ^ v1)))();
}

uint64_t sub_1000403E0@<X0>(void *a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W5>, int a5@<W8>)
{
  v9 = ((a2 + 1827) ^ (v7 - 2188) ^ a3) >> v8;
  *(*a1 + (a4 + a5)) = v9 + ((a2 + 101) ^ 0x51) - ((2 * v9) & 0x4E);
  return (*(v5 + 8 * (a2 | (38 * (a4 - 1 != v6)))))();
}

uint64_t sub_1000404E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X7>, _BYTE *a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v42 = a2 ^ 0xA07BA2EC960DBDC4;
  v43 = ((a2 ^ 0xA07BA2EC960DBDC4) + 0x1DC2DA99C97E7FA6 - 2 * ((a2 ^ 0xA07BA2EC960DBDC4) & 0x1DC2DA99C97E7FAELL ^ a2 & 8)) ^ v38;
  v44 = a3 ^ 0xC629C74ADF5BB3E1;
  v45 = v43 ^ 0x68040451F630332FLL;
  v46 = a2 ^ 0xA07BA2EC960DBDC4 ^ a3 ^ 0xC629C74ADF5BB3E1;
  v47 = a3 ^ 0x77B6257EF4CED436 ^ (v43 ^ 0x68040451F630332FLL) & ~v46;
  v48 = (a35 << ((v40 + 121) & 0xDE ^ 0x68u)) | v39;
  v49 = (v48 - 2 * (v48 & 0x172DDE0DAABBE27BLL ^ v39 & 0x28) - 0x68D221F255441DADLL) ^ a1;
  v50 = ((v49 ^ 0x61764447BFE55C68) - ((2 * (v49 ^ 0x61764447BFE55C68)) & 0xB23C067CFCB467AELL) - 0x26E1FCC181A5CC29) ^ a4;
  if ((v42 & 0x82EE1687ACCADB62) == 0)
  {
    v42 = v46;
  }

  v51 = v42 & (a3 ^ 0x39D638B520A44C1ELL);
  v52 = v50 ^ 0xE4C1C31231B4037DLL ^ v51;
  v53 = v52 + 2 * ((v50 ^ 0xE4C1C31231B4037DLL) & v51);
  if (v43 == 0x68040451F630332FLL)
  {
    v54 = v50 ^ 0xE4C1C31231B4037DLL;
  }

  else
  {
    v54 = ~v52;
  }

  v55 = v53 - 2 * (v54 & v51);
  v56 = (v55 ^ -v55 ^ (v47 - (v55 ^ v47))) + v47;
  v57 = v56 ^ __ROR8__(v56, 17) ^ (v56 << 54) ^ (v56 >> 10);
  v58 = (v49 ^ 0x61764447BFE55C68) & (v43 ^ 0x97FBFBAE09CFCCD0) ^ v46;
  v59 = __ROR8__(__ROR8__(v58, 48) ^ 0x1EE88D2BD2A5654BLL, 16);
  v60 = v59 ^ 0xD272391FDD641257 ^ ((v59 ^ 0xD272391FDD641257) << 23) ^ (((v59 ^ 0xD272391FDD641257) >> 41) ^ ((v59 ^ 0xD272391FDD641257) >> 7) | ((v59 ^ 0xD272391FDD641257) << 57));
  v61 = (v50 ^ 0xE4C1C31231B4037DLL) & (v49 ^ 0x9E89BBB8401AA397) ^ v45;
  v62 = v58 ^ v61 ^ 0xF38BFF733C051F6 ^ __ROR8__(v58 ^ v61 ^ 0xF38BFF733C051F6, 28) ^ ((v58 ^ v61 ^ 0xF38BFF733C051F6) << 45) ^ ((v58 ^ v61 ^ 0xF38BFF733C051F6) >> 19);
  v63 = v49 ^ (v50 ^ 0x1B3E3CEDCE4BFC82) & v44 ^ 0xEBC8BC3B37ED90DDLL ^ v61;
  v64 = v63 ^ __ROR8__(v63, 61) ^ (v63 << 25) ^ (v63 >> 39);
  v65 = __ROR8__(v55 ^ 0x92CFC162FD513143 ^ ((v55 ^ 0x92CFC162FD513143) >> 1) ^ ((v55 ^ 0x92CFC162FD513143) << 58) ^ ((v55 ^ 0x92CFC162FD513143) << 63) ^ ((v55 ^ 0x92CFC162FD513143) >> 6) ^ v64, 31);
  v66 = v62 ^ v60;
  v67 = v57 ^ v60;
  v68 = __ROR8__(v65 ^ 0xD75B6CEAE3384985, 33);
  v69 = v68 ^ 0x719C24C2EBADB675 ^ v60 & ~v57;
  *(&v70 + 1) = (v62 ^ v60) & ~(v57 ^ v60) ^ v57 ^ v69 ^ 0x28FA59BDD48D0B6;
  *&v70 = (v62 ^ v60) & ~(v57 ^ v60) ^ v57 ^ v69;
  v71 = *(&v70 + 1) ^ __ROR8__(*(&v70 + 1), 10) ^ (v70 >> 17);
  v72 = v57 ^ v60 ^ v64 & ~(v62 ^ v60);
  v73 = v72 ^ 0x9A383CF881807545 ^ __ROR8__(v72 ^ 0x9A383CF881807545, 7) ^ __ROR8__(v72 ^ 0x9A383CF881807545, 41);
  v74 = (v68 ^ 0x719C24C2EBADB675) & ~v64 ^ v66;
  v75 = v72 ^ 0xAC7C0FF4012565E3 ^ v74 ^ ((v72 ^ 0xAC7C0FF4012565E3 ^ v74) >> 19) ^ ((v72 ^ 0xAC7C0FF4012565E3 ^ v74) >> 28) ^ ((v72 ^ 0xAC7C0FF4012565E3 ^ v74) << 36) ^ ((v72 ^ 0xAC7C0FF4012565E3 ^ v74) << 45);
  v76 = (v68 ^ 0x8E63DB3D1452498ALL) & v57 ^ __ROR8__(__ROR8__(v74 ^ v64, 54) ^ 0xC111A6A7B78B6E45, 10);
  v77 = v76 ^ 0xC637853F4EB84C0DLL;
  LODWORD(v76) = *(v41 + ((v76 >> 61) ^ 0x51));
  v78 = (v76 ^ 0xFFFFFFC3 ^ -(v76 ^ 0xFFFFFFC3) ^ -(v76 ^ 0xFFFFFFC3 ^ -(v76 ^ 0xFFFFFFC3) ^ (57 - (v76 ^ 0xFFFFFFFA)))) - 62;
  v79 = v77 ^ ((v76 ^ 0xC3 ^ -(v76 ^ 0xC3) ^ -(v76 ^ 0xC3 ^ -(v76 ^ 0xC3) ^ (57 - (v76 ^ 0xFA)))) - 62) ^ (v77 >> 39) ^ (8 * v77) ^ (v77 << 25);
  v80 = v71 ^ 0x147D2CDEEA4;
  v81 = v75 ^ v73;
  v82 = v71 ^ 0x147D2CDEEA4 ^ v73;
  v83 = v79 & (~(2 * (v75 ^ v73)) + (v75 ^ v73)) ^ v82;
  v84 = ((v83 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v83 ^ 0x26974B18501E2B14uLL) >> 41) ^ ((v83 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v83 ^ 0x26974B18501E2B14) - (((v83 ^ 0x26974B18501E2B14) << 58) & (2 * (v83 ^ 0x26974B18501E2B14))));
  v85 = v75 ^ v71 ^ 0x147D2CDEEA4;
  if (!v78)
  {
    v85 = v81;
  }

  v86 = v85 & ~v82;
  v87 = (v69 ^ 0x6F45779FA95FC03AuLL) >> 1;
  v88 = v69 ^ 0x6F45779FA95FC03ALL ^ ((v69 ^ 0x6F45779FA95FC03ALL) << 58);
  v89 = v87 & 0x100000000000;
  if ((v87 & 0x100000000000 & v88) != 0)
  {
    v89 = -v89;
  }

  v90 = (((v69 ^ 0x6F45779FA95FC03AuLL) >> 6) | (v69 << 63)) ^ v87 & 0xFFFFEFFFFFFFFFFFLL ^ (v89 + v88);
  v91 = v79 ^ v90 ^ (v71 ^ 0xFFFFFEB82D32115BLL) & v73;
  v92 = v71 ^ v86 ^ 0x7370AD2F82FD2592 ^ v91;
  v93 = __ROR8__(v92, 10);
  v94 = (v92 ^ v93 ^ (v92 >> 17)) + (v92 << 47) - 2 * ((v92 ^ v93 ^ (v92 >> 17)) & (v92 << 47));
  v95 = (v91 ^ 0x7955EAEC4D48B80CLL) << 58;
  v96 = (v81 ^ -v81 ^ ((v90 & ~v79) - (v90 & ~v79 ^ v81))) + (v90 & ~v79);
  v97 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v96 ^ v79 ^ 0x3278F838FE43D2BCLL ^ v80 & ~(v79 ^ v90), 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v98 = v97 ^ 0x93DD7BE3C3310A2CLL ^ ((v97 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v97 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v97 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v97 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v99 = (((((2 * (0x34CDB152F4A04500 - v95)) & 0x9000000000000200) + ((0x34CDB152F4A04500 - v95) ^ 0xCB324EAD0B5FBB00)) ^ v95 ^ ((v91 ^ 0x7955EAEC4D48B80CLL) - ((v95 & 0xF800000000000000 ^ (v91 ^ 0x7955EAEC4D48B80CLL) & 0xF9BFE541A2368FBELL | (v91 ^ 0x7955EAEC4D48B80CLL) & 0x6401ABE5DC97041) ^ v95 & 0x400000000000000))) + (v91 ^ 0x7955EAEC4D48B80CLL)) ^ (v91 << 63) ^ __ROR8__(((v91 ^ 0x7955EAEC4D48B80CLL) >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v98, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v100 = v99 & 0xA8F512753D8F931ELL ^ ((v91 ^ 0x7955EAEC4D48B80CLL) >> 1) & 0x28F512753D8F931ELL | (v99 ^ ((v91 ^ 0x7955EAEC4D48B80CLL) >> 1)) & 0x570AED8AC2706CE1;
  v101 = v100 ^ v84 & ~v94;
  *(&v102 + 1) = v101;
  *&v102 = v101 ^ 0xD3DA1E3360BF843ALL;
  v103 = ((v102 >> 1) ^ v101 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v101 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v102 >> 1) ^ v101 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v101 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v102 + 1) = v101;
  *&v102 = v101 ^ 0xD3DA1E3360BF843ALL;
  v104 = v84 ^ v83 ^ 0x6E04C15915AB860ALL ^ v96 ^ __ROR8__(v83 ^ 0x6E04C15915AB860ALL ^ v96, 19) ^ ((v83 ^ 0x6E04C15915AB860ALL ^ v96) << 36) ^ ((v83 ^ 0x6E04C15915AB860ALL ^ v96) >> 28);
  v105 = ((v100 ^ v98) + (v100 | ~v98) + 1) ^ v104;
  v106 = v98 ^ v94 & ~v100 ^ 0x425764BB5877DA25 ^ v105;
  v107 = v106 ^ (v106 >> 61) ^ (v106 >> 39) ^ (8 * v106) ^ (v106 << 25);
  v108 = __ROR8__((v102 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v107 ^ v103, 3) ^ 0x55413C453664FDCDLL, 61);
  v109 = v108 ^ 0xAA09E229B327EE6ALL;
  v110 = (v108 ^ 0xAA09E229B327EE6ALL) & ~v107;
  v111 = v94 ^ v84;
  v112 = v98 & ~v104 ^ v111;
  v113 = v112 ^ 0xFD;
  v114 = v112 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v112 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v112 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v112 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v115 = v112 ^ 0x97F6A7E5F6E8F58ALL ^ v105 ^ __ROR8__(v112 ^ 0x97F6A7E5F6E8F58ALL ^ v105, 19) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v105) << 36) ^ ((v112 ^ 0x97F6A7E5F6E8F58ALL ^ v105) >> 28);
  v116 = ((v115 | v114) ^ v114 & v115) & 0x2D23D578E308995FLL | (v115 ^ v114) & 0xD2DC2A871CF766A0;
  v117 = v94 ^ 0x44C9D571A5C4A51CLL ^ v104 & ~v111 ^ v101;
  v118 = v117 ^ (v117 >> 10) ^ (v117 << 47) ^ (v117 << 54) ^ (v117 >> 17);
  v119 = ((v110 ^ v116 ^ v107) + ((v108 ^ 0x55F61DD64CD81195) & v118) - 2 * ((v110 ^ v116 ^ v107) & (v108 ^ 0x55F61DD64CD81195) & v118)) ^ 0x6005BE354A5BB0B2;
  v120 = v119 >> (v57 & 0x3D) >> (v57 & 0x3D ^ 0x3D);
  v121 = (8 * v119) ^ (v119 >> 39) ^ ((v119 ^ (v119 << 25)) & 0xF21553F3FD140018 ^ v120 & 0x18 | (v119 ^ (v119 << 25)) & 0xDEAAC0C02EBFFE7 ^ v120 & 0xE7);
  v122 = v107 & ~v116 ^ v118 ^ v114;
  v123 = v122 ^ 0x2DB5B6AF87F64351 ^ ((v122 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v122 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v122 ^ 0x2DB5B6AF87F64351) >> 41) | ((v122 ^ 0x2DB5B6AF87F64351) << 57));
  v124 = v122 ^ 0x93C23431B76D41FLL ^ v110 ^ v116;
  v125 = v124 << 36;
  v126 = (v124 ^ (v124 >> 28)) + (v124 >> 19) - 2 * ((v124 ^ (v124 >> 28)) & (v124 >> 19));
  v127 = v126 ^ (v124 << 45);
  v128 = v127 ^ (v124 << 36);
  v129 = v128 ^ v123;
  v130 = v121 & ~(v128 ^ v123);
  v131 = v116 & ~(v118 ^ v114);
  v132 = v109 ^ v114 & ~v118;
  v133 = v118 ^ 0xF374A001D380BDC2 ^ v131 ^ v132 ^ ((v118 ^ 0xF374A001D380BDC2 ^ v131 ^ v132) >> 10) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v131 ^ v132) << 47) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v131 ^ v132) << 54) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v131 ^ v132) >> 17);
  v134 = v133 ^ v123;
  v135 = v130 ^ v134;
  v136 = v132 ^ 0x6DC4FB0BD4FFFF44;
  *(&v102 + 1) = v132;
  *&v102 = v132 ^ 0x6DC4FB0BD4FFFF44;
  v137 = (v102 >> 1) ^ v132 ^ 0x6DC4FB0BD4FFFF44 ^ ((v132 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v121;
  v138 = v136 >> 6;
  if (v125 == v127)
  {
    v139 = v138;
  }

  else
  {
    v139 = ~(v138 ^ v137);
  }

  v140 = v137 + v138 - 2 * (v139 & v137);
  v141 = v140 ^ (((~v133 | 0xFFFFFFFFEFFFFFFFLL) - (v133 & 0x4000000000)) ^ v133 & 0xFFFFFFBFEFFFFFFFLL) & v134;
  if (v134 == -1)
  {
    v142 = 0;
  }

  else
  {
    v142 = v128 ^ v133;
  }

  v143 = v133 ^ v142 & v129 ^ 0x29E1AB0124FF49E7 ^ v141;
  v144 = __ROR8__(v143, 10);
  v145 = (v143 ^ v144 ^ (v143 << 47)) + (v143 >> 17) - 2 * ((v143 ^ v144 ^ (v143 << 47)) & (v143 >> 17));
  v146 = v141 - ((2 * v141) & 0x5A47EBDAAC1EB792);
  v147 = v146 + 0x2D23F5ED560F5BC9;
  v148 = v146 - 0x5BDA183C59819C5ELL;
  v149 = 0x88FE0E29AF90F827;
  if (v147 < 0x88FE0E29AF90F827)
  {
    v148 = v147;
    v149 = 0;
  }

  if (v148)
  {
    v150 = v147;
  }

  else
  {
    v150 = v149;
  }

  *(&v151 + 1) = v150;
  *&v151 = v147;
  v152 = (v151 >> 1) ^ v147 ^ (v150 << 58) ^ (v150 >> 6);
  *&v151 = __ROR8__(((v129 << (v126 & 0x2B) << (v126 & 0x2B ^ 0x2B)) + (v129 >> 21)) ^ __ROR8__(v140 & ~v121, 21) ^ 0x6D12C2B6EED373A6, 43);
  v153 = v133 & ~v140 ^ v121 ^ v151;
  v154 = v153 ^ 0xE013161F571CC4C5 ^ ((v153 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v153 ^ 0xE013161F571CC4C5));
  v155 = v154 ^ (((v153 ^ 0xE013161F571CC4C5) >> 61) | (v153 << 25));
  v156 = v135 ^ 0x5035F38BF1002A3ALL ^ v151;
  v157 = v156 << 36;
  v158 = (v156 << 36) & 0x78E1346000000000;
  v159 = v156 ^ (v156 >> 19);
  v160 = v159 & 0xD99EEE0927173347 ^ (v156 << 45) & 0xD99EE00000000000 | v159 & 0x266111F6D8E8CCB8 ^ (v156 << 45) & 0x2661000000000000;
  v161 = (((v156 << 45) ^ (0xFFFFE00000000000 * v156) ^ (v160 + v159 - 2 * v160)) + v159) ^ (v156 >> 28);
  v162 = v161 & 0x78E134634F73AA70 ^ v158 | v161 & 0x871ECB9CB08C558FLL ^ v157 & 0x871ECB9000000000;
  v163 = v162 + 0x1DC2DA99C97E7FA6 - 2 * (v162 & 0x1DC2DA99C97E7FAELL ^ v161 & 8);
  a5[65] = ((v163 & 0x19 ^ 0xF) & (v163 & 0xE6 ^ 0x99) | v163 & 0xE0) ^ 0xAF;
  LOBYTE(v162) = *(a36 + ((69 * ((v163 ^ 0x1DC2DA99C97E7FA6uLL) >> (v161 & 8) >> (v161 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  v164 = (((v162 ^ 0x57) + v162 - 2 * (v162 ^ 0x57)) ^ 0xFE) + v162;
  v165 = ((v154 ^ (((v153 ^ 0xE013161F571CC4C5) >> 61) | (v153 << 25))) >> 24) ^ 0x8A;
  a5[54] = (v165 - 2 * (v165 & 0x3F ^ ((v154 ^ (((v153 ^ 0xE013161F571CC4C5) >> 61) | (v153 << 25))) >> 24) & 4) + 59) ^ 0x3B;
  a5[28] = ((BYTE2(v163) ^ 0x7E) + (~(2 * (BYTE2(v163) ^ 0x7E)) | 0x91) + 56) ^ 0x37;
  a5[41] = (((v164 >> 2) | (v164 << 6)) - ((2 * ((v164 >> 2) | (v164 << 6))) & 0x8C) + 70) ^ 0x46;
  v166 = (v163 ^ 0x1DC2DA99C97E7FA6uLL) >> (v113 & 0x20) >> (v113 & 0x20 ^ 0x20u);
  a5[35] = (BYTE1(v154) - ((2 * BYTE1(v154)) & 0xC) + 6) ^ 6;
  a5[21] = (BYTE2(v154) - ((2 * BYTE2(v154)) & 0x7C) + 62) ^ 0x3E;
  a5[58] = (v166 - ((2 * v166) & 0x4C) - 90) ^ 0xA6;
  a5[17] = ((BYTE4(v155) ^ 0x89) + (~(2 * BYTE4(v155)) | 0xB7) - 91) ^ 0xA4;
  a5[6] = (v155 - ((2 * v155) & 0x8A) - 59) ^ 0xC5;
  a5[5] = ((BYTE3(v163) ^ 0xC9) - 2 * ((BYTE3(v163) ^ 0xC9) & 0x53 ^ BYTE3(v163) & 2) - 47) ^ 0xD1;
  a5[47] = ((BYTE5(v163) ^ 0xDA) + ((2 * ((BYTE5(v163) ^ 0xDA | 0x77) ^ BYTE5(v163))) ^ 0xA5) - 8) ^ 0xF7;
  v167 = (v155 ^ 0x3EAE39898A000000) >> (v153 & 0x28) >> (v153 & 0x28 ^ 0x28);
  a5[14] = ((HIBYTE(v163) ^ 0x1D) + ~(2 * ((HIBYTE(v163) ^ 0x1D) & 0x3F ^ HIBYTE(v163) & 2)) + 62) ^ 0x3D;
  a5[48] = ((BYTE6(v163) ^ 0xC2) - 2 * ((BYTE6(v163) ^ 0xC2) & 0x5E ^ BYTE6(v163) & 4) + 90) ^ 0x5A;
  a5[16] = (v167 - ((2 * v167) & 0x4A) - 91) ^ 0xA5;
  LOBYTE(v167) = *(v41 + (BYTE6(v155) ^ 0xF9));
  a5[10] = (BYTE1(v152) - ((2 * BYTE1(v152)) & 0xB0) - 40) ^ 0xD8;
  a5[18] = (BYTE4(v152) - ((2 * BYTE4(v152)) & 0x44) + 34) ^ 0x22;
  a5[25] = (BYTE2(v152) - ((2 * BYTE2(v152)) & 0x30) - 104) ^ 0x98;
  a5[42] = ((HIBYTE(v155) ^ 0x3E) - ((2 * (HIBYTE(v155) ^ 0x3E)) & 0x66) + 51) ^ 0x33;
  a5[12] = (BYTE5(v152) - ((2 * BYTE5(v152)) & 0x33) + 25) ^ 0x19;
  a5[44] = v152;
  a5[23] = (BYTE6(v152) + (~(2 * BYTE6(v152)) | 0x8B) - 69) ^ 0xBA;
  a5[24] = (BYTE3(v152) - ((2 * BYTE3(v152)) & 0xC8) - 28) ^ 0xE4;
  a5[30] = (v167 ^ 0xFA) - 119;
  a5[62] = (HIBYTE(v152) - ((2 * HIBYTE(v152)) & 0xDF) - 17) ^ 0xEF;
  a5[19] = (v145 - ((2 * v145) & 0x9F) + 79) ^ 0x4F;
  LOBYTE(v152) = *(a38 + (BYTE1(v145) ^ 0x27) + 279) ^ BYTE1(v145) ^ 0x2D ^ ((BYTE1(v145) ^ 0x2D) + 72) ^ 0x41;
  a5[8] = (BYTE3(v145) - ((2 * BYTE3(v145)) & 0x22) - 111) ^ 0x91;
  a5[33] = (BYTE2(v145) + (~(2 * BYTE2(v145)) | 0x4B) + 91) ^ 0x5A;
  a5[4] = v152 + 15;
  LODWORD(v166) = *(a37 + (((v145 >> 28) & 0xF0 | (v145 >> 36) & 0xF) ^ 0x5C));
  v168 = v135 ^ __ROR8__(v135 ^ 0x4734313A1F2B2857, 41) ^ ((v135 ^ 0x4734313A1F2B2857) >> 7);
  v169 = v168 ^ ((v135 ^ 0x4734313A1F2B2857) << 57);
  a5[46] = HIBYTE(v145);
  a5[43] = (BYTE6(v145) - ((2 * BYTE6(v145)) & 0x38) - 100) ^ 0x9C;
  a5[38] = (BYTE5(v145) - ((2 * BYTE5(v145)) & 0x77) + 59) ^ 0x3B;
  a5[31] = ((v166 >> 5) | (8 * v166)) ^ 0xC1;
  v170 = *(v41 + ((((((4 * v168) | (v168 >> 6)) ^ 0xA) >> 2) | ((((4 * v168) | (v168 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  a5[55] = ((BYTE4(v168) ^ 0x3A) + (~(2 * (BYTE4(v168) ^ 0x3A)) | 0xBF) - 95) ^ 0xA0;
  a5[34] = ((BYTE3(v168) ^ 0x1F) - ((2 * (BYTE3(v168) ^ 0x1F)) & 0x4E) + 39) ^ 0x27;
  a5[32] = ((BYTE1(v168) ^ 0x28) - ((2 * BYTE1(v168)) & 0xA) - 123) ^ 0x85;
  a5[15] = (v170 ^ 0xFA) - 119;
  a5[7] = (((v169 ^ 0x4734313A1F2B2857uLL) >> (~v67 & 0x10) >> (v67 & 0x10)) + (~(2 * ((v169 ^ 0x4734313A1F2B2857uLL) >> (~v67 & 0x10) >> (v67 & 0x10))) | 0x45) - 34) ^ 0xDD;
  a5[61] = ((BYTE5(v168) ^ 0x31) - 2 * ((BYTE5(v168) ^ 0x31) & 0x57 ^ BYTE5(v168) & 4) + 83) ^ 0x53;
  a5[56] = (*(v41 + (BYTE6(v168) ^ 0x63)) ^ 0xFA) - 119;
  a5[51] = ((HIBYTE(v169) ^ 0x47) - ((2 * (HIBYTE(v169) ^ 0x47)) & 0xBB) + 93) ^ 0x5D;
  *a33 = a35 + 1;
  return sub_10004174C();
}

uint64_t sub_100041794(uint64_t a1)
{
  v5 = 27 * ((v1 - 1364) ^ 0x1AB);
  *v7 = a1;
  *v8 = (v1 - 1364) ^ (v2 + 422) ^ v11;
  v12 = v5 - ((((2 * &v12) | 0x674F1C7E) - &v12 - 866618943) ^ 0xBE0AECD3) * v3 + 940;
  v13 = v10;
  (*(v4 + 8 * (v5 ^ 0x814)))(&v12);
  v13 = v9;
  v12 = v5 + 716 - (&v12 ^ 0x8DAD62EC) * v3 + 224;
  (*(v4 + 8 * ((v5 + 716) ^ 0xD60)))(&v12);
  return v2 ^ 0x39F50818u;
}

uint64_t sub_100041B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char *a16, unsigned int a17)
{
  a16 = &a11;
  a17 = v18 + 2066391179 * ((((2 * &a15) | 0x21F858D8) - &a15 - 284961900) ^ 0xBFDBAE74) + 1202;
  v19 = (*(v17 + 8 * (v18 ^ 0x877)))(&a15);
  return (*(v17 + 8 * (((a15 == ((v18 - 1619777886) & 0x9A002FAD) - 1611341676) * ((v18 + 504) ^ 0x358)) ^ v18)))(v19);
}

uint64_t sub_100041C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, int a22, unsigned int a23, char *a24, unsigned int a25)
{
  if ((a11 - 877688809) >= 0x468CEA91)
  {
    v28 = 1908478089;
  }

  else
  {
    v28 = 1908478090;
  }

  v29 = 1564307779 * (((&a20 | 0x4B3E7E7C) - &a20 + (&a20 & 0xB4C18180)) ^ 0xDC33B26F);
  a20 = a18;
  a25 = v28 - v29;
  a24 = &a19;
  a22 = v26 - v29 - 2013067073;
  a23 = 2125189066 - v29;
  v30 = (*(v27 + 8 * (v26 ^ 0xB08)))(&a20);
  return (*(v27 + 8 * (((a21 == v25) * (((v26 + 87986656) & 0x54B) + 891)) ^ v26)))(v30);
}

uint64_t sub_100041D04@<X0>(int a1@<W8>)
{
  v5 = (a1 + 917200373) & 0xC954A376;
  v6 = (*(v4 + 8 * (v5 ^ 0xA25)))((v2 + (v5 ^ 0x24D) - 351) ^ v1) == 0;
  return (*(v4 + 8 * ((((v6 ^ (v5 - 1)) & 1) * v3) ^ v5)))();
}

uint64_t sub_100041DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v3 + a2 - 16);
  *(a1 + a2 - 32) = *(v3 + a2 - 32);
  *(a1 + a2 - 16) = v5;
  return (*(v4 + 8 * ((((a2 & 0xFFFFFFE0) == 32) * ((4 * (v2 | 0x20)) ^ 0x16B3)) ^ ((v2 | 0x20) - 986))))();
}

uint64_t sub_100041E34@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v6 = v3 - 1;
  STACK[0x4E0] = v6;
  *(a1 + v6) = (a2 ^ v4) * (a2 + 17);
  return (*(v5 + 8 * ((127 * (STACK[0x4E0] != 0)) ^ v2)))();
}

uint64_t sub_100041E7C@<X0>(int a1@<W8>)
{
  v4 = 1785193651 * ((2 * ((v3 - 160) & 0x7C4BD64882D22C18) - (v3 - 160) + 0x3B429B77D2DD3E2) ^ 0x17805F996EF13FC2);
  *(v3 - 124) = -1785193651 * ((2 * ((v3 - 160) & 0x82D22C18) - (v3 - 160) + 2100155362) ^ 0x6EF13FC2);
  *(v3 - 120) = ((a1 + 1036372900) ^ 0x64) + v4;
  *(v3 - 160) = a1 - v4 + 55969900;
  *(v3 - 156) = (a1 + 1036372900) ^ v4;
  *(v3 - 152) = v4 + a1 + 1036372900 + 19;
  *(v3 - 144) = v4 ^ 0xE247BCB7;
  *(v3 - 136) = v1 ^ v4;
  v5 = (*(v2 + 8 * (a1 ^ 0x962)))(v3 - 160);
  return (*(v2 + 8 * *(v3 - 128)))(v5);
}

uint64_t sub_100041FF8@<X0>(uint64_t a1@<X8>)
{
  v4 = (&STACK[0x26C] + a1);
  *v4 = 0xA7A7A7A7A7A7A7A7;
  v4[1] = 0xA7A7A7A7A7A7A7A7;
  return (*(v3 + 8 * ((93 * (((v1 + 1396589413) & 0xACC1BFE8) - 984 == (v2 & 0xFFFFFFFFFFFFFFF0))) ^ v1)))();
}

uint64_t sub_100042058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5) ^ 0xA7;
  return (*(v4 + 8 * ((92 * (v5 == 49 * (v3 ^ 0x80u) - 1862)) ^ v3)))();
}

uint64_t sub_10004209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17)
{
  v20 = 50899313 * ((&a16 - 2 * (&a16 & 0x312861E) + 51545630) ^ 0x173D1B85);
  a17 = v17 - 56 - v20 + 602;
  a16 = 64 - v20;
  v21 = (*(v18 + 8 * ((v17 - 56) ^ 0x8DD)))(&a16);
  return (*(v18 + 8 * (((**(v19 + 8 * ((167 * ((v17 - 56) ^ 0x1BE)) ^ 0x1A6)) == 0) * ((((167 * ((v17 - 56) ^ 0x1BE) - 529709566) & 0x1F92BC69) - 168) ^ 0xA0E)) ^ (167 * ((v17 - 56) ^ 0x1BE)))))(v21);
}

uint64_t sub_1000421D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = 1037613739 * ((314365542 - (v18 | 0x12BCD666) + a12) ^ 0x3C4104E6);
  *(v20 - 136) = v21 ^ 0x68292D70;
  *(v20 - 120) = v21 + (v19 ^ 0x43) - 13;
  *(v20 - 128) = v15;
  (*(v16 + 8 * (v19 ^ 0xB2A)))(v20 - 136);
  *(v20 - 120) = v17;
  *(v20 - 128) = ((v19 ^ 0x43) + 450) ^ (1785193651 * a11);
  *(v20 - 136) = a15;
  (*(v16 + 8 * (v19 ^ 0xB1E)))(v20 - 136);
  *(v20 - 128) = v15;
  *(v20 - 120) = a15;
  *(v20 - 136) = ((v19 ^ 0x43) + 366) ^ (843532609 * a10);
  v22 = (*(v16 + 8 * (v19 ^ 0xA9E)))(v20 - 136);
  return (*(v16 + 8 * (((*(v20 - 132) > 0x23B3030Du) * ((((v19 ^ 0x43) - 517) | 0x609) - 1517)) ^ v19 ^ 0x43)))(v22);
}

void sub_100042318(uint64_t a1)
{
  v1 = 50899313 * (((a1 | 0x43FA28CE) - (a1 & 0x43FA28CE)) ^ 0x57D5B555);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000423D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v30 = (a20 + 24 * v25);
  *v30 = v29;
  v30[1] = a5;
  *&v26[6 * v25 + 4] = v28;
  v30[4] = a22;
  *v26 = v24 + 7 * (v23 ^ 0x33D) - 412;
  return (*(v27 + 8 * (((v23 ^ 0x419) * ((v22 + a6) < 0x80000003)) ^ v23)))();
}

void sub_10004244C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v27 = ((((v26 - 144) | 0xD992D79A) - (v26 - 144) + ((v26 - 144) & 0x266D2860)) ^ 0x42D52110) * v23;
  *(v26 - 120) = (v22 + 934) ^ v27;
  *(v26 - 116) = v24 - v27 + 22675656 + ((v22 + 869) | 0x220);
  *(v26 - 128) = a1;
  *(v26 - 144) = &a22;
  (*(v25 + 8 * (v22 ^ 0x83E)))(v26 - 144);
  JUMPOUT(0x10003FE74);
}

void sub_1000426F0(uint64_t a1)
{
  v1 = *(a1 + 32) + 1785193651 * ((2 * (a1 & 0x3B308A28) - a1 + 1154446807) ^ 0x571399F7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000427C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33)
{
  v36 = 2066391179 * ((v35 - 2008130844 - 2 * ((v35 - 120) & 0x884E5B5C)) ^ 0x2769D944);
  *(v35 - 120) = v34 - v36 + 304;
  *(v35 - 116) = a12 - v36 + 9821169;
  *(v35 - 112) = &a24;
  v37 = (*(v33 + 8 * (v34 ^ 0x961)))(v35 - 120);
  v38 = a33 & (761 * (v34 ^ 0x46u) - 1459);
  *(&a24 + v38) = 39;
  return (*(v33 + 8 * ((178 * (v38 > 0x37)) | v34)))(v37);
}

uint64_t sub_1000428C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *(*(a13 + 96) + 504) = v15 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v18 = 1785193651 * ((v17 - 160) ^ 0x13DCEC20);
  *(v17 - 144) = v18 ^ 0x79AE6FE9;
  *(v17 - 156) = v18 - 562358852;
  STACK[0x2D8] = &STACK[0x26C];
  v19 = (*(v16 + 19232))(v17 - 160);
  return (*(v16 + 8 * ((2602 * (a15 - 1521934428 + (STACK[0x2B0] & 0x3F) < 0xFFFFFFC0)) ^ 0x211u)))(v19);
}

uint64_t sub_100042A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (a10 + v12);
  *(v15 - 1) = v14;
  *v15 = v14;
  return (*(v13 + 8 * ((((((v11 - 10) ^ 0xFFFFFFFFFFFFF913) & v10) != 16) * ((v11 - 10) ^ 0x6ED)) ^ (v11 - 10))))();
}

void sub_100042AC4(int a1, int a2)
{
  v3 = (((a1 ^ 0xE4CB9DE0) + 456417824) ^ ((a1 ^ 0x7719A388) - 1998168968) ^ ((a1 ^ 0x9F1A871C) + 1625651428)) + 1946108852 + (((v2 ^ 0x9A5FDD65) + 1704993435) ^ ((v2 ^ 0x17946688) - 395601544) ^ ((v2 ^ a2 ^ 0x810307A1) + 2130509159));
  v4 = (v3 ^ 0x15C02E33) & (2 * (v3 & 0xA5922F34)) ^ v3 & 0xA5922F34;
  v5 = ((2 * (v3 ^ 0x5DC4207B)) ^ 0xF0AC1E9E) & (v3 ^ 0x5DC4207B) ^ (2 * (v3 ^ 0x5DC4207B)) & 0xF8560F4E;
  v6 = v5 ^ 0x8520141;
  v7 = (v5 ^ 0xB0000C00) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xE1583D3C) & v6 ^ (4 * v6) & 0xF8560F4C;
  v9 = (v8 ^ 0xE0500D00) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x18060243)) ^ 0x8560F4F0) & (v8 ^ 0x18060243) ^ (16 * (v8 ^ 0x18060243)) & 0xF8560F40;
  v11 = v9 ^ 0xF8560F4F ^ (v10 ^ 0x80400400) & (v9 << 8);
  LODWORD(STACK[0x284]) = v3 ^ (2 * ((v11 << 16) & 0x78560000 ^ v11 ^ ((v11 << 16) ^ 0xF4F0000) & (((v10 ^ 0x78160B0F) << 8) & 0xF8560000 ^ 0x28500000 ^ (((v10 ^ 0x78160B0F) << 8) ^ 0x560F0000) & (v10 ^ 0x78160B0F)))) ^ 0x497A88DE;
  JUMPOUT(0x10005A9D4);
}

uint64_t sub_100042CCC@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((v5 != 0) | (4 * (v5 != 0)) | (v1 - 102))))();
}

void sub_100042D08(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X2, X17 }
}

void sub_100042E48(int a1@<W8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v9 = ((((2 * &a3) | 0xBBCE4900) - &a3 + 572054400) ^ 0xCE509FF) * a1;
  a3 = v9 + 799454522;
  a6 = (v7 + 512) ^ v9;
  a7 = 486628550 - v9;
  a5 = 0;
  (*(v8 + 8 * (v7 ^ 0x86E)))(&a3);
  JUMPOUT(0x100042EC0);
}

uint64_t sub_100042F00@<X0>(unsigned int a1@<W8>)
{
  v4 = v2 - 649;
  v5 = ((v2 + 2104656814) & 0x828D7AF7) + v1 + 1512675745;
  v6 = a1 - 1059350888 < v5;
  if (a1 > 0x3F246967 != v5 < 0xC0DB9698)
  {
    v6 = v5 < 0xC0DB9698;
  }

  return (*(v3 + 8 * ((v6 * (v4 ^ 0x246)) ^ v4)))(2395, 1647955900);
}

uint64_t sub_100042F10@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v7 = (v6 + 2033075289) & 0x86D1B7B7;
  v8 = a1 + v7 - 1062;
  *(*(a2 + 8) + 4 * (a1 + v3)) = (v6 - 1699 + v4) ^ v5;
  *(a2 + 4) = v8;
  v9 = v8 + v3;
  if (v8 + v3 < 0)
  {
    v9 = -v9;
  }

  return (*(v2 + 8 * ((((v3 + (v7 ^ 0x2C) + (v9 ^ 0x5D2F6FBA) + ((2 * v9) & 0xBA5EDF74) - 69209621) > 0) * (6 * (v7 ^ 0x4E6) + 1954)) ^ v7 ^ 0x2C)))();
}

uint64_t sub_100042FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, int a15, unsigned int a16, char *a17, unsigned int a18)
{
  v21 = 1564307779 * ((&a13 & 0x90CE2B9F | ~(&a13 | 0x90CE2B9F)) ^ 0xF83C1873);
  a15 = v20 - v21 - 2013068624;
  a16 = -1467615447 - v21;
  a17 = &a12;
  a13 = a11;
  a18 = 1908478090 - v21;
  v22 = (*(v19 + 8 * (v20 ^ 0x139)))(&a13);
  return (*(v19 + 8 * ((77 * (a14 == ((v20 - 1461) ^ (v18 + 607)))) ^ v20)))(v22);
}

uint64_t sub_1000430F8@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W3>, int a4@<W4>, unsigned int a5@<W8>)
{
  v11 = (v9 + 4 * v6);
  v12 = v5 & 0x80000000;
  v13 = v6 + 1;
  v14 = *(v9 + 4 * v13);
  v15 = v11[397] ^ ((v14 & 0x7FFFFFFE | v12) >> 1);
  *v11 = (v15 + a2 - (a3 & (2 * v15))) ^ *(v8 + 4 * (v14 & ((a5 + a1) & a4 ^ (v10 + 1))));
  return (*(v7 + 8 * ((15 * (v13 == 227)) | a5)))();
}

uint64_t sub_100043164@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a1 - 1;
  *(a3 + v7) ^= *(v5 + (v7 & 0xF)) ^ *(v6 + (v7 & 0xF)) ^ (115 * (v7 & 0xF)) ^ *((v7 & 0xF) + v4 + 1);
  return (*(v3 + 8 * (((v7 == 0) | (32 * (v7 == 0))) ^ (a2 - 174))))();
}

uint64_t sub_1000432A8()
{
  LODWORD(STACK[0x3F8]) = v0;
  STACK[0x3A0] = *(v2 + 8 * v1);
  return sub_1000432B8();
}

uint64_t sub_1000432B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  STACK[0x578] = v7;
  STACK[0x580] = v6;
  v8 = STACK[0x520];
  STACK[0x588] = &STACK[0x590] + STACK[0x520];
  STACK[0x520] = v8 + 320;
  v9 = *(v7 + 72);
  LODWORD(STACK[0x40C]) = v9;
  LODWORD(STACK[0x48C]) = *(v7 + 76);
  v10 = *(v7 + 80);
  LODWORD(STACK[0x4CC]) = v10;
  v11 = *(v7 + 84);
  LODWORD(STACK[0x514]) = v11;
  v12 = *(v7 + 96);
  if (v12 == 2)
  {
    LODWORD(STACK[0x424]) = *(v7 + 88);
    return sub_10002D7F4(a1, a2, v11, 3322565569, a5, a6);
  }

  else if (v12 == 1)
  {
    return sub_10004332C(a1, 236, v11, v10, a5, 956187110);
  }

  else
  {
    return sub_100061660(v9);
  }
}

uint64_t sub_10004332C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = *(v7 + (v8 - 1079676142 + v9 + 855 - 2303)) ^ 0xA7;
  v13 = ((*(v7 + (v8 - 1079676140)) ^ 0xA7) << 16) | ((*(v7 + (v8 - 1079676139)) ^ 0xA7) << 24) | v12 | ((*(v7 + (v8 - 1079676141)) ^ 0xA7) << 8);
  v14 = v13 + v11 - 2 * (v13 & (v11 + 7) ^ v12 & 7);
  v15 = (v8 ^ 0x3FB463C2) & (2 * (v8 & 0x3FA57312)) ^ v8 & 0x3FA57312;
  v16 = ((2 * (v8 ^ a6)) ^ 0xEB665E8) & (v8 ^ a6) ^ (2 * (v8 ^ a6)) & 0x875B32F4;
  v17 = v16 ^ 0x81491214;
  v18 = (v16 ^ 0x61200C0) & (4 * v15) ^ v15;
  v19 = ((4 * v17) ^ 0x1D6CCBD0) & v17 ^ (4 * v17) & 0x875B32F4;
  v20 = (v19 ^ 0x54802C4) & (16 * v18) ^ v18;
  v21 = ((16 * (v19 ^ 0x82133024)) ^ 0x75B32F40) & (v19 ^ 0x82133024) ^ (16 * (v19 ^ 0x82133024)) & 0x875B32F0;
  v22 = v20 ^ 0x875B32F4 ^ (v21 ^ 0x5132200) & (v20 << 8);
  *(v6 + 4 * (((v8 ^ (2 * ((v22 << 16) & 0x75B0000 ^ v22 ^ ((v22 << 16) ^ 0x32F40000) & (((v21 ^ 0x824810B4) << 8) & 0x75B0000 ^ 0x4490000 ^ (((v21 ^ 0x824810B4) << 8) ^ 0x5B320000) & (v21 ^ 0x824810B4))))) >> 2) ^ 0x2D6CC5BE)) = v14;
  return (*(v10 + 8 * ((((v8 - 1079676138) > 0x3F) * a2) ^ (v9 - 809))))(1079676142);
}

uint64_t sub_100043548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x210] = 0;
  LODWORD(STACK[0x2B4]) = 0;
  STACK[0x298] = 0;
  v8 = v3 ^ 0x554u;
  STACK[0x200] = (2 * (((&STACK[0x49C] ^ 0x17ED634F3FFEBEFDLL) + ((2 * &STACK[0x49C]) & 0x2FDAC69E7FFD7DF8) - 0x17ED634F3FFEC076 + v8) % 0x25)) & 0x5E;
  STACK[0x270] = v4 | 0x748BF551810B5F78;
  STACK[0x2F8] = v4 | 0xF02A7473FDCD3B16;
  STACK[0x2F0] = 1361651671 * (((~v4 | 0xD317594E3965C452) + (v4 | 0x2CE8A6B1C69A3BADLL)) ^ 0xFF45D58815B8CB20);
  LODWORD(STACK[0x2D4]) = v5 ^ 0xFFFFF83A;
  LODWORD(STACK[0x2D0]) = 269 * (v5 ^ 0x5AD);
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  *&STACK[0x250] = vdupq_n_s32(0xC7D3EC62);
  *&STACK[0x260] = vnegq_f32(v9);
  *&STACK[0x240] = vdupq_n_s32(0xE3E9F631);
  v10 = 1361651671 * ((-2 - ((~v4 | 0x1A160EA3AE82EA21) + (v4 | 0xE5E9F15C517D15DELL))) ^ 0xC9BB7D9A7DA01AADLL);
  STACK[0x238] = v10;
  STACK[0x230] = 5119 - v10;
  LODWORD(STACK[0x304]) = v5;
  STACK[0x520] += 2432;
  LODWORD(STACK[0x4AC]) = v7;
  v11 = *(&off_100085FF0 + (v8 & 0x441226B0));
  v12 = *(v11 - 12);
  v11 -= 12;
  v13 = *(v6 + 8 * ((893 * (v12 != (v3 ^ 0x42D))) ^ v8));
  STACK[0x288] = v11 + 36;
  STACK[0x280] = v11 + 20;
  STACK[0x278] = v11 + 4;
  STACK[0x218] = *(&off_100085FF0 + v8 - 225);
  STACK[0x2A0] = v11;
  return v13(a1, a2, a3, 3322565569);
}

uint64_t sub_100043A58@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X7>, uint64_t a4@<X8>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>)
{
  v11 = v8 + 32;
  v12 = (v11 ^ a1 ^ (v7 - 137)) + v6;
  v13 = *(a3 + v12 - 15);
  v14 = *(a3 + v12 - 31);
  v15 = a4 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a5)), a6);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a5)), a6);
  return (*(v10 + 8 * (((v9 == v11) * a2) ^ v7)))();
}

uint64_t sub_100043A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = 4 * a5 - 0x1643D96C4;
  v11 = (((*(*(v5 + 8) + v10) ^ 0xF2235EE2) + 232562974) ^ ((*(*(v5 + 8) + v10) ^ 0x7EBA3162) - 2126131554) ^ (((a3 - 1265) ^ 0x14DA1712 ^ *(*(v5 + 8) + v10)) - 349836395)) + v9;
  v12 = (((*(*(v6 + 8) + v10) ^ 0x8F50C1A1) + 1890532959) ^ ((*(*(v6 + 8) + v10) ^ 0x930DFD83) + 1827799677) ^ ((*(*(v6 + 8) + v10) ^ 0x841E47C9) + 2078390327)) + v9;
  v13 = v11 < v8;
  v14 = v11 > v12;
  if (v13 != v12 < v8)
  {
    v14 = v13;
  }

  return (*(v7 + 8 * ((199 * v14) ^ a3)))();
}

uint64_t sub_100043BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 ^ 0xA7AA73C7) + *(a1 + 16);
  v4 = *(a1 + 12) - 689020921;
  v5 = v3 < (v2 ^ 0xFFF5E7FA);
  v6 = v3 > v4;
  if (v5 != v4 < 0xFFF5E76B)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((957 * !v6) ^ v2 ^ 0x522)))();
}

void sub_100043C98(uint64_t a1)
{
  v1 = 1388665877 * ((2 * ((a1 ^ 0x659717BC) & 0x71C3AA5B) - (a1 ^ 0x659717BC) - 1908648540) ^ 0x660620F4);
  v2 = *(a1 + 40) + v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 56);
  v5 = 1388665877 * (((&v9 | 0xE05662D3) + (~&v9 | 0x1FA99D2C)) ^ 0x6DFB003E);
  v6 = *(a1 + 24) + v1 - v5;
  v7 = 537408115 * (*(a1 + 16) ^ v1) - 1155415456;
  v10 = *(a1 + 48);
  v11 = v4;
  v9 = v7 ^ v5;
  v13 = v3;
  v16 = v4;
  v15 = v5 ^ (v2 - 1776823495);
  v12 = v6 + 215181605;
  v8 = *(&off_100085FF0 + v2 - 182) - 8;
  (*&v8[8 * (v2 ^ 0x982)])(&v9);
  __asm { BRAA            X8, X17 }
}

void sub_100043E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47)
{
  LODWORD(STACK[0x2A8]) = v47 ^ 0x3A42C7EF;
  LODWORD(STACK[0x228]) = a47 ^ 0x305632;
  JUMPOUT(0x10003E17CLL);
}

uint64_t sub_100043F2C@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 1;
  *(a1 + v7) = v1 + *(v5 + v7) + (v3 | ~(2 * *(v5 + v7))) - 115;
  return (*(v6 + 8 * (((v7 != 0) * v4) ^ v1)))();
}

uint64_t sub_100043F9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (((v5 + 145) ^ (v2 + 1288)) + v3 >= 0x7FFFFFFF)
  {
    v6 = -1306604704 - v4;
  }

  else
  {
    v6 = v4;
  }

  *(a2 + 4) = v6;
  *(result + 8) = 913703499;
  return result;
}

uint64_t sub_100043FEC(uint64_t a1, uint64_t a2)
{
  *(*(v4 + 96) + 1544) = *(a2 + 8);
  *(*(v4 + 96) + 1536) = *(a2 + 4);
  return v2 ^ 0x39F50818u;
}

void sub_100044050(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) + 636458510;
  v3 = *(*(a1 + 16) + 4) + 636458510;
  v4 = (v2 < -16843842) ^ (v3 < -16843842);
  v5 = v2 > v3;
  if (v4)
  {
    v6 = v2 < -16843842;
  }

  else
  {
    v6 = v5;
  }

  v1 = *a1 ^ (843532609 * ((2 * (a1 & 0x7E803F11) - a1 + 25149678) ^ 0x5D32946B));
  __asm { BRAA            X14, X17 }
}

uint64_t sub_10004417C()
{
  v0.n128_u64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v0.n128_u64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v1.n128_u64[0] = 0xA8A8A8A8A8A8A8A8;
  v1.n128_u64[1] = 0xA8A8A8A8A8A8A8A8;
  return sub_1000441A0(v0, v1);
}

uint64_t sub_1000441A0@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = ~v6 + v3;
  v12 = *(v9 + v11 - 15);
  v13 = *(v9 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = vaddq_s8(vaddq_s8(v12, a3), vmvnq_s8(vandq_s8(vaddq_s8(v12, v12), a2)));
  *(v14 - 31) = vaddq_s8(vaddq_s8(v13, a3), vmvnq_s8(vandq_s8(vaddq_s8(v13, v13), a2)));
  return (*(v10 + 8 * (((v7 + v6 == v4) * v8) ^ (v5 + 840))))();
}

uint64_t sub_10004420C()
{
  v5 = *(v2 + 4 * (v3 - 1));
  *(v2 + 4 * v3) = ((1566083941 * (v5 ^ (v5 >> 30))) ^ *(v2 + 4 * v3)) - v3;
  v6 = 1361651671 * ((0xBFD7EE7672F55D51 - ((v4 - 152) | 0xBFD7EE7672F55D51) + ((v4 - 152) | 0x402811898D0AA2AELL)) ^ 0x938562B05E285222);
  *(v4 - 152) = -1361651671 * ((1928682833 - ((v4 - 152) | 0x72F55D51) + ((v4 - 152) | 0x8D0AA2AE)) ^ 0x5E285222);
  *(v4 - 148) = ((v0 - 1200733348) | 0x5A) + v6;
  STACK[0x5C8] = v3 + 1 - v6;
  v7 = v0 - 1200733348 - v6;
  *(v4 - 112) = 1591077704 - v6 + v0;
  STACK[0x5D8] = 623 - v6;
  *(v4 - 128) = v7 - 7;
  *(v4 - 124) = v7;
  v8 = (*(v1 + 8 * (v0 ^ 0xE96EA60E)))(v4 - 152);
  return (*(v1 + 8 * *(v4 - 144)))(v8);
}

uint64_t sub_100044314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 24) = v3;
  v4 = *(a1 + 4) - ((2 * *(a1 + 4) + 1251098570) & 0x8163962E) == 1521934363;
  return (*(v2 + 8 * ((v4 | (8 * v4)) ^ 0x737u)))(0);
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100044450(uint64_t a1, uint64_t a2)
{
  v7 = (a2 + v4);
  *v7 = v6;
  v7[1] = v6;
  return (*(v5 + 8 * ((470 * (((v2 + 1484387592) & 0xA7860CF9) - 1257 == (v3 & 0x30))) ^ v2)))();
}

uint64_t sub_100044514@<X0>(int a1@<W0>, int a2@<W3>, unsigned int a3@<W8>)
{
  v11 = (*(v8 + 4 * v3) ^ a3) + HIDWORD(v9) + (v5 >> (((2 * v10) ^ 0x10u) - 120));
  *(v8 + 4 * a2) = v11 + a3 - (a1 & (2 * v11));
  *(v8 + 4 * v3) = HIDWORD(v11) + a3 - 2 * HIDWORD(v11);
  return (*(v7 + 8 * (v10 ^ (8 * (v6 + 1 == v4)))))();
}

uint64_t sub_1000445B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, uint64_t a11, int a12)
{
  v17 = *(a1 + 28) + v15 + *(v12 + 16);
  v18 = 2066391179 * ((((2 * &a9) | 0x8721B4BA) - &a9 + 1013917091) ^ 0x6CB75845);
  a12 = v16 - v18 + 1419;
  a11 = v12;
  a9 = v18 + 902618138;
  a10 = (v17 - 1900434123) ^ v18;
  v19 = (*(v14 + 8 * (v16 ^ 0xA4A)))(&a9);
  return (*(v14 + 8 * ((1068 * (*(v12 + 24) == v13 + (v16 ^ 0x42D) - 1820)) ^ v16)))(v19);
}

void sub_100044680(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = v5 - 319;
  a3 = a1;
  a4 = (v5 - 679) ^ (1785193651 * ((((2 * &a3) | 0xCECB16D2) - &a3 + 412775575) ^ 0xF4B96749));
  (*(v4 + 8 * ((v5 - 582) ^ 0xD78)))(&a3);
  *(v6 + 4) = (v7 ^ 0xB21ECE55) - *(v6 + 4);
  JUMPOUT(0x100034EF4);
}

uint64_t sub_100044708@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v3 = a1;
  *v2 = a2;
  return sub_100048D44();
}

void sub_100044710(uint64_t a1, uint64_t a2)
{
  v3 = *(&off_100085FF0 + ((-109 * (dword_100089AE0 ^ 0x95 ^ qword_100089928)) ^ byte_100072050[byte_10006E900[(-109 * (dword_100089AE0 ^ 0x95 ^ qword_100089928))] ^ 0xE9]) - 22);
  v4 = -109 * ((qword_100089928 - *v3) ^ 0x95);
  v5 = *(&off_100085FF0 + (byte_10007205C[(byte_10006E908[v4 - 8] ^ 0x11) - 12] ^ v4) - 81);
  v6 = (*(v5 - 4) + *v3) ^ &v8;
  *v3 = 665663891 * (v6 + 0x12CF57B8DBD63C6BLL);
  *(v5 - 4) = 665663891 * (v6 ^ 0xED30A8472429C395);
  **(a1 + 96) = *(a2 + 16);
  LODWORD(v6) = 1785193651 * (v10 ^ 0x13DCEC20);
  v11 = v6 - 562358852;
  v12 = v9;
  v13 = v6 ^ 0x79AE6FE9;
  LODWORD(v5) = 665663891 * ((*(v5 - 4) + *v3) ^ 0x2429C395);
  v7 = *(&off_100085FF0 + ((-109 * ((qword_100089928 - dword_100089AE0) ^ 0x95)) ^ byte_100072050[byte_10006E900[(-109 * ((qword_100089928 - dword_100089AE0) ^ 0x95))] ^ 0xAF]) - 192) - 8;
  (*&v7[8 * (byte_100072258[(byte_10006EA04[v5 - 4] ^ 0xA3) - 8] ^ v5) + 18888])(v10);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000449A4()
{
  v4 = ((v3 + 1363807067) & 0xAEB5F66F ^ 0x704E8FBF) + v1;
  v5 = v4 < 0xDD4058E6;
  v6 = v2 - 582985498 < v4;
  if (v2 > ((v3 + 1363807067) ^ 0x514A0C77u) + 582984567 != v5)
  {
    v6 = v5;
  }

  return (*(v0 + 8 * ((241 * v6) ^ v3)))();
}

uint64_t sub_100044AAC(uint64_t a1, int a2)
{
  v5 = v3 - 1731568089 + ((a2 - 1759) | 0x80);
  v6 = v5 < 0xF115D2CD;
  v7 = v5 > (v4 ^ 0xC60AF7E7) - 250228019;
  if ((v4 ^ 0xC60AF7E7) > 0xEEA2D32 != v6)
  {
    v7 = v6;
  }

  return (*(v2 + 8 * (v7 ^ a2 ^ 1)))();
}

uint64_t sub_100044B80(uint64_t a1)
{
  v5 = *(v3 + 336);
  v6 = (*(a1 + 16) ^ v1) + 1179818492;
  v7 = (((v4 ^ 0x740) + 355) ^ 0x8D42D03B) + v5 > v6;
  if (v5 > 0x72BD2981 != v6 < 0x8D42D67E)
  {
    v7 = v5 > 0x72BD2981;
  }

  return (*(v2 + 8 * ((v7 | (8 * v7)) ^ v4)))();
}

void sub_100044CA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 16) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x100020A10);
}

uint64_t sub_100044CB4(uint64_t a1)
{
  v8 = *(v6 - 228 + v1 + 72);
  v9 = (((v3 ^ (v7 - 175)) - 778565002) & (2 * v1)) + (v1 ^ 0x7C7454AA) + v2;
  *(a1 + v9) = (HIBYTE(v8) ^ 0xC) + (~(2 * (HIBYTE(v8) ^ 0xC)) | 0xB1) - 88;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0xC8) - ((v8 >> 15) & 0x4E) - 89;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 0xB9) - ((2 * (BYTE1(v8) ^ 0xB9)) & 0x4E) - 89;
  *(a1 + v9 + 3) = v8 ^ 0xD3;
  return (*(v5 + 8 * (((v1 + 4 < *(v6 - 136)) * v4) ^ v3)))();
}

uint64_t sub_100044FC4(uint64_t a1, unint64_t a2)
{
  v9 = (v5 - 1) & 0xF;
  v10 = -v7 - v5;
  v12 = a2 > 0xF && (v10 + 1 + v2 + v9) > 0xF && v10 + 1 + v4 + v9 >= ((v6 - 556) ^ 0x1E8uLL);
  v13 = v10 + v3 + v9 + ((v6 - 968776998) & 0x39BE5BC9 ^ 0x2C9);
  v15 = v12 && v13 > 0xF;
  return (*(v8 + 8 * ((124 * v15) ^ v6)))();
}

uint64_t sub_100045054@<X0>(int a1@<W3>, int a2@<W8>)
{
  if ((a2 - 1964545697) <= 0x18 && ((1 << (a2 + 95)) & 0x1000521) != 0)
  {
    JUMPOUT(0x1000450C4);
  }

  return (*(v3 + 8 * ((31 * ((*(v4 + 48 * v5 + 40) & 8) != a1 + v2 - 97)) ^ (a1 + v2))))(4294925278);
}

void sub_100045144(uint64_t a1)
{
  if (*(*(a1 + 16) + 4) - 1494181296 >= 0)
  {
    v2 = *(*(a1 + 16) + 4) - 1494181296;
  }

  else
  {
    v2 = 1494181296 - *(*(a1 + 16) + 4);
  }

  v1 = *a1 + 50899313 * ((((2 * a1) | 0xDC007AA6) - a1 + 301974189) ^ 0xFA2FA0C8);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1000452FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = (v21 ^ 0x2BB2E2AD) & (2 * (v21 & 0xA3A4C28C)) ^ v21 & 0xA3A4C28C;
  v24 = ((2 * (v19 ^ v21 ^ 0x2EFAE36A)) ^ 0x1ABC4A72) & (v19 ^ v21 ^ 0x2EFAE36A) ^ (2 * (v19 ^ v21 ^ 0x2EFAE36A)) & 0x8D5E2538;
  v25 = v24 ^ 0x85422509;
  v26 = (v24 ^ 0x8140030) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x357894E4) & v25 ^ (4 * v25) & 0x8D5E2538;
  v28 = (v27 ^ 0x5580420) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x88062119)) ^ 0xD5E25390) & (v27 ^ 0x88062119) ^ (16 * (v27 ^ 0x88062119)) & 0x8D5E2530;
  v30 = v28 ^ 0x8D5E2539 ^ (v29 ^ 0x85420100) & (v28 << 8);
  HIDWORD(a17) = v21 ^ (2 * ((v30 << 16) & 0xD5E0000 ^ v30 ^ ((v30 << 16) ^ 0x25390000) & (((v29 ^ 0x81C2429) << 8) & 0xD5E0000 ^ 0x15A0000 ^ (((v29 ^ 0x81C2429) << 8) ^ 0x5E250000) & (v29 ^ 0x81C2429)))) ^ 0x59;
  return (*(v20 + 8 * ((83 * ((STACK[0x270] & 0x3F) < 0x3C)) ^ (v22 + 1151))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, *(v20 + 8 * a9));
}

uint64_t sub_100045610@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, int8x16_t a8@<Q0>, int8x16_t a9@<Q1>, int32x4_t a10@<Q2>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v58 = *(v31 + 8 * a7);
  v34 = LODWORD(STACK[0x2B4]);
  v35 = LODWORD(STACK[0x2B8]);
  v36 = LODWORD(STACK[0x2BC]);
  v37 = LOBYTE(STACK[0x2CC]);
  if (v37 == 2)
  {
    v59 = vld4q_s8(v28);
    HIDWORD(a18) = STACK[0x2C4];
    v49 = veorq_s8(v59.val[1], a8);
    _Q21 = vmovl_high_u8(v49);
    _Q20 = vmovl_u8(*v49.i8);
    v52 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm
    {
      SHLL2           V20.4S, V20.8H, #0x10
      SHLL2           V21.4S, V21.8H, #0x10
    }

    v53 = vmovl_u8(*&veorq_s8(v59.val[2], a8)).u64[0];
    v59.val[2] = vmovl_u16(*&vmovl_u8(*&veorq_s8(v59.val[3], a8)));
    v54 = vorrq_s8(vorrq_s8(vorrq_s8(v52, vshll_n_u16(v53, 8uLL)), vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v59.val[0], a8))), 0x18uLL)), v59.val[2]);
    v59.val[2] = veorq_s8(vandq_s8(v54, a9), (*&v59.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    *v30 = vaddq_s32(vsubq_s32(v54, vaddq_s32(v59.val[2], v59.val[2])), a10).u32[0];
    v55 = &v30[v32 + 1196461600];
    *v55 = v33 ^ __ROR4__(*(v55 - 8) ^ *(v55 - 3) ^ *(v55 - 14) ^ *(v55 - 16), 31);
    v56 = *(v31 + 8 * ((15 * (v29 + 431 * ((a3 + a2 + 1618) ^ 0x6B7u) == 1196463261)) ^ (a3 + a2 + 1618)));
    return v56(v34, a1, v36, a22, 1196461601, v56, a5, v35, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v58, a22, a23, a24, a25, a26, a27, a28);
  }

  else
  {
    if (v37 == 1)
    {
      v60 = vld4q_s8(v28);
      v38 = vmovl_u16(*&vmovl_u8(*&veorq_s8(v60.val[0], a8)));
      v39 = veorq_s8(v60.val[2], a8);
      _Q25 = vmovl_u8(*v39.i8);
      _Q24 = vmovl_high_u8(v39);
      __asm
      {
        SHLL2           V26.4S, V24.8H, #0x10
        SHLL2           V27.4S, V25.8H, #0x10
      }

      v60.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_u16(*&vmovl_u8(*&veorq_s8(v60.val[3], a8))), 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*&vmovl_u8(*&veorq_s8(v60.val[1], a8)), 8uLL), v38));
      v48 = veorq_s8(vandq_s8(v60.val[2], vdupq_n_s32(0x39F5081Fu)), (*&v38 & __PAIR128__(0xFFFFFF07FFFFFF07, 0xFFFFFF07FFFFFF07)));
      *v30 = vaddq_s32(vsubq_s32(v60.val[2], vaddq_s32(v48, v48)), a10).u32[0];
      JUMPOUT(0x1000457B0);
    }

    return sub_100045DFC(v34, a1, v36, a2, a3, a4, a5, a6, a11, a12, a13);
  }
}

uint64_t sub_100045DFC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void))
{
  v18 = (((a1 ^ 0xC84B1E78) + 934601096) ^ ((a1 ^ 0xA8E18BB0) + 1461613648) ^ ((a1 ^ 0x6C622CBC) - 1818373308)) + (((v16 ^ 0x136643AE) - 325469102) ^ ((v16 ^ 0xD947B3AA) + 649612374) ^ ((v16 ^ 0xC6E94970) + 957789840)) + 1855631269;
  v19 = (v18 ^ 0x8AF6933B) & (2 * (v18 & 0xAAF6C343)) ^ v18 & 0xAAF6C343;
  v20 = ((2 * (v18 ^ 0x9A1A973D)) ^ 0x61D8A8FC) & (v18 ^ 0x9A1A973D) ^ (2 * (v18 ^ 0x9A1A973D)) & a2;
  v21 = v20 ^ 0x10245402;
  v22 = (v20 ^ 0x20C8001C) & (4 * v19) ^ v19;
  v23 = ((4 * v21) ^ 0xC3B151F8) & v21 ^ (4 * v21) & (a2 - 2);
  v24 = (v23 ^ 0xA05070) & (16 * v22) ^ v22;
  v25 = ((16 * (v23 ^ 0x304C0406)) ^ 0xEC547E0) & (v23 ^ 0x304C0406) ^ (16 * (v23 ^ 0x304C0406)) & (a2 - 14);
  v26 = v24 ^ a2 ^ (v25 ^ 0xC44400) & (v24 << 8);
  v27 = (((v17 ^ 0xCE8BAD98) + 829706856) ^ ((v17 ^ 0x2FA373D3) - 799241171) ^ ((v17 ^ 0xEDE0673F) + 304060609)) + (((v15 ^ 0x10BD1B17) - 280828695) ^ ((v15 ^ 0x42534A4C) - 1112754764) ^ ((v15 ^ 0x5E26E82F) - 1579608111)) - 1768234790;
  LODWORD(STACK[0x2B4]) = v18 ^ (2 * ((v26 << 16) & 0x30EC0000 ^ v26 ^ ((v26 << 16) ^ 0x547E0000) & (((v25 ^ 0x3028101E) << 8) & 0x30EC0000 ^ 0x10A80000 ^ (((v25 ^ 0x3028101E) << 8) ^ 0x6C540000) & (v25 ^ 0x3028101E)))) ^ 0xE73ED2CB;
  LODWORD(STACK[0x2B8]) = v27 ^ ((v27 ^ 0xF5FDDD54) + 1997229914) ^ ((v27 ^ 0xAFD2B3A0) + 757342638) ^ ((v27 ^ 0xF8D9FCB1) + 2049928893) ^ ((v27 ^ 0xDFFFFFB7) + 1560899003) ^ 0x71C1D486;
  v28 = (((LODWORD(STACK[0x2BC]) ^ 0x6C809E4B) - 1820368459) ^ ((LODWORD(STACK[0x2BC]) ^ 0xDE65B6C0) + 563759424) ^ ((LODWORD(STACK[0x2BC]) ^ 0xBE2D91FF) + 1104309761)) + (((a3 ^ 0xCE091248) + 838266296) ^ ((a3 ^ 0x55A9739E) - 1437168542) ^ ((a3 ^ 0x9768D8A2) + 1754736478));
  v29 = (((a4 ^ 0x4EB845CD) - 1320699341) ^ ((a4 ^ 0xBC4E1F9) - 197452281) ^ ((a4 ^ 0x49B41D40) - 1236540736)) + (((LODWORD(STACK[0x2C0]) ^ 0x74174A62) - 1947683426) ^ ((LODWORD(STACK[0x2C0]) ^ 0xE7ED9404) + 403860476) ^ ((LODWORD(STACK[0x2C0]) ^ 0x9F326712) + 1624086766)) + 526127288;
  LODWORD(STACK[0x2BC]) = (-428962536 - v28) ^ (v28 + 1986535245) ^ (((v28 + 1986535245) ^ 0x2EC08649) - 1914055212) ^ (((v28 + 1986535245) ^ 0x3975983C) - 1705194585) ^ (((v28 + 1986535245) ^ 0xB49C4DEF) + 397745782) ^ 0x501E1511;
  LODWORD(STACK[0x2C0]) = v29 ^ ((v29 ^ 0xA47403E9) + 1581343175) ^ ((v29 ^ 0x861E0284) + 2083217580) ^ ((v29 ^ 0xD85FE142) + 577405806) ^ ((v29 ^ 0xFFFF7DFF) + 97132497) ^ 0x90224A4;
  return a15();
}

void sub_10004646C(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (1037613739 * (((a1 | 0xF3D86D6B) - (a1 & 0xF3D86D6B)) ^ 0x22DA4014));
  v2 = *(a1 + 8);
  v3 = *(v2 + 4);
  if (v3 - 1494181296 < 0)
  {
    v4 = 1494181296 - v3;
  }

  else
  {
    v4 = v3 - 1494181296;
  }

  v7 = v1 + 1564307779 * ((2 * (v6 & 0x7D293358) - v6 + 47631520) ^ 0x95DB00B3) + 248;
  v8 = v2;
  v5 = *(&off_100085FF0 + v1 - 1848) - 8;
  (*&v5[8 * v1 + 4088])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000465B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(&STACK[0x26C] + v5 + 72);
  v12 = ((2 * v5) & 0xED17FBF8) + (v5 ^ 0xF68BFDFF) + v6;
  *(a2 + v12) = v11 ^ 0xD3;
  v13 = (v11 >> (a5 + (v8 ^ v7) - 89)) ^ 0xFFFFFFB9;
  *(a2 + v12 + 1) = v13 - ((2 * v13) & 0x4E) - 89;
  *(a2 + v12 + 2) = (BYTE2(v11) ^ 0xC8) - ((v11 >> 15) & 0x4E) - 89;
  *(a2 + v12 + 3) = (HIBYTE(v11) ^ 0xC) - ((2 * (HIBYTE(v11) ^ 0xC)) & 0x4E) - 89;
  return (*(v10 + 8 * (((v5 + 4 >= LODWORD(STACK[0x2C8])) * v9) ^ v8)))();
}

uint64_t sub_100046734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  *v39 = 64;
  *(v36 + 252) = 1494181296;
  *(v36 + 256) = v36 + 264;
  STACK[0x2C0] = v36 + 520;
  *(v36 + 520) = 0x590F65B000000040;
  *(v36 + 528) = v36 + 536;
  STACK[0x2C8] = v36 + 792;
  *(v36 + 792) = 0x590F65B000000040;
  *(v36 + 800) = v36 + 808;
  STACK[0x2E0] = v36 + 1064;
  *(v36 + 1064) = 0x590F65B000000040;
  *(v36 + 1072) = v36 + 1080;
  STACK[0x2E8] = v36 + 1336;
  *(v36 + 1336) = 0x590F65B000000040;
  *(v36 + 1344) = v36 + 1352;
  v41 = STACK[0x508] + 4;
  v42 = v39;
  v43 = v33 + 484;
  v44 = 1082434553 * (v37 ^ 0x9B47F68A);
  LODWORD(STACK[0x2D8]) = (v33 + 484) ^ v44;
  *(v40 - 176) = (v33 + 484) ^ v44;
  v45 = v40 - 200;
  v46 = v44 + 1081602213;
  *(v40 - 196) = v44 + 1081602213 + (((v34 ^ 0x8D540E71) + 1923871119) ^ ((v34 ^ 0x423C70A7) - 1111257255) ^ ((v34 ^ 0xF69D76CE) + v35 + 157451146));
  *(v40 - 192) = v41;
  *(v40 - 184) = v42;
  v47 = v33 + 1705;
  (*(v38 + 8 * (v33 + 1705)))(v40 - 200);
  v48 = v34 ^ 0x39F50818u;
  v49 = v41 + v48;
  v50 = 1082434553 * ((-1950163995 - (v45 | 0x8BC2DBE5) + (v45 | 0x743D241A)) ^ 0xEF7AD290);
  *(v40 - 176) = v43 ^ v50;
  *(v40 - 196) = v50 + 1081602213 + (((v34 ^ 0x3C8E5053) - 1015959635) ^ ((v34 ^ 0xE1233D26) + 517784282) ^ ((v34 ^ 0xE458656D) + 463968915));
  v51 = STACK[0x2C0];
  *(v40 - 192) = v49;
  *(v40 - 184) = v51;
  (*(v38 + 8 * v47))(v40 - 200);
  v52 = v49 + v48;
  v53 = 1082434553 * ((378352017 - (v45 | 0x168D3191) + (v45 | 0xE972CE6E)) ^ 0x723538E4);
  *(v40 - 196) = v53 + 1081602213 + (((v34 ^ 0x408B6F42) - 1082879810) ^ ((v34 ^ 0x18B23C31) - 414334001) ^ ((v34 ^ 0x61CC5B6B) - 1640782699));
  v54 = STACK[0x2C8];
  *(v40 - 192) = v52;
  *(v40 - 184) = v54;
  *(v40 - 176) = v43 ^ v53;
  (*(v38 + 8 * v47))(v40 - 200);
  v55 = 1082434553 * ((v40 - 1589397808 - 2 * ((v40 - 200) & 0xA143B798)) ^ 0x3A044112);
  *(v40 - 176) = v43 ^ v55;
  v56 = STACK[0x2E0];
  *(v40 - 192) = v52 + v48;
  *(v40 - 184) = v56;
  *(v40 - 196) = v55 + 1081602213 + (((v34 ^ 0xCD42FCB1) + 851247951) ^ ((v34 ^ 0x956BCB1) - 156679345) ^ ((v34 ^ 0xFDE14818) + 35567592));
  (*(v38 + 8 * (a33 ^ 0xB59u)))(v40 - 200);
  *(v40 - 196) = v46 + (((v34 ^ 0xF73A11E1) + 147189279) ^ ((v34 ^ 0xAFA281E0) + 1348304416) ^ ((v34 ^ 0x616D9819) - 1634572313));
  *(v40 - 176) = STACK[0x2D8];
  *(v40 - 192) = v52 + v48 + v48;
  *(v40 - 184) = STACK[0x2E8];
  (*(v38 + 8 * (a33 ^ 0xB59u)))(v40 - 200);
  return sub_1000494C4();
}

uint64_t sub_100046C84@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v12 = (v10 + 4 * v8);
  v13 = HIDWORD(v3) + (*v12 ^ v2) + HIDWORD(v4) + v5 * (*(v9 + 4 * v8) ^ v2);
  *(v12 - 1) = v13 + ((v6 - 286) ^ (v2 - 449)) + ~(a1 & (2 * v13));
  return (*(v7 + 8 * (((v8 + 1 == a2) * v11) ^ v6)))();
}

uint64_t sub_100046E70(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v10 = (((a7 ^ 0xD9B19403) + 642673661) ^ ((a7 ^ 0x3172B1EC) - 829600236) ^ (((a4 - 1821) | 0x323) - 1887461803 + ((((a4 - 1439) | 0x40) + 1887460290) ^ a7))) + v8;
  v11 = (((a5 ^ 0xF515839C) + 183139428) ^ ((a5 ^ 0xE3CE45C3) + 473020989) ^ ((a5 ^ 0x8E98BDB4) + 1902592588)) + v8;
  v12 = (v11 < v9) ^ (v10 < v9);
  v13 = v10 < v11;
  if (v12)
  {
    v13 = v11 < v9;
  }

  return (*(v7 + 8 * ((4049 * v13) ^ a4)))();
}

uint64_t sub_100046FA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 66;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

void sub_100046FC4(_DWORD *a1)
{
  v1 = *a1 + 1388665877 * ((a1 & 0x46A0C1C4 | ~(a1 | 0x46A0C1C4)) ^ 0x34F25CD7);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10004705C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = ((v3 - 1612) ^ 0xFFFFFFFFFFFFFD8FLL) + v2;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((205 * (v5 == 0)) ^ (v3 - 1600))))();
}

uint64_t sub_100047138@<X0>(unsigned int a1@<W3>, unint64_t a2@<X4>, int a3@<W6>, _DWORD *a4@<X7>, unsigned int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = (a4[1] ^ a5) + ((v13 + 181) ^ HIDWORD(a2)) + a1 * (*(*(a10 + 8) + 4) ^ (a5 + 137 * (a3 ^ 0x1AF) - 685));
  *a4 = (v17 + v12 - (v11 & (2 * v17))) ^ v14;
  return (*(v16 + 8 * (((v10 == 2) * v15) ^ a3)))();
}

uint64_t sub_100047208(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v20 = (a1 + 557847211) ^ 0x2140170C;
  v15 = 2066391179 * ((((v14 - 128) | 0x3D0FCA57) - ((v14 - 128) & 0x3D0FCA57)) ^ 0x9228484F);
  *(v14 - 120) = v14 - 228;
  *(v14 - 128) = a1 - v15 + 327;
  *(v14 - 124) = a13 - v15 + 9821169;
  v16 = (*(v13 + 8 * (a1 ^ 0x908)))(v14 - 128);
  v17 = *(v14 - 160) & (v20 - 1429);
  *(v14 - 228 + v17) = 39;
  return (*(v13 + 8 * ((2022 * (v17 > 0x37)) ^ a1)))(v16, 3635372567);
}

void sub_100047400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v12 = ((v10 ^ 0x2CA5246D) - 583833115) ^ v10 ^ ((v10 ^ 0xD7D03215) + 642154397) ^ ((v10 ^ 0xFF5FBFFF) + 248115831) ^ ((v10 ^ 0xA431AC0 ^ (v11 - 467)) - 69904775);
  *a9 = (HIBYTE(v12) ^ 0xE) + (~(2 * (HIBYTE(v12) ^ 0xE)) | 0xB1) - 88;
  a9[1] = (BYTE2(v12) ^ 0x69) - ((2 * (BYTE2(v12) ^ 0x69)) & 0x4E) - 89;
  a9[2] = (BYTE1(v12) ^ 0xB2) - ((2 * (BYTE1(v12) ^ 0xB2)) & 0x4E) - 89;
  a9[3] = ((v10 ^ 0x6D) - 27) ^ v10 ^ ((v10 ^ 0x15) - 99) ^ (118 - v10) ^ ((v10 ^ 0xC0 ^ (v11 + 45)) + 121) ^ 0xD1;
  v13 = v9 - ((2 * v9) & 0x768BDFF0D3BBEB36) - 0x44BA100796220A65;
  a9[4] = (HIBYTE(v13) ^ 0xBB) - ((2 * (HIBYTE(v13) ^ 0xBB)) & 0x4E) - 89;
  a9[5] = (BYTE6(v13) ^ 0x45) - ((2 * (BYTE6(v13) ^ 0x45)) & 0x4E) - 89;
  a9[6] = (BYTE5(v13) ^ 0xEF) - ((2 * (BYTE5(v13) ^ 0xEF)) & 0x4E) - 89;
  a9[7] = (BYTE4(v13) ^ 0xF8) - ((2 * (BYTE4(v13) ^ 0xF8)) & 0x4E) - 89;
  a9[8] = (((v9 - ((2 * v9) & 0xD3BBEB36) + 1776154011) >> 24) ^ 0x69) - ((2 * (((v9 - ((2 * v9) & 0xD3BBEB36) + 1776154011) >> 24) ^ 0x69)) & 0x4E) - 89;
  a9[9] = (BYTE2(v13) ^ 0xDD) - ((2 * (BYTE2(v13) ^ 0xDD)) & 0x4E) - 89;
  a9[10] = (BYTE1(v13) ^ 0xF5) - ((2 * (BYTE1(v13) ^ 0xF5)) & 0x4E) - 89;
  a9[11] = (v9 - ((2 * v9) & 0x36) - 101) ^ 0x3C;
  JUMPOUT(0x100042EBCLL);
}

uint64_t sub_1000475CC(int8x16_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, int32x4_t a5, int8x16_t a6)
{
  v13 = v11 + 1;
  a6.i64[0] = v13[57].i64[0];
  a6.i32[2] = v13[57].i32[2];
  v14 = vextq_s8(a1, a6, 0xCuLL);
  v15 = a6;
  v15.i32[3] = v13[57].i32[3];
  v16 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v15, a4), vandq_s8(v14, a2)), 1uLL), *v13);
  v14.i32[0] = *(v8 + 4 * (v13[57].i32[0] & 1));
  v14.i32[1] = *(v8 + 4 * (v13[57].i32[1] & 1));
  v14.i32[2] = *(v8 + 4 * (v13[57].i32[2] & 1));
  v14.i32[3] = *(v8 + 4 * (v15.i8[12] & 1));
  *(v13 + v7) = veorq_s8(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), a3)), a5), v14);
  return (*(v12 + 8 * (((v9 == 4) * v10) ^ v6)))();
}

uint64_t sub_1000475D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = *(v9 + 48 * v10 + 36);
  v14 = v12 != a3 && v12 + a7 + ((v7 - 275687584) & 0xD37FE7BE) < v11 + ((v7 - 803) | 0x3AFu) - 1023;
  return (*(v8 + 8 * ((239 * v14) ^ v7)))();
}

uint64_t sub_100047A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char a18, int a19, int a20, uint64_t *a21, int a22, unsigned int a23, char *a24, int a25, int *a26, int *a27, uint64_t a28)
{
  a19 = 1745916841;
  v31 = 1082434553 * ((2 * (&a21 & 0x1CCA2F58) - &a21 + 1664471207) ^ 0xF872262D);
  a21 = &a16;
  a26 = &a20;
  a27 = &a19;
  a25 = v31 + v28 + 655;
  a28 = a16;
  a24 = &a18;
  a23 = v31 + a20 + 296704421;
  v32 = (*(v29 + 8 * (v28 ^ 0x9BF)))(&a21);
  return (*(v29 + 8 * (((a22 == ((v28 - 1216982787) & 0x4889AEFF ^ 0x39F508CF)) * ((2 * v28) ^ 0x3EE)) ^ v28)))(v32, v30);
}

uint64_t sub_100047B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  (*(v32 + 8 * (v34 ^ (v34 - 2249))))(a23 + a22);
  v35 = (*(v32 + 8 * (v34 ^ (v34 - 2367))))();
  *v33 = v35;
  v36 = 1812433253 * (((v35 ^ (v35 >> 30) ^ 0x6BF28E5D) - 2133837944) ^ ((v35 ^ (v35 >> 30) ^ 0xC11415E7) + 708226110) ^ ((v35 ^ (v35 >> 30) ^ 0xAAE69BBA) + 1103372897)) + 752449946;
  v33[1] = v36;
  return (*(v32 + 6864))(v36, *(v32 + 6864), 1812432078, 378622759, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v31, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_100047C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v19 - 120) = (v17 + 1090) ^ (210068311 * ((((v19 - 120) | 0xA2211B9D) - (v19 - 120) + ((v19 - 120) & 0x5DDEE460)) ^ 0x30F72439));
  *(v19 - 112) = &a16;
  *(v19 - 104) = &a14;
  v20 = (*(v16 + 8 * (v17 | 0x804)))(v19 - 120);
  return (*(v16 + 8 * ((((94 * (v17 ^ 0xFE)) ^ 0x4C8) * (v18 != 1)) ^ v17)))(v20);
}

uint64_t sub_100047D24(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45)
{
  *a35 = a45 + 1562827101;
  v50 = *v47;
  *(v49 - 152) = (v45 + 400668610) ^ a22;
  *(v48 + 1048) = a22 + v50;
  *(v48 + 1072) = a21;
  *(v49 - 124) = ((v45 + 400668720) ^ 0xF6) - a22;
  *(v49 - 128) = v45 + 400668720 + a22;
  *(v49 - 136) = a22 + 1;
  *(v49 - 132) = (v45 - 1652122536) ^ a22;
  v51 = (*(v46 + 8 * (a2 + v45 + 1791)))(v49 - 152);
  return (*(v46 + 8 * *(v49 - 112)))(v51);
}

uint64_t sub_100047E4C(uint64_t a1)
{
  v1 = 210068311 * (((a1 | 0x39505529) - a1 + (a1 & 0xC6AFAAD6)) ^ 0xAB866A8D);
  v2 = *(a1 + 8) + v1;
  v3 = *a1 - v1;
  v5 = v3 - 783600230;
  v4 = v3 - 783600230 < 0;
  v6 = 783600230 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 16) + 4);
  v8 = v7 - 1494181296;
  v4 = v7 - 1494181296 < 0;
  v9 = 1494181296 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&off_100085FF0 + v2 - 118) + (v2 | (8 * ((v6 >> 5) < v9))) - 1))();
}

uint64_t sub_100047F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = LOBYTE(STACK[0x2D8]);
  if (v13 == 1)
  {
    v16 = STACK[0x2BC];
    v17 = STACK[0x2B8];
    LOBYTE(STACK[0x2B0]) = (8 * (LOBYTE(STACK[0x2BC]) - ((2 * LOBYTE(STACK[0x2BC])) & 0x1C)) - 16) ^ ((v12 ^ 0x86) - 73);
    LOBYTE(STACK[0x2B1]) = a4 ^ (v16 >> 5);
    LOBYTE(STACK[0x2B2]) = a4 ^ (v16 >> 13);
    LOBYTE(STACK[0x2B3]) = a4 ^ (v16 >> 21);
    LOBYTE(STACK[0x2B4]) = ((__PAIR64__(v17, v16) >> 29) - ((2 * (__PAIR64__(v17, v16) >> 29)) & 0xF4) + 122) ^ 0xDD;
    LOBYTE(STACK[0x2B5]) = a4 ^ (v17 >> 5);
    LOBYTE(STACK[0x2B6]) = a4 ^ (v17 >> 13);
  }

  else
  {
    if (v13 != 2)
    {
      JUMPOUT(0x1000480C8);
    }

    v14 = STACK[0x2B8];
    v15 = STACK[0x2BC];
    LOBYTE(STACK[0x2B0]) = (LODWORD(STACK[0x2B8]) >> 21) - ((LODWORD(STACK[0x2B8]) >> 20) & 0x4E) - 89;
    LOBYTE(STACK[0x2B1]) = v12 + 122 + (v14 >> 13) - ((v14 >> 12) & 0x4E) + 7;
    LOBYTE(STACK[0x2B2]) = (v14 >> 5) - ((v14 >> 4) & 0x4E) - 89;
    LOBYTE(STACK[0x2B3]) = (__PAIR64__(v14, v15) >> 29) - ((2 * (__PAIR64__(v14, v15) >> 29)) & 0x4E) - 89;
    LOBYTE(STACK[0x2B4]) = (v15 >> 21) - ((v15 >> 20) & 0x4E) - 89;
    LOBYTE(STACK[0x2B5]) = (v15 >> 13) - ((v15 >> 12) & 0x4E) - 89;
    LOBYTE(STACK[0x2B6]) = (v15 >> 5) - ((v15 >> 4) & 0x4E) - 89;
  }

  return sub_1000480C0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

void Mib5yocT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = !v8 && a6 != 0 && a7 != 0 && a8 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100048184(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17)
{
  v19 = v18 - 1107575295 > a17;
  if (a17 < a16 != v18 - 1107575295 < a6 - 1107576670 + 71 * (a5 ^ (a5 - 7)))
  {
    v19 = v18 - 1107575295 < a6 - 1107576670 + 71 * (a5 ^ (a5 - 7));
  }

  return (*(v17 + 8 * ((27 * v19) ^ (a3 + a5 + 1264))))(1523);
}

void sub_10004818C(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a3 = (v8 + 677) ^ (843532609 * ((&a3 & 0x4D0EDFCB | ~(&a3 | 0x4D0EDFCB)) ^ 0xEEBC74B1));
  a4 = a1;
  a5 = v7;
  a6 = v7;
  (*(v6 + 8 * (v8 ^ 0xBE5)))(&a3);
  JUMPOUT(0x10001A5DCLL);
}

uint64_t sub_100048294@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = (*(*(v11 + 8) + 4 * v5) ^ v7) + v2 + (*(*(v9 + 8) + 4 * v5) ^ v7);
  *(*(a2 + 8) + 4 * v5) = v12 + v7 - (v8 & (2 * v12));
  return (*(v10 + 8 * (((v5 + 1 == v3) * (((v4 - 1484) | v6) ^ a1)) ^ v4)))();
}

uint64_t sub_1000482FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23)
{
  v27 = &a23 + v24 + 8;
  *(v27 - 1) = 0xA7A7A7A7A7A7A7A7;
  *v27 = 0xA7A7A7A7A7A7A7A7;
  return (*(v26 + 8 * ((((v23 & 0x30) == 16) * (v25 ^ 0x43B)) ^ v25 ^ 0x2BA)))();
}

uint64_t sub_1000487D0@<X0>(int a1@<W2>, uint64_t a2@<X6>, int a3@<W8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int32x4_t a9@<Q7>)
{
  v14 = v10 + 4;
  a5.i32[0] = v11->i32[1];
  a5.i32[1] = *(v12 + 4 * (v14 + v9) + 548);
  a5.i32[2] = v11->i32[3];
  v15 = vextq_s8(a4, a5, 0xCuLL);
  v16 = a5;
  v16.i32[3] = v11[1].i32[0];
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a7), vandq_s8(v15, a6)), 1uLL), *(v11 - 908));
  v15.i32[0] = *(a2 + 4 * (v11->i32[1] & 1));
  v15.i32[1] = *(a2 + 4 * (*(v12 + 4 * (v14 + v9) + 548) & 1));
  v15.i32[2] = *(a2 + 4 * (v11->i32[3] & 1));
  v15.i32[3] = *(a2 + 4 * (v16.i8[12] & 1));
  *v11 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a8)), a9), v15);
  return (*(v13 + 8 * (((v14 == 0) * a1) ^ a3)))();
}

void sub_1000487DC(int a1@<W8>)
{
  v7 = v1 - 1188;
  v8 = (((v1 - 1584258804) & 0x5E6DD7F7) + 537407757) * LODWORD(STACK[0x51C]) + 729875672;
  v9 = v1 - 1776825427;
  v10 = (((v4 | 0x773C6F77) + (~v4 | 0x88C39088)) ^ 0xFA910D9A) * v2;
  *(v6 - 152) = STACK[0x4B8];
  *(v6 - 168) = STACK[0x278];
  *(v6 - 156) = v9 ^ v10;
  *(v6 - 192) = STACK[0x280];
  *(v6 - 184) = v3;
  *(v6 - 176) = (a1 ^ 0xEBF9BE33) - v10 + 2 * a1 + 2091843584;
  *(v6 - 200) = v8 ^ v10;
  (*(v5 + 8 * (v7 ^ 0xAEA)))(v6 - 200);
  LODWORD(STACK[0x444]) = *(v6 - 160);
  JUMPOUT(0x1000488BCLL);
}

uint64_t sub_100048928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  STACK[0x360] = v14;
  STACK[0x4B0] = a14;
  v16 = *(v14 + 68) & ((a6 ^ 0x8AE) - 2153);
  *(v14 + v16) = 39;
  return (*(v15 + 8 * ((2244 * (v16 > 0x37)) ^ a6)))(a1, a2, a3, a4, a5, 3215291154, 186, 44);
}

uint64_t sub_1000489D4(_DWORD *a1)
{
  v1 = 843532609 * (((a1 | 0x20F8A4B6) - a1 + (a1 & 0xDF075B49)) ^ 0x7CB5F033);
  v2 = *a1 + v1;
  return (*(*(&off_100085FF0 + (v2 - 1638)) + (((((((a1[4] + v1) ^ 0xEDD84160) + 304594592) ^ (((a1[4] + v1) ^ 0x3EF3C7F4) - 1056163828) ^ (((a1[4] + v1) ^ 0xEADE8E8C) + 354513268)) - 1175123944 < 0x80000064) * (((v2 - 190748616) & 0xB5E977D) - 1220)) | v2) - 1))();
}

uint64_t sub_100048AE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = (v6 + v4 + a2);
  *v9 = v8;
  v9[1] = v8;
  return (*(v7 + 8 * (((((v2 - 610) ^ a1) + v4 == v3) * v5) ^ v2)))();
}

uint64_t sub_100048B98@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v6 - 686575557) & 0x28EC4E97;
  **a1 = v4 + v5 + (v7 ^ 0x99);
  return (*(v3 + 8 * ((1718 * (*(a2 + 24) == v2)) ^ v7)))();
}

void sub_100048C40(_DWORD *a1)
{
  v1 = *a1 ^ (50899313 * ((a1 + 62097897 - 2 * (a1 & 0x3B389E9)) ^ 0x179C1472));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100048D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16)
{
  a15 = v17 - 1388665877 * ((&a15 & 0xB0A5A92E | ~(&a15 | 0xB0A5A92E)) ^ 0xC2F7343D) + 822;
  a16 = a13;
  (*(v18 + 8 * (v17 + 1910)))(&a15);
  a16 = a10;
  a15 = (v17 ^ v16) - 1388665877 * ((&a15 & 0x2C9CF390 | ~(&a15 | 0x2C9CF390)) ^ 0x5ECE6E83) + 1070;
  v19 = (*(v18 + 8 * (v17 ^ v16 ^ 0x996)))(&a15);
  return sub_100048E04(v19);
}

uint64_t sub_100048E44@<X0>(uint64_t a1@<X8>)
{
  v4 = -1694378315 - v1 - (((v3 - 1044) ^ 0x65B15372) & (1347574494 - 2 * v1));
  v5 = 50899313 * ((&v7 - 785271911 - 2 * (&v7 & 0xD131B399)) ^ 0xC51E2E02);
  v7 = v2;
  v8 = v4 ^ v5;
  v9 = v5 + v3 - 755;
  return (*(a1 + 8 * (v3 + 822)))(&v7);
}

uint64_t sub_100048EFC()
{
  v8 = v6;
  HIDWORD(v9) = (v2 + v0 + 1755) ^ (1388665877 * (((&v8 | 0xE8151579) + (~&v8 | 0x17EAEA86)) ^ 0x65B87794));
  (*(v1 + 8 * (v0 ^ 0x815D6DA4)))(&v8);
  LODWORD(v8) = v2 - 1388665877 * ((2 * (&v8 & 0x20B46880) - &v8 + 1598789499) ^ 0xD2E6F597) + v0 + 2670;
  v9 = v6;
  (*(v1 + 8 * (v2 + v0 + 3758)))(&v8);
  v9 = v5;
  LODWORD(v8) = (v0 ^ v3) - 1388665877 * ((-1064824113 - (&v8 | 0xC08812CF) + (&v8 | 0x3F77ED30)) ^ 0xB2DA8FDC) + 238;
  (*(v1 + 8 * ((v0 ^ v3) + 1326)))(&v8);
  return v7 ^ 0x39F50818u;
}

uint64_t sub_100049084()
{
  v4 = v2 - 96270121;
  v5 = (((v1 - 1250) | 0x645) ^ 0x4133431C) + v3 < v4;
  if (v3 > 0xBECCBAA6 != v4 < 0x41334559)
  {
    v5 = v4 < 0x41334559;
  }

  return (*(v0 + 8 * ((484 * v5) ^ v1)))();
}

uint64_t sub_1000490FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int32x4_t a20, int32x4_t a21)
{
  a20 = vdupq_n_s32(0x98437BEB);
  a21 = a20;
  return (*(v21 + 8 * ((((a6 & 0xFFFFFFF8) == 8) * ((872 * (a5 ^ 0x587)) ^ 0xF6)) ^ (a5 - 684))))(a1, a2, a3, a4, &a20);
}

uint64_t sub_100049184(_BYTE *a1, uint64_t a2)
{
  v5 = (v3 - 381940992) & 0x16C3F4EB;
  *(a2 + v2) = *a1;
  v6 = 4 * (v5 ^ 0x4CCu) - 27 != v5 - v2 - 1163;
  return (*(v4 + 8 * (((4 * v6) | (16 * v6)) ^ v5)))();
}

uint64_t sub_100049240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 112) = &a13;
  *(v17 - 120) = (v15 + 554) ^ (1785193651 * ((-1943277505 - ((v17 - 128) | 0x8C2BF03F) + ((v17 - 128) | 0x73D40FC0)) ^ 0x6008E3E0));
  *(v17 - 128) = a12;
  (*(v14 + 8 * ((v15 + 1221) ^ 0xF3E)))(v17 - 128);
  *(v17 - 128) = (v15 + 470) ^ (((-1320871300 - ((v17 - 128) ^ 0xC9F6E7A8 | 0xB1451A7C) + ((v17 - 128) ^ 0xC9F6E7A8 | 0x4EBAE583)) ^ 0xDB0156AE) * v16);
  *(v17 - 120) = v13;
  *(v17 - 112) = a12;
  v18 = (*(v14 + 8 * ((v15 + 1221) ^ 0xEBE)))(v17 - 128);
  return (*(v14 + 8 * ((3619 * (*(v17 - 124) + (v15 ^ 0xDC4CFD51) < v15 - 285112206)) ^ (v15 + 1221))))(v18);
}

uint64_t sub_100049388@<X0>(int a1@<W1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v7.i64[0] = 0x4E4E4E4E4E4E4E4ELL;
  v7.i64[1] = 0x4E4E4E4E4E4E4E4ELL;
  v8.i64[0] = 0xA7A7A7A7A7A7A7A7;
  v8.i64[1] = 0xA7A7A7A7A7A7A7A7;
  v9 = (v6 - 228 + a3);
  v10 = vaddq_s8(vsubq_s8(v5[1], vandq_s8(vaddq_s8(v5[1], v5[1]), v7)), v8);
  *v9 = vaddq_s8(vsubq_s8(*v5, vandq_s8(vaddq_s8(*v5, *v5), v7)), v8);
  v9[1] = v10;
  return (*(v4 + 8 * ((1009 * (((v3 + 585885828) & 0xB5C37FF7) - 1846 == (a2 & 0x60))) ^ (a1 + v3 + 861))))();
}

uint64_t sub_1000494C4()
{
  v3 = (v0 - 1143994921) & 0x442FF7BF;
  v4 = STACK[0x508];
  STACK[0x4E0] = (v3 ^ 0xA5491CDA) + v1;
  return (*(v2 + 8 * ((127 * ((v3 ^ 0xA5491CDA) + v1 != 0)) ^ (v0 - 617))))(v4);
}

void gLg1CWr7p()
{
  v0 = *(&off_100085FF0 + (byte_10006EC04[(byte_1000798E0[(-109 * (dword_100089AD0 ^ 0x95 ^ qword_100089928))] ^ 0x2B) - 4] ^ (-109 * (dword_100089AD0 ^ 0x95 ^ qword_100089928))) + 65);
  v1 = -109 * ((qword_100089928 + *v0) ^ 0x95);
  v2 = *(&off_100085FF0 + (byte_100072258[(byte_10006EA04[v1 - 4] ^ 0xA3) - 8] ^ v1) - 20);
  v3 = &v5[*(v2 - 4) ^ *v0];
  *v0 = 665663891 * v3 + 0x12CF57B8DBD63C6BLL;
  *(v2 - 4) = 665663891 * (v3 ^ 0xED30A8472429C395);
  v6[0] = -542396526 - 1388665877 * (((v6 | 0xCA7AEBAC) - (v6 & 0xCA7AEBAC)) ^ 0x47D78940);
  LOBYTE(v2) = -109 * ((*(v2 - 4) + *v0) ^ 0x95);
  v4 = *(&off_100085FF0 + ((-109 * ((qword_100089928 + dword_100089AD0) ^ 0x95)) ^ byte_100072050[byte_10006E900[(-109 * ((qword_100089928 + dword_100089AD0) ^ 0x95))] ^ 0xE9]) - 132) - 8;
  (*&v4[8 * (byte_10006E800[byte_1000796E4[v2 - 4] ^ 0x7D] ^ v2) + 17248])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_100049BC0(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v10 = (v6 ^ 0x47C48809) & (2 * (v6 & (v9 + 1))) ^ v6 & (v9 + 1);
  v11 = ((2 * (v6 ^ 0x45E80929)) ^ 0xA47DB770) & (v6 ^ 0x45E80929) ^ (2 * (v6 ^ 0x45E80929)) & 0xD23EDBB8;
  v12 = ((4 * ((((v8 - 1554) | 0x1FE) + 1375880842) ^ v11)) ^ 0x48FB6EE0) & ((((v8 - 1554) | 0x1FE) + 1375880842) ^ v11) ^ (4 * ((((v8 - 1554) | 0x1FE) + 1375880842) ^ v11)) & 0xD23EDBB8;
  v13 = (v12 ^ 0x403A4AA0) & (16 * ((v11 ^ 0x803C9200) & (4 * v10) ^ v10)) ^ (v11 ^ 0x803C9200) & (4 * v10) ^ v10;
  v14 = ((16 * (v12 ^ 0x92049118)) ^ 0x23EDBB80) & (v12 ^ 0x92049118) ^ (16 * (v12 ^ 0x92049118)) & 0xD23EDBB0;
  v15 = v13 ^ 0xD23EDBB8 ^ (v14 ^ 0x22C9B00) & (v13 << 8);
  v16 = ((2 * (&a3 & 0x5CFC9078) - &a3 + 587427714) ^ 0xF20142FD) * v5;
  a5 = v7;
  a3 = v6 ^ v16 ^ (2 * ((v15 << 16) & 0x523E0000 ^ v15 ^ ((v15 << 16) ^ 0x5BB80000) & (((v14 ^ 0xD0124038) << 8) & 0x523E0000 ^ 0x40240000 ^ (((v14 ^ 0xD0124038) << 8) ^ 0x3EDB0000) & (v14 ^ 0xD0124038)))) ^ 0x536C44B2;
  a4 = (v8 + 326) ^ v16;
  (*(a1 + 8 * (v8 ^ 0xF50)))(&a3);
  JUMPOUT(0x100048ED4);
}

uint64_t sub_100049D70@<X0>(char a1@<W8>)
{
  v8 = v2 + 2;
  v9 = (v3 - 2);
  *v9 = (a1 ^ v8 ^ v5) * (v8 + 17);
  *(v9 - 1) = (v8 ^ 0xBB) * (v8 + 18);
  return (*(v7 + 8 * (((v4 == 2) * v6) ^ v1)))();
}

uint64_t sub_100049E14()
{
  v7 = v5 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v1 - v3 + v8 + 1;
  v10 = v1 + v8 + 1;
  v11 = v8 + v2 + 4;
  v12 = v0 - v3 + v8 + 6;
  v13 = v0 + ((v4 + 410) ^ ((v4 + 114) | 0xFu) ^ 0x361) + v8;
  v15 = v11 > v5 && v11 - v3 < v7;
  v17 = v10 > v5 && v9 < v7 || v15;
  if (v12 < v7 && v13 > v5)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17;
  }

  return (*(v6 + 8 * (v4 ^ (16 * (v19 ^ 1)))))();
}

void sub_100049EA8()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x100049EC0);
}

void sub_100049F6C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a5 = v6 + 50899313 * (((&a3 ^ 0x9D9F9979) - 1420027307 - 2 * ((&a3 ^ 0x9D9F9979) & 0xAB5C1A55)) ^ 0x22EC1EB7) - 978;
  a3 = a1;
  a4 = v7;
  (*(v5 + 8 * (v6 + 1292)))(&a3);
  JUMPOUT(0x100034EF4);
}

uint64_t sub_100049FD8@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X5>, unint64_t a4@<X6>, int a5@<W8>)
{
  v13 = ((v5 + ((v9 - 470647101) & 0x1C0D7EFFu) - 254) ^ *(a3 + 4 * v8)) + (v7 ^ HIDWORD(a4));
  v14 = v13 - ((2 * v13) & 0xE0045712) - 0x1DCCEC658FFDD477;
  *(a3 + 4 * a1) = v14 ^ (((v9 - 483257155) & 0x1CCDECFF) + v11);
  *(a3 + 4 * v8) = HIDWORD(v14) ^ v12;
  return (*(v10 + 8 * (v9 ^ ((v6 + 1 == a5) * a2))))();
}

uint64_t sub_10004A11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(v65 + 1428);
  STACK[0x520] = a65 + 256;
  STACK[0x310] = v65 + 1432;
  if (v68 <= 0x20 && ((1 << v68) & 0x100110000) != 0)
  {
    return (*(v67 + 8 * ((3423 * (*(a3 + 476) == LODWORD(STACK[0x304]) - 1447)) ^ (LODWORD(STACK[0x304]) - 84))))(a1, a2, v66);
  }

  STACK[0x520] -= 256;
  return (STACK[0x528])(a1, 167, v66);
}

uint64_t sub_10004A27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(v5 + 16);
  *(v6 - 112) = veorq_s8(**(v5 + 8), xmmword_100079A00);
  *(v6 - 120) = a4;
  if (a4)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(v4 + 8 * ((77 * v9) ^ a3)))(a1, a2);
}

uint64_t sub_10004A2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v69 = 1564307779 * (v66 ^ 0x970DCC13);
  *(v68 - 184) = v69 + v64 + 798;
  *(v68 - 180) = v69 + a64 + 841701031;
  *(v68 - 192) = &STACK[0x4B8];
  *(v68 - 200) = &STACK[0x51C];
  *(v68 - 172) = ((v65 ^ 0x7FF77DA8) - 411303944 + ((2 * v65) & 0xFFEEFB50)) ^ v69;
  *(v68 - 168) = STACK[0x208];
  v70 = (*(v67 + 8 * (v64 + 1988)))(v68 - 200);
  v71 = *(v68 - 176);
  LODWORD(STACK[0x444]) = v71;
  return (*(v67 + 8 * (((v71 == 972359704) * ((v64 - 1691480775) ^ 0x9B2E0B37 ^ (v64 - 1691480775) & 0x64D1F77F ^ 0x58B)) ^ v64)))(v70);
}

uint64_t sub_10004A3F8()
{
  v3 = (*(v2 + 8 * (v0 ^ 0xB0B)))();
  LODWORD(STACK[0x560]) = v1;
  return (*(v2 + 8 * ((v1 != v0 + 972359150) ^ v0)))(v3);
}

uint64_t sub_10004A448(_DWORD *a1)
{
  v2 = 742307843 * ((-547177076 - (a1 | 0xDF62BD8C) + (a1 | 0x209D4273)) ^ 0x3EBFCF26);
  v3 = a1[12] + v2;
  v4 = a1[11] + v2;
  v9[1] = v3 - 742307843 * (((v9 | 0xB65546A2) - v9 + (v9 & 0x49AAB95C)) ^ 0xA877CBF7) + 542045597;
  v5 = *(&off_100085FF0 + (v3 + 473373696)) - 8;
  result = (*&v5[8 * (v3 ^ 0xE3C8ED37)])(v9);
  if (v4 > 58718594)
  {
    if (v4 == 343931266)
    {
      v7 = 3;
    }

    else
    {
      if (v4 != 58718595)
      {
        goto LABEL_11;
      }

      v7 = 1;
    }

LABEL_10:
    v8 = *&v5[8 * ((13 * ((*&v5[8 * (v3 + 473376023)])(*(*(&off_100085FF0 + (v3 ^ 0xE3C8E44E)) + 6 * v7 + 3) + ((v3 - 1056727346) & 0x5B337FF7 ^ 0xA5491D03)) != 0)) ^ (v3 + 473375361))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 == 58718591)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (v4 == 58718594)
  {
    v7 = 2;
    goto LABEL_10;
  }

LABEL_11:
  a1[2] = -972401756;
  return result;
}

uint64_t sub_10004A730@<X0>(void *a1@<X3>, int a2@<W4>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  v61 = &a59 + (a2 - 1);
  v62 = 1109941777 * ((*(*a1 + (*a32 & 0xFFFFFFFF8B29B360)) ^ v61) & 0x7FFFFFFF);
  v63 = 1109941777 * (v62 ^ HIWORD(v62));
  v64 = *(*(&off_100085FF0 + (v60 ^ 0x2EA)) + (v63 >> 24) - 6);
  v65 = *(*(&off_100085FF0 + (v60 ^ 0x296)) + (v63 >> 24) - 8);
  v66 = ((a3 >> v59) + ((v60 + 403) ^ 0x16) - ((a3 >> v59 << (v60 + 76)) & 0xA0) - 14) ^ *(*(&off_100085FF0 + v60 - 578) + (v63 >> 24) - 12) ^ v64 ^ v65 ^ v63 ^ (-55 * (v63 >> 24));
  LODWORD(v63) = (((a3 >> v59) + ((v60 - 109) ^ 0x16) - ((a3 >> v59 << (v60 + 76)) & 0xA0) - 14) ^ *(*(&off_100085FF0 + v60 - 578) + (v63 >> 24) - 12) ^ v64 ^ v65 ^ v63 ^ (-55 * BYTE3(v63)));
  *v61 = v66 ^ 0x50;
  return (*(a37 + 8 * ((1340 * (a2 == (v63 != 80))) ^ v60)))();
}

uint64_t sub_10004A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v26 = 843532609 * ((2 * (&a17 & 0x2303A988) - &a17 - 587442573) ^ 0x80B102F6);
  a17 = a13;
  HIDWORD(a18) = v23 - 1967410294 - ((2 * v23) & 0x15776F42) - v26 + 1047;
  LODWORD(a19) = v26 ^ 0x5C7;
  (*(v24 + 18840))(&a17);
  v27 = 843532609 * (((&a17 | 0xEEEAC515) + (~&a17 | 0x11153AEA)) ^ 0xB2A79191);
  a17 = a13;
  HIDWORD(a18) = v22 - ((2 * v22) & 0x15776F42) - v27 - 1967409247;
  LODWORD(a19) = v27 ^ 0x5C7;
  (*(v24 + 18840))(&a17);
  v28 = 1037613739 * ((&a17 & 0x2DF8C057 | ~(&a17 | 0x2DF8C057)) ^ 0x30512D7);
  a20 = v28 ^ 0x131;
  a21 = (v25 ^ 0x2EE9F276) + ((2 * v25) & 0x5DD3E4EC) - 545275904 + v28;
  a18 = a13;
  a19 = v21;
  v29 = (*(v24 + 19072))(&a17);
  return (*(v24 + 8 * ((1894 * (a17 == 972359704)) ^ 0x15Fu)))(v29);
}