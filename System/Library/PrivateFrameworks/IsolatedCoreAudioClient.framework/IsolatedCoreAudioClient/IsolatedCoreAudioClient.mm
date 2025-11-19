void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797ED2B0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
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

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void applesauce::CF::StringRef::~StringRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
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
          std::vector<void const*>::__throw_length_error[abi:ne200100]();
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
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
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
          std::vector<void const*>::__throw_length_error[abi:ne200100]();
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
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
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
    MEMORY[0x259C390C0](exception, "Could not construct");
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

void sub_25557761C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
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

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void const*>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t ClientSideServerConnection::kill(ClientSideServerConnection *this)
{
  result = *(this + 5);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void ClientSideServerConnection::~ClientSideServerConnection(ClientSideServerConnection *this)
{
  *this = &unk_286775430;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 8);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286775430;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ClientSideServerConnection::ClientSideServerConnection(void)::$_0,std::allocator<ClientSideServerConnection::ClientSideServerConnection(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26ClientSideServerConnectionC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

id ServerSideHardware::GetWorkgroupForUseCase(uint64_t a1, unsigned int **a2)
{
  v26 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v12, a1 + 8, **a2);
  if (v14 != 1)
  {
    v7 = 0;
    goto LABEL_12;
  }

  v2 = *(v12 + 40);
  outData = 0;
  *&inAddress.mSelector = *"gwsobolg";
  inAddress.mElement = 0;
  ioDataSize = 8;
  PropertyData = AudioObjectGetPropertyData(v2, &inAddress, 0, 0, &ioDataSize, &outData);
  if (!PropertyData)
  {
    v7 = outData;
    v9 = outData;
LABEL_10:
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    goto LABEL_12;
  }

  {
    sIsolatedCoreAudioServerLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioServer");
  }

  v4 = sIsolatedCoreAudioServerLog(void)::sLog;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:PropertyData];
    *buf = 136315906;
    v19 = "IsolatedCoreAudioClientWorkgroup.mm";
    v20 = 1024;
    v21 = 19;
    v22 = 1024;
    v23 = v2;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_255576000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not create get workgroup for deviceID: %u because of Error:%@", buf, 0x22u);
  }

  v6 = v14;
  v7 = outData;
  v8 = outData;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_255577C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, void *a14)
{
  if (a12)
  {
    if (a11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a11);
    }
  }

  _Unwind_Resume(a1);
}

void UseCaseSet<HALUseCase>::GetUseCase(uint64_t a1, uint64_t a2, unsigned int a3)
{
  std::mutex::lock((a2 + 40));
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(a2, a3);
  if (v6)
  {
    v7 = v6[4];
    *a1 = v6[3];
    *(a1 + 8) = v7;
    if (v7)
    {
      v8 = (v7 + 8);
      v9 = 1;
      atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v9;

  std::mutex::unlock((a2 + 40));
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ServerSideHardware::StopIOProc(uint64_t a1, unsigned int **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v15, a1 + 8, **a2);
  if (v17 == 1)
  {
    v2 = AudioDeviceStop(*(v15 + 40), *(v15 + 48));
    v4 = v2;
    if (v2)
    {
      v3.i32[0] = bswap32(v2);
      v5 = vzip1_s8(v3, v3);
      v6.i64[0] = 0x1F0000001FLL;
      v6.i64[1] = 0x1F0000001FLL;
      v7.i64[0] = 0x5F0000005FLL;
      v7.i64[1] = 0x5F0000005FLL;
      v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
      v14 = 4;
      LODWORD(__p) = vuzp1_s8(v8, v8).u32[0];
      BYTE4(__p) = 0;
      v9 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "ServerSideHardware.cpp";
        v20 = 1024;
        v21 = 208;
        v22 = 2080;
        p_p = &__p;
        _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ServerSideHardware::StopIOProc - Failed to stop audio device - error: %s", buf, 0x1Cu);
        if (v14 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v10 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "ServerSideHardware.cpp";
        v20 = 1024;
        v21 = 212;
        _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideHardware::StopIOProc - Stopped audio device", buf, 0x12u);
        v4 = 0;
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v4 = 5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_255577F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sIsolatedCoreAudioServerLog()
{
  v0 = 0x27F7B9000uLL;
  {
    v0 = 0x27F7B9000;
    if (v2)
    {
      sIsolatedCoreAudioServerLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioServer");
      v0 = 0x27F7B9000;
    }
  }

  return *(v0 + 3992);
}

uint64_t ServerSideHardware::StartIOProcAtTime(uint64_t a1, unsigned int **a2, UInt64 a3)
{
  v23 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v19, a1 + 8, **a2);
  if (v21 == 1)
  {
    v4 = *(v19 + 40);
    v5 = *(v19 + 48);
    ioRequestedStartTime.mSampleTime = 0.0;
    memset(&ioRequestedStartTime.mRateScalar, 0, 48);
    ioRequestedStartTime.mHostTime = a3;
    ioRequestedStartTime.mFlags = 2;
    v6 = AudioDeviceStartAtTime(v4, v5, &ioRequestedStartTime, 9u);
    v8 = v6;
    if (v6)
    {
      v7.i32[0] = bswap32(v6);
      v9 = vzip1_s8(v7, v7);
      v10.i64[0] = 0x1F0000001FLL;
      v10.i64[1] = 0x1F0000001FLL;
      v11.i64[0] = 0x5F0000005FLL;
      v11.i64[1] = 0x5F0000005FLL;
      v12 = vbsl_s8(vmovn_s32(vcgtq_u32(v11, vsraq_n_s32(v10, vshlq_n_s32(vmovl_u16(v9), 0x18uLL), 0x18uLL))), v9, 0x2E002E002E002ELL);
      v18 = 4;
      LODWORD(__p) = vuzp1_s8(v12, v12).u32[0];
      BYTE4(__p) = 0;
      v13 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(ioRequestedStartTime.mSampleTime) = 136315650;
        *(&ioRequestedStartTime.mSampleTime + 4) = "ServerSideHardware.cpp";
        WORD2(ioRequestedStartTime.mHostTime) = 1024;
        *(&ioRequestedStartTime.mHostTime + 6) = 186;
        WORD1(ioRequestedStartTime.mRateScalar) = 2080;
        *(&ioRequestedStartTime.mRateScalar + 4) = &__p;
        _os_log_impl(&dword_255576000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ServerSideHardware::StartIOProcAtTime - Failed to start audio device - error: %s", &ioRequestedStartTime, 0x1Cu);
        if (v18 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v14 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(ioRequestedStartTime.mSampleTime) = 136315394;
        *(&ioRequestedStartTime.mSampleTime + 4) = "ServerSideHardware.cpp";
        WORD2(ioRequestedStartTime.mHostTime) = 1024;
        *(&ioRequestedStartTime.mHostTime + 6) = 190;
        _os_log_impl(&dword_255576000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideHardware::StartIOProcAtTime - Started audio device", &ioRequestedStartTime, 0x12u);
        v8 = 0;
      }
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v8 = 5;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_25557821C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ServerSideHardware::StartIOProc(uint64_t a1, unsigned int **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v15, a1 + 8, **a2);
  if (v17 == 1)
  {
    v2 = AudioDeviceStart(*(v15 + 40), *(v15 + 48));
    v4 = v2;
    if (v2)
    {
      v3.i32[0] = bswap32(v2);
      v5 = vzip1_s8(v3, v3);
      v6.i64[0] = 0x1F0000001FLL;
      v6.i64[1] = 0x1F0000001FLL;
      v7.i64[0] = 0x5F0000005FLL;
      v7.i64[1] = 0x5F0000005FLL;
      v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
      v14 = 4;
      LODWORD(__p) = vuzp1_s8(v8, v8).u32[0];
      BYTE4(__p) = 0;
      v9 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v19 = "ServerSideHardware.cpp";
        v20 = 1024;
        v21 = 164;
        v22 = 2080;
        p_p = &__p;
        _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ServerSideHardware::StartIOProc - Failed to start audio device - error: %s", buf, 0x1Cu);
        if (v14 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v10 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "ServerSideHardware.cpp";
        v20 = 1024;
        v21 = 168;
        _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideHardware::StartIOProc - Started audio device", buf, 0x12u);
        v4 = 0;
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v4 = 5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25557840C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void ServerSideHardware::DeRegisterCallback(uint64_t a1, unsigned int **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v14, a1 + 8, **a2);
  if (v16 == 1)
  {
    v2 = v14;
    v3 = AudioDeviceDestroyIOProcID(*(v14 + 40), *(v14 + 48));
    if (v3)
    {
      v4.i32[0] = bswap32(v3);
      v5 = vzip1_s8(v4, v4);
      v6.i64[0] = 0x1F0000001FLL;
      v6.i64[1] = 0x1F0000001FLL;
      v7.i64[0] = 0x5F0000005FLL;
      v7.i64[1] = 0x5F0000005FLL;
      v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
      v13 = 4;
      LODWORD(__p) = vuzp1_s8(v8, v8).u32[0];
      BYTE4(__p) = 0;
      v9 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "ServerSideHardware.cpp";
        v19 = 1024;
        v20 = 145;
        v21 = 2080;
        p_p = &__p;
        _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ServerSideHardware::DeRegisterCallback - Failed to destroy audio device IO proc - error: %s", buf, 0x1Cu);
        if (v13 < 0)
        {
          operator delete(__p);
        }
      }
    }

    else
    {
      v10 = sIsolatedCoreAudioServerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "ServerSideHardware.cpp";
        v19 = 1024;
        v20 = 149;
        _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideHardware::DeRegisterCallback - IOProcID destruction succeeded", buf, 0x12u);
      }

      *(v2 + 48) = 0;
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2555785EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

void ServerSideHardware::AttachCallbacksToHALDevice(uint64_t a1, unsigned int **a2)
{
  v35 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v26, a1 + 8, **a2);
  v3 = v26;
  if (*(v26 + 44) == 1)
  {
    v4 = 0;
    v5 = **a2;
    outIOProcID = 0;
    v6 = *(v26 + 40);
    if (v5 > 1936290408)
    {
      if (v5 == 1936614497)
      {
        v7 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sound_analysis_ptr)>;
        {
          v20 = v3;
          v21 = v6;
          v22 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sound_analysis_ptr)>;
          {
            v9 = &SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sound_analysis_ptr;
            goto LABEL_33;
          }

          goto LABEL_34;
        }
      }

      else
      {
        if (v5 != 1936290409)
        {
          goto LABEL_20;
        }

        v7 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_siri_ptr)>;
        {
          v20 = v3;
          v21 = v6;
          v22 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_siri_ptr)>;
          {
            v9 = &SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_siri_ptr;
            goto LABEL_33;
          }

LABEL_34:
          v6 = v21;
          v4 = v22;
LABEL_20:
          v11 = AudioDeviceCreateIOProcID(v6, v4, 0, &outIOProcID);
          if (v11)
          {
            v12.i32[0] = bswap32(v11);
            v13 = vzip1_s8(v12, v12);
            v14.i64[0] = 0x1F0000001FLL;
            v14.i64[1] = 0x1F0000001FLL;
            v15.i64[0] = 0x5F0000005FLL;
            v15.i64[1] = 0x5F0000005FLL;
            v16 = vbsl_s8(vmovn_s32(vcgtq_u32(v15, vsraq_n_s32(v14, vshlq_n_s32(vmovl_u16(v13), 0x18uLL), 0x18uLL))), v13, 0x2E002E002E002ELL);
            v24 = 4;
            LODWORD(__p) = vuzp1_s8(v16, v16).u32[0];
            BYTE4(__p) = 0;
            v17 = sIsolatedCoreAudioServerLog();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v30 = "ServerSideHardware.cpp";
              v31 = 1024;
              v32 = 107;
              v33 = 2080;
              p_p = &__p;
              _os_log_impl(&dword_255576000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d ServerSideHardware::AttachCallbacksToHALDevice - Failed to create audio device IO proc - error: %s", buf, 0x1Cu);
              if (v24 < 0)
              {
                operator delete(__p);
              }
            }
          }

          else
          {
            v18 = sIsolatedCoreAudioServerLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v30 = "ServerSideHardware.cpp";
              v31 = 1024;
              v32 = 111;
              _os_log_impl(&dword_255576000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideHardware::AttachCallbacksToHALDevice - IOProcID succeeded", buf, 0x12u);
            }

            *(v26 + 48) = outIOProcID;
          }

          goto LABEL_27;
        }
      }
    }

    else if (v5 == 1819309171)
    {
      v7 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_meterClient_ptr)>;
      {
        v20 = v3;
        v21 = v6;
        v22 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_meterClient_ptr)>;
        {
          v9 = &SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_meterClient_ptr;
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (v5 != 1935962992)
      {
        goto LABEL_20;
      }

      v7 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sharedDSP_ptr)>;
      {
        v20 = v3;
        v21 = v6;
        v22 = IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sharedDSP_ptr)>;
        {
          v9 = &SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sharedDSP_ptr;
LABEL_33:
          *v9 = v20 + 24;
          __cxa_guard_release(v8);
          goto LABEL_34;
        }

        goto LABEL_34;
      }
    }

    v4 = v7;
    goto LABEL_20;
  }

  v10 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "ServerSideHardware.cpp";
    v31 = 1024;
    v32 = 117;
    _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideHardware::AttachCallbacksToHALDevice - Skipping creating IO proc installation, device hasn't changed", buf, 0x12u);
  }

LABEL_27:
  if (v28 == 1 && v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_255578A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a18 == 1)
  {
    if (a17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void ServerSideHardware::RegisterCallback(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v14 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v7, a1 + 8, **a3);
  if (v9 == 1)
  {
    std::function<void ()(CoreAudioTimestamp)>::operator=(*(v7 + 24) + 8, a2);
    if (!**a3)
    {
      {
        sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      }

      v5 = sIsolatedCoreAudioClientLog(void)::sLog;
      if (os_log_type_enabled(sIsolatedCoreAudioClientLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "ServerSideHardware.cpp";
        v12 = 1024;
        v13 = 130;
        _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideHardware::RegisterCallback - legacyHalUseCase is unknown!", buf, 0x12u);
      }
    }
  }

  if (v9 == 1 && v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_255578BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(CoreAudioTimestamp)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255578E44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(CoreAudioTimestamp)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ServerSideHardware::AcquireDeviceForUseCase(uint64_t a1, unsigned int **a2)
{
  v24 = *MEMORY[0x277D85DE8];
  UseCaseSet<HALUseCase>::GetUseCase(&v13, a1 + 8, **a2);
  v2 = mach_absolute_time();
  v3 = 0;
  v4 = v13;
  while (1)
  {
    v5 = (*(*v4 + 16))(v4);
    if (v5)
    {
      break;
    }

    usleep(0x3D090u);
    if (++v3 == 10)
    {
      goto LABEL_6;
    }
  }

  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_6:
  v6 = mach_absolute_time();
  v7 = dword_27F7B9F94;
  if (!dword_27F7B9F94)
  {
    mach_timebase_info(&LogRetrySetDeviceIDState(BOOL,unsigned int,unsigned long long)::sTimebaseInfo);
    v7 = dword_27F7B9F94;
  }

  v8 = ((v6 - v2) * LogRetrySetDeviceIDState(BOOL,unsigned int,unsigned long long)::sTimebaseInfo / v7);
  v9 = sIsolatedCoreAudioServerLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v10)
    {
      *buf = 136315906;
      v17 = "ServerSideHardware.cpp";
      v18 = 1024;
      v19 = 39;
      v20 = 1024;
      v21 = v3;
      v22 = 2048;
      v23 = v8 / 1000000000.0;
      v11 = "%25s:%-5d LogRetrySetDeviceIDState - Successfully set device ID after %u tries in %f seconds";
LABEL_13:
      _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0x22u);
    }
  }

  else if (v10)
  {
    *buf = 136315906;
    v17 = "ServerSideHardware.cpp";
    v18 = 1024;
    v19 = 45;
    v20 = 1024;
    v21 = v3;
    v22 = 2048;
    v23 = v8 / 1000000000.0;
    v11 = "%25s:%-5d LogRetrySetDeviceIDState - Failed to set device ID for use case ID for %u tries in %f seconds";
    goto LABEL_13;
  }

LABEL_14:
  if (v15 == 1 && v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void ServerSideHardware::RegisterUseCaseID(ServerSideHardware *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v20 = a2;
  v4 = *(this + 17);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(&v18);
  v7 = v18;
  v6 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::lock((this + 48));
  v8 = *(v7 + 8);
  if (!std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(this + 1, *(v7 + 8)))
  {
    v9 = *(this + 16);
    if (!*&v9)
    {
      goto LABEL_22;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v8;
      if (*&v9 <= v8)
      {
        v11 = v8 % v9.i32[0];
      }
    }

    else
    {
      v11 = (v9.i32[0] - 1) & v8;
    }

    v12 = *(*(this + 1) + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        if (*(v13 + 4) == v8)
        {
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = v13[4];
          v13[3] = v7;
          v13[4] = v6;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          break;
        }
      }

      else
      {
        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= *&v9)
          {
            v14 %= *&v9;
          }
        }

        else
        {
          v14 &= *&v9 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_22;
        }
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_22;
      }
    }
  }

  std::mutex::unlock((this + 48));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v16 = v19;
  if (v18)
  {
    v17 = v18 + 8;
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
  a3[1] = v16;
}

void sub_25557966C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,void *>>>::operator()[abi:ne200100](1, v13);
  std::mutex::unlock((v12 + 48));
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void ServerSideHardware::~ServerSideHardware(ServerSideHardware *this)
{
  ServerSideHardware::~ServerSideHardware(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_2867754D8;
  std::__function::__value_func<std::shared_ptr<HALUseCase> ()>::~__value_func[abi:ne200100](this + 112);
  std::mutex::~mutex((this + 48));
  v2 = *(this + 3);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<HALUseCase> ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ServerSideHardware::ServerSideHardware(void)::$_0,std::allocator<ServerSideHardware::ServerSideHardware(void)::$_0>,std::shared_ptr<HALUseCase> ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN18ServerSideHardwareC1EvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_255579A4C(_Unwind_Exception *a1)
{
  std::unique_ptr<CoreAudioCallback>::~unique_ptr[abi:ne200100](&v1[1].__shared_weak_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALUseCase>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867755D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t IsolatedCoreAudioClientExclaveKitProxy::anchor(IsolatedCoreAudioClientExclaveKitProxy *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  result = tb_client_connection_message_construct();
  if (!result)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = *(this + 3);
    tb_connection_send_query();
    v5 = *(this + 3);
    result = tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IsolatedCoreAudioClientExclaveKitProxy::ferryIsolatedAudioDataToScopedSinkFromSampleTime(IsolatedCoreAudioClientExclaveKitProxy *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  result = tb_client_connection_message_construct();
  if (!result)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = *(this + 3);
    tb_connection_send_query();
    v5 = *(this + 3);
    result = tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IsolatedCoreAudioClientExclaveKitProxy::ferryIsolatedAudioDataToSinkFromSampleTime(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v10 = ___ZN38IsolatedCoreAudioClientExclaveKitProxy42ferryIsolatedAudioDataToSinkFromSampleTimeE18CoreAudioTimestamp_block_invoke;
  v11 = &unk_2797ED2C8;
  v12 = &v13;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  v2 = *(a1 + 24);
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v17 = 0;
    v3 = *(a1 + 24);
    if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v17)
    {
      v24 = 0;
      tb_message_decode_s32();
      if (v24 >= 6)
      {
        printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v24, "/Library/Caches/com.apple.xbs/Binaries/IsolatedCoreAudioClient/install/TempContent/Objects/IsolatedCoreAudioClient.build/IsolatedCoreAudioClient.build/DerivedSources/IsolatedCoreAudioClient_C.c", 98);
        result = _os_crash();
        __break(1u);
        return result;
      }

      (v10)(v9);
    }

    v4 = *(a1 + 24);
    tb_client_connection_message_destruct();
  }

  v5 = *(v14 + 6);
  if (v5)
  {
    v6 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IsolatedCoreAudioClientExclaveKitProxy.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 61;
      *&buf[18] = 1024;
      *&buf[20] = v5;
      _os_log_impl(&dword_255576000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d translateFerryToSinkStatus encountered an error! Result: %d", buf, 0x18u);
    }
  }

  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sIsolatedCoreAudioClientLog()
{
  v0 = 0x27F7B9000uLL;
  {
    v0 = 0x27F7B9000;
    if (v2)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v0 = 0x27F7B9000;
    }
  }

  return *(v0 + 4024);
}

uint64_t IsolatedCoreAudioClientExclaveKitProxy::ferryIsolatedAudioDataFromSourceAtSampleTime(IsolatedCoreAudioClientExclaveKitProxy *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  result = tb_client_connection_message_construct();
  if (!result)
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = *(this + 3);
    tb_connection_send_query();
    v5 = *(this + 3);
    result = tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void IsolatedCoreAudioClientExclaveKitProxy::~IsolatedCoreAudioClientExclaveKitProxy(IsolatedCoreAudioClientExclaveKitProxy *this)
{
  IsolatedCoreAudioClientExclaveKitProxy::~IsolatedCoreAudioClientExclaveKitProxy(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286775638;
  v2 = *(this + 2);
  tb_endpoint_destruct();
  *(this + 2) = 0;
}

uint64_t _ZNKSt3__110__function6__funcIN17CoreAudioCallback19mCallbackConnectionMUldyE_ENS_9allocatorIS3_EEFvdyEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "N17CoreAudioCallback19mCallbackConnectionMUldyE_E"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void IsolatedCoreAudioXPCServerProtocolConnection::setRemoteObjectInterface(IsolatedCoreAudioXPCServerProtocolConnection *this, NSXPCConnection *a2)
{
  v3 = a2;
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286779AB8];
  [(NSXPCConnection *)v3 setRemoteObjectInterface:v2];
}

void IsolatedCoreAudioXPCServerProtocolConnection::~IsolatedCoreAudioXPCServerProtocolConnection(id *this)
{
  IsolatedCoreAudioClientBaseNSXPCConnection::~IsolatedCoreAudioClientBaseNSXPCConnection(this);

  JUMPOUT(0x259C39250);
}

{

  IsolatedCoreAudioClientBaseNSXPCConnection::~IsolatedCoreAudioClientBaseNSXPCConnection(this);
}

uint64_t std::function<void ()(CoreAudioTimestamp)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, v4);
}

void IsolatedCoreAudioXPCPortal::~IsolatedCoreAudioXPCPortal(id *this)
{
  IsolatedCoreAudioXPCPortal::~IsolatedCoreAudioXPCPortal(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_2867756E0;
  [this[2] invalidate];
}

void IsolatedCoreAudioXPCPortal::IsolatedCoreAudioXPCPortal(IsolatedCoreAudioXPCPortal *this, NSXPCListener *a2, IsolatedCoreAudioClientNSXPCListenerDelegate *a3)
{
  v6 = a2;
  v7 = a3;
  *this = &unk_2867756E0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  objc_storeStrong(this + 2, a2);
  objc_storeStrong(this + 1, a3);
  [*(this + 2) setDelegate:*(this + 1)];
  [*(this + 2) resume];
}

void IsolatedCoreAudioClientBaseNSXPCConnection::makeConnection(uint64_t a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = objc_alloc(MEMORY[0x277CCAE80]);
  if (v4)
  {
    v6 = [v5 initWithListenerEndpoint:*(a1 + 16)];
  }

  else
  {
    v6 = [v5 initWithMachServiceName:*(a1 + 24) options:4096];
  }

  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  (*(*a1 + 24))(a1, *(a1 + 8));
  v8 = *(a1 + 8);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3321888768;
  v17 = ___ZZN42IsolatedCoreAudioClientBaseNSXPCConnection14makeConnectionENSt3__18functionIFvvEEEENK3__0cvU13block_pointerS2_Ev_block_invoke;
  v18 = &__block_descriptor_40_ea8_32c96_ZTSKZN42IsolatedCoreAudioClientBaseNSXPCConnection14makeConnectionENSt3__18functionIFvvEEEE3__0_e5_v8__0l;
  v19[0] = v8;
  v9 = v8;
  v10 = MEMORY[0x259C39540](&v15);

  [*(a1 + 8) setInterruptionHandler:v10];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v14, a2);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3321888768;
  v17 = ___ZZN42IsolatedCoreAudioClientBaseNSXPCConnection14makeConnectionENSt3__18functionIFvvEEEENK3__1cvU13block_pointerS2_Ev_block_invoke;
  v18 = &__block_descriptor_64_ea8_32c96_ZTSKZN42IsolatedCoreAudioClientBaseNSXPCConnection14makeConnectionENSt3__18functionIFvvEEEE3__1_e5_v8__0l;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v19, v14);
  v11 = MEMORY[0x259C39540](&v15);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v19);
  [*(a1 + 8) setInvalidationHandler:v11];

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v14);
  [*(a1 + 8) resume];
  v12 = [*(a1 + 8) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  (*(*a1 + 16))(a1, v12);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ___ZZN42IsolatedCoreAudioClientBaseNSXPCConnection14makeConnectionENSt3__18functionIFvvEEEENK3__1cvU13block_pointerS2_Ev_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void ___ZN42IsolatedCoreAudioClientBaseNSXPCConnection14makeConnectionENSt3__18functionIFvvEEE_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "IsolatedCoreAudioClientBaseNSXPCConnection.mm";
    v15 = 1024;
    v16 = 48;
    _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempt to connect to IsolatedAudio sever via XPC failed.", &v13, 0x12u);
  }

  v4 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v2 code];
    v13 = 136315650;
    v14 = "IsolatedCoreAudioClientBaseNSXPCConnection.mm";
    v15 = 1024;
    v16 = 49;
    v17 = 2048;
    v18 = v5;
    _os_log_impl(&dword_255576000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d  Code:\t\t\t%ld", &v13, 0x1Cu);
  }

  v6 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v2 localizedDescription];
    v13 = 136315650;
    v14 = "IsolatedCoreAudioClientBaseNSXPCConnection.mm";
    v15 = 1024;
    v16 = 50;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_255576000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d  Description:\t%@", &v13, 0x1Cu);
  }

  v8 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v2 localizedFailureReason];
    v13 = 136315650;
    v14 = "IsolatedCoreAudioClientBaseNSXPCConnection.mm";
    v15 = 1024;
    v16 = 51;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_255576000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d  Reason:\t\t%@", &v13, 0x1Cu);
  }

  v10 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [v2 localizedRecoverySuggestion];
    v13 = 136315650;
    v14 = "IsolatedCoreAudioClientBaseNSXPCConnection.mm";
    v15 = 1024;
    v16 = 52;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d  Suggestion:\t%@", &v13, 0x1Cu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id sIsolatedCoreAudioClientLog()
{
  v1 = 0x27F7B9000uLL;
  {
    v1 = 0x27F7B9000;
    if (v4)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v1 = 0x27F7B9000;
    }
  }

  v2 = *(v1 + 4040);

  return v2;
}

{
  v1 = 0x280FF3000uLL;
  {
    v1 = 0x280FF3000;
    if (v4)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v1 = 0x280FF3000;
    }
  }

  v2 = *(v1 + 2120);

  return v2;
}

