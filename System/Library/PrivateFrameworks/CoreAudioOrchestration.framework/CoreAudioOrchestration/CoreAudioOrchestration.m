void sub_245090890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, IOProcBrain *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  IOProcBrain::~IOProcBrain(&a12);

  _Unwind_Resume(a1);
}

uint64_t ADMIO::operator=(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=((a1 + 32), a2 + 32);
  if (a1 != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 3);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 3);
    std::vector<AMCP::Proc_Stream>::__assign_with_size[abi:ne200100]<AMCP::Proc_Stream*,AMCP::Proc_Stream*>((a1 + 112), *(a2 + 112), *(a2 + 120), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 120) - *(a2 + 112)) >> 4));
    std::vector<AudioBufferList>::__assign_with_size[abi:ne200100]<AudioBufferList*,AudioBufferList*>((a1 + 136), *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 3));
    std::vector<AMCP::Proc_Stream>::__assign_with_size[abi:ne200100]<AMCP::Proc_Stream*,AMCP::Proc_Stream*>((a1 + 160), *(a2 + 160), *(a2 + 168), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 168) - *(a2 + 160)) >> 4));
    std::vector<AudioBufferList>::__assign_with_size[abi:ne200100]<AudioBufferList*,AudioBufferList*>((a1 + 184), *(a2 + 184), *(a2 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 192) - *(a2 + 184)) >> 3));
  }

  return a1;
}

void *std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v5, a2);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_245090DFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E22920, MEMORY[0x277D825F0]);
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

void *std::vector<AMCP::Proc_Stream>::__assign_with_size[abi:ne200100]<AMCP::Proc_Stream*,AMCP::Proc_Stream*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x333333333333333)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x199999999999999)
      {
        v11 = 0x333333333333333;
      }

      else
      {
        v11 = v10;
      }

      std::vector<AMCP::Proc_Stream>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 4) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<AMCP::Proc_Stream>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AMCP::Proc_Stream>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AMCP::Proc_Stream>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<AudioBufferList>::__assign_with_size[abi:ne200100]<AudioBufferList*,AudioBufferList*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<AudioBufferList>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<AudioBufferList>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AudioBufferList>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AudioBufferList>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

IOLapseHandler *std::unique_ptr<IOLapseHandler>::reset[abi:ne200100](IOLapseHandler **a1, IOLapseHandler *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IOLapseHandler::~IOLapseHandler(result);

    JUMPOUT(0x245D62DC0);
  }

  return result;
}

void ExADUseCaseFormatForUseCaseFromEDT(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  ExADUseCaseFormatsFromEDT(v7, a3, &v15);
  if (v17)
  {
    v8 = v15;
    v9 = v15;
    if (v15 != v16)
    {
      v9 = v15;
      while (*v9 != a2)
      {
        v9 += 2;
        if (v9 == v16)
        {
          goto LABEL_10;
        }
      }
    }

    if (v9 == v16)
    {
LABEL_10:
      if (a3)
      {
        v12 = MEMORY[0x277CCA9B8];
        v18 = *MEMORY[0x277CCA450];
        v19[0] = @"useCaseID not found in EDT table";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
        *a3 = [v12 errorWithDomain:@"EDTReadingErrorDomain" code:0 userInfo:v13];
      }

      v11 = 0;
      *a4 = 0;
    }

    else
    {
      v10 = v9[1];
      *a4 = *v9;
      *(a4 + 16) = v10;
      v11 = 1;
    }

    *(a4 + 32) = v11;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 32) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2450918A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void ExADUseCaseFormatsFromEDT(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [v5 createCFTypeRefForKey:@"use-case-client-format" atPath:@"IODeviceTree:/product/audio" error:a2];
  v7 = v6;
  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    *(a3 + 24) = 0;
    goto LABEL_16;
  }

  v8 = CFGetTypeID(v6);
  if (v8 != CFDataGetTypeID())
  {
    if (a2)
    {
      v12 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25[0] = @"wrong data type, expecting CFData";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *a2 = [v12 errorWithDomain:@"EDTReadingErrorDomain" code:3 userInfo:v13];
    }

    CFRelease(v7);
    goto LABEL_10;
  }

  theData = v7;
  v9 = CFGetTypeID(v7);
  if (v9 != CFDataGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245D62D80](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  Length = CFDataGetLength(theData);
  v11 = Length;
  if (!Length || (Length & 0x1F) != 0)
  {
    if (a2)
    {
      v14 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Size error: %ld, expecting a multiple >0 of : %lu", Length, 32];
      v23 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a2 = [v14 errorWithDomain:@"EDTReadingErrorDomain" code:4 userInfo:v16];
    }

    *a3 = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    std::vector<ExADUseCaseFormat>::vector[abi:ne200100](buffer, Length >> 5);
    v26.location = 0;
    v26.length = v11;
    CFDataGetBytes(theData, v26, buffer[0]);
    *a3 = *buffer;
    *(a3 + 16) = v20;
    *(a3 + 24) = 1;
  }

  if (theData)
  {
    CFRelease(theData);
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

void sub_245091FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  applesauce::CF::DataRef::~DataRef(&a15);

  _Unwind_Resume(a1);
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

void *std::vector<ExADUseCaseFormat>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ExADUseCaseFormat>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_245092114(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ExADUseCaseFormat>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ExADUseCaseFormat>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ExADUseCaseFormat>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t IsolatedDeviceIOProc(int a1, const AudioTimeStamp *a2, const AudioBufferList *a3, const AudioTimeStamp *a4, AudioBufferList *a5, const AudioTimeStamp *a6, void (***a7)(void, int *))
{
  if (a7)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    v12 = a5;
    v13 = a6;
    (**a7)(a7, &v8);
  }

  return 0;
}

uint64_t StartIOProcAtTime(AudioObjectID a1, OSStatus (__cdecl *a2)(AudioObjectID, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), UInt64 a3)
{
  v4.mSampleTime = 0.0;
  memset(&v4.mRateScalar, 0, 48);
  v4.mHostTime = a3;
  v4.mFlags = 2;
  return AudioDeviceStartAtTime(a1, a2, &v4, 9u);
}

void IOLapseHandler::IOLapseHandler(IOLapseHandler *this, void (*a2)(int, void *), void *a3)
{
  *this = &unk_2857FEC50;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = 0;
}

{
  *this = &unk_2857FEC50;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = 0;
}

void IOLapseHandler::handleLapse(IOLapseHandler *this, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sIsolatedCoreAudioOrchestrationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = atomic_load(this + 24);
    v8 = 136315906;
    v9 = "IOLapseHandler.cpp";
    v10 = 1024;
    v11 = 18;
    v12 = 1024;
    v13 = a2;
    v14 = 1024;
    v15 = v5 & 1;
    _os_log_impl(&dword_24508F000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Handle Lapse - %u and has Started: %d", &v8, 0x1Eu);
  }

  v6 = atomic_load(this + 24);
  if (v6)
  {
    (*(this + 1))(a2, *(this + 2));
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sIsolatedCoreAudioOrchestrationLog(void)
{
  if ((atomic_load_explicit(&qword_27EDF8488, memory_order_acquire) & 1) == 0)
  {
    sIsolatedCoreAudioOrchestrationLog();
  }

  return _MergedGlobals;
}

{
  if ((atomic_load_explicit(qword_27EDF8498, memory_order_acquire) & 1) == 0)
  {
    sIsolatedCoreAudioOrchestrationLog();
  }

  return _MergedGlobals_0;
}

void IOLapseHandler::setIOHasStarted(IOLapseHandler *this, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sIsolatedCoreAudioOrchestrationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = atomic_load(this + 24);
    v7 = 136315906;
    v8 = "IOLapseHandler.cpp";
    v9 = 1024;
    v10 = 27;
    v11 = 1024;
    v12 = v5 & 1;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_24508F000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Set IO Has Started: %d -> %d", &v7, 0x1Eu);
  }

  atomic_store(a2, this + 24);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_245092AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DSPController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_245092C34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ADMIOConfiguration::~ADMIOConfiguration(ADMIOConfiguration *this)
{
  begin = this->outputStreamIndicesInIOProc.__begin_;
  if (begin)
  {
    this->outputStreamIndicesInIOProc.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->inputStreamIndicesInIOProc.__begin_;
  if (v3)
  {
    this->inputStreamIndicesInIOProc.__end_ = v3;
    operator delete(v3);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](&this->admCallback);
}

uint64_t std::__function::__value_func<void ()(unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

double ADMIO::timeStamp@<D0>(ADMIO *this@<X0>, _OWORD *a2@<X8>)
{
  if (this)
  {
    v3 = *&this->ioInfo.contextID;
    *a2 = *&this->_vptr$IOProcCallable;
    a2[1] = v3;
    v4 = *this->ioInfo.admCallback.__f_.__buf_.__data;
    v5 = *&this->ioInfo.admCallback.__f_.__buf_.__data[16];
    a2[2] = v4;
    a2[3] = v5;
  }

  else
  {
    *&v4 = 0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v4;
}

void *ADMIO::doIO(void *result, void *a2)
{
  if (result[7])
  {
    v3 = result;
    ADMIO::translateABLsToProc_Stream(result, a2);
    v4 = a2[1];
    if (v4)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[3];
      v19 = v4[2];
      v20 = v7;
      v18 = v6;
    }

    else
    {
      v5 = 0uLL;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }

    v17 = v5;
    v8 = *(v3 + 4);
    v9 = a2[3];
    if (v9)
    {
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[3];
      v23 = v9[2];
      v24 = v12;
      v22 = v11;
    }

    else
    {
      v10 = 0uLL;
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
    }

    v21 = v10;
    v13 = a2[5];
    if (v13)
    {
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[3];
      v27 = v13[2];
      v28 = v16;
      v26 = v15;
    }

    else
    {
      v14 = 0uLL;
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }

    v25 = v14;
    v29 = 0;
    return std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()((v3 + 4), v8, &v17, 0xCCCCCCCCCCCCCCCDLL * ((v3[15] - v3[14]) >> 4), v3[14], 0xCCCCCCCCCCCCCCCDLL * ((v3[21] - v3[20]) >> 4), v3[20]);
  }

  return result;
}

unsigned int *ADMIO::translateABLsToProc_Stream(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  if (v5)
  {
    v6 = v5[1];
    v13 = *v5;
    v14 = v6;
    v7 = v5[3];
    v15 = v5[2];
    v16 = v7;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  ADMIO::translateABLsToProc_Stream(v4, &v13, a1 + 8, a1 + 14);
  v8 = a2[4];
  v9 = a2[5];
  if (v9)
  {
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v11 = v9[3];
    v15 = v9[2];
    v16 = v11;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  return ADMIO::translateABLsToProc_Stream(v8, &v13, a1 + 11, a1 + 20);
}

uint64_t std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2;
  v12 = a4;
  v10 = a6;
  v11 = a5;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v13, a3, &v12, &v11, &v10, &v9);
}

unsigned int *ADMIO::translateABLsToProc_Stream(unsigned int *result, __int128 *a2, void *a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = a4[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - *a4) >> 4) != (a3[1] - *a3) >> 3)
  {
    ADMIO::translateABLsToProc_Stream();
  }

  if (v5 != v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v4 + v6;
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[3];
      *(v8 + 32) = a2[2];
      *(v8 + 48) = v11;
      *v8 = v9;
      *(v8 + 16) = v10;
      if (result)
      {
        v12 = *(*a3 + 8 * v7);
        if (v12 < *result)
        {
          *(*(v4 + v6 + 72) + 8) = *&result[4 * v12 + 2];
        }
      }

      else
      {
        v13 = *(v8 + 72);
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
      }

      ++v7;
      v4 = *a4;
      v6 += 80;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 4));
  }

  return result;
}

void ADMIO::configureADMIO(ADMIO *this, const ADMIOConfiguration *a2)
{
  p_ioInfo = &this->ioInfo;
  *&this->ioInfo.contextID = *&a2->contextID;
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(this->ioInfo.admCallback.__f_.__buf_.__data, &a2->admCallback);
  if (p_ioInfo != a2)
  {
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&this->ioInfo.inputStreamIndicesInIOProc.__begin_, a2->inputStreamIndicesInIOProc.__begin_, a2->inputStreamIndicesInIOProc.__end_, a2->inputStreamIndicesInIOProc.__end_ - a2->inputStreamIndicesInIOProc.__begin_);
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&this->ioInfo.outputStreamIndicesInIOProc.__begin_, a2->outputStreamIndicesInIOProc.__begin_, a2->outputStreamIndicesInIOProc.__end_, a2->outputStreamIndicesInIOProc.__end_ - a2->outputStreamIndicesInIOProc.__begin_);
  }

  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(__p, a2->inputStreamIndicesInIOProc.__end_ - a2->inputStreamIndicesInIOProc.__begin_, this->ioInfo.frameBufferSize);
  begin = this->admInputs.streams.__begin_;
  if (begin)
  {
    this->admInputs.streams.__end_ = begin;
    operator delete(begin);
  }

  *&this->admInputs.streams.__begin_ = *__p;
  this->admInputs.streams.__cap_ = v10;
  __p[1] = 0;
  v10 = 0;
  __p[0] = 0;
  v6 = this->admInputs.abls.__begin_;
  if (v6)
  {
    this->admInputs.abls.__end_ = v6;
    operator delete(v6);
    v6 = __p[0];
  }

  *&this->admInputs.abls.__begin_ = v11;
  this->admInputs.abls.__cap_ = v12;
  v12 = 0;
  v11 = 0uLL;
  if (v6)
  {
    __p[1] = v6;
    operator delete(v6);
  }

  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(__p, a2->outputStreamIndicesInIOProc.__end_ - a2->outputStreamIndicesInIOProc.__begin_, this->ioInfo.frameBufferSize);
  v7 = this->admOutputs.streams.__begin_;
  if (v7)
  {
    this->admOutputs.streams.__end_ = v7;
    operator delete(v7);
  }

  *&this->admOutputs.streams.__begin_ = *__p;
  this->admOutputs.streams.__cap_ = v10;
  __p[1] = 0;
  v10 = 0;
  __p[0] = 0;
  v8 = this->admOutputs.abls.__begin_;
  if (v8)
  {
    this->admOutputs.abls.__end_ = v8;
    operator delete(v8);
    v8 = __p[0];
  }

  *&this->admOutputs.abls.__begin_ = v11;
  this->admOutputs.abls.__cap_ = v12;
  v12 = 0;
  v11 = 0uLL;
  if (v8)
  {
    __p[1] = v8;
    operator delete(v8);
  }
}

ADMIO::ADMStreamsAndABLs *ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(ADMIO::ADMStreamsAndABLs *this, unint64_t a2, int a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v20 = a3;
  v21 = 0;
  v22 = 0;
  std::vector<AMCP::Proc_Stream>::vector[abi:ne200100](&v23, a2);
  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  *this = v23;
  *(this + 2) = v24;
  v23 = 1uLL;
  v24 = 0;
  std::vector<AudioBufferList>::vector[abi:ne200100](&v16, a2);
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  v7 = v16;
  *(this + 24) = v16;
  *(this + 5) = v17;
  if (a2)
  {
    v8 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = vdupq_n_s64(a2 - 1);
    v10 = v7;
    v11 = xmmword_2450E7190;
    v12 = (*this + 152);
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (v14.i8[0])
      {
        *(v12 - 10) = v10;
      }

      if (v14.i8[4])
      {
        *v12 = v10 + 24;
      }

      v11 = vaddq_s64(v11, v13);
      v12 += 20;
      v10 += 48;
      v8 -= 2;
    }

    while (v8);
  }

  return this;
}

