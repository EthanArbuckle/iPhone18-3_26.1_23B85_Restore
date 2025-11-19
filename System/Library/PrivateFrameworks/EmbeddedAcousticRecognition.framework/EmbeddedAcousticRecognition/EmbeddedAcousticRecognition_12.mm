void sub_1B50EF01C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::FilterBlock::getAlternatives@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      if ((v2[8] & 1) == 0)
      {
        result = quasar::MetaInfo::hasSenses((v2 + 256));
        if (result)
        {
          v5 = *(a2 + 8);
          if (v5 >= *(a2 + 16))
          {
            result = std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal const&>(a2, v2);
          }

          else
          {
            quasar::TranslationPhraseInternal::TranslationPhraseInternal(*(a2 + 8), v2);
            result = v5 + 264;
          }

          *(a2 + 8) = result;
        }
      }

      v2 += 264;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1B50EF0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL quasar::FilterBlock::isSameLanguage(uint64_t a1, const std::string *a2, const std::string *a3)
{
  std::string::basic_string(&v13, a2, 0, 2uLL, &v12);
  std::string::basic_string(&v12, a3, 0, 2uLL, &v14);
  v4 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v6 = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  v7 = SHIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v12.__r_.__value_.__l.__size_;
  }

  if (size == v6)
  {
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v13;
    }

    else
    {
      v8 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v12;
    }

    else
    {
      v9 = v12.__r_.__value_.__r.__words[0];
    }

    v10 = memcmp(v8, v9, size) == 0;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  v4 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
LABEL_17:
  if (v4 < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1B50EF1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::FilterBlock::hasLocaleMismatchedMetainfo(uint64_t a1, uint64_t *a2)
{
  if (*quasar::OptionValue<BOOL>::value((a1 + 24)) != 1)
  {
    return 0;
  }

  v4 = quasar::OptionValue<std::string>::value((a1 + 168));
  if ((*(v4 + 23) & 0x80000000) == 0)
  {
    if (*(v4 + 23))
    {
      goto LABEL_4;
    }

LABEL_13:
    if (quasar::gLogLevel >= 2)
    {
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
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "source-locale not set", 21);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v25);
    }

    return 0;
  }

  if (!*(v4 + 8))
  {
    goto LABEL_13;
  }

LABEL_4:
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    if (quasar::MetaInfo::hasSenses((v5 + 256)))
    {
      Senses = quasar::MetaInfo::getSenses((v5 + 256));
      v8 = Senses[1];
      if (*Senses != v8)
      {
        v9 = *Senses + 48;
        while (1)
        {
          v10 = quasar::OptionValue<std::string>::value((a1 + 168));
          if (!quasar::FilterBlock::isSameLanguage(v10, v10, v9))
          {
            break;
          }

          v11 = v9 + 248;
          v9 += 296;
          if (v11 == v8)
          {
            goto LABEL_11;
          }
        }

        if (quasar::gLogLevel >= 5)
        {
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
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "defLocale: <", 12);
          v14 = *(v9 + 23);
          if (v14 >= 0)
          {
            v15 = v9;
          }

          else
          {
            v15 = *v9;
          }

          if (v14 >= 0)
          {
            v16 = *(v9 + 23);
          }

          else
          {
            v16 = *(v9 + 8);
          }

          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ">", 1);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " incompatible with srcLocale: <", 31);
          v20 = quasar::OptionValue<std::string>::value((a1 + 168));
          v21 = *(v20 + 23);
          if (v21 >= 0)
          {
            v22 = v20;
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
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "> deleting alternatives and stripping disambig annotation from metainfo", 71);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v25);
        }

        return 1;
      }
    }

LABEL_11:
    v5 += 264;
  }

  return 0;
}

uint64_t quasar::OptionValue<BOOL>::value(void *a1)
{
  v2 = quasar::OptionValue<BOOL>::fallback(a1) + 104;
  if ((*(*a1 + 32))(a1))
  {
    v3 = a1[11];
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v6 = std::__shared_weak_count::lock(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v6)
      {
        if (v5)
        {
          v7 = *v5;
          for (i = v5[1]; v7 != i; v7 += 3)
          {
            v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((a1 + 15), v7);
            if (a1 + 16 != v9)
            {
              v2 = v9 + 56;
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  return v2;
}

void quasar::TranslationPhraseInternal::~TranslationPhraseInternal(quasar::TranslationPhraseInternal *this)
{
  quasar::MetaInfo::~MetaInfo(this + 32);
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v3 = (this + 200);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  if (*(this + 120) == 1)
  {
    v3 = (this + 96);
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v3 = (this + 16);
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  quasar::MetaInfo::~MetaInfo(this + 32);
  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  v2 = (this + 200);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v2);
  quasar::TranslationPhrase::~TranslationPhrase(this);
}

void quasar::FilterBlock::filterBasedOnNbestSizeLimit(quasar::TranslationPhraseInternal *a1, uint64_t a2)
{
  if (a2 == -1)
  {
    if (quasar::gLogLevel < 5)
    {
      return;
    }

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
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "sending ", 8);
    v8 = MEMORY[0x1B8C84C30](v7, 0xF83E0F83E0F83E1 * ((*(a1 + 1) - *a1) >> 3));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " alternatives without limiting", 30);
LABEL_10:
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
    return;
  }

  if (0xF83E0F83E0F83E1 * ((*(a1 + 1) - *a1) >> 3) <= a2)
  {
    if (quasar::gLogLevel < 5)
    {
      return;
    }

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
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "sending ", 8);
    v10 = MEMORY[0x1B8C84C30](v9, 0xF83E0F83E0F83E1 * ((*(a1 + 1) - *a1) >> 3));
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " alternatives, too few to limit (limit=", 39);
    v12 = MEMORY[0x1B8C84C00](v11, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
    goto LABEL_10;
  }

  if (quasar::gLogLevel >= 5)
  {
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
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "sending ", 8);
    v5 = MEMORY[0x1B8C84C00](v4, a2);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " alternatives, limiting from ", 29);
    MEMORY[0x1B8C84C30](v6, 0xF83E0F83E0F83E1 * ((*(a1 + 1) - *a1) >> 3));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
  }

  std::vector<quasar::TranslationPhraseInternal>::resize(a1, a2);
}

void std::vector<quasar::TranslationPhraseInternal>::resize(quasar::TranslationPhraseInternal *a1, unint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = 0xF83E0F83E0F83E1 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<quasar::TranslationPhraseInternal>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 264 * a2;
    while (v3 != v7)
    {
      quasar::TranslationPhraseInternal::~TranslationPhraseInternal((v3 - 264));
    }

    *(a1 + 1) = v7;
  }
}

void quasar::FilterBlock::filterBasedOnAnnotations(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 - *a1 == 264)
  {
    if (quasar::gLogLevel < 5)
    {
      v6 = 1;
    }

    else
    {
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
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "only one hypothesis, sending it", 31);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v14);
      v4 = *a1;
      v5 = *(a1 + 8);
      v6 = 0xF83E0F83E0F83E1 * ((v5 - *a1) >> 3);
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(a2, v4, v5, v6);
    return;
  }

  if (*(v4 + 8) == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "1-best hypothesis is low confidence, sending only this hypothesis", 65);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v14);
      v4 = *a1;
    }

    quasar::TranslationPhraseInternal::TranslationPhraseInternal(&v14, v4);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*>(a2, &v14, &v30 + 8, 1uLL);
LABEL_18:
    quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&v14);
    return;
  }

  if (!quasar::MetaInfo::hasSenses((v4 + 256)))
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "1-best hypothesis has no ambiguity annotation, sending only this hypothesis", 75);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v14);
    }

    quasar::TranslationPhraseInternal::TranslationPhraseInternal(&v14, *a1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*>(a2, &v14, &v30 + 8, 1uLL);
    goto LABEL_18;
  }

  quasar::FilterBlock::getAlternatives(a1, &v12);
  v7 = v12;
  if ((0xF83E0F83E0F83E1 * ((*(&v12 + 1) - v12) >> 3)) > 1)
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "ambiguity found: ", 17);
      v11 = MEMORY[0x1B8C84C30](v10, 0xF83E0F83E0F83E1 * ((*(&v12 + 1) - v12) >> 3));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " alternative(s)", 15);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v14);
      v7 = v12;
    }

    *a2 = v7;
    a2[2] = v13;
    v13 = 0;
    v12 = 0uLL;
  }

  else
  {
    if (quasar::gLogLevel >= 5)
    {
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
      v14 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "no ambiguity found: ", 20);
      v9 = MEMORY[0x1B8C84C30](v8, 0xF83E0F83E0F83E1 * ((*(&v12 + 1) - v12) >> 3));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " alternative(s)", 15);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v14);
    }

    quasar::TranslationPhraseInternal::TranslationPhraseInternal(&v14, *a1);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*>(a2, &v14, &v30 + 8, 1uLL);
    quasar::TranslationPhraseInternal::~TranslationPhraseInternal(&v14);
  }

  *&v14 = &v12;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_1B50EFCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a9;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void quasar::FilterBlock::filterBasedOnStructuredPredition(uint64_t *a1)
{
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    do
    {
      v3 = quasar::MetaInfo::structuredPrediction((v1 + 256), "gender", 6);
      if (v3)
      {
        v4 = *(v3 + 32);
        v5 = *(v3 + 40);
        if (v4 != v5)
        {
          v6 = (v3 + 24);
          v7 = v4 + 48;
          do
          {
            if (*(v7 + 8) == *(v7 + 16))
            {
              if (quasar::gLogLevel >= 4)
              {
                v52 = 0u;
                v53 = 0u;
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
                v37 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
                v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Source span: ", 13);
                v9 = quasar::operator<<(v8, v7);
                v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " in group: ", 11);
                v11 = MEMORY[0x1B8C84C00](v10, *v6);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " doesn't have any projections. Removing this span from gender_alternatives.", 75);
                quasar::QuasarInfoMessage::~QuasarInfoMessage(&v37);
              }

              *&v37 = v6;
              v12 = std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v54, v6);
              std::__tree<quasar::MetaInfo::StructuredPrediction::Span::Range>::__emplace_unique_key_args<quasar::MetaInfo::StructuredPrediction::Span::Range,quasar::MetaInfo::StructuredPrediction::Span::Range const&>((v12 + 5), v7);
            }

            v13 = v7 + 32;
            v7 += 80;
          }

          while (v13 != v5);
        }
      }

      v1 += 264;
    }

    while (v1 != v2);
    v1 = *a1;
    v2 = a1[1];
  }

  for (; v1 != v2; v1 += 264)
  {
    v14 = quasar::MetaInfo::structuredPrediction((v1 + 256), "gender", 6);
    v15 = v14;
    if (v14)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v16 = *(v14 + 32);
      v17 = *(v14 + 40);
      if (v16 == v17)
      {
        goto LABEL_25;
      }

      v18 = (v14 + 24);
      do
      {
        v55[3] = v18;
        v19 = std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v54, (v15 + 24));
        if (!std::__tree<quasar::MetaInfo::StructuredPrediction::Span::Range>::__count_unique<quasar::MetaInfo::StructuredPrediction::Span::Range>((v19 + 5), (v16 + 48)))
        {
          v20 = v35;
          if (v35 >= v36)
          {
            v21 = std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__emplace_back_slow_path<quasar::MetaInfo::StructuredPrediction::Span const&>(&v34, v16);
          }

          else
          {
            std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__construct_one_at_end[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span const&>(&v34, v16);
            v21 = v20 + 80;
          }

          v35 = v21;
        }

        v16 += 80;
      }

      while (v16 != v17);
      v22 = v34;
      v23 = v35;
      if (v34 == v35)
      {
LABEL_25:
        if (quasar::gLogLevel >= 4)
        {
          v52 = 0u;
          v53 = 0u;
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
          v37 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "All gender alternative spans are filtered out. Removing gender_alternatives entry from meta info.", 97);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v37);
        }

        quasar::MetaInfo::eraseStructuredPrediction((v1 + 256), "gender", 6);
        quasar::MetaInfo::eraseStructuredPredictionToSourceTokenAlignments((v1 + 256), "gender", 6);
      }

      else
      {
        if (*(v15 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *v15, *(v15 + 8));
          v22 = v34;
          v23 = v35;
        }

        else
        {
          v24 = *v15;
          v29.__r_.__value_.__r.__words[2] = *(v15 + 16);
          *&v29.__r_.__value_.__l.__data_ = v24;
        }

        v25 = *v18;
        v28 = 0;
        v27 = 0uLL;
        std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(&v27, v22, v23, 0xCCCCCCCCCCCCCCCDLL * ((v23 - v22) >> 4));
        __p = v29;
        memset(&v29, 0, sizeof(v29));
        v31 = v25;
        v32 = v27;
        v33 = v28;
        v27 = 0uLL;
        v28 = 0;
        quasar::MetaInfo::setStructuredPrediction((v1 + 256), &__p);
        *&v37 = &v32;
        std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&v37);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&v37 = &v27;
        std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&v37);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }
      }

      *&v37 = &v34;
      std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&v37);
    }
  }

  std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::destroy(&v54, v55[0]);
}

void sub_1B50F010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char *a32)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a32);
  a32 = &a29;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&a32);
  std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::destroy(v32 - 128, *(v32 - 120));
  _Unwind_Resume(a1);
}

void quasar::FilterBlock::process(void *a1, uint64_t a2, uint64_t *a3)
{
  if (*a3 == a3[1])
  {
    if (quasar::gLogLevel >= 5)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v6 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "no hypotheses, sending empty list of hypotheses", 47);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v6);
    }

    quasar::ProcessingBlock::send(a1 + *(*a1 - 24), a3, 0);
  }

  else
  {
    if (*quasar::OptionValue<BOOL>::value((a1 + *(a1[60] - 24) + 480)) == 1)
    {
      quasar::FilterBlock::filterBasedOnAnnotations(a3, &v6);
    }

    else
    {
      v6 = 0uLL;
      *&v7 = 0;
      std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(&v6, *a3, a3[1], 0xF83E0F83E0F83E1 * ((a3[1] - *a3) >> 3));
    }

    v5 = quasar::OptionValue<int>::value((a1 + *(a1[41] - 24) + 328));
    quasar::FilterBlock::filterBasedOnNbestSizeLimit(&v6, *v5);
    if (quasar::FilterBlock::hasLocaleMismatchedMetainfo(a1, &v6))
    {
      std::vector<quasar::TranslationPhraseInternal>::resize(&v6, 1uLL);
    }

    if (*quasar::OptionValue<BOOL>::value(a1 + 79) == 1)
    {
      quasar::FilterBlock::filterBasedOnStructuredPredition(&v6);
    }

    if (*(&v6 + 1) - v6 == 264)
    {
      quasar::MetaInfo::eraseSenses((v6 + 256));
    }

    quasar::ProcessingBlock::send(a1 + *(*a1 - 24), &v6, 0);
    v23 = &v6;
    std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v23);
  }
}

void quasar::ConfiguredProcessingBlock<quasar::FilterBlockOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B50F04BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::FilterBlock::~FilterBlock(quasar::FilterBlock *this)
{
  *this = &unk_1F2CFCCD8;
  v1 = (this + 776);
  *(this + 97) = off_1F2CFCD60;
  quasar::FilterBlockOptions::~FilterBlockOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1);
}

{
  *this = &unk_1F2CFCCD8;
  v1 = (this + 776);
  *(this + 97) = off_1F2CFCD60;
  quasar::FilterBlockOptions::~FilterBlockOptions((this + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::FilterBlock::~FilterBlock(quasar::FilterBlock *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2CFCCD8;
  v2 = (v1 + 97);
  v1[97] = off_1F2CFCD60;
  quasar::FilterBlockOptions::~FilterBlockOptions((v1 + 1));

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_1F2CFCCD8;
  *(v1 + 97) = off_1F2CFCD60;
  quasar::FilterBlockOptions::~FilterBlockOptions((v1 + 8));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 97);

  JUMPOUT(0x1B8C85350);
}

quasar::TranslationPhraseInternal *quasar::TranslationPhraseInternal::TranslationPhraseInternal(quasar::TranslationPhraseInternal *this, const quasar::TranslationPhraseInternal *a2)
{
  v4 = quasar::TranslationPhrase::TranslationPhrase(this, a2);
  *(v4 + 25) = 0;
  *(v4 + 26) = 0;
  *(v4 + 27) = 0;
  std::vector<quasar::TranslationTokenInternal>::__init_with_size[abi:ne200100]<quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(v4 + 200, *(a2 + 25), *(a2 + 26), 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 26) - *(a2 + 25)) >> 3));
  *(this + 28) = *(a2 + 28);
  if (*(a2 + 255) < 0)
  {
    std::string::__init_copy_ctor_external((this + 232), *(a2 + 29), *(a2 + 30));
  }

  else
  {
    v5 = *(a2 + 232);
    *(this + 31) = *(a2 + 31);
    *(this + 232) = v5;
  }

  quasar::MetaInfo::MetaInfo((this + 256), (a2 + 256));
  return this;
}

void sub_1B50F0814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](va);
  quasar::TranslationPhrase::~TranslationPhrase(v2);
  _Unwind_Resume(a1);
}

