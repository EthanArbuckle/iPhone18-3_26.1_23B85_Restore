void std::vector<std::vector<std::string>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

std::string **std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(int a1, std::string **a2, std::string **a3, std::vector<std::wstring> *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(a4, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 3));
      }

      v5 += 3;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1B55E8BCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<quasar::SpeechRecognizer>::shared_ptr[abi:ne200100]<quasar::SpeechRecognizer,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::SpeechRecognizer *,std::shared_ptr<quasar::SpeechRecognizer>::__shared_ptr_default_delete<quasar::SpeechRecognizer,quasar::SpeechRecognizer>,std::allocator<quasar::SpeechRecognizer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SpeechRecognizer *,std::shared_ptr<quasar::SpeechRecognizer>::__shared_ptr_default_delete<quasar::SpeechRecognizer,quasar::SpeechRecognizer>,std::allocator<quasar::SpeechRecognizer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::SpeechRecognizer *,std::shared_ptr<quasar::SpeechRecognizer>::__shared_ptr_default_delete<quasar::SpeechRecognizer,quasar::SpeechRecognizer>,std::allocator<quasar::SpeechRecognizer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<BOOL (quasar::SpeechRecognizer::*)(void),quasar::SpeechRecognizer*>,std::allocator<std::__bind<BOOL (quasar::SpeechRecognizer::*)(void),quasar::SpeechRecognizer*>>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D1FB28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<BOOL (quasar::SpeechRecognizer::*)(void),quasar::SpeechRecognizer*>,std::allocator<std::__bind<BOOL (quasar::SpeechRecognizer::*)(void),quasar::SpeechRecognizer*>>,BOOL ()(void)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<BOOL (quasar::SpeechRecognizer::*)(void),quasar::SpeechRecognizer*>,std::allocator<std::__bind<BOOL (quasar::SpeechRecognizer::*)(void),quasar::SpeechRecognizer*>>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar21ConfusionNetworkCacheENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FBD8;
  quasar::ConfusionNetworkCache::ConfusionNetworkCache((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::ConfusionNetworkCache>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FBD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::unique_ptr<quasar::QsrTextSymbolTable>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 104);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    if (*(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void *std::__shared_ptr_emplace<quasar::SpeechRecognizerConfig>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::vector<std::string> &,std::unordered_map<std::string,std::string> &,BOOL &,quasar::DecoderOptions const&,std::allocator<quasar::SpeechRecognizerConfig>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07788;
  quasar::SpeechRecognizerConfig::SpeechRecognizerConfig(a1 + 3, a2, a3, a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SpeechRecognizerModelLoader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar25SpeakerCodeTrainingConfigENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FC78;
  quasar::SpeakerCodeTrainingConfig::SpeakerCodeTrainingConfig((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::SpeakerCodeTrainingConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

quasar::SpeakerCodeTrainingConfig *quasar::SpeakerCodeTrainingConfig::SpeakerCodeTrainingConfig(quasar::SpeakerCodeTrainingConfig *this)
{
  *(this + 21) = 0;
  *(this + 22) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 40) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 96, "Dictation");
  *(this + 15) = 0;
  *(this + 16) = 0;
  return this;
}

void sub_1B55E92AC(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void quasar::SpeakerCodeTrainingConfig::~SpeakerCodeTrainingConfig(quasar::SpeakerCodeTrainingConfig *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__shared_ptr_emplace<quasar::MuxHelper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FCC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_emplace<kaldi::Timer>::__shared_ptr_emplace[abi:ne200100]<BOOL,BOOL,std::allocator<kaldi::Timer>,0>(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D07878;
  v4 = *a3;
  *(a1 + 48) = *a2;
  kaldi::Timer::Reset((a1 + 24), a2);
  *(a1 + 56) = 0;
  if (v4)
  {
    *(a1 + 56) = mach_absolute_time();
  }

  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar26MultiChainMultiAudioBufferENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FD18;
  quasar::MultiChainMultiAudioBuffer::MultiChainMultiAudioBuffer((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::MultiChainMultiAudioBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FD18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::SpeechRequestData>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::RunAsyncParams> const&,std::shared_ptr<quasar::MultiChainMultiAudioBuffer> &,std::shared_ptr<quasar::RecogAudioBuffer>,std::vector<std::shared_ptr<quasar::LmeContainer>> const,quasar::Location &,std::shared_ptr<kaldi::Timer> &,BOOL &,BOOL,std::allocator<quasar::SpeechRequestData>,0>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, _OWORD *a6, uint64_t *a7, char *a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D078C8;
  std::allocator<quasar::SpeechRequestData>::construct[abi:ne200100]<quasar::SpeechRequestData,std::shared_ptr<quasar::RunAsyncParams> const&,std::shared_ptr<quasar::MultiChainMultiAudioBuffer> &,std::shared_ptr<quasar::RecogAudioBuffer>,std::vector<std::shared_ptr<quasar::LmeContainer>> const,quasar::Location &,std::shared_ptr<kaldi::Timer> &,BOOL &,BOOL>(&v11, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9);
  return a1;
}

void std::allocator<quasar::SpeechRequestData>::construct[abi:ne200100]<quasar::SpeechRequestData,std::shared_ptr<quasar::RunAsyncParams> const&,std::shared_ptr<quasar::MultiChainMultiAudioBuffer> &,std::shared_ptr<quasar::RecogAudioBuffer>,std::vector<std::shared_ptr<quasar::LmeContainer>> const,quasar::Location &,std::shared_ptr<kaldi::Timer> &,BOOL &,BOOL>(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t *a6, _OWORD *a7, uint64_t *a8, char *a9, char *a10)
{
  v10 = a8[1];
  v11 = *a8;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SpeechRequestData::SpeechRequestData(a2, a3, a4, a5, a6, a7, &v11, *a9, *a10, 4uLL);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_1B55E97C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<quasar::SpeechRecognizer>::shared_ptr[abi:ne200100]<quasar::SpeechRecognizer,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5500] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53A8], MEMORY[0x1E69E52B8]);
}

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,quasar::SpeechRecognizer::runAsync(std::shared_ptr<quasar::RunAsyncParams> const&,void (*)(void *,void (*)(void *),void *),void *)::$_1>>(const void **a1)
{
  v4 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  quasar::SpeechRecognizer::runSyncAndMarkEndOfRun(v4[1]);
}

void sub_1B55E98C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,quasar::SpeechRecognizer::runAsync(std::shared_ptr<quasar::RunAsyncParams> const&,void (*)(void *,void (*)(void *),void *),void *)::$_1>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,quasar::SpeechRecognizer::runAsync(std::shared_ptr<quasar::RunAsyncParams> const&,void (*)(void *,void (*)(void *),void *),void *)::$_1>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1B8C85350](v4, 0x20C40960023A9);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1B8C84D70]();
    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::vector<std::shared_ptr<quasar::LmeContainer>>::__assign_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *,std::shared_ptr<quasar::Decoder> *>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::LmeContainer>>,std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (!v2)
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
LABEL_5:
    std::__throw_system_error(11, "unique_lock::lock: already locked");
    std::allocate_shared[abi:ne200100]<kaldi::OnlineBufferingInput,std::allocator<kaldi::OnlineBufferingInput>,kaldi::OnlineFeatInputItf *,0>();
  }

  if (*(a1 + 8) == 1)
  {
    goto LABEL_5;
  }

  std::mutex::lock(v2);
  *(a1 + 8) = 1;
}

void *std::__shared_ptr_emplace<kaldi::OnlineBufferingInput>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatInputItf *,std::allocator<kaldi::OnlineBufferingInput>,0>(void *a1, kaldi::OnlineFeatInputItf **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FD68;
  kaldi::OnlineBufferingInput::OnlineBufferingInput((a1 + 3), *a2, 0);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineBufferingInput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FD68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::OnlineCacheInputFe>::__shared_ptr_emplace[abi:ne200100]<char const(&)[6],std::allocator<quasar::OnlineCacheInputFe>,0>(void *a1, char *__s)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FDB8;
  std::allocator<quasar::OnlineCacheInputFe>::construct[abi:ne200100]<quasar::OnlineCacheInputFe,char const(&)[6]>(&v4, (a1 + 3), __s);
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineCacheInputFe>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::OnlineCacheInputFe>::construct[abi:ne200100]<quasar::OnlineCacheInputFe,char const(&)[6]>(int a1, uint64_t a2, char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  quasar::OnlineCacheInputFe::OnlineCacheInputFe(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B55E9E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::queue<kaldi::CuMatrix<float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<unsigned int>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FE58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineFeatureMatrix>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatureMatrixOptions const&,kaldi::OnlineFeatInputItf *,std::allocator<kaldi::OnlineFeatureMatrix>,0>(void *a1, void *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FEA8;
  kaldi::OnlineFeatureMatrix::OnlineFeatureMatrix((a1 + 3), a2, *a3, 1);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineFeatureMatrix>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FEA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineFeatureMatrix::OnlineFeatureMatrix(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  *a1 = &unk_1F2D21F68;
  *(a1 + 8) = *a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = (*(*a3 + 8))(a3);
  kaldi::Matrix<float>::Matrix(a1 + 32);
  kaldi::Matrix<float>::Matrix(a1 + 72);
  v7 = kaldi::Matrix<float>::Matrix(a1 + 112);
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = (*(*a3 + 48))(a3, v7);
  *(a1 + 169) = (*(*a3 + 56))(a3);
  *(a1 + 200) = 1;
  kaldi::Timer::Reset((a1 + 176), v8);
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 208) = 0;
  *(a1 + 216) = a4;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  kaldi::Matrix<float>::Matrix(a1 + 264);
  kaldi::Matrix<float>::Matrix(a1 + 304);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 484) = 0u;
  return a1;
}

void sub_1B55EA240(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v2 + 24);
  std::__tree<int>::destroy(v2, *v3);
  kaldi::Matrix<float>::~Matrix(v1 + 112);
  kaldi::Matrix<float>::~Matrix(v1 + 72);
  kaldi::Matrix<float>::~Matrix(v1 + 32);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::ResultStreamStabilizer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::RecogResultStreamBase> &,int &,int &,unsigned int &,BOOL,BOOL &,std::shared_ptr<quasar::MuxHelper> &,std::allocator<quasar::ResultStreamStabilizer>,0>(void *a1, uint64_t a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned __int8 *a6, unsigned __int8 *a7, uint64_t *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FEF8;
  std::allocator<quasar::ResultStreamStabilizer>::construct[abi:ne200100]<quasar::ResultStreamStabilizer,std::shared_ptr<quasar::RecogResultStreamBase> &,int &,int &,unsigned int &,BOOL,BOOL &,std::shared_ptr<quasar::MuxHelper> &>(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void std::__shared_ptr_emplace<quasar::ResultStreamStabilizer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FEF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::ResultStreamStabilizer>::construct[abi:ne200100]<quasar::ResultStreamStabilizer,std::shared_ptr<quasar::RecogResultStreamBase> &,int &,int &,unsigned int &,BOOL,BOOL &,std::shared_ptr<quasar::MuxHelper> &>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned __int8 *a7, unsigned __int8 *a8, uint64_t *a9)
{
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  v14 = *a8;
  v15 = a9[1];
  v16 = *a9;
  v17 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (quasar::ResultStreamStabilizer::ResultStreamStabilizer)(a2, a3, v10, v11, v12, v13, v14, &v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1B55EA4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::DecoderChainOutput>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::SymbolTableList> &,std::shared_ptr<quasar::SpeechRequestResultData> &,std::allocator<quasar::DecoderChainOutput>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D07828;
  std::allocator<quasar::DecoderChainOutput>::construct[abi:ne200100]<quasar::DecoderChainOutput,std::shared_ptr<quasar::SymbolTableList> &,std::shared_ptr<quasar::SpeechRequestResultData> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<quasar::DecoderChainOutput>::construct[abi:ne200100]<quasar::DecoderChainOutput,std::shared_ptr<quasar::SymbolTableList> &,std::shared_ptr<quasar::SpeechRequestResultData> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::DecoderChainOutput::DecoderChainOutput(a2, &v8, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1B55EA664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar5PTreeENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FF48;
  quasar::PTree::PTree((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<quasar::PTree>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FF48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<std::shared_ptr<quasar::Decoder>>::__init_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<quasar::Decoder> const*>,std::__wrap_iter<std::shared_ptr<quasar::Decoder> const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B55EA828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::weak_ptr<quasar::Decoder>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<quasar::Decoder>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::weak_ptr<quasar::Decoder>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::vector<std::set<std::string>>::__init_with_size[abi:ne200100]<std::set<std::string> const*,std::set<std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B55EA9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string> const*,std::set<std::string> const*,std::set<std::string>*>(uint64_t a1, const void ***a2, const void ***a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::set<std::string>::set[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::deque<quasar::SpeakerCodeTraining::AlignedData>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x27];
    v7 = *v6 + 104 * (v5 % 0x27);
    v8 = v2[(a1[5] + v5) / 0x27] + 104 * ((a1[5] + v5) % 0x27);
    if (v7 != v8)
    {
      do
      {
        kaldi::CuMatrix<float>::~CuMatrix(v7 + 48);
        kaldi::CuMatrix<float>::~CuMatrix(v7);
        v7 += 104;
        if (v7 - *v6 == 4056)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 19;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 39;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

void *std::deque<quasar::SpeakerCodeTraining::AlignedData>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x27;
  v3 = v1 - 39;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B55EAD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<kaldi::CuMatrix<float>>::pop_front(int64x2_t *a1)
{
  v2 = *(a1->i64[1] + 8 * (a1[2].i64[0] / 0x55uLL)) + 48 * (a1[2].i64[0] % 0x55uLL);
  (*(*v2 + 16))(v2);
  a1[2] = vaddq_s64(a1[2], xmmword_1B5AE01E0);

  return std::deque<kaldi::CuMatrix<float>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<kaldi::CuMatrix<float>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x55)
  {
    a2 = 1;
  }

  if (v2 < 0xAA)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 85;
  }

  return v4 ^ 1u;
}

uint64_t std::swap[abi:ne200100]<quasar::SpeakerCodeTraining::AlignedData>(int32x2_t *a1, int32x2_t *a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v5, a1, 111);
  kaldi::CuMatrix<float>::CuMatrix(v6, &a1[6], 111);
  v7 = a1[12].i8[0];
  kaldi::CuMatrix<float>::operator=(a1, a2);
  kaldi::CuMatrix<float>::operator=(a1 + 6, a2 + 6);
  a1[12].i8[0] = a2[12].i8[0];
  kaldi::CuMatrix<float>::operator=(a2, v5);
  kaldi::CuMatrix<float>::operator=(a2 + 6, v6);
  a2[12].i8[0] = v7;
  kaldi::CuMatrix<float>::~CuMatrix(v6);
  return kaldi::CuMatrix<float>::~CuMatrix(v5);
}

void sub_1B55EAF84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *std::__deque_iterator<quasar::SpeakerCodeTraining::AlignedData,quasar::SpeakerCodeTraining::AlignedData*,quasar::SpeakerCodeTraining::AlignedData&,quasar::SpeakerCodeTraining::AlignedData**,long,39l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x4EC4EC4EC4EC4EC5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 38 - v3;
      v6 = &v2[-(v5 / 0x27)];
      *result = v6;
      v4 = *v6 + 104 * (39 * (v5 / 0x27) - v5) + 3952;
    }

    else
    {
      *result = &v2[v3 / 0x27];
      v4 = v2[v3 / 0x27] + 104 * (v3 % 0x27);
    }

    result[1] = v4;
  }

  return result;
}

char *std::vector<std::pair<int,BOOL>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,BOOL> const*>,std::__wrap_iter<std::pair<int,BOOL> const*>>(void *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - a2) >> 3;
    if (v16 >= a5)
    {
      v20 = &a2[8 * a5];
      v21 = &v9[-8 * a5];
      if (v21 >= v9)
      {
        v23 = a1[1];
      }

      else
      {
        v22 = &v9[-8 * a5];
        v23 = a1[1];
        do
        {
          v24 = *v22;
          v22 += 8;
          *v23++ = v24;
        }

        while (v22 < v9);
      }

      a1[1] = v23;
      if (v9 != v20)
      {
        v44 = 0;
        v45 = v20 - v9;
        do
        {
          v46 = &v9[v44];
          *(v46 - 2) = *&v21[v44 - 8];
          *(v46 - 4) = v21[v44 - 4];
          v44 -= 8;
        }

        while (v45 != v44);
      }

      v47 = a2;
      do
      {
        *v47 = *v7;
        v47[4] = *(v7++ + 4);
        v47 += 8;
      }

      while (v7 != &a3[a5]);
    }

    else
    {
      v17 = (a3 + v9 - a2);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v34 = (a3 + v9 - a2);
        v19 = a1[1];
        do
        {
          v35 = *v34++;
          *v19 = v35;
          v19 += 8;
          v18 += 8;
        }

        while (v34 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v36 = &a2[8 * a5];
        v37 = &v18[-8 * a5];
        v38 = v18;
        while (v37 < v9)
        {
          v39 = *v37;
          v37 += 8;
          *v38 = v39;
          v38 += 8;
        }

        a1[1] = v38;
        if (v19 != v36)
        {
          v40 = 0;
          v41 = -8 * a5;
          do
          {
            v42 = &v18[v40];
            *(v42 - 2) = *&v18[v41 - 8];
            *(v42 - 4) = v18[v41 - 4];
            v40 -= 8;
            v41 -= 8;
            v36 += 8;
          }

          while (v18 != v36);
        }

        if (v9 != a2)
        {
          v43 = a2;
          do
          {
            *v43 = *v7;
            v43[4] = *(v7++ + 4);
            v43 += 8;
          }

          while (v7 != v17);
        }
      }
    }

    return a2;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 3);
  if (v12 >> 61)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = a2 - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,BOOL>>>(a1, v15);
  }

  v25 = 8 * (v13 >> 3);
  v26 = 8 * a5;
  v27 = v25;
  do
  {
    v28 = *v7++;
    *v27++ = v28;
    v26 -= 8;
  }

  while (v26);
  memcpy((v25 + 8 * a5), a2, a1[1] - a2);
  v29 = *a1;
  v30 = v25 + 8 * a5 + a1[1] - a2;
  a1[1] = a2;
  v31 = a2 - v29;
  v32 = (v25 - (a2 - v29));
  memcpy(v32, v29, v31);
  v33 = *a1;
  *a1 = v32;
  a1[1] = v30;
  a1[2] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  return v25;
}

void quasar::SessionData::SessionData(uint64_t a1, int a2)
{
  *(a1 + 32) = 0u;
  v2 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  operator new();
}

{
  quasar::SessionData::SessionData(a1, a2);
}

void sub_1B55EB6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = v9[12];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = v9[10];
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = v9[8];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](va);
  v14 = v9[3];
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = v9[1];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::SyncRecogResult>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FF98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::SyncRecogAudioBuffer>::__shared_ptr_emplace[abi:ne200100]<unsigned int const&,int const&,int const&,BOOL,std::allocator<quasar::SyncRecogAudioBuffer>,0>(void *a1, unsigned int *a2, int *a3, int *a4, BOOL *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FFE8;
  quasar::SyncRecogAudioBuffer::SyncRecogAudioBuffer((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SyncRecogAudioBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D1FFE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineFeatureMatrix>::__shared_ptr_emplace[abi:ne200100]<kaldi::OnlineFeatureMatrixOptions const&,kaldi::OnlineFeatInputItf *,BOOL,std::allocator<kaldi::OnlineFeatureMatrix>,0>(void *a1, void *a2, uint64_t *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FEA8;
  kaldi::OnlineFeatureMatrix::OnlineFeatureMatrix((a1 + 3), a2, *a3, *a4);
  return a1;
}

void kaldi::quasar::ConfusionNetworkArc<std::string>::AddElement(uint64_t a1, uint64_t a2)
{
  std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::push_back[abi:ne200100](a1 + 8, a2);
  std::vector<int>::push_back[abi:ne200100]((a1 + 32), (a2 + 24));
  std::vector<int>::push_back[abi:ne200100]((a1 + 56), (a2 + 28));
  if ((*a1 & 1) == 0 && (*(a2 + 37) & 1) == 0)
  {
    std::function<float ()(float,float)>::operator()(a1 + 80, *(a1 + 4), *(a2 + 32));
    *(a1 + 4) = v4;
  }
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<kaldi::quasar::ConfusionNetworkArcElement<std::string> const&>(a1, a2);
  }

  else
  {
    std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string> const&>(a1, a2);
    result = v3 + 40;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(uint64_t a1)
{
  *a1 = 256;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  MEMORY[0x1B8C84820](a1 + 88, "<eps>");
  return a1;
}

void sub_1B55EBBE4(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v2 + 144);
  v6 = *(v2 + 112);
  if (v6)
  {
    *(v2 + 120) = v6;
    operator delete(v6);
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 256;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  v5 = a1 + 88;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](a1 + 144, a3);
  MEMORY[0x1B8C84820](v5, "<eps>");
  *(a1 + 1) = 0;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = *a2;
    while (*(v8 + 37) != 1)
    {
      v8 += 40;
      if (v8 == v7)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 1) = 1;
LABEL_7:
    if (v6 != v7)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(a1, v6 + v9);
        ++v10;
        v6 = *a2;
        v9 += 40;
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) > v10);
    }
  }

  return a1;
}

void sub_1B55EBD44(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v3 + 144);
  v6 = *(v3 + 112);
  if (v6)
  {
    *(v3 + 120) = v6;
    operator delete(v6);
  }

  if (*(v3 + 111) < 0)
  {
    operator delete(*v4);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::ConfusionNetworkSlot<std::string>::GetKey(a1, a2, __p);
  v7 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), __p);
  kaldi::quasar::ConfusionNetworkArc<std::string>::AddElement((v4 + 5), a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B55EBE10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ConfusionNetworkSlot<std::string>::GetKey(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[4] = *MEMORY[0x1E69E9840];
  *(a1 + 1) = (*(a1 + 1) | *(a2 + 37)) & 1;
  v6 = *(a2 + 36);
  *a1 |= v6;
  if (v6)
  {
    if (*(a1 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *a3 = *(a1 + 88);
      *(a3 + 16) = *(a1 + 104);
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    v7 = *(a1 + 168);
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v7 + 48))(v7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(a2 + 36) & 1) == 0)
  {
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = *(a3 + 8);
    }

    v10 = *(a1 + 111);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a1 + 96);
    }

    if (v9 == v10)
    {
      v12 = v8 >= 0 ? a3 : *a3;
      v13 = v11 >= 0 ? (a1 + 88) : *(a1 + 88);
      if (!memcmp(v12, v13, v9))
      {
        kaldi::quasar::ConfusionNetworkSlot<std::string>::ModifyEpsArcKey(a1);
      }
    }
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), a3))
  {
    v23[0] = 0;
    memset(&v23[4], 0, 76);
    v24[0] = &unk_1F2D20038;
    v24[3] = v24;
    v22 = a3;
    v14 = std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), a3);
    v14[5] = *v23;
    std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__vdeallocate((v14 + 6));
    *(v14 + 3) = *&v23[8];
    v14[8] = *&v23[24];
    memset(&v23[8], 0, 24);
    v15 = v14[9];
    if (v15)
    {
      v14[10] = v15;
      operator delete(v15);
      v14[9] = 0;
      v14[10] = 0;
      v14[11] = 0;
    }

    v16 = v14[12];
    *(v14 + 9) = *&v23[32];
    v14[11] = *&v23[48];
    memset(&v23[32], 0, 24);
    if (v16)
    {
      v14[13] = v16;
      operator delete(v16);
      v14[12] = 0;
      v14[13] = 0;
      v14[14] = 0;
    }

    *(v14 + 6) = *&v23[56];
    v14[14] = *&v23[72];
    memset(&v23[56], 0, 24);
    std::__function::__value_func<float ()(float,float)>::operator=[abi:ne200100]((v14 + 15), v24);
    std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v24);
    if (*&v23[56])
    {
      *&v23[64] = *&v23[56];
      operator delete(*&v23[56]);
    }

    if (*&v23[32])
    {
      *&v23[40] = *&v23[32];
      operator delete(*&v23[32]);
    }

    v22 = &v23[8];
    std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v22);
    if ((*(a2 + 36) & 1) == 0)
    {
      *v23 = a3;
      v17 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a3);
      std::string::operator=((v17 + 5), a2);
    }
  }

  if ((*(a2 + 36) & 1) == 0)
  {
    kaldi::quasar::ConfusionNetworkSlot<std::string>::GetLabel(a1, a2, v23);
    if (v23[23] >= 0)
    {
      v18 = v23[23];
    }

    else
    {
      v18 = *&v23[8];
    }

    if (*(a2 + 23) >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    if ((v23[23] & 0x8000000000000000) != 0)
    {
      operator delete(*v23);
    }

    if (v18 < v19)
    {
      *v23 = a3;
      v20 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a3);
      std::string::operator=((v20 + 5), a2);
    }
  }
}

