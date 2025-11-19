void sub_255634EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v12);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    GlobalLog = getGlobalLog();
    if (os_log_type_enabled(GlobalLog, OS_LOG_TYPE_ERROR))
    {
      v15 = (*(*v13 + 16))(v13);
      LODWORD(a9) = 136446210;
      *(&a9 + 4) = v15;
      _os_log_impl(&dword_255634000, GlobalLog, OS_LOG_TYPE_ERROR, "Unable to make public ref with error: %{public}s", &a9, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x255634E80);
  }

  _Unwind_Resume(a1);
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

void std::allocator<JetPack::FileStream>::construct[abi:ne200100]<JetPack::FileStream,char const*&>(uint64_t a1, uint64_t a2, const char **a3)
{
  v4 = *a3;
  v5 = strlen(*a3);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v8 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  JetPack::FileStream::FileStream(a2, &__dst);
  if (v8 < 0)
  {
    operator delete(__dst);
  }
}

void sub_255635130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JetPack::FileStream::FileStream(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2867845B0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  File = JetPack::FileStream::makeFile(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = File;
    operator delete(__p.__r_.__value_.__l.__data_);
    File = v4;
  }

  *(a1 + 8) = File;
  *(a1 + 16) = 1;
  return a1;
}

void sub_2556351F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

FILE *JetPack::FileStream::makeFile(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = fopen(a1, "rb");
  if (!result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    JetPack::UnableToOpenFileException::UnableToOpenFileException(exception);
  }

  return result;
}

void JetPackFileEntryGetPathname_cold_1()
{
  if (__cxa_guard_acquire(&qword_280B1A5B0))
  {
    v0 = os_log_create("com.apple.JetPack", "Diagnostics");
    v1 = OUTLINED_FUNCTION_0(v0, &_MergedGlobals_0);

    __cxa_guard_release(v1);
  }
}

BOOL JetPackReaderSetProperty(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = 0;
    v4 = 0;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_8:
    *v3 = a3;
    if (!v4)
    {
      return a2 == 0;
    }

    goto LABEL_9;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v4)
  {
    return a2 == 0;
  }

LABEL_9:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = a2;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    a2 = v5;
  }

  return a2 == 0;
}

void JetPackReaderSetFileEntryFoundCallback(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  if (*(v2 + 184) != 1)
  {
    *(v2 + 152) = &unk_286784248;
    *(v2 + 160) = a2;
    *(v2 + 168) = a1;
    *(v2 + 176) = v2 + 152;
    *(v2 + 184) = 1;
    goto LABEL_11;
  }

  v5[0] = &unk_286784248;
  v5[1] = a2;
  v5[2] = a1;
  v6 = v5;
  std::__function::__value_func<BOOL ()(JetPack::ReaderConfig &,void *,std::shared_ptr<JetPack::ArchiveStream>)>::swap[abi:ne200100](v5, (v2 + 152));
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
LABEL_11:
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  (*(*v6 + 40))();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_15:
  v4 = *MEMORY[0x277D85DE8];
}

void JetPackReaderSetKeyForIdentifierCallback(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  if (*(v2 + 64) != 1)
  {
    *(v2 + 32) = &unk_2867842D8;
    *(v2 + 40) = a2;
    *(v2 + 48) = a1;
    *(v2 + 56) = v2 + 32;
    *(v2 + 64) = 1;
    goto LABEL_11;
  }

  v5[0] = &unk_2867842D8;
  v5[1] = a2;
  v5[2] = a1;
  v6 = v5;
  std::__function::__value_func<std::optional<std::array<unsigned char,16ul>> ()(JetPack::ReaderConfig &,unsigned short)>::swap[abi:ne200100](v5, (v2 + 32));
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
LABEL_11:
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  (*(*v6 + 40))();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_15:
  v4 = *MEMORY[0x277D85DE8];
}

void JetPackReaderSetDataSegmentFoundCallback(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *a1;
    v3 = a1[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  if (*(v2 + 144) != 1)
  {
    *(v2 + 112) = &unk_2867841B8;
    *(v2 + 120) = a2;
    *(v2 + 128) = a1;
    *(v2 + 136) = v2 + 112;
    *(v2 + 144) = 1;
    goto LABEL_11;
  }

  v5[0] = &unk_2867841B8;
  v5[1] = a2;
  v5[2] = a1;
  v6 = v5;
  std::__function::__value_func<BOOL ()(JetPack::ReaderConfig &,std::string,std::shared_ptr<JetPack::BaseStream>)>::swap[abi:ne200100](v5, (v2 + 112));
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v6)
  {
LABEL_11:
    if (!v3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  (*(*v6 + 40))();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_15:
  v4 = *MEMORY[0x277D85DE8];
}

void sub_255635BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void JetPack::CommonCryptoSignatureVerifier::CommonCryptoSignatureVerifier(uint64_t a1, void *a2)
{
  memset(__p, 0, sizeof(__p));
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  JetPack::CommonCryptoBackend::certificateForData(__p);
}

void sub_255635D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    std::allocator<JetPack::AESDecoderStream>::construct[abi:ne200100]<JetPack::AESDecoderStream,std::shared_ptr<JetPack::BaseStream> &,std::array<unsigned char,16ul> &,unsigned int &>(v13);
  }

  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::allocator<JetPack::CommonCryptoSignatureVerifier>::construct[abi:ne200100]<JetPack::CommonCryptoSignatureVerifier,std::vector<unsigned char> &>(uint64_t a1, uint64_t a2, void *a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = a3[1];
  if (v3 != *a3)
  {
    if (((v3 - *a3) & 0x8000000000000000) == 0)
    {
      v4 = v3 - *a3;
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_255635E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a9)
  {
    std::allocator<JetPack::AESDecoderStream>::construct[abi:ne200100]<JetPack::AESDecoderStream,std::shared_ptr<JetPack::BaseStream> &,std::array<unsigned char,16ul> &,unsigned int &>(a9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255635FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v12);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    GlobalLog = getGlobalLog();
    if (os_log_type_enabled(GlobalLog, OS_LOG_TYPE_ERROR))
    {
      v15 = (*(*v13 + 16))(v13);
      LODWORD(a9) = 136446210;
      *(&a9 + 4) = v15;
      _os_log_impl(&dword_255634000, GlobalLog, OS_LOG_TYPE_ERROR, "Unable to make public ref with error: %{public}s", &a9, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x255635FB4);
  }

  _Unwind_Resume(a1);
}

void JetPack::CommonCryptoBackend::certificateForData(void *a1)
{
  v1 = a1[1];
  if (v1 != *a1)
  {
    if (((v1 - *a1) & 0x8000000000000000) == 0)
    {
      v2 = v1 - *a1;
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v3 = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
  JetPack::makeCFSharedPtr<__CFData const*>(v3, &data);
}

void sub_2556361EC(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void sub_255636280(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

void sub_255636320(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

void *JetPack::ParseException::ParseException(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = &unk_286783408;
  v3 = (a1 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    a1[3] = *(&__p.__r_.__value_.__l + 2);
  }

  *a1 = &unk_286783720;
  return a1;
}

void sub_255636458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::exception::~exception(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t JetPack::UnownedPartialStream::read(JetPack::UnownedPartialStream *this, unsigned __int8 *a2)
{
  v3 = *(this + 2);
  (*(*this + 24))(this);
  v4 = *(**(this + 1) + 16);

  return v4();
}

uint64_t JetPack::UnownedPartialStream::position(JetPack::UnownedPartialStream *this)
{
  v2 = (*(**(this + 1) + 24))(*(this + 1));
  if (*(this + 2) >= (v2 - *(this + 3)))
  {
    return v2 - *(this + 3);
  }

  else
  {
    return *(this + 2);
  }
}

void JetPack::CFReleaseIgnoringNull(CFTypeRef this, const void *a2)
{
  if (this)
  {
    CFRelease(this);
  }
}

void JetPackReaderProcess(uint64_t *a1, uint64_t *a2, uint64_t *a3, char a4)
{
  {
    JetPack::DiagnosticContext::DiagnosticContext(&getGlobalLog(void)::sharedContext);
  }

  v8 = qword_280B1A528;
  if (os_log_type_enabled(qword_280B1A528, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 0;
    _os_log_impl(&dword_255634000, v8, OS_LOG_TYPE_DEBUG, "JetPackReaderProcess() API called", v15, 2u);
  }

  if (a1)
  {
    v9 = *a1;
    v10 = a1[1];
    v23 = *a1;
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    if (a2)
    {
LABEL_8:
      v11 = *a2;
      v12 = a2[1];
      v21 = *a2;
      v22 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      if (a3)
      {
LABEL_11:
        v13 = *a3;
        v14 = a3[1];
        v19 = *a3;
        v20 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        v17 = v11;
        v18 = v12;
        if (v12)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

LABEL_20:
      v14 = 0;
      v13 = 0;
      v19 = 0;
      v20 = 0;
      v17 = v11;
      v18 = v12;
      if (v12)
      {
LABEL_14:
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

LABEL_15:
      v16[0] = v13;
      v16[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      JetPack::readJetPackStream(v9, &v17, (a4 & 1) == 0, v16);
    }
  }

  else
  {
    v9 = 0;
    v23 = 0;
    v24 = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  v12 = 0;
  v11 = 0;
  v21 = 0;
  v22 = 0;
  if (a3)
  {
    goto LABEL_11;
  }

  goto LABEL_20;
}

void sub_2556368A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a16);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a18);
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(a1);
    nestedExceptionString(v26, &__p);
    std::optional<std::string>::operator=[abi:ne200100]<std::string,void>(v22 + 16, &__p);
    if (a14 < 0)
    {
      operator delete(__p);
    }

    __cxa_end_catch();
    if (!a21)
    {
      JUMPOUT(0x255636780);
    }

    JUMPOUT(0x255636740);
  }

  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a20);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a22);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](v23 - 64);
  _Unwind_Resume(a1);
}

void sub_25563700C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v22);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a15);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::throw_with_nested[abi:ne200100]<JetPack::UnableToParseRootSegmentException &>(&a9);
  }

  JetPack::NotEnoughDataException::~NotEnoughDataException(&a9);
  _Unwind_Resume(a1);
}

void sub_2556370D8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2556370E0);
  }

  __clang_call_terminate(a1);
}

size_t JetPack::FileStream::read(JetPack::FileStream *this, unsigned __int8 *__ptr, size_t a3)
{
  v3 = *(this + 1);
  if (v3)
  {

    return fread(__ptr, 1uLL, a3, v3);
  }

  else
  {
    {
      JetPack::DiagnosticContext::DiagnosticContext(&getGlobalLog(void)::sharedContext);
    }

    v5 = qword_280B1A548;
    if (os_log_type_enabled(qword_280B1A548, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_255634000, v5, OS_LOG_TYPE_ERROR, "THIS IS A FATAL BUG: Trying to read from null file pointer", v6, 2u);
    }

    return 0;
  }
}

BOOL JetPack::parseRootDynamicRegion(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_255634000, v4, OS_LOG_TYPE_DEBUG, "Reading root dynamic region", v10, 2u);
  }

  LOBYTE(v10[0]) = 0;
  if ((*(*a1 + 16))(a1, v10, 1) != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    strcpy(exception + 8, "NotEnoughData");
    *(exception + 11) = 0;
    exception[31] = 13;
    *exception = &unk_286783430;
  }

  v5 = LOBYTE(v10[0]);
  v6 = *(a2 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 67240192;
    v10[1] = v5;
    _os_log_impl(&dword_255634000, v6, OS_LOG_TYPE_DEBUG, "Is signed flag is %{public}i", v10, 8u);
  }

  result = v5 == 1;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t JetPack::UnownedPartialStream::seekToEnd(JetPack::UnownedPartialStream *this)
{
  v2 = *(this + 2);
  v3 = v2 - (*(*this + 24))(this);
  v4 = *(*this + 48);

  return v4(this, v3);
}

uint64_t JetPack::UnownedPartialStream::seekForward(JetPack::UnownedPartialStream *this)
{
  v2 = *(this + 2);
  (*(*this + 24))(this);
  v3 = *(**(this + 1) + 48);

  return v3();
}

unint64_t JetPack::BaseStream::seekForward(JetPack::BaseStream *this, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 24))(this);
  result = (*(*this + 32))(this);
  if ((result & 1) == 0)
  {
    v6 = v4 + a2;
    do
    {
      result = (*(*this + 24))(this);
      if (v6 <= result)
      {
        break;
      }

      v7 = (*(*this + 24))(this);
      v8 = v6 - v7 >= 0x400 ? 1024 : v6 - v7;
      (*(*this + 16))(this, v10, v8);
      result = (*(*this + 32))(this);
    }

    while (!result);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void std::allocator<JetPack::SignedStreamDecoder>::construct[abi:ne200100]<JetPack::SignedStreamDecoder,std::shared_ptr<JetPack::BaseStream> &,std::shared_ptr<JetPack::SignatureVerifier> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = 0;
  *(a2 + 64) = v4;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = &unk_286783F90;
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  if (!v7)
  {
    *(a2 + 96) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    if (!v5)
    {
      return;
    }

    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v5)
  {
LABEL_13:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void JetPack::readMultiSegmentContainer(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255634000, v2, OS_LOG_TYPE_DEFAULT, "Reading multi segment container", buf, 2u);
  }

  v3 = *(a1 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *&buf[4] = 0;
    _os_log_impl(&dword_255634000, v3, OS_LOG_TYPE_DEBUG, "Reading segment %{public}i", buf, 8u);
  }

  JetPack::UnableToParseMultiSegmentException::UnableToParseMultiSegmentException(&v4);
}

void sub_255637B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  JetPack::NotEnoughDataException::~NotEnoughDataException(va);
  _Unwind_Resume(a1);
}

void sub_255637B5C(void *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va2);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::throw_with_nested[abi:ne200100]<JetPack::UnableToParseMultiSegmentException &>(va);
  }

  JetPack::readMultiSegmentContainer(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>,std::function<BOOL ()(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>)::$_0::~$_0(va1);
  JUMPOUT(0x255637B9CLL);
}

void sub_255637BAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255637D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a15);
  _Unwind_Resume(a1);
}

void JetPack::CommonCryptoBackend::trustForCertificate(JetPack::CommonCryptoBackend *this@<X0>, void *a2@<X8>)
{
  trust = 0;
  if (!SecTrustCreateWithCertificates(this, 0, &trust))
  {
    if (trust)
    {
      JetPack::makeCFSharedPtr<__SecTrust *>(trust, a2);
    }
  }

  puts("Unable to create trust");
  exception = __cxa_allocate_exception(0x20uLL);
  JetPack::FailedToDecodeX509CertificateException::FailedToDecodeX509CertificateException(exception);
}

void sub_255637EA8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

void JetPack::readJetPackStream(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v7 = *(a1 + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255634000, v7, OS_LOG_TYPE_DEFAULT, "Reading JetPack stream", buf, 2u);
    }

    if ((*(a1 + 224) & 1) == 0)
    {
      v8 = *(a1 + 24);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG) && (*buf = 0, _os_log_impl(&dword_255634000, v8, OS_LOG_TYPE_DEBUG, "Setting readSegment to default implementation", buf, 2u), (*(a1 + 224) & 1) != 0))
      {
        *buf = &unk_286783618;
        v15 = JetPack::readSegment;
        v16 = buf;
        std::__function::__value_func<BOOL ()(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>::swap[abi:ne200100](buf, (a1 + 192));
        if (v16 == buf)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))();
        }
      }

      else
      {
        *(a1 + 192) = &unk_286783618;
        *(a1 + 200) = JetPack::readSegment;
        *(a1 + 216) = a1 + 192;
        *(a1 + 224) = 1;
      }
    }

    v9 = a2[1];
    v13 = *a2;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = a4[1];
    v12 = *a4;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    JetPack::readRootSegment();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  JetPack::InputStreamRequiredException::InputStreamRequiredException(exception);
}

