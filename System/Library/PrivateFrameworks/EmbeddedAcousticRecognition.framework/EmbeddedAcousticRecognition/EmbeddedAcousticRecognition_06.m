void sub_1B507F25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::CEInferenceNet::FeedforwardWithoutCachedStreaming(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v7 = *a2;
  if (*(a1 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(a1 + 104), *(a1 + 112));
    v8 = v21;
    v19 = v7;
    if (v21 < v22)
    {
      v9 = *&v18.__r_.__value_.__l.__data_;
      *(v21 + 16) = *(&v18.__r_.__value_.__l + 2);
      *v8 = v9;
      memset(&v18, 0, sizeof(v18));
      *(v8 + 24) = v19;
      v21 = v8 + 32;
      goto LABEL_7;
    }
  }

  else
  {
    v18 = *(a1 + 104);
    v19 = v7;
  }

  v21 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v20, &v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

LABEL_7:
  v10 = 128;
  if (a4)
  {
    v10 = 176;
  }

  v11 = a1 + v10;
  if ((*(v11 + 23) & 0x80000000) == 0)
  {
    if (*(v11 + 23))
    {
      memset(&v18, 0, sizeof(v18));
      v12 = *(a1 + 496);
      v24 = *v11;
      goto LABEL_14;
    }

LABEL_19:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "!out_node.empty()", 17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v18);
  }

  v13 = *(v11 + 8);
  if (!v13)
  {
    goto LABEL_19;
  }

  memset(&v18, 0, sizeof(v18));
  v12 = *(a1 + 496);
  std::string::__init_copy_ctor_external(&v24, *v11, v13);
LABEL_14:
  memset(v17, 0, sizeof(v17));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v17, &v24, &v25, 1uLL);
  memset(v16, 0, sizeof(v16));
  (*(*v12 + 136))(v12, &v20, v17, v16, &v18);
  v23 = v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  v16[0] = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v16);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v14 = *v18.__r_.__value_.__l.__data_;
  *v18.__r_.__value_.__l.__data_ = 0;
  v15 = *a3;
  *a3 = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v17[0] = &v18;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v17);
  v18.__r_.__value_.__r.__words[0] = &v20;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void sub_1B507F558(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B507F57CLL);
}

void kaldi::quasar::CEInferenceNet::Feedforward(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  if (*(a1 + 480) == 1)
  {
    kaldi::quasar::CEInferenceNet::FeedforwardWithCachedStreaming(a1, a2, a3, a4);
  }

  else
  {
    kaldi::quasar::CEInferenceNet::FeedforwardWithoutCachedStreaming(a1, a2, a3, a4);
  }
}

uint64_t kaldi::quasar::BNNSGraphData::GetWritableDataFloat(kaldi::quasar::BNNSGraphData *this)
{
  if (*(this + 14) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "*GetWritableDataFloat() fail - data is not assigned as std::vector<float>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return *(this + 4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>,std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TextTokenizer::Token>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void kaldi::quasar::BNNSGraphNetworkPlan::Run(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1[161] == 1)
  {
    v10 = *(*a1 + 160);

    v10();
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    (*(*a1 + 160))(a1, __p, a2, a3, a4, a5);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

{
  if (a1[161] == 1)
  {
    v10 = *(*a1 + 152);

    v10();
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    (*(*a1 + 152))(a1, __p, a2, a3, a4, a5);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B507F7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<char const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B507F854(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<std::unique_ptr<kaldi::quasar::BNNSGraphData>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::unique_ptr<BNNSTensor>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_argument_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<bnns_graph_argument_t>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<bnns_graph_argument_t>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t kaldi::quasar::DataFloatForInput(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *(v2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v2 + 8);
    }

    if (v7 == v5)
    {
      v9 = v8 >= 0 ? v2 : *v2;
      if (!memcmp(v9, v6, v5))
      {
        break;
      }
    }

    v2 += 32;
    if (v2 == v3)
    {
      return 0;
    }
  }

  v11 = *(v2 + 24);
  v12 = (*(*v11 + 168))(v11);
  v13 = *(v11 + 14);
  if (v12)
  {
    if (v13)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  else if (v13 != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "*GetDataFloat() fail - data is not assigned as std::vector<float>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v10 = *(v11 + 4);
  kaldi::quasar::ComputeEngineBufferItf::GetSize(v11);
  return v10;
}

uint64_t kaldi::quasar::ComputeEngineBufferItf::GetSize(kaldi::quasar::ComputeEngineBufferItf *this)
{
  v2 = (*(*this + 176))(this);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = v2;
  v4 = 0;
  v5 = 1;
  do
  {
    v5 *= (*(*this + 184))(this, v4);
    v4 = (v4 + 1);
  }

  while (v3 != v4);
  return v5;
}

uint64_t kaldi::quasar::BNNSGraphNetworkPlan::WorkSpaceAllocationCallback(kaldi::quasar::BNNSGraphNetworkPlan *this, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "memptr");
    goto LABEL_14;
  }

  if (a2 != 24)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "sizeof(MemoryCallbackContext) == user_memory_context_size");
    goto LABEL_14;
  }

  if (!this)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "space_info != nullptr");
    goto LABEL_14;
  }

  v8 = (a5 + a4);
  v9 = *a3;
  if (!*a3)
  {
LABEL_18:
    v18 = &v8[a4 - 1] & -a4;
    v19 = mmap(0, v18 + a4, 3, 4098, -1, 0);
    v26 = v19;
    if (v19 != -1)
    {
      *a3 = v19;
      v27[0] = &v26;
      std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(this, &v26)[5] = v18;
      v27[0] = &v26;
      std::__tree<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::__map_value_compare<void *,std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>,std::less<void *>,true>,std::allocator<std::__value_type<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(this, &v26)[6] = v18 + a4;
      mprotect((*a3 + v18), a4, 0);
      return 0;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Could not mmap ", 15);
    v22 = MEMORY[0x1B8C84C70](v21, v18);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "bytes: ", 7);
    v24 = __error();
    v25 = strerror(*v24);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v23, v25);
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  v10 = *(this + 1);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = (this + 8);
  do
  {
    v12 = v10[4];
    v13 = v12 >= v9;
    v14 = v12 < v9;
    if (v13)
    {
      v11 = v10;
    }

    v10 = v10[v14];
  }

  while (v10);
  if (v11 == (this + 8) || v9 < v11[4])
  {
LABEL_13:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "space_info->find(*memptr) != space_info->end()");
    goto LABEL_14;
  }

  v15 = std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(this, a3);
  v16 = *a3;
  if (*v15 < v8)
  {
    v17 = std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(this, a3);
    munmap(v16, v17[1]);
    std::__tree<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *,std::less<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>,std::allocator<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>>::__erase_unique<kaldi::quasar::PrefixTree<int,std::unordered_map<int,int>>::Node *>(this, a3);
    *a3 = 0;
    goto LABEL_18;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  return 0;
}

void *std::map<void *,kaldi::quasar::BNNSGraphNetworkPlan::MemoryCallbackContextInfo>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v8 = *--v3;
        v7 = v8;
        *v3 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__append(a1, v5);
  }
}

void std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(v14);
  }
}

void *std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::unique_ptr<BNNSTensor>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<BNNSTensor>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<BNNSTensor>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1B8C85350](result, 0x10D0C40E3B58404);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::TextTokenizer::Token>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void kaldi::quasar::BNNSGraphData::~BNNSGraphData(kaldi::quasar::BNNSGraphData *this)
{
  *this = &unk_1F2D2A148;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS3_IfNS4_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(this + 32);

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(this);
}

{
  kaldi::quasar::BNNSGraphData::~BNNSGraphData(this);

  JUMPOUT(0x1B8C85350);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIDF16_NS_9allocatorIDF16_EEEENS8_IfNS9_IfEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(void **this)
{
  *this = &unk_1F2D13798;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

float kaldi::quasar::CEInferenceNet::GetUnitOutput(uint64_t a1, uint64_t *a2, int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = *(a1 + 496);
  v26 = 1;
  memset(&__p, 0, sizeof(__p));
  std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(&__p, &v26, &v27, 1uLL);
  (*(*v5 + 56))(&v21, v5, &__p);
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*v21 + 80))(v21, &v22, 1, 0);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = *a2;
  if (*(a1 + 175) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 152), *(a1 + 160));
    v7 = v27;
    v20 = v6;
    if (v27 < v28)
    {
      v8 = *&__p.__r_.__value_.__l.__data_;
      *(v27 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v7 = v8;
      memset(&__p, 0, sizeof(__p));
      *(v7 + 24) = v20;
      v27 = v7 + 32;
      goto LABEL_9;
    }
  }

  else
  {
    __p = *(a1 + 152);
    v20 = v6;
  }

  v27 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v26, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  v9 = v21;
  if (*(a1 + 223) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 200), *(a1 + 208));
  }

  else
  {
    __p = *(a1 + 200);
  }

  v20 = v9;
  v10 = v27;
  if (v27 >= v28)
  {
    v27 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>(&v26, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = *&__p.__r_.__value_.__l.__data_;
    *(v27 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v10 = v11;
    memset(&__p, 0, sizeof(__p));
    *(v10 + 24) = v20;
    v27 = v10 + 32;
  }

  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if (*(a1 + 151))
    {
      memset(&__p, 0, sizeof(__p));
      v12 = *(a1 + 496);
      v24 = *(a1 + 128);
      goto LABEL_21;
    }

LABEL_26:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "!out_node.empty()", 17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  v13 = *(a1 + 136);
  if (!v13)
  {
    goto LABEL_26;
  }

  memset(&__p, 0, sizeof(__p));
  v12 = *(a1 + 496);
  std::string::__init_copy_ctor_external(&v24, *(a1 + 128), v13);
LABEL_21:
  memset(v18, 0, sizeof(v18));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v18, &v24, &v25, 1uLL);
  memset(v17, 0, sizeof(v17));
  (*(*v12 + 136))(v12, &v26, v18, v17, &__p);
  v23 = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
  v17[0] = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v14 = (*(**__p.__r_.__value_.__l.__data_ + 112))(*__p.__r_.__value_.__l.__data_, 0);
  v18[0] = &__p;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v18);
  __p.__r_.__value_.__r.__words[0] = &v26;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  v15 = v21;
  v21 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return v14;
}

void sub_1B50808AC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5080900);
}

void std::vector<long long>::push_back[abi:ne200100](const void **a1, void *a2)
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
      std::vector<int>::__throw_length_error[abi:ne200100]();
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

void *quasar::SpeechRecognizerModelLoader::SpeechRecognizerModelLoader(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  *a3 = 0;
  a1[2] = v5;
  quasar::SpeechRecognizerActiveConfiguration::none((a1 + 3));
  a1[35] = a1 + 36;
  a1[36] = 0;
  a1[39] = 0;
  a1[40] = 0;
  a1[37] = 0;
  a1[38] = a1 + 39;
  a1[41] = a1 + 42;
  a1[42] = 0;
  a1[45] = 0;
  a1[46] = 0;
  a1[43] = 0;
  a1[44] = a1 + 45;
  a1[48] = 0;
  a1[49] = 0;
  a1[47] = 0;
  return a1;
}

void sub_1B5080ADC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    quasar::SpeechRecognizerModelLoader::SpeechRecognizerModelLoader(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SpeechRecognizerActiveConfiguration::none(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 1;
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar9MuxHelperENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D1FCC8;
  quasar::MuxHelper::MuxHelper((a1 + 3));
  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>();
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

void sub_1B5080E58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::from_bytes(uint64_t a1@<X0>, std::basic_string<char32_t> *a2@<X1>, std::basic_string<char32_t> *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1 + 184) = 0;
  if (!*(a1 + 48))
  {
    goto LABEL_29;
  }

  v7 = a2;
  v8 = 2 * (a3 - a2);
  if (v8 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 >= 5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a4, v8 + 2);
  }

  *(a4 + 23) = v8;
  if (a3 != a2)
  {
    bzero(a4, 8 * (a3 - a2));
  }

  *(a4 + 4 * v8) = 0;
  if (v7 != a3)
  {
    if (*(a4 + 23) >= 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = (*(a4 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::basic_string<char32_t>::resize(a4, v9, 0);
    v10 = *(a1 + 136);
    v30[4] = *(a1 + 120);
    v30[5] = v10;
    v11 = *(a1 + 168);
    v30[6] = *(a1 + 152);
    v30[7] = v11;
    v12 = *(a1 + 72);
    v30[0] = *(a1 + 56);
    v30[1] = v12;
    v13 = *(a1 + 88);
    v14 = *(a1 + 104);
    v15 = *(a4 + 23);
    if ((v15 & 0x80u) == 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a4 + 8);
    }

    v17 = &v16[4 * v15];
    v30[2] = *(a1 + 88);
    v30[3] = v14;
    do
    {
      v18 = (*(**(a1 + 48) + 32))(*(a1 + 48), v30, v7, a3, &v29, v16, v17, &v28, v13);
      v19 = v29 == v7;
      *(a1 + 184) += v29 - v7;
      if (v19)
      {
        goto LABEL_40;
      }

      if (v18 != 1)
      {
        if (v18)
        {
          if (v18 != 3)
          {
LABEL_40:
            if ((*(a4 + 23) & 0x80) != 0)
            {
              goto LABEL_41;
            }

            goto LABEL_29;
          }

          if (*(a4 + 23) >= 0)
          {
            v25 = a4;
          }

          else
          {
            v25 = *a4;
          }

          std::basic_string<char32_t>::resize(a4, &v16[-v25] >> 2, 0);
          std::basic_string<char32_t>::append<char32_t const*,0>(a4, v7, a3);
        }

        else
        {
          if (*(a4 + 23) >= 0)
          {
            v27 = a4;
          }

          else
          {
            v27 = *a4;
          }

          std::basic_string<char32_t>::resize(a4, (v28 - v27) >> 2, 0);
        }

        return;
      }

      if (*(a4 + 23) >= 0)
      {
        v20 = a4;
      }

      else
      {
        v20 = *a4;
      }

      v21 = v28 - v20;
      std::basic_string<char32_t>::resize(a4, (v28 - v20) >> 1, 0);
      v22 = *(a4 + 23);
      v23 = v22;
      v24 = *a4;
      if ((v22 & 0x80u) == 0)
      {
        v24 = a4;
      }

      v16 = (v24 + v21);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(a4 + 8);
      }

      v17 = (v24 + 4 * v22);
      v7 = v29;
    }

    while (v29 < a3);
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_29;
    }

LABEL_41:
    operator delete(*a4);
LABEL_29:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      if (*(a1 + 47))
      {
        *a4 = *(a1 + 24);
        *(a4 + 16) = *(a1 + 40);
        return;
      }

LABEL_48:
      std::__throw_range_error[abi:ne200100]("wstring_convert: from_bytes error");
    }

    v26 = *(a1 + 32);
    if (!v26)
    {
      goto LABEL_48;
    }

    std::basic_string<char32_t>::__init_copy_ctor_external(a4, *(a1 + 24), v26);
  }
}

void sub_1B5081290(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_string<char32_t>::resize(std::basic_string<char32_t> *this, std::basic_string<char32_t>::size_type __n, std::basic_string<char32_t>::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size >= __n)
    {
      this->__r_.__value_.__l.__size_ = __n;
      this = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

LABEL_5:
    std::basic_string<char32_t>::append(this, __n - size, __c);
    return;
  }

  if (size < __n)
  {
    goto LABEL_5;
  }

  *(&this->__r_.__value_.__s + 23) = __n;
LABEL_7:
  this->__r_.__value_.__s.__data_[__n] = 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::wstring_convert<std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>,char32_t,std::allocator<char32_t>,std::allocator<char>>::~wstring_convert(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::codecvt_utf8<char32_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8[abi:ne200100](std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::TextSanitizer::init(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    std::allocate_shared[abi:ne200100]<quasar::URegularExpressionWrapper,std::allocator<quasar::URegularExpressionWrapper>,char const(&)[17],UErrorCode *,0>();
  }

  memset(v1, 0, sizeof(v1));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "TextSanitizer is already initialized");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v1);
}

void std::__shared_ptr_emplace<quasar::URegularExpressionWrapper>::__shared_ptr_emplace[abi:ne200100]<char const(&)[17],UErrorCode *,std::allocator<quasar::URegularExpressionWrapper>,0>(void *a1, const char *a2, UErrorCode **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05C98;
  quasar::URegularExpressionWrapper::URegularExpressionWrapper((a1 + 3), a2, *a3);
}

void quasar::URegularExpressionWrapper::initWrappee(quasar::URegularExpressionWrapper *this, const char *__s)
{
  pErrorCode = U_ZERO_ERROR;
  strlen(__s);
  operator new[]();
}

void std::__shared_ptr_emplace<quasar::URegularExpressionWrapper>::__shared_ptr_emplace[abi:ne200100]<char const*,UErrorCode *,std::allocator<quasar::URegularExpressionWrapper>,0>(void *a1, const char **a2, UErrorCode **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05C98;
  quasar::URegularExpressionWrapper::URegularExpressionWrapper((a1 + 3), *a2, *a3);
}

