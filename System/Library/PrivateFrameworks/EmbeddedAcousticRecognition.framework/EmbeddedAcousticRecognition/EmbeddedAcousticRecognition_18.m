void sub_1B5155EB8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5155F30);
}

void sub_1B5155EC8(_Unwind_Exception *a1)
{
  if (v2)
  {
    operator delete(v2);
  }

  v9[0] = &v3;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = &v4;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v9);
  v9[0] = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v9);
  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::MultiLangDecorator::Apply(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    v12 = *(a3 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a3 + 8);
    }

    if (v12)
    {
      if (kaldi::g_kaldi_verbose_level < 5)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v29 = *(a4 + 23);
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(a4 + 8);
      }

      if (v29)
      {
        v30 = kaldi::g_kaldi_verbose_level < 5;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_33;
      }
    }

    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "model does not require the use of src/tar tags", 46);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
LABEL_33:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a6, *a2, a2[1], (a2[1] - *a2) >> 2);
    return;
  }

  if (*(a1 + 4) == 3)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    v9 = *a2;
    v10 = a2[1];
    v11 = (v10 - *a2) >> 2;

    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a6, v9, v10, v11);
  }

  else
  {
    if (!a5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Apply tags to ID sequence require a tag symbol table in MultiLangDecorator!");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
    }

    kaldi::quasar::MultiLangDecorator::GetTags(a1, a3, a4, __p);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    kaldi::SplitStringToVector(__p, " ", 1, &v35);
    __src = 0;
    v33 = 0;
    v34 = 0;
    v14 = v35;
    v15 = v36;
    if (v35 == v36)
    {
      v18 = 0;
    }

    else
    {
      do
      {
        v16 = (*(*a5 + 96))(a5, v14) - 1;
        v17 = v33;
        if (v33 >= v34)
        {
          v19 = __src;
          v20 = v33 - __src;
          v21 = (v33 - __src) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v23 = v34 - __src;
          if ((v34 - __src) >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
          v25 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v25 = v22;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v25);
          }

          v26 = (4 * v21);
          v27 = &v26[-((v33 - __src) >> 2)];
          *v26 = v16;
          v18 = (v26 + 1);
          memcpy(v27, v19, v20);
          v28 = __src;
          __src = v27;
          v33 = v18;
          v34 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v33 = v16;
          v18 = v17 + 4;
        }

        v33 = v18;
        v14 += 24;
      }

      while (v14 != v15);
    }

    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    if ((*(a1 + 4) | 2) == 2)
    {
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a6, 0, __src, v18, (v18 - __src) >> 2);
      v31 = *(a6 + 8);
    }

    else
    {
      v31 = 0;
    }

    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a6, v31, *a2, a2[1], (a2[1] - *a2) >> 2);
    if ((*(a1 + 4) - 1) <= 1)
    {
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a6, *(a6 + 8), __src, v33, (v33 - __src) >> 2);
    }

    if (__src)
    {
      v33 = __src;
      operator delete(__src);
    }

    __src = &v35;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__src);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }
}

void kaldi::quasar::MultiLangDecorator::Apply(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, std::string *a5@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    v18 = *(a3 + 23);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a3 + 8);
    }

    if (v18)
    {
      if (kaldi::g_kaldi_verbose_level < 5)
      {
LABEL_30:
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(a5, *a2, *(a2 + 8));
        }

        else
        {
          *&a5->__r_.__value_.__l.__data_ = *a2;
          a5->__r_.__value_.__r.__words[2] = *(a2 + 16);
        }

        return;
      }
    }

    else
    {
      v19 = *(a4 + 23);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a4 + 8);
      }

      if (v19)
      {
        v20 = kaldi::g_kaldi_verbose_level < 5;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        goto LABEL_30;
      }
    }

    kaldi::KaldiVlogMessage::KaldiVlogMessage(v38, 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "model does not require the use of src/tar tags", 46);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v38);
    goto LABEL_30;
  }

  kaldi::quasar::MultiLangDecorator::GetTags(a1, a3, a4, &v35);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v38);
  v8 = *(a1 + 4);
  switch(v8)
  {
    case 0:
      if ((v37 & 0x80u) == 0)
      {
        v29 = &v35;
      }

      else
      {
        v29 = v35;
      }

      if ((v37 & 0x80u) == 0)
      {
        v30 = v37;
      }

      else
      {
        v30 = v36;
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v29, v30);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " ", 1);
      v25 = *(a2 + 23);
      v26 = *(a2 + 8);
      v27 = (v25 & 0x80u) != 0;
      if ((v25 & 0x80u) == 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      goto LABEL_52;
    case 1:
      v21 = *(a2 + 23);
      if (v21 >= 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a2;
      }

      if (v21 >= 0)
      {
        v23 = *(a2 + 23);
      }

      else
      {
        v23 = *(a2 + 8);
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v22, v23);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ", 1);
      goto LABEL_40;
    case 2:
      if ((v37 & 0x80u) == 0)
      {
        v9 = &v35;
      }

      else
      {
        v9 = v35;
      }

      if ((v37 & 0x80u) == 0)
      {
        v10 = v37;
      }

      else
      {
        v10 = v36;
      }

      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, v9, v10);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
      v13 = *(a2 + 23);
      if (v13 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      if (v13 >= 0)
      {
        v15 = *(a2 + 23);
      }

      else
      {
        v15 = *(a2 + 8);
      }

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
LABEL_40:
      v25 = v37;
      v26 = v36;
      v27 = (v37 & 0x80u) != 0;
      if ((v37 & 0x80u) == 0)
      {
        v28 = &v35;
      }

      else
      {
        v28 = v35;
      }

LABEL_52:
      if (v27)
      {
        v32 = v26;
      }

      else
      {
        v32 = v25;
      }

      goto LABEL_62;
  }

  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = *a2;
  }

  if (v33 >= 0)
  {
    v32 = *(a2 + 23);
  }

  else
  {
    v32 = *(a2 + 8);
  }

  v17 = &v39;
LABEL_62:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v28, v32);
  std::stringbuf::str();
  v38[0] = *MEMORY[0x1E69E54D8];
  v34 = *(MEMORY[0x1E69E54D8] + 72);
  *(v38 + *(v38[0].__locale_ - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v39 = v34;
  v40 = MEMORY[0x1E69E5548] + 16;
  if (v42 < 0)
  {
    operator delete(v41[7].__locale_);
  }

  v40 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](&v43);
  if (v37 < 0)
  {
    operator delete(v35);
  }
}

void quasar::PDecForceAlignBlock::setContextProvider(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::ConfiguredProcessingBlock<quasar::PDecForceAlignOptions>::setContextProvider(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v6 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 2472) = v6;
  v7 = *(a1 + 2480);
  *(a1 + 2480) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B5156784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ConfiguredProcessingBlock<quasar::PDecForceAlignOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B5156874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PDecForceAlignBlock::~PDecForceAlignBlock(quasar::PDecForceAlignBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2488));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 2488));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::PDecForceAlignBlock::inputs@<X0>(quasar::PDecForceAlignBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 2304;
  v3[1] = this + 2360;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

uint64_t non-virtual thunk toquasar::PDecForceAlignBlock::inputs@<X0>(quasar::PDecForceAlignBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 8;
  v3[1] = this + 64;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

void non-virtual thunk toquasar::PDecForceAlignBlock::~PDecForceAlignBlock(char **this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 24);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 24);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::PDecForceAlignBlock::~PDecForceAlignBlock(quasar::PDecForceAlignBlock *this)
{
  v2 = (v1 + 2488);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = (this + *(*this - 24));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 311);

  JUMPOUT(0x1B8C85350);
}

kaldi::quasar::TranslationUtil::NbestElement *kaldi::quasar::TranslationUtil::NbestElement::NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(this + 24) = vnegq_f32(v2);
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 64, "{}");
  *(this + 88) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 240) = 0;
  *(this + 31) = this + 256;
  return this;
}

void sub_1B5156C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        kaldi::quasar::TranslationUtil::PathElement::~PathElement((v4 - 240));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void kaldi::quasar::TranslationUtil::PathElement::~PathElement(kaldi::quasar::TranslationUtil::PathElement *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v8 = (this + 32);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this)
{
  std::__tree<std::string>::destroy(this + 248, *(this + 32));
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

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v5 = this;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::init(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> &>(uint64_t **a1, void **a2)
{
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = **a1;
  quasar::OptionValue<std::string>::value((v4 + 632));
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel(a2, v5, v3, &v12);
  v6 = *&v12.__r_.__value_.__l.__data_;
  *&v12.__r_.__value_.__l.__data_ = 0uLL;
  v7 = *(v4 + 2464);
  *(v4 + 2456) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (v12.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12.__r_.__value_.__l.__size_);
    }
  }

  v8 = *a2;
  if (*(*a2 + 3951) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v8[491], v8[492]);
    v8 = *a2;
  }

  else
  {
    v12 = *(v8 + 491);
  }

  if (*(v8 + 3975) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v8[494], v8[495]);
  }

  else
  {
    __p = *(v8 + 494);
  }

  v9 = kaldi::quasar::ToAddTag(&v12);
  kaldi::quasar::ToTagFormat(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return (v9 << 32) | 1;
}

void sub_1B5156FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::init(void)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> &>(std::string::size_type **a1, uint64_t *a2)
{
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = **a1;
  quasar::OptionValue<std::string>::value((v4 + 632));
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel(a2, v5, v3, 0, &v12);
  v6 = *&v12.__r_.__value_.__l.__data_;
  *&v12.__r_.__value_.__l.__data_ = 0uLL;
  v7 = *(v4 + 2464);
  *(v4 + 2456) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    if (v12.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12.__r_.__value_.__l.__size_);
    }
  }

  v8 = *a2;
  if (*(*a2 + 2407) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v8 + 2384), *(v8 + 2392));
    v8 = *a2;
  }

  else
  {
    v12 = *(v8 + 2384);
  }

  if (*(v8 + 2431) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v8 + 2408), *(v8 + 2416));
  }

  else
  {
    __p = *(v8 + 2408);
  }

  v9 = kaldi::quasar::ToAddTag(&v12);
  kaldi::quasar::ToTagFormat(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return (v9 << 32) | 1;
}

void sub_1B515712C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel(void **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  if (*(v6 + 3924) != 1)
  {
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    v8 = a3[1];
  }

  if (!v8)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v78);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v78, "No tar tag specified but required by model!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v78);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v78, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Select models for ", 18);
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "-", 1);
    v16 = *(a3 + 23);
    if (v16 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v16 >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = a3[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v78);
    v6 = *a1;
  }

  kaldi::quasar::TorchEncoderDecoder::SelectModel(v6, a3, a4);
  if (*a4)
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v78, 3);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Selected: ", 10);
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
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "-", 1);
      v25 = *(a3 + 23);
      if (v25 >= 0)
      {
        v26 = a3;
      }

      else
      {
        v26 = *a3;
      }

      if (v25 >= 0)
      {
        v27 = *(a3 + 23);
      }

      else
      {
        v27 = a3[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v78);
    }

    return;
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v78, 3);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Models for ", 11);
    v29 = *(a2 + 23);
    if (v29 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    if (v29 >= 0)
    {
      v31 = *(a2 + 23);
    }

    else
    {
      v31 = *(a2 + 8);
    }

    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "-", 1);
    v34 = *(a3 + 23);
    if (v34 >= 0)
    {
      v35 = a3;
    }

    else
    {
      v35 = *a3;
    }

    if (v34 >= 0)
    {
      v36 = *(a3 + 23);
    }

    else
    {
      v36 = a3[1];
    }

    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " not found", 10);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v78);
  }

  v38 = *(a2 + 23);
  if (v38 >= 0)
  {
    v39 = a2;
  }

  else
  {
    v39 = *a2;
  }

  if (v38 >= 0)
  {
    v40 = *(a2 + 23);
  }

  else
  {
    v40 = *(a2 + 8);
  }

  v41 = (v39 + v40);
  if (v40 >= 1)
  {
    v42 = v39;
    do
    {
      v43 = memchr(v42, 95, v40);
      if (!v43)
      {
        break;
      }

      if (*v43 == 95)
      {
        goto LABEL_62;
      }

      v42 = v43 + 1;
      v40 = v41 - v42;
    }

    while (v41 - v42 > 0);
  }

  v43 = v41;
LABEL_62:
  if (v43 == v41)
  {
    v44 = -1;
  }

  else
  {
    v44 = &v43[-v39];
  }

  std::string::basic_string(&v77, a2, 0, v44, v78);
  v45 = *(a3 + 23);
  if (v45 >= 0)
  {
    v46 = a3;
  }

  else
  {
    v46 = *a3;
  }

  if (v45 >= 0)
  {
    v47 = *(a3 + 23);
  }

  else
  {
    v47 = a3[1];
  }

  v48 = &v46[v47];
  if (v47 >= 1)
  {
    v49 = v46;
    do
    {
      v50 = memchr(v49, 95, v47);
      if (!v50)
      {
        break;
      }

      if (*v50 == 95)
      {
        goto LABEL_77;
      }

      v49 = v50 + 1;
      v47 = v48 - v49;
    }

    while (v48 - v49 > 0);
  }

  v50 = v48;
LABEL_77:
  if (v50 == v48)
  {
    v51 = -1;
  }

  else
  {
    v51 = v50 - v46;
  }

  std::string::basic_string(&__p, a3, 0, v51, v78);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v78, 3);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Try to find models for ", 23);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v77;
    }

    else
    {
      v53 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v77.__r_.__value_.__l.__size_;
    }

    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v53, size);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "-", 1);
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
      v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, p_p, v58);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v78);
  }

  kaldi::quasar::TorchEncoderDecoder::SelectModel(*a1, &__p.__r_.__value_.__l.__data_, v78);
  v59 = v78[0];
  v78[0] = 0uLL;
  v60 = a4[1];
  *a4 = v59;
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    if (*(&v78[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v78[0] + 1));
    }

    if (*a4)
    {
      goto LABEL_98;
    }

LABEL_117:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v78);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Models for ", 11);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = &v77;
    }

    else
    {
      v69 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v77.__r_.__value_.__l.__size_;
    }

    v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &__p;
    }

    else
    {
      v73 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = __p.__r_.__value_.__l.__size_;
    }

    v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " not found!", 11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v78);
  }

  if (!v59)
  {
    goto LABEL_117;
  }

LABEL_98:
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v78, 3);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "Selected: ", 10);
    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v77;
    }

    else
    {
      v62 = v77.__r_.__value_.__r.__words[0];
    }

    if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = v77.__r_.__value_.__l.__size_;
    }

    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v62, v63);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &__p;
    }

    else
    {
      v66 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v78);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }
}

void sub_1B51576E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B51576F0);
}

void sub_1B5157714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157724);
}

