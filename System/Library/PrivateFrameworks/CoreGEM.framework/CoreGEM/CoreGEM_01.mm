void sub_2453A4894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::mutex *a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2453A48E4(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_2453A5EE4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_2453A4934(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (a2 == 8)
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#supl,processREvent,read stream error", &v7, 2u);
    }

    a3[193] = 0;
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#supl,processREvent,read stream opened", &v7, 2u);
    }

    a3[193] = 1;
    if (a3[195] == 1)
    {
      a3[192] = sub_2453A3690(a3);
LABEL_10:
      sub_2453A3C8C(a3);
    }
  }

  else if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#supl,processREvent,unsupported event,%lu", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2453A4A98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF018;
  if (a2 == 8)
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#supl write stream error", &v11, 2u);
    }

    a3[194] = 0;
    goto LABEL_14;
  }

  if (a2 == 4)
  {
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#supl write stream can accept bytes", &v11, 2u);
    }

    a3[195] = 1;
    if ((a3[193] & 1) == 0)
    {
      v9 = qword_2813CF018;
      if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      LOWORD(v11) = 0;
      v6 = "#supl read stream not opened yet";
      v7 = v9;
      v8 = 2;
      goto LABEL_20;
    }

    a3[192] = sub_2453A3690(a3);
LABEL_14:
    sub_2453A3C8C(a3);
    goto LABEL_18;
  }

  if (a2 != 1)
  {
    if (!os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v11 = 134217984;
    v12 = a2;
    v6 = "#supl write event not supported event=%lu";
    v7 = v4;
    v8 = 12;
LABEL_20:
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, v6, &v11, v8);
    goto LABEL_18;
  }

  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "#supl write stream opened", &v11, 2u);
  }

  a3[194] = 1;
LABEL_18:
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2453A4C7C(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  Status = CFReadStreamGetStatus(*(a1 + 8));
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    v6 = 134349056;
    v7 = Status;
    _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "#supl,read stream in bad state streamStatus,%{public}lu", &v6, 0xCu);
  }

  v4 = CFReadStreamCopyError(*(a1 + 8));
  sub_2453A4E78(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2453A4D58(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  Status = CFWriteStreamGetStatus(*(a1 + 16));
  v3 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
  {
    v6 = 134349056;
    v7 = Status;
    _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, "#supl,write stream in bad state streamStatus,%{public}lu", &v6, 0xCu);
  }

  v4 = CFWriteStreamCopyError(*(a1 + 16));
  sub_2453A4E78(a1, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2453A4E34(uint64_t a1)
{
  v1 = *(a1 + 32);
  MEMORY[0x245D69A90](*(v1 + 8), 0);
  v2 = *(v1 + 16);

  JUMPOUT(0x245D69B50);
}

uint64_t sub_2453A4E78(uint64_t a1, CFErrorRef err)
{
  v29 = *MEMORY[0x277D85DE8];
  if (err && CFErrorGetCode(err))
  {
    sub_2453A2FDC(v21);
    sub_2453A5F30(&v22, "domain,", 7);
    Domain = CFErrorGetDomain(err);
    CStringPtr = CFStringGetCStringPtr(Domain, 0x8000100u);
    v6 = CStringPtr;
    if (CStringPtr)
    {
      v7 = strlen(CStringPtr);
      sub_2453A5F30(&v22, v6, v7);
      v8 = ",";
      v9 = 1;
    }

    else
    {
      v8 = "unkwn,";
      v9 = 6;
    }

    sub_2453A5F30(&v22, v8, v9);
    sub_2453A5F30(&v22, "streamErrCode,", 14);
    Code = CFErrorGetCode(err);
    v13 = MEMORY[0x245D69F70](&v22, Code);
    sub_2453A5F30(v13, ",streamErrDescription,", 22);
    v14 = CFErrorCopyDescription(err);
    v15 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      std::stringbuf::str();
      v18 = v20 >= 0 ? &v19 : v19;
      *buf = 136446210;
      v28 = v18;
      _os_log_error_impl(&dword_245396000, v15, OS_LOG_TYPE_ERROR, "#supl,err,%{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(v19);
      }
    }

    CFRelease(v14);
    sub_2453A35CC(a1);
    v21[0] = *MEMORY[0x277D82818];
    v16 = *(MEMORY[0x277D82818] + 72);
    *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v22 = v16;
    v23 = MEMORY[0x277D82878] + 16;
    if (v25 < 0)
    {
      operator delete(v24[7].__locale_);
    }

    v23 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v24);
    std::iostream::~basic_iostream();
    result = MEMORY[0x245D6A070](&v26);
    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    return sub_2453A35CC(a1);
  }

  return result;
}

void sub_2453A51B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2453A3280(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2453A51D8(uint64_t a1)
{
  v2 = atomic_load((a1 + 28));
  if (v2)
  {
    v4 = (a1 + 24);
    result = *(a1 + 24);
    if (result != -1)
    {
      return result;
    }

    v5 = CFReadStreamCopyProperty(*(a1 + 8), *MEMORY[0x277CBF078]);
    if (v5)
    {
      v6 = v5;
      v12.location = 0;
      v12.length = 4;
      CFDataGetBytes(v5, v12, (a1 + 24));
      CFRelease(v6);
      return *v4;
    }

    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
    {
      v10 = 0;
      v8 = "#supl couldn't obtain fd of fReadStream";
      v9 = &v10;
LABEL_11:
      _os_log_fault_impl(&dword_245396000, v7, OS_LOG_TYPE_FAULT, v8, v9, 2u);
    }
  }

  else
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v8 = "#supl connection not open";
      v9 = buf;
      goto LABEL_11;
    }
  }

  sub_2453A48E4(*(a1 + 288), 12);
  return 4294967293;
}

CFIndex sub_2453A52E8(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2453A6258(__p, 2048);
  v4 = __p[0];
  v5 = __p[1] - __p[0];
  if (__p[0])
  {
    v6 = __p[1] == __p[0];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240448;
      v20 = v4 == 0;
      v21 = 2050;
      v22 = v5;
      _os_log_fault_impl(&dword_245396000, v7, OS_LOG_TYPE_FAULT, "#supl bad inputs nullBuf,%{public}d,size,%{public}zu", buf, 0x12u);
    }

    sub_2453A48E4(*(a1 + 288), 7);
    v8 = 4294967292;
    goto LABEL_23;
  }

  v9 = atomic_load((a1 + 28));
  if ((v9 & 1) == 0)
  {
    v12 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_245396000, v12, OS_LOG_TYPE_FAULT, "#supl connection not open", buf, 2u);
    }

LABEL_19:
    sub_2453A48E4(*(a1 + 288), 6);
    v8 = 4294967293;
    goto LABEL_23;
  }

  if (!CFReadStreamHasBytesAvailable(*(a1 + 8)))
  {
    v13 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v13, OS_LOG_TYPE_DEBUG, "#supl CFReadStreamHasBytesAvailable failed", buf, 2u);
    }

    v8 = 0;
    goto LABEL_23;
  }

  v8 = CFReadStreamRead(*(a1 + 8), v4, v5);
  v10 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v20 = v8;
    _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#supl Read retVal,%{public}d", buf, 8u);
  }

  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v11 = v8 & 0x7FFFFFFF;
  sub_2453A2ADC(v4, v11, 1);
  if (v8)
  {
    if (v11 <= __p[1] - __p[0])
    {
      if (v11 < __p[1] - __p[0])
      {
        __p[1] = __p[0] + v11;
      }
    }

    else
    {
      sub_2453A6334(__p, v11 - (__p[1] - __p[0]));
    }

    v16 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v16;
      operator delete(v16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = *__p;
    *(a2 + 16) = v18;
    goto LABEL_25;
  }

LABEL_23:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_25:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

CFIndex sub_2453A55A8(uint64_t a1, unsigned __int8 **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 - *a2;
  if (*a2)
  {
    v6 = v3 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v9 = atomic_load((a1 + 28));
    if (v9)
    {
      v8 = CFWriteStreamWrite(*(a1 + 16), *a2, v5);
      v10 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 67240192;
        v15 = v8;
        _os_log_impl(&dword_245396000, v10, OS_LOG_TYPE_DEFAULT, "#supl,writeHelper,retVal,%{public}d", &v14, 8u);
      }

      if ((v8 & 0x80000000) == 0)
      {
        sub_2453A2ADC(v4, v5, 0);
        goto LABEL_17;
      }
    }

    else
    {
      v11 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&dword_245396000, v11, OS_LOG_TYPE_ERROR, "#supl,writeHelper,not open", &v14, 2u);
      }
    }

    sub_2453A48E4(*(a1 + 288), 8);
    v8 = 4294967293;
    goto LABEL_17;
  }

  v7 = qword_2813CF018;
  if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
  {
    v14 = 67240448;
    v15 = v4 == 0;
    v16 = 2050;
    v17 = v5;
    _os_log_fault_impl(&dword_245396000, v7, OS_LOG_TYPE_FAULT, "#supl,writeHelper,bad_inputs,nullBuf,%{public}d,size,%{public}zu", &v14, 0x12u);
  }

  sub_2453A48E4(*(a1 + 288), 9);
  v8 = 4294967292;
LABEL_17:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2453A5774(uint64_t a1)
{
  v2 = atomic_load((a1 + 28));
  if (v2)
  {
    sub_2453A35CC(a1);
    sub_2453A48E4(*(a1 + 288), 10);
    return 4294967294;
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#supl,close,not_open", v5, 2u);
    }

    sub_2453A48E4(*(a1 + 288), 11);
    return 4294967293;
  }
}

uint64_t sub_2453A5818(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245D6A020](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2453A58D4(a1);
  return a1;
}

void sub_2453A58AC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2453A58D4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_2453A59F4(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2453A5A50(exception, a1);
  __cxa_throw(exception, off_278E36C38, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2453A5A50(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2453A5A84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2453A5B1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2453A5BB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2453A5C4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_2453A5CE4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453A5D64(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453A5DE4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453A5E64(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_2453A5EE4()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void *sub_2453A5F30(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D69F40](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2453A59DC();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245D69F50](v20);
  return a1;
}

void sub_2453A61D8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x245D69F50](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2453A61ACLL);
}

void *sub_2453A6258(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2453A62CC(result, a2);
  }

  return result;
}

void sub_2453A62B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453A62CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2453A631C();
}

void sub_2453A6334(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2453A631C();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_2453A646C(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  v7 = *a4;
  *(a1 + 136) = 850045863;
  v8 = a1 + 136;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 111) = 0;
  *(a1 + 88) = 0;
  *(a1 + 127) = 0;
  *(a1 + 119) = 0;
  *(a1 + 135) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 185) = 0u;
  sub_24543F590(a1 + 208);
  *(v8 + 528) = 0;
  *(v8 + 536) = 0;
  *(v8 + 560) = 0;
  *(v8 + 568) = 0;
  *(v8 + 576) = 0u;
  *(v8 + 592) = 0u;
  *(v8 + 608) = 0;
  *(a1 + 752) = _Block_copy(a2);
  *(a1 + 760) = _Block_copy(a3);
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  RadioVendor = TelephonyRadiosGetRadioVendor();
  *(a1 + 768) = RadioVendor;
  v10 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    v12 = RadioVendor;
    _os_log_debug_impl(&dword_245396000, v10, OS_LOG_TYPE_DEBUG, "setModemVendor,modemVendor,%{public}d", buf, 8u);
  }

  operator new();
}

void sub_2453A6BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  sub_2453A5E64(&a37);
  sub_2453A5DE4(&a41);
  sub_2453A5D64(&a45);
  sub_2453A5CE4(&a49);
  sub_2453AA7C8(v51[1].__m_.__opaque);
  std::mutex::~mutex(v51);
  v54 = *(v49 + 112);
  if (v54)
  {
    *(v49 + 120) = v54;
    operator delete(v54);
  }

  if (*v52 < 0)
  {
    operator delete(*(v49 + 88));
  }

  sub_2453AB858(v50, 0);
  sub_2453AB7D8(v49 + 32);
  sub_2453AB758(v49);
  _Unwind_Resume(a1);
}

void *sub_2453A6DF8(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "clearFixHandler, clearing cache", v4, 2u);
  }

  sub_24543F590(v4);
  return memcpy((a1 + 208), v4, 0x1C8uLL);
}

void sub_2453A6E84(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 400) & 2) != 0)
  {
    LOWORD(v25) = -1;
    DWORD1(v25) = -1;
    WORD4(v25) = -1;
    BYTE10(v25) = 0;
    HIDWORD(v25) = -1;
    *v26 = 0;
    v26[2] = 0;
    *&v26[4] = -1;
    *&v26[12] = -16777216;
    v26[16] = -1;
    *&v26[20] = -1;
    v9 = *(a2 + 264);
    if (!v9)
    {
      sub_24539DA30();
      v9 = *(qword_2813CEEB8 + 264);
    }

    sub_2453B2EC8(v9, &v25);
    v10 = sub_24539D8D0() * 0.000000001 - a3 * 0.000000001;
    v11 = WORD4(v25);
    if (v10 > 0.0 && v10 <= 10.0)
    {
      v13 = llround(v10);
      v11 = WORD4(v25) - v13;
      if (WORD4(v25) <= v13)
      {
        v14 = qword_2813CF018;
        if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          *&buf[4] = v11;
          _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#process,#nilr,startEmergencyPosition timeout adjustment,out of range,%{public}d", buf, 8u);
        }

        v11 = 1;
      }
    }

    v15 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349568;
      *&buf[4] = v10;
      *&buf[12] = 1026;
      *&buf[14] = WORD4(v25);
      *&buf[18] = 1026;
      *&buf[20] = v11;
      _os_log_impl(&dword_245396000, v15, OS_LOG_TYPE_DEFAULT, "#input,#nilr,startEmergencyPosition timeout adjustment,age,%{public}.4f,prev,%{public}hu,resolved,%{public}d", buf, 0x18u);
    }

    WORD4(v25) = v11;
    v16 = 1;
    v22[0] = 1;
    v23 = -1.0;
    v24 = 0;
    if (*(a2 + 401))
    {
      v17 = *(a2 + 320);
      if (!v17)
      {
        sub_24539DA30();
        v17 = *(qword_2813CEEB8 + 320);
      }

      sub_24541E62C(buf, v17);
      sub_2453B3FD8(buf, v22);
      sub_24541E818(buf);
      v16 = v22[0];
    }

    v18 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67241472;
      *&buf[4] = v16;
      *&buf[8] = 1026;
      *&buf[10] = 0;
      *&buf[14] = 1026;
      *&buf[16] = v24;
      *&buf[20] = 1026;
      *&buf[22] = HIBYTE(v24);
      *&buf[26] = 1026;
      *&buf[28] = BYTE1(v24);
      *&buf[32] = 1026;
      *&buf[34] = BYTE2(v24);
      _os_log_impl(&dword_245396000, v18, OS_LOG_TYPE_DEFAULT, "#input,#nilr,#cp,startEmergencyPosition,cplaneContext,heloEnabled,%{public}d,cplane_early_return,%{public}d,include1xMsb,%{public}d,useCdmaTimeForMeas,%{public}d,optimizeGnssMeasWith1xMsb,%{public}d,optimizeAfltMeasWith1xMsb,%{public}d", buf, 0x26u);
    }

    sub_245481A7C(*(a1 + 72), v16 & 1, 0, v23);
    v19 = *(a1 + 72);
    *buf = v25;
    *&buf[16] = *v26;
    *&buf[28] = *&v26[12];
    if (sub_245482478(v19, buf, 1))
    {
      v20 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "#process,#nilr,#cp,startEmergencyPositionRequest succeeded", buf, 2u);
      }
    }

    else
    {
      v3 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v4 = "#process,#nilr,#cp,Error:startEmergencyPositionRequest failed";
        v5 = buf;
        goto LABEL_29;
      }
    }
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      v4 = "#process,#nilr,PositionRequest payload is missing";
      v5 = &v25;
LABEL_29:
      _os_log_error_impl(&dword_245396000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2453A7220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_24541E818(va);
  _Unwind_Resume(a1);
}

void sub_2453A723C(uint64_t a1, double a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    sub_245484318(*(a1 + 72), a2);
    if (*(a1 + 768) == 4)
    {
      sub_2454852D8(*(a1 + 72));
    }

    v6 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#process,#nilr,#cp,stopEmergencyPositionRequest succeeded", buf, 2u);
    }
  }

  else
  {
    v4 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_245396000, v4, OS_LOG_TYPE_ERROR, "#process,#nilr,#cp,stopEmergencyPositionRequest,Error:session_id is missing", v7, 2u);
    }
  }
}

void sub_2453A7308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 400);
  if ((v2 & 0x4000) != 0 && (v2 & 0x800) != 0 && (v5 = *(a2 + 336), v5 > 0))
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v43 = 0;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));
    v46 = 0;
    v37[0] = 0;
    *(v37 + 3) = 0;
    v41 = 0u;
    memset(v42, 0, 38);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    sub_245396FE8(&v34, v5);
    for (i = 0; i != v5; ++i)
    {
      if (i >= *(a2 + 336))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
      }

      v33 = *(*(a2 + 328) + 4 * i);
      sub_2453A9954(&v34, &v33);
    }

    *buf = &unk_285858D58;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v25 = MEMORY[0x277D82C30];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    LODWORD(v17) = 16;
    v8 = *(a2 + 372);
    v32 = 0x800000100000000;
    v31 = v8;
    v9 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#process,#nilr,#supl,calling decodeSuplInit", v15, 2u);
    }

    v10 = sub_24547C334();
    if (sub_24547E3D4(v10, &v34, v37))
    {
      v11 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_245396000, v11, OS_LOG_TYPE_DEFAULT, "#input,#nilr,#supl,Supl Init Decode Success", v15, 2u);
      }

      HIDWORD(v32) |= 0x1000000u;
      if (!v29)
      {
        operator new();
      }

      sub_2453B0670(v37, v29);
      v12 = *(a2 + 308);
      HIDWORD(v32) |= 0x2000000u;
      DWORD2(v29) = v12;
      v13 = 1;
    }

    else
    {
      v14 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        v13 = 2;
        _os_log_error_impl(&dword_245396000, v14, OS_LOG_TYPE_ERROR, "#process,#nilr,#supl,Supl Init Decode failure", v15, 2u);
      }

      else
      {
        v13 = 2;
      }
    }

    HIDWORD(v32) |= 0x4000000u;
    HIDWORD(v29) = v13;
    sub_2453A9A44(a1, buf);
    sub_2453A13E8(buf);
    if (v34)
    {
      v35 = v34;
      operator delete(v34);
    }

    if (*&v45[3])
    {
      *&v45[5] = *&v45[3];
      operator delete(*&v45[3]);
    }

    if (SHIBYTE(v45[2]) < 0)
    {
      operator delete(*(&v44 + 4));
    }

    if (*&v42[3])
    {
      *&v42[5] = *&v42[3];
      operator delete(*&v42[3]);
    }

    if (SHIBYTE(v42[2]) < 0)
    {
      operator delete(*(&v41 + 4));
    }
  }

  else
  {
    v3 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_245396000, v3, OS_LOG_TYPE_FAULT, "#out,#supl,DECODE_SUPL_INIT malformed payload", buf, 2u);
    }
  }
}

void sub_2453A76CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2453A13E8(va);
  v5 = *(v3 - 232);
  if (v5)
  {
    *(v3 - 224) = v5;
    operator delete(v5);
  }

  sub_2453A9D04(v3 - 208);
  _Unwind_Resume(a1);
}