BOOL kaldi::quasar::ConfusionNetworkSlot<std::string>::HasToken(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v3 = *(a1 + 168);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(__p);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v4 != 0;
}

void sub_1B55EC2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ConfusionNetworkSlot<std::string>::GetLabel(void *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v5 = a1[21];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 1, v9))
  {
    v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1 + 6, v9);
    if (!v6)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v6 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(a3, v6[5], v6[6]);
    }

    else
    {
      v7 = *(v6 + 5);
      a3->__r_.__value_.__r.__words[2] = v6[7];
      *&a3->__r_.__value_.__l.__data_ = v7;
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1B55EC440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ConfusionNetworkSlot<std::string>::GetTopWeights(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>)
{
  v4 = a2;
  v44 = a4;
  std::vector<float>::vector[abi:ne200100](a3, a2);
  if (*(a1 + 136) == 1)
  {
    v7 = *(a1 + 112);
    v8 = (*(a1 + 120) - v7) >> 3;
    if (v8 >= v4)
    {
      v8 = v4;
    }

    if (v8)
    {
      v9 = &v7[v8];
      v10 = *a3;
      do
      {
        v11 = *v7++;
        *v10++ = *(v11 + 28);
      }

      while (v7 != v9);
    }
  }

  else
  {
    __src = 0;
    v42 = 0;
    v43 = 0;
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = *(v12 + 11);
        if (v13 >= v43)
        {
          v15 = __src;
          v16 = v13 - __src;
          v17 = (v13 - __src) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v19 = v43 - __src;
          if ((v43 - __src) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v20);
          }

          v21 = (v13 - __src) >> 2;
          v22 = (4 * v17);
          v23 = (4 * v17 - 4 * v21);
          *v22 = v14;
          v13 = (v22 + 1);
          memcpy(v23, v15, v16);
          v24 = __src;
          __src = v23;
          v42 = v13;
          v43 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v13 = v14;
          v13 += 4;
        }

        v42 = v13;
        v12 = *v12;
      }

      while (v12);
      v25 = __src;
    }

    else
    {
      v13 = 0;
      v25 = 0;
    }

    v26 = (v13 - v25) >> 2;
    if (v26 >= 2)
    {
      v27 = (v26 - 2) >> 1;
      v28 = &v25[4 * v27];
      v29 = v27 + 1;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v25, &v45, v26, v28--);
        --v29;
      }

      while (v29);
      v25 = __src;
      v13 = v42;
      v26 = (v42 - __src) >> 2;
    }

    if (v26 < v4)
    {
      v4 = v26;
    }

    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v31 = __src;
        v32 = (v13 - __src) >> 2;
        if (v32 >= 2)
        {
          v33 = 0;
          v34 = *__src;
          v35 = __src;
          do
          {
            v36 = v35;
            v35 += v33 + 1;
            v37 = 2 * v33;
            v33 = (2 * v33) | 1;
            v38 = v37 + 2;
            if (v38 < v32 && *v35 < v35[1])
            {
              ++v35;
              v33 = v38;
            }

            *v36 = *v35;
          }

          while (v33 <= ((v32 - 2) >> 1));
          v39 = (v13 - 4);
          if (v35 == (v13 - 4))
          {
            *v35 = v34;
          }

          else
          {
            *v35 = *v39;
            *v39 = v34;
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v31, (v35 + 1), &v45, ((v35 + 1) - v31) >> 2);
            v13 = v42;
          }
        }

        v40 = *(v13 - 1);
        v13 -= 4;
        *(*a3 + 4 * i) = v40;
        v42 = v13;
      }

      v25 = __src;
    }

    if (v25)
    {
      v42 = v25;
      operator delete(v25);
    }
  }
}

void sub_1B55EC728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::ConfusionNetworkSlot<std::string>::SortArcs(uint64_t a1)
{
  v2 = (a1 + 112);
  v3 = *(a1 + 112);
  *(a1 + 120) = v3;
  v4 = *(a1 + 24);
  if (v4)
  {
    do
    {
      v5 = v4 + 2;
      v6 = *(a1 + 128);
      if (v3 >= v6)
      {
        v7 = (v3 - *v2) >> 3;
        if ((v7 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v8 = v6 - *v2;
        v9 = v8 >> 2;
        if (v8 >> 2 <= (v7 + 1))
        {
          v9 = v7 + 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(v2, v10);
        }

        v11 = (8 * v7);
        *v11 = v5;
        v3 = (8 * v7 + 8);
        v12 = *(a1 + 112);
        v13 = *(a1 + 120) - v12;
        v14 = v11 - v13;
        memcpy(v11 - v13, v12, v13);
        v15 = *(a1 + 112);
        *(a1 + 112) = v14;
        *(a1 + 120) = v3;
        *(a1 + 128) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v3++ = v5;
      }

      *(a1 + 120) = v3;
      v4 = *v4;
    }

    while (v4);
    v16 = *v2;
  }

  else
  {
    v16 = v3;
  }

  v17 = 126 - 2 * __clz((v3 - v16) >> 3);
  if (v3 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEELb0EEEvT1_SP_SE_NS_15iterator_traitsISP_E15difference_typeEb(v16, v3, &v20, v18, 1);
  *(a1 + 136) = 1;
  return result;
}

double kaldi::quasar::ConfusionNetworkSlot<std::string>::GetTokenWeight(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v3 = *(a1 + 168);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(__p);
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
LABEL_9:
    LODWORD(result) = *(v4 + 11);
    return result;
  }

  return 0.0;
}

void sub_1B55EC974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::ConfusionNetworkSlot<std::string>::HasTokenFromSequence(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v4 = v2[6];
    if (v2[7] != v4 && (*(v4 + 36) & 1) == 0)
    {
      break;
    }

LABEL_12:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v8, v2[9], v2[10], (v2[10] - v2[9]) >> 2);
  if (v9 == v8)
  {
    if (v8)
    {
LABEL_11:
      v9 = v8;
      operator delete(v8);
    }

    goto LABEL_12;
  }

  v5 = 0;
  v6 = (v9 - v8) >> 2;
  if (v6 <= 1)
  {
    v6 = 1;
  }

  while (*&v8[4 * v5] != a2)
  {
    if (v6 == ++v5)
    {
      goto LABEL_11;
    }
  }

  v9 = v8;
  operator delete(v8);
  return 1;
}

void kaldi::quasar::ConfusionNetworkSlot<std::string>::ModifyEpsArcKey(uint64_t a1)
{
  v2 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *&v2->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = *(a1 + 104);
  }

  do
  {
    std::string::append(v2, "_");
  }

  while (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), &v2->__r_.__value_.__l.__data_));
  if (*a1 == 1)
  {
    v3 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 8), &__p.__r_.__value_.__l.__data_);
    p_p = &__p;
    v4 = std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), &__p.__r_.__value_.__l.__data_);
    p_p = v2;
    v5 = std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 8), &v2->__r_.__value_.__l.__data_);
    v5[5] = v4[5];
    std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__vdeallocate((v5 + 6));
    *(v5 + 3) = *(v4 + 3);
    v5[8] = v4[8];
    v4[6] = 0;
    v4[7] = 0;
    v4[8] = 0;
    std::vector<int>::__move_assign((v5 + 9), (v4 + 9));
    std::vector<int>::__move_assign((v5 + 12), v4 + 6);
    std::__function::__value_func<float ()(float,float)>::operator=[abi:ne200100]((v5 + 15), (v4 + 15));
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::erase((a1 + 8), v3);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B55ECBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::ConfusionNetwork<std::string>::ConfusionNetwork(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *a1 = 1;
  v9 = a1 + 40;
  std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::__value_func[abi:ne200100](a1 + 8, a4);
  std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](v9, a5);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 72, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  v10 = *a2;
  if (a2[1] == *a2)
  {
    v14 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      memset(v16, 0, sizeof(v16));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v16, *(v10 + v11), *(v10 + v11 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + v11 + 8) - *(v10 + v11)) >> 3));
      v13 = *(a1 + 32);
      if (!v13)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v13 + 48))(v17);
      std::vector<std::vector<std::string>>::push_back[abi:ne200100]((a1 + 96), v17);
      v18 = v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      v18 = v16;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      ++v12;
      v10 = *a2;
      v11 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v12);
    v14 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 3);
  }

  if (v14 == (*(a1 + 80) - *(a1 + 72)) >> 2)
  {
    *a1 = 0;
  }

  kaldi::quasar::ConfusionNetwork<std::string>::Construct(a1);
  return a1;
}