void std::__shared_ptr_emplace<quasar::URegularExpressionWrapper>::__shared_ptr_emplace[abi:ne200100]<char const(&)[6],UErrorCode *,std::allocator<quasar::URegularExpressionWrapper>,0>(void *a1, const char *a2, UErrorCode **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05C98;
  quasar::URegularExpressionWrapper::URegularExpressionWrapper((a1 + 3), a2, *a3);
}

void std::__shared_ptr_emplace<quasar::URegularExpressionWrapper>::__shared_ptr_emplace[abi:ne200100]<char const(&)[9],UErrorCode *,std::allocator<quasar::URegularExpressionWrapper>,0>(void *a1, const char *a2, UErrorCode **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05C98;
  quasar::URegularExpressionWrapper::URegularExpressionWrapper((a1 + 3), a2, *a3);
}

void quasar::SpeechRecognizerModelLoader::setActiveConfiguration(uint64_t a1, uint64_t a2)
{
  std::__optional_storage_base<std::set<unsigned int>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<unsigned int>,false> const&>(a1 + 24, a2);
  std::__optional_storage_base<std::set<std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<std::string>,false> const&>(a1 + 56, a2 + 32);
  std::__optional_storage_base<std::set<std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<std::string>,false> const&>(a1 + 88, a2 + 64);
  std::__optional_storage_base<std::set<BOOL>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<BOOL>,false> const&>(a1 + 120, a2 + 96);
  std::__optional_storage_base<std::set<BOOL>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<BOOL>,false> const&>(a1 + 152, a2 + 128);
  std::__optional_storage_base<std::set<std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<std::string>,false> const&>(a1 + 184, a2 + 160);
  std::__optional_storage_base<std::set<std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<std::string>,false> const&>(a1 + 216, a2 + 192);
  std::__optional_storage_base<std::set<std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<std::string>,false> const&>(a1 + 248, a2 + 224);
  v4 = *a1;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100]((a1 + 376));
  v8[0] = 0;
  v8[1] = 0;
  v7[1] = 0;
  v7[2] = v8;
  v6[3] = v7;
  v7[0] = 0;
  std::set<std::string>::set[abi:ne200100](v6, (a1 + 352));
  quasar::collectRecogInfoFromSysConfigHelper(v4, &v5);
}

void sub_1B5082758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a73);
  JUMPOUT(0x1B508281CLL);
}

void sub_1B5082778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::PTree::~PTree(&a72);
  quasar::RecogRequestFilter::~RecogRequestFilter(&a27);
  a27 = (v72 - 192);
  std::vector<std::pair<std::string,quasar::PTree>>::__destroy_vector::operator()[abi:ne200100](&a27);
  std::__tree<std::string>::destroy(v72 - 168, *(v72 - 160));
  std::__tree<std::string>::destroy(v72 - 144, *(v72 - 136));
  std::__tree<std::string>::destroy(v72 - 120, *(v72 - 112));
  _Unwind_Resume(a1);
}

void sub_1B508278C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a67);
  JUMPOUT(0x1B508281CLL);
}

void sub_1B50827FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  a27 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a27);
  JUMPOUT(0x1B5082810);
}

void std::__optional_storage_base<std::set<unsigned int>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<unsigned int>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      std::__tree<unsigned int>::__assign_multi<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    std::__tree<int>::destroy(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    std::set<unsigned int>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }
}

void std::__optional_storage_base<std::set<std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<std::string>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    std::__tree<std::string>::destroy(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    std::set<std::string>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }
}

void std::__optional_storage_base<std::set<BOOL>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::set<BOOL>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      std::__tree<BOOL>::__assign_multi<std::__tree_const_iterator<BOOL,std::__tree_node<BOOL,void *> *,long>>(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    std::__tree<int>::destroy(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    std::set<BOOL>::set[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }
}

uint64_t quasar::RecogRequestFilter::matchesConfiguration(quasar::RecogRequestFilter *this, const quasar::SpeechRecognizerActiveConfiguration *a2)
{
  if (*(a2 + 24) == 1)
  {
    v4 = *(this + 3);
    v5 = *(this + 4);
    if (v4 == v5)
    {
      return 0;
    }

    while (1)
    {
      if (*(a2 + 1))
      {
        v6 = *v4;
        v7 = (a2 + 8);
        v8 = *(a2 + 1);
        do
        {
          v9 = v8[7];
          v10 = v9 >= v6;
          v11 = v9 < v6;
          if (v10)
          {
            v7 = v8;
          }

          v8 = *&v8[2 * v11];
        }

        while (v8);
        if (v7 != (a2 + 8) && v6 >= v7[7])
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        return 0;
      }
    }
  }

  if (*(a2 + 56) == 1)
  {
    v12 = *(this + 6);
    v13 = *(this + 7);
    if (v12 != v13)
    {
      v14 = a2 + 40;
      while (v14 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2 + 32, v12))
      {
        v12 += 3;
        if (v12 == v13)
        {
          return 0;
        }
      }

      goto LABEL_20;
    }

    return 0;
  }

LABEL_20:
  if (*(a2 + 88) != 1 || (result = quasar::matchesConfigurationCategoryWithWildcard(this + 9, a2 + 64), result))
  {
    if (*(a2 + 120) != 1 || (result = quasar::matchesConfigurationCategory<BOOL>(this + 96, a2 + 96), result))
    {
      if (*(a2 + 152) != 1 || (result = quasar::matchesConfigurationCategory<BOOL>(this + 120, a2 + 128), result))
      {
        if (*(a2 + 184) != 1 || (result = quasar::matchesConfigurationCategoryWithWildcard(this + 18, a2 + 160), result))
        {
          if (*(a2 + 216) != 1 || (result = quasar::matchesConfigurationCategoryWithWildcard(this + 21, a2 + 192), result))
          {
            if (*(a2 + 248) != 1)
            {
              return 1;
            }

            result = quasar::matchesConfigurationCategoryWithWildcard(this + 24, a2 + 224);
            if (result)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void quasar::PTree::addChild(quasar::PTree *this, const quasar::PTree *a2)
{
  v3 = *(this + 4);
  v4 = this + 32;
  if (v3 != *(this + 5))
  {
    v5 = *(v3 + 23);
    if (v5 < 0)
    {
      v5 = *(v3 + 8);
    }

    if (v5)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v13 = 0u;
      v14 = 0u;
      *__p = 0u;
      v12 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Can't add a value array-like to a tree that is already dictionary-like");
LABEL_14:
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }
  }

  if (*(this + 56) == 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v13 = 0u;
    v14 = 0u;
    *__p = 0u;
    v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Leaves can't have children");
    goto LABEL_14;
  }

  v6 = "";
  LODWORD(v7) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v8 = *(a2 + 8);
  }

  memset(v9, 0, sizeof(v9));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v9, *(a2 + 4), *(a2 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v10 = *(a2 + 56);
  std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<char const*,quasar::PTree,0>(__p, &v6);
  std::vector<std::pair<std::string,quasar::PTree>>::push_back[abi:ne200100](v4, __p);
  quasar::PTree::~PTree(&v12 + 1);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  quasar::PTree::~PTree(&v7);
}

void sub_1B5082D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::pair<std::string,quasar::PTree>::~pair(&a22);
  quasar::PTree::~PTree((v22 + 8));
  _Unwind_Resume(a1);
}

uint64_t quasar::PTree::PTree(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  v3 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return a1;
}

uint64_t std::pair<std::string,quasar::PTree>::pair[abi:ne200100]<char const*,quasar::PTree,0>(uint64_t a1, uint64_t a2)
{
  *(std::string::basic_string[abi:ne200100]<0>(a1, *a2) + 6) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 48) = *(a2 + 32);
    *(a1 + 32) = v4;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 56, *(a2 + 40), *(a2 + 48), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 80) = *(a2 + 64);
  return a1;
}

void sub_1B5082E8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::eraseMapKeysNotInSet<std::vector<std::shared_ptr<quasar::FeatureExtractor>>>(uint64_t **a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v2 = *a1;
  if (*a1 != (a1 + 1))
  {
    v6 = a2 + 8;
    do
    {
      if (v6 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2, v2 + 4))
      {
        v8 = std::__tree<std::string>::__remove_node_pointer(a1, v2);
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,0>((v2 + 4));
        operator delete(v2);
      }

      else
      {
        v7 = v2[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v2[2];
            v9 = *v8 == v2;
            v2 = v8;
          }

          while (!v9);
        }
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

void quasar::eraseMapKeysNotInSet<std::shared_ptr<quasar::Decodable>>(uint64_t **a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v2 = *a1;
  if (*a1 != (a1 + 1))
  {
    v6 = a2 + 8;
    do
    {
      if (v6 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2, v2 + 4))
      {
        v8 = std::__tree<std::string>::__remove_node_pointer(a1, v2);
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>((v2 + 4));
        operator delete(v2);
      }

      else
      {
        v7 = v2[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v2[2];
            v9 = *v8 == v2;
            v2 = v8;
          }

          while (!v9);
        }
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

uint64_t quasar::ModelLoader::getModelInitializeContext@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 504);
  *a2 = *(this + 496);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void quasar::ModelLoader::setModelInitializeContext(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 504);
  *(a1 + 496) = v3;
  *(a1 + 504) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t quasar::SpeechRecognizerModelLoader::getFrontend@<X0>(uint64_t *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  __p.__r_.__value_.__r.__words[0] = a2;
  v5 = std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 35), a2);
  if (v6)
  {
    v7 = *a1;
    std::operator+<char>();
    Ptree = quasar::SystemConfig::getPtree(v7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = quasar::PTree::size(Ptree);
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::reserve((v5 + 56), v9);
    v10 = quasar::PTree::begin(Ptree);
    if (v10 != quasar::PTree::end(Ptree))
    {
      std::operator+<char>();
      v11 = std::string::append(&v19, ".");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = *(v10 + 23);
      if (v13 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = *v10;
      }

      if (v13 >= 0)
      {
        v15 = *(v10 + 23);
      }

      else
      {
        v15 = *(v10 + 8);
      }

      v16 = std::string::append(&v20, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      quasar::FeatureExtractorSimpleFactory::createFeatureExtractor(&__p, &v21);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return std::vector<std::shared_ptr<quasar::FeatureExtractor>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::FeatureExtractor>*,std::shared_ptr<quasar::FeatureExtractor>*>(a3, *(v5 + 56), *(v5 + 64), (*(v5 + 64) - *(v5 + 56)) >> 4);
}

void sub_1B5083254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<quasar::SyncDecoder>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t quasar::SystemConfig::getPtree(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1552) != 1)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }

  v2 = *(a2 + 23);
  result = a1 + 72;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {

    quasar::PTree::getChild(result, a2);
  }

  return result;
}

{
  if (*(a1 + 1552) != 1)
  {
    memset(v4, 0, sizeof(v4));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Config file must be loaded before calling this method.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v4);
  }

  v2 = *(a2 + 23);
  result = a1 + 72;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {

    quasar::PTree::getChild(result, a2);
  }

  return result;
}

void *std::vector<std::shared_ptr<quasar::FeatureExtractor>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void quasar::FeatureExtractorSimpleFactory::createFeatureExtractor(std::string *this@<X0>, void *a2@<X8>)
{
  if (quasar::gLogLevel >= 5)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Building FeatureExtractor ", 26);
    v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = this->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  quasar::FeatureExtractorSimpleFactory::getFeatureExtractorType(this, __p);
  *a2 = 0;
  a2[1] = 0;
  if ((BYTE7(v36) & 0x80) != 0)
  {
    if (__p[1] == 3 && *__p[0] == 28003 && *(__p[0] + 2) == 110)
    {
      goto LABEL_47;
    }

    if (__p[1] == 4 && *__p[0] == 1853255011)
    {
      goto LABEL_65;
    }

    if (__p[1] != 5 || (*__p[0] == 1953260900 ? (v9 = *(__p[0] + 4) == 97) : (v9 = 0), !v9))
    {
      if (__p[1] != 5 || (*__p[0] == 1851875942 ? (v10 = *(__p[0] + 4) == 107) : (v10 = 0), !v10))
      {
        if (__p[1] != 14)
        {
          goto LABEL_66;
        }

        if (*__p[0] == 0x7469776B6E616266 && *(__p[0] + 6) == 0x6863746970687469)
        {
          goto LABEL_79;
        }

        if ((BYTE7(v36) & 0x80) != 0)
        {
LABEL_66:
          if (__p[1] != 3)
          {
            goto LABEL_72;
          }

          v16 = __p[0];
          goto LABEL_68;
        }

LABEL_63:
        if (BYTE7(v36) != 3)
        {
          goto LABEL_72;
        }

LABEL_64:
        v16 = __p;
LABEL_68:
        v17 = *v16;
        v18 = *(v16 + 2);
        if (v17 == 25708 && v18 == 97)
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineLdaFe,std::allocator<quasar::OnlineLdaFe>,std::string const&,0>();
        }

LABEL_72:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "mfcc"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineMfccFe,std::allocator<quasar::OnlineMfccFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "nnet-forward"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineNnetForwardFe,std::allocator<quasar::OnlineNnetForwardFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "am-fusion-encoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::AmFusionEncoderFe,std::allocator<quasar::AmFusionEncoderFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "speech-activity-detector"))
        {
          std::allocate_shared[abi:ne200100]<quasar::SpeechActivityDetectorFe,std::allocator<quasar::SpeechActivityDetectorFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "voice-activity-gating"))
        {
          std::allocate_shared[abi:ne200100]<quasar::VoiceActivityGatingFe,std::allocator<quasar::VoiceActivityGatingFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "acoustic-encoder"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineAcousticEncoderFe,std::allocator<quasar::OnlineAcousticEncoderFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "nnet-forward-skip"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineNnetForwardSkipFe,std::allocator<quasar::OnlineNnetForwardSkipFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "splice"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineSpliceFe,std::allocator<quasar::OnlineSpliceFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "subsample"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineSubsampleFe,std::allocator<quasar::OnlineSubsampleFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "transform"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineStaticTransformFe,std::allocator<quasar::OnlineStaticTransformFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "cache-input"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineCacheInputFe,std::allocator<quasar::OnlineCacheInputFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "compute-ahead-input"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineComputeAheadInputFe,std::allocator<quasar::OnlineComputeAheadInputFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "fbank-with-audio-analytics"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineFbankWithAudioAnalyticsFe,std::allocator<quasar::OnlineFbankWithAudioAnalyticsFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "vad-gated-fbank-with-audio-analytics"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe,std::allocator<quasar::OnlineVadGatedFbankWithAudioAnalyticsFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "append"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineAppendFe,std::allocator<quasar::OnlineAppendFe>,std::string const&,0>();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, "simple-waveform-reader"))
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineSimpleWaveformFe,std::allocator<quasar::OnlineSimpleWaveformFe>,std::string const&,0>();
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::operator+<char>();
        v21 = std::string::append(&v30, " in ");
        v22 = *&v21->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if (v23 >= 0)
        {
          v24 = this;
        }

        else
        {
          v24 = this->__r_.__value_.__r.__words[0];
        }

        if (v23 >= 0)
        {
          v25 = HIBYTE(this->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = this->__r_.__value_.__l.__size_;
        }

        v26 = std::string::append(&v31, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v32, "");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v34 = v28->__r_.__value_.__r.__words[2];
        v33 = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        quasar::PTree::Error::Error(exception, &v33);
      }

LABEL_80:
      std::allocate_shared[abi:ne200100]<quasar::OnlineFbankFe,std::allocator<quasar::OnlineFbankFe>,std::string const&,0>();
    }
  }

  else
  {
    if (BYTE7(v36) <= 4u)
    {
      if (BYTE7(v36) != 3)
      {
        if (BYTE7(v36) != 4 || LODWORD(__p[0]) != 1853255011)
        {
          goto LABEL_72;
        }

LABEL_65:
        std::allocate_shared[abi:ne200100]<quasar::OnlineCmvnFe,std::allocator<quasar::OnlineCmvnFe>,std::string const&,0>();
      }

      if (LOWORD(__p[0]) != 28003 || BYTE2(__p[0]) != 110)
      {
        goto LABEL_64;
      }

LABEL_47:
      std::allocate_shared[abi:ne200100]<quasar::OnlineCmnFe,std::allocator<quasar::OnlineCmnFe>,std::string const&,0>();
    }

    if (BYTE7(v36) != 5)
    {
      if (BYTE7(v36) != 14)
      {
        goto LABEL_72;
      }

      if (__p[0] != 0x7469776B6E616266 || *(__p + 6) != 0x6863746970687469)
      {
        goto LABEL_72;
      }

LABEL_79:
      std::allocate_shared[abi:ne200100]<quasar::OnlineFbankWithPitchFe,std::allocator<quasar::OnlineFbankWithPitchFe>,std::string const&,0>();
    }

    if (LODWORD(__p[0]) != 1953260900 || BYTE4(__p[0]) != 97)
    {
      if (LODWORD(__p[0]) != 1851875942 || BYTE4(__p[0]) != 107)
      {
        goto LABEL_63;
      }

      goto LABEL_80;
    }
  }

  std::allocate_shared[abi:ne200100]<quasar::OnlineDeltaFe,std::allocator<quasar::OnlineDeltaFe>,std::string const&,0>();
}

void sub_1B5083CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v43 & 1) == 0)
    {
LABEL_12:
      if (a42 < 0)
      {
        operator delete(a37);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v42);
  goto LABEL_12;
}