void sub_1B5157734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157740);
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel(uint64_t *a1@<X0>, std::string::size_type a2@<X1>, std::string::size_type a3@<X2>, int a4@<W4>, void *a5@<X8>)
{
  v7 = *a1;
  if (!*(v7 + 408))
  {
    *a5 = 0;
    a5[1] = 0;
    return;
  }

  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (!v9)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v80, "No tar tag specified but required by model!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Select models for ", 18);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "-", 1);
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
    v7 = *a1;
  }

  kaldi::quasar::Encdec::SelectModel(v7, a2, a3, a4, a5);
  if (*a5)
  {
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Selected: ", 10);
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
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "-", 1);
      v27 = *(a3 + 23);
      if (v27 >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      if (v27 >= 0)
      {
        v29 = *(a3 + 23);
      }

      else
      {
        v29 = *(a3 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
    }

    return;
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Models for ", 11);
    v31 = *(a2 + 23);
    if (v31 >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    if (v31 >= 0)
    {
      v33 = *(a2 + 23);
    }

    else
    {
      v33 = *(a2 + 8);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "-", 1);
    v36 = *(a3 + 23);
    if (v36 >= 0)
    {
      v37 = a3;
    }

    else
    {
      v37 = *a3;
    }

    if (v36 >= 0)
    {
      v38 = *(a3 + 23);
    }

    else
    {
      v38 = *(a3 + 8);
    }

    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " not found", 10);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
  }

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

  v43 = (v41 + v42);
  if (v42 >= 1)
  {
    v44 = v41;
    do
    {
      v45 = memchr(v44, 95, v42);
      if (!v45)
      {
        break;
      }

      if (*v45 == 95)
      {
        goto LABEL_61;
      }

      v44 = v45 + 1;
      v42 = v43 - v44;
    }

    while (v43 - v44 > 0);
  }

  v45 = v43;
LABEL_61:
  if (v45 == v43)
  {
    v46 = -1;
  }

  else
  {
    v46 = &v45[-v41];
  }

  std::string::basic_string(&v79, a2, 0, v46, v80);
  v47 = *(a3 + 23);
  if (v47 >= 0)
  {
    v48 = a3;
  }

  else
  {
    v48 = *a3;
  }

  if (v47 >= 0)
  {
    v49 = *(a3 + 23);
  }

  else
  {
    v49 = *(a3 + 8);
  }

  v50 = (v48 + v49);
  if (v49 >= 1)
  {
    v51 = v48;
    do
    {
      v52 = memchr(v51, 95, v49);
      if (!v52)
      {
        break;
      }

      if (*v52 == 95)
      {
        goto LABEL_76;
      }

      v51 = v52 + 1;
      v49 = v50 - v51;
    }

    while (v50 - v51 > 0);
  }

  v52 = v50;
LABEL_76:
  if (v52 == v50)
  {
    v53 = -1;
  }

  else
  {
    v53 = &v52[-v48];
  }

  std::string::basic_string(&__p, a3, 0, v53, v80);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Try to find models for ", 23);
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v79;
    }

    else
    {
      v55 = v79.__r_.__value_.__r.__words[0];
    }

    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v79.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v79.__r_.__value_.__l.__size_;
    }

    v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v55, size);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "-", 1);
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
      v60 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v60 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, p_p, v60);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
  }

  kaldi::quasar::Encdec::SelectModel(*a1, &v79, &__p, a4, v80);
  v61 = v80[0];
  v80[0] = 0uLL;
  v62 = a5[1];
  *a5 = v61;
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
    if (*(&v80[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v80[0] + 1));
    }

    if (*a5)
    {
      goto LABEL_97;
    }

LABEL_117:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v80);
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Models for ", 11);
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &v79;
    }

    else
    {
      v71 = v79.__r_.__value_.__r.__words[0];
    }

    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v72 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v72 = v79.__r_.__value_.__l.__size_;
    }

    v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v71, v72);
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &__p;
    }

    else
    {
      v75 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = __p.__r_.__value_.__l.__size_;
    }

    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, " not found!", 11);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v80);
  }

  if (!v61)
  {
    goto LABEL_117;
  }

LABEL_97:
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v80, 3);
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Selected: ", 10);
    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v79;
    }

    else
    {
      v64 = v79.__r_.__value_.__r.__words[0];
    }

    if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v79.__r_.__value_.__l.__size_;
    }

    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v64, v65);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, "-", 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &__p;
    }

    else
    {
      v68 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v68, v69);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v80);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }
}

void sub_1B5157CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157CD4);
}

void sub_1B5157CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157D08);
}

void sub_1B5157D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B5157D24);
}

void kaldi::quasar::Encdec::SelectModel(uint64_t a1@<X0>, std::string::size_type a2@<X1>, std::string::size_type a3@<X2>, int a4@<W4>, void *a5@<X8>)
{
  v66[27] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (kaldi::quasar::Encdec::SelectSubmodelsToCompile(a1, a2, a3))
    {
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v60, 5);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Selected langpair for compilation only: ", 40);
        v10 = *(a2 + 23);
        if (v10 >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        if (v10 >= 0)
        {
          v12 = *(a2 + 23);
        }

        else
        {
          v12 = *(a2 + 8);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "-", 1);
        v15 = *(a3 + 23);
        if (v15 >= 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = *a3;
        }

        if (v15 >= 0)
        {
          v17 = *(a3 + 23);
        }

        else
        {
          v17 = *(a3 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v60);
      }

      operator new();
    }

    goto LABEL_71;
  }

  v18 = *(a1 + 2240);
  if (v18)
  {
    kaldi::quasar::Shortlist::LoadLanguagePair(v18);
  }

  if (kaldi::quasar::Encdec::LoadSubmodels(a1, a2, a3))
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 45, &v60);
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }

    v22 = std::string::append(&v60, v20, v21);
    v23 = v22->__r_.__value_.__r.__words[0];
    v59.__r_.__value_.__r.__words[0] = v22->__r_.__value_.__l.__size_;
    *(v59.__r_.__value_.__r.__words + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
    v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 959) < 0)
    {
      operator delete(*(a1 + 936));
    }

    *(a1 + 936) = v23;
    *(a1 + 944) = v59.__r_.__value_.__r.__words[0];
    *(a1 + 951) = *(v59.__r_.__value_.__r.__words + 7);
    *(a1 + 959) = v24;
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 480))
    {
      if (*(a1 + 1521) == 1)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v60, *a2, *(a2 + 8));
        }

        else
        {
          v60 = *a2;
        }
      }

      else
      {
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 45, &v59);
        v31 = *(a3 + 23);
        if (v31 >= 0)
        {
          v32 = a3;
        }

        else
        {
          v32 = *a3;
        }

        if (v31 >= 0)
        {
          v33 = *(a3 + 23);
        }

        else
        {
          v33 = *(a3 + 8);
        }

        v34 = std::string::append(&v59, v32, v33);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }
      }

      v59.__r_.__value_.__r.__words[0] = &v60;
      v45 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 464, &v60.__r_.__value_.__l.__data_);
      std::string::operator=((a1 + 912), (v45 + 56));
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }
    }

    if (kaldi::g_kaldi_verbose_level >= 5)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v60, 5);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Selected and loaded langpair: ", 30);
      v47 = *(a2 + 23);
      if (v47 >= 0)
      {
        v48 = a2;
      }

      else
      {
        v48 = *a2;
      }

      if (v47 >= 0)
      {
        v49 = *(a2 + 23);
      }

      else
      {
        v49 = *(a2 + 8);
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "-", 1);
      v52 = *(a3 + 23);
      if (v52 >= 0)
      {
        v53 = a3;
      }

      else
      {
        v53 = *a3;
      }

      if (v52 >= 0)
      {
        v54 = *(a3 + 23);
      }

      else
      {
        v54 = *(a3 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v53, v54);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v60);
    }

    v55 = *(a1 + 160);
    v60.__r_.__value_.__r.__words[0] = *(a1 + 152);
    v60.__r_.__value_.__l.__size_ = v55;
    if (v55)
    {
      atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = *(a1 + 192);
    v60.__r_.__value_.__r.__words[2] = *(a1 + 184);
    v61 = v56;
    if (v56)
    {
      atomic_fetch_add_explicit((v56 + 8), 1uLL, memory_order_relaxed);
    }

    v57 = *(a1 + 224);
    v62 = *(a1 + 216);
    v63 = v57;
    if (v57)
    {
      atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
    }

    v58 = *(a1 + 240);
    v64 = *(a1 + 232);
    v65 = v58;
    if (v58)
    {
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }

    memset(&v59, 0, sizeof(v59));
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*>(&v59, &v60, v66, 4uLL);
    operator new();
  }

  if (*(a1 + 24) == 1)
  {
    v25 = *(a1 + 192);
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v26 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    v27 = *(a1 + 240);
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    if (!v27)
    {
      goto LABEL_71;
    }

LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    goto LABEL_71;
  }

  v28 = *(a1 + 272);
  v29 = *(v28 + 64);
  if (v29 && (v29 = std::__shared_weak_count::lock(v29)) != 0)
  {
    v30 = *(v28 + 56);
  }

  else
  {
    v30 = 0;
  }

  v36 = *(a1 + 192);
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (*(a1 + 312))
  {
    v37 = *(a1 + 296);
    v38 = *(v37 + 64);
    if (v38 && (v38 = std::__shared_weak_count::lock(v38)) != 0)
    {
      v39 = *(v37 + 56);
    }

    else
    {
      v39 = 0;
    }

    v40 = *(a1 + 224);
    *(a1 + 216) = v39;
    *(a1 + 224) = v38;
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }
  }

  if (*(a1 + 336))
  {
    v41 = *(a1 + 320);
    v42 = *(v41 + 64);
    if (v42 && (v42 = std::__shared_weak_count::lock(v42)) != 0)
    {
      v43 = *(v41 + 56);
    }

    else
    {
      v43 = 0;
    }

    v44 = *(a1 + 240);
    *(a1 + 232) = v43;
    *(a1 + 240) = v42;
    if (v44)
    {
      v27 = v44;
      goto LABEL_70;
    }
  }

LABEL_71:
  *a5 = 0;
  a5[1] = 0;
}

void sub_1B5158290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00060;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B515854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf> const*,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

void kaldi::quasar::MultiLangDecorator::GetTags(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38[2] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v9 = *(a2 + 23);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (v9)
    {
      v10 = *(a3 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a3 + 8);
      }

      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = kaldi::g_kaldi_verbose_level <= -2;
      }

      if (v11)
      {
        goto LABEL_33;
      }
    }

    else if (kaldi::g_kaldi_verbose_level < -1)
    {
      goto LABEL_33;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "A Both type TagFormat requires non-empty source and target tags", 63);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v36);
    v8 = *(a1 + 8);
  }

  if (!v8)
  {
    v12 = *(a2 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

    if (v12)
    {
      v13 = 1;
    }

    else
    {
      v13 = kaldi::g_kaldi_verbose_level <= -2;
    }

    if (v13)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_44;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "SrcTag cannot be empty for TagFormat::Src", 41);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v36);
    v8 = *(a1 + 8);
  }

  if (v8 == 1)
  {
    v14 = *(a3 + 23);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 8);
    }

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = kaldi::g_kaldi_verbose_level <= -2;
    }

    if (v15)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      goto LABEL_44;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v36);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v36, "TarTag cannot be empty for TagFormat::Tar", 41);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v36);
    v8 = *(a1 + 8);
  }

LABEL_33:
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (v8 <= 1)
  {
    if (v8 <= 1)
    {
LABEL_44:
      std::operator+<char>();
      v21 = std::string::append(&v36, ">");
      v22 = v21->__r_.__value_.__r.__words[0];
      v37.__r_.__value_.__r.__words[0] = v21->__r_.__value_.__l.__size_;
      *(v37.__r_.__value_.__r.__words + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v24 = v37.__r_.__value_.__r.__words[0];
      *a4 = v22;
      *(a4 + 8) = v24;
      *(a4 + 15) = *(v37.__r_.__value_.__r.__words + 7);
      *(a4 + 23) = v23;
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        v25 = v36.__r_.__value_.__r.__words[0];
LABEL_63:
        operator delete(v25);
        return;
      }

      return;
    }

LABEL_48:
    MEMORY[0x1B8C84820](a4, "");
    return;
  }

  if (v8 == 2)
  {
    std::operator+<char>();
    v26 = std::string::append(&v35, "-");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = *(a3 + 23);
    if (v28 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v28 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }
  }

  else
  {
    if (v8 != 3)
    {
      goto LABEL_48;
    }

    std::operator+<char>();
    v16 = std::string::append(&v35, "> <tar-");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }
  }

  v29 = std::string::append(&v37, v19, v20);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v36, ">");
  v32 = v31->__r_.__value_.__r.__words[0];
  v38[0] = v31->__r_.__value_.__l.__size_;
  *(v38 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
  v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v34 = v38[0];
  *a4 = v32;
  *(a4 + 8) = v34;
  *(a4 + 15) = *(v38 + 7);
  *(a4 + 23) = v33;
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    v25 = v35.__r_.__value_.__r.__words[0];
    goto LABEL_63;
  }
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::processBody(void)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> const&>(uint64_t *a1, void **a2)
{
  v3 = *a1;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::SelectModel(a2, *(*a1 + 64), *(*a1 + 72), &v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v4 = *a2;
  if (*(v3 + 88) == 1)
  {
    if (*(*a2 + 3925))
    {
      kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(v4, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96), 1u);
      return;
    }

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
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
LABEL_11:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v5);
  }

  if (*(*a2 + 3925))
  {
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
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    goto LABEL_11;
  }

  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(v4, *v3, *(v3 + 8), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96));
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<quasar::PDecForceAlignBlock::processBody(void)::$_2> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::__variant_detail::_Trait<kaldi::Encdec>> const&>(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::SelectModel(a2, *(*a1 + 64), *(*a1 + 72), 0, &v22);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v4 = *a2;
  if (*(v3 + 88) == 1)
  {
    if (*(*a2 + 2461))
    {
      kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(v4, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96), 1u);
      return;
    }

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
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
LABEL_11:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v5);
  }

  if (*(*a2 + 2461))
  {
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
    v5 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    goto LABEL_11;
  }

  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(v4, *v3, *(v3 + 8), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 57), **(v3 + 80), *(v3 + 96));
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, uint64_t a10, unsigned __int8 a11)
{
  v67 = 0;
  v68 = 0;
  v69 = 0;
  kaldi::JoinVectorToString<int>(a2, " ", &v67);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v64, 1);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Source symbol sequence : ", 25);
    if (v69 >= 0)
    {
      v18 = &v67;
    }

    else
    {
      v18 = v67;
    }

    if (v69 >= 0)
    {
      v19 = HIBYTE(v69);
    }

    else
    {
      v19 = v68;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " (length: ", 10);
    v22 = MEMORY[0x1B8C84C30](v21, (a2[1] - *a2) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v64);
  }

  kaldi::JoinVectorToString<int>(a3, " ", &v67);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v64, 1);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Target symbol sequence : ", 25);
    if (v69 >= 0)
    {
      v24 = &v67;
    }

    else
    {
      v24 = v67;
    }

    if (v69 >= 0)
    {
      v25 = HIBYTE(v69);
    }

    else
    {
      v25 = v68;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (length: ", 10);
    v28 = MEMORY[0x1B8C84C30](v27, (a3[1] - *a3) >> 2);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " excluding </s> symbol: ", 24);
    v30 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1);
    v31 = MEMORY[0x1B8C84C00](v29, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v64);
  }

  v61 = 0u;
  v62 = 0u;
  v60 = &unk_1F2D0EE38;
  v63 = 0;
  kaldi::CuMatrix<float>::Resize(&v60, (a2[1] - *a2) >> 2, 1, 0, 0);
  v32 = *a2;
  v33 = a2[1];
  v34 = v33 - *a2;
  if (v33 != *a2)
  {
    v35 = 0;
    v36 = v34 >> 2;
    v37 = v61;
    if (v36 <= 1)
    {
      v36 = 1;
    }

    v38 = 4 * v62;
    do
    {
      *v37 = (*(v32 + 4 * v35++) + a11 - 1);
      v37 = (v37 + v38);
    }

    while (v36 != v35);
  }

  if (a9)
  {
    std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((a1 + 3664), 0);
  }

  kaldi::quasar::TorchEncoderDecoder::ResetHistoryState(a1, 1);
  kaldi::quasar::TorchEncoderDecoder::Start(a1, _CLOCK_MONOTONIC_RAW, a10);
  kaldi::quasar::TorchEncoderDecoder::StartFeedforward(a1, &v60, 0, 0);
  v57 = 0u;
  v58 = 0u;
  v56 = &unk_1F2D0EE38;
  v59 = 0;
  kaldi::CuMatrix<float>::CuMatrix(&v54, 1, 1, 0, 0, 0);
  v39 = kaldi::quasar::TorchEncoderDecoder::BosTargetId(a1);
  *v55 = (v39 - 1);
  if (a3[1] - *a3 != -4)
  {
    v40 = 0;
    do
    {
      v41 = *v55;
      kaldi::quasar::TorchEncoderDecoder::Feedforward(a1, &v54, &v56, 0);
      if (v40 >= (a3[1] - *a3) >> 2)
      {
        v42 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1;
      }

      else
      {
        v42 = *(*a3 + 4 * v40) + a11 - 1;
      }

      *v55 = v42;
      if (a6)
      {
        if (v42 != kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1) - 1 || a7 != 0)
        {
          SoftmaxIdx = v42;
          if (*(a1 + 3664))
          {
            SoftmaxIdx = kaldi::quasar::TorchEncoderDecoder::GetSoftmaxIdx(a1, v42);
          }

          v46 = *(v57 + 4 * SoftmaxIdx);
          Type = quasar::getType(a1, v43);
          v48 = logf(v46);
          if (!Type)
          {
            v48 = v46;
          }

          *&v64.__locale_ = -v48;
          std::vector<float>::push_back[abi:ne200100](a6, &v64);
        }
      }

      if (*(a1 + 3923) == 1)
      {
        v49 = kaldi::quasar::TorchEncoderDecoder::BosTargetId(a1);
        v50 = v41 + 1;
      }

      else
      {
        v49 = kaldi::quasar::TorchEncoderDecoder::EosTargetId(a1);
        v50 = v42 + 1;
      }

      if (v50 != v49 && (a8 & 1) == 0)
      {
        if (*(a1 + 3922) == 1)
        {
          BestAlignment = kaldi::quasar::TorchEncoderDecoder::GetBestAlignment(a1, 0);
          std::vector<int>::push_back[abi:ne200100](a4, &BestAlignment);
          v64.__locale_ = 0;
          locale = 0;
          v66 = 0;
          kaldi::quasar::TorchEncoderDecoder::GetAlignmentProbabilities(a1, &v64.__locale_, 0);
          std::vector<std::vector<float>>::push_back[abi:ne200100](a5, &v64);
          if (v64.__locale_)
          {
            locale = v64.__locale_;
            operator delete(v64.__locale_);
          }
        }

        else if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v64);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "model trained with supervised alignment required for alignment", 62);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v64);
        }
      }

      ++v40;
    }

    while (((a3[1] - *a3) >> 2) + 1 > v40);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v54);
  kaldi::CuMatrix<float>::~CuMatrix(&v56);
  kaldi::CuMatrix<float>::~CuMatrix(&v60);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v67);
  }
}

