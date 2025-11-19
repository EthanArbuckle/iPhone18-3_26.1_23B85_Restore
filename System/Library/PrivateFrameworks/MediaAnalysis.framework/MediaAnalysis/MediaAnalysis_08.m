uint64_t VCPMAIsAppleInternal()
{
  if (VCPMAIsAppleInternal_onceToken != -1)
  {
    VCPMAIsAppleInternal_cold_1();
  }

  return VCPMAIsAppleInternal_isAppleInternal;
}

uint64_t __VCPMAIsAppleInternal_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  VCPMAIsAppleInternal_isAppleInternal = result;
  return result;
}

void sub_1C9E9A49C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1C9E9B4BC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

ma::Segment *ma::FineSubjectMotionSegment::FineSubjectMotionSegment(ma::FineSubjectMotionSegment *this)
{
  result = ma::Segment::Segment(this);
  *result = &unk_1F4969308;
  *(result + 19) = 0;
  *(result + 20) = 0;
  *(result + 18) = -1;
  return result;
}

float ma::FineSubjectMotionSegment::UpdateStats(ma::FineSubjectMotionSegment *this, const ma::MotionResult *a2)
{
  ++*(this + 5);
  result = *(a2 + 12) + *(this + 19);
  *(this + 19) = result;
  return result;
}

float ma::FineSubjectMotionSegment::ResetStats(ma::FineSubjectMotionSegment *this, const ma::MotionResult *a2)
{
  *(this + 5) = *(a2 + 81);
  result = *(a2 + 12);
  *(this + 19) = result;
  return result;
}

uint64_t ma::FineSubjectMotionSegment::CalculateActionScore(uint64_t this)
{
  v1 = *(this + 76) / *(this + 16);
  if (v1 < 10.0)
  {
    v2 = *(this + 76) / *(this + 16);
  }

  else
  {
    v2 = 10.0;
  }

  v3 = v1 > 0.0;
  v4 = 0.0;
  if (v3)
  {
    v4 = v2 / 10.0;
  }

  *(this + 80) = v4;
  return this;
}

uint64_t ma::FineSubjectMotionSegment::ToDictionary(ma::FineSubjectMotionSegment *this, const __CFAllocator *a2, const __CFDictionary **a3)
{
  result = ma::Segment::ToDictionary(this, a2, a3);
  if (!result)
  {
    v6 = *a3;
    if (*a3)
    {
      valuePtr = *(this + 18);
      v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v10 = v7;
      if (v7)
      {
        CFDictionarySetValue(v6, @"Action", v7);
        CF<__CVBuffer *>::~CF(&v10);
        valuePtr = *(this + 20);
        v8 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
        v10 = v8;
        if (v8)
        {
          CFDictionarySetValue(v6, @"ActionScore", v8);
          CF<__CVBuffer *>::~CF(&v10);
          result = 0;
LABEL_8:
          *a3 = v6;
          return result;
        }
      }

      CF<__CVBuffer *>::~CF(&v10);
      CFRelease(v6);
      v6 = 0;
    }

    result = 4294967188;
    goto LABEL_8;
  }

  return result;
}

void sub_1C9E9C418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

uint64_t ma::FineSubjectMotionSegment::FromDictionary(ma::FineSubjectMotionSegment *this, const __CFDictionary *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  ma::Segment::FromDictionary(this, a2);
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"Action");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr;
  }

  else
  {
    v5 = 0;
  }

  *(this + 18) = v5;
  v10 = 0;
  v7 = CFDictionaryGetValue(a2, @"ActionScore");
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberFloat32Type, &v10);
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  result = 0;
  *(this + 20) = v8;
  return result;
}

void VCPPerformanceReporter::VCPPerformanceReporter(VCPPerformanceReporter *this)
{
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  mach_timebase_info(this);
}

void sub_1C9E9D294(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::destroy(v2, *v3);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void ___ZN22VCPPerformanceReporter6SharedEv_block_invoke()
{
  v0 = operator new(0x60uLL, MEMORY[0x1E69E5398]);
  v1 = v0;
  if (v0)
  {
    VCPPerformanceReporter::VCPPerformanceReporter(v0);
  }

  VCPPerformanceReporter::Shared(void)::instance = v1;
}

void VCPPerformanceReporter::RecordMeasurement(VCPPerformanceReporter *this, const char *a2, uint64_t a3, double a4, double a5)
{
  v17 = *MEMORY[0x1E69E9840];
  LODWORD(a5) = *(this + 1);
  v7 = (*this * a3) / *&a5 / 1000000000.0;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = a2;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Perf] %s: %0.6fs", buf, 0x16u);
  }

  std::mutex::lock((this + 8));
  v8 = strlen(a2);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v16 = v8;
  if (v8)
  {
    memcpy(buf, a2, v8);
  }

  buf[v9] = 0;
  v10 = std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 72, buf);
  v11 = *(v10 + 56);
  v12 = *(v10 + 64);
  if (v11 > v7)
  {
    v11 = v7;
  }

  if (v12 < v7)
  {
    v12 = v7;
  }

  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 72) = v7 + *(v10 + 72);
  ++*(v10 + 80);
  if (v16 < 0)
  {
    operator delete(*buf);
  }

  std::mutex::unlock((this + 8));
}

void sub_1C9E9D510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v16 + 8));
  _Unwind_Resume(a1);
}

void VCPPerformanceReporter::ReportSummary(VCPPerformanceReporter *this)
{
  v24 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 8));
  if (*(this + 11))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v13 = "Measurement";
      v14 = 2080;
      v15 = "Min (s)";
      v16 = 2080;
      v17 = "Max (s)";
      v18 = 2080;
      v19 = COERCE_DOUBLE("Avg (s)");
      v20 = 2080;
      v21 = "Total";
      v22 = 2080;
      v23 = "Count";
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%-40s  %10s  %10s  %10s  %10s  %10s", buf, 0x3Eu);
    }

    v2 = *(this + 9);
    if (v2 != (this + 80))
    {
      v3 = MEMORY[0x1E69E9C10];
      do
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          v4 = v2 + 32;
          if (*(v2 + 55) < 0)
          {
            v4 = *v4;
          }

          v5 = *(v2 + 7);
          v6 = *(v2 + 8);
          v7 = *(v2 + 9);
          v8 = *(v2 + 10);
          *buf = 136316418;
          v13 = v4;
          v14 = 2048;
          v15 = v5;
          v16 = 2048;
          v17 = v6;
          v18 = 2048;
          v19 = v7 / v8;
          v20 = 2048;
          v21 = *&v7;
          v22 = 2048;
          v23 = v8;
          _os_log_impl(&dword_1C9B70000, v3, OS_LOG_TYPE_DEFAULT, "  %-38s  %10.6f  %10.6f  %10.6f  %10.6f  %10zu", buf, 0x3Eu);
        }

        v9 = *(v2 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v2 + 2);
            v11 = *v10 == v2;
            v2 = v10;
          }

          while (!v11);
        }

        v2 = v10;
      }

      while (v10 != (this + 80));
    }
  }

  std::mutex::unlock((this + 8));
}

__CFDictionary *VCPPerformanceReporter::QueryMeasurements(VCPPerformanceReporter *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  std::mutex::lock((this + 8));
  v3 = *(this + 9);
  v22 = this;
  v4 = this + 80;
  if (v3 != v4)
  {
    v5 = MEMORY[0x1E695E9D8];
    v6 = MEMORY[0x1E695E9E8];
    do
    {
      v7 = CFDictionaryCreateMutable(0, 0, v5, v6);
      value = v7;
      valuePtr = *(v3 + 7);
      v8 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
      v25 = v8;
      if (v8)
      {
        CFDictionarySetValue(v7, @"Minimum", v8);
      }

      CF<__CVBuffer *>::~CF(&v25);
      v9 = value;
      valuePtr = *(v3 + 8);
      v10 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
      v25 = v10;
      if (v10)
      {
        CFDictionarySetValue(v9, @"Maximum", v10);
      }

      CF<__CVBuffer *>::~CF(&v25);
      v11 = value;
      valuePtr = *(v3 + 9) / v3[10];
      v12 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
      v25 = v12;
      if (v12)
      {
        CFDictionarySetValue(v11, @"Average", v12);
      }

      CF<__CVBuffer *>::~CF(&v25);
      v13 = value;
      valuePtr = *(v3 + 9);
      v14 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
      v25 = v14;
      if (v14)
      {
        CFDictionarySetValue(v13, @"Total", v14);
      }

      CF<__CVBuffer *>::~CF(&v25);
      v15 = value;
      LODWORD(valuePtr) = v3[10];
      v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v25 = v16;
      if (v16)
      {
        CFDictionarySetValue(v15, @"Count", v16);
      }

      CF<__CVBuffer *>::~CF(&v25);
      if (*(v3 + 55) >= 0)
      {
        v17 = (v3 + 4);
      }

      else
      {
        v17 = v3[4];
      }

      v25 = CFStringCreateWithCString(0, v17, 0x8000100u);
      CFDictionarySetValue(Mutable, v25, value);
      CF<__CVBuffer *>::~CF(&v25);
      CF<__CVBuffer *>::~CF(&value);
      v18 = v3[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v3[2];
          v20 = *v19 == v3;
          v3 = v19;
        }

        while (!v20);
      }

      v3 = v19;
    }

    while (v19 != v4);
  }

  std::mutex::unlock((v22 + 8));
  return Mutable;
}

void sub_1C9E9DA38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  CF<__CVBuffer *>::~CF(va1);
  CF<__CVBuffer *>::~CF(va);
  std::mutex::unlock((a2 + 8));
  _Unwind_Resume(a1);
}

void VCPPerformanceReporter::Reset(VCPPerformanceReporter *this)
{
  std::mutex::lock((this + 8));
  std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::destroy(this + 72, *(this + 10));
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = this + 80;

  std::mutex::unlock((this + 8));
}

void __VCPSignPostLog_block_invoke()
{
  v0 = os_log_create("com.apple.mediaanalysis", "signpost");
  v1 = VCPSignPostLog::log;
  VCPSignPostLog::log = v0;
}

id VCPSignPostPersistentLog()
{
  if (VCPSignPostPersistentLog::token != -1)
  {
    VCPSignPostPersistentLog_cold_1();
  }

  v1 = VCPSignPostPersistentLog::log;

  return v1;
}

void __VCPSignPostPersistentLog_block_invoke()
{
  v0 = os_log_create("com.apple.mediaanalysis", "signpostPersistent");
  v1 = VCPSignPostPersistentLog::log;
  VCPSignPostPersistentLog::log = v0;
}

void VCPPerformance_RecordMeasurement(char *a1, uint64_t a2, double a3, double a4)
{
  if (VCPPerformanceReporter::Shared(void)::once != -1)
  {
    VCPPerformance_RecordMeasurement_cold_1();
  }

  v6 = VCPPerformanceReporter::Shared(void)::instance;

  VCPPerformanceReporter::RecordMeasurement(v6, a1, a2, a3, a4);
}

void VCPPerformance_LogMeasurement()
{
  if (VCPPerformanceReporter::Shared(void)::once != -1)
  {
    VCPPerformance_RecordMeasurement_cold_1();
  }
}

void VCPPerformance_ReportSummary()
{
  if (VCPPerformanceReporter::Shared(void)::once != -1)
  {
    VCPPerformance_RecordMeasurement_cold_1();
  }

  v1 = VCPPerformanceReporter::Shared(void)::instance;

  VCPPerformanceReporter::ReportSummary(v1);
}

__CFDictionary *VCPPerformance_QueryMeasurements()
{
  if (VCPPerformanceReporter::Shared(void)::once != -1)
  {
    VCPPerformance_RecordMeasurement_cold_1();
  }

  v1 = VCPPerformanceReporter::Shared(void)::instance;

  return VCPPerformanceReporter::QueryMeasurements(v1);
}

void VCPPerformance_Reset()
{
  if (VCPPerformanceReporter::Shared(void)::once != -1)
  {
    VCPPerformance_RecordMeasurement_cold_1();
  }

  v1 = VCPPerformanceReporter::Shared(void)::instance;

  VCPPerformanceReporter::Reset(v1);
}

void std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::__map_value_compare<std::string,std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,VCPPerformanceReporter::VCPPerformanceStats>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_1C9E9E174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VCPMADCoreAnalyticsManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t VCPProtoMovieOrientationResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MADProtoDetectedFaceReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v239) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v239 & 0x7F) << v6;
      if ((v239 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_318;
      case 2u:
        *(a1 + 276) |= 0x10000uLL;
        v239 = 0;
        v109 = [a2 position] + 8;
        if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
        {
          v231 = [a2 data];
          [v231 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 136;
        goto LABEL_451;
      case 3u:
        *(a1 + 276) |= 0x40uLL;
        v239 = 0;
        v97 = [a2 position] + 8;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
        {
          v228 = [a2 data];
          [v228 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 56;
        goto LABEL_451;
      case 4u:
        *(a1 + 276) |= 0x80uLL;
        v239 = 0;
        v105 = [a2 position] + 8;
        if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
        {
          v229 = [a2 data];
          [v229 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 64;
        goto LABEL_451;
      case 5u:
        *(a1 + 276) |= 4uLL;
        v239 = 0;
        v68 = [a2 position] + 8;
        if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 8, v69 <= objc_msgSend(a2, "length")))
        {
          v226 = [a2 data];
          [v226 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 24;
        goto LABEL_451;
      case 6u:
        *(a1 + 276) |= 8uLL;
        v239 = 0;
        v131 = [a2 position] + 8;
        if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 8, v132 <= objc_msgSend(a2, "length")))
        {
          v233 = [a2 data];
          [v233 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 32;
        goto LABEL_451;
      case 7u:
        *(a1 + 276) |= 0x20uLL;
        v239 = 0;
        v145 = [a2 position] + 8;
        if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 8, v146 <= objc_msgSend(a2, "length")))
        {
          v234 = [a2 data];
          [v234 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 48;
        goto LABEL_451;
      case 8u:
        *(a1 + 276) |= 0x10uLL;
        v239 = 0;
        v107 = [a2 position] + 8;
        if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
        {
          v230 = [a2 data];
          [v230 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 40;
        goto LABEL_451;
      case 9u:
        v159 = 0;
        v160 = 0;
        v161 = 0;
        *(a1 + 276) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v162 = [a2 position] + 1;
          if (v162 >= [a2 position] && (v163 = objc_msgSend(a2, "position") + 1, v163 <= objc_msgSend(a2, "length")))
          {
            v164 = [a2 data];
            [v164 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v161 |= (v239 & 0x7F) << v159;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v12 = v160++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_389;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v161;
        }

LABEL_389:
        v215 = 164;
        goto LABEL_417;
      case 0xAu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 276) |= 0x100uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v239 & 0x7F) << v79;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            v78 = 0;
            goto LABEL_354;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v81;
        }

LABEL_354:
        v217 = 72;
        goto LABEL_385;
      case 0xBu:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        *(a1 + 276) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v156 = [a2 position] + 1;
          if (v156 >= [a2 position] && (v157 = objc_msgSend(a2, "position") + 1, v157 <= objc_msgSend(a2, "length")))
          {
            v158 = [a2 data];
            [v158 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v155 |= (v239 & 0x7F) << v153;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v12 = v154++ >= 9;
          if (v12)
          {
            v78 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v155;
        }

LABEL_384:
        v217 = 120;
        goto LABEL_385;
      case 0xCu:
        *(a1 + 276) |= 0x2000uLL;
        v239 = 0;
        v66 = [a2 position] + 8;
        if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 8, v67 <= objc_msgSend(a2, "length")))
        {
          v225 = [a2 data];
          [v225 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 112;
        goto LABEL_451;
      case 0xDu:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 276) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v239 & 0x7F) << v72;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v12 = v73++ >= 9;
          if (v12)
          {
            v78 = 0;
            goto LABEL_350;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v74;
        }

LABEL_350:
        v217 = 152;
        goto LABEL_385;
      case 0xEu:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 276) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v239 & 0x7F) << v139;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v78 = 0;
            goto LABEL_378;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v141;
        }

LABEL_378:
        v217 = 144;
        goto LABEL_385;
      case 0xFu:
        *(a1 + 276) |= 0x8000uLL;
        v239 = 0;
        v58 = [a2 position] + 8;
        if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 8, v59 <= objc_msgSend(a2, "length")))
        {
          v222 = [a2 data];
          [v222 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 128;
        goto LABEL_451;
      case 0x10u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *(a1 + 276) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v102 = [a2 position] + 1;
          if (v102 >= [a2 position] && (v103 = objc_msgSend(a2, "position") + 1, v103 <= objc_msgSend(a2, "length")))
          {
            v104 = [a2 data];
            [v104 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v101 |= (v239 & 0x7F) << v99;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v12 = v100++ >= 9;
          if (v12)
          {
            LOBYTE(v55) = 0;
            goto LABEL_364;
          }
        }

        v55 = (v101 != 0) & ~[a2 hasError];
LABEL_364:
        v216 = 270;
        goto LABEL_412;
      case 0x11u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 276) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v239 & 0x7F) << v49;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            LOBYTE(v55) = 0;
            goto LABEL_342;
          }
        }

        v55 = (v51 != 0) & ~[a2 hasError];
LABEL_342:
        v216 = 271;
        goto LABEL_412;
      case 0x12u:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        *(a1 + 276) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v120 = [a2 position] + 1;
          if (v120 >= [a2 position] && (v121 = objc_msgSend(a2, "position") + 1, v121 <= objc_msgSend(a2, "length")))
          {
            v122 = [a2 data];
            [v122 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v119 |= (v239 & 0x7F) << v117;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v117 += 7;
          v12 = v118++ >= 9;
          if (v12)
          {
            LOBYTE(v55) = 0;
            goto LABEL_370;
          }
        }

        v55 = (v119 != 0) & ~[a2 hasError];
LABEL_370:
        v216 = 274;
        goto LABEL_412;
      case 0x13u:
        v147 = 0;
        v148 = 0;
        v149 = 0;
        *(a1 + 276) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v150 = [a2 position] + 1;
          if (v150 >= [a2 position] && (v151 = objc_msgSend(a2, "position") + 1, v151 <= objc_msgSend(a2, "length")))
          {
            v152 = [a2 data];
            [v152 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v149 |= (v239 & 0x7F) << v147;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v147 += 7;
          v12 = v148++ >= 9;
          if (v12)
          {
            LOBYTE(v55) = 0;
            goto LABEL_380;
          }
        }

        v55 = (v149 != 0) & ~[a2 hasError];
LABEL_380:
        v216 = 269;
        goto LABEL_412;
      case 0x14u:
        *(a1 + 276) |= 2uLL;
        v239 = 0;
        v186 = [a2 position] + 8;
        if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 8, v187 <= objc_msgSend(a2, "length")))
        {
          v236 = [a2 data];
          [v236 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 16;
        goto LABEL_451;
      case 0x15u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        *(a1 + 276) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v128 = [a2 position] + 1;
          if (v128 >= [a2 position] && (v129 = objc_msgSend(a2, "position") + 1, v129 <= objc_msgSend(a2, "length")))
          {
            v130 = [a2 data];
            [v130 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v127 |= (v239 & 0x7F) << v125;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v12 = v126++ >= 9;
          if (v12)
          {
            LOBYTE(v55) = 0;
            goto LABEL_372;
          }
        }

        v55 = (v127 != 0) & ~[a2 hasError];
LABEL_372:
        v216 = 272;
        goto LABEL_412;
      case 0x16u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 276) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v239 & 0x7F) << v133;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            LOBYTE(v55) = 0;
            goto LABEL_374;
          }
        }

        v55 = (v135 != 0) & ~[a2 hasError];
LABEL_374:
        v216 = 273;
        goto LABEL_412;
      case 0x17u:
        *(a1 + 276) |= 1uLL;
        v239 = 0;
        v178 = [a2 position] + 8;
        if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 8, v179 <= objc_msgSend(a2, "length")))
        {
          v235 = [a2 data];
          [v235 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 8;
        goto LABEL_451;
      case 0x18u:
        *(a1 + 276) |= 0x1000uLL;
        v239 = 0;
        v188 = [a2 position] + 8;
        if (v188 >= [a2 position] && (v189 = objc_msgSend(a2, "position") + 8, v189 <= objc_msgSend(a2, "length")))
        {
          v237 = [a2 data];
          [v237 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 104;
        goto LABEL_451;
      case 0x19u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 276) |= 0x200uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v239 & 0x7F) << v91;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v78 = 0;
            goto LABEL_362;
          }
        }

        if ([a2 hasError])
        {
          v78 = 0;
        }

        else
        {
          v78 = v93;
        }

