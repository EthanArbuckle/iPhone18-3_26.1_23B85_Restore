void anonymous namespace::GetKernel(_anonymous_namespace_ *this)
{
  {
  }
}

uint64_t std::pair<int,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::pair<int,applesauce::CF::DataRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278DBC6C8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_24348D6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void sub_24348D8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_24348EAD8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void sub_24348F2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24348FC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_243490358(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_243490A84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_243490BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  applesauce::CF::ArrayRef::~ArrayRef((v12 - 24));
  *(v12 - 24) = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v12 - 24));

  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<std::string>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (v2 != v1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 3);
    if (!(v3 >> 61))
    {
      v15 = &v10;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v3);
    }

    std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
  }

  std::vector<void const*>::vector[abi:ne200100](&values, v11 - v10);
  v4 = v10;
  v5 = v11;
  v6 = values;
  if (v10 != v11)
  {
    do
    {
      v7 = *v4++;
      *v6++ = v7;
    }

    while (v4 != v5);
    v6 = values;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v6, v14);
  if (values)
  {
    v14 = values;
    operator delete(values);
  }

  values = &v10;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&values);
  return CFArray;
}

void sub_243490E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  a9 = &a16;
  std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

CFStringRef std::allocator_traits<std::allocator<applesauce::CF::StringRef>>::construct[abi:ne200100]<applesauce::CF::StringRef,std::string,void,0>(CFStringRef result, const UInt8 *a2)
{
  v2 = a2;
  p_isa = &result->isa;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    *p_isa = result;
    if (!result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    result->isa = 0;
  }

  return result;
}

void std::vector<applesauce::CF::StringRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::StringRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::StringRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::StringRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a2);
    }

    std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2434912B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x277CBF128]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_243491BE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2434924CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, int a22, const void *a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  __cxa_free_exception(v35);

  if (a21 == 1)
  {
    *(v36 - 160) = &a18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v36 - 160));
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a23);

  _Unwind_Resume(a1);
}

void *applesauce::CF::ArrayRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFArrayGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_2434926B8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a4);
    }

    std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
  }
}

_BYTE *applesauce::CF::details::CFString_get_value<true>(UInt8 *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(theString);
    maxBufLen = 0;
    v10.location = 0;
    v10.length = Length;
    CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    std::string::basic_string[abi:ne200100](a1, maxBufLen);
    if ((a1[23] & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v11.location = 0;
    v11.length = Length;
    return CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
  }
}

void sub_2434928F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *a1, size_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  a1[23] = a2;
  if (a2)
  {
    bzero(a1, a2);
  }

  a1[a2] = 0;
  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double applesauce::CF::convert_as<std::string,0>(uint64_t a1, const __CFString *a2)
{
  if (a2 && (TypeID = CFStringGetTypeID(), TypeID == CFGetTypeID(a2)))
  {
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    if (CStringPtr)
    {
      std::string::basic_string[abi:ne200100]<0>(&v9, CStringPtr);
    }

    else
    {
      Length = CFStringGetLength(a2);
      maxBufLen = 0;
      v12.location = 0;
      v12.length = Length;
      CFStringGetBytes(a2, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      std::string::basic_string[abi:ne200100](&v9, maxBufLen);
      if (v10 >= 0)
      {
        v8 = &v9;
      }

      else
      {
        v8 = v9;
      }

      v13.location = 0;
      v13.length = Length;
      CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
    }

    result = *&v9;
    *a1 = v9;
    *(a1 + 16) = v10;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_243493834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_free_exception(v31);

  if (v30)
  {
    operator delete(v30);
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a23);

  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2434939D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a2);
  }

  std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_2434C4D90);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_2434C4DA0), xmmword_2434C4DB0);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

void sub_243494994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::convert_as<std::vector<applesauce::CF::DictionaryRef>,0>(char *a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Count = CFArrayGetCount(a2);
    v18 = 0uLL;
    v19 = 0;
    if (Count << 32)
    {
      if (!(Count >> 61))
      {
        v24 = &v18;
        std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(Count);
      }

LABEL_28:
      std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
    }

    if (Count < 1)
    {
LABEL_21:
      *a1 = v18;
      *(a1 + 2) = v19;
      v19 = 0;
      v18 = 0uLL;
      a1[24] = 1;
    }

    else
    {
      v6 = 0;
      v17 = *a1;
      v7 = a1[24];
      v8 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        v10 = ValueAtIndex;
        if (!ValueAtIndex)
        {
          goto LABEL_24;
        }

        CFRetain(ValueAtIndex);
        v11 = CFGetTypeID(v10);
        if (v11 != CFDictionaryGetTypeID())
        {
          break;
        }

        v12 = *(&v18 + 1);
        if (*(&v18 + 1) >= v19)
        {
          v14 = (*(&v18 + 1) - v18) >> 3;
          if ((v14 + 1) >> 61)
          {
            a1[24] = v7;
            *a1 = v17;
            goto LABEL_28;
          }

          v15 = (v19 - v18) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v19 - v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          v24 = &v18;
          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v16);
          }

          v20 = 0;
          v21 = (8 * v14);
          v23 = 0;
          *v21 = v10;
          v22 = 8 * v14 + 8;
          std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v18, &v20);
          v13 = *(&v18 + 1);
          std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v20);
        }

        else
        {
          **(&v18 + 1) = v10;
          v13 = v12 + 8;
        }

        *(&v18 + 1) = v13;
        if (v8 == ++v6)
        {
          goto LABEL_21;
        }
      }

      CFRelease(v10);
LABEL_24:
      a1[24] = 0;
      *a1 = 0;
    }

    v20 = &v18;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&v20);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_243494D74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  v11[24] = v12;
  *v11 = a11;
  __clang_call_terminate(a1);
}

void std::vector<applesauce::CF::DictionaryRef>::__init_with_size[abi:ne200100]<applesauce::CF::DictionaryRef*,applesauce::CF::DictionaryRef*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(a4);
    }

    std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24349564C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::DictionaryRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFDictionaryGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_2434957DC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_24349651C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<applesauce::CF::TypeRefPair>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(a2);
    }

    std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t **a1)
{
  v2 = (a1[1] - *a1) >> 4;
  keys = 0;
  v33 = 0;
  v34 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v30 = 0;
  v31 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v4 = *a1;
  v3 = a1[1];
  v5 = keys;
  v6 = values;
  v28 = v3;
  if (v4 != v3)
  {
    v27 = v2;
    v7 = v33;
    v8 = v34;
    v10 = v30;
    v9 = v31;
    do
    {
      v11 = *v4;
      if (!*v4 || !v4[1])
      {
        keys = v5;
        values = v6;
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245D37300](exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v7 >= v8)
      {
        v12 = v7 - v5;
        v13 = (v7 - v5) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v5) >> 2 > v14)
        {
          v14 = (v8 - v5) >> 2;
        }

        if (v8 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v5, v12);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v4[1];
      if (v10 >= v9)
      {
        v18 = v10 - v6;
        v19 = (v10 - v6) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v5;
          values = v6;
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v6) >> 2 > v20)
        {
          v20 = (v9 - v6) >> 2;
        }

        if (v9 - v6 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v6, v18);
        if (v6)
        {
          operator delete(v6);
        }

        v6 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v4 += 2;
    }

    while (v4 != v28);
    v33 = v7;
    v34 = v8;
    v31 = v9;
    keys = v5;
    values = v6;
    v30 = v10;
    v2 = v27;
  }

  v23 = CFDictionaryCreate(0, v5, v6, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    v26 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v26, "Could not construct");
    __cxa_throw(v26, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_243496928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,unsigned int const&>(CFStringRef *a1, const UInt8 *a2, int *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  valuePtr = *a3;
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  a1[1] = v8;
  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v11, "Could not construct");
    __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_243496AA4(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
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
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a2);
    }

    std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_243497704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *applesauce::CF::StringRef::from_get(void *this, CFTypeRef cf)
{
  v2 = this;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    this = CFStringGetTypeID();
    if (v4 != this)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    *this = 0;
  }

  return this;
}

void sub_243497834(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

void sub_243498274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27)
{
  if (a2)
  {
    __cxa_free_exception(v27);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if (!a27)
    {
      JUMPOUT(0x243497D6CLL);
    }

    JUMPOUT(0x243497D60);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_243498634(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ads::Kernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285635C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D37450);
}

uint64_t std::weak_ptr<ads::Kernel>::~weak_ptr(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void InCider::InstanceOpt(InCider *this)
{
  {
    __cxa_atexit(std::optional<InCider>::~optional, &InCider::InstanceOpt(void)::theInstance, &dword_24348C000);
  }
}

void InCider::~InCider(id **this)
{
  v8 = *MEMORY[0x277D85DE8];
  util::server_log([**this invalidate]);
  v2 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "InCider.mm";
    v6 = 1024;
    v7 = 909;
    _os_log_impl(&dword_24348C000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d InCider object destroyed", &v4, 0x12u);
  }

  std::unique_ptr<InCider::ServiceAttributes>::~unique_ptr[abi:ne200100](this);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_243498864(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

id **std::unique_ptr<InCider::ServiceAttributes>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x245D37450](v2, 0x80C40803F642BLL);
  }

  return a1;
}

void std::optional<InCider>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    InCider::~InCider(a1);
  }
}

BOOL icp::IsSimulatedDevice(icp *this)
{
  v1 = this;
  ads::Kernel::getADSDevices(&v5);
  v2 = v6;
  v3 = v5;
  if (v5 != v6)
  {
    v3 = v5;
    while (*v3 != v1)
    {
      if (++v3 == v6)
      {
        v3 = v6;
        break;
      }
    }
  }

  if (v5)
  {
    operator delete(v5);
  }

  return v3 != v2;
}

uint64_t ads::Kernel::getADSPluginAOID(ads::Kernel *this)
{
  if (!ads::Kernel::getADSPluginAOID(void)::value)
  {
    v13[0].mSelector = 1;
    __p = 0x676C6F6265414453;
    LODWORD(v15) = 0;
    v2 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,unsigned int,void>::Get(&v13[0].mSelector, &__p);
    *(&v5 + 1) = v3;
    *&v5 = v2;
    v4 = v5 >> 32;
    if ((v4 & 0x100000000) != 0)
    {
      if (v4)
      {
        v18 = 1;
        *&v13[0].mSelector = 0x676C6F62706C6723;
        v13[0].mElement = 0;
        ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,std::vector<unsigned int>,void>::Get(&__p, &v18, v13);
        LOBYTE(v13[0].mSelector) = 0;
        v6 = v17;
        if (v17)
        {
          v7 = v15;
          v8 = v16;
          *&v13[0].mSelector = v15;
          __p = 0;
          v15 = 0;
          v16 = 0;
          p_p = v13;
        }

        else
        {
          v7 = 0;
          v8 = 0;
          __p = 0;
          v15 = 0;
          p_p = &__p;
          v16 = 0;
        }

        *p_p = 0;
        p_p[1] = 0;
        p_p[2] = 0;
        if (__p)
        {
          operator delete(__p);
        }

        if (v6 && *&v13[0].mSelector)
        {
          operator delete(*&v13[0].mSelector);
        }

        v10 = v7;
        if (v7 != v8)
        {
          v10 = v7;
          while (1)
          {
            v11 = *v10;
            if (*v10)
            {
              __p = 0x676C6F626465764DLL;
              LODWORD(v15) = 0;
              if (AudioObjectHasProperty(v11, &__p))
              {
                break;
              }
            }

            if (++v10 == v8)
            {
              goto LABEL_21;
            }
          }
        }

        if (v10 == v8)
        {
LABEL_21:
          v12 = 0;
        }

        else
        {
          v12 = *v10;
        }

        ads::Kernel::getADSPluginAOID(void)::value = v12;
        if (v7)
        {
          operator delete(v7);
        }
      }
    }
  }

  return ads::Kernel::getADSPluginAOID(void)::value;
}