double quasar::FeatureExtractorSimpleFactory::getFeatureExtractorType@<D0>(std::string *this@<X0>, uint64_t a2@<X8>)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a2, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    *a2 = *this;
  }

  v4 = std::string::rfind(this, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v4 != -1)
  {
    std::string::basic_string(&v7, this, v4 + 1, 0xFFFFFFFFFFFFFFFFLL, &v8);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
  }

  v5 = std::string::find(a2, 58, 0);
  if (v5 != -1)
  {
    std::string::basic_string(&v7, a2, 0, v5, &v8);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v7.__r_.__value_.__l.__data_;
    *a2 = v7;
  }

  return result;
}

void sub_1B5083EB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineFbankWithAudioAnalyticsFe::OnlineFbankWithAudioAnalyticsFe(uint64_t a1, __int128 *a2)
{
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22B50;
  kaldi::FbankWithAudioAnalyticsOptions::FbankWithAudioAnalyticsOptions((v3 + 6));
  *(a1 + 284) = xmmword_1B5B0F1E0;
  *(a1 + 300) = 10;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  return a1;
}

void sub_1B5083FAC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1F2D22958;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::FeatureExtractor::FeatureExtractor(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D22958;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  *(a1 + 32) = 0;
  quasar::SystemConfig::Version::Version((a1 + 36));
  return a1;
}

void sub_1B5084068(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<quasar::OnlineFbankWithAudioAnalyticsFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineFbankWithAudioAnalyticsFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23798;
  quasar::OnlineFbankWithAudioAnalyticsFe::OnlineFbankWithAudioAnalyticsFe((a1 + 3), a2);
  return a1;
}

double kaldi::FbankWithAudioAnalyticsOptions::FbankWithAudioAnalyticsOptions(kaldi::FbankWithAudioAnalyticsOptions *this)
{
  v1 = kaldi::FbankOptions::FbankOptions(this);
  *v1 = &unk_1F2D231C0;
  *(v1 + 100) = xmmword_1B5AE0AB0;
  *(v1 + 116) = xmmword_1B5AE0AC0;
  *(v1 + 132) = xmmword_1B5AE0AD0;
  *(v1 + 148) = 0x500000001;
  *(v1 + 156) = 0;
  *(v1 + 164) = 0;
  *(v1 + 42) = 500;
  *(v1 + 86) = 256;
  *(v1 + 44) = -1;
  *(v1 + 180) = xmmword_1B5B0F210;
  *(v1 + 50) = 1000593162;
  *(v1 + 204) = xmmword_1B5B0F220;
  result = 7.7485972e-304;
  *(v1 + 220) = 0x101010000010101;
  *(v1 + 228) = 0;
  return result;
}

kaldi::FbankOptions *kaldi::FbankOptions::FbankOptions(kaldi::FbankOptions *this)
{
  *this = &unk_1F2D3A0F0;
  *(this + 8) = xmmword_1B5AE12B0;
  *(this + 6) = 1064849900;
  *(this + 28) = 1;
  std::string::basic_string[abi:ne200100]<0>(this + 32, "povey");
  *(this + 28) = 257;
  *(this + 60) = 0x17BF800000;
  *(this + 68) = xmmword_1B5AFC250;
  *(this + 42) = 0;
  *(this + 88) = 0;
  *(this + 23) = 0;
  *(this + 24) = 16842753;
  return this;
}

