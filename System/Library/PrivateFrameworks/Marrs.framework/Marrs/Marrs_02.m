void sub_2227CEDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38)
{
  if (v38)
  {
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227CEF2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t get_correction_type(float *a1, const std::string *a2)
{
  std::istringstream::basic_istringstream[abi:ne200100](v6, a2);
  v5 = 0.0;
  MEMORY[0x223DC20B0](v6, &v5);
  if (1.0 - *a1 <= v5)
  {
    v3 = 0;
  }

  else if (a1[2] <= a1[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v6[0] = *MEMORY[0x277D82820];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::istream::~istream();
  MEMORY[0x223DC2270](&v10);
  return v3;
}

void sub_2227CF110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t toQRResponse(uint64_t result, uint64_t a2)
{
  v2 = result;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 56) = 4;
  memset(&__p, 0, sizeof(__p));
  *(result + 24) = 0;
  v3 = vcvtq_f64_f32(*(a2 + 4));
  *(result + 32) = vextq_s8(v3, v3, 8uLL);
  *(result + 48) = *a2;
  v4 = *(a2 + 40);
  switch(v4)
  {
    case 0:
      v5 = 1;
      goto LABEL_7;
    case 1:
      *(result + 24) = 2;
      v7 = v3.i64[0];
      v8 = 2;
      std::string::operator=(&__p, (a2 + 48));
      v9 = v2;
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRHypothesis>>(1uLL);
    case 2:
      v5 = 3;
LABEL_7:
      *(result + 24) = v5;
      break;
  }

  return result;
}

void sub_2227CF2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__split_buffer<marrs::qr::orchestration::QRHypothesis>::~__split_buffer(&a21);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRHypothesis>,marrs::qr::orchestration::QRHypothesis*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v8 = *(v6 + 40);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 40) = v8;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 56;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::qr::orchestration::QRHypothesis>,marrs::qr::orchestration::QRHypothesis*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__split_buffer<marrs::qr::orchestration::QRHypothesis>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 56;
      *(a1 + 16) = v2 - 56;
      if (*(v2 - 17) < 0)
      {
        operator delete(*(v2 - 40));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void removeTriggerTokens(void *a1, uint64_t *a2, const void **a3, const void **a4)
{
  v31 = 0uLL;
  v32 = 0;
  if (a3 == a4)
  {
LABEL_52:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(a1, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 5));
    goto LABEL_57;
  }

  v5 = a4;
  v6 = a3;
  while (1)
  {
    memset(&v30, 0, sizeof(v30));
    v7 = *a2;
    if (a2[1] != *a2)
    {
      break;
    }

LABEL_51:
    v6 += 3;
    if (v6 == v5)
    {
      goto LABEL_52;
    }
  }

  v8 = 0;
  v9 = 160;
  while (1)
  {
    v10 = v7 + 160 * v8;
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    std::string::append(&v30, v12, v13);
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    v15 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    v16 = *(v6 + 23);
    if ((v16 & 0x8000000000000000) != 0)
    {
      v16 = v6[1];
    }

    if (size > v16)
    {
      goto LABEL_49;
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v30;
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = (&v28 + HIBYTE(v28.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v17 = (v28.__r_.__value_.__r.__words[0] + v28.__r_.__value_.__l.__size_);
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v28;
    }

    else
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    while (v18 != v17)
    {
      v18->__r_.__value_.__s.__data_[0] = __tolower(v18->__r_.__value_.__s.__data_[0]);
      v18 = (v18 + 1);
    }

    __p = v28;
    memset(&v28, 0, sizeof(v28));
    v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = __p.__r_.__value_.__l.__size_;
    }

    v21 = *(v6 + 23);
    v22 = v21;
    if (v21 < 0)
    {
      v21 = v6[1];
    }

    if (v20 == v21)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v22 >= 0)
      {
        v24 = v6;
      }

      else
      {
        v24 = *v6;
      }

      v25 = memcmp(p_p, v24, v20) == 0;
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v25 = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

LABEL_44:
    if (v25)
    {
      break;
    }

    v7 = *a2;
    if ((*(*a2 + 160 * v8 + 128) & 1) == 0)
    {
      std::string::append(&v30, " ");
      v7 = *a2;
    }

    ++v8;
    v9 += 160;
    if (v8 >= 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - v7) >> 5))
    {
      v15 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
LABEL_49:
      v5 = a4;
      if (v15 < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      goto LABEL_51;
    }
  }

  while (++v8 < 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 5))
  {
    std::vector<marrs::qr::orchestration::QRToken>::push_back[abi:ne200100](&v31, (*a2 + v9));
    v9 += 160;
  }

  *a1 = v31;
  a1[2] = v32;
  v32 = 0;
  v31 = 0uLL;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_57:
  v30.__r_.__value_.__r.__words[0] = &v31;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v30);
}

void sub_2227CF6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  __p = &a27;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t std::vector<marrs::qr::orchestration::QRToken>::push_back[abi:ne200100](uint64_t *a1, const marrs::qr::orchestration::QRToken *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken const&>(a1, a2);
  }

  else
  {
    marrs::qr::orchestration::QRToken::QRToken(a1[1], a2);
    result = v3 + 160;
    a1[1] = v3 + 160;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<marrs::qr::orchestration::QRToken>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227CF804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken const&>(uint64_t *a1, const marrs::qr::orchestration::QRToken *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>>(v5);
  }

  v12 = 0;
  v13 = 160 * v2;
  marrs::qr::orchestration::QRToken::QRToken((160 * v2), a2);
  v14 = 160 * v2 + 160;
  v6 = a1[1];
  v7 = 160 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<marrs::qr::orchestration::QRToken>::~__split_buffer(&v12);
  return v11;
}

void sub_2227CF93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<marrs::qr::orchestration::QRToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      v9 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 72) = v9;
      v10 = *(v6 + 104);
      *(a4 + 120) = *(v6 + 120);
      *(a4 + 104) = v10;
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(v6 + 104) = 0;
      *(a4 + 128) = *(v6 + 128);
      v11 = *(v6 + 136);
      *(a4 + 152) = *(v6 + 152);
      *(a4 + 136) = v11;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 136) = 0;
      v6 += 160;
      a4 += 160;
    }

    while (v6 != a3);
    v16 = a4;
    v14 = 1;
    do
    {
      std::allocator_traits<std::allocator<marrs::qr::orchestration::QRToken>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRToken,0>(v5);
      v5 += 160;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>>::~__exception_guard_exceptions[abi:ne200100](v13);
}

uint64_t std::__split_buffer<marrs::qr::orchestration::QRToken>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 160;
    std::allocator_traits<std::allocator<marrs::qr::orchestration::QRToken>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRToken,0>(v3 - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<marrs::qr::orchestration::QRToken>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRToken,0>(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 48);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void toRepetitionPredictorInput(uint64_t a1, uint64_t a2, const void ***a3)
{
  v73 = *MEMORY[0x277D85DE8];
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  std::string::operator=((a1 + 256), (*(a2 + 8) + 72));
  v6 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "toRepetitionPredictorInput";
    _os_log_debug_impl(&dword_2227A9000, v6, OS_LOG_TYPE_DEBUG, "%s Converting Turn1 Input", buf, 0xCu);
  }

  std::string::operator=((a1 + 192), (**(a2 + 8) + 16));
  v7 = *(a2 + 8);
  *(a1 + 240) = v7[13];
  removeTriggerTokens(buf, (*v7 + 64), *a3, a3[1]);
  mergeTokens(&v61, buf);
  v59 = buf;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v59);
  v8 = v61;
  for (i = v62; v8 != i; v8 += 160)
  {
    v11 = *(a1 + 104);
    v10 = *(a1 + 112);
    if (v11 >= v10)
    {
      v13 = *(a1 + 96);
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = *(v8 + 96);
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = *(a1 + 96);
      *(a1 + 96) = v21;
      *(a1 + 104) = v12;
      *(a1 + 112) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v11 = *(v8 + 96);
      v12 = v11 + 8;
    }

    *(a1 + 104) = v12;
    v23 = (v8 + 104);
    v24 = *(a1 + 56);
    if (v24 >= *(a1 + 64))
    {
      v25 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1 + 48, (v8 + 104));
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1 + 48, (v8 + 104));
      v25 = v24 + 1;
    }

    *(a1 + 56) = v25;
    v26 = *(a1 + 8);
    if (v26 >= *(a1 + 16))
    {
      v27 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, v8);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, v8);
      v27 = v26 + 1;
    }

    *(a1 + 8) = v27;
    LOBYTE(v59) = *(v8 + 128);
    std::vector<BOOL>::push_back((a1 + 144), &v59);
    v28 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      if (*(v8 + 127) < 0)
      {
        v23 = *v23;
      }

      v29 = v8;
      if (*(v8 + 23) < 0)
      {
        v29 = *v8;
      }

      v30 = *(v8 + 96);
      v31 = *(v8 + 128);
      *buf = 136316162;
      *&buf[4] = "toRepetitionPredictorInput";
      v65 = 2048;
      v66 = v30;
      v67 = 2080;
      v68 = v23;
      v69 = 2080;
      v70 = v29;
      v71 = 1024;
      v72 = v31;
      _os_log_debug_impl(&dword_2227A9000, v28, OS_LOG_TYPE_DEBUG, "%s conf:%.1f phone:%s value:%s removeSpace:%d", buf, 0x30u);
    }
  }

  v32 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "toRepetitionPredictorInput";
    _os_log_debug_impl(&dword_2227A9000, v32, OS_LOG_TYPE_DEBUG, "%s Converting Turn2 Input", buf, 0xCu);
  }

  std::string::operator=((a1 + 216), (*(*(a2 + 8) + 112) + 16));
  v33 = *(a2 + 8);
  *(a1 + 248) = *(v33 + 216);
  removeTriggerTokens(buf, (*(v33 + 112) + 64), *a3, a3[1]);
  mergeTokens(&v59, buf);
  v63 = buf;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v63);
  v34 = v59;
  for (j = v60; v34 != j; v34 += 20)
  {
    v37 = *(a1 + 128);
    v36 = *(a1 + 136);
    if (v37 >= v36)
    {
      v39 = *(a1 + 120);
      v40 = v37 - v39;
      v41 = (v37 - v39) >> 3;
      v42 = v41 + 1;
      if ((v41 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v43 = v36 - v39;
      if (v43 >> 2 > v42)
      {
        v42 = v43 >> 2;
      }

      if (v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        v44 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v44 = v42;
      }

      if (v44)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v44);
      }

      v45 = (v37 - v39) >> 3;
      v46 = (8 * v41);
      v47 = (8 * v41 - 8 * v45);
      *v46 = v34[12];
      v38 = v46 + 1;
      memcpy(v47, v39, v40);
      v48 = *(a1 + 120);
      *(a1 + 120) = v47;
      *(a1 + 128) = v38;
      *(a1 + 136) = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v37 = v34[12];
      v38 = v37 + 8;
    }

    *(a1 + 128) = v38;
    v49 = v34 + 13;
    v50 = *(a1 + 80);
    if (v50 >= *(a1 + 88))
    {
      v51 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(a1 + 72, (v34 + 13));
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string&>(a1 + 72, (v34 + 13));
      v51 = v50 + 1;
    }

    *(a1 + 80) = v51;
    v52 = *(a1 + 32);
    if (v52 >= *(a1 + 40))
    {
      v53 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(a1 + 24, v34);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string&>(a1 + 24, v34);
      v53 = v52 + 1;
    }

    *(a1 + 32) = v53;
    LOBYTE(v63) = *(v34 + 128);
    std::vector<BOOL>::push_back((a1 + 168), &v63);
    v54 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      if (*(v34 + 127) < 0)
      {
        v49 = *v49;
      }

      v55 = v34;
      if (*(v34 + 23) < 0)
      {
        v55 = *v34;
      }

      v56 = v34[12];
      v57 = *(v34 + 128);
      *buf = 136316162;
      *&buf[4] = "toRepetitionPredictorInput";
      v65 = 2048;
      v66 = v56;
      v67 = 2080;
      v68 = v49;
      v69 = 2080;
      v70 = v55;
      v71 = 1024;
      v72 = v57;
      _os_log_debug_impl(&dword_2227A9000, v54, OS_LOG_TYPE_DEBUG, "%s conf:%.1f phone:%s value:%s removeSpace:%d", buf, 0x30u);
    }
  }

  *buf = &v59;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](buf);
  *buf = &v61;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](buf);
  v58 = *MEMORY[0x277D85DE8];
}

void sub_2227D0174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18, void **a19)
{
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a18);
  a19 = &a15;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a19);
  RepetitionPredictorInput::~RepetitionPredictorInput(v19);
  _Unwind_Resume(a1);
}

void mergeTokens(uint64_t *a1, uint64_t *a2)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(&v28, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 5));
  v4 = v28;
  v5 = v29;
  if (v29 != v28)
  {
    v26 = a1;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "");
      v8 = v28;
      v9 = v28 + 160 * v7;
      v10 = *(v9 + 23);
      if (v10 < 0)
      {
        if (*(v9 + 8))
        {
LABEL_7:
          v11 = *v9;
          if (v10 >= 0)
          {
            v12 = (v28 + 160 * v7);
          }

          else
          {
            v12 = *v9;
          }

          if (v10 >= 0)
          {
            v13 = *(v9 + 23);
          }

          else
          {
            v13 = *(v9 + 8);
          }

          std::string::append(&__str, v12, v13);
          v8 = v28;
        }
      }

      else if (*(v9 + 23))
      {
        goto LABEL_7;
      }

      v14 = v7 + 1;
      if (v7 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((v29 - v8) >> 5))
      {
        v15 = v6;
        v16 = v7 + 1;
        do
        {
          v17 = *(v8 + v15 + 183);
          if (v17 < 0)
          {
            v17 = *(v8 + v15 + 168);
          }

          if (!v17)
          {
            break;
          }

          v18 = *(v8 + v15 + 287);
          if (v18 < 0)
          {
            v18 = *(v8 + v15 + 272);
          }

          if (v18)
          {
            break;
          }

          if ((*(v8 + 160 * v7 + 128) & 1) == 0)
          {
            std::string::append(&__str, " ");
          }

          v19 = *a2 + v15;
          v22 = *(v19 + 160);
          v20 = v19 + 160;
          v21 = v22;
          v23 = *(v20 + 23);
          v24 = (v23 >= 0 ? v20 : v21);
          v25 = v23 >= 0 ? *(v20 + 23) : *(v20 + 8);
          std::string::append(&__str, v24, v25);
          v8 = v28;
          *(v28 + 160 * v7 + 128) = *(v28 + v15 + 288);
          ++v16;
          v15 += 160;
        }

        while (v16 < 0xCCCCCCCCCCCCCCCDLL * ((v29 - v8) >> 5));
      }

      std::string::operator=((v8 + 160 * v7), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v4 = v28;
      v5 = v29;
      v6 += 160;
      ++v7;
      if (v14 >= 0xCCCCCCCCCCCCCCCDLL * ((v29 - v28) >> 5))
      {
        a1 = v26;
        break;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  while (v4 != v5)
  {
    if ((*(v4 + 127) & 0x8000000000000000) != 0)
    {
      if (!*(v4 + 112))
      {
        goto LABEL_46;
      }
    }

    else if (!*(v4 + 127))
    {
      goto LABEL_46;
    }

    if ((*(v4 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v4 + 8))
      {
        goto LABEL_46;
      }

LABEL_45:
      std::vector<marrs::qr::orchestration::QRToken>::push_back[abi:ne200100](a1, v4);
      goto LABEL_46;
    }

    if (*(v4 + 23))
    {
      goto LABEL_45;
    }

LABEL_46:
    v4 += 160;
  }

  __str.__r_.__value_.__r.__words[0] = &v28;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&__str);
}