void sub_2453A771C(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v24 = -1;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v31 = 0;
  v32 = 1;
  v33 = 257;
  v34 = -1.0;
  if ((*(a2 + 401) & 0x80) != 0)
  {
    v4 = *(a2 + 376);
    if (!v4)
    {
      sub_24539DA30();
      v4 = *(qword_2813CEEB8 + 376);
    }

    sub_2453F461C(&buf, v4);
    sub_2453B2DCC(&buf, &v24);
    if ((v41[8] & 0x20) != 0)
    {
      std::string::operator=((a1 + 88), *&v41[5]);
    }

    sub_2453F4940(&buf);
  }

  HIBYTE(v33) = 0;
  v5 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v25;
    if (v30 >= 0)
    {
      v7 = &v28;
    }

    else
    {
      v7 = v28;
    }

    if (v26 < 0)
    {
      v6 = v25[0];
    }

    v8 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v8 = *v8;
    }

    LODWORD(buf) = 67110659;
    HIDWORD(buf) = v33;
    v38 = 2081;
    v39 = v7;
    v40 = 1024;
    v41[0] = v27;
    LOWORD(v41[1]) = 1024;
    *(&v41[1] + 2) = v24;
    HIWORD(v41[2]) = 2081;
    *&v41[3] = v6;
    LOWORD(v41[5]) = 1024;
    *(&v41[5] + 2) = 0;
    HIWORD(v41[6]) = 2080;
    *&v41[7] = v8;
    _os_log_impl(&dword_245396000, v5, OS_LOG_TYPE_DEFAULT, "#input,#nilr,#supl,SET_SUPL_INIT,emergContext,heloEnabled,%d,imsi,%{private}s,supl_enable_msa,%d,suplPort,%d,suplServer,%{private}s,cplane_early_return,%d,nsuuid,%s", &buf, 0x38u);
  }

  v9 = *(a2 + 336);
  if (v9 >= 1 && (*(a2 + 401) & 0x20) != 0 && (v10 = *(a2 + 360), v10 >= 1))
  {
    v38 = 0;
    LOBYTE(v39) = 0;
    BYTE6(v39) = 0;
    v42 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0;
    LODWORD(buf) = 0;
    *(&buf + 3) = 0;
    memset(v41, 0, 54);
    __p = 0;
    v22 = 0;
    v23 = 0;
    sub_245396FE8(&__p, v9);
    for (i = 0; i != v9; ++i)
    {
      if (i >= *(a2 + 336))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v36);
      }

      v35 = *(*(a2 + 328) + 4 * i);
      sub_2453A9954(&__p, &v35);
    }

    sub_2453A2ADC(__p, v22 - __p, 1);
    v12 = HIBYTE(v30);
    if (v30 < 0)
    {
      v12 = v29;
    }

    if (v12)
    {
      sub_245481A7C(*(a1 + 72), v33, 0, v34);
      v20 = 0;
      v13 = sub_24547C334();
      sub_24547E7DC(v13, &__p, &v24, &v20);
      std::mutex::lock((a1 + 136));
      v14 = *(a1 + 112);
      *(a1 + 80) = *(a2 + 368);
      *(a1 + 120) = v14;
      sub_245396FE8((a1 + 112), v10);
      for (j = 0; j != v10; ++j)
      {
        if (j >= *(a2 + 360))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v36);
        }

        v19 = *(*(a2 + 352) + 4 * j);
        sub_2453A9954(a1 + 112, &v19);
      }

      *(a1 + 704) = 0;
      *(a1 + 728) = v34;
      std::mutex::unlock((a1 + 136));
    }

    else
    {
      v17 = qword_2813CF018;
      if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
      {
        *v36 = 0;
        _os_log_error_impl(&dword_245396000, v17, OS_LOG_TYPE_ERROR, "#process,#nilr,#supl,SET_SUPL_INIT received without valid IMSI", v36, 2u);
      }
    }

    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v16 = qword_2813CF018;
    if (os_log_type_enabled(qword_2813CF018, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_245396000, v16, OS_LOG_TYPE_ERROR, "#process,#nilr,#supl,SET_SUPL_INIT received without Payload", &buf, 2u);
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2453A7B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::mutex::unlock((v31 + 136));
  if (__p)
  {
    operator delete(__p);
  }

  sub_2453A9D04(&a31);
  sub_2453AB348(&a13);
  _Unwind_Resume(a1);
}

void *sub_2453A7C24(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_2453A7C78(uint64_t a1, uint64_t a2)
{
  v162 = *MEMORY[0x277D85DE8];
  v119 = &unk_285855548;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v4 = *(a2 + 256);
  if ((*(v4 + 23) & 0x8000000000000000) != 0)
  {
    v6 = v4;
    v4 = *v4;
    v5 = v6[1];
  }

  wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(&v119, v4);
  v7 = HIDWORD(v120);
  v8 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = v7;
    _os_log_debug_impl(&dword_245396000, v8, OS_LOG_TYPE_DEBUG, "GEM handleGemRequest,%{public}d", buf, 8u);
  }

  if (v7 > 83)
  {
    if (v7 != 84)
    {
      if (v7 != 85)
      {
        goto LABEL_188;
      }

      v9 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_245396000, v9, OS_LOG_TYPE_DEFAULT, "#nilr,#cplane,handleCplanePosResponse", buf, 2u);
      }

      *v152 = &unk_285855548;
      v153 = 0u;
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      *buf = 0;
      *&buf[8] = -1;
      *&buf[16] = -1;
      *&buf[24] = 0;
      buf[26] = -1;
      *&buf[28] = -1;
      *&buf[35] = -1;
      *&buf[44] = 0xFFFFFFFF00000004;
      *&buf[52] = -1;
      buf[54] = -1;
      *&buf[56] = -1;
      *&buf[60] = 0;
      *&buf[64] = -NAN;
      *&buf[72] = 0x7FFFFFFF;
      buf[76] = -1;
      *&buf[80] = xmmword_245486DF0;
      *&buf[96] = 0xFFFFFFFF7FFFFFFFLL;
      *&buf[103] = -1;
      *&buf[108] = 0x8000000080000000;
      *&buf[116] = -1;
      *&buf[120] = -1;
      *&v10 = 0x8000000080000000;
      *(&v10 + 1) = 0x8000000080000000;
      *&buf[124] = v10;
      *&buf[140] = -1;
      buf[144] = -1;
      memset_pattern16(&buf[148], &unk_245486E50, 0x78uLL);
      buf[268] = -1;
      *&buf[272] = 255;
      *&buf[292] = -1;
      *&buf[276] = -1;
      *&buf[283] = -1;
      *&buf[300] = 0;
      *&buf[304] = 0;
      v11 = *(a2 + 256);
      if ((*(v11 + 23) & 0x8000000000000000) != 0)
      {
        v11 = *v11;
        v12 = *(*(a2 + 256) + 8);
      }

      wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v152, v11);
      v13 = v156;
      if (!v156)
      {
        sub_2453E570C();
        v13 = *(qword_27EE13508 + 56);
      }

      sub_2453B2FF4(v13, buf);
      v14 = sub_2453B4548();
      memcpy(__dst, buf, 0x138uLL);
      sub_2453B4C68(v14, __dst);
      v15 = v152;
LABEL_187:
      sub_2453E57BC(v15);
      goto LABEL_188;
    }

    v21 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v21, OS_LOG_TYPE_DEFAULT, "#nilr,#cplane,handleEcidResponse", buf, 2u);
    }

    v144 = &unk_285855548;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    *&v143[6] = 0;
    *&v143[14] = 0;
    v22 = *(a2 + 256);
    if ((*(v22 + 23) & 0x8000000000000000) != 0)
    {
      v22 = *v22;
      v23 = *(*(a2 + 256) + 8);
    }

    wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(&v144, v22);
    v24 = *(&v147 + 1);
    if (!*(&v147 + 1))
    {
      sub_2453E570C();
      v24 = *(qword_27EE13508 + 48);
    }

    sub_2453E3608(v130, v24);
    memset(&__dst[2], 0, 24);
    *(&__dst[4] + 1) = 0;
    __dst[5] = 0uLL;
    v25 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *&buf[4] = v132;
      *&buf[8] = 1024;
      *&buf[10] = v134;
      *&buf[14] = 1024;
      *&buf[16] = (v142 >> 3) & 1;
      _os_log_debug_impl(&dword_245396000, v25, OS_LOG_TYPE_DEBUG, "#nilr,#cplane, handleEcidResponse,result,%d,lteMeasPresent,%d, %d", buf, 0x14u);
    }

    v115 = a1;
    if (v132 != 1)
    {
      if (v133 == 1)
      {
        v32 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v32, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,LTE Meas error present", buf, 2u);
        }

        LOWORD(__dst[0]) = 257;
        v33 = v131;
        if (!v131)
        {
          sub_2453DCF08();
          v33 = *(qword_27EE134F8 + 8);
        }

        sub_2453E09B4(buf, v33);
        v34 = *&buf[8];
        v35 = *&buf[12];
        *(&__dst[0] + 1) = *&buf[8];
        *&__dst[1] = *&buf[12];
        v36 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v152 = 67109376;
          *&v152[4] = v34;
          LOWORD(v153) = 1024;
          *(&v153 + 2) = v35;
          _os_log_debug_impl(&dword_245396000, v36, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,LTE Meas error,cause,%d,detailedCause,%d", v152, 0xEu);
        }

        sub_2453E0AD4(buf);
        v37 = 3;
      }

      else if (v135 == 1)
      {
        v44 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v44, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,LTE Meas error present", buf, 2u);
        }

        LOBYTE(__dst[0]) = 1;
        BYTE8(__dst[3]) = 1;
        v45 = v139;
        if (!v139)
        {
          sub_2453DCF08();
          v45 = *(qword_27EE134F8 + 48);
        }

        sub_2453E30C0(buf, v45);
        v46 = *&buf[8];
        v47 = *&buf[12];
        *(&__dst[3] + 12) = *&buf[8];
        v48 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v152 = 67109376;
          *&v152[4] = v46;
          LOWORD(v153) = 1024;
          *(&v153 + 2) = v47;
          _os_log_debug_impl(&dword_245396000, v48, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,NR Meas error,cause,%d,detailedCause,%d", v152, 0xEu);
        }

        sub_2453E31E0(buf);
        v37 = 5;
      }

      else
      {
        v37 = 0;
      }

      v53 = 11;
LABEL_184:
      v107 = sub_2453B4548();
      *__p = __dst[0];
      *(&__p[1] + 1) = *(__dst + 9);
      v126 = 0;
      v127 = 0;
      v125 = 0;
      sub_2453AADE8(&v125, *&__dst[2], *(&__dst[2] + 1), 0xF0F0F0F0F0F0F0F1 * ((*(&__dst[2] + 1) - *&__dst[2]) >> 3));
      v128[0] = *(&__dst[3] + 1);
      *(v128 + 5) = *(&__dst[3] + 13);
      memset(v129, 0, 24);
      sub_2453AAF00(v129, *(&__dst[4] + 1), *&__dst[5], 0xF0F0F0F0F0F0F0F1 * ((*&__dst[5] - *(&__dst[4] + 1)) >> 3));
      sub_2453B50CC(v107, __p);
      *buf = v129;
      sub_2453AB2A4(buf);
      if (v125)
      {
        v126 = v125;
        operator delete(v125);
      }

      sub_2453A94D4(v115);
      LOBYTE(v108) = *(v115 + 780);
      *buf = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      *&buf[16] = xmmword_245486E00;
      __asm { FMOV            V1.2D, #-1.0 }

      *&buf[32] = _Q1;
      *&buf[48] = 0xC00000000;
      *&buf[56] = 1;
      *&buf[60] = v37;
      *&buf[64] = v108;
      *&buf[72] = _Q1;
      *&buf[88] = 1;
      *&buf[92] = v53;
      *&buf[96] = 0;
      *&buf[98] = *v143;
      *&buf[112] = *&v143[14];
      *&buf[120] = -1;
      sub_2453A97CC();
    }

    if (v134 == 1)
    {
      v26 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_245396000, v26, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,LTE Meas present", buf, 2u);
      }

      LOBYTE(__dst[0]) = 1;
      BYTE8(__dst[1]) = 1;
      v27 = v138;
      v28 = *(&__dst[2] + 1);
      v29 = 0xF0F0F0F0F0F0F0F1 * ((*(&__dst[2] + 1) - *&__dst[2]) >> 3);
      v30 = v138 - v29;
      if (v138 <= v29)
      {
        if (v138 >= v29)
        {
LABEL_131:
          v72 = -252645135 * ((v28 - *&__dst[2]) >> 3);
          if (v138 < v72)
          {
            v72 = v138;
          }

          if (v72 >= 1)
          {
            v73 = 0;
            v74 = 0;
            v75 = 136 * v72;
            do
            {
              if (v74 >= v138)
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
              }

              sub_2453DF7C0(v152, *(v137 + 8 * v74));
              v76 = *&__dst[2] + v73;
              *v76 = v155;
              v77 = v153;
              *(v76 + 8) = v153;
              v117 = DWORD1(v153);
              *&v78 = DWORD1(v153);
              *(&v78 + 1) = DWORD2(v153);
              *(v76 + 16) = v78;
              *(v76 + 32) = HIDWORD(v153);
              v79 = v154;
              *(v76 + 40) = v154;
              v80 = DWORD1(v154);
              *(v76 + 48) = DWORD1(v154);
              v81 = DWORD2(v154);
              *(v76 + 56) = DWORD2(v154);
              *(v76 + 64) = SHIDWORD(v154);
              *(v76 + 72) = BYTE1(v155);
              *(v76 + 80) = DWORD1(v155);
              *(v76 + 88) = BYTE2(v155);
              *(v76 + 96) = DWORD2(v155);
              *&v78 = HIDWORD(v155);
              *(&v78 + 1) = v156;
              v116 = HIDWORD(v155);
              *(v76 + 104) = v78;
              *(v76 + 120) = DWORD1(v156);
              *(v76 + 128) = BYTE3(v155);
              v82 = qword_2813CF020;
              if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134284801;
                *&buf[4] = v80;
                *&buf[12] = 2049;
                *&buf[14] = v81;
                *&buf[22] = 2049;
                *&buf[24] = v116;
                *&buf[32] = 1025;
                *&buf[34] = v79;
                *&buf[38] = 1025;
                *&buf[40] = v77;
                *&buf[44] = 1025;
                *&buf[46] = v117;
                _os_log_debug_impl(&dword_245396000, v82, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,copyLteMeasData,received,rsrp,%{private}lu,rsrq,%{private}lu,txrxtime,%{private}lu,pci,%{private}u,mcc,%{private}u,mnc,%{private}u", buf, 0x32u);
              }

              sub_2453DFAE0(v152);
              ++v74;
              v73 += 136;
            }

            while (v75 != v73);
          }

          v37 = 3;
          goto LABEL_183;
        }

        v28 = *&__dst[2] + 136 * v138;
      }

      else
      {
        if (0xF0F0F0F0F0F0F0F1 * ((*&__dst[3] - *(&__dst[2] + 1)) >> 3) < v30)
        {
          if ((v138 & 0x80000000) == 0)
          {
            if (0xE1E1E1E1E1E1E1E2 * ((*&__dst[3] - *&__dst[2]) >> 3) > v138)
            {
              v27 = 0xE1E1E1E1E1E1E1E2 * ((*&__dst[3] - *&__dst[2]) >> 3);
            }

            if (0xF0F0F0F0F0F0F0F1 * ((*&__dst[3] - *&__dst[2]) >> 3) >= 0xF0F0F0F0F0F0F0)
            {
              v31 = 0x1E1E1E1E1E1E1E1;
            }

            else
            {
              v31 = v27;
            }

            sub_2453AAEAC(&__dst[2], v31);
          }

          sub_2453A631C();
        }

        bzero(*(&__dst[2] + 1), 136 * ((136 * v30 - 136) / 0x88) + 136);
        v28 += 136 * ((136 * v30 - 136) / 0x88) + 136;
      }

      *(&__dst[2] + 1) = v28;
      goto LABEL_131;
    }

    if (v136 != 1)
    {
      v37 = 0;
      goto LABEL_183;
    }

    v38 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v38, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,NR Meas present", buf, 2u);
    }

    LOBYTE(__dst[0]) = 1;
    BYTE4(__dst[4]) = 1;
    v39 = v141;
    v40 = *&__dst[5];
    v41 = 0xF0F0F0F0F0F0F0F1 * ((*&__dst[5] - *(&__dst[4] + 1)) >> 3);
    v42 = v141 - v41;
    if (v141 <= v41)
    {
      if (v141 >= v41)
      {
        v83 = *&__dst[5];
        goto LABEL_150;
      }

      v83 = *(&__dst[4] + 1) + 136 * v141;
      while (v40 != v83)
      {
        v84 = *(v40 - 40);
        if (v84)
        {
          *(v40 - 32) = v84;
          operator delete(v84);
        }

        v40 -= 136;
      }
    }

    else
    {
      if (0xF0F0F0F0F0F0F0F1 * ((*(&__dst[5] + 1) - *&__dst[5]) >> 3) < v42)
      {
        if ((v141 & 0x80000000) == 0)
        {
          if (0xE1E1E1E1E1E1E1E2 * ((*(&__dst[5] + 1) - *(&__dst[4] + 1)) >> 3) > v141)
          {
            v39 = 0xE1E1E1E1E1E1E1E2 * ((*(&__dst[5] + 1) - *(&__dst[4] + 1)) >> 3);
          }

          if (0xF0F0F0F0F0F0F0F1 * ((*(&__dst[5] + 1) - *(&__dst[4] + 1)) >> 3) >= 0xF0F0F0F0F0F0F0)
          {
            v43 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v43 = v39;
          }

          sub_2453AAFD0(&__dst[4] + 8, v43);
        }

        sub_2453A631C();
      }

      bzero(*&__dst[5], 136 * ((136 * v42 - 136) / 0x88) + 136);
      v83 = v40 + 136 * ((136 * v42 - 136) / 0x88) + 136;
    }

    *&__dst[5] = v83;
LABEL_150:
    LODWORD(v85) = -252645135 * ((v83 - *(&__dst[4] + 1)) >> 3);
    if (v141 >= v85)
    {
      v85 = v85;
    }

    else
    {
      v85 = v141;
    }

    v118 = v85;
    if (v85 >= 1)
    {
      for (i = 0; i != v118; ++i)
      {
        if (i >= v141)
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
        }

        sub_2453E1B98(v152, *(v140 + 8 * i));
        v87 = *(&__dst[4] + 1) + 136 * i;
        *v87 = BYTE4(v154);
        *&v88 = v153;
        *(&v88 + 1) = DWORD1(v153);
        *(v87 + 8) = v88;
        *&v88 = DWORD2(v153);
        *(&v88 + 1) = HIDWORD(v153);
        *(v87 + 24) = v88;
        *(v87 + 40) = v154;
        *(v87 + 48) = BYTE5(v154);
        *&v88 = DWORD2(v154);
        *(&v88 + 1) = HIDWORD(v154);
        *(v87 + 56) = v88;
        v89 = v155;
        if (!v155)
        {
          sub_2453DCF08();
          v89 = *(qword_27EE134F0 + 40);
        }

        sub_2453E0EFC(v149, v89);
        *&v90 = v150;
        *(&v90 + 1) = v151;
        *(v87 + 72) = v90;
        v91 = v157;
        *(v87 + 88) = v157;
        if (!v91)
        {
          goto LABEL_181;
        }

        v92 = *(v87 + 96);
        v94 = *(v87 + 104);
        v93 = (v87 + 96);
        v95 = 0xAAAAAAAAAAAAAAABLL * ((v94 - v92) >> 3);
        v96 = v91 - v95;
        if (v91 <= v95)
        {
          if (v91 >= v95)
          {
            goto LABEL_172;
          }

          v100 = v92 + 24 * v91;
        }

        else
        {
          v97 = *(v87 + 112);
          if (0xAAAAAAAAAAAAAAABLL * ((v97 - v94) >> 3) < v96)
          {
            v98 = 0xAAAAAAAAAAAAAAABLL * ((v97 - v92) >> 3);
            if (2 * v98 > v91)
            {
              v91 = 2 * v98;
            }

            if (v98 >= 0x555555555555555)
            {
              v99 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v99 = v91;
            }

            sub_2453AB1CC(v87 + 96, v99);
          }

          v101 = 24 * ((24 * v96 - 24) / 0x18) + 24;
          bzero(*(v87 + 104), v101);
          v100 = v94 + v101;
        }

        *(v87 + 104) = v100;
LABEL_172:
        if (*(v87 + 88))
        {
          v102 = 0;
          v103 = 0;
          do
          {
            if (v103 >= v156)
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(buf);
            }

            sub_2453E1444(__p, *(*(&v155 + 1) + 8 * v103));
            v104 = *v93;
            *(*v93 + v102) = LODWORD(__p[2]);
            v105 = __p[1];
            if (__p[1])
            {
              *(v104 + v102 + 8) = *(__p[1] + 2);
            }

            else
            {
              sub_2453DCF08();
              v104 = *v93;
              v105 = __p[1];
              *(*v93 + v102 + 8) = *(*(qword_27EE134E8 + 8) + 8);
              if (!v105)
              {
                sub_2453DCF08();
                v105 = *(qword_27EE134E8 + 8);
                v104 = *v93;
              }
            }

            *(v104 + v102 + 16) = v105[3];
            sub_2453E15D0(__p);
            ++v103;
            v102 += 24;
          }

          while (*(v87 + 88) > v103);
        }