{
  v1 = &micActivityFlag;
  {
    v1 = &micActivityFlag;
    if (v4)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v1 = &micActivityFlag;
    }
  }

  v2 = v1[7];

  return v2;
}

{
  v1 = &micActivityFlag;
  {
    v1 = &micActivityFlag;
    if (v4)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v1 = &micActivityFlag;
    }
  }

  v2 = v1[13];

  return v2;
}

{
  v1 = &micActivityFlag;
  {
    v1 = &micActivityFlag;
    if (v4)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v1 = &micActivityFlag;
    }
  }

  v2 = v1[51];

  return v2;
}

id __copy_helper_block_ea8_32c96_ZTSKZN42IsolatedCoreAudioClientBaseNSXPCConnection14makeConnectionENSt3__18functionIFvvEEEE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_25557B0C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void sub_25557B39C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id sIsolatedCoreAudioServerLog()
{
  v1 = 0x27F7B9000uLL;
  {
    v1 = 0x27F7B9000;
    if (v4)
    {
      sIsolatedCoreAudioServerLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioServer");
      v1 = 0x27F7B9000;
    }
  }

  v2 = *(v1 + 4056);

  return v2;
}

{
  v1 = &micActivityFlag;
  {
    v1 = &micActivityFlag;
    if (v4)
    {
      sIsolatedCoreAudioServerLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioServer");
      v1 = &micActivityFlag;
    }
  }

  v2 = v1[15];

  return v2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25557BA90(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(int)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_25557BC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void CreateIsolatedAudioServicePortal()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioServiceLauncher.mm";
    v5 = 1024;
    v6 = 22;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received CreateIsolatedAudioServicePortal request", buf, 0x12u);
  }

  if (atomic_load_explicit(&serviceFlag, memory_order_acquire) != -1)
  {
    *buf = &v2;
    v3 = buf;
    std::__call_once(&serviceFlag, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<CreateIsolatedAudioServicePortal::$_0 &&>>);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<CreateIsolatedAudioServicePortal::$_0 &&>>()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MGGetBoolAnswer();
  v1 = sIsolatedCoreAudioClientLog();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "IsolatedCoreAudioServiceLauncher.mm";
      v6 = 1024;
      v7 = 27;
      _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CreateIsolatedAudioServicePortal allocating portal", &v4, 0x12u);
    }

    operator new();
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "IsolatedCoreAudioServiceLauncher.mm";
    v6 = 1024;
    v7 = 32;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d CreateIsolatedAudioServicePortal unsupported", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_25557C0C4(_Unwind_Exception *a1)
{
  v5 = v4;

  MEMORY[0x259C39250](v1, v2);
  _Unwind_Resume(a1);
}

void CreateIsolatedAudioSiphonPortal()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioServiceLauncher.mm";
    v5 = 1024;
    v6 = 39;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received CreateIsolatedAudioSiphonPortal request", buf, 0x12u);
  }

  if (atomic_load_explicit(&siphonFlag, memory_order_acquire) != -1)
  {
    *buf = &v2;
    v3 = buf;
    std::__call_once(&siphonFlag, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<CreateIsolatedAudioSiphonPortal::$_0 &&>>);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<CreateIsolatedAudioSiphonPortal::$_0 &&>>()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MGGetBoolAnswer();
  v1 = sIsolatedCoreAudioClientLog();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "IsolatedCoreAudioServiceLauncher.mm";
      v6 = 1024;
      v7 = 44;
      _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CreateIsolatedAudioSiphonPortal allocating portal", &v4, 0x12u);
    }

    operator new();
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "IsolatedCoreAudioServiceLauncher.mm";
    v6 = 1024;
    v7 = 49;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d CreateIsolatedAudioSiphonPortal unsupported", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_25557C390(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C39250](v3, v1);
  _Unwind_Resume(a1);
}