void sub_1B55ECDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = v16 + 3;
  std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = v16;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a13);
  v18 = *v15;
  if (*v15)
  {
    *(v13 + 80) = v18;
    operator delete(v18);
  }

  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::~__value_func[abi:ne200100](v13 + 8);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ConfusionNetwork<std::string>::Construct(uint64_t a1)
{
  v95[4] = *MEMORY[0x1E69E9840];
  memset(&v79, 0, sizeof(v79));
  v77 = -1;
  v78 = -1082130432;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  __src = 0;
  v72 = 0;
  v73 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  LODWORD(v62) = 0;
  v1 = *(a1 + 96);
  if (*(a1 + 104) == v1)
  {
    goto LABEL_92;
  }

  v3 = 0;
  do
  {
    memset(&v81, 0, sizeof(v81));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v81, *(v1 + 24 * v3), *(v1 + 24 * v3 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 24 * v3 + 8) - *(v1 + 24 * v3)) >> 3));
    if (*a1)
    {
      v4 = 2143289344;
    }

    else
    {
      v4 = *(*(a1 + 72) + 4 * v62);
    }

    if (v81.__r_.__value_.__l.__size_ != v81.__r_.__value_.__r.__words[0] && v79.__end_ == v79.__begin_)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v79, v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v81.__r_.__value_.__l.__size_ - v81.__r_.__value_.__r.__words[0]) >> 3));
      v78 = v4;
      v77 = v62;
    }

    else
    {
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](&v74, &v81);
      v5 = v72;
      if (v72 >= v73)
      {
        v7 = __src;
        v8 = v72 - __src;
        v9 = (v72 - __src) >> 2;
        v10 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v11 = v73 - __src;
        if ((v73 - __src) >> 1 > v10)
        {
          v10 = v11 >> 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v12);
        }

        *(4 * v9) = v4;
        v6 = 4 * v9 + 4;
        memcpy(0, v7, v8);
        v13 = __src;
        __src = 0;
        v72 = v6;
        v73 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v72 = v4;
        v6 = (v5 + 4);
      }

      v72 = v6;
      std::vector<int>::push_back[abi:ne200100](&v68, &v62);
    }

    v93[0] = &v81;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v93);
    v3 = v62 + 1;
    LODWORD(v62) = v62 + 1;
    v1 = *(a1 + 96);
  }

  while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - v1) >> 3) > v3);
  begin = v79.__begin_;
  if (v79.__end_ == v79.__begin_)
  {
    goto LABEL_92;
  }

  LODWORD(v62) = 0;
  v15 = 0;
  do
  {
    memset(&v81, 0, sizeof(v81));
    v16 = &begin[v15];
    if (*a1 == 1)
    {
      v17 = std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string&,int &,int &>(&v81, v16, &v77, &v62);
    }

    else
    {
      v17 = std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string&,int &,int &,float &>(&v81, v16, &v77, &v62, &v78);
    }

    v81.__r_.__value_.__l.__size_ = v17;
    v18 = *(a1 + 128);
    if (v18 >= *(a1 + 136))
    {
      v19 = std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__emplace_back_slow_path<std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>> &,std::function<std::string ()(std::string)> &>((a1 + 120), &v81, a1 + 40);
    }

    else
    {
      std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>> &,std::function<std::string ()(std::string)> &>(a1 + 120, *(a1 + 128), &v81, a1 + 40);
      v19 = v18 + 176;
      *(a1 + 128) = v18 + 176;
    }

    *(a1 + 128) = v19;
    v93[0] = &v81;
    std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](v93);
    v15 = v62 + 1;
    LODWORD(v62) = v62 + 1;
    begin = v79.__begin_;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v79.__end_ - v79.__begin_) >> 3) > v15);
  v92[0] = &unk_1F2D200B8;
  v92[3] = v92;
  kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Aligner(v93, v92);
  std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::~__value_func[abi:ne200100](v92);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v20 = v74;
  if (v75 == v74)
  {
    goto LABEL_91;
  }

  v21 = 0;
  do
  {
    kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::Align(v93, (a1 + 120), (v20 + 24 * v21), &v65);
    v22 = v65;
    if (v66 != v65)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = &v22[40 * v23];
        v26 = *(v25 + 4);
        v28 = *v25;
        v27 = *(v25 + 1);
        v64 = v26;
        v62 = v28;
        v63 = v27;
        v29 = v28 + v24;
        if (v26 <= 1)
        {
          break;
        }

        if (v26 == 3)
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          if (*a1 == 1)
          {
            v40 = std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string const&,int &,int &>(&v59, *(&v63 + 1), v68 + v21, &v63);
          }

          else
          {
            v40 = std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string const&,int &,int &,float &>(&v59, *(&v63 + 1), v68 + v21, &v63, __src + v21);
          }

          v60 = v40;
          std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](v80, a1 + 40);
          kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(&v81, &v59, v80);
          std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v80);
          if (*a1 == 1)
          {
            *(&v54 + 3) = 0;
            LODWORD(v54) = 0;
            __p = 0;
            v53 = 0;
            HIBYTE(v54) = 0;
            v55 = v77;
            v56 = -1;
            HIBYTE(v58) = 1;
            kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(&v81, &__p);
            if ((SHIBYTE(v54) & 0x80000000) == 0)
            {
              if (!v21)
              {
                goto LABEL_76;
              }

LABEL_66:
              for (i = 0; i != v21; ++i)
              {
                v43 = *(v68 + i);
                v53 = 0;
                v54 = 0;
                __p = 0;
                v55 = v43;
                v56 = -1;
                HIBYTE(v58) = 1;
                kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(&v81, &__p);
                if (SHIBYTE(v54) < 0)
                {
                  operator delete(__p);
                }
              }

              goto LABEL_76;
            }

            operator delete(__p);
            if (v21)
            {
              goto LABEL_66;
            }

LABEL_76:
            v47 = v29 & ~(v29 >> 31);
            v48 = *(a1 + 120);
            if (v47 >= (-1171354717 * ((*(a1 + 128) - v48) >> 4)))
            {
              v47 = -1171354717 * ((*(a1 + 128) - v48) >> 4);
            }

            std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::insert((a1 + 120), v48 + 176 * v47, &v81);
            std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](&v91);
            if (v89)
            {
              v90 = v89;
              operator delete(v89);
            }

            if (v88 < 0)
            {
              operator delete(v87);
            }

            ++v24;
            std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&v86);
            std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(&v81.__r_.__value_.__l.__size_);
            v81.__r_.__value_.__r.__words[0] = &v59;
            std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v81);
            goto LABEL_83;
          }

          *(&v54 + 3) = 0;
          LODWORD(v54) = 0;
          __p = 0;
          v53 = 0;
          HIBYTE(v54) = 0;
          v55 = v77;
          v56 = -1;
          v57 = v78;
          v58 = 1;
          kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(&v81, &__p);
          if (SHIBYTE(v54) < 0)
          {
            operator delete(__p);
            if (!v21)
            {
              goto LABEL_76;
            }
          }

          else if (!v21)
          {
            goto LABEL_76;
          }

          for (j = 0; j != v21; ++j)
          {
            v45 = *(v68 + j);
            v46 = *(__src + j);
            v53 = 0;
            v54 = 0;
            __p = 0;
            v55 = v45;
            v56 = -1;
            v57 = v46;
            v58 = 1;
            kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(&v81, &__p);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__p);
            }
          }

          goto LABEL_76;
        }

        if (v26 == 2)
        {
          v34 = *(a1 + 120) + 176 * v29;
          v35 = *(v68 + v21);
          if (*a1 == 1)
          {
            memset(&v81, 0, sizeof(v81));
            v82 = v35;
            v83 = -1;
            HIBYTE(v85) = 1;
          }

          else
          {
            v41 = *(__src + v21);
            memset(&v81, 0, sizeof(v81));
            v82 = v35;
            v83 = -1;
            v84 = v41;
            v85 = 1;
          }

          kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(v34, &v81);
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_56;
          }
        }

LABEL_83:
        ++v23;
        v22 = v65;
        if (0xCCCCCCCCCCCCCCCDLL * ((v66 - v65) >> 3) <= v23)
        {
          goto LABEL_84;
        }
      }

      v30 = *(a1 + 120) + 176 * v29;
      if (*a1 == 1)
      {
        v31 = *(v68 + v21);
        v32 = v63;
        if (*(*(&v63 + 1) + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v81, **(&v63 + 1), *(*(&v63 + 1) + 8));
        }

        else
        {
          v33 = **(&v63 + 1);
          v81.__r_.__value_.__r.__words[2] = *(*(&v63 + 1) + 16);
          *&v81.__r_.__value_.__l.__data_ = v33;
        }

        v82 = v31;
        v83 = v32;
        HIBYTE(v85) = 1;
        kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(v30, &v81);
      }

      else
      {
        v36 = *(v68 + v21);
        v37 = v63;
        v38 = *(__src + v21);
        if (*(*(&v63 + 1) + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v81, **(&v63 + 1), *(*(&v63 + 1) + 8));
        }

        else
        {
          v39 = **(&v63 + 1);
          v81.__r_.__value_.__r.__words[2] = *(*(&v63 + 1) + 16);
          *&v81.__r_.__value_.__l.__data_ = v39;
        }

        v82 = v36;
        v83 = v37;
        v84 = v38;
        v85 = 0;
        kaldi::quasar::ConfusionNetworkSlot<std::string>::AddArcElement(v30, &v81);
      }

      if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

LABEL_56:
      operator delete(v81.__r_.__value_.__l.__data_);
      goto LABEL_83;
    }

LABEL_84:
    if ((*a1 & 1) == 0)
    {
      v49 = *(a1 + 120);
      if (*(a1 + 128) != v49)
      {
        v50 = 0;
        v51 = 0;
        do
        {
          kaldi::quasar::ConfusionNetworkSlot<std::string>::SortArcs(v49 + v50);
          ++v51;
          v49 = *(a1 + 120);
          v50 += 176;
        }

        while (0x2E8BA2E8BA2E8BA3 * ((*(a1 + 128) - v49) >> 4) > v51);
      }
    }

    ++v21;
    v20 = v74;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v75 - v74) >> 3) > v21);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_91:
  std::__function::__value_func<float ()(std::string)>::~__value_func[abi:ne200100](v95);
  std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>)>::~__value_func[abi:ne200100](&v94);
  std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::~__value_func[abi:ne200100](v93);
LABEL_92:
  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (__src)
  {
    v72 = __src;
    operator delete(__src);
  }

  v81.__r_.__value_.__r.__words[0] = &v74;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v81);
  v81.__r_.__value_.__r.__words[0] = &v79;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
}

void sub_1B55ED6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::~__value_func[abi:ne200100](v51 - 240);
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  a46 = &a35;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a46);
  _Unwind_Resume(a1);
}

unint64_t std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::insert(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v11 = *a1;
    v12 = 0x2E8BA2E8BA2E8BA3 * ((v7 - *a1) >> 4) + 1;
    if (v12 > 0x1745D1745D1745DLL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v11) >> 4);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0x2E8BA2E8BA2E8BA3 * ((v7 - *a1) >> 4) + 1;
    }

    if (v14 >= 0xBA2E8BA2E8BA2ELL)
    {
      v16 = 0x1745D1745D1745DLL;
    }

    else
    {
      v16 = v15;
    }

    v22 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>(a1, v16);
    }

    v18 = 0;
    v19 = 16 * (v13 >> 4);
    v20 = v19;
    v21 = 0;
    std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::emplace_back<kaldi::quasar::ConfusionNetworkSlot<std::string> const&>(&v18, a3);
    v4 = std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__swap_out_circular_buffer(a1, &v18, v4);
    std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::~__split_buffer(&v18);
  }

  else if (a2 == v7)
  {
    kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(a1[1], a3);
    a1[1] = v7 + 176;
  }

  else
  {
    std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__move_range(a1, a2, a1[1], a2 + 176);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 176;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    *v4 = *(a3 + v9);
    if (v4 == a3 + v9)
    {
      std::string::operator=((v4 + 88), (v10 + 88));
    }

    else
    {
      *(v4 + 40) = *(v10 + 40);
      std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *> *>>((v4 + 8), *(v10 + 24), 0);
      *(v4 + 80) = *(v10 + 80);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *> *>>((v4 + 48), *(v10 + 64), 0);
      std::string::operator=((v4 + 88), (v10 + 88));
      std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>((v4 + 112), *(v10 + 112), *(v10 + 120), (*(v10 + 120) - *(v10 + 112)) >> 3);
    }

    *(v4 + 136) = *(v10 + 136);
    std::function<std::string ()(std::string)>::operator=((v4 + 144), v10 + 144);
  }

  return v4;
}

void std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<quasar::PhoneticMatchDecoderStat>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t std::__function::__value_func<float ()(float,float)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<float ()(float,float)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(float,float)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t kaldi::quasar::ConfusionNetworkArc<std::string>::~ConfusionNetworkArc(uint64_t a1)
{
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](a1 + 80);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 8);
  std::vector<quasar::PhoneticMatchDecoderStat>::__destroy_vector::operator()[abi:ne200100](&v5);
  return a1;
}

uint64_t kaldi::quasar::Aligner<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>::~Aligner(uint64_t a1)
{
  std::__function::__value_func<float ()(std::string)>::~__value_func[abi:ne200100](a1 + 64);
  std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>)>::~__value_func[abi:ne200100](a1 + 32);

  return std::__function::__value_func<float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::~__value_func[abi:ne200100](a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B55EDE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55EDF1C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN5kaldi6quasar19ConfusionNetworkArcIS6_EEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSG_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSP_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__s.__data_[0] = 1;
  *(this[1].__r_.__value_.__r.__words + 4) = 0u;
  *(&this[1].__r_.__value_.__r.__words[2] + 4) = 0u;
  *(&this[2].__r_.__value_.__r.__words[1] + 4) = 0u;
  *(this[3].__r_.__value_.__r.__words + 4) = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  this[4].__r_.__value_.__l.__size_ = &unk_1F2D20038;
  this[5].__r_.__value_.__l.__size_ = &this[4].__r_.__value_.__l.__size_;
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

uint64_t std::__function::__func<kaldi::quasar::ConfusionNetworkArc<std::string>::{lambda(float,float)#1},std::allocator<kaldi::quasar::ConfusionNetworkArc<std::string>::{lambda(float,float)#1}>,float ()(float,float)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string> const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 30) = *(a2 + 30);
  *(v4 + 24) = v6;
  *(a1 + 8) = v4 + 40;
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<kaldi::quasar::ConfusionNetworkArcElement<std::string> const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>>(a1, v6);
  }

  v7 = 40 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 3);
  *(v7 + 30) = *(a2 + 30);
  *(v7 + 24) = v11;
  *&v20 = v10 + 40;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v18);
  return v17;
}

void sub_1B55EE2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 3);
      *(a4 + 30) = *(v6 + 30);
      *(a4 + 24) = v8;
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) | 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 < v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 < v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 4 * v4);
    v7 = *(a2 - 4);
    v6 = (a2 - 4);
    v8 = v7;
    v9 = *v5;
    if (*v5 < v7)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 4 * v4);
        v9 = *v5;
      }

      while (*v5 < v8);
      *v6 = v8;
    }
  }

  return result;
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEELb0EEEvT1_SP_SE_NS_15iterator_traitsISP_E15difference_typeEb(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v68 = *(a2 - 1);
        v69 = *v9;
        if (*(v68 + 28) >= *(*v9 + 28))
        {
          *v9 = v68;
          *(a2 - 1) = v69;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v70 = v9 + 1;
      v71 = v9[1];
      v72 = v9 + 2;
      v73 = v9[2];
      v74 = *(v71 + 7);
      v75 = *v9;
      v76 = *(*v9 + 28);
      v77 = *(v73 + 28);
      if (v74 >= v76)
      {
        v78 = v9;
        v79 = (v9 + 2);
        result = *v9;
        if (v77 >= v74 || (*v9 = v71, v9[1] = v75, v78 = v9 + 1, v79 = (v9 + 2), result = v75, v77 >= v76))
        {
LABEL_98:
          *v78 = v73;
          *v79 = v75;
          v71 = result;
          goto LABEL_99;
        }
      }

      else if (v77 >= v74)
      {
        *v70 = v73;
        *v72 = v71;
        v78 = v9;
        v79 = (v9 + 1);
        result = v71;
        if (v77 >= v76)
        {
          goto LABEL_98;
        }

LABEL_99:
        v81 = *(a2 - 1);
        if (*(v81 + 28) >= *(v71 + 7))
        {
          *v72 = v81;
          *(a2 - 1) = v71;
          v82 = *v72;
          v83 = *(v82 + 28);
          v84 = *v70;
          if (v83 >= *(v84 + 28))
          {
            v9[1] = v82;
            v9[2] = v84;
            v85 = *v9;
            if (v83 >= *(*v9 + 28))
            {
              *v9 = v82;
              v9[1] = v85;
            }
          }
        }

        return result;
      }

      v71 = v73;
      goto LABEL_99;
    }

    if (v12 == 5)
    {

      return _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEELi0EEEvT1_SP_SP_SP_SP_SE_(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return _ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEvT1_SP_SE_(v9, a2);
      }

      else if (v9 != a2)
      {
        while (v8 + 1 != a2)
        {
          v87 = *v8;
          v86 = v8[1];
          v89 = ++v8;
          v88 = *(v86 + 28);
          if (v88 >= *(v87 + 28))
          {
            do
            {
              *v89 = v87;
              v87 = *(v89 - 2);
              --v89;
            }

            while (v88 >= *(v87 + 28));
            *v89 = v86;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return _ZNSt3__119__partial_sort_implB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEESO_EET1_SP_SP_T2_OSE_(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = *v13;
      v16 = *(*v13 + 28);
      v17 = *v9;
      v18 = *(*v9 + 28);
      v19 = *(a2 - 1);
      v20 = *(v19 + 28);
      if (v16 >= v18)
      {
        if (v20 >= v16)
        {
          *v9 = v19;
        }

        else
        {
          *v9 = v15;
          *v13 = v17;
          v29 = *(a2 - 1);
          if (*(v29 + 28) < v18)
          {
            goto LABEL_31;
          }

          *v13 = v29;
        }

        *(a2 - 1) = v17;
      }

      else if (v20 >= v16)
      {
        *v13 = v19;
        *(a2 - 1) = v15;
        v21 = *v9;
        if (*(*v13 + 28) >= *(*v9 + 28))
        {
          *v9 = *v13;
          *v13 = v21;
        }
      }

LABEL_31:
      v31 = v13 - 1;
      v32 = *(v13 - 1);
      v33 = *(v32 + 28);
      v34 = v9[1];
      v35 = *(v34 + 28);
      v36 = *(a2 - 2);
      v37 = *(v36 + 28);
      if (v33 >= v35)
      {
        if (v37 >= v33)
        {
          v9[1] = v36;
        }

        else
        {
          v9[1] = v32;
          *v31 = v34;
          v39 = *(a2 - 2);
          if (*(v39 + 28) < v35)
          {
            goto LABEL_44;
          }

          *v31 = v39;
        }

        *(a2 - 2) = v34;
      }

      else if (v37 >= v33)
      {
        *v31 = v36;
        *(a2 - 2) = v32;
        v38 = v9[1];
        if (*(*v31 + 28) >= *(v38 + 28))
        {
          v9[1] = *v31;
          *v31 = v38;
        }
      }

LABEL_44:
      v42 = v13[1];
      v40 = v13 + 1;
      v41 = v42;
      v43 = *(v42 + 28);
      v44 = v9[2];
      v45 = *(v44 + 28);
      v46 = *(a2 - 3);
      v47 = *(v46 + 28);
      if (v43 >= v45)
      {
        if (v47 >= v43)
        {
          v9[2] = v46;
        }

        else
        {
          v9[2] = v41;
          *v40 = v44;
          v49 = *(a2 - 3);
          if (*(v49 + 28) < v45)
          {
            goto LABEL_53;
          }

          *v40 = v49;
        }

        *(a2 - 3) = v44;
      }

      else if (v47 >= v43)
      {
        *v40 = v46;
        *(a2 - 3) = v41;
        v48 = v9[2];
        if (*(*v40 + 28) >= *(v48 + 28))
        {
          v9[2] = *v40;
          *v40 = v48;
        }
      }

LABEL_53:
      v50 = *v14;
      v51 = *(*v14 + 28);
      v52 = *v31;
      v53 = *(*v31 + 28);
      v54 = *v40;
      v55 = *(*v40 + 28);
      if (v51 >= v53)
      {
        if (v55 >= v51)
        {
          goto LABEL_59;
        }

        *v31 = v50;
        *v14 = v52;
        v31 = v14;
        v50 = v54;
        if (v55 >= v53)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v55 >= v51)
        {
          *v14 = v54;
          *v40 = v50;
          v40 = v14;
          v50 = v52;
          if (v55 < v53)
          {
            v52 = v54;
            goto LABEL_61;
          }

LABEL_59:
          *v31 = v54;
          *v40 = v52;
        }

        v52 = v50;
      }

LABEL_61:
      v56 = *v9;
      *v9 = v52;
      *v14 = v56;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v22 = *v9;
    v23 = *(*v9 + 28);
    v24 = *v13;
    v25 = *(*v14 + 28);
    v26 = *(a2 - 1);
    v27 = *(v26 + 28);
    if (v23 >= v25)
    {
      if (v27 >= v23)
      {
        *v14 = v26;
LABEL_39:
        *(a2 - 1) = v24;
      }

      else
      {
        *v14 = v22;
        *v9 = v24;
        v30 = *(a2 - 1);
        if (*(v30 + 28) >= v25)
        {
          *v9 = v30;
          goto LABEL_39;
        }
      }

LABEL_40:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v27 < v23)
    {
      goto LABEL_40;
    }

    *v9 = v26;
    *(a2 - 1) = v22;
    v28 = *v14;
    if (*(*v9 + 28) < *(*v14 + 28))
    {
      goto LABEL_40;
    }

    *v14 = *v9;
    *v9 = v28;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (*(*(v9 - 1) + 28) < *(*v9 + 28))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **,kaldi::quasar::ConfusionNetworkSlot<std::string>::SortArcs(void)::{lambda(std::_ClassicAlgPolicy &,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> ** &)#1} &>(v9, a2);
      v9 = result;
      goto LABEL_68;
    }

LABEL_63:
    v57 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **,kaldi::quasar::ConfusionNetworkSlot<std::string>::SortArcs(void)::{lambda(std::_ClassicAlgPolicy &,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> ** &)#1} &>(v9, a2);
    if ((v58 & 1) == 0)
    {
      goto LABEL_66;
    }

    v59 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEbT1_SP_SE_(v9, v57);
    v9 = v57 + 1;
    result = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEbT1_SP_SE_(v57 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v57;
      if (v59)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v59)
    {
LABEL_66:
      result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEELb0EEEvT1_SP_SE_NS_15iterator_traitsISP_E15difference_typeEb(v8, v57, a3, -v11, a5 & 1);
      v9 = v57 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v60 = *v9;
  v61 = v9[1];
  v62 = *(v61 + 28);
  v63 = *(*v9 + 28);
  v64 = *(a2 - 1);
  v65 = *(v64 + 28);
  if (v62 >= v63)
  {
    if (v65 >= v62)
    {
      *v9 = v64;
    }

    else
    {
      *v9 = v61;
      v9[1] = v60;
      v80 = *(a2 - 1);
      if (*(v80 + 28) < v63)
      {
        return result;
      }

      v9[1] = v80;
    }

    *(a2 - 1) = v60;
  }

  else if (v65 >= v62)
  {
    v9[1] = v64;
    *(a2 - 1) = v61;
    v67 = *v9;
    v66 = v9[1];
    if (*(v66 + 28) >= *(*v9 + 28))
    {
      *v9 = v66;
      v9[1] = v67;
    }
  }

  return result;
}

uint64_t *_ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEELi0EEEvT1_SP_SP_SP_SP_SE_(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *(*a2 + 28);
  v7 = *result;
  v8 = *(*result + 28);
  v9 = *a3;
  v10 = *(*a3 + 28);
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      *result = v9;
    }

    else
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if (*(*a3 + 28) < v8)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    *a3 = v7;
    v5 = v7;
    goto LABEL_11;
  }

  if (v10 >= v6)
  {
    *a2 = v9;
    *a3 = v5;
    v11 = *result;
    if (*(*a2 + 28) >= *(*result + 28))
    {
      *result = *a2;
      *a2 = v11;
      v5 = *a3;
    }
  }

  else
  {
    v5 = *a3;
  }

LABEL_11:
  if (*(*a4 + 28) >= *(v5 + 28))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 28) >= *(*a2 + 28))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 28) >= *(*result + 28))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 28) >= *(*a4 + 28))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 28) >= *(*a3 + 28))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 28) >= *(*a2 + 28))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 28) >= *(*result + 28))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