LABEL_181:
        *&v106 = v158;
        *(&v106 + 1) = v159;
        *(v87 + 120) = v106;
        sub_2453E101C(v149);
        sub_2453E201C(v152);
      }
    }

    v37 = 5;
LABEL_183:
    v53 = 1;
    goto LABEL_184;
  }

  if (v7 == 80)
  {
    v16 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v16, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,ratType received", buf, 2u);
    }

    *buf = &unk_285855548;
    memset(&buf[8], 0, 64);
    v17 = *(a2 + 256);
    if ((*(v17 + 23) & 0x8000000000000000) != 0)
    {
      v17 = *v17;
      v18 = *(*(a2 + 256) + 8);
    }

    wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, v17);
    if ((buf[68] & 0x20) == 0)
    {
      goto LABEL_93;
    }

    v19 = *&buf[40];
    if (!*&buf[40])
    {
      sub_2453E570C();
      v19 = *(qword_27EE13508 + 40);
    }

    sub_2453DDFB0(__dst, v19);
    switch(DWORD2(__dst[0]))
    {
      case 2:
        v49 = a1;
        v52 = qword_2813CF020;
        v51 = 2;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v152 = 0;
          _os_log_debug_impl(&dword_245396000, v52, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,ratType NR", v152, 2u);
        }

        break;
      case 1:
        v49 = a1;
        v50 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *v152 = 0;
          _os_log_debug_impl(&dword_245396000, v50, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,ratType LTE", v152, 2u);
        }

        v51 = 1;
        break;
      case 0:
        v20 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_ERROR))
        {
          *v152 = 0;
          _os_log_error_impl(&dword_245396000, v20, OS_LOG_TYPE_ERROR, "#nilr,#cplane, Invalid RAT type received", v152, 2u);
        }

LABEL_92:
        sub_2453DE0D8(__dst);
LABEL_93:
        sub_2453E57BC(buf);
        v55 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v55, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,handleConformanceMode", buf, 2u);
        }

        *buf = &unk_285855548;
        memset(&buf[8], 0, 64);
        v56 = *(a2 + 256);
        if ((*(v56 + 23) & 0x8000000000000000) != 0)
        {
          v56 = *v56;
          v57 = *(*(a2 + 256) + 8);
        }

        wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, v56);
        if ((buf[68] & 0x10) != 0)
        {
          v58 = *&buf[32];
          if (!*&buf[32])
          {
            sub_2453E570C();
            v58 = *(qword_27EE13508 + 32);
          }

          sub_2453DD800(__dst, v58);
          v59 = BYTE8(__dst[0]);
          v60 = qword_2813CF020;
          if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
          {
            *v152 = 67109120;
            *&v152[4] = v59;
            _os_log_debug_impl(&dword_245396000, v60, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,handleConformanceMode,mode,%d", v152, 8u);
          }

          if (*(a1 + 772) != v59)
          {
            *(a1 + 772) = v59;
            sub_2453B4548();
            *(off_27EE134B8 + 48) = *(a1 + 772);
            sub_24547A7C8();
          }

          sub_2453DD904(__dst);
        }

        sub_2453E57BC(buf);
        v61 = qword_2813CF020;
        if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_245396000, v61, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,handleCPlaneDlLppMsg", buf, 2u);
        }

        *buf = &unk_285855548;
        memset(&buf[8], 0, 64);
        v62 = *(a2 + 256);
        if ((*(v62 + 23) & 0x8000000000000000) != 0)
        {
          v62 = *v62;
          v63 = *(*(a2 + 256) + 8);
        }

        wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(buf, v62);
        if ((buf[68] & 8) != 0)
        {
          v64 = *&buf[24];
          if (!*&buf[24])
          {
            sub_2453E570C();
            v64 = *(qword_27EE13508 + 24);
          }

          sub_2453DCFA0(v152, v64);
          v65 = DWORD2(v153);
          v66 = qword_2813CF020;
          if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(__dst[0]) = 67109120;
            DWORD1(__dst[0]) = v65;
            _os_log_debug_impl(&dword_245396000, v66, OS_LOG_TYPE_DEBUG, "handleCPlaneDlLppMsg,pduSize,%d", __dst, 8u);
          }

          if (v65 <= 0)
          {
            v71 = qword_2813CF020;
            if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(__dst[0]) = 0;
              _os_log_debug_impl(&dword_245396000, v71, OS_LOG_TYPE_DEBUG, "handleCPlaneDlLppMsg,pduSize invalid", __dst, 2u);
            }
          }

          else
          {
            memset(__p, 0, 24);
            sub_245396FE8(__p, v65);
            for (j = 0; j != v65; ++j)
            {
              if (j >= SDWORD2(v153))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(__dst);
              }

              LOBYTE(v144) = *(v153 + 4 * j);
              sub_2453A9954(__p, &v144);
            }

            sub_2454491C4(__p[0], __p[1] - __p[0], 1);
            v68 = v154;
            v69 = qword_2813CF020;
            if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(__dst[0]) = 67109376;
              DWORD1(__dst[0]) = v68;
              WORD4(__dst[0]) = 1024;
              *(__dst + 10) = (LOBYTE(__p[1]) - LOBYTE(__p[0]));
              _os_log_debug_impl(&dword_245396000, v69, OS_LOG_TYPE_DEBUG, "handleCPlaneDlLppMsg,sn,%d,pdusize,%d", __dst, 0xEu);
            }

            v70 = sub_2453B4548();
            memset(__dst, 0, 24);
            sub_2453AE4E0(__dst, __p[0], __p[1], __p[1] - __p[0]);
            sub_2453B46E8(v70, v68, __dst);
            if (*&__dst[0])
            {
              *(&__dst[0] + 1) = *&__dst[0];
              operator delete(*&__dst[0]);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          sub_2453DD110(v152);
        }

        v15 = buf;
        goto LABEL_187;
      default:
        v49 = a1;
        v51 = 0;
        break;
    }

    a1 = v49;
    if (*(v49 + 776) != v51)
    {
      *(v49 + 776) = v51;
      v54 = sub_2453B4548();
      sub_2453B4F50(v54, v51);
    }

    goto LABEL_92;
  }

  if (v7 == 82)
  {
    sub_2454852D8(*(a1 + 72));
  }

LABEL_188:
  sub_2453E57BC(&v119);
  v114 = *MEMORY[0x277D85DE8];
}

void sub_2453A9308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_2453A9488(&STACK[0x230]);
  sub_2453E3BA8(&a40);
  sub_2453E57BC(&a54);
  sub_2453E57BC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_2453A9488(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_2453AB2A4(&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2453A94D4(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,sendNilrEndIndication", buf, 2u);
    v2 = qword_2813CF020;
  }

  v3 = *(a1 + 773);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,sendNilrEndIndication, indication to CL", buf, 2u);
    }

    *(a1 + 773) = 0;
    *buf = &unk_285858D58;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = MEMORY[0x277D82C30];
    v24 = 0;
    v25 = MEMORY[0x277D82C30];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    v30 = 0x100000000;
    LODWORD(v17) = 27;
    v10 = &unk_285855638;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    sub_2453E73EC(&v10);
    HIDWORD(v15) |= 0x20u;
    v6 = *(&v13 + 1);
    if (!*(&v13 + 1))
    {
      operator new();
    }

    *(*(&v13 + 1) + 16) |= 1u;
    *(v6 + 8) = 0;
    v7 = sub_2453E81F0(&v10);
    sub_2453A6258(&__p, v7);
    MEMORY[0x245D69E50](&v10, __p, (v9 - __p));
    HIDWORD(v30) |= 0x20000u;
    if (v25 == v5)
    {
      operator new();
    }

    MEMORY[0x245D69EF0]();
    sub_2453A9A44(a1, buf);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    sub_2453E714C(&v10);
    sub_2453A13E8(buf);
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,sendNilrEndIndication, GNSS not running", buf, 2u);
  }
}

void sub_2453A9790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_2453E714C(&a13);
  sub_2453A13E8(&a23);
  _Unwind_Resume(a1);
}

void sub_2453A97CC()
{
  v0 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v1) = 0;
    _os_log_impl(&dword_245396000, v0, OS_LOG_TYPE_DEFAULT, "#nilr,handleEmergencySummaryReport", &v1, 2u);
  }

  v1 = &unk_285858D58;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0;
  v10 = MEMORY[0x277D82C30];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  LODWORD(v2) = 10;
  v15 = 0x1000100000000;
  operator new();
}

void sub_2453A9954(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_2453A631C();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_2453A9A44(uint64_t a1, unsigned int *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    sub_24543ED74(a2[2], &__p);
    v10 = v14 >= 0 ? &__p : __p;
    *buf = 136315138;
    v16 = v10;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "sendIndication,%s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v5 = (*(*a2 + 72))(a2);
  sub_2453A6258(&__p, v5);
  MEMORY[0x245D69E50](a2, __p, (v13 - __p));
  v6 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = [v6 initWithBytes:__p length:v13 - __p];
  v8 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2453A9D68;
  block[3] = &unk_278E36C68;
  block[4] = v7;
  block[5] = a1;
  dispatch_async(v8, block);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2453A9BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453A9C18(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "sendEarlyFix", buf, 2u);
  }

  v3 = sub_24539D8D0();
  sub_245440B0C(a1 + 208, (v3 * 0.000000001), buf);
  sub_2453B4228(buf, "GnssEmergencyManager::sendEarlyFix");
  v4[8] = v14;
  v4[9] = v15;
  v5 = v16;
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  v4[7] = v13;
  v4[0] = *buf;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  sub_2453AA260(a1, v4);
  sub_245481B5C(*(a1 + 72));
}

uint64_t sub_2453A9D04(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_2453A9D7C(uint64_t a1, int *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    sub_24543EECC(a2[5], &__p);
    v10 = v14 >= 0 ? &__p : __p;
    *buf = 136315138;
    v16 = v10;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "sendToDevice,%s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p);
    }
  }

  v5 = (*(*a2 + 72))(a2);
  sub_2453A6258(&__p, v5);
  MEMORY[0x245D69E50](a2, __p, (v13 - __p));
  v6 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = [v6 initWithBytes:__p length:v13 - __p];
  v8 = *(a1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2453A9F50;
  block[3] = &unk_278E36C68;
  block[4] = v7;
  block[5] = a1;
  dispatch_async(v8, block);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2453A9F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453A9F64(uint64_t a1)
{
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,sendNilrStartIndication", buf, 2u);
    v2 = qword_2813CF020;
  }

  v3 = *(a1 + 773);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,sendNilrStartIndication, GNSS already running", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,sendNilrStartIndication, indication to CL", buf, 2u);
    }

    *(a1 + 773) = 1;
    *buf = &unk_285858D58;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = MEMORY[0x277D82C30];
    v24 = 0;
    v25 = MEMORY[0x277D82C30];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    v30 = 0x100000000;
    LODWORD(v17) = 27;
    v10 = &unk_285855638;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    sub_2453E73EC(&v10);
    HIDWORD(v15) |= 0x20u;
    v6 = *(&v13 + 1);
    if (!*(&v13 + 1))
    {
      operator new();
    }

    *(*(&v13 + 1) + 16) |= 1u;
    *(v6 + 8) = 1;
    v7 = sub_2453E81F0(&v10);
    sub_2453A6258(&__p, v7);
    MEMORY[0x245D69E50](&v10, __p, (v9 - __p));
    HIDWORD(v30) |= 0x20000u;
    if (v25 == v5)
    {
      operator new();
    }

    MEMORY[0x245D69EF0]();
    sub_2453A9A44(a1, buf);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }

    sub_2453E714C(&v10);
    sub_2453A13E8(buf);
  }
}

void sub_2453AA224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_2453E714C(&a13);
  sub_2453A13E8(&a23);
  _Unwind_Resume(a1);
}

void sub_2453AA260(uint64_t a1, uint64_t a2)
{
  __dst[39] = *MEMORY[0x277D85DE8];
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v28 = *(a2 + 60);
    v29 = *(a2 + 64);
    LODWORD(__dst[0]) = 67174913;
    HIDWORD(__dst[0]) = v28;
    LOWORD(__dst[1]) = 1025;
    *(&__dst[1] + 2) = v29;
    _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "sendBestFix,gpsWeek,%{private}d,gpsTow,%{private}d", __dst, 0xEu);
  }

  if (*(a2 + 136))
  {
    *&__src[4] = 0;
    *&__src[8] = -1;
    *&__src[16] = -1;
    __src[26] = -1;
    *&__src[28] = -1;
    *&__src[35] = -1;
    *&__src[44] = 0xFFFFFFFF00000004;
    *&__src[52] = -1;
    __src[54] = -1;
    *&__src[56] = -1;
    *&__src[60] = 0;
    *&__src[64] = -NAN;
    *&__src[72] = 0x7FFFFFFF;
    __src[76] = -1;
    *&__src[80] = xmmword_245486DF0;
    *&__src[96] = 0xFFFFFFFF7FFFFFFFLL;
    *&__src[103] = -1;
    *&__src[108] = 0x8000000080000000;
    *&__src[120] = -1;
    *&__src[116] = -1;
    *&v5 = 0x8000000080000000;
    *(&v5 + 1) = 0x8000000080000000;
    *&__src[124] = v5;
    *&__src[140] = -1;
    __src[144] = -1;
    memset_pattern16(&__src[148], &unk_245486E50, 0x78uLL);
    __src[268] = -1;
    *&__src[272] = 255;
    *&__src[292] = -1;
    *&__src[276] = -1;
    *&__src[283] = -1;
    *&__src[300] = 0;
    *&__src[304] = 0;
    v6 = *(a2 + 64);
    *&__src[24] = *(a2 + 60);
    *__src = 0;
    *&__src[20] = v6;
    v7 = 127;
    if (*(a2 + 72) >= 0xF4240uLL)
    {
      v8 = (log((*(a2 + 72) / 0xF4240uLL) / 0.0022 + 1.0) / 0.165514438);
      if (v8 >= 0x7F)
      {
        v7 = 127;
      }

      else
      {
        v7 = v8;
      }
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    __src[26] = v7;
    *&__src[36] = v6 % 0x36EE80;
    *&__src[40] = -1;
    __src[42] = v7;
    *&__src[28] = 0x100000000;
    __src[104] = 0;
    v11 = (fabs(v9) * 93206.7444 + 0.5);
    if (v9 < 0.0)
    {
      v12 = v11 | 0x800000;
    }

    else
    {
      v12 = v11;
    }

    *&__src[64] = 9;
    v13 = (v10 * 46603.3778);
    if (v13 >= 0x800000)
    {
      v13 -= 0x1000000;
    }

    *&__src[92] = v12;
    *&__src[96] = v13;
    __src[106] = 67;
    v15 = *(a2 + 32);
    v14 = *(a2 + 40);
    v16 = sqrt(v14 * v14 + v15 * v15);
    v17 = *(a2 + 96);
    if ((*(a1 + 768) - 2) <= 2)
    {
      v18 = qword_2813CF020;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__dst[0]) = 134284289;
        *(__dst + 4) = v15;
        WORD2(__dst[1]) = 2049;
        *(&__dst[1] + 6) = v14;
        HIWORD(__dst[2]) = 2049;
        *&__dst[3] = v17;
        LOWORD(__dst[4]) = 1025;
        *(&__dst[4] + 2) = 67;
        _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "sendBestFix,before scaling smjMeters,%{private}f,smnMeters,%{private}f,zuncMeters,%{private}f,confidence,%{private}d", __dst, 0x26u);
        v18 = qword_2813CF020;
      }

      v16 = v16 * 1.51740003;
      v17 = v17 * 1.64499998;
      __src[106] = 90;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__dst[0]) = 134284289;
        *(__dst + 4) = v16;
        WORD2(__dst[1]) = 2049;
        *(&__dst[1] + 6) = v16;
        HIWORD(__dst[2]) = 2049;
        *&__dst[3] = v17;
        LOWORD(__dst[4]) = 1025;
        *(&__dst[4] + 2) = 90;
        _os_log_debug_impl(&dword_245396000, v18, OS_LOG_TYPE_DEBUG, "sendBestFix,after scaling smjMeters,%{private}f,smnMeters,%{private}f,zuncMeters,%{private}f,confidence,%{private}d", __dst, 0x26u);
      }
    }

    v19 = 127;
    if (v16 / 1.41421356 > 0.0)
    {
      v20 = (log(v16 / 1.41421356 / 10.0 + 1.0) / 0.0953101798);
      if (v20 >= 0x7F)
      {
        v19 = 127;
      }

      else
      {
        v19 = v20;
      }
    }

    __src[102] = v19;
    __src[103] = v19;
    *&__src[28] = 1;
    if (*(a2 + 96) == -1.0)
    {
      *&__src[100] = 0;
    }

    else
    {
      v21 = *(a2 + 88);
      v22 = llround(fabs(v21));
      if (v21 < 0.0)
      {
        v22 |= 0x8000u;
      }

      *&__src[100] = v22;
      if (v17 < 990.0)
      {
        v23 = llround(log(v17 / 45.0 + 1.0) / 0.0246926126);
        goto LABEL_29;
      }
    }

    v23 = 127;
LABEL_29:
    __src[105] = v23;
    *&__src[4] = 1;
    v24 = *(a2 + 136);
    if (v24 == 1 || *(a2 + 152) == 1)
    {
      *&__src[300] |= 1u;
    }

    if (v24 == 2 || *(a2 + 152) == 2)
    {
      *&__src[300] |= 2u;
    }

    v25 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__dst[0]) = 0;
      _os_log_debug_impl(&dword_245396000, v25, OS_LOG_TYPE_DEBUG, "sendBestFix, injecting best fix to session handler", __dst, 2u);
    }

    memcpy((*(a1 + 72) + 160), __src, 0x138uLL);
    v26 = memcpy(__dst, __src, 0x138uLL);
    sub_245484874(v26, __dst);
  }

  v27 = *MEMORY[0x277D85DE8];
}

__n128 sub_2453AA7C8(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 272) = 0;
  *(a1 + 276) = v9;
  *(a1 + 292) = 0;
  *(a1 + 296) = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 340) = v8.n128_u32[0];
  *(a1 + 352) = 0uLL;
  *(a1 + 368) = 0xBFF0000000000000;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = v9;
  *(a1 + 156) = 0;
  *(a1 + 160) = _Q0;
  *(a1 + 176) = _Q0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0uLL;
  *(a1 + 204) = v8.n128_u32[0];
  *(a1 + 232) = 0xBFF0000000000000;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v8.n128_u32[3] = 0;
  *(v8.n128_u64 + 4) = 0;
  *a1 = 0;
  *(a1 + 4) = v9;
  *(a1 + 20) = 0;
  *(a1 + 24) = _Q0;
  *(a1 + 40) = _Q0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0uLL;
  result = v8;
  *(a1 + 68) = v8;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2453AA92C(uint64_t a1)
{
  v1 = 0;
  *a1 = -1;
  *&v2 = 0x8000000080000000;
  *(&v2 + 1) = 0x8000000080000000;
  do
  {
    v3 = a1 + v1;
    *(v3 + 4) = xmmword_245486E10;
    *(v3 + 20) = v2;
    *(v3 + 36) = xmmword_245486E20;
    *(v3 + 52) = 0x8000800080008000;
    *(v3 + 60) = 0x80000000;
    *(v3 + 64) = -1;
    *(v3 + 68) = -1;
    *(v3 + 72) = 127;
    *(v3 + 76) = -1;
    v1 += 96;
    *(v3 + 80) = -1;
  }

  while (v1 != 1536);
  *(a1 + 1540) = -1;
  result = NAN;
  *(a1 + 1544) = -1;
  return result;
}

uint64_t sub_2453AA9AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_2453AAA8C(a1 + 8, *(a2 + 8), *(a2 + 16), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 16) - *(a2 + 8)) >> 2));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_2453AABE8(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_2453AACE8(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 5);
  return a1;
}

void sub_2453AAA58(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2453AAA8C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2453AAB08(result, a4);
  }

  return result;
}

void sub_2453AAAEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453AAB08(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    sub_2453AAB58(a1, a2);
  }

  sub_2453A631C();
}

void sub_2453AAB58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  sub_2453AABB4();
}

void sub_2453AABB4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_2453AABE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2453AAC64(result, a4);
  }

  return result;
}

void sub_2453AAC48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453AAC64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_2453AACA0(a1, a2);
  }

  sub_2453A631C();
}