BOOL ads::Device::IsConnected(ads::Device *this)
{
  ads::Kernel::getADSDevices(&v22);
  v2 = v22;
  v3 = v22;
  if (v22 != v23)
  {
    v3 = v22;
    while (*v3 != *(this + 2))
    {
      if (++v3 == v23)
      {
        goto LABEL_25;
      }
    }
  }

  if (v3 == v23)
  {
LABEL_25:
    v13 = 0;
    goto LABEL_33;
  }

  ca::hal::GetPropertyOpt<1969841184u,ca::hal::detail::HALPropertyPolicy>(&v18, *(this + 2), 1735159650, 0);
  cf = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = v19;
  p_cf = &cf;
  if (v19)
  {
    p_cf = &v18;
  }

  v6 = *p_cf;
  *p_cf = 0;
  if (!v6)
  {
    v16 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v16, "Could not construct");
    __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::convert_to<std::string,0>(__p, v6);
  v7 = *(this + 39);
  if (v7 >= 0)
  {
    v8 = *(this + 39);
  }

  else
  {
    v8 = *(this + 3);
  }

  v9 = v21;
  v10 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = this + 16;
    }

    else
    {
      v11 = *(this + 2);
    }

    if ((v21 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = memcmp(v11, v12, v8) == 0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = 0;
  if (v21 < 0)
  {
LABEL_27:
    operator delete(__p[0]);
  }

LABEL_28:
  CFRelease(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4 && v18)
  {
    CFRelease(v18);
  }

LABEL_33:
  if (v2)
  {
    operator delete(v2);
  }

  return v13;
}

void ads::Kernel::getADSDevices(ads::Kernel *this)
{
  ADSPluginAOID = ads::Kernel::getADSPluginAOID(this);
  if (ADSPluginAOID)
  {
    v15 = ADSPluginAOID;
    *&v8.mSelector = 0x676C6F6264657623;
    v8.mElement = 0;
    ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,std::vector<unsigned int>,void>::Get(&__p, &v15, &v8);
    LOBYTE(v8.mSelector) = 0;
    v3 = v14;
    if (v14 == 1)
    {
      v4 = v12;
      *&v8.mSelector = v11;
      v9 = v13;
      p_p = &v8;
    }

    else
    {
      v4 = 0;
      p_p = &__p;
    }

    __p = 0;
    v11 = 0;
    v12 = 0;
    v6 = *p_p;
    v7 = p_p[2];
    p_p[1] = 0;
    p_p[2] = 0;
    *p_p = 0;
    *this = v6;
    *(this + 1) = v4;
    *(this + 2) = v7;
    if (__p)
    {
      operator delete(__p);
    }

    if (v3)
    {
      if (*&v8.mSelector)
      {
        operator delete(*&v8.mSelector);
      }
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void ca::hal::GetPropertyOpt<1969841184u,ca::hal::detail::HALPropertyPolicy>(_BYTE *a1, AudioObjectID a2, uint64_t a3, AudioObjectPropertyElement a4)
{
  v9 = a2;
  *&inAddress.mSelector = (a3 << 32) | 0x75696420;
  inAddress.mElement = a4;
  ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::StringRef,void>::Get(v5, &v9, &inAddress, 0, 0);
  *a1 = 0;
  a1[8] = 0;
  if (v7 == 1)
  {
    *a1 = v6;
    a1[8] = 1;
  }
}

_BYTE *applesauce::CF::convert_to<std::string,0>(UInt8 *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

void std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::StringRef,void>::Get(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, const AudioObjectPropertyAddress *a4, const void *a5)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a2, inAddress, a4, a5, v10);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v12 = outData;
        if (outData)
        {
          v13 = CFGetTypeID(outData);
          if (v13 != CFStringGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          CFRetain(v12);
          v14 = CFGetTypeID(v12);
          if (v14 != CFStringGetTypeID())
          {
            v16 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v16, "Could not construct");
            __cxa_throw(v16, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          *(a1 + 16) = 1;
          *(a1 + 8) = v12;
          CFRelease(v12);
        }

        else
        {
          *(a1 + 16) = 1;
          *(a1 + 8) = 0;
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_2434992BC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

uint64_t ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(ca::hal::detail::HALPropertyPolicy *this, const AudioObjectPropertyAddress *a2, const AudioObjectPropertyAddress *a3, const void *a4, const void *a5)
{
  outDataSize = 0;
  if (AudioObjectGetPropertyDataSize(this, a2, a3, a4, &outDataSize))
  {
    return 0;
  }

  else
  {
    return outDataSize;
  }
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,std::vector<unsigned int>,void>::Get(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    v10 = 2003329396;
    LOBYTE(__p[0]) = 0;
    v13 = 0;
    PropertyDataSize = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a2, inAddress, 0, 0, v6);
    ioDataSize = PropertyDataSize;
    if (PropertyDataSize)
    {
      if (PropertyDataSize >= 4)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(PropertyDataSize >> 2);
      }

      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, 0);
      v10 = PropertyData;
      if (PropertyData)
      {
        *a1 = PropertyData;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v12 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, 0, 0, 0);
        *a1 = v10;
        *(a1 + 8) = *__p;
        *(a1 + 24) = v12;
        *(a1 + 32) = 1;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 32) = 1;
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
  }
}

unint64_t ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,unsigned int,void>::Get(AudioObjectID *a1, const AudioObjectPropertyAddress *a2)
{
  if (AudioObjectHasProperty(*a1, a2))
  {
    ioDataSize[0] = 2003329396;
    *&ioDataSize[1] = 0;
    PropertyData = 2003329396;
    v6 = 0;
    ioDataSize[0] = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a1, a2, 0, 0, v4);
    if (ioDataSize[0])
    {
      outData[0] = 0;
      PropertyData = AudioObjectGetPropertyData(*a1, a2, 0, 0, ioDataSize, outData);
      if (PropertyData)
      {
        v6 = 0;
      }

      else
      {
        v6 = outData[0];
      }
    }
  }

  else
  {
    v6 = 0;
    PropertyData = 2003332927;
  }

  return PropertyData | (v6 << 32);
}

uint64_t ads::Device::Disconnect(CFIndex *this)
{
  v23 = *MEMORY[0x277D85DE8];
  ADSPluginAOID = ads::Kernel::getADSPluginAOID(this);
  if (!ADSPluginAOID)
  {
    v10 = 1937010544;
    goto LABEL_19;
  }

  v3 = ADSPluginAOID;
  IsConnected = ads::Device::IsConnected(this);
  if (!IsConnected)
  {
    v10 = 1852797029;
    goto LABEL_19;
  }

  util::server_log(IsConnected);
  v5 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v6 = this + 2;
    if (*(this + 39) < 0)
    {
      v6 = *v6;
    }

    v7 = *(this + 2);
    buf.mSelector = 136315906;
    *&buf.mScope = "ADS_Management_Kernel.mm";
    v17 = 1024;
    v18 = 140;
    v19 = 2080;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_24348C000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disconnecting device named %s with ID %u.", &buf, 0x22u);
  }

  v8 = *(this + 39);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = (this + 2);
LABEL_13:
    v11 = CFStringCreateWithBytes(0, v9, v8, 0x8000100u, 0);
    v12 = v11;
    if (!v11)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245D37300](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    CFRetain(v11);
    goto LABEL_15;
  }

  v9 = this[2];
  if (v9)
  {
    v8 = this[3];
    goto LABEL_13;
  }

  v12 = 0;
LABEL_15:
  strcpy(&buf, "Mvedbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  v10 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::TypeRef,void>::Set(v3, &buf, &ads::Device::Disconnect(void)::kDestroy, v12);
  if (v12)
  {
    CFRelease(v12);
    CFRelease(v12);
  }

  if (!v10)
  {
    usleep(0x186A0u);
    v10 = 0;
  }

LABEL_19:
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_243499888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  if (a2)
  {
    applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ca::hal::SetPropertyStat<1698776147u,ca::hal::detail::HALPropertyPolicy>(uint64_t a1, AudioObjectPropertyElement a2, void *inData)
{
  *&v4.mSelector = (a1 << 32) | 0x65414453;
  v4.mElement = a2;
  return AudioObjectSetPropertyData(1u, &v4, 0, 0, 4u, inData);
}

void applesauce::dispatch::v1::queue::~queue(id *this)
{
  v2 = *this;
  *this = 0;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ads::Device>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,ads::Device>,0>(uint64_t a1)
{
  ads::Device::~Device((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void ads::Device::~Device(ads::Device *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

ads::Kernel *ads::Kernel::Kernel(ads::Kernel *this)
{
  v11 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = 1065353216;
  *(this + 7) = dispatch_queue_create("ADSKernelQueue", 0);
  *&v8.mSelector = 0x676C6F6265414453;
  v8.mElement = 0;
  if (!AudioObjectHasProperty(1u, &v8))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Device does not have ADS");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278DBC6D0, MEMORY[0x277D82610]);
  }

  v8.mSelector = 1;
  v2 = ca::hal::SetPropertyStat<1698776147u,ca::hal::detail::HALPropertyPolicy>(1735159650, 0, &v8);
  if (v2)
  {
    v7 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v7, "Device could not enable ADS");
    __cxa_throw(v7, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  util::server_log(v2);
  v3 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v8.mSelector = 136315394;
    *&v8.mScope = "ADS_Management_Kernel.mm";
    v9 = 1024;
    v10 = 177;
    _os_log_impl(&dword_24348C000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ADS enabled and ads::Kernel object constructed", &v8, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_243499C64(_Unwind_Exception *a1)
{
  applesauce::dispatch::v1::queue::~queue(v3);
  std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::~__hash_table(v2);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t ads::Kernel::disconnectAllADSDevices(ads::Kernel *this)
{
  v5 = this;
  v1 = *(this + 7);
  v2 = applesauce::dispatch::v1::queue::get(v1);
  v7 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel23disconnectAllADSDevicesEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v7;
  block[5] = &v5;
  dispatch_sync(v2, block);
  v3 = v7;

  return v3;
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel23disconnectAllADSDevicesEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = *(*v2 + 32);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = 0;
  do
  {
    v6 = ads::Device::Disconnect(v4 + 5);
    if (v6)
    {
      v5 = v6;
    }

    v4 = *v4;
  }

  while (v4);
  if (!v5)
  {
LABEL_16:
    if (*(v3 + 40))
    {
      std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::__deallocate_node(*(v3 + 32));
      *(v3 + 32) = 0;
      v7 = *(v3 + 24);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(*(v3 + 16) + 8 * i) = 0;
        }
      }

      v5 = 0;
      *(v3 + 40) = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  **(a1 + 32) = v5;
}

void ads::Kernel::~Kernel(id *this)
{
  v16 = *MEMORY[0x277D85DE8];
  ads::Kernel::disconnectAllADSDevices(this);
  v12 = 0;
  v2 = ca::hal::SetPropertyStat<1698776147u,ca::hal::detail::HALPropertyPolicy>(1735159650, 0, &v12);
  v3 = v2;
  util::server_log(v2);
  v4 = util::server_log(void)::sLogCat;
  v5 = util::server_log(void)::sLogCat;
  if (v3)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 136315394;
    v13 = "ADS_Management_Kernel.mm";
    v14 = 1024;
    v15 = 188;
    v6 = "%25s:%-5d ads::Kernel object destroyed, but could not disable ADS";
    v7 = v4;
    v8 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = 136315394;
    v13 = "ADS_Management_Kernel.mm";
    v14 = 1024;
    v15 = 193;
    v6 = "%25s:%-5d ADS disabled and ads::Kernel object destroyed";
    v7 = v4;
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&dword_24348C000, v7, v8, v6, &v12, 0x12u);
LABEL_7:
  v9 = this[7];
  this[7] = 0;

  std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::~__hash_table((this + 2));
  v10 = this[1];
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel15getADSDeviceMapEvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v1 = *(**(a1 + 40) + 32);
  if (v1)
  {
    v2 = *(v1 + 48);
    std::__string_hash<char>::operator()[abi:ne200100](v1 + 16);
    operator new();
  }

  v3 = *(a1 + 32);
  if (*(v3 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(*(v3 + 16));
    *(v3 + 16) = 0;
    v4 = *(v3 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*v3 + 8 * i) = 0;
      }
    }

    *(v3 + 24) = 0;
  }

  v6 = *v3;
  *v3 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  *(v3 + 16) = 0;
  *(v3 + 8) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(0);
}

void sub_24349A4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](1, v3);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](void *a1, void *a2)
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

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel14getAOIDForUUIDENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = *v2;
  v3 = v2[1];
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *v3, *(v3 + 8));
  }

  else
  {
    v11 = *v3;
  }

  DeviceForUUID = ads::Kernel::findDeviceForUUID(v4, &v11);
  v6 = DeviceForUUID;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12[4] = 0;
    v12[8] = 0;
    v8 = 560227702;
    LOBYTE(v9) = 0;
    goto LABEL_9;
  }

  if (!DeviceForUUID)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = *(v6 + 12);
  *v12 = 0;
  *&v12[4] = v7;
  v8 = 0;
  *&v12[4] = *&v12[4] | 0x100000000;
  v9 = HIDWORD(*&v12[4]);
LABEL_9:
  *v12 = v8;
  v10 = *(a1 + 32);
  *v10 = *v12;
  *(v10 + 8) = v9;
}

uint64_t *ads::Kernel::findDeviceForUUID(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = applesauce::dispatch::v1::queue::get(v4);
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (!v6)
  {
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      return v6;
    }

LABEL_29:
    operator delete(__p.__r_.__value_.__l.__data_);
    return v6;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  do
  {
    if (*(v6 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, v6[7], v6[8]);
    }

    else
    {
      v16 = *(v6 + 7);
    }

    v10 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    v11 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v16.__r_.__value_.__l.__size_;
    }

    if (v10 == size)
    {
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v16;
      }

      else
      {
        v12 = v16.__r_.__value_.__r.__words[0];
      }

      v13 = memcmp(v12, p_p, size) == 0;
      if (v11 < 0)
      {
LABEL_23:
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = 0;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_23;
      }
    }

    if (v13)
    {
      break;
    }

    v6 = *v6;
  }

  while (v6);
  if (v7 < 0)
  {
    goto LABEL_29;
  }

  return v6;
}

void ads::Kernel::getUUIDForAOID(ads::Kernel *this, uint64_t a2, int a3)
{
  v6 = a3;
  v5[0] = a2;
  v5[1] = &v6;
  v4 = applesauce::dispatch::v1::queue::get(*(a2 + 56));
  *this = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel14getUUIDForAOIDEjE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this;
  block[5] = v5;
  dispatch_sync(v4, block);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel14getUUIDForAOIDEjE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  DeviceForAOID = ads::Kernel::findDeviceForAOID(**(a1 + 40), **(*(a1 + 40) + 8));
  if (DeviceForAOID)
  {
    if (*(DeviceForAOID + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *(DeviceForAOID + 56), *(DeviceForAOID + 64));
    }

    else
    {
      v12 = *(DeviceForAOID + 56);
    }

    v6 = 0;
    v13[0] = v12.__r_.__value_.__l.__size_;
    v5 = v12.__r_.__value_.__r.__words[0];
    *(v13 + 7) = *(&v12.__r_.__value_.__r.__words[1] + 7);
    v1 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 560227702;
  }

  v7 = *(a1 + 32);
  *v7 = v6;
  if (*(v7 + 32) == v4)
  {
    if (*(v7 + 32))
    {
      if (*(v7 + 31) < 0)
      {
        operator delete(*(v7 + 8));
      }

      v8 = v13[0];
      *(v7 + 8) = v5;
      *(v7 + 16) = v8;
      *(v7 + 23) = *(v13 + 7);
      *(v7 + 31) = v1;
      goto LABEL_22;
    }
  }

  else
  {
    if (!*(v7 + 32))
    {
      v10 = v13[0];
      *(v7 + 8) = v5;
      *(v7 + 16) = v10;
      *(v7 + 23) = *(v13 + 7);
      *(v7 + 31) = v1;
      *(v7 + 32) = 1;
LABEL_22:
      v11 = *MEMORY[0x277D85DE8];
      return;
    }

    if (*(v7 + 31) < 0)
    {
      operator delete(*(v7 + 8));
    }

    *(v7 + 32) = 0;
  }

  if (!v4 || (v1 & 0x80) == 0)
  {
    goto LABEL_22;
  }

  v9 = *MEMORY[0x277D85DE8];

  operator delete(v5);
}

uint64_t ads::Kernel::findDeviceForAOID(ads::Kernel *this, int a2)
{
  v4 = *(this + 7);
  v5 = applesauce::dispatch::v1::queue::get(v4);
  dispatch_assert_queue_V2(v5);

  for (result = *(this + 4); result; result = *result)
  {
    if (*(result + 48) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t ads::Kernel::connectADSDevice(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  v2 = *(a1 + 56);
  v3 = applesauce::dispatch::v1::queue::get(v2);
  LODWORD(v8) = 0;
  BYTE4(v8) = 0;
  LOBYTE(v9) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel16connectADSDeviceENS_2CF13DictionaryRefEE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS8_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v8;
  block[5] = v6;
  dispatch_sync(v3, block);
  v4 = v8;

  return v4;
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel16connectADSDeviceENS_2CF13DictionaryRefEE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS8_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = *v2;
  v3 = v2[1];
  v5 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
    v11 = v5;
    v6 = ads::Kernel::_connectADSDevice(v4, &v11);
    v8 = v7;
    CFRelease(v5);
  }

  else
  {
    v11 = 0;
    v6 = ads::Kernel::_connectADSDevice(v4, &v11);
    v8 = v9;
  }

  v10 = *(a1 + 32);
  *v10 = v6;
  *(v10 + 8) = v8;
}

uint64_t ads::Kernel::_connectADSDevice(uint64_t a1, CFTypeRef *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 56);
  v5 = applesauce::dispatch::v1::queue::get(v4);
  dispatch_assert_queue_V2(v5);

  v6 = *a2;
  if (!*a2)
  {
    v9 = 1852797029;
LABEL_153:
    *v79 = v9;
    v79[4] = 0;
    v79[8] = 0;
    goto LABEL_154;
  }

  v7 = CFStringCreateWithBytes(0, "uuid", 4, 0x8000100u, 0);
  *buf = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  Value = CFDictionaryGetValue(v6, v7);
  CFRelease(*buf);
  if (!Value)
  {
    v77.__r_.__value_.__s.__data_[0] = 0;
    v78 = 0;
    goto LABEL_152;
  }

  applesauce::CF::convert_as<std::string,0>(&v77, Value);
  if ((v78 & 1) == 0)
  {
LABEL_152:
    v9 = 560227702;
    goto LABEL_153;
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v76, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v76 = v77;
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v75, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v75 = v76;
  }

  DeviceForUUID = ads::Kernel::findDeviceForUUID(a1, &v75);
  v11 = DeviceForUUID;
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else if (DeviceForUUID)
  {
LABEL_14:
    v12 = *(v11 + 12);
    *v79 = 0;
    *&v79[4] = v12;
    v79[8] = 1;
    goto LABEL_142;
  }

  v13 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
    v90 = 0u;
    memset(&buf[16], 0, 32);
    *buf = v13;
    CFRetain(v13);
  }

  else
  {
    v90 = 0u;
    memset(&buf[16], 0, 32);
    *buf = 0;
  }

  v14 = (a1 + 16);
  v15 = std::__string_hash<char>::operator()[abi:ne200100](&v76);
  v16 = v15;
  v17 = *(a1 + 24);
  if (!*&v17)
  {
    goto LABEL_36;
  }

  v18 = vcnt_s8(v17);
  v18.i16[0] = vaddlv_u8(v18);
  v19 = v18.u32[0];
  if (v18.u32[0] > 1uLL)
  {
    v20 = v15;
    if (v15 >= *&v17)
    {
      v20 = v15 % *&v17;
    }
  }

  else
  {
    v20 = (*&v17 - 1) & v15;
  }

  v21 = *(*v14 + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_36:
    operator new();
  }

  while (1)
  {
    v23 = v22[1];
    if (v23 == v16)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_36;
    }

LABEL_35:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_36;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v22 + 2, &v76))
  {
    goto LABEL_35;
  }

  ads::Device::~Device(buf);
  if (v13)
  {
    CFRelease(v13);
  }

  ADSPluginAOID = ads::Kernel::getADSPluginAOID(v24);
  if (!ADSPluginAOID)
  {
    v27 = 1937010544;
    goto LABEL_140;
  }

  v26 = ADSPluginAOID;
  if (ads::Device::IsConnected((v22 + 5)))
  {
    v27 = 1852797029;
    goto LABEL_140;
  }

  *(v22 + 12) = 0;
  v28 = (v22 + 7);
  if (*(v22 + 79) < 0)
  {
    v22[8] = 0;
    v29 = v22[7];
  }

  else
  {
    *(v22 + 79) = 0;
    v29 = v22 + 7;
  }

  *v29 = 0;
  ads::Kernel::getADSDevices(__p);
  v30 = v22[5];
  if (v30)
  {
    CFRetain(v22[5]);
    strcpy(buf, "Mvedbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v27 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::TypeRef,void>::Set(v26, buf, ads::Device::Connect(void)::kCreate, v30);
    CFRelease(v30);
  }

  else
  {
    strcpy(buf, "Mvedbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v27 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::TypeRef,void>::Set(v26, buf, ads::Device::Connect(void)::kCreate, 0);
  }

  if (v27)
  {
    v31 = __p[0];
    goto LABEL_137;
  }

  usleep(0xC350u);
  v32 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v31 = __p[0];
  v33 = __p[1];
  while (2)
  {
    ads::Kernel::getADSDevices(buf);
    v35 = *buf;
    v36 = *&buf[8];
    v37 = *buf;
    if (v31 == v33)
    {
LABEL_64:
      while (v37 != v36)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v84, v37++);
      }
    }

    else
    {
      v38 = v31;
      v37 = *buf;
      while (v37 != v36)
      {
        if (*v38 >= *v37)
        {
          if (*v37 >= *v38)
          {
            ++v38;
          }

          else
          {
            std::vector<unsigned int>::push_back[abi:ne200100](&v84, v37);
          }

          ++v37;
        }

        else
        {
          std::vector<unsigned int>::push_back[abi:ne200100](&v84, v38++);
        }

        if (v38 == v33)
        {
          goto LABEL_64;
        }
      }

      while (v38 != v33)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v84, v38++);
      }
    }

    v39 = v84;
    if (v84 != v85)
    {
      util::server_log(v34);
      v42 = util::server_log(void)::sLogCat;
      v43 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v91 = 136315650;
        *&v91[4] = "ADS_Management_Kernel.mm";
        *&v91[12] = 1024;
        *&v91[14] = 82;
        *&v91[18] = 1024;
        *&v91[20] = v32;
        _os_log_impl(&dword_24348C000, v42, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Caught device on diff iteration %u.", v91, 0x18u);
      }

      if (v35)
      {
        operator delete(v35);
      }

      v44 = *v39;
      *(v22 + 12) = *v39;
      ca::hal::GetPropertyOpt<1969841184u,ca::hal::detail::HALPropertyPolicy>(&cf, v44, 1735159650, 0);
      if (v83 != 1)
      {
        v27 = 1970171760;
        goto LABEL_134;
      }

      if (!cf)
      {
        goto LABEL_150;
      }

      v45 = applesauce::CF::convert_to<std::string,0>(buf, cf);
      if (*(v22 + 79) < 0)
      {
        operator delete(*v28);
      }

      *v28 = *buf;
      v22[9] = *&buf[16];
      util::server_log(v45);
      v46 = util::server_log(void)::sLogCat;
      v47 = util::server_log(void)::sLogCat;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v22 + 79) < 0)
        {
          v28 = *v28;
        }

        v48 = *(v22 + 12);
        *buf = 136315906;
        *&buf[4] = "ADS_Management_Kernel.mm";
        *&buf[12] = 1024;
        *&buf[14] = 103;
        *&buf[18] = 2080;
        *&buf[20] = v28;
        *&buf[28] = 1024;
        *&buf[30] = v48;
        _os_log_impl(&dword_24348C000, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connected device named %s with ID %u.", buf, 0x22u);
      }

      v49 = v22[5];
      if (!v49)
      {
        goto LABEL_150;
      }

      v80 = 0uLL;
      v81 = 0;
      v50 = CFStringCreateWithBytes(0, "custom", 6, 0x8000100u, 0);
      *buf = v50;
      if (!v50)
      {
        v53 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245D37300](v53, "Could not construct");
        __cxa_throw(v53, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v51 = CFDictionaryGetValue(v49, v50);
      if (*buf)
      {
        CFRelease(*buf);
      }

      if (v51)
      {
        applesauce::CF::convert_as<std::vector<applesauce::CF::DictionaryRef>,0>(buf, v51);
        if (buf[24])
        {
          memset(v91, 0, sizeof(v91));
          std::vector<applesauce::CF::DictionaryRef>::__init_with_size[abi:ne200100]<applesauce::CF::DictionaryRef*,applesauce::CF::DictionaryRef*>(v91, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
          if (buf[24])
          {
            v88 = buf;
            std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&v88);
          }

          goto LABEL_101;
        }
      }

      else
      {
        buf[0] = 0;
        buf[24] = 0;
      }

      *v91 = v80;
      *&v91[16] = v81;
      v81 = 0;
      v80 = 0uLL;
LABEL_101:
      *buf = &v80;
      std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](buf);
      v22[11] = v22[10];
      v54 = *v91;
      v55 = *&v91[8];
      if (*v91 != *&v91[8])
      {
        while (1)
        {
          v56 = *v54;
          if (!*v54)
          {
            break;
          }

          v57 = CFStringCreateWithBytes(0, "selector", 8, 0x8000100u, 0);
          *buf = v57;
          if (!v57)
          {
            v60 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v60, "Could not construct");
            __cxa_throw(v60, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v58 = CFDictionaryGetValue(v56, v57);
          if (*buf)
          {
            CFRelease(*buf);
          }

          v59 = v58 ? applesauce::CF::convert_as<unsigned int,0>(v58) : 0;
          v61 = *v54;
          if (!*v54)
          {
            break;
          }

          v62 = CFStringCreateWithBytes(0, "scope", 5, 0x8000100u, 0);
          *buf = v62;
          if (!v62)
          {
            v68 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v68, "Could not construct");
            __cxa_throw(v68, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v63 = CFDictionaryGetValue(v61, v62);
          if (*buf)
          {
            CFRelease(*buf);
          }

          if (v63)
          {
            v63 = applesauce::CF::convert_as<unsigned int,0>(v63);
          }

          v64 = *v54;
          if (!*v54)
          {
            break;
          }

          v65 = CFStringCreateWithBytes(0, "element", 7, 0x8000100u, 0);
          *buf = v65;
          if (!v65)
          {
            v69 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v69, "Could not construct");
            __cxa_throw(v69, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v66 = CFDictionaryGetValue(v64, v65);
          if (*buf)
          {
            CFRelease(*buf);
          }

          if (v66)
          {
            v67 = applesauce::CF::convert_as<unsigned int,0>(v66);
          }

          else
          {
            v67 = 0;
          }

          v70 = v63 << 32;
          if ((v63 & 0x100000000) == 0)
          {
            v70 = 0x676C6F6200000000;
          }

          *buf = v70 | v59 & (v59 << 31 >> 63);
          if ((v67 & 0x100000000) != 0)
          {
            v71 = v67;
          }

          else
          {
            v71 = 0;
          }

          *&buf[8] = v71;
          std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100]((v22 + 10), buf);
          if (++v54 == v55)
          {
            goto LABEL_131;
          }
        }

LABEL_150:
        v72 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245D37300](v72, "Could not construct");
        __cxa_throw(v72, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

LABEL_131:
      strcpy(buf, "#mtstpni");
      buf[9] = 0;
      *&buf[10] = 0;
      std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100]((v22 + 10), buf);
      strcpy(buf, "#mtsptuo");
      buf[9] = 0;
      *&buf[10] = 0;
      std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100]((v22 + 10), buf);
      *buf = v91;
      std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](buf);
      if (cf)
      {
        CFRelease(cf);
      }

      v27 = 0;
