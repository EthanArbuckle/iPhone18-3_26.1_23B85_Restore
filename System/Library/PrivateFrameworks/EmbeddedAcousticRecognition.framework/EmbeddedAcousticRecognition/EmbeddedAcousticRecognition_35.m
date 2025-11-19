void sub_1B529CCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a9);
  if (*(v9 - 73) < 0)
  {
    operator delete(*(v9 - 96));
  }

  if (*(v9 - 49) < 0)
  {
    operator delete(*(v9 - 72));
  }

  _Unwind_Resume(a1);
}

unint64_t quasar::corrective_reranking::findAdjacentWordsToTarget(uint64_t *a1, uint64_t a2, void *a3, uint64_t *a4, int a5)
{
  if (*a4 == a4[1])
  {
    return 0;
  }

  v6 = a1;
  v7 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (a1[1] != 11)
    {
      goto LABEL_11;
    }

    v8 = *a1;
  }

  else
  {
    v8 = a1;
    if (v7 != 11)
    {
LABEL_11:
      if (*a2 == *(a2 + 8))
      {
        v12 = 0.0;
      }

      else
      {
        v12 = **a2;
      }

      goto LABEL_17;
    }
  }

  v9 = *v8;
  v10 = *(v8 + 3);
  if (v9 != 0x6661747265736E69 || v10 != 0x7265746661747265)
  {
    goto LABEL_11;
  }

  v13 = *(a2 + 8);
  if (*a2 == v13)
  {
    v12 = INFINITY;
  }

  else
  {
    v12 = (*(v13 - 4) + *(v13 - 8));
  }

LABEL_17:
  if ((v7 & 0x80) != 0)
  {
    if (a1[1] != 11)
    {
      goto LABEL_28;
    }

    v14 = *a1;
  }

  else
  {
    v14 = a1;
    if (v7 != 11)
    {
      goto LABEL_28;
    }
  }

  v15 = *v14;
  v16 = *(v14 + 3);
  if (v15 == 0x6661747265736E69 && v16 == 0x7265746661747265)
  {
    quasar::corrective_reranking::detokenize(a3);
  }

LABEL_28:
  TokenIndexFromTextIndex = quasar::corrective_reranking::getTokenIndexFromTextIndex(a4, v12);
  v19 = *(v6 + 23);
  if ((v19 & 0x80) != 0)
  {
    if (v6[1] == 7 && **v6 == 1819305330 && *(*v6 + 3) == 1701011820)
    {
LABEL_77:
      if ((TokenIndexFromTextIndex & 0x80000000) != 0)
      {
        goto LABEL_89;
      }

      goto LABEL_86;
    }

    if (v6[1] == 6 && **v6 == 1701602660 && *(*v6 + 4) == 25972)
    {
LABEL_64:
      if ((TokenIndexFromTextIndex & 0x80000000) != 0)
      {
        goto LABEL_89;
      }

      if (!TokenIndexFromTextIndex)
      {
        return 0;
      }

      goto LABEL_66;
    }

    v24 = v6[1];
    if (v24 == 12)
    {
      v6 = *v6;
      goto LABEL_80;
    }

    if (v24 != 11)
    {
      return 0;
    }

    if (**v6 != 0x6661747265736E69 || *(*v6 + 3) != 0x7265746661747265)
    {
      return 0;
    }

LABEL_72:
    if ((TokenIndexFromTextIndex & 0x80000000) != 0)
    {
      goto LABEL_89;
    }

    v27 = (TokenIndexFromTextIndex + 1);
    goto LABEL_74;
  }

  v20 = 0;
  if (*(v6 + 23) <= 0xAu)
  {
    if (v19 != 6)
    {
      if (v19 != 7)
      {
        return v20;
      }

      if (*v6 != 1819305330 || *(v6 + 3) != 1701011820)
      {
        return 0;
      }

      goto LABEL_77;
    }

    if (*v6 != 1701602660 || *(v6 + 2) != 25972)
    {
      return 0;
    }

    goto LABEL_64;
  }

  if (v19 == 11)
  {
    if (*v6 != 0x6661747265736E69 || *(v6 + 3) != 0x7265746661747265)
    {
      return 0;
    }

    goto LABEL_72;
  }

  if (v19 != 12)
  {
    return v20;
  }

LABEL_80:
  if (*v6 != 0x6562747265736E69 || *(v6 + 2) != 1701998438)
  {
    return 0;
  }

  if ((TokenIndexFromTextIndex & 0x80000000) != 0)
  {
LABEL_89:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "targetTokenIndex >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

LABEL_86:
  if (!TokenIndexFromTextIndex)
  {
    return 0;
  }

LABEL_66:
  v27 = TokenIndexFromTextIndex;
  LODWORD(TokenIndexFromTextIndex) = TokenIndexFromTextIndex - 1;
LABEL_74:
  v29 = TokenIndexFromTextIndex - a5;
  if (TokenIndexFromTextIndex < a5)
  {
    v29 = -1;
  }

  return (v29 + 1) | (v27 << 32);
}

uint64_t quasar::corrective_reranking::getTokenIndexFromTextIndex(uint64_t *a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 24) > a2)
  {
    return 0;
  }

  v5 = *(v2 - 4) + *(v2 - 8);
  v6 = v2 - v3;
  if (v5 <= a2)
  {
    return (v6 >> 5) - 1;
  }

  result = 0;
  v7 = v6 >> 5;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  for (i = (v3 + 28); ; i += 8)
  {
    v10 = *(i - 1);
    v11 = *i + v10;
    if (v10 <= a2 && v11 > a2)
    {
      break;
    }

    v13 = result + 1;
    if (v7 > result + 1 && v11 <= a2 && i[7] > a2)
    {
      return (result + 1);
    }

    ++result;
    if (v8 == v13)
    {
      memset(v14, 0, sizeof(v14));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Reached end of getTokenIndexFromTextIndex");
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
    }
  }

  return result;
}

void quasar::corrective_reranking::stripDiacritics(quasar::QsrText *a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  quasar::QsrText::SingletonInstance(a1);
  quasar::utf::toString();
}

void sub_1B529D3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 33) < 0)
  {
    operator delete(*(v14 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(quasar::corrective_reranking *this)
{
  {
    if (v2)
    {
      if (kaldi::quasar::IsInternalBuild(v2))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "QuasarVoiceEditingSensitiveLog");
        v3 = kaldi::quasar::UserDefaultsBool(__p);
        if (v5 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v3 = 0;
      }

      quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(void)::b = v3;
    }
  }

  return quasar::corrective_reranking::isVoiceEditingSensitiveLogEnabled(void)::b;
}

void sub_1B529D4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *quasar::corrective_reranking::operator<<(void *result, _BYTE *a2)
{
  v2 = result;
  v3 = **a2;
  if (*(*a2 + 8) != v3)
  {
    if (a2[8] == 1)
    {
      std::to_string(__p, *(v3 + 168));
      v4 = std::string::insert(__p, 0, " ");
      v5 = *&v4->__r_.__value_.__l.__data_;
      v23 = v4->__r_.__value_.__r.__words[2];
      v22 = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v22, "");
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "PARSE ", 6);
    v7 = MEMORY[0x1B8C84C00](v6, 0);
    if (v23 >= 0)
    {
      v8 = &v22;
    }

    else
    {
      v8 = v22;
    }

    if (v23 >= 0)
    {
      v9 = HIBYTE(v23);
    }

    else
    {
      v9 = *(&v22 + 1);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ":\n  Intent: ", 12);
    quasar::corrective_reranking::Parse::getIntent(v3, __p);
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, size);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n  Target: ", 11);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    quasar::corrective_reranking::Parse::getTarget(v3, 0, __p);
    if (__p[0].__r_.__value_.__r.__words[0] == __p[0].__r_.__value_.__l.__size_ || *(v3 + 112) != 1)
    {
      v21.__r_.__value_.__r.__words[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
    }

    else
    {
      v15 = *(v3 + 88);
      v16 = *(v3 + 96);
      if (v15 == v16)
      {
        v21.__r_.__value_.__r.__words[0] = __p;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
        goto LABEL_28;
      }

      v17 = (*(v16 - 1) + *(v16 - 2));
      v18 = *v15;
      v21.__r_.__value_.__r.__words[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
      if (v17 != v18)
      {
LABEL_28:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "\n    Parsed from utterance: ", 28);
        quasar::corrective_reranking::Parse::getTarget(v3, 0, v20);
        quasar::corrective_reranking::detokenize(v20);
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "None", 4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "\n  payload: ", 12);
    quasar::corrective_reranking::Parse::getPayload(v3, 0, &v21);
    quasar::utf::toString();
  }

  return result;
}

uint64_t quasar::joinToList<std::vector<std::string>>(uint64_t *a1, int a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "[", 1);
  if (*a1 != a1[1])
  {
    if (a2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "\n ", 2);
      v4 = ",\n ";
    }

    else
    {
      v4 = ", ";
    }

    v7[0] = v4;
    v7[1] = strlen(v4);
    quasar::joinToStream<std::vector<std::string>>(&v9, a1, v7);
    if (a2)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "\n", 1);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "]", 1);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v9 = v5;
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C85200](&v13);
}

void sub_1B529DFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](&a28);
  _Unwind_Resume(a1);
}

uint64_t quasar::corrective_reranking::isAdjacentEditsEnabled(quasar::corrective_reranking *this)
{
  {
    if (v2)
    {
      quasar::corrective_reranking::isAdjacentEditsEnabled(void)::enabled = quasar::corrective_reranking::isAdjacentEditsEnabledHelper(v2);
    }
  }

  return quasar::corrective_reranking::isAdjacentEditsEnabled(void)::enabled;
}

uint64_t quasar::corrective_reranking::isAdjacentEditsEnabledHelper(quasar::corrective_reranking *this)
{
  v1 = _os_feature_enabled_impl();
  if (kaldi::quasar::IsInternalBuild(v1) && (v2 = getenv("DICTATION_VOICE_COMMANDS_ADJACENT_EDITS")) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, v2);
    v3 = std::stoi(__p, 0, 10);
    v1 = v3 != 0;
    if (SBYTE7(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (quasar::gLogLevel >= 5)
    {
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
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Voice Commands Improvement: ", 28);
      v5 = MEMORY[0x1B8C84BD0](v4, v3 != 0);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (override)", 11);
LABEL_9:
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

  else if (quasar::gLogLevel >= 5)
  {
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Voice Commands Improvement: ", 28);
    v7 = MEMORY[0x1B8C84BD0](v6, v1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " (default value)", 16);
    goto LABEL_9;
  }

  return v1;
}

void sub_1B529E21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::getTextAroundSpan(uint64_t a1, unsigned int a2, int a3)
{
  if (((a3 | a2) & 0x80000000) != 0 || ((v4 = a3 + a2, v5 = *(a1 + 23), v5 >= 0) ? (v6 = *(a1 + 23)) : (v6 = *(a1 + 8)), v6 < v4))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "0 <= startIndex && startIndex <= endIndex && endIndex <= text.size()");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  v7 = 0;
  if (v5 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (a2 && v6)
  {
    if (v6 <= a2 - 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = a2;
    }

    v10 = 4 * v9;
    while (v10)
    {
      v11 = *(v8 - 4 + v10);
      v10 -= 4;
      if (v11 == 10)
      {
        v7 = (v10 >> 2) + 1;
        goto LABEL_19;
      }
    }

    v7 = 0;
  }

LABEL_19:
  if (v6 > v4)
  {
    v12 = (v8 + 4 * v4);
    v13 = 4 * v6 - 4 * v4;
    while (*v12 != 10)
    {
      ++v12;
      v13 -= 4;
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    if (v13)
    {
      v14 = v12 - v8;
      if (v14 != -4)
      {
        v6 = v14 >> 2;
      }
    }
  }

LABEL_27:
  quasar::pySlice<std::basic_string<char32_t>>(a1, v7, v6, &v19);
  v15 = a2 - v7;
  if ((v15 & 0x80000000) == 0)
  {
    v16 = v4 - v7;
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    if (size >= v16)
    {
      quasar::pySlice<std::basic_string<char32_t>>(&v19, 0, v15, v20);
      quasar::pySlice<std::basic_string<char32_t>>(&v19, v16, 0x7FFFFFFF, &__p);
      quasar::corrective_reranking::tokenize();
    }
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "0 <= spanStartInLine && spanStartInLine <= spanEndInLine && spanEndInLine <= currentLine.size()", 95);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
}

void quasar::pySlice<std::basic_string<char32_t>>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, std::basic_string<char32_t> *a4@<X8>)
{
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_3;
    }

LABEL_17:
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_3:
  v7 = ((v6 & (a2 >> 31)) + a2) & ~(((v6 & (a2 >> 31)) + a2) >> 31);
  v8 = ((v6 & (a3 >> 31)) + a3) & ~(((v6 & (a3 >> 31)) + a3) >> 31);
  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  if (v9 > v7)
  {
    std::basic_string<char32_t>::reserve(a4, v9 - v7);
    do
    {
      v10 = *(a1 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = a1[1];
      }

      if (v10 <= v7)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (v11 >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      std::basic_string<char32_t>::push_back(a4, *(v12 + v7++));
    }

    while (v9 != v7);
  }
}

void sub_1B529E6C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::wstring::size_type *quasar::pySlice<std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>@<X0>(std::wstring::size_type *result@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = result[1];
  if (*result == v5)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v6 = (v5 - *result) >> 5;
    v7 = ((v6 & (a2 >> 31)) + a2) & ~(((v6 & (a2 >> 31)) + a2) >> 31);
    v8 = ((v6 & (a3 >> 31)) + a3) & ~(((v6 & (a3 >> 31)) + a3) >> 31);
    if (v8 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (v9 > v7)
    {
      v10 = result;
      std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::reserve(a4, v9 - v7);
      v11 = 32 * v7;
      do
      {
        if (v7 >= (v10[1] - *v10) >> 5)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        result = std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::push_back[abi:ne200100](a4, (*v10 + v11));
        ++v7;
        v11 += 32;
      }

      while (v9 != v7);
    }
  }

  return result;
}

void sub_1B529E7BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__init_with_size[abi:ne200100]<std::sub_match<std::__wrap_iter<char const*>>*,std::sub_match<std::__wrap_iter<char const*>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B529E840(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::wstring::size_type *std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::basic_string<char32_t> const&,quasar::corrective_reranking::TextRange>(uint64_t a1, __int128 *a2, std::wstring::size_type *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - *a1;
  if (v8 >> 4 > v4)
  {
    v4 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v25 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v9);
  }

  v10 = (32 * v3);
  v21 = 0;
  v22 = v10;
  v11 = 0;
  v23 = v10;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
    v11 = v24;
  }

  else
  {
    v12 = *a2;
    v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v10->__r_.__value_.__l.__data_ = v12;
    v13 = v10;
    v14 = v10;
  }

  v10[1].__r_.__value_.__r.__words[0] = *a3;
  p_size = &v14[1].__r_.__value_.__l.__size_;
  v16 = *(a1 + 8) - *a1;
  v17 = v13 - v16;
  memcpy(v13 - v16, *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = p_size;
  v19 = *(a1 + 16);
  *(a1 + 16) = v11;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return p_size;
}

void sub_1B529E980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::basic_string<char32_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char32_t> const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::wstring>::pointer std::vector<std::basic_string<char32_t>>::__emplace_back_slow_path<std::basic_string<char32_t> const&>(uint64_t a1, __int128 *a2)
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t std::vector<quasar::corrective_reranking::MatchResult>::__emplace_back_slow_path<quasar::corrective_reranking::MatchResult>(uint64_t a1, __int128 *a2)
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

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::MatchResult>,quasar::corrective_reranking::MatchResult*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v16);
  return v15;
}

void sub_1B529EC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::corrective_reranking::MatchResult>,quasar::corrective_reranking::MatchResult*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::MatchResult>,quasar::corrective_reranking::MatchResult*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::MatchResult>,quasar::corrective_reranking::MatchResult*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::unordered_set<char32_t>::unordered_set(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::__emplace_unique_key_args<quasar::PersonalizedLmData::DocumentType,quasar::PersonalizedLmData::DocumentType>(a1, a2++);
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

void *std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::wstring::size_type *std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(a1, a2);
  }

  else
  {
    std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(a1, a2);
    result = (v3 + 32);
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__construct_one_at_end[abi:ne200100]<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  *(a1 + 8) = v4 + 32;
}

std::wstring::size_type *std::vector<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>::__emplace_back_slow_path<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange> const&>(uint64_t a1, __int128 *a2)
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

  v23 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::basic_string<char32_t>,quasar::corrective_reranking::TextRange>>>(a1, v7);
  }

  v8 = (32 * v2);
  v19 = 0;
  v20 = v8;
  v9 = 0;
  v21 = v8;
  v22 = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char32_t>::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
    v11 = v20;
    v12 = v21;
    v9 = v22;
  }

  else
  {
    v10 = *a2;
    v8->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v8->__r_.__value_.__l.__data_ = v10;
    v11 = v8;
    v12 = v8;
  }

  v8[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  p_size = &v12[1].__r_.__value_.__l.__size_;
  v14 = *(a1 + 8) - *a1;
  v15 = v11 - v14;
  memcpy(v11 - v14, *a1, v14);
  v16 = *a1;
  *a1 = v15;
  *(a1 + 8) = p_size;
  v17 = *(a1 + 16);
  *(a1 + 16) = v9;
  v21 = v16;
  v22 = v17;
  v19 = v16;
  v20 = v16;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v19);
  return p_size;
}