void CreateMicrophoneActivityPortal()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioServiceLauncher.mm";
    v5 = 1024;
    v6 = 56;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received CreateMicrophoneActivityPortal request", buf, 0x12u);
  }

  if (atomic_load_explicit(&micActivityFlag, memory_order_acquire) != -1)
  {
    *buf = &v2;
    v3 = buf;
    std::__call_once(&micActivityFlag, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<CreateMicrophoneActivityPortal::$_0 &&>>);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<CreateMicrophoneActivityPortal::$_0 &&>>()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "IsolatedCoreAudioServiceLauncher.mm";
    v3 = 1024;
    v4 = 61;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CreateMicrophoneActivityPortal allocating portal", &v1, 0x12u);
  }

  operator new();
}

void CreateHistoricalAudioPortal()
{
  v7 = *MEMORY[0x277D85DE8];
  {
    sIsolatedCoreAudioMicActivityLog(void)::sLog = os_log_create("com.apple.coreaudio", "sIsolatedCoreAudioMicActivity");
  }

  v0 = sIsolatedCoreAudioMicActivityLog(void)::sLog;
  if (os_log_type_enabled(sIsolatedCoreAudioMicActivityLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioServiceLauncher.mm";
    v5 = 1024;
    v6 = 73;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received CreateHistoricalAudioPortal request", buf, 0x12u);
  }

  if (atomic_load_explicit(&historicalAudioFlag, memory_order_acquire) != -1)
  {
    *buf = &v2;
    v3 = buf;
    std::__call_once(&historicalAudioFlag, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<CreateHistoricalAudioPortal::$_0 &&>>);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<CreateHistoricalAudioPortal::$_0 &&>>()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = MGGetBoolAnswer();
  v1 = sIsolatedCoreAudioClientLog();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "IsolatedCoreAudioServiceLauncher.mm";
      v6 = 1024;
      v7 = 78;
      _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CreateIsolatedAudioSiphonPortal allocating portal", &v4, 0x12u);
    }

    operator new();
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "IsolatedCoreAudioServiceLauncher.mm";
    v6 = 1024;
    v7 = 83;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d CreateIsolatedAudioSiphonPortal unsupported", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_25557C9E4(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x259C39250](v3, v1);
  _Unwind_Resume(a1);
}

void AudioClient::stop(AudioClient *this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (atomic_exchange(this + 74, 1u))
  {
    v2 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "AudioClient.cpp";
      *&block[12] = 1024;
      *&block[14] = 127;
      v3 = "%25s:%-5d AudioClient::stop - The client has tried to stop IO, but IO is already being started or stopped by the client.";
      v4 = v2;
      v5 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_255576000, v4, v5, v3, block, 0x12u);
    }
  }

  else
  {
    v6 = atomic_load(this + 73);
    if (v6)
    {
      (*(**(this + 5) + 56))(*(this + 5));
      v7 = *(this + 8);
      *block = MEMORY[0x277D85DD0];
      *&block[8] = 0x40000000;
      *&block[16] = ___ZN10applesauce8dispatch2v19sync_implIZN11AudioClient11guardedStopEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
      v12 = &__block_descriptor_tmp_168;
      v13 = &v10;
      dispatch_sync(v7, block);
      atomic_store(0, this + 73);
    }

    else
    {
      v8 = sIsolatedCoreAudioClientLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *block = 136315394;
        *&block[4] = "AudioClient.cpp";
        *&block[12] = 1024;
        *&block[14] = 196;
        v3 = "%25s:%-5d AudioClient::stop - The client has tried to stop IO, but IO is not running.";
        v4 = v8;
        v5 = OS_LOG_TYPE_DEBUG;
        goto LABEL_8;
      }
    }
  }

  atomic_store(0, this + 74);
  v9 = *MEMORY[0x277D85DE8];
}

std::once_flag::_State_type sIsolatedCoreAudioClientLog()
{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v0 = &micActivityFlag;
    }
  }

  return v0[5];
}

{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v0 = &micActivityFlag;
    }
  }

  return v0[29];
}

{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioClientLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioClient");
      v0 = &micActivityFlag;
    }
  }

  return v0[43];
}

uint64_t AudioClient::startAtTime(AudioClient *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (atomic_exchange(this + 74, 1u))
  {
    v2 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioClient.cpp";
      v11 = 1024;
      v12 = 104;
      v3 = "%25s:%-5d AudioClient::startAtTime - The client has tried to start IO, but IO is already being started or stopped by the client.";
LABEL_7:
      _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, v3, &v9, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v4 = atomic_load(this + 73);
  if (v4)
  {
    v2 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioClient.cpp";
      v11 = 1024;
      v12 = 180;
      v3 = "%25s:%-5d AudioClient::startAtTime - The client has tried to start IO, but client IO is already running.";
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  atomic_store(1u, this + 72);
  v5 = (*(**(this + 5) + 48))(*(this + 5));
  if (v5)
  {
    v8 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioClient.cpp";
      v11 = 1024;
      v12 = 175;
      _os_log_impl(&dword_255576000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioClient::startAtTime - There was an error trying to start IO at the given time.", &v9, 0x12u);
    }
  }

  else
  {
    atomic_store(1u, this + 73);
  }

LABEL_9:
  atomic_store(0, this + 74);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AudioClient::start(AudioClient *this)
{
  v13 = *MEMORY[0x277D85DE8];
  if (atomic_exchange(this + 74, 1u))
  {
    v2 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioClient.cpp";
      v11 = 1024;
      v12 = 79;
      v3 = "%25s:%-5d AudioClient::start - The client has tried to start IO, but IO is already being started or stopped by the client.";
LABEL_7:
      _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, v3, &v9, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v4 = atomic_load(this + 73);
  if (v4)
  {
    v2 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioClient.cpp";
      v11 = 1024;
      v12 = 156;
      v3 = "%25s:%-5d AudioClient::start - The client has tried to start IO, but client IO is already running.";
      goto LABEL_7;
    }

LABEL_8:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  atomic_store(1u, this + 72);
  v5 = (*(**(this + 5) + 40))(*(this + 5));
  if (v5)
  {
    v8 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AudioClient.cpp";
      v11 = 1024;
      v12 = 151;
      _os_log_impl(&dword_255576000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioClient::start - There was an error trying to start IO.", &v9, 0x12u);
    }
  }

  else
  {
    atomic_store(1u, this + 73);
  }

LABEL_9:
  atomic_store(0, this + 74);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AudioClient::setLapseCallback(AudioClient *this, void (*a2)(int, void *), void *a3)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *(this + 3) = a2;
  *(this + 4) = a3;
  v3 = *(this + 5);
  v6[0] = &unk_2867758E8;
  v6[1] = this;
  v6[3] = v6;
  (*(*v3 + 32))(v3, v6);
  result = std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25557D24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AudioClient::setLapseCallback(void (*)(int,void *),void *)::$_0,std::allocator<AudioClient::setLapseCallback(void (*)(int,void *),void *)::$_0>,void ()(LapseChain)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN11AudioClient16setLapseCallbackEPFviPvES0_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AudioClient::setLapseCallback(void (*)(int,void *),void *)::$_0,std::allocator<AudioClient::setLapseCallback(void (*)(int,void *),void *)::$_0>,void ()(LapseChain)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  result = (*(v2 + 24))(*a2, *(v2 + 16));
  atomic_store(0, (v2 + 73));
  return result;
}

uint64_t std::__function::__func<AudioClient::setLapseCallback(void (*)(int,void *),void *)::$_0,std::allocator<AudioClient::setLapseCallback(void (*)(int,void *),void *)::$_0>,void ()(LapseChain)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867758E8;
  a2[1] = v2;
  return result;
}

uint64_t AudioClient::setAsyncIOCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  a1[1] = a2;
  a1[2] = a3;
  v7[0] = &unk_286775868;
  v7[1] = a1;
  v7[3] = v7;
  v3 = a1[5];
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::__value_func[abi:ne200100](v6, v7);
  (*(*v3 + 16))(v3, v6);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](v6);
  result = std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25557D4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0,std::allocator<AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0>,void ()(CoreAudioTimestamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN11AudioClient18setAsyncIOCallbackEPFv18CoreAudioTimestampPvES1_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0,std::allocator<AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0>,void ()(CoreAudioTimestamp)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *(a1 + 8);
  v5 = atomic_load((v4 + 72));
  if (v5)
  {
    (*(**(v4 + 48) + 48))(*(v4 + 48), a2[1]);
    atomic_store(0, (v4 + 72));
  }

  result = (*(**(v4 + 48) + 24))(*(v4 + 48));
  if (*(v4 + 8))
  {
    v7 = *(v4 + 64);
    operator new();
  }

  return result;
}

void applesauce::dispatch::v1::async<AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0::operator() const(CoreAudioTimestamp)::{lambda(void)#1}>(dispatch_queue_s *,AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0::operator() const(CoreAudioTimestamp)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(void *a1)
{
  (*(*a1 + 8))(a1[1], a1[2], *(*a1 + 16));

  JUMPOUT(0x259C39250);
}

uint64_t std::__function::__func<AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0,std::allocator<AudioClient::setAsyncIOCallback(void (*)(CoreAudioTimestamp,void *),void *)::$_0>,void ()(CoreAudioTimestamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286775868;
  a2[1] = v2;
  return result;
}

void AudioClient::~AudioClient(AudioClient *this)
{
  AudioClient::~AudioClient(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286775800;
  (*(**(this + 5) + 24))(*(this + 5));
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

uint64_t AudioClient::AudioClient(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_286775800;
  *(a1 + 8) = 0;
  v5 = *a2;
  *a2 = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  v6 = dispatch_queue_create("com.apple.audio.isolatedcoreaudio.asyncio", 0);
  *(a1 + 64) = v6;
  global_queue = dispatch_get_global_queue(2, 0);
  dispatch_set_target_queue(v6, global_queue);
  return a1;
}

uint64_t XPCConnectionToServer::tellServerToStopIO(XPCConnectionToServer *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v1 = *(*(this + 2) + 32);
  v2 = *(this + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN21XPCConnectionToServer18tellServerToStopIOEv_block_invoke;
  v5[3] = &unk_2797ED430;
  v5[4] = &v6;
  [v1 stopIsolatedAudioForUseCase:v2 with:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_25557D998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t XPCConnectionToServer::tellServerToStartIOAtTime(XPCConnectionToServer *this, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v2 = *(*(this + 2) + 32);
  v3 = *(this + 2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN21XPCConnectionToServer25tellServerToStartIOAtTimeEy_block_invoke;
  v6[3] = &unk_2797ED430;
  v6[4] = &v7;
  [v2 startIsolatedAudioForUseCase:v3 atTime:a2 with:v6];
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_25557DA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t XPCConnectionToServer::tellServerToStartIO(XPCConnectionToServer *this)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v1 = *(*(this + 2) + 32);
  v2 = *(this + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___ZN21XPCConnectionToServer19tellServerToStartIOEv_block_invoke;
  v5[3] = &unk_2797ED430;
  v5[4] = &v6;
  [v1 startIsolatedAudioForUseCase:v2 with:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_25557DB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void XPCConnectionToServer::getWorkgroupFromServer(XPCConnectionToServer *this@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4012000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__3;
  v12 = &unk_25559C825;
  v13 = 0;
  v14 = 0;
  v3 = *(*(this + 2) + 32);
  v4 = *(this + 2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN21XPCConnectionToServer22getWorkgroupFromServerEv_block_invoke;
  v6[3] = &unk_2797ED388;
  v6[4] = &v7;
  [v3 getWorkgroupForIsolatedAudio:v4 with:v6];
  v5 = v8[7];
  *a2 = v8[6];
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v7, 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_25557DC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a15, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__2(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN21XPCConnectionToServer22getWorkgroupFromServerEv_block_invoke(uint64_t a1, void *a2)
{
  [a2 getWorkgroup];
  caulk::mach::os_object<OS_os_workgroup * {__strong}>::get(*(v2 + 8));
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_25557DDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);

  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<IOThreadWorkgroup>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_emplace<IOThreadWorkgroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286775FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void XPCConnectionToServer::releaseSharedIOThreadResourcesFromServer(XPCConnectionToServer *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "XPCConnectionToServer.mm";
    v7 = 1024;
    v8 = 49;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPCConnectionToServer::releaseSharedIOThreadResourcesFromServer - before call", &v5, 0x12u);
  }

  [*(*(this + 2) + 32) checkOutForIsolatedAudioSharedResources:*(this + 2)];
  v3 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "XPCConnectionToServer.mm";
    v7 = 1024;
    v8 = 51;
    _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPCConnectionToServer::releaseSharedIOThreadResourcesFromServer - after call", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void XPCConnectionToServer::acquireSharedIOThreadResourcesFromServer(XPCConnectionToServer *this@<X0>, uint64_t a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "XPCConnectionToServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 35;
    _os_log_impl(&dword_255576000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPCConnectionToServer::acquireSharedIOThreadResourcesFromServer - before call", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4812000000;
  v16 = __Block_byref_object_copy__195;
  v17 = __Block_byref_object_dispose__196;
  v18 = &unk_25559C825;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v5 = *(*(this + 2) + 32);
  v6 = *(this + 2);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___ZN21XPCConnectionToServer40acquireSharedIOThreadResourcesFromServerEv_block_invoke;
  v10[3] = &unk_2797ED360;
  v10[4] = buf;
  [v5 checkInForIsolatedAudioSharedResources:v6 with:v10];
  v7 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 136315394;
    v12 = "XPCConnectionToServer.mm";
    v13 = 1024;
    v14 = 42;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPCConnectionToServer::acquireSharedIOThreadResourcesFromServer - after call", v11, 0x12u);
  }

  v8 = *&buf[8];
  *a2 = *(*&buf[8] + 48);
  *(a2 + 16) = *(v8 + 64);
  _Block_object_dispose(buf, 8);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_25557E274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__195(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

void ___ZN21XPCConnectionToServer40acquireSharedIOThreadResourcesFromServerEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "XPCConnectionToServer.mm";
    v14 = 1024;
    v15 = 38;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPCConnectionToServer::acquireSharedIOThreadResourcesFromServer - in reply call", &v12, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 48) = [v5 getSemaphores];
  v8 = [v6 getMappedMemory];
  v9 = *(*(a1 + 32) + 8);
  *(v9 + 56) = v8;
  *(v9 + 64) = v10;

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t XPCConnectionToServer::makeConnectionToServer(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "XPCConnectionToServer.mm";
    v11 = 1024;
    v12 = 27;
    _os_log_impl(&dword_255576000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d XPCConnectionToServer::makeXPCConnectionToServer Received CreateIsolatedAudioServicePortal request", buf, 0x12u);
  }

  v5 = *(a1 + 16);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v8, a2);
  IsolatedCoreAudioClientBaseNSXPCConnection::makeConnection(v5, v8);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void XPCConnectionToServer::~XPCConnectionToServer(XPCConnectionToServer *this)
{
  *this = &unk_286775980;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286775980;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<IsolatedCoreAudioXPCServerProtocolConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867759F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void XPCConnectionToServer::XPCConnectionToServer(XPCConnectionToServer *this, int a2)
{
  *this = &unk_286775980;
  *(this + 2) = a2;
  operator new();
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_1,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_1>,void ()(LapseChain)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN34IsolatedCoreAudioClientMultiplexer19createSharedIOProcsENSt3__18functionIFv18CoreAudioTimestampEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_1,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_1>,void ()(LapseChain)>::operator()(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v14 = "IsolatedCoreAudioClientMultiplexer.cpp";
    v15 = 1024;
    v16 = 33;
    v17 = 1024;
    v18 = v2;
    _os_log_impl(&dword_255576000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientMultiplexer:: IO has lapsed with status %d", buf, 0x18u);
  }

  if ((v2 & 0x100000000) != 0)
  {
    v5 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "IsolatedCoreAudioClientMultiplexer.cpp";
      v15 = 1024;
      v16 = 40;
      _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d IsolatedCoreAudioClientMultiplexer:: IO lapsed during rendezvous.", buf, 0x12u);
    }

    std::__shared_mutex_base::lock((v3 + 96));
    *(v3 + 24) = 0;
    v6 = *(v3 + 8);
    v7 = *(v6 + 16);
    if (v7)
    {
      do
      {
        SiphonClientMap::disableAvailabilityCallbacksForClient(*(v3 + 8), *(v7 + 4));
        v7 = *v7;
      }

      while (v7);
      v6 = *(v3 + 8);
      v8 = *(v6 + 16);
      if (v8)
      {
        do
        {
          v9 = *v8[3];
          v10 = atomic_load((v9 + 65));
          if (v10)
          {
            std::function<void ()(int)>::operator()(*(v9 + 56), v2);
          }

          v8 = *v8;
        }

        while (v8);
        v6 = *(v3 + 8);
      }
    }

    for (i = (v6 + 16); ; SiphonClientMap::disableLapseHandlingForClient(*(v3 + 8), *(i + 4)))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    std::__shared_mutex_base::unlock((v3 + 96));
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_25557E9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25557E9FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

std::once_flag::_State_type sIsolatedCoreAudioSiphonLog(void)
{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioSiphonLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioSiphon");
      v0 = &micActivityFlag;
    }
  }

  return v0[9];
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_1,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_1>,void ()(LapseChain)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286775AC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0>,void ()(CoreAudioTimestamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN34IsolatedCoreAudioClientMultiplexer19createSharedIOProcsENSt3__18functionIFv18CoreAudioTimestampEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0>,void ()(CoreAudioTimestamp)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  result = std::function<void ()(CoreAudioTimestamp)>::operator()(*(a1 + 40), *a2, a2[1]);
  for (i = *(*(v2 + 8) + 16); i; i = *i)
  {
    v5 = *i[3];
    v6 = atomic_load((v5 + 64));
    if (v6)
    {
      v7 = *(v5 + 72);
      operator new();
    }
  }

  return result;
}

void std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0>,void ()(CoreAudioTimestamp)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0>,void ()(CoreAudioTimestamp)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_286775A40;
  a2[1] = v2;
  return std::__function::__value_func<void ()(CoreAudioTimestamp)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0>,void ()(CoreAudioTimestamp)>::~__func(void *a1)
{
  *a1 = &unk_286775A40;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x259C39250);
}

void *std::__function::__func<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0,std::allocator<IsolatedCoreAudioClientMultiplexer::createSharedIOProcs(std::function<void ()(CoreAudioTimestamp)>)::$_0>,void ()(CoreAudioTimestamp)>::~__func(void *a1)
{
  *a1 = &unk_286775A40;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void IsolatedCoreAudioClientMultiplexer::IsolatedCoreAudioClientMultiplexer(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  *a2 = 0;
  *a1 = v7;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 850045863;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  std::__shared_mutex_base::__shared_mutex_base((a1 + 96));
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::__value_func[abi:ne200100](v8, a5);
  v8[12] = a1;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::__value_func[abi:ne200100](v9, v8);
  operator new();
}

void sub_25557EFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](v15 - 72);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](&a9);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100]((v13 + 33));
  std::shared_mutex::~shared_mutex[abi:ne200100](&v14[1]);
  std::mutex::~mutex(v14);
  v17 = v13[2];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *v13;
  *v13 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ReverseSiphonProxyObjcWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286775B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t RegisterForIsolatedAudio(int a1)
{
  result = MGGetBoolAnswer();
  if (result)
  {
    getClient(a1);
    v3 = *(*getClient::sClient + 16);

    return v3();
  }

  return result;
}

uint64_t SetAudioLapseHandler()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    getClient(0);
    v1 = *(*getClient::sClient + 24);

    return v1();
  }

  return result;
}

uint64_t StartIsolatedAudio()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    getClient(0);
    v1 = *(*getClient::sClient + 40);

    return v1();
  }

  return result;
}

uint64_t StartIsolatedAudioAtTime()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    getClient(0);
    v1 = *(*getClient::sClient + 48);

    return v1();
  }

  return result;
}

uint64_t StopIsolatedAudio()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    getClient(0);
    v1 = *(*getClient::sClient + 56);

    return v1();
  }

  return result;
}

uint64_t RequestIsolatedAudio()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    getClient(0);
    v1 = *(*getClient::sClient + 32);

    return v1();
  }

  return result;
}

void IOThreadSynchronizer::~IOThreadSynchronizer(IOThreadSynchronizer *this)
{
  IOThreadSynchronizer::~IOThreadSynchronizer(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286775B90;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t caulk::expected<BOOL,int>::value(uint64_t result)
{
  if (*(result + 4) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_286775D20;
    exception[2] = v3;
  }

  return result;
}

void caulk::bad_expected_access<int>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x259C39250);
}

uint64_t IOThreadSynchronizer::signalAndWait(IOThreadSynchronizer *this, double a2, caulk::mach::semaphore *a3)
{
  v3 = caulk::mach::semaphore::timed_wait_signal_or_error(a3, this, a2);
  v5 = v3;
  v6 = BYTE4(v3);
  if ((v3 & 0x100000000) != 0)
  {
    caulk::expected<BOOL,int>::value(&v5);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 49;
    }
  }

  return v3;
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

uint64_t *std::unique_ptr<IOThread>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (atomic_load(v2))
    {
      atomic_store(1u, (v2 + 4));
      if (!pthread_join(*(v2 + 8), 0))
      {
        *(v2 + 8) = 0;
        atomic_exchange(v2, 0);
      }
    }

    if (*(v2 + 167) < 0)
    {
      operator delete(*(v2 + 144));
    }

    std::__function::__value_func<long long ()(long long)>::~__value_func[abi:ne200100](v2 + 112);
    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v2 + 80);
    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v2 + 48);
    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v2 + 16);

    JUMPOUT(0x259C39250);
  }

  return result;
}

