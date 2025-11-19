double BRKPreferredAudioFormat@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x40CF400000000000;
  *(a1 + 8) = xmmword_241EDFBF0;
  *&result = 0x100000002;
  *(a1 + 24) = xmmword_241EDFC00;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *NSStringFromDataCollectionEnabled(int a1)
{
  if (!a1)
  {
    return @"disabled";
  }

  if (BRKIsInternalBuild())
  {
    return @"internal";
  }

  return @"external";
}

void sub_241EDE46C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}