LABEL_134:
      v39 = v84;
      goto LABEL_135;
    }

    if (v35)
    {
      operator delete(v35);
    }

    if (++v32 != 3)
    {
      continue;
    }

    break;
  }

  util::server_log(v34);
  v40 = util::server_log(void)::sLogCat;
  v41 = util::server_log(void)::sLogCat;
  v27 = 1852990585;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ADS_Management_Kernel.mm";
    *&buf[12] = 1024;
    *&buf[14] = 89;
    _os_log_impl(&dword_24348C000, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to locate device after many diff iterations", buf, 0x12u);
  }

LABEL_135:
  if (v39)
  {
    operator delete(v39);
  }

LABEL_137:
  if (v31)
  {
    operator delete(v31);
  }

  if (v27)
  {
LABEL_140:
    std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::__erase_unique<std::string>(v14, &v76);
    *v79 = v27;
    goto LABEL_141;
  }

  if (ads::Device::IsConnected((v22 + 5)))
  {
    *&buf[4] = *(v22 + 12);
    *buf = 0;
    *&buf[8] = 1;
    *v79 = 0;
    *&v79[4] = *&buf[4];
  }

  else
  {
    std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::__erase_unique<std::string>(v14, &v76);
    *v79 = 560227702;
LABEL_141:
    v79[4] = 0;
    v79[8] = 0;
  }