void sub_1B529F06C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void quasar::GeoRegion::~GeoRegion(quasar::GeoRegion *this)
{
  *this = &unk_1F2D0A920;
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 136, *(this + 18));
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(this + 112, *(this + 15));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 88, *(this + 12));
  v2 = *(this + 10);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  quasar::GeoRegion::~GeoRegion(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::createRegionLmPlug(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (v3)
  {
    (*(*v3 + 48))(&v4);
    std::allocate_shared[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,std::string const&,std::string const&,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>,0>();
  }

  std::__throw_bad_function_call[abi:ne200100]();
}

void sub_1B529F1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::__shared_ptr_emplace<quasar::BitmapRegion>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::BitmapRegion>,0>(std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0A950;
  quasar::BitmapRegion::BitmapRegion(a1 + 1, a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::BitmapRegion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A950;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::BitmapRegion>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

std::string *std::__shared_ptr_emplace<quasar::CircleRegion>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::CircleRegion>,0>(std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0A9A0;
  quasar::CircleRegion::CircleRegion(a1 + 1, a2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::CircleRegion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0A9A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::CircleRegion>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t std::__function::__func<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_0,std::allocator<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0AA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

uint64_t std::__function::__func<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_1,std::allocator<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D0AAD0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_1,std::allocator<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::operator()(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "loading NNLM from ", 18);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " not implemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v8);
}

uint64_t std::__function::__func<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_1,std::allocator<quasar::GeoRegion::loadModels(quasar::ModelLoader &,quasar::filesystem::Path &)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

std::string *std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::string const&,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>,0>(std::string *a1, __int128 *a2, uint64_t a3, std::string::size_type *a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0AB60;
  std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::string const&,std::string const&,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>(&v6, a1 + 1, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0AB60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void std::allocator<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>,std::string const&,std::string const&,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>(int a1, std::string *this, __int128 *a3, uint64_t a4, std::string::size_type *a5)
{
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v9 = 1;
  quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::RegionalLmPlug(this, a3, &__p, a5);
  if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B529FAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::RegionalLmPlug(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 1, a3);
  v8 = a4[1];
  this[2].__r_.__value_.__l.__size_ = *a4;
  this[2].__r_.__value_.__r.__words[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1B529FB80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void quasar::ContextualData::ContextualData(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1065353216;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 1065353216;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 296), "•|\\(|\\)||\\[|\\]|\\{|\\}|®|,|;|\\?|\\!|\\\");
  *(a1 + 320) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 1065353216;
  quasar::ContextualData::parseConfig();
}

void sub_1B529FD28(_Unwind_Exception *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v6);
  if (*(v1 + 319) < 0)
  {
    operator delete(*(v1 + 296));
  }

  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::destroy(v1 + 264, *(v1 + 272));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v5);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 + 176);
  if (*(v1 + 175) < 0)
  {
    operator delete(*v7);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::~__hash_table(v2);
  v9 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void quasar::ContextualData::parseConfig()
{
  __p[0] = 0;
  __p[1] = 0;
  *&v1 = 0;
  quasar::SystemConfig::SystemConfig(v2);
}

void sub_1B52A0D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a30 == 1 && a29 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  quasar::PTree::~PTree(&a63);
  if (v65 < 0)
  {
    operator delete(v64);
  }

  if (v67 < 0)
  {
    operator delete(v66);
  }

  quasar::SystemConfig::~SystemConfig(&v68);
  _Unwind_Resume(a1);
}

uint64_t quasar::ContextualData::filterNamedEntity(quasar::ContextualData *this, const quasar::ContextualData::NamedEntity *a2)
{
  v2 = *(a2 + 95);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 10);
  }

  if (!v2 || *(a2 + 13) < 0.0)
  {
    return 1;
  }

  if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 14, a2 + 24))
  {
    return 3;
  }

  v6 = *(a2 + 95);
  if (v6 >= 0)
  {
    v7 = *(a2 + 95);
  }

  else
  {
    v7 = *(a2 + 10);
  }

  v8 = *(this + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(this + 1);
  }

  if (v7 != v8)
  {
    return 5;
  }

  v10 = v6 >= 0 ? (a2 + 72) : *(a2 + 9);
  v11 = v9 >= 0 ? this : *this;
  if (memcmp(v10, v11, v7))
  {
    return 5;
  }

  if (*(a2 + 13) < *(this + 32))
  {
    return 6;
  }

  v12 = *(a2 + 71);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 7);
  }

  if (!v12)
  {
    return 0;
  }

  v13 = *(a2 + 47);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 4);
  }

  if (!v13)
  {
    return 0;
  }

  v22 = 1;
  __p[0] = &v22;
  v14 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>(this + 4, &v22);
  std::string::basic_string[abi:ne200100]<0>(__p, "Dictation");
  v23 = __p;
  v15 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v14 + 3, __p);
  v16 = a2 + 48;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v15 + 5, a2 + 6))
  {
    return 4;
  }

  __p[0] = a2 + 48;
  v17 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v15 + 5, a2 + 6);
  v18 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v17 + 5, a2 + 3);
  __p[0] = v16;
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v15 + 5, v16);
  if (!v18)
  {
    return 4;
  }

  v19 = *(v18 + 10);
  *(v18 + 10) = v19 - 1;
  if (v19 > 0)
  {
    return 0;
  }

  return 2;
}

void sub_1B52A1070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::ContextualData::filterContacts(quasar::ContextualData *this, const quasar::ContextualData::NamedEntity *a2)
{
  v2 = *(a2 + 71);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 7);
  }

  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 47);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 4);
  }

  if (!v4)
  {
    return 0;
  }

  v14 = 2;
  __p[0] = &v14;
  v5 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>(this + 4, &v14);
  std::string::basic_string[abi:ne200100]<0>(__p, "Dictation");
  v15 = __p;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v5 + 3, __p);
  v7 = a2 + 48;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v6 + 5, a2 + 6))
  {
    return 4;
  }

  __p[0] = a2 + 48;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6 + 5, a2 + 6);
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v8 + 5, a2 + 3);
  __p[0] = v7;
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6 + 5, v7);
  if (!v9)
  {
    return 4;
  }

  v10 = *(v9 + 10);
  *(v9 + 10) = v10 - 1;
  if (v10 > 0)
  {
    return 0;
  }

  return 2;
}

void sub_1B52A11F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::ContextualData::filter(quasar::ContextualData *this, const quasar::ContextualData::NamedEntity *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 28);
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return quasar::ContextualData::filterNamedEntity(this, a2);
      }

      return 7;
    }

    return 1;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      return 0;
    }

    return 7;
  }

  return quasar::ContextualData::filterContacts(this, a2);
}

void sub_1B52A1474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a20);
  v30 = *v28;
  quasar::PTree::~PTree(&a28);
  *v28 = 0;
  if (v30)
  {
    quasar::PTree::~PTree(v30);
    MEMORY[0x1B8C85350]();
  }

  _Unwind_Resume(a1);
}

BOOL quasar::ContextualData::addNamedEntity(quasar::ContextualData *this, quasar::ContextualData::NamedEntity *a2)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = (a2 + 96);
  std::to_string(__p, *(a2 + 24));
  v39.__r_.__value_.__r.__words[0] = __p;
  v5 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 41, __p);
  ++*(v5 + 10);
  if (SBYTE7(v19[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = quasar::ContextualData::filter(this, a2);
  if (v6)
  {
    if (quasar::gLogLevel >= 5)
    {
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
      memset(v19, 0, sizeof(v19));
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Contextual data: failed to add words, status: ", 46);
      MEMORY[0x1B8C84C00](v7, v6);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    return v6 == 0;
  }

  v8 = *(a2 + 28);
  if (v8 == 3)
  {
    quasar::LmeDataFactoryBase::Word::Word(__p);
    std::string::operator=(__p, a2);
    LODWORD(v20) = 1;
    MEMORY[0x1B8C84820](v19 + 8, "\\visualContext-jit");
    std::string::basic_string[abi:ne200100]<0>(&v37, "\\NT-inline");
    v39.__r_.__value_.__r.__words[0] = &v37;
    v12 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 264, &v37.__r_.__value_.__l.__data_);
    if (SBYTE7(v19[0]) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, __p[0], __p[1]);
    }

    else
    {
      *&v39.__r_.__value_.__l.__data_ = *__p;
      v39.__r_.__value_.__r.__words[2] = *&v19[0];
    }

    if (SHIBYTE(v19[1]) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *(&v19[0] + 1), *&v19[1]);
    }

    else
    {
      v40 = *(v19 + 8);
    }

    v41 = v20;
    std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&v42, &v20 + 8);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word const*,quasar::LmeDataFactoryBase::Word const*>(&v34, &v39, v44, 1uLL);
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::push_back[abi:ne200100]((v12 + 56), &v34);
    v38 = &v34;
    std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v38);
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v42, v43);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    *(this + 288) = 1;
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v13 = v21;
    goto LABEL_53;
  }

  if (v8 != 2)
  {
    if (v8 != 1)
    {
      return v6 == 0;
    }

    quasar::LmeDataFactoryBase::Word::Word(__p);
    std::string::operator=(__p, a2);
    LODWORD(v20) = 1;
    MEMORY[0x1B8C84820](v19 + 8, "\\jit");
    std::string::basic_string[abi:ne200100]<0>(&v37, "\\NT-inline");
    if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(this + 9, v4))
    {
      v39.__r_.__value_.__r.__words[0] = v4;
      v9 = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 9, v4);
      std::string::operator=(&v37, v9 + 1);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v37.__r_.__value_.__l.__size_ != 11)
        {
          goto LABEL_40;
        }

        v10 = v37.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) != 11)
        {
          goto LABEL_40;
        }

        v10 = &v37;
      }

      v14 = v10->__r_.__value_.__r.__words[0];
      v15 = *(v10->__r_.__value_.__r.__words + 3);
      if (v14 == 0x746E6F632D544E5CLL && v15 == 0x746361746E6F632DLL)
      {
        MEMORY[0x1B8C84820](v19 + 8, "\\contact-first");
      }
    }

LABEL_40:
    v39.__r_.__value_.__r.__words[0] = &v37;
    v11 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 264, &v37.__r_.__value_.__l.__data_);
    if (SBYTE7(v19[0]) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, __p[0], __p[1]);
    }

    else
    {
      *&v39.__r_.__value_.__l.__data_ = *__p;
      v39.__r_.__value_.__r.__words[2] = *&v19[0];
    }

    if ((SHIBYTE(v19[1]) & 0x80000000) == 0)
    {
      v40 = *(v19 + 8);
      goto LABEL_46;
    }

LABEL_45:
    std::string::__init_copy_ctor_external(&v40, *(&v19[0] + 1), *&v19[1]);
    goto LABEL_46;
  }

  quasar::LmeDataFactoryBase::Word::Word(__p);
  std::string::operator=(__p, a2);
  LODWORD(v20) = 1;
  MEMORY[0x1B8C84820](v19 + 8, "\\contact-first");
  std::string::basic_string[abi:ne200100]<0>(&v37, "\\NT-contact");
  v39.__r_.__value_.__r.__words[0] = &v37;
  v11 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 264, &v37.__r_.__value_.__l.__data_);
  if (SBYTE7(v19[0]) < 0)
  {
    std::string::__init_copy_ctor_external(&v39, __p[0], __p[1]);
  }

  else
  {
    *&v39.__r_.__value_.__l.__data_ = *__p;
    v39.__r_.__value_.__r.__words[2] = *&v19[0];
  }

  if (SHIBYTE(v19[1]) < 0)
  {
    goto LABEL_45;
  }

  v40 = *(v19 + 8);
LABEL_46:
  v41 = v20;
  std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&v42, &v20 + 8);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word const*,quasar::LmeDataFactoryBase::Word const*>(&v34, &v39, v44, 1uLL);
  std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::push_back[abi:ne200100]((v11 + 56), &v34);
  v38 = &v34;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&v38);
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v42, v43);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v13 = v21;
LABEL_53:
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(&v20 + 8, v13);
  if (SHIBYTE(v19[1]) < 0)
  {
    operator delete(*(&v19[0] + 1));
  }

  if (SBYTE7(v19[0]) < 0)
  {
    operator delete(__p[0]);
  }

  return v6 == 0;
}

void sub_1B52A1B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 137) < 0)
  {
    operator delete(*(v14 - 160));
  }

  if (*(v14 - 169) < 0)
  {
    operator delete(*(v14 - 192));
  }

  quasar::LmeDataFactoryBase::Word::~Word(&__p);
  _Unwind_Resume(a1);
}

void **std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<quasar::LmeDataFactoryBase::Word>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

double quasar::ContextualData::getNamedEntityQueryConfig@<D0>(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v16) = 1;
  if (std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>((a1 + 32), &v16)
    && (v15 = 1, v16 = &v15, v8 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>((a1 + 32), &v15), std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v8 + 3, a3))
    && (v15 = 1,
        v16 = &v15,
        v9 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>((a1 + 32), &v15),
        v16 = a3,
        v10 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v9 + 3, a3),
        std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v10 + 5, a2)))
  {
    v15 = 1;
    v16 = &v15;
    v11 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>((a1 + 32), &v15);
    v16 = a3;
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v11 + 3, a3);
    v16 = a2;
    v13 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v12 + 5, a2);
    std::unordered_map<std::string,quasar::ContextualData::QueryConfig>::unordered_map(a4, (v13 + 5));
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1065353216;
  }

  return result;
}

double quasar::ContextualData::getRankedContactQueryConfig@<D0>(uint64_t a1@<X0>, const void **a2@<X1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v16) = 2;
  if (std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>((a1 + 32), &v16)
    && (v15 = 2, v16 = &v15, v8 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>((a1 + 32), &v15), std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v8 + 3, a3))
    && (v15 = 2,
        v16 = &v15,
        v9 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>((a1 + 32), &v15),
        v16 = a3,
        v10 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v9 + 3, a3),
        std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v10 + 5, a2)))
  {
    v15 = 2;
    v16 = &v15;
    v11 = std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>((a1 + 32), &v15);
    v16 = a3;
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v11 + 3, a3);
    v16 = a2;
    v13 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v12 + 5, a2);
    std::unordered_map<std::string,quasar::ContextualData::QueryConfig>::unordered_map(a4, (v13 + 5));
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 1065353216;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::__unordered_map_hasher<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::hash<quasar::ContextualData::SourceFramework>,std::equal_to<quasar::ContextualData::SourceFramework>,true>,std::__unordered_map_equal<quasar::ContextualData::SourceFramework,std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,std::equal_to<quasar::ContextualData::SourceFramework>,std::hash<quasar::ContextualData::SourceFramework>,true>,std::allocator<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>>::__emplace_unique_key_args<quasar::ContextualData::SourceFramework,std::piecewise_construct_t const&,std::tuple<quasar::ContextualData::SourceFramework const&>,std::tuple<>>(void *a1, unsigned int *a2)
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

void sub_1B52A23F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<quasar::ContextualData::SourceFramework,std::unordered_map<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B52A26B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B52A2A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B52A2DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B52A2E70(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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

void sub_1B52A3118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_map<std::string,std::unordered_map<std::string,quasar::ContextualData::QueryConfig>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::Word const*,quasar::LmeDataFactoryBase::Word const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::LmeDataFactoryBase::Word>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52A3194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::LmeDataFactoryBase::Word>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word const*,quasar::LmeDataFactoryBase::Word const*,quasar::LmeDataFactoryBase::Word*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
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

      LODWORD(v4[2].__r_.__value_.__l.__data_) = *(v6 + 12);
      std::map<std::pair<quasar::PronType,std::string>,float>::map[abi:ne200100](&v4[2].__r_.__value_.__l.__size_, v6 + 56);
      v6 += 5;
      v4 = (v13 + 80);
      v13 = (v13 + 80);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

void sub_1B52A329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::map<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>>>>::__construct_node<std::pair<std::string const,std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>> const&>();
  }

  return v3;
}

uint64_t std::unordered_map<std::string,quasar::ContextualData::QueryConfig>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::ContextualData::QueryConfig> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::ContextualData::QueryConfig> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::ContextualData::QueryConfig>>>::__construct_node_hash<std::pair<std::string const,quasar::ContextualData::QueryConfig> const&>();
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

void sub_1B52A3780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B52A3848(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,double>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,double> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,double> const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__construct_node_hash<std::pair<std::string const,double> const&>();
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

void sub_1B52A3B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B52A3BE0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t quasar::PersonalizationRecipe::init(quasar::PersonalizationRecipe *this, quasar::SystemConfig *a2)
{
  __p[0] = quasar::SystemConfig::getConfigFileVersion(a2);
  quasar::result_handler::Range::Range(&v21, 87, 0);
  if (!quasar::SystemConfig::Version::operator<(__p, &v21))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "personalization-recipe.personalization-version");
    quasar::SystemConfig::hasParam(a2, __p);
  }

  if (quasar::gLogLevel >= 1)
  {
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
    v5 = 0u;
    v6 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Config Version is not high enough for personalization", 53);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  return 0;
}

void quasar::PersonalizationRecipe::registerParams(uint64_t a1, quasar::SystemConfig *this, const void **a3)
{
  quasar::SystemConfig::getPrefix(this, &v9);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v9.__r_.__value_.__l.__data_, a3, &__p);
  quasar::SystemConfig::setPrefix(this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "personalization-version");
  std::string::basic_string[abi:ne200100]<0>(v6, "The version of the categories data");
  quasar::SystemConfig::Register<int>(this, &__p.__r_.__value_.__l.__data_, a1, v6, 1, 87, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  quasar::SystemConfig::setPrefix(this, &v9);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1B52A3FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PersonalizationRecipe::registerCategory(uint64_t a1, quasar::SystemConfig *this, const void **a3, std::string::size_type a4)
{
  quasar::SystemConfig::getPrefix(this, &v39);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v39.__r_.__value_.__l.__data_, a3, &v36);
  v8 = std::string::append(&v36, ".");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = *(a4 + 23);
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  v13 = std::string::append(&v37, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".");
  v16 = *&v15->__r_.__value_.__l.__data_;
  *&v33[0] = *(&v15->__r_.__value_.__l + 2);
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::setPrefix(this, __p);
  if (SBYTE7(v33[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v34 = 0u;
  v35 = 0u;
  memset(v33, 0, sizeof(v33));
  *__p = 0u;
  v38.__r_.__value_.__r.__words[0] = a4;
  v17 = std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a4);
  v18 = v17;
  if (*(v17 + 79) < 0)
  {
    operator delete(*(v17 + 56));
  }

  *(v18 + 72) = *&v33[0];
  *(v18 + 56) = *__p;
  BYTE7(v33[0]) = 0;
  LOBYTE(__p[0]) = 0;
  if (*(v18 + 103) < 0)
  {
    operator delete(*(v18 + 80));
  }

  *(v18 + 80) = *(v33 + 8);
  *(v18 + 96) = *(&v33[1] + 1);
  *(v18 + 104) = 0;
  if (*(v18 + 135) < 0)
  {
    operator delete(*(v18 + 112));
  }

  *(v18 + 112) = *(&v33[2] + 8);
  *(v18 + 128) = *(&v33[3] + 1);
  if (*(v18 + 159) < 0)
  {
    operator delete(*(v18 + 136));
  }

  *(v18 + 136) = v34;
  v19 = *(v18 + 160);
  *(v18 + 152) = v35;
  *(v18 + 160) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chars-to-trim");
  v38.__r_.__value_.__r.__words[0] = a4;
  v20 = std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a4);
  std::string::basic_string[abi:ne200100]<0>(&v38, "The characters to be trimmed from the edges of the raw entity string");
  quasar::SystemConfig::Register<std::string>(this, __p, v20 + 56, &v38, 1, 88, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v33[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "chars-to-split");
  v38.__r_.__value_.__r.__words[0] = a4;
  v21 = std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a4);
  std::string::basic_string[abi:ne200100]<0>(&v38, "The characters used to split the raw entity string");
  quasar::SystemConfig::Register<std::string>(this, __p, v21 + 80, &v38, 1, 88, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v33[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "frequency");
  v38.__r_.__value_.__r.__words[0] = a4;
  v22 = std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a4);
  std::string::basic_string[abi:ne200100]<0>(&v38, "The relative frequency of the data");
  quasar::SystemConfig::Register<double>(this, __p, v22 + 104, &v38, 1, 88, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v33[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "template-name");
  v38.__r_.__value_.__r.__words[0] = a4;
  v23 = std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a4);
  std::string::basic_string[abi:ne200100]<0>(&v38, "The template name for LME");
  quasar::SystemConfig::Register<std::string>(this, __p, v23 + 112, &v38, 1, 88, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v33[0]) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "tag-name");
  v38.__r_.__value_.__r.__words[0] = a4;
  v24 = std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, a4);
  std::string::basic_string[abi:ne200100]<0>(&v38, "The tag name for LME (also important for enumerations)");
  quasar::SystemConfig::Register<std::string>(this, __p, v24 + 136, &v38, 1, 88, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v33[0]) < 0)
  {
    operator delete(__p[0]);
  }

  quasar::SystemConfig::setPrefix(this, &v39);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v39.__r_.__value_.__l.__data_, a3, &v37);
  v25 = std::string::append(&v37, ".");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = *(a4 + 23);
  if (v27 >= 0)
  {
    v28 = a4;
  }

  else
  {
    v28 = *a4;
  }

  if (v27 >= 0)
  {
    v29 = *(a4 + 23);
  }

  else
  {
    v29 = *(a4 + 8);
  }

  v30 = std::string::append(&v38, v28, v29);
  v31 = *&v30->__r_.__value_.__l.__data_;
  *&v33[0] = *(&v30->__r_.__value_.__l + 2);
  *__p = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::readPtree(this, __p);
}