void sub_245093314(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<AMCP::Proc_Stream>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<AMCP::Proc_Stream>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2450933C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<AudioBufferList>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<AudioBufferList>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_245093454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LapseEvents@<X0>(void *a1@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = 0x676C6F62676F696ELL;
  v4 = 0;
  v5 = IsolatedDeviceIsRunningEventListener;
  v6 = 0x676C6F6273747064;
  v7 = 0;
  v8 = IsolatedDeviceStoppedAbruptlyEventListener;
  v9 = 0x676C6F626C69766ELL;
  v10 = 0;
  v11 = IsolatedDeviceIsAliveEventListener;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(a1, &v3, &v12, 3uLL);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IsolatedDeviceIsRunningEventListener(AudioObjectID a1, unsigned int a2, const AudioObjectPropertyAddress *a3, void (***a4)(void, uint64_t))
{
  v17 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 1;
  *&inAddress.mSelector = *"niogbolg";
  inAddress.mElement = 0;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    v5 = sIsolatedCoreAudioOrchestrationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v12 = "HALEventListener.cpp";
      v13 = 1024;
      v14 = 45;
      v15 = 1024;
      v16 = outData;
      _os_log_impl(&dword_24508F000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Recevied isRunning notification: %u", buf, 0x18u);
    }

    if (!outData)
    {
      callLapseHandler(a4);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t IsolatedDeviceStoppedAbruptlyEventListener(AudioObjectID a1, unsigned int a2, const AudioObjectPropertyAddress *a3, void (***a4)(void, uint64_t))
{
  v17 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"dptsbolg";
  inAddress.mElement = 0;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    v5 = sIsolatedCoreAudioOrchestrationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v12 = "HALEventListener.cpp";
      v13 = 1024;
      v14 = 67;
      v15 = 1024;
      v16 = outData;
      _os_log_impl(&dword_24508F000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Recevied Abnormally Stopped notification: %u", buf, 0x18u);
    }

    callLapseHandler(a4);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t IsolatedDeviceIsAliveEventListener(AudioObjectID a1, unsigned int a2, const AudioObjectPropertyAddress *a3, void (***a4)(void, uint64_t))
{
  v17 = *MEMORY[0x277D85DE8];
  ioDataSize = 4;
  outData = 0;
  *&inAddress.mSelector = *"nvilbolg";
  inAddress.mElement = 0;
  if (!AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, &outData))
  {
    v5 = sIsolatedCoreAudioOrchestrationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v12 = "HALEventListener.cpp";
      v13 = 1024;
      v14 = 87;
      v15 = 1024;
      v16 = outData;
      _os_log_impl(&dword_24508F000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Recevied Device is Alive notification: %u", buf, 0x18u);
    }

    if (!outData)
    {
      callLapseHandler(a4);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t CreateLapseHandlingEventListeners(AudioObjectID a1, void *a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  strcpy(buf, "niogbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  *&v25[2] = IsolatedDeviceIsRunningEventListener;
  strcpy(&v25[10], "dptsbolg");
  v25[19] = 0;
  v26 = 0;
  v27 = IsolatedDeviceStoppedAbruptlyEventListener;
  v28 = 0x676C6F626C69766ELL;
  v29 = 0;
  v30 = IsolatedDeviceIsAliveEventListener;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(&v20, buf, v31, 3uLL);
  v4 = v20;
  v5 = v21;
  if (v20 == v21)
  {
    v7 = 0;
    if (!v20)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  do
  {
    v6 = *v4;
    inAddress.mElement = *(v4 + 2);
    *&inAddress.mSelector = v6;
    v7 = AudioObjectAddPropertyListener(a1, &inAddress, *(v4 + 2), a2);
    v8 = sIsolatedCoreAudioOrchestrationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9.i32[0] = bswap32(inAddress.mSelector);
      v10 = vzip1_s8(v9, v9);
      v11.i64[0] = 0x1F0000001FLL;
      v11.i64[1] = 0x1F0000001FLL;
      v12.i64[0] = 0x5F0000005FLL;
      v12.i64[1] = 0x5F0000005FLL;
      v18 = 4;
      v13 = vbsl_s8(vmovn_s32(vcgtq_u32(v12, vsraq_n_s32(v11, vshlq_n_s32(vmovl_u16(v10), 0x18uLL), 0x18uLL))), v10, 0x2E002E002E002ELL);
      LODWORD(__p) = vuzp1_s8(v13, v13).u32[0];
      BYTE4(__p) = 0;
      *buf = 136315906;
      *&buf[4] = "HALEventListener.cpp";
      v24 = 1024;
      *v25 = 113;
      *&v25[4] = 2080;
      *&v25[6] = &__p;
      *&v25[14] = 1024;
      *&v25[16] = v7;
      _os_log_impl(&dword_24508F000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Creating Lapse Handler Event: %s - status: %u", buf, 0x22u);
      if (v18 < 0)
      {
        operator delete(__p);
      }
    }

    v4 += 24;
    if (v7)
    {
      v14 = 1;
    }

    else
    {
      v14 = v4 == v5;
    }
  }

  while (!v14);
  v4 = v20;
  if (v20)
  {
LABEL_11:
    v21 = v4;
    operator delete(v4);
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t DestroyLapseHandlingEventListeners(AudioObjectID a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *&inAddress.mSelector = 0x676C6F62676F696ELL;
  inAddress.mElement = 0;
  v13 = IsolatedDeviceIsRunningEventListener;
  v14 = 0x676C6F6273747064;
  v15 = 0;
  v16 = IsolatedDeviceStoppedAbruptlyEventListener;
  v17 = 0x676C6F626C69766ELL;
  v18 = 0;
  v19 = IsolatedDeviceIsAliveEventListener;
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(&__p, &inAddress, &v20, 3uLL);
  v2 = __p;
  v3 = v10;
  if (__p == v10)
  {
    v5 = 0;
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  do
  {
    v4 = *v2;
    inAddress.mElement = *(v2 + 2);
    *&inAddress.mSelector = v4;
    v5 = AudioObjectRemovePropertyListener(a1, &inAddress, *(v2 + 2), 0);
    v2 += 24;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == v3;
    }
  }

  while (!v6);
  v2 = __p;
  if (__p)
  {
LABEL_8:
    v10 = v2;
    operator delete(v2);
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void callLapseHandler(void (***a1)(void, uint64_t))
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sIsolatedCoreAudioOrchestrationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "HALEventListener.cpp";
    v6 = 1024;
    v7 = 24;
    _os_log_impl(&dword_24508F000, v2, OS_LOG_TYPE_INFO, "%25s:%-5d Calling Lapse Handler", &v4, 0x12u);
  }

  if (a1)
  {
    (**a1)(a1, 1);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__init_with_size[abi:ne200100]<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*,std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2450940F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>>(a1, a2);
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<AudioObjectPropertyAddress,int (*)(unsigned int,unsigned int,AudioObjectPropertyAddress const*,void *)>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_245094360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CoreAudioOrchestration_ADM_Loader;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void IOProcBrain::IOProcBrain(IOProcBrain *this)
{
  this->_vptr$IOProcCallable = &unk_2857FED20;
  this->_vptr$ADMIOConfigurable = &unk_2857FED40;
  this->admIOProc._vptr$IOProcCallable = &unk_2857FEC90;
  this->admIOProc._vptr$ADMIOConfigurable = &unk_2857FECB0;
  *&this->admIOProc.ioInfo.admCallback.__f_.__f_ = 0u;
  *&this->admIOProc.ioInfo.inputStreamIndicesInIOProc.__end_ = 0u;
  *&this->admIOProc.ioInfo.outputStreamIndicesInIOProc.__begin_ = 0u;
  this->admIOProc.ioInfo.outputStreamIndicesInIOProc.__cap_ = 0;
  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(&this->admIOProc.admInputs, 0, 0);
  ADMIO::ADMStreamsAndABLs::ADMStreamsAndABLs(&this->admIOProc.admOutputs, 0, 0);
}

void sub_245094580(_Unwind_Exception *a1)
{
  ADMIO::ADMStreamsAndABLs::~ADMStreamsAndABLs((v1 + 144));
  ADMIOConfiguration::~ADMIOConfiguration((v1 + 48));
  _Unwind_Resume(a1);
}

void IOProcBrain::~IOProcBrain(IOProcBrain *this)
{
  this->_vptr$IOProcCallable = &unk_2857FED20;
  this->_vptr$ADMIOConfigurable = &unk_2857FED40;
  ADMIO::~ADMIO(&this->admIOProc);
}

{
  this->_vptr$IOProcCallable = &unk_2857FED20;
  this->_vptr$ADMIOConfigurable = &unk_2857FED40;
  ADMIO::~ADMIO(&this->admIOProc);
}

void *IOProcBrain::doIO(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *(a2 + 32);
  result = ADMIO::doIO(a1 + 4, v7);
  v6 = a1[2];
  if (v6)
  {
    return v6(*(*(a2 + 24) + 8), **(a2 + 24), a1[3]);
  }

  return result;
}

void *IOProcBrain::doDSPInput(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return ADMIO::doIO((a1 + 32), v4);
}

uint64_t IOProcBrain::doClientIO(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    return v2(*(*(a2 + 24) + 8), **(a2 + 24), *(result + 24));
  }

  return result;
}

uint64_t IOProcBrain::installClientIOProc(IOProcBrain *this, int (*a2)(unint64_t, unint64_t, void *), void *a3)
{
  this->mClientIOProc.mProvidedCallback = a2;
  this->mClientIOProc.mProvidedClientData = a3;
  return 0;
}

uint64_t IOProcBrain::uninstallClientIOProc(IOProcBrain *this)
{
  this->mClientIOProc.mProvidedCallback = 0;
  this->mClientIOProc.mProvidedClientData = 0;
  return 0;
}

void ADMIO::ADMStreamsAndABLs::~ADMStreamsAndABLs(ADMIO::ADMStreamsAndABLs *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void ADMIO::~ADMIO(ADMIO *this)
{
  this->_vptr$IOProcCallable = &unk_2857FEC90;
  this->_vptr$ADMIOConfigurable = &unk_2857FECB0;
  begin = this->admOutputs.abls.__begin_;
  if (begin)
  {
    this->admOutputs.abls.__end_ = begin;
    operator delete(begin);
  }

  v3 = this->admOutputs.streams.__begin_;
  if (v3)
  {
    this->admOutputs.streams.__end_ = v3;
    operator delete(v3);
  }

  v4 = this->admInputs.abls.__begin_;
  if (v4)
  {
    this->admInputs.abls.__end_ = v4;
    operator delete(v4);
  }

  v5 = this->admInputs.streams.__begin_;
  if (v5)
  {
    this->admInputs.streams.__end_ = v5;
    operator delete(v5);
  }

  v6 = this->ioInfo.outputStreamIndicesInIOProc.__begin_;
  if (v6)
  {
    this->ioInfo.outputStreamIndicesInIOProc.__end_ = v6;
    operator delete(v6);
  }

  v7 = this->ioInfo.inputStreamIndicesInIOProc.__begin_;
  if (v7)
  {
    this->ioInfo.inputStreamIndicesInIOProc.__end_ = v7;
    operator delete(v7);
  }

  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](&this->ioInfo.admCallback);
}

uint64_t GetEntryForPath@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = 0;
  if (a1)
  {
    if (!MEMORY[0x245D62CE0](*MEMORY[0x277D85F18], &v5))
    {
      result = IORegistryEntryFromPath(v5, a1);
      goto LABEL_7;
    }

    printf("%s: Failed to get IOMainPort.\n");
  }

  else
  {
    printf("%s: Invalid argumnents: %p\n");
  }

  result = 0;
LABEL_7:
  *a2 = result;
  return result;
}

void sub_245094ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, io_object_t a10)
{
  RegistryEntry::~RegistryEntry(&a10);

  _Unwind_Resume(a1);
}

void RegistryEntry::~RegistryEntry(io_object_t *this)
{
  v1 = *this;
  if (v1)
  {
    IOObjectRelease(v1);
  }
}

uint64_t sub_245094B9C()
{
  v1 = *v0;
  sub_2450E5EF8();
  MEMORY[0x245D62B90](v1);
  return sub_2450E5F38();
}

uint64_t sub_245094C10()
{
  v1 = *v0;
  sub_2450E5EF8();
  MEMORY[0x245D62B90](v1);
  return sub_2450E5F38();
}

unint64_t sub_245094C54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2450953B4(*a1);
  *a2 = result;
  return result;
}

void sub_245094C90(char a1)
{
  v2 = *(v1 + 56);
  v3 = v2 == 3;
  v4 = v2 < 3;
  v5 = v3;
  if (a1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  *(v1 + 56) = v6;
  if ((a1 & 1) == 0)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_245094CC4();
  }
}

void sub_245094CC4()
{
  v1 = v0;
  swift_beginAccess();
  sub_2450953C4(v0 + 16, &v24);
  if (v25)
  {
    sub_24509551C(&v24, v26);
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v2 = sub_2450E5638();
    __swift_project_value_buffer(v2, qword_27EE0AEC8);

    v3 = sub_2450E5628();
    v4 = sub_2450E59B8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v24 = v6;
      *v5 = 136315394;
      v22 = *(v0 + 60);
      v7 = sub_2450E5E48();
      v9 = sub_2450C0EE8(v7, v8, &v24);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v23 = *(v0 + 56);
      v10 = sub_2450E5E48();
      v12 = sub_2450C0EE8(v10, v11, &v24);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_24508F000, v3, v4, "Availability: %s + %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D63500](v6, -1, -1);
      MEMORY[0x245D63500](v5, -1, -1);
    }

    v13 = *__swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_2450E0A40(*(v1 + 60));
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    sub_24509547C(&v24);
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v14 = sub_2450E5638();
    __swift_project_value_buffer(v14, qword_27EE0AEC8);
    v15 = sub_2450E5628();
    v16 = sub_2450E59A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v17 = 136315138;
      *&v24 = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
      v19 = sub_2450E5818();
      v21 = sub_2450C0EE8(v19, v20, v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_24508F000, v15, v16, "Tried to notify for %s, but no handler was set", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245D63500](v18, -1, -1);
      MEMORY[0x245D63500](v17, -1, -1);
    }
  }
}

uint64_t sub_245095020()
{
  sub_24509547C(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t getEnumTagSinglePayload for HardwareAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HardwareAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245095208()
{
  result = qword_27EDF67C8;
  if (!qword_27EDF67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF67C8);
  }

  return result;
}

unint64_t sub_245095260()
{
  result = qword_27EDF67D0;
  if (!qword_27EDF67D0)
  {
    type metadata accessor for IsolatedAudio_UseCaseID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF67D0);
  }

  return result;
}

_DWORD *sub_2450952C0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2450952DC()
{
  v1 = *v0;
  sub_2450E5EF8();
  sub_2450E5F28();
  return sub_2450E5F38();
}

uint64_t sub_245095350()
{
  v1 = *v0;
  sub_2450E5EF8();
  sub_2450E5F28();
  return sub_2450E5F38();
}

unint64_t sub_2450953B4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2450953C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67D8, &unk_2450F0830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_24509547C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67D8, &unk_2450F0830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24509551C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2450955D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_245095630(uint64_t a1)
{
  v2 = v1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_24508F000, v5, v6, "Activating connection for: %d", v7, 8u);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock;
  [*(v2 + OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock) lock];
  swift_beginAccess();
  sub_2450D63B8(&v10, a1);
  swift_endAccess();
  return [*(v2 + v8) unlock];
}

id sub_2450957A0(unsigned int a1, const char *a2)
{
  v4 = v2;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v6 = sub_2450E5638();
  __swift_project_value_buffer(v6, qword_27EE0AEC8);
  v7 = sub_2450E5628();
  v8 = sub_2450E5988();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_24508F000, v7, v8, a2, v9, 8u);
    MEMORY[0x245D63500](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock;
  [*(v4 + OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock) lock];
  swift_beginAccess();
  sub_2450D3374(a1);
  swift_endAccess();
  return [*(v4 + v10) unlock];
}

void sub_2450958F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_connections);

  v2 = *(v0 + OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock);
}

id sub_245095934()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2450959DC()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 48);
    }

    swift_unknownObjectRetain();
    sub_2450E5A48();
    type metadata accessor for AudioDeviceInfo();
    sub_24509BD08(&qword_27EDF69B8, type metadata accessor for AudioDeviceInfo);
    result = sub_2450E5948();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      do
      {
        v19 = *(v18 + 24) == *(v1 + 16) && *(v18 + 32) == *(v1 + 24);
        if (v19 || (sub_2450E5E68() & 1) != 0)
        {
          break;
        }

        v8 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        if (!sub_2450E5AB8())
        {
          goto LABEL_25;
        }

        type metadata accessor for AudioDeviceInfo();
        swift_dynamicCast();
        v18 = v20;
        v16 = v8;
        v17 = v9;
      }

      while (v20);
    }

LABEL_26:
    sub_24509BD4C();

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
LABEL_25:
        v18 = 0;
        goto LABEL_26;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245095C0C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 48);
    }

    swift_unknownObjectRetain();
    sub_2450E5A48();
    type metadata accessor for AudioDeviceInfo();
    sub_24509BD08(&qword_27EDF69B8, type metadata accessor for AudioDeviceInfo);
    result = sub_2450E5948();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      do
      {
        v19 = *(v18 + 24) == *(v1 + 32) && *(v18 + 32) == *(v1 + 40);
        if (v19 || (sub_2450E5E68() & 1) != 0)
        {
          break;
        }

        v8 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_16:
        if (!sub_2450E5AB8())
        {
          goto LABEL_25;
        }

        type metadata accessor for AudioDeviceInfo();
        swift_dynamicCast();
        v18 = v20;
        v16 = v8;
        v17 = v9;
      }

      while (v20);
    }