uint64_t *std::unique_ptr<IOThreadWork>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<long long ()(long long)>::~__value_func[abi:ne200100](v2 + 96);
    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v2 + 64);
    std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v2 + 32);
    v3 = std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x259C39250](v3, 0x1020C401881D8D8);
  }

  return a1;
}

IOThreadSynchronizer *std::unique_ptr<ClientIOThreadResources>::reset[abi:ne200100](IOThreadSynchronizer **a1, IOThreadSynchronizer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IOThreadSynchronizer::~IOThreadSynchronizer(result);

    JUMPOUT(0x259C39250);
  }

  return result;
}

uint64_t std::__function::__value_func<long long ()(long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t ___ZN12IOThreadWorkC2Ev_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<long long({block_pointer} {__strong})(long long),std::allocator<long long({block_pointer} {__strong})(long long)>,long long ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255594800))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<long long({block_pointer} {__strong})(long long),std::allocator<long long({block_pointer} {__strong})(long long)>,long long ()(long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<long long({block_pointer} {__strong})(long long),std::allocator<long long({block_pointer} {__strong})(long long)>,long long ()(long long)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286775C60;
  result = MEMORY[0x259C39540](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<long long({block_pointer} {__strong})(long long),std::allocator<long long({block_pointer} {__strong})(long long)>,long long ()(long long)>::~__func(uint64_t a1)
{

  JUMPOUT(0x259C39250);
}

uint64_t std::__function::__func<long long({block_pointer} {__strong})(void),std::allocator<long long({block_pointer} {__strong})(void)>,long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255594777))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<long long({block_pointer} {__strong})(void),std::allocator<long long({block_pointer} {__strong})(void)>,long long ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<long long({block_pointer} {__strong})(void),std::allocator<long long({block_pointer} {__strong})(void)>,long long ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_286775BD0;
  result = MEMORY[0x259C39540](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<long long({block_pointer} {__strong})(void),std::allocator<long long({block_pointer} {__strong})(void)>,long long ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x259C39250);
}

void sub_25557FDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x259C39250](v17, 0x1000C4090D0E795);
  v19 = *(v15 + 64);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::unique_ptr<IOThread>::reset[abi:ne200100]((v15 + 48), 0);
  std::unique_ptr<IOThreadWork>::~unique_ptr[abi:ne200100]((v16 + 8));
  std::unique_ptr<ClientIOThreadResources>::reset[abi:ne200100](v16, 0);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

IOThreadSynchronizer *ClientSideAudioSwitchboardIOThread::stop(ClientSideAudioSwitchboardIOThread *this)
{
  atomic_store(1u, this + 81);
  v1 = this + 32;
  caulk::mach::semaphore::signal(*(*(this + 4) + 24));
  v2 = *(v1 + 2);
  atomic_store(1u, (v2 + 4));
  if (!pthread_join(*(v2 + 8), 0))
  {
    *(v2 + 8) = 0;
    atomic_exchange(v2, 0);
  }

  return std::unique_ptr<ClientIOThreadResources>::reset[abi:ne200100](v1, 0);
}

void *std::__function::__value_func<long long ()(void)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_255580228(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(LapseChain)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2>,long long ()(long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN34ClientSideAudioSwitchboardIOThread13spawnIOThreadEjNSt3__18functionIFv18CoreAudioTimestampEEENS1_IFv10LapseChainEEEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2>,long long ()(long long)>::operator()(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  if (*a2)
  {
    v3 = atomic_load((v2 + 80));
    *v15 = ((v3 & 1) << 32) | 0x68616C74;
    v4 = *(a1 + 40);
    if (!v4)
    {
      goto LABEL_17;
    }

    (*(*v4 + 48))(v4, v15);
  }

  v5 = **(v2 + 56);
  if (*(v5 + 1))
  {
    v6 = caulk::mach::os_workgroup_managed::leave(v5);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 29;
  }

  v7 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v15 = 136315650;
    *&v15[4] = "ClientSideAudioSwitchboardIOThread.mm";
    v16 = 1024;
    v17 = 151;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOTearDownFunction - Failed to leave the workgroup!!!! - %d", v15, 0x18u);
  }

LABEL_11:
  v8 = pthread_self();
  *v15 = 1;
  v9 = pthread_mach_thread_np(v8);
  v10 = thread_policy_set(v9, 1u, v15, 1u);
  if (v10)
  {
    v11 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315650;
      *&v15[4] = "ClientSideAudioSwitchboardIOThread.mm";
      v16 = 1024;
      v17 = 157;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&dword_255576000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOTearDownFunction - Failed to set the RT thread priority!!!! - %d", v15, 0x18u);
    }
  }

  v12 = *(v2 + 24);
  if (!v12)
  {
LABEL_17:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12);
  result = TranslateKernelError(v10);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TranslateKernelError(int a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a1 == 49)
    {
      v2 = sIsolatedCoreAudioClientLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "ClientSideAudioSwitchboardIOThread.mm";
        v10 = 1024;
        v11 = 68;
        v3 = "%25s:%-5d ClientSideAudioSwitchboardIOThread::TranslateKernelError - Semaphores timed out!!! Exiting the workloop";
        v4 = v2;
        v5 = 18;
LABEL_8:
        _os_log_impl(&dword_255576000, v4, OS_LOG_TYPE_ERROR, v3, &v8, v5);
      }
    }

    else
    {
      v2 = sIsolatedCoreAudioClientLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315650;
        v9 = "ClientSideAudioSwitchboardIOThread.mm";
        v10 = 1024;
        v11 = 72;
        v12 = 1024;
        v13 = a1;
        v3 = "%25s:%-5d ClientSideAudioSwitchboardIOThread::TranslateKernelError - General Semaphore Error - %d. Exiting the workloop";
        v4 = v2;
        v5 = 24;
        goto LABEL_8;
      }
    }

    result = 1;
    goto LABEL_10;
  }

  result = 0;
LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2>,long long ()(long long)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2>,long long ()(long long)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_286775E48;
  a2[1] = v2;
  return std::__function::__value_func<void ()(LapseChain)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2>,long long ()(long long)>::~__func(void *a1)
{
  *a1 = &unk_286775E48;
  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x259C39250);
}

void *std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_2>,long long ()(long long)>::~__func(void *a1)
{
  *a1 = &unk_286775E48;
  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1>,long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN34ClientSideAudioSwitchboardIOThread13spawnIOThreadEjNSt3__18functionIFv18CoreAudioTimestampEEENS1_IFv10LapseChainEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1>,long long ()(void)>::operator()(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v11 = 0;
  v12 = 0;
  v3 = *(v2 + 32);
  if (*(v3 + 56) >= 0x10uLL)
  {
    v4 = 16;
  }

  else
  {
    v4 = *(v3 + 56);
  }

  memcpy(&v11, *(v3 + 48), v4);
  std::function<void ()(CoreAudioTimestamp)>::operator()(*(a1 + 40), v11, v12);
  v5 = IOThreadSynchronizer::signalAndWait(*(*(v2 + 32) + 8), 0.5, *(*(v2 + 32) + 24));
  if (v5 == 49)
  {
    v6 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "ClientSideAudioSwitchboardIOThread.mm";
      v15 = 1024;
      v16 = 125;
      _os_log_impl(&dword_255576000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOMainWorkloopFunction - timed out waiting for signal from server.", buf, 0x12u);
    }
  }

  v7 = atomic_load((v2 + 81));
  if (v7)
  {
    v8 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "ClientSideAudioSwitchboardIOThread.mm";
      v15 = 1024;
      v16 = 130;
      _os_log_impl(&dword_255576000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOMainWorkloopFunction - heading for the egress.", buf, 0x12u);
    }

    atomic_store(0, (v2 + 81));
    result = 1;
  }

  else
  {
    result = TranslateKernelError(v5);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1>,long long ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1>,long long ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_286775DC8;
  a2[1] = v2;
  return std::__function::__value_func<void ()(CoreAudioTimestamp)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1>,long long ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286775DC8;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x259C39250);
}

void *std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_1>,long long ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286775DC8;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_0,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_0>,long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN34ClientSideAudioSwitchboardIOThread13spawnIOThreadEjNSt3__18functionIFv18CoreAudioTimestampEEENS1_IFv10LapseChainEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_0,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_0>,long long ()(void)>::operator()(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = pthread_self();
  if (v2 <= 0x4B2)
  {
    v4 = 1202;
  }

  else
  {
    v4 = v2;
  }

  LODWORD(v5) = v4 >> 1;
  if (v4 >> 1 <= 0x4B0)
  {
    LODWORD(v5) = 1200;
  }

  if (v5 >= 0x124F80)
  {
    v5 = 1200000;
  }

  else
  {
    v5 = v5;
  }

  *v19 = v4 | (v5 << 32);
  *&v19[8] = v4 | 0x100000000;
  v6 = pthread_mach_thread_np(v3);
  v7 = thread_policy_set(v6, 2u, v19, 4u);
  if (v7)
  {
    v8 = v7;
    v9 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315650;
      *&v19[4] = "ClientSideAudioSwitchboardIOThread.mm";
      *&v19[12] = 1024;
      *&v19[14] = 88;
      v20 = 1024;
      v21 = v8;
      _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOSetUpFunction - Failed to set the RT thread priority!!!! - %d", v19, 0x18u);
    }
  }

  v10 = **(v1 + 56);
  if (*(v10 + 1))
  {
    v11 = caulk::mach::os_workgroup_managed::join(v10);
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 29;
  }

  v12 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v19 = 136315650;
    *&v19[4] = "ClientSideAudioSwitchboardIOThread.mm";
    *&v19[12] = 1024;
    *&v19[14] = 94;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&dword_255576000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOSetUpFunction - Failed to join the workgroup!!!! - %d", v19, 0x18u);
  }

