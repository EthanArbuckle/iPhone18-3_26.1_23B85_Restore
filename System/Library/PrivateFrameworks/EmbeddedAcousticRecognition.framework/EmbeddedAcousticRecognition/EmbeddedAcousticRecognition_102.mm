uint64_t quasar::TextSanitizer::sanitize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) != 1)
  {
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
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v18 = 0u;
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v18, "TextSanitizer is not initialized");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v18);
  }

  if (*(a2 + 23) < 0)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      std::string::__init_copy_ctor_external(&v17, *a2, v2);
      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    v17 = *a2;
LABEL_7:
    v3 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    size = v17.__r_.__value_.__l.__size_;
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    if (!size)
    {
LABEL_43:
      quasar::TextSanitizer::remapEmojiUnicode();
    }

    v5 = 0;
    v6 = SHIBYTE(v17.__r_.__value_.__r.__words[2]) >> 63;
    while (1)
    {
      v7 = v17.__r_.__value_.__r.__words[0];
      if (v6)
      {
        v8 = v17.__r_.__value_.__r.__words[0];
      }

      else
      {
        v8 = &v17;
      }

      v9 = v8->__r_.__value_.__s.__data_[v5];
      if (v9 == 13 || v9 == 10)
      {
        v8->__r_.__value_.__s.__data_[v5] = 32;
        v3 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v7 = v17.__r_.__value_.__r.__words[0];
      }

      if (v3 >= 0)
      {
        v7 = &v17;
      }

      v11 = v7->__r_.__value_.__s.__data_[v5];
      if (v11 > 0x1F)
      {
        goto LABEL_29;
      }

      if (v11 > 0xD || ((1 << v11) & 0x2600) == 0)
      {
        break;
      }

LABEL_37:
      ++v5;
      v3 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      v6 = SHIBYTE(v17.__r_.__value_.__r.__words[2]) >> 63;
      v15 = v17.__r_.__value_.__l.__size_;
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = SHIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      if (v15 <= v5)
      {
        goto LABEL_43;
      }
    }

    v7->__r_.__value_.__s.__data_[v5] = 32;
LABEL_29:
    v13 = v11 > 0x1B || ((1 << v11) & 0xA12000C) == 0;
    if (!v13 || v11 == 127)
    {
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v17;
      }

      else
      {
        v14 = v17.__r_.__value_.__r.__words[0];
      }

      v14->__r_.__value_.__s.__data_[v5] = 32;
    }

    goto LABEL_37;
  }

  if (quasar::gLogLevel >= 6)
  {
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
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v18 = 0u;
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "Empty string received.", 22);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v18);
  }

  return 2;
}

void quasar::EagerTriggerConfig::Register(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  if (v5)
  {
    v7 = &v22;
    std::string::basic_string[abi:ne200100](&v22, v5 + 1);
    if ((v24 & 0x80u) != 0)
    {
      v7 = v22;
    }

    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    memmove(v7, v8, v5);
    *&v7[v5] = 45;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v22, "");
  }

  if ((v24 & 0x80u) == 0)
  {
    v9 = v24;
  }

  else
  {
    v9 = v23;
  }

  v10 = v20;
  std::string::basic_string[abi:ne200100](v20, v9 + 17);
  if (v21 < 0)
  {
    v10 = v20[0];
  }

  if (v9)
  {
    if ((v24 & 0x80u) == 0)
    {
      v11 = &v22;
    }

    else
    {
      v11 = v22;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "silence-posterior");
  std::string::basic_string[abi:ne200100]<0>(__p, "If silence posteriors are available, trigger only when the average silence posterior is >= this value. Otherwise, ignore this value.");
  quasar::SystemConfig::Register<float>(a2, v20, a1, __p, 0, 41, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if ((v24 & 0x80u) == 0)
  {
    v12 = v24;
  }

  else
  {
    v12 = v23;
  }

  v13 = v20;
  std::string::basic_string[abi:ne200100](v20, v12 + 14);
  if (v21 < 0)
  {
    v13 = v20[0];
  }

  if (v12)
  {
    if ((v24 & 0x80u) == 0)
    {
      v14 = &v22;
    }

    else
    {
      v14 = v22;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, "silence-window");
  std::string::basic_string[abi:ne200100]<0>(__p, "Sliding window size (in frames) for silence posterior average. Silence posterior is ignored if this value is <= 0.");
  quasar::SystemConfig::Register<int>(a2, v20, a1 + 4, __p, 0, 41, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if ((v24 & 0x80u) == 0)
  {
    v15 = v24;
  }

  else
  {
    v15 = v23;
  }

  v16 = v20;
  std::string::basic_string[abi:ne200100](v20, v15 + 15);
  if (v21 < 0)
  {
    v16 = v20[0];
  }

  if (v15)
  {
    if ((v24 & 0x80u) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22;
    }

    memmove(v16, v17, v15);
  }

  strcpy(v16 + v15, "stable-partials");
  std::string::basic_string[abi:ne200100]<0>(__p, "Trigger only after the number of stable partial results (one per frame) exceeds this value. (Eager's stabilization is unrelated to ResultStreamStabilizer stabilization). Regardless of this value, the trigger always looks for at least 1 stable partial result.");
  quasar::SystemConfig::Register<int>(a2, v20, a1 + 8, __p, 0, 41, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v24 < 0)
  {
    operator delete(v22);
  }
}

void sub_1B57A54B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void quasar::EagerConfig::Register(quasar::EagerConfig *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "early");
  quasar::EagerTriggerConfig::Register(this, a2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "backoff");
  quasar::EagerTriggerConfig::Register(this + 12, a2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "max-triggers");
  std::string::basic_string[abi:ne200100]<0>(v4, "Ignored if <= 0: Maximum number of eager result triggers. Once exceeded, no more eager results are created.");
  quasar::SystemConfig::Register<int>(a2, __p, this + 24, v4, 0, 41, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "require-silence-posterior");
  std::string::basic_string[abi:ne200100]<0>(v4, "If true, disable eager for requests that don't have silence posteriors. Defaults to true since 'false eager results' increase without silence posteriors. Set this to false for experimentation or if the number of 'false eager results' is acceptable.");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 28, v4, 0, 41, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "debug");
  std::string::basic_string[abi:ne200100]<0>(v4, "Debug mode: require-silence-posterior=false and trigger every frame without affecting state machine");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 29, v4, 0, 14, 2, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B57A56E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_1B57A58FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::EagerFeatures::~EagerFeatures(quasar::EagerFeatures *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t quasar::EagerDecision::eval(quasar::EagerDecision *this, const quasar::EagerFeatures *a2, BOOL *a3, int *a4)
{
  *a3 = 0;
  *a4 = 0;
  v8 = (this + 464);
  *(this + 98) = *(this + 116);
  *(this + 396) = *(this + 468);
  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 400), *(this + 59), *(this + 60), 0xAAAAAAAAAAAAAAABLL * ((*(this + 60) - *(this + 59)) >> 3));
  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 53, *(this + 62), *(this + 63), (*(this + 63) - *(this + 62)) >> 2);
  v9 = (this + 520);
  *(this + 56) = *(this + 65);
  *(this + 455) = *(this + 527);
  v10 = *(a2 + 4);
  *(this + 116) = *a2;
  *(this + 468) = v10;
  if (v8 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 472), *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 62, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v11 = *(a2 + 7);
  *(this + 527) = *(a2 + 63);
  *v9 = v11;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v64);
  if (quasar::gLogLevel >= 5)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "trigger=", 8);
    v13 = MEMORY[0x1B8C84BD0](v12, *(this + 304));
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " numTriggers=", 13);
    v15 = MEMORY[0x1B8C84C00](v14, *(this + 77));
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " thisFrame=", 11);
    quasar::operator<<(v16, v8);
  }

  if (*(this + 32) == 1 && *(*(this + 48) + 4) >= 1)
  {
    quasar::MovingAverage::add((this + 536), *(this + 131));
    if (quasar::gLogLevel < 5)
    {
      v21 = 1;
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, " avgSilPost={", 13);
      quasar::MovingAverage::getAverage((this + 536));
      v17 = std::ostream::operator<<();
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ",", 1);
      Count = quasar::MovingAverage::getCount((this + 536));
      v20 = MEMORY[0x1B8C84C30](v18, Count);
      v21 = 1;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "}", 1);
    }
  }

  else
  {
    v21 = 0;
  }

  if (*(this + 304) == 1)
  {
    v22 = *(this + 43);
    v23 = *(this + 44) - v22;
    v24 = *(this + 62);
    if (v23 != *(this + 63) - v24 || memcmp(v22, v24, v23))
    {
      quasar::MovingAverage::clear((this + 536));
      *(this + 150) = 0;
      quasar::EagerDecision::setTrigger(this, 0, v8);
      *a3 = 1;
    }
  }

  if (!*a3 && (*(this + 304) & 1) == 0)
  {
    v25 = *(this + 6);
    if (v25 < 1 || *(this + 77) < v25)
    {
      if (v21)
      {
        LOBYTE(v21) = !quasar::MovingAverage::full((this + 536)) || quasar::MovingAverage::getAverage((this + 536)) < **(this + 48);
      }

      if (*(this + 468) == 1 && (v26 = *(this + 62), v27 = *(this + 63), v26 != v27) && (v28 = *(this + 53), v27 - v26 == *(this + 54) - v28) && !memcmp(v26, v28, v27 - v26) && *v9 >= 1 && (v44 = *(this + 112), v44 >= 1))
      {
        if (*v9 > v44)
        {
          ++*(this + 150);
        }
      }

      else
      {
        *(this + 150) = 0;
      }

      if (quasar::gLogLevel >= 5)
      {
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, " numStable=", 11);
        MEMORY[0x1B8C84C00](v29, *(this + 150));
      }

      v30 = *(this + 150);
      if (v30 >= 1 && !(v21 & 1 | ((*(a2 + 66) & 1) == 0)) && v30 >= *(*(this + 48) + 8) && *(this + 528) == 1)
      {
        quasar::EagerDecision::setTrigger(this, 1u, v8);
        *a4 = *(this + 77);
      }
    }
  }

  if (quasar::gLogLevel >= 5)
  {
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
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    std::stringbuf::str();
    if ((v46 & 0x80u) == 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = __p[0];
    }

    if ((v46 & 0x80u) == 0)
    {
      v32 = v46;
    }

    else
    {
      v32 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v31, v32);
    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
  }

  if (*a3)
  {
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 5, "INVALID ", 8);
    v34 = MEMORY[0x1B8C84C00](v33, *v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " ", 1);
    if (quasar::gLogLevel >= 5)
    {
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
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "INVALIDATED ", 12);
      MEMORY[0x1B8C84C00](v35, *v8);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
    }
  }

  if (*a4)
  {
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 5, "TRIGGER ", 8);
    v37 = MEMORY[0x1B8C84C00](v36, *v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ", 1);
    if (quasar::gLogLevel >= 5)
    {
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
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "TRIGGERED ", 10);
      MEMORY[0x1B8C84C00](v38, *v8);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
    }
  }

  v39 = *a4;
  if (*a3 && v39)
  {
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
    v48 = 0u;
    v49 = 0u;
    v47 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "Invalidate and trigger shouldn't happen on the same frame", 57);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v47);
  }

  if (*(this + 529) == 1 && !v39)
  {
    quasar::EagerDecision::setTrigger(this, 1u, v8);
    *a4 = *(this + 77);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 5, "FORCE TRIGGER ", 14);
    v41 = MEMORY[0x1B8C84C00](v40, *v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " ", 1);
    if (quasar::gLogLevel >= 5)
    {
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
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v47);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "FORCE TRIGGERED ", 16);
      MEMORY[0x1B8C84C00](v42, *v8);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v47);
    }
  }

  v64 = *MEMORY[0x1E69E54E8];
  *(&v64 + *(v64 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v65 = MEMORY[0x1E69E5548] + 16;
  if (v67 < 0)
  {
    operator delete(v66[7].__locale_);
  }

  v65 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v66);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v68);
}

void quasar::EagerDecision::setTrigger(quasar::EagerDecision *this, unsigned int a2, const quasar::EagerFeatures *a3)
{
  if (*(this + 304) == a2)
  {
    memset(v14, 0, sizeof(v14));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Bad state transition: triggered ", 32);
    v11 = MEMORY[0x1B8C84BD0](v10, *(this + 304));
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " -> ", 4);
    MEMORY[0x1B8C84BD0](v12, a2);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
  }

  *(this + 304) = a2;
  v5 = *a3;
  *(this + 316) = *(a3 + 4);
  *(this + 78) = v5;
  if ((this + 312) == a3)
  {
    v8 = *(a3 + 7);
    *(this + 375) = *(a3 + 63);
    *(this + 46) = v8;
    if (!a2)
    {
      return;
    }
  }

  else
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((this + 320), *(a3 + 1), *(a3 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 2) - *(a3 + 1)) >> 3));
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 43, *(a3 + 4), *(a3 + 5), (*(a3 + 5) - *(a3 + 4)) >> 2);
    v6 = *(this + 304);
    v7 = *(a3 + 63);
    *(this + 46) = *(a3 + 7);
    *(this + 375) = v7;
    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  ++*(this + 77);
  *(this + 48) = this + 12;
  if (*(this + 32) == 1)
  {
    v9 = *(this + 4);
    if (v9 >= 1)
    {

      quasar::MovingAverage::init((this + 536), v9);
    }
  }
}

BOOL quasar::EagerDecision::matches(quasar::EagerDecision *this, int a2)
{
  if (*(this + 304) == 1 && *(this + 77) == a2 && (v2 = *(this + 62), v3 = *(this + 63) - v2, v4 = *(this + 43), v3 == *(this + 44) - v4))
  {
    return memcmp(v2, v4, v3) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::getMode(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 5 && **a1 == 1701274994 && *(*a1 + 4) == 120)
    {
      return 0;
    }

    if (*(a1 + 8) != 9 || (**a1 == 0x72702D7865676572 ? (v5 = *(*a1 + 8) == 101) : (v5 = 0), !v5))
    {
      if (*(a1 + 8) != 10 || (**a1 == 0x6F702D7865676572 ? (v6 = *(*a1 + 8) == 29811) : (v6 = 0), !v6))
      {
        if (*(a1 + 8) != 3)
        {
          goto LABEL_49;
        }

        v2 = *a1;
LABEL_27:
        v7 = *v2;
        v8 = *(v2 + 2);
        if (v7 == 25449 && v8 == 117)
        {
          return 3;
        }

LABEL_49:
        memset(v15, 0, sizeof(v15));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Invalid segmentation mode: ", 27);
        std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13, a1);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v15);
      }

      return 2;
    }
  }

  else
  {
    v1 = *(a1 + 23);
    if (v1 <= 8)
    {
      v2 = a1;
      if (v1 != 3)
      {
        if (v1 != 5)
        {
          goto LABEL_49;
        }

        if (*a1 != 1701274994 || *(a1 + 4) != 120)
        {
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_27;
    }

    if (v1 != 9)
    {
      if (v1 != 10)
      {
        goto LABEL_49;
      }

      if (*a1 != 0x6F702D7865676572 || *(a1 + 8) != 29811)
      {
        goto LABEL_49;
      }

      return 2;
    }

    if (*a1 != 0x72702D7865676572 || *(a1 + 8) != 101)
    {
      goto LABEL_49;
    }
  }

  return 1;
}

uint64_t quasar::SegmentationOptions::options@<X0>(quasar::SegmentationOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 336;
  v3[3] = this + 496;
  v3[4] = this + 656;
  v3[5] = this + 800;
  v3[6] = this + 944;
  v3[7] = this + 1088;
  v3[8] = this + 1232;
  v3[9] = this + 1376;
  v3[10] = this + 1520;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 0xBuLL);
}

void quasar::boundariesUtf16ToUtf8(_DWORD **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (quasar::gLogLevel >= 6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "ICU boundary conversion:", 24);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(&v18);
  }

  v6 = 0;
  v17 = 0;
  v7 = *a1;
  do
  {
    if (v7 == a1[1])
    {
      break;
    }

    if (v6 == *v7)
    {
      std::vector<int>::push_back[abi:ne200100](a3, &v17);
      if (quasar::gLogLevel >= 6)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " boundary (utf16 -> utf8): ", 27);
        v9 = MEMORY[0x1B8C84C00](v8, v6);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " -> ", 4);
        MEMORY[0x1B8C84C00](v10, v17);
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v18);
      }
    }

    if (v6 >= (a2[1] - *a2) >> 1)
    {
      break;
    }

    v11 = *(*a2 + 2 * v6);
    if (v11 > 0x7F)
    {
      if ((v11 & 0xF800) == 0xD800)
      {
        v17 += 2;
        if (quasar::gLogLevel >= 6)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "  surog: ", 9);
          *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 8;
          MEMORY[0x1B8C84C50]();
          goto LABEL_20;
        }
      }

      else if ((v11 & 0xF800) != 0)
      {
        v17 += 3;
        if (quasar::gLogLevel >= 6)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "  byte3: ", 9);
          *(v15 + *(*v15 - 24) + 8) = *(v15 + *(*v15 - 24) + 8) & 0xFFFFFFB5 | 8;
          MEMORY[0x1B8C84C50]();
          goto LABEL_20;
        }
      }

      else
      {
        v17 += 2;
        if (quasar::gLogLevel >= 6)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "  byte2: ", 9);
          *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
          MEMORY[0x1B8C84C50]();
          goto LABEL_20;
        }
      }
    }

    else
    {
      ++v17;
      if (quasar::gLogLevel >= 6)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v18);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "  ascii: ", 9);
        *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
        MEMORY[0x1B8C84C50]();
LABEL_20:
        quasar::QuasarTraceMessage::~QuasarTraceMessage(&v18);
      }
    }

    v7 += v6 == *v7;
  }

  while (v6++ < (a2[1] - *a2) >> 1);
}