void sub_1B52A4894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  if (*(v34 - 65) < 0)
  {
    operator delete(*(v34 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,quasar::PTree>::~pair(uint64_t a1)
{
  quasar::PTree::~PTree((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void quasar::PersonalizationRecipe::getPersonalizedData(uint64_t a1@<X0>, const void ***a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v3 = *a2;
  v17 = a2 + 1;
  if (*a2 != (a2 + 1))
  {
    v16 = a1 + 16;
    do
    {
      if (v16 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 8, v3 + 4))
      {
        if (quasar::gLogLevel >= 4)
        {
          memset(v19, 0, 272);
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Category ", 9);
          v10 = *(v3 + 55);
          if (v10 >= 0)
          {
            v11 = (v3 + 4);
          }

          else
          {
            v11 = v3[4];
          }

          if (v10 >= 0)
          {
            v12 = *(v3 + 55);
          }

          else
          {
            v12 = v3[5];
          }

          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " not supported", 14);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v19);
        }
      }

      else
      {
        v19[0].__locale_ = (v3 + 4);
        v4 = std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 8, v3 + 4);
        v5 = v3[7];
        if (v5 != v3 + 8)
        {
          do
          {
            if ((*(v5 + 55) & 0x8000000000000000) != 0)
            {
              if (v5[5])
              {
LABEL_9:
                quasar::trimUnicodeCharSet((v5 + 4), (v4 + 56));
              }
            }

            else if (*(v5 + 55))
            {
              goto LABEL_9;
            }

            v6 = v5[1];
            if (v6)
            {
              do
              {
                v7 = v6;
                v6 = *v6;
              }

              while (v6);
            }

            else
            {
              do
              {
                v7 = v5[2];
                v8 = *v7 == v5;
                v5 = v7;
              }

              while (!v8);
            }

            v5 = v7;
          }

          while (v7 != v3 + 8);
        }
      }

      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v8 = *v15 == v3;
          v3 = v15;
        }

        while (!v8);
      }

      v3 = v15;
    }

    while (v15 != v17);
  }
}

void sub_1B52A5088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<quasar::PersonalizationRecipe>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<quasar::PersonalizationRecipe>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 55) < 0)
    {
      operator delete(*(v2 + 32));
    }

    std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::destroy(v2 + 8, *(v2 + 16));
    MEMORY[0x1B8C85350](v2, 0x1032C4046D359D3);
  }

  return a1;
}

void sub_1B52A52A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(a10, *(a10 + 8));
  quasar::PTree::~PTree(&a29);
  _Unwind_Resume(a1);
}

void quasar::PersonalizationRecipe::Category::~Category(quasar::PersonalizationRecipe::Category *this)
{
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
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

uint64_t std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B52A54F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,quasar::PersonalizationRecipe::Category>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 20);
    *(__p + 20) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (__p[159] < 0)
    {
      operator delete(*(__p + 17));
    }

    if (__p[135] < 0)
    {
      operator delete(*(__p + 14));
    }

    if (__p[103] < 0)
    {
      operator delete(*(__p + 10));
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::Word>::__emplace_back_slow_path<std::string &,std::string const&,int &,std::set<std::string> &>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  v19 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>>(a1, v9);
  }

  v16 = 0;
  v17 = 80 * v5;
  std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string const&,int &,std::set<std::string> &>(a1, 80 * v5, a2, a3, a4, a5);
  v18 = 80 * v5 + 80;
  v10 = a1[1];
  v11 = 80 * v5 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::LmeDataFactoryBase::Word>,quasar::LmeDataFactoryBase::Word*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(&v16);
  return v15;
}

void sub_1B52A5720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::LmeDataFactoryBase::Word>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::LmeDataFactoryBase::Word>::construct[abi:ne200100]<quasar::LmeDataFactoryBase::Word,std::string &,std::string const&,int &,std::set<std::string> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a3, *(a3 + 8));
  }

  else
  {
    v11 = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  quasar::LmeDataFactoryBase::Word::Word(a2, &v11, &__p, *a5, a6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B52A57F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_1B52A5960(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::CoreMLInferenceNet::CoreMLInferenceNet(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  *a1 = &unk_1F2D0ABB0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v7;
  }

  *(a1 + 32) = 0u;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  v8 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = a3;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "CoreMLInferenceNet: On-Device ASR: (ANE) Eager Loading and keepANEModelLoaded: ", 79);
    MEMORY[0x1B8C84BD0](v9, a3);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v13);
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a3)
  {
LABEL_10:
    kaldi::CoreMLInferenceNet::LoadModel(a1);
  }

LABEL_11:
  v10 = objc_alloc_init(MEMORY[0x1E695FF00]);
  v11 = *(a1 + 32);
  *(a1 + 32) = v10;

  return a1;
}

void kaldi::CoreMLInferenceNet::LoadModel(kaldi::CoreMLInferenceNet *this)
{
  if (!*(this + 5))
  {
    v2 = this + 8;
    if (*(this + 31) < 0)
    {
      v2 = *(this + 1);
    }

    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
    v4 = [v3 stringByStandardizingPath];

    v28 = v4;
    v5 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:objc_msgSend(v4 isDirectory:"fileSystemRepresentation") relativeToURL:{1, 0}];
    v6 = *(this + 8);
    if (v6)
    {
      (*(*v6 + 16))(v6, this + 8);
    }

    v30[0] = 0;
    v7 = [MEMORY[0x1E695FE98] modelWithContentsOfURL:v5 error:{v30, v5}];
    v8 = v30[0];
    v9 = *(this + 5);
    *(this + 5) = v7;

    v10 = *(this + 8);
    if (v10)
    {
      (*(*v10 + 24))(v10, this + 8);
      atomic_store(1u, (*(this + 8) + 8));
    }

    v11 = *(this + 5);
    if (!v11)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Could not load ", 15);
      v24 = [v8 description];
      v25 = [v24 UTF8String];
      v26 = strlen(v25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
    }

    v12 = [v11 modelDescription];
    v13 = [v12 inputDescriptionsByName];
    v14 = [v13 objectForKeyedSubscript:@"input1"];

    v15 = [v14 multiArrayConstraint];
    v16 = [v15 shape];
    v17 = [v16 objectAtIndexedSubscript:0];
    *(this + 12) = [v17 intValue];

    v18 = [v12 outputDescriptionsByName];
    v19 = [v18 objectForKeyedSubscript:@"output1"];

    v20 = [v19 multiArrayConstraint];
    v21 = [v20 shape];
    v22 = [v21 objectAtIndexedSubscript:0];
    *(this + 13) = [v22 intValue];
  }
}

void kaldi::CoreMLInferenceNet::~CoreMLInferenceNet(kaldi::CoreMLInferenceNet *this)
{
  *this = &unk_1F2D0ABB0;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::CoreMLInferenceNet::~CoreMLInferenceNet(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::CoreMLInferenceNet::ClearTemporaryBuffers(kaldi::CoreMLInferenceNet *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    v2 = *(this + 5);
    *(this + 5) = 0;

    v3 = *(this + 8);
    if (v3)
    {
      atomic_store(0, (v3 + 8));
    }
  }
}

void kaldi::CoreMLInferenceNet::FeedforwardGeneric<kaldi::CuMatrixBase<float>,kaldi::CuMatrix<float>>(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  v51[1] = *MEMORY[0x1E69E9840];
  kaldi::CoreMLInferenceNet::LoadModel(a1);
  v6 = kaldi::MLMultiArrayFromCu(a2);
  v7 = objc_alloc(MEMORY[0x1E695FE40]);
  v50 = @"input1";
  v51[0] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  v49 = 0;
  v9 = [v7 initWithDictionary:v8 error:&v49];
  v10 = v49;

  if (!v9)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "could not make features: ", 25);
    v30 = [v10 description];
    v31 = v30;
    v32 = [v30 UTF8String];
    v33 = strlen(v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v32, v33);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v48);
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v47 = v10;
  v13 = [v11 predictionFromFeatures:v9 options:v12 error:&v47];
  v14 = v47;

  if (!v13)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "CoreML prediction failed, falling back to CPU inference", 55);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v48);
    }

    v15 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v15 = *v15;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
    v17 = [v16 stringByStandardizingPath];

    v18 = MEMORY[0x1E695DFF8];
    v19 = v17;
    v20 = [v18 fileURLWithFileSystemRepresentation:objc_msgSend(v17 isDirectory:"fileSystemRepresentation") relativeToURL:{1, 0}];
    v46 = v14;
    v21 = [MEMORY[0x1E695FE98] modelWithContentsOfURL:v20 error:&v46];
    v22 = v46;

    v23 = *(a1 + 40);
    *(a1 + 40) = v21;

    [*(a1 + 32) setUsesCPUOnly:1];
    v25 = *(a1 + 32);
    v24 = *(a1 + 40);
    v45 = v22;
    v13 = [v24 predictionFromFeatures:v9 options:v25 error:&v45];
    v14 = v45;

    if (!v13)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "could not predict: ", 19);
      v41 = [v14 description];
      v42 = v41;
      v43 = [v41 UTF8String];
      v44 = strlen(v43);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v43, v44);

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v48);
    }
  }

  v26 = [v13 featureValueForName:@"output1"];
  v27 = [v26 multiArrayValue];

  if (!v27)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "No output from CoreML: ", 23);
    v35 = [v13 featureNames];
    v36 = [v35 description];
    v37 = v36;
    v38 = [v36 UTF8String];
    v39 = strlen(v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v38, v39);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v48);
  }

  v28 = objc_autoreleasePoolPush();
  kaldi::MLMultiArrayToCu(v27, a3);
  objc_autoreleasePoolPop(v28);
}

void sub_1B52A643C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::CoreMLInferenceNet::FeedforwardGeneric<kaldi::CuVectorBase<float>,kaldi::CuVector<float>>(uint64_t a1, uint64_t a2, void *a3)
{
  v84[1] = *MEMORY[0x1E69E9840];
  kaldi::CoreMLInferenceNet::LoadModel(a1);
  v6 = objc_alloc(MEMORY[0x1E695FEC8]);
  v7 = *(a2 + 8);
  v8 = [MEMORY[0x1E696AD98] numberWithInt:*(a2 + 16)];
  v84[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  v78 = 0;
  v73 = [v6 initWithDataPointer:v7 shape:v9 dataType:65568 strides:&unk_1F2D54398 deallocator:&__block_literal_global_30 error:&v78];
  v10 = v78;

  if (!v73)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "Could not make multiarray from vector ", 38);
    v43 = [v10 description];
    v44 = v43;
    v45 = [v43 UTF8String];
    v46 = strlen(v45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v45, v46);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v79);
  }

  v11 = objc_alloc(MEMORY[0x1E695FE40]);
  v82 = @"input1";
  v83 = v73;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v77 = 0;
  v13 = [v11 initWithDictionary:v12 error:&v77];
  v14 = v77;

  if (!v13)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "could not make features: ", 25);
    v48 = [v14 description];
    v49 = v48;
    v50 = [v48 UTF8String];
    v51 = strlen(v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v50, v51);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v79);
  }

  v16 = *(a1 + 32);
  v15 = *(a1 + 40);
  v76 = v14;
  v17 = [v15 predictionFromFeatures:v13 options:v16 error:&v76];
  v18 = v76;

  if (!v17)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "CoreML prediction failed, falling back to CPU inference", 55);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v79);
    }

    v19 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v19 = *v19;
    }

    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
    v21 = [v20 stringByStandardizingPath];

    v22 = MEMORY[0x1E695DFF8];
    v23 = v21;
    v24 = [v22 fileURLWithFileSystemRepresentation:objc_msgSend(v21 isDirectory:"fileSystemRepresentation") relativeToURL:{1, 0}];
    v75 = v18;
    v25 = [MEMORY[0x1E695FE98] modelWithContentsOfURL:v24 error:&v75];
    v26 = v75;

    v27 = *(a1 + 40);
    *(a1 + 40) = v25;

    [*(a1 + 32) setUsesCPUOnly:1];
    v29 = *(a1 + 32);
    v28 = *(a1 + 40);
    v74 = v26;
    v17 = [v28 predictionFromFeatures:v13 options:v29 error:&v74];
    v18 = v74;

    if (!v17)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "could not predict: ", 19);
      v69 = [v18 description];
      v70 = v69;
      v71 = [v69 UTF8String];
      v72 = strlen(v71);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v71, v72);

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v79);
    }
  }

  v30 = [v17 featureValueForName:@"output1"];
  v31 = [v30 multiArrayValue];

  if (!v31)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
    v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "No output from CoreML: ", 23);
    v53 = [v17 featureNames];
    v54 = [v53 description];
    v55 = v54;
    v56 = [v54 UTF8String];
    v57 = strlen(v56);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v56, v57);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v79);
  }

  v32 = objc_autoreleasePoolPush();
  v33 = v31;
  v34 = [v33 shape];
  if ([v34 count] != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "Non-vector shape output from CoreML: ", 37);
    v59 = [v34 description];
    v60 = v59;
    v61 = [v59 UTF8String];
    v62 = strlen(v61);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v61, v62);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v79);
  }

  v35 = [v34 objectAtIndexedSubscript:0];
  v36 = [v35 intValue];

  v37 = [v33 dataType];
  if (v37 == 65568)
  {
    v40 = v33;
    v41 = [v33 dataPointer];
    v81 = 0;
    v79 = v41;
    v80 = v36;
    kaldi::CuVector<float>::Resize(a3, v36, 1);
    kaldi::CuVectorBase<float>::CopyFromVec<float>(a3, &v79);
  }

  else
  {
    if (v37 != 65600)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v79);
      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v79, "Unexpected output from CoreML: ", 31);
      v64 = [v33 description];
      v65 = v64;
      v66 = [v64 UTF8String];
      v67 = strlen(v66);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v66, v67);

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v79);
    }

    kaldi::CuVector<float>::Resize(a3, v36, 0);
    v38 = v33;
    v39 = [v33 dataPointer];
    v81 = 0;
    v79 = v39;
    v80 = v36;
    kaldi::CuVectorBase<float>::CopyFromVec<double>(a3, &v79);
  }

  objc_autoreleasePoolPop(v32);
}

void sub_1B52A6BB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::CoreMLInferenceNet::MultiIOFeedforwardSimple(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  v54[2] = *MEMORY[0x1E69E9840];
  kaldi::CoreMLInferenceNet::LoadModel(a1);
  v8 = kaldi::MLMultiArrayFromCu(a2);
  if (*(a3 + 8) - *a3 != 8)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "in_extras.size() == 1", 21);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  v9 = kaldi::MLMultiArrayFromCu(**a3);
  v10 = objc_alloc(MEMORY[0x1E695FE40]);
  v53[0] = @"input1";
  v53[1] = @"input2";
  v54[0] = v8;
  v54[1] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v51 = 0;
  v12 = [v10 initWithDictionary:v11 error:&v51];
  v13 = v51;

  if (!v12)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "could not make features: ", 25);
    v33 = [v13 description];
    v34 = v33;
    v35 = [v33 UTF8String];
    v36 = strlen(v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v35, v36);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v50 = v13;
  v16 = [v14 predictionFromFeatures:v12 options:v15 error:&v50];
  v17 = v50;

  if (!v16)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "CoreML prediction failed, falling back to CPU inference", 55);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v52);
    }

    v18 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v18 = *v18;
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
    v20 = [v19 stringByStandardizingPath];

    v21 = MEMORY[0x1E695DFF8];
    v22 = v20;
    v23 = [v21 fileURLWithFileSystemRepresentation:objc_msgSend(v20 isDirectory:"fileSystemRepresentation") relativeToURL:{1, 0}];
    v49 = v17;
    v24 = [MEMORY[0x1E695FE98] modelWithContentsOfURL:v23 error:&v49];
    v25 = v49;

    v26 = *(a1 + 40);
    *(a1 + 40) = v24;

    [*(a1 + 32) setUsesCPUOnly:1];
    v28 = *(a1 + 32);
    v27 = *(a1 + 40);
    v48 = v25;
    v16 = [v27 predictionFromFeatures:v12 options:v28 error:&v48];
    v17 = v48;

    if (!v16)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "could not predict: ", 19);
      v44 = [v17 description];
      v45 = v44;
      v46 = [v44 UTF8String];
      v47 = strlen(v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v46, v47);

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
    }
  }

  v29 = [v16 featureValueForName:@"output1"];
  v30 = [v29 multiArrayValue];

  if (!v30)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "No output from CoreML: ", 23);
    v38 = [v16 featureNames];
    v39 = [v38 description];
    v40 = v39;
    v41 = [v39 UTF8String];
    v42 = strlen(v41);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v41, v42);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v52);
  }

  v31 = objc_autoreleasePoolPush();
  kaldi::MLMultiArrayToCu(v30, a4);
  objc_autoreleasePoolPop(v31);
}

void sub_1B52A71D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

