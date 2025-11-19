void sub_1B58BBA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __p = (v14 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v14 - 96);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::BPE::IsIntraWord(uint64_t a1, uint64_t **a2)
{
  v2 = *(a2 + 23);
  v3 = a2[1];
  if ((v2 & 0x80u) == 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = *(a1 + 159);
  if (v5 >= 0)
  {
    v6 = *(a1 + 159);
  }

  else
  {
    v6 = *(a1 + 144);
  }

  v9 = v4 >= v6;
  v7 = v4 - v6;
  if (!v9)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if (v6 == -1 || v3 < v7)
    {
LABEL_36:
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

    a2 = *a2;
  }

  else
  {
    v9 = v6 != -1 && v2 >= v7;
    if (!v9)
    {
      goto LABEL_36;
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
  }

  if (v5 >= 0)
  {
    v13 = (a1 + 136);
  }

  else
  {
    v13 = *(a1 + 136);
  }

  v14 = memcmp(a2 + v7, v13, v11);
  return v11 == v6 && v14 == 0;
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SuppressedIds(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  kaldi::quasar::MultiLangDecorator::GetTags(a1 + 120, a2, a3, &v23);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::SplitStringToVector(&v23, " ", 1, &v20);
  a5[2] = 0;
  a5[1] = 0;
  *a5 = a5 + 1;
  v8 = v20;
  v9 = v21;
  while (v8 != v9)
  {
    v10 = kaldi::quasar::TorchEncoderDecoder::OutputSymbols(*(a1 + 136));
    LODWORD(v19[0]) = (*(*v10 + 96))(v10, v8) - 1;
    std::__tree<int>::__emplace_unique_key_args<int,int const&>(a5, v19);
    v8 += 24;
  }

  v12 = *a4;
  v11 = a4[1];
  while (v12 != v11)
  {
    v13 = kaldi::quasar::TorchEncoderDecoder::OutputSymbols(*(a1 + 136));
    v14 = (*(*v13 + 96))(v13, v12);
    if (v14 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Token to suppress not found in symbol table: ", 45);
      v16 = *(v12 + 23);
      if (v16 >= 0)
      {
        v17 = v12;
      }

      else
      {
        v17 = *v12;
      }

      if (v16 >= 0)
      {
        v18 = *(v12 + 23);
      }

      else
      {
        v18 = *(v12 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
    }

    LODWORD(v19[0]) = v14 - 1;
    std::__tree<int>::__emplace_unique_key_args<int,int const&>(a5, v19);
    v12 += 24;
  }

  v19[0] = &v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AddInitialHypToCurrent<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 200);
  if (v3)
  {
    (**v3)(v3);
  }

  if (*(a2 + 184) == 2)
  {
    (*(**(a2 + 208) + 24))(*(a2 + 208));
  }

  operator new();
}

uint64_t std::vector<kaldi::Matrix<float>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::Matrix<float>>::__emplace_back_slow_path<kaldi::Matrix<float>>(a1, a2);
  }

  else
  {
    kaldi::Matrix<float>::Matrix(a1[1], a2);
    result = v3 + 40;
    a1[1] = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement const&>(a1, a2);
  }

  else
  {
    std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement const&>(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement const&>(a1, a2);
  }

  else
  {
    std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement const&>(a1, a2);
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v6 = *(a2 + 32);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 32) = v6;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  *v7 = *a2;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v8 = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 32) = v8;
  *&v17 = v17 + 48;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(&v15);
  return v14;
}

void sub_1B58BC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v7 = *(v6 + 32);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 32) = v7;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        *(v5 + 16) = v8;
        operator delete(v8);
      }

      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 32);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 32) = v8;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(&v15);
  return v14;
}

void sub_1B58BC48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v11 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(a1, a3, a4);
    v12 = v11;
    if ((a2 - 48) == v11)
    {
      *v11 = v8;
      v17 = v11 + 1;
      v16 = v11[1];
      if (v16)
      {
        v12[2] = v16;
        operator delete(v16);
        *v17 = 0;
        v12[2] = 0;
        v12[3] = 0;
      }

      v12[1] = v7;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v18;
      *(v12 + 10) = v19;
    }

    else
    {
      *v11 = *(a2 - 48);
      std::vector<int>::__move_assign((v11 + 1), (a2 - 40));
      v13 = *(a2 - 16);
      *(v12 + 10) = *(a2 - 8);
      v12[4] = v13;
      v14 = (v12 + 6);
      *(a2 - 48) = v8;
      v15 = *(a2 - 40);
      if (v15)
      {
        *(a2 - 32) = v15;
        operator delete(v15);
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *(a2 - 24) = 0;
      }

      *(a2 - 40) = v7;
      *(a2 - 32) = v10;
      *(a2 - 24) = v9;
      *(a2 - 16) = v18;
      *(a2 - 8) = v19;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(a1, v14, a3, 0xAAAAAAAAAAAAAAABLL * ((v14 - a1) >> 4));
    }
  }
}

void sub_1B58BC5F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *,false>(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v60 = a2;
  v61 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v52 = *(v7 - 12);
        v60 = v7 - 6;
        if (v52 > *v8)
        {
          v53 = &v61;
          v54 = &v60;
          goto LABEL_94;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v60 = v7 - 6;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,0>(v8, v8 + 6, v8 + 12, v7 - 12);
      return;
    }

    if (v11 == 5)
    {
      v60 = v7 - 6;
      v65 = (v8 + 6);
      v66 = v8;
      v63 = (v8 + 18);
      v64 = (v8 + 12);
      v62 = v7 - 6;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,0>(v8, v8 + 6, v8 + 12, v8 + 36);
      if (*(v7 - 12) > *(v8 + 36))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v63, &v62);
        if (*v63 > *(v8 + 24))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v64, &v63);
          if (*v64 > *(v8 + 12))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
            v55 = *v65;
            v56 = *v8;
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 1151)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v8, v7);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = &v8[6 * (v11 >> 1)];
    v14 = (v7 - 6);
    if (v10 < 0x1801)
    {
      v65 = v8;
      v66 = v13;
      v64 = (v7 - 6);
      v19 = *v8;
      v20 = *v14;
      if (*v8 <= *v13)
      {
        if (v20 > v19)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
          if (*v65 > *v66)
          {
            v21 = &v66;
            v22 = &v65;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v21 = &v66;
        if (v20 > v19)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 > *v65)
        {
          v21 = &v65;
LABEL_22:
          v22 = &v64;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v21, v22);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }

    v65 = v13;
    v66 = v8;
    v64 = (v7 - 6);
    v15 = *v13;
    v16 = *v14;
    if (*v13 > *v8)
    {
      v17 = &v66;
      if (v16 <= v15)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_27;
        }

        v17 = &v65;
      }

      v18 = &v64;
      goto LABEL_26;
    }

    if (v16 > v15)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 > *v66)
      {
        v17 = &v66;
        v18 = &v65;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v17, v18);
      }
    }

LABEL_27:
    v23 = &v8[6 * v12];
    v25 = *(v23 - 12);
    v24 = v23 - 6;
    v26 = v25;
    v27 = *(v8 + 12);
    v65 = v24;
    v66 = (v8 + 6);
    v28 = *(v7 - 24);
    v64 = (v7 - 12);
    if (v25 > v27)
    {
      v29 = &v66;
      if (v28 <= v26)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_42;
        }

        v29 = &v65;
      }

      v30 = &v64;
      goto LABEL_41;
    }

    if (v28 > v26)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 > *v66)
      {
        v29 = &v66;
        v30 = &v65;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v29, v30);
      }
    }

LABEL_42:
    v31 = &v8[6 * v12];
    v33 = *(v31 + 12);
    v32 = v31 + 6;
    v34 = v33;
    v35 = *(v8 + 24);
    v65 = v32;
    v66 = (v8 + 12);
    v36 = *(v7 - 36);
    v64 = (v7 - 18);
    if (v33 > v35)
    {
      v37 = &v66;
      if (v36 <= v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_51;
        }

        v37 = &v65;
      }

      v38 = &v64;
      goto LABEL_50;
    }

    if (v36 > v34)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 > *v66)
      {
        v37 = &v66;
        v38 = &v65;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v37, v38);
      }
    }

LABEL_51:
    v65 = v13;
    v66 = v24;
    v64 = v32;
    v39 = *v13;
    v40 = *v32;
    if (*v13 <= *v24)
    {
      if (v40 <= v39)
      {
        goto LABEL_60;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
      if (*v65 <= *v66)
      {
        goto LABEL_60;
      }

      v41 = &v66;
      v42 = &v65;
    }

    else
    {
      v41 = &v66;
      if (v40 <= v39)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
        if (*v64 <= *v65)
        {
          goto LABEL_60;
        }

        v41 = &v65;
      }

      v42 = &v64;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v41, v42);
LABEL_60:
    v43 = *v8;
    v59 = *(v8 + 1);
    v8[1] = 0;
    v45 = v8[3];
    v44 = v8[4];
    v8[2] = 0;
    v8[3] = 0;
    v66 = v44;
    v67 = *(v8 + 10);
    *v8 = *v13;
    std::vector<int>::__move_assign((v8 + 1), (v13 + 1));
    v46 = v13[4];
    *(v8 + 10) = *(v13 + 10);
    v8[4] = v46;
    *v13 = v43;
    v47 = v13[1];
    if (v47)
    {
      v13[2] = v47;
      operator delete(v47);
    }

    *(v13 + 1) = v59;
    v13[3] = v45;
    v48 = v66;
    *(v13 + 10) = v67;
    v13[4] = v48;
    v8 = v61;
    if (a5)
    {
LABEL_37:
      v7 = v60;
      goto LABEL_64;
    }

LABEL_63:
    v7 = v60;
    if (*(v8 - 12) <= *v8)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &>(v8, v60);
      goto LABEL_73;
    }

LABEL_64:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &>(v8, v7);
    if ((v50 & 1) == 0)
    {
      goto LABEL_71;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v8, v49);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v49 + 6, v7))
    {
      if (v51)
      {
        return;
      }

      v60 = v49;
      v7 = v49;
    }

    else
    {
      if (!v51)
      {
LABEL_71:
        std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *,false>(v8, v49, a3, -i, a5 & 1);
        v8 = v49 + 6;
LABEL_73:
        a5 = 0;
        v61 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v61 = v49 + 6;
      v8 = v49 + 6;
    }
  }

  v57 = *(v8 + 12);
  v65 = (v8 + 6);
  v66 = v8;
  v58 = *(v7 - 12);
  v64 = (v7 - 6);
  if (v57 > *v8)
  {
    v53 = &v66;
    if (v58 <= v57)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v66, &v65);
      if (*v64 <= *v65)
      {
        return;
      }

      v53 = &v65;
    }

    v54 = &v64;
    goto LABEL_94;
  }

  if (v58 > v57)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v65, &v64);
    v55 = *v65;
    v56 = *v66;
LABEL_92:
    if (v55 > v56)
    {
      v53 = &v66;
      v54 = &v65;
LABEL_94:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(v53, v54);
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *>(float *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[12 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v7, a4, v9, v12);
        v12 -= 48;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*v13 > *v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *&>(&v17, &v18);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(v18, a4, v9, v18);
          v13 = v17;
        }

        v13 += 6;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 49)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *>(v7, v6, a4, v14);
        v6 -= 6;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::MinHeapCompare,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::HeapElement *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v11 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>(a1, a3, a4);
    v12 = v11;
    if (v11 == (a2 - 48))
    {
      *v11 = v8;
      v17 = v11 + 1;
      v16 = v11[1];
      if (v16)
      {
        v12[2] = v16;
        operator delete(v16);
        *v17 = 0;
        v12[2] = 0;
        v12[3] = 0;
      }

      v12[1] = v7;
      v12[2] = v10;
      v12[3] = v9;
      v12[4] = v18;
      *(v12 + 10) = v19;
    }

    else
    {
      *v11 = *(a2 - 48);
      std::vector<int>::__move_assign((v11 + 1), (a2 - 40));
      v13 = *(a2 - 16);
      *(v12 + 10) = *(a2 - 8);
      v12[4] = v13;
      v14 = (v12 + 6);
      *(a2 - 48) = v8;
      v15 = *(a2 - 40);
      if (v15)
      {
        *(a2 - 32) = v15;
        operator delete(v15);
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *(a2 - 24) = 0;
      }

      *(a2 - 40) = v7;
      *(a2 - 32) = v10;
      *(a2 - 24) = v9;
      *(a2 - 16) = v18;
      *(a2 - 8) = v19;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::MinHeapCompare &,std::__wrap_iter<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::HeapElement *>>(a1, v14, a3, 0xAAAAAAAAAAAAAAABLL * ((v14 - a1) >> 4));
    }
  }
}

void sub_1B58BCF28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>>::__construct_one_at_end[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  result = *(a2 + 40);
  *(v4 + 40) = result;
  *(a1 + 8) = v4 + 56;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>>::__emplace_back_slow_path<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>>(a1, v6);
  }

  v7 = 56 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(v7 + 40) = *(a2 + 40);
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement> &>::~__split_buffer(&v14);
  return v13;
}

void sub_1B58BD104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement,std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = v7;
        operator delete(v7);
      }

      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *,false>(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v57 = a2;
  v58 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v49 = *(v7 - 14);
        v57 = (v7 - 56);
        if (v49 < *v8)
        {
          v50 = &v58;
          v51 = &v57;
          goto LABEL_94;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v57 = (v7 - 56);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,0>(v8, (v8 + 56), v8 + 7, v7 - 14);
      return;
    }

    if (v11 == 5)
    {
      v57 = (v7 - 56);
      *&v63 = v8;
      v61 = (v8 + 7);
      *&v62 = v8 + 56;
      v59 = v7 - 56;
      v60 = v8 + 42;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,0>(v8, (v8 + 56), v8 + 7, v8 + 42);
      if (*(v7 - 14) < *(v8 + 42))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v60, &v59);
        if (*v60 < *(v8 + 28))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v61, &v60);
          if (*v61 < *(v8 + 14))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
            v52 = *v62;
            v53 = *v8;
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 1343)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v8, v7);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = v8 + 56 * (v11 >> 1);
    v14 = v7 - 14;
    if (v10 < 0x1C01)
    {
      *&v63 = v13;
      v61 = v7 - 14;
      *&v62 = v8;
      v19 = *v8;
      v20 = *v14;
      if (*v8 >= *v13)
      {
        if (v20 < v19)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
          if (*v62 < *v63)
          {
            v21 = &v63;
            v22 = &v62;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v21 = &v63;
        if (v20 < v19)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 < *v62)
        {
          v21 = &v62;
LABEL_22:
          v22 = &v61;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v21, v22);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }

    *&v63 = v8;
    v61 = v7 - 14;
    *&v62 = v13;
    v15 = *v13;
    v16 = *v14;
    if (*v13 < *v8)
    {
      v17 = &v63;
      if (v16 >= v15)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_27;
        }

        v17 = &v62;
      }

      v18 = &v61;
      goto LABEL_26;
    }

    if (v16 < v15)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 < *v63)
      {
        v17 = &v63;
        v18 = &v62;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v17, v18);
      }
    }

LABEL_27:
    v23 = v8 + 14 * v12;
    v25 = *(v23 - 14);
    v24 = v23 - 14;
    v26 = v25;
    v27 = *(v8 + 14);
    *&v63 = v8 + 56;
    *&v62 = v24;
    v28 = *(v7 - 28);
    v61 = (v7 - 7);
    if (v25 < v27)
    {
      v29 = &v63;
      if (v28 >= v26)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_42;
        }

        v29 = &v62;
      }

      v30 = &v61;
      goto LABEL_41;
    }

    if (v28 < v26)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 < *v63)
      {
        v29 = &v63;
        v30 = &v62;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v29, v30);
      }
    }

LABEL_42:
    v31 = v8 + 14 * v12;
    v33 = v31[14];
    v32 = (v31 + 14);
    v34 = v33;
    v35 = *(v8 + 28);
    *&v63 = v8 + 7;
    *&v62 = v32;
    v36 = *(v7 - 42);
    v61 = v7 - 42;
    if (v33 < v35)
    {
      v37 = &v63;
      if (v36 >= v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_51;
        }

        v37 = &v62;
      }

      v38 = &v61;
      goto LABEL_50;
    }

    if (v36 < v34)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 < *v63)
      {
        v37 = &v63;
        v38 = &v62;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v37, v38);
      }
    }

LABEL_51:
    *&v63 = v24;
    v61 = v32;
    *&v62 = v13;
    v39 = *v13;
    v40 = *v32;
    if (*v13 >= *v24)
    {
      if (v40 >= v39)
      {
        goto LABEL_60;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
      if (*v62 >= *v63)
      {
        goto LABEL_60;
      }

      v41 = &v63;
      v42 = &v62;
    }

    else
    {
      v41 = &v63;
      if (v40 >= v39)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
        if (*v61 >= *v62)
        {
          goto LABEL_60;
        }

        v41 = &v62;
      }

      v42 = &v61;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v41, v42);
LABEL_60:
    v43 = *v8;
    v56 = v8[1];
    v44 = *(v8 + 4);
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 4) = 0;
    v62 = *(v8 + 40);
    v63 = v43;
    *v8 = *v13;
    std::vector<int>::__move_assign((v8 + 1), v13 + 1);
    *(v8 + 40) = *(v13 + 40);
    *v13 = v63;
    v45 = *(v13 + 2);
    if (v45)
    {
      *(v13 + 3) = v45;
      operator delete(v45);
    }

    *(v13 + 1) = v56;
    *(v13 + 4) = v44;
    *(v13 + 40) = v62;
    v8 = v58;
    if (a5)
    {
LABEL_37:
      v7 = v57;
      goto LABEL_64;
    }

LABEL_63:
    v7 = v57;
    if (*(v8 - 14) >= *v8)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,std::__less<void,void> &>(v8, v57);
      goto LABEL_73;
    }

LABEL_64:
    v46 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *,std::__less<void,void> &>(v8, v7);
    if ((v47 & 1) == 0)
    {
      goto LABEL_71;
    }

    v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v8, v46);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>((v46 + 56), v7))
    {
      if (v48)
      {
        return;
      }

      v57 = v46;
      v7 = v46;
    }

    else
    {
      if (!v48)
      {
LABEL_71:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *,false>(v8, v46, a3, -i, a5 & 1);
        v8 = (v46 + 56);
LABEL_73:
        a5 = 0;
        v58 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v58 = (v46 + 56);
      v8 = (v46 + 56);
    }
  }

  *&v63 = v8;
  v54 = *(v8 + 14);
  *&v62 = v8 + 56;
  v55 = *(v7 - 14);
  v61 = v7 - 14;
  if (v54 < *v8)
  {
    v50 = &v63;
    if (v55 >= v54)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v63, &v62);
      if (*v61 >= *v62)
      {
        return;
      }

      v50 = &v62;
    }

    v51 = &v61;
    goto LABEL_94;
  }

  if (v55 < v54)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v62, &v61);
    v52 = *v62;
    v53 = *v63;
LABEL_92:
    if (v52 < v53)
    {
      v50 = &v63;
      v51 = &v62;
LABEL_94:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(v50, v51);
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *>(float *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[14 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v7, a4, v9, v12);
        v12 -= 56;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*v13 < *v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *&>(&v17, &v18);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(v18, a4, v9, v18);
          v13 = v17;
        }

        v13 = (v13 + 56);
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 57)
    {
      v14 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *>(v7, v6, a4, v14);
        v6 = (v6 - 56);
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

__n128 std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ScoreElement *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    v18 = *(a1 + 40);
    v19 = v7;
    v11 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(a1, a3, a4);
    v12 = v11;
    v13 = (a2 - 56);
    if (v11 == a2 - 56)
    {
      *v11 = v19;
      v17 = *(v11 + 16);
      if (v17)
      {
        *(v12 + 24) = v17;
        operator delete(v17);
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(v12 + 32) = 0;
      }

      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      *(v12 + 32) = v10;
      result = v18;
      *(v12 + 40) = v18;
    }

    else
    {
      *v11 = *v13;
      std::vector<int>::__move_assign(v11 + 16, (a2 - 40));
      *(v12 + 40) = *(a2 - 16);
      v14 = v12 + 56;
      *v13 = v19;
      v15 = *(a2 - 40);
      if (v15)
      {
        *(a2 - 32) = v15;
        operator delete(v15);
        *(a2 - 40) = 0;
        *(a2 - 32) = 0;
        *(a2 - 24) = 0;
      }

      *(a2 - 40) = v8;
      *(a2 - 32) = v9;
      *(a2 - 24) = v10;
      *(a2 - 16) = v18;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ScoreElement *>(a1, v14, a3, 0x6DB6DB6DB6DB6DB7 * ((v14 - a1) >> 3));
    }
  }

  return result;
}