void quasar::FeatureExtractor::init(quasar::FeatureExtractor *this, quasar::SystemConfig *a2)
{
  if (!*(this + 8))
  {
    *(this + 36) = quasar::SystemConfig::getConfigFileVersion(a2);
    if (*(this + 31) >= 0)
    {
      v4 = *(this + 31);
    }

    else
    {
      v4 = *(this + 2);
    }

    v5 = __p;
    std::string::basic_string[abi:ne200100](__p, v4 + 1);
    if (SBYTE7(v16) < 0)
    {
      v5 = __p[0];
    }

    if (v4)
    {
      if (*(this + 31) >= 0)
      {
        v6 = this + 8;
      }

      else
      {
        v6 = *(this + 1);
      }

      memmove(v5, v6, v4);
    }

    *(v5 + v4) = 46;
    quasar::SystemConfig::setPrefix(a2, __p);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    (**this)(this, a2);
    quasar::SystemConfig::readPtree(a2, this + 8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameters for ", 15);
  v10 = *(this + 1);
  v9 = this + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v12, v13);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, " have already been registered.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B508440C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineFbankWithAudioAnalyticsFe::registerParams(quasar::OnlineFbankWithAudioAnalyticsFe *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "fbank-with-audio-analytics");
  quasar::SystemConfig::enforceMinVersion(a2, 98, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::FbankWithAudioAnalyticsOptions::Register(this + 48, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "low-watermark");
  std::string::basic_string[abi:ne200100]<0>(v4, "Low watermark (in number of frames) for audio buffer read. Ignored if <= 0.");
  quasar::SystemConfig::Register<int>(a2, __p, this + 280, v4, 0, 76, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::OnlineFbankWithAudioAnalyticsFe::registerFrameExtractionOptions(this, a2);
  quasar::OnlineFbankWithAudioAnalyticsFe::registerAudioAnalyticsExtractionOptions(this, a2);
  quasar::OnlineFbankWithAudioAnalyticsFe::registerResamplerOptions(this, a2);
  *(this + 70) = 0;
}

void sub_1B5084528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MelBanksOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "num-mel-bins");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of triangular mel-frequency bins");
  (*(*a2 + 8))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "low-freq");
  std::string::basic_string[abi:ne200100]<0>(__p, "Low cutoff frequency for mel bins");
  (*(*a2 + 24))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "high-freq");
  std::string::basic_string[abi:ne200100]<0>(__p, "High cutoff frequency for mel bins (if < 0, offset from Nyquist)");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "vtln-low");
  std::string::basic_string[abi:ne200100]<0>(__p, "Low inflection point in piecewise linear VTLN warping function");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "vtln-high");
  std::string::basic_string[abi:ne200100]<0>(__p, "High inflection point in piecewise linear VTLN warping function (if negative, offset from high-mel-freq");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "debug-mel");
  std::string::basic_string[abi:ne200100]<0>(__p, "Print out debugging information for mel bin computation");
  (**a2)(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5084844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::FbankOptions::Register(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    kaldi::FrameExtractionOptions::Register(a1 + 8, a2);
  }

  kaldi::MelBanksOptions::Register(a1 + 64, a2);
  std::string::basic_string[abi:ne200100]<0>(v7, "use-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "Add an extra dimension with energy to the FBANK output.");
  (**a2)(a2, v7, a1 + 88, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "energy-floor");
  std::string::basic_string[abi:ne200100]<0>(__p, "Floor on energy (absolute, not relative) in FBANK computation");
  (*(*a2 + 24))(a2, v7, a1 + 92, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "raw-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, compute energy before preemphasis and windowing");
  (**a2)(a2, v7, a1 + 96, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "htk-compat");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, put energy last.  Warning: not sufficient to get HTK compatible features (need to change other parameters).");
  (**a2)(a2, v7, a1 + 97, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "use-log-fbank");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, produce log-filterbank, else produce linear.");
  (**a2)(a2, v7, a1 + 98, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "cache-energy");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, cache energy values.");
  (**a2)(a2, v7, a1 + 99, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1B5084BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::FbankWithAudioAnalyticsOptions::Register(uint64_t a1, void (***a2)(void, void **, uint64_t, void **))
{
  kaldi::FbankOptions::Register(a1, a2, 1);
  kaldi::ProcessAudioAnalyticsOptions::Register(a1 + 180, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "use-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "Add extra dimensions for pitch to the FBANK output.");
  (**a2)(a2, v6, a1 + 228, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5084CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::ProcessAudioAnalyticsOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "pitch-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for the final normalized log-pitch value");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pov-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for final POV (probability of voicing) feature");
  (*(*a2 + 24))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pov-offset");
  std::string::basic_string[abi:ne200100]<0>(__p, "This can be used to add an offset to the POV feature. Intended for use in online decoding as a substitute for  CMN.");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-pitch-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Term to scale the final delta log-pitch feature");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-pitch-noise-stddev");
  std::string::basic_string[abi:ne200100]<0>(__p, "Standard deviation for noise we add to the delta log-pitch (before scaling); should be about the same as delta-pitch option to pitch creation.  The purpose is to get rid of peaks in the delta-pitch caused by discretization of pitch values.");
  (*(*a2 + 24))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "normalization-left-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Left-context (in frames) for moving window normalization");
  (*(*a2 + 8))(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "normalization-right-context");
  std::string::basic_string[abi:ne200100]<0>(__p, "Right-context (in frames) for moving window normalization");
  (*(*a2 + 8))(a2, v6, a1 + 28, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames on each side of central frame, to use for delta window.");
  (*(*a2 + 8))(a2, v6, a1 + 32, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delay");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames by which the pitch information is delayed.");
  (*(*a2 + 8))(a2, v6, a1 + 36, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-pov-feature");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, the warped NCCF is added to output features");
  (**a2)(a2, v6, a1 + 40, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-normalized-log-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, the log-pitch with POV-weighted mean subtraction over 1.5 second window is added to output features");
  (**a2)(a2, v6, a1 + 41, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-delta-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, time derivative of log-pitch is added to output features");
  (**a2)(a2, v6, a1 + 42, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-raw-log-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, log(pitch) is added to output features");
  (**a2)(a2, v6, a1 + 44, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-pitch-period");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, pitch period is added to output features");
  (**a2)(a2, v6, a1 + 45, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-pov");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, probability of voicing is added to output features");
  (**a2)(a2, v6, a1 + 46, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "add-max-amplitude");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, max amplitude is added to output features");
  (**a2)(a2, v6, a1 + 47, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5085684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::Register<int>(const void **a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  (*(*a1 + 1))(a1);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = a1 + 103;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 103, a2, __p);
  v22 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 185), __p);
  *(v16 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 103, a2, __p);
  v22 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 188), __p);
  *(v17 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a5)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  __p[0] = a1 + 103;
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 191), a1 + 103);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 56, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B50858C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineFbankWithAudioAnalyticsFe::registerFrameExtractionOptions(quasar::OnlineFbankWithAudioAnalyticsFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "sample-frequency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Waveform data sample frequency (must match the waveform file, if specified there)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 284, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frame-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame length in milliseconds");
  quasar::SystemConfig::Register<float>(a2, v6, this + 64, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frame-shift");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame shift in milliseconds");
  quasar::SystemConfig::Register<float>(a2, v6, this + 60, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "preemphasis-coefficient");
  std::string::basic_string[abi:ne200100]<0>(__p, "Coefficient for use in signal preemphasis");
  quasar::SystemConfig::Register<float>(a2, v6, this + 72, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "remove-dc-offset");
  std::string::basic_string[abi:ne200100]<0>(__p, "Subtract mean from waveform on each frame");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 76, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "dither");
  std::string::basic_string[abi:ne200100]<0>(__p, "Dithering constant (0.0 means no dither)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 68, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "window-type");
  std::string::basic_string[abi:ne200100]<0>(__p, "Type of window (hamming|hanning|povey|rectangular)");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 80, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "round-to-power-of-two");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, round window size to power of two.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 104, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "snip-edges");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, end effects will be handled by outputting only frames that completely fit in the file, and the number of frames depends on the frame-length.  If false, the number of frames depends only on the frame-shift, and we reflect the data at the ends.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 105, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5085CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::Register<float>(const void **a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  (*(*a1 + 3))(a1);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = a1 + 103;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 103, a2, __p);
  v22 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 185), __p);
  *(v16 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1 + 103, a2, __p);
  v22 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>((a1 + 188), __p);
  *(v17 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a5)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  __p[0] = a1 + 103;
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 191), a1 + 103);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 56, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5085EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::Register<BOOL>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, int a9)
{
  (**a1)(a1);
  quasar::result_handler::Range::Range(&v21, a6, a7);
  v15 = (a1 + 824);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v22 = __p;
  v16 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1480, __p);
  *(v16 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::result_handler::Range::Range(&v21, a8, a9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 824), a2, __p);
  v22 = __p;
  v17 = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 1504, __p);
  *(v17 + 56) = v21;
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if (!a5)
    {
      return;
    }
  }

  else if (!a5)
  {
    return;
  }

  __p[0] = (a1 + 824);
  v18 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 1528, (a1 + 824));
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2, __p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v18 + 56, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B5086094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineFbankWithAudioAnalyticsFe::registerAudioAnalyticsExtractionOptions(quasar::OnlineFbankWithAudioAnalyticsFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "analytics-sample-frequency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Waveform data sample frequency (must match the waveform file, if specified there)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 148, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "analytics-frame-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame length in milliseconds");
  quasar::SystemConfig::Register<float>(a2, v6, this + 156, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "analytics-frame-shift");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frame shift in milliseconds");
  quasar::SystemConfig::Register<float>(a2, v6, this + 152, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "analytics-preemphasis-coefficient");
  std::string::basic_string[abi:ne200100]<0>(__p, "Coefficient for use in signal preemphasis (deprecated)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 160, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-f0");
  std::string::basic_string[abi:ne200100]<0>(__p, "min. F0 to search for (Hz)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 164, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-f0");
  std::string::basic_string[abi:ne200100]<0>(__p, "max. F0 to search for (Hz)");
  quasar::SystemConfig::Register<float>(a2, v6, this + 168, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "soft-min-f0");
  std::string::basic_string[abi:ne200100]<0>(__p, "Minimum f0, applied in soft way, must not exceed min-f0");
  quasar::SystemConfig::Register<float>(a2, v6, this + 172, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "penalty-factor");
  std::string::basic_string[abi:ne200100]<0>(__p, "cost factor for FO change.");
  quasar::SystemConfig::Register<float>(a2, v6, this + 176, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lowpass-cutoff");
  std::string::basic_string[abi:ne200100]<0>(__p, "cutoff frequency for LowPass filter (Hz) ");
  quasar::SystemConfig::Register<float>(a2, v6, this + 180, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-frequency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Frequency that we down-sample the signal to. Must be more than twice lowpass-cutoff");
  quasar::SystemConfig::Register<float>(a2, v6, this + 184, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "delta-pitch");
  std::string::basic_string[abi:ne200100]<0>(__p, "Smallest relative change in pitch that our algorithm measures");
  quasar::SystemConfig::Register<float>(a2, v6, this + 188, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nccf-ballast");
  std::string::basic_string[abi:ne200100]<0>(__p, "Increasing this factor reduces NCCF for quiet frames");
  quasar::SystemConfig::Register<float>(a2, v6, this + 192, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nccf-ballast-online");
  std::string::basic_string[abi:ne200100]<0>(__p, "This is useful mainly for debug; it affects how the NCCF ballast is computed.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 220, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "lowpass-filter-width");
  std::string::basic_string[abi:ne200100]<0>(__p, "Integer that determines filter width of lowpass filter, more gives sharper filter");
  quasar::SystemConfig::Register<int>(a2, v6, this + 196, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "upsample-filter-width");
  std::string::basic_string[abi:ne200100]<0>(__p, "Integer that determines filter width when upsampling NCCF");
  quasar::SystemConfig::Register<int>(a2, v6, this + 200, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "frames-per-chunk");
  std::string::basic_string[abi:ne200100]<0>(__p, "Only relevant for offline pitch extraction (e.g. compute-kaldi-pitch-feats), you can set it to a small nonzero value, such as 10, for better feature compatibility with online decoding (affects energy normalization in the algorithm)");
  quasar::SystemConfig::Register<int>(a2, v6, this + 208, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "simulate-first-pass-online");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, compute-kaldi-pitch-feats will output features that correspond to what an online decoder would see in the first pass of decoding-- not the final version of the features, which is the default.  Relevant if --frames-per-chunk > 0");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 212, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "recompute-frame");
  std::string::basic_string[abi:ne200100]<0>(__p, "Only relevant for online pitch extraction, or for compatibility with online pitch extraction.  A non-critical parameter; the frame at which we recompute some of the forward pointers, after revising our estimate of the signal energy.  Relevant if--frames-per-chunk > 0");
  quasar::SystemConfig::Register<int>(a2, v6, this + 216, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-frames-latency");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of frames of latency that we allow pitch tracking to introduce into the feature processing (affects output only if --frames-per-chunk > 0 and --simulate-first-pass-online=true");
  quasar::SystemConfig::Register<int>(a2, v6, this + 204, __p, 0, 0, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "analytics-snip-edges");
  std::string::basic_string[abi:ne200100]<0>(__p, "If this is set to false, the incomplete frames near the ending edge won't be snipped, so that the number of frames is the file size divided by the frame-shift. This makes different types of features give the same number of frames.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 221, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pitch-viterbi-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of frames over which we want to run viterbi for computing pitch.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 224, __p, 0, 149, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B50869C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineFbankWithAudioAnalyticsFe::registerResamplerOptions(quasar::OnlineFbankWithAudioAnalyticsFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "resample-freq");
  std::string::basic_string[abi:ne200100]<0>(__p, "The frequency to resample to.");
  quasar::SystemConfig::Register<float>(a2, v6, this + 292, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-cutoff-hz");
  std::string::basic_string[abi:ne200100]<0>(__p, "The cutoff for the filter for resampling the audio");
  quasar::SystemConfig::Register<float>(a2, v6, this + 296, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "resample-num-zeros");
  std::string::basic_string[abi:ne200100]<0>(__p, "Controls sharpness of filter.");
  quasar::SystemConfig::Register<int>(a2, v6, this + 300, __p, 0, 139, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5086C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

float quasar::SystemConfig::ToFloat(char *a1)
{
  v1 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v11 = 0;
  v2 = strtod(a1, &v11);
  v3 = v1;
  if (v1[23] < 0)
  {
    v3 = *v1;
  }

  if (v3 == v11)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v6 = std::string::append(&v8, "");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v10 = v6->__r_.__value_.__r.__words[2];
    v9 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    quasar::PTree::Error::Error(exception, &v9);
  }

  return v2;
}

void sub_1B5086D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

double quasar::OnlineFbankWithAudioAnalyticsFe::finishInit(quasar::OnlineFbankWithAudioAnalyticsFe *this, quasar::SystemConfig *a2)
{
  *(this + 14) = *(this + 71);
  ConfigFileVersion = quasar::SystemConfig::getConfigFileVersion(a2);
  quasar::result_handler::Range::Range(&v4, 139, 0);
  if (quasar::SystemConfig::Version::operator<(&ConfigFileVersion, &v4))
  {
    *(this + 39) = *(this + 16);
    result = *(this + 7);
    *(this + 148) = result;
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<quasar::OnlineCacheInputFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineCacheInputFe>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D1FDB8;
  quasar::FeatureExtractor::FeatureExtractor(a1 + 24, a2);
  *(a1 + 24) = &unk_1F2D22EB0;
  *(a1 + 68) = 257;
  return a1;
}

void quasar::OnlineCacheInputFe::registerParams(quasar::OnlineCacheInputFe *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "cache-data");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, cache all data (e.g. fbank feats)");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 44, __p, 0, 132, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "cache-analytics");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, cache all analytics data");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 45, __p, 0, 132, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5086FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SystemConfig::ToBool(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v1 = quasar::PTree::toBool(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1B5087094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::VoiceActivityGatingFe::VoiceActivityGatingFe(uint64_t a1, __int128 *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = quasar::FeatureExtractor::FeatureExtractor(a1, a2);
  *v3 = &unk_1F2D22D00;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  std::string::basic_string[abi:ne200100]<0>((v3 + 80), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 104), "");
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x10000;
  std::string::basic_string[abi:ne200100]<0>(&v6, "low");
  std::string::basic_string[abi:ne200100]<0>(v9, "medium");
  std::string::basic_string[abi:ne200100]<0>(v10, "high");
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1 + 136, &v6, &v11, 3uLL);
  for (i = 0; i != -72; i -= 24)
  {
    if (v10[i + 23] < 0)
    {
      operator delete(*&v10[i]);
    }
  }

  v6 = 0x3F0000003E4CCCCDLL;
  v7 = 1061997773;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a1 + 160, &v6, &v8, 3uLL);
  *(a1 + 184) = xmmword_1B5B0F200;
  *(a1 + 200) = 257;
  return a1;
}

void sub_1B50872A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = v10;
  a9 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (*(v9 + 127) < 0)
  {
    operator delete(*(v9 + 104));
  }

  if (*(v9 + 103) < 0)
  {
    operator delete(*(v9 + 80));
  }

  v13 = *(v9 + 72);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(v9 + 56);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  *v9 = &unk_1F2D22958;
  if (*(v9 + 31) < 0)
  {
    operator delete(*(v9 + 8));
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::VoiceActivityGatingFe>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::VoiceActivityGatingFe>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D23568;
  quasar::VoiceActivityGatingFe::VoiceActivityGatingFe((a1 + 3), a2);
  return a1;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5087450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::VoiceActivityGatingFe::registerParams(quasar::VoiceActivityGatingFe *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v22, "zero-pad");
  std::string::basic_string[abi:ne200100]<0>(&__p, "Zero pad the features, instead of artificial silence, to reach the strict-batch-size requirement");
  quasar::SystemConfig::Register<BOOL>(a2, &v22.__r_.__value_.__l.__data_, this + 132, &__p, 0, 166, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "num-silence-padding-frames");
  std::string::basic_string[abi:ne200100]<0>(&__p, "pad this many artifical silence frames at the end of audio");
  quasar::SystemConfig::Register<int>(a2, &v22.__r_.__value_.__l.__data_, this + 128, &__p, 0, 207, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "model-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the AM for realigned-am-fusion-decoder");
  quasar::SystemConfig::Register<std::string>(a2, &v22.__r_.__value_.__l.__data_, this + 80, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "silence-vector-file");
  std::string::basic_string[abi:ne200100]<0>(&__p, "the artifical silence fbank that will be padded to the end of the audio to alleviate CTC's delayed decision");
  quasar::SystemConfig::Register<std::string>(a2, &v22.__r_.__value_.__l.__data_, this + 104, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "align-frames");
  std::string::basic_string[abi:ne200100]<0>(&__p, "align VAD score with fbanks");
  quasar::SystemConfig::Register<BOOL>(a2, &v22.__r_.__value_.__l.__data_, this + 133, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "output-silence-posteriors");
  std::string::basic_string[abi:ne200100]<0>(&__p, "output silence posteriors to downstream components");
  quasar::SystemConfig::Register<BOOL>(a2, &v22.__r_.__value_.__l.__data_, this + 135, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "apply-exp");
  std::string::basic_string[abi:ne200100]<0>(&__p, "apply Exp on model output");
  quasar::SystemConfig::Register<BOOL>(a2, &v22.__r_.__value_.__l.__data_, this + 134, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "warmup-silence-ms");
  std::string::basic_string[abi:ne200100]<0>(&__p, "silence (ms) to be padded at the beginning of a VAD segment");
  quasar::SystemConfig::Register<int>(a2, &v22.__r_.__value_.__l.__data_, this + 184, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "activate-speech-ms");
  std::string::basic_string[abi:ne200100]<0>(&__p, "speech (ms) to start a VAD segment");
  quasar::SystemConfig::Register<int>(a2, &v22.__r_.__value_.__l.__data_, this + 188, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "cooldown-silence-ms");
  std::string::basic_string[abi:ne200100]<0>(&__p, "silence (ms) to pause a VAD segment");
  quasar::SystemConfig::Register<int>(a2, &v22.__r_.__value_.__l.__data_, this + 196, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "deactivate-silence-ms");
  std::string::basic_string[abi:ne200100]<0>(&__p, "silence (ms) to end a VAD segment");
  quasar::SystemConfig::Register<int>(a2, &v22.__r_.__value_.__l.__data_, this + 192, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "align-to-chunk-boundary");
  std::string::basic_string[abi:ne200100]<0>(&__p, "align the start of speech segments to chunk boundary to avoid latency increasing ");
  quasar::SystemConfig::Register<BOOL>(a2, &v22.__r_.__value_.__l.__data_, this + 200, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "mask-chunk-padding");
  std::string::basic_string[abi:ne200100]<0>(&__p, "whether to mask the chunk padding");
  quasar::SystemConfig::Register<BOOL>(a2, &v22.__r_.__value_.__l.__data_, this + 201, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::getPrefix(a2, &v22);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&__p, size + 11);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v22;
    }

    else
    {
      v6 = v22.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, v6, size);
  }

  strcpy(p_p + size, "thresholds.");
  quasar::SystemConfig::setPrefix(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *(this + 17);
  if (*(this + 18) != v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a2;
      v12 = (v7 + v8);
      v13 = *(this + 20);
      v14 = *(v7 + v8 + 23);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12[1];
      }

      std::string::basic_string[abi:ne200100](&__p, v15 + 38);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      if (v15)
      {
        if (*(v12 + 23) >= 0)
        {
          v17 = v12;
        }

        else
        {
          v17 = *v12;
        }

        memmove(v16, v17, v15);
      }

      strcpy(v16 + v15, " level threshold for speech probablity");
      a2 = v11;
      quasar::SystemConfig::Register<float>(v11, v12, v13 + v9, &__p, 0, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v10;
      v7 = *(this + 17);
      v9 += 4;
      v8 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(this + 18) - v7) >> 3) > v10);
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v22.__r_.__value_.__l.__size_;
  }

  std::string::basic_string[abi:ne200100](&__p, v18 + 10);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  if (v18)
  {
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v22;
    }

    else
    {
      v20 = v22.__r_.__value_.__r.__words[0];
    }

    memmove(v19, v20, v18);
  }

  strcpy(v19 + v18, "thresholds");
  quasar::SystemConfig::readPtree(a2, &__p);
}

void sub_1B5087CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::SystemConfig::getPrefix(quasar::SystemConfig *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 847) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 103), *(this + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 824);
    a2->__r_.__value_.__r.__words[2] = *(this + 105);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void quasar::VoiceActivityGatingFe::finishInit(quasar::VoiceActivityGatingFe *this, quasar::SystemConfig *a2)
{
  if ((*(this + 127) & 0x8000000000000000) != 0)
  {
    if (!*(this + 14))
    {
      goto LABEL_6;
    }
  }

  else if (!*(this + 127))
  {
LABEL_6:
    ModelLoader = quasar::SystemConfig::getModelLoader(a2);
    quasar::ModelLoader::getModelInitializeContext(ModelLoader, &v4);
    quasar::ModelLoader::isKeepANEModelLoadedEnabled(ModelLoader, this + 80);
    quasar::ModelLoader::milIsANEReadyOnLowEnd(ModelLoader);
    std::allocate_shared[abi:ne200100]<kaldi::quasar::CEFusedAcousticEncoder,std::allocator<kaldi::quasar::CEFusedAcousticEncoder>,std::string &,std::shared_ptr<kaldi::ModelInitializeContext>,BOOL,BOOL,0>();
  }

  operator new();
}

void sub_1B5088000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

BOOL quasar::ModelLoader::isKeepANEModelLoadedEnabled(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 490));
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v33, ".mlmodelc");
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = v34;
  if ((v34 & 0x80u) == 0)
  {
    v8 = v34;
  }

  else
  {
    v8 = v33[1];
  }

  v10 = v6 >= v8;
  v9 = v6 - v8;
  if (v10)
  {
    if ((v4 & 0x80) != 0)
    {
      if (v8 == -1 || v5 < v9)
      {
LABEL_72:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v5 - v9 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = v5 - v9;
      }

      v13 = *a2;
    }

    else
    {
      v10 = v8 != -1 && v4 >= v9;
      if (!v10)
      {
        goto LABEL_72;
      }

      v11 = v4 - v9;
      if (v11 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = v11;
      }

      v13 = a2;
    }

    if ((v34 & 0x80u) == 0)
    {
      v16 = v33;
    }

    else
    {
      v16 = v33[0];
    }

    v17 = memcmp((v13 + v9), v16, v12);
    if (v12 == v8 && v17 == 0)
    {
      isEspressoV2Mil = 1;
      if ((v7 & 0x80) == 0)
      {
        return isEspressoV2Mil;
      }

      goto LABEL_47;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ".bundle");
  v19 = *(a2 + 23);
  v20 = *(a2 + 8);
  if ((v19 & 0x80u) == 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = v32;
  if ((v32 & 0x80u) == 0)
  {
    v23 = v32;
  }

  else
  {
    v23 = __p[1];
  }

  v10 = v21 >= v23;
  v24 = v21 - v23;
  if (!v10)
  {
LABEL_44:
    isEspressoV2Mil = kaldi::quasar::isEspressoV2Mil(a2);
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if ((v19 & 0x80) != 0)
  {
    if (v23 == -1 || v20 < v24)
    {
LABEL_73:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v20 - v24 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v20 - v24;
    }

    v28 = *a2;
  }

  else
  {
    if (v23 == -1)
    {
      goto LABEL_73;
    }

    v10 = v19 >= v24;
    v26 = v19 - v24;
    if (!v10)
    {
      goto LABEL_73;
    }

    if (v26 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v26;
    }

    v28 = a2;
  }

  if ((v32 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  v30 = memcmp((v28 + v24), v29, v27);
  if (v27 != v23 || v30)
  {
    goto LABEL_44;
  }

  isEspressoV2Mil = 1;
  if ((v22 & 0x80) != 0)
  {
LABEL_45:
    operator delete(__p[0]);
  }

LABEL_46:
  if ((v34 & 0x80) != 0)
  {
LABEL_47:
    operator delete(v33[0]);
  }

  return isEspressoV2Mil;
}

void sub_1B508822C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<kaldi::quasar::CEFusedAcousticEncoder>::construct[abi:ne200100]<kaldi::quasar::CEFusedAcousticEncoder,std::string &,std::shared_ptr<kaldi::ModelInitializeContext>,BOOL,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v6 = *a4;
  *a4 = 0;
  *(a4 + 1) = 0;
  kaldi::quasar::CEFusedAcousticEncoder::CEFusedAcousticEncoder(a2, a3, &v6, *a5, *a6);
  if (*(&v6 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
  }
}

void sub_1B5088344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::CEFusedAcousticEncoder>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::shared_ptr<kaldi::ModelInitializeContext>,BOOL,BOOL,std::allocator<kaldi::quasar::CEFusedAcousticEncoder>,0>(void *a1, uint64_t a2, __int128 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D24238;
  std::allocator<kaldi::quasar::CEFusedAcousticEncoder>::construct[abi:ne200100]<kaldi::quasar::CEFusedAcousticEncoder,std::string &,std::shared_ptr<kaldi::ModelInitializeContext>,BOOL,BOOL>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void kaldi::quasar::CEFusedAcousticEncoder::CEFusedAcousticEncoder(kaldi::quasar::CEFusedAcousticEncoderConfig *a1, uint64_t a2)
{
  v4 = kaldi::quasar::CEFusedAcousticEncoderConfig::CEFusedAcousticEncoderConfig(a1);
  *(v4 + 536) = 0;
  *(v4 + 66) = 0;
  *(v4 + 32) = 0u;
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v5 + 7);
  if (v9 < 0)
  {
    p_p = __p;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(p_p, v7, v5);
  }

  strcpy(p_p + v5, ".config");
  kaldi::quasar::CEFusedAcousticEncoderConfig::Read(a1, a2, &__p);
}

void sub_1B5088664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *(v15 + 66);
  *(v15 + 66) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(v15 + 65);
  *(v15 + 65) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *v16;
  *v16 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  kaldi::quasar::CEFusedAcousticEncoderConfig::~CEFusedAcousticEncoderConfig(v15);
  _Unwind_Resume(a1);
}

kaldi::quasar::CEFusedAcousticEncoderConfig *kaldi::quasar::CEFusedAcousticEncoderConfig::CEFusedAcousticEncoderConfig(kaldi::quasar::CEFusedAcousticEncoderConfig *this)
{
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 336));
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 348));
  kaldi::quasar::InputShapeTemplate::InputShapeTemplate((this + 360));
  *(this + 97) = -1;
  *(this + 372) = -1;
  *(this + 380) = -1;
  *(this + 392) = xmmword_1B5B22810;
  *(this + 102) = -1;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 58) = 0xFFFFFFFF00000001;
  *(this + 118) = -1;
  *(this + 476) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  return this;
}

void sub_1B50887F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 287) < 0)
  {
    operator delete(*(v10 + 264));
  }

  if (*(v10 + 263) < 0)
  {
    operator delete(*(v10 + 240));
  }

  if (*(v10 + 239) < 0)
  {
    operator delete(*(v10 + 216));
  }

  if (*(v10 + 215) < 0)
  {
    operator delete(*(v10 + 192));
  }

  if (*(v10 + 191) < 0)
  {
    operator delete(*(v10 + 168));
  }

  if (*(v10 + 167) < 0)
  {
    operator delete(*(v10 + 144));
  }

  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

double kaldi::quasar::InputShapeTemplate::InputShapeTemplate(kaldi::quasar::InputShapeTemplate *this)
{
  *&result = 0x100000000;
  *this = 0x100000000;
  *(this + 2) = 2;
  return result;
}