LABEL_20:
  v13 = caulk::mach::semaphore::timed_wait_or_error(*(*(v1 + 32) + 24), 4.0);
  v14 = v13;
  *v19 = v13;
  v19[4] = BYTE4(v13);
  if ((v13 & 0x100000000) != 0)
  {
    caulk::expected<BOOL,int>::value(v19);
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    caulk::mach::semaphore::signal(*(v1 + 72));
    v14 = 0;
    goto LABEL_31;
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  if (v13 != 49)
  {
    v15 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "ClientSideAudioSwitchboardIOThread.mm";
      *&v19[12] = 1024;
      *&v19[14] = 107;
      _os_log_impl(&dword_255576000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOSetUpFunction - unknown error occurred waiting for signal from server.", v19, 0x12u);
    }

    goto LABEL_31;
  }

LABEL_28:
  v16 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v19 = 136315394;
    *&v19[4] = "ClientSideAudioSwitchboardIOThread.mm";
    *&v19[12] = 1024;
    *&v19[14] = 103;
    _os_log_impl(&dword_255576000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ClientSideAudioSwitchboardIOThread::IOSetUpFunction - timed out waiting for signal from server.", v19, 0x12u);
  }

  v14 = 49;
LABEL_31:
  result = TranslateKernelError(v14);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_0,std::allocator<ClientSideAudioSwitchboardIOThread::spawnIOThread(unsigned int,std::function<void ()(CoreAudioTimestamp)>,std::function<void ()(LapseChain)>)::$_0>,long long ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286775D48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ClientLocalServer::kill(ClientLocalServer *this)
{
  atomic_store(0, this + 81);
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  result = *(this + 14);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void non-virtual thunk toClientLocalServer::~ClientLocalServer(ClientLocalServer *this)
{
  ClientLocalServer::~ClientLocalServer((this - 8));

  JUMPOUT(0x259C39250);
}

{
  ClientLocalServer::~ClientLocalServer((this - 8));
}

void ClientLocalServer::~ClientLocalServer(ClientLocalServer *this)
{
  *this = &unk_286775EC8;
  *(this + 1) = &unk_286775F30;
  ClientLocalServer::tellServerToStopIO(this);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  std::unique_ptr<std::thread>::reset[abi:ne200100](this + 9, 0);
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<ServerIOThreadResources>::reset[abi:ne200100](this + 7, 0);
  *(this + 1) = &unk_286775430;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 16);
}

{
  ClientLocalServer::~ClientLocalServer(this);

  JUMPOUT(0x259C39250);
}

uint64_t ClientLocalServer::tellServerToStopIO(ClientLocalServer *this)
{
  atomic_store(1u, this + 80);
  v2 = (this + 72);
  v1 = *(this + 9);
  if (v1)
  {
    std::thread::join(v1);
  }

  std::unique_ptr<std::thread>::reset[abi:ne200100](v2, 0);
  return 0;
}

std::thread *std::unique_ptr<std::thread>::reset[abi:ne200100](std::thread **a1, std::thread *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::thread::~thread(result);

    JUMPOUT(0x259C39250);
  }

  return result;
}

uint64_t *std::unique_ptr<ServerIOThreadResources>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    IOThreadServerMappedMemory::~IOThreadServerMappedMemory((v2 + 40));
    IOThreadSynchronizer::~IOThreadSynchronizer(v2);

    JUMPOUT(0x259C39250);
  }

  return result;
}

uint64_t ClientLocalServer::tellServerToStartIOAtTime(ClientLocalServer *this)
{
  v1 = atomic_load(this + 81);
  if (v1)
  {
    atomic_store(0, this + 80);
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_2555813B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  MEMORY[0x259C39250](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ClientLocalServer::tellServerToStartIOAtTime(unsigned long long)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x259C39250](v3, 0x1020C4062D53EE8);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x259C39130]();
    MEMORY[0x259C39250](v3, 0x20C4093837F09);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,ClientLocalServer::tellServerToStartIOAtTime(unsigned long long)::$_0>>(uint64_t *a1)
{
  v13 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v13[1];
  v5 = v13[2];
  v6 = atomic_load((v4 + 80));
  if ((v6 & 1) == 0)
  {
    do
    {
      v7 = atomic_load((v4 + 81));
      if ((v7 & 1) == 0)
      {
        break;
      }

      v8 = *(v4 + 56);
      if (*(v8 + 56) >= 0x10uLL)
      {
        v9 = *(v8 + 48);
        *v9 = v5;
        v9[1] = 0;
        v8 = *(v4 + 56);
      }

      v10 = atomic_load((v8 + 65));
      if ((v10 & 1) == 0)
      {
        IOThreadSynchronizer::signalAndWait(*(v8 + 8), 10.0, *(v8 + 24));
      }

      v11 = atomic_load((v4 + 80));
      ++v5;
    }

    while ((v11 & 1) == 0);
  }

  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ClientLocalServer::tellServerToStartIOAtTime(unsigned long long)::$_0>>::~unique_ptr[abi:ne200100](&v13);
  return 0;
}

void sub_255581540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,ClientLocalServer::tellServerToStartIOAtTime(unsigned long long)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_255581774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255581B1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255583710(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255583A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_255583D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v8 = v7;
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_255583E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ServerSideHardware>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void std::__shared_ptr_emplace<ServerSideAudioSwitchboard>::__on_zero_shared(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = v3[4];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = a1[3];
  a1[3] = 0;
  if (v6)
  {

    operator delete(v6);
  }
}

void std::__shared_ptr_emplace<ServerSideAudioSwitchboard>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void IOThreadClientSynchronizer::~IOThreadClientSynchronizer(IOThreadClientSynchronizer *this)
{
  IOThreadSynchronizer::~IOThreadSynchronizer(this);

  JUMPOUT(0x259C39250);
}

void sub_255584220(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<caulk::mach::semaphore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

BOOL HALUseCase::SetDeviceIDUsingUseCaseID(HALUseCase *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  inQualifierData = v2;
  v3 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "HALUseCase.cpp";
    v23 = 1024;
    v24 = 43;
    v25 = 1024;
    v26 = v2;
    _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HALUseCase::SetDeviceIDUsingUseCaseID looking for: %u", buf, 0x18u);
  }

  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"diuibolg";
  inAddress.mElement = 0;
  PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 4u, &inQualifierData, &ioDataSize, &outData);
  if (PropertyData)
  {
    v5.i32[0] = bswap32(PropertyData);
    v6 = vzip1_s8(v5, v5);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x5F0000005FLL;
    v8.i64[1] = 0x5F0000005FLL;
    v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
    v16 = 4;
    LODWORD(__p) = vuzp1_s8(v9, v9).u32[0];
    BYTE4(__p) = 0;
    v10 = sIsolatedCoreAudioServerLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "HALUseCase.cpp";
      v23 = 1024;
      v24 = 52;
      v25 = 1024;
      v26 = inQualifierData;
      v27 = 2080;
      p_p = &__p;
      _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d HALUseCase::SetDeviceIDUsingUseCaseID could not get device ID - looking for %u and received error: %s ", buf, 0x22u);
      if (v16 < 0)
      {
        operator delete(__p);
      }
    }
  }

  *(this + 44) = 0;
  if (outData != *(this + 10))
  {
    *(this + 10) = outData;
    *(this + 44) = 1;
  }

  v11 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(this + 10);
    *buf = 136315650;
    v22 = "HALUseCase.cpp";
    v23 = 1024;
    v24 = 61;
    v25 = 1024;
    v26 = v12;
    _os_log_impl(&dword_255576000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HALUseCase::SetDeviceIDUsingUseCaseID mDeviceID: %u", buf, 0x18u);
  }

  result = *(this + 10) != 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

std::once_flag::_State_type sIsolatedCoreAudioServerLog()
{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioServerLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioServer");
      v0 = &micActivityFlag;
    }
  }

  return v0[17];
}

{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioServerLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioServer");
      v0 = &micActivityFlag;
    }
  }

  return v0[47];
}

void HALUseCase::~HALUseCase(HALUseCase *this)
{
  HALUseCase::~HALUseCase(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_2867761A8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<CoreAudioCallback>::~unique_ptr[abi:ne200100](this + 2);
}

uint64_t *std::unique_ptr<CoreAudioCallback>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    MEMORY[0x259C39250](v2, 0x1020C40A5B76CDFLL);
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIN28Isolated_Legacy_IO_Procedure14clientCallbackMUl18CoreAudioTimestampE_ENS_9allocatorIS4_EEFvS3_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "N28Isolated_Legacy_IO_Procedure14clientCallbackMUl18CoreAudioTimestampE_E"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<Isolated_Legacy_IO_Procedure>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void IsolatedCoreAudioSiphonPortal::~IsolatedCoreAudioSiphonPortal(id *this)
{
  IsolatedCoreAudioXPCPortal::~IsolatedCoreAudioXPCPortal(this);

  JUMPOUT(0x259C39250);
}

void IsolatedCoreAudioSiphonPortal::IsolatedCoreAudioSiphonPortal(IsolatedCoreAudioSiphonPortal *this)
{
  v2 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.shareddspd"];
  v3 = objc_alloc_init(IsolatedCoreAudioXPCSiphon);
  IsolatedCoreAudioXPCPortal::IsolatedCoreAudioXPCPortal(this, v2, &v3->super);

  *this = &unk_286776368;
}

uint64_t std::expected<unsigned int,int>::value[abi:ne200100](uint64_t result)
{
  if ((*(result + 4) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2867763C8;
    exception[2] = v3;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::bad_expected_access<int>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x259C39250);
}

void HALBoilerplateImpl::CreateAggregateDevice(HALBoilerplateImpl *this@<X0>, uint64_t a2@<X8>)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v50 = 0;
  outDeviceID = 0;
  (*(*this + 32))(&__p);
  std::expected<unsigned int,int>::value[abi:ne200100](&__p);
  data_low = LODWORD(__p.__r_.__value_.__l.__data_);
  (*(*this + 16))(&__p, this, LODWORD(__p.__r_.__value_.__l.__data_));
  std::expected<std::string,int>::value[abi:ne200100](&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v46, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (LOBYTE(v53[0]) == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = __p;
  }

  (*(*this + 24))(&__p, this, data_low);
  std::expected<std::string,int>::value[abi:ne200100](&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (LOBYTE(v53[0]) == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v45 = __p;
  }

  applesauce::CF::TypeRef::TypeRef(&__p, "uid");
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v46;
  }

  else
  {
    v5 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  __p.__r_.__value_.__l.__size_ = CFStringCreateWithBytes(0, v5, size, 0x8000100u, 0);
  if (!__p.__r_.__value_.__l.__size_)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C390C0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::TypeRef::TypeRef(&__p.__r_.__value_.__r.__words[2], "name");
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v45;
  }

  else
  {
    v7 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = v45.__r_.__value_.__l.__size_;
  }

  v53[0] = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  if (!v53[0])
  {
    v37 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C390C0](v37, "Could not construct");
    __cxa_throw(v37, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  p_p = &__p;
  v43 = 2;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&p_p);
  v44 = CFDictionaryRef;
  v10 = v49;
  if (v49 >= v50)
  {
    v12 = v48;
    v13 = (v49 - v48) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<void const*>::__throw_length_error[abi:ne200100]();
    }

    v15 = v50 - v48;
    if ((v50 - v48) >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v16 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (8 * v13);
    v18 = &v17[-((v49 - v48) >> 3)];
    *v17 = CFDictionaryRef;
    v11 = v17 + 1;
    v44 = 0;
    if (v12 != v10)
    {
      v19 = v12;
      v20 = v18;
      do
      {
        *v20++ = *v19;
        *v19++ = 0;
      }

      while (v19 != v10);
      do
      {
        v21 = *v12++;
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v21);
      }

      while (v12 != v10);
      v12 = v48;
    }

    v48 = v18;
    v49 = v11;
    v50 = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v49 = CFDictionaryRef;
    v44 = 0;
    v11 = v10 + 1;
  }

  v22 = 0;
  v49 = v11;
  do
  {
    v23 = v53[v22];
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = __p.__r_.__value_.__r.__words[v22 + 2];
    if (v24)
    {
      CFRelease(v24);
    }

    v22 -= 2;
  }

  while (v22 != -4);
  applesauce::CF::TypeRef::TypeRef(&__p, "uid");
  applesauce::CF::TypeRef::TypeRef(&__p.__r_.__value_.__r.__words[1], "micactivityd-input-agg");
  applesauce::CF::TypeRef::TypeRef(&__p.__r_.__value_.__r.__words[2], "name");
  applesauce::CF::TypeRef::TypeRef(v53, "micactivityd input agg");
  applesauce::CF::TypeRef::TypeRef(&v54, "master");
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v46;
  }

  else
  {
    v25 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v46.__r_.__value_.__l.__size_;
  }

  if (!CFStringCreateWithBytes(0, v25, v26, 0x8000100u, 0))
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C390C0](v38, "Could not construct");
    __cxa_throw(v38, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v27 = v49 - v48;
  if (v49 != v48)
  {
    if (!((v27 >> 3) >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](v27 >> 3);
    }

    std::vector<void const*>::__throw_length_error[abi:ne200100]();
  }

  v28 = CFArrayCreate(0, 0, 0, MEMORY[0x277CBF128]);
  if (!v28)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C390C0](v39, "Could not construct");
    __cxa_throw(v39, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::TypeRef::TypeRef(v56, "subdevices");
  CFRetain(v28);
  v56[1] = v28;
  valuePtr = 1;
  cf = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  if (!cf)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x259C390C0](v40, "Could not construct");
    __cxa_throw(v40, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::TypeRef::TypeRef(v57, "private");
  CFRetain(cf);
  v58[0] = cf;
  p_p = &__p;
  v43 = 5;
  v29 = applesauce::CF::details::make_CFDictionaryRef(&p_p);
  v30 = 0;
  v44 = v29;
  do
  {
    v31 = v58[v30];
    if (v31)
    {
      CFRelease(v31);
    }

    v32 = *&v57[v30 * 8];
    if (v32)
    {
      CFRelease(v32);
    }

    v30 -= 2;
  }

  while (v30 != -10);
  CFRelease(cf);
  CFRelease(v28);
  v33 = AudioHardwareCreateAggregateDevice(v29, &outDeviceID);
  v34 = outDeviceID;
  if (v33)
  {
    v34 = v33;
  }

  *a2 = v34;
  *(a2 + 4) = v33 == 0;
  CFRelease(v29);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v48;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&__p);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_25558518C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40)
{
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(&a10);
  applesauce::CF::ArrayRef::~ArrayRef(&a11);
  while (v40 != &a34)
  {
    v40 = (v40 - 16);
    applesauce::CF::TypeRefPair::~TypeRefPair(v40);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  a34 = &a30;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a34);
  _Unwind_Resume(a1);
}