id kaldi::MLMultiArrayFromCu(uint64_t a1)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695FEC8]);
  v3 = *(a1 + 8);
  v20[0] = &unk_1F2D54170;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 20)];
  v20[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 16)];
  v20[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  v19[0] = &unk_1F2D54170;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 24)];
  v19[1] = v7;
  v19[2] = &unk_1F2D54170;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v18 = 0;
  v9 = [v2 initWithDataPointer:v3 shape:v6 dataType:65568 strides:v8 deallocator:&__block_literal_global_0 error:&v18];
  v10 = v18;

  if (!v9)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not make multiarray from matrix ", 38);
    v13 = [v10 description];
    v14 = v13;
    v15 = [v13 UTF8String];
    v16 = strlen(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v15, v16);

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  return v9;
}

void sub_1B52A7404(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MLMultiArrayToCu(void *a1, int32x2_t *a2)
{
  v3 = a1;
  v4 = [v3 shape];
  v5 = [v3 strides];
  v6 = [v4 count];
  if (v6 == 2)
  {
    v11 = [v4 objectAtIndexedSubscript:0];
    v9 = [v11 intValue];

    v12 = [v4 objectAtIndexedSubscript:1];
    v8 = [v12 intValue];

    v7 = [v5 objectAtIndexedSubscript:0];
    v10 = [v7 longValue];
  }

  else
  {
    if (v6 != 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unexpected output shape from CoreML: ", 37);
      v15 = [v4 description];
      v16 = [v15 UTF8String];
      v17 = strlen(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
    }

    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v7 intValue];
    v9 = 1;
    v10 = v8;
  }

  v13 = [v3 dataType];
  if (v13 == 65600)
  {
    kaldi::SubMatrix<float>::SubMatrix(v22, [v3 dataPointer], v9, v8, v10);
    kaldi::CuMatrix<float>::Resize(a2, v9, v8, 0, 0);
    kaldi::CuMatrixBase<float>::CopyFromMat<double>(a2, v22, 111);
    quasar::Bitmap::~Bitmap(v22);
  }

  else
  {
    if (v13 != 65568)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unexpected output from CoreML: ", 31);
      v19 = [v3 description];
      v20 = [v19 UTF8String];
      v21 = strlen(v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
    }

    kaldi::SubMatrix<float>::SubMatrix(v22, [v3 dataPointer], v9, v8, v10);
    kaldi::CuMatrix<float>::operator=(a2, v22);
    quasar::Bitmap::~Bitmap(v22);
  }
}

void *std::__shared_ptr_emplace<kaldi::CoreMLInferenceNet>::__shared_ptr_emplace[abi:ne200100]<std::string const&,BOOL &,std::shared_ptr<kaldi::ModelInitializeContext> &,std::allocator<kaldi::CoreMLInferenceNet>,0>(void *a1, __int128 *a2, unsigned __int8 *a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0AC78;
  std::allocator<kaldi::CoreMLInferenceNet>::construct[abi:ne200100]<kaldi::CoreMLInferenceNet,std::string const&,BOOL &,std::shared_ptr<kaldi::ModelInitializeContext> &>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::CoreMLInferenceNet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0AC78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<kaldi::CoreMLInferenceNet>::construct[abi:ne200100]<kaldi::CoreMLInferenceNet,std::string const&,BOOL &,std::shared_ptr<kaldi::ModelInitializeContext> &>(uint64_t a1, uint64_t a2, __int128 *a3, unsigned __int8 *a4, void *a5)
{
  v6 = *a4;
  v7 = a5[1];
  v8[0] = *a5;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  kaldi::CoreMLInferenceNet::CoreMLInferenceNet(a2, a3, v6, v8);
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B52A7A60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::DummyConfig::DummyConfig(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0x3F80000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *a1 = &unk_1F2D0ACC8;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  quasar::LmBuildConfig::readSysConfig(a1, a2, a3);
}

void sub_1B52A7C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v22 + 143) < 0)
  {
    operator delete(*v23);
  }

  quasar::LmBuildConfig::~LmBuildConfig(v22);
  _Unwind_Resume(a1);
}

void quasar::FstLmHandle::~FstLmHandle(quasar::FstLmHandle *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  v4 = *(this + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  quasar::ModelLoader::~ModelLoader((this + 8));
}

void quasar::DummyLmModel::DummyLmModel(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v4 = *a4;
  *(a1 + 936) = &unk_1F2D0AF10;
  *(a1 + 944) = 0;
  *(a1 + 948) = v4;
  *(a1 + 952) = 1065353216;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::FstLmHandle::FstLmHandle(a1, &off_1F2D0ADA0, &v6, 0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  operator new();
}

void sub_1B52A7F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  quasar::FstLmHandle::~FstLmHandle(v16, &off_1F2D0ADA0);
  _Unwind_Resume(a1);
}

uint64_t quasar::DummyLmModel::DummyLmModel(uint64_t a1, uint64_t *a2)
{
  v4 = *a2 + *(**a2 - 24);
  *(a1 + 936) = &unk_1F2D0AF10;
  v5 = *(v4 + 8);
  *(a1 + 952) = *(v4 + 16);
  *(a1 + 944) = v5;
  v6 = quasar::FstLmHandle::FstLmHandle(a1, &off_1F2D0ADA0, a2);
  v7 = a2[1];
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::LmModel2::LmModel2(v6 + 656, off_1F2D0ADB0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *a1 = &unk_1F2D0ACF8;
  *(a1 + 936) = &unk_1F2D0AD80;
  *(a1 + 656) = &unk_1F2D0AD38;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0;
  return a1;
}

void sub_1B52A818C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  quasar::FstLmHandle::~FstLmHandle(v10, &off_1F2D0ADA0);
  _Unwind_Resume(a1);
}

uint64_t quasar::DummyLmModel::writeImpl(uint64_t a1, const void **a2)
{
  v19[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = &v16;
  std::string::basic_string[abi:ne200100](&v16, v4 + 1);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v16.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 47;
  v7 = *(a1 + 919);
  if (v7 >= 0)
  {
    v8 = (a1 + 896);
  }

  else
  {
    v8 = *(a1 + 896);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 919);
  }

  else
  {
    v9 = *(a1 + 904);
  }

  v10 = std::string::append(&v16, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::ofstream::basic_ofstream(&v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v12 = *(a1 + 920);
  std::string::basic_string[abi:ne200100]<0>(&v16, "");
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  v15 = 16777217;
  (*(*v12 + 96))(v12, &v17, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x1E69E54D0];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1B8C84A00](&v18);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](v19);
  return 1;
}

void sub_1B52A8464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a23, MEMORY[0x1E69E54D0]);
  MEMORY[0x1B8C85200](&a72);
  _Unwind_Resume(a1);
}

void sub_1B52A8590(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::PTree::~PTree(va);
  if (*(v3 - 17) < 0)
  {
    operator delete(*(v3 - 40));
  }

  quasar::PTree::~PTree(v2);
  _Unwind_Resume(a1);
}

void quasar::trainDummyModel(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  quasar::ModelLoader::ModelLoader(v8);
  quasar::ModelLoader::readFstNetwork(v8, *a1 + 120, &v7);
  quasar::filesystem::Path::Path(v2, *a1 + 120);
  quasar::filesystem::Path::filename(v2, v4);
  kaldi::quasar::Vocab::OOvWord(v4, &v6);
  v4[0] = &unk_1F2CFAA28;
  if (v5 < 0)
  {
    operator delete(v4[1]);
  }

  v2[0] = &unk_1F2CFAA28;
  if (v3 < 0)
  {
    operator delete(v2[1]);
  }

  operator new();
}

void sub_1B52A876C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  (*(*v31 + 16))(v31);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  quasar::ModelLoader::~ModelLoader(&a31);
  _Unwind_Resume(a1);
}

void sub_1B52A8AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  MEMORY[0x1B8C85350](v30, 0x10B3C4048B1336ELL);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::DummyConfig::~DummyConfig(void **this)
{
  *this = &unk_1F2D0ACC8;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);
}

{
  *this = &unk_1F2D0ACC8;
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  quasar::LmBuildConfig::~LmBuildConfig(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::FstLmHandle::~FstLmHandle(quasar::FstLmHandle *this)
{
  *this = &unk_1F2D0E0E0;
  *(this + 82) = &unk_1F2D0E118;
  v2 = *(this + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  quasar::ModelLoader::~ModelLoader((this + 8));
}

{
  *this = &unk_1F2D0E0E0;
  *(this + 82) = &unk_1F2D0E118;
  v2 = *(this + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  quasar::ModelLoader::~ModelLoader((this + 8));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::FstLmHandle::~FstLmHandle(quasar::FstLmHandle *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D0E0E0;
  v1[82] = &unk_1F2D0E118;
  v2 = v1[80];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  quasar::ModelLoader::~ModelLoader((v1 + 1));
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_1F2D0E0E0;
  v1[82] = &unk_1F2D0E118;
  v2 = v1[80];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  quasar::ModelLoader::~ModelLoader((v1 + 1));

  JUMPOUT(0x1B8C85350);
}

void quasar::DummyLmModel::~DummyLmModel(quasar::DummyLmModel *this)
{
}

{

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toquasar::DummyLmModel::~DummyLmModel(quasar::DummyLmModel *this)
{
}

{

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::DummyLmModel::~DummyLmModel(quasar::DummyLmModel *this)
{
}

{

  JUMPOUT(0x1B8C85350);
}

void quasar::DummyLmModel::~DummyLmModel(quasar::DummyLmModel *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 82) = a2[6];
  v5 = *(this + 116);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (*(this + 919) < 0)
  {
    operator delete(*(this + 112));
  }

  quasar::LmModel2::~LmModel2((this + 656), a2 + 3);
  v6 = a2[1];
  *this = v6;
  *(this + *(v6 - 24)) = a2[2];
  v7 = *(this + 80);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  quasar::ModelLoader::~ModelLoader((this + 8));
}

void *std::shared_ptr<kaldi::quasar::LmHandle>::shared_ptr[abi:ne200100]<quasar::FstLmHandle,std::default_delete<quasar::FstLmHandle>,0>(void *result, void *a2)
{
  if (*a2)
  {
    *result = *a2 + *(**a2 - 24);
    operator new();
  }

  *result = 0;
  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::FstLmHandle  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::FstLmHandle  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::FstLmHandle  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<quasar::DummyLmModel  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::DummyLmModel  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::DummyLmModel  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double kaldi::nnet1::FixedAttentionComponent::FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this, int a2, int a3)
{
  *(this + 46) = a2;
  *(this + 47) = a3;
  *(this + 96) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 28) = &unk_1F2D279F8;
  *(this + 232) = xmmword_1B5AE0070;
  *(this + 62) = -1082130432;
  *(this + 252) = 0x100000003;
  *(this + 130) = 0;
  *(this + 262) = 0;
  *(this + 1) = -1;
  *this = &unk_1F2D0B000;
  *(this + 22) = &unk_1F2D0B208;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 2) = 0;
  *(this + 3) = &unk_1F2D0EE38;
  *(this + 64) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = &unk_1F2D0EE38;
  *(this + 112) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = &unk_1F2D0EE38;
  *(this + 160) = 0;
  *(this + 168) = 0;
  return result;
}

kaldi::nnet1::FixedAttentionComponent *kaldi::nnet1::FixedAttentionComponent::FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this, int32x2_t *a2)
{
  *(this + 23) = *(&a2[1] + *(*a2 - 24));
  *(this + 96) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 28) = &unk_1F2D279F8;
  *(this + 232) = xmmword_1B5AE0070;
  *(this + 62) = -1082130432;
  *(this + 252) = 0x100000003;
  *(this + 130) = 0;
  *(this + 262) = 0;
  *(this + 1) = -1;
  *this = &unk_1F2D0B000;
  *(this + 22) = &unk_1F2D0B208;
  v4 = (this + 24);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = &unk_1F2D0EE38;
  *(this + 64) = 0;
  v5 = (this + 72);
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = &unk_1F2D0EE38;
  *(this + 112) = 0;
  v6 = (this + 120);
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = &unk_1F2D0EE38;
  *(this + 160) = 0;
  v7 = a2[2];
  *(this + 1) = a2[1];
  *(this + 2) = (*(**&v7 + 16))(v7);
  kaldi::CuMatrix<float>::operator=(v4, a2 + 3);
  kaldi::CuMatrix<float>::operator=(v5, a2 + 9);
  kaldi::CuMatrix<float>::operator=(v6, a2 + 15);
  *(this + 168) = a2[21].i8[0];
  return this;
}

void sub_1B52A96E4(_Unwind_Exception *a1)
{
  kaldi::CuMatrix<float>::~CuMatrix(v5);
  kaldi::CuMatrix<float>::~CuMatrix(v4);
  kaldi::CuMatrix<float>::~CuMatrix(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 2) = 0;
  kaldi::CuMatrix<float>::~CuMatrix(this + 120);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);

  quasar::Bitmap::~Bitmap(this);
}

void kaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 176));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 176));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent(kaldi::nnet1::FixedAttentionComponent *this)
{
  v2 = (v1 + 176);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::FixedAttentionComponent::~FixedAttentionComponent((this + *(*this - 24)));
}

void kaldi::nnet1::FixedAttentionComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v35 = 0;
  v36 = 0uLL;
  v4 = a2 + 4;
  v5 = a1 + 12;
  v6 = a1 + 8;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, 0, &v35);
    if (SHIBYTE(v36) < 0)
    {
      if (v36 != 15)
      {
        if (v36 != 22)
        {
          goto LABEL_35;
        }

        v10 = *v35 == 0x53656372756F533CLL && v35[1] == 0x656D694465746174;
        v11 = v10 && *(v35 + 14) == 0x3E6E6F69736E656DLL;
        v9 = v6;
        if (!v11)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }

      v12 = v35;
    }

    else
    {
      if (HIBYTE(v36) != 15)
      {
        if (HIBYTE(v36) != 22)
        {
          goto LABEL_33;
        }

        v8 = v35 == 0x53656372756F533CLL && v36 == 0x656D694465746174 && *(&v36 + 6) == 0x3E6E6F69736E656DLL;
        v9 = v6;
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_31;
      }

      v12 = &v35;
    }

    v13 = *v12;
    v14 = *(v12 + 7);
    v15 = v13 == 0x6574744178614D3CLL && v14 == 0x3E736E6F69746E65;
    v9 = v5;
    if (!v15)
    {
      if ((HIBYTE(v36) & 0x80) != 0)
      {
LABEL_35:
        if (v36 == 12)
        {
          v16 = v35;
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        if (HIBYTE(v36) == 12)
        {
          v16 = &v35;
LABEL_37:
          v17 = *v16;
          v18 = *(v16 + 2);
          if (v17 == 0x6E6F706D6F432F3CLL && v18 == 1047817829)
          {
LABEL_42:
            v20 = *(a1 + 16);
            if (v20)
            {
              (*(*v20 + 8))(v20);
            }

            v32 = 0;
            v33 = 0;
            v34 = 0;
            kaldi::ReadToken(a2, 0, &v32);
            v21 = kaldi::nnet1::Component::MarkerToComponentType(&v32);
            v31 = 0;
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(v30, 3);
              v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Initializing component of type ", 31);
              if (v34 >= 0)
              {
                v23 = &v32;
              }

              else
              {
                v23 = v32;
              }

              if (v34 >= 0)
              {
                v24 = HIBYTE(v34);
              }

              else
              {
                v24 = v33;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(v30);
            }

            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v31 + 4);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v31);
            kaldi::nnet1::Component::NewComponentOfType(v21);
          }
        }
      }

LABEL_53:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Unknown token ", 14);
      if (v36 >= 0)
      {
        v26 = &v35;
      }

      else
      {
        v26 = v35;
      }

      if (v36 >= 0)
      {
        v27 = HIBYTE(v36);
      }

      else
      {
        v27 = v36;
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " (SourceStateDimension|MaxAttentions)", 37);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, 0, v9);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void *kaldi::nnet1::FixedAttentionComponent::Check(void *this)
{
  if ((this[21] & 1) == 0)
  {
    v1 = this;
    v2 = this[2];
    if (!v2)
    {
      goto LABEL_5;
    }

    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "this is a non-recurrent version, cannot have a recurrent internal component");
      goto LABEL_16;
    }

    if (this)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "no recursive inclusion");
    }

    else
    {
LABEL_5:
      v3 = *(v1 + 12);
      if (v3 < 1 || (v4 = *(v1 + 8), v4 <= 0))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "component is not initialized, max attention is ", 47);
        v7 = MEMORY[0x1B8C84C00](v6, *(v1 + 12));
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", source state dimension is ", 28);
        MEMORY[0x1B8C84C00](v8, *(v1 + 8));
      }

      else
      {
        v5 = v1 + *(*v1 - 24);
        if (*(v5 + 8) + v4 * v3 == v2[2])
        {
          if (*(v5 + 12) == v2[3])
          {
            *(v1 + 168) = 1;
            return this;
          }

          kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "the output dim of attention component is ", 41);
          v17 = MEMORY[0x1B8C84C00](v16, *(v1 + *(*v1 - 24) + 12));
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " , however, the internal training component has output dim ", 59);
          MEMORY[0x1B8C84C00](v18, *(*(v1 + 16) + 12));
        }

        else
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "component has input dim ", 24);
          v10 = MEMORY[0x1B8C84C00](v9, *(v1 + *(*v1 - 24) + 8));
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", attentions ", 13);
          v12 = MEMORY[0x1B8C84C00](v11, *(v1 + 12));
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", source state dimension ", 25);
          v14 = MEMORY[0x1B8C84C00](v13, *(v1 + 8));
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", however, the internal training component has input dim ", 57);
          MEMORY[0x1B8C84C00](v15, *(*(v1 + 16) + 8));
        }
      }
    }

LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  return this;
}