void sub_2556381F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t JetPack::parseRootHeader(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 19;
  strcpy(__p, "UnableToParseHeader");
  JetPack::ParseException::ParseException(v13, __p);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v13[0].__vftable = &unk_286784490;
  v4 = *(a2 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&dword_255634000, v4, OS_LOG_TYPE_DEFAULT, "Reading root header", __p, 2u);
  }

  if ((*(*a1 + 16))(a1, __p, 8) != 8)
  {
    goto LABEL_15;
  }

  v5 = *__p;
  __p[0] = 0;
  if ((*(*a1 + 16))(a1, __p, 1) != 1)
  {
    goto LABEL_15;
  }

  v6 = __p[0];
  v7 = *(a2 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 67240192;
    *&__p[4] = v6;
    _os_log_impl(&dword_255634000, v7, OS_LOG_TYPE_DEFAULT, "File format version is %{public}i", __p, 8u);
  }

  if ((*(*a1 + 16))(a1, __p, 4) != 4)
  {
LABEL_15:
    exception = __cxa_allocate_exception(0x20uLL);
    strcpy(exception + 8, "NotEnoughData");
    *(exception + 11) = 0;
    exception[31] = 13;
    *exception = &unk_286783430;
  }

  v8 = *__p;
  v9 = *(a2 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *__p = 67240192;
    *&__p[4] = v8;
    _os_log_impl(&dword_255634000, v9, OS_LOG_TYPE_DEBUG, "Dynamic region length is %{public}i", __p, 8u);
  }

  JetPack::UnownedPartialStream::UnownedPartialStream(__p, a1, v8);
  JetPack::parseRootDynamicRegion(__p, a2);
  JetPack::UnownedPartialStream::seekToEnd(__p);
  v13[0].__vftable = &unk_286783408;
  if (v14 < 0)
  {
    operator delete(v13[1].__vftable);
  }

  std::exception::~exception(v13);
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_25563853C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255638578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  __cxa_end_catch();
  JetPack::NotEnoughDataException::~NotEnoughDataException(&a9);
  _Unwind_Resume(a1);
}

void sub_255638590(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x255638598);
  }

  __clang_call_terminate(a1);
}

void *JetPack::UnownedPartialStream::UnownedPartialStream(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_286784550;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = (*(*a2 + 24))(a2);
  return a1;
}

{
  *a1 = &unk_286784550;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = (*(*a2 + 24))(a2);
  return a1;
}

void JetPack::FileStream::~FileStream(FILE **this)
{
  *this = &unk_2867845B0;
  if (*(this + 16) == 1)
  {
    fclose(this[1]);
  }
}

{
  *this = &unk_2867845B0;
  if (*(this + 16) == 1)
  {
    fclose(this[1]);
  }
}

{
  *this = &unk_2867845B0;
  if (*(this + 16) == 1)
  {
    fclose(this[1]);
  }

  JUMPOUT(0x259C3B950);
}

uint64_t JetPackStreamDestroy(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x259C3B950);
  }

  return result;
}

void **std::deque<unsigned char>::erase(void *a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = &a5[512 * (a4 - a2)] - a3 - *a4 + *a2;
  }

  v9 = a1[4];
  v10 = a1[1];
  v11 = a1[2];
  v12 = &v10[v9 >> 12];
  if (v11 == v10)
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v13 = *v12 + (a1[4] & 0xFFFLL);
    if (a3 == v13)
    {
LABEL_6:
      v14 = 0;
      goto LABEL_12;
    }
  }

  v15 = &a3[512 * (a2 - v12)] - &v13[*a2];
  v14 = *v12 + v15;
  if (!v14)
  {
LABEL_12:
    v17 = 1;
    v19 = v13;
    v18 = &v10[v9 >> 12];
    if (v8 < 1)
    {
      goto LABEL_34;
    }

    goto LABEL_13;
  }

  v16 = &v13[v15];
  if (v16 < 1)
  {
    v17 = 0;
    v25 = 4095 - v16;
    v18 = &v12[-(v25 >> 12)];
    v19 = *v18 + (~v25 & 0xFFF);
    if (v8 < 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v17 = 0;
    v18 = &v12[v16 >> 12];
    v19 = *v18 + (v16 & 0xFFF);
    if (v8 < 1)
    {
      goto LABEL_34;
    }
  }

LABEL_13:
  v20 = a1[5];
  v21 = v19 - *v18 + v8;
  if (v14 <= (v20 - v8) >> 1)
  {
    if (v21 < 1)
    {
      v30 = 4095 - v21;
      LOWORD(v21) = ~(4095 - v21);
      v24 = &v18[-(v30 >> 12)];
    }

    else
    {
      v24 = &v18[v21 >> 12];
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,0>(v12, v13, v18, v19, v24, *v24 + (v21 & 0xFFF), v41);
    v31 = a1[5] - v8;
    v9 = a1[4] + v8;
    a1[4] = v9;
    a1[5] = v31;
    v10 = a1[1];
    while (v9 >= 0x2000)
    {
      operator delete(*v10);
      v10 = (a1[1] + 8);
      a1[1] = v10;
      v9 = a1[4] - 4096;
      a1[4] = v9;
    }
  }

  else
  {
    if (v21 < 1)
    {
      v26 = 4095 - v21;
      v22 = &v18[-(v26 >> 12)];
      v23 = *v22 + (~v26 & 0xFFF);
    }

    else
    {
      v22 = &v18[v21 >> 12];
      v23 = *v22 + (v21 & 0xFFF);
    }

    v27 = v20 + v9;
    v28 = &v10[v27 >> 12];
    if (v11 == v10)
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28 + (v27 & 0xFFF);
    }

    v41[0] = v18;
    v41[1] = v19;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>>(v22, v23, v28, v29, v41);
    v10 = a1[1];
    v32 = a1[2];
    v33 = ((v32 - v10) << 9) - 1;
    if (v32 == v10)
    {
      v33 = 0;
    }

    v9 = a1[4];
    v34 = a1[5] - v8;
    a1[5] = v34;
    if (v33 - (v34 + v9) >= 0x2000)
    {
      do
      {
        operator delete(*(v32 - 8));
        v10 = a1[1];
        v32 = a1[2] - 8;
        v35 = ((v32 - v10) << 9) - 1;
        a1[2] = v32;
        if (v32 == v10)
        {
          v35 = 0;
        }

        v9 = a1[4];
      }

      while ((v35 - (a1[5] + v9)) >> 13);
    }
  }

LABEL_34:
  result = &v10[v9 >> 12];
  if (a1[2] == v10)
  {
    v37 = 0;
    if (v17)
    {
      return result;
    }
  }

  else
  {
    v37 = *result + (v9 & 0xFFF);
    if (v17)
    {
      return result;
    }
  }

  v38 = &v14[v37 - *result];
  if (v38 < 1)
  {
    result -= (4095 - v38) >> 12;
    v40 = *result;
  }

  else
  {
    result += v38 >> 12;
    v39 = *result;
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_46;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13];
      if (v14 - a2 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14 - a2;
      }

      v14 -= v16;
      a6 -= v16;
      if (v16)
      {
        result = memmove(a6, v14, v16);
      }

      if (v14 == a2)
      {
        break;
      }

      v18 = *--v8;
      v13 = v18;
      a6 = (v18 + 4096);
    }

    goto LABEL_44;
  }

  v20 = *a3;
  if (*a3 != a4)
  {
    v21 = *a5;
    v22 = a4;
    while (1)
    {
      v23 = &a6[-v21];
      if (v22 - v20 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v22 - v20;
      }

      v22 -= v24;
      a6 -= v24;
      if (v24)
      {
        result = memmove(a6, v22, v24);
      }

      if (v22 == v20)
      {
        break;
      }

      v25 = *--v8;
      v21 = v25;
      a6 = (v25 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v26 = v8[1];
      ++v8;
      a6 = v26;
    }
  }

  v27 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v28 = *v8;
    do
    {
      v29 = *v27;
      v30 = *v27 + 4096;
      while (1)
      {
        v31 = (a6 - v28);
        if (v30 - v29 >= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v30 - v29;
        }

        v30 -= v32;
        a6 -= v32;
        if (v32)
        {
          result = memmove(a6, v30, v32);
        }

        if (v30 == v29)
        {
          break;
        }

        v33 = *--v8;
        v28 = v33;
        a6 = v33 + 4096;
      }

      v28 = *v8;
      if (*v8 + 4096 == a6)
      {
        v34 = v8[1];
        ++v8;
        v28 = v34;
        a6 = v34;
      }

      --v27;
    }

    while (v27 != a1);
  }

  v35 = *v27 + 4096;
  if (v35 != a2)
  {
    v36 = *v8;
    while (1)
    {
      v37 = &a6[-v36];
      if (v35 - a2 >= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v35 - a2;
      }

      v35 -= v38;
      a6 -= v38;
      if (v38)
      {
        result = memmove(a6, v35, v38);
      }

      if (v35 == a2)
      {
        break;
      }

      v39 = *--v8;
      v36 = v39;
      a6 = (v39 + 4096);
    }

LABEL_44:
    if (*v8 + 4096 == a6)
    {
      v40 = v8[1];
      ++v8;
      a6 = v40;
    }
  }

LABEL_46:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

void sub_255638DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BOOL (*)(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>),std::allocator<BOOL (*)(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>,BOOL ()(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>::operator()(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __int128 *a4)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  v10 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  result = v5(a2, v6, &v10);
  v8 = *(&v10 + 1);
  if (*(&v10 + 1))
  {
    if (!atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      return v9;
    }
  }

  return result;
}

uint64_t JetPack::readSegment(uint64_t a1, int a2, uint64_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v8 = *(a1 + 24);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_255634000, v8, OS_LOG_TYPE_DEBUG, "Reading serialization segment", buf, 2u);
        }

        v9 = a3[1];
        v18 = *a3;
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        JetPack::readSerializationSegment();
      case 4:
        v10 = *(a1 + 24);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_255634000, v10, OS_LOG_TYPE_DEBUG, "Reading brotli segment", buf, 2u);
        }

        v11 = a3[1];
        v19 = *a3;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        JetPack::readBrotliSegment();
      case 7:
        v4 = *(a1 + 24);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_255634000, v4, OS_LOG_TYPE_DEBUG, "Reading encryption segment", buf, 2u);
        }

        v5 = a3[1];
        v17 = *a3;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        JetPack::readEncryptedSegment();
    }

    goto LABEL_28;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v6 = *(a1 + 24);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_255634000, v6, OS_LOG_TYPE_DEBUG, "Reading data segment", buf, 2u);
      }

      v7 = a3[1];
      v20 = *a3;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      JetPack::readDataSegment();
    }

LABEL_28:
    v15 = *(a1 + 24);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v22 = a2;
      _os_log_impl(&dword_255634000, v15, OS_LOG_TYPE_ERROR, "Unable to find segment for tag %{public}i", buf, 8u);
    }

    exception = __cxa_allocate_exception(0x28uLL);
    JetPack::InvalidSegmentTagException::InvalidSegmentTagException(exception, a2);
  }

  result = 1;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255639244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25563950C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 - 33) < 0)
  {
    operator delete(*(v20 - 56));
    if (a2 != 1)
    {
      goto LABEL_6;
    }
  }

  else if (a2 != 1)
  {
LABEL_6:
    JetPack::NotEnoughDataException::~NotEnoughDataException(&a9);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  std::throw_with_nested[abi:ne200100]<JetPack::UnableToParseDataSegmentException &>(&a9);
}

void sub_255639594(_Unwind_Exception *exception_object)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
  }

  _Unwind_Resume(exception_object);
}

void JetPack::parseDataSegmentHeader(JetPack *this@<X0>, JetPack::BaseStream *a2@<X1>, char *a3@<X8>)
{
  __p[3] = *MEMORY[0x277D85DE8];
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "UnableToParseHeader");
  JetPack::ParseException::ParseException(v14, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v14[0].__vftable = &unk_286784490;
  v7 = *(a2 + 1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_255634000, v7, OS_LOG_TYPE_DEFAULT, "Reading data segment header", __p, 2u);
  }

  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  LOBYTE(__p[0]) = 0;
  if ((*(*this + 16))(this, __p, 1) != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    strcpy(exception + 8, "NotEnoughData");
    *(exception + 11) = 0;
    exception[31] = 13;
    *exception = &unk_286783430;
  }

  v8 = LOBYTE(__p[0]);
  v9 = *(a2 + 1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = v8;
    _os_log_impl(&dword_255634000, v9, OS_LOG_TYPE_DEBUG, "Name length is %{public}i", __p, 8u);
  }

  readString(this, v8, __p);
  *a3 = *__p;
  *(a3 + 2) = __p[2];
  v10 = *(a2 + 1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    if (a3[23] >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v11;
    _os_log_impl(&dword_255634000, v10, OS_LOG_TYPE_DEBUG, "Name is %{public}s", __p, 0xCu);
  }

  v14[0].__vftable = &unk_286783408;
  if (v15 < 0)
  {
    operator delete(v14[1].__vftable);
  }

  std::exception::~exception(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255639884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2556398C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  __cxa_end_catch();
  JetPack::NotEnoughDataException::~NotEnoughDataException(&a9);
  _Unwind_Resume(a1);
}

void sub_2556398D8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2556398E0);
  }

  __clang_call_terminate(a1);
}

void readString(JetPack::BaseStream *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if ((*(*a1 + 16))(a1, 0, 0))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    strcpy(exception + 8, "NotEnoughData");
    *(exception + 11) = 0;
    exception[31] = 13;
    *exception = &unk_286783430;
  }

  a3[23] = 0;
  *a3 = 0;
}

void sub_255639AA0(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<JetPackReaderSetDataSegmentFoundCallback::$_0,std::allocator<JetPackReaderSetDataSegmentFoundCallback::$_0>,BOOL ()(JetPack::ReaderConfig &,std::string,std::shared_ptr<JetPack::BaseStream>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *__p = *a3;
  v15 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v4 = *a4;
  v5 = a4[1];
  v13 = v5;
  *a4 = 0;
  a4[1] = 0;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = v4;
    v17 = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      a1 = v6;
    }
  }

  else
  {
    v16 = v4;
    v17 = 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v15 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = v8(v7, v9, &v16);
  v11 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return v10;
    }

    goto LABEL_14;
  }

  if (SHIBYTE(v15) < 0)
  {
LABEL_14:
    operator delete(__p[0]);
  }

  return v10;
}

void sub_255639C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](v16 - 32);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t dataSegmentFound(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = JetPackReaderGetProperty(a1, 0);
  v6 = [v5 dataSegmentFound];

  if (v6)
  {
    if (a2)
    {
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    }

    else
    {
      v7 = &stru_286784EB0;
    }

    v9 = [[JPStream alloc] initWithBacking:a3 releaseOnDealloc:0];
    v10 = [v5 dataSegmentFound];
    v8 = (v10)[2](v10, v7, v9);
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t JetPackReaderGetProperty(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a2)
    {
LABEL_5:
      result = 0;
      if (!v3)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  result = *v2;
  if (!v3)
  {
    return result;
  }

LABEL_9:
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    return v5;
  }

  return result;
}

void *std::deque<unsigned char>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v12 = a1;
    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned char *>::emplace_back<unsigned char *&>(a1, &v11);
}