void sub_2453AACA0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_2453AABB4();
}

uint64_t sub_2453AACE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2453AAD64(result, a4);
  }

  return result;
}

void sub_2453AAD48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453AAD64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2453AADA0(a1, a2);
  }

  sub_2453A631C();
}

void sub_2453AADA0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_2453AABB4();
}

uint64_t sub_2453AADE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2453AAE64(result, a4);
  }

  return result;
}

void sub_2453AAE48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453AAE64(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    sub_2453AAEAC(a1, a2);
  }

  sub_2453A631C();
}

void sub_2453AAEAC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  sub_2453AABB4();
}

uint64_t sub_2453AAF00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2453AAF88(result, a4);
  }

  return result;
}

void sub_2453AAF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2453AB2A4(&a9);
  _Unwind_Resume(a1);
}

void sub_2453AAF88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    sub_2453AAFD0(a1, a2);
  }

  sub_2453A631C();
}

void sub_2453AAFD0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  sub_2453AABB4();
}

uint64_t sub_2453AB024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *v4 = *v6;
      *(v4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 80);
      *(v4 + 64) = *(v6 + 64);
      *(v4 + 80) = v10;
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 112) = 0;
      sub_2453AB104(v4 + 96, *(v6 + 96), *(v6 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 104) - *(v6 + 96)) >> 3));
      *(v4 + 120) = *(v6 + 120);
      v6 += 136;
      v4 = v15 + 136;
      v15 += 136;
    }

    while (v6 != a3);
  }

  v13 = 1;
  sub_2453AB224(v12);
  return v4;
}

uint64_t sub_2453AB104(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2453AB180(result, a4);
  }

  return result;
}

void sub_2453AB164(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2453AB180(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2453AB1CC(a1, a2);
  }

  sub_2453A631C();
}

void sub_2453AB1CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2453AABB4();
}

uint64_t sub_2453AB224(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2453AB25C(a1);
  }

  return a1;
}

void sub_2453AB25C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 136;
  }
}

void sub_2453AB2A4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2453AB2F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2453AB2F8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 136)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_2453AB348(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_2453AB38C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t sub_2453AB3D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB458(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB4D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB558(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB5D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB658(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB6D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB758(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB7D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AB858(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_245481A18(result);

    JUMPOUT(0x245D6A0D0);
  }

  return result;
}

uint64_t sub_2453AB914(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285851E28;
  a2[1] = v2;
  return result;
}

void sub_2453AB940(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3) = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,handleEmergencySuplSessionStatusReport", &v3, 2u);
  }

  v3 = &unk_285858D58;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  v12 = MEMORY[0x277D82C30];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  LODWORD(v4) = 14;
  v17 = 0x80000100000000;
  operator new();
}

uint64_t sub_2453ABABC(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285851E98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2453ABB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_2453ABB5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453ABC4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285851EB8;
  a2[1] = v2;
  return result;
}

void sub_2453ABC78(uint64_t a1, __int128 *a2)
{
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v2 = *(a1 + 8);
  sub_2453A97CC();
}

uint64_t sub_2453ABCC0(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285851F28))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453ABD0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453ABDFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285851F48;
  a2[1] = v2;
  return result;
}

uint64_t sub_2453ABE28(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "handleEmergencySuplLocationdIdNeededReport", &v4, 2u);
  }

  v4 = &unk_285858D58;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = MEMORY[0x277D82C30];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v17, 0, sizeof(v17));
  v18 = 0x100000000;
  LODWORD(v5) = 15;
  sub_2453A9A44(v1, &v4);
  sub_2453A13E8(&v4);
  return 1;
}

uint64_t sub_2453ABF38(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285851FB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453ABF84(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AC074(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285851FD8;
  a2[1] = v2;
  return result;
}

void sub_2453AC0A0(uint64_t a1, const void *a2)
{
  memcpy(v5, a2, sizeof(v5));
  v3 = *(a1 + 8);
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,#input,injectEphemerisToGnssDevice", buf, 2u);
  }

  v32 = 0;
  v31 = 0;
  v37 = 0;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  *buf = &unk_285858C68;
  v22 = 0;
  v28 = 0;
  v23 = MEMORY[0x277D82C30];
  v29 = 0;
  v30 = 0;
  v33 = 0;
  v38 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  sub_2453970B0(buf);
  HIDWORD(v7) = 67;
  v38 = vorr_s8(v38, 0x2000000004);
  if (!*(&v25 + 1))
  {
    operator new();
  }

  sub_2453B2454(v5, *(&v25 + 1));
  sub_2453A9D7C(v3, buf);
  sub_24539D970(buf);
}

uint64_t sub_2453AC280(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852048))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AC2CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AC3BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852068;
  a2[1] = v2;
  return result;
}

void sub_2453AC3E8(uint64_t a1, unsigned int *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    LODWORD(v12) = 67109632;
    HIDWORD(v12) = v5;
    LOWORD(v13) = 1024;
    *(&v13 + 2) = v6;
    WORD3(v13) = 1024;
    DWORD2(v13) = v7;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,#input,injectReftimeToGnssDevice,refTime gpsTow=%u,gpsWeek=%u,gpsTimeUncertainty=%u", &v12, 0x14u);
  }

  v12 = &unk_285858C68;
  v34 = 0;
  v35 = 0;
  v38 = 0;
  v43 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = MEMORY[0x277D82C30];
  v36 = 0;
  v37 = 0;
  v39 = 0;
  v44 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_2453970B0(&v12);
  HIDWORD(v13) = 9;
  LODWORD(v44) = v44 | 0x14;
  v8 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
    operator new();
  }

  v9 = 604800000000000 * *(a2 + 2) + 1000000 * *a2;
  *(*(&v14 + 1) + 36) |= 3u;
  *(v8 + 8) = v9;
  *(v8 + 16) = 900000000;
  v10 = sub_24539D8D0();
  *(v8 + 36) |= 4u;
  *(v8 + 24) = v10;
  sub_2453A9D7C(v3, &v12);
  sub_24539D970(&v12);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2453AC654(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_2858520D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AC710(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858520F8;
  a2[1] = v2;
  return result;
}

void sub_2453AC73C(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  if (v4 == 255)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = (pow(1.025, v4) + -1.0) * 45.0;
  }

  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a2 + 4);
    v7 = *(a2 + 8);
    v9 = *(a2 + 13);
    v10 = -1.0;
    v11 = -1.0;
    if (v9 != 255)
    {
      v11 = (pow(1.1, v9) + -1.0) * 10.0;
    }

    v12 = *(a2 + 14);
    if (v12 != 255)
    {
      v10 = (pow(1.1, v12) + -1.0) * 10.0;
    }

    v13 = *(a2 + 17);
    *v53 = 67175681;
    *&v53[4] = v8;
    *&v53[8] = 1025;
    *&v53[10] = v7;
    *&v53[14] = 2049;
    *&v53[16] = v11;
    *&v53[24] = 2049;
    *&v53[26] = v10;
    *&v53[34] = 1025;
    *&v53[36] = v13;
    _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice,refLat,%{private}u,refLon,%{private}u,original uncertainties, %{private}f,semiMinor,%{private}f,%{private}u", v53, 0x28u);
  }

  v14 = *(a2 + 13);
  if (v14 < 0)
  {
    v15 = 0.0;
    if (v14 == -1)
    {
      v16 = qword_2813CF020;
      v15 = 15000.0;
      if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
      {
        *v53 = 134217984;
        *&v53[4] = 0x40CD4C0000000000;
        _os_log_impl(&dword_245396000, v16, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice: WARNING: Unknown uncertaintySemiMajor replaced with default = %f m", v53, 0xCu);
      }
    }
  }

  else
  {
    v15 = (pow(1.1, *(a2 + 13)) + -1.0) * 10.0;
  }

  v17 = *(a2 + 14);
  if (v17 < 0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = (pow(1.1, *(a2 + 14)) + -1.0) * 10.0;
  }

  if (v17 == -1)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18;
  }

  v20 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *v53 = 134284033;
    *&v53[4] = v15;
    *&v53[12] = 2049;
    *&v53[14] = v19;
    *&v53[22] = 2049;
    *&v53[24] = v5;
    _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice,convertedSemiMojor,%{private}f,convertedSemiMinor,%{private}f,convertedAltUncert,%{private}f", v53, 0x20u);
    v20 = qword_2813CF020;
  }

  v21 = *(a2 + 17);
  if (v21 <= 0x64)
  {
    v22 = *(a2 + 17);
  }

  else
  {
    v22 = 39;
  }

  v23 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v22 < 0x33 || v19 < 500.0)
  {
    if (v23)
    {
      *v53 = 0;
      _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice, using Gaussian distribution", v53, 2u);
    }

    if ((v21 - 97) >= 4u)
    {
      if (v22 <= 0x5E)
      {
        if (v22 <= 0x59)
        {
          if (v22 <= 0x54)
          {
            if (v22 <= 0x4F)
            {
              if (v22 <= 0x4A)
              {
                if (v22 <= 0x45)
                {
                  if (v22 <= 0x42)
                  {
                    if (v22 <= 0x40)
                    {
                      if (v22 <= 0x3B)
                      {
                        if (v22 <= 0x31)
                        {
                          if (v22 <= 0x26)
                          {
                            if (v22 <= 0x1D)
                            {
                              if (v22 <= 0x13)
                              {
                                if (v22 <= 9)
                                {
                                  v27 = 3.125;
                                }

                                else
                                {
                                  v27 = 2.17864924;
                                }

                                v26 = dbl_245486E30[v22 > 9];
                              }

                              else
                              {
                                v26 = 3.95256917;
                                v27 = 1.49700599;
                              }
                            }

                            else
                            {
                              v26 = 2.5974026;
                              v27 = 1.18343195;
                            }
                          }

                          else
                          {
                            v27 = 1.0;
                            v26 = 1.90839695;
                          }
                        }

                        else
                        {
                          v26 = 1.48367953;
                          v27 = 0.849617672;
                        }
                      }

                      else
                      {
                        v26 = 1.18764846;
                        v27 = 0.738552437;
                      }
                    }

                    else
                    {
                      v26 = 1.06951872;
                      v27 = 0.690131125;
                    }
                  }

                  else
                  {
                    v26 = 1.02669405;
                    v27 = 0.671591672;
                  }
                }

                else
                {
                  v26 = 0.965250965;
                  v27 = 0.644329897;
                }
              }

              else
              {
                v26 = 0.869565217;
                v27 = 0.600600601;
              }
            }

            else
            {
              v26 = 0.780640125;
              v27 = 0.557413601;
            }
          }

          else
          {
            v26 = 0.694927033;
            v27 = 0.513347023;
          }
        }

        else
        {
          v26 = 0.607902736;
          v27 = 0.465983225;
        }
      }

      else
      {
        v26 = 0.510204082;
        v27 = 0.408496732;
      }
    }

    else
    {
      v28 = (v21 - 97);
      v27 = dbl_245488238[v28];
      v26 = dbl_245488258[v28];
    }
  }

  else
  {
    if (v23)
    {
      *v53 = 0;
      _os_log_impl(&dword_245396000, v20, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice, using Uniform distribution", v53, 2u);
    }

    if (v22 >= 0x5A)
    {
      v24 = 90;
    }

    else
    {
      v24 = v22;
    }

    v25 = 90.0 / v24;
    v26 = v25 * 0.333333333;
    v27 = sqrt(v25) * 0.333333333;
  }

  v29 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *v53 = 134283777;
    *&v53[4] = v26;
    *&v53[12] = 2049;
    *&v53[14] = v27;
    _os_log_impl(&dword_245396000, v29, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice,fact1,%{private}f,fact2,%{private}f", v53, 0x16u);
  }

  v30 = v15 * v27;
  v31 = v19 * v27;
  v32 = v5 * v26;
  if (v5 * v26 > 1000.0)
  {
    v32 = 1000.0;
  }

  if (v32 >= 10.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 10.0;
  }

  if (v31 < 500.0)
  {
    v31 = v30;
    if (v30 < 500.0)
    {
      v31 = 500.0;
      v30 = 500.0;
    }
  }

  v34 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v35 = *(a2 + 4);
    v36 = *(a2 + 8);
    v37 = *(a2 + 2);
    v38 = *(a2 + 17);
    *v53 = 67438337;
    *&v53[4] = v35;
    *&v53[8] = 1029;
    *&v53[10] = v36;
    *&v53[14] = 1029;
    *&v53[16] = v37;
    *&v53[20] = 1025;
    *&v53[22] = v38;
    *&v53[26] = 2049;
    *&v53[28] = v30;
    *&v53[36] = 2049;
    *&v53[38] = v31;
    *&v53[46] = 2048;
    *&v53[48] = v33;
    _os_log_impl(&dword_245396000, v34, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice refLat,%{sensitive}u,refLon,%{sensitive}u,refAlt,%{sensitive}u,conf,%{private}u,semiMajor,%{private}f,semiMinor,%{private}f,altUncertainty,%f", v53, 0x38u);
  }

  *v53 = &unk_285858C68;
  v72 = 0;
  v73 = 0;
  v76 = 0;
  v81 = 0;
  memset(&v53[8], 0, 48);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0;
  v67 = MEMORY[0x277D82C30];
  v74 = 0;
  v75 = 0;
  v77 = 0;
  v82 = 0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  sub_2453970B0(v53);
  *&v53[20] = 8;
  LODWORD(v82) = v82 | 0xC;
  v40 = *&v53[24];
  if (!*&v53[24])
  {
    operator new();
  }

  v41 = (*&v53[24] + 36);
  v42 = *(*&v53[24] + 8);
  *(*&v53[24] + 36) |= 1u;
  if (!v42)
  {
    operator new();
  }

  LODWORD(v39) = *(a2 + 4);
  v43 = v39 * 90.0 * 0.00000011920929;
  v44 = -v43;
  if (!*(a2 + 1))
  {
    v44 = v43;
  }

  v45 = *(v42 + 96);
  *(v42 + 96) = v45 | 1;
  *(v42 + 8) = v44;
  v46 = *(a2 + 8);
  if ((v46 & 0x800000) != 0)
  {
    v46 |= 0xFF000000;
  }

  v47 = v46 * 360.0 * 0.0000000596046448;
  *(v42 + 16) = v47;
  LOWORD(v47) = *(a2 + 2);
  *(v42 + 24) = *&v47;
  *(v42 + 40) = v33;
  *(v42 + 48) = v30;
  *(v42 + 56) = v31;
  *(v42 + 96) = v45 | 0xF7;
  *(v42 + 64) = 0;
  v48 = *(a2 + 17);
  if (v48 <= 0x59)
  {
    if (v48 <= 0x3B)
    {
      if (v48 <= 0x27)
      {
        v49 = 10;
      }

      else
      {
        v49 = 25;
      }
    }

    else
    {
      v49 = 50;
    }
  }

  else
  {
    v49 = 75;
  }

  *(v42 + 96) = v45 | 0x2F7;
  *(v42 + 76) = v49;
  v50 = sub_24539D8D0();
  v51 = *v41;
  *(v40 + 24) = v50;
  *(v40 + 20) = *(a2 + 16) != 0;
  *v41 = v51 | 0xE;
  *(v40 + 16) = 1;
  sub_2453A9D7C(v3, v53);
  sub_24539D970(v53);
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2453AD078(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852168))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AD134(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852188;
  a2[1] = v2;
  return result;
}

void sub_2453AD160(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3) = 0;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "handleCPlaneEmergencyPosResponse", &v3, 2u);
  }

  v3 = &unk_285858D58;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  v12 = MEMORY[0x277D82C30];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  LODWORD(v4) = 11;
  v17 = 0x4000100000000;
  operator new();
}

uint64_t sub_2453AD2E4(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_2858521F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AD330(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AD420(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852218;
  a2[1] = v2;
  return result;
}

void sub_2453AD44C(uint64_t a1, const void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  memcpy(__dst, a2, sizeof(__dst));
  v3 = *(a1 + 8);
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "handleEmergencyAssistanceNeededReport", &v5, 2u);
  }

  v5 = &unk_285858D58;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = MEMORY[0x277D82C30];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  LODWORD(v6) = 13;
  v19 = 0x10000100000000;
  operator new();
}

uint64_t sub_2453AD650(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852288))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AD69C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453AD78C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858522A8;
  a2[1] = v2;
  return result;
}

double sub_2453AD7B8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  *(v3 + 664) = v2;
  v4 = qword_2813CF020;
  v5 = os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG);
  if (v2 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "NILR session started", buf, 2u);
    }

    v7 = *(v3 + 72);
    if (*(v7 + 56) == 2)
    {
      if (*v7)
      {
        v8 = *(v7 + 16);
        v9 = *(v7 + 32);
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v3 + 712) = v8;
      *(v3 + 720) = v9;
      result = sub_24539D8D0() * 0.000000001;
      *(v3 + 736) = result;
    }
  }

  else
  {
    if (v5)
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_245396000, v4, OS_LOG_TYPE_DEBUG, "NILR session ended", v10, 2u);
    }

    *(v3 + 704) = 0;
    *(v3 + 744) = 0;
    result = 0.0;
    *(v3 + 712) = 0u;
    *(v3 + 728) = 0u;
    if ((*(v3 + 200) & 1) == 0)
    {
      sub_2453A6DF8(v3);
    }
  }

  return result;
}

uint64_t sub_2453AD8E4(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AD930(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453ADA20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852338;
  a2[1] = v2;
  return result;
}

void sub_2453ADA4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v2, OS_LOG_TYPE_DEBUG, "handleBestFixRequest", buf, 2u);
  }

  v3 = sub_24539D8D0();
  sub_24543F764((v1 + 208), (v3 * 0.000000001), buf);
  sub_2453B4228(buf, "GnssEmergencyManager::handleBestFixRequest");
  v4[8] = v14;
  v4[9] = v15;
  v5 = v16;
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  v4[7] = v13;
  v4[0] = *buf;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  sub_2453AA260(v1, v4);
}

uint64_t sub_2453ADB30(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_2858523A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453ADB7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2453ADC6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858523C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_2453ADC98(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 136));
  v2 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 80);
    v7[0] = 67240192;
    v7[1] = v3;
    _os_log_impl(&dword_245396000, v2, OS_LOG_TYPE_DEFAULT, "#nilr,servingCellLteCb,fIsServingCellLte,%{public}d", v7, 8u);
  }

  v4 = *(v1 + 80);
  std::mutex::unlock((v1 + 136));
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2453ADD54(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453ADE10(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852458;
  a2[1] = v2;
  return result;
}

void sub_2453ADE3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 136));
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,calling suplCert", v5, 2u);
  }

  if ((v3 + 112) != a2)
  {
    sub_2453ADF3C(a2, *(v3 + 112), *(v3 + 120), *(v3 + 120) - *(v3 + 112));
  }

  std::mutex::unlock((v3 + 136));
}

uint64_t sub_2453ADEF0(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_2858524C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_2453ADF3C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2453A62CC(v6, v10);
    }

    sub_2453A631C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_2453AE0D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858524E8;
  a2[1] = v2;
  return result;
}

void sub_2453AE100(uint64_t a1, int *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 67240192;
    HIDWORD(v5) = v2;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,#supl,suplConnStatusCb,connStatus,%{public}d", &v5, 8u);
  }

  v5 = &unk_285858D58;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = MEMORY[0x277D82C30];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  LODWORD(v6) = 14;
  v19 = 0x80000100000000;
  operator new();
}

uint64_t sub_2453AE2C0(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852558))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AE37C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852578;
  a2[1] = v2;
  return result;
}

void sub_2453AE3A8(uint64_t a1, std::string *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  std::mutex::lock((v3 + 136));
  std::string::operator=(a2, (v3 + 88));
  v4 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }

    v7 = 136380675;
    v8 = v5;
    _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,#supl,calling GetNsuiid %{private}s", &v7, 0xCu);
  }

  std::mutex::unlock((v3 + 136));
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2453AE494(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_2858525E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AE4E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2453A62CC(result, a4);
  }

  return result;
}

void sub_2453AE540(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2453AE5CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852608;
  a2[1] = v2;
  return result;
}