void sub_2227D0454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a17;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<BOOL>::push_back(uint64_t *result, _BYTE *a2)
{
  v3 = result[1];
  v4 = result[2];
  if (v3 == v4 << 6)
  {
    if ((v3 + 1) < 0)
    {
      goto LABEL_9;
    }

    if (v3 > 0x3FFFFFFFFFFFFFFELL)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    }

    v5 = v4 << 7;
    if (v5 <= (v3 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v3 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    else
    {
      v6 = v5;
    }

    if (v3 < v6)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
LABEL_9:
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

LABEL_11:
      v11 = 0;
      v12 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v11, v6);
    }

    v3 = result[1];
  }

  result[1] = v3 + 1;
  v7 = *result;
  v8 = v3 >> 6;
  v9 = 1 << v3;
  if (*a2 == 1)
  {
    v10 = *(v7 + 8 * v8) | v9;
  }

  else
  {
    v10 = *(v7 + 8 * v8) & ~v9;
  }

  *(v7 + 8 * v8) = v10;
  return result;
}

void sub_2227D0654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

void RepetitionPredictorInput::~RepetitionPredictorInput(void **this)
{
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
  }

  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  v2 = this[21];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = this[18];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = this[15];
  if (v4)
  {
    this[16] = v4;
    operator delete(v4);
  }

  v5 = this[12];
  if (v5)
  {
    this[13] = v5;
    operator delete(v5);
  }

  v6 = this + 9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = this + 3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void JointCCQRModuleInputTensor::~JointCCQRModuleInputTensor(JointCCQRModuleInputTensor *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    *(this + 28) = v2;
    operator delete(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    *(this + 7) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    *(this + 4) = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    *(this + 1) = v11;
    operator delete(v11);
  }
}

void JointCCQRModuleOutputTensor::~JointCCQRModuleOutputTensor(JointCCQRModuleOutputTensor *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    *(this + 1) = v7;
    operator delete(v7);
  }
}

void sub_2227D0950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void InferencePlanError::~InferencePlanError(std::exception *this)
{
  BaseException::~BaseException(this);

  JUMPOUT(0x223DC2360);
}

void sub_2227D105C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  *(v32 + 16) = v34;
  std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&a9);

  a9 = &a31;
  std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void *std::vector<marrs::qr::orchestration::QRInteraction>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x24924924924924ALL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRInteraction>>(a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<marrs::qr::orchestration::QRInteraction>::__emplace_back_slow_path<marrs::qr::orchestration::QRInteraction>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRInteraction>>(v5);
  }

  v6 = 112 * v2;
  v14 = 0;
  v15 = v6;
  *(&v16 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v7 = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(v6 + 72) = v7;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *(v6 + 96) = *(a2 + 96);
  *&v16 = 112 * v2 + 112;
  v8 = a1[1];
  v9 = 112 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRInteraction>,marrs::qr::orchestration::QRInteraction*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<marrs::qr::orchestration::QRInteraction>::~__split_buffer(&v14);
  return v13;
}

void std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<marrs::qr::orchestration::QRUtterance>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRUtterance,0>(i))
    {
      i -= 96;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<marrs::qr::orchestration::QRInteraction>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRInteraction,0>(i))
    {
      i -= 112;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void marrs::qr::orchestration::QRInteraction::~QRInteraction(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this + 6;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::allocator_traits<std::allocator<marrs::qr::orchestration::QRInteraction>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRInteraction,0>(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = (a1 + 48);
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 24);
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = a1;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<marrs::qr::orchestration::QRInteraction>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRInteraction>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRInteraction>,marrs::qr::orchestration::QRInteraction*,marrs::qr::orchestration::QRInteraction*,marrs::qr::orchestration::QRInteraction*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      v9 = a2 + v7;
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      std::vector<marrs::qr::orchestration::QRUtterance>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(a4 + v7, *(a2 + v7), *(a2 + v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + v7 + 8) - *(a2 + v7)) >> 5));
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = 0;
      std::vector<marrs::qr::orchestration::QRUtterance>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(a4 + v7 + 24, *(v9 + 24), *(v9 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v9 + 32) - *(v9 + 24)) >> 5));
      v10 = (a4 + v7);
      v11 = a4 + v7;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(a4 + v7 + 64) = 0;
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(a4 + v7 + 48, *(v9 + 48), *(v9 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 56) - *(v9 + 48)) >> 5));
      v12 = a2 + v7;
      if (*(a2 + v7 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(v10 + 3, *(v12 + 72), *(v12 + 80));
      }

      else
      {
        v13 = *(v12 + 72);
        v10[3].__r_.__value_.__r.__words[2] = *(v12 + 88);
        *&v10[3].__r_.__value_.__l.__data_ = v13;
      }

      *(a4 + v7 + 96) = *(v9 + 96);
      v7 += 112;
    }

    while (v9 + 112 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2227D16A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v11;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&a10);
  while (v11 != v10)
  {
    v11 -= 14;
    std::allocator_traits<std::allocator<marrs::qr::orchestration::QRInteraction>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRInteraction,0>(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<marrs::qr::orchestration::QRUtterance>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<marrs::qr::orchestration::QRUtterance>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227D176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<marrs::qr::orchestration::QRUtterance>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>,marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = a2 + v7;
      *(a4 + v7) = *(a2 + v7);
      if (*(a2 + v7 + 39) < 0)
      {
        std::string::__init_copy_ctor_external((v8 + 16), *(v9 + 16), *(v9 + 24));
      }

      else
      {
        v10 = *(v9 + 16);
        *(v8 + 32) = *(v9 + 32);
        *(v8 + 16) = v10;
      }

      v11 = a4 + v7;
      v12 = a4 + v7;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(a4 + v7 + 56) = 0;
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(a4 + v7 + 40, *(v9 + 40), *(v9 + 48), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 48) - *(v9 + 40)) >> 5));
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
      v13 = a4 + v7 + 64;
      *(v13 + 16) = 0;
      std::vector<marrs::qr::orchestration::QRToken>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(v13, *(v9 + 64), *(v9 + 72), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 72) - *(v9 + 64)) >> 5));
      *(a4 + v7 + 88) = *(v9 + 88);
      v7 += 96;
    }

    while (v9 + 96 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_2227D18E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  while (v11 != v10)
  {
    v11 -= 96;
    std::allocator_traits<std::allocator<marrs::qr::orchestration::QRUtterance>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRUtterance,0>(v11);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<marrs::qr::orchestration::QRUtterance>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRUtterance,0>(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 40);
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRInteraction>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRInteraction>,marrs::qr::orchestration::QRInteraction*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      v7 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 72) = v7;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 72) = 0;
      *(a4 + 96) = *(v6 + 96);
      v6 += 112;
      a4 += 112;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<marrs::qr::orchestration::QRInteraction>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRInteraction,0>(v5);
      v5 += 112;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<marrs::qr::orchestration::QRInteraction>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 112;
    std::allocator_traits<std::allocator<marrs::qr::orchestration::QRInteraction>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRInteraction,0>(v3 - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2227D1F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v34 + 16) = v35;
  a11 = &a33;
  std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&a11);
  *a10 = 0;
  std::default_delete<marrs::qr::orchestration::QRRequest>::operator()[abi:ne200100](v34);

  _Unwind_Resume(a1);
}

uint64_t std::default_delete<marrs::qr::orchestration::QRRequest>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = (result + 8);
    std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x223DC2360);
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRInteraction *,marrs::qr::orchestration::QRInteraction *,marrs::qr::orchestration::QRInteraction *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      if (a1 != a3)
      {
        v8 = a1 + v6;
        std::vector<marrs::qr::orchestration::QRUtterance>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(a3 + v6, *(a1 + v6), *(a1 + v6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + v6 + 8) - *(a1 + v6)) >> 5));
        std::vector<marrs::qr::orchestration::QRUtterance>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(v7 + 24, *(v8 + 24), *(v8 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 32) - *(v8 + 24)) >> 5));
        std::vector<marrs::qr::orchestration::QRToken>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(v7 + 48, *(v8 + 48), *(v8 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 56) - *(v8 + 48)) >> 5));
      }

      std::string::operator=((v7 + 72), (a1 + v6 + 72));
      *(v7 + 96) = *(a1 + v6 + 96);
      v6 += 112;
    }

    while (a1 + v6 != a2);
    a3 += v6;
  }

  return a3;
}

void std::vector<marrs::qr::orchestration::QRUtterance>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 5) < a4)
  {
    if (v9)
    {
      for (i = *(a1 + 8); i != v9; std::allocator_traits<std::allocator<marrs::qr::orchestration::QRUtterance>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRUtterance,0>(i))
      {
        i -= 96;
      }

      *(a1 + 8) = v9;
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 5);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x155555555555555)
      {
        v14 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v13;
      }

      std::vector<marrs::qr::orchestration::QRUtterance>::__vallocate[abi:ne200100](a1, v14);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    v15 = std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRUtterance *,marrs::qr::orchestration::QRUtterance *,marrs::qr::orchestration::QRUtterance *>(a2, a3, v9);
    for (j = *(a1 + 8); j != v15; std::allocator_traits<std::allocator<marrs::qr::orchestration::QRUtterance>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRUtterance,0>(j))
    {
      j -= 96;
    }

    *(a1 + 8) = v15;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRUtterance *,marrs::qr::orchestration::QRUtterance *,marrs::qr::orchestration::QRUtterance *>(a2, a2 + v11, v9);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>,marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*,marrs::qr::orchestration::QRUtterance*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRUtterance *,marrs::qr::orchestration::QRUtterance *,marrs::qr::orchestration::QRUtterance *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 72;
    do
    {
      v6 = v5 - 72;
      *a3 = *(v5 - 72);
      std::string::operator=((a3 + 16), (v5 - 56));
      if (a3 != v5 - 72)
      {
        std::vector<marrs::qr::orchestration::QRToken>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(a3 + 40, *(v5 - 32), *(v5 - 24), 0xCCCCCCCCCCCCCCCDLL * ((*(v5 - 24) - *(v5 - 32)) >> 5));
        std::vector<marrs::qr::orchestration::QRToken>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(a3 + 64, *(v5 - 8), *v5, 0xCCCCCCCCCCCCCCCDLL * ((*v5 - *(v5 - 8)) >> 5));
      }

      *(a3 + 88) = *(v5 + 16);
      a3 += 96;
      v5 += 96;
    }

    while (v6 + 96 != a2);
  }

  return a3;
}

void sub_2227D2490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2227D28C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2227D29A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2227D2990);
}

void marrs::qr::orchestration::QRUtterance::~QRUtterance(void **this)
{
  v2 = this + 8;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 5;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void sub_2227D30A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, void **a55, char a56)
{
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a15);
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = a10;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&a15);
  a15 = &a56;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a15);
  a55 = &a52;
  std::vector<marrs::qr::orchestration::QRUtterance>::__destroy_vector::operator()[abi:ne200100](&a55);

  _Unwind_Resume(a1);
}

void *std::vector<marrs::qr::orchestration::QRToken>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x19999999999999ALL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>>(a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<marrs::qr::orchestration::QRToken>::__emplace_back_slow_path<marrs::qr::orchestration::QRToken>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>>(v5);
  }

  v6 = 160 * v2;
  v18 = 0;
  v19 = v6;
  *(&v20 + 1) = 0;
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v8 = *(a2 + 24);
  *(v6 + 40) = *(a2 + 5);
  *(v6 + 24) = v8;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = a2[3];
  *(v6 + 64) = *(a2 + 8);
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 72);
  *(v6 + 88) = *(a2 + 88);
  *(v6 + 72) = v9;
  v10 = *(a2 + 104);
  *(v6 + 120) = *(a2 + 15);
  *(v6 + 104) = v10;
  *(a2 + 14) = 0;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  *(v6 + 128) = *(a2 + 128);
  v11 = *(a2 + 136);
  *(v6 + 152) = *(a2 + 19);
  *(v6 + 136) = v11;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 17) = 0;
  *&v20 = 160 * v2 + 160;
  v12 = a1[1];
  v13 = 160 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<marrs::qr::orchestration::QRToken>::~__split_buffer(&v18);
  return v17;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRUtterance>,marrs::qr::orchestration::QRUtterance*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(a4 + 88) = *(v6 + 88);
      v6 += 96;
      a4 += 96;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<marrs::qr::orchestration::QRUtterance>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRUtterance,0>(v5);
      v5 += 96;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<marrs::qr::orchestration::QRUtterance>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 96;
    std::allocator_traits<std::allocator<marrs::qr::orchestration::QRUtterance>>::destroy[abi:ne200100]<marrs::qr::orchestration::QRUtterance,0>(v3 - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2227D3878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2227D3E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a23);
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a23);
  if (*(v53 + 39) < 0)
  {
    operator delete(*(v53 + 16));
  }

  a23 = &a20;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &a52;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a23);

  _Unwind_Resume(a1);
}

void sub_2227D40C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  *(v27 - 40) = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v27 - 40));

  _Unwind_Resume(a1);
}

void sub_2227D4280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2227D4434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

std::string *marrs::qr::orchestration::QRToken::QRToken(std::string *this, __int128 *a2, __int128 *a3, uint64_t *a4, std::string::value_type a5, std::string::value_type a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v12;
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[2], *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  this[3].__r_.__value_.__s.__data_[0] = a5;
  this[3].__r_.__value_.__s.__data_[1] = a6;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  *&this[4].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  this[5].__r_.__value_.__s.__data_[8] = 0;
  std::string::basic_string[abi:ne200100]<0>(&this[5].__r_.__value_.__s.__data_[16], "");
  return this;
}