void sub_1B51595D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v30 + 280));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(uint64_t a1, __int128 **a2, __int128 **a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, uint64_t a10)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::quasar::TorchEncoderDecoder::Symbolize(a1, a2, &v20, 0, 0);
  __p = 0;
  v18 = 0;
  v19 = 0;
  kaldi::quasar::TorchEncoderDecoder::Symbolize(a1, a3, &__p, 1, 0);
  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::TorchEncoderDecoder>(a1, &v20, &__p, a4, a5, a6, a7, a8, a9, a10, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_1B515976C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::JoinVectorToString<int>(uint64_t *a1, const char *a2, uint64_t a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  v6 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      MEMORY[0x1B8C84C00](&v16, *(v6 + 4 * v7++));
      v6 = *a1;
      v8 = a1[1] - *a1;
      if (v7 < v8 >> 2)
      {
        v9 = strlen(a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, a2, v9);
        v6 = *a1;
        v8 = a1[1] - *a1;
      }
    }

    while (v7 < v8 >> 2);
  }

  std::stringbuf::str();
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v13;
  v10 = MEMORY[0x1E69E54D8];
  *(a3 + 16) = v14;
  v15[0] = *v10;
  v11 = v10[9];
  *(v15 + *(v15[0] - 24)) = v10[8];
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v20);
}

void sub_1B51599A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

kaldi::nnet1::Nnet *std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](kaldi::nnet1::Nnet **a1, kaldi::nnet1::Nnet *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    kaldi::nnet1::Nnet::~Nnet(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
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

void sub_1B5159BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(uint64_t a1, uint64_t *a2, uint64_t *a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, const std::string *a10, unsigned __int8 a11)
{
  v76 = 0;
  v77 = 0;
  v78 = 0;
  kaldi::JoinVectorToString<int>(a2, " ", &v76);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v74, 1);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Source symbol sequence : ", 25);
    if (v78 >= 0)
    {
      v18 = &v76;
    }

    else
    {
      v18 = v76;
    }

    if (v78 >= 0)
    {
      v19 = HIBYTE(v78);
    }

    else
    {
      v19 = v77;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " (length: ", 10);
    v22 = MEMORY[0x1B8C84C30](v21, (a2[1] - *a2) >> 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v74);
  }

  kaldi::JoinVectorToString<int>(a3, " ", &v76);
  if (kaldi::g_kaldi_verbose_level >= 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v74, 1);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Target symbol sequence : ", 25);
    if (v78 >= 0)
    {
      v24 = &v76;
    }

    else
    {
      v24 = v76;
    }

    if (v78 >= 0)
    {
      v25 = HIBYTE(v78);
    }

    else
    {
      v25 = v77;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (length: ", 10);
    v28 = MEMORY[0x1B8C84C30](v27, (a3[1] - *a3) >> 2);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " excluding </s> symbol: ", 24);
    v30 = MEMORY[0x1B8C84C00](v29, *(a1 + 828));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")", 1);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v74);
  }

  v72 = 0u;
  v71 = 0u;
  v70 = &unk_1F2D0EE38;
  v73 = 0;
  kaldi::CuMatrix<float>::Resize(&v70, (a2[1] - *a2) >> 2, 1, 0, 0);
  v31 = *a2;
  v32 = a2[1];
  v33 = v32 - *a2;
  if (v32 != *a2)
  {
    v34 = 0;
    v35 = v33 >> 2;
    v36 = v71;
    if (v35 <= 1)
    {
      v35 = 1;
    }

    v37 = 4 * v72;
    do
    {
      *v36 = (*(v31 + 4 * v34++) + a11 - 1);
      v36 = (v36 + v37);
    }

    while (v35 != v34);
  }

  if (a9)
  {
    *(a1 + 1509) = 0;
    std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100]((a1 + 2248), 0);
  }

  kaldi::quasar::Encdec::ResetHistoryState(a1);
  kaldi::quasar::Encdec::Start(a1, 4, a10);
  kaldi::quasar::Encdec::StartFeedforward(a1, &v70, 0, 0);
  v67 = 0u;
  v68 = 0u;
  v66 = &unk_1F2D0EE38;
  v69 = 0;
  kaldi::CuMatrix<float>::CuMatrix(&v64, 1, 1, 0, 0, 0);
  *v65 = (*(a1 + 824) - 1);
  if (a3[1] - *a3 != -4)
  {
    v38 = 0;
    v39 = (a1 + 828);
    do
    {
      v40 = *v65;
      kaldi::quasar::Encdec::Feedforward(a1, &v64, &v66);
      v41 = (a3[1] - *a3) >> 2;
      v42 = v41 > v38;
      if (v41 > v38)
      {
        v43 = (*a3 + 4 * v38);
      }

      else
      {
        v43 = (a1 + 828);
      }

      if (v42)
      {
        v44 = a11 ^ 1;
      }

      else
      {
        v44 = 1;
      }

      v45 = (*v43 - v44);
      *v65 = v45;
      if (a6)
      {
        if (v45 != *v39 - 1 || a7 != 0)
        {
          if (*(a1 + 1509) == 1)
          {
            SoftmaxIdx = kaldi::quasar::Encdec::GetSoftmaxIdx(a1, v45);
          }

          else
          {
            SoftmaxIdx = v45;
          }

          v48 = *(v67 + 4 * SoftmaxIdx);
          v49 = *(a1 + 1519);
          v50 = logf(v48);
          if (!v49)
          {
            v50 = v48;
          }

          *&v74[0].__locale_ = -v50;
          std::vector<float>::push_back[abi:ne200100](a6, v74);
        }
      }

      if (*(a1 + 2165) == 1)
      {
        v51 = v40 + 1;
        v52 = *(a1 + 824);
      }

      else
      {
        v51 = v45 + 1;
        v52 = *v39;
      }

      if (v51 != v52 && (a8 & 1) == 0)
      {
        if (*(a1 + 2164) == 1)
        {
          v53 = *(a1 + 2168);
          if (v53 == *(a1 + 2176))
          {
            v54 = -1;
          }

          else
          {
            v54 = *v53;
          }

          v63 = v54;
          std::vector<int>::push_back[abi:ne200100](a4, &v63);
          __p = 0;
          v61 = 0;
          v62 = 0;
          v55 = *(a1 + 2208);
          if (v55 >= 1)
          {
            v56 = *(a1 + 2224);
            v79[1] = *(a1 + 2200);
            v79[0] = &unk_1F2CFCA48;
            v79[2] = v55;
            v79[3] = v56;
            kaldi::CuVector<float>::CuVector(v74, v79);
            if (v75 >= 1)
            {
              for (i = 0; i < v75; ++i)
              {
                LODWORD(v79[0]) = *(v74[1].__locale_ + i);
                std::vector<float>::push_back[abi:ne200100](&__p, v79);
              }
            }

            kaldi::CuVector<float>::~CuVector(v74);
          }

          std::vector<std::vector<float>>::push_back[abi:ne200100](a5, &__p);
          if (__p)
          {
            v61 = __p;
            operator delete(__p);
          }
        }

        else if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v74);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "model trained with supervised alignment required for alignment", 62);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(v74);
        }
      }

      ++v38;
    }

    while (((a3[1] - *a3) >> 2) + 1 > v38);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v64);
  kaldi::CuMatrix<float>::~CuMatrix(&v66);
  kaldi::CuMatrix<float>::~CuMatrix(&v70);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(v76);
  }
}

void sub_1B515A19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (*(v34 - 137) < 0)
  {
    operator delete(*(v34 - 160));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(uint64_t a1, __int128 **a2, __int128 **a3, const void **a4, uint64_t a5, const void **a6, int a7, char a8, char a9, const std::string *a10)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::quasar::Encdec::Symbolize(a1, a2, &v20, 0, 0);
  __p = 0;
  v18 = 0;
  v19 = 0;
  kaldi::quasar::Encdec::Symbolize(a1, a3, &__p, 1, 0);
  kaldi::quasar::TMTools::AlignAndScore<kaldi::quasar::Encdec>(a1, &v20, &__p, a4, a5, a6, a7, a8, a9, a10, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_1B515A338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<quasar::TranslationPhraseInternal>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::TranslationPhraseInternal>>::destroy[abi:ne200100]<quasar::TranslationPhraseInternal,0>(a1, i))
  {
    i -= 264;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::TranslationPhraseInternal>>::destroy[abi:ne200100]<quasar::TranslationPhraseInternal,0>(uint64_t a1, uint64_t a2)
{
  quasar::MetaInfo::~MetaInfo((a2 + 256));
  if (*(a2 + 255) < 0)
  {
    operator delete(*(a2 + 232));
  }

  v4 = (a2 + 200);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a2 + 176);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 152);
  if (v3)
  {
    *(a2 + 160) = v3;
    operator delete(v3);
  }

  if (*(a2 + 120) == 1)
  {
    v4 = (a2 + 96);
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  if (*(a2 + 88) == 1 && *(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v4 = (a2 + 16);
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void quasar::PDecForceAlignBlock::~PDecForceAlignBlock(quasar::PDecForceAlignBlock *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 287) = a2[6];
  v5 = *(this + 310);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 308);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 2416);
  v8 = (this + 2392);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 2383) < 0)
  {
    operator delete(*(this + 295));
  }

  v8 = (this + 2336);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 2327) < 0)
  {
    operator delete(*(this + 288));
  }

  v7 = a2[1];
  *this = v7;
  *(this + *(v7 - 24)) = a2[2];
  quasar::PDecForceAlignOptions::~PDecForceAlignOptions((this + 8));
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_1F2D000E0[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrIN5kaldi6quasar19TorchEncoderDecoderEEENS8_INSA_6EncdecEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSC_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrIN5kaldi6quasar19TorchEncoderDecoderEEENS8_INSA_6EncdecEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSC_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void quasar::PDecForceAlignOptions::~PDecForceAlignOptions(quasar::PDecForceAlignOptions *this)
{
  *this = &unk_1F2CFFBA0;
  *(this + 268) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 2264, *(this + 284));
  *(this + 268) = &unk_1F2D08890;
  v2 = *(this + 280);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 2223) < 0)
  {
    operator delete(*(this + 275));
  }

  if (*(this + 2199) < 0)
  {
    operator delete(*(this + 272));
  }

  if (*(this + 2175) < 0)
  {
    operator delete(*(this + 269));
  }

  *(this + 250) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 2120, *(this + 266));
  *(this + 250) = &unk_1F2D08890;
  v3 = *(this + 262);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 2079) < 0)
  {
    operator delete(*(this + 257));
  }

  if (*(this + 2055) < 0)
  {
    operator delete(*(this + 254));
  }

  if (*(this + 2031) < 0)
  {
    operator delete(*(this + 251));
  }

  *(this + 232) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1976, *(this + 248));
  *(this + 232) = &unk_1F2D08890;
  v4 = *(this + 244);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 1935) < 0)
  {
    operator delete(*(this + 239));
  }

  if (*(this + 1911) < 0)
  {
    operator delete(*(this + 236));
  }

  if (*(this + 1887) < 0)
  {
    operator delete(*(this + 233));
  }

  *(this + 214) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 1832, *(this + 230));
  *(this + 214) = &unk_1F2D08890;
  v5 = *(this + 226);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 1791) < 0)
  {
    operator delete(*(this + 221));
  }

  if (*(this + 1767) < 0)
  {
    operator delete(*(this + 218));
  }

  if (*(this + 1743) < 0)
  {
    operator delete(*(this + 215));
  }

  *(this + 194) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1688, *(this + 212));
  if (*(this + 1679) < 0)
  {
    operator delete(*(this + 207));
  }

  *(this + 194) = &unk_1F2D08890;
  v6 = *(this + 206);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (*(this + 1631) < 0)
  {
    operator delete(*(this + 201));
  }

  if (*(this + 1607) < 0)
  {
    operator delete(*(this + 198));
  }

  if (*(this + 1583) < 0)
  {
    operator delete(*(this + 195));
  }

  *(this + 174) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1528, *(this + 192));
  if (*(this + 1519) < 0)
  {
    operator delete(*(this + 187));
  }

  *(this + 174) = &unk_1F2D08890;
  v7 = *(this + 186);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 1471) < 0)
  {
    operator delete(*(this + 181));
  }

  if (*(this + 1447) < 0)
  {
    operator delete(*(this + 178));
  }

  if (*(this + 1423) < 0)
  {
    operator delete(*(this + 175));
  }

  *(this + 154) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1368, *(this + 172));
  if (*(this + 1359) < 0)
  {
    operator delete(*(this + 167));
  }

  *(this + 154) = &unk_1F2D08890;
  v8 = *(this + 166);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(this + 1311) < 0)
  {
    operator delete(*(this + 161));
  }

  if (*(this + 1287) < 0)
  {
    operator delete(*(this + 158));
  }

  if (*(this + 1263) < 0)
  {
    operator delete(*(this + 155));
  }

  *(this + 134) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 1208, *(this + 152));
  if (*(this + 1199) < 0)
  {
    operator delete(*(this + 147));
  }

  *(this + 134) = &unk_1F2D08890;
  v9 = *(this + 146);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(this + 1151) < 0)
  {
    operator delete(*(this + 141));
  }

  if (*(this + 1127) < 0)
  {
    operator delete(*(this + 138));
  }

  if (*(this + 1103) < 0)
  {
    operator delete(*(this + 135));
  }

  *(this + 116) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 1048, *(this + 132));
  *(this + 116) = &unk_1F2D08890;
  v10 = *(this + 128);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (*(this + 1007) < 0)
  {
    operator delete(*(this + 123));
  }

  if (*(this + 983) < 0)
  {
    operator delete(*(this + 120));
  }

  if (*(this + 959) < 0)
  {
    operator delete(*(this + 117));
  }

  *(this + 98) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 904, *(this + 114));
  *(this + 98) = &unk_1F2D08890;
  v11 = *(this + 110);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (*(this + 863) < 0)
  {
    operator delete(*(this + 105));
  }

  if (*(this + 839) < 0)
  {
    operator delete(*(this + 102));
  }

  if (*(this + 815) < 0)
  {
    operator delete(*(this + 99));
  }

  *(this + 78) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 760, *(this + 96));
  if (*(this + 751) < 0)
  {
    operator delete(*(this + 91));
  }

  *(this + 78) = &unk_1F2D08890;
  v12 = *(this + 90);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  *(this + 60) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 60) = &unk_1F2D08890;
  v13 = *(this + 72);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (*(this + 559) < 0)
  {
    operator delete(*(this + 67));
  }

  if (*(this + 535) < 0)
  {
    operator delete(*(this + 64));
  }

  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  *(this + 42) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 456, *(this + 58));
  *(this + 42) = &unk_1F2D08890;
  v14 = *(this + 54);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  *(this + 22) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 312, *(this + 40));
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  *(this + 22) = &unk_1F2D08890;
  v15 = *(this + 34);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 2) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  *(this + 2) = &unk_1F2D08890;
  v16 = *(this + 14);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
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
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::PathElement>::__emplace_back_slow_path<kaldi::quasar::TranslationUtil::PathElement const&>(uint64_t a1, const kaldi::quasar::TranslationUtil::PathElement *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(a1, v6);
  }

  v13 = 0;
  v14 = 240 * v2;
  kaldi::quasar::TranslationUtil::PathElement::PathElement((240 * v2), a2);
  v15 = 240 * v2 + 240;
  v7 = *(a1 + 8);
  v8 = (240 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(&v13);
  return v12;
}