LABEL_26:
    sub_24509BD4C();

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
LABEL_25:
        v18 = 0;
        goto LABEL_26;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245095E3C(__int128 *a1)
{
  v3 = *(v1 + 48);

  sub_245099C18(a1, v3);

  v4 = sub_2450959DC();
  if (v4)
  {
    v5 = v4;
    sub_2450E5F18();
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);

    sub_2450E5838();
  }

  else
  {
    sub_2450E5F18();
  }

  v8 = sub_245095C0C();
  if (!v8)
  {
    return sub_2450E5F18();
  }

  v9 = v8;
  sub_2450E5F18();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);

  sub_2450E5838();
}

unint64_t sub_245095F54()
{
  v1 = 0x73656369766564;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_245095FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24509A58C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_245095FF0(uint64_t a1)
{
  v2 = sub_2450998E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24509602C(uint64_t a1)
{
  v2 = sub_2450998E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245096068()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2450960D4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF69A0, &qword_2450E7B50);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450998E8();
  sub_2450E5F58();
  v12 = v4[2];
  v13 = v4[3];
  v20 = 0;

  sub_2450E5DC8();
  if (v3)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v14 = v4[4];
    v15 = v4[5];
    v19 = 1;

    sub_2450E5DC8();

    v18 = v4[6];
    v17[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6830, &qword_2450E7AB0);
    sub_24509BC54();
    sub_2450E5E08();
    return (*(v7 + 8))(v10, v6);
  }
}

void *sub_2450962E0(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6820, &qword_2450E7AA8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v18 - v7;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[5] = 0xE000000000000000;
  v1[6] = MEMORY[0x277D84FA0];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450998E8();
  sub_2450E5F48();
  if (v2)
  {
  }

  else
  {
    v21 = 0;
    v10 = sub_2450E5CC8();
    v11 = v1[3];
    v1[2] = v10;
    v1[3] = v12;

    v20 = 1;
    v13 = sub_2450E5CC8();
    v14 = v1[5];
    v1[4] = v13;
    v1[5] = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6830, &qword_2450E7AB0);
    v19 = 2;
    sub_24509993C();
    sub_2450E5D08();
    (*(v5 + 8))(v8, v4);
    v17 = v1[6];
    v1[6] = v18[1];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_245096590()
{
  v1 = *v0;
  sub_2450E5EF8();
  sub_245095E3C(v3);
  return sub_2450E5F38();
}

uint64_t sub_2450965F8()
{
  sub_2450E5EF8();
  v1 = *v0;
  sub_245095E3C(v3);
  return sub_2450E5F38();
}

uint64_t sub_245096644()
{
  v1 = *(v0 + 120);
  v9 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_19:
    v2 = sub_2450E5A88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x245D627F0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v7 = v9;
          goto LABEL_17;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v4 = *(v1 + 8 * v3 + 32);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(v4 + 28))
      {
        sub_2450E5BA8();
        v6 = *(v9 + 16);
        sub_2450E5BC8();
        sub_2450E5BD8();
        sub_2450E5BB8();
      }

      else
      {
      }

      ++v3;
      if (v5 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_17:

  return v7;
}

unint64_t sub_245096794()
{
  sub_2450E5B58();

  v34 = 0xD000000000000012;
  v35 = 0x80000002450F27D0;
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x245D624D0](v1, v2);

  MEMORY[0x245D624D0](2594, 0xE200000000000000);
  strcpy(v33, "...name:");
  WORD1(v33[1]) = 0;
  HIDWORD(v33[1]) = -385875968;
  v3 = v0[5];
  v4 = v0[6];

  MEMORY[0x245D624D0](v3, v4);

  MEMORY[0x245D624D0](2594, 0xE200000000000000);
  MEMORY[0x245D624D0](v33[0], v33[1]);

  sub_2450E5B58();

  strcpy(v33, "...modelUID:");
  HIWORD(v33[1]) = -4864;
  v5 = v0[7];
  v6 = v0[8];

  MEMORY[0x245D624D0](v5, v6);

  MEMORY[0x245D624D0](2594, 0xE200000000000000);
  MEMORY[0x245D624D0](v33[0], v33[1]);

  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_2450E5B58();
  MEMORY[0x245D624D0](0x6C706D61732E2E2ELL, 0xEE003A6574617265);
  v7 = v0[9];
  sub_2450E5918();
  MEMORY[0x245D624D0](10, 0xE100000000000000);
  MEMORY[0x245D624D0](0, 0xE000000000000000);

  sub_2450E5B58();

  v33[0] = 0x73206D756E2E2E2ELL;
  v33[1] = 0xEF3A736D61657274;
  v8 = v0[15];
  if (v8 >> 62)
  {
    goto LABEL_35;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = sub_2450E5E48();
  MEMORY[0x245D624D0](v10);

  MEMORY[0x245D624D0](v33[0], v33[1]);

  v11 = v0[15];
  if (v11 >> 62)
  {
    if (v11 < 0)
    {
      v26 = v0[15];
    }

    if (!sub_2450E5A88())
    {
      return v34;
    }
  }

  else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v34;
  }

  MEMORY[0x245D624D0](10, 0xE100000000000000);
  v12 = v0[15];
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v27 = v0[15];
    }

    v13 = sub_2450E5A88();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    v29 = v12 & 0xFFFFFFFFFFFFFF8;
    v30 = v12 & 0xC000000000000001;
    v28 = v12;
    do
    {
      if (v30)
      {
        v15 = MEMORY[0x245D627F0](v14, v12);
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_33;
        }

        v15 = *(v12 + 8 * v14 + 32);

        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          sub_2450E5A88();
          goto LABEL_3;
        }
      }

      if (*(v15 + 28))
      {
        v17 = 0x7475706E49;
      }

      else
      {
        v17 = 0x74757074754FLL;
      }

      if (*(v15 + 28))
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE600000000000000;
      }

      sub_2450E5B58();

      strcpy(v33, "......str[");
      BYTE3(v33[1]) = 0;
      HIDWORD(v33[1]) = -369098752;
      v19 = sub_2450E5E48();
      MEMORY[0x245D624D0](v19);

      MEMORY[0x245D624D0](8285, 0xE200000000000000);
      MEMORY[0x245D624D0](v17, v18);

      MEMORY[0x245D624D0](977553696, 0xE400000000000000);
      v31 = *(v15 + 24);
      v20 = sub_2450E5E48();
      MEMORY[0x245D624D0](v20);

      MEMORY[0x245D624D0](0x6C656E6E61686320, 0xEA00000000003A73);
      v32 = *(v15 + 32);
      v21 = sub_2450E5E48();
      MEMORY[0x245D624D0](v21);

      MEMORY[0x245D624D0](v33[0], v33[1]);

      v22 = v0[15];
      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v24 = v0[15];
        }

        v23 = sub_2450E5A88();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v28;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_34;
      }

      if (v14 < v23 - 1)
      {
        MEMORY[0x245D624D0](10, 0xE100000000000000);
      }

      ++v14;
    }

    while (v16 != v13);
  }

  return v34;
}