void sub_2227D45B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2227D471C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  marrs::qr::orchestration::QRToken::~QRToken(v16);

  _Unwind_Resume(a1);
}

std::string *marrs::qr::orchestration::QRToken::QRToken(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  LOWORD(this[3].__r_.__value_.__l.__data_) = 1;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  *&this[4].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[2] = 0u;
  this[5].__r_.__value_.__s.__data_[8] = 0;
  std::string::basic_string[abi:ne200100]<0>(&this[5].__r_.__value_.__s.__data_[16], "");
  return this;
}

void sub_2227D480C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 47) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_2227D4A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p)
{
  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_2227D4D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = this->__end_ - this->__begin_;
      v3.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(__n);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

unint64_t tokenIntersection(void ***a1, void *a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = (a1 + 1);
  v4 = a2 + 1;
  v3 = *a2;
  v14 = *a1;
  v13 = v3;
  v12 = 0;
  if (v3 == a2 + 1)
  {
    v7 = 0;
  }

  else
  {
    do
    {
      v5 = v14;
      v14 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,marrs::mrr::mr::CaseInsensitiveCompare>(v14, v2, (v3 + 4));
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>((v14 == v5), &v14, &v13, &v9, &v12);
      if (v14 == v2)
      {
        break;
      }

      v6 = v13;
      v13 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,marrs::mrr::mr::CaseInsensitiveCompare>(v13, v4, (v14 + 4));
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>((v13 == v6), &v14, &v13, &v9, &v12);
      v3 = v13;
    }

    while (v13 != v4);
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  }

  v14 = &v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  return v7;
}

void sub_2227D5BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,marrs::mrr::mr::CaseInsensitiveCompare>(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v23 = a2;
  if (a1 != a2)
  {
    v4 = a1;
    if (*(a1 + 55) >= 0)
    {
      v5 = (a1 + 32);
    }

    else
    {
      v5 = *(a1 + 32);
    }

    if (*(a3 + 23) >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    if ((strcasecmp(v5, v6) & 0x80000000) == 0)
    {
      return v4;
    }

    for (i = 1; ; i *= 2)
    {
      v22 = v4;
      v8 = std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v22, i, &v23);
      v9 = v22;
      if (v22 == v3)
      {
        break;
      }

      v10 = *(v22 + 55) >= 0 ? (v22 + 4) : v22[4];
      if ((strcasecmp(v10, v6) & 0x80000000) == 0)
      {
        break;
      }

      v4 = v9;
    }

    v3 = v9;
    v11 = i - v8;
    if (!v11)
    {
      return v4;
    }

    if (v11 != 1)
    {
      do
      {
        v12 = v11 >> 1;
        v13 = v4;
        if (v11 >= 2)
        {
          v14 = v11 >> 1;
          v15 = v4;
          do
          {
            v16 = v15[1];
            if (v16)
            {
              do
              {
                v13 = v16;
                v16 = *v16;
              }

              while (v16);
            }

            else
            {
              do
              {
                v13 = v15[2];
                v17 = *v13 == v15;
                v15 = v13;
              }

              while (!v17);
            }

            v15 = v13;
          }

          while (v14-- > 1);
        }

        if (*(v13 + 55) >= 0)
        {
          v19 = (v13 + 4);
        }

        else
        {
          v19 = v13[4];
        }

        if (strcasecmp(v19, v6) < 0)
        {
          v20 = v13[1];
          if (v20)
          {
            do
            {
              v4 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v4 = v13[2];
              v17 = *v4 == v13;
              v13 = v4;
            }

            while (!v17);
          }

          v12 = v11 + ~v12;
        }

        v11 = v12;
      }

      while (v12);
      return v4;
    }
  }

  return v3;
}

void getDigitsInString(_BYTE *a1, char *a2)
{
  v2 = a2;
  v3 = a2[23];
  if (v3 < 0)
  {
    v2 = *a2;
    v3 = *(a2 + 1);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!a2[23])
  {
    goto LABEL_9;
  }

  do
  {
    v4 = *v2;
    if ((v4 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) != 0)
    {
      operator new();
    }

    ++v2;
    --v3;
  }

  while (v3);
LABEL_9:
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(a1, 0, 0, 0);
}

void sub_2227D5EFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL boost::algorithm::is_iequal::operator()<char,char>(const std::locale *a1, char a2, char *a3)
{
  v6 = MEMORY[0x277D82680];
  v7 = std::locale::use_facet(a1, MEMORY[0x277D82680]);
  v8 = (v7->__vftable[1].~facet)(v7, a2);
  v9 = *a3;
  v10 = std::locale::use_facet(a1, v6);
  return v8 == (v10->__vftable[1].~facet)(v10, v9);
}

void marrs::mrr::mr::OrdinalFilter::filterEntities(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  memset(v16, 0, sizeof(v16));
  v5 = *(a3 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a3 + 8);
  }

  if (!v5)
  {
    goto LABEL_16;
  }

  if (!a1[25] || !a1[22])
  {
    v13 = MRRLoggerForCategory(2);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
LABEL_16:
      *a4 = 0;
      a4[24] = 0;
      goto LABEL_17;
    }

    LOWORD(__p[0]) = 0;
    v14 = "[Verbal MR] Failed to load Verbal MR asset. The verbalMap is empty, skipping verbal MR";
LABEL_15:
    _os_log_impl(&dword_2227A9000, v13, OS_LOG_TYPE_DEBUG, v14, __p, 2u);
    goto LABEL_16;
  }

  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v13 = MRRLoggerForCategory(2);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    LOWORD(__p[0]) = 0;
    v14 = "[Verbal MR] Empty MRR Entities in the input, return empty";
    goto LABEL_15;
  }

  v11 = 0;
  memset(__p, 0, 24);
  v12 = 4;
  v17 = 0;
  do
  {
    if (*(v9 + v12) == 1)
    {
      std::vector<unsigned long>::push_back[abi:ne200100](__p, &v17);
      v9 = *a2;
      v8 = a2[1];
    }

    v17 = ++v11;
    v12 += 216;
  }

  while (v11 < 0x84BDA12F684BDA13 * ((v8 - v9) >> 3));
  marrs::mrr::mr::OrdinalFilter::ordinalReferenceResolution(a4, a1, a3);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_17:
  __p[0] = v16;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_2227D6160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __p = &a13;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void marrs::mrr::mr::OrdinalFilter::ordinalReferenceResolution(_BYTE *a1, void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2[23];
  v37 = a2 + 24;
  if (v3 != a2 + 24)
  {
    v42 = a2 + 21;
    do
    {
      v39 = v3;
      v40 = v3[8];
      v41 = v3[7];
      if (v41 != v40)
      {
        v38 = v3 + 4;
        do
        {
          v4 = *v42;
          if (*v42)
          {
            v5 = *(v39 + 55);
            if (v5 >= 0)
            {
              v6 = *(v39 + 55);
            }

            else
            {
              v6 = v39[5];
            }

            if (v5 >= 0)
            {
              v7 = v38;
            }

            else
            {
              v7 = v39[4];
            }

            v8 = v42;
            do
            {
              v9 = *(v4 + 55);
              if (v9 >= 0)
              {
                v10 = *(v4 + 55);
              }

              else
              {
                v10 = *(v4 + 40);
              }

              if (v9 >= 0)
              {
                v11 = (v4 + 32);
              }

              else
              {
                v11 = *(v4 + 32);
              }

              if (v6 >= v10)
              {
                v12 = v10;
              }

              else
              {
                v12 = v6;
              }

              v13 = memcmp(v11, v7, v12);
              v14 = v10 < v6;
              if (v13)
              {
                v14 = v13 < 0;
              }

              v15 = !v14;
              if (v14)
              {
                v16 = 8;
              }

              else
              {
                v16 = 0;
              }

              if (v15)
              {
                v8 = v4;
              }

              v4 = *(v4 + v16);
            }

            while (v4);
            if (v8 != v42)
            {
              v17 = *(v8 + 55);
              if (v17 >= 0)
              {
                v18 = *(v8 + 55);
              }

              else
              {
                v18 = v8[5];
              }

              if (v17 >= 0)
              {
                v19 = v8 + 4;
              }

              else
              {
                v19 = v8[4];
              }

              if (v18 >= v6)
              {
                v20 = v6;
              }

              else
              {
                v20 = v18;
              }

              v21 = memcmp(v7, v19, v20);
              v22 = v6 < v18;
              if (v21)
              {
                v22 = v21 < 0;
              }

              if (!v22)
              {
                memset(v48, 0, sizeof(v48));
                std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__init_with_size[abi:ne200100]<marrs::mrr::mr::VerbalKeywordEntry*,marrs::mrr::mr::VerbalKeywordEntry*>(v48, v8[7], v8[8], 0x6DB6DB6DB6DB6DB7 * ((v8[8] - v8[7]) >> 3));
                v23 = *(v41 + 24);
                if (v23 != v41 + 32)
                {
                  std::regex_traits<char>::regex_traits(&v44);
                  v47 = 0;
                  v46 = 0u;
                  v45 = 0u;
                  v24 = *(v23 + 32);
                  v25 = *(v23 + 40);
                  *(v23 + 55);
                  std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>();
                }

                __dst.__begin_ = v48;
                std::vector<marrs::mrr::mr::VerbalKeywordEntry>::__destroy_vector::operator()[abi:ne200100](&__dst);
              }
            }
          }

          v26 = MRRLoggerForCategory(2);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            if (*(a3 + 23) >= 0)
            {
              v27 = a3;
            }

            else
            {
              v27 = *a3;
            }

            LODWORD(__dst.__begin_) = 136315138;
            *(&__dst.__begin_ + 4) = v27;
            _os_log_impl(&dword_2227A9000, v26, OS_LOG_TYPE_DEBUG, "[Verbal MR] - No ordinal index found for mention '%s'", &__dst, 0xCu);
          }

          v41 += 48;
        }

        while (v41 != v40);
      }

      v28 = v39;
      v29 = v39[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v28[2];
          v15 = *v30 == v28;
          v28 = v30;
        }

        while (!v15);
      }

      v3 = v30;
    }

    while (v30 != v37);
  }

  v31 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    if (*(a3 + 23) >= 0)
    {
      v32 = a3;
    }

    else
    {
      v32 = *a3;
    }

    LODWORD(__dst.__begin_) = 136315138;
    *(&__dst.__begin_ + 4) = v32;
    _os_log_impl(&dword_2227A9000, v31, OS_LOG_TYPE_DEBUG, "[Verbal MR] - No ordinal index found for mention '%s'", &__dst, 0xCu);
  }

  v33 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = *a3;
    }

    LODWORD(__dst.__begin_) = 136315138;
    *(&__dst.__begin_ + 4) = v34;
    _os_log_impl(&dword_2227A9000, v33, OS_LOG_TYPE_ERROR, "[Verbal MR] mention '%s' not matches with the ordinal keywords map", &__dst, 0xCu);
  }

  *a1 = 0;
  a1[24] = 0;
  v35 = *MEMORY[0x277D85DE8];
}

void sub_2227D8368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, std::locale a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  operator delete(__p);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