void sub_1B515B074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *kaldi::quasar::TranslationUtil::PathElement::PathElement(std::string *this, const kaldi::quasar::TranslationUtil::PathElement *a2)
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

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__l.__size_ = 0;
  LODWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
    *&this[2].__r_.__value_.__r.__words[1] = v6;
  }

  v7 = *(a2 + 10);
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__l.__size_ = v7;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[3].__r_.__value_.__r.__words[2], *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 2);
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[4].__r_.__value_.__r.__words[2], *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[5].__r_.__value_.__r.__words[2], *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
  this[6].__r_.__value_.__r.__words[2] = 0;
  this[7].__r_.__value_.__r.__words[0] = 0;
  this[7].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[6].__r_.__value_.__r.__words[2], *(a2 + 20), *(a2 + 21), (*(a2 + 21) - *(a2 + 20)) >> 2);
  this[7].__r_.__value_.__r.__words[2] = 0;
  this[8].__r_.__value_.__r.__words[0] = 0;
  this[8].__r_.__value_.__l.__size_ = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[7].__r_.__value_.__r.__words[2], *(a2 + 23), *(a2 + 24), (*(a2 + 24) - *(a2 + 23)) >> 2);
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  this[9].__r_.__value_.__l.__size_ = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[8].__r_.__value_.__r.__words[2], *(a2 + 26), *(a2 + 27), (*(a2 + 27) - *(a2 + 26)) >> 2);
  LODWORD(this[9].__r_.__value_.__r.__words[2]) = *(a2 + 58);
  return this;
}

void sub_1B515B220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*>(int a1, kaldi::quasar::TranslationUtil::PathElement *a2, kaldi::quasar::TranslationUtil::PathElement *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::PathElement(this, v8);
      v8 = (v8 + 240);
      this += 10;
      v7 -= 240;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v6);
      v6 = (v6 + 240);
    }
  }
}

void sub_1B515B3B8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 240);
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v4);
      v4 = (v5 - 240);
      v2 += 240;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::quasar::TranslationUtil::PathElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    kaldi::quasar::TranslationUtil::PathElement::~PathElement((i - 240));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B515B700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 - 104);
  *(v14 - 104) = 0;
  if (v16)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::TorchEncoderDecoder>(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,BOOL &,std::allocator<kaldi::quasar::TorchEncoderDecoder>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00100;
  kaldi::quasar::TorchEncoderDecoder::TorchEncoderDecoder((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::TorchEncoderDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::operator<<[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v4 = *(v14 - 24);
  v5 = std::locale::classic();
  std::ios_base::getloc((&v14 + v4));
  std::ios_base::imbue((&v14 + v4), v5);
  std::locale::~locale(__p);
  v6 = *(&v16[3].__locale_ + v4);
  if (v6)
  {
    (*(v6->__locale_ + 2))(v6, v5);
    std::locale::locale(&v19, v6 + 1);
    std::locale::operator=(v6 + 1, v5);
    std::locale::~locale(&v19);
  }

  std::locale::~locale(&v13);
  MEMORY[0x1B8C84BB0](&v14, a2);
  std::stringbuf::str();
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, v8);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v18);
  return v9;
}

void sub_1B515BB20(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, std::locale a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a9, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::unique_ptr<kaldi::quasar::TMTools::ModelCache<kaldi::quasar::TorchEncoderDecoder>> &&>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t kaldi::quasar::TMTools::ModelCache<kaldi::quasar::TorchEncoderDecoder>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D00150;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

void kaldi::quasar::TMTools::ModelCache<kaldi::quasar::TorchEncoderDecoder>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D00150;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1B8C85350);
}

void std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B515C074(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::shared_ptr[abi:ne200100]<kaldi::quasar::TorchEncoderDecoder,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::quasar::TorchEncoderDecoder *,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_default_delete<kaldi::quasar::TorchEncoderDecoder,kaldi::quasar::TorchEncoderDecoder>,std::allocator<kaldi::quasar::TorchEncoderDecoder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::TorchEncoderDecoder *,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_default_delete<kaldi::quasar::TorchEncoderDecoder,kaldi::quasar::TorchEncoderDecoder>,std::allocator<kaldi::quasar::TorchEncoderDecoder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::TorchEncoderDecoder *,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>::__shared_ptr_default_delete<kaldi::quasar::TorchEncoderDecoder,kaldi::quasar::TorchEncoderDecoder>,std::allocator<kaldi::quasar::TorchEncoderDecoder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<0ul,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>&>(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 16))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v5 = a3[1];
    *a1 = *a3;
    *(a1 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = 0;
  }

  else
  {
    v7 = *a3;
    v6 = a3[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a2[1];
    *a2 = v7;
    a2[1] = v6;
    if (v8)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_1B515C498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 - 104);
  *(v14 - 104) = 0;
  if (v16)
  {
    kaldi::quasar::TMTools::ModelSharing::Cache<kaldi::quasar::TorchEncoderDecoder>(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::Encdec>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,BOOL &,std::allocator<kaldi::quasar::Encdec>,0>(void *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00210;
  kaldi::quasar::Encdec::Encdec(a1 + 3, a2, *a3, *a4);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::Encdec>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::quasar::Encdec::~Encdec(kaldi::quasar::Encdec *this)
{
  v17 = (this + 2432);
  std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (*(this + 2431) < 0)
  {
    operator delete(*(this + 301));
  }

  if (*(this + 2407) < 0)
  {
    operator delete(*(this + 298));
  }

  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 281, 0);
  v2 = *(this + 280);
  *(this + 280) = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v3)
    {
      (*(*v3 + 64))(v3);
    }

    v4 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v4;
      operator delete(v4);
    }

    MEMORY[0x1B8C85350](v2, 0x1030C40AC6CB4BDLL);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 2192);
  v5 = *(this + 271);
  if (v5)
  {
    *(this + 272) = v5;
    operator delete(v5);
  }

  v17 = (this + 2080);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 2056);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 2032);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (*(this + 2031) < 0)
  {
    operator delete(*(this + 251));
  }

  if (*(this + 2007) < 0)
  {
    operator delete(*(this + 248));
  }

  if (*(this + 1983) < 0)
  {
    operator delete(*(this + 245));
  }

  if (*(this + 1959) < 0)
  {
    operator delete(*(this + 242));
  }

  if (*(this + 1935) < 0)
  {
    operator delete(*(this + 239));
  }

  if (*(this + 1911) < 0)
  {
    operator delete(*(this + 236));
  }

  if (*(this + 1887) < 0)
  {
    operator delete(*(this + 233));
  }

  if (*(this + 1863) < 0)
  {
    operator delete(*(this + 230));
  }

  if (*(this + 1839) < 0)
  {
    operator delete(*(this + 227));
  }

  if (*(this + 1815) < 0)
  {
    operator delete(*(this + 224));
  }

  if (*(this + 1791) < 0)
  {
    operator delete(*(this + 221));
  }

  if (*(this + 1767) < 0)
  {
    operator delete(*(this + 218));
  }

  if (*(this + 1743) < 0)
  {
    operator delete(*(this + 215));
  }

  v17 = (this + 1696);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  if (*(this + 1695) < 0)
  {
    operator delete(*(this + 209));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 1648, *(this + 207));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 1624, *(this + 204));
  v17 = (this + 1600);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 1576);
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 1552);
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = (this + 1528);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v17);
  kaldi::nnet1::Nnet::~Nnet((this + 1128));
  std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(this + 1104, *(this + 139));
  if (*(this + 1079) < 0)
  {
    operator delete(*(this + 132));
  }

  if (*(this + 1055) < 0)
  {
    operator delete(*(this + 129));
  }

  if (*(this + 1031) < 0)
  {
    operator delete(*(this + 126));
  }

  if (*(this + 1007) < 0)
  {
    operator delete(*(this + 123));
  }

  if (*(this + 983) < 0)
  {
    operator delete(*(this + 120));
  }

  if (*(this + 959) < 0)
  {
    operator delete(*(this + 117));
  }

  if (*(this + 935) < 0)
  {
    operator delete(*(this + 114));
  }

  v17 = (this + 880);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
  v6 = *(this + 107);
  if (v6)
  {
    *(this + 108) = v6;
    operator delete(v6);
  }

  kaldi::quasar::BPE::~BPE((this + 568));
  v7 = *(this + 70);
  *(this + 70) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 69);
  *(this + 69) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 68);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 66);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(this + 496, *(this + 63));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 464, *(this + 59));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 440, *(this + 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 416, *(this + 53));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 392, *(this + 50));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 368, *(this + 47));
  v17 = (this + 344);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v17);
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 320, *(this + 41));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 296, *(this + 38));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 272, *(this + 35));
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(this + 248, *(this + 32));
  v11 = *(this + 30);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 28);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 26);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 24);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(this + 22);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 20);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(a1, *a2);
    std::__tree<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>,kaldi::quasar::TMTools::SpecCmp,std::allocator<std::shared_ptr<kaldi::quasar::TMTools::CompilationSpec>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void kaldi::quasar::BPE::~BPE(kaldi::quasar::BPE *this)
{
  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 88);
  v2 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 24);
  std::__tree<std::string>::destroy(this, *(this + 1));
}

uint64_t kaldi::quasar::TMTools::ModelCache<kaldi::quasar::Encdec>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D00260;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));
  return a1;
}

void kaldi::quasar::TMTools::ModelCache<kaldi::quasar::Encdec>::~ModelCache(uint64_t a1)
{
  *a1 = &unk_1F2D00260;
  std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::destroy(a1 + 8, *(a1 + 16));

  JUMPOUT(0x1B8C85350);
}

void std::shared_ptr<kaldi::quasar::Encdec>::shared_ptr[abi:ne200100]<kaldi::quasar::Encdec,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1B515CDB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<kaldi::quasar::Encdec>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

kaldi::quasar::Encdec **std::unique_ptr<kaldi::quasar::Encdec>::~unique_ptr[abi:ne200100](kaldi::quasar::Encdec **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    kaldi::quasar::Encdec::~Encdec(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

void std::__shared_ptr_pointer<kaldi::quasar::Encdec *,std::shared_ptr<kaldi::quasar::Encdec>::__shared_ptr_default_delete<kaldi::quasar::Encdec,kaldi::quasar::Encdec>,std::allocator<kaldi::quasar::Encdec>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

kaldi::quasar::Encdec *std::__shared_ptr_pointer<kaldi::quasar::Encdec *,std::shared_ptr<kaldi::quasar::Encdec>::__shared_ptr_default_delete<kaldi::quasar::Encdec,kaldi::quasar::Encdec>,std::allocator<kaldi::quasar::Encdec>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    kaldi::quasar::Encdec::~Encdec(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::Encdec *,std::shared_ptr<kaldi::quasar::Encdec>::__shared_ptr_default_delete<kaldi::quasar::Encdec,kaldi::quasar::Encdec>,std::allocator<kaldi::quasar::Encdec>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<kaldi::quasar::Encdec>,std::shared_ptr<kaldi::quasar::Encdec>>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  if (*(a1 + 16) == 1)
  {
    result = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v5 = a2->n128_u64[1];
    *a2 = result;
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<kaldi::quasar::TorchEncoderDecoder>,std::shared_ptr<kaldi::quasar::Encdec>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *a3;
    *a1 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B515CFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

kaldi::quasar::TranslationUtil::NbestElement *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::NbestElement>,kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement const*,kaldi::quasar::TranslationUtil::NbestElement*>(int a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *this)
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

void sub_1B515D0D0(_Unwind_Exception *exception_object)
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

kaldi::quasar::TranslationUtil::NbestElement *kaldi::quasar::TranslationUtil::NbestElement::NbestElement(kaldi::quasar::TranslationUtil::NbestElement *this, const kaldi::quasar::TranslationUtil::NbestElement *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(this, *a2, *(a2 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 1) - *a2) >> 4));
  *(this + 3) = *(a2 + 3);
  *(this + 4) = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 6) = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v4 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v4;
  }

  *(this + 88) = *(a2 + 88);
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v5 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v5;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v6;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v7 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v7;
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 192, *(a2 + 24), *(a2 + 25), (*(a2 + 25) - *(a2 + 24)) >> 2);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 2);
  *(this + 240) = *(a2 + 240);
  std::map<std::string,double>::map[abi:ne200100](this + 31, a2 + 31);
  return this;
}

void sub_1B515D2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  a10 = v10;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::TranslationUtil::PathElement>::__init_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B515D3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::quasar::TranslationUtil::PathElement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::quasar::TranslationUtil::PathElement>,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(int a1, kaldi::quasar::TranslationUtil::PathElement *a2, kaldi::quasar::TranslationUtil::PathElement *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::PathElement(this, v6);
      v6 = (v6 + 240);
      this += 10;
      v7 -= 240;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B515D494(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 240);
    do
    {
      kaldi::quasar::TranslationUtil::PathElement::~PathElement(v4);
      v4 = (v5 - 240);
      v2 += 240;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<kaldi::quasar::TranslationUtil::NbestElement>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement((v4 - 272));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

kaldi::nnet1::LayerNorm *kaldi::nnet1::LayerNorm::LayerNorm(kaldi::nnet1::LayerNorm *this, const kaldi::nnet1::LayerNorm *a2)
{
  *(this + 1) = *(a2 + 1);
  *(this + 8) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *this = &unk_1F2D00310;
  *(this + 12) = *(a2 + 12);
  *(this + 52) = *(a2 + 52);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 7) = &unk_1F2D3AC18;
  *(this + 8) = 0;
  v4 = this + 88;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 11) = &unk_1F2D3AC18;
  *(this + 12) = 0;
  kaldi::CuVector<float>::operator=(this + 56, a2 + 56);
  kaldi::CuVector<float>::operator=(v4, a2 + 88);
  return this;
}