void sub_25563A020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  operator delete(v11);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned char *>::emplace_back<unsigned char *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void JetPack::SignedStreamDecoder::readBlock(JetPack::BaseStream **this)
{
  if (!(*(*this[8] + 32))(this[8]) || (this[16] & 1) != 0)
  {
    if ((*(*this[8] + 16))(this[8], &v7, 4) == 4)
    {
      if (v7 < 0x8000001)
      {
        readVector(this[8], v7, 1, &v7);
        if ((*(*this[8] + 16))(this[8], &v6, 2) == 2)
        {
          readVector(this[8], v6, 1, &v6);
          if (v8 != v7)
          {
            if (((v8 - v7) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          operator new();
        }

        exception = __cxa_allocate_exception(0x20uLL);
        strcpy(exception + 8, "NotEnoughData");
        *(exception + 11) = 0;
        exception[31] = 13;
        *exception = &unk_286783430;
      }

      v3 = __cxa_allocate_exception(0x20uLL);
      JetPack::BlockExceedsMaximumSizeException::BlockExceedsMaximumSizeException(v3);
    }

    v2 = __cxa_allocate_exception(0x20uLL);
    strcpy(v2 + 8, "NotEnoughData");
    *(v2 + 11) = 0;
    v2[31] = 13;
    *v2 = &unk_286783430;
  }

  v5 = __cxa_allocate_exception(0x20uLL);
  JetPack::MissingTerminationBlockException::MissingTerminationBlockException(v5);
}

void sub_25563A894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 96);
  if (v27)
  {
    *(v25 - 88) = v27;
    operator delete(v27);
    v28 = *(v25 - 72);
    if (!v28)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v28 = *(v25 - 72);
    if (!v28)
    {
      goto LABEL_5;
    }
  }

  *(v25 - 64) = v28;
  operator delete(v28);
  _Unwind_Resume(exception_object);
}

const void **std::__split_buffer<unsigned char *>::emplace_front<unsigned char *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

unint64_t JetPack::BufferedStream::read(JetPack::BufferedStream *this, unsigned __int8 *a2, unint64_t a3)
{
  if (((*(*this + 64))(this) & 1) == 0)
  {
    do
    {
      if (*(this + 6) >= a3)
      {
        break;
      }

      (*(*this + 56))(this, a3);
    }

    while (!(*(*this + 64))(this));
  }

  if (*(this + 6) < a3)
  {
    a3 = *(this + 6);
  }

  v6 = *(this + 2);
  v7 = (v6 + 8 * (*(this + 5) >> 12));
  if (*(this + 3) == v6)
  {
    v8 = 0;
    v9 = 0;
    if (!a3)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = (*v7 + (*(this + 5) & 0xFFFLL));
    v9 = v8;
    if (!a3)
    {
LABEL_21:
      v18 = v9 - v8;
      if (v9 == v8)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v10 = &v8[a3 - *v7];
  if (v10 < 1)
  {
    v19 = 4095 - v10;
    v20 = ~v19;
    v21 = (v19 >> 9) & 0x7FFFFFFFFFFFF8;
    v11 = -v21;
    v9 = (*(v7 - v21) + (v20 & 0xFFF));
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = (v10 >> 9) & 0x3FFFFFFFFFFFF8;
    v9 = (*(v7 + v11) + (v10 & 0xFFF));
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  v12 = *v7 + 4096;
  v13 = v12 - v8;
  if (v12 != v8)
  {
    memmove(a2, v8, v12 - v8);
  }

  a2 += v13;
  v14 = (v7 + 1);
  v15 = v11 - 8;
  if (v11 != 8)
  {
    v16 = (v7 + v11);
    do
    {
      v17 = *v14++;
      memmove(a2, v17, 0x1000uLL);
      a2 += 4096;
      v15 -= 8;
    }

    while (v15);
    v14 = v16;
  }

  v8 = *v14;
  if (*v14 != v9)
  {
    v18 = v9 - v8;
LABEL_22:
    memmove(a2, v8, v18);
  }

LABEL_23:
  v22 = *(this + 5);
  v23 = *(this + 2);
  v24 = (v23 + 8 * (v22 >> 12));
  if (*(this + 3) != v23)
  {
    v25 = (*v24 + (*(this + 5) & 0xFFFLL));
    if (a3)
    {
      goto LABEL_25;
    }

LABEL_28:
    v28 = v25;
    v27 = (v23 + 8 * (v22 >> 12));
    goto LABEL_30;
  }

  v25 = 0;
  if (!a3)
  {
    goto LABEL_28;
  }

LABEL_25:
  v26 = &v25[a3 - *v24];
  if (v26 < 1)
  {
    v29 = 4095 - v26;
    v27 = &v24[-8 * (v29 >> 12)];
    v28 = (*v27 + (~v29 & 0xFFF));
  }

  else
  {
    v27 = &v24[8 * (v26 >> 12)];
    v28 = (*v27 + (v26 & 0xFFF));
  }

LABEL_30:
  std::deque<unsigned char>::erase(this + 1, v24, v25, v27, v28);
  *(this + 7) += a3;
  return a3;
}

uint64_t JetPack::SignedStreamDecoder::inputIsFinished(JetPack::SignedStreamDecoder *this)
{
  if ((*(**(this + 8) + 32))(*(this + 8)))
  {
    v2 = *(this + 128);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void JetPack::readSegmentContainer(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v4 = *a2;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = JetPack::parseSegmentContainerHeader(&v4, a1 + 16);
  v3 = v5;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  std::allocate_shared[abi:ne200100]<JetPack::PartialStream,std::allocator<JetPack::PartialStream>,std::shared_ptr<JetPack::BaseStream> &,unsigned int &,0>();
}

void sub_25563B058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25563B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t JetPack::parseSegmentContainerHeader(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 19;
  strcpy(__p, "UnableToParseHeader");
  JetPack::ParseException::ParseException(v13, __p);
  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v13[0].__vftable = &unk_286784490;
  v4 = *(a2 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&dword_255634000, v4, OS_LOG_TYPE_DEFAULT, "Reading segment container header", __p, 2u);
  }

  v5 = *a1;
  __p[0] = 0;
  if ((*(*v5 + 16))(v5, __p, 1) != 1)
  {
    goto LABEL_14;
  }

  v6 = __p[0];
  v7 = *(a2 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *__p = 67240192;
    *&__p[4] = v6;
    _os_log_impl(&dword_255634000, v7, OS_LOG_TYPE_DEBUG, "Tag is %{public}hhu", __p, 8u);
  }

  if ((*(**a1 + 16))(*a1, __p, 4) != 4)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x20uLL);
    strcpy(exception + 8, "NotEnoughData");
    *(exception + 11) = 0;
    exception[31] = 13;
    *exception = &unk_286783430;
  }

  v8 = *__p;
  v9 = *(a2 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *__p = 67240192;
    *&__p[4] = v8;
    _os_log_impl(&dword_255634000, v9, OS_LOG_TYPE_DEBUG, "Length is %{public}i", __p, 8u);
  }

  v13[0].__vftable = &unk_286783408;
  if (v14 < 0)
  {
    operator delete(v13[1].__vftable);
  }

  std::exception::~exception(v13);
  v10 = *MEMORY[0x277D85DE8];
  return v6 | (v8 << 32);
}

void sub_25563B344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25563B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  __cxa_end_catch();
  JetPack::NotEnoughDataException::~NotEnoughDataException(&a9);
  _Unwind_Resume(a1);
}

void sub_25563B398(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x25563B3A0);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<BOOL (*)(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>),std::allocator<BOOL (*)(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>,BOOL ()(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867834A8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>),std::allocator<BOOL (*)(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>,BOOL ()(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>::operator()(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a1 + 8);
  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  result = v3(a2, &v7);
  v5 = *(&v7 + 1);
  if (*(&v7 + 1))
  {
    if (!atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

uint64_t JetPackStreamIsFinished(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    a1 = *a1;
    v2 = v1[1];
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
  }

  result = (*(*a1 + 32))(a1);
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      return v4;
    }
  }

  return result;
}

void JetPack::parseEncryptedSegmentHeader(JetPack *this@<X0>, JetPack::BaseStream *a2@<X1>, uint64_t a3@<X8>)
{
  __p[3] = *MEMORY[0x277D85DE8];
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "UnableToParseHeader");
  JetPack::ParseException::ParseException(v17, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v17[0].__vftable = &unk_286784490;
  v7 = *(a2 + 1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_255634000, v7, OS_LOG_TYPE_DEFAULT, "Reading encrypted segment header", __p, 2u);
  }

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if ((*(*this + 16))(this, __p, 2) != 2)
  {
    goto LABEL_17;
  }

  v8 = LOWORD(__p[0]);
  *a3 = __p[0];
  v9 = *(a2 + 1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = v8;
    _os_log_impl(&dword_255634000, v9, OS_LOG_TYPE_DEBUG, "Key identifier is %{public}i", __p, 8u);
  }

  if ((*(*this + 16))(this, __p, 4) != 4)
  {
    goto LABEL_17;
  }

  v10 = __p[0];
  *(a3 + 4) = __p[0];
  v11 = *(a2 + 1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = v10;
    _os_log_impl(&dword_255634000, v11, OS_LOG_TYPE_DEBUG, "Block size is %{public}i", __p, 8u);
  }

  LOBYTE(__p[0]) = 0;
  if ((*(*this + 16))(this, __p, 1) != 1)
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x20uLL);
    strcpy(exception + 8, "NotEnoughData");
    *(exception + 11) = 0;
    exception[31] = 13;
    *exception = &unk_286783430;
  }

  v12 = LOBYTE(__p[0]);
  v13 = *(a2 + 1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = v12;
    _os_log_impl(&dword_255634000, v13, OS_LOG_TYPE_DEBUG, "Nonce length is %{public}i", __p, 8u);
  }

  readVector(this, v12, 1, __p);
  v14 = __p[2];
  *(a3 + 8) = *__p;
  *(a3 + 24) = v14;
  v17[0].__vftable = &unk_286783408;
  if (v18 < 0)
  {
    operator delete(v17[1].__vftable);
  }

  std::exception::~exception(v17);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_25563BB8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25563BBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::exception a9)
{
  __cxa_end_catch();
  JetPack::NotEnoughDataException::~NotEnoughDataException(&a9);
  _Unwind_Resume(a1);
}

void sub_25563BBE0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x25563BBE8);
  }

  __clang_call_terminate(a1);
}

BOOL keyForIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = JetPackReaderGetProperty(a1, 0);
  v8 = [v7 keyForIdentifier];

  if (v8)
  {
    v9 = [v7 keyForIdentifier];
    v10 = v9[2](v9, a2);

    v11 = v10 != 0;
    if (v10)
    {
      [v10 getBytes:a3 length:a4];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t JetPack::SignedStreamDecoder::fill(uint64_t this, unint64_t a2)
{
  if (*(this + 48) < a2)
  {
    v2 = this;
    this = (*(*v2 + 8))(v2);
    if ((this & 1) == 0)
    {
      JetPack::SignedStreamDecoder::readBlock(v2);
    }
  }

  return this;
}

void readVector(JetPack::BaseStream *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v6 = (*(*a1 + 16))(a1, 0, 0);
  if (v6)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    strcpy(exception + 8, "NotEnoughData");
    *(exception + 11) = 0;
    exception[31] = 13;
    *exception = &unk_286783430;
  }

  if (v6)
  {
    std::vector<unsigned char>::__append(a4, v6);
  }
}

void sub_25563BE80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (!*v1)
  {
    _Unwind_Resume(exception_object);
  }

  *(v1 + 8) = v3;
  operator delete(v3);
  _Unwind_Resume(exception_object);
}

_BYTE *JetPack::signingChunkForDataBlock@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *(a1 + 8) - *a1 + *(a2 + 8) - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a2 + 8) - *a2;
  std::__copy_impl::operator()[abi:ne200100]<unsigned char *,unsigned char *,std::back_insert_iterator<std::vector<unsigned char>>>(&v10, &v8, &v9, a3);
  std::__copy_impl::operator()[abi:ne200100]<unsigned char *,unsigned char *,std::back_insert_iterator<std::vector<unsigned char>>>(&v11, *a2, *(a2 + 8), a3);
  return std::__copy_impl::operator()[abi:ne200100]<unsigned char *,unsigned char *,std::back_insert_iterator<std::vector<unsigned char>>>(&v12, *a1, *(a1 + 8), a3);
}

void sub_25563BF6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::__copy_impl::operator()[abi:ne200100]<unsigned char *,unsigned char *,std::back_insert_iterator<std::vector<unsigned char>>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 < v8)
      {
        *v7++ = *v5;
      }

      else
      {
        v9 = *a4;
        v10 = &v7[-*a4];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        v14 = &v7[-*a4];
        *v10 = *v5;
        v7 = v10 + 1;
        memcpy(0, v9, v14);
        *a4 = 0;
        *(a4 + 8) = v10 + 1;
        *(a4 + 16) = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t JetPack::DiagnosticContext::DiagnosticContext(uint64_t this)
{
  *this = 4;
  if ((atomic_load_explicit(&qword_280B1A5B0, memory_order_acquire) & 1) == 0)
  {
    v1 = this;
    JetPackFileEntryGetPathname_cold_1();
    this = v1;
  }

  *(this + 8) = _MergedGlobals_0;
  return this;
}

uint64_t JetPack::BufferedStream::isFinished(JetPack::BufferedStream *this)
{
  if (*(this + 6))
  {
    return 0;
  }

  else
  {
    return (*(*this + 64))();
  }
}

uint64_t JetPackStreamRead(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    a1 = *a1;
    v2 = v1[1];
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
  }

  result = (*(*a1 + 16))(a1);
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      return v4;
    }
  }

  return result;
}

void JetPack::PartialStream::~PartialStream(JetPack::PartialStream *this)
{
  *this = &unk_286783968;
  v1 = *(this + 5);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_286783968;
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C3B950);
}

void JetPack::readEncryptedSegment()
{
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

{
  if (__cxa_guard_acquire(&qword_280B1A5A0))
  {
    _MergedGlobals = os_log_create("com.apple.JetPack", "Diagnostics");
    __cxa_guard_release(&qword_280B1A5A0);
  }
}

void sub_25563C7B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  __cxa_free_exception(v25);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::throw_with_nested[abi:ne200100]<JetPack::UnableToParseEncryptedSegmentException &>(&a10);
  }

  JetPack::NotEnoughDataException::~NotEnoughDataException(&a10);
  _Unwind_Resume(a1);
}

void sub_25563C894(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x25563C89CLL);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<JetPackReaderSetKeyForIdentifierCallback::$_0,std::allocator<JetPackReaderSetKeyForIdentifierCallback::$_0>,std::optional<std::array<unsigned char,16ul>> ()(JetPack::ReaderConfig &,unsigned short)>::operator()@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = (*(a1 + 8))(*(a1 + 16), *a2, &v7, 16);
  if (result)
  {
    *a3 = v7;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 16) = v5;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25563CCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a17);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void JetPack::CommonCryptoBackend::publicKeyForTrust(JetPack::CommonCryptoBackend *this@<X0>, void *a2@<X8>)
{
  v4 = SecTrustCopyKey(this);
  if (v4)
  {

    JetPack::makeCFSharedPtr<__SecKey *>(v4, a2);
  }

  puts("Unable to copy public key");
  exception = __cxa_allocate_exception(0x20uLL);
  JetPack::FailedToDecodeX509CertificateException::FailedToDecodeX509CertificateException(exception);
}

void sub_25563CE24(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

void sub_25563D090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14)
{
  std::function<BOOL ()(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>::~function(&a14);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_25563D0B4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::allocator<JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>>::construct[abi:ne200100]<JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>,std::shared_ptr<JetPack::BaseStream> &>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = *a3;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_25563D1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::allocator<JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>>::construct[abi:ne200100]<JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>,std::shared_ptr<JetPack::BaseStream> &>(a3);
  }

  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

JetPack::AppleDecompressionInterface *JetPack::AppleDecompressionInterface::AppleDecompressionInterface(JetPack::AppleDecompressionInterface *this)
{
  *this = &unk_2867843F8;
  *(this + 48) = 0;
  if (compression_stream_init((this + 8), COMPRESSION_STREAM_DECODE, COMPRESSION_BROTLI))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    JetPack::CompressionUnableToInitException::CompressionUnableToInitException(exception);
  }

  return this;
}

{
  *this = &unk_2867843F8;
  *(this + 48) = 0;
  if (compression_stream_init((this + 8), COMPRESSION_STREAM_DECODE, COMPRESSION_BROTLI))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    JetPack::CompressionUnableToInitException::CompressionUnableToInitException(exception);
  }

  return this;
}

uint64_t JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>::BrotliDecoderStreamImpl(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  *a4 = 0;
  *result = &unk_2867832F8;
  *(result + 8) = v4;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 2;
  *(result + 56) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  *(result + 96) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  return result;
}