void sub_1B57A6A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarTraceMessage::~QuasarTraceMessage(va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::adjustRanges@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  v6 = *a1;
  v7 = a1[1];
  while (v6 != v7)
  {
    std::deque<int>::push_back(v34, v6);
    v8 = v6 + 1;
    std::deque<int>::push_back(v34, v8);
    v6 = v8 + 15;
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v35.i64[1];
    v14 = v35.i64[1];
    do
    {
      if (v14)
      {
        v15 = *(*(*(&v34[0] + 1) + ((v35.i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v35.i16[0] & 0x3FF));
        while (v15 <= v12)
        {
          std::vector<int>::push_back[abi:ne200100](&__p, &v30);
          v16 = vaddq_s64(v35, xmmword_1B5AE01E0);
          v35 = v16;
          v17 = v16.i64[0];
          if (v16.i64[0] >= 0x800uLL)
          {
            operator delete(**(&v34[0] + 1));
            v17 = v35.i64[0] - 1024;
            *(&v34[0] + 1) += 8;
            v35.i64[0] -= 1024;
            v13 = v35.i64[1];
            if (!v35.i64[1])
            {
LABEL_17:
              v14 = 0;
              break;
            }
          }

          else
          {
            v13 = v16.i64[1];
            if (!v16.i64[1])
            {
              goto LABEL_17;
            }
          }

          v15 = *(*(*(&v34[0] + 1) + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF));
          v14 = v13;
        }

        v9 = *(a2 + 23);
      }

      v18 = *a2;
      if ((v9 & 0x80u) == 0)
      {
        v18 = a2;
      }

      v19 = *(v18 + v11);
      if ((v19 & 0xF8) == 0xF0)
      {
        v20 = 4;
      }

      else if ((v19 & 0xF0) == 0xE0)
      {
        v20 = 3;
      }

      else if ((v19 & 0xE0) == 0xC0)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v11 = (v12 + v20);
      ++v30;
      if ((v9 & 0x80u) == 0)
      {
        v21 = v9;
      }

      else
      {
        v21 = a2[1];
      }

      v12 += v20;
    }

    while (v21 > v11);
    if (v13)
    {
      goto LABEL_35;
    }
  }

  else
  {
    for (; v35.i64[1]; v35.i64[0] -= 1024)
    {
LABEL_35:
      while (1)
      {
        std::vector<int>::push_back[abi:ne200100](&__p, &v30);
        v22 = vaddq_s64(v35, xmmword_1B5AE01E0);
        v35 = v22;
        if (v22.i64[0] >= 0x800uLL)
        {
          break;
        }

        if (!v22.i64[1])
        {
          goto LABEL_39;
        }
      }

      operator delete(**(&v34[0] + 1));
      *(&v34[0] + 1) += 8;
    }
  }

LABEL_39:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__init_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>(a3, *a1, a1[1], (a1[1] - *a1) >> 6);
  v23 = __p;
  v24 = a1[1] - *a1;
  if (v24)
  {
    v25 = v24 >> 6;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    v26 = (*a3 + 4);
    v27 = (__p + 4);
    do
    {
      *(v26 - 1) = *(v27 - 1);
      v28 = *v27;
      v27 += 2;
      *v26 = v28 - 1;
      v26 += 16;
      --v25;
    }

    while (v25);
    goto LABEL_46;
  }

  if (__p)
  {
LABEL_46:
    v32 = v23;
    operator delete(v23);
  }

  return std::deque<int>::~deque[abi:ne200100](v34);
}

void sub_1B57A6D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<int>::~deque[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void quasar::icuSegmentation(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  memset(v47, 0, sizeof(v47));
  memset(&v46, 0, sizeof(v46));
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v4 = *(a1 + 200);
  v5 = *(a1 + 208);
  if (v4 == v5)
  {
    size = 0;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v6 = v4 + 72;
    do
    {
      v7 = *(v6 + 23);
      if (v7 >= 0)
      {
        v8 = v6;
      }

      else
      {
        v8 = *v6;
      }

      if (v7 >= 0)
      {
        v9 = *(v6 + 23);
      }

      else
      {
        v9 = *(v6 + 8);
      }

      std::string::append(&v46, v8, v9);
      v10 = v6 + 64;
      v6 += 136;
    }

    while (v10 != v5);
    v11 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    size = v46.__r_.__value_.__l.__size_;
    v13 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v14 = &v46;
  }

  else
  {
    v14 = v13;
  }

  if ((v11 & 0x80u) == 0)
  {
    v15 = v11;
  }

  else
  {
    v15 = size;
  }

  quasar::utf8::utf8ToUtf16(v14, v15, v35);
  if ((v36 & 1) == 0)
  {
    v48 = *v35;
    v49 = v35[2];
    memset(v35, 0, sizeof(v35));
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    *v51 = 0u;
    *v52 = 0u;
    v50 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
    if (SHIBYTE(v49) >= 0)
    {
      v29 = &v48;
    }

    else
    {
      v29 = v48;
    }

    if (SHIBYTE(v49) >= 0)
    {
      v30 = HIBYTE(v49);
    }

    else
    {
      v30 = *(&v48 + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, v29, v30);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v50);
  }

  v16 = v35[0];
  v17 = *&v35[1];
  memset(v35, 0, sizeof(v35));
  v40 = 1;
  v41 = v16;
  v42 = v17;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(&v37);
  tl::detail::expected_storage_base<std::vector<unsigned short>,std::string,false,false>::~expected_storage_base(v35);
  v34[1] = 0;
  ubrk_open();
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v34[0] = ubrk_first();
  std::vector<int>::push_back[abi:ne200100](&v37, v34);
  while (1)
  {
    v34[0] = ubrk_next();
    if (v34[0] == -1)
    {
      break;
    }

    std::vector<int>::push_back[abi:ne200100](&v37, v34);
    if (quasar::gLogLevel >= 6)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *v51 = 0u;
      *v52 = 0u;
      v50 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "ICU (utf16) segmentation boundary: ", 35);
      MEMORY[0x1B8C84C00](v18, v34[0]);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v50);
    }
  }

  ubrk_close();
  v32 = 0;
  v33 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v37, v38, (v38 - v37) >> 2);
  quasar::boundariesUtf16ToUtf8(&__p, &v41, v35);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  v19 = v35[0];
  if ((v35[1] - v35[0]) < 5)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    *v51 = 0u;
    *v52 = 0u;
    v50 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "Inconsistent boundary info from ICU segmenter!", 46);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v50);
  }

  v20 = (v35[1] - v35[0]) >> 2;
  if (v20 >= 2)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = *(a1 + 144);
      *&v50 = *&v19[v21];
      BYTE8(v50) = v23 | (v20 - 1 > v22);
      *(&v50 + 9) = 0;
      *v51 = 0u;
      *v52 = 0u;
      v53 = 0u;
      std::vector<quasar::TranslationPhrase::SegmentInfo>::push_back[abi:ne200100](&v43, &v50);
      if (v52[1])
      {
        *&v53 = v52[1];
        operator delete(v52[1]);
      }

      if (v51[0])
      {
        v51[1] = v51[0];
        operator delete(v51[0]);
      }

      ++v22;
      v19 = v35[0];
      v20 = (v35[1] - v35[0]) >> 2;
      v21 += 4;
    }

    while (v20 > v22);
  }

  if ((v44 - v43) > 0x40)
  {
    v24 = *(a1 + 200);
    v25 = *(a1 + 208);
    if (v24 != v25)
    {
      v26 = *(v44 - 124);
      v27 = v24 + 16;
      do
      {
        if (v27[16] > v26)
        {
          break;
        }

        std::vector<int>::push_back[abi:ne200100]((a2 + 24), v27);
        v28 = v27 + 18;
        v27 += 34;
      }

      while (v28 != v25);
    }
  }

  quasar::adjustRanges(&v43, &v46, &v50);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate((a2 + 48));
  *(a2 + 48) = v50;
  *(a2 + 64) = v51[0];
  v51[0] = 0;
  v50 = 0uLL;
  *&v48 = &v50;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v48);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v41)
  {
    operator delete(v41);
  }

  *&v50 = &v43;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v50);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  *&v50 = v47;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&v50);
}

void sub_1B57A72D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45)
{
  if (v46)
  {
    operator delete(v46);
  }

  a19 = &a26;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  a19 = &a35;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&a19);
  quasar::SegmentationResult::~SegmentationResult(v45);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::TranslationPhrase::SegmentInfo>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::TranslationPhrase::SegmentInfo>::__emplace_back_slow_path<quasar::TranslationPhrase::SegmentInfo>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 7) = *(a2 + 7);
    *v3 = v4;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 0;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    result = v3 + 64;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::SegmentationResult::~SegmentationResult(quasar::SegmentationResult *this)
{
  v3 = (this + 48);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void quasar::addAlignmentMappedSourcePrefixes(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 200);
  v3 = *(a2 + 208);
  if (v2 != v3)
  {
    v6 = 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3);
    if (v6 != (a1[7] - a1[6]) >> 6)
    {
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
      v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "Logic error: Broken SegmentationResult (this should never happen)! ", 67);
      v83 = MEMORY[0x1B8C84C30](v82, 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3));
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " vs. ", 5);
      MEMORY[0x1B8C84C30](v84, (a1[7] - a1[6]) >> 6);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v94);
    }

    v7 = 0xF0F0F0F0F0F0F0F1 * ((v3 - v2) >> 3);
    LODWORD(v93[0]) = 0;
    std::vector<float>::vector[abi:ne200100](&v94, v6);
    std::vector<std::vector<float>>::vector[abi:ne200100](v111, v7);
    if (v94)
    {
      *(&v94 + 1) = v94;
      operator delete(v94);
    }

    v9 = *a1;
    v8 = a1[1];
    if (v8 == *a1)
    {
      v9 = a1[1];
    }

    else
    {
      v10 = 0;
      do
      {
        v11 = v9 + 264 * v10;
        v12 = *(v11 + 200);
        v13 = *(v11 + 208);
        if (v12 != v13)
        {
          do
          {
            v14 = *(v12 + 104);
            v15 = *(v12 + 112) - v14;
            if (v15)
            {
              v16 = v15 >> 2;
              v17 = 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 208) - *(a2 + 200)) >> 3);
              v18 = v111[0];
              if (v16 <= 1)
              {
                v16 = 1;
              }

              while (v17)
              {
                v19 = *v14++;
                v20 = v19;
                v21 = *v18;
                v18 += 3;
                *(v21 + 4 * v10) = v20 + *(v21 + 4 * v10);
                --v17;
                if (!--v16)
                {
                  goto LABEL_16;
                }
              }

              if (quasar::gLogLevel >= 5)
              {
                v109 = 0u;
                v110 = 0u;
                v107 = 0u;
                v108 = 0u;
                v105 = 0u;
                v106 = 0u;
                v103 = 0u;
                v104 = 0u;
                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                v95 = 0u;
                v96 = 0u;
                v94 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "dropping alignment score for unaligned tags", 43);
                quasar::QuasarDebugMessage::~QuasarDebugMessage(&v94);
              }
            }

LABEL_16:
            v12 += 136;
          }

          while (v12 != v13);
          v9 = *a1;
          v8 = a1[1];
        }

        ++v10;
      }

      while (0xF83E0F83E0F83E1 * ((v8 - v9) >> 3) > v10);
    }

    v22 = *(a2 + 200);
    v23 = *(a2 + 208);
    if (quasar::gLogLevel >= 6)
    {
      v24 = v23 == v22;
      v22 = *(a2 + 208);
      if (!v24)
      {
        v25 = 0;
        v86 = *(MEMORY[0x1E69E54D8] + 64);
        v87 = *MEMORY[0x1E69E54D8];
        v85 = *(MEMORY[0x1E69E54D8] + 72);
        do
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v94);
          if (a1[1] != *a1)
          {
            v26 = 0;
            do
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v95, " ", 1);
              std::ostream::operator<<();
              ++v26;
            }

            while (0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3) > v26);
          }

          if (quasar::gLogLevel > 5)
          {
            memset(v93, 0, sizeof(v93));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v93);
            v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "alignmentCosts: source pos ", 27);
            v28 = MEMORY[0x1B8C84C00](v27, v25);
            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ":", 1);
            std::stringbuf::str();
            if ((v92 & 0x80u) == 0)
            {
              v30 = __p;
            }

            else
            {
              v30 = __p[0];
            }

            if ((v92 & 0x80u) == 0)
            {
              v31 = v92;
            }

            else
            {
              v31 = __p[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, v31);
            if (v92 < 0)
            {
              operator delete(__p[0]);
            }

            quasar::QuasarTraceMessage::~QuasarTraceMessage(v93);
          }

          *&v94 = v87;
          *(&v94 + *(v87 - 24)) = v86;
          *&v95 = v85;
          *(&v95 + 1) = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v100) < 0)
          {
            operator delete(*(&v99 + 1));
          }

          *(&v95 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(&v96);
          std::iostream::~basic_iostream();
          MEMORY[0x1B8C85200](&v102);
          ++v25;
          v22 = *(a2 + 200);
          v23 = *(a2 + 208);
        }

        while (0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3) > v25);
        v9 = *a1;
        v8 = a1[1];
      }
    }

    LODWORD(__p[0]) = 0;
    std::vector<float>::vector[abi:ne200100](&v94, 0xF83E0F83E0F83E1 * ((v8 - v9) >> 3));
    std::vector<std::vector<float>>::vector[abi:ne200100](v93, 0xF0F0F0F0F0F0F0F1 * ((v23 - v22) >> 3));
    if (v94)
    {
      *(&v94 + 1) = v94;
      operator delete(v94);
    }

    ***&v93[0] = 1065353216;
    v33 = *(a2 + 200);
    v32 = *(a2 + 208);
    v34 = 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3);
    *&v88[4] = 0;
    std::vector<float>::vector[abi:ne200100](&v94, v34);
    std::vector<std::vector<float>>::vector[abi:ne200100](__p, 0xF0F0F0F0F0F0F0F1 * ((v32 - v33) >> 3));
    if (v94)
    {
      *(&v94 + 1) = v94;
      operator delete(v94);
    }

    v36 = *(a2 + 200);
    v35 = *(a2 + 208);
    v37 = 0xF0F0F0F0F0F0F0F1 * ((v35 - v36) >> 3);
    v39 = *a1;
    v38 = a1[1];
    if (v37 <= 1)
    {
      v44 = 0xF83E0F83E0F83E1 * ((v38 - v39) >> 3);
    }

    else
    {
      v40 = v111[0];
      v41 = *&v93[0];
      v42 = *&v93[0] - 24;
      v43 = __p[0];
      v44 = 0xF83E0F83E0F83E1 * ((v38 - v39) >> 3);
      for (i = 1; i != v37; ++i)
      {
        v46 = *(v40 + 24 * i);
        v47 = *(v42 + 24 * i);
        v48 = *(v41 + 24 * i);
        *v48 = *v46 * *v47;
        v49 = v43[3 * i];
        *v49 = 0;
        if (v44 >= 2)
        {
          v50 = 0;
          v51 = v48 + 1;
          v52 = v49 + 1;
          v53 = v46 + 1;
          v54 = v47 + 1;
          do
          {
            v55 = v50 + 1;
            v57 = *(v54 - 1);
            v56 = *v54;
            v58 = *v54 < v57;
            if (*v54 < v57)
            {
              v56 = *(v54 - 1);
            }

            v51[v50] = v56 * v53[v50];
            if (v58)
            {
              v59 = v50;
            }

            else
            {
              v59 = (v50 + 1);
            }

            *&v52[v50] = v59;
            ++v54;
            ++v50;
          }

          while (v44 - 1 != v55);
        }
      }
    }

    *&v88[8] = 0;
    v89 = 0;
    v90 = 0;
    *v88 = (v44 - 1);
    if (v35 == v36)
    {
      v63 = 0;
      v64 = 0;
    }

    else
    {
      v60 = 0;
      v61 = -1;
      do
      {
        std::vector<int>::push_back[abi:ne200100](&v88[4], v88);
        v62 = 0xF0F0F0F0F0F0F0F1 * ((*(a2 + 208) - *(a2 + 200)) >> 3);
        *v88 = *(*(__p[0] + 3 * (v61 - 0xF0F0F0F0F0F0F0FLL * ((*(a2 + 208) - *(a2 + 200)) >> 3))) + 4 * *v88);
        ++v60;
        --v61;
      }

      while (v62 > v60);
      v63 = *&v88[4];
      v64 = v89;
      v39 = *a1;
      v38 = a1[1];
    }

    if (v38 != v39)
    {
      v65 = 0;
      v66 = ((v64 - v63) >> 2) - 1;
      do
      {
        if ((v66 & 0x80000000) == 0)
        {
          v67 = v66;
          v68 = -136 - 136 * v66;
          v69 = ~v66;
          while (v65 == *(*&v88[4] + 4 * v67))
          {
            std::vector<int>::push_back[abi:ne200100]((a1[6] + (v65 << 6) + 16), (*(a2 + 200) + 136 * ((v89 - *&v88[4]) >> 2) + v68 + 64));
            if (quasar::gLogLevel >= 6)
            {
              v109 = 0u;
              v110 = 0u;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v94 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v94);
              v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v94, "ALIGNMENT:", 10);
              v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, " segment #", 10);
              v72 = MEMORY[0x1B8C84C00](v71, v65);
              v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " source pos #", 13);
              v74 = MEMORY[0x1B8C84C30](v73, v69 + ((v89 - *&v88[4]) >> 2));
              v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, " source id #", 12);
              v76 = MEMORY[0x1B8C84C00](v75, *(*(a2 + 200) + 136 * ((v89 - *&v88[4]) >> 2) + v68 + 64));
              v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, " source text #", 14);
              v78 = *(a2 + 200) + 136 * ((v89 - *&v88[4]) >> 2) + v68;
              v79 = *(v78 + 23);
              if (v79 >= 0)
              {
                v80 = *(a2 + 200) + 136 * ((v89 - *&v88[4]) >> 2) + v68;
              }

              else
              {
                v80 = *v78;
              }

              if (v79 >= 0)
              {
                v81 = *(v78 + 23);
              }

              else
              {
                v81 = *(v78 + 8);
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v80, v81);
              quasar::QuasarTraceMessage::~QuasarTraceMessage(&v94);
            }

            v68 += 136;
            ++v69;
            v58 = v67-- <= 0;
            if (v58)
            {
              v66 = -1;
              goto LABEL_80;
            }
          }

          v66 = v67;
LABEL_80:
          v39 = *a1;
          v38 = a1[1];
        }

        ++v65;
      }

      while (0xF83E0F83E0F83E1 * ((v38 - v39) >> 3) > v65);
      v63 = *&v88[4];
    }

    if (v63)
    {
      v89 = v63;
      operator delete(v63);
    }

    *&v94 = __p;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v94);
    *&v94 = v93;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v94);
    *&v94 = v111;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v94);
  }
}

void sub_1B57A7E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void **a58)
{
  v61 = *(v58 + 272);
  if (v61)
  {
    *(v58 + 280) = v61;
    operator delete(v61);
  }

  *(v58 + 272) = &a24;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a58);
  *(v58 + 272) = v59 - 120;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a58);
  _Unwind_Resume(a1);
}

