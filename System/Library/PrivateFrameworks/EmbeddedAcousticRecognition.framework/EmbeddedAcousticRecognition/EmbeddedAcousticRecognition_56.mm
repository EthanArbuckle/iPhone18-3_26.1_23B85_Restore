void sub_1B5444274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(a1);
}

std::string *std::__split_buffer<quasar::Token>::emplace_back<quasar::Token&>(std::string **a1, quasar::Token *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0xDB6DB6DB6DB6DB6ELL * ((v4 - *a1) >> 5);
      }

      v10 = a1[4];
      v12 = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(v10, v9);
    }

    v8 = (0x6DB6DB6DB6DB6DB7 * (v7 >> 5) + 1) / -2;
    v5 = &v6[-14 * ((0x6DB6DB6DB6DB6DB7 * (v7 >> 5) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        quasar::Token::operator=(v5, v6);
        v6 += 14;
        v5 = (v5 + 224);
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[14 * v8];
    a1[2] = v5;
  }

  result = quasar::Token::Token(v5, a2);
  a1[2] = (a1[2] + 224);
  return result;
}

void sub_1B544447C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__reverse_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::Token *>>(unint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v32[7] = v2;
    v32[8] = v3;
    v4 = a1;
    v5 = (a2 - 224);
    if (a2 - 224 > a1)
    {
      do
      {
        v6 = *v4;
        v14 = *(v4 + 16);
        *v13 = v6;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        *v4 = 0;
        v7 = *(v4 + 39);
        *v15 = *(v4 + 24);
        *&v15[15] = v7;
        v8 = *(v4 + 64);
        v16 = *(v4 + 48);
        v17 = v8;
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        *(v4 + 48) = 0;
        v18 = *(v4 + 72);
        v19 = *(v4 + 88);
        *(v4 + 72) = 0;
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        v9 = *(v4 + 96);
        v21 = *(v4 + 112);
        v20 = v9;
        *(v4 + 96) = 0;
        *(v4 + 104) = 0;
        *(v4 + 112) = 0;
        v22 = *(v4 + 120);
        v23 = *(v4 + 136);
        *(v4 + 120) = 0;
        *(v4 + 128) = 0;
        *(v4 + 136) = 0;
        v10 = *(v4 + 144);
        v25 = *(v4 + 160);
        v24 = v10;
        *(v4 + 144) = 0;
        *(v4 + 152) = 0;
        *(v4 + 160) = 0;
        LODWORD(v8) = *(v4 + 168);
        v27 = *(v4 + 172);
        v26 = v8;
        v11 = *(v4 + 176);
        v29 = *(v4 + 192);
        __p = v11;
        *(v4 + 176) = 0;
        *(v4 + 184) = 0;
        *(v4 + 192) = 0;
        v12 = *(v4 + 200);
        v31 = *(v4 + 216);
        v30 = v12;
        quasar::Token::operator=(v4, v5);
        quasar::Token::operator=(v5, v13);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24);
        }

        v32[0] = &v22;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v32);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(v20);
        }

        v32[0] = &v18;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v32);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16);
        }

        if (SHIBYTE(v14) < 0)
        {
          operator delete(v13[0]);
        }

        v4 += 224;
        v5 -= 14;
      }

      while (v4 < v5);
    }
  }
}

void *std::__function::__value_func<std::vector<quasar::Token> ()(std::vector<quasar::Token> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1B54448B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL std::operator==[abi:ne200100]<char32_t,std::char_traits<char32_t>,std::allocator<char32_t>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 8);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v3 - 1;
  do
  {
    v10 = *v7++;
    v9 = v10;
    v12 = *v6++;
    v11 = v12;
    v14 = v8-- != 0;
    result = v11 == v9;
  }

  while (v11 == v9 && v14);
  return result;
}

void std::__split_buffer<quasar::Token>::emplace_back<char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(std::string **a1, char *__s, _DWORD *a3, _DWORD *a4, _DWORD *a5, float *a6, _BYTE *a7, _BYTE *a8)
{
  v9 = a7;
  v16 = a1[2];
  v17 = v16;
  if (v16 == a1[3])
  {
    v18 = a1[1];
    v19 = v18 - *a1;
    if (v18 <= *a1)
    {
      if (v16 == *a1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 0xDB6DB6DB6DB6DB6ELL * ((v16 - *a1) >> 5);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1[4], v21);
    }

    v20 = (0x6DB6DB6DB6DB6DB7 * (v19 >> 5) + 1) / -2;
    v17 = &v18[-14 * ((0x6DB6DB6DB6DB6DB7 * (v19 >> 5) + 1) / 2)];
    if (v18 != v16)
    {
      v22 = (0x6DB6DB6DB6DB6DB7 * (v19 >> 5) + 1) / -2;
      do
      {
        quasar::Token::operator=(v17, v18);
        v18 += 14;
        v17 = (v17 + 224);
      }

      while (v18 != v16);
      v18 = a1[1];
      v20 = v22;
      v9 = a7;
    }

    a1[1] = &v18[14 * v20];
    a1[2] = v17;
  }

  std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(a1[4], v17, __s, a3, a4, a5, a6, v9, a8);
  a1[2] = (a1[2] + 224);
}

void sub_1B5444B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::Token>::construct[abi:ne200100]<quasar::Token,char const(&)[2],unsigned int const&,unsigned int const&,unsigned int const&,float const&,BOOL,BOOL>(int a1, std::string *a2, char *__s, _DWORD *a4, _DWORD *a5, _DWORD *a6, float *a7, _BYTE *a8, _BYTE *a9)
{
  std::string::basic_string[abi:ne200100]<0>(&v23, __s);
  LODWORD(a4) = *a4;
  LODWORD(a5) = *a5;
  LODWORD(a6) = *a6;
  v15 = *a7;
  LOBYTE(a8) = *a8;
  LOBYTE(a7) = *a9;
  std::string::basic_string[abi:ne200100]<0>(v21, "");
  std::string::basic_string[abi:ne200100]<0>(v19, "");
  memset(v18, 0, sizeof(v18));
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Token::Token(a2, &v23, a4, a5, a6, a8, a7, v21, v15, v19, v18, 0, __p, 0, 0, 0);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v18;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }
}

void sub_1B5444C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __p = &a20;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 81) < 0)
  {
    operator delete(*(v34 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t **kaldi::nnet1::StdVectorRandomizer<std::vector<std::pair<int,float>>>::AddData(uint64_t *a1, uint64_t ***a2)
{
  if (a1[1] == *a1)
  {
    std::vector<std::vector<std::pair<int,int>>>::resize(a1, *(a1 + 14));
  }

  v4 = *(a1 + 12);
  v5 = *(a1 + 13);
  if (v4 >= 1)
  {
    v5 -= v4;
    if (v5 >= 1)
    {
      std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *>(&v12, (*a1 + 24 * v4), (*a1 + 24 * v4 + 24 * v5), *a1);
    }

    *(a1 + 12) = 0;
    *(a1 + 13) = v5;
  }

  v6 = *a1;
  v7 = *a2;
  v8 = a2[1];
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 - *a2) + v5;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) >= v9)
  {
    v10 = v5;
  }

  else
  {
    std::vector<std::vector<std::pair<int,int>>>::resize(a1, v9 + 1000);
    v7 = *a2;
    v8 = a2[1];
    v6 = *a1;
    v10 = *(a1 + 13);
  }

  result = std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *>(&v13, v7, v8, (v6 + 24 * v10));
  *(a1 + 13) -= 1431655765 * ((a2[1] - *a2) >> 3);
  return result;
}

uint64_t kaldi::nnet1::StdVectorRandomizer<std::vector<std::pair<int,float>>>::Value(uint64_t a1)
{
  std::vector<std::vector<std::pair<int,int>>>::resize((a1 + 24), *(a1 + 72));
  v2 = (*a1 + 24 * *(a1 + 48));
  std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *>(&v4, v2, &v2[3 * *(a1 + 72)], *(a1 + 24));
  return a1 + 24;
}

uint64_t kaldi::nnet1::MatrixRandomizer::Value(kaldi::nnet1::MatrixRandomizer *this, unsigned int a2, void *a3)
{
  v6 = *(this + 12) + 40 * a2;
  if (&v14 != v6)
  {
    v7 = *(this + 43);
    v8 = *(this + 4);
    v9 = *(this + 6);
    v10 = *(this + 4);
    v11 = v9 * *(this + 36);
    v12 = *(this + 7) - v11;
    *(v6 + 8) = *(this + 1) + 4 * v11;
    *(v6 + 16) = v8;
    *(v6 + 20) = v7;
    *(v6 + 24) = v9;
    *(v6 + 28) = v12;
    *(v6 + 32) = v10;
  }

  v14 = &unk_1F2CFA908;
  v15 = 0u;
  v16 = 0u;
  quasar::Bitmap::~Bitmap(&v14);
  result = *(this + 12) + 40 * a2;
  *(result + 32) = a3;
  return result;
}

void *kaldi::nnet1::VectorRandomizer::AddData(void **a1, uint64_t a2)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    kaldi::Vector<float>::Resize(a1, *(a1 + 14), 0);
    v4 = *(a1 + 2);
  }

  v5 = *(a1 + 12);
  if (v5 >= 1)
  {
    v6 = *(a1 + 13) - v5;
    if (v6 >= 1)
    {
      v15 = 0;
      v16 = 0;
      v7 = *a1;
      v13 = 0;
      v14 = v7;
      LODWORD(v15) = v6;
      v11 = &v7[4 * v5];
      v12 = v6;
      kaldi::VectorBase<float>::CopyFromVec(&v14, &v11);
      LODWORD(v4) = *(a1 + 2);
    }

    *(a1 + 12) = 0;
    *(a1 + 13) = v6;
    v15 = 0;
    v16 = 0;
    v14 = *a1 + 4 * v6;
    v15 = (v4 - v6);
    kaldi::VectorBase<float>::SetZero(&v14);
    v4 = *(a1 + 2);
  }

  v8 = *(a1 + 13);
  v9 = *(a2 + 8);
  if (v4 < v9 + v8)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    kaldi::Vector<float>::Resize(&v14, v4, 1);
    kaldi::VectorBase<float>::CopyFromVec(&v14, a1);
    kaldi::Vector<float>::Resize(a1, (*(a1 + 13) + *(a2 + 8) + 1000), 1);
    v12 = 0;
    v13 = 0;
    v11 = *a1;
    LODWORD(v12) = v15;
    kaldi::VectorBase<float>::CopyFromVec(&v11, &v14);
    kaldi::Vector<float>::Destroy(&v14);
    v8 = *(a1 + 13);
    v9 = *(a2 + 8);
  }

  v15 = 0;
  v16 = 0;
  v14 = *a1 + 4 * v8;
  LODWORD(v15) = v9;
  result = kaldi::VectorBase<float>::CopyFromVec(&v14, a2);
  *(a1 + 13) += *(a2 + 8);
  return result;
}

void sub_1B54450C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void **kaldi::nnet1::VectorRandomizer::Value(void **this)
{
  kaldi::Vector<float>::Resize(this + 3, *(this + 18), 1);
  v2 = *(this + 12);
  v3 = *(this + 18);
  v6 = 0;
  v7 = 0;
  v5 = *this + 4 * v2;
  LODWORD(v6) = v3;
  kaldi::VectorBase<float>::CopyFromVec((this + 3), &v5);
  return this + 3;
}

uint64_t **std::__copy_impl::operator()[abi:ne200100]<std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *,std::vector<std::pair<int,float>> *>(uint64_t a1, uint64_t **a2, uint64_t **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::pair<int,float>>::__assign_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(a4, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<std::vector<std::pair<int,float>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5445220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::pair<int,float>>>,std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,float>>>,std::vector<std::pair<int,float>>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::pair<int,float>>>,std::vector<std::pair<int,float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

BOOL fst::AlignOutput(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = 16;
  while (1)
  {
    v3 = a1 + *(*a1 - 24);
    if ((v3[32] & 5) != 0)
    {
      break;
    }

    (*(**(v3 + 5) + 32))(__p);
    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 % 0x10)
    {
      std::ostream::write();
      if (--v2)
      {
        continue;
      }
    }

    v4 = a1 + *(*a1 - 24);
    if ((v4[32] & 5) != 0)
    {
      v5 = -1;
    }

    else
    {
      (*(**(v4 + 5) + 32))(__p);
      v5 = v10;
    }

    return v5 % 16 == 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  fst::LogMessage::LogMessage(&v7, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "AlignOutput: can't determine stream position", 44);
  fst::LogMessage::~LogMessage(&v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5445514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FstHeader::Write()
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  return 1;
}

UChar *quasar::UnicodeCharacterVectorFromUTF8@<X0>(quasar *this@<X0>, UChar **a2@<X8>)
{
  v5 = strlen(this);
  v6 = v5 + 1;
  std::vector<unsigned short>::vector[abi:ne200100](a2, v5 + 1);
  pErrorCode = U_ZERO_ERROR;
  result = u_strFromUTF8(*a2, v6, 0, this, -1, &pErrorCode);
  if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Invalid UTF8 string:", 20);
    v9 = strlen(this);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, this, v9);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
  }

  return result;
}

void sub_1B54457C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::UTF8StringFromUnicodeCharacterArray(UChar *src@<X0>, int32_t srcLength@<W1>, _BYTE *a3@<X8>)
{
  *pErrorCode = 0;
  u_strToUTF8(0, 0, pErrorCode, src, srcLength, &pErrorCode[1]);
  if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR && pErrorCode[1] != U_BUFFER_OVERFLOW_ERROR)
  {
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
    v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v15);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Could not extract UTF8 length: ", 31);
    v10 = u_errorName(pErrorCode[1]);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, v10);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v15);
  }

  pErrorCode[1] = U_ZERO_ERROR;
  memset(&v14, 0, sizeof(v14));
  if (pErrorCode[0] == -1)
  {
    end = 0;
    begin = 0;
  }

  else
  {
    std::vector<signed char>::__append(&v14, pErrorCode[0] + 1);
    begin = v14.__begin_;
    end = v14.__end_;
  }

  u_strToUTF8(begin, end - begin, pErrorCode, src, srcLength, &pErrorCode[1]);
  if (pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
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
    v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v15);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Could not extract UTF8 chars: ", 30);
    v12 = u_errorName(pErrorCode[1]);
    v13 = strlen(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v15);
  }

  std::string::basic_string[abi:ne200100](a3, v14.__begin_, pErrorCode[0]);
  if (v14.__begin_)
  {
    v14.__end_ = v14.__begin_;
    operator delete(v14.__begin_);
  }
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void quasar::URegularExpressionWrapper::URegularExpressionWrapper(quasar::URegularExpressionWrapper *a1, const char *a2)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  quasar::URegularExpressionWrapper::initWrappee(a1, a2);
}

void quasar::URegularExpressionWrapper::replaceAllUTextWithSpace(URegularExpression **this@<X0>, UText **a2@<X1>, UErrorCode *a3@<X2>, UText **a4@<X8>)
{
  uregex_setUText(*this, *a2, a3);
  if (*a3 < 1)
  {
    v10 = utext_openUTF8(0, " ", -1, a3);
    v15 = v10;
    if (*a3 < 1)
    {
      v14 = uregex_replaceAllUText(*this, v10, 0, a3);
    }

    else
    {
      if (quasar::gLogLevel >= 1)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Could not create space text: ", 29);
        v12 = u_errorName(*a3);
        v13 = strlen(v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v16);
      }

      v14 = 0;
    }

    *a4 = v14;
    quasar::UTextWrapper::~UTextWrapper(&v15);
  }

  else
  {
    if (quasar::gLogLevel >= 1)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Could not set regext text: ", 27);
      v8 = u_errorName(*a3);
      v9 = strlen(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v16);
    }

    *a4 = 0;
  }
}

void sub_1B5445D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::UTextWrapper::~UTextWrapper(va);
  _Unwind_Resume(a1);
}

void quasar::URegularExpressionWrapper::split(URegularExpression **a1@<X0>, char *a2@<X1>, std::vector<std::string> *a3@<X8>)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  quasar::UnicodeCharacterVectorFromUTF8(v5, &v56);
  status = U_ZERO_ERROR;
  uregex_setText(*a1, v56, -1, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(v40, 0, sizeof(v40));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Could not set regext text: ", 27);
    v26 = u_errorName(status);
    v27 = strlen(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v40);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<unsigned short>::resize(&v37, v57 - v56 + 1);
  requiredCapacity = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<unsigned short *>::resize(&v33, v57 - v56 + 1);
  v6 = uregex_split(*a1, v37, (v38 - v37) >> 1, &requiredCapacity, v33, (v34 - v33) >> 3, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(v40, 0, sizeof(v40));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Error getting capacity for splitting text: ", 43);
    v29 = u_errorName(status);
    v30 = strlen(v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v40);
  }

  v7 = v6;
  a3->__begin_ = 0;
  a3->__end_ = 0;
  a3->__end_cap_.__value_ = 0;
  std::vector<std::string>::reserve(a3, v6);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 8 * v7;
    do
    {
      quasar::UTF8StringFromUnicodeCharacterArray(*(v33 + v8), -1, __p);
      end = a3->__end_;
      value = a3->__end_cap_.__value_;
      if (end >= value)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((end - a3->__begin_) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((value - a3->__begin_) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        *&v40[32] = a3;
        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a3, v16);
        }

        v17 = 24 * v13;
        v18 = *__p;
        *(v17 + 16) = v32;
        *v17 = v18;
        __p[1] = 0;
        v32 = 0;
        __p[0] = 0;
        v19 = 24 * v13 + 24;
        v20 = a3->__end_ - a3->__begin_;
        v21 = (24 * v13 - v20);
        memcpy((v17 - v20), a3->__begin_, v20);
        begin = a3->__begin_;
        a3->__begin_ = v21;
        a3->__end_ = v19;
        v23 = a3->__end_cap_.__value_;
        a3->__end_cap_.__value_ = 0;
        *&v40[16] = begin;
        *&v40[24] = v23;
        *v40 = begin;
        *&v40[8] = begin;
        std::__split_buffer<std::string>::~__split_buffer(v40);
        v24 = SHIBYTE(v32);
        a3->__end_ = v19;
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v12 = *__p;
        end->__r_.__value_.__r.__words[2] = v32;
        *&end->__r_.__value_.__l.__data_ = v12;
        a3->__end_ = end + 1;
      }

      v8 += 8;
    }

    while (v9 != v8);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

void sub_1B54460F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 112);
  if (v22)
  {
    *(v20 - 104) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short *>::resize(void *a1, unint64_t a2)
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
    std::vector<unsigned short *>::__append(a1, a2 - v2);
  }
}