void sub_1B58BDB4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Hyp::Hyp(uint64_t a1, int a2, int a3, int a4, char a5, uint64_t a6, float a7, float a8)
{
  v21[0] = a4;
  *a1 = *a6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<kaldi::CuMatrix<float>>::__init_with_size[abi:ne200100]<kaldi::CuMatrix<float>*,kaldi::CuMatrix<float>*>(a1 + 8, *(a6 + 8), *(a6 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 16) - *(a6 + 8)) >> 4));
  v14 = *(a6 + 44);
  *(a1 + 56) = 0;
  *(a1 + 32) = a2;
  *(a1 + 36) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = vadd_f32(v14, __PAIR64__(LODWORD(a8), LODWORD(a7)));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::unordered_map<int,std::vector<int>>::unordered_map(a1 + 80, a6 + 80);
  std::unordered_map<int,int>::unordered_map(a1 + 120, a6 + 120);
  std::unordered_map<int,int>::unordered_map(a1 + 160, a6 + 160);
  *(a1 + 208) = 0;
  *(a1 + 200) = a5;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 232) = &unk_1F2D0EE38;
  *(a1 + 272) = 0;
  v15 = *(a6 + 56);
  if ((*(a6 + 64) - v15) >= 5)
  {
    v16 = 1;
    v17 = 4;
    do
    {
      std::vector<int>::push_back[abi:ne200100]((a1 + 56), (v15 + v17));
      ++v16;
      v15 = *(a6 + 56);
      v17 += 4;
    }

    while (v16 < (*(a6 + 64) - v15) >> 2);
  }

  std::vector<int>::push_back[abi:ne200100]((a1 + 56), v21);
  return a1;
}

void sub_1B58BDCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::CuMatrix<float>::~CuMatrix(v8);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v6 + 160);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v6 + 120);
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table((v7 + 3));
  v10 = *v7;
  if (*v7)
  {
    *(v6 + 64) = v10;
    operator delete(v10);
  }

  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Hyp::~Hyp(uint64_t a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(a1 + 232);
  v4 = (a1 + 208);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 160);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 120);
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(a1 + 80);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 8);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::StaticReadWrite<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unsigned int a5)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "entered StaticReadWrite final: ", 31);
    v10 = MEMORY[0x1B8C84BD0](v9, a5);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " with #ActiveHyps: ", 19);
    if (*(a1 + 5872) == *(a1 + 5864) || *(a1 + 5836))
    {
      v12 = (*(a1 + 5792) - *(a1 + 5784)) >> 3;
    }

    else
    {
      v12 = 1;
    }

    v13 = MEMORY[0x1B8C84C00](v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " at decoding-position: ", 23);
    MEMORY[0x1B8C84C00](v14, *(a1 + 5836));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  v15 = kaldi::MatrixBase<float>::NumRows(*(a1 + 4952));
  memset(&v56, 0, sizeof(v56));
  v16 = *a3;
  if (a3[1] == *a3)
  {
    v19.__i_ = 0;
    end = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    do
    {
      memset(&__p, 0, sizeof(__p));
      kaldi::quasar::InputHammer::FilterTags(a1 + 8, v16 + v17, &__p, a2 + 64);
      v59 = 0;
      v60 = 0;
      v61 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v58, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v58 = __p;
      }

      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::TokenizeInputString(a1, &v58, &v59);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v56, v56.__end_, v59, v60, 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 3));
      v54[0] = &v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v54);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v18;
      v16 = *a3;
      v17 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v18);
    v19.__i_ = v56.__begin_;
    end = v56.__end_;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((end - v19.__i_) >> 3) <= v15 && (a5 & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input stream did not grow. Previously processed: ", 49);
      v22 = MEMORY[0x1B8C84C00](v21, v15);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " provided: ", 11);
      MEMORY[0x1B8C84C30](v23, 0xAAAAAAAAAAAAAAABLL * ((v56.__end_ - v56.__begin_) >> 3));
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::GetCurrentBestWords(a1, a4);
    __p.__r_.__value_.__r.__words[0] = &v56;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    return 2147500000.0;
  }

  *(a1 + 5872) = *(a1 + 5864);
  if (v15 >= 1)
  {
    v24.__i_ = &v19.__i_[v15];
    std::vector<std::string>::erase(&v56, v19, v24);
    v19.__i_ = v56.__begin_;
  }

  memset(v57, 0, sizeof(v57));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v57, v19.__i_, v56.__end_, 0xAAAAAAAAAAAAAAABLL * ((v56.__end_ - v19.__i_) >> 3));
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Symbolize(a1, v57, (a1 + 5864), 0);
  __p.__r_.__value_.__r.__words[0] = v57;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p.__r_.__value_.__r.__words[0] = &v56;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a5)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = *(*(a1 + 136) + 816) - 1;
    std::vector<int>::push_back[abi:ne200100]((a1 + 5864), &__p);
  }

  if (*(a1 + 5836))
  {
    v25 = 0;
  }

  else
  {
    v25 = *(a2 + 296);
  }

  v26 = *(a2 + 300);
  if (v26 + v25 <= ((*(a1 + 5872) - *(a1 + 5864)) >> 2) || a5)
  {
    v51 = *(MEMORY[0x1E69E54D8] + 64);
    v52 = *MEMORY[0x1E69E54D8];
    v50 = *(MEMORY[0x1E69E54D8] + 72);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    if (v26 + v25 >= 1)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v33 = *(a1 + 5864);
        if (v32 >= ((*(a1 + 5872) - v33) >> 2))
        {
          goto LABEL_50;
        }

        std::vector<int>::push_back[abi:ne200100](&v59, &v33[v31]);
        ++v32;
        v31 += 4;
      }

      while (v32 < *(a2 + 300) + v25);
      v33 = *(a1 + 5864);
LABEL_50:
      if (v32)
      {
        v34 = &v33[4 * v32];
        v35 = *(a1 + 5872);
        v36 = v35 - v34;
        if (v35 != v34)
        {
          memmove(v33, v34, v35 - v34);
        }

        *(a1 + 5872) = &v33[v36];
      }
    }

    v37 = kaldi::g_kaldi_verbose_level;
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      v38 = *(*(a1 + 136) + 552);
      if (!v38)
      {
LABEL_81:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "src_input_host_[0].NumRows(): ", 30);
        v49 = kaldi::MatrixBase<float>::NumRows(*(a1 + 4952));
        MEMORY[0x1B8C84C00](v48, v49);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&__p);
LABEL_82:
        kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, &v59, 0);
      }

      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
      v39 = v59;
      v40 = v60;
      while (v39 != v40)
      {
        v41 = *v39;
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], " ", 1);
        (*(*v38 + 88))(&v56, v38, v41 + 1);
        if (SHIBYTE(v56.__end_cap_.__value_) >= 0)
        {
          begin = &v56;
        }

        else
        {
          begin = v56.__begin_;
        }

        if (SHIBYTE(v56.__end_cap_.__value_) >= 0)
        {
          value_high = HIBYTE(v56.__end_cap_.__value_);
        }

        else
        {
          value_high = v56.__end_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, begin, value_high);
        if (SHIBYTE(v56.__end_cap_.__value_) < 0)
        {
          operator delete(v56.__begin_);
        }

        v39 = (v39 + 4);
      }

      if (kaldi::g_kaldi_verbose_level > 4)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v56, 5);
        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "partial_input_addition:", 23);
        std::stringbuf::str();
        if ((v55 & 0x80u) == 0)
        {
          v46 = v54;
        }

        else
        {
          v46 = v54[0];
        }

        if ((v55 & 0x80u) == 0)
        {
          v47 = v55;
        }

        else
        {
          v47 = v54[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v46, v47);
        if (v55 < 0)
        {
          operator delete(v54[0]);
        }

        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v56);
      }

      __p.__r_.__value_.__r.__words[0] = v52;
      *(__p.__r_.__value_.__r.__words + *(v52 - 24)) = v51;
      __p.__r_.__value_.__r.__words[2] = v50;
      v63 = MEMORY[0x1E69E5548] + 16;
      if (v65 < 0)
      {
        operator delete(v64[7].__locale_);
      }

      v63 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v64);
      std::iostream::~basic_iostream();
      MEMORY[0x1B8C85200](&v66);
      v37 = kaldi::g_kaldi_verbose_level;
    }

    if (v37 < 0)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::GetCurrentBestWords(a1, a4);
  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    memset(&v56, 0, sizeof(v56));
    kaldi::JoinVectorToString<std::string>(a4, " ", &v56);
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "partial_output: ", 16);
      if (SHIBYTE(v56.__end_cap_.__value_) >= 0)
      {
        v28 = &v56;
      }

      else
      {
        v28 = v56.__begin_;
      }

      if (SHIBYTE(v56.__end_cap_.__value_) >= 0)
      {
        v29 = HIBYTE(v56.__end_cap_.__value_);
      }

      else
      {
        v29 = v56.__end_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    if (SHIBYTE(v56.__end_cap_.__value_) < 0)
    {
      operator delete(v56.__begin_);
    }
  }

  return 2147500000.0;
}

void sub_1B58BE654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::TokenizeInputString(uint64_t a1, const std::string *a2, uint64_t *a3)
{
  if (*(a1 + 5244) == 1)
  {
    memset(v12, 0, sizeof(v12));
    kaldi::SplitStringToVector(a2, " ", 1, v12);
    kaldi::quasar::BPE::Apply(a1 + 152, v12, a3);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    kaldi::JoinVectorToString<std::string>(a3, " ", &v9);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "BPE input ", 10);
      if (v11 >= 0)
      {
        v6 = &v9;
      }

      else
      {
        v6 = v9;
      }

      if (v11 >= 0)
      {
        v7 = HIBYTE(v11);
      }

      else
      {
        v7 = v10;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v8);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v9);
    }

    v8[0].__locale_ = v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v8);
  }

  else
  {

    kaldi::SplitStringToVector(a2, " ", 1, a3);
  }
}

void sub_1B58BE8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 - 57) < 0)
  {
    operator delete(*(v9 - 80));
  }

  a9 = (v9 - 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

__n128 kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::GetCurrentBestWords(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 5784);
  if (*(a1 + 5792) == v4)
  {
    v5 = (a1 + 5832);
  }

  else
  {
    v5 = (*v4 + 32);
  }

  v6 = *v5;
  if (v6 >= 1)
  {
    std::vector<std::string>::clear[abi:ne200100](a2);
    do
    {
      if (*(a1 + 5248) == 1)
      {
        (*(**(*(a1 + 136) + 560) + 88))(v16);
        if (kaldi::quasar::BPE::IsIntraWord(a1 + 152, v16))
        {
          kaldi::quasar::BPE::StripSeparator(a1 + 152, v16, &__p);
          std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, " ");
          std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::vector<std::string>::push_back[abi:ne200100](a2, v16);
        }
      }

      else
      {
        (*(**(*(a1 + 136) + 560) + 88))(v16);
        std::vector<std::string>::push_back[abi:ne200100](a2, v16);
      }

      if (SHIBYTE(v16[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16[0].__r_.__value_.__l.__data_);
      }

      LODWORD(v6) = *(*(a1 + 5808) + 8 * v6);
    }

    while (v6 > 0);
    v9 = *a2;
    v8 = *(a2 + 8);
    if (*a2 != v8)
    {
      v10 = v8 - 24;
      if (v10 > v9)
      {
        v11 = v9 + 3;
        do
        {
          v12 = *(v11 - 1);
          result = *(v11 - 3);
          v13 = *(v10 + 16);
          *(v11 - 3) = *v10;
          *(v11 - 1) = v13;
          *v10 = result;
          *(v10 + 16) = v12;
          v10 -= 24;
          v14 = v11 >= v10;
          v11 += 3;
        }

        while (!v14);
      }
    }
  }

  return result;
}

void sub_1B58BEB30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Symbolize(uint64_t a1, uint64_t *a2, const void **a3, const void **a4)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 136);
    v13 = *(v12 + 552);
    v14 = *(v12 + 820);
    v15 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v16 = -1;
    do
    {
      v17 = v15 + v16;
      if (!*(*(a1 + 136) + 1504))
      {
        v17 = v11;
      }

      v18 = (*(*v13 + 96))(v13, v4 + 24 * v17);
      if (v18 == -1)
      {
        if (a4)
        {
          LODWORD(v25[0]) = v11;
          std::vector<int>::push_back[abi:ne200100](a4, v25);
        }

        v18 = v14;
        if (v14 == -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Couldn't find symbol ", 21);
          v20 = *a2 + v10;
          v21 = *(v20 + 23);
          if (v21 >= 0)
          {
            v22 = *a2 + v10;
          }

          else
          {
            v22 = *v20;
          }

          if (v21 >= 0)
          {
            v23 = *(v20 + 23);
          }

          else
          {
            v23 = *(v20 + 8);
          }

          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v22, v23);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, " or <unk> UNK symbol");
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
        }
      }

      LODWORD(v25[0]) = v18 - 1;
      std::vector<int>::push_back[abi:ne200100](a3, v25);
      ++v11;
      v4 = *a2;
      v15 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      v10 += 24;
      --v16;
    }

    while (v11 != v15);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v28, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "entered Read to process #tokens: ", 33);
    MEMORY[0x1B8C84C30](v8, (*(a3 + 8) - *a3) >> 2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v28);
  }

  v9 = *(a1 + 4952);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 4960) - v9) >> 3) <= a4)
  {
    std::vector<kaldi::Matrix<float>>::resize((a1 + 4952), a4 + 1);
    v9 = *(a1 + 4952);
  }

  v25 = 0u;
  v26 = 0u;
  v24 = &unk_1F2D0EE38;
  v27 = 0;
  v10 = kaldi::MatrixBase<float>::NumRows(v9 + 40 * a4);
  kaldi::Matrix<float>::Resize(*(a1 + 4952) + 40 * a4, v10 + ((*(a3 + 8) - *a3) >> 2), 1, 2, 0);
  v11 = *a3;
  v12 = *(a1 + 4952);
  v13 = *(a3 + 8) - *a3;
  if (v13)
  {
    v14 = v13 >> 2;
    v15 = v12 + 40 * a4;
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    if ((v13 >> 2) <= 1)
    {
      v14 = 1;
    }

    v18 = (*v15 + 4 * v17 * v10);
    do
    {
      v19 = *v11++;
      *v18 = v19;
      v18 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = *(v12 + 40 * a4 + 8);
  }

  kaldi::SubMatrix<float>::SubMatrix(v28, v12 + 40 * a4, v10, v13 >> 2, 0, v16);
  kaldi::CuMatrix<float>::operator=(&v24, v28);
  quasar::Bitmap::~Bitmap(v28);
  if (v10)
  {
    kaldi::quasar::Encdec::EncFeedforward();
  }

  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v28, 1);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "shortlist with biasing #tokens: ", 32);
    MEMORY[0x1B8C84C30](v20, (*(a1 + 5848) - *(a1 + 5840)) >> 2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v28);
  }

  v21 = *(a1 + 136);
  v22 = *(a2 + 288);
  v23 = *(a2 + 292);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SuppressedIds(a1, a2 + 64, a2 + 88, (a2 + 328), v28);
  kaldi::quasar::Encdec::ConstrainSoftmax(v21, a2 + 264, v22, v23, a3, (a1 + 5840), v28);
  std::__tree<int>::destroy(v28, v28[1].__locale_);
  kaldi::quasar::Encdec::ResetHistoryState(*(a1 + 136));
  if (*(a2 + 300))
  {
    kaldi::quasar::Encdec::EncFeedforward();
  }

  kaldi::quasar::Encdec::StartFeedforward(*(a1 + 136), &v24, a4, 0);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::AddInitialHypToCurrent<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2);
}

void sub_1B58BEFFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::PruneCurrentHyps(uint64_t a1, int a2)
{
  v3 = a2;
  v4 = *(a1 + 5792);
  v5 = *(a1 + 5784);
  v6 = (v4 - v5) >> 3;
  if (v6 > a2)
  {
    v7 = a2;
    do
    {
      v8 = *(v5 + 8 * v7);
      if (v8)
      {
        v9 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Hyp::~Hyp(v8);
        MEMORY[0x1B8C85350](v9, 0x10B0C406F3D429DLL);
        v4 = *(a1 + 5792);
        v5 = *(a1 + 5784);
      }

      ++v7;
    }

    while (v7 < (v4 - v5) >> 3);
    v6 = (v4 - v5) >> 3;
  }

  if (v6 > v3)
  {

    std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize((a1 + 5784), v3);
  }
}