LABEL_362:
        v217 = 80;
LABEL_385:
        *(a1 + v217) = v78;
        goto LABEL_452;
      case 0x1Au:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 276) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v239 & 0x7F) << v85;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_358;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v87;
        }

LABEL_358:
        v215 = 160;
        goto LABEL_417;
      case 0x1Bu:
        v208 = 0;
        v209 = 0;
        v210 = 0;
        *(a1 + 276) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v211 = [a2 position] + 1;
          if (v211 >= [a2 position] && (v212 = objc_msgSend(a2, "position") + 1, v212 <= objc_msgSend(a2, "length")))
          {
            v213 = [a2 data];
            [v213 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v210 |= (v239 & 0x7F) << v208;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v208 += 7;
          v12 = v209++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_416;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v210;
        }

LABEL_416:
        v215 = 256;
        goto LABEL_417;
      case 0x1Cu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 276) |= 0x400000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v239 & 0x7F) << v37;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_336;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v39;
        }

LABEL_336:
        v215 = 172;
        goto LABEL_417;
      case 0x1Du:
        v190 = 0;
        v191 = 0;
        v192 = 0;
        *(a1 + 276) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v193 = [a2 position] + 1;
          if (v193 >= [a2 position] && (v194 = objc_msgSend(a2, "position") + 1, v194 <= objc_msgSend(a2, "length")))
          {
            v195 = [a2 data];
            [v195 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v192 |= (v239 & 0x7F) << v190;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v190 += 7;
          v12 = v191++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_405;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v192;
        }

LABEL_405:
        v215 = 264;
        goto LABEL_417;
      case 0x1Eu:
        v196 = 0;
        v197 = 0;
        v198 = 0;
        *(a1 + 276) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v199 = [a2 position] + 1;
          if (v199 >= [a2 position] && (v200 = objc_msgSend(a2, "position") + 1, v200 <= objc_msgSend(a2, "length")))
          {
            v201 = [a2 data];
            [v201 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v198 |= (v239 & 0x7F) << v196;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v196 += 7;
          v12 = v197++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_409;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v198;
        }

LABEL_409:
        v215 = 200;
        goto LABEL_417;
      case 0x1Fu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        *(a1 + 276) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v168 = [a2 position] + 1;
          if (v168 >= [a2 position] && (v169 = objc_msgSend(a2, "position") + 1, v169 <= objc_msgSend(a2, "length")))
          {
            v170 = [a2 data];
            [v170 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v167 |= (v239 & 0x7F) << v165;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v12 = v166++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_393;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v167;
        }

LABEL_393:
        v215 = 240;
        goto LABEL_417;
      case 0x20u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        *(a1 + 276) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v114 = [a2 position] + 1;
          if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 1, v115 <= objc_msgSend(a2, "length")))
          {
            v116 = [a2 data];
            [v116 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v113 |= (v239 & 0x7F) << v111;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v12 = v112++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v113;
        }

LABEL_368:
        v215 = 228;
        goto LABEL_417;
      case 0x21u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        *(a1 + 276) |= 0x800000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v174 = [a2 position] + 1;
          if (v174 >= [a2 position] && (v175 = objc_msgSend(a2, "position") + 1, v175 <= objc_msgSend(a2, "length")))
          {
            v176 = [a2 data];
            [v176 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v173 |= (v239 & 0x7F) << v171;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v12 = v172++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_397;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v173;
        }

LABEL_397:
        v215 = 176;
        goto LABEL_417;
      case 0x22u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 276) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v239 & 0x7F) << v60;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v12 = v61++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_346;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v62;
        }

LABEL_346:
        v215 = 248;
        goto LABEL_417;
      case 0x23u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 276) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v239 & 0x7F) << v43;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_340;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v45;
        }

LABEL_340:
        v215 = 244;
        goto LABEL_417;
      case 0x24u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 276) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v239 & 0x7F) << v25;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_328;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_328:
        v215 = 252;
        goto LABEL_417;
      case 0x25u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 276) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v239 & 0x7F) << v31;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_332;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v33;
        }

LABEL_332:
        v215 = 260;
        goto LABEL_417;
      case 0x26u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 276) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v239 & 0x7F) << v18;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v12 = v19++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_324;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_324:
        v215 = 168;
        goto LABEL_417;
      case 0x27u:
        v202 = 0;
        v203 = 0;
        v204 = 0;
        *(a1 + 276) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v205 = [a2 position] + 1;
          if (v205 >= [a2 position] && (v206 = objc_msgSend(a2, "position") + 1, v206 <= objc_msgSend(a2, "length")))
          {
            v207 = [a2 data];
            [v207 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v204 |= (v239 & 0x7F) << v202;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v202 += 7;
          v12 = v203++ >= 9;
          if (v12)
          {
            LOBYTE(v55) = 0;
            goto LABEL_411;
          }
        }

        v55 = (v204 != 0) & ~[a2 hasError];
LABEL_411:
        v216 = 268;
LABEL_412:
        *(a1 + v216) = v55;
        goto LABEL_452;
      case 0x28u:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 276) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v239) = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:&v239 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v239 & 0x7F) << v180;
          if ((v239 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_401;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v182;
        }

LABEL_401:
        v215 = 224;
LABEL_417:
        *(a1 + v215) = v24;
        goto LABEL_452;
      case 0x29u:
        *(a1 + 276) |= 0x400uLL;
        v239 = 0;
        v70 = [a2 position] + 8;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 8, v71 <= objc_msgSend(a2, "length")))
        {
          v227 = [a2 data];
          [v227 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 88;
        goto LABEL_451;
      case 0x2Au:
        *(a1 + 276) |= 0x800uLL;
        v239 = 0;
        v123 = [a2 position] + 8;
        if (v123 >= [a2 position] && (v124 = objc_msgSend(a2, "position") + 8, v124 <= objc_msgSend(a2, "length")))
        {
          v232 = [a2 data];
          [v232 getBytes:&v239 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v223 = v239;
        v224 = 96;
LABEL_451:
        *(a1 + v224) = v223;
        goto LABEL_452;
      case 0x2Bu:
        v177 = objc_alloc_init(VCPProtoBounds);
        objc_storeStrong((a1 + 216), v177);
        v239 = 0;
        v240 = 0;
        if (PBReaderPlaceMark() && VCPProtoBoundsReadFrom(v177, a2))
        {
          goto LABEL_277;
        }

        goto LABEL_454;
      case 0x2Cu:
        *(a1 + 276) |= 0x2000000uLL;
        LODWORD(v239) = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v218 = [a2 data];
          [v218 getBytes:&v239 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v219 = v239;
        v220 = 204;
        goto LABEL_422;
      case 0x2Du:
        *(a1 + 276) |= 0x4000000uLL;
        LODWORD(v239) = 0;
        v56 = [a2 position] + 4;
        if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 4, v57 <= objc_msgSend(a2, "length")))
        {
          v221 = [a2 data];
          [v221 getBytes:&v239 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v219 = v239;
        v220 = 208;
LABEL_422:
        *(a1 + v220) = v219;
        goto LABEL_452;
      case 0x2Eu:
        v177 = objc_alloc_init(MADProtoFaceprint);
        objc_storeStrong((a1 + 192), v177);
        v239 = 0;
        v240 = 0;
        if (PBReaderPlaceMark() && MADProtoFaceprintReadFrom(v177, a2))
        {
LABEL_277:
          PBReaderRecallMark();

LABEL_452:
          v4 = a2;
          continue;
        }

LABEL_454:

        return 0;
      case 0x2Fu:
        v14 = PBReaderReadString();
        v15 = 232;
LABEL_318:
        v214 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_452;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_452;
    }
  }
}

void sub_1C9EA7E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VCPSceneProcessingImageManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C9EA84CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  CVPixelBufferLock::~CVPixelBufferLock(&a9);
  CVPixelBufferLock::~CVPixelBufferLock(&a12);
  _Unwind_Resume(a1);
}

void sub_1C9EA8718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  CF<__CVBuffer *>::~CF(va);
  CVPixelBufferLock::~CVPixelBufferLock(va1);
  CF<__CVBuffer *>::~CF(va2);
  _Unwind_Resume(a1);
}

void sub_1C9EA8A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v11 = va_arg(va4, const void *);
  CF<__CVBuffer *>::~CF(va);
  objc_sync_exit(v3);

  CF<__CVBuffer *>::~CF(va1);
  CF<__CVBuffer *>::~CF(va2);
  CF<__CVBuffer *>::~CF(va3);
  CF<__CVBuffer *>::~CF(va4);

  _Unwind_Resume(a1);
}

void sub_1C9EA8B60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

ma::FineSubjectMotionAnalysis *ma::FineSubjectMotionAnalysis::FineSubjectMotionAnalysis(ma::FineSubjectMotionAnalysis *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = MEMORY[0x1E6960CC0];
  *(this + 24) = *MEMORY[0x1E6960CC0];
  *(this + 5) = *(v2 + 16);
  *(this + 48) = 1;
  *(this + 13) = 0;
  ma::HinkleyDetector::HinkleyDetector(this + 56);
  *(this + 84) = 0;
  return this;
}

uint64_t ma::FineSubjectMotionAnalysis::Initialize(ma::FineSubjectMotionAnalysis *this, char a2)
{
  *(this + 84) = a2;
  ma::HinkleyDetector::Initialize(this + 56, 0.5, 1.5, 0x14u >> a2);

  return MotionAnalysis<ma::FineSubjectMotionSegment>::Initialize(this);
}