LABEL_142:
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if ((v78 & 1) != 0 && SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

LABEL_154:
  result = *v79;
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24349C20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::__erase_unique<std::string>(void *a1, void *a2)
{
  result = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (v5)
  {
    v6 = result;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = result;
      if (result >= *&v5)
      {
        v9 = result % *&v5;
      }
    }

    else
    {
      v9 = (*&v5 - 1) & result;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v6)
        {
          result = std::equal_to<std::string>::operator()[abi:ne200100](i + 2, a2);
          if (result)
          {
            std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::remove(v13, a1, i);
            return std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>>>>::~unique_ptr[abi:ne200100](v13);
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= *&v5)
            {
              v12 %= *&v5;
            }
          }

          else
          {
            v12 &= *&v5 - 1;
          }

          if (v12 != v9)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ads::Device>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel17connectADSDevicesENSt3__16vectorINS_2CF13DictionaryRefENS5_9allocatorIS8_EEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *v3;
  v6 = v3[1];
  if (*v3 != v6)
  {
    while (1)
    {
      v7 = *v5;
      if (*v5)
      {
        CFRetain(*v5);
        v26 = v7;
        v9 = ads::Kernel::_connectADSDevice(v4, &v26);
        HIDWORD(v23) = HIDWORD(v9);
        v8 = v9;
        v24.n128_u32[0] = v10;
        CFRelease(v7);
        if (v9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v26 = 0;
        v11 = ads::Kernel::_connectADSDevice(v4, &v26);
        HIDWORD(v23) = HIDWORD(v11);
        v8 = v11;
        v24.n128_u32[0] = v12;
        if (v11)
        {
LABEL_14:
          v14 = v27;
          v19 = v28;
          if (v27 != v28)
          {
            v20 = v27;
            do
            {
              v21 = *v20++;
              ads::Kernel::_disconnectADSDeviceByAOID(v4, v21);
            }

            while (v20 != v19);
          }

          v15 = 0;
          v22 = 0u;
          if (!v14)
          {
            goto LABEL_11;
          }

LABEL_10:
          operator delete(v14);
          goto LABEL_11;
        }
      }

      std::vector<unsigned int>::push_back[abi:ne200100](&v27, &v23 + 1);
      if (++v5 == v6)
      {
        v14 = v27;
        v13 = v28;
        goto LABEL_9;
      }
    }
  }

  v13 = 0;
  v14 = 0;
LABEL_9:
  v25 = 0;
  v24 = 0uLL;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v24, v14, v13, (v13 - v14) >> 2);
  v8 = 0;
  v22 = v24;
  v15 = v25;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
  v16 = *(a1 + 32);
  *v16 = v8;
  v17 = *(v16 + 8);
  if (v17)
  {
    *(v16 + 16) = v17;
    operator delete(v17);
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
  }

  result = v22;
  *(v16 + 8) = v22;
  *(v16 + 24) = v15;
  return result;
}

void sub_24349C64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ads::Kernel::_disconnectADSDeviceByAOID(ads::Kernel *this, int a2)
{
  v4 = *(this + 7);
  v5 = applesauce::dispatch::v1::queue::get(v4);
  dispatch_assert_queue_V2(v5);

  DeviceForAOID = ads::Kernel::findDeviceForAOID(this, a2);
  if (!DeviceForAOID)
  {
    return 560227702;
  }

  v7 = DeviceForAOID;
  result = ads::Device::Disconnect((DeviceForAOID + 40));
  if (!result)
  {
    std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::remove(v9, this + 2, v7);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>>>>::~unique_ptr[abi:ne200100](v9);
    return 0;
  }

  return result;
}

uint64_t ads::Kernel::disconnectADSDeviceByAOID(ads::Kernel *this, int a2)
{
  v7 = a2;
  v6[0] = this;
  v6[1] = &v7;
  v2 = *(this + 7);
  v3 = applesauce::dispatch::v1::queue::get(v2);
  v9 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25disconnectADSDeviceByAOIDEjE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v9;
  block[5] = v6;
  dispatch_sync(v3, block);
  v4 = v9;

  return v4;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25disconnectADSDeviceByAOIDEjE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = ads::Kernel::_disconnectADSDeviceByAOID(**(a1 + 40), **(*(a1 + 40) + 8));
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel27disconnectADSDevicesByAOIDsENSt3__16vectorIjNS5_9allocatorIjEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  v3 = *(v2 + 8);
  v4 = **v2;
  v5 = *(*v2 + 8);
  if (v4 == v5)
  {
LABEL_5:
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = *v4++;
        result = ads::Kernel::_disconnectADSDeviceByAOID(v3, v7);
        if (result)
        {
          v6 = result;
        }
      }

      while (v4 != v5);
    }
  }

  else
  {
    while (1)
    {
      result = ads::Kernel::findDeviceForAOID(v3, *v4);
      if (!result)
      {
        break;
      }

      if (++v4 == v5)
      {
        v4 = **v2;
        v5 = *(*v2 + 8);
        goto LABEL_5;
      }
    }

    v6 = 560227702;
  }

  **(v1 + 32) = v6;
  return result;
}

uint64_t ads::Kernel::disconnectADSDeviceByUUID(uint64_t a1, uint64_t a2)
{
  v6[0] = a1;
  v6[1] = a2;
  v2 = *(a1 + 56);
  v3 = applesauce::dispatch::v1::queue::get(v2);
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25disconnectADSDeviceByUUIDENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v8;
  block[5] = v6;
  dispatch_sync(v3, block);
  v4 = v8;

  return v4;
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25disconnectADSDeviceByUUIDENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = *v2;
  v3 = v2[1];
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 8));
  }

  else
  {
    __p = *v3;
  }

  v5 = ads::Kernel::_disconnectADSDeviceByUUID(v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  **(a1 + 32) = v5;
}

uint64_t ads::Kernel::_disconnectADSDeviceByUUID(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = applesauce::dispatch::v1::queue::get(v4);
  dispatch_assert_queue_V2(v5);

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  DeviceForUUID = ads::Kernel::findDeviceForUUID(a1, &__p);
  v7 = DeviceForUUID;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (DeviceForUUID)
    {
      goto LABEL_6;
    }

    return 560227702;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v7)
  {
    return 560227702;
  }

LABEL_6:
  result = ads::Device::Disconnect(v7 + 5);
  if (!result)
  {
    std::__hash_table<std::__hash_value_type<std::string,ads::Device>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ads::Device>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ads::Device>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ads::Device>>>::remove(v10, (a1 + 16), v7);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ads::Device>,void *>>>>::~unique_ptr[abi:ne200100](v10);
    return 0;
  }

  return result;
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel27disconnectADSDevicesByUUIDsENSt3__16vectorINS5_12basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENSA_ISC_EEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[1];
  v4 = **v2;
  v5 = *(*v2 + 8);
  if (v4 == v5)
  {
LABEL_10:
    if (v4 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        if (*(v4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 8));
        }

        else
        {
          __p = *v4;
        }

        v8 = ads::Kernel::_disconnectADSDeviceByUUID(v3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v8)
        {
          v7 = v8;
        }

        v4 += 24;
      }

      while (v4 != v5);
    }
  }

  else
  {
    while (1)
    {
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, *v4, *(v4 + 8));
      }

      else
      {
        v10 = *v4;
      }

      DeviceForUUID = ads::Kernel::findDeviceForUUID(v3, &v10);
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      if (!DeviceForUUID)
      {
        break;
      }

      v4 += 24;
      if (v4 == v5)
      {
        v4 = **v2;
        v5 = *(*v2 + 8);
        goto LABEL_10;
      }
    }

    v7 = 560227702;
  }

  **(a1 + 32) = v7;
}

uint64_t ads::Kernel::isDeviceWithAOIDConnected(ads::Kernel *this, int a2)
{
  v7 = a2;
  v6[0] = this;
  v6[1] = &v7;
  v2 = *(this + 7);
  v3 = applesauce::dispatch::v1::queue::get(v2);
  v9 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25isDeviceWithAOIDConnectedEjE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v9;
  block[5] = v6;
  dispatch_sync(v3, block);
  v4 = v9;

  return v4;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25isDeviceWithAOIDConnectedEjE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = ads::Kernel::findDeviceForAOID(**(a1 + 40), **(*(a1 + 40) + 8));
  if (result)
  {
    result = ads::Device::IsConnected((result + 40));
  }

  **(a1 + 32) = result;
  return result;
}

BOOL ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25isDeviceWithUUIDConnectedENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3__0EENS5_5decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = *v2;
  v3 = v2[1];
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 8));
  }

  else
  {
    __p = *v3;
  }

  DeviceForUUID = ads::Kernel::findDeviceForUUID(v4, &__p);
  v6 = DeviceForUUID;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  if (!DeviceForUUID)
  {
    goto LABEL_8;
  }

LABEL_6:
  result = ads::Device::IsConnected((v6 + 5));
LABEL_9:
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel11hasPropertyEjPK26AudioObjectPropertyAddressE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS9_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = ads::Kernel::findDeviceForAOID(*v2, **(v2 + 8));
  if (result)
  {
    result = AudioObjectHasProperty(**(v2 + 8), **(v2 + 16));
    v4 = 0;
    v5 = result != 0;
    v6 = 256;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v4 = 560227702;
  }

  v7 = v6 | v5;
  v8 = *(a1 + 32);
  *v8 = v4;
  *(v8 + 4) = v7;
  return result;
}

void sub_24349CDBC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24349CDA0);
}

uint64_t ads::Kernel::getPropertyDataSize(ads::Kernel *this, int a2, const AudioObjectPropertyAddress *a3, int a4, const void *a5)
{
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v9[0] = this;
  v9[1] = &v13;
  v9[2] = &v12;
  v9[3] = &v11;
  v9[4] = &v10;
  v10 = a5;
  v5 = *(this + 7);
  v6 = applesauce::dispatch::v1::queue::get(v5);
  LODWORD(v15) = 0;
  BYTE4(v15) = 0;
  LOBYTE(v16) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel19getPropertyDataSizeEjPK26AudioObjectPropertyAddressjPKvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSB_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v15;
  block[5] = v9;
  dispatch_sync(v6, block);
  v7 = v15;

  return v7;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel19getPropertyDataSizeEjPK26AudioObjectPropertyAddressjPKvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSB_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = ads::Kernel::findDeviceForAOID(*v2, **(v2 + 8));
  if (result)
  {
    outDataSize = 0;
    result = AudioObjectGetPropertyDataSize(**(v2 + 8), **(v2 + 16), **(v2 + 24), **(v2 + 32), &outDataSize);
    if (!result)
    {
      *v8 = 0;
      *&v8[4] = outDataSize | 0x100000000;
      goto LABEL_7;
    }

    *v8 = result;
  }

  else
  {
    *v8 = 560227702;
  }

  v8[4] = 0;
  v8[8] = 0;
LABEL_7:
  v4 = v8[8];
  v5 = HIDWORD(*v8);
  v6 = *(a1 + 32);
  *v6 = *v8;
  *(v6 + 4) = v5;
  *(v6 + 8) = v4;
  return result;
}

void sub_24349CF7C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24349CF08);
}

void ads::Kernel::getPropertyData(ads::Kernel *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v8[0] = a2;
  v8[1] = &v12;
  v8[2] = &v11;
  v8[3] = &v10;
  v8[4] = &v9;
  v9 = a6;
  v7 = applesauce::dispatch::v1::queue::get(*(a2 + 56));
  *this = 0;
  *(this + 1) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel15getPropertyDataEjPK26AudioObjectPropertyAddressjPKvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSB_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this;
  block[5] = v8;
  dispatch_sync(v7, block);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel15getPropertyDataEjPK26AudioObjectPropertyAddressjPKvE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSB_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!ads::Kernel::findDeviceForAOID(*v2, **(v2 + 8)))
  {
    v4 = 0;
    PropertyDataSize = 560227702;
    goto LABEL_21;
  }

  v16 = 0;
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(**(v2 + 8), **(v2 + 16), **(v2 + 24), **(v2 + 32), &outDataSize);
  if (PropertyDataSize)
  {
LABEL_3:
    v4 = 0;
    goto LABEL_21;
  }

  memset(outData, 0, sizeof(outData));
  if (outDataSize)
  {
    std::vector<std::byte>::__append(outData, outDataSize);
    v5 = outData[0];
  }

  else
  {
    v5 = 0;
  }

  PropertyDataSize = AudioObjectGetPropertyData(**(v2 + 8), **(v2 + 16), **(v2 + 24), **(v2 + 32), &outDataSize, v5);
  if (PropertyDataSize)
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = CFDataCreate(0, v5, outDataSize);
  v6 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = CFGetTypeID(v8);
  if (v9 != CFDataGetTypeID())
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v16 = v6;
  if (v5)
  {
LABEL_10:
    operator delete(v5);
  }

LABEL_11:
  if (!PropertyDataSize)
  {
    if (!v6)
    {
      PropertyDataSize = 0;
      goto LABEL_3;
    }

    CFRetain(v6);
    PropertyDataSize = 0;
    v7 = v6;
    goto LABEL_20;
  }

  v7 = 0;
  v4 = 0;
  if (v6)
  {
LABEL_20:
    CFRelease(v6);
    v4 = v7;
  }

LABEL_21:
  v10 = *(a1 + 32);
  *v10 = PropertyDataSize;
  v11 = *(v10 + 8);
  *(v10 + 8) = v4;
  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_24349D258(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_free_exception(v15);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a9);
  if (v14)
  {
    a11 = v14;
    operator delete(v14);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24349D138);
}

void sub_24349D2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  applesauce::CF::DataRef::~DataRef(va);
  _Unwind_Resume(a1);
}

void std::vector<std::byte>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    bzero(a1[1], a2);
    a1[1] = &v5[a2];
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
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

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t ads::Kernel::setPropertyDataPrivileged(ads::Kernel *this, int a2, const AudioObjectPropertyAddress *a3, int a4, const void *a5, int a6, const void *a7)
{
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v11[0] = this;
  v11[1] = &v17;
  v11[2] = &v16;
  v11[3] = &v15;
  v11[4] = &v14;
  v11[5] = &v13;
  v11[6] = &v12;
  v12 = a7;
  v7 = *(this + 7);
  v8 = applesauce::dispatch::v1::queue::get(v7);
  v19 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25setPropertyDataPrivilegedEjPK26AudioObjectPropertyAddressjPKvjS9_E3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSB_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v19;
  block[5] = v11;
  dispatch_sync(v8, block);
  v9 = v19;

  return v9;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel25setPropertyDataPrivilegedEjPK26AudioObjectPropertyAddressjPKvjS9_E3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSB_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = ads::Kernel::findDeviceForAOID(*v2, **(v2 + 8));
  if (result)
  {
    result = AudioObjectHasProperty(**(v2 + 8), **(v2 + 16));
    if (result)
    {
      outIsSettable = 0;
      AudioObjectIsPropertySettable(**(v2 + 8), **(v2 + 16), &outIsSettable);
      if (outIsSettable)
      {
        result = AudioObjectSetPropertyData(**(v2 + 8), **(v2 + 16), **(v2 + 24), **(v2 + 32), **(v2 + 40), **(v2 + 48));
      }

      else
      {
        v10 = 0u;
        v11 = 0u;
        inData = 0u;
        v9 = 0u;
        LODWORD(inData) = 2;
        v5 = *(v2 + 24);
        *&v9 = **(v2 + 16);
        DWORD2(v9) = *v5;
        v6 = *(v2 + 40);
        *&v10 = **(v2 + 32);
        DWORD2(v10) = *v6;
        *&v11 = **(v2 + 48);
        v7.mElement = 0;
        *&v7.mSelector = *"asvdbolg";
        result = AudioObjectSetPropertyData(**(v2 + 8), &v7, 0, 0, 0x40u, &inData);
      }

      v4 = result;
    }

    else
    {
      v4 = 2003332927;
    }
  }

  else
  {
    v4 = 560227702;
  }

  **(a1 + 32) = v4;
  return result;
}

void sub_24349D6A8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24349D68CLL);
}

void ads::Kernel::getPropertyData_TypeRef(ads::Kernel *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4)
{
  v8 = a3;
  v6[0] = a2;
  v6[1] = &v8;
  v6[2] = &v7;
  v7 = a4;
  v5 = applesauce::dispatch::v1::queue::get(*(a2 + 56));
  *this = 0;
  *(this + 1) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel23getPropertyData_TypeRefEjPK26AudioObjectPropertyAddressE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS9_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = this;
  block[5] = v6;
  dispatch_sync(v5, block);
}

void ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel23getPropertyData_TypeRefEjPK26AudioObjectPropertyAddressE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NS9_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!ads::Kernel::findDeviceForAOID(*v2, **(v2 + 8)))
  {
    v5 = 0;
    PropertyDataSize = 560227702;
    goto LABEL_14;
  }

  v13 = 0;
  outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(**(v2 + 8), **(v2 + 16), 0, 0, &outDataSize);
  if (PropertyDataSize)
  {
    goto LABEL_13;
  }

  if (outDataSize == 8)
  {
    memset(outData, 0, sizeof(outData));
    std::vector<std::byte>::__append(outData, 8uLL);
    v4 = outData[0];
    PropertyDataSize = AudioObjectGetPropertyData(**(v2 + 8), **(v2 + 16), 0, 0, &outDataSize, outData[0]);
    if (PropertyDataSize)
    {
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = *v4;
      v5 = v13;
      if (v13)
      {
        operator delete(v4);
        CFRetain(v5);
        PropertyDataSize = 0;
        CFRelease(v5);
        goto LABEL_14;
      }

      PropertyDataSize = 560947818;
      v9 = 560947818;
      v8 = 0;
      v10 = 0;
      std::pair<$_3,applesauce::CF::TypeRef>::~pair(&v9);
      applesauce::CF::TypeRef::~TypeRef(&v8);
    }

    operator delete(v4);
  }

  else
  {
    PropertyDataSize = 1852797029;
  }

LABEL_13:
  v5 = 0;
LABEL_14:
  v6 = *(a1 + 32);
  *v6 = PropertyDataSize;
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_24349D8CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!*(v12 - 40))
  {
    JUMPOUT(0x24349D898);
  }

  JUMPOUT(0x24349D860);
}

uint64_t std::pair<$_3,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ads::Kernel::setPropertyDataPrivileged_TypeRef(ads::Kernel *this, int a2, const AudioObjectPropertyAddress *a3, const applesauce::CF::TypeRef *a4)
{
  v10 = a2;
  v8[0] = this;
  v8[1] = &v10;
  v8[2] = a4;
  v8[3] = &v9;
  v9 = a3;
  v4 = *(this + 7);
  v5 = applesauce::dispatch::v1::queue::get(v4);
  v12 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel33setPropertyDataPrivileged_TypeRefEjPK26AudioObjectPropertyAddressRKNS_2CF7TypeRefEE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSD_17integral_constantIbLb0EEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = &v12;
  block[5] = v8;
  dispatch_sync(v5, block);
  v6 = v12;

  return v6;
}

uint64_t ___ZN10applesauce8dispatch2v19sync_implIZN3ads6Kernel33setPropertyDataPrivileged_TypeRefEjPK26AudioObjectPropertyAddressRKNS_2CF7TypeRefEE3__0EENSt3__15decayIDTclfp0_EEE4typeEPU28objcproto17OS_dispatch_queue8NSObjectOT_NSD_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = ads::Kernel::findDeviceForAOID(*v2, **(v2 + 8));
  if (result)
  {
    if (**(v2 + 16))
    {
      result = AudioObjectHasProperty(**(v2 + 8), **(v2 + 24));
      if (result)
      {
        v10 = **(v2 + 16);
        v8 = 0u;
        v9 = 0u;
        inData = 0u;
        v7 = 0u;
        LODWORD(inData) = 2;
        *&v7 = **(v2 + 24);
        DWORD2(v8) = 8;
        *&v9 = &v10;
        BYTE8(v9) = 1;
        v5.mElement = 0;
        *&v5.mSelector = *"asvdbolg";
        result = AudioObjectSetPropertyData(**(v2 + 8), &v5, 0, 0, 0x40u, &inData);
        v4 = result;
      }

      else
      {
        v4 = 2003332927;
      }
    }

    else
    {
      v4 = 560947818;
    }
  }

  else
  {
    v4 = 560227702;
  }

  **(a1 + 32) = v4;
  return result;
}

void sub_24349DB1C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24349DB00);
}

void util::server_log(util *this)
{
  {
    qword_28133BCA0 = 0;
    util::server_log(void)::sLogCat = os_log_create("com.apple.coreaudio", "cider_server");
  }
}

void sub_2434AF33C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (a2)
  {
    __cxa_free_exception(v49);
    applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(&a49);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<int,std::optional<applesauce::CF::StringRef>>::~pair(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void anonymous namespace::TransformMacAddrs()
{
  std::regex_traits<char>::regex_traits(&v0);
  v3 = 0;
  v2 = 0u;
  v1 = 0u;
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

uint64_t std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

unint64_t ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,float,void>::Get(AudioObjectID *a1, const AudioObjectPropertyAddress *a2)
{
  if (AudioObjectHasProperty(*a1, a2))
  {
    ioDataSize[0] = 2003329396;
    *&ioDataSize[1] = 0;
    PropertyData = 2003329396;
    v6 = 0;
    ioDataSize[0] = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a1, a2, 0, 0, v4);
    if (ioDataSize[0])
    {
      outData[0] = 0;
      PropertyData = AudioObjectGetPropertyData(*a1, a2, 0, 0, ioDataSize, outData);
      if (PropertyData)
      {
        v6 = 0;
      }

      else
      {
        v6 = outData[0];
      }
    }
  }

  else
  {
    v6 = 0;
    PropertyData = 2003332927;
  }

  return PropertyData | (v6 << 32);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[9],std::string>(applesauce::CF::TypeRef *a1, uint64_t a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "selector");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  *(a1 + 1) = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2434B55A0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],std::string>(applesauce::CF::TypeRef *a1, uint64_t a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "scope");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  *(a1 + 1) = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2434B5680(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[8],unsigned int const&>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "element");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2434B5754(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],std::string const>(applesauce::CF::TypeRef *a1, uint64_t a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "type");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  *(a1 + 1) = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return a1;
}

void sub_2434B5834(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
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
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_2434B5928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_2434B5BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,AudioValueRange,void>::Get(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  result = AudioObjectHasProperty(*a2, inAddress);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    result = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a2, inAddress, 0, 0, v7);
    ioDataSize = result;
    if (result)
    {
      result = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, &outData);
      *a1 = result;
      if (!result)
      {
        *(a1 + 8) = outData;
        *(a1 + 24) = 1;
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

void anonymous namespace::ConvertDataToTypeRef<AudioValueRange>(CFArrayRef *a1, __n128 a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v10, 2uLL);
  v3 = 0;
  v4 = v11;
  do
  {
    if (v4 >= v12)
    {
      v5 = (v4 - v10) >> 3;
      if ((v5 + 1) >> 61)
      {
        std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
      }

      v6 = (v12 - v10) >> 2;
      if (v6 <= v5 + 1)
      {
        v6 = v5 + 1;
      }

      if (v12 - v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v7 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v6;
      }

      v16 = &v10;
      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v7);
      }

      v13[0] = 0;
      v13[1] = (8 * v5);
      v14 = 8 * v5;
      v15 = 0;
      std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,double const&,void,0>((8 * v5), v17.n128_f64[v3]);
      v14 += 8;
      std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v10, v13);
      v4 = v11;
      std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v13);
    }

    else
    {
      std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,double const&,void,0>(v4++, v17.n128_f64[v3]);
    }

    v11 = v4;
    ++v3;
  }

  while (v3 != 2);
  v8 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v10);
  v13[0] = &v10;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v13);
  CFRetain(v8);
  *a1 = v8;
  CFRelease(v8);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_2434B5ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFNumberRef anonymous namespace::ConvertDataToTypeRef<unsigned int>(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::DictionaryRef,void>::Get(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a2, inAddress, 0, 0, v6);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v8 = outData;
        if (outData)
        {
          v9 = CFGetTypeID(outData);
          if (v9 != CFDictionaryGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          CFRetain(v8);
          v10 = CFGetTypeID(v8);
          if (v10 != CFDictionaryGetTypeID())
          {
            v12 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v12, "Could not construct");
            __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          *(a1 + 16) = 1;
          *(a1 + 8) = v8;
          CFRelease(v8);
        }

        else
        {
          *(a1 + 16) = 1;
          *(a1 + 8) = 0;
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_2434B6164(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void anonymous namespace::ConvertDataToTypeRef<applesauce::CF::StringRef>(uint64_t a1, const __CFString *a2)
{
  if (a2)
  {
    applesauce::CF::convert_to<std::string,0>(v2, a2);
  }

  else
  {
    memset(v2, 0, sizeof(v2));
  }
}

void sub_2434B62E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v20);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<applesauce::CF::StringRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::NumberRef,void>::Get(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a2, inAddress, 0, 0, v6);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v8 = outData;
        if (outData)
        {
          v9 = CFGetTypeID(outData);
          if (v9 != CFNumberGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          CFRetain(v8);
          v10 = CFGetTypeID(v8);
          if (v10 != CFNumberGetTypeID())
          {
            v12 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v12, "Could not construct");
            __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          *(a1 + 16) = 1;
          *(a1 + 8) = v8;
          CFRelease(v8);
        }

        else
        {
          *(a1 + 16) = 1;
          *(a1 + 8) = 0;
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_2434B6508(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

uint64_t std::optional<applesauce::CF::NumberRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::optional<applesauce::CF::BooleanRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,applesauce::CF::ArrayRef,void>::Get(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a2, inAddress, 0, 0, v6);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v8 = outData;
        if (outData)
        {
          v9 = CFGetTypeID(outData);
          if (v9 != CFArrayGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](exception, "Could not construct");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          CFRetain(v8);
          v10 = CFGetTypeID(v8);
          if (v10 != CFArrayGetTypeID())
          {
            v12 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x245D37300](v12, "Could not construct");
            __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          *(a1 + 16) = 1;
          *(a1 + 8) = v8;
          CFRelease(v8);
        }

        else
        {
          *(a1 + 16) = 1;
          *(a1 + 8) = 0;
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_2434B6770(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a10);
  __clang_call_terminate(a1);
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void anonymous namespace::AddCustomProperty<1970496630u,1735159650u,0u>(AudioObjectID a1, void *a2)
{
  v45[1] = *MEMORY[0x277D85DE8];
  *&inAddress.mSelector = *"vdsubolg";
  inAddress.mElement = 0;
  LODWORD(v28[0]) = a1;
  v37 = 0x676C6F6275736476;
  LODWORD(v38) = 0;
  v4 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,unsigned int,void>::Get(v28, &v37);
  *(&v7 + 1) = v5;
  *&v7 = v4;
  v6 = v7 >> 32;
  if ((v6 & 0x100000000) != 0)
  {
    if (v31)
    {
      outIsSettable = 0;
      AudioObjectIsPropertySettable(a1, &inAddress, &outIsSettable);
      v8 = outIsSettable;
      std::string::basic_string[abi:ne200100]<0>(v28, "int");
      strcpy(v35, "usdv");
      std::string::basic_string[abi:ne200100]<0>(v25, v35);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[9],std::string>(&v37, v25);
      strcpy(__p, "glob");
      std::string::basic_string[abi:ne200100]<0>(v35, __p);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[6],std::string>(v39, v35);
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[8],unsigned int const&>(&v40, &inAddress.mElement);
      std::string::basic_string[abi:ne200100]<0>(__p, "int");
      applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],std::string const>(&v41, __p);
      applesauce::CF::TypeRef::TypeRef(v42, "settable");
      v9 = *MEMORY[0x277CBED28];
      v10 = *MEMORY[0x277CBED10];
      if (v8 != 1)
      {
        v9 = *MEMORY[0x277CBED10];
      }

      v42[1] = v9;
      applesauce::CF::TypeRef::TypeRef(v43, "requires set request");
      v43[1] = v10;
      applesauce::CF::TypeRef::TypeRef(v44, "data");
      v45[0] = cf;
      cf = 0;
      v27[0] = &v37;
      v27[1] = 7;
      CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v27);
      for (i = 0; i != -14; i -= 2)
      {
        v13 = v45[i];
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = *&v44[i * 8];
        if (v14)
        {
          CFRelease(v14);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (v26 < 0)
      {
        operator delete(v25[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28[0]);
      }

      if (v31)
      {
        CFRelease(v31);
      }

      v15 = a2[1];
      v16 = a2[2];
      if (v15 >= v16)
      {
        v18 = (v15 - *a2) >> 3;
        if ((v18 + 1) >> 61)
        {
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        v19 = v16 - *a2;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        v40 = a2;
        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v21);
        }

        v22 = (8 * v18);
        v37 = 0;
        v38 = v22;
        v39[1] = 0;
        std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v22, CFDictionaryRef);
        v39[0] = v22 + 1;
        std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(a2, &v37);
        v17 = a2[1];
        std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v37);
      }

      else
      {
        v17 = std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v15, CFDictionaryRef) + 1;
        a2[1] = v17;
      }

      a2[1] = v17;
      if (CFDictionaryRef)
      {
        CFRelease(CFDictionaryRef);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2434B6B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_2434B6D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GetStreams(_anonymous_namespace_ *this, int a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  LODWORD(v18) = a2;
  *&inAddress.mSelector = (a3 << 32) | 0x73746D23;
  inAddress.mElement = 0;
  ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,std::vector<unsigned int>,void>::Get(&__p, &v18, &inAddress);
  LOBYTE(inAddress.mSelector) = 0;
  v4 = v24;
  if (v24)
  {
    v5 = v21;
    v6 = v22;
    *&inAddress.mSelector = v21;
    __p = 0;
    v21 = 0;
    v22 = 0;
    p_inAddress = &inAddress;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    __p = 0;
    v21 = 0;
    p_inAddress = &__p;
    v22 = 0;
  }

  *p_inAddress = 0;
  p_inAddress[1] = 0;
  p_inAddress[2] = 0;
  if (__p)
  {
    operator delete(__p);
  }

  if (v4 && *&inAddress.mSelector)
  {
    operator delete(*&inAddress.mSelector);
  }

  if (v5 != v6)
  {
    v8 = v5;
    do
    {
      v9 = *v8;
      v10 = *&inAddress.mSelector;
      if (*&inAddress.mSelector)
      {
        v12 = *(this + 1);
        v11 = *(this + 2);
        if (v12 >= v11)
        {
          v14 = (v12 - *this) >> 3;
          if ((v14 + 1) >> 61)
          {
            std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
          }

          v15 = v11 - *this;
          v16 = v15 >> 2;
          if (v15 >> 2 <= (v14 + 1))
          {
            v16 = v14 + 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          v24 = this;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v17);
          }

          __p = 0;
          v21 = (8 * v14);
          v23 = 0;
          *v21 = v18;
          v22 = 8 * v14 + 8;
          std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(this, &__p);
          v13 = *(this + 1);
          std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&__p);
        }

        else
        {
          *v12 = v18;
          v13 = v12 + 1;
        }

        *(this + 1) = v13;
        CFRelease(v10);
      }

      ++v8;
    }

    while (v8 != v6);
  }

  if (v5)
  {
    operator delete(v5);
  }
}

void sub_2434B6EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a9);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  if (v10)
  {
    operator delete(v10);
  }

  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_2434B6FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(void *a1)
{
  v18 = 0;
  v19 = 0uLL;
  std::vector<applesauce::CF::TypeRefPair>::reserve(&v18, a1[2]);
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = v19;
    do
    {
      if (v5 >= *(&v19 + 1))
      {
        v6 = (v5 - v18) >> 4;
        if ((v6 + 1) >> 60)
        {
          std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
        }

        v7 = (*(&v19 + 1) - v18) >> 3;
        if (v7 <= v6 + 1)
        {
          v7 = v6 + 1;
        }

        if (*(&v19 + 1) - v18 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v8 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = v7;
        }

        v23 = &v18;
        if (v8)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(v8);
        }

        v20 = 0;
        v21 = 16 * v6;
        v22 = (16 * v6);
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>((16 * v6), v3 + 32, v3 + 7);
        *&v22 = v22 + 16;
        v9 = &v18[v21 - v19];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v18, v18, v19, v9);
        v10 = v18;
        v11 = *(&v19 + 1);
        v18 = v9;
        v17 = v22;
        v19 = v22;
        *&v22 = v10;
        *(&v22 + 1) = v11;
        v20 = v10;
        v21 = v10;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&v20);
        v5 = v17;
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(v5, v3 + 32, v3 + 7);
        v5 += 16;
      }

      *&v19 = v5;
      v12 = v3[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v3[2];
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != v2);
  }

  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v18);
  v20 = &v18;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&v20);
  return CFDictionaryRef;
}