void kaldi::nnet1::FixedAttentionComponent::ReadData(void *a1, uint64_t *a2, int a3)
{
  v27 = 0;
  v28 = 0uLL;
  v6 = a1 + 12;
  v7 = a1 + 1;
  while (1)
  {
    if (kaldi::Peek(a2, a3) != 60)
    {
      goto LABEL_42;
    }

    kaldi::ReadToken(a2, a3, &v27);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      break;
    }

    if (v28 == 15)
    {
      v13 = v27;
      goto LABEL_26;
    }

    if (v28 != 22)
    {
      goto LABEL_35;
    }

    v11 = *v27 == 0x53656372756F533CLL && v27[1] == 0x656D694465746174;
    v12 = v11 && *(v27 + 14) == 0x3E6E6F69736E656DLL;
    v10 = v7;
    if (!v12)
    {
      goto LABEL_35;
    }

LABEL_31:
    kaldi::ReadBasicType<int>(a2, a3, v10);
  }

  if (HIBYTE(v28) != 15)
  {
    if (HIBYTE(v28) != 22)
    {
      goto LABEL_33;
    }

    v9 = v27 == 0x53656372756F533CLL && v28 == 0x656D694465746174 && *(&v28 + 6) == 0x3E6E6F69736E656DLL;
    v10 = v7;
    if (!v9)
    {
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  v13 = &v27;
LABEL_26:
  v14 = *v13;
  v15 = *(v13 + 7);
  v16 = v14 == 0x6574744178614D3CLL && v15 == 0x3E736E6F69746E65;
  v10 = v6;
  if (v16)
  {
    goto LABEL_31;
  }

  if ((HIBYTE(v28) & 0x80) == 0)
  {
LABEL_33:
    if (HIBYTE(v28) == 12)
    {
      v17 = &v27;
      goto LABEL_37;
    }

    goto LABEL_49;
  }

LABEL_35:
  if (v28 != 12)
  {
    goto LABEL_49;
  }

  v17 = v27;
LABEL_37:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 0x6E6F706D6F432F3CLL || v19 != 1047817829)
  {
LABEL_49:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Unrecognized token ", 19);
    if (v28 >= 0)
    {
      v24 = &v27;
    }

    else
    {
      v24 = v27;
    }

    if (v28 >= 0)
    {
      v25 = HIBYTE(v28);
    }

    else
    {
      v25 = v28;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

LABEL_42:
  v21 = a1[2];
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = kaldi::nnet1::Component::Read(a2, a3);
  if (v22)
  {
  }

  a1[2] = v22;
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }
}

void sub_1B52AA390(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  kaldi::WriteToken(a2, a3, "<MaxAttentions>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 12));
  kaldi::WriteToken(a2, a3, "</Component>");
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  kaldi::nnet1::Component::TypeToMarker(v6, &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, *(*(a1 + 16) + 12));
  return kaldi::WriteBasicType<int>(a2, a3, *(*(a1 + 16) + 8));
}

void sub_1B52AA4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::WriteData(void **a1)
{
  ((*a1)[12])(a1);
  v2 = *(*a1[2] + 104);

  return v2();
}

uint64_t virtual thunk tokaldi::nnet1::FixedAttentionComponent::WriteData(void *a1)
{
  v1 = (a1 + *(*a1 - 120));
  ((*v1)[12])(v1);
  v2 = *(*v1[2] + 104);

  return v2();
}

uint64_t kaldi::nnet1::FixedAttentionComponent::Info(kaldi::nnet1::FixedAttentionComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  (*(*this + 96))(this, &v7, 0);
  (*(**(this + 2) + 64))(__p);
  if ((v6 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, v2, v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v11);
}

void sub_1B52AAA34(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::SetTrainOptions(kaldi::nnet1::FixedAttentionComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = this + *(*this - 24);
  v3 = *(a2 + 8);
  *(v2 + 71) = *(a2 + 23);
  *(v2 + 56) = v3;
  return (*(**(this + 2) + 264))();
}

uint64_t virtual thunk tokaldi::nnet1::FixedAttentionComponent::SetTrainOptions(kaldi::nnet1::FixedAttentionComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = this + *(*this - 280);
  v3 = &v2[*(*v2 - 24)];
  v4 = *(a2 + 8);
  *(v3 + 71) = *(a2 + 23);
  *(v3 + 56) = v4;
  return (*(**(v2 + 2) + 264))();
}

void kaldi::nnet1::FixedAttentionComponent::SetSourceStates(int32x2_t *a1, uint64_t a2, void *a3)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  v23 = a3;
  v6 = a3[1] - *a3;
  kaldi::CuMatrix<float>::Resize(a1 + 3, v6 >> 2, *(*&a1[2] + 8), 0, 0);
  v25 = v6 >> 2;
  if ((v6 >> 2) >= 1)
  {
    v7 = 0;
    v24 = (v6 >> 2) & 0x7FFFFFFF;
    v8 = a1[1].i32[1];
    do
    {
      if (v8 >= 1)
      {
        v9 = *(*v23 + 4 * v7);
        if (v9 >= 1)
        {
          v10 = v9 & ~(v9 >> 31);
          v11 = v7 + v25 * (v9 - 1);
          v12 = 1;
          do
          {
            v13 = a1[1].u32[0];
            v14 = v13 * (v12 - 1);
            v15 = a1[6].i32[0];
            v16 = *&a1[4] + 4 * v14;
            v17 = a1[6].i32[1] - v14;
            v18 = a1[7];
            *(&v28 + 1) = __PAIR64__(a1[5].i32[1], v13);
            *&v29 = __PAIR64__(v17, v15);
            *(&v29 + 1) = v18;
            v30 = &unk_1F2CFCA48;
            v27 = &unk_1F2CFA908;
            *&v28 = v16;
            v31 = v16 + 4 * v15 * v7;
            v32 = v13;
            v33 = v18;
            v19 = *(a2 + 8) + 4 * *(a2 + 24) * v11;
            v20 = *(a2 + 16);
            v21 = *(a2 + 32);
            v26[0] = &unk_1F2CFCA48;
            v26[1] = v19;
            v26[3] = v21;
            v26[2] = v20;
            kaldi::CuVectorBase<float>::CopyFromVec(&v30, v26);
            v30 = &unk_1F2CFCA48;
            v31 = 0;
            LODWORD(v32) = 0;
            v33 = 0;
            v27 = &unk_1F2CFA908;
            v28 = 0u;
            v29 = 0u;
            quasar::Bitmap::~Bitmap(&v27);
            v8 = a1[1].i32[1];
            if (v12 >= v8)
            {
              break;
            }

            v11 -= v25;
          }

          while (v10 != v12++);
        }
      }

      ++v7;
    }

    while (v7 != v24);
  }
}

void sub_1B52AADE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22)
{
  a20 = 0;
  a21 = 0;
  a22 = 0;
  a17 = 0u;
  a18 = 0u;
  quasar::Bitmap::~Bitmap(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::GetSourceDiffs(uint64_t a1, uint64_t a2, void *a3, int32x2_t *a4)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  v24 = a3;
  v8 = a3[1] - *a3;
  kaldi::CuMatrix<float>::Resize(a4, *(a2 + 20), *(a2 + 16), 0, 0);
  v26 = v8 >> 2;
  if ((v8 >> 2) >= 1)
  {
    v9 = 0;
    v25 = (v8 >> 2) & 0x7FFFFFFF;
    v10 = *(a1 + 12);
    do
    {
      if (v10 >= 1)
      {
        v11 = *(*v24 + 4 * v9);
        if (v11 >= 1)
        {
          v12 = v11 & ~(v11 >> 31);
          v13 = v9 + v26 * (v11 - 1);
          v14 = 1;
          do
          {
            v15 = *&a4[1] + 4 * a4[3].i32[0] * v13;
            v16 = a4[2].u32[0];
            v17 = a4[4];
            v34[0] = &unk_1F2CFCA48;
            v34[1] = v15;
            v34[3] = v17;
            v34[2] = v16;
            LODWORD(v15) = *(a1 + 8);
            v18 = v15 * (v14 - 1);
            v19 = *(a1 + 96);
            v20 = *(a1 + 80) + 4 * v18;
            v21 = *(a1 + 100) - v18;
            v22 = *(a1 + 104);
            *(&v28 + 1) = __PAIR64__(*(a1 + 92), v15);
            *&v29 = __PAIR64__(v21, v19);
            *(&v29 + 1) = v22;
            v30 = &unk_1F2CFCA48;
            v27 = &unk_1F2CFA908;
            *&v28 = v20;
            v31 = v20 + 4 * (v19 * v9);
            v32 = v15;
            v33 = v22;
            kaldi::CuVectorBase<float>::CopyFromVec(v34, &v30);
            v30 = &unk_1F2CFCA48;
            v31 = 0;
            LODWORD(v32) = 0;
            v33 = 0;
            v27 = &unk_1F2CFA908;
            v28 = 0u;
            v29 = 0u;
            quasar::Bitmap::~Bitmap(&v27);
            v10 = *(a1 + 12);
            if (v14 >= v10)
            {
              break;
            }

            v13 -= v26;
          }

          while (v12 != v14++);
        }
      }

      ++v9;
    }

    while (v9 != v25);
  }
}

void sub_1B52AB010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18)
{
  a16 = 0;
  a17 = 0;
  a18 = 0;
  a13 = 0u;
  a14 = 0u;
  quasar::Bitmap::~Bitmap(&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::FixedAttentionComponent::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 168) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::FixedAttentionComponent::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 168) = 0;
  }

  return this;
}

void kaldi::nnet1::FixedAttentionComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  v6 = *(a1 + 8);
  v7 = *(a1 + 44);
  v8 = *(a2 + 20) / v7;
  v9 = *(a1 + 12);
  *(a1 + 56) = *(a3 + 32);
  if (v8 >= 1)
  {
    v10 = 0;
    v21 = v6 * v9;
    do
    {
      v11 = *(a1 + 32) + 4 * v21;
      v12 = *(a1 + 52) - v21;
      v13 = *(a1 + 56);
      LODWORD(v26[1]) = *(a1 + 8 + *(*a1 - 24));
      *(&v26[1] + 4) = *(a1 + 44);
      HIDWORD(v26[2]) = v12;
      v26[3] = v13;
      v25 = &unk_1F2CFA908;
      v26[0] = v11;
      v14 = *(a2 + 24);
      v15 = *(a2 + 8) + 4 * (v14 * v10);
      LODWORD(v13) = *(a2 + 28) - v14 * v10;
      v16 = *(a2 + 32);
      DWORD2(v23) = *(a2 + 16);
      HIDWORD(v23) = v7;
      *&v24 = __PAIR64__(v13, v14);
      *(&v24 + 1) = v16;
      v22 = &unk_1F2CFA908;
      *&v23 = v15;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v25, &v22, 111);
      v22 = &unk_1F2CFA908;
      v23 = 0u;
      v24 = 0u;
      quasar::Bitmap::~Bitmap(&v22);
      v25 = &unk_1F2CFA908;
      memset(v26, 0, sizeof(v26));
      quasar::Bitmap::~Bitmap(&v25);
      v17 = *(a3 + 24);
      v18 = *(a3 + 8) + 4 * (v17 * v10);
      v19 = *(a3 + 28) - v17 * v10;
      v20 = *(a3 + 32);
      LODWORD(v26[1]) = *(a3 + 16);
      HIDWORD(v26[1]) = v7;
      v26[2] = __PAIR64__(v19, v17);
      v26[3] = v20;
      v25 = &unk_1F2CFA908;
      v26[0] = v18;
      (*(**(a1 + 16) + 112))(*(a1 + 16), a1 + 24, &v25, 0);
      v25 = &unk_1F2CFA908;
      memset(v26, 0, sizeof(v26));
      quasar::Bitmap::~Bitmap(&v25);
      v10 += v7;
      --v8;
    }

    while (v8);
  }
}

void sub_1B52AB2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18)
{
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a11);
  a17 = 0u;
  a18 = 0u;
  quasar::Bitmap::~Bitmap(&a16);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  v8 = *(a1 + 44);
  v38 = a2;
  v9 = *(a2 + 20);
  v10 = (*(a1 + 8) * *(a1 + 12));
  v11 = *(a5 + 32);
  *(a1 + 104) = v11;
  *(a1 + 152) = v11;
  v12 = v9 / v8;
  kaldi::CuMatrix<float>::Resize((a1 + 72), v8, v10, 0, 0);
  kaldi::CuMatrix<float>::Resize((a1 + 120), v8, *(*(a1 + 16) + 8), 0, 0);
  if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      v41 = v12;
      v14 = *(a1 + 16);
      v15 = *(v38 + 24);
      v16 = *(v38 + 8) + 4 * (v15 * v13);
      v17 = *(v38 + 28) - v15 * v13;
      v18 = *(v38 + 32);
      LODWORD(v48[1]) = *(v38 + 16);
      HIDWORD(v48[1]) = v8;
      v48[2] = __PAIR64__(v17, v15);
      v48[3] = v18;
      v47 = &unk_1F2CFA908;
      v48[0] = v16;
      v19 = *(a3 + 24);
      v20 = *(a3 + 8) + 4 * (v19 * v13);
      v21 = *(a3 + 28) - v19 * v13;
      v22 = *(a3 + 32);
      LODWORD(v46[1]) = *(a3 + 16);
      HIDWORD(v46[1]) = v8;
      v46[2] = __PAIR64__(v21, v19);
      v46[3] = v22;
      v45 = &unk_1F2CFA908;
      v46[0] = v20;
      v23 = *(a4 + 24);
      v24 = *(a4 + 8) + 4 * (v23 * v13);
      v25 = *(a4 + 28) - v23 * v13;
      v26 = *(a4 + 32);
      DWORD2(v43) = *(a4 + 16);
      HIDWORD(v43) = v8;
      *&v44 = __PAIR64__(v25, v23);
      *(&v44 + 1) = v26;
      v42 = &unk_1F2CFA908;
      *&v43 = v24;
      (*(*v14 + 128))(v14, &v47, &v45, &v42, a1 + 120, 0);
      v42 = &unk_1F2CFA908;
      v43 = 0u;
      v44 = 0u;
      quasar::Bitmap::~Bitmap(&v42);
      v45 = &unk_1F2CFA908;
      memset(v46, 0, sizeof(v46));
      quasar::Bitmap::~Bitmap(&v45);
      v47 = &unk_1F2CFA908;
      memset(v48, 0, sizeof(v48));
      quasar::Bitmap::~Bitmap(&v47);
      v27 = *(a5 + 24);
      v28 = *(a5 + 8) + 4 * (v27 * v13);
      v29 = *(a5 + 28) - v27 * v13;
      v30 = *(a5 + 32);
      LODWORD(v48[1]) = *(a5 + 16);
      HIDWORD(v48[1]) = v8;
      v48[2] = __PAIR64__(v29, v27);
      v48[3] = v30;
      v47 = &unk_1F2CFA908;
      v48[0] = v28;
      v31 = *(a1 + 128) + 4 * v10;
      v32 = *(a1 + 148) - v10;
      v33 = *(a1 + 152);
      LODWORD(v46[1]) = *(a1 + 8 + *(*a1 - 24));
      *(&v46[1] + 4) = *(a1 + 140);
      HIDWORD(v46[2]) = v32;
      v46[3] = v33;
      v45 = &unk_1F2CFA908;
      v46[0] = v31;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(v34, &v45, 111);
      v45 = &unk_1F2CFA908;
      memset(v46, 0, sizeof(v46));
      quasar::Bitmap::~Bitmap(&v45);
      v47 = &unk_1F2CFA908;
      memset(v48, 0, sizeof(v48));
      quasar::Bitmap::~Bitmap(&v47);
      v35 = *(a1 + 128);
      v36 = *(a1 + 148);
      v37 = *(a1 + 152);
      LODWORD(v48[1]) = v10;
      *(&v48[1] + 4) = *(a1 + 140);
      HIDWORD(v48[2]) = v36;
      v48[3] = v37;
      v47 = &unk_1F2CFA908;
      v48[0] = v35;
      kaldi::CuMatrixBase<float>::AddMat(a1 + 72, &v47, 111, 1.0, 1.0);
      v47 = &unk_1F2CFA908;
      memset(v48, 0, sizeof(v48));
      quasar::Bitmap::~Bitmap(&v47);
      v13 += v8;
      --v12;
    }

    while (v41 != 1);
  }
}

void sub_1B52AB704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v14 = va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v16 = 0u;
  v17 = 0u;
  quasar::Bitmap::~Bitmap(va);
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va1);
  *(v12 - 128) = v9;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v12 - 128));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::FixedAttentionComponent::Check(a1);
  v7 = *(a1 + 8);
  v8 = *(a1 + 44);
  v27 = a4;
  v9 = *(a2 + 20) / v8;
  v10 = *(a1 + 12);
  *(a1 + 56) = a4;
  v11 = (*(**(a1 + 16) + 272))();
  v33 = &unk_1F2D279F8;
  v12 = *(v11 + 23);
  *v34 = *(v11 + 8);
  *(&v34[3] + 3) = v12;
  v13 = v34[0];
  v34[0] = v34[0] / v9;
  (*(**(a1 + 16) + 264))();
  if (v9 >= 1)
  {
    v14 = 0;
    v25 = v7 * v10;
    do
    {
      v15 = *(a1 + 32) + 4 * v25;
      v16 = *(a1 + 52) - v25;
      v17 = *(a1 + 56);
      LODWORD(v32[1]) = *(a1 + 8 + *(*a1 - 24));
      *(&v32[1] + 4) = *(a1 + 44);
      HIDWORD(v32[2]) = v16;
      v32[3] = v17;
      v31 = &unk_1F2CFA908;
      v32[0] = v15;
      v18 = *(a2 + 24);
      v19 = *(a2 + 8) + 4 * (v18 * v14);
      LODWORD(v17) = *(a2 + 28) - v18 * v14;
      v20 = *(a2 + 32);
      DWORD2(v29) = *(a2 + 16);
      HIDWORD(v29) = v8;
      *&v30 = __PAIR64__(v17, v18);
      *(&v30 + 1) = v20;
      v28 = &unk_1F2CFA908;
      *&v29 = v19;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v31, &v28, 111);
      v28 = &unk_1F2CFA908;
      v29 = 0u;
      v30 = 0u;
      quasar::Bitmap::~Bitmap(&v28);
      v31 = &unk_1F2CFA908;
      memset(v32, 0, sizeof(v32));
      quasar::Bitmap::~Bitmap(&v31);
      v21 = *(a3 + 24);
      v22 = *(a3 + 8) + 4 * (v21 * v14);
      v23 = *(a3 + 28) - v21 * v14;
      v24 = *(a3 + 32);
      LODWORD(v32[1]) = *(a3 + 16);
      HIDWORD(v32[1]) = v8;
      v32[2] = __PAIR64__(v23, v21);
      v32[3] = v24;
      v31 = &unk_1F2CFA908;
      v32[0] = v22;
      (*(**(a1 + 16) + 232))(*(a1 + 16), a1 + 24, &v31, v27, 0);
      (*(**(a1 + 16) + 256))(*(a1 + 16), v27, 0);
      v31 = &unk_1F2CFA908;
      memset(v32, 0, sizeof(v32));
      quasar::Bitmap::~Bitmap(&v31);
      v14 += v8;
      --v9;
    }

    while (v9);
  }

  v34[0] = v13;
  (*(**(a1 + 16) + 264))(*(a1 + 16), &v33);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&v33);
}