unint64_t sub_245096D4C(char a1)
{
  result = 0x4449656369766564;
  switch(a1)
  {
    case 1:
      result = 0x4955656369766564;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x4449556C65646F6DLL;
      break;
    case 4:
      result = 0x6172656C706D6173;
      break;
    case 5:
      result = 0x726F70736E617274;
      break;
    case 6:
      v3 = 9;
      goto LABEL_13;
    case 7:
      v3 = 10;
LABEL_13:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0x736D6165727473;
      break;
    case 11:
      result = 0x7265666675426F69;
      break;
    case 12:
      result = 0x7461447475706E69;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_245096F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24509A6B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_245096F78(uint64_t a1)
{
  v2 = sub_24509A22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245096FB4(uint64_t a1)
{
  v2 = sub_24509A22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245096FF0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[15];

  return MEMORY[0x2821FE8D8](v0, 149, 7);
}

uint64_t sub_245097064(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6988, &qword_2450E7B48);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A22C();
  sub_2450E5F58();
  v11 = *(v3 + 16);
  LOBYTE(v31) = 0;
  sub_2450E5E28();
  if (!v2)
  {
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    LOBYTE(v31) = 1;

    sub_2450E5DC8();

    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v31) = 2;

    sub_2450E5DC8();

    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    LOBYTE(v31) = 3;

    sub_2450E5DC8();

    v19 = *(v3 + 72);
    LOBYTE(v31) = 4;
    sub_2450E5DE8();
    v20 = *(v3 + 80);
    LOBYTE(v31) = 5;
    sub_2450E5E28();
    v21 = *(v3 + 88);
    LOBYTE(v31) = 6;
    sub_2450E5DF8();
    v22 = *(v3 + 96);
    LOBYTE(v31) = 7;
    sub_2450E5DF8();
    v23 = *(v3 + 104);
    LOBYTE(v31) = 8;
    sub_2450E5DF8();
    v24 = *(v3 + 112);
    LOBYTE(v31) = 9;
    sub_2450E5DF8();
    v31 = *(v3 + 120);
    BYTE4(v30) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6858, &qword_2450E7AC0);
    sub_24509BBA0();
    sub_2450E5E08();
    v25 = *(v3 + 128);
    LOBYTE(v31) = 11;
    sub_2450E5DF8();
    v26 = *(v3 + 136);
    v27 = *(v3 + 140);
    LOBYTE(v31) = 12;
    BYTE4(v30) = v27;
    sub_2450E5DA8();
    v28 = *(v3 + 144);
    v29 = *(v3 + 148);
    LOBYTE(v31) = 13;
    BYTE4(v30) = v29;
    sub_2450E5DA8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_245097464(uint64_t *a1)
{
  v3 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6848, &qword_2450E7AB8);
  v5 = *(v24 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  *(v1 + 88) = 0u;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 120) = MEMORY[0x277D84F90];
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 140) = 1;
  *(v1 + 144) = 0;
  *(v1 + 148) = 1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A22C();
  sub_2450E5F48();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v26) = 0;
    *(v1 + 16) = sub_2450E5D28();
    LOBYTE(v26) = 1;
    v10 = sub_2450E5CC8();
    v11 = *(v1 + 32);
    *(v1 + 24) = v10;
    *(v1 + 32) = v12;

    LOBYTE(v26) = 2;
    v13 = sub_2450E5CC8();
    v14 = *(v1 + 48);
    *(v1 + 40) = v13;
    *(v1 + 48) = v15;

    LOBYTE(v26) = 3;
    v16 = sub_2450E5CC8();
    v17 = *(v1 + 64);
    *(v1 + 56) = v16;
    *(v1 + 64) = v18;

    LOBYTE(v26) = 4;
    sub_2450E5CE8();
    *(v1 + 72) = v19;
    LOBYTE(v26) = 5;
    *(v1 + 80) = sub_2450E5D28();
    LOBYTE(v26) = 6;
    *(v1 + 88) = sub_2450E5CF8();
    LOBYTE(v26) = 7;
    *(v1 + 96) = sub_2450E5CF8();
    LOBYTE(v26) = 8;
    *(v1 + 104) = sub_2450E5CF8();
    LOBYTE(v26) = 9;
    *(v1 + 112) = sub_2450E5CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6858, &qword_2450E7AC0);
    v25 = 10;
    sub_24509A280();
    sub_2450E5D08();
    v21 = *(v1 + 120);
    *(v1 + 120) = v26;

    LOBYTE(v26) = 11;
    *(v1 + 128) = sub_2450E5CF8();
    LOBYTE(v26) = 12;
    v22 = sub_2450E5CA8();
    *(v1 + 136) = v22;
    *(v1 + 140) = BYTE4(v22) & 1;
    LOBYTE(v26) = 13;
    v23 = sub_2450E5CA8();
    (*(v5 + 8))(v8, v24);
    *(v3 + 144) = v23;
    *(v3 + 148) = BYTE4(v23) & 1;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t sub_245097944()
{
  v1 = *v0;
  sub_2450E5EF8();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  sub_2450E5838();

  return sub_2450E5F38();
}

uint64_t sub_2450979A4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(v1 + 32);

  sub_2450E5838();
}

uint64_t sub_245097A00()
{
  sub_2450E5EF8();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  sub_2450E5838();

  return sub_2450E5F38();
}

uint64_t sub_245097A5C(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 24) == *(*a2 + 24) && *(*a1 + 32) == *(*a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_2450E5E68();
  }
}