void sub_25563D374(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>::BrotliDecoderStreamImpl(v1 + 56, (v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t JetPack::CommonCryptoBackend::deriveKey(JetPack::CommonCryptoBackend *this, const unsigned __int8 *a2, unint64_t a3, const unsigned __int8 *a4, unint64_t a5, unsigned __int8 *a6)
{
  CCKDFParametersCreateHkdf();
  if (CCDeriveKey())
  {
    return 4294966296;
  }

  else
  {
    return 1;
  }
}

void sub_25563D444(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CCKDFParametersDestroy();
  }

  _Unwind_Resume(exception_object);
}

uint64_t JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 32))(a1))
  {
    return 0;
  }

  *(a1 + 40) = a2;
  *(a1 + 32) = a3;
  while (1)
  {
    if (*(a1 + 48) == 2 && ((*(**(a1 + 56) + 32))(*(a1 + 56)) & 1) == 0)
    {
      if (*(a1 + 16))
      {
        exception = __cxa_allocate_exception(0x20uLL);
        JetPack::BrotliAvailableInNotEmptyOnFillException::BrotliAvailableInNotEmptyOnFillException(exception);
      }

      v7 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(a1 + 72), *(a1 + 80) - *(a1 + 72));
      v8 = *(a1 + 72);
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
    }

    v9 = *(a1 + 8);
    v10 = (*(**(a1 + 56) + 32))(*(a1 + 56));
    v11 = (*(*v9 + 16))(v9, a1 + 16, a1 + 24, a1 + 32, a1 + 40, v10);
    *(a1 + 48) = v11;
    if (v11 != 2)
    {
      break;
    }

    if ((*(**(a1 + 56) + 32))(*(a1 + 56)))
    {
      v12 = __cxa_allocate_exception(0x20uLL);
      strcpy(v12 + 8, "NotEnoughData");
      *(v12 + 11) = 0;
      v12[31] = 13;
      *v12 = &unk_286783430;
    }
  }

  v13 = *(a1 + 32);
  if (v11 == 1)
  {
    if (((*(**(a1 + 56) + 32))(*(a1 + 56)) & 1) == 0)
    {
      v16 = __cxa_allocate_exception(0x20uLL);
      JetPack::BrotliStreamNotFinishedAfterDecodingException::BrotliStreamNotFinishedAfterDecodingException(v16);
    }
  }

  else if (v11 != 3)
  {
    v14 = __cxa_allocate_exception(0x28uLL);
    JetPack::BrotliUnknownDecoderResultException::BrotliUnknownDecoderResultException(v14, *(a1 + 48));
  }

  result = a3 - v13;
  *(a1 + 96) += a3 - v13;
  return result;
}

void std::allocator<JetPack::AESDecoderStream>::construct[abi:ne200100]<JetPack::AESDecoderStream,std::shared_ptr<JetPack::BaseStream> &,std::array<unsigned char,16ul> &,unsigned int &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a3[1];
  v9 = *a3;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  v7 = a4[1];
  v8 = *a5;
  operator new();
}

void sub_25563D874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    std::allocator<JetPack::AESDecoderStream>::construct[abi:ne200100]<JetPack::AESDecoderStream,std::shared_ptr<JetPack::BaseStream> &,std::array<unsigned char,16ul> &,unsigned int &>(a3);
  }

  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t JetPack::AESDecoderStream::AESDecoderStream(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *result = &unk_286783C08;
  v6 = a2[1];
  *(result + 8) = *a2;
  *(result + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a6;
  *a6 = 0;
  *(result + 24) = v7;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 52) = 0u;
  *(result + 68) = 0u;
  *(result + 84) = 0u;
  *(result + 100) = 0u;
  *(result + 116) = 0u;
  *(result + 132) = 0;
  if (a5)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  return result;
}

void sub_25563D9FC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v1[18] = v5;
    operator delete(v5);
  }

  v6 = v1[14];
  if (v6)
  {
    v1[15] = v6;
    operator delete(v6);
  }

  std::deque<unsigned char>::~deque[abi:ne200100]((v1 + 8));
  v7 = v1[3];
  v1[3] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

char *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v14 = a3 - a2;
    if (v14)
    {
      v15 = result;
      memmove(result, a2, v14);
      result = v15;
    }

    v13 = &result[v14];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    v13 = &v9[v12];
  }

  a1[1] = v13;
  return result;
}

unint64_t JetPack::AESDecoderStream::read(JetPack::AESDecoderStream *this, unsigned __int8 *a2, unint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  while (((*(**(this + 1) + 32))(*(this + 1)) & 1) == 0)
  {
    if (*(this + 13) >= a3)
    {
      break;
    }

    v6 = *(this + 13);
    *(this + 13) = v6 + 1;
    v46 = 0;
    v47 = v6;
    if ((*(**(this + 1) + 16))(*(this + 1), v45, 16) != 16)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      JetPack::InvalidEncryptionTagLengthException::InvalidEncryptionTagLengthException(exception);
    }

    v7 = (*(**(this + 1) + 16))(*(this + 1), *(this + 14), *(this + 12));
    if ((*(**(this + 3) + 40))(*(this + 3), this + 32, 16, &v46, 12, 0, 0, *(this + 14), v7, *(this + 17), v45, 16) != 1)
    {
      v42 = __cxa_allocate_exception(0x28uLL);
      v43 = (*(**(this + 3) + 40))(*(this + 3), this + 32, 16, &v46, 12, 0, 0, *(this + 14), v7, *(this + 17), v45, 16);
      JetPack::CommonCryptoInvalidStatusException::CommonCryptoInvalidStatusException(v42, v43);
    }

    if (v7)
    {
      v8 = *(this + 17);
      v9 = *(this + 13);
      do
      {
        v11 = *(this + 72);
        v12 = *(this + 10);
        v13 = *(this + 9);
        if (v12 == v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = ((v12 - v13) << 9) - 1;
        }

        v15 = *(this + 12) + v9;
        if (v14 == v15)
        {
          std::deque<unsigned char>::__add_back_capacity(this + 8);
          v13 = *(this + 9);
          v15 = *(this + 13) + *(this + 12);
        }

        v10 = *v8++;
        *(*(v13 + ((v15 >> 9) & 0x7FFFFFFFFFFFF8)) + (v15 & 0xFFF)) = v10;
        v9 = *(this + 13) + 1;
        *(this + 13) = v9;
        --v7;
      }

      while (v7);
    }
  }

  if (*(this + 13) < a3)
  {
    a3 = *(this + 13);
  }

  v16 = *(this + 9);
  v17 = (v16 + 8 * (*(this + 12) >> 12));
  if (*(this + 10) == v16)
  {
    v18 = 0;
    v19 = 0;
    if (!a3)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = (*v17 + (*(this + 12) & 0xFFFLL));
    v19 = v18;
    if (!a3)
    {
LABEL_31:
      v28 = v19 - v18;
      if (v19 == v18)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v20 = &v18[a3 - *v17];
  if (v20 < 1)
  {
    v29 = 4095 - v20;
    v30 = ~v29;
    v31 = (v29 >> 9) & 0x7FFFFFFFFFFFF8;
    v21 = -v31;
    v19 = (*(v17 - v31) + (v30 & 0xFFF));
    if (!v31)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v21 = (v20 >> 9) & 0x3FFFFFFFFFFFF8;
    v19 = (*(v17 + v21) + (v20 & 0xFFF));
    if (!v21)
    {
      goto LABEL_31;
    }
  }

  v22 = *v17 + 4096;
  v23 = v22 - v18;
  if (v22 != v18)
  {
    memmove(a2, v18, v22 - v18);
  }

  a2 += v23;
  v24 = (v17 + 1);
  v25 = v21 - 8;
  if (v21 != 8)
  {
    v26 = (v17 + v21);
    do
    {
      v27 = *v24++;
      memmove(a2, v27, 0x1000uLL);
      a2 += 4096;
      v25 -= 8;
    }

    while (v25);
    v24 = v26;
  }

  v18 = *v24;
  if (*v24 != v19)
  {
    v28 = v19 - v18;
LABEL_32:
    memmove(a2, v18, v28);
  }

LABEL_33:
  v32 = *(this + 12);
  v33 = *(this + 9);
  v34 = (v33 + 8 * (v32 >> 12));
  if (*(this + 10) != v33)
  {
    v35 = (*v34 + (*(this + 12) & 0xFFFLL));
    if (a3)
    {
      goto LABEL_35;
    }

LABEL_38:
    v38 = v35;
    v37 = (v33 + 8 * (v32 >> 12));
    goto LABEL_40;
  }

  v35 = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

LABEL_35:
  v36 = &v35[a3 - *v34];
  if (v36 < 1)
  {
    v39 = 4095 - v36;
    v37 = &v34[-8 * (v39 >> 12)];
    v38 = (*v37 + (~v39 & 0xFFF));
  }

  else
  {
    v37 = &v34[8 * (v36 >> 12)];
    v38 = (*v37 + (v36 & 0xFFF));
  }

LABEL_40:
  std::deque<unsigned char>::erase(this + 8, v34, v35, v37, v38);
  *(this + 7) += a3;
  v40 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t JetPack::AppleDecompressionInterface::process(JetPack::AppleDecompressionInterface *this, unint64_t *a2, const unsigned __int8 **a3, unint64_t *a4, unsigned __int8 **a5, BOOL flags)
{
  v11 = *a2;
  *(this + 3) = *a3;
  *(this + 1) = *a5;
  v12 = this + 8;
  *(this + 4) = v11;
  *(this + 2) = *a4;
  result = compression_stream_process((this + 8), flags);
  *a2 = *(v12 + 3);
  *a3 = *(this + 3);
  v15 = *v12;
  v14 = *(v12 + 1);
  *a4 = v14;
  *a5 = v15;
  if (result == -1)
  {
    return 0;
  }

  if (result)
  {
    if (result == 1)
    {
      *(this + 48) = 1;
      return result;
    }

    return 0;
  }

  if (!v14)
  {
    return 3;
  }

  if (*(this + 4))
  {
    return 0;
  }

  return 2;
}

uint64_t JetPack::CommonCryptoBackend::aesGCMDecrypt(JetPack::CommonCryptoBackend *this, const unsigned __int8 *a2, unint64_t a3, const unsigned __int8 *a4, unint64_t a5, const unsigned __int8 *a6, unint64_t a7, const unsigned __int8 *a8, __int128 a9, unsigned __int8 *a10, unsigned __int8 *a11, unint64_t a12)
{
  if (CCCryptorGCMOneshotDecrypt())
  {
    return 4294966296;
  }

  else
  {
    return 1;
  }
}

void JetPack::readSerializationSegment()
{
  MEMORY[0x28223BE20]();
  v0 = *MEMORY[0x277D85DE8];
  operator new();
}

void sub_25563E608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  __cxa_free_exception(v33);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v32)
  {
    archive_read_free();
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::throw_with_nested[abi:ne200100]<JetPack::UnableToParseSerializationSegmentException &>(&a9);
  }

  JetPack::NotEnoughDataException::~NotEnoughDataException(&a9);
  _Unwind_Resume(a1);
}

void sub_25563E740(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t JetPack::detail::readCallback(uint64_t a1, void *a2, void *a3)
{
  v4 = a2 + 1;
  result = (*(**a2 + 16))(*a2, a2 + 1, 0x20000);
  *a3 = v4;
  return result;
}

uint64_t fileEntryFound(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = JetPackReaderGetProperty(a1, 0);
  v6 = [v5 fileEntryFound];

  if (v6)
  {
    v7 = [[JPFileEntry alloc] initWithBacking:a2 releaseOnDealloc:0];
    v8 = [[JPStream alloc] initWithBacking:a3 releaseOnDealloc:0];
    v9 = [v5 fileEntryFound];
    v10 = (v9)[2](v9, v7, v8);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t std::__function::__func<JetPackReaderSetFileEntryFoundCallback::$_0,std::allocator<JetPackReaderSetFileEntryFoundCallback::$_0>,BOOL ()(JetPack::ReaderConfig &,void *,std::shared_ptr<JetPack::ArchiveStream>)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  v6 = a4[1];
  v13 = v6;
  *a4 = 0;
  a4[1] = 0;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v5;
    v15 = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = a1;
      v8 = v4;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      a1 = v7;
      v4 = v8;
    }
  }

  else
  {
    v14 = v5;
    v15 = 0;
  }

  result = (*(a1 + 8))(*(a1 + 16), v4, &v14);
  v10 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = result;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    result = v11;
  }

  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = result;
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      return v12;
    }
  }

  return result;
}

void sub_25563E9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t JetPack::AESDecoderStream::isFinished(JetPack::AESDecoderStream *this)
{
  if (*(this + 13))
  {
    return 0;
  }

  else
  {
    return (*(**(this + 1) + 32))();
  }
}

size_t JetPack::ArchiveStream::read(JetPack::ArchiveStream *this, unsigned __int8 *__dst, size_t a3)
{
  if (*(this + 56))
  {
    return 0;
  }

  v6 = (this + 24);
  v5 = *(this + 3);
  if (!v5)
  {
    v7 = a3;
    v8 = __dst;
    v9 = *(this + 1);
    data_block = archive_read_data_block();
    if (data_block == 1)
    {
      result = 0;
      *(this + 56) = 1;
      return result;
    }

    if (data_block)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v14 = this;
      v15 = exception;
      v16 = *(v14 + 1);
      v17 = archive_error_string();
      JetPack::archiveErrorToString(v17, v18);
      JetPack::LibArchiveException::LibArchiveException(v15, v18);
    }

    v5 = *v6;
    __dst = v8;
    a3 = v7;
  }

  if (v5 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v5;
  }

  memcpy(__dst, *(this + 2), v11);
  result = v11;
  v12 = *(this + 3) - v11;
  *(this + 2) += v11;
  *(this + 3) = v12;
  *(this + 5) += v11;
  return result;
}

void sub_25563EBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t JetPackFileEntryGetPathname(JetPack::DiagnosticContext *a1, uint64_t a2, void *a3)
{
  v3 = a1;
  v6[0] = 4;
  if ((atomic_load_explicit(&qword_280B1A5B0, memory_order_acquire) & 1) == 0)
  {
    JetPackFileEntryGetPathname_cold_1();
    v3 = a1;
  }

  v7 = _MergedGlobals_0;
  return JetPack::FileEntryGetPathname(v6, v3, a3);
}

void *JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>::~BrotliDecoderStreamImpl(void *a1)
{
  *a1 = &unk_2867832F8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void JetPack::AppleDecompressionInterface::~AppleDecompressionInterface(JetPack::AppleDecompressionInterface *this)
{
  JetPack::AppleDecompressionInterface::~AppleDecompressionInterface(this);

  JUMPOUT(0x259C3B950);
}

{
  *this = &unk_2867843F8;
  if (compression_stream_destroy((this + 8)))
  {
    {
      JetPack::DiagnosticContext::DiagnosticContext(&getGlobalLog(void)::sharedContext);
    }

    v1 = qword_280B1A538;
    if (os_log_type_enabled(qword_280B1A538, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_255634000, v1, OS_LOG_TYPE_ERROR, "Unable to destroy compression stream", v2, 2u);
    }
  }
}

void JetPack::SignedStreamDecoder::~SignedStreamDecoder(JetPack::SignedStreamDecoder *this)
{
  *this = &unk_286783F90;
  if (*(this + 120) == 1)
  {
    v2 = *(this + 12);
    if (v2)
    {
      *(this + 13) = v2;
      operator delete(v2);
    }
  }

  v3 = *(this + 11);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 9);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2867846F0;
  std::deque<unsigned char>::~deque[abi:ne200100](this + 8);
}

{
  *this = &unk_286783F90;
  if (*(this + 120) == 1)
  {
    v2 = *(this + 12);
    if (v2)
    {
      *(this + 13) = v2;
      operator delete(v2);
    }
  }

  v3 = *(this + 11);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 9);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2867846F0;
  std::deque<unsigned char>::~deque[abi:ne200100](this + 8);

  JUMPOUT(0x259C3B950);
}

uint64_t std::deque<unsigned char>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t JetPackSignatureVerifierDestroy(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }

    JUMPOUT(0x259C3B950);
  }

  return result;
}