void sub_1B52ABBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::FixedAttentionComponent::GetGradient(_DWORD *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 64))(a1);
  v10 = *(v9 + 11);
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(a2 + 20) / v10;
  v14 = (*(*a1 + 112))(a1);
  kaldi::Vector<float>::Resize(a4, v14, 0);
  v15 = (*(*a1 + 112))(a1);
  memset(v32, 0, 24);
  kaldi::Vector<float>::Resize(v32, v15, 1);
  if (v13 > 0)
  {
    v16 = 0;
    v27 = v11 * v12;
    do
    {
      v17 = *(v9 + 4) + 4 * v27;
      v18 = *(v9 + 13) - v27;
      v19 = *(v9 + 7);
      LODWORD(v28[2]) = *(a1 + *(*a1 - 24) + 8);
      *(&v28[2] + 4) = *(v9 + 44);
      HIDWORD(v28[3]) = v18;
      v28[4] = v19;
      v28[0] = &unk_1F2CFA908;
      v28[1] = v17;
      v20 = *(a2 + 24);
      v21 = *(a2 + 8) + 4 * (v20 * v16);
      LODWORD(v19) = *(a2 + 28) - v20 * v16;
      v22 = *(a2 + 32);
      DWORD2(v30) = *(a2 + 16);
      HIDWORD(v30) = v10;
      *&v31 = __PAIR64__(v19, v20);
      *(&v31 + 1) = v22;
      v29 = &unk_1F2CFA908;
      *&v30 = v21;
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(v28, &v29, 111);
      v29 = &unk_1F2CFA908;
      v30 = 0u;
      v31 = 0u;
      quasar::Bitmap::~Bitmap(&v29);
      v28[0] = &unk_1F2CFA908;
      memset(&v28[1], 0, 32);
      quasar::Bitmap::~Bitmap(v28);
      v23 = *(a3 + 24);
      v24 = *(a3 + 8) + 4 * (v23 * v16);
      v25 = *(a3 + 28) - v23 * v16;
      v26 = *(a3 + 32);
      DWORD2(v30) = *(a3 + 16);
      HIDWORD(v30) = v10;
      *&v31 = __PAIR64__(v25, v23);
      *(&v31 + 1) = v26;
      v29 = &unk_1F2CFA908;
      *&v30 = v24;
      kaldi::CuMatrix<float>::CuMatrix(v28, &v29, 111);
      v29 = &unk_1F2CFA908;
      v30 = 0u;
      v31 = 0u;
      quasar::Bitmap::~Bitmap(&v29);
      (*(*v9 + 168))(v9, v9 + 24, v28, v32);
      kaldi::VectorBase<float>::AddVec<float>();
      kaldi::CuMatrix<float>::~CuMatrix(v28);
      v16 += v10;
      --v13;
    }

    while (v13);
  }

  (*(*v9 + 8))(v9);
  kaldi::Vector<float>::Destroy(v32);
}

void sub_1B52ABFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va1);
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  kaldi::Vector<float>::Destroy(v10 - 112);
  _Unwind_Resume(a1);
}

void kaldi::DecodableInterface::NumFramesReady(kaldi::DecodableInterface *this)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "NumFramesReady() not implemented for this decodable type.");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void std::vector<kaldi::Vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<kaldi::Vector<float>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<kaldi::Vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Vector<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*,kaldi::Vector<float>*,kaldi::Vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      kaldi::Vector<float>::Resize(v4, *(v6 + 8), 1);
      kaldi::VectorBase<float>::CopyFromVec(v4, v6);
      v6 += 24;
      v4 = v11 + 24;
      v11 += 24;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<kaldi::Vector<float>>,kaldi::Vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void quasar::PhoneticMatchDecoder::loadModelOverrides(quasar::PhoneticMatchDecoder *this, quasar::SystemConfig *a2)
{
  Ptree = quasar::SystemConfig::getPtree(a2, this + 8);
  std::string::basic_string[abi:ne200100]<0>(&v3, "model-override-json");
  quasar::PTree::getStringOptional(Ptree, &v3);
}

void sub_1B52ACDBC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, __int128 a57, __int128 a58, __int128 a59, __int128 a60, __int128 a61, __int128 a62, __int128 a63)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a17);
  quasar::SystemConfig::~SystemConfig(&a57);
  if (*(v64 - 97) < 0)
  {
    operator delete(*(v64 - 120));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (*(v64 - 49) < 0)
  {
    operator delete(*(v64 - 72));
  }

  if (a2 == 2)
  {
    v67 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v68 = v67;
      *&STACK[0x270] = 0u;
      *&STACK[0x280] = 0u;
      *&STACK[0x250] = 0u;
      *&STACK[0x260] = 0u;
      *&STACK[0x230] = 0u;
      *&STACK[0x240] = 0u;
      *&STACK[0x210] = 0u;
      *&STACK[0x220] = 0u;
      a64 = 0u;
      *&STACK[0x200] = 0u;
      a62 = 0u;
      a63 = 0u;
      a60 = 0u;
      a61 = 0u;
      a58 = 0u;
      a59 = 0u;
      a57 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a57);
      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a57, "Error reading JSON config file: ", 32);
      v70 = (*(*v68 + 16))(v68);
      v71 = strlen(v70);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a57);
    }
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(a1);
    }

    v72 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v73 = v72;
      *&STACK[0x270] = 0u;
      *&STACK[0x280] = 0u;
      *&STACK[0x250] = 0u;
      *&STACK[0x260] = 0u;
      *&STACK[0x230] = 0u;
      *&STACK[0x240] = 0u;
      *&STACK[0x210] = 0u;
      *&STACK[0x220] = 0u;
      a64 = 0u;
      *&STACK[0x200] = 0u;
      a62 = 0u;
      a63 = 0u;
      a60 = 0u;
      a61 = 0u;
      a58 = 0u;
      a59 = 0u;
      a57 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a57);
      v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a57, "Internal C++ exception: ", 24);
      v75 = (*(*v73 + 16))(v73);
      v76 = strlen(v75);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a57);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1B52AC5D8);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void quasar::PhoneticMatchDecoder::registerParams(quasar::PhoneticMatchDecoder *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "phonetic-match");
  quasar::SystemConfig::enforceMinVersion(a2, 48, 0, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  quasar::PhoneticMatchDecoder::loadModelOverrides(this, a2);
}

void sub_1B52ADCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void kaldi::quasar::SymbolDecoderOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Symbol decoder beam");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-active");
  std::string::basic_string[abi:ne200100]<0>(__p, "Symbol decoder max active states");
  (*(*a2 + 8))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam-delta");
  std::string::basic_string[abi:ne200100]<0>(__p, "Symbol decoder beam delta");
  (*(*a2 + 24))(a2, v6, a1 + 8, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "hash-ratio");
  std::string::basic_string[abi:ne200100]<0>(__p, "Symbol decoder hash ratio");
  (*(*a2 + 24))(a2, v6, a1 + 12, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "ac-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Symbol decoder acoustic scale");
  (*(*a2 + 24))(a2, v6, a1 + 16, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-total-tokens");
  std::string::basic_string[abi:ne200100]<0>(__p, "Max total allocated tokens at any time.");
  (*(*a2 + 8))(a2, v6, a1 + 20, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B52AE084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t quasar::PhoneticMatchDecoder::getJoinedRegexpsFromFile@<X0>(void *a1@<X8>)
{
  v22[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v20);
  memset(&__p, 0, sizeof(__p));
  v2 = 1;
  memset(&v18, 0, sizeof(v18));
  v3 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v20 + *(v20[0] - 24)));
    v4 = std::locale::use_facet(v16, v3);
    v5 = (v4->__vftable[2].~facet_0)(v4, 10);
    std::locale::~locale(v16);
    v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v20, &__p, v5);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      break;
    }

    quasar::trim(&__p);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if ((v2 & 1) == 0)
      {
        std::string::append(&v18, "|");
      }

      std::operator+<char>();
      v8 = std::string::append(&v15, ")");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v17 = v8->__r_.__value_.__r.__words[2];
      *&v16[0].__locale_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if (v17 >= 0)
      {
        locale = v16;
      }

      else
      {
        locale = v16[0].__locale_;
      }

      if (v17 >= 0)
      {
        v11 = HIBYTE(v17);
      }

      else
      {
        v11 = v16[1].__locale_;
      }

      std::string::append(&v18, locale, v11);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0].__locale_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      v2 = 0;
    }
  }

  v12 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  v13 = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v18.__r_.__value_.__l.__size_;
  }

  if (v12)
  {
    std::allocate_shared[abi:ne200100]<quasar::URegularExpressionWrapper,std::allocator<quasar::URegularExpressionWrapper>,std::string &,0>();
  }

  *a1 = 0;
  a1[1] = 0;
  if (v13 < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20[0] = *MEMORY[0x1E69E54C8];
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](&v21);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v22);
}

void sub_1B52AE3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  std::ifstream::~ifstream(&a35);
  _Unwind_Resume(a1);
}

void quasar::PhoneticMatchDecoder::finishInit(quasar::PhoneticMatchDecoder *this)
{
  v26 = *MEMORY[0x1E69E9840];
  quasar::result_handler::Range::Range(&__p, 70, 0);
  if (!quasar::SystemConfig::Version::operator>=(this + 8, &__p))
  {
    quasar::ModelLoader::readSymbolTable(*(this + 47), this + 456, 4, 0, &v7);
    LODWORD(v8) = 3;
    std::allocate_shared[abi:ne200100]<quasar::QsrTextSymbolTable,std::allocator<quasar::QsrTextSymbolTable>,std::shared_ptr<fst::SymbolTable>,quasar::TextEncoding,0>();
  }

  quasar::QsrTextSymbolTable::init(*(this + 106), (this + 32), 1, 0, 1);
  if ((*(this + 527) & 0x8000000000000000) != 0)
  {
    if (!*(this + 64))
    {
      goto LABEL_11;
    }
  }

  else if (!*(this + 527))
  {
    goto LABEL_11;
  }

  (*(**(this + 47) + 16))(&__p);
  v2 = __p;
  __p = 0uLL;
  v3 = *(this + 109);
  *(this + 54) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&__p + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
    }
  }

LABEL_11:
  quasar::result_handler::Range::Range(&__p, 158, 0);
  if (quasar::SystemConfig::Version::operator<(this + 8, &__p))
  {
    if (quasar::gLogLevel >= 4)
    {
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
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Config version < 158 so using FST compatibility mode so subroutine states with no outgoing arcs denotes an exit state", 117);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    v4 = 1;
  }

  else
  {
    if (quasar::gLogLevel >= 4)
    {
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
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Config version >= 158 so exit states in subroutines are expected to be proper final states - phonetic match will fail otherwise", 127);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
    }

    v4 = 0;
  }

  *(this + 920) = v4;
  (*(**(this + 47) + 16))(&__p);
  v5 = __p;
  __p = 0uLL;
  v6 = *(this + 111);
  *(this + 55) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&__p + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
    }
  }

  operator new();
}

void sub_1B52AF224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::locale a36)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a36);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  a14 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  v37 = v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
  if (v40 < 0)
  {
    operator delete(v39[38]);
  }

  std::ifstream::~ifstream(&v41);
  _Unwind_Resume(a1);
}

void sub_1B52AF24C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B52AF2C4);
}

void sub_1B52AF268(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B52AF374);
}

void sub_1B52AF290(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B52AF38CLL);
}

void sub_1B52AF2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a11 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  JUMPOUT(0x1B52AF324);
}

void sub_1B52AF2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  a33 = &STACK[0x210];
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a33);
  JUMPOUT(0x1B52AF38CLL);
}

void sub_1B52AF304(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  __p = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  JUMPOUT(0x1B52AF354);
}

void quasar::PhoneticMatchDecoder::loadConfidenceModel(_DWORD *a1, uint64_t a2)
{
  v4 = a1 + 178;
  FeatureMap = quasar::PhoneticMatchConfFeatures::GetFeatureMap(a1);
  std::vector<float>::resize(v4, *(FeatureMap + 24), &quasar::kConfidenceFeatureDefaultLow, v6);
  v57 = a1;
  a1[176] = -1027080192;
  memset(&__str, 0, sizeof(__str));
  v61 = 0;
  kaldi::Input::Input(v60, a2, &v61);
  v7 = 0;
  v8 = MEMORY[0x1E69E5318];
  while (1)
  {
    v9 = kaldi::Input::Stream(v60);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(v58, v8);
    v11 = (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(v58);
    v12 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, &__str, v11);
    if ((*(v12 + *(*v12 - 24) + 32) & 5) != 0)
    {
      break;
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v15 = p_str + size;
    if (size >= 1)
    {
      v16 = p_str;
      do
      {
        v17 = memchr(v16, 32, size);
        if (!v17)
        {
          break;
        }

        if (*v17 == 32)
        {
          goto LABEL_15;
        }

        v16 = (v17 + 1);
        size = v15 - v16;
      }

      while (v15 - v16 > 0);
    }

    v17 = v15;
LABEL_15:
    if (v17 == v15)
    {
      v18 = -1;
    }

    else
    {
      v18 = v17 - p_str;
    }

    std::string::basic_string(&v59, &__str, 0, v18, v58);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &__str;
    }

    else
    {
      v19 = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = __str.__r_.__value_.__l.__size_;
    }

    v21 = v19 + v20;
    v22 = v20;
    v23 = v19;
    if (v20 < 1)
    {
      v25 = 0;
    }

    else
    {
      do
      {
        v24 = memchr(v23, 32, v22);
        if (!v24)
        {
          break;
        }

        if (*v24 == 32)
        {
          goto LABEL_29;
        }

        v23 = (v24 + 1);
        v22 = v21 - v23;
      }

      while (v21 - v23 > 0);
      v24 = v19 + v20;
LABEL_29:
      if (v24 == v21)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24 - v19 + 1;
      }

      v26 = v20;
      v27 = v19;
      do
      {
        v28 = memchr(v27, 32, v26);
        if (!v28)
        {
          break;
        }

        if (*v28 == 32)
        {
          goto LABEL_39;
        }

        v27 = (v28 + 1);
        v26 = v21 - v27;
      }

      while (v21 - v27 > 0);
    }

    v28 = v19 + v20;
LABEL_39:
    v29 = v19 + ~v28;
    if (v28 == v21)
    {
      v29 = 0;
    }

    std::string::basic_string(v58, &__str, v25, &v29[v20], v63);
    if (SHIBYTE(v58[0].__r_.__value_.__r.__words[2]) < 0)
    {
      v32 = v58[0].__r_.__value_.__r.__words[0];
      v31 = atof(v58[0].__r_.__value_.__l.__data_);
      operator delete(v32);
    }

    else
    {
      v31 = atof(v58);
    }

    v33 = v31;
    if ((*(&v59.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v59.__r_.__value_.__l.__size_ == 8 && *v59.__r_.__value_.__l.__data_ == 0x746E6174736E6F63)
      {
        goto LABEL_67;
      }

      if (v59.__r_.__value_.__l.__size_ != 9)
      {
        goto LABEL_56;
      }

      v34 = v59.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v59.__r_.__value_.__r.__words[2]) == 8)
      {
        if (v59.__r_.__value_.__r.__words[0] != 0x746E6174736E6F63)
        {
          goto LABEL_56;
        }

        goto LABEL_67;
      }

      if (HIBYTE(v59.__r_.__value_.__r.__words[2]) != 9)
      {
        goto LABEL_56;
      }

      v34 = &v59;
    }

    v35 = v34->__r_.__value_.__r.__words[0];
    v36 = v34->__r_.__value_.__s.__data_[8];
    if (v35 != 0x7065637265746E69 || v36 != 116)
    {
LABEL_56:
      v38 = quasar::PhoneticMatchConfFeatures::GetFeatureMap(v30);
      v39 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v38, &v59.__r_.__value_.__l.__data_);
      v40 = quasar::PhoneticMatchConfFeatures::GetFeatureMap(v39);
      if (!v39)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Feature ", 8);
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v59;
        }

        else
        {
          v54 = v59.__r_.__value_.__r.__words[0];
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v55 = v59.__r_.__value_.__l.__size_;
        }

        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " is not in the model definition.", 32);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v58);
      }

      v41 = quasar::PhoneticMatchConfFeatures::GetFeatureMap(v40);
      *(*v4 + 4 * *(std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v41, &v59.__r_.__value_.__l.__data_) + 10)) = v33;
      if (kaldi::g_kaldi_verbose_level >= 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v58, 2);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Setting ", 8);
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v59;
        }

        else
        {
          v43 = v59.__r_.__value_.__r.__words[0];
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v44 = v59.__r_.__value_.__l.__size_;
        }

        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v43, v44);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " to ", 4);
        std::ostream::operator<<();
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v58);
      }

      v7 = (v7 + 1);
      goto LABEL_69;
    }

LABEL_67:
    v57[176] = v33;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Setting constant term/intercept to ", 35);
      std::ostream::operator<<();
      kaldi::KaldiLogMessage::~KaldiLogMessage(v58);
    }

LABEL_69:
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v58);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Read in Confidence Model ", 25);
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
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " added ", 7);
    v52 = MEMORY[0x1B8C84C00](v51, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " features", 9);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v58);
  }

  kaldi::Input::~Input(v60);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B52AF900(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  JUMPOUT(0x1B52AF938);
}

void sub_1B52AF920(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  JUMPOUT(0x1B52AF938);
}

void sub_1B52AF934(_Unwind_Exception *a1)
{
  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  kaldi::Input::~Input((v1 - 152));
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(a1);
}

