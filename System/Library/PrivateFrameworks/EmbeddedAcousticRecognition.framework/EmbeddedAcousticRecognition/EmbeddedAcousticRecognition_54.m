void sub_1B5422B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void quasar::QuantizationTool::SimpleDequantize(char **a1@<X0>, const void **a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    v7 = 1.0 / a3;
    do
    {
      v8 = v7 * *v3;
      v9 = a2[2];
      if (v6 >= v9)
      {
        v10 = *a2;
        v11 = v6 - *a2;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v15);
        }

        *(4 * v12) = v8;
        v6 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6++ = v8;
      }

      a2[1] = v6;
      ++v3;
    }

    while (v3 != v4);
  }
}

void sub_1B5422D14(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *quasar::QuantizationTool::SimpleQuantizeWithRatio@<X0>(uint64_t *result@<X0>, void *a2@<X8>, float a3@<S0>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *result;
  v4 = result[1];
  for (i = a2; v3 != v4; ++v3)
  {
    v6 = (*v3 * a3);
    result = std::back_insert_iterator<std::vector<signed char>>::operator=[abi:ne200100](&i, &v6);
  }

  return result;
}

void sub_1B5422DB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::vector<float>,std::vector<unsigned char>>::pair[abi:ne200100]<std::vector<float>&,std::vector<unsigned char>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 3), *a3, a3[1], a3[1] - *a3);
  return a1;
}

void sub_1B5422E28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5422EA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5422F20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<quasar::rescoring::FeatureType>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B5422FA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::back_insert_iterator<std::vector<signed char>>::operator=[abi:ne200100](uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = &v5[-*v3];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*v3];
    *v8 = *a2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v3 = 0;
    *(v3 + 8) = v8 + 1;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

void *quasar::BasicTokenizer::BasicTokenizer(void *a1, __int128 *a2)
{
  *a1 = &unk_1F2D120A0;
  v3 = (a1 + 1);
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

  return a1;
}

void quasar::BasicTokenizer::~BasicTokenizer(void **this)
{
  *this = &unk_1F2D120A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2D120A0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::BasicTokenizer::tokenize(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  quasar::trim(&v6);
  size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v6.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    quasar::split(&v6, (a1 + 8), 1, &v5);
  }

  if ((*(&v6.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1B5423404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a18);
  a18 = v18 - 88;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  if (*(v18 - 41) < 0)
  {
    operator delete(*(v18 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::TextTokenizer::TokenString>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::TextTokenizer::TokenString>::__emplace_back_slow_path<quasar::TextTokenizer::TokenString const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::TextTokenizer::TokenString>::__construct_one_at_end[abi:ne200100]<quasar::TextTokenizer::TokenString const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

float std::vector<quasar::TextTokenizer::TokenString>::__construct_one_at_end[abi:ne200100]<quasar::TextTokenizer::TokenString const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 32;
  return result;
}

uint64_t std::vector<quasar::TextTokenizer::TokenString>::__emplace_back_slow_path<quasar::TextTokenizer::TokenString const&>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>>(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  v17 = v8;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
  *(v8 + 24) = *(a2 + 24);
  *&v17 = v17 + 32;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::TextTokenizer::TokenString>::~__split_buffer(&v15);
  return v14;
}

void sub_1B5423654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::TokenString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = v6[2];
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 4;
      a4 += 32;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    while (v5 != a3)
    {
      v12 = v5;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v12);
      v5 += 4;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

void **std::__split_buffer<quasar::TextTokenizer::TokenString>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::TextTokenizer::TokenString>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TextTokenizer::TokenString>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 32);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

kaldi::DecodableMatrixScaledMapped *kaldi::DecodableMatrixScaledMapped::DecodableMatrixScaledMapped(kaldi::DecodableMatrixScaledMapped *this, uint64_t a2, uint64_t a3, int a4, float a5)
{
  *this = &unk_1F2D120F0;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 6) = a5;
  *(this + 28) = 0;
  if (a4)
  {
    kaldi::DecodableMatrixScaledMapped::ValidateLikesAndPdfs(this);
  }

  return this;
}

uint64_t kaldi::DecodableMatrixScaledMapped::ValidateLikesAndPdfs(kaldi::DecodableMatrixScaledMapped *this)
{
  result = kaldi::MatrixBase<float>::NumCols(*(this + 2));
  if (result != *(*(this + 1) + 240))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "DecodableMatrixScaledMapped: mismatch, matrix has ", 50);
    v4 = kaldi::MatrixBase<float>::NumCols(*(this + 2));
    v5 = MEMORY[0x1B8C84C00](v3, v4);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " columns but transition-model has ", 34);
    v7 = MEMORY[0x1B8C84C00](v6, *(*(this + 1) + 240));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " pdf-ids.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return result;
}

void kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(kaldi::DecodableMatrixScaledMapped *this)
{
  *this = &unk_1F2D120F0;
  if (*(this + 28) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = kaldi::Matrix<float>::~Matrix(v2);
      MEMORY[0x1B8C85350](v3, 0x1080C40EB13E0A1);
    }
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::DecodableMatrixScaledMappedLazyNnet1::DecodableMatrixScaledMappedLazyNnet1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, int a7, float a8)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a8;
  *(a1 + 28) = 0;
  *a1 = &unk_1F2D12178;
  v9 = a4[1];
  *(a1 + 32) = *a4;
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a6 + 1;
  *(a1 + 72) = a7;
  std::unordered_map<std::vector<int> const*,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerHasher,kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::PointerPred,std::allocator<std::pair<std::vector<int> const* const,std::__list_iterator<std::pair<std::vector<int>,kaldi::CuVector<float>>,void *>>>>::unordered_map(a1 + 80, 0, &v13, &v12);
  *(a1 + 128) = a1 + 128;
  *(a1 + 136) = a1 + 128;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = &unk_1F2D3AC18;
  kaldi::CuVector<float>::Resize(a1 + 152, 1, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_1B5423BF0(_Unwind_Exception *a1)
{
  v4 = v3;
  kaldi::CuVector<float>::~CuVector(v4);
  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(v2);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 80);
  v6 = *(v1 + 7);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(v1);
  _Unwind_Resume(a1);
}

float kaldi::DecodableMatrixScaledMappedLazyNnet1::LogLikelihood(kaldi::DecodableMatrixScaledMappedLazyNnet1 *this, int a2, int a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v4 = a2 / *(this + 16) * *(this + 16);
  v5 = *(*(*(this + 1) + 96) + 4 * a3);
  if (*(this + 6))
  {
    LODWORD(v18) = a2 / *(this + 16) * *(this + 16);
    HIDWORD(v18) = v5;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v15, &v18, v19, 2uLL);
    v14 = 0;
    if (!kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::Get(this + 72, &v15, &v14))
    {
      v14 = kaldi::LRUCacheMap<std::vector<int>,kaldi::CuVector<float>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>>::InsertInPlace(this + 9, &v15);
      kaldi::CuVector<float>::Resize(v14, 1, 0);
      v6 = *(this + 2);
      v7 = *v6;
      v8 = *(v6 + 16);
      v13[2] = 0;
      v13[0] = v7 + 4 * v8 * v4;
      v13[1] = kaldi::MatrixBase<float>::NumCols(v6);
      kaldi::CuVector<float>::CuVector(&v18, v13, 0);
      v9 = (*(**(this + 6) + 136))(*(this + 6), &v18, v5);
      v10 = v14;
      *v14[1] = v9;
      kaldi::nnet1::PdfPrior::SubtractLogpostForPdf(*(this + 4), v5, v10);
      kaldi::CuVectorBase<float>::Scale();
      kaldi::CuVector<float>::~CuVector(&v18);
    }

    v11 = *v14[1];
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }

  else
  {
    **(this + 20) = *(**(this + 2) + 4 * *(*(this + 2) + 16) * v4 + 4 * v5);
    kaldi::nnet1::PdfPrior::SubtractLogpostForPdf(*(this + 4), v5, this + 152);
    kaldi::CuVectorBase<float>::Scale();
    return **(this + 20);
  }

  return v11;
}

void sub_1B5423E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::DecodableMatrixScaledMappedLazyNnet1::ValidateLikesAndPdfs(kaldi::DecodableMatrixScaledMappedLazyNnet1 *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    result = (*(*v2 + 176))(v2, 0);
  }

  else
  {
    result = kaldi::MatrixBase<float>::NumCols(*(this + 2));
  }

  if (result != *(*(this + 1) + 240))
  {
    v8 = result;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "DecodableMatrixScaledMapped: mismatch, matrix has ", 50);
    v5 = MEMORY[0x1B8C84C00](v4, v8);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " columns but transition-model has ", 34);
    v7 = MEMORY[0x1B8C84C00](v6, *(*(this + 1) + 240));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " pdf-ids.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  return result;
}

void kaldi::DecodableMatrixScaledMappedLazyNnet1::~DecodableMatrixScaledMappedLazyNnet1(kaldi::DecodableMatrixScaledMappedLazyNnet1 *this)
{
  *this = &unk_1F2D12178;
  kaldi::CuVector<float>::~CuVector(this + 19);
  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(this + 16);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 80);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(this);
}

{
  *this = &unk_1F2D12178;
  kaldi::CuVector<float>::~CuVector(this + 19);
  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(this + 16);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 80);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D12178;
  kaldi::CuVector<float>::~CuVector(this + 19);
  std::__list_imp<std::pair<std::vector<int>,kaldi::CuVector<float>>>::clear(this + 16);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 80);
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  kaldi::DecodableMatrixScaledMapped::~DecodableMatrixScaledMapped(this);
}

void kaldi::quasar::SeevaStepInferenceTensorNames::BuildStateTensorNames(kaldi::quasar::SeevaStepInferenceTensorNames *this)
{
  v98[2] = *MEMORY[0x1E69E9840];
  if (*(this + 84) >= 1)
  {
    v2 = 0;
    v93 = this + 72;
    v94 = this + 48;
    v3 = (this + 216);
    v4 = (this + 240);
    do
    {
      std::to_string(&v95, v2);
      v5 = *(this + 71);
      if (v5 >= 0)
      {
        v6 = v94;
      }

      else
      {
        v6 = *(this + 6);
      }

      if (v5 >= 0)
      {
        v7 = *(this + 71);
      }

      else
      {
        v7 = *(this + 7);
      }

      v8 = std::string::insert(&v95, 0, v6, v7);
      v9 = v8->__r_.__value_.__r.__words[0];
      __p[0] = v8->__r_.__value_.__l.__size_;
      *(__p + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
      v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v95.__end_) < 0)
      {
        operator delete(v95.__first_);
      }

      std::to_string(&v95, v2);
      v11 = *(this + 95);
      if (v11 >= 0)
      {
        v12 = v93;
      }

      else
      {
        v12 = *(this + 9);
      }

      if (v11 >= 0)
      {
        v13 = *(this + 95);
      }

      else
      {
        v13 = *(this + 10);
      }

      v14 = std::string::insert(&v95, 0, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v98[0] = v14->__r_.__value_.__l.__size_;
      *(v98 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v95.__end_) < 0)
      {
        operator delete(v95.__first_);
      }

      v17 = *(this + 28);
      v18 = *(this + 29);
      if (v17 >= v18)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v3) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v3) >> 3);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v21;
        }

        v95.__end_cap_.__value_ = (this + 216);
        if (v23)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this + 216, v23);
        }

        v24 = 24 * v20;
        *v24 = v9;
        *(v24 + 8) = __p[0];
        *(v24 + 15) = *(__p + 7);
        *(v24 + 23) = v10;
        __p[0] = 0;
        *(__p + 7) = 0;
        v19 = 24 * v20 + 24;
        v25 = *(this + 27);
        v26 = *(this + 28) - v25;
        v27 = (24 * v20 - v26);
        memcpy(v27, v25, v26);
        v28 = *(this + 27);
        *(this + 27) = v27;
        *(this + 28) = v19;
        v29 = *(this + 29);
        *(this + 29) = 0;
        v95.__end_ = v28;
        v95.__end_cap_.__value_ = v29;
        v95.__first_ = v28;
        v95.__begin_ = v28;
        std::__split_buffer<std::string>::~__split_buffer(&v95);
      }

      else
      {
        *v17 = v9;
        *(v17 + 8) = __p[0];
        *(v17 + 15) = *(__p + 7);
        *(v17 + 23) = v10;
        __p[0] = 0;
        *(__p + 7) = 0;
        v19 = v17 + 24;
      }

      *(this + 28) = v19;
      v30 = *(this + 31);
      v31 = *(this + 32);
      if (v30 >= v31)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v4) >> 3);
        v35 = v34 + 1;
        if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v4) >> 3);
        if (2 * v36 > v35)
        {
          v35 = 2 * v36;
        }

        if (v36 >= 0x555555555555555)
        {
          v37 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v37 = v35;
        }

        v95.__end_cap_.__value_ = (this + 240);
        if (v37)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this + 240, v37);
        }

        v38 = 24 * v34;
        v39 = v98[0];
        *v38 = v15;
        *(v38 + 8) = v39;
        *(v38 + 15) = *(v98 + 7);
        *(v38 + 23) = v16;
        v33 = 24 * v34 + 24;
        v40 = *(this + 30);
        v41 = *(this + 31) - v40;
        v42 = (24 * v34 - v41);
        memcpy(v42, v40, v41);
        v43 = *(this + 30);
        *(this + 30) = v42;
        *(this + 31) = v33;
        v44 = *(this + 32);
        *(this + 32) = 0;
        v95.__end_ = v43;
        v95.__end_cap_.__value_ = v44;
        v95.__first_ = v43;
        v95.__begin_ = v43;
        std::__split_buffer<std::string>::~__split_buffer(&v95);
      }

      else
      {
        v32 = v98[0];
        *v30 = v15;
        *(v30 + 8) = v32;
        *(v30 + 15) = *(v98 + 7);
        *(v30 + 23) = v16;
        v33 = v30 + 24;
      }

      *(this + 31) = v33;
      ++v2;
    }

    while (v2 < *(this + 84));
  }

  if (*(this + 85) >= 1)
  {
    v45 = 0;
    v46 = this + 168;
    v47 = (this + 264);
    v48 = (this + 288);
    do
    {
      std::to_string(&v95, v45);
      v49 = *(this + 191);
      if (v49 >= 0)
      {
        v50 = v46;
      }

      else
      {
        v50 = *(this + 21);
      }

      if (v49 >= 0)
      {
        v51 = *(this + 191);
      }

      else
      {
        v51 = *(this + 22);
      }

      v52 = std::string::insert(&v95, 0, v50, v51);
      v53 = v52->__r_.__value_.__r.__words[0];
      v98[0] = v52->__r_.__value_.__l.__size_;
      *(v98 + 7) = *(&v52->__r_.__value_.__r.__words[1] + 7);
      v54 = HIBYTE(v52->__r_.__value_.__r.__words[2]);
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v95.__end_) < 0)
      {
        operator delete(v95.__first_);
      }

      std::to_string(&v95, v45);
      v55 = *(this + 215);
      if (v55 >= 0)
      {
        v56 = this + 192;
      }

      else
      {
        v56 = *(this + 24);
      }

      if (v55 >= 0)
      {
        v57 = *(this + 215);
      }

      else
      {
        v57 = *(this + 25);
      }

      v58 = std::string::insert(&v95, 0, v56, v57);
      v59 = *&v58->__r_.__value_.__l.__data_;
      v97 = v58->__r_.__value_.__r.__words[2];
      *__p = v59;
      v58->__r_.__value_.__l.__size_ = 0;
      v58->__r_.__value_.__r.__words[2] = 0;
      v58->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v95.__end_) < 0)
      {
        operator delete(v95.__first_);
      }

      for (i = *(this + 44); i; i = *i)
      {
        v61 = *(i + 7);
        if (v45 >= v61)
        {
          if (v61 >= v45)
          {
            std::vector<std::string>::push_back[abi:ne200100](this + 312, __p);
            break;
          }

          ++i;
        }
      }

      v62 = *(this + 34);
      v63 = *(this + 35);
      if (v62 >= v63)
      {
        v66 = 0xAAAAAAAAAAAAAAABLL * ((v62 - *v47) >> 3);
        v67 = v66 + 1;
        if (v66 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v68 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *v47) >> 3);
        if (2 * v68 > v67)
        {
          v67 = 2 * v68;
        }

        if (v68 >= 0x555555555555555)
        {
          v69 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v69 = v67;
        }

        v95.__end_cap_.__value_ = (this + 264);
        if (v69)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this + 264, v69);
        }

        v70 = 24 * v66;
        v71 = v98[0];
        *v70 = v53;
        *(v70 + 8) = v71;
        *(v70 + 15) = *(v98 + 7);
        *(v70 + 23) = v54;
        v98[0] = 0;
        *(v98 + 7) = 0;
        v65 = 24 * v66 + 24;
        v72 = *(this + 33);
        v73 = *(this + 34) - v72;
        v74 = v70 - v73;
        memcpy((v70 - v73), v72, v73);
        v75 = *(this + 33);
        *(this + 33) = v74;
        *(this + 34) = v65;
        v76 = *(this + 35);
        *(this + 35) = 0;
        v95.__end_ = v75;
        v95.__end_cap_.__value_ = v76;
        v95.__first_ = v75;
        v95.__begin_ = v75;
        std::__split_buffer<std::string>::~__split_buffer(&v95);
        v46 = this + 168;
      }

      else
      {
        v64 = v98[0];
        *v62 = v53;
        *(v62 + 8) = v64;
        *(v62 + 15) = *(v98 + 7);
        *(v62 + 23) = v54;
        v98[0] = 0;
        *(v98 + 7) = 0;
        v65 = v62 + 24;
      }

      *(this + 34) = v65;
      v78 = *(this + 37);
      v77 = *(this + 38);
      if (v78 >= v77)
      {
        v80 = 0xAAAAAAAAAAAAAAABLL * ((v78 - *v48) >> 3);
        v81 = v80 + 1;
        if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v82 = 0xAAAAAAAAAAAAAAABLL * ((v77 - *v48) >> 3);
        if (2 * v82 > v81)
        {
          v81 = 2 * v82;
        }

        if (v82 >= 0x555555555555555)
        {
          v83 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v83 = v81;
        }

        v95.__end_cap_.__value_ = (this + 288);
        if (v83)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(this + 288, v83);
        }

        v84 = 24 * v80;
        v85 = *__p;
        *(v84 + 16) = v97;
        *v84 = v85;
        __p[1] = 0;
        v97 = 0;
        __p[0] = 0;
        v86 = 24 * v80 + 24;
        v87 = *(this + 36);
        v88 = *(this + 37) - v87;
        v89 = (24 * v80 - v88);
        memcpy(v89, v87, v88);
        v90 = *(this + 36);
        *(this + 36) = v89;
        *(this + 37) = v86;
        v91 = *(this + 38);
        *(this + 38) = 0;
        v95.__end_ = v90;
        v95.__end_cap_.__value_ = v91;
        v95.__first_ = v90;
        v95.__begin_ = v90;
        std::__split_buffer<std::string>::~__split_buffer(&v95);
        v92 = SHIBYTE(v97);
        *(this + 37) = v86;
        if (v92 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v79 = *__p;
        *(v78 + 16) = v97;
        *v78 = v79;
        *(this + 37) = v78 + 24;
      }

      ++v45;
    }

    while (v45 < *(this + 85));
  }
}

void sub_1B5424708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v27 < 0)
  {
    operator delete(v25);
  }

  if (v28 < 0)
  {
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::SeevaStepInference::SeevaStepInference(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  *a1 = &unk_1F2D12230;
  v6 = *a2;
  *a2 = 0;
  *(a1 + 8) = v6;
  v7 = *a3;
  *a3 = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = &unk_1F2D122A8;
  v8 = *(a4 + 8);
  *(a1 + 48) = *(a4 + 24);
  *(a1 + 32) = v8;
  v9 = *(a4 + 32);
  *(a1 + 72) = *(a4 + 48);
  *(a1 + 56) = v9;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 32) = 0;
  v10 = *(a4 + 56);
  *(a1 + 96) = *(a4 + 72);
  *(a1 + 80) = v10;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 56) = 0;
  *(a1 + 104) = *(a4 + 80);
  v11 = *(a4 + 88);
  *(a1 + 128) = *(a4 + 104);
  *(a1 + 112) = v11;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 88) = 0;
  *(a1 + 136) = *(a4 + 112);
  v12 = *(a4 + 120);
  *(a1 + 160) = *(a4 + 136);
  *(a1 + 144) = v12;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  *(a4 + 120) = 0;
  *(a1 + 24) = &unk_1F2D12260;
  v13 = *(a4 + 144);
  v14 = *(a4 + 160);
  v15 = *(a4 + 176);
  *(a1 + 216) = *(a4 + 192);
  *(a1 + 200) = v15;
  *(a1 + 184) = v14;
  *(a1 + 168) = v13;
  kaldi::quasar::SeevaStepInferenceTensorNames::SeevaStepInferenceTensorNames(a1 + 224, a5);
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  if ((*(a1 + 592) & 1) == 0)
  {
    kaldi::quasar::SeevaStepInferenceTensorNames::BuildStateTensorNames((a1 + 224));
    *(a1 + 592) = 1;
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 600), *(a1 + 464), *(a1 + 472), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 472) - *(a1 + 464)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](a1 + 600, (a1 + 248));
  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 624), *(a1 + 512), *(a1 + 520), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 520) - *(a1 + 512)) >> 3));
  std::vector<std::string>::push_back[abi:ne200100](a1 + 624, (a1 + 368));
  return a1;
}