void sub_2434B71DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a12;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *__dst, uint64_t a2)
{
  __dst->__r_.__value_.__r.__words[0] = 0;
  __dst->__r_.__value_.__l.__size_ = 0;
  __dst->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    if (v4 >= __dst && (&__dst->__r_.__value_.__l.__data_ + 1) > v4)
    {
      std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, v4, v4 + v5, v5);
      if ((v12 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v12 & 0x80u) == 0)
      {
        v9 = v12;
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(__dst, v8, v9);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v7 = __dst;
      if (v5 >= 0x17)
      {
        std::string::__grow_by(__dst, 0x16uLL, v5 - 22, 0, 0, 0, 0);
        __dst->__r_.__value_.__l.__size_ = 0;
        v7 = __dst;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
          v7 = __dst->__r_.__value_.__r.__words[0];
        }
      }

      memmove(v7, v4, v5);
      v7->__r_.__value_.__s.__data_[v5] = 0;
      if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
      {
        __dst->__r_.__value_.__l.__size_ = v5;
      }

      else
      {
        *(&__dst->__r_.__value_.__s + 23) = v5 & 0x7F;
      }
    }
  }

  return __dst;
}

void sub_2434B743C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *caulk::string_from_4cc(caulk *this)
{
  v4 = *MEMORY[0x277D85DE8];
  strcpy(v3, "'nope'");
  result = std::string::basic_string[abi:ne200100]<0>(this, v3);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2434B74D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::construct[abi:ne200100]<applesauce::CF::TypeRefPair,std::string const&,applesauce::CF::TypeRef const&,void,0>(void *a1, const UInt8 *a2, const void **a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = *a3;
  if (v8)
  {
    result = CFRetain(v8);
  }

  a1[1] = v8;
  return result;
}

void *std::vector<applesauce::CF::NumberRef>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(a2);
    }

    std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_2434B76BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned int,void,0>(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::NumberRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

const void **applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void anonymous namespace::GetStreamInfo(_anonymous_namespace_ *this, ca::hal::detail::HALPropertyPolicy *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  *cf = a2;
  strcpy(valuePtr, "spatbolg");
  BYTE1(valuePtr[0].mElement) = 0;
  HIWORD(valuePtr[0].mElement) = 0;
  v4 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,unsigned int,void>::Get(cf, valuePtr);
  *(&v7 + 1) = v5;
  *&v7 = v4;
  v6 = v7 >> 32;
  if ((v6 & 0x100000000) != 0 && v6)
  {
    *this = 0;
    goto LABEL_93;
  }

  v64[0] = 0;
  v64[1] = 0;
  v62 = 0;
  v63 = v64;
  v60 = 0;
  v61 = 0;
  LODWORD(v67[0]) = a2;
  strcpy(cf, "amfsbolg");
  cf[9] = 0;
  *&cf[10] = 0;
  ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,std::vector<AudioStreamRangedDescription>,void>::Get(valuePtr, v67, cf);
  LOBYTE(__p[0]) = 0;
  if (valuePtr[2].mElement)
  {
    *__p = *&valuePtr[0].mElement;
    v8 = *&valuePtr[1].mScope;
    for (i = *&valuePtr[0].mElement; i != v8; ++i)
    {
      v10 = *cf;
      if (*cf)
      {
        if (v61 >= v62)
        {
          v11 = v61 - v60;
          if ((v11 + 1) >> 61)
          {
            std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
          }

          v12 = (v62 - v60) >> 2;
          if (v12 <= v11 + 1)
          {
            v12 = v11 + 1;
          }

          if (v62 - v60 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          *&valuePtr[2].mElement = &v60;
          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v13);
          }

          v14 = (8 * v11);
          *&valuePtr[0].mSelector = 0;
          *&valuePtr[0].mElement = v14;
          *&valuePtr[2].mSelector = 0;
          std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v14, *cf);
          *&valuePtr[1].mScope = v14 + 1;
          std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v60, valuePtr);
          v15 = v61;
          std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(valuePtr);
          v10 = *cf;
          v61 = v15;
          if (!*cf)
          {
            continue;
          }
        }

        else
        {
          v61 = std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v61, *cf) + 1;
        }

        CFRelease(v10);
      }
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(v67[0]) = a2;
  strcpy(cf, "atfpbolg");
  cf[9] = 0;
  *&cf[10] = 0;
  ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,std::vector<AudioStreamRangedDescription>,void>::Get(valuePtr, v67, cf);
  v17 = 0;
  cf[0] = 0;
  if (LOBYTE(valuePtr[2].mElement) == 1)
  {
    *cf = *&valuePtr[0].mElement;
    v17 = 1;
  }

  if (v16 == v17)
  {
    if (v16)
    {
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (!v16)
    {
LABEL_32:
      *__p = *cf;
      *cf = 0;
      *&cf[8] = 0;
      v16 = 1;
      goto LABEL_33;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v16 = 0;
  }

LABEL_33:
  if (v17 && *cf)
  {
    operator delete(*cf);
  }

  if (v16)
  {
    v18 = __p[0];
    for (j = __p[1]; v18 != j; ++v18)
    {
      v20 = *cf;
      if (*cf)
      {
        if (v61 >= v62)
        {
          v21 = v61 - v60;
          if ((v21 + 1) >> 61)
          {
            std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
          }

          v22 = (v62 - v60) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v62 - v60 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          *&valuePtr[2].mElement = &v60;
          if (v23)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(v23);
          }

          v24 = (8 * v21);
          *&valuePtr[0].mSelector = 0;
          *&valuePtr[0].mElement = v24;
          *&valuePtr[2].mSelector = 0;
          std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v24, *cf);
          *&valuePtr[1].mScope = v24 + 1;
          std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v60, valuePtr);
          v25 = v61;
          std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(valuePtr);
          v20 = *cf;
          v61 = v25;
          if (!*cf)
          {
            continue;
          }
        }

        else
        {
          v61 = std::construct_at[abi:ne200100]<applesauce::CF::DictionaryRef,applesauce::CF::DictionaryRef const&,applesauce::CF::DictionaryRef*>(v61, *cf) + 1;
        }

        CFRelease(v20);
      }
    }
  }

  v26 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v60);
  *cf = v26;
  std::string::basic_string[abi:ne200100]<0>(valuePtr, "supported formats");
  v67[0] = valuePtr;
  v27 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v63, valuePtr);
  v28 = *(v27 + 56);
  *(v27 + 56) = v26;
  *cf = v28;
  if (SHIBYTE(valuePtr[1].mElement) < 0)
  {
    operator delete(*&valuePtr[0].mSelector);
    if (!v28)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v28)
  {
LABEL_56:
    CFRelease(v28);
  }

LABEL_57:
  LODWORD(v67[0]) = a2;
  strcpy(valuePtr, "ridsbolg");
  BYTE1(valuePtr[0].mElement) = 0;
  HIWORD(valuePtr[0].mElement) = 0;
  v29 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,unsigned int,void>::Get(v67, valuePtr);
  *(&v32 + 1) = v30;
  *&v32 = v29;
  v31 = v32 >> 32;
  if ((v31 & 0x100000000) == 0)
  {
    LODWORD(v31) = 0;
  }

  valuePtr[0].mSelector = v31;
  *cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!*cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(valuePtr, "is input");
  v67[0] = valuePtr;
  v33 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v63, valuePtr);
  v34 = *(v33 + 56);
  *(v33 + 56) = *cf;
  *cf = v34;
  if (SHIBYTE(valuePtr[1].mElement) < 0)
  {
    operator delete(*&valuePtr[0].mSelector);
    v34 = *cf;
    if (!*cf)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (v34)
  {
LABEL_64:
    CFRelease(v34);
  }

LABEL_65:
  LODWORD(v67[0]) = a2;
  strcpy(valuePtr, "cntlbolg");
  BYTE1(valuePtr[0].mElement) = 0;
  HIWORD(valuePtr[0].mElement) = 0;
  v35 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,unsigned int,void>::Get(v67, valuePtr);
  *(&v38 + 1) = v36;
  *&v38 = v35;
  v37 = v38 >> 32;
  if ((v37 & 0x100000000) == 0)
  {
    LODWORD(v37) = 0;
  }

  valuePtr[0].mSelector = v37;
  *cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!*cf)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v54, "Could not construct");
    __cxa_throw(v54, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(valuePtr, "latency");
  v67[0] = valuePtr;
  v39 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v63, valuePtr);
  v40 = *(v39 + 56);
  *(v39 + 56) = *cf;
  *cf = v40;
  if (SHIBYTE(valuePtr[1].mElement) < 0)
  {
    operator delete(*&valuePtr[0].mSelector);
    v40 = *cf;
    if (!*cf)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v40)
  {
LABEL_72:
    CFRelease(v40);
  }

LABEL_73:
  LODWORD(v67[0]) = a2;
  strcpy(valuePtr, "mretbolg");
  BYTE1(valuePtr[0].mElement) = 0;
  HIWORD(valuePtr[0].mElement) = 0;
  v41 = ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,unsigned int,void>::Get(v67, valuePtr);
  *(&v44 + 1) = v42;
  *&v44 = v41;
  v43 = v44 >> 32;
  if ((v43 & 0x100000000) == 0)
  {
    LODWORD(v43) = 0;
  }

  valuePtr[0].mSelector = v43;
  *cf = CFNumberCreate(0, kCFNumberIntType, valuePtr);
  if (!*cf)
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v55, "Could not construct");
    __cxa_throw(v55, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(valuePtr, "terminal type");
  v67[0] = valuePtr;
  v45 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v63, valuePtr);
  v46 = *(v45 + 56);
  *(v45 + 56) = *cf;
  *cf = v46;
  if ((SHIBYTE(valuePtr[1].mElement) & 0x80000000) == 0)
  {
    if (!v46)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  operator delete(*&valuePtr[0].mSelector);
  v46 = *cf;
  if (*cf)
  {
LABEL_80:
    CFRelease(v46);
  }

LABEL_81:
  *&inAddress.mSelector = 0x676C6F6273666D74;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(a2, &inAddress) || (ioDataSize[0] = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(a2, &inAddress, 0, 0, v47)) == 0 || (memset(valuePtr, 0, 40), AudioObjectGetPropertyData(a2, &inAddress, 0, 0, ioDataSize, valuePtr)))
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v52, "error getting property");
    __cxa_throw(v52, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  *v68 = *(&valuePtr[1].mScope + 1);
  *&v68[15] = *&valuePtr[2].mElement;
  cf[0] = valuePtr[0].mSelector;
  *&cf[1] = *(&valuePtr[0].mSelector + 1);
  *v58 = *v68;
  *&v58[15] = *&valuePtr[2].mElement;
  v48 = applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(valuePtr);
  CFRetain(v48);
  *ioDataSize = v48;
  std::string::basic_string[abi:ne200100]<0>(v67, "basic description");
  *&inAddress.mSelector = v67;
  v49 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v63, v67);
  v50 = *(v49 + 56);
  *(v49 + 56) = v48;
  *ioDataSize = v50;
  if ((v68[7] & 0x80000000) != 0)
  {
    operator delete(v67[0]);
    if (!v50)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if (v50)
  {
LABEL_88:
    CFRelease(v50);
  }

LABEL_89:
  CFRelease(v48);
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(*&valuePtr[0].mElement);
  *this = applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(&v63);
  if (v16 && __p[0])
  {
    operator delete(__p[0]);
  }

  *&valuePtr[0].mSelector = &v60;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](valuePtr);
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(v64[0]);
LABEL_93:
  v51 = *MEMORY[0x277D85DE8];
}

void sub_2434B8220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a11);
  if (v32)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  a11 = &a19;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a11);
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(a23);
  _Unwind_Resume(a1);
}

void ca::hal::detail::PropertyDispatch<ca::hal::detail::HALPropertyPolicy,std::vector<AudioStreamRangedDescription>,void>::Get(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    v11 = 2003329396;
    LOBYTE(__dst[0]) = 0;
    v14 = 0;
    PropertyDataSize = ca::hal::detail::HALPropertyPolicy::GetPropertyDataSize(*a2, inAddress, 0, 0, v6);
    ioDataSize = PropertyDataSize;
    if (PropertyDataSize)
    {
      memset(v9, 0, sizeof(v9));
      if (PropertyDataSize >= 0x38)
      {
        std::vector<AudioStreamRangedDescription>::__vallocate[abi:ne200100](v9, PropertyDataSize / 0x38uLL);
      }

      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, 0);
      v11 = PropertyData;
      if (PropertyData)
      {
        *a1 = PropertyData;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        __dst[0] = 0;
        __dst[1] = 0;
        v13 = 0;
        *a1 = 0;
        *(a1 + 8) = *__dst;
        *(a1 + 24) = v13;
        *(a1 + 32) = 1;
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 32) = 1;
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_2434B85A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void anonymous namespace::GetASRDInfo(_anonymous_namespace_ *this, const AudioStreamRangedDescription *a2)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v3 = *&a2->mFormat.mBytesPerPacket;
  v22 = *&a2->mFormat.mSampleRate;
  v23 = v3;
  v4 = *&a2->mFormat.mBitsPerChannel;
  v24 = v4;
  if (DWORD2(v3) * DWORD1(v3) != v3 && DWORD2(v22) == 1819304813)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ASBD is not valid because (asbd.mBytesPerFrame * asbd.mFramesPerPacket == asbd.mBytesPerPacket) and asbd.mFormatID == kAudioFormatLinearPCM returned false.");
    goto LABEL_31;
  }

  if (*&v22 < 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ASBD is not valid because sample rate was less than 0");
    goto LABEL_31;
  }

  if ((BYTE12(v22) & 1) == 0 && v4 >= 0x19)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ASBD is not valid because !(asbd.mFormatFlags & kAudioFormatFlagIsFloat) && (asbd.mBitsPerChannel > 24).");
    goto LABEL_31;
  }

  if (DWORD2(v3) < (v4 * HIDWORD(v23)) >> 3 && DWORD2(v22) == 1819304813)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "ASBD is not valid because not (asbd.mBitsPerChannel * asbd.mChannelsPerFrame / 8 == asbd.mBytesPerFrame) and asbd.mFormatID == kAudioFormatLinearPCM.");
