void sub_243B93244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ch_xpc_handle()
{
  if (ch_xpc_handle__pasOnceToken2 != -1)
  {
    dispatch_once(&ch_xpc_handle__pasOnceToken2, &__block_literal_global_23);
  }

  v1 = ch_xpc_handle__pasExprOnceResult;

  return v1;
}

void __ch_xpc_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.cognitivehealth", "XPCClient");
  v2 = ch_xpc_handle__pasExprOnceResult;
  ch_xpc_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id ch_sensor_data_handle()
{
  if (ch_sensor_data_handle__pasOnceToken3 != -1)
  {
    dispatch_once(&ch_sensor_data_handle__pasOnceToken3, &__block_literal_global_4);
  }

  v1 = ch_sensor_data_handle__pasExprOnceResult;

  return v1;
}

void __ch_sensor_data_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.cognitivehealth", "Sensor Data");
  v2 = ch_sensor_data_handle__pasExprOnceResult;
  ch_sensor_data_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id ch_test_handle()
{
  if (ch_test_handle__pasOnceToken4 != -1)
  {
    dispatch_once(&ch_test_handle__pasOnceToken4, &__block_literal_global_7);
  }

  v1 = ch_test_handle__pasExprOnceResult;

  return v1;
}

void __ch_test_handle_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.cognitivehealth", "Test");
  v2 = ch_test_handle__pasExprOnceResult;
  ch_test_handle__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_243B95C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_243B96B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__176(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}