quasar::TranslationPhrase *quasar::TranslationPhrase::TranslationPhrase(quasar::TranslationPhrase *this, const quasar::TranslationPhrase *a2)
{
  v4 = *a2;
  *(this + 8) = *(a2 + 8);
  *this = v4;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<quasar::TranslationToken>::__init_with_size[abi:ne200100]<quasar::TranslationToken*,quasar::TranslationToken*>(this + 16, *(a2 + 2), *(a2 + 3), 0x8E38E38E38E38E39 * ((*(a2 + 3) - *(a2 + 2)) >> 3));
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

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 64), a2 + 4);
  std::__optional_copy_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__optional_copy_base[abi:ne200100](this + 96, a2 + 96);
  v6 = *(a2 + 8);
  v7 = *(a2 + 143);
  *(this + 19) = 0;
  *(this + 143) = v7;
  *(this + 8) = v6;
  *(this + 20) = 0;
  *(this + 21) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 152, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(this + 176, *(a2 + 22), *(a2 + 23), (*(a2 + 23) - *(a2 + 22)) >> 6);
  return this;
}

void sub_1B50F096C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::TranslationPhrase::~TranslationPhrase(quasar::TranslationPhrase *this)
{
  v3 = (this + 176);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  if (*(this + 120) == 1)
  {
    v3 = (this + 96);
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v3 = (this + 16);
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::vector<quasar::TranslationToken>::__init_with_size[abi:ne200100]<quasar::TranslationToken*,quasar::TranslationToken*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TranslationToken>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F0B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TranslationToken>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::TranslationToken>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationToken>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationToken>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*,quasar::TranslationToken*,quasar::TranslationToken*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v8 = *(v6 + 12);
      v4[1].__r_.__value_.__l.__size_ = 0;
      LOWORD(v4[1].__r_.__value_.__l.__data_) = v8;
      v4[1].__r_.__value_.__r.__words[2] = 0;
      v4[2].__r_.__value_.__r.__words[0] = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v4[1].__r_.__value_.__l.__size_, *(v6 + 4), *(v6 + 5), (*(v6 + 5) - *(v6 + 4)) >> 2);
      v9 = *(v6 + 7);
      LODWORD(v4[2].__r_.__value_.__r.__words[2]) = *(v6 + 16);
      v4[2].__r_.__value_.__l.__size_ = v9;
      v6 = (v6 + 72);
      v4 = v14 + 3;
      v14 += 3;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationToken>,quasar::TranslationToken*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 72;
      std::allocator<quasar::TranslationToken>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void quasar::TranslationToken::~TranslationToken(quasar::TranslationToken *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__optional_copy_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<quasar::AlternativeSelectionSpan>,false> const&>(a1, a2);
  return a1;
}

void sub_1B50F0DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<quasar::AlternativeSelectionSpan>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<quasar::AlternativeSelectionSpan>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<quasar::AlternativeSelectionSpan>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(result, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<quasar::AlternativeSelectionSpan>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AlternativeSelectionSpan>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F0ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::AlternativeSelectionSpan>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::AlternativeSelectionSpan>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*,quasar::AlternativeSelectionSpan*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *v4 = *v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*>(v4 + 16, *(v6 + 16), *(v6 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24) - *(v6 + 16)) >> 3));
      v6 += 40;
      v4 = v11 + 40;
      v11 += 40;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<quasar::AlternativeSelectionSpan::Alternative>::__init_with_size[abi:ne200100]<quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F10C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*,quasar::AlternativeSelectionSpan::Alternative*>(uint64_t a1, void *a2, void *a3, void *a4)
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

      v4[2] = a2[2];
      a2 += 3;
      v4 += 3;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan::Alternative>,quasar::AlternativeSelectionSpan::Alternative*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 24;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::AlternativeSelectionSpan>,quasar::AlternativeSelectionSpan*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v4 = (v1 - 24);
      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::vector<quasar::TranslationPhrase::SegmentInfo>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TranslationPhrase::SegmentInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F138C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::TranslationPhrase::SegmentInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 7) = *(v6 + 7);
      *v4 = v7;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 16, v6[2], v6[3], (v6[3] - v6[2]) >> 2);
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4 + 40, v6[5], v6[6], (v6[6] - v6[5]) >> 2);
      v6 += 8;
      v4 = v12 + 64;
      v12 += 64;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 8;
      std::allocator<quasar::TranslationPhrase::SegmentInfo>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::vector<quasar::TranslationTokenInternal>::__init_with_size[abi:ne200100]<quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TranslationTokenInternal>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F1620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::TranslationTokenInternal>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(uint64_t a1, quasar::TranslationTokenInternal *a2, quasar::TranslationTokenInternal *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      quasar::TranslationTokenInternal::TranslationTokenInternal(v4, v6);
      v6 = (v6 + 136);
      v4 = (v11 + 136);
      v11 = (v11 + 136);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *quasar::TranslationTokenInternal::TranslationTokenInternal(std::string *this, const quasar::TranslationTokenInternal *a2)
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

  v5 = *(a2 + 12);
  this[1].__r_.__value_.__l.__size_ = 0;
  LOWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&this[1].__r_.__value_.__l.__size_, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  v6 = *(a2 + 7);
  LODWORD(this[2].__r_.__value_.__r.__words[2]) = *(a2 + 16);
  this[2].__r_.__value_.__l.__size_ = v6;
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

  v8 = *(a2 + 12);
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[0] = v8;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[4].__r_.__value_.__l.__size_, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  this[5].__r_.__value_.__l.__size_ = *(a2 + 16);
  return this;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F18FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,std::reverse_iterator<quasar::TranslationTokenInternal*>,std::reverse_iterator<quasar::TranslationTokenInternal*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,std::reverse_iterator<quasar::TranslationTokenInternal*>,std::reverse_iterator<quasar::TranslationTokenInternal*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = *(v6 - 4);
      if (v7)
      {
        *(v6 - 3) = v7;
        operator delete(v7);
      }

      if (*(v6 - 41) < 0)
      {
        operator delete(*(v6 - 8));
      }

      v8 = *(v6 - 13);
      if (v8)
      {
        *(v6 - 12) = v8;
        operator delete(v8);
      }

      v9 = v6 - 17;
      if (*(v6 - 113) < 0)
      {
        operator delete(*v9);
      }

      v6 -= 17;
    }

    while (v9 != a5);
  }
}

uint64_t std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TranslationPhraseInternal>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F1A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::TranslationPhraseInternal>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

quasar::TranslationPhraseInternal *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*,quasar::TranslationPhraseInternal*>(int a1, quasar::TranslationPhraseInternal *a2, quasar::TranslationPhraseInternal *a3, quasar::TranslationPhraseInternal *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(this, v6);
      v6 = (v6 + 264);
      this = (this + 264);
      v7 -= 264;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B50F1B80(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 264);
    do
    {
      quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v4);
      v4 = (v5 - 264);
      v2 += 264;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MetaInfo::StructuredPrediction::~StructuredPrediction(void **this)
{
  v2 = this + 4;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void quasar::FilterBlockOptions::~FilterBlockOptions(quasar::FilterBlockOptions *this)
{
  *this = &unk_1F2CFCB58;
  *(this + 78) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 744, *(this + 94));
  *(this + 78) = &unk_1F2D08890;
  v2 = *(this + 90);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
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

  *(this + 60) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 600, *(this + 76));
  *(this + 60) = &unk_1F2D08890;
  v3 = *(this + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
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

  *(this + 41) = &unk_1F2CFCE78;
  std::__tree<std::string>::destroy(this + 448, *(this + 57));
  *(this + 41) = &unk_1F2D08890;
  v4 = *(this + 53);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  if (*(this + 383) < 0)
  {
    operator delete(*(this + 45));
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  *(this + 20) = &unk_1F2CFAFC8;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 296, *(this + 38));
  if (*(this + 287) < 0)
  {
    operator delete(*(this + 33));
  }

  *(this + 20) = &unk_1F2D08890;
  v5 = *(this + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 239) < 0)
  {
    operator delete(*(this + 27));
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  *(this + 2) = &unk_1F2CFCE10;
  std::__tree<std::string>::destroy(this + 136, *(this + 18));
  *(this + 2) = &unk_1F2D08890;
  v6 = *(this + 14);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
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

void quasar::OptionValue<BOOL>::updateOptionalFromPtree(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = (a1 + 8);
  v6 = quasar::PTree::getOptional<BOOL>(a2, a1 + 8);
  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v8 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v7 + 1);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v15.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    memmove(v8, v9, v7);
  }

  *(&v8->__r_.__value_.__l.__data_ + v7) = 46;
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = std::string::append(&v15, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((v6 & 0x100) != 0)
  {
    *(a1 + 104) = v6;
    std::string::operator=((a1 + 32), &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1B50F1FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OptionValue<BOOL>::debugInfo(uint64_t a1)
{
  v2 = quasar::OptionValue<BOOL>::fallback(a1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v33);
  v3 = *(a1 + 31);
  if (v3 >= 0)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v3 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, v4, v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
  v8 = MEMORY[0x1B8C84BD0](v7, *(v2 + 104));
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " (", 2);
  v12 = *(v2 + 32);
  v11 = v2 + 32;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")", 1);
  if (*(a1 + 136))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, " overrides: [", 13);
    v17 = *(a1 + 120);
    v18 = (a1 + 128);
    if (v17 != (a1 + 128))
    {
      do
      {
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "", 1);
        v20 = *(v17 + 55);
        if (v20 >= 0)
        {
          v21 = (v17 + 4);
        }

        else
        {
          v21 = v17[4];
        }

        if (v20 >= 0)
        {
          v22 = *(v17 + 55);
        }

        else
        {
          v22 = v17[5];
        }

        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ": ", 3);
        MEMORY[0x1B8C84BD0](v24, *(v17 + 56));
        v25 = *v18;
        v26 = (a1 + 128);
        if (*v18)
        {
          do
          {
            v27 = v25;
            v25 = v25[1];
          }

          while (v25);
        }

        else
        {
          do
          {
            v27 = v26[2];
            v28 = *v27 == v26;
            v26 = v27;
          }

          while (v28);
        }

        if (v17 != v27)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, ", ", 2);
        }

        v29 = v17[1];
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
            v30 = v17[2];
            v28 = *v30 == v17;
            v17 = v30;
          }

          while (!v28);
        }

        v17 = v30;
      }

      while (v30 != v18);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "]", 1);
  }

  std::stringbuf::str();
  v33[0] = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v34 = v31;
  v35 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  v35 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v38);
}

void sub_1B50F2358(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::OptionValue<BOOL>::addOverride(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  result = quasar::PTree::getOptional<BOOL>(a4, a1 + 8);
  if ((result & 0x100) != 0)
  {
    v6 = result;
    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string_view>(a1 + 120, v7);
    if (a1 + 128 == result)
    {
      std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<void>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__emplace_hint_unique_impl<std::string_view &,BOOL &>();
    }

    *(result + 56) = v6;
  }

  return result;
}

uint64_t quasar::OptionValue<BOOL>::fallback(uint64_t a1)
{
  do
  {
    v1 = a1;
    a1 = *(a1 + 112);
    if (!a1)
    {
      break;
    }

    v2 = (v1 + 32);
    v3 = *(v1 + 55);
    if (v3 < 0)
    {
      if (*(v1 + 40) != 9)
      {
        return v1;
      }

      v2 = *v2;
    }

    else if (v3 != 9)
    {
      return v1;
    }

    v4 = *v2;
    v5 = *(v2 + 8);
  }

  while (v4 == 0x746C75616665643CLL && v5 == 62);
  return v1;
}

void sub_1B50F24E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50F260C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void sub_1B50F2744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OptionValue<int>::addOverride(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a3;
  quasar::PTree::getOptional<int>(a4, a1 + 8);
}

void sub_1B50F2894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50F29B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(a1, i))
  {
    i -= 80;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v4 = *a2;

    operator delete(v4);
  }
}

uint64_t quasar::OptionValue<int>::value(void *a1)
{
  v2 = quasar::OptionValue<BOOL>::fallback(a1) + 104;
  if ((*(*a1 + 32))(a1))
  {
    v3 = a1[11];
    v4 = v3[1];
    if (v4)
    {
      v5 = *v3;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v6 = std::__shared_weak_count::lock(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v6)
      {
        if (v5)
        {
          v7 = *v5;
          for (i = v5[1]; v7 != i; v7 += 3)
          {
            v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>((a1 + 15), v7);
            if (a1 + 16 != v9)
            {
              v2 = v9 + 56;
            }
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  return v2;
}

uint64_t std::vector<quasar::TranslationPhraseInternal>::__emplace_back_slow_path<quasar::TranslationPhraseInternal const&>(uint64_t a1, const quasar::TranslationPhraseInternal *a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((*(a1 + 16) - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(a1, v6);
  }

  v13 = 0;
  v14 = 264 * v2;
  quasar::TranslationPhraseInternal::TranslationPhraseInternal((264 * v2), a2);
  v15 = (264 * v2 + 264);
  v7 = *(a1 + 8);
  v8 = (264 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(&v13);
  return v12;
}

void sub_1B50F2D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*>(int a1, quasar::TranslationPhraseInternal *a2, quasar::TranslationPhraseInternal *a3, quasar::TranslationPhraseInternal *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(this, v8);
      v8 = (v8 + 264);
      this = (this + 264);
      v7 -= 264;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v6);
      v6 = (v6 + 264);
    }
  }
}

void sub_1B50F2D9C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 264);
    do
    {
      quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v4);
      v4 = (v5 - 264);
      v2 += 264;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 264;
    quasar::TranslationPhraseInternal::~TranslationPhraseInternal((i - 264));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<quasar::TranslationPhraseInternal>::__init_with_size[abi:ne200100]<quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TranslationPhraseInternal>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F2E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

quasar::TranslationPhraseInternal *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal const*,quasar::TranslationPhraseInternal*>(int a1, quasar::TranslationPhraseInternal *a2, quasar::TranslationPhraseInternal *a3, quasar::TranslationPhraseInternal *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(this, v6);
      v6 = (v6 + 264);
      this = (this + 264);
      v7 -= 264;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_1B50F2EF8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 264);
    do
    {
      quasar::TranslationPhraseInternal::~TranslationPhraseInternal(v4);
      v4 = (v5 - 264);
      v2 += 264;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

quasar::TranslationPhraseInternal *std::vector<quasar::TranslationPhraseInternal>::__append(quasar::TranslationPhraseInternal *result, unint64_t a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (0xF83E0F83E0F83E1 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = (v5 + 264 * a2);
      v11 = 264 * a2;
      do
      {
        result = quasar::TranslationPhraseInternal::TranslationPhraseInternal(v5);
        v5 = (v5 + 264);
        v11 -= 264;
      }

      while (v11);
      v5 = v10;
    }

    *(v3 + 1) = v5;
  }

  else
  {
    v6 = 0xF83E0F83E0F83E1 * ((v5 - *result) >> 3);
    if (v6 + a2 > 0xF83E0F83E0F83ELL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xF83E0F83E0F83E1 * ((v4 - *result) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x7C1F07C1F07C1FLL)
    {
      v9 = 0xF83E0F83E0F83ELL;
    }

    else
    {
      v9 = v8;
    }

    v23 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>>(result, v9);
    }

    v12 = 264 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 33 * a2;
    v14 = (v12 + 264 * a2);
    v15 = 8 * v13;
    do
    {
      quasar::TranslationPhraseInternal::TranslationPhraseInternal(v12);
      v12 += 264;
      v15 -= 264;
    }

    while (v15);
    *&v22 = v14;
    v16 = *(v3 + 1);
    v17 = (v21 + *v3 - v16);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhraseInternal>,quasar::TranslationPhraseInternal*>(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = *(v3 + 2);
    *(v3 + 8) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(&v20);
  }

  return result;
}

void sub_1B50F309C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TranslationPhraseInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

quasar::TranslationPhraseInternal *quasar::TranslationPhraseInternal::TranslationPhraseInternal(quasar::TranslationPhraseInternal *this)
{
  *this = 0xBF80000000000000;
  *(this + 8) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 132) = 0;
  *(this + 136) = 0;
  *(this + 140) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  *(this + 72) = 1;
  *(this + 146) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 31) = 0;
  quasar::MetaInfo::MetaInfo((this + 256));
  return this;
}

void sub_1B50F3160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 255) < 0)
  {
    operator delete(*(v10 + 232));
  }

  a10 = (v10 + 200);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&a10);
  quasar::TranslationPhrase::~TranslationPhrase(v10);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::destroy(a1, a2[1]);
    std::__tree<int>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::__map_value_compare<int,std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<quasar::MetaInfo::StructuredPrediction::Span::Range>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::__tree<quasar::MetaInfo::StructuredPrediction::Span::Range>::__emplace_unique_key_args<quasar::MetaInfo::StructuredPrediction::Span::Range,quasar::MetaInfo::StructuredPrediction::Span::Range const&>(uint64_t a1, _DWORD *a2)
{
  v2 = *std::__tree<quasar::MetaInfo::StructuredPrediction::Span::Range>::__find_equal<quasar::MetaInfo::StructuredPrediction::Span::Range>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<quasar::MetaInfo::StructuredPrediction::Span::Range>::__find_equal<quasar::MetaInfo::StructuredPrediction::Span::Range>(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!quasar::operator<(a3, v4 + 7))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!quasar::operator<(v7 + 7, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::__tree<quasar::MetaInfo::StructuredPrediction::Span::Range>::__count_unique<quasar::MetaInfo::StructuredPrediction::Span::Range>(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if (!quasar::operator<(a2, v2 + 7))
      {
        if (!quasar::operator<(v2 + 7, a2))
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__construct_one_at_end[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span const&>(uint64_t a1, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v4 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v6 = *(a2 + 24);
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 24) = v6;
  }

  v7 = *(a2 + 6);
  *(v4 + 56) = 0;
  *(v4 + 48) = v7;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  result = std::vector<quasar::MetaInfo::StructuredPrediction::Span::Range>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span::Range*,quasar::MetaInfo::StructuredPrediction::Span::Range*>(v4 + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_1B50F3504(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__emplace_back_slow_path<quasar::MetaInfo::StructuredPrediction::Span const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>(a1, v6);
  }

  v7 = 80 * v2;
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v9 = *(a2 + 24);
    *(v7 + 40) = *(a2 + 5);
    *(v7 + 24) = v9;
  }

  v10 = *(a2 + 6);
  *(v7 + 56) = 0;
  *(v7 + 48) = v10;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span::Range>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span::Range*,quasar::MetaInfo::StructuredPrediction::Span::Range*>(v7 + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *&v19 = v19 + 80;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::~__split_buffer(&v17);
  return v16;
}

void sub_1B50F36C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::MetaInfo::StructuredPrediction::Span::Range>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span::Range*,quasar::MetaInfo::StructuredPrediction::Span::Range*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F376C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
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
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 48) = v10;
      *(a4 + 56) = 0;
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 80;
      std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::MetaInfo::StructuredPrediction::Span>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(v5, v4 - 80);
  }
}

uint64_t std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F3A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::MetaInfo::StructuredPrediction::Span>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*,quasar::MetaInfo::StructuredPrediction::Span*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      v9 = *(v6 + 6);
      v4[2].__r_.__value_.__l.__size_ = 0;
      v4[2].__r_.__value_.__r.__words[0] = v9;
      v4[2].__r_.__value_.__r.__words[2] = 0;
      v4[3].__r_.__value_.__r.__words[0] = 0;
      std::vector<quasar::MetaInfo::StructuredPrediction::Span::Range>::__init_with_size[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span::Range*,quasar::MetaInfo::StructuredPrediction::Span::Range*>(&v4[2].__r_.__value_.__l.__size_, *(v6 + 7), *(v6 + 8), (*(v6 + 8) - *(v6 + 7)) >> 3);
      v6 += 5;
      v4 = (v14 + 80);
      v14 = (v14 + 80);
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void sub_1B50F3BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>,quasar::MetaInfo::StructuredPrediction::Span*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1B50F4F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x1B8C84B90](&a18);
  std::ofstream::~ofstream(&a20, MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C85200](&a72);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B50F51B0(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

void sub_1B50F5264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SimpleMmapBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void multiply(void *a1, float a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [v5 objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * v8), v11}];
          *&v10 = a2;
          [v9 multiply:v10];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

float l2norm(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      v6 = 0.0;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [v3 objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * i), v12}];
          [v8 l2norm];
          v10 = v9;

          v6 = v6 + v10;
        }

        v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1B8C84A00](a1 + 1);

  return std::ostream::~ostream();
}

