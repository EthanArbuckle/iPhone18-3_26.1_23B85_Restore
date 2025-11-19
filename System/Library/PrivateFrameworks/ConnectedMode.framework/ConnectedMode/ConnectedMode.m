void cmf_adapter_listener_create(const void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v2 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F41210(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v15 = 0;
  if (a1)
  {
    sub_243F3E048(__p, "IOProviderClass", "VTLAdapter");
    sub_243F3C3B0(a1, &cf);
    sub_243F3C46C(v17, "IOPropertyMatch", &cf);
    v14[0] = __p;
    v14[1] = 2;
    v10 = 0;
    v15 = sub_243F3D0D8(v14);
    do
    {
      v11 = *&v17[v10 * 8 + 8];
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = __p[v10 + 2];
      if (v12)
      {
        CFRelease(v12);
      }

      v10 -= 2;
    }

    while (v10 != -4);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    sub_243F3C5E4(__p, "VTLAdapter");
    sub_243F3C528(__p, v14);
    v15 = v14[0];
    v14[0] = 0;
    if ((v17[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_243F3C188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, dispatch_object_t object, char a12, uint64_t a13, uint64_t a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    if (a27 < 0)
    {
      operator delete(__p);
    }

    sub_243F3C4B0(&a15);
    if (a2 == 3)
    {
      v31 = __cxa_begin_catch(exception_object);
      if (*(v28 + 2856) != -1)
      {
        sub_243F41288();
      }

      if (os_log_type_enabled(*(v27 + 2848), OS_LOG_TYPE_ERROR))
      {
        sub_243F413D4();
      }

      v32 = v31[4];
      __cxa_end_catch();
    }

    else
    {
      v33 = __cxa_begin_catch(exception_object);
      v34 = *(v28 + 2856);
      if (a2 == 2)
      {
        v35 = v33;
        if (v34 != -1)
        {
          sub_243F41288();
        }

        if (os_log_type_enabled(*(v27 + 2848), OS_LOG_TYPE_ERROR))
        {
          sub_243F41328(v35);
        }
      }

      else
      {
        if (v34 != -1)
        {
          sub_243F41288();
        }

        v36 = *(v27 + 2848);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_243F412B0(v36, v37, v38, v39, v40, v41, v42, v43);
        }
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x243F3C140);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_243F3C3B0@<X0>(const void *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    CFRetain(result);
    *a2 = v3;
    v4 = CFGetTypeID(v3);
    result = CFDictionaryGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D53CF0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_243F3C440(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_243F3D550(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_243F3C46C(uint64_t a1, char *a2, const void **a3)
{
  sub_243F3E094(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

const void **sub_243F3C4B0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_243F3C4E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

const void *sub_243F3C528@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = IOServiceMatching(a1);
  *a2 = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D53CF0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_243F3C5BC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_243F3D550(v1);
  _Unwind_Resume(a1);
}

_BYTE *sub_243F3C5E4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_243F3D5EC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void cmf_session_listener_create(const void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v2 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F4147C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v15 = 0;
  if (a1)
  {
    sub_243F3E094(__p, "VTLInternalSession");
    __p[1] = *MEMORY[0x277CBED10];
    sub_243F3E914(&v17, "IOProviderClass", "VTLSessionService");
    sub_243F3C3B0(a1, &cf);
    sub_243F3C46C(v18, "IOPropertyMatch", &cf);
    v14[0] = __p;
    v14[1] = 3;
    v10 = 0;
    v15 = sub_243F3D0D8(v14);
    do
    {
      v11 = *&v18[v10 + 8];
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = *&v18[v10];
      if (v12)
      {
        CFRelease(v12);
      }

      v10 -= 16;
    }

    while (v10 != -48);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    sub_243F3C5E4(__p, "VTLSessionService");
    sub_243F3C528(__p, v14);
    v15 = v14[0];
    v14[0] = 0;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_243F3C94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, dispatch_object_t object, char a12, uint64_t a13, uint64_t a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    if (a27 < 0)
    {
      operator delete(__p);
    }

    sub_243F3C4B0(&a15);
    v31 = __cxa_begin_catch(exception_object);
    v32 = *(v28 + 2856);
    if (a2 == 2)
    {
      v33 = v31;
      if (v32 != -1)
      {
        sub_243F41288();
      }

      if (os_log_type_enabled(*(v27 + 2848), OS_LOG_TYPE_ERROR))
      {
        sub_243F4156C();
      }

      v34 = v33[4];
      __cxa_end_catch();
    }

    else
    {
      if (v32 != -1)
      {
        sub_243F41288();
      }

      v35 = *(v27 + 2848);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_243F414F4(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x243F3C904);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cmf_adapter_register_telemetry()
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v0 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F41614(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 3758097095;
}

uint64_t cmf_adapter_create_session(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v8 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F4168C(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  return (*(*a1 + 72))(a1, a2, a3, a4);
}

uint64_t cmf_adapter_copy_property()
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v0 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F41704(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 3758097095;
}

uint64_t cmf_session_set_dispatch_queue(uint64_t a1, uint64_t a2)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v4 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F4177C(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  return (*(*a1 + 80))(a1, a2);
}

uint64_t cmf_session_activate(uint64_t a1)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v2 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F417F4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*a1 + 88))(a1);
}

uint64_t cmf_session_cancel(uint64_t a1)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v2 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F4186C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*a1 + 96))(a1);
}

uint64_t cmf_session_destroy(uint64_t a1)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v2 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F418E4(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(*a1 + 72))(a1);
}

uint64_t cmf_session_create_tx_request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v10 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F4195C(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  return (*(*a1 + 104))(a1, 1, a2, a3, a4, a5);
}

uint64_t cmf_session_create_rx_request(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v10 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F419D4(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  return (*(*a1 + 104))(a1, 0, a2, a3, a4, a5);
}

uint64_t cmf_request_destroy(void *a1)
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v2 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F41A4C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return (*(**a1 + 120))(*a1, a1);
}

uint64_t cmf_request_cancel()
{
  if (qword_27EDBFB28 != -1)
  {
    sub_243F411FC();
  }

  v0 = qword_27EDBFB20;
  if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_DEBUG))
  {
    sub_243F41AC4(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 3758097095;
}

os_log_t sub_243F3D0A8()
{
  result = os_log_create("com.apple.AppleVTL", "framework");
  qword_27EDBFB20 = result;
  return result;
}

CFDictionaryRef sub_243F3D0D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  __p = 0;
  v31 = 0;
  v32 = 0;
  sub_243F3D38C(&__p, v2);
  values = 0;
  v28 = 0;
  v29 = 0;
  sub_243F3D38C(&values, v2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *a1;
    v5 = *a1 + 16 * v3;
    do
    {
      v6 = *v4;
      v7 = v31;
      if (v31 >= v32)
      {
        v9 = (v31 - __p) >> 3;
        if ((v9 + 1) >> 61)
        {
          sub_243F3D42C();
        }

        v10 = (v32 - __p) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v32 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          sub_243F3D4D4(&__p, v11);
        }

        v12 = (8 * v9);
        *v12 = v6;
        v8 = 8 * v9 + 8;
        v13 = v12 - (v31 - __p);
        memcpy(v13, __p, v31 - __p);
        v14 = __p;
        __p = v13;
        v31 = v8;
        v32 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v31 = v6;
        v8 = (v7 + 8);
      }

      v31 = v8;
      v15 = v4[1];
      v16 = v28;
      if (v28 >= v29)
      {
        v18 = v28 - values;
        if ((v18 + 1) >> 61)
        {
          sub_243F3D42C();
        }

        v19 = (v29 - values) >> 2;
        if (v19 <= v18 + 1)
        {
          v19 = v18 + 1;
        }

        if (v29 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          sub_243F3D4D4(&values, v20);
        }

        v21 = (8 * v18);
        *v21 = v15;
        v17 = 8 * v18 + 8;
        v22 = v21 - (v28 - values);
        memcpy(v22, values, v28 - values);
        v23 = values;
        values = v22;
        v28 = v17;
        v29 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v28 = v15;
        v17 = (v16 + 1);
      }

      v28 = v17;
      v4 += 2;
    }

    while (v4 != v5);
  }

  v24 = CFDictionaryCreate(0, __p, values, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D53CF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (values)
  {
    v28 = values;
    operator delete(values);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_243F3D334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void *sub_243F3D38C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_243F3D4D4(result, a2);
    }

    sub_243F3D42C();
  }

  return result;
}

void sub_243F3D444(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_243F3D4A0(exception, a1);
  __cxa_throw(exception, off_278E026C8, MEMORY[0x277D825F0]);
}

std::logic_error *sub_243F3D4A0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_243F3D4D4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_243F3D51C();
}

void sub_243F3D51C()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

const void **sub_243F3D550(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_243F3D584(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_243F3D5B8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_243F3D604(uint64_t a1, NSObject **a2, const __CFDictionary **a3, const char *a4, uint64_t a5)
{
  sub_243F3D7E0(a1);
  v10 = *a2;
  *(a1 + 8) = *a2;
  if (v10)
  {
    dispatch_retain(v10);
  }

  sub_243F3DCB0(a1 + 16, a5);
  *(a1 + 48) = 0;
  v11 = (a1 + 48);
  IONotificationPortSetDispatchQueue(*a1, *(a1 + 8));
  notification = 0;
  v12 = *a1;
  v13 = *a3;
  *a3 = 0;
  v14 = IOServiceAddMatchingNotification(v12, a4, v13, sub_243F3D8CC, a1, &notification);
  if (v14)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v20 = std::system_category();
    MEMORY[0x245D53D10](exception, v14, v20, "Error on IOServiceAddMatchingNotification");
    goto LABEL_13;
  }

  v15 = notification;
  v16 = *v11;
  *v11 = notification;
  if (v16)
  {
    IOObjectRelease(v16);
    v15 = *v11;
  }

  object = v15;
  if (v15)
  {
    v17 = IOObjectRetain(v15);
    if (v17)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v21 = std::system_category();
      MEMORY[0x245D53D10](exception, v17, v21, "Error on Retain");
LABEL_13:
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  sub_243F3D9D0(a1, &object);
  if (object)
  {
    IOObjectRelease(object);
  }

  return a1;
}

void sub_243F3D778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v12);
  sub_243F3D99C(v11);
  sub_243F3DFC8(v10 + 16);
  v14 = *(v10 + 8);
  if (v14)
  {
    dispatch_release(v14);
  }

  sub_243F3DC80(v10);
  _Unwind_Resume(a1);
}

IONotificationPortRef *sub_243F3D7E0(IONotificationPortRef *a1)
{
  mainPort = 0;
  v2 = MEMORY[0x245D53C30](*MEMORY[0x277D85F18], &mainPort);
  if (v2)
  {
    v5 = v2;
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = std::system_category();
    MEMORY[0x245D53D10](exception, v5, v7, "IOMainPort failed");
    v8 = MEMORY[0x277D82718];
    v9 = MEMORY[0x277D82650];
    goto LABEL_6;
  }

  v3 = IONotificationPortCreate(mainPort);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D53CF0](exception, "IONotificationPortCreate failed");
    v8 = MEMORY[0x277D82760];
    v9 = MEMORY[0x277D82600];
LABEL_6:
    __cxa_throw(exception, v8, v9);
  }

  return a1;
}

uint64_t sub_243F3D8CC(uint64_t result, io_object_t object)
{
  if (result && object)
  {
    v3 = result;
    v4 = IOObjectRetain(object);
    if (v4)
    {
      v5 = v4;
      exception = __cxa_allocate_exception(0x20uLL);
      v7 = std::system_category();
      MEMORY[0x245D53D10](exception, v5, v7, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    objecta = object;
    sub_243F3D9D0(v3, &objecta);
    result = objecta;
    if (objecta)
    {
      return IOObjectRelease(objecta);
    }
  }

  return result;
}

io_object_t *sub_243F3D99C(io_object_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    IOObjectRelease(v2);
  }

  return a1;
}

uint64_t sub_243F3D9D0(uint64_t a1, io_object_t *a2)
{
  v3 = *a2;
  v24 = v3;
  if (v3)
  {
    v4 = IOObjectRetain(v3);
    if (v4)
    {
      v14 = v4;
      exception = __cxa_allocate_exception(0x20uLL);
      v16 = std::system_category();
      MEMORY[0x245D53D10](exception, v14, v16, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    v25 = v3;
    v5 = IOObjectRetain(v3);
    if (v5)
    {
      v17 = v5;
      v18 = __cxa_allocate_exception(0x20uLL);
      v19 = std::system_category();
      MEMORY[0x245D53D10](v18, v17, v19, "Error on Retain");
      __cxa_throw(v18, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }

    v6 = v25;
  }

  else
  {
    v6 = 0;
    v25 = 0;
  }

  v7 = IOIteratorNext(v6);
  v26 = v7;
  if (v3)
  {
    IOObjectRelease(v3);
    v7 = v26;
  }

  v23 = 0;
  if (v7)
  {
    do
    {
      sub_243F3DE6C(&v20, &v25);
      sub_243F3DDD8(&v25);
      v22 = object;
      if (object)
      {
        v8 = IOObjectRetain(object);
        if (v8)
        {
          v11 = v8;
          v12 = __cxa_allocate_exception(0x20uLL);
          v13 = std::system_category();
          MEMORY[0x245D53D10](v12, v11, v13, "Error on Retain");
          __cxa_throw(v12, MEMORY[0x277D82718], MEMORY[0x277D82650]);
        }
      }

      v9 = *(a1 + 40);
      if (!v9)
      {
        sub_243F3DD8C();
      }

      (*(*v9 + 48))(v9, &v22);
      if (v22)
      {
        IOObjectRelease(v22);
      }

      if (object)
      {
        IOObjectRelease(object);
      }

      if (v20)
      {
        IOObjectRelease(v20);
      }
    }

    while (v26);
  }

  result = v25;
  if (v25)
  {
    return IOObjectRelease(v25);
  }

  return result;
}

void sub_243F3DBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, int a12, char a13, __int16 a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  sub_243F3D99C((v17 - 28));
  _Unwind_Resume(a1);
}

uint64_t sub_243F3DCB0(uint64_t a1, uint64_t a2)
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

io_object_t *sub_243F3DD48(io_object_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    IOObjectRelease(v2);
  }

  if (*a1)
  {
    IOObjectRelease(*a1);
  }

  return a1;
}

void sub_243F3DD8C()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t sub_243F3DDD8(io_iterator_t *a1)
{
  if (!a1[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_243F3DF94(exception, "io_services_iterator exceeding size");
    __cxa_throw(exception, off_278E026D0, MEMORY[0x277D825F8]);
  }

  v2 = IOIteratorNext(*a1);
  result = a1[1];
  a1[1] = v2;
  if (result)
  {
    return IOObjectRelease(result);
  }

  return result;
}

io_object_t *sub_243F3DE6C(io_object_t *a1, io_object_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    v5 = IOObjectRetain(v4);
    if (v5)
    {
      v9 = v5;
      exception = __cxa_allocate_exception(0x20uLL);
      v11 = std::system_category();
      MEMORY[0x245D53D10](exception, v9, v11, "Error on Retain");
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  v6 = a2[1];
  a1[1] = v6;
  if (v6)
  {
    v7 = IOObjectRetain(v6);
    if (v7)
    {
      v12 = __cxa_allocate_exception(0x20uLL);
      v13 = std::system_category();
      MEMORY[0x245D53D10](v12, v7, v13, "Error on Retain");
      __cxa_throw(v12, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  return a1;
}

void sub_243F3DF60(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_243F3D99C(v1);
  _Unwind_Resume(a1);
}

std::logic_error *sub_243F3DF94(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t sub_243F3DFC8(uint64_t a1)
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

CFStringRef *sub_243F3E048(CFStringRef *a1, char *a2, char *a3)
{
  v5 = sub_243F3E094(a1, a2);
  sub_243F3E094(v5 + 1, a3);
  return a1;
}

CFStringRef *sub_243F3E094(CFStringRef *a1, char *a2)
{
  sub_243F3C5E4(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D53CF0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_243F3E154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_243F3D5B8(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_243F3E200(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28576E398;
  a2[1] = v2;
  return result;
}

uint64_t sub_243F3E22C(uint64_t a1, io_service_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  theInterface = 0;
  theScore = 0;
  v4 = *MEMORY[0x277CBED08];
  v5 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0xBAu, 5u, 0x7Eu, 0xF9u, 0xA1u, 0xA3u, 0x41u, 0xEAu, 0x95u, 0x3Cu, 0x29u, 0xF0u, 0x20u, 0x3Au, 0x72u, 0x43u);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v7 = IOCreatePlugInInterfaceForService(v3, v5, v6, &theInterface, &theScore);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_243F3E5D8();
    MEMORY[0x245D53D10](exception, v7, &off_281B02EC0, "IOCreatePlugInInterfaceForService");
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v16 = 0;
  v8 = theInterface;
  QueryInterface = (*theInterface)->QueryInterface;
  v10 = CFUUIDGetConstantUUIDWithBytes(v4, 0x7Au, 0x9Cu, 0xCEu, 0x50u, 0x82u, 0xCBu, 0x48u, 0x85u, 0xAEu, 0xFBu, 0, 0x4Fu, 7u, 0x7Eu, 0x63u, 0xF9u);
  v11 = CFUUIDGetUUIDBytes(v10);
  v12 = (QueryInterface)(v8, *&v11.byte0, *&v11.byte8, &v16);
  if ((v12 & 0x80000000) != 0)
  {
    v15 = __cxa_allocate_exception(0x20uLL);
    sub_243F3E608();
    MEMORY[0x245D53D10](v15, v12, &off_281B02EC8, "QueryInterface");
    __cxa_throw(v15, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  result = (*(*(*(a1 + 8) + 8) + 16))();
  if (v3)
  {
    return IOObjectRelease(v3);
  }

  return result;
}

void sub_243F3E468(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  __cxa_free_exception(v12);
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    if (qword_27EDBFB28 != -1)
    {
      sub_243F41288();
    }

    if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_ERROR))
    {
      sub_243F41C60();
    }
  }

  else
  {
    v15 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v16 = v15;
      if (qword_27EDBFB28 != -1)
      {
        sub_243F41288();
      }

      if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_ERROR))
      {
        sub_243F41BB4(v16);
      }
    }

    else
    {
      if (qword_27EDBFB28 != -1)
      {
        sub_243F41288();
      }

      v17 = qword_27EDBFB20;
      if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_ERROR))
      {
        sub_243F41B3C(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }
  }

  __cxa_end_catch();
  if (!a12)
  {
    JUMPOUT(0x243F3E3B0);
  }

  JUMPOUT(0x243F3E3A8);
}

uint64_t sub_243F3E58C(uint64_t a1, uint64_t a2)
{
  if (sub_243F3E8C0(a2, &unk_28576E4C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_243F3E5D8()
{
  if ((atomic_load_explicit(&qword_27EDBFB30, memory_order_acquire) & 1) == 0)
  {
    sub_243F41D08();
  }
}

void sub_243F3E608()
{
  if ((atomic_load_explicit(qword_27EDBFB38, memory_order_acquire) & 1) == 0)
  {
    sub_243F41D70();
  }
}

void sub_243F3E63C(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x245D53D60);
}

void sub_243F3E6BC(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x245D53D60);
}

_BYTE *sub_243F3E700@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > -2147483642)
  {
    if (a1 > -2147418114)
    {
      switch(a1)
      {
        case -2147418113:
          v3 = "E_UNEXPECTED";
          return sub_243F3C5E4(a2, v3);
        case 0:
          v3 = "S_OK";
          return sub_243F3C5E4(a2, v3);
        case 1:
          v3 = "S_FALSE";
          return sub_243F3C5E4(a2, v3);
      }
    }

    else
    {
      switch(a1)
      {
        case -2147483641:
          v3 = "E_ABORT";
          return sub_243F3C5E4(a2, v3);
        case -2147483640:
          v3 = "E_FAIL";
          return sub_243F3C5E4(a2, v3);
        case -2147483639:
          v3 = "E_ACCESSDENIED";
          return sub_243F3C5E4(a2, v3);
      }
    }

    goto LABEL_27;
  }

  if (a1 <= -2147483645)
  {
    switch(a1)
    {
      case -2147483647:
        v3 = "E_NOTIMPL";
        return sub_243F3C5E4(a2, v3);
      case -2147483646:
        v3 = "E_OUTOFMEMORY";
        return sub_243F3C5E4(a2, v3);
      case -2147483645:
        v3 = "E_INVALIDARG";
        return sub_243F3C5E4(a2, v3);
    }

LABEL_27:
    v3 = byte_27EDBF6E0;
    snprintf(byte_27EDBF6E0, 0x400uLL, "code:%#x facility:%#x severity:%#x", a1, HIWORD(a1) & 0x1FFF, a1 >> 31);
    return sub_243F3C5E4(a2, v3);
  }

  if (a1 == -2147483644)
  {
    v3 = "E_NOINTERFACE";
  }

  else if (a1 == -2147483643)
  {
    v3 = "E_POINTER";
  }

  else
  {
    v3 = "E_HANDLE";
  }

  return sub_243F3C5E4(a2, v3);
}

BOOL sub_243F3E8C0(uint64_t a1, uint64_t a2)
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

CFStringRef *sub_243F3E914(CFStringRef *a1, char *a2, char *a3)
{
  v5 = sub_243F3E094(a1, a2);
  sub_243F3E094(v5 + 1, a3);
  return a1;
}

uint64_t sub_243F3E9D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28576E4E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_243F3E9FC(uint64_t a1, io_service_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  theInterface = 0;
  theScore = 0;
  v4 = *MEMORY[0x277CBED08];
  v5 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0x9Cu, 0x65u, 0x8Au, 0x73u, 0x1Cu, 0xACu, 0x46u, 0x25u, 0xB6u, 0x7Bu, 0xE1u, 0x1Fu, 0xFEu, 0x7Du, 0x86u, 8u);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v7 = IOCreatePlugInInterfaceForService(v3, v5, v6, &theInterface, &theScore);
  if (v7)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_243F3E5D8();
    MEMORY[0x245D53D10](exception, v7, &off_281B02EC0, "IOCreatePlugInInterfaceForService");
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  v16 = 0;
  v8 = theInterface;
  QueryInterface = (*theInterface)->QueryInterface;
  v10 = CFUUIDGetConstantUUIDWithBytes(v4, 0x3Au, 0x65u, 0xDEu, 0xFCu, 0xB0u, 0xB9u, 0x41u, 0x9Au, 0xBFu, 0xB1u, 0x18u, 0x36u, 0xE6u, 0x48u, 9u, 4u);
  v11 = CFUUIDGetUUIDBytes(v10);
  v12 = (QueryInterface)(v8, *&v11.byte0, *&v11.byte8, &v16);
  if ((v12 & 0x80000000) != 0)
  {
    v15 = __cxa_allocate_exception(0x20uLL);
    sub_243F3E608();
    MEMORY[0x245D53D10](v15, v12, &off_281B02EC8, "QueryInterface");
    __cxa_throw(v15, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  result = (*(*(*(a1 + 8) + 8) + 16))();
  if (v3)
  {
    return IOObjectRelease(v3);
  }

  return result;
}

void sub_243F3EC38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  __cxa_free_exception(v12);
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (qword_27EDBFB28 != -1)
    {
      sub_243F41288();
    }

    if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_ERROR))
    {
      sub_243F41C60();
    }
  }

  else
  {
    if (qword_27EDBFB28 != -1)
    {
      sub_243F41288();
    }

    v15 = qword_27EDBFB20;
    if (os_log_type_enabled(qword_27EDBFB20, OS_LOG_TYPE_ERROR))
    {
      sub_243F41B3C(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  __cxa_end_catch();
  if (!a12)
  {
    JUMPOUT(0x243F3EB80);
  }

  JUMPOUT(0x243F3EB78);
}

uint64_t sub_243F3ED0C(uint64_t a1, uint64_t a2)
{
  if (sub_243F3E8C0(a2, &unk_28576E548))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_243F3ED88(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *sub_243F3EDA4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v3 = *result;
  return result;
}

void sub_243F3EDB4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t AdapterListener.__allocating_init(properties:queue:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  AdapterListener.init(properties:queue:_:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AdapterListener.init(properties:queue:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  if (result)
  {
    v7 = sub_243F41DD8();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    aBlock[4] = sub_243F3F1BC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_243F3F278;
    aBlock[3] = &unk_28576E580;
    _Block_copy(aBlock);

    swift_beginAccess();
    cmf_adapter_listener_create(v7);
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_243F3F184()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_243F3F1BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + 16);
    v4 = *(v2 + 24);
    type metadata accessor for Adapter();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v7 = 0;
    v5(&v7, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t Adapter.__allocating_init(adapter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_243F3F280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243F3F298(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_243F3F2E0()
{
  result = qword_27EDBFAF8;
  if (!qword_27EDBFAF8)
  {
    sub_243F3F344(&qword_27EDBFAF0, &qword_243F425D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFAF8);
  }

  return result;
}

uint64_t sub_243F3F344(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t _s13ConnectedMode15AdapterListenerC12NotificationO9hashValueSivg_0()
{
  v1 = *v0;
  sub_243F41E48();
  MEMORY[0x245D53B70](v1);
  return sub_243F41E68();
}

uint64_t sub_243F3F3EC()
{
  v1 = *v0;
  sub_243F41E48();
  MEMORY[0x245D53B70](v1);
  return sub_243F41E68();
}

void SessionListener.init(properties:queue:cb:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  if (a1)
  {
    v8 = sub_243F41DD8();
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  aBlock[4] = sub_243F3F888;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F3F798;
  aBlock[3] = &unk_28576E5D0;
  _Block_copy(aBlock);
  v10 = a2;

  swift_beginAccess();
  cmf_session_listener_create(v8);
}

uint64_t Session.__allocating_init(session:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_243F3F7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_243F3F810()
{
  debug_description = cmf_adapter_get_debug_description(*(v0 + 16));

  return MEMORY[0x2821FBE78](debug_description);
}

uint64_t sub_243F3F848()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_243F3F888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = v2[2];
    type metadata accessor for Session();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D84F90];
    *(v7 + 16) = a2;
    *(v7 + 24) = v8;
    cmf_session_set_dispatch_queue(a2, v6);
    v9 = 0;
    v5(&v9, v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_243F3F928(uint64_t a1, void *a2, void *a3)
{
  v6 = *(v3 + 16);
  v7 = MEMORY[0x277D837D0];
  v8 = sub_243F41DD8();
  if (a2)
  {
    a2 = sub_243F41DD8();
  }

  if (a3)
  {
    a3 = sub_243F41DD8();
  }

  session = cmf_adapter_create_session(v6, v8, a2, a3);

  if (session)
  {
    sub_243F3F298(&qword_27EDBFAE0, &qword_243F425C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_243F425A0;
    *(v10 + 56) = v7;
    *(v10 + 32) = 0xD000000000000022;
    *(v10 + 40) = 0x8000000243F43250;
    sub_243F3F298(&qword_27EDBFAE8, &qword_243F425C8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243F425A0;
    v12 = mach_error_string(session);
    if (v12)
    {
      v13 = v12;
      *(v11 + 56) = sub_243F3F298(&qword_27EDBFAF0, &qword_243F425D0);
      *(v11 + 64) = sub_243F3F2E0();
      v14 = MEMORY[0x277D849A8];
      *(v11 + 32) = v13;
      v15 = MEMORY[0x277D84A20];
      *(v11 + 96) = v14;
      *(v11 + 104) = v15;
      *(v11 + 72) = session;
      v16 = sub_243F41DE8();
      *(v10 + 88) = v7;
      *(v10 + 64) = v16;
      *(v10 + 72) = v17;
      sub_243F41E38();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_243F3FB48()
{
  debug_description = cmf_adapter_get_debug_description(*(*v0 + 16));

  return MEMORY[0x2821FBE78](debug_description);
}

uint64_t sub_243F3FB78()
{
  debug_description = cmf_session_get_debug_description(*(v0 + 16));

  return MEMORY[0x2821FBE78](debug_description);
}

uint64_t Session.init(session:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t Session.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t Session.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_243F3FC10()
{
  result = cmf_session_activate(*(v0 + 16));
  if (result)
  {
    v2 = result;
    sub_243F3F298(&qword_27EDBFAE0, &qword_243F425C0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_243F425A0;
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0xD00000000000001CLL;
    *(v3 + 40) = 0x8000000243F43280;
    sub_243F3F298(&qword_27EDBFAE8, &qword_243F425C8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_243F425A0;
    result = mach_error_string(v2);
    if (result)
    {
      v6 = result;
      *(v5 + 56) = sub_243F3F298(&qword_27EDBFAF0, &qword_243F425D0);
      *(v5 + 64) = sub_243F3F2E0();
      v7 = MEMORY[0x277D849A8];
      *(v5 + 32) = v6;
      v8 = MEMORY[0x277D84A20];
      *(v5 + 96) = v7;
      *(v5 + 104) = v8;
      *(v5 + 72) = v2;
      v9 = sub_243F41DE8();
      *(v3 + 88) = v4;
      *(v3 + 64) = v9;
      *(v3 + 72) = v10;
      sub_243F41E38();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t RequestRX.__allocating_init(session:iovec:cb:)(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RequestRX.init(session:iovec:cb:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_243F3FE80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v5;
  a4();
  v11 = swift_allocObject();

  a5(v7, a1, a2, a3);
  swift_beginAccess();
  v12 = swift_retain_n();
  MEMORY[0x245D53B20](v12);
  if (*((*(v7 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v7 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((*(v7 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_243F41E18();
  }

  sub_243F41E28();
  swift_endAccess();

  return v11;
}

uint64_t RequestTX.__allocating_init(session:iovec:cb:)(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RequestTX.init(session:iovec:cb:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_243F40004()
{
  debug_description = cmf_session_get_debug_description(*(*v0 + 16));

  return MEMORY[0x2821FBE78](debug_description);
}

uint64_t Request.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t Request.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_243F4008C()
{
  sub_243F3F298(&qword_27EDBFAE0, &qword_243F425C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_243F425B0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x8000000243F432A0;
  sub_243F41E38();
}

void *sub_243F40128()
{
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = cmf_request_submit(result);
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_243F3F298(&qword_27EDBFAE0, &qword_243F425C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_243F425A0;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD00000000000001ALL;
  *(v3 + 40) = 0x8000000243F432C0;
  sub_243F3F298(&qword_27EDBFAE8, &qword_243F425C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_243F425A0;
  result = mach_error_string(v2);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  *(v5 + 56) = sub_243F3F298(&qword_27EDBFAF0, &qword_243F425D0);
  *(v5 + 64) = sub_243F3F2E0();
  v7 = MEMORY[0x277D849A8];
  *(v5 + 32) = v6;
  v8 = MEMORY[0x277D84A20];
  *(v5 + 96) = v7;
  *(v5 + 104) = v8;
  *(v5 + 72) = v2;
  v9 = sub_243F41DE8();
  *(v3 + 88) = v4;
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  sub_243F41E38();
}

char *RequestTX.init(session:iovec:cb:)(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = 0;
  v4[3] = a1;
  v24[0] = 0;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(*a2 + 2);
  aBlock[4] = sub_243F411AC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F405A4;
  aBlock[3] = &unk_28576E620;
  v11 = _Block_copy(aBlock);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_243F40998(0, *(v9 + 2), 0, v9);
  }

  *a2 = v9;
  tx_request = cmf_session_create_tx_request(v8, v10, (v9 + 32), v11, v24);
  _Block_release(v11);
  if (!tx_request)
  {
    goto LABEL_6;
  }

  sub_243F3F298(&qword_27EDBFAE0, &qword_243F425C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_243F425A0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 32) = 0xD000000000000025;
  *(v13 + 40) = 0x8000000243F432F0;
  sub_243F3F298(&qword_27EDBFAE8, &qword_243F425C8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_243F425A0;
  result = mach_error_string(tx_request);
  if (result)
  {
    v17 = result;
    *(v15 + 56) = sub_243F3F298(&qword_27EDBFAF0, &qword_243F425D0);
    *(v15 + 64) = sub_243F3F2E0();
    v18 = MEMORY[0x277D849A8];
    *(v15 + 32) = v17;
    v19 = MEMORY[0x277D84A20];
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    *(v15 + 72) = tx_request;
    v20 = sub_243F41DE8();
    *(v13 + 88) = v14;
    *(v13 + 64) = v20;
    *(v13 + 72) = v21;
    sub_243F41E38();

LABEL_6:

    v4[2] = v24[0];
    v22 = *MEMORY[0x277D85DE8];
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_243F405A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

char *RequestRX.init(session:iovec:cb:)(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = 0;
  v4[3] = a1;
  v24[0] = 0;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(*a2 + 2);
  aBlock[4] = sub_243F40AD4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243F405A4;
  aBlock[3] = &unk_28576E670;
  v11 = _Block_copy(aBlock);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_243F40998(0, *(v9 + 2), 0, v9);
  }

  *a2 = v9;
  rx_request = cmf_session_create_rx_request(v8, v10, (v9 + 32), v11, v24);
  _Block_release(v11);
  if (!rx_request)
  {
    goto LABEL_6;
  }

  sub_243F3F298(&qword_27EDBFAE0, &qword_243F425C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_243F425A0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 32) = 0xD000000000000025;
  *(v13 + 40) = 0x8000000243F43320;
  sub_243F3F298(&qword_27EDBFAE8, &qword_243F425C8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_243F425A0;
  result = mach_error_string(rx_request);
  if (result)
  {
    v17 = result;
    *(v15 + 56) = sub_243F3F298(&qword_27EDBFAF0, &qword_243F425D0);
    *(v15 + 64) = sub_243F3F2E0();
    v18 = MEMORY[0x277D849A8];
    *(v15 + 32) = v17;
    v19 = MEMORY[0x277D84A20];
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    *(v15 + 72) = rx_request;
    v20 = sub_243F41DE8();
    *(v13 + 88) = v14;
    *(v13 + 64) = v20;
    *(v13 + 72) = v21;
    sub_243F41E38();

LABEL_6:

    v4[2] = v24[0];
    v22 = *MEMORY[0x277D85DE8];
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_243F4092C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_243F40958()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

char *sub_243F40998(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_243F3F298(&qword_27EDBFB10, qword_243F42840);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_243F40A9C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243F40AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(result + 32);
  v5 = *(result + 40);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v6();
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_243F40BA0()
{
  result = qword_27EDBFB00;
  if (!qword_27EDBFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFB00);
  }

  return result;
}

unint64_t sub_243F40BF8()
{
  result = qword_27EDBFB08;
  if (!qword_27EDBFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBFB08);
  }

  return result;
}

uint64_t _s13ConnectedMode15AdapterListenerC12NotificationOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13ConnectedMode15AdapterListenerC12NotificationOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_243F410F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243F41104(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243F41124(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for cmf_iovec()
{
  if (!qword_27EDBFB18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDBFB18);
    }
  }
}

void sub_243F41210(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F412B0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3EDB4(&dword_243F3B000, a1, a3, "%s: exception", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F41328(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(a1);
  sub_243F3EDDC();
  sub_243F3ED78();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_243F413D4()
{
  sub_243F3EDD0();
  v2 = sub_243F3EDA4(v1, *MEMORY[0x277D85DE8]);
  (*(v3 + 16))(v2);
  v4 = *(v0 + 16);
  sub_243F3ED58();
  sub_243F3ED78();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_243F4147C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F414F4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3EDB4(&dword_243F3B000, a1, a3, "%s: exception", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F4156C()
{
  sub_243F3EDD0();
  v2 = sub_243F3EDA4(v1, *MEMORY[0x277D85DE8]);
  (*(v3 + 16))(v2);
  v4 = *(v0 + 16);
  sub_243F3ED58();
  sub_243F3ED78();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_243F41614(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F4168C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F41704(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F4177C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F417F4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F4186C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F418E4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F4195C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F419D4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F41A4C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F41AC4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3ED88(&dword_243F3B000, a1, a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F41B3C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_243F3EDB4(&dword_243F3B000, a1, a3, "%s: exception", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_243F41BB4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*a1 + 16))(a1);
  sub_243F3EDDC();
  sub_243F3ED78();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_243F41C60()
{
  sub_243F3EDD0();
  v2 = sub_243F3EDA4(v1, *MEMORY[0x277D85DE8]);
  (*(v3 + 16))(v2);
  v4 = *(v0 + 16);
  sub_243F3ED58();
  sub_243F3ED78();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_243F41D08()
{
  if (__cxa_guard_acquire(&qword_27EDBFB30))
  {
    __cxa_atexit(std::error_category::~error_category, &off_281B02EC0, &dword_243F3B000);

    __cxa_guard_release(&qword_27EDBFB30);
  }
}

void sub_243F41D70()
{
  if (__cxa_guard_acquire(qword_27EDBFB38))
  {
    __cxa_atexit(std::error_category::~error_category, &off_281B02EC8, &dword_243F3B000);

    __cxa_guard_release(qword_27EDBFB38);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}