void std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        marrs::mrr::mr::MRREntity::~MRREntity(v4 - 27);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
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

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= __n)
    {
      v8 = __n;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100]((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_2227D8C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *std::__state<char>::~__state(void *a1)
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

  return a1;
}

void std::allocator<std::__state<char>>::destroy[abi:ne200100](void *a1)
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
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227D9290(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227D9304(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 42 * ((v5 - v6) >> 3) - 1;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40) + v9;
  if (v8 == v10)
  {
    if (v9 < 0x2A)
    {
      v11 = *(a1 + 24);
      v12 = &v11[-*a1];
      if (v7 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v19 = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v13);
    }

    *(a1 + 32) = v9 - 42;
    *&v18 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v18);
    v6 = *(a1 + 8);
    v10 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = *&v6[8 * (v10 / 0x2A)] - 4032 * (v10 / 0x2A) + 96 * v10;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = 0;
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  result = *(a2 + 56);
  *(v14 + 56) = result;
  *(v14 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v17 = *(a2 + 80);
  *(v14 + 85) = *(a2 + 85);
  *(v14 + 80) = v17;
  ++*(a1 + 40);
  return result;
}

void sub_2227D9780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::allocator<std::__state<char>>::destroy[abi:ne200100]((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v11);
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

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x223DC2220]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void sub_2227DA0DC(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = v8 + 1;
      v11 = v8 + 1;
      do
      {
        v8 = v11;
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(a1, v11, a3);
      }

      while (v8 != v11);
      if (v10 == v8)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != a3);
    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  if (*a2 == 94)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    ++v3;
  }

  if (v3 != v4)
  {
    do
    {
      v6 = v3;
      v3 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(this, v3, v4);
    }

    while (v6 != v3);
    if (v6 != v4 && v6 + 1 == v4 && *v6 == 36)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
      ++v6;
    }

    if (v6 != v4)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v4;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a3;
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  if (v7 != v3)
  {
    do
    {
      if (*v8 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(a1, v8 + 1, v3);
      if (v8 + 1 == v10)
      {
        goto LABEL_8;
      }

      v8 = v10;
      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v8 != v3);
    return v8;
  }

  return v3;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_2835DEBE8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x223DC2360);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x223DC2360);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v6, a3);
  }

  while (v7 != v6);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_2:
    v8 = a2;
    goto LABEL_3;
  }

  v8 = a2;
  v9 = *a2;
  v10 = (v9 - 36);
  if (v10 > 0x3A)
  {
    goto LABEL_37;
  }

  if (((1 << (v9 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_9;
  }

  if (v10 == 5)
  {
    v8 = a2;
    if (*(a1 + 36))
    {
      goto LABEL_9;
    }

    v19 = 41;
  }

  else
  {
LABEL_37:
    if ((v9 - 123) < 2)
    {
      goto LABEL_9;
    }

    v19 = *a2;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v19);
  v8 = a2 + 1;
LABEL_9:
  if (v8 != a2)
  {
    goto LABEL_18;
  }

  if (a2 == a3)
  {
    goto LABEL_2;
  }

  v11 = (a2 + 1);
  if (a2 + 1 == a3 || *a2 != 92)
  {
    goto LABEL_2;
  }

  v12 = *v11;
  v13 = *v11;
  if ((v12 - 36) <= 0x3A && ((1 << (v12 - 36)) & 0x5800000080004F1) != 0 || (v12 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
    v8 = a2 + 2;
  }

  else if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  else if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v13))
  {
    v8 = a2 + 2;
  }

  else
  {
    v8 = a2;
  }

LABEL_3:
  if (v8 == a2)
  {
    if (a2 != a3 && *v8 == 46)
    {
      operator new();
    }

    v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

LABEL_18:
  if (v8 == a2 && v8 != a3)
  {
    v14 = *v8;
    switch(v14)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
        v15 = *(a1 + 28);
        ++*(a1 + 36);
        v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
        if (v16 == a3 || (v8 = v16, *v16 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v15);
        --*(a1 + 36);
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
        break;
      default:
        goto LABEL_29;
    }

    ++v8;
  }

LABEL_29:
  if (v8 == a2)
  {
    return a2;
  }

  v17 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, v6, (v7 + 1), v17);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = a6;
  v8 = a5;
  v11 = a1;
  v12 = *(a1 + 24) & 0x1F0;
  v13 = *a2;
  if (v13 > 0x3E)
  {
    if (v13 == 63)
    {
      v6 = a2 + 1;
      if (v12)
      {
        v20 = 1;
      }

      else
      {
        v20 = v6 == a3;
      }

      if (!v20 && *v6 == 63)
      {
        v6 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_32;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_44;
    }

    v6 = a2;
    if (v13 != 123)
    {
      return v6;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(a2 + 1, a3, &__max);
    if (v15 != v16)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v6 = v16 + 1;
            if (!v12 && v6 != a3 && *v6 == 63)
            {
              v6 = v16 + 2;
              v14 = __max;
              a5 = v8;
              a6 = v7;
              a1 = v11;
              v18 = __max;
LABEL_32:
              v21 = __s;
              v22 = 0;
LABEL_45:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v6;
            }

            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            v18 = __max;
LABEL_44:
            v21 = __s;
            v22 = 1;
            goto LABEL_45;
          }

          goto LABEL_57;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_57;
        }

        if (*v23 == 125)
        {
          v6 = v16 + 2;
          if (!v12 && v6 != a3 && *v6 == 63)
          {
            v6 = v16 + 3;
            v14 = __max;
            a5 = v8;
            a6 = v7;
            a1 = v11;
            goto LABEL_25;
          }

          v14 = __max;
          a5 = v8;
          a6 = v7;
          a1 = v11;
LABEL_35:
          v18 = -1;
          goto LABEL_44;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v16 + 1, a3, &v27);
        if (v23 != v25 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v6 = v25 + 1;
            v22 = 1;
            if (!v12 && v6 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v6 = v25 + 2;
              }
            }

            a5 = v8;
            a6 = v7;
            a1 = v11;
            v21 = __s;
            goto LABEL_45;
          }

          goto LABEL_57;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v13 == 42)
  {
    v6 = a2 + 1;
    if (v12)
    {
      v19 = 1;
    }

    else
    {
      v19 = v6 == a3;
    }

    if (!v19 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_25;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_35;
  }

  v6 = a2;
  if (v13 == 43)
  {
    v6 = a2 + 1;
    if (!v12 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_25:
      v18 = -1;
      goto LABEL_32;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_35;
  }

  return v6;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result == a2)
      {
        return a2;
      }

      else
      {
        while (1)
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          if (++result == a2)
          {
            return a2;
          }
        }
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x223DC2360);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_209;
    }

    j = (a2[1] == 94 ? a2 + 2 : a2 + 1);
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (j == a3)
    {
      goto LABEL_209;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *j == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++j;
    }

    if (j == a3)
    {
      v8 = j;
LABEL_13:
      if (v8 != a3)
      {
        if (*v8 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
          ++v8;
        }

        if (v8 != a3 && *v8 == 93)
        {
          return v8 + 1;
        }
      }

LABEL_209:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    while (1)
    {
      v8 = j;
      v10 = j;
      if (j == a3)
      {
        goto LABEL_119;
      }

      v11 = *j;
      v10 = j;
      if (v11 == 93)
      {
        goto LABEL_119;
      }

      v12 = (j + 1);
      memset(&v62, 0, sizeof(v62));
      if (v8 + 1 == a3 || v11 != 91)
      {
LABEL_31:
        j = *(a1 + 24) & 0x1F0;
        v10 = v8;
        goto LABEL_32;
      }

      v13 = *v12;
      if (v13 == 46)
      {
        break;
      }

      if (v13 == 58)
      {
        LOWORD(__src.__r_.__value_.__l.__data_) = 23866;
        v23 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, &__src, &__src.__r_.__value_.__s.__data_[2]);
        if (v23 == a3)
        {
LABEL_210:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
        }

        v15 = v23;
        v24 = *(a1 + 24);
        std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, v8 + 2, v23, v23 - (v8 + 2));
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, p_dst + size);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &__dst;
        }

        else
        {
          v27 = __dst.__r_.__value_.__r.__words[0];
        }

        classname = std::__get_classname(v27, v24 & 1);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (!classname)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
        }

        v29 = 0;
        *(v7 + 160) |= classname;
      }

      else
      {
        if (v13 != 61)
        {
          goto LABEL_31;
        }

        LOWORD(v61.__r_.__value_.__l.__data_) = 23869;
        v14 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(v8 + 2, a3, &v61, &v61.__r_.__value_.__s.__data_[2]);
        if (v14 == a3)
        {
          goto LABEL_210;
        }

        v15 = v14;
        std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&__src, a1, v8 + 2, v14);
        v16 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v16 = __src.__r_.__value_.__l.__size_;
          if (!__src.__r_.__value_.__l.__size_)
          {
LABEL_211:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
          }

          p_src = __src.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (!*(&__src.__r_.__value_.__s + 23))
          {
            goto LABEL_211;
          }

          p_src = &__src;
        }

        std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__dst, p_src, p_src + v16, v16);
        (*(**(a1 + 16) + 32))(&__p);
        v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v31 = __p.__r_.__value_.__l.__size_;
        }

        if (v31 != 1)
        {
          if (v31 == 12)
          {
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            p_p->__r_.__value_.__s.__data_[11] = p_p->__r_.__value_.__s.__data_[3];
          }

          else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            *__p.__r_.__value_.__l.__data_ = 0;
            __p.__r_.__value_.__l.__size_ = 0;
          }

          else
          {
            __p.__r_.__value_.__s.__data_[0] = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
          }
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = __p.__r_.__value_.__l.__size_;
        }

        if (v33)
        {
          std::vector<std::string>::push_back[abi:ne200100](v7 + 136, &__p);
        }

        else
        {
          v34 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
          if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = __src.__r_.__value_.__l.__size_;
          }

          if (v34 == 2)
          {
            v36 = &__src;
            if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v36 = __src.__r_.__value_.__r.__words[0];
            }

            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, v36->__r_.__value_.__s.__data_[0], v36->__r_.__value_.__s.__data_[1]);
          }

          else
          {
            if (v34 != 1)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            v35 = &__src;
            if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v35 = __src.__r_.__value_.__r.__words[0];
            }

            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, v35->__r_.__value_.__s.__data_[0]);
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        v29 = 0;
      }

      j = (v15 + 2);
      v10 = v8;
LABEL_117:
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        if ((v29 & 1) == 0)
        {
          goto LABEL_120;
        }

        goto LABEL_119;
      }

      if (v29)
      {
        goto LABEL_119;
      }

LABEL_120:
      if (v8 == j)
      {
        goto LABEL_13;
      }
    }

    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v8 + 2, a3, &v62);
    j = *(a1 + 24) & 0x1F0;
    v30 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v62.__r_.__value_.__l.__size_;
    }

    if (!v30)
    {
LABEL_32:
      if ((j | 0x40) == 0x40)
      {
        v18 = *v10;
        if (v18 == 92)
        {
          if (j)
          {
            v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, &v62);
          }

          else
          {
            v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10 + 1, a3, &v62, v7);
            j = 0;
          }

          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v18) = *v10;
      }

      std::string::operator=(&v62, v18);
      ++v10;
    }

LABEL_38:
    if (v10 != a3)
    {
      v19 = *v10;
      if (v19 != 93)
      {
        v21 = v10 + 1;
        if (v10 + 1 != a3 && v19 == 45 && *v21 != 93)
        {
          memset(&v61, 0, sizeof(v61));
          v10 += 2;
          if (v21 + 1 != a3 && *v21 == 91 && *v10 == 46)
          {
            v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v21 + 2, a3, &v61);
LABEL_125:
            v10 = v22;
LABEL_126:
            v60 = v62;
            v59 = v61;
            memset(&v61, 0, sizeof(v61));
            memset(&v62, 0, sizeof(v62));
            if (*(v7 + 170) == 1)
            {
              if (*(v7 + 169) == 1)
              {
                for (i = 0; ; ++i)
                {
                  if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    if (i >= v60.__r_.__value_.__l.__size_)
                    {
LABEL_174:
                      for (j = 0; ; ++j)
                      {
                        if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                        {
                          if (j >= v59.__r_.__value_.__l.__size_)
                          {
                            goto LABEL_184;
                          }

                          v52 = v59.__r_.__value_.__r.__words[0];
                        }

                        else
                        {
                          if (j >= SHIBYTE(v59.__r_.__value_.__r.__words[2]))
                          {
                            goto LABEL_184;
                          }

                          v52 = &v59;
                        }

                        v53 = (*(**(v7 + 24) + 40))(*(v7 + 24), v52->__r_.__value_.__s.__data_[j]);
                        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v54 = &v59;
                        }

                        else
                        {
                          v54 = v59.__r_.__value_.__r.__words[0];
                        }

                        v54->__r_.__value_.__s.__data_[j] = v53;
                      }
                    }

                    v38 = v60.__r_.__value_.__r.__words[0];
                  }

                  else
                  {
                    if (i >= SHIBYTE(v60.__r_.__value_.__r.__words[2]))
                    {
                      goto LABEL_174;
                    }

                    v38 = &v60;
                  }

                  v39 = (*(**(v7 + 24) + 40))(*(v7 + 24), v38->__r_.__value_.__s.__data_[i]);
                  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v40 = &v60;
                  }

                  else
                  {
                    v40 = v60.__r_.__value_.__r.__words[0];
                  }

                  v40->__r_.__value_.__s.__data_[i] = v39;
                }
              }

              v50 = 0;
              if ((*(&v60.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                goto LABEL_165;
              }

              while (v50 < HIBYTE(v60.__r_.__value_.__r.__words[2]))
              {
                while (1)
                {
                  ++v50;
                  if ((*(&v60.__r_.__value_.__s + 23) & 0x80) == 0)
                  {
                    break;
                  }

LABEL_165:
                  if (v50 >= v60.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_168;
                  }
                }
              }

LABEL_168:
              v51 = 0;
              if ((*(&v59.__r_.__value_.__s + 23) & 0x80) != 0)
              {
                goto LABEL_171;
              }

              while (v51 < HIBYTE(v59.__r_.__value_.__r.__words[2]))
              {
                while (1)
                {
                  ++v51;
                  if ((*(&v59.__r_.__value_.__s + 23) & 0x80) == 0)
                  {
                    break;
                  }

LABEL_171:
                  if (v51 >= v59.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_184;
                  }
                }
              }

LABEL_184:
              v55 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
              if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v56 = &v60;
              }

              else
              {
                v56 = v60.__r_.__value_.__r.__words[0];
              }

              if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v55 = v60.__r_.__value_.__l.__size_;
              }

              std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&__src, v7 + 16, v56, v56 + v55);
              v57 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
              if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v58 = &v59;
              }

              else
              {
                v58 = v59.__r_.__value_.__r.__words[0];
              }

              if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v57 = v59.__r_.__value_.__l.__size_;
              }

              std::regex_traits<char>::transform<std::__wrap_iter<char *>>(&__p, v7 + 16, v58, v58 + v57);
              __dst = __src;
              v66 = __p;
              memset(&__p, 0, sizeof(__p));
              memset(&__src, 0, sizeof(__src));
              std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
              if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v66.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_203;
              }

              v49 = __src.__r_.__value_.__r.__words[0];
            }

            else
            {
              v41 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
              if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v41 = v60.__r_.__value_.__l.__size_;
              }

              if (v41 != 1)
              {
                goto LABEL_213;
              }

              v42 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
              if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v42 = v59.__r_.__value_.__l.__size_;
              }

              if (v42 != 1)
              {
LABEL_213:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
              }

              if (*(v7 + 169) == 1)
              {
                if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v43 = &v60;
                }

                else
                {
                  v43 = v60.__r_.__value_.__r.__words[0];
                }

                v44 = (*(**(v7 + 24) + 40))(*(v7 + 24), v43->__r_.__value_.__s.__data_[0]);
                if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v45 = &v60;
                }

                else
                {
                  v45 = v60.__r_.__value_.__r.__words[0];
                }

                v45->__r_.__value_.__s.__data_[0] = v44;
                if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v46 = &v59;
                }

                else
                {
                  v46 = v59.__r_.__value_.__r.__words[0];
                }

                v47 = (*(**(v7 + 24) + 40))(*(v7 + 24), v46->__r_.__value_.__s.__data_[0]);
                if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v48 = &v59;
                }

                else
                {
                  v48 = v59.__r_.__value_.__r.__words[0];
                }

                v48->__r_.__value_.__s.__data_[0] = v47;
              }

              __dst = v60;
              memset(&v60, 0, sizeof(v60));
              v66 = v59;
              memset(&v59, 0, sizeof(v59));
              std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
              if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v66.__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_203;
              }

              v49 = __dst.__r_.__value_.__r.__words[0];
            }

            operator delete(v49);
LABEL_203:
            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }

            goto LABEL_75;
          }

          if ((j | 0x40) == 0x40)
          {
            LODWORD(v21) = *v21;
            if (v21 == 92)
            {
              if (j)
              {
                v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v10, a3, &v61);
              }

              else
              {
                v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v10, a3, &v61, v7);
              }

              goto LABEL_125;
            }
          }

          else
          {
            LOBYTE(v21) = *v21;
          }

          std::string::operator=(&v61, v21);
          goto LABEL_126;
        }
      }
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!v62.__r_.__value_.__l.__size_)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
LABEL_119:
        j = v10;
        goto LABEL_120;
      }

      if (v62.__r_.__value_.__l.__size_ != 1)
      {
        v20 = v62.__r_.__value_.__r.__words[0];
LABEL_74:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, v20->__r_.__value_.__s.__data_[0], v20->__r_.__value_.__s.__data_[1]);
        goto LABEL_75;
      }

      v20 = v62.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&v62.__r_.__value_.__s + 23))
      {
        goto LABEL_119;
      }

      v20 = &v62;
      if (HIBYTE(v62.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_74;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, v20->__r_.__value_.__s.__data_[0]);
LABEL_75:
    v29 = 1;
    goto LABEL_117;
  }

  return a2;
}