uint64_t *_ZNSt3__116__insertion_sortB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEvT1_SP_SE_(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        v7 = *(v5 + 28);
        if (v7 >= *(v6 + 28))
        {
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = v6;
            if (!v8)
            {
              break;
            }

            v6 = *(result + v8 - 8);
            v8 -= 8;
            if (v7 < *(v6 + 28))
            {
              v9 = (result + v8 + 8);
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v5;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **,kaldi::quasar::ConfusionNetworkSlot<std::string>::SortArcs(void)::{lambda(std::_ClassicAlgPolicy &,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> ** &)#1} &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 28);
  if (v3 >= *(*(a2 - 1) + 28))
  {
    v5 = a1;
    do
    {
      v6 = v5[1];
      ++v5;
    }

    while (v3 < *(v6 + 28));
  }

  else
  {
    v4 = a1 + 1;
    do
    {
      v5 = v4;
      if (v4 >= a2)
      {
        break;
      }

      ++v4;
    }

    while (v3 < *(*v5 + 28));
  }

  if (v5 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v3 >= *(v7 + 28));
  }

  if (v5 < a2)
  {
    v8 = *v5;
    v9 = *a2;
    do
    {
      *v5 = v9;
      *a2 = v8;
      do
      {
        v10 = v5[1];
        ++v5;
        v8 = v10;
      }

      while (v3 < *(v10 + 28));
      do
      {
        v11 = *--a2;
        v9 = v11;
      }

      while (v3 >= *(v11 + 28));
    }

    while (v5 < a2);
  }

  if (v5 - 1 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> **,kaldi::quasar::ConfusionNetworkSlot<std::string>::SortArcs(void)::{lambda(std::_ClassicAlgPolicy &,std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> ** &)#1} &>(void *a1, void *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(*a1 + 28);
  do
  {
    v5 = a1[++v2];
  }

  while (*(v5 + 28) >= v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *--a2;
    }

    while (*(v9 + 28) < v4);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while (*(v8 + 28) < v4);
  }

  if (v6 < a2)
  {
    v10 = *a2;
    v11 = &a1[v2];
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v5;
      do
      {
        v13 = v11[1];
        ++v11;
        v5 = v13;
      }

      while (*(v13 + 28) >= v4);
      do
      {
        v14 = *--v12;
        v10 = v14;
      }

      while (*(v14 + 28) < v4);
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEbT1_SP_SE_(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 28);
      v8 = *(*a1 + 28);
      v9 = *(a2 - 1);
      v10 = *(v9 + 28);
      if (v7 < v8)
      {
        if (v10 >= v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v12 = *a1;
          v11 = a1[1];
          if (*(v11 + 28) >= *(*a1 + 28))
          {
            *a1 = v11;
            a1[1] = v12;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v9;
      }

      else
      {
        *a1 = v6;
        a1[1] = v5;
        v33 = *(a2 - 1);
        if (*(v33 + 28) < v8)
        {
          return 1;
        }

        a1[1] = v33;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_14;
      }

      _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEELi0EEEvT1_SP_SP_SP_SP_SE_(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *(v23 + 28);
    v27 = *a1;
    v28 = *(*a1 + 28);
    v29 = *(v25 + 28);
    if (v26 >= v28)
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v29 >= v26 || (*a1 = v23, a1[1] = v27, v30 = a1 + 1, v31 = a1 + 2, v32 = v27, v29 >= v28))
      {
LABEL_42:
        *v30 = v25;
        *v31 = v27;
        v23 = v32;
        goto LABEL_43;
      }
    }

    else if (v29 >= v26)
    {
      *v22 = v25;
      *v24 = v23;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v23;
      if (v29 < v28)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v23 = v25;
LABEL_43:
    v43 = *(a2 - 1);
    if (*(v43 + 28) >= *(v23 + 28))
    {
      *v24 = v43;
      *(a2 - 1) = v23;
      v44 = *v24;
      v45 = *(v44 + 28);
      v46 = *v22;
      if (v45 >= *(v46 + 28))
      {
        a1[1] = v44;
        a1[2] = v46;
        v47 = *a1;
        if (v45 >= *(*a1 + 28))
        {
          *a1 = v44;
          a1[1] = v47;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 28) >= *(*a1 + 28))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_14:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *(v15 + 28);
  v17 = *a1;
  v18 = *(*a1 + 28);
  v19 = *(v13 + 28);
  if (v16 < v18)
  {
    if (v19 < v16)
    {
      goto LABEL_28;
    }

    a1[1] = v13;
    *v14 = v15;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 < v18)
    {
      goto LABEL_28;
    }

LABEL_27:
    *v20 = v13;
    *v21 = v17;
    goto LABEL_28;
  }

  v20 = a1;
  v21 = a1 + 2;
  if (v19 >= v16)
  {
    goto LABEL_27;
  }

  *a1 = v15;
  a1[1] = v17;
  v20 = a1 + 1;
  v21 = a1 + 2;
  if (v19 >= v18)
  {
    goto LABEL_27;
  }

LABEL_28:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *(*v34 + 28);
    v39 = *v14;
    if (v38 >= *(v39 + 28))
    {
      v40 = i;
      while (1)
      {
        *(a1 + v40) = v39;
        v41 = v40 - 8;
        if (v40 == 8)
        {
          break;
        }

        v39 = *(a1 + v40 - 16);
        v40 -= 8;
        if (v38 < *(v39 + 28))
        {
          v42 = (a1 + v41);
          goto LABEL_36;
        }
      }

      v42 = a1;
LABEL_36:
      *v42 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v14 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

void *_ZNSt3__119__partial_sort_implB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEESO_EET1_SP_SP_T2_OSE_(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEvT1_OSE_NS_15iterator_traitsISP_E15difference_typeESP_(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*(*v12 + 28) >= *(*a1 + 28))
        {
          *v12 = *a1;
          *a1 = v13;
          _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEvT1_OSE_NS_15iterator_traitsISP_E15difference_typeESP_(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(*(v21 - 1) + 28) >= *(v22 + 28))
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 == --v6)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v6;
          *v6 = v15;
          _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEvT1_SP_OSE_NS_15iterator_traitsISP_E15difference_typeE(a1, (v16 + 1), a4, v16 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEvT1_OSE_NS_15iterator_traitsISP_E15difference_typeESP_(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *(*v8 + 28) >= *(v8[1] + 28))
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      v12 = *(*a4 + 28);
      if (*(*v8 + 28) < v12)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && *(*v8 + 28) >= *(v8[1] + 28))
          {
            ++v8;
            v7 = v14;
          }

          v10 = *v8;
        }

        while (*(*v8 + 28) < v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERZN5kaldi6quasar20ConfusionNetworkSlotINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE8SortArcsEvEUlRT_RT0_E_PPNS_4pairIKSA_NS3_19ConfusionNetworkArcISA_EEEEEEvT1_SP_OSE_NS_15iterator_traitsISP_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *v5;
    v10 = *(v8 + 28);
    if (*(*v5 + 28) >= v10)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v9 = *v5;
      }

      while (*(*v5 + 28) >= v10);
      *v6 = v7;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<std::vector<std::string> ()(std::vector<std::string>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::allocator_traits<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>::destroy[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,0>(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](a2 + 144);
  v3 = *(a2 + 112);
  if (v3)
  {
    *(a2 + 120) = v3;
    operator delete(v3);
  }

  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(a2 + 48);

  return std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(a2 + 8);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,kaldi::quasar::ConfusionNetworkSlot<std::string>,0>(a1, a4, v7);
      v7 += 176;
      a4 = v12 + 176;
      v12 += 176;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>::destroy[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,0>(a1, v5);
      v5 += 176;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::allocator_traits<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,kaldi::quasar::ConfusionNetworkSlot<std::string>,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(a2 + 8, (a3 + 8));
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(a2 + 48, (a3 + 48));
  v5 = *(a3 + 88);
  *(a2 + 104) = *(a3 + 104);
  *(a2 + 88) = v5;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 128) = *(a3 + 128);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a2 + 136) = *(a3 + 136);

  return std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](a2 + 144, a3 + 144);
}

uint64_t std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 176;
    result = std::allocator_traits<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>::destroy[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,0>(v5, v4 - 176);
  }

  return result;
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string&,int &,int &>(uint64_t a1, __int128 *a2, int *a3, int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v24 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>>(a1, v8);
  }

  v9 = 40 * v4;
  v21 = 0;
  v22 = v9;
  v23 = v9;
  v10 = *a3;
  v11 = *a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
  }

  else
  {
    v12 = *a2;
    *(v9 + 16) = *(a2 + 2);
    *v9 = v12;
    v13 = v9;
    v14 = v9;
  }

  *(v9 + 24) = v10;
  *(v9 + 28) = v11;
  *(v9 + 37) = 1;
  *&v23 = v14 + 40;
  v15 = *(a1 + 8);
  v16 = v13 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v21);
  return v20;
}

void sub_1B55EF8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string&,int &,int &,float &>(uint64_t a1, __int128 *a2, int *a3, int *a4, int *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>>(a1, v9);
  }

  v16 = 0;
  v17 = 40 * v5;
  std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string>,std::string&,int &,int &,float &>(a1, (40 * v5), a2, a3, a4, a5);
  v18 = 40 * v5 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v16);
  return v15;
}

void sub_1B55EFA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string>,std::string&,int &,int &,float &>(int a1, std::string *this, __int128 *a3, int *a4, int *a5, int *a6)
{
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v10;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = v7;
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) = v8;
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = v9;
  WORD2(this[1].__r_.__value_.__r.__words[1]) = 0;
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__emplace_back_slow_path<std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>> &,std::function<std::string ()(std::string)> &>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x1745D1745D1745DLL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v7 = 0x1745D1745D1745DLL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>(a1, v7);
  }

  v14 = 0;
  v15 = 176 * v3;
  std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>> &,std::function<std::string ()(std::string)> &>(a1, 176 * v3, a2, a3);
  v16 = (176 * v3 + 176);
  v8 = a1[1];
  v9 = 176 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B55EFBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>> &,std::function<std::string ()(std::string)> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](v7, a4);
  kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(a2, a3, v7);
  return std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v7);
}

void sub_1B55EFC70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<kaldi::quasar::ConfusionNetwork<std::string>::Construct(void)::{lambda(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)#1},std::allocator<kaldi::quasar::ConfusionNetwork<std::string>::Construct(void)::{lambda(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)#1}>,float ()(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::__invoke[abi:ne200100]<kaldi::quasar::ConfusionNetwork<std::string>::Construct(void)::{lambda(kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string)#1} &,kaldi::quasar::ConfusionNetworkSlot<std::string>,std::string>(uint64_t a1, __int16 *a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v10 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(v11, a2 + 1);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(v12, a2 + 6);
  *v13 = *(a2 + 44);
  v14 = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *v15 = *(a2 + 7);
  v16 = *(a2 + 16);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v17 = *(a2 + 136);
  std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](v18, (a2 + 72));
  *__p = *a3;
  v9 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  HasToken = kaldi::quasar::ConfusionNetworkSlot<std::string>::HasToken(&v10, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v18);
  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  if (HasToken)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v12);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::~__hash_table(v11);
  return v6;
}

void sub_1B55EFEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::ConfusionNetworkSlot<std::string>::~ConfusionNetworkSlot(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string const&,int &,int &>(uint64_t a1, __int128 *a2, int *a3, int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v24 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>>(a1, v8);
  }

  v9 = 40 * v4;
  v21 = 0;
  v22 = v9;
  v23 = v9;
  v10 = *a3;
  v11 = *a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
  }

  else
  {
    v12 = *a2;
    *(v9 + 16) = *(a2 + 2);
    *v9 = v12;
    v13 = v9;
    v14 = v9;
  }

  *(v9 + 24) = v10;
  *(v9 + 28) = v11;
  *(v9 + 37) = 1;
  *&v23 = v14 + 40;
  v15 = *(a1 + 8);
  v16 = v13 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v21);
  return v20;
}

void sub_1B55F003C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__emplace_back_slow_path<std::string const&,int &,int &,float &>(uint64_t a1, __int128 *a2, int *a3, int *a4, int *a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3);
  v6 = v5 + 1;
  if (v5 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v9 = 0x666666666666666;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>>(a1, v9);
  }

  v16 = 0;
  v17 = 40 * v5;
  std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string>,std::string&,int &,int &,float &>(a1, (40 * v5), a2, a3, a4, a5);
  v18 = 40 * v5 + 40;
  v10 = *(a1 + 8);
  v11 = 40 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(&v16);
  return v15;
}

void sub_1B55F0190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PhoneticMatchDecoderStat>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>::construct[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string>,kaldi::quasar::ConfusionNetworkSlot<std::string>,0>(a1, v8, v10);
      v10 += 176;
      v8 += 176;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *>(&v12, a2, v7, v6);
}

