void CRLogInitIfNeeded()
{
  if (CRLogInitIfNeeded_once != -1)
  {
    CRLogInitIfNeeded_cold_1();
  }
}

uint64_t __CRLogInitIfNeeded_block_invoke()
{
  CRLogContextCards = os_log_create(CRLoggingSubsystem, CRContextCards);

  return MEMORY[0x2821F96F8]();
}

void sub_24327DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_24327E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CRErrorCodeGetName(uint64_t a1)
{
  v1 = @"CRErrorImageLoadUnsupportedScheme";
  v2 = @"CRErrorImageLoadMissingIdentifier";
  v3 = @"CRErrorImageLoadURLError";
  if (a1 != 204)
  {
    v3 = 0;
  }

  if (a1 != 203)
  {
    v2 = v3;
  }

  if (a1 != 202)
  {
    v1 = v2;
  }

  v4 = @"CRErrorImageLoadUnsupportedType";
  if (a1 != 201)
  {
    v4 = 0;
  }

  if (a1 == 200)
  {
    v4 = @"CRErrorImageLoadGeneric";
  }

  if (!a1)
  {
    v4 = @"CRErrorGeneric";
  }

  if (a1 <= 201)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

void sub_24328377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void sub_243285950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243285D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2432860C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}