void sub_2227DC504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_2227DC808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x223DC2360](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v15 = 23854;
  v8 = std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(a2, a3, &v15, &v16);
  if (v8 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v9 = v8;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v13, a1, a2, v8);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v13;
  v10 = v14;
  *(a4 + 16) = v14;
  v11 = HIBYTE(v10);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v9 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        v12 = this;
        v13 = 8;
LABEL_20:
        std::string::operator=(v12, v13);
        return a2 + 1;
      }

      if (v7 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v7 == 68)
      {
        v8 = *(a5 + 164) | 0x400;
LABEL_22:
        *(a5 + 164) = v8;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
    }

    v12 = this;
    v13 = 0;
    goto LABEL_20;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_22;
  }

  if (v7 != 87)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, this);
  }

  *(a5 + 164) |= 0x500u;
  v17 = 95;
  if (*(a5 + 169) == 1)
  {
    v16 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
    v10 = a5 + 64;
    v11 = &v16;
  }

  else
  {
    if (*(a5 + 170) != 1)
    {
      std::vector<char>::push_back[abi:ne200100](a5 + 64, &v17);
      return a2 + 1;
    }

    v15 = 95;
    v10 = a5 + 64;
    v11 = &v15;
  }

  std::vector<char>::push_back[abi:ne200100](v10, v11);
  return a2 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 <= 0x65)
  {
    if (*a2 <= 0x5Bu)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v6 = this;
          v7 = 7;
          goto LABEL_31;
        }

        v7 = 7;
        goto LABEL_51;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v6 = this;
          v7 = 8;
LABEL_31:
          std::string::operator=(v6, v7);
          return a2 + 1;
        }

        v7 = 8;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    v7 = v5;
    if (this)
    {
      v6 = this;
      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if (*a2 <= 0x71u)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v6 = this;
        v7 = 12;
        goto LABEL_31;
      }

      v7 = 12;
      goto LABEL_51;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v6 = this;
        v7 = 10;
        goto LABEL_31;
      }

      v7 = 10;
      goto LABEL_51;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v6 = this;
          v7 = 13;
          goto LABEL_31;
        }

        v7 = 13;
        goto LABEL_51;
      case 't':
        if (this)
        {
          v6 = this;
          v7 = 9;
          goto LABEL_31;
        }

        v7 = 9;
        goto LABEL_51;
      case 'v':
        if (this)
        {
          v6 = this;
          v7 = 11;
          goto LABEL_31;
        }

        v7 = 11;
LABEL_51:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v5 & 0xF8) != 0x30)
  {
    goto LABEL_55;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3)
  {
    if ((*v9 & 0xF8) != 0x30)
    {
      goto LABEL_42;
    }

    v8 = *v9 + 8 * v8 - 48;
    if (a2 + 2 != a3)
    {
      v10 = a2[2];
      v11 = v10 & 0xF8;
      v12 = v10 + 8 * v8 - 48;
      if (v11 == 48)
      {
        v9 = a2 + 3;
      }

      else
      {
        v9 = a2 + 2;
      }

      if (v11 == 48)
      {
        v8 = v12;
      }

      goto LABEL_42;
    }
  }

  v9 = a3;
LABEL_42:
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  return v9;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
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
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2227DD018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
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

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_2227DD410(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x223DC2360](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE948;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x223DC2360);
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE948;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE900;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x223DC2360);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE900;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 <= 0x71u)
  {
    if (*a2 > 0x65u)
    {
      if (v5 == 102)
      {
        if (!this)
        {
          v7 = 12;
          goto LABEL_67;
        }

        v8 = this;
        v7 = 12;
        goto LABEL_66;
      }

      if (v5 == 110)
      {
        if (!this)
        {
          v7 = 10;
          goto LABEL_67;
        }

        v8 = this;
        v7 = 10;
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    if (v5 != 48)
    {
      if (v5 != 99)
      {
        if (v5 == 95)
        {
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      v4 = (a2 + 1);
      if (a2 + 1 != a3 && *v4 >= 65)
      {
        v6 = *v4;
        if (v6 < 0x5B || (v6 - 97) <= 0x19u)
        {
          v7 = v6 & 0x1F;
          if (this)
          {
LABEL_65:
            v8 = this;
            goto LABEL_66;
          }

LABEL_67:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v7);
          return ++v4;
        }
      }

LABEL_70:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    if (!this)
    {
      v7 = 0;
      goto LABEL_67;
    }

    v8 = this;
    v7 = 0;
LABEL_66:
    std::string::operator=(v8, v7);
    return ++v4;
  }

  if (*a2 <= 0x74u)
  {
    if (v5 != 114)
    {
      if (v5 == 116)
      {
        if (!this)
        {
          v7 = 9;
          goto LABEL_67;
        }

        v8 = this;
        v7 = 9;
        goto LABEL_66;
      }

LABEL_62:
      if ((v5 & 0x80) != 0 || (a1->__traits_.__ct_->__tab_[v5] & 0x500) == 0)
      {
        v7 = *a2;
        if (this)
        {
          goto LABEL_65;
        }

        goto LABEL_67;
      }

      goto LABEL_70;
    }

    if (!this)
    {
      v7 = 13;
      goto LABEL_67;
    }

    v8 = this;
    v7 = 13;
    goto LABEL_66;
  }

  if (v5 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_70;
    }

    v9 = a2[1];
    if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38 && (v9 | 0x20u) - 97 >= 6)
    {
      goto LABEL_70;
    }

    v4 = (a2 + 2);
    if (a2 + 2 == a3)
    {
      goto LABEL_70;
    }

    v10 = *v4;
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_70;
    }

    goto LABEL_39;
  }

  if (v5 == 118)
  {
    if (!this)
    {
      v7 = 11;
      goto LABEL_67;
    }

    v8 = this;
    v7 = 11;
    goto LABEL_66;
  }

  if (v5 != 120)
  {
    goto LABEL_62;
  }

LABEL_39:
  if (v4 + 1 == a3)
  {
    goto LABEL_70;
  }

  v11 = v4[1];
  v12 = -48;
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    v11 |= 0x20u;
    if ((v11 - 97) >= 6u)
    {
      goto LABEL_70;
    }

    v12 = -87;
  }

  if (v4 + 2 == a3)
  {
    goto LABEL_70;
  }

  v13 = v4[2];
  v14 = -48;
  if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
  {
    v13 |= 0x20u;
    if ((v13 - 97) >= 6u)
    {
      goto LABEL_70;
    }

    v14 = -87;
  }

  v15 = v14 + v13 + 16 * (v12 + v11);
  if (this)
  {
    std::string::operator=(this, v15);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v15);
  }

  v4 += 3;
  return v4;
}

void std::vector<char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
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
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
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

unsigned __int8 *std::__search_impl[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>,char *,char *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *result, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 != a3)
  {
    if (a2 - result < v4)
    {
      return a2;
    }

    v5 = a2 - v4 + 1;
    if (v5 == result)
    {
      return a2;
    }

    else
    {
      v8 = *a3;
      v6 = a3 + 1;
      v7 = v8;
      while (*result != v7)
      {
LABEL_11:
        if (++result == v5)
        {
          return a2;
        }
      }

      v9 = result + 1;
      v10 = v6;
      while (v10 != a4)
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        if (v11 != v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_2227DDEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v9 = 0;
    negate = this->__negate_;
    goto LABEL_87;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_64;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v113, &__s);
  __p = v113;
  size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v113.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(*this->__traits_.__col_ + 32))(&v113);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v113;
  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v113.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v113.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_178;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_178:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_64:
    negate = 0;
    v9 = 1;
    goto LABEL_65;
  }

  v39 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v39)
  {
    goto LABEL_64;
  }

LABEL_16:
  begin = this->__digraphs_.__begin_;
  v12 = this->__digraphs_.__end_ - begin;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_231;
  }

LABEL_25:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_s = &__s;
    std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &__src, &v113);
    v17 = this->__ranges_.__begin_;
    v18 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v19 = this->__ranges_.__end_ - v17;
    if (v19)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v108 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      v22 = v20 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
      v23 = &v17->second.__r_.__value_.__r.__words[2] + 7;
      v24 = 1;
      v25 = 1;
      while (1)
      {
        v26 = *(v23 - 24);
        if (v26 >= 0)
        {
          v27 = *(v23 - 24);
        }

        else
        {
          v27 = *(v23 - 39);
        }

        if (v26 >= 0)
        {
          v28 = (v23 - 47);
        }

        else
        {
          v28 = *(v23 - 47);
        }

        if (v27 >= v21)
        {
          v29 = v21;
        }

        else
        {
          v29 = v27;
        }

        v30 = memcmp(p_s, v28, v29);
        v31 = v21 >= v27;
        if (v30)
        {
          v31 = v30 >= 0;
        }

        if (v31)
        {
          v32 = *v23;
          if (v32 >= 0)
          {
            v33 = *v23;
          }

          else
          {
            v33 = *(v23 - 15);
          }

          if (v32 >= 0)
          {
            v34 = (v23 - 23);
          }

          else
          {
            v34 = *(v23 - 23);
          }

          if (v21 >= v33)
          {
            v35 = v33;
          }

          else
          {
            v35 = v21;
          }

          v36 = memcmp(v34, p_s, v35);
          v37 = v33 >= v21;
          if (v36)
          {
            v37 = v36 >= 0;
          }

          if (v37)
          {
            break;
          }
        }

        v25 = v24++ < v20;
        v23 += 48;
        if (!--v22)
        {
          v38 = 0;
          goto LABEL_181;
        }
      }

      v38 = 5;
LABEL_181:
      v18 = v108;
    }

    else
    {
      v25 = 0;
      v38 = 0;
    }

    if (v18 < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v25)
    {
      v88 = 1;
      goto LABEL_211;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v88 = 0;
    goto LABEL_213;
  }

  v89 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v113);
  v90 = this->__equivalences_.__begin_;
  v91 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v92 = this->__equivalences_.__end_ - v90;
  if (v92)
  {
    v93 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v89 = __s.__r_.__value_.__r.__words[0];
    }

    if (v93 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = 0xAAAAAAAAAAAAAAABLL * (v92 >> 3);
    }

    v96 = 1;
    v97 = 1;
    while (1)
    {
      v98 = HIBYTE(v90->__r_.__value_.__r.__words[2]);
      v99 = v98;
      if ((v98 & 0x80u) != 0)
      {
        v98 = v90->__r_.__value_.__l.__size_;
      }

      if (v94 == v98)
      {
        v100 = v99 >= 0 ? v90 : v90->__r_.__value_.__r.__words[0];
        if (!memcmp(v89, v100, v94))
        {
          break;
        }
      }

      v97 = v96++ < v93;
      ++v90;
      if (!--v95)
      {
        goto LABEL_208;
      }
    }

    v88 = 1;
    v38 = 5;
    if (v91 < 0)
    {
LABEL_209:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v97 = 0;
LABEL_208:
    v38 = 0;
    v88 = 0;
    if (v91 < 0)
    {
      goto LABEL_209;
    }
  }

  if (!v97)
  {
LABEL_213:
    if (__src < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v103 = tab[__src];
      if (((v103 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_231;
      }

      neg_mask = this->__neg_mask_;
      if ((v103 & neg_mask) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_230:
        negate = v88;
LABEL_232:
        v9 = 2;
        goto LABEL_87;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
      {
        negate = 1;
        if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_232;
        }
      }

      goto LABEL_230;
    }

LABEL_231:
    negate = 1;
    goto LABEL_232;
  }

LABEL_211:
  v9 = 2;
  negate = v88;
  if (v38)
  {
    goto LABEL_87;
  }

LABEL_65:
  v40 = *a2->__current_;
  v113.__r_.__value_.__s.__data_[0] = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v40) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v40);
    v113.__r_.__value_.__s.__data_[0] = v40;
  }

  v41 = this->__chars_.__begin_;
  v42 = this->__chars_.__end_ - v41;
  if (v42)
  {
    if (v42 <= 1)
    {
      v42 = 1;
    }

    do
    {
      v43 = *v41++;
      if (v43 == v40)
      {
        goto LABEL_86;
      }
    }

    while (--v42);
  }

  v44 = this->__neg_mask_;
  if (v44 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v40 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v40] & v44) == 0)
    {
      v45 = (v40 == 95) & (v44 >> 7);
    }

    else
    {
      LOBYTE(v45) = 1;
    }

    end = this->__neg_chars_.__end_;
    v47 = memchr(this->__neg_chars_.__begin_, v40, end - this->__neg_chars_.__begin_);
    v48 = !v47 || v47 == end;
    v49 = !v48;
    if ((v45 & 1) == 0 && !v49)
    {
LABEL_86:
      negate = 1;
      goto LABEL_87;
    }
  }

  v52 = this->__ranges_.__begin_;
  v53 = this->__ranges_.__end_;
  if (v52 != v53)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
      v52 = this->__ranges_.__begin_;
      v53 = this->__ranges_.__end_;
      v54 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = v40;
    }

    v55 = v53 - v52;
    if (v55)
    {
      v109 = v9;
      v105 = negate;
      v106 = v54;
      v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      if ((v54 & 0x80u) == 0)
      {
        v57 = v54;
      }

      else
      {
        v57 = __s.__r_.__value_.__l.__size_;
      }

      if ((v54 & 0x80u) == 0)
      {
        v58 = &__s;
      }

      else
      {
        v58 = __s.__r_.__value_.__r.__words[0];
      }

      if (v56 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 4);
      }

      v60 = &v52->second.__r_.__value_.__r.__words[2] + 7;
      v61 = 1;
      v62 = 1;
      while (1)
      {
        v63 = *(v60 - 24);
        if (v63 >= 0)
        {
          v64 = *(v60 - 24);
        }

        else
        {
          v64 = *(v60 - 39);
        }

        if (v63 >= 0)
        {
          v65 = (v60 - 47);
        }

        else
        {
          v65 = *(v60 - 47);
        }

        if (v64 >= v57)
        {
          v66 = v57;
        }

        else
        {
          v66 = v64;
        }

        v67 = memcmp(v58, v65, v66);
        v68 = v57 >= v64;
        if (v67)
        {
          v68 = v67 >= 0;
        }

        if (v68)
        {
          v69 = *v60;
          if (v69 >= 0)
          {
            v70 = *v60;
          }

          else
          {
            v70 = *(v60 - 15);
          }

          if (v69 >= 0)
          {
            v71 = (v60 - 23);
          }

          else
          {
            v71 = *(v60 - 23);
          }

          if (v57 >= v70)
          {
            v72 = v70;
          }

          else
          {
            v72 = v57;
          }

          v73 = memcmp(v71, v58, v72);
          v74 = v70 >= v57;
          if (v73)
          {
            v74 = v73 >= 0;
          }

          if (v74)
          {
            break;
          }
        }

        v62 = v61++ < v56;
        v60 += 48;
        if (!--v59)
        {
          negate = v105;
          goto LABEL_142;
        }
      }

      negate = 1;
