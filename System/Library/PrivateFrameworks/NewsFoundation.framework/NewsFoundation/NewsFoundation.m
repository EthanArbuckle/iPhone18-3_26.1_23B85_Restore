uint64_t NFInternalBuild()
{
  if (NFInternalBuild_onceToken != -1)
  {
    NFInternalBuild_cold_1();
  }

  return NFInternalBuild_internalBuild;
}

uint64_t __NFInternalBuild_block_invoke()
{
  result = os_variant_has_internal_content();
  NFInternalBuild_internalBuild = result;
  return result;
}

void sub_25BED4160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NFDeviceHasExtendedColorDisplay()
{
  if (NFDeviceHasExtendedColorDisplay_onceToken != -1)
  {
    NFDeviceHasExtendedColorDisplay_cold_1();
  }

  return NFDeviceHasExtendedColorDisplay_hasExtendedColorDisplay;
}

uint64_t __NFDeviceHasExtendedColorDisplay_block_invoke()
{
  result = MGGetBoolAnswer();
  NFDeviceHasExtendedColorDisplay_hasExtendedColorDisplay = result;
  return result;
}

__CFString *NFGeneralDeviceString()
{
  v0 = MGCopyAnswer();
  v1 = @"iPhone";
  if (([v0 hasPrefix:@"iPhone"] & 1) == 0)
  {
    v1 = @"iPad";
    if (([v0 hasPrefix:@"iPad"] & 1) == 0)
    {
      v1 = @"iPod";
      if (([v0 hasPrefix:@"iPod"] & 1) == 0)
      {
        if ([v0 hasPrefix:@"Apple Watch"])
        {
          v1 = @"Watch";
        }

        else if ([v0 hasPrefix:@"Apple TV"])
        {
          v1 = @"TV";
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            NFGeneralDeviceString_cold_1(v0);
          }

          v1 = 0;
        }
      }
    }
  }

  return v1;
}

id NFDevicePlatform()
{
  if (NFDevicePlatform_onceToken != -1)
  {
    NFDevicePlatform_cold_1();
  }

  v1 = NFDevicePlatform_s_platformString;

  return v1;
}

void __NFDevicePlatform_block_invoke()
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0x2C7C38CCuLL);
  sysctlbyname("hw.machine", v0, &size, 0, 0);
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
  v2 = NFDevicePlatform_s_platformString;
  NFDevicePlatform_s_platformString = v1;

  free(v0);
}

uint64_t __NFStoreDemoMode_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  NFStoreDemoMode_storeDemoMode = v2;
  return result;
}

uint64_t NFStoreDemoMode()
{
  if (NFStoreDemoMode_onceToken != -1)
  {
    NFStoreDemoMode_cold_1();
  }

  return NFStoreDemoMode_storeDemoMode;
}

id zalgoIfMain()
{
  if (zalgoIfMain_token != -1)
  {
    zalgoIfMain_cold_1();
  }

  v1 = zalgoIfMain_queue;

  return v1;
}

void __zalgoIfMain_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.news.promises.zalgoIfMain", v2);
  v1 = zalgoIfMain_queue;
  zalgoIfMain_queue = v0;
}

void __zalgo_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.news.promises.zalgo", v2);
  v1 = zalgo_queue;
  zalgo_queue = v0;
}

id zalgo()
{
  if (zalgo_token != -1)
  {
    zalgo_cold_1();
  }

  v1 = zalgo_queue;

  return v1;
}

void NFPromiseInvokeOnQueue(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = zalgo();

  if (v4 == v7)
  {
    goto LABEL_4;
  }

  v5 = zalgoIfMain();

  v6 = v7;
  if (v5 == v7)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
LABEL_4:
      v3[2](v3);
      goto LABEL_7;
    }

    v6 = MEMORY[0x277D85CD0];
  }

  dispatch_async(v6, v3);
LABEL_7:
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

void NFArchiverCopyFileFinishedHandler(uint64_t a1, const char *a2)
{
  v5 = BOMCopierUserData();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a2 length:strlen(a2)];

  [v5 addObject:v4];
}

void sub_25BED7D4C(void *a1, int a2)
{
  v4 = objc_begin_catch(a1);
  if (a2 != 2)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:kNFPromiseErrorDomain code:kNFPromiseSealingErrorCode userInfo:0];
    (*(*(v2 + 48) + 16))();

    objc_end_catch();
    JUMPOUT(0x25BED7D30);
  }

  objc_exception_throw(v4);
}

void NFLockSync(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 lock];
  v3[2](v3);

  [v4 unlock];
}

double _UIValueCGRectValue(void *a1)
{
  memset(v2, 0, sizeof(v2));
  _getNSValueBytes(a1, v2, 0x20uLL);
  return *v2;
}

void *_getNSValueBytes(void *a1, void *a2, size_t a3)
{
  sizep[1] = *MEMORY[0x277D85DE8];
  sizep[0] = 0;
  v5 = a1;
  v6 = NSGetSizeAndAlignment([v5 objCType], sizep, 0);
  MEMORY[0x28223BE20](v6);
  v8 = sizep - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v5 getValue:v8];

  result = memcpy(a2, v8, a3);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double _UIValueCGPointValue(void *a1)
{
  v2[0] = 0;
  v2[1] = 0;
  _getNSValueBytes(a1, v2, 0x10uLL);
  return *v2;
}

uint64_t NFDeviceIsA7()
{
  if (NFDeviceIsA7_onceToken != -1)
  {
    NFDeviceIsA7_cold_1();
  }

  return NFDeviceIsA7_result;
}

uint64_t __NFDeviceIsA7_block_invoke()
{
  result = MGGetProductType();
  if (NFDeviceIsA7_result)
  {
    v1 = 1;
    goto LABEL_19;
  }

  v1 = 1;
  if (result <= 2048538370)
  {
    if (result <= 344862119)
    {
      if (result == 23433786)
      {
        goto LABEL_19;
      }

      v2 = 173258742;
    }

    else
    {
      if (result == 344862120 || result == 776033019)
      {
        goto LABEL_19;
      }

      v2 = 1701146937;
    }
  }

  else if (result > 3933982783)
  {
    if (result == 3933982784 || result == 4055323051)
    {
      goto LABEL_19;
    }

    v2 = 4232256925;
  }

  else
  {
    if (result == 2048538371 || result == 3637438250)
    {
      goto LABEL_19;
    }

    v2 = 3865922942;
  }

  if (result != v2)
  {
    v1 = 0;
  }

LABEL_19:
  NFDeviceIsA7_result = v1;
  return result;
}

uint64_t NFDeviceIsA8()
{
  if (NFDeviceIsA8_onceToken != -1)
  {
    NFDeviceIsA8_cold_1();
  }

  return NFDeviceIsA8_result;
}

uint64_t __NFDeviceIsA8_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  result = MGIsDeviceOneOfType();
  NFDeviceIsA8_result = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

id NFDeviceOSVersion()
{
  v0 = MGCopyAnswer();

  return v0;
}

id NFDeviceModelString()
{
  v0 = MGCopyAnswer();

  return v0;
}

id NFSystemName()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MGCopyAnswer();
  }

  v3 = v2;

  return v3;
}

void NFGeneralDeviceString_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Encountered an unknown device model: %@", a1];
  *buf = 136315906;
  v4 = "NSString *NFGeneralDeviceString()";
  v5 = 2080;
  v6 = "NFDevice.m";
  v7 = 1024;
  v8 = 104;
  v9 = 2114;
  v10 = v1;
  _os_log_error_impl(&dword_25BED3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v2 = *MEMORY[0x277D85DE8];
}