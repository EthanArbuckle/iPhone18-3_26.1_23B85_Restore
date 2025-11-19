void sub_258FCAC1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id _CLLogObjectForCategory_MicroLocation_Default()
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v1 = logObject_MicroLocation_Default;

  return v1;
}

void sub_258FCBDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258FCC02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258FCC2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258FCC4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258FCD190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258FCE2F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_258FCFA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258FD0BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void OUTLINED_FUNCTION_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

__CFString *ULServiceQualityReasonToString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_2798D27A8[a1];
  }
}

__CFString *ULConfidenceReasonToString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_2798D27F0[a1];
  }
}

__CFString *ULServiceSuspendReasonToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_2798D2830[a1];
  }
}

__CFString *ULServiceQualityToString(uint64_t a1)
{
  if (a1 > 19)
  {
    if (a1 > 28)
    {
      if (a1 == 29)
      {
        return @"HighCandidateHigh";
      }

      if (a1 == 30)
      {
        return @"High";
      }
    }

    else
    {
      if (a1 == 20)
      {
        return @"Medium";
      }

      if (a1 == 28)
      {
        return @"HighCandidateLow";
      }
    }
  }

  else if (a1 > 8)
  {
    if (a1 == 9)
    {
      return @"LowCandidateHigh";
    }

    if (a1 == 10)
    {
      return @"Low";
    }
  }

  else
  {
    if (!a1)
    {
      return @"Invalid";
    }

    if (a1 == 8)
    {
      return @"LowCandidateLow";
    }
  }

  return @"Unknown";
}

__CFString *ULServiceStateToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Suspended";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Running";
  }
}

__CFString *ULConfidenceToString(uint64_t a1)
{
  v1 = @"Unknown";
  v2 = @"Medium";
  v3 = @"High";
  if (a1 != 30)
  {
    v3 = @"Unknown";
  }

  if (a1 != 20)
  {
    v2 = v3;
  }

  if (a1 == 10)
  {
    v1 = @"Low";
  }

  if (a1 == 1)
  {
    v1 = @"Invalid";
  }

  if (a1 <= 19)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *ULServiceTypeToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_2798D2888[a1];
  }
}

__CFString *ULLocationTypeToString(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 30)
      {
        return @"Other";
      }

      return @"Unknown";
    }

    return @"Custom";
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return @"Work";
      }

      return @"Unknown";
    }

    return @"Home";
  }
}

__CFString *ULDeviceClassToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"AirPods";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Main";
  }
}

__CFString *ULPolarisManagerTaskToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2798D2980[a1];
  }
}

__CFString *ULPredictionsUpdateTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2798D2998[a1];
  }
}