void sub_2453AE5F8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 8);
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_2453AE4E0(&__p, v5, v4, v4 - v5);
  v7 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_245396000, v7, OS_LOG_TYPE_DEBUG, "#nilr,#cplane,handleCPlaneUlLppMsg", buf, 2u);
  }

  *buf = &unk_285858D58;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = MEMORY[0x277D82C30];
  v40 = 0;
  v41 = MEMORY[0x277D82C30];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v46 = 0x100000000;
  LODWORD(v33) = 27;
  v26 = &unk_285855638;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_2453E73EC(&v26);
  HIDWORD(v31) |= 0x10u;
  v9 = v29;
  if (!v29)
  {
    operator new();
  }

  *(v29 + 32) |= 1u;
  *(v9 + 24) = v3;
  v10 = __p;
  v11 = v21;
  v24 = 0;
  v25 = 0;
  if (v21 == __p)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10;
      v14 = v25;
      if (v25 == HIDWORD(v25))
      {
        sub_2453B0370(&v24, v25 + 1);
        v14 = v25;
        v12 = v24;
      }

      LODWORD(v25) = v14 + 1;
      *(v12 + 4 * v14) = v13;
      ++v10;
    }

    while (v10 != v11);
  }

  if ((v9 + 8) != &v24)
  {
    v15 = *(v9 + 8);
    *(v9 + 8) = v12;
    v24 = v15;
    v16 = *(v9 + 16);
    *(v9 + 16) = v25;
    v25 = v16;
  }

  memset(&v23, 0, sizeof(v23));
  v17 = sub_2453E81F0(&v26);
  std::string::resize(&v23, v17, 0);
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v23;
  }

  else
  {
    v18 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = LODWORD(v23.__r_.__value_.__r.__words[1]);
  }

  MEMORY[0x245D69E50](&v26, v18, v19);
  HIDWORD(v46) |= 0x20000u;
  if (v41 == v8)
  {
    operator new();
  }

  MEMORY[0x245D69EF0]();
  sub_2453A9A44(v6, buf);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (v24)
  {
    MEMORY[0x245D6A0A0](v24, 0x1000C8052888210);
  }

  sub_2453E714C(&v26);
  sub_2453A13E8(buf);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    operator delete(v5);
  }
}

void sub_2453AE958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_2453E714C(&a20);
  sub_2453A13E8(&a30);
  if (__p)
  {
    operator delete(__p);
  }

  if (v30)
  {
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2453AE9D4(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852678))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AEA90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852698;
  a2[1] = v2;
  return result;
}

void sub_2453AEABC(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 6);
  v3 = *(a2 + 2);
  v4 = *a2;
  v5 = *(a1 + 8);
  sub_2453A9F64(v5);
  v6 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245396000, v6, OS_LOG_TYPE_DEFAULT, "#nilr,handleEcidReq, indication to CL", buf, 2u);
  }

  *buf = &unk_285858D58;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = MEMORY[0x277D82C30];
  v39 = 0;
  v40 = MEMORY[0x277D82C30];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v45 = 0x100000000;
  LODWORD(v32) = 27;
  v25 = &unk_285855638;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  sub_2453E73EC(&v25);
  HIDWORD(v30) |= 0x40u;
  v8 = v29;
  if (!v29)
  {
    operator new();
  }

  v9 = (v29 + 32);
  v10 = *(v29 + 8);
  v11 = *(v29 + 32) | 2;
  *(v29 + 32) = v11;
  if (!v10)
  {
    operator new();
  }

  v12 = v11 | 4;
  *v9 = v11 | 4;
  v13 = *(v8 + 16);
  if (!v13)
  {
    operator new();
  }

  v14 = v4 | ((v3 | (v2 << 16)) << 32);
  *v9 = v12 | 1;
  if (v4)
  {
    LOBYTE(v15) = 0;
    LOBYTE(v16) = 0;
    *(v8 + 24) = 1;
    v17 = (v4 >> 8) & 1;
    v18 = WORD1(v4) & 1;
    v19 = BYTE3(v4) & 1;
    *(v10 + 16) |= 7u;
  }

  else
  {
    LOBYTE(v17) = 0;
    LOBYTE(v18) = 0;
    LOBYTE(v19) = 0;
    *(v8 + 24) = 2;
    *(v10 + 16) |= 7u;
    v15 = HIDWORD(v14) & 1;
    v16 = (v14 >> 40) & 1;
  }

  v20 = *(v13 + 16);
  *(v10 + 8) = v17;
  *(v10 + 9) = v18;
  *(v10 + 10) = v19;
  *(v13 + 8) = v15;
  *(v13 + 16) = v20 | 3;
  *(v13 + 9) = v16;
  *(v5 + 780) = BYTE6(v14);
  memset(&v24, 0, sizeof(v24));
  v21 = sub_2453E81F0(&v25);
  std::string::resize(&v24, v21, 0);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v24;
  }

  else
  {
    v22 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = LODWORD(v24.__r_.__value_.__r.__words[1]);
  }

  MEMORY[0x245D69E50](&v25, v22, v23);
  HIDWORD(v45) |= 0x20000u;
  if (v40 == v7)
  {
    operator new();
  }

  MEMORY[0x245D69EF0]();
  sub_2453A9A44(v5, buf);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  sub_2453E714C(&v25);
  sub_2453A13E8(buf);
}

void sub_2453AEE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_2453E714C(&a16);
  sub_2453A13E8(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_2453AEECC(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852708))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AEF88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852728;
  a2[1] = v2;
  return result;
}

void sub_2453AEFB4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v10 = *a2;
  v11[0] = v3;
  *(v11 + 12) = *(a2 + 28);
  if (*(v2 + 768) == 4)
  {
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,sendRequestLocation, indication to CL", buf, 2u);
    }

    *buf = &unk_285858D58;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = MEMORY[0x277D82C30];
    v28 = 0;
    v29 = MEMORY[0x277D82C30];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    memset(v33, 0, sizeof(v33));
    v34 = 0x100000000;
    LODWORD(v21) = 27;
    v14 = &unk_285855638;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    sub_2453E73EC(&v14);
    HIDWORD(v19) |= 1u;
    if (!v15)
    {
      operator new();
    }

    sub_2453B0AF4(&v10, v15);
    v6 = sub_2453E81F0(&v14);
    sub_2453A6258(&__p, v6);
    MEMORY[0x245D69E50](&v14, __p, (v13 - __p));
    HIDWORD(v34) |= 0x20000u;
    if (v29 == v5)
    {
      operator new();
    }

    MEMORY[0x245D69EF0](v29, __p, v13 - __p, v7, v8, v9);
    sub_2453A9A44(v2, buf);
    sub_2453A9F64(v2);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    sub_2453E714C(&v14);
    sub_2453A13E8(buf);
  }
}

void sub_2453AF220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_2453E714C(&a19);
  sub_2453A13E8(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_2453AF25C(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852798))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AF318(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858527B8;
  a2[1] = v2;
  return result;
}

void sub_2453AF344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 768) == 4)
  {
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,sendRefTimeIndicationToCl, indication to CL", buf, 2u);
    }

    *buf = &unk_285858D58;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = MEMORY[0x277D82C30];
    v23 = 0;
    v24 = MEMORY[0x277D82C30];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v29 = 0x100000000;
    LODWORD(v16) = 27;
    v9 = &unk_285855638;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0;
    sub_2453E73EC(&v9);
    HIDWORD(v14) |= 2u;
    if (!*(&v10 + 1))
    {
      operator new();
    }

    sub_2453B20CC(a2, *(&v10 + 1));
    v6 = sub_2453E81F0(&v9);
    sub_2453A6258(&__p, v6);
    MEMORY[0x245D69E50](&v9, __p, (v8 - __p));
    HIDWORD(v29) |= 0x20000u;
    if (v24 == v5)
    {
      operator new();
    }

    MEMORY[0x245D69EF0]();
    sub_2453A9A44(v2, buf);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    sub_2453E714C(&v9);
    sub_2453A13E8(buf);
  }
}

void sub_2453AF598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_2453E714C(&a13);
  sub_2453A13E8(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_2453AF5D4(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852818))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AF690(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852838;
  a2[1] = v2;
  return result;
}

void sub_2453AF6BC(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (*(v3 + 768) == 4)
  {
    v4 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v4, OS_LOG_TYPE_DEFAULT, "#nilr,sendRefLocationIndicationCl, indication to CL", buf, 2u);
    }

    *buf = &unk_285858D58;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = MEMORY[0x277D82C30];
    v33 = 0;
    v34 = MEMORY[0x277D82C30];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    memset(v38, 0, sizeof(v38));
    v39 = 0x100000000;
    LODWORD(v26) = 27;
    v19 = &unk_285855638;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    sub_2453E73EC(&v19);
    HIDWORD(v24) |= 4u;
    if (!v21)
    {
      operator new();
    }

    sub_2453B225C(a2, v21, v6);
    v7 = sub_2453E81F0(&v19);
    sub_2453A6258(&__p, v7);
    MEMORY[0x245D69E50](&v19, __p, (v18 - __p));
    HIDWORD(v39) |= 0x20000u;
    if (v34 == v5)
    {
      operator new();
    }

    MEMORY[0x245D69EF0]();
    sub_2453A9A44(v3, buf);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    sub_2453E714C(&v19);
    sub_2453A13E8(buf);
  }

  v8 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 4);
    v9 = *(a2 + 8);
    v11 = *(a2 + 13);
    v12 = -1.0;
    v13 = -1.0;
    if (v11 != 255)
    {
      v13 = (pow(1.1, v11) + -1.0) * 10.0;
    }

    v14 = *(a2 + 14);
    if (v14 != 255)
    {
      v12 = (pow(1.1, v14) + -1.0) * 10.0;
    }

    v15 = *(a2 + 17);
    *buf = 67437825;
    *&buf[4] = v10;
    LOWORD(v26) = 1029;
    *(&v26 + 2) = v9;
    WORD3(v26) = 2049;
    *(&v26 + 1) = v13;
    LOWORD(v27) = 2049;
    *(&v27 + 2) = v12;
    WORD5(v27) = 1025;
    HIDWORD(v27) = v15;
    _os_log_impl(&dword_245396000, v8, OS_LOG_TYPE_DEFAULT, "#input,#nilr,injectReflocationToGnssDevice,refLat,%{sensitive}u,refLon,%{sensitive}u,original uncertainties, %{private}f,semiMinor,%{private}f,%{private}u", buf, 0x28u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2453AFA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_2453E714C(&a13);
  sub_2453A13E8(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_2453AFA5C(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852898))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AFB18(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858528B8;
  a2[1] = v2;
  return result;
}

void sub_2453AFB44(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 8);
  memcpy(__dst, a2, sizeof(__dst));
  if (*(v2 + 768) == 4)
  {
    v3 = qword_2813CF020;
    if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245396000, v3, OS_LOG_TYPE_DEFAULT, "#nilr,sendEphemerisIndicationToCl, indication to CL", buf, 2u);
    }

    *buf = &unk_285858D58;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = MEMORY[0x277D82C30];
    v23 = 0;
    v24 = MEMORY[0x277D82C30];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v29 = 0x100000000;
    LODWORD(v16) = 27;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v9 = &unk_285855638;
    v14 = 0;
    sub_2453E73EC(&v9);
    HIDWORD(v14) |= 8u;
    if (!*(&v11 + 1))
    {
      operator new();
    }

    sub_2453B2454(__dst, *(&v11 + 1));
    v5 = sub_2453E81F0(&v9);
    sub_2453A6258(&__p, v5);
    MEMORY[0x245D69E50](&v9, __p, (v8 - __p));
    HIDWORD(v29) |= 0x20000u;
    if (v24 == v4)
    {
      operator new();
    }

    MEMORY[0x245D69EF0]();
    sub_2453A9A44(v2, buf);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }

    sub_2453E714C(&v9);
    sub_2453A13E8(buf);
  }
}

void sub_2453AFDA0(_Unwind_Exception *a1)
{
  sub_2453E714C(&STACK[0x630]);
  sub_2453A13E8(&STACK[0x680]);
  _Unwind_Resume(a1);
}

uint64_t sub_2453AFDDC(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_285852918))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453AFE98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285852938;
  a2[1] = v2;
  return result;
}

void sub_2453AFEC4(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *(a1 + 8);
  memset(&v48, 0, sizeof(v48));
  v33 = &unk_285858D58;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = MEMORY[0x277D82C30];
  v41 = 0;
  v42 = MEMORY[0x277D82C30];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v47 = 0x100000000;
  LODWORD(v34) = 27;
  v27 = &unk_285855638;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  sub_2453E73EC(&v27);
  HIDWORD(v32) |= 0x80u;
  v9 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
    operator new();
  }

  v10 = *(*(&v31 + 1) + 32) | 3;
  v11 = *(a2 + 8);
  *(*(&v31 + 1) + 32) = v10;
  v9[2] = v11;
  v9[3] = 1;
  v12 = *(a4 + 4);
  if (v12 >= 3)
  {
    v14 = "PosMode:Unknown, ";
  }

  else
  {
    v13 = dword_245488278[v12];
    v14 = off_278E36C88[v12];
    v9[8] = v10;
    v9[3] = v13;
  }

  std::string::append(&v48, v14);
  v15 = v9[8] | 4;
  v9[8] = v15;
  v9[4] = 1;
  if (*(a4 + 8))
  {
    v16 = "PosMethod:GNSS,";
    v17 = 2;
  }

  else if ((*(a4 + 8) & 4) != 0)
  {
    v16 = "PosMethod:LTE_ECID,";
    v17 = 3;
  }

  else
  {
    if ((*(a4 + 8) & 0x80) == 0)
    {
      goto LABEL_14;
    }

    v16 = "PosMethod:NR_ECID,";
    v17 = 4;
  }

  v9[8] = v15;
  v9[4] = v17;
  std::string::append(&v48, v16);
  v15 = v9[8];
LABEL_14:
  v18 = v15 | 0x10;
  v9[8] = v18;
  v9[6] = 1;
  if (*a4 == 1)
  {
    v19 = "DiscardReason:NotInEmergency,";
    v20 = 2;
    goto LABEL_18;
  }

  if (*a4 == 2)
  {
    v19 = "DiscardReason:CapabilityMisMatch,";
    v20 = 3;
LABEL_18:
    v9[8] = v18;
    v9[6] = v20;
    goto LABEL_20;
  }

  v19 = "DiscardReason:Unknown, ";