uint64_t MotionAnalysis<ma::FineSubjectMotionSegment>::Initialize(uint64_t a1)
{
  if (*(a1 + 16) || *(a1 + 8))
  {
    return 4294967246;
  }

  *(a1 + 16) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = operator new(0x58uLL, MEMORY[0x1E69E5398]);
  if (v3)
  {
    v4 = v3;
    ma::FineSubjectMotionSegment::FineSubjectMotionSegment(v3);
    *(a1 + 8) = v4;
    if (*(a1 + 16))
    {
      return 0;
    }

    else
    {
      return 4294967188;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    return 4294967188;
  }
}

uint64_t ma::FineSubjectMotionAnalysis::ProcessFrame(ma::FineSubjectMotionAnalysis *this, Frame *a2)
{
  if (*(this + 48) == 1)
  {
    ma::FineSubjectMotionSegment::ResetStats(*(this + 1), &a2->acc_var_.z_);
    v4 = *(this + 1);
    v8 = *(this + 1);
    ma::Segment::SetStart(v4, 0, &v8);
    result = 0;
    *(this + 48) = 0;
    return result;
  }

  if (BYTE1(a2->motion_result_.action_blocks_) == 1)
  {
    if (ma::SubtleMotionAnalysis::DecideSegmentPoint(this, *(this + 1), a2))
    {
      result = ma::FineSubjectMotionAnalysis::AddSegment(this, a2, 0);
      if (result)
      {
        return result;
      }

      ma::FineSubjectMotionSegment::ResetStats(*(this + 1), &a2->acc_var_.z_);
      v6 = *(this + 1);
      frame_idx = a2->frame_idx_;
      v8 = *(&a2->frame_idx_ + 1);
      ma::Segment::SetStart(v6, frame_idx, &v8);
    }

    else
    {
      ma::FineSubjectMotionSegment::UpdateStats(*(this + 1), &a2->acc_var_.z_);
    }
  }

  return 0;
}

uint64_t ma::FineSubjectMotionAnalysis::AddSegment(const __CFArray **this, const ma::Frame *a2, int a3)
{
  v6 = *this;
  v7 = this[1];
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  v10 = *a2;
  if (a3)
  {
    lhs = *(a2 + 4);
    v12 = *(a2 + 28);
    CMTimeAdd(&v14, &lhs, &v12);
  }

  else
  {
    v14 = *(a2 + 4);
  }

  ma::Segment::Finalize(v7, Count, v10 + a3, &v14);
  ma::SubtleMotionSegment::DetermineType(this[1]);
  return MotionAnalysis<ma::FineSubjectMotionSegment>::AddSegment(this);
}

uint64_t MotionAnalysis<ma::FineSubjectMotionSegment>::AddSegment(uint64_t a1)
{
  v2 = operator new(0x58uLL, MEMORY[0x1E69E5398]);
  if (!v2)
  {
    return 4294967188;
  }

  v3 = v2;
  ma::FineSubjectMotionSegment::FineSubjectMotionSegment(v2);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v7 = v4;
  v5 = Vector<ma::Object *>::PushBack(a1);
  if (v5 && v7)
  {
    (*(*v7 + 8))(v7);
  }

  return v5;
}

uint64_t ma::FineSubjectMotionAnalysis::FinalizeSegments(const __CFArray **this, const ma::Frame *a2)
{
  result = ma::FineSubjectMotionAnalysis::AddSegment(this, a2, 1);
  if (!result)
  {
    result = ma::SubtleMotionAnalysis::MergeSameTypeSegments(this);
    if (!result)
    {
      result = ma::FineSubjectMotionAnalysis::MergeShortSegments(this);
      if (!result)
      {
        result = ma::SubtleMotionAnalysis::MergeSameTypeSegments(this);
        if (!result)
        {

          return ma::SubtleMotionAnalysis::StoreSegmentResult(this);
        }
      }
    }
  }

  return result;
}

uint64_t ma::FineSubjectMotionAnalysis::MergeShortSegments(ma::FineSubjectMotionAnalysis *this)
{
  v2 = 0;
  while (1)
  {
    if (v2 == 2 && (*(this + 84) & 1) != 0)
    {
      return 0;
    }

    v3 = ma::FineSubjectMotionAnalysis::MergeShortSegments(void)::kShortDurations[v2];
    NextLongSegment = ma::FineSubjectMotionAnalysis::GetNextLongSegment(this, 0xFFFFFFFFLL, v3, 0);
    if (NextLongSegment == -1)
    {
      break;
    }

    v4 = -1;
    while (1)
    {
      v5 = *this;
      if (*this)
      {
        LODWORD(v5) = CFArrayGetCount(v5);
      }

      if (v4 >= v5)
      {
        break;
      }

      v6 = NextLongSegment;
      v7 = ma::FineSubjectMotionAnalysis::GetNextLongSegment(this, NextLongSegment, v3, 0);
      if (v6 == v7)
      {
        break;
      }

      v4 = v7;
      if (v7 <= v6 + 1)
      {
        NextLongSegment = v6 + 1;
      }

      else
      {
        result = ma::FineSubjectMotionAnalysis::MergeShortSegmentsInBetween(this, v6, v7, &NextLongSegment);
        if (result)
        {
          return result;
        }
      }
    }

    v9 = ma::FineSubjectMotionAnalysis::GetNextLongSegment(this, 0xFFFFFFFFLL, v3, 0);
    ValueAtIndex = CFArrayGetValueAtIndex(*this, v9);
    v11 = *ValueAtIndex;
    time.start.epoch = *(*ValueAtIndex + 40);
    *&time.start.value = *(v11 + 24);
    Seconds = CMTimeGetSeconds(&time.start);
    if (v9 >= 1)
    {
      v13 = Seconds;
      result = ma::FineSubjectMotionAnalysis::MergeSegmentsInRange(this, 0, v9 - (v3 <= v13), 0);
      if (result)
      {
        return result;
      }
    }

    v14 = *this ? CFArrayGetCount(*this) : 0;
    v15 = ma::FineSubjectMotionAnalysis::GetNextLongSegment(this, v14, v3, 1);
    v16 = *this;
    if (*this)
    {
      v17 = (CFArrayGetCount(v16) - 1);
      v16 = *this;
    }

    else
    {
      v17 = -1;
    }

    v18 = CFArrayGetValueAtIndex(v16, v17);
    v19 = *(*v18 + 24);
    v20 = *(*v18 + 56);
    *&time.start.epoch = *(*v18 + 40);
    *&time.duration.timescale = v20;
    *&time.start.value = v19;
    CMTimeRangeGetEnd(&v31, &time);
    v21 = CFArrayGetValueAtIndex(*this, v15);
    v22 = *(*v21 + 24);
    v23 = *(*v21 + 56);
    *&time.start.epoch = *(*v21 + 40);
    *&time.duration.timescale = v23;
    *&time.start.value = v22;
    CMTimeRangeGetEnd(&v29, &time);
    time.start = v31;
    rhs = v29;
    CMTimeSubtract(&v32, &time.start, &rhs);
    v24 = CMTimeGetSeconds(&v32);
    v25 = *this ? CFArrayGetCount(*this) - 1 : -1;
    if (v15 < v25)
    {
      v26 = v24;
      if (v3 <= v26)
      {
        ++v15;
      }

      v27 = *this ? CFArrayGetCount(*this) - 1 : -1;
      result = ma::FineSubjectMotionAnalysis::MergeSegmentsInRange(this, v15, v27, 0);
      if (result)
      {
        return result;
      }
    }

    if (++v2 == 3)
    {
      return 0;
    }
  }

  if (*this)
  {
    v28 = CFArrayGetCount(*this) - 1;
  }

  else
  {
    v28 = -1;
  }

  return ma::FineSubjectMotionAnalysis::MergeSegmentsInRange(this, 0, v28, 0);
}

uint64_t ma::FineSubjectMotionAnalysis::CopyProperty(ma::FineSubjectMotionAnalysis *this, CFTypeRef cf1, const __CFAllocator *a3, CFArrayRef *a4)
{
  if (CFEqual(cf1, @"FineSubjectMotionResults"))
  {
    v7 = *(this + 2);
    if (v7)
    {
      Copy = CFArrayCreateCopy(a3, v7);
    }

    else
    {
      Copy = 0;
    }

    *a4 = Copy;
  }

  return 0;
}

uint64_t ma::FineSubjectMotionAnalysis::CopyProperty(ma::FineSubjectMotionAnalysis *this, CMTimeRange *a2, CFTypeRef cf1, const __CFAllocator *a4, CFArrayRef *a5)
{
  if (!CFEqual(cf1, @"FineSubjectMotionResults"))
  {
    return 4294967246;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v10 = 0;
  v29 = 0.0;
  while (1)
  {
    v11 = *this ? CFArrayGetCount(*this) : 0;
    if (v10 >= v11)
    {
      break;
    }

    v31 = *(*CFArrayGetValueAtIndex(*this, v10) + 24);
    v12 = *CFArrayGetValueAtIndex(*this, v10);
    start = v12[2];
    v27.start = v31;
    rhs = v12[2];
    CMTimeAdd(&v32, &v27.start, &rhs);
    v27.start = v32;
    rhs = a2->start;
    if ((CMTimeCompare(&v27.start, &rhs) & 0x80000000) == 0)
    {
      v27.start = v31;
      rhs = a2->start;
      if (CMTimeCompare(&v27.start, &rhs) < 0)
      {
        *&v27.start.value = *&a2->start.value;
        v27.start.epoch = a2->start.epoch;
        rhs = v31;
        CMTimeSubtract(&v28, &v27.start, &rhs);
        rhs = start;
        v32 = v28;
        CMTimeSubtract(&v27.start, &rhs, &v32);
        start = v27.start;
        v31 = a2->start;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*this, v10);
      v14 = *(*ValueAtIndex + 80);
      v15 = v14 < 1.0 ? *(*ValueAtIndex + 80) : 1.0;
      v16 = v14 <= 0.0 ? 0.0 : v15;
      v29 = v16;
      v17 = AddResultDictionary(&v31, &start, &v29, 0, 0, Mutable);
      if (v17)
      {
        goto LABEL_25;
      }
    }

    ++v10;
  }

  v31 = *(*(this + 1) + 24);
  v18 = *&a2->start.epoch;
  *&v27.start.value = *&a2->start.value;
  *&v27.start.epoch = v18;
  *&v27.duration.timescale = *&a2->duration.timescale;
  CMTimeRangeGetEnd(&v28, &v27);
  v19 = *(this + 1);
  v27.start = v28;
  rhs = v19[1];
  CMTimeSubtract(&v32, &v27.start, &rhs);
  start = v32;
  ma::SubtleMotionSegment::DetermineType(*(this + 1));
  v20 = *(*(this + 1) + 80);
  v21 = 1.0;
  if (v20 < 1.0)
  {
    v21 = *(*(this + 1) + 80);
  }

  v22 = v20 > 0.0;
  v23 = 0.0;
  if (v22)
  {
    v23 = v21;
  }

  v29 = v23;
  v27.start = v31;
  rhs = a2->start;
  if (CMTimeCompare(&v27.start, &rhs) < 0)
  {
    *&v27.start.value = *&a2->start.value;
    v27.start.epoch = a2->start.epoch;
    rhs = v31;
    CMTimeSubtract(&v28, &v27.start, &rhs);
    rhs = start;
    v32 = v28;
    CMTimeSubtract(&v27.start, &rhs, &v32);
    start = v27.start;
    v31 = a2->start;
  }

  v17 = AddResultDictionary(&v31, &start, &v29, 0, 0, Mutable);
  if (v17)
  {
LABEL_25:
    v24 = v17;
    if (!Mutable)
    {
      return v24;
    }

    goto LABEL_32;
  }

  if (Mutable)
  {
    Copy = CFArrayCreateCopy(a4, Mutable);
  }

  else
  {
    Copy = 0;
  }

  v24 = 0;
  *a5 = Copy;
  if (Mutable)
  {
LABEL_32:
    CFRelease(Mutable);
  }

  return v24;
}

uint64_t ma::FineSubjectMotionAnalysis::GetNextLongSegment(CFArrayRef *this, uint64_t a2, float a3, char a4)
{
  v6 = a3;
  if (a4)
  {
    v7 = a2 - 1;
    LODWORD(v8) = a2;
    while (1)
    {
      v9 = __OFSUB__(v8, 1);
      v8 = (v8 - 1);
      if (v8 < 0 != v9)
      {
        break;
      }

      v13 = *(*CFArrayGetValueAtIndex(*this, v7--) + 48);
      if (CMTimeGetSeconds(&v13) >= v6)
      {
        return v8;
      }
    }
  }

  else
  {
    v10 = a2 + 1;
    LODWORD(v8) = a2;
    while (1)
    {
      v11 = *this ? CFArrayGetCount(*this) : 0;
      if (v10 >= v11)
      {
        break;
      }

      v13 = *(*CFArrayGetValueAtIndex(*this, v10) + 48);
      v8 = (v8 + 1);
      ++v10;
      if (CMTimeGetSeconds(&v13) >= v6)
      {
        return v8;
      }
    }
  }

  return a2;
}

uint64_t ma::FineSubjectMotionAnalysis::MergeSegmentsInRange(CFArrayRef *this, int a2, int a3, int *a4)
{
  if (a3 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (a2 <= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *CFArrayGetValueAtIndex(*this, v6);
  if (v7 == v6)
  {
LABEL_12:
    ma::SubtleMotionSegment::DetermineType(v8);
    result = 0;
    if (a4)
    {
      *a4 = v6;
    }
  }

  else
  {
    v9 = v6 + 1;
    v10 = v6 - v7;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*this, v9);
      ma::SubtleMotionSegment::Merge(v8, *ValueAtIndex);
      result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(this, v9);
      if (result)
      {
        break;
      }

      if (__CFADD__(v10++, 1))
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t ma::FineSubjectMotionAnalysis::MergeShortSegmentsInBetween(CFArrayRef *this, int a2, int a3, int *a4)
{
  if (a3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  if (a2 > a3)
  {
    a3 = a2;
  }

  v5 = a3 + ~v4;
  if (!v5)
  {
    return 0;
  }

  v8 = v5 / 2;
  if ((a3 - v4) < 3 || (result = ma::FineSubjectMotionAnalysis::MergeSegmentsInRange(this, a3 - v8, a3, 0), !result) && (result = ma::FineSubjectMotionAnalysis::MergeSegmentsInRange(this, v4, v8 + v4, 0), !result))
  {
    v9 = v4 + 1;
    if (v5 == 2 * v8 || ((v10 = *(*CFArrayGetValueAtIndex(*this, v4) + 80), v11 = vabds_f32(v10, *(*CFArrayGetValueAtIndex(*this, v9) + 80)), v12 = *(*CFArrayGetValueAtIndex(*this, v4 + 2) + 80), v13 = vabds_f32(v12, *(*CFArrayGetValueAtIndex(*this, v9) + 80)), v14 = *this, v11 <= v13) ? (v21 = *CFArrayGetValueAtIndex(v14, v4), ValueAtIndex = CFArrayGetValueAtIndex(*this, v9), ma::SubtleMotionSegment::Merge(v21, *ValueAtIndex), v23 = CFArrayGetValueAtIndex(*this, v4), ma::SubtleMotionSegment::DetermineType(*v23), v18 = this, v19 = v4 + 1) : (v15 = *CFArrayGetValueAtIndex(v14, v9), v16 = CFArrayGetValueAtIndex(*this, v4 + 2), ma::SubtleMotionSegment::Merge(v15, *v16), v17 = CFArrayGetValueAtIndex(*this, v9), ma::SubtleMotionSegment::DetermineType(*v17), v18 = this, v19 = v4 + 2), result = MotionAnalysis<ma::SubtleMotionSegment>::RemoveSegment(v18, v19), !result))
    {
      result = 0;
      *a4 = v9;
    }
  }

  return result;
}

float ma::FineSubjectMotionAnalysis::currentSegmentScore(ma::FineSubjectMotionAnalysis *this, int a2)
{
  v3 = *(this + 1);
  *(v3 + 16) = a2 - *(v3 + 12) + 1;
  ma::FineSubjectMotionSegment::CalculateActionScore(v3);
  v4 = *(this + 1);
  if (*(v4 + 20) < 1)
  {
    return -1.0;
  }

  else
  {
    return *(v4 + 80);
  }
}

void sub_1C9EAA01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CNNMLScalerEspresso;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t VCPProtoMoviePetsResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        LODWORD(v20) = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v20 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v20;
        goto LABEL_33;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(VCPProtoTimeRange);
        objc_storeStrong((a1 + 24), v14);
        v20 = 0;
        v21 = 0;
        if (!PBReaderPlaceMark() || !VCPProtoTimeRangeReadFrom(v14, a2))
        {
          goto LABEL_35;
        }

LABEL_25:
        PBReaderRecallMark();

        goto LABEL_33;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(VCPProtoBounds);
    objc_storeStrong((a1 + 8), v14);
    v20 = 0;
    v21 = 0;
    if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v14, a2))
    {
LABEL_35:

      return 0;
    }

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9EAD520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(va);
  _Unwind_Resume(a1);
}

void sub_1C9EAD6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(va);
  _Unwind_Resume(a1);
}

double cva::MatrixMixin<cva::Matrix<float,0u,0u,false>,float,0u,0u>::copyTo<cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = (*(a1 + 20) * *(a1 + 16));
    cva::MatrixData<float,0ul,0ul,false>::reserve(a2, v4);
    if (v4)
    {
      memcpy(*a2, *a1, 4 * v4);
    }

    result = *(a1 + 16);
    *(a2 + 16) = result;
  }

  return result;
}

void sub_1C9EADD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  free(*(v23 - 64));
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(&a12);
  free(a23);
  free(*(v23 - 88));
  _Unwind_Resume(a1);
}

void sub_1C9EADFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  free(*(v23 - 64));
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(&a12);
  free(a23);
  free(*(v23 - 88));
  _Unwind_Resume(a1);
}

void sub_1C9EAE2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  free(*(v23 - 64));
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::~SVD(&a12);
  free(a23);
  free(*(v23 - 88));
  _Unwind_Resume(a1);
}

void sub_1C9EAF040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  free(a11);
  free(a14);
  free(a17);
  free(a20);
  _Unwind_Resume(a1);
}

uint64_t cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>>(uint64_t a1, void *a2, int a3, int a4)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>> const&>(a1, a2, a3, a4);
  return a1;
}

void sub_1C9EAF250(_Unwind_Exception *a1)
{
  free(v1[6]);
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>> const&>(uint64_t a1, void *a2, int a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 20);
  *(a1 + 72) = v5;
  v6 = *(a2[1] + 20);
  *(a1 + 76) = v6;
  if (v5 | v6)
  {
    if (a4 && fabsf((v5 - v6)) >= ((v6 + v5) * 0.1))
    {
      v12 = (4 * (v6 * v5) + 31) & 0x7FFFFFFE0;
      v19[1] = (v12 >> 2);
      memptr[0] = 0;
      malloc_type_posix_memalign(memptr, 0x20uLL, v12, 0xE1AC2527uLL);
      v19[0] = memptr[0];
      v13 = *a2;
      v14 = a2[1];
      v15 = v14[5];
      v20 = *(**a2 + 20);
      v21 = v15;
      memptr[1] = v13;
      memptr[2] = v14;
      v23 = 1065353216;
      cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>(v19, memptr);
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeRectangular<cva::Matrix<float,0u,0u,false>>(a1, v19, a3);
      free(v19[0]);
    }

    else
    {
      cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>>(a1, a2, a3);
    }

    if ((*(a1 + 80) & 1) == 0)
    {
      v16 = *(a1 + 48);
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      free(v16);
      v17 = *a1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      free(v17);
      v18 = *(a1 + 24);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 24) = 0;
      free(v18);
    }
  }

  else
  {
    *(a1 + 80) = 1;
    v9 = *(a1 + 48);
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    free(v9);
    v10 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v10);
    v11 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;

    free(v11);
  }
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>>(uint64_t a1, void *a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2 + 1;
  v7 = (4 * (*(a2[1] + 20) * *(**a2 + 20)) + 31) & 0x7FFFFFFE0;
  v11[1] = (v7 >> 2);
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, v7, 0xE1AC2527uLL);
  v11[0] = memptr[0];
  v8 = *a2;
  v9 = *v6;
  v10 = *(*v6 + 20);
  v12 = *(**a2 + 20);
  v13 = v10;
  memptr[1] = v8;
  memptr[2] = v9;
  v15 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>(v11, memptr);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<0u,0u>(a1, v11, a3);
  free(v11[0]);
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v6 = **(a2 + 8);
  if (*v6 == v4 || *v5 == v4)
  {
    v7 = (4 * (*(v5 + 20) * *(v6 + 20)) + 31) & 0x7FFFFFFE0;
    v14 = v7 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v13 = memptr;
    v8 = *(*(a2 + 16) + 20);
    LODWORD(v15) = *(**(a2 + 8) + 20);
    HIDWORD(v15) = v8;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false>>,cva::Matrix<float,0u,0u,false>>(&v13, a2);
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = v14;
    *a1 = v13;
    *(a1 + 8) = v11;
    v13 = v9;
    v14 = v10;
    *(a1 + 16) = v15;
    v15 = 0;
    free(v9);
  }

  else
  {
    if (*(v6 + 16) * *(v6 + 20) && *(v5 + 20) * *(v5 + 16))
    {
      cva::VecLib<float>::gemm();
    }

    v12 = *(a1 + 20) * *(a1 + 16);
    if (v12)
    {

      bzero(v4, 4 * v12);
    }
  }
}

uint64_t cva::SVD<cva::Matrix<float,0u,0u,false>,true>::SVD<cva::Matrix<float,3u,3u,false>>(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::Matrix<float,3u,3u,false> const&>(a1, a2, a3);
  return a1;
}

void sub_1C9EAF734(_Unwind_Exception *a1)
{
  free(v1[6]);
  free(v1[3]);
  free(*v1);
  _Unwind_Resume(a1);
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decompose<cva::Matrix<float,3u,3u,false> const&>(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 72) = 0x300000003;
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v9 = *(a2 + 32);
  cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<3u,3u>(a1, v8, a3);
  if ((*(a1 + 80) & 1) == 0)
  {
    v5 = *(a1 + 48);
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    free(v5);
    v6 = *a1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    free(v6);
    v7 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    free(v7);
  }
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::decomposeDirect<3u,3u>(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + 64) = 3;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 48, 3uLL);
  if (a3)
  {
    *(a1 + 16) = 0x300000003;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a1, 9uLL);
    if ((a3 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = *(a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    free(v6);
    goto LABEL_6;
  }

  v5 = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  free(v5);
  if ((a3 & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 40) = 0x300000003;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 24, 9uLL);
LABEL_6:
  cva::vecLib::gesvd<float>();
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * 0.0 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v7 = memptr;
  cva::vecLib::gesvd<float>();
  free(v7);
  *(a1 + 80) = 1;
}

void cva::SVD<cva::Matrix<float,0u,0u,false>,true>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 72);
  LODWORD(v5) = *(a1 + 76);
  if (v5 >= v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = v5;
  }

  v18[0] = v5 | (v5 << 32);
  v18[1] = a1 + 48;
  v7 = *a4;
  v19 = v18;
  v20 = v7;
  v16 = a1;
  v17[0] = &v16;
  v17[1] = a3;
  v21 = &v19;
  v22 = v17;
  v23 = a1 + 24;
  v8 = *(a1 + 44);
  if (v8 == *(a2 + 16) && *(a3 + 20) == *(a2 + 20))
  {
    goto LABEL_11;
  }

  v9 = *a2;
  if (*(a1 + 24) != *a2 && *(a1 + 48) != v9 && *a1 != v9 && *a3 != v9)
  {
    v10 = *(a3 + 20);
    *(a2 + 16) = v8;
    *(a2 + 20) = v10;
    cva::MatrixData<float,0ul,0ul,false>::reserve(a2, (v10 * v8));
LABEL_11:
    v28 = &v23;
    v29 = &v21;
    v30 = 1065353216;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>>(a2, &memptr);
    return;
  }

  v11 = (4 * (*(a3 + 20) * v8) + 31) & 0x7FFFFFFE0;
  v25 = v11 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
  v24 = memptr;
  v12 = *(v22[1] + 20);
  LODWORD(v26) = *(v23 + 20);
  HIDWORD(v26) = v12;
  v28 = &v23;
  v29 = &v21;
  v30 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>>(&v24, &memptr);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = v25;
  *a2 = v24;
  *(a2 + 8) = v15;
  v24 = v13;
  v25 = v14;
  *(a2 + 16) = v26;
  v26 = 0;
  free(v13);
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = **(a2 + 8);
  if (*v5 == v4)
  {
    v10 = (4 * (*(*(*(*(a2 + 16) + 8) + 8) + 20) * *(v5 + 20)) + 31) & 0x7FFFFFFE0;
    v16 = v10 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
    v15 = memptr;
    v11 = *(*(*(*(a2 + 16) + 8) + 8) + 20);
    LODWORD(v17) = *(**(a2 + 8) + 20);
    HIDWORD(v17) = v11;
    cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::MatrixMultExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>>(&v15, a2);
    v12 = *a1;
    v13 = *(a1 + 8);
    v14 = v16;
    *a1 = v15;
    *(a1 + 8) = v14;
    v15 = v12;
    v16 = v13;
    *(a1 + 16) = v17;
    v17 = 0;
    free(v12);
  }

  else
  {
    if (*(v5 + 16) * *(v5 + 20))
    {
      v6 = *(a2 + 16);
      if (*(*(v6[1] + 8) + 20) * *(**v6 + 4))
      {
        v7 = (4 * (*(*(v6[1] + 8) + 20) * *(**v6 + 4)) + 31) & 0x7FFFFFFE0;
        v16 = v7 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
        v15 = memptr;
        v8 = *(*(v6[1] + 8) + 20);
        LODWORD(v17) = *(**v6 + 4);
        HIDWORD(v17) = v8;
        cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>(&v15, v6);
        cva::VecLib<float>::gemm();
      }
    }

    v9 = *(a1 + 20) * *(a1 + 16);
    if (v9)
    {

      bzero(v4, 4 * v9);
    }
  }
}

void cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>>,cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>>(uint64_t *a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = *(a2 + 8);
  v35 = v4;
  if (**v4 >= (*v4)[1])
  {
    v5 = (*v4)[1];
  }

  else
  {
    v5 = **v4;
  }

  v6 = *(v3[1] + 20);
  v30[0] = v5;
  v30[1] = v6;
  v7 = (4 * (v6 * *(**v3 + 20)) + 31) & 0x7FFFFFFE0;
  v31[1] = (v7 >> 2);
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
  v31[0] = memptr;
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v9 + 20);
  v32 = *(**v3 + 20);
  v33 = v10;
  v38 = v8;
  v39 = v9;
  v40 = 1065353216;
  cva::assign<false,false,cva::Matrix<float,0u,0u,false>,cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>>(v31, &memptr);
  v34 = 0;
  v11 = *(v3[1] + 20);
  v12 = **v4;
  if (v12 >= (*v4)[1])
  {
    v12 = (*v4)[1];
  }

  HIDWORD(memptr) = v12;
  LODWORD(v38) = v11;
  v39 = &v35;
  v36[0] = v30;
  v36[1] = &memptr;
  v14 = *(a1 + 4);
  v13 = *(a1 + 5);
  v15 = *a1;
  v26[0] = v5;
  v26[1] = v13;
  v27 = v15;
  v28 = v14;
  v29 = 0;
  cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(v26, v36);
  free(v31[0]);
  v16 = *(**v3 + 20);
  v17 = *(a1 + 4);
  if (v17 > v16)
  {
    v18 = v17 - v16;
    v19 = *(a1 + 5);
    v20 = v19 * (v17 - v16);
    v21 = v20 == 0;
    if (v20)
    {
      v22 = (*a1 + 4 * v16);
    }

    else
    {
      v22 = 0;
    }

    v23 = *a1 + 4 * v16 + 4 * v19 * v17;
    if (v21)
    {
      v23 = 0;
    }

    if (v22 != v23)
    {
      v24 = 0;
      do
      {
        *v22 = 0;
        if (v24 + 1 >= v18)
        {
          v25 = v16;
        }

        else
        {
          v25 = 0;
        }

        v22 += v25 + 1;
        if (v24 + 1 < v18)
        {
          ++v24;
        }

        else
        {
          v24 = 0;
        }
      }

      while (v22 != v23);
    }
  }
}