uint64_t sub_245097AAC()
{
  v1 = *v0;
  v2 = 0x79636E6574616CLL;
  v3 = 0x6F69746365726964;
  v4 = 0x46746E6572727563;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x44496D6165727473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_245097B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24509AB54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_245097B90(uint64_t a1)
{
  v2 = sub_24509A334();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245097BCC(uint64_t a1)
{
  v2 = sub_24509A334();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245097C08()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_245097C64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6968, &qword_2450E7B40);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A334();
  sub_2450E5F58();
  v11 = *(v3 + 16);
  LOBYTE(v18) = 0;
  sub_2450E5DF8();
  if (!v2)
  {
    v12 = *(v3 + 24);
    LOBYTE(v18) = 1;
    sub_2450E5E28();
    LOBYTE(v18) = *(v3 + 28);
    v23 = 2;
    sub_24509BA98();
    sub_2450E5E08();
    v13 = *(v3 + 40);
    v14 = *(v3 + 48);
    v15 = *(v3 + 56);
    v16 = *(v3 + 64);
    v18 = *(v3 + 32);
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = 3;
    sub_24509BA44();
    sub_2450E5E08();
    v18 = *(v3 + 72);
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6890, &qword_2450E7AD0);
    sub_24509BAEC();
    sub_2450E5E08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_245097EBC(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6870, &qword_2450E7AC8);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A334();
  sub_2450E5F48();
  if (v2)
  {
    type metadata accessor for AudioStreamInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16) = 0;
    *(v1 + 16) = sub_2450E5CF8();
    LOBYTE(v16) = 1;
    *(v1 + 24) = sub_2450E5D28();
    v21 = 2;
    sub_24509A388();
    sub_2450E5D08();
    *(v1 + 28) = v16;
    v21 = 3;
    sub_24509A3DC();
    sub_2450E5D08();
    v10 = v17;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    *(v1 + 32) = v16;
    *(v1 + 40) = v10;
    *(v1 + 48) = v11;
    *(v1 + 56) = v12;
    *(v1 + 64) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6890, &qword_2450E7AD0);
    v21 = 4;
    sub_24509A430();
    sub_2450E5D08();
    (*(v5 + 8))(v8, v4);
    *(v1 + 72) = v16;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_2450981E0()
{
  v1 = *v0;
  sub_2450E5EF8();
  v2 = *(v1 + 24);
  sub_2450E5F28();
  return sub_2450E5F38();
}

uint64_t sub_245098258()
{
  sub_2450E5EF8();
  v1 = *(*v0 + 24);
  sub_2450E5F28();
  return sub_2450E5F38();
}

uint64_t sub_2450982B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68F0, &qword_2450E7AF8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B33C();
  sub_2450E5F58();
  v11 = *v3;
  v16[15] = 0;
  sub_2450E5DF8();
  if (!v2)
  {
    v16[14] = *(v3 + 8);
    v16[13] = 1;
    sub_24509B3E4();
    sub_2450E5E08();
    v12 = v3[2];
    v16[12] = 2;
    sub_2450E5DE8();
    v13 = *(v3 + 24);
    v16[11] = 3;
    sub_2450E5DD8();
    v14 = v3[4];
    v16[10] = 4;
    sub_2450E5DF8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2450984AC()
{
  v1 = *v0;
  v2 = 0x736C656E6E616863;
  v3 = 0x6152656C706D6173;
  v4 = 0x6C7265746E497369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x43506E6F6D6D6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_245098568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24509AD1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_245098590(uint64_t a1)
{
  v2 = sub_24509B33C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450985CC(uint64_t a1)
{
  v2 = sub_24509B33C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_245098608@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24509AEEC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_245098668(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 32) == *(a2 + 32))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

uint64_t sub_2450986C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68D0, &qword_2450E7AE8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B2E8();
  sub_2450E5F58();
  v12 = 0;
  sub_2450E5DE8();
  if (!v1)
  {
    v11 = 1;
    sub_2450E5DE8();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_245098848()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_24509886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_245098948(uint64_t a1)
{
  v2 = sub_24509B2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245098984(uint64_t a1)
{
  v2 = sub_24509B2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2450989C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24509B138(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_2450989EC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_2450986C0(a1);
}

uint64_t sub_245098A20()
{
  if (*v0)
  {
    result = 0x74616D726F66;
  }

  else
  {
    result = 0x6152656C706D6173;
  }

  *v0;
  return result;
}

uint64_t sub_245098A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6152656C706D6173 && a2 == 0xEF65676E61526574;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_245098B50(uint64_t a1)
{
  v2 = sub_24509A4E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245098B8C(uint64_t a1)
{
  v2 = sub_24509A4E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245098BFC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6950, &qword_2450E7B38);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A4E4();
  sub_2450E5F58();
  v16 = *(v3 + 16);
  v20 = 0;
  sub_24509B9F0();
  sub_2450E5E08();
  if (!v2)
  {
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    v13 = *(v3 + 56);
    v14 = *(v3 + 64);
    *&v16 = *(v3 + 32);
    BYTE8(v16) = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = 1;
    sub_24509BA44();
    sub_2450E5E08();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SampleRateRange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SampleRateRange(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245098E28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_245098E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_245098EE8(uint64_t *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68A8, &qword_2450E7AD8);
  v4 = *(v17 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v16 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509A4E4();
  sub_2450E5F48();
  if (v2)
  {
  }

  else
  {
    v9 = v4;
    v22 = 0;
    sub_24509A538();
    v10 = v17;
    sub_2450E5D08();
    *(v1 + 16) = v18;
    v22 = 1;
    sub_24509A3DC();
    sub_2450E5D08();
    (*(v9 + 8))(v7, v10);
    v12 = BYTE8(v18);
    v13 = v19;
    v14 = v20;
    v15 = v21;
    *(v1 + 32) = v18;
    *(v1 + 40) = v12;
    *(v1 + 48) = v13;
    *(v1 + 56) = v14;
    *(v1 + 64) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_245099120(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6938, &qword_2450E7B20);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6940, &qword_2450E7B28);
  v7 = *(v19 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6948, &qword_2450E7B30);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B8F4();
  sub_2450E5F58();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24509B948();
    sub_2450E5D58();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24509B99C();
    sub_2450E5D58();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_245099420@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  a2();
  v8 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_2450994B4()
{
  if (*v0)
  {
    result = 0x7475706E69;
  }

  else
  {
    result = 0x74757074756FLL;
  }

  *v0;
  return result;
}

uint64_t sub_2450994E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2450995BC(uint64_t a1)
{
  v2 = sub_24509B8F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450995F8(uint64_t a1)
{
  v2 = sub_24509B8F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_245099640@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24509967C(uint64_t a1)
{
  v2 = sub_24509B948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450996B8(uint64_t a1)
{
  v2 = sub_24509B948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450996F4(uint64_t a1)
{
  v2 = sub_24509B99C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245099730(uint64_t a1)
{
  v2 = sub_24509B99C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24509976C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24509B438(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_2450997BC()
{
  result = qword_27EDF6800;
  if (!qword_27EDF6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6800);
  }

  return result;
}

unint64_t sub_2450998E8()
{
  result = qword_27EDF6828;
  if (!qword_27EDF6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6828);
  }

  return result;
}

unint64_t sub_24509993C()
{
  result = qword_27EDF6838;
  if (!qword_27EDF6838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6830, &qword_2450E7AB0);
    sub_24509BD08(&qword_27EDF6840, type metadata accessor for AudioDeviceInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6838);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_245099A38@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24509CD94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_245099B14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_2450E5A88();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_2450E5AC8();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245099C18(__int128 *a1, uint64_t a2)
{
  v23 = a1[2];
  v24 = a1[3];
  v25 = *(a1 + 8);
  v21 = *a1;
  v22 = a1[1];
  sub_2450E5F38();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_2450E5A48();
    type metadata accessor for AudioDeviceInfo();
    sub_24509BD08(&qword_27EDF69B8, type metadata accessor for AudioDeviceInfo);
    result = sub_2450E5948();
    a2 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_2450E5AB8())
    {
LABEL_20:
      sub_24509BD4C();
      return MEMORY[0x245D62B90](v11);
    }

    type metadata accessor for AudioDeviceInfo();
    swift_dynamicCast();
    v15 = v20;
LABEL_10:
    sub_2450E5EF8();
    v16 = *(v15 + 24);
    v17 = *(v15 + 32);

    sub_2450E5838();

    v18 = sub_2450E5F38();

    v11 ^= v18;
  }

  if (v7)
  {
    v13 = v6;
LABEL_9:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(a2 + 48) + ((v13 << 9) | (8 * v14)));
    v20 = v15;

    goto LABEL_10;
  }

  v19 = v6;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      goto LABEL_20;
    }

    v7 = *(v4 + 8 * v13);
    ++v19;
    if (v7)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245099E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  v4 = v3 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v5 = *(a1 + 48);
    }

    else
    {
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (v3 < 0)
      {
        v6 = *(a2 + 48);
      }

      v7 = *(a1 + 48);

      v8 = sub_2450E5AA8();
LABEL_16:
      v14 = v8;

      if ((v14 & 1) == 0)
      {
        return 0;
      }

LABEL_17:
      v15 = sub_2450959DC();
      v16 = sub_2450959DC();
      if (v15)
      {
        if (v16)
        {
          if (*(v15 + 24) == *(v16 + 24) && *(v15 + 32) == *(v16 + 32))
          {

            goto LABEL_32;
          }

          v23 = sub_2450E5E68();

          if (v23)
          {
LABEL_32:
            v24 = sub_245095C0C();
            v25 = sub_245095C0C();
            if (v24)
            {
              if (v25)
              {
                if (*(v24 + 24) == *(v25 + 24) && *(v24 + 32) == *(v25 + 32))
                {

                  return 1;
                }

                else
                {
                  v39 = sub_2450E5E68();

                  return v39 & 1;
                }
              }
            }

            else if (!v25)
            {
              return 1;
            }

            goto LABEL_39;
          }

          return 0;
        }
      }

      else if (!v16)
      {
        goto LABEL_32;
      }

LABEL_39:

      return 0;
    }

    v13 = *(a1 + 48);

    v11 = v5;
    v12 = v3;
LABEL_15:
    v8 = sub_245099B14(v11, v12);
    goto LABEL_16;
  }

  if (v4)
  {
    if (v3 < 0)
    {
      v9 = *(a2 + 48);
    }

    else
    {
      v9 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = *(a1 + 48);

    v11 = v9;
    v12 = v2;
    goto LABEL_15;
  }

  if (v2 == v3)
  {
    goto LABEL_17;
  }

  if (*(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v17 = 1 << *(v2 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v2 + 56);
  v40 = (v17 + 63) >> 6;
  v20 = v3 + 56;

  v22 = 0;
  while (v19)
  {
    v26 = __clz(__rbit64(v19));
    v41 = (v19 - 1) & v19;
LABEL_49:
    v29 = *(*(v2 + 48) + 8 * (v26 | (v22 << 6)));
    v30 = *(v3 + 40);
    sub_2450E5EF8();
    v31 = *(v29 + 24);
    v32 = *(v29 + 32);

    sub_2450E5838();

    v33 = sub_2450E5F38();
    v34 = -1 << *(v3 + 32);
    v35 = v33 & ~v34;
    if (((*(v20 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
    {
LABEL_57:

      return 0;
    }

    v36 = ~v34;
    while (1)
    {
      v37 = *(*(v3 + 48) + 8 * v35);
      v38 = *(v37 + 24) == *(v29 + 24) && *(v37 + 32) == *(v29 + 32);
      if (v38 || (sub_2450E5E68() & 1) != 0)
      {
        break;
      }

      v35 = (v35 + 1) & v36;
      if (((*(v20 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    v19 = v41;
  }

  v27 = v22;
  while (1)
  {
    v22 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v22 >= v40)
    {

      goto LABEL_17;
    }

    v28 = *(v2 + 56 + 8 * v22);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v41 = (v28 - 1) & v28;
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24509A22C()
{
  result = qword_27EDF6850;
  if (!qword_27EDF6850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6850);
  }

  return result;
}

unint64_t sub_24509A280()
{
  result = qword_27EDF6860;
  if (!qword_27EDF6860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6858, &qword_2450E7AC0);
    sub_24509BD08(&qword_27EDF6868, type metadata accessor for AudioStreamInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6860);
  }

  return result;
}

unint64_t sub_24509A334()
{
  result = qword_27EDF6878;
  if (!qword_27EDF6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6878);
  }

  return result;
}

unint64_t sub_24509A388()
{
  result = qword_27EDF6880;
  if (!qword_27EDF6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6880);
  }

  return result;
}

unint64_t sub_24509A3DC()
{
  result = qword_27EDF6888;
  if (!qword_27EDF6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6888);
  }

  return result;
}

unint64_t sub_24509A430()
{
  result = qword_27EDF6898;
  if (!qword_27EDF6898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6890, &qword_2450E7AD0);
    sub_24509BD08(&qword_27EDF68A0, type metadata accessor for AudioRangedStreamFormatInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6898);
  }

  return result;
}

unint64_t sub_24509A4E4()
{
  result = qword_27EDF68B0;
  if (!qword_27EDF68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68B0);
  }

  return result;
}

unint64_t sub_24509A538()
{
  result = qword_27EDF68B8;
  if (!qword_27EDF68B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68B8);
  }

  return result;
}

uint64_t sub_24509A58C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000002450F2540 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002450F2560 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_2450E5E68();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24509A6B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4955656369766564 && a2 == 0xE900000000000044 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449556C65646F6DLL && a2 == 0xE800000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6172656C706D6173 && a2 == 0xEA00000000006574 || (sub_2450E5E68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F70736E617274 && a2 == 0xED00006570795474 || (sub_2450E5E68() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002450F25F0 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002450F2610 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002450F2630 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000002450F2650 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x736D6165727473 && a2 == 0xE700000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265666675426F69 && a2 == 0xEC000000657A6953 || (sub_2450E5E68() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461447475706E69 && a2 == 0xEF656372756F5361 || (sub_2450E5E68() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002450F26A0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_24509AB54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E6574616CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D6165727473 && a2 == 0xE800000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x46746E6572727563 && a2 == 0xED000074616D726FLL || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002450F2720 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24509AD1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43506E6F6D6D6F63 && a2 == 0xEF74616D726F464DLL || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C7265746E497369 && a2 == 0xED00006465766165 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002450F27F0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24509AEEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68D8, &qword_2450E7AF0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B33C();
  sub_2450E5F48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = 0;
  v11 = sub_2450E5CF8();
  v24 = 1;
  sub_24509B390();
  sub_2450E5D08();
  v12 = v25;
  v23 = 2;
  sub_2450E5CE8();
  v14 = v13;
  v22 = 3;
  v15 = sub_2450E5CD8();
  v19 = v12;
  v20 = v15;
  v21 = 4;
  v16 = sub_2450E5CF8();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v11;
  v18 = v20;
  *(a2 + 8) = v19;
  *(a2 + 16) = v14;
  *(a2 + 24) = v18 & 1;
  *(a2 + 32) = v16;
  return result;
}

double sub_24509B138(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF68C0, &qword_2450E7AE0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B2E8();
  sub_2450E5F48();
  v11[15] = 0;
  sub_2450E5CE8();
  v9 = v8;
  v11[14] = 1;
  sub_2450E5CE8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

unint64_t sub_24509B2E8()
{
  result = qword_27EDF68C8;
  if (!qword_27EDF68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68C8);
  }

  return result;
}

unint64_t sub_24509B33C()
{
  result = qword_27EDF68E0;
  if (!qword_27EDF68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68E0);
  }

  return result;
}

unint64_t sub_24509B390()
{
  result = qword_27EDF68E8;
  if (!qword_27EDF68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68E8);
  }

  return result;
}

unint64_t sub_24509B3E4()
{
  result = qword_27EDF68F8;
  if (!qword_27EDF68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF68F8);
  }

  return result;
}

uint64_t sub_24509B438(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6900, &qword_2450E7B00);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6908, &qword_2450E7B08);
  v28 = *(v6 - 8);
  v7 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6910, &unk_2450E7B10);
  v31 = *(v10 - 8);
  v11 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24509B8F4();
  v15 = v32;
  sub_2450E5F48();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_2450E5D38();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_2450BA264();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_2450E5B88();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730) + 48);
    *v24 = &type metadata for AudioStreamDirection;
    sub_2450E5C58();
    sub_2450E5B78();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24509B948();
    sub_2450E5C48();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24509B99C();
    sub_2450E5C48();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return v37 & 1;
}

unint64_t sub_24509B8F4()
{
  result = qword_27EDF6918;
  if (!qword_27EDF6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6918);
  }

  return result;
}

unint64_t sub_24509B948()
{
  result = qword_27EDF6928;
  if (!qword_27EDF6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6928);
  }

  return result;
}

unint64_t sub_24509B99C()
{
  result = qword_27EDF6930;
  if (!qword_27EDF6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6930);
  }

  return result;
}

unint64_t sub_24509B9F0()
{
  result = qword_27EDF6958;
  if (!qword_27EDF6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6958);
  }

  return result;
}

unint64_t sub_24509BA44()
{
  result = qword_27EDF6960;
  if (!qword_27EDF6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6960);
  }

  return result;
}

unint64_t sub_24509BA98()
{
  result = qword_27EDF6970;
  if (!qword_27EDF6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6970);
  }

  return result;
}

unint64_t sub_24509BAEC()
{
  result = qword_27EDF6978;
  if (!qword_27EDF6978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6890, &qword_2450E7AD0);
    sub_24509BD08(&qword_27EDF6980, type metadata accessor for AudioRangedStreamFormatInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6978);
  }

  return result;
}

unint64_t sub_24509BBA0()
{
  result = qword_27EDF6990;
  if (!qword_27EDF6990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6858, &qword_2450E7AC0);
    sub_24509BD08(&qword_27EDF6998, type metadata accessor for AudioStreamInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6990);
  }

  return result;
}

unint64_t sub_24509BC54()
{
  result = qword_27EDF69A8;
  if (!qword_27EDF69A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6830, &qword_2450E7AB0);
    sub_24509BD08(&qword_27EDF69B0, type metadata accessor for AudioDeviceInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69A8);
  }

  return result;
}

uint64_t sub_24509BD08(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreAudioOrchestratorClientXPC.SetProperty.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreAudioOrchestratorClientXPC.SetProperty.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s17NegotiateResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17NegotiateResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioDeviceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioDeviceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioSystemInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioSystemInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonPCMFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonPCMFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24509C454()
{
  result = qword_27EDF69C0;
  if (!qword_27EDF69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69C0);
  }

  return result;
}

unint64_t sub_24509C4AC()
{
  result = qword_27EDF69C8;
  if (!qword_27EDF69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69C8);
  }

  return result;
}

unint64_t sub_24509C504()
{
  result = qword_27EDF69D0;
  if (!qword_27EDF69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69D0);
  }

  return result;
}

unint64_t sub_24509C55C()
{
  result = qword_27EDF69D8;
  if (!qword_27EDF69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69D8);
  }

  return result;
}

unint64_t sub_24509C5B4()
{
  result = qword_27EDF69E0;
  if (!qword_27EDF69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69E0);
  }

  return result;
}

unint64_t sub_24509C60C()
{
  result = qword_27EDF69E8;
  if (!qword_27EDF69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69E8);
  }

  return result;
}

unint64_t sub_24509C664()
{
  result = qword_27EDF69F0;
  if (!qword_27EDF69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69F0);
  }

  return result;
}

unint64_t sub_24509C6BC()
{
  result = qword_27EDF69F8;
  if (!qword_27EDF69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF69F8);
  }

  return result;
}

unint64_t sub_24509C714()
{
  result = qword_27EDF6A00;
  if (!qword_27EDF6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A00);
  }

  return result;
}

unint64_t sub_24509C76C()
{
  result = qword_27EDF6A08;
  if (!qword_27EDF6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A08);
  }

  return result;
}

unint64_t sub_24509C7C4()
{
  result = qword_27EDF6A10;
  if (!qword_27EDF6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A10);
  }

  return result;
}

unint64_t sub_24509C81C()
{
  result = qword_27EDF6A18;
  if (!qword_27EDF6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A18);
  }

  return result;
}

unint64_t sub_24509C874()
{
  result = qword_27EDF6A20;
  if (!qword_27EDF6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A20);
  }

  return result;
}

unint64_t sub_24509C8CC()
{
  result = qword_27EDF6A28;
  if (!qword_27EDF6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A28);
  }

  return result;
}