void sub_1B58BFA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
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

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::JoinBPEUnitsInNbestList(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 5248) == 1)
  {
    v2 = *a2;
    v31 = a2[1];
    if (*a2 != v31)
    {
      v33 = *(MEMORY[0x1E69E54D8] + 64);
      v34 = *MEMORY[0x1E69E54D8];
      v32 = *(MEMORY[0x1E69E54D8] + 72);
      do
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v72);
        memset(&v61, 0, sizeof(v61));
        memset(v62, 0, sizeof(v62));
        v63 = 0u;
        __dst = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        memset(v71, 0, sizeof(v71));
        *v59 = 0;
        *v58 = 0;
        v60 = 0;
        v5 = *v2;
        v4 = *(v2 + 8);
        if (*v2 != v4)
        {
          v6 = 0;
          do
          {
            *&v63 = vadd_f32(*(v5 + 80), *&v63);
            std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v63 + 8, __dst, *(v5 + 88), *(v5 + 96), (*(v5 + 96) - *(v5 + 88)) >> 2);
            std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&v69 + 8, v70, *(v5 + 184), *(v5 + 192), (*(v5 + 192) - *(v5 + 184)) >> 2);
            v7 = *(v5 + 23);
            if (v7 >= 0)
            {
              v8 = v5;
            }

            else
            {
              v8 = *v5;
            }

            if (v7 >= 0)
            {
              v9 = *(v5 + 23);
            }

            else
            {
              v9 = *(v5 + 8);
            }

            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, v8, v9);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
            std::vector<std::string>::push_back[abi:ne200100](v62, v5);
            LODWORD(__p.__r_.__value_.__l.__data_) = v6;
            std::vector<int>::push_back[abi:ne200100](&v68, &__p);
            if (kaldi::quasar::BPE::IsIntraWord(a1 + 152, v5))
            {
              kaldi::quasar::BPE::StripSeparator(a1 + 152, v5, &__p);
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

              std::string::append(&v61, p_p, size);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v13 = *(v5 + 23);
              if (v13 >= 0)
              {
                v14 = v5;
              }

              else
              {
                v14 = *v5;
              }

              if (v13 >= 0)
              {
                v15 = *(v5 + 23);
              }

              else
              {
                v15 = *(v5 + 8);
              }

              std::string::append(&v61, v14, v15);
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](v58, &v61);
              memset(&__p, 0, sizeof(__p));
              memset(v53, 0, sizeof(v53));
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              memset(v57, 0, 108);
              kaldi::quasar::TranslationUtil::PathElement::operator=(&v61, &__p);
              kaldi::quasar::TranslationUtil::PathElement::~PathElement(&__p);
            }

            v5 += 240;
            ++v6;
          }

          while (v5 != v4);
          v16 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = v61.__r_.__value_.__l.__size_;
          }

          if (v16)
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
            v17 = *v2;
            v18 = *(v2 + 8);
            while (v17 != v18)
            {
              v19 = *(v17 + 23);
              if (v19 >= 0)
              {
                v20 = v17;
              }

              else
              {
                v20 = *v17;
              }

              if (v19 >= 0)
              {
                v21 = *(v17 + 23);
              }

              else
              {
                v21 = *(v17 + 8);
              }

              v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], v20, v21);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ", 1);
              v17 += 240;
            }

            if (*(a1 + 132))
            {
              v37 = 0uLL;
              v38 = 0;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              memset(v50, 0, sizeof(v50));
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](v58, &v37);
              kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v37);
            }

            else
            {
              LODWORD(v37) = v6;
              std::vector<int>::push_back[abi:ne200100](&v68, &v37);
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](v58, &v61);
            }

            if (kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
              v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Error converting BPE to word list ", 34);
              if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = &v61;
              }

              else
              {
                v24 = v61.__r_.__value_.__r.__words[0];
              }

              if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v25 = v61.__r_.__value_.__l.__size_;
              }

              v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
              v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "( ", 2);
              std::stringbuf::str();
              if ((v36 & 0x80u) == 0)
              {
                v28 = v35;
              }

              else
              {
                v28 = v35[0];
              }

              if ((v36 & 0x80u) == 0)
              {
                v29 = v36;
              }

              else
              {
                v29 = v35[1];
              }

              v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")", 1);
              if (v36 < 0)
              {
                operator delete(v35[0]);
              }

              kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v37);
            }

            __p.__r_.__value_.__r.__words[0] = v34;
            *(__p.__r_.__value_.__r.__words + *(v34 - 3)) = v33;
            __p.__r_.__value_.__r.__words[2] = v32;
            v52 = MEMORY[0x1E69E5548] + 16;
            if (SHIBYTE(v55) < 0)
            {
              operator delete(*(&v54 + 1));
            }

            v52 = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(v53);
            std::iostream::~basic_iostream();
            MEMORY[0x1B8C85200](v57);
          }
        }

        if (v2 != v58)
        {
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(v2, *v58, *v59, 0xEEEEEEEEEEEEEEEFLL * ((*v59 - *v58) >> 4));
        }

        *(v2 + 88) = 1;
        __p.__r_.__value_.__r.__words[0] = v58;
        std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&__p);
        kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v61);
        v72[0].__locale_ = v34;
        *(&v72[0].__locale_ + *(v34 - 3)) = v33;
        v73 = v32;
        v74 = MEMORY[0x1E69E5548] + 16;
        if (v76 < 0)
        {
          operator delete(v75[7].__locale_);
        }

        v74 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v75);
        std::iostream::~basic_iostream();
        MEMORY[0x1B8C85200](&v77);
        v2 += 272;
      }

      while (v2 != v31);
    }
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "Not applying BPE to target", 26);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v72);
  }
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](uint64_t a1, const kaldi::quasar::TranslationUtil::PathElement *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::TranslationUtil::PathElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::PathElement const&>(a1, a2);
  }

  else
  {
    kaldi::quasar::TranslationUtil::PathElement::PathElement(*(a1 + 8), a2);
    result = v3 + 240;
    *(a1 + 8) = v3 + 240;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::NbestElement>::push_back[abi:ne200100](uint64_t a1, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::NbestElement const&>(a1, a2);
  }

  else
  {
    kaldi::quasar::TranslationUtil::NbestElement::NbestElement(*(a1 + 8), a2);
    result = v3 + 272;
    *(a1 + 8) = v3 + 272;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t kaldi::quasar::TranslationUtil::PathElement::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 6);
  std::vector<std::string>::__vdeallocate((a1 + 32));
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v5;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  *(a1 + 80) = *(a2 + 10);
  std::vector<int>::__move_assign(a1 + 88, (a2 + 88));
  std::vector<int>::__move_assign(a1 + 112, a2 + 7);
  std::vector<int>::__move_assign(a1 + 136, (a2 + 136));
  std::vector<int>::__move_assign(a1 + 160, a2 + 10);
  std::vector<int>::__move_assign(a1 + 184, (a2 + 184));
  std::vector<int>::__move_assign(a1 + 208, a2 + 13);
  *(a1 + 232) = *(a2 + 58);
  return a1;
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::JoinBPEUnitsInNbestList(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 5248) == 1)
  {
    v2 = *a2;
    v31 = a2[1];
    if (*a2 != v31)
    {
      v33 = *(MEMORY[0x1E69E54D8] + 64);
      v34 = *MEMORY[0x1E69E54D8];
      v32 = *(MEMORY[0x1E69E54D8] + 72);
      do
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v72);
        memset(&v61, 0, sizeof(v61));
        memset(v62, 0, sizeof(v62));
        v63 = 0u;
        __dst = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        memset(v71, 0, sizeof(v71));
        *v59 = 0;
        *v58 = 0;
        v60 = 0;
        v5 = *v2;
        v4 = *(v2 + 8);
        if (*v2 != v4)
        {
          v6 = 0;
          do
          {
            *&v63 = vadd_f32(*(v5 + 80), *&v63);
            std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(&v63 + 8, __dst, *(v5 + 88), *(v5 + 96), (*(v5 + 96) - *(v5 + 88)) >> 2);
            std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(&v69 + 8, v70, *(v5 + 184), *(v5 + 192), (*(v5 + 192) - *(v5 + 184)) >> 2);
            v7 = *(v5 + 23);
            if (v7 >= 0)
            {
              v8 = v5;
            }

            else
            {
              v8 = *v5;
            }

            if (v7 >= 0)
            {
              v9 = *(v5 + 23);
            }

            else
            {
              v9 = *(v5 + 8);
            }

            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v73, v8, v9);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
            std::vector<std::string>::push_back[abi:ne200100](v62, v5);
            LODWORD(__p.__r_.__value_.__l.__data_) = v6;
            std::vector<int>::push_back[abi:ne200100](&v68, &__p);
            if (kaldi::quasar::BPE::IsIntraWord(a1 + 152, v5))
            {
              kaldi::quasar::BPE::StripSeparator(a1 + 152, v5, &__p);
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

              std::string::append(&v61, p_p, size);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v13 = *(v5 + 23);
              if (v13 >= 0)
              {
                v14 = v5;
              }

              else
              {
                v14 = *v5;
              }

              if (v13 >= 0)
              {
                v15 = *(v5 + 23);
              }

              else
              {
                v15 = *(v5 + 8);
              }

              std::string::append(&v61, v14, v15);
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](v58, &v61);
              memset(&__p, 0, sizeof(__p));
              memset(v53, 0, sizeof(v53));
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              memset(v57, 0, 108);
              kaldi::quasar::TranslationUtil::PathElement::operator=(&v61, &__p);
              kaldi::quasar::TranslationUtil::PathElement::~PathElement(&__p);
            }

            v5 += 240;
            ++v6;
          }

          while (v5 != v4);
          v16 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = v61.__r_.__value_.__l.__size_;
          }

          if (v16)
          {
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
            v17 = *v2;
            v18 = *(v2 + 8);
            while (v17 != v18)
            {
              v19 = *(v17 + 23);
              if (v19 >= 0)
              {
                v20 = v17;
              }

              else
              {
                v20 = *v17;
              }

              if (v19 >= 0)
              {
                v21 = *(v17 + 23);
              }

              else
              {
                v21 = *(v17 + 8);
              }

              v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p.__r_.__value_.__r.__words[2], v20, v21);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ", 1);
              v17 += 240;
            }

            if (*(a1 + 132))
            {
              v37 = 0uLL;
              v38 = 0;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              memset(v50, 0, sizeof(v50));
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](v58, &v37);
              kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v37);
            }

            else
            {
              LODWORD(v37) = v6;
              std::vector<int>::push_back[abi:ne200100](&v68, &v37);
              std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](v58, &v61);
            }

            if (kaldi::g_kaldi_verbose_level >= -1)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
              v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Error converting BPE to word list ", 34);
              if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v24 = &v61;
              }

              else
              {
                v24 = v61.__r_.__value_.__r.__words[0];
              }

              if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v25 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v25 = v61.__r_.__value_.__l.__size_;
              }

              v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
              v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "( ", 2);
              std::stringbuf::str();
              if ((v36 & 0x80u) == 0)
              {
                v28 = v35;
              }

              else
              {
                v28 = v35[0];
              }

              if ((v36 & 0x80u) == 0)
              {
                v29 = v36;
              }

              else
              {
                v29 = v35[1];
              }

              v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")", 1);
              if (v36 < 0)
              {
                operator delete(v35[0]);
              }

              kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v37);
            }

            __p.__r_.__value_.__r.__words[0] = v34;
            *(__p.__r_.__value_.__r.__words + *(v34 - 3)) = v33;
            __p.__r_.__value_.__r.__words[2] = v32;
            v52 = MEMORY[0x1E69E5548] + 16;
            if (SHIBYTE(v55) < 0)
            {
              operator delete(*(&v54 + 1));
            }

            v52 = MEMORY[0x1E69E5538] + 16;
            std::locale::~locale(v53);
            std::iostream::~basic_iostream();
            MEMORY[0x1B8C85200](v57);
          }
        }

        if (v2 != v58)
        {
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(v2, *v58, *v59, 0xEEEEEEEEEEEEEEEFLL * ((*v59 - *v58) >> 4));
        }

        *(v2 + 88) = 1;
        __p.__r_.__value_.__r.__words[0] = v58;
        std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&__p);
        kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v61);
        v72[0].__locale_ = v34;
        *(&v72[0].__locale_ + *(v34 - 3)) = v33;
        v73 = v32;
        v74 = MEMORY[0x1E69E5548] + 16;
        if (v76 < 0)
        {
          operator delete(v75[7].__locale_);
        }

        v74 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v75);
        std::iostream::~basic_iostream();
        MEMORY[0x1B8C85200](&v77);
        v2 += 272;
      }

      while (v2 != v31);
    }
  }

  else if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v72);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "Not applying BPE to target", 26);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v72);
  }
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Decode<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v42, "Nbestlist cannot be null");
    goto LABEL_91;
  }

  if (*(a3 + 307) != 1 || (v6 = (a1 + 4096), (*(a1 + 5237) & 1) == 0))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v42, "Decoder not configured for SentencePiece ID decoding.");
    goto LABEL_91;
  }

  v9 = *(a1 + 136);
  if (v9 && (*(v9 + 3925) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v42, "Model not configured for SentencePiece ID decoding.");
LABEL_91:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v42);
  }

  v10 = *(a1 + 5224);
  v11 = *(a1 + 5200);
  v12 = *(a1 + 5188);
  v13 = *(a1 + 5192);
  v14 = *(a1 + 5196);
  *(a1 + 5200) = *(a3 + 228);
  *(a1 + 5224) = *(a3 + 216);
  if (*a3)
  {
    *(a1 + 5188) = *a3;
  }

  v15 = *(a3 + 4);
  if (v15 != 0.0)
  {
    *(a1 + 5192) = v15;
  }

  v16 = *(a3 + 8);
  if (v16)
  {
    *(a1 + 5196) = v16;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ValidateDecodingParameters(*(a3 + 176), a1, *(a3 + 160), *(a3 + 172));
  v18 = *a4;
    ;
  }

  a4[1] = v18;
  v19 = (*(a1 + 113) & 1) != 0 || *(a1 + 32) != 0;
  if (v19 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Input Hammer not supported for sentencepiece id decoding.", 57);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v42);
  }

  v20 = kaldi::quasar::TorchEncoderDecoder::InputSymbols(*(a1 + 136));
  kaldi::quasar::MultiLangDecorator::Apply(a1 + 120, a2, a3 + 64, a3 + 88, v20, &v46);
  if (*(a3 + 232) == 1)
  {
    v21 = kaldi::quasar::MultiLangDecorator::NumTagTokens((a1 + 120));
  }

  else
  {
    v21 = 0;
  }

  *(a1 + 5204) = v21;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LanguageInfo(a3);
    if (v45 >= 0)
    {
      v22 = &v43;
    }

    else
    {
      v22 = v43;
    }

    if (v45 >= 0)
    {
      v23 = HIBYTE(v45);
    }

    else
    {
      v23 = v44;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, v22, v23);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v43);
    }

    kaldi::KaldiLogMessage::~KaldiLogMessage(&v42);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v42, 1);
      kaldi::JoinVectorToString<int>(a2, " ");
      if (v45 >= 0)
      {
        v24 = &v43;
      }

      else
      {
        v24 = v43;
      }

      if (v45 >= 0)
      {
        v25 = HIBYTE(v45);
      }

      else
      {
        v25 = v44;
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, v24, v25);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " -> ", 4);
      kaldi::JoinVectorToString<int>(&v46, " ");
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45) < 0)
      {
        operator delete(v43);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v42);
    }
  }

  v30 = v46;
  if (v47 == v46)
  {
    v33 = 3.4028e38;
    if (!v46)
    {
      return v33;
    }

    goto LABEL_86;
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<std::shared_ptr<kaldi::quasar::PhraseBook>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(&v43, *(a3 + 240), *(a3 + 248), (*(a3 + 248) - *(a3 + 240)) >> 4);
  if (v6[1144] == 1)
  {
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](&v43, (a1 + 392));
  }

  if (v44 != v43 && *(a1 + 5220) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v42);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v42, "Phrasebook (kaldi level) not supported for sentencepiece id decoding.", 69);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v42);
  }

  v31 = *(a1 + 136);
  if (v31 && *(v31 + 3922) == 1 && *(v31 + 3923) == 1)
  {
    v6[1608] = 1;
  }

  v32 = *(a1 + 5220);
  if (a4[1] == *a4)
  {
    if (v32 == 3)
    {
      goto LABEL_68;
    }
  }

  else if (v32 != 2)
  {
    goto LABEL_68;
  }

  if (v6[800] == 1)
  {
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &v46, a3);
  }

LABEL_68:
  memset(&v42, 0, sizeof(v42));
  v34 = v46;
  for (j = v47; v34 != j; ++v34)
  {
    std::to_string(&v40, *v34);
    std::string::push_back(&v40, 32);
    __p = v40;
    memset(&v40, 0, sizeof(v40));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v42, v36, v37);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  v38 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::PostProcessNbestList<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &v42, a3, a4);
  *(a1 + 5224) = v10;
  *(a1 + 5200) = v11;
  *(a1 + 5188) = v12;
  *(a1 + 5192) = v13;
  *(a1 + 5196) = v14;
  if (v38 == -1.0)
  {
    v33 = 3.4028e38;
  }

  else
  {
    v33 = v38;
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  v42.__r_.__value_.__r.__words[0] = &v43;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v42);
  v30 = v46;
  if (v46)
  {
LABEL_86:
    v47 = v30;
    operator delete(v30);
  }

  return v33;
}

void sub_1B58C1294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v24 = (v21 - 168);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v23 = *(v21 - 144);
  if (v23)
  {
    *(v21 - 136) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ValidateDecodingParameters(float a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Decoder beam (", 14);
    v6 = MEMORY[0x1B8C84C00](v5, a3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, ") should not be negative.");
    goto LABEL_11;
  }

  if (a1 < 0.0 || a1 > 1000.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Decoder confidence threshold (", 30);
    v7 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ") should be in the range [0, 1000].");
    goto LABEL_11;
  }

  if ((a4 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Decoder maximum nbest list size (", 33);
    v9 = MEMORY[0x1B8C84C00](v8, a4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, ") should not be negative.");
LABEL_11:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }
}

uint64_t kaldi::quasar::MultiLangDecorator::NumTagTokens(kaldi::quasar::MultiLangDecorator *this)
{
  v1 = *(this + 2);
  if (v1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_1B5B2D9A0[v1];
  }

  v3 = *(this + 1);
  v4 = v3 >= 2;
  v5 = v3 == 2;
  v6 = 2 * v2;
  if (!v5)
  {
    v6 = 0;
  }

  if (v4)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LanguageInfo(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v25);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, "Source locale ", 14);
  v3 = *(a1 + 39);
  if (v3 >= 0)
  {
    v4 = a1 + 16;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 39);
  }

  else
  {
    v5 = *(a1 + 24);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", Target locale ", 16);
  v8 = *(a1 + 63);
  if (v8 >= 0)
  {
    v9 = a1 + 40;
  }

  else
  {
    v9 = *(a1 + 40);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 63);
  }

  else
  {
    v10 = *(a1 + 48);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " source tag ", 12);
  v13 = *(a1 + 87);
  if (v13 >= 0)
  {
    v14 = a1 + 64;
  }

  else
  {
    v14 = *(a1 + 64);
  }

  if (v13 >= 0)
  {
    v15 = *(a1 + 87);
  }

  else
  {
    v15 = *(a1 + 72);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " target locale ", 15);
  v18 = *(a1 + 111);
  if (v18 >= 0)
  {
    v19 = a1 + 88;
  }

  else
  {
    v19 = *(a1 + 88);
  }

  if (v18 >= 0)
  {
    v20 = *(a1 + 111);
  }

  else
  {
    v20 = *(a1 + 96);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", # of phrasebooks ", 19);
  MEMORY[0x1B8C84C30](v22, (*(a1 + 248) - *(a1 + 240)) >> 4);
  std::stringbuf::str();
  v25[0] = *MEMORY[0x1E69E54D8];
  v23 = *(MEMORY[0x1E69E54D8] + 72);
  *(v25 + *(v25[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v26 = v23;
  v27 = MEMORY[0x1E69E5548] + 16;
  if (v29 < 0)
  {
    operator delete(v28[7].__locale_);
  }

  v27 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v30);
}

void sub_1B58C16AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  if (*(a3 + 308) == 1)
  {
    kaldi::quasar::TorchEncoderDecoder::GetTiming(*(a1 + 136), &v4);
    std::__tree<std::string>::destroy(&v7, v8);
    v3 = v5;
    v7 = v4;
    v8 = v5;
    v9 = v6;
    if (v6)
    {
      *(v5 + 16) = &v8;
      v4 = &v5;
      v5 = 0;
      v6 = 0;
      v3 = 0;
    }

    else
    {
      v7 = &v8;
    }

    std::__tree<std::string>::destroy(&v4, v3);
  }

  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
}

void sub_1B58C1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, std::locale a11)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a11);
  a9 = (v11 - 192);
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v11 - 168));
  std::__tree<std::string>::destroy(v11 - 152, *(v11 - 144));
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::PostProcessNbestList<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 136);
  if (v8 && *(v8 + 3922) == 1)
  {
    if (*(v8 + 3923) == 1)
    {
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ShiftAlignments(a1, a4);
    }

    kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(a4);
    kaldi::quasar::TranslationUtil::MergeAlignments(a4);
  }

  v9 = *(a3 + 200);
  v10 = -1.0;
  if (v9)
  {
    v11 = *(a3 + 184) == 3;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v10 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a4, v9, *(a3 + 180), *(a3 + 220), *(a3 + 224));
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::JoinBPEUnitsInNbestList(a1, a4);
  v12 = *(a3 + 200);
  if (v12 && *(a3 + 184) == 4)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Word level LM re-scoring", 24);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v17);
      v12 = *(a3 + 200);
    }

    v10 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a4, v12, *(a3 + 180), *(a3 + 220), *(a3 + 224));
  }

  v13 = *a4;
  v14 = *(a4 + 8);
  while (v13 != v14)
  {
    std::string::operator=(v13 + 5, a2);
    std::string::operator=(v13 + 6, a2);
    v13 = (v13 + 272);
  }

  kaldi::quasar::NNMTTransliterator::Transliterate<std::vector<kaldi::quasar::TranslationUtil::NbestElement>>(a1 + 408, a4);
  if (kaldi::g_kaldi_verbose_level > 0)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v17, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Applying confidence scores to n-best list", 41);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v17);
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(a1, a4, *(a3 + 176));
  v15 = *(a3 + 172);
  if (v15 && 0xF0F0F0F0F0F0F0F1 * ((*(a4 + 8) - *a4) >> 4) > v15)
  {
    std::vector<kaldi::quasar::TranslationUtil::NbestElement>::resize(a4, v15);
  }

  return v10;
}

void sub_1B58C1D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeCore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v30, (a1 + 4856), a1 + 5680, &__p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    kaldi::JoinVectorToString<int>(a2, ",", &v27);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input : ", 8);
      if (v29 >= 0)
      {
        v9 = &v27;
      }

      else
      {
        v9 = v27;
      }

      if (v29 >= 0)
      {
        v10 = HIBYTE(v29);
      }

      else
      {
        v10 = v28;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }
  }

  v11 = (((a2[1] - *a2) >> 2) - (*(a3 + 236) + *(a1 + 5204)));
  if ((*(a1 + 5200) * v11) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(a1 + 5200) * v11);
  }

  v13 = *(a1 + 5188);
  v14 = *(a1 + 5192);
  if (v14 != -1.0)
  {
    v15 = (v14 * v11);
    if (*(a1 + 5196) > v15)
    {
      v15 = *(a1 + 5196);
    }

    if (v15 >= v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = v15;
    }
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel((a1 + 136), a3 + 136, (a3 + 88), &v23);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(a3 + 160))
  {
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Beam decoding", 13);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Init<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a4);
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Read<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a2, 0);
    v17 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Write<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, v13, 1);
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Greedy decoding", 15);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    kaldi::quasar::TorchEncoderDecoder::Start(*(a1 + 136), *(a3 + 312), a3 + 112);
    v18 = *(a1 + 136);
    v19 = *(a3 + 288);
    v20 = *(a3 + 292);
    __p = 0uLL;
    v26 = 0;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SuppressedIds(a1, a3 + 64, a3 + 88, (a3 + 328), &v27);
    kaldi::quasar::TorchEncoderDecoder::ConstrainSoftmax(v18, a3 + 264, v19, v20, a2, &__p, &v27);
    std::__tree<int>::destroy(&v27, v28);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    (*(*a4 + 224))(a4);
    __p = 0uLL;
    v26 = 0;
    v17 = kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::TorchEncoderDecoder>(*(a1 + 136), a2, &__p, a3 + 112, a4, v12, v13);
    kaldi::quasar::TorchEncoderDecoder::Finish(*(a1 + 136), v21);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v30, v16);
  return v17;
}