void sub_1B542499C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = v13;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v14;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  kaldi::quasar::SeevaStepInferenceTensorNames::~SeevaStepInferenceTensorNames((v11 + 224));
  kaldi::quasar::SeevaStepInferenceConfig::~SeevaStepInferenceConfig(v12);
  v16 = *(v11 + 16);
  *(v11 + 16) = 0;
  if (v16)
  {
    kaldi::quasar::SeevaStepInference::SeevaStepInference(v16);
  }

  kaldi::quasar::SeevaStepInference::SeevaStepInference(v10);
  _Unwind_Resume(a1);
}

void kaldi::quasar::SeevaStepInference::~SeevaStepInference(kaldi::quasar::SeevaStepInference *this)
{
  *this = &unk_1F2D12230;
  v4 = (this + 672);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 648);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 624);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 600);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  kaldi::quasar::SeevaStepInferenceTensorNames::~SeevaStepInferenceTensorNames((this + 224));
  *(this + 3) = &unk_1F2D122A8;
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  kaldi::quasar::SeevaStepInference::~SeevaStepInference(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::SeevaStepInference::RunEncoder(uint64_t a1, std::string::size_type *a2, char a3)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v5 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v50, (a1 + 224), *a2);
  v51 = v5;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ((a3 & 1) == 0 && *(a1 + 560) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a1 + 440);
      v9 = v8 + v6;
      v10 = *(*(a1 + 648) + 8 * v7);
      if (v5 >= v52)
      {
        v5 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string&,kaldi::quasar::ComputeEngineBufferItf&>(&v50, v9, *(*(a1 + 648) + 8 * v7));
      }

      else
      {
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v5, *(v8 + v6), *(v8 + v6 + 8));
        }

        else
        {
          v11 = *v9;
          v5->__r_.__value_.__r.__words[2] = *(v9 + 16);
          *&v5->__r_.__value_.__l.__data_ = v11;
        }

        v5[1].__r_.__value_.__r.__words[0] = v10;
        v5 = (v5 + 32);
      }

      v51 = v5;
      ++v7;
      v6 += 24;
    }

    while (v7 < *(a1 + 560));
  }

  v12 = *(a1 + 8);
  v54 = 0;
  v55 = 0;
  v56 = 0;
  (*(*v12 + 136))(v12, &v50, a1 + 600, &v54, &v47);
  v53 = &v54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v53);
  v13 = (a1 + 648);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100]((a1 + 648));
  v14 = v48;
  v15 = *(a1 + 680);
  v16 = *(a1 + 688);
  if (v15 >= v16)
  {
    v19 = *(a1 + 672);
    v20 = v15 - v19;
    v21 = (v15 - v19) >> 3;
    v22 = v21 + 1;
    if ((v21 + 1) >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v23 = v16 - v19;
    if (v23 >> 2 > v22)
    {
      v22 = v23 >> 2;
    }

    v24 = v23 >= 0x7FFFFFFFFFFFFFF8;
    v25 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v24)
    {
      v25 = v22;
    }

    v58 = a1 + 672;
    if (v25)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1 + 672, v25);
    }

    v26 = (v15 - v19) >> 3;
    v27 = (8 * v21);
    v28 = *(v48 - 8);
    *(v48 - 8) = 0;
    v29 = (8 * v21 - 8 * v26);
    *v27 = v28;
    v18 = v27 + 1;
    memcpy(v29, v19, v20);
    v30 = *(a1 + 672);
    *(a1 + 672) = v29;
    *(a1 + 680) = v18;
    v31 = *(a1 + 688);
    *(a1 + 688) = 0;
    v56 = v30;
    v57 = v31;
    v54 = v30;
    v55 = v30;
    std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v54);
    v14 = v48;
  }

  else
  {
    v17 = *(v48 - 8);
    *(v48 - 8) = 0;
    *v15 = v17;
    v18 = v15 + 8;
  }

  *(a1 + 680) = v18;
  if (v47 != v14)
  {
    v32 = *(a1 + 656);
    v33 = v47 + 8;
    v34 = 1;
    do
    {
      v35 = *(a1 + 664);
      if (v32 >= v35)
      {
        v37 = *v13;
        v38 = v32 - *v13;
        v39 = v38 >> 3;
        v40 = (v38 >> 3) + 1;
        if (v40 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v41 = v35 - v37;
        if (v41 >> 2 > v40)
        {
          v40 = v41 >> 2;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        v58 = a1 + 648;
        if (v42)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1 + 648, v42);
        }

        v43 = *(v33 - 8);
        *(v33 - 8) = 0;
        *(8 * v39) = v43;
        v32 = (8 * v39 + 8);
        memcpy(0, v37, v38);
        v44 = *(a1 + 648);
        *(a1 + 648) = 0;
        *(a1 + 656) = v32;
        v45 = *(a1 + 664);
        *(a1 + 664) = 0;
        v56 = v44;
        v57 = v45;
        v54 = v44;
        v55 = v44;
        std::__split_buffer<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::~__split_buffer(&v54);
      }

      else
      {
        v36 = *(v33 - 8);
        *(v33 - 8) = 0;
        *v32 = v36;
        v32 += 8;
      }

      *(a1 + 656) = v32;
      v46 = v34++ == *(a1 + 560);
      v46 = v46 || v33 == v14;
      v33 += 8;
    }

    while (!v46);
  }

  v54 = &v47;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v54);
  v54 = &v50;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v54);
}

void sub_1B5424F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void ***a15)
{
  a15 = &a9;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a15);
  a9 = &a12;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void kaldi::quasar::SeevaStepInference::RunDecoder(uint64_t a1, std::string::size_type *a2, std::string::size_type *a3, void *a4, char a5, uint64_t a6)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v11 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v25, (a1 + 320), *a2);
  v12 = v11;
  v26 = v11;
  v13 = (a1 + 344);
  v14 = *a3;
  if (v11 >= v27)
  {
    v16 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v25, v13, v14);
  }

  else
  {
    if (*(a1 + 367) < 0)
    {
      std::string::__init_copy_ctor_external(v11, *(a1 + 344), *(a1 + 352));
    }

    else
    {
      v15 = *v13;
      v11->__r_.__value_.__r.__words[2] = *(a1 + 360);
      *&v11->__r_.__value_.__l.__data_ = v15;
    }

    v12[1].__r_.__value_.__r.__words[0] = v14;
    v16 = (v12 + 32);
  }

  v26 = v16;
  if ((a5 & 1) == 0 && *(a1 + 564) >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(a1 + 488);
      v20 = v19 + v17;
      v21 = *(*a4 + 8 * v18);
      if (v16 >= v27)
      {
        v16 = std::vector<std::pair<std::string,kaldi::quasar::ComputeEngineBufferItf const&>>::__emplace_back_slow_path<std::string const&,kaldi::quasar::ComputeEngineBufferItf&>(&v25, v20, *(*a4 + 8 * v18));
      }

      else
      {
        if (*(v20 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v16, *(v19 + v17), *(v19 + v17 + 8));
        }

        else
        {
          v22 = *v20;
          v16->__r_.__value_.__r.__words[2] = *(v20 + 16);
          *&v16->__r_.__value_.__l.__data_ = v22;
        }

        v16[1].__r_.__value_.__r.__words[0] = v21;
        v16 = (v16 + 32);
      }

      v26 = v16;
      ++v18;
      v17 += 24;
    }

    while (v18 < *(a1 + 564));
  }

  v23 = *(a1 + 16);
  memset(v24, 0, sizeof(v24));
  (*(*v23 + 136))(v23, &v25, a1 + 624, v24, a6);
  v28 = v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  v24[0] = &v25;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v24);
}

void sub_1B5425124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void kaldi::quasar::SeevaStepInference::CollectEncoderOutput(kaldi::quasar::SeevaStepInference *this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v8 = *(this + 84);
  v9 = *(this + 85);
  while (v8 != v9)
  {
    v22[0] = *v8;
    std::vector<TVertex *>::push_back[abi:ne200100](&v24, v22);
    ++v8;
  }

  (*(**(this + 1) + 104))(&v23);
  if (a2 || a3 != -1)
  {
    v10 = *(this + 45);
    (*(**(this + 1) + 112))(v22);
    v11 = (v22[1] - v22[0]) >> 3;
    v12 = (((v10 * v11) & (a3 >> 31)) + a3) / v10;
    v13 = v11 - 1;
    v14 = (((v10 * v11) & (a2 >> 31)) + a2) / v10;
    if (v13 < v14)
    {
      LODWORD(v14) = v13;
    }

    if (v13 < v12)
    {
      v12 = v13;
    }

    __p = 0;
    v20 = 0;
    v21 = 0;
    if (v14 <= v12)
    {
      v15 = 8 * v14;
      v16 = v12 - v14 + 1;
      do
      {
        v18 = *(v22[0] + v15);
        std::vector<TVertex *>::push_back[abi:ne200100](&__p, &v18);
        v15 += 8;
        --v16;
      }

      while (v16);
    }

    (*(**(this + 1) + 104))(*(this + 1), &__p, 0);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }

    __p = v22;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
    v17 = v23;
    v23 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  else
  {
    *a4 = v23;
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_1B542537C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a14;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v20 = a17;
  a17 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void *kaldi::quasar::SeevaStepInference::ResetGraph(kaldi::quasar::SeevaStepInference *this)
{
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 81);

  return std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](this + 84);
}

void kaldi::quasar::SeevaStepInferenceConfig::Register(uint64_t a1, uint64_t a2)
{
  kaldi::quasar::SeevaInferenceConfig::Register(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of frames in each batch");
  (*(*a2 + 8))(a2, v6, a1 + 144, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pad-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "if the whole audio is too short, pad to this length");
  (*(*a2 + 8))(a2, v6, a1 + 148, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "the beam size used in the model");
  (*(*a2 + 8))(a2, v6, a1 + 152, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "time-reduction-factor");
  std::string::basic_string[abi:ne200100]<0>(__p, "source sequence length reduction factor in the model");
  (*(*a2 + 8))(a2, v6, a1 + 156, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-decode-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "the maximum number of decoding steps");
  (*(*a2 + 8))(a2, v6, a1 + 160, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "coverage-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "if > 0, use this value as the coverage penalty.");
  (*(*a2 + 24))(a2, v6, a1 + 164, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "utt-end-beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "if > 0, use this beam at the utterance end.");
  (*(*a2 + 24))(a2, v6, a1 + 168, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "safe-align-thresh");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of steps for alignment wiggle room");
  (*(*a2 + 8))(a2, v6, a1 + 172, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "init-wait-time");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of frames before running the first generation step");
  (*(*a2 + 8))(a2, v6, a1 + 176, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "cont-wait-time");
  std::string::basic_string[abi:ne200100]<0>(__p, "number of frames before running the continuous generation step");
  (*(*a2 + 8))(a2, v6, a1 + 180, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "rb-steps-fail");
  std::string::basic_string[abi:ne200100]<0>(__p, "for early termination (failed), rollback this number of steps");
  (*(*a2 + 8))(a2, v6, a1 + 184, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "rb-steps-boundary");
  std::string::basic_string[abi:ne200100]<0>(__p, "for hitting boundary, rollback this number of steps");
  (*(*a2 + 8))(a2, v6, a1 + 188, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "encoder-only");
  std::string::basic_string[abi:ne200100]<0>(__p, "only streaming the encoder part");
  (**a2)(a2, v6, a1 + 192, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "min-attn-weight");
  std::string::basic_string[abi:ne200100]<0>(__p, "the minimum attention weight for a valid generation step");
  (*(*a2 + 24))(a2, v6, a1 + 196, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5425AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void kaldi::quasar::SeevaInferenceConfig::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "length-penalty");
  std::string::basic_string[abi:ne200100]<0>(__p, "if >= 0, use this value as length penalty weight. Default means using the default in the graph");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "pad-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "if the whole audio is too short, pad to this length");
  (*(*a2 + 8))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "mmapped-graph");
  std::string::basic_string[abi:ne200100]<0>(__p, "is it a memory mapped graph?");
  (**a2)(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "num-inter-op-threads");
  std::string::basic_string[abi:ne200100]<0>(__p, "The maximum number of threads for inter ops in TF graph");
  (*(*a2 + 8))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "num-intra-op-threads");
  std::string::basic_string[abi:ne200100]<0>(__p, "The maximum number of threads for intra ops in TF graph");
  (*(*a2 + 8))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "default-device");
  std::string::basic_string[abi:ne200100]<0>(__p, "TF default device");
  (*(*a2 + 40))(a2, v6, a1 + 32, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "catf-input");
  std::string::basic_string[abi:ne200100]<0>(__p, "the catf input, a list of comma delimited values");
  (*(*a2 + 40))(a2, v6, a1 + 56, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "allow-soft-placement");
  std::string::basic_string[abi:ne200100]<0>(__p, "TF allow soft placement");
  (**a2)(a2, v6, a1 + 80, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "log-device-placement");
  std::string::basic_string[abi:ne200100]<0>(__p, "TF log device placement");
  (**a2)(a2, v6, a1 + 81, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "profiling-granularity");
  std::string::basic_string[abi:ne200100]<0>(__p, "Level of profiling (higher means more precise breakdown per operation)");
  (*(*a2 + 8))(a2, v6, a1 + 84, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-config-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "The config file for the model");
  (*(*a2 + 40))(a2, v6, a1 + 88, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-config-binary");
  std::string::basic_string[abi:ne200100]<0>(__p, "is the config file binary?");
  (**a2)(a2, v6, a1 + 112, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-config-end-token");
  std::string::basic_string[abi:ne200100]<0>(__p, "The config file's end token");
  (*(*a2 + 40))(a2, v6, a1 + 120, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5426174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t kaldi::quasar::SeevaStepInferenceTensorNames::SeevaStepInferenceTensorNames(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(result + 40) = *(a2 + 5);
  *(result + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(result + 64) = *(a2 + 8);
  *(result + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(result + 88) = *(a2 + 11);
  *(result + 72) = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v6 = a2[6];
  *(result + 112) = *(a2 + 14);
  *(result + 96) = v6;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 120);
  *(result + 136) = *(a2 + 17);
  *(result + 120) = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v8 = a2[9];
  *(result + 160) = *(a2 + 20);
  *(result + 144) = v8;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v9 = *(a2 + 168);
  *(result + 184) = *(a2 + 23);
  *(result + 168) = v9;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v10 = a2[12];
  *(result + 208) = *(a2 + 26);
  *(result + 192) = v10;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = 0;
  *(result + 216) = *(a2 + 216);
  *(result + 232) = *(a2 + 29);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(result + 240) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 240) = a2[15];
  *(result + 256) = *(a2 + 32);
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0;
  *(result + 280) = 0;
  *(result + 264) = *(a2 + 33);
  *(result + 272) = a2[17];
  *(a2 + 33) = 0;
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 304) = 0;
  *(result + 288) = a2[18];
  *(result + 304) = *(a2 + 38);
  *(a2 + 36) = 0;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(result + 312) = 0;
  *(result + 320) = 0;
  *(result + 328) = 0;
  *(result + 312) = *(a2 + 39);
  *(result + 320) = a2[20];
  *(a2 + 39) = 0;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  *(result + 336) = *(a2 + 42);
  *(result + 344) = *(a2 + 43);
  v11 = result + 352;
  v12 = *(a2 + 44);
  v13 = *(a2 + 45);
  *(result + 352) = v12;
  *(result + 360) = v13;
  if (v13)
  {
    *(v12 + 16) = v11;
    *(a2 + 43) = a2 + 22;
    *(a2 + 44) = 0;
    *(a2 + 45) = 0;
  }

  else
  {
    *(result + 344) = v11;
  }

  *(result + 368) = *(a2 + 368);
  return result;
}

void kaldi::quasar::SeevaStepInferenceTensorNames::~SeevaStepInferenceTensorNames(kaldi::quasar::SeevaStepInferenceTensorNames *this)
{
  std::__tree<int>::destroy(this + 344, *(this + 44));
  v2 = (this + 312);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 288);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 264);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
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

void kaldi::quasar::SeevaStepInferenceConfig::~SeevaStepInferenceConfig(void **this)
{
  *this = &unk_1F2D122A8;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

uint64_t std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B54265C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t kaldi::ScoreCacheFasterDecoder::ScoreCacheFasterDecoder(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *(a1 + 48) = 0;
  v5 = a1 + 48;
  *(a1 + 40) = a4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = xmmword_1B5AE71B0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a2;
  v6 = *a3;
  v7 = *(a3 + 12);
  *(a1 + 168) = 0u;
  *(a1 + 148) = v7;
  *(a1 + 136) = v6;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  v8 = *(a1 + 152);
  *(a1 + 32) = v8;
  *(a1 + 24) = 1;
  v33 = 0;
  address = 0;
  v9 = MEMORY[0x1E69E9A60];
  v10 = vm_allocate(*MEMORY[0x1E69E9A60], &address, 28 * v8, 1711276033);
  if (v10)
  {
    v30 = v10;
    if (kaldi::g_kaldi_verbose_level < 0)
    {
      goto LABEL_9;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
    v13 = MEMORY[0x1B8C84BB0](v32, a1);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": Could not vm_allocate ", 24);
    v15 = MEMORY[0x1B8C84C30](v14, 28 * *(a1 + 32));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " of ", 4);
    v17 = strlen((0x80000001B5AFEAF8 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, 0x80000001B5AFEAF8 & 0x7FFFFFFFFFFFFFFFLL, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
    MEMORY[0x1B8C84C00](v19, v30);
    goto LABEL_8;
  }

  *(a1 + 16) = address;
  v11 = vm_allocate(*v9, &v33, 4 * *(a1 + 32), 1711276033);
  if (v11)
  {
    v31 = v11;
    if (kaldi::g_kaldi_verbose_level < 0)
    {
      goto LABEL_9;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
    v20 = MEMORY[0x1B8C84BB0](v32, a1);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ": Could not vm_allocate ", 24);
    v22 = MEMORY[0x1B8C84C30](v21, 4 * *(a1 + 32));
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " of ", 4);
    v24 = *(MEMORY[0x1E69E5480] + 8);
    v25 = strlen((v24 & 0x7FFFFFFFFFFFFFFFLL));
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24 & 0x7FFFFFFFFFFFFFFFLL, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": ", 2);
    MEMORY[0x1B8C84C00](v27, v31);
LABEL_8:
    kaldi::KaldiLogMessage::~KaldiLogMessage(v32);
LABEL_9:
    exception = __cxa_allocate_exception(8uLL);
    v29 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v29, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = v33;
  *(a1 + 8) = 0;
  kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(v5, 0x3E8uLL);
  return a1;
}

void sub_1B5426854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::locale a11)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a11);
  v15 = v12[27];
  if (v15)
  {
    v12[28] = v15;
    operator delete(v15);
  }

  a11.__locale_ = (v13 + 3);
  std::vector<kaldi::ScoreCacheFasterDecoder::LmTrie>::__destroy_vector::operator()[abi:ne200100](&a11);
  v16 = *v13;
  if (*v13)
  {
    v12[22] = v16;
    operator delete(v16);
  }

  kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::~HashList(v11);
  _Unwind_Resume(a1);
}