void quasar::URegularExpressionWrapper::trim(URegularExpression **a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  quasar::UnicodeCharacterVectorFromUTF8(v5, &v49);
  v6 = (v50 - v49) >> 1;
  v7 = v6 - 1;
  do
  {
    LODWORD(v6) = v6 - 1;
    if (v49[v7])
    {
      break;
    }

    --v7;
  }

  while ((v6 & 0x80000000) == 0);
  status = U_ZERO_ERROR;
  uregex_setText(*a1, v49, -1, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
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
    v32 = 0u;
    v33 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not set regex text: ", 26);
    v26 = u_errorName(status);
    v27 = strlen(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v8 = v6 + 1;
  uregex_setRegion(*a1, 0, v6 + 1, &status);
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
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
    v32 = 0u;
    v33 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not set region: ", 22);
    v29 = u_errorName(status);
    v30 = strlen(v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  Next = uregex_findNext(*a1, &status);
  v10 = 0;
  while (Next == 1)
  {
    if (status >= U_ILLEGAL_ARGUMENT_ERROR)
    {
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
      v32 = 0u;
      v33 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not trim: ", 16);
      v23 = u_errorName(status);
      v24 = strlen(v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v11 = uregex_start(*a1, 0, &status);
    if (status >= U_ILLEGAL_ARGUMENT_ERROR)
    {
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
      v32 = 0u;
      v33 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not trim: ", 16);
      v20 = u_errorName(status);
      v21 = strlen(v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    v12 = v11;
    v13 = uregex_end(*a1, 0, &status);
    if (status >= U_ILLEGAL_ARGUMENT_ERROR)
    {
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
      v32 = 0u;
      v33 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not trim: ", 16);
      v17 = u_errorName(status);
      v18 = strlen(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
    }

    if (v13 <= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    if (!v12)
    {
      v10 = v14;
    }

    if (v12 >= v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = v12;
    }

    if (v13 >= v6)
    {
      v8 = v15;
    }

    Next = uregex_findNext(*a1, &status);
  }

  if (v10 >= v8)
  {
    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    __p[1] = 0;
    *&v32 = 0;
    __p[0] = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(__p, &v49[v10], &v49[v8], (2 * v8 - 2 * v10) >> 1);
    quasar::UTF8StringFromUnicodeCharacterArray(__p[0], (__p[1] - __p[0]) >> 1, a3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_1B544662C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::URegularExpressionWrapper::replaceAll(URegularExpression **a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  status = U_ZERO_ERROR;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v44 = utext_openUTF8(0, a2, -1, &status);
  if (status < U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    replacement = utext_openUTF8(0, v10, -1, &status);
    if (status < U_ILLEGAL_ARGUMENT_ERROR)
    {
      uregex_setUText(*a1, v44, &status);
      if (status < U_ILLEGAL_ARGUMENT_ERROR)
      {
        v17 = uregex_replaceAllUText(*a1, replacement, 0, &status);
        if (status < U_ILLEGAL_ARGUMENT_ERROR)
        {
          *&v27 = v17;
          quasar::UTextWrapper::getUTF8String(&v27, &status, __p);
          quasar::UTextWrapper::~UTextWrapper(&v27);
          if (status < U_ILLEGAL_ARGUMENT_ERROR)
          {
            *a4 = *__p;
            *(a4 + 16) = v25;
          }

          else
          {
            if (quasar::gLogLevel >= 1)
            {
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
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              v27 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
              v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Could not get utf-8 string: ", 28);
              v22 = u_errorName(status);
              v23 = strlen(v22);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
              quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
            }

            std::string::basic_string[abi:ne200100]<0>(a4, "");
            if (SHIBYTE(v25) < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_17;
        }

        if (quasar::gLogLevel >= 1)
        {
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
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Could not replace text with regex: ", 35);
          v19 = u_errorName(status);
          v20 = strlen(v19);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
          quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
        }
      }

      else if (quasar::gLogLevel >= 1)
      {
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
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Could not set regex text: ", 26);
        v15 = u_errorName(status);
        v16 = strlen(v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
      }
    }

    else if (quasar::gLogLevel >= 1)
    {
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
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Could not create to text: ", 26);
      v12 = u_errorName(status);
      v13 = strlen(v12);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
    }

    std::string::basic_string[abi:ne200100]<0>(a4, "");
LABEL_17:
    quasar::UTextWrapper::~UTextWrapper(&replacement);
    goto LABEL_18;
  }

  if (quasar::gLogLevel >= 1)
  {
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
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v27);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Could not create input text: ", 29);
    v8 = u_errorName(status);
    v9 = strlen(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v27);
  }

  std::string::basic_string[abi:ne200100]<0>(a4, "");
LABEL_18:
  quasar::UTextWrapper::~UTextWrapper(&v44);
}

void sub_1B5446A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, UText *a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::UTextWrapper::~UTextWrapper(&a15);
  quasar::UTextWrapper::~UTextWrapper((v18 - 48));
  _Unwind_Resume(a1);
}

void quasar::UTextWrapper::getUTF8String(UText **this@<X0>, UErrorCode *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *this;
  if (v5)
  {
    v7 = utext_nativeLength(v5);
    v8 = utext_extract(*this, 0, v7, 0, 0, a2);
    if (*a2 < 1 || *a2 == U_BUFFER_OVERFLOW_ERROR)
    {
      v10 = v8;
      *a2 = U_ZERO_ERROR;
      src = 0;
      v28 = 0;
      v29 = 0;
      std::vector<unsigned short>::resize(&src, v8 + 2);
      utext_extract(*this, 0, v7, src, (v28 - src) >> 1, a2);
      if (*a2 >= 1 && quasar::gLogLevel >= 1)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Could not extract UTF16 chars: ", 31);
        v12 = u_errorName(*a2);
        v13 = strlen(v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, v13);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v30);
      }

      pDestLength = 0;
      u_strToUTF8(0, 0, &pDestLength, src, v10, a2);
      if (*a2 >= 1 && *a2 != U_BUFFER_OVERFLOW_ERROR && quasar::gLogLevel >= 1)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Could not extract UTF8 length: ", 31);
        v15 = u_errorName(*a2);
        v16 = strlen(v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v30);
      }

      *a2 = U_ZERO_ERROR;
      memset(&v25, 0, sizeof(v25));
      if (pDestLength == -1)
      {
        end = 0;
        begin = 0;
      }

      else
      {
        std::vector<signed char>::__append(&v25, pDestLength + 1);
        begin = v25.__begin_;
        end = v25.__end_;
      }

      u_strToUTF8(begin, end - begin, &pDestLength, src, v10, a2);
      if (*a2 >= 1 && quasar::gLogLevel >= 1)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Could not extract UTF8 chars: ", 30);
        v23 = u_errorName(*a2);
        v24 = strlen(v23);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v30);
      }

      std::string::basic_string[abi:ne200100](a3, v25.__begin_, pDestLength);
      if (v25.__begin_)
      {
        v25.__end_ = v25.__begin_;
        operator delete(v25.__begin_);
      }

      if (src)
      {
        v28 = src;
        operator delete(src);
      }
    }

    else
    {
      if (quasar::gLogLevel >= 1)
      {
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v30);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "Could not extract UTF16 length: ", 32);
        v20 = u_errorName(*a2);
        v21 = strlen(v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v30);
      }

      std::string::basic_string[abi:ne200100]<0>(a3, "");
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }
}

void sub_1B5446EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::URegularExpressionWrapper::isMatch(URegularExpression **a1, const char *a2)
{
  status = U_ZERO_ERROR;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v3 = utext_openUTF8(0, a2, -1, &status);
  v36 = v3;
  if (status < U_ILLEGAL_ARGUMENT_ERROR)
  {
    uregex_setUText(*a1, v3, &status);
    if (status < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v12 = uregex_matches(*a1, -1, &status);
      if (status < U_ILLEGAL_ARGUMENT_ERROR)
      {
        v17 = v12 != 0;
        goto LABEL_13;
      }

      if (quasar::gLogLevel >= 1)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
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
        v19 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "(", 1);
        v14 = u_errorName(status);
        v15 = strlen(v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ") Failed to apply regex", 23);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
      }
    }

    else if (quasar::gLogLevel >= 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
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
      v19 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "(", 1);
      v9 = u_errorName(status);
      v10 = strlen(v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") Could not set regex input", 27);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
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
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "(", 1);
    v5 = u_errorName(status);
    v6 = strlen(v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") Could not decode UTF8", 23);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
  }

  v17 = 0;
LABEL_13:
  quasar::UTextWrapper::~UTextWrapper(&v36);
  return v17;
}

BOOL quasar::URegularExpressionWrapper::find(URegularExpression **a1, const char *a2)
{
  status = U_ZERO_ERROR;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v3 = utext_openUTF8(0, a2, -1, &status);
  v36 = v3;
  if (status < U_ILLEGAL_ARGUMENT_ERROR)
  {
    uregex_setUText(*a1, v3, &status);
    if (status < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v12 = uregex_find(*a1, -1, &status);
      if (status < U_ILLEGAL_ARGUMENT_ERROR)
      {
        v17 = v12 != 0;
        goto LABEL_13;
      }

      if (quasar::gLogLevel >= 1)
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
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
        v19 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "(", 1);
        v14 = u_errorName(status);
        v15 = strlen(v14);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ") Failed to apply regex", 23);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
      }
    }

    else if (quasar::gLogLevel >= 1)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
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
      v19 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "(", 1);
      v9 = u_errorName(status);
      v10 = strlen(v9);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") Could not set regex input", 27);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
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
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "(", 1);
    v5 = u_errorName(status);
    v6 = strlen(v5);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") Could not decode UTF8", 23);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v19);
  }

  v17 = 0;
LABEL_13:
  quasar::UTextWrapper::~UTextWrapper(&v36);
  return v17;
}

void quasar::UTextWrapper::~UTextWrapper(UText **this)
{
  v1 = *this;
  if (v1)
  {
    utext_close(v1);
  }
}

UText **quasar::UTextWrapper::operator=(UText **a1, UText **a2)
{
  v4 = *a1;
  if (v4)
  {
    utext_close(v4);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

void quasar::getRegexCharSet(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  quasar::UnicodeCharacterVectorFromUTF8(a1, v15);
  __p = 0;
  v13 = 0;
  v14 = 0;
  v11 = 124;
  v10 = 92;
  *v16 = xmmword_1B5AFFF40;
  *&v16[10] = *(&xmmword_1B5AFFF40 + 10);
  std::unordered_set<unsigned short>::unordered_set(v9, v16, 13);
  ubrk_open();
  v3 = ubrk_first();
  v4 = 0;
  v5 = 0;
  while (!v5)
  {
    v6 = v4;
    v4 = v3;
    if (v3 == -1)
    {
      break;
    }

    if (v13 != __p)
    {
      std::vector<unsigned short>::push_back[abi:ne200100](&__p, &v11);
    }

    v7 = v4 - v6;
    if (v4 <= v6)
    {
      v5 = 0;
    }

    else
    {
      v8 = 2 * v6;
      do
      {
        v5 = *(v15[0] + v8) == 0;
        if (!*(v15[0] + v8))
        {
          break;
        }

        if (std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(v9, (v15[0] + v8)))
        {
          std::vector<unsigned short>::push_back[abi:ne200100](&__p, &v10);
        }

        std::vector<unsigned short>::push_back[abi:ne200100](&__p, v15[0] + v8);
        v8 += 2;
        --v7;
      }

      while (v7);
    }

    v3 = ubrk_next();
  }

  ubrk_close();
  *(v13 - 1) = 0;
  quasar::UTF8StringFromUnicodeCharacterArray(__p, -1, a2);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v9);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void sub_1B5447800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,char>>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B544799C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short *>::__append(uint64_t a1, unint64_t a2)
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
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t std::unordered_set<unsigned short>::unordered_set(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 2 * a3;
    do
    {
      std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(a1, a2++);
      v5 -= 2;
    }

    while (v5);
  }

  return a1;
}

uint64_t **std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(void *a1, unsigned __int16 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1B54485CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v24 + 215) < 0)
  {
    operator delete(*v26);
  }

  v28 = *(v24 + 168);
  if (v28)
  {
    *(v24 + 176) = v28;
    operator delete(v28);
  }

  if (*(v24 + 167) < 0)
  {
    operator delete(*v25);
  }

  v29 = *(v24 + 120);
  if (v29)
  {
    *(v24 + 128) = v29;
    operator delete(v29);
  }

  if (*(v24 + 119) < 0)
  {
    operator delete(*a10);
  }

  if (*(v24 + 79) < 0)
  {
    operator delete(*a12);
  }

  if (*(v24 + 39) < 0)
  {
    operator delete(*a11);
  }

  v30 = *(v24 + 8);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(exception_object);
}

void *LHash<unsigned int,Trie<unsigned int,unsigned long>>::alloc(void *a1, unsigned int a2)
{
  v3 = -1;
  do
  {
    v4 = (1 << ++v3);
  }

  while (v4 < a2);
  result = BM_malloc(24 * (v4 - 1) + 32);
  v6 = 0;
  *a1 = result;
  *result = *result & 0xFFFFFFE0 | v3 & 0x1F;
  **a1 &= 0x1Fu;
  do
  {
    v7 = *a1 + v6;
    *(v7 + 24) = -1;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    v6 += 24;
    --v4;
  }

  while (v4);
  return result;
}

void LHash<unsigned int,Trie<unsigned int,unsigned long>>::clear(void *a1, unsigned int a2)
{
  v4 = *a1;
  if (v4)
  {
    BM_free(v4, 24 * ~(-1 << *v4) + 32);
    *a1 = 0;
  }

  if (a2)
  {
    if (a2 >= 8)
    {
      a2 = ((a2 + 1) / 0.8);
    }

    LHash<unsigned int,Trie<unsigned int,unsigned long>>::alloc(a1, a2);
  }
}

uint64_t LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(void *a1, unsigned int a2, _BYTE *a3)
{
  if (!*a1)
  {
    LHash<unsigned int,Trie<unsigned int,unsigned long>>::alloc(a1, 1u);
  }

  v24 = 0;
  v6 = LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, a2, &v24);
  *a3 = v6;
  v7 = *a1;
  if (!v6)
  {
    v8 = *v7;
    v9 = 1 << (v8 & 0x1F);
    v10 = v8 >> 5;
    if (v8 >= 0xE0)
    {
      v11 = ((v10 + 2) / 0.8);
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 > v9)
    {
      LHash<unsigned int,Trie<unsigned int,unsigned long>>::alloc(a1, v11);
      **a1 = v8 & 0xFFFFFFE0 | **a1 & 0x1F;
      if ((**a1 & 0x1Fu) >= 3)
      {
        v12 = (v7 + 3);
        v13 = 1 << (v8 & 0x1F);
        v14 = (v7 + 3);
        do
        {
          v16 = *v14;
          v14 += 6;
          v15 = v16;
          if (v16 != -1)
          {
            v17 = v12 - 4;
            LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, v15, &v24);
            v18 = *a1 + 24 * v24;
            v19 = *v17;
            *(v18 + 24) = *(v17 + 2);
            *(v18 + 8) = v19;
          }

          v12 = v14;
          --v13;
        }

        while (v13);
      }

      else
      {
        memcpy((*a1 + 8), v7 + 1, 24 * v10);
      }

      BM_free(v7, 24 * (v9 - 1) + 32);
      LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, a2, &v24);
      v7 = *a1;
    }

    LODWORD(v7[3 * v24 + 3]) = a2;
    v20 = 3 * v24;
    v21 = &v7[3 * v24 + 1];
    *v21 = 0;
    v21[1] = 0;
    v22 = *a1 + 8 * v20;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    **a1 += 32;
    v7 = *a1;
  }

  return &v7[3 * v24 + 1];
}

uint64_t LHash<unsigned int,Trie<unsigned int,unsigned long>>::remove(unsigned int **a1, unsigned int a2, _OWORD *a3)
{
  i = 0;
  result = LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, a2, &i);
  if (result)
  {
    v6 = *a1;
    v7 = (*a1 + 2);
    *(v7 + 24 * i + 16) = -1;
    if (a3)
    {
      *a3 = *(v7 + 24 * i);
      v6 = *a1;
    }

    v8 = *v6;
    v9 = *v6 & 0x1F;
    if (v9 >= 3)
    {
      v11 = (i + 1) & ~(-1 << v9);
      v19 = 0;
      for (i = v11; ; i = v11)
      {
        v12 = v6[6 * v11 + 6];
        if (v12 == -1)
        {
          break;
        }

        v13 = LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, v12, &v19);
        v6 = *a1;
        if (!v13)
        {
          v14 = v6 + 2;
          v15 = &v14[6 * v19];
          v16 = 3 * i;
          v17 = &v14[6 * i];
          v18 = *(v17 + 2);
          *v15 = *v17;
          *(v15 + 2) = v18;
          v6 = *a1;
          (*a1)[2 * v16 + 6] = -1;
        }

        v19 = 0;
        v11 = (i + 1) & ~(-1 << *v6);
      }
    }

    else
    {
      v10 = v8 >> 5;
      memmove(&v6[6 * i + 2], &v6[6 * i + 8], 24 * (~i + (v8 >> 5)));
      v6 = *a1;
      (*a1)[6 * v10] = -1;
    }

    *v6 -= 32;
    return 1;
  }

  return result;
}

_DWORD **LHash<unsigned int,Trie<unsigned int,unsigned long>>::memStats(_DWORD **result, uint64_t *a2)
{
  v2 = *a2 + 8;
  *a2 = v2;
  v3 = *result;
  if (*result)
  {
    v4 = 1 << *v3;
    v5 = 24 * (v4 - 1) + 32;
    *a2 = v5 + v2;
    a2[1] += 24 * (v4 - (*v3 >> 5));
    v6 = 256;
    if (v5 < 0x100)
    {
      v6 = 24 * (v4 - 1) + 32;
    }

    ++*(a2 + v6 + 4);
  }

  return result;
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B5448DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::init(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = MEMORY[0x1B8C85310](result, 0x1000C8052888210);
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  if (*a1)
  {
    *(a1 + 12) = **a1 >> 5;

    LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::sortKeys();
  }

  *(a1 + 12) = 0;
  return result;
}

uint64_t LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 24 * v10;
  result = v8 + 8;
  *a2 = *(v8 + 24);
  return result;
}

_DWORD **Trie<unsigned int,unsigned long>::~Trie(_DWORD **a1)
{
  LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(v4, a1, 0);
  v3 = 0;
  while (LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(v4, &v3))
  {
    Trie<unsigned int,unsigned long>::~Trie();
  }

  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8052888210);
  }

  LHash<unsigned int,Trie<unsigned int,unsigned long>>::clear(a1, 0);
  return a1;
}

void *Trie<unsigned int,unsigned long>::insertTrie(void *result, unsigned int *a2, _BYTE *a3)
{
  if (!a2 || (v5 = *a2, v5 == -1))
  {
LABEL_6:
    *a3 = 1;
  }

  else
  {
    v6 = a2 + 1;
    while (1)
    {
      result = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(result, v5, a3);
      if (!*a3)
      {
        break;
      }

      v7 = *v6++;
      v5 = v7;
      if (v7 == -1)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    return Trie<unsigned int,unsigned long>::insertTrie(result, v6, &v8);
  }

  return result;
}

uint64_t Trie<unsigned int,unsigned long>::remove(unsigned int **a1, unsigned int *a2, void *a3)
{
  v6 = 0uLL;
  v4 = Trie<unsigned int,unsigned long>::removeTrie(a1, a2, &v6);
  if (a3)
  {
    *a3 = *(&v6 + 1);
  }

  Trie<unsigned int,unsigned long>::~Trie(&v6);
  return v4;
}

uint64_t Trie<unsigned int,unsigned long>::removeTrie(unsigned int **a1, unsigned int *a2, _OWORD *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (v4 == -1)
  {
    return 0;
  }

  v8 = a2[1];
  v7 = a2 + 1;
  if (v8 != -1)
  {
    LODWORD(v11) = 0;
    if (LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a1, v4, &v11))
    {
      return Trie<unsigned int,unsigned long>::removeTrie(&(*a1)[6 * v11 + 2], v7, a3);
    }

    return 0;
  }

  if (!a3)
  {
    v11 = 0uLL;
    if (LHash<unsigned int,Trie<unsigned int,unsigned long>>::remove(a1, v4, &v11))
    {
      Trie<unsigned int,unsigned long>::~Trie(&v11);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    Trie<unsigned int,unsigned long>::~Trie(&v11);
    return v9;
  }

  return LHash<unsigned int,Trie<unsigned int,unsigned long>>::remove(a1, v4, a3);
}

uint64_t Trie<unsigned int,unsigned long>::memStats(_DWORD **a1, uint64_t *a2)
{
  *a2 += 8;
  LHash<unsigned int,Trie<unsigned int,unsigned long>>::memStats(a1, a2);
  LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(v7, a1, 0);
  v6 = 0;
  while (1)
  {
    v4 = LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(v7, &v6);
    if (!v4)
    {
      break;
    }

    *a2 -= 16;
    Trie<unsigned int,unsigned long>::memStats(v4, a2);
  }

  result = v8;
  if (v8)
  {
    return MEMORY[0x1B8C85310](v8, 0x1000C8052888210);
  }

  return result;
}

void sub_1B5449228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TrieIter2<unsigned int,unsigned long>::TrieIter2(uint64_t a1, _DWORD **a2, _DWORD *a3, int a4, uint64_t a5)
{
  v6 = a3;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(a1 + 32, a2, a5);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!a4)
  {
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    ++v6;
LABEL_4:
    *v6 = -1;
  }

  return a1;
}

uint64_t TrieIter2<unsigned int,unsigned long>::init(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = TrieIter2<unsigned int,unsigned int>::~TrieIter2(v2);
    MEMORY[0x1B8C85350](v3, 0x10F0C40A7879D68);
  }

  *(a1 + 64) = 0;
  result = LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::init(a1 + 32);
  *(a1 + 72) = 0;
  return result;
}

uint64_t TrieIter2<unsigned int,unsigned long>::next(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 8);
      v4 = a1 + 32;

      return LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(v4, v3);
    }

    else
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        result = TrieIter2<unsigned int,unsigned long>::next(v6);
        if (result)
        {
          return result;
        }

        v7 = *(a1 + 64);
        if (v7)
        {
          v8 = TrieIter2<unsigned int,unsigned int>::~TrieIter2(v7);
          MEMORY[0x1B8C85350](v8, 0x10F0C40A7879D68);
        }

        *(a1 + 64) = 0;
      }

      result = LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(a1 + 32, *(a1 + 8));
      if (result)
      {
        operator new();
      }
    }
  }

  else if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    *(a1 + 72) = 1;
    return *a1;
  }

  return result;
}

void NgramCounts<unsigned long>::NgramCounts(LMStats *a1, Vocab *a2, int a3)
{
  LMStats::LMStats(a1, a2);
  *v4 = &unk_1F2D12C98;
  *(v4 + 152) = 0;
  *(v4 + 156) = a3;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
}