void sub_1B52AF94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  std::locale::~locale(&a12);
  kaldi::Input::~Input((v12 - 152));
  if (*(v12 - 113) < 0)
  {
    operator delete(*(v12 - 136));
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::GetSinglePron(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B52AFB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(va);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(va1);
  v8 = *v6;
  if (*v6)
  {
    *(v6 + 8) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::PhoneticMatchConfFeatures::GetFeatureMap(quasar::PhoneticMatchConfFeatures *this)
{
  if (atomic_load_explicit(&quasar::PhoneticMatchConfFeatures::GetFeatureMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&quasar::PhoneticMatchConfFeatures::GetFeatureMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<quasar::PhoneticMatchConfFeatures::GetFeatureMap(void)::{lambda(void)#1} &&>>);
  }

  return quasar::PhoneticMatchConfFeatures::GetFeatureMap(void)::m_heap;
}

void quasar::PhoneticMatchDecoder::joinTokens(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  memset(&__str, 0, sizeof(__str));
  memset(&v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = *a2 + 48;
    do
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v19.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::append(&v19, " ");
      }

      v10 = *(v8 + 23);
      if (v10 >= 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *v8;
      }

      if (v10 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = *(v8 + 8);
      }

      std::string::append(&v19, v11, v12);
      v13 = v8 + 176;
      v8 += 224;
    }

    while (v13 != v7);
  }

  v14 = *a3;
  v15 = a3[1];
  while (v14 != v15)
  {
    if ((*(v14 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v14 + 8))
      {
        goto LABEL_21;
      }

LABEL_20:
      std::vector<std::string>::push_back[abi:ne200100](v18, v14);
      goto LABEL_21;
    }

    if (*(v14 + 23))
    {
      goto LABEL_20;
    }

LABEL_21:
    v14 += 224;
  }

  kaldi::JoinVectorToString(v18, "~w00", 1, &__str);
  std::string::operator=(a4, &__str);
  v16 = *a3;
  if (*a3 == a3[1])
  {
    *(a4 + 28) = 0;
    *(a4 + 36) = 0;
    MEMORY[0x1B8C84820](a4 + 48, "");
  }

  else
  {
    v17 = a2[1];
    *(a4 + 28) = *(*a2 + 28);
    *(a4 + 32) = *(v17 - 192);
    *(a4 + 40) = *(v16 + 40);
    std::string::operator=((a4 + 48), &v19);
  }

  v21 = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1B52AFE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  *(v23 - 56) = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v23 - 56));
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

void quasar::PhoneticMatchDecoder::FetchResults(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v8 = (*(*a3 + 24))(a3);
  memset(v18, 0, sizeof(v18));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v18, 0, 0, 0);
  memset(v19, 0, sizeof(v19));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v19, *(&v24 + 1), v25, 0x6DB6DB6DB6DB6DB7 * ((v25 - *(&v24 + 1)) >> 5));
  memset(v20, 0, sizeof(v20));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v20, v26, *(&v26 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(&v26 + 1) - v26) >> 5));
  v14 = v21;
  memset(v15, 0, sizeof(v15));
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(v15, *v22, *&v22[8], 0x8E38E38E38E38E39 * ((*&v22[8] - *v22) >> 3));
  if ((v22[47] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(&__p, *&v22[24], *&v22[32]);
  }

  else
  {
    __p = *&v22[24];
  }

  v17[0] = *&v22[48];
  *(v17 + 3) = *&v22[51];
  quasar::PhoneticMatchDecoder::FetchResultsImpl(a1, a2, a3, v8, 0, v18, &v14, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v28[0] = v15;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = v20;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = v19;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v28);
  v28[0] = v18;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v28);
  v10 = *a4;
  v11 = a4[1];
  if (*a4 != v11)
  {
    do
    {
      quasar::PhoneticMatchResult::cleanupPartialSpans(v10, (a1 + 768));
      v10 = (v10 + 72);
    }

    while (v10 != v11);
    v10 = *a4;
    v11 = a4[1];
  }

  v12 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v11 - v10) >> 3));
  v28[0] = quasar::lowestGraphCostSort;
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,false>(v10, v11, v28, v13, 1, v9);
  if ((v22[47] & 0x80000000) != 0)
  {
    operator delete(*&v22[24]);
  }

  v28[0] = v22;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](v28);
  *&v21 = &v26;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v21);
  *&v21 = &v24 + 8;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v21);
  *&v21 = &v23;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_1B52B0140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  *(v28 - 104) = v27;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100]((v28 - 104));
  quasar::PhoneticMatchAlignmentSpan::~PhoneticMatchAlignmentSpan(&a18);
  quasar::PhoneticMatchResult::~PhoneticMatchResult(&a27);
  quasar::PhoneticMatchAlignmentSpan::~PhoneticMatchAlignmentSpan((v28 - 176));
  _Unwind_Resume(a1);
}

void quasar::PhoneticMatchDecoder::FetchResultsImpl(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, unsigned int a5, uint64_t *a6, __int128 *a7, uint64_t *a8)
{
  v8 = *(*(*(*(a3 + 8) + 64) + 8 * a4) + 24);
  v9 = *(*(*(*(a3 + 8) + 64) + 8 * a4) + 32) - v8;
  if (v9)
  {
    v12 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 2);
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = v12 - 1;
    v14 = (v8 + 16);
    while (1)
    {
      v15 = v13;
      v16 = *(v14 - 2);
      v17 = *(v14 - 2);
      v18 = *v14;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v93, *a6, a6[1], 0x6DB6DB6DB6DB6DB7 * ((a6[1] - *a6) >> 5));
      v96 = 0;
      v97 = 0;
      v98 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v96, a6[3], a6[4], 0x6DB6DB6DB6DB6DB7 * ((a6[4] - a6[3]) >> 5));
      v99 = 0;
      v100 = 0;
      v101 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v99, a6[6], a6[7], 0x6DB6DB6DB6DB6DB7 * ((a6[7] - a6[6]) >> 5));
      v87 = *a7;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(&v88, *(a7 + 2), *(a7 + 3), 0x8E38E38E38E38E39 * ((*(a7 + 3) - *(a7 + 2)) >> 3));
      if (*(a7 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v91, *(a7 + 5), *(a7 + 6));
      }

      else
      {
        v91 = *(a7 + 40);
      }

      v45 = v15;
      *v92 = *(a7 + 16);
      *&v92[3] = *(a7 + 67);
      quasar::PhoneticMatchDecoder::getAlignmentPhoneToken(a2, a5, v16 > 0xFF, &v72);
      v19 = HIDWORD(v16);
      if (v16 >= 0x100 && v16 && v19)
      {
        v20 = v74;
        if ((v74 & 0x80u) != 0)
        {
          v20 = v73;
        }

        if (v20)
        {
          if (!quasar::PhoneticMatchAlignmentSpan::empty(&v93))
          {
            std::vector<quasar::PhoneticMatchAlignmentSpan>::push_back[abi:ne200100](&v88, &v93);
          }

          quasar::PhoneticMatchAlignmentSpan::clear(&v93);
        }
      }

      else if (v16 < 0x100)
      {
        goto LABEL_34;
      }

      v21 = v74;
      if ((v74 & 0x80u) != 0)
      {
        v21 = v73;
      }

      if (v21 || (v22 = v94, v93 == v94))
      {
        std::vector<quasar::Token>::push_back[abi:ne200100](&v93, &v72);
      }

      else
      {
        v23 = v76;
        *(v94 - 192) = v76;
        *(v22 - 188) = v23;
        v24 = *(v22 - 153);
        if (v24 < 0)
        {
          v24 = *(v22 - 168);
        }

        v25 = (v22 - 176);
        if (v24)
        {
          std::string::append((v22 - 176), " ");
        }

        if ((v78 & 0x80u) == 0)
        {
          v26 = v77;
        }

        else
        {
          v26 = v77[0];
        }

        if ((v78 & 0x80u) == 0)
        {
          v27 = v78;
        }

        else
        {
          v27 = v77[1];
        }

        std::string::append(v25, v26, v27);
      }

LABEL_34:
      if (v19)
      {
        v33 = quasar::Token::Token(v55);
        v34 = v75;
        DWORD1(v57) = v76;
        HIDWORD(v56) = v75;
        LODWORD(v57) = v76;
        if (v16)
        {
          (*(**(*(a1 + 944) + 32) + 88))(&v70, v33);
          if (SBYTE7(v59[0]) < 0)
          {
            operator delete(v58[0]);
          }

          *v58 = v70;
          *&v59[0] = v71;
          v34 = v75;
        }

        HIDWORD(v56) = v34;
        BYTE13(v57) = 0;
        quasar::QsrTextSymbolTable::Find(*(a1 + 848), &v70);
        if (SBYTE7(v56) < 0)
        {
          operator delete(v55[0]);
        }

        *&v56 = v71;
        *v55 = v70;
        if (SHIBYTE(v71) < 0)
        {
          if (!v55[1])
          {
            goto LABEL_71;
          }

LABEL_69:
          v35 = 1;
        }

        else
        {
          if (HIBYTE(v71))
          {
            goto LABEL_69;
          }

LABEL_71:
          v35 = 0;
        }

        BYTE12(v57) = v35;
        std::vector<quasar::Token>::push_back[abi:ne200100](&v96, v55);
        if (SBYTE7(v65) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v63) < 0)
        {
          operator delete(v62[0]);
        }

        *&v70 = v61 + 8;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v70);
        if (SBYTE7(v61[0]) < 0)
        {
          operator delete(v60[0]);
        }

        *&v70 = v59 + 8;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
        if (SBYTE7(v59[0]) < 0)
        {
          operator delete(v58[0]);
        }

        if (SBYTE7(v56) < 0)
        {
          operator delete(v55[0]);
        }

        goto LABEL_82;
      }

      if (v16)
      {
        v28 = v97;
        if (v96 == v97)
        {
          quasar::Token::Token(v55);
          HIDWORD(v56) = v75;
          std::vector<quasar::Token>::push_back[abi:ne200100](&v96, v55);
          if (SBYTE7(v65) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v63) < 0)
          {
            operator delete(v62[0]);
          }

          *&v70 = v61 + 8;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v70);
          if (SBYTE7(v61[0]) < 0)
          {
            operator delete(v60[0]);
          }

          *&v70 = v59 + 8;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v70);
          if (SBYTE7(v59[0]) < 0)
          {
            operator delete(v58[0]);
          }

          if (SBYTE7(v56) < 0)
          {
            operator delete(v55[0]);
          }

          v28 = v97;
        }

        v29 = *(v28 - 153);
        if (v29 < 0)
        {
          v29 = *(v28 - 168);
        }

        if (v29)
        {
          std::string::append((v28 - 176), " ");
        }

        (*(**(*(a1 + 944) + 32) + 88))(v55);
        if ((SBYTE7(v56) & 0x80u) == 0)
        {
          v30 = v55;
        }

        else
        {
          v30 = v55[0];
        }

        if ((SBYTE7(v56) & 0x80u) == 0)
        {
          v31 = BYTE7(v56);
        }

        else
        {
          v31 = v55[1];
        }

        std::string::append((v28 - 176), v30, v31);
        if (SBYTE7(v56) < 0)
        {
          operator delete(v55[0]);
        }

        v32 = v76;
        *(v28 - 192) = v76;
        *(v28 - 188) = v32;
      }

LABEL_82:
      if (v16 <= 0xFF)
      {
        v36 = a5;
      }

      else
      {
        v36 = a5 + 1;
      }

      v37 = *(*(*(a3 + 8) + 64) + 8 * v18);
      v39 = *(v37 + 24);
      v38 = *(v37 + 32);
      if (v38 == v39)
      {
        if (!quasar::PhoneticMatchAlignmentSpan::empty(&v93))
        {
          std::vector<quasar::PhoneticMatchAlignmentSpan>::push_back[abi:ne200100](&v88, &v93);
        }

        kaldi::quasar::Vocab::OOvWord(a1, v55);
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
        }

        *&v91.__r_.__value_.__l.__data_ = *v55;
        v91.__r_.__value_.__r.__words[2] = v56;
        LODWORD(v87) = v17;
        if (quasar::gLogLevel >= 4)
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          *__p = 0u;
          v65 = 0u;
          *v62 = 0u;
          v63 = 0u;
          memset(v61, 0, sizeof(v61));
          *v60 = 0u;
          *v58 = 0u;
          memset(v59, 0, sizeof(v59));
          v56 = 0u;
          v57 = 0u;
          *v55 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v55);
          v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "numWildcardWordMatches=", 23);
          v41 = quasar::PhoneticMatchResult::numWildcardWordMatches(&v87, (a1 + 768));
          MEMORY[0x1B8C84C00](v40, v41);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v55);
        }

        v92[5] = quasar::PhoneticMatchResult::numWildcardWordMatches(&v87, (a1 + 768)) > 0;
        std::vector<quasar::PhoneticMatchResult>::push_back[abi:ne200100](a8, &v87);
      }

      else
      {
        memset(v52, 0, sizeof(v52));
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v52, v93, v94, 0x6DB6DB6DB6DB6DB7 * ((v94 - v93) >> 5));
        memset(v53, 0, sizeof(v53));
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v53, v96, v97, 0x6DB6DB6DB6DB6DB7 * ((v97 - v96) >> 5));
        memset(v54, 0, sizeof(v54));
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v54, v99, v100, 0x6DB6DB6DB6DB6DB7 * ((v100 - v99) >> 5));
        v48 = v87;
        memset(v49, 0, sizeof(v49));
        std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(v49, v88, v89, 0x8E38E38E38E38E39 * ((v89 - v88) >> 3));
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v50, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
        }

        else
        {
          v50 = v91;
        }

        v51[0] = *v92;
        *(v51 + 3) = *&v92[3];
        quasar::PhoneticMatchDecoder::FetchResultsImpl(a1, a2, a3, v18, v36, v52, &v48, a8);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        v55[0] = v49;
        std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](v55);
        v55[0] = v54;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v55);
        v55[0] = v53;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v55);
        v55[0] = v52;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v55);
      }

      if (v86 < 0)
      {
        operator delete(v85);
      }

      if (v84 < 0)
      {
        operator delete(v83);
      }

      v55[0] = &v82;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v55);
      if (v81 < 0)
      {
        operator delete(v80);
      }

      v55[0] = &v79;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v55);
      if (v78 < 0)
      {
        operator delete(v77[0]);
      }

      if (v74 < 0)
      {
        operator delete(v72);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      v55[0] = &v88;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](v55);
      v55[0] = &v99;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v55);
      v55[0] = &v96;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v55);
      v55[0] = &v93;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v55);
      if (v38 != v39)
      {
        v14 += 5;
        v13 = v45 - 1;
        if (v45)
        {
          continue;
        }
      }

      return;
    }
  }
}

void sub_1B52B0AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p)
{
  quasar::Token::~Token(&__p);
  quasar::Token::~Token(&STACK[0x250]);
  quasar::PhoneticMatchResult::~PhoneticMatchResult((v45 - 256));
  quasar::PhoneticMatchAlignmentSpan::~PhoneticMatchAlignmentSpan((v45 - 184));
  _Unwind_Resume(a1);
}

void quasar::PhoneticMatchResult::~PhoneticMatchResult(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this + 2;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void quasar::PhoneticMatchAlignmentSpan::~PhoneticMatchAlignmentSpan(void **this)
{
  v2 = this + 6;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void quasar::PhoneticMatchDecoder::getAlignmentPhoneToken(uint64_t *a1@<X1>, int a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  quasar::Token::Token(v17);
  v8 = *a1;
  if ((a3 & 1) == 0)
  {
    v9 = a1[1];
LABEL_6:
    if (v8 == v9)
    {
      *&v19[8] = 0;
      *&v19[4] = 0;
      *a4 = *v17;
      *(a4 + 16) = v18;
      v17[0] = 0;
      v17[1] = 0;
      v18 = 0;
      *(a4 + 24) = *v19;
      *(a4 + 39) = *&v19[15];
      *(a4 + 64) = v21;
      *(a4 + 48) = *v20;
LABEL_15:
      v20[0] = 0;
      v20[1] = 0;
      *(a4 + 72) = v22;
      *(a4 + 88) = v23;
      v21 = 0;
      v22 = 0uLL;
      v23 = 0;
      v12 = *v24;
      *(a4 + 112) = v25;
      *(a4 + 96) = v12;
      v24[0] = 0;
      v24[1] = 0;
      *(a4 + 120) = v26;
      *(a4 + 136) = v27;
      v25 = 0;
      v26 = 0uLL;
      v27 = 0;
      v13 = *v28;
      *(a4 + 160) = v29;
      *(a4 + 144) = v13;
      v28[0] = 0;
      v28[1] = 0;
      v14 = v30;
      *(a4 + 172) = v31;
      *(a4 + 168) = v14;
      v15 = *__p;
      *(a4 + 192) = v33;
      *(a4 + 176) = v15;
      v29 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v33 = 0;
      v16 = v34;
      *(a4 + 216) = v35;
      *(a4 + 200) = v16;
      goto LABEL_16;
    }

    if (a2)
    {
      if (0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 5) <= a2)
      {
        v11 = *(v9 - 192);
        goto LABEL_14;
      }

      v10 = *(v8 + 224 * a2 + 28) + *(v8 + 224 * a2 - 192);
    }

    else
    {
      v10 = *(v8 + 28);
    }

    v11 = vcvtd_n_f64_u32(v10, 1uLL);
LABEL_14:
    *&v19[8] = v11;
    *&v19[12] = v11;
    *&v19[4] = v11;
    *a4 = *v17;
    *(a4 + 16) = v18;
    v17[0] = 0;
    v17[1] = 0;
    v18 = 0;
    *(a4 + 24) = *v19;
    *(a4 + 39) = *&v19[15];
    *(a4 + 48) = *v20;
    *(a4 + 64) = v21;
    goto LABEL_15;
  }

  v9 = a1[1];
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 5) < a2)
  {
    goto LABEL_6;
  }

  quasar::Token::Token(a4, (v8 + 224 * a2));
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_16:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  v36 = &v26;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v36);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  v36 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v36);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_1B52B0F24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::Token::~Token(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::PhoneticMatchAlignmentSpan>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::PhoneticMatchAlignmentSpan>::__emplace_back_slow_path<quasar::PhoneticMatchAlignmentSpan const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__construct_one_at_end[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan const&>(a1, a2);
    result = v3 + 72;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<quasar::PhoneticMatchResult>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::PhoneticMatchResult>::__emplace_back_slow_path<quasar::PhoneticMatchResult const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::PhoneticMatchResult>::__construct_one_at_end[abi:ne200100]<quasar::PhoneticMatchResult const&>(a1, a2);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

void quasar::PhoneticMatchDecoder::applyPlaceholders(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      quasar::Token::Token(&v19, v3);
      for (i = *(a1 + 1048); i; i = *i)
      {
        if (quasar::URegularExpressionWrapper::isMatch(i[2], v3))
        {
          if (quasar::gLogLevel >= 4)
          {
            memset(v18, 0, sizeof(v18));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
            v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Matched placeholder for word=", 29);
            v7 = *(v3 + 23);
            if (v7 >= 0)
            {
              v8 = v3;
            }

            else
            {
              v8 = *v3;
            }

            if (v7 >= 0)
            {
              v9 = *(v3 + 23);
            }

            else
            {
              v9 = *(v3 + 8);
            }

            v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
            v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " replacing with pron=", 22);
            v12 = *(i + 55);
            if (v12 >= 0)
            {
              v13 = (i + 4);
            }

            else
            {
              v13 = i[4];
            }

            if (v12 >= 0)
            {
              v14 = *(i + 55);
            }

            else
            {
              v14 = i[5];
            }

            v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "", 1);
            quasar::QuasarInfoMessage::~QuasarInfoMessage(v18);
          }

          std::string::operator=(&v20, (i + 4));
        }
      }

      std::vector<quasar::Token>::push_back[abi:ne200100](a3, &v19);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }

      *&v18[0] = &v24;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v18);
      if (v23 < 0)
      {
        operator delete(v22);
      }

      *&v18[0] = &v21;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v18);
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      v3 += 224;
    }

    while (v3 != v4);
  }
}

void sub_1B52B11A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  quasar::Token::~Token(&a46);
  a11 = a10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void quasar::PhoneticMatchDecoder::getPhoneSegmentation(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
    ;
  }

  a4[1] = v6;
  if (a2[1] != *a2)
  {
    quasar::copyAndTrim(*a2 + 48, &v8);
    std::string::basic_string[abi:ne200100]<0>(&__p, " ");
    quasar::split(&v8, &__p, 0, &v10);
  }
}