LABEL_20:
  std::string::append(&v48, v19);
  v21 = v9[8] | 8;
  v9[8] = v21;
  v9[5] = 1;
  if (v6 > 2)
  {
    v22 = "DiscardedMsgType:Unknown,";
  }

  else
  {
    v22 = off_278E36CA0[v6];
    v9[8] = v21;
    v9[5] = v6 + 2;
  }

  std::string::append(&v48, v22);
  v23 = qword_2813CF020;
  if (os_log_type_enabled(qword_2813CF020, OS_LOG_TYPE_DEBUG))
  {
    v26 = &v48;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v48.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v26;
    _os_log_debug_impl(&dword_245396000, v23, OS_LOG_TYPE_DEBUG, "handleDiscardedSessionInfo,%s", &buf, 0xCu);
  }

  v24 = sub_2453E81F0(&v27);
  sub_2453A6258(&buf, v24);
  MEMORY[0x245D69E50](&v27, buf, (DWORD2(buf) - buf));
  HIDWORD(v47) |= 0x20000u;
  if (v42 == v8)
  {
    operator new();
  }

  MEMORY[0x245D69EF0]();
  sub_2453A9A44(v7, &v33);
  if (buf)
  {
    *(&buf + 1) = buf;
    operator delete(buf);
  }

  sub_2453E714C(&v27);
  sub_2453A13E8(&v33);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2453B02D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_2453E714C(va);
  sub_2453A13E8(va1);
  if (*(v2 - 97) < 0)
  {
    operator delete(*(v2 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2453B0324(uint64_t a1, uint64_t a2)
{
  if (sub_2453ABB08(a2, &unk_2858529A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2453B0370(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t sub_2453B0420(unsigned int a1)
{
  if (a1 < 0x11)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453B042C(unsigned int a1)
{
  if (a1 > 0x21)
  {
    return 0;
  }

  else
  {
    return dword_245488298[a1];
  }
}

uint64_t sub_2453B044C(unsigned int a1)
{
  if (a1 != 0 && a1 < 0xFFFFFFF2)
  {
    return 0;
  }

  else
  {
    return dword_245488320[a1 + 14];
  }
}

uint64_t sub_2453B0470(int a1)
{
  if ((a1 + 1) >= 6)
  {
    return 0;
  }

  else
  {
    return (a1 + 2);
  }
}

uint64_t sub_2453B0484(unsigned int a1)
{
  if (a1 < 6)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2453B0490(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 124);
  *(a2 + 8) = *a1;
  *(a2 + 24) = *(a1 + 16);
  *(a2 + 124) = v4 | 0x3F;
  *(a2 + 40) = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = *(a1 + 52);
  *(a2 + 56) = v6;
  result = sub_2453B0420(v5);
  v8 = 0;
  *(a2 + 60) = result;
  v9 = *(a1 + 56);
  v11 = *(a1 + 88);
  v10 = *(a1 + 92);
  if (v11 < 7)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 96) = v12;
  *(a2 + 64) = vand_s8(vadd_s32(v9, 0x100000001), vcgt_u32(0x600000003, v9));
  *(a2 + 72) = *(a1 + 64);
  *(a2 + 88) = *(a1 + 80);
  if (v10 <= 0x10)
  {
    v8 = dword_24548835C[v10];
  }

  *(a2 + 100) = v8;
  *(a2 + 104) = *(a1 + 96);
  v13 = *(a1 + 104);
  *(a2 + 124) = v4 | 0x3FFFF;
  *(a2 + 112) = v13;
  LODWORD(v13) = *(a1 + 120);
  *(a2 + 124) = v4 | 0x7FFFF;
  *(a2 + 108) = v13;
  return result;
}

uint64_t *sub_2453B0574(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  *(a2 + 8) = *a1;
  v5 = *(a1 + 4);
  if (v5 < 4)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 12) = v6;
  *(a2 + 44) = v4 | 7;
  v7 = *(a2 + 16);
  if (v7 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v7, (a1 + 8));
  v8 = *(a1 + 40) - *(a1 + 32);
  result = sub_2453B0370((a2 + 24), v8);
  if (v8 >= 1)
  {
    v10 = 0;
    v11 = v8 & 0x7FFFFFFF;
    do
    {
      v12 = *(*(a1 + 32) + v10);
      v13 = *(a2 + 32);
      if (v13 == *(a2 + 36))
      {
        result = sub_2453B0370((a2 + 24), v13 + 1);
        v13 = *(a2 + 32);
      }

      v14 = *(a2 + 24);
      *(a2 + 32) = v13 + 1;
      *(v14 + 4 * v13) = v12;
      ++v10;
    }

    while (v11 != v10);
  }

  return result;
}

uint64_t *sub_2453B0670(uint64_t a1, uint64_t a2)
{
  v4 = sub_2453B0420(*a1);
  v5 = *(a2 + 48);
  *(a2 + 40) = v4;
  *(a2 + 48) = v5 | 3;
  v6 = *(a2 + 8);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 32);
  *(v6 + 8) = *(a1 + 4);
  v8 = *(a1 + 6);
  *(v6 + 12) = *(a1 + 5);
  *(v6 + 16) = v8;
  v9 = *(a1 + 8);
  *(v6 + 32) = v7 | 0x1F;
  v10 = *(a1 + 10);
  *(v6 + 20) = v9;
  *(v6 + 24) = v10;
  *(a2 + 48) |= 4u;
  v11 = *(a2 + 16);
  if (!v11)
  {
    operator new();
  }

  sub_2453B0574(a1 + 16, v11);
  *(a2 + 48) |= 8u;
  v12 = *(a2 + 24);
  if (!v12)
  {
    operator new();
  }

  v13 = *(v12 + 16) | 3;
  *(v12 + 8) = *(a1 + 72);
  *(v12 + 16) = v13;
  *(a2 + 48) |= 0x10u;
  v14 = *(a2 + 32);
  if (!v14)
  {
    operator new();
  }

  v15 = *(v14 + 8);
  *(v14 + 24) |= 1u;
  if (!v15)
  {
    operator new();
  }

  result = sub_2453B0574(a1 + 80, v15);
  v17 = *(a1 + 136);
  if (v17 < 3)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 0;
  }

  *(v14 + 24) |= 2u;
  *(v14 + 16) = v18;
  return result;
}

double sub_2453B090C(int *a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  v6 = *a1;
  v5 = a1[1];
  *(a2 + 8) = v6;
  *(a2 + 12) = sub_2453B0420(v5);
  v7 = sub_2453B042C(a1[2]);
  v8 = a1[3];
  if (v8 < 0x17)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 16) = v7;
  *(a2 + 20) = v9;
  *(a2 + 24) = *(a1 + 1);
  *(a2 + 40) = *(a1 + 2);
  *(a2 + 56) = *(a1 + 3);
  *(a2 + 72) = *(a1 + 8);
  *(a2 + 96) = *(a1 + 72);
  *(a2 + 97) = *(a1 + 73);
  *(a2 + 104) = v4 | 0x7FFF;
  v10 = *(a2 + 80);
  if (!v10)
  {
    operator new();
  }

  v11 = *(v10 + 60);
  *(v10 + 8) = *(a1 + 5);
  *(v10 + 24) = *(a1 + 6);
  *(v10 + 40) = *(a1 + 14);
  v12 = *(a1 + 120);
  *(v10 + 60) = v11 | 0x7F;
  v13 = *(a1 + 121);
  *(v10 + 48) = v12;
  *(v10 + 52) = v13;
  *(a2 + 104) |= 0x8000u;
  v14 = *(a2 + 88);
  if (!v14)
  {
    operator new();
  }

  v15 = *(v14 + 28);
  v16 = *(a1 + 66);
  *(v14 + 8) = a1[32];
  *(v14 + 12) = v16;
  result = *(a1 + 17);
  *(v14 + 28) = v15 | 7;
  *(v14 + 16) = result;
  return result;
}

uint64_t sub_2453B0A90(int *a1, _DWORD *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v5 + 1;
  v7 = v5 + 2;
  if (v6 >= 5)
  {
    v7 = 0;
  }

  v8 = a2[6];
  a2[2] = v7;
  result = sub_2453B0470(v4);
  a2[6] = v8 | 3;
  v10 = a1[2];
  a2[6] = v8 | 7;
  a2[3] = result;
  a2[4] = v10;
  return result;
}

uint64_t sub_2453B0AF4(unsigned __int16 *a1, _DWORD *a2)
{
  v4 = *(a1 + 1);
  v5 = v4 + 1;
  v6 = a2[20];
  v7 = v4 + 2;
  if (v5 >= 4)
  {
    v7 = 0;
  }

  a2[2] = *a1;
  a2[3] = v7;
  v8 = a1[4];
  a2[20] = v6 | 0xF;
  v9 = *(a1 + 10);
  a2[4] = v8;
  a2[5] = v9;
  v10 = *(a1 + 16);
  a2[6] = *(a1 + 3);
  a2[7] = v10;
  v11 = *(a1 + 17);
  a2[20] = v6 | 0xFF;
  v12 = *(a1 + 18);
  a2[8] = v11;
  a2[9] = v12;
  v13 = *(a1 + 5);
  a2[20] = v6 | 0x1FF;
  v14 = *(a1 + 6);
  a2[10] = v13;
  a2[11] = v14;
  v15 = *(a1 + 30);
  a2[12] = a1[14];
  a2[13] = v15;
  v16 = *(a1 + 32);
  a2[14] = *(a1 + 31);
  a2[15] = v16;
  result = sub_2453B0470(*(a1 + 9));
  a2[20] = v6 | 0x7FFF;
  v18 = *(a1 + 10);
  a2[20] = v6 | 0xFFFF;
  a2[16] = result;
  a2[17] = v18;
  return result;
}

uint32x4_t sub_2453B0BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2453B044C(*a1);
  v5 = *(a2 + 64);
  *(a2 + 64) = v5 | 1;
  v6 = *(a1 + 4);
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  *(a2 + 64) = v5 | 7;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  sub_2453B0A90((a1 + 8), v7);
  *(a2 + 64) |= 8u;
  v9 = *(a2 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(v9 + 40);
  v11 = *(a1 + 24);
  *(v9 + 8) = *(a1 + 20);
  *(v9 + 12) = v11;
  *(v9 + 40) = v10 | 0xF;
  v12 = *(a1 + 28);
  v13 = *(a1 + 32);
  v14 = (v12 + 1) >= 3;
  v15 = v12 + 2;
  if (v14)
  {
    v15 = 0;
  }

  *(v9 + 16) = *(a1 + 26);
  *(v9 + 20) = v15;
  *(v9 + 32) = v13;
  *(v9 + 40) = v10 | 0x3F;
  v16 = *(v9 + 24);
  if (!v16)
  {
    operator new();
  }

  v17 = v16[6];
  v18 = *(a1 + 40);
  v16[2] = *(a1 + 36);
  v16[3] = v18;
  v19 = *(a1 + 42);
  v16[6] = v17 | 7;
  v16[4] = v19;
  *(a2 + 64) |= 0x10u;
  v20 = *(a2 + 32);
  if (!v20)
  {
    operator new();
  }

  v21 = v20[9];
  v20[9] = v21 | 1;
  v22 = *(a1 + 44);
  v23 = *(a1 + 48);
  if (v22 < 5)
  {
    v24 = v22 + 1;
  }

  else
  {
    v24 = 0;
  }

  v20[2] = v24;
  v20[3] = v23;
  v25 = *(a1 + 54);
  v20[4] = *(a1 + 52);
  v20[5] = v25;
  v26 = *(a1 + 56);
  v27 = v26 + 1;
  v28 = v26 + 2;
  if (v27 >= 3)
  {
    v28 = 0;
  }

  v29 = *(a1 + 60);
  v20[9] = v21 | 0x3F;
  v20[6] = v28;
  v20[7] = v29;
  *(a2 + 64) |= 0x20u;
  v30 = *(a2 + 40);
  if (!v30)
  {
    operator new();
  }

  v31 = 0;
  v32 = *(a1 + 64);
  if (v32 > 7)
  {
    if (v32 > 9)
    {
      if (v32 == 10)
      {
        v31 = 7;
      }

      else if (v32 == 255)
      {
        v31 = 8;
      }
    }

    else if (v32 == 8)
    {
      v31 = 5;
    }

    else
    {
      v31 = 6;
    }
  }

  else if (v32 > 2)
  {
    if (v32 == 3)
    {
      v31 = 3;
    }

    else if (v32 == 5)
    {
      v31 = 4;
    }
  }

  else if (v32)
  {
    if (v32 == 1)
    {
      v31 = 2;
    }
  }

  else
  {
    v31 = 1;
  }

  v33 = *(v30 + 24);
  *(v30 + 16) = v31;
  *(v30 + 24) = v33 | 3;
  v34 = *(v30 + 8);
  if (!v34)
  {
    operator new();
  }

  v35 = (v34 + 72);
  v36 = *(v34 + 8);
  *(v34 + 72) |= 1u;
  if (!v36)
  {
    operator new();
  }

  v37 = *(v36 + 8);
  *(v36 + 24) |= 1u;
  if (!v37)
  {
    operator new();
  }

  v38 = *(a1 + 68);
  v39 = v37[5];
  v37[5] = v39 | 1;
  v40 = *(a1 + 72);
  v37[5] = v39 | 3;
  v37[2] = v38;
  v37[3] = v40;
  v41 = *(a1 + 76);
  *(v36 + 24) |= 2u;
  *(v36 + 16) = v41;
  *v35 |= 2u;
  v42 = *(v34 + 16);
  if (!v42)
  {
    operator new();
  }

  v43 = (v42 + 36);
  v44 = *(v42 + 8);
  *(v42 + 36) |= 1u;
  if (!v44)
  {
    operator new();
  }

  v45 = *(a1 + 80);
  v46 = v44[5];
  v44[5] = v46 | 1;
  v47 = *(a1 + 84);
  v44[5] = v46 | 3;
  v44[2] = v45;
  v44[3] = v47;
  v48 = *v43;
  v49 = *(a1 + 89);
  *(v42 + 16) = *(a1 + 88);
  *(v42 + 20) = v49;
  *(v42 + 24) = *(a1 + 90);
  v50 = *(a1 + 91);
  *v43 = v48 | 0x1E;
  *(v42 + 28) = v50;
  *v35 |= 4u;
  v51 = *(v34 + 24);
  if (!v51)
  {
    operator new();
  }

  v52 = (v51 + 44);
  v53 = *(v51 + 8);
  *(v51 + 44) |= 1u;
  if (!v53)
  {
    operator new();
  }

  v54 = *(a1 + 92);
  v55 = v53[5];
  v53[5] = v55 | 1;
  v56 = *(a1 + 96);
  v53[5] = v55 | 3;
  v53[2] = v54;
  v53[3] = v56;
  v57 = *v52;
  *(v51 + 16) = *(a1 + 100);
  v8.i32[0] = *(a1 + 102);
  *(v51 + 20) = vmovl_u16(*&vmovl_u8(v8));
  v58 = *(a1 + 106);
  *v52 = v57 | 0x7E;
  *(v51 + 36) = v58;
  *v35 |= 8u;
  v59 = *(v34 + 32);
  if (!v59)
  {
    operator new();
  }

  v60 = (v59 + 40);
  v61 = *(v59 + 8);
  *(v59 + 40) |= 1u;
  if (!v61)
  {
    operator new();
  }

  v62 = *(a1 + 108);
  v63 = v61[5];
  v61[5] = v63 | 1;
  v64 = *(a1 + 112);
  v61[5] = v63 | 3;
  v61[2] = v62;
  v61[3] = v64;
  v65 = *v60;
  v66 = *(a1 + 118);
  *(v59 + 16) = *(a1 + 116);
  *(v59 + 20) = v66;
  v67 = *(a1 + 120);
  *(v59 + 24) = *(a1 + 119);
  *(v59 + 28) = v67;
  v68 = *(a1 + 121);
  *v60 = v65 | 0x3E;
  *(v59 + 32) = v68;
  *v35 |= 0x10u;
  v69 = *(v34 + 40);
  if (!v69)
  {
    operator new();
  }

  v70 = *(a1 + 124);
  v71 = v69[5];
  v69[5] = v71 | 1;
  v72 = *(a1 + 128);
  v69[5] = v71 | 3;
  v69[2] = v70;
  v69[3] = v72;
  *v35 |= 0x20u;
  v73 = *(v34 + 48);
  if (!v73)
  {
    operator new();
  }

  v74 = *(v73 + 8);
  *(v73 + 24) |= 1u;
  if (!v74)
  {
    operator new();
  }

  v75 = *(a1 + 132);
  v76 = v74[5];
  v74[5] = v76 | 1;
  v77 = *(a1 + 136);
  v74[5] = v76 | 3;
  v74[2] = v75;
  v74[3] = v77;
  v78 = *(a1 + 140);
  *(v73 + 24) |= 2u;
  *(v73 + 16) = v78;
  *v35 |= 0x40u;
  v79 = *(v34 + 56);
  if (!v79)
  {
    operator new();
  }

  v80 = *(a1 + 144);
  v79[10] |= 1u;
  v79[8] = v80;
  v81 = 15;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v79 + 2));
  v83 = (a1 + 152);
  do
  {
    v84 = v79[5];
    v85 = v79[4];
    if (v85 >= v84)
    {
      if (v84 == v79[6])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v79 + 2));
        v84 = v79[5];
      }

      v79[5] = v84 + 1;
      operator new();
    }

    v86 = *(v79 + 1);
    v79[4] = v85 + 1;
    v87 = *(v86 + 8 * v85);
    v88 = *(v83 - 1);
    v89 = v87[5];
    v87[5] = v89 | 1;
    v90 = *v83;
    v83 += 2;
    v87[5] = v89 | 3;
    v87[2] = v88;
    v87[3] = v90;
    --v81;
  }

  while (v81);
  v91 = *(a1 + 268);
  *v35 |= 0x80u;
  *(v34 + 64) = v91;
  *(a2 + 64) |= 0x40u;
  v92 = *(a2 + 48);
  if (!v92)
  {
    operator new();
  }

  v93 = 0;
  v94 = *(a1 + 272);
  if (v94 <= 1)
  {
    if (v94)
    {
      if (v94 == 1)
      {
        v93 = 2;
      }
    }

    else
    {
      v93 = 1;
    }
  }

  else
  {
    switch(v94)
    {
      case 2:
        v93 = 3;
        break;
      case 3:
        v93 = 4;
        break;
      case 255:
        v93 = 5;
        break;
    }
  }

  v95 = *(v92 + 24);
  *(v92 + 16) = v93;
  *(v92 + 24) = v95 | 3;
  v96 = *(v92 + 8);
  if (!v96)
  {
    operator new();
  }

  v97 = (v96 + 44);
  v98 = *(v96 + 8);
  *(v96 + 44) |= 1u;
  if (!v98)
  {
    operator new();
  }

  v99 = *(a1 + 276);
  v100 = *(a1 + 278);
  v98[5] |= 3u;
  v98[2] = v99;
  v98[3] = v100;
  *v97 |= 2u;
  v101 = *(v96 + 16);
  if (!v101)
  {
    operator new();
  }

  v102 = v101[7];
  v103 = *(a1 + 282);
  v101[2] = *(a1 + 280);
  v101[3] = v103;
  v104 = *(a1 + 284);
  v101[7] = v102 | 0xF;
  v105 = *(a1 + 285);
  v101[4] = v104;
  v101[5] = v105;
  *v97 |= 4u;
  v106 = *(v96 + 24);
  if (!v106)
  {
    operator new();
  }

  v107 = v106[6];
  v108 = *(a1 + 288);
  v106[2] = *(a1 + 286);
  v106[3] = v108;
  v109 = *(a1 + 290);
  v106[6] = v107 | 7;
  v106[4] = v109;
  *v97 |= 8u;
  v110 = *(v96 + 32);
  if (!v110)
  {
    operator new();
  }

  v111 = v110[2].i32[1];
  v112 = *(a1 + 294);
  v110->i32[2] = *(a1 + 292);
  v110->i32[3] = v112;
  v110[2].i32[1] = v111 | 0x3F;
  v82.i32[0] = *(a1 + 296);
  result = vmovl_u16(*&vmovl_u8(v82));
  v110[1] = result;
  v114 = *(a1 + 300);
  *(a2 + 64) |= 0x80u;
  *(a2 + 56) = v114;
  return result;
}

uint64_t *sub_2453B18E4(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = a1[1];
  *(a2 + 8) = *a1;
  *(a2 + 12) = v5;
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  *(a2 + 64) = v4 | 0xF;
  *(a2 + 16) = v6;
  *(a2 + 20) = v7;
  sub_2453B0370((a2 + 24), 15);
  for (i = 0; i != 15; ++i)
  {
    v9 = *(a1 + i + 6);
    v10 = *(a2 + 32);
    if (v10 == *(a2 + 36))
    {
      sub_2453B0370((a2 + 24), v10 + 1);
      v10 = *(a2 + 32);
    }

    v11 = *(a2 + 24);
    *(a2 + 32) = v10 + 1;
    *(v11 + 4 * v10) = v9;
  }

  result = sub_2453B0370((a2 + 40), 15);
  for (j = 0; j != 15; ++j)
  {
    v14 = *(a1 + j + 21);
    v15 = *(a2 + 48);
    if (v15 == *(a2 + 52))
    {
      result = sub_2453B0370((a2 + 40), v15 + 1);
      v15 = *(a2 + 48);
    }

    v16 = *(a2 + 40);
    *(a2 + 48) = v15 + 1;
    *(v16 + 4 * v15) = v14;
  }

  v17 = *(a1 + 36);
  *(a2 + 64) |= 0x40u;
  *(a2 + 56) = v17;
  return result;
}

uint32x4_t sub_2453B19F0(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  *(a2 + 72) |= 3u;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  sub_2453B0370((a2 + 16), 8);
  for (i = 0; i != 32; i += 4)
  {
    v7 = sub_2453B0484(*&a1[i + 4]);
    v8 = *(a2 + 24);
    if (v8 == *(a2 + 28))
    {
      sub_2453B0370((a2 + 16), v8 + 1);
      v8 = *(a2 + 24);
    }

    v9 = *(a2 + 16);
    *(a2 + 24) = v8 + 1;
    *(v9 + 4 * v8) = v7;
  }

  v10 = *(a2 + 72);
  v11 = a1[40];
  *(a2 + 32) = *(a1 + 9);
  *(a2 + 36) = v11;
  v12 = a1[41];
  *(a2 + 72) = v10 | 0x38;
  *(a2 + 64) = v12;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 40));
  v13 = 0;
  v59 = a1 + 44;
  v14 = a1 + 56;
  v15 = a1 + 181;
  v16 = a1 + 204;
  do
  {
    v17 = *(a2 + 52);
    v18 = *(a2 + 48);
    if (v18 >= v17)
    {
      if (v17 == *(a2 + 56))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 40));
        v17 = *(a2 + 52);
      }

      *(a2 + 52) = v17 + 1;
      operator new();
    }

    v19 = *(a2 + 40);
    *(a2 + 48) = v18 + 1;
    v20 = *(v19 + 8 * v18);
    v21 = &v59[224 * v13];
    v22 = sub_2453B0484(*v21);
    v23 = *(v20 + 72);
    v24 = *(v21 + 2);
    *(v20 + 8) = v22;
    *(v20 + 12) = v24;
    v25 = v21[6];
    *(v20 + 72) = v23 | 7;
    *(v20 + 64) = v25;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v20 + 16));
    v60 = v14;
    v26 = 15;
    do
    {
      v27 = *(v20 + 28);
      v28 = *(v20 + 24);
      if (v28 >= v27)
      {
        if (v27 == *(v20 + 32))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v20 + 16));
          v27 = *(v20 + 28);
        }

        *(v20 + 28) = v27 + 1;
        operator new();
      }

      v29 = *(v20 + 16);
      *(v20 + 24) = v28 + 1;
      v30 = *(v29 + 8 * v28);
      v31 = *(v14 - 4);
      v32 = v30[5];
      v30[5] = v32 | 1;
      v33 = *v14;
      v14 += 2;
      v30[5] = v32 | 3;
      v30[2] = v31;
      v30[3] = v33;
      --v26;
    }

    while (v26);
    *(v20 + 72) |= 0x10u;
    v34 = *(v20 + 40);
    if (!v34)
    {
      operator new();
    }

    v35 = *(v34 + 48);
    v36 = *(v21 + 66);
    *(v34 + 8) = *(v21 + 32);
    *(v34 + 12) = v36;
    v37 = v21[135];
    *(v34 + 16) = v21[134];
    *(v34 + 20) = v37;
    v38 = v21[136];
    *(v34 + 48) = v35 | 0x1F;
    *(v34 + 40) = v38;
    sub_2453B0370((v34 + 24), 15);
    for (j = 0; j != 15; ++j)
    {
      v40 = v15[j];
      v41 = *(v34 + 32);
      if (v41 == *(v34 + 36))
      {
        sub_2453B0370((v34 + 24), v41 + 1);
        v41 = *(v34 + 32);
      }

      v42 = *(v34 + 24);
      *(v34 + 32) = v41 + 1;
      *(v42 + 4 * v41) = v40;
    }

    *(v20 + 72) |= 0x20u;
    v43 = *(v20 + 48);
    if (!v43)
    {
      operator new();
    }

    v44 = v43[13] | 0xF;
    v45 = v21[154];
    v43[2] = *(v21 + 76);
    v43[3] = v45;
    v46 = v21[155];
    v47 = v21[156];
    v43[13] = v44;
    v43[4] = v46;
    v43[5] = v47;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v43 + 6));
    v49 = v16;
    v50 = 15;
    do
    {
      v51 = v43[9];
      v52 = v43[8];
      if (v52 >= v51)
      {
        if (v51 == v43[10])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v43 + 6));
          v51 = v43[9];
        }

        v43[9] = v51 + 1;
        operator new();
      }

      v53 = *(v43 + 3);
      v43[8] = v52 + 1;
      v54 = *(v53 + 8 * v52);
      v55 = *(v49 - 2);
      v56 = *v49;
      v49 += 2;
      v54[5] |= 3u;
      v54[2] = v55;
      v54[3] = v56;
      --v50;
    }

    while (v50);
    *(v20 + 72) |= 0x40u;
    v57 = *(v20 + 56);
    if (!v57)
    {
      operator new();
    }

    *(v57 + 28) |= 0xFu;
    v48.i32[0] = *(v21 + 218);
    ++v13;
    result = vmovl_u16(*&vmovl_u8(v48));
    *(v57 + 8) = result;
    v14 = v60 + 56;
    v15 += 224;
    v16 += 224;
  }

  while (v13 != 8);
  return result;
}