void sub_1B5089E60(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    (*(*v3 + 8))(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::FixedConfigStream(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  kaldi::Input::Input(v8, a1, a2);
  v2 = kaldi::Input::Stream(v8);
  std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(&__p, *(v2 + *(*v2 - 24) + 40), 0);
  kaldi::Input::Close(v8);
  *&v9 = "</Engine>";
  *(&v9 + 1) = "";
  v12 = v10;
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v11 = v9;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(&v9, p_p, p_p + size);
  if (v6 != v5)
  {
    v13 = v11;
    v14 = v12;
    boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<char const*>>,boost::iterator_range<std::__wrap_iter<char *>>,boost::iterator_range<char const*>>(&__p, &v13, "\n</Engine>", "", v6, v5, "\n</Engine>", "");
  }

  operator new();
}

void sub_1B508A008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  MEMORY[0x1B8C85350](v16, 0x10B3C4097FF09DFLL);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::Input::~Input(&a16);
  _Unwind_Resume(a1);
}

BOOL std::string::__init_with_sentinel[abi:ne200100]<std::istreambuf_iterator<char>,std::istreambuf_iterator<char>>(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_1B508A190(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

unsigned __int8 *boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(unsigned __int8 **a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v3 = a1[1];
    if (*a1 != v3)
    {
      while (1)
      {
        if (a2 == a3)
        {
          v4 = *a1;
        }

        else
        {
          v4 = *a1;
          v5 = a2;
          do
          {
            if (*v5 != *v4)
            {
              break;
            }

            ++v5;
            ++v4;
            if (v5 == a3)
            {
              break;
            }
          }

          while (v4 != v3);
        }

        if (v4 == v3)
        {
          break;
        }

        if (++a2 == a3)
        {
          return a3;
        }
      }

      return a2;
    }
  }

  return a3;
}

uint64_t boost::algorithm::detail::find_format_all_impl2<std::string,boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>,boost::algorithm::detail::const_formatF<boost::iterator_range<char const*>>,boost::iterator_range<std::__wrap_iter<char *>>,boost::iterator_range<char const*>>(std::string *a1, unsigned __int8 **a2, char *a3, char *a4, unsigned __int8 *a5, unsigned __int8 *a6, char *a7, char *a8)
{
  v8 = a6;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  LODWORD(v10) = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  v11 = a1->__r_.__value_.__r.__words[0];
  if ((v10 & 0x80000000) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__r_.__value_.__r.__words[0];
  }

  if (a5 == a6)
  {
    v13 = v12;
  }

  else
  {
    v16 = a5;
    v13 = v12;
    v20 = v12;
    do
    {
      v12 = v8;
      v13 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v43, &v40, a1, v13, v20, v16);
      v21 = (v40.i64[1] + 8 * ((v42 + *(&v42 + 1)) >> 12));
      if (v41 == v40.i64[1])
      {
        v22 = 0;
      }

      else
      {
        v22 = *v21 + ((v42 + WORD4(v42)) & 0xFFF);
      }

      std::deque<char>::__insert_bidirectional[abi:ne200100]<char const*>(&v40, v21, v22, a7, a8, a8 - a7);
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v16 = boost::algorithm::detail::first_finderF<char const*,boost::algorithm::is_equal>::operator()<std::__wrap_iter<char *>>(a2, v12, &v24[size]);
      v8 = v25;
      v20 = v12;
      a7 = a3;
      a8 = a4;
    }

    while (v16 != v25);
    LOBYTE(v10) = *(&a1->__r_.__value_.__s + 23);
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  v10 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = v11;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a1->__r_.__value_.__l.__size_;
  }

  v27 = boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(&v43, &v40, a1, v13, v12, &v26[v10]);
  v28 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v28 & 0x80u) == 0)
  {
    v29 = a1;
  }

  else
  {
    v29 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v28 & 0x80u) != 0)
  {
    v28 = a1->__r_.__value_.__l.__size_;
  }

  v30 = v29 + v28;
  if (*(&v42 + 1))
  {
    v31 = (v42 >> 9) & 0x7FFFFFFFFFFFF8;
    if (v41 == v40.i64[1])
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v33 = v40.i64[1] + 8 * ((v42 + *(&v42 + 1)) >> 12);
    }

    else
    {
      v32 = ((v42 + *(&v42 + 1)) >> 9) & 0x7FFFFFFFFFFFF8;
      v33 = v40.i64[1] + v32;
      v34 = *(v40.i64[1] + v32) + ((v42 + *(&v42 + 1)) & 0xFFF);
      v35 = ((v42 + *(&v42 + 1)) & 0xFFF) + ((v32 - v31) << 9) - (v42 & 0xFFF);
      v36 = v34;
      v37 = (*(v40.i64[1] + v31) + (v42 & 0xFFF));
      if (v34 == v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v35;
      }
    }

    std::string::__insert_with_size<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(a1, v30, (v40.i64[1] + v31), v37, v33, v36, v38);
  }

  else
  {
    std::string::erase(a1, &v27[-v29], v30 - v27);
  }

  return std::deque<char>::~deque[abi:ne200100](&v40);
}

char *boost::algorithm::detail::process_segment_helper<false>::operator()<std::deque<char>,std::string,std::__wrap_iter<char *>>(int a1, int64x2_t *a2, int a3, char *__dst, char *__src, char *a6)
{
  v8 = __dst;
  v10 = a2[2].i64[1];
  if (v10)
  {
    v11 = __dst == __src;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = __dst + 1;
    do
    {
      *(v12 - 1) = *(*(a2->i64[1] + ((a2[2].i64[0] >> 9) & 0x7FFFFFFFFFFFF8)) + (a2[2].i64[0] & 0xFFF));
      a2[2] = vaddq_s64(a2[2], xmmword_1B5AE01E0);
      std::deque<char>::__maybe_remove_front_spare[abi:ne200100](a2, 1);
      v10 = a2[2].i64[1];
      ++v8;
      if (!v10)
      {
        break;
      }

      v11 = v12++ == __src;
    }

    while (!v11);
  }

  if (v10)
  {
    if (v8 != a6)
    {
      do
      {
        std::deque<char>::push_back(a2, v8);
        *v8++ = *(*(a2->i64[1] + ((a2[2].i64[0] >> 9) & 0x7FFFFFFFFFFFF8)) + (a2[2].i64[0] & 0xFFF));
        a2[2] = vaddq_s64(a2[2], xmmword_1B5AE01E0);
        std::deque<char>::__maybe_remove_front_spare[abi:ne200100](a2, 1);
      }

      while (v8 != a6);
      return a6;
    }
  }

  else
  {
    if (v8 == __src)
    {
      return a6;
    }

    v13 = a6 - __src;
    if (v13)
    {
      memmove(v8, __src, v13);
    }

    v8 += v13;
  }

  return v8;
}

void *std::deque<char>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = result[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (result[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 12; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<int *>::emplace_back<int *>(v2, v16);
    }
  }

  return result;
}

void sub_1B508A8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<char>::__insert_bidirectional[abi:ne200100]<char const*>(int64x2_t *a1, char *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 >> 12;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 >> 12));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + (a1[2].i64[0] & 0xFFF);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3 + ((a2 - v14) << 9) - (v15 + *a2) + *v14;
  }

  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
    v20 = ((v13 - v12) << 9) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      std::deque<char>::__add_back_capacity(a1, a6 - v22);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v21 = a1[2].i64[0] + v17;
    }

    v23 = (v12 + 8 * (v21 >> 12));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + (v21 & 0xFFF));
    }

    *&v68 = v12 + 8 * (v21 >> 12);
    *(&v68 + 1) = v24;
    v45 = v17 - v16;
    if (v17 - v16 < v6)
    {
      v46 = &a5[v17 - v16 - v6];
      if (v45 < v6 >> 1)
      {
        v46 = &a4[v45];
      }

      if (v46 != a5)
      {
        v47 = v46;
        do
        {
          *v24++ = *v47;
          if (&v24[-*v23] == 4096)
          {
            v48 = v23[1];
            ++v23;
            v24 = v48;
          }

          ++v47;
          ++a1[2].i64[1];
        }

        while (v47 != a5);
      }

      a5 = v46;
      v6 = v17 - v16;
    }

    if (v6)
    {
      v49 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](&v68, v6);
      v51 = v49;
      v52 = v50;
      v53 = *(&v68 + 1);
      if (*(&v68 + 1) != v50)
      {
        v54 = v49;
        v55 = v50;
        do
        {
          *v24++ = *v55;
          if (&v24[-*v23] == 4096)
          {
            v56 = v23[1];
            ++v23;
            v24 = v56;
          }

          if (&(++v55)[-*v54] == 4096)
          {
            v57 = v54[1];
            ++v54;
            v55 = v57;
          }

          ++a1[2].i64[1];
          v53 = *(&v68 + 1);
        }

        while (v55 != *(&v68 + 1));
      }

      if (v6 < v45)
      {
        v58 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator-[abi:ne200100](&v68, v45);
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>,0>(v58, v59, v51, v52, v68, *(&v68 + 1), &v69);
        v53 = *(&v70 + 1);
        v68 = v70;
      }

      if (a5 != a4)
      {
        v61 = (v68 - 8);
        v60 = *v68;
        while (1)
        {
          v62 = v53 - v60;
          if (a5 - a4 >= v62)
          {
            v63 = v62;
          }

          else
          {
            v63 = a5 - a4;
          }

          a5 -= v63;
          if (v63)
          {
            memmove((v53 - v63), a5, v63);
          }

          if (a5 == a4)
          {
            break;
          }

          v64 = *v61--;
          v60 = v64;
          v53 = v64 + 4096;
        }
      }
    }
  }

  else
  {
    if (a6 > v10)
    {
      std::deque<char>::__add_front_capacity(a1, a6 - v10);
      v10 = a1[2].u64[0];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v11 = v10 >> 12;
    }

    v18 = (v12 + 8 * v11);
    if (v13 == v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18 + (v10 & 0xFFF);
    }

    *&v68 = v12 + 8 * v11;
    *(&v68 + 1) = v19;
    if (v6 > v16)
    {
      v25 = &a4[v6 - v16];
      if (v16 < v6 >> 1)
      {
        v25 = &a5[-v16];
      }

      if (v25 != a4)
      {
        v26 = v25;
        do
        {
          if (v19 == *v18)
          {
            v27 = *--v18;
            v19 = v27 + 4096;
          }

          v28 = *--v26;
          *--v19 = v28;
          a1[2] = vaddq_s64(a1[2], xmmword_1B5AE1340);
        }

        while (v26 != a4);
      }

      a4 = v25;
      v6 = v16;
    }

    if (v6)
    {
      v30 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v68, v6);
      v31 = v29;
      v32 = *(&v68 + 1);
      if (*(&v68 + 1) != v29)
      {
        v33 = v30;
        v34 = v29;
        do
        {
          if (v19 == *v18)
          {
            v35 = *--v18;
            v19 = v35 + 4096;
          }

          if (v34 == *v33)
          {
            v36 = *--v33;
            v34 = (v36 + 4096);
          }

          v37 = *--v34;
          *--v19 = v37;
          a1[2] = vaddq_s64(a1[2], xmmword_1B5AE1340);
          v32 = *(&v68 + 1);
        }

        while (v34 != *(&v68 + 1));
      }

      if (v6 < v16)
      {
        v38 = std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v68, v16);
        v69 = v68;
        std::__for_each_segment[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>>(v30, v31, v38, v39, &v69);
        v32 = *(&v69 + 1);
        v68 = v69;
      }

      if (a4 != a5)
      {
        v41 = (v68 + 8);
        v40 = *v68;
        while (1)
        {
          v42 = v40 - v32 + 4096;
          if (a5 - a4 >= v42)
          {
            v43 = v42;
          }

          else
          {
            v43 = a5 - a4;
          }

          if (v43)
          {
            memmove(v32, a4, v43);
          }

          a4 += v43;
          if (a4 == a5)
          {
            break;
          }

          v44 = *v41++;
          v40 = v44;
          v32 = v44;
        }
      }
    }
  }

  v65 = a1->i64[1];
  if (a1[1].i64[0] == v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = *(v65 + 8 * (a1[2].i64[0] >> 12)) + (a1[2].i64[0] & 0xFFF);
  }

  *&v69 = v65 + 8 * (a1[2].i64[0] >> 12);
  *(&v69 + 1) = v66;
  return std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](&v69, v16);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__split_buffer<int *>::emplace_back<int *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *std::__deque_iterator<char,char *,char &,char **,long,4096l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - *result + a2;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
    }

    else
    {
      result += v4 >> 12;
    }
  }

  return result;
}

void *std::deque<char>::push_back(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 9) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<char>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 9) & 0x7FFFFFFFFFFFF8)) + (v7 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

uint64_t std::deque<char>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1000)
  {
    a2 = 1;
  }

  if (v2 < 0x2000)
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
    *(a1 + 32) -= 4096;
  }

  return v4 ^ 1u;
}

uint64_t std::string::__insert_with_size<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(std::string *a1, uint64_t a2, void *a3, std::string::value_type *a4, uint64_t a5, std::string::value_type *a6, std::string::size_type a7)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v10 = a1->__r_.__value_.__r.__words[0];
    v9 = a2 - a1->__r_.__value_.__r.__words[0];
    if (!a7)
    {
      return v10 + v9;
    }
  }

  else
  {
    v9 = a2 - a1;
    if (!a7)
    {
      v10 = a1;
      return v10 + v9;
    }
  }

  std::string::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(&__p, a3, a4, a5, a6);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v13 = std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, a7, v9, p_p, p_p + size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1B508B0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::string::__insert_from_safe_copy[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(std::string *this, std::string::size_type __n_add, std::string::size_type __n_copy, _BYTE *a4, _BYTE *a5)
{
  v9 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v11 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11 - size >= __n_add)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 22;
    v12 = this;
    if (22 - size >= __n_add)
    {
LABEL_7:
      v13 = size - __n_copy;
      if (size == __n_copy)
      {
        size = __n_copy;
      }

      else
      {
        memmove(v12 + __n_copy + __n_add, v12 + __n_copy, v13);
      }

      goto LABEL_10;
    }
  }

  std::string::__grow_by(this, v11, size + __n_add - v11, size, __n_copy, 0, __n_add);
  v9->__r_.__value_.__l.__size_ = size + __n_add;
  v12 = v9->__r_.__value_.__r.__words[0];
LABEL_10:
  v14 = size + __n_add;
  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9->__r_.__value_.__l.__size_ = v14;
  }

  else
  {
    *(&v9->__r_.__value_.__s + 23) = v14 & 0x7F;
  }

  v12->__r_.__value_.__s.__data_[v14] = 0;
  if (a5 != a4)
  {
    memmove(v12 + __n_copy, a4, a5 - a4);
  }

  if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = v9->__r_.__value_.__r.__words[0];
  }

  return v9 + __n_copy;
}

void std::string::__init_with_sentinel[abi:ne200100]<std::__deque_iterator<char,char *,char &,char **,long,4096l>,std::__deque_iterator<char,char *,char &,char **,long,4096l>>(std::string *this, void *a2, std::string::value_type *a3, uint64_t a4, std::string::value_type *a5)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      std::string::push_back(this, *v6++);
      if (&v6[-*a2] == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }
}