void sub_1B515D60C(_Unwind_Exception *a1)
{
  kaldi::CuVector<float>::~CuVector(v3);
  kaldi::CuVector<float>::~CuVector(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LayerNorm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 20);
  v28 = 0;
  v29 = 0;
  v26 = &unk_1F2D3AC18;
  v27 = 0;
  kaldi::CuVector<float>::Resize(&v26, v6, 0);
  if (*(a2 + 20) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + 8) + 4 * *(a2 + 24) * v7;
      v9 = *(a2 + 16);
      v10 = *(a2 + 32);
      v22 = &unk_1F2CFCA48;
      v23 = v8;
      v25 = v10;
      v24 = v9;
      v11 = kaldi::CuVectorBase<float>::Sum(&v22);
      *(v27 + 4 * v7++) = *&v11 / v24;
    }

    while (v7 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);
  kaldi::CuMatrixBase<float>::AddVecToCols(a3, &v26, -1.0, 1.0);
  v12 = *(a2 + 20);
  v24 = 0;
  v25 = 0;
  v22 = &unk_1F2D3AC18;
  v23 = 0;
  kaldi::CuVector<float>::Resize(&v22, v12, 0);
  if (*(a2 + 20) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(a3 + 8) + 4 * *(a3 + 24) * v13;
      v15 = *(a3 + 16);
      v16 = *(a3 + 32);
      v21[0] = &unk_1F2CFCA48;
      v21[1] = v14;
      v21[3] = v16;
      v21[2] = v15;
      kaldi::CuVector<float>::CuVector(v19, v21);
      kaldi::CuVectorBase<float>::MulElements(v19, v21);
      v17 = kaldi::CuVectorBase<float>::Sum(v19);
      *(v23 + 4 * v13) = 1.0 / (*(a1 + 48) + sqrtf(*&v17 / (v20 - *(a1 + 52))));
      kaldi::CuVector<float>::~CuVector(v19);
      ++v13;
    }

    while (v13 < *(a2 + 20));
  }

  kaldi::CuMatrixBase<float>::MulRowsVec(a3, &v22);
  kaldi::CuMatrixBase<float>::MulColsVec(a3, a1 + 56);
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 88, 1.0, 1.0);
  kaldi::CuVector<float>::~CuVector(&v22);
  return kaldi::CuVector<float>::~CuVector(&v26);
}

void sub_1B515D87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LayerNorm::Info(kaldi::nnet1::LayerNorm *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  kaldi::WriteToken(&v13, 0, "<Epsilon>");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " ", 1);
  std::ostream::operator<<();
  kaldi::WriteToken(&v13, 0, "<UnbiasedVar>");
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " ", 1);
  MEMORY[0x1B8C84BD0](v2, *(this + 52));
  kaldi::WriteToken(&v13, 0, "<Gamma>");
  kaldi::nnet1::MomentStatistics<float>(this + 56);
  if ((v11 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v11 & 0x80u) == 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v10;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, p_p, v4);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  kaldi::WriteToken(&v13, 0, "<Beta>");
  kaldi::nnet1::MomentStatistics<float>(this + 88);
  if ((v11 & 0x80u) == 0)
  {
    v5 = &__p;
  }

  else
  {
    v5 = __p;
  }

  if ((v11 & 0x80u) == 0)
  {
    v6 = v11;
  }

  else
  {
    v6 = v10;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  std::stringbuf::str();
  v12[0] = *MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v13 = v7;
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v17);
}

void sub_1B515DB48(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a8, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LayerNorm::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v27, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Reading LayerNorm component", 27);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v27);
  }

  __p = 0uLL;
  v26 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (kaldi::Peek(a2, a3) != 60)
        {
          v6 = HIBYTE(v26);
          goto LABEL_64;
        }

        kaldi::ReadToken(a2, a3, &__p);
        v6 = HIBYTE(v26);
        if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
          break;
        }

        if (*(&__p + 1) == 9 && *__p == 0x6E6F6C697370453CLL && *(__p + 8) == 62)
        {
          goto LABEL_52;
        }

        if (*(&__p + 1) == 13 && *__p == 0x65736169626E553CLL && *(__p + 5) == 0x3E72615664657361)
        {
          goto LABEL_39;
        }

        if (*(&__p + 1) != 6)
        {
          if (*(&__p + 1) != 7)
          {
            goto LABEL_55;
          }

          v10 = *__p == 1835091772 && *(__p + 3) == 1046572397;
          v11 = a1 + 56;
          if (!v10)
          {
            goto LABEL_55;
          }

          goto LABEL_46;
        }

        v12 = __p;
LABEL_41:
        v14 = *v12;
        v15 = *(v12 + 2);
        v16 = v14 == 1952793148 && v15 == 15969;
        v11 = a1 + 88;
        if (!v16)
        {
          if (SHIBYTE(v26) < 0)
          {
LABEL_55:
            if (*(&__p + 1) == 12)
            {
              v18 = __p;
              goto LABEL_59;
            }
          }

LABEL_67:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Unrecognized token ", 19);
          if (v26 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v26 >= 0)
          {
            v24 = HIBYTE(v26);
          }

          else
          {
            v24 = *(&__p + 1);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, p_p, v24);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
        }

LABEL_46:
        kaldi::CuVector<float>::Read(v11, a2, a3);
      }

      if (HIBYTE(v26) <= 8u)
      {
        if (HIBYTE(v26) != 6)
        {
          if (HIBYTE(v26) != 7)
          {
            goto LABEL_67;
          }

          v13 = __p == 1835091772 && *(&__p + 3) == 1046572397;
          v11 = a1 + 56;
          if (!v13)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        }

        v12 = &__p;
        goto LABEL_41;
      }

      if (HIBYTE(v26) != 9)
      {
        break;
      }

      if (__p != 0x6E6F6C697370453CLL || BYTE8(__p) != 62)
      {
        goto LABEL_67;
      }

LABEL_52:
      kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
    }

    if (HIBYTE(v26) != 13)
    {
      break;
    }

    if (__p != 0x65736169626E553CLL || *(&__p + 5) != 0x3E72615664657361)
    {
      goto LABEL_67;
    }

LABEL_39:
    kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 52));
  }

  if (HIBYTE(v26) != 12)
  {
    goto LABEL_67;
  }

  v18 = &__p;
LABEL_59:
  v19 = *v18;
  v20 = *(v18 + 2);
  if (v19 != 0x6E6F706D6F432F3CLL || v20 != 1047817829)
  {
    goto LABEL_67;
  }

LABEL_64:
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B515DEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *kaldi::nnet1::LayerNorm::WriteData(uint64_t a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<Epsilon>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<UnbiasedVar>");
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 52));
  kaldi::WriteToken(a2, a3, "<Gamma>");
  kaldi::CuVectorBase<float>::Write(a1 + 56, a2, a3);
  kaldi::WriteToken(a2, a3, "<Beta>");
  kaldi::CuVectorBase<float>::Write(a1 + 88, a2, a3);

  return kaldi::WriteToken(a2, a3, "</Component>");
}

void kaldi::nnet1::LayerNorm::~LayerNorm(kaldi::nnet1::LayerNorm *this)
{
  kaldi::nnet1::LayerNorm::~LayerNorm(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D00310;
  v2 = (this + 56);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::CuVector<float>::~CuVector(v2);

  kaldi::nnet1::Component::~Component(this);
}

uint64_t loggableFileObject(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v2 = *a1;
  if (*a1)
  {
    v3 = (v2 + 48);
    if (*(v2 + 71) < 0)
    {
      v3 = *v3;
    }
  }

  else
  {
    v3 = "[dynamic object]";
  }

  v4 = strlen(v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v3, v4);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " (", 2);
  v6 = MEMORY[0x1B8C84C30](v5, a1[4]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") : ", 4);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, " attribute '", 12);
  v8 = a1[1];
  v9 = __p;
  loggableUnicode(v8, __p);
  if (v14 < 0)
  {
    v9 = __p[0];
  }

  v10 = strlen(v9);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "' : ", 4);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v19);
}