uint64_t kaldi::ScoreCacheFasterDecoder::Decode(kaldi::ScoreCacheFasterDecoder *this, kaldi::DecodableInterface *a2)
{
  v4 = *(this + 7);
  if (v4 != -1)
  {
    v5 = *(this + 9);
    do
    {
      v6 = (v5 + 16 * v4);
      v6[1] = 0;
      v4 = *v6;
    }

    while (v4 != -1);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  *(this + 7) = -1;
  if (v7)
  {
    do
    {
      kaldi::ScoreCacheFasterDecoder::DeleteTokenChain(this, *(v7 + 8));
      v8 = *(v7 + 16);
      *(v7 + 16) = *(this + 12);
      *(this + 12) = v7;
      v7 = v8;
    }

    while (v8);
  }

  v10 = *(this + 24);
  v9 = *(this + 25);
  if (v9 != v10)
  {
    v11 = v9 - 32;
    do
    {
      std::__tree<int>::destroy(v11, *(v11 + 8));
      v12 = v11 == v10;
      v11 -= 32;
    }

    while (!v12);
  }

  *(this + 25) = v10;
  v13 = *(this + 5);
  if (v13)
  {
    LODWORD(v13) = (**v13)(v13);
    v10 = *(this + 25);
  }

  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v31 = v13;
  if (v10 >= *(this + 26))
  {
    v14 = std::vector<kaldi::ScoreCacheFasterDecoder::LmTrie>::__emplace_back_slow_path<kaldi::ScoreCacheFasterDecoder::LmTrie>(this + 24, &v29);
  }

  else
  {
    std::map<int,int>::map[abi:ne200100](v10, &v29);
    *(v10 + 24) = v31;
    v14 = v10 + 32;
    *(this + 25) = v10 + 32;
  }

  v15 = (this + 48);
  *(this + 25) = v14;
  std::__tree<int>::destroy(&v29, v30[0]);
  v16 = (*(**(this + 16) + 24))(*(this + 16));
  v17 = v16;
  kaldi::ScoreCacheFasterDecoder::NewToken(this, 0, 0, v16 << 32, 0.0);
  v19 = v18;
  v20 = v17 % *(this + 8);
  v21 = (*(this + 9) + 16 * v20);
  v22 = kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(this + 48);
  *v22 = v17;
  *(v22 + 8) = v19;
  v23 = v21[1];
  if (v23)
  {
    *(v22 + 16) = *(v23 + 16);
    *(v23 + 16) = v22;
    v21[1] = v22;
  }

  else
  {
    v24 = *(this + 7);
    if (v24 != -1)
    {
      v15 = (*(*(this + 9) + 16 * v24 + 8) + 16);
    }

    *v15 = v22;
    *(v22 + 16) = 0;
    *v21 = v24;
    v21[1] = v22;
    *(this + 7) = v20;
  }

  kaldi::ScoreCacheFasterDecoder::ProcessNonemitting(this, 3.4028e38);
  result = (*(*a2 + 8))(a2, 0xFFFFFFFFLL);
  if ((result & 1) == 0)
  {
    v27 = 0;
    do
    {
      v28 = kaldi::ScoreCacheFasterDecoder::ProcessEmitting(this, a2, v27, v26);
      kaldi::ScoreCacheFasterDecoder::ProcessNonemitting(this, v28);
      result = (*(*a2 + 8))(a2, v27);
      v27 = (v27 + 1);
    }

    while ((result & 1) == 0);
  }

  return result;
}

uint64_t *kaldi::ScoreCacheFasterDecoder::ClearToks(uint64_t *this, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = this;
    do
    {
      this = kaldi::ScoreCacheFasterDecoder::DeleteTokenChain(v3, *(v2 + 8));
      v4 = *(v2 + 16);
      *(v2 + 16) = v3[12];
      v3[12] = v2;
      v2 = v4;
    }

    while (v4);
  }

  return this;
}

float kaldi::ScoreCacheFasterDecoder::NewToken(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    LODWORD(a1) = *(*a1 + 4 * v6 - 4);
    *(v5 + 8) = v6 - 1;
  }

  else
  {
    a1 = *(a1 + 24);
    if (a1 >= *(v5 + 32))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      kaldi::quasar::TooManyTokensError::TooManyTokensError(exception, "ScoreCacheFasterDecoder: Ran out of token storage");
    }

    *(v5 + 24) = a1 + 1;
  }

  v7 = *(v5 + 16) + 28 * a1;
  *(v7 + 20) = 1;
  *v7 = a3;
  *(v7 + 8) = a4;
  if (a2)
  {
    v8 = *(v5 + 16) + 28 * a2;
    ++*(v8 + 20);
    v9 = *(v8 + 24) + *&a4;
  }

  else
  {
    v9 = *&a4;
  }

  result = v9 + a5;
  *(v7 + 24) = result;
  *(v7 + 16) = a2;
  return result;
}

void kaldi::ScoreCacheFasterDecoder::ProcessNonemitting(kaldi::ScoreCacheFasterDecoder *this, float a2)
{
  v5 = this + 168;
  v4 = *(this + 21);
  v6 = *(this + 6);
  v44 = this + 168;
  v45 = this + 48;
  if (v6)
  {
    do
    {
      *&v46 = *v6;
      DWORD2(v46) = *(v6 + 8);
      std::vector<std::pair<unsigned long long,unsigned int>>::push_back[abi:ne200100](v5, &v46);
      v6 = *(v6 + 16);
    }

    while (v6);
    goto LABEL_5;
  }

  v7 = *(this + 22);
LABEL_6:
  while (2)
  {
    if (v4 != v7)
    {
      v9 = *(v7 - 16);
      v7 -= 16;
      v8 = v9;
      v10 = *(v7 + 8);
      *(this + 22) = v7;
      v11 = *(this + 2) + 28 * v10;
      if (*(v11 + 24) > a2)
      {
        continue;
      }

      v12 = HIDWORD(v8);
      v13 = *(this + 16);
      v49 = 0;
      (*(*v13 + 136))(v13, v8, &v46);
      v43 = v8 >> 32;
      while (1)
      {
        if (v46)
        {
          if ((*(*v46 + 24))(v46))
          {
            if (v46)
            {
              (*(*v46 + 8))();
              goto LABEL_5;
            }

LABEL_52:
            if (v48)
            {
              --*v48;
            }

LABEL_5:
            v4 = *(this + 21);
            v7 = *(this + 22);
            goto LABEL_6;
          }

          if (v46)
          {
            v15 = (*(*v46 + 32))();
            goto LABEL_15;
          }
        }

        else if (v49 >= v47)
        {
          goto LABEL_52;
        }

        v15 = *(&v46 + 1) + 16 * v49;
LABEL_15:
        if (*v15)
        {
          goto LABEL_45;
        }

        v16 = *v15;
        v17 = HIDWORD(*v15);
        v18 = *(v15 + 8);
        v19 = *(v15 + 12);
        if (!v17)
        {
          goto LABEL_30;
        }

        v20 = *(this + 5);
        if (!v20)
        {
          v23 = kaldi::ScoreCacheFasterDecoder::AddLmState(this, v12, v17, 0);
          goto LABEL_31;
        }

        if (!(*(*v20 + 32))(v20, *(*(this + 24) + 32 * v43 + 24), v17, &v50))
        {
          v18 = INFINITY;
LABEL_30:
          v23 = v12;
          goto LABEL_31;
        }

        v21 = v18;
        v18 = NAN;
        if (v21 != -INFINITY && *(&v50 + 2) != -INFINITY)
        {
          if (*(&v50 + 2) == INFINITY || v21 == INFINITY)
          {
            v18 = INFINITY;
          }

          else
          {
            v18 = *(&v50 + 2) + v21;
          }
        }

        LODWORD(v17) = DWORD1(v50);
        v23 = kaldi::ScoreCacheFasterDecoder::AddLmState(this, v12, SDWORD1(v50), SHIDWORD(v50));
LABEL_31:
        v14.n128_f32[0] = *(v11 + 24) + v18;
        if (v14.n128_f32[0] < a2)
        {
          v24 = v19 + (v23 << 32);
          v25 = *(this + 9);
          v26 = (v25 + 16 * (v24 % *(this + 8)));
          v27 = v26[1];
          if (v27)
          {
            v28 = *v26;
            v29 = v45;
            if (v28 != -1)
            {
              v29 = (*(v25 + 16 * v28 + 8) + 16);
            }

            v30 = *(v27 + 16);
            for (i = *v29; i != v30; i = *(i + 16))
            {
              if (*i == v24)
              {
                if (*(*(this + 2) + 28 * *(i + 8) + 24) > v14.n128_f32[0])
                {
                  kaldi::ScoreCacheFasterDecoder::NewToken(this, v10, v16 | (v17 << 32), LODWORD(v18) | (v19 << 32), 0.0);
                  v42 = v41;
                  kaldi::ScoreCacheFasterDecoder::DeleteTokenChain(this, *(i + 8));
                  *(i + 8) = v42;
                  *&v50 = v24;
                  DWORD2(v50) = v42;
                  std::vector<std::pair<unsigned long long,unsigned int>>::push_back[abi:ne200100](v44, &v50);
                }

                goto LABEL_45;
              }
            }
          }

          kaldi::ScoreCacheFasterDecoder::NewToken(this, v10, v16 | (v17 << 32), LODWORD(v18) | (v19 << 32), 0.0);
          v33 = v32;
          v34 = *(this + 8);
          v35 = *(this + 9);
          v36 = kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(v45);
          v37 = (v35 + 16 * (v24 % v34));
          *v36 = v24;
          *(v36 + 8) = v33;
          v38 = v37[1];
          if (v38)
          {
            *(v36 + 16) = *(v38 + 16);
            *(v38 + 16) = v36;
            v37[1] = v36;
          }

          else
          {
            v39 = *(this + 7);
            v40 = v45;
            if (v39 != -1)
            {
              v40 = (*(*(this + 9) + 16 * v39 + 8) + 16);
            }

            *v40 = v36;
            *(v36 + 16) = 0;
            *v37 = v39;
            v37[1] = v36;
            *(this + 7) = v24 % v34;
          }

          *&v50 = v24;
          DWORD2(v50) = v33;
          std::vector<std::pair<unsigned long long,unsigned int>>::push_back[abi:ne200100](v44, &v50);
        }

LABEL_45:
        if (v46)
        {
          (*(*v46 + 40))(v46, v14);
        }

        else
        {
          ++v49;
        }
      }
    }

    break;
  }
}

void sub_1B5427148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

float kaldi::ScoreCacheFasterDecoder::ProcessEmitting(kaldi::ScoreCacheFasterDecoder *this, kaldi::DecodableInterface *a2, unsigned int a3, float a4)
{
  v6 = *(this + 7);
  if (v6 != -1)
  {
    v7 = *(this + 9);
    do
    {
      v8 = (v7 + 16 * v6);
      v8[1] = 0;
      v6 = *v8;
    }

    while (v6 != -1);
  }

  v9 = *(this + 6);
  *(this + 6) = 0;
  *(this + 7) = -1;
  v83 = 0;
  v82 = 0.0;
  v81 = 0;
  v10 = v9;
  v11 = kaldi::GetCutoffHelper<kaldi::ScoreCacheFasterDecoder,kaldi::ScoreCacheFasterDecoderOptions,kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::Elem>(this, this + 136, v9, &v83, &v82, &v81, 1, a4);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v76, 3);
    v12 = MEMORY[0x1B8C84C30](&v76, v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " tokens active.", 15);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v76);
  }

  v74 = this + 48;
  v13 = (*(this + 40) * v83);
  if (*(this + 8) < v13)
  {
    kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(v74, v13);
  }

  if (!v81)
  {
    v18 = v10;
    v19 = INFINITY;
    if (!v10)
    {
      return v19;
    }

    goto LABEL_48;
  }

  v14 = *v81;
  v15 = HIDWORD(*v81);
  v16 = *(v81 + 8);
  if (v16 && *(this + 8) >= v16)
  {
    v17 = *(this + 2) + 28 * v16;
  }

  else
  {
    v17 = 0;
  }

  v20 = *(this + 16);
  v80 = 0;
  (*(*v20 + 136))(v20, v14, &v76);
  v21 = v14 >> 32;
  v19 = INFINITY;
  while (1)
  {
    if (!v76.__locale_)
    {
      if (v80 >= v78)
      {
        goto LABEL_45;
      }

      goto LABEL_21;
    }

    if ((*(*v76.__locale_ + 24))(v76.__locale_))
    {
      break;
    }

    if (v76.__locale_)
    {
      v22 = (*(*v76.__locale_ + 32))();
      goto LABEL_22;
    }

LABEL_21:
    v22 = (v77 + 16 * v80);
LABEL_22:
    v23 = *v22;
    if (v23)
    {
      v24 = *(v22 + 1);
      v25 = v22[2];
      if (v24)
      {
        v26 = *(this + 5);
        if (v26)
        {
          if ((*(*v26 + 32))(v26, *(*(this + 24) + 32 * v21 + 24)))
          {
            v27 = NAN;
            if (v25 != -INFINITY)
            {
              v27 = NAN;
              if (v86 != -INFINITY)
              {
                if (v86 == INFINITY || v25 == INFINITY)
                {
                  v27 = INFINITY;
                }

                else
                {
                  v27 = v25 + v86;
                }
              }
            }

            kaldi::ScoreCacheFasterDecoder::AddLmState(this, v15, v85, v87);
          }

          else
          {
            v27 = INFINITY;
          }

          v25 = v27;
        }

        else
        {
          kaldi::ScoreCacheFasterDecoder::AddLmState(this, v15, v24, 0);
        }
      }

      v29 = (**a2)(a2, a3, v23);
      v30 = v82 + ((v25 + *(v17 + 24)) - v29);
      if (v30 < v19)
      {
        v19 = v30;
      }
    }

    if (v76.__locale_)
    {
      (*(*v76.__locale_ + 40))(v76.__locale_);
    }

    else
    {
      ++v80;
    }
  }

  if (v76.__locale_)
  {
    (*(*v76.__locale_ + 8))();
    goto LABEL_47;
  }

LABEL_45:
  if (v79)
  {
    --*v79;
  }

LABEL_47:
  v18 = v10;
  if (!v10)
  {
    return v19;
  }

LABEL_48:
  while (2)
  {
    v31 = *(v18 + 8);
    v32 = *(this + 2) + 28 * v31;
    if (*(v32 + 24) >= v11)
    {
      goto LABEL_99;
    }

    v73 = *(v18 + 8);
    v71 = v18;
    v33 = *v18;
    v34 = HIDWORD(*v18);
    v35 = *(this + 16);
    v80 = 0;
    (*(*v35 + 136))(v35, v33, &v76);
    v72 = v33 >> 32;
    while (2)
    {
      if (!v76.__locale_)
      {
        if (v80 >= v78)
        {
          goto LABEL_96;
        }

        goto LABEL_55;
      }

      if (!(*(*v76.__locale_ + 24))(v76.__locale_))
      {
        if (v76.__locale_)
        {
          v36 = (*(*v76.__locale_ + 32))();
          goto LABEL_56;
        }

LABEL_55:
        v36 = v77 + 16 * v80;
LABEL_56:
        if (*v36)
        {
          v37 = *v36;
          v38 = *(v36 + 8);
          v39 = *(v36 + 12);
          v40 = (**a2)(a2, a3, *v36);
          v41 = HIDWORD(v37);
          if (!HIDWORD(v37))
          {
            goto LABEL_71;
          }

          v42 = *(this + 5);
          if (v42)
          {
            if ((*(*v42 + 32))(v42, *(*(this + 24) + 32 * v72 + 24), HIDWORD(v37), v84))
            {
              v43 = v38;
              v38 = NAN;
              if (v43 != -INFINITY && v86 != -INFINITY)
              {
                if (v86 == INFINITY || v43 == INFINITY)
                {
                  v38 = INFINITY;
                }

                else
                {
                  v38 = v86 + v43;
                }
              }

              LODWORD(v41) = v85;
              v45 = kaldi::ScoreCacheFasterDecoder::AddLmState(this, v34, v85, v87);
              goto LABEL_72;
            }

            v38 = INFINITY;
LABEL_71:
            v45 = v34;
          }

          else
          {
            v45 = kaldi::ScoreCacheFasterDecoder::AddLmState(this, v34, SHIDWORD(v37), 0);
          }

LABEL_72:
          v46 = (*(v32 + 24) + v38) - v40;
          if (v46 < v19)
          {
            v47 = -v40;
            v48 = v39 + (v45 << 32);
            v49 = *(this + 9);
            v50 = (v49 + 16 * (v48 % *(this + 8)));
            v51 = v50[1];
            if (v51)
            {
              v52 = *v50;
              v53 = (this + 48);
              if (v52 != -1)
              {
                v53 = (*(v49 + 16 * v52 + 8) + 16);
              }

              v54 = *(v51 + 16);
              for (i = *v53; i != v54; i = *(i + 16))
              {
                if (*i == v48)
                {
                  if ((v46 + v82) < v19)
                  {
                    v19 = v46 + v82;
                  }

                  if (v46 < *(*(this + 2) + 28 * *(i + 8) + 24))
                  {
                    kaldi::ScoreCacheFasterDecoder::NewToken(this, v73, v37 | (v41 << 32), LODWORD(v38) | (v39 << 32), v47);
                    v67 = v66;
                    kaldi::ScoreCacheFasterDecoder::DeleteTokenChain(this, *(i + 8));
                    *(i + 8) = v67;
                  }

                  goto LABEL_91;
                }
              }
            }

            v56 = v46 + v82;
            if (v56 < v19)
            {
              v19 = v56;
            }

            kaldi::ScoreCacheFasterDecoder::NewToken(this, v73, v37 | (v41 << 32), LODWORD(v38) | (v39 << 32), v47);
            v58 = v57;
            v59 = *(this + 8);
            v60 = *(this + 9);
            v61 = kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(v74);
            v62 = (v60 + 16 * (v48 % v59));
            *v61 = v48;
            *(v61 + 8) = v58;
            v63 = v62[1];
            if (v63)
            {
              *(v61 + 16) = *(v63 + 16);
              *(v63 + 16) = v61;
              v62[1] = v61;
            }

            else
            {
              v64 = *(this + 7);
              v65 = (this + 48);
              if (v64 != -1)
              {
                v65 = (*(*(this + 9) + 16 * v64 + 8) + 16);
              }

              *v65 = v61;
              *(v61 + 16) = 0;
              *v62 = v64;
              v62[1] = v61;
              *(this + 7) = v48 % v59;
            }
          }
        }

LABEL_91:
        if (v76.__locale_)
        {
          (*(*v76.__locale_ + 40))(v76.__locale_);
        }

        else
        {
          ++v80;
        }

        continue;
      }

      break;
    }

    if (v76.__locale_)
    {
      (*(*v76.__locale_ + 8))();
      goto LABEL_98;
    }

LABEL_96:
    if (v79)
    {
      --*v79;
    }

LABEL_98:
    v18 = v71;
    v31 = *(v71 + 8);
LABEL_99:
    v68 = *(v18 + 16);
    v69 = v18;
    kaldi::ScoreCacheFasterDecoder::DeleteTokenChain(this, v31);
    *(v69 + 16) = *(this + 12);
    *(this + 12) = v69;
    v18 = v68;
    if (v68)
    {
      continue;
    }

    return v19;
  }
}

void sub_1B54279D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

BOOL kaldi::ScoreCacheFasterDecoder::ReachedFinal(kaldi::ScoreCacheFasterDecoder *this)
{
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  do
  {
    v3 = *(*(this + 2) + 28 * v1[2] + 24);
    v4 = v3 + (*(**(this + 16) + 32))(*(this + 16), *v1);
    result = v4 != INFINITY;
    if (v4 != INFINITY)
    {
      break;
    }

    v1 = *(v1 + 2);
  }

  while (v1);
  return result;
}

uint64_t kaldi::ScoreCacheFasterDecoder::GetBestPath(uint64_t a1, uint64_t a2, kaldi::LatticeScoreCache *a3, kaldi::TransitionModel *a4)
{
  (*(*a2 + 224))(a2);
  v6 = kaldi::ScoreCacheFasterDecoder::ReachedFinal(a1);
  v7 = *(a1 + 48);
  if (!v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = 0;
    while (1)
    {
      v13 = v7[2];
      if (v13 && *(a1 + 32) >= v13)
      {
        v14 = *(a1 + 16) + 28 * v13;
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = 0;
        if (!v8)
        {
          goto LABEL_16;
        }
      }

      if (*(v14 + 24) < *(v8 + 24))
      {
LABEL_16:
        v8 = v14;
      }

      v7 = *(v7 + 2);
      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = INFINITY;
  do
  {
    v10 = *(a1 + 16) + 28 * v7[2];
    v11 = *(v10 + 24);
    v12 = v11 + (*(**(a1 + 128) + 32))(*(a1 + 128), *v7);
    if (v12 != INFINITY && v12 < v9)
    {
      v9 = v12;
      v8 = v10;
    }

    v7 = *(v7 + 2);
  }

  while (v7);
LABEL_18:
  if (!v8)
  {
    return 0;
  }

  __p = 0;
  v40 = 0;
  v15 = v8;
  v41 = 0;
  while (1)
  {
    v16 = *(v15 + 16);
    v17 = 0.0;
    if (v16 && *(a1 + 32) >= v16)
    {
      v17 = *(*(a1 + 16) + 28 * v16 + 24);
    }

    v18 = *(v15 + 24) - v17;
    v19 = *(v15 + 8);
    v20 = *(v15 + 12);
    *v36 = *v15;
    *&v37 = v19;
    *(&v37 + 1) = v18 - v19;
    v38 = v20;
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](&__p, v36);
    v21 = *(v15 + 16);
    if (!v21 || *(a1 + 32) < v21)
    {
      break;
    }

    v15 = *(a1 + 16) + 28 * v21;
  }

  (*(**(a1 + 128) + 24))(*(a1 + 128));
  v40 -= 20;
  v23 = (*(*a2 + 200))(a2);
  (*(*a2 + 176))(a2, v23);
  v33 = v6;
  v24 = v40 - __p;
  if (v40 - __p >= 1)
  {
    v25 = 0;
    v26 = v24 / 0x14 + 1;
    v27 = -(v24 / 0x14);
    v28 = 20 * ((v40 - __p) / 0x14uLL);
    do
    {
      *v36 = *(__p + v28 - 20);
      v37 = *(__p + v28 - 12);
      v38 = *(__p + v28 - 4);
      v38 = (*(*a2 + 200))(a2);
      (*(*a2 + 208))(a2, v23, v36);
      v23 = v38;
      if (v36[0])
      {
        if (a3)
        {
          v30 = __p;
          v29 = v40;
          v31 = kaldi::TransitionModel::TransitionIdToTransitionState(a4, v36[0]);
          v32 = kaldi::TransitionModel::TransitionStateToForwardPdf(a4, v31);
          kaldi::LatticeScoreCache::CacheScore(a3, v27 + -v25 - 858993459 * ((v29 - v30) >> 2), v32, *(&v37 + 1));
        }
      }

      else
      {
        ++v25;
      }

      --v26;
      ++v27;
      v28 -= 20;
    }

    while (v26 > 1);
  }

  if (v33)
  {
    v36[0] = (*(**(a1 + 128) + 32))(*(a1 + 128), *(v8 + 12));
    v36[1] = 0;
  }

  else
  {
    *v36 = 0;
  }

  (*(*a2 + 184))(a2, v23, v36);
  fst::RemoveEpsLocal<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_1B5427F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::RemoveEpsLocal<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::LatticeWeightTpl<float>>>::RemoveEpsLocalClass(&v1, a1);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v2)
  {
    v3 = v2;
    operator delete(v2);
  }
}