void sub_1B52B166C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  __p = (v53 - 160);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::PhoneticMatchDecoder::doPm(uint64_t a1, clockid_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, _DWORD *a7, _DWORD *a8)
{
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v14 = *a5;
  for (i = a5[1]; i != v14; std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](a5, i))
  {
    i -= 72;
  }

  a5[1] = v14;
  *a7 = 0;
  *a8 = 0;
  v15 = a3[1];
  if (*a3 == v15)
  {
LABEL_13:
    v18 = quasar::StopWatch::StopWatch(v44, a2);
    quasar::StopWatch::resume(v18, v19);
    if (v46 != v45)
    {
      fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
    }

    if (quasar::gLogLevel >= 4)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Number of phones is 0", 21);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v27);
    }

    *&v27 = v44;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v27);
    goto LABEL_26;
  }

  v16 = *a3 + 48;
  while (*(v16 + 23) < 0)
  {
    if (*(v16 + 8))
    {
      goto LABEL_10;
    }

LABEL_12:
    v17 = v16 + 176;
    v16 += 224;
    if (v17 == v15)
    {
      goto LABEL_13;
    }
  }

  if (!*(v16 + 23))
  {
    goto LABEL_12;
  }

LABEL_10:
  LODWORD(v26) = (*(**(*(a1 + 944) + 40) + 96))(*(*(a1 + 944) + 40), v16);
  if (v26 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](&v45, &v26);
    goto LABEL_12;
  }

  if (quasar::gLogLevel >= 4)
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
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Phone '", 7);
    v21 = *(v16 + 23);
    if (v21 >= 0)
    {
      v22 = v16;
    }

    else
    {
      v22 = *v16;
    }

    if (v21 >= 0)
    {
      v23 = *(v16 + 23);
    }

    else
    {
      v23 = *(v16 + 8);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "' is not a valid phone symbol", 29);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v27);
  }

LABEL_26:
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return 0;
}

void sub_1B52B2050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void **a57)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a44);
  a9 = &a46;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::~SymbolDecoder(&a57);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&STACK[0x2C8]);
  a57 = &STACK[0x2D8];
  std::vector<quasar::PhoneticMatchResult>::__destroy_vector::operator()[abi:ne200100](&a57);
  a57 = &STACK[0x2F0];
  std::vector<quasar::PhoneticMatchResult>::__destroy_vector::operator()[abi:ne200100](&a57);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v57 - 248));
  a57 = (v57 - 232);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a57);
  v59 = *(v57 - 144);
  if (v59)
  {
    *(v57 - 136) = v59;
    operator delete(v59);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::Decode(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 56);
  if (v8 != -1)
  {
    v9 = *(a1 + 72);
    do
    {
      v10 = (v9 + 16 * v8);
      v10[1] = 0;
      v8 = *v10;
    }

    while (v8 != -1);
  }

  v11 = *(a1 + 48);
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  if (v11)
  {
    v12 = *(a1 + 96);
    do
    {
      v13 = v11;
      v11 = *(v11 + 8);
      *(v13 + 8) = v12;
      v12 = v13;
    }

    while (v11);
    *(a1 + 96) = v13;
  }

  *(a1 + 16) = *(a1 + 8);
  *(a1 + 32) = 0;
  v14 = (*(**(a1 + 128) + 24))(*(a1 + 128));
  if (v14 == -1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v26 = fst::LogMessage::LogMessage(&v35, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Cannot perform phonetic match since LG FST is empty", 51);
  }

  else
  {
    if (a2[1] - *a2 == a3[1] - *a3)
    {
      kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::insertTracebackLink(a1, v14, 0, 0, -1, 0, 0, 0.0);
      kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ProcessNonemitting(a1, *(a1 + 168));
      v15 = *a2;
      if (a2[1] != *a2)
      {
        v16 = 0;
        do
        {
          if (kaldi::g_kaldi_verbose_level >= 5)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Frame ", 6);
            MEMORY[0x1B8C84C00](v17, v16);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
            v15 = *a2;
          }

          v18 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ProcessEmitting(a1, *(v15 + 4 * v16), *(*a3 + 4 * v16));
          kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ProcessNonemitting(a1, v18);
          ++v16;
          v15 = *a2;
        }

        while (v16 != (a2[1] - *a2) >> 2);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v19 = fst::LogMessage::LogMessage(&v35, __p);
      v20 = fst::cerr(v19);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Allocated max tokens ", 21);
      MEMORY[0x1B8C84C30](v21, *(a1 + 32));
      fst::LogMessage::~LogMessage(&v35);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
      v22 = fst::LogMessage::LogMessage(&v35, __p);
      v23 = fst::cerr(v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "Max tokens ", 11);
      MEMORY[0x1B8C84C30](v24, *(a1 + 272));
      fst::LogMessage::~LogMessage(&v35);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      return kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::GetBestPath(a1, a4);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
    v28 = fst::LogMessage::LogMessage(&v35, __p);
    v29 = fst::cerr(v28);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Phone features size of ", 23);
    v31 = MEMORY[0x1B8C84C30](v30, (a2[1] - *a2) >> 2);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " != wildcard LM costs size of ", 30);
    MEMORY[0x1B8C84C30](v32, (a3[1] - *a3) >> 2);
  }

  fst::LogMessage::~LogMessage(&v35);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B52B24C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B52B2528(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    std::deque<int>::clear((v14 + 200));
    std::string::basic_string[abi:ne200100]<0>(&__p, "INFO");
    v17 = fst::LogMessage::LogMessage((v15 - 65), &__p);
    v18 = fst::cerr(v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Max tokens ", 11);
    v20 = MEMORY[0x1B8C84C00](v19, *(v14 + 188));
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " exceeded - ", 12);
    v22 = (*(*v16 + 16))(v16);
    v23 = strlen(v22);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    fst::LogMessage::~LogMessage((v15 - 65));
    if (a14 < 0)
    {
      operator delete(__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B52B24A8);
  }

  JUMPOUT(0x1B52B2508);
}

void sub_1B52B25F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B52B2508);
}

uint64_t quasar::PhoneticMatchDecoder::runImpl(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(*a3 + 448);
  v54 = *(*a3 + 440);
  v55 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::PhoneticMatchDecoder::FactoryChoirJournalistNursery::FactoryChoirJournalistNursery(&v56, &v54);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  v65 = *(a2 + 656) ^ 1;
  kaldi::quasar::Vocab::OOvWord(a1, &v37);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p);
  }

  __p = v37;
  v64 = v38;
  MEMORY[0x1B8C84820](&v57, "n/a");
  MEMORY[0x1B8C84820](&v60, "n/a");
  v59 = 0;
  v56 = 0.0;
  v61 = 0;
  v9 = *a3;
  if ((*(*a3 + 644) & 1) == 0)
  {
    if (quasar::gLogLevel >= 2)
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
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "No LM cost found. Skipping PM. Hint: Did you include lattice-lm-rescore?", 72);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v37);
    }

    goto LABEL_34;
  }

  v56 = -*(v9 + 648);
  v10 = *(a1 + 668);
  v62 = v10 < v56;
  if (v10 < v56)
  {
    if (quasar::gLogLevel < 4)
    {
LABEL_12:
      v13 = 0;
      goto LABEL_35;
    }

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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "LVCSR LM logprob=", 17);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " is greater than threshold ", 27);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ". Skipping PM.", 14);
LABEL_11:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v37);
    goto LABEL_12;
  }

  v14 = *(v9 + 368);
  if (!v14)
  {
    quasar::Decoder::calculateNBest(a2, a3, *(*a4 + 16));
    v14 = *(*a3 + 368);
  }

  v16 = v14;
  v15 = *v14;
  if (v16[1] == v15)
  {
LABEL_34:
    v13 = 2;
    goto LABEL_35;
  }

  v17 = (v15 + 24 * *(a2 + 656));
  quasar::TextProc::GetOrthography(v17, 1, &v37);
  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57);
  }

  v57 = v37;
  v58 = v38;
  if (quasar::gLogLevel >= 5)
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
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "pmInput=", 9);
    if (v58 >= 0)
    {
      v19 = &v57;
    }

    else
    {
      v19 = v57;
    }

    if (v58 >= 0)
    {
      v20 = HIBYTE(v58);
    }

    else
    {
      v20 = *(&v57 + 1);
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "", 1);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v37);
  }

  v22 = *(a1 + 960);
  if (v22 && !quasar::URegularExpressionWrapper::isMatch(v22, &v57))
  {
    LODWORD(v59) = 0;
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_12;
    }

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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Not a match with the regex whitelist. Skipping PM.", 50);
    goto LABEL_11;
  }

  LODWORD(v59) = 1;
  v23 = *(a1 + 976);
  if (v23 && quasar::URegularExpressionWrapper::isMatch(v23, &v57))
  {
    HIDWORD(v59) = 1;
    if (quasar::gLogLevel < 4)
    {
      goto LABEL_12;
    }

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
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Matches the regex blacklist. Skipping PM.", 41);
    goto LABEL_11;
  }

  HIDWORD(v59) = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  quasar::PhoneticMatchDecoder::applyPlaceholders(a1, v17, v32);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  quasar::PhoneticMatchDecoder::getPhoneSegmentation(v25, v32, *a3 + 648, v34);
  memset(v28, 0, sizeof(v28));
  if (quasar::PhoneticMatchDecoder::doPm(a1, v26, v34, &v29, v28, &v36, &v66, v67))
  {
    memset(&v27[10], 0, 24);
    std::string::basic_string[abi:ne200100]<0>(v27, ",");
    quasar::split(a1 + 744, v27, 0, &v37);
  }

  v13 = 2;
  *&v37 = v28;
  std::vector<quasar::PhoneticMatchResult>::__destroy_vector::operator()[abi:ne200100](&v37);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  *&v37 = v32;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v37);
  *&v37 = v33;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v37);
  *&v37 = v34;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v37);
  *&v37 = v35;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v37);
LABEL_35:
  quasar::PhoneticMatchDecoder::FactoryChoirJournalistNursery::~FactoryChoirJournalistNursery(&v56);
  return v13;
}

void sub_1B52B3554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a63);
  a63 = &a21;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a63);
  a63 = &a25;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a63);
  a25 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a25);
  quasar::PhoneticMatchResult::~PhoneticMatchResult(&a31);
  a31 = &a41;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = &a44;
  std::vector<quasar::PhoneticMatchResult>::__destroy_vector::operator()[abi:ne200100](&a31);
  if (__p)
  {
    a48 = __p;
    operator delete(__p);
  }

  a31 = &a50;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = &a53;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = &a56;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a31);
  a31 = &a59;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&a31);
  quasar::PhoneticMatchDecoder::FactoryChoirJournalistNursery::~FactoryChoirJournalistNursery(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

void quasar::PhoneticMatchDecoder::FactoryChoirJournalistNursery::~FactoryChoirJournalistNursery(quasar::PhoneticMatchDecoder::FactoryChoirJournalistNursery *this)
{
  if (*(this + 120) == 1)
  {
    v2 = *(this + 20);
    std::string::basic_string[abi:ne200100]<0>(v18, "PM-input");
    std::operator+<char>();
    v3 = std::string::append(&v16, "");
    v4 = *&v3->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    quasar::SpeechRequestResultData::addDumpAA(v2, v18, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v5 = *(this + 20);
    std::string::basic_string[abi:ne200100]<0>(v18, "PM-output");
    std::operator+<char>();
    v6 = std::string::append(&v16, "");
    v7 = *&v6->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    quasar::SpeechRequestResultData::addDumpAA(v5, v18, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v8 = *(this + 20);
    std::string::basic_string[abi:ne200100]<0>(v18, "PM-used");
    LOBYTE(v9) = *(this + 88);
    quasar::SpeechRequestResultData::addDumpAA(v8, v18, 1, v9);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v10 = *(this + 20);
    std::string::basic_string[abi:ne200100]<0>(v18, "PM-partial");
    LOBYTE(v11) = *(this + 89);
    quasar::SpeechRequestResultData::addDumpAA(v10, v18, 1, v11);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }

    v12 = *(this + 20);
    std::string::basic_string[abi:ne200100]<0>(v18, "PM-decoder");
    quasar::SpeechRequestResultData::addDumpAA(v12, v18, this + 4);
    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  v13 = *(this + 17);
  v14 = *(this + 18);
  while (v13 != v14)
  {
    if (*(v13 + 70) == 1)
    {
      quasar::SpeechRequestResultData::storePhoneticMatchResult(*(this + 20), v13);
    }

    v13 = (v13 + 72);
  }

  quasar::SpeechRequestResultData::storePhoneticMatchDecoderStats(*(this + 20), this + 6, *(this + 90), *(this + 8) != 0, *(this + 9) != 0, *(this + 31), *(this + 32));
  v15 = *(this + 21);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v18[0] = this + 136;
  std::vector<quasar::PhoneticMatchResult>::__destroy_vector::operator()[abi:ne200100](v18);
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void quasar::PhoneticMatchDecoder::~PhoneticMatchDecoder(quasar::PhoneticMatchDecoder *this)
{
  quasar::PhoneticMatchDecoder::~PhoneticMatchDecoder(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D0B5F8;
  std::__hash_table<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::__unordered_map_hasher<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::__unordered_map_equal<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>>>::~__hash_table(this + 1032);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 992);
  v2 = *(this + 123);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 121);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<kaldi::quasar::Phonomap>::reset[abi:ne200100](this + 119, 0);
  std::unique_ptr<kaldi::quasar::Phonomap>::reset[abi:ne200100](this + 118, 0);
  v4 = *(this + 117);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 111);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 109);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 107);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 847) < 0)
  {
    operator delete(*(this + 103));
  }

  if (*(this + 823) < 0)
  {
    operator delete(*(this + 100));
  }

  if (*(this + 791) < 0)
  {
    operator delete(*(this + 96));
  }

  if (*(this + 767) < 0)
  {
    operator delete(*(this + 93));
  }

  v8 = *(this + 89);
  if (v8)
  {
    *(this + 90) = v8;
    operator delete(v8);
  }

  if (*(this + 703) < 0)
  {
    operator delete(*(this + 85));
  }

  if (*(this + 647) < 0)
  {
    operator delete(*(this + 78));
  }

  if (*(this + 623) < 0)
  {
    operator delete(*(this + 75));
  }

  if (*(this + 599) < 0)
  {
    operator delete(*(this + 72));
  }

  if (*(this + 575) < 0)
  {
    operator delete(*(this + 69));
  }

  if (*(this + 551) < 0)
  {
    operator delete(*(this + 66));
  }

  if (*(this + 527) < 0)
  {
    operator delete(*(this + 63));
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

void std::allocator_traits<std::allocator<quasar::PhoneticMatchAlignmentSpan>>::destroy[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,0>(uint64_t a1, void **a2)
{
  v3 = a2 + 6;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2 + 3;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a2;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t quasar::PhoneticMatchDecoder::FactoryChoirJournalistNursery::FactoryChoirJournalistNursery(uint64_t a1, void *a2)
{
  *a1 = -971228160;
  std::string::basic_string[abi:ne200100]<0>((a1 + 8), "<n/a>");
  *(a1 + 32) = -1;
  std::string::basic_string[abi:ne200100]<0>((a1 + 40), "<n/a>");
  std::string::basic_string[abi:ne200100]<0>((a1 + 64), "<n/a>");
  *(a1 + 88) = 0;
  *(a1 + 90) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 96), "<n/a>");
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  v4 = a2[1];
  *(a1 + 160) = *a2;
  *(a1 + 168) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1B52B3DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::__unordered_map_hasher<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::__unordered_map_equal<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::__unordered_map_hasher<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::__unordered_map_equal<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::__unordered_map_hasher<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::__unordered_map_equal<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<quasar::URegularExpressionWrapper> const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<quasar::URegularExpressionWrapper> const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t **std::unique_ptr<kaldi::quasar::Phonomap>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v4 = (v2 + 1);
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    return MEMORY[0x1B8C85350](v2, 0x1060C40D0C22456);
  }

  return result;
}

void *std::__shared_ptr_emplace<quasar::URegularExpressionWrapper>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<quasar::URegularExpressionWrapper>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05C98;
  quasar::URegularExpressionWrapper::URegularExpressionWrapper(a1 + 3, a2, 0);
  return a1;
}

uint64_t *kaldi::quasar::Phonomap::Phonomap(uint64_t *a1, uint64_t a2, uint64_t a3, float a4)
{
  v8 = (a1 + 1);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v9 = fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read(a2);
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
    v9 = *a1;
  }

  a1[5] = (*(*v9 + 112))(v9);
  v11 = (*(**a1 + 120))();
  a1[4] = v11;
  memset(&v36, 0, sizeof(v36));
  v12 = (*(*v11 + 120))(v11);
  std::vector<int>::resize(&v36, v12);
  v13 = (*(*a1[5] + 120))(a1[5]);
  std::vector<std::vector<float>>::resize(v8, v13, &v36);
  v14 = *(*(*a1 + 8) + 72) - *(*(*a1 + 8) + 64);
  if ((v14 >> 3) >= 1)
  {
    v15 = 0;
    v16 = (v14 >> 3) & 0x7FFFFFFF;
    do
    {
      v17 = *(*(*(*(*a1 + 8) + 64) + 8 * v15) + 24);
      v18 = *(*(*(*(*a1 + 8) + 64) + 8 * v15) + 32) - v17;
      if (v18)
      {
        v19 = v18 >> 4;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        v21 = (v17 + 4);
        do
        {
          v22 = *v21;
          v23 = (*(*a1[4] + 96))(a1[4], a3);
          v24 = v21[1];
          if (v23 == v22)
          {
            v24 = v24 * a4;
          }

          *(*(*v8 + 24 * *(v21 - 1)) + 4 * *v21) = v24;
          v21 += 4;
          --v20;
        }

        while (v20);
      }

      ++v15;
    }

    while (v15 != v16);
  }

  *(a1 + 12) = (*(*a1[4] + 96))(a1[4], a3);
  if ((*(*a1[5] + 120))(a1[5]) >= 0x101)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v25 = fst::LogMessage::LogMessage(&v35, __p);
    v26 = fst::cerr(v25);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Greated than 256 rec symbols (phones) in phonomap ", 50);
    v28 = *(a2 + 23);
    v29 = v28 >= 0 ? a2 : *a2;
    v30 = v28 >= 0 ? *(a2 + 23) : *(a2 + 8);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " can't be supported", 19);
    fst::LogMessage::~LogMessage(&v35);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v36.__begin_)
  {
    v36.__end_ = v36.__begin_;
    operator delete(v36.__begin_);
  }

  return a1;
}

void sub_1B52B44D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a20);
  v23 = *v21;
  *v21 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(a1);
}