void NgramCounts<unsigned long>::~NgramCounts(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D12C98;
  Trie<unsigned int,unsigned long>::~Trie(a1 + 20);

  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2D12C98;
  Trie<unsigned int,unsigned long>::~Trie(a1 + 20);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

_DWORD **NgramCounts<unsigned long>::findCount(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v5 = 0;
  result = Trie<unsigned int,unsigned int>::findTrie((a1 + 160), a2, &v5);
  if (result)
  {
    return Trie<unsigned int,unsigned int>::find(result, a3);
  }

  return result;
}

_DWORD *NgramCounts<unsigned long>::insertCount(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  v7 = 0;
  inserted = Trie<unsigned int,unsigned long>::insertTrie((a1 + 160), a2, &v7);
  v8 = 0;
  v5 = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(inserted, a3, &v8);
  if (!v8)
  {
    *v5 = 0;
  }

  return v5 + 2;
}

uint64_t NgramCounts<unsigned long>::countSentence(uint64_t a1, uint64_t a2)
{
  return (*(*a1 + 104))(a1, a2, 1);
}

{
  return (*(*a1 + 136))(a1, a2, 1);
}

uint64_t NgramCounts<unsigned long>::countSentence(uint64_t a1, uint64_t a2, char *a3)
{
  if (*a3 == 45)
  {
    return 0;
  }

  v9 = v3;
  v10 = v4;
  v8 = 0;
  if (sscanf(a3, "%lu", &v8) == 1)
  {
    return (*(*a1 + 104))(a1, a2, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t NgramCounts<unsigned long>::countSentence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _ZTW20countSentenceWidsTLS();
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = malloc_type_calloc(0xC353uLL, 4uLL, 0x100004052888210uLL);
    *v8 = v7;
  }

  v9 = *(a1 + 24);
  v10 = *v9;
  if (*(a1 + 32))
  {
    v11 = (*(v10 + 256))(v9, a2, v7 + 4, 50001);
  }

  else
  {
    v12 = (*(v10 + 88))(v9);
    v11 = (*(*v9 + 272))(v9, a2, v7 + 4, 50001, *v12);
  }

  v13 = *(*a1 + 128);

  return v13(a1, v7, v11, a3);
}

{
  v6 = _ZTW20countSentenceWidsTLS();
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = malloc_type_calloc(0xC353uLL, 4uLL, 0x100004052888210uLL);
    *v8 = v7;
  }

  v9 = *(a1 + 24);
  v10 = *v9;
  if (*(a1 + 32))
  {
    v11 = (*(v10 + 264))(v9, a2, v7 + 4, 50001);
  }

  else
  {
    v12 = (*(v10 + 88))(v9);
    v11 = (*(*v9 + 280))(v9, a2, v7 + 4, 50001, *v12);
  }

  v13 = *(*a1 + 128);

  return v13(a1, v7, v11, a3);
}

uint64_t NgramCounts<unsigned long>::countSentence(uint64_t a1, int **a2)
{
  v4 = _ZTW20countSentenceWidsTLS();
  v5 = *v4;
  if (!*v4)
  {
    v6 = v4;
    v5 = malloc_type_calloc(0xC353uLL, 4uLL, 0x100004052888210uLL);
    *v6 = v5;
  }

  v7 = *a2;
  v8 = a2[1] - *a2;
  v9 = 50000;
  v10 = 1;
  v11 = v8 >> 2;
  while (v11)
  {
    v12 = *v7++;
    v5[v10] = v12;
    --v11;
    ++v10;
    if (!--v9)
    {
      goto LABEL_8;
    }
  }

  v5[(v8 >> 2) + 1] = -1;
LABEL_8:
  v13 = *(*a1 + 128);

  return v13(a1);
}

uint64_t NgramCounts<unsigned long>::countSentenceHelper(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4)
{
  if (a3 == 50001)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    v10 = 1;
  }

  else
  {
    v10 = a3 == 0;
  }

  if (!v10)
  {
    v11 = 1;
    do
    {
      v12 = a2[v11];
      if (v12 == *(*(**(a1 + 24) + 88))(*(a1 + 24)))
      {
        *(a1 + 72) = *(a1 + 72) + 1.0;
      }

      ++v11;
    }

    while (v11 <= a3);
  }

  if (*(a1 + 33) && (v13 = a2[1], v13 != *(*(**(a1 + 24) + 104))(*(a1 + 24))))
  {
    *a2 = *(*(**(a1 + 24) + 104))(*(a1 + 24));
    v14 = a2;
  }

  else
  {
    v14 = a2 + 1;
  }

  if (*(a1 + 34))
  {
    v15 = a2[a3];
    if (v15 != *(*(**(a1 + 24) + 120))(*(a1 + 24)))
    {
      a2[a3 + 1] = *(*(**(a1 + 24) + 120))(*(a1 + 24));
      a2[a3 + 2] = -1;
    }
  }

  v16 = *(*a1 + 136);

  return v16(a1, v14, a4);
}

uint64_t NgramCounts<unsigned long>::countSentence(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a2;
  if (*a2 == -1)
  {
    v6 = 0;
    v7 = -1;
  }

  else
  {
    LODWORD(v6) = 0;
    do
    {
      NgramCounts<unsigned long>::incrementCounts(a1, a2, 1u, a3);
      v6 = (v6 + 1);
      a2 = &v3[v6];
    }

    while (*a2 != -1);
    v7 = *v3;
  }

  *(a1 + 64) = *(a1 + 64) + v6;
  if (v7 == *(*(**(a1 + 24) + 104))(*(a1 + 24)))
  {
    *(a1 + 64) = *(a1 + 64) + -1.0;
  }

  if (v6)
  {
    v8 = v3[(v6 - 1)];
    if (v8 == *(*(**(a1 + 24) + 120))(*(a1 + 24)))
    {
      *(a1 + 64) = *(a1 + 64) + -1.0;
    }
  }

  *(a1 + 56) = *(a1 + 56) + 1.0;
  return v6;
}

uint64_t NgramCounts<unsigned long>::incrementCounts(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (*(result + 156))
  {
    v6 = result;
    v7 = 0;
    result += 160;
    v8 = a3;
    do
    {
      v9 = *(a2 + 4 * v7);
      if (v9 == -1)
      {
        break;
      }

      v10 = 0;
      result = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(result, v9, &v10);
      if (!v10)
      {
        *result = 0;
      }

      if (++v7 >= v8)
      {
        *(result + 8) += a4;
      }
    }

    while (v7 < *(v6 + 156));
  }

  return result;
}

uint64_t NgramCounts<unsigned long>::read(uint64_t a1, File *this, unsigned int a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = File::getline(this);
  if (v8)
  {
    memset(v15, 0, 512);
    v13 = 0;
    if (!strcmp(v8, "SRILM_BINARY_COUNTS_001\n"))
    {
      File::File(v12, *this, "rb", 1);
      Binary = NgramCounts<unsigned long>::readBinary(a1, v12, a3, a4);
      File::~File(v12);
      return Binary;
    }

    File::ungetline(this);
    for (i = NgramCounts<unsigned long>::readNgram(this, v15, 0x65, &v13); i; i = NgramCounts<unsigned long>::readNgram(this, v15, 0x65, &v13))
    {
      NgramCounts<unsigned long>::updateCounts(a1, i, a3, a4, v13, v15, v14);
    }
  }

  return 1;
}

void sub_1B5449FAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  File::~File(va);
  _Unwind_Resume(a1);
}

uint64_t NgramCounts<unsigned long>::readBinary(uint64_t a1, File *this, int a3, uint64_t a4)
{
  v8 = File::getline(this);
  if (!v8 || strcmp(v8, "SRILM_BINARY_COUNTS_001\n"))
  {
    v9 = File::position(this, MEMORY[0x1E69E5300]);
    v10 = "bad binary format\n";
    v11 = 18;
LABEL_4:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    return 0;
  }

  v14 = File::getline(this);
  v25 = 0;
  if (sscanf(v14, "maxorder %u", &v25) != 1)
  {
    v9 = File::position(this, MEMORY[0x1E69E5300]);
    v10 = "could not read ngram order\n";
    v11 = 27;
    goto LABEL_4;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  if ((*(**(a1 + 24) + 336))(*(a1 + 24), this, &v22, a4))
  {
    v21 = File::ftell(this);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v12 = NgramCounts<unsigned long>::readBinaryNode(a1, (a1 + 160), a3, v25, this, &v21, a4, &v22);
      goto LABEL_13;
    }

    v15 = File::position(this, MEMORY[0x1E69E5300]);
    v16 = __error();
    v17 = srilm_ts_strerror(*v16);
    v18 = strlen(v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v26, MEMORY[0x1E69E5318]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
  }

  v12 = 0;
LABEL_13:
  if (v23)
  {
    MEMORY[0x1B8C85310](v23, 0x1000C8052888210);
  }

  return v12;
}

void sub_1B544A1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::locale::~locale((v13 - 40));
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

Vocab *NgramCounts<unsigned long>::readNgram(File *a1, char *a2, const char **a3, char **a4)
{
  result = File::getline(a1);
  if (result)
  {
    result = NgramCounts<unsigned long>::parseNgram(result, a2, a3, a4);
    if (!result)
    {
      v9 = File::position(a1, MEMORY[0x1E69E5300]);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "malformed N-gram count or more than ", 36);
      v11 = MEMORY[0x1B8C84C10](v10, (a3 - 1));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " words per line\n", 16);
      return 0;
    }
  }

  return result;
}

uint64_t NgramCounts<unsigned long>::updateCounts(uint64_t result, unsigned int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  if (a2 <= a3)
  {
    v18 = v7;
    v19 = v8;
    v12 = result;
    if (a4)
    {
      result = (*(**(result + 24) + 288))(*(result + 24), a6, a7, 100);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v13 = *(result + 24);
      v14 = *v13;
      if (*(result + 32))
      {
        (*(v14 + 256))(v13, a6, a7, 100);
      }

      else
      {
        v15 = (*(v14 + 88))(v13);
        (*(*v13 + 272))(v13, a6, a7, 100, *v15);
      }
    }

    if (*(v12 + 152))
    {
      v16 = 0;
      result = Trie<unsigned int,unsigned int>::findTrie((v12 + 160), a7, &v16);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v17 = 0;
      result = Trie<unsigned int,unsigned long>::insertTrie((v12 + 160), a7, &v17);
    }

    *(result + 8) += a5;
  }

  return result;
}

uint64_t NgramCounts<unsigned long>::read(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, 512);
  if ((*(*a2 + 24))(a2))
  {
    do
    {
      v8 = *(*(*a2 + 16))(a2);
      v12 = v8;
      v9 = *v8;
      if (v8[10] == v8[11])
      {
        Ngram = NgramCounts<unsigned long>::readNgram(v8 + 4, v14, 0x65u);
        if (!Ngram)
        {
          std::unique_ptr<quasar::lm::TokenStringAndCount const>::~unique_ptr[abi:ne200100](&v12);
          return 1;
        }

        NgramCounts<unsigned long>::updateCounts(a1, Ngram, a3, a4, v9, v14, v13);
      }

      else
      {
        NgramCounts<unsigned long>::updateCounts(a1, a3, a4, *v8, v8 + 10, v13);
      }

      std::unique_ptr<quasar::lm::TokenStringAndCount const>::~unique_ptr[abi:ne200100](&v12);
    }

    while (((*(*a2 + 24))(a2) & 1) != 0);
  }

  return 1;
}

uint64_t NgramCounts<unsigned long>::updateCounts(uint64_t result, unsigned int a2, int a3, uint64_t a4, void *a5, unsigned int *a6)
{
  if (a2 >= ((a5[1] - *a5) >> 2))
  {
    v13 = v6;
    v14 = v7;
    v10 = result;
    result = (*(**(result + 24) + 296))(*(result + 24), a5, a6, 100, a3 != 0);
    if (result)
    {
      if (*(v10 + 152))
      {
        v11 = 0;
        result = Trie<unsigned int,unsigned int>::findTrie((v10 + 160), a6, &v11);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = 0;
        result = Trie<unsigned int,unsigned long>::insertTrie((v10 + 160), a6, &v12);
      }

      *(result + 8) += a4;
    }
  }

  return result;
}

int64_t NgramCounts<unsigned long>::readNgram(void *a1, uint64_t ***a2, unsigned int a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1[1] - *a1;
  if (v3)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    if (v3 >= a3 || v3 == 0)
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "malformed N-gram count or more than ", 36);
      v7 = MEMORY[0x1B8C84C10](v6, a3 - 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " words per line\n", 16);
      return 0;
    }

    else
    {
      v8 = 0;
      a2[v3] = 0;
      do
      {
        v9 = (*a1 + v8);
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        *a2++ = v9;
        v8 += 24;
      }

      while (24 * v3 != v8);
    }
  }

  return v3;
}