LABEL_142:
      v9 = v109;
      if ((v106 & 0x80) == 0)
      {
LABEL_144:
        if (v62)
        {
          goto LABEL_87;
        }

        goto LABEL_145;
      }
    }

    else
    {
      v62 = 0;
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_144;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_144;
  }

LABEL_145:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_171;
  }

  v75 = &__s;
  std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &v113, &v113.__r_.__value_.__s.__data_[1]);
  v76 = this->__equivalences_.__begin_;
  v77 = this->__equivalences_.__end_ - v76;
  if (!v77)
  {
    v82 = 0;
    if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_169;
  }

  v107 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v110 = v9;
  v78 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v79 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v79 = __s.__r_.__value_.__l.__size_;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v75 = __s.__r_.__value_.__r.__words[0];
  }

  if (v78 <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = 0xAAAAAAAAAAAAAAABLL * (v77 >> 3);
  }

  v81 = 1;
  v82 = 1;
  while (1)
  {
    v83 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
    v84 = v83;
    if ((v83 & 0x80u) != 0)
    {
      v83 = v76->__r_.__value_.__l.__size_;
    }

    if (v79 == v83)
    {
      v85 = v84 >= 0 ? v76 : v76->__r_.__value_.__r.__words[0];
      if (!memcmp(v75, v85, v79))
      {
        break;
      }
    }

    v82 = v81++ < v78;
    ++v76;
    if (!--v80)
    {
      goto LABEL_168;
    }
  }

  negate = 1;
LABEL_168:
  v9 = v110;
  if (v107 < 0)
  {
LABEL_169:
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_170:
  if (v82)
  {
    goto LABEL_87;
  }

LABEL_171:
  v86 = this->__mask_;
  if ((v113.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v113.__r_.__value_.__s.__data_[0]] & v86) != 0)
  {
    goto LABEL_86;
  }

  v87 = (v86 >> 7) & 1;
  if (v113.__r_.__value_.__s.__data_[0] != 95)
  {
    LOBYTE(v87) = 0;
  }

  negate |= v87;
LABEL_87:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v51 = -993;
  }

  else
  {
    a2->__current_ += v9;
    first = this->__first_;
    v51 = -995;
  }

  a2->__do_ = v51;
  a2->__node_ = first;
}

void sub_2227DE968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::transform<char *>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2227DEA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__transform_primary<char *>(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2227DEB68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  JUMPOUT(0x223DC2360);
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t std::__match_any<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__match_any<char>::~__match_any(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

BOOL std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(std::basic_regex<char> *this, char a2)
{
  if ((a2 & 0xF8) != 0x30 && (a2 & 0xFE) != 0x38 || a2 - 49 > 8)
  {
    return 0;
  }

  if (a2 - 48 > this->__marked_count_)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(this, a2 - 48);
  return 1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2835DEA20;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x223DC2360);
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2835DEA20;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE9D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x223DC2360);
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE9D8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = a3;
  end = a1->__end_;
  marked_count = a1->__marked_count_;
  v9 = a2 + 1;
  v8 = *a2;
  if (a2 + 1 == a3 && v8 == 36 || ((v8 - 46) <= 0x2E ? (v10 = ((1 << (v8 - 46)) & 0x600000000001) == 0) : (v10 = 1), !v10))
  {
    v11 = a2;
    if (v9 != a3)
    {
      v12 = *a2;
      if (v12 != 92)
      {
LABEL_17:
        if (v12 == 46)
        {
          operator new();
        }

        goto LABEL_19;
      }

      v13 = *v9;
      if ((v13 - 36) > 0x3A || ((1 << (v13 - 36)) & 0x580000000000441) == 0)
      {
LABEL_19:
        v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, v3, v4);
        goto LABEL_20;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v13);
      v11 = v3 + 2;
      if (v3 + 2 != v3)
      {
        goto LABEL_41;
      }
    }

    v12 = *v11;
    goto LABEL_17;
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  v11 = v3 + 1;
LABEL_20:
  if (v11 == v3)
  {
    if (v9 == v4 || *v11 != 92)
    {
      return v3;
    }

    v15 = v3[1];
    if (v15 == 40)
    {
      v16 = (v3 + 2);
    }

    else
    {
      v16 = v11;
    }

    if (v16 == v3)
    {
      if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v15))
      {
        v11 = v3 + 2;
      }

      goto LABEL_41;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
    v17 = a1->__marked_count_;
    do
    {
      v18 = v16;
      v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<std::__wrap_iter<char const*>>(a1, v16, v4);
    }

    while (v18 != v16);
    v11 = v4;
    if (v18 != v4)
    {
      if (v18 + 1 == v4 || *v18 != 92)
      {
        goto LABEL_76;
      }

      if (v18[1] == 41)
      {
        v11 = v18 + 2;
      }

      else
      {
        v11 = v18;
      }
    }

    if (v11 != v18)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v17);
      goto LABEL_41;
    }

LABEL_76:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_41:
  if (v11 != v3)
  {
    if (v11 == v4)
    {
      return v4;
    }

    v19 = a1->__marked_count_ + 1;
    v20 = *v11;
    if (v20 == 42)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, end, marked_count + 1, a1->__marked_count_ + 1, 1);
      return v11 + 1;
    }

    if (v11 + 1 == v4 || v20 != 92)
    {
      return v11;
    }

    v21 = v11[1] == 123 ? v11 + 2 : v11;
    v3 = v11;
    if (v11 != v21)
    {
      v30 = 0;
      v22 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v21, v4, &v30);
      if (v22 == v21)
      {
        goto LABEL_78;
      }

      if (v22 != v4)
      {
        v23 = *v22;
        if (v23 == 44)
        {
          v29 = -1;
          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<std::__wrap_iter<char const*>>(v22 + 1, v4, &v29);
          if (v24 != v4)
          {
            if (v24 + 1 == v4 || *v24 != 92)
            {
              goto LABEL_77;
            }

            if (v24[1] == 125)
            {
              v4 = v24 + 2;
            }

            else
            {
              v4 = v24;
            }
          }

          if (v4 != v24)
          {
            v26 = v29;
            v25 = v30;
            if (v29 == -1)
            {
              v27 = a1;
              v26 = -1;
              goto LABEL_75;
            }

            if (v29 >= v30)
            {
              v27 = a1;
LABEL_75:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(v27, v25, v26, end, marked_count + 1, v19, 1);
              return v4;
            }

LABEL_78:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }
        }

        else if (v22 + 1 != v4 && v23 == 92)
        {
          v4 = v22[1] == 125 ? v22 + 2 : v22;
          if (v22 != v4)
          {
            v25 = v30;
            v27 = a1;
            v26 = v30;
            goto LABEL_75;
          }
        }
      }

LABEL_77:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
LABEL_3:
    v8 = a2;
    goto LABEL_4;
  }

  v12 = *a2;
  if (v12 > 0x5B)
  {
    if (v12 == 92)
    {
      if (a2 + 1 != a3)
      {
        v16 = a2[1];
        if (v16 == 66)
        {
          v17 = 1;
        }

        else
        {
          if (v16 != 98)
          {
            goto LABEL_28;
          }

          v17 = 0;
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, v17);
        v9 = a2 + 2;
        goto LABEL_29;
      }

LABEL_28:
      v9 = a2;
      goto LABEL_29;
    }

    v9 = a2;
    if (v12 != 94)
    {
      goto LABEL_29;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(a1);
LABEL_23:
    v9 = a2 + 1;
    goto LABEL_29;
  }

  if (v12 == 36)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(a1);
    goto LABEL_23;
  }

  v9 = a2;
  if (v12 != 40)
  {
    goto LABEL_29;
  }

  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    goto LABEL_28;
  }

  v13 = a2[2];
  if (v13 == 33)
  {
    std::regex_traits<char>::regex_traits(&v40.__traits_);
    memset(&v40.__flags_, 0, 40);
    v40.__flags_ = a1->__flags_;
    v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
    v27 = v40.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 1, a1->__marked_count_);
    a1->__marked_count_ += v27;
    if (v14 == a3 || *v14 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_59;
  }

  if (v13 != 61)
  {
    goto LABEL_28;
  }

  std::regex_traits<char>::regex_traits(&v40.__traits_);
  memset(&v40.__flags_, 0, 40);
  v40.__flags_ = a1->__flags_;
  v14 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v40, a2 + 3, a3);
  v15 = v40.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(a1, &v40, 0, a1->__marked_count_);
  a1->__marked_count_ += v15;
  if (v14 == a3 || *v14 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_59:
  v9 = v14 + 1;
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v40.__traits_.__loc_);
LABEL_29:
  if (v9 != a2)
  {
    return v9;
  }

  end = a1->__end_;
  marked_count = a1->__marked_count_;
  if (a2 == a3)
  {
    goto LABEL_3;
  }

  v18 = *a2;
  if (v18 <= 0x3E)
  {
    v8 = a2;
    if (*a2 <= 0x28u)
    {
      if (v18 == 36)
      {
        goto LABEL_4;
      }

      if (v18 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++a1->__open_count_;
            v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 3, a3);
            if (v23 != a3 && *v23 == 41)
            {
              --a1->__open_count_;
              v8 = v23 + 1;
              goto LABEL_4;
            }
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(a1);
            v24 = a1->__marked_count_;
            ++a1->__open_count_;
            v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2 + 1, a3);
            if (v25 != a3)
            {
              v26 = v25;
              if (*v25 == 41)
              {
                std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(a1, v24);
                --a1->__open_count_;
                v8 = v26 + 1;
                goto LABEL_4;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }
    }

    else
    {
      if (v18 == 41)
      {
        goto LABEL_4;
      }

      if (v18 == 46)
      {
        operator new();
      }

      if (v18 - 42 < 2)
      {
LABEL_101:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
      }
    }

LABEL_74:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
    v8 = a2 + 1;
    goto LABEL_4;
  }

  v19 = v18 - 92;
  if (v19 > 0x21)
  {
LABEL_71:
    if (v18 == 91)
    {
      v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      goto LABEL_4;
    }

    if (v18 == 63)
    {
      goto LABEL_101;
    }

    goto LABEL_74;
  }

  v8 = a2;
  if (((1 << (v18 - 92)) & 0x300000006) != 0)
  {
    goto LABEL_4;
  }

  if (v18 != 92)
  {
    if (v19 == 31)
    {
      goto LABEL_101;
    }

    goto LABEL_71;
  }

  v20 = a2 + 1;
  if (a3 == a2 + 1)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v21 = *v20;
  v22 = v21 - 48;
  if (v21 == 48)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v22);
    v8 = a2 + 2;
    goto LABEL_78;
  }

  v8 = a2 + 1;
  if ((v21 - 49) <= 8)
  {
    v8 = a2 + 2;
    if (a2 + 2 == a3)
    {
      v8 = a3;
    }

    else
    {
      while (1)
      {
        v28 = *v8;
        if ((v28 - 48) > 9)
        {
          break;
        }

        if (v22 >= 0x19999999)
        {
          goto LABEL_103;
        }

        ++v8;
        v22 = v28 + 10 * v22 - 48;
        if (v8 == a3)
        {
          v8 = a3;
          break;
        }
      }

      if (!v22)
      {
LABEL_103:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }
    }

    if (v22 > marked_count)
    {
      goto LABEL_103;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v22);
  }

LABEL_78:
  if (v20 != v8)
  {
    goto LABEL_4;
  }

  v29 = *v20;
  if (v29 <= 0x63)
  {
    if (v29 != 68)
    {
      if (v29 != 83)
      {
        v8 = a2 + 1;
        if (v29 != 87)
        {
          goto LABEL_97;
        }

        v30 = a1;
        v31 = 1;
        goto LABEL_91;
      }

      v37 = a1;
      v38 = 1;
      goto LABEL_94;
    }

    v32 = a1;
    v33 = 1;
    goto LABEL_89;
  }

  if (v29 != 119)
  {
    if (v29 == 115)
    {
      v37 = a1;
      v38 = 0;
LABEL_94:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v37, v38);
      v35 = started->__mask_ | 0x4000;
      goto LABEL_95;
    }

    v8 = a2 + 1;
    if (v29 != 100)
    {
      goto LABEL_97;
    }

    v32 = a1;
    v33 = 0;
LABEL_89:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v32, v33);
    v35 = started->__mask_ | 0x400;
LABEL_95:
    started->__mask_ = v35;
    goto LABEL_96;
  }

  v30 = a1;
  v31 = 0;
LABEL_91:
  v36 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(v30, v31);
  v36->__mask_ |= 0x500u;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v36, 95);
LABEL_96:
  v8 = a2 + 2;
LABEL_97:
  if (v20 == v8)
  {
    v39 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
    if (v39 == v20)
    {
      v8 = a2;
    }

    else
    {
      v8 = v39;
    }
  }

LABEL_4:
  v9 = a2;
  if (v8 == a2)
  {
    return v9;
  }

  v10 = a1->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v8, a3, end, marked_count + 1, v10);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x223DC1F60](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * (v11 + v13 - 2);
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(begin);
}

void sub_2227E03C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE870;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x223DC2360);
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE870;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE828;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x223DC2360);
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2835DE828;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 != 0x80000002228326F8)
  {
    if (((v3 & 0x80000002228326F8 & 0x8000000000000000) != 0) != __OFSUB__(v3, 0x80000002228326F8))
    {
      if (strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002228326F8 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x223DC2360);
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::VerbalKeywordEntry>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void marrs::mrr::mr::OrdinalFilter::~OrdinalFilter(marrs::mrr::mr::OrdinalFilter *this)
{
  *this = &unk_2835DF648;
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(*(this + 24));
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(*(this + 21));
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

{
  *this = &unk_2835DF648;
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(*(this + 24));
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(*(this + 21));

  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);
}

{
  *this = &unk_2835DF648;
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalPatternEntry>>>>::destroy(*(this + 24));
  std::__tree<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<marrs::mrr::mr::VerbalKeywordEntry>>>>::destroy(*(this + 21));

  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);
}

void marrs::mrr::mr::OrdinalFilter::filterEntities(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 32))
  {
    morphun::util::ULocale::ULocale();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    morphun::util::StringUtils::convert();
    v9 = 0;
    v10 = 0;
    v11 = 0;
    morphun::util::StringUtils::lowercase();
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    morphun::util::StringUtils::convert();
    morphun::util::ULocale::~ULocale(v6);
    (*(*a1 + 24))(a1, a2, v7);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  else
  {
    *a4 = 0;
    a4[24] = 0;
  }
}

