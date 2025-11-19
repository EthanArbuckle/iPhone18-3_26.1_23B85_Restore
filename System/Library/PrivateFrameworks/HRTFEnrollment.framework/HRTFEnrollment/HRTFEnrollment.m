id HRTFLogObjectForCategory_HRTFSerializableCaptureData()
{
  if (onceTokenHRTFSerializableCaptureData != -1)
  {
    HRTFLogObjectForCategory_HRTFSerializableCaptureData_cold_1();
  }

  v1 = logObjHRTFSerializableCaptureData;

  return v1;
}

void __planarDeallocateHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  if (a2)
  {
    __planarDeallocateHelper_cold_1();
  }

  for (i = a4; i; --i)
  {
    v7 = *a5++;
    free(v7);
  }
}

id HRTFLogObjectForCategory_HRTFSyncedCaptureSource()
{
  if (onceTokenHRTFSyncedCaptureSource != -1)
  {
    HRTFLogObjectForCategory_HRTFSyncedCaptureSource_cold_1();
  }

  v1 = logObjHRTFSyncedCaptureSource;

  return v1;
}

id HRTFLogObjectForCategory_HRTFEnrollmentSession()
{
  if (onceTokenHRTFEnrollmentSession != -1)
  {
    HRTFLogObjectForCategory_HRTFEnrollmentSession_cold_1();
  }

  v1 = logObjHRTFEnrollmentSession;

  return v1;
}

void sub_25098A840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25098AAC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_25098AFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25098B21C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_25098B6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25098B900(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_25098C1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__205(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x253065810](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}