uint64_t kaldi::ScoreCacheFasterDecoder::GetRawLattice(uint64_t a1, uint64_t a2, kaldi::LatticeScoreCache *a3, kaldi::TransitionModel *a4)
{
  (*(*a2 + 224))(a2);
  v7 = kaldi::ScoreCacheFasterDecoder::ReachedFinal(a1);
  if (v7)
  {
    v47 = 0u;
    v48 = 0u;
    v49 = 1065353216;
    v8 = (*(*a2 + 200))(a2);
    (*(*a2 + 176))(a2, v8);
    v34 = v7;
    v9 = *(a1 + 48);
    if (v9)
    {
      v35 = 0;
      v36 = v8;
      do
      {
        v10 = *(a1 + 16) + 28 * v9[2];
        v11 = *(v10 + 24);
        if ((v11 + (*(**(a1 + 128) + 32))(*(a1 + 128), *v9)) != INFINITY)
        {
          __p = 0;
          v45 = 0;
          v12 = v10;
          v46 = 0;
          while (1)
          {
            v13 = *(v12 + 16);
            v14 = 0.0;
            if (v13 && *(a1 + 32) >= v13)
            {
              v14 = *(*(a1 + 16) + 28 * v13 + 24);
            }

            v15 = *(v12 + 24) - v14;
            v16 = *(v12 + 8);
            v17 = *(v12 + 12);
            *v41 = *v12;
            *&v42 = v16;
            *(&v42 + 1) = v15 - v16;
            v43 = v17;
            std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](&__p, v41);
            v18 = *(v12 + 16);
            if (!v18 || *(a1 + 32) < v18)
            {
              break;
            }

            v12 = *(a1 + 16) + 28 * v18;
          }

          v37 = v10;
          (*(**(a1 + 128) + 24))(*(a1 + 128));
          v45 -= 20;
          v40 = v8;
          v19 = v45 - __p;
          if (v45 - __p >= 1)
          {
            v20 = 0;
            v21 = v19 / 0x14 + 1;
            v22 = -(v19 / 0x14);
            v23 = 20 * ((v45 - __p) / 0x14uLL);
            do
            {
              *v41 = *(__p + v23 - 20);
              v42 = *(__p + v23 - 12);
              v43 = *(__p + v23 - 4);
              v43 = (*(*a2 + 200))(a2);
              (*(*a2 + 208))(a2, v40, v41);
              v40 = v43;
              if (v41[0])
              {
                if (a3)
                {
                  v24 = __p;
                  v25 = v45;
                  v26 = kaldi::TransitionModel::TransitionIdToTransitionState(a4, v41[0]);
                  v27 = kaldi::TransitionModel::TransitionStateToForwardPdf(a4, v26);
                  kaldi::LatticeScoreCache::CacheScore(a3, v22 + -v20 - 858993459 * ((v25 - v24) >> 2), v27, *(&v42 + 1));
                }
              }

              else
              {
                ++v20;
              }

              --v21;
              ++v22;
              v23 -= 20;
            }

            while (v21 > 1);
          }

          v39 = (*(**(a1 + 128) + 32))(*(a1 + 128), *(v37 + 12));
          if (v39 == INFINITY)
          {
            LODWORD(v8) = v36;
          }

          else
          {
            std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,int &,float &>(&v47, &v40);
            LODWORD(v8) = v36;
            v28 = *(a1 + 40);
            if (v28)
            {
              v29 = (*(*v28 + 16))(v28, *(*(a1 + 192) + 32 * v9[1] + 24));
              v35 |= v29 != INFINITY;
              v30 = v29 + v39;
            }

            else
            {
              v30 = v39;
            }

            *v41 = v30;
            v41[1] = 0;
            (*(*a2 + 184))(a2, v40, v41);
          }

          if (__p)
          {
            v45 = __p;
            operator delete(__p);
          }
        }

        v9 = *(v9 + 2);
      }

      while (v9);
    }

    else
    {
      v35 = 0;
    }

    v7 = v34;
    if (*(a1 + 40))
    {
      if ((v35 & 1) == 0)
      {
        for (i = v48; i; i = *i)
        {
          v32 = *(i + 4);
          __p = *(i + 5);
          (*(*a2 + 184))(a2, v32, &__p);
        }
      }
    }

    fst::RemoveEpsLocal<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v47);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Try to get lattice before decoding finishes.", 44);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v47);
  }

  return v7;
}

void sub_1B54286F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a9);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v9 - 64));
  _Unwind_Resume(a1);
}

void sub_1B54287D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::GetCutoffHelper<kaldi::ScoreCacheFasterDecoder,kaldi::ScoreCacheFasterDecoderOptions,kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::Elem>(void *a1, uint64_t a2, uint64_t a3, void *a4, float *a5, void *a6, int a7, float a8)
{
  v9 = a3;
  v11 = *(a2 + 8);
  if (*(a2 + 12))
  {
    v11 = *(a2 + 12);
  }

  if (a7)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 4) == 0x7FFFFFFF && v12 == 0)
  {
    v30 = 0;
    v31 = INFINITY;
    if (a3)
    {
      do
      {
        v32 = *(a1[2] + 28 * *(v9 + 8) + 24);
        if (v32 >= v31)
        {
          v33 = 1;
        }

        else
        {
          v31 = *(a1[2] + 28 * *(v9 + 8) + 24);
          v33 = a6 == 0;
        }

        if (!v33)
        {
          *a6 = v9;
          v31 = v32;
        }

        v9 = *(v9 + 16);
        ++v30;
      }

      while (v9);
    }

    if (a4)
    {
      *a4 = v30;
    }

    v34 = *a2;
    if (a5)
    {
      *a5 = v34;
    }

    return v31 + v34;
  }

  else
  {
    v47 = v12;
    v48 = *(a2 + 4);
    v14 = (a1 + 27);
    a1[28] = a1[27];
    v15 = 0;
    if (a3)
    {
      v16 = -INFINITY;
      v17 = INFINITY;
      do
      {
        v18 = *(a1[2] + 28 * *(v9 + 8) + 24);
        v20 = a1[28];
        v19 = a1[29];
        if (v20 >= v19)
        {
          v22 = *v14;
          v23 = v20 - *v14;
          v24 = v23 >> 2;
          v25 = (v23 >> 2) + 1;
          if (v25 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v26 = v19 - v22;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v27 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>((a1 + 27), v27);
          }

          *(4 * v24) = v18;
          v21 = 4 * v24 + 4;
          memcpy(0, v22, v23);
          v28 = a1[27];
          a1[27] = 0;
          a1[28] = v21;
          a1[29] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v20 = v18;
          v21 = (v20 + 1);
        }

        a1[28] = v21;
        if (v18 >= v17)
        {
          v29 = 1;
        }

        else
        {
          v17 = v18;
          v29 = a6 == 0;
        }

        if (!v29)
        {
          *a6 = v9;
          v17 = v18;
        }

        if (v18 > v16)
        {
          v16 = v18;
        }

        v9 = *(v9 + 16);
        ++v15;
      }

      while (v9);
    }

    else
    {
      v17 = INFINITY;
      v16 = -INFINITY;
    }

    if (a4)
    {
      *a4 = v15;
    }

    v36 = *a2;
    v35 = INFINITY;
    if (!*(a2 + 12))
    {
      v16 = INFINITY;
    }

    v37 = a1[27];
    v38 = a1[28];
    v39 = v38 - v37;
    if (v39 <= v48)
    {
      v41 = v47;
    }

    else
    {
      v40 = &v37[v48];
      v41 = v47;
      if (v40 != v38)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v37, v40, v38, a8);
        v37 = a1[27];
        v38 = a1[28];
        v39 = v38 - v37;
      }

      v35 = v37[v48];
    }

    v42 = v17 + v36;
    if (v39 > v41)
    {
      v43 = v17;
    }

    else
    {
      v43 = v16;
    }

    if (v41 && v39 > v41)
    {
      v44 = &v37[v41];
      if (v39 > v48)
      {
        v38 = &v37[v48];
      }

      if (v44 != v38)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v37, v44, v38, v43);
        v37 = *v14;
      }

      v43 = v37[v41];
    }

    if (v35 >= v42)
    {
      if (v43 <= v42)
      {
        *a5 = *a2;
        return v42;
      }

      else
      {
        if (a5)
        {
          *a5 = (v43 - v17) + *(a2 + 20);
        }

        return v43;
      }
    }

    else if (a5)
    {
      *a5 = (v35 - v17) + *(a2 + 20);
    }
  }

  return v35;
}

uint64_t *kaldi::ScoreCacheFasterDecoder::DeleteTokenChain(uint64_t *this, unsigned int a2)
{
  v2 = this[2];
  v3 = v2 + 28 * a2;
  v4 = *(v3 + 20) - 1;
  *(v3 + 20) = v4;
  if (!v4)
  {
    v5 = a2;
    v6 = *this;
    v7 = *(this + 2);
    do
    {
      LODWORD(v5) = *(v2 + 28 * v5 + 16);
      *(v6 + 4 * v7) = a2;
      v7 = *(this + 2) + 1;
      *(this + 2) = v7;
      if (!v5)
      {
        break;
      }

      v8 = v2 + 28 * v5;
      a2 = v5;
      v9 = *(v8 + 20) - 1;
      *(v8 + 20) = v9;
    }

    while (!v9);
  }

  return this;
}

uint64_t kaldi::ScoreCacheFasterDecoder::AddLmState(kaldi::ScoreCacheFasterDecoder *this, int a2, signed int a3, int a4)
{
  v6 = a2;
  v8 = *(this + 24);
  v9 = *(this + 25);
  v7 = (this + 192);
  v10 = v8 + 32 * a2;
  v13 = *(v10 + 8);
  v11 = v10 + 8;
  v12 = v13;
  if (v13)
  {
    v14 = v11;
    do
    {
      if (*(v12 + 28) >= a3)
      {
        v14 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < a3));
    }

    while (v12);
    if (v14 != v11 && *(v14 + 28) <= a3)
    {
      return *(v14 + 32);
    }
  }

  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v22 = a4;
  if (v9 >= *(this + 26))
  {
    v15 = std::vector<kaldi::ScoreCacheFasterDecoder::LmTrie>::__emplace_back_slow_path<kaldi::ScoreCacheFasterDecoder::LmTrie>(v7, &v20);
  }

  else
  {
    std::map<int,int>::map[abi:ne200100](v9, &v20);
    *(v9 + 24) = v22;
    v15 = v9 + 32;
    *(this + 25) = v9 + 32;
  }

  *(this + 25) = v15;
  std::__tree<int>::destroy(&v20, v21[0]);
  v16 = *(this + 24);
  v17 = v16 + 32 * v6;
  v18 = (((*(this + 25) - v16) >> 5) - 1);
  v20 = a3;
  v21[0] = v18;
  std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,unsigned long>>(v17, &v20);
  return ((*(this + 25) - *(this + 24)) >> 5) - 1;
}

uint64_t std::vector<kaldi::ScoreCacheFasterDecoder::LmTrie>::__emplace_back_slow_path<kaldi::ScoreCacheFasterDecoder::LmTrie>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>>(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  v16 = (32 * v2);
  *(std::map<int,int>::map[abi:ne200100]((32 * v2), a2) + 6) = *(a2 + 24);
  *&v16 = v16 + 32;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>,kaldi::ScoreCacheFasterDecoder::LmTrie*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<kaldi::ScoreCacheFasterDecoder::LmTrie>::~__split_buffer(&v14);
  return v13;
}

void sub_1B5428DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::ScoreCacheFasterDecoder::LmTrie>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::map<int,int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<quasar::PronType,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::PronType,int>,std::__tree_node<std::__value_type<quasar::PronType,int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>,kaldi::ScoreCacheFasterDecoder::LmTrie*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      std::map<int,int>::map[abi:ne200100](v4, v7);
      *(v4 + 24) = *(v7 + 24);
      v7 += 32;
      v4 = v12 + 32;
      v12 += 32;
    }

    while (v7 != a3);
    v10 = 1;
    while (v6 != a3)
    {
      std::__tree<int>::destroy(v6, *(v6 + 8));
      v6 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>,kaldi::ScoreCacheFasterDecoder::LmTrie*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>,kaldi::ScoreCacheFasterDecoder::LmTrie*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>,kaldi::ScoreCacheFasterDecoder::LmTrie*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::ScoreCacheFasterDecoder::LmTrie>,kaldi::ScoreCacheFasterDecoder::LmTrie*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 32;
    do
    {
      std::__tree<int>::destroy(v3, *(v3 + 8));
      v4 = v3 == v2;
      v3 -= 32;
    }

    while (!v4);
  }
}

void **std::__split_buffer<kaldi::ScoreCacheFasterDecoder::LmTrie>::~__split_buffer(void **a1)
{
  std::__split_buffer<kaldi::ScoreCacheFasterDecoder::LmTrie>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<kaldi::ScoreCacheFasterDecoder::LmTrie>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__tree<int>::destroy(i - 32, *(i - 24));
  }
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int,unsigned long>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::~HashList(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = *(v2 + 16);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[7];
  v5 = a1[8];
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v4[v6])
      {
        MEMORY[0x1B8C85310](v4[v6], 0x1020C806E52F545);
        v4 = a1[7];
        v5 = a1[8];
      }

      ++v6;
      v7 += 1024;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  if (v3 != v7 && kaldi::g_kaldi_verbose_level > -2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Possible memory leak: ", 22);
    v9 = MEMORY[0x1B8C84C30](v8, v3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " != ", 4);
    v11 = MEMORY[0x1B8C84C30](v10, v7);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": you might have forgotten to call Delete on ", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "some Elems", 10);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    v4 = a1[7];
  }

  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v13 = a1[3];
  if (v13)
  {
    a1[4] = v13;
    operator delete(v13);
  }

  return a1;
}

void std::vector<kaldi::ScoreCacheFasterDecoder::LmTrie>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      do
      {
        std::__tree<int>::destroy(v6, *(v6 + 8));
        v7 = v6 == v2;
        v6 -= 32;
      }

      while (!v7);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,int &,float &>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(void *a1)
{
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::DeleteStates(a1);
  result = (*(*a1 + 24))(a1);
  a1[1] = (*(a1 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

void fst::StateSort<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(uint64_t a1, void *a2)
{
  v4 = a2[1] - *a2;
  if ((*(*a1 + 160))(a1) == v4 >> 2)
  {
    if ((*(*a1 + 24))(a1) == -1)
    {
      return;
    }

    v5 = (*(*a1 + 64))(a1, 0xF3FFFFF0007, 0);
    v6 = (a2[1] - *a2) >> 2;
    LOBYTE(v26) = 0;
    std::vector<BOOL>::vector(&v48, v6);
    memset(v47, 0, sizeof(v47));
    memset(v46, 0, sizeof(v46));
    v7 = (*(*a1 + 24))(a1);
    (*(*a1 + 176))(a1, *(*a2 + 4 * v7));
    v24 = v5;
    v45 = 0;
    (*(*a1 + 128))(a1, &v43);
    v8 = v47;
    v9 = v46;
    v10 = vneg_f32(0x7F0000007FLL);
LABEL_4:
    if (!v43)
    {
      if (v45 >= v44)
      {
        goto LABEL_68;
      }

      goto LABEL_9;
    }

    if (!(*(*v43 + 16))(v43))
    {
      if (v43)
      {
        v11 = (*(*v43 + 24))();
LABEL_10:
        if ((*(v48 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = v9;
          goto LABEL_56;
        }

        (*(*a1 + 32))(&v40, a1, v11);
        v36 = v10;
        v38 = 0;
        v39 = 0;
        v37 = 0;
        std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](v8);
        v30 = 0;
        (*(*a1 + 136))(a1, v11, &v26);
        while (v26)
        {
          if ((*(*v26 + 24))(v26))
          {
            if (v26)
            {
              (*(*v26 + 8))();
              goto LABEL_26;
            }

LABEL_24:
            if (v29)
            {
              --*v29;
            }

LABEL_26:
            while (2)
            {
              v12 = v9;
              v14 = v11 >> 6;
              v15 = 1 << v11;
              if (((1 << v11) & v48[v14]) == 0)
              {
                v11 = *(*a2 + 4 * v11);
                if ((*(v48 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
                {
                  goto LABEL_28;
                }

                (*(*a1 + 32))(&v26, a1, v11);
                v36 = v26;
                std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v37, v27, v28, (v28 - v27) >> 2);
                if (v27)
                {
                  v28 = v27;
                  operator delete(v27);
                }

                std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::clear[abi:ne200100](v12);
                v30 = 0;
                (*(*a1 + 136))(a1, v11, &v26);
LABEL_39:
                if (v26)
                {
                  if ((*(*v26 + 24))(v26))
                  {
                    if (v26)
                    {
                      (*(*v26 + 8))();
                      goto LABEL_28;
                    }

LABEL_50:
                    if (v29)
                    {
                      --*v29;
                    }

LABEL_28:
                    v32 = v40;
                    v34 = 0;
                    v35 = 0;
                    __p = 0;
                    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v41, v42, (v42 - v41) >> 2);
                    (*(*a1 + 184))(a1, v11, &v32);
                    if (__p)
                    {
                      v34 = __p;
                      operator delete(__p);
                    }

                    (*(*a1 + 240))(a1, v11);
                    v25 = v15;
                    v16 = *v8;
                    if (v8[1] != *v8)
                    {
                      v17 = 0;
                      v18 = 0;
                      do
                      {
                        v19 = v16 + v17;
                        v26 = *(v16 + v17);
                        v27 = *(v16 + v17 + 8);
                        v29 = 0;
                        v30 = 0;
                        v28 = 0;
                        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v28, *(v16 + v17 + 16), *(v16 + v17 + 24), (*(v16 + v17 + 24) - *(v16 + v17 + 16)) >> 2);
                        v31 = *(v19 + 40);
                        v31 = *(*a2 + 4 * v31);
                        (*(*a1 + 208))(a1, v11, &v26);
                        if (v28)
                        {
                          v29 = v28;
                          operator delete(v28);
                        }

                        ++v18;
                        v16 = *v8;
                        v17 += 48;
                      }

                      while (v18 < 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 4));
                    }

                    v48[v14] |= v25;
                    v40 = v36;
                    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v41, v37, v38, (v38 - v37) >> 2);
                    v9 = v8;
                    v8 = v12;
                    continue;
                  }

                  if (v26)
                  {
                    v20 = (*(*v26 + 32))();
                    goto LABEL_45;
                  }
                }

                else if (v30 >= v28)
                {
                  goto LABEL_50;
                }

                v20 = v27 + 48 * v30;
LABEL_45:
                std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::push_back[abi:ne200100](v12, v20);
                if (v26)
                {
                  (*(*v26 + 40))(v26);
                }

                else
                {
                  ++v30;
                }

                goto LABEL_39;
              }

              break;
            }

            if (v37)
            {
              v38 = v37;
              operator delete(v37);
            }

            if (v41)
            {
              v42 = v41;
              operator delete(v41);
            }

LABEL_56:
            if (v43)
            {
              (*(*v43 + 32))(v43);
            }

            else
            {
              ++v45;
            }

            v9 = v12;
            goto LABEL_4;
          }

          if (!v26)
          {
            goto LABEL_18;
          }

          v13 = (*(*v26 + 32))();
LABEL_19:
          std::vector<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::push_back[abi:ne200100](v8, v13);
          if (v26)
          {
            (*(*v26 + 40))(v26);
          }

          else
          {
            ++v30;
          }
        }

        if (v30 >= v28)
        {
          goto LABEL_24;
        }

LABEL_18:
        v13 = v27 + 48 * v30;
        goto LABEL_19;
      }

LABEL_9:
      v11 = v45;
      goto LABEL_10;
    }

    if (v43)
    {
      (*(*v43 + 8))();
    }

LABEL_68:
    (*(*a1 + 192))(a1, v24, 0x3FFFFFFF0007);
    v26 = v46;
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v26);
    v26 = v47;
    std::vector<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v26);
    if (v48)
    {
      operator delete(v48);
    }
  }

  else
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v26, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v26, "ERROR");
    }

    v21 = fst::LogMessage::LogMessage(&v40, &v26);
    v22 = fst::cerr(v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "StateSort: bad order vector size: ", 34);
    MEMORY[0x1B8C84C30](v23, (a2[1] - *a2) >> 2);
    fst::LogMessage::~LogMessage(&v40);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v26);
    }

    (*(*a1 + 192))(a1, 4, 4);
  }
}