void quasar::regexSegmentation(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, int a11)
{
  v11 = a8;
  *(a9 + 64) = 0;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  memset(&v105, 0, sizeof(v105));
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v100[0] = a1;
  v100[1] = a9;
  v100[2] = &v106;
  v100[3] = &v102;
  v100[4] = &v101;
  if (a3 == 2)
  {
    v83 = 2;
    v84 = a8;
    v55 = *(a1 + 200);
    v54 = *(a1 + 208);
    if (v55 != v54)
    {
      v85 = a5;
      do
      {
        std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](&v106, v55);
        v56 = v55 + 136;
        if (a6 && 0xF0F0F0F0F0F0F0F1 * ((v107 - v106) >> 3) >= a6)
        {
          if (!a7)
          {
            goto LABEL_135;
          }

          if (v56 != *(a1 + 208))
          {
            v60 = *(v55 + 159);
            if ((v60 & 0x8000000000000000) != 0)
            {
              v61 = *(v55 + 136);
              v60 = *(v55 + 144);
            }

            else
            {
              v61 = (v55 + 136);
            }

            v62 = 3;
            if (v60 < 3)
            {
              v62 = v60;
            }

            if (v60)
            {
              v63 = &v61[v62];
              v64 = v61;
              v65 = &v61[v62];
              do
              {
                if (*v64 == 226)
                {
                  v66 = 1u;
                  while (v66 != 3)
                  {
                    if (&v64[v66] == v63)
                    {
                      goto LABEL_133;
                    }

                    v67 = v64[v66];
                    v68 = asc_1B5BFF99D[v66++];
                    if (v67 != v68)
                    {
                      goto LABEL_125;
                    }
                  }

                  v65 = v64;
                }

LABEL_125:
                ++v64;
              }

              while (v64 != v63);
LABEL_133:
              if (v65 != v63 && v65 == v61)
              {
                goto LABEL_135;
              }
            }
          }
        }

        memset(&__p.__prefix_, 0, 17);
        memset(&__p.__suffix_, 0, 17);
        __p.__ready_ = 0;
        __p.__position_start_ = 0;
        memset(&__p, 0, 41);
        v57 = *(v55 + 23);
        if ((v57 & 0x80u) == 0)
        {
          v58 = v55;
        }

        else
        {
          v58 = *v55;
        }

        if ((v57 & 0x80u) != 0)
        {
          v57 = *(v55 + 8);
        }

        v59 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v58, (v58 + v57), &__p, 0);
        if (__p.__matches_.__begin_)
        {
          __p.__matches_.__end_ = __p.__matches_.__begin_;
          operator delete(__p.__matches_.__begin_);
        }

        if (v59 && 0xF0F0F0F0F0F0F0F1 * ((v107 - v106) >> 3) >= v85)
        {
LABEL_135:
          quasar::regexSegmentation(quasar::TranslationPhraseInternal const&,std::basic_regex<char,std::regex_traits<char>> const&,quasar::SegmentationBlock::Mode,BOOL,int,int,BOOL,quasar::TranslationPhraseInternal const*,std::basic_regex<char,std::regex_traits<char>> const*,int)::$_0::operator()(v100, 1);
          if (a10)
          {
            *(v103 - 55) = 1;
            memset(&__p.__prefix_, 0, 17);
            memset(&__p.__suffix_, 0, 17);
            __p.__ready_ = 0;
            __p.__position_start_ = 0;
            memset(&__p, 0, 41);
            v69 = *(v55 + 23);
            if ((v69 & 0x80u) == 0)
            {
              v70 = v55;
            }

            else
            {
              v70 = *v55;
            }

            if ((v69 & 0x80u) != 0)
            {
              v69 = *(v55 + 8);
            }

            v71 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a10, v70, (v70 + v69), &__p, 0);
            if (__p.__matches_.__begin_)
            {
              __p.__matches_.__end_ = __p.__matches_.__begin_;
              operator delete(__p.__matches_.__begin_);
            }

            *(v103 - 54) = v71;
          }
        }

        v74 = *(v55 + 72);
        v73 = v55 + 72;
        v72 = v74;
        v75 = *(v73 + 23);
        if (v75 >= 0)
        {
          v76 = v73;
        }

        else
        {
          v76 = v72;
        }

        if (v75 >= 0)
        {
          v77 = *(v73 + 23);
        }

        else
        {
          v77 = *(v73 + 8);
        }

        std::string::append(&v105, v76, v77);
        v55 = v56;
      }

      while (v56 != v54);
    }
  }

  else if (a3 == 1)
  {
    v37 = *(a1 + 200);
    v36 = *(a1 + 208);
    if (v37 == v36)
    {
      goto LABEL_158;
    }

    v83 = 1;
    v84 = a8;
    v38 = a5;
    do
    {
      if (a6 && 0xF0F0F0F0F0F0F0F1 * ((v107 - v106) >> 3) >= a6)
      {
        if (!a7)
        {
          goto LABEL_92;
        }

        v42 = v37[23];
        if ((v42 & 0x8000000000000000) != 0)
        {
          v43 = *v37;
          v42 = *(v37 + 1);
        }

        else
        {
          v43 = v37;
        }

        v44 = 3;
        if (v42 < 3)
        {
          v44 = v42;
        }

        if (v42)
        {
          v45 = &v43[v44];
          v46 = v43;
          v47 = &v43[v44];
          do
          {
            if (*v46 == 226)
            {
              v48 = 1u;
              while (v48 != 3)
              {
                if (&v46[v48] == v45)
                {
                  goto LABEL_90;
                }

                v49 = v46[v48];
                v50 = asc_1B5BFF99D[v48++];
                if (v49 != v50)
                {
                  goto LABEL_82;
                }
              }

              v47 = v46;
            }

LABEL_82:
            ++v46;
          }

          while (v46 != v45);
LABEL_90:
          if (v47 != v45 && v47 == v43)
          {
            goto LABEL_92;
          }
        }
      }

      memset(&__p.__prefix_, 0, 17);
      memset(&__p.__suffix_, 0, 17);
      __p.__ready_ = 0;
      __p.__position_start_ = 0;
      memset(&__p, 0, 41);
      v39 = v37[23];
      if ((v39 & 0x80u) == 0)
      {
        v40 = v37;
      }

      else
      {
        v40 = *v37;
      }

      if ((v39 & 0x80u) != 0)
      {
        v39 = *(v37 + 1);
      }

      v41 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v40, (v40 + v39), &__p, 0);
      if (__p.__matches_.__begin_)
      {
        __p.__matches_.__end_ = __p.__matches_.__begin_;
        operator delete(__p.__matches_.__begin_);
      }

      if (v41 && 0xF0F0F0F0F0F0F0F1 * ((v107 - v106) >> 3) >= v38)
      {
LABEL_92:
        quasar::regexSegmentation(quasar::TranslationPhraseInternal const&,std::basic_regex<char,std::regex_traits<char>> const&,quasar::SegmentationBlock::Mode,BOOL,int,int,BOOL,quasar::TranslationPhraseInternal const*,std::basic_regex<char,std::regex_traits<char>> const*,int)::$_0::operator()(v100, 1);
      }

      std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](&v106, v37);
      v51 = v37[95];
      if (v51 >= 0)
      {
        v52 = (v37 + 72);
      }

      else
      {
        v52 = *(v37 + 9);
      }

      if (v51 >= 0)
      {
        v53 = v37[95];
      }

      else
      {
        v53 = *(v37 + 10);
      }

      std::string::append(&v105, v52, v53);
      v37 += 136;
    }

    while (v37 != v36);
  }

  else
  {
    v84 = a8;
    v83 = a3;
    if (a3)
    {
      v98 = 0uLL;
      v99 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v94 = 0uLL;
      v95 = 0uLL;
      v92 = 0uLL;
      v93 = 0uLL;
      v90 = 0uLL;
      v91 = 0uLL;
      memset(&__p, 0, sizeof(__p));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Logic error - invalid segmentation mode: ", 41);
      MEMORY[0x1B8C84C00](v82, v83);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__p);
    }

    v15 = *(a1 + 200);
    v14 = *(a1 + 208);
    if (v15 != v14)
    {
      v17 = a5;
      while (1)
      {
        if (a6 && 0xF0F0F0F0F0F0F0F1 * ((v107 - v106) >> 3) >= a6)
        {
          if (!a7)
          {
            break;
          }

          v24 = v15[23];
          if ((v24 & 0x8000000000000000) != 0)
          {
            v25 = *v15;
            v24 = *(v15 + 1);
          }

          else
          {
            v25 = v15;
          }

          v26 = 3;
          if (v24 < 3)
          {
            v26 = v24;
          }

          if (v24)
          {
            v27 = &v25[v26];
            v28 = v25;
            v29 = &v25[v26];
            do
            {
              if (*v28 == 226)
              {
                v30 = 1u;
                while (v30 != 3)
                {
                  if (&v28[v30] == v27)
                  {
                    goto LABEL_45;
                  }

                  v31 = v28[v30];
                  v32 = asc_1B5BFF99D[v30++];
                  if (v31 != v32)
                  {
                    goto LABEL_37;
                  }
                }

                v29 = v28;
              }

LABEL_37:
              ++v28;
            }

            while (v28 != v27);
LABEL_45:
            if (v29 != v27 && v29 == v25)
            {
              break;
            }
          }
        }

        memset(&__p.__prefix_, 0, 17);
        memset(&__p.__suffix_, 0, 17);
        __p.__ready_ = 0;
        __p.__position_start_ = 0;
        memset(&__p, 0, 41);
        v18 = v15[23];
        if ((v18 & 0x80u) == 0)
        {
          v19 = v15;
        }

        else
        {
          v19 = *v15;
        }

        if ((v18 & 0x80u) != 0)
        {
          v18 = *(v15 + 1);
        }

        v20 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v19, (v19 + v18), &__p, 0);
        if (__p.__matches_.__begin_)
        {
          __p.__matches_.__end_ = __p.__matches_.__begin_;
          operator delete(__p.__matches_.__begin_);
        }

        if (!v20)
        {
          goto LABEL_49;
        }

        if (0xF0F0F0F0F0F0F0F1 * ((v107 - v106) >> 3) >= v17)
        {
          quasar::regexSegmentation(quasar::TranslationPhraseInternal const&,std::basic_regex<char,std::regex_traits<char>> const&,quasar::SegmentationBlock::Mode,BOOL,int,int,BOOL,quasar::TranslationPhraseInternal const*,std::basic_regex<char,std::regex_traits<char>> const*,int)::$_0::operator()(v100, 1);
          std::vector<int>::push_back[abi:ne200100]((a9 + 24), v15 + 16);
          std::vector<int>::push_back[abi:ne200100]((v103 - 24), v15 + 16);
          if (a10)
          {
            *(v103 - 55) = 1;
            memset(&__p.__prefix_, 0, 17);
            memset(&__p.__suffix_, 0, 17);
            __p.__ready_ = 0;
            __p.__position_start_ = 0;
            memset(&__p, 0, 41);
            v21 = v15[23];
            if ((v21 & 0x80u) == 0)
            {
              v22 = v15;
            }

            else
            {
              v22 = *v15;
            }

            if ((v21 & 0x80u) != 0)
            {
              v21 = *(v15 + 1);
            }

            v23 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a10, v22, (v22 + v21), &__p, 0);
            if (__p.__matches_.__begin_)
            {
              __p.__matches_.__end_ = __p.__matches_.__begin_;
              operator delete(__p.__matches_.__begin_);
            }

            *(v103 - 54) = v23;
          }
        }

        if (!a4)
        {
          goto LABEL_50;
        }

        v101 += *(v15 + 33) - *(v15 + 32);
LABEL_57:
        v15 += 136;
        if (v15 == v14)
        {
          goto LABEL_151;
        }
      }

      quasar::regexSegmentation(quasar::TranslationPhraseInternal const&,std::basic_regex<char,std::regex_traits<char>> const&,quasar::SegmentationBlock::Mode,BOOL,int,int,BOOL,quasar::TranslationPhraseInternal const*,std::basic_regex<char,std::regex_traits<char>> const*,int)::$_0::operator()(v100, 1);
      if (a10)
      {
        *(v103 - 55) = 257;
      }

LABEL_49:
      std::vector<quasar::TranslationTokenInternal>::push_back[abi:ne200100](&v106, v15);
LABEL_50:
      v33 = v15[95];
      if (v33 >= 0)
      {
        v34 = (v15 + 72);
      }

      else
      {
        v34 = *(v15 + 9);
      }

      if (v33 >= 0)
      {
        v35 = v15[95];
      }

      else
      {
        v35 = *(v15 + 10);
      }

      std::string::append(&v105, v34, v35);
      goto LABEL_57;
    }
  }

LABEL_151:
  v11 = v84;
  if (v106 != v107)
  {
    if (v83 == 1)
    {
      std::vector<int>::push_back[abi:ne200100]((a9 + 24), (v106 + 64));
    }

    quasar::regexSegmentation(quasar::TranslationPhraseInternal const&,std::basic_regex<char,std::regex_traits<char>> const&,quasar::SegmentationBlock::Mode,BOOL,int,int,BOOL,quasar::TranslationPhraseInternal const*,std::basic_regex<char,std::regex_traits<char>> const*,int)::$_0::operator()(v100, *(a1 + 144));
    if (a10)
    {
      *(v103 - 55) = 1;
    }
  }

LABEL_158:
  if (a11 >= 1)
  {
    v78 = ((v103 - v102) >> 6) - 1;
    if (v78 >= 0)
    {
      v79 = 0;
      v80 = (v102 + (v78 << 6) + 10);
      do
      {
        if (*v80 == 1)
        {
          ++v79;
          *v80 = 0;
        }

        if (v78-- < 1)
        {
          break;
        }

        v80 -= 64;
      }

      while (v79 < a11);
    }
  }

  quasar::adjustRanges(&v102, &v105, &__p);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate((a9 + 48));
  *(a9 + 48) = *&__p.__matches_.__begin_;
  *(a9 + 64) = __p.__matches_.__end_cap_.__value_;
  memset(&__p, 0, 24);
  p_p = &__p;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&p_p);
  if (v11)
  {
    quasar::addAlignmentMappedSourcePrefixes(a9, v11);
  }

  __p.__matches_.__begin_ = &v102;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  __p.__matches_.__begin_ = &v106;
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B57A88A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, quasar::SegmentationResult *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  __p = (v18 - 168);
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  __p = (v18 - 120);
  std::vector<quasar::TranslationTokenInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  quasar::SegmentationResult::~SegmentationResult(a14);
  _Unwind_Resume(a1);
}

void quasar::regexSegmentation(quasar::TranslationPhraseInternal const&,std::basic_regex<char,std::regex_traits<char>> const&,quasar::SegmentationBlock::Mode,BOOL,int,int,BOOL,quasar::TranslationPhraseInternal const*,std::basic_regex<char,std::regex_traits<char>> const*,int)::$_0::operator()(uint64_t a1, int a2)
{
  std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](*(a1 + 8), *a1);
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 8) + 8) - 64;
  if (v5 != v4)
  {
    std::vector<quasar::TranslationTokenInternal>::__assign_with_size[abi:ne200100]<quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(v5, *v4, *(v4 + 8), 0xF0F0F0F0F0F0F0F1 * ((*(v4 + 8) - *v4) >> 3));
    v4 = *(a1 + 16);
  }

  v6 = *(a1 + 24);
  *&v13 = __PAIR64__(*(*(v4 + 8) - 4) - **(a1 + 32), *(*v4 + 128) - **(a1 + 32));
  BYTE8(v13) = a2;
  *(&v13 + 9) = 0;
  *v14 = 0u;
  *__p = 0u;
  v16 = 0u;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::push_back[abi:ne200100](v6, &v13);
  if (__p[1])
  {
    *&v16 = __p[1];
    operator delete(__p[1]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  v7 = *(a1 + 16);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 != v9)
  {
    v10 = (v8 + 64);
    do
    {
      std::vector<int>::push_back[abi:ne200100]((*(*(a1 + 24) + 8) - 24), v10);
      if (a2)
      {
        if (quasar::gLogLevel >= 6)
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
          *v14 = 0u;
          *__p = 0u;
          v13 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Adding token ID to stable prefix:", 33);
          MEMORY[0x1B8C84C00](v11, *v10);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(&v13);
        }

        std::vector<int>::push_back[abi:ne200100]((*(a1 + 8) + 24), v10);
      }

      v12 = v10 + 18;
      v10 += 34;
    }

    while (v12 != v9);
    v7 = *(a1 + 16);
    v8 = *v7;
  }

  std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](v7, v8);
}

_BYTE *quasar::SegmentationBlock::init(quasar::SegmentationBlock *this)
{
  v2 = quasar::OptionValue<std::string>::value(this + 23);
  *(this + 448) = quasar::getMode(v2);
  if (*quasar::OptionValue<int>::value(this + 83) <= 0)
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
    v9 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Invalid value for minimum-segment-length (must be >= 1): ", 57);
    v8 = quasar::OptionValue<int>::value(this + 83);
    MEMORY[0x1B8C84C00](v7, *v8);
    goto LABEL_16;
  }

  v3 = *(this + 448);
  if (v3 < 3)
  {
    v4 = quasar::OptionValue<std::string>::value(this + 43);
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&v9, v4, 0);
  }

  if (v3 == 3)
  {
    if ((*quasar::OptionValue<BOOL>::value(this + 137) & 1) == 0)
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
      v9 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v9, "SegmentationBlock mode ICU requires 'segment-range-info-only'");
LABEL_16:
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v9);
    }

    if (quasar::OptionValue<int>::isSet(this + 664))
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
      v9 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(&v9, "SegmentationBlock mode ICU not compatible with 'minimum-segment-length'");
      goto LABEL_16;
    }
  }

  if (*quasar::OptionValue<BOOL>::value(this + 173) == 1 && (*(this + 448) | 2) != 2)
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
    v9 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v9, "'source-side-prefix-trim' require mode 'regex' or mode 'regex-post'");
    goto LABEL_16;
  }

  result = quasar::OptionValue<BOOL>::value(this + 173);
  if (*result == 1)
  {
    v6 = quasar::OptionValue<std::string>::value(this + 63);
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&v9, v6, 0);
  }

  return result;
}

BOOL quasar::OptionValue<int>::isSet(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 55);
  if (v2 < 0)
  {
    if (*(a1 + 40) != 9)
    {
      return 1;
    }

    v1 = *v1;
  }

  else if (v2 != 9)
  {
    return 1;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  return v3 != 0x746C75616665643CLL || v4 != 62;
}

void quasar::SegmentationBlock::processBody(quasar::SegmentationBlock *this)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  Value = quasar::ProcessingInput::getValue((this + 1680));
  v3 = *Value;
  v35 = *(Value + 8);
  if (*Value != v35)
  {
    do
    {
      v55 = 0;
      v54 = 0u;
      memset(v53, 0, sizeof(v53));
      if (*(this + 1796) == 1)
      {
        if (*quasar::OptionValue<BOOL>::value(this + 173) == 1)
        {
          v4 = quasar::ProcessingInput::getValue((this + 1736));
          if (*v4 == v4[1])
          {
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
            memset(v38, 0, sizeof(v38));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Empty source-input not allowed for source-side-prefix-trim", 58);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v38);
          }

          v5 = *(this + 448);
          v6 = *quasar::OptionValue<BOOL>::value(this + 155);
          v7 = *quasar::OptionValue<int>::value(this + 83);
          v8 = *quasar::OptionValue<int>::value(this + 101);
          v9 = quasar::OptionValue<BOOL>::value(this + 119);
          v11 = v4;
          v10 = *v4;
          if (v11[1] == v10)
          {
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v12 = *v9;
          v13 = quasar::OptionValue<int>::value(this + 191);
          quasar::regexSegmentation(v3, this + 1800, v5, v6, v7, v8, v12, v10, v38, this + 1864, *v13);
          std::vector<quasar::TranslationPhraseInternal>::__vdeallocate(v53);
          v53[0] = v38[0];
        }

        else
        {
          v19 = *(this + 448);
          v20 = *quasar::OptionValue<BOOL>::value(this + 155);
          v21 = *quasar::OptionValue<int>::value(this + 83);
          v22 = *quasar::OptionValue<int>::value(this + 101);
          v23 = quasar::OptionValue<BOOL>::value(this + 119);
          quasar::regexSegmentation(v3, this + 1800, v19, v20, v21, v22, *v23, 0, v38, 0, 0);
          std::vector<quasar::TranslationPhraseInternal>::__vdeallocate(v53);
          v53[0] = v38[0];
        }

        *&v53[1] = *&v38[1];
        memset(v38, 0, 24);
        if (*(&v53[1] + 1))
        {
          *&v53[2] = *(&v53[1] + 1);
          operator delete(*(&v53[1] + 1));
        }

        *(&v53[1] + 8) = *(&v38[1] + 8);
        *(&v53[2] + 1) = *(&v38[2] + 1);
        memset(&v38[1] + 8, 0, 24);
        std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate(&v54);
        v54 = v39;
        v55 = v40;
        *&v40 = 0;
        v39 = 0uLL;
        v59[0] = &v39;
        std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](v59);
        if (*(&v38[1] + 1))
        {
          *&v38[2] = *(&v38[1] + 1);
          operator delete(*(&v38[1] + 1));
        }

        v59[0] = v38;
        std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v59);
      }

      else
      {
        if (*(this + 448) != 3)
        {
          v51 = 0uLL;
          v52 = 0uLL;
          v49 = 0uLL;
          v50 = 0uLL;
          v47 = 0uLL;
          v48 = 0uLL;
          v45 = 0uLL;
          v46 = 0uLL;
          v43 = 0uLL;
          v44 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          memset(v38, 0, sizeof(v38));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Invalid SegmentationBlock state, mode = ", 40);
          v31 = quasar::OptionValue<std::string>::value(this + 23);
          v32 = *(v31 + 23);
          if (v32 >= 0)
          {
            v33 = v31;
          }

          else
          {
            v33 = *v31;
          }

          if (v32 >= 0)
          {
            v34 = *(v31 + 23);
          }

          else
          {
            v34 = *(v31 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v33, v34);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v38);
        }

        v14 = quasar::OptionValue<std::string>::value(this + 3);
        v15 = v14;
        if (*(v14 + 23) >= 0)
        {
          v16 = *(v14 + 23);
        }

        else
        {
          v16 = *(v14 + 8);
        }

        std::string::basic_string[abi:ne200100](v36, v16 + 12);
        if (v37 >= 0)
        {
          v17 = v36;
        }

        else
        {
          v17 = v36[0];
        }

        if (v16)
        {
          if (v15[23] >= 0)
          {
            v18 = v15;
          }

          else
          {
            v18 = *v15;
          }

          memmove(v17, v18, v16);
        }

        strcpy(v17 + v16, "@ss=standard");
        quasar::icuSegmentation(v3, v38);
        std::vector<quasar::TranslationPhraseInternal>::__vdeallocate(v53);
        v53[0] = v38[0];
        *&v53[1] = *&v38[1];
        memset(v38, 0, 24);
        if (*(&v53[1] + 1))
        {
          *&v53[2] = *(&v53[1] + 1);
          operator delete(*(&v53[1] + 1));
        }

        *(&v53[1] + 8) = *(&v38[1] + 8);
        *(&v53[2] + 1) = *(&v38[2] + 1);
        memset(&v38[1] + 8, 0, 24);
        std::vector<quasar::TranslationPhrase::SegmentInfo>::__vdeallocate(&v54);
        v54 = v39;
        v55 = v40;
        *&v40 = 0;
        v39 = 0uLL;
        v59[0] = &v39;
        std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](v59);
        if (*(&v38[1] + 1))
        {
          *&v38[2] = *(&v38[1] + 1);
          operator delete(*(&v38[1] + 1));
        }

        v59[0] = v38;
        std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v59);
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }

      if (*quasar::OptionValue<BOOL>::value(this + 137) == 1)
      {
        std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](&v56, v3);
        v24 = v57;
        if ((v57 - 112) != (&v53[1] + 8))
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v57 - 112), *(&v53[1] + 1), *&v53[2], (*&v53[2] - *(&v53[1] + 1)) >> 2);
          v24 = v57;
        }

        if ((v24 - 88) != &v54)
        {
          std::vector<quasar::TranslationPhrase::SegmentInfo>::__assign_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>((v24 - 88), v54, *(&v54 + 1), (*(&v54 + 1) - v54) >> 6);
        }

        if (!*(this + 448) && *quasar::OptionValue<BOOL>::value(this + 155) == 1)
        {
          std::vector<quasar::TranslationTokenInternal>::__base_destruct_at_end[abi:ne200100](v57 - 64, *(v57 - 64));
          v26 = *(&v53[0] + 1);
          for (i = *&v53[0]; i != v26; i += 264)
          {
            std::vector<quasar::TranslationTokenInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::TranslationTokenInternal*>,std::__wrap_iter<quasar::TranslationTokenInternal*>>((v57 - 64), *(v57 - 56), *(i + 200), *(i + 208), 0xF0F0F0F0F0F0F0F1 * ((*(i + 208) - *(i + 200)) >> 3));
          }
        }
      }

      else
      {
        v28 = *(&v53[0] + 1);
        for (j = *&v53[0]; j != v28; j = (j + 264))
        {
          std::vector<quasar::TranslationPhraseInternal>::push_back[abi:ne200100](&v56, j);
          v29 = v57;
          if ((v57 - 112) != (&v53[1] + 8))
          {
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v57 - 112), *(&v53[1] + 1), *&v53[2], (*&v53[2] - *(&v53[1] + 1)) >> 2);
            v29 = v57;
          }

          if ((v29 - 88) != &v54)
          {
            std::vector<quasar::TranslationPhrase::SegmentInfo>::__assign_with_size[abi:ne200100]<quasar::TranslationPhrase::SegmentInfo*,quasar::TranslationPhrase::SegmentInfo*>((v29 - 88), v54, *(&v54 + 1), (*(&v54 + 1) - v54) >> 6);
          }
        }
      }

      *&v38[0] = &v54;
      std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100](v38);
      if (*(&v53[1] + 1))
      {
        *&v53[2] = *(&v53[1] + 1);
        operator delete(*(&v53[1] + 1));
      }

      *&v38[0] = v53;
      std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v38);
      v3 = (v3 + 264);
    }

    while (v3 != v35);
  }

  quasar::ProcessingBlock::send(this + *(*this - 24), &v56, 0);
  *&v38[0] = &v56;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](v38);
}