unint64_t sub_24509C924()
{
  result = qword_27EDF6A30;
  if (!qword_27EDF6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A30);
  }

  return result;
}

unint64_t sub_24509C97C()
{
  result = qword_27EDF6A38;
  if (!qword_27EDF6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A38);
  }

  return result;
}

unint64_t sub_24509C9D4()
{
  result = qword_27EDF6A40;
  if (!qword_27EDF6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A40);
  }

  return result;
}

unint64_t sub_24509CA2C()
{
  result = qword_27EDF6A48;
  if (!qword_27EDF6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A48);
  }

  return result;
}

unint64_t sub_24509CA84()
{
  result = qword_27EDF6A50;
  if (!qword_27EDF6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A50);
  }

  return result;
}

unint64_t sub_24509CADC()
{
  result = qword_27EDF6A58;
  if (!qword_27EDF6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A58);
  }

  return result;
}

unint64_t sub_24509CB34()
{
  result = qword_27EDF6A60;
  if (!qword_27EDF6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A60);
  }

  return result;
}

unint64_t sub_24509CB8C()
{
  result = qword_27EDF6A68;
  if (!qword_27EDF6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A68);
  }

  return result;
}

unint64_t sub_24509CBE4()
{
  result = qword_27EDF6A70;
  if (!qword_27EDF6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A70);
  }

  return result;
}

unint64_t sub_24509CC3C()
{
  result = qword_27EDF6A78;
  if (!qword_27EDF6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A78);
  }

  return result;
}

unint64_t sub_24509CC94()
{
  result = qword_27EDF6A80;
  if (!qword_27EDF6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A80);
  }

  return result;
}

unint64_t sub_24509CCEC()
{
  result = qword_27EDF6A88;
  if (!qword_27EDF6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A88);
  }

  return result;
}

unint64_t sub_24509CD40()
{
  result = qword_27EDF6A90;
  if (!qword_27EDF6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6A90);
  }

  return result;
}

unint64_t sub_24509CD94(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

uint64_t sub_24509CDE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2450E5E68();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24509CE60(void *a1, uint64_t a2, uint64_t a3)
{
  v11[1] = a3;
  type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_2450E5E38();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24509CFD0(uint64_t *a1)
{
  type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_2450E5D48();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E5F48();
  if (!v1)
  {
    v9 = sub_2450E5CC8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

uint64_t sub_24509D198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_24509CDE4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_24509D1D0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_24509D170();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24509D208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509D25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509D2B0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  result = sub_24509CFD0(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v9;
  }

  return result;
}

uint64_t sub_24509D2E8(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_24509CE60(a1, *v2, v2[1]);
}

uint64_t sub_24509D310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }

  v8 = *v6;
  v9 = v6[1];
  sub_24509E850();
  swift_allocError();
  *v10 = v8;
  v10[1] = v9;
  return swift_willThrow();
}

uint64_t sub_24509D44C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24509D550(char a1)
{
  sub_2450E5EF8();
  MEMORY[0x245D62B90](a1 & 1);
  return sub_2450E5F38();
}

uint64_t sub_24509D598(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_24509D5C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2450E5E68();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24509D638(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for CoreAudioOrchestratorXPC.Response.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v50 = v7;
  v8 = sub_2450E5E38();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v41 - v10;
  v11 = type metadata accessor for CoreAudioOrchestratorXPC.Response.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v45 = v11;
  v43 = v12;
  v13 = sub_2450E5E38();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = *(v47 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v41 - v16;
  v46 = *(v4 - 8);
  v17 = *(v46 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = (&v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = v4;
  v52 = v5;
  v58 = v6;
  type metadata accessor for CoreAudioOrchestratorXPC.Response.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_2450E5E38();
  v56 = *(v24 - 8);
  v57 = v24;
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E5F58();
  (*(v20 + 16))(v23, v55, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v23;
    v30 = v23[1];
    LOBYTE(v59) = 1;
    v31 = v51;
    v32 = v57;
    sub_2450E5D58();
    v59 = v29;
    v60 = v30;
    type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure();
    swift_getWitnessTable();
    v33 = v54;
    sub_2450E5E08();
    (*(v53 + 8))(v31, v33);
    (*(v56 + 8))(v27, v32);
  }

  else
  {
    v35 = v46;
    v36 = v42;
    v37 = v61;
    (*(v46 + 32))(v42, v23, v61);
    LOBYTE(v59) = 0;
    v38 = v44;
    v39 = v57;
    sub_2450E5D58();
    v40 = v48;
    sub_2450E5E08();
    (*(v47 + 8))(v38, v40);
    (*(v35 + 8))(v36, v37);
    return (*(v56 + 8))(v27, v39);
  }
}

uint64_t sub_24509DB90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v72 = a5;
  v67 = type metadata accessor for CoreAudioOrchestratorXPC.Response.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v64 = sub_2450E5D48();
  v63 = *(v64 - 8);
  v9 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v69 = &v56 - v10;
  v11 = type metadata accessor for CoreAudioOrchestratorXPC.Response.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v66 = v11;
  v65 = v12;
  v61 = sub_2450E5D48();
  v60 = *(v61 - 8);
  v13 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v73 = &v56 - v14;
  type metadata accessor for CoreAudioOrchestratorXPC.Response.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_2450E5D48();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v18 = &v56 - v17;
  v71 = a2;
  v75 = a3;
  v62 = a4;
  v19 = type metadata accessor for CoreAudioOrchestratorXPC.Response();
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  v21 = (MEMORY[0x28223BE20])();
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v56 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v56 - v27;
  v29 = a1;
  v30 = a1[3];
  v31 = a1[4];
  v83 = v29;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v74 = v18;
  v32 = v78;
  sub_2450E5F48();
  if (!v32)
  {
    v59 = v26;
    v57 = v23;
    v33 = v73;
    v58 = v28;
    v34 = v74;
    v78 = v19;
    v35 = v77;
    *&v79 = sub_2450E5D38();
    sub_2450E58D8();
    swift_getWitnessTable();
    *&v81 = sub_2450E5A08();
    *(&v81 + 1) = v36;
    *&v82 = v37;
    *(&v82 + 1) = v38;
    sub_2450E59F8();
    swift_getWitnessTable();
    sub_2450E5968();
    v39 = v79;
    if (v79 == 2 || (v56 = v81, v79 = v81, v80 = v82, (sub_2450E5978() & 1) == 0))
    {
      v44 = sub_2450E5B88();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730) + 48);
      *v46 = v78;
      sub_2450E5C58();
      sub_2450E5B78();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
      swift_willThrow();
      (*(v76 + 8))(v34, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39)
      {
        LOBYTE(v79) = 1;
        sub_2450E5C48();
        v40 = v72;
        v41 = v70;
        type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure();
        swift_getWitnessTable();
        v42 = v64;
        v43 = v69;
        sub_2450E5D08();
        (*(v63 + 8))(v43, v42);
        (*(v76 + 8))(v34, v35);
        swift_unknownObjectRelease();
        v51 = *(&v79 + 1);
        v52 = v57;
        *v57 = v79;
        *(v52 + 1) = v51;
      }

      else
      {
        LOBYTE(v79) = 0;
        sub_2450E5C48();
        v40 = v72;
        v41 = v70;
        v52 = v59;
        v49 = v61;
        sub_2450E5D08();
        v50 = v76;
        (*(v60 + 8))(v33, v49);
        (*(v50 + 8))(v34, v77);
        swift_unknownObjectRelease();
      }

      v53 = v78;
      swift_storeEnumTagMultiPayload();
      v54 = *(v41 + 32);
      v55 = v58;
      v54(v58, v52, v53);
      v54(v40, v55, v53);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v83);
}

BOOL sub_24509E3C4(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_24509D518(*a1, *a2);
}

uint64_t sub_24509E3DC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_24509D550(*v1);
}

uint64_t sub_24509E3F0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_24509D528(a1, *v2);
}

uint64_t sub_24509E404(uint64_t a1, void *a2)
{
  sub_2450E5EF8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_24509D528(v8, *v2);
  return sub_2450E5F38();
}

uint64_t sub_24509E450(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_24509D598(*v1);
}

uint64_t sub_24509E464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_24509D44C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_24509E498@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_24509F028();
  *a2 = result;
  return result;
}

uint64_t sub_24509E4CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509E520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509E5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_24509D5C8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_24509E5E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509E63C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509E690(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24509E6E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24509E774()
{
  sub_2450E5EF8();
  MEMORY[0x245D62B90](0);
  return sub_2450E5F38();
}

uint64_t sub_24509E7B8()
{
  sub_2450E5EF8();
  MEMORY[0x245D62B90](0);
  return sub_2450E5F38();
}

unint64_t sub_24509E850()
{
  result = qword_27EDF6A98[0];
  if (!qword_27EDF6A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDF6A98);
  }

  return result;
}