void sub_1B515E318(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t TFileObject::verify(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 40))
  {
    loggableFileObject(a1);
    if (v33 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected an object\n", v5);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = 1;
    return v6 & 1;
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    a4 = 1;
  }

  if ((a4 & 1) == 0)
  {
    loggableFileObject(a1);
    v11 = v33 >= 0 ? __p : __p[0];
    tknPrintf("Error: %sObject has no attributes\n", v11);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = a4 ^ 1;
  LOBYTE(v30[0]) = 0;
  std::vector<BOOL>::vector(__p, a3);
  if (*a1)
  {
    v12 = *(*a1 + 72);
  }

  else
  {
    v12 = 0;
  }

  v27 = a1;
  if (v9)
  {
    while (1)
    {
      v13 = 0;
      if (a3)
      {
        break;
      }

LABEL_44:
      if (v13 == a3)
      {
LABEL_45:
        loggableFileObject(v9);
        v19 = v30;
        if (v31 < 0)
        {
          v19 = v30[0];
        }

        tknPrintf("Error: %sInvalid attribute\n", v19);
        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        v6 = 1;
      }

      v9 = v9[2];
      if (!v9)
      {
        goto LABEL_51;
      }
    }

    v14 = v9[1];
    v15 = (a2 + 24);
    while (wcscmp(v14, *(v15 - 3)))
    {
      ++v13;
      v15 += 4;
      if (a3 == v13)
      {
        goto LABEL_45;
      }
    }

    if ((*(__p[0] + (v13 >> 6)) & (1 << v13)) != 0 && (*(v15 - 2) & 1) == 0)
    {
      loggableFileObject(v9);
      v16 = v30;
      if (v31 < 0)
      {
        v16 = v30[0];
      }

      tknPrintf("Error: %sRedefinition\n", v16);
LABEL_40:
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      v6 = 1;
      goto LABEL_43;
    }

    if (v12)
    {
      if (v12 < *(v15 - 1))
      {
        loggableFileObject(v9);
        v17 = v30;
        if (v31 < 0)
        {
          v17 = v30[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version must be at least %lld\n", v17, v12, *(v15 - 1));
        goto LABEL_40;
      }

      if (v12 > *v15)
      {
        loggableFileObject(v9);
        v18 = v30;
        if (v31 < 0)
        {
          v18 = v30[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version may not be greater than %lld\n", v18, v12, *v15);
        goto LABEL_40;
      }
    }

LABEL_43:
    *(__p[0] + (v13 >> 6)) |= 1 << v13;
    goto LABEL_44;
  }

LABEL_51:
  if (a3)
  {
    v20 = 0;
    v21 = (a2 + 16);
    do
    {
      if (((*(__p[0] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20) & 1) == 0 && (*(v21 - 1) & 2) == 0 && (!v12 || v12 >= *v21 && v12 <= v21[1]))
      {
        loggableFileObject(v27);
        v22 = v31;
        v23 = v30[0];
        loggableUnicode(*(v21 - 2), v28);
        if (v22 >= 0)
        {
          v24 = v30;
        }

        else
        {
          v24 = v23;
        }

        if (v29 >= 0)
        {
          v25 = v28;
        }

        else
        {
          v25 = v28[0];
        }

        tknPrintf("Error: %sMissing declaration of '%s'\n", v24, v25);
        if (v29 < 0)
        {
          operator delete(v28[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        v6 = 1;
      }

      ++v20;
      v21 += 4;
    }

    while (a3 != v20);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v6 & 1;
}

void sub_1B515E700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::verify(TFileObject *this, char a2, char a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    if (v3 != 2 || (a2 & 1) != 0)
    {
      v6 = 0;
      if (**(this + 3) || (a3 & 1) != 0)
      {
        return v6;
      }

      loggableFileObject(this);
      if (v10 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      tknPrintf("Error: %sEmpty string not allowed here\n", v7);
    }

    else
    {
      loggableFileObject(this);
      if (v10 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      tknPrintf("Error: %sRegExp not supported here\n", v4);
    }
  }

  else
  {
    loggableFileObject(this);
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected a string\n", v5);
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_1B515E870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::getAttribute(uint64_t a1, __int32 *a2)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      break;
    }
  }

  return i;
}

void TFileObject::collectAttributes(uint64_t a1, __int32 *a2, uint64_t a3)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      v7 = *(a3 + 8);
      v6 = *(a3 + 16);
      if (v7 >= v6)
      {
        v9 = (v7 - *a3) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v10 = v6 - *a3;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TVertex const*>>(a3, v12);
        }

        *(8 * v9) = i;
        v8 = 8 * v9 + 8;
        v13 = *(a3 + 8) - *a3;
        v14 = (8 * v9 - v13);
        memcpy(v14, *a3, v13);
        v15 = *a3;
        *a3 = v14;
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = i;
        v8 = (v7 + 1);
      }

      *(a3 + 8) = v8;
    }
  }
}

void TFileObjectParser::TFileObjectParser(TFileObjectParser *this, const TLocaleInfo **a2)
{
  TAllocator::TAllocator((this + 8), 2048);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = 0;
  if (TInputStream::verifyVersion(a2, "ObjectFormatVersion", 1uLL, 1uLL, 1uLL))
  {
    std::string::basic_string[abi:ne200100]<0>(&v12, "");
    TException::TException(v10, &v12);
    v10[0].__vftable = &unk_1F2D00400;
    if (v11 >= 0)
    {
      v8 = &v10[1];
    }

    else
    {
      v8 = v10[1].__vftable;
    }

    conditionalAssert(v8, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 247);
    TException::~TException(v10);
    if (v13 < 0)
    {
      operator delete(v12);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v10, "");
    TException::TException(exception, v10);
    *exception = &unk_1F2D00400;
  }

  v4 = TLexerLexicon::TLexerLexicon(&v12, a2[22]);
  initLexicon(v4);
  TLexer::TLexer(v10, a2, 1uLL, &v12, 0);
  if (*(a2 + 39) >= 0)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = a2[2];
  }

  MEMORY[0x1B8C84820](this + 48, v5);
  *(this + 9) = a2[12];
  Objects = TFileObjectParser::loadObjects(this, v10);
  v7 = TAllocator::allocate((this + 8), 48);
  *(v7 + 40) = 0;
  *(v7 + 24) = Objects;
  *(v7 + 32) = 0;
  *v7 = this;
  *(v7 + 8) = &dword_1B5AE2648;
  *(v7 + 16) = 0;
  *this = v7;
  TLexer::~TLexer(v10);
  TLexerLexicon::~TLexerLexicon(&v12);
}

void sub_1B515EBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 71) < 0)
      {
        operator delete(*v16);
      }

      TAllocator::clear((v15 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

TRegExpCompiler *initLexicon(const void **a1)
{
  TLexerLexicon::addLiteral(a1, "=", 5);
  TLexerLexicon::addLiteral(a1, "{", 6);
  TLexerLexicon::addLiteral(a1, "}", 7);
  TLexerLexicon::addLiteral(a1, "(", 8);
  TLexerLexicon::addLiteral(a1, ")", 9);
  TLexerLexicon::addString(a1, 39, 3, 2);
  TLexerLexicon::addString(a1, 96, 4, 0);
  TLexerLexicon::addString(a1, 34, 2, 1);
  TLexerLexicon::addRegExp(a1, "[", 1);

  return TLexerLexicon::doneAdding(a1);
}

const TFileObject *TFileObjectParser::loadObjects(TFileObjectParser *this, TLexer *a2)
{
  if (*(a2 + 3) < ((*(a2 + 12) - *(a2 + 11)) >> 3))
  {
    v4 = 0;
    i = 0;
    while (1)
    {
      Object = TFileObjectParser::makeObject(this, a2, &dword_1B5AE2648);
      if (i)
      {
        *(v4 + 2) = Object;
        v7 = Object;
        Object = v4;
        if (v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *(Object + 2);
        for (i = Object; v7; v7 = *(v7 + 2))
        {
LABEL_5:
          Object = v7;
        }
      }

      v4 = Object;
      if (*(a2 + 3) >= ((*(a2 + 12) - *(a2 + 11)) >> 3))
      {
        return i;
      }
    }
  }

  return 0;
}

uint64_t *TFileObjectParser::TFileObjectParser(uint64_t *a1, uint64_t a2, uint64_t a3, const TLocaleInfo *a4)
{
  TAllocator::TAllocator((a1 + 1), 2048);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *a1 = 0;
  v7 = TLexerLexicon::TLexerLexicon(v12, a4);
  initLexicon(v7);
  TLexer::TLexer(v11, a2, 1, v12, 0);
  MEMORY[0x1B8C84820](a1 + 6, "[dynamic text object]");
  a1[9] = 1;
  Objects = TFileObjectParser::loadObjects(a1, v11);
  v9 = TAllocator::allocate((a1 + 1), 48);
  *(v9 + 40) = 0;
  *(v9 + 24) = Objects;
  *(v9 + 32) = 0;
  *v9 = a1;
  *(v9 + 8) = &dword_1B5AE2648;
  *(v9 + 16) = 0;
  *a1 = v9;
  TLexer::~TLexer(v11);
  TLexerLexicon::~TLexerLexicon(v12);
  return a1;
}

void sub_1B515EF08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  TLexer::~TLexer(va);
  TLexerLexicon::~TLexerLexicon((v4 - 88));
  if (*(v2 + 71) < 0)
  {
    operator delete(*v3);
  }

  TAllocator::clear((v2 + 8));
  _Unwind_Resume(a1);
}

void TFileObjectParser::~TFileObjectParser(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  TAllocator::clear((this + 1));
}

__n128 TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2, const TFileObject *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 10);
  if (!v6)
  {
    v23 = *(a2 + 3);
    if (!v23)
    {
      v7 = 0;
LABEL_57:
      v34 = TAllocator::allocate((this + 8), 48);
      v36 = *(a2 + 4);
      *(v34 + 40) = 0;
      *(v34 + 32) = v36;
      goto LABEL_58;
    }

    i = 0;
    v7 = 0;
    v25 = 0;
    while (!wcscmp(*(v23 + 8), "I"))
    {
LABEL_48:
      v23 = *(v23 + 16);
      if (!v23)
      {
        goto LABEL_57;
      }
    }

    v26 = TFileObjectParser::instantiateObject(this, v23, a3);
    if (v7)
    {
      *(i + 16) = v26;
      v28 = v26;
      if (v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v28 = *(v26 + 16);
      v7 = v26;
      for (i = v26; v28; v28 = *(v28 + 16))
      {
LABEL_46:
        i = v28;
      }
    }

    v25 |= v27 & 1;
    goto LABEL_48;
  }

  if (v6 != 3)
  {
    v29 = TAllocator::allocate((this + 8), 48);
    *(v29 + 40) = *(a2 + 10);
    result = *a2;
    *v29 = *a2;
    *(v29 + 32) = *(a2 + 4);
    *(v29 + 16) = *(a2 + 2);
    v31 = *(a2 + 3);
    *(v29 + 16) = 0;
    *(v29 + 24) = v31;
    return result;
  }

  v7 = *(a2 + 3);
  v8 = *(a3 + 3);
  if (v8)
  {
    v9 = 0;
    do
    {
      v48 = __s2;
      v49 = 256;
      v52 = 0;
      v50 = 0;
      TBuffer<wchar_t>::insert(&v48, 0, "$", 2uLL);
      v10 = 0;
      v11 = *(v8 + 8);
        ;
      }

      TBuffer<wchar_t>::insert(&v48, v50, v11, v10 - 1);
      LODWORD(v43[0].__vftable) = 41;
      TBuffer<wchar_t>::insert(&v48, v50, v43, 1uLL);
      if (v50 >= v49)
      {
        if (v52)
        {
          LODWORD(v43[0].__vftable) = 0;
          TBuffer<wchar_t>::insert(&v48, v50--, v43, 1uLL);
        }

        else if (v49)
        {
          v48[v49 - 1] = 0;
        }
      }

      else
      {
        v48[v50] = 0;
      }

      if (!*(v8 + 40) && !wcscmp(__s2, v7))
      {
        v7 = *(v8 + 24);
        if (v7)
        {
          v19 = 0;
          v9 = 0;
          do
          {
            v20 = TAllocator::allocate((this + 8), 48);
            *(v20 + 40) = *(v7 + 40);
            *v20 = *v7;
            *(v20 + 32) = *(v7 + 32);
            *(v20 + 16) = *(v7 + 16);
            v21 = *(v7 + 24);
            *(v20 + 16) = 0;
            *(v20 + 24) = v21;
            if (v9)
            {
              *(v19 + 16) = v20;
              do
              {
                v22 = v20;
                v20 = *(v20 + 16);
              }

              while (v20);
              v20 = v22;
            }

            else
            {
              v9 = v20;
            }

            v7 = *(v7 + 16);
            v19 = v20;
          }

          while (v7);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          v9 = 0;
        }
      }

      else
      {
        v13 = wcsstr(v7, __s2);
        if (v13)
        {
          if (!*(v8 + 40))
          {
            loggableFileObject(a2);
            v37 = v44;
            v38 = v43[0].__vftable;
            loggableFileObject(v8);
            v39 = v43;
            if (v37 < 0)
            {
              v39 = v38;
            }

            if (v47 >= 0)
            {
              v40 = __p;
            }

            else
            {
              v40 = __p[0];
            }

            tknPrintf("Error: %s%sCannot instantiate\n", v39, v40);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            if (v44 < 0)
            {
              operator delete(v43[0].__vftable);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "");
            TException::TException(v43, __p);
            v43[0].__vftable = &unk_1F2D00428;
            if (v45 >= 0)
            {
              v41 = &v43[1];
            }

            else
            {
              v41 = v43[1].__vftable;
            }

            conditionalAssert(v41, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 366);
            TException::~TException(v43);
            if (v47 < 0)
            {
              operator delete(__p[0]);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v43, "");
            TException::TException(exception, v43);
            *exception = &unk_1F2D00428;
          }

          v14 = wcslen(__s2);
          wcscpy(__s2, v7);
          wcscpy((__s2 + v13 - v7), *(v8 + 24));
          wcscat(__s2, &v13[v14]);
          v15 = wcslen(__s2);
          if ((v15 + 1) >> 62)
          {
            v16 = -1;
          }

          else
          {
            v16 = 4 * (v15 + 1);
          }

          v7 = TAllocator::allocate((this + 8), v16);
          wcscpy(v7, __s2);
        }

        v17 = 1;
      }

      if (v52 == 1 && v48 != &v51 && v48 != 0)
      {
        MEMORY[0x1B8C85310]();
      }

      if (!v17)
      {
        break;
      }

      v8 = *(v8 + 16);
    }

    while (v8);
    if (v9)
    {
      v32 = TAllocator::allocate((this + 8), 48);
      v33 = *(a2 + 4);
      *(v32 + 40) = 0;
      *(v32 + 32) = v33;
      result = *a2;
      *v32 = *a2;
      *(v32 + 16) = 0;
      *(v32 + 24) = v9;
      return result;
    }
  }

  v34 = TAllocator::allocate((this + 8), 48);
  v35 = *(a2 + 4);
  *(v34 + 40) = *(a2 + 10);
  *(v34 + 32) = v35;
LABEL_58:
  result = *a2;
  *v34 = *a2;
  *(v34 + 16) = 0;
  *(v34 + 24) = v7;
  return result;
}

void sub_1B515F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (LOBYTE(STACK[0x468]) == 1 && a22 != a11 && a22 != 0)
      {
        MEMORY[0x1B8C85310]();
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  TFileObject::collectAttributes(a2, "I", &v20);
  v4 = v20;
  if (v20 != v21)
  {
    v5 = 0;
    i = 0;
    v7 = 0;
    while (1)
    {
      TFileObjectParser::instantiateObject(this, a2, v4[v5]);
      if ((v9 & 1) == 0)
      {
        loggableFileObject(a2);
        if (v18 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        tknPrintf("Error: %sNothing to instantiate\n", v12);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(v15, "");
        TException::TException(__p, v15);
        __p[0] = &unk_1F2D00428;
        if (v19 >= 0)
        {
          v13 = &__p[1];
        }

        else
        {
          v13 = __p[1];
        }

        conditionalAssert(v13, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 441);
        TException::~TException(__p);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        TException::TException(exception, __p);
        *exception = &unk_1F2D00428;
      }

      if (v7)
      {
        *(i + 2) = v8;
        v10 = v8;
        if (v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = *(v8 + 2);
        v7 = v8;
        for (i = v8; v10; v10 = *(v10 + 2))
        {
LABEL_6:
          i = v10;
        }
      }

      ++v5;
      v4 = v20;
      if (v5 >= v21 - v20)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = a2;
LABEL_12:
  if (v4)
  {
    v21 = v4;
    operator delete(v4);
  }

  return v7;
}

void sub_1B515F804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      if (a24)
      {
        operator delete(a24);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::makeObject(uint64_t a1, TLexer *a2, __int32 *a3)
{
  Token = nextToken(a2);
  v7 = Token;
  v8 = *Token;
  if (*Token == 1)
  {
    v9 = wcslen(*(Token + 8));
    if ((v9 + 1) >> 62)
    {
      v10 = -1;
    }

    else
    {
      v10 = 4 * (v9 + 1);
    }

    a3 = TAllocator::allocate((a1 + 8), v10);
    wcscpy(a3, *(v7 + 8));
    v11 = nextToken(a2);
    if (*v11 != 5)
    {
      loggableToken(a2, v11);
      if (v58 >= 0)
      {
        v46 = v57;
      }

      else
      {
        v46 = v57[0].__vftable;
      }

      tknPrintf("Error: %sSyntax error, missing '='\n", v46);
      if (v58 < 0)
      {
        operator delete(v57[0].__vftable);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "");
      TException::TException(v57, __p);
      v57[0].__vftable = &unk_1F2CFF890;
      if (v59 >= 0)
      {
        v47 = &v57[1];
      }

      else
      {
        v47 = v57[1].__vftable;
      }

      conditionalAssert(v47, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 488);
      TException::~TException(v57);
      if (v56 < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v57, "");
      TException::TException(exception, v57);
      *exception = &unk_1F2CFF890;
    }

    v7 = nextToken(a2);
    v8 = *v7;
  }

  if (v8 <= 3)
  {
    if (v8 == 2)
    {
      v30 = wcslen(*(v7 + 8));
      if ((v30 + 1) >> 62)
      {
        v31 = -1;
      }

      else
      {
        v31 = 4 * (v30 + 1);
      }

      v17 = TAllocator::allocate((a1 + 8), v31);
      wcscpy(v17, *(v7 + 8));
      v18 = TAllocator::allocate((a1 + 8), 48);
      v19 = v18;
      v20 = *(v7 + 16);
      v21 = 3;
    }

    else
    {
      if (v8 != 3)
      {
LABEL_84:
        loggableToken(a2, v7);
        if (v58 >= 0)
        {
          v49 = v57;
        }

        else
        {
          v49 = v57[0].__vftable;
        }

        tknPrintf("Error: %sSyntax error\n", v49);
        if (v58 < 0)
        {
          operator delete(v57[0].__vftable);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "");
        TException::TException(v57, __p);
        v57[0].__vftable = &unk_1F2CFF890;
        if (v59 >= 0)
        {
          v50 = &v57[1];
        }

        else
        {
          v50 = v57[1].__vftable;
        }

        conditionalAssert(v50, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 571);
        TException::~TException(v57);
        if (v56 < 0)
        {
          operator delete(__p[0]);
        }

        v51 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v57, "");
        TException::TException(v51, v57);
        *v51 = &unk_1F2CFF890;
      }

      v15 = wcslen(*(v7 + 8));
      if ((v15 + 1) >> 62)
      {
        v16 = -1;
      }

      else
      {
        v16 = 4 * (v15 + 1);
      }

      v17 = TAllocator::allocate((a1 + 8), v16);
      wcscpy(v17, *(v7 + 8));
      v18 = TAllocator::allocate((a1 + 8), 48);
      v19 = v18;
      v20 = *(v7 + 16);
      v21 = 1;
    }

LABEL_38:
    *(v18 + 40) = v21;
    *(v18 + 24) = v17;
    *(v18 + 32) = v20;
    *v18 = a1;
    *(v18 + 8) = a3;
    *(v18 + 16) = 0;
    return v19;
  }

  if (v8 == 4)
  {
    v22 = wcslen(*(v7 + 8));
    if ((v22 + 1) >> 62)
    {
      v23 = -1;
    }

    else
    {
      v23 = 4 * (v22 + 1);
    }

    v17 = TAllocator::allocate((a1 + 8), v23);
    wcscpy(v17, *(v7 + 8));
    v18 = TAllocator::allocate((a1 + 8), 48);
    v19 = v18;
    v20 = *(v7 + 16);
    v21 = 2;
    goto LABEL_38;
  }

  if (v8 == 8)
  {
    v24 = nextToken(a2);
    v19 = 0;
    for (i = 0; ; i = v28)
    {
      if (*v24 == 9)
      {
        if (!v19)
        {
          loggableToken(a2, v24);
          if (v58 >= 0)
          {
            v52 = v57;
          }

          else
          {
            v52 = v57[0].__vftable;
          }

          tknPrintf("Error: %sAssignment list is empty\n", v52);
          if (v58 < 0)
          {
            operator delete(v57[0].__vftable);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "");
          TException::TException(v57, __p);
          v57[0].__vftable = &unk_1F2CFF890;
          if (v59 >= 0)
          {
            v53 = &v57[1];
          }

          else
          {
            v53 = v57[1].__vftable;
          }

          conditionalAssert(v53, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 536);
          TException::~TException(v57);
          if (v56 < 0)
          {
            operator delete(__p[0]);
          }

          v54 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v57, "");
          TException::TException(v54, v57);
          *v54 = &unk_1F2CFF890;
        }

        if (!*(v19 + 40))
        {
          goto LABEL_54;
        }

        return v19;
      }

      if (*v24 == 1)
      {
        loggableToken(a2, v24);
        v40 = v58;
        v41 = v57[0].__vftable;
        loggableUnicode(*(v24 + 8), __p);
        if (v40 >= 0)
        {
          v42 = v57;
        }

        else
        {
          v42 = v41;
        }

        if (v56 >= 0)
        {
          v43 = __p;
        }

        else
        {
          v43 = __p[0];
        }

        tknPrintf("Error: %sUnexpected attribute name '%s' in assignment list\n", v42, v43);
        if (v56 < 0)
        {
          operator delete(__p[0]);
        }

        if (v58 < 0)
        {
          operator delete(v57[0].__vftable);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "");
        TException::TException(v57, __p);
        v57[0].__vftable = &unk_1F2CFF890;
        if (v59 >= 0)
        {
          v44 = &v57[1];
        }

        else
        {
          v44 = v57[1].__vftable;
        }

        conditionalAssert(v44, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 524);
        TException::~TException(v57);
        if (v56 < 0)
        {
          operator delete(__p[0]);
        }

        v45 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v57, "");
        TException::TException(v45, v57);
        *v45 = &unk_1F2CFF890;
      }

      v26 = *(a2 + 3);
      if (v26)
      {
        *(a2 + 3) = v26 - 1;
      }

      Object = TFileObjectParser::makeObject(a1, a2, a3);
      v28 = Object;
      if (v19)
      {
        *(i + 16) = Object;
        v29 = Object;
        v28 = i;
        if (!Object)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v29 = *(Object + 16);
        v19 = Object;
        if (!v29)
        {
          goto LABEL_31;
        }
      }

      do
      {
        v28 = v29;
        v29 = *(v29 + 16);
      }

      while (v29);
LABEL_31:
      v24 = nextToken(a2);
    }
  }

  if (v8 != 6)
  {
    goto LABEL_84;
  }

  v12 = nextToken(a2);
  if (*v12 == 7)
  {
    v13 = v12;
    v14 = 0;
    goto LABEL_53;
  }

  v33 = 0;
  v14 = 0;
  do
  {
    v34 = *(a2 + 3);
    if (v34)
    {
      *(a2 + 3) = v34 - 1;
    }

    v35 = TFileObjectParser::makeObject(a1, a2, &unk_1B5AE2648);
    v36 = v35;
    if (v14)
    {
      *(v33 + 16) = v35;
      v37 = v35;
      v36 = v33;
      if (!v35)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v37 = *(v35 + 16);
      v14 = v35;
      if (!v37)
      {
        goto LABEL_49;
      }
    }

    do
    {
      v36 = v37;
      v37 = *(v37 + 16);
    }

    while (v37);
LABEL_49:
    v38 = nextToken(a2);
    v33 = v36;
  }

  while (*v38 != 7);
  v13 = v38;
LABEL_53:
  v19 = TAllocator::allocate((a1 + 8), 48);
  v39 = v13[2];
  *(v19 + 40) = 0;
  *(v19 + 24) = v14;
  *(v19 + 32) = v39;
  *v19 = a1;
  *(v19 + 8) = a3;
  *(v19 + 16) = 0;
LABEL_54:

  return TFileObjectParser::instantiateObject(a1, v19);
}

void sub_1B51600F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

uint64_t nextToken(TLexer *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 11);
  if (v1 >= (*(a1 + 12) - v2) >> 3)
  {
    if (*(a1 + 23) >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    tknPrintf("Error: %s : Unexpected end of file\n", v5);
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v16, __p);
    v16[0].__vftable = &unk_1F2CFF890;
    if (v18 >= 0)
    {
      v6 = &v16[1];
    }

    else
    {
      v6 = v16[1].__vftable;
    }

    conditionalAssert(v6, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 457);
    TException::~TException(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v16, "");
    TException::TException(exception, v16);
    *exception = &unk_1F2CFF890;
  }

  *(a1 + 3) = v1 + 1;
  v3 = *(v2 + 8 * v1);
  if (v3 && *v3 == -1)
  {
    loggableToken(a1, v3);
    v8 = v17;
    v9 = v16[0].__vftable;
    loggableUnicode(*(v3 + 8), __p);
    if (v8 >= 0)
    {
      v10 = v16;
    }

    else
    {
      v10 = v9;
    }

    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    tknPrintf("Error: %sSyntax error, found unexpected token '%s'\n", v10, v11);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0].__vftable);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "");
    TException::TException(v16, __p);
    v16[0].__vftable = &unk_1F2CFF890;
    if (v18 >= 0)
    {
      v12 = &v16[1];
    }

    else
    {
      v12 = v16[1].__vftable;
    }

    conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/libtennessee/src/nashville/libtextproc/shared/objectparser.cpp", 465);
    TException::~TException(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v16, "");
    TException::TException(v13, v16);
    *v13 = &unk_1F2CFF890;
  }

  return *(v2 + 8 * v1);
}

void sub_1B5160484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void TDataException::~TDataException(std::exception *this)
{
  TException::~TException(this);

  JUMPOUT(0x1B8C85350);
}

void TLexer::~TLexer(TLexer *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  TAllocator::clear((this + 32));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void TSemanticException::~TSemanticException(std::exception *this)
{
  TException::~TException(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::HwcnConfidence::HwcnConfidence(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D00450;
  *(v3 + 456) = 0u;
  *(v3 + 472) = 0u;
  kaldi::SilencePhoneSet::SilencePhoneSet((v3 + 488));
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 704) = 100;
  *(a1 + 816) = 0;
  *(a1 + 832) = 0;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 840) = 1;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  _ZNSt3__115allocate_sharedB8ne200100IN6marisa4TrieENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B51606D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v14 = *(v10 + 912);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v10 + 896);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(v10 + 880);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*(v10 + 871) < 0)
  {
    operator delete(*(v10 + 848));
  }

  if (*(v10 + 839) < 0)
  {
    operator delete(*(v10 + 816));
  }

  if (*(v10 + 807) < 0)
  {
    operator delete(*(v10 + 784));
  }

  if (*(v10 + 783) < 0)
  {
    operator delete(*(v10 + 760));
  }

  if (*(v10 + 759) < 0)
  {
    operator delete(*(v10 + 736));
  }

  if (*(v10 + 735) < 0)
  {
    operator delete(*v12);
  }

  if (*(v10 + 703) < 0)
  {
    operator delete(*(v10 + 680));
  }

  if (*(v10 + 679) < 0)
  {
    operator delete(*(v10 + 656));
  }

  if (*(v10 + 655) < 0)
  {
    operator delete(*(v10 + 632));
  }

  if (*(v10 + 631) < 0)
  {
    operator delete(*(v10 + 608));
  }

  if (*(v10 + 607) < 0)
  {
    operator delete(*(v10 + 584));
  }

  if (*(v10 + 583) < 0)
  {
    operator delete(*(v10 + 560));
  }

  kaldi::SilencePhoneSet::~SilencePhoneSet((v10 + 488));
  a10 = (v10 + 464);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::unique_ptr<kaldi::quasar::LatticeRnn>::reset[abi:ne200100](v11, 0);
  quasar::Decoder::~Decoder(v10);
  _Unwind_Resume(a1);
}

