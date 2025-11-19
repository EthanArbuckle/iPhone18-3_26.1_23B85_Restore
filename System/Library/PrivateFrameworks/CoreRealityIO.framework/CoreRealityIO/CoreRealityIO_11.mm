uint64_t RIOPxrVtValueGetGfMatrix3d(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_11;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3d>((a1 + 16)))
  {
    v4 = *(v2 + 24);
    if ((v4 & 4) != 0)
    {
      v5 = (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v2 + 16);
    }

    else
    {
      v5 = *(v2 + 16);
    }

    *a2 = *v5;
    v6 = *(v5 + 16);
    v7 = *(v5 + 32);
    v8 = *(v5 + 48);
    *(a2 + 64) = *(v5 + 64);
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 16) = v6;
    v2 = 1;
    goto LABEL_12;
  }

  Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v2 + 16));
  {
LABEL_11:
    v2 = 0;
    goto LABEL_12;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v19, (v2 + 16));
  v11 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v19);
  type_name = v11->__type_name;
  v2 = type_name != 0;
  if (type_name)
  {
    v13 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v11);
    *a2 = *v13;
    v14 = *(v13 + 16);
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    *(a2 + 64) = *(v13 + 64);
    *(a2 + 32) = v15;
    *(a2 + 48) = v16;
    *(a2 + 16) = v14;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t RIOPxrVtValueCopyToken(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = (result + 16);
  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 13)
  {
    {
      v2 = *(v1 + 24);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    return 0;
  }

  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v1 + 16);