uint64_t NgramCounts<unsigned long>::readGoogle(uint64_t a1, char *__s, unsigned int a3, unsigned int a4)
{
  v5 = strlen(__s);
  *&v27[8] = 0;
  v28 = 0;
  v6 = v5 + 20;
  v26 = 0;
  *v27 = (v5 + 20);
  if (v5 != -20)
  {
    Array<char>::alloc();
  }

  snprintf(0, v6, "%s/1gms/vocab%s", __s, ".gz");
  File::File(v25, (*&v27[4] - v26), "r", 0);
  if (File::error(v25))
  {
    snprintf((*&v27[4] - v26), v6, "%s/1gms/vocab", __s);
    File::reopen(v25, (*&v27[4] - v26), "r");
  }

  if (!File::error(v25))
  {
    if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
    {
      v7 = (*(*a1 + 24))(a1);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "reading ", 8);
      v9 = strlen((*&v27[4] - v26));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, *&v27[4] - v26, v9);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v21, MEMORY[0x1E69E5318]);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v21);
      std::ostream::put();
      std::ostream::flush();
    }

    v12 = NgramCounts<unsigned long>::read(a1, v25, 1u, a4);
    File::~File(v25);
    if (!v12)
    {
      goto LABEL_28;
    }

    if (a3 < 2)
    {
      v13 = 1;
      goto LABEL_29;
    }

    v14 = 2;
    while (1)
    {
      snprintf((*&v27[4] - v26), v6, "%s/%dgms/%dgm.idx", __s, v14, v14);
      File::File(v25, (*&v27[4] - v26), "r", 0);
      if (File::error(v25))
      {
        break;
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      v15 = File::getline(v25);
      if (v15)
      {
        strdup(v15);
        operator new[]();
      }

      if (File::error(v25))
      {
        perror((*&v27[4] - v26));
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      if (v23)
      {
        MEMORY[0x1B8C85310](v23, 0x80C80B8603338);
      }

      File::~File(v25);
      if (v14 + 1 <= a3)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      ++v14;
      if ((v16 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  perror((*&v27[4] - v26));
  File::~File(v25);
LABEL_28:
  v13 = 0;
LABEL_29:
  if (*&v27[4])
  {
    MEMORY[0x1B8C85310](*&v27[4], 0x1000C8077774924);
  }

  return v13;
}

void sub_1B544AE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::locale::~locale(&a15);
  File::~File(&a31);
  v33 = *(v31 - 112);
  if (v33)
  {
    MEMORY[0x1B8C85310](v33, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t NgramCounts<unsigned long>::readMinCounts(int a1, File *this)
{
  v3 = File::getline(this);
  if (!v3)
  {
    return 1;
  }

  if (strcmp(v3, "SRILM_BINARY_COUNTS_001\n"))
  {
    File::ungetline(this);
    operator new[]();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "binary format not yet support in readMinCounts\n", 47);
  return 0;
}

void sub_1B544B240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x1B8C85310](a18, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *NgramCounts<unsigned long>::updateCountsMinCounts(void *result, unsigned int a2, unsigned int a3, uint64_t a4, const unsigned int *a5, int a6, uint64_t a7, Vocab *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 > a3)
  {
    return result;
  }

  v16 = result;
  if (*(a4 + 8 * (a2 - 1)) <= a5)
  {
    v17 = -1;
    if (a6)
    {
LABEL_7:
      result = (*(**(v16 + 24) + 288))(*(v16 + 24), a7, a8, 100);
      if (!result)
      {
        return result;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!a5)
    {
      return result;
    }

    result = (*(*result[3] + 240))(result[3], a5);
    v17 = result;
    if (result == -1)
    {
      return result;
    }

    if (a6)
    {
      goto LABEL_7;
    }
  }

  v18 = *(v16 + 24);
  v19 = *v18;
  if (*(v16 + 32))
  {
    (*(v19 + 256))(v18, a7, a8, 100);
  }

  else
  {
    v20 = (*(v19 + 88))(v18);
    (*(*v18 + 272))(v18, a7, a8, 100, *v20);
  }

LABEL_13:

  return NgramCounts<unsigned long>::updateMinCountsHelper(v16, a2, a5, v17, a8, a9, a10, a11);
}

uint64_t NgramCounts<unsigned long>::addCounts(uint64_t a1, unsigned int *a2, _DWORD **a3)
{
  if (*(a1 + 152))
  {
    v10[0] = 0;
    result = Trie<unsigned int,unsigned int>::findTrie((a1 + 160), a2, v10);
  }

  else
  {
    v10[0] = 0;
    result = Trie<unsigned int,unsigned long>::insertTrie((a1 + 160), a2, v10);
  }

  v5 = result;
  if (result)
  {
    LHashIter<unsigned int,unsigned long>::LHashIter(v10, a3, 0);
    v9 = 0;
    while (1)
    {
      v6 = LHashIter<unsigned int,unsigned long>::next(v10, &v9);
      if (!v6)
      {
        break;
      }

      v7 = *v6;
      v12 = 0;
      v8 = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(v5, v9, &v12);
      if (!v12)
      {
        *v8 = 0;
      }

      *(v8 + 8) += v7;
    }

    result = v11;
    if (v11)
    {
      return MEMORY[0x1B8C85310](v11, 0x1000C8052888210);
    }
  }

  return result;
}

void sub_1B544B57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x1B8C85310](a13, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void NgramCounts<unsigned long>::readMinCounts()
{
  v32 = *MEMORY[0x1E69E9840];
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
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  v0 = 0u;
  v1 = 0u;
  operator new[]();
}

void sub_1B544B984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x1B8C85310](a18, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *NgramCounts<unsigned long>::updateCountsMinCounts(void *result, unsigned int a2, uint64_t a3, const unsigned int *a4, int a5, void *a6, Vocab *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = (a6[1] - *a6) >> 2;
  if (v10 <= a2)
  {
    v16 = result;
    if (*(a3 + 8 * (v10 - 1)) <= a4)
    {
      v17 = -1;
    }

    else
    {
      if (!a4)
      {
        return result;
      }

      result = (*(*result[3] + 240))(result[3], a4);
      v17 = result;
      if (result == -1)
      {
        return result;
      }
    }

    result = (*(**(v16 + 24) + 296))(*(v16 + 24), a6, a7, 100, a5 != 0);
    if (result)
    {
      v18 = (a6[1] - *a6) >> 2;

      return NgramCounts<unsigned long>::updateMinCountsHelper(v16, v18, a4, v17, a7, a8, a9, a10);
    }
  }

  return result;
}

uint64_t NgramCounts<unsigned long>::write(uint64_t a1, File *a2, unsigned int a3, unsigned int a4)
{
  v8 = _ZTW14writeBufferTLS();
  v9 = *v8;
  if (!*v8)
  {
    v10 = v8;
    v9 = malloc_type_calloc(0x2710uLL, 1uLL, 0x100004077774924uLL);
    *v10 = v9;
  }

  return NgramCounts<unsigned long>::writeNode(a1, (a1 + 160), a2, v9, v9, 1u, a3, a4);
}

uint64_t NgramCounts<unsigned long>::writeNode(uint64_t a1, _DWORD **a2, File *a3, const char *a4, char *a5, unsigned int a6, unsigned int a7, unsigned int a8)
{
  if (a8)
  {
    v14 = Vocab::compareIndex(*(a1 + 24));
  }

  else
  {
    v14 = 0;
  }

  v34 = 0;
  LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(v32, a2, v14);
  if (a7)
  {
    v15 = a6 == a7;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  v31 = v16;
  while (!File::error(a3))
  {
    v17 = LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(v32, &v34);
    if (!v17)
    {
      break;
    }

    v18 = (*(**(a1 + 24) + 32))(*(a1 + 24), v34);
    v19 = v18;
    if (v18)
    {
      v20 = &a5[strlen(v18)];
      if (v20 + 1 <= a4 + 10000)
      {
        strcpy(a5, v19);
        if (v31)
        {
          snprintf(ctsBuffer, 0x64uLL, "%lu", *(v17 + 8));
          File::fprintf(a3, "%s\t%s\n", a4, ctsBuffer);
        }

        if (a7 - 1 >= a6)
        {
          *v20 = 32;
          NgramCounts<unsigned long>::writeNode(a1, v17, a3, a4, v20 + 1, a6 + 1, a7, a8);
        }
      }

      else
      {
        *a5 = 48;
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "ngram [", 7);
        v22 = strlen(a4);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, a4, v22);
        v24 = strlen(v19);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v19, v24);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "] exceeds write buffer\n", 23);
      }
    }

    else
    {
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "undefined word index ", 21);
      v27 = MEMORY[0x1B8C84C10](v26, v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
    }
  }

  result = v33;
  if (v33)
  {
    return MEMORY[0x1B8C85310](v33, 0x1000C8052888210);
  }

  return result;
}

void sub_1B544BE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17)
  {
    MEMORY[0x1B8C85310](a17, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NgramCounts<unsigned long>::writeBinary(uint64_t a1, File *this, uint64_t a3)
{
  File::fprintf(this, "%s", "SRILM_BINARY_COUNTS_001\n");
  v6 = a3;
  if (!a3)
  {
    v6 = *(a1 + 156);
  }

  File::fprintf(this, "maxorder %u\n", v6);
  (*(**(a1 + 24) + 344))();
  v14 = File::ftell(this);
  if ((v14 & 0x8000000000000000) == 0)
  {
    return NgramCounts<unsigned long>::writeBinaryNode(a1, (a1 + 160), 1, a3, this, &v14);
  }

  v8 = File::position(this, MEMORY[0x1E69E5300]);
  v9 = __error();
  v10 = srilm_ts_strerror(*v9);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::ios_base::getloc((v12 + *(*v12 - 24)));
  v13 = std::locale::use_facet(&v15, MEMORY[0x1E69E5318]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v15);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

uint64_t NgramCounts<unsigned long>::writeBinaryNode(uint64_t a1, _DWORD **a2, uint64_t a3, uint64_t a4, File *a5, off_t *a6)
{
  v11 = a4;
  if (!a4)
  {
    v11 = *(a1 + 156);
  }

  if (v11 < a3)
  {
    return 1;
  }

  if ((v11 - a3) >= 4)
  {
    v13 = 8;
  }

  else
  {
    v13 = 4;
  }

  if (v11 == a3)
  {
    v14 = 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = *a6;
  result = writeBinaryCount(a5, 0, v14);
  if (result)
  {
    if (a4)
    {
      v16 = a3 > a4;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v41 = v17;
    while (1)
    {
      v18 = *a6 + result;
      *a6 = v18;
      if ((v41 & 1) == 0)
      {
        LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(v43, a2, SArray_compareKey<unsigned int>);
        v42 = 0;
        do
        {
          v19 = LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(v43, &v42);
          if (!v19)
          {
            break;
          }

          v20 = writeBinaryCount(a5, v42, 0);
          if (!v20)
          {
            break;
          }

          *a6 += v20;
          v21 = a3 >= a4 ? *(v19 + 8) : 0;
          v22 = writeBinaryCount(a5, v21, 0);
          if (!v22)
          {
            break;
          }

          *a6 += v22;
        }

        while (NgramCounts<unsigned long>::writeBinaryNode(a1, v19, (a3 + 1), a4, a5, a6));
        if (v44)
        {
          MEMORY[0x1B8C85310](v44, 0x1000C8052888210);
        }

        if (v19)
        {
          return 0;
        }

        v18 = *a6;
      }

      if ((File::fseek(a5, v15, 0) & 0x80000000) != 0)
      {
        break;
      }

      result = writeBinaryCount(a5, v18 - v15, v14);
      if (!result)
      {
        return result;
      }

      v23 = result;
      if (result <= v14)
      {
        if ((File::fseek(a5, v18, 0) & 0x80000000) == 0)
        {
          return 1;
        }

        break;
      }

      v24 = File::offset(a5, MEMORY[0x1E69E5300]);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "increasing offset bytes from ", 29);
      v26 = MEMORY[0x1B8C84C10](v25, v14);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " to ", 4);
      v28 = MEMORY[0x1B8C84C10](v27, v23);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " (order ", 8);
      v30 = MEMORY[0x1B8C84C10](v29, v11);
      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ",", 1);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " level ", 7);
      v33 = MEMORY[0x1B8C84C10](v32, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ")\n", 2);
      if ((File::fseek(a5, v15, 0) & 0x80000000) != 0)
      {
        break;
      }

      *a6 = v15;
      result = writeBinaryCount(a5, 0, v23);
      v14 = v23;
      if (!result)
      {
        return result;
      }
    }

    v34 = File::offset(a5, MEMORY[0x1E69E5300]);
    v35 = __error();
    v36 = srilm_ts_strerror(*v35);
    v37 = strlen(v36);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(v43, MEMORY[0x1E69E5318]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(v43);
    std::ostream::put();
    std::ostream::flush();
    return 0;
  }

  return result;
}

uint64_t NgramCounts<unsigned long>::parseNgram(Vocab *a1, char *a2, const char **a3, char **a4)
{
  v5 = a3;
  v7 = Vocab::parseWords(a1, a2, a3, a4);
  if (v7 == v5)
  {
    return 0;
  }

  v8 = (v7 - 1);
  v9 = *&a2[8 * v8];
  if (*v9 == 45 || sscanf(v9, "%lu", a4) != 1)
  {
    return 0;
  }

  *&a2[8 * v8] = 0;
  return v8;
}

uint64_t NgramCounts<unsigned long>::sumNode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 > a4 || !*a2 || **a2 <= 0x1Fu)
  {
    return *(a2 + 8);
  }

  LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::LHashIter(v12, a2, 0);
  v5 = 0;
  v11 = 0;
  while (1)
  {
    v10 = LHashIter<unsigned int,Trie<unsigned int,unsigned long>>::next(v12, &v11);
    if (!v10)
    {
      break;
    }

    v5 += NgramCounts<unsigned long>::sumNode(a1, v10, a3 + 1, a4);
  }

  *(a2 + 8) = v5;
  if (v13)
  {
    MEMORY[0x1B8C85310](v13, 0x1000C8052888210);
  }

  return v5;
}

void sub_1B544C534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x1B8C85310](a14, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NgramCounts<unsigned long>::setCounts(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 156);
  *&v10[8] = 0;
  v11 = 0;
  v9 = 0;
  *v10 = (v4 + 1);
  if (v4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v5 = 1;
  do
  {
    TrieIter2<unsigned int,unsigned long>::TrieIter2(v8, (a1 + 160), (*&v10[4] - 4 * v9), v5, 0);
    while (1)
    {
      v6 = TrieIter2<unsigned int,unsigned long>::next(v8);
      if (!v6)
      {
        break;
      }

      *(v6 + 8) = a2;
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v8);
    ++v5;
  }

  while (v5 <= *(a1 + 156));
  result = *&v10[4];
  if (*&v10[4])
  {
    return MEMORY[0x1B8C85310](*&v10[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B544C628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 - 48);
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NgramCounts<unsigned long>::memStats(uint64_t a1, uint64_t *a2)
{
  *a2 += 64;
  (*(**(a1 + 24) + 352))(*(a1 + 24));

  return Trie<unsigned int,unsigned long>::memStats((a1 + 160), a2);
}

uint64_t LHashIter<unsigned int,unsigned long>::next(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v10 = 0;
  v4 = *(a1 + 8);
  if (v4 == *(a1 + 12))
  {
    return 0;
  }

  v9 = v2;
  v7 = *(a1 + 24);
  *(a1 + 8) = v4 + 1;
  LHash<unsigned int,double>::locate(&v9, *(v7 + 4 * v4), &v10);
  v8 = *a1 + 16 * v10;
  result = v8 + 8;
  *a2 = *(v8 + 16);
  return result;
}

uint64_t NgramCounts<unsigned long>::readBinaryNode(uint64_t a1, _DWORD **a2, int a3, int a4, File *a5, off_t *a6, uint64_t a7, int *a8)
{
  if (!a4)
  {
    return 1;
  }

  v39 = 0;
  result = readBinaryCount(a5, &v39);
  if (!result)
  {
    return result;
  }

  v17 = v39 + *a6;
  v18 = *a6 + result;
  *a6 = v18;
  if (a3)
  {
    if (v18 < v17)
    {
      v19 = (a3 - 1);
      v20 = (a4 - 1);
      do
      {
        v40.__locale_ = 0;
        result = readBinaryCount(a5, &v40);
        if (!result)
        {
          return result;
        }

        locale = v40.__locale_;
        *a6 += result;
        if (a8[1] <= locale)
        {
          v37 = File::offset(a5, MEMORY[0x1E69E5300]);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "word index ", 11);
          v28 = MEMORY[0x1B8C84C10](v38, locale);
          v29 = " out of range\n";
          v30 = 14;
          goto LABEL_28;
        }

        v22 = *Array<unsigned int>::operator[](a8, locale);
        if (v22 != -1)
        {
          if (*(a1 + 152))
          {
            LODWORD(v40.__locale_) = 0;
            if (LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(a2, v22, &v40))
            {
              v23 = &(*a2)[6 * LODWORD(v40.__locale_) + 2];
LABEL_17:
              v40.__locale_ = 0;
              result = readBinaryCount(a5, &v40);
              if (!result)
              {
                return result;
              }

              *(v23 + 8) += v40.__locale_;
              *a6 += result;
              v25 = a1;
              v26 = v23;
              v27 = v19;
              goto LABEL_19;
            }
          }

          else
          {
            LOBYTE(v40.__locale_) = 0;
            v24 = LHash<unsigned int,Trie<unsigned int,unsigned long>>::insert(a2, v22, &v40);
            v23 = v24;
            if (!LOBYTE(v40.__locale_))
            {
              *v24 = 0;
              goto LABEL_17;
            }

            if (v24)
            {
              goto LABEL_17;
            }
          }
        }

        v40.__locale_ = 0;
        result = readBinaryCount(a5, &v40);
        if (!result)
        {
          return result;
        }

        *a6 += result;
        v25 = a1;
        v26 = a2;
        v27 = 0;
LABEL_19:
        result = NgramCounts<unsigned long>::readBinaryNode(v25, v26, v27, v20, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }

        v18 = *a6;
      }

      while (*a6 < v17);
    }

    if (v18 != v17)
    {
      v28 = File::offset(a5, MEMORY[0x1E69E5300]);
      v29 = "data misaligned\n";
      v30 = 16;
LABEL_28:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      return 0;
    }

    return 1;
  }

  if ((File::fseek(a5, v17, 0) & 0x80000000) == 0)
  {
    *a6 = v17;
    return 1;
  }

  v31 = File::offset(a5, MEMORY[0x1E69E5300]);
  v32 = __error();
  v33 = srilm_ts_strerror(*v32);
  v34 = strlen(v33);
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(&v40, MEMORY[0x1E69E5318]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(&v40);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

void *NgramCounts<unsigned long>::updateMinCountsHelper(uint64_t a1, int a2, const unsigned int *a3, unsigned int a4, Vocab *this, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = (a2 - 1);
  v15 = *(this + v14);
  *(this + v14) = -1;
  v16 = (a8 + 8 * v14);
  if (Vocab::compare(this, *(a6 + 8 * v14), a3))
  {
    if (*(a7 + v14))
    {
      NgramCounts<unsigned long>::addCounts(a1, *(a6 + 8 * v14), v16);
      *(a7 + v14) = 0;
    }

    LHash<unsigned int,double>::clear(v16, 0);
    Vocab::copy(*(a6 + 8 * v14), this, v17);
  }

  if (a4 != -1)
  {
    v19 = 0;
    result = LHash<unsigned int,double>::insert(v16, a4, &v19);
    ++*result;
    return result;
  }

  if (!*(a1 + 152))
  {
    result = NgramCounts<unsigned long>::insertCount(a1, this, v15);
    if (!result)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = NgramCounts<unsigned long>::findCount(a1, this, v15);
  if (result)
  {
LABEL_9:
    *result += a3;
  }

LABEL_10:
  *(a7 + v14) = 1;
  return result;
}

uint64_t LHashIter<unsigned int,unsigned long>::LHashIter(uint64_t result, _DWORD **a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + 8) = 0;
  if (v3)
  {
    *(result + 12) = *v3 >> 5;
    *(result + 16) = a3;
    *(result + 24) = 0;
    LHashIter<unsigned int,unsigned long>::sortKeys();
  }

  *(result + 12) = 0;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

void sub_1B544CD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x1B8C85310](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void quasar::TranslationPhraseInternal::TranslationPhraseInternal(quasar::TranslationPhrase *a1, const quasar::TranslationPhrase *a2)
{
  v2 = quasar::TranslationPhrase::TranslationPhrase(a1, a2);
  *(v2 + 25) = 0;
  *(v2 + 26) = 0;
  *(v2 + 27) = 0;
  *(v2 + 29) = 0;
  *(v2 + 30) = 0;
  *(v2 + 31) = 0;
  quasar::MetaInfo::fromJson((v2 + 256));
}

void sub_1B544CF94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2[255] < 0)
  {
    operator delete(*v3);
  }

  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](va);
  quasar::TranslationPhrase::~TranslationPhrase(v2);
  _Unwind_Resume(a1);
}

void quasar::TranslationPhraseInternal::convertToExternal(quasar::MetaInfo::Impl **this@<X0>, uint64_t a2@<X8>)
{
  quasar::TranslationPhrase::TranslationPhrase(a2, this);
  v5 = *(a2 + 16);
  for (i = *(a2 + 24); i != v5; std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](a2 + 16, i))
  {
    i -= 72;
  }

  *(a2 + 24) = v5;
  v6 = this[25];
  v7 = this[26];
  while (v6 != v7)
  {
    std::vector<quasar::TranslationToken>::push_back[abi:ne200100]((a2 + 16), v6);
    v6 = (v6 + 136);
  }

  quasar::MetaInfo::json(this + 32, __p);
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  *(a2 + 40) = *__p;
  *(a2 + 56) = v9;
  quasar::MetaInfo::romanization(this + 32);
}

uint64_t std::vector<quasar::TranslationToken>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::TranslationToken>::__emplace_back_slow_path<quasar::TranslationToken const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::TranslationToken>::__construct_one_at_end[abi:ne200100]<quasar::TranslationToken const&>(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t quasar::TranslationPhrase::convertTokensToString<quasar::TranslationTokenInternal>(uint64_t *a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  v2 = *a1;
  if (a1[1] != *a1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2 + v3;
      v6 = *(v5 + 23);
      if (v6 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = *v5;
      }

      if (v6 >= 0)
      {
        v8 = *(v5 + 23);
      }

      else
      {
        v8 = *(v5 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, v7, v8);
      v2 = *a1;
      if (*(*a1 + v3 + 24) == 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " ", 1);
        v2 = *a1;
      }

      ++v4;
      v3 += 136;
    }

    while (v4 < 0xF0F0F0F0F0F0F0F1 * ((a1[1] - v2) >> 3));
  }

  std::stringbuf::str();
  v11[0] = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v9;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v16);
}

void sub_1B544D374(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void quasar::TranslationPhraseInternal::extractAlignmentProjections(quasar::TranslationPhraseInternal *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = quasar::MetaInfo::get((this + 256));

  quasar::TranslationPhrase::extractAlignmentProjections(v3, a2);
}

void quasar::TranslationPhraseInternal::isFromPhrasebook(quasar::TranslationPhraseInternal *this)
{
  v1 = quasar::MetaInfo::get((this + 256));
  v3 = 6;
  strcpy(__p, "status");
  quasar::PTree::getStringOptional(v1, __p);
}

void sub_1B544D4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::TranslationPhraseInternal::computeTokenRanges(quasar::TranslationPhraseInternal *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::pair<int,int>>::reserve(a2, 0xF0F0F0F0F0F0F0F1 * ((*(this + 26) - *(this + 25)) >> 3));
  v4 = *(this + 25);
  v5 = *(this + 26);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + 23);
      if (v7 < 0)
      {
        v7 = *(v4 + 8);
      }

      v8 = v7 + v6 + *(v4 + 25);
      v10 = a2[1];
      v9 = a2[2];
      if (v10 >= v9)
      {
        v12 = *a2;
        v13 = v10 - *a2;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = v9 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v17);
        }

        v18 = (8 * v14);
        *v18 = v6;
        v18[1] = v8;
        v11 = 8 * v14 + 8;
        v19 = &v18[-2 * (v13 >> 3)];
        memcpy(v19, v12, v13);
        v20 = *a2;
        *a2 = v19;
        a2[1] = v11;
        a2[2] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v10 = v6;
        *(v10 + 1) = v8;
        v11 = (v10 + 8);
      }

      a2[1] = v11;
      v6 = *(v4 + 24) + v8;
      v4 += 136;
    }

    while (v4 != v5);
  }
}

void sub_1B544D65C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::formatNBestlist(void *result, uint64_t a2, uint64_t a3)
{
  if (result[1] != *result)
  {
    v3 = a3;
    v4 = result;
    v5 = 0;
    v63 = *MEMORY[0x1E69E54D8];
    v64 = *(MEMORY[0x1E69E54D8] + 64);
    v65 = *(MEMORY[0x1E69E54D8] + 72);
    v61 = result;
    do
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v93);
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(v89, (*v4 + 264 * v5));
      v87 = 0;
      v86 = 0;
      v88 = 0;
      std::vector<quasar::TranslationTokenInternal>::__init_with_size[abi:ne200100]<quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(&v86, v90, v91, 0xF0F0F0F0F0F0F0F1 * ((v91 - v90) >> 3));
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v80);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v74);
      v6 = v86;
      if (v87 != v86)
      {
        v7 = v5;
        v8 = 0;
        do
        {
          v9 = v6 + 136 * v8;
          v10 = *(v9 + 32);
          if (v10 != *(v9 + 40))
          {
            v11 = MEMORY[0x1B8C84C00](&v75, *v10);
            v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "-", 1);
            MEMORY[0x1B8C84C30](v12, v8);
            if (*(v86 + 136 * v8 + 40) - *(v86 + 136 * v8 + 32) != 4)
            {
              v13 = 1;
              do
              {
                v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, ",", 1);
                v15 = MEMORY[0x1B8C84C00](v14, *(*(v86 + 136 * v8 + 32) + 4 * v13));
                v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "-", 1);
                MEMORY[0x1B8C84C30](v16, v8);
                ++v13;
              }

              while (v13 != (*(v86 + 136 * v8 + 40) - *(v86 + 136 * v8 + 32)) >> 2);
            }
          }

          v17 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ",", 1);
          std::ostream::operator<<();
          v6 = v86;
          v18 = 0xF0F0F0F0F0F0F0F1 * ((v87 - v86) >> 3);
          if (v8 < v18 - 1)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v75, " ", 1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, " ", 1);
            v6 = v86;
            v18 = 0xF0F0F0F0F0F0F0F1 * ((v87 - v86) >> 3);
          }

          ++v8;
        }

        while (v8 != v18);
        v5 = v7;
      }

      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "_", 1);
      v20 = MEMORY[0x1B8C84C00](v19, v5);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ||| ", 5);
      v22 = *(a2 + 23);
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
        v24 = *(a2 + 23);
      }

      else
      {
        v24 = *(a2 + 8);
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " ||| ", 5);
      quasar::TranslationPhrase::convertTokensToString<quasar::TranslationTokenInternal>(&v90);
      if (SHIBYTE(v99.__end_) >= 0)
      {
        first = &v99;
      }

      else
      {
        first = v99.__first_;
      }

      if (SHIBYTE(v99.__end_) >= 0)
      {
        end_high = HIBYTE(v99.__end_);
      }

      else
      {
        end_high = v99.__begin_;
      }

      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, first, end_high);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " ||| ", 5);
      std::stringbuf::str();
      if (v73 >= 0)
      {
        v31 = v72;
      }

      else
      {
        v31 = v72[0];
      }

      if (v73 >= 0)
      {
        v32 = HIBYTE(v73);
      }

      else
      {
        v32 = v72[1];
      }

      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " ||| ", 5);
      std::stringbuf::str();
      if ((v71 & 0x80u) == 0)
      {
        v35 = v70;
      }

      else
      {
        v35 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v36 = v71;
      }

      else
      {
        v36 = v70[1];
      }

      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ||| ", 5);
      v38 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " ", 1);
      v39 = std::ostream::operator<<();
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " ", 1);
      v41 = MEMORY[0x1B8C84C30](v40, 0xF0F0F0F0F0F0F0F1 * ((v87 - v86) >> 3));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " ", 1);
      v42 = std::ostream::operator<<();
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "|||", 3);
      quasar::MetaInfo::json(&v92, __p);
      if ((v69 & 0x80u) == 0)
      {
        v44 = __p;
      }

      else
      {
        v44 = __p[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v45 = v69;
      }

      else
      {
        v45 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, v45);
      if (v69 < 0)
      {
        operator delete(__p[0]);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v99.__end_) < 0)
      {
        operator delete(v99.__first_);
      }

      std::stringbuf::str();
      v47 = *(v3 + 8);
      v46 = *(v3 + 16);
      v67 = v5;
      if (v47 >= v46)
      {
        v49 = 0xAAAAAAAAAAAAAAABLL * ((v47 - *v3) >> 3);
        v50 = v49 + 1;
        if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v51 = 0xAAAAAAAAAAAAAAABLL * ((v46 - *v3) >> 3);
        if (2 * v51 > v50)
        {
          v50 = 2 * v51;
        }

        if (v51 >= 0x555555555555555)
        {
          v52 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v52 = v50;
        }

        v99.__end_cap_.__value_ = v3;
        if (v52)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v3, v52);
        }

        v53 = 24 * v49;
        v54 = *v72;
        *(v53 + 16) = v73;
        *v53 = v54;
        v72[1] = 0;
        v73 = 0;
        v72[0] = 0;
        v55 = 24 * v49 + 24;
        v56 = *(v3 + 8) - *v3;
        v57 = 24 * v49 - v56;
        memcpy((v53 - v56), *v3, v56);
        v58 = *v3;
        *v3 = v57;
        *(v3 + 8) = v55;
        v59 = *(v3 + 16);
        *(v3 + 16) = 0;
        v99.__end_ = v58;
        v99.__end_cap_.__value_ = v59;
        v99.__first_ = v58;
        v99.__begin_ = v58;
        std::__split_buffer<std::string>::~__split_buffer(&v99);
        v60 = SHIBYTE(v73);
        *(v3 + 8) = v55;
        if (v60 < 0)
        {
          operator delete(v72[0]);
        }
      }

      else
      {
        v48 = *v72;
        *(v47 + 16) = v73;
        *v47 = v48;
        *(v3 + 8) = v47 + 24;
      }

      v74[0] = v63;
      *(v74 + *(v63 - 3)) = v64;
      v75 = v65;
      v76 = MEMORY[0x1E69E5548] + 16;
      if (v78 < 0)
      {
        operator delete(v77[7].__locale_);
      }

      v76 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v77);
      std::iostream::~basic_iostream();
      MEMORY[0x1B8C85200](&v79);
      v80[0] = v63;
      *(v80 + *(v63 - 3)) = v64;
      v81 = v65;
      v82 = MEMORY[0x1E69E5548] + 16;
      if (v84 < 0)
      {
        operator delete(v83[7].__locale_);
      }

      v82 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v83);
      std::iostream::~basic_iostream();
      MEMORY[0x1B8C85200](&v85);
      v80[0] = &v86;
      std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](v80);
      quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v89);
      v93[0] = v63;
      *(v93 + *(v63 - 3)) = v64;
      v94 = v65;
      v95 = MEMORY[0x1E69E5548] + 16;
      if (v97 < 0)
      {
        operator delete(v96[7].__locale_);
      }

      v95 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v96);
      std::iostream::~basic_iostream();
      result = MEMORY[0x1B8C85200](&v98);
      ++v5;
      v4 = v61;
      v3 = a3;
    }

    while (0xF83E0F83E0F83E1 * ((v61[1] - *v61) >> 3) > (v67 + 1));
  }

  return result;
}