void sub_1B508B278(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

uint64_t std::deque<char>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1B508B500(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C850B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1B508B5D4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void kaldi::quasar::CreateComputeEngineConfig(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, ".bnns.mil");
  v2 = *(a1 + 23);
  v3 = *(a1 + 8);
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v73;
  if ((v73 & 0x80u) == 0)
  {
    v6 = v73;
  }

  else
  {
    v6 = v72;
  }

  v9 = v4 >= v6;
  v7 = v4 - v6;
  if (!v9)
  {
    v8 = 0;
    if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

  if ((v2 & 0x80) != 0)
  {
    if (v6 == -1 || v3 < v7)
    {
LABEL_175:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v3 - v7 >= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v3 - v7;
    }

    v12 = *a1;
  }

  else
  {
    v9 = v6 != -1 && v2 >= v7;
    if (!v9)
    {
      goto LABEL_175;
    }

    v10 = v2 - v7;
    if (v10 >= v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v10;
    }

    v12 = a1;
  }

  if ((v73 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v15 = memcmp((v12 + v7), p_p, v11);
  v8 = v11 == v6 && v15 == 0;
  if ((v5 & 0x80000000) == 0)
  {
LABEL_9:
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(__p);
  if (v8)
  {
LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(v74, "bnnsir");
    kaldi::quasar::MakeComputeEngineCachePath(a1, v74, &__p);
    if (v75 < 0)
    {
      operator delete(v74[0]);
    }

    operator new();
  }

LABEL_43:
  std::string::basic_string[abi:ne200100]<0>(&__p, ".mlmodelc");
  v17 = *(a1 + 23);
  v18 = *(a1 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v19 = *(a1 + 23);
  }

  else
  {
    v19 = *(a1 + 8);
  }

  v20 = v73;
  if ((v73 & 0x80u) == 0)
  {
    v21 = v73;
  }

  else
  {
    v21 = v72;
  }

  v9 = v19 >= v21;
  v22 = v19 - v21;
  if (!v9)
  {
    v23 = 0;
    if ((v73 & 0x80000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_77;
  }

  if ((v17 & 0x80) != 0)
  {
    if (v21 == -1 || v18 < v22)
    {
LABEL_176:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v18 - v22 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v18 - v22;
    }

    v26 = *a1;
  }

  else
  {
    if (v21 == -1)
    {
      goto LABEL_176;
    }

    v9 = v17 >= v22;
    v24 = v17 - v22;
    if (!v9)
    {
      goto LABEL_176;
    }

    if (v24 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    v26 = a1;
  }

  if ((v73 & 0x80u) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  v28 = memcmp((v26 + v22), v27, v25);
  v23 = v25 == v21 && v28 == 0;
  if ((v20 & 0x80000000) == 0)
  {
LABEL_51:
    if (v23)
    {
      goto LABEL_52;
    }

    goto LABEL_78;
  }

LABEL_77:
  operator delete(__p);
  if (v23)
  {
LABEL_52:
    operator new();
  }

LABEL_78:
  std::string::basic_string[abi:ne200100]<0>(&__p, ".espresso/code.nitroir");
  v30 = *(a1 + 23);
  v31 = *(a1 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v32 = *(a1 + 23);
  }

  else
  {
    v32 = *(a1 + 8);
  }

  v33 = v73;
  if ((v73 & 0x80u) == 0)
  {
    v34 = v73;
  }

  else
  {
    v34 = v72;
  }

  v9 = v32 >= v34;
  v35 = v32 - v34;
  if (!v9)
  {
    goto LABEL_85;
  }

  if ((v30 & 0x80) != 0)
  {
    if (v34 == -1 || v31 < v35)
    {
LABEL_177:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v31 - v35 >= v34)
    {
      v44 = v34;
    }

    else
    {
      v44 = v31 - v35;
    }

    v45 = *a1;
  }

  else
  {
    if (v34 == -1)
    {
      goto LABEL_177;
    }

    v9 = v30 >= v35;
    v43 = v30 - v35;
    if (!v9)
    {
      goto LABEL_177;
    }

    if (v43 >= v34)
    {
      v44 = v34;
    }

    else
    {
      v44 = v43;
    }

    v45 = a1;
  }

  if ((v73 & 0x80u) == 0)
  {
    v49 = &__p;
  }

  else
  {
    v49 = __p;
  }

  v50 = memcmp((v45 + v35), v49, v44);
  if (v44 == v34 && !v50)
  {
    v42 = 1;
    if ((v33 & 0x80) == 0)
    {
LABEL_95:
      if (v42)
      {
        goto LABEL_96;
      }

      goto LABEL_126;
    }

LABEL_125:
    operator delete(__p);
    if (v42)
    {
LABEL_96:
      operator new();
    }

LABEL_126:
    std::string::basic_string[abi:ne200100]<0>(&__p, ".bundle");
    v51 = *(a1 + 23);
    v52 = *(a1 + 8);
    if ((v51 & 0x80u) == 0)
    {
      v53 = *(a1 + 23);
    }

    else
    {
      v53 = *(a1 + 8);
    }

    v54 = v73;
    if ((v73 & 0x80u) == 0)
    {
      v55 = v73;
    }

    else
    {
      v55 = v72;
    }

    v9 = v53 >= v55;
    v56 = v53 - v55;
    if (!v9)
    {
      goto LABEL_133;
    }

    v58 = __p;
    if ((v51 & 0x80) != 0)
    {
      if (v55 == -1 || v52 < v56)
      {
LABEL_184:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v52 - v56 >= v55)
      {
        v60 = v55;
      }

      else
      {
        v60 = v52 - v56;
      }

      v61 = *a1;
    }

    else
    {
      if (v55 == -1)
      {
        goto LABEL_184;
      }

      v9 = v51 >= v56;
      v59 = v51 - v56;
      if (!v9)
      {
        goto LABEL_184;
      }

      if (v59 >= v55)
      {
        v60 = v55;
      }

      else
      {
        v60 = v59;
      }

      v61 = a1;
    }

    if ((v73 & 0x80u) == 0)
    {
      v65 = &__p;
    }

    else
    {
      v65 = __p;
    }

    v66 = memcmp((v61 + v56), v65, v60);
    if (v60 == v55 && !v66)
    {
      if (v54 < 0)
      {
        operator delete(v58);
      }

LABEL_136:
      operator new();
    }

LABEL_133:
    isEspressoV2Mil = kaldi::quasar::isEspressoV2Mil(a1);
    if (v73 < 0)
    {
      operator delete(__p);
    }

    if (!isEspressoV2Mil)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, ".pb");
      v67 = kaldi::EndsWith(a1, &__p);
      if (v73 < 0)
      {
        operator delete(__p);
      }

      if (v67)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "Compile with USE_TENSORFLOW=ON to use TensorFlow models");
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v70, *a1, *(a1 + 8));
        }

        else
        {
          v70 = *a1;
        }

        std::string::basic_string[abi:ne200100]<0>(&__p, ".pt|.zip");
        matched = kaldi::quasar::MatchSuffix(&v70, &__p);
        if (v73 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        if (matched)
        {
          std::operator<<[abi:ne200100]<std::char_traits<char>>(&__p, "Compile with USE_TORCH=ON to use Torch models");
        }

        else
        {
          v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "No ComputeEngineConfigItf for model file: ", 42);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v69, a1);
        }
      }

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    goto LABEL_136;
  }

LABEL_85:
  std::string::basic_string[abi:ne200100]<0>(v74, ".espresso.net");
  v36 = *(a1 + 23);
  v37 = *(a1 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v38 = *(a1 + 23);
  }

  else
  {
    v38 = *(a1 + 8);
  }

  v39 = v75;
  if ((v75 & 0x80u) == 0)
  {
    v40 = v75;
  }

  else
  {
    v40 = v74[1];
  }

  v9 = v38 >= v40;
  v41 = v38 - v40;
  if (!v9)
  {
    v42 = 0;
    if ((v75 & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if ((v36 & 0x80) != 0)
  {
    if (v40 == -1 || v37 < v41)
    {
LABEL_178:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v37 - v41 >= v40)
    {
      v47 = v40;
    }

    else
    {
      v47 = v37 - v41;
    }

    v48 = *a1;
  }

  else
  {
    if (v40 == -1)
    {
      goto LABEL_178;
    }

    v9 = v36 >= v41;
    v46 = v36 - v41;
    if (!v9)
    {
      goto LABEL_178;
    }

    if (v46 >= v40)
    {
      v47 = v40;
    }

    else
    {
      v47 = v46;
    }

    v48 = a1;
  }

  if ((v75 & 0x80u) == 0)
  {
    v62 = v74;
  }

  else
  {
    v62 = v74[0];
  }

  v63 = memcmp((v48 + v41), v62, v47);
  v42 = v47 == v40 && v63 == 0;
  if ((v39 & 0x80000000) == 0)
  {
LABEL_94:
    if ((v73 & 0x80) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_125;
  }

LABEL_93:
  operator delete(v74[0]);
  goto LABEL_94;
}

void sub_1B508BC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1B508BCDC()
{
  if (*(v0 - 65) < 0)
  {
    JUMPOUT(0x1B508BCECLL);
  }

  JUMPOUT(0x1B508BCF0);
}

BOOL kaldi::quasar::isEspressoV2Mil(uint64_t *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v31, ".bnns.mil");
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v32;
  if ((v32 & 0x80u) == 0)
  {
    v6 = v32;
  }

  else
  {
    v6 = v31[1];
  }

  v8 = v4 >= v6;
  v7 = v4 - v6;
  if (!v8)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x80) != 0)
  {
    if (v6 == -1 || v3 < v7)
    {
LABEL_73:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v3 - v7 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v3 - v7;
    }

    v11 = *a1;
  }

  else
  {
    v8 = v6 != -1 && v2 >= v7;
    if (!v8)
    {
      goto LABEL_73;
    }

    v9 = v2 - v7;
    if (v9 >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    v11 = a1;
  }

  if ((v32 & 0x80u) == 0)
  {
    v13 = v31;
  }

  else
  {
    v13 = v31[0];
  }

  v14 = memcmp(v11 + v7, v13, v10);
  if (v10 == v6 && v14 == 0)
  {
    v22 = 0;
    if ((v5 & 0x80) == 0)
    {
      return v22;
    }

    goto LABEL_45;
  }

LABEL_35:
  std::string::basic_string[abi:ne200100]<0>(__p, ".mil");
  v16 = *(a1 + 23);
  v17 = a1[1];
  if ((v16 & 0x80u) == 0)
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = a1[1];
  }

  v19 = v30;
  if ((v30 & 0x80u) == 0)
  {
    v20 = v30;
  }

  else
  {
    v20 = __p[1];
  }

  v8 = v18 >= v20;
  v21 = v18 - v20;
  if (!v8)
  {
    v22 = 0;
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if ((v16 & 0x80) != 0)
  {
    if (v20 == -1 || v17 < v21)
    {
LABEL_74:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v17 - v21 >= v20)
    {
      v25 = v20;
    }

    else
    {
      v25 = v17 - v21;
    }

    a1 = *a1;
  }

  else
  {
    if (v20 == -1)
    {
      goto LABEL_74;
    }

    v8 = v16 >= v21;
    v24 = v16 - v21;
    if (!v8)
    {
      goto LABEL_74;
    }

    if (v24 >= v20)
    {
      v25 = v20;
    }

    else
    {
      v25 = v24;
    }
  }

  if ((v30 & 0x80u) == 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  v27 = memcmp(a1 + v21, v26, v25);
  v22 = v25 == v20 && v27 == 0;
  if (v19 < 0)
  {
LABEL_43:
    operator delete(__p[0]);
  }

LABEL_44:
  if ((v32 & 0x80) != 0)
  {
LABEL_45:
    operator delete(v31[0]);
  }

  return v22;
}

void sub_1B508BEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F2D361F0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v3;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "CPU");
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

void *std::ws[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  MEMORY[0x1B8C84A90](&v12, a1, 1);
  if (v12 != 1)
  {
    return a1;
  }

  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v11, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v11);
  v3 = a1 + 5;
  while (1)
  {
    v4 = *(v3 + *(*a1 - 24));
    v5 = v4[3];
    if (v5 == v4[4])
    {
      break;
    }

    LOBYTE(v6) = *v5;
LABEL_6:
    if ((v6 & 0x80) != 0 || (*(&v2[1].~facet + (v6 & 0x7F)) & 0x4000) == 0)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v7 = *(v3 + *(*a1 - 24));
    v8 = v7[3];
    if (v8 == v7[4])
    {
      (*(*v7 + 80))(v7);
    }

    else
    {
      v7[3] = v8 + 1;
    }
  }

  v6 = (*(*v4 + 72))(v4);
  if (v6 != -1)
  {
    goto LABEL_6;
  }

  v9 = 2;
LABEL_12:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1B508C190(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B508C14CLL);
  }

  __cxa_rethrow();
}

void kaldi::SplitStringOnString(uint64_t a1, char *a2, void ***a3)
{
  std::vector<std::string>::clear[abi:ne200100](a3);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v8 = a2[23];
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = a2[23];
  }

  else
  {
    v10 = *(a2 + 1);
  }

  if (!v10)
  {
    v17 = 0;
    goto LABEL_26;
  }

  if (size >= v10)
  {
    v11 = p_str + size;
    v12 = *v9;
    v13 = p_str;
    do
    {
      v14 = size - v10;
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v12, v14 + 1);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (!memcmp(v15, v9, v10))
      {
        if (v16 != v11)
        {
          v17 = v16 - p_str;
          while (v17 != -1)
          {
LABEL_26:
            std::string::basic_string(&v33, &__str, 0, v17, &v35);
            kaldi::Trim(&v33);
            std::vector<std::string>::push_back[abi:ne200100](a3, &v33);
            v18 = a2[23];
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(a2 + 1);
            }

            v19 = std::string::erase(&__str, 0, v18 + v17);
            std::string::operator=(&__str, v19);
            v20 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &__str;
            }

            else
            {
              v21 = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v20 = __str.__r_.__value_.__l.__size_;
            }

            v22 = a2[23];
            if (v22 >= 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = *a2;
            }

            if (v22 >= 0)
            {
              v24 = a2[23];
            }

            else
            {
              v24 = *(a2 + 1);
            }

            if (v24)
            {
              v25 = v21 + v20;
              if (v20 >= v24)
              {
                v29 = *v23;
                v30 = v21;
                do
                {
                  v31 = v20 - v24;
                  if (v31 == -1)
                  {
                    break;
                  }

                  v32 = memchr(v30, v29, v31 + 1);
                  if (!v32)
                  {
                    break;
                  }

                  v26 = v32;
                  if (!memcmp(v32, v23, v24))
                  {
                    goto LABEL_42;
                  }

                  v30 = (v26 + 1);
                  v20 = v25 - (v26 + 1);
                }

                while (v20 >= v24);
              }

              v26 = v25;
LABEL_42:
              if (v26 == v25)
              {
                v17 = -1;
              }

              else
              {
                v17 = v26 - v21;
              }
            }

            else
            {
              v17 = 0;
            }

            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v33.__r_.__value_.__l.__data_);
            }
          }
        }

        break;
      }

      v13 = (v16 + 1);
      size = v11 - (v16 + 1);
    }

    while (size >= v10);
  }

  kaldi::Trim(&__str);
  v27 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = __str.__r_.__value_.__l.__size_;
  }

  if (v27)
  {
    std::vector<std::string>::push_back[abi:ne200100](a3, &__str);
    v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v28 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B508C4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *kaldi::Trim(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    v3 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v3 = this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  v5 = ~size;
  v6 = v3 + size - 1;
  do
  {
    if (v5 == -1)
    {
      goto LABEL_11;
    }

    v7 = *v6--;
    ++v5;
  }

  while (memchr(" \t\n\r\f\v", v7, 6uLL));
  if (!v5)
  {
LABEL_11:
    if ((v2 & 0x80000000) != 0)
    {
      v12 = this->__r_.__value_.__r.__words[0];
      v11 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = this + v2;
      v12 = this;
    }

    v13 = v11 - v12;
    v14 = this;
    goto LABEL_15;
  }

  result = std::string::erase(this, -v5, 0xFFFFFFFFFFFFFFFFLL);
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = this->__r_.__value_.__l.__size_;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v10 = this;
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return result;
    }
  }

  v15 = 0;
  while (1)
  {
    result = memchr(" \t\n\r\f\v", v10->__r_.__value_.__s.__data_[v15], 6uLL);
    if (!result)
    {
      break;
    }

    if (v9 == ++v15)
    {
      return result;
    }
  }

  if (v15 != -1)
  {
    v14 = this;
    v13 = v15;
LABEL_15:

    return std::string::erase(v14, 0, v13);
  }

  return result;
}

uint64_t kaldi::SplitStringToIntegers<long long>(uint64_t a1, const char *a2, int a3, void *a4)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (*v5)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    kaldi::SplitStringToVector(a1, a2, a3, &v13);
    std::vector<double>::resize(a4, 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3));
    v6 = v13;
    if (v14 == v13)
    {
LABEL_12:
      v11 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = (v6 + v7);
        if (*(v6 + v7 + 23) < 0)
        {
          v9 = *v9;
        }

        __endptr = 0;
        v10 = strtoll(v9, &__endptr, 10);
        if (__endptr == v9 || *__endptr)
        {
          break;
        }

        *(*a4 + 8 * v8++) = v10;
        v6 = v13;
        v7 += 24;
        if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3))
        {
          goto LABEL_12;
        }
      }

      v11 = 0;
      a4[1] = *a4;
    }

    __endptr = &v13;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__endptr);
  }

  else
  {
    a4[1] = *a4;
    return 1;
  }

  return v11;
}

void sub_1B508C758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

uint64_t std::vector<std::vector<long long>>::emplace_back<std::vector<long long> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = std::vector<std::vector<long long>>::__emplace_back_slow_path<std::vector<long long> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<long long>>::__construct_one_at_end[abi:ne200100]<std::vector<long long> const&>(a1, a2);
    v4 = v3 + 24;
  }

  *(a1 + 8) = v4;
  return v4 - 24;
}

uint64_t std::vector<std::vector<long long>>::__emplace_back_slow_path<std::vector<long long> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B508CA30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<long long>>::__construct_one_at_end[abi:ne200100]<std::vector<long long> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