uint64_t std::expected<std::string,int>::value[abi:ne200100](uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    v3 = *v1;
    *exception = &unk_2867763C8;
    exception[2] = v3;
  }

  return result;
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
    MEMORY[0x259C390C0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_255585534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::NumberRef::~NumberRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
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

unint64_t HALBoilerplateImpl::UnregisterMTDStateListener(HALBoilerplateImpl *this, AudioObjectID inObjectID)
{
  v4.mElement = 0;
  *&v4.mSelector = *"SdAvtpni";
  v2 = AudioObjectRemovePropertyListener(inObjectID, &v4, HALBoilerplateImpl::MTDStateListener, 0);
  return v2 | ((v2 != 0) << 32);
}

uint64_t HALBoilerplateImpl::MTDStateListener(HALBoilerplateImpl *this, int a2, _DWORD *a3, const AudioObjectPropertyAddress *a4, void *a5)
{
  if (a2)
  {
    v6 = a3;
    v8 = &a3[3 * a2];
    do
    {
      if (*v6 == 1983997011)
      {
        (*(*&a4->mSelector + 56))(&v10, a4, this);
        std::function<void ()(BOOL)>::operator()(*(*&a4->mElement + 24), BYTE4(v10) & v10 & 1);
      }

      v6 += 3;
    }

    while (v6 < v8);
  }

  return 0;
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

unint64_t HALBoilerplateImpl::RegisterMTDStateListener(void *inClientData, AudioObjectID inObjectID, uint64_t a3)
{
  v5.mElement = 0;
  *&v5.mSelector = *"SdAvtpni";
  inClientData[1] = a3;
  v3 = AudioObjectAddPropertyListener(inObjectID, &v5, HALBoilerplateImpl::MTDStateListener, inClientData);
  return v3 | ((v3 != 0) << 32);
}

unint64_t HALBoilerplateImpl::DisableProcessMute(HALBoilerplateImpl *this, HALBoilerplateImpl *a2, uint64_t a3, unsigned int *a4)
{
  v7.mElement = 0;
  *&v7.mSelector = *"mppatpni";
  v6 = 1;
  v4 = HALBoilerplateImpl::SetProperty<unsigned int>(a2, &v7, &v6, a4);
  return v4 | ((v4 != 0) << 32);
}

uint64_t HALBoilerplateImpl::SetProperty<unsigned int>(HALBoilerplateImpl *a1, const AudioObjectPropertyAddress *a2, const void *a3, unsigned int *a4)
{
  v6 = a1;
  v8.mSelector = 0;
  result = HALBoilerplateImpl::GetPropertyDataSize(a1, a2, &v8, a4);
  if (!result && v8.mSelector == 4)
  {
    return AudioObjectSetPropertyData(v6, a2, 0, 0, 4u, a3);
  }

  return result;
}

uint64_t HALBoilerplateImpl::GetPropertyDataSize(HALBoilerplateImpl *this, const AudioObjectPropertyAddress *a2, const AudioObjectPropertyAddress *a3, unsigned int *a4)
{
  v6 = this;
  if (!AudioObjectHasProperty(this, a2))
  {
    return 2003332927;
  }

  return AudioObjectGetPropertyDataSize(v6, a2, 0, 0, &a3->mSelector);
}

unint64_t HALBoilerplateImpl::EnableProcessMute(HALBoilerplateImpl *this, HALBoilerplateImpl *a2, uint64_t a3, unsigned int *a4)
{
  v7.mElement = 0;
  *&v7.mSelector = *"mppatpni";
  v6 = 1;
  v4 = HALBoilerplateImpl::SetProperty<unsigned int>(a2, &v7, &v6, a4);
  return v4 | ((v4 != 0) << 32);
}

unint64_t HALBoilerplateImpl::DisableMTD(HALBoilerplateImpl *this, HALBoilerplateImpl *a2, uint64_t a3, unsigned int *a4)
{
  v7.mElement = 0;
  *&v7.mSelector = *"+dAvtpni";
  v6 = 0;
  v4 = HALBoilerplateImpl::SetProperty<unsigned int>(a2, &v7, &v6, a4);
  return v4 | ((v4 != 0) << 32);
}

unint64_t HALBoilerplateImpl::EnableMTD(HALBoilerplateImpl *this, HALBoilerplateImpl *a2, uint64_t a3, unsigned int *a4)
{
  v7.mElement = 0;
  *&v7.mSelector = *"+dAvtpni";
  v6 = 1;
  v4 = HALBoilerplateImpl::SetProperty<unsigned int>(a2, &v7, &v6, a4);
  return v4 | ((v4 != 0) << 32);
}

uint64_t HALBoilerplateImpl::IsMicActivityDetected@<X0>(HALBoilerplateImpl *a1@<X1>, unsigned int *a2@<X3>, uint64_t a3@<X8>)
{
  v8.mElement = 0;
  *&v8.mSelector = *"SdAvtpni";
  v7 = 0;
  result = HALBoilerplateImpl::GetProperty<unsigned int>(a1, &v8, &v7, a2);
  if (result)
  {
    v6 = 0;
    *a3 = result;
  }

  else
  {
    *a3 = v7 != 0;
    v6 = 1;
  }

  *(a3 + 4) = v6;
  return result;
}

uint64_t HALBoilerplateImpl::GetProperty<unsigned int>(HALBoilerplateImpl *a1, const AudioObjectPropertyAddress *a2, void *a3, unsigned int *a4)
{
  v6 = a1;
  ioDataSize.mSelector = 0;
  result = HALBoilerplateImpl::GetPropertyDataSize(a1, a2, &ioDataSize, a4);
  if (!result && ioDataSize.mSelector == 4)
  {
    return AudioObjectGetPropertyData(v6, a2, 0, 0, &ioDataSize.mSelector, a3);
  }

  return result;
}

uint64_t HALBoilerplateImpl::IsProcessMuted@<X0>(HALBoilerplateImpl *a1@<X1>, unsigned int *a2@<X3>, uint64_t a3@<X8>)
{
  v8.mElement = 0;
  *&v8.mSelector = *"mppatpni";
  v7 = 0;
  result = HALBoilerplateImpl::GetProperty<unsigned int>(a1, &v8, &v7, a2);
  if (result)
  {
    v6 = 0;
    *a3 = result;
  }

  else
  {
    *a3 = v7 != 0;
    v6 = 1;
  }

  *(a3 + 4) = v6;
  return result;
}

uint64_t HALBoilerplateImpl::IsMTDEnabled@<X0>(HALBoilerplateImpl *a1@<X1>, unsigned int *a2@<X3>, uint64_t a3@<X8>)
{
  v8.mElement = 0;
  *&v8.mSelector = *"+dAvtpni";
  v7 = 0;
  result = HALBoilerplateImpl::GetProperty<unsigned int>(a1, &v8, &v7, a2);
  if (result)
  {
    v6 = 0;
    *a3 = result;
  }

  else
  {
    *a3 = v7 != 0;
    v6 = 1;
  }

  *(a3 + 4) = v6;
  return result;
}

uint64_t HALBoilerplateImpl::GetDefaultInput@<X0>(unsigned int *a1@<X3>, uint64_t a2@<X8>)
{
  v7.mElement = 0;
  *&v7.mSelector = *" nIdbolg";
  v6 = 0;
  result = HALBoilerplateImpl::GetProperty<unsigned int>(1, &v7, &v6, a1);
  v5 = v6;
  if (result)
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 4) = result == 0;
  return result;
}

void HALBoilerplateImpl::GetDeviceName(HALBoilerplateImpl *a1@<X1>, unsigned int *a2@<X3>, HALBoilerplateImpl *a3@<X8>)
{
  cf = 0;
  *&v7.mSelector = 0x2A2A2A2A6C6E616DLL;
  v7.mElement = -1;
  v5 = HALBoilerplateImpl::GetProperty<applesauce::CF::StringRef>(a1, &v7, &cf, a2);
  if (v5)
  {
    *a3 = v5;
    *(a3 + 24) = 0;
  }

  else
  {
    HALBoilerplateImpl::StringRefToString(a3, cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_255585D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t HALBoilerplateImpl::GetProperty<applesauce::CF::StringRef>(HALBoilerplateImpl *a1, const AudioObjectPropertyAddress *a2, void *a3, unsigned int *a4)
{
  v6 = a1;
  ioDataSize.mSelector = 0;
  result = HALBoilerplateImpl::GetPropertyDataSize(a1, a2, &ioDataSize, a4);
  if (!result && ioDataSize.mSelector == 8)
  {
    return AudioObjectGetPropertyData(v6, a2, 0, 0, &ioDataSize.mSelector, a3);
  }

  return result;
}

char *HALBoilerplateImpl::StringRefToString(HALBoilerplateImpl *this, CFStringRef theString)
{
  result = CFStringGetCStringPtr(theString, 0x8000100u);
  if (result)
  {
    result = std::string::basic_string[abi:ne200100]<0>(this, result);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *this = 0;
  }

  *(this + 24) = v4;
  return result;
}

void HALBoilerplateImpl::GetDeviceUID(HALBoilerplateImpl *a1@<X1>, unsigned int *a2@<X3>, HALBoilerplateImpl *a3@<X8>)
{
  cf = 0;
  *&v7.mSelector = 0x2A2A2A2A75696420;
  v7.mElement = -1;
  v5 = HALBoilerplateImpl::GetProperty<applesauce::CF::StringRef>(a1, &v7, &cf, a2);
  if (v5)
  {
    *a3 = v5;
    *(a3 + 24) = 0;
  }

  else
  {
    HALBoilerplateImpl::StringRefToString(a3, cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_255585ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALBoilerplateImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t HALTestImpl::IsMicActivityDetected@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *(this + 9);
  a2[4] = 1;
  return this;
}

_BYTE *HALTestImpl::GetDeviceName@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  result = a2;
  if (a1 == 8)
  {
    result = std::string::basic_string[abi:ne200100]<0>(a2, "DefaultInput");
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *result = 0;
  }

  result[24] = v4;
  return result;
}

_BYTE *HALTestImpl::GetDeviceUID@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  result = a2;
  if (a1 == 8)
  {
    result = std::string::basic_string[abi:ne200100]<0>(a2, "DefaultInputUUID");
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *result = 0;
  }

  result[24] = v4;
  return result;
}

void std::__shared_ptr_emplace<HALTestImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t _ZNKSt3__110__function6__funcIN14MADMultiplexer29mMTDStateMultiplexingCallbackMUlbE_ENS_9allocatorIS3_EEFvbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "N14MADMultiplexer29mMTDStateMultiplexingCallbackMUlbE_E"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIN14MADMultiplexer29mMTDStateMultiplexingCallbackMUlbE_ENS_9allocatorIS3_EEFvbEE7__cloneEPNS0_6__baseIS6_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867763F0;
  a2[1] = v2;
  return result;
}

id sIsolatedCoreAudioSiphonLog()
{
  v1 = &micActivityFlag;
  {
    v1 = &micActivityFlag;
    if (v4)
    {
      sIsolatedCoreAudioSiphonLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioSiphon");
      v1 = &micActivityFlag;
    }
  }

  v2 = v1[19];

  return v2;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<SiphonClient>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<SiphonClient>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    JUMPOUT(0x259C39250);
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797ED2B8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_255588264(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void sub_255588A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<IsolatedCoreAudioSiphon>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<IsolatedCoreAudioSiphon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867768B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void sub_255589044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_255589704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<SiphonClient>>,void *>>>>::~unique_ptr[abi:ne200100](&__p);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v20);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](&a20);
  std::unique_ptr<SiphonClient>::reset[abi:ne200100](&a10, 0);
  v22 = *(a9 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<SiphonIOClient>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](a1 + 56);

  return std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](a1 + 24);
}

void std::__shared_ptr_emplace<SiphonIOClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void std::__shared_ptr_emplace<SiphonClientMap>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v6 = *(v4 + 8);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        MEMORY[0x259C39250](v4, 0x1020C401C8C6399);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v7)
  {

    operator delete(v7);
  }
}

void std::__shared_ptr_emplace<SiphonClientMap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867766C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void applesauce::dispatch::v1::async<SiphonIOClient::executeAvailabilityCallback(CoreAudioTimestamp)::$_0>(dispatch_queue_s *,SiphonIOClient::executeAvailabilityCallback(CoreAudioTimestamp)::$_0 &&)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  std::function<void ()(CoreAudioTimestamp)>::operator()(*(*a1 + 24), a1[1], a1[2]);

  JUMPOUT(0x259C39250);
}

std::once_flag::_State_type sIsolatedCoreAudioSiphonLog()
{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioSiphonLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioSiphon");
      v0 = &micActivityFlag;
    }
  }

  return v0[21];
}

{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIsolatedCoreAudioSiphonLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioSiphon");
      v0 = &micActivityFlag;
    }
  }

  return v0[45];
}

void ___ZN10applesauce8dispatch2v19sync_implIZN14SiphonIOClient22drainAvailabilityQueueEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioSiphonLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "SiphonIOClient.cpp";
    v4 = 1024;
    v5 = 55;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SiphonIOClient::setHasStartedIO - Dispatch Queue has been flushed", &v2, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void sub_25558A160(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<IsolatedCoreAudioClientExclaveKitProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void MicrophoneActivityPortal::~MicrophoneActivityPortal(id *this)
{
  IsolatedCoreAudioXPCPortal::~IsolatedCoreAudioXPCPortal(this);

  JUMPOUT(0x259C39250);
}

uint64_t std::__shared_ptr_emplace<IsolatedCoreAudioClientMultiplexer>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](a1 + 288);
  std::condition_variable::~condition_variable((a1 + 232));
  std::condition_variable::~condition_variable((a1 + 184));
  std::mutex::~mutex((a1 + 120));
  std::mutex::~mutex((a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void std::__shared_ptr_emplace<IsolatedCoreAudioClientMultiplexer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776A38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t std::__function::__func<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>)::$_0,std::allocator<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>)::$_0>,void ()(CoreAudioTimestamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23IsolatedCoreAudioSiphonC1ENSt3__110shared_ptrIK15SiphonClientMapEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>)::$_0,std::allocator<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>)::$_0>,void ()(CoreAudioTimestamp)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a1 + 8);
  v4 = atomic_load((v3 + 32));
  if (v4)
  {
    (*(**(v3 + 16) + 48))(*(v3 + 16), v2);
    atomic_store(0, (v3 + 32));
  }

  v5 = *(**(v3 + 16) + 24);

  return v5();
}