void sub_1B5429ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  fst::LogMessage::~LogMessage(&a29);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::tennessee::Collation<long long,long long>::SortInPlace<std::vector<long long>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  std::__function::__value_func<long long const& ()(long long const&)>::__value_func[abi:ne200100](v8, a3);
  v6 = (*(*a1 + 16))(a1);
  std::sort[abi:ne200100]<std::__wrap_iter<long long *>,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1}>(v4, v5, v6, v8);
  return std::__function::__value_func<long long const& ()(long long const&)>::~__value_func[abi:ne200100](v8);
}

void sub_1B542A1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = a9;
  a9 = 0;
  if (v13)
  {
    std::default_delete<std::vector<long long>>::operator()[abi:ne200100](&a9, v13);
  }

  std::make_unique[abi:ne200100]<quasar::tennessee::internal::ManagedImmutableSortedArrayStlVectorImpl<long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>,std::unique_ptr<std::vector<long long>>,0>(&a10);
  MEMORY[0x1B8C85350](v11, v10);
  _Unwind_Resume(a1);
}

void quasar::tennessee::Deserialize<long long,true>(uint64_t a1, quasar::tennessee::memory_mapping::VirtualMemoryFile **a2)
{
  v2 = *a2;
  *a2 = 0;
  v4 = v2;
  quasar::tennessee::generic_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::memory_mapping::VirtualMemoryFile,std::unique_ptr<quasar::tennessee::memory_mapping::VirtualMemoryFile>>::generic_flatbuf_ptr(&v5, &v4, 0);
  v3 = v4;
  v4 = 0;
  v5 = &unk_1F2D125C8;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::make_unique[abi:ne200100]<quasar::tennessee::internal::VmemFileImmutableSortedArrayFlatbufferVectorImpl<long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>,quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>,0>();
}

void sub_1B542A31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<long long const& ()(long long const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>,boost::iterators::counting_iterator<long long,boost::use_default,boost::use_default>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B542A468(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::default_delete<std::vector<long long>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1B8C85350);
  }
}