uint64_t std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::emplace_back<kaldi::quasar::ConfusionNetworkSlot<std::string> const&>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5D1745D1745D1746 * ((v4 - *a1) >> 4);
      }

      v10 = a1[4];
      v12[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>>(v10, v9);
    }

    v6 = (0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 4) + 1 + ((0x2E8BA2E8BA2E8BA3 * ((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    v7 = -176 * v6;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *>(v12, v5, v4, v5 - 176 * v6);
    v4 = v8;
    a1[1] += v7;
    a1[2] = v8;
  }

  result = kaldi::quasar::ConfusionNetworkSlot<std::string>::ConfusionNetworkSlot(v4, a2);
  a1[2] += 176;
  return result;
}

void sub_1B55F03BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::quasar::ConfusionNetworkSlot<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::ConfusionNetworkSlot<std::string>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkSlot<std::string>>,kaldi::quasar::ConfusionNetworkSlot<std::string>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; i -= 176)
  {
    v8 = a3 + i;
    if (a3 + i == a2)
    {
      break;
    }

    v9 = a4 + i;
    *(a4 + i - 176) = *(v8 - 176);
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__move_assign(a4 + i - 168, (v8 - 168));
    v10 = v8 - 128;
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(a4 + i - 128, v10);
    v11 = (a4 + i - 88);
    if (*(a4 + i - 65) < 0)
    {
      operator delete(*v11);
    }

    v12 = *(v10 + 40);
    *(v9 - 72) = *(v10 + 56);
    *v11 = v12;
    *(v10 + 63) = 0;
    *(v10 + 40) = 0;
    std::vector<int>::__move_assign(v9 - 64, (v10 + 64));
    *(v9 - 40) = *(v10 + 88);
    std::__function::__value_func<std::string ()(std::string)>::operator=[abi:ne200100](v9 - 32, v10 + 96);
  }

  return a3;
}

void std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__function::__value_func<std::string ()(std::string)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<std::string ()(std::string)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<std::string ()(std::string)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *std::function<std::string ()(std::string)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<std::string ()(std::string)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<std::string ()(std::string)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<std::string ()(std::string)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>::operator=[abi:ne200100]((v8 + 16), (v4 + 2));
        v10 = *v8;
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__emplace_multi<std::pair<std::string const,kaldi::quasar::ConfusionNetworkArc<std::string>> const&>();
  }
}

void sub_1B55F08B0(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

std::string *std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>::operator=[abi:ne200100](std::string *a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  a1[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
  if (a1 != a2)
  {
    std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__assign_with_size[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(&a1[1].__r_.__value_.__l.__size_, *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&a1[2].__r_.__value_.__l.__size_, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&a1[3].__r_.__value_.__l.__size_, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  }

  std::function<float ()(float,float)>::operator=(&a1[4].__r_.__value_.__l.__size_, a2 + 104);
  return a1;
}

void std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__assign_with_size[abi:ne200100]<kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__vdeallocate(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::quasar::ConfusionNetworkArcElement<std::string>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v14 = *(v6[1].__r_.__value_.__r.__words + 6);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        *(v8 + 30) = v14;
        v6 = (v6 + 40);
        v8 += 40;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = v11[-1].__r_.__value_.__s.__data_[7];
      v11 = (v11 - 40);
      if (v15 < 0)
      {
        operator delete(v11->__r_.__value_.__l.__data_);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (v11 + __str - v8);
    if (v11 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v13 = *(v6[1].__r_.__value_.__r.__words + 6);
        *(v8 + 24) = v6[1].__r_.__value_.__l.__data_;
        *(v8 + 30) = v13;
        v6 = (v6 + 40);
        v8 += 40;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::ConfusionNetworkArcElement<std::string>>,kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*,kaldi::quasar::ConfusionNetworkArcElement<std::string>*>(a1, v12, a3, v11);
  }
}

void sub_1B55F0B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55F0C0C(_Unwind_Exception *a1)
{
  *v2 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,void *>>>::operator()[abi:ne200100](v3, v1);
  _Unwind_Resume(a1);
}

void *std::__function::__value_func<std::string ()(std::string)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_1B55F0E80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *,kaldi::quasar::ConfusionNetworkSlot<std::string> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    *(a4 + v7) = *(a2 + v7);
    std::__hash_table<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,kaldi::quasar::ConfusionNetworkArc<std::string>>>>::__move_assign(a4 + v7 + 8, (a2 + v7 + 8));
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__move_assign(a4 + v7 + 48, (a2 + v7 + 48));
    if (*(a4 + v7 + 111) < 0)
    {
      operator delete(*(v8 + 88));
    }

    v9 = *(a2 + v7 + 88);
    *(v8 + 104) = *(a2 + v7 + 104);
    *(v8 + 88) = v9;
    *(a2 + v7 + 111) = 0;
    *(a2 + v7 + 88) = 0;
    std::vector<int>::__move_assign(v8 + 112, (a2 + v7 + 112));
    *(v8 + 136) = *(a2 + v7 + 136);
    v10 = a2 + v7 + 144;
    std::__function::__value_func<std::string ()(std::string)>::operator=[abi:ne200100](v8 + 144, v10);
    v7 += 176;
  }

  while (v10 + 32 != v6);
  return v6;
}

uint64_t quasar::lm::nullstream(quasar::lm *this)
{
  v2 = &quasar::lm::nullstream(void)::os;
  if (atomic_load_explicit(&quasar::lm::nullstream_flag, memory_order_acquire) != -1)
  {
    v5[0] = &v3;
    v5[1] = &v2;
    v4 = v5;
    std::__call_once(&quasar::lm::nullstream_flag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<quasar::lm::nullstream(void)::$_0 &&,std::ofstream **&&>>);
  }

  return quasar::lm::nullstream(void)::os;
}

fst *quasar::lm::LogMessage::LogMessage(fst *a1, int a2, const char *a3, const char *a4, uint64_t a5)
{
  *a1 = a2 == 5;
  if (quasar::lm::gMinimumLevel <= a2)
  {
    v10 = fst::cerr(a1);
  }

  else
  {
    v10 = quasar::lm::nullstream(a1);
  }

  *(a1 + 1) = v10;
  v11 = quasar::lm::operator<<(v10, a2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " (", 2);
  v13 = strlen(a4);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a4, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " ", 1);
  v16 = strlen(a3);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, a3, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "():", 3);
  v19 = MEMORY[0x1B8C84C00](v18, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ") ", 2);
  return a1;
}

void *quasar::lm::operator<<(void *a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v3 = "WARNING";
      goto LABEL_12;
    }

    if (a2 != 5)
    {
LABEL_8:
      v3 = "UNKNOWN";
LABEL_12:
      v4 = 7;
      goto LABEL_13;
    }

    v3 = "FATAL";
LABEL_10:
    v4 = 5;
    goto LABEL_13;
  }

  if (a2 == 1)
  {
    v3 = "TRACE";
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    goto LABEL_8;
  }

  v3 = "INFO";
  v4 = 4;
LABEL_13:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
  return a1;
}

void quasar::lm::LogMessage::~LogMessage(quasar::lm::LogMessage *this)
{
  std::ios_base::getloc((*(this + 1) + *(**(this + 1) - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  if (*this == 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "LibLM encountered a fatal error.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }
}

void sub_1B55F1440(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v3);
  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

double quasar::OnlineEmbeddingRetranslationDecoder::OnlineEmbeddingRetranslationDecoder(uint64_t a1, __int128 *a2)
{
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D201F8;
  result = 0.0;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0;
  return result;
}

void quasar::OnlineEmbeddingRetranslationDecoder::~OnlineEmbeddingRetranslationDecoder(quasar::OnlineEmbeddingRetranslationDecoder *this)
{
  *this = &unk_1F2D201F8;
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 62, 0);
  std::unique_ptr<kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::reset[abi:ne200100](this + 61, 0);
  v3 = *(this + 60);
  *(this + 60) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 59);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<quasar::Config>::reset[abi:ne200100](this + 57, 0);

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineEmbeddingRetranslationDecoder::~OnlineEmbeddingRetranslationDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineEmbeddingRetranslationDecoder::finishInit(quasar::OnlineEmbeddingRetranslationDecoder *this)
{
  v2 = *(this + 57);
  v3 = *(v2 + 39);
  if (v3 < 0)
  {
    v3 = *(v2 + 24);
  }

  if (v3)
  {
    quasar::ModelLoader::readSymbolTable(*(this + 47), v2 + 16, 4, 0, &v7);
    v4 = v7;
    v7 = 0uLL;
    v5 = *(this + 59);
    *(this + 29) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v2 = *(this + 57);
  }

  quasar::QsrTextSymbolTable::init(*v2, (this + 32), 0, *(this + 449), 1);
  quasar::OnlineEmbeddingRetranslationDecoder::initPDecOptions(*(this + 57), v6);
}

void sub_1B55F1910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  a11 = (v11 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read(uint64_t a1, const std::string *a2, int a3, char a4, char a5, uint64_t *a6)
{
  v12 = a1 + 4096;
  std::string::operator=((a1 + 4904), a2);
  *(v12 + 832) = a4;
  *(v12 + 833) = a5;
  v14 = *a6;
  v13 = a6[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 4936) = v14;
  v15 = *(a1 + 4944);
  *(a1 + 4944) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a3)
  {
    fst::FstReadOptions::FstReadOptions(__p, a2, 0, 0, 0);
    v19 = 2;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ReadMapped(a1, __p);
  }

  v21 = 0;
  v16 = kaldi::Input::Input(v20, a2, &v21);
  v17 = kaldi::Input::Stream(v16);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read(a1, v17, v21, 0);
}

uint64_t quasar::OnlineEmbeddingRetranslationDecoder::getKeyForWord(uint64_t a1, uint64_t a2)
{
  result = quasar::QsrTextSymbolTable::Find(**(a1 + 456), a2);
  if (result == -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Could not find ", 16);
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

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, " in base symbol table");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  return result;
}

void sub_1B55F2070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  a22 = &a26;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a22);
  v28 = *(v26 - 144);
  if (v28)
  {
    *(v26 - 136) = v28;
    operator delete(v28);
  }

  v29 = *(v26 - 120);
  if (v29)
  {
    *(v26 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineEmbeddingRetranslationDecoder::reportFinalResult(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[58];
  v5 = a1[59];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 176);
  *(a2 + 168) = v6;
  *(a2 + 176) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  quasar::SymbolTableList::clear(*(*a3 + 488));
  v8 = *(*a3 + 488);
  v9 = a1[57];
  v11 = *v9;
  v10 = v9[1];
  v12 = v11;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v8, &v12, 0, -1);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B55F2594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineEmbeddingRetranslationDecoder::calculateCtCIdForFrameAndUpdateShortListIds(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(*(a1 + 456) + 40) > v2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Configured ctcShortListBeam is higher than provided frame dim");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v8);
  }

  v9[0] = 0;
  v9[1] = 0;
  v3 = v9;
  v8 = v9;
  if (v2 > 0)
  {
    std::__tree<std::pair<float,int>>::__emplace_multi<float,int &>();
  }

  do
  {
    v4 = v3[2];
    v5 = *v4 == v3;
    v3 = v4;
  }

  while (v5);
  v6 = *(v4 + 8);
  std::__tree<int>::destroy(&v8, v9[0]);
  return v6;
}

void quasar::OnlineEmbeddingRetranslationDecoder::populateShrinkedAedVecs(int a1, uint64_t a2, int *a3, const void **a4, uint64_t *a5, BOOL *a6)
{
  if (*a3)
  {
    if (*(a4[1] - 1) == a1)
    {
      kaldi::VectorBase<float>::AddVec<float>();
      goto LABEL_10;
    }

    if (*a3 >= 1)
    {
      kaldi::VectorBase<float>::Scale();
    }
  }

  *a3 = 0;
  v12 = a5[1];
  if (v12 >= a5[2])
  {
    v13 = std::vector<kaldi::SubVector<float>>::__emplace_back_slow_path<kaldi::SubVector<float> const&>(a5, a2);
  }

  else
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    *v12 = *a2;
    *(v12 + 2) = *(a2 + 8);
    v13 = (v12 + 3);
  }

  a5[1] = v13;
LABEL_10:
  ++*a3;
  v15 = a4[1];
  v14 = a4[2];
  if (v15 >= v14)
  {
    v17 = *a4;
    v18 = v15 - *a4;
    v19 = v18 >> 2;
    v20 = (v18 >> 2) + 1;
    if (v20 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v21 = v14 - v17;
    if (v21 >> 1 > v20)
    {
      v20 = v21 >> 1;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
    v23 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v23);
    }

    *(4 * v19) = a1;
    v16 = 4 * v19 + 4;
    memcpy(0, v17, v18);
    v24 = *a4;
    *a4 = 0;
    a4[1] = v16;
    a4[2] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v15 = a1;
    v16 = (v15 + 4);
  }

  a4[1] = v16;
  *a6 = (*a6 | a1) != 0;
}

void quasar::OnlineEmbeddingRetranslationDecoder::runPDec(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int **a7)
{
  if ((*(*a5 + 8))(a5, a4))
  {
    v12 = 488;
  }

  else
  {
    v12 = 496;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Init<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(*(a1 + 480), *(a1 + v12), a6);
  std::__sort<std::__less<int,int> &,int *>();
  v13 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(*a7, a7[1]);
  if (v13 != a7[1])
  {
    a7[1] = v13;
  }

  quasar::OnlineEmbeddingRetranslationDecoder::prepareShrinkedEmbeddings(a1, a2, a3, v14);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ReadEmbeddings<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(*(a1 + 480), *(a1 + v12), v14, a7);
}

void sub_1B55F3594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a17);
  std::__tree<int>::destroy(&STACK[0x2B0], STACK[0x2B8]);
  a17 = v17 - 248;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a17);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v17 - 224));
  v19 = *(v17 - 200);
  if (v19)
  {
    *(v17 - 192) = v19;
    operator delete(v19);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v17 - 144));
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::GetCurrentBestWordIds(void *a1, const void **a2)
{
  v4 = a1[723];
  if (v4 == a1[724])
  {
    v5 = (a1 + 729);
  }

  else
  {
    v5 = (*v4 + 32);
  }

  v6 = *v5;
  if (v6)
  {
    a2[1] = *a2;
    if (v6 >= 1)
    {
      v7 = a1[726];
      do
      {
        v8 = 8 * v6;
        std::vector<int>::push_back[abi:ne200100](a2, (v7 + 8 * v6 + 4));
        v7 = a1[726];
        v6 = *(v7 + v8);
      }

      while (v6 > 0);
      v9 = *a2;
      v10 = a2[1];
      v11 = v10 - 4;
      if (*a2 != v10 && v11 > v9)
      {
        v13 = v9 + 4;
        do
        {
          v14 = *(v13 - 1);
          *(v13 - 1) = *v11;
          *v11 = v14;
          v11 -= 4;
          v15 = v13 >= v11;
          v13 += 4;
        }

        while (!v15);
      }
    }
  }
}

void quasar::OnlineEmbeddingRetranslationDecoder::reportPartialResult(quasar::QsrTextSymbolTable ***a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5)
{
  if (*(a2 + 561) == 1)
  {
    v6 = *(*a3 + 576);
    quasar::OnlineEmbeddingRetranslationDecoder::getBestWords(a1, a5, &v14);
    v7 = *(*a4 + 12);
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    memset(v11, 0, sizeof(v11));
    v10 = 0;
    *__p = 0u;
    v9 = 0u;
    std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
    LOBYTE(v10) = 0;
    (*(*v6 + 24))(v6, &v14, v7, 1, 0, 0, v13, v12, v11, 0, __p);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[1]);
    }

    __p[0] = v11;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = v13;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
    __p[0] = &v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_1B55F38F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  a13 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = (v25 - 80);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a13);
  a13 = (v25 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

double kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Init<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v22, 3);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "entered Init with #ActiveHyps: ", 31);
    if (*(a1 + 5872) == *(a1 + 5864) || *(a1 + 5836))
    {
      v7 = (*(a1 + 5792) - *(a1 + 5784)) >> 3;
    }

    else
    {
      v7 = 1;
    }

    v8 = MEMORY[0x1B8C84C00](v6, v7);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " at decoding-position: ", 23);
    MEMORY[0x1B8C84C00](v9, *(a1 + 5836));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v22);
  }

  *(a1 + 5712) = a3;
  kaldi::quasar::Encdec::Start(*(a1 + 136), *(a2 + 312), (a2 + 112));
  (*(**(a1 + 5712) + 224))(*(a1 + 5712));
  v10 = (*(*a3 + 200))(a3);
  (*(**(a1 + 5712) + 176))(*(a1 + 5712), v10);
  *(a1 + 5720) = -1;
  *(a1 + 5728) = vneg_f32(0x7F0000007FLL);
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 5736), 0, 0, 0);
  v11 = *(a2 + 184);
  *(a1 + 5760) = 0x3F8000004F000000;
  if (v11 == 1)
  {
    *(a1 + 5764) = 1.0 - *(a2 + 180);
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare::NbestCompare(&v22, *(a2 + 216), *(a2 + 220), *(a2 + 224));
  *(a1 + 5768) = v22;
  *(a1 + 5776) = v23;
  *(a1 + 5792) = *(a1 + 5784);
  std::vector<kaldi::Matrix<float>>::resize((a1 + 4952), 1uLL);
  kaldi::Matrix<float>::Resize(*(a1 + 4952), 0, 0, 0, 0);
  v12 = *(a1 + 5136);
  v13 = *(a1 + 5128);
  if (v12 != v13)
  {
    v14 = v12 - 6;
    v15 = v12 - 6;
    v16 = v12 - 6;
    do
    {
      v17 = *v16;
      v16 -= 6;
      (*(v17 + 16))(v15);
      v14 -= 6;
      v18 = v15 == v13;
      v15 = v16;
    }

    while (!v18);
  }

  *(a1 + 5136) = v13;
  v19 = *(a1 + 5160);
  v20 = *(a1 + 5152);
  while (v19 != v20)
  {
    v19 = kaldi::Matrix<float>::~Matrix(v19 - 40);
  }

  *(a1 + 5160) = v20;
  result = 0.0;
  *(a1 + 5832) = 0;
  *(a1 + 5872) = *(a1 + 5864);
  return result;
}