void sub_1B544DFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  a33 = a12;
  *(&a33 + *(a12 - 24)) = a13;
  a35 = a14;
  a36 = MEMORY[0x1E69E5548] + 16;
  if (a49 < 0)
  {
    operator delete(a44);
  }

  a36 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a37);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&a52);
  a71 = a12;
  *(&a71 + *(a12 - 24)) = a13;
  a72 = a14;
  a73 = MEMORY[0x1E69E5548] + 16;
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  a73 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a74);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&STACK[0x240]);
  a71 = &STACK[0x2D8];
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&a71);
  quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&STACK[0x2F0]);
  STACK[0x3F8] = a12;
  *(&STACK[0x3F8] + *(a12 - 24)) = a13;
  STACK[0x408] = a14;
  STACK[0x410] = MEMORY[0x1E69E5548] + 16;
  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(STACK[0x450]);
  }

  STACK[0x410] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&STACK[0x418]);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&STACK[0x478]);
  _Unwind_Resume(a1);
}

uint64_t quasar::json2Ptree(uint64_t result)
{
  v1 = *(result + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(result + 8);
  }

  if (v1)
  {
    std::istringstream::basic_istringstream[abi:ne200100](&v2, result, 8);
    quasar::PTree::readJson();
  }

  return result;
}

void quasar::backupMetaInfo(quasar::PTree *a1, uint64_t a2, const void **a3)
{
  v6 = quasar::PTree::begin(a1);
  v7 = quasar::PTree::end(a1);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      if (a2 + 8 != std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a2, v6))
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v6, &v10);
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v9 = v10;
        *(v6 + 16) = v11;
        *v6 = v9;
      }

      v6 += 88;
    }

    while (v6 != v8);
  }
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
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

uint64_t std::vector<quasar::TranslationTokenInternal>::__emplace_back_slow_path<quasar::TranslationTokenInternal>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>>(a1, v6);
  }

  v13 = 0;
  v14 = 136 * v2;
  std::allocator_traits<std::allocator<quasar::TranslationTokenInternal>>::construct[abi:ne200100]<quasar::TranslationTokenInternal,quasar::TranslationTokenInternal,0>(a1, 136 * v2, a2);
  v15 = 136 * v2 + 136;
  v7 = a1[1];
  v8 = 136 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(&v13);
  return v12;
}

void sub_1B544E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<quasar::TranslationTokenInternal>>::construct[abi:ne200100]<quasar::TranslationTokenInternal,quasar::TranslationTokenInternal,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a2 + 24) = *(a3 + 12);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 32) = a3[2];
  *(a2 + 48) = *(a3 + 6);
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  v4 = *(a3 + 7);
  *(a2 + 64) = *(a3 + 16);
  *(a2 + 56) = v4;
  v5 = *(a3 + 72);
  *(a2 + 88) = *(a3 + 11);
  *(a2 + 72) = v5;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0;
  *(a3 + 9) = 0;
  v6 = *(a3 + 12);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 96) = v6;
  *(a2 + 104) = 0;
  result = *(a3 + 104);
  *(a2 + 104) = result;
  *(a2 + 120) = *(a3 + 15);
  *(a3 + 13) = 0;
  *(a3 + 14) = 0;
  *(a3 + 15) = 0;
  *(a2 + 128) = *(a3 + 16);
  return result;
}

uint64_t std::vector<quasar::TranslationToken>::__construct_one_at_end[abi:ne200100]<quasar::TranslationToken const&>(uint64_t a1, __int128 *a2)
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

  v6 = *(a2 + 12);
  *(v4 + 32) = 0;
  *(v4 + 24) = v6;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  v8 = *(a2 + 7);
  *(v4 + 64) = *(a2 + 16);
  *(v4 + 56) = v8;
  *(a1 + 8) = v4 + 72;
  return result;
}

uint64_t std::vector<quasar::TranslationToken>::__emplace_back_slow_path<quasar::TranslationToken const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationToken>>(a1, v6);
  }

  v7 = 72 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 12);
  *(v7 + 32) = 0;
  *(v7 + 24) = v9;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v7 + 32, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  v10 = *(a2 + 7);
  *(v7 + 64) = *(a2 + 16);
  *(v7 + 56) = v10;
  *&v19 = v19 + 72;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::TranslationToken>::~__split_buffer(&v17);
  return v16;
}

void sub_1B544EBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<quasar::TranslationToken>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v9 = *(v7 + 56);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 56) = v9;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void **std::__split_buffer<quasar::TranslationToken>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::TranslationToken>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TranslationToken>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](v4, i - 72);
  }
}

void quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::OnlineLASLmRescoringSpeculativeBeamSearchDecoder(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D12D50;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 504) = 257;
  *(v3 + 508) = 0x8000001F4;
  *(v3 + 516) = 0;
  *(v3 + 520) = 0x3C23D70A00000000;
  *(v3 + 528) = xmmword_1B5AFFF80;
  std::string::basic_string[abi:ne200100]<0>((v3 + 544), "");
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 624) = 1065353216;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 1;
  *(a1 + 728) = 0;
  *(a1 + 736) = 100000000;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 1065353216;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  operator new();
}

void sub_1B544EF18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::OnlineLASAttentionChecker>::reset[abi:ne200100]((v2 + 856), 0);
  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100]((v2 + 848), 0);
  std::unique_ptr<kaldi::quasar::CEStatelessDecoderNet>::reset[abi:ne200100]((v2 + 840), 0);
  std::unique_ptr<kaldi::quasar::CEStatelessEncoderNet>::reset[abi:ne200100]((v2 + 832), 0);
  v7 = *(v2 + 816);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v2 + 800);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(v2 + 784);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(v2 + 768);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(v2 + 752);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(v2 + 712);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v2 + 696);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(v2 + 687) < 0)
  {
    operator delete(*(v2 + 664));
  }

  if (*(v2 + 663) < 0)
  {
    operator delete(*v5);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2 + 592);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 567) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 503) < 0)
  {
    operator delete(*(v2 + 480));
  }

  if (*(v2 + 479) < 0)
  {
    operator delete(*v4);
  }

  quasar::Decoder::~Decoder(v2);
  _Unwind_Resume(a1);
}

void quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::~OnlineLASLmRescoringSpeculativeBeamSearchDecoder(quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder *this)
{
  *this = &unk_1F2D12D50;
  if (*(this + 991) < 0)
  {
    operator delete(*(this + 121));
  }

  if (*(this + 967) < 0)
  {
    operator delete(*(this + 118));
  }

  if (*(this + 943) < 0)
  {
    operator delete(*(this + 115));
  }

  v2 = *(this + 114);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 903) < 0)
  {
    operator delete(*(this + 110));
  }

  v3 = *(this + 109);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<kaldi::quasar::OnlineLASAttentionChecker>::reset[abi:ne200100](this + 107, 0);
  std::unique_ptr<kaldi::BeamSearchDecoder>::reset[abi:ne200100](this + 106, 0);
  std::unique_ptr<kaldi::quasar::CEStatelessDecoderNet>::reset[abi:ne200100](this + 105, 0);
  std::unique_ptr<kaldi::quasar::CEStatelessEncoderNet>::reset[abi:ne200100](this + 104, 0);
  v4 = *(this + 102);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 100);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 98);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 96);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 94);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 89);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 87);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 687) < 0)
  {
    operator delete(*(this + 83));
  }

  if (*(this + 663) < 0)
  {
    operator delete(*(this + 80));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 592);
  v11 = (this + 568);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  if (*(this + 503) < 0)
  {
    operator delete(*(this + 60));
  }

  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

  quasar::Decoder::~Decoder(this);
}

{
  quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::~OnlineLASLmRescoringSpeculativeBeamSearchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "las-lm-rescoring-speculative-beam-search-decoder");
  quasar::SystemConfig::enforceMinVersion(a2, 211, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  kaldi::BeamSearchDecoderOptions::Register((this + 63), a2);
  quasar::QsrTextSymbolTable::Register(this[108], a2, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(__p, "encoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS encoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 57), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "decoder-model-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LAS decoder split model (TF/Espresso/CoreML graph)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 60), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "batch-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "batch size");
  quasar::SystemConfig::Register<int>(a2, __p, this + 540, v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "substring-delimiter");
  std::string::basic_string[abi:ne200100]<0>(v4, "Substring delimiter");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 68), v4, 0, 239, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "token-delimiters");
  std::string::basic_string[abi:ne200100]<0>(v4, "List of token delimiters");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, __p, (this + 71), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "split-tokens-by-character");
  std::string::basic_string[abi:ne200100]<0>(v4, "split tokens by character");
  quasar::SystemConfig::Register<BOOL>(a2, __p, (this + 79), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lexicon-fst-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Lexicon FST (to be used for re-tokenization)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 80), v4, 1, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "subword-sym-table-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "Subword symbol table");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 110), v4, 1, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lm-fst-file");
  std::string::basic_string[abi:ne200100]<0>(v4, "LM FST (to be used for re-tokenization)");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 83), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lm-scale");
  std::string::basic_string[abi:ne200100]<0>(v4, "Scaling factor to use for LM weights");
  quasar::SystemConfig::Register<float>(a2, __p, (this + 103), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "subword-oov-symbol");
  std::string::basic_string[abi:ne200100]<0>(v4, "The subword OOV token symbol");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 115), v4, 1, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "word-oov-symbol");
  std::string::basic_string[abi:ne200100]<0>(v4, "The word-level OOV token symbol");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 118), v4, 1, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "word-boundary-symbol");
  std::string::basic_string[abi:ne200100]<0>(v4, "The word boundary subword token symbol");
  quasar::SystemConfig::Register<std::string>(a2, __p, (this + 121), v4, 1, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "mapping-cache-size");
  std::string::basic_string[abi:ne200100]<0>(v4, "Cache size to use for lazy FST mapping operations");
  quasar::SystemConfig::Register<long long>(a2, __p, (this + 92), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "speculative-steps");
  std::string::basic_string[abi:ne200100]<0>(v4, "steps to decode beyond attention checks");
  quasar::SystemConfig::Register<int>(a2, __p, (this + 127), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rollback-steps");
  std::string::basic_string[abi:ne200100]<0>(v4, "steps to rollback before each speculative decoder");
  quasar::SystemConfig::Register<int>(a2, __p, this + 1020, v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "speculative-catchup");
  std::string::basic_string[abi:ne200100]<0>(v4, "Catch up at the end of utterance by returning speculative predictions");
  quasar::SystemConfig::Register<BOOL>(a2, __p, (this + 128), v4, 0, 211, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "unchecked-attention-heads");
  std::string::basic_string[abi:ne200100]<0>(v4, "Do not perform checks for attention heads at these indexes");
  quasar::SystemConfig::Register<std::unordered_set<std::string>>(a2, __p, (this + 74), v4, 0, 238, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B544FA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_1B545025C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5450280);
}

void sub_1B545027C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

float quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::preProcessPath(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 24))(a2);
  if (v4 != -1)
  {
    v6 = v4;
    v7 = 0xFFFFFFFFLL;
    while (1)
    {
      (*(*a2 + 32))(&v58, a2, v6);
      LODWORD(__p) = HIDWORD(v58);
      LODWORD(v41) = v58;
      LODWORD(v38) = 2139095040;
      LODWORD(v31) = 2139095040;
      result = *&v58;
      if (*&v58 != INFINITY)
      {
        break;
      }

      result = *&__p;
      if (*&__p != *&v31)
      {
        break;
      }

      if ((*(*a2 + 40))(a2, v6, *&__p) != 1 && quasar::gLogLevel >= 1)
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Invalid path FST. State ", 24);
        v10 = MEMORY[0x1B8C84C00](v9, v6);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " has ", 5);
        v12 = (*(*a2 + 40))(a2, v6);
        v13 = MEMORY[0x1B8C84C30](v11, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " arcs", 5);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(&v41);
      }

      *&v41 = &unk_1F2CFC800;
      *(&v42 + 1) = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::MutateCheck(a2);
      v14 = a2[1];
      *(&v41 + 1) = *(*(v14 + 64) + 8 * v6);
      *&v42 = v14 + 8;
      v15 = *(*(&v41 + 1) + 24) + 20 * *(&v42 + 1);
      v38 = *v15;
      v16 = *(v15 + 8);
      v17 = *(v15 + 12);
      v40 = *(v15 + 16);
      LODWORD(v39) = 0;
      *(&v39 + 1) = v16 + v17;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::SetValue(&v41, &v38);
      LODWORD(__p) = *(a1 + 1008);
      HIDWORD(__p) = __p;
      v35 = 0;
      v36 = v6;
      (*(*a2 + 208))(a2, v6, &__p);
      (*(**(a1 + 904) + 88))(&__p);
      v18 = *(a1 + 568);
      v19 = *(a1 + 576);
      if (v18 != v19)
      {
        if ((v37 & 0x80u) == 0)
        {
          v20 = v37;
        }

        else
        {
          v20 = v35;
        }

        if ((v37 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        while (1)
        {
          v22 = *(v18 + 23);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v18 + 8);
          }

          if (v22 == v20)
          {
            v24 = v23 >= 0 ? v18 : *v18;
            if (!memcmp(v24, p_p, v20))
            {
              break;
            }
          }

          v18 += 24;
          if (v18 == v19)
          {
            v18 = v19;
            break;
          }
        }
      }

      (*(*a2 + 32))(&v31, a2, v40);
      v61 = *(&v31 + 1);
      v62 = v31;
      v60 = 2139095040;
      v59 = INFINITY;
      v25 = *&v31 != INFINITY || v61 != v59;
      if ((v18 != v19) | !quasar::isAscii(&__p) | v25)
      {
        if (v7 != -1)
        {
          v31 = __PAIR64__(*(a1 + 992), v38);
          v32 = v39;
          v33 = v40;
          (*(*a2 + 208))(a2, v7, &v31);
          v7 = 0xFFFFFFFFLL;
        }
      }

      else
      {
        isAscii = quasar::isAscii(&__p);
        if (v38)
        {
          v27 = isAscii;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          v28 = (*(*a2 + 200))(a2);
          v29 = v28;
          if (v7 == -1)
          {
            v30 = v6;
          }

          else
          {
            v30 = v7;
          }

          v31 = v38;
          v32 = v39;
          v33 = v28;
          (*(*a2 + 208))(a2, v30, &v31);
          v7 = v29;
        }
      }

      v6 = v40;
      if (v37 < 0)
      {
        operator delete(__p);
      }
    }
  }

  return result;
}

void sub_1B5450760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::composeNbestLatticePathsWithFst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 224))(a3);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  fst::ConvertNbestToVector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2, &v7);
  v5 = v7;
  if (v7 != v8)
  {
    quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::preProcessPath(a1, v7);
    fst::ArcSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(v5);
    fst::ComposeFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::CreateBase(v5, *(a1 + 776));
  }

  v6 = &v7;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1B5450998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, char a18)
{
  a16 = &a18;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void quasar::OnlineLASLmRescoringSpeculativeBeamSearchDecoder::runImpl(uint64_t a1, uint64_t a2, std::vector<std::wstring> **a3, uint64_t a4)
{
  v5 = a3;
  v69 = *MEMORY[0x1E69E9840];
  quasar::SymbolTableList::clear((*a3)[20].__end_);
  end = (*v5)[20].__end_;
  v9 = *(a1 + 872);
  v66 = *(a1 + 864);
  v67 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(end, &v66, 0, -1);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  kaldi::quasar::OnlineLASSpeculativeDecodable::OnlineLASSpeculativeDecodable(v65, *(a1 + 832), *(a1 + 840), *a2, *(a1 + 856), *(a1 + 540), *(a1 + 1016), *(a1 + 1020), *(a1 + 1024));
  v63 = 0;
  __src = 0;
  v64 = 0;
  v60 = 0;
  v59 = 0;
  v61 = 0;
  memset(&v58, 0, sizeof(v58));
  kaldi::BeamSearchDecoder::InitDecoding(*(a1 + 848));
  size = 0;
  v11 = 0;
  v37 = v5;
  while (1)
  {
    __s2 = v11;
    v12 = size - v11;
    while (1)
    {
      v13 = kaldi::BeamSearchDecoder::Finished(*(a1 + 848));
      v14 = *(a1 + 848);
      if (v13)
      {
        goto LABEL_46;
      }

      memset(&v68, 0, sizeof(v68));
      if (kaldi::BeamSearchDecoder::AdvanceDecoding(v14, v65, 1) >= 1)
      {
        fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
      }

      if (*(a1 + 1016) < 1 || *(a1 + 1024) != 1 || (kaldi::quasar::OnlineLASSpeculativeDecodable::EncodingFinished(v65) & 1) == 0)
      {
        break;
      }

      v15 = 1;
LABEL_22:
      if (v68.__r_.__value_.__r.__words[0])
      {
        v68.__r_.__value_.__l.__size_ = v68.__r_.__value_.__r.__words[0];
        operator delete(v68.__r_.__value_.__l.__data_);
        if (v15)
        {
          goto LABEL_45;
        }
      }

      else if (v15)
      {
LABEL_45:
        v14 = *(a1 + 848);
LABEL_46:
        kaldi::BeamSearchDecoder::FinalizeDecoding(v14);
        v30 = kaldi::quasar::OnlineLASSpeculativeDecodable::FrameOffset(v65);
        v31 = *v5;
        while (1)
        {
          LODWORD(v31[24].__end_cap_.__value_) = v30;
          if (!kaldi::OnlineFeatureMatrix::IsValidFrame(*a2, v30, 1))
          {
            break;
          }

          v31 = *v5;
          v30 = LODWORD((*v5)[24].__end_cap_.__value_) + 1;
        }

        v32 = *v5;
        BYTE4(v32[24].__end_cap_.__value_) = *(*a4 + 20);
        *(&v32[24].__end_cap_.__value_ + 5) = 257;
        v33 = kaldi::BeamSearchDecoder::ReachedFinal(*(a1 + 848), -1);
        v34 = quasar::gLogLevel < 4 || v33;
        if ((v34 & 1) == 0)
        {
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Decoder did not reach end-state, outputting partial traceback.", 62);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }
    }

    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v68, __src, v63, (v63 - __src) >> 2);
    v16 = *(a1 + 848);
    if (&v59 != (v16 + 232))
    {
      std::vector<std::pair<int,float>>::__assign_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(&v59, *(v16 + 232), *(v16 + 240), (*(v16 + 240) - *(v16 + 232)) >> 3);
    }

    v17 = v59;
    v18 = v60;
    while (v17 != v18)
    {
      std::vector<int>::push_back[abi:ne200100](&v68.__r_.__value_.__l.__data_, v17);
      v17 += 2;
    }

    if (v68.__r_.__value_.__l.__size_ - v68.__r_.__value_.__r.__words[0] == v12 && !memcmp(v68.__r_.__value_.__l.__data_, __s2, v68.__r_.__value_.__l.__size_ - v68.__r_.__value_.__r.__words[0]))
    {
      break;
    }

    v19 = __s2;
    v20 = kaldi::quasar::OnlineLASSpeculativeDecodable::FrameOffset(v65);
    v21 = *v5;
    LODWORD(v21[24].__end_cap_.__value_) = v20;
    quasar::SymbolTableList::lookup(v21[20].__end_, &v68, &v21[2], &v21[3], 1);
    if (*(a2 + 561) != 1)
    {
      goto LABEL_40;
    }

    if (*(a1 + 576) != *(a1 + 568))
    {
      quasar::formatResults(&(*v5)[2], (a1 + 568), a1 + 544, *(a1 + 632), __p);
      v22 = *v5;
      std::vector<std::string>::__vdeallocate(*v5 + 2);
      *&v22[2].__begin_ = *__p;
      v22[2].__end_cap_.__value_ = v39;
      __p[1] = 0;
      *&v39 = 0;
      __p[0] = 0;
      v57[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v57);
    }

    v23 = *v5;
    v24 = v58.__end_;
    begin = v58.__begin_;
    p_data = &v23[2].__begin_->__r_.__value_.__l.__data_;
    if (v58.__end_ - v58.__begin_ != v23[2].__end_ - p_data)
    {
LABEL_36:
      v28 = v23[24].__begin_;
      v29 = *(*a4 + 12);
      memset(v57, 0, sizeof(v57));
      memset(v56, 0, sizeof(v56));
      memset(v55, 0, sizeof(v55));
      *&v40 = 0;
      *__p = 0u;
      v39 = 0u;
      std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
      LOBYTE(v40) = 0;
      LOWORD(v35) = 0;
      (*(v28->__r_.__value_.__r.__words[0] + 24))(v28, &v23[2].__begin_, v29, 1, 0, 0, v57, v56, v55, v35, __p);
      v5 = v37;
      v19 = __s2;
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[1]);
      }

      __p[0] = v55;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v56;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      __p[0] = v57;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
      if (&v58 != &(*v37)[2])
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v58, (*v37)[2].__begin_, (*v37)[2].__end_, 0xAAAAAAAAAAAAAAABLL * (((*v37)[2].__end_ - (*v37)[2].__begin_) >> 3));
      }

      goto LABEL_40;
    }

    if (v58.__begin_ == v58.__end_)
    {
      v19 = __s2;
      v5 = v37;
      if (__s2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      do
      {
        v27 = std::equal_to<std::string>::operator()[abi:ne200100](__p, &begin->__r_.__value_.__l.__data_, p_data);
        if (!v27)
        {
          break;
        }

        ++begin;
        p_data += 3;
      }

      while (begin != v24);
      v19 = __s2;
      v5 = v37;
      if (!v27)
      {
        v23 = *v37;
        goto LABEL_36;
      }

LABEL_40:
      if (v19)
      {
LABEL_41:
        operator delete(v19);
      }
    }

    size = v68.__r_.__value_.__l.__size_;
    v11 = v68.__r_.__value_.__r.__words[0];
  }

  v15 = 0;
  goto LABEL_22;
}