uint64_t sub_24509E8D0(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    v6 = a1[4];
    result = type metadata accessor for CoreAudioOrchestratorXPC.Response.Failure();
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24509E950(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_24509EA68(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_24509EC50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24509EC98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24509ECE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24509ED20()
{
  result = qword_27EDF6BA0[0];
  if (!qword_27EDF6BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDF6BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCConnectionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XPCConnectionError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_24509F04C()
{
  v25 = &type metadata for CoreAudioOrchestrationFeatureFlags;
  v26 = sub_24509F5B4();
  v1 = sub_2450E5618();
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  if ((v1 & 1) == 0)
  {
    v6 = *(v0 + 16);
    v7 = sub_2450CD3F0();
    sub_2450CACC0(v7, &v22);
    sub_2450CD01C(&v22, v24);
    if (v24[0])
    {
      v8 = v26;
      v9 = v25;
      v10 = v24[1];
      v29 = v24[0];
      sub_24509F608(&v29, &qword_27EDF6DB8, &unk_2450E8C40);
      v30 = v10;
      sub_24509F608(&v30, &qword_27EDF6DB8, &unk_2450E8C40);
      v31 = v8;
      sub_24509F608(&v31, &qword_27EDF6DC0, &qword_2450EAD50);
      v32 = v27;
      v33 = v28;
      sub_24509F608(&v32, &qword_27EDF6DC8, &unk_2450E8C50);
      if (v9)
      {
        if (qword_27EDF6748 != -1)
        {
          swift_once();
        }

        v11 = sub_2450E5638();
        __swift_project_value_buffer(v11, qword_27EE0AEC8);
        v12 = sub_2450E5628();
        v13 = sub_2450E59B8();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_24508F000, v12, v13, "ADM Negotiate success", v14, 2u);
          MEMORY[0x245D63500](v14, -1, -1);
        }

        sub_2450CD260(&v22);
        v16 = v15;
        v36 = v22;
        sub_24509F608(&v36, &qword_27EDF6DB0, &qword_2450EBB20);
        v35 = *(&v22 + 1);
        sub_24509F608(&v35, &qword_27EDF6DB0, &qword_2450EBB20);
        v34 = v23;
        sub_24509F608(&v34, &qword_27EDF6DB0, &qword_2450EBB20);
        if ((v16 & 0x100) != 0 || (v16 & 1) == 0)
        {
          v3 = sub_2450E5628();
          v17 = sub_2450E59B8();
          if (os_log_type_enabled(v3, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            v19 = "ADM Adapt failed";
            goto LABEL_24;
          }
        }

        else
        {
          v3 = sub_2450E5628();
          v17 = sub_2450E59B8();
          if (os_log_type_enabled(v3, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            v19 = "ADM Adapt success";
LABEL_24:
            _os_log_impl(&dword_24508F000, v3, v17, v19, v18, 2u);
            MEMORY[0x245D63500](v18, -1, -1);
          }
        }

LABEL_25:

        goto LABEL_26;
      }

      v36 = v22;
      sub_24509F608(&v36, &qword_27EDF6DB0, &qword_2450EBB20);
      v35 = *(&v22 + 1);
      sub_24509F608(&v35, &qword_27EDF6DB0, &qword_2450EBB20);
      v34 = v23;
      v20 = &v34;
    }

    else
    {
      v32 = v22;
      sub_24509F608(&v32, &qword_27EDF6DB0, &qword_2450EBB20);
      v36 = *(&v22 + 1);
      sub_24509F608(&v36, &qword_27EDF6DB0, &qword_2450EBB20);
      v35 = v23;
      v20 = &v35;
    }

    sub_24509F608(v20, &qword_27EDF6DB0, &qword_2450EBB20);
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v21 = sub_2450E5638();
    __swift_project_value_buffer(v21, qword_27EE0AEC8);
    v3 = sub_2450E5628();
    v17 = sub_2450E59B8();
    if (!os_log_type_enabled(v3, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "ADM Negotiate failed";
    goto LABEL_24;
  }

  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E59B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "ADM not used, featureflag set: CoreAudioOrchestration_DisableADM", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

LABEL_26:
}

uint64_t sub_24509F558()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_24509F5B4()
{
  result = qword_27EDF6DA8;
  if (!qword_27EDF6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DA8);
  }

  return result;
}

uint64_t sub_24509F608(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24509F68C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24509F6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24509F760(void *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = 0;
  sub_24509FAE0(a2, v39);
  v12 = objc_allocWithZone(type metadata accessor for ClientSharedAudioNSXPCService());
  *&v12[OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_connections] = MEMORY[0x277D84FA0];
  v13 = OBJC_IVAR____TtC22CoreAudioOrchestration29ClientSharedAudioNSXPCService_lock;
  v14 = objc_allocWithZone(MEMORY[0x277CCAAF8]);
  v15 = a1;
  *&v12[v13] = [v14 init];
  sub_24509FAE0(v39, v38);
  v16 = &v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_entitlementString];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  *&v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_interface] = v15;
  sub_24509FAE0(v38, &v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_interfaceDelegate]);
  v17 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v18 = v15;
  v35 = a3;
  v19 = v6;
  v20 = sub_2450E57C8();
  v21 = [v17 initWithMachServiceName_];

  *&v12[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_listener] = v21;
  v22 = *(v16 + 1);
  *v16 = a5;
  *(v16 + 1) = a6;

  v37.receiver = v12;
  v37.super_class = type metadata accessor for NSXPCService();
  v23 = objc_msgSendSuper2(&v37, sel_init);
  v24 = OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_listener;
  v25 = *&v23[OBJC_IVAR____TtC22CoreAudioOrchestration12NSXPCService_listener];
  v26 = v23;
  [v25 setDelegate_];
  [*&v23[v24] activate];

  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v27 = *(v19 + 16);
  *(v19 + 16) = v23;

  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v28 = sub_2450E5638();
  __swift_project_value_buffer(v28, qword_27EE0AEC8);

  v29 = sub_2450E5628();
  v30 = sub_2450E5988();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136315138;
    v33 = sub_2450C0EE8(v35, a4, v39);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_24508F000, v29, v30, "Started listening for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x245D63500](v32, -1, -1);
    MEMORY[0x245D63500](v31, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v19;
}

uint64_t sub_24509FA84()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24509FAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_24509FB3C()
{
  v2 = *(v0 + 16);

  v3 = sub_2450CC460();

  if (!v1)
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v4 = sub_2450E5638();
    __swift_project_value_buffer(v4, qword_27EE0AEC8);
    v5 = sub_2450E5628();
    v6 = sub_2450E5988();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_24508F000, v5, v6, "Launch Received: %d", v7, 8u);
      MEMORY[0x245D63500](v7, -1, -1);
    }
  }
}

id static Stravinsky.GetOrchestrationDelegate()()
{
  if (qword_27EDF6710 != -1)
  {
    swift_once();
  }

  v1 = qword_27EDF6DD0;

  return v1;
}

id Stravinsky.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Stravinsky.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Stravinsky();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Stravinsky.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Stravinsky();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24509FE08()
{
  result = [objc_allocWithZone(type metadata accessor for CoreAudioOrchestrationDelegate()) init];
  qword_27EDF6DD0 = result;
  return result;
}

id IsolatedCoreAudioClientServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IsolatedCoreAudioClientServer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IsolatedCoreAudioClientServer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IsolatedCoreAudioClientServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IsolatedCoreAudioClientServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24509FF94(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E30, &qword_2450E9278);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v58 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E38, &qword_2450E9280);
  v70 = *(v71 - 8);
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E40, &qword_2450E9288);
  v67 = *(v68 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v58 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E48, &qword_2450E9290);
  v65 = *(v78 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v58 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E50, &qword_2450E9298);
  v62 = *(v63 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v58 - v14;
  *&v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E58, &qword_2450E92A0);
  v64 = *(v76 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v76);
  v17 = &v58 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E60, &qword_2450E92A8);
  v59 = *(v60 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E68, &qword_2450E92B0);
  v75 = *(v20 - 8);
  v21 = *(v75 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6E70, &qword_2450E92B8);
  v25 = *(v24 - 8);
  v80 = v24;
  v81 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A2D88();
  v30 = v28;
  sub_2450E5F58();
  v31 = *v2;
  v32 = v2[1];
  v33 = *(v2 + 4);
  v34 = *(v2 + 5);
  v35 = *(v2 + 7);
  v36 = (v35 >> 59) & 6 | (v34 >> 63);
  if (v36 <= 2)
  {
    v41 = v75;
    v42 = v76;
    v44 = v77;
    v43 = v78;
    v79 = v31;
    if (v36)
    {
      if (v36 == 1)
      {
        LOBYTE(v82) = 2;
        sub_2450A307C();
        v45 = v17;
        v46 = v80;
        sub_2450E5D58();
        *&v82 = v79;
        sub_2450A30D0();
        sub_2450E5E08();
        (*(v64 + 8))(v45, v42);
      }

      else
      {
        LOBYTE(v82) = 4;
        v76 = v32;
        sub_2450A2F2C();
        v46 = v80;
        sub_2450E5D58();
        v82 = v79;
        v83 = v76;
        BYTE4(v84) = BYTE4(v33);
        LODWORD(v84) = v33;
        sub_2450A2F80();
        sub_2450E5E08();
        (*(v65 + 8))(v44, v43);
      }

      return (*(v81 + 8))(v30, v46);
    }

    else
    {
      LOBYTE(v82) = 0;
      sub_2450A31CC();
      v53 = v80;
      sub_2450E5D58();
      *&v82 = v79;
      sub_2450A3220();
      sub_2450E5E08();
      (*(v41 + 8))(v23, v20);
      return (*(v81 + 8))(v30, v53);
    }
  }

  else if (v36 > 4)
  {
    v47 = *(v2 + 6);
    v48 = v80;
    if (v36 == 5)
    {
      v49 = v34 & 0x7FFFFFFFFFFFFFFFLL;
      v50 = v35 & 0xCFFFFFFFFFFFFFFFLL;
      LOBYTE(v82) = 7;
      v79 = v31;
      v76 = v32;
      sub_2450A2DDC();
      v51 = v72;
      sub_2450E5D58();
      v82 = v79;
      v83 = v76;
      v84 = v33;
      v85 = v49;
      v86 = v47;
      v87 = v50;
      sub_2450A2AA0();
      v52 = v74;
      sub_2450E5E08();
      (*(v73 + 8))(v51, v52);
    }

    else
    {
      if (v32 | v31 | *(&v31 + 1) | *(&v32 + 1) | v33 | v34 | v47 || v35 != 0x3000000000000000)
      {
        LOBYTE(v82) = 3;
        sub_2450A2FD4();
        v55 = v61;
        sub_2450E5D58();
        sub_2450A3028();
        v56 = v63;
        sub_2450E5E08();
        v57 = &v88;
      }

      else
      {
        LOBYTE(v82) = 1;
        sub_2450A3124();
        v55 = v58;
        sub_2450E5D58();
        sub_2450A3178();
        v56 = v60;
        sub_2450E5E08();
        v57 = &v87;
      }

      (*(*(v57 - 32) + 8))(v55, v56);
    }

    return (*(v81 + 8))(v30, v48);
  }

  else
  {
    v76 = v2[1];
    v79 = v31;
    v37 = v80;
    if (v36 == 3)
    {
      LOBYTE(v82) = 5;
      sub_2450A2E84();
      v38 = v66;
      sub_2450E5D58();
      v82 = v79;
      v83 = v76;
      BYTE4(v84) = BYTE4(v33);
      LODWORD(v84) = v33;
      sub_2450A2ED8();
      v39 = v68;
      sub_2450E5E08();
      v40 = &v89;
    }

    else
    {
      LOBYTE(v82) = 6;
      sub_2450A2E30();
      v38 = v69;
      sub_2450E5D58();
      v82 = v79;
      v83 = v76;
      v84 = v33;
      LODWORD(v85) = v34;
      sub_2450A2D34();
      v39 = v71;
      sub_2450E5E08();
      v40 = &v90;
    }

    (*(*(v40 - 32) + 8))(v38, v39);
    return (*(v81 + 8))(v28, v37);
  }
}

uint64_t sub_2450A0A28(uint64_t a1)
{
  v2 = sub_2450A2E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0A64(uint64_t a1)
{
  v2 = sub_2450A2E84();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450A0AA0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x746169746F67656ELL;
    v6 = 0x65706F7250746567;
    if (v1 != 6)
    {
      v6 = 0x65706F7250746573;
    }

    if (v1 != 4)
    {
      v5 = 0x4D44417470616461;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 2)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD00000000000001CLL;
    if (!*v0)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2450A0BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2450A3274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2450A0BEC(uint64_t a1)
{
  v2 = sub_2450A2D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0C28(uint64_t a1)
{
  v2 = sub_2450A2D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0C68(uint64_t a1)
{
  v2 = sub_2450A31CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0CA4(uint64_t a1)
{
  v2 = sub_2450A31CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0CE0(uint64_t a1)
{
  v2 = sub_2450A3124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0D1C(uint64_t a1)
{
  v2 = sub_2450A3124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0D58(uint64_t a1)
{
  v2 = sub_2450A2FD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0D94(uint64_t a1)
{
  v2 = sub_2450A2FD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0DD0(uint64_t a1)
{
  v2 = sub_2450A2E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0E0C(uint64_t a1)
{
  v2 = sub_2450A2E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0E48(uint64_t a1)
{
  v2 = sub_2450A2F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0E84(uint64_t a1)
{
  v2 = sub_2450A2F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0EC0(uint64_t a1)
{
  v2 = sub_2450A307C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0EFC(uint64_t a1)
{
  v2 = sub_2450A307C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A0F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A0FB8(uint64_t a1)
{
  v2 = sub_2450A2DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A0FF4(uint64_t a1)
{
  v2 = sub_2450A2DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A1030@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2450A3528(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_2450A108C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7178, &qword_2450EA358);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A6878();
  sub_2450E5F58();
  v11[1] = a2;
  type metadata accessor for AggregateDescription();
  sub_2450A698C(&qword_27EDF7188, type metadata accessor for AggregateDescription);
  sub_2450E5E08();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2450A122C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A12B8(uint64_t a1)
{
  v2 = sub_2450A6878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A12F4(uint64_t a1)
{
  v2 = sub_2450A6878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1330@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[5] = 0;
  a1[7] = 0;
}

void *sub_2450A1344@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2450A46D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2450A138C(uint64_t a1)
{
  v2 = sub_2450A6824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A13C8(uint64_t a1)
{
  v2 = sub_2450A6824();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A1404@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3000000000000000;
  return result;
}

uint64_t sub_2450A1460(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7148, &unk_2450EA340);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A67D0();
  sub_2450E5F58();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7158, &qword_2450EC1F0);
  sub_2450A6920(&qword_27EDF7160);
  sub_2450E5E08();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2450A15FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002450F2AA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2450E5E68();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2450A1690(uint64_t a1)
{
  v2 = sub_2450A67D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A16CC(uint64_t a1)
{
  v2 = sub_2450A67D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1708@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[5] = 0x8000000000000000;
  a1[7] = 0;
}

void *sub_2450A1720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2450A4878(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2450A1768(uint64_t a1)
{
  v2 = sub_2450A677C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A17A4(uint64_t a1)
{
  v2 = sub_2450A677C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450A17E0@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x3000000000000000;
  return result;
}

uint64_t sub_2450A1870(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_2450E5F58();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2450A19FC(uint64_t a1)
{
  v2 = sub_2450A6728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A1A38(uint64_t a1)
{
  v2 = sub_2450A6728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1B04(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2450E5F58();
  v14 = v6[1];
  v16 = *v6;
  v17[0] = v14;
  *(v17 + 13) = *(v6 + 29);
  sub_2450A66D4();
  sub_2450E5E08();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2450A1C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A1CF0(uint64_t a1)
{
  v2 = sub_2450A6680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A1D2C(uint64_t a1)
{
  v2 = sub_2450A6680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A1D70@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 36);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 36) = v7;
  *(a2 + 40) = a1;
  *(a2 + 56) = 0x1000000000000000;
}

double sub_2450A1E30@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_2450A4A20(a1, a2, a3, a4, &v9);
  if (!v5)
  {
    result = *&v9;
    v8 = *v10;
    *a5 = v9;
    *(a5 + 16) = v8;
    *(a5 + 29) = *&v10[13];
  }

  return result;
}

uint64_t sub_2450A1E88(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F80, &qword_2450E9318);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A4D68();
  sub_2450E5F58();
  v10 = v2[1];
  v13 = *v2;
  v14[0] = v10;
  *(v14 + 12) = *(v2 + 28);
  sub_2450A4E10(v2, v12);
  sub_2450A4E48();
  sub_2450E5E08();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2450A2014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450A209C(uint64_t a1)
{
  v2 = sub_2450A4D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A20D8(uint64_t a1)
{
  v2 = sub_2450A4D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A2114@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v4;
  *(a1 + 56) = 0x2000000000000000;
}

double sub_2450A2174@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2450A4BC4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 12);
    *(a2 + 28) = *(v7 + 12);
  }

  return result;
}

uint64_t sub_2450A21B8(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[12] = *(v1 + 28);
  return sub_2450A1E88(a1);
}

uint64_t sub_2450A21F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6FA0, &qword_2450E9328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450A5158();
  sub_2450E5F58();
  v11 = v3[1];
  v19 = *v3;
  v20[0] = v11;
  *(v20 + 12) = *(v3 + 28);
  v12 = v3[1];
  v16 = *v3;
  v17[0] = v12;
  *(v17 + 12) = *(v3 + 28);
  v15 = 0;
  sub_2450A51DC(&v19, v14);
  sub_2450A4E48();
  sub_2450E5E08();

  if (!v2)
  {
    v18 = v3[3];
    v16 = v3[3];
    v15 = 1;
    sub_2450A5238(&v18, v14);
    sub_2450A2C60();
    sub_2450E5E08();
    sub_2450A5294(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2450A23DC()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x73736572646461;
  }

  *v0;
  return result;
}

uint64_t sub_2450A2410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2450A24EC(uint64_t a1)
{
  v2 = sub_2450A5158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450A2528(uint64_t a1)
{
  v2 = sub_2450A5158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450A2564@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v11;
  v5 = v12;
  v6 = DWORD2(v11) | 0x8000000000000000;
  v7 = *(&v12 + 1) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *a1 = v10[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  return sub_2450A2644(v10, &v9);
}

double sub_2450A25C4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2450A4E9C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2450A2690(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2450A26D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_22CoreAudioOrchestration0aB21OrchestratorClientXPCC7RequestO(uint64_t a1)
{
  v1 = (*(a1 + 56) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 40) >> 63);
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2450A2790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 44);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_2450A27E0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = (v4 >> 1) << 32;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450A2844(uint64_t result)
{
  v1 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 40) &= ~0x8000000000000000;
  *(result + 56) = v1;
  return result;
}

uint64_t sub_2450A2860(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL | (((a2 >> 1) & 3) << 60);
    *(result + 44) = a2 << 31;
    *(result + 56) = v2;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0x3000000000000000;
  }

  return result;
}

uint64_t sub_2450A28B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2450A2900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2450A2960()
{
  result = qword_27EDF6DD8;
  if (!qword_27EDF6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DD8);
  }

  return result;
}

unint64_t sub_2450A29B4()
{
  result = qword_27EDF6DE0;
  if (!qword_27EDF6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DE0);
  }

  return result;
}

unint64_t sub_2450A2A4C()
{
  result = qword_27EDF6DE8;
  if (!qword_27EDF6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DE8);
  }

  return result;
}

unint64_t sub_2450A2AA0()
{
  result = qword_27EDF6DF0;
  if (!qword_27EDF6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DF0);
  }

  return result;
}

unint64_t sub_2450A2B00()
{
  result = qword_27EDF6DF8;
  if (!qword_27EDF6DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6E00, qword_2450E9200);
    sub_2450A2B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6DF8);
  }

  return result;
}

unint64_t sub_2450A2B84()
{
  result = qword_27EDF6E08;
  if (!qword_27EDF6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E08);
  }

  return result;
}

unint64_t sub_2450A2BDC()
{
  result = qword_27EDF6E10;
  if (!qword_27EDF6E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDF6E00, qword_2450E9200);
    sub_2450A2C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E10);
  }

  return result;
}

unint64_t sub_2450A2C60()
{
  result = qword_27EDF6E18;
  if (!qword_27EDF6E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E18);
  }

  return result;
}

unint64_t sub_2450A2CE0()
{
  result = qword_27EDF6E20;
  if (!qword_27EDF6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E20);
  }

  return result;
}

unint64_t sub_2450A2D34()
{
  result = qword_27EDF6E28;
  if (!qword_27EDF6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E28);
  }

  return result;
}

unint64_t sub_2450A2D88()
{
  result = qword_27EDF6E78;
  if (!qword_27EDF6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E78);
  }

  return result;
}

unint64_t sub_2450A2DDC()
{
  result = qword_27EDF6E80;
  if (!qword_27EDF6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E80);
  }

  return result;
}

unint64_t sub_2450A2E30()
{
  result = qword_27EDF6E88;
  if (!qword_27EDF6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E88);
  }

  return result;
}

unint64_t sub_2450A2E84()
{
  result = qword_27EDF6E90;
  if (!qword_27EDF6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E90);
  }

  return result;
}

unint64_t sub_2450A2ED8()
{
  result = qword_27EDF6E98;
  if (!qword_27EDF6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6E98);
  }

  return result;
}

unint64_t sub_2450A2F2C()
{
  result = qword_27EDF6EA0;
  if (!qword_27EDF6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EA0);
  }

  return result;
}

unint64_t sub_2450A2F80()
{
  result = qword_27EDF6EA8;
  if (!qword_27EDF6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EA8);
  }

  return result;
}

unint64_t sub_2450A2FD4()
{
  result = qword_27EDF6EB0;
  if (!qword_27EDF6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EB0);
  }

  return result;
}

unint64_t sub_2450A3028()
{
  result = qword_27EDF6EB8;
  if (!qword_27EDF6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EB8);
  }

  return result;
}

unint64_t sub_2450A307C()
{
  result = qword_27EDF6EC0;
  if (!qword_27EDF6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EC0);
  }

  return result;
}