void sub_1B58C2090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  kaldi::quasar::TimeBlock::~TimeBlock((v16 - 144), v18);
  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3)
{
  v6 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
    while (1)
    {
      v9 = operator new(272 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1B58C2224(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *a5, uint64_t a6)
{
  v19 = a1;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v18 = a2 - 272;
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, a2 - 272, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v19, &v18);
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a2, a3);
    }

    else
    {
      v11 = a5;
      v12 = a4 >> 1;
      v13 = a1 + 272 * (a4 >> 1);
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, (a1 + 272 * (a4 >> 1)), a3, a4 >> 1, a5);
        v15 = a4 - v12;
        v16 = (v11 + 272 * v12);
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>((a1 + 272 * (a4 >> 1)), a2, a3, v15, v16);
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,kaldi::quasar::TranslationUtil::NbestElement *,kaldi::quasar::TranslationUtil::NbestElement *,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v11, v16, v16, v11 + 272 * a4, a1, a3);
        if (v11)
        {
          v17 = 0;
          do
          {
            kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v11);
            ++v17;
            v11 = (v11 + 272);
          }

          while (v17 < a4);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a1 + 272 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v13, a2, a3, v14, v11, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, v13, a2, a3, v12, v14, v11, a6);
      }
    }
  }
}

void sub_1B58C2440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(float *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = 1.0;
  if (*a1)
  {
    v7 = (*(a2 + 200) - *(a2 + 192)) >> 2;
    if (LODWORD(v5) == 2)
    {
      v9 = a1[1];
      v10 = a1[2];
      v11 = powf(v10 + v7, v9);
      v12 = powf(v10 + 1.0, v9);
      v6 = v11 / v12;
      v8 = powf(v10 + ((*(a3 + 200) - *(a3 + 192)) >> 2), v9) / v12;
    }

    else
    {
      v8 = 1.0;
      if (LODWORD(v5) == 1)
      {
        v6 = (v7 + 1);
        v8 = (((*(a3 + 200) - *(a3 + 192)) >> 2) + 1);
      }
    }
  }

  else
  {
    v8 = 1.0;
  }

  return ((*(a2 + 24) + *(a2 + 28)) / v6) < ((*(a3 + 24) + *(a3 + 28)) / v8);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(const kaldi::quasar::TranslationUtil::NbestElement **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v4, *a1);
  kaldi::quasar::TranslationUtil::NbestElement::operator=(v2, v3);
  kaldi::quasar::TranslationUtil::NbestElement::operator=(v3, v4);
  kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v4);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 272;
    if ((a1 + 272) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, v5, v9))
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v12, v8);
          v10 = v7;
          while (1)
          {
            kaldi::quasar::TranslationUtil::NbestElement::operator=(a1 + v10 + 272, a1 + v10);
            if (!v10)
            {
              break;
            }

            v10 -= 272;
            if (!kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, v12, a1 + v10))
            {
              v11 = a1 + v10 + 272;
              goto LABEL_10;
            }
          }

          v11 = a1;
LABEL_10:
          kaldi::quasar::TranslationUtil::NbestElement::operator=(v11, v12);
          kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v12);
        }

        v5 = v8 + 272;
        v7 += 272;
      }

      while ((v8 + 272) != a2);
    }
  }
}

const kaldi::quasar::TranslationUtil::NbestElement *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *result, kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = (a2 - 272);
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, a2 - 272, result))
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v10);
        v10 = v9;
      }

      else
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v9);
      }

      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement((this + 272), v10);
    }

    else if (a4 == 1)
    {

      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(result, result + 272 * (a4 >> 1), a3, a4 >> 1, this, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v9 + 272 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), this + 272 * (a4 >> 1), a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v9, (v9 + 272 * (a4 >> 1)), (v9 + 272 * (a4 >> 1)), a2, this, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(result, a2, this, a3);
    }
  }

  return result;
}

void sub_1B58C287C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,kaldi::quasar::TranslationUtil::NbestElement *,kaldi::quasar::TranslationUtil::NbestElement *,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, a3);
      a3 += 272;
      a5 += 272;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a6, a3, v11))
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, a3);
        a3 += 272;
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v11);
        v11 += 272;
      }

      a5 += 272;
      if (v11 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v11 != a2)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v11);
      v11 += 272;
      a5 += 272;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(kaldi::quasar::TranslationUtil::NbestElement *a1, uint64_t a2, kaldi::quasar::TranslationUtil::NbestElement *a3, float *a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *a7, uint64_t a8)
{
  v37 = a2;
  v38 = a1;
  if (a6)
  {
    v9 = a6;
    v13 = a2;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v38, v13, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v14 = 0;
      v15 = v38;
      v16 = -a5;
      while (!kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a4, v13, v15 + v14))
      {
        v38 = (v15 + v14 + 272);
        v14 += 272;
        if (__CFADD__(v16++, 1))
        {
          return;
        }
      }

      v18 = -v16;
      v34 = a3;
      v35 = a8;
      if (-v16 >= v9)
      {
        if (v16 == -1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v38, &v37);
          return;
        }

        v23 = *(a4 + 2);
        v39 = *a4;
        v40 = v23;
        v33 = v18 / 2;
        if (a3 == v13)
        {
          v28 = a3;
        }

        else
        {
          v24 = v15 + 272 * (v18 / 2);
          v25 = 0xF0F0F0F0F0F0F0F1 * ((a3 - v13) >> 4);
          do
          {
            v26 = v13 + 272 * (v25 >> 1);
            v27 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(&v39, v26, &v24[v14]);
            if (v27)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v27)
            {
              v13 = (v26 + 272);
            }
          }

          while (v25);
          v28 = v13;
          v13 = v37;
        }

        v19 = 0xF0F0F0F0F0F0F0F1 * ((v28 - v13) >> 4);
        v29 = v15 + 272 * v33;
        v21 = v33;
        v20 = &v29[v14];
        v22 = v13;
        v13 = v28;
      }

      else
      {
        v19 = v9 / 2;
        v20 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity>(v15 + v14, v13, v13 + 272 * (v9 / 2), a4);
        v21 = 0xF0F0F0F0F0F0F0F1 * ((v20 - v15 - v14) >> 4);
        v22 = v13;
        v13 = (v13 + 272 * (v9 / 2));
      }

      v30 = v13;
      if (v20 != v22)
      {
        v30 = v20;
        if (v13 != v22)
        {
          v30 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v20, v22, v13);
        }
      }

      a5 = -v16 - v21;
      v31 = v9 - v19;
      if ((v21 + v19) >= (v9 - (v21 + v19) - v16))
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v30, v13, v34, a4, -v16 - v21, v31, a7, v35);
        v13 = v20;
        v31 = v19;
        a8 = v35;
        a5 = v21;
        a3 = v30;
      }

      else
      {
        v32 = v19;
        a8 = v35;
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v38, v20, v30, a4, v21, v32, a7, v35);
        v38 = v30;
        a3 = v34;
      }

      v37 = v13;
      v9 = v31;
    }

    while (v31);
  }
}

uint64_t kaldi::quasar::TranslationUtil::NbestElement::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(a1, *a2, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 4));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  std::string::operator=((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  std::string::operator=((a1 + 144), (a2 + 144));
  if (a1 == a2)
  {
    *(a1 + 240) = *(a2 + 240);
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 192), *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 2);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 216), *(a2 + 216), *(a2 + 224), (*(a2 + 224) - *(a2 + 216)) >> 2);
    *(a1 + 240) = *(a2 + 240);
    std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,double>,std::__tree_node<std::__value_type<std::string,double>,void *> *,long>>((a1 + 248), *(a2 + 248), (a2 + 256));
  }

  return a1;
}

const kaldi::quasar::TranslationUtil::NbestElement *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *result, const kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *this, float *a4)
{
  if (result != a2)
  {
    v7 = result;
    result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    v13 = 1;
    v8 = (v7 + 272);
    if (v8 != a2)
    {
      v9 = 0;
      v10 = this;
      do
      {
        if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a4, v8, v10))
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v10 + 272), v10);
          ++v13;
          v11 = this;
          if (v10 != this)
          {
            v12 = v9;
            while (1)
            {
              v11 = (this + v12);
              if (!kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a4, v8, this + v12 - 272))
              {
                break;
              }

              kaldi::quasar::TranslationUtil::NbestElement::operator=(this + v12, this + v12 - 272);
              v12 -= 272;
              if (!v12)
              {
                v11 = this;
                break;
              }
            }
          }

          result = kaldi::quasar::TranslationUtil::NbestElement::operator=(v11, v8);
        }

        else
        {
          result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v10 + 272), v8);
          ++v13;
        }

        v8 = (v8 + 272);
        v9 += 272;
        v10 = (v10 + 272);
      }

      while (v8 != a2);
    }
  }

  return result;
}

void sub_1B58C2E84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

kaldi::quasar::TranslationUtil::NbestElement *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(kaldi::quasar::TranslationUtil::NbestElement *result, const kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *a4, kaldi::quasar::TranslationUtil::NbestElement *this, float *a6)
{
  v12 = 0;
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, a3);
      a3 = (a3 + 272);
      this = (this + 272);
      ++v12;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a6, a3, v11))
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, a3);
        ++v12;
        a3 = (a3 + 272);
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v11);
        ++v12;
        v11 = (v11 + 272);
      }

      this = (this + 272);
      if (v11 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v11 != a2)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v11);
      v11 = (v11 + 272);
      this = (this + 272);
      ++v12;
    }
  }

  return result;
}

void sub_1B58C2FBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (*v3)
    {
      v4 = 0;
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v2);
        ++v4;
        v2 = (v5 + 272);
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(kaldi::quasar::TranslationUtil::NbestElement *a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, float *a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  v7 = this;
  v20 = this;
  v21 = &v22;
  v22 = 0;
  if (a5 > a6)
  {
    v12 = this;
    if (a2 != a3)
    {
      v12 = this;
      v13 = a2;
      do
      {
        v14 = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v12, v13);
        ++v22;
        v13 = (v13 + 272);
        v12 = (v14 + 272);
      }

      while (v13 != a3);
    }

    v19 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement *>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement *>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>>(v12, v12, v7, v7, a2, a2, a1, a1, a3, a3, &v19);
    if (!v7)
    {
      return;
    }

LABEL_11:
    v17 = v21;
    if (*v21)
    {
      v18 = 0;
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v7);
        ++v18;
        v7 = (v7 + 272);
      }

      while (v18 < *v17);
    }

    return;
  }

  v15 = this;
  if (a1 != a2)
  {
    v15 = this;
    v16 = a1;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v15, v16);
      ++v22;
      v16 = (v16 + 272);
      v15 = (v15 + 272);
    }

    while (v16 != a2);
  }

  std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,kaldi::quasar::TranslationUtil::NbestElement *,kaldi::quasar::TranslationUtil::NbestElement *,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v7, v15, a2, a3, a1, a4);
  v7 = v20;
  if (v20)
  {
    goto LABEL_11;
  }
}

void sub_1B58C3198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
    do
    {
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a4, a3, v4 + 272 * (v7 >> 1)))
      {
        v7 >>= 1;
      }

      else
      {
        v4 += 272 * (v7 >> 1) + 272;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

uint64_t std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,kaldi::quasar::TranslationUtil::NbestElement *,kaldi::quasar::TranslationUtil::NbestElement *,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  if (result != a2)
  {
    v11 = result;
    while (a3 != a4)
    {
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a6, a3, v11))
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, a3);
        a3 += 272;
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v11);
        v11 += 272;
      }

      a5 += 272;
      if (v11 == a2)
      {
        return result;
      }
    }

    do
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v11);
      v11 += 272;
      a5 += 272;
    }

    while (v11 != a2);
  }

  return result;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement *>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement *>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, float **a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    v15 = a10 - 272;
    while (a6 != a8)
    {
      v16 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(*a11, v14 - 272, a6 - 272);
      if (v16)
      {
        v17 = a6 - 272;
      }

      else
      {
        v17 = v14 - 272;
      }

      if (v16)
      {
        a6 -= 272;
      }

      else
      {
        v14 -= 272;
      }

      kaldi::quasar::TranslationUtil::NbestElement::operator=(v15, v17);
      v15 -= 272;
      if (v14 == a4)
      {
        return;
      }
    }

    for (; v14 != a4; v15 -= 272)
    {
      v14 -= 272;
      kaldi::quasar::TranslationUtil::NbestElement::operator=(v15, v14);
    }
  }
}

char *std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v10 = a2;
  v11 = a1;
  while (1)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v11, &v10);
    v5 = v11 + 272;
    v6 = v10 + 272;
    v10 = v6;
    v11 = (v11 + 272);
    if (v6 == a3)
    {
      break;
    }

    if (v5 == v4)
    {
      v4 = v6;
    }
  }

  if (v5 != v4)
  {
    do
    {
      v10 = v4;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v11, &v10);
        v7 = v11 + 272;
        v8 = v10 + 272;
        v10 = v8;
        v11 = (v11 + 272);
        if (v8 == a3)
        {
          break;
        }

        if (v7 == v4)
        {
          v4 = v8;
        }
      }
    }

    while (v7 != v4);
  }

  return v5;
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ShiftAlignments(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v6 = *v2;
      v5 = v2[1];
      if (v5 != *v2)
      {
        v7 = 0;
        v8 = -152;
        do
        {
          if (v7)
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v6 + v8), *(v6 + v8 + 240), *(v6 + v8 + 248), (*(v6 + v8 + 248) - *(v6 + v8 + 240)) >> 2);
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((*v2 + v8 + 24), *(*v2 + v8 + 264), *(*v2 + v8 + 272), (*(*v2 + v8 + 272) - *(*v2 + v8 + 264)) >> 2);
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((*v2 + v8 + 48), *(*v2 + v8 + 288), *(*v2 + v8 + 296), (*(*v2 + v8 + 296) - *(*v2 + v8 + 288)) >> 2);
            v6 = *v2;
            v5 = v2[1];
          }

          ++v7;
          v8 += 240;
        }

        while (v7 < 0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 4));
        if (v6 != v5 && *(v5 - 216) == *(a1 + 5180))
        {
          kaldi::quasar::TranslationUtil::PathElement::~PathElement((v5 - 240));
          v2[1] = v9;
        }
      }

      v2 += 34;
    }

    while (v2 != v3);
  }
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, const kaldi::quasar::TranslationUtil::NbestElement **a2, void **a3, float a4, float a5, float a6)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v87, (a1 + 4856), a1 + 5688, __p);
  if (v86 < 0)
  {
    operator delete(__p[0]);
    if (!a2)
    {
LABEL_8:
      v14 = 2147500000.0;
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_8;
  }

  v13 = 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 4);
  if (!v13)
  {
    goto LABEL_8;
  }

  if (v13 == 1)
  {
    v14 = 0.0;
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Looking for UNK symbol ", 23);
      MEMORY[0x1B8C84C00](v16, (*(a1 + 5184) + 1));
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    v17 = kaldi::quasar::TorchEncoderDecoder::OutputSymbols(*(a1 + 136));
    (*(*v17 + 88))(&v82);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "UNK label : ", 12);
      if ((v84 & 0x80u) == 0)
      {
        v19 = &v82;
      }

      else
      {
        v19 = v82;
      }

      if ((v84 & 0x80u) == 0)
      {
        v20 = v84;
      }

      else
      {
        v20 = v83;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    v21 = v84;
    if ((v84 & 0x80u) != 0)
    {
      v21 = v83;
    }

    if (!v21)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "No UNK symbol in translation model vocabulary", 45);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v22 = (*(*a3[4] + 120))(a3[4]);
    v23 = v22;
    if (!v22)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Language model does not have output symbol table", 48);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v24 = (*(*v22 + 96))(v22, &v82);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "LM UNK ID ", 10);
      MEMORY[0x1B8C84C00](v25, v24);
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    v76 = a1;
    if (v24 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Language model does not have OOV symbol : ", 42);
      if ((v84 & 0x80u) == 0)
      {
        v73 = &v82;
      }

      else
      {
        v73 = v82;
      }

      if ((v84 & 0x80u) == 0)
      {
        v74 = v84;
      }

      else
      {
        v74 = v83;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v27 = *a2;
    v26 = a2[1];
    v75 = a2;
    if (*a2 == v26)
    {
      v14 = 2147500000.0;
    }

    else
    {
      v28 = 1.0 - a4;
      v14 = 2147500000.0;
      do
      {
        v29 = (**a3)(a3);
        if ((*(v27 + 14) - 5) > 1)
        {
          v31 = v29;
          v33 = *v27;
          v32 = *(v27 + 1);
          v34 = 0.0;
          while (v33 != v32)
          {
            v35 = (*(*v23 + 96))(v23, v33);
            if (v35 == -1)
            {
              v35 = v24;
              if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to find ", 15);
                v37 = MEMORY[0x1B8C84C00](v36, v24);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " in LM", 6);
                kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
                v35 = v24;
              }
            }

            if ((((*a3)[4])(a3, v31, v35, &v77) & 1) == 0)
            {
              if (kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Word lookup failure : ", 22);
                v39 = *(v33 + 23);
                if (v39 >= 0)
                {
                  v40 = v33;
                }

                else
                {
                  v40 = *v33;
                }

                if (v39 >= 0)
                {
                  v41 = *(v33 + 23);
                }

                else
                {
                  v41 = *(v33 + 8);
                }

                v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
                v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " (label=", 8);
                v44 = MEMORY[0x1B8C84C00](v43, v35);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ")", 1);
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
              }

              v34 = INFINITY;
              break;
            }

            v31 = HIDWORD(v78);
            v34 = v34 + *&v78;
            v33 += 240;
          }

          v45 = ((*a3)[2])(a3, v31);
          v46 = *(v27 + 7);
          v81[0] = *(v27 + 6);
          v81[1] = v46;
          v47 = v28 * v46;
          *(v27 + 6) = (v34 + v45) * a4;
          *(v27 + 7) = v47;
          *(v27 + 8) = v45 * a4;
          *(v27 + 9) = v28 * *(v27 + 9);
          v80[0] = (v34 + v45) * a4;
          v80[1] = v47;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v48 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestToString(v76, v27, &v77);
          v49 = *(v27 + 8);
          v50 = *(v27 + 9);
          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Old Cost = ", 11);
            v52 = fst::operator<<<float>(v51, v81);
            v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ", New cost = ", 13);
            v54 = fst::operator<<<float>(v53, v80);
            v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", Hyp = ", 8);
            if (v79 >= 0)
            {
              v56 = &v77;
            }

            else
            {
              v56 = v77;
            }

            if (v79 >= 0)
            {
              v57 = HIBYTE(v79);
            }

            else
            {
              v57 = v78;
            }

            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v56, v57);
            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " finalcost=", 11);
            fst::operator<<<float>(v59, v27 + 8);
            kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
          }

          if (((v48 + v49) + v50) < v14)
          {
            v14 = (v48 + v49) + v50;
          }

          if (SHIBYTE(v79) < 0)
          {
            operator delete(v77);
          }
        }

        else
        {
          v30 = *(v27 + 7);
          if ((*(v27 + 6) + v30) < v14)
          {
            v14 = *(v27 + 6) + v30;
          }
        }

        v27 = (v27 + 272);
      }

      while (v27 != v26);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::NbestCompare(&v77, *(v76 + 5224), a5, a6);
    v60 = *v75;
    v61 = v75[1];
    __p[0] = v77;
    LODWORD(__p[1]) = v78;
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare>(v60, v61, __p);
    v62 = *v75;
    v63 = v75[1];
    if (*v75 != v63)
    {
      v64 = v77;
      v65 = *(&v77 + 1);
      v66 = *&v78;
      v67 = powf(*&v78 + 1.0, *(&v77 + 1));
      do
      {
        v68 = *(v62 + 6);
        v69 = *(v62 + 7);
        v70 = (*(v62 + 25) - *(v62 + 24)) >> 2;
        if (v64 == 2)
        {
          v71 = powf(v66 + v70, v65) / v67;
        }

        else
        {
          v71 = 1.0;
          if (v64 == 1)
          {
            v71 = (v70 + 1);
          }
        }

        *(v62 + 10) = (v68 + v69) / v71;
        v62 = (v62 + 272);
      }

      while (v62 != v63);
    }

    if (v84 < 0)
    {
      operator delete(v82);
    }
  }