int *cva::MatrixRef<float,0u,0u,false>::operator=<cva::MatrixBinaryExpr<cva::MatrixSubExpr<cva::MatrixMultExpr<cva::MatrixTransposeExpr<cva::Matrix<float,0u,0u,false> const>,cva::Matrix<float,0u,0u,false>> const,0u,0u>,cva::MatrixRepeatExpr<cva::MatrixDiagonalExpr<cva::DiagonalMatrixInverseExpr<cva::VectorAsDiagonalExpr<cva::Matrix<float,0u,1u,false>,0u,0u>> const>,1u,0u>,cva::detail::MulOp>>(int *a1, int **a2)
{
  v4 = *(a1 + 1);
  v5 = a2[1];
  v6 = **(v5 + 2);
  v7 = **(*v6 + 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v9 * *a1);
  if (v7 == v4 - 4 * a1[5])
  {
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * v10 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
    v32 = memptr;
    if (v10)
    {
      v33 = 0;
      v34 = 0;
      v35 = a2[1];
      v36 = (*a2)[8];
      v37 = (*a2)[9];
      v38 = (*a2)[6];
      v39 = *(*a2 + 1);
      v40 = **(v35 + 2);
      v41 = *(*v40 + 4);
      if (**v40 < v41)
      {
        v41 = **v40;
      }

      v42 = **(*v40 + 8);
      v43 = **a2;
      v44 = v35[1];
      v45 = 4 * v10;
      v46 = memptr;
      do
      {
        v47 = *(v42 + 4 * (v33 % v41));
        v48 = fabsf(v47);
        v49 = 1.0 / v47;
        if (v48 < v40[2])
        {
          v49 = 0.0;
        }

        *v46++ = *(v39 + 4 * (v36 + v34 + (v37 + HIDWORD(v34)) * v38)) * v49;
        v50 = (v34 + 1);
        v51 = v34 & 0xFFFFFFFF00000000;
        v52 = v51 | v50;
        v34 = v51 + 0x100000000;
        if (v43 > v50)
        {
          v34 = v52;
        }

        if (v44 > (v33 + 1))
        {
          ++v33;
        }

        else
        {
          v33 = 0;
        }

        v45 -= 4;
      }

      while (v45);
    }

    v53 = *a1;
    v54 = a1[1];
    v55 = v54 * *a1;
    v56 = a1[4];
    v57 = v55 == 0;
    if (v55)
    {
      v58 = *(a1 + 1);
    }

    else
    {
      v58 = 0;
    }

    v59 = *(a1 + 1) + 4 * (v56 * v54);
    if (v57)
    {
      v59 = 0;
    }

    if (v58 != v59)
    {
      v60 = 0;
      v61 = v56 - v53;
      v62 = v32;
      do
      {
        v63 = *v62++;
        *v58 = v63;
        if (v60 + 1 >= v53)
        {
          v64 = v61;
        }

        else
        {
          v64 = 0;
        }

        v58 += v64 + 1;
        if (v60 + 1 < v53)
        {
          ++v60;
        }

        else
        {
          v60 = 0;
        }
      }

      while (v58 != v59);
    }

    free(v32);
  }

  else
  {
    v11 = a1[4];
    if (v10)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = (v4 + 4 * (v11 * v9));
    if (!v10)
    {
      v13 = 0;
    }

    if (v12 != v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v11 - v8;
      v19 = (*a2)[8];
      v18 = (*a2)[9];
      v20 = (*a2)[6];
      v21 = *(*a2 + 1);
      v22 = **v6;
      if (v22 >= *(*v6 + 4))
      {
        v22 = *(*v6 + 4);
      }

      v23 = **a2;
      v24 = v5[1];
      do
      {
        v25 = *(v7 + 4 * (v14 % v22));
        v26 = fabsf(v25);
        v27 = 1.0 / v25;
        if (v26 < v6[2])
        {
          v27 = 0.0;
        }

        *v12 = *(v21 + 4 * (v19 + v15 + (v18 + HIDWORD(v15)) * v20)) * v27;
        v28 = (v15 + 1);
        v29 = v15 & 0xFFFFFFFF00000000;
        v30 = v29 | v28;
        v15 = v29 + 0x100000000;
        if (v23 > v28)
        {
          v15 = v30;
        }

        if (v24 > (v14 + 1))
        {
          ++v14;
        }

        else
        {
          v14 = 0;
        }

        if (v16 + 1 >= v8)
        {
          v31 = v17;
        }

        else
        {
          v31 = 0;
        }

        v12 += v31 + 1;
        if (v16 + 1 < v8)
        {
          ++v16;
        }

        else
        {
          v16 = 0;
        }
      }

      while (v12 != v13);
    }
  }

  return a1;
}

uint64_t cva::QR<cva::Matrix<float,0u,0u,false>>::QR<cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = (4 * v5 * v4 + 31) & 0x7FFFFFFE0;
  *a1 = 0;
  *(a1 + 8) = v6 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v6, 0xE1AC2527uLL);
  v7 = memptr;
  *a1 = memptr;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5;
  if (v4 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  *(a1 + 24) = v8;
  *(a1 + 28) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v4;
  *(a1 + 44) = 0;
  v9 = (4 * v8 + 31) & 0x7FFFFFFE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v9 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v9, 0xE1AC2527uLL);
  *(a1 + 48) = memptr;
  *(a1 + 64) = v8;
  *(a1 + 72) = 2;
  cva::QR<cva::Matrix<float,0u,0u,false>>::compute<cva::Matrix<float,0u,0u,false>>(a1, a2);
  return a1;
}

void sub_1C9EB032C(_Unwind_Exception *a1)
{
  free(v1[6]);
  free(*v1);
  _Unwind_Resume(a1);
}

uint64_t cva::QR<cva::Matrix<float,0u,0u,false>>::compute<cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = (*(a2 + 20) * *(a2 + 16));
    cva::MatrixData<float,0ul,0ul,false>::reserve(a1, v4);
    if (v4)
    {
      memcpy(*a1, *a2, 4 * v4);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  return cva::QR<cva::Matrix<float,0u,0u,false>>::factorize(a1);
}

uint64_t cva::QR<cva::Matrix<float,0u,0u,false>>::factorize(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 32) = *a1;
  *(a1 + 40) = v3;
  *(a1 + 44) = 0;
  *(a1 + 24) = v4;
  *(a1 + 28) = v2;
  *(a1 + 64) = v4;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a1 + 48, v4);
  *(a1 + 72) = 2;
  result = cva::qr_decomposition<float,0u,0u,0u>(a1, a1 + 48);
  *(a1 + 72) = result ^ 1;
  return result;
}

uint64_t cva::qr_decomposition<float,0u,0u,0u>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v3 >= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  *(a2 + 16) = v4;
  cva::MatrixData<float,0ul,0ul,false>::reserve(a2, v4);
  cva::vecLib::geqrf<float>();
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * 0.0 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v5 = memptr;
  cva::vecLib::geqrf<float>();
  free(v5);
  return 1;
}

void cva::QR<cva::Matrix<float,0u,0u,false>>::initialize<cva::Matrix<float,0u,0u,false>,cva::Matrix<float,0u,0u,false>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v5 = (*(a3 + 20) * *(a3 + 16));
    cva::MatrixData<float,0ul,0ul,false>::reserve(a2, v5);
    if (v5)
    {
      memcpy(*a2, *a3, 4 * v5);
    }

    *(a2 + 16) = *(a3 + 16);
  }

  cva::qr_multiply<(cva::math::TRANS)1,(cva::math::MULTSIDE)0,float,0u,0u,0u,0u,0u>();
}

void sub_1C9EB1474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

void sub_1C9EB1748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

Class ___ZL26getSHMutableSignatureClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ShazamKitLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL20ShazamKitLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8351E00;
    v6 = 0;
    ShazamKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ShazamKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SHMutableSignature");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL26getSHMutableSignatureClassv_block_invoke_cold_1();
  }

  getSHMutableSignatureClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20ShazamKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  ShazamKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

uint64_t VCPProtoLivePhotoKeyFrameFaceResultReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        LODWORD(v19[0]) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VCPProtoBounds);
        objc_storeStrong((a1 + 8), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !VCPProtoBoundsReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C9EB8AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

ma::Segment *ma::Segment::Segment(ma::Segment *this)
{
  *this = &unk_1F49692D8;
  *(this + 8) = xmmword_1C9F63BA0;
  start = **&MEMORY[0x1E6960CC0];
  v3 = start;
  CMTimeRangeMake((this + 24), &start, &v3);
  return this;
}

__n128 ma::Segment::Segment(ma::Segment *this, const ma::Segment *a2)
{
  *this = &unk_1F49692D8;
  *(this + 8) = *(a2 + 8);
  result = *(a2 + 24);
  v3 = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  *(this + 40) = v3;
  *(this + 24) = result;
  return result;
}

double ma::Segment::Reset(ma::Segment *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  start = **&MEMORY[0x1E6960CC0];
  v4 = start;
  CMTimeRangeMake(&v6, &start, &v4);
  v2 = *&v6.start.epoch;
  *(this + 24) = *&v6.start.value;
  *(this + 40) = v2;
  result = *&v6.duration.timescale;
  *(this + 56) = *&v6.duration.timescale;
  return result;
}

__n128 ma::Segment::SetStart(ma::Segment *this, int a2, CMTime *a3)
{
  *(this + 3) = a2;
  result = *&a3->value;
  *(this + 5) = a3->epoch;
  *(this + 24) = result;
  return result;
}

double ma::Segment::Finalize(ma::Segment *this, int a2, int a3, CMTime *a4)
{
  *(this + 2) = a2;
  *(this + 4) = a3 - *(this + 3);
  lhs = *a4;
  v6 = *(this + 1);
  CMTimeSubtract(&v8, &lhs, &v6);
  result = *&v8.value;
  *(this + 2) = v8;
  return result;
}

double ma::Segment::Merge(ma::Segment *this, const ma::Segment *a2)
{
  v3 = *(a2 + 3);
  if (v3 < *(this + 3))
  {
    *(this + 3) = v3;
  }

  *(this + 2) = vadd_s32(*(this + 16), *(a2 + 16));
  v4 = *(this + 40);
  *&range.start.value = *(this + 24);
  *&range.start.epoch = v4;
  *&range.duration.timescale = *(this + 56);
  v5 = *(a2 + 40);
  *&v8.start.value = *(a2 + 24);
  *&v8.start.epoch = v5;
  *&v8.duration.timescale = *(a2 + 56);
  CMTimeRangeGetUnion(&v10, &range, &v8);
  v6 = *&v10.start.epoch;
  *(this + 24) = *&v10.start.value;
  *(this + 40) = v6;
  result = *&v10.duration.timescale;
  *(this + 56) = *&v10.duration.timescale;
  return result;
}

uint64_t ma::Segment::ToDictionary(ma::Segment *this, CFAllocatorRef allocator, const __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_7;
  }

  valuePtr = *(this + 3);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = v6;
  if (!v6 || (CFDictionarySetValue(Mutable, @"Start", v6), CF<__CVBuffer *>::~CF(&v11), valuePtr = *(this + 4), v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr), (v11 = v7) == 0) || (CFDictionarySetValue(Mutable, @"Length", v7), CF<__CVBuffer *>::~CF(&v11), valuePtr = *(this + 5), v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr), (v11 = v8) == 0))
  {
    CF<__CVBuffer *>::~CF(&v11);
    CFRelease(Mutable);
    Mutable = 0;
LABEL_7:
    result = 4294967188;
    goto LABEL_8;
  }

  CFDictionarySetValue(Mutable, @"NumOfValidFrames", v8);
  CF<__CVBuffer *>::~CF(&v11);
  result = 0;
LABEL_8:
  *a3 = Mutable;
  return result;
}

void sub_1C9EB8F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CF<__CVBuffer *>::~CF(va);
  _Unwind_Resume(a1);
}

uint64_t ma::Segment::FromDictionary(ma::Segment *this, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 4294967246;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"Start");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr;
  }

  else
  {
    v5 = 0;
  }

  *(this + 3) = v5;
  v12 = 0;
  v7 = CFDictionaryGetValue(theDict, @"Length");
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberSInt32Type, &v12);
    v8 = v12;
  }

  else
  {
    v8 = 0;
  }

  *(this + 4) = v8;
  v13 = 0;
  v9 = CFDictionaryGetValue(theDict, @"NumOfValidFrames");
  if (v9)
  {
    CFNumberGetValue(v9, kCFNumberSInt32Type, &v13);
    v10 = v13;
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  *(this + 5) = v10;
  return result;
}

void sub_1C9EB9518(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1C9EB96C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C9EB98E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1C9EB9A1C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

ma::EncodeStatsSW *ma::EncodeStatsSW::EncodeStatsSW(ma::EncodeStatsSW *this)
{
  ma::EncodeStats::EncodeStats(this);
  *v2 = &unk_1F4969588;
  v2[23] = 0;
  ma::MotionSearch::MotionSearch((v2 + 24));
  return this;
}

void ma::EncodeStatsSW::~EncodeStatsSW(ma::EncodeStatsSW *this)
{
  *this = &unk_1F4969588;
  v2 = *(this + 23);
  if (v2)
  {
    CFRelease(v2);
  }

  ma::MotionSearch::~MotionSearch((this + 192));

  ma::EncodeStats::~EncodeStats(this);
}

{
  ma::EncodeStatsSW::~EncodeStatsSW(this);

  JUMPOUT(0x1CCA95C50);
}

void *ma::EncodeStatsSW::ProcessMacroblockLuma(void *this, int a2, uint64_t a3, const unsigned __int8 *a4, int a5)
{
  if (a5 < 1)
  {
    a5 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
LABEL_17:
    v9 += v14 * (16 - a5);
    v8 += v13 * (16 - a5);
    v7 += v12 * (16 - a5);
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = &a4[-a3];
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = a4[v11];
      if (v11)
      {
        v16 = v15 - a4[v11 - 1];
        if (v16 < 0)
        {
          LOWORD(v16) = a4[v11 - 1] - v15;
        }

        v12 += v16;
      }

      if (v5)
      {
        v17 = v15 - v10[v11];
        if (v17 < 0)
        {
          LOWORD(v17) = v10[v11] - v15;
        }

        v6 += v17;
      }

      v14 += v15;
      v13 += v15 * v15;
      ++v11;
    }

    while (v11 != 16);
    v9 += v14;
    v8 += v13;
    v7 += v12;
    ++v5;
    a4 += a3;
    v10 += a3;
  }

  while (v5 != a5);
  if (a5 <= 0xF)
  {
    goto LABEL_17;
  }

LABEL_18:
  v18 = this[9];
  *(this[8] + 2 * a2) = v9;
  *(v18 + 4 * a2) = v8;
  v19 = this[16];
  *(this[15] + 2 * a2) = v7;
  *(v19 + 2 * a2) = v6;
  return this;
}

uint64_t ma::EncodeStatsSW::ProcessMacroblockChroma(uint64_t this, int a2, uint64_t a3, const unsigned __int8 *a4, int a5)
{
  if (a5 < 1)
  {
    LOWORD(a5) = 0;
    v9 = 0;
    v10 = 0;
    v6 = 0;
    v7 = 0;
LABEL_10:
    v7 += v10 * (8 - a5);
    v6 += v9 * (8 - a5);
    goto LABEL_11;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v10 += a4[v8];
      v9 += a4[v8 + 1];
      v11 = v8 >= 0xE;
      v8 += 2;
    }

    while (!v11);
    v7 += v10;
    v6 += v9;
    ++v5;
    a4 += a3;
  }

  while (v5 != a5);
  if (a5 <= 7)
  {
    goto LABEL_10;
  }

LABEL_11:
  v12 = *(this + 88);
  *(*(this + 80) + 2 * a2) = v7;
  *(v12 + 2 * a2) = v6;
  return this;
}

