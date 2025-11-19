uint64_t getBoolValue(uint64_t *a1, uint64_t *a2, char *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v9 = CFPreferencesCopyAppValue(v8, @"com.apple.MobileBluetooth.debug");

  if ((!v9 || ![v9 count]) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ERROR: Either Dictionary is empty or null", v17, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [v9 objectForKey:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
      if ([v13 isEqualToString:@"TRUE"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"YES"))
      {
        v14 = 1;
LABEL_16:
        *a3 = v14;

LABEL_20:
        v15 = 1;
LABEL_26:

        goto LABEL_27;
      }

      if ([v13 isEqualToString:@"FALSE"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"NO"))
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *a3 = [v12 BOOLValue];
        goto LABEL_20;
      }
    }

    v15 = 0;
    goto LABEL_26;
  }

  v15 = 0;
LABEL_27:

  objc_autoreleasePoolPop(v6);
  return v15;
}

uint64_t getIntValue(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v9 = CFPreferencesCopyAppValue(v8, @"com.apple.MobileBluetooth.debug");

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [v9 objectForKey:v11];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      *a3 = [v12 intValue];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_autoreleasePoolPop(v6);
  return isKindOfClass & 1;
}

_BYTE *sub_100001B04(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001E5C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

int64_t sub_100001C5C(id a1, DEAttachmentItem *a2, DEAttachmentItem *a3)
{
  v4 = a2;
  v5 = [(DEAttachmentItem *)a3 modificationDate];
  v6 = [(DEAttachmentItem *)v4 modificationDate];
  v7 = [v5 compare:v6];

  return v7;
}

void sub_100001CCC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100001D30(id a1)
{
  v1 = IOServiceNameMatching("bluetooth-pcie");
  if (v1)
  {
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (MatchingService)
    {
      byte_100008200 = 1;
      IOObjectRelease(MatchingService);
    }
  }

  if ((byte_100008200 & 1) == 0)
  {
    v3 = IOServiceNameMatching("marconi-bt");
    if (v3)
    {
      v4 = IOServiceGetMatchingService(kIOMainPortDefault, v3);
      if (v4)
      {
        byte_100008200 = 1;
        IOObjectRelease(v4);
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100008200)
    {
      v5 = "ENABLED";
    }

    else
    {
      v5 = "DISABLED";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CoreCapture collection is %s", &v6, 0xCu);
  }
}

void sub_100001E74(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001ED0(exception, a1);
}

std::logic_error *sub_100001ED0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}