unint64_t sub_2450A30D0()
{
  result = qword_27EDF6EC8;
  if (!qword_27EDF6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EC8);
  }

  return result;
}

unint64_t sub_2450A3124()
{
  result = qword_27EDF6ED0;
  if (!qword_27EDF6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6ED0);
  }

  return result;
}

unint64_t sub_2450A3178()
{
  result = qword_27EDF6ED8;
  if (!qword_27EDF6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6ED8);
  }

  return result;
}

unint64_t sub_2450A31CC()
{
  result = qword_27EDF6EE0;
  if (!qword_27EDF6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EE0);
  }

  return result;
}

unint64_t sub_2450A3220()
{
  result = qword_27EDF6EE8;
  if (!qword_27EDF6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6EE8);
  }

  return result;
}

uint64_t sub_2450A3274(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000002450F2A20 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002450F2A40 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002450F2A60 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002450F2A80 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746169746F67656ELL && a2 == 0xEC0000004D444165 || (sub_2450E5E68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D44417470616461 && a2 == 0xE800000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65706F7250746567 && a2 == 0xEB00000000797472 || (sub_2450E5E68() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F7250746573 && a2 == 0xEB00000000797472)
  {

    return 7;
  }

  else
  {
    v5 = sub_2450E5E68();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2450A3528@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v93 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6EF0, &qword_2450E92C0);
  v90 = *(v89 - 8);
  v3 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  v97 = &v71 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6EF8, &qword_2450E92C8);
  v87 = *(v88 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v96 = &v71 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F00, &qword_2450E92D0);
  v85 = *(v86 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v92 = &v71 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F08, &qword_2450E92D8);
  v83 = *(v84 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v95 = &v71 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F10, &qword_2450E92E0);
  v81 = *(v82 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v94 = &v71 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F18, &qword_2450E92E8);
  v79 = *(v80 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v91 = &v71 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F20, &qword_2450E92F0);
  v77 = *(v78 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F28, &qword_2450E92F8);
  v76 = *(v18 - 8);
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6F30, &unk_2450E9300);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - v25;
  v29 = a1[3];
  v27 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_2450A2D88();
  v28 = v98;
  sub_2450E5F48();
  LOBYTE(v29) = v28;
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v99);
  }

  v73 = v21;
  v72 = v18;
  v74 = v17;
  v30 = v94;
  v31 = v95;
  v32 = v96;
  v33 = v97;
  v75 = v23;
  v98 = v22;
  v34 = sub_2450E5D38();
  v35 = (2 * *(v34 + 16)) | 1;
  v108 = v34;
  v109 = v34 + 32;
  v110 = 0;
  v111 = v35;
  v36 = sub_2450BA298();
  if (v36 == 8 || v110 != v111 >> 1)
  {
    v45 = sub_2450E5B88();
    swift_allocError();
    v47 = v46;
    v48 = v26;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF6920, &qword_2450E8730) + 48);
    *v47 = &type metadata for CoreAudioOrchestratorClientXPC.Request;
    v50 = v98;
    sub_2450E5C58();
    sub_2450E5B78();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v75 + 8))(v48, v50);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v99);
  }

  if (v36 > 3u)
  {
    v52 = v98;
    v53 = v75;
    if (v36 > 5u)
    {
      if (v36 == 6)
      {
        LOBYTE(v100) = 6;
        sub_2450A2E30();
        sub_2450E5C48();
        sub_2450A2CE0();
        v56 = v88;
        v40 = v32;
        sub_2450E5D08();
        v85 = 0;
        (*(v87 + 8))(v32, v56);
        (*(v53 + 8))(v26, v52);
        swift_unknownObjectRelease();
        v44 = v100;
        v26 = v103;
        v97 = v102;
        v98 = v101;
        LODWORD(v31) = v104;
        LOBYTE(v29) = BYTE4(v104);
        v41 = v105;
        v43 = HIDWORD(v104) >> 8;
        v42 = 0x2000000000000000;
      }

      else
      {
        LOBYTE(v100) = 7;
        sub_2450A2DDC();
        sub_2450E5C48();
        sub_2450A2A4C();
        v64 = v89;
        sub_2450E5D08();
        v85 = 0;
        (*(v90 + 8))(v33, v64);
        (*(v53 + 8))(v26, v52);
        swift_unknownObjectRelease();
        v44 = v100;
        v26 = v103;
        v97 = v102;
        v98 = v101;
        LODWORD(v31) = v104;
        v40 = v106;
        v41 = v105 | 0x8000000000000000;
        v42 = v107 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        v29 = HIDWORD(v104);
        v43 = v104 >> 40;
      }
    }

    else if (v36 == 4)
    {
      LOBYTE(v100) = 4;
      sub_2450A2F2C();
      sub_2450E5C48();
      sub_2450A452C();
      v54 = v84;
      v40 = v31;
      sub_2450E5D08();
      v85 = 0;
      (*(v83 + 8))(v31, v54);
      (*(v53 + 8))(v26, v52);
      swift_unknownObjectRelease();
      v41 = 0;
      v43 = 0;
      v44 = v100;
      v26 = v103;
      v97 = v102;
      v98 = v101;
      LODWORD(v31) = v104;
      LOBYTE(v29) = BYTE4(v104);
      v112 = BYTE4(v104);
      v42 = 0x1000000000000000;
    }

    else
    {
      LOBYTE(v100) = 5;
      sub_2450A2E84();
      v60 = v92;
      sub_2450E5C48();
      sub_2450A44D8();
      v61 = v86;
      v40 = v60;
      sub_2450E5D08();
      v62 = (v85 + 8);
      v85 = 0;
      (*v62)(v60, v61);
      (*(v53 + 8))(v26, v52);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = v100;
      v26 = v103;
      v97 = v102;
      v98 = v101;
      LODWORD(v31) = v104;
      LOBYTE(v29) = BYTE4(v104);
      v112 = BYTE4(v104);
      v42 = 0x1000000000000000;
      v41 = 0x8000000000000000;
    }
  }

  else if (v36 > 1u)
  {
    if (v36 == 2)
    {
      LOBYTE(v100) = 2;
      sub_2450A307C();
      v55 = v91;
      sub_2450E5C48();
      sub_2450A45D4();
      v65 = v80;
      v40 = v55;
      sub_2450E5D08();
      v85 = 0;
      (*(v79 + 8))(v55, v65);
      (*(v75 + 8))(v26, v98);
      swift_unknownObjectRelease();
      v42 = 0;
      v43 = 0;
      v44 = v100;
      v41 = 0x8000000000000000;
    }

    else
    {
      LOBYTE(v100) = 3;
      sub_2450A2FD4();
      v63 = v98;
      sub_2450E5C48();
      sub_2450A4580();
      v66 = v82;
      sub_2450E5D08();
      v67 = v75;
      v85 = 0;
      (*(v81 + 8))(v30, v66);
      (*(v67 + 8))(v26, v63);
      swift_unknownObjectRelease();
      v97 = 0;
      v98 = 0;
      v26 = 0;
      v41 = 0;
      v40 = 0;
      LODWORD(v31) = 0;
      v43 = 0;
      v42 = 0x3000000000000000;
      v44 = 1;
    }
  }

  else if (v36)
  {
    LOBYTE(v100) = 1;
    sub_2450A3124();
    v57 = v74;
    v58 = v98;
    sub_2450E5C48();
    sub_2450A4628();
    v59 = v78;
    sub_2450E5D08();
    v85 = 0;
    (*(v77 + 8))(v57, v59);
    (*(v75 + 8))(v26, v58);
    swift_unknownObjectRelease();
    v44 = 0;
    v97 = 0;
    v98 = 0;
    v26 = 0;
    v41 = 0;
    v40 = 0;
    LODWORD(v31) = 0;
    v43 = 0;
    v42 = 0x3000000000000000;
  }

  else
  {
    LOBYTE(v100) = 0;
    sub_2450A31CC();
    v37 = v73;
    v38 = v98;
    sub_2450E5C48();
    sub_2450A467C();
    v39 = v72;
    v40 = v37;
    sub_2450E5D08();
    (*(v76 + 8))(v37, v39);
    (*(v75 + 8))(v26, v38);
    swift_unknownObjectRelease();
    v85 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = v100;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v99);
  v68 = v93;
  v69 = v97;
  v70 = v98;
  *v93 = v44;
  v68[1] = v70;
  v68[2] = v69;
  v68[3] = v26;
  v68[4] = (v29 << 32) | (v43 << 40) | v31;
  v68[5] = v41;
  v68[6] = v40;
  v68[7] = v42;
  return result;
}

unint64_t sub_2450A44D8()
{
  result = qword_27EDF6F38;
  if (!qword_27EDF6F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F38);
  }

  return result;
}

unint64_t sub_2450A452C()
{
  result = qword_27EDF6F40;
  if (!qword_27EDF6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF6F40);
  }

  return result;
}