void kaldi::SilencePhoneSet::~SilencePhoneSet(kaldi::SilencePhoneSet *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    operator delete(v3);
  }
}

void sub_1B5160934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v15, v16);
  _Unwind_Resume(a1);
}

void quasar::HwcnConfidence::initOtherStuff(quasar::HwcnConfidence *this)
{
  v2 = this + 872;
  quasar::ModelLoader::readWordBoundaryInfo(*(this + 47), this + 234, this + 760, this + 784, v20);
  v3 = *&v20[0].__locale_;
  v20[0].__locale_ = 0;
  v20[1].__locale_ = 0;
  v4 = *(this + 120);
  *(v2 + 5) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (v20[1].__locale_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20[1].__locale_);
    }
  }

  memset(&v42, 0, sizeof(v42));
  v41 = 0;
  v5 = kaldi::Input::Input(v40, this + 680, &v41);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v6 = kaldi::Input::Stream(v5);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(v20, MEMORY[0x1E69E5318]);
  v8 = (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(v20);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v37, v8);
  if ((kaldi::SplitStringToIntegers<int>(&v37, ":", 1, &v42) & 1) == 0)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *__p = 0u;
    v24 = 0u;
    *v21 = 0u;
    v22 = 0u;
    *&v20[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Invalid silence-phones string ", 30);
    if (v39 >= 0)
    {
      v17 = &v37;
    }

    else
    {
      v17 = v37;
    }

    if (v39 >= 0)
    {
      v18 = HIBYTE(v39);
    }

    else
    {
      v18 = v38;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v20);
  }

  kaldi::SilencePhoneSet::SilencePhoneSet(v20, &v42);
  *(this + 122) = v20[0].__locale_;
  *(this + 62) = v20[1];
  *(this + 252) = v21[0];
  std::vector<BOOL>::operator=(this + 512, &v21[1]);
  if ((this + 488) != v20)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 67, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v21[1])
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  kaldi::Input::~Input(v40);
  if (v42.__begin_)
  {
    v42.__end_ = v42.__begin_;
    operator delete(v42.__begin_);
  }

  v9 = *(this + 735);
  if (v9 < 0)
  {
    v9 = *(this + 90);
  }

  if (v9)
  {
    quasar::readMemMappedLockedFile(this + 712);
  }

  if ((*(this + 759) & 0x8000000000000000) == 0)
  {
    if (!*(this + 759))
    {
      goto LABEL_24;
    }

LABEL_23:
    quasar::readMemMappedLockedFile(this + 736);
  }

  if (*(this + 93))
  {
    goto LABEL_23;
  }

LABEL_24:
  quasar::HwcnConfidence::initArcFeatExtractors(this);
  v10 = *(this + 58);
  v11 = *(this + 59);
  while (v10 != v11)
  {
    v12 = *v10;
    v10 += 2;
    *(this + 246) += (*(*v12 + 16))(v12);
  }

  v13 = (this + 816);
  if (*(this + 839) < 0)
  {
    v14 = *(this + 103);
    if (!v14)
    {
      goto LABEL_34;
    }

    std::string::__init_copy_ctor_external(&v19, *v13, v14);
  }

  else
  {
    if (!*(this + 839))
    {
      goto LABEL_34;
    }

    *&v19.__r_.__value_.__l.__data_ = *v13;
    v19.__r_.__value_.__r.__words[2] = *(this + 104);
  }

  *(this + 210) = kaldi::WordHypLattice::StringToCriteria(&v19);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

LABEL_34:
  v15 = *(this + 871);
  if (v15 < 0)
  {
    v15 = *(this + 107);
  }

  if (v15)
  {
    std::allocate_shared[abi:ne200100]<quasar::CalibrationMap,std::allocator<quasar::CalibrationMap>,std::string &,0>();
  }
}

void sub_1B5160D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::locale a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::HwcnConfidence::initArcFeatExtractors(quasar::HwcnConfidence *this)
{
  std::vector<std::shared_ptr<quasar::LmeContainer>>::clear[abi:ne200100](this + 58);
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  quasar::splitAndTrimNoEmpty((this + 656), __p, v50);
  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  v2 = v50[0];
  if (v50[0] != v50[1])
  {
    v49 = 0uLL;
    v3 = *(v50[0] + 23);
    if ((v3 & 0x80) == 0)
    {
      if (*(v50[0] + 23) <= 0xBu)
      {
        if (v3 != 6)
        {
          if (v3 != 7)
          {
            if (v3 != 10)
            {
              goto LABEL_134;
            }

            if (*v50[0] != 0x424D455F44524F57 || *(v50[0] + 4) != 17477)
            {
              if (*v50[0] != 0x4E4F48505F4D554ELL || *(v50[0] + 4) != 21317)
              {
                goto LABEL_17;
              }

LABEL_105:
              operator new();
            }

LABEL_63:
            std::allocate_shared[abi:ne200100]<quasar::WlatArcFeWordEmbedding,std::allocator<quasar::WlatArcFeWordEmbedding>,std::shared_ptr<marisa::Trie> &,std::shared_ptr<kaldi::Matrix<float>> &,0>();
          }

LABEL_99:
          if (*v50[0] != 1130316609 || *(v50[0] + 3) != 1414745923)
          {
            goto LABEL_134;
          }

LABEL_104:
          operator new();
        }

        if (*v50[0] != 1281315657 || *(v50[0] + 2) != 17741)
        {
          if (*v50[0] != 1598377292 || *(v50[0] + 2) != 17481)
          {
            if (*v50[0] != 1398756169 || *(v50[0] + 2) != 19529)
            {
              goto LABEL_134;
            }

LABEL_156:
            operator new();
          }

LABEL_89:
          operator new();
        }

LABEL_88:
        operator new();
      }

      if (v3 != 12)
      {
        if (v3 != 16)
        {
          goto LABEL_75;
        }

        if (*v50[0] != 0x5F54534F435F4341 || v50[0][1] != 0x4445485355504E55)
        {
          goto LABEL_134;
        }

LABEL_87:
        operator new();
      }

      goto LABEL_130;
    }

    if (v50[0][1] == 10 && **v50[0] == 0x424D455F44524F57 && *(*v50[0] + 8) == 17477)
    {
      goto LABEL_63;
    }

    if (v50[0][1] == 6 && **v50[0] == 1281315657 && *(*v50[0] + 4) == 17741)
    {
      goto LABEL_88;
    }

    if (v50[0][1] == 6 && **v50[0] == 1598377292 && *(*v50[0] + 4) == 17481)
    {
      goto LABEL_89;
    }

    if (v50[0][1] == 6)
    {
      if (**v50[0] == 1398756169 && *(*v50[0] + 4) == 19529)
      {
        goto LABEL_156;
      }

      if ((v3 & 0x80) == 0)
      {
        goto LABEL_134;
      }
    }

    if (v50[0][1] != 10)
    {
      goto LABEL_58;
    }

    if (**v50[0] == 0x4E4F48505F4D554ELL && *(*v50[0] + 8) == 21317)
    {
      goto LABEL_105;
    }

    if ((v3 & 0x80) != 0)
    {
LABEL_58:
      if (v50[0][1] == 16)
      {
        if (**v50[0] == 0x5F54534F435F4341 && *(*v50[0] + 8) == 0x4445485355504E55)
        {
          goto LABEL_87;
        }

        if ((v3 & 0x80) == 0)
        {
          if (*(v50[0] + 23) <= 0xBu)
          {
            if (v3 != 7)
            {
              if (v3 != 10)
              {
                goto LABEL_134;
              }

LABEL_17:
              if (*v50[0] != 0x4F435F4850415247 || *(v50[0] + 4) != 21587)
              {
LABEL_21:
                if (*v50[0] != 0x4D4152465F4D554ELL || *(v50[0] + 4) != 21317)
                {
                  goto LABEL_134;
                }

LABEL_128:
                operator new();
              }

LABEL_120:
              operator new();
            }

            goto LABEL_99;
          }

          if (v3 != 12)
          {
            goto LABEL_75;
          }

LABEL_130:
          if (*v50[0] != 0x5F545345425F4E49 || *(v50[0] + 2) != 1213481296)
          {
            goto LABEL_134;
          }

LABEL_142:
          operator new();
        }
      }

      if (v50[0][1] != 12)
      {
        goto LABEL_106;
      }

      if (**v50[0] == 0x5F545345425F4E49 && *(*v50[0] + 8) == 1213481296)
      {
        goto LABEL_142;
      }

      if ((v3 & 0x80) != 0)
      {
LABEL_106:
        if (v50[0][1] == 7)
        {
          if (**v50[0] == 1130316609 && *(*v50[0] + 3) == 1414745923)
          {
            goto LABEL_104;
          }

          if ((v3 & 0x80) == 0)
          {
            goto LABEL_134;
          }
        }

        if (v50[0][1] != 10)
        {
          goto LABEL_125;
        }

        if (**v50[0] == 0x4F435F4850415247 && *(*v50[0] + 8) == 21587)
        {
          goto LABEL_120;
        }

        if ((v3 & 0x80) != 0)
        {
LABEL_125:
          if (v50[0][1] == 10 && **v50[0] == 0x4D4152465F4D554ELL && *(*v50[0] + 8) == 21317)
          {
            goto LABEL_128;
          }

          if (v50[0][1] != 13)
          {
            goto LABEL_134;
          }

          v16 = *v50[0];
          goto LABEL_76;
        }

        if (v3 == 10)
        {
          goto LABEL_21;
        }

LABEL_75:
        v16 = v50[0];
        if (v3 != 13)
        {
          goto LABEL_134;
        }

LABEL_76:
        v17 = *v16;
        v18 = *(v16 + 5);
        if (v17 == 0x54534F505F474F4CLL && v18 == 0x524F49524554534FLL)
        {
          operator new();
        }

LABEL_134:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v50[0], "LIN_POSTERIOR"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LIN_AC_POSTERIOR"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LOG_AC_POSTERIOR"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "AC_COST_COLLAPSED_1"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LIN_POSTERIOR_1"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LOG_POSTERIOR_1"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "AC_COST_2"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "AC_COST_UNPUSHED_2"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LIN_AC_POSTERIOR_2"))
        {
          operator new();
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "LOG_AC_POSTERIOR_2"))
        {
          operator new();
        }

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
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unknown feature type: ", 22);
        v29 = *(v2 + 23);
        if (v29 >= 0)
        {
          v30 = v2;
        }

        else
        {
          v30 = *v2;
        }

        if (v29 >= 0)
        {
          v31 = *(v2 + 23);
        }

        else
        {
          v31 = v2[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
      }
    }

    if (v3 == 7)
    {
      goto LABEL_99;
    }

    if (v3 == 10)
    {
      goto LABEL_17;
    }

    goto LABEL_75;
  }

  __p[0] = v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B5161B14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 - 136);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  __p = (v16 - 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::HwcnConfidence::runImpl(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(a2 + 553) = *(a1 + 808);
  *(a2 + 556) = *(a1 + 840);
  *(a2 + 560) = *(a1 + 844);
  quasar::HwcnConfidence::getHwcn(a1, a2, a3, &v66);
  if (!v66)
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_52;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Lattice is null. Doing nothing", 30);
LABEL_51:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v49);
    goto LABEL_52;
  }

  if (*(v66 + 3) == *(v66 + 2))
  {
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_52;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Lattice is empty. Doing nothing", 31);
    goto LABEL_51;
  }

  quasar::WlatArcFeatureExtractor::runArcFeatureExtraction(v66, *(a1 + 984), a1 + 464);
  memset(&v48[1], 0, 24);
  v48[0] = &unk_1F2D3AC18;
  kaldi::quasar::LatticeRnn::Run(*(a1 + 456), v66, v48);
  v7 = v66;
  v8 = *(v66 + 5);
  v9 = *(v66 + 6);
  if (v8 != v9)
  {
    do
    {
      v10 = *v8;
      v11 = **(*v8 + 432);
      v12 = *(a1 + 968);
      if (v12)
      {
        v11 = quasar::CalibrationMap::map(v12, v11);
      }

      *(v10 + 32) = v11;
      ++v8;
    }

    while (v8 != v9);
    v7 = v66;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  kaldi::WordHypLattice::GetBestMeanConfPath(v7, &v45, &v42, &v41);
  memset(v40, 0, sizeof(v40));
  v13 = v42;
  for (i = v43; v13 != i; v13 += 24)
  {
    v15 = *(v13 + 23);
    if (v15 < 0)
    {
      if (*(v13 + 8) != 3)
      {
        goto LABEL_18;
      }

      v16 = *v13;
    }

    else
    {
      v16 = v13;
      if (v15 != 3)
      {
        goto LABEL_18;
      }
    }

    v17 = *v16;
    v18 = *(v16 + 2);
    if (v17 != 16188 || v18 != 62)
    {
LABEL_18:
      std::string::basic_string[abi:ne200100]<0>(&v49, "~w00");
      std::string::basic_string[abi:ne200100]<0>(__p, " ");
      quasar::replaceAll(v13, &v49, __p);
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v50) < 0)
      {
        operator delete(v49);
      }

      std::vector<std::string>::push_back[abi:ne200100](v40, v13);
    }
  }

  if (quasar::gLogLevel > 3)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v49);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v49, "Best conf result sessionId: ", 28);
    v21 = *(*a4 + 24);
    v24 = *(v21 + 128);
    v22 = v21 + 128;
    v23 = v24;
    v25 = *(v22 + 23);
    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    if (v25 >= 0)
    {
      v27 = *(v22 + 23);
    }

    else
    {
      v27 = *(v22 + 8);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v26, v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " result: ", 9);
    v37[0] = " ";
    v37[1] = 1;
    quasar::join<std::vector<std::string>>(v40, v37);
    if ((v39 & 0x80u) == 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v31 = v39;
    }

    else
    {
      v31 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
    if (v39 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v49);
  }

  *&v49 = v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
  *&v49 = &v42;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v32 = *a3;
  v34 = v66;
  v33 = v67;
  if (v67)
  {
    atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v35 = *(v32 + 232);
  *(v32 + 224) = v34;
  *(v32 + 232) = v33;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  kaldi::CuVector<float>::~CuVector(v48);
LABEL_52:
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  return 0;
}