_DWORD *kaldi::quasar::InputShapeTemplate::InputShapeTemplate(_DWORD *a1, uint64_t a2)
{
  *a1 = -1;
  a1[2] = -1;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  kaldi::SplitStringToVector(a2, ",", 1, &v45);
  v4 = v45;
  v5 = v46;
  v6 = v46 - v45;
  v7 = 0xAAAAAAAAAAAAAAABLL * v6;
  a1[2] = -1431655765 * v6;
  if (-1431655765 * v6 < 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Input shape template [", 22);
    v30 = *(a2 + 23);
    if (v30 >= 0)
    {
      v31 = a2;
    }

    else
    {
      v31 = *a2;
    }

    if (v30 >= 0)
    {
      v32 = *(a2 + 23);
    }

    else
    {
      v32 = *(a2 + 8);
    }

    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "] must include the R and C tokens.", 34);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  v8 = a1 + 1;
  if (v5 != v4)
  {
    v9 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v10 = *(v4 + 23);
      if (v10 < 0)
      {
        if (v4[1] != 1 || **v4 != 82)
        {
          if (v4[1] != 1 || **v4 != 67)
          {
            if (v4[1] != 1)
            {
              goto LABEL_25;
            }

            v11 = **v4;
LABEL_20:
            if (v11 != 49)
            {
LABEL_25:
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
              v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Input shape template [", 22);
              v15 = *(a2 + 23);
              if (v15 >= 0)
              {
                v16 = a2;
              }

              else
              {
                v16 = *a2;
              }

              if (v15 >= 0)
              {
                v17 = *(a2 + 23);
              }

              else
              {
                v17 = *(a2 + 8);
              }

              v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "] includes tokens other than R, C and 1.", 40);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
            }

            goto LABEL_21;
          }

LABEL_16:
          v12 = a1 + 1;
          if (*v8 != -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Input shape template [", 22);
            v25 = *(a2 + 23);
            if (v25 >= 0)
            {
              v26 = a2;
            }

            else
            {
              v26 = *a2;
            }

            if (v25 >= 0)
            {
              v27 = *(a2 + 23);
            }

            else
            {
              v27 = *(a2 + 8);
            }

            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "] includes multiple C tokens.", 29);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
          }

          goto LABEL_17;
        }
      }

      else
      {
        if (v10 != 1)
        {
          goto LABEL_25;
        }

        v11 = *v4;
        if (v11 == 67)
        {
          goto LABEL_16;
        }

        if (v11 != 82)
        {
          goto LABEL_20;
        }
      }

      v12 = a1;
      if (*a1 != -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Input shape template [", 22);
        v20 = *(a2 + 23);
        if (v20 >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        if (v20 >= 0)
        {
          v22 = *(a2 + 23);
        }

        else
        {
          v22 = *(a2 + 8);
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "] includes multiple R tokens.", 29);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
      }

LABEL_17:
      *v12 = v9;
LABEL_21:
      ++v9;
      v4 += 3;
    }

    while (v7 != v9);
  }

  if (*a1 == -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Input shape template [", 22);
    v35 = *(a2 + 23);
    if (v35 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = *a2;
    }

    if (v35 >= 0)
    {
      v37 = *(a2 + 23);
    }

    else
    {
      v37 = *(a2 + 8);
    }

    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "] must include the R token.", 27);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  if (*v8 == -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v44);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Input shape template [", 22);
    v40 = *(a2 + 23);
    if (v40 >= 0)
    {
      v41 = a2;
    }

    else
    {
      v41 = *a2;
    }

    if (v40 >= 0)
    {
      v42 = *(a2 + 23);
    }

    else
    {
      v42 = *(a2 + 8);
    }

    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v41, v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "] must include the C token.", 27);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v44);
  }

  v44[0] = &v45;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
  return a1;
}

void kaldi::quasar::EspressoV2NetworkConfig::Read(uint64_t a1, uint64_t *a2, char a3, const void **a4)
{
  memset(&__str, 0, sizeof(__str));
  v42[0] = 0;
  v42[1] = 0;
  v8 = a2 + 4;
  v9 = (a1 + 136);
  v43 = 0;
  memset(&v41, 0, sizeof(v41));
  while ((*(v8 + *(*a2 - 24)) & 2) == 0)
  {
    v39 = 0uLL;
    v40 = 0;
    kaldi::ReadToken(a2, a3, &v39);
    v10 = *(a4 + 23);
    if (v10 >= 0)
    {
      v11 = *(a4 + 23);
    }

    else
    {
      v11 = a4[1];
    }

    v12 = HIBYTE(v40);
    v13 = SHIBYTE(v40);
    if (!v11)
    {
      goto LABEL_17;
    }

    v14 = *(&v39 + 1);
    if (v40 >= 0)
    {
      v14 = HIBYTE(v40);
    }

    if (v14 == v11 && (v40 >= 0 ? (v15 = &v39) : (v15 = v39), v10 >= 0 ? (v16 = a4) : (v16 = *a4), !memcmp(v15, v16, v11)))
    {
      v33 = 0;
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_76;
      }

LABEL_79:
      operator delete(v39);
      if ((v33 & 1) == 0)
      {
        break;
      }
    }

    else
    {
LABEL_17:
      if (v13 < 0)
      {
        if (*(&v39 + 1) == 10 && *v39 == 0x6F6974636E75463CLL && *(v39 + 8) == 15982)
        {
          goto LABEL_64;
        }

        if (*(&v39 + 1) == 14 && *v39 == 0x5474757074754F3CLL && *(v39 + 6) == 0x3E726F736E655474)
        {
          goto LABEL_58;
        }

        if (*(&v39 + 1) == 18)
        {
          v22 = v39;
LABEL_50:
          v23 = *v22;
          v24 = *(v22 + 1);
          v25 = *(v22 + 8);
          v27 = v23 == 0x6361626C6C61463CLL && v24 == 0x726F6674616C506BLL && v25 == 15981;
          p_str = v9;
          if (!v27)
          {
            goto LABEL_87;
          }

LABEL_65:
          kaldi::ReadToken(a2, a3, p_str);
          goto LABEL_75;
        }

        if (*(&v39 + 1) != 17 || (*v39 == 0x657475706D6F433CLL ? (v20 = *(v39 + 8) == 0x6D726F6674616C50) : (v20 = 0), v20 ? (v21 = *(v39 + 16) == 62) : (v21 = 0), !v21))
        {
LABEL_87:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Unknown token ", 14);
          if (v40 >= 0)
          {
            v35 = &v39;
          }

          else
          {
            v35 = v39;
          }

          if (v40 >= 0)
          {
            v36 = HIBYTE(v40);
          }

          else
          {
            v36 = *(&v39 + 1);
          }

          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ", a typo in config file?", 24);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v38);
        }
      }

      else
      {
        if (v12 <= 16)
        {
          if (v12 != 10)
          {
            if (v12 != 14)
            {
              goto LABEL_87;
            }

            if (v39 != 0x5474757074754F3CLL || *(&v39 + 6) != 0x3E726F736E655474)
            {
              goto LABEL_87;
            }

LABEL_58:
            kaldi::ReadToken(a2, a3, v42);
            v38[0] = v42;
            v29 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 88, v42);
            std::string::operator=((v29 + 56), &__str);
            goto LABEL_75;
          }

          if (v39 != 0x6F6974636E75463CLL || WORD4(v39) != 15982)
          {
            goto LABEL_87;
          }

LABEL_64:
          p_str = &__str;
          goto LABEL_65;
        }

        if (v12 != 17)
        {
          if (v12 != 18)
          {
            goto LABEL_87;
          }

          v22 = &v39;
          goto LABEL_50;
        }

        if (v39 != 0x657475706D6F433CLL || *(&v39 + 1) != 0x6D726F6674616C50 || v40 != 62)
        {
          goto LABEL_87;
        }
      }

      kaldi::ReadToken(a2, a3, &v41);
      kaldi::SplitStringToVector(&v41, "|", 1, a1 + 112);
LABEL_75:
      std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
      v33 = 1;
      if (v40 < 0)
      {
        goto LABEL_79;
      }

LABEL_76:
      if ((v33 & 1) == 0)
      {
        break;
      }
    }
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B508D2A4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  if (*(v1 - 145) < 0)
  {
    operator delete(*(v1 - 168));
  }

  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(unsigned __int16 **this)
{
  IsUniversalIntelChip = kaldi::quasar::IsUniversalIntelChip(this);
  if (IsUniversalIntelChip)
  {
    goto LABEL_3;
  }

  IsVirtualMachine = kaldi::quasar::IsVirtualMachine(IsUniversalIntelChip);
  if (IsVirtualMachine)
  {
    goto LABEL_3;
  }

  v6 = this[14];
  v7 = this[15];
  if (v6 == v7)
  {
    goto LABEL_17;
  }

  do
  {
    v8 = *(v6 + 23);
    if (v8 < 0)
    {
      if (*(v6 + 1) != 3)
      {
        goto LABEL_15;
      }

      v9 = *v6;
    }

    else
    {
      v9 = v6;
      if (v8 != 3)
      {
        goto LABEL_15;
      }
    }

    v10 = *v9;
    v11 = *(v9 + 2);
    if (v10 == 20033 && v11 == 69)
    {
      goto LABEL_17;
    }

LABEL_15:
    v6 += 12;
  }

  while (v6 != v7);
  v6 = this[15];
LABEL_17:
  v13 = (this + 17);
  v14 = *(this + 159);
  if (v14 < 0)
  {
    if (this[18] != 3)
    {
      goto LABEL_26;
    }

    v13 = *v13;
  }

  else if (v14 != 3)
  {
    goto LABEL_26;
  }

  v15 = *v13;
  v16 = *(v13 + 2);
  if (v15 != 20547 || v16 != 85)
  {
LABEL_26:
    LOBYTE(v18) = 1;
    goto LABEL_27;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "QuasarForceBnnsFallback");
  IsVirtualMachine = kaldi::quasar::UserDefaultsBool(__p);
  v18 = IsVirtualMachine;
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Forced to use BNNS fallback by user default", 43);
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

LABEL_3:
    v4 = 1;
  }

  else
  {
LABEL_27:
    {
      if (IsVirtualMachine)
      {
        kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(void)const::isLowEnd = kaldi::quasar::isLowEndDevice(IsVirtualMachine);
      }
    }

    if (kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(void)const::isLowEnd != 1)
    {
      goto LABEL_38;
    }

    v19 = kaldi::quasar::ProcessName(IsVirtualMachine);
    v20 = 0;
    if (*(v19 + 23) < 0 && *(v19 + 8) == 50)
    {
      v21 = memcmp(*v19, "com.apple.SpeechRecognitionCore.speechrecognitiond", 0x32uLL);
      v20 = v21 == 0;
      if (!v21 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Disabling milIsANEReadyOnLowEnd for speechrecognitiond", 54);
        kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
        v20 = 1;
      }
    }

    v22 = v6 == v7 ? 1 : v18;
    if ((v22 & 1) == 0)
    {
      v4 = v20 | *(this + 33) ^ 1;
    }

    else
    {
LABEL_38:
      v4 = 0;
    }
  }

  return v4 & 1;
}

void kaldi::quasar::EspressoV2NetworkConfig::CreateComputeEngineAllowingFallback(kaldi::quasar::EspressoV2NetworkConfig *this)
{
  if (kaldi::quasar::EspressoV2NetworkConfig::MilShouldUseBnnsFallback(this))
  {
    kaldi::quasar::EspressoV2NetworkConfig::CreateBNNSFallbackEngine(this);
  }

  operator new();
}

uint64_t kaldi::quasar::IsVirtualMachine(kaldi::quasar *this)
{
  {
    kaldi::quasar::IsVirtualMachine(void)::ret = MGGetBoolAnswer();
  }

  return kaldi::quasar::IsVirtualMachine(void)::ret;
}

uint64_t kaldi::quasar::UserDefaultsBool(uint64_t *a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v5 = [v2 BOOLForKey:v4];

  return v5;
}

kaldi::quasar::EspressoV2Plan *kaldi::quasar::EspressoV2Plan::EspressoV2Plan(kaldi::quasar::EspressoV2Plan *this, const kaldi::quasar::EspressoV2NetworkConfig *a2, int a3)
{
  *this = &unk_1F2D36230;
  kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig((this + 8), a2);
  *(this + 27) = 0;
  *(this + 29) = 0;
  *(this + 28) = this + 232;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 264) = 0;
  kaldi::quasar::EspressoV2Plan::LoadNetwork(this, this + 48, a3, this + 21, a2 + 23);
  return this;
}

void sub_1B508D8F0(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v3, *v4);
  kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

kaldi::quasar::EspressoV2NetworkConfig *kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig(kaldi::quasar::EspressoV2NetworkConfig *this, const kaldi::quasar::EspressoV2NetworkConfig *a2)
{
  *this = &unk_1F2D13870;
  *(this + 8) = *(a2 + 8);
  *(this + 2) = *(a2 + 2);
  v4 = *(a2 + 3);
  *(this + 3) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 16) = *(a2 + 16);
  *this = &unk_1F2D361F0;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 64, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  std::map<std::string,std::string>::map[abi:ne200100](this + 11, a2 + 11);
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 112, *(a2 + 14), *(a2 + 15), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v6 = *(a2 + 136);
    *(this + 19) = *(a2 + 19);
    *(this + 136) = v6;
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 160, *(a2 + 20), *(a2 + 21), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 21) - *(a2 + 20)) >> 3));
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 184, *(a2 + 23), *(a2 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 23)) >> 3));
  return this;
}

void sub_1B508DAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2 + 88, *(v2 + 96));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  kaldi::quasar::ComputeEngineConfigItf::~ComputeEngineConfigItf(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2Plan::LoadNetwork(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *(a1 + 24);
  if (v10)
  {
    (*(*v10 + 16))(v10, a2);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ".mil");
  v11 = *(a2 + 23);
  v12 = *(a2 + 8);
  if ((v11 & 0x80u) == 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = v28;
  if ((v28 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = __p[1];
  }

  v18 = v13 >= v15;
  v16 = v13 - v15;
  if (!v18)
  {
    v17 = 0;
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v11 & 0x80) != 0)
  {
    if (v15 == -1 || v12 < v16)
    {
LABEL_48:
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (v12 - v16 >= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v12 - v16;
    }

    v21 = *a2;
  }

  else
  {
    v18 = v15 != -1 && v11 >= v16;
    if (!v18)
    {
      goto LABEL_48;
    }

    v19 = v11 - v16;
    if (v19 >= v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v19;
    }

    v21 = a2;
  }

  if ((v28 & 0x80u) == 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = memcmp((v21 + v16), v24, v20);
  v17 = v20 == v15 && v25 == 0;
  if (v14 < 0)
  {
LABEL_11:
    operator delete(__p[0]);
  }

LABEL_12:
  if (v17)
  {
    kaldi::quasar::EspressoV2Plan::LoadNetworkMil(a1, a2, a3, a4, a5);
  }

  else
  {
    kaldi::quasar::EspressoV2Plan::LoadNetworkBundle(a1, a2, a4);
  }

  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))(result, a2);
  }

  return result;
}

void EARModelInitializeContext::didStartModelInitializing(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = EARLogger::QuasarOSLogger(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_INFO, "Starting to initialize model, fileName=%s", &v11, 0xCu);
    }

    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    v10 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v8, v9}];
    [(EARLogger *)v4 didStartModelInitializing:v10];
  }
}

uint64_t kaldi::TransitionModel::TupleToTransitionState(kaldi::TransitionModel *this, int a2, int a3, int a4, int a5)
{
  v5 = *(this + 9);
  v6 = *(this + 10);
  if (v6 == v5)
  {
    v8 = *(this + 10);
  }

  else
  {
    v7 = (v6 - v5) >> 4;
    v8 = *(this + 9);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[16 * (v7 >> 1)];
      if (*v10 < a2 || *v10 <= a2 && ((v11 = *(v10 + 1), v11 < a3) || v11 <= a3 && ((v12 = *(v10 + 2), v12 < a4) || v12 <= a4 && *(v10 + 3) < a5)))
      {
        v9 = v7 + ~v9;
        v8 = v10 + 16;
      }

      v7 = v9;
    }

    while (v9);
  }

  if (v6 == v8 || *v8 != a2 || *(v8 + 1) != a3 || *(v8 + 2) != a4 || *(v8 + 3) != a5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "TransitionModel::TupleToTransitionState, tuple not found.", 57);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, " (incompatible tree and model?)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  return ((v8 - v5) >> 4) + 1;
}

uint64_t quasar::SymbolMap::SymbolMapQuasarImpl::Find(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    while (strcmp((v7 + *(v8 + 4 * v6)), v4))
    {
      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = *(a1 + 8);
    v10 = fst::internal::DenseSymbolMap::Find(v9 + 5, a2);
    if (v10 == -1)
    {
      return -1;
    }

    v11 = v9[4];
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (v13 < 0 == v12 && (v10 = *(v9[15] + 8 * v13), v10 == -1))
    {
      return -1;
    }

    else
    {
      return v10 + *(a1 + 16);
    }
  }

  return v6;
}

void quasar::Decoder::init(uint64_t a1, quasar::SystemConfig *this)
{
  if (!*(a1 + 408))
  {
    *(a1 + 32) = quasar::SystemConfig::getConfigFileVersion(this);
    SpeechModelInfo = quasar::SystemConfig::getSpeechModelInfo(this);
    quasar::SpeechModelInfo::operator=(a1 + 64, SpeechModelInfo);
    quasar::SystemConfig::getLmeCompatibilityKey(this, __p);
    std::string::operator=((a1 + 344), __p);
    if (SBYTE7(v15) < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarG2PFactory::isPronGuesserWordpiece(this, v5);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameters for ", 15);
  v9 = *(a1 + 8);
  v8 = a1 + 8;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v11, v12);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, " have already been registered.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B508E2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::finishInit(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  v136[4] = *MEMORY[0x1E69E9840];
  v2 = (this + 648);
  v3 = *(this + 671);
  if (v3 < 0)
  {
    v3 = *(this + 82);
  }

  v89 = (this + 1048);
  if (!v3)
  {
    if (quasar::gLogLevel >= 4)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Using regular grammar, need to negate in memory: ", 49);
      v25 = *(this + 695);
      if (v25 >= 0)
      {
        v26 = this + 672;
      }

      else
      {
        v26 = *(this + 84);
      }

      if (v25 >= 0)
      {
        v27 = *(this + 695);
      }

      else
      {
        v27 = *(this + 85);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v117);
    }

    v28 = fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read(this + 672);
    fst::ApplyProbabilityScale<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v28, -1.0);
    fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(v28);
    std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::reset[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(this + 1064, v28);
  }

  if (quasar::gLogLevel >= 4)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Using pre-inverted grammar: ", 28);
    v5 = *(this + 671);
    if (v5 >= 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = *(this + 81);
    }

    if (v5 >= 0)
    {
      v7 = *(this + 671);
    }

    else
    {
      v7 = *(this + 82);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v117);
  }

  quasar::ModelLoader::requestEmbeddedMlock(*(this + 47), v2, &v117);
  v8 = *(&v117 + 1);
  v9 = *(this + 47);
  v116 = v117;
  if (*(&v117 + 1))
  {
    atomic_fetch_add_explicit((*(&v117 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  quasar::ModelLoader::readFstNetwork(v9, v2, &v116, &v117);
  v10 = v117;
  v117 = 0uLL;
  v11 = *(this + 134);
  v89[1] = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (*(&v117 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v117 + 1));
    }
  }

  if (*(&v116 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v116 + 1));
  }

  *&v117 = v2;
  v12 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1080, v2);
  v13 = *(this + 133);
  v14 = *(this + 134);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(v12 + 64);
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((*(**(v89 + 2) + 64))(*(v89 + 2), 0x10000000, 0) != 0x10000000)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v117, "gInvFst: input label is not sorted!");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  quasar::ModelLoader::requestEmbeddedMlock(*(this + 47), this + 78, &v117);
  v16 = *(&v117 + 1);
  v17 = *(this + 47);
  v115 = v117;
  if (*(&v117 + 1))
  {
    atomic_fetch_add_explicit((*(&v117 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v88 = v16;
  quasar::ModelLoader::readFstNetwork(v17, this + 624, &v115, &v117);
  v18 = v117;
  v117 = 0uLL;
  v19 = *(this + 132);
  *v89 = v18;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    if (*(&v117 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v117 + 1));
    }
  }

  if (*(&v115 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v115 + 1));
  }

  *&v117 = this + 624;
  v20 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 1080, this + 78);
  v21 = *(this + 131);
  v22 = *(this + 132);
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(v20 + 64);
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if ((*(this + 2308) & 1) != 0 || *(this + 448) == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "State access recording is enabled. This will slow decoding, so disregard performance.", 85);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v117);
    }

    std::allocate_shared[abi:ne200100]<quasar::StateAccessRecordingFst,std::allocator<quasar::StateAccessRecordingFst>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,0>();
  }

  if ((*(this + 719) & 0x8000000000000000) != 0)
  {
    if (*(this + 88))
    {
      goto LABEL_58;
    }
  }

  else if (*(this + 719))
  {
    goto LABEL_58;
  }

  v29 = *(this + 743);
  if (v29 < 0)
  {
    v29 = *(this + 91);
  }

  if (!v29)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "No BigG FST or NNLM specified. Hint: This is a BigLm decoder.", 61);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