void sub_1B57A94BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B57A94ECLL);
}

void sub_1B57A94E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  quasar::SegmentationResult::~SegmentationResult((v17 - 208));
  a17 = (v17 - 128);
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void quasar::ConfiguredProcessingBlock<quasar::SegmentationOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
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

void sub_1B57A95FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
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

void quasar::SegmentationBlock::~SegmentationBlock(std::locale *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 1928));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 1928));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::SegmentationBlock::inputs@<X0>(quasar::SegmentationBlock *this@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*quasar::OptionValue<BOOL>::value(this + 173) == 1)
  {
    v8 = this + 1680;
    v9 = this + 1736;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v4 = &v10;
    v5 = a2;
    v6 = 2;
  }

  else
  {
    v8 = this + 1680;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v4 = &v9;
    v5 = a2;
    v6 = 1;
  }

  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(v5, &v8, v4, v6);
}

void non-virtual thunk toquasar::SegmentationBlock::~SegmentationBlock(quasar::SegmentationBlock *this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 32);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 32);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::SegmentationBlock::~SegmentationBlock(quasar::SegmentationBlock *this)
{
  v2 = (v1 + 1928);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = this + *(*this - 24);
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 241);

  JUMPOUT(0x1B8C85350);
}

void quasar::SegmentationBlock::~SegmentationBlock(std::locale *this, std::locale::__imp **a2)
{
  v4 = *a2;
  this->__locale_ = *a2;
  *(&this->__locale_ + *(v4 - 3)) = a2[5];
  this[209].__locale_ = a2[6];
  locale = this[239].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this + 233);
  v6 = this[231].__locale_;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::locale::~locale(this + 225);
  v8 = this + 221;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (SHIBYTE(this[219].__locale_) < 0)
  {
    operator delete(this[217].__locale_);
  }

  v8 = this + 214;
  std::vector<quasar::TranslationPhraseInternal>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (SHIBYTE(this[212].__locale_) < 0)
  {
    operator delete(this[210].__locale_);
  }

  v7 = a2[1];
  this->__locale_ = v7;
  *(&this->__locale_ + *(v7 - 3)) = a2[2];
  quasar::SegmentationOptions::~SegmentationOptions(&this[1]);
}

uint64_t std::vector<quasar::TranslationPhrase::SegmentInfo>::__emplace_back_slow_path<quasar::TranslationPhrase::SegmentInfo>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>>(a1, v7);
  }

  v8 = v2 << 6;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 7) = *(a2 + 7);
  *v8 = v9;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  *(v8 + 16) = *(a2 + 1);
  *(v8 + 32) = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 40) = *(a2 + 5);
  *(v8 + 56) = a2[7];
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  *&v18 = (v2 << 6) + 64;
  v10 = *(a1 + 8);
  v11 = (v2 << 6) + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<quasar::TranslationPhrase::SegmentInfo>::~__split_buffer(&v16);
  return v15;
}

void sub_1B57A9C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TranslationPhrase::SegmentInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
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
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 7) = *(v7 + 7);
      *a4 = v8;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v7 + 1);
      *(a4 + 32) = v7[4];
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v7 + 5);
      *(a4 + 56) = v7[7];
      v7[5] = 0;
      v7[6] = 0;
      v7[7] = 0;
      v7 += 8;
      a4 += 64;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<quasar::TranslationPhrase::SegmentInfo>::destroy[abi:ne200100](a1, v5);
      v5 += 8;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TranslationPhrase::SegmentInfo>,quasar::TranslationPhrase::SegmentInfo*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void **std::__split_buffer<quasar::TranslationPhrase::SegmentInfo>::~__split_buffer(void **a1)
{
  std::__split_buffer<quasar::TranslationPhrase::SegmentInfo>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::TranslationPhrase::SegmentInfo>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    std::allocator<quasar::TranslationPhrase::SegmentInfo>::destroy[abi:ne200100](v4, (i - 64));
  }
}

uint64_t std::vector<quasar::TranslationTokenInternal>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::TranslationTokenInternal*>,std::__wrap_iter<quasar::TranslationTokenInternal*>>(uint64_t *a1, uint64_t a2, const quasar::TranslationTokenInternal *a3, quasar::TranslationTokenInternal *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xF0F0F0F0F0F0F0F1 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xF0F0F0F0F0F0F0F1 * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 17 * a5;
        std::vector<quasar::TranslationTokenInternal>::__move_range(a1, a2, a1[1], a2 + 136 * a5);
        v17 = v7 + 8 * v18;
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*,quasar::TranslationTokenInternal*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<quasar::TranslationTokenInternal>::__move_range(a1, v5, v10, v5 + 136 * a5);
        v17 = v7 + v16;
      }

      std::__copy_impl::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0xF0F0F0F0F0F0F0FLL * ((v10 - *a1) >> 3);
    if (v12 > 0x1E1E1E1E1E1E1E1)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xF0F0F0F0F0F0F0F1 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xF0F0F0F0F0F0F0)
    {
      v15 = 0x1E1E1E1E1E1E1E1;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>>(a1, v15);
    }

    v19 = (8 * (v13 >> 3));
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = (v19 + 136 * a5);
    v21 = 136 * a5;
    do
    {
      quasar::TranslationTokenInternal::TranslationTokenInternal(v19, v7);
      v19 = (v19 + 136);
      v7 = (v7 + 136);
      v21 -= 136;
    }

    while (v21);
    v24 = v20;
    v5 = std::vector<quasar::TranslationTokenInternal>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<quasar::TranslationTokenInternal>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<quasar::TranslationTokenInternal>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      *(v8 + 24) = *(v9 + 24);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      v11 = *(v9 + 56);
      *(v8 + 64) = *(v9 + 64);
      *(v8 + 56) = v11;
      v12 = *(v9 + 72);
      *(v8 + 88) = *(v9 + 88);
      *(v8 + 72) = v12;
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 72) = 0;
      v13 = *(v9 + 96);
      *(v8 + 112) = 0;
      *(v8 + 120) = 0;
      *(v8 + 96) = v13;
      *(v8 + 104) = 0;
      *(v8 + 104) = *(v9 + 104);
      *(v8 + 120) = *(v9 + 120);
      *(v9 + 104) = 0;
      *(v9 + 112) = 0;
      *(v9 + 120) = 0;
      *(v8 + 128) = *(v9 + 128);
      v9 += 136;
      v8 += 136;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(&v15, a2, v7, v6);
}

uint64_t std::vector<quasar::TranslationTokenInternal>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TranslationTokenInternal>,quasar::TranslationTokenInternal*>(a1, v7, a3, v9);
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

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *,quasar::TranslationTokenInternal *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 136);
      if (*(a4 + v7 - 113) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 136);
      v11 = *v10;
      *(a4 + v7 - 120) = *(a3 + v7 - 120);
      *v9 = v11;
      *(a3 + v7 - 113) = 0;
      *v10 = 0;
      *(v8 - 112) = *(a3 + v7 - 112);
      std::vector<int>::__move_assign(v8 - 104, (a3 + v7 - 104));
      v12 = *(a3 + v7 - 80);
      *(v8 - 72) = *(a3 + v7 - 72);
      *(v8 - 80) = v12;
      v13 = v8 - 64;
      if (*(v8 - 41) < 0)
      {
        operator delete(*v13);
      }

      v14 = a3 + v7;
      v15 = *(a3 + v7 - 64);
      *(v13 + 16) = *(a3 + v7 - 48);
      *v13 = v15;
      *(v14 - 41) = 0;
      *(v14 - 64) = 0;
      *(a4 + v7 - 40) = *(a3 + v7 - 40);
      std::vector<int>::__move_assign(a4 + v7 - 32, (a3 + v7 - 32));
      *(a4 + v7 - 8) = *(a3 + v7 - 8);
      v7 -= 136;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t quasar::TransformerForClassificationConfig::HandleToken(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  v5 = *(a4 + 23);
  v6 = *(a4 + 8);
  if (v5 < 0 && v6 == 30)
  {
    if (**a4 != 0x636E65757165533CLL || *(*a4 + 8) != 0x66697373616C4365 || *(*a4 + 16) != 0x4F6E6F6974616369 || *(*a4 + 22) != 0x3E74757074754F6ELL)
    {
      return 0;
    }

    memset(&__str, 0, sizeof(__str));
    kaldi::ReadToken(a2, a3, &__str);
    v16 = 0;
    v18 = &v16;
    v10 = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 16), &v16);
    std::string::operator=(v10 + 1, &__str);
  }

  else
  {
    result = 0;
    if ((v5 & 0x80000000) == 0 || v6 != 27)
    {
      return result;
    }

    if (**a4 != 0x6C436E656B6F543CLL || *(*a4 + 8) != 0x6163696669737361 || *(*a4 + 16) != 0x7074754F6E6F6974 || *(*a4 + 19) != 0x3E74757074754F6ELL)
    {
      return 0;
    }

    memset(&__str, 0, sizeof(__str));
    kaldi::ReadToken(a2, a3, &__str);
    v16 = 1;
    v18 = &v16;
    v15 = std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>((a1 + 16), &v16);
    std::string::operator=(v15 + 1, &__str);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1B57AA45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *quasar::TransformerForClassification::TransformerForClassification(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2D30818;
  a1[1] = 0;
  LODWORD(v11) = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "classifications");
  std::unordered_map<quasar::TransformerClassificationType,std::string>::unordered_map((a1 + 2), &v11, 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  a1[7] = 0;
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = &v11;
  std::string::basic_string[abi:ne200100](&v11, v4 + 7);
  if (v13 < 0)
  {
    v5 = v11;
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

  strcpy(v5 + v4, ".config");
  kaldi::quasar::WrappedComputeEngineConfig::Read(a1, a2, &v11);
  if (v13 < 0)
  {
    operator delete(v11);
  }

  (*(*a1[1] + 24))(&v11);
  v7 = v11;
  v11 = 0;
  v8 = a1[7];
  a1[7] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v11;
    v11 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  return a1;
}

void sub_1B57AA66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  v21 = *(v19 + 7);
  *(v19 + 7) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  quasar::TransformerForClassificationConfig::~TransformerForClassificationConfig(v19);
  _Unwind_Resume(a1);
}

void quasar::TransformerForClassification::~TransformerForClassification(quasar::TransformerForClassification *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2D30818;
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(this + 16);

  kaldi::quasar::WrappedComputeEngineConfig::~WrappedComputeEngineConfig(this);
}

void quasar::TransformerForClassification::run(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  (*(**(a1 + 56) + 48))(v37);
  v8 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<char const(&)[10],std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v33, "input_ids", v37);
  v9 = *v37;
  v34 = v8;
  *v37 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  (*(**(a1 + 56) + 48))(v37);
  v10 = v34;
  if (v34 >= v35)
  {
    v11 = std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<char const(&)[15],std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(&v33, "attention_mask", v37);
    v12 = *v37;
    v34 = v11;
    *v37 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "attention_mask");
    *(v10 + 3) = *v37;
    v34 = v10 + 32;
  }

  v13 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 16), &v36);
  if (!v13)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (*(v13 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(v37, v13[3], v13[4]);
  }

  else
  {
    *v37 = *(v13 + 3);
    *&v37[16] = v13[5];
  }

  memset(v32, 0, sizeof(v32));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v32, v37, &v37[24], 1uLL);
  if ((v37[23] & 0x80000000) != 0)
  {
    operator delete(*v37);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v14 = *(a1 + 56);
  memset(v37, 0, 24);
  (*(*v14 + 128))(v14, &v33, v32, v37, &v29);
  __p = v37;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  v15 = v29;
  if (v30 == v29)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v16 = (*(**v29 + 176))();
  v17 = **v15;
  if (v16 > 2)
  {
    if ((*(v17 + 176))() != 3)
    {
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
      memset(v37, 0, sizeof(v37));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unsupported number of dimensions in transformer output", 54);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v37);
    }

    if ((*(**v15 + 184))(*v15, 0) != 1)
    {
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
      memset(v37, 0, sizeof(v37));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unsupported first dimension size for 3-dim transformer output", 61);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v37);
    }

    if (kaldi::MatrixBase<float>::NumRows(a3) != 1)
    {
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
      memset(v37, 0, sizeof(v37));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Unsupported batch size for 3-dim transformer output", 51);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v37);
    }

    __p = 0;
    v27 = 0;
    v28 = 0;
    (*(**v15 + 56))(*v15, &__p);
    v18 = (*(**v15 + 184))(*v15, 1);
    v19 = (*(**v15 + 184))(*v15, 2);
    kaldi::Matrix<float>::Resize(a5, v18, v19, 1, 0);
    v20 = __p;
    v21 = v27;
    if (__p == v27 || (v22 = kaldi::MatrixBase<float>::NumRows(a5), (v21 - v20) >> 2 != kaldi::MatrixBase<float>::NumCols(a5) * v22))
    {
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
      memset(v37, 0, sizeof(v37));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v37);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Failed to flatten transformer output", 36);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v37);
    }

    for (i = 0; i < kaldi::MatrixBase<float>::NumRows(a5); ++i)
    {
      for (j = 0; j < kaldi::MatrixBase<float>::NumCols(a5); ++j)
      {
        v25 = (j + i * kaldi::MatrixBase<float>::NumCols(a5));
        if (v25 >= (v27 - __p) >> 2)
        {
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        *(*a5 + 4 * i * *(a5 + 16) + 4 * j) = *(__p + v25);
      }
    }

    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }

  else
  {
    (*(v17 + 24))();
  }

  *v37 = &v29;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](v37);
  *v37 = v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v37);
  *v37 = &v33;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](v37);
}

void sub_1B57AAE04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  a23 = &a13;
  std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &a19;
  std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void quasar::TransformerForClassificationConfig::~TransformerForClassificationConfig(quasar::TransformerForClassificationConfig *this)
{
  *this = &unk_1F2D30818;
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(this + 16);
  kaldi::quasar::WrappedComputeEngineConfig::~WrappedComputeEngineConfig(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D30818;
  std::__hash_table<std::__hash_value_type<int,std::string>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::string>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::string>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::string>>>::~__hash_table(this + 16);

  kaldi::quasar::WrappedComputeEngineConfig::~WrappedComputeEngineConfig(this);
}

uint64_t std::unordered_map<quasar::TransformerClassificationType,std::string>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::__unordered_map_hasher<quasar::TransformerClassificationType,std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::hash<quasar::TransformerClassificationType>,std::equal_to<quasar::TransformerClassificationType>,true>,std::__unordered_map_equal<quasar::TransformerClassificationType,std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::equal_to<quasar::TransformerClassificationType>,std::hash<quasar::TransformerClassificationType>,true>,std::allocator<std::__hash_value_type<quasar::TransformerClassificationType,std::string>>>::__emplace_unique_key_args<quasar::TransformerClassificationType,std::pair<quasar::TransformerClassificationType const,std::string> const&>(a1, a2);
      a2 += 8;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::__unordered_map_hasher<quasar::TransformerClassificationType,std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::hash<quasar::TransformerClassificationType>,std::equal_to<quasar::TransformerClassificationType>,true>,std::__unordered_map_equal<quasar::TransformerClassificationType,std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::equal_to<quasar::TransformerClassificationType>,std::hash<quasar::TransformerClassificationType>,true>,std::allocator<std::__hash_value_type<quasar::TransformerClassificationType,std::string>>>::__emplace_unique_key_args<quasar::TransformerClassificationType,std::pair<quasar::TransformerClassificationType const,std::string> const&>(void *a1, int *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::__unordered_map_hasher<quasar::TransformerClassificationType,std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::hash<quasar::TransformerClassificationType>,std::equal_to<quasar::TransformerClassificationType>,true>,std::__unordered_map_equal<quasar::TransformerClassificationType,std::__hash_value_type<quasar::TransformerClassificationType,std::string>,std::equal_to<quasar::TransformerClassificationType>,std::hash<quasar::TransformerClassificationType>,true>,std::allocator<std::__hash_value_type<quasar::TransformerClassificationType,std::string>>>::__construct_node_hash<std::pair<quasar::TransformerClassificationType const,std::string> const&>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1B57AB1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57AB2C4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<char const(&)[10],std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(uint64_t a1, char *a2, uint64_t *a3)
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

  v22 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(a1, v9);
  }

  v18 = 0;
  v19 = 32 * v3;
  v20 = 32 * v3;
  v21 = 0;
  v10 = std::string::basic_string[abi:ne200100]<0>((32 * v3), a2);
  v11 = *a3;
  *a3 = 0;
  *(v10 + 3) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = v19 - v13;
  memcpy((v19 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v18);
  return v12;
}

void sub_1B57AB430(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::__emplace_back_slow_path<char const(&)[15],std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>(uint64_t a1, char *a2, uint64_t *a3)
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

  v22 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(a1, v9);
  }

  v18 = 0;
  v19 = 32 * v3;
  v20 = 32 * v3;
  v21 = 0;
  v10 = std::string::basic_string[abi:ne200100]<0>((32 * v3), a2);
  v11 = *a3;
  *a3 = 0;
  *(v10 + 3) = v11;
  v12 = v20 + 32;
  v13 = *(a1 + 8) - *a1;
  v14 = v19 - v13;
  memcpy((v19 - v13), *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = v21;
  v20 = v15;
  v21 = v16;
  v18 = v15;
  v19 = v15;
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(&v18);
  return v12;
}

void sub_1B57AB540(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B57AB6E0(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::LexiconFst::CreateFst(kaldi::quasar::LexiconFst *this, const kaldi::quasar::Lexicon *a2, fst::SymbolTable *a3, fst::SymbolTable *a4, int a5)
{
  if ((**a2)(a2))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "<eps>");
    (*(*a3 + 32))(a3, &__p);
    if (v58 < 0)
    {
      operator delete(__p);
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "<eps>");
    (*(*a4 + 32))(a4, &__p);
    if (v58 < 0)
    {
      operator delete(__p);
    }

    (*(*a3 + 104))(a3, "<eps>");
    (*(*a4 + 104))(a4, "<eps>");
    memset(&v56, 0, sizeof(v56));
    kaldi::quasar::Lexicon::GetPhoneSymbols(a2, &v56);
    NumberOfDisambigSymbols = kaldi::quasar::Lexicon::GetNumberOfDisambigSymbols(a2);
    if (NumberOfDisambigSymbols < 0)
    {
LABEL_89:
      __p = &v56;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      return 0;
    }

    if (((*(*(this + 1) + 72) - *(*(this + 1) + 64)) >> 3) >= 1)
    {
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteStates(this);
    }

    v39 = NumberOfDisambigSymbols;
    v42 = a2;
    memset(v54, 0, sizeof(v54));
    v55 = 1065353216;
    begin = v56.__begin_;
    v44 = this;
    if (v56.__begin_ != v56.__end_)
    {
      v40 = *(MEMORY[0x1E69E54E8] + 24);
      v41 = *MEMORY[0x1E69E54E8];
      v11 = "can not find symbol ";
      while (1)
      {
        if (!a5 || !kaldi::quasar::Lexicon::GetNumberOfDisambigSymbols(v42) || *std::string::at(begin, 0) != 35)
        {
LABEL_57:
          v27 = (*(*a3 + 32))(a3, begin);
          __p = begin;
          std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v54, &begin->__r_.__value_.__l.__data_)[5] = v27;
          goto LABEL_58;
        }

        std::string::basic_string(&v53, begin, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &__p);
        v12 = (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v53 : v53.__r_.__value_.__r.__words[0];
        v13 = (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v53.__r_.__value_.__r.__words[2]) : v53.__r_.__value_.__l.__size_;
        if (v13)
        {
          v14 = 0;
          while (memchr("0123456789", v12->__r_.__value_.__s.__data_[v14], 0xAuLL))
          {
            if (v13 == ++v14)
            {
              goto LABEL_27;
            }
          }

          if (v14 != -1)
          {
            break;
          }
        }

LABEL_27:
        std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "/WORD-DIS-", 10);
        this = v44;
        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v53;
        }

        else
        {
          v17 = v53.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v53.__r_.__value_.__l.__size_;
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "/", 1);
        std::stringbuf::str();
        v20 = (*(*a3 + 96))(a3, &__p);
        if (v58 < 0)
        {
          operator delete(__p);
        }

        if (v20 == -1)
        {
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
            v21 = v11;
            v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, v11, 20);
            std::stringbuf::str();
            if ((v46 & 0x80u) == 0)
            {
              v23 = v45;
            }

            else
            {
              v23 = v45[0];
            }

            if ((v46 & 0x80u) == 0)
            {
              v24 = v46;
            }

            else
            {
              v24 = v45[1];
            }

            v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " in the input symbol table", 26);
            v11 = v21;
            if (v46 < 0)
            {
              operator delete(v45[0]);
            }

            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
          }
        }

        else
        {
          __p = begin;
          std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v54, &begin->__r_.__value_.__l.__data_)[5] = v20;
        }

        v47 = v41;
        *(&v47 + *(v41 - 24)) = v40;
        v48 = MEMORY[0x1E69E5548] + 16;
        if (v51 < 0)
        {
          operator delete(v50);
        }

        v48 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v49);
        std::ostream::~ostream();
        MEMORY[0x1B8C85200](v52);
        if (v20 != -1)
        {
          v15 = 1;
          goto LABEL_51;
        }

        v15 = 0;
        v26 = 0;