void sub_2227E0C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 - 97) < 0)
  {
    operator delete(*(v10 - 120));
  }

  _Unwind_Resume(exception_object);
}

void VerbalMRConfig::~VerbalMRConfig(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::vector<marrs::mrr::mr::MRREntity>::__emplace_back_slow_path<marrs::mrr::mr::MRREntity const&>(uint64_t a1, const marrs::mrr::mr::MRREntity *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v5 = 0x12F684BDA12F684;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>>(v5);
  }

  v12 = 0;
  v13 = 216 * v2;
  marrs::mrr::mr::MRREntity::MRREntity((216 * v2), a2);
  v14 = 216 * v2 + 216;
  v6 = *(a1 + 8);
  v7 = 216 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>,marrs::mrr::mr::MRREntity*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<marrs::mrr::mr::MRREntity>::~__split_buffer(&v12);
  return v11;
}

void sub_2227E0E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<marrs::mrr::mr::MRREntity>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>>(unint64_t a1)
{
  if (a1 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>,marrs::mrr::mr::MRREntity*>(void **result, void **a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    do
    {
      *a3 = *v4;
      v5 = *(v4 + 1);
      *(a3 + 24) = v4[3];
      *(a3 + 8) = v5;
      v4[2] = 0;
      v4[3] = 0;
      v4[1] = 0;
      v6 = *(v4 + 2);
      *(a3 + 48) = v4[6];
      *(a3 + 32) = v6;
      v4[5] = 0;
      v4[6] = 0;
      v4[4] = 0;
      v7 = *(v4 + 7);
      *(a3 + 72) = v4[9];
      *(a3 + 56) = v7;
      v4[8] = 0;
      v4[9] = 0;
      v4[7] = 0;
      v8 = *(v4 + 5);
      *(a3 + 92) = *(v4 + 92);
      *(a3 + 80) = v8;
      *(a3 + 120) = 0;
      *(a3 + 128) = 0;
      *(a3 + 112) = 0;
      *(a3 + 112) = *(v4 + 7);
      *(a3 + 128) = v4[16];
      v4[14] = 0;
      v4[15] = 0;
      v4[16] = 0;
      v9 = *(v4 + 17);
      *(a3 + 152) = v4[19];
      *(a3 + 136) = v9;
      v4[18] = 0;
      v4[19] = 0;
      v4[17] = 0;
      *(a3 + 160) = *(v4 + 40);
      v10 = *(v4 + 21);
      *(a3 + 184) = v4[23];
      *(a3 + 168) = v10;
      v4[22] = 0;
      v4[23] = 0;
      v4[21] = 0;
      *(a3 + 192) = 0;
      *(a3 + 200) = 0;
      *(a3 + 208) = 0;
      *(a3 + 192) = *(v4 + 12);
      *(a3 + 208) = v4[26];
      v4[24] = 0;
      v4[25] = 0;
      v4[26] = 0;
      v4 += 27;
      a3 += 216;
    }

    while (v4 != a2);
    do
    {
      marrs::mrr::mr::MRREntity::~MRREntity(result);
      result = (v11 + 216);
    }

    while (result != a2);
  }

  return result;
}

uint64_t std::__split_buffer<marrs::mrr::mr::MRREntity>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    marrs::mrr::mr::MRREntity::~MRREntity((i - 216));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void VocabLoader::handle_error(VocabLoader *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x30uLL);
  std::string::basic_string[abi:ne200100]<0>(&v7, this);
  v4 = std::string::insert(&v7, 0, "Unable to load vocab during ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9 = v4->__r_.__value_.__r.__words[2];
  v8 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(v6, "QueryRewrite");
  ConfigLoadingError::ConfigLoadingError(exception, &v8, v6, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/preprocessing/VocabLoader.cpp", 18);
}

void sub_2227E10E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

uint64_t VocabLoader::loadFrom(marrs::qr::processing::Vocab *a1, uint64_t a2, unsigned int a3)
{
  marrs::qr::processing::Vocab::Vocab(a1, 1, a3);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = open(v5, 0);
  v8 = v6;
  if (v6 == -1)
  {
    v18 = "open";
    goto LABEL_21;
  }

  if (fstat(v6, &__p) == -1)
  {
    v18 = "fstat";
    goto LABEL_21;
  }

  st_size = __p.st_size;
  v10 = mmap(0, __p.st_size, 1, 2, v8, 0);
  v11 = v10;
  if (v10 == -1)
  {
    v18 = "mmap";
LABEL_21:
    VocabLoader::handle_error(v18, v7);
  }

  if (v10 && st_size)
  {
    v12 = &v10[st_size];
    v13 = v10;
    do
    {
      v14 = memchr(v13, 10, v12 - v13);
      if (v14)
      {
        v15 = v14;
        std::string::__init_with_size[abi:ne200100]<char const*,char const*>(&__p, v13, v14, v14 - v13);
        marrs::qr::processing::Vocab::addWord(a1, &__p.st_dev);
        if (SHIBYTE(__p.st_gid) < 0)
        {
          operator delete(*&__p.st_dev);
        }

        v13 = v15 + 1;
      }
    }

    while (v13 != v12);
  }

  if (munmap(v11, st_size) == -1)
  {
    v19 = "munmap";
    goto LABEL_24;
  }

  result = close(v8);
  if (result == -1)
  {
    v19 = "close";
LABEL_24:
    VocabLoader::handle_error(v19, v16);
  }

  return result;
}

void sub_2227E12F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2227E12E8);
}

void non-virtual thunk tomarrs::qr::orchestration::CbRPredictorPlugin::~CbRPredictorPlugin(marrs::qr::orchestration::CbRPredictorPlugin *this)
{
  marrs::qr::orchestration::CbRPredictorPlugin::~CbRPredictorPlugin((this - 208));

  JUMPOUT(0x223DC2360);
}

{
  marrs::qr::orchestration::CbRPredictorPlugin::~CbRPredictorPlugin((this - 208));
}

void marrs::qr::orchestration::CbRPredictorPlugin::~CbRPredictorPlugin(marrs::qr::orchestration::CbRPredictorPlugin *this)
{
  *this = &unk_2835DED38;
  *(this + 26) = &unk_2835DED68;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  RepetitionPredictorBase::~RepetitionPredictorBase(this);
}

{
  marrs::qr::orchestration::CbRPredictorPlugin::~CbRPredictorPlugin(this);

  JUMPOUT(0x223DC2360);
}

void marrs::qr::orchestration::CbRPredictorPlugin::predict(marrs::qr::orchestration::CbRPredictorPlugin *this@<X0>, const QRRequest *a2@<X1>, RepetitionPredictorResult *a3@<X8>)
{
  v4 = this;
  v259[0] = *MEMORY[0x277D85DE8];
  v6 = (this + 184);
  (*(*this + 24))(this);
  toRepetitionPredictorInput(&v208, a2, v6);
  v226 = 0;
  v225 = 0;
  v227 = 0;
  v223 = 0;
  v222 = 0;
  v224 = 0;
  createPronunciationsVector(v4 + 88, &v212, &v225);
  createPronunciationsVector(v4 + 88, &v213, &v222);
  RepetitionPredictorResult::RepetitionPredictorResult(&v216);
  v204 = a3;
  v207 = v4;
  if (*(v4 + 34) != *(v4 + 35))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
  }

  if (v226 - v225 == v209 - v208 && v223 - v222 == v211 - v210)
  {
    v7 = *(v4 + 28);
    v251 = 0;
    v252 = 0;
    v249 = 0;
    v250 = 0;
    v216 = 1065353216;
    v217 = 0;
    v219 = v218;
    if (v209 != v208 && v211 != v210)
    {
      RepetitionPredictorResult::RepetitionPredictorResult(v244);
      RuleBasedRepetitionPredictor::Predict(&v208, &v210, &v225, &v222, v7, v4 + 8, v244);
      v242 = 0;
      v241 = 0;
      v243 = 0;
      RepetitionPredictorResult::AugmentationToWords(v244, &v208, &v210, &v241);
      v195 = v7;
      v8 = v209;
      v9 = v208;
      v10 = v209 - v208;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v209 - v208) >> 3);
      if (v209 == v208)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v209 - v208) >> 3);
        v15 = v13;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = v241;
        v201 = v242 - v241;
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v242 - v241) >> 3);
        if (v11 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v209 - v208) >> 3);
        }

        v205 = v209;
        while (v15 != v13)
        {
          v17 = v14 + v12;
          v18 = v9[v12 + 23];
          if (v18 >= 0)
          {
            v19 = v9[v12 + 23];
          }

          else
          {
            v19 = *&v9[v12 + 8];
          }

          v20 = *(v17 + 23);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v17 + 8);
          }

          if (v19 != v20 || (v18 >= 0 ? (v22 = &v9[v12]) : (v22 = *&v9[v12]), v21 >= 0 ? (v23 = (v14 + v12)) : (v23 = *v17), memcmp(v22, v23, v19)))
          {
            v24 = v10;
            v25 = v11;
            goto LABEL_92;
          }

          ++v13;
          v12 += 24;
          if (v16 == v13)
          {
            v24 = v10;
            v25 = v11;
            v13 = v11;
            goto LABEL_92;
          }
        }

        v24 = v10;
        v25 = v11;
        v13 = v15;
LABEL_92:
        v47 = 0;
        v48 = 0;
        v49 = &v9[v24];
        v50 = v14 + v201;
        while (v15 != v48)
        {
          v51 = &v49[v47];
          v52 = v50 + v47;
          v53 = v49[v47 - 1];
          if (v53 >= 0)
          {
            v54 = v49[v47 - 1];
          }

          else
          {
            v54 = *&v49[v47 - 16];
          }

          v55 = *(v52 - 1);
          v56 = v55;
          if ((v55 & 0x80u) != 0)
          {
            v55 = *(v52 - 16);
          }

          if (v54 != v55)
          {
            goto LABEL_109;
          }

          v59 = *(v51 - 3);
          v57 = v51 - 24;
          v58 = v59;
          v60 = v53 >= 0 ? v57 : v58;
          v63 = *(v52 - 24);
          v61 = v52 - 24;
          v62 = v63;
          v64 = (v56 >= 0 ? v61 : v62);
          if (memcmp(v60, v64, v54))
          {
LABEL_109:
            v15 = v48;
            break;
          }

          ++v48;
          v47 -= 24;
          if (v16 == v48)
          {
            v11 = v25;
            v15 = v25;
            goto LABEL_111;
          }
        }

        v11 = v25;
LABEL_111:
        v8 = v205;
      }

      memset(&v258, 0, sizeof(v258));
      memset(&v257, 0, sizeof(v257));
      if (v13 < v11 && v13 < v11 - v15)
      {
        v65 = &v9[24 * v13];
        v66 = &v8[-24 * v15];
        while (v65 != v66)
        {
          std::vector<std::string>::push_back[abi:ne200100](&v258, v65);
          v65 = (v65 + 24);
        }
      }

      v67 = 0xAAAAAAAAAAAAAAABLL * ((v242 - v241) >> 3);
      v68 = v13 >= v67 || v13 >= v67 - v15;
      v69 = (v241 + 24 * v13);
      v70 = (v242 - 24 * v15);
      if (!v68 && v69 != v70)
      {
        do
        {
          std::vector<std::string>::push_back[abi:ne200100](&v257, v69);
          v69 = (v69 + 24);
        }

        while (v69 != v70);
      }

      memset(&v256, 0, sizeof(v256));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v256, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v257.__r_.__value_.__l.__size_ - v257.__r_.__value_.__r.__words[0]) >> 3));
      v253 = 0;
      v254 = 0;
      v255 = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v253, v210, v211, 0xAAAAAAAAAAAAAAABLL * ((v211 - v210) >> 3));
      v72 = v253;
      v73 = v254;
      if (v253 == v254)
      {
LABEL_144:
        v238 = &v253;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v238);
        v238 = &v256;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v238);
        v86 = 0;