LABEL_9:
  kaldi::quasar::TimeBlock::~TimeBlock(v87, v12);
  return v14;
}

void sub_1B58C3C84(_Unwind_Exception *a1, clockid_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::TimeBlock::~TimeBlock((v31 - 200), a2);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(uint64_t a1, const kaldi::quasar::TranslationUtil::NbestElement **a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v11, (a1 + 4856), a1 + 5696, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    if ((*(v7 + 14) - 5) > 1)
    {
      if (*(a1 + 5673) == 1)
      {
        kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignConfidencesFromConfidenceModel(a1, v7, a3);
      }

      else
      {
        kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignConfidencesFromTranslationModel(a1, v7, a3);
      }
    }

    else
    {
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignHightestPossibleConfidences(a1, v7);
    }

    v7 = (v7 + 272);
  }

  if (*(a1 + 5674))
  {
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1}>(*a2, a2[1], __p);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v11, v6);
}

void std::vector<kaldi::quasar::TranslationUtil::NbestElement>::resize(kaldi::quasar::TranslationUtil::NbestElement *a1, unint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = 0xF0F0F0F0F0F0F0F1 * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 272 * a2;
    while (v3 != v7)
    {
      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement((v3 - 272));
    }

    *(a1 + 1) = v7;
  }
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestToString(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v5 = *a2;
  v6 = a2[1];
  v7 = 0.0;
  if (*a2 != v6)
  {
    do
    {
      v8 = *(v5 + 23);
      if (v8 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = *v5;
      }

      if (v8 >= 0)
      {
        v10 = *(v5 + 23);
      }

      else
      {
        v10 = *(v5 + 8);
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
      v7 = v7 + (*(v5 + 80) + *(v5 + 84));
      v5 += 240;
    }

    while (v5 != v6);
  }

  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v15;
  v12 = MEMORY[0x1E69E54D8];
  *(a3 + 16) = v16;
  v17[0] = *v12;
  v13 = v12[9];
  *(v17 + *(v17[0] - 24)) = v12[8];
  v18 = v13;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v22);
  return v7;
}

void sub_1B58C414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::NNMTTransliterator::Transliterate<std::vector<kaldi::quasar::TranslationUtil::NbestElement>>(uint64_t result, uint64_t *a2)
{
  v12 = result;
  if (*(result + 4192) || *(result + 4200) == 1)
  {
    v2 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      v10 = *MEMORY[0x1E69E54D8];
      v8 = *(MEMORY[0x1E69E54D8] + 72);
      v9 = *(MEMORY[0x1E69E54D8] + 64);
      do
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
        v4 = *v2;
        v3 = *(v2 + 8);
        while (v4 != v3)
        {
          memset(&v16, 0, sizeof(v16));
          kaldi::SplitStringToVector(v4, "\", 1, &v16);
          if (v16.__r_.__value_.__l.__size_ != v16.__r_.__value_.__r.__words[0])
          {
            __p[0] = 0;
            __p[1] = 0;
            v15 = 0;
            memset(v13, 0, sizeof(v13));
            kaldi::SplitStringToVector(v16.__r_.__value_.__l.__data_, "_", 1, v13);
            kaldi::JoinVectorToString<std::string>(v13, " ", __p);
            if (v15 >= 0)
            {
              v5 = __p;
            }

            else
            {
              v5 = __p[0];
            }

            if (v15 >= 0)
            {
              v6 = HIBYTE(v15);
            }

            else
            {
              v6 = __p[1];
            }

            v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v5, v6);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
            v23 = v13;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v23);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }
          }

          __p[0] = &v16;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
          v4 += 10;
        }

        std::stringbuf::str();
        kaldi::Trim(&v16);
        kaldi::quasar::NNMTTransliterator::Transliterate(v12, __p);
        if (*(v2 + 119) < 0)
        {
          operator delete(*(v2 + 96));
        }

        *(v2 + 96) = *__p;
        *(v2 + 112) = v15;
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }

        v17[0] = v10;
        *(v17 + *(v10 - 24)) = v9;
        v18 = v8;
        v19 = MEMORY[0x1E69E5548] + 16;
        if (v21 < 0)
        {
          operator delete(v20[7].__locale_);
        }

        v19 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v20);
        std::iostream::~basic_iostream();
        result = MEMORY[0x1B8C85200](&v22);
        v2 += 272;
      }

      while (v2 != v11);
    }
  }

  return result;
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignHightestPossibleConfidences(uint64_t a1, uint64_t *a2)
{
  *(a2 + 240) = 0;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if (*(a2 + 88) == 1)
      {
        v5 = 1065353216;
        std::vector<float>::push_back[abi:ne200100](a2 + 27, &v5);
      }

      *(v2 + 232) = 1000;
      v2 += 240;
    }

    while (v2 != v3);
  }
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignConfidencesFromConfidenceModel(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::Matrix<float>::Matrix(&v58);
  if (*(a1 + 5136) == *(a1 + 5128) || *(a1 + 5675) != 1)
  {
    kaldi::quasar::TorchEncoderDecoder::Align(*(a1 + 136), (a2 + 168), (a2 + 192), a1 + 5632, &v58);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v48, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Alignment cost ", 15);
      std::ostream::operator<<();
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v48);
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (*a2 == v7)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      do
      {
        v8 = v6[11];
        v9 = v6[12];
        while (v8 != v9)
        {
          LODWORD(v48.__locale_) = *v8;
          std::vector<int>::push_back[abi:ne200100](&v55, &v48);
          ++v8;
        }

        v10 = v6[23];
        v11 = v6[24];
        while (v10 != v11)
        {
          LODWORD(v48.__locale_) = *v10;
          std::vector<float>::push_back[abi:ne200100](&v52, &v48);
          ++v10;
        }

        v6 += 30;
      }

      while (v6 != v7);
      v12 = v55;
      v13 = v56;
    }

    v14 = kaldi::MatrixBase<float>::NumCols(a1 + 5632);
    kaldi::Matrix<float>::Resize(&v58, (v13 - v12) >> 2, (v14 + 1), 0, 0);
    if (v56 == v55)
    {
      v19 = 0;
    }

    else
    {
      v15 = 0;
      v16 = v59;
      do
      {
        kaldi::SubMatrix<float>::SubMatrix(&v48, &v58, v15, 1, 0, v16);
        kaldi::CuMatrixBase<float>::CopyToMat<float>(*(a1 + 5128) + 48 * *&v55[4 * v15], &v48, 111);
        quasar::Bitmap::~Bitmap(&v48);
        v17 = v52[v15];
        v18 = kaldi::MatrixBase<float>::NumCols(&v58);
        v16 = v59;
        *(v58 + 4 * v61 * v15++ + 4 * v18 - 4) = v17;
        v19 = (v56 - v55) >> 2;
      }

      while (v19 > v15);
    }

    v20 = kaldi::MatrixBase<float>::NumCols(a1 + 5632);
    kaldi::Matrix<float>::Matrix(&v48, v19, v20, 0, 0);
    v21 = *(a2 + 192);
    if (*(a2 + 200) != v21)
    {
      v22 = 0;
      do
      {
        v23 = *(v21 + 4 * v22);
        kaldi::SubMatrix<float>::SubMatrix(v45, &v48, v22, 1, 0, v49);
        kaldi::SubMatrix<float>::SubMatrix(v51, a1 + 5632, --v23, 1, 0, *(a1 + 5640));
        kaldi::SubMatrix<float>::SubMatrix(v50, a1 + 5632, v23, 1, 0, *(a1 + 5640));
        kaldi::MatrixBase<float>::CopyFromMat<float>(v45, v50, 111);
        quasar::Bitmap::~Bitmap(v50);
        quasar::Bitmap::~Bitmap(v51);
        quasar::Bitmap::~Bitmap(v45);
        ++v22;
        v21 = *(a2 + 192);
      }

      while (v22 < (*(a2 + 200) - v21) >> 2);
    }

    v24 = kaldi::MatrixBase<float>::NumCols(&v58);
    kaldi::SubMatrix<float>::SubMatrix(v45, &v58, 0, v60, 0, v24 - 1);
    kaldi::MatrixBase<float>::MulElements(v45, &v48);
    quasar::Bitmap::~Bitmap(v45);
    kaldi::Matrix<float>::~Matrix(&v48);
    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }

  v25 = kaldi::MatrixBase<float>::NumRows(&v58);
  v26 = kaldi::MatrixBase<float>::NumCols(&v58);
  kaldi::CuMatrix<float>::CuMatrix(&v48, v25, v26, 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat(&v48, &v58, 111);
  v27 = kaldi::MatrixBase<float>::NumRows(&v58);
  kaldi::CuMatrix<float>::CuMatrix(v45, v27, 1, 0, 0, 0);
  kaldi::nnet1::Nnet::Feedforward((a1 + 5256), &v48, v45, 0xFFFFFFFF, 0);
  kaldi::Matrix<float>::Resize(&v58, v47, v46, 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(v45, &v58, 111);
  for (i = 0; i != kaldi::MatrixBase<float>::NumRows(&v58); ++i)
  {
    std::vector<float>::push_back[abi:ne200100]((a2 + 216), (v58 + 4 * v61 * i + 4));
  }

  v29 = *(a2 + 8);
  v30 = *a2;
  if (v29 == *a2)
  {
    LODWORD(v43) = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0xEEEEEEEEEEEEEEEFLL * ((v29 - *a2) >> 4);
    v33 = *(a2 + 88);
    if (v32 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0xEEEEEEEEEEEEEEEFLL * ((v29 - *a2) >> 4);
    }

    do
    {
      if (v33)
      {
        v35 = &v30[30 * v31];
        v36 = v35[20];
        v37 = v35[21];
        if (v36 == v37)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = 0.0;
          v39 = v36;
          do
          {
            v40 = *v39++;
            v38 = v38 + *(*(a2 + 216) + 4 * v40);
          }

          while (v39 != v37);
        }

        v41 = v38 / (v37 - v36);
      }

      else
      {
        v41 = *(*(a2 + 216) + 4 * v31);
      }

      LODWORD(v30[30 * v31++ + 29]) = llround(v41 * 998.0 + 1.0);
    }

    while (v31 != v34);
    LODWORD(v42) = 0;
    do
    {
      v42 = *(v30 + 58) + v42;
      v30 += 30;
    }

    while (v30 != v29);
    v43 = v42 / v32;
  }

  *(a2 + 240) = v43 < a3;
  kaldi::CuMatrix<float>::~CuMatrix(v45);
  kaldi::CuMatrix<float>::~CuMatrix(&v48);
  return kaldi::Matrix<float>::~Matrix(&v58);
}

void sub_1B58C4AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  quasar::Bitmap::~Bitmap(&a9);
  kaldi::Matrix<float>::~Matrix(&a15);
  v17 = *(v15 - 168);
  if (v17)
  {
    *(v15 - 160) = v17;
    operator delete(v17);
  }

  v18 = *(v15 - 144);
  if (v18)
  {
    *(v15 - 136) = v18;
    operator delete(v18);
  }

  kaldi::Matrix<float>::~Matrix(v15 - 120);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignConfidencesFromTranslationModel(uint64_t a1, const void **a2, int a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      if (*(a2 + 88) == 1)
      {
        v7 = *(v6 + 23);
        v8 = *(v6 + 24);
        if (v7 == v8)
        {
          goto LABEL_9;
        }

        v9 = 0;
        do
        {
          v10 = *v7++;
          v11 = expf(-v10);
          v9 += llround(v11 * 998.0 + 1.0);
          v17 = v11;
          std::vector<float>::push_back[abi:ne200100](a2 + 27, &v17);
        }

        while (v7 != v8);
        v12 = *(v6 + 23);
        v13 = *(v6 + 24);
        if (v12 == v13)
        {
LABEL_9:
          LODWORD(v14) = 0;
        }

        else
        {
          v14 = v9 / ((v13 - v12) >> 2);
        }
      }

      else
      {
        LODWORD(v14) = llround(expf(-*(v6 + 21)) * 998.0 + 1.0);
      }

      *(v6 + 58) = v14;
      v6 += 240;
    }

    while (v6 != v5);
    v6 = *a2;
    v5 = a2[1];
  }

  LODWORD(v15) = 0;
  if (v5 != v6)
  {
    v16 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 4);
    do
    {
      v15 = *(v6 + 58) + v15;
      v6 += 240;
    }

    while (v6 != v5);
    v15 /= v16;
  }

  *(a2 + 240) = v15 < a3;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1}>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, uint64_t a3)
{
  v6 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
    while (1)
    {
      v9 = operator new(272 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1B58C4DDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, uint64_t a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *a5, uint64_t a6)
{
  v28 = a1;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v27 = a2 - 272;
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v25, (a2 - 272));
      v8 = v25;
      if (v26 == v25)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        LODWORD(v9) = 0;
        do
        {
          v9 = *(v8 + 232) + v9;
          v8 += 240;
        }

        while (v8 != v26);
        v10 = v9 / (0xEEEEEEEEEEEEEEEFLL * ((v26 - v25) >> 4));
      }

      v19 = *a1;
      v18 = *(a1 + 1);
      if (v18 == *a1)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        LODWORD(v20) = 0;
        do
        {
          v20 = *(v19 + 232) + v20;
          v19 += 240;
        }

        while (v19 != v18);
        v21 = v20 / (0xEEEEEEEEEEEEEEEFLL * ((v18 - *a1) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v25);
      if (v10 > v21)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v28, &v27);
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, a2);
    }

    else
    {
      v14 = a5;
      v15 = a4 >> 1;
      v16 = a1 + 272 * (a4 >> 1);
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, (a1 + 272 * (a4 >> 1)), a3, a4 >> 1, a5);
        v22 = a4 - v15;
        v23 = &v14[34 * v15];
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>((a1 + 272 * (a4 >> 1)), a2, a3, v22, v23);
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v14, v23, v23, &v14[34 * a4], a1);
        if (v14)
        {
          v24 = 0;
          do
          {
            kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v14);
            ++v24;
            v14 += 34;
          }

          while (v24 < a4);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, a1 + 272 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v17 = a4 - v15;
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v16, a2, a3, v17, v14, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, v16, a2, a3, v15, v17, v14, a6);
      }
    }
  }
}

void sub_1B58C5088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 272);
    if ((a1 + 272) != a2)
    {
      v5 = a1;
      do
      {
        v6 = v4;
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v27, v4);
        v7 = v27;
        if (v28 == v27)
        {
          LODWORD(v9) = 0;
        }

        else
        {
          LODWORD(v8) = 0;
          do
          {
            v8 = *(v7 + 232) + v8;
            v7 += 240;
          }

          while (v7 != v28);
          v9 = v8 / (0xEEEEEEEEEEEEEEEFLL * ((v28 - v27) >> 4));
        }

        v11 = *v5;
        v10 = *(v5 + 1);
        if (v10 == *v5)
        {
          LODWORD(v13) = 0;
        }

        else
        {
          LODWORD(v12) = 0;
          do
          {
            v12 = *(v11 + 232) + v12;
            v11 += 240;
          }

          while (v11 != v10);
          v13 = v12 / (0xEEEEEEEEEEEEEEEFLL * ((v10 - *v5) >> 4));
        }

        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v27);
        if (v9 > v13)
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v26, v6);
          v14 = v6;
          while (1)
          {
            v15 = v5;
            kaldi::quasar::TranslationUtil::NbestElement::operator=(v14, v5);
            if (v5 == a1)
            {
              break;
            }

            kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v24, v26);
            v16 = v24;
            if (v25 == v24)
            {
              LODWORD(v18) = 0;
            }

            else
            {
              LODWORD(v17) = 0;
              do
              {
                v17 = *(v16 + 232) + v17;
                v16 += 240;
              }

              while (v16 != v25);
              v18 = v17 / (0xEEEEEEEEEEEEEEEFLL * ((v25 - v24) >> 4));
            }

            v5 = (v5 - 272);
            v19 = *(v15 - 264);
            v20 = *(v15 - 272);
            if (v19 == v20)
            {
              LODWORD(v23) = 0;
            }

            else
            {
              LODWORD(v21) = 0;
              v22 = 0xEEEEEEEEEEEEEEEFLL * ((v19 - v20) >> 4);
              do
              {
                v21 = *(v20 + 232) + v21;
                v20 += 240;
              }

              while (v20 != v19);
              v23 = v21 / v22;
            }

            kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v24);
            v14 = v15;
            if (v18 <= v23)
            {
              goto LABEL_30;
            }
          }

          v15 = a1;
LABEL_30:
          kaldi::quasar::TranslationUtil::NbestElement::operator=(v15, v26);
          kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v26);
        }

        v4 = (v6 + 272);
        v5 = v6;
      }

      while ((v6 + 272) != a2);
    }
  }
}

const kaldi::quasar::TranslationUtil::NbestElement *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *result, kaldi::quasar::TranslationUtil::NbestElement *a2, uint64_t a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v20 = this;
      v21 = &v22;
      v22 = 0;
      v9 = (a2 - 272);
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v18, (a2 - 272));
      v10 = v18;
      if (v19 == v18)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v11) = 0;
        do
        {
          v11 = *(v10 + 232) + v11;
          v10 += 240;
        }

        while (v10 != v19);
        v12 = v11 / (0xEEEEEEEEEEEEEEEFLL * ((v19 - v18) >> 4));
      }

      v15 = *v8;
      v14 = *(v8 + 1);
      if (v14 == *v8)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        LODWORD(v16) = 0;
        do
        {
          v16 = *(v15 + 232) + v16;
          v15 += 240;
        }

        while (v15 != v14);
        v17 = v16 / (0xEEEEEEEEEEEEEEEFLL * ((v14 - *v8) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v18);
      if (v12 <= v17)
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v8);
      }

      else
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v9);
        v9 = v8;
      }

      ++v22;
      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement((this + 272), v9);
    }

    else if (a4 == 1)
    {

      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(result, result + 272 * (a4 >> 1), a3, a4 >> 1, this, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v8 + 272 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), this + 272 * (a4 >> 1), a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v8, (v8 + 272 * (a4 >> 1)), (v8 + 272 * (a4 >> 1)), a2, this);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(result, a2, this);
    }
  }

  return result;
}