LABEL_53:
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        if ((v26 & 1) == 0)
        {
          goto LABEL_88;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_57;
        }

LABEL_58:
        if (++begin == v56.__end_)
        {
          goto LABEL_59;
        }
      }

      v15 = 0;
      this = v44;
LABEL_51:
      v26 = 1;
      goto LABEL_53;
    }

LABEL_59:
    if (*(this + 44) != 1)
    {
LABEL_87:
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddState(this);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v47);
    v28 = MEMORY[0x1E69E54E8];
    if (a5 && kaldi::quasar::Lexicon::GetNumberOfDisambigSymbols(v42))
    {
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "/WORD-DIS-", 10);
      v30 = MEMORY[0x1B8C84C00](v29, (v39 + 1));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "/", 1);
      std::stringbuf::str();
      v31 = (*(*a3 + 96))(a3, &__p);
      if (v58 < 0)
      {
        operator delete(__p);
      }

      if (v31 == -1)
      {
        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "can not find symbol ", 20);
          std::stringbuf::str();
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &v53;
          }

          else
          {
            v33 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v34 = v53.__r_.__value_.__l.__size_;
          }

          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " in the input symbol table", 26);
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
        }

        v36 = 0;
        goto LABEL_84;
      }
    }

    else
    {
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, "#", 1);
      MEMORY[0x1B8C84C00](v37, (v39 + 1));
      std::stringbuf::str();
      (*(*a3 + 32))(a3, &__p);
      if (v58 < 0)
      {
        operator delete(__p);
      }
    }

    v36 = 1;
LABEL_84:
    v47 = *v28;
    *(&v47 + *(v47 - 24)) = v28[3];
    v48 = MEMORY[0x1E69E5548] + 16;
    if (v51 < 0)
    {
      operator delete(v50);
    }

    v48 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v49);
    std::ostream::~ostream();
    MEMORY[0x1B8C85200](v52);
    this = v44;
    if (v36)
    {
      goto LABEL_87;
    }

LABEL_88:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v54);
    goto LABEL_89;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "the input lexicon is empty", 26);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  }

  return 0;
}

void sub_1B57AC668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a66);
  std::ostringstream::~ostringstream(&a21);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a57);
  a21 = &a63;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void kaldi::quasar::Lexicon::const_iterator::operator*(void *a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Cannot dereference iterator that is already at the end");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  memset(v5, 0, 24);
  kaldi::quasar::Lexicon::GetPron(a1[2], *(v3 + 40), *(a1[1] + 32), v5);
  std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string const&,std::vector<std::string>&,0>(a2, (*a1 + 16), v5);
  v6 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1B57AC8F4(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 40));
  _Unwind_Resume(a1);
}

int **kaldi::quasar::Lexicon::const_iterator::operator++(int **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "Cannot increment iterator that is already at the end");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v4 = a1[1];
  v3 = a1[2];
  v5 = *(v4 + 1);
  if (v5)
  {
    do
    {
      v6 = v5;
      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    do
    {
      v6 = *(v4 + 2);
      v7 = *v6 == v4;
      v4 = v6;
    }

    while (!v7);
  }

  a1[1] = v6;
  if (a1[1] == (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v3 + 30, v1 + 10) + 4))
  {
    v8 = **a1;
    *a1 = v8;
    if (v8)
    {
      a1[1] = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1[2] + 30, v8 + 10)[3];
    }
  }

  return a1;
}

BOOL kaldi::quasar::LexiconFst::CreateFst(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 != *a2)
  {
    memset(v7, 0, 24);
    if (((*(*(a1 + 8) + 72) - *(*(a1 + 8) + 64)) >> 3) >= 1)
    {
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::DeleteStates(a1);
    }

    fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddState(a1);
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    v5 = a2[1];
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "the input word pron pair is empty", 33);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v7);
    v2 = v5;
  }

  return v2 != v3;
}

void sub_1B57ACDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,std::vector<std::string>>::pair[abi:ne200100]<std::string const&,std::vector<std::string>&,0>(std::string *this, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[1], *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return this;
}

void sub_1B57ACEC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ForceAlignDecoderBase::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  kaldi::TrainingGraphCompilerOptions::Register((this + 79), a2);
  kaldi::WordBoundaryInfoNewOpts::Register(this + 652, a2);
  quasar::QsrTextSymbolTable::Register(this[72], a2, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(v6, "dict-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Text lexicon file");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 57), __p, 0, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "dict-mapped-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Text lexicon file");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 60), __p, 0, 252, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "optional-silence");
  std::string::basic_string[abi:ne200100]<0>(__p, "Optional silence phone");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 63), __p, 1, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "silence-prob");
  std::string::basic_string[abi:ne200100]<0>(__p, "Silence probability (0.0 to 1.0)");
  quasar::SystemConfig::Register<float>(a2, v6, (this + 66), __p, 1, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "phone-syms-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Phone table file");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 67), __p, 1, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "tree-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Tree file");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 76), __p, 1, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "beam");
  std::string::basic_string[abi:ne200100]<0>(__p, "Decoding beam");
  quasar::SystemConfig::Register<float>(a2, v6, this + 644, __p, 0, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-tokens");
  std::string::basic_string[abi:ne200100]<0>(__p, "maximum number of tokens");
  quasar::SystemConfig::Register<int>(a2, v6, (this + 81), __p, 0, 252, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-boundary-int-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Word boundary file");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 83), __p, 1, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "align-lattice-expand-limit");
  std::string::basic_string[abi:ne200100]<0>(__p, "Lattice expansion limit when doing word alignment(0 for none)");
  quasar::SystemConfig::Register<int>(a2, v6, (this + 91), __p, 0, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
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
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 92), __p, 1, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B57AD3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void kaldi::TrainingGraphCompilerOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "transition-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scale of transition probabilities (excluding self-loops)");
  (*(*a2 + 24))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "self-loop-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scale of self-loop vs. non-self-loop probability mass ");
  (*(*a2 + 24))(a2, v6, a1 + 4, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "reorder");
  std::string::basic_string[abi:ne200100]<0>(__p, "Reorder transition ids for greater decoding efficiency.");
  (**a2)(a2, v6, a1 + 9, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "rm-eps");
  std::string::basic_string[abi:ne200100]<0>(__p, "Remove [most] epsilons before minimization (only applicable if disambig symbols present)");
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

void sub_1B57AD668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t quasar::ForceAlignDecoderBase::wordAlignLattice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 728);
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*a3 + 160))(a3) * v10 + 1000;
  }

  v12 = *(a1 + 712);
  v13 = *(a1 + 720);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a5)
  {
    std::allocate_shared[abi:ne200100]<kaldi::WordBoundaryInfo,std::allocator<kaldi::WordBoundaryInfo>,kaldi::WordBoundaryInfo&,0>();
  }

  if (kaldi::WordAlignLattice(a3, a2, v12, v11, a4))
  {
    if ((*(*a4 + 24))(a4) != -1)
    {
      kaldi::TopSortCompactLatticeIfNeeded(a4);
      v14 = 1;
      if (!v13)
      {
        return v14;
      }

      goto LABEL_17;
    }

    if (quasar::gLogLevel >= 2)
    {
      v31 = 0u;
      v32 = 0u;
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
      v16 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Word alignment lattice empty.", 29);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v16);
    }
  }

  else if (quasar::gLogLevel >= 2)
  {
    v31 = 0u;
    v32 = 0u;
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
    v16 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "Word alignment failed.", 22);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(&v16);
  }

  v14 = 0;
  if (v13)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  return v14;
}

void sub_1B57AD8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::ForceAlignDecoderBase::align(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v4 = a1;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v5 = *a4;
  v35 = a4[1];
  if (*a4 == v35)
  {
LABEL_37:
    kaldi::quasar::Lexicon::Lexicon(&__p, &v58, 1, 0, 0);
    kaldi::quasar::Lexicon::SetPronView(&__p, 2u, 1);
    LOBYTE(v56) = 0;
    std::allocate_shared[abi:ne200100]<kaldi::quasar::LexiconFst,std::allocator<kaldi::quasar::LexiconFst>,float &,std::string &,BOOL,0>();
  }

  while (1)
  {
    v6 = *v5;
    quasar::QsrTextSymbolTable::Find(*(v4 + 576), &v56);
    v7 = v57;
    v8 = v57;
    if ((v57 & 0x80u) != 0)
    {
      v7 = *(&v56 + 1);
    }

    if (!v7)
    {
      break;
    }

    v53 = 0u;
    v54 = 0u;
    v55 = 1065353216;
    v9 = *(v4 + 856);
    std::string::basic_string[abi:ne200100]<0>(&__p, " ");
    quasar::Lexicon::lookUpProns(v9, &v56, &v53, &__p);
    if (SHIBYTE(v38[0]) < 0)
    {
      operator delete(__p);
    }

    v10 = *(&v54 + 1);
    if (*(&v54 + 1))
    {
      for (i = v54; i; i = *i)
      {
        std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string const&,0>(&__p, &v56, i + 1);
        v12 = v59;
        if (v59 >= v60)
        {
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 4);
          v16 = v15 + 1;
          if (v15 + 1 > 0x555555555555555)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v60 - v58) >> 4) > v16)
          {
            v16 = 0x5555555555555556 * ((v60 - v58) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v60 - v58) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v17 = 0x555555555555555;
          }

          else
          {
            v17 = v16;
          }

          v36.__end_cap_.__value_ = &v58;
          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v58, v17);
          }

          v18 = 16 * ((v59 - v58) >> 4);
          v19 = __p;
          *(v18 + 16) = v38[0];
          *v18 = v19;
          v38[0] = 0;
          __p = 0uLL;
          v20 = *&v38[1];
          *(v18 + 40) = v38[3];
          *(v18 + 24) = v20;
          memset(&v38[1], 0, 24);
          v21 = 48 * v15 + 48;
          v22 = (48 * v15 - (v59 - v58));
          memcpy((v18 - (v59 - v58)), v58, v59 - v58);
          v23 = v58;
          v24 = v60;
          v58 = v22;
          v59 = v21;
          v60 = 0;
          v36.__end_ = v23;
          v36.__end_cap_.__value_ = v24;
          v36.__first_ = v23;
          v36.__begin_ = v23;
          std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v36);
          v59 = v21;
          if (SHIBYTE(v38[3]) < 0)
          {
            operator delete(v38[1]);
          }
        }

        else
        {
          v13 = __p;
          *(v59 + 16) = v38[0];
          *v12 = v13;
          v38[0] = 0;
          __p = 0uLL;
          v14 = v38[3];
          *(v12 + 24) = *&v38[1];
          *(v12 + 40) = v14;
          memset(&v38[1], 0, 24);
          v59 = v12 + 48;
        }

        if (SHIBYTE(v38[0]) < 0)
        {
          operator delete(__p);
        }
      }
    }

    else if ((quasar::gLogLevel & 0x80000000) == 0)
    {
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
      memset(v38, 0, sizeof(v38));
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Could not find wordId=", 22);
      v26 = MEMORY[0x1B8C84C00](v25, v6);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " word=", 6);
      if ((v57 & 0x80u) == 0)
      {
        v28 = &v56;
      }

      else
      {
        v28 = v56;
      }

      if ((v57 & 0x80u) == 0)
      {
        v29 = v57;
      }

      else
      {
        v29 = *(&v56 + 1);
      }

      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " in lexicon", 11);
      quasar::QuasarFatalMessage::~QuasarFatalMessage(&__p);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v53);
    if (v57 < 0)
    {
      operator delete(v56);
    }

    if (!v10)
    {
      goto LABEL_42;
    }

    ++v5;
    v4 = a1;
    if (v5 == v35)
    {
      goto LABEL_37;
    }
  }

  if ((quasar::gLogLevel & 0x80000000) == 0)
  {
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
    memset(v38, 0, sizeof(v38));
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Could not find word Id ", 23);
    v32 = MEMORY[0x1B8C84C00](v31, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " in word symbol table", 21);
    quasar::QuasarFatalMessage::~QuasarFatalMessage(&__p);
    v8 = v57;
  }

  if ((v8 & 0x80) != 0)
  {
    operator delete(v56);
  }

LABEL_42:
  *&__p = &v58;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return 2;
}

void sub_1B57AE0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&__p);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a16);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst((v56 - 144));
  kaldi::ScoreCacheFasterDecoder::~ScoreCacheFasterDecoder(&a18);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v56 - 120));
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::ForceAlignDecoder::runImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 760;
  *(a2 + 96) = *(a1 + 760);
  v9 = a2 + 96;
  v10 = *(a1 + 768);
  *(a2 + 112) = *(a1 + 776);
  *(a2 + 104) = v10;
  std::vector<BOOL>::operator=(a2 + 120, a1 + 784);
  if (v9 != v8)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a2 + 144), *(a1 + 808), *(a1 + 816), (*(a1 + 816) - *(a1 + 808)) >> 2);
  }

  v11 = *(a1 + 560);
  v12 = *(a1 + 568);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 176);
  *(a2 + 168) = v11;
  *(a2 + 176) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(a1 + 712);
  v15 = *(a1 + 720);
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a2 + 224);
  *(a2 + 216) = v14;
  *(a2 + 224) = v15;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(a1 + 652);
  *(a2 + 208) = *(a1 + 660);
  *(a2 + 200) = v17;
  quasar::SymbolTableList::clear(*(*a3 + 488));
  v18 = *(*a3 + 488);
  v19 = *(a1 + 584);
  v57 = *(a1 + 576);
  v58 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v18, &v57, 0, -1);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v20 = kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::RandomAccessTableReader(&v56, (a1 + 864));
  if (kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HasKey(v20, *(*a4 + 24) + 128))
  {
    v21 = *(*a4 + 24);
    kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::CheckImpl(&v56);
    v22 = (*(*v56 + 16))(v56, v21 + 128);
    if (*(v22 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(__str, *v22, *(v22 + 8));
    }

    else
    {
      v23 = *v22;
      *&__str[16] = *(v22 + 16);
      *__str = v23;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, " ");
    quasar::splitAndTrimNoEmpty(__str, __p, v39);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p[0]);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    __p[0] = 0;
    __p[1] = 0;
    v38 = 0;
    v32 = v39[0];
    v33 = v39[1];
    while (v32 != v33)
    {
      if (*(v32 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(__str, *v32, *(v32 + 1));
      }

      else
      {
        v34 = *v32;
        *&__str[16] = *(v32 + 2);
        *__str = v34;
      }

      LODWORD(v36) = std::stoi(__str, 0, 10);
      std::vector<int>::push_back[abi:ne200100](__p, &v36);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v32 = (v32 + 24);
    }

    _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_23CompactLatticeWeightTplINS1_16LatticeWeightTplIfEEiEEiEENS1_11VectorStateIS8_NS_9allocatorIS8_EEEEEENSA_ISD_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (quasar::gLogLevel >= 4)
  {
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
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(__str, 0, sizeof(__str));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__str);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__str, "No word ID sequence found for utterance ", 40);
    v25 = *(*a4 + 24);
    v28 = *(v25 + 128);
    v26 = v25 + 128;
    v27 = v28;
    v29 = *(v26 + 23);
    if (v29 >= 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = v27;
    }

    if (v29 >= 0)
    {
      v31 = *(v26 + 23);
    }

    else
    {
      v31 = *(v26 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v30, v31);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__str);
  }

  kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReader(&v56);
  return 2;
}

void sub_1B57AE744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a22);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a9);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  a22 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReader((v27 - 88));
  _Unwind_Resume(a1);
}

uint64_t kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HasKey(void *a1, uint64_t a2)
{
  kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::CheckImpl(a1);
  if ((kaldi::IsToken(a2) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "RandomAccessTableReader::HasKey, invalid key ", 46);
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

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, 34);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  v4 = *(**a1 + 8);

  return v4();
}

void quasar::ForceAlignDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  quasar::ForceAlignDecoderBase::registerParams(this, a2);
  std::string::basic_string[abi:ne200100]<0>(v6, "ref-rspec");
  std::string::basic_string[abi:ne200100]<0>(__p, "Rspec containing reference word ID sequence for every utt");
  quasar::SystemConfig::Register<std::string>(a2, v6, (this + 108), __p, 0, 234, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B57AE9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::ForceAlignDecoder::~ForceAlignDecoder(void **this)
{
  *this = &unk_1F2D30948;
  if (*(this + 887) < 0)
  {
    operator delete(this[108]);
  }

  quasar::ForceAlignDecoderBase::~ForceAlignDecoderBase(this);
}

{
  *this = &unk_1F2D30948;
  if (*(this + 887) < 0)
  {
    operator delete(this[108]);
  }

  quasar::ForceAlignDecoderBase::~ForceAlignDecoderBase(this);

  JUMPOUT(0x1B8C85350);
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string const&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1B57AEB40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_emplace<kaldi::WordBoundaryInfo>::__shared_ptr_emplace[abi:ne200100]<kaldi::WordBoundaryInfo&,std::allocator<kaldi::WordBoundaryInfo>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2D30A28;
  *(a1 + 32) = 0u;
  std::vector<kaldi::WordBoundaryInfo::PhoneType>::__init_with_size[abi:ne200100]<kaldi::WordBoundaryInfo::PhoneType*,kaldi::WordBoundaryInfo::PhoneType*>(a1 + 24, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a1 + 48) = *(a2 + 24);
  std::set<int>::set[abi:ne200100]((a1 + 56), a2 + 32);
  *(a1 + 80) = *(a2 + 56);
  return a1;
}

void sub_1B57AEC5C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[1].__shared_owners_ = v4;
    operator delete(v4);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<kaldi::WordBoundaryInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D30A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<kaldi::WordBoundaryInfo>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__tree<int>::destroy(a2 + 32, *(a2 + 40));
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;

    operator delete(v3);
  }
}

void *kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::RandomAccessTableReader(void *a1, std::string *this)
{
  *a1 = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (!this->__r_.__value_.__l.__size_)
    {
      return a1;
    }
  }

  else if (!*(&this->__r_.__value_.__s + 23))
  {
    return a1;
  }

  if ((kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Open(a1, this) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Error opening RandomAccessTableReader object  (rspecifier is: ", 62);
    v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = this;
    }

    else
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, size);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, ")");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  return a1;
}

