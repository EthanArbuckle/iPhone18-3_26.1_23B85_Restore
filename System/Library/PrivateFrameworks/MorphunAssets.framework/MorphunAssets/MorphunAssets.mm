void std::__tree<morphun::util::ULocale>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<morphun::util::ULocale>::destroy(a1, *a2);
    std::__tree<morphun::util::ULocale>::destroy(a1, a2[1]);
    (*(a2[4] + 8))();

    operator delete(a2);
  }
}

void MorphunLogInitIfNeeded()
{
  if (MorphunLogInitIfNeeded_once != -1)
  {
    MorphunLogInitIfNeeded_cold_1();
  }
}

void sub_25AACB4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25AACCC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25AACE2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 4) = v3;
  *(a3 + 12) = 2114;
  *(a3 + 14) = result;
  *(a3 + 22) = 2114;
  *(a3 + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t __MorphunLogInitIfNeeded_block_invoke()
{
  MorphunAssetOSLog = os_log_create("com.apple.siri.morphun", kMorphunLogContextAsset);

  return MEMORY[0x2821F96F8]();
}

void operator delete(void *__p)
{
    ;
  }
}