double sub_2453B1F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2453B044C(*a1);
  v5 = *(a2 + 44);
  v6 = *(a1 + 4);
  *(a2 + 8) = v4;
  *(a2 + 12) = v6;
  *(a2 + 44) = v5 | 7;
  v7 = *(a2 + 16);
  if (!v7)
  {
    operator new();
  }

  sub_2453B0A90((a1 + 8), v7);
  *(a2 + 44) |= 8u;
  v8 = *(a2 + 24);
  if (!v8)
  {
    operator new();
  }

  sub_2453B18E4((a1 + 20), v8);
  *(a2 + 44) |= 0x10u;
  v9 = *(a2 + 32);
  if (!v9)
  {
    operator new();
  }

  *&result = sub_2453B19F0((a1 + 60), v9).u64[0];
  return result;
}

uint64_t sub_2453B20CC(uint64_t a1, _DWORD *a2)
{
  v4 = a2[17];
  v5 = *(a1 + 4);
  a2[2] = *a1;
  a2[3] = v5;
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  a2[17] = v4 | 0xF;
  a2[4] = v6;
  a2[5] = v7;
  v8 = 16;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 6));
  v9 = (a1 + 10);
  do
  {
    v10 = a2[9];
    v11 = a2[8];
    if (v11 >= v10)
    {
      if (v10 == a2[10])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 6));
        v10 = a2[9];
      }

      a2[9] = v10 + 1;
      operator new();
    }

    v12 = *(a2 + 3);
    a2[8] = v11 + 1;
    v13 = *(v12 + 8 * v11);
    v14 = *(v9 - 1);
    v15 = v13[8];
    v13[8] = v15 | 3;
    v16 = *v9;
    v13[2] = v14;
    v13[3] = v16;
    v17 = *(v9 + 2);
    v13[8] = v15 | 7;
    v18 = *(v9 + 6);
    v13[4] = v17;
    v13[5] = v18;
    v19 = v9[10];
    v13[8] = v15 | 0x1F;
    v13[6] = v19;
    v9 += 16;
    --v8;
  }

  while (v8);
  v20 = a2[17];
  v21 = *(a1 + 268);
  v22 = v21 + 1;
  v23 = v21 + 2;
  if (v22 >= 5)
  {
    v23 = 0;
  }

  a2[12] = *(a1 + 264);
  a2[13] = v23;
  result = sub_2453B0470(*(a1 + 272));
  a2[17] = v20 | 0xE0;
  v25 = *(a1 + 276);
  a2[17] = v20 | 0x1E0;
  a2[14] = result;
  a2[15] = v25;
  return result;
}

uint64_t sub_2453B225C(unsigned __int8 *a1, uint64_t a2, uint8x8_t a3)
{
  v5 = *(a2 + 68);
  v6 = a1[1];
  *(a2 + 8) = *a1;
  *(a2 + 12) = v6;
  v7 = *(a1 + 1);
  *(a2 + 68) = v5 | 7;
  v8 = *(a1 + 1);
  *(a2 + 68) = v5 | 0xF;
  *(a2 + 16) = v7;
  *(a2 + 20) = v8;
  *(a2 + 24) = *(a1 + 2);
  a3.i32[0] = *(a1 + 3);
  v9 = a1[17];
  *(a2 + 44) = a1[16];
  *(a2 + 48) = v9;
  v11 = *(a1 + 5);
  v10 = *(a1 + 6);
  v12 = v11 + 1;
  *(a2 + 28) = vmovl_u16(*&vmovl_u8(a3));
  v13 = v11 + 2;
  if (v12 >= 5)
  {
    v13 = 0;
  }

  *(a2 + 52) = v13;
  result = sub_2453B0470(v10);
  *(a2 + 68) = v5 | 0x1FFF;
  v15 = *(a1 + 7);
  *(a2 + 68) = v5 | 0x3FFF;
  *(a2 + 56) = result;
  *(a2 + 60) = v15;
  return result;
}

__n128 sub_2453B230C(__int128 *a1, uint64_t a2)
{
  v2 = *(a2 + 148);
  v3 = *(a2 + 152);
  v4 = *a1;
  *(a2 + 148) = v2 | 1;
  DWORD1(v4) = *(a1 + 1);
  *(a2 + 148) = v2 | 3;
  DWORD2(v4) = *(a1 + 2);
  *(a2 + 148) = v2 | 7;
  HIDWORD(v4) = *(a1 + 3);
  *(a2 + 148) = v2 | 0xF;
  *(a2 + 8) = v4;
  v5 = a1[1];
  *(a2 + 148) = v2 | 0x1F;
  DWORD1(v5) = *(a1 + 5);
  *(a2 + 148) = v2 | 0x3F;
  DWORD2(v5) = *(a1 + 6);
  *(a2 + 148) = v2 | 0x7F;
  HIDWORD(v5) = *(a1 + 7);
  *(a2 + 24) = v5;
  *&v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  *&v7 = vmovl_u16(*&v5).u64[0];
  *(&v7 + 1) = vmovl_s16(*&v5).i64[1];
  *(a2 + 40) = v7;
  v8 = vmovl_s16(v6);
  v8.i32[3] = vmovl_u16(*&v6).i32[3];
  *(a2 + 56) = v8;
  v9 = vmovl_s16(a1[3]);
  *(a2 + 72) = v9;
  v9.i32[0] = *(a1 + 14);
  v10 = vmovl_u16(*&vmovl_u8(*v9.i8));
  v10.i32[3] = vshrq_n_s32(vshlq_n_s32(v10, 0x18uLL), 0x18uLL).i32[3];
  *(a2 + 88) = v10;
  v11 = *(a1 + 60);
  v12 = *(a1 + 61);
  *(a2 + 148) = v2 | 0x3FFFFFF;
  *(a2 + 104) = v11;
  *(a2 + 108) = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 68);
  *(a2 + 148) = v2 | 0xFFFFFFF;
  *(a2 + 112) = v13;
  *(a2 + 116) = v14;
  v15 = *(a1 + 18);
  v16 = *(a1 + 76);
  *(a2 + 148) = v2 | 0x3FFFFFFF;
  *(a2 + 120) = v15;
  *(a2 + 124) = v16;
  result = a1[5];
  *(a2 + 148) = v2 | 0x7FFFFFFF;
  result.n128_u32[1] = *(a1 + 21);
  *(a2 + 148) = -1;
  result.n128_u32[2] = *(a1 + 22);
  *(a2 + 152) = v3 | 1;
  result.n128_u32[3] = *(a1 + 23);
  *(a2 + 152) = v3 | 3;
  *(a2 + 128) = result;
  return result;
}

uint64_t sub_2453B2454(_DWORD *a1, int *a2)
{
  v5 = (a1 + 1);
  v4 = *a1;
  a2[13] |= 1u;
  a2[8] = v4;
  v6 = 16;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2));
  do
  {
    v7 = a2[5];
    v8 = a2[4];
    if (v8 >= v7)
    {
      if (v7 == a2[6])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2));
        v7 = a2[5];
      }

      a2[5] = v7 + 1;
      operator new();
    }

    v9 = *(a2 + 1);
    a2[4] = v8 + 1;
    sub_2453B230C(v5, *(v9 + 8 * v8));
    v5 += 6;
    --v6;
  }

  while (v6);
  v10 = a1[385];
  v11 = v10 + 1;
  v12 = v10 + 2;
  if (v11 >= 5)
  {
    v12 = 0;
  }

  v13 = a2[13];
  a2[9] = v12;
  result = sub_2453B0470(a1[386]);
  a2[13] = v13 | 0xC;
  v15 = a1[387];
  a2[13] = v13 | 0x1C;
  a2[10] = result;
  a2[11] = v15;
  return result;
}