uint64_t ma::EncodeStatsSW::ProcessIntraFrame(ma::EncodeStatsSW *this, __CVBuffer *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = *(this + 44);
  v6 = *(this + 45);
  v8 = v5 + 15;
  v7 = v5 < -15;
  v9 = v5 + 30;
  if (!v7)
  {
    v9 = v8;
  }

  v10 = v9 >> 4;
  v11 = v6 + 15;
  v7 = v6 < -15;
  v12 = v6 + 30;
  if (!v7)
  {
    v12 = v11;
  }

  bzero(v4, (v12 >> 4) * v10);
  v13 = *(this + 44);
  v14 = *(this + 45);
  v15 = v13 + 15;
  v7 = v13 < -15;
  v16 = v13 + 30;
  if (!v7)
  {
    v16 = v15;
  }

  v17 = v16 >> 4;
  v18 = v14 + 15;
  v7 = v14 < -15;
  v19 = v14 + 30;
  if (!v7)
  {
    v19 = v18;
  }

  bzero(*(this + 3), 4 * v17 * (v19 >> 4));
  v20 = *(this + 44);
  v21 = *(this + 45);
  v22 = v20 + 15;
  v7 = v20 < -15;
  v23 = v20 + 30;
  if (!v7)
  {
    v23 = v22;
  }

  v24 = v23 >> 4;
  v25 = v21 + 15;
  v7 = v21 < -15;
  v26 = v21 + 30;
  if (!v7)
  {
    v26 = v25;
  }

  bzero(*(this + 4), 16 * v24 * (v26 >> 4));
  v27 = *(this + 44);
  v28 = *(this + 45);
  v29 = v27 + 15;
  v7 = v27 < -15;
  v30 = v27 + 30;
  if (!v7)
  {
    v30 = v29;
  }

  v31 = v30 >> 4;
  v32 = v28 + 15;
  v7 = v28 < -15;
  v33 = v28 + 30;
  if (!v7)
  {
    v33 = v32;
  }

  bzero(*(this + 7), 2 * v31 * (v33 >> 4));
  v34 = *(this + 44);
  v35 = *(this + 45);
  v36 = v34 + 15;
  v7 = v34 < -15;
  v37 = v34 + 30;
  if (!v7)
  {
    v37 = v36;
  }

  v38 = v37 >> 4;
  v39 = v35 + 15;
  v7 = v35 < -15;
  v40 = v35 + 30;
  if (!v7)
  {
    v40 = v39;
  }

  bzero(*(this + 10), 2 * v38 * (v40 >> 4));
  v41 = *(this + 44);
  v42 = *(this + 45);
  v43 = v41 + 15;
  v7 = v41 < -15;
  v44 = v41 + 30;
  if (!v7)
  {
    v44 = v43;
  }

  v45 = v44 >> 4;
  v46 = v42 + 15;
  v7 = v42 < -15;
  v47 = v42 + 30;
  if (!v7)
  {
    v47 = v46;
  }

  bzero(*(this + 11), 2 * v45 * (v47 >> 4));
  v65 = 0;
  pixelBuffer = a2;
  unlockFlags = 1;
  if (a2)
  {
    v48 = CVPixelBufferLockBaseAddress(a2, 1uLL);
    v65 = v48;
    if (!v48 || (v49 = v48, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v69 = a2, v70 = 1024, v71 = v49, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v49 = v65) == 0))
    {
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
      if ((BytesPerRowOfPlane & 0xF) != 0)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 134217984;
        v69 = BytesPerRowOfPlane;
        v51 = MEMORY[0x1E69E9C10];
        v52 = "Unsupported Luma stride: %td";
LABEL_40:
        _os_log_impl(&dword_1C9B70000, v51, OS_LOG_TYPE_ERROR, v52, buf, 0xCu);
LABEL_41:
        v49 = 4294967246;
        goto LABEL_42;
      }

      v53 = CVPixelBufferGetBytesPerRowOfPlane(a2, 1uLL);
      if ((v53 & 0xF) != 0)
      {
        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 134217984;
        v69 = v53;
        v51 = MEMORY[0x1E69E9C10];
        v52 = "Unsupported Chroma stride: %td";
        goto LABEL_40;
      }

      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
      v56 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
      v57 = *(this + 45);
      if (v57 >= 1)
      {
        v58 = v56;
        v59 = 0;
        v60 = 0;
        v61 = *(this + 44);
        do
        {
          if (v57 - v60 >= 16)
          {
            v62 = 16;
          }

          else
          {
            v62 = v57 - v60;
          }

          if ((v57 - v60) >> 1 >= 8)
          {
            v63 = 8;
          }

          else
          {
            v63 = (v57 - v60) >> 1;
          }

          if (v61 >= 1)
          {
            v64 = 0;
            do
            {
              ma::EncodeStatsSW::ProcessMacroblockLuma(this, v59, BytesPerRowOfPlane, &BaseAddressOfPlane[v64], v62);
              ma::EncodeStatsSW::ProcessMacroblockChroma(this, v59, v53, &v58[v64], v63);
              v64 += 16;
              ++v59;
              v61 = *(this + 44);
            }

            while (v61 > v64);
            v57 = *(this + 45);
          }

          v60 += 16;
          BaseAddressOfPlane += 16 * BytesPerRowOfPlane;
          v58 += 8 * v53;
        }

        while (v60 < v57);
      }

      v49 = CVPixelBufferLock::Unlock(&v65);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v49 = 4294967246;
    v65 = -50;
  }

LABEL_42:
  if (pixelBuffer && !v65 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
  }

  return v49;
}

void sub_1C9EBA270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t ma::EncodeStatsSW::ProcessInterFrame(ma::EncodeStatsSW *this, CVPixelBufferRef pixelBuffer)
{
  v106 = *MEMORY[0x1E69E9840];
  v4 = ma::MotionSearch::Search(this + 24, *(this + 23), pixelBuffer, *(this + 3), *(this + 4));
  if (v4)
  {
    return v4;
  }

  v6 = *(this + 1);
  if ((*v6 & 1) == 0)
  {
    v7 = *(this + 44);
    v8 = *(this + 45);
    v10 = v7 + 15;
    v9 = v7 < -15;
    v11 = v7 + 30;
    if (!v9)
    {
      v11 = v10;
    }

    v12 = v11 >> 4;
    v13 = v8 + 15;
    v9 = v8 < -15;
    v14 = v8 + 30;
    if (!v9)
    {
      v14 = v13;
    }

    memset(v6, 1, (v14 >> 4) * v12);
  }

  v15 = *(this + 23);
  v97 = 0;
  v98 = v15;
  v99 = 1;
  if (v15)
  {
    v16 = CVPixelBufferLockBaseAddress(v15, 1uLL);
    v97 = v16;
    if (v16)
    {
      v4 = v16;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return v4;
      }

      *buf = 134218240;
      *pixelBuffera = v15;
      *&pixelBuffera[8] = 1024;
      *&pixelBuffera[10] = v4;
      _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u);
      v4 = v97;
      if (v97)
      {
        return v4;
      }
    }

    *buf = 0;
    *&pixelBuffera[4] = pixelBuffer;
    *&pixelBuffera[12] = 1;
    if (!pixelBuffer)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
      }

      v4 = 4294967246;
      *buf = -50;
      goto LABEL_33;
    }

    v4 = CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    *buf = v4;
    if (v4)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) || (*v102 = 134218240, v103 = *&pixelBuffera[4], v104 = 1024, v105 = v4, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v102, 0x12u), v4 = *buf, *buf))
      {
LABEL_33:
        if (*&pixelBuffera[4] && !*buf && CVPixelBufferUnlockBaseAddress(*&pixelBuffera[4], *&pixelBuffera[12]) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
        }

        if (v98 && !v97 && CVPixelBufferUnlockBaseAddress(v98, v99) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VCPMoFlowSingleEspresso copyImage:toData:withChannels:];
        }

        return v4;
      }
    }

    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(this + 23), 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(this + 23), 0);
    v18 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    if ((v18 & 0xF) != 0)
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *v102 = 134217984;
      v103 = v18;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Unsupported Luma stride: %td";
    }

    else
    {
      v21 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
      if ((v21 & 0xF) == 0)
      {
        v96 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
        v94 = v21;
        v22 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
        v23 = *(this + 45);
        if (v23 >= 1)
        {
          v24 = v22;
          LODWORD(v25) = 0;
          v26 = 0;
          v27 = *(this + 44);
          do
          {
            if (v23 - v26 >= 16)
            {
              v28 = 16;
            }

            else
            {
              v28 = v23 - v26;
            }

            if ((v23 - v26) >> 1 >= 8)
            {
              v29 = 8;
            }

            else
            {
              v29 = (v23 - v26) >> 1;
            }

            if (v27 >= 1)
            {
              v30 = 0;
              v25 = v25;
              v31 = (16 * v25) | 2;
              do
              {
                v32 = (*(this + 3) + 4 * v25);
                v33 = &BaseAddressOfPlane[BytesPerRowOfPlane * (v32[1] + v26) + v30 + *v32];
                v34 = 0uLL;
                v35 = -4;
                v36 = &v96[v30];
                v37 = 0uLL;
                do
                {
                  v38 = *v33;
                  v39 = (v33 + BytesPerRowOfPlane);
                  v40 = *v39;
                  v41 = (v39 + BytesPerRowOfPlane);
                  v42 = *v41;
                  v43 = &v41->i8[BytesPerRowOfPlane];
                  v44 = *v36;
                  v45 = (v36 + v18);
                  v46 = *v45;
                  v47 = (v45 + v18);
                  v48 = *v47;
                  v49 = &v47->i8[v18];
                  v50 = vsubl_u8(*v38.i8, *v44.i8);
                  v51 = vsubl_high_u8(v38, v44);
                  v52 = vsubl_u8(*v40.i8, *v46.i8);
                  v53 = vsubl_high_u8(v40, v46);
                  v54 = vsubl_u8(*v42.i8, *v48.i8);
                  v55 = vsubl_high_u8(v42, v48);
                  v56 = vsubl_u8(*v43, *v49);
                  v57 = vsubl_high_u8(*v43->i8, *v49->i8);
                  v58 = vaddq_s16(v52, v50);
                  v59 = vaddq_s16(v53, v51);
                  v60 = vsubq_s16(v50, v52);
                  v61 = vsubq_s16(v51, v53);
                  v62 = vaddq_s16(v56, v54);
                  v63 = vaddq_s16(v57, v55);
                  v64 = vsubq_s16(v54, v56);
                  v65 = vsubq_s16(v55, v57);
                  v66 = vtrn1q_s16(v58, v60);
                  v67 = vtrn2q_s16(v58, v60);
                  v68 = vtrn1q_s16(v59, v61);
                  v69 = vtrn2q_s16(v59, v61);
                  v70 = vtrn1q_s16(v62, v64);
                  v71 = vtrn2q_s16(v62, v64);
                  v72 = vtrn1q_s16(v63, v65);
                  v73 = vtrn2q_s16(v63, v65);
                  v74 = vaddq_s16(v67, v66);
                  v75 = vaddq_s16(v69, v68);
                  v76 = vsubq_s16(v66, v67);
                  v77 = vsubq_s16(v68, v69);
                  v78 = vaddq_s16(v71, v70);
                  v79 = vaddq_s16(v73, v72);
                  v80 = vsubq_s16(v70, v71);
                  v81 = vsubq_s16(v72, v73);
                  v82 = vaddq_s16(v78, v74);
                  v83 = vaddq_s16(v79, v75);
                  v84 = vsubq_s16(v74, v78);
                  v85 = vsubq_s16(v75, v79);
                  v86 = vaddq_s16(v80, v76);
                  v87 = vaddq_s16(v81, v77);
                  v88 = vsubq_s16(v76, v80);
                  v89 = vsubq_s16(v77, v81);
                  v90 = vaddq_s16(vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v83, v85)), vabsq_s16(vtrn2q_s32(v83, v85))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v82, v84)), vabsq_s16(vtrn2q_s32(v82, v84)))), vaddq_s16(vmaxq_u16(vabsq_s16(vtrn1q_s32(v86, v88)), vabsq_s16(vtrn2q_s32(v86, v88))), vmaxq_u16(vabsq_s16(vtrn1q_s32(v87, v89)), vabsq_s16(vtrn2q_s32(v87, v89)))));
                  v34 = vaddw_u16(v34, *v90.i8);
                  v37 = vaddw_high_u16(v37, v90);
                  v35 += 4;
                  v33 = (v43 + BytesPerRowOfPlane);
                  v36 = (v49 + v18);
                }

                while (v35 < 0xC);
                v91 = vaddvq_s32(vaddq_s32(v34, v37));
                if (v91 >= 0xFFFF)
                {
                  LOWORD(v91) = -1;
                }

                *(*(this + 7) + 2 * v25) = v91;
                *v32 *= 4;
                v32[1] *= 4;
                v92 = (*(this + 4) + v31);
                v93 = 4;
                do
                {
                  *(v92 - 1) *= 4;
                  *v92 *= 4;
                  v92 += 2;
                  --v93;
                }

                while (v93);
                ma::EncodeStatsSW::ProcessMacroblockLuma(this, v25, v18, &v96[v30], v28);
                ma::EncodeStatsSW::ProcessMacroblockChroma(this, v25, v94, &v24[v30], v29);
                v30 += 16;
                ++v25;
                v27 = *(this + 44);
                v31 += 16;
              }

              while (v27 > v30);
              v23 = *(this + 45);
            }

            v26 += 16;
            v96 += 16 * v18;
            v24 += 8 * v94;
          }

          while (v26 < v23);
        }

        v4 = CVPixelBufferLock::Unlock(&v97);
        if (!v4)
        {
          v4 = CVPixelBufferLock::Unlock(buf);
        }

        goto LABEL_33;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      *v102 = 134217984;
      v103 = v21;
      v19 = MEMORY[0x1E69E9C10];
      v20 = "Unsupported Chroma stride: %td";
    }

    _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_ERROR, v20, v102, 0xCu);
LABEL_32:
    v4 = 4294967246;
    goto LABEL_33;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return 4294967246;
}

void sub_1C9EBA984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  CVPixelBufferLock::~CVPixelBufferLock(va1);
  CVPixelBufferLock::~CVPixelBufferLock(va);
  _Unwind_Resume(a1);
}

uint64_t ma::EncodeStatsSW::ProcessFrame(ma::EncodeStatsSW *this, CMTime *a2, CVPixelBufferRef pixelBuffer, char a4)
{
  if (pixelBuffer)
  {
    if ((*(this + 176) & 0xF) == 0 || (result = HorizontalBoundaryExtendYUV420(pixelBuffer), !result))
    {
      if ((a4 & 1) == 0)
      {
        v10 = *(this + 23);
        *(this + 172) = v10 == 0;
        if (v10)
        {
          result = ma::EncodeStatsSW::ProcessInterFrame(this, pixelBuffer);
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = ma::EncodeStatsSW::ProcessIntraFrame(this, pixelBuffer);
          if (result)
          {
            return result;
          }
        }
      }

      v8 = *(this + 23);
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = CFRetain(pixelBuffer);
      result = 0;
      *(this + 23) = v9;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Empty input frame, skipping...", v11, 2u);
    }

    return 4294967246;
  }

  return result;
}

void sub_1C9EBAE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9EBBA04(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9EBD150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9EBD2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9EBDC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C9EC155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char *__p, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  __p = &a32;
  std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1C9EC1C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    MEMORY[0x1CCA95C10](a19, v26);
  }

  if (a23)
  {
    MEMORY[0x1CCA95C10](a23, v26);
  }

  dlib::eigenvalue_decomposition<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::~eigenvalue_decomposition(&a26);
  v29 = *(v27 - 232);
  if (v29)
  {
    MEMORY[0x1CCA95C10](v29, v26);
  }

  v30 = *(v27 - 200);
  if (v30)
  {
    MEMORY[0x1CCA95C10](v30, v26);
  }

  v31 = *(v27 - 168);
  if (v31)
  {
    MEMORY[0x1CCA95C10](v31, v26);
  }

  v32 = *(v27 - 136);
  if (v32)
  {
    MEMORY[0x1CCA95C10](v32, v26);
  }

  _Unwind_Resume(a1);
}

void kSegments(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
  LODWORD(v35[0]) = -1082130432;
  std::vector<float>::vector[abi:ne200100](&__p, v7);
  v29 = a2;
  std::vector<std::vector<float>>::vector[abi:ne200100](v38, a2 + 1);
  if (__p)
  {
    v37[0] = __p;
    operator delete(__p);
  }

  v37[0] = 0;
  v37[1] = 0;
  __p = v37;
  LODWORD(v30) = 0;
  std::vector<float>::vector[abi:ne200100](v33, v7 + 1);
  std::vector<std::vector<float>>::vector[abi:ne200100](v35, v7);
  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  if (v5 != v6)
  {
    v8 = 0;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      v10 = v8++;
      if (v10 < v7)
      {
        featureMean();
      }
    }

    while (v8 != v9);
  }

  v28 = a3;
  if (a2)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      if (v12 - 1 < v7)
      {
        v13 = 1;
        v14 = v12 - 1;
        do
        {
          if (v12 == 1)
          {
            *(*(v38[0] + 24) + 4 * v14) = *(*v35[0] + 4 * v14 + 4);
            v32 = 0;
            std::vector<unsigned long>::vector[abi:ne200100](v33, 1uLL);
            v30 = 1;
            v31 = v14;
            v39 = &v30;
            v15 = std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__emplace_unique_key_args<std::tuple<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long,unsigned long>&&>,std::tuple<>>(&__p, &v30);
            v16 = v15[6];
            if (v16)
            {
              v15[7] = v16;
              operator delete(v16);
              v15[6] = 0;
              v15[7] = 0;
              v15[8] = 0;
            }

            *(v15 + 3) = *v33;
            v15[8] = v34;
          }

          else
          {
            if (v12 - 2 >= v14)
            {
              v17 = 0;
              v19 = INFINITY;
            }

            else
            {
              v17 = 0;
              v18 = (v35[0] + v11);
              v19 = INFINITY;
              v20 = v13;
              v21 = v12 - 2;
              do
              {
                v22 = *(*(v38[0] + 24 * (v12 - 1)) + 4 * v21);
                if (v22 >= 0.0)
                {
                  v23 = v22 + *(*v18 + 4 * v14 + 4);
                  if (v23 < v19)
                  {
                    v17 = v21;
                    v19 = v23;
                  }
                }

                ++v21;
                v18 += 3;
                --v20;
              }

              while (v20);
            }

            *(*(v38[0] + 24 * v12) + 4 * v14) = v19;
            v33[0] = (v12 - 1);
            v33[1] = v17;
            v30 = v33;
            v24 = std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__emplace_unique_key_args<std::tuple<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long,unsigned long>&&>,std::tuple<>>(&__p, v33);
            v30 = v12;
            v31 = v14;
            v39 = &v30;
            v25 = std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__emplace_unique_key_args<std::tuple<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long,unsigned long>&&>,std::tuple<>>(&__p, &v30);
            if (v25 != v24)
            {
              std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((v25 + 48), *(v24 + 48), *(v24 + 56), (*(v24 + 56) - *(v24 + 48)) >> 3);
            }

            v33[0] = v12;
            v33[1] = v14;
            v30 = v33;
            v26 = std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__emplace_unique_key_args<std::tuple<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long,unsigned long>&&>,std::tuple<>>(&__p, v33);
            v30 = v17 + 1;
            std::vector<unsigned long>::push_back[abi:ne200100]((v26 + 48), &v30);
          }

          ++v14;
          ++v13;
        }

        while (v14 != v7);
      }

      ++v12;
      v11 += 24;
    }

    while (v12 <= v29);
  }

  v33[0] = v29;
  v33[1] = (v7 - 1);
  v30 = v33;
  v27 = std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::__emplace_unique_key_args<std::tuple<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::tuple<unsigned long,unsigned long>&&>,std::tuple<>>(&__p, v33);
  *v28 = 0;
  v28[1] = 0;
  v28[2] = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v28, *(v27 + 48), *(v27 + 56), (*(v27 + 56) - *(v27 + 48)) >> 3);
  v33[0] = v35;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v33);
  std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::destroy(&__p, v37[0]);
  __p = v38;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1C9EC21D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, void *a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,std::vector<unsigned long>>>>::destroy(&a22, a23);
  a22 = &a25;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_1C9EC2A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::push_back[abi:ne200100](void *a1)
{
  if (a1[1] < a1[2])
  {
    std::vector<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__construct_one_at_end[abi:ne200100]<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>(a1);
  }

  std::vector<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__emplace_back_slow_path<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>(a1);
}

void estimateNumberOfSegments()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v0 = xmmword_1C9F63BE0;
  LODWORD(v1) = 0;
  dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix_op<dlib::op_uniform_matrix_3<float>>>(v2);
}

void sub_1C9EC3560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char *a22, char *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  a22 = &a25;
  std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a29)
  {
    MEMORY[0x1CCA95C10](a29, v29);
  }

  _Unwind_Resume(a1);
}

float cosSimilarity(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = **a1 * **a2;
  v6 = v3 - 1;
  if (v3 > 1)
  {
    v7 = v4 + 1;
    v8 = v2 + 1;
    do
    {
      v9 = *v8++;
      v10 = v9;
      v11 = *v7++;
      v5 = v5 + (v10 * v11);
      --v6;
    }

    while (v6);
  }

  v12 = 0.0;
  v13 = 0.0;
  if (v3 >= 1)
  {
    do
    {
      v14 = *v2++;
      v13 = v13 + (v14 * v14);
      --v3;
    }

    while (v3);
  }

  v15 = *(a2 + 8);
  if (v15 >= 1)
  {
    v12 = 0.0;
    do
    {
      v16 = *v4++;
      v12 = v12 + (v16 * v16);
      --v15;
    }

    while (v15);
  }

  return (v5 + 0.0) / (sqrtf(v13) * sqrtf(v12));
}

