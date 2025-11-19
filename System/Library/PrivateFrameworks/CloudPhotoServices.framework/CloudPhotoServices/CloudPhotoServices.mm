void sub_2439D5880(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

id __CPLCloudPhotoServicesOSLogDomain()
{
  if (__CPLCloudPhotoServicesOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLCloudPhotoServicesOSLogDomain_onceToken, &__block_literal_global_229);
  }

  v1 = __CPLCloudPhotoServicesOSLogDomain_result;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2439D71C8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Unwind_Resume(a1);
}

id __CPLDropDerivativesOSLogDomain()
{
  if (__CPLDropDerivativesOSLogDomain_onceToken != -1)
  {
    dispatch_once(&__CPLDropDerivativesOSLogDomain_onceToken, &__block_literal_global_232);
  }

  v1 = __CPLDropDerivativesOSLogDomain_result;

  return v1;
}

void sub_2439D7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __cpl_dispatch_async_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}