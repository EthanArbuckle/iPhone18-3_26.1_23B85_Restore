id MSUDASharedLogger()
{
  if (MSUDASharedLogger_pred != -1)
  {
    MSUDASharedLogger_cold_1();
  }

  v1 = MSUDASharedLogger___instance;

  return v1;
}

void __MSUDASharedLogger_block_invoke()
{
  v0 = os_log_create("com.apple.MSUDataAccessor", "MSUDataAccessor");
  v1 = MSUDASharedLogger___instance;
  MSUDASharedLogger___instance = v0;
}

void sub_22E73B6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 192; i != -24; i -= 24)
  {
    __destructor_8_s8_s16(&a9 + i);
  }

  _Unwind_Resume(a1);
}

void __destructor_8_s8_s16(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t lookupPathForPersonalizedData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 6000;
  }

  v6 = +[MSUDataAccessor sharedDataAccessor];
  v11 = 0;
  v7 = [v6 copyPathForPersonalizedData:a1 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = [v8 code];
  }

  else
  {
    if (!v7)
    {
      return 6001;
    }

    if ([v7 getCString:a2 maxLength:a3 encoding:4])
    {
      v9 = 0;
    }

    else
    {
      v9 = 6001;
    }
  }

  return v9;
}

uint64_t lookupPathForPersistentData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 6000;
  }

  v6 = +[MSUDataAccessor sharedDataAccessor];
  v11 = 0;
  v7 = [v6 copyPathForPersistentData:a1 error:&v11];
  v8 = v11;

  if (v8)
  {
    v9 = [v8 code];
  }

  else
  {
    if (!v7)
    {
      return 6001;
    }

    if ([v7 getCString:a2 maxLength:a3 encoding:4])
    {
      v9 = 0;
    }

    else
    {
      v9 = 6001;
    }
  }

  return v9;
}

void sub_22E73D044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __copy_helper_block_e8_32s40s48s56r64r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v7 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v7, 8);
}

void __destroy_helper_block_e8_32s40s48s56r64r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);

  v2 = *(a1 + 32);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}