void sub_1B54517E0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 176);
  if (v4)
  {
    *(v2 - 168) = v4;
    operator delete(v4);
  }

  STACK[0x240] = &STACK[0x258];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x240]);
  v5 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v5;
    operator delete(v5);
  }

  v6 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v6;
    operator delete(v6);
  }

  if (v1)
  {
    operator delete(v1);
  }

  kaldi::quasar::OnlineLASSpeculativeDecodable::~OnlineLASSpeculativeDecodable(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

kaldi::quasar::CEStatelessEncoderNet *std::unique_ptr<kaldi::quasar::CEStatelessEncoderNet>::reset[abi:ne200100](kaldi::quasar::CEStatelessEncoderNet **a1, kaldi::quasar::CEStatelessEncoderNet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::CEStatelessEncoderNet::~CEStatelessEncoderNet(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

kaldi::quasar::CEStatelessDecoderNet *std::unique_ptr<kaldi::quasar::CEStatelessDecoderNet>::reset[abi:ne200100](kaldi::quasar::CEStatelessDecoderNet **a1, kaldi::quasar::CEStatelessDecoderNet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::CEStatelessDecoderNet::~CEStatelessDecoderNet(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

kaldi::quasar::OnlineLASAttentionChecker *std::unique_ptr<kaldi::quasar::OnlineLASAttentionChecker>::reset[abi:ne200100](kaldi::quasar::OnlineLASAttentionChecker **a1, kaldi::quasar::OnlineLASAttentionChecker *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::quasar::OnlineLASAttentionChecker::~OnlineLASAttentionChecker(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void kaldi::ComplexFft<float>(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v7 = v3 >> 1;
    __p = 0;
    v12 = 0;
    v13 = 0;
    kaldi::Factorize<int>(v3 >> 1, &__p);
    if (v12 == __p)
    {
      v8 = 0;
    }

    else
    {
      v8 = __p;
    }

    memset(v10, 0, sizeof(v10));
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v10;
    }

    kaldi::ComplexFftRecursive<float>(*a1, 1, v7, v8, (v8 + v12 - __p), a2, v9);
    kaldi::Vector<float>::Destroy(v10);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }
}

void sub_1B5451C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  kaldi::Vector<float>::Destroy(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::Factorize<int>(int a1, uint64_t a2)
{
  v4 = 0;
  v11 = *MEMORY[0x1E69E9840];
  *(a2 + 8) = *a2;
  v9[0] = xmmword_1B5B00290;
  v9[1] = unk_1B5B002A0;
  v10 = 0x1D00000017;
  while (a1 != 1)
  {
    v5 = v9 + v4;
    while (1)
    {
      v6 = *v5;
      if (a1 % *v5)
      {
        break;
      }

      std::vector<int>::push_back[abi:ne200100](a2, v9 + v4);
      a1 /= v6;
    }

    if (++v4 == 10)
    {
      v8 = 31;
      if (a1 != 1)
      {
        v7 = 31;
        do
        {
          while (!(a1 % v7))
          {
            std::vector<int>::push_back[abi:ne200100](a2, &v8);
            a1 /= v7;
            v7 = v8;
          }

          v7 += 2;
          v8 = v7;
        }

        while (a1 != 1);
      }

      return;
    }
  }
}

void kaldi::ComplexFftRecursive<float>(uint64_t a1, int a2, uint64_t a3, unsigned int *a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  if (a4 != a5)
  {
    v12 = a2;
    v14 = 2 * a3;
    if (a2 < 2 || 8 * a3 * a2 <= 0x2000 || ((0x2000 / (8 * a3)) <= 1 ? (v15 = 1) : (v15 = 0x2000 / (8 * a3)), v15 >= a2))
    {
      v18 = *a4;
      v19 = (a3 / v18);
      if (v19 >= 2)
      {
        if (*(a7 + 8) < a3)
        {
          kaldi::Vector<float>::Resize(a7, a3, 0);
        }

        if (v12 >= 1)
        {
          v20 = 0;
          v21 = *a7;
          LODWORD(v22) = v19 * v18;
          if (v19 * v18 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v22;
          }

          v23 = a1;
          do
          {
            v24 = 0;
            v25 = 1;
            do
            {
              v26 = 0;
              v27 = v25;
              v28 = 4 * v24;
              v29 = v28;
              v30 = v21;
              do
              {
                v31 = (a3 / v18);
                v32 = v29;
                v33 = v30;
                do
                {
                  *v33++ = *(v23 + v32);
                  v32 += 8 * v18;
                  --v31;
                }

                while (v31);
                ++v26;
                v30 += v19;
                v29 += 8;
              }

              while (v26 != v18);
              v34 = v22;
              v35 = v21;
              do
              {
                v36 = *v35++;
                *(v23 + v28) = v36;
                v28 += 8;
                --v34;
              }

              while (v34);
              v25 = 0;
              v24 = 1;
            }

            while ((v27 & 1) != 0);
            ++v20;
            v23 += 4 * v14;
          }

          while (v20 != v12);
        }
      }

      kaldi::ComplexFftRecursive<float>(a1, (v18 * v12), (a3 / v18), a4 + 1, a5, a6, a7);
      if (a6)
      {
        v37 = -6.28318531;
      }

      else
      {
        v37 = 6.28318531;
      }

      v38 = v37 / a3;
      v39 = __sincosf_stret(v38);
      v40 = v37 / v18;
      v41 = __sincosf_stret(v40);
      if (*(a7 + 8) < 2 * v18)
      {
        kaldi::Vector<float>::Resize(a7, (2 * v18), 0);
      }

      if (v14 * v12)
      {
        v42 = a1 + 4 * v14 * v12;
        v43 = (a1 + 4);
        v44 = a1 + 4 + 16 * v19;
        v45 = *a7;
        v46 = 4 * v14;
        v47 = 8 * v19;
        v48 = *a7 + 4;
        do
        {
          if (v19 >= 1)
          {
            v49 = 0;
            v50 = 1.0;
            v51 = 0.0;
            v52 = v43;
            v53 = v44;
            do
            {
              v54 = 0;
              v55 = (2 * ((v49 + v19) & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v56 = v51;
              v57 = v50;
              do
              {
                v58 = *(a1 + 8 * v49);
                v59 = 2 * v54;
                v45[v59] = v58;
                v60 = *(a1 + 4 * ((2 * (v49 & 0x3FFFFFFFFFFFFFFFLL)) | 1));
                v61 = (2 * (v54 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                v45[v61] = v60;
                v62 = v58 + ((*(a1 + 8 * (v49 + v19)) * v57) - (*(a1 + 4 * v55) * v56));
                v45[v59] = v62;
                v63 = v60 + ((v57 * *(a1 + 4 * v55)) + (*(a1 + 8 * (v49 + v19)) * v56));
                v45[v61] = v63;
                if (v18 >= 3)
                {
                  v64 = v18 - 2;
                  v65 = v53;
                  v66 = v56;
                  v67 = v57;
                  do
                  {
                    v68 = -(v66 * v56);
                    v66 = (v57 * v66) + (v67 * v56);
                    v67 = v68 + (v67 * v57);
                    v62 = v62 + ((*(v65 - 1) * v67) - (*v65 * v66));
                    v45[2 * v54] = v62;
                    v63 = v63 + ((v67 * *v65) + (*(v65 - 1) * v66));
                    v45[v61] = v63;
                    v65 = (v65 + v47);
                    --v64;
                  }

                  while (v64);
                }

                if (v54 != v18 - 1)
                {
                  v69 = -(v56 * v41.__sinval);
                  v56 = (v41.__cosval * v56) + (v57 * v41.__sinval);
                  v57 = v69 + (v57 * v41.__cosval);
                }

                ++v54;
              }

              while (v54 != v18);
              v70 = v18;
              v71 = v48;
              v72 = v52;
              do
              {
                *(v72 - 1) = *(v71 - 1);
                v73 = *v71;
                v71 += 2;
                *v72 = v73;
                v72 = (v72 + v47);
                --v70;
              }

              while (v70);
              v74 = -(v51 * v39.__sinval);
              v51 = (v39.__cosval * v51) + (v50 * v39.__sinval);
              ++v49;
              v50 = v74 + (v50 * v39.__cosval);
              v53 += 2;
              v52 += 2;
            }

            while (v49 != v19);
          }

          a1 += 4 * v14;
          v44 += v46;
          v43 = (v43 + v46);
        }

        while (a1 != v42);
      }
    }

    else
    {
      do
      {
        if (v15 >= v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        kaldi::ComplexFftRecursive<float>(a1, v16, a3, a4, a5, a6, a7);
        a1 += 4 * v14 * v16;
        v17 = __OFSUB__(v12, v16);
        v12 -= v16;
      }

      while (!((v12 < 0) ^ v17 | (v12 == 0)));
    }
  }
}

void kaldi::RealFft<float>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a2;
    v5 = v2 >> 1;
    if (a2)
    {
      kaldi::ComplexFft<float>(a1, 1, 0);
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    v7 = *a1;
    v8 = 6.28318531 / v2 * v6;
    v9 = __sincosf_stret(v8);
    if (v5 >= 2)
    {
      v10 = -v6;
      v11 = v5 - 1;
      v12 = (v7 + 2);
      v13 = &v7[2 * v5 - 1];
      v14 = &v7[v2 - 2];
      v15 = 0.0;
      v16 = 1;
      do
      {
        v17 = -(v15 * v9.__sinval);
        v18 = v9.__cosval * v15;
        v19 = vadd_f32(*v12, *v14);
        v20 = vsub_f32(*v12, *v14);
        v21 = vext_s8(v19, v20, 4uLL);
        v19.i32[1] = v20.i32[1];
        v15 = v18 + (v10 * v9.__sinval);
        v10 = v17 + (v10 * v9.__cosval);
        v22 = vmul_f32(v19, 0x3F0000003F000000);
        v23 = vmul_f32(v21, COERCE_FLOAT32X2_T(-0.0000305175853));
        v24 = vmla_n_f32(vrev64_s32(vmul_f32(v23, __PAIR64__(-v15, LODWORD(v15)))), v23, v10);
        *v12 = vadd_f32(v22, v24);
        if (v16 != v11)
        {
          *(v13 - 1) = v22.f32[0] + (vmuls_lane_f32(v15, v23, 1) - (v23.f32[0] * v10));
          *v13 = vsub_f32(v24, v22).i32[1];
        }

        ++v16;
        --v11;
        ++v12;
        v13 -= 2;
        --v14;
      }

      while (v16 - ((v5 - 2) >> 1) != 2);
    }

    v25 = v7[1];
    v26 = *v7 + v25;
    v27 = *v7 - v25;
    *v7 = v26;
    v7[1] = v27;
    if ((v3 & 1) == 0)
    {
      *v7 = v26 * 0.5;
      v7[1] = v27 * 0.5;
      kaldi::ComplexFft<float>(a1, 0, 0);

      kaldi::VectorBase<float>::Scale();
    }
  }
}

void kaldi::ComputeDctMatrix<float>(uint64_t a1)
{
  v2 = kaldi::MatrixBase<float>::NumRows(a1);
  v3 = kaldi::MatrixBase<float>::NumCols(a1);
  v4 = v3;
  v5 = sqrt(1.0 / v4);
  v6 = *a1;
  v7 = (v3 + 3) & 0xFFFFFFFC;
  v8 = vdupq_n_s64(v3 - 1);
  v9 = xmmword_1B5AE0050;
  v10 = xmmword_1B5AE0060;
  v11 = (*a1 + 8);
  v12 = vdupq_n_s64(4uLL);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v8, v10));
    if (vuzp1_s16(v13, *&v4).u8[0])
    {
      *(v11 - 2) = v5;
    }

    if (vuzp1_s16(v13, *&v4).i8[2])
    {
      *(v11 - 1) = v5;
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
    {
      *v11 = v5;
      v11[1] = v5;
    }

    v9 = vaddq_s64(v9, v12);
    v10 = vaddq_s64(v10, v12);
    v11 += 4;
    v7 -= 4;
  }

  while (v7);
  if (v2 >= 2)
  {
    v14 = sqrt(2.0 / v4);
    v15 = v14;
    v44 = 3.14159265 / v3;
    v16 = *(a1 + 16);
    v17 = v2;
    v18 = (v3 + 3) & 0xFFFFFFFC;
    v19 = 4 * v16;
    v20 = v6 + 4 * v16 + 8;
    v21 = 1;
    __asm { FMOV            V1.2D, #0.5 }

    v42 = vdupq_n_s64(4uLL);
    v43 = _Q1;
    v45 = v8;
    do
    {
      v27 = 0;
      v46 = v21;
      v28 = v20;
      v29 = xmmword_1B5AE0060;
      v30 = xmmword_1B5AE0050;
      do
      {
        v52 = v30;
        v53 = v29;
        v31 = vorr_s8(vdup_n_s32(v27), 0x300000002);
        v32 = vmovn_s64(vcgeq_u64(v8, v29));
        v48 = vuzp1_s16(v32, v31).u8[0];
        v33.i64[0] = v31.u32[0];
        v33.i64[1] = v31.u32[1];
        v34 = vcvtq_f64_u64(v33);
        v33.i64[0] = v27;
        v33.i64[1] = (v27 + 1);
        v54 = vmulq_n_f64(vmulq_n_f64(vaddq_f64(vcvtq_f64_u64(v33), v43), v44), v46);
        __xa = vmulq_n_f64(vmulq_n_f64(vaddq_f64(v34, v43), v44), v46);
        v49 = cos(__xa.f64[1]);
        __x = cos(__xa.f64[0]);
        v47 = cos(v54.f64[1]);
        v35.f64[0] = cos(v54.f64[0]);
        v35.f64[1] = v47;
        if (v48)
        {
          v36 = v15 * v35.f64[0];
          *(v28 - 2) = v36;
        }

        if (vuzp1_s16(v32, *&v35).i8[2])
        {
          v37 = vmuld_lane_f64(v15, v35, 1);
          *(v28 - 1) = v37;
        }

        v38.f64[0] = __x;
        v38.f64[1] = v49;
        v8 = v45;
        v39 = vmovn_s64(vcgeq_u64(v45, v52));
        if (vuzp1_s16(v39, v39).i32[1])
        {
          v40 = v15 * __x;
          *v28 = v40;
          v41 = vmuld_lane_f64(v15, v38, 1);
          v28[1] = v41;
        }

        v27 += 4;
        v30 = vaddq_s64(v52, v42);
        v29 = vaddq_s64(v53, v42);
        v28 += 4;
      }

      while (v18 != v27);
      ++v21;
      v20 += v19;
    }

    while (v21 != v17);
  }
}

uint64_t kaldi::CompressedMatrix::CopyFromMat<float>(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      MEMORY[0x1B8C85310]();
    }

    *a1 = 0;
  }

  result = kaldi::MatrixBase<float>::NumRows(a2);
  if (result)
  {
    kaldi::MatrixBase<float>::Min(a2);
    kaldi::MatrixBase<float>::Max(a2);
    kaldi::MatrixBase<float>::NumRows(a2);
    kaldi::MatrixBase<float>::NumCols(a2);
    operator new[]();
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::Destroy(kaldi::CompressedMatrix *this)
{
  result = *this;
  if (result)
  {
    if (*(this + 8) == 1)
    {
      *(this + 8) = 0;
    }

    else
    {
      result = MEMORY[0x1B8C85310]();
    }

    *this = 0;
  }

  return result;
}

void kaldi::CompressedMatrix::CompressColumn<float>(float *a1, float *a2, int a3, signed int a4, _WORD *a5, _BYTE *a6)
{
  v10 = a2;
  kaldi::CompressedMatrix::ComputeColHeader<float>(a1, a2, a3, a4, a5);
  if (a4 >= 1)
  {
    v14 = *a1;
    *&v15 = a1[1];
    v16 = 0x3EF000100010000ALL;
    v17 = *&v15 * 0.0000152590219;
    LOWORD(v15) = *a5;
    v18 = v14 + v17 * v15;
    LOWORD(v16) = a5[1];
    v19 = v14 + v17 * v16;
    LOWORD(v12) = a5[2];
    *&v12 = v14 + v17 * v12;
    LOWORD(v13) = a5[3];
    *&v14 = v14 + v17 * v13;
    v20 = *&v14 - *&v12;
    v21 = a4;
    do
    {
      v22 = *v10;
      if (*v10 >= v19)
      {
        v25 = (((v22 - *&v12) / v20) * 63.0) + 0.5;
        v24 = v25 & ~(v25 >> 31);
        if (v24 >= 63)
        {
          LOBYTE(v24) = 63;
        }

        LOBYTE(v24) = v24 | 0xC0;
        v26 = (((v22 - v19) / (*&v12 - v19)) * 128.0) + 0.5;
        v27 = v26 & ~(v26 >> 31);
        if (v27 >= 128)
        {
          LOBYTE(v27) = 0x80;
        }

        v28 = v27 + 64;
        if (v22 < *&v12)
        {
          LOBYTE(v24) = v28;
        }
      }

      else
      {
        v23 = (((v22 - v18) / (v19 - v18)) * 64.0) + 0.5;
        v24 = v23 & ~(v23 >> 31);
        if (v24 >= 64)
        {
          LOBYTE(v24) = 64;
        }
      }

      *a6++ = v24;
      v10 += a3;
      --v21;
    }

    while (v21);
  }
}

uint64_t kaldi::CompressedMatrix::CopyToMat<float>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 12);
    kaldi::MatrixBase<float>::NumRows(a2);
    result = kaldi::MatrixBase<float>::NumCols(a2);
    if (v4 >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = (v3 + 16);
      v13 = v3 + 16 + 8 * v4;
      do
      {
        if (v5 >= 1)
        {
          v14 = 0;
          v15 = *(v3 + 4) * 0.0000152590219;
          LOWORD(v7) = v12[3];
          v16 = *v3;
          v17 = v16 + v15 * *&v7;
          LOWORD(v8) = v12[2];
          v8 = v16 + v15 * *&v8;
          *&v8 = v8;
          LOWORD(v9) = v12[1];
          *&v18 = v16 + v15 * *&v9;
          v19 = *&v18;
          LOWORD(v18) = *v12;
          v20 = v16 + v15 * v18;
          v21 = *&v8;
          v22 = v17 - *&v8;
          v7 = v19;
          *&v8 = *&v8 - v19;
          v9 = v20;
          v23 = v19 - v20;
          v24 = (*a2 + v10);
          v25 = 4 * *(a2 + 16);
          do
          {
            result = *(v13 + v14);
            v26 = result - 64;
            if (result > 0x40)
            {
              v28 = result >= 0xC0;
              result = (result - 192);
              if (result != 0 && v28)
              {
                v27 = v21 + (v22 * result) * 0.0158730159;
              }

              else
              {
                v27 = v7 + (*&v8 * v26) * 0.0078125;
              }
            }

            else
            {
              v27 = v9 + (v23 * result) * 0.015625;
            }

            v29 = v27;
            *v24 = v29;
            ++v14;
            v24 = (v24 + v25);
          }

          while (v5 != v14);
          v13 += v14;
        }

        ++v11;
        v12 += 4;
        v10 += 4;
      }

      while (v11 != v4);
    }
  }

  else
  {
    kaldi::MatrixBase<float>::NumRows(a2);

    return kaldi::MatrixBase<float>::NumCols(a2);
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::CopyToMat<double>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(v3 + 8);
    v4 = *(v3 + 12);
    kaldi::MatrixBase<float>::NumRows(a2);
    result = kaldi::MatrixBase<float>::NumCols(a2);
    if (v4 >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = (v3 + 16);
      v11 = v3 + 16 + 8 * v4;
      v12 = *v3;
      v13 = *(v3 + 4) * 0.0000152590219;
      do
      {
        if (v5 >= 1)
        {
          v14 = 0;
          LOWORD(v7) = v10[3];
          *&v15 = v12 + v13 * *&v7;
          v16 = *&v15;
          LOWORD(v15) = v10[2];
          *&v17 = v12 + v13 * v15;
          v18 = *&v17;
          LOWORD(v17) = v10[1];
          *&v19 = v12 + v13 * v17;
          v20 = *&v19;
          LOWORD(v19) = *v10;
          v21 = v12 + v13 * v19;
          v7 = v18;
          v22 = v16 - v18;
          v23 = v20;
          v24 = v18 - v20;
          v25 = v21;
          v26 = v20 - v21;
          v27 = (*a2 + v8);
          v28 = 8 * *(a2 + 16);
          do
          {
            result = *(v11 + v14);
            v29 = result - 64;
            if (result > 0x40)
            {
              v31 = result >= 0xC0;
              result = (result - 192);
              if (result != 0 && v31)
              {
                v30 = v7 + (v22 * result) * 0.0158730159;
              }

              else
              {
                v30 = v23 + (v24 * v29) * 0.0078125;
              }
            }

            else
            {
              v30 = v25 + (v26 * result) * 0.015625;
            }

            v32 = v30;
            *v27 = v32;
            ++v14;
            v27 = (v27 + v28);
          }

          while (v5 != v14);
          v11 += v14;
        }

        ++v9;
        v10 += 4;
        v8 += 8;
      }

      while (v9 != v4);
    }
  }

  else
  {
    kaldi::MatrixBase<float>::NumRows(a2);

    return kaldi::MatrixBase<float>::NumCols(a2);
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::CopyRowsFromVec<float>(uint64_t *a1, char **a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  kaldi::Matrix<float>::Matrix(v8, v5, v6, 0, 0);
  kaldi::MatrixBase<float>::CopyRowsFromVec(v8, a2);
  kaldi::CompressedMatrix::CopyFromMat<float>(a1, v8);
  return kaldi::Matrix<float>::~Matrix(v8);
}

void sub_1B5452D00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::CompressedMatrix::CopyColToVec<float>(uint64_t a1, unsigned int a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a3 + 2);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *a1 + 16;
    v11 = 0x3EF000100010000ALL;
    v12 = *(*a1 + 4) * 0.0000152590219;
    v13 = (v10 + 8 * a2);
    LOWORD(v11) = v13[3];
    v14 = **a1;
    *&v11 = v14 + v12 * v11;
    LOWORD(a7) = v13[2];
    v15 = v14 + v12 * *&a7;
    LOWORD(a8) = v13[1];
    *&v16 = v14 + v12 * *&a8;
    v17 = *&v16;
    LOWORD(v16) = *v13;
    v18 = v14 + v12 * v16;
    v19 = v10 + 8 * *(*a1 + 12) + v8 * a2;
    a4 = v15;
    v20 = *&v11 - v15;
    v21 = v17;
    *&a7 = v15 - v17;
    v22 = v17 - v18;
    v23 = *a3;
    do
    {
      v24 = *(v19 + v9);
      v25 = v24 - 64;
      if (v24 > 0x40)
      {
        v27 = v24 >= 0xC0;
        v28 = v24 - 192;
        if (v28 != 0 && v27)
        {
          v26 = a4 + (v20 * v28) * 0.0158730159;
        }

        else
        {
          v26 = v21 + (*&a7 * v25) * 0.0078125;
        }
      }

      else
      {
        v26 = v18 + (v22 * v24) * 0.015625;
      }

      v29 = v26;
      *(v23 + 4 * v9++) = v29;
    }

    while (v8 != v9);
  }

  return *&a4;
}

float **kaldi::CompressedMatrix::CopyRowToVec<float>(float **result, unsigned int a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = *(a3 + 2);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *result;
    v12 = *(*result + 2);
    v13 = (*result + 4);
    v14 = *a3;
    v15 = 8 * v9 + a2;
    v16 = *result + 11;
    do
    {
      v17 = *v11;
      v18 = v11[1] * 0.0000152590219;
      LOWORD(a8) = *(v16 - 2);
      v19 = v17 + v18 * *&a8;
      *&v19 = v19;
      result = *(v13 + v15);
      v20 = result - 64;
      if (result > 0x40)
      {
        LOWORD(a9) = *(v16 - 1);
        a9 = v17 + v18 * *&a9;
        *&a9 = a9;
        v25 = result >= 0xC0;
        result = (result - 192);
        if (result != 0 && v25)
        {
          LOWORD(v19) = *v16;
          a8 = *&v19;
          v28 = v17 + v18 * a8;
          *&a8 = result;
          v24 = *&a9 + ((v28 - *&a9) * result) * 0.0158730159;
        }

        else
        {
          v26 = *&v19;
          v27 = ((*&a9 - *&v19) * v20);
          a8 = 0.0078125;
          v24 = v26 + v27 * 0.0078125;
        }
      }

      else
      {
        LOWORD(a9) = *(v16 - 3);
        a9 = *&a9;
        v21 = v17 + v18 * a9;
        v22 = v21;
        v23 = ((*&v19 - v21) * result);
        a8 = 0.015625;
        v24 = v22 + v23 * 0.015625;
      }

      v16 += 4;
      v29 = v24;
      *(v14 + 4 * v10++) = v29;
      v15 += v12;
    }

    while (v9 != v10);
  }

  return result;
}

uint64_t kaldi::CompressedMatrix::Write(uint64_t *a1, void *a2, int a3, int a4)
{
  if (a3)
  {
    if (a4)
    {
      v7 = "CN";
    }

    else
    {
      v7 = "CM";
    }

    kaldi::WriteToken(a2, 1, v7);
    if (a4 && !fst::AlignOutput(a2))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Could not align output");
LABEL_18:
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
    }

    if (!*a1)
    {
      v12[0] = 0;
      v12[1] = 0;
    }

    result = std::ostream::write();
  }

  else
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 + 8);
      v10 = *(v8 + 12);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    kaldi::Matrix<float>::Matrix(v12, v9, v10, 1, 0);
    kaldi::CompressedMatrix::CopyToMat<float>(a1, v12);
    kaldi::MatrixBase<float>::Write(v12, a2, 0, 0);
    result = kaldi::Matrix<float>::~Matrix(v12);
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "Error writing compressed matrix to stream.");
    goto LABEL_18;
  }

  return result;
}

void kaldi::CompressedMatrix::Read(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v28[34] = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      MEMORY[0x1B8C85310]();
    }

    *a1 = 0;
  }

  if (!a3)
  {
    v12 = kaldi::Matrix<float>::Matrix(v28);
    kaldi::Matrix<float>::Read(v28, a2, 0, 0, 0, v12);
    kaldi::CompressedMatrix::CopyFromMat<float>(a1, v28);
LABEL_22:
    kaldi::Matrix<float>::~Matrix(v28);
LABEL_23:
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "Failed to read data.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
    }

    return;
  }

  if (kaldi::Peek(a2, 1) != 67)
  {
    v13 = kaldi::Matrix<float>::Matrix(v28);
    kaldi::Matrix<float>::Read(v28, a2, 1, a4 != 0, 0, v13);
    kaldi::CompressedMatrix::CopyFromMat<float>(a1, v28);
    goto LABEL_22;
  }

  v27 = 2;
  if (a4)
  {
    v8 = 20035;
  }

  else
  {
    v8 = 19779;
  }

  v25 = v8;
  v26 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  kaldi::ReadToken(a2, 1, &__p);
  v9 = HIBYTE(v24);
  if (v24 < 0)
  {
    v9 = v23;
  }

  if (v9 == 2)
  {
    p_p = __p;
    if (v24 >= 0)
    {
      p_p = &__p;
    }

    if (*p_p == v25)
    {
      if (!a4)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    if (v23 != 2)
    {
      goto LABEL_45;
    }

    v11 = __p;
  }

  else
  {
    if (SHIBYTE(v24) != 2)
    {
      goto LABEL_45;
    }

    v11 = &__p;
  }

  if (*v11 != v25)
  {
    goto LABEL_45;
  }

  v14 = &__p;
  if (v24 < 0)
  {
    v14 = __p;
  }

  if (v14[1] != 78)
  {
LABEL_45:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Expected token ", 15);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v25, 2);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", got ", 6);
    if (v24 >= 0)
    {
      v18 = &__p;
    }

    else
    {
      v18 = __p;
    }

    if (v24 >= 0)
    {
      v19 = HIBYTE(v24);
    }

    else
    {
      v19 = v23;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ". This could mean that you're trying to memory map an unaligned file.", 69);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Reading aligned matrix as a stream", 34);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v28);
  }

LABEL_33:
  fst::AlignInput();
  if (a4)
  {
    std::istream::tellg();
    *a1 = v28[16].__locale_ + a4;
    *(a1 + 8) = 1;
    std::istream::seekg();
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Seeking for aligned data failed", 31);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_23;
  }

LABEL_37:
  std::istream::read();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Failed to read header", 21);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  if (v21)
  {
    operator new[]();
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B54535B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

float kaldi::CompressedMatrix::Sum(kaldi::CompressedMatrix *this)
{
  if (*this)
  {
    v2 = *(*this + 8);
  }

  else
  {
    v2 = 0;
  }

  memset(v12, 0, sizeof(v12));
  kaldi::Vector<float>::Resize(v12, v2, 0);
  v8 = 0;
  v9 = 0.0;
  while (1)
  {
    v10 = *this;
    if (*this)
    {
      LODWORD(v10) = *(v10 + 12);
    }

    if (v8 >= v10)
    {
      break;
    }

    kaldi::CompressedMatrix::CopyColToVec<float>(this, v8, v12, v3, v4, v5, v6, v7);
    v3 = kaldi::VectorBase<float>::Sum(v12);
    v9 = v9 + *&v3;
    ++v8;
  }

  kaldi::Vector<float>::Destroy(v12);
  return v9;
}

void sub_1B5453688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CompressedMatrix::operator=(uint64_t a1, void *a2)
{
  if (*a1)
  {
    if (*(a1 + 8) == 1)
    {
      *(a1 + 8) = 0;
    }

    else
    {
      MEMORY[0x1B8C85310]();
    }

    *a1 = 0;
  }

  if (*a2)
  {
    operator new[]();
  }

  return a1;
}

uint64_t kaldi::CompressedMatrix::CompressedMatrix(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 8) = 0;
  return kaldi::CompressedMatrix::operator=(this, a2);
}

void kaldi::CompressedMatrix::ComputeColHeader<float>(float *a1, float *a2, int a3, unsigned int a4, _WORD *a5)
{
  v10 = a4;
  std::vector<float>::vector[abi:ne200100](&__p, a4);
  v12 = __p;
  v13 = v43;
  if (v43 != __p)
  {
    v14 = (v43 - __p) >> 2;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    v15 = __p;
    do
    {
      v11 = *a2;
      *v15++ = *a2;
      a2 += a3;
      --v14;
    }

    while (v14);
  }

  if (a4 <= 4)
  {
    std::__sort<std::__less<float,float> &,float *>();
    v24 = __p;
    v35 = *a1;
    v36 = a1[1];
    v37 = (*__p - *a1) / v36;
    v38 = 1.0;
    if (v37 > 1.0)
    {
      v37 = 1.0;
    }

    if (v37 >= 0.0)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0.0;
    }

    v32 = ((v39 * 65535.0) + 0.499);
    *a5 = v32;
    if (a4 <= 1)
    {
      LOWORD(v32) = v32 + 1;
      a5[1] = v32;
    }

    else
    {
      if (((v24[1] - v35) / v36) <= 1.0)
      {
        v38 = (v24[1] - v35) / v36;
      }

      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v32 = (v32 + 1);
      if (v32 <= ((v38 * 65535.0) + 0.499))
      {
        LOWORD(v32) = ((v38 * 65535.0) + 0.499);
      }

      a5[1] = v32;
      if (a4 != 2)
      {
        if (((v24[2] - v35) / v36) <= 1.0)
        {
          v40 = (v24[2] - v35) / v36;
        }

        else
        {
          v40 = 1.0;
        }

        if (v40 < 0.0)
        {
          v40 = 0.0;
        }

        v32 = (v32 + 1);
        if (v32 <= ((v40 * 65535.0) + 0.499))
        {
          LOWORD(v32) = ((v40 * 65535.0) + 0.499);
        }

        a5[2] = v32;
        if (a4 == 4)
        {
          v41 = (v24[3] - v35) / v36;
          if (v41 > 1.0)
          {
            v41 = 1.0;
          }

          if (v41 < 0.0)
          {
            v41 = 0.0;
          }

          v34 = (v41 * 65535.0) + 0.499;
          goto LABEL_32;
        }

LABEL_62:
        LOWORD(v32) = v32 + 1;
        goto LABEL_63;
      }
    }

    LOWORD(v32) = v32 + 1;
    a5[2] = v32;
    goto LABEL_62;
  }

  v16 = a4 >> 2;
  v17 = v16;
  v18 = &v12[v17];
  if (&v12[v17] != v13)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v12, &v12[v16], v13, v11);
    v12 = __p;
    v18 = (__p + v17 * 4);
  }

  std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v12, v12, v18, v11);
  v20 = (3 * v16);
  v22 = __p;
  v21 = v43;
  v23 = (__p + 4 * v20);
  if (v23 != v43)
  {
    std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>((__p + v17 * 4 + 4), v23, v43, v19);
    v22 = __p;
    v21 = v43;
  }

  std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(&v22[(3 * v16) + 1], v21 - 1, v21, v19);
  v24 = __p;
  v25 = *a1;
  v26 = a1[1];
  v27 = (*__p - *a1) / v26;
  if (v27 > 1.0)
  {
    v27 = 1.0;
  }

  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = ((v27 * 65535.0) + 0.499);
  *a5 = v28;
  v29 = (v24[v16] - v25) / v26;
  if (v29 > 1.0)
  {
    v29 = 1.0;
  }

  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = (v28 + 1);
  if (v30 <= ((v29 * 65535.0) + 0.499))
  {
    LOWORD(v30) = ((v29 * 65535.0) + 0.499);
  }

  a5[1] = v30;
  v31 = (v24[v20] - v25) / v26;
  if (v31 > 1.0)
  {
    v31 = 1.0;
  }

  if (v31 < 0.0)
  {
    v31 = 0.0;
  }

  v32 = (v30 + 1);
  if (v32 <= ((v31 * 65535.0) + 0.499))
  {
    LOWORD(v32) = ((v31 * 65535.0) + 0.499);
  }

  a5[2] = v32;
  v33 = (v24[v10 - 1] - v25) / v26;
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  if (v33 < 0.0)
  {
    v33 = 0.0;
  }

  v34 = (v33 * 65535.0) + 0.499;