void sub_1B55F3C64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineEmbeddingRetranslationDecoder::prepareShrinkedEmbeddings@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Provided aedVecBackCount is 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  kaldi::Matrix<float>::Matrix(v11, -1431655765 * ((a2[1] - *a2) >> 3), 512, 1, 0);
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      kaldi::MatrixBase<float>::CopyRowFromVec(v11, v7 + v8, v9++);
      v7 = *a2;
      v8 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v9);
  }

  kaldi::MatrixBase<float>::NumRows(v11);
  kaldi::MatrixBase<float>::NumCols(v11);
  kaldi::VectorBase<float>::Scale();
  kaldi::MatrixBase<float>::Scale(v11, *(*(a1 + 456) + 224));
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = &unk_1F2D0EE38;
  *(a4 + 40) = 0;
  kaldi::CuMatrix<float>::Swap(a4, v11);
  return kaldi::Matrix<float>::~Matrix(v11);
}

void sub_1B55F3E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(v5);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ReadEmbeddings<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v8 = *(a1 + 136);
  v9 = *(a2 + 288);
  v10 = *(a2 + 292);
  __p = 0;
  v13 = 0;
  v14 = 0;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SuppressedIds(a1, a2 + 64, a2 + 88, (a2 + 328), v11);
  kaldi::quasar::Encdec::ConstrainSoftmax(v8, a2 + 264, v9, v10, a4, &__p, v11);
  std::__tree<int>::destroy(v11, v11[1]);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  kaldi::quasar::Encdec::ResetHistoryState(*(a1 + 136));
  kaldi::quasar::Encdec::StartFeedforward(*(a1 + 136), a3, 0, 1);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::AddInitialHypToCurrent<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2);
}

void sub_1B55F3F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13)
{
  std::__tree<int>::destroy(&a9, a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SetPartialBiasIds(uint64_t a1, char **a2)
{
  v3 = (a1 + 5840);
  if (v3 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v5, 5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Setting partial bias IDs, length: ", 34);
    MEMORY[0x1B8C84C30](v4, (a2[1] - *a2) >> 2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v5);
  }
}

void sub_1B55F3FDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Write<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 3);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "entered Write with #ActiveHyps: ", 32);
    if (*(a1 + 5872) == *(a1 + 5864) || *(a1 + 5836))
    {
      v3 = (*(a1 + 5792) - *(a1 + 5784)) >> 3;
    }

    else
    {
      v3 = 1;
    }

    v4 = MEMORY[0x1B8C84C00](v2, v3);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " at decoding-position: ", 23);
    MEMORY[0x1B8C84C00](v5, *(a1 + 5836));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  memset(v7, 0, 24);
  std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v7, 1uLL);
}

void sub_1B55F6B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&STACK[0x260]);
  if (__p)
  {
    a68 = __p;
    operator delete(__p);
  }

  a55 = &a70;
  std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__destroy_vector::operator()[abi:ne200100](&a55);
  kaldi::Vector<float>::Destroy(&a39);
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(&STACK[0x200]);
  v71 = *(v70 - 200);
  if (v71)
  {
    *(v70 - 192) = v71;
    operator delete(v71);
  }

  STACK[0x200] = &STACK[0x230];
  std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  v72 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v72;
    operator delete(v72);
  }

  JUMPOUT(0x1B55F6D2CLL);
}

void sub_1B55F6BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void **a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = STACK[0x268];
  if (STACK[0x268])
  {
    STACK[0x270] = v71;
    operator delete(v71);
  }

  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  a55 = &a70;
  std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>::__destroy_vector::operator()[abi:ne200100](&a55);
  kaldi::Vector<float>::Destroy(&a39);
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(&STACK[0x200]);
  v72 = *(v70 - 200);
  if (v72)
  {
    *(v70 - 192) = v72;
    operator delete(v72);
  }

  STACK[0x200] = &STACK[0x230];
  std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  v73 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v73;
    operator delete(v73);
  }

  JUMPOUT(0x1B55F6D2CLL);
}

void sub_1B55F6D24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void quasar::OnlineEmbeddingRetranslationDecoder::getWordById(quasar::QsrTextSymbolTable ***this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  quasar::QsrTextSymbolTable::Find(*this[57], a3);
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (!v5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Could not find a word for id: ", 30);
    v7 = MEMORY[0x1B8C84C00](v6, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " in base symbol table", 21);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }
}

void sub_1B55F6DEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineEmbeddingRetranslationDecoder::getBestWords(quasar::QsrTextSymbolTable ***a1@<X0>, unsigned int **a2@<X1>, std::vector<std::string> *a3@<X8>)
{
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a3, a2[1] - *a2);
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    do
    {
      quasar::OnlineEmbeddingRetranslationDecoder::getWordById(a1, *v6, __p);
      end = a3->__end_;
      value = a3->__end_cap_.__value_;
      if (end >= value)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((end - a3->__begin_) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((value - a3->__begin_) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        v25.__end_cap_.__value_ = a3;
        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v14);
        }

        v15 = 24 * v11;
        v16 = *__p;
        *(v15 + 16) = v24;
        *v15 = v16;
        __p[1] = 0;
        v24 = 0;
        __p[0] = 0;
        v17 = 24 * v11 + 24;
        v18 = a3->__end_ - a3->__begin_;
        v19 = (24 * v11 - v18);
        memcpy((v15 - v18), a3->__begin_, v18);
        begin = a3->__begin_;
        a3->__begin_ = v19;
        a3->__end_ = v17;
        v21 = a3->__end_cap_.__value_;
        a3->__end_cap_.__value_ = 0;
        v25.__end_ = begin;
        v25.__end_cap_.__value_ = v21;
        v25.__first_ = begin;
        v25.__begin_ = begin;
        std::__split_buffer<std::string>::~__split_buffer(&v25);
        v22 = SHIBYTE(v24);
        a3->__end_ = v17;
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v10 = *__p;
        end->__r_.__value_.__r.__words[2] = v24;
        *&end->__r_.__value_.__l.__data_ = v10;
        a3->__end_ = end + 1;
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

uint64_t std::tuple<int,std::vector<int>,std::vector<int>,std::vector<kaldi::quasar::TranslationUtil::NbestElement>,float>::~tuple(uint64_t a1)
{
  v5 = (a1 + 56);
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3ELm4EEEEJiNS_6vectorIiNS_9allocatorIiEEEES6_NS3_IN5kaldi6quasar15TranslationUtil12NbestElementENS4_ISA_EEEEfEEC2B8ne200100IJLm0ELm1ELm2ELm3ELm4EEJiS6_S6_SC_fEJEJEJRiRS6_SG_RSC_RfEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSK_IJDpT2_EEEDpOT3_(uint64_t a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, _DWORD *a6)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 32, *a4, a4[1], (a4[1] - *a4) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*>(a1 + 56, *a5, a5[1], 0xF0F0F0F0F0F0F0F1 * ((a5[1] - *a5) >> 4));
  *(a1 + 80) = *a6;
  return a1;
}

void sub_1B55F70F4(_Unwind_Exception *exception_object)
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

uint64_t std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B55F7190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

kaldi::quasar::TranslationUtil::NbestElement *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*>(int a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v6);
      v6 = (v6 + 272);
      this = (this + 272);
      v7 -= 272;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B55F7210(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 272);
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v4);
      v4 = (v5 - 272);
      v2 += 272;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<quasar::Config>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::Config::~Config(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::Config::~Config(void **this)
{
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v2 = this[21];
  if (v2)
  {
    this[22] = v2;
    operator delete(v2);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v3 = this[15];
  if (v3)
  {
    this[16] = v3;
    operator delete(v3);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::TranslationBeamSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11 = a8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = &unk_1F2D202D0;
  *(a1 + 40) = 1065353216;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0x400000003;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "UNK");
  kaldi::quasar::BPE::BPE(a1 + 152, 1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  std::allocate_shared[abi:ne200100]<kaldi::quasar::PhraseBook,std::allocator<kaldi::quasar::PhraseBook>,BOOL &,0>();
}

void sub_1B55F7714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiLogMessage::~KaldiLogMessage(&a16);
  v24 = *(v16 + 5864);
  if (v24)
  {
    *(v16 + 5872) = v24;
    operator delete(v24);
  }

  v25 = *(v16 + 5840);
  if (v25)
  {
    *(v16 + 5848) = v25;
    operator delete(v25);
  }

  v26 = *(v16 + 5808);
  if (v26)
  {
    *(v16 + 5816) = v26;
    operator delete(v26);
  }

  v27 = *v22;
  if (*v22)
  {
    *(v16 + 5792) = v27;
    operator delete(v27);
  }

  v28 = *(v16 + v21);
  if (v28)
  {
    *(v16 + 5744) = v28;
    operator delete(v28);
  }

  kaldi::Matrix<float>::~Matrix(v16 + v20);
  kaldi::nnet1::Nnet::~Nnet((v16 + 5256));
  a16 = v16 + 5152;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = v16 + 5128;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v29 = *(v16 + 5120);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  kaldi::Matrix<float>::~Matrix(v16 + 5072);
  kaldi::CuMatrix<float>::~CuMatrix(v19);
  kaldi::CuMatrix<float>::~CuMatrix(a9);
  a16 = v16 + 4952;
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&a16);
  v30 = *(v16 + 4944);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (*(v18 + 831) < 0)
  {
    operator delete(*(v16 + 4904));
  }

  kaldi::quasar::NNMTTransliterator::~NNMTTransliterator((v16 + 408));
  v31 = *(v16 + 400);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  kaldi::quasar::BPE::~BPE((v16 + 152));
  v32 = *(v16 + 144);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  kaldi::quasar::InputHammer::~InputHammer(v17);
  _Unwind_Resume(a1);
}

void sub_1B55F78A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B55F7878);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::~TranslationBeamSearch(uint64_t a1)
{
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::~TranslationBeamSearch(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::quasar::PhraseBook>::__shared_ptr_emplace[abi:ne200100]<BOOL &,std::allocator<kaldi::quasar::PhraseBook>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D20300;
  kaldi::quasar::PhraseBook::PhraseBook((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::PhraseBook>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D20300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

kaldi::quasar::PhraseBook *kaldi::quasar::PhraseBook::PhraseBook(kaldi::quasar::PhraseBook *this, char a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  std::string::basic_string[abi:ne200100]<0>(this + 40, "|||");
  *(this + 16) = 0;
  *(this + 68) = a2;
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>::destroy[abi:ne200100]<kaldi::quasar::PhraseBook::PhraseBookEntry,0>(a1, i))
  {
    i -= 120;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>::destroy[abi:ne200100]<kaldi::quasar::PhraseBook::PhraseBookEntry,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void kaldi::quasar::PhraseBook::PhraseBookEntry::~PhraseBookEntry(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::allocator<kaldi::quasar::PhraseBook>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::~__hash_table(a2);
}

void kaldi::quasar::InputHammer::~InputHammer(kaldi::quasar::InputHammer *this)
{
  v2 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(this + 40);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::~TranslationBeamSearch(uint64_t a1)
{
  *a1 = &unk_1F2D202D0;
  v2 = *(a1 + 5864);
  if (v2)
  {
    *(a1 + 5872) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 5840);
  if (v3)
  {
    *(a1 + 5848) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 5808);
  if (v4)
  {
    *(a1 + 5816) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 5784);
  if (v5)
  {
    *(a1 + 5792) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 5736);
  if (v6)
  {
    *(a1 + 5744) = v6;
    operator delete(v6);
  }

  kaldi::Matrix<float>::~Matrix(a1 + 5632);
  kaldi::nnet1::Nnet::~Nnet((a1 + 5256));
  v12 = (a1 + 5152);
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v12 = (a1 + 5128);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(a1 + 5120);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  kaldi::Matrix<float>::~Matrix(a1 + 5072);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 5024);
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 4976);
  v12 = (a1 + 4952);
  std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(a1 + 4944);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(a1 + 4927) < 0)
  {
    operator delete(*(a1 + 4904));
  }

  kaldi::quasar::NNMTTransliterator::~NNMTTransliterator((a1 + 408));
  v9 = *(a1 + 400);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  kaldi::quasar::BPE::~BPE((a1 + 152));
  v10 = *(a1 + 144);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = (a1 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(a1 + 48);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 8);
  return a1;
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ReadMapped(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 5112))
  {
    kaldi::ReadMapped<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>(a2);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Already mapped from a file");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
}

void sub_1B55F805C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 4928);
  v5 = *(a1 + 4929);
  v6 = *(a1 + 4944);
  v7[0] = *(a1 + 4936);
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  kaldi::quasar::TMTools::GetModel<kaldi::quasar::Encdec>((a1 + 4904), a2, a3, a4, v4, v5, v7);
}

void sub_1B55F844C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ReadMapped<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>(uint64_t a1)
{
  v18[34] = *MEMORY[0x1E69E9840];
  v8 = 0;
  kaldi::Input::Input(v7, a1, &v8);
  if (v8)
  {
    v2 = kaldi::Input::Stream(v7);
    std::istream::seekg();
    std::istream::tellg();
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    std::istream::seekg();
    fst::MappedFile::Map(v2, a1, v18[16]);
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Memory mapping failed. Not a valid Kaldi binary file: ", 54);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
}

void sub_1B55F8768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TMTools::GetModel<kaldi::quasar::Encdec>(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void *a7)
{
  if (*a7)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::Encdec>();
  }

  v9 = kaldi::quasar::Encdec::ModelFileMap(0);
  if (a5)
  {
    v10 = *(std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v9, a1) + 64);
    if (v10)
    {
      std::__shared_weak_count::lock(v10);
    }
  }

  operator new();
}

void sub_1B55F8B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  v14 = *(v12 - 104);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::PhraseBook::Read(uint64_t a1, uint64_t *a2, int a3)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "Reading phrasebook", 18);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v31);
  }

  kaldi::ExpectToken(a2, a3, "<PhraseBook>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 64);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "num_entries ", 12);
    MEMORY[0x1B8C84C00](v6, *(a1 + 64));
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v31);
  }

  v7 = *(a1 + 64);
  if ((a3 & 1) == 0)
  {
    if (v7 < 1)
    {
      goto LABEL_87;
    }

    v14 = 0;
    v15 = MEMORY[0x1E69E5318];
    while (1)
    {
      memset(&v30, 0, sizeof(v30));
      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v16 = std::locale::use_facet(&v31, v15);
      v17 = (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v31);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v30, v17);
      kaldi::Trim(&v30);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v30.__r_.__value_.__l.__size_ != 13)
        {
          goto LABEL_56;
        }

        v18 = v30.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) != 13)
        {
          goto LABEL_56;
        }

        v18 = &v30;
      }

      v19 = v18->__r_.__value_.__r.__words[0];
      v20 = *(v18->__r_.__value_.__r.__words + 5);
      if (v19 == 0x6573617268502F3CLL && v20 == 0x3E6B6F6F42657361)
      {
        v25 = 1;
        if ((*(&v30.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

LABEL_56:
      memset(&v29, 0, sizeof(v29));
      kaldi::SplitStringOnString(&v30, (a1 + 40), &v29);
      if (((0xAAAAAAAAAAAAAAABLL * ((v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0]) >> 3)) & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        kaldi::Trim(v29.__r_.__value_.__l.__data_);
        kaldi::quasar::PhraseBook::PreProcess(a1, v29.__r_.__value_.__l.__data_, &v28);
        kaldi::Trim((v29.__r_.__value_.__r.__words[0] + 24));
        if (v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0] == 72)
        {
          kaldi::Trim((v29.__r_.__value_.__r.__words[0] + 48));
        }

        if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &v28.__r_.__value_.__l.__data_))
        {
          memset(&v31, 0, sizeof(v31));
          v41 = &v28;
          v22 = std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v28.__r_.__value_.__l.__data_);
          std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__vdeallocate(v22 + 5);
          *(v22 + 5) = v31;
          memset(&v31, 0, sizeof(v31));
          __c.__r_.__value_.__r.__words[0] = &v31;
          std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](&__c);
        }

        __c.__r_.__value_.__r.__words[0] = &v28;
        v23 = std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &v28.__r_.__value_.__l.__data_);
        v24 = v29.__r_.__value_.__r.__words[0];
        if (v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0] == 72)
        {
          if (*(v29.__r_.__value_.__r.__words[0] + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&__c, *(v29.__r_.__value_.__r.__words[0] + 48), *(v29.__r_.__value_.__r.__words[0] + 56));
          }

          else
          {
            __c = *(v29.__r_.__value_.__r.__words[0] + 48);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__c, "");
        }

        kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(&v31, &v28, v24, (v24 + 24), &__c);
        std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::push_back[abi:ne200100]((v23 + 5), &v31);
        if (v39 < 0)
        {
          operator delete(__p);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        if (v35 < 0)
        {
          operator delete(v34);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__c.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__c.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        --v14;
      }

      v31.__r_.__value_.__r.__words[0] = &v29;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v31);
      v25 = 0;
      if ((*(&v30.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_85;
      }

LABEL_84:
      operator delete(v30.__r_.__value_.__l.__data_);
LABEL_85:
      if ((v25 & 1) == 0 && ++v14 < *(a1 + 64))
      {
        continue;
      }

      goto LABEL_87;
    }
  }

  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      memset(&v29, 0, sizeof(v29));
      memset(&v28, 0, sizeof(v28));
      memset(&v30, 0, sizeof(v30));
      LODWORD(v31.__r_.__value_.__l.__data_) = 0;
      std::istream::read();
      if (SLODWORD(v31.__r_.__value_.__l.__data_) >= 1)
      {
        v9 = 0;
        do
        {
          __c.__r_.__value_.__s.__data_[0] = 0;
          std::istream::read();
          std::string::push_back(&v30, __c.__r_.__value_.__s.__data_[0]);
          ++v9;
        }

        while (v9 < SLODWORD(v31.__r_.__value_.__l.__data_));
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        *v29.__r_.__value_.__l.__data_ = 0;
        v29.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v29.__r_.__value_.__s.__data_[0] = 0;
        *(&v29.__r_.__value_.__s + 23) = 0;
      }

      LODWORD(v31.__r_.__value_.__l.__data_) = 0;
      std::istream::read();
      if (SLODWORD(v31.__r_.__value_.__l.__data_) >= 1)
      {
        v10 = 0;
        do
        {
          __c.__r_.__value_.__s.__data_[0] = 0;
          std::istream::read();
          std::string::push_back(&v29, __c.__r_.__value_.__s.__data_[0]);
          ++v10;
        }

        while (v10 < SLODWORD(v31.__r_.__value_.__l.__data_));
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        *v28.__r_.__value_.__l.__data_ = 0;
        v28.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v28.__r_.__value_.__s.__data_[0] = 0;
        *(&v28.__r_.__value_.__s + 23) = 0;
      }

      LODWORD(v31.__r_.__value_.__l.__data_) = 0;
      std::istream::read();
      if (SLODWORD(v31.__r_.__value_.__l.__data_) >= 1)
      {
        v11 = 0;
        do
        {
          __c.__r_.__value_.__s.__data_[0] = 0;
          std::istream::read();
          std::string::push_back(&v28, __c.__r_.__value_.__s.__data_[0]);
          ++v11;
        }

        while (v11 < SLODWORD(v31.__r_.__value_.__l.__data_));
      }

      kaldi::quasar::PhraseBook::PreProcess(a1, &v30, &__c);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &__c.__r_.__value_.__l.__data_))
      {
        memset(&v31, 0, sizeof(v31));
        p_c = &__c;
        v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &__c.__r_.__value_.__l.__data_);
        std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__vdeallocate(v12 + 5);
        *(v12 + 5) = v31;
        memset(&v31, 0, sizeof(v31));
        v41 = &v31;
        std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](&v41);
      }

      v31.__r_.__value_.__r.__words[0] = &__c;
      v13 = std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, &__c.__r_.__value_.__l.__data_);
      kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(&v31, &__c, &v30, &v29, &v28);
      std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::push_back[abi:ne200100]((v13 + 5), &v31);
      if (v39 < 0)
      {
        operator delete(__p);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__c.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__c.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      ++v8;
    }

    while (v8 < *(a1 + 64));
  }

  kaldi::ExpectToken(a2, 1, "</PhraseBook>");