uint64_t *dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::operator-=(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (result[1] != v2)
  {
    dlib::row_major_layout::layout<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,4>::set_size(result);
  }

  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = *result;
    do
    {
      v5 = *v3++;
      *v4 = *v4 - v5;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_1C9EC3864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1CCA95C10](a12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C9EC3E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41)
{
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  a16 = &a40;
  std::vector<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&a16);

  _Unwind_Resume(a1);
}

uint64_t *dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::operator+=<dlib::matrix_mul_scal_exp<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>,true>>(uint64_t *a1, float *a2)
{
  if (a1[1] == *(*a2 + 8) && a1[2] == *(*a2 + 16))
  {
    v4[0] = a1;
    v4[1] = a2;
    dlib::blas_bindings::matrix_assign_blas<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout,dlib::matrix_mul_scal_exp<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>,true>>(a1, v4);
  }

  else
  {
    dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::operator=<dlib::matrix_mul_scal_exp<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>,true>>(a1, a2);
  }

  return a1;
}

uint64_t std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__init_with_size[abi:ne200100]<std::__wrap_iter<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>,std::__wrap_iter<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9EC40F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix_op<dlib::op_pointer_to_mat<float>>>(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = &unk_1F496A5E0;
  dlib::row_major_layout::layout<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,4>::set_size(a1);
}

void sub_1C9EC417C(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    MEMORY[0x1CCA95C10](*v1, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void *dlib::matrix_assign_big<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>,dlib::matrix_op<dlib::op_pointer_to_mat<float>>>(void *result, void *a2)
{
  v2 = a2[1];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a2[2];
    v6 = *result;
    v7 = 4 * result[1];
    do
    {
      if (v5 >= 1)
      {
        v8 = (*a2 + a2[3] * v3);
        v9 = v6;
        v10 = v5;
        do
        {
          v11 = *v8++;
          *v9++ = v11;
          --v10;
        }

        while (v10);
      }

      ++v4;
      v6 = (v6 + v7);
      v3 += 4;
    }

    while (v4 != v2);
  }

  return result;
}

void std::vector<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__emplace_back_slow_path<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>>(a1, v4);
    }

    *(&v5 + 1) = 0;
    *(16 * v1 + 8) = &unk_1F496A5E0;
    operator new[]();
  }

  std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
}

void sub_1C9EC43C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix(a4);
  }

  v6 = 1;
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>>::~__exception_guard_exceptions[abi:ne200100](v5);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>::operator()[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 16);
    v3 -= 16;
    result = v5;
    if (v5)
    {
      result = MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
    }
  }

  return result;
}

uint64_t std::__split_buffer<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 - 16);
      v2 -= 16;
      result = v5;
      *(v4 + 16) = v2;
      if (v5)
      {
        result = MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__init_with_size[abi:ne200100]<std::__wrap_iter<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout> *>,std::__wrap_iter<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout> *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9EC47A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout> *,dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout> *,dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>(a4);
  }

  v7 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>>::~__exception_guard_exceptions[abi:ne200100](v6);
  return a4;
}

void dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = &unk_1F496A5E0;
  dlib::row_major_layout::layout<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,4>::set_size(a1);
}

void sub_1C9EC48E0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    MEMORY[0x1CCA95C10](*v1, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 32);
      v3 -= 32;
      result = v4;
      if (v4)
      {
        result = MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
      }
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix_op<dlib::op_pointer_to_mat<float>>>(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = &unk_1F496A5E0;
  dlib::row_major_layout::layout<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,5>::set_size(a1);
}

void sub_1C9EC4A20(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    MEMORY[0x1CCA95C10](*v1, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void *dlib::matrix_assign_big<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>,dlib::matrix_op<dlib::op_pointer_to_mat<float>>>(void *result, void *a2)
{
  v2 = a2[1];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a2[2];
    v6 = *result;
    v7 = 4 * result[2];
    do
    {
      if (v5 >= 1)
      {
        v8 = (*a2 + a2[3] * v3);
        v9 = v6;
        v10 = v5;
        do
        {
          v11 = *v8++;
          *v9++ = v11;
          --v10;
        }

        while (v10);
      }

      ++v4;
      v6 = (v6 + v7);
      v3 += 4;
    }

    while (v4 != v2);
  }

  return result;
}

void std::vector<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__emplace_back_slow_path<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout> const&>(void *a1)
{
  v1 = (a1[1] - *a1) >> 5;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 59))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 4 > v2)
    {
      v2 = v3 >> 4;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFE0)
    {
      v4 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v6 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>>(a1, v4);
    }

    v5 = (32 * v1);
    dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix((32 * v1));
  }

  std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
}

void sub_1C9EC4BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a4;
  v8 = a4;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v8;
  v6 = 0;
  if (a2 != a3)
  {
    dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix(a4);
  }

  v6 = 1;
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>>::~__exception_guard_exceptions[abi:ne200100](v5);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>,dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>*>::operator()[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 32);
    v3 -= 32;
    result = v5;
    if (v5)
    {
      result = MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
    }
  }

  return result;
}

uint64_t std::__split_buffer<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 - 32);
      v2 -= 32;
      result = v5;
      *(v4 + 16) = v2;
      if (v5)
      {
        result = MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

void dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix<dlib::matrix_op<dlib::op_uniform_matrix_3<float>>>(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = &unk_1F496A5E0;
  dlib::row_major_layout::layout<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,5>::set_size(a1);
}

void sub_1C9EC4F58(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    MEMORY[0x1CCA95C10](*v1, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::operator=<dlib::matrix_mul_scal_exp<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>,true>>(uint64_t *result, float *a2)
{
  v2 = result[1];
  v3 = *a2;
  if (v2 != *(*a2 + 8) || (v4 = result[2], v4 != v3[2]))
  {
    dlib::row_major_layout::layout<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,5>::set_size(result);
  }

  v5 = a2[2];
  if (v5 == 1.0)
  {
    if (v2 >= 1)
    {
      v6 = 0;
      v7 = *v3;
      v8 = *result;
      v9 = 4 * v4;
      do
      {
        v10 = v7;
        v11 = v8;
        v12 = v4;
        if (v4 >= 1)
        {
          do
          {
            v13 = *v10++;
            *v11++ = v13;
            --v12;
          }

          while (v12);
        }

        ++v6;
        v8 += v9;
        v7 = (v7 + v9);
      }

      while (v6 != v2);
    }
  }

  else if (v2 >= 1)
  {
    v14 = 0;
    v15 = *v3;
    v16 = *result;
    v17 = 4 * v4;
    do
    {
      v18 = v15;
      v19 = v16;
      v20 = v4;
      if (v4 >= 1)
      {
        do
        {
          v21 = *v18++;
          *v19++ = v5 * v21;
          --v20;
        }

        while (v20);
      }

      ++v14;
      v16 += v17;
      v15 = (v15 + v17);
    }

    while (v14 != v2);
  }

  return result;
}

uint64_t *dlib::blas_bindings::matrix_assign_blas<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout,dlib::matrix_mul_scal_exp<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>,true>>(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  v5 = *v4;
  if (*v4 == result)
  {
    dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::matrix(&v37);
  }

  v6 = *a2;
  if (*a2 != result)
  {
    result = dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::operator=(result, v6);
    v4 = *(a2 + 8);
    v5 = *v4;
  }

  v7 = *(v4 + 8);
  if (v7 == 1.0)
  {
    v8 = v5[1];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = v5[2];
      v11 = *v5;
      v12 = *v3;
      v13 = 4 * v3[2];
      do
      {
        v14 = v11;
        v15 = v12;
        v16 = v10;
        if (v10 >= 1)
        {
          do
          {
            v17 = *v14++;
            *v15 = v17 + *v15;
            ++v15;
            --v16;
          }

          while (v16);
        }

        ++v9;
        v12 = (v12 + v13);
        v11 += v10;
      }

      while (v9 != v8);
    }
  }

  else
  {
    v18 = v5[1];
    if (v7 == -1.0)
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = v5[2];
        v21 = *v5;
        v22 = *v3;
        v23 = 4 * v3[2];
        do
        {
          v24 = v21;
          v25 = v22;
          v26 = v20;
          if (v20 >= 1)
          {
            do
            {
              v27 = *v24++;
              *v25 = *v25 - v27;
              ++v25;
              --v26;
            }

            while (v26);
          }

          ++v19;
          v22 = (v22 + v23);
          v21 += v20;
        }

        while (v19 != v18);
      }
    }

    else if (v18 >= 1)
    {
      v28 = 0;
      v29 = v5[2];
      v30 = *v5;
      v31 = *v3;
      v32 = 4 * v3[2];
      do
      {
        v33 = v30;
        v34 = v31;
        v35 = v29;
        if (v29 >= 1)
        {
          do
          {
            v36 = *v33++;
            *v34 = *v34 + (v7 * v36);
            ++v34;
            --v35;
          }

          while (v35);
        }

        ++v28;
        v31 = (v31 + v32);
        v30 += v29;
      }

      while (v28 != v18);
    }
  }

  return result;
}