void JetPack::AESDecoderStream::~AESDecoderStream(JetPack::AESDecoderStream *this)
{
  *this = &unk_286783C08;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  std::deque<unsigned char>::~deque[abi:ne200100](this + 64);
  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

{
  *this = &unk_286783C08;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    *(this + 15) = v3;
    operator delete(v3);
  }

  std::deque<unsigned char>::~deque[abi:ne200100](this + 64);
  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x259C3B950);
}

uint64_t JetPackReaderDestroy(uint64_t result)
{
  if (result)
  {
    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = result;
      operator delete(*(result + 16));
      result = v1;
    }

    v2 = *(result + 8);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    JUMPOUT(0x259C3B950);
  }

  return result;
}

void JetPack::ReaderConfig::~ReaderConfig(JetPack::ReaderConfig *this)
{
  if (*(this + 224) == 1)
  {
    v2 = *(this + 27);
    if (v2 == (this + 192))
    {
      (*(*v2 + 32))(v2);
    }

    else if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  if (*(this + 184) == 1)
  {
    v3 = *(this + 22);
    if (v3 == (this + 152))
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  if (*(this + 144) == 1)
  {
    v4 = *(this + 17);
    if (v4 == (this + 112))
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

  if (*(this + 104) == 1)
  {
    v5 = *(this + 12);
    if (v5 == (this + 72))
    {
      (*(*v5 + 32))(v5);
    }

    else if (v5)
    {
      (*(*v5 + 40))(v5);
    }
  }

  if (*(this + 64) == 1)
  {
    v6 = *(this + 7);
    if (v6 == (this + 32))
    {
      (*(*v6 + 32))(v6);
    }

    else if (v6)
    {
      (*(*v6 + 40))(v6);
    }
  }
}

uint64_t JetPackFileEntryWriteToDirectory(uint64_t a1, JetPack::ArchiveStream **a2, char *__s)
{
  if (a2)
  {
    v5 = a2[1];
    v15 = *a2;
    v16 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v13[0] = 4;
  if ((atomic_load_explicit(&qword_280B1A5B0, memory_order_acquire) & 1) == 0)
  {
    JetPackFileEntryGetPathname_cold_1();
  }

  v14 = _MergedGlobals_0;
  v6 = v15;
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v12 = v7;
  if (v7)
  {
    memcpy(&__dst, __s, v7);
  }

  *(&__dst + v8) = 0;
  JetPack::FileEntryWriteToDirectory(v13, a1, v6, &__dst);
  if (v12 < 0)
  {
    operator delete(__dst);
  }

  result = 1;
  v10 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      return 1;
    }
  }

  return result;
}

void sub_25563F81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    if (!a19)
    {
      JUMPOUT(0x25563F7F4);
    }

    JUMPOUT(0x25563F7ACLL);
  }

  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void JetPack::FileEntryWriteToDirectory(uint64_t a1, uint64_t a2, JetPack::ArchiveStream *a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = archive_write_disk_new();
  if (archive_write_disk_set_standard_lookup())
  {
    HIBYTE(v34[2]) = 21;
    strcpy(v34, "set standard settings");
    JetPack::throwLibArchiveException(v6, v34);
  }

  if (archive_write_disk_set_options())
  {
    operator new();
  }

  v7 = archive_entry_pathname();
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v33 = v8;
  if (v8)
  {
    memmove(__dst, v7, v8);
  }

  *(__dst + v9) = 0;
  memset(&__p, 0, sizeof(__p));
  v10 = *(a4 + 23);
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 < 0)
  {
    v10 = *(a4 + 8);
  }

  std::string::append[abi:ne200100]<char const*,0>(&__p, v11, (v11 + v10));
  memset(&v35, 0, sizeof(v35));
  v12 = v33;
  if (v33 >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (v33 < 0)
  {
    v12 = __dst[1];
  }

  std::string::append[abi:ne200100]<char const*,0>(&v35, v13, (v12 + v13));
  std::__fs::filesystem::operator/[abi:ne200100](&v35, &__p, &v31);
  if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if ((SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    pn = v31.__pn_;
    goto LABEL_26;
  }

LABEL_25:
  std::string::__init_copy_ctor_external(&pn, v31.__pn_.__r_.__value_.__l.__data_, v31.__pn_.__r_.__value_.__l.__size_);
LABEL_26:
  JetPack::detail::resolvingAllSymlinksInNonExistentPath(&pn, &__p);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    v35 = __p;
    goto LABEL_31;
  }

  std::string::__init_copy_ctor_external(&v35, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
LABEL_31:
  archive_entry_set_pathname();
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_33:
    v28 = __p;
    goto LABEL_36;
  }

  std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
LABEL_36:
  memset(&v27, 0, sizeof(v27));
  v14 = *(a4 + 23);
  if (v14 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 < 0)
  {
    v14 = *(a4 + 8);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v27, v15, (v15 + v14));
  IsContainedBy = JetPack::detail::pathIsContainedBy(&v28, &v27, v16);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_43:
      if (IsContainedBy)
      {
        goto LABEL_44;
      }

LABEL_55:
      archive_entry_set_pathname();
      GlobalLog = getGlobalLog();
      if (os_log_type_enabled(GlobalLog, OS_LOG_TYPE_ERROR))
      {
        v20 = __dst;
        if (v33 < 0)
        {
          v20 = __dst[0];
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v35.__r_.__value_.__l.__data_) = 136446466;
        *(v35.__r_.__value_.__r.__words + 4) = v20;
        WORD2(v35.__r_.__value_.__r.__words[1]) = 2082;
        *(&v35.__r_.__value_.__r.__words[1] + 6) = p_p;
        _os_log_impl(&dword_255634000, GlobalLog, OS_LOG_TYPE_ERROR, "Path is outside output directory. Raw: %{public}s Resolved: %{public}s", &v35, 0x16u);
      }

      exception = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v26 = __p;
      }

      JetPack::PathOutsideOutputDestinationException::PathOutsideOutputDestinationException(exception, &v26);
    }
  }

  else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if (!IsContainedBy)
  {
    goto LABEL_55;
  }