uint64_t std::__function::__func<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>)::$_0,std::allocator<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>)::$_0>,void ()(CoreAudioTimestamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867769B8;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<XPCConnectionToServer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void sub_25558AC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va1);
  MEMORY[0x259C39250](v5, 0x1020C40A1C553C6);
  v7 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](v4);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](v2 + 16);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x259C39250](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>,std::shared_ptr<ClientLocalServer>)::$_1,std::allocator<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>,std::shared_ptr<ClientLocalServer>)::$_1>,void ()(CoreAudioTimestamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23IsolatedCoreAudioSiphonC1ENSt3__110shared_ptrIK15SiphonClientMapEENS1_I17ClientLocalServerEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>,std::shared_ptr<ClientLocalServer>)::$_1,std::allocator<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>,std::shared_ptr<ClientLocalServer>)::$_1>,void ()(CoreAudioTimestamp)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286776B08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>,std::shared_ptr<ClientLocalServer>)::$_0,std::allocator<IsolatedCoreAudioSiphon::IsolatedCoreAudioSiphon(std::shared_ptr<SiphonClientMap const>,std::shared_ptr<ClientLocalServer>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN23IsolatedCoreAudioSiphonC1ENSt3__110shared_ptrIK15SiphonClientMapEENS1_I17ClientLocalServerEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<StubbedIsolatedCoreAudioClientProxy  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI35StubbedIsolatedCoreAudioClientProxyEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<StubbedIsolatedCoreAudioClientProxy  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<StubbedIsolatedCoreAudioClientProxy  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void std::__shared_ptr_emplace<ClientLocalServer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t std::__function::__func<createUnitTestClient(void)::$_0,std::allocator<createUnitTestClient(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z20createUnitTestClientvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<StubbedIsolatedCoreAudioClientProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776CF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void getClient(int a1)
{
  v1 = a1;
  if (atomic_load_explicit(&getClient::sIsInitialized, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&getClient::sIsInitialized, &v2, std::__call_once_proxy[abi:ne200100]<std::tuple<getClient::$_0 &&>>);
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<getClient(unsigned int)::$_0 &&>>(int ***a1)
{
  buf[5] = *MEMORY[0x277D85DE8];
  v1 = **a1;
  v2 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "AudioClientInstance.cpp";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 138;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioClientBase::getClient...", buf, 0x12u);
  }

  if (atomic_load_explicit(&AudioClientForUnitTests::GetInstance(void)::sOnce, memory_order_acquire) != -1)
  {
    buf[0] = &v6;
    v7 = buf;
    std::__call_once(&AudioClientForUnitTests::GetInstance(void)::sOnce, &v7, std::__call_once_proxy[abi:ne200100]<std::tuple<AudioClientForUnitTests::GetInstance(void)::$_0 &&>>);
  }

  if (*AudioClientForUnitTests::GetInstance(void)::sInstance == 1)
  {
    v3 = sIsolatedCoreAudioClientLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "AudioClientInstance.cpp";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = 87;
      _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioClientBase::createUnitTestClient...", buf, 0x12u);
    }

    buf[0] = &unk_286776C20;
    buf[3] = buf;
    operator new();
  }

  v4 = *v1;
  v5 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "AudioClientInstance.cpp";
    WORD2(buf[1]) = 1024;
    *(&buf[1] + 6) = 97;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioClientBase::createDedicatedClient...", buf, 0x12u);
  }

  if (v4 == 1936750180)
  {
    operator new();
  }

  _ZNSt3__115allocate_sharedB8ne200100I38IsolatedCoreAudioClientExclaveKitProxyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_25558B900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  MEMORY[0x259C39250](v10, 0x10A1C402DA23767);
  (*(*v11 + 8))(v11);
  if (a7)
  {
    (*(*a7 + 8))(a7);
  }

  if (a8)
  {
    (*(*a8 + 8))(a8);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RemoteAudioHardwareServer::~RemoteAudioHardwareServer(RemoteAudioHardwareServer *this)
{
  RemoteAudioHardwareServer::~RemoteAudioHardwareServer(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286776DF0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 32);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t RemoteAudioHardwareServer::connectToServer(RemoteAudioHardwareServer *this)
{
  v4[4] = *MEMORY[0x277D85DE8];
  atomic_store(0, this + 24);
  v1 = *(this + 1);
  v4[0] = &unk_286776E20;
  v4[1] = this;
  v4[3] = v4;
  (*(*v1 + 16))(v1, v4);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25558BC18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RemoteAudioHardwareServer::connectToServer(void)::$_0,std::allocator<RemoteAudioHardwareServer::connectToServer(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN25RemoteAudioHardwareServer15connectToServerEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<RemoteAudioHardwareServer::connectToServer(void)::$_0,std::allocator<RemoteAudioHardwareServer::connectToServer(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  {
    sIsolatedCoreAudioServerLog(void)::sLog = os_log_create("com.apple.coreaudio", "IsolatedCoreAudioServer");
  }

  v2 = sIsolatedCoreAudioServerLog(void)::sLog;
  if (os_log_type_enabled(sIsolatedCoreAudioServerLog(void)::sLog, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "RemoteAudioHardwareServer.mm";
    v6 = 1024;
    v7 = 23;
    _os_log_impl(&dword_255576000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d RemoteAudioHardwareServer::RemoteAudioHardwareServer::InvalidationHandler - Connection invalidated!!!", &v4, 0x12u);
  }

  atomic_store(1u, (v1 + 24));
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<RemoteAudioHardwareServer::connectToServer(void)::$_0,std::allocator<RemoteAudioHardwareServer::connectToServer(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286776E20;
  a2[1] = v2;
  return result;
}

void RemoteAudioHardwareServer::RemoteAudioHardwareServer(RemoteAudioHardwareServer *this, uint64_t a2, uint64_t a3)
{
  *this = &unk_286776DF0;
  *(this + 1) = a2;
  *(this + 2) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 24) = 1;
  *(this + 7) = 0;
  RemoteAudioHardwareServer::connectToServer(this);
}

void sub_25558BE84(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v1 + 32);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

id sIsolatedCoreAudioMicActivityLog(void)
{
  v1 = &micActivityFlag;
  {
    v1 = &micActivityFlag;
    if (v4)
    {
      sIsolatedCoreAudioMicActivityLog(void)::sLog = os_log_create("com.apple.coreaudio", "sIsolatedCoreAudioMicActivity");
      v1 = &micActivityFlag;
    }
  }

  v2 = v1[33];

  return v2;
}

void sub_25558C46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, int a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25558CDBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_25558D2A4(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v2);
  v4 = v1[2].__vftable;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void sub_25558D39C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<MADClient>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_emplace<MADClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776F90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void std::__shared_ptr_emplace<MADMultiplexer>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](a1 + 64);
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<MADMultiplexer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286776F40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void IOThreadServerMappedMemory::~IOThreadServerMappedMemory(IOThreadServerMappedMemory *this)
{
  IOThreadServerMappedMemory::~IOThreadServerMappedMemory(this);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286777100;
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = *(this + 2);
  if (!v2 || !v4)
  {
    munmap(v2, v4);
  }

  *v3 = 0;
  v3[1] = 0;
}

uint64_t IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_meterClient_ptr)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::function<void ()(CoreAudioTimestamp)>::operator()(*(*SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_meterClient_ptr + 32), *(a4 + 8), *a4);
  }

  return 0;
}

uint64_t IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sharedDSP_ptr)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::function<void ()(CoreAudioTimestamp)>::operator()(*(*SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sharedDSP_ptr + 32), *(a4 + 8), *a4);
  }

  return 0;
}

uint64_t IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sound_analysis_ptr)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::function<void ()(CoreAudioTimestamp)>::operator()(*(*SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_sound_analysis_ptr + 32), *(a4 + 8), *a4);
  }

  return 0;
}

uint64_t IsolatedIOProcTemplate<&(SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_siri_ptr)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::function<void ()(CoreAudioTimestamp)>::operator()(*(*SetLegacyIOProcForIsolatedUseCase(IsolatedAudio_UseCaseID,std::shared_ptr<Isolated_Legacy_IO_Procedure> *)::smart_ptr_to_siri_ptr + 32), *(a4 + 8), *a4);
  }

  return 0;
}

uint64_t Isolated_Legacy_IO_Procedure::ConsumeInputTimestampFromLegacyIOProc(uint64_t this, const AudioTimeStamp *a2)
{
  if (a2)
  {
    return std::function<void ()(CoreAudioTimestamp)>::operator()(*(this + 32), a2->mHostTime, a2->mSampleTime);
  }

  return this;
}

void Isolated_Legacy_IO_Procedure::~Isolated_Legacy_IO_Procedure(Isolated_Legacy_IO_Procedure *this)
{
  *this = &unk_286777138;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](this + 8);

  JUMPOUT(0x259C39250);
}

{
  *this = &unk_286777138;
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](this + 8);
}

void ServerIOThreadResources::ServerIOThreadResources(ServerIOThreadResources *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *this = &unk_286777518;
  operator new();
}

uint64_t ClientSideAudioSwitchboard::HandleServerDeath(ClientSideAudioSwitchboard *this)
{
  (*(*this + 56))(this);
  v2 = *(this + 15);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void non-virtual thunk toClientSideAudioSwitchboard::~ClientSideAudioSwitchboard(ClientSideAudioSwitchboard *this)
{
  ClientSideAudioSwitchboard::~ClientSideAudioSwitchboard((this - 8));

  JUMPOUT(0x259C39250);
}

{
  ClientSideAudioSwitchboard::~ClientSideAudioSwitchboard((this - 8));
}

void ClientSideAudioSwitchboard::~ClientSideAudioSwitchboard(ClientSideAudioSwitchboard *this)
{
  *this = &unk_286777170;
  *(this + 1) = &unk_2867771D0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 96);
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    v3 = *(v2 + 72);
    *(v2 + 72) = 0;
    if (v3)
    {
      v4 = MEMORY[0x259C39090]();
      MEMORY[0x259C39250](v4, 0x1000C4090D0E795);
    }

    v5 = *(v2 + 64);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::unique_ptr<IOThread>::reset[abi:ne200100]((v2 + 48), 0);
    std::unique_ptr<IOThreadWork>::~unique_ptr[abi:ne200100]((v2 + 40));
    std::unique_ptr<ClientIOThreadResources>::reset[abi:ne200100]((v2 + 32), 0);
    v6 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x259C39250](v6, 0x1020C40A1C553C6);
  }

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](this + 48);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](this + 16);
}

{
  ClientSideAudioSwitchboard::~ClientSideAudioSwitchboard(this);

  JUMPOUT(0x259C39250);
}

uint64_t ClientSideAudioSwitchboard::stopIOProc(ClientSideAudioSwitchboard *this)
{
  (*(**(*(this + 10) + 8) + 64))(*(*(this + 10) + 8));
  ClientSideAudioSwitchboardIOThread::stop(*(this + 11));
  v2 = *(**(*(this + 10) + 8) + 32);

  return v2();
}

void ClientSideAudioSwitchboard::startIOProcAtTime(ClientSideAudioSwitchboard *this, uint64_t a2)
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_286777478;
  v2[1] = this;
  v2[2] = a2;
  v2[3] = v2;
  ClientSideAudioSwitchboard::startIO(this);
}

void sub_25558DE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ClientSideAudioSwitchboard::startIO(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  v3 = atomic_load((v2 + 24));
  if (v3)
  {
    RemoteAudioHardwareServer::connectToServer(*(a1 + 80));
  }

  (*(**(v2 + 8) + 24))(&buf);
  v4 = *(a1 + 88);
  v5 = buf;
  operator new();
}

void sub_25558EB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<ClientSideAudioSwitchboard::startIOProcAtTime(unsigned long long)::$_0,std::allocator<ClientSideAudioSwitchboard::startIOProcAtTime(unsigned long long)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26ClientSideAudioSwitchboard17startIOProcAtTimeEyE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<ClientSideAudioSwitchboard::startIOProcAtTime(unsigned long long)::$_0,std::allocator<ClientSideAudioSwitchboard::startIOProcAtTime(unsigned long long)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 8) + 80) + 8);
  return (*(*v2 + 56))(v2, v1) == 0;
}

__n128 std::__function::__func<ClientSideAudioSwitchboard::startIOProcAtTime(unsigned long long)::$_0,std::allocator<ClientSideAudioSwitchboard::startIOProcAtTime(unsigned long long)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286777478;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ClientSideAudioSwitchboard::startIOProc(ClientSideAudioSwitchboard *this)
{
  v1[4] = *MEMORY[0x277D85DE8];
  v1[0] = &unk_2867773E8;
  v1[1] = this;
  v1[3] = v1;
  ClientSideAudioSwitchboard::startIO(this);
}

void sub_25558EF70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ClientSideAudioSwitchboard::startIOProc(void)::$_0,std::allocator<ClientSideAudioSwitchboard::startIOProc(void)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26ClientSideAudioSwitchboard11startIOProcEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ClientSideAudioSwitchboard::startIOProc(void)::$_0,std::allocator<ClientSideAudioSwitchboard::startIOProc(void)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867773E8;
  a2[1] = v2;
  return result;
}

uint64_t ClientSideAudioSwitchboard::setLapseCallback(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(LapseChain)>::__value_func[abi:ne200100](v8, a2);
  v3 = a1 + 48;
  if ((a1 + 48) != v8)
  {
    v4 = v9;
    v5 = *(a1 + 72);
    if (v9 == v8)
    {
      if (v5 == v3)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 72) + 24))(*(a1 + 72), v8);
        (*(**(a1 + 72) + 32))(*(a1 + 72));
        *(a1 + 72) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1 + 48);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 72);
      }

      *(a1 + 72) = v3;
    }

    else if (v5 == v3)
    {
      (*(*v5 + 24))(*(a1 + 72), v8);
      (*(**(a1 + 72) + 32))(*(a1 + 72));
      *(a1 + 72) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 72);
      *(a1 + 72) = v4;
    }
  }

  result = std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25558F33C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ServerDeathMessage(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "ClientSideAudioSwitchboard.cpp";
    v4 = 1024;
    v5 = 17;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d ClientSideAudioSwitchboard::ServerDeathMessage - server disappeared!", &v2, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void defaultIOThreadExitHandler(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = sIsolatedCoreAudioClientLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "ClientSideAudioSwitchboard.cpp";
    v4 = 1024;
    v5 = 23;
    _os_log_impl(&dword_255576000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ClientSideAudioSwitchboard::defaultIOThreadExitHandler - Local IO Thread has exited.", &v2, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x8000000255595F58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(void),std::allocator<void (*)(void)>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2867772C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ClientSideAudioSwitchboard::ClientSideAudioSwitchboard(std::function<void ()(void)>,std::unique_ptr<RemoteAudioHardwareServer>)::$_0,std::allocator<ClientSideAudioSwitchboard::ClientSideAudioSwitchboard(std::function<void ()(void)>,std::unique_ptr<RemoteAudioHardwareServer>)::$_0>,void ()(LapseChain)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26ClientSideAudioSwitchboardC1ENSt3__18functionIFvvEEENS0_10unique_ptrI25RemoteAudioHardwareServerNS0_14default_deleteIS5_EEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ClientSideAudioSwitchboard::ClientSideAudioSwitchboard(std::shared_ptr<ConnectionToServer>)::$_0,std::allocator<ClientSideAudioSwitchboard::ClientSideAudioSwitchboard(std::shared_ptr<ConnectionToServer>)::$_0>,void ()(LapseChain)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26ClientSideAudioSwitchboardC1ENSt3__110shared_ptrI18ConnectionToServerEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ClientSideAudioSwitchboard::ClientSideAudioSwitchboard(void *a1)
{
  v1 = *MEMORY[0x277D85DE8];
  *a1 = &unk_286777170;
  a1[1] = &unk_2867771D0;
  a1[5] = 0;
  a1[6] = &unk_286777368;
  a1[9] = a1 + 6;
  operator new();
}

void sub_25558F934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x259C39250](v4, 0x1020C40A1C553C6);
  v6 = *(v2 + 80);
  *(v2 + 80) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::__function::__value_func<void ()(LapseChain)>::~__value_func[abi:ne200100](v3);
  std::__function::__value_func<void ()(CoreAudioTimestamp)>::~__value_func[abi:ne200100](v2 + 16);
  _Unwind_Resume(a1);
}