uint64_t *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(uint64_t *result, uint64_t *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *a4, uint64_t a5)
{
  if (result == a2)
  {
LABEL_20:
    while (a3 != a4)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, a3);
      a3 = (a3 + 272);
      a5 += 272;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v17, a3);
      v10 = v17;
      if (v18 == v17)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v11) = 0;
        do
        {
          v11 = *(v10 + 232) + v11;
          v10 += 240;
        }

        while (v10 != v18);
        v12 = v11 / (0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 4));
      }

      v14 = *v9;
      v13 = v9[1];
      if (v13 == *v9)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        LODWORD(v15) = 0;
        do
        {
          v15 = *(v14 + 232) + v15;
          v14 += 240;
        }

        while (v14 != v13);
        v16 = v15 / (0xEEEEEEEEEEEEEEEFLL * ((v13 - *v9) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v17);
      if (v12 <= v16)
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v9);
        v9 += 34;
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, a3);
        a3 = (a3 + 272);
      }

      a5 += 272;
      if (v9 == a2)
      {
        goto LABEL_20;
      }
    }

    while (v9 != a2)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v9);
      v9 += 34;
      a5 += 272;
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, uint64_t a2, kaldi::quasar::TranslationUtil::NbestElement *a3, uint64_t a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *a7, uint64_t a8)
{
  v35 = a2;
  v36 = a1;
  if (a6)
  {
    v9 = a6;
    v13 = a2;
    v14 = a1;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v14, v13, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      while (1)
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v33, v13);
        v15 = v33;
        if (v34 == v33)
        {
          LODWORD(v17) = 0;
        }

        else
        {
          LODWORD(v16) = 0;
          do
          {
            v16 = *(v15 + 232) + v16;
            v15 += 240;
          }

          while (v15 != v34);
          v17 = v16 / (0xEEEEEEEEEEEEEEEFLL * ((v34 - v33) >> 4));
        }

        v19 = *v14;
        v18 = *(v14 + 1);
        if (v18 == *v14)
        {
          LODWORD(v21) = 0;
        }

        else
        {
          LODWORD(v20) = 0;
          do
          {
            v20 = *(v19 + 232) + v20;
            v19 += 240;
          }

          while (v19 != v18);
          v21 = v20 / (0xEEEEEEEEEEEEEEEFLL * ((v18 - *v14) >> 4));
        }

        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v33);
        if (v17 > v21)
        {
          break;
        }

        v14 = (v14 + 272);
        v36 = v14;
        if (!--a5)
        {
          return;
        }
      }

      v31 = a8;
      v30 = a3;
      if (a5 >= v9)
      {
        if (a5 == 1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v36, &v35);
          return;
        }

        v26 = a3;
        v24 = a5 / 2;
        v23 = (v14 + 272 * (a5 / 2));
        v37 = 0;
        v27 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1}>(v13, v23, 0xF0F0F0F0F0F0F0F1 * ((v26 - v13) >> 4));
        v22 = 0xF0F0F0F0F0F0F0F1 * ((v27 - v13) >> 4);
        v25 = v13;
        v13 = v27;
      }

      else
      {
        v22 = v9 / 2;
        v23 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity>(v14, v13, (v13 + 272 * (v9 / 2)));
        v24 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v14) >> 4);
        v25 = v13;
        v13 = (v13 + 272 * (v9 / 2));
      }

      v28 = v13;
      if (v23 != v25)
      {
        v28 = v23;
        if (v13 != v25)
        {
          v28 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v23, v25, v13);
        }
      }

      a5 -= v24;
      v9 -= v22;
      if (v24 + v22 >= a5 + v9)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v28, v13, v30, a4, a5, v9, a7, v31);
        v13 = v23;
        a8 = v31;
        v9 = v22;
        a5 = v24;
        a3 = v28;
      }

      else
      {
        v29 = v23;
        a8 = v31;
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v14, v29, v28, a4, v24, v22, a7, v31);
        v36 = v28;
        v14 = v28;
        a3 = v30;
      }

      v35 = v13;
    }

    while (v9);
  }
}

const kaldi::quasar::TranslationUtil::NbestElement *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *result, const kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (result != a2)
  {
    v5 = result;
    v30 = this;
    v31 = &v32;
    v32 = 0;
    result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    ++v32;
    v6 = (v5 + 272);
    if (v6 != a2)
    {
      v7 = this;
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v28, v6);
        v8 = v28;
        if (v29 == v28)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          LODWORD(v9) = 0;
          do
          {
            v9 = *(v8 + 232) + v9;
            v8 += 240;
          }

          while (v8 != v29);
          v10 = v9 / (0xEEEEEEEEEEEEEEEFLL * ((v29 - v28) >> 4));
        }

        v12 = *v7;
        v11 = *(v7 + 1);
        if (v11 == *v7)
        {
          LODWORD(v14) = 0;
        }

        else
        {
          LODWORD(v13) = 0;
          do
          {
            v13 = *(v12 + 232) + v13;
            v12 += 240;
          }

          while (v12 != v11);
          v14 = v13 / (0xEEEEEEEEEEEEEEEFLL * ((v11 - *v7) >> 4));
        }

        v15 = (v7 + 272);
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v28);
        if (v10 <= v14)
        {
          result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v7 + 272), v6);
          ++v32;
        }

        else
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v7 + 272), v7);
          ++v32;
          v16 = this;
          if (v7 != this)
          {
            while (1)
            {
              kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v26, v6);
              v17 = v26;
              if (v27 == v26)
              {
                LODWORD(v19) = 0;
              }

              else
              {
                LODWORD(v18) = 0;
                do
                {
                  v18 = *(v17 + 232) + v18;
                  v17 += 240;
                }

                while (v17 != v27);
                v19 = v18 / (0xEEEEEEEEEEEEEEEFLL * ((v27 - v26) >> 4));
              }

              v20 = (v7 - 272);
              v21 = *(v7 - 33);
              v22 = *(v7 - 34);
              if (v21 == v22)
              {
                LODWORD(v25) = 0;
              }

              else
              {
                LODWORD(v23) = 0;
                v24 = 0xEEEEEEEEEEEEEEEFLL * ((v21 - v22) >> 4);
                do
                {
                  v23 = *(v22 + 232) + v23;
                  v22 += 240;
                }

                while (v22 != v21);
                v25 = v23 / v24;
              }

              kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v26);
              if (v19 <= v25)
              {
                break;
              }

              kaldi::quasar::TranslationUtil::NbestElement::operator=(v7, v7 - 272);
              v7 = (v7 - 272);
              if (v20 == this)
              {
                v16 = this;
                goto LABEL_31;
              }
            }

            v16 = v7;
          }

LABEL_31:
          result = kaldi::quasar::TranslationUtil::NbestElement::operator=(v16, v6);
        }

        v6 = (v6 + 272);
        v7 = v15;
      }

      while (v6 != a2);
    }
  }

  return result;
}

kaldi::quasar::TranslationUtil::NbestElement *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(kaldi::quasar::TranslationUtil::NbestElement *result, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *a4, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  v5 = this;
  v19 = this;
  v20 = &v21;
  v21 = 0;
  if (result == a2)
  {
LABEL_20:
    while (a3 != a4)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, a3);
      a3 = (a3 + 272);
      v5 = (v5 + 272);
      ++v21;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v17, a3);
      v10 = v17;
      if (v18 == v17)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v11) = 0;
        do
        {
          v11 = *(v10 + 232) + v11;
          v10 += 240;
        }

        while (v10 != v18);
        v12 = v11 / (0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 4));
      }

      v14 = *v9;
      v13 = *(v9 + 1);
      if (v13 == *v9)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        LODWORD(v15) = 0;
        do
        {
          v15 = *(v14 + 232) + v15;
          v14 += 240;
        }

        while (v14 != v13);
        v16 = v15 / (0xEEEEEEEEEEEEEEEFLL * ((v13 - *v9) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v17);
      if (v12 <= v16)
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, v9);
        ++v21;
        v9 = (v9 + 272);
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, a3);
        ++v21;
        a3 = (a3 + 272);
      }

      v5 = (v5 + 272);
      if (v9 == a2)
      {
        goto LABEL_20;
      }
    }

    while (v9 != a2)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, v9);
      v9 = (v9 + 272);
      v5 = (v5 + 272);
      ++v21;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(kaldi::quasar::TranslationUtil::NbestElement *a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, uint64_t a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *a7)
{
  v7 = a7;
  v20 = a7;
  v21 = &v22;
  v22 = 0;
  if (a5 > a6)
  {
    v12 = a7;
    if (a2 != a3)
    {
      v12 = a7;
      v13 = a2;
      do
      {
        v14 = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v12, v13);
        ++v22;
        v13 = (v13 + 272);
        v12 = (v14 + 272);
      }

      while (v13 != a3);
    }

    v19 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement*>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement*>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>>(v12, v12, v7, v7, a2, a2, a1, a1, a3, a3, &v19);
    if (!v7)
    {
      return;
    }

LABEL_11:
    v17 = v21;
    if (*v21)
    {
      v18 = 0;
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v7);
        ++v18;
        v7 = (v7 + 272);
      }

      while (v18 < *v17);
    }

    return;
  }

  v15 = a7;
  if (a1 != a2)
  {
    v15 = a7;
    v16 = a1;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v15, v16);
      ++v22;
      v16 = (v16 + 272);
      v15 = (v15 + 272);
    }

    while (v16 != a2);
  }

  std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v7, v15, a2, a3, a1);
  v7 = v20;
  if (v20)
  {
    goto LABEL_11;
  }
}

void sub_1B58C5EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity>(char *a1, char *a2, kaldi::quasar::TranslationUtil::NbestElement *a3)
{
  v3 = a1;
  if (a2 != a1)
  {
    v5 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v15, a3);
      v6 = v15;
      if (v16 == v15)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        LODWORD(v7) = 0;
        do
        {
          v7 = *(v6 + 232) + v7;
          v6 += 240;
        }

        while (v6 != v16);
        v8 = v7 / (0xEEEEEEEEEEEEEEEFLL * ((v16 - v15) >> 4));
      }

      v9 = &v3[272 * (v5 >> 1)];
      v11 = *v9;
      v10 = v9[1];
      if (v10 == *v9)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        LODWORD(v12) = 0;
        do
        {
          v12 = *(v11 + 232) + v12;
          v11 += 240;
        }

        while (v11 != v10);
        v13 = v12 / (0xEEEEEEEEEEEEEEEFLL * ((v10 - *v9) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v15);
      if (v8 > v13)
      {
        v5 >>= 1;
      }

      else
      {
        v3 = (v9 + 34);
        v5 += ~(v5 >> 1);
      }
    }

    while (v5);
  }

  return v3;
}

uint64_t *std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(uint64_t *result, uint64_t *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *a4, uint64_t a5)
{
  if (result != a2)
  {
    v21 = v5;
    v22 = v6;
    v11 = result;
    while (a3 != a4)
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v19, a3);
      v12 = v19;
      if (v20 == v19)
      {
        LODWORD(v14) = 0;
      }

      else
      {
        LODWORD(v13) = 0;
        do
        {
          v13 = *(v12 + 232) + v13;
          v12 += 240;
        }

        while (v12 != v20);
        v14 = v13 / (0xEEEEEEEEEEEEEEEFLL * ((v20 - v19) >> 4));
      }

      v16 = *v11;
      v15 = v11[1];
      if (v15 == *v11)
      {
        LODWORD(v18) = 0;
      }

      else
      {
        LODWORD(v17) = 0;
        do
        {
          v17 = *(v16 + 232) + v17;
          v16 += 240;
        }

        while (v16 != v15);
        v18 = v17 / (0xEEEEEEEEEEEEEEEFLL * ((v15 - *v11) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v19);
      if (v14 <= v18)
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v11);
        v11 += 34;
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, a3);
        a3 = (a3 + 272);
      }

      a5 += 272;
      if (v11 == a2)
      {
        return result;
      }
    }

    do
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::operator=(a5, v11);
      v11 += 34;
      a5 += 272;
    }

    while (v11 != a2);
  }

  return result;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement*>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement*>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  if (a2 != a4)
  {
    v14 = a2;
    v15 = a10 - 272;
    while (a6 != a8)
    {
      v16 = std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &>::operator()[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement>(a11, (a6 - 272), (v14 - 272));
      if (v16)
      {
        v17 = a6 - 272;
      }

      else
      {
        v17 = v14 - 272;
      }

      if (v16)
      {
        a6 -= 272;
      }

      else
      {
        v14 -= 272;
      }

      kaldi::quasar::TranslationUtil::NbestElement::operator=(v15, v17);
      v15 -= 272;
      if (v14 == a4)
      {
        return;
      }
    }

    for (; v14 != a4; v15 -= 272)
    {
      v14 -= 272;
      kaldi::quasar::TranslationUtil::NbestElement::operator=(v15, v14);
    }
  }
}

BOOL std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &>::operator()[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement>(int a1, uint64_t *a2, kaldi::quasar::TranslationUtil::NbestElement *a3)
{
  kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v13, a3);
  v4 = v13;
  if (v14 == v13)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    LODWORD(v5) = 0;
    do
    {
      v5 = *(v4 + 232) + v5;
      v4 += 240;
    }

    while (v4 != v14);
    v6 = v5 / (0xEEEEEEEEEEEEEEEFLL * ((v14 - v13) >> 4));
  }

  v8 = *a2;
  v7 = a2[1];
  if (v7 == *a2)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    LODWORD(v9) = 0;
    do
    {
      v9 = *(v8 + 232) + v9;
      v8 += 240;
    }

    while (v8 != v7);
    v10 = v9 / (0xEEEEEEEEEEEEEEEFLL * ((v7 - *a2) >> 4));
  }

  v11 = v6 > v10;
  kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v13);
  return v11;
}

char *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1}>(char *a1, uint64_t *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = &a1[272 * (v4 >> 1)];
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v15, v6);
      v7 = v15;
      if (v16 == v15)
      {
        LODWORD(v9) = 0;
      }

      else
      {
        LODWORD(v8) = 0;
        do
        {
          v8 = *(v7 + 232) + v8;
          v7 += 240;
        }

        while (v7 != v16);
        v9 = v8 / (0xEEEEEEEEEEEEEEEFLL * ((v16 - v15) >> 4));
      }

      v11 = *a2;
      v10 = a2[1];
      if (v10 == *a2)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        LODWORD(v12) = 0;
        do
        {
          v12 = *(v11 + 232) + v12;
          v11 += 240;
        }

        while (v11 != v10);
        v13 = v12 / (0xEEEEEEEEEEEEEEEFLL * ((v10 - *a2) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v15);
      if (v9 <= v13)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v9 > v13)
      {
        a1 = v6 + 272;
      }
    }

    while (v4);
  }

  return a1;
}

kaldi::quasar::TranslationUtil::NbestElement *std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__append(kaldi::quasar::TranslationUtil::NbestElement *result, unint64_t a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (0xF0F0F0F0F0F0F0F1 * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 272 * a2);
      v11 = 272 * a2;
      do
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5);
        v5 = (v5 + 272);
        v11 -= 272;
      }

      while (v11);
      v5 = v10;
    }

    *(v3 + 1) = v5;
  }

  else
  {
    v6 = 0xF0F0F0F0F0F0F0F1 * ((v5 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0xF0F0F0F0F0F0F0)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *result) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x78787878787878)
    {
      v9 = 0xF0F0F0F0F0F0F0;
    }

    else
    {
      v9 = v7;
    }

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(result, v9);
    }

    v12 = 272 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 17 * a2;
    v14 = (v12 + 272 * a2);
    v15 = 16 * v13;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v12);
      v12 += 272;
      v15 -= 272;
    }

    while (v15);
    *&v22 = v14;
    v16 = *(v3 + 1);
    v17 = (v21 + *v3 - v16);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement*>(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 2);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B58C6528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<kaldi::quasar::TranslationUtil::NbestElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Decode<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v41, "Nbestlist cannot be null");
    goto LABEL_91;
  }

  if (*(a3 + 307) != 1 || (v6 = (a1 + 4096), (*(a1 + 5237) & 1) == 0))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v41, "Decoder not configured for SentencePiece ID decoding.");
    goto LABEL_91;
  }

  v9 = *(a1 + 136);
  if (v9 && (*(v9 + 2461) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v41, "Model not configured for SentencePiece ID decoding.");
LABEL_91:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v41);
  }

  v10 = *(a1 + 5224);
  v11 = *(a1 + 5200);
  v12 = *(a1 + 5188);
  v13 = *(a1 + 5192);
  v14 = *(a1 + 5196);
  *(a1 + 5200) = *(a3 + 228);
  *(a1 + 5224) = *(a3 + 216);
  if (*a3)
  {
    *(a1 + 5188) = *a3;
  }

  v15 = *(a3 + 4);
  if (v15 != 0.0)
  {
    *(a1 + 5192) = v15;
  }

  v16 = *(a3 + 8);
  if (v16)
  {
    *(a1 + 5196) = v16;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ValidateDecodingParameters(*(a3 + 176), a1, *(a3 + 160), *(a3 + 172));
  v18 = *a4;
    ;
  }

  a4[1] = v18;
  v19 = (*(a1 + 113) & 1) != 0 || *(a1 + 32) != 0;
  if (v19 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Input Hammer not supported for sentencepiece id decoding.", 57);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v41);
  }

  kaldi::quasar::MultiLangDecorator::Apply(a1 + 120, a2, a3 + 64, a3 + 88, *(*(a1 + 136) + 552), &v45);
  if (*(a3 + 232) == 1)
  {
    v20 = kaldi::quasar::MultiLangDecorator::NumTagTokens((a1 + 120));
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 5204) = v20;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LanguageInfo(a3);
    if (v44 >= 0)
    {
      v21 = &v42;
    }

    else
    {
      v21 = v42;
    }

    if (v44 >= 0)
    {
      v22 = HIBYTE(v44);
    }

    else
    {
      v22 = v43;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, v21, v22);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v42);
    }

    kaldi::KaldiLogMessage::~KaldiLogMessage(&v41);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v41, 1);
      kaldi::JoinVectorToString<int>(a2, " ");
      if (v44 >= 0)
      {
        v23 = &v42;
      }

      else
      {
        v23 = v42;
      }

      if (v44 >= 0)
      {
        v24 = HIBYTE(v44);
      }

      else
      {
        v24 = v43;
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, v23, v24);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " -> ", 4);
      kaldi::JoinVectorToString<int>(&v45, " ");
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v42);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v41);
    }
  }

  v29 = v45;
  if (v46 == v45)
  {
    v32 = 3.4028e38;
    if (!v45)
    {
      return v32;
    }

    goto LABEL_86;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  std::vector<std::shared_ptr<kaldi::quasar::PhraseBook>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(&v42, *(a3 + 240), *(a3 + 248), (*(a3 + 248) - *(a3 + 240)) >> 4);
  if (v6[1144] == 1)
  {
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](&v42, (a1 + 392));
  }

  if (v43 != v42 && *(a1 + 5220) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Phrasebook (kaldi level) not supported for sentencepiece id decoding.", 69);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v41);
  }

  v30 = *(a1 + 136);
  if (v30 && *(v30 + 2164) == 1 && *(v30 + 2165) == 1)
  {
    v6[1608] = 1;
  }

  v31 = *(a1 + 5220);
  if (a4[1] == *a4)
  {
    if (v31 == 3)
    {
      goto LABEL_68;
    }
  }

  else if (v31 != 2)
  {
    goto LABEL_68;
  }

  if (v6[800] == 1)
  {
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &v45, a3);
  }

LABEL_68:
  memset(&v41, 0, sizeof(v41));
  v33 = v45;
  for (j = v46; v33 != j; ++v33)
  {
    std::to_string(&v39, *v33);
    std::string::push_back(&v39, 32);
    __p = v39;
    memset(&v39, 0, sizeof(v39));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v36 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v41, v35, v36);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }
  }

  v37 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::PostProcessNbestList<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &v41, a3, a4);
  *(a1 + 5224) = v10;
  *(a1 + 5200) = v11;
  *(a1 + 5188) = v12;
  *(a1 + 5192) = v13;
  *(a1 + 5196) = v14;
  if (v37 == -1.0)
  {
    v32 = 3.4028e38;
  }

  else
  {
    v32 = v37;
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v41.__r_.__value_.__r.__words[0] = &v42;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v41);
  v29 = v45;
  if (v45)
  {
LABEL_86:
    v46 = v29;
    operator delete(v29);
  }

  return v32;
}

void sub_1B58C6B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v24 = (v21 - 168);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v23 = *(v21 - 144);
  if (v23)
  {
    *(v21 - 136) = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ValidateDecodingParameters(float a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Decoder beam (", 14);
    v6 = MEMORY[0x1B8C84C00](v5, a3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, ") should not be negative.");
    goto LABEL_11;
  }

  if (a1 < 0.0 || a1 > 1000.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Decoder confidence threshold (", 30);
    v7 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, ") should be in the range [0, 1000].");
    goto LABEL_11;
  }

  if ((a4 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Decoder maximum nbest list size (", 33);
    v9 = MEMORY[0x1B8C84C00](v8, a4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, ") should not be negative.");
LABEL_11:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v7 = &v8;
  if (*(a3 + 308) == 1)
  {
    kaldi::quasar::Encdec::GetTiming(*(a1 + 136), &v4);
    std::__tree<std::string>::destroy(&v7, v8);
    v3 = v5;
    v7 = v4;
    v8 = v5;
    v9 = v6;
    if (v6)
    {
      *(v5 + 16) = &v8;
      v4 = &v5;
      v5 = 0;
      v6 = 0;
      v3 = 0;
    }

    else
    {
      v7 = &v8;
    }

    std::__tree<std::string>::destroy(&v4, v3);
  }

  fst::VectorFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>::VectorFst();
}

void sub_1B58C7090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, std::locale a11)
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&a11);
  a9 = (v11 - 192);
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightWithStateTpl<fst::LatticeWeightTpl<float>,float,std::vector<float>>,int>>>::~ImplToFst((v11 - 168));
  std::__tree<std::string>::destroy(v11 - 152, *(v11 - 144));
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::PostProcessNbestList<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 136);
  if (v8 && *(v8 + 2164) == 1)
  {
    if (*(v8 + 2165) == 1)
    {
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ShiftAlignments(a1, a4);
    }

    kaldi::quasar::TranslationUtil::ComputeBackwardAlignments(a4);
    kaldi::quasar::TranslationUtil::MergeAlignments(a4);
  }

  v9 = *(a3 + 200);
  v10 = -1.0;
  if (v9)
  {
    v11 = *(a3 + 184) == 3;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v10 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a4, v9, *(a3 + 180), *(a3 + 220), *(a3 + 224));
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::JoinBPEUnitsInNbestList(a1, a4);
  v12 = *(a3 + 200);
  if (v12 && *(a3 + 184) == 4)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Word level LM re-scoring", 24);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v17);
      v12 = *(a3 + 200);
    }

    v10 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a4, v12, *(a3 + 180), *(a3 + 220), *(a3 + 224));
  }

  v13 = *a4;
  v14 = *(a4 + 8);
  while (v13 != v14)
  {
    std::string::operator=(v13 + 5, a2);
    std::string::operator=(v13 + 6, a2);
    v13 = (v13 + 272);
  }

  kaldi::quasar::NNMTTransliterator::Transliterate<std::vector<kaldi::quasar::TranslationUtil::NbestElement>>(a1 + 408, a4);
  if (kaldi::g_kaldi_verbose_level > 0)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v17, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Applying confidence scores to n-best list", 41);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v17);
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(a1, a4, *(a3 + 176));
  v15 = *(a3 + 172);
  if (v15 && 0xF0F0F0F0F0F0F0F1 * ((*(a4 + 8) - *a4) >> 4) > v15)
  {
    std::vector<kaldi::quasar::TranslationUtil::NbestElement>::resize(a4, v15);
  }

  return v10;
}