LABEL_31:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278DBC6D0, MEMORY[0x277D82610]);
  }

  if (a2->mSampleRateRange.mMinimum == 0.0 && a2->mSampleRateRange.mMaximum == 0.0)
  {
    goto LABEL_26;
  }

  valuePtr[0] = *&a2->mSampleRateRange.mMinimum;
  cf = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
  if (!cf)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(valuePtr, "min sample rate");
  v25 = valuePtr;
  v8 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26, valuePtr);
  v9 = *(v8 + 56);
  *(v8 + 56) = cf;
  cfa = v9;
  if ((v21 & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  operator delete(valuePtr[0]);
  v9 = cfa;
  if (cfa)
  {
LABEL_19:
    CFRelease(v9);
  }

LABEL_20:
  valuePtr[0] = *&a2->mSampleRateRange.mMaximum;
  cfb = CFNumberCreate(0, kCFNumberDoubleType, valuePtr);
  if (!cfb)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v15, "Could not construct");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(valuePtr, "max sample rate");
  v25 = valuePtr;
  v10 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v26, valuePtr);
  v11 = *(v10 + 56);
  *(v10 + 56) = cfb;
  cfc = v11;
  if ((v21 & 0x80000000) == 0)
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  operator delete(valuePtr[0]);
  v11 = cfc;
  if (cfc)
  {
LABEL_25:
    CFRelease(v11);
  }

LABEL_26:
  *this = applesauce::CF::details::make_CFDictionaryRef<std::string,applesauce::CF::TypeRef>(v26);
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(v26[1]);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2434B88FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint8_t buf, char *a23, __int16 a24, __int16 a25, uint64_t a26, __int16 a27, uint64_t a28)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a9);
  std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::destroy(a23);
  _Unwind_Resume(a1);
}

void anonymous namespace::GetASBDInfoRaw(_anonymous_namespace_ *this, const CA::StreamDescription *a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  valuePtr = *a2;
  v31 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v31)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v33, "sample rate");
  v34 = v31;
  LODWORD(valuePtr) = *(a2 + 2);
  v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v30)
  {
    v17 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v17, "Could not construct");
    __cxa_throw(v17, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v35, "format id");
  v36 = v30;
  LODWORD(valuePtr) = *(a2 + 3);
  v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v29)
  {
    v18 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v18, "Could not construct");
    __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v37, "format flags");
  v38 = v29;
  LODWORD(valuePtr) = *(a2 + 6);
  v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v28)
  {
    v19 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v19, "Could not construct");
    __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v39, "bytes per frame");
  v40 = v28;
  LODWORD(valuePtr) = *(a2 + 5);
  v27 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v27)
  {
    v20 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v20, "Could not construct");
    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v41, "frames per packet");
  v42 = v27;
  LODWORD(valuePtr) = *(a2 + 7);
  v26 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v26)
  {
    v21 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v21, "Could not construct");
    __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v43, "channels per frame");
  v44 = v26;
  LODWORD(valuePtr) = *(a2 + 8);
  v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v25)
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v22, "Could not construct");
    __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v45, "bits per channel");
  v46 = v25;
  LODWORD(valuePtr) = *(a2 + 4);
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!cf)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::string::basic_string[abi:ne200100]<0>(v47, "bytes per packet");
  v4 = 0;
  v5 = 0;
  v48[0] = cf;
  *(this + 1) = 0;
  v6 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  while (1)
  {
    v7 = (this + 8);
    if (*this == v6)
    {
      goto LABEL_17;
    }

    v8 = v4;
    v9 = this + 8;
    if (v4)
    {
      do
      {
        v7 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      do
      {
        v7 = *(v9 + 2);
        v10 = *v7 == v9;
        v9 = v7;
      }

      while (v10);
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, &v33[v5]) & 0x80) != 0)
    {
LABEL_17:
      if (!v4)
      {
        valuePtr = this + 8;
LABEL_22:
        operator new();
      }

      valuePtr = v7;
      v11 = v7 + 1;
    }

    else
    {
      v11 = std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__find_equal<std::string>(this, &valuePtr, &v33[v5]);
    }

    if (!*v11)
    {
      goto LABEL_22;
    }

    v5 += 32;
    if (v5 == 256)
    {
      break;
    }

    v4 = *v6;
  }

  for (i = 0; i != -32; i -= 4)
  {
    v13 = &v33[i * 8];
    v14 = v48[i];
    if (v14)
    {
      CFRelease(v14);
    }

    if (*(v13 + 247) < 0)
    {
      operator delete(v13[28]);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_2434B90E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, uint64_t a17, char a18)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a9);
  applesauce::CF::TypeRef::~TypeRef(&a10);
  applesauce::CF::TypeRef::~TypeRef(&a11);
  applesauce::CF::TypeRef::~TypeRef(&a12);
  applesauce::CF::TypeRef::~TypeRef(&a13);
  applesauce::CF::TypeRef::~TypeRef(&a14);
  applesauce::CF::TypeRef::~TypeRef(&a15);
  applesauce::CF::TypeRef::~TypeRef(&a16);
  while (v18 != &a18)
  {
    v18 -= 32;
    std::pair<std::string const,applesauce::CF::TypeRef>::~pair(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,applesauce::CF::TypeRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__insert_node_at(uint64_t **result, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v4 = **result;
  if (v4)
  {
    *result = v4;
    a4 = *a3;
  }

  v5 = result[1];
  *(a4 + 24) = a4 == v5;
  if (a4 != v5)
  {
    do
    {
      v6 = a4[2];
      if (v6[3])
      {
        break;
      }

      v7 = v6[2];
      v8 = *v7;
      if (*v7 == v6)
      {
        v12 = v7[1];
        if (!v12 || (v13 = *(v12 + 24), v11 = (v12 + 24), v13 == 1))
        {
          if (*v6 == a4)
          {
            v15 = a4[2];
          }

          else
          {
            v15 = v6[1];
            v16 = *v15;
            v6[1] = *v15;
            v17 = v6;
            if (v16)
            {
              v16[2] = v6;
              v7 = v6[2];
              v17 = *v7;
            }

            v15[2] = v7;
            v7[v17 != v6] = v15;
            *v15 = v6;
            v6[2] = v15;
            v7 = v15[2];
            v8 = *v7;
          }

          *(v15 + 24) = 1;
          *(v7 + 24) = 0;
          v22 = *(v8 + 8);
          *v7 = v22;
          if (v22)
          {
            *(v22 + 16) = v7;
          }

          v23 = v7[2];
          *(v8 + 16) = v23;
          v23[*v23 != v7] = v8;
          *(v8 + 8) = v7;
          v7[2] = v8;
          break;
        }
      }

      else
      {
        if (!v8 || (v10 = *(v8 + 24), v9 = (v8 + 24), v10 == 1))
        {
          v14 = *v6;
          if (*v6 == a4)
          {
            v18 = v14[1];
            *v6 = v18;
            if (v18)
            {
              *(v18 + 16) = v6;
              v7 = v6[2];
            }

            v14[2] = v7;
            v7[*v7 != v6] = v14;
            v14[1] = v6;
            v6[2] = v14;
            v7 = v14[2];
          }

          else
          {
            v14 = a4[2];
          }

          *(v14 + 24) = 1;
          *(v7 + 24) = 0;
          v19 = v7[1];
          v20 = *v19;
          v7[1] = *v19;
          if (v20)
          {
            *(v20 + 16) = v7;
          }

          v21 = v7[2];
          v19[2] = v21;
          v21[*v21 != v7] = v19;
          *v19 = v7;
          v7[2] = v19;
          break;
        }

        v11 = v9;
      }

      *(v6 + 24) = 1;
      a4 = v7;
      *(v7 + 24) = v7 == v5;
      *v11 = 1;
    }

    while (v7 != v5);
  }

  result[2] = (result[2] + 1);
  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,applesauce::CF::TypeRef>,void *>>>::operator()[abi:ne200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 7);
    if (v3)
    {
      CFRelease(v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void *std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void CA::StreamDescription::AsString(CA::StreamDescription *this, void *a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string("%2u ch, %6.0f Hz, 'freq'", this, *(a2 + 7), *a2);
    goto LABEL_69;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v55 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v55;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string("%2u ch, %6.0f Hz", this, 0, *a2);
      goto LABEL_69;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v60.__r_.__value_.__s + 23) = 4;
    LODWORD(v60.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v60.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string("%2u ch, %6.0f Hz, %s (0x%08X) ", &v58, v13, *&v14, &v60, *(a2 + 3));
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v19 = *(a2 + 2);
    if (v19 <= 1819304812)
    {
      if (v19 != 1634492771 && v19 != 1634497332 && v19 != 1718378851)
      {
LABEL_70:
        caulk::make_string("%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", &v60, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v58;
        }

        else
        {
          v31 = v58.__r_.__value_.__r.__words[0];
        }

        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v58.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v33 = std::string::insert(&v60, 0, v31, size);
        v34 = *&v33->__r_.__value_.__l.__data_;
        *(this + 2) = *(&v33->__r_.__value_.__l + 2);
        *this = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v35 = v60.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v35);
LABEL_65:
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        goto LABEL_69;
      }

LABEL_45:
      v28 = *(a2 + 3);
      if ((v28 - 1) < 4 || !v28 && (v19 == 1634497332 || v19 == 1936487278 || v19 == 1936487267))
      {
        caulk::make_string("from %u-bit source, ", &v60, CA::StreamDescription::AsString(void)const::kSourceBits[v28]);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v60;
        }

        else
        {
          v29 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v60.__r_.__value_.__l.__size_;
        }

        std::string::append(&v58, v29, v30);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v58, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string("%u frames/packet", &v60, *(a2 + 5));
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v58;
      }

      else
      {
        v31 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v19 == 1936487278 || v19 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v19 != 1819304813)
    {
      goto LABEL_70;
    }

    v20 = *(a2 + 3);
    v21 = *(a2 + 6);
    v22 = v20 & 0x20;
    v23 = "";
    if (!v21)
    {
      goto LABEL_37;
    }

    if ((v20 & 0x20) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = *(a2 + 7);
      if (!v24)
      {
        v22 = 0;
LABEL_37:
        v25 = " signed";
        if ((v20 & 4) == 0)
        {
          v25 = " unsigned";
        }

        if (v20)
        {
          v26 = "float";
        }

        else
        {
          v26 = "integer";
        }

        if (v20)
        {
          v27 = "";
        }

        else
        {
          v27 = v25;
        }

LABEL_102:
        v60.__r_.__value_.__s.__data_[0] = 0;
        if (v22)
        {
          v41 = ", deinterleaved";
        }

        else
        {
          v41 = "";
        }

        v42 = *(a2 + 8);
        v38 = "";
        v43 = "";
        goto LABEL_106;
      }
    }

    v37 = v21 / v24;
    if (v21 / v24 < 2)
    {
      v40 = " signed";
      if ((v20 & 4) == 0)
      {
        v40 = " unsigned";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v40;
      }

      if (v24 > v21)
      {
        goto LABEL_102;
      }

      v37 = 1;
      v38 = "";
    }

    else
    {
      if ((v20 & 2) != 0)
      {
        v38 = " big-endian";
      }

      else
      {
        v38 = " little-endian";
      }

      v39 = " unsigned";
      if ((v20 & 4) != 0)
      {
        v39 = " signed";
      }

      if (v20)
      {
        v26 = "float";
      }

      else
      {
        v26 = "integer";
      }

      if (v20)
      {
        v27 = "";
      }

      else
      {
        v27 = v39;
      }
    }

    v44 = *(a2 + 7);
    if ((v20 & 0x20) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(a2 + 7);
    }

    if (v45)
    {
      v45 = 8 * (v21 / v45);
    }

    if (v45 == *(a2 + 8))
    {
      v60.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v46 = "";
      }

      else
      {
        v46 = "un";
      }

      snprintf(&v60, 0x20uLL, "%spacked in %u bytes", v46, v37);
      v21 = *(a2 + 6);
      v20 = *(a2 + 3);
      if (!v21)
      {
        v47 = 0;
        v22 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v44 = *(a2 + 7);
      v22 = *(a2 + 3) & 0x20;
    }

    if (v22)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    if (v47)
    {
      v47 = 8 * (v21 / v47);
    }

LABEL_128:
    v48 = *(a2 + 8);
    v49 = " high-aligned";
    if ((v20 & 0x10) == 0)
    {
      v49 = " low-aligned";
    }

    if ((v48 & 7) == 0 && v47 == v48)
    {
      v43 = "";
    }

    else
    {
      v43 = v49;
    }

    if (v22)
    {
      v41 = ", deinterleaved";
    }

    else
    {
      v41 = "";
    }

    if (v60.__r_.__value_.__s.__data_[0])
    {
      v23 = ", ";
LABEL_141:
      if (((v20 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string("%s-bit%s%s %s%s%s%s%s", &v57, __str, v38, v27, v26, v23, &v60, v43, v41);
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v58;
      }

      else
      {
        v51 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v58.__r_.__value_.__l.__size_;
      }

      v53 = std::string::insert(&v57, 0, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *(this + 2) = *(&v53->__r_.__value_.__l + 2);
      *this = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v57.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v35 = v57.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v43)
    {
      v23 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v56 = ", deinterleaved";
  }

  else
  {
    v56 = ", interleaved";
  }

  if (v9 == 1)
  {
    v56 = "";
  }

  caulk::make_string("%2u ch, %6.0f Hz, %s%s", this, v9, *a2, *(&off_278DBC728 + v12), v56);
LABEL_69:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_2434B9E14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

void std::vector<AudioStreamRangedDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
}

const void **applesauce::CF::ObjectRef<__CFBoolean const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,double const&,void,0>(CFNumberRef *a1, double a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D37300](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = *result;
  v10 = result[1];
  v11 = v10;
  v12 = v10 - *result;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = v8 - v13;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      v11 = v9 + v7;
      result[1] = v9 + v7;
    }
  }

  else
  {
    v15 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 3) < v14)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v15 - v9) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v15 - v9) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v8;
        }

        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
    }

    v17 = 8 * (v7 >> 3) - 8 * (v12 >> 3);
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v17 -= 24;
    }

    while (v17);
    result[1] = v10 + 24 * v14;
    v11 = v10 + 24 * v14;
  }

  v18 = *result;
  if (v11 == *result)
  {
    v21 = a2 - v6;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 - v6;
    v23 = *a4;
    v22 = a4[1];
    do
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3);
      v25 = (v23 + v19);
      if (v24 <= v20)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = v25;
      }

      *(v18 + v19) = v21 + *v26;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v20)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v19);
      }

      *(*v5 + v19 + 8) = v21 + v27[1];
      v23 = *a4;
      v22 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - *a4) >> 3) <= v20)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v19);
      }

      v29 = *(v28 + 16);
      v18 = *v5;
      v30 = v5[1];
      result = (*v5 + v19);
      *(result + 16) = v29;
      ++v20;
      v19 += 24;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v30 - v18) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v31 = v21 + a4[6];
  v5[6] = v31;
  v5[7] = v21 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v21 + a4[9];
  v5[10] = v21 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v31;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_2434BA6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v124, 0, 48);
    v62 = *(a1 + 40);
    if (!v62)
    {
LABEL_184:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v124);
      return v62;
    }

    *v128 = 0;
    memset(&v128[8], 0, 32);
    v129 = 0uLL;
    memset(v130, 0, 37);
    std::deque<std::__state<char>>::push_back(v124, v128);
    if (v130[0])
    {
      operator delete(v130[0]);
    }

    if (*&v128[32])
    {
      operator delete(*&v128[32]);
    }

    v119 = a4;
    v63 = *&v124[8];
    v64 = *&v124[40] + *&v124[32] - 1;
    v65 = v64 / 0x2A;
    v66 = *(*&v124[8] + 8 * (v64 / 0x2A));
    v67 = 3 * (v64 % 0x2A);
    v68 = v66 + 32 * v67;
    *v68 = 0;
    *(v68 + 8) = a2;
    *(*(v63 + 8 * v65) + 32 * v67 + 16) = a2;
    *(*(v63 + 8 * v65) + 32 * v67 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v63 + 8 * v65) + 32 * v67 + 56), *(a1 + 32));
    v123 = 0;
    v69 = 0;
    v121 = 0;
    v70 = a3 - a2;
    v71 = *&v124[40];
    v72 = *&v124[8];
    v73 = *&v124[40] + *&v124[32] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(*&v124[8] + 8 * v74) + 32 * v75 + 80) = v62;
    v76 = *(v72 + 8 * v74) + 32 * v75;
    v77 = a5;
    *(v76 + 88) = a5;
    *(v76 + 92) = a6;
    v78 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v69 & 0xFFF) == 0 && (v69 >> 12) >= v70)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v80 = v71 + *&v124[32] - 1;
      v81 = (((v80 >> 1) * v78) >> 64) >> 4;
      v82 = *(*&v124[8] + 8 * v81) - 4032 * v81 + 96 * v80;
      v84 = (v82 + 80);
      v83 = *(v82 + 80);
      if (v83)
      {
        (*(*v83 + 16))(v83, v82);
      }

      v85 = *v82;
      if (*v82 <= -995)
      {
        switch(v85)
        {
          case -1000:
            v90 = *(v82 + 16);
            v92 = (v77 & 0x1000) == 0 || v90 == a3;
            v93 = v90 != a2 || (v77 & 0x20) == 0;
            if (!v93 || !v92)
            {
              goto LABEL_179;
            }

            v94 = &v90[-*(v82 + 8)];
            v95 = v121;
            if (v121 <= v94)
            {
              v95 = v94;
            }

            if (v123)
            {
              v94 = v95;
            }

            if (v94 == v70)
            {
              v96 = *&v124[8];
              v97 = *&v124[16];
              if (*&v124[16] == *&v124[8])
              {
                v97 = *&v124[8];
              }

              else
              {
                v98 = (((*&v124[32] >> 1) * v78) >> 64) >> 4;
                v99 = (*&v124[8] + 8 * v98);
                v100 = (*v99 - 4032 * v98 + 96 * *&v124[32]);
                v101 = v78;
                v102 = ((((*&v124[40] + *&v124[32]) >> 1) * v78) >> 64) >> 4;
                v103 = *(*&v124[8] + 8 * v102) - 4032 * v102 + 96 * (*&v124[40] + *&v124[32]);
                if (v100 != v103)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v100);
                    v100 += 12;
                    if ((v100 - *v99) == 4032)
                    {
                      v104 = v99[1];
                      ++v99;
                      v100 = v104;
                    }
                  }

                  while (v100 != v103);
                  v96 = *&v124[8];
                  v97 = *&v124[16];
                }

                v77 = a5;
                v78 = v101;
              }

              *&v124[40] = 0;
              v107 = (v97 - v96) >> 3;
              if (v107 >= 3)
              {
                do
                {
                  operator delete(*v96);
                  v96 = (*&v124[8] + 8);
                  *&v124[8] = v96;
                  v107 = (*&v124[16] - v96) >> 3;
                }

                while (v107 > 2);
              }

              if (v107 == 1)
              {
                v108 = 21;
LABEL_170:
                *&v124[32] = v108;
              }

              else if (v107 == 2)
              {
                v108 = 42;
                goto LABEL_170;
              }

              v123 = 1;
              v121 = a3 - a2;
              break;
            }

            v121 = v94;
            std::deque<std::__state<char>>::pop_back(v124);
            v123 = 1;
            break;
          case -999:
            break;
          case -995:
            v86 = *&v124[32];
            v87 = *&v124[8];
            v88 = *&v124[16];
            if (!*&v124[32])
            {
              v89 = 42 * ((*&v124[16] - *&v124[8]) >> 3) - 1;
              if (*&v124[16] == *&v124[8])
              {
                v89 = 0;
              }

              if ((v89 - *&v124[40]) < 0x2A)
              {
                if (*&v124[16] - *&v124[8] < *&v124[24] - *v124)
                {
                  if (*&v124[8] != *v124)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v124[24] == *v124)
                {
                  v109 = 1;
                }

                else
                {
                  v109 = (*&v124[24] - *v124) >> 2;
                }

                *&v128[32] = v124;
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v109);
              }

              *&v124[32] = 42;
              *v128 = *(*&v124[16] - 8);
              *&v124[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v124, v128);
              v86 = *&v124[32];
              v87 = *&v124[8];
              v88 = *&v124[16];
            }

            v110 = (((v86 >> 1) * v78) >> 64) >> 4;
            v111 = (v87 + 8 * v110);
            v112 = *v111 - 4032 * v110 + 96 * v86;
            if (v88 == v87)
            {
              v113 = 0;
            }

            else
            {
              v113 = v112;
            }

            if (v113 == *v111)
            {
              v113 = *(v111 - 1) + 4032;
            }

            v114 = *(v82 + 16);
            *(v113 - 96) = *v82;
            *(v113 - 80) = v114;
            *(v113 - 56) = 0;
            *(v113 - 48) = 0;
            *(v113 - 64) = 0;
            *(v113 - 64) = *(v82 + 32);
            *(v113 - 48) = *(v82 + 48);
            *(v82 + 32) = 0;
            *(v82 + 40) = 0;
            *(v82 + 48) = 0;
            *(v113 - 40) = 0;
            *(v113 - 32) = 0;
            *(v113 - 24) = 0;
            *(v113 - 40) = *(v82 + 56);
            *(v113 - 24) = *(v82 + 72);
            *(v82 + 56) = 0;
            *(v82 + 64) = 0;
            *(v82 + 72) = 0;
            v115 = *v84;
            *(v113 - 11) = *(v82 + 85);
            *(v113 - 16) = v115;
            *&v124[32] = vaddq_s64(*&v124[32], xmmword_2434C4DC0);
            goto LABEL_179;
          default:
            goto LABEL_187;
        }
      }

      else
      {
        if (v85 > -993)
        {
          if (v85 == -992)
          {
            v105 = *(v82 + 16);
            *v128 = *v82;
            *&v128[16] = v105;
            v129 = 0uLL;
            *&v128[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v128[32], *(v82 + 32), *(v82 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v82 + 40) - *(v82 + 32)) >> 3));
            memset(v130, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v130, *(v82 + 56), *(v82 + 64), (*(v82 + 64) - *(v82 + 56)) >> 4);
            v106 = *v84;
            *(&v130[3] + 5) = *(v82 + 85);
            v130[3] = v106;
            (*(**(v82 + 80) + 24))(*(v82 + 80), 1, v82);
            (*(*v130[3] + 24))(v130[3], 0, v128);
            std::deque<std::__state<char>>::push_back(v124, v128);
            if (v130[0])
            {
              v130[1] = v130[0];
              operator delete(v130[0]);
            }

            if (*&v128[32])
            {
              *&v129 = *&v128[32];
              operator delete(*&v128[32]);
            }
          }

          else if (v85 != -991)
          {
LABEL_187:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_180;
        }

        if (v85 != -994)
        {
          if (v85 != -993)
          {
            goto LABEL_187;
          }

LABEL_179:
          std::deque<std::__state<char>>::pop_back(v124);
        }
      }