LABEL_5:
  v4 = *v3;
  v6 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 = v5;
    }
  }

  result = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(&v6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t RIOPxrVtValueCopyPath(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 16);
  if (strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    {
      v2 = *(a1 + 24);
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  if ((v2 & 4) != 0)
  {
    v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(a1 + 16);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v6, v3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, v3 + 1);
  v4 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  return v4;
}

void sub_24753E930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCopyAssetPath(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  if (strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    {
      v2 = *(v1 + 24);
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  if ((v2 & 4) != 0)
  {
    v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v1 + 16);
  }

  else
  {
    v3 = *(v1 + 16);
  }

  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v11.__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&v11.__r_.__value_.__l.__data_ = v4;
  }

  if (*(v3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v5 = *(v3 + 24);
    __p.__r_.__value_.__r.__words[2] = *(v3 + 40);
    *&__p.__r_.__value_.__l.__data_ = v5;
  }

  v6 = *MEMORY[0x277CBECE8];
  if (RIOPxrSdfAssetPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfAssetPathGetTypeID::onceToken, &__block_literal_global_32);
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((Instance + 16), v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    }

    else
    {
      v8 = v11.__r_.__value_.__r.__words[2];
      *(Instance + 16) = *&v11.__r_.__value_.__l.__data_;
      *(Instance + 32) = v8;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v1 + 40), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = __p.__r_.__value_.__r.__words[2];
      *(v1 + 40) = *&__p.__r_.__value_.__l.__data_;
      *(v1 + 56) = v9;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_24753EAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 39) < 0)
  {
    operator delete(*(v14 + 16));
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&__p);
  _Unwind_Resume(a1);
}

CFStringRef RIOPxrVtValueCopyString(const __CFString *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  length = a1->length;
  if (!length)
  {
    return 0;
  }

  if (*((length & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
  {
    if ((length & 4) == 0)
    {
LABEL_5:
      data = v1->data;
LABEL_6:
      if (*(data + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *data, *(data + 8));
      }

      else
      {
        v4 = *data;
        v11.__r_.__value_.__r.__words[2] = *(data + 16);
        *&v11.__r_.__value_.__l.__data_ = v4;
      }

      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v11;
      }

      else
      {
        v7 = v11.__r_.__value_.__r.__words[0];
      }

      v1 = CFStringCreateWithCString(0, v7, 0x8000100u);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      return v1;
    }

LABEL_12:
    data = (*((length & 0xFFFFFFFFFFFFFFF8) + 168))(&v1->data);
    goto LABEL_6;
  }

  {
    length = v1->length;
    if ((length & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v11);
  pxrInternal__aapl__pxrReserved__::operator<<();
  std::stringbuf::str();
  if (v10 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v1 = CFStringCreateWithCString(0, p_p, 0x8000100u);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v11.__r_.__value_.__r.__words + *(v11.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11.__r_.__value_.__r.__words[2] = v6;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v15);
  return v1;
}

void sub_24753EDC8(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyBoolArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 47)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithBool(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753EF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyInt32Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 52)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 4);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithInt32(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753F0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyInt64Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 54)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = v5 - 2;
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithInt64(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753F228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyUInt8Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 49)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithUInt8(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753F390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyUInt32Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 53)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 4);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithUInt32(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753F4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyUInt64Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 55)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = v5 - 2;
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithUInt64(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753F660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyHalfArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 58)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v12 = *v3;
  v13 = v4;
  v5 = *(v3 + 32);
  v14 = v5;
  if (v5)
  {
    v6 = (v5 - 8);
    if (*(&v13 + 1))
    {
      v6 = *(&v13 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique(&v12);
  v7 = v14;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique(&v12);
  v8 = &v14[v12];
  if (v7 != v8)
  {
    v9 = MEMORY[0x277D86658];
    do
    {
      v11 = RIOPxrVtValueCreateWithHalf(*(v9 + 4 * *v7));
      CFArrayAppendValue(Mutable, v11);
      realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v11);
      ++v7;
    }

    while (v7 != v8);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v12);
  return Mutable;
}

void sub_24753F7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyFloatArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 57)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 4);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithFloat(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753F940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyDoubleArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 56)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 2);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithDouble(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753FAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyInt2Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 16)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 2);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithInt2(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753FC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyInt3Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 15)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = v5 - 2;
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique(&v11);
  if (v7 != (v13 + 12 * v11))
  {
    v8 = *v7;
    v9 = *(v7 + 2);
    RIOPxrVtValueCreateWithInt3();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24753FD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyInt4Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 14)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v10 = *v3;
  v11 = v4;
  v5 = *(v3 + 32);
  v12 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v11 + 1))
    {
      v6 = *(&v11 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique(&v10);
  v7 = v12;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique(&v10);
  if (v7 != &v12[v10])
  {
    v8 = *v7;
    RIOPxrVtValueCreateWithInt4();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v10);
  return Mutable;
}

void sub_24753FEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyHalf2Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 19)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v13 = *v3;
  v14 = v4;
  v5 = *(v3 + 32);
  v15 = v5;
  if (v5)
  {
    v6 = (v5 - 8);
    if (*(&v14 + 1))
    {
      v6 = *(&v14 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique(&v13);
  v7 = v15;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique(&v13);
  v8 = &v15[2 * v13];
  if (v7 != v8)
  {
    v9 = MEMORY[0x277D86658];
    do
    {
      LODWORD(v10) = *(v9 + 4 * *v7);
      HIDWORD(v10) = *(v9 + 4 * v7[1]);
      v12 = RIOPxrVtValueCreateWithHalf2(v10);
      CFArrayAppendValue(Mutable, v12);
      realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v12);
      v7 += 2;
    }

    while (v7 != v8);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v13);
  return Mutable;
}

void sub_247540070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyHalf3Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 18)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v13 = *v3;
  v14 = v4;
  v5 = *(v3 + 32);
  v15 = v5;
  if (v5)
  {
    v6 = (v5 - 8);
    if (*(&v14 + 1))
    {
      v6 = *(&v14 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(&v13);
  v7 = v15;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(&v13);
  v9 = &v15[3 * v13];
  if (v7 != v9)
  {
    v10 = MEMORY[0x277D86658];
    do
    {
      v8.n128_u32[0] = *(v10 + 4 * *v7);
      v8.n128_u32[1] = *(v10 + 4 * v7[1]);
      v8.n128_u32[2] = *(v10 + 4 * v7[2]);
      v12 = RIOPxrVtValueCreateWithHalf3(v8);
      CFArrayAppendValue(Mutable, v12);
      realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v12);
      v7 += 3;
    }

    while (v7 != v9);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v13);
  return Mutable;
}

void sub_247540204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyHalf4Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 17)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v13 = *v3;
  v14 = v4;
  v5 = *(v3 + 32);
  v15 = v5;
  if (v5)
  {
    v6 = (v5 - 8);
    if (*(&v14 + 1))
    {
      v6 = *(&v14 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique(&v13);
  v7 = v15;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique(&v13);
  v8 = &v15[4 * v13];
  if (v7 != v8)
  {
    v9 = MEMORY[0x277D86658];
    do
    {
      v10.n128_u32[0] = *(v9 + 4 * *v7);
      v10.n128_u32[1] = *(v9 + 4 * v7[1]);
      v10.n128_u32[2] = *(v9 + 4 * v7[2]);
      v10.n128_u32[3] = *(v9 + 4 * v7[3]);
      v12 = RIOPxrVtValueCreateWithHalf4(v10);
      CFArrayAppendValue(Mutable, v12);
      realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v12);
      v7 += 4;
    }

    while (v7 != v8);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v13);
  return Mutable;
}

void sub_2475403A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyFloat2Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 22)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 2);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(&v11);
  v8 = &v13[v11];
  while (v7 != v8)
  {
    v10 = RIOPxrVtValueCreateWithFloat2(*v7);
    CFArrayAppendValue(Mutable, v10);
    realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v10);
    ++v7;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_247540508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyFloat3Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 21)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = v5 - 2;
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v11);
  if (v7 != (v13 + 12 * v11))
  {
    v8 = *v7;
    v9 = *(v7 + 2);
    RIOPxrVtValueCreateWithFloat3();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_24754067C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyFloat4Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 20)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v10 = *v3;
  v11 = v4;
  v5 = *(v3 + 32);
  v12 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v11 + 1))
    {
      v6 = *(&v11 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(&v10);
  v7 = v12;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(&v10);
  if (v7 != &v12[v10])
  {
    v8 = *v7;
    RIOPxrVtValueCreateWithFloat4();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v10);
  return Mutable;
}

void sub_2475407E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyDouble2Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 25)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v10 = *v3;
  v11 = v4;
  v5 = *(v3 + 32);
  v12 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v11 + 1))
    {
      v6 = *(&v11 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique(&v10);
  v7 = v12;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique(&v10);
  if (v7 != &v12[v10])
  {
    v8 = *v7;
    RIOPxrVtValueCreateWithDouble2();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v10);
  return Mutable;
}

void sub_24754094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyDouble3Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 24)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique(&v11);
  if (v7 != v13 + 24 * v11)
  {
    *&v8 = *(v7 + 16);
    v10[0] = *v7;
    v10[1] = v8;
    RIOPxrVtValueCreateWithDouble3(v10);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_247540ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyDouble4Array(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 23)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique(&v11);
  if (v7 != &v13[2 * v11])
  {
    v8 = v7[1];
    v10[0] = *v7;
    v10[1] = v8;
    RIOPxrVtValueCreateWithDouble4(v10);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_247540C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyQuathArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 40)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v13 = *v3;
  v14 = v4;
  v5 = *(v3 + 32);
  v15 = v5;
  if (v5)
  {
    v6 = (v5 - 8);
    if (*(&v14 + 1))
    {
      v6 = *(&v14 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique(&v13);
  v7 = v15;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique(&v13);
  v8 = &v15[4 * v13];
  if (v7 != v8)
  {
    v9 = MEMORY[0x277D86658];
    do
    {
      v10.n128_u32[0] = *(v9 + 4 * *v7);
      v10.n128_u32[1] = *(v9 + 4 * v7[1]);
      v10.n128_u32[2] = *(v9 + 4 * v7[2]);
      v10.n128_u32[3] = *(v9 + 4 * v7[3]);
      v12 = RIOPxrVtValueCreateWithQuath(v10);
      CFArrayAppendValue(Mutable, v12);
      realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(&v12);
      v7 += 4;
    }

    while (v7 != v8);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v13);
  return Mutable;
}

void sub_247540DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyQuatfArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 41)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v10 = *v3;
  v11 = v4;
  v5 = *(v3 + 32);
  v12 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v11 + 1))
    {
      v6 = *(&v11 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(&v10);
  v7 = v12;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(&v10);
  if (v7 != &v12[v10])
  {
    v8 = *v7;
    RIOPxrVtValueCreateWithQuatf();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v10);
  return Mutable;
}

void sub_247540F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyQuatdArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 42)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique(&v11);
  if (v7 != &v13[2 * v11])
  {
    v8 = v7[1];
    v10[0] = *v7;
    v10[1] = v8;
    RIOPxrVtValueCreateWithQuatd(v10);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_2475410C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyMatrix2dArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 31)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v11 = *v3;
  v12 = v4;
  v5 = *(v3 + 32);
  v13 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v12 + 1))
    {
      v6 = *(&v12 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique(&v11);
  v7 = v13;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique(&v11);
  if (v7 != &v13[2 * v11])
  {
    v8 = *v7;
    v9 = v7[1];
    RIOPxrVtValueCreateWithMatrix2d();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v11);
  return Mutable;
}

void sub_247541230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyMatrix3dArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 30)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v15 = *v3;
  v16 = v4;
  v5 = *(v3 + 32);
  v17 = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(&v16 + 1))
    {
      v6 = *(&v16 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique(&v15);
  v7 = v17;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique(&v15);
  if (v7 != v17 + 72 * v15)
  {
    *&v8 = *(v7 + 16);
    v11 = *(v7 + 24);
    *&v9 = *(v7 + 40);
    v12 = *(v7 + 48);
    *&v10 = *(v7 + 64);
    v14[0] = *v7;
    v14[1] = v8;
    v14[2] = v11;
    v14[3] = v9;
    v14[4] = v12;
    v14[5] = v10;
    RIOPxrVtValueCreateWithMatrix3d(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v15);
  return Mutable;
}

CFMutableArrayRef RIOPxrVtValueCopyMatrix4dArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 29)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v17 = *v3;
  v18 = v4;
  v5 = *(v3 + 32);
  v19 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v18 + 1))
    {
      v6 = *(&v18 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique(&v17);
  v7 = v19;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique(&v17);
  if (v7 != &v19[8 * v17])
  {
    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    v11 = v7[4];
    v12 = v7[5];
    v13 = v7[6];
    v14 = v7[7];
    v16[0] = *v7;
    v16[1] = v8;
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v11;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    RIOPxrVtValueCreateWithMatrix4d(v16);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v17);
  return Mutable;
}

CFMutableArrayRef RIOPxrVtValueCopyTokenArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  v3 = v2 & 0xFFFFFFFFFFFFFFF8;
  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 60)
  {
    if ((v2 & 4) != 0)
    {
      v2 = *(Mutable + 3);
      if (IsImpl)
      {
        goto LABEL_4;
      }

      if (!v2)
      {
        return 0;
      }

      v3 = v2 & 0xFFFFFFFFFFFFFFF8;
    }

    if (!strcmp((*(*v3 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_7TfTokenEEE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
LABEL_22:
      if ((v2 & 4) != 0)
      {
        v11 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      }

      else
      {
        v11 = *(Mutable + 2);
      }

      pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp(&v15, v11);
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v12 = *(&v15 + 1);
      v13 = v16;
      while (v12 != v13)
      {
        v22 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v12);
        CFArrayAppendValue(Mutable, v22);
        realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v22);
        ++v12;
      }

      v22 = &v21;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v22);
      v22 = &v20;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v22);
      v22 = &v19;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v22);
      v22 = &v18;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v22);
      v22 = &v17;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v22);
      v22 = &v15 + 1;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v22);
      return Mutable;
    }

    {
      v2 = *(Mutable + 3);
      goto LABEL_22;
    }

    return 0;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
    v4 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
  }

  else
  {
    v4 = *(Mutable + 2);
  }

  v5 = *(v4 + 16);
  v15 = *v4;
  v16 = v5;
  v6 = *(v4 + 32);
  v17 = v6;
  if (v6)
  {
    v7 = v6 - 2;
    if (*(&v16 + 1))
    {
      v7 = *(&v16 + 1);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v15);
  v8 = v17;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique(&v15);
  v9 = &v17[v15];
  while (v8 != v9)
  {
    v22 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v8);
    CFArrayAppendValue(Mutable, v22);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v22);
    ++v8;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v15);
  return Mutable;
}

CFMutableArrayRef RIOPxrVtValueCopyStringArray(void *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = a1[3];
  if (!v2)
  {
    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) != 59)
  {
    {
      v2 = *(Mutable + 3);
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_19:
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
      goto LABEL_6;
    }

    return 0;
  }

  if ((v2 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v3 = *(Mutable + 2);
LABEL_6:
  v4 = *(v3 + 16);
  v12 = *v3;
  v13 = v4;
  v5 = *(v3 + 32);
  v14 = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(&v13 + 1))
    {
      v6 = *(&v13 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v12);
  v7 = v14;
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique(&v12);
  v8 = v14 + 24 * v12;
  while (v7 != v8)
  {
    v9 = v7;
    if (*(v7 + 23) < 0)
    {
      v9 = *v7;
    }

    v11 = CFStringCreateWithCString(0, v9, 0x8000100u);
    CFArrayAppendValue(Mutable, v11);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v11);
    v7 += 24;
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v12);
  return Mutable;
}