uint64_t *dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = a2[1];
    v4 = a2[2];
    if (result[1] != v3 || result[2] != v4)
    {
      dlib::row_major_layout::layout<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,5>::set_size(result);
    }

    v5 = v4 * v3;
    if (v4 * v3 >= 1)
    {
      v6 = *a2;
      v7 = *result;
      do
      {
        v8 = *v6++;
        *v7++ = v8;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void std::vector<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<dlib::matrix<float,1l,432l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 16);
      v3 -= 16;
      result = v4;
      if (v4)
      {
        result = MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
      }
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

int *std::__stable_sort<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) < *(**a3 + 4 * v10))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(result, v24, a3, v25, a5);
        v26 = &v22[v23];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * v30);
          v32 = *(*v28 + 4 * *v22);
          if (v31 >= v32)
          {
            LODWORD(v30) = *v22;
          }

          v22 += v31 >= v32;
          v29 += v31 < v32;
          *v8 = v30;
          v8 += 4;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8 = v34;
              v8 += 4;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22++;
          *v8 = v33;
          v8 += 4;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(result, v24, a3, v25, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v22, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,partitionEmbeddingsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(v8, &v8[4 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 < *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 4) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 4);
              v19 -= 4;
              if (v18 >= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 4);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 4;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

int *std::__stable_sort_move<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 >= v13)
      {
        LODWORD(v10) = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 >= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v25 = &result[a4 >> 1];
      std::__stable_sort<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(result, v25, a3, a4 >> 1, a5, a4 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,estimateNumberOfSegmentsBySpectralClustering(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::__wrap_iter<int *>>(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v26 = *a3;
      v27 = &v7[a4 >> 1];
      while (v27 != a2)
      {
        v28 = *v27;
        v29 = *(*v26 + 4 * v28);
        v30 = *(*v26 + 4 * *v7);
        if (v29 >= v30)
        {
          LODWORD(v28) = *v7;
        }

        v27 += v29 < v30;
        v7 += v29 >= v30;
        *v5++ = v28;
        if (v7 == v25)
        {
          while (v27 != a2)
          {
            v32 = *v27++;
            *v5++ = v32;
          }

          return result;
        }
      }

      while (v7 != v25)
      {
        v31 = *v7++;
        *v5++ = v31;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = *v14;
          if (*(v16 + 4 * v21) >= *(v16 + 4 * v20))
          {
            *v18 = v21;
          }

          else
          {
            v17[1] = v19;
            v22 = a5;
            if (v17 != a5)
            {
              v23 = v15;
              while (1)
              {
                v22 = (a5 + v23);
                v24 = *(a5 + v23 - 4);
                if (*(v16 + 4 * *v14) >= *(v16 + 4 * v24))
                {
                  break;
                }

                *v22 = v24;
                v23 -= 4;
                if (!v23)
                {
                  v22 = a5;
                  break;
                }
              }
            }

            *v22 = *v14;
          }

          ++v14;
          v15 += 4;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned long,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float *std::__introsort<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *,false>(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v83 = *(a2 - 2);
        v84 = v8[2];
        if (v83 < v84)
        {
          v85 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v85;
          v8[2] = v83;
          *(a2 - 2) = v84;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v90 = v8 + 6;
      v91 = v8[6];
      v92 = v8 + 2;
      v93 = v8[2];
      v94 = v8[10];
      if (v91 >= v93)
      {
        if (v94 < v91)
        {
          v141 = *(v8 + 2);
          v142 = *(v8 + 4);
          *(v8 + 2) = v142;
          *(v8 + 4) = v141;
          v8[6] = v94;
          v8[10] = v91;
          if (v94 < v93)
          {
            v143 = *v8;
            *v8 = v142;
            *(v8 + 2) = v143;
            goto LABEL_188;
          }

LABEL_189:
          v94 = v91;
        }
      }

      else
      {
        v95 = *v8;
        if (v94 < v91)
        {
          *v8 = *(v8 + 4);
          *(v8 + 4) = v95;
          goto LABEL_187;
        }

        *v8 = *(v8 + 2);
        *(v8 + 2) = v95;
        v8[2] = v91;
        v8[6] = v93;
        if (v94 < v93)
        {
          *(v8 + 2) = *(v8 + 4);
          *(v8 + 4) = v95;
          v92 = v8 + 6;
LABEL_187:
          v90 = v8 + 10;
          v91 = v93;
LABEL_188:
          *v92 = v94;
          *v90 = v93;
          goto LABEL_189;
        }
      }

      v152 = *(a2 - 2);
      if (v152 >= v94)
      {
        return result;
      }

      v153 = *(v8 + 4);
      *(v8 + 4) = *(a2 - 2);
      *(a2 - 2) = v153;
      v8[10] = v152;
      *(a2 - 2) = v94;
      v138 = v8[10];
      v154 = v8[6];
      if (v138 >= v154)
      {
        return result;
      }

      v155 = *(v8 + 2);
      v156 = *(v8 + 4);
      *(v8 + 2) = v156;
      *(v8 + 4) = v155;
      v8[6] = v138;
      v8[10] = v154;
      v139 = v8[2];
      if (v138 >= v139)
      {
        return result;
      }

      v157 = *v8;
      *v8 = v156;
      *(v8 + 2) = v157;
LABEL_194:
      v8[2] = v138;
      v8[6] = v139;
      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *,0>(v8, v8 + 4, v8 + 8, v8 + 12, a2 - 4);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v96 = v8 + 4;
      v98 = v8 == a2 || v96 == a2;
      if (a4)
      {
        if (!v98)
        {
          v99 = 0;
          v100 = v8;
          do
          {
            v101 = v100[6];
            v102 = v100[2];
            v100 = v96;
            if (v101 < v102)
            {
              v103 = *v96;
              v104 = v99;
              while (1)
              {
                v105 = v8 + v104;
                *(v105 + 2) = *(v8 + v104);
                *(v105 + 6) = *(v8 + v104 + 8);
                if (!v104)
                {
                  break;
                }

                v104 -= 16;
                if (v101 >= *(v105 - 2))
                {
                  v106 = v8 + v104 + 16;
                  goto LABEL_131;
                }
              }

              v106 = v8;
LABEL_131:
              *v106 = v103;
              *(v106 + 8) = v101;
            }

            v96 = v100 + 4;
            v99 += 16;
          }

          while (v100 + 4 != a2);
        }
      }

      else if (!v98)
      {
        v144 = v8 + 6;
        do
        {
          v145 = v7[6];
          v146 = v7[2];
          v7 = v96;
          if (v145 < v146)
          {
            v147 = *v96;
            v148 = v144;
            do
            {
              v149 = v148;
              *(v148 - 1) = *(v148 - 3);
              v150 = *(v148 - 4);
              v148 -= 4;
              *v149 = v150;
            }

            while (v145 < *(v149 - 8));
            *(v148 - 1) = v147;
            *v148 = v145;
          }

          v96 = v7 + 4;
          v144 += 4;
        }

        while (v7 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v107 = (v9 - 2) >> 1;
      v108 = v107;
      do
      {
        v109 = v108;
        if (v107 >= v108)
        {
          v110 = (2 * v108) | 1;
          v111 = &v8[4 * v110];
          if (2 * v109 + 2 < v9 && v111[2] < v111[6])
          {
            v111 += 4;
            v110 = 2 * v109 + 2;
          }

          v112 = &v8[4 * v109];
          v113 = v111[2];
          v114 = v112[2];
          if (v113 >= v114)
          {
            v115 = *v112;
            do
            {
              v116 = v112;
              v112 = v111;
              *v116 = *v111;
              v116[2] = v113;
              if (v107 < v110)
              {
                break;
              }

              v117 = 2 * v110;
              v110 = (2 * v110) | 1;
              v111 = &v8[4 * v110];
              v118 = v117 + 2;
              if (v118 < v9 && v111[2] < v111[6])
              {
                v111 += 4;
                v110 = v118;
              }

              v113 = v111[2];
            }

            while (v113 >= v114);
            *v112 = v115;
            v112[2] = v114;
          }
        }

        v108 = v109 - 1;
      }

      while (v109);
      while (2)
      {
        v119 = 0;
        v120 = *v8;
        v121 = v8[2];
        v122 = v8;
        do
        {
          v123 = &v122[4 * v119];
          v124 = v123 + 4;
          v125 = (2 * v119) | 1;
          v119 = 2 * v119 + 2;
          if (v119 >= v9)
          {
            v119 = v125;
          }

          else
          {
            v126 = v123[6];
            v127 = v123[10];
            v128 = v123 + 8;
            if (v126 >= v127)
            {
              v119 = v125;
            }

            else
            {
              v124 = v128;
            }
          }

          *v122 = *v124;
          v122[2] = v124[2];
          v122 = v124;
        }

        while (v119 <= ((v9 - 2) >> 1));
        if (v124 != a2 - 4)
        {
          *v124 = *(a2 - 2);
          v124[2] = *(a2 - 2);
          *(a2 - 2) = v120;
          *(a2 - 2) = v121;
          v129 = (v124 - v8 + 16) >> 4;
          v130 = v129 < 2;
          v131 = v129 - 2;
          if (!v130)
          {
            v132 = v131 >> 1;
            v133 = &v8[4 * v132];
            v134 = v133[2];
            v121 = v124[2];
            if (v134 < v121)
            {
              v135 = *v124;
              do
              {
                v136 = v124;
                v124 = v133;
                *v136 = *v133;
                v136[2] = v134;
                if (!v132)
                {
                  break;
                }

                v132 = (v132 - 1) >> 1;
                v133 = &v8[4 * v132];
                v134 = v133[2];
              }

              while (v134 < v121);
              *v124 = v135;
LABEL_164:
              v124[2] = v121;
            }
          }

          a2 -= 4;
          v130 = v9-- <= 2;
          if (v130)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v124 = v120;
      goto LABEL_164;
    }

    v10 = &v8[4 * (v9 >> 1)];
    v11 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v12 = v10[2];
      v13 = v8[2];
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[2] = v11;
          *(a2 - 2) = v12;
          v19 = v10[2];
          v20 = v8[2];
          if (v19 < v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[2] = v19;
            v10[2] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 < v12)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[2] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[2] = v12;
        v10[2] = v13;
        v26 = *(a2 - 2);
        if (v26 < v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[2] = v26;
LABEL_27:
          *(a2 - 2) = v13;
        }
      }

      v27 = v10 - 4;
      v28 = *(v10 - 2);
      v29 = v8[6];
      v30 = *(a2 - 6);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 2) = v30;
          *(a2 - 6) = v28;
          v33 = *(v10 - 2);
          v34 = v8[6];
          if (v33 < v34)
          {
            v35 = *(v8 + 2);
            *(v8 + 2) = *v27;
            *v27 = v35;
            v8[6] = v33;
            *(v10 - 2) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 < v28)
        {
          *(v8 + 2) = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[6] = v30;
          goto LABEL_39;
        }

        *(v8 + 2) = *v27;
        *v27 = v31;
        v8[6] = v28;
        *(v10 - 2) = v29;
        v37 = *(a2 - 6);
        if (v37 < v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 2) = v37;
LABEL_39:
          *(a2 - 6) = v29;
        }
      }

      v38 = (v10 + 4);
      v39 = v10[6];
      v40 = v8[10];
      v41 = *(a2 - 10);
      if (v39 >= v40)
      {
        if (v41 < v39)
        {
          v43 = *v38;
          *v38 = *(a2 - 6);
          *(a2 - 6) = v43;
          v10[6] = v41;
          *(a2 - 10) = v39;
          v44 = v10[6];
          v45 = v8[10];
          if (v44 < v45)
          {
            v46 = *(v8 + 4);
            *(v8 + 4) = *v38;
            *v38 = v46;
            v8[10] = v44;
            v10[6] = v45;
          }
        }
      }

      else
      {
        v42 = *(v8 + 4);
        if (v41 < v39)
        {
          *(v8 + 4) = *(a2 - 6);
          *(a2 - 6) = v42;
          v8[10] = v41;
          goto LABEL_48;
        }

        *(v8 + 4) = *v38;
        *v38 = v42;
        v8[10] = v39;
        v10[6] = v40;
        v47 = *(a2 - 10);
        if (v47 < v40)
        {
          *v38 = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[6] = v47;
LABEL_48:
          *(a2 - 10) = v40;
        }
      }

      v48 = v10[2];
      v49 = *(v10 - 2);
      v50 = v10[6];
      if (v48 >= v49)
      {
        v51 = *v10;
        if (v50 >= v48)
        {
LABEL_55:
          v49 = v48;
        }

        else
        {
          v52 = *v38;
          *v10 = *v38;
          *v38 = v51;
          v10[2] = v50;
          v10[6] = v48;
          if (v50 >= v49)
          {
            v49 = v50;
            v51 = v52;
          }

          else
          {
            v51 = *v27;
            *v27 = v52;
            *v10 = v51;
            *(v10 - 2) = v50;
            v10[2] = v49;
          }
        }
      }

      else
      {
        v51 = *v27;
        if (v50 < v48)
        {
          *v27 = *v38;
          *v38 = v51;
          *(v10 - 2) = v50;
          v10[6] = v49;
          v51 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v51;
        *(v10 - 2) = v48;
        v10[2] = v49;
        if (v50 < v49)
        {
          v71 = *v38;
          *v10 = *v38;
          *v38 = v51;
          v10[2] = v50;
          v10[6] = v49;
          v49 = v50;
          v51 = v71;
        }
      }

      v53 = *v8;
      *v8 = v51;
      *v10 = v53;
      v54 = *(v8 + 2);
      v8[2] = v49;
      *(v10 + 2) = v54;
      goto LABEL_57;
    }

    v15 = v8[2];
    v16 = v10[2];
    if (v15 >= v16)
    {
      if (v11 < v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[2] = v11;
        *(a2 - 2) = v15;
        v23 = v8[2];
        v24 = v10[2];
        if (v23 < v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[2] = v23;
          v8[2] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 < v15)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[2] = v11;
LABEL_36:
      *(a2 - 2) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[2] = v15;
    v8[2] = v16;
    v36 = *(a2 - 2);
    if (v36 < v16)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[2] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v55 = *v8;
      v56 = v8[2];
LABEL_60:
      v57 = 0;
      do
      {
        v58 = v8[v57 + 6];
        v57 += 4;
      }

      while (v58 < v56);
      v59 = &v8[v57];
      v60 = a2;
      if (v57 == 4)
      {
        v63 = a2;
        while (v59 < v63)
        {
          v61 = v63 - 4;
          v64 = *(v63 - 2);
          v63 -= 4;
          if (v64 < v56)
          {
            goto LABEL_70;
          }
        }

        v61 = v63;
      }

      else
      {
        do
        {
          v61 = v60 - 4;
          v62 = *(v60 - 2);
          v60 -= 4;
        }

        while (v62 >= v56);
      }

LABEL_70:
      v8 = v59;
      if (v59 < v61)
      {
        v65 = v61;
        do
        {
          v66 = *v8;
          *v8 = *v65;
          *v65 = v66;
          v67 = *(v8 + 2);
          v8[2] = *(v65 + 8);
          *(v65 + 8) = v67;
          do
          {
            v68 = v8[6];
            v8 += 4;
          }

          while (v68 < v56);
          do
          {
            v69 = *(v65 - 8);
            v65 -= 16;
          }

          while (v69 >= v56);
        }

        while (v8 < v65);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      *(v8 - 2) = v55;
      *(v8 - 2) = v56;
      if (v59 < v61)
      {
        goto LABEL_81;
      }

      v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *>(v7, v8 - 4);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 4;
        if (v70)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v70)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *,false>(v7, v8 - 4, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v56 = v8[2];
      v55 = *v8;
      if (*(v8 - 2) < v56)
      {
        goto LABEL_60;
      }

      if (v56 >= *(a2 - 2))
      {
        v74 = v8 + 4;
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v75 = v74[2];
          v74 += 4;
        }

        while (v56 >= v75);
      }

      else
      {
        v72 = v8;
        do
        {
          v8 = v72 + 4;
          v73 = v72[6];
          v72 += 4;
        }

        while (v56 >= v73);
      }

      v76 = a2;
      if (v8 < a2)
      {
        v77 = a2;
        do
        {
          v76 = v77 - 4;
          v78 = *(v77 - 2);
          v77 -= 4;
        }

        while (v56 < v78);
      }

      while (v8 < v76)
      {
        v79 = *v8;
        *v8 = *v76;
        *v76 = v79;
        v80 = *(v8 + 2);
        v8[2] = v76[2];
        *(v76 + 2) = v80;
        do
        {
          v81 = v8[6];
          v8 += 4;
        }

        while (v56 >= v81);
        do
        {
          v82 = *(v76 - 2);
          v76 -= 4;
        }

        while (v56 < v82);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      a4 = 0;
      *(v8 - 2) = v55;
      *(v8 - 2) = v56;
    }
  }

  v86 = v8[6];
  v87 = v8[2];
  v88 = *(a2 - 2);
  if (v86 >= v87)
  {
    if (v88 >= v86)
    {
      return result;
    }

    v137 = *(v8 + 2);
    *(v8 + 2) = *(a2 - 2);
    *(a2 - 2) = v137;
    v8[6] = v88;
    *(a2 - 2) = v86;
    v138 = v8[6];
    v139 = v8[2];
    if (v138 >= v139)
    {
      return result;
    }

    v140 = *v8;
    *v8 = *(v8 + 2);
    *(v8 + 2) = v140;
    goto LABEL_194;
  }

  v89 = *v8;
  if (v88 >= v86)
  {
    *v8 = *(v8 + 2);
    *(v8 + 2) = v89;
    v8[2] = v86;
    v8[6] = v87;
    v151 = *(a2 - 2);
    if (v151 >= v87)
    {
      return result;
    }

    *(v8 + 2) = *(a2 - 2);
    *(a2 - 2) = v89;
    v8[6] = v151;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v89;
    v8[2] = v88;
  }

  *(a2 - 2) = v87;
  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[2];
  v6 = result[2];
  v7 = a3[2];
  if (v5 >= v6)
  {
    if (v7 >= v5)
    {
      v5 = a3[2];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[2] = v7;
      a3[2] = v5;
      v10 = a2[2];
      v11 = result[2];
      if (v10 < v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[2] = v10;
        a2[2] = v11;
        v5 = a3[2];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v5)
    {
      *result = *a3;
      *a3 = v8;
      result[2] = v7;
LABEL_9:
      a3[2] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[2] = v5;
    a2[2] = v6;
    v5 = a3[2];
    if (v5 < v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[2] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[2];
  if (v13 < v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[2] = v13;
    a4[2] = v5;
    v15 = a3[2];
    v16 = a2[2];
    if (v15 < v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[2] = v15;
      a3[2] = v16;
      v18 = a2[2];
      v19 = result[2];
      if (v18 < v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[2] = v18;
        a2[2] = v19;
      }
    }
  }

  v21 = a5[2];
  v22 = a4[2];
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[2] = v21;
    a5[2] = v22;
    v24 = a4[2];
    v25 = a3[2];
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[2] = v24;
      a4[2] = v25;
      v27 = a3[2];
      v28 = a2[2];
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[2] = v27;
        a3[2] = v28;
        v30 = a2[2];
        v31 = result[2];
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[2] = v30;
          a2[2] = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *>(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[6];
      v7 = a1[2];
      v8 = *(a2 - 2);
      if (v6 < v7)
      {
        v9 = *a1;
        if (v8 >= v6)
        {
          *a1 = *(a1 + 2);
          *(a1 + 2) = v9;
          a1[2] = v6;
          a1[6] = v7;
          v32 = *(a2 - 2);
          if (v32 >= v7)
          {
            return 1;
          }

          *(a1 + 2) = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[6] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[2] = v8;
        }

        *(a2 - 2) = v7;
        return 1;
      }

      if (v8 >= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      *(a1 + 2) = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[6] = v8;
      *(a2 - 2) = v6;
      v23 = a1[6];
      v24 = a1[2];
      if (v23 >= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = *(a1 + 2);
      *(a1 + 2) = v25;
LABEL_54:
      a1[2] = v23;
      a1[6] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_0 &,std::tuple<unsigned long,float> *,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4);
      return 1;
    }

    v16 = a1 + 6;
    v17 = a1[6];
    v18 = a1 + 2;
    v19 = a1[2];
    v20 = a1[10];
    if (v17 >= v19)
    {
      if (v20 >= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[6] = v20;
      a1[10] = v17;
      if (v20 >= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      *(a1 + 2) = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 >= v17)
      {
        *a1 = *(a1 + 2);
        *(a1 + 2) = v21;
        a1[2] = v17;
        a1[6] = v19;
        if (v20 >= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 2) = *(a1 + 4);
        *(a1 + 4) = v21;
        v18 = a1 + 6;
      }

      else
      {
        *a1 = *(a1 + 4);
        *(a1 + 4) = v21;
      }

      v16 = a1 + 10;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 2);
    if (v42 >= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    *(a1 + 4) = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[10] = v42;
    *(a2 - 2) = v20;
    v23 = a1[10];
    v44 = a1[6];
    if (v23 >= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[6] = v23;
    a1[10] = v44;
    v24 = a1[2];
    if (v23 >= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    *(a1 + 2) = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = a1[2];
    if (v3 < v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[2] = v3;
      *(a2 - 2) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[6];
  v11 = a1 + 2;
  v12 = a1[2];
  v13 = a1 + 10;
  v14 = a1[10];
  if (v10 < v12)
  {
    v15 = *a1;
    if (v14 >= v10)
    {
      *a1 = *(a1 + 2);
      *(a1 + 2) = v15;
      a1[2] = v10;
      a1[6] = v12;
      if (v14 >= v12)
      {
        goto LABEL_34;
      }

      *(a1 + 2) = *(a1 + 4);
      *(a1 + 4) = v15;
      v11 = a1 + 6;
    }

    else
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v15;
    }

    goto LABEL_33;
  }

  if (v14 < v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[6] = v14;
    a1[10] = v10;
    if (v14 < v12)
    {
      v28 = *a1;
      *a1 = v27;
      *(a1 + 2) = v28;
      v13 = a1 + 6;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 8;
  while (1)
  {
    v37 = v33[2];
    if (v37 < v36[2])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = a1 + v39;
        *(v40 + 6) = *(a1 + v39 + 32);
        *(v40 + 14) = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 >= *(v40 + 6))
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 4 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 4;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C9EC6C2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, float a5)
{
LABEL_1:
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 4;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v81 = *(a2 - 16);
        v82 = *v9;
        if (v81 < *v9)
        {
          *v9 = v81;
          *(a2 - 16) = v82;
          goto LABEL_111;
        }

        return;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v87 = *(v9 + 16);
      v88 = *v9;
      v89 = *(v9 + 32);
      if (v87 >= *v9)
      {
        if (v89 < v87)
        {
          *(v9 + 16) = v89;
          *(v9 + 32) = v87;
          v140 = *(v9 + 24);
          v141 = *(v9 + 40);
          *(v9 + 24) = v141;
          *(v9 + 40) = v140;
          if (v89 < v88)
          {
            *v9 = v89;
            *(v9 + 16) = v88;
            v142 = *(v9 + 8);
            *(v9 + 8) = v141;
            *(v9 + 24) = v142;
          }

          goto LABEL_198;
        }
      }

      else
      {
        if (v89 < v87)
        {
          *v9 = v89;
          *(v9 + 32) = v88;
          v90 = *(v9 + 8);
          *(v9 + 8) = *(v9 + 40);
          goto LABEL_196;
        }

        *v9 = v87;
        *(v9 + 16) = v88;
        v90 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 24);
        *(v9 + 24) = v90;
        if (v89 < v88)
        {
          *(v9 + 16) = v89;
          *(v9 + 32) = v88;
          *(v9 + 24) = *(v9 + 40);
LABEL_196:
          *(v9 + 40) = v90;
          v87 = v88;
LABEL_198:
          v152 = *(a2 - 16);
          if (v152 < v87)
          {
            *(v9 + 32) = v152;
            *(a2 - 16) = v87;
            v153 = *(v9 + 40);
            *(v9 + 40) = *(a2 - 8);
            *(a2 - 8) = v153;
            v154 = *(v9 + 32);
            v155 = *(v9 + 16);
            if (v154 < v155)
            {
              *(v9 + 16) = v154;
              *(v9 + 32) = v155;
              v156 = *(v9 + 24);
              v157 = *(v9 + 40);
              *(v9 + 24) = v157;
              *(v9 + 40) = v156;
              v158 = *v9;
              if (v154 < *v9)
              {
                *v9 = v154;
                *(v9 + 16) = v158;
                v159 = *(v9 + 8);
                *(v9 + 8) = v157;
                *(v9 + 24) = v159;
              }
            }
          }

          return;
        }
      }

      v87 = v89;
      goto LABEL_198;
    }

    if (v10 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *,0>(v9, (v9 + 16), (v9 + 32), (v9 + 48), (a2 - 16), a5);
      return;
    }

LABEL_9:
    if (v10 <= 23)
    {
      v91 = v9 + 16;
      v93 = v9 == a2 || v91 == a2;
      if (a4)
      {
        if (!v93)
        {
          v94 = 0;
          v95 = v9;
          do
          {
            v96 = v91;
            v97 = *(v95 + 16);
            v98 = *v95;
            if (v97 < *v95)
            {
              v99 = *(v95 + 24);
              v100 = v94;
              while (1)
              {
                v101 = v9 + v100;
                *(v101 + 16) = v98;
                *(v101 + 24) = *(v9 + v100 + 8);
                if (!v100)
                {
                  break;
                }

                v98 = *(v101 - 16);
                v100 -= 16;
                if (v97 >= v98)
                {
                  v102 = v9 + v100 + 16;
                  goto LABEL_131;
                }
              }

              v102 = v9;
LABEL_131:
              *v102 = v97;
              *(v102 + 8) = v99;
            }

            v91 = v96 + 16;
            v94 += 16;
            v95 = v96;
          }

          while (v96 + 16 != a2);
        }
      }

      else if (!v93)
      {
        v143 = (v9 + 24);
        do
        {
          v144 = v91;
          v145 = *(a1 + 16);
          v146 = *a1;
          if (v145 < *a1)
          {
            v147 = *(a1 + 24);
            v148 = v143;
            do
            {
              v149 = v148;
              *(v148 - 1) = v146;
              v150 = *(v148 - 4);
              v148 -= 4;
              *v149 = v150;
              v146 = *(v149 - 5);
            }

            while (v145 < v146);
            *(v148 - 1) = v145;
            *v148 = v147;
          }

          v91 = v144 + 16;
          v143 += 4;
          a1 = v144;
        }

        while (v144 + 16 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return;
      }

      v103 = (v10 - 2) >> 1;
      v104 = v103;
      do
      {
        v105 = v104;
        if (v103 >= v104)
        {
          v106 = (2 * v104) | 1;
          v107 = v9 + 16 * v106;
          if (2 * v105 + 2 >= v10)
          {
            v108 = *v107;
          }

          else
          {
            v108 = *(v107 + 16);
            v109 = *v107 >= v108;
            if (*v107 > v108)
            {
              v108 = *v107;
            }

            if (!v109)
            {
              v107 += 16;
              v106 = 2 * v105 + 2;
            }
          }

          v110 = v9 + 16 * v105;
          v111 = *v110;
          if (v108 >= *v110)
          {
            v112 = *(v110 + 8);
            do
            {
              v113 = v110;
              v110 = v107;
              *v113 = v108;
              *(v113 + 8) = *(v107 + 8);
              if (v103 < v106)
              {
                break;
              }

              v114 = (2 * v106) | 1;
              v107 = v9 + 16 * v114;
              v106 = 2 * v106 + 2;
              if (v106 >= v10)
              {
                v108 = *v107;
                v106 = v114;
              }

              else
              {
                v108 = *v107;
                v115 = *(v107 + 16);
                if (*v107 <= v115)
                {
                  v108 = *(v107 + 16);
                }

                if (*v107 >= v115)
                {
                  v106 = v114;
                }

                else
                {
                  v107 += 16;
                }
              }
            }

            while (v108 >= v111);
            *v110 = v111;
            *(v110 + 8) = v112;
          }
        }

        v104 = v105 - 1;
      }

      while (v105);
      while (2)
      {
        v116 = 0;
        v117 = *v9;
        v118 = *(v9 + 8);
        v119 = v9;
        do
        {
          v120 = v119 + 16 * v116;
          v121 = v120 + 16;
          v122 = (2 * v116) | 1;
          v116 = 2 * v116 + 2;
          if (v116 >= v10)
          {
            v123 = *v121;
            v116 = v122;
          }

          else
          {
            v125 = *(v120 + 32);
            v124 = v120 + 32;
            v123 = v125;
            v126 = *(v124 - 16);
            v127 = v126 >= v125;
            if (v126 > v125)
            {
              v123 = *(v124 - 16);
            }

            if (v127)
            {
              v116 = v122;
            }

            else
            {
              v121 = v124;
            }
          }

          *v119 = v123;
          *(v119 + 8) = *(v121 + 8);
          v119 = v121;
        }

        while (v116 <= ((v10 - 2) >> 1));
        if (v121 != a2 - 16)
        {
          *v121 = *(a2 - 16);
          *(v121 + 8) = *(a2 - 8);
          *(a2 - 16) = v117;
          *(a2 - 8) = v118;
          v128 = (v121 - v9 + 16) >> 4;
          v129 = v128 < 2;
          v130 = v128 - 2;
          if (!v129)
          {
            v131 = v130 >> 1;
            v132 = v9 + 16 * v131;
            v133 = *v132;
            v134 = *v121;
            if (*v132 < *v121)
            {
              v118 = *(v121 + 8);
              do
              {
                v135 = v121;
                v121 = v132;
                *v135 = v133;
                *(v135 + 8) = *(v132 + 8);
                if (!v131)
                {
                  break;
                }

                v131 = (v131 - 1) >> 1;
                v132 = v9 + 16 * v131;
                v133 = *v132;
              }

              while (*v132 < v134);
              *v121 = v134;
LABEL_174:
              *(v121 + 8) = v118;
            }
          }

          a2 -= 16;
          v129 = v10-- <= 2;
          if (v129)
          {
            return;
          }

          continue;
        }

        break;
      }

      *v121 = v117;
      goto LABEL_174;
    }

    v11 = v9 + 16 * (v10 >> 1);
    v12 = v11;
    v13 = *(a2 - 16);
    if (v10 >= 0x81)
    {
      v14 = *v11;
      v15 = *v9;
      if (*v11 >= *v9)
      {
        if (v13 < v14)
        {
          *v11 = v13;
          *(a2 - 16) = v14;
          v20 = *(v11 + 8);
          *(v11 + 8) = *(a2 - 8);
          *(a2 - 8) = v20;
          v21 = *v9;
          if (*v11 < *v9)
          {
            *v9 = *v11;
            *v11 = v21;
            v22 = *(v9 + 8);
            *(v9 + 8) = *(v11 + 8);
            *(v11 + 8) = v22;
          }
        }
      }

      else
      {
        if (v13 < v14)
        {
          *v9 = v13;
          *(a2 - 16) = v15;
          v16 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 8);
          goto LABEL_26;
        }

        *v9 = v14;
        *v11 = v15;
        v16 = *(v9 + 8);
        *(v9 + 8) = *(v11 + 8);
        *(v11 + 8) = v16;
        v26 = *(a2 - 16);
        if (v26 < v15)
        {
          *v11 = v26;
          *(a2 - 16) = v15;
          *(v11 + 8) = *(a2 - 8);
LABEL_26:
          *(a2 - 8) = v16;
        }
      }

      v27 = v11 - 16;
      v28 = *(v11 - 16);
      v29 = *(v9 + 16);
      v30 = *(a2 - 32);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          *v27 = v30;
          *(a2 - 32) = v28;
          v32 = *(v11 - 8);
          *(v11 - 8) = *(a2 - 24);
          *(a2 - 24) = v32;
          v33 = *(v9 + 16);
          if (*v27 < v33)
          {
            *(v9 + 16) = *v27;
            *v27 = v33;
            v34 = *(v9 + 24);
            *(v9 + 24) = *(v11 - 8);
            *(v11 - 8) = v34;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          *(v9 + 16) = v30;
          *(a2 - 32) = v29;
          v31 = *(v9 + 24);
          *(v9 + 24) = *(a2 - 24);
          goto LABEL_38;
        }

        *(v9 + 16) = v28;
        *v27 = v29;
        v31 = *(v9 + 24);
        *(v9 + 24) = *(v11 - 8);
        *(v11 - 8) = v31;
        v36 = *(a2 - 32);
        if (v36 < v29)
        {
          *v27 = v36;
          *(a2 - 32) = v29;
          *(v11 - 8) = *(a2 - 24);
LABEL_38:
          *(a2 - 24) = v31;
        }
      }

      v39 = *(v11 + 16);
      v37 = v11 + 16;
      v38 = v39;
      v40 = *(v9 + 32);
      v41 = *(a2 - 48);
      if (v39 >= v40)
      {
        if (v41 < v38)
        {
          *v37 = v41;
          *(a2 - 48) = v38;
          v43 = *(v37 + 8);
          *(v37 + 8) = *(a2 - 40);
          *(a2 - 40) = v43;
          v44 = *(v9 + 32);
          if (*v37 < v44)
          {
            *(v9 + 32) = *v37;
            *v37 = v44;
            v45 = *(v9 + 40);
            *(v9 + 40) = *(v37 + 8);
            *(v37 + 8) = v45;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          *(v9 + 32) = v41;
          *(a2 - 48) = v40;
          v42 = *(v9 + 40);
          *(v9 + 40) = *(a2 - 40);
          goto LABEL_47;
        }

        *(v9 + 32) = v38;
        *v37 = v40;
        v42 = *(v9 + 40);
        *(v9 + 40) = *(v37 + 8);
        *(v37 + 8) = v42;
        v46 = *(a2 - 48);
        if (v46 < v40)
        {
          *v37 = v46;
          *(a2 - 48) = v40;
          *(v37 + 8) = *(a2 - 40);
LABEL_47:
          *(a2 - 40) = v42;
        }
      }

      v47 = *v12;
      v48 = *v27;
      v49 = *v37;
      if (*v12 >= *v27)
      {
        if (v49 >= v47)
        {
LABEL_54:
          v48 = v47;
        }

        else
        {
          *v12 = v49;
          *v37 = v47;
          v51 = *(v12 + 8);
          v52 = *(v37 + 8);
          *(v12 + 8) = v52;
          *(v37 + 8) = v51;
          if (v49 >= v48)
          {
            goto LABEL_57;
          }

          *v27 = v49;
          *v12 = v48;
          v53 = *(v27 + 8);
          *(v27 + 8) = v52;
          *(v12 + 8) = v53;
        }
      }

      else
      {
        if (v49 < v47)
        {
          *v27 = v49;
          *v37 = v48;
          v50 = *(v27 + 8);
          *(v27 + 8) = *(v37 + 8);
          *(v37 + 8) = v50;
          goto LABEL_54;
        }

        *v27 = v47;
        *v12 = v48;
        v54 = *(v27 + 8);
        *(v27 + 8) = *(v12 + 8);
        *(v12 + 8) = v54;
        if (v49 < v48)
        {
          *v12 = v49;
          *v37 = v48;
          *(v12 + 8) = *(v37 + 8);
          *(v37 + 8) = v54;
LABEL_57:
          v48 = v49;
        }
      }

      v55 = *v9;
      *v9 = v48;
      *v12 = v55;
      v56 = *(v9 + 8);
      *(v9 + 8) = *(v12 + 8);
      *(v12 + 8) = v56;
      goto LABEL_59;
    }

    v17 = *v9;
    v18 = *v12;
    if (*v9 >= *v12)
    {
      if (v13 < v17)
      {
        *v9 = v13;
        *(a2 - 16) = v17;
        v23 = *(v9 + 8);
        *(v9 + 8) = *(a2 - 8);
        *(a2 - 8) = v23;
        v24 = *v12;
        if (*v9 < *v12)
        {
          *v12 = *v9;
          *v9 = v24;
          v25 = *(v12 + 8);
          *(v12 + 8) = *(v9 + 8);
          *(v9 + 8) = v25;
        }
      }

      goto LABEL_59;
    }

    if (v13 >= v17)
    {
      *v12 = v17;
      *v9 = v18;
      v19 = *(v12 + 8);
      *(v12 + 8) = *(v9 + 8);
      *(v9 + 8) = v19;
      v35 = *(a2 - 16);
      if (v35 >= v18)
      {
        goto LABEL_59;
      }

      *v9 = v35;
      *(a2 - 16) = v18;
      *(v9 + 8) = *(a2 - 8);
    }

    else
    {
      *v12 = v13;
      *(a2 - 16) = v18;
      v19 = *(v12 + 8);
      *(v12 + 8) = *(a2 - 8);
    }

    *(a2 - 8) = v19;
LABEL_59:
    --a3;
    v57 = *v9;
    if ((a4 & 1) != 0 || *(v9 - 16) < v57)
    {
      v58 = 0;
      v59 = *(v9 + 8);
      do
      {
        v60 = *(v9 + v58 + 16);
        v58 += 16;
      }

      while (v60 < v57);
      v61 = v9 + v58;
      v62 = a2;
      if (v58 == 16)
      {
        v62 = a2;
        do
        {
          if (v61 >= v62)
          {
            break;
          }

          v64 = *(v62 - 2);
          v62 -= 2;
        }

        while (v64 >= v57);
      }

      else
      {
        do
        {
          v63 = *(v62 - 2);
          v62 -= 2;
        }

        while (v63 >= v57);
      }

      if (v61 >= v62)
      {
        v9 += v58;
      }

      else
      {
        v65 = *v62;
        v9 += v58;
        v66 = v62;
        do
        {
          *v9 = v65;
          *v66 = v60;
          v67 = *(v9 + 8);
          *(v9 + 8) = *(v66 + 2);
          *(v66 + 2) = v67;
          do
          {
            v68 = *(v9 + 16);
            v9 += 16;
            v60 = v68;
          }

          while (v68 < v57);
          do
          {
            v69 = *(v66 - 2);
            v66 -= 2;
            v65 = v69;
          }

          while (v69 >= v57);
        }

        while (v9 < v66);
      }

      if (v9 - 16 != a1)
      {
        *a1 = *(v9 - 16);
        *(a1 + 8) = *(v9 - 8);
      }

      *(v9 - 16) = v57;
      *(v9 - 8) = v59;
      if (v61 < v62)
      {
        goto LABEL_82;
      }

      v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *>(a1, v9 - 16, v59);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *>(v9, a2, v71))
      {
        a2 = v9 - 16;
        if (v70)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v70)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *,false>(a1, v9 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v57 >= *(a2 - 16))
      {
        v73 = v9 + 16;
        do
        {
          v9 = v73;
          if (v73 >= a2)
          {
            break;
          }

          v73 += 16;
        }

        while (v57 >= *v9);
      }

      else
      {
        do
        {
          v72 = *(v9 + 16);
          v9 += 16;
        }

        while (v57 >= v72);
      }

      v74 = a2;
      if (v9 < a2)
      {
        v74 = a2;
        do
        {
          v75 = *(v74 - 16);
          v74 -= 16;
        }

        while (v57 < v75);
      }

      a5 = *(a1 + 8);
      if (v9 < v74)
      {
        v76 = *v9;
        v77 = *v74;
        do
        {
          *v9 = v77;
          *v74 = v76;
          v78 = *(v9 + 8);
          *(v9 + 8) = *(v74 + 8);
          *(v74 + 8) = v78;
          do
          {
            v79 = *(v9 + 16);
            v9 += 16;
            v76 = v79;
          }

          while (v57 >= v79);
          do
          {
            v80 = *(v74 - 16);
            v74 -= 16;
            v77 = v80;
          }

          while (v57 < v80);
        }

        while (v9 < v74);
      }

      if (v9 - 16 != a1)
      {
        *a1 = *(v9 - 16);
        *(a1 + 8) = *(v9 - 8);
      }

      a4 = 0;
      *(v9 - 16) = v57;
      *(v9 - 8) = a5;
    }
  }

  v83 = *(v9 + 16);
  v84 = *v9;
  v85 = *(a2 - 16);
  if (v83 < *v9)
  {
    if (v85 >= v83)
    {
      *v9 = v83;
      *(v9 + 16) = v84;
      v86 = *(v9 + 8);
      *(v9 + 8) = *(v9 + 24);
      *(v9 + 24) = v86;
      v151 = *(a2 - 16);
      if (v151 >= v84)
      {
        return;
      }

      *(v9 + 16) = v151;
      *(a2 - 16) = v84;
      *(v9 + 24) = *(a2 - 8);
    }

    else
    {
      *v9 = v85;
      *(a2 - 16) = v84;
LABEL_111:
      v86 = *(v9 + 8);
      *(v9 + 8) = *(a2 - 8);
    }

    *(a2 - 8) = v86;
    return;
  }

  if (v85 < v83)
  {
    *(v9 + 16) = v85;
    *(a2 - 16) = v83;
    v136 = *(v9 + 24);
    *(v9 + 24) = *(a2 - 8);
    *(a2 - 8) = v136;
    v137 = *(v9 + 16);
    v138 = *v9;
    if (v137 < *v9)
    {
      *v9 = v137;
      *(v9 + 16) = v138;
      v139 = *(v9 + 8);
      *(v9 + 8) = *(v9 + 24);
      *(v9 + 24) = v139;
    }
  }
}

float std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, float result)
{
  v6 = *a2;
  v7 = *a1;
  v8 = *a3;
  if (*a2 >= *a1)
  {
    if (v8 >= v6)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v6;
      result = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = result;
      v9 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v9;
        result = *(a1 + 2);
        *(a1 + 2) = *(a2 + 2);
        *(a2 + 2) = result;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v8 < v6)
    {
      *a1 = v8;
      *a3 = v7;
      result = *(a1 + 2);
      *(a1 + 2) = *(a3 + 2);
LABEL_9:
      *(a3 + 2) = result;
      v6 = v7;
      goto LABEL_11;
    }

    *a1 = v6;
    *a2 = v7;
    result = *(a1 + 2);
    *(a1 + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v6 = *a3;
    if (*a3 < v7)
    {
      *a2 = v6;
      *a3 = v7;
      *(a2 + 2) = *(a3 + 2);
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v6)
  {
    *a3 = *a4;
    *a4 = v6;
    result = *(a3 + 2);
    *(a3 + 2) = *(a4 + 2);
    *(a4 + 2) = result;
    v10 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v10;
      result = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = result;
      v11 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v11;
        result = *(a1 + 2);
        *(a1 + 2) = *(a2 + 2);
        *(a2 + 2) = result;
      }
    }
  }

  v12 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v12;
    result = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = result;
    v13 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v13;
      result = *(a3 + 2);
      *(a3 + 2) = *(a4 + 2);
      *(a4 + 2) = result;
      v14 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v14;
        result = *(a2 + 2);
        *(a2 + 2) = *(a3 + 2);
        *(a3 + 2) = result;
        v15 = *a1;
        if (*a2 < *a1)
        {
          *a1 = *a2;
          *a2 = v15;
          result = *(a1 + 2);
          *(a1 + 2) = *(a2 + 2);
          *(a2 + 2) = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *>(uint64_t a1, uint64_t a2, float a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *(a1 + 16);
      v7 = *a1;
      v8 = *(a2 - 16);
      if (v6 >= *a1)
      {
        if (v8 < v6)
        {
          *(a1 + 16) = v8;
          *(a2 - 16) = v6;
          v19 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 8);
          *(a2 - 8) = v19;
          v20 = *(a1 + 16);
          v21 = *a1;
          if (v20 < *a1)
          {
            *a1 = v20;
            *(a1 + 16) = v21;
            v22 = *(a1 + 8);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 24) = v22;
          }
        }

        return 1;
      }

      if (v8 >= v6)
      {
        *a1 = v6;
        *(a1 + 16) = v7;
        v9 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v9;
        v29 = *(a2 - 16);
        if (v29 >= v7)
        {
          return 1;
        }

        *(a1 + 16) = v29;
        *(a2 - 16) = v7;
        *(a1 + 24) = *(a2 - 8);
        goto LABEL_14;
      }

      *a1 = v8;
      *(a2 - 16) = v7;
LABEL_13:
      v9 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
LABEL_14:
      *(a2 - 8) = v9;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,estimateNumberOfSegments(std::vector<dlib::matrix<float,1l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>> const&)::$_1 &,std::tuple<unsigned long,float> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16), a3);
        return 1;
      }

      goto LABEL_15;
    }

    v15 = *(a1 + 16);
    v16 = *a1;
    v17 = *(a1 + 32);
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        *(a1 + 16) = v17;
        *(a1 + 32) = v15;
        v26 = *(a1 + 24);
        v27 = *(a1 + 40);
        *(a1 + 24) = v27;
        *(a1 + 40) = v26;
        if (v17 < v16)
        {
          *a1 = v17;
          *(a1 + 16) = v16;
          v28 = *(a1 + 8);
          *(a1 + 8) = v27;
          *(a1 + 24) = v28;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v17 < v15)
      {
        *a1 = v17;
        *(a1 + 32) = v16;
        v18 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
LABEL_48:
        *(a1 + 40) = v18;
        v15 = v16;
LABEL_50:
        v39 = *(a2 - 16);
        if (v39 < v15)
        {
          *(a1 + 32) = v39;
          *(a2 - 16) = v15;
          v40 = *(a1 + 40);
          *(a1 + 40) = *(a2 - 8);
          *(a2 - 8) = v40;
          v41 = *(a1 + 32);
          v42 = *(a1 + 16);
          if (v41 < v42)
          {
            *(a1 + 16) = v41;
            *(a1 + 32) = v42;
            v43 = *(a1 + 24);
            v44 = *(a1 + 40);
            *(a1 + 24) = v44;
            *(a1 + 40) = v43;
            v45 = *a1;
            if (v41 < *a1)
            {
              *a1 = v41;
              *(a1 + 16) = v45;
              v46 = *(a1 + 8);
              *(a1 + 8) = v44;
              *(a1 + 24) = v46;
            }
          }
        }

        return 1;
      }

      *a1 = v15;
      *(a1 + 16) = v16;
      v18 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v18;
      if (v17 < v16)
      {
        *(a1 + 16) = v17;
        *(a1 + 32) = v16;
        *(a1 + 24) = *(a1 + 40);
        goto LABEL_48;
      }
    }

    v15 = v17;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 16);
    v5 = *a1;
    if (v4 < *a1)
    {
      *a1 = v4;
      *(a2 - 16) = v5;
      goto LABEL_13;
    }

    return 1;
  }

LABEL_15:
  v10 = (a1 + 32);
  v11 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = *a1;
  if (v12 >= *a1)
  {
    if (v11 < v12)
    {
      *(a1 + 16) = v11;
      *(a1 + 32) = v12;
      v23 = *(a1 + 24);
      v24 = *(a1 + 40);
      *(a1 + 24) = v24;
      *(a1 + 40) = v23;
      if (v11 < v13)
      {
        *a1 = v11;
        *(a1 + 16) = v13;
        v25 = *(a1 + 8);
        *(a1 + 8) = v24;
        *(a1 + 24) = v25;
      }
    }
  }

  else
  {
    if (v11 >= v12)
    {
      *a1 = v12;
      *(a1 + 16) = v13;
      v14 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v14;
      if (v11 >= v13)
      {
        goto LABEL_35;
      }

      *(a1 + 16) = v11;
      *(a1 + 32) = v13;
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      *a1 = v11;
      *(a1 + 32) = v13;
      v14 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 40);
    }

    *(a1 + 40) = v14;
  }

LABEL_35:
  v30 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = *v10;
    if (*v30 < *v10)
    {
      v35 = *(v30 + 8);
      v36 = v31;
      while (1)
      {
        v37 = a1 + v36;
        *(v37 + 48) = v34;
        *(v37 + 56) = *(a1 + v36 + 40);
        if (v36 == -32)
        {
          break;
        }

        v34 = *(v37 + 16);
        v36 -= 16;
        if (v33 >= v34)
        {
          v38 = a1 + v36 + 48;
          goto LABEL_43;
        }
      }

      v38 = a1;
LABEL_43:
      *v38 = v33;
      *(v38 + 8) = v35;
      if (++v32 == 8)
      {
        return v30 + 16 == a2;
      }
    }

    v10 = v30;
    v31 += 16;
    v30 += 16;
    if (v30 == a2)
    {
      return 1;
    }
  }
}