void SiphonClientMap::enableAvailabilityCallbacksForClient(SiphonClientMap *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(this, a2);
  if (v3)
  {
    v5 = v3;
    v4.i32[0] = bswap32(a2);
    v6 = vzip1_s8(v4, v4);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x5F0000005FLL;
    v8.i64[1] = 0x5F0000005FLL;
    v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
    v14 = 4;
    LODWORD(__p) = vuzp1_s8(v9, v9).u32[0];
    BYTE4(__p) = 0;
    v10 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "SiphonClientMap.cpp";
      v17 = 1024;
      v18 = 21;
      v19 = 2080;
      p_p = &__p;
      _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting IO on the %s client", buf, 0x1Cu);
      v11 = v14;
      atomic_store(1u, (*v5[3] + 64));
      if (v11 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      atomic_store(1u, (*v5[3] + 64));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void SiphonClientMap::disableAvailabilityCallbacksForClient(SiphonClientMap *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(this, a2);
  if (v3)
  {
    v5 = v3;
    v4.i32[0] = bswap32(a2);
    v6 = vzip1_s8(v4, v4);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x5F0000005FLL;
    v8.i64[1] = 0x5F0000005FLL;
    v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
    v14 = 4;
    LODWORD(__p) = vuzp1_s8(v9, v9).u32[0];
    BYTE4(__p) = 0;
    v10 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "SiphonClientMap.cpp";
      v17 = 1024;
      v18 = 32;
      v19 = 2080;
      p_p = &__p;
      _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stopping IO on the %s client", buf, 0x1Cu);
      v11 = v14;
      atomic_store(0, (*v5[3] + 64));
      if (v11 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      atomic_store(0, (*v5[3] + 64));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void SiphonClientMap::disableLapseHandlingForClient(SiphonClientMap *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(this, a2);
  if (v3)
  {
    v5 = v3;
    v4.i32[0] = bswap32(a2);
    v6 = vzip1_s8(v4, v4);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x5F0000005FLL;
    v8.i64[1] = 0x5F0000005FLL;
    v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
    v14 = 4;
    LODWORD(__p) = vuzp1_s8(v9, v9).u32[0];
    BYTE4(__p) = 0;
    v10 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "SiphonClientMap.cpp";
      v17 = 1024;
      v18 = 55;
      v19 = 2080;
      p_p = &__p;
      _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling lapse handling on %s client", buf, 0x1Cu);
      v11 = v14;
      atomic_store(0, (*v5[3] + 65));
      if (v11 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      atomic_store(0, (*v5[3] + 65));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void SiphonClientMap::enableLapseHandlingForClient(SiphonClientMap *this, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(this, a2);
  if (v3)
  {
    v5 = v3;
    v4.i32[0] = bswap32(a2);
    v6 = vzip1_s8(v4, v4);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x5F0000005FLL;
    v8.i64[1] = 0x5F0000005FLL;
    v9 = vbsl_s8(vmovn_s32(vcgtq_u32(v8, vsraq_n_s32(v7, vshlq_n_s32(vmovl_u16(v6), 0x18uLL), 0x18uLL))), v6, 0x2E002E002E002ELL);
    v14 = 4;
    LODWORD(__p) = vuzp1_s8(v9, v9).u32[0];
    BYTE4(__p) = 0;
    v10 = sIsolatedCoreAudioSiphonLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "SiphonClientMap.cpp";
      v17 = 1024;
      v18 = 66;
      v19 = 2080;
      p_p = &__p;
      _os_log_impl(&dword_255576000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enabling lapse handling on %s client", buf, 0x1Cu);
      v11 = v14;
      atomic_store(1u, (*v5[3] + 65));
      if (v11 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      atomic_store(1u, (*v5[3] + 65));
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void IOThreadWorkgroup::IOThreadWorkgroup(IOThreadWorkgroup *this, OS_os_workgroup *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = caulk::mach::details::retain_os_object(a2, a2);
  caulk::mach::details::release_os_object(0, v3);
  v5 = MEMORY[0x277D7F0A0] + 16;
  v6 = v2;
  v7 = 0u;
  memset(v8, 0, 25);
  caulk::mach::details::release_os_object(0, v4);
  operator new();
}

void IOThreadServerSynchronizer::~IOThreadServerSynchronizer(IOThreadServerSynchronizer *this)
{
  IOThreadSynchronizer::~IOThreadSynchronizer(this);

  JUMPOUT(0x259C39250);
}

uint64_t std::shared_ptr<caulk::mach::semaphore>::operator=[abi:ne200100]<caulk::mach::semaphore,std::default_delete<caulk::mach::semaphore>,0>(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = *a2;
    operator new();
  }

  *a2 = 0;
  v4 = *(a1 + 8);
  *a1 = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t *std::unique_ptr<caulk::mach::semaphore>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x259C39090]();
    MEMORY[0x259C39250](v3, 0x1000C4090D0E795);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<caulk::mach::semaphore  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN5caulk4mach9semaphoreEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<caulk::mach::semaphore  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MEMORY[0x259C39090]();

    JUMPOUT(0x259C39250);
  }

  return result;
}

void std::__shared_ptr_pointer<caulk::mach::semaphore  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void ServerSideAudioSwitchboard::GetClientForIO(ServerSideAudioSwitchboard *this, void *a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<HALUseCase>>>>::find<unsigned int>(a2, a3))
  {
    v6 = a2[1];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = a3;
      if (v6 <= a3)
      {
        v8 = a3 % v6;
      }
    }

    else
    {
      v8 = (v6 - 1) & a3;
    }

    v11 = *(*a2 + 8 * v8);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_22:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == a3)
      {
        if (*(v12 + 4) == a3)
        {
          v14 = v12[4];
          *this = v12[3];
          *(this + 1) = v14;
          if (v14)
          {
            v15 = (v14 + 8);
            v10 = 1;
            atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (v7.u32[0] > 1uLL)
        {
          if (v13 >= v6)
          {
            v13 %= v6;
          }
        }

        else
        {
          v13 &= v6 - 1;
        }

        if (v13 != v8)
        {
          goto LABEL_22;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_22;
      }
    }
  }

  v9 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315650;
    v18 = "ServerSideAudioSwitchboard.cpp";
    v19 = 1024;
    v20 = 142;
    v21 = 1024;
    v22 = a3;
    _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ServerSideAudioSwitchboard::GetClientForIO - No client exists for %u!", &v17, 0x18u);
  }

  v10 = 0;
  *this = 0;
LABEL_26:
  *(this + 16) = v10;
  v16 = *MEMORY[0x277D85DE8];
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t ServerSideAudioSwitchboard::stopServerIOThread(ServerSideAudioSwitchboard *this, unsigned int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  ServerSideAudioSwitchboard::GetClientForIO(&v22, this, a2);
  v5 = v24;
  if (v24 == 1)
  {
    v6 = v22;
    v7 = v22[2];
    if (*(v7 + 64))
    {
      atomic_store(1u, (v7 + 65));
      caulk::mach::semaphore::signal(*(v7 + 24));
      v8 = *(this + 5);
      v9 = v6[1];
      v18 = *v6;
      v19 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(*v8 + 72))(v8, &v18);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

LABEL_11:
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      goto LABEL_13;
    }
  }

  v4.i32[0] = bswap32(a2);
  v11 = vzip1_s8(v4, v4);
  v12.i64[0] = 0x1F0000001FLL;
  v12.i64[1] = 0x1F0000001FLL;
  v13.i64[0] = 0x5F0000005FLL;
  v13.i64[1] = 0x5F0000005FLL;
  v14 = vbsl_s8(vmovn_s32(vcgtq_u32(v13, vsraq_n_s32(v12, vshlq_n_s32(vmovl_u16(v11), 0x18uLL), 0x18uLL))), v11, 0x2E002E002E002ELL);
  v21 = 4;
  LODWORD(__p) = vuzp1_s8(v14, v14).u32[0];
  BYTE4(__p) = 0;
  v15 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "ServerSideAudioSwitchboard.cpp";
    v27 = 1024;
    v28 = 81;
    v29 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideAudioSwitchboard::stopServerIOThread IO not stopped for client %s", buf, 0x1Cu);
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  v10 = 4;
  if (v5)
  {
    goto LABEL_11;
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_25559156C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t std::__function::__func<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26ServerSideAudioSwitchboard16addClientUseCaseEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t *std::unique_ptr<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    MEMORY[0x259C39250](v2, 0x1020C40E2DCC865);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_queue_s *,ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void *)#1}::__invoke(uint64_t a1, int8x8_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v12 = a1;
  a2.i32[0] = bswap32(*a1);
  v3 = vzip1_s8(a2, a2);
  v4.i64[0] = 0x1F0000001FLL;
  v4.i64[1] = 0x1F0000001FLL;
  v5.i64[0] = 0x5F0000005FLL;
  v5.i64[1] = 0x5F0000005FLL;
  v6 = vbsl_s8(vmovn_s32(vcgtq_u32(v5, vsraq_n_s32(v4, vshlq_n_s32(vmovl_u16(v3), 0x18uLL), 0x18uLL))), v3, 0x2E002E002E002ELL);
  v14 = 4;
  LODWORD(__p) = vuzp1_s8(v6, v6).u32[0];
  BYTE4(__p) = 0;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "ServerSideAudioSwitchboard.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 130;
    v16 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideAudioSwitchboard::addClientUseCase stopping IO for unresponsive client %s", buf, 0x1Cu);
  }

  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  *buf = *(a1 + 8);
  *&buf[8] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v8 + 72))(v8, buf);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  result = std::unique_ptr<ServerSideAudioSwitchboard::addClientUseCase::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<ServerSideAudioSwitchboard::addClientUseCase::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v12);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2555918A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<ServerSideAudioSwitchboard::addClientUseCase::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<ServerSideAudioSwitchboard::addClientUseCase::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<ServerSideAudioSwitchboard::addClientUseCase::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase::$_0>,void ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__func<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286777600;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286777600;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  JUMPOUT(0x259C39250);
}

void *std::__function::__func<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0,std::allocator<ServerSideAudioSwitchboard::addClientUseCase(unsigned int)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_286777600;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::__shared_ptr_emplace<ServerSideUniqueClient>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<ServerSideUniqueClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867775B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

void std::__shared_ptr_emplace<MADClientProxyObjcWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286777680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t _ZNKSt3__110__function6__funcIN22ServerSideUniqueClient24mSemaphoreTimeoutHandlerMUlvE_ENS_9allocatorIS3_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "N22ServerSideUniqueClient24mSemaphoreTimeoutHandlerMUlvE_E"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<ServerIOThreadResources>::__on_zero_shared(uint64_t a1)
{
  IOThreadServerMappedMemory::~IOThreadServerMappedMemory((a1 + 64));

  IOThreadSynchronizer::~IOThreadSynchronizer((a1 + 24));
}

void std::__shared_ptr_emplace<ServerIOThreadResources>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2867776E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C39250);
}

uint64_t ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN22ServerSideUniqueClient25GetClientFacingIOCallbackEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::operator()(uint64_t result, _OWORD *a2)
{
  v2 = result;
  v3 = *(result + 8);
  if (*(v3 + 56) >= 0x10uLL)
  {
    **(v3 + 48) = *a2;
    v3 = *(result + 8);
  }

  v4 = atomic_load((v3 + 65));
  if ((v4 & 1) == 0)
  {
    result = IOThreadSynchronizer::signalAndWait(*(v3 + 8), 10.0, *(v3 + 24));
    if (result == 49)
    {
      v5 = *(v2 + 48);
      if (!v5)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v6 = *(*v5 + 48);

      return v6();
    }
  }

  return result;
}

void std::__function::__func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__function::__func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2867777C0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a2 + 3), a1 + 24);
}

void sub_255592018(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2555920B0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::~__func(void *a1)
{
  *a1 = &unk_2867777C0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x259C39250);
}

void *std::__function::__func<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0,std::allocator<ServerSideUniqueClient::GetClientFacingIOCallback(void)::$_0>,void ()(CoreAudioTimestamp)>::~__func(void *a1)
{
  *a1 = &unk_2867777C0;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void IOThreadWork::~IOThreadWork(IOThreadWork *this)
{
  std::__function::__value_func<long long ()(long long)>::~__value_func[abi:ne200100](this + 96);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](this + 32);

  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](this);
}

uint64_t IOThread::IOThread(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](a1 + 16, a2);
  std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](a1 + 48, a2 + 32);
  std::__function::__value_func<long long ()(void)>::__value_func[abi:ne200100](a1 + 80, a2 + 64);
  v6 = *(a2 + 120);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 != a2 + 96)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_4:
    *(a1 + 136) = v6;
    goto LABEL_6;
  }

  *(a1 + 136) = a1 + 112;
  (*(**(a2 + 120) + 24))(*(a2 + 120));
LABEL_6:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 144), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 160) = *(a3 + 2);
    *(a1 + 144) = v7;
  }

  return a1;
}

std::once_flag::_State_type sIOThreadingLog(void)
{
  v0 = &micActivityFlag;
  {
    v0 = &micActivityFlag;
    if (v2)
    {
      sIOThreadingLog(void)::sLog = os_log_create("com.apple.coreaudio", "IOThreading");
      v0 = &micActivityFlag;
    }
  }

  return v0[49];
}

uint64_t IOThread::workloop(IOThread *this, void *a2)
{
  if (pthread_self() == *(this + 1))
  {
    v3 = this + 144;
    if (*(this + 167) < 0)
    {
      v3 = *v3;
    }

    pthread_setname_np(v3);
  }

  v4 = *(this + 9);
  if (!v4)
  {
LABEL_14:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4);
  if (v5)
  {
LABEL_11:
    IOThread::exitWorkloopPrematurely(this, v5);
  }

  else
  {
    atomic_exchange(this, 2u);
    while (1)
    {
      v6 = atomic_load(this + 4);
      if (v6)
      {
        break;
      }

      v7 = *(this + 13);
      if (!v7)
      {
        goto LABEL_14;
      }

      v5 = (*(*v7 + 48))(v7);
      if (v5)
      {
        goto LABEL_11;
      }
    }

    std::function<long long ()(long long)>::operator()(*(this + 17), 0);
  }

  return 0;
}

pthread_t IOThread::exitWorkloopPrematurely(IOThread *this, uint64_t a2)
{
  result = pthread_self();
  if (result == *(this + 1))
  {
    atomic_store(1u, this + 4);
    std::function<long long ()(long long)>::operator()(*(this + 17), a2);
    *(this + 1) = 0;
    atomic_exchange(this, 0);
    pthread_exit(0);
  }

  return result;
}

uint64_t std::function<long long ()(long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void IsolatedCoreAudioServicePortal::~IsolatedCoreAudioServicePortal(id *this)
{
  IsolatedCoreAudioXPCPortal::~IsolatedCoreAudioXPCPortal(this);

  JUMPOUT(0x259C39250);
}

void sub_255592AD8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t caulk::mach::semaphore::semaphore(caulk::mach::semaphore *this)
{
  return MEMORY[0x2821E8568](this);
}

{
  return MEMORY[0x2821E8570](this);
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