void sub_2475419B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef RIOPxrVtValueCopyPathListOp(__CFArray *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = *(a1 + 3);
  if (!v2)
  {
    return 0;
  }

  if (strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_7SdfPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    {
      v2 = *(Mutable + 3);
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  if ((v2 & 4) != 0)
  {
    v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
  }

  else
  {
    v3 = *(Mutable + 2);
  }

  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp(&v7, v3);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v4 = v8[0];
  v5 = v8[1];
  while (v4 != v5)
  {
    v14 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
    CFArrayAppendValue(Mutable, v14);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v14);
    v4 += 2;
  }

  v14 = &v13;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = &v12;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = &v11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = &v10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = &v9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = v8;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v14);
  return Mutable;
}

CFMutableArrayRef RIOPxrVtValueCopyAssetPathArray(__CFArray *a1)
{
  Mutable = a1;
  if (!a1)
  {
    return Mutable;
  }

  v2 = *(a1 + 3);
  if (!v2)
  {
    return 0;
  }

  if (strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_12SdfAssetPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    {
      v2 = *(Mutable + 3);
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  if ((v2 & 4) != 0)
  {
    v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(Mutable + 16);
  }

  else
  {
    v3 = *(Mutable + 2);
  }

  v4 = *(v3 + 16);
  v16 = *v3;
  v17 = v4;
  v5 = *(v3 + 32);
  v18 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v17 + 1))
    {
      v6 = *(&v17 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(&v16);
  v7 = v18;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(&v16);
  v8 = &v18[3 * v16];
  if (v7 != v8)
  {
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      if (RIOPxrSdfAssetPathGetTypeID::onceToken != -1)
      {
        dispatch_once(&RIOPxrSdfAssetPathGetTypeID::onceToken, &__block_literal_global_32);
      }

      Instance = _CFRuntimeCreateInstance();
      v11 = Instance;
      if (Instance)
      {
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external((Instance + 16), *v7, *(v7 + 1));
        }

        else
        {
          v12 = *v7;
          *(Instance + 32) = *(v7 + 2);
          *(Instance + 16) = v12;
        }

        if (*(v7 + 47) < 0)
        {
          std::string::__init_copy_ctor_external((v11 + 40), *(v7 + 3), *(v7 + 4));
        }

        else
        {
          v13 = *(v7 + 24);
          *(v11 + 56) = *(v7 + 5);
          *(v11 + 40) = v13;
        }
      }

      v15 = v11;
      CFArrayAppendValue(Mutable, v11);
      realityio::WrappedCFRef<RIOPxrSdfAssetPath *>::~WrappedCFRef(&v15);
      v7 += 3;
    }

    while (v7 != v8);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(&v16);
  return Mutable;
}

void sub_247541D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreateEmptyValue()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[1] = 0;
  v0 = RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue>(v3);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_247541E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

void RIOPxrVtValueCreateWithDictionary(const __CFDictionary *a1)
{
  v1[3] = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  CFDictionaryApplyFunction(a1, RIOPxrVtValueCreateWithDictionary::$_0::__invoke, v1);
  v1[2] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>::_PlaceCopy();
}

void sub_247541F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a10);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a9);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrVtValueCreate<pxrInternal__aapl__pxrReserved__::VtValue &>(const pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  if (RIOPxrVtValueGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrVtValueGetTypeID::onceToken, &__block_literal_global_7);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue((Instance + 16), a1);
  }

  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  return a1;
}

void sub_24754218C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>::~SdfListOp(void **a1)
{
  v3 = a1 + 16;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 13;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 10;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 7;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 4;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1 + 1;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::SdfListOp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1 + 104, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 3);
  return a1;
}

void sub_247542390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *RIOPxrVtValueCreateWithDictionary::$_0::__invoke(RIOPxrVtValueCreateWithDictionary::$_0 *this, void *a2, const void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2 + 2;
  if ((*(this + 2) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  result = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]();
  if (result != v5)
  {
    v7 = result;
    if (a2[3])
    {
      result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v13, result);
      v8 = a2[3];
      v9 = ~*(a2 + 6);
      v7[1] = v8;
      if ((v9 & 3) != 0)
      {
        result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 24))(v5, v7);
      }

      else
      {
        *v7 = *v5;
      }

      if (v14)
      {
        result = (*(v14 + 32))(v13);
      }
    }

    else
    {
      v10 = result[1];
      if (v10)
      {
        v11 = (result[1] & 3) == 3;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 32))(result);
      }

      v7[1] = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247542514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 48), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::_Hash(const char **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,std::string const&>(&v3, v1, (v1 + 24));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 48), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,std::string const&>(pxrInternal__aapl__pxrReserved__::Tf_HashState *a1, const char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, a2);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  return pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(a1, v7);
}

BOOL pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v15 = v7[3];
  v14 = v7 + 3;
  v13 = v15;
  if (v9 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v19 = v6[3];
  v18 = v6 + 3;
  v17 = v19;
  if (v12 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v10) == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 48));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,pxrInternal__aapl__pxrReserved__::SdfAssetPath const&>();
  }

  return *a1;
}

std::string *pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_Counted(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  atomic_store(0, &this[2]);
  return this;
}

void sub_2475429FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::string,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::string,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::string,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>>::_Hash(uint64_t *a1)
{
  v1 = *a1;
  v6 = 0;
  v7 = 0;
  v2 = *(v1 + 23);
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = *(v1 + 23);
  }

  else
  {
    v4 = *(v1 + 8);
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v6, v3);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::string,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>>::_StreamOut(uint64_t **a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v4, v5);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::string,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::string>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::string>,std::string const&>();
  }

  return *a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<int,int,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<int>>::_GetProxiedAsVtValue@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_28594ADA3;
  *a2 = *result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<long long,long long,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<long long>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &unk_28594AE5B;
  return result;
}