LABEL_58:
  v112 = 0;
  v113 = 0;
  v114 = 0;
  kaldi::SplitStringToVector(this + 29, ",", 1, &v112);
  v111 = 1;
  v136[0] = &unk_1F2D14778;
  v136[1] = this;
  v136[2] = &v111;
  v136[3] = v136;
  v30 = v112;
  if (v112 != v113)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 52));
    std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__value_func[abi:ne200100](v135, v136);
    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::loadMasterLmOrCreatePlaceholder(v30, &__p, MultiChainMultiAudioBuffer, v135);
  }

  v109 = 0;
  v110 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  kaldi::SplitStringToVector(this + 30, ",", 1, &v108);
  kaldi::SplitStringToVector(this + 31, ",", 1, &v105);
  if (v105 != v106 && v109 - v108 != v106 - v105)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Invalid number of NNLMs ", 24);
    v77 = MEMORY[0x1B8C84C30](v76, 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3));
    v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " and configs ", 13);
    MEMORY[0x1B8C84C30](v78, 0xAAAAAAAAAAAAAAABLL * ((v106 - v105) >> 3));
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  v33 = *(this + 839);
  if (v33 < 0)
  {
    v33 = *(this + 103);
  }

  if (v33)
  {
    if ((kaldi::SplitStringToFloats<float>(this + 816, ",", 1, this + 47) & 1) == 0)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Could not read the NNLM normalization factor info", 49);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
    }

    v35 = v108;
    v34 = v109;
    if (0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3) != (*(this + 142) - *(this + 141)) >> 2)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "the number of NNLM files and the number of NNLM norm factors do not match", 73);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
    }
  }

  else
  {
    LODWORD(v117) = 0;
    std::vector<float>::assign(this + 141, 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3), &v117, v32);
    v35 = v108;
    v34 = v109;
  }

  if (v34 != v35)
  {
    v36 = **(this + 141);
    __p.__r_.__value_.__s.__data_[0] = 0;
    v95 = 0;
    if (v106 != v105)
    {
      std::optional<std::string>::operator=[abi:ne200100]<std::string&,void>(&__p, v105);
    }

    std::string::basic_string[abi:ne200100]<0>(&v104, "");
    quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*(this + 52));
    v101 = this;
    v102 = v36;
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v103, &__p);
    v134 = 0;
    operator new();
  }

  memset(&v104, 0, sizeof(v104));
  memset(&v100, 0, sizeof(v100));
  if ((kaldi::SplitStringToFloats<float>(this + 768, ",", 1, &v104) & 1) == 0)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Could not read FST LM interpolation weight info", 47);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  if ((*(this + 280) - *(this + 279)) >> 4 != v104.__end_ - v104.__begin_)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "The number of big FST LMs and the number of weights mismatch", 60);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  if ((kaldi::SplitStringToFloats<float>(this + 792, ",", 1, &v100) & 1) == 0)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Could not read NN LM interpolation weight info", 46);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  if ((*(this + 286) - *(this + 285)) >> 4 != v100.__end_ - v100.__begin_)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "The number of big NN LMs and the number of weights mismatch", 59);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  v37 = *(this + 138);
  *(this + 139) = v37;
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 1104, v37, v104.__begin_, v104.__end_, v104.__end_ - v104.__begin_);
  std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 1104, *(this + 139), v100.__begin_, v100.__end_, v100.__end_ - v100.__begin_);
  v38 = *(this + 138);
  v39 = *(this + 139);
  if (v38 == v39)
  {
    LODWORD(v117) = 1065353216;
    std::vector<float>::push_back[abi:ne200100](this + 138, &v117);
    v39 = *(this + 139);
    v38 = *(this + 138);
  }

  if (v39 - v38 == 4 && *v38 != 1.0)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Language model weight must be 1 when using a single LM", 54);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  quasar::QsrTextSymbolTable::init(*(this + 273), (this + 32), 0, *(this + 449), 1);
  v40 = quasar::QsrTextSymbolTable::Find(*(this + 273), "<?>");
  v41 = v40;
  if (v40 != -1)
  {
    *(this + 135) = v40;
    v42 = *(this + 328);
    if (v42 && v40 != v42 && quasar::gLogLevel >= 5)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Silence label is set to ", 24);
      v44 = MEMORY[0x1B8C84C00](v43, *(this + 328));
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " but does not match ", 20);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the auto-determined silence label ", 34);
      v47 = MEMORY[0x1B8C84C60](v46, v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ". Will use latter.", 18);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v117);
    }

    *(this + 328) = v41;
  }

  if ((*(this + 1175) & 0x8000000000000000) != 0)
  {
    if (!*(this + 145))
    {
      goto LABEL_114;
    }
  }

  else if (!*(this + 1175))
  {
    goto LABEL_114;
  }

  quasar::ModelLoader::readSymbolTable(*(this + 47), this + 1152, 4, 0, &v117);
  v48 = v117;
  v117 = 0uLL;
  v49 = *(this + 148);
  v89[8] = v48;
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    if (*(&v117 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v117 + 1));
    }
  }

  if ((*(this + 540) & 0x80000000) == 0)
  {
    (*(**(v89 + 16) + 88))(&v117);
    if (SBYTE7(v118) < 0)
    {
      if (*(&v117 + 1) != 7)
      {
        operator delete(v117);
LABEL_113:
        *(this + 540) = -1;
        goto LABEL_114;
      }

      v52 = *v117 != 1634492988 || *(v117 + 3) != 1047228001;
      operator delete(v117);
      if (v52)
      {
        goto LABEL_113;
      }
    }

    else
    {
      if (SBYTE7(v118) != 7)
      {
        goto LABEL_113;
      }

      if (v117 != 1634492988 || *(&v117 + 3) != 1047228001)
      {
        goto LABEL_113;
      }
    }
  }

LABEL_114:
  memset(&v99, 0, sizeof(v99));
  if ((*(this + 1239) & 0x8000000000000000) != 0)
  {
    if (*(this + 153))
    {
      goto LABEL_116;
    }
  }

  else if (*(this + 1239))
  {
LABEL_116:
    LOBYTE(v90) = 0;
    kaldi::Input::Input(&v91, this + 1216, &v90);
    memset(&__p, 0, sizeof(__p));
    v53 = kaldi::Input::Stream(&v91);
    std::ios_base::getloc((v53 + *(*v53 - 24)));
    v54 = std::locale::use_facet(&v117, MEMORY[0x1E69E5318]);
    v55 = (v54->__vftable[2].~facet_0)(v54, 10);
    std::locale::~locale(&v117);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v53, &__p, v55);
    if ((kaldi::SplitStringToIntegers<int>(&__p, ":", 1, &v99) & 1) == 0)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Invalid silence-phones string ", 30);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, p_p, size);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    kaldi::Input::~Input(&v91);
    goto LABEL_122;
  }

  if ((kaldi::SplitStringToIntegers<int>(this + 1192, ",", 0, &v99) & 1) == 0)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Invalid silence-phones string ", 30);
    v83 = *(this + 1215);
    if (v83 >= 0)
    {
      v84 = this + 1192;
    }

    else
    {
      v84 = *(this + 149);
    }

    if (v83 >= 0)
    {
      v85 = *(this + 1215);
    }

    else
    {
      v85 = *(this + 150);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, v84, v85);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

LABEL_122:
  if (v99.__begin_ == v99.__end_)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "No silence phones given!", 24);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  kaldi::SilencePhoneSet::SilencePhoneSet(&v117, &v99);
  *(this + 310) = v117;
  *(this + 156) = *(&v117 + 1);
  *(this + 628) = v118;
  std::vector<BOOL>::operator=(this + 1264, &v118 + 8);
  if ((this + 1240) != &v117)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 161, v120, *(&v120 + 1), (*(&v120 + 1) - v120) >> 2);
  }

  if (v120)
  {
    *(&v120 + 1) = v120;
    operator delete(v120);
  }

  if (*(&v118 + 1))
  {
    operator delete(*(&v118 + 1));
  }

  if ((*(this + 1351) & 0x8000000000000000) != 0)
  {
    if (!*(this + 167))
    {
      goto LABEL_136;
    }
  }

  else if (!*(this + 1351))
  {
    goto LABEL_136;
  }

  quasar::ModelLoader::readWordBoundaryInfo(*(this + 47), this + 328, this + 1328, this + 1352, &v117);
  v56 = v117;
  v117 = 0uLL;
  v57 = *(this + 173);
  *(this + 86) = v56;
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    if (*(&v117 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v117 + 1));
    }
  }

LABEL_136:
  if ((*(this + 1423) & 0x8000000000000000) != 0)
  {
    if (!*(this + 176))
    {
      goto LABEL_145;
    }
  }

  else if (!*(this + 1423))
  {
    goto LABEL_145;
  }

  if ((*(this + 1447) & 0x8000000000000000) != 0)
  {
    if (!*(this + 179))
    {
      goto LABEL_145;
    }

LABEL_144:
    std::allocate_shared[abi:ne200100]<quasar::LRStreamingConfidence,std::allocator<quasar::LRStreamingConfidence>,std::string &,std::string &,0>();
  }

  if (*(this + 1447))
  {
    goto LABEL_144;
  }

LABEL_145:
  quasar::result_handler::Range::Range(&v117, 31, 0);
  if (quasar::SystemConfig::Version::operator<(this + 8, &v117))
  {
    v58 = *(this + 1351);
    if (v58 < 0)
    {
      v58 = *(this + 167);
    }

    *(this + 1392) = v58 == 0;
  }

  if ((*(this + 1487) & 0x8000000000000000) != 0)
  {
    if (!*(this + 184))
    {
      goto LABEL_154;
    }

LABEL_153:
    operator new();
  }

  if (*(this + 1487))
  {
    goto LABEL_153;
  }

LABEL_154:
  quasar::EndPointDecoderConfig::init(this + 1504);
  quasar::EndPointDecoderConfig::init(this + 1808);
  if ((*(this + 1543) & 0x8000000000000000) != 0)
  {
    if (*(this + 191))
    {
      goto LABEL_156;
    }
  }

  else if (*(this + 1543))
  {
LABEL_156:
    v59 = 1;
    goto LABEL_161;
  }

  v60 = *(this + 1847);
  if (v60 < 0)
  {
    v60 = *(this + 229);
  }

  v59 = v60 != 0;
LABEL_161:
  if (!*(this + 172))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    if (v59)
    {
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ERROR 1: Cannot compute pause counts - word boundary info is missing", 68);
      std::ios_base::getloc((v61 + *(*v61 - 24)));
      v62 = std::locale::use_facet(&v117, MEMORY[0x1E69E5318]);
      (v62->__vftable[2].~facet_0)(v62, 10);
      std::locale::~locale(&v117);
      std::ostream::put();
      std::ostream::flush();
    }

    if ((*(this + 1392) & 1) == 0)
    {
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ERROR 2: autocomplete-partial-result is false (default), but word-boundary-int-file is missing.\nOption 1: Set autocomplete-partial-result=true. This is *usually* done only for 'srch' and 'srch'-variant (WebSearch) decoder chains. This is required if the model doesn't have word-boundary-int-file.\nOption 2: Keep using autocomplete-partial-result=false, but add a word-boundary-int-file. This is *usually* done for all other tasks.", 430);
      std::ios_base::getloc((v63 + *(*v63 - 24)));
      v64 = std::locale::use_facet(&v117, MEMORY[0x1E69E5318]);
      (v64->__vftable[2].~facet_0)(v64, 10);
      std::locale::~locale(&v117);
      std::ostream::put();
      std::ostream::flush();
    }

    std::stringbuf::str();
    if (v93 < 0)
    {
      if (v92)
      {
        goto LABEL_244;
      }

      operator delete(v91);
    }

    else if (v93)
    {
LABEL_244:
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      if ((v93 & 0x80u) == 0)
      {
        v86 = &v91;
      }

      else
      {
        v86 = v91;
      }

      if ((v93 & 0x80u) == 0)
      {
        v87 = v93;
      }

      else
      {
        v87 = v92;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, v86, v87);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
    }

    __p.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54E8];
    *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    __p.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
    if (v97 < 0)
    {
      operator delete(v96);
    }

    __p.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&__p.__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    MEMORY[0x1B8C85200](&v98);
  }

  quasar::result_handler::Range::Range(&v117, 31, 0);
  if (quasar::SystemConfig::Version::operator>=(this + 8, &v117) && v59 && *(this + 1392) == 1)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "needPauseCounts=true and autocomplete-partial-result=true is not supported yet.", 79);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
  }

  if (*(this + 1970) == 1 && !*(this + 172))
  {
    *(this + 1970) = 0;
    if (quasar::gLogLevel >= 4)
    {
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v117 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Eager disabled because word-boundary-int-file is missing.", 57);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v117);
    }
  }

  if (*(this + 1496) == 1)
  {
    v65 = *(this + 54);
    v67 = *(v65 + 64);
    v66 = *(v65 + 72);
    if (v67 == v66)
    {
      if (quasar::gLogLevel >= 4)
      {
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v117 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "VoiceTriggerPhrase not set. This could lead to wrong endpointing that clips any payload after Hey Siri", 104);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v117);
      }
    }

    else
    {
      do
      {
        memset(&__p, 0, sizeof(__p));
        std::string::basic_string[abi:ne200100]<0>(&v117, " ");
        quasar::splitAndTrimNoEmpty(v67, &v117, &v91);
        if (SBYTE7(v118) < 0)
        {
          operator delete(v117);
        }

        v68 = v91;
        v69 = v92;
        while (v68 != v69)
        {
          v90 = quasar::QsrTextSymbolTable::Find(*(this + 273), v68);
          if (v90 == -1)
          {
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v117 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "VoiceTrigger phrase word ", 26);
            v72 = *(v68 + 23);
            if (v72 >= 0)
            {
              v73 = v68;
            }

            else
            {
              v73 = *v68;
            }

            if (v72 >= 0)
            {
              v74 = *(v68 + 23);
            }

            else
            {
              v74 = v68[1];
            }

            v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " not found in symbol table.", 28);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v117);
          }

          std::vector<int>::push_back[abi:ne200100](&__p.__r_.__value_.__l.__data_, &v90);
          v68 += 3;
        }

        if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
        {
          std::vector<std::vector<int>>::push_back[abi:ne200100](this + 2480, &__p);
        }

        *&v117 = &v91;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v117);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ++v67;
      }

      while (v67 != v66);
    }
  }

  if (*(this + 840) == 1)
  {
    quasar::OnlineLatticeBiglmFasterDecoder::loadDynamicClassTagDict(this);
  }

  v70 = quasar::gLogLevel;
  if (quasar::gLogLevel > 4)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Decoding beam: ", 15);
    std::ostream::operator<<();
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v117);
    v70 = quasar::gLogLevel;
  }

  if (v70 >= 4)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v117 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v117);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v117, "Finished initializing OnlineLatticeBiglmFasterDecoder.", 54);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v117);
  }

  if (v99.__begin_)
  {
    v99.__end_ = v99.__begin_;
    operator delete(v99.__begin_);
  }

  if (v100.__begin_)
  {
    v100.__end_ = v100.__begin_;
    operator delete(v100.__begin_);
  }

  if (v104.__begin_)
  {
    v104.__end_ = v104.__begin_;
    operator delete(v104.__begin_);
  }

  *&v117 = &v105;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v117);
  *&v117 = &v108;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v117);
  std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::~__value_func[abi:ne200100](v136);
  *&v117 = &v112;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v117);
  if (v88)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v88);
  }
}