void sub_1B58C72FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Encdec::GetTiming(const void **this@<X0>, void *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v5, "time total");
  v5[3] = this[287];
  std::string::basic_string[abi:ne200100]<0>(v6, "time start feedforward");
  v7 = this[288];
  std::string::basic_string[abi:ne200100]<0>(v8, "time start ff graph");
  v9 = this[289];
  std::string::basic_string[abi:ne200100]<0>(v10, "time start ff input graph");
  v11 = this[290];
  std::string::basic_string[abi:ne200100]<0>(v12, "time start ff handover graph");
  v13 = this[291];
  std::string::basic_string[abi:ne200100]<0>(v14, "time get history state");
  v15 = this[292];
  std::string::basic_string[abi:ne200100]<0>(v16, "time set history state");
  v17 = this[293];
  std::string::basic_string[abi:ne200100]<0>(v18, "time feed forward");
  v19 = this[294];
  std::string::basic_string[abi:ne200100]<0>(v20, "time ff graph");
  v21 = this[295];
  std::string::basic_string[abi:ne200100]<0>(v22, "time ff readout");
  v23 = this[296];
  std::map<std::string,double>::map[abi:ne200100](a2, v5, 10);
  v4 = 40;
  do
  {
    if (*(&v5[v4 - 1] - 1) < 0)
    {
      operator delete(v5[v4 - 4]);
    }

    v4 -= 4;
  }

  while (v4 * 8);
}

void sub_1B58C74F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = (v10 + 311);
  v13 = -320;
  v14 = v12;
  while (1)
  {
    v15 = *v14;
    v14 -= 32;
    if (v15 < 0)
    {
      operator delete(*(v12 - 23));
    }

    v12 = v14;
    v13 += 32;
    if (!v13)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::DecodeCore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v30, (a1 + 4856), a1 + 5680, &__p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    kaldi::JoinVectorToString<int>(a2, ",", &v27);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 3);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Input : ", 8);
      if (v29 >= 0)
      {
        v9 = &v27;
      }

      else
      {
        v9 = v27;
      }

      if (v29 >= 0)
      {
        v10 = HIBYTE(v29);
      }

      else
      {
        v10 = v28;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v27);
    }
  }

  v11 = (((a2[1] - *a2) >> 2) - (*(a3 + 236) + *(a1 + 5204)));
  if ((*(a1 + 5200) * v11) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(a1 + 5200) * v11);
  }

  v13 = *(a1 + 5188);
  v14 = *(a1 + 5192);
  if (v14 != -1.0)
  {
    v15 = (v14 * v11);
    if (*(a1 + 5196) > v15)
    {
      v15 = *(a1 + 5196);
    }

    if (v15 >= v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = v15;
    }
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel((a1 + 136), a3 + 136, a3 + 88, 0, &v23);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (*(a3 + 160))
  {
    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Beam decoding", 13);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Init<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a4);
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Read<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a3, a2, 0);
  }

  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Greedy decoding", 15);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  kaldi::quasar::Encdec::Start(*(a1 + 136), *(a3 + 312), (a3 + 112));
  v16 = *(a1 + 136);
  v17 = *(a3 + 288);
  v18 = *(a3 + 292);
  __p = 0uLL;
  v26 = 0;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SuppressedIds(a1, a3 + 64, a3 + 88, (a3 + 328), &v27);
  kaldi::quasar::Encdec::ConstrainSoftmax(v16, a3 + 264, v17, v18, a2, &__p, &v27);
  std::__tree<int>::destroy(&v27, v28);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  (*(*a4 + 224))(a4);
  __p = 0uLL;
  v26 = 0;
  v19 = kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::Encdec>(*(a1 + 136), a2, &__p, (a3 + 112), a4, v12, v13);
  kaldi::quasar::Encdec::Finish(*(a1 + 136), v20);
  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v30, v21);
  return v19;
}

void sub_1B58C78AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  kaldi::quasar::TimeBlock::~TimeBlock((v16 - 144), v18);
  _Unwind_Resume(a1);
}

void *std::map<std::string,double>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,double> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

float kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::Encdec>(uint64_t a1, uint64_t *a2, uint64_t a3, const std::string *a4, uint64_t a5, int a6, uint64_t a7)
{
  v25 = 0u;
  v24 = 0u;
  v23 = &unk_1F2D0EE38;
  v26 = 0;
  kaldi::CuMatrix<float>::Resize(&v23, (a2[1] - *a2) >> 2, 1, 0, 0);
  v14 = *a2;
  v15 = a2[1];
  v16 = v15 - *a2;
  if (v15 != *a2)
  {
    v17 = 0;
    v18 = v16 >> 2;
    v19 = v24;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v20 = 4 * v25;
    do
    {
      *v19 = *(v14 + 4 * v17++);
      v19 = (v19 + v20);
    }

    while (v18 != v17);
  }

  v21 = kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::Encdec>(a1, &v23, a3, a4, a5, a6, a7);
  kaldi::CuMatrix<float>::~CuMatrix(&v23);
  return v21;
}

float kaldi::quasar::TMTools::GreedyDecode<kaldi::quasar::Encdec>(uint64_t a1, uint64_t a2, uint64_t a3, const std::string *a4, uint64_t a5, int a6, uint64_t a7)
{
  kaldi::quasar::Encdec::ResetHistoryState(a1);
  kaldi::quasar::Encdec::Start(a1, 1, a4);
  kaldi::quasar::Encdec::StartFeedforward(a1, a2, 0, 0);
  v76 = 0u;
  v75 = 0u;
  v74 = &unk_1F2D0EE38;
  v77 = 0;
  kaldi::CuMatrix<float>::CuMatrix(&v72, 1, 1, 0, 0, 0);
  *v73 = (*(a1 + 824) - 1);
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v14 = 0;
  if ((a7 & 0x80000000) != 0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 0.0;
    while (1)
    {
      kaldi::quasar::Encdec::Feedforward(a1, &v72, &v74);
      kaldi::Matrix<float>::Matrix(v53, HIDWORD(v75), DWORD2(v75), 0, 0);
      kaldi::CuMatrixBase<float>::CopyToMat<float>(&v74, v53, 111);
      v16 = -3.4028e38;
      if (*(a1 + 1519))
      {
        v16 = 0.0;
      }

      v62 = v16;
      if (v14 == a7)
      {
        SoftmaxEosId = kaldi::quasar::Encdec::GetSoftmaxEosId(a1);
        v62 = *(v53[0].__locale_ + SoftmaxEosId);
        v18 = *(a1 + 828) - 1;
      }

      else
      {
        v22 = 0;
        v18 = 0;
        while (v22 != kaldi::MatrixBase<float>::NumCols(v53))
        {
          VocabWordIdx = kaldi::quasar::Encdec::GetVocabWordIdx(a1, v22);
          if ((v14 >= a6 || VocabWordIdx != *(a1 + 828) - 1) && (*(a1 + 1505) != 1 || VocabWordIdx != *(a1 + 832) - 1) && *(v53[0].__locale_ + v22) > v62)
          {
            v62 = *(v53[0].__locale_ + v22);
            v18 = VocabWordIdx;
          }

          ++v22;
        }
      }

      if (*(a1 + 1519) == 1)
      {
        v62 = logf(v62);
      }

      *v73 = v18;
      v19 = v62;
      std::vector<float>::push_back[abi:ne200100](&v63, &v62);
      v20 = *(a1 + 2168);
      if (v20 == *(a1 + 2176))
      {
        v21 = -1;
      }

      else
      {
        v21 = *v20;
      }

      v61 = v21;
      __p = 0;
      v59 = 0;
      v60 = 0;
      v24 = *(a1 + 2208);
      if (v24 >= 1)
      {
        v25 = *(a1 + 2224);
        v78[1] = *(a1 + 2200);
        v78[0] = &unk_1F2CFCA48;
        v78[2] = v24;
        v78[3] = v25;
        kaldi::CuVector<float>::CuVector(&v79, v78);
        if (v81 >= 1)
        {
          v26 = 0;
          do
          {
            LODWORD(v78[0]) = v80[v26];
            std::vector<float>::push_back[abi:ne200100](&__p, v78);
            ++v26;
          }

          while (v26 < v81);
        }

        kaldi::CuVector<float>::~CuVector(&v79);
      }

      v27 = *(a1 + 828) - 1;
      if (v18 == v27)
      {
        if (*(a1 + 2164) == 1 && *(a1 + 2165) == 1)
        {
          std::vector<int>::push_back[abi:ne200100](&v69, &v61);
          std::vector<std::vector<float>>::push_back[abi:ne200100](&v66, &__p);
          LODWORD(v79) = v18 + 1;
          std::vector<int>::push_back[abi:ne200100](a3, &v79);
          LODWORD(v79) = 0;
          std::vector<float>::push_back[abi:ne200100](&v63, &v79);
        }
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](&v69, &v61);
        std::vector<std::vector<float>>::push_back[abi:ne200100](&v66, &__p);
        LODWORD(v79) = v18 + 1;
        std::vector<int>::push_back[abi:ne200100](a3, &v79);
      }

      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      v15 = v15 + v19;
      kaldi::Matrix<float>::~Matrix(v53);
      if (v18 == v27)
      {
        break;
      }

      if (v14++ == a7)
      {
        goto LABEL_41;
      }
    }
  }

  if (v14 == a7 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v53);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "Decoder hit max sentence length : ", 34);
    v30 = MEMORY[0x1B8C84C00](v29, a7);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " ", 1);
    MEMORY[0x1B8C84C00](v31, a7);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v53);
  }

LABEL_41:
  if (*(a1 + 1504) == 1 && v69 != v70)
  {
    v32 = v70 - 4;
    if (v70 - 4 > v69)
    {
      v33 = v69 + 4;
      do
      {
        v34 = *(v33 - 1);
        *(v33 - 1) = *v32;
        *v32 = v34;
        v32 -= 4;
        v35 = v33 >= v32;
        v33 += 4;
      }

      while (!v35);
    }
  }

  v36 = (*(*a5 + 200))(a5);
  (*(*a5 + 176))(a5, v36);
  if (*(a3 + 8) == *a3)
  {
    v38 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = v36;
    do
    {
      v40 = (*(*a5 + 200))(a5);
      if (v38 >= (v70 - v69) >> 2 || v38 >= (*(a3 + 8) - *a3) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 3) <= v38)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v36 = v40;
      v41 = *(v69 + v38);
      v42 = *(*a3 + 4 * v38);
      v43 = *(v63 + v38);
      v50 = 0;
      v51 = 0;
      v52 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v50, *(v66 + v37), *(v66 + v37 + 8), (*(v66 + v37 + 8) - *(v66 + v37)) >> 2);
      LODWORD(v79) = 0;
      *(&v79 + 1) = -v43;
      v81 = 0;
      v82 = 0;
      v80 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v80, v50, v51, (v51 - v50) >> 2);
      v53[0].__locale_ = __PAIR64__(v42, v41);
      v53[1].__locale_ = v79;
      v55 = 0;
      v56 = 0;
      v54 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v54, v80, v81, (v81 - v80) >> 2);
      v57 = v36;
      (*(*a5 + 208))(a5, v39, v53);
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v50)
      {
        v51 = v50;
        operator delete(v50);
      }

      ++v38;
      v37 += 24;
      v39 = v36;
    }

    while (v38 != (*(a3 + 8) - *a3) >> 2);
  }

  v44 = -*(v63 + v38);
  v46[0] = 0;
  *&v46[1] = v44;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  (*(*a5 + 184))(a5, v36, v46);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  v53[0].__locale_ = &v66;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v53);
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v72);
  kaldi::CuMatrix<float>::~CuMatrix(&v74);
  return -v15;
}

void sub_1B58C8218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  a17 = &a58;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a61)
  {
    a62 = a61;
    operator delete(a61);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&a64);
  kaldi::CuMatrix<float>::~CuMatrix(v64 - 232);
  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3)
{
  v6 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
    while (1)
    {
      v9 = operator new(272 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1B58C8438(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *a5, uint64_t a6)
{
  v19 = a1;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v18 = a2 - 272;
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, a2 - 272, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v19, &v18);
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a2, a3);
    }

    else
    {
      v11 = a5;
      v12 = a4 >> 1;
      v13 = a1 + 272 * (a4 >> 1);
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, (a1 + 272 * (a4 >> 1)), a3, a4 >> 1, a5);
        v15 = a4 - v12;
        v16 = (v11 + 272 * v12);
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>((a1 + 272 * (a4 >> 1)), a2, a3, v15, v16);
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,kaldi::quasar::TranslationUtil::NbestElement *,kaldi::quasar::TranslationUtil::NbestElement *,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v11, v16, v16, v11 + 272 * a4, a1, a3);
        if (v11)
        {
          v17 = 0;
          do
          {
            kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v11);
            ++v17;
            v11 = (v11 + 272);
          }

          while (v17 < a4);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, a1 + 272 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v14 = a4 - v12;
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v13, a2, a3, v14, v11, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(a1, v13, a2, a3, v12, v14, v11, a6);
      }
    }
  }
}

void sub_1B58C8654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 272;
    if ((a1 + 272) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, v5, v9))
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v12, v8);
          v10 = v7;
          while (1)
          {
            kaldi::quasar::TranslationUtil::NbestElement::operator=(a1 + v10 + 272, a1 + v10);
            if (!v10)
            {
              break;
            }

            v10 -= 272;
            if (!kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, v12, a1 + v10))
            {
              v11 = a1 + v10 + 272;
              goto LABEL_10;
            }
          }

          v11 = a1;
LABEL_10:
          kaldi::quasar::TranslationUtil::NbestElement::operator=(v11, v12);
          kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v12);
        }

        v5 = v8 + 272;
        v7 += 272;
      }

      while ((v8 + 272) != a2);
    }
  }
}

const kaldi::quasar::TranslationUtil::NbestElement *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *result, kaldi::quasar::TranslationUtil::NbestElement *a2, float *a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = (a2 - 272);
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a3, a2 - 272, result))
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v10);
        v10 = v9;
      }

      else
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v9);
      }

      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement((this + 272), v10);
    }

    else if (a4 == 1)
    {

      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(result, result + 272 * (a4 >> 1), a3, a4 >> 1, this, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v9 + 272 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), this + 272 * (a4 >> 1), a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v9, (v9 + 272 * (a4 >> 1)), (v9 + 272 * (a4 >> 1)), a2, this, a3);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(result, a2, this, a3);
    }
  }

  return result;
}

void sub_1B58C8924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(kaldi::quasar::TranslationUtil::NbestElement *a1, uint64_t a2, kaldi::quasar::TranslationUtil::NbestElement *a3, float *a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *a7, uint64_t a8)
{
  v37 = a2;
  v38 = a1;
  if (a6)
  {
    v9 = a6;
    v13 = a2;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v38, v13, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v14 = 0;
      v15 = v38;
      v16 = -a5;
      while (!kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a4, v13, v15 + v14))
      {
        v38 = (v15 + v14 + 272);
        v14 += 272;
        if (__CFADD__(v16++, 1))
        {
          return;
        }
      }

      v18 = -v16;
      v34 = a3;
      v35 = a8;
      if (-v16 >= v9)
      {
        if (v16 == -1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v38, &v37);
          return;
        }

        v23 = *(a4 + 2);
        v39 = *a4;
        v40 = v23;
        v33 = v18 / 2;
        if (a3 == v13)
        {
          v28 = a3;
        }

        else
        {
          v24 = v15 + 272 * (v18 / 2);
          v25 = 0xF0F0F0F0F0F0F0F1 * ((a3 - v13) >> 4);
          do
          {
            v26 = v13 + 272 * (v25 >> 1);
            v27 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(&v39, v26, &v24[v14]);
            if (v27)
            {
              v25 += ~(v25 >> 1);
            }

            else
            {
              v25 >>= 1;
            }

            if (v27)
            {
              v13 = (v26 + 272);
            }
          }

          while (v25);
          v28 = v13;
          v13 = v37;
        }

        v19 = 0xF0F0F0F0F0F0F0F1 * ((v28 - v13) >> 4);
        v29 = v15 + 272 * v33;
        v21 = v33;
        v20 = &v29[v14];
        v22 = v13;
        v13 = v28;
      }

      else
      {
        v19 = v9 / 2;
        v20 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity>(v15 + v14, v13, v13 + 272 * (v9 / 2), a4);
        v21 = 0xF0F0F0F0F0F0F0F1 * ((v20 - v15 - v14) >> 4);
        v22 = v13;
        v13 = (v13 + 272 * (v9 / 2));
      }

      v30 = v13;
      if (v20 != v22)
      {
        v30 = v20;
        if (v13 != v22)
        {
          v30 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v20, v22, v13);
        }
      }

      a5 = -v16 - v21;
      v31 = v9 - v19;
      if ((v21 + v19) >= (v9 - (v21 + v19) - v16))
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v30, v13, v34, a4, -v16 - v21, v31, a7, v35);
        v13 = v20;
        v31 = v19;
        a8 = v35;
        a5 = v21;
        a3 = v30;
      }

      else
      {
        v32 = v19;
        a8 = v35;
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v38, v20, v30, a4, v21, v32, a7, v35);
        v38 = v30;
        a3 = v34;
      }

      v37 = v13;
      v9 = v31;
    }

    while (v31);
  }
}

const kaldi::quasar::TranslationUtil::NbestElement *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(const kaldi::quasar::TranslationUtil::NbestElement *result, const kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *this, float *a4)
{
  if (result != a2)
  {
    v7 = result;
    result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    v13 = 1;
    v8 = (v7 + 272);
    if (v8 != a2)
    {
      v9 = 0;
      v10 = this;
      do
      {
        if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a4, v8, v10))
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v10 + 272), v10);
          ++v13;
          v11 = this;
          if (v10 != this)
          {
            v12 = v9;
            while (1)
            {
              v11 = (this + v12);
              if (!kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a4, v8, this + v12 - 272))
              {
                break;
              }

              kaldi::quasar::TranslationUtil::NbestElement::operator=(this + v12, this + v12 - 272);
              v12 -= 272;
              if (!v12)
              {
                v11 = this;
                break;
              }
            }
          }

          result = kaldi::quasar::TranslationUtil::NbestElement::operator=(v11, v8);
        }

        else
        {
          result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v10 + 272), v8);
          ++v13;
        }

        v8 = (v8 + 272);
        v9 += 272;
        v10 = (v10 + 272);
      }

      while (v8 != a2);
    }
  }

  return result;
}

void sub_1B58C8D44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

kaldi::quasar::TranslationUtil::NbestElement *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(kaldi::quasar::TranslationUtil::NbestElement *result, const kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *a4, kaldi::quasar::TranslationUtil::NbestElement *this, float *a6)
{
  v12 = 0;
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, a3);
      a3 = (a3 + 272);
      this = (this + 272);
      ++v12;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      if (kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare::operator()(a6, a3, v11))
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, a3);
        ++v12;
        a3 = (a3 + 272);
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v11);
        ++v12;
        v11 = (v11 + 272);
      }

      this = (this + 272);
      if (v11 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v11 != a2)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v11);
      v11 = (v11 + 272);
      this = (this + 272);
      ++v12;
    }
  }

  return result;
}