uint64_t kaldi::RandomAccessTableReader<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Open(void *a1, std::string *this)
{
  if (*a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "RandomAccessTableReader::Open(): already open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v9 = 0;
  v3 = kaldi::ClassifyRspecifier(this, 0, &v9);
  if (v3 == 1)
  {
    if (BYTE1(v9) == 1)
    {
      if (BYTE2(v9) == 1)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (v3 == 2)
  {
    operator new();
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "RandomAccessTableReader::Open(), invalid rspecifier: ", 53);
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
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
  }

  return 0;
}

BOOL kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Open(uint64_t a1, std::string *this)
{
  if ((*(a1 + 136) - 2) <= 2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v39, " Opening already open RandomAccessTableReader: call Close first.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
  }

  kaldi::ClassifyRspecifier(this, a1 + 48, a1 + 16);
  v4 = 1;
  result = kaldi::ReadScriptFile(a1 + 48, 1, (a1 + 104));
  if (result)
  {
    std::string::operator=((a1 + 24), this);
    if ((*(a1 + 17) & 1) == 0)
    {
      v6 = *(a1 + 104);
      v7 = *(a1 + 112);
      v8 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 4));
      if (v7 == v6)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,std::string> *,false>(v6, v7, v39, v9, 1);
    }

    v10 = *(a1 + 104);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 4) <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v10) >> 4);
    }

    v12 = -48;
    do
    {
      if (!--v11)
      {
        result = 1;
        v4 = 2;
        goto LABEL_62;
      }

      v13 = v10 + v12 + 96;
      v14 = (v10 + v12 + 48);
      v15 = *(v10 + v12 + 71);
      if (v15 < 0)
      {
        v16 = *(v10 + v12 + 56);
        v14 = *v14;
      }

      else
      {
        v16 = *(v10 + v12 + 71);
      }

      v12 += 48;
      v17 = *(v13 + 23);
      if (v17 >= 0)
      {
        v18 = *(v13 + 23);
      }

      else
      {
        v18 = *(v13 + 8);
      }

      if (v17 >= 0)
      {
        v19 = v13;
      }

      else
      {
        v19 = *v13;
      }

      if (v18 >= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v18;
      }

      v21 = memcmp(v14, v19, v20);
      if (v16 >= v18)
      {
        v22 = 0;
      }

      else
      {
        v22 = -1;
      }

      if (v21)
      {
        v22 = v21;
      }
    }

    while (v22 < 0);
    v23 = (v10 + v12);
    v24 = *(v10 + v12 + 8);
    if (v15 >= 0)
    {
      v24 = v15;
    }

    v25 = " is not sorted (remove s, option or add ns, option): key is ";
    if (v24 == v18)
    {
      v26 = v15 >= 0 ? v23 : *v23;
      if (!memcmp(v26, v19, v18))
      {
        v25 = " contains duplicate key: ";
      }
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Script file ", 12);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v37 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v37, &__p);
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

      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, p_p, size);
      v31 = strlen(v25);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v25, v31);
      v33 = *(a1 + 104) + v12;
      v34 = *(v33 + 23);
      if (v34 >= 0)
      {
        v35 = *(a1 + 104) + v12;
      }

      else
      {
        v35 = *v33;
      }

      if (v34 >= 0)
      {
        v36 = *(v33 + 23);
      }

      else
      {
        v36 = *(v33 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v35, v36);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v39);
    }

    result = 0;
    v4 = 1;
  }

LABEL_62:
  *(a1 + 136) = v4;
  return result;
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Value(void *a1, uint64_t a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, "RandomAccessTableReaderWriter: Value() called on not-open object.");
    goto LABEL_26;
  }

  v4 = *(a1 + 34);
  if ((v4 - 3) > 1)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = *(a1 + 95);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a1[10];
  }

  if (v6 != v7 || (v5 >= 0 ? (v9 = a2) : (v9 = *a2), v8 >= 0 ? (v10 = a1 + 9) : (v10 = a1[9]), memcmp(v9, v10, v6)))
  {
LABEL_16:
    if ((*(*a1 + 56))(a1, a2, 1))
    {
      goto LABEL_17;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "RandomAccessTableReader::Value(), could not get item for key ", 61);
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
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", rspecifier is ", 16);
    v20 = a1[3];
    v19 = (a1 + 3);
    v18 = v20;
    v21 = *(v19 + 23);
    if (v21 >= 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    if (v21 >= 0)
    {
      v23 = *(v19 + 23);
    }

    else
    {
      v23 = *(v19 + 8);
    }

    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v22, v23);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "[to ignore this ", 16);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, ", add the p, (permissive) option to the rspecifier.");
LABEL_26:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  if (v4 != 3)
  {
    if (*(a1 + 16) != 1)
    {
      goto LABEL_19;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v26, "Value called twice for the same key\n");
    goto LABEL_26;
  }

LABEL_17:
  *(a1 + 34) = 4;
  if (*(a1 + 16) == 1)
  {
    kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::MakeTombstone(a1, a2);
  }

LABEL_19:

  return kaldi::KaldiObjectHolder<quasar::KaldiString>::Value(a1 + 12);
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Close(uint64_t a1)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Close() called on RandomAccessTableReader that was not open.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  kaldi::KaldiObjectHolder<quasar::KaldiString>::Clear((a1 + 96));
  v2 = *(a1 + 104);
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  for (i = *(a1 + 112); i != v2; std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](a1 + 104, i))
  {
    i -= 48;
  }

  *(a1 + 112) = v2;
  MEMORY[0x1B8C84820](a1 + 72, "");
  return 1;
}

void kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderScriptImpl(uint64_t a1)
{
  kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderScriptImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HasKeyInternal(uint64_t a1, __int128 *a2, int a3)
{
  if (*(a1 + 136) <= 1u)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "HasKey called on RandomAccessTableReader object that is not open.");
LABEL_32:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  kaldi::IsToken(a2);
  v16 = 0;
  result = kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::LookupKey(a1, a2, &v16);
  if (!result)
  {
    return result;
  }

  if (*(a1 + 16) == 1)
  {
    v7 = *(a1 + 104) + 48 * v16;
    if ((*(v7 + 47) & 0x80000000) == 0)
    {
      if (*(v7 + 47))
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    if (!*(v7 + 32))
    {
LABEL_16:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "HasKey called on key whose value was already read, and  you specified the once option (o,): try removing o, or adding no, : rspecifier is ", 141);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, a1 + 24);
      goto LABEL_32;
    }
  }

LABEL_6:
  if (!a3)
  {
    return 1;
  }

  if (kaldi::Input::OpenInternal((a1 + 8), *(a1 + 104) + 48 * v16 + 24, 1, 0))
  {
    if ((*(a1 + 136) - 3) <= 1)
    {
      kaldi::KaldiObjectHolder<quasar::KaldiString>::Clear((a1 + 96));
    }

    kaldi::Input::Stream((a1 + 8));
    kaldi::KaldiObjectHolder<quasar::KaldiString>::Read((a1 + 96));
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "RandomAccessTableReader: error opening stream ", 46);
    v9 = *(a1 + 104) + 48 * v16;
    if (*(v9 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v14, *(v9 + 24), *(v9 + 32));
    }

    else
    {
      v10 = *(v9 + 24);
      v14.__r_.__value_.__r.__words[2] = *(v9 + 40);
      *&v14.__r_.__value_.__l.__data_ = v10;
    }

    kaldi::PrintableRxfilename(&v14, &__p);
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

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v17);
  }

  return 0;
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::MakeTombstone(void *a1, __int128 *a2)
{
  v5 = 0;
  if ((kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::LookupKey(a1, a2, &v5) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "RandomAccessTableReader object in inconsistent state.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return MEMORY[0x1B8C84820](a1[13] + 48 * v5 + 24, "");
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::LookupKey(void *a1, __int128 *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = a1[16];
  v7 = a1[13];
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[14] - v7) >> 4);
  if (v6 < v8)
  {
    v9 = v7 + 48 * v6;
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(a2 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 1);
    }

    if (v11 == v12)
    {
      if (v10 >= 0)
      {
        v14 = (v7 + 48 * v6);
      }

      else
      {
        v14 = *v9;
      }

      if (v13 < 0)
      {
        a2 = *a2;
      }

      if (!memcmp(v14, a2, v11))
      {
        goto LABEL_57;
      }
    }
  }

  a1[16] = ++v6;
  if (v6 >= v8)
  {
    goto LABEL_28;
  }

  v15 = v7 + 48 * v6;
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = *(v15 + 23);
  }

  else
  {
    v17 = *(v15 + 8);
  }

  v18 = *(v4 + 23);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v4 + 1);
  }

  if (v17 == v18 && (v16 >= 0 ? (v20 = (v7 + 48 * v6)) : (v20 = *v15), v19 >= 0 ? (v21 = v4) : (v21 = *v4), !memcmp(v20, v21, v17)))
  {
LABEL_57:
    *a3 = v6;
    return 1;
  }

  else
  {
LABEL_28:
    std::pair<std::string,std::string>::pair[abi:ne200100]<std::string const&,char const(&)[1],0>(&v36, v4, "");
    v23 = a1[13];
    v22 = a1[14];
    if (v22 == v23)
    {
      v23 = a1[14];
    }

    else
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 4);
      do
      {
        v25 = &v23[6 * (v24 >> 1)];
        v26 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,std::string>,std::pair<std::string,std::string>>(&v39, v25, &v36.__r_.__value_.__l.__data_);
        if (v26)
        {
          v24 += ~(v24 >> 1);
        }

        else
        {
          v24 >>= 1;
        }

        if (v26)
        {
          v23 = v25 + 6;
        }
      }

      while (v24);
      v22 = a1[14];
    }

    if (v22 == v23)
    {
      goto LABEL_52;
    }

    v27 = *(v23 + 23);
    if (v27 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = v23[1];
    }

    v29 = *(v4 + 23);
    v30 = v29;
    if ((v29 & 0x80u) != 0)
    {
      v29 = *(v4 + 1);
    }

    if (v28 == v29 && (v27 >= 0 ? (v31 = v23) : (v31 = *v23), v30 >= 0 ? (v32 = v4) : (v32 = *v4), !memcmp(v31, v32, v28)))
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v23 - a1[13]) >> 4);
      *a3 = v35;
      a1[16] = v35;
      v33 = 1;
    }

    else
    {
LABEL_52:
      v33 = 0;
    }

    if (v38 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  return v33;
}

void sub_1B57AFE5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::string,std::string>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::RandomAccessTableReaderScriptImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderScriptImpl(uint64_t a1)
{
  *a1 = &unk_1F2D30A78;
  if ((*(a1 + 136) - 3) <= 1)
  {
    kaldi::KaldiObjectHolder<quasar::KaldiString>::Clear((a1 + 96));
  }

  v3 = (a1 + 104);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v3);
  kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder((a1 + 96));
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
    operator delete(*(a1 + 24));
  }

  kaldi::Input::~Input((a1 + 8));
  return a1;
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Open(uint64_t a1, std::string *this)
{
  if (*(a1 + 76) && ((*(*a1 + 24))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "TableReader::Open, error closing previous input.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  kaldi::ClassifyRspecifier(this, a1 + 48, a1 + 72);
  v4 = 1;
  v5 = kaldi::Input::OpenInternal((a1 + 8), a1 + 48, 1, 0);
  if ((v5 & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "TableReader: failed to open stream ", 35);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v10, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v10 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v10, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v12);
    }

    v4 = 0;
  }

  *(a1 + 76) = v4;
  return v5;
}

uint64_t kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Value(uint64_t a1, uint64_t a2)
{
  if (!kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(a1, a2))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "RandomAccessTableReader: Value() called but no such key ", 56);
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

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " in archive ", 12);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __p = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&__p, &v13);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, &v13);
    std::string::~string(&v13);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v4 = *(a1 + 40);

  return kaldi::KaldiObjectHolder<quasar::KaldiString>::Value(v4);
}

void kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderDSortedArchiveImpl(uint64_t a1)
{
  kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderDSortedArchiveImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::IsOpen(uint64_t a1)
{
  v1 = *(a1 + 76);
  if (v1 >= 5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "IsOpen() called on invalid object.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  return (0x1Eu >> v1) & 1;
}

BOOL kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(uint64_t a1, std::string *__str)
{
  v4 = (a1 + 80);
  v5 = *(a1 + 103);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_23;
    }
  }

  else if (!*(a1 + 103))
  {
    goto LABEL_23;
  }

  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v6 >= 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if ((v5 & 0x80000000) == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = *(a1 + 88);
  }

  if ((v5 & 0x80000000) == 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = *(a1 + 80);
  }

  if (v9 >= size)
  {
    v11 = size;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = size < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v53);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "RandomAccessTableReader: you provided the cs option ", 54);
    v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "but are not calling with keys in sorted order: ", 47);
    v47 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v47 >= 0)
    {
      v48 = __str;
    }

    else
    {
      v48 = __str->__r_.__value_.__r.__words[0];
    }

    if (v47 >= 0)
    {
      v49 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = __str->__r_.__value_.__l.__size_;
    }

    v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " < ", 3);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v51, v4);
LABEL_92:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v53);
  }

LABEL_23:
  std::string::operator=(v4, __str);
  v14 = *(a1 + 76);
  if (v14 == 1)
  {
    kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::ReadNextObject(a1);
    v14 = *(a1 + 76);
  }

  if ((v14 - 3) < 2)
  {
    return 0;
  }

  if (!v14)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v53);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v53, "Trying to access a RandomAccessTableReader object that is not open.");
    goto LABEL_92;
  }

  v16 = 0;
  memset(&__p, 0, sizeof(__p));
  v17 = *(a1 + 39);
  while (1)
  {
    v18 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v18 >= 0)
    {
      v19 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __str->__r_.__value_.__l.__size_;
    }

    if (v18 >= 0)
    {
      v20 = __str;
    }

    else
    {
      v20 = __str->__r_.__value_.__r.__words[0];
    }

    v21 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a1 + 24);
    }

    v22 = v21 >= 0 ? (a1 + 16) : *(a1 + 16);
    v23 = v17 >= v19 ? v19 : v17;
    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v17 ? -1 : v17 < v19;
    v26 = v24 ? v24 : v25;
    if (v26 < 1)
    {
      break;
    }

    std::string::operator=(&__p, (a1 + 16));
    v27 = kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(*(a1 + 40));
    MEMORY[0x1B8C85350](v27, 0x20C4093837F09);
    *(a1 + 40) = 0;
    *(a1 + 76) = 1;
    kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::ReadNextObject(a1);
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (*(a1 + 76) != 2)
    {
      break;
    }

    v17 = *(a1 + 39);
    v28 = v17;
    v29 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v29 = *(a1 + 16);
      v28 = *(a1 + 24);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v30 = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v30 >= v28)
    {
      v32 = v28;
    }

    else
    {
      v32 = v30;
    }

    v33 = memcmp(v29, p_p, v32);
    if (v28 < v30)
    {
      v34 = -1;
    }

    else
    {
      v34 = v30 < v28;
    }

    if (v33)
    {
      v34 = v33;
    }

    if (v34 <= 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v53);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "RandomAccessTableReader: you provided the s option ", 53);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " (sorted order), but keys are out of order or duplicated: ", 58);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &__p;
      }

      else
      {
        v37 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = __p.__r_.__value_.__l.__size_;
      }

      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " is followed by ", 16);
      v41 = *(a1 + 39);
      if (v41 >= 0)
      {
        v42 = a1 + 16;
      }

      else
      {
        v42 = *(a1 + 16);
      }

      if (v41 >= 0)
      {
        v43 = *(a1 + 39);
      }

      else
      {
        v43 = *(a1 + 24);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v53);
    }
  }

  v15 = v26 == 0;
  if (v16 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_1B57B0614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::ReadNextObject(uint64_t a1)
{
  if (*(a1 + 76) != 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v27, "TableReader: ReadNextObject() called from wrong state.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
  }

  v2 = kaldi::Input::Stream((a1 + 8));
  std::ios_base::clear((v2 + *(*v2 - 24)), 0);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, a1 + 16);
  v3 = *(v2 + *(*v2 - 24) + 32);
  if ((v3 & 2) == 0)
  {
    if ((v3 & 5) != 0)
    {
      if (kaldi::g_kaldi_verbose_level < -1)
      {
LABEL_26:
        v5 = 4;
        goto LABEL_27;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Error reading archive ", 22);
      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v25 = *(a1 + 48);
      }

      kaldi::PrintableRxfilename(&v25, &__p);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v27);
        goto LABEL_26;
      }

      v9 = v25.__r_.__value_.__r.__words[0];
LABEL_24:
      operator delete(v9);
      goto LABEL_25;
    }

    v6 = std::istream::peek();
    if (v6 != 9)
    {
      if (v6 == 10)
      {
        goto LABEL_12;
      }

      if (v6 != 32)
      {
        if (kaldi::g_kaldi_verbose_level < -1)
        {
          goto LABEL_26;
        }

        kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Invalid archive file format: expected space after key ", 54);
        v11 = *(a1 + 39);
        if (v11 >= 0)
        {
          v12 = a1 + 16;
        }

        else
        {
          v12 = *(a1 + 16);
        }

        if (v11 >= 0)
        {
          v13 = *(a1 + 39);
        }

        else
        {
          v13 = *(a1 + 24);
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", got character ", 16);
        v24 = std::istream::peek();
        kaldi::CharToString(&v24, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = __p.__r_.__value_.__l.__size_;
        }

        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", reading ", 10);
        if (*(a1 + 71) < 0)
        {
          std::string::__init_copy_ctor_external(&v22, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          v22 = *(a1 + 48);
        }

        kaldi::PrintableRxfilename(&v22, &v23);
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v23;
        }

        else
        {
          v20 = v23.__r_.__value_.__r.__words[0];
        }

        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v23.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v9 = __p.__r_.__value_.__r.__words[0];
        goto LABEL_24;
      }
    }

    std::istream::get();
LABEL_12:
    operator new();
  }

  v5 = 3;
LABEL_27:
  *(a1 + 76) = v5;
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::CloseInternal(uint64_t a1)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Close() called on TableReader twice or otherwise wrongly.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  if (*(a1 + 8))
  {
    kaldi::Input::Close((a1 + 8));
  }

  v2 = *(a1 + 76);
  if (v2 == 2)
  {
    v3 = kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(*(a1 + 40));
    MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
    *(a1 + 40) = 0;
    v2 = *(a1 + 76);
  }

  *(a1 + 76) = 0;
  if (v2 != 4)
  {
    return 1;
  }

  if (*(a1 + 75) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "RandomAccessTableReader, error state detected closing reader.  ", 63);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Ignoring it because you specified permissive mode.", 50);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v6);
    }

    return 1;
  }

  return 0;
}

uint64_t kaldi::RandomAccessTableReaderDSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderDSortedArchiveImpl(uint64_t a1)
{
  *a1 = &unk_1F2D30AF0;
  if (kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::IsOpen(a1) && ((*(*a1 + 24))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Error closing RandomAccessTableReader\n", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderArchiveImplBase(a1);
}

uint64_t kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderArchiveImplBase(uint64_t a1)
{
  *a1 = &unk_1F2D30B68;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  kaldi::Input::~Input((a1 + 8));
  return a1;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HasKey(uint64_t a1, const std::string::value_type *a2)
{
  kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HandlePendingDelete(a1);
  v10 = 0;
  result = kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(a1, a2, &v10);
  if (result && *(a1 + 72) == 1 && !*(*(a1 + 80) + 32 * v10 + 24))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Error: HasKey called after Value() already called for ", 54);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " that key, and once (o) option specified: ", 42);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __p = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&__p, &v8);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v6, &v8);
    std::string::~string(&v8);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  return result;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Value(uint64_t a1, uint64_t a2)
{
  kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HandlePendingDelete(a1);
  v23 = 0;
  if (!kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(a1, a2, &v23))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "RandomAccessTableReader: Value() called but no such key ", 56);
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

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " in archive ", 12);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v19 = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&v19, &v21);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v11, &v21);
    std::string::~string(&v21);
    v18 = &v19;
LABEL_26:
    std::string::~string(v18);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
  }

  v4 = *(*(a1 + 80) + 32 * v23 + 24);
  if (!v4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Error: Value() called more than once for key ", 45);
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
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " and once (o) option specified: ", 32);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v20 = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&v20, &v21);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &v21);
    std::string::~string(&v21);
    v18 = &v20;
    goto LABEL_26;
  }

  if (*(a1 + 72) == 1)
  {
    *(a1 + 112) = v23;
  }

  return kaldi::KaldiObjectHolder<quasar::KaldiString>::Value(v4);
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Close(void *a1)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = (a1 + 10);
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 24;
    do
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v8 = kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(v7);
        MEMORY[0x1B8C85350](v8, 0x20C4093837F09);
        v2 = a1[10];
        v3 = a1[11];
      }

      ++v5;
      v6 += 32;
    }

    while (v5 < (v3 - v2) >> 5);
  }

  std::vector<quasar::TextTokenizer::Token>::clear[abi:ne200100](v4);
  a1[13] = -1;
  a1[14] = -1;

  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::CloseInternal(a1);
}

void kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderSortedArchiveImpl(void **a1)
{
  kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderSortedArchiveImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HandlePendingDelete(uint64_t result)
{
  v1 = *(result + 112);
  if (v1 != -1)
  {
    v2 = result;
    v3 = kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(*(*(result + 80) + 32 * v1 + 24));
    result = MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
    *(*(v2 + 80) + 32 * *(v2 + 112) + 24) = 0;
    *(v2 + 112) = -1;
  }

  return result;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(uint64_t a1, const std::string::value_type *a2, void *a3)
{
  v3 = a2;
  v5 = (a1 + 80);
  v6 = *(a1 + 80);
  v7 = *(a1 + 104);
  v8 = *(a1 + 88);
  if (v7 < (v8 - v6) >> 5)
  {
    v9 = v6 + 32 * v7;
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(a2 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 1);
    }

    if (v11 == v12)
    {
      if (v10 >= 0)
      {
        v14 = (v6 + 32 * v7);
      }

      else
      {
        v14 = *v9;
      }

      if (v13 < 0)
      {
        a2 = *a2;
      }

      if (!memcmp(v14, a2, v11))
      {
        *a3 = v7;
        return 1;
      }
    }
  }

  v15 = *(a1 + 76);
  if (v15 == 1)
  {
    v17 = 0;
    v88 = (a1 + 16);
    while (1)
    {
      v6 = *(a1 + 80);
      v8 = *(a1 + 88);
      if (v6 != v8)
      {
        v18 = *(v8 - 9);
        v16 = v3[23];
        if (v16 >= 0)
        {
          v19 = *(v3 + 23);
        }

        else
        {
          v19 = *(v3 + 1);
        }

        if (v16 >= 0)
        {
          v20 = v3;
        }

        else
        {
          v20 = *v3;
        }

        if (v18 >= 0)
        {
          v21 = *(v8 - 9);
        }

        else
        {
          v21 = *(v8 - 24);
        }

        if (v18 >= 0)
        {
          v22 = (v8 - 32);
        }

        else
        {
          v22 = *(v8 - 32);
        }

        if (v21 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v21;
        }

        v24 = memcmp(v20, v22, v23);
        if (v19 < v21)
        {
          v25 = -1;
        }

        else
        {
          v25 = v21 < v19;
        }

        if (v24)
        {
          v25 = v24;
        }

        if (v25 < 1)
        {
          break;
        }
      }

      kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::ReadNextObject(a1);
      v26 = *(a1 + 76);
      if (v26 == 2)
      {
        v27 = *(a1 + 88);
        v28 = *(a1 + 39);
        if (*(a1 + 80) != v27)
        {
          v29 = *(a1 + 39);
          v30 = (a1 + 16);
          if ((*(a1 + 39) & 0x80) != 0)
          {
            v30 = *(a1 + 16);
            v29 = *(a1 + 24);
          }

          v31 = *(v27 - 9);
          if (v31 >= 0)
          {
            v32 = *(v27 - 9);
          }

          else
          {
            v32 = *(v27 - 24);
          }

          if (v31 >= 0)
          {
            v33 = (v27 - 32);
          }

          else
          {
            v33 = *(v27 - 32);
          }

          if (v32 >= v29)
          {
            v34 = v29;
          }

          else
          {
            v34 = v32;
          }

          v35 = memcmp(v30, v33, v34);
          if (v29 < v32)
          {
            v36 = -1;
          }

          else
          {
            v36 = v32 < v29;
          }

          if (v35)
          {
            v36 = v35;
          }

          if (v36 <= 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v92);
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v92, "RandomAccessTableReader: you provide the sorted (s) ", 52);
            v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "option but keys in archive ", 27);
            if (*(a1 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&v91, *(a1 + 48), *(a1 + 56));
            }

            else
            {
              v91 = *(a1 + 48);
            }

            kaldi::PrintableRxfilename(&v91, &v89);
            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v73 = &v89;
            }

            else
            {
              v73 = v89.__r_.__value_.__r.__words[0];
            }

            if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v89.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v89.__r_.__value_.__l.__size_;
            }

            v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, size);
            v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " are not ", 9);
            v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "in sorted order: ", 17);
            v78 = *(a1 + 88);
            v81 = *(v78 - 32);
            v79 = v78 - 32;
            v80 = v81;
            v82 = *(v79 + 23);
            if (v82 >= 0)
            {
              v83 = v79;
            }

            else
            {
              v83 = v80;
            }

            if (v82 >= 0)
            {
              v84 = *(v79 + 23);
            }

            else
            {
              v84 = *(v79 + 8);
            }

            v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v83, v84);
            v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " is followed by ", 16);
            std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v86, v88);
            std::string::~string(&v89);
            std::string::~string(&v91);
LABEL_122:
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v92);
          }
        }

        if (v28 < 0)
        {
          std::string::__init_copy_ctor_external(&v89, *(a1 + 16), *(a1 + 24));
          v37 = *(a1 + 40);
          v27 = *(a1 + 88);
        }

        else
        {
          v37 = *(a1 + 40);
          *&v89.__r_.__value_.__l.__data_ = *v88;
          v89.__r_.__value_.__r.__words[2] = *(a1 + 32);
        }

        v90 = v37;
        v38 = *(a1 + 96);
        if (v27 >= v38)
        {
          v40 = (v27 - *v5) >> 5;
          if ((v40 + 1) >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v41 = v38 - *v5;
          v42 = v41 >> 4;
          if (v41 >> 4 <= (v40 + 1))
          {
            v42 = v40 + 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFE0)
          {
            v43 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          v94 = v5;
          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>(v5, v43);
          }

          v44 = 32 * v40;
          v45 = *&v89.__r_.__value_.__l.__data_;
          *(v44 + 16) = *(&v89.__r_.__value_.__l + 2);
          *v44 = v45;
          memset(&v89, 0, sizeof(v89));
          *(v44 + 24) = v90;
          v46 = 32 * v40 + 32;
          v47 = *(a1 + 80);
          v48 = *(a1 + 88) - v47;
          v49 = (32 * v40 - v48);
          memcpy(v49, v47, v48);
          v50 = *(a1 + 80);
          *(a1 + 80) = v49;
          *(a1 + 88) = v46;
          v51 = *(a1 + 96);
          *(a1 + 96) = 0;
          v92.__r_.__value_.__r.__words[2] = v50;
          v93 = v51;
          v92.__r_.__value_.__r.__words[0] = v50;
          v92.__r_.__value_.__l.__size_ = v50;
          std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v92);
          v52 = SHIBYTE(v89.__r_.__value_.__r.__words[2]);
          *(a1 + 88) = v46;
          if (v52 < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v39 = *&v89.__r_.__value_.__l.__data_;
          *(v27 + 16) = *(&v89.__r_.__value_.__l + 2);
          *v27 = v39;
          memset(&v89, 0, sizeof(v89));
          *(v27 + 24) = v90;
          *(a1 + 88) = v27 + 32;
        }

        *(a1 + 40) = 0;
        v26 = 1;
        *(a1 + 76) = 1;
      }

      v17 = 1;
      if (v26 != 1)
      {
        v6 = *(a1 + 80);
        v8 = *(a1 + 88);
        goto LABEL_98;
      }
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_98:
    if (v6 == v8)
    {
      return 0;
    }

    v62 = *(v8 - 9);
    if (v62 >= 0)
    {
      v63 = *(v8 - 9);
    }

    else
    {
      v63 = *(v8 - 24);
    }

    v64 = *(v3 + 23);
    v65 = v64;
    if ((v64 & 0x80u) != 0)
    {
      v64 = *(v3 + 1);
    }

    if (v63 != v64)
    {
      return 0;
    }

    v66 = v62 >= 0 ? (v8 - 32) : *(v8 - 32);
    v67 = v65 >= 0 ? v3 : *v3;
    if (memcmp(v66, v67, v63))
    {
      return 0;
    }

    v69 = ((v8 - v6) >> 5) - 1;
    *a3 = v69;
    *(a1 + 104) = v69;
    return 1;
  }

  if (!v15)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v92);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v92, "Trying to access a RandomAccessTableReader object that is not open.");
    goto LABEL_122;
  }

  LOBYTE(v16) = v3[23];
LABEL_17:
  if ((v16 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&v92, *v3, *(v3 + 1));
    v6 = *(a1 + 80);
    v8 = *(a1 + 88);
  }

  else
  {
    v92 = *v3;
  }

  v93 = 0;
  v95 = 0;
  v53 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *> *>,std::pair<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__identity,kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::PairCompare>(v6, &v92.__r_.__value_.__l.__data_, (v8 - v6) >> 5);
  v54 = v53;
  if (*(a1 + 88) == v53)
  {
    goto LABEL_94;
  }

  v55 = v3[23];
  if (v55 >= 0)
  {
    v56 = *(v3 + 23);
  }

  else
  {
    v56 = *(v3 + 1);
  }

  v57 = *(v53 + 23);
  v58 = v57;
  if ((v57 & 0x80u) != 0)
  {
    v57 = *(v53 + 8);
  }

  if (v56 == v57 && (v55 >= 0 ? (v59 = v3) : (v59 = *v3), v58 >= 0 ? (v60 = v54) : (v60 = *v54), !memcmp(v59, v60, v56)))
  {
    v68 = (v54 - *(a1 + 80)) >> 5;
    *a3 = v68;
    *(a1 + 104) = v68;
    v61 = 1;
  }

  else
  {
LABEL_94:
    v61 = 0;
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  return v61;
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::pair<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *> *>,std::pair<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__identity,kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::PairCompare>(uint64_t a1, const void **a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    do
    {
      v8 = a1 + 32 * (v4 >> 1);
      v9 = *(v8 + 23);
      if (v9 >= 0)
      {
        v10 = *(v8 + 23);
      }

      else
      {
        v10 = *(v8 + 8);
      }

      if (v9 >= 0)
      {
        v11 = (a1 + 32 * (v4 >> 1));
      }

      else
      {
        v11 = *v8;
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

      if (v14)
      {
        v4 += ~(v4 >> 1);
      }

      else
      {
        v4 >>= 1;
      }

      if (v14)
      {
        a1 = v8 + 32;
      }
    }

    while (v4);
  }

  return a1;
}

uint64_t kaldi::RandomAccessTableReaderSortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderSortedArchiveImpl(void **a1)
{
  *a1 = &unk_1F2D30BB0;
  if (kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::IsOpen(a1) && ((*(*a1 + 3))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Error closing RandomAccessTableReader\n", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  v3[0] = a1 + 10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v3);
  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderArchiveImplBase(a1);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HasKey(uint64_t a1, uint64_t a2)
{
  kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HandlePendingDelete(a1);

  return kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(a1, a2, 0);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Value(uint64_t a1, uint64_t a2)
{
  kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HandlePendingDelete(a1);
  v14 = 0;
  if (!kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(a1, a2, &v14))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "RandomAccessTableReader: Value() called but no such key ", 56);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " in archive ", 12);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      __p = *(a1 + 48);
    }

    kaldi::PrintableRxfilename(&__p, &v12);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, &v12);
    std::string::~string(&v12);
    std::string::~string(&__p);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  return v14;
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::Close(uint64_t a1)
{
  for (i = *(a1 + 96); i; i = *i)
  {
    v3 = i[5];
    if (v3)
    {
      v4 = kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(v3);
      MEMORY[0x1B8C85350](v4, 0x20C4093837F09);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(a1 + 80);
  MEMORY[0x1B8C84820](a1 + 136, "");
  *(a1 + 128) = 0;

  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::CloseInternal(a1);
}

void kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderUnsortedArchiveImpl(uint64_t a1)
{
  kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderUnsortedArchiveImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::HandlePendingDelete(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    *(a1 + 128) = 0;
    v2 = *(*(a1 + 120) + 40);
    if (v2)
    {
      v3 = kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(v2);
      MEMORY[0x1B8C85350](v3, 0x20C4093837F09);
    }

    v4 = *(a1 + 159);
    if (v4 < 0)
    {
      v4 = *(a1 + 144);
    }

    v5 = *(a1 + 120);
    if (!v4)
    {
      std::string::operator=((a1 + 136), (v5 + 16));
      v5 = *(a1 + 120);
    }

    if (*(v5 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, *(v5 + 16), *(v5 + 24));
      v5 = *(a1 + 120);
    }

    else
    {
      v13 = *(v5 + 16);
    }

    std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::erase((a1 + 80), v5);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v12, 3);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "After deleting holder for key: ", 31);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v13;
      }

      else
      {
        v7 = v13.__r_.__value_.__r.__words[0];
      }

      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, size);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", map size = ", 13);
      v11 = MEMORY[0x1B8C84C30](v10, *(a1 + 104));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ".", 1);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v12);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B57B1D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (*(v10 - 25) < 0)
  {
    operator delete(*(v10 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::FindKeyInternal(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,kaldi::StringHasher,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::equal_to<std::string>,kaldi::StringHasher,true>,std::allocator<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>>::find<std::string>((a1 + 80), a2);
  if (v6)
  {
    if (!a3)
    {
      return 1;
    }

    v7 = v6;
    goto LABEL_4;
  }

  if (*(a1 + 76) != 1)
  {
LABEL_30:
    if (*(a1 + 72) == 1)
    {
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = *(a2 + 8);
      }

      v21 = *(a1 + 159);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a1 + 144);
      }

      if (v20 == v21)
      {
        v23 = v19 >= 0 ? a2 : *a2;
        v24 = v22 >= 0 ? (a1 + 136) : *(a1 + 136);
        if (!memcmp(v23, v24, v20))
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
          v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "RandomAccessTableReader: you specified the once (o) option but you are calling using key ", 89);
          v34 = *(a2 + 23);
          if (v34 >= 0)
          {
            v35 = a2;
          }

          else
          {
            v35 = *a2;
          }

          if (v34 >= 0)
          {
            v36 = *(a2 + 23);
          }

          else
          {
            v36 = *(a2 + 8);
          }

          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " more than once: archive is ", 28);
          if (*(a1 + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v39, *(a1 + 48), *(a1 + 56));
          }

          else
          {
            v39 = *(a1 + 48);
          }

          kaldi::PrintableRxfilename(&v39, &v40);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v38, &v40);
          std::string::~string(&v40);
          std::string::~string(&v39);
          goto LABEL_57;
        }
      }
    }

    return 0;
  }

  v9 = (a1 + 16);
  while (1)
  {
    kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::ReadNextObject(a1);
    v10 = *(a1 + 76);
    if (v10 == 2)
    {
      break;
    }

LABEL_29:
    if (v10 != 1)
    {
      goto LABEL_30;
    }
  }

  *(a1 + 76) = 1;
  if (*(a1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *&v41.__r_.__value_.__l.__data_ = *v9;
    v41.__r_.__value_.__r.__words[2] = *(a1 + 32);
  }

  v42 = *(a1 + 40);
  v7 = std::__hash_table<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,kaldi::StringHasher,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::equal_to<std::string>,kaldi::StringHasher,true>,std::allocator<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>((a1 + 80), &v41);
  v12 = v11;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if ((v12 & 1) == 0)
  {
    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(v25);
      MEMORY[0x1B8C85350](v26, 0x20C4093837F09);
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Error in RandomAccessTableReader: duplicate key ", 48);
    v28 = *(a1 + 39);
    if (v28 >= 0)
    {
      v29 = a1 + 16;
    }

    else
    {
      v29 = *(a1 + 16);
    }

    if (v28 >= 0)
    {
      v30 = *(a1 + 39);
    }

    else
    {
      v30 = *(a1 + 24);
    }

    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " in archive ", 12);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32, a1 + 48);
LABEL_57:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v41);
  }

  *(a1 + 40) = 0;
  v13 = *(a1 + 39);
  if (v13 >= 0)
  {
    v14 = *(a1 + 39);
  }

  else
  {
    v14 = *(a1 + 24);
  }

  v15 = *(a2 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a2 + 8);
  }

  if (v14 != v15 || (v13 >= 0 ? (v17 = (a1 + 16)) : (v17 = *v9), v16 >= 0 ? (v18 = a2) : (v18 = *a2), memcmp(v17, v18, v14)))
  {
    v10 = *(a1 + 76);
    goto LABEL_29;
  }

  if (!a3)
  {
    return 1;
  }

LABEL_4:
  *a3 = kaldi::KaldiObjectHolder<quasar::KaldiString>::Value(v7[5]);
  if (*(a1 + 72) != 1)
  {
    return 1;
  }

  *(a1 + 120) = v7;
  result = 1;
  *(a1 + 128) = 1;
  return result;
}

void sub_1B57B209C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&a21);
}

void sub_1B57B20DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,kaldi::StringHasher,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::equal_to<std::string>,kaldi::StringHasher,true>,std::allocator<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>>::find<std::string>(void *a1, char *a2)
{
  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  for (i = 0; v4; --v4)
  {
    v8 = *v6++;
    i = v8 + 7853 * i;
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = i;
    if (i >= *&v9)
    {
      v12 = i % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & i;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  for (j = *v13; j; j = *j)
  {
    v15 = j[1];
    if (v15 == i)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, j + 2, a2))
      {
        return j;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= *&v9 - 1;
      }

      if (v15 != v12)
      {
        return 0;
      }
    }
  }

  return j;
}

const void **std::__hash_table<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,kaldi::StringHasher,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::equal_to<std::string>,kaldi::StringHasher,true>,std::allocator<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>(void *a1, char *a2)
{
  v4 = a2[23];
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  for (i = 0; v4; --v4)
  {
    v8 = *v6++;
    i = v8 + 7853 * i;
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_25;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = i;
    if (i >= *&v9)
    {
      v12 = i % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & i;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_25:
    std::__hash_table<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,kaldi::StringHasher,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>,std::equal_to<std::string>,kaldi::StringHasher,true>,std::allocator<std::__hash_value_type<std::string,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>>::__construct_node_hash<std::pair<std::string const,kaldi::KaldiObjectHolder<quasar::KaldiString> *>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == i)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_25;
    }

LABEL_24:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_24;
  }

  return v14;
}

