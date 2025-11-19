void sub_243CBD420(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

id nanocamera_log_control()
{
  if (nanocamera_log_control_onceToken != -1)
  {
    nanocamera_log_control_cold_1();
  }

  v1 = nanocamera_log_control_log;

  return v1;
}

uint64_t __nanocamera_log_control_block_invoke()
{
  nanocamera_log_control_log = os_log_create("com.apple.NanoCamera", "control");

  return MEMORY[0x2821F96F8]();
}

void sub_243CBDB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id nanocamera_log_app()
{
  if (nanocamera_log_app_onceToken != -1)
  {
    nanocamera_log_app_cold_1();
  }

  v1 = nanocamera_log_app_log;

  return v1;
}

uint64_t __nanocamera_log_app_block_invoke()
{
  nanocamera_log_app_log = os_log_create("com.apple.NanoCamera", "app");

  return MEMORY[0x2821F96F8]();
}

id nanocamera_log_preview()
{
  if (nanocamera_log_preview_onceToken != -1)
  {
    nanocamera_log_preview_cold_1();
  }

  v1 = nanocamera_log_preview_log;

  return v1;
}

uint64_t __nanocamera_log_preview_block_invoke()
{
  nanocamera_log_preview_log = os_log_create("com.apple.NanoCamera", "preview");

  return MEMORY[0x2821F96F8]();
}

__CFString *NSStringFromViewfinderReliabiliyEvent(uint64_t a1)
{
  if ((a1 - 1) > 0xE)
  {
    return @"OpenCameraMessageReceived";
  }

  else
  {
    return off_278DEF4A8[a1 - 1];
  }
}

void sub_243CC594C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t _ncCaptureModeFromCCCaptureMode(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_243CC7638[a1 - 1];
  }
}

uint64_t _ccCaptureModeFromNCCaptureMode(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_243CC7660[a1 - 1];
  }
}

uint64_t _ncFlashSupportFromCCFlashSupport(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ncFlashModeFromCCFlashMode(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ccFlashModeFromNCFlashMode(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ncHDRSupportFromCCHDRSupport(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t _ncHDRModeFromCCHDRMode(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ccHDRModeFromNCHDRMode(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ncIrisSupportFromCCIrisSupport(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ncIrisModeFromCCIrisMode(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ccIrisModeFromNCIrisMode(int a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t _ncShallowDepthOfFieldStatusFromCCShallowDepthOfFieldStatus(uint64_t result)
{
  if ((result - 1) < 0xF)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t _ncOrientationFromDeviceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return dword_243CC76C0[a1 - 1];
  }
}