void *std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void quasar::corrective_reranking::FusedIntentClassifier::FusedIntentClassifier(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  quasar::corrective_reranking::InitFeaturizers(a2, a3, a1 + 1);
  kaldi::quasar::LoadClassifier(a5);
}

void sub_1B50F5724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float quasar::corrective_reranking::FusedIntentClassifier::classifyIntent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::Matrix<float>::Matrix(v14);
  quasar::corrective_reranking::FusedIntentClassifier::featurizeParses(a1, a2, a3, a4, a5, v14);
  v10 = kaldi::Matrix<float>::Matrix(v13);
  (*(**(a1 + 32) + 16))(*(a1 + 32), v14, v13, v10);
  v11 = *(v13[0] + 4);
  kaldi::Matrix<float>::~Matrix(v13);
  kaldi::Matrix<float>::~Matrix(v14);
  return v11;
}

void sub_1B50F5808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  kaldi::Matrix<float>::~Matrix(&a9);
  kaldi::Matrix<float>::~Matrix(&a14);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::FusedIntentClassifier::featurizeParses(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  kaldi::Matrix<float>::Resize(a6, -1431655765 * ((a2[1] - *a2) >> 7), (a1[2] - a1[1]) >> 3, 1, 0);
  v13 = *a2;
  v12 = a2[1];
  if (v12 != *a2)
  {
    v14 = 0;
    v15 = a1[1];
    v16 = a1[2];
    do
    {
      if (v16 == v15)
      {
        v16 = v15;
      }

      else
      {
        v17 = 0;
        do
        {
          v18 = *(v15 + 8 * v17);
          v19 = *a2 + 384 * v14;
          v20 = *a1;
          v21[0] = a2;
          v21[1] = v19;
          v21[2] = v20;
          v21[3] = a3;
          v21[4] = a4;
          v21[5] = a5;
          *(*a6 + 4 * v14 * *(a6 + 16) + 4 * v17++) = (*(*v18 + 16))(v18, v21);
          v15 = a1[1];
          v16 = a1[2];
        }

        while (v17 < (v16 - v15) >> 3);
        v13 = *a2;
        v12 = a2[1];
      }

      ++v14;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 7) > v14);
  }
}

void std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<quasar::corrective_reranking::Featurizer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void quasar::ioutils::WriteQuasarHeader(void *a1, int a2, uint64_t a3)
{
  v10 = 3;
  LODWORD(v9) = 7500657;
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  if (a2 == 2)
  {
    v5 = "uapd";
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v5 = "lme";
  }

  MEMORY[0x1B8C84820](__p, v5);
LABEL_6:
  std::ostream::put();
  std::ostream::put();
  v6 = a1 + *(*a1 - 24);
  if (*(v6 + 2) <= 6)
  {
    *(v6 + 2) = 7;
  }

  kaldi::WriteToken(a1, 1, &v9);
  kaldi::WriteBasicType<int>(a1, 1, 1);
  kaldi::WriteToken(a1, 1, __p);
  kaldi::WriteBasicType<int>(a1, 1, a3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_1B50F5B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t kaldi::WriteBasicType<int>(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::ostream::put();
    result = std::ostream::write();
  }

  else
  {
    v5 = MEMORY[0x1B8C84C00](a1, a3);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteBasicType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

uint64_t quasar::ioutils::ReadQuasarHeader(uint64_t *a1, int a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v55 = 1;
  kaldi::InitKaldiInputStream(a1, &v55);
  kaldi::ReadToken(a1, v55, &v57);
  v4 = quasar::gLogLevel;
  if (quasar::gLogLevel > 5)
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
    v38 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "LME STREAM DUMP [Header]", 24);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v38);
    v4 = quasar::gLogLevel;
  }

  if (v4 >= 5)
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
    v38 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v6 = MEMORY[0x1B8C84C60](v5, v60);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": qsrHeader = ", 14);
    if (v59 >= 0)
    {
      v8 = &v57;
    }

    else
    {
      v8 = v57;
    }

    if (v59 >= 0)
    {
      v9 = HIBYTE(v59);
    }

    else
    {
      v9 = v58;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v38);
  }

  if ((SHIBYTE(v59) & 0x80000000) == 0)
  {
    if (SHIBYTE(v59) == 3)
    {
      v10 = &v57;
      goto LABEL_16;
    }

LABEL_59:
    if (quasar::gLogLevel >= 1)
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
      v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Incorrect quasar blob header", 28);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v38);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect quasar blob header");
    goto LABEL_65;
  }

  if (v58 != 3)
  {
    goto LABEL_59;
  }

  v10 = v57;
LABEL_16:
  v11 = *v10;
  v12 = *(v10 + 2);
  if (v11 != 29553 || v12 != 114)
  {
    goto LABEL_59;
  }

  kaldi::ReadBasicType<int>(a1, v55, &v56);
  if (quasar::gLogLevel >= 5)
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
    v38 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v15 = MEMORY[0x1B8C84C60](v14, v60);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ": metaVersion = ", 16);
    MEMORY[0x1B8C84C00](v16, v56);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v38);
  }

  if (v56 != 1)
  {
    if (quasar::gLogLevel >= 1)
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
      v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Incorrect quasar blob version", 29);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v38);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect quasar blob version");
LABEL_65:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  __p = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  kaldi::ReadToken(a1, v55, &__p);
  if (quasar::gLogLevel >= 5)
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
    v38 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v18 = MEMORY[0x1B8C84C60](v17, v60);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": dataTypeStr = ", 16);
    if (v37 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v37 >= 0)
    {
      v21 = HIBYTE(v37);
    }

    else
    {
      v21 = v36;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, p_p, v21);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v38);
  }

  if (a2 == 2)
  {
    if (SHIBYTE(v37) < 0)
    {
      if (v36 != 4)
      {
        goto LABEL_66;
      }

      v23 = __p;
    }

    else
    {
      if (SHIBYTE(v37) != 4)
      {
        goto LABEL_66;
      }

      v23 = &__p;
    }

    if (*v23 == 1685086581)
    {
      goto LABEL_52;
    }

LABEL_66:
    if (quasar::gLogLevel >= 1)
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
      v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Incorrect data type for UserAcousticProfileData", 47);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v38);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Incorrect data type for UserAcousticProfileData");
LABEL_69:
    __cxa_throw(v27, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (a2 != 1)
  {
    goto LABEL_52;
  }

  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if (SHIBYTE(v37) == 3)
    {
      v22 = &__p;
      goto LABEL_42;
    }

LABEL_46:
    if (quasar::gLogLevel >= 1)
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
      v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "Incorrect data type for Lme", 27);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v38);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Incorrect data type for Lme");
    goto LABEL_69;
  }

  if (v36 != 3)
  {
    goto LABEL_46;
  }

  v22 = __p;
LABEL_42:
  v24 = *v22;
  v25 = *(v22 + 2);
  if (v24 != 28012 || v25 != 101)
  {
    goto LABEL_46;
  }

LABEL_52:
  kaldi::ReadBasicType<int>(a1, v55, &v34);
  if (quasar::gLogLevel >= 5)
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
    v38 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v38);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v38, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v29 = MEMORY[0x1B8C84C60](v28, v60);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ": dataVersion = ", 16);
    MEMORY[0x1B8C84C00](v30, v34);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v38);
  }

  v31 = v34;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v57);
  }

  return v31;
}

void sub_1B50F6308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 193) < 0)
  {
    operator delete(*(v16 + 280));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::OnlineLASDecodable::OnlineLASDecodable(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = &unk_1F2CFCEB0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 24) = a4;
  return result;
}

void kaldi::quasar::OnlineLASDecodable::~OnlineLASDecodable(kaldi::quasar::OnlineLASDecodable *this)
{
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::OnlineLASDecodable::Compute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v7 = (*(**(a1 + 8) + 40))(*(a1 + 8), a3, a4, v17, v15);
  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "loglikes");
    v19 = __p;
    v8 = std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a5, __p);
    v9 = v8[5];
    if (v9)
    {
      v8[6] = v9;
      operator delete(v9);
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = 0;
    }

    *(v8 + 5) = *v17;
    v8[7] = v18;
    v17[1] = 0;
    v18 = 0;
    v17[0] = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "att_probs");
    v19 = __p;
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a5, __p);
    v11 = v10[5];
    if (v11)
    {
      v10[6] = v11;
      operator delete(v11);
      v10[5] = 0;
      v10[6] = 0;
      v10[7] = 0;
    }

    *(v10 + 5) = *v15;
    v10[7] = v16;
    v15[1] = 0;
    v16 = 0;
    v15[0] = 0;
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    ++*(a1 + 32);
  }

  else
  {
    kaldi::quasar::OnlineLASDecodable::TryEncode(a1);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  return v7;
}

void sub_1B50F664C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::OnlineLASDecodable::TryEncode(kaldi::quasar::OnlineLASDecodable *this)
{
  kaldi::CuMatrix<float>::CuMatrix(v8, *(this + 6), *(*(this + 2) + 24), 1, 0, 0);
  if (*(this + 6) >= 1)
  {
    v2 = 0;
    v3 = *(this + 7);
    while (kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 2), v3, 1))
    {
      v7[1] = *&v8[1] + 4 * v10 * v2;
      v7[0] = &unk_1F2CFCA48;
      v7[2] = v9;
      v7[3] = v11;
      kaldi::OnlineFeatureMatrix::GetFrame(*(this + 2), *(this + 7), v6);
      kaldi::CuVectorBase<float>::CopyFromVec<float>(v7, v6);
      v2 = (v2 + 1);
      v4 = *(this + 6);
      v3 = *(this + 7) + 1;
      *(this + 7) = v3;
      if (v2 >= v4)
      {
        goto LABEL_7;
      }
    }

    if (!v2)
    {
      goto LABEL_10;
    }

LABEL_7:
    if (v2 < *(this + 6))
    {
      kaldi::CuMatrix<float>::Resize(v8, v2, *(*(this + 2) + 24), 2, 0);
    }

    (*(**(this + 1) + 16))(*(this + 1), v8);
  }

LABEL_10:
  if ((kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 2), *(this + 7), 1) & 1) == 0)
  {
    (*(**(this + 1) + 32))(*(this + 1));
  }

  return kaldi::CuMatrix<float>::~CuMatrix(v8);
}

void sub_1B50F6828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::OnlineLASDecodable::Compute(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v6 = (*(**(a1 + 8) + 56))(*(a1 + 8), a3, v12);
  if (v6)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "loglikes");
    v14 = __p;
    v7 = std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a4, __p);
    v8 = v7[5];
    if (v8)
    {
      v7[6] = v8;
      operator delete(v8);
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
    }

    *(v7 + 5) = *v12;
    v7[7] = v13;
    v12[1] = 0;
    v13 = 0;
    v12[0] = 0;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    ++*(a1 + 32);
  }

  else
  {
    kaldi::quasar::OnlineLASDecodable::TryEncode(a1);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v6;
}

void sub_1B50F6964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::OnlineLASAttentionChecker::OnlineLASAttentionChecker(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = std::unordered_set<int>::unordered_set(a1, a5);
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a4;
  return result;
}

void kaldi::quasar::OnlineLASAttentionChecker::Check(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v11 = a4;
  LOBYTE(v61[0].__locale_) = 0;
  std::vector<BOOL>::vector(a6, a4);
  v56 = a5;
  if (*(a1 + 44) < a5)
  {
    v12 = *a2;
    v13 = *(a2 + 8);
    v15 = *a3;
    v14 = *(a3 + 8);
    v64 = *a3;
    v60 = a4;
    if (a4 >= 1)
    {
      v16 = 0;
      v17 = ((v13 - v12) >> 2) / v11;
      v57 = v17;
      v58 = v17 << 32;
      v18 = ((v14 - v15) >> 2) / v11 / v56;
      while (1)
      {
        v19 = &v12[v57];
        if (v58)
        {
          v20 = v12 + 1;
          v21 = v12;
          if (v12 + 1 != v19)
          {
            v22 = *v12;
            v21 = v12;
            v23 = v12 + 1;
            do
            {
              v24 = *v23++;
              v25 = v24;
              if (v22 < v24)
              {
                v22 = v25;
                v21 = v20;
              }

              v20 = v23;
            }

            while (v23 != v19);
          }
        }

        else
        {
          v21 = v12;
        }

        v26 = *(a1 + 56) == ((v21 - v12) >> 2);
        v27 = 44;
        if (v26)
        {
          v27 = 48;
        }

        v28 = *(a1 + v27);
        v63 = 0;
        if (v18 <= 0)
        {
          break;
        }

        v29 = (v56 - v28);
        v30 = 1;
        do
        {
          if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1, &v63))
          {
            v15 += v56;
            v62 = v15;
            v31 = kaldi::quasar::OnlineLASAttentionChecker::AttentionLocation(a1, &v64, &v62);
            if (*(a1 + 40) > *&v31)
            {
              if (kaldi::g_kaldi_verbose_level >= 3)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(v61, 3);
                v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "beam ", 5);
                v33 = MEMORY[0x1B8C84C00](v32, (v16 + 1));
                v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " of ", 4);
                v35 = MEMORY[0x1B8C84C00](v34, v60);
                v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, ", head ", 7);
                v37 = MEMORY[0x1B8C84C00](v36, (v63 + 1));
                v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " of ", 4);
                v39 = MEMORY[0x1B8C84C00](v38, v18);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ": alignment too low: ", 21);
                v40 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " < ", 3);
                std::ostream::operator<<();
                kaldi::KaldiVlogMessage::~KaldiVlogMessage(v61);
              }

              v30 = 0;
            }

            v41 = HIDWORD(v31);
            if (v29 < v41)
            {
              if (kaldi::g_kaldi_verbose_level >= 3)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(v61, 3);
                v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "beam ", 5);
                v43 = MEMORY[0x1B8C84C00](v42, (v16 + 1));
                v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " of ", 4);
                v45 = MEMORY[0x1B8C84C00](v44, v60);
                v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ": head ", 7);
                v47 = MEMORY[0x1B8C84C00](v46, (v63 + 1));
                v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " of ", 4);
                v49 = MEMORY[0x1B8C84C00](v48, v18);
                v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ": location was ", 15);
                v51 = MEMORY[0x1B8C84C00](v50, v41);
                v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " > ", 3);
                MEMORY[0x1B8C84C00](v52, v29);
                kaldi::KaldiVlogMessage::~KaldiVlogMessage(v61);
              }

              v30 = 0;
            }

            v64 = v15;
          }

          ++v63;
        }

        while (v63 < v18);
        v53 = (*a6 + 8 * (v16 >> 6));
        v54 = 1 << v16;
        if (v30)
        {
          goto LABEL_30;
        }

        v55 = *v53 & ~v54;