uint64_t std::sort[abi:ne200100]<std::__wrap_iter<long long *>,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1}>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = 126 - 2 * __clz((a2 - a1) >> 3);
  v7[0] = a3;
  v7[1] = a4;
  if (a2 == a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return std::__introsort<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,false>(a1, a2, v7, v5, 1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,false>(uint64_t result, uint64_t *a2, void *a3, uint64_t a4, char a5)
{
  v8 = result;
  while (2)
  {
    v9 = v8;
LABEL_3:
    v10 = 1 - a4;
    while (1)
    {
      v8 = v9;
      v11 = v10;
      v12 = a2 - v9;
      if (v12 > 2)
      {
        switch(v12)
        {
          case 3uLL:
            return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(v9, v9 + 1, a2 - 1, a3);
          case 4uLL:
            return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(v9, v9 + 1, v9 + 2, a2 - 1, a3);
          case 5uLL:
            return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
        }
      }

      else
      {
        if (v12 < 2)
        {
          return result;
        }

        if (v12 == 2)
        {
          v24 = *(a2 - 1);
          v30 = *v9;
          v31 = v24;
          v25 = *(a3[1] + 24);
          if (!v25 || (v26 = (*(*v25 + 48))(v25, &v31), (v27 = *(a3[1] + 24)) == 0))
          {
LABEL_41:
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v28 = (*(*v27 + 48))(v27, &v30);
          result = (*(**a3 + 16))(*a3, v26, v28);
          if ((result & 0x80000000) != 0)
          {
            v29 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v29;
          }

          return result;
        }
      }

      if (v12 <= 23)
      {
        if (a5)
        {
          return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(v9, a2, a3);
        }

        else
        {
          return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(v9, a2, a3);
        }
      }

      if (v11 == 1)
      {
        if (v9 != a2)
        {
          return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,long long *>(v9, a2, a2, a3);
        }

        return result;
      }

      v13 = v12 >> 1;
      v14 = &v9[v12 >> 1];
      if (v12 < 0x81)
      {
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(&v9[v12 >> 1], v9, a2 - 1, a3);
        if (a5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(v9, &v9[v12 >> 1], a2 - 1, a3);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(v9 + 1, v14 - 1, a2 - 2, a3);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(v9 + 2, &v9[v13 + 1], a2 - 3, a3);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(v14 - 1, v14, &v9[v13 + 1], a3);
        v15 = *v9;
        *v9 = *v14;
        *v14 = v15;
        if (a5)
        {
          goto LABEL_20;
        }
      }

      v16 = *(v9 - 1);
      v30 = *v9;
      v31 = v16;
      v17 = *(a3[1] + 24);
      if (!v17)
      {
        goto LABEL_41;
      }

      v18 = (*(*v17 + 48))(v17, &v31);
      v19 = *(a3[1] + 24);
      if (!v19)
      {
        goto LABEL_41;
      }

      v20 = (*(*v19 + 48))(v19, &v30);
      if (((*(**a3 + 16))(*a3, v18, v20) & 0x80000000) == 0)
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,long long *,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &>(v9, a2, a3);
        v9 = result;
        goto LABEL_25;
      }

LABEL_20:
      v21 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,long long *,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &>(v9, a2, a3);
      if ((v22 & 1) == 0)
      {
        goto LABEL_23;
      }

      v23 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(v9, v21, a3);
      v9 = v21 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(v21 + 1, a2, a3);
      if (result)
      {
        break;
      }

      v10 = v11 + 1;
      if (!v23)
      {
LABEL_23:
        result = std::__introsort<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,false>(v8, v21, a3, -v11, a5 & 1);
        v9 = v21 + 1;
LABEL_25:
        a5 = 0;
        a4 = -v11;
        goto LABEL_3;
      }
    }

    a4 = -v11;
    a2 = v21;
    if (!v23)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = *a2;
  v38 = *a1;
  v39 = v5;
  v6 = *(a4[1] + 24);
  if (!v6)
  {
    goto LABEL_23;
  }

  v10 = (*(*v6 + 48))(v6, &v39);
  v11 = *(a4[1] + 24);
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = (*(*v11 + 48))(v11, &v38);
  v13 = (*(**a4 + 16))(*a4, v10, v12);
  v14 = *a3;
  if ((v13 & 0x80000000) == 0)
  {
    v38 = *a2;
    v39 = v14;
    v15 = *(a4[1] + 24);
    if (v15)
    {
      v16 = (*(*v15 + 48))(v15, &v39);
      v17 = *(a4[1] + 24);
      if (v17)
      {
        v18 = (*(*v17 + 48))(v17, &v38);
        if (((*(**a4 + 16))(*a4, v16, v18) & 0x80000000) == 0)
        {
          return 0;
        }

        v31 = *a2;
        *a2 = *a3;
        *a3 = v31;
        v32 = *a2;
        v38 = *a1;
        v39 = v32;
        v33 = *(a4[1] + 24);
        if (v33)
        {
          v34 = (*(*v33 + 48))(v33, &v39);
          v35 = *(a4[1] + 24);
          if (v35)
          {
            v36 = (*(*v35 + 48))(v35, &v38);
            if (((*(**a4 + 16))(*a4, v34, v36) & 0x80000000) != 0)
            {
              v37 = *a1;
              *a1 = *a2;
              *a2 = v37;
            }

            return 1;
          }
        }
      }
    }

LABEL_23:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v38 = *a2;
  v39 = v14;
  v20 = *(a4[1] + 24);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = (*(*v20 + 48))(v20, &v39);
  v22 = *(a4[1] + 24);
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = (*(*v22 + 48))(v22, &v38);
  v24 = (*(**a4 + 16))(*a4, v21, v23);
  v25 = *a1;
  if (v24 < 0)
  {
    *a1 = *a3;
    goto LABEL_20;
  }

  *a1 = *a2;
  *a2 = v25;
  v26 = *a3;
  v38 = v25;
  v39 = v26;
  v27 = *(a4[1] + 24);
  if (!v27)
  {
    goto LABEL_23;
  }

  v28 = (*(*v27 + 48))(v27, &v39);
  v29 = *(a4[1] + 24);
  if (!v29)
  {
    goto LABEL_23;
  }

  v30 = (*(*v29 + 48))(v29, &v38);
  if (((*(**a4 + 16))(*a4, v28, v30) & 0x80000000) != 0)
  {
    v25 = *a2;
    *a2 = *a3;
LABEL_20:
    *a3 = v25;
  }

  return 1;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(a1, a2, a3, a5);
  v10 = *a4;
  v29 = *a3;
  v30 = v10;
  v11 = *(a5[1] + 24);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = (*(*v11 + 48))(v11, &v30);
  v13 = *(a5[1] + 24);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = (*(*v13 + 48))(v13, &v29);
  result = (*(**a5 + 16))(*a5, v12, v14);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v16 = *a3;
  *a3 = *a4;
  *a4 = v16;
  v17 = *a3;
  v29 = *a2;
  v30 = v17;
  v18 = *(a5[1] + 24);
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = (*(*v18 + 48))(v18, &v30);
  v20 = *(a5[1] + 24);
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = (*(*v20 + 48))(v20, &v29);
  result = (*(**a5 + 16))(*a5, v19, v21);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v22 = *a2;
  *a2 = *a3;
  *a3 = v22;
  v23 = *a2;
  v29 = *a1;
  v30 = v23;
  v24 = *(a5[1] + 24);
  if (!v24 || (v25 = (*(*v24 + 48))(v24, &v30), (v26 = *(a5[1] + 24)) == 0))
  {
LABEL_12:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v27 = (*(*v26 + 48))(v26, &v29);
  result = (*(**a5 + 16))(*a5, v25, v27);
  if ((result & 0x80000000) != 0)
  {
    v28 = *a1;
    *a1 = *a2;
    *a2 = v28;
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v37 = *a4;
  v38 = v12;
  v13 = *(a6[1] + 24);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = (*(*v13 + 48))(v13, &v38);
  v15 = *(a6[1] + 24);
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = (*(*v15 + 48))(v15, &v37);
  result = (*(**a6 + 16))(*a6, v14, v16);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v18 = *a4;
  *a4 = *a5;
  *a5 = v18;
  v19 = *a4;
  v37 = *a3;
  v38 = v19;
  v20 = *(a6[1] + 24);
  if (!v20)
  {
    goto LABEL_15;
  }

  v21 = (*(*v20 + 48))(v20, &v38);
  v22 = *(a6[1] + 24);
  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = (*(*v22 + 48))(v22, &v37);
  result = (*(**a6 + 16))(*a6, v21, v23);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v24 = *a3;
  *a3 = *a4;
  *a4 = v24;
  v25 = *a3;
  v37 = *a2;
  v38 = v25;
  v26 = *(a6[1] + 24);
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = (*(*v26 + 48))(v26, &v38);
  v28 = *(a6[1] + 24);
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = (*(*v28 + 48))(v28, &v37);
  result = (*(**a6 + 16))(*a6, v27, v29);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  v30 = *a2;
  *a2 = *a3;
  *a3 = v30;
  v31 = *a2;
  v37 = *a1;
  v38 = v31;
  v32 = *(a6[1] + 24);
  if (!v32 || (v33 = (*(*v32 + 48))(v32, &v38), (v34 = *(a6[1] + 24)) == 0))
  {
LABEL_15:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v35 = (*(*v34 + 48))(v34, &v37);
  result = (*(**a6 + 16))(*a6, v33, v35);
  if ((result & 0x80000000) != 0)
  {
    v36 = *a1;
    *a1 = *a2;
    *a2 = v36;
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        v22 = v10;
        v23 = v9;
        v11 = *(a3[1] + 24);
        if (!v11 || (v12 = (*(*v11 + 48))(v11, &v23), (v13 = *(a3[1] + 24)) == 0))
        {
LABEL_17:
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v14 = (*(*v13 + 48))(v13, &v22);
        result = (*(**a3 + 16))(*a3, v12, v14);
        if ((result & 0x80000000) != 0)
        {
          v15 = *v8;
          v16 = v7;
          while (1)
          {
            *(v4 + v16 + 8) = *(v4 + v16);
            if (!v16)
            {
              break;
            }

            v22 = *(v4 + v16 - 8);
            v23 = v15;
            v17 = *(a3[1] + 24);
            if (!v17)
            {
              goto LABEL_17;
            }

            v18 = (*(*v17 + 48))(v17, &v23);
            v19 = *(a3[1] + 24);
            if (!v19)
            {
              goto LABEL_17;
            }

            v20 = (*(*v19 + 48))(v19, &v22);
            result = (*(**a3 + 16))(*a3, v18, v20);
            v16 -= 8;
            if ((result & 0x80000000) == 0)
            {
              v21 = (v4 + v16 + 8);
              goto LABEL_14;
            }
          }

          v21 = v4;
LABEL_14:
          *v21 = v15;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(uint64_t result, void *a2, void *a3)
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      v20 = v8;
      v21 = v7;
      v9 = *(a3[1] + 24);
      if (!v9 || (v10 = (*(*v9 + 48))(v9, &v21), (v11 = *(a3[1] + 24)) == 0))
      {
LABEL_13:
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v12 = (*(*v11 + 48))(v11, &v20);
      result = (*(**a3 + 16))(*a3, v10, v12);
      if ((result & 0x80000000) != 0)
      {
        v13 = *v4;
        v14 = v4;
        do
        {
          v15 = *(v14 - 2);
          *v14 = *(v14 - 1);
          v20 = v15;
          v21 = v13;
          v16 = *(a3[1] + 24);
          if (!v16)
          {
            goto LABEL_13;
          }

          v17 = (*(*v16 + 48))(v16, &v21);
          v18 = *(a3[1] + 24);
          if (!v18)
          {
            goto LABEL_13;
          }

          v19 = (*(*v18 + 48))(v18, &v20);
          result = (*(**a3 + 16))(*a3, v17, v19);
          --v14;
        }

        while ((result & 0x80000000) != 0);
        *v14 = v13;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,long long *,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a1;
  v40 = *(a2 - 1);
  v41 = v4;
  v5 = *(a3[1] + 24);
  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = a2;
  v8 = (*(*v5 + 48))(v5, &v41);
  v9 = *(a3[1] + 24);
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = (*(*v9 + 48))(v9, &v40);
  if (((*(**a3 + 16))(*a3, v8, v10) & 0x80000000) != 0)
  {
    v12 = a1;
    while (1)
    {
      v18 = v12[1];
      ++v12;
      v40 = v18;
      v41 = v4;
      v19 = *(a3[1] + 24);
      if (!v19)
      {
        break;
      }

      v20 = (*(*v19 + 48))(v19, &v41);
      v21 = *(a3[1] + 24);
      if (!v21)
      {
        break;
      }

      v22 = (*(*v21 + 48))(v21, &v40);
      if (((*(**a3 + 16))(*a3, v20, v22) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_30:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v11 = a1 + 1;
  do
  {
    v12 = v11;
    if (v11 >= v7)
    {
      break;
    }

    v40 = *v11;
    v41 = v4;
    v13 = *(a3[1] + 24);
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = (*(*v13 + 48))(v13, &v41);
    v15 = *(a3[1] + 24);
    if (!v15)
    {
      goto LABEL_30;
    }

    v16 = (*(*v15 + 48))(v15, &v40);
    v17 = (*(**a3 + 16))(*a3, v14, v16);
    v11 = v12 + 1;
  }

  while ((v17 & 0x80000000) == 0);
LABEL_14:
  if (v12 < v7)
  {
    do
    {
      v23 = *--v7;
      v40 = v23;
      v41 = v4;
      v24 = *(a3[1] + 24);
      if (!v24)
      {
        goto LABEL_30;
      }

      v25 = (*(*v24 + 48))(v24, &v41);
      v26 = *(a3[1] + 24);
      if (!v26)
      {
        goto LABEL_30;
      }

      v27 = (*(*v26 + 48))(v26, &v40);
    }

    while (((*(**a3 + 16))(*a3, v25, v27) & 0x80000000) != 0);
  }

LABEL_26:
  if (v12 < v7)
  {
    v28 = *v12;
    *v12 = *v7;
    *v7 = v28;
    do
    {
      v29 = v12[1];
      ++v12;
      v40 = v29;
      v41 = v4;
      v30 = *(a3[1] + 24);
      if (!v30)
      {
        goto LABEL_30;
      }

      v31 = (*(*v30 + 48))(v30, &v41);
      v32 = *(a3[1] + 24);
      if (!v32)
      {
        goto LABEL_30;
      }

      v33 = (*(*v32 + 48))(v32, &v40);
    }

    while (((*(**a3 + 16))(*a3, v31, v33) & 0x80000000) == 0);
    while (1)
    {
      v34 = *--v7;
      v40 = v34;
      v41 = v4;
      v35 = *(a3[1] + 24);
      if (!v35)
      {
        goto LABEL_30;
      }

      v36 = (*(*v35 + 48))(v35, &v41);
      v37 = *(a3[1] + 24);
      if (!v37)
      {
        goto LABEL_30;
      }

      v38 = (*(*v37 + 48))(v37, &v40);
      if (((*(**a3 + 16))(*a3, v36, v38) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  if (v12 - 1 != a1)
  {
    *a1 = *(v12 - 1);
  }

  *(v12 - 1) = v4;
  return v12;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,long long *,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = a1[v6 + 1];
    v38 = v7;
    v39 = v8;
    v9 = *(a3[1] + 24);
    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = (*(*v9 + 48))(v9, &v39);
    v11 = *(a3[1] + 24);
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = (*(*v11 + 48))(v11, &v38);
    ++v6;
  }

  while (((*(**a3 + 16))(*a3, v10, v12) & 0x80000000) != 0);
  v13 = &a1[v6];
  if (v6 != 1)
  {
    while (1)
    {
      v14 = *--a2;
      v38 = v7;
      v39 = v14;
      v15 = *(a3[1] + 24);
      if (!v15)
      {
        break;
      }

      v16 = (*(*v15 + 48))(v15, &v39);
      v17 = *(a3[1] + 24);
      if (!v17)
      {
        break;
      }

      v18 = (*(*v17 + 48))(v17, &v38);
      if (((*(**a3 + 16))(*a3, v16, v18) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_29:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  while (v13 < a2)
  {
    v19 = *--a2;
    v38 = v7;
    v39 = v19;
    v20 = *(a3[1] + 24);
    if (!v20)
    {
      goto LABEL_29;
    }

    v21 = (*(*v20 + 48))(v20, &v39);
    v22 = *(a3[1] + 24);
    if (!v22)
    {
      goto LABEL_29;
    }

    v23 = (*(*v22 + 48))(v22, &v38);
    if (((*(**a3 + 16))(*a3, v21, v23) & 0x80000000) != 0)
    {
      break;
    }
  }

LABEL_14:
  if (v13 >= a2)
  {
    result = v13 - 1;
  }

  else
  {
    v24 = &a1[v6];
    v25 = a2;
    do
    {
      v26 = *v24;
      *v24 = *v25;
      *v25 = v26;
      do
      {
        v27 = v24[1];
        ++v24;
        v38 = v7;
        v39 = v27;
        v28 = *(a3[1] + 24);
        if (!v28)
        {
          goto LABEL_29;
        }

        v29 = (*(*v28 + 48))(v28, &v39);
        v30 = *(a3[1] + 24);
        if (!v30)
        {
          goto LABEL_29;
        }

        v31 = (*(*v30 + 48))(v30, &v38);
      }

      while (((*(**a3 + 16))(*a3, v29, v31) & 0x80000000) != 0);
      do
      {
        v32 = *--v25;
        v38 = v7;
        v39 = v32;
        v33 = *(a3[1] + 24);
        if (!v33)
        {
          goto LABEL_29;
        }

        v34 = (*(*v33 + 48))(v33, &v39);
        v35 = *(a3[1] + 24);
        if (!v35)
        {
          goto LABEL_29;
        }

        v36 = (*(*v35 + 48))(v35, &v38);
      }

      while (((*(**a3 + 16))(*a3, v34, v36) & 0x80000000) == 0);
    }

    while (v24 < v25);
    result = v24 - 1;
  }

  if (result != a1)
  {
    *a1 = *result;
  }

  *result = v7;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(a2 - 1);
        v30 = *a1;
        v31 = v7;
        v8 = *(a3[1] + 24);
        if (!v8 || (v9 = (*(*v8 + 48))(v8, &v31), (v10 = *(a3[1] + 24)) == 0))
        {
LABEL_31:
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v11 = (*(*v10 + 48))(v10, &v30);
        if (((*(**a3 + 16))(*a3, v9, v11) & 0x80000000) != 0)
        {
          v12 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,0>(a1, a1 + 1, a1 + 2, a3);
  v14 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v30 = *v13;
    v31 = v17;
    v18 = *(a3[1] + 24);
    if (!v18)
    {
      goto LABEL_31;
    }

    v19 = (*(*v18 + 48))(v18, &v31);
    v20 = *(a3[1] + 24);
    if (!v20)
    {
      goto LABEL_31;
    }

    v21 = (*(*v20 + 48))(v20, &v30);
    if (((*(**a3 + 16))(*a3, v19, v21) & 0x80000000) != 0)
    {
      v22 = *v14;
      v23 = v15;
      while (1)
      {
        *(a1 + v23 + 24) = *(a1 + v23 + 16);
        if (v23 == -16)
        {
          break;
        }

        v30 = *(a1 + v23 + 8);
        v31 = v22;
        v24 = *(a3[1] + 24);
        if (!v24)
        {
          goto LABEL_31;
        }

        v25 = (*(*v24 + 48))(v24, &v31);
        v26 = *(a3[1] + 24);
        if (!v26)
        {
          goto LABEL_31;
        }

        v27 = (*(*v26 + 48))(v26, &v30);
        v23 -= 8;
        if (((*(**a3 + 16))(*a3, v25, v27) & 0x80000000) == 0)
        {
          v28 = (a1 + v23 + 24);
          goto LABEL_25;
        }
      }

      v28 = a1;
LABEL_25:
      *v28 = v22;
      if (++v16 == 8)
      {
        return v14 + 1 == a2;
      }
    }

    v13 = v14;
    v15 += 8;
    if (++v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *,long long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v24 = *a1;
        v25 = v13;
        v14 = *(a4[1] + 24);
        if (!v14 || (v15 = (*(*v14 + 48))(v14, &v25), (v16 = *(a4[1] + 24)) == 0))
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v17 = (*(*v16 + 48))(v16, &v24);
        if (((*(**a4 + 16))(*a4, v15, v17) & 0x80000000) != 0)
        {
          v18 = *v12;
          *v12 = *a1;
          *a1 = v18;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v19 = a2 - 1;
      do
      {
        v20 = *a1;
        v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(a1, a4, v8);
        if (v19 == v21)
        {
          *v21 = v20;
        }

        else
        {
          *v21 = *v19;
          *v19 = v20;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(a1, (v21 + 1), a4, v21 + 1 - a1);
        }

        --v19;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(uint64_t result, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v5 = a4;
  v6 = result;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (a4 - result) >> 3)
  {
    return result;
  }

  v10 = (a4 - result) >> 2;
  v11 = v10 + 1;
  v12 = (result + 8 * (v10 + 1));
  v13 = v10 + 2;
  if (v10 + 2 < a3)
  {
    v14 = *v12;
    v38 = v12[1];
    v39 = v14;
    v15 = *(a2[1] + 24);
    if (!v15 || (v16 = (*(*v15 + 48))(v15, &v39), (v17 = *(a2[1] + 24)) == 0))
    {
LABEL_26:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v18 = (*(*v17 + 48))(v17, &v38);
    if ((*(**a2 + 16))(*a2, v16, v18) < 0)
    {
      ++v12;
      v11 = v13;
    }
  }

  v19 = *v12;
  v38 = *v5;
  v39 = v19;
  v20 = *(a2[1] + 24);
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = (*(*v20 + 48))(v20, &v39);
  v22 = *(a2[1] + 24);
  if (!v22)
  {
    goto LABEL_26;
  }

  v23 = (*(*v22 + 48))(v22, &v38);
  result = (*(**a2 + 16))(*a2, v21, v23);
  if ((result & 0x80000000) == 0)
  {
    v24 = *v5;
    v37 = *v5;
    do
    {
      v25 = v12;
      *v5 = *v12;
      if (v7 < v11)
      {
        break;
      }

      v26 = (2 * v11) | 1;
      v12 = (v6 + 8 * v26);
      v11 = 2 * v11 + 2;
      if (v11 >= a3)
      {
        v11 = v26;
      }

      else
      {
        v27 = *v12;
        v38 = v12[1];
        v39 = v27;
        v28 = *(a2[1] + 24);
        if (!v28)
        {
          goto LABEL_26;
        }

        v29 = (*(*v28 + 48))(v28, &v39);
        v30 = *(a2[1] + 24);
        if (!v30)
        {
          goto LABEL_26;
        }

        v31 = (*(*v30 + 48))(v30, &v38);
        if ((*(**a2 + 16))(*a2, v29, v31) >= 0)
        {
          v11 = v26;
        }

        else
        {
          ++v12;
        }

        v24 = v37;
      }

      v32 = *v12;
      v38 = v24;
      v39 = v32;
      v33 = *(a2[1] + 24);
      if (!v33)
      {
        goto LABEL_26;
      }

      v34 = (*(*v33 + 48))(v33, &v39);
      v35 = *(a2[1] + 24);
      if (!v35)
      {
        goto LABEL_26;
      }

      v36 = (*(*v35 + 48))(v35, &v38);
      result = (*(**a2 + 16))(*a2, v34, v36);
      v5 = v25;
    }

    while ((result & 0x80000000) == 0);
    *v25 = v24;
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(void *a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      v14 = *(v12 - 1);
      v20 = v13;
      v21 = v14;
      v15 = *(a2[1] + 24);
      if (!v15 || (v16 = (*(*v15 + 48))(v15, &v21), (v17 = *(a2[1] + 24)) == 0))
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v18 = (*(*v17 + 48))(v17, &v20);
      if ((*(**a2 + 16))(*a2, v16, v18) >= 0)
      {
        v6 = v10;
      }

      else
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void quasar::tennessee::Collation<long long,long long>::SortInPlace<std::__wrap_iter<long long *>>(std::__wrap_iter<long long *>,std::__wrap_iter<long long *>,std::function<long long const& ()(std::__wrap_iter<long long *>::value_type const&)>)::{lambda(long long,long long)#1} &,long long *>(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = *v8;
    v10 = (a2 - 8);
    v22 = *(a2 - 8);
    v23 = v9;
    v11 = *(a3[1] + 24);
    if (!v11 || (v12 = (*(*v11 + 48))(v11, &v23), (v13 = *(a3[1] + 24)) == 0))
    {
LABEL_12:
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v14 = (*(*v13 + 48))(v13, &v22);
    result = (*(**a3 + 16))(*a3, v12, v14);
    if ((result & 0x80000000) != 0)
    {
      v15 = *v10;
      do
      {
        v16 = v8;
        *v10 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        v17 = *v8;
        v22 = v15;
        v23 = v17;
        v18 = *(a3[1] + 24);
        if (!v18)
        {
          goto LABEL_12;
        }

        v19 = (*(*v18 + 48))(v18, &v23);
        v20 = *(a3[1] + 24);
        if (!v20)
        {
          goto LABEL_12;
        }

        v21 = (*(*v20 + 48))(v20, &v22);
        result = (*(**a3 + 16))(*a3, v19, v21);
        v10 = v16;
      }

      while ((result & 0x80000000) != 0);
      *v16 = v15;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<long long const& ()(long long const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<quasar::tennessee::cxx20::identity<long long>,std::allocator<quasar::tennessee::cxx20::identity<long long>>,long long const& ()(long long const&)>::~__func(void *a1)
{
  *a1 = &unk_1F2D122E8;
  std::__function::__value_func<long long const& ()(long long const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<quasar::tennessee::cxx20::identity<long long>,std::allocator<quasar::tennessee::cxx20::identity<long long>>,long long const& ()(long long const&)>::~__func(void *a1)
{
  *a1 = &unk_1F2D122E8;
  std::__function::__value_func<long long const& ()(long long const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1B8C85350);
}

void std::__function::__func<quasar::tennessee::cxx20::identity<long long>,std::allocator<quasar::tennessee::cxx20::identity<long long>>,long long const& ()(long long const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<long long const& ()(long long const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<quasar::tennessee::cxx20::identity<long long>,std::allocator<quasar::tennessee::cxx20::identity<long long>>,long long const& ()(long long const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *quasar::tennessee::internal::ImmutableSortedArrayStlVectorImpl<long long,std::vector<long long>,std::unique_ptr<std::vector<long long>>>::ImmutableSortedArrayStlVectorImpl(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  a1[1] = v4;
  *a1 = &unk_1F2D12488;
  v5 = *a3;
  *a3 = 0;
  a1[2] = v5;
  quasar::tennessee::ImmutableSortedArray<long long,quasar::tennessee::Collation<long long,long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>>::CheckSorted(a1);
  return a1;
}

void sub_1B542CF2C(_Unwind_Exception *a1)
{
  v5 = v4;
  v7 = *v5;
  *v5 = 0;
  if (v7)
  {
    std::default_delete<std::vector<long long>>::operator()[abi:ne200100](v5, v7);
  }

  quasar::tennessee::internal::ImmutableSortedArrayStlVectorImpl<long long,std::vector<long long>,std::unique_ptr<std::vector<long long>>>::ImmutableSortedArrayStlVectorImpl(v2, v1, v3);
  _Unwind_Resume(a1);
}

void *quasar::tennessee::internal::ManagedImmutableSortedArrayStlVectorImpl<long long>::~ManagedImmutableSortedArrayStlVectorImpl(void *a1)
{
  *a1 = &unk_1F2D12488;
  v4 = a1[2];
  v2 = a1 + 2;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::vector<long long>>::operator()[abi:ne200100](v2, v3);
  }

  v5 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void quasar::tennessee::internal::ManagedImmutableSortedArrayStlVectorImpl<long long>::~ManagedImmutableSortedArrayStlVectorImpl(void *a1)
{
  *a1 = &unk_1F2D12488;
  v4 = a1[2];
  v2 = a1 + 2;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::vector<long long>>::operator()[abi:ne200100](v2, v3);
  }

  v5 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::internal::ImmutableSortedArrayStlVectorImpl<long long,std::vector<long long>,std::unique_ptr<std::vector<long long>>>::at(uint64_t a1, unint64_t a2)
{
  v2 = **(a1 + 16);
  if (a2 >= (*(*(a1 + 16) + 8) - v2) >> 3)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  return v2 + 8 * a2;
}

uint64_t quasar::tennessee::ImmutableSortedArray<long long,quasar::tennessee::Collation<long long,long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>>::CheckSorted(void *a1)
{
  result = quasar::tennessee::ShouldCheckSorted(0);
  if (result)
  {
    v3 = a1[1];
    v4 = (*(*a1 + 40))(a1);
    v6 = v5;
    v7 = (*(*a1 + 48))(a1);
    result = quasar::tennessee::Collation<long long,long long>::IsSorted<quasar::tennessee::ImmutableSortedArray<long long,quasar::tennessee::Collation<long long,long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>>::Iterator>(v3, v4, v6, v7, v8);
    if ((result & 1) == 0)
    {
      memset(v9, 0, sizeof(v9));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Input container is not sorted.");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v9);
    }
  }

  return result;
}

void *quasar::tennessee::internal::ImmutableSortedArrayStlVectorImpl<long long,std::vector<long long>,std::unique_ptr<std::vector<long long>>>::~ImmutableSortedArrayStlVectorImpl(void *a1)
{
  *a1 = &unk_1F2D12488;
  v4 = a1[2];
  v2 = a1 + 2;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::vector<long long>>::operator()[abi:ne200100](v2, v3);
  }

  v5 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void quasar::tennessee::internal::ImmutableSortedArrayStlVectorImpl<long long,std::vector<long long>,std::unique_ptr<std::vector<long long>>>::~ImmutableSortedArrayStlVectorImpl(void *a1)
{
  *a1 = &unk_1F2D12488;
  v4 = a1[2];
  v2 = a1 + 2;
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::vector<long long>>::operator()[abi:ne200100](v2, v3);
  }

  v5 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::tennessee::Collation<long long,long long>::IsSorted<quasar::tennessee::ImmutableSortedArray<long long,quasar::tennessee::Collation<long long,long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>>::Iterator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (a2 == a4 && a3 == a5)
  {
    return 1;
  }

  v10 = (*(*a1 + 16))(a1);
  v21[0] = &unk_1F2D12538;
  v21[1] = v10;
  v21[3] = v21;
  v11 = std::__is_sorted_until[abi:ne200100]<std::function<BOOL ()(long long const&,long long const&)> &,quasar::tennessee::ImmutableSortedArray<long long,quasar::tennessee::Collation<long long,long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>>::Iterator>(a2, a3, a4, a5, v21);
  v13 = v12;
  std::__function::__value_func<BOOL ()(long long const&,long long const&)>::~__value_func[abi:ne200100](v21);
  v15 = v11 != a4 || v13 != a5;
  if (v15 && quasar::gLogLevel >= 2)
  {
    memset(v20, 0, sizeof(v20));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Element at position ", 20);
    v18 = MEMORY[0x1B8C84C30](v17, v13 - a3);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "is smaller than preceding element.", 34);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(v20);
  }

  return !v15;
}

uint64_t std::__is_sorted_until[abi:ne200100]<std::function<BOOL ()(long long const&,long long const&)> &,quasar::tennessee::ImmutableSortedArray<long long,quasar::tennessee::Collation<long long,long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>>::Iterator>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a3 || a2 != a4)
  {
    v9 = a2 + 1;
    do
    {
      if (a1 == a3 && a4 == v9)
      {
        break;
      }

      v10 = (*(*a1 + 16))(a1, v9);
      v11 = (*(*a1 + 16))(a1, v9 - 1);
      v12 = *(a5 + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      ++v9;
    }

    while (!(*(*v12 + 48))(v12, v10, v11));
  }

  return a1;
}

uint64_t std::__function::__func<quasar::tennessee::Collation<long long,long long>::GetLessThanComparator(void)::{lambda(long long const&,long long const&)#1},std::allocator<quasar::tennessee::Collation<long long,long long>::GetLessThanComparator(void)::{lambda(long long const&,long long const&)#1}>,BOOL ()(long long const&,long long const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D12538;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::tennessee::Collation<long long,long long>::GetLessThanComparator(void)::{lambda(long long const&,long long const&)#1},std::allocator<quasar::tennessee::Collation<long long,long long>::GetLessThanComparator(void)::{lambda(long long const&,long long const&)#1}>,BOOL ()(long long const&,long long const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(long long const&,long long const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1B542D9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::make_unique[abi:ne200100]<quasar::tennessee::internal::VmemFileImmutableSortedArrayFlatbufferVectorImpl<long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>,quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>,0>();
  }

  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  MEMORY[0x1B8C85350](v15, v14);
  _Unwind_Resume(a1);
}

void *quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>::~unique_vmem_file_flatbuf_ptr(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F2D12610;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t quasar::tennessee::generic_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::memory_mapping::VirtualMemoryFile,std::unique_ptr<quasar::tennessee::memory_mapping::VirtualMemoryFile>>::generic_flatbuf_ptr(uint64_t a1, quasar::tennessee::memory_mapping::VirtualMemoryFile **a2, int a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = &unk_1F2D12610;
  *(a1 + 8) = v4;
  *(a1 + 16) = a3;
  if (!a3)
  {
    *(a1 + 24) = 0;
LABEL_9:
    v10 = quasar::tennessee::memory_mapping::VirtualMemoryFile::Data(v4);
    goto LABEL_10;
  }

  v5 = quasar::tennessee::memory_mapping::VirtualMemoryFile::Data(v4);
  v6 = (v5 + *v5);
  v7 = *(a1 + 16);
  *(a1 + 24) = v6;
  if (!v7)
  {
    v4 = *(a1 + 8);
    goto LABEL_9;
  }

  v8 = (v6 - *v6);
  if (*v8 > v7)
  {
    v9 = *(v8 + v7);
    if (v9)
    {
      v10 = (v6 + v9);
LABEL_10:
      v11 = v10 + *v10;
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_11:
  *(a1 + 32) = v11;
  return a1;
}

void sub_1B542DB44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    quasar::tennessee::generic_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::memory_mapping::VirtualMemoryFile,std::unique_ptr<quasar::tennessee::memory_mapping::VirtualMemoryFile>>::generic_flatbuf_ptr(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>::~unique_vmem_file_flatbuf_ptr(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F2D12610;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void *quasar::tennessee::generic_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::memory_mapping::VirtualMemoryFile,std::unique_ptr<quasar::tennessee::memory_mapping::VirtualMemoryFile>>::~generic_flatbuf_ptr(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F2D12610;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void quasar::tennessee::generic_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::memory_mapping::VirtualMemoryFile,std::unique_ptr<quasar::tennessee::memory_mapping::VirtualMemoryFile>>::~generic_flatbuf_ptr(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F2D12610;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void *quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>::unique_vmem_file_flatbuf_ptr(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = v4;
  quasar::tennessee::generic_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::memory_mapping::VirtualMemoryFile,std::unique_ptr<quasar::tennessee::memory_mapping::VirtualMemoryFile>>::generic_flatbuf_ptr(a1, &v7, *(a2 + 16));
  *a1 = &unk_1F2D125C8;
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

void sub_1B542DD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::make_unique[abi:ne200100]<quasar::tennessee::internal::VmemFileImmutableSortedArrayFlatbufferVectorImpl<long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>,quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>,0>();
  }

  _Unwind_Resume(exception_object);
}

void *quasar::tennessee::internal::ImmutableSortedArrayFlatbufferVectorImpl<long long,flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>>::ImmutableSortedArrayFlatbufferVectorImpl(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = &unk_1F2D126B8;
  a1[1] = v4;
  quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>::unique_vmem_file_flatbuf_ptr(a1 + 2, a3);
  quasar::tennessee::ImmutableSortedArray<long long,quasar::tennessee::Collation<long long,long long>,std::unique_ptr<quasar::tennessee::Collation<long long,long long>>>::CheckSorted(a1);
  return a1;
}

void sub_1B542DE1C(_Unwind_Exception *exception_object)
{
  v4 = v1[3];
  v1[2] = &unk_1F2D12610;
  v1[3] = 0;
  if (v4)
  {
    quasar::tennessee::generic_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::memory_mapping::VirtualMemoryFile,std::unique_ptr<quasar::tennessee::memory_mapping::VirtualMemoryFile>>::generic_flatbuf_ptr(v4);
  }

  v5 = v1[1];
  *v1 = v2;
  v1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::tennessee::internal::VmemFileImmutableSortedArrayFlatbufferVectorImpl<long long>::~VmemFileImmutableSortedArrayFlatbufferVectorImpl(void *a1)
{
  *a1 = &unk_1F2D126B8;
  v2 = a1[3];
  a1[2] = &unk_1F2D12610;
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void quasar::tennessee::internal::VmemFileImmutableSortedArrayFlatbufferVectorImpl<long long>::~VmemFileImmutableSortedArrayFlatbufferVectorImpl(void *a1)
{
  *a1 = &unk_1F2D126B8;
  v2 = a1[3];
  a1[2] = &unk_1F2D12610;
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1B8C85350);
}

void *quasar::tennessee::internal::ImmutableSortedArrayFlatbufferVectorImpl<long long,flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>>::~ImmutableSortedArrayFlatbufferVectorImpl(void *a1)
{
  *a1 = &unk_1F2D126B8;
  v2 = a1[3];
  a1[2] = &unk_1F2D12610;
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void quasar::tennessee::internal::ImmutableSortedArrayFlatbufferVectorImpl<long long,flatbuffers_2_0_6::Vector<long long>,quasar::tennessee::unique_vmem_file_flatbuf_ptr<flatbuffers_2_0_6::Vector<long long>>>::~ImmutableSortedArrayFlatbufferVectorImpl(void *a1)
{
  *a1 = &unk_1F2D126B8;
  v2 = a1[3];
  a1[2] = &unk_1F2D12610;
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  *a1 = &unk_1F2D124E0;
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::LanguageDetectorV2::languageIdV2Configuration(quasar::LanguageDetectorV2 *this, const quasar::SystemConfig *a2)
{
  memset(&v4, 0, sizeof(v4));
  std::string::basic_string[abi:ne200100]<0>(__p, "ld-inference");
  quasar::SystemConfig::getPtreeOptional(this, __p);
}

void sub_1B542E4D8()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  if (*(v0 - 73) < 0)
  {
    operator delete(*(v0 - 96));
  }

  JUMPOUT(0x1B542E548);
}

void sub_1B542E558(_Unwind_Exception *a1)
{
  if ((*(v1 - 73) & 0x80000000) == 0)
  {
    v3 = v1 - 64;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1B542E580);
}

uint64_t SdapiAnnotatedText::SdapiAnnotatedText(uint64_t result, uint64_t a2)
{
  __dst[3] = *MEMORY[0x1E69E9840];
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    memset(__str, 0, sizeof(__str));
    v5[0] = "\";
    v5[1] = "";
    boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<char const*>>(__dst, v5);
    boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(__str, a2, __dst, 1);
  }

  return result;
}

void sub_1B542E70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  if (a17 >= 0x11 && a15)
  {
    MEMORY[0x1B8C85310](a15, 0x1000C8077774924);
  }

  a14 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (*(v17 + 71) < 0)
  {
    operator delete(*v18);
  }

  if (*(v17 + 47) < 0)
  {
    operator delete(*(v17 + 24));
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F2D12790;
  *(a1 + 8) = &unk_1F2D127C0;
  *(a1 + 24) = &unk_1F2D127E8;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1B542EABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_1F2CFD578;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1B8C85350);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F2D12808;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F2CFD578;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F2D12790;
  *(a1 + 8) = &unk_1F2D127C0;
  *(a1 + 24) = &unk_1F2D127E8;
  return a1;
}

void LMStats::LMStats(LMStats *this, Vocab *a2)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = MEMORY[0x1E69E5300];
  *(this + 3) = a2;
  *this = &unk_1F2D12830;
  *(this + 32) = 1;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 33) = 257;
}

uint64_t LMStats::countString(LMStats *this, Vocab *a2, int a3)
{
  v6 = countStringWords();
  v8 = *v6;
  if (!*v6)
  {
    v9 = v6;
    v8 = malloc_type_calloc(0xC351uLL, 8uLL, 0x50040EE9192B6uLL);
    *v9 = v8;
  }

  if (Vocab::parseWords(a2, v8, 0xC351, v7) == 50001)
  {
    return 0;
  }

  if (a3)
  {
    v11 = *v8;
    v12 = *(*this + 48);

    return v12(this, v8 + 8, v11);
  }

  else
  {
    v13 = *(*this + 40);

    return v13(this, v8);
  }
}

void LMStats::freeThread(LMStats *this)
{
  v1 = countStringWords();
  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }
}

uint64_t LMStats::countFile(LMStats *this, File *a2, uint64_t a3)
{
  v6 = File::getline(a2);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (a3)
    {
      v9 = "illegal count weight or ";
    }

    else
    {
      v9 = "";
    }

    if (a3)
    {
      v10 = 24;
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x1E69E5300];
    do
    {
      v12 = (*(*this + 64))(this, v7, a3);
      if (v12)
      {
        v8 = (v12 + v8);
      }

      else
      {
        v13 = File::position(a2, v11);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v9, v10);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "line too long?\n", 15);
      }

      v7 = File::getline(a2);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (!*(this + 8) && (Debug::debugAll || *(this + 3)))
  {
    v15 = (*(*this + 24))(this, v7);
    v16 = File::position(a2, v15);
    operator<<(v16, this + 5);
  }

  return v8;
}

void quasar::lm::SymbolTableData::SymbolTableData(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v3 = *a2;
  *a2 = 0;
  *(a1 + 144) = 0u;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0u;
  v4 = a1 + 24;
  v5 = a1 + 48;
  *(a1 + 80) = -1;
  v6 = (a1 + 80);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = -1;
  *(a1 + 104) = 0u;
  *(a1 + 100) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  if (!v3)
  {
    quasar::lm::LogMessage::LogMessage(__p, 5, "SymbolTableData", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 45);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Null symbol table passed to constructor", 39);
    quasar::lm::LogMessage::~LogMessage(__p);
    v3 = *(a1 + 16);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "<s>");
  *v6 = (*(*v3 + 32))(v3, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 16);
  std::string::basic_string[abi:ne200100]<0>(__p, "</s>");
  *(a1 + 84) = (*(*v8 + 32))(v8, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = (*(**(a1 + 16) + 104))(*(a1 + 16), "#0");
  *(a1 + 92) = v9;
  if (v9 <= 0)
  {
    quasar::lm::LogMessage::LogMessage(__p, 5, "SymbolTableData", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 64);
    v10 = quasar::rescoring::AdapterModel::getFeaturizer(__p);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Could not find symbol: ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "#0", 2);
    quasar::lm::LogMessage::~LogMessage(__p);
  }

  v12 = (*(**(a1 + 16) + 104))(*(a1 + 16), "/WORD-DIS-1/");
  *(a1 + 88) = v12;
  if (v12 <= 0)
  {
    quasar::lm::LogMessage::LogMessage(__p, 5, "SymbolTableData", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 68);
    v13 = quasar::rescoring::AdapterModel::getFeaturizer(__p);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Could not find symbol: ", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "/WORD-DIS-1/", 12);
    quasar::lm::LogMessage::~LogMessage(__p);
  }

  v15 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  std::vector<BOOL>::resize(v4, v15, 0);
  v16 = (*(**(a1 + 16) + 112))(*(a1 + 16));
  std::vector<BOOL>::resize(v5, v16, 0);
  _ZNSt3__115allocate_sharedB8ne200100I5VocabNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B542F66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v17);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v18);
  if (*v16)
  {
    operator delete(*v16);
  }

  if (*v15)
  {
    operator delete(*v15);
  }

  v20 = *(v14 + 16);
  *(v14 + 16) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(v14 + 8);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void quasar::lm::SymbolTableData::observeSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2)
  {
    v5 = (a1 + 48);
    v6 = (a1 + 76);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a2 == 1)
  {
    v5 = (a1 + 24);
    v6 = (a1 + 72);
    if ((a3 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v10 = v5[1];
    if (v10 > a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  quasar::lm::LogMessage::LogMessage(v16, 5, "observeSymbol", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 271);
  Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v16);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Unknown symbol source ", 22);
  MEMORY[0x1B8C84C00](v8, a2);
  quasar::lm::LogMessage::~LogMessage(v16);
  quasar::lm::LogMessage::LogMessage(v16, 5, "observeSymbol", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 275);
  v9 = quasar::rescoring::AdapterModel::getFeaturizer(v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "symbolMask and numSymbols should be non-null", 44);
  quasar::lm::LogMessage::~LogMessage(v16);
  v6 = 0;
  v5 = 0;
  if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  quasar::lm::LogMessage::LogMessage(v16, 5, "observeSymbol", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 279);
  v11 = quasar::rescoring::AdapterModel::getFeaturizer(v16);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Label out of bounds: ", 21);
  MEMORY[0x1B8C84C00](v12, a3);
  quasar::lm::LogMessage::~LogMessage(v16);
  v10 = v5[1];
LABEL_10:
  if (v10 <= a3)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v13 = *v5;
  v14 = a3 >> 6;
  v15 = *(*v5 + 8 * v14);
  if ((v15 & (1 << a3)) == 0)
  {
    ++*v6;
    *(v13 + 8 * v14) = v15 | (1 << a3);
  }
}

uint64_t quasar::lm::SymbolTableData::getAndCheckSymbolId(uint64_t a1, uint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 104), a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  LODWORD(v5) = (*(**(a1 + 16) + 96))(*(a1 + 16), a2);
  if (quasar::lm::SymbolTableData::symbolIdIsOov(a1, v5))
  {
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = v5;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v5;
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>((a1 + 104), &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1B542F9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::lm::SymbolTableData::symbolIdIsOov(quasar::lm::SymbolTableData *this, int a2)
{
  v2 = (a2 < 1) | *(this + 100) ^ 1;
  if (a2 >= 1 && (*(this + 100) & 1) == 0)
  {
    v2 = *(this + 4) <= a2 || ((*(*(this + 3) + ((a2 >> 3) & 0x1FFFFFF8)) >> a2) & 1) == 0 && *(this + 21) != a2 && *(this + 20) != a2 && *(this + 23) != a2 && *(this + 22) != a2;
  }

  return v2 & 1;
}

uint64_t quasar::lm::SymbolTableData::observeTrainingSymbol(void *a1, int *a2, uint64_t *a3)
{
  if (*a2 <= 0)
  {
    quasar::lm::LogMessage::LogMessage(v13, 5, "observeTrainingSymbol", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 192);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "unmapped FST symbol", 19);
    quasar::lm::LogMessage::~LogMessage(v13);
  }

  if (!*a1)
  {
    quasar::lm::LogMessage::LogMessage(v13, 5, "observeTrainingSymbol", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 195);
    v7 = quasar::rescoring::AdapterModel::getFeaturizer(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "trainVocab not set", 18);
    quasar::lm::LogMessage::~LogMessage(v13);
  }

  v8 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 18, a2);
  if (v8)
  {
    return *(v8 + 5);
  }

  v10 = *a2;
  if (v10 != *(a1 + 21) && v10 != *(a1 + 20) && v10 != *(a1 + 23) && v10 != *(a1 + 22))
  {
    quasar::lm::SymbolTableData::observeSymbol(a1, 2, v10);
  }

  if (*(a3 + 23) >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  v9 = (*(**a1 + 16))(*a1, v11);
  v13[0] = *a2;
  v13[1] = v9;
  std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::pair<int,unsigned int>>(a1 + 18, v13);
  return v9;
}

uint64_t quasar::lm::SymbolTableData::lookupTrainId(quasar::lm::SymbolTableData *this, int *a2, int a3)
{
  if (quasar::lm::SymbolTableData::symbolIdIsOov(this, *a2))
  {
    quasar::lm::LogMessage::LogMessage(&__p, 5, "lookupTrainId", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 218);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(&__p);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "trying to look-up unmapped FST symbol: ", 39);
    MEMORY[0x1B8C84C00](v7, *a2);
    quasar::lm::LogMessage::~LogMessage(&__p);
  }

  v8 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 18, a2);
  if (v8)
  {
    return *(v8 + 5);
  }

  (*(**(this + 2) + 88))(&__p);
  if (a3)
  {
    quasar::lm::LogMessage::LogMessage(&v27, 5, "lookupTrainId", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 224);
    v10 = quasar::rescoring::AdapterModel::getFeaturizer(&v27);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "training token ", 15);
    if ((v31 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v13 = v31;
    }

    else
    {
      v13 = v30;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, p_p, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " : ", 3);
    v16 = MEMORY[0x1B8C84C00](v15, *a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " not present in training map", 28);
    quasar::lm::LogMessage::~LogMessage(&v27);
  }

  if ((v31 & 0x80000000) == 0)
  {
    if (v31)
    {
      v17 = &__p;
      goto LABEL_18;
    }

LABEL_20:
    quasar::lm::LogMessage::LogMessage(&v27, 2, "lookupTrainId", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 235);
    v19 = quasar::rescoring::AdapterModel::getFeaturizer(&v27);
    if ((v31 & 0x80u) == 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p;
    }

    if ((v31 & 0x80u) == 0)
    {
      v21 = v31;
    }

    else
    {
      v21 = v30;
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " : ", 3);
    v24 = MEMORY[0x1B8C84C00](v23, *a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " not present in training or ARPA vocabulary", 43);
    quasar::lm::LogMessage::~LogMessage(&v27);
    v25 = *(this + 24);
    v27 = *a2;
    v28 = v25;
    std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::pair<int,unsigned int>>(this + 18, &v27);
    v9 = *(this + 24);
    goto LABEL_27;
  }

  if (!v30)
  {
    goto LABEL_20;
  }

  v17 = __p;
LABEL_18:
  v18 = (*(**this + 40))(*this, v17, 0xFFFFFFFFLL);
  v9 = v18;
  if (v18 == -1)
  {
    goto LABEL_20;
  }

  v27 = *a2;
  v28 = v18;
  std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::pair<int,unsigned int>>(this + 18, &v27);
LABEL_27:
  if (v31 < 0)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1B542FEB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::lm::SymbolTableData::tokenIsOov(quasar::lm::SymbolTableData *a1)
{
  v2 = (*(**(a1 + 2) + 96))(*(a1 + 2));

  return quasar::lm::SymbolTableData::symbolIdIsOov(a1, v2);
}

void **quasar::lm::SymbolTableData::observeBigGSymbols(uint64_t a1, uint64_t *a2)
{
  v19 = 0;
  v4 = *a2;
  v18 = 0;
  (*(*v4 + 128))(v4, &v16);
LABEL_2:
  v5 = v16;
  if (v16)
  {
    v6 = (*(*v16 + 16))(v16);
    v5 = v16;
    if (!v6)
    {
      if (v16)
      {
        v7 = (*(*v16 + 24))();
LABEL_8:
        if (!v19)
        {
          operator new();
        }

        fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reinit(v19, *a2, v7);
        while (1)
        {
          v8 = v19;
          if (*v19)
          {
            if ((*(**v19 + 24))(*v19))
            {
              goto LABEL_22;
            }

            v8 = v19;
            if (*v19)
            {
              v9 = (*(**v19 + 32))(*v19);
              goto LABEL_17;
            }
          }

          else if (v19[4] >= v19[2])
          {
LABEL_22:
            if (v16)
            {
              (*(*v16 + 32))(v16);
            }

            else
            {
              ++v18;
            }

            goto LABEL_2;
          }

          v9 = (v8[1] + 16 * v8[4]);
LABEL_17:
          v10 = *v9;
          if (v10)
          {
            quasar::lm::SymbolTableData::observeSymbol(a1, 1, v10);
          }

          if (*v19)
          {
            (*(**v19 + 40))(*v19);
          }

          else
          {
            ++v19[4];
          }
        }
      }

LABEL_7:
      v7 = v18;
      goto LABEL_8;
    }

    if (v16)
    {
      v5 = (*(*v16 + 8))();
    }
  }

  else if (v18 < v17)
  {
    goto LABEL_7;
  }

  if (**(a1 + 24))
  {
    quasar::lm::LogMessage::LogMessage(&v16, 5, "observeBigGSymbols", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 310);
    quasar::rescoring::AdapterModel::getFeaturizer(&v16);
    quasar::lm::LogMessage::~LogMessage(&v16);
  }

  else
  {
    v11 = quasar::lm::nullstream(v5);
  }

  if ((*(*(a1 + 24) + ((*(a1 + 92) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(a1 + 92)))
  {
    quasar::lm::LogMessage::LogMessage(&v16, 5, "observeBigGSymbols", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 311);
    quasar::rescoring::AdapterModel::getFeaturizer(&v16);
    quasar::lm::LogMessage::~LogMessage(&v16);
  }

  else
  {
    v12 = quasar::lm::nullstream(v11);
  }

  if ((*(*(a1 + 24) + ((*(a1 + 88) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(a1 + 88)))
  {
    quasar::lm::LogMessage::LogMessage(&v16, 5, "observeBigGSymbols", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 312);
    quasar::rescoring::AdapterModel::getFeaturizer(&v16);
    quasar::lm::LogMessage::~LogMessage(&v16);
  }

  else
  {
    v13 = quasar::lm::nullstream(v12);
  }

  if ((*(*(a1 + 24) + ((*(a1 + 80) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(a1 + 80)))
  {
    quasar::lm::LogMessage::LogMessage(&v16, 5, "observeBigGSymbols", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 313);
    quasar::rescoring::AdapterModel::getFeaturizer(&v16);
    quasar::lm::LogMessage::~LogMessage(&v16);
  }

  else
  {
    v14 = quasar::lm::nullstream(v13);
  }

  if ((*(*(a1 + 24) + ((*(a1 + 84) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(a1 + 84)))
  {
    quasar::lm::LogMessage::LogMessage(&v16, 5, "observeBigGSymbols", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 314);
    quasar::rescoring::AdapterModel::getFeaturizer(&v16);
    quasar::lm::LogMessage::~LogMessage(&v16);
  }

  else
  {
    quasar::lm::nullstream(v14);
  }

  return std::unique_ptr<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::reset[abi:ne200100](&v19, 0);
}

void sub_1B54303D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void quasar::lm::SymbolTableData::extractTrainVocabFromSymbolTable(quasar::lm::SymbolTableData *this)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = *(*(**this + 88))(*this);
  v3 = (*(**this + 32))(*this, v2);
  v4 = strlen(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v8 - v5;
  v7 = (*(**this + 32))(*this, v2);
  strcpy(v6, v7);
  (*(**this + 64))(*this, v2);
  operator new();
}

uint64_t quasar::lm::SymbolTableData::observeSrilmVocabulary(quasar::lm::SymbolTableData *this, Vocab *a2)
{
  VocabIter::VocabIter(v18, a2, 0);
  v4 = 0;
  *(*(*a2 + 152))(a2) = 1;
  v17 = 0;
  while (1)
  {
    v5 = VocabIter::next(v18, &v17);
    if (!v5)
    {
      break;
    }

    if (!(*(*a2 + 176))(a2, v17))
    {
      v6 = (*(**(this + 2) + 104))(*(this + 2), v5);
      v7 = v6;
      if ((v6 & 0x80000000) != 0 || ((*(*(this + 3) + 8 * ((v6 >> 6) & 0x1FFFFFF)) >> v6) & 1) == 0)
      {
        v8 = v4 + 1;
        if (v4++ <= 0x13)
        {
          v4 = v8;
          if (*(this + 21) != v6)
          {
            quasar::lm::LogMessage::LogMessage(v16, 2, "observeSrilmVocabulary", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 377);
            Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v16);
            v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "ARPA vocabulary contains data pack OOV: ", 40);
            v12 = strlen(v5);
            v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v5, v12);
            v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " : ", 3);
            MEMORY[0x1B8C84C00](v14, v7);
            quasar::lm::LogMessage::~LogMessage(v16);
            v4 = v8;
          }
        }
      }

      else
      {
        quasar::lm::SymbolTableData::observeSymbol(this, 2, v6);
      }
    }
  }

  return LHashIter<char const*,unsigned int>::~LHashIter(v18);
}

void sub_1B5430A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  LHashIter<char const*,unsigned int>::~LHashIter(va);
  _Unwind_Resume(a1);
}

void sub_1B5430E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

void quasar::lm::InsertOrDie<std::unordered_map<unsigned int,int>>(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a3;
  v9[0] = *a2;
  v9[1] = v4;
  v5 = std::__hash_table<std::__hash_value_type<char32_t,char32_t>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,char32_t>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,char32_t>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,char32_t>>>::__emplace_unique_key_args<char32_t,std::pair<char32_t const,char32_t> const&>(a1, v9);
  if (v6)
  {
    quasar::lm::nullstream(v5);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v9, 5, "InsertOrDie", "../libquasar/liblm/include/lm/stl_utils.h", 89);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v9);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "duplicate key ", 14);
    MEMORY[0x1B8C84C10](v8, *a2);
    quasar::lm::LogMessage::~LogMessage(v9);
  }
}

uint64_t quasar::lm::IterateSRILMVocabTokens(Vocab *a1, uint64_t a2, char a3, char a4, char a5)
{
  VocabIter::VocabIter(v19, a1, 0);
  v18 = 0;
  while (1)
  {
    v9 = VocabIter::next(v19, &v18);
    v10 = v9;
    if (!v9)
    {
      return LHashIter<char const*,unsigned int>::~LHashIter(v19);
    }

    if (!strcmp(v9, "<s>"))
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    if (!strcmp(v10, "</s>"))
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_9:
      std::function<void ()(char const*,unsigned int)>::operator()(a2, v10, v18);
    }

    else
    {
      if (!(*(*a1 + 176))(a1, v18) || (a3 & 1) != 0)
      {
        goto LABEL_9;
      }

LABEL_7:
      quasar::lm::LogMessage::LogMessage(v17, 2, "IterateSRILMVocabTokens", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 443);
      Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v17);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Skipping ", 9);
      v13 = strlen(v10);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v10, v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".", 1);
      quasar::lm::LogMessage::~LogMessage(v17);
    }
  }
}

void sub_1B54310D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  LHashIter<char const*,unsigned int>::~LHashIter(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(char const*,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a3);
  if (a4)
  {
    v6 = (*(*a2 + 104))(a2, "<s>");
    if ((v6 & 0x8000000000000000) != 0)
    {
      quasar::lm::LogMessage::LogMessage(v10, 5, "ComputeSRILMVocabToOpenFSTSymbolTableRemapping", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 461);
      Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "FST SymbolTable should contain <s>.", 35);
      quasar::lm::LogMessage::~LogMessage(v10);
    }

    else
    {
      quasar::lm::nullstream(v6);
    }

    v8 = (*(*a2 + 104))(a2, "</s>");
    if ((v8 & 0x8000000000000000) != 0)
    {
      quasar::lm::LogMessage::LogMessage(v10, 5, "ComputeSRILMVocabToOpenFSTSymbolTableRemapping", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 465);
      v9 = quasar::rescoring::AdapterModel::getFeaturizer(v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "FST SymbolTable should contain </s>.", 36);
      quasar::lm::LogMessage::~LogMessage(v10);
    }

    else
    {
      quasar::lm::nullstream(v8);
    }
  }

  operator new();
}

void sub_1B5431328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::lm::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1B5431400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::unordered_map<unsigned int,int>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::unordered_map<unsigned int,int>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2);
    MEMORY[0x1B8C85350](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void quasar::lm::InsertOrDie<std::set<std::string>>(uint64_t a1, uint64_t a2)
{
  v3 = std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a1, a2);
  if (v4)
  {

    quasar::lm::nullstream(v3);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v10, 5, "InsertOrDie", "../libquasar/liblm/include/lm/stl_utils.h", 77);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v10);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "duplicate element ", 18);
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
      v9 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    quasar::lm::LogMessage::~LogMessage(v10);
  }
}

void quasar::lm::ExtractVocabularyFromARPA(uint64_t a1, File *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  File::File(v5, v3, "r", 1);
  quasar::lm::ExtractVocabularyFromARPA(v5, a2, v4);
  File::~File(v5);
}

void sub_1B5431584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  File::~File(va);
  _Unwind_Resume(a1);
}

void quasar::lm::ExtractVocabularyFromARPA(quasar::lm *this, File *a2, Vocab *a3)
{
  Ngram::Ngram(v4, a2, 1u);
  Ngram::read(v4, this, 0);
  v4[0] = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(&v5);
  LM::~LM(v4);
}

void *_ZNSt3__120__shared_ptr_emplaceI5VocabNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D128C0;
  Vocab::Vocab((a1 + 3), 0, 0xFFFFFFFE);
  return a1;
}

void std::__shared_ptr_emplace<Vocab>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D128C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

const void **std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(void *a1, const void **a2)
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
    operator new();
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

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::pair<int,unsigned int>>(void *a1, int *a2)
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
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
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

void **std::unique_ptr<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v3 = v2[3];
      if (v3)
      {
        --*v3;
      }
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void std::__shared_ptr_emplace<std::unordered_map<unsigned int,int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D12910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,int> &>(void *a1, unsigned int *a2)
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

__n128 std::__function::__func<quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(Vocab const&,fst::SymbolTable const&,std::unordered_map<unsigned int,int> *,BOOL)::$_0,std::allocator<quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(Vocab const&,fst::SymbolTable const&,std::unordered_map<unsigned int,int> *,BOOL)::$_0>,void ()(char const*,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D12960;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(Vocab const&,fst::SymbolTable const&,std::unordered_map<unsigned int,int> *,BOOL)::$_0,std::allocator<quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(Vocab const&,fst::SymbolTable const&,std::unordered_map<unsigned int,int> *,BOOL)::$_0>,void ()(char const*,unsigned int)>::operator()(uint64_t a1, const char **a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v14 = *a3;
  v13 = (*(**(a1 + 16) + 104))(*(a1 + 16), v4);
  if ((v13 & 0x80000000) != 0)
  {
    quasar::lm::LogMessage::LogMessage(v12, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/symbol_tables.cpp", 474);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "FST SymbolTable does not contain token ", 39);
    v8 = strlen(v4);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v4, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (id ", 5);
    v11 = MEMORY[0x1B8C84C10](v10, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ").", 2);
    quasar::lm::LogMessage::~LogMessage(v12);
  }

  quasar::lm::InsertOrDie<std::unordered_map<unsigned int,int>>(*(a1 + 24), &v14, &v13);
}

void sub_1B5432180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::lm::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(Vocab const&,fst::SymbolTable const&,std::unordered_map<unsigned int,int> *,BOOL)::$_0,std::allocator<quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(Vocab const&,fst::SymbolTable const&,std::unordered_map<unsigned int,int> *,BOOL)::$_0>,void ()(char const*,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(char const*,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void quasar::CalculateJoinedNBest<0ul>::operator()(uint64_t a1, uint64_t a2)
{
  quasar::CalculateJoinedNBest<0ul>::operator()(a1, *(a2 + 8));
}

{
  v32 = *MEMORY[0x1E69E9840];
  if (quasar::gLogLevel >= 6)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v24);
    kaldi::WriteCompactLattice(v25, 0, a2);
    if (quasar::gLogLevel >= 6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      *v7 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Primary lattice: ", 17);
      std::stringbuf::str();
      if ((v31 & 0x80u) == 0)
      {
        v4 = v30;
      }

      else
      {
        v4 = v30[0];
      }

      if ((v31 & 0x80u) == 0)
      {
        v5 = v31;
      }

      else
      {
        v5 = v30[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      quasar::QuasarTraceMessage::~QuasarTraceMessage(v7);
    }

    *&v24 = *MEMORY[0x1E69E54D8];
    v6 = *(MEMORY[0x1E69E54D8] + 72);
    *(&v25[-2] + *(v24 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v25[0] = v6;
    v25[1] = (MEMORY[0x1E69E5548] + 16);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    v25[1] = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(&v26);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v29);
  }

  fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
}

void sub_1B54328B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, std::locale a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a57);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a20);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<quasar::NBestToken<0ul>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::SetState(uint64_t a1, int a2)
{
  if (*(a1 + 16) != a2)
  {
    *(a1 + 16) = a2;
    if (*(a1 + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v15, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v15);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      *(a1 + 106) = 1;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = *(*(*(a1 + 8) + 8) + 64);
      v8 = *(*(v7 + 8 * a2) + 48);
      if (*(*(v7 + 8 * a2) + 56) == v8)
      {
        v8 = 0;
      }

      *v6 = v8;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((*(*(v7 + 8 * a2) + 56) - *(*(v7 + 8 * a2) + 48)) >> 4);
      v6[1] = v9;
      v6[2] = 0;
    }

    else
    {
      v10 = *(a1 + 168);
      if (v10)
      {
        *(a1 + 168) = v10[3];
      }

      else
      {
        v10 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::Allocate((a1 + 120), 1);
        v10[3] = 0;
      }

      v11 = *(*(*(a1 + 8) + 8) + 64);
      v12 = *(*(v11 + 8 * a2) + 48);
      if (*(*(v11 + 8 * a2) + 56) == v12)
      {
        v12 = 0;
      }

      *v10 = v12;
      v10[1] = 0xAAAAAAAAAAAAAAABLL * ((*(*(v11 + 8 * a2) + 56) - *(*(v11 + 8 * a2) + 48)) >> 4);
      v10[2] = 0;
      *(a1 + 24) = v10;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((*(*(v11 + 8 * a2) + 56) - *(*(v11 + 8 * a2) + 48)) >> 4);
    }

    *(a1 + 48) = v9;
    *(a1 + 96) = a2;
  }
}

void sub_1B5432BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t quasar::IterLinearFst<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  (*(*a1 + 136))(a1, a2, v17);
  v7 = a2;
  do
  {
    (*(*a1 + 32))(&v14, a1, v7);
    v22 = *(&v14 + 1);
    LODWORD(v13[0]) = v14;
    v21 = 2139095040;
    v20 = INFINITY;
    v8.n128_u32[0] = v14;
    if (*&v14 == INFINITY && (v8.n128_f32[0] = v22, v22 == v20) && v16 == v15)
    {
      if ((*(*a1 + 40))(a1, v7, v22) != 1)
      {
        if (quasar::gLogLevel < 1)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      if (v7 != a2)
      {
        fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::Reinit(v17, a1, v7);
      }

      if (v17[0])
      {
        v10 = (*(*v17[0] + 32))(v17[0]);
      }

      else
      {
        v10 = v17[1] + 48 * v19;
      }

      v11 = std::function<BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::operator()(a3, &v14, v10);
      v9 = v11;
      if (v11)
      {
        v7 = *(v10 + 40);
      }

      else
      {
        v7 = v7;
      }

      v3 = v11 & v3;
    }

    else
    {
      if ((*(*a1 + 40))(a1, v7, v8))
      {
        if (quasar::gLogLevel < 1)
        {
LABEL_8:
          v9 = 0;
          v3 = 0;
          goto LABEL_10;
        }

LABEL_7:
        memset(v13, 0, sizeof(v13));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "FST is not linear.", 18);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v13);
        goto LABEL_8;
      }

      v3 = std::function<BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::operator()(a3, &v14, 0);
      v9 = 0;
    }

LABEL_10:
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }

  while ((v9 & 1) != 0);
  if (v17[0])
  {
    (*(*v17[0] + 8))(v17[0]);
  }

  else if (v18)
  {
    --*v18;
  }

  return v3;
}

void sub_1B5432FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  v11 = *(v9 - 168);
  if (v11)
  {
    *(v9 - 160) = v11;
    operator delete(v11);
  }

  v12 = *(v9 - 144);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  else
  {
    v13 = *(v9 - 120);
    if (v13)
    {
      --*v13;
    }
  }

  _Unwind_Resume(a1);
}

void quasar::CalculateJoinedNBest<1ul>::operator()(uint64_t a1, uint64_t a2)
{
  quasar::CalculateJoinedNBest<1ul>::operator()(a1, *(a2 + 8));
}

{
  v32 = *MEMORY[0x1E69E9840];
  if (quasar::gLogLevel >= 6)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v24);
    kaldi::WriteCompactLattice(v25, 0, a2);
    if (quasar::gLogLevel >= 6)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      *v7 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
      v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Primary lattice: ", 17);
      std::stringbuf::str();
      if ((v31 & 0x80u) == 0)
      {
        v4 = v30;
      }

      else
      {
        v4 = v30[0];
      }

      if ((v31 & 0x80u) == 0)
      {
        v5 = v31;
      }

      else
      {
        v5 = v30[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v4, v5);
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      quasar::QuasarTraceMessage::~QuasarTraceMessage(v7);
    }

    *&v24 = *MEMORY[0x1E69E54D8];
    v6 = *(MEMORY[0x1E69E54D8] + 72);
    *(&v25[-2] + *(v24 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
    v25[0] = v6;
    v25[1] = (MEMORY[0x1E69E5548] + 16);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    v25[1] = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(&v26);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v29);
  }

  fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
}

void sub_1B5433AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::locale a61)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a61);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a22);
  v62 = a24;
  a24 = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a25);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<quasar::NBestToken<1ul>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B5433FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(v23);
  _Unwind_Resume(a1);
}

void *quasar::NBestToken<1ul>::~NBestToken(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D129F0;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, 0, 0, 0);
  *(a1 + 96) = -1;
  *(a1 + 106) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::MemoryPool((a1 + 112), 1);
}

void sub_1B543420C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::~MemoryPool((v18 + 14));
  v20 = v18[9];
  if (v20)
  {
    v18[10] = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 106))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Value_(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    return a1 + 56;
  }

  else
  {
    return **(a1 + 24) + 48 * *(*(a1 + 24) + 16);
  }
}

uint64_t fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Next_(uint64_t result)
{
  if (*(result + 104) == 1)
  {
    *(result + 104) = 0;
  }

  else
  {
    ++*(*(result + 24) + 16);
  }

  return result;
}

uint64_t fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Final_@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(*(*(*(a1 + 8) + 8) + 64) + 8 * a2);
  *a3 = *v3;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a3 + 1), v3[1], v3[2], (v3[2] - v3[1]) >> 2);
}

void fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D12A88;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D12A88;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D12AC8;
  a1[1] = 32 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B543461C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D12AC8;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D129F0;
  v2 = a1[3];
  v3 = (a1 + 14);
  if (v2)
  {
    *(v2 + 24) = a1[21];
    a1[21] = v2;
  }

  v4 = a1[1];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[14] = &unk_1F2D12A88;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::~MemoryArena(a1 + 15);
  quasar::Bitmap::~Bitmap(v3);
  v5 = a1[9];
  if (v5)
  {
    a1[10] = v5;
    operator delete(v5);
  }

  return a1;
}

void fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D129F0;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 72, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 106) = *(a2 + 106);
  fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::MemoryPool((a1 + 112), 1);
}

void sub_1B5434910(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 105) = 1;
  if (*(a1 + 106) == 1)
  {
    result = 0;
    *(a1 + 104) = 0;
    *(a1 + 40) = -1;
    return result;
  }

  result = a2 == 0;
  *(a1 + 104) = result;
  if (a2 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *(a1 + 40) = v4;
  v5 = *(a1 + 32);
  if (v4 < *(a1 + 36))
  {
    v6 = *(a1 + 24);
    v7 = v6[1];
    if (v7)
    {
      v8 = 0;
      v9 = *v6;
      while (1)
      {
        v10 = v9 + 1;
        if (!v5)
        {
          v10 = v9;
        }

        v11 = *v10;
        v12 = v11 == v4;
        v13 = v11 <= v4 ? 0 : 7;
        if (v12)
        {
          v13 = 1;
        }

        if (v13)
        {
          break;
        }

        ++v8;
        v9 += 12;
        if (v7 == v8)
        {
          v8 = v6[1];
          goto LABEL_34;
        }
      }

      if (v13 == 1)
      {
        v6[2] = v8;
        return 1;
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_34;
  }

  v14 = *(a1 + 48);
  v6 = *(a1 + 24);
  v8 = 0;
  if (!v14)
  {
LABEL_34:
    v6[2] = v8;
    return result;
  }

  v15 = *v6;
  while (1)
  {
    v16 = (v14 + v8) >> 1;
    v17 = &v15[12 * v16];
    if (v5)
    {
      ++v17;
    }

    v18 = *v17;
    if (v18 <= v4)
    {
      break;
    }

    v14 = (v14 + v8) >> 1;
LABEL_29:
    if (v8 >= v14)
    {
      goto LABEL_34;
    }
  }

  if (v18 < v4)
  {
    v8 = v16 + 1;
    goto LABEL_29;
  }

  v6[2] = v16;
  v19 = &v15[12 * ((v14 + v8) >> 1) - 12];
  while (v16 > v8)
  {
    v6[2] = --v16;
    v20 = (v19 + 4);
    if (!v5)
    {
      v20 = v19;
    }

    v19 -= 48;
    if (*v20 != v4)
    {
      v6[2] = (v16 + 1);
      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::Done(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = v2[2];
  if (v3 >= v2[1])
  {
    return 1;
  }

  if (*(a1 + 105) != 1)
  {
    return 0;
  }

  v4 = (*v2 + 48 * v3);
  if (*(a1 + 32))
  {
    ++v4;
  }

  return *v4 != *(a1 + 40);
}

void **std::__split_buffer<std::vector<quasar::NBestToken<0ul>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::NBestToken<0ul>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::NBestToken<0ul>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::NBestToken<0ul>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

uint64_t fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::Link>::Allocate(void *a1, uint64_t a2)
{
  v3 = 32 * a2;
  v4 = a1[1];
  if (v4 < a2 << 7)
  {
    operator new[]();
  }

  v5 = a1[2];
  v6 = v5 + v3;
  if (v5 + v3 > v4)
  {
    operator new[]();
  }

  v7 = *(a1[4] + 16) + v5;
  a1[2] = v6;
  return v7;
}

uint64_t quasar::NBestToken<0ul>::NBestToken(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = -1;
  *(a1 + 8) = 0;
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 16), 0, 0, 0);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_1B5434CF8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<quasar::CalculateJoinedNBest<0ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,0ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<0ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1},std::allocator<quasar::CalculateJoinedNBest<0ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,0ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<0ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}>,BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D12B08;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::CalculateJoinedNBest<0ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,0ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<0ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1},std::allocator<quasar::CalculateJoinedNBest<0ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,0ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<0ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}>,BOOL ()(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::CalculateJoinedNBest<0ul>::operator()(fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const&,std::array<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> const*,0ul> const&,unsigned long,std::vector<std::vector<quasar::NBestToken<0ul>>> *,int,std::set<int> const*,BOOL)::{lambda(fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int> const&,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int> const*)#1}::operator()(uint64_t a1, float32x2_t *a2, float32x2_t *a3)
{
  v4 = *a1;
  v5 = **(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (a3)
  {
    if (a3->i32[1])
    {
      v10 = *v4;
      if (*v4 != -1)
      {
        *(v4 + 6) = v5;
        if (v10 == v6)
        {
          v11 = v8[1];
          if (*v8 != v11)
          {
            *(v11 - 40) = v5;
          }

          *v4 = -1;
          if ((v7 & 1) == 0)
          {
            *(v4 + 1) = 0;
          }

          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4 + 2, 0, 0, 0);
          *(v4 + 5) = 0;
          *(v4 + 6) = 0;
        }

        else
        {
          v15 = v8[1];
          if (v15 >= v8[2])
          {
            v16 = std::vector<quasar::NBestToken<0ul>>::__emplace_back_slow_path<quasar::NBestToken<0ul>>(v8, v4);
          }

          else
          {
            quasar::NBestToken<0ul>::NBestToken(v8[1], v4);
            v16 = v15 + 88;
            v8[1] = v15 + 88;
          }

          v8[1] = v16;
          *v4 = -1;
          *(v4 + 1) = 0;
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4 + 2, 0, 0, 0);
          *(v4 + 18) = 0u;
          *(v4 + 14) = 0u;
          *(v4 + 10) = 0u;
        }
      }

      v4 = *a1;
      *v4 = a3->i32[1];
      *(v4 + 5) = **(a1 + 8);
    }

    fst::Times<fst::LatticeWeightTpl<float>,int>(v4 + 1, a3 + 1, __p);
    v19 = *a1;
    v20 = *a1;
    v20[1] = __p[0];
    if (v20 + 1 != __p)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v19 + 2, __p[1], v34, (v34 - __p[1]) >> 2);
    }

    if (__p[1])
    {
      *&v34 = __p[1];
      operator delete(__p[1]);
    }

    v21 = *(a1 + 32);
    if (!v21)
    {
      goto LABEL_40;
    }

    v24 = *(v21 + 8);
    v22 = v21 + 8;
    v23 = v24;
    if (!v24)
    {
      goto LABEL_40;
    }

    v25 = a3->i32[1];
    v26 = v22;
    do
    {
      if (*(v23 + 28) >= v25)
      {
        v26 = v23;
      }

      v23 = *(v23 + 8 * (*(v23 + 28) < v25));
    }

    while (v23);
    if (v26 != v22 && v25 >= *(v26 + 28))
    {
      v27 = 0;
    }

    else
    {
LABEL_40:
      v27 = (*&a3[3] - *&a3[2]) >> 2;
    }

    **(a1 + 8) += v27;
    if (quasar::gLogLevel >= 6)
    {
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
      v34 = 0u;
      v35 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Primary lattice moving to state ", 32);
      v29 = MEMORY[0x1B8C84C00](v28, a3[5].u32[0]);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " with label ", 12);
      v31 = MEMORY[0x1B8C84C00](v30, a3->u32[1]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ".", 1);
LABEL_48:
      quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
    }
  }

  else
  {
    fst::Times<fst::LatticeWeightTpl<float>,int>(v4 + 1, a2, __p);
    v12 = *a1;
    v13 = *a1;
    v13[1] = __p[0];
    if (v13 + 1 != __p)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v12 + 2, __p[1], v34, (v34 - __p[1]) >> 2);
    }

    if (__p[1])
    {
      *&v34 = __p[1];
      operator delete(__p[1]);
    }

    if (**a1 != -1)
    {
      *(v4 + 6) = v5;
      if (*v4 == v6)
      {
        v14 = v8[1];
        if (*v8 != v14)
        {
          *(v14 - 40) = v5;
        }

        *v4 = -1;
        if ((v7 & 1) == 0)
        {
          *(v4 + 1) = 0;
        }

        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4 + 2, 0, 0, 0);
        *(v4 + 5) = 0;
        *(v4 + 6) = 0;
      }

      else
      {
        v17 = v8[1];
        if (v17 >= v8[2])
        {
          v18 = std::vector<quasar::NBestToken<0ul>>::__emplace_back_slow_path<quasar::NBestToken<0ul>>(v8, v4);
        }

        else
        {
          quasar::NBestToken<0ul>::NBestToken(v8[1], v4);
          v18 = v17 + 88;
          v8[1] = v17 + 88;
        }

        v8[1] = v18;
        *v4 = -1;
        *(v4 + 1) = 0;
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v4 + 2, 0, 0, 0);
        *(v4 + 18) = 0u;
        *(v4 + 14) = 0u;
        *(v4 + 10) = 0u;
      }
    }

    if (quasar::gLogLevel >= 6)
    {
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
      v34 = 0u;
      v35 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Primary lattice moving to final state.", 38);
      goto LABEL_48;
    }
  }

  return 1;
}

uint64_t std::vector<quasar::NBestToken<0ul>>::__emplace_back_slow_path<quasar::NBestToken<0ul>>(uint64_t a1, int *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::NBestToken<0ul>>>(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  quasar::NBestToken<0ul>::NBestToken(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = *(a1 + 8);
  v8 = 88 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::NBestToken<0ul>>,quasar::NBestToken<0ul>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::NBestToken<0ul>>::~__split_buffer(&v13);
  return v12;
}

void sub_1B54353A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::NBestToken<0ul>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}