void sub_1B5161FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a32);
  v39 = *(v37 - 88);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(a1);
}

void quasar::HwcnConfidence::getHwcn(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X2>, quasar **a4@<X8>)
{
  v8 = quasar::StopWatch::StopWatch(v21, a2);
  quasar::StopWatch::resume(v8, v9);
  v10 = *a3;
  v11 = *(a2 + 10);
  (*(**(*a2 + 16) + 32))(*(*a2 + 16));
  quasar::DecoderChainOutput::getWordHypLattice(v10, v11, a4);
  v12 = *a4;
  if (*a4 && *(v12 + 2) != *(v12 + 3))
  {
    if (a2[553] != 1)
    {
      std::allocate_shared[abi:ne200100]<kaldi::WordHypLattice,std::allocator<kaldi::WordHypLattice>,kaldi::WordHypLattice&,0>();
    }

    v13 = a4[1];
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }

    v14 = a4[1];
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    quasar::HwcnConfidence::setPiPhoneStr(v14, a2, v12);
    quasar::mergeNodes(v12, *(a1 + 704), 0);
    quasar::setNormWords(v12, v15);
    quasar::mergeArcs(v12, 0);
    v17 = v24;
    if (v22)
    {
      v17 = v17 + kaldi::Timer::GetSeconds(5, v16) - v23;
    }

    if (quasar::gLogLevel >= 5)
    {
      memset(v20, 0, sizeof(v20));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Obtained HWCN in ", 17);
      v19 = MEMORY[0x1B8C84BE0](v18, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " s", 2);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v20);
    }

    *a4 = v12;
    a4[1] = v13;
  }

  *&v20[0] = v21;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v20);
}

void sub_1B51622A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  a9 = (v10 - 176);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

float quasar::CalibrationMap::map(float **this, float result)
{
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    v4 = (v3 - v2) >> 3;
    v5 = *this;
    do
    {
      v6 = v4 >> 1;
      v7 = &v5[2 * (v4 >> 1)];
      v9 = *v7;
      v8 = v7 + 2;
      v4 += ~(v4 >> 1);
      if (v9 > result)
      {
        v4 = v6;
      }

      else
      {
        v5 = v8;
      }
    }

    while (v4);
    if (v5 == v3 || v5 != v2 && vabds_f32(result, *(v5 - 2)) < vabds_f32(result, *v5))
    {
      v5 -= 2;
    }

    return v5[1];
  }

  return result;
}

void quasar::HwcnConfidence::registerParams(quasar::HwcnConfidence *this, const void **a2)
{
  quasar::HwcnConfidence::registerOtherParams(this, a2);

  quasar::HwcnConfidence::registerModelFiles(this, a2);
}

void quasar::HwcnConfidence::registerOtherParams(quasar::HwcnConfidence *this, const void **a2)
{
  kaldi::WordBoundaryInfoNewOpts::Register(this + 936, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "model-feature-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "Comma-separated list of arc features. Example: BAG_OF_PHONES,KEYWORD:hey,KEYWORD:Siri,LM_SCORE,AC_SCORE,NUM_FRAMES,LOG_POSTERIOR,LIN_POSTERIOR");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 656, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "sil-phone-csl-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing colon-separated list of silence phones.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 680, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "node-merge-tol-ms");
  std::string::basic_string[abi:ne200100]<0>(__p, "Node merging tolerance in ms");
  quasar::SystemConfig::Register<int>(a2, v6, this + 704, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-emb-marisa-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "MARISA trie file for word embedding lookup");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 712, __p, 0, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-emb-mat-flt32-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Kaldi binary matrix file (float32) that stores word embeddings");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 736, __p, 0, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-boundary-int-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word boundary file with format <integer-phone-id> [begin|end|singleton|internal|nonword]");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 760, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "unpronounced-word-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing newline-separated list of words with no pronunciation.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 784, __p, 0, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-is-primary");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, write these confidence values, along with the HWCN nbest, to the main ASR output (resultChoices) so it can be used by downstream clients instead of the secondary ASR output (resultChoicesV2) that is only used for offline experimentation.");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 808, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-criteria");
  std::string::basic_string[abi:ne200100]<0>(__p, "Type of nbest. One of MeanConfPath|TotalCostPath. (Default: MeanConfPath). MeanConfPath: paths with highest mean confidence. TotalCostPath: paths with lowest total cost (the usual ASR objective when confidence isn't present).");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 816, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "nbest-preserve-top-result");
  std::string::basic_string[abi:ne200100]<0>(__p, "If true, confidence will try not to change the top result. (Default: false).");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 844, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "calibration-map-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Text file with 2 columns of numbers. Lines must be sorted by the first column. Each confidence score will be mapped to the 2nd-column value of the line with the 1st-column value that is closest to the score. All values in the file (both columns) should be in the range 0-1 (not 0-1000). ");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 848, __p, 0, 259, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5162888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::HwcnConfidence::registerModelFiles(quasar::HwcnConfidence *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 560, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "forward-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 584, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "backward-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 608, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "arc-output-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "See LatticeRnn in nnet/lattice-rnn.h");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 632, __p, 1, 141, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B5162AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::HwcnConfidence::setPiPhoneStr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  v4 = *(a3 + 48);
  if (v3 == v4)
  {
    return;
  }

  do
  {
    v6 = *v3;
    v7 = *(*v3 + 80);
    if (*(*v3 + 88) - v7 == 24)
    {
      v8 = *(v7 + 23);
      if (v8 < 0)
      {
        if (*(v7 + 1) == 3)
        {
          v7 = *v7;
LABEL_8:
          v9 = *v7;
          v10 = *(v7 + 2);
          if (v9 == 26995 && v10 == 108)
          {
            MEMORY[0x1B8C84820](v6 + 216, "sil");
            goto LABEL_40;
          }
        }
      }

      else if (v8 == 3)
      {
        goto LABEL_8;
      }
    }

    memset(v26, 0, sizeof(v26));
    v13 = *(v6 + 104);
    v12 = *(v6 + 112);
    if (v13 == v12)
    {
      goto LABEL_39;
    }

    do
    {
      v14 = *v13;
      (*(**(a2 + 168) + 88))(&__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          size = __str.__r_.__value_.__l.__size_;
          p_str = __str.__r_.__value_.__r.__words[0];
          if (!__str.__r_.__value_.__l.__size_)
          {
            goto LABEL_29;
          }

          goto LABEL_18;
        }

        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        v24 = __str;
      }

      p_str = &__str;
      if (!size)
      {
        goto LABEL_29;
      }

LABEL_18:
      v17 = p_str + size;
      v18 = p_str;
      v19 = v17;
      do
      {
        v20 = v18;
        v21 = v18;
        while (1)
        {
          v22 = *v21++;
          if (v22 == 95)
          {
            break;
          }

          v20 = v21;
          if (v21 == v17)
          {
            v20 = v19;
            goto LABEL_24;
          }
        }

        v18 = (&v20->__r_.__value_.__l.__data_ + 1);
        v19 = v20;
      }

      while (v21 != v17);
LABEL_24:
      if (v20 != v17 && v20 - p_str != -1)
      {
        std::string::basic_string(&v23, &__str, 0, v20 - p_str, &v27);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        v24 = v23;
      }

LABEL_29:
      if (!kaldi::SilencePhoneSet::isSilencePhone((a2 + 96), v14))
      {
        std::vector<std::string>::push_back[abi:ne200100](v26, &v24);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    while (v13 != v12);
    v6 = *v3;
LABEL_39:
    kaldi::JoinVectorToString(v26, " ", 1, (v6 + 216));
    __str.__r_.__value_.__r.__words[0] = v26;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
LABEL_40:
    ++v3;
  }

  while (v3 != v4);
}

void sub_1B5162DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  a19 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void quasar::StopWatch::resume(quasar::StopWatch *this, clockid_t a2)
{
  if (*(this + 6))
  {
    memset(v3, 0, sizeof(v3));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "StopWatch is already running.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v3);
  }

  *(this + 6) = 1;
  v2 = (this + 32);

  kaldi::Timer::Reset(v2, a2);
}

void quasar::HwcnConfidence::~HwcnConfidence(quasar::HwcnConfidence *this)
{
  quasar::HwcnConfidence::~HwcnConfidence(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D00450;
  v2 = *(this + 122);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 120);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 116);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 114);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 112);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 110);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 871) < 0)
  {
    operator delete(*(this + 106));
  }

  if (*(this + 839) < 0)
  {
    operator delete(*(this + 102));
  }

  if (*(this + 807) < 0)
  {
    operator delete(*(this + 98));
  }

  if (*(this + 783) < 0)
  {
    operator delete(*(this + 95));
  }

  if (*(this + 759) < 0)
  {
    operator delete(*(this + 92));
  }

  if (*(this + 735) < 0)
  {
    operator delete(*(this + 89));
  }

  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 679) < 0)
  {
    operator delete(*(this + 82));
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 607) < 0)
  {
    operator delete(*(this + 73));
  }

  if (*(this + 583) < 0)
  {
    operator delete(*(this + 70));
  }

  v8 = *(this + 67);
  if (v8)
  {
    *(this + 68) = v8;
    operator delete(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    operator delete(v9);
  }

  v10 = (this + 464);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::unique_ptr<kaldi::quasar::LatticeRnn>::reset[abi:ne200100](this + 57, 0);
  quasar::Decoder::~Decoder(this);
}

void std::__shared_ptr_emplace<marisa::Trie>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *_ZNSt3__120__shared_ptr_emplaceIN5kaldi6MatrixIfEENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00578;
  kaldi::Matrix<float>::Matrix((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<kaldi::Matrix<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::CalibrationMap>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<quasar::CalibrationMap>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D005C8;
  quasar::CalibrationMap::CalibrationMap((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::CalibrationMap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D005C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::CalibrationMap>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t quasar::CalibrationMap::CalibrationMap(uint64_t a1, uint64_t a2)
{
  v52[19] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ifstream::basic_ifstream(v50);
  v4 = v50[0];
  if ((v51[*(v50[0] - 24) + 16] & 5) != 0)
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
    *&v33[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Failed to open mapping file: ", 29);
    v27 = *(a2 + 23);
    if (v27 >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    if (v27 >= 0)
    {
      v29 = *(a2 + 23);
    }

    else
    {
      v29 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v33);
  }

  memset(&__p, 0, sizeof(__p));
  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v50 + *(v4 - 24)));
    v6 = std::locale::use_facet(v33, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(v33);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v50, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(v33, " ");
    quasar::splitAndTrimNoEmpty(&__p, v33, &v30);
    if (SBYTE7(v34) < 0)
    {
      operator delete(v33[0].__locale_);
    }

    if (v30 != v31)
    {
      if (v31 - v30 != 48)
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
        *&v33[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Calibration file line does not have 2 columns: ", 47);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, p_p, size);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v33);
      }

      v9 = std::stof(v30, 0);
      v10 = std::stof(v30 + 1, 0);
      v12 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v12 >= v11)
      {
        v14 = (v12 - *a1) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v16 = v11 - *a1;
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
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v17);
        }

        v18 = 8 * v14;
        *v18 = v9;
        *(v18 + 4) = v10;
        v13 = 8 * v14 + 8;
        v19 = *(a1 + 8) - *a1;
        v20 = 8 * v14 - v19;
        memcpy((v18 - v19), *a1, v19);
        v21 = *a1;
        *a1 = v20;
        *(a1 + 8) = v13;
        *(a1 + 16) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v12 = v9;
        v12[1] = v10;
        v13 = (v12 + 2);
      }

      *(a1 + 8) = v13;
    }

    v33[0].__locale_ = &v30;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v33);
    v4 = v50[0];
  }

  quasar::CalibrationMap::init(a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v50[0] = *MEMORY[0x1E69E54C8];
  *(v50 + *(v50[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v51);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v52);
  return a1;
}

void sub_1B51637D0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5163870);
}

void sub_1B51637E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  JUMPOUT(0x1B5163834);
}

void sub_1B5163804(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5163834);
}

void sub_1B5163830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a52, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x2E8]);
  v54 = *v52;
  if (*v52)
  {
    *(v52 + 8) = v54;
    operator delete(v54);
  }

  _Unwind_Resume(a1);
}

uint64_t *quasar::CalibrationMap::init(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this == v2)
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
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v7, "Calibration file has no entries");
    goto LABEL_10;
  }

  v3 = (v2 - v1) >> 3;
  if (v3 >= 2)
  {
    v4 = (v1 + 8);
    v5 = v3 - 1;
    while (1)
    {
      v6 = *(v4 - 2);
      if (*v4 < v6 || v6 >= *v4 && v4[1] < *(v4 - 1))
      {
        break;
      }

      v4 += 2;
      if (!--v5)
      {
        return this;
      }
    }

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
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v7, "Calibration is not sorted by first column");
LABEL_10:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v7);
  }

  return this;
}

void *std::__shared_ptr_emplace<quasar::WlatArcFeWordEmbedding>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<marisa::Trie> &,std::shared_ptr<kaldi::Matrix<float>> &,std::allocator<quasar::WlatArcFeWordEmbedding>,0>(void *a1, uint64_t *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00618;
  quasar::WlatArcFeWordEmbedding::WlatArcFeWordEmbedding(a1 + 3, a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::WlatArcFeWordEmbedding>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeIsLme>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLmeId>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D006B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeIsSil>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeNumPhones>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCostUnpushed>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D007A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeInBestPath>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D007F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCost>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeGraphCost>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00898;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeNumFrames>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D008E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinAcousticPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D009D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogAcousticPosterior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCostCollapsed1>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinPosterior1>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogPosterior1>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00B18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCost2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00B68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeAcousticCostUnpushed2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLinAcousticPosterior2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::WlatArcFeLogAcousticPosterior2>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::WordHypLattice>::__shared_ptr_emplace[abi:ne200100]<kaldi::WordHypLattice&,std::allocator<kaldi::WordHypLattice>,0>(void *a1, const kaldi::WordHypLattice *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00CA8;
  kaldi::WordHypLattice::WordHypLattice((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::WordHypLattice>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D00CA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B5164B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::random_device *std::random_device::random_device[abi:ne200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B5164E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}