LABEL_32:
  v32 = (v32 + 1);
  if (v32 <= v34)
  {
    LOWORD(v32) = v34;
  }

LABEL_63:
  a5[3] = v32;
  v43 = v24;
  operator delete(v24);
}

void sub_1B5453AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::ModelFileMap(kaldi::quasar::Encdec *this)
{
  {
    operator new();
  }

  return kaldi::quasar::Encdec::ModelFileMap(void)::model_file_map;
}

uint64_t kaldi::quasar::Encdec::ComputeEngineFileMap(kaldi::quasar::Encdec *this)
{
  if (*(this + 67))
  {

    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::ComputeEngineItf>();
  }

  {
    operator new();
  }

  return kaldi::quasar::Encdec::ComputeEngineFileMap(void)::compute_engine_file_map;
}

void sub_1B5453F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 - 104);
  *(v14 - 104) = 0;
  if (v16)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::ComputeEngineItf>();
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::Encdec::Encdec(uint64_t a1, std::string *a2, char a3, char a4)
{
  v7 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v10, a2);
  v8 = std::__fs::filesystem::path::remove_filename[abi:ne200100](v7);
  if (SHIBYTE(v8->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, v8->__pn_.__r_.__value_.__l.__data_, v8->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = *&v8->__pn_.__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v8->__pn_.__r_.__value_.__l + 2);
    *a1 = v9;
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *(a1 + 32) = 0u;
  *(a1 + 24) = a3;
  *(a1 + 256) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 25) = a4;
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
  *(a1 + 240) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = a1 + 376;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 400;
  *(a1 + 416) = a1 + 424;
  *(a1 + 424) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = a1 + 448;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = a1 + 472;
  *(a1 + 488) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = a1 + 504;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 520) = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v10, "UNK");
  kaldi::quasar::BPE::BPE(a1 + 568, 1, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *(a1 + 808) = 953267991;
  *(a1 + 812) = -1;
  *(a1 + 820) = -1;
  *(a1 + 828) = -1;
  *(a1 + 836) = 0x100000004;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 1024;
  std::string::basic_string[abi:ne200100]<0>((a1 + 912), "main");
  std::string::basic_string[abi:ne200100]<0>((a1 + 936), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 960), "CPU");
  *(a1 + 1048) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  std::string::basic_string[abi:ne200100]<0>((a1 + 1056), "CPU");
  *(a1 + 1080) = xmmword_1B5B002E0;
  *(a1 + 1096) = 0x100000002;
  *(a1 + 1112) = 0u;
  *(a1 + 1104) = a1 + 1112;
  kaldi::nnet1::Nnet::Nnet((a1 + 1128));
}

void sub_1B5454478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, void **a12, void **a13, void **a14, void **a15, void **a16, void **a17, void **a18, void **a19, void **a20, void **a21, void **a22, void **a23, void **a24, void **a25, void **a26, void **a27)
{
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((v27 + 2248), 0);
  std::unique_ptr<kaldi::quasar::Shortlist>::reset[abi:ne200100]((v27 + 2240), 0);
  kaldi::CuMatrix<float>::~CuMatrix(v31);
  v38 = *(v27 + 2168);
  if (v38)
  {
    *(v27 + 2176) = v38;
    operator delete(v38);
  }

  *(v37 - 112) = v33;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v35;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  if (*(v27 + 2031) < 0)
  {
    operator delete(*v29);
  }

  if (*(v27 + 2007) < 0)
  {
    operator delete(*v30);
  }

  if (*(v27 + 1983) < 0)
  {
    operator delete(*v36);
  }

  if (*(v27 + 1959) < 0)
  {
    operator delete(*a11);
  }

  if (*(v27 + 1935) < 0)
  {
    operator delete(*a12);
  }

  if (*(v27 + 1911) < 0)
  {
    operator delete(*a13);
  }

  if (*(v27 + 1887) < 0)
  {
    operator delete(*a14);
  }

  if (*(v27 + 1863) < 0)
  {
    operator delete(*a15);
  }

  if (*(v27 + 1839) < 0)
  {
    operator delete(*a16);
  }

  if (*(v27 + 1815) < 0)
  {
    operator delete(*a17);
  }

  if (*(v27 + 1791) < 0)
  {
    operator delete(*a18);
  }

  if (*(v27 + 1767) < 0)
  {
    operator delete(*a19);
  }

  if (*(v27 + 1743) < 0)
  {
    operator delete(*a20);
  }

  *(v37 - 112) = v27 + 1696;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  if (*(v27 + 1695) < 0)
  {
    operator delete(*a21);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v27 + 1648, *a27);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v27 + 1624, **(v37 - 136));
  *(v37 - 112) = v27 + 1600;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v27 + 1576;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v27 + 1552;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  *(v37 - 112) = v28;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  kaldi::nnet1::Nnet::~Nnet((v27 + 1128));
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(v27 + 1104, *(v27 + 1112));
  if (*(v27 + 1079) < 0)
  {
    operator delete(*a22);
  }

  if (*(v27 + 1055) < 0)
  {
    operator delete(*(v27 + 1032));
  }

  if (*(v27 + 1031) < 0)
  {
    operator delete(*(v27 + 1008));
  }

  if (*(v27 + 1007) < 0)
  {
    operator delete(*a23);
  }

  if (*(v27 + 983) < 0)
  {
    operator delete(*a24);
  }

  if (*(v27 + 959) < 0)
  {
    operator delete(*a25);
  }

  if (*(v27 + 935) < 0)
  {
    operator delete(*a26);
  }

  *(v37 - 112) = v27 + 880;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  v39 = **(v37 - 128);
  if (v39)
  {
    *(v27 + 864) = v39;
    operator delete(v39);
  }

  kaldi::quasar::BPE::~BPE((v32 + 67));
  v40 = *(v27 + 560);
  *(v27 + 560) = 0;
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v41 = *(v27 + 552);
  *(v27 + 552) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(v27 + 544);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v43 = *(v27 + 528);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy((v32 + 58), *(v27 + 504));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 54), *(v27 + 472));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 51), *(v27 + 448));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 48), *(v27 + 424));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 45), *(v27 + 400));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((v32 + 42), *(v27 + 376));
  *(v37 - 112) = v32 + 39;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v37 - 112));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy((v32 + 36), *(v27 + 328));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy((v32 + 33), *(v27 + 304));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy((v32 + 30), *(v27 + 280));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(*(v37 - 120), *(v27 + 256));
  v44 = *(v27 + 240);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *(v27 + 224);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v46 = *(v27 + 208);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  v47 = *(v27 + 192);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = *(v27 + 176);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(v27 + 160);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
  }

  if (*(v27 + 151) < 0)
  {
    operator delete(*(v27 + 128));
  }

  if (*(v27 + 127) < 0)
  {
    operator delete(*(v27 + 104));
  }

  if (*(v27 + 103) < 0)
  {
    operator delete(*(v27 + 80));
  }

  if (*(v27 + 79) < 0)
  {
    operator delete(*(v27 + 56));
  }

  if (*(v27 + 55) < 0)
  {
    operator delete(*v32);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(a1);
}