LABEL_44:
  if ((archive_write_header() & 0x80000000) != 0)
  {
    archive_entry_set_pathname();
    HIBYTE(v25[2]) = 19;
    strcpy(v25, "create file on disk");
    JetPack::throwLibArchiveException(v6, v25);
  }

  if (archive_entry_size() >= 1)
  {
    JetPack::ArchiveStream::getBackingArchive(a3);
    JetPack::detail::copyArchiveData();
  }

  v18 = archive_write_finish_entry();
  archive_entry_set_pathname();
  if (v18 < 0)
  {
    HIBYTE(v24[2]) = 18;
    strcpy(v24, "write file to disk");
    JetPack::throwLibArchiveException(v6, v24);
  }

  archive_write_close();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_50:
      if ((v33 & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v31.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(v31.__pn_.__r_.__value_.__l.__data_);
  if ((v33 & 0x80000000) == 0)
  {
LABEL_51:
    if (!v6)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_65:
  operator delete(__dst[0]);
  if (v6)
  {
LABEL_66:
    archive_write_free();
  }

LABEL_67:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_25563FE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  __cxa_free_exception(v61);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (v60)
  {
    archive_write_free();
  }

  _Unwind_Resume(a1);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
      goto LABEL_12;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
LABEL_12:
    if (v6 - size < v5)
    {
      v10 = a3;
      v11 = a2;
      std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
      a3 = v10;
      a2 = v11;
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    }

    v12 = this;
    if ((v7 & 0x80) != 0)
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    v13 = v12 + size;
    if (a3 != a2)
    {
      memmove(v12 + size, a2, v5);
    }

    v13[v5] = 0;
    v14 = v5 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v14;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v14 & 0x7F;
    }

    return this;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v19 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v15 = __dst;
  }

  else
  {
    v15 = __dst[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __dst[1];
  }

  std::string::append(this, v15, v16);
  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_2556401D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__fs::filesystem::operator/[abi:ne200100]@<X0>(std::__fs::filesystem::path *this@<X1>, uint64_t a2@<X0>, std::__fs::filesystem::path *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&a3->__pn_, *a2, *(a2 + 8));
  }

  else
  {
    *&a3->__pn_.__r_.__value_.__l.__data_ = *a2;
    a3->__pn_.__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (std::__fs::filesystem::path::__root_directory(this).__size_)
  {
    return std::string::operator=(&a3->__pn_, &this->__pn_);
  }

  if (std::__fs::filesystem::path::__filename(a3).__size_)
  {
    std::string::push_back(&a3->__pn_, 47);
  }

  v6 = SHIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__pn_.__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(this->__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__pn_.__r_.__value_.__l.__size_;
  }

  return std::string::append(&a3->__pn_, v7, size);
}

void sub_2556402E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void JetPack::detail::resolvingAllSymlinksInNonExistentPath(const std::__fs::filesystem::path *this@<X0>, std::__fs::filesystem::path *a2@<X8>)
{
  memset(&stashed_elem, 0, sizeof(stashed_elem));
  std::__fs::filesystem::path::begin(&v16, this);
  std::__fs::filesystem::path::begin(&v15, this);
  std::__fs::filesystem::path::begin(&v14, this);
  while (1)
  {
    std::__fs::filesystem::path::end(&__dst, this);
    v6 = v14.__path_ptr_ != __dst.__path_ptr_ || v14.__entry_.__data_ != __dst.__entry_.__data_;
    if (SHIBYTE(__dst.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    }

    if (!v6)
    {
      break;
    }

    if (SHIBYTE(v14.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v14.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v14.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v14.__stashed_elem_.__pn_;
    }

    __p.__pn_ = pn;
    memset(&pn, 0, sizeof(pn));
    std::__fs::filesystem::operator/[abi:ne200100](&__p, &stashed_elem, &__dst.__stashed_elem_);
    if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(stashed_elem.__pn_.__r_.__value_.__l.__data_);
    }

    stashed_elem = __dst.__stashed_elem_;
    *(&__dst.__stashed_elem_.__pn_.__r_.__value_.__s + 23) = 0;
    __dst.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      if ((SHIBYTE(pn.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((SHIBYTE(pn.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(pn.__r_.__value_.__l.__data_);
LABEL_18:
    std::__fs::filesystem::__symlink_status(&stashed_elem, 0);
    if (__dst.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[0] != 3)
    {
      goto LABEL_32;
    }

    v7 = std::__fs::filesystem::path::__parent_path(&stashed_elem);
    if (v7.__size_ >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v7.__size_ >= 0x17)
    {
      operator new();
    }

    *(&__dst.__stashed_elem_.__pn_.__r_.__value_.__s + 23) = v7.__size_;
    if (v7.__size_)
    {
      memmove(&__dst, v7.__data_, v7.__size_);
    }

    __dst.__stashed_elem_.__pn_.__r_.__value_.__s.__data_[v7.__size_] = 0;
    __p = __dst.__stashed_elem_;
    std::__fs::filesystem::__read_symlink(&__dst.__stashed_elem_, &stashed_elem, 0);
    std::__fs::filesystem::operator/[abi:ne200100](&__dst.__stashed_elem_, &__p, &v10);
    std::__fs::filesystem::path::lexically_normal(&pn, &v10);
    if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(stashed_elem.__pn_.__r_.__value_.__l.__data_);
    }

    stashed_elem.__pn_ = pn;
    *(&pn.__r_.__value_.__s + 23) = 0;
    pn.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v10.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__pn_.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__dst.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_31:
        if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }
    }

    else if ((SHIBYTE(__dst.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    operator delete(__dst.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if (SHIBYTE(v14.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

LABEL_36:
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(v14.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_37:
      std::string::__init_copy_ctor_external(&v8, v14.__stashed_elem_.__pn_.__r_.__value_.__l.__data_, v14.__stashed_elem_.__pn_.__r_.__value_.__l.__size_);
      goto LABEL_38;
    }

LABEL_33:
    v8 = v14.__stashed_elem_.__pn_;
LABEL_38:
    v9[0] = *&v14.__path_ptr_;
    *(v9 + 9) = *(&v14.__entry_ + 1);
    std::__fs::filesystem::path::iterator::__increment(&v14);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v14.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::lexically_normal(a2, &stashed_elem);
  if (SHIBYTE(v15.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(v16.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_47;
    }

LABEL_44:
    if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_48:
      operator delete(stashed_elem.__pn_.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v16.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    operator delete(v16.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    if (SHIBYTE(stashed_elem.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_48;
    }
  }
}

void sub_255640660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 217) < 0)
  {
    operator delete(*(v56 - 240));
    if ((*(v56 - 161) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v56 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v56 - 161) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v56 - 184));
  if ((*(v56 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v56 - 128));
  _Unwind_Resume(exception_object);
}

BOOL JetPack::detail::pathIsContainedBy(std::string *this, std::__fs::filesystem::path *a2, std::__fs::filesystem::path *a3)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = *this;
  }

  JetPack::detail::resolvingAllSymlinksInNonExistentPath(&v22, &v23);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_6:
    pn = a2->__pn_;
    goto LABEL_9;
  }

  std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
LABEL_9:
  JetPack::detail::resolvingAllSymlinksInNonExistentPath(&pn, &v21);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::begin(&v13, &v21);
  std::__fs::filesystem::path::end(&v12, &v21);
  std::__fs::filesystem::path::begin(&v11, &v23);
  std::mismatch[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator>(&v13, &v12, &v11, &v14);
  if ((SHIBYTE(v11.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v12.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    operator delete(v12.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v13.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

  operator delete(v11.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((SHIBYTE(v13.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_28:
  operator delete(v13.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
LABEL_14:
  std::__fs::filesystem::path::end(&__p, &v21);
  v4 = v16;
  v5 = v17;
  path_ptr = __p.__path_ptr_;
  data = __p.__entry_.__data_;
  if (SHIBYTE(__p.__stashed_elem_.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__stashed_elem_.__pn_.__r_.__value_.__l.__data_);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_16:
      if ((v15 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v18);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    operator delete(v21.__pn_.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v4 == path_ptr && v5 == data;
    }

    goto LABEL_33;
  }

LABEL_31:
  operator delete(v14);
  if (SHIBYTE(v21.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  if ((SHIBYTE(v23.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v4 == path_ptr && v5 == data;
  }

LABEL_33:
  operator delete(v23.__pn_.__r_.__value_.__l.__data_);
  return v4 == path_ptr && v5 == data;
}

void sub_255640994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (*(v46 - 49) < 0)
  {
    operator delete(*(v46 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_255640A60()
{
  if (*(v0 - 121) < 0)
  {
    v1 = *(v0 - 144);
    JUMPOUT(0x255640A40);
  }

  JUMPOUT(0x255640A44);
}

void sub_255640A74()
{
  if (*(v0 - 73) < 0)
  {
    JUMPOUT(0x255640A50);
  }

  JUMPOUT(0x255640A58);
}

void std::mismatch[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a1, *(a1 + 8));
  }

  else
  {
    v12 = *a1;
  }

  v13[0] = *(a1 + 24);
  *(v13 + 9) = *(a1 + 33);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  v11[0] = *(a2 + 24);
  *(v11 + 9) = *(a2 + 33);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v9[0] = *(a3 + 24);
  *(v9 + 9) = *(a3 + 33);
  std::mismatch[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__equal_to>(&v12, &v10, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_16:
      operator delete(v12.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v10.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_16;
  }
}

void sub_255640BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((*(v25 - 89) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v25 - 89) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v25 - 112));
  _Unwind_Resume(exception_object);
}

void std::mismatch[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__equal_to>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a1, *(a1 + 8));
  }

  else
  {
    v28 = *a1;
  }

  v29[0] = *(a1 + 24);
  *(v29 + 9) = *(a1 + 33);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v28;
  }

  v37[0] = v29[0];
  *(v37 + 9) = *(v29 + 9);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v30 = v36;
    v31[0] = v29[0];
    *(v31 + 9) = *(v29 + 9);
    if (*(a2 + 23) < 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    v24 = *a2;
    goto LABEL_15;
  }

  std::string::__init_copy_ctor_external(&v30, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  v31[0] = v37[0];
  *(v31 + 9) = *(v37 + 9);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(a2 + 23) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_14:
  std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
LABEL_15:
  v25[0] = *(a2 + 24);
  *(v25 + 9) = *(a2 + 33);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v24;
  }

  v37[0] = v25[0];
  *(v37 + 9) = *(v25 + 9);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v26 = v36;
    v27[0] = v25[0];
    *(v27 + 9) = *(v25 + 9);
    if (*(a3 + 23) < 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    v20 = *a3;
    goto LABEL_26;
  }

  std::string::__init_copy_ctor_external(&v26, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  v27[0] = v37[0];
  *(v27 + 9) = *(v37 + 9);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(a3 + 23) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

LABEL_25:
  std::string::__init_copy_ctor_external(&v20, *a3, *(a3 + 8));
LABEL_26:
  v21[0] = *(a3 + 24);
  *(v21 + 9) = *(a3 + 33);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v20;
  }

  v37[0] = v21[0];
  *(v37 + 9) = *(v21 + 9);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    v23[0] = v37[0];
    *(v23 + 9) = *(v37 + 9);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v22 = v36;
    v23[0] = v21[0];
    *(v23 + 9) = *(v21 + 9);
  }

  std::__mismatch[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__equal_to,std::__identity,std::__identity>(&v30, &v26, &v22, &v32);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_35:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_36:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v24.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_46:
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_47;
  }

LABEL_45:
  operator delete(v30.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_46;
  }

LABEL_39:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_40:
    v18 = *a1;
    goto LABEL_48;
  }

LABEL_47:
  std::string::__init_copy_ctor_external(&v18, *a1, *(a1 + 8));
LABEL_48:
  v19[0] = *(a1 + 24);
  *(v19 + 9) = *(a1 + 33);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v32;
  }

  v17[0] = v33[0];
  *(v17 + 9) = *(v33 + 9);
  std::__rewrap_iter[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__unwrap_iter_impl<std::__fs::filesystem::path::iterator,false>>(&v18, &v16, &v36);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
  }

  v12[0] = *(a3 + 24);
  *(v12 + 9) = *(a3 + 33);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = v34;
  }

  v10[0] = v35[0];
  *(v10 + 9) = *(v35 + 9);
  std::__rewrap_iter[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__unwrap_iter_impl<std::__fs::filesystem::path::iterator,false>>(&v11, &v9, __p);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a4, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
  }

  else
  {
    *a4 = v36;
  }

  *(a4 + 24) = v37[0];
  *(a4 + 33) = *(v37 + 9);
  if (SHIBYTE(v14) < 0)
  {
    std::string::__init_copy_ctor_external((a4 + 56), __p[0], __p[1]);
    v8 = SHIBYTE(v14);
    *(a4 + 80) = v15[0];
    *(a4 + 89) = *(v15 + 9);
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_73;
      }
    }

    else if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_73;
    }

LABEL_65:
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_74;
    }

LABEL_66:
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_75;
    }

LABEL_67:
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_76;
    }

LABEL_68:
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_77;
    }

LABEL_69:
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_78;
    }

    goto LABEL_70;
  }

  *(a4 + 56) = *__p;
  *(a4 + 72) = v14;
  *(a4 + 80) = v15[0];
  *(a4 + 89) = *(v15 + 9);
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_73:
  operator delete(v9.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_74:
  operator delete(v11.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_75:
  operator delete(v36.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_76:
  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_77:
  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_78:
    operator delete(v34.__r_.__value_.__l.__data_);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_79;
    }

    return;
  }

LABEL_70:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_79:
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_255641228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 + 23) < 0)
  {
    operator delete(*v56);
    if ((a35 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a25 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a9);
  if ((a25 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v57 - 105) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a20);
  if ((*(v57 - 105) & 0x80000000) == 0)
  {
LABEL_6:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(v57 - 128));
  if ((a45 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a56 & 0x80000000) == 0)
    {
LABEL_16:
      std::pair<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator>::~pair(v57 - 248);
      _Unwind_Resume(a1);
    }

LABEL_15:
    operator delete(a51);
    goto LABEL_16;
  }

LABEL_14:
  operator delete(a40);
  if ((a56 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_255641330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a72);
    if ((a68 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a68 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a63);
  if ((SLOBYTE(STACK[0x287]) & 0x80000000) == 0)
  {
LABEL_4:
    if (SLOBYTE(STACK[0x247]) < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(STACK[0x270]);
  if (SLOBYTE(STACK[0x247]) < 0)
  {
LABEL_5:
    operator delete(STACK[0x230]);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

void std::__mismatch[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__equal_to,std::__identity,std::__identity>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a1, *(a1 + 8));
  }

  else
  {
    v12 = *a1;
  }

  v13[0] = *(a1 + 24);
  *(v13 + 9) = *(a1 + 33);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  v11[0] = *(a2 + 24);
  *(v11 + 9) = *(a2 + 33);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v9[0] = *(a3 + 24);
  *(v9 + 9) = *(a3 + 33);
  std::__mismatch_loop[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__equal_to,std::__identity,std::__identity>(&v12, &v10, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_16:
      operator delete(v12.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v10.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_16;
  }
}

void sub_25564156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a31);
  _Unwind_Resume(exception_object);
}

__n128 std::__mismatch_loop[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__equal_to,std::__identity,std::__identity>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = (a1 + 24);
  while (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *a1, *(a1 + 8));
      if ((*(a3 + 23) & 0x80000000) == 0)
      {
LABEL_7:
        __p = *a3;
        goto LABEL_10;
      }
    }

    else
    {
      v14 = *a1;
      if ((*(a3 + 23) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
LABEL_10:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10.__data_ = &__p;
    }

    else
    {
      v10.__data_ = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10.__size_ = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10.__size_ = __p.__r_.__value_.__l.__size_;
    }

    v11 = std::__fs::filesystem::path::__compare(&v14, v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_21:
        operator delete(v14.__r_.__value_.__l.__data_);
        if (v11)
        {
          break;
        }

        goto LABEL_22;
      }
    }

    else if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_21;
    }

    if (v11)
    {
      break;
    }

LABEL_22:
    std::__fs::filesystem::path::iterator::__increment(a1);
    std::__fs::filesystem::path::iterator::__increment(a3);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a1, *(a1 + 8));
  }

  else
  {
    *a4 = *a1;
    *(a4 + 16) = *(a1 + 16);
  }

  *(a4 + 24) = *v7;
  *(a4 + 33) = *(v7 + 9);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a4 + 56), *a3, *(a3 + 8));
  }

  else
  {
    *(a4 + 56) = *a3;
    *(a4 + 72) = *(a3 + 16);
  }

  *(a4 + 80) = *(a3 + 24);
  result = *(a3 + 33);
  *(a4 + 89) = result;
  return result;
}

void sub_255641794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 23) < 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(exception_object);
}

void std::__rewrap_iter[abi:ne200100]<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator,std::__unwrap_iter_impl<std::__fs::filesystem::path::iterator,false>>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a1, *(a1 + 8));
  }

  else
  {
    v9 = *a1;
  }

  v10[0] = *(a1 + 24);
  *(v10 + 9) = *(a1 + 33);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8[0] = *(a2 + 24);
  *(v8 + 9) = *(a2 + 33);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *a3 = __p;
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 33) = *(a2 + 33);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  std::string::__init_copy_ctor_external(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  v6 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  *(a3 + 24) = v8[0];
  *(a3 + 33) = *(v8 + 9);
  if ((v6 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_12:
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

uint64_t JetPack::detail::copyArchiveData()
{
  v19 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  while (1)
  {
    data_block = archive_read_data_block();
    if (data_block == 1)
    {
      break;
    }

    if (data_block < 0)
    {
      v7 = archive_error_string();
      JetPack::archiveErrorToString(v7, &v13);
      GlobalLog = getGlobalLog();
      if (os_log_type_enabled(GlobalLog, OS_LOG_TYPE_ERROR))
      {
        v9 = &v13;
        if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v13.__r_.__value_.__r.__words[0];
        }

        *buf = 136446210;
        v18 = v9;
        _os_log_impl(&dword_255634000, GlobalLog, OS_LOG_TYPE_ERROR, "Archive error occurred while reading data block: %{public}s", buf, 0xCu);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v12, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        v12 = v13;
      }

      JetPack::LibArchiveException::LibArchiveException(exception, &v12);
    }

    if ((archive_write_data_block() & 0x80000000) != 0)
    {
      v1 = archive_error_string();
      JetPack::archiveErrorToString(v1, &v13);
      v2 = getGlobalLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = &v13;
        if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v3 = v13.__r_.__value_.__r.__words[0];
        }

        *buf = 136446210;
        v18 = v3;
        _os_log_impl(&dword_255634000, v2, OS_LOG_TYPE_ERROR, "Archive error occurred while writing data block: %{public}s", buf, 0xCu);
      }

      v4 = __cxa_allocate_exception(0x20uLL);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        v11 = v13;
      }

      JetPack::LibArchiveException::LibArchiveException(v4, &v11);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_255641B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_free_exception(v28);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void JetPack::CommonCryptoSignatureVerifier::~CommonCryptoSignatureVerifier(JetPack::CommonCryptoSignatureVerifier *this)
{
  *this = &unk_286784368;
  v2 = *(this + 3);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  *this = &unk_286784368;
  v2 = *(this + 3);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x259C3B950);
}

uint64_t readStreamCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 readCallback];
  v6 = v5[2](v5, a2, a3);

  return v6;
}

uint64_t std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867832A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>::~BrotliDecoderStreamImpl(void *a1)
{
  *a1 = &unk_2867832F8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x259C3B950);
}

uint64_t JetPack::BaseStream::seekToEnd(JetPack::BaseStream *this)
{
  result = (*(*this + 32))(this);
  if ((result & 1) == 0)
  {
    do
    {
      (*(*this + 48))(this, 1024);
      result = (*(*this + 32))(this);
    }

    while (!result);
  }

  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797F16A0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void JetPack::NotEnoughDataException::~NotEnoughDataException(std::exception *this)
{
  this->__vftable = &unk_286783408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    v2 = this;
    operator delete(this[1].__vftable);
    this = v2;
  }

  std::exception::~exception(this);
}

void sub_255642AF0(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_255642BC4(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void JetPack::BrotliAvailableInNotEmptyOnFillException::~BrotliAvailableInNotEmptyOnFillException(std::exception *this)
{
  this->__vftable = &unk_286783408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x259C3B950);
}

uint64_t JetPack::Exception::what(JetPack::Exception *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_255642E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a15);
  _Unwind_Resume(a1);
}

void JetPack::BrotliUnknownDecoderResultException::~BrotliUnknownDecoderResultException(std::exception *this)
{
  this->__vftable = &unk_286783408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x259C3B950);
}

uint64_t std::function<BOOL ()(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>::~function(uint64_t a1)
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

uint64_t std::__function::__func<BOOL (*)(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>),std::allocator<BOOL (*)(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>,BOOL ()(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564B501)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025564B501 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564B501))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564B501 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

JetPack::InputStreamRequiredException *JetPack::InputStreamRequiredException::InputStreamRequiredException(JetPack::InputStreamRequiredException *this)
{
  v4 = 19;
  strcpy(__p, "InputStreamRequired");
  JetPack::ReaderException::ReaderException(this, __p);
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2867835A0;
  return this;
}

void sub_255643114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *JetPack::ReaderException::ReaderException(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *a1 = &unk_286783408;
  v3 = (a1 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v3->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    a1[3] = *(&__p.__r_.__value_.__l + 2);
  }

  *a1 = &unk_2867835C8;
  return a1;
}

void sub_2556431FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::exception::~exception(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

JetPack::InvalidSegmentTagException *JetPack::InvalidSegmentTagException::InvalidSegmentTagException(JetPack::InvalidSegmentTagException *this, int a2)
{
  *(&v11.__r_.__value_.__s + 23) = 17;
  strcpy(&v11, "InvalidSegmentTag");
  v4 = std::string::append(&v11, " tag=");
  std::to_string(&v10, a2);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(v4, v5, size);
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&v7->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v8;
  }

  JetPack::ReaderException::ReaderException(this, &v12);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(v10.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(v11.__r_.__value_.__l.__data_);
    goto LABEL_13;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  *this = &unk_2867835F0;
  *(this + 8) = a2;
  return this;
}

void sub_255643368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BOOL (*)(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>),std::allocator<BOOL (*)(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>,BOOL ()(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286783618;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>),std::allocator<BOOL (*)(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>,BOOL ()(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564B6EFLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000025564B6EFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564B6EFLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564B6EFLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(JetPack::ReaderConfig &,JetPack::SegmentTag,std::shared_ptr<JetPack::BaseStream>)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255643740(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_255643814(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void sub_255643970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<JetPack::SignedStreamDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286783848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void std::__throw_with_nested<JetPack::UnableToParseRootSegmentException &,JetPack::UnableToParseRootSegmentException,true>::__do_throw[abi:ne200100](uint64_t a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__nested<JetPack::UnableToParseRootSegmentException>::__nested[abi:ne200100](exception, a1);
}

std::nested_exception *std::__nested<JetPack::UnableToParseRootSegmentException>::__nested[abi:ne200100](std::nested_exception *a1, uint64_t a2)
{
  a1->__vftable = &unk_286783408;
  p_ptr = &a1->__ptr_;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(p_ptr, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    p_ptr->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&p_ptr->__r_.__value_.__l.__data_ = v4;
  }

  a1->__vftable = &unk_2867836C8;
  std::nested_exception::nested_exception(a1 + 2);
  a1->__vftable = &unk_2867838D0;
  a1[2].__vftable = &unk_2867838F8;
  return a1;
}

void std::__nested<JetPack::UnableToParseRootSegmentException>::~__nested(uint64_t a1)
{
  std::nested_exception::~nested_exception((a1 + 32));
  *a1 = &unk_286783408;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  std::exception::~exception(a1);
}

{
  std::nested_exception::~nested_exception((a1 + 32));
  *a1 = &unk_286783408;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  std::exception::~exception(a1);

  JUMPOUT(0x259C3B950);
}

void non-virtual thunk tostd::__nested<JetPack::UnableToParseRootSegmentException>::~__nested(std::nested_exception *a1)
{
  v1 = &a1[-2];
  std::nested_exception::~nested_exception(a1);
  *(v2 - 32) = &unk_286783408;
  if (*(v2 - 1) < 0)
  {
    operator delete(*(v2 - 24));
  }

  std::exception::~exception(v1);
}

{
  v1 = &a1[-2];
  std::nested_exception::~nested_exception(a1);
  *(v2 - 32) = &unk_286783408;
  if (*(v2 - 1) < 0)
  {
    operator delete(*(v2 - 24));
  }

  std::exception::~exception(v1);

  JUMPOUT(0x259C3B950);
}

void std::__shared_ptr_emplace<JetPack::PartialStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286783918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void std::__throw_with_nested<JetPack::UnableToParseDataSegmentException &,JetPack::UnableToParseDataSegmentException,true>::__do_throw[abi:ne200100](uint64_t a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__nested<JetPack::UnableToParseDataSegmentException>::__nested[abi:ne200100](exception, a1);
}

std::nested_exception *std::__nested<JetPack::UnableToParseDataSegmentException>::__nested[abi:ne200100](std::nested_exception *a1, uint64_t a2)
{
  a1->__vftable = &unk_286783408;
  p_ptr = &a1->__ptr_;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(p_ptr, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    p_ptr->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&p_ptr->__r_.__value_.__l.__data_ = v4;
  }

  a1->__vftable = &unk_2867839C8;
  std::nested_exception::nested_exception(a1 + 2);
  a1->__vftable = &unk_286783A40;
  a1[2].__vftable = &unk_286783A68;
  return a1;
}

void *JetPack::LibArchiveException::LibArchiveException(void *a1, uint64_t a2)
{
  *(&__p.__r_.__value_.__s + 23) = 19;
  strcpy(&__p, "LibArchiveException");
  v4 = std::string::append(&__p, " message=");
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::string::append(v4, v6, v7);
  if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, v8->__r_.__value_.__l.__data_, v8->__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
  }

  *a1 = &unk_286783408;
  v10 = (a1 + 1);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_15:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *&v13.__r_.__value_.__l.__data_;
    a1[3] = *(&v13.__r_.__value_.__l + 2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  *a1 = &unk_286783AE0;
  return a1;
}

void sub_2556440A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::exception::~exception(v21);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<JetPack::ArchiveStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286783B08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void std::__throw_with_nested<JetPack::UnableToParseSerializationSegmentException &,JetPack::UnableToParseSerializationSegmentException,true>::__do_throw[abi:ne200100](uint64_t a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__nested<JetPack::UnableToParseSerializationSegmentException>::__nested[abi:ne200100](exception, a1);
}

std::nested_exception *std::__nested<JetPack::UnableToParseSerializationSegmentException>::__nested[abi:ne200100](std::nested_exception *a1, uint64_t a2)
{
  a1->__vftable = &unk_286783408;
  p_ptr = &a1->__ptr_;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(p_ptr, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    p_ptr->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&p_ptr->__r_.__value_.__l.__data_ = v4;
  }

  a1->__vftable = &unk_286783A88;
  std::nested_exception::nested_exception(a1 + 2);
  a1->__vftable = &unk_286783B90;
  a1[2].__vftable = &unk_286783BB8;
  return a1;
}

void sub_255644348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_255644634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a15);
  _Unwind_Resume(a1);
}

void *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>>(void *result, _BYTE *__src, void *a3, _BYTE *a4, uint64_t a5)
{
  v7 = __src;
  if (result == a3)
  {
    v9 = *a5;
    v8 = *(a5 + 8);
    if (__src != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = v10 - v8 + 4096;
        v13 = a4 - v7 >= v12 ? v12 : a4 - v7;
        if (v13)
        {
          result = memmove(v8, v7, v13);
        }

        v7 += v13;
        if (v7 == a4)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 += v13;
      if (*(v9 - 1) + 4096 != v8)
      {
        *a5 = v9 - 1;
        goto LABEL_54;
      }

      v8 = *v9;
    }

    *a5 = v9;
    goto LABEL_54;
  }

  v16 = result;
  v17 = (*result + 4096);
  v18 = *a5;
  v8 = *(a5 + 8);
  if (v17 != __src)
  {
    v20 = *v18++;
    v19 = v20;
    while (1)
    {
      v21 = v19 - v8 + 4096;
      if (v17 - v7 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17 - v7;
      }

      if (v22)
      {
        result = memmove(v8, v7, v22);
      }

      v7 += v22;
      if (v7 == v17)
      {
        break;
      }

      v23 = *v18++;
      v19 = v23;
      v8 = v23;
    }

    v8 += v22;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
  *(a5 + 8) = v8;
  for (i = v16 + 1; i != a3; ++i)
  {
    v25 = 0;
    v26 = *i;
    v28 = *v18++;
    v27 = v28;
    while (1)
    {
      v29 = v27 - v8 + 4096;
      if (4096 - v25 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = 4096 - v25;
      }

      if (v30)
      {
        result = memmove(v8, &v26[v25], v30);
      }

      v25 += v30;
      if (v25 == 4096)
      {
        break;
      }

      v31 = *v18++;
      v27 = v31;
      v8 = v31;
    }

    v8 += v30;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }

    *a5 = v18;
    *(a5 + 8) = v8;
  }

  v32 = *i;
  if (*i != a4)
  {
    v34 = *v18++;
    v33 = v34;
    while (1)
    {
      v35 = v33 - v8 + 4096;
      if (a4 - v32 >= v35)
      {
        v36 = v35;
      }

      else
      {
        v36 = a4 - v32;
      }

      if (v36)
      {
        result = memmove(v8, v32, v36);
      }

      v32 += v36;
      if (v32 == a4)
      {
        break;
      }

      v37 = *v18++;
      v33 = v37;
      v8 = v37;
    }

    v8 += v36;
    if (*(v18 - 1) + 4096 == v8)
    {
      v8 = *v18;
    }

    else
    {
      --v18;
    }
  }

  *a5 = v18;
LABEL_54:
  *(a5 + 8) = v8;
  return result;
}

void sub_2556449D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

JetPack::MissingEncryptionKeyException *JetPack::MissingEncryptionKeyException::MissingEncryptionKeyException(JetPack::MissingEncryptionKeyException *this, int a2)
{
  *(&v11.__r_.__value_.__s + 23) = 20;
  strcpy(&v11, "MissingEncryptionKey");
  v4 = std::string::append(&v11, " identifier=");
  std::to_string(&v10, a2);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(v4, v5, size);
  if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v7->__r_.__value_.__l.__data_, v7->__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = *&v7->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v8;
  }

  JetPack::ReaderException::ReaderException(this, &v12);
  if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(v10.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    operator delete(v11.__r_.__value_.__l.__data_);
    goto LABEL_13;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  *this = &unk_286783D68;
  *(this + 16) = a2;
  return this;
}

void sub_255644B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a16);
  _Unwind_Resume(a1);
}

void JetPack::MissingEncryptionKeyException::~MissingEncryptionKeyException(std::exception *this)
{
  this->__vftable = &unk_286783408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x259C3B950);
}

void sub_255644CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<JetPack::AESDecoderStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286783DB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void std::__throw_with_nested<JetPack::UnableToParseEncryptedSegmentException &,JetPack::UnableToParseEncryptedSegmentException,true>::__do_throw[abi:ne200100](uint64_t a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__nested<JetPack::UnableToParseEncryptedSegmentException>::__nested[abi:ne200100](exception, a1);
}

std::nested_exception *std::__nested<JetPack::UnableToParseEncryptedSegmentException>::__nested[abi:ne200100](std::nested_exception *a1, uint64_t a2)
{
  a1->__vftable = &unk_286783408;
  p_ptr = &a1->__ptr_;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(p_ptr, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    p_ptr->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&p_ptr->__r_.__value_.__l.__data_ = v4;
  }

  a1->__vftable = &unk_286783CB8;
  std::nested_exception::nested_exception(a1 + 2);
  a1->__vftable = &unk_286783E40;
  a1[2].__vftable = &unk_286783E68;
  return a1;
}

uint64_t JetPack::readMultiSegmentContainer(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>,std::function<BOOL ()(JetPack::ReaderConfig &,std::shared_ptr<JetPack::BaseStream>)>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3 == a1 + 8)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void std::__throw_with_nested<JetPack::UnableToParseMultiSegmentException &,JetPack::UnableToParseMultiSegmentException,true>::__do_throw[abi:ne200100](uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  std::__nested<JetPack::UnableToParseMultiSegmentException>::__nested[abi:ne200100](exception, a1);
}

uint64_t std::__nested<JetPack::UnableToParseMultiSegmentException>::__nested[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286783408;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *a1 = &unk_286783E88;
  *(a1 + 32) = *(a2 + 32);
  std::nested_exception::nested_exception((a1 + 40));
  *a1 = &unk_286783F00;
  *(a1 + 40) = &unk_286783F28;
  return a1;
}

void std::__nested<JetPack::UnableToParseMultiSegmentException>::~__nested(uint64_t a1)
{
  std::nested_exception::~nested_exception((a1 + 40));
  *a1 = &unk_286783408;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  std::exception::~exception(a1);
}

{
  std::nested_exception::~nested_exception((a1 + 40));
  *a1 = &unk_286783408;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  std::exception::~exception(a1);

  JUMPOUT(0x259C3B950);
}

void non-virtual thunk tostd::__nested<JetPack::UnableToParseMultiSegmentException>::~__nested(std::nested_exception *a1)
{
  p_ptr = &a1[-3].__ptr_;
  std::nested_exception::~nested_exception(a1);
  *(v2 - 40) = &unk_286783408;
  if (*(v2 - 9) < 0)
  {
    operator delete(*(v2 - 32));
  }

  std::exception::~exception(p_ptr);
}

{
  p_ptr = &a1[-3].__ptr_;
  std::nested_exception::~nested_exception(a1);
  *(v2 - 40) = &unk_286783408;
  if (*(v2 - 9) < 0)
  {
    operator delete(*(v2 - 32));
  }

  std::exception::~exception(p_ptr);

  JUMPOUT(0x259C3B950);
}

void sub_255645300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void readToEndVector(JetPack::BaseStream *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<unsigned char>::__append(a2, 0x20000uLL);
  for (i = 0; ; i += (*(*a1 + 16))(a1, &v6[i], v8 - v7))
  {
    v5 = (*(*a1 + 32))(a1);
    v6 = *a2;
    if (v5)
    {
      break;
    }

    v7 = &v6[i];
    v8 = *(a2 + 8);
    if ((*(a2 + 16) - &v6[i]) >> 10 <= 4uLL)
    {
      v9 = v8 - v6;
      if (v8 - v6 < 1)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          v8 = &v6[2 * v9];
          *(a2 + 8) = v8;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a2, v9);
        v6 = *a2;
        v8 = *(a2 + 8);
        v7 = (i + *a2);
      }
    }
  }

  v10 = *(a2 + 8) - v6;
  if (i <= v10)
  {
    if (i < v10)
    {
      *(a2 + 8) = &v6[i];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, i - v10);
  }
}

void sub_255645438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 - v4 >= a2)
  {
    if (a2)
    {
      v10 = &v4[a2];
      bzero(a1[1], a2);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1);
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v11 = v4 - *a1;
    v12 = &v6[a2];
    bzero(v6, a2);
    v13 = &v6[v5 - v4];
    memcpy(v13, v5, v11);
    *a1 = v13;
    a1[1] = v12;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

JetPack::InvalidSignatureException *JetPack::InvalidSignatureException::InvalidSignatureException(JetPack::InvalidSignatureException *this)
{
  v4 = 16;
  strcpy(__p, "InvalidSignature");
  JetPack::ReaderException::ReaderException(this, __p);
  if (v4 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_286784028;
  return this;
}

void sub_255645744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255645800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void JetPackSignatureVerifierCreateWithCertificateData(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  makePublicRef<JetPackSignatureVerifier,JetPack::CommonCryptoSignatureVerifier,std::vector<unsigned char> &>();
}

void sub_2556458C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t JetPackReaderGetErrorMessage(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t getGlobalLog(void)
{
  {
    JetPack::DiagnosticContext::DiagnosticContext(&getGlobalLog(void)::sharedContext);
  }

  return qword_280B1A528;
}

{
  {
    JetPack::DiagnosticContext::DiagnosticContext(&getGlobalLog(void)::sharedContext);
  }

  return qword_280B1A558;
}

{
  {
    JetPack::DiagnosticContext::DiagnosticContext(&getGlobalLog(void)::sharedContext);
  }

  return qword_280B1A568;
}

void nestedExceptionString(const std::exception *a1@<X0>, std::string *a2@<X8>)
{
  memset(&v7, 0, sizeof(v7));
  v4 = (a1->what)(a1);
  std::string::append(&v7, v4);
  v5 = a1->~exception;
  v6 = __dynamic_cast(a1, MEMORY[0x277D82790], off_2797F16A8, -2);
  if (v6)
  {
    std::nested_exception::rethrow_nested(v6);
    __break(1u);
  }

  else
  {
    *a2 = v7;
  }
}

void sub_255645A48(void *__p, int a2, int a3, __int16 a4, char a5, char a6, std::string *a7, uint64_t a8, std::string::value_type *__pa, std::string::size_type a10, int a11, __int16 a12, char a13, unsigned __int8 a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = __cxa_begin_catch(__p);
  if (a2 == 2)
  {
    v23 = v22;
    v24 = std::string::append(&a15, " -> ");
    nestedExceptionString(v23, &__pa);
    if ((a14 & 0x80u) == 0)
    {
      p_pa = &__pa;
    }

    else
    {
      p_pa = __pa;
    }

    if ((a14 & 0x80u) == 0)
    {
      v26 = a14;
    }

    else
    {
      v26 = a10;
    }

    v27 = std::string::append(v24, p_pa, v26);
    if (SHIBYTE(v27->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v20, v27->__r_.__value_.__l.__data_, v27->__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = *&v27->__r_.__value_.__l.__data_;
      v20->__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v20->__r_.__value_.__l.__data_ = v28;
    }

    if (a14 < 0)
    {
      operator delete(__pa);
    }

    __cxa_end_catch();
    if (a20 < 0)
    {
      operator delete(a15);
    }

    JUMPOUT(0x255645A28);
  }

  __cxa_end_catch();
  JUMPOUT(0x255645A18);
}

void sub_255645AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::optional<std::string>::operator=[abi:ne200100]<std::string,void>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a1;
      v3 = a2;
      operator delete(*a1);
      a2 = v3;
      a1 = v2;
    }

    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2[1].n128_u8[7] = 0;
    a2->n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__shared_ptr_emplace<JetPack::ReaderConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867840C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void std::__shared_ptr_emplace<JetPack::CommonCryptoSignatureVerifier>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286784118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void std::__shared_ptr_emplace<JetPack::UnsafeIgnoreSignatureVerifier>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286784168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

__n128 std::__function::__func<JetPackReaderSetDataSegmentFoundCallback::$_0,std::allocator<JetPackReaderSetDataSegmentFoundCallback::$_0>,BOOL ()(JetPack::ReaderConfig &,std::string,std::shared_ptr<JetPack::BaseStream>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867841B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<JetPackReaderSetDataSegmentFoundCallback::$_0,std::allocator<JetPackReaderSetDataSegmentFoundCallback::$_0>,BOOL ()(JetPack::ReaderConfig &,std::string,std::shared_ptr<JetPack::BaseStream>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z40JetPackReaderSetDataSegmentFoundCallbackE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z40JetPackReaderSetDataSegmentFoundCallbackE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z40JetPackReaderSetDataSegmentFoundCallbackE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z40JetPackReaderSetDataSegmentFoundCallbackE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(JetPack::ReaderConfig &,std::string,std::shared_ptr<JetPack::BaseStream>)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2556460A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<JetPackReaderSetFileEntryFoundCallback::$_0,std::allocator<JetPackReaderSetFileEntryFoundCallback::$_0>,BOOL ()(JetPack::ReaderConfig &,void *,std::shared_ptr<JetPack::ArchiveStream>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286784248;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<JetPackReaderSetFileEntryFoundCallback::$_0,std::allocator<JetPackReaderSetFileEntryFoundCallback::$_0>,BOOL ()(JetPack::ReaderConfig &,void *,std::shared_ptr<JetPack::ArchiveStream>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z38JetPackReaderSetFileEntryFoundCallbackE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z38JetPackReaderSetFileEntryFoundCallbackE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z38JetPackReaderSetFileEntryFoundCallbackE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z38JetPackReaderSetFileEntryFoundCallbackE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(JetPack::ReaderConfig &,void *,std::shared_ptr<JetPack::ArchiveStream>)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25564641C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<JetPackReaderSetKeyForIdentifierCallback::$_0,std::allocator<JetPackReaderSetKeyForIdentifierCallback::$_0>,std::optional<std::array<unsigned char,16ul>> ()(JetPack::ReaderConfig &,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2867842D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<JetPackReaderSetKeyForIdentifierCallback::$_0,std::allocator<JetPackReaderSetKeyForIdentifierCallback::$_0>,std::optional<std::array<unsigned char,16ul>> ()(JetPack::ReaderConfig &,unsigned short)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z40JetPackReaderSetKeyForIdentifierCallbackE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z40JetPackReaderSetKeyForIdentifierCallbackE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z40JetPackReaderSetKeyForIdentifierCallbackE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z40JetPackReaderSetKeyForIdentifierCallbackE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<std::optional<std::array<unsigned char,16ul>> ()(JetPack::ReaderConfig &,unsigned short)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_255646798(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__shared_ptr_pointer<__CFData const*,void (*)(void const*),std::allocator<__CFData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

uint64_t std::__shared_ptr_pointer<__CFData const*,void (*)(void const*),std::allocator<__CFData>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void sub_255646A80(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::__throw_with_nested<JetPack::UnableToParseHeaderException &,JetPack::UnableToParseHeaderException,true>::__do_throw[abi:ne200100](uint64_t a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::__nested<JetPack::UnableToParseHeaderException>::__nested[abi:ne200100](exception, a1);
}

std::nested_exception *std::__nested<JetPack::UnableToParseHeaderException>::__nested[abi:ne200100](std::nested_exception *a1, uint64_t a2)
{
  a1->__vftable = &unk_286783408;
  p_ptr = &a1->__ptr_;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(p_ptr, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    p_ptr->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&p_ptr->__r_.__value_.__l.__data_ = v4;
  }

  a1->__vftable = &unk_286784490;
  std::nested_exception::nested_exception(a1 + 2);
  a1->__vftable = &unk_286784508;
  a1[2].__vftable = &unk_286784530;
  return a1;
}

void sub_255646D7C(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::__fs::filesystem::path::iterator,std::__fs::filesystem::path::iterator>::~pair(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_5:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_5;
  }

  return a1;
}

void JetPack::throwLibArchiveException(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = archive_error_string();
  JetPack::archiveErrorToString(v3, &v8);
  {
    JetPack::DiagnosticContext::DiagnosticContext(&getGlobalLog(void)::sharedContext);
  }

  v4 = qword_280B1A558;
  if (os_log_type_enabled(qword_280B1A558, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v5 = &v8;
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v8.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    v10 = a2;
    v11 = 2082;
    v12 = v5;
    _os_log_impl(&dword_255634000, v4, OS_LOG_TYPE_ERROR, "Failed to %{public}s: %{public}s", buf, 0x16u);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, v8.__r_.__value_.__l.__data_, v8.__r_.__value_.__l.__size_);
  }

  else
  {
    v7 = v8;
  }

  JetPack::LibArchiveException::LibArchiveException(exception, &v7);
}

void sub_255646FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void JetPack::PathOutsideOutputDestinationException::~PathOutsideOutputDestinationException(std::exception *this)
{
  this->__vftable = &unk_286784668;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  this->__vftable = &unk_286783408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_286784668;
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
  }

  this->__vftable = &unk_286783408;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x259C3B950);
}

void sub_255647250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

unint64_t JetPack::CallbackStream::read(JetPack::CallbackStream *this, unsigned __int8 *a2, unint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v4 = *(this + 4);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v4 + 48))(v4, &v8, &v7);
  *(this + 15) += result;
  if (result < a3)
  {
    *(this + 128) = 1;
  }

  return result;
}

unint64_t JetPack::CallbackStream::seekForward(JetPack::CallbackStream *this, uint64_t a2)
{
  v13[128] = *MEMORY[0x277D85DE8];
  if (*(this + 72) == 1)
  {
    v4 = *(this + 15);
    v13[0] = a2;
    v5 = *(this + 8);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = v4 + a2;
    result = (*(*v5 + 48))(v5, v13);
    *(this + 15) = v6;
  }

  else
  {
    v8 = (*(*this + 24))(this);
    result = (*(*this + 32))(this);
    if ((result & 1) == 0)
    {
      v9 = v8 + a2;
      do
      {
        result = (*(*this + 24))(this);
        if (v9 <= result)
        {
          break;
        }

        v10 = (*(*this + 24))(this);
        v11 = v9 - v10 >= 0x400 ? 1024 : v9 - v10;
        (*(*this + 16))(this, v13, v11);
        result = (*(*this + 32))(this);
      }

      while (!result);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t JetPack::CallbackStream::seekToEnd(JetPack::CallbackStream *this)
{
  if (*(this + 112) == 1)
  {
    v2 = *(this + 13);
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v2 + 48))(v2);
    *(this + 15) = result;
    *(this + 128) = 1;
  }

  else
  {
    result = (*(*this + 32))(this);
    if ((result & 1) == 0)
    {
      do
      {
        (*(*this + 48))(this, 1024);
        result = (*(*this + 32))(this);
      }

      while (!result);
    }
  }

  return result;
}

void JetPack::CallbackStream::~CallbackStream(JetPack::CallbackStream *this)
{
  *this = &unk_286784760;
  if (*(this + 112) == 1)
  {
    v2 = *(this + 13);
    if (v2 == (this + 80))
    {
      (*(*v2 + 32))(v2);
    }

    else if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  if (*(this + 72) == 1)
  {
    v3 = *(this + 8);
    if (v3 == (this + 40))
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  v4 = *(this + 4);
  if (v4 == (this + 8))
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }
}

{
  *this = &unk_286784760;
  if (*(this + 112) == 1)
  {
    v2 = *(this + 13);
    if (v2 == (this + 80))
    {
      (*(*v2 + 32))(v2);
    }

    else if (v2)
    {
      (*(*v2 + 40))(v2);
    }
  }

  if (*(this + 72) == 1)
  {
    v3 = *(this + 8);
    if (v3 == (this + 40))
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  v4 = *(this + 4);
  if (v4 == (this + 8))
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  JUMPOUT(0x259C3B950);
}

size_t JetPack::BufferStream::read(JetPack::BufferStream *this, unsigned __int8 *a2, size_t a3)
{
  if ((*(*this + 32))(this))
  {
    return 0;
  }

  v6 = *(this + 3);
  if (*(this + 2) - v6 < a3)
  {
    a3 = *(this + 2) - v6;
  }

  if (a3)
  {
    memmove(a2, (*(this + 1) + v6), a3);
    v6 = *(this + 3);
  }

  *(this + 3) = v6 + a3;
  return a3;
}

const char *JetPack::archiveErrorToString@<X0>(const char *this@<X0>, char *a2@<X8>)
{
  v3 = a2;
  if (this)
  {
    v4 = this;
    this = strlen(this);
    if (this >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    if (this >= 0x17)
    {
      operator new();
    }

    v3[23] = this;
    if (this)
    {
      this = memcpy(v3, v4, this);
    }

    v3 = &v5[v3];
  }

  else
  {
    a2[23] = 0;
  }

  *v3 = 0;
  return this;
}

void sub_255647E04(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__optional_destruct_base<std::function<unsigned long ()(void)>,false>::~__optional_destruct_base[abi:ne200100](&a11);
  std::optional<std::function<void ()(unsigned long)>>::~optional(&a16);
  std::function<unsigned long ()(unsigned char *,unsigned long)>::~function(&a21);
  std::__shared_weak_count::~__shared_weak_count(v21);
  operator delete(v24);
  if (a2 == 1)
  {
    v25 = __cxa_begin_catch(a1);
    GlobalLog = getGlobalLog();
    if (os_log_type_enabled(GlobalLog, OS_LOG_TYPE_ERROR))
    {
      v27 = (*(*v25 + 16))(v25);
      LODWORD(a9) = 136446210;
      *(&a9 + 4) = v27;
      _os_log_impl(&dword_255634000, GlobalLog, OS_LOG_TYPE_ERROR, "Unable to make public ref with error: %{public}s", &a9, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x255647DC8);
  }

  _Unwind_Resume(a1);
}

uint64_t JetPackStreamPosition(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1;
    a1 = *a1;
    v2 = v1[1];
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v2 = 0;
  }

  result = (*(*a1 + 24))(a1);
  if (v2)
  {
    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      return v4;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<JetPack::CallbackStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286784820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

uint64_t std::optional<std::function<void ()(unsigned long)>>::~optional(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t std::function<unsigned long ()(unsigned char *,unsigned long)>::~function(uint64_t a1)
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

__n128 std::__function::__func<JetPackStreamCreate::$_0,std::allocator<JetPackStreamCreate::$_0>,unsigned long ()(unsigned char *,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286784870;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<JetPackStreamCreate::$_0,std::allocator<JetPackStreamCreate::$_0>,unsigned long ()(unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z19JetPackStreamCreateE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "Z19JetPackStreamCreateE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z19JetPackStreamCreateE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z19JetPackStreamCreateE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<JetPackStreamCreate::$_1,std::allocator<JetPackStreamCreate::$_1>,void ()(unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286784900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<JetPackStreamCreate::$_1,std::allocator<JetPackStreamCreate::$_1>,void ()(unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z19JetPackStreamCreateE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "Z19JetPackStreamCreateE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z19JetPackStreamCreateE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z19JetPackStreamCreateE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<JetPackStreamCreate::$_2,std::allocator<JetPackStreamCreate::$_2>,unsigned long ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286784990;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<JetPackStreamCreate::$_2,std::allocator<JetPackStreamCreate::$_2>,unsigned long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "Z19JetPackStreamCreateE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "Z19JetPackStreamCreateE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "Z19JetPackStreamCreateE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("Z19JetPackStreamCreateE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t JetPack::CallbackStream::CallbackStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_286784760;
  v7 = a1 + 8;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(a1 + 32) = v7;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
    }

    else
    {
      *(a1 + 32) = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    *(a1 + 32) = 0;
  }

  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  if (*(a3 + 32) == 1)
  {
    v9 = *(a3 + 24);
    if (v9)
    {
      if (v9 == a3)
      {
        *(a1 + 64) = a1 + 40;
        (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 40);
        goto LABEL_12;
      }

      v9 = (*(*v9 + 16))(v9);
    }

    *(a1 + 64) = v9;
LABEL_12:
    *(a1 + 72) = 1;
  }

  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  if (*(a4 + 32) == 1)
  {
    v10 = *(a4 + 24);
    if (v10)
    {
      if (v10 == a4)
      {
        *(a1 + 104) = a1 + 80;
        (*(**(a4 + 24) + 24))(*(a4 + 24), a1 + 80);
        goto LABEL_19;
      }

      v10 = (*(*v10 + 16))(v10);
    }

    *(a1 + 104) = v10;
LABEL_19:
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_255648944(_Unwind_Exception *a1)
{
  std::__optional_destruct_base<std::function<unsigned long ()(void)>,false>::~__optional_destruct_base[abi:ne200100](v3);
  std::optional<std::function<void ()(unsigned long)>>::~optional(v2);
  std::function<unsigned long ()(unsigned char *,unsigned long)>::~function(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_destruct_base<std::function<unsigned long ()(void)>,false>::~__optional_destruct_base[abi:ne200100](uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<JetPack::BufferStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286784A20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

void std::__shared_ptr_emplace<JetPack::FileStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286784A70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

uint64_t JetPack::CCKDFParametersDestroyWrapper(uint64_t result)
{
  if (result)
  {
    return CCKDFParametersDestroy();
  }

  return result;
}

uint64_t JetPack::CommonCryptoBackend::generateSecureRandomBytes(JetPack::CommonCryptoBackend *this, unsigned __int8 *bytes, size_t count)
{
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], count, bytes))
  {
    return 4294966296;
  }

  else
  {
    return 1;
  }
}

uint64_t JetPack::CommonCryptoBackend::convertCCStatusToCryptoStatus(JetPack::CommonCryptoBackend *this, int a2)
{
  if (a2)
  {
    return 4294966296;
  }

  else
  {
    return 1;
  }
}

uint64_t JetPack::CommonCryptoBackend::aesGCMEncrypt(JetPack::CommonCryptoBackend *this, const unsigned __int8 *a2, unint64_t a3, const unsigned __int8 *a4, unint64_t a5, const unsigned __int8 *a6, unint64_t a7, unsigned __int8 *a8, unsigned __int8 *a9, unint64_t a10)
{
  if (CCCryptorGCMOneshotEncrypt())
  {
    return 4294966296;
  }

  else
  {
    return 1;
  }
}

void JetPack::CommonCryptoBackend::generateSigningKey(JetPack::CommonCryptoBackend *this)
{
  valuePtr[4] = *MEMORY[0x277D85DE8];
  LODWORD(valuePtr[0]) = 256;
  v1 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
  JetPack::makeCFSharedPtr<__CFNumber const*>(v1, &v2);
}

void sub_255648F18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](v2 - 56);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void JetPack::CFDictionaryWrapper::convert(void **a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  memset(keys, 0, sizeof(keys));
  __p = 0;
  v10 = 0;
  v11 = 0;
  if (a2)
  {
    v5 = 16 * a2;
    do
    {
      std::vector<void const*>::push_back[abi:ne200100](keys, *a1);
      std::vector<void const*>::push_back[abi:ne200100](&__p, *a1 + 1);
      a1 += 2;
      v5 -= 16;
    }

    while (v5);
    a2 = keys[0];
    v6 = __p;
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = CFDictionaryCreate(*MEMORY[0x277CBECE8], a2, v6, (v7 - v6) >> 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  JetPack::makeCFSharedPtr<__CFDictionary const*>(v8, a3);
}

void sub_25564904C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void JetPack::CFDataWrapper::asVector(JetPack::CFDataWrapper *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  if (Length)
  {
    v7 = 0;
    do
    {
      v8 = a2[2];
      if (v7 < v8)
      {
        *v7++ = *BytePtr;
      }

      else
      {
        v9 = *a2;
        v10 = &v7[-*a2];
        v11 = (v10 + 1);
        if ((v10 + 1) < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - v9;
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          operator new();
        }

        *v10 = *BytePtr;
        v7 = v10 + 1;
        memcpy(0, v9, v10);
        *a2 = 0;
        a2[2] = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      a2[1] = v7;
      ++BytePtr;
      --Length;
    }

    while (Length);
  }
}

void sub_2556491BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void JetPack::CommonCryptoBackend::generateSelfSignedCertificate()
{
  cStr[23] = 12;
  strcpy(cStr, "JetPackTests");
  v0 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  JetPack::makeCFSharedPtr<__CFString const*>(v0, &v2);
}

void sub_255649574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a16);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a18);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a20);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](&a22);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](v22 - 64);
  _Unwind_Resume(a1);
}

void sub_2556495FC(_Unwind_Exception *a1)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2556495ECLL);
}

void JetPack::CommonCryptoBackend::subjectEntry(JetPack::CommonCryptoBackend *this, const __CFString *a2, const __CFString *a3)
{
  values[0] = a2;
  values[1] = a3;
  v3 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 2, MEMORY[0x277CBF128]);
  JetPack::makeCFSharedPtr<__CFArray const*>(v3, &v4);
}

void JetPack::CommonCryptoBackend::keyFromData()
{
  valuePtr[6] = *MEMORY[0x277D85DE8];
  LODWORD(valuePtr[0]) = 256;
  v0 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
  JetPack::makeCFSharedPtr<__CFNumber const*>(v0, &v1);
}

void sub_255649990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](v2);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va2);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void JetPack::CommonCryptoBackend::exportPrivateKeyAsDER(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  v3 = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  JetPack::CommonCryptoBackend::keyFromData();
}

void sub_255649B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255649C18(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

__n128 JetPack::CommonCryptoBackend::exportCertificateAsDER@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  return result;
}

void sub_255649D14(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void JetPack::CFArrayWrapper::convert<std::shared_ptr<__CFArray const>,1ul>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v5[0] = *a1;
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  v4 = CFArrayCreate(*MEMORY[0x277CBECE8], v5, 1, MEMORY[0x277CBF128]);
  JetPack::makeCFSharedPtr<__CFArray const*>(v4, a2);
}

void std::vector<void const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_255649FAC(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_25564A03C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

uint64_t std::__shared_ptr_pointer<__CFString const*,void (*)(void const*),std::allocator<__CFString>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void sub_25564A1BC(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<__CFDictionary const*,void (*)(void const*),std::allocator<__CFDictionary>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void sub_25564A2EC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

uint64_t std::__shared_ptr_pointer<__CFNumber const*,void (*)(void const*),std::allocator<__CFNumber>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void std::__shared_ptr_pointer<__SecKey *,void (*)(void const*),std::allocator<__SecKey>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C3B950);
}

uint64_t std::__shared_ptr_pointer<__SecKey *,void (*)(void const*),std::allocator<__SecKey>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void sub_25564A4E0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

uint64_t std::__shared_ptr_pointer<__CFArray const*,void (*)(void const*),std::allocator<__CFArray>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

uint64_t std::__shared_ptr_pointer<__SecCertificate *,void (*)(void const*),std::allocator<__SecCertificate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

uint64_t std::__shared_ptr_pointer<__SecTrust *,void (*)(void const*),std::allocator<__SecTrust>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000025564C546)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000025564C546 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000025564C546))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025564C546 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

uint64_t JetPack::BrotliDecoderStreamImpl<JetPack::AppleDecompressionInterface>::BrotliDecoderStreamImpl(uint64_t a1, uint64_t *a2)
{
  std::shared_ptr<JetPack::BaseStream>::~shared_ptr[abi:ne200100](a1);
  result = *a2;
  *a2 = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
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