LABEL_180:
      v71 = *&v124[40];
      if (!*&v124[40])
      {
        if (v123)
        {
          v116 = *v119;
          *v116 = a2;
          *(v116 + 8) = &a2[v121];
          v62 = 1;
          *(v116 + 16) = 1;
        }

        else
        {
          v62 = 0;
        }

        goto LABEL_184;
      }
    }
  }

  v131 = 0;
  v132 = 0;
  v133 = 0;
  *v128 = 0;
  memset(&v128[8], 0, 32);
  v129 = 0u;
  memset(v130, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_92:
    v62 = 0;
    goto LABEL_93;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v124 = 0;
  memset(&v124[8], 0, 48);
  *__p = 0uLL;
  memset(v126, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v131, v124);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v124[32])
  {
    operator delete(*&v124[32]);
  }

  v118 = a4;
  v13 = v132;
  *(v132 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v132 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v120 = a3;
  v122 = a2;
  v17 = a3 - a2;
  v18 = v132;
  *(v132 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v124 = *v22;
          *&v124[16] = v36;
          memset(&v124[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v124[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v126[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v126[1] + 5) = *(v18 - 11);
          v126[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v126[1] + 24))(v126[1], 0, v124);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v131, v124);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v124[32])
          {
            *&v124[40] = *&v124[32];
            operator delete(*&v124[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_186:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_186;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v122 || (a5 & 0x1000) != 0 && v24 != v120)
      {
LABEL_40:
        v35 = v132 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v132 - 12);
        v132 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v128 = *v22;
        *&v128[16] = v26;
        if (v128 != v22)
        {
          v28 = *(v18 - 8);
          v27 = *(v18 - 7);
          v29 = v27 - v28;
          v30 = *(&v129 + 1);
          v31 = *&v128[32];
          if (*(&v129 + 1) - *&v128[32] < v27 - v28)
          {
            if (*&v128[32])
            {
              *&v129 = *&v128[32];
              operator delete(*&v128[32]);
              v30 = 0;
              *&v128[32] = 0;
              v129 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v34);
              }
            }

            std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
          }

          v38 = v129;
          if (v129 - *&v128[32] >= v29)
          {
            while (v28 != v27)
            {
              *v31 = *v28;
              *(v31 + 16) = *(v28 + 16);
              v28 += 24;
              v31 += 24;
            }
          }

          else
          {
            v39 = (v28 + v129 - *&v128[32]);
            if (v129 != *&v128[32])
            {
              do
              {
                *v31 = *v28;
                *(v31 + 16) = *(v28 + 16);
                v28 += 24;
                v31 += 24;
              }

              while (v28 != v39);
            }

            while (v39 != v27)
            {
              v40 = *v39;
              *(v38 + 16) = *(v39 + 2);
              *v38 = v40;
              v38 += 24;
              v39 = (v39 + 24);
            }

            v31 = v38;
          }

          *&v129 = v31;
          v42 = *(v18 - 5);
          v41 = *(v18 - 4);
          v43 = v41 - v42;
          v44 = v130[2];
          v45 = v130[0];
          if ((v130[2] - v130[0]) < (v41 - v42))
          {
            if (v130[0])
            {
              v130[1] = v130[0];
              operator delete(v130[0]);
              v44 = 0;
              memset(v130, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v47);
              }
            }

            std::vector<applesauce::CF::DictionaryRef>::__throw_length_error[abi:ne200100]();
          }

          v48 = v130[1];
          if ((v130[1] - v130[0]) >= v43)
          {
            while (v42 != v41)
            {
              *v45 = *v42;
              v45[1] = *(v42 + 1);
              v42 += 16;
              v45 += 2;
            }
          }

          else
          {
            v49 = &v42[v130[1] - v130[0]];
            if (v130[1] != v130[0])
            {
              do
              {
                *v45 = *v42;
                v45[1] = *(v42 + 1);
                v42 += 16;
                v45 += 2;
              }

              while (v42 != v49);
            }

            while (v49 != v41)
            {
              v50 = *v49;
              v49 += 16;
              *v48++ = v50;
            }

            v45 = v48;
          }

          v130[1] = v45;
        }

        v51 = *v21;
        *(&v130[3] + 5) = *(v21 + 5);
        v130[3] = v51;
        v14 = v25;
      }

      v52 = v132;
      if (v14 == v17)
      {
        v53 = v131;
        while (v52 != v53)
        {
          v52 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v52);
        }

        v132 = v53;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v54 = v132 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v132 - 12);
        v132 = v54;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v132;
  }

  while (v131 != v132);
  if ((v15 & 1) == 0)
  {
    goto LABEL_92;
  }

  v56 = *v118;
  *v56 = v122;
  *(v56 + 8) = &v122[v14];
  *(v56 + 16) = 1;
  if (v129 != *&v128[32])
  {
    v57 = 0xAAAAAAAAAAAAAAABLL * ((v129 - *&v128[32]) >> 3);
    v58 = (*&v128[32] + 16);
    v59 = 1;
    do
    {
      v60 = v56 + 24 * v59;
      *v60 = *(v58 - 1);
      v61 = *v58;
      v58 += 24;
      *(v60 + 16) = v61;
      v19 = v57 > v59++;
    }

    while (v19);
  }

  v62 = 1;
LABEL_93:
  if (v130[0])
  {
    v130[1] = v130[0];
    operator delete(v130[0]);
  }

  if (*&v128[32])
  {
    *&v129 = *&v128[32];
    operator delete(*&v128[32]);
  }

  *v128 = &v131;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v128);
  return v62;
}