void sub_1B57B2488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57B2550(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::RandomAccessTableReaderUnsortedArchiveImpl<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderUnsortedArchiveImpl(uint64_t a1)
{
  *a1 = &unk_1F2D30C10;
  if (kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::IsOpen(a1) && ((*(*a1 + 24))(a1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Error closing RandomAccessTableReader\n", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v3);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 80);

  return kaldi::RandomAccessTableReaderArchiveImplBase<kaldi::KaldiObjectHolder<quasar::KaldiString>>::~RandomAccessTableReaderArchiveImplBase(a1);
}

void sub_1B57B2B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1B57B2F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  *(v9 - 40) = v7;
  std::vector<quasar::TranslationPhrase::SegmentInfo>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__11(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *std::vector<quasar::TranslationPhrase::SegmentInfo>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TranslationPhrase::SegmentInfo>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B57B3084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TranslationPhrase::SegmentInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_1B57B3188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  fst::CompactLatticeMinimizer<fst::LatticeWeightTpl<float>,int>::~CompactLatticeMinimizer(&a9);

  _Unwind_Resume(a1);
}

void reverseTrie(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  Trie<unsigned int,unsigned int>::Trie(a3, 0);
  *&v17[8] = 0;
  v18 = 0;
  v16 = 0;
  *v17 = (a2 + 1);
  if (a2 == -1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v6 = 0;
    v12 = 0;
    while (1)
    {
      TrieIter2<unsigned int,unsigned int>::TrieIter2(v11, a1, *&v17[4] - 4 * v16, (v6 - 1), 0);
      while (1)
      {
        v8 = TrieIter2<unsigned int,unsigned int>::next(v11);
        if (!v8)
        {
          break;
        }

        Vocab::copy(v14 - 4 * v13, (*&v17[4] - 4 * v16), v7);
        Vocab::reverse(v14 - 4 * v13, v9);
        v10 = *(v8 + 8);
        *(Trie<unsigned int,unsigned int>::insertTrie(a3, (v14 - 4 * v13), &v12) + 2) = v10;
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v11);
      ++v6;
    }
  }

  Array<unsigned int>::alloc();
}

void sub_1B57B3390(_Unwind_Exception *a1)
{
  v5 = *(v3 - 64);
  if (v5)
  {
    MEMORY[0x1B8C85310](v5, v1);
  }

  Trie<unsigned int,unsigned int>::~Trie(v2);
  _Unwind_Resume(a1);
}

void MEModel::MEModel(MEModel *this, Vocab *a2, int a3)
{
  LM::LM(this, a2);
  *v5 = &unk_1F2D30C70;
  *(v5 + 152) = a3;
  *(v5 + 176) = 0;
  *(v5 + 184) = 0;
  Trie<unsigned int,unsigned int>::Trie(v5 + 192, 0);
  Trie<unsigned int,unsigned int>::Trie(this + 208, 0);
  *(this + 28) = 0;
  *(this + 58) = 1000;
}

void sub_1B57B345C(_Unwind_Exception *a1)
{
  Trie<unsigned int,unsigned int>::~Trie(v1 + 192);
  LM::~LM(v1);
  _Unwind_Resume(a1);
}

void MEModel::~MEModel(MEModel *this)
{
  *this = &unk_1F2D30C70;
  MEModel::clear(this);
  LHash<unsigned int,double>::clear(this + 28, 0);
  Trie<unsigned int,unsigned int>::~Trie(this + 208);
  Trie<unsigned int,unsigned int>::~Trie(this + 192);

  LM::~LM(this);
}

{
  MEModel::~MEModel(this);

  JUMPOUT(0x1B8C85350);
}

void MEModel::clear(MEModel *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    hmaxent::model::~model(v2);
    MEMORY[0x1B8C85350]();
  }

  LHash<unsigned int,Trie<unsigned int,unsigned int>>::clear(this + 26, 0);
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::clear(this + 24, 0);

  LHash<unsigned int,double>::clear(this + 28, 0);
}

float MEModel::wordProb(uint64_t a1, const unsigned int *a2, Vocab *this)
{
  v6 = Vocab::length(this, a2);
  if (*(*(*a1 + 344))(a1))
  {
    if (*(*(**(a1 + 24) + 88))(*(a1 + 24)) == a2 || *(a1 + 152) >= 2u && ((v10 = *this, v10 == *(*(**(a1 + 24) + 88))(*(a1 + 24))) || *(a1 + 152) >= 3u && v6 && (v11 = *(this + 1), v11 == *(*(**(a1 + 24) + 88))(*(a1 + 24)))))
    {
      if (!(*(*a1 + 264))(a1) || *(a1 + 8) || Debug::debugAll <= 1 && *(a1 + 12) < 2u)
      {
        return -INFINITY;
      }

      v7 = (*(*a1 + 24))(a1);
      v8 = "[OOV context]";
      v9 = 13;
LABEL_25:
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      return -INFINITY;
    }
  }

  v19 = 0;
  if (!LHash<unsigned int,double>::locate((a1 + 224), a2, &v19))
  {
    if (!(*(*a1 + 264))(a1) || *(a1 + 8) || Debug::debugAll <= 1 && *(a1 + 12) < 2u)
    {
      return -INFINITY;
    }

    v7 = (*(*a1 + 24))(a1);
    v8 = "[OOV]";
    v9 = 5;
    goto LABEL_25;
  }

  v12 = *(a1 + 224) + 16 * v19;
  v18 = 0;
  v13 = (*(*a1 + 208))(a1, a2, this, &v18);
  if ((*(*a1 + 264))(a1) && !*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
  {
    v14 = (*(*a1 + 24))(a1);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "[", 1);
    v16 = MEMORY[0x1B8C84C10](v15, (v18 + 1));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "gram]", 5);
  }

  return hmaxent::model::log_prob_context(*(a1 + 184), *(v13 + 8), *(v12 + 8)) / 2.30258509;
}

_DWORD **MEModel::contextID(MEModel *this, unsigned int a2, const unsigned int *a3, unsigned int *a4)
{
  v5 = (this + 192);
  if (*(this + 38) == 1)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v9 = a3[v6];
      if (v9 == -1)
      {
        break;
      }

      v11 = 0;
      if (!LHash<unsigned int,Trie<unsigned int,unsigned int>>::locate(v5, v9, &v11))
      {
        break;
      }

      v5 = &(*v5)[6 * v11 + 2];
      ++v6;
    }

    while (v6 < (*(this + 38) - 1));
  }

  *a4 = v6;
  return v5;
}

uint64_t MEModel::read(MEModel *this, File *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = File::getline(a2);
  if (!strncmp(v3, "H-MAXENT 0.1", 0xCuLL))
  {
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = File::getline(a2);
    if (sscanf(v8, "# %ld %ld %ld %ld", &v12, &v11, &v10, &v9))
    {
      operator new();
    }
  }

  v4 = File::position(a2, MEMORY[0x1E69E5300]);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "format error in H-MAXENT file", 29);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(v13, MEMORY[0x1E69E5318]);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v13);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

void sub_1B57B4170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  Trie<unsigned int,unsigned int>::~Trie(va);
  _Unwind_Resume(a1);
}

uint64_t MEModel::write(MEModel *this, File *a2)
{
  LHashIter<unsigned int,unsigned long>::LHashIter(v29, this + 28, 0);
  v28 = 0;
  while (1)
  {
    v4 = LHashIter<unsigned int,unsigned long>::next(v29, &v28);
    if (!v4)
    {
      break;
    }

    v5 = v28;
    v6 = *v4;
    v24[0] = 0;
    v7 = LHash<unsigned int,Trie<unsigned int,unsigned int>>::insert(this + 24, v6, v24);
    if (!v24[0])
    {
      *v7 = 0;
    }

    v7[2] = v5;
  }

  File::fprintf(a2, "H-MAXENT 0.1\n");
  v8 = *(*(this + 23) + 16);
  File::fprintf(a2, "# %ld %ld %ld %ld\n", *v8, v8[1], (*(v8[4] + 8) - *v8[4]) >> 5, (*(v8[3] + 8) - *v8[3]) >> 3);
  v9 = *(*(this + 23) + 120);
  v10 = *(this + 38);
  *&v26[8] = 0;
  v27 = 0;
  v25 = 0;
  *v26 = (v10 + 1);
  if (v10 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v11 = 0;
  do
  {
    TrieIter2<unsigned int,unsigned int>::TrieIter2(v24, this + 208, *&v26[4] - 4 * v25, v11, 0);
    while (1)
    {
      v12 = TrieIter2<unsigned int,unsigned int>::next(v24);
      if (!v12)
      {
        break;
      }

      v13 = *v8[4] + 32 * *(v12 + 8);
      File::fprintf(a2, "%ld", *(v13 + 24));
      if (v11)
      {
        v14 = 0;
        do
        {
          v15 = (*(**(this + 3) + 32))(*(this + 3), *(*&v26[4] + 4 * (v14 - v25)));
          File::fprintf(a2, " %s", v15);
          ++v14;
        }

        while (v11 != v14);
      }

      File::fprintf(a2, "\n");
      v16 = *(v13 + 16);
      if (*(v13 + 24) + v16 > v16)
      {
        v17 = v16;
        v18 = v16 + 1;
        do
        {
          v19 = *(this + 3);
          v20 = Trie<unsigned int,unsigned int>::find(this + 24, *(*v8[3] + 8 * v17));
          v21 = (*(*v19 + 32))(v19, *v20);
          File::fprintf(a2, "%s %f\n", v21, *(*v9 + 8 * v17));
          v17 = v18;
        }

        while (*(v13 + 24) + *(v13 + 16) > v18++);
      }

      File::fprintf(a2, "\n");
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v24);
    v11 = (v11 + 1);
  }

  while (v11 < *(this + 38));
  if (*&v26[4])
  {
    MEMORY[0x1B8C85310](*&v26[4], 0x1000C8052888210);
  }

  if (v30)
  {
    MEMORY[0x1B8C85310](v30, 0x1000C8052888210);
  }

  return 1;
}

void sub_1B57B44C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v27 = *(v25 - 96);
  if (v27)
  {
    MEMORY[0x1B8C85310](v27, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B57B48C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    MEMORY[0x1B8C85310](a31, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void MEModel::_estimate<double>(uint64_t a1, uint64_t a2)
{
  VocabIter::VocabIter(v32, *(a1 + 24), 1);
  v4 = *(a1 + 152);
  *&v30[8] = 0;
  v31 = 0;
  v29 = 0;
  *v30 = (v4 + 1);
  if (v4 == -1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    MEModel::modifyCounts<double>(a1, a2);
    v25 = 0;
    if (!*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
    {
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Counting counts of order 1 ", 27);
      std::ios_base::getloc((v5 + *(*v5 - 24)));
      v6 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
      (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(&v24);
      std::ostream::put();
      std::ostream::flush();
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (v7 <= (*(**(a1 + 24) + 80))(*(a1 + 24)))
    {
      if ((*(*(**(a1 + 24) + 152))(*(a1 + 24)) || v7 != *(*(**(a1 + 24) + 88))(*(a1 + 24))) && v7 != *(*(**(a1 + 24) + 136))(*(a1 + 24)) && !(*(**(a1 + 24) + 176))(*(a1 + 24), v7))
      {
        LOBYTE(v24.__locale_) = 0;
        *LHash<unsigned int,double>::insert((a1 + 224), v7, &v24) = v8;
        ++v9;
        ++v8;
      }

      v7 = (v7 + 1);
    }

    v10 = *&v30[4];
    *(*&v30[4] - 4 * v29) = -1;
    *(Trie<unsigned int,unsigned int>::insertTrie((a1 + 208), (v10 - 4 * v29), &v25) + 2) = 0;
    if (*(a1 + 152) >= 2u)
    {
      v11 = 2;
      v12 = 1;
      do
      {
        if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
        {
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Counting counts of order ", 25);
          v14 = MEMORY[0x1B8C84C10](v13, v11);
          std::ios_base::getloc((v14 + *(*v14 - 24)));
          v15 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
          (v15->__vftable[2].~facet_0)(v15, 10);
          std::locale::~locale(&v24);
          std::ostream::put();
          std::ostream::flush();
        }

        TrieIter2<unsigned int,double>::TrieIter2(&v24, a2 + 160, *&v30[4] - 4 * v29, (v11 - 1), simple_sort);
        while (TrieIter2<unsigned int,double>::next(&v24))
        {
          v16 = v27;
          v17 = v26;
          LOBYTE(v33[0]) = 0;
          inserted = Trie<unsigned int,unsigned long>::insertTrie((a2 + 160), (*&v30[4] - 4 * v29), v33);
          TrieIter2<unsigned int,double>::TrieIter2(v23, inserted, v16 - 4 * v17, 1, simple_sort);
          v19 = 1;
          while (TrieIter2<unsigned int,double>::next(v23))
          {
            v19 = 0;
            if (!(*(**(a1 + 24) + 176))(*(a1 + 24), *(v27 - 4 * v26)))
            {
              ++v9;
            }
          }

          if ((v19 & 1) == 0)
          {
            v20 = Trie<unsigned int,unsigned int>::insertTrie((a1 + 208), (*&v30[4] - 4 * v29), &v25);
            if (!v25)
            {
              *(v20 + 2) = v12++;
            }
          }

          TrieIter2<unsigned int,unsigned int>::~TrieIter2(v23);
        }

        TrieIter2<unsigned int,unsigned int>::~TrieIter2(&v24);
        v11 = (v11 + 1);
      }

      while (v11 <= *(a1 + 152));
    }

    if (!*(a1 + 8) && (Debug::debugAll > 9 || *(a1 + 12) >= 0xAu))
    {
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Contexts:", 9);
      std::ios_base::getloc((v21 + *(*v21 - 24)));
      v22 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v24);
      std::ostream::put();
      std::ostream::flush();
      Trie<unsigned int,unsigned int>::dump((a1 + 208), 0);
    }

    operator new();
  }

  Array<unsigned int>::alloc();
}

uint64_t sub_1B57B5554(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (v57)
  {
    MEMORY[0x1B8C85350](v57, 0x20C40960023A9);
  }

  if (!*(v56 + 8) && (Debug::debugAll > 1 || *(v56 + 12) >= 2u))
  {
    v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Creating reverse context index...", 33);
    std::ios_base::getloc((v59 + *(*v59 - 24)));
    v60 = std::locale::use_facet(&v64, MEMORY[0x1E69E5318]);
    (v60->__vftable[2].~facet_0)(v60, 10);
    std::locale::~locale(&v64);
    std::ostream::put();
    std::ostream::flush();
  }

  reverseTrie(v56 + 208, *(v56 + 152), &v64);
  LHash<unsigned int,Trie<unsigned int,unsigned int>>::operator=((v56 + 192), &v64);
  *(v56 + 200) = v65;
  Trie<unsigned int,unsigned int>::~Trie(&v64);
  if (v66)
  {
    MEMORY[0x1B8C85310](v66, 0x1000C8052888210);
  }

  v61 = *(v58 - 160);
  if (v61)
  {
    MEMORY[0x1B8C85310](v61, 0x1000C8052888210);
  }

  v62 = *(v58 - 120);
  if (v62)
  {
    MEMORY[0x1B8C85310](v62, 0x50C80EE9192B6);
  }

  return 1;
}

void sub_1B57B56CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 160);
  if (v34)
  {
    MEMORY[0x1B8C85310](v34, 0x1000C8052888210);
  }

  v35 = *(v32 - 120);
  if (v35)
  {
    MEMORY[0x1B8C85310](v35, 0x50C80EE9192B6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MEModel::modifyCounts<double>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 152);
  *&v16[8] = 0;
  v17 = 0;
  v15 = 0;
  *v16 = (v4 + 1);
  if (v4 != -1)
  {
    Array<unsigned int>::alloc();
  }

  v5 = 0xFFFFFFFFLL;
  do
  {
    TrieIter2<unsigned int,double>::TrieIter2(v14, a2 + 160, *&v16[4] - 4 * v15, v5, 0);
LABEL_5:
    while (TrieIter2<unsigned int,double>::next(v14))
    {
      v6 = 0;
      while (1)
      {
        if (!*(*(**(a1 + 24) + 152))(*(a1 + 24)))
        {
          v7 = *(*&v16[4] + 4 * (v6 - v15));
          if (v7 == *(*(**(a1 + 24) + 88))(*(a1 + 24)))
          {
            break;
          }
        }

        if (v5 == ++v6)
        {
          goto LABEL_5;
        }
      }

      Trie<unsigned int,double>::remove((a2 + 160), (*&v16[4] - 4 * v15), 0);
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v14);
    v5 = (v5 - 1);
  }

  while (v5);
  if (*(a1 + 152) >= 2u)
  {
    v8 = 2;
    do
    {
      TrieIter2<unsigned int,double>::TrieIter2(v14, a2 + 160, *&v16[4] - 4 * v15, v8, 0);
      while (1)
      {
        v9 = TrieIter2<unsigned int,double>::next(v14);
        if (!v9)
        {
          break;
        }

        v10 = *(v9 + 8);
        v18 = 0;
        Trie = Trie<unsigned int,unsigned int>::findTrie((a2 + 160), (*&v16[4] - 4 * v15 + 4), &v18);
        v12 = (Trie + 8);
        if (!Trie)
        {
          v12 = 0;
        }

        *v12 = *v12 - v10;
      }

      TrieIter2<unsigned int,unsigned int>::~TrieIter2(v14);
      v8 = (v8 + 1);
    }

    while (v8 <= *(a1 + 152));
  }

  result = *&v16[4];
  if (*&v16[4])
  {
    return MEMORY[0x1B8C85310](*&v16[4], 0x1000C8052888210);
  }

  return result;
}

void sub_1B57B5A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    MEMORY[0x1B8C85310](a20, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void MEModel::createDataFromCounts<double>(uint64_t a1)
{
  v1 = *(a1 + 152);
  v7 = 0;
  v8 = 0;
  v5 = 0;
  v6 = (v1 + 1);
  if (v1 == -1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }

  Array<unsigned int>::alloc();
}

void sub_1B57B6248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = *(v37 - 128);
  if (v39)
  {
    MEMORY[0x1B8C85310](v39, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<hmaxent::feature_context_t>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<hmaxent::feature_context_t>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1B57B63F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<hmaxent::feature_context_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<hmaxent::feature_context_t>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<hmaxent::feature_context_t>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<hmaxent::count_context_t>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<hmaxent::count_context_t>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<hmaxent::count_context_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MEModel::_estimate<unsigned long>(uint64_t a1, uint64_t a2)
{
  VocabIter::VocabIter(v32, *(a1 + 24), 1);
  v4 = *(a1 + 152);
  *&v30[8] = 0;
  v31 = 0;
  v29 = 0;
  *v30 = (v4 + 1);
  if (v4 == -1)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    MEModel::modifyCounts<unsigned long>(a1, a2);
    v25 = 0;
    if (!*(a1 + 8) && (Debug::debugAll > 1 || *(a1 + 12) >= 2u))
    {
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Counting counts of order 1 ", 27);
      std::ios_base::getloc((v5 + *(*v5 - 24)));
      v6 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
      (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(&v24);
      std::ostream::put();
      std::ostream::flush();
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (v7 <= (*(**(a1 + 24) + 80))(*(a1 + 24)))
    {
      if ((*(*(**(a1 + 24) + 152))(*(a1 + 24)) || v7 != *(*(**(a1 + 24) + 88))(*(a1 + 24))) && v7 != *(*(**(a1 + 24) + 136))(*(a1 + 24)) && !(*(**(a1 + 24) + 176))(*(a1 + 24), v7))
      {
        LOBYTE(v24.__locale_) = 0;
        *LHash<unsigned int,double>::insert((a1 + 224), v7, &v24) = v8;
        ++v9;
        ++v8;
      }

      v7 = (v7 + 1);
    }

    v10 = *&v30[4];
    *(*&v30[4] - 4 * v29) = -1;
    *(Trie<unsigned int,unsigned int>::insertTrie((a1 + 208), (v10 - 4 * v29), &v25) + 2) = 0;
    if (*(a1 + 152) >= 2u)
    {
      v11 = 2;
      v12 = 1;
      do
      {
        if (!*(a1 + 8) && (Debug::debugAll || *(a1 + 12)))
        {
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Counting counts of order ", 25);
          v14 = MEMORY[0x1B8C84C10](v13, v11);
          std::ios_base::getloc((v14 + *(*v14 - 24)));
          v15 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
          (v15->__vftable[2].~facet_0)(v15, 10);
          std::locale::~locale(&v24);
          std::ostream::put();
          std::ostream::flush();
        }

        TrieIter2<unsigned int,unsigned long>::TrieIter2(&v24, a2 + 160, *&v30[4] - 4 * v29, (v11 - 1), simple_sort);
        while (TrieIter2<unsigned int,unsigned long>::next(&v24))
        {
          v16 = v27;
          v17 = v26;
          LOBYTE(v33[0]) = 0;
          inserted = Trie<unsigned int,unsigned long>::insertTrie((a2 + 160), (*&v30[4] - 4 * v29), v33);
          TrieIter2<unsigned int,unsigned long>::TrieIter2(v23, inserted, v16 - 4 * v17, 1, simple_sort);
          v19 = 1;
          while (TrieIter2<unsigned int,unsigned long>::next(v23))
          {
            v19 = 0;
            if (!(*(**(a1 + 24) + 176))(*(a1 + 24), *(v27 - 4 * v26)))
            {
              ++v9;
            }
          }

          if ((v19 & 1) == 0)
          {
            v20 = Trie<unsigned int,unsigned int>::insertTrie((a1 + 208), (*&v30[4] - 4 * v29), &v25);
            if (!v25)
            {
              *(v20 + 2) = v12++;
            }
          }

          TrieIter2<unsigned int,unsigned int>::~TrieIter2(v23);
        }

        TrieIter2<unsigned int,unsigned int>::~TrieIter2(&v24);
        v11 = (v11 + 1);
      }

      while (v11 <= *(a1 + 152));
    }

    if (!*(a1 + 8) && (Debug::debugAll > 9 || *(a1 + 12) >= 0xAu))
    {
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Contexts:", 9);
      std::ios_base::getloc((v21 + *(*v21 - 24)));
      v22 = std::locale::use_facet(&v24, MEMORY[0x1E69E5318]);
      (v22->__vftable[2].~facet_0)(v22, 10);
      std::locale::~locale(&v24);
      std::ostream::put();
      std::ostream::flush();
      Trie<unsigned int,unsigned int>::dump((a1 + 208), 0);
    }

    operator new();
  }

  Array<unsigned int>::alloc();
}