void sub_1B58C8E7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(kaldi::quasar::TranslationUtil::NbestElement *a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, float *a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  v7 = this;
  v20 = this;
  v21 = &v22;
  v22 = 0;
  if (a5 > a6)
  {
    v12 = this;
    if (a2 != a3)
    {
      v12 = this;
      v13 = a2;
      do
      {
        v14 = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v12, v13);
        ++v22;
        v13 = (v13 + 272);
        v12 = (v14 + 272);
      }

      while (v13 != a3);
    }

    v19 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement *>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement *>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>>(v12, v12, v7, v7, a2, a2, a1, a1, a3, a3, &v19);
    if (!v7)
    {
      return;
    }

LABEL_11:
    v17 = v21;
    if (*v21)
    {
      v18 = 0;
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v7);
        ++v18;
        v7 = (v7 + 272);
      }

      while (v18 < *v17);
    }

    return;
  }

  v15 = this;
  if (a1 != a2)
  {
    v15 = this;
    v16 = a1;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v15, v16);
      ++v22;
      v16 = (v16 + 272);
      v15 = (v15 + 272);
    }

    while (v16 != a2);
  }

  std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::NbestCompare &,kaldi::quasar::TranslationUtil::NbestElement *,kaldi::quasar::TranslationUtil::NbestElement *,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v7, v15, a2, a3, a1, a4);
  v7 = v20;
  if (v20)
  {
    goto LABEL_11;
  }
}

void sub_1B58C8FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Rescore<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, const kaldi::quasar::TranslationUtil::NbestElement **a2, void **a3, float a4, float a5, float a6)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v75 = a1;
  kaldi::quasar::TimeBlock::TimeBlock(v86, (a1 + 4856), a1 + 5688, __p);
  if (v85 < 0)
  {
    operator delete(__p[0]);
    if (!a2)
    {
LABEL_8:
      v14 = 2147500000.0;
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_8;
  }

  v13 = 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 4);
  if (!v13)
  {
    goto LABEL_8;
  }

  if (v13 == 1)
  {
    v14 = 0.0;
  }

  else
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Looking for UNK symbol ", 23);
      MEMORY[0x1B8C84C00](v16, (*(a1 + 5184) + 1));
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    (*(**(*(a1 + 136) + 560) + 88))(&v81);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "UNK label : ", 12);
      if ((v83 & 0x80u) == 0)
      {
        v18 = &v81;
      }

      else
      {
        v18 = v81;
      }

      if ((v83 & 0x80u) == 0)
      {
        v19 = v83;
      }

      else
      {
        v19 = v82;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    v20 = v83;
    if ((v83 & 0x80u) != 0)
    {
      v20 = v82;
    }

    if (!v20)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "No UNK symbol in translation model vocabulary", 45);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v21 = (*(*a3[4] + 120))(a3[4]);
    v22 = v21;
    if (!v21)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Language model does not have output symbol table", 48);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v23 = (*(*v21 + 96))(v21, &v81);
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "LM UNK ID ", 10);
      MEMORY[0x1B8C84C00](v24, v23);
      kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
    }

    if (v23 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Language model does not have OOV symbol : ", 42);
      if ((v83 & 0x80u) == 0)
      {
        v72 = &v81;
      }

      else
      {
        v72 = v81;
      }

      if ((v83 & 0x80u) == 0)
      {
        v73 = v83;
      }

      else
      {
        v73 = v82;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v72, v73);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    v26 = *a2;
    v25 = a2[1];
    v74 = a2;
    if (*a2 == v25)
    {
      v14 = 2147500000.0;
    }

    else
    {
      v27 = 1.0 - a4;
      v14 = 2147500000.0;
      do
      {
        v28 = (**a3)(a3);
        if ((*(v26 + 14) - 5) > 1)
        {
          v30 = v28;
          v32 = *v26;
          v31 = *(v26 + 1);
          v33 = 0.0;
          while (v32 != v31)
          {
            v34 = (*(*v22 + 96))(v22, v32);
            if (v34 == -1)
            {
              v34 = v23;
              if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Failed to find ", 15);
                v36 = MEMORY[0x1B8C84C00](v35, v23);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " in LM", 6);
                kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
                v34 = v23;
              }
            }

            if ((((*a3)[4])(a3, v30, v34, &v76) & 1) == 0)
            {
              if (kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Word lookup failure : ", 22);
                v38 = *(v32 + 23);
                if (v38 >= 0)
                {
                  v39 = v32;
                }

                else
                {
                  v39 = *v32;
                }

                if (v38 >= 0)
                {
                  v40 = *(v32 + 23);
                }

                else
                {
                  v40 = *(v32 + 8);
                }

                v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
                v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " (label=", 8);
                v43 = MEMORY[0x1B8C84C00](v42, v34);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ")", 1);
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(__p);
              }

              v33 = INFINITY;
              break;
            }

            v30 = HIDWORD(v77);
            v33 = v33 + *&v77;
            v32 += 240;
          }

          v44 = ((*a3)[2])(a3, v30);
          v45 = *(v26 + 7);
          v80[0] = *(v26 + 6);
          v80[1] = v45;
          v46 = v27 * v45;
          *(v26 + 6) = (v33 + v44) * a4;
          *(v26 + 7) = v46;
          *(v26 + 8) = v44 * a4;
          *(v26 + 9) = v27 * *(v26 + 9);
          v79[0] = (v33 + v44) * a4;
          v79[1] = v46;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v47 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestToString(v75, v26, &v76);
          v48 = *(v26 + 8);
          v49 = *(v26 + 9);
          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Old Cost = ", 11);
            v51 = fst::operator<<<float>(v50, v80);
            v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ", New cost = ", 13);
            v53 = fst::operator<<<float>(v52, v79);
            v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ", Hyp = ", 8);
            if (v78 >= 0)
            {
              v55 = &v76;
            }

            else
            {
              v55 = v76;
            }

            if (v78 >= 0)
            {
              v56 = HIBYTE(v78);
            }

            else
            {
              v56 = v77;
            }

            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, v56);
            v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " finalcost=", 11);
            fst::operator<<<float>(v58, v26 + 8);
            kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
          }

          if (((v47 + v48) + v49) < v14)
          {
            v14 = (v47 + v48) + v49;
          }

          if (SHIBYTE(v78) < 0)
          {
            operator delete(v76);
          }
        }

        else
        {
          v29 = *(v26 + 7);
          if ((*(v26 + 6) + v29) < v14)
          {
            v14 = *(v26 + 6) + v29;
          }
        }

        v26 = (v26 + 272);
      }

      while (v26 != v25);
    }

    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare::NbestCompare(&v76, *(v75 + 5224), a5, a6);
    v59 = *v74;
    v60 = v74[1];
    __p[0] = v76;
    LODWORD(__p[1]) = v77;
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestCompare>(v59, v60, __p);
    v61 = *v74;
    v62 = v74[1];
    if (*v74 != v62)
    {
      v63 = v76;
      v64 = *(&v76 + 1);
      v65 = *&v77;
      v66 = powf(*&v77 + 1.0, *(&v76 + 1));
      do
      {
        v67 = *(v61 + 6);
        v68 = *(v61 + 7);
        v69 = (*(v61 + 25) - *(v61 + 24)) >> 2;
        if (v63 == 2)
        {
          v70 = powf(v65 + v69, v64) / v66;
        }

        else
        {
          v70 = 1.0;
          if (v63 == 1)
          {
            v70 = (v69 + 1);
          }
        }

        *(v61 + 10) = (v67 + v68) / v70;
        v61 = (v61 + 272);
      }

      while (v61 != v62);
    }

    if (v83 < 0)
    {
      operator delete(v81);
    }
  }

LABEL_9:
  kaldi::quasar::TimeBlock::~TimeBlock(v86, v12);
  return v14;
}

void sub_1B58C972C(_Unwind_Exception *a1, clockid_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::TimeBlock::~TimeBlock((v31 - 200), a2);
  _Unwind_Resume(a1);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(uint64_t a1, const kaldi::quasar::TranslationUtil::NbestElement **a2, int a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  kaldi::quasar::TimeBlock::TimeBlock(v11, (a1 + 4856), a1 + 5696, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *a2;
  v8 = a2[1];
  while (v7 != v8)
  {
    if ((*(v7 + 14) - 5) > 1)
    {
      if (*(a1 + 5673) == 1)
      {
        kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::AssignConfidencesFromConfidenceModel(a1, v7, a3);
      }

      else
      {
        kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignConfidencesFromTranslationModel(a1, v7, a3);
      }
    }

    else
    {
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::AssignHightestPossibleConfidences(a1, v7);
    }

    v7 = (v7 + 272);
  }

  if (*(a1 + 5674))
  {
    std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1}>(*a2, a2[1], __p);
  }

  kaldi::quasar::TimeBlock::~TimeBlock(v11, v6);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::NbestToString(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v5 = *a2;
  v6 = a2[1];
  v7 = 0.0;
  if (*a2 != v6)
  {
    do
    {
      v8 = *(v5 + 23);
      if (v8 >= 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = *v5;
      }

      if (v8 >= 0)
      {
        v10 = *(v5 + 23);
      }

      else
      {
        v10 = *(v5 + 8);
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v9, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
      v7 = v7 + (*(v5 + 80) + *(v5 + 84));
      v5 += 240;
    }

    while (v5 != v6);
  }

  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v15;
  v12 = MEMORY[0x1E69E54D8];
  *(a3 + 16) = v16;
  v17[0] = *v12;
  v13 = v12[9];
  *(v17 + *(v17[0] - 24)) = v12[8];
  v18 = v13;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v22);
  return v7;
}

void sub_1B58C9B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::AssignConfidencesFromConfidenceModel(uint64_t a1, uint64_t a2, int a3)
{
  kaldi::Matrix<float>::Matrix(&v58);
  if (*(a1 + 5136) == *(a1 + 5128) || *(a1 + 5675) != 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v48, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "Alignment cost ", 15);
      std::ostream::operator<<();
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v48);
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (*a2 == v7)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      do
      {
        v8 = v6[11];
        v9 = v6[12];
        while (v8 != v9)
        {
          LODWORD(v48.__locale_) = *v8;
          std::vector<int>::push_back[abi:ne200100](&v55, &v48);
          ++v8;
        }

        v10 = v6[23];
        v11 = v6[24];
        while (v10 != v11)
        {
          LODWORD(v48.__locale_) = *v10;
          std::vector<float>::push_back[abi:ne200100](&v52, &v48);
          ++v10;
        }

        v6 += 30;
      }

      while (v6 != v7);
      v12 = v55;
      v13 = v56;
    }

    v14 = kaldi::MatrixBase<float>::NumCols(a1 + 5632);
    kaldi::Matrix<float>::Resize(&v58, (v13 - v12) >> 2, (v14 + 1), 0, 0);
    if (v56 == v55)
    {
      v19 = 0;
    }

    else
    {
      v15 = 0;
      v16 = v59;
      do
      {
        kaldi::SubMatrix<float>::SubMatrix(&v48, &v58, v15, 1, 0, v16);
        kaldi::CuMatrixBase<float>::CopyToMat<float>(*(a1 + 5128) + 48 * *&v55[4 * v15], &v48, 111);
        quasar::Bitmap::~Bitmap(&v48);
        v17 = v52[v15];
        v18 = kaldi::MatrixBase<float>::NumCols(&v58);
        v16 = v59;
        *(v58 + 4 * v61 * v15++ + 4 * v18 - 4) = v17;
        v19 = (v56 - v55) >> 2;
      }

      while (v19 > v15);
    }

    v20 = kaldi::MatrixBase<float>::NumCols(a1 + 5632);
    kaldi::Matrix<float>::Matrix(&v48, v19, v20, 0, 0);
    v21 = *(a2 + 192);
    if (*(a2 + 200) != v21)
    {
      v22 = 0;
      do
      {
        v23 = *(v21 + 4 * v22);
        kaldi::SubMatrix<float>::SubMatrix(v45, &v48, v22, 1, 0, v49);
        kaldi::SubMatrix<float>::SubMatrix(v51, a1 + 5632, --v23, 1, 0, *(a1 + 5640));
        kaldi::SubMatrix<float>::SubMatrix(v50, a1 + 5632, v23, 1, 0, *(a1 + 5640));
        kaldi::MatrixBase<float>::CopyFromMat<float>(v45, v50, 111);
        quasar::Bitmap::~Bitmap(v50);
        quasar::Bitmap::~Bitmap(v51);
        quasar::Bitmap::~Bitmap(v45);
        ++v22;
        v21 = *(a2 + 192);
      }

      while (v22 < (*(a2 + 200) - v21) >> 2);
    }

    v24 = kaldi::MatrixBase<float>::NumCols(&v58);
    kaldi::SubMatrix<float>::SubMatrix(v45, &v58, 0, v60, 0, v24 - 1);
    kaldi::MatrixBase<float>::MulElements(v45, &v48);
    quasar::Bitmap::~Bitmap(v45);
    kaldi::Matrix<float>::~Matrix(&v48);
    if (v52)
    {
      v53 = v52;
      operator delete(v52);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }

  v25 = kaldi::MatrixBase<float>::NumRows(&v58);
  v26 = kaldi::MatrixBase<float>::NumCols(&v58);
  kaldi::CuMatrix<float>::CuMatrix(&v48, v25, v26, 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat(&v48, &v58, 111);
  v27 = kaldi::MatrixBase<float>::NumRows(&v58);
  kaldi::CuMatrix<float>::CuMatrix(v45, v27, 1, 0, 0, 0);
  kaldi::nnet1::Nnet::Feedforward((a1 + 5256), &v48, v45, 0xFFFFFFFF, 0);
  kaldi::Matrix<float>::Resize(&v58, v47, v46, 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(v45, &v58, 111);
  for (i = 0; i != kaldi::MatrixBase<float>::NumRows(&v58); ++i)
  {
    std::vector<float>::push_back[abi:ne200100]((a2 + 216), (v58 + 4 * v61 * i + 4));
  }

  v29 = *(a2 + 8);
  v30 = *a2;
  if (v29 == *a2)
  {
    LODWORD(v43) = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0xEEEEEEEEEEEEEEEFLL * ((v29 - *a2) >> 4);
    v33 = *(a2 + 88);
    if (v32 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0xEEEEEEEEEEEEEEEFLL * ((v29 - *a2) >> 4);
    }

    do
    {
      if (v33)
      {
        v35 = &v30[30 * v31];
        v36 = v35[20];
        v37 = v35[21];
        if (v36 == v37)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = 0.0;
          v39 = v36;
          do
          {
            v40 = *v39++;
            v38 = v38 + *(*(a2 + 216) + 4 * v40);
          }

          while (v39 != v37);
        }

        v41 = v38 / (v37 - v36);
      }

      else
      {
        v41 = *(*(a2 + 216) + 4 * v31);
      }

      LODWORD(v30[30 * v31++ + 29]) = llround(v41 * 998.0 + 1.0);
    }

    while (v31 != v34);
    LODWORD(v42) = 0;
    do
    {
      v42 = *(v30 + 58) + v42;
      v30 += 30;
    }

    while (v30 != v29);
    v43 = v42 / v32;
  }

  *(a2 + 240) = v43 < a3;
  kaldi::CuMatrix<float>::~CuMatrix(v45);
  kaldi::CuMatrix<float>::~CuMatrix(&v48);
  return kaldi::Matrix<float>::~Matrix(&v58);
}

void sub_1B58CA0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  quasar::Bitmap::~Bitmap(&a9);
  kaldi::Matrix<float>::~Matrix(&a15);
  v17 = *(v15 - 168);
  if (v17)
  {
    *(v15 - 160) = v17;
    operator delete(v17);
  }

  v18 = *(v15 - 144);
  if (v18)
  {
    *(v15 - 136) = v18;
    operator delete(v18);
  }

  kaldi::Matrix<float>::~Matrix(v15 - 120);
  _Unwind_Resume(a1);
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1}>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, uint64_t a3)
{
  v6 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
  if (a2 - a1 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 4);
    while (1)
    {
      v9 = operator new(272 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1B58CA27C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2, uint64_t a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *a5, uint64_t a6)
{
  v28 = a1;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v27 = a2 - 272;
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v25, (a2 - 272));
      v8 = v25;
      if (v26 == v25)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        LODWORD(v9) = 0;
        do
        {
          v9 = *(v8 + 232) + v9;
          v8 += 240;
        }

        while (v8 != v26);
        v10 = v9 / (0xEEEEEEEEEEEEEEEFLL * ((v26 - v25) >> 4));
      }

      v19 = *a1;
      v18 = *(a1 + 1);
      if (v18 == *a1)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        LODWORD(v20) = 0;
        do
        {
          v20 = *(v19 + 232) + v20;
          v19 += 240;
        }

        while (v19 != v18);
        v21 = v20 / (0xEEEEEEEEEEEEEEEFLL * ((v18 - *a1) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v25);
      if (v10 > v21)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v28, &v27);
      }
    }

    else if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, a2);
    }

    else
    {
      v14 = a5;
      v15 = a4 >> 1;
      v16 = a1 + 272 * (a4 >> 1);
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, (a1 + 272 * (a4 >> 1)), a3, a4 >> 1, a5);
        v22 = a4 - v15;
        v23 = &v14[34 * v15];
        std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>((a1 + 272 * (a4 >> 1)), a2, a3, v22, v23);
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v14, v23, v23, &v14[34 * a4], a1);
        if (v14)
        {
          v24 = 0;
          do
          {
            kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v14);
            ++v24;
            v14 += 34;
          }

          while (v24 < a4);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, a1 + 272 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v17 = a4 - v15;
        std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v16, a2, a3, v17, v14, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(a1, v16, a2, a3, v15, v17, v14, a6);
      }
    }
  }
}

void sub_1B58CA528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 272);
    if ((a1 + 272) != a2)
    {
      v5 = a1;
      do
      {
        v6 = v4;
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v27, v4);
        v7 = v27;
        if (v28 == v27)
        {
          LODWORD(v9) = 0;
        }

        else
        {
          LODWORD(v8) = 0;
          do
          {
            v8 = *(v7 + 232) + v8;
            v7 += 240;
          }

          while (v7 != v28);
          v9 = v8 / (0xEEEEEEEEEEEEEEEFLL * ((v28 - v27) >> 4));
        }

        v11 = *v5;
        v10 = *(v5 + 1);
        if (v10 == *v5)
        {
          LODWORD(v13) = 0;
        }

        else
        {
          LODWORD(v12) = 0;
          do
          {
            v12 = *(v11 + 232) + v12;
            v11 += 240;
          }

          while (v11 != v10);
          v13 = v12 / (0xEEEEEEEEEEEEEEEFLL * ((v10 - *v5) >> 4));
        }

        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v27);
        if (v9 > v13)
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v26, v6);
          v14 = v6;
          while (1)
          {
            v15 = v5;
            kaldi::quasar::TranslationUtil::NbestElement::operator=(v14, v5);
            if (v5 == a1)
            {
              break;
            }

            kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v24, v26);
            v16 = v24;
            if (v25 == v24)
            {
              LODWORD(v18) = 0;
            }

            else
            {
              LODWORD(v17) = 0;
              do
              {
                v17 = *(v16 + 232) + v17;
                v16 += 240;
              }

              while (v16 != v25);
              v18 = v17 / (0xEEEEEEEEEEEEEEEFLL * ((v25 - v24) >> 4));
            }

            v5 = (v5 - 272);
            v19 = *(v15 - 264);
            v20 = *(v15 - 272);
            if (v19 == v20)
            {
              LODWORD(v23) = 0;
            }

            else
            {
              LODWORD(v21) = 0;
              v22 = 0xEEEEEEEEEEEEEEEFLL * ((v19 - v20) >> 4);
              do
              {
                v21 = *(v20 + 232) + v21;
                v20 += 240;
              }

              while (v20 != v19);
              v23 = v21 / v22;
            }

            kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v24);
            v14 = v15;
            if (v18 <= v23)
            {
              goto LABEL_30;
            }
          }

          v15 = a1;
LABEL_30:
          kaldi::quasar::TranslationUtil::NbestElement::operator=(v15, v26);
          kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v26);
        }

        v4 = (v6 + 272);
        v5 = v6;
      }

      while ((v6 + 272) != a2);
    }
  }
}