LABEL_194:
        v4 = v207;
      }

      else
      {
        v74 = *&v256.__r_.__value_.__l.__data_;
LABEL_127:
        v75 = v72;
        v76 = v74;
        while (v76 != *(&v74 + 1))
        {
          if (v75 != v73)
          {
            v77 = *(v75 + 23);
            if (v77 >= 0)
            {
              v78 = *(v75 + 23);
            }

            else
            {
              v78 = *(v75 + 8);
            }

            v79 = *(v76 + 23);
            v80 = v79;
            if ((v79 & 0x80u) != 0)
            {
              v79 = *(v76 + 8);
            }

            if (v78 == v79)
            {
              v81 = v75 + 24;
              v82 = v77 >= 0 ? v75 : *v75;
              v83 = v76 + 24;
              v84 = v80 >= 0 ? v76 : *v76;
              v85 = memcmp(v82, v84, v78);
              v75 = v81;
              v76 = v83;
              if (!v85)
              {
                continue;
              }
            }
          }

          v72 += 24;
          if (v72 != v73)
          {
            goto LABEL_127;
          }

          goto LABEL_144;
        }

        v238 = &v253;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v238);
        v238 = &v256;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v238);
        FirstAndLastIndices = getFirstAndLastIndices(v208, v209, v258.__r_.__value_.__l.__data_, v258.__r_.__value_.__l.__size_, &v252, &v251);
        v88 = getFirstAndLastIndices(v210, v211, v257.__r_.__value_.__l.__data_, v257.__r_.__value_.__l.__size_, &v250, &v249);
        v86 = 0;
        if (!FirstAndLastIndices)
        {
          goto LABEL_194;
        }

        v4 = v207;
        if (v88)
        {
          v89 = v252;
          v90 = v208;
          if (v252)
          {
            v91 = v250;
            if (v250)
            {
              v92 = &v208[24 * v252];
              v93 = v210 + 24 * v250;
              v94 = *(v92 - 1);
              if ((v94 & 0x80000000) == 0)
              {
                v95 = *(v92 - 1);
              }

              else
              {
                v95 = *(v92 - 2);
              }

              v96 = *(v93 - 1);
              v97 = *(v93 - 16);
              if ((v96 & 0x80000000) == 0)
              {
                v97 = v96;
              }

              if (v95 == v97)
              {
                v98 = 0;
                v99 = 0;
                v100 = v92 - 24;
                v101 = v94 >> 63;
                v102 = v96 >> 63;
                v103 = v210 + 24 * v250;
                while (1)
                {
                  v104 = v99;
                  v105 = &v100[v98];
                  v106 = v89 + v99;
                  v107 = v103 + v98;
                  v108 = (v101 & 1) != 0 ? *&v100[v98] : &v100[v98];
                  v111 = *(v107 - 24);
                  v109 = v107 - 24;
                  v110 = v111;
                  v112 = ((v102 & 1) != 0 ? v110 : v109);
                  if (memcmp(v108, v112, v95))
                  {
                    break;
                  }

                  if (v106 != 1 && v91 + v104 != 1)
                  {
                    v113 = *(v105 - 1);
                    v101 = v113 >> 63;
                    if ((v113 & 0x80000000) == 0)
                    {
                      v95 = *(v105 - 1);
                    }

                    else
                    {
                      v95 = *(v105 - 2);
                    }

                    v114 = *(v103 + v98 - 25);
                    v102 = v114 >> 63;
                    if ((v114 & 0x80000000) != 0)
                    {
                      v114 = *(v103 + v98 - 40);
                    }

                    v99 = v104 - 1;
                    v98 -= 24;
                    if (v95 == v114)
                    {
                      continue;
                    }
                  }

                  v89 = v89 + v104 - 1;
                  v91 = v91 + v104 - 1;
                  goto LABEL_173;
                }

                v91 += v104;
                v89 = v106;
              }

LABEL_173:
              v252 = v89;
              v250 = v91;
            }
          }

          v115 = 0xAAAAAAAAAAAAAAABLL * ((v209 - v90) >> 3) - 1;
          v116 = v251;
          if (v251 < v115)
          {
            v117 = -1 - 0x5555555555555555 * ((v211 - v210) >> 3);
            v118 = v249;
            if (v249 < v117)
            {
              v119 = 0;
              v120 = &v90[24 * v251];
              v121 = v210 + 24 * v249;
              do
              {
                v122 = &v120[v119];
                v123 = v120[v119 + 47];
                if (v123 >= 0)
                {
                  v124 = v120[v119 + 47];
                }

                else
                {
                  v124 = *&v120[v119 + 32];
                }

                v125 = v121 + v119;
                v126 = *(v121 + v119 + 47);
                v127 = v126;
                if ((v126 & 0x80u) != 0)
                {
                  v126 = *(v121 + v119 + 32);
                }

                if (v124 != v126)
                {
                  break;
                }

                v130 = *(v122 + 3);
                v128 = v122 + 24;
                v129 = v130;
                v131 = v123 >= 0 ? v128 : v129;
                v134 = *(v125 + 24);
                v132 = v125 + 24;
                v133 = v134;
                v135 = (v127 >= 0 ? v132 : v133);
                if (memcmp(v131, v135, v124))
                {
                  break;
                }

                ++v118;
                if (++v116 >= v115)
                {
                  break;
                }

                v119 += 24;
              }

              while (v118 < v117);
            }

            v251 = v116;
            v249 = v118;
          }

          v86 = 1;
          goto LABEL_194;
        }
      }

      v238 = &v257;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v238);
      v257.__r_.__value_.__r.__words[0] = &v258;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v257);
      if (v86)
      {
        v136 = &v208[24 * v252];
        v137 = 24 * v251 + 24;
        v138 = &v208[v137];
        v139 = (v210 + 24 * v250);
        v197 = 24 * v249 + 24;
        v198 = 24 * v250;
        v140 = (v197 + v210);
        v196 = v137;
        v194 = 3 * v252;
        v200 = v136;
        if (v137 == 24 * v252)
        {
          v141 = 0;
          v199 = 0;
          v206 = 0;
        }

        else
        {
          v141 = 0;
          v199 = 0;
          v206 = 0;
          do
          {
            v142 = v139;
            if (v198 != v197)
            {
              v143 = v136[23];
              if (v143 >= 0)
              {
                v144 = v136[23];
              }

              else
              {
                v144 = *(v136 + 1);
              }

              if (v143 >= 0)
              {
                v145 = v136;
              }

              else
              {
                v145 = *v136;
              }

              v142 = v139;
              while (1)
              {
                v146 = *(v142 + 23);
                v147 = v146;
                if (v146 < 0)
                {
                  v146 = v142[1];
                }

                if (v146 == v144)
                {
                  v148 = v147 >= 0 ? v142 : *v142;
                  if (!memcmp(v148, v145, v144))
                  {
                    break;
                  }
                }

                v142 += 3;
                if (v142 == v140)
                {
                  goto LABEL_217;
                }
              }
            }

            if (v142 == v140)
            {
LABEL_217:
              v149 = v141;
              v150 = v199;
              v151 = v199 >> 3;
              if (((v199 >> 3) + 1) >> 61)
              {
                goto LABEL_289;
              }

              if (v199 >> 3 != -1)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<std::string const*>>>((v199 >> 3) + 1);
              }

              *(8 * v151) = v136;
              v199 = 8 * v151 + 8;
              memcpy(0, 0, v150);
              v141 = v149;
            }

            else
            {
              v202 = v141;
              v152 = v206;
              v153 = v206 >> 3;
              if (((v206 >> 3) + 1) >> 61)
              {
                goto LABEL_289;
              }

              if (v206 >> 3 != -1)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<std::string const*>>>((v206 >> 3) + 1);
              }

              *(8 * v153) = v136;
              v206 = 8 * v153 + 8;
              memcpy(0, 0, v152);
              if (((v202 >> 3) + 1) >> 61)
              {
LABEL_289:
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              if (v202 >> 3 != -1)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<std::string const*>>>((v202 >> 3) + 1);
              }

              v154 = (8 * (v202 >> 3));
              *v154 = v142;
              v141 = v154 + 1;
              memcpy(0, 0, v202);
            }

            v136 += 24;
          }

          while (v136 != v138);
        }

        v203 = v141;
        v155 = 8 * v194;
        if (v197 == v198)
        {
          v156 = 0;
        }

        else
        {
          v156 = 0;
          do
          {
            v157 = v200;
            v158 = v155;
            if (v196 != v155)
            {
              v159 = *(v139 + 23);
              if (v159 >= 0)
              {
                v160 = *(v139 + 23);
              }

              else
              {
                v160 = v139[1];
              }

              if (v159 >= 0)
              {
                v161 = v139;
              }

              else
              {
                v161 = *v139;
              }

              v157 = v200;
              while (1)
              {
                v162 = v157[23];
                v163 = v162;
                if ((v162 & 0x80u) != 0)
                {
                  v162 = *(v157 + 1);
                }

                if (v162 == v160)
                {
                  v164 = v163 >= 0 ? v157 : *v157;
                  if (!memcmp(v164, v161, v160))
                  {
                    break;
                  }
                }

                v157 += 24;
                if (v157 == v138)
                {
                  goto LABEL_250;
                }
              }
            }

            if (v157 == v138)
            {
LABEL_250:
              v165 = v156;
              v166 = v156 >> 3;
              if (((v156 >> 3) + 1) >> 61)
              {
                goto LABEL_289;
              }

              if (v156 >> 3 != -1)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__wrap_iter<std::string const*>>>((v156 >> 3) + 1);
              }

              *(8 * v166) = v139;
              v156 = 8 * v166 + 8;
              memcpy(0, 0, v165);
            }

            v139 += 3;
            v155 = v158;
          }

          while (v139 != v140);
        }

        v167 = 0;
        memset(&v256, 0, sizeof(v256));
        v253 = 0;
        v254 = 0;
        v255 = 0;
        if (v196 != v155)
        {
          v168 = (v196 + v225);
          v169 = (v155 + v225);
          do
          {
            std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(*v169, v169[1], &v256);
            v169 += 3;
          }

          while (v169 != v168);
          v167 = v253;
        }

        v254 = v167;
        if (v197 != v198)
        {
          v170 = (v197 + v222);
          v171 = (v198 + v222);
          do
          {
            std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(*v171, v171[1], &v253);
            v171 += 3;
          }

          while (v171 != v170);
        }

        v172 = *&v256.__r_.__value_.__l.__data_;
        v173 = rawEditDistance<unsigned int>(&v256, &v253, v207 + 1, v195);
        v239 = 0;
        v238 = 0;
        if (((*(&v172 + 1) - v172) >> 2) <= 1)
        {
          v174 = 1;
        }

        else
        {
          v174 = (*(&v172 + 1) - v172) >> 2;
        }

        v240 = 0;
        v236 = 0;
        v235 = 0;
        v237 = 0;
        v175 = 0;
        if (v199)
        {
          v176 = v208;
          do
          {
            std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(*(v225 + *v175 - v176), *(v225 + *v175 - v176 + 8), &v238);
            ++v175;
          }

          while (v175 != v199);
          v177 = v235;
        }

        else
        {
          v177 = 0;
        }

        v178 = v210;
        v236 = v177;
        if (v156)
        {
          for (i = 0; i != v156; ++i)
          {
            std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(*(v222 + *i - v178), *(v222 + *i - v178 + 8), &v235);
          }
        }

        v180 = v239;
        v181 = v238;
        v182 = rawEditDistance<unsigned int>(&v238, &v235, v207 + 1, v195);
        v233 = 0;
        v232 = 0;
        if (((v180 - v181) >> 2) <= 1)
        {
          v183 = 1;
        }

        else
        {
          v183 = (v180 - v181) >> 2;
        }

        v234 = 0;
        v230 = 0;
        v229 = 0;
        v231 = 0;
        if (v206)
        {
          v184 = v208;
          for (j = 0; j != v206; ++j)
          {
            std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(*(v225 + *j - v184), *(v225 + *j - v184 + 8), &v232);
          }

          v186 = v229;
        }

        else
        {
          v186 = 0;
        }

        v187 = v210;
        v230 = v186;
        v188 = v186;
        v189 = 0;
        if (v203)
        {
          do
          {
            std::__copy_impl::operator()[abi:ne200100]<unsigned int const*,unsigned int const*,std::back_insert_iterator<std::vector<unsigned int>>>(*(v222 + *v189 - v187), *(v222 + *v189 - v187 + 8), &v229);
            ++v189;
          }

          while (v189 != v203);
          v188 = v230;
          v186 = v229;
        }

        *&v190 = vcvtd_n_f64_u64((v203 >> 3) + (v206 >> 3), 1uLL);
        *&v191 = vcvtd_n_f64_u64(((v188 - v186) >> 2) + ((v233 - v232) >> 2), 1uLL);
        *&v192 = vcvtd_n_f64_u64((v156 >> 3) + (v199 >> 3), 1uLL);
        *&v258.__r_.__value_.__l.__data_ = v173 / v174;
        *(v258.__r_.__value_.__r.__words + 1) = v182 / v183;
        v258.__r_.__value_.__l.__size_ = __PAIR64__(v192, v190);
        *&v193 = vcvtd_n_f64_u64(((v236 - v235) >> 2) + ((v239 - v238) >> 2), 1uLL);
        v258.__r_.__value_.__r.__words[2] = __PAIR64__(v193, v191);
        memset(v228, 0, sizeof(v228));
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v228, &v258, v259, 6uLL);
      }

      v258.__r_.__value_.__r.__words[0] = &v241;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v258);
      if (v248 < 0)
      {
        operator delete(__p);
      }

      if (v245)
      {
        v246 = v245;
        operator delete(v245);
      }
    }
  }

  else
  {
    v216 = 1065353216;
    v217 = 0;
  }

  RepetitionPredictorResult::RepetitionPredictorResult(v244, &v216);
  if (*(v4 + 271) < 0)
  {
    std::string::__init_copy_ctor_external(&v257, *(v4 + 31), *(v4 + 32));
  }

  else
  {
    v257 = *(v4 + 248);
  }

  correction_type = get_correction_type(v244, &v257);
  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (v248 < 0)
  {
    operator delete(__p);
  }

  if (v245)
  {
    v246 = v245;
    operator delete(v245);
  }

  if (correction_type == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v256, "");
    v26 = v218;
    v27 = v219;
    if (v218 != v219)
    {
      v28 = -1431655765 * ((v209 - v208) >> 3);
      v29 = ~v28;
      do
      {
        v30 = *v26;
        if (!v30)
        {
          break;
        }

        v31 = (v210 + 24 * (v30 + v29));
        if (v30 <= v28)
        {
          v31 = &v208[24 * v30 - 24];
        }

        if (v31[23] < 0)
        {
          std::string::__init_copy_ctor_external(&v258, *v31, *(v31 + 1));
        }

        else
        {
          v32 = *v31;
          v258.__r_.__value_.__r.__words[2] = *(v31 + 2);
          *&v258.__r_.__value_.__l.__data_ = v32;
        }

        v33 = v30 + v29;
        if (v30 <= v28)
        {
          v33 = v30 - 1;
        }

        v34 = &v215;
        if (v30 <= v28)
        {
          v34 = &v214;
        }

        if (((*(*v34 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          std::string::push_back(&v258, 32);
        }

        if ((v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v258;
        }

        else
        {
          v35 = v258.__r_.__value_.__r.__words[0];
        }

        if ((v258.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v258.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v258.__r_.__value_.__l.__size_;
        }

        std::string::append(&v256, v35, size);
        if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v258.__r_.__value_.__l.__data_);
        }

        ++v26;
      }

      while (v26 != v27);
    }

    v37 = HIBYTE(v256.__r_.__value_.__r.__words[2]);
    v38 = &v256;
    if ((v256.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = v256.__r_.__value_.__l.__size_;
      v38 = v256.__r_.__value_.__r.__words[0];
    }

    if (v37)
    {
      v39 = v38;
      while (v39->__r_.__value_.__s.__data_[0] == 32)
      {
        v39 = (v39 + 1);
        if (!--v37)
        {
          v40 = -1;
          goto LABEL_71;
        }
      }

      v40 = v39 - v38;
    }

    else
    {
      v40 = -1;
    }

LABEL_71:
    std::string::erase(&v256, 0, v40);
    v41 = HIBYTE(v256.__r_.__value_.__r.__words[2]);
    if ((v256.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &v256;
    }

    else
    {
      v42 = v256.__r_.__value_.__r.__words[0];
    }

    if ((v256.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v256.__r_.__value_.__l.__size_;
    }

    v43 = v42 + v41;
    while (v41)
    {
      v44 = *--v43;
      --v41;
      if (v44 != 32)
      {
        v45 = v43 - v42 + 1;
        goto LABEL_81;
      }
    }

    v45 = 0;
LABEL_81:
    std::string::erase(&v256, v45, 0xFFFFFFFFFFFFFFFFLL);
    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v221.__r_.__value_.__l.__data_);
    }

    v221 = v256;
  }

  v258.__r_.__value_.__r.__words[0] = &v222;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v258);
  v258.__r_.__value_.__r.__words[0] = &v225;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v258);
  toQRResponse(v204, &v216);
  if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v221.__r_.__value_.__l.__data_);
  }

  if (v218)
  {
    v219 = v218;
    operator delete(v218);
  }

  RepetitionPredictorInput::~RepetitionPredictorInput(&v208);
  v46 = *MEMORY[0x277D85DE8];
}