void sub_2453B25C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88))
  {
    v4 = *(a1 + 80);
    v5 = v4 - 2;
    v6 = v4 - 1;
    if (v5 >= 5)
    {
      v6 = 0;
    }

    *a2 = v6;
  }

  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = (a2 + 8);
  v10 = *(a1 + 16);
  v11 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v7) >> 2);
  v12 = v10 - v11;
  if (v10 <= v11)
  {
    if (v10 < v11)
    {
      v9 = v7 + 28 * v10;
      *(a2 + 16) = v9;
    }
  }

  else
  {
    v13 = *(a2 + 24);
    if (0x6DB6DB6DB6DB6DB7 * ((v13 - v9) >> 2) < v12)
    {
      if ((v10 & 0x80000000) == 0)
      {
        v14 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v7) >> 2);
        if (2 * v14 > v10)
        {
          v10 = 2 * v14;
        }

        if (v14 >= 0x492492492492492)
        {
          v15 = 0x924924924924924;
        }

        else
        {
          v15 = v10;
        }

        sub_2453AAB58(a2 + 8, v15);
      }

      sub_2453A631C();
    }

    v16 = v9 + 28 * v12;
    do
    {
      *v9 = 0xFFFFFFFF0000;
      *(v9 + 8) = -1;
      *(v9 + 16) = 1667497983;
      *(v9 + 20) = -COERCE_DOUBLE(0x8000000080000000);
      v9 += 28;
    }

    while (v9 != v16);
    *(a2 + 16) = v16;
    v9 = v16;
  }

  v17 = *(a1 + 16);
  v18 = *v8;
  if (v17 >= (-1227133513 * ((v9 - *v8) >> 2)))
  {
    v17 = -1227133513 * ((v9 - *v8) >> 2);
  }

  if (v17 >= 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = 28 * v17;
    do
    {
      if (v20 >= *(a1 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
        v18 = *v8;
      }

      v22 = *(*(a1 + 8) + 8 * v20);
      v23 = *(v22 + 52);
      if (v23)
      {
        *(v18 + v19) = *(v22 + 8);
        if ((v23 & 2) == 0)
        {
LABEL_27:
          if ((v23 & 4) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_40;
        }
      }

      else if ((v23 & 2) == 0)
      {
        goto LABEL_27;
      }

      *(v18 + v19 + 2) = *(v22 + 12);
      if ((v23 & 4) == 0)
      {
LABEL_28:
        if ((v23 & 8) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(v18 + v19 + 4) = *(v22 + 16);
      if ((v23 & 8) == 0)
      {
LABEL_29:
        if ((v23 & 0x10) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(v18 + v19 + 8) = *(v22 + 20);
      v23 = *(v22 + 52);
      if ((v23 & 0x10) == 0)
      {
LABEL_30:
        if ((v23 & 0x20) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_43;
      }

LABEL_42:
      *(v18 + v19 + 12) = *(v22 + 24);
      v23 = *(v22 + 52);
      if ((v23 & 0x20) == 0)
      {
LABEL_31:
        if ((v23 & 0x40) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_44;
      }

LABEL_43:
      *(v18 + v19 + 16) = *(v22 + 28);
      if ((v23 & 0x40) == 0)
      {
LABEL_32:
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_45;
      }

LABEL_44:
      *(v18 + v19 + 18) = *(v22 + 32);
      if ((v23 & 0x80) == 0)
      {
LABEL_33:
        if ((v23 & 0x100) != 0)
        {
          goto LABEL_46;
        }

        goto LABEL_34;
      }

LABEL_45:
      *(v18 + v19 + 19) = *(v22 + 36);
      if ((v23 & 0x100) != 0)
      {
LABEL_46:
        *(v18 + v19 + 20) = *(v22 + 40);
        if ((*(v22 + 52) & 0x200) == 0)
        {
          goto LABEL_36;
        }

LABEL_35:
        *(v18 + v19 + 24) = *(v22 + 44);
        goto LABEL_36;
      }

LABEL_34:
      if ((v23 & 0x200) != 0)
      {
        goto LABEL_35;
      }

LABEL_36:
      ++v20;
      v19 += 28;
    }

    while (v21 != v19);
  }

  v24 = *(a2 + 32);
  v26 = *(a2 + 40);
  v25 = (a2 + 32);
  v27 = *(a1 + 40);
  v28 = (v26 - v24) >> 4;
  if (v27 <= v28)
  {
    if (v27 < v28)
    {
      v26 = (v24 + 16 * v27);
      *(a2 + 40) = v26;
    }
  }

  else
  {
    v29 = v27 - v28;
    v30 = *(a2 + 48);
    if (v29 > (v30 - v26) >> 4)
    {
      if ((v27 & 0x80000000) == 0)
      {
        v31 = v30 - v24;
        if (v31 >> 3 > v27)
        {
          v27 = v31 >> 3;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v27;
        }

        sub_2453AACA0(a2 + 32, v32);
      }

      sub_2453A631C();
    }

    v33 = &v26[2 * v29];
    do
    {
      *v26 = 0xFFFFFFFF0000;
      v26[1] = -1;
      v26 += 2;
    }

    while (v26 != v33);
    *(a2 + 40) = v33;
    v26 = v33;
  }

  v34 = *(a1 + 40);
  v35 = *v25;
  v36 = (v26 - *v25) >> 4;
  if (v34 >= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v34;
  }

  if (v37 >= 1)
  {
    v38 = 0;
    for (i = 0; v37 != i; ++i)
    {
      if (i >= *(a1 + 40))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
        v35 = *v25;
      }

      v40 = *(*(a1 + 32) + 8 * i);
      v41 = *(v40 + 32);
      if (v41)
      {
        *(v35 + v38) = *(v40 + 8);
        if ((v41 & 2) == 0)
        {
LABEL_71:
          if ((v41 & 4) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_79;
        }
      }

      else if ((v41 & 2) == 0)
      {
        goto LABEL_71;
      }

      *(v35 + v38 + 2) = *(v40 + 12);
      if ((v41 & 4) == 0)
      {
LABEL_72:
        if ((v41 & 8) != 0)
        {
          goto LABEL_80;
        }

        goto LABEL_73;
      }

LABEL_79:
      *(v35 + v38 + 4) = *(v40 + 16);
      if ((v41 & 8) != 0)
      {
LABEL_80:
        *(v35 + v38 + 8) = *(v40 + 20);
        if ((*(v40 + 32) & 0x10) == 0)
        {
          goto LABEL_75;
        }

LABEL_74:
        *(v35 + v38 + 12) = *(v40 + 24);
        goto LABEL_75;
      }

LABEL_73:
      if ((v41 & 0x10) != 0)
      {
        goto LABEL_74;
      }

LABEL_75:
      v38 += 16;
    }
  }

  v42 = *(a2 + 56);
  v44 = *(a2 + 64);
  v43 = (a2 + 56);
  v45 = *(a1 + 64);
  v46 = (v44 - v42) >> 5;
  if (v45 <= v46)
  {
    if (v45 < v46)
    {
      v44 = v42 + 32 * v45;
      *(a2 + 64) = v44;
    }
  }

  else
  {
    v47 = v45 - v46;
    v48 = *(a2 + 72);
    if (v47 > (v48 - v44) >> 5)
    {
      if ((v45 & 0x80000000) == 0)
      {
        v49 = v48 - v42;
        if (v49 >> 4 > v45)
        {
          v45 = v49 >> 4;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFE0)
        {
          v50 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v45;
        }

        sub_2453AADA0(a2 + 56, v50);
      }

      sub_2453A631C();
    }

    v51 = v44 + 32 * v47;
    do
    {
      *v44 = 0uLL;
      *(v44 + 16) = 0;
      *(v44 + 2) = -1;
      *(v44 + 8) = -1;
      *(v44 + 16) = -1;
      *(v44 + 20) = 0x7FFFFFFFLL;
      *(v44 + 28) = -1;
      v44 += 32;
    }

    while (v44 != v51);
    *(a2 + 64) = v51;
    v44 = v51;
  }

  v52 = *(a1 + 64);
  v53 = *v43;
  if (v52 >= ((v44 - *v43) >> 5))
  {
    v52 = (v44 - *v43) >> 5;
  }

  if (v52 >= 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 32 * v52;
    do
    {
      if (v55 >= *(a1 + 64))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
        v53 = *v43;
      }

      v57 = *(*(a1 + 56) + 8 * v55);
      v58 = *(v57 + 44);
      if (v58)
      {
        *(v53 + v54) = *(v57 + 8);
        if ((v58 & 2) == 0)
        {
LABEL_104:
          if ((v58 & 4) == 0)
          {
            goto LABEL_105;
          }

          goto LABEL_115;
        }
      }

      else if ((v58 & 2) == 0)
      {
        goto LABEL_104;
      }

      *(v53 + v54 + 2) = *(v57 + 12);
      if ((v58 & 4) == 0)
      {
LABEL_105:
        if ((v58 & 8) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_116;
      }

LABEL_115:
      *(v53 + v54 + 4) = *(v57 + 16);
      if ((v58 & 8) == 0)
      {
LABEL_106:
        if ((v58 & 0x10) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_117;
      }

LABEL_116:
      *(v53 + v54 + 8) = *(v57 + 20);
      v58 = *(v57 + 44);
      if ((v58 & 0x10) == 0)
      {
LABEL_107:
        if ((v58 & 0x20) == 0)
        {
          goto LABEL_108;
        }

        goto LABEL_118;
      }

LABEL_117:
      *(v53 + v54 + 12) = *(v57 + 24);
      v58 = *(v57 + 44);
      if ((v58 & 0x20) == 0)
      {
LABEL_108:
        if ((v58 & 0x40) != 0)
        {
          goto LABEL_119;
        }

        goto LABEL_109;
      }

LABEL_118:
      *(v53 + v54 + 16) = *(v57 + 28);
      if ((v58 & 0x40) != 0)
      {
LABEL_119:
        v59 = *(v57 + 32);
        if (v59 == 3)
        {
          v60 = 2;
        }

        else
        {
          v60 = v59 == 2;
        }

        *(v53 + v54 + 24) = v60;
        if ((v58 & 0x80) == 0)
        {
          goto LABEL_111;
        }

LABEL_110:
        *(v53 + v54 + 28) = *(v57 + 36);
        goto LABEL_111;
      }

LABEL_109:
      if ((v58 & 0x80) != 0)
      {
        goto LABEL_110;
      }

LABEL_111:
      ++v55;
      v54 += 32;
    }

    while (v56 != v54);
  }
}

void sub_2453B2DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453B2DCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 52);
  if (v4)
  {
    *a2 = *(a1 + 32);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  std::string::operator=((a2 + 8), *(a1 + 8));
  v4 = *(a1 + 52);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(a2 + 32) = *(a1 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  std::string::operator=((a2 + 40), *(a1 + 16));
  v4 = *(a1 + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 64) = *(a1 + 37);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a2 + 65) = *(a1 + 38);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a2 + 66) = *(a1 + 39);
  if ((v4 & 0x10) == 0)
  {
    return;
  }

LABEL_17:
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_2453EB7EC();
    v5 = *(qword_2813CEFA8 + 24);
  }

  v6 = *(v5 + 24);
  if (v6)
  {
    *(a2 + 72) = *(v5 + 16);
    if ((v6 & 2) == 0)
    {
LABEL_21:
      if ((v6 & 4) == 0)
      {
        return;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_21;
  }

  *(a2 + 73) = *(v5 + 17);
  if ((v6 & 4) == 0)
  {
    return;
  }

LABEL_22:
  *(a2 + 80) = *(v5 + 8);
}

_DWORD *sub_2453B2EC8(_DWORD *result, uint64_t a2)
{
  v2 = result[20];
  if (v2)
  {
    *a2 = result[2];
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  v3 = result[3] - 2;
  if (v3 >= 3)
  {
    v3 = -1;
  }

  *(a2 + 4) = v3;
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a2 + 8) = result[4];
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a2 + 10) = result[5];
  if ((v2 & 0x10) == 0)
  {
LABEL_6:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a2 + 12) = result[6];
  v2 = result[20];
  if ((v2 & 0x20) == 0)
  {
LABEL_7:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a2 + 16) = result[7];
  if ((v2 & 0x40) == 0)
  {
LABEL_8:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a2 + 17) = result[8];
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a2 + 18) = result[9];
  if ((v2 & 0x100) == 0)
  {
LABEL_10:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a2 + 20) = result[10];
  v2 = result[20];
  if ((v2 & 0x200) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a2 + 24) = result[11];
  v2 = result[20];
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a2 + 28) = result[12];
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a2 + 30) = result[13];
  if ((v2 & 0x1000) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a2 + 31) = result[14];
  if ((v2 & 0x2000) == 0)
  {
LABEL_15:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a2 + 32) = result[15];
  if ((v2 & 0x4000) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000) == 0)
    {
      return result;
    }

LABEL_37:
    *(a2 + 40) = result[17];
    return result;
  }

LABEL_34:
  v4 = result[16] - 2;
  if (v4 >= 5)
  {
    v4 = -1;
  }

  *(a2 + 36) = v4;
  if ((v2 & 0x8000) != 0)
  {
    goto LABEL_37;
  }

  return result;
}

void sub_2453B2FF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 8) - 1;
    if (v5 > 7)
    {
      v6 = -2;
    }

    else
    {
      v6 = dword_2454883A0[v5];
    }

    *a2 = v6;
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  v4 = *(a1 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_16:
  v7 = *(a1 + 16);
  if (!v7)
  {
    sub_2453EB7EC();
    v7 = *(qword_2813CEF60 + 16);
  }

  v8 = v7[6];
  if (v8)
  {
    v11 = v7[2] - 2;
    if (v11 >= 4)
    {
      v11 = -1;
    }

    *(a2 + 8) = v11;
    if ((v8 & 2) == 0)
    {
LABEL_20:
      if ((v8 & 4) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_20;
  }

  v12 = v7[3] - 2;
  if (v12 >= 5)
  {
    v12 = -1;
  }

  *(a2 + 12) = v12;
  if ((v8 & 4) != 0)
  {
LABEL_21:
    *(a2 + 16) = v7[4];
  }

LABEL_22:
  v4 = *(a1 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_23:
  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_2453EB7EC();
    v9 = *(qword_2813CEF60 + 24);
  }

  v10 = *(v9 + 40);
  if (v10)
  {
    *(a2 + 20) = *(v9 + 8);
    v10 = *(v9 + 40);
    if ((v10 & 2) == 0)
    {
LABEL_27:
      if ((v10 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_27;
  }

  *(a2 + 24) = *(v9 + 12);
  if ((v10 & 4) == 0)
  {
LABEL_28:
    if ((v10 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a2 + 26) = *(v9 + 16);
  if ((v10 & 8) == 0)
  {
LABEL_29:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_30;
    }

LABEL_49:
    *(a2 + 32) = *(v9 + 32);
    if ((*(v9 + 40) & 0x20) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_42:
  v13 = *(v9 + 20);
  if (v13 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v13 == 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  *(a2 + 28) = v15;
  if ((v10 & 0x10) != 0)
  {
    goto LABEL_49;
  }

LABEL_30:
  if ((v10 & 0x20) == 0)
  {
    goto LABEL_56;
  }

LABEL_50:
  v16 = *(v9 + 24);
  if (!v16)
  {
    sub_2453EB7EC();
    v16 = *(qword_2813CEF90 + 24);
  }

  v17 = v16[6];
  if (v17)
  {
    *(a2 + 36) = v16[2];
    v17 = v16[6];
    if ((v17 & 2) == 0)
    {
LABEL_54:
      if ((v17 & 4) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }
  }

  else if ((v17 & 2) == 0)
  {
    goto LABEL_54;
  }

  *(a2 + 40) = v16[3];
  if ((v17 & 4) != 0)
  {
LABEL_55:
    *(a2 + 42) = v16[4];
  }

LABEL_56:
  v4 = *(a1 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_67;
  }

LABEL_57:
  v18 = *(a1 + 32);
  if (!v18)
  {
    sub_2453EB7EC();
    v18 = *(qword_2813CEF60 + 32);
  }

  v19 = v18[9];
  if (v19)
  {
    v24 = v18[2] - 1;
    if (v24 >= 5)
    {
      v24 = 4;
    }

    *(a2 + 44) = v24;
    if ((v19 & 2) == 0)
    {
LABEL_61:
      if ((v19 & 4) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_76;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_61;
  }

  *(a2 + 48) = v18[3];
  v19 = v18[9];
  if ((v19 & 4) == 0)
  {
LABEL_62:
    if ((v19 & 8) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a2 + 52) = v18[4];
  if ((v19 & 8) == 0)
  {
LABEL_63:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a2 + 54) = v18[5];
  if ((v19 & 0x10) == 0)
  {
LABEL_64:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_78:
  v25 = v18[6];
  if (v25 == 2)
  {
    v26 = 0;
  }

  else
  {
    v26 = -1;
  }

  if (v25 == 3)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  *(a2 + 56) = v27;
  if ((v19 & 0x20) != 0)
  {
LABEL_65:
    *(a2 + 60) = v18[7];
  }

LABEL_66:
  v4 = *(a1 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_200;
  }

LABEL_67:
  v20 = *(a1 + 40);
  if (!v20)
  {
    sub_2453EB7EC();
    v20 = *(qword_2813CEF60 + 40);
  }

  v21 = *(v20 + 24);
  if (v21)
  {
    v22 = *(v20 + 16) - 1;
    if (v22 > 7)
    {
      v23 = 255;
    }

    else
    {
      v23 = dword_2454883C0[v22];
    }

    *(a2 + 64) = v23;
  }

  if ((v21 & 2) != 0)
  {
    v28 = *(v20 + 8);
    if (!v28)
    {
      sub_2453EB7EC();
      v28 = *(qword_2813CEFB0 + 8);
    }

    v29 = *(v28 + 72);
    if (v29)
    {
      v30 = *(v28 + 8);
      if (!v30)
      {
        sub_2453EB7EC();
        v30 = *(qword_2813CEED0 + 8);
      }

      if (*(v30 + 24))
      {
        v31 = *(v30 + 8);
        if (!v31)
        {
          sub_2453EB7EC();
          v31 = *(qword_2813CEF10 + 8);
        }

        v32 = v31[5];
        if (v32)
        {
          *(a2 + 68) = v31[2];
          v32 = v31[5];
        }

        if ((v32 & 2) != 0)
        {
          *(a2 + 72) = v31[3];
        }
      }

      if ((*(v30 + 24) & 2) != 0)
      {
        *(a2 + 76) = *(v30 + 16);
      }

      v29 = *(v28 + 72);
      if ((v29 & 2) == 0)
      {
LABEL_96:
        if ((v29 & 4) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_127;
      }
    }

    else if ((v29 & 2) == 0)
    {
      goto LABEL_96;
    }

    v33 = *(v28 + 16);
    if (!v33)
    {
      sub_2453EB7EC();
      v33 = *(qword_2813CEED0 + 16);
    }

    if (*(v33 + 36))
    {
      v34 = *(v33 + 8);
      if (!v34)
      {
        sub_2453EB7EC();
        v34 = *(qword_2813CEF08 + 8);
      }

      v35 = v34[5];
      if (v35)
      {
        *(a2 + 80) = v34[2];
        v35 = v34[5];
      }

      if ((v35 & 2) != 0)
      {
        *(a2 + 84) = v34[3];
      }
    }

    v36 = *(v33 + 36);
    if ((v36 & 2) != 0)
    {
      *(a2 + 88) = *(v33 + 16);
      if ((v36 & 4) == 0)
      {
LABEL_123:
        if ((v36 & 8) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_247;
      }
    }

    else if ((v36 & 4) == 0)
    {
      goto LABEL_123;
    }

    *(a2 + 89) = *(v33 + 20);
    if ((v36 & 8) == 0)
    {
LABEL_124:
      if ((v36 & 0x10) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }

LABEL_247:
    *(a2 + 90) = *(v33 + 24);
    if ((v36 & 0x10) == 0)
    {
LABEL_126:
      v29 = *(v28 + 72);
      if ((v29 & 4) == 0)
      {
LABEL_97:
        if ((v29 & 8) == 0)
        {
          goto LABEL_98;
        }

        goto LABEL_144;
      }

LABEL_127:
      v37 = *(v28 + 24);
      if (!v37)
      {
        sub_2453EB7EC();
        v37 = *(qword_2813CEED0 + 24);
      }

      if (*(v37 + 44))
      {
        v38 = *(v37 + 8);
        if (!v38)
        {
          sub_2453EB7EC();
          v38 = *(qword_2813CEEE0 + 8);
        }

        v39 = v38[5];
        if (v39)
        {
          *(a2 + 92) = v38[2];
          v39 = v38[5];
        }

        if ((v39 & 2) != 0)
        {
          *(a2 + 96) = v38[3];
        }
      }

      v40 = *(v37 + 44);
      if ((v40 & 2) != 0)
      {
        *(a2 + 100) = *(v37 + 16);
        if ((v40 & 4) == 0)
        {
LABEL_138:
          if ((v40 & 8) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_251;
        }
      }

      else if ((v40 & 4) == 0)
      {
        goto LABEL_138;
      }

      *(a2 + 102) = *(v37 + 20);
      if ((v40 & 8) == 0)
      {
LABEL_139:
        if ((v40 & 0x10) == 0)
        {
          goto LABEL_140;
        }

        goto LABEL_252;
      }

LABEL_251:
      *(a2 + 103) = *(v37 + 24);
      if ((v40 & 0x10) == 0)
      {
LABEL_140:
        if ((v40 & 0x20) == 0)
        {
          goto LABEL_141;
        }

        goto LABEL_253;
      }

LABEL_252:
      *(a2 + 104) = *(v37 + 28);
      if ((v40 & 0x20) == 0)
      {
LABEL_141:
        if ((v40 & 0x40) == 0)
        {
          goto LABEL_143;
        }

        goto LABEL_142;
      }

LABEL_253:
      *(a2 + 105) = *(v37 + 32);
      if ((v40 & 0x40) == 0)
      {
LABEL_143:
        v29 = *(v28 + 72);
        if ((v29 & 8) == 0)
        {
LABEL_98:
          if ((v29 & 0x10) == 0)
          {
            goto LABEL_166;
          }

          goto LABEL_160;
        }

LABEL_144:
        v41 = *(v28 + 32);
        if (!v41)
        {
          sub_2453EB7EC();
          v41 = *(qword_2813CEED0 + 32);
        }

        if (*(v41 + 40))
        {
          v42 = *(v41 + 8);
          if (!v42)
          {
            sub_2453EB7EC();
            v42 = *(qword_2813CEF98 + 8);
          }

          v43 = v42[5];
          if (v43)
          {
            *(a2 + 108) = v42[2];
            v43 = v42[5];
          }

          if ((v43 & 2) != 0)
          {
            *(a2 + 112) = v42[3];
          }
        }

        v44 = *(v41 + 40);
        if ((v44 & 2) != 0)
        {
          *(a2 + 116) = *(v41 + 16);
          if ((v44 & 4) == 0)
          {
LABEL_155:
            if ((v44 & 8) == 0)
            {
              goto LABEL_156;
            }

            goto LABEL_257;
          }
        }

        else if ((v44 & 4) == 0)
        {
          goto LABEL_155;
        }

        *(a2 + 118) = *(v41 + 20);
        if ((v44 & 8) == 0)
        {
LABEL_156:
          if ((v44 & 0x10) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_258;
        }

LABEL_257:
        *(a2 + 119) = *(v41 + 24);
        if ((v44 & 0x10) == 0)
        {
LABEL_157:
          if ((v44 & 0x20) == 0)
          {
            goto LABEL_159;
          }

          goto LABEL_158;
        }

LABEL_258:
        *(a2 + 120) = *(v41 + 28);
        if ((v44 & 0x20) == 0)
        {
LABEL_159:
          if ((*(v28 + 72) & 0x10) == 0)
          {
LABEL_166:
            v47 = *(v28 + 72);
            if ((v47 & 0x20) != 0)
            {
              v48 = *(v28 + 48);
              if (!v48)
              {
                sub_2453EB7EC();
                v48 = *(qword_2813CEED0 + 48);
              }

              if (*(v48 + 24))
              {
                v49 = *(v48 + 8);
                if (!v49)
                {
                  sub_2453EB7EC();
                  v49 = *(qword_2813CEF78 + 8);
                }

                v50 = v49[5];
                if (v50)
                {
                  *(a2 + 132) = v49[2];
                  v50 = v49[5];
                }

                if ((v50 & 2) != 0)
                {
                  *(a2 + 136) = v49[3];
                }
              }

              if ((*(v48 + 24) & 2) != 0)
              {
                *(a2 + 140) = *(v48 + 16);
              }

              v47 = *(v28 + 72);
            }

            if ((v47 & 0x40) != 0)
            {
              v51 = *(v28 + 56);
              if (!v51)
              {
                sub_2453EB7EC();
                v51 = *(qword_2813CEED0 + 56);
              }

              if (*(v51 + 40))
              {
                *(a2 + 144) = *(v51 + 32);
              }

              v52 = *(v51 + 16);
              if (v52 >= 1)
              {
                v53 = 0;
                if (v52 >= 0xF)
                {
                  v54 = 15;
                }

                else
                {
                  v54 = v52;
                }

                v55 = (a2 + 152);
                do
                {
                  if (v53 >= *(v51 + 16))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v72);
                  }

                  v56 = *(*(v51 + 8) + 8 * v53);
                  v57 = v56[5];
                  if (v57)
                  {
                    *(v55 - 1) = v56[2];
                    v57 = v56[5];
                  }

                  if ((v57 & 2) != 0)
                  {
                    *v55 = v56[3];
                  }

                  ++v53;
                  v55 += 2;
                }

                while (v54 != v53);
              }

              v47 = *(v28 + 72);
            }

            if ((v47 & 0x80) != 0)
            {
              *(a2 + 268) = *(v28 + 64);
            }

            goto LABEL_199;
          }

LABEL_160:
          v45 = *(v28 + 40);
          if (!v45)
          {
            sub_2453EB7EC();
            v45 = *(qword_2813CEED0 + 40);
          }

          v46 = v45[5];
          if (v46)
          {
            *(a2 + 124) = v45[2];
            v46 = v45[5];
          }

          if ((v46 & 2) != 0)
          {
            *(a2 + 128) = v45[3];
          }

          goto LABEL_166;
        }

LABEL_158:
        *(a2 + 121) = *(v41 + 32);
        goto LABEL_159;
      }

LABEL_142:
      *(a2 + 106) = *(v37 + 36);
      goto LABEL_143;
    }

LABEL_125:
    *(a2 + 91) = *(v33 + 28);
    goto LABEL_126;
  }

LABEL_199:
  v4 = *(a1 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_200:
  v58 = *(a1 + 48);
  if (!v58)
  {
    sub_2453EB7EC();
    v58 = *(qword_2813CEF60 + 48);
  }

  v59 = *(v58 + 24);
  if (v59)
  {
    v60 = *(v58 + 16) - 1;
    if (v60 > 4)
    {
      v61 = 255;
    }

    else
    {
      v61 = dword_2454883E0[v60];
    }

    *(a2 + 272) = v61;
  }

  if ((v59 & 2) == 0)
  {
    goto LABEL_243;
  }

  v62 = *(v58 + 8);
  if (!v62)
  {
    sub_2453EB7EC();
    v62 = *(qword_2813CEF38 + 8);
  }

  if (*(v62 + 44))
  {
    v63 = *(v62 + 8);
    if (!v63)
    {
      sub_2453EB7EC();
      v63 = *(qword_2813CEF88 + 8);
    }

    v64 = v63[5];
    if (v64)
    {
      *(a2 + 276) = v63[2];
    }

    if ((v64 & 2) != 0)
    {
      *(a2 + 278) = v63[3];
    }
  }

  v65 = *(v62 + 44);
  if ((v65 & 2) != 0)
  {
    v66 = *(v62 + 16);
    if (!v66)
    {
      sub_2453EB7EC();
      v66 = *(qword_2813CEF88 + 16);
    }

    v67 = v66[7];
    if (v67)
    {
      *(a2 + 280) = v66[2];
      if ((v67 & 2) == 0)
      {
LABEL_222:
        if ((v67 & 4) == 0)
        {
          goto LABEL_223;
        }

        goto LABEL_262;
      }
    }

    else if ((v67 & 2) == 0)
    {
      goto LABEL_222;
    }

    *(a2 + 282) = v66[3];
    if ((v67 & 4) == 0)
    {
LABEL_223:
      if ((v67 & 8) == 0)
      {
LABEL_225:
        v65 = *(v62 + 44);
        goto LABEL_226;
      }

LABEL_224:
      *(a2 + 285) = v66[5];
      goto LABEL_225;
    }

LABEL_262:
    *(a2 + 284) = v66[4];
    if ((v67 & 8) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_224;
  }

LABEL_226:
  if ((v65 & 4) == 0)
  {
    goto LABEL_233;
  }

  v68 = *(v62 + 24);
  if (!v68)
  {
    sub_2453EB7EC();
    v68 = *(qword_2813CEF88 + 24);
  }

  v69 = v68[6];
  if (v69)
  {
    *(a2 + 286) = v68[2];
    if ((v69 & 2) == 0)
    {
LABEL_231:
      if ((v69 & 4) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_232;
    }
  }

  else if ((v69 & 2) == 0)
  {
    goto LABEL_231;
  }

  *(a2 + 288) = v68[3];
  if ((v69 & 4) != 0)
  {
LABEL_232:
    *(a2 + 290) = v68[4];
  }

LABEL_233:
  if ((*(v62 + 44) & 8) == 0)
  {
    goto LABEL_243;
  }

  v70 = *(v62 + 32);
  if (!v70)
  {
    sub_2453EB7EC();
    v70 = *(qword_2813CEF88 + 32);
  }

  v71 = v70[9];
  if (v71)
  {
    *(a2 + 292) = v70[2];
    if ((v71 & 2) == 0)
    {
LABEL_238:
      if ((v71 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_269;
    }
  }

  else if ((v71 & 2) == 0)
  {
    goto LABEL_238;
  }

  *(a2 + 294) = v70[3];
  if ((v71 & 4) == 0)
  {
LABEL_239:
    if ((v71 & 8) == 0)
    {
      goto LABEL_240;
    }

LABEL_270:
    *(a2 + 297) = v70[5];
    if ((v71 & 0x10) == 0)
    {
LABEL_241:
      if ((v71 & 0x20) == 0)
      {
        goto LABEL_243;
      }

      goto LABEL_242;
    }

    goto LABEL_271;
  }

LABEL_269:
  *(a2 + 296) = v70[4];
  if ((v71 & 8) != 0)
  {
    goto LABEL_270;
  }

LABEL_240:
  if ((v71 & 0x10) == 0)
  {
    goto LABEL_241;
  }

LABEL_271:
  *(a2 + 298) = v70[6];
  if ((v71 & 0x20) != 0)
  {
LABEL_242:
    *(a2 + 299) = v70[7];
  }

LABEL_243:
  if ((*(a1 + 64) & 0x80) != 0)
  {
LABEL_9:
    *(a2 + 300) = *(a1 + 56);
  }
}

void sub_2453B392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2453B3944(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 68);
  if (v4)
  {
    *a2 = *(a1 + 8);
    v4 = *(a1 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_34:
      *(a2 + 6) = *(a1 + 16);
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 4) = *(a1 + 12);
  if ((v4 & 4) != 0)
  {
    goto LABEL_34;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    *(a2 + 7) = *(a1 + 20);
  }

LABEL_6:
  v5 = *(a1 + 32);
  if (v5 < 1)
  {
    goto LABEL_26;
  }

  v6 = 0;
  if (v5 >= 0x10)
  {
    v7 = 16;
  }

  else
  {
    v7 = v5;
  }

  v8 = a2 + 10;
  do
  {
    if (v6 >= *(a1 + 32))
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
    }

    v9 = *(*(a1 + 24) + 8 * v6);
    v10 = v9[8];
    if (v10)
    {
      *(v8 - 2) = v9[2];
      if ((v10 & 2) == 0)
      {
LABEL_15:
        if ((v10 & 4) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_15;
    }

    *v8 = v9[3];
    if ((v10 & 4) == 0)
    {
LABEL_16:
      if ((v10 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v8 + 2) = v9[4];
    v10 = v9[8];
    if ((v10 & 8) == 0)
    {
LABEL_17:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      *(v8 + 10) = v9[6];
      goto LABEL_19;
    }

LABEL_24:
    *(v8 + 6) = v9[5];
    if ((v9[8] & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_19:
    ++v6;
    v8 += 16;
  }

  while (v7 != v6);
  v4 = *(a1 + 68);
LABEL_26:
  if ((v4 & 0x20) != 0)
  {
    *(a2 + 264) = *(a1 + 48);
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_37;
    }

LABEL_28:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_40:
    v12 = *(a1 + 56) - 2;
    if (v12 >= 5)
    {
      v12 = -1;
    }

    *(a2 + 272) = v12;
    if ((v4 & 0x100) != 0)
    {
LABEL_30:
      *(a2 + 276) = *(a1 + 60);
    }
  }

  else
  {
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_28;
    }

LABEL_37:
    v11 = *(a1 + 52) - 2;
    if (v11 >= 4)
    {
      v11 = -1;
    }

    *(a2 + 268) = v11;
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_40;
    }

LABEL_29:
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_30;
    }
  }
}