void sub_1B5454954()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  JUMPOUT(0x1B545474CLL);
}

void sub_1B5454974()
{
  if (*(v0 - 89) < 0)
  {
    JUMPOUT(0x1B54548F0);
  }

  JUMPOUT(0x1B54548F4);
}

std::__fs::filesystem::path *std::__fs::filesystem::path::remove_filename[abi:ne200100](std::__fs::filesystem::path *a1)
{
  v2 = std::__fs::filesystem::path::__filename(a1);
  if (v2.__size_)
  {
    v3 = a1;
    if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = a1->__pn_.__r_.__value_.__r.__words[0];
    }

    std::string::erase(&a1->__pn_, &v2.__data_[-v3], 0xFFFFFFFFFFFFFFFFLL);
  }

  return a1;
}

uint64_t kaldi::quasar::Encdec::ModelCompilationSpec::Compile(kaldi::quasar::Encdec::ModelCompilationSpec *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 2) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Pre-compilation only supported for E5 models!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(this + 5), *(this + 6));
  }

  else
  {
    v6 = *(this + 40);
  }

  memset(v4, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v4, &v6, &v7, 1uLL);
  v2 = kaldi::quasar::onDeviceCompile(this + 16, v4, this + 8);
  v5 = v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_1B5454AF0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::ModelCompilationSpec::IsCompileRequired(kaldi::quasar::Encdec::ModelCompilationSpec *this)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(this + 2) != 1)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v32, "");
  v2 = *(this + 8);
  for (i = *(this + 9); v2 != i; v2 += 3)
  {
    if (*(v2 + 23) >= 0)
    {
      v4 = *(v2 + 23);
    }

    else
    {
      v4 = v2[1];
    }

    std::string::basic_string[abi:ne200100](&__p, v4 + 1);
    if (v31 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v4)
    {
      if (*(v2 + 23) >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      memmove(p_p, v6, v4);
    }

    *&p_p[v4] = 32;
    if (v31 >= 0)
    {
      v7 = &__p;
    }

    else
    {
      v7 = __p;
    }

    if (v31 >= 0)
    {
      v8 = HIBYTE(v31);
    }

    else
    {
      v8 = v30;
    }

    std::string::append(&v32, v7, v8);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *(this + 5), *(this + 6));
  }

  else
  {
    v34 = *(this + 40);
  }

  __p = 0;
  v30 = 0;
  v31 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&__p, &v34, &v35, 1uLL);
  v10 = kaldi::quasar::checkCompiledCacheWithProgramLibrary(this + 16, &__p, this + 8);
  v33 = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Checking if need compile: ", 26);
    v12 = *(this + 39);
    if (v12 >= 0)
    {
      v13 = this + 16;
    }

    else
    {
      v13 = *(this + 2);
    }

    if (v12 >= 0)
    {
      v14 = *(this + 39);
    }

    else
    {
      v14 = *(this + 3);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
    v17 = *(this + 63);
    if (v17 >= 0)
    {
      v18 = this + 40;
    }

    else
    {
      v18 = *(this + 5);
    }

    if (v17 >= 0)
    {
      v19 = *(this + 63);
    }

    else
    {
      v19 = *(this + 6);
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v32;
    }

    else
    {
      v22 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v32.__r_.__value_.__l.__size_;
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, size);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ": ", 2);
    if (v10)
    {
      v26 = "NO!";
    }

    else
    {
      v26 = "YES!";
    }

    if (v10)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  v9 = v10 ^ 1u;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_1B5454E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 - 121) < 0)
  {
    operator delete(*(v15 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::Encdec::ModelCompilationSpec::PurgeCompiledModel(kaldi::quasar::Encdec::ModelCompilationSpec *this)
{
  if (*(this + 2) == 1)
  {
    return kaldi::quasar::purgeE5BundlesForMil(this + 16);
  }

  else
  {
    return 1;
  }
}

BOOL kaldi::quasar::Encdec::ModelCompilationSpec::Compare(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "Mismatched comparison!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  v4 = v3;
  v5 = *(v3 + 39);
  v6 = *(a1 + 39);
  if (v6 >= 0)
  {
    v7 = *(a1 + 39);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  if (v6 >= 0)
  {
    v8 = (a1 + 16);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v5 >= 0)
  {
    v9 = *(v3 + 39);
  }

  else
  {
    v9 = v3[3];
  }

  if (v5 >= 0)
  {
    v10 = v3 + 2;
  }

  else
  {
    v10 = v3[2];
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    return 0;
  }

  v18 = *(v4 + 63);
  v19 = *(a1 + 63);
  if (v19 >= 0)
  {
    v20 = *(a1 + 63);
  }

  else
  {
    v20 = *(a1 + 48);
  }

  if (v19 >= 0)
  {
    v21 = (a1 + 40);
  }

  else
  {
    v21 = *(a1 + 40);
  }

  if (v18 >= 0)
  {
    v22 = *(v4 + 63);
  }

  else
  {
    v22 = v4[6];
  }

  if (v18 >= 0)
  {
    v23 = v4 + 5;
  }

  else
  {
    v23 = v4[5];
  }

  if (v22 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v22;
  }

  v25 = memcmp(v21, v23, v24);
  v26 = v20 < v22;
  if (v25)
  {
    v26 = v25 < 0;
  }

  if (v26)
  {
    return 1;
  }

  v27 = memcmp(v23, v21, v24);
  v28 = v22 < v20;
  if (v27)
  {
    v28 = v27 < 0;
  }

  if (v28)
  {
    return 0;
  }

  v29 = *(a1 + 64);
  v30 = v4[8];
  v31 = (v4[9] - v30) >> 3;
  v32 = 0xAAAAAAAAAAAAAAABLL * v31;
  v44 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - v29) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * v31 >= v44)
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - v29) >> 3);
  }

  else
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * v31;
  }

  if (!v33)
  {
    return v44 < v32;
  }

  while (1)
  {
    v34 = *(v30 + 23);
    v35 = *(v29 + 23);
    v36 = v35 >= 0 ? *(v29 + 23) : *(v29 + 8);
    v37 = v35 >= 0 ? v29 : *v29;
    v38 = v34 >= 0 ? *(v30 + 23) : *(v30 + 8);
    v39 = v34 >= 0 ? v30 : *v30;
    v40 = v38 >= v36 ? v36 : v38;
    v41 = memcmp(v37, v39, v40);
    v14 = v41 ? v41 < 0 : v36 < v38;
    if (v14)
    {
      break;
    }

    v42 = memcmp(v39, v37, v40);
    v43 = v38 < v36;
    if (v42)
    {
      v43 = v42 < 0;
    }

    if (v43)
    {
      break;
    }

    v30 += 24;
    v29 += 24;
    if (!--v33)
    {
      return v44 < v32;
    }
  }

  return v14;
}

void kaldi::quasar::Encdec::CreateEspressoModel(uint64_t a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, std::vector<std::wstring> *a6@<X5>, char a7@<W6>, __int128 *a8@<X8>)
{
  v88 = *MEMORY[0x1E69E9840];
  v84 = 0;
  v85 = a3;
  v82 = 0;
  v83 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  kaldi::SplitStringToVector(a2, ",", 1, &v82);
  v14 = v82;
  v13 = v83;
  while (v14 != v13)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v69, a1);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v78, v14);
    std::__fs::filesystem::operator/[abi:ne200100](&v78, &v69, &__p);
    v15 = v80;
    if (v80 >= v81)
    {
      v17 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v79, &__p);
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v80, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v16 = *&__p.__r_.__value_.__l.__data_;
        v80->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        *&v15->__r_.__value_.__l.__data_ = v16;
      }

      v17 = v15 + 1;
    }

    v80 = v17;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    ++v14;
  }

  if (v80 - v79 == 24)
  {
    if (SHIBYTE(v79->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v78, v79->__r_.__value_.__l.__data_, v79->__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = *&v79->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v18;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v78, "");
  }

  kaldi::JoinVectorToString<std::string>(&v79, ",");
  *a8 = 0;
  *(a8 + 1) = 0;
  v19 = kaldi::quasar::Encdec::ComputeEngineFileMap(a1);
  __p.__r_.__value_.__r.__words[0] = &v75;
  v20 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v19, &v75);
  v21 = *(v20 + 64);
  if (!v21 || (v22 = std::__shared_weak_count::lock(v21)) == 0)
  {
    *(a8 + 1) = 0;
    *a8 = 0;
LABEL_33:
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Loading: ", 9);
      if ((v77 & 0x80u) == 0)
      {
        v33 = &v75;
      }

      else
      {
        v33 = v75;
      }

      if ((v77 & 0x80u) == 0)
      {
        v34 = v77;
      }

      else
      {
        v34 = v76;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    if (v85 != 1)
    {
      kaldi::quasar::ESNetworkConfig::ESNetworkConfig(&v69, &v75);
      std::string::operator=(&v71, a4);
      operator new();
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    kaldi::quasar::EspressoV2NetworkConfig::EspressoV2NetworkConfig(&v69, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
    }

    else
    {
      __p = *a4;
    }

    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(v72, &__p, v87, 1uLL);
    v67 = a6;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v36 = *a5;
    v35 = a5[1];
    if (*a5 != v35)
    {
      do
      {
        begin = v67->__begin_;
        end = v67->__end_;
        if (v67->__begin_ == end)
        {
          if (*(a1 + 935) >= 0)
          {
            v47 = *(a1 + 935);
          }

          else
          {
            v47 = *(a1 + 920);
          }

          std::string::basic_string[abi:ne200100](&v68, v47 + 1);
          if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v68;
          }

          else
          {
            v48 = v68.__r_.__value_.__r.__words[0];
          }

          if (v47)
          {
            if (*(a1 + 935) >= 0)
            {
              v49 = (a1 + 912);
            }

            else
            {
              v49 = *(a1 + 912);
            }

            memmove(v48, v49, v47);
          }

          *(&v48->__r_.__value_.__l.__data_ + v47) = 95;
          v50 = *(v36 + 23);
          if (v50 >= 0)
          {
            v51 = v36;
          }

          else
          {
            v51 = *v36;
          }

          if (v50 >= 0)
          {
            v52 = *(v36 + 23);
          }

          else
          {
            v52 = *(v36 + 8);
          }

          v53 = std::string::append(&v68, v51, v52);
          v54 = *&v53->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v54;
          v53->__r_.__value_.__l.__size_ = 0;
          v53->__r_.__value_.__r.__words[2] = 0;
          v53->__r_.__value_.__r.__words[0] = 0;
          std::vector<std::string>::push_back[abi:ne200100](v73, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          do
          {
            if ((begin->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(begin->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = begin->__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&v68, size + 1);
            if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v40 = &v68;
            }

            else
            {
              v40 = v68.__r_.__value_.__r.__words[0];
            }

            if (size)
            {
              if ((begin->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v41 = begin;
              }

              else
              {
                v41 = begin->__r_.__value_.__r.__words[0];
              }

              memmove(v40, v41, size);
            }

            *(&v40->__r_.__value_.__l.__data_ + size) = 95;
            v42 = *(v36 + 23);
            if (v42 >= 0)
            {
              v43 = v36;
            }

            else
            {
              v43 = *v36;
            }

            if (v42 >= 0)
            {
              v44 = *(v36 + 23);
            }

            else
            {
              v44 = *(v36 + 8);
            }

            v45 = std::string::append(&v68, v43, v44);
            v46 = *&v45->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v46;
            v45->__r_.__value_.__l.__size_ = 0;
            v45->__r_.__value_.__r.__words[2] = 0;
            v45->__r_.__value_.__r.__words[0] = 0;
            std::vector<std::string>::push_back[abi:ne200100](v73, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v68.__r_.__value_.__l.__data_);
            }

            ++begin;
          }

          while (begin != end);
        }

        v36 += 24;
      }

      while (v36 != v35);
    }

    if (a7)
    {
      v55 = v73[0];
      v56 = v73[1];
LABEL_101:
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v74, v55, v56, 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 3));
      goto LABEL_102;
    }

    v55 = v67->__begin_;
    v56 = v67->__end_;
    if (v67->__begin_ != v56)
    {
      if (&v74 == v67)
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    v62 = (a1 + 912);
    v63 = *(a1 + 935);
    if (v63 < 0)
    {
      v64 = *(a1 + 920);
      if (v64 == 4)
      {
        v65 = *v62;
        if (**v62 == 1852399981)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v65 = *v62;
      }

      std::string::__init_copy_ctor_external(&__p, v65, v64);
    }

    else
    {
      if (v63 == 4 && *v62 == 1852399981)
      {
        goto LABEL_102;
      }

      *&__p.__r_.__value_.__l.__data_ = *v62;
      __p.__r_.__value_.__r.__words[2] = *(a1 + 928);
    }

    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v74, &__p, v87, 1uLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_102:
    memset(&v68, 0, sizeof(v68));
    if (v79 != v80)
    {
      std::string::operator=(v70, v79);
      operator new();
    }

    operator new();
  }

  v23 = *(v20 + 56);
  *a8 = v23;
  *(a8 + 1) = v22;
  if (!v23)
  {
    goto LABEL_33;
  }

  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 1);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ModelSharing: cache id ", 23);
    v25 = kaldi::quasar::Encdec::ComputeEngineFileMap(a1);
    v26 = MEMORY[0x1B8C84BB0](v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", reusing already created compute engine for ", 45);
    if ((v77 & 0x80u) == 0)
    {
      v28 = &v75;
    }

    else
    {
      v28 = v75;
    }

    if ((v77 & 0x80u) == 0)
    {
      v29 = v77;
    }

    else
    {
      v29 = v76;
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", id: ", 6);
    MEMORY[0x1B8C84BB0](v31, v23);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100]((a1 + 344), a8);
  }

  if (*(a1 + 25) == 1)
  {
    v57 = kaldi::quasar::Encdec::ComputeEngineFileMap(a1);
    __p.__r_.__value_.__r.__words[0] = &v75;
    v58 = std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v57, &v75);
    v60 = *a8;
    v59 = *(a8 + 1);
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 16), 1uLL, memory_order_relaxed);
    }

    v61 = *(v58 + 64);
    *(v58 + 56) = v60;
    *(v58 + 64) = v59;
    if (v61)
    {
      std::__shared_weak_count::__release_weak(v61);
    }
  }

  if (v77 < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v79;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = &v82;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B5455CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  kaldi::quasar::EspressoV2NetworkConfig::~EspressoV2NetworkConfig(&a22);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  a22 = &a61;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  a22 = &a64;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Encdec::RegisterEspressoModelForCompilation(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4, uint64_t *a5, std::string **a6, int a7)
{
  v44.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  v42 = a3;
  if (a3 != 1)
  {
    return;
  }

  memset(&v41, 0, sizeof(v41));
  if (a7)
  {
    v9 = *a5;
    v36 = a5[1];
    if (*a5 != v36)
    {
      v35 = (a1 + 912);
      do
      {
        v10 = *a6;
        v11 = a6[1];
        if (*a6 == v11)
        {
          if (*(a1 + 935) >= 0)
          {
            v20 = *(a1 + 935);
          }

          else
          {
            v20 = *(a1 + 920);
          }

          std::string::basic_string[abi:ne200100](&pn, v20 + 1);
          if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &pn;
          }

          else
          {
            v21 = pn.__r_.__value_.__r.__words[0];
          }

          if (v20)
          {
            if (*(a1 + 935) >= 0)
            {
              v22 = v35;
            }

            else
            {
              v22 = *(a1 + 912);
            }

            memmove(v21, v22, v20);
          }

          *(&v21->__r_.__value_.__l.__data_ + v20) = 95;
          v23 = *(v9 + 23);
          if (v23 >= 0)
          {
            v24 = v9;
          }

          else
          {
            v24 = *v9;
          }

          if (v23 >= 0)
          {
            v25 = *(v9 + 23);
          }

          else
          {
            v25 = *(v9 + 8);
          }

          v26 = std::string::append(&pn, v24, v25);
          v27 = *&v26->__r_.__value_.__l.__data_;
          __str.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
          *&__str.__r_.__value_.__l.__data_ = v27;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v26->__r_.__value_.__r.__words[0] = 0;
          std::vector<std::string>::push_back[abi:ne200100](&v41, &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(pn.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          do
          {
            if ((v10->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v10->__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v10->__r_.__value_.__l.__size_;
            }

            std::string::basic_string[abi:ne200100](&pn, size + 1);
            if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &pn;
            }

            else
            {
              v13 = pn.__r_.__value_.__r.__words[0];
            }

            if (size)
            {
              if ((v10->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = v10;
              }

              else
              {
                v14 = v10->__r_.__value_.__r.__words[0];
              }

              memmove(v13, v14, size);
            }

            *(&v13->__r_.__value_.__l.__data_ + size) = 95;
            v15 = *(v9 + 23);
            if (v15 >= 0)
            {
              v16 = v9;
            }

            else
            {
              v16 = *v9;
            }

            if (v15 >= 0)
            {
              v17 = *(v9 + 23);
            }

            else
            {
              v17 = *(v9 + 8);
            }

            v18 = std::string::append(&pn, v16, v17);
            v19 = *&v18->__r_.__value_.__l.__data_;
            __str.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
            *&__str.__r_.__value_.__l.__data_ = v19;
            v18->__r_.__value_.__l.__size_ = 0;
            v18->__r_.__value_.__r.__words[2] = 0;
            v18->__r_.__value_.__r.__words[0] = 0;
            std::vector<std::string>::push_back[abi:ne200100](&v41, &__str);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(pn.__r_.__value_.__l.__data_);
            }

            ++v10;
          }

          while (v10 != v11);
        }

        v9 += 24;
      }

      while (v9 != v36);
    }

    goto LABEL_66;
  }

  v28 = a6[1];
  if (*a6 != v28)
  {
    if (&v41 != a6)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v41, *a6, v28, 0xAAAAAAAAAAAAAAABLL * ((v28 - *a6) >> 3));
    }

    goto LABEL_66;
  }

  v29 = (a1 + 912);
  v30 = *(a1 + 935);
  if (v30 < 0)
  {
    v31 = *(a1 + 920);
    if (v31 == 4)
    {
      v32 = *v29;
      if (**v29 == 1852399981)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v32 = *v29;
    }

    std::string::__init_copy_ctor_external(&__str, v32, v31);
LABEL_64:
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v41, &__str, &v44, 1uLL);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_66;
  }

  if (v30 != 4 || *v29 != 1852399981)
  {
    *&__str.__r_.__value_.__l.__data_ = *v29;
    __str.__r_.__value_.__r.__words[2] = *(a1 + 928);
    goto LABEL_64;
  }

LABEL_66:
  kaldi::SplitStringToVector(a2, ",", &__str);
  v33 = __str.__r_.__value_.__r.__words[0];
  if (__str.__r_.__value_.__r.__words[0] != __str.__r_.__value_.__l.__size_)
  {
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v38, a1);
    std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v37.__pn_, v33);
    std::__fs::filesystem::operator/[abi:ne200100](&v37, &v38, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      pn = __p.__pn_;
    }

    if (SHIBYTE(v37.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    std::allocate_shared[abi:ne200100]<kaldi::quasar::Encdec::ModelCompilationSpec,std::allocator<kaldi::quasar::Encdec::ModelCompilationSpec>,kaldi::quasar::Encdec::InferenceEngine const&,std::string &,std::string const&,std::vector<std::string> &,0>();
  }

  pn.__r_.__value_.__r.__words[0] = &__str;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&pn);
  __str.__r_.__value_.__r.__words[0] = &v41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
}