LABEL_87:
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v31);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v31, "# of keys ", 10);
    MEMORY[0x1B8C84C30](v26, *(a1 + 24));
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v31);
  }
}

void kaldi::quasar::PhraseBook::PreProcess(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 68) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }
  }

  else
  {
    kaldi::quasar::PhraseBook::LowerCaseUtf8(a2, a3);
  }
}

uint64_t std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::push_back[abi:ne200100](uint64_t a1, const kaldi::quasar::PhraseBook::PhraseBookEntry *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__emplace_back_slow_path<kaldi::quasar::PhraseBook::PhraseBookEntry>(a1, a2);
  }

  else
  {
    kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(*(a1 + 8), a2);
    result = v3 + 120;
    *(a1 + 8) = v3 + 120;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__emplace_back_slow_path<kaldi::quasar::PhraseBook::PhraseBookEntry const&>(a1, a2);
  }

  else
  {
    kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(*(a1 + 8), a2);
    result = v3 + 120;
    *(a1 + 8) = v3 + 120;
  }

  *(a1 + 8) = result;
  return result;
}

void kaldi::quasar::PhraseBook::LowerCaseUtf8(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  kaldi::quasar::NNMTTransliterator::UnicodeVectorFromString(a1, src);
  pErrorCode = U_ZERO_ERROR;
  v3 = u_strToLower(0, 0, src[0], -1, "", &pErrorCode);
  __p = 0;
  v5 = 0;
  v6 = 0;
  std::vector<unsigned short>::resize(&__p, v3 + 1);
  pErrorCode = U_ZERO_ERROR;
  u_strToLower(__p, (v5 - __p) >> 1, src[0], -1, "", &pErrorCode);
  kaldi::quasar::NNMTTransliterator::StringFromUnicodeVector(&__p, a2);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (src[0])
  {
    src[1] = src[0];
    operator delete(src[0]);
  }
}

void sub_1B55F954C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B55F97E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__emplace_back_slow_path<kaldi::quasar::PhraseBook::PhraseBookEntry>(uint64_t a1, const kaldi::quasar::PhraseBook::PhraseBookEntry *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry((120 * v2), a2);
  v15 = 120 * v2 + 120;
  v7 = *(a1 + 8);
  v8 = (120 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>,kaldi::quasar::PhraseBook::PhraseBookEntry*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::PhraseBook::PhraseBookEntry>::~__split_buffer(&v13);
  return v12;
}

void sub_1B55F9A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::PhraseBook::PhraseBookEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(std::string *this, const kaldi::quasar::PhraseBook::PhraseBookEntry *a2)
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

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    this[4].__r_.__value_.__r.__words[2] = *(a2 + 14);
    *&this[4].__r_.__value_.__l.__data_ = v8;
  }

  return this;
}

void sub_1B55F9B54(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>,kaldi::quasar::PhraseBook::PhraseBookEntry*>(uint64_t a1, kaldi::quasar::PhraseBook::PhraseBookEntry *a2, kaldi::quasar::PhraseBook::PhraseBookEntry *a3, std::string *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(this, v7);
      v7 = (v7 + 120);
      this = v12 + 5;
      v12 += 5;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>::destroy[abi:ne200100]<kaldi::quasar::PhraseBook::PhraseBookEntry,0>(a1, v5);
      v5 = (v5 + 120);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>,kaldi::quasar::PhraseBook::PhraseBookEntry*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>,kaldi::quasar::PhraseBook::PhraseBookEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>,kaldi::quasar::PhraseBook::PhraseBookEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>,kaldi::quasar::PhraseBook::PhraseBookEntry*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      std::allocator_traits<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>::destroy[abi:ne200100]<kaldi::quasar::PhraseBook::PhraseBookEntry,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<kaldi::quasar::PhraseBook::PhraseBookEntry>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    std::allocator_traits<std::allocator<kaldi::quasar::PhraseBook::PhraseBookEntry>>::destroy[abi:ne200100]<kaldi::quasar::PhraseBook::PhraseBookEntry,0>(v5, v4 - 120);
  }
}

std::string *kaldi::quasar::PhraseBook::PhraseBookEntry::PhraseBookEntry(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v10;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v11;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    this[3].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&this[3].__r_.__value_.__l.__data_ = v12;
  }

  std::string::basic_string[abi:ne200100]<0>(&this[4], "*");
  return this;
}

void sub_1B55F9ED4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(v1, a1);
}

void sub_1B55FA080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  fst::AutoQueue<int>::~AutoQueue(&a23);
  a13 = v23 - 104;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_1B55FA2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  a16 = &a20;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t fst::ConvertNbestToVector<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v6 = v4 - 16;
    v7 = (v4 - 16);
    v8 = (v4 - 16);
    do
    {
      v9 = *v8;
      v8 -= 2;
      (*v9)(v7);
      v6 -= 16;
      v10 = v7 == v5;
      v7 = v8;
    }

    while (!v10);
  }

  a2[1] = v5;
  result = (*(*a1 + 24))(a1);
  if (result == -1)
  {
    return result;
  }

  v12 = result;
  v13 = (*(*a1 + 40))(a1, result);
  (*(*a1 + 32))(&v36, a1, v12);
  LODWORD(v33[0]) = HIDWORD(v36);
  LODWORD(v42[0]) = v36;
  v50 = 2139095040;
  v49 = INFINITY;
  v14 = *&v36 != INFINITY || *v33 != v49;
  if (__p)
  {
    v38 = __p;
    operator delete(__p);
  }

  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::reserve(a2, v13 + v14);
  if (v14)
  {
    std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
    v15 = (*(*(a2[1] - 16) + 200))();
    v16 = a2[1];
    (*(*a1 + 32))(&v45, a1, v12);
    (*(*(v16 - 16) + 184))(v16 - 16, v15, &v45);
    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }

  v44 = 0;
  (*(*a1 + 136))(a1, v12, v42);
  while (1)
  {
    result = v42[0];
    if (v42[0])
    {
      break;
    }

    if (v44 >= v42[2])
    {
      goto LABEL_51;
    }

LABEL_19:
    std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::resize(a2, ((a2[1] - *a2) >> 4) + 1);
    v17 = a2[1];
    if (v42[0])
    {
      v18 = (*(*v42[0] + 32))(v42[0]);
    }

    else
    {
      v18 = v42[1] + 48 * v44;
    }

    v20 = *(v17 - 16);
    v19 = v17 - 16;
    v21 = (*(v20 + 200))(v19);
    (*(*v19 + 176))(v19, v21);
    v22 = (*(*v19 + 200))(v19);
    v23 = *(v18 + 8);
    v36 = *v18;
    __p = v23;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v38, *(v18 + 16), *(v18 + 24), (*(v18 + 24) - *(v18 + 16)) >> 2);
    v41 = v22;
    (*(*v19 + 208))(v19, v21, &v36);
    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    v24 = *(v18 + 40);
    while ((*(*a1 + 40))(a1, v24))
    {
      (*(*a1 + 32))(&v36, a1, v24);
      v50 = HIDWORD(v36);
      LODWORD(v33[0]) = v36;
      v49 = INFINITY;
      v48 = 2139095040;
      v25.n128_u32[0] = v36;
      if (*&v36 == INFINITY)
      {
        v25.n128_u32[0] = v48;
      }

      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      v35 = 0;
      (*(*a1 + 136))(a1, v24, v33, v25);
      if (v33[0])
      {
        v26 = (*(*v33[0] + 32))(v33[0]);
      }

      else
      {
        v26 = v33[1] + 48 * v35;
      }

      v27 = (*(*v19 + 200))(v19);
      v28 = *(v26 + 8);
      v36 = *v26;
      __p = v28;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v38, *(v26 + 16), *(v26 + 24), (*(v26 + 24) - *(v26 + 16)) >> 2);
      v41 = v27;
      (*(*v19 + 208))(v19, v22, &v36);
      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      v24 = *(v26 + 40);
      if (v33[0])
      {
        (*(*v33[0] + 8))(v33[0]);
      }

      else if (v34)
      {
        --*v34;
      }

      v22 = v27;
    }

    (*(*a1 + 32))(&v36, a1, v24);
    v50 = HIDWORD(v36);
    LODWORD(v33[0]) = v36;
    v49 = INFINITY;
    v48 = 2139095040;
    v29.n128_u32[0] = v36;
    if (*&v36 == INFINITY)
    {
      v29.n128_u32[0] = v48;
    }

    if (__p)
    {
      v38 = __p;
      operator delete(__p);
    }

    (*(*a1 + 32))(&v30, a1, v24, v29);
    (*(*v19 + 184))(v19, v22, &v30);
    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }

    if (v42[0])
    {
      (*(*v42[0] + 40))(v42[0]);
    }

    else
    {
      ++v44;
    }
  }

  if (!(*(*v42[0] + 24))(v42[0]))
  {
    goto LABEL_19;
  }

  result = v42[0];
  if (v42[0])
  {
    return (*(*v42[0] + 8))(v42[0]);
  }

LABEL_51:
  if (v43)
  {
    --*v43;
  }

  return result;
}

void sub_1B55FAA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SuppressedIds(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  kaldi::quasar::MultiLangDecorator::GetTags(a1 + 120, a2, a3, &v21);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  kaldi::SplitStringToVector(&v21, " ", 1, &v18);
  a5[2] = 0;
  a5[1] = 0;
  *a5 = a5 + 1;
  v8 = v18;
  v9 = v19;
  while (v8 != v9)
  {
    LODWORD(v17[0]) = (*(**(*(a1 + 136) + 560) + 96))(*(*(a1 + 136) + 560), v8) - 1;
    std::__tree<int>::__emplace_unique_key_args<int,int const&>(a5, v17);
    v8 += 24;
  }

  v11 = *a4;
  v10 = a4[1];
  while (v11 != v10)
  {
    v12 = (*(**(*(a1 + 136) + 560) + 96))(*(*(a1 + 136) + 560), v11);
    if (v12 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Token to suppress not found in symbol table: ", 45);
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = *v11;
      }

      if (v14 >= 0)
      {
        v16 = *(v11 + 23);
      }

      else
      {
        v16 = *(v11 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    LODWORD(v17[0]) = v12 - 1;
    std::__tree<int>::__emplace_unique_key_args<int,int const&>(a5, v17);
    v11 += 24;
  }

  v17[0] = &v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

BOOL kaldi::quasar::PhraseBook::Find(void *a1, uint64_t a2, uint64_t a3)
{
  kaldi::quasar::PhraseBook::PreProcess(a1, a2, &__p);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
    if (!v5)
    {
      return v5 != 0;
    }

    goto LABEL_5;
  }

  *a3 = 0;
  *(a3 + 23) = 0;
  if (v5)
  {
LABEL_5:
    std::string::operator=(a3, v5[5] + 2);
  }

  return v5 != 0;
}

void sub_1B55FAE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    if (v4 == 1 && (*(a4 + 35) & 1) == 0)
    {
      v9 = 0;
      __p = 0;
      v11 = 0;
      LODWORD(v12) = 0;
      if (fst::SingleShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a3, a4, &v12, &v9))
      {
        fst::SingleShortestPathBacktrace<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>(a1, a2, &v9, v12);
      }

      else
      {
        (*(*a2 + 192))(a2, 4, 4);
      }

      if (v9)
      {
        __p = v9;
        operator delete(v9);
      }
    }

    else
    {
      if ((*(a4 + 33) & 1) != 0 || (fst::ShortestDistance<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a1, a3, a4), a3[1] - *a3 != 32) || fst::LatticeWeightTpl<float>::Member(*a3))
      {
        fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>::VectorFst();
      }

      v8 = *(*a2 + 192);

      v8(a2, 4, 4);
    }
  }
}

void sub_1B55FB34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::DeterminizeFstImplBase<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>,fst::Fst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst(&a15);
  a17 = &a27;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::__destroy_vector::operator()[abi:ne200100](&a17);
  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>>,fst::MutableFst<fst::ReverseArc<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::~ImplToFst((v29 - 120));
  _Unwind_Resume(a1);
}

void fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        v5[0] = v3;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = &v6;
        fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::SccVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B55FBCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v12 = *(a3 + 8) - *a3;
  if (v12)
  {
    v13 = v12 >> 2;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    bzero(*a3, 4 * v13);
  }

  v30 = 0;
  (*(*a1 + 128))(a1, &v28);
  while (1)
  {
    result = v28;
    if (!v28)
    {
      if (v30 >= v29)
      {
        return result;
      }

LABEL_11:
      v16 = v30;
      goto LABEL_12;
    }

    v15 = (*(*v28 + 16))(v28);
    result = v28;
    if (v15)
    {
      break;
    }

    if (!v28)
    {
      goto LABEL_11;
    }

    v16 = (*(*v28 + 24))();
LABEL_12:
    v27 = 0;
    (*(*a1 + 136))(a1, v16, v25);
    while (1)
    {
      if (!v25[0])
      {
        if (v27 >= v25[2])
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if ((*(*v25[0] + 24))(v25[0]))
      {
        break;
      }

      if (v25[0])
      {
        v18 = (*(*v25[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v18 = v25[1] + 48 * v27;
LABEL_19:
      v19 = *(*a2 + 4 * v16);
      if (v19 == *(*a2 + 4 * *(v18 + 40)))
      {
        v20 = *a3;
        if (!a4 || (v21 = *(v18 + 8), v22 = *(v18 + 12), (v21 + v22) < 0.0) || v21 < 0.0 && (v21 + v22) <= 0.0)
        {
          v23 = 1;
          goto LABEL_25;
        }

        if ((v20[v19] | 2) == 2)
        {
          v34 = *(v18 + 8);
          v33 = v22;
          v32 = 2139095040;
          v31 = INFINITY;
          if (v21 == INFINITY && v33 == v31 || (v34 = v21, v33 = v22, v32 = 0, v31 = 0.0, v21 == 0.0) && v33 == v31)
          {
            v23 = 2;
          }

          else
          {
            v23 = 3;
          }

LABEL_25:
          v20[v19] = v23;
        }

        *a5 = 0;
      }

      v17.n128_u32[0] = *(v18 + 8);
      v24 = *(v18 + 12);
      v34 = v17.n128_f32[0];
      v33 = v24;
      v32 = 2139095040;
      v31 = INFINITY;
      if (v17.n128_f32[0] != INFINITY || v33 != v31)
      {
        v34 = v17.n128_f32[0];
        v33 = v24;
        v32 = 0;
        v31 = 0.0;
        if (v17.n128_f32[0] != 0.0 || (v17.n128_f32[0] = v33, v33 != v31))
        {
          *a6 = 0;
        }
      }

      if (v25[0])
      {
        (*(*v25[0] + 40))(v25[0], v17);
      }

      else
      {
        ++v27;
      }
    }

    if (v25[0])
    {
      (*(*v25[0] + 8))();
      goto LABEL_46;
    }

LABEL_44:
    if (v26)
    {
      --*v26;
    }

LABEL_46:
    if (v28)
    {
      (*(*v28 + 32))(v28);
    }

    else
    {
      ++v30;
    }
  }

  if (v28)
  {
    return (*(*v28 + 8))();
  }

  return result;
}

void sub_1B55FC1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::TopOrderVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>();
}

void sub_1B55FC3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B55FCBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void fst::TopOrderVisitor<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>::FinishVisit(uint64_t **a1)
{
  if (*a1[1])
  {
    (*a1)[1] = **a1;
    v2 = a1[2];
    if (v2[1] == *v2)
    {
      goto LABEL_12;
    }

    v3 = 0;
    do
    {
      std::vector<int>::push_back[abi:ne200100](*a1, &fst::kNoStateId);
      ++v3;
      v2 = a1[2];
      v4 = (v2[1] - *v2) >> 2;
    }

    while (v4 > v3);
    if (!v4)
    {
LABEL_12:
      v9 = *v2;
      if (*v2)
      {
        v2[1] = v9;
        operator delete(v9);
      }

      JUMPOUT(0x1B8C85350);
    }

    v5 = 0;
    v6 = **a1;
    v7 = (v2[1] - 4);
    do
    {
      v8 = *v7--;
      *(v6 + 4 * v8) = v5++;
    }

    while (v4 != v5);
  }

  else
  {
    v2 = a1[2];
  }

  if (v2)
  {
    goto LABEL_12;
  }
}

void *fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D20350;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);
  return a1;
}

void fst::ShortestFirstQueue<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::~ShortestFirstQueue(void *a1)
{
  *a1 = &unk_1F2D20350;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>,false>::~Heap(a1 + 2);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::Insert(uint64_t a1, int *a2)
{
  v4 = *(a1 + 88);
  v5 = (a1 + 88);
  v8 = *(a1 + 64);
  v6 = (a1 + 64);
  v7 = v8;
  if (v4 >= (*(v5 - 2) - v8) >> 2)
  {
    std::vector<int>::push_back[abi:ne200100](v6, a2);
    std::vector<int>::push_back[abi:ne200100]((a1 + 16), v5);
    std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
    LODWORD(v9) = *(a1 + 88);
  }

  else
  {
    *(v7 + 4 * v4) = *a2;
    v9 = *(a1 + 88);
    *(*(a1 + 16) + 4 * *(*(a1 + 40) + 4 * v9)) = v9;
  }

  *(a1 + 88) = v9 + 1;

  return fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::Insert(a1, a2, v9);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::Insert(uint64_t **a1, int *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a1[8];
    v4 = **a1;
    while (1)
    {
      v5 = a3 - 1;
      v6 = (a3 - 1) >> 1;
      v7 = (v4 + 32 * *(v3 + v6));
      v8 = (v4 + 32 * *a2);
      v9 = *v7 + v7[1];
      v10 = *v8 + v8[1];
      if (v9 < v10)
      {
        break;
      }

      if (*v7 < *v8 && v9 <= v10)
      {
        break;
      }

      v12 = a1[5];
      v13 = *(v12 + a3);
      v14 = *(v12 + v6);
      *(v12 + a3) = v14;
      v15 = a1[2];
      *(v15 + v14) = a3;
      *(v12 + v6) = v13;
      *(v15 + v13) = v6;
      LODWORD(v12) = *(v3 + a3);
      *(v3 + a3) = *(v3 + v6);
      *(v3 + v6) = v12;
      a3 = v5 >> 1;
      if (v5 <= 1)
      {
        return *(a1[5] + v6);
      }
    }
  }

  v6 = a3;
  return *(a1[5] + v6);
}

uint64_t fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::Pop(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *v1;
  v3 = *(a1 + 88) - 1;
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = v4[v3];
  *v4 = v6;
  v7 = *(a1 + 16);
  *(v7 + 4 * v6) = 0;
  v4[v3] = v5;
  *(v7 + 4 * v5) = v3;
  LODWORD(v4) = *v1;
  *v1 = v1[v3];
  v1[v3] = v4;
  --*(a1 + 88);
  fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::Heapify(a1, 0);
  return v2;
}

uint64_t **fst::Heap<int,fst::StateWeightCompare<int,fst::NaturalLess<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>>,false>::Heapify(uint64_t **result, uint64_t a2)
{
  while (1)
  {
    v2 = (2 * a2) | 1;
    v3 = *(result + 22);
    v4 = a2;
    if (v2 < v3)
    {
      v5 = result[8];
      v6 = **result;
      v7 = (v6 + 32 * *(v5 + v2));
      v8 = (v6 + 32 * *(v5 + a2));
      v9 = *v7 + v7[1];
      v10 = *v8 + v8[1];
      if (v9 < v10 || (*v7 < *v8 ? (v11 = v9 <= v10) : (v11 = 0), v4 = a2, v11))
      {
        v4 = (2 * a2) | 1u;
      }
    }

    v12 = (2 * a2 + 2);
    if (v12 >= v3 || (v13 = result[8], v14 = **result, v15 = (v14 + 32 * *(v13 + v12)), v16 = (v14 + 32 * *(v13 + v4)), v17 = *v15 + v15[1], v18 = *v16 + v16[1], v17 >= v18) && (v17 > v18 || *v15 >= *v16))
    {
      v12 = v4;
    }

    if (v12 == a2)
    {
      break;
    }

    v19 = result[5];
    v20 = *(v19 + a2);
    v21 = *(v19 + v12);
    *(v19 + a2) = v21;
    v22 = result[2];
    *(v22 + v21) = a2;
    *(v19 + v12) = v20;
    *(v22 + v20) = v12;
    v23 = result[8];
    LODWORD(v20) = *(v23 + a2);
    *(v23 + a2) = *(v23 + v12);
    *(v23 + v12) = v20;
    a2 = v12;
  }

  return result;
}

uint64_t fst::SingleShortestPath<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, void *a5)
{
  a5[1] = *a5;
  *a4 = -1;
  if ((*(*a1 + 24))(a1) == -1)
  {
    return 1;
  }

  memset(v78, 0, sizeof(v78));
  v9 = *a3;
  v10 = *(a3 + 3);
  if (v10 == -1)
  {
    v10 = (*(*a1 + 24))(a1);
  }

  v75 = vneg_f32(0x7F0000007FLL);
  v77[0] = 0;
  v77[1] = 0;
  v76 = 0;
  std::vector<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>::clear[abi:ne200100](a2);
  (*(**(v9 + 16) + 56))(*(v9 + 16));
  if (a3[3] != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v15 = fst::LogMessage::LogMessage(&v71, __p);
    v16 = fst::cerr(v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "SingleShortestPath: for nshortest > 1, use ShortestPath", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " instead", 8);
LABEL_15:
    fst::LogMessage::~LogMessage(&v71);
    if (SBYTE7(v69) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_17;
  }

  v11 = *(a3 + 11);
  LODWORD(__p[0]) = *(a3 + 10);
  v71.i32[0] = v11;
  LODWORD(v65) = 2139095040;
  v61.i32[0] = 2139095040;
  if (*__p != INFINITY || v71.f32[0] != v61.f32[0] || *(a3 + 18) != -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v12 = fst::LogMessage::LogMessage(&v71, __p);
    v13 = fst::cerr(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "SingleShortestPath: weight and state thresholds not applicable", 62);
    goto LABEL_15;
  }

  if (v10 > ((a2[1] - *a2) >> 5))
  {
    v19 = vneg_f32(0x7F0000007FLL);
    do
    {
      __p[0] = v19;
      v69 = 0uLL;
      __p[1] = 0;
      std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](a2, __p);
      if (__p[1])
      {
        *&v69 = __p[1];
        operator delete(__p[1]);
      }

      LOBYTE(__p[0]) = 0;
      std::vector<BOOL>::push_back(v78, __p);
      LODWORD(__p[0]) = -1;
      __p[1] = -1;
      std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, __p);
    }

    while (v10 > ((a2[1] - *a2) >> 5));
  }

  *__p = 0u;
  v69 = 0u;
  std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](a2, __p);
  v20 = v9;
  if (__p[1])
  {
    *&v69 = __p[1];
    operator delete(__p[1]);
  }

  LODWORD(__p[0]) = -1;
  __p[1] = -1;
  std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, __p);
  (*(**(v9 + 16) + 24))(*(v9 + 16), v10);
  v58 = a4;
  LOBYTE(__p[0]) = 1;
  std::vector<BOOL>::push_back(v78, __p);
  v21 = vneg_f32(0x7F0000007FLL);
  do
  {
    if ((*(**(v20 + 16) + 48))(*(v20 + 16)))
    {
      goto LABEL_135;
    }

    v22 = (*(**(v20 + 16) + 16))(*(v20 + 16));
    (*(**(v20 + 16) + 32))(*(v20 + 16));
    *(v78[0] + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v22);
    v23 = *a2 + 32 * v22;
    v71 = *v23;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v72, *(v23 + 8), *(v23 + 16), (*(v23 + 16) - *(v23 + 8)) >> 2);
    (*(*a1 + 32))(__p);
    v61.i32[0] = HIDWORD(__p[0]);
    LODWORD(v65) = __p[0];
    v82 = INFINITY;
    v81 = INFINITY;
    v24.n128_u32[0] = __p[0];
    if (*__p == INFINITY)
    {
      v24.n128_u32[0] = v61.i32[0];
      v25 = v61.f32[0] != v81;
    }

    else
    {
      v25 = 1;
    }

    if (__p[1])
    {
      *&v69 = __p[1];
      operator delete(__p[1]);
    }

    if (!v25)
    {
      goto LABEL_71;
    }

    (*(*a1 + 32))(__p, v24);
    v26 = v71;
    v27 = __p[0];
    *&v65 = 0;
    v61 = 0;
    if (__p[1])
    {
      *&v69 = __p[1];
      operator delete(__p[1]);
    }

    v28 = vadd_f32(v26, v27);
    v29 = v75;
    v59 = v28;
    v30 = vadd_f32(vzip1_s32(v75, v28), vzip2_s32(v75, v28));
    v31 = v30.f32[1];
    if (v30.f32[0] < v30.f32[1])
    {
LABEL_43:
      v32 = &v76;
      v33 = v77;
      goto LABEL_46;
    }

    if (v30.f32[0] > v30.f32[1])
    {
      goto LABEL_45;
    }

    if (vcgt_f32(v28, v75).u8[0])
    {
      goto LABEL_43;
    }

    v32 = &v76;
    v33 = v77;
    if (vcgt_f32(v75, v28).u8[0])
    {
LABEL_45:
      v33 = &v61;
      v32 = &v65;
      v29 = v28;
    }

LABEL_46:
    __p[0] = v29;
    v69 = 0uLL;
    __p[1] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[1], *v32, *v33, (*v33 - *v32) >> 2);
    v81 = v75.f32[1];
    v24.n128_u32[0] = v75.i32[0];
    v82 = v75.f32[0];
    v79 = *(__p + 1);
    v80 = __p[0];
    v34 = v75.f32[0] != *__p || v81 != v79;
    if (__p[1])
    {
      *&v69 = __p[1];
      operator delete(__p[1]);
      v24.n128_u32[0] = v75.i32[0];
    }

    if (v34)
    {
      v35 = v75.i32[1];
      if ((v24.n128_f32[0] + v75.f32[1]) < v31)
      {
LABEL_53:
        v36 = &v76;
        v37 = v77;
LABEL_60:
        __p[0] = __PAIR64__(v35, v24.n128_u32[0]);
        v69 = 0uLL;
        __p[1] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p[1], *v36, *v37, (*v37 - *v36) >> 2);
        v75 = __p[0];
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v76, __p[1], v69, (v69 - __p[1]) >> 2);
        v20 = v9;
        if (__p[1])
        {
          *&v69 = __p[1];
          operator delete(__p[1]);
        }

        *v58 = v22;
        v24.n128_u32[0] = v75.i32[0];
        goto LABEL_63;
      }

      if ((v24.n128_f32[0] + v75.f32[1]) <= v31)
      {
        if (v24.n128_f32[0] < v59.f32[0])
        {
          goto LABEL_53;
        }

        v36 = &v76;
        v37 = v77;
        if (v24.n128_f32[0] <= v59.f32[0])
        {
          goto LABEL_60;
        }
      }

      v35 = v59.i32[1];
      v37 = &v61;
      v36 = &v65;
      v24.n128_u32[0] = v59.i32[0];
      goto LABEL_60;
    }

    v20 = v9;
LABEL_63:
    if (v75.f32[1] == -INFINITY || v24.n128_f32[0] == -INFINITY || (v24.n128_f32[0] == INFINITY || v75.f32[1] == INFINITY) && (v24.n128_f32[0] != INFINITY || (v24.n128_u32[0] = 2139095040, v75.f32[1] != INFINITY)))
    {
      v38 = 1;
      goto LABEL_127;
    }

    if (*(a3 + 34))
    {
      v38 = 5;
      v20 = v9;
      goto LABEL_127;
    }

LABEL_71:
    v70 = 0;
    (*(*a1 + 136))(a1, v22, __p, v24);
    while (1)
    {
      if (__p[0])
      {
        if ((*(*__p[0] + 24))(__p[0]))
        {
          goto LABEL_118;
        }

        if (__p[0])
        {
          v39 = (*(*__p[0] + 32))(__p[0]);
          goto LABEL_78;
        }
      }

      else if (v70 >= v69)
      {
LABEL_118:
        v38 = 0;
        goto LABEL_123;
      }

      v39 = (__p[1] + 48 * v70);
LABEL_78:
      while (1)
      {
        v41 = v39[5].i32[0];
        if (v41 < (a2[1] - *a2) >> 5)
        {
          break;
        }

        v65 = v21;
        v66 = 0;
        v67 = 0;
        std::vector<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>>::push_back[abi:ne200100](a2, &v65);
        if (*(&v65 + 1))
        {
          v66 = *(&v65 + 1);
          operator delete(*(&v65 + 1));
        }

        LOBYTE(v65) = 0;
        std::vector<BOOL>::push_back(v78, &v65);
        LODWORD(v65) = -1;
        *(&v65 + 1) = -1;
        std::vector<std::pair<int,unsigned long>>::push_back[abi:ne200100](a5, &v65);
      }

      v40 = *a2;
      v42 = (*a2 + 32 * v41);
      v43 = vadd_f32(v71, v39[1]);
      v65 = v43;
      v66 = 0;
      v67 = 0;
      v44 = *v42;
      v45 = vadd_f32(vzip1_s32(*v42, v43), vzip2_s32(*v42, v43));
      v46 = v45.f32[1];
      if (v45.f32[0] < v45.f32[1])
      {
LABEL_83:
        v47 = (v40 + 32 * v41);
        goto LABEL_86;
      }

      if (v45.f32[0] > v45.f32[1])
      {
        goto LABEL_85;
      }

      if (vcgt_f32(v43, v44).u8[0])
      {
        goto LABEL_83;
      }

      v47 = (v40 + 32 * v41);
      if (vcgt_f32(v44, v43).u8[0])
      {
LABEL_85:
        v47 = &v65;
        v44 = v43;
      }

LABEL_86:
      v61 = v44;
      v63 = 0;
      v64 = 0;
      v62 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v62, *(v47 + 1), *(v47 + 2), (*(v47 + 2) - *(v47 + 1)) >> 2);
      v48 = *&v42->i32[1];
      v82 = *v42->i32;
      v81 = v48;
      v79 = v61.f32[1];
      v80 = v61.i32[0];
      v49.n128_f32[0] = v82;
      if (v82 == v61.f32[0])
      {
        v49.n128_f32[0] = v81;
        v50 = v81 != v79;
      }

      else
      {
        v50 = 1;
      }

      if (v62)
      {
        v63 = v62;
        operator delete(v62);
      }

      if (v50)
      {
        break;
      }

LABEL_110:
      if (*(&v65 + 1))
      {
        operator delete(*(&v65 + 1));
      }

      if (__p[0])
      {
        (*(*__p[0] + 40))(__p[0], v49);
      }

      else
      {
        ++v70;
      }
    }

    v51 = *v42;
    v52 = vaddv_f32(*v42);
    if (v52 < v46)
    {
      goto LABEL_93;
    }

    if (v52 <= v46)
    {
      if (vcgt_f32(v43, v51).u8[0])
      {
LABEL_93:
        v53 = v42;
      }

      else
      {
        v53 = v42;
        if (vcgt_f32(v51, v43).u8[0])
        {
          goto LABEL_98;
        }
      }
    }

    else
    {
LABEL_98:
      v53 = &v65;
      v51 = v43;
    }

    v61 = v51;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v62, *&v53[1], *&v53[2], (*&v53[2] - *&v53[1]) >> 2);
    *v42 = v61;
    if (v42 != &v61)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v42[1], v62, v63, (v63 - v62) >> 2);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if (fst::LatticeWeightTpl<float>::Member(v42))
    {
      if (__p[0])
      {
        v54 = (*(*__p[0] + 48))(__p[0]);
      }

      else
      {
        v54 = v70;
      }

      v55 = v39[5].i32[0];
      v56 = *a5 + 16 * v55;
      *v56 = v22;
      *(v56 + 8) = v54;
      v57 = **(v9 + 16);
      if ((*(v78[0] + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v55))
      {
        (*(v57 + 40))();
      }

      else
      {
        (*(v57 + 24))();
        *(v78[0] + ((v39[5].i32[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39[5].i32[0];
      }

      goto LABEL_110;
    }

    if (*(&v65 + 1))
    {
      operator delete(*(&v65 + 1));
    }

    v38 = 1;
LABEL_123:
    v20 = v9;
    if (__p[0])
    {
      (*(*__p[0] + 8))(__p[0]);
    }

    else if (*(&v69 + 1))
    {
      --**(&v69 + 1);
    }

LABEL_127:
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }
  }

  while (!v38);
  if (v38 != 5)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

LABEL_135:
  v14 = 1;
LABEL_18:
  if (v76)
  {
    v77[0] = v76;
    operator delete(v76);
  }

  if (v78[0])
  {
    operator delete(v78[0]);
  }

  return v14;
}