_BYTE *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<unsigned char,unsigned char,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<unsigned char>>::_GetProxiedAsVtValue@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_28594AF13;
  *a2 = *result;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<unsigned int,unsigned int,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<unsigned int>>::_GetProxiedAsVtValue@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &unk_28594AFCB;
  *a2 = *result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<unsigned long long,unsigned long long,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<unsigned long long>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &unk_28594B083;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2f,pxrInternal__aapl__pxrReserved__::GfVec2f,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2f>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2f>(void)::ti + 3;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_Hash(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&>(&v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_Equal(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 12));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>>::_Hash(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&>(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>>::_Equal(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4f>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4f>(void)::ti + 2;
  operator new();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>>::_Hash(int8x16_t **a1)
{
  v1 = vbicq_s8(**a1, vceqzq_f64(**a1));
  v2 = vaddvq_s64(v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * (v1.i64[1] + ((v2 + v2 * v2) >> 1))));
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2d>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 16));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>>::_Hash(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&>(&v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>>::_Equal(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3d>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>>::_Hash(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&>(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>>::_Equal(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4d>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 32));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuath,pxrInternal__aapl__pxrReserved__::GfQuath,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuath>>::_Hash(unsigned __int16 *a1)
{
  v2 = a1[3];
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half,pxrInternal__aapl__pxrReserved__::GfVec3h const&>(&v3, &v2, a1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuath,pxrInternal__aapl__pxrReserved__::GfQuath,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuath>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuath>(void)::ti + 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half,pxrInternal__aapl__pxrReserved__::GfVec3h const&>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v4 = *a2;
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  v7 = 0;
  v8 = 0;
  result = pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(&v7, a3, a3 + 1, a3 + 2);
  v6 = bswap64(0x9E3779B97F4A7C55 * v7);
  if (*(a1 + 8))
  {
    v6 += (*a1 + v6 + (*a1 + v6) * (*a1 + v6)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v6;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_Hash(float **a1)
{
  v1 = *a1;
  v3 = *(*a1 + 3);
  v4 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float,pxrInternal__aapl__pxrReserved__::GfVec3f const&>(&v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_Equal(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatf,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatf>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatf>(void)::ti;
  operator new();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatd,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatd>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatd,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatd>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatd,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatd>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatd,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatd>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>>::_Hash(double **a1)
{
  v1 = *a1;
  v3 = *(*a1 + 3);
  v4 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double,pxrInternal__aapl__pxrReserved__::GfVec3d const&>(&v4, &v3, v1);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v4));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatd,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatd>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>>::_Equal(double **a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  return (*a1)[3] == (*a2)[3] && *v2 == *v3 && v2[1] == v3[1] && v2[2] == v3[2];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfQuatd,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfQuatd>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfQuatd>(void)::ti;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double,pxrInternal__aapl__pxrReserved__::GfVec3d const&>(uint64_t a1, double *a2, double *a3)
{
  v4 = *a2;
  if (*a2 == 0.0)
  {
    v4 = 0.0;
  }

  v5 = v4;
  if (*(a1 + 8))
  {
    *&v5 = *&v4 + ((*a1 + *&v4 + (*a1 + *&v4) * (*a1 + *&v4)) >> 1);
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  v8 = 0;
  v9 = 0;
  result = pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&>(&v8, a3, a3 + 1, a3 + 2);
  v7 = bswap64(0x9E3779B97F4A7C55 * v8);
  if (*(a1 + 8))
  {
    v7 += (*a1 + v7 + (*a1 + v7) * (*a1 + v7)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v7;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2i,pxrInternal__aapl__pxrReserved__::GfVec2i,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2i>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2i>(void)::ti + 3;
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 12), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 12), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>>::_Hash(int **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,int const&,int const&,int const&>(&v3, v1, v1 + 1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>>::_Equal(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec3i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3i>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,int const&,int const&,int const&>(uint64_t result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  if (*(result + 8))
  {
    v4 += (*result + v4 + (*result + v4) * (*result + v4)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  v5 = *a4;
  v6 = *a3 + ((v4 + *a3 + (v4 + *a3) * (v4 + *a3)) >> 1) + v5;
  *result = v5 + ((v6 + v6 * v6) >> 1);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 16), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>>::_Hash(int **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,int const&,int const&,int const&,int const&>(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>>::_Equal(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4i,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfVec4i>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4i>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,int const&,int const&,int const&,int const&>(uint64_t a1, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,int const&,int const&,int const&>(a1, a3, a4, a5);
}

_WORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::pxr_half::half,pxrInternal__aapl__pxrReserved__::pxr_half::half,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::pxr_half::half>>::_GetProxiedAsVtValue@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::pxr_half::half>(void)::ti + 3;
  *a2 = *result;
  return result;
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec2h,pxrInternal__aapl__pxrReserved__::GfVec2h,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2h>>::_GetProxiedAsVtValue@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2h>(void)::ti + 3;
  *a2 = *result;
  return result;
}

int *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_CopyInit(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

int *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_Move(int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 4) = *(result + 2);
  *a2 = v2;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_Hash(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(&v2, a1, a1 + 1, a1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::GfVec3h,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>>::_GetProxiedAsVtValue@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3h>(void)::ti + 3;
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4h,pxrInternal__aapl__pxrReserved__::GfVec4h,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4h>>::_Hash(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(&v2, a1, a1 + 1, a1 + 2, a1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfVec4h,pxrInternal__aapl__pxrReserved__::GfVec4h,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4h>>::_GetProxiedAsVtValue@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec4h>(void)::ti + 3;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v5 = *a2;
  if (*(a1 + 8))
  {
    v5 += (*a1 + v5 + (*a1 + v5) * (*a1 + v5)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v5;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(a1, a3, a4, a5);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 32), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 32), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::_Hash(double **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&>(&v3, v1, v1 + 1, v1 + 2, v1 + 3);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator==();
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix2d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(void)::ti + 2;
  operator new();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 72), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 72), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::_Hash(double **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v4 = *a1 + 8;
  v5 = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(&v5, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v4);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v5));
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator==();
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix3d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 72));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 128), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::_Destroy(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 128), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::_Move(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::_Hash(double **a1)
{
  v1 = *a1;
  v2 = *a1 + 7;
  v3 = *a1 + 8;
  v4 = *a1 + 9;
  v5 = *a1 + 10;
  v6 = *a1 + 11;
  v7 = *a1 + 12;
  v8 = *a1 + 13;
  v9 = *a1 + 14;
  v10 = *a1 + 15;
  v12 = 0;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(&v12, v1, v1 + 1, v1 + 2, v1 + 3, v1 + 4, v1 + 5, v1 + 6, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v12));
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator==();
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::GfMatrix4d,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(void)::ti + 2;
  operator new();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 128));
  v2 = *a1;
  if (v1 != 1)
  {
    operator new();
  }

  return *a1;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x7FFFFFFFFFFFFFEELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique() [T = BOOL]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = New;
        do
        {
          v9 = *v4++;
          *v8++ = v9;
          --v5;
        }

        while (v5);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>::_Hash(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4]);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), *a1) == 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>,pxrInternal__aapl__pxrReserved__::VtArray<int> const&>();
  }

  return *a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::resize<pxrInternal__aapl__pxrReserved__::VtArray<int>::assign(unsigned long,int const&)::_Filler>(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v13 = a1[4];
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *(New + v11) = *(v9 + v11);
                  v11 += 4;
                }

                while (4 * v3 != v11);
              }
            }

            v12 = 0;
            v13 = v7;
            v14 = **a3;
            v15 = (4 * a2 - 4 * v3 - 4) >> 2;
            v16 = vdupq_n_s64(v15);
            v17 = (v15 + 4) & 0x7FFFFFFFFFFFFFFCLL;
            v18 = v7 + v3 + 2;
            do
            {
              v19 = vdupq_n_s64(v12);
              v20 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_247758360)));
              if (vuzp1_s16(v20, *v16.i8).u8[0])
              {
                *(v18 - 2) = v14;
              }

              if (vuzp1_s16(v20, *&v16).i8[2])
              {
                *(v18 - 1) = v14;
              }

              if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v19, xmmword_247758350)))).i32[1])
              {
                *v18 = v14;
                v18[1] = v14;
              }

              v12 += 4;
              v18 += 4;
            }

            while (v17 != v12);
          }

LABEL_51:
          if (v13 != a1[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
            a1[4] = v13;
          }

          *a1 = a2;
          return;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a1;
      }

      v30 = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(a1, a2);
      v13 = v30;
      if (v3)
      {
        v31 = 4 * v29;
        v32 = v30;
        do
        {
          v33 = *v7;
          v7 = (v7 + 4);
          *v32 = v33;
          v32 = (v32 + 4);
          v31 -= 4;
        }

        while (v31);
      }

      if (v3 < a2)
      {
        v34 = 0;
        v35 = **a3;
        v36 = (4 * a2 - 4 * v3 - 4) >> 2;
        v37 = vdupq_n_s64(v36);
        v38 = (v36 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v39 = v30 + v3 + 2;
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_247758360)));
          if (vuzp1_s16(v41, 2).u8[0])
          {
            *(v39 - 2) = v35;
          }

          if (vuzp1_s16(v41, 2).i8[2])
          {
            *(v39 - 1) = v35;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_247758350)))).i32[1])
          {
            *v39 = v35;
            v39[1] = v35;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      goto LABEL_51;
    }

    if (4 * a2 / a2 == 4)
    {
      v13 = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(a1, a2);
      v21 = 0;
      v22 = **a3;
      v23 = (4 * a2 - 4) >> 2;
      v24 = vdupq_n_s64(v23);
      v25 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v26 = v13 + 1;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_247758360)));
        if (vuzp1_s16(v28, *v24.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v24).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v27, xmmword_247758350)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v25 != v21);
      goto LABEL_51;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique() [T = int]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<int>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 4 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 4;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique() [T = long long]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<long long>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>::_Hash(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4]);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<long long>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<long long>::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (result)
  {
    return memcmp(*(a1 + 32), *(a2 + 32), 8 * *a1) == 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<long long>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>,pxrInternal__aapl__pxrReserved__::VtArray<int> const&>();
  }

  return *a1;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique() [T = unsigned int]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 4 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 4;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>::_Hash(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4]);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>,pxrInternal__aapl__pxrReserved__::VtArray<int> const&>();
  }

  return *a1;
}

void pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_Streamer>(void *a1)
{
  v1 = **a1;
  *a1 += 4;
  JUMPOUT(0x24C1A8F10);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x7FFFFFFFFFFFFFEELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique() [T = unsigned char]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = New;
        do
        {
          v9 = *v4++;
          *v8++ = v9;
          --v5;
        }

        while (v5);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>::_Hash(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4]);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>,pxrInternal__aapl__pxrReserved__::VtArray<int> const&>();
  }

  return *a1;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique() [T = unsigned long long]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>::_Hash(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v4, v1[4]);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<int>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<int>>,pxrInternal__aapl__pxrReserved__::VtArray<int> const&>();
  }

  return *a1;
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x3FFFFFFFFFFFFFF7)
  {
    v3 = -1;
  }

  else
  {
    v3 = 2 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 2 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 2;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v1 = v4 + ((v1 + v4 + (v1 + v4) * (v1 + v4)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 2 * *a1 - 2;
  do
  {
    v8 = *v5++;
    v9 = *(MEMORY[0x277D86658] + 4 * v8);
    v10 = *v6++;
    v11 = *(MEMORY[0x277D86658] + 4 * v10);
    result = v9 == v11;
    v12 = v9 != v11 || v7 == 0;
    v7 -= 2;
  }

  while (!v12);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_Streamer>(void *a1, uint64_t a2)
{
  v3 = **a1;
  *a1 += 2;
  return MEMORY[0x282206C28](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2i]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = ((*a1)[4] + 4);
    v3 = **a1;
    do
    {
      v4 = bswap64(0x9E3779B97F4A7C55 * (*v2 + ((*(v2 - 1) + *v2 + (*(v2 - 1) + *v2) * (*(v2 - 1) + *v2)) >> 1)));
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 2;
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v8 == v10 && v9 == v11;
  }

  while (result && v5 != v6);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206CD8](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xAAAAAAAAAAAAAA9)
  {
    v3 = -1;
  }

  else
  {
    v3 = 12 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3i]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 12 * v5;
        v9 = New;
        do
        {
          v10 = *v4;
          *(v9 + 2) = *(v4 + 2);
          *v9 = v10;
          v9 = (v9 + 12);
          v4 = (v4 + 12);
          v8 -= 12;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,int const&,int const&,int const&>(&v7, v2, v2 + 1, v2 + 2);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 3;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[3 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2]; i += 3)
  {
    v5 += 3;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 12;
  return MEMORY[0x282206CF8](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4i]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 16 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 16;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,int const&,int const&,int const&,int const&>(&v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 16;
  return MEMORY[0x282206D18](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x1FFFFFFFFFFFFFFBLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 4 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2h]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 4 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 4;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = ((*a1)[4] + 2);
    v3 = **a1;
    do
    {
      v4 = bswap64(0x9E3779B97F4A7C55 * (*v2 + ((*(v2 - 1) + *v2 + (*(v2 - 1) + *v2) * (*(v2 - 1) + *v2)) >> 1)));
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 2;
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  for (i = *(a2 + 32); *(MEMORY[0x277D86658] + 4 * *v5) == *(MEMORY[0x277D86658] + 4 * *i) && *(MEMORY[0x277D86658] + 4 * v5[1]) == *(MEMORY[0x277D86658] + 4 * i[1]); i += 2)
  {
    v5 += 2;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 4;
  return MEMORY[0x282206CD0](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4h]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&,pxrInternal__aapl__pxrReserved__::pxr_half::half const&>(&v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 8 * v5 - 8;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfVec4h::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 4;
    v7 += 4;
    v9 = v8;
    v8 -= 8;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206D10](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2f]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v5 = vbic_s8(v4, vceqz_f32(v4));
      v6 = bswap64(0x9E3779B97F4A7C55 * (v5.u32[1] + ((v5.u32[1] + v5.u32[0] + (v5.u32[1] + v5.u32[0]) * (v5.u32[1] + v5.u32[0])) >> 1)));
      v1 = v6 + ((v6 + v1 + (v6 + v1) * (v6 + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206CC8](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4f]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 16 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 16;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,float const&,float const&,float const&,float const&>(&v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 16;
  return MEMORY[0x282206D08](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2d]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 16 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 16;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      v4 = *v2++;
      v5 = vbicq_s8(v4, vceqzq_f64(v4));
      v5.i64[0] = vaddvq_s64(v5);
      v6 = bswap64(0x9E3779B97F4A7C55 * (v5.i64[1] + ((v5.i64[0] + v5.i64[0] * v5.i64[0]) >> 1)));
      v1 = v6 + ((v6 + v1 + (v6 + v1) * (v6 + v1)) >> 1);
      --v3;
    }

    while (v3);
    v1 *= 0x9E3779B97F4A7C55;
  }

  return bswap64(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[2 * *a1];
  v7 = *(a2 + 32);
  do
  {
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    v10 = *v7;
    v11 = v7[1];
    v7 += 2;
    result = v9 == v11 && v8 == v10;
  }

  while (result && v5 != v6);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 16;
  return MEMORY[0x282206CC0](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4d]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 32 * v5;
        v9 = New;
        do
        {
          v10 = *v4;
          v11 = v4[1];
          v4 += 2;
          *v9 = v10;
          v9[1] = v11;
          v9 += 2;
          v8 -= 32;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&>(&v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = &v5[4 * *a1];
  for (i = *(a2 + 32); *v5 == *i && v5[1] == i[1] && v5[2] == i[2] && v5[3] == i[3]; i += 4)
  {
    v5 += 4;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 32;
  return MEMORY[0x282206D00](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuath]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 8 * v5;
        v9 = New;
        do
        {
          v10 = *v4++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 4;
      v8 = v2[3];
      v9 = 0;
      v10 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,pxrInternal__aapl__pxrReserved__::pxr_half::half,pxrInternal__aapl__pxrReserved__::GfVec3h const&>(&v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 8 * v5;
  v9 = MEMORY[0x277D86658];
  while (*(v9 + 4 * v6[3]) == *(v9 + 4 * v7[3]))
  {
    result = pxrInternal__aapl__pxrReserved__::GfVec3h::operator==(v6, v7);
    if (!result)
    {
      return result;
    }

    v6 += 4;
    v7 += 4;
    v8 -= 8;
    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 8;
  return MEMORY[0x282206CB8](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuatd]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 32 * v5;
        v9 = New;
        do
        {
          v10 = *v4;
          v11 = v4[1];
          v4 += 2;
          *v9 = v10;
          v9[1] = v11;
          v9 += 2;
          v8 -= 32;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v4 = v2 + 32;
      v8 = *(v2 + 24);
      v9 = 0;
      v10 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double,pxrInternal__aapl__pxrReserved__::GfVec3d const&>(&v9, &v8, v2);
      v5 = bswap64(0x9E3779B97F4A7C55 * v9);
      v1 = v5 + ((v5 + v1 + (v5 + v1) * (v5 + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = (a1[4] + 16);
  v6 = 32 * *a1;
  for (i = (*(a2 + 32) + 16); v5[1] == i[1] && *(v5 - 2) == *(i - 2) && *(v5 - 1) == *(i - 1) && *v5 == *i; i += 4)
  {
    v5 += 4;
    v6 -= 32;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 32;
  return MEMORY[0x282206CA8](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 >> 58)
  {
    v3 = -1;
  }

  else
  {
    v3 = (32 * a2) | 0x10;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 32 * v5;
        v9 = New;
        do
        {
          v10 = *v4;
          v11 = v4[1];
          v4 += 2;
          *v9 = v10;
          v9[1] = v11;
          v9 += 2;
          v8 -= 32;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&>(&v7, v2, v2 + 1, v2 + 2, v2 + 3);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 4;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 32 * v5 - 32;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator==();
    if (!result)
    {
      break;
    }

    v6 += 32;
    v7 += 32;
    v9 = v8;
    v8 -= 32;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 32;
  return MEMORY[0x282206C40](a2, v3);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x1C71C71C71C71C6)
  {
    v3 = -1;
  }

  else
  {
    v3 = 72 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_AllocateNew(this, *this);
      v7 = New;
      if (v5)
      {
        v8 = 72 * v5;
        v9 = New;
        do
        {
          *v9 = *v4;
          v10 = *(v4 + 16);
          v11 = *(v4 + 32);
          v12 = *(v4 + 48);
          v9[8] = *(v4 + 64);
          *(v9 + 2) = v11;
          *(v9 + 3) = v12;
          *(v9 + 1) = v10;
          v4 += 72;
          v9 += 9;
          v8 -= 72;
        }

        while (v8);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(this);
      *(this + 4) = v7;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v8 = 0;
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&,double const&>(&v7, v2, v2 + 1, v2 + 2, v2 + 3, v2 + 4, v2 + 5, v2 + 6, v2 + 7, v2 + 8);
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 9;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 72 * v5 - 72;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator==();
    if (!result)
    {
      break;
    }

    v6 += 72;
    v7 += 72;
    v9 = v8;
    v8 -= 72;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 72;
  return MEMORY[0x282206C50](a2, v3);
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::TfToken const&)::_Filler>(uint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    Copy = a1[4];
    if (Copy)
    {
      if (!a1[3])
      {
        v8 = atomic_load(Copy - 2);
        if (v8 == 1)
        {
          if (v3 >= a2)
          {
            v23 = a2;
            do
            {
              v24 = Copy[v23];
              if ((v24 & 7) != 0)
              {
                atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              ++v23;
            }

            while (v3 != v23);
          }

          else
          {
            v9 = a1[4];
            if (*(v9 - 1) < a2)
            {
              Copy = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateCopy(a1, v9, a2, *a1);
            }

            v10 = *a3;
            v11 = v3;
            do
            {
              v12 = *v10;
              Copy[v11] = *v10;
              if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                Copy[v11] &= 0xFFFFFFFFFFFFFFF8;
              }

              ++v11;
            }

            while (a2 != v11);
          }

LABEL_40:
          if (Copy != a1[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1);
            a1[4] = Copy;
          }

          *a1 = a2;
          return;
        }

        Copy = a1[4];
      }

      if (v3 >= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a1;
      }

      v19 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateCopy(a1, Copy, a2, v18);
      Copy = v19;
      if (v3 < a2)
      {
        v20 = *a3;
        v21 = v3;
        do
        {
          v22 = *v20;
          v19[v21] = *v20;
          if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v19[v21] &= 0xFFFFFFFFFFFFFFF8;
          }

          ++v21;
        }

        while (a2 != v21);
      }

      goto LABEL_40;
    }

    v13 = 8 * a2;
    if (8 * a2 / a2 == 8)
    {
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(a1, a2);
      Copy = New;
      v15 = 0;
      v16 = *a3;
      do
      {
        v17 = *v16;
        New[v15 / 8] = *v16;
        if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          New[v15 / 8] &= 0xFFFFFFFFFFFFFFF8;
        }

        v15 += 8;
      }

      while (v13 != v15);
      goto LABEL_40;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::clear(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>::_Hash(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v5 = 1;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(&v4, v1[4], v2);
  return bswap64(0x9E3779B97F4A7C55 * v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::Tf_HashState *pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendContiguous<std::string>(pxrInternal__aapl__pxrReserved__::Tf_HashState *this, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = this;
    do
    {
      --v3;
      v5 = a2 + 3;
      v6 = a2[1];
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      this = pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v4, a2);
      a2 = v5;
    }

    while (v3);
  }

  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<std::string>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 24 * v5 - 24;
  do
  {
    result = std::equal_to<std::string>::operator()[abi:ne200100](&v10, v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 3;
    v7 += 3;
    v9 = v8;
    v8 -= 24;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

void *pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_Streamer>(uint64_t *a1, void *a2)
{
  v3 = *a1;
  *a1 += 24;
  v4 = *(v3 + 23);
  if (v4 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 23);
  }

  else
  {
    v6 = *(v3 + 8);
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v5, v6);
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 152), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_DecrementIfValid(result);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_Equal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>::operator==();
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    if (atomic_fetch_add_explicit((v1 + 152), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = (v1 + 128);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = (v1 + 104);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = (v1 + 80);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = (v1 + 56);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = (v1 + 32);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
      v2 = (v1 + 8);
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x24C1A91B0](v1, 0x1020C40D6643E80);
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::VtHashValue<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,BOOL const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(&v2, a1, (a1 + 8), (a1 + 32), (a1 + 56), (a1 + 80), (a1 + 104), (a1 + 128));
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v2));
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,BOOL const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t a1, unsigned __int8 *a2, char **a3, char **a4, char **a5, char **a6, char **a7, char **a8)
{
  v8 = *a2;
  if (*(a1 + 8))
  {
    v8 += (*a1 + v8 + (*a1 + v8) * (*a1 + v8)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v8;
  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(a1, a3, a4, a5, a6, a7, a8);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t a1, char **a2, char **a3, char **a4, char **a5, char **a6, char **a7)
{
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8)
  {
    v9 = v8 >> 3;
    v10 = *a1;
    v11 = *(a1 + 8);
    do
    {
      v13 = *v7;
      v12 = *(v7 + 1);
      if (v11)
      {
        v13 += (v10 + v13 + (v10 + v13) * (v10 + v13)) >> 1;
      }

      else
      {
        *(a1 + 8) = 1;
      }

      v10 = v12 + ((v13 + v12 + (v13 + v12) * (v13 + v12)) >> 1);
      *a1 = v10;
      v7 += 8;
      v11 = 1;
      --v9;
    }

    while (v9);
  }

  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(a1, a3, a4, a5, a6, a7);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t a1, char **a2, char **a3, char **a4, char **a5, char **a6)
{
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = v7 >> 3;
    v9 = *a1;
    v10 = *(a1 + 8);
    do
    {
      v12 = *v6;
      v11 = *(v6 + 1);
      if (v10)
      {
        v12 += (v9 + v12 + (v9 + v12) * (v9 + v12)) >> 1;
      }

      else
      {
        *(a1 + 8) = 1;
      }

      v9 = v11 + ((v12 + v11 + (v12 + v11) * (v12 + v11)) >> 1);
      *a1 = v9;
      v6 += 8;
      v10 = 1;
      --v8;
    }

    while (v8);
  }

  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(a1, a3, a4, a5, a6);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t a1, char **a2, char **a3, char **a4, char **a5)
{
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 3;
    v8 = *a1;
    v9 = *(a1 + 8);
    do
    {
      v11 = *v5;
      v10 = *(v5 + 1);
      if (v9)
      {
        v11 += (v8 + v11 + (v8 + v11) * (v8 + v11)) >> 1;
      }

      else
      {
        *(a1 + 8) = 1;
      }

      v8 = v10 + ((v11 + v10 + (v11 + v10) * (v11 + v10)) >> 1);
      *a1 = v8;
      v5 += 8;
      v9 = 1;
      --v7;
    }

    while (v7);
  }

  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(a1, a3, a4, a5);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t a1, char **a2, char **a3, char **a4)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v6 = v5 >> 3;
    v7 = *a1;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v4;
      v9 = *(v4 + 1);
      if (v8)
      {
        v10 += (v7 + v10 + (v7 + v10) * (v7 + v10)) >> 1;
      }

      else
      {
        *(a1 + 8) = 1;
      }

      v7 = v9 + ((v10 + v9 + (v10 + v9) * (v10 + v9)) >> 1);
      *a1 = v7;
      v4 += 8;
      v8 = 1;
      --v6;
    }

    while (v6);
  }

  return pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(a1, a3, a4);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t *result, char **a2, char **a3)
{
  v3 = *a2;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = v4 >> 3;
    v6 = *result;
    v7 = *(result + 8);
    do
    {
      v9 = *v3;
      v8 = *(v3 + 1);
      if (v7)
      {
        v9 += (v6 + v9 + (v6 + v9) * (v6 + v9)) >> 1;
      }

      else
      {
        *(result + 8) = 1;
      }

      v6 = v8 + ((v9 + v8 + (v9 + v8) * (v9 + v8)) >> 1);
      *result = v6;
      v3 += 8;
      v7 = 1;
      --v5;
    }

    while (v5);
  }

  v10 = *a3;
  v11 = a3[1] - *a3;
  if (v11)
  {
    v12 = v11 >> 3;
    v13 = *result;
    v14 = *(result + 8);
    do
    {
      v16 = *v10;
      v15 = *(v10 + 1);
      if (v14)
      {
        v16 += (v13 + v16 + (v13 + v16) * (v13 + v16)) >> 1;
      }

      else
      {
        *(result + 8) = 1;
      }

      v13 = v15 + ((v16 + v15 + (v16 + v15) * (v16 + v15)) >> 1);
      *result = v13;
      v10 += 8;
      v14 = 1;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 152));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>,pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath> const&>();
  }

  return *a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::clear(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(a1);
    }

    else if (*a1)
    {
      v4 = 48 * *a1;
      v5 = (a1[4] + 23);
      do
      {
        if (v5[24] < 0)
        {
          operator delete(*(v5 + 1));
        }

        if (*v5 < 0)
        {
          operator delete(*(v5 - 23));
        }

        v5 += 48;
        v4 -= 48;
      }

      while (v4);
    }

    *a1 = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v8 = *(*v4 + 8);
        if (v8)
        {
          v8();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 48 * *a1;
        v7 = (v5 + 23);
        do
        {
          if (v7[24] < 0)
          {
            operator delete(*(v7 + 1));
          }

          if (*v7 < 0)
          {
            operator delete(*(v7 - 23));
          }

          v7 += 48;
          v6 -= 48;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete((v5 - 16));
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6);
  if (a2 > 0x2AAAAAAAAAAAAAALL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 48 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

std::string *std::__uninitialized_fill[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath>(std::string *this, std::string *a2, __int128 *a3)
{
  if (this == a2)
  {
    return this;
  }

  v5 = 0;
  v6 = this;
  do
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v6, *a3, *(a3 + 1));
    }

    else
    {
      v7 = *a3;
      v6->__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&v6->__r_.__value_.__l.__data_ = v7;
    }

    if (*(a3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v6 + 1, *(a3 + 3), *(a3 + 4));
    }

    else
    {
      v8 = *(a3 + 24);
      v6[1].__r_.__value_.__r.__words[2] = *(a3 + 5);
      *&v6[1].__r_.__value_.__l.__data_ = v8;
    }

    v6 += 2;
    v5 -= 48;
  }

  while (v6 != a2);
  return v6;
}

void sub_24754CEFC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v1);
      v1 += 48;
      v3 -= 48;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t std::__uninitialized_copy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,std::__always_false>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = (a3 + v6);
    v8 = (a1 + v6);
    if (*(a1 + v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v7, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      v7->__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v7->__r_.__value_.__l.__data_ = v9;
    }

    v10 = (a3 + v6);
    v11 = a1 + v6;
    if (*(a1 + v6 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(v10 + 1, *(v11 + 24), *(v11 + 32));
    }

    else
    {
      v12 = *(v11 + 24);
      v10[1].__r_.__value_.__r.__words[2] = *(v11 + 40);
      *&v10[1].__r_.__value_.__l.__data_ = v12;
    }

    v6 += 48;
  }

  while (a1 + v6 != v5);
  return v5;
}

void sub_24754D014(void *a1)
{
  __cxa_begin_catch(a1);
  for (; v2; v2 -= 48)
  {
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v1);
    v1 += 48;
  }

  __cxa_rethrow();
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique(pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    if (*(this + 3) || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(this, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfAssetPath]");
      v4 = *(this + 4);
      v5 = *this;
      New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_AllocateNew(this, *this);
      std::__uninitialized_copy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,pxrInternal__aapl__pxrReserved__::SdfAssetPath*,std::__always_false>(v4, v4 + 48 * v5, New);
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(this);
      *(this + 4) = New;
    }
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>::_DecrementIfValid(result);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = **a1;
    do
    {
      --v3;
      v7 = 0;
      v8 = 0;
      pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,std::string const&>(&v7, v2, (v2 + 24));
      v4 = bswap64(0x9E3779B97F4A7C55 * v7);
      v1 = v4 + ((v4 + v1 + (v4 + v1) * (v4 + v1)) >> 1);
      v2 += 48;
    }

    while (v3);
    v5 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v5 = 0;
  }

  return bswap64(v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>::_StreamOut(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::operator==(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 48 * v5 - 48;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 6;
    v7 += 6;
    v9 = v8;
    v8 -= 48;
  }

  while (v9);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfFunctionRef<void ()(std::ostream &)>::_InvokeFn<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_Streamer>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 += 48;
  return MEMORY[0x282206C80](a2, v3);
}

const void **realityio::WrappedCFRef<RIOPxrVtValue *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<RIOPxrSdfAssetPath *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtDictionary,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtDictionary>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtDictionary,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtDictionary>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>>::_Move(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtDictionary>>::_DecrementIfValid(result);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtDictionary,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtDictionary>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>::_PlaceCopy();
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtDictionary>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    v2 = *v1;
    *v1 = 0;
    if (v2)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v2, *(v2 + 8));
      MEMORY[0x24C1A91B0](v2, 0x1020C4062D53EE8);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtDictionary>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 8));
  if (v1 != 1)
  {
    v2 = *a1;
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtDictionary>,pxrInternal__aapl__pxrReserved__::VtDictionary const&>();
  }

  return *a1;
}

_BYTE *RIO_MTLX::SHADER_SEMANTIC(RIO_MTLX *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::SHADER_SEMANTIC(void)::v, "shader");
  }

  return RIO_MTLX::SHADER_SEMANTIC(void)::v;
}

_BYTE *RIO_MTLX::NodeDef::NODE_ATTRIBUTE(RIO_MTLX::NodeDef *this)
{
  {
    std::string::basic_string[abi:ne200100]<0>(RIO_MTLX::NodeDef::NODE_ATTRIBUTE(void)::v, "node");
  }

  return RIO_MTLX::NodeDef::NODE_ATTRIBUTE(void)::v;
}

_BYTE *RIO_MTLX::UnitDef::UNITTYPE_ATTRIBUTE(RIO_MTLX::UnitDef *this)
{
  if ((atomic_load_explicit(qword_27EE52E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_27EE52E40))
  {
    std::string::basic_string[abi:ne200100]<0>(byte_27EE52E78, "unittype");
    __cxa_guard_release(qword_27EE52E40);
  }

  return byte_27EE52E78;
}

_BYTE *RIO_MTLX::NodeDef::getType(RIO_MTLX::NodeDef *this)
{
  RIO_MTLX::InterfaceElement::getActiveOutputs(this, &v5);
  if ((v6 - v5) < 0x11)
  {
    if (v6 - v5 == 16)
    {
      v2 = (*(**v5 + 56))();
    }

    else
    {
      v2 = RIO_MTLX::DEFAULT_TYPE_STRING(v1);
    }
  }

  else
  {
    v2 = RIO_MTLX::MULTI_OUTPUT_TYPE_STRING(v1);
  }

  v3 = v2;
  v7 = &v5;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v3;
}

void sub_24754DA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void RIO_MTLX::NodeDef::getImplementation(std::string *a1@<X0>, uint64_t a2@<X1>, RIO_MTLX::InterfaceElement **a3@<X8>)
{
  v58[2] = *MEMORY[0x277D85DE8];
  RIO_MTLX::Element::getDocument(a1, &v51);
  v6 = v51;
  RIO_MTLX::Element::getQualifiedName(a1, a1 + 2, &__p);
  RIO_MTLX::Document::getMatchingImplementations(v6, &__p.__r_.__value_.__l.__data_, &v53);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  RIO_MTLX::Element::getDocument(a1, &__p);
  RIO_MTLX::Document::getMatchingImplementations(__p.__r_.__value_.__l.__data_, &a1[2].__r_.__value_.__l.__data_, &v51);
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v8 = v51;
  v7 = v52;
  v9 = (v52 - v51);
  v10 = (v52 - v51) >> 4;
  if (v10 >= 1)
  {
    v11 = v54;
    if (v55 - v54 >= v9)
    {
      if (v51 == v52)
      {
        v14 = v54;
      }

      else
      {
        v14 = v54;
        do
        {
          *v11 = v8->__vftable;
          shared_owners = v8->__shared_owners_;
          v11[1] = shared_owners;
          if (shared_owners)
          {
            atomic_fetch_add_explicit((shared_owners + 8), 1uLL, memory_order_relaxed);
          }

          v8 = (v8 + 16);
          v11 += 2;
          v14 += 16;
        }

        while (v8 != v7);
      }

      v54 = v14;
    }

    else
    {
      v12 = v10 + ((v54 - v53) >> 4);
      if (v12 >> 60)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      if ((v55 - v53) >> 3 > v12)
      {
        v12 = (v55 - v53) >> 3;
      }

      if ((v55 - v53) >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      v58[1] = &v53;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&v53, v13);
      }

      v16 = 16 * ((v54 - v53) >> 4);
      v58[0] = 0;
      v17 = &v9[v16];
      v18 = v16;
      do
      {
        *v18 = v8->__vftable;
        v19 = v8->__shared_owners_;
        *(v18 + 1) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        v18 += 16;
        v8 = (v8 + 16);
      }

      while (v18 != v17);
      memcpy(v17, v11, v54 - v11);
      v20 = &v17[v54 - v11];
      v54 = v11;
      v21 = v11 - v53;
      v22 = (v16 - (v11 - v53));
      memcpy(v22, v53, v21);
      v23 = v53;
      v24 = v55;
      v53 = v22;
      v54 = v20;
      v55 = v58[0];
      __p.__r_.__value_.__r.__words[2] = v23;
      v58[0] = v24;
      __p.__r_.__value_.__r.__words[0] = v23;
      __p.__r_.__value_.__l.__size_ = v23;
      std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(&__p.__r_.__value_.__l.__data_);
    }
  }

  v25 = *(a2 + 23);
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a2 + 8);
  }

  if (!v25)
  {
    if (v53 == v54)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      v31 = *(v53 + 1);
      *a3 = *v53;
      a3[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
      }
    }

    goto LABEL_78;
  }

  RIO_MTLX::Element::getDocument(a1, &__p);
  v26 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((__p.__r_.__value_.__r.__words[0] + 96), a2);
  v27 = v26;
  if (!v26)
  {
    v29 = 0;
    goto LABEL_48;
  }

  v28 = v26[5];
  v29 = v27[6];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v28)
  {
LABEL_48:
    v49 = 0;
    v50 = 0;
    if (!v29)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::TargetDef>(v28, &v49);
  if (v29)
  {
LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

LABEL_39:
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  v30 = v49;
  if (v49)
  {
    if (*(v49 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v49 + 48), *(v49 + 56));
    }

    else
    {
      __p = *(v49 + 48);
    }

    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v46, &__p, v58, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    InheritString = RIO_MTLX::Element::getInheritString(v30);
    RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Element>(v30, InheritString, &__p);
    for (i = __p.__r_.__value_.__r.__words[0]; __p.__r_.__value_.__r.__words[0]; i = __p.__r_.__value_.__r.__words[0])
    {
      while (1)
      {
        std::vector<std::string>::push_back[abi:ne200100](&v46, (i + 48));
        v34 = __p.__r_.__value_.__r.__words[0];
        v35 = RIO_MTLX::Element::getInheritString(__p.__r_.__value_.__l.__data_);
        RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Element>(v34, v35, &v56);
        v36 = v56;
        v56 = 0uLL;
        size = __p.__r_.__value_.__l.__size_;
        *&__p.__r_.__value_.__l.__data_ = v36;
        if (size)
        {
          break;
        }

        i = v36;
        if (!v36)
        {
          goto LABEL_61;
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](size);
      if (*(&v56 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
      }
    }

LABEL_61:
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    v38 = v46;
    v39 = v47;
    if (v46 != v47)
    {
      while (2)
      {
        v40 = v53;
        v41 = v54;
        while (v40 != v41)
        {
          v43 = *v40;
          v42 = v40[1];
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          Target = RIO_MTLX::InterfaceElement::getTarget(v43);
          if (RIO_MTLX::targetStringsMatch(Target, v38))
          {
            *a3 = v43;
            a3[1] = v42;
            goto LABEL_75;
          }

          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }

          v40 += 2;
        }

        v38 += 24;
        if (v38 != v39)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_75:
  __p.__r_.__value_.__r.__words[0] = &v46;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

LABEL_78:
  __p.__r_.__value_.__r.__words[0] = &v51;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = &v53;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v45 = *MEMORY[0x277D85DE8];
}

void sub_24754DF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  a10 = &a15;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a15 = &a18;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t *RIO_MTLX::InterfaceElement::getTarget(RIO_MTLX::InterfaceElement *this)
{
  v2 = RIO_MTLX::InterfaceElement::TARGET_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t RIO_MTLX::NodeDef::validate(RIO_MTLX::TypedElement *a1, std::string *a2)
{
  v10 = 1;
  v4 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(a1);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, v4) == 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Nodedef should not have a type but an explicit output");
  RIO_MTLX::Element::validateRequire(a1, v5, &v10, a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = RIO_MTLX::Element::validate(a1, a2);
  return (v6 & v10);
}

void sub_24754E160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL RIO_MTLX::NodeDef::isVersionCompatible(RIO_MTLX::InterfaceElement *a1, uint64_t *a2)
{
  VersionString = RIO_MTLX::InterfaceElement::getVersionString(a1);
  v5 = *(VersionString + 23);
  if (v5 >= 0)
  {
    v6 = *(VersionString + 23);
  }

  else
  {
    v6 = VersionString[1];
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a2[1];
  }

  if (v6 == v7)
  {
    if (v5 < 0)
    {
      VersionString = *VersionString;
    }

    v9 = *a2;
    v10 = v8 >= 0 ? a2 : *a2;
    VersionString = memcmp(VersionString, v10, v6);
    if (!VersionString)
    {
      return 1;
    }
  }

  v11 = RIO_MTLX::InterfaceElement::DEFAULT_VERSION_ATTRIBUTE(VersionString);
  if (!RIO_MTLX::Element::getTypedAttribute<BOOL>(a1, v11))
  {
    return 0;
  }

  v12 = *(a2 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = a2[1];
  }

  return !v12;
}

uint64_t *RIO_MTLX::InterfaceElement::getVersionString(RIO_MTLX::InterfaceElement *this)
{
  v2 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

void RIO_MTLX::NodeDef::getDeclaration(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v3, (a1 + 8));
  RIO_MTLX::Element::asA<RIO_MTLX::NodeDef>(v3, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_24754E2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeDef>(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 248);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  RIO_MTLX::Element::getQualifiedName(a1, a2, &__p);
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(v8, &__p.__r_.__value_.__l.__data_, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    v9 = v12;
    *a3 = v11;
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeDef>(v8, &a2->__r_.__value_.__l.__data_, a3);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_24754E3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *RIO_MTLX::InterfaceElement::getNodeDefString(RIO_MTLX::InterfaceElement *this)
{
  v2 = RIO_MTLX::InterfaceElement::NODE_DEF_ATTRIBUTE(this);
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(this + 20, v2);
  if (v3)
  {
    return (v3 + 5);
  }

  return RIO_MTLX::EMPTY_STRING(0);
}

uint64_t RIO_MTLX::Implementation::validate(RIO_MTLX::InterfaceElement *a1, std::string *a2)
{
  v10 = 1;
  v4 = RIO_MTLX::InterfaceElement::VERSION_ATTRIBUTE(a1);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(a1 + 20, v4) == 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "Implementation elements do not support version strings");
  RIO_MTLX::Element::validateRequire(a1, v5, &v10, a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = RIO_MTLX::Element::validate(a1, a2);
  return (v6 & v10);
}

void sub_24754E508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double RIO_MTLX::Implementation::getDeclaration@<D0>(RIO_MTLX::InterfaceElement *a1@<X0>, _OWORD *a2@<X8>)
{
  NodeDefString = RIO_MTLX::InterfaceElement::getNodeDefString(a1);
  RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::NodeDef>(a1, NodeDefString, &v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

void RIO_MTLX::UnitTypeDef::getUnitDefs(RIO_MTLX::UnitTypeDef *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  RIO_MTLX::Element::getDocument(this, &v34);
  v4 = v34;
  v6 = RIO_MTLX::EMPTY_STRING(v5);
  v7 = *(v4 + 136);
  v8 = *(v4 + 144);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (v7 != v8)
  {
    v9 = v6;
    do
    {
      v11 = *v7;
      v10 = v7[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RIO_MTLX::Element::asA<RIO_MTLX::UnitDef>(v11, &v39);
      if (v39)
      {
        v12 = *(v9 + 23);
        v13 = v12 >= 0 ? *(v9 + 23) : v9[1];
        if (!v13)
        {
          goto LABEL_20;
        }

        v14 = *(v11 + 47);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v11 + 32);
        }

        if (v14 == v13)
        {
          v18 = *(v11 + 24);
          v17 = v11 + 24;
          v16 = v18;
          v19 = (v15 >= 0 ? v17 : v16);
          v20 = v12 >= 0 ? v9 : *v9;
          if (!memcmp(v19, v20, v13))
          {
LABEL_20:
            std::vector<std::shared_ptr<RIO_MTLX::UnitDef>>::push_back[abi:ne200100](&v36, &v39);
          }
        }
      }

      if (*(&v39 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v7 += 2;
    }

    while (v7 != v8);
  }

  v21 = v35;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v22 = v36;
  v23 = v37;
  if (v36 != v37)
  {
    v24 = (this + 48);
    do
    {
      v26 = *v22;
      v25 = v22[1];
      *&v39 = *v22;
      *(&v39 + 1) = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      RIO_MTLX::UnitDef::UNITTYPE_ATTRIBUTE(v21);
      v27 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v26 + 160), byte_27EE52E78);
      if (v27)
      {
        v21 = (v27 + 5);
      }

      else
      {
        v21 = RIO_MTLX::EMPTY_STRING(0);
      }

      v28 = *(v21 + 23);
      if (v28 >= 0)
      {
        v29 = *(v21 + 23);
      }

      else
      {
        v29 = v21[1];
      }

      v30 = *(this + 71);
      v31 = v30;
      if ((v30 & 0x80u) != 0)
      {
        v30 = *(this + 7);
      }

      if (v29 == v30)
      {
        if (v28 < 0)
        {
          v21 = *v21;
        }

        v32 = *v24;
        if (v31 >= 0)
        {
          v33 = this + 48;
        }

        else
        {
          v33 = *v24;
        }

        v21 = memcmp(v21, v33, v29);
        if (!v21)
        {
          std::vector<std::shared_ptr<RIO_MTLX::UnitDef>>::push_back[abi:ne200100](a2, &v39);
        }
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      v22 += 2;
    }

    while (v22 != v23);
  }

  *&v39 = &v36;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v39);
}

void sub_24754E774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<RIO_MTLX::UnitDef>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}