LABEL_31:
        *v53 = v55;
        ++v16;
        v12 = v19;
        if (v16 == v60)
        {
          return;
        }
      }

      v53 = (*a6 + 8 * (v16 >> 6));
      v54 = 1 << v16;
LABEL_30:
      v55 = *v53 | v54;
      goto LABEL_31;
    }
  }
}

void sub_1B50F6E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char a16)
{
  if (*a14)
  {
    operator delete(*a14);
  }

  _Unwind_Resume(exception_object);
}

unint64_t kaldi::quasar::OnlineLASAttentionChecker::AttentionLocation(uint64_t a1, float **a2, float **a3)
{
  v6 = *a3 - *a2;
  v7 = v6 >> 2;
  std::vector<float>::vector[abi:ne200100](&__p, (v6 >> 2));
  v8 = *a2;
  v9 = *a3;
  v10 = __p;
  if (*a2 != v9)
  {
    v12 = *v8;
    v11 = v8 + 1;
    v13 = v12;
    *__p = v12;
    if (v11 != v9)
    {
      v14 = v10 + 1;
      do
      {
        v15 = *v11++;
        v13 = v13 + v15;
        *v14++ = v13;
      }

      while (v11 != v9);
    }
  }

  v16 = *(a1 + 52);
  v17 = v30;
  if (v16 < v7)
  {
    v18 = &v30[-v16];
    if (v10 != v18)
    {
      v19 = v30 - 1;
      do
      {
        v20 = *--v18;
        *v19 = *v19 - v20;
        --v19;
      }

      while (v18 != v10);
    }
  }

  if (v10 == v17)
  {
    v22 = v10;
  }

  else
  {
    v21 = v10 + 1;
    v22 = v10;
    if (v10 + 1 != v17)
    {
      v23 = *v10;
      v22 = v10;
      v24 = v10 + 1;
      do
      {
        v25 = *v24++;
        v26 = v25;
        if (v23 < v25)
        {
          v23 = v26;
          v22 = v21;
        }

        v21 = v24;
      }

      while (v24 != v17);
    }
  }

  v27 = *v22;
  if (v10)
  {
    v30 = v10;
    operator delete(v10);
  }

  return v27 | (((v22 - v10) >> 2) << 32);
}

kaldi::quasar::OnlineLASSpeculativeDecodable *kaldi::quasar::OnlineLASSpeculativeDecodable::OnlineLASSpeculativeDecodable(kaldi::quasar::OnlineLASSpeculativeDecodable *this, kaldi::quasar::CEStatelessEncoderNet *a2, kaldi::quasar::CEStatelessDecoderNet *a3, kaldi::OnlineFeatureMatrix *a4, const kaldi::quasar::OnlineLASAttentionChecker *a5, int a6, int a7, int a8, BOOL a9)
{
  *this = &unk_1F2CFCEF8;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 4) = a5;
  *(this + 10) = a6;
  *(this + 11) = a7;
  *(this + 12) = a8;
  *(this + 52) = a9;
  v10 = (this + 64);
  *(this + 88) = 0u;
  v11 = (this + 88);
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 180) = 0u;
  *(this + 98) = 257;
  *(this + 50) = 0;
  *(this + 204) = 0;
  kaldi::quasar::CEStatelessEncoderNet::InitialStates(a2, &v13);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(v10);
  *(this + 4) = v13;
  *(this + 10) = v14;
  v14 = 0;
  v13 = 0uLL;
  v15 = &v13;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v15);
  kaldi::quasar::CEStatelessDecoderNet::InitialStates(*(this + 2), &v13);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(v11);
  *(this + 88) = v13;
  *(this + 13) = v14;
  v14 = 0;
  v13 = 0uLL;
  v15 = &v13;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v15);
  return this;
}

{
  return kaldi::quasar::OnlineLASSpeculativeDecodable::OnlineLASSpeculativeDecodable(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_1B50F7098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 + 23);
  *(v9 + 23) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(v9 + 20);
  if (v12)
  {
    *(v9 + 21) = v12;
    operator delete(v12);
  }

  std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~deque[abi:ne200100](v9 + 14);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a9);
  quasar::Bitmap::~Bitmap(v9);
  _Unwind_Resume(a1);
}

void kaldi::quasar::OnlineLASSpeculativeDecodable::~OnlineLASSpeculativeDecodable(kaldi::quasar::OnlineLASSpeculativeDecodable *this)
{
  *this = &unk_1F2CFCEF8;
  v2 = *(this + 23);
  *(this + 23) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~deque[abi:ne200100](this + 14);
  v4 = (this + 88);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 64);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::quasar::OnlineLASSpeculativeDecodable::~OnlineLASSpeculativeDecodable(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::OnlineLASSpeculativeDecodable::Compute(uint64_t (***a1)(void, uint64_t, void **, void **, uint64_t, uint64_t), uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v16 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v17, &v16, &v17, 1uLL);
  v12 = a3;
  v14 = 0;
  v15 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__p, &v12, &__p, 1uLL);
  v10 = (**a1)(a1, a2, &v17, &__p, a4, a5);
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v10;
}

void sub_1B50F7300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::OnlineLASSpeculativeDecodable::CheckDecoderSuccess(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3 & 0x3F;
  if (v3 <= 0x3F && v4 == 0)
  {
LABEL_12:
    *(a1 + 192) = 0;
    return 1;
  }

  else
  {
    v7 = 0;
    v8 = *a2;
    while (((*v8 >> v7) & 1) != 0)
    {
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v7 == v4 && v8 == (*a2 + 8 * (v3 >> 6)))
      {
        goto LABEL_12;
      }
    }

    v10 = *(a1 + 192);
    *(a1 + 192) = v10 + 1;
    if (v10 >= 7 && v3 >= 1)
    {
      v12 = 0;
      v13 = kaldi::g_kaldi_verbose_level;
      do
      {
        if (((*(*a2 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) != 0 || v13 <= 2)
        {
          ++v12;
        }

        else
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 3);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Beam ", 5);
          v15 = MEMORY[0x1B8C84C00](v14, ++v12);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " of ", 4);
          v17 = MEMORY[0x1B8C84C00](v16, v3);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " has failed decoder checks ", 27);
          v19 = MEMORY[0x1B8C84C00](v18, *(a1 + 192));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " times; could num-forbidden-frames[-silence] be too low?", 56);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
          v13 = kaldi::g_kaldi_verbose_level;
        }
      }

      while (v12 != (v3 & 0x7FFFFFFF));
    }

    return 0;
  }
}

uint64_t kaldi::quasar::OnlineLASSpeculativeDecodable::Compute(kaldi::quasar::OnlineLASSpeculativeDecodable *this, uint64_t a2, uint64_t a3, void *a4, void *a5, char **a6)
{
  if (*(this + 196) == 1)
  {
    *(this + 196) = 0;
    kaldi::quasar::OnlineLASSpeculativeDecodable::Encode(this);
  }

  if (!*(this + 23))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::clear(a5);
    return 1;
  }

  v114 = 0uLL;
  v115 = 0;
  memset(&v113, 0, sizeof(v113));
  v111[0] = 0;
  v111[1] = 0;
  v112 = 0;
  v102 = (this + 88);
  kaldi::quasar::CEStatelessDecoderNet::Decode(*(this + 2), this + 11, this + 23, a3, a4, *(this + 197), &v114, &v113, v111);
  v10 = *(this + 14);
  v11 = (a4[1] - *a4) >> 2;
  v12 = v10 / kaldi::quasar::CEStatelessEncoderNet::FrameSubsamplingFactor(*(this + 1));
  if ((*(this + 204) & 1) != 0 || !kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 3), *(this + 14), 1))
  {
    goto LABEL_9;
  }

  kaldi::quasar::OnlineLASAttentionChecker::Check(*(this + 4), &v113, v111, v11, v12, __p);
  v13 = kaldi::quasar::OnlineLASSpeculativeDecodable::CheckDecoderSuccess(this, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
LABEL_9:
    ++*(this + 15);
    *(this + 197) = 1;
    std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate(v102);
    *(this + 88) = v114;
    *(this + 13) = v115;
    v115 = 0;
    v114 = 0uLL;
    v14 = *(this + 15);
    v15 = *(this + 16);
    if (v15 == v14)
    {
      v16 = (this + 152);
      v15 = *(this + 15);
    }

    else
    {
      v16 = (this + 152);
      v17 = *(this + 18);
      v18 = &v14[v17 / 0xAA];
      v19 = *v18 + 24 * (v17 % 0xAA);
      v20 = v14[(*(this + 19) + v17) / 0xAA] + 24 * ((*(this + 19) + v17) % 0xAA);
      if (v19 != v20)
      {
        do
        {
          __p[0] = v19;
          std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](__p);
          v19 += 24;
          if (v19 - *v18 == 4080)
          {
            v21 = v18[1];
            ++v18;
            v19 = v21;
          }
        }

        while (v19 != v20);
        v14 = *(this + 15);
        v15 = *(this + 16);
      }
    }

    *v16 = 0;
    v23 = v15 - v14;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v14);
        v24 = *(this + 16);
        v14 = (*(this + 15) + 8);
        *(this + 15) = v14;
        v23 = (v24 - v14) >> 3;
      }

      while (v23 > 2);
    }

    if (v23 == 1)
    {
      v25 = 85;
    }

    else
    {
      if (v23 != 2)
      {
LABEL_24:
        *(this + 21) = *(this + 20);
        kaldi::quasar::OnlineLASSpeculativeDecodable::AccumulateAlignments(v111, v11, v12, __p);
        if (v111[0])
        {
          v111[1] = v111[0];
          operator delete(v111[0]);
        }

        *v111 = *__p;
        v112 = v110;
        std::string::basic_string[abi:ne200100]<0>(__p, "loglikes");
        v105 = __p;
        v26 = std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a5, __p);
        v27 = v26[5];
        if (v27)
        {
          v26[6] = v27;
          operator delete(v27);
          v26[5] = 0;
          v26[6] = 0;
          v26[7] = 0;
        }

        *(v26 + 5) = v113;
        memset(&v113, 0, sizeof(v113));
        if (SHIBYTE(v110) < 0)
        {
          operator delete(__p[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "att_probs");
        v105 = __p;
        v28 = std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a5, __p);
        v29 = v28[5];
        if (v29)
        {
          v28[6] = v29;
          operator delete(v29);
          v28[5] = 0;
          v28[6] = 0;
          v28[7] = 0;
        }

        *(v28 + 5) = *v111;
        v28[7] = v112;
        v111[1] = 0;
        v112 = 0;
        v111[0] = 0;
        if (SHIBYTE(v110) < 0)
        {
          operator delete(__p[0]);
        }

        v22 = 1;
        goto LABEL_35;
      }

      v25 = 170;
    }

    *(this + 18) = v25;
    goto LABEL_24;
  }

  *(this + 196) = 1;
  if (*(this + 197) == 1 && kaldi::quasar::CEStatelessDecoderNet::CopyCellOutputs(*(this + 2), &v114, v102))
  {
    *(this + 197) = 0;
  }

  if (*(this + 11) >= 1)
  {
    if (*(this + 12) < 1)
    {
      v33 = *(this + 19);
      v32 = *(this + 21);
LABEL_54:
      if (v33)
      {
        v34 = 0;
LABEL_76:
        LODWORD(v53) = *(v32 - 8);
        while (1)
        {
          v54 = (*(*this + 24))(this);
          v55 = *(this + 11);
          if (v53 == v54 || v34 >= v55)
          {
            break;
          }

          v57 = *(this + 2);
          v58 = *(this + 19) + *(this + 18) - 1;
          v59 = *(*(this + 15) + 8 * (v58 / 0xAA));
          v108 = 0;
          __p[1] = 0;
          v110 = 0;
          __p[0] = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v108, __p, 1uLL);
          v104 = v53;
          v106 = 0;
          v107 = 0;
          v105 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v105, &v104, &v105, 1uLL);
          kaldi::quasar::CEStatelessDecoderNet::Decode(v57, (v59 + 24 * (v58 % 0xAA)), this + 23, __p, &v105, 1, &v114, &v113, v111);
          if (v105)
          {
            v106 = v105;
            operator delete(v105);
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(this + 14, &v114);
          if (v113.__begin_ == v113.__end_)
          {
            begin = v113.__begin_;
          }

          else
          {
            v60 = v113.__begin_ + 1;
            begin = v113.__begin_;
            if (v113.__begin_ + 1 != v113.__end_)
            {
              v62 = *v113.__begin_;
              begin = v113.__begin_;
              v63 = v113.__begin_ + 1;
              do
              {
                v64 = *v63++;
                v65 = v64;
                if (v62 < v64)
                {
                  v62 = v65;
                  begin = v60;
                }

                v60 = v63;
              }

              while (v63 != v113.__end_);
            }
          }

          v53 = (begin - v113.__begin_) >> 2;
          v67 = *(this + 21);
          v66 = *(this + 22);
          if (v67 >= v66)
          {
            v69 = *(this + 20);
            v70 = v67 - v69;
            v71 = (v67 - v69) >> 3;
            v72 = v71 + 1;
            if ((v71 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v73 = v66 - v69;
            if (v73 >> 2 > v72)
            {
              v72 = v73 >> 2;
            }

            v49 = v73 >= 0x7FFFFFFFFFFFFFF8;
            v74 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v49)
            {
              v74 = v72;
            }

            if (v74)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 160, v74);
            }

            v75 = (8 * v71);
            *v75 = v53;
            v75[1] = *begin;
            v68 = 8 * v71 + 8;
            memcpy(0, v69, v70);
            v76 = *(this + 20);
            *(this + 20) = 0;
            *(this + 21) = v68;
            *(this + 22) = 0;
            if (v76)
            {
              operator delete(v76);
            }
          }

          else
          {
            *v67 = v53;
            *(v67 + 1) = *begin;
            v68 = (v67 + 8);
          }

          *(this + 21) = v68;
          ++v34;
        }

        if (v55 >= 1 && *(this + 52) == 1 && ((*(this + 204) & 1) != 0 || (kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 3), *(this + 14), 1) & 1) == 0))
        {
          if (*(this + 12) >= 1)
          {
            v77 = 0;
            do
            {
              if (!*(this + 19))
              {
                break;
              }

              std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::pop_back(this + 14);
              *(this + 21) -= 8;
              ++v77;
            }

            while (v77 < *(this + 12));
          }

          v78 = *(this + 21);
          if (*(this + 20) == v78)
          {
            v79 = *a4;
          }

          else
          {
            v79 = (v78 - 8);
          }

          LODWORD(v80) = *v79;
          while (v80 != (*(*this + 24))(this))
          {
            v81 = *(this + 19);
            v82 = (this + 88);
            if (v81)
            {
              v82 = (*(*(this + 15) + 8 * ((v81 + *(this + 18) - 1) / 0xAAuLL)) + 24 * ((v81 + *(this + 18) - 1) % 0xAAuLL));
            }

            v83 = *(this + 2);
            v108 = 0;
            __p[1] = 0;
            v110 = 0;
            __p[0] = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(__p, &v108, __p, 1uLL);
            v104 = v80;
            v106 = 0;
            v107 = 0;
            v105 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v105, &v104, &v105, 1uLL);
            if (*(this + 19))
            {
              v84 = 1;
            }

            else
            {
              v84 = *(this + 197);
            }

            kaldi::quasar::CEStatelessDecoderNet::Decode(v83, v82, this + 23, __p, &v105, v84 & 1, &v114, &v113, v111);
            if (v105)
            {
              v106 = v105;
              operator delete(v105);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(this + 14, &v114);
            if (v113.__begin_ == v113.__end_)
            {
              v86 = v113.__begin_;
            }

            else
            {
              v85 = v113.__begin_ + 1;
              v86 = v113.__begin_;
              if (v113.__begin_ + 1 != v113.__end_)
              {
                v87 = *v113.__begin_;
                v86 = v113.__begin_;
                v88 = v113.__begin_ + 1;
                do
                {
                  v89 = *v88++;
                  v90 = v89;
                  if (v87 < v89)
                  {
                    v87 = v90;
                    v86 = v85;
                  }

                  v85 = v88;
                }

                while (v88 != v113.__end_);
              }
            }

            v80 = (v86 - v113.__begin_) >> 2;
            v92 = *(this + 21);
            v91 = *(this + 22);
            if (v92 >= v91)
            {
              v94 = *(this + 20);
              v95 = v92 - v94;
              v96 = (v92 - v94) >> 3;
              v97 = v96 + 1;
              if ((v96 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v98 = v91 - v94;
              if (v98 >> 2 > v97)
              {
                v97 = v98 >> 2;
              }

              v49 = v98 >= 0x7FFFFFFFFFFFFFF8;
              v99 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v49)
              {
                v99 = v97;
              }

              if (v99)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 160, v99);
              }

              v100 = (8 * v96);
              *v100 = v80;
              v100[1] = *v86;
              v93 = 8 * v96 + 8;
              memcpy(0, v94, v95);
              v101 = *(this + 20);
              *(this + 20) = 0;
              *(this + 21) = v93;
              *(this + 22) = 0;
              if (v101)
              {
                operator delete(v101);
              }
            }

            else
            {
              *v92 = v80;
              *(v92 + 1) = *v86;
              v93 = (v92 + 8);
            }

            *(this + 21) = v93;
          }
        }

        goto LABEL_110;
      }
    }

    else
    {
      v31 = 0;
      while (*(this + 19))
      {
        std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::pop_back(this + 14);
        v32 = *(this + 21) - 8;
        *(this + 21) = v32;
        if (++v31 >= *(this + 12))
        {
          v33 = *(this + 19);
          goto LABEL_54;
        }
      }
    }

    std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(this + 14, &v114);
    std::vector<int>::resize(&v113, (v113.__end_ - v113.__begin_) / ((a4[1] - *a4) >> 2));
    if (v113.__begin_ == v113.__end_)
    {
      v36 = v113.__begin_;
    }

    else
    {
      v35 = v113.__begin_ + 1;
      v36 = v113.__begin_;
      if (v113.__begin_ + 1 != v113.__end_)
      {
        v37 = *v113.__begin_;
        v36 = v113.__begin_;
        v38 = v113.__begin_ + 1;
        do
        {
          v39 = *v38++;
          v40 = v39;
          if (v37 < v39)
          {
            v37 = v40;
            v36 = v35;
          }

          v35 = v38;
        }

        while (v38 != v113.__end_);
      }
    }

    v41 = (v36 - v113.__begin_) >> 2;
    v43 = *(this + 21);
    v42 = *(this + 22);
    if (v43 >= v42)
    {
      v44 = *(this + 20);
      v45 = v43 - v44;
      v46 = (v43 - v44) >> 3;
      v47 = v46 + 1;
      if ((v46 + 1) >> 61)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v48 = v42 - v44;
      if (v48 >> 2 > v47)
      {
        v47 = v48 >> 2;
      }

      v49 = v48 >= 0x7FFFFFFFFFFFFFF8;
      v50 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v49)
      {
        v50 = v47;
      }

      if (v50)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 160, v50);
      }

      v51 = (8 * v46);
      *v51 = v41;
      v51[1] = *v36;
      v32 = 8 * v46 + 8;
      memcpy(0, v44, v45);
      v52 = *(this + 20);
      *(this + 20) = 0;
      *(this + 21) = v32;
      *(this + 22) = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v43 = v41;
      *(v43 + 1) = *v36;
      v32 = (v43 + 8);
    }

    *(this + 21) = v32;
    v34 = 1;
    goto LABEL_76;
  }

LABEL_110:
  v22 = 0;
LABEL_35:
  if (a6 && (this + 160) != a6)
  {
    std::vector<std::pair<int,float>>::__assign_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(a6, *(this + 20), *(this + 21), (*(this + 21) - *(this + 20)) >> 3);
  }

  if (v111[0])
  {
    v111[1] = v111[0];
    operator delete(v111[0]);
  }

  if (v113.__begin_)
  {
    v113.__end_ = v113.__begin_;
    operator delete(v113.__begin_);
  }

  v113.__begin_ = &v114;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v113);
  return v22;
}

void sub_1B50F7FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  a28 = (v29 - 128);
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::OnlineLASSpeculativeDecodable::Encode(uint64_t this)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(this + 204) & 1) == 0)
  {
    v1 = this;
    v2 = (this + 40);
    kaldi::CuMatrix<float>::CuMatrix(v20, *(this + 40), *(*(this + 24) + 24), 1, 0, 0);
    if (*v2 >= 1)
    {
      v3 = 0;
      v4 = *(v1 + 56);
      while (kaldi::OnlineFeatureMatrix::IsValidFrame(*(v1 + 24), v4, 1))
      {
        *(&v14 + 1) = *&v20[1] + 4 * v22 * v3;
        *&v14 = &unk_1F2CFCA48;
        v15 = v21;
        v16 = v23;
        kaldi::OnlineFeatureMatrix::GetFrame(*(v1 + 24), *(v1 + 56), &v17);
        kaldi::CuVectorBase<float>::CopyFromVec<float>(&v14, &v17);
        v3 = (v3 + 1);
        v4 = *(v1 + 56) + 1;
        *(v1 + 56) = v4;
        if (v3 >= *(v1 + 40))
        {
          goto LABEL_8;
        }
      }

      if (!v3)
      {
        return kaldi::CuMatrix<float>::~CuMatrix(v20);
      }

LABEL_8:
      if (v3 < *(v1 + 40))
      {
        if ((*(v1 + 204) & 1) == 0 && kaldi::OnlineFeatureMatrix::IsValidFrame(*(v1 + 24), *(v1 + 56), 1))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "EncodingFinished()", 18);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v14);
        }

        if (v3 < kaldi::quasar::CEStatelessEncoderNet::FrameSubsamplingFactor(*(v1 + 8)))
        {
          return kaldi::CuMatrix<float>::~CuMatrix(v20);
        }

        kaldi::CuMatrix<float>::Resize(v20, v3, *(*(v1 + 24) + 24), 2, 0);
      }

      v14 = 0uLL;
      v15 = 0;
      v13 = 0;
      v5 = *(v1 + 8);
      if (*(v1 + 204))
      {
        v6 = 1;
      }

      else
      {
        v6 = kaldi::OnlineFeatureMatrix::IsValidFrame(*(v1 + 24), *(v1 + 56), 1) ^ 1;
      }

      kaldi::quasar::CEStatelessEncoderNet::Encode(v5, (v1 + 64), v20, v6, &v14, &v13);
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__vdeallocate((v1 + 64));
      *(v1 + 64) = v14;
      *(v1 + 80) = v15;
      v15 = 0;
      v14 = 0uLL;
      if (*(v1 + 184))
      {
        v24[0] = *(v1 + 184);
        v24[1] = v13;
        v18 = 0;
        v19 = 0;
        v17 = 0;
        std::vector<kaldi::quasar::ComputeEngineBufferItf *>::__init_with_size[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf * const*,kaldi::quasar::ComputeEngineBufferItf * const*>(&v17, v24, &v25, 2uLL);
        v7 = kaldi::quasar::CEStatelessEncoderNet::Engine(*(v1 + 8));
        (*(**v7 + 104))(v24);
        v8 = v24[0];
        v24[0] = 0;
        v9 = *(v1 + 184);
        *(v1 + 184) = v8;
        if (v9)
        {
          (*(*v9 + 8))(v9);
          v10 = v24[0];
          v24[0] = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        if (v17)
        {
          v18 = v17;
          operator delete(v17);
        }
      }

      else
      {
        v11 = v13;
        v13 = 0;
        *(v1 + 184) = v11;
      }

      kaldi::quasar::OnlineLASSpeculativeDecodable::ClipEncodedStateIfNeeded(v1);
      v12 = v13;
      v13 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }

      v17 = &v14;
      std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    return kaldi::CuMatrix<float>::~CuMatrix(v20);
  }

  return this;
}

void sub_1B50F848C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B50F84A8);
}

uint64_t kaldi::quasar::OnlineLASSpeculativeDecodable::EncodingFinished(kaldi::quasar::OnlineLASSpeculativeDecodable *this)
{
  if (*(this + 204))
  {
    return 1;
  }

  else
  {
    return kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 3), *(this + 14), 1) ^ 1;
  }
}

uint64_t *kaldi::quasar::OnlineLASSpeculativeDecodable::AccumulateAlignments@<X0>(uint64_t *a1@<X1>, int a2@<W2>, int a3@<W3>, void *a4@<X8>)
{
  result = std::vector<float>::vector[abi:ne200100](a4, a3 * a2);
  if (a2 >= 1)
  {
    v8 = 0;
    v9 = *a1;
    v10 = *result;
    v11 = 4 * a3;
    v12 = ((a1[1] - *a1) >> 2) / a2 / a3;
    do
    {
      if (v12 >= 1)
      {
        v13 = 0;
        do
        {
          if (v11)
          {
            v14 = 0;
            do
            {
              *(v10 + v14) = *(v9 + v14) + *(v10 + v14);
              v14 += 4;
            }

            while (v9 + v14 != v11 + v9);
          }

          v9 += v11;
          ++v13;
        }

        while (v13 < v12);
      }

      ++v8;
      v10 += v11;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  v4 = (*(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA));
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v4);
  --a1[5];
  return std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *v8 = *a2;
  v8[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0xAA));
  v14 = *v13 + 24 * (v11 % 0xAA);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 24;
}

uint64_t kaldi::quasar::OnlineLASSpeculativeDecodable::ClipEncodedStateIfNeeded(uint64_t this)
{
  if ((*(this + 204) & 1) == 0)
  {
    v1 = this;
    this = kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 24), *(this + 56), 1);
    if (this)
    {
      if (*(v1 + 200))
      {
        if (*(v1 + 184))
        {
          v2 = (*(**(*(v1 + 24) + 16) + 24))(*(*(v1 + 24) + 16));
          v3 = *(v1 + 200);
          v4 = v3 / (kaldi::quasar::CEStatelessEncoderNet::FrameSubsamplingFactor(*(v1 + 8)) * v2);
          this = (*(**(v1 + 184) + 184))(*(v1 + 184), 0);
          if (this >= v4)
          {
            v5 = kaldi::quasar::CEStatelessEncoderNet::Engine(*(v1 + 8));
            (*(**v5 + 120))(&v7);
            v6 = v7;
            v7 = 0;
            this = *(v1 + 184);
            *(v1 + 184) = v6;
            if (this)
            {
              (*(*this + 8))(this);
              this = v7;
              v7 = 0;
              if (this)
              {
                this = (*(*this + 8))(this);
              }
            }

            *(v1 + 204) = 1;
          }
        }
      }
    }
  }

  return this;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_1B50F8B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unordered_set<int>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1, i + 4);
  }

  return a1;
}

uint64_t std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~deque[abi:ne200100](void *a1)
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
    v6 = &v2[v5 / 0xAA];
    v7 = (*v6 + 24 * (v5 % 0xAA));
    v8 = v2[(a1[5] + v5) / 0xAA] + 24 * ((a1[5] + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        v14 = v7;
        std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&v14);
        v7 += 3;
        if (v7 - *v6 == 4080)
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
    v11 = 85;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 170;
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

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F8E4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 170 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0xAA)
  {
    a2 = 1;
  }

  if (v5 < 0x154)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *std::deque<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_1B50F9108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result, v11);
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

const void **std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_front<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result, v9);
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

const void **std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *> &>::emplace_front<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result[4], v9);
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

char *std::vector<std::pair<int,float>>::__assign_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
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

      std::vector<long long>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5++ + 1);
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5++ + 1);
        result += 8;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11;
      do
      {
        v14 = *v12++;
        *v11 = v14;
        v11 += 8;
        v13 += 8;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

uint64_t std::vector<kaldi::quasar::ComputeEngineBufferItf *>::__init_with_size[abi:ne200100]<kaldi::quasar::ComputeEngineBufferItf * const*,kaldi::quasar::ComputeEngineBufferItf * const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50F9610(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50F9724(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::SelectLags(float32x2_t *a1, void **a2)
{
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vdiv_f32(_D1, a1[2]);
  __src = 0;
  v26 = 0;
  v27 = 0;
  v9 = v8.f32[1];
  v24 = v8.f32[0];
  if (v8.f32[1] <= v8.f32[0])
  {
    v12 = 0;
    do
    {
      if (v12 >= v27)
      {
        v13 = __src;
        v14 = v12 - __src;
        v15 = (v12 - __src) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v27 - __src;
        if ((v27 - __src) >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v18);
        }

        v19 = (v12 - __src) >> 2;
        v20 = (4 * v15);
        v21 = (4 * v15 - 4 * v19);
        *v20 = v9;
        v12 = v20 + 1;
        memcpy(v21, v13, v14);
        v22 = __src;
        __src = v21;
        v26 = v12;
        v27 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v12++ = v9;
      }

      v26 = v12;
      v9 = (a1[5].f32[0] + 1.0) * v9;
    }

    while (v24 >= v9);
    v10 = (v12 - __src) >> 2;
  }

  else
  {
    v10 = 0;
  }

  kaldi::Vector<float>::Resize(a2, v10, 0);
  v23 = __src;
  if (v26 != __src)
  {
    memmove(*a2, __src, v26 - __src);
    v23 = __src;
  }

  if (v23)
  {
    v26 = v23;
    operator delete(v23);
  }
}

{
  __asm { FMOV            V1.2S, #1.0 }

  v8 = vdiv_f32(_D1, a1[2]);
  __src = 0;
  v26 = 0;
  v27 = 0;
  v9 = v8.f32[1];
  v24 = v8.f32[0];
  if (v8.f32[1] <= v8.f32[0])
  {
    v12 = 0;
    do
    {
      if (v12 >= v27)
      {
        v13 = __src;
        v14 = v12 - __src;
        v15 = (v12 - __src) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v17 = v27 - __src;
        if ((v27 - __src) >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v18 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v18);
        }

        v19 = (v12 - __src) >> 2;
        v20 = (4 * v15);
        v21 = (4 * v15 - 4 * v19);
        *v20 = v9;
        v12 = v20 + 1;
        memcpy(v21, v13, v14);
        v22 = __src;
        __src = v21;
        v26 = v12;
        v27 = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v12++ = v9;
      }

      v26 = v12;
      v9 = (a1[5].f32[0] + 1.0) * v9;
    }

    while (v24 >= v9);
    v10 = (v12 - __src) >> 2;
  }

  else
  {
    v10 = 0;
  }

  kaldi::Vector<float>::Resize(a2, v10, 0);
  v23 = __src;
  if (v26 != __src)
  {
    memmove(*a2, __src, v26 - __src);
    v23 = __src;
  }

  if (v23)
  {
    v26 = v23;
    operator delete(v23);
  }
}

void sub_1B50F98D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::ComputeLocalCost(int16x4_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  a1.i32[0] = 1.0;
  kaldi::VectorBase<float>::Set(a5, a1);
  kaldi::VectorBase<float>::AddVec<float>();

  return kaldi::VectorBase<float>::AddVecVec();
}

void kaldi::PitchFrameInfo::ComputeBacktraces(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v14 = *(a3 + 8);
  memset(v72, 0, sizeof(v72));
  kaldi::Vector<float>::Resize(v72, v14, 1);
  kaldi::ComputeLocalCost(v15, a3, a4, a2, v72);
  v16 = log(*(a2 + 40) + 1.0);
  v17 = *(a2 + 28);
  v18 = *a5;
  v19 = *a7;
  if (*a6 == a6[1])
  {
    std::vector<double>::resize(a6, v14);
  }

  v20 = v16 * v16;
  v21 = v17 * v20;
  if (kaldi::pitch_use_naive_search)
  {
    if (v14 >= 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = *a1;
      do
      {
        v25 = 0;
        v26 = -1;
        v27 = INFINITY;
        v28 = v22;
        do
        {
          v29 = *(v18 + 4 * v25);
          if ((v29 + ((v28 * v28) * v21)) < v27)
          {
            v26 = v25;
            v27 = v29 + ((v28 * v28) * v21);
          }

          ++v25;
          ++v28;
        }

        while (v14 != v25);
        *(v19 + 4 * v23) = v27;
        *(v24 + 8 * v23++) = v26;
        --v22;
      }

      while (v23 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = *a1;
    v33 = *a6;
    v34 = 1;
    do
    {
      v35 = v31;
      v36 = v31;
      v37 = *(v18 + 4 * v31) + (((v31 - v30) * (v31 - v30)) * v21);
      if (v14 <= v31 + 1)
      {
        v38 = v31 + 1;
      }

      else
      {
        v38 = v14;
      }

      v31 = v38 - 1;
      v39 = v36 + 1;
      while (1)
      {
        v40 = v37;
        if (v39 >= v14)
        {
          break;
        }

        v37 = *(v18 + 4 * v39) + (((v34 + v35) * (v34 + v35)) * v21);
        ++v35;
        ++v39;
        if (v37 >= v40)
        {
          v31 = v35 - 1;
          break;
        }
      }

      *(v32 + 8 * v30) = v31;
      *(v19 + 4 * v30) = v40;
      v41 = (v33 + 8 * v30);
      *v41 = v31;
      v41[1] = v14 - 1;
      ++v30;
      --v34;
    }

    while (v30 != v14);
    v42 = 0;
    v43 = *a6;
    do
    {
      if (v42)
      {
        v59 = 0;
        v60 = 0;
        v44 = 0;
        v61 = 0;
        do
        {
          v62 = (v43 + 8 * v60);
          v63 = v62[1];
          if (v61 <= *v62)
          {
            v64 = *v62;
          }

          else
          {
            v64 = v61;
          }

          if (v63 == v64 || (v65 = (*a1 + 8 * v60), v61 = *v65, *v65 == v64))
          {
            v61 = v64;
          }

          else if (v64 >= v63 - 1)
          {
            *v62 = v61;
          }

          else
          {
            v66 = *(v19 + 4 * v60);
            v67 = v64;
            v68 = ~v64 + v63;
            v69 = *v65;
            do
            {
              v70 = (v59 + v67) * (v59 + v67);
              v71 = *(v18 + 4 * v67);
              if ((v71 + (v70 * v21)) >= v66)
              {
                if (v67 > v69)
                {
                  break;
                }
              }

              else
              {
                v66 = v71 + (v70 * v21);
                v69 = v67;
              }

              ++v67;
              --v68;
            }

            while (v68);
            *v62 = v69;
            if (v69 != v61)
            {
              *(v19 + 4 * v60) = v66;
              *v65 = v69;
              v44 = 1;
              v61 = v69;
            }
          }

          ++v60;
          --v59;
        }

        while (v60 != v14);
      }

      else
      {
        v44 = 0;
        v45 = 1 - v14;
        v46 = v14;
        v47 = v14 - 1;
        do
        {
          v48 = v46--;
          v49 = (v43 + 8 * v46);
          v50 = *v49;
          if (v49[1] >= v47)
          {
            v51 = v47;
          }

          else
          {
            v51 = v49[1];
          }

          if (v51 == v50)
          {
            v47 = *v49;
          }

          else
          {
            v52 = (*a1 + 8 * v46);
            v47 = *v52;
            if (*v52 == v51)
            {
              v47 = v51;
            }

            else
            {
              v53 = v50 + 1;
              if (v51 <= v53)
              {
                v49[1] = v47;
              }

              else
              {
                v54 = *(v19 + 4 * v46);
                v55 = v51;
                v56 = *v52;
                do
                {
                  v57 = (v45 + v55) * (v45 + v55);
                  v58 = *(v18 + 4 * v55);
                  if ((v58 + (v57 * v21)) >= v54)
                  {
                    if (v55 < v56)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v54 = v58 + (v57 * v21);
                    v56 = v55;
                  }

                  --v55;
                }

                while (v55 > v53);
                v49[1] = v56;
                if (v56 != v47)
                {
                  *(v19 + 4 * v46) = v54;
                  *v52 = v56;
                  v44 = 1;
                  v47 = v56;
                }
              }
            }
          }

          ++v45;
        }

        while (v48 > 1);
      }

      if ((v44 & 1) == 0)
      {
        break;
      }

      ++v42;
    }

    while (v42 != v14);
  }

  *(a1 + 7) = -1;
  kaldi::VectorBase<float>::AddVec<float>();
  kaldi::Vector<float>::Destroy(v72);
}

void sub_1B50F9D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::PitchFrameInfo::ComputeLatency(kaldi::PitchFrameInfo *this, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = ((*(this + 1) - *this) >> 3) - 1;
  do
  {
    v6 = *(this + 6);
    v3 = *(*this + 8 * (v3 - v6));
    v5 = *(*this + 8 * (v5 - v6));
    if (v3 == v5)
    {
      break;
    }

    this = *(this + 4);
    result = this ? (result + 1) : result;
  }

  while (this && result < a2);
  return result;
}

void kaldi::OnlinePitchFeatureImpl::OnlinePitchFeatureImpl(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 225) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  operator new();
}

void sub_1B50FA0B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = v6;
  MEMORY[0x1B8C85350](v7, 0x1020C403D3F9D26);
  kaldi::Vector<float>::Destroy(va);
  kaldi::Vector<float>::Destroy((v2 + 34));
  v9 = v2[27];
  if (v9)
  {
    v2[28] = v9;
    operator delete(v9);
  }

  kaldi::Vector<float>::Destroy(v5);
  v10 = v2[19];
  if (v10)
  {
    v2[20] = v10;
    operator delete(v10);
  }

  v11 = *v4;
  if (*v4)
  {
    v2[17] = v11;
    operator delete(v11);
  }

  kaldi::Vector<float>::Destroy(v3);
  _Unwind_Resume(a1);
}

void kaldi::OnlinePitchFeatureImpl::Compute(kaldi::OnlinePitchFeatureImpl *this, uint64_t a2, uint64_t a3)
{
  v6 = *(this + 15);
  if (v6)
  {
    v7 = *(a2 + 8);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = ((*this * v6) * 0.001 * *(this + 1));
      do
      {
        v10 = v7 - v8;
        if (v10 >= v9)
        {
          v10 = v9;
        }

        v20 = 0;
        v21 = 0;
        v11 = v10 + v8;
        v19 = *a2 + 4 * v8;
        LODWORD(v20) = v10;
        kaldi::OnlinePitchFeatureImpl::AcceptWaveform(this, &v19);
        v7 = *(a2 + 8);
        v8 = v11;
      }

      while (v11 < v7);
    }
  }

  else
  {
    kaldi::OnlinePitchFeatureImpl::AcceptWaveform(this, a2);
  }

  kaldi::OnlinePitchFeatureImpl::InputFinished(this);
  v12 = (*(this + 28) - *(this + 27)) >> 3;
  v13 = *(this + 44);
  v14 = (v12 - v13);
  if (v12 == v13)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "No frames output in pitch extraction", 36);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v19);
    }

    kaldi::Matrix<float>::Resize(a3, 0, 0, 0, 0);
  }

  else
  {
    kaldi::Matrix<float>::Resize(a3, (v12 - v13), 2, 0, 0);
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 4;
      do
      {
        v17 = *a3 + 4 * *(a3 + 16) * v15;
        kaldi::MatrixBase<float>::NumCols(a3);
        v18 = (*(this + 27) + v16);
        *v17 = *v18;
        *(v17 + 4) = 1.0 / *(*(this + 11) + 4 * *(v18 - 1));
        ++v15;
        v16 += 8;
      }

      while (v14 != v15);
    }
  }
}

void kaldi::OnlinePitchFeatureImpl::AcceptWaveform(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 240);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  kaldi::LinearResample::Resample(*(a1 + 120), a2, v3, &v71);
  v4 = *(a1 + 248);
  v5 = *(a1 + 256);
  v6 = *(a1 + 264);
  if (*(a1 + 72) == 1)
  {
    v7 = v72;
    v8 = *(a1 + 264);
  }

  else
  {
    kaldi::VecVec<float>();
    v10 = v9;
    v11 = kaldi::VectorBase<float>::Sum(&v71);
    v4 = v4 + v10;
    v5 = v5 + *&v11;
    v7 = v72;
    v8 = v6 + v72;
    v6 = *(a1 + 264);
  }

  v12 = kaldi::OnlinePitchFeatureImpl::NumFramesAvailable(a1, v6 + v7, *(a1 + 73));
  v13 = (*(a1 + 136) - *(a1 + 128)) >> 3;
  v51 = v12;
  v47 = v12 - (v13 - 1);
  if (v12 == v13 - 1)
  {
    kaldi::OnlinePitchFeatureImpl::UpdateRemainder(a1, &v71);
  }

  else
  {
    v15 = *(a1 + 76);
    v14 = *(a1 + 80);
    v46 = *(a1 + 96);
    v16 = *(a1 + 36) * 0.001;
    v17 = *(a1 + 4);
    v50 = (v16 * *(a1 + 8));
    v18 = v14 + v50;
    memset(v70, 0, sizeof(v70));
    kaldi::Vector<float>::Resize(v70, (v14 + v50), 0);
    v19 = v14 - v15;
    memset(v69, 0, sizeof(v69));
    kaldi::Vector<float>::Resize(v69, (v19 + 1), 0);
    memset(v68, 0, sizeof(v68));
    kaldi::Vector<float>::Resize(v68, (v19 + 1), 0);
    kaldi::Matrix<float>::Matrix(v66, v47, (v19 + 1), 0, 0);
    kaldi::Matrix<float>::Matrix(v64, v47, (v19 + 1), 0, 0);
    memset(v63, 0, sizeof(v63));
    kaldi::Vector<float>::Resize(v63, v46, 0);
    v45 = v13 - 1;
    if (v51 > v13 - 1)
    {
      v20 = 0;
      v21 = 0;
      v22 = v16 * v17;
      v48 = v18;
      v23 = v45;
      v24 = v22 * v45;
      v25 = v51 - v13;
      v26 = v22;
      v49 = v25 + 1;
      do
      {
        kaldi::OnlinePitchFeatureImpl::ExtractFrame(a1, &v71, v24, v70);
        if (*(a1 + 72) == 1)
        {
          if (v48 + v24 - *(a1 + 264) >= v72)
          {
            LODWORD(v27) = v72;
          }

          else
          {
            v27 = v48 + v24 - *(a1 + 264);
          }

          v54 = 0;
          v52.__locale_ = &v71[4 * v21];
          v53 = (v27 - v21);
          kaldi::VecVec<float>();
          v29 = v28;
          v30 = kaldi::VectorBase<float>::Sum(&v52);
          v8 += v27 - v21;
          v4 = v4 + v29;
          v5 = v5 + *&v30;
          v21 = v27;
        }

        kaldi::ComputeCorrelation(v70, *(a1 + 76), *(a1 + 80), v50, v69, v68);
        v31 = *(a1 + 44);
        kaldi::VectorBase<float>::Sum(v68);
        v53 = 0;
        v54 = 0;
        v52.__locale_ = (v66[0] + 4 * v20 * v67);
        v32 = v4 / v8 - v5 / v8 * (v5 / v8);
        LODWORD(v53) = kaldi::MatrixBase<float>::NumCols(v66);
        v33 = v32 * v50 * (v32 * v50) * v31;
        kaldi::ComputeNccf(v69, v68, &v52, v33);
        v61 = 0;
        v62 = 0;
        v60 = v64[0] + 4 * v20 * v65;
        LODWORD(v61) = kaldi::MatrixBase<float>::NumCols(v64);
        kaldi::ComputeNccf(v69, v68, &v60, 0.0);
        if (v23 < *(a1 + 68))
        {
          operator new();
        }

        ++v23;
        ++v20;
        v24 += v26;
      }

      while (v49 != v20);
    }

    kaldi::Matrix<float>::Matrix(&v60, v47, v46, 0, 0);
    kaldi::ArbitraryResample::Resample(*(a1 + 112), v66, &v60);
    kaldi::Matrix<float>::Resize(v66, 0, 0, 0, 0);
    kaldi::Matrix<float>::Matrix(v59, v47, v46, 0, 0);
    kaldi::ArbitraryResample::Resample(*(a1 + 112), v64, v59);
    kaldi::Matrix<float>::Resize(v64, 0, 0, 0, 0);
    kaldi::OnlinePitchFeatureImpl::UpdateRemainder(a1, &v71);
    __p = 0;
    v57 = 0;
    v58 = 0;
    if (v51 > v45)
    {
      operator new();
    }

    v55 = 0;
    kaldi::VectorBase<float>::Min(a1 + 184, &v55, v34);
    std::vector<std::pair<int,float>>::resize((a1 + 216), ((*(a1 + 136) - *(a1 + 128)) >> 3) - 1);
    v35 = *(*(a1 + 136) - 8);
    if (v35)
    {
      v36 = v55;
      v37 = v35 + 7;
      if (v55 != v35[7])
      {
        v38 = (*(a1 + 224) - 4);
        v39 = *(*(a1 + 136) - 8);
        do
        {
          v40 = v39[4];
          if (v40)
          {
            *(v38 - 1) = v36;
          }

          v41 = *(v39 + 6);
          v42 = *v39;
          *v37 = v36;
          if (!v40)
          {
            break;
          }

          v43 = (v42 + 8 * (v36 - v41));
          v36 = *v43;
          *v38 = v43[1];
          v38 -= 2;
          v37 = v40 + 7;
          v39 = v40;
        }

        while (v36 != *(v40 + 7));
      }
    }

    *(a1 + 176) = kaldi::PitchFrameInfo::ComputeLatency(v35, *(a1 + 56));
    if (kaldi::g_kaldi_verbose_level >= 4)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v52, 4);
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, "Latency is ", 11);
      MEMORY[0x1B8C84C00](v44, *(a1 + 176));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v52);
    }

    if (__p)
    {
      v57 = __p;
      operator delete(__p);
    }

    kaldi::Matrix<float>::~Matrix(v59);
    kaldi::Matrix<float>::~Matrix(&v60);
    kaldi::Vector<float>::Destroy(v63);
    kaldi::Matrix<float>::~Matrix(v64);
    kaldi::Matrix<float>::~Matrix(v66);
    kaldi::Vector<float>::Destroy(v68);
    kaldi::Vector<float>::Destroy(v69);
    kaldi::Vector<float>::Destroy(v70);
  }

  kaldi::Vector<float>::Destroy(&v71);
}

void sub_1B50FAC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  kaldi::Matrix<float>::~Matrix(&a55);
  kaldi::Matrix<float>::~Matrix(&a60);
  kaldi::Vector<float>::Destroy(&a65);
  kaldi::Matrix<float>::~Matrix(&a68);
  kaldi::Matrix<float>::~Matrix(&STACK[0x200]);
  kaldi::Vector<float>::Destroy(v68 - 248);
  kaldi::Vector<float>::Destroy(v68 - 224);
  kaldi::Vector<float>::Destroy(v68 - 200);
  kaldi::Vector<float>::Destroy(v68 - 176);
  _Unwind_Resume(a1);
}

void kaldi::OnlinePitchFeatureImpl::InputFinished(kaldi::OnlinePitchFeatureImpl *this)
{
  *(this + 240) = 1;
  memset(v7, 0, 24);
  kaldi::OnlinePitchFeatureImpl::AcceptWaveform(this, v7);
  kaldi::Vector<float>::Destroy(v7);
  v2 = ((*(this + 17) - *(this + 16)) >> 3) - 1;
  if (v2 < *(this + 17) && (*(this + 72) & 1) == 0)
  {
    kaldi::OnlinePitchFeatureImpl::RecomputeBacktraces(this);
  }

  *(this + 44) = 0;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v7, 3);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Pitch-tracking Viterbi cost is ", 31);
    v4 = MEMORY[0x1B8C84BE0](v3, *(this + 26) / v2);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " per frame, over ", 17);
    v6 = MEMORY[0x1B8C84C00](v5, v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " frames.", 8);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v7);
  }
}

void sub_1B50FAE88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlinePitchFeatureImpl::NumFramesAvailable(kaldi::OnlinePitchFeatureImpl *this, uint64_t a2, char a3)
{
  v3 = *(this + 9) * 0.001;
  v4 = (v3 * *(this + 2));
  if ((*(this + 240) & 1) == 0)
  {
    v4 += *(this + 20);
  }

  if (a2 < v4)
  {
    return 0;
  }

  v6 = (v3 * *(this + 1));
  if (!*(this + 240) || (a3 & 1) != 0)
  {
    return ((a2 - v4) / v6) + 1;
  }

  else
  {
    return ((a2 / v6) + 0.5);
  }
}

void kaldi::OnlinePitchFeatureImpl::UpdateRemainder(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136) - *(a1 + 128);
  v5 = (v4 >> 3) - 1;
  v6 = (*(a1 + 36) * 0.001 * *(a1 + 4));
  v7 = v5 * v6;
  kaldi::VecVec<float>();
  *(a1 + 248) = *(a1 + 248) + v8;
  v9 = kaldi::VectorBase<float>::Sum(a2);
  *(a1 + 256) = *(a1 + 256) + *&v9;
  v10 = *(a1 + 264) + *(a2 + 8);
  if (v10 >= v5 * v6)
  {
    memset(v17, 0, sizeof(v17));
    kaldi::Vector<float>::Resize(v17, (v10 - v7), 0);
    if (v10 > v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = *(a1 + 264);
      v14 = *a2;
      v15 = v17[0];
      do
      {
        if (v7 + v11 >= v13)
        {
          v16 = (v14 + ((((v5 * v6) << 32) - (v13 << 32) + v12) >> 30));
        }

        else
        {
          v16 = (*(a1 + 272) + 4 * (v6 * ((v4 >> 3) - 1) - v13 + v11 + *(a1 + 280)));
        }

        *&v15[v12 >> 30] = *v16;
        v12 += 0x100000000;
        ++v11;
      }

      while (v7 + v11 < v10);
    }

    kaldi::Vector<float>::Swap((a1 + 272), v17);
    kaldi::Vector<float>::Destroy(v17);
  }

  else
  {
    kaldi::Vector<float>::Resize((a1 + 272), 0, 0);
  }

  *(a1 + 264) = v10;
}

void sub_1B50FB0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

float kaldi::OnlinePitchFeatureImpl::ExtractFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v8 = a3 - *(a1 + 264);
  v9 = v7 + v8;
  v10 = *(a2 + 8);
  if (v7 + v8 <= v10)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v16 = *(a1 + 280) + v8;
      v17 = *(a1 + 264) - a3;
      v32 = 0;
      v33 = 0;
      v18 = *a4;
      v30 = 0;
      v31 = v18;
      LODWORD(v32) = v17;
      v28 = *(a1 + 272) + 4 * v16;
      v29 = v17;
      kaldi::VectorBase<float>::CopyFromVec(&v31, &v28);
      v32 = 0;
      v33 = 0;
      v19 = *a4 + 4 * v17;
      v30 = 0;
      v31 = v19;
      LODWORD(v32) = v9;
      v28 = *a2;
      v29 = v9;
      v15 = &v31;
      v14 = &v28;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v31 = *a2 + 4 * (v8 & 0x7FFFFFFF);
      LODWORD(v32) = v7;
      v14 = &v31;
      v15 = a4;
    }

    kaldi::VectorBase<float>::CopyFromVec(v15, v14);
    v20 = *(a1 + 12);
    if (v20 != 0.0)
    {
      v21 = v20;
      v22 = *(a4 + 8);
      if (v22 >= 2)
      {
        v23 = -v20;
        v24 = v22 + 1;
        v25 = (*a4 + 4 * v22 - 4);
        v26 = v25;
        do
        {
          v27 = *--v26;
          *v25 = *v25 + (v23 * v27);
          --v24;
          v25 = v26;
        }

        while (v24 > 2);
      }

      result = (1.0 - v21) * **a4;
      **a4 = result;
    }
  }

  else
  {
    v12 = v10 - v8;
    kaldi::VectorBase<float>::SetZero(a4);
    v32 = 0;
    v33 = 0;
    v31 = *a4;
    LODWORD(v32) = v12;
    kaldi::OnlinePitchFeatureImpl::ExtractFrame(a1, a2, a3, &v31);
  }

  return result;
}

void kaldi::OnlinePitchFeatureImpl::RecomputeBacktraces(kaldi::OnlinePitchFeatureImpl *this)
{
  v1 = (*(this + 17) - *(this + 16)) >> 3;
  v2 = (v1 - 1);
  if (v1 != 1)
  {
    v4 = *(this + 19);
    v5 = *(this + 20);
    if (v1 < 2)
    {
      goto LABEL_31;
    }

    v6 = 0;
    v7 = v5 - v4;
    v8 = (v5 - v4) >> 3;
    v9 = *(this + 31) / *(this + 33) - *(this + 32) / *(this + 33) * (*(this + 32) / *(this + 33));
    v10 = fabsf(v9);
    v11 = v2;
    v12 = *(this + 19);
    do
    {
      v13 = *(*v12 + 28);
      if (v13 != v9 && (COERCE_INT(fabs(v13 - v9)) > 2139095039 || vabds_f32(v13, v9) > ((v10 + fabsf(v13)) * 0.01)))
      {
        v6 = 1;
      }

      v12 += 8;
      --v11;
    }

    while (v11);
    if (v6)
    {
      v14 = *(this + 48);
      v46 = 0;
      v47 = 0;
      v48 = 0;
      kaldi::Vector<float>::Resize(&v46, v14, 0);
      memset(v45, 0, sizeof(v45));
      kaldi::Vector<float>::Resize(v45, v47, 1);
      kaldi::VectorBase<float>::CopyFromVec(v45, &v46);
      v15 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v16 = 0.0;
      do
      {
        v17 = *(*(this + 19) + v15);
        kaldi::VectorBase<float>::Scale();
        kaldi::PitchFrameInfo::ComputeBacktraces(*(*(this + 16) + v15 + 8), this, v17, this + 88, &v46, &v42, v45);
        kaldi::Vector<float>::Swap(&v46, v45);
        kaldi::VectorBase<float>::Min(&v46, v18);
        v20 = v19;
        kaldi::VectorBase<float>::Add(&v46, -v19);
        v16 = v16 + v20;
        v15 += 8;
      }

      while (8 * v2 != v15);
      if (kaldi::g_kaldi_verbose_level > 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v41, 3);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Forward-cost per frame changed from ", 36);
        v22 = MEMORY[0x1B8C84BE0](v21, *(this + 26) / v2);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " to ", 4);
        MEMORY[0x1B8C84BE0](v23, v16 / v2);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v41);
      }

      *(this + 26) = v16;
      kaldi::Vector<float>::Swap(this + 23, &v46);
      LODWORD(v41[0].__locale_) = 0;
      kaldi::VectorBase<float>::Min(this + 184, v41, v24);
      v25 = *(this + 28);
      if (v25 - *(this + 27) != v7)
      {
        std::vector<std::pair<int,float>>::resize(this + 27, v8);
        v25 = *(this + 28);
      }

      v26 = *(*(this + 17) - 8);
      if (v26)
      {
        locale = v41[0].__locale_;
        v28 = v26 + 7;
        if (LODWORD(v41[0].__locale_) != v26[7])
        {
          v29 = (v25 - 4);
          v30 = *(*(this + 17) - 8);
          do
          {
            v31 = v30[4];
            if (v31)
            {
              *(v29 - 1) = locale;
            }

            v32 = *(v30 + 6);
            v33 = *v30;
            *v28 = locale;
            if (!v31)
            {
              break;
            }

            v34 = (v33 + 8 * (locale - v32));
            locale = *v34;
            *v29 = v34[1];
            v29 -= 2;
            v28 = v31 + 7;
            v30 = v31;
          }

          while (locale != *(v31 + 7));
        }
      }

      *(this + 44) = kaldi::PitchFrameInfo::ComputeLatency(v26, *(this + 14));
      v35 = *(this + 19);
      v36 = *(this + 20);
      if (v36 != v35)
      {
        v37 = 0;
        do
        {
          v38 = *(v35 + 8 * v37);
          if (v38)
          {
            kaldi::Vector<float>::Destroy(*(v35 + 8 * v37));
            MEMORY[0x1B8C85350](v38, 0x1080C4066DFD6F0);
            v35 = *(this + 19);
            v36 = *(this + 20);
          }

          ++v37;
        }

        while (v37 < (v36 - v35) >> 3);
      }

      *(this + 20) = v35;
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      kaldi::Vector<float>::Destroy(v45);
      kaldi::Vector<float>::Destroy(&v46);
    }

    else
    {
LABEL_31:
      if (v5 != v4)
      {
        v39 = 0;
        do
        {
          v40 = *(v4 + 8 * v39);
          if (v40)
          {
            kaldi::Vector<float>::Destroy(*(v4 + 8 * v39));
            MEMORY[0x1B8C85350](v40, 0x1080C4066DFD6F0);
            v4 = *(this + 19);
            v5 = *(this + 20);
          }

          ++v39;
        }

        while (v39 < (v5 - v4) >> 3);
      }

      *(this + 20) = v4;
    }
  }
}

void sub_1B50FB6C0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    *(v1 - 176) = v3;
    operator delete(v3);
  }

  kaldi::Vector<float>::Destroy(v1 - 160);
  kaldi::Vector<float>::Destroy(v1 - 136);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<int,float>>::resize(void *a1, unint64_t a2)
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
    std::vector<std::pair<int,float>>::__append(a1, a2 - v2);
  }
}

void kaldi::OnlinePitchFeatureImpl::~OnlinePitchFeatureImpl(kaldi::OnlinePitchFeatureImpl *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v18 = (v2 + 40);
    std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v3 = *(v2 + 16);
    if (v3)
    {
      *(v2 + 24) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B8C85350](v2, 0x1030C40864D17A3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    kaldi::Vector<float>::Destroy(v4 + 88);
    v18 = (v4 + 48);
    std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v5 = *(v4 + 24);
    if (v5)
    {
      *(v4 + 32) = v5;
      operator delete(v5);
    }

    MEMORY[0x1B8C85350](v4, 0x10B0C40587FD9DDLL);
  }

  v7 = *(this + 16);
  v6 = *(this + 17);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        v10 = *v9;
        if (*v9)
        {
          *(v9 + 8) = v10;
          operator delete(v10);
        }

        MEMORY[0x1B8C85350](v9, 0x1020C403D3F9D26);
        v7 = *(this + 16);
        v6 = *(this + 17);
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
  }

  v12 = *(this + 19);
  v11 = *(this + 20);
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      v14 = *(v12 + 8 * v13);
      if (v14)
      {
        kaldi::Vector<float>::Destroy(*(v12 + 8 * v13));
        MEMORY[0x1B8C85350](v14, 0x1080C4066DFD6F0);
        v12 = *(this + 19);
        v11 = *(this + 20);
      }

      ++v13;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  kaldi::Vector<float>::Destroy(this + 272);
  v15 = *(this + 27);
  if (v15)
  {
    *(this + 28) = v15;
    operator delete(v15);
  }

  kaldi::Vector<float>::Destroy(this + 184);
  v16 = *(this + 19);
  if (v16)
  {
    *(this + 20) = v16;
    operator delete(v16);
  }

  v17 = *(this + 16);
  if (v17)
  {
    *(this + 17) = v17;
    operator delete(v17);
  }

  kaldi::Vector<float>::Destroy(this + 88);
}

uint64_t kaldi::OnlinePitchFeature::IsLastFrame(kaldi::OnlinePitchFeature *this, int a2)
{
  v2 = *(this + 1);
  v3 = ((*(v2 + 224) - *(v2 + 216)) >> 3) - *(v2 + 176);
  v4 = *(v2 + 240);
  if (a2 + 1 == v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

float kaldi::OnlinePitchFeature::GetFrame(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = (*(v3 + 216) + 8 * a2);
  v5 = *a3;
  *v5 = v4[1];
  result = 1.0 / *(*(v3 + 88) + 4 * *v4);
  *(v5 + 4) = result;
  return result;
}

void kaldi::OnlinePitchFeature::~OnlinePitchFeature(kaldi::OnlinePitchFeature *this)
{
  *this = &unk_1F2CFCF70;
  v1 = *(this + 1);
  if (v1)
  {
    kaldi::OnlinePitchFeatureImpl::~OnlinePitchFeatureImpl(v1);
    MEMORY[0x1B8C85350]();
  }
}

{
  kaldi::OnlinePitchFeature::~OnlinePitchFeature(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineProcessPitch::OnlineProcessPitch(uint64_t a1, __int128 *a2, void (***a3)(void))
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = *(a2 + 40);
  v7 = *(a2 + 41);
  v8 = *(a2 + 42);
  v9 = *(a2 + 43);
  v10 = *(a2 + 44);
  *(a1 + 64) = 0u;
  *(a1 + 48) = a3;
  *(a1 + 56) = v7 + v6 + v8 + v9 + v10;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  (**a3)(a3);
  return a1;
}

void sub_1B50FBB94(_Unwind_Exception *exception_object)
{
  v4 = v1[11];
  if (v4)
  {
    v1[12] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[9] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::OnlineProcessPitch::NumFramesReady(kaldi::OnlineProcessPitch *this)
{
  result = (*(**(this + 6) + 8))(*(this + 6));
  if (result)
  {
    v3 = result;
    if ((*(**(this + 6) + 16))(*(this + 6), (result - 1)))
    {
      return (*(this + 9) + v3);
    }

    else
    {
      v4 = v3 - *(this + 7) + *(this + 9);
      return v4 & ~(v4 >> 31);
    }
  }

  return result;
}

void kaldi::OnlineProcessPitch::GetFrame(uint64_t a1, int a2, float **a3)
{
  v5 = *(a1 + 36);
  v6 = __OFSUB__(a2, v5);
  v7 = a2 - v5;
  if (v7 < 0 != v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  kaldi::OnlineProcessPitch::NumFramesReady(a1);
  v9 = 0;
  if (*(a1 + 40) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    kaldi::Vector<float>::Resize(&v15, 2, 0);
    v10 = (*(**(a1 + 48) + 24))(*(a1 + 48), v8, &v15);
    v11 = *(a1 + 4);
    v12 = kaldi::NccfToPovFeature(v10, *v15);
    v13 = *(a1 + 8);
    kaldi::Vector<float>::Destroy(&v15);
    **a3 = v13 + (v11 * v12);
    v9 = 1;
  }

  if (*(a1 + 41) == 1)
  {
    (*a3)[v9++] = kaldi::OnlineProcessPitch::GetNormalizedLogPitchFeature(a1, v8);
  }

  if (*(a1 + 42) == 1)
  {
    (*a3)[v9++] = kaldi::OnlineProcessPitch::GetDeltaPitchFeature(a1, v8, 1u);
  }

  if (*(a1 + 43) == 1)
  {
    (*a3)[v9++] = kaldi::OnlineProcessPitch::GetDeltaPitchFeature(a1, v8, 2u);
  }

  if (*(a1 + 44) == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    kaldi::Vector<float>::Resize(&v15, 2, 0);
    (*(**(a1 + 48) + 24))(*(a1 + 48), v8, &v15);
    v14 = v15[1];
    kaldi::Vector<float>::Destroy(&v15);
    (*a3)[v9] = logf(v14);
  }
}

void sub_1B50FBE30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

float kaldi::OnlineProcessPitch::GetNormalizedLogPitchFeature(kaldi::OnlineProcessPitch *this, uint64_t a2)
{
  kaldi::OnlineProcessPitch::UpdateNormalizationStats(this, a2);
  memset(v9, 0, sizeof(v9));
  kaldi::Vector<float>::Resize(v9, 2, 0);
  (*(**(this + 6) + 24))(*(this + 6), a2, v9);
  v4 = *(v9[0] + 1);
  kaldi::Vector<float>::Destroy(v9);
  v5 = logf(v4);
  v6 = *(this + 11) + 24 * a2;
  v7 = *(v6 + 16) / *(v6 + 8);
  return *this * (v5 - v7);
}

void sub_1B50FBF20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

float kaldi::OnlineProcessPitch::GetDeltaPitchFeature(kaldi::OnlineProcessPitch *this, int a2, unsigned int a3)
{
  v6 = *(this + 8);
  v7 = (a2 - v6) & ~((a2 - v6) >> 31);
  v8 = a2 + v6;
  v9 = a2 + v6 + 1;
  v10 = (*(**(this + 6) + 8))(*(this + 6));
  if (v10 >= v9)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v10;
  }

  kaldi::Matrix<float>::Matrix(v38, (v11 - v7), 1, 0, 0);
  kaldi::Matrix<float>::Matrix(v36);
  if (v11 > v7)
  {
    v12 = 0;
    do
    {
      memset(v40, 0, 24);
      kaldi::Vector<float>::Resize(v40, 2, 0);
      (*(**(this + 6) + 24))(*(this + 6), v7, v40);
      v13 = *(v40[0] + 1);
      kaldi::Vector<float>::Destroy(v40);
      *(v38[0] + 4 * v39 * v12) = logf(v13);
      v7 = (v7 + 1);
      ++v12;
    }

    while (v11 != v7);
  }

  v40[0] = __PAIR64__(*(this + 8), a3);
  kaldi::ComputeDeltas(v40, v38, v36);
  v14 = *(this + 8);
  v15 = (this + 64);
  if (a2 >= ((*(this + 9) - v14) >> 2))
  {
    do
    {
      v16 = kaldi::Rand(0);
      v17 = kaldi::Rand(0);
      v18 = (v16 + 1.0) / 2147483650.0;
      v19 = sqrtf(logf(v18) * -2.0);
      v20 = (v17 + 1.0) / 2147483650.0;
      v21 = v20 * 6.28318531;
      v22 = (v19 * cosf(v21)) * *(this + 5);
      v24 = *(this + 9);
      v23 = *(this + 10);
      if (v24 >= v23)
      {
        v26 = *v15;
        v27 = v24 - *v15;
        v28 = v27 >> 2;
        v29 = (v27 >> 2) + 1;
        if (v29 >> 62)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v30 = v23 - v26;
        if (v30 >> 1 > v29)
        {
          v29 = v30 >> 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v31 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this + 64, v31);
        }

        *(4 * v28) = v22;
        v25 = 4 * v28 + 4;
        memcpy(0, v26, v27);
        v32 = *(this + 8);
        *(this + 8) = 0;
        *(this + 9) = v25;
        *(this + 10) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v24 = v22;
        v25 = (v24 + 1);
      }

      *(this + 9) = v25;
      v14 = *(this + 8);
    }

    while (a2 >= ((v25 - v14) >> 2));
  }

  if (a2 >= v6)
  {
    v33 = v6;
  }

  else
  {
    v33 = a2;
  }

  if (a3 == 1)
  {
    v34 = (*(v36[0] + 4 * v37 * v33 + 4) + *(v14 + 4 * a2)) * *(this + 3);
  }

  else
  {
    v34 = (*(v36[0] + 4 * v37 * v33 + 4 * a3) + *(v14 + 4 * a2) * 0.1) * *(this + 4);
  }

  kaldi::Matrix<float>::~Matrix(v36);
  kaldi::Matrix<float>::~Matrix(v38);
  return v34;
}

void sub_1B50FC288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  kaldi::Matrix<float>::~Matrix(va);
  kaldi::Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<kaldi::Vector<float>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<kaldi::Vector<float>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; kaldi::Vector<float>::Destroy(i))
  {
    i -= 24;
  }

  *(a1 + 8) = a2;
}

void kaldi::OnlineProcessPitch::UpdateNormalizationStats(kaldi::OnlineProcessPitch *this, unsigned int a2)
{
  v5 = *(this + 11);
  v6 = *(this + 12);
  v4 = (this + 88);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) <= a2)
  {
    std::vector<kaldi::OnlineProcessPitch::NormalizationStats>::resize(v4, a2 + 1);
  }

  v8 = (*(**(this + 6) + 8))(*(this + 6));
  v9 = (*(**(this + 6) + 16))(*(this + 6), (v8 - 1));
  v10 = *(this + 11);
  v11 = v10 + 24 * a2;
  if (*v11 != v8 || *(v11 + 4) != v9)
  {
    v12 = (a2 - *(this + 6)) & ~((a2 - *(this + 6)) >> 31);
    v13 = a2 + *(this + 7);
    if ((v13 + 1) < v8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = v8;
    }

    if (a2 && (v15 = v10 + 24 * (a2 - 1), *v15 == v8) && *(v15 + 4) == v9)
    {
      *v11 = *v15;
      *(v11 + 16) = *(v15 + 16);
      v16 = (a2 - 1 - *(this + 6)) & ~((a2 - 1 - *(this + 6)) >> 31);
      v17 = *(this + 7) + a2;
      if (v17 >= v8)
      {
        v18 = v8;
      }

      else
      {
        v18 = v17;
      }

      if (v12 != v16)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        kaldi::Vector<float>::Resize(&v31, 2, 0);
        v19 = (*(**(this + 6) + 24))(*(this + 6), v16, &v31);
        v28 = kaldi::NccfToPov(v19, *v31);
        v20 = logf(v31[1]);
        v21.f32[0] = v28;
        v21.f32[1] = v28 * v20;
        *(v11 + 8) = vsubq_f64(*(v11 + 8), vcvtq_f64_f32(v21));
        kaldi::Vector<float>::Destroy(&v31);
      }

      if (v14 != v18)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        kaldi::Vector<float>::Resize(&v31, 2, 0);
        v22 = (*(**(this + 6) + 24))(*(this + 6), v18, &v31);
        v29 = kaldi::NccfToPov(v22, *v31);
        v23 = logf(v31[1]);
        v24.f32[0] = v29;
        v24.f32[1] = v29 * v23;
        *(v11 + 8) = vaddq_f64(*(v11 + 8), vcvtq_f64_f32(v24));
        kaldi::Vector<float>::Destroy(&v31);
      }
    }

    else
    {
      *v11 = v8;
      *(v11 + 4) = v9;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      kaldi::Vector<float>::Resize(&v31, 2, 0);
      if (v12 < v14)
      {
        do
        {
          v25 = (*(**(this + 6) + 24))(*(this + 6), v12, &v31);
          v30 = kaldi::NccfToPov(v25, *v31);
          v26 = logf(v31[1]);
          v27.f32[0] = v30;
          v27.f32[1] = v30 * v26;
          *(v11 + 8) = vaddq_f64(*(v11 + 8), vcvtq_f64_f32(v27));
          v12 = (v12 + 1);
        }

        while (v14 != v12);
      }

      kaldi::Vector<float>::Destroy(&v31);
    }
  }
}

void sub_1B50FC6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::OnlineProcessPitch::NormalizationStats>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<kaldi::OnlineProcessPitch::NormalizationStats>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<kaldi::OnlineProcessPitch::NormalizationStats>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      do
      {
        *v4 = -1;
        *(v4 + 4) = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::OnlineProcessPitch::NormalizationStats>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * v6 + 24 * a2;
    v13 = v11;
    do
    {
      *v13 = -1;
      *(v13 + 4) = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
    }

    while (v13 != v12);
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::OnlineProcessPitch::NormalizationStats>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void kaldi::OnlineProcessPitch::~OnlineProcessPitch(kaldi::OnlineProcessPitch *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }
}

void *std::vector<kaldi::PitchFrameInfo::StateInfo>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B50FC990(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,float>>::__append(uint64_t a1, unint64_t a2)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
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

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<int>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<int>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::vector<int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<int>>,std::vector<int>*,std::vector<int>*,std::vector<int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<int> *,std::vector<int> *,std::vector<int> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t kaldi::WriteIntegerByteArray<int>(void *a1, int a2, int a3, uint64_t a4, unsigned int *a5)
{
  if (a2)
  {
    v16 = 4;
    std::ostream::write();
    if (a3)
    {
      v9 = -a4;
    }

    else
    {
      v9 = a4;
    }

    v15 = v9;
    result = std::ostream::write();
    if (a4)
    {
      if (a3 && !fst::AlignOutput(a1))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
      }

      result = std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      v11 = *a5++;
      v12 = MEMORY[0x1B8C84C00](a1, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<int>>::~__split_buffer(v18);
  }
}

void std::vector<int>::shrink_to_fit(std::vector<int> *this)
{
  end = this->__end_;
  begin = this->__begin_;
  v3 = this->__end_cap_.__value_ - this->__begin_;
  v4 = end - this->__begin_;
  if (v3 > v4)
  {
    if (end != begin)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = (4 * (v4 >> 2));
      v8 = (this->__end_ - begin);
      v9 = (v7 - v8);
      memcpy((v7 - v8), begin, v8);
      v6 = this->__begin_;
      this->__begin_ = v9;
      this->__end_ = v7;
      this->__end_cap_.__value_ = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

int *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(int *a1, int *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

__n128 std::vector<int>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void quasar::OnlineLatticeWordAlignmentDecoder::finishInit(quasar::OnlineLatticeWordAlignmentDecoder *this)
{
  quasar::result_handler::Range::Range(v11, 16, 1);
  if (quasar::SystemConfig::Version::operator>=(this + 8, v11))
  {
    quasar::QsrTextSymbolTable::init(*(this + 57), (this + 32), 0, *(this + 449), 1);
    v2 = quasar::QsrTextSymbolTable::Find(*(this + 57), "<?>");
    if (v2 != -1)
    {
      v3 = v2;
      v4 = *(this + 118);
      if (v4 && v2 != v4 && quasar::gLogLevel >= 5)
      {
        memset(v11, 0, sizeof(v11));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Silence label is set to ", 24);
        v6 = MEMORY[0x1B8C84C00](v5, *(this + 118));
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " but does not match the auto-determined silence label ", 54);
        v8 = MEMORY[0x1B8C84C60](v7, v3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ". Will use latter.", 18);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v11);
      }

      *(this + 118) = v3;
    }
  }

  quasar::ModelLoader::readWordBoundaryInfo(*(this + 47), this + 118, this + 504, this + 528, v11);
  v9 = v11[0];
  v11[0] = 0uLL;
  v10 = *(this + 62);
  *(this + 488) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (*(&v11[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11[0] + 1));
    }
  }
}

void quasar::OnlineLatticeWordAlignmentDecoder::runImpl(uint64_t a1, clockid_t a2)
{
  v3 = 1;
  kaldi::Timer::Reset(v2, a2);
  v4 = 0;
  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_23CompactLatticeWeightTplINS1_16LatticeWeightTplIfEEiEEiEENS1_11VectorStateIS8_NS_9allocatorIS8_EEEEEENSA_ISD_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B50FD9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  quasar::QuasarWarnMessage::~QuasarWarnMessage(va1);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(va);
  v5 = *(v3 - 128);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineLatticeWordAlignmentDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  quasar::QsrTextSymbolTable::Register(this[57], a2, 16, 1, 0x7FFFFFFF, 0x7FFFFFFF);
  kaldi::WordBoundaryInfoNewOpts::Register((this + 59), a2);
  std::string::basic_string[abi:ne200100]<0>(v7, "word-boundary-int-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word boundary file with format <integer-phone-id> [begin|end|singleton|internal|nonword]");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 63), __p, 1, 1, 1, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "unpronounced-word-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing newline-separated list of words with no pronunciation.");
  quasar::SystemConfig::Register<std::string>(a2, v7, (this + 66), __p, 0, 20, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "max-expand");
  std::string::basic_string[abi:ne200100]<0>(__p, "If >0, the max amount by which lattices will be expanded.");
  quasar::SystemConfig::Register<float>(a2, v7, (this + 69), __p, 0, 1, 1, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  result = MEMORY[0x1B8C84820](this + 63, "");
  *(this + 138) = 0;
  return result;
}

void sub_1B50FDBF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void kaldi::WordBoundaryInfoNewOpts::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "silence-label");
  std::string::basic_string[abi:ne200100]<0>(__p, "Numeric id of word symbol that is to be used for silence arcs in the word-aligned lattice (zero is OK)");
  (*(*a2 + 8))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "partial-word-label");
  std::string::basic_string[abi:ne200100]<0>(__p, "Numeric id of word symbol that is to be used for arcs in the word-aligned lattice corresponding to partial words at the end of forced-out utterances (zero is OK)");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "reorder");
  std::string::basic_string[abi:ne200100]<0>(__p, "True if the lattices were generated from graphs that had the --reorder option true, relating to reordering self-loops (typically true)");
  (**a2)(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B50FDDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::OnlineLatticeWordAlignmentDecoder::~OnlineLatticeWordAlignmentDecoder(void **this)
{
  *this = &unk_1F2CFCFF8;
  if (*(this + 551) < 0)
  {
    operator delete(this[66]);
  }

  if (*(this + 527) < 0)
  {
    operator delete(this[63]);
  }

  v2 = this[62];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[58];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::Decoder::~Decoder(this);
}

{
  *this = &unk_1F2CFCFF8;
  if (*(this + 551) < 0)
  {
    operator delete(this[66]);
  }

  if (*(this + 527) < 0)
  {
    operator delete(this[63]);
  }

  v2 = this[62];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[58];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  quasar::Decoder::~Decoder(this);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::QsrTextSymbolTable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFD0D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::QsrTextSymbolTable>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN3fst9VectorFstINS1_6ArcTplINS1_23CompactLatticeWeightTplINS1_16LatticeWeightTplIfEEiEEiEENS1_11VectorStateIS8_NS_9allocatorIS8_EEEEEENSA_ISD_EEEC2B8ne200100IJESE_Li0EEESE_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFD120;
  fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
}

void std::__shared_ptr_emplace<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFD120;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

id EARHelpers::getAbsolutePath(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
  v3 = [v2 stringByStandardizingPath];

  v4 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:objc_msgSend(v3 isDirectory:"fileSystemRepresentation") relativeToURL:{1, 0}];

  return v4;
}

id EARHelpers::createDirectoryInLibrary(EARHelpers *this, NSString *a2)
{
  v2 = this;
  if ([(EARHelpers *)v2 length])
  {
    v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v4 = [v3 firstObject];

    if (v4)
    {
      v5 = [v4 stringByAppendingPathComponent:v2];
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v7 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

      if (v7)
      {
        v8 = v5;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1B50FE32C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id EARHelpers::NSArrayOfStringFromVectorOfString(__int128 **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, *v3, *(v3 + 1));
      }

      else
      {
        v5 = *v3;
        v11.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&v11.__r_.__value_.__l.__data_ = v5;
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v11;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{p_p, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
      [v2 addObject:v7];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  v8 = [v2 copy];

  return v8;
}

void EARHelpers::StdSetOfStringsFromNSSet(EARHelpers *this@<X0>, void *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = this;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [(EARHelpers *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = v9;
        if (v9)
        {
          [v9 ear_toString];
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v12 = 0;
        }

        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a2, __p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v6 = [(EARHelpers *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_1B50FE658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__tree<std::string>::destroy(v16, *(v16 + 8));

  _Unwind_Resume(a1);
}

void EARHelpers::StdPersonalizedInputFromEARPersonalizedInput(void *a1@<X0>, void *a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        applesauce::CF::convert_to<std::map<std::string,int>,0>([v4 objectForKey:{v8, __p, v15, v16}], &v17);
        if (v8)
        {
          [v8 ear_toString];
        }

        else
        {
          __p = 0;
          v15 = 0;
          v16 = 0;
        }

        p_p = &__p;
        v9 = std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &__p);
        v10 = (v9 + 64);
        v11 = (v9 + 56);
        std::__tree<std::string>::destroy(v9 + 56, *(v9 + 64));
        v12 = v18;
        *(v10 - 1) = v17;
        *v10 = v12;
        v13 = v19;
        v10[1] = v19;
        if (v13)
        {
          *(v12 + 16) = v10;
          v17 = &v18;
          v18 = 0;
          v19 = 0;
          v12 = 0;
        }

        else
        {
          *v11 = v10;
        }

        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p);
          v12 = v18;
        }

        std::__tree<std::string>::destroy(&v17, v12);
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }
}

void sub_1B50FE880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(v16, *(v16 + 8));

  _Unwind_Resume(a1);
}

void applesauce::CF::convert_to<std::map<std::string,int>,0>(const void *a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (TypeID = CFDictionaryGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  applesauce::CF::details::CFDictionary_get_value_to<std::map<std::string,int>>(a1, a2);
}

id EARHelpers::EarTokensToNSString(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = [MEMORY[0x1E696AD60] string];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN10EARHelpers19EarTokensToNSStringEP7NSArrayIP26_EARSpeechRecognitionTokenE_block_invoke;
  v4[3] = &unk_1E7C1A170;
  v4[4] = &v5;
  [v1 enumerateObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1B50FEA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN10EARHelpers19EarTokensToNSStringEP7NSArrayIP26_EARSpeechRecognitionTokenE_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 hasSpaceBefore])
  {
    [*(*(*(a1 + 32) + 8) + 40) appendString:@" "];
  }

  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v5 tokenName];
  [v3 appendString:v4];

  if ([v5 hasSpaceAfter])
  {
    [*(*(*(a1 + 32) + 8) + 40) appendString:@" "];
  }
}

void std::vector<std::pair<int,int>>::resize(void *a1, unint64_t a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<std::pair<int,int>>::__append(a1, a2 - v3, a3);
  }
}

id EARHelpers::shuffledArray(EARHelpers *this, NSArray *a2)
{
  v2 = this;
  v3 = [(EARHelpers *)v2 mutableCopy];
  v4 = 0;
  for (i = 0; i < [v3 count]; ++i)
  {
    [v3 exchangeObjectAtIndex:i withObjectAtIndex:{arc4random() % (v4 + objc_msgSend(v3, "count")) + i}];
    --v4;
  }

  v6 = [v3 copy];

  return v6;
}

id EARHelpers::ContainerToNSSet<std::set<std::string>>(void *a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:a1[2]];
  v3 = *a1;
  v4 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v5 = *(v3 + 55);
      if (v5 < 0)
      {
        v6 = v3[4];
        v5 = v3[5];
      }

      else
      {
        v6 = v3 + 4;
      }

      v7 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v6, v5}];
      [v2 addObject:v7];

      v8 = v3[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v3[2];
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  v11 = [v2 copy];

  return v11;
}

id EARHelpers::ContainerToNSSet<std::unordered_set<std::string>>(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:*(a1 + 24)];
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = *(i + 39);
    if (v4 < 0)
    {
      v5 = i[2];
      v4 = i[3];
    }

    else
    {
      v5 = (i + 2);
    }

    v6 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v5, v4}];
    [v2 addObject:v6];
  }

  v7 = [v2 copy];

  return v7;
}

id EARHelpers::VectorToArray<std::string>(__int128 **a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v3, *(v3 + 1));
      }

      else
      {
        v5 = *v3;
        __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&__p.__r_.__value_.__l.__data_ = v5;
      }

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

      v8 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{p_p, size, __p.__r_.__value_.__r.__words[0]}];
      [v2 addObject:v8];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  v9 = [v2 copy];

  return v9;
}

void EARHelpers::createNSDataInputStream(EARHelpers *this, NSData *a2)
{
  v2 = this;
  if (v2)
  {
    v3 = [(EARHelpers *)v2 copy];
  }

  else
  {
    v3 = [MEMORY[0x1E695DEF0] data];
  }

  v4 = v3;
  operator new();
}

void EARHelpers::truncateFromFirstNull(id *a1)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      for (i = 0; i < [v3 length]; ++i)
      {
        if (![v3 characterAtIndex:i])
        {
          *a1 = [v3 substringToIndex:i];
          break;
        }
      }
    }
  }
}

void applesauce::CF::details::CFDictionary_get_value_to<std::map<std::string,int>>(const __CFDictionary *a1@<X0>, void *a2@<X8>)
{
  Count = CFDictionaryGetCount(a1);
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  std::vector<void const*>::vector[abi:ne200100](v13, Count);
  std::vector<void const*>::vector[abi:ne200100](values, Count);
  CFDictionaryGetKeysAndValues(a1, v13[0], values[0]);
  if (Count)
  {
    for (i = 0; i != Count; ++i)
    {
      applesauce::CF::convert_to<std::string,0>(*(v13[0] + i), v7);
      v6 = applesauce::CF::convert_to<int,0>(values[0][i]);
      *__p = *v7;
      v10 = v8;
      v7[1] = 0;
      v8 = 0;
      v7[0] = 0;
      v11 = v6;
      std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int>>(a2, __p);
      if (SHIBYTE(v10) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v8) < 0)
      {
        operator delete(v7[0]);
      }
    }
  }

  if (values[0])
  {
    values[1] = values[0];
    operator delete(values[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }
}