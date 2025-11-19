void sub_1B571DAE8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 __p, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&__p);
  v25 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (quasar::gLogLevel >= 1)
    {
      v26 = v25;
      v22[15] = 0u;
      v22[16] = 0u;
      v22[13] = 0u;
      v22[14] = 0u;
      v22[11] = 0u;
      v22[12] = 0u;
      v22[9] = 0u;
      v22[10] = 0u;
      v22[7] = 0u;
      v22[8] = 0u;
      a21 = 0u;
      a22 = 0u;
      a19 = 0u;
      a20 = 0u;
      a17 = 0u;
      a18 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "C++ exception: ", 15);
      v28 = (*(*v26 + 16))(v26);
      v29 = strlen(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
    v22[15] = 0u;
    v22[16] = 0u;
    v22[13] = 0u;
    v22[14] = 0u;
    v22[11] = 0u;
    v22[12] = 0u;
    v22[9] = 0u;
    v22[10] = 0u;
    v22[7] = 0u;
    v22[8] = 0u;
    a21 = 0u;
    a22 = 0u;
    a19 = 0u;
    a20 = 0u;
    a17 = 0u;
    a18 = 0u;
    __p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown exception", 17);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B571DAACLL);
}

void sub_1B571DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  quasar::QuasarErrorMessage::~QuasarErrorMessage(va);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::LmModel2::write(std::string const&)::$_0,std::allocator<quasar::LmModel2::write(std::string const&)::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<quasar::loadLmFromDirectory(std::string const&,std::string const&,std::string&,std::optional<std::shared_ptr<quasar::LmModel2>> &)::$_0,std::allocator<quasar::loadLmFromDirectory(std::string const&,std::string const&,std::string&,std::optional<std::shared_ptr<quasar::LmModel2>> &)::$_0>,void ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2AAD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::loadLmFromDirectory(std::string const&,std::string const&,std::string&,std::optional<std::shared_ptr<quasar::LmModel2>> &)::$_0,std::allocator<quasar::loadLmFromDirectory(std::string const&,std::string const&,std::string&,std::optional<std::shared_ptr<quasar::LmModel2>> &)::$_0>,void ()(std::string const&)>::operator()(uint64_t *a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = __p;
  std::string::basic_string[abi:ne200100](__p, v4 + 8);
  if (v8 < 0)
  {
    v5 = __p[0];
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

  strcpy(v5 + v4, "/current");
  quasar::_loadLmFromDirectoryWithoutCoordinator(__p, a1[1], a1[2], a1[3]);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B571DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::loadLmFromDirectory(std::string const&,std::string const&,std::string&,std::optional<std::shared_ptr<quasar::LmModel2>> &)::$_0,std::allocator<quasar::loadLmFromDirectory(std::string const&,std::string const&,std::string&,std::optional<std::shared_ptr<quasar::LmModel2>> &)::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::removeLm(std::string const&)::$_0,std::allocator<quasar::removeLm(std::string const&)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2AB58;
  a2[1] = v2;
  return result;
}

uintmax_t std::__function::__func<quasar::removeLm(std::string const&)::$_0,std::allocator<quasar::removeLm(std::string const&)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, const void **a2)
{
  result = quasar::removeLmHelper(a2);
  **(a1 + 8) = 1;
  return result;
}

void sub_1B571E0D0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  v26 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    if (quasar::gLogLevel >= 1)
    {
      v27 = v26;
      a24 = 0u;
      a25 = 0u;
      a22 = 0u;
      a23 = 0u;
      a20 = 0u;
      a21 = 0u;
      a18 = 0u;
      a19 = 0u;
      a16 = 0u;
      a17 = 0u;
      a14 = 0u;
      a15 = 0u;
      a12 = 0u;
      a13 = 0u;
      a10 = 0u;
      a11 = 0u;
      a9 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a9);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a9, "C++ exception: ", 15);
      v29 = (*(*v27 + 16))(v27);
      v30 = strlen(v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
    }
  }

  else if (quasar::gLogLevel >= 1)
  {
    a24 = 0u;
    a25 = 0u;
    a22 = 0u;
    a23 = 0u;
    a20 = 0u;
    a21 = 0u;
    a18 = 0u;
    a19 = 0u;
    a16 = 0u;
    a17 = 0u;
    a14 = 0u;
    a15 = 0u;
    a12 = 0u;
    a13 = 0u;
    a10 = 0u;
    a11 = 0u;
    a9 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&a9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a9, "Unknown exception", 17);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  }

  __cxa_end_catch();
  JUMPOUT(0x1B571E0BCLL);
}

void sub_1B571E1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::removeLm(std::string const&)::$_0,std::allocator<quasar::removeLm(std::string const&)::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::WatermarkDetector2::WatermarkDetector2(uint64_t a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = quasar::Decoder::Decoder(a1, a2);
  *v3 = &unk_1F2D2ABD8;
  *(v3 + 456) = 0x3FDBA0EC74320104;
  std::string::basic_string[abi:ne200100]<0>((v3 + 464), "VoiceTrigger");
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1065353216;
  *(a1 + 528) = 0;
  v5 = xmmword_1B5B1ECF0;
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 544) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(a1 + 536, &v5, v6, 4uLL);
  *(a1 + 560) = 1140457472;
  *(a1 + 632) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 640) = 1127481344;
  *(a1 + 644) = xmmword_1B5B1ED00;
  *(a1 + 660) = 2;
  return a1;
}

void sub_1B571E39C(_Unwind_Exception *a1)
{
  std::unique_ptr<quasar::NotchDetector2>::reset[abi:ne200100]((v1 + 528), 0);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v2);
  if (*(v1 + 487) < 0)
  {
    operator delete(*(v1 + 464));
  }

  quasar::Decoder::~Decoder(v1);
  _Unwind_Resume(a1);
}

void quasar::WatermarkDetector2::finishInit(quasar::WatermarkDetector2 *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  quasar::splitAndTrimNoEmpty((this + 464), __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  p_data = &v10->__r_.__value_.__l.__data_;
  v3 = &v11->__r_.__value_.__l.__data_;
  while (p_data != v3)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(this + 61, p_data);
    p_data += 3;
  }

  __p[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if ((*(this + 639) & 0x8000000000000000) != 0)
  {
    if (!*(this + 78))
    {
      goto LABEL_16;
    }
  }

  else if (!*(this + 639))
  {
    goto LABEL_16;
  }

  *(this + 68) = *(this + 67);
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  quasar::splitAndTrimNoEmpty((this + 616), __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v10;
  v5 = v11;
  while (v4 != v5)
  {
    LODWORD(__p[0]) = std::stof(v4, 0);
    std::vector<float>::push_back[abi:ne200100](this + 67, __p);
    ++v4;
  }

  __p[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_16:
  std::string::basic_string[abi:ne200100]<0>(__p, ",");
  quasar::splitAndTrimNoEmpty((this + 592), __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v10;
  v7 = v11;
  while (v6 != v7)
  {
    LODWORD(__p[0]) = std::stof(v6, 0);
    std::vector<float>::push_back[abi:ne200100](this + 71, __p);
    ++v6;
  }

  __p[0] = &v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  operator new();
}

void sub_1B571E5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::WatermarkDetector2::runImpl(uint64_t a1, uint64_t a2, uint64_t *a3, quasar::SpeechRequestData **a4)
{
  InputOrigin = quasar::SpeechRequestData::getInputOrigin(*a4);
  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 488), InputOrigin))
  {
    if (quasar::gLogLevel >= 4)
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
      *v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "WatermarkDetector2 not run on input origin ", 43);
      v13 = quasar::SpeechRequestData::getInputOrigin(*a4);
      v14 = *(v13 + 23);
      if (v14 >= 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = *v13;
      }

      if (v14 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v15, v16);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v9 = *(*(*a4 + 3) + 24);
  v10 = v9;
  if (v9 != 16000)
  {
    if (quasar::gLogLevel >= 4)
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
      *v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "WatermarkDetector2 not supported for sampling rate=", 51);
      std::ostream::operator<<();
      goto LABEL_19;
    }

LABEL_20:
    *(*a3 + 700) = 0;
    return 0;
  }

  v11 = quasar::SpeechRequestData::getEndpointStartMs(*a4) / 1000.0;
  if (v11 <= 0.0)
  {
    if (quasar::gLogLevel >= 4)
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
      *v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "WatermarkDetector2: missing trigger phrase endTime.", 51);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v11 > 5.0)
  {
    if (quasar::gLogLevel >= 4)
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
      *v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "WatermarkDetector2: not enough audio cached.", 44);
LABEL_19:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v38);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  AudioBuffer = quasar::SpeechRequestData::getAudioBuffer(*a4);
  quasar::RecogAudioBuffer::getRawAudioCache(*AudioBuffer, &__p);
  v19 = __p;
  v20 = (v37 - __p) >> 2;
  if (v20 >= (v11 * v10))
  {
    quasar::Decoder::calculateNBest(a2, a3, *(*a4 + 4));
    if (quasar::DecoderChainOutput::nonEmptyTopChoice(*a3))
    {
      v21 = **(*a3 + 368);
      if (*(*(*a3 + 368) + 8) == v21)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v22 = *v21;
      v23 = *(a1 + 660);
      if (0x6DB6DB6DB6DB6DB7 * ((*(**(*a3 + 368) + 8) - v22) >> 5) >= v23)
      {
        v24 = *(v22 + 224 * v23 - 196) / 1000.0;
        v35 = 0.0;
        v25 = quasar::NotchDetector2::notchDetected(*(a1 + 528), v19, v24, v20, &v35);
        if (quasar::gLogLevel >= 4)
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
          *v38 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "WatermarkDetector2: score=", 26);
          v26 = std::ostream::operator<<();
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " detected=", 10);
          MEMORY[0x1B8C84BD0](v27, v25);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(v38);
        }

        if (v25)
        {
          v28 = 2;
        }

        else
        {
          v28 = 1;
        }

        v29 = *a3;
        *(v29 + 700) = v28;
        v30 = *(v29 + 440);
        std::string::basic_string[abi:ne200100]<0>(v38, "Watermark2Score");
        quasar::SpeechRequestResultData::addDumpAA(v30, v38, 1, v35);
        if (SBYTE7(v39) < 0)
        {
          operator delete(v38[0]);
        }

        v31 = *(*a3 + 440);
        std::string::basic_string[abi:ne200100]<0>(v38, "Watermark2Detected");
        v32 = quasar::fingerprintDetectionResultString(*(*a3 + 700));
        std::string::basic_string[abi:ne200100]<0>(&v34, v32);
        quasar::SpeechRequestResultData::addDumpAA(v31, v38, &v34);
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (SBYTE7(v39) < 0)
        {
          operator delete(v38[0]);
        }

        v33 = *(*a3 + 440);
        std::string::basic_string[abi:ne200100]<0>(v38, "Watermark2StartTimeSecs");
        quasar::SpeechRequestResultData::addDumpAA(v33, v38, 1, v24);
        if (SBYTE7(v39) < 0)
        {
          operator delete(v38[0]);
        }

        goto LABEL_32;
      }
    }

    if (quasar::gLogLevel >= 4)
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
      *v38 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "WatermarkDetector2: Trigger phrase not detected", 47);
      goto LABEL_30;
    }
  }

  else if (quasar::gLogLevel >= 4)
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
    *v38 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "WatermarkDetector2: not enough audio cached.", 44);
LABEL_30:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v38);
  }

  *(*a3 + 700) = 0;
LABEL_32:
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_1B571EBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::WatermarkDetector2::registerParams(quasar::WatermarkDetector2 *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "watermark-detector2");
  quasar::SystemConfig::enforceMinVersion(a2, 146, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "threshold");
  std::string::basic_string[abi:ne200100]<0>(v4, "Threshold value to detect a watermark");
  quasar::SystemConfig::Register<double>(a2, __p, this + 456, v4, 0, 146, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "anti-notch-offset");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of anti notch offset");
  quasar::SystemConfig::Register<float>(a2, __p, this + 560, v4, 0, 146, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "notch-width");
  std::string::basic_string[abi:ne200100]<0>(v4, "Frequency (in Hz) of width of notch");
  quasar::SystemConfig::Register<float>(a2, __p, this + 640, v4, 0, 146, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "notch-freq");
  std::string::basic_string[abi:ne200100]<0>(v4, "comma separated list of notch frequencies");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 616, v4, 0, 146, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "classifier");
  std::string::basic_string[abi:ne200100]<0>(v4, "comma separated list of classifier values");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 592, v4, 0, 146, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "supported-input-origins-list");
  std::string::basic_string[abi:ne200100]<0>(v4, "The input origins that are supported (should be comma separated)");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 464, v4, 0, 146, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "trigger-num-tokens");
  std::string::basic_string[abi:ne200100]<0>(v4, "The number of tokens in the trigger phrase (two for hey siri)");
  quasar::SystemConfig::Register<int>(a2, __p, this + 660, v4, 0, 146, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B571EFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void quasar::WatermarkDetector2::~WatermarkDetector2(quasar::WatermarkDetector2 *this)
{
  quasar::WatermarkDetector2::~WatermarkDetector2(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D2ABD8;
  if (*(this + 639) < 0)
  {
    operator delete(*(this + 77));
  }

  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  v2 = *(this + 71);
  if (v2)
  {
    *(this + 72) = v2;
    operator delete(v2);
  }

  v3 = *(this + 67);
  if (v3)
  {
    *(this + 68) = v3;
    operator delete(v3);
  }

  std::unique_ptr<quasar::NotchDetector2>::reset[abi:ne200100](this + 66, 0);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 488);
  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  quasar::Decoder::~Decoder(this);
}

quasar::NotchDetector2 *std::unique_ptr<quasar::NotchDetector2>::reset[abi:ne200100](quasar::NotchDetector2 **a1, quasar::NotchDetector2 *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::NotchDetector2::~NotchDetector2(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void quasar::NotchDetector2::~NotchDetector2(quasar::NotchDetector2 *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v10 = (this + 72);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    v8 = kaldi::SplitRadixComplexFft<float>::~SplitRadixComplexFft();
    MEMORY[0x1B8C85350](v8, 0x1090C4013F1E140);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

void freeChart<ChartEntryDouble>(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + 8 * v4);
    if (v5)
    {
      MEMORY[0x1B8C85310](v5, 0x1000C80D9A13B51);
    }

    if (++v4 > a2)
    {

      JUMPOUT(0x1B8C85310);
    }
  }
}

void freeChart<ChartEntryUnsigned>(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + 8 * v4);
    if (v5)
    {
      MEMORY[0x1B8C85310](v5, 0x1000C8000313F17);
    }

    if (++v4 > a2)
    {

      JUMPOUT(0x1B8C85310);
    }
  }
}

void WordMesh::freeThread(WordMesh *this)
{
  v1 = alignWordsChartTLS();
  v2 = *v1;
  if (!*v1)
  {
    v2 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    *v1 = v2;
  }

  v3 = alignAlignmentChartTLS();
  v4 = *v3;
  if (!*v3)
  {
    v4 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    *v3 = v4;
  }

  v18 = v3;
  v5 = wordErrorChartTLS();
  v6 = *v5;
  if (!*v5)
  {
    v6 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    *v5 = v6;
  }

  v19 = v5;
  v7 = alignWordsMaxRefLengthTLS();
  v8 = *v7;
  if (!*v7)
  {
    v8 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *v7 = v8;
  }

  v9 = alignAlignmentMaxRefLengthTLS();
  v10 = *v9;
  if (!*v9)
  {
    v10 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    *v9 = v10;
  }

  v12 = wordErrorMaxRefLengthTLS();
  v13 = *v12;
  if (!*v12)
  {
    v13 = malloc_type_calloc(1uLL, 4uLL, v11);
    *v12 = v13;
  }

  if (*v2)
  {
    freeChart<ChartEntryDouble>(*v2, *v8);
  }

  if (*v4)
  {
    freeChart<ChartEntryDouble>(*v4, *v10);
  }

  if (*v6)
  {
    freeChart<ChartEntryUnsigned>(*v6, *v13);
  }

  v14 = compareAlignTLS();
  if (*v14)
  {
    free(*v14);
    *v14 = 0;
  }

  v15 = alignWordsMaxHypLengthTLS();
  if (*v15)
  {
    free(*v15);
    *v15 = 0;
  }

  if (*v7)
  {
    free(*v7);
    *v7 = 0;
  }

  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  v16 = alignAlignmentMaxHypLengthTLS();
  if (*v16)
  {
    free(*v16);
    *v16 = 0;
  }

  if (*v9)
  {
    free(*v9);
    *v9 = 0;
  }

  if (*v18)
  {
    free(*v18);
    *v18 = 0;
  }

  v17 = wordErrorMaxHypLengthTLS();
  if (*v17)
  {
    free(*v17);
    *v17 = 0;
  }

  if (*v12)
  {
    free(*v12);
    *v12 = 0;
  }

  if (*v19)
  {
    free(*v19);
    *v19 = 0;
  }
}

void sub_1B5720238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, _Unwind_Exception *exception_object, uint64_t a26, void *a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  _Block_object_dispose(&a53, 8);

  _Block_object_dispose((v63 - 224), 8);
  _Unwind_Resume(a1);
}

void tokenizeAndTagText(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  [v7 setString:v8];
  v11 = [v8 length];
  v12 = *MEMORY[0x1E69779D8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___ZL18tokenizeAndTagTextP8NLTaggermP8NSStringP14NSMutableArrayIS2_ES5__block_invoke;
  v16[3] = &unk_1E7C1BBB8;
  v13 = v8;
  v17 = v13;
  v14 = v9;
  v18 = v14;
  v15 = v10;
  v19 = v15;
  [v7 enumerateTagsInRange:0 unit:v11 scheme:0 options:v12 usingBlock:{20, v16}];
}

__CFString *entityFromTokenIndexRange(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 count] < a1 || (v6 = a2 + a1, a2 + a1 > objc_msgSend(v5, "count")) || v6 <= a1)
  {
    v11 = &stru_1F2D44B60;
  }

  else
  {
    v7 = a1;
    v8 = *MEMORY[0x1E6977990];
    v9 = *MEMORY[0x1E69779A0];
    v10 = *MEMORY[0x1E6977968];
    v11 = &stru_1F2D44B60;
    while (1)
    {
      v12 = [v5 objectAtIndexedSubscript:v7];
      v13 = [v12 isEqualToString:v8];

      if (v13)
      {
        v11 = @"Person";
        goto LABEL_11;
      }

      v14 = [v5 objectAtIndexedSubscript:v7];
      v15 = [v14 isEqualToString:v9];

      if (v15)
      {
        v11 = @"Place";
        goto LABEL_11;
      }

      v16 = [v5 objectAtIndexedSubscript:v7];
      v17 = [v16 isEqualToString:v10];

      if (v17)
      {
        break;
      }

      if (v6 <= ++v7)
      {
        goto LABEL_11;
      }
    }

    v11 = @"Organization";
  }

LABEL_11:

  return v11;
}

id getTokensProfileCategories(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v18 = a2;
  v15 = v3;
  if (v18)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:{16, v3}];
    if (v5)
    {
      v17 = *v24;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v7 = [v18 categoriesForOrthography:*(*(&v23 + 1) + 8 * i)];
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v9)
          {
            v10 = *v20;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v20 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = [*(*(&v19 + 1) + 8 * j) stringByReplacingOccurrencesOfString:@"\" withString:&stru_1F2D44B60];
                [v4 addObject:v12];
              }

              v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v9);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v5);
    }

    v13 = [v4 allObjects];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

void ___ZL18tokenizeAndTagTextP8NLTaggermP8NSStringP14NSMutableArrayIS2_ES5__block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v7 = [a1[4] substringWithRange:{a3, a4}];
  [a1[5] addObject:v7];
  [a1[6] addObject:v8];
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL22generateConfusionPairsP7NSArrayIP8NSStringES3__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void kaldi::FbankWithPitch::FbankWithPitch(kaldi::FbankWithPitch *this, const kaldi::FbankWithPitchOptions *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v4 = *a2;
  *(this + 29) = *(a2 + 13);
  *(this + 1) = v4;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(this + 7) = *(a2 + 5);
    *(this + 40) = v5;
  }

  *(this + 8) = *(a2 + 6);
  v6 = *(a2 + 56);
  *(this + 88) = *(a2 + 72);
  *(this + 72) = v6;
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  *(this + 152) = *(a2 + 136);
  *(this + 136) = v9;
  *(this + 120) = v8;
  *(this + 104) = v7;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(this + 216) = *(a2 + 200);
  *(this + 200) = v12;
  *(this + 184) = v11;
  *(this + 168) = v10;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = this + 264;
  kaldi::FeatureWindowFunction::FeatureWindowFunction((this + 280), a2);
  *(this + 38) = 0;
  if (*(a2 + 215) == 1)
  {
    operator new();
  }

  v13 = *(a2 + 52);
  if (v13 > 0.0)
  {
    *(this + 62) = logf(v13);
  }

  v14 = kaldi::FrameExtractionOptions::PaddedWindowSize(a2);
  if ((v14 & (v14 - 1)) == 0)
  {
    operator new();
  }

  kaldi::FbankWithPitch::GetMelBanks(this, 1.0);
  operator new();
}

void sub_1B5721098(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::FbankWithPitch::GetMelBanks(kaldi::FbankWithPitch *this, float a2)
{
  v3 = *(this + 33);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = (this + 264);
  do
  {
    v5 = v3[8];
    if (v5 >= a2)
    {
      v4 = v3;
    }

    v3 = *&v3[2 * (v5 < a2)];
  }

  while (v3);
  if (v4 == (this + 264) || v4[8] > a2)
  {
LABEL_8:
    operator new();
  }

  return *(v4 + 5);
}

void kaldi::FbankWithPitch::~FbankWithPitch(kaldi::FbankWithPitch *this)
{
  v2 = *(this + 32);
  v3 = this + 264;
  if (v2 != this + 264)
  {
    do
    {
      v4 = *(v2 + 5);
      if (v4)
      {
        v17 = (v4 + 24);
        std::vector<std::pair<int,kaldi::Vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v17);
        kaldi::Vector<float>::Destroy(v4);
        MEMORY[0x1B8C85350](v4, 0x10A0C409C5A7551);
      }

      v5 = *(v2 + 1);
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
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  v8 = *(this + 38);
  if (v8)
  {
    v9 = kaldi::SplitRadixComplexFft<float>::~SplitRadixComplexFft(v8);
    MEMORY[0x1B8C85350](v9, 0x1090C40943DB512);
  }

  v10 = *(this + 29);
  if (v10)
  {
    (*(*v10 + 64))(v10);
  }

  v11 = *(this + 30);
  if (v11)
  {
    kaldi::OnlineProcessPitch::~OnlineProcessPitch(v11);
    MEMORY[0x1B8C85350]();
  }

  v12 = *(this + 39);
  if (v12)
  {
    v13 = kaldi::Matrix<float>::~Matrix(v12);
    MEMORY[0x1B8C85350](v13, 0x1080C40EB13E0A1);
  }

  v14 = *(this + 40);
  if (v14)
  {
    v15 = kaldi::Matrix<float>::~Matrix(v14);
    MEMORY[0x1B8C85350](v15, 0x1080C40EB13E0A1);
  }

  kaldi::Vector<float>::Destroy(this + 280);
  std::__tree<int>::destroy(this + 256, *(this + 33));
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v16 = *(this + 1);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void kaldi::FbankWithPitch::Compute(kaldi::FbankWithPitch *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6, int a7)
{
  MelBanks = kaldi::FbankWithPitch::GetMelBanks(a1, a5);

  kaldi::FbankWithPitch::ComputeInternal(a1, a2, MelBanks, a3, a4, a7);
}

void kaldi::FbankWithPitch::ComputeInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v39 = kaldi::NumFrames(*(a2 + 8), a1 + 16);
  v10 = *(a1 + 72);
  v11 = *(a1 + 220);
  v12 = *(a1 + 212);
  v13 = *(a1 + 214);
  v36 = *(a1 + 216);
  v37 = *(a1 + 215);
  v14 = *(a1 + 312);
  v38 = *(a1 + 213);
  if (v14)
  {
    v42 = kaldi::MatrixBase<float>::NumRows(v14);
    if (kaldi::MatrixBase<float>::NumRows(*(a1 + 320)) != v42)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "#remaining_frames for fbank ", 28);
      v16 = MEMORY[0x1B8C84C00](v15, v42);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " and energy ", 12);
      v18 = kaldi::MatrixBase<float>::NumRows(*(a1 + 320));
      v19 = MEMORY[0x1B8C84C00](v17, v18);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, " don't match!");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v57);
    }
  }

  else
  {
    v42 = 0;
  }

  kaldi::Matrix<float>::Matrix(v55);
  v20 = kaldi::OnlineProcessPitch::NumFramesReady(*(a1 + 240));
  if (a5)
  {
    v21 = (*(a2 + 8) - *(a5 + 8));
    v59 = 0;
    v57 = 0;
    v58 = 0;
    kaldi::Vector<float>::Resize(&v57, v21, 0);
    v22 = *(a5 + 8);
    v44 = 0;
    v45 = 0;
    v43 = *a2 + 4 * v22;
    LODWORD(v44) = v58;
    kaldi::VectorBase<float>::CopyFromVec(&v57, &v43);
    (*(**(a1 + 232) + 32))(*(a1 + 232), &v57, *(a1 + 96));
    kaldi::Vector<float>::Destroy(&v57);
  }

  else
  {
    (*(**(a1 + 232) + 32))(*(a1 + 232), a2, *(a1 + 96));
  }

  if (a6)
  {
    (*(**(a1 + 232) + 40))(*(a1 + 232));
  }

  v34 = v13;
  v23 = v12;
  v35 = v10;
  v41 = a2;
  v24 = kaldi::OnlineProcessPitch::NumFramesReady(*(a1 + 240));
  v25 = (v24 - v20);
  if (v24 != v20)
  {
    kaldi::Matrix<float>::Resize(v55, v25, *(*(a1 + 240) + 56), 0, 0);
    if (v25 >= 1)
    {
      v26 = 0;
      do
      {
        v58 = 0;
        v59 = 0;
        v57 = v55[0] + 4 * v56 * v26;
        LODWORD(v58) = kaldi::MatrixBase<float>::NumCols(v55);
        kaldi::OnlineProcessPitch::GetFrame(*(a1 + 240), v20, &v57);
        ++v26;
        ++v20;
      }

      while (v24 != v20);
    }
  }

  if (a6)
  {
    v27 = v38;
    v28 = v42 + v39;
    v29 = v25 - v28;
    if (v25 - v28 < 0)
    {
      v29 = v28 - v25;
    }

    if (v29 >= 2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v57);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v57, "mismatch between finished pitch frames and remaining frames+new wav frames: ", 76);
      v31 = MEMORY[0x1B8C84C00](v30, v25);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " v.s. ", 6);
      MEMORY[0x1B8C84C00](v32, v28);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v57);
    }
  }

  else
  {
    v28 = v25;
    v27 = v38;
  }

  if (v28)
  {
    v33 = (v35 + v11 + v23 + v27 + v34 + v37 + v36);
  }

  else
  {
    v33 = 0;
  }

  kaldi::Matrix<float>::Resize(a4, v28, v33, 0, 0);
  if (a5)
  {
    kaldi::ExtractWaveformRemainder(v41, (a1 + 16), a5);
  }

  *v52 = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  __p = 0;
  v47 = 0;
  v48 = 0;
  operator new();
}

void sub_1B5721FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, void *a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, ...)
{
  va_start(va, a61);
  std::ostringstream::~ostringstream(&a13, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](&a27);
  if (__p)
  {
    a51 = __p;
    operator delete(__p);
  }

  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  kaldi::Vector<float>::Destroy(&a56);
  kaldi::Vector<float>::Destroy(&a59);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<kaldi::SnrTracker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D2ACB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::SnrTracker>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    *(a1 + 96) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 24));
}

uint64_t quasar::lm::arpa2fst::inhouse::ConvertToFST::ConvertToFST(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v8 = a5[1];
  v30 = *a5;
  v31 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::lm::arpa2fst::ConvertToFST::ConvertToFST(a1, a2, &v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  *a1 = &unk_1F2D2AD00;
  *(a1 + 33) = a4;
  std::string::basic_string[abi:ne200100]<0>(&v27, "");
  v9 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v9 = v28;
  }

  if (v9)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    v10 = (*(*a2 + 96))(a2, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v29 & 0x80) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = -1;
    if ((v29 & 0x80) != 0)
    {
LABEL_11:
      operator delete(v27);
    }
  }

  *(a1 + 36) = v10;
  v11 = log(0.0);
  *(a1 + 40) = v11;
  *(a1 + 44) = v11;
  v12 = std::string::basic_string[abi:ne200100]<0>(&v27, "");
  if (v29 < 0)
  {
    v13 = v28;
    operator delete(v27);
    if (!v13)
    {
      goto LABEL_29;
    }
  }

  else if (!v29)
  {
    goto LABEL_29;
  }

  if (*(a1 + 36) == -1)
  {
    quasar::lm::LogMessage::LogMessage(__p, 5, "ConvertToFST", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 255);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(__p);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Unable to resolve silence token ", 32);
    std::string::basic_string[abi:ne200100]<0>(&v27, "");
    if ((v29 & 0x80u) == 0)
    {
      v16 = &v27;
    }

    else
    {
      v16 = v27;
    }

    if ((v29 & 0x80u) == 0)
    {
      v17 = v29;
    }

    else
    {
      v17 = v28;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ".", 1);
    if (v29 < 0)
    {
      operator delete(v27);
    }

    quasar::lm::LogMessage::~LogMessage(__p);
  }

  else
  {
    quasar::lm::nullstream(v12);
  }

LABEL_29:
  quasar::lm::LogMessage::LogMessage(__p, 2, "ConvertToFST", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 259);
  v19 = quasar::rescoring::AdapterModel::getFeaturizer(__p);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "SilenceOptions: {", 17);
  std::string::basic_string[abi:ne200100]<0>(&v27, "");
  if ((v29 & 0x80u) == 0)
  {
    v21 = &v27;
  }

  else
  {
    v21 = v27;
  }

  if ((v29 & 0x80u) == 0)
  {
    v22 = v29;
  }

  else
  {
    v22 = v28;
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "}", 1);
  if (v29 < 0)
  {
    operator delete(v27);
  }

  quasar::lm::LogMessage::~LogMessage(__p);
  return a1;
}

void sub_1B5722428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  quasar::lm::LogMessage::~LogMessage(&a9);
  *v22 = &unk_1F2D2A588;
  v24 = v22[3];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::ConvertToFST(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, char a6)
{
  v8 = a5[1];
  v10[0] = *a5;
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::lm::arpa2fst::inhouse::ConvertToFST::ConvertToFST(a1, a2, a3, a4, v10);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_1F2D2AD28;
  *(a1 + 48) = a6;
  return a1;
}

void sub_1B5722590(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(uint64_t a1, quasar::lm **this)
{
  Ngram::getorder(this);
  v4 = this[3];
  (*(*v4 + 112))(v4);
  (*(*v4 + 128))(v4);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    Ngram::getTrie(this);
    operator new();
  }

  quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(v4, *(a1 + 8), 0);
}

void sub_1B5722CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a15);
  v41 = a20;
  a20 = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void *quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::ConvertToFST(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v8 = a6[1];
  v10[0] = *a6;
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::lm::arpa2fst::inhouse::ConvertToFST::ConvertToFST(a1, a3, a3, a5, v10);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *a1 = &unk_1F2D2AD50;
  a1[6] = a2;
  return a1;
}

void sub_1B5722E40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(uint64_t a1, quasar::lm **this)
{
  Ngram::getorder(this);
  v4 = this[3];
  (*(*v4 + 112))(v4);
  (*(*v4 + 128))(v4);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    Ngram::getTrie(this);
    operator new();
  }

  quasar::lm::ComputeSRILMVocabToOpenFSTSymbolTableRemapping(v4, *(a1 + 8), 0);
}

void sub_1B572353C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  quasar::lm::LogMessage::~LogMessage(&a14);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](&a38);
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  std::__function::__value_func<unsigned long ()(BOnode const*)>::~__value_func[abi:ne200100](v42 - 168);
  v44 = a21;
  a21 = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a25);
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(a1);
}

void sub_1B57236A0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5723698);
}

void quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::~ConvertToFST(quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST *this)
{
  *this = &unk_1F2D2A588;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F2D2A588;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::~ConvertToFST(quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST *this)
{
  *this = &unk_1F2D2A588;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_1F2D2A588;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1B8C85350);
}

void quasar::lm::InsertOrDie<std::unordered_map<BOnode const*,int>>(void *a1, void *a2, int *a3)
{
  v8 = *a2;
  v9 = *a3;
  v4 = std::__hash_table<std::__hash_value_type<BOnode const*,int>,std::__unordered_map_hasher<BOnode const*,std::__hash_value_type<BOnode const*,int>,std::hash<BOnode const*>,std::equal_to<BOnode const*>,true>,std::__unordered_map_equal<BOnode const*,std::__hash_value_type<BOnode const*,int>,std::equal_to<BOnode const*>,std::hash<BOnode const*>,true>,std::allocator<std::__hash_value_type<BOnode const*,int>>>::__emplace_unique_key_args<BOnode const*,std::pair<BOnode const* const,int> const&>(a1, &v8);
  if (v5)
  {
    quasar::lm::nullstream(v4);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(&v8, 5, "InsertOrDie", "../libquasar/liblm/include/lm/stl_utils.h", 89);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(&v8);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "duplicate key ", 14);
    MEMORY[0x1B8C84BB0](v7, *a2);
    quasar::lm::LogMessage::~LogMessage(&v8);
  }
}

void *std::__hash_table<std::__hash_value_type<BOnode const*,int>,std::__unordered_map_hasher<BOnode const*,std::__hash_value_type<BOnode const*,int>,std::hash<BOnode const*>,std::equal_to<BOnode const*>,true>,std::__unordered_map_equal<BOnode const*,std::__hash_value_type<BOnode const*,int>,std::equal_to<BOnode const*>,std::hash<BOnode const*>,true>,std::allocator<std::__hash_value_type<BOnode const*,int>>>::__emplace_unique_key_args<BOnode const*,std::pair<BOnode const* const,int> const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

__n128 std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_0,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_0>,unsigned long ()(BOnode const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2ADC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_0,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_0>,unsigned long ()(BOnode const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v8 = *a2;
  v3 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(*(a1 + 8), &v8);
  v4 = (v3 + 3);
  if (!v3)
  {
    v4 = &fst::kNoStateId;
  }

  v5 = *v4;
  if (v5 == -1)
  {
    v7 = (*(***(a1 + 16) + 200))(**(a1 + 16));
    quasar::lm::InsertOrDie<std::unordered_map<BOnode const*,int>>(*(a1 + 8), &v8, &v7);
    return v7;
  }

  return v5;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_0,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_0>,unsigned long ()(BOnode const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned long ()(BOnode const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t quasar::lm::arpa2fst::inhouse::StateInstantiator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::StateInstantiator(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, float a9, float a10, int a11, int a12, uint64_t a13)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 28) = a7;
  *(a1 + 32) = a8;
  *(a1 + 40) = a9;
  *(a1 + 44) = a10;
  v15 = expf(a9);
  v16 = log(1.0 - v15);
  *(a1 + 48) = v16;
  v17 = expf(a10);
  v18 = log(1.0 - v17);
  *(a1 + 52) = v18;
  *(a1 + 56) = a11;
  *(a1 + 60) = a12;
  v19 = std::__function::__value_func<unsigned long ()(BOnode const*)>::__value_func[abi:ne200100](a1 + 64, a13);
  if ((*(a1 + 40) & 0x7FFFFFFFu) < 0x7F800000 || (v20 = *(a1 + 44), (LODWORD(v20) & 0x7FFFFFFFu) <= 0x7F7FFFFF))
  {
    v19 = quasar::lm::nullstream(v19);
    if ((*(a1 + 40) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*(a1 + 40) <= 0.0)
      {
        v21 = quasar::lm::nullstream(v19);
      }

      else
      {
        quasar::lm::LogMessage::LogMessage(v24, 5, "StateInstantiator", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 81);
        quasar::rescoring::AdapterModel::getFeaturizer(v24);
        quasar::lm::LogMessage::~LogMessage(v24);
      }

      if (*(a1 + 60) == -1)
      {
        quasar::lm::LogMessage::LogMessage(v24, 5, "StateInstantiator", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 82);
        quasar::rescoring::AdapterModel::getFeaturizer(v24);
        quasar::lm::LogMessage::~LogMessage(v24);
      }

      else
      {
        v19 = quasar::lm::nullstream(v21);
      }
    }

    v20 = *(a1 + 44);
  }

  if ((LODWORD(v20) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if (v20 <= 0.0)
    {
      v22 = quasar::lm::nullstream(v19);
    }

    else
    {
      quasar::lm::LogMessage::LogMessage(v24, 5, "StateInstantiator", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 86);
      quasar::rescoring::AdapterModel::getFeaturizer(v24);
      quasar::lm::LogMessage::~LogMessage(v24);
    }

    if (*(a1 + 60) == -1)
    {
      quasar::lm::LogMessage::LogMessage(v24, 5, "StateInstantiator", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 87);
      quasar::rescoring::AdapterModel::getFeaturizer(v24);
      quasar::lm::LogMessage::~LogMessage(v24);
    }

    else
    {
      quasar::lm::nullstream(v22);
    }
  }

  return a1;
}

void sub_1B5723F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  quasar::lm::LogMessage::~LogMessage(&a9);
  std::__function::__value_func<unsigned long ()(BOnode const*)>::~__value_func[abi:ne200100](v9 + 64);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<unsigned long ()(BOnode const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_1,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_1>,void ()(int,fst::TropicalWeightTpl<float> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2AE50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_1,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_1>,void ()(int,fst::TropicalWeightTpl<float> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int,fst::TropicalWeightTpl<float> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_2,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_2>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2AEE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_2,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_2>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(int)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1B57245C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_3,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_3>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2AF60;
  a2[1] = v2;
  return result;
}

void std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_3,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_3>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::operator()(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *v3) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *v3;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(*(a1 + 8), v10);
    }

    v11 = (16 * v7);
    *v11 = *a3;
    v6 = 16 * v7 + 16;
    v12 = *(v3 + 8) - *v3;
    v13 = v11 - v12;
    memcpy(v11 - v12, *v3, v12);
    v14 = *v3;
    *v3 = v13;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a3;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_3,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_3>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_1B57249E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_4,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_4>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2AFF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_4,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_4>,void ()(int)>::operator()(uint64_t a1, unsigned int *a2, __n128 a3)
{
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = v4[1];
  v7 = 126 - 2 * __clz(v6 - v5);
  v8 = *a2;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  v10 = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v5, v6, &v14, v9, 1, a3);
  v11 = *(a1 + 16);
  v12 = *v11;
  v13 = v11[1];
  while (v12 != v13)
  {
    (*(***(a1 + 8) + 208))(**(a1 + 8), v8, v12, v10);
    v12 += 16;
  }
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_4,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_4>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_5,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_5>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2B070;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_5,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_5>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_6,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_6>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2B0F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_6,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_6>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_7,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_7>,void ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2B170;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_7,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_7>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_8,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_8>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2B1F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_8,std::allocator<quasar::lm::arpa2fst::inhouse::mutable_fst_impl::ConvertToFST::operator()(Ngram const&)::$_8>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t quasar::lm::arpa2fst::inhouse::StateInstantiator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (a2 + 8);
  v17 = std::function<unsigned long ()(BOnode const*)>::operator()(a1 + 64, a2 + 8);
  std::function<void ()(int)>::operator()(a6, v17);
  v18 = 0.0;
  if (a3 == 1 && *(*a4 + 4) == *(a1 + 24))
  {
    v19 = *(a1 + 40);
    if ((LODWORD(v19) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v18 = *(a1 + 48) + 0.0;
      v20 = *(a1 + 60);
      LODWORD(v56) = *(a1 + 56);
      HIDWORD(v56) = v56;
      v57 = -v19;
      v58 = v20;
      std::function<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::operator()(a8, v17);
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  LOBYTE(v56) = 0;
  v22 = LHash<unsigned int,float>::find((a2 + 16), *(a1 + 28), &v56);
  if (v56)
  {
    v23 = *v22 * 2.30258509;
    v24 = v18 + v23;
  }

  else
  {
    v24 = -INFINITY;
  }

  if ((LODWORD(v24) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((v21 & 1) == 0 && (*(a1 + 44) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v25 = -(v24 + *(a1 + 44));
      v26 = *(a1 + 60);
      LODWORD(v56) = *(a1 + 56);
      HIDWORD(v56) = v56;
      v57 = v25;
      v58 = v26;
      std::function<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::operator()(a8, v17);
      v24 = v24 + *(a1 + 52);
    }

    *&v56 = -v24;
    v22 = std::function<void ()(int,fst::TropicalWeightTpl<float> const&)>::operator()(a7, v17);
  }

  if (a5)
  {
    v27 = std::function<unsigned long ()(BOnode const*)>::operator()(a1 + 64, a5 + 8);
    v28 = v18 + *v16 * 2.30258509;
    v56 = 0;
    v57 = -v28;
    v58 = v27;
    std::function<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::operator()(a8, v17);
  }

  else if (a3)
  {
    quasar::lm::LogMessage::LogMessage(&v56, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 153);
    quasar::rescoring::AdapterModel::getFeaturizer(&v56);
    quasar::lm::LogMessage::~LogMessage(&v56);
  }

  else
  {
    quasar::lm::nullstream(v22);
  }

  LHashIter<unsigned int,float>::LHashIter(&v56, a2 + 16, SArray_compareKey<unsigned int>);
  LHashIter<unsigned int,float>::init(&v56);
  v55 = -1;
  __p = 0;
  v53 = 0;
  v54 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *a4, a4[1], (a4[1] - *a4) >> 2);
  v29 = v18;
  while (1)
  {
    v30 = LHashIter<unsigned int,float>::next(&v56, &v55);
    if (!v30)
    {
      break;
    }

    if (v55 == *(a1 + 24))
    {
      if (a3)
      {
        quasar::lm::LogMessage::LogMessage(v51, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 176);
        quasar::rescoring::AdapterModel::getFeaturizer(v51);
        quasar::lm::LogMessage::~LogMessage(v51);
      }

      else
      {
        quasar::lm::nullstream(v30);
      }
    }

    else if (v55 != *(a1 + 28))
    {
      v31 = *v30;
      v32 = std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>(*(a1 + 32), &v55);
      if (!v32 || (v33 = *(v32 + 5), v33 == -1))
      {
        if ((*(**(a1 + 16) + 176))(*(a1 + 16), v55))
        {
          quasar::lm::LogMessage::LogMessage(v51, 2, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 188);
          Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v51);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "Non-event symbol ", 17);
          v36 = MEMORY[0x1B8C84C10](v35, v55);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " occurs as a probabilistic event. ", 34);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Is <unk> modeled as a word?", 27);
          quasar::lm::LogMessage::~LogMessage(v51);
        }

        quasar::lm::LogMessage::LogMessage(v51, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 192);
        v38 = quasar::rescoring::AdapterModel::getFeaturizer(v51);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Symbol ", 7);
        v40 = MEMORY[0x1B8C84C10](v39, v55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " in ARPA model has no remapping.", 32);
        quasar::lm::LogMessage::~LogMessage(v51);
        v33 = -1;
      }

      v41 = __p;
      *__p = v55;
      v50 = 0;
      PrefixTrie = Trie<unsigned int,BOnode>::findPrefixTrie(*(a1 + 8), v41, &v50);
      v43 = PrefixTrie;
      if (PrefixTrie)
      {
        v44 = quasar::lm::nullstream(PrefixTrie);
      }

      else
      {
        quasar::lm::LogMessage::LogMessage(v51, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 201);
        quasar::rescoring::AdapterModel::getFeaturizer(v51);
        quasar::lm::LogMessage::~LogMessage(v51);
      }

      if (v50 <= *(a1 + 4))
      {
        quasar::lm::nullstream(v44);
      }

      else
      {
        quasar::lm::LogMessage::LogMessage(v51, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 202);
        quasar::rescoring::AdapterModel::getFeaturizer(v51);
        quasar::lm::LogMessage::~LogMessage(v51);
      }

      v45 = std::function<unsigned long ()(BOnode const*)>::operator()(a1 + 64, v43 + 8);
      v46 = v45;
      if (v45 == -1)
      {
        quasar::lm::LogMessage::LogMessage(v51, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 209);
        quasar::rescoring::AdapterModel::getFeaturizer(v51);
        quasar::lm::LogMessage::~LogMessage(v51);
      }

      else
      {
        quasar::lm::nullstream(v45);
      }

      v47 = v29 + v31 * 2.30258509;
      v51[0] = v33;
      v51[1] = v33;
      *&v51[2] = -v47;
      v51[3] = v46;
      std::function<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::operator()(a8, v17);
    }
  }

  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  LHashIter<unsigned int,double>::~LHashIter(&v56);
  return std::function<void ()(int)>::operator()(a9, v17);
}

uint64_t std::function<unsigned long ()(BOnode const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::function<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::function<void ()(int,fst::TropicalWeightTpl<float> const&)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_0,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_0>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2B270;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_0,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_0>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::operator()(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 24);
  *v15 = *a2 + 8;
  v7 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(*v6, v15);
  v8 = (v7 + 24);
  if (!v7)
  {
    v8 = &fst::kNoStateId;
  }

  v9 = *v8;
  if (v9 == -1)
  {
    v10 = *v6;
    v16 = (*v6)[3];
    quasar::lm::InsertOrDie<std::unordered_map<BOnode const*,int>>(v10, v15, &v16);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
LABEL_5:
    quasar::lm::nullstream(v7);
    goto LABEL_8;
  }

  quasar::lm::LogMessage::LogMessage(v15, 5, "operator()", "/Library/Caches/com.apple.xbs/Sources/EmbeddedAcousticRecognition/libquasar/liblm/src/impl/arpa2fst-inhouse.cpp", 466);
  quasar::rescoring::AdapterModel::getFeaturizer(v15);
  quasar::lm::LogMessage::~LogMessage(v15);
LABEL_8:
  v11 = *(a1 + 32);
  v15[0] = 0;
  result = LHash<unsigned int,float>::find((v4 + 16), *v11, v15);
  v13 = *(v4 + 16);
  if (v13)
  {
    v13 = (*v13 >> 5);
  }

  v14 = -1;
  if (v5)
  {
    v14 = 1;
  }

  **(a1 + 16) += v13 + v14 - (v15[0] != 0) + (*(a1 + 8) & (v15[0] != 0));
  return result;
}

void sub_1B57258E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  quasar::lm::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_0,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_0>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_1,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_1>,unsigned long ()(BOnode const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2B2F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_1,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_1>,unsigned long ()(BOnode const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v9 = *a2;
  v3 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,float>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(*(a1 + 8), &v9);
  v4 = (v3 + 3);
  if (!v3)
  {
    v4 = &fst::kNoStateId;
  }

  v5 = *v4;
  if (v5 == -1)
  {
    v6 = *(a1 + 8);
    v8 = v6[3];
    quasar::lm::InsertOrDie<std::unordered_map<BOnode const*,int>>(v6, &v9, &v8);
    return v8;
  }

  return v5;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_1,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_1>,unsigned long ()(BOnode const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_2,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_2>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2B370;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_2,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_2>,void ()(int)>::operator()(uint64_t a1, __n128 a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *v3;
    v5 = v3[1];
    v6 = 126 - 2 * __clz(v5 - *v3);
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v4, v5, &v9, v7, 1, a2);
  }

  return quasar::lm::fst_builder::FstBuilder<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::addState(**(a1 + 16), *(a1 + 32), *(a1 + 24));
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_2,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_2>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2B3F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::operator()(void *a1, uint64_t *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *a3;
  v7 = *a5;
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[1];
  v14[0] = &unk_1F2D2B460;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v14;
  v13[0] = &unk_1F2D2B4E0;
  v13[1] = v8;
  v13[3] = v13;
  v12[0] = &unk_1F2D2B560;
  v12[1] = v9;
  v12[3] = v12;
  quasar::lm::arpa2fst::inhouse::StateInstantiator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator()(v10, v5, v6, a4, v7, v14, v13, v12, a1[5]);
  std::__function::__value_func<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(int,fst::TropicalWeightTpl<float> const&)>::~__value_func[abi:ne200100](v13);
  return std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v14);
}

void sub_1B5725DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(int,fst::TropicalWeightTpl<float> const&)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3,std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3>,void ()(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int)#1}>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D2B460;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int)#1}>,void ()(int)>::operator()(uint64_t result)
{
  **(result + 8) = 2139095040;
  *(*(result + 16) + 8) = **(result + 16);
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int)#1}>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::TropicalWeightTpl<float> const&)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::TropicalWeightTpl<float> const&)#1}>,void ()(int,fst::TropicalWeightTpl<float> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2B4E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::TropicalWeightTpl<float> const&)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::TropicalWeightTpl<float> const&)#1}>,void ()(int,fst::TropicalWeightTpl<float> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)#1}>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D2B560;
  a2[1] = v2;
  return result;
}

void std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)#1}>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::operator()(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *v3) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *v3;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(*(a1 + 8), v10);
    }

    v11 = (16 * v7);
    *v11 = *a3;
    v6 = 16 * v7 + 16;
    v12 = *(v3 + 8) - *v3;
    v13 = v11 - v12;
    memcpy(v11 - v12, *v3, v12);
    v14 = *v3;
    *v3 = v13;
    *(v3 + 8) = v6;
    *(v3 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a3;
    v6 = (v5 + 1);
  }

  *(v3 + 8) = v6;
}

uint64_t std::__function::__func<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)#1},std::allocator<quasar::lm::arpa2fst::inhouse::fst_builder_impl::ConvertToFST::operator()(Ngram const&)::$_3::operator() const(Trie<unsigned int,BOnode> const*,unsigned int,std::vector<unsigned int> const&,Trie<unsigned int,BOnode> const*)::{lambda(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)#1}>,void ()(int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__init_with_size[abi:ne200100]<fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5726274(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

quasar::artifact::AppLmArtifactGlobals *quasar::artifact::AppLmArtifact::AppLmArtifact(quasar::artifact::AppLmArtifactGlobals *a1, __int128 *a2, uint64_t a3)
{
  v6 = quasar::artifact::AppLmArtifactGlobals::get(a1);
  v7 = quasar::artifact::AppLmArtifactGlobals::get(v6);
  v8 = quasar::artifact::AppLmArtifactGlobals::get(v7);
  quasar::artifact::Artifact::Artifact(a1, v6, v7 + 3, (v8 + 48));
  *a1 = &unk_1F2D2B5F0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "version");
  quasar::lm::InsertOrDie<std::map<std::string,std::string>>(a1 + 104, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "locale");
  std::string::basic_string[abi:ne200100]<0>(v10, "_");
  quasar::Locale::toInternalShortIdentifier(a3, v10);
  quasar::lm::InsertOrDie<std::map<std::string,std::string>>(a1 + 104, &__p, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "-");
  quasar::Locale::toInternalLongIdentifier(a3, &__p);
  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a1 + 176, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return a1;
}

void sub_1B572640C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  quasar::artifact::Artifact::~Artifact(v27);
  _Unwind_Resume(a1);
}

uint64_t quasar::artifact::AppLmArtifactGlobals::get(quasar::artifact::AppLmArtifactGlobals *this)
{
  {
    operator new();
  }

  return quasar::artifact::AppLmArtifactGlobals::get(void)::singleton;
}

void sub_1B5726518(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1020C40FA75F7B4);
  _Unwind_Resume(a1);
}

void quasar::lm::InsertOrDie<std::map<std::string,std::string>>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = quasar::lm::InsertIfNotPresent<std::map<std::string,std::string>>(a1, a2, a3);
  if (v4)
  {

    quasar::lm::nullstream(v4);
  }

  else
  {
    quasar::lm::LogMessage::LogMessage(v10, 5, "InsertOrDie", "../libquasar/liblm/include/lm/stl_utils.h", 89);
    Featurizer = quasar::rescoring::AdapterModel::getFeaturizer(v10);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(Featurizer, "duplicate key ", 14);
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

void quasar::artifact::Artifact::~Artifact(quasar::artifact::Artifact *this)
{
  *this = &unk_1F2D31FE8;
  std::__tree<std::string>::destroy(this + 240, *(this + 31));
  if (*(this + 231) < 0)
  {
    operator delete(*(this + 26));
  }

  std::__tree<std::string>::destroy(this + 176, *(this + 23));
  std::__tree<std::string>::destroy(this + 152, *(this + 20));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 128, *(this + 17));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 104, *(this + 14));
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(this + 80, *(this + 11));
  std::__tree<std::string>::destroy(this + 56, *(this + 8));
  std::__tree<std::string>::destroy(this + 32, *(this + 5));
  std::__tree<std::string>::destroy(this + 8, *(this + 2));
}

{
  quasar::artifact::Artifact::~Artifact(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::artifact::AppLmArtifact::AppLmArtifact(quasar::artifact::AppLmArtifactGlobals *a1, uint64_t a2)
{
  v4 = quasar::artifact::AppLmArtifactGlobals::get(a1);
  v5 = quasar::artifact::AppLmArtifactGlobals::get(v4);
  v6 = quasar::artifact::AppLmArtifactGlobals::get(v5);
  result = quasar::artifact::Artifact::Artifact(a1, v4, v5 + 3, (v6 + 48), a2);
  *a1 = &unk_1F2D2B5F0;
  return result;
}

quasar::artifact::AppLmArtifactLifeCycleStage *quasar::artifact::AppLmArtifact::getLifeCycleStage(quasar::artifact::AppLmArtifact *this)
{
  v2 = quasar::artifact::AppLmArtifactLifeCycleStages::get(this);
  std::string::basic_string[abi:ne200100]<0>(__p, "language-model-fst");
  hasContent = quasar::artifact::Artifact::hasContent(this, __p);
  v4 = hasContent;
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(__p, "asr-datapack-version");
      hasInfo = quasar::artifact::Artifact::hasInfo(this, __p);
      if (hasInfo)
      {
        std::string::basic_string[abi:ne200100]<0>(v41, "language-model-arpa");
        hasInfo = quasar::artifact::Artifact::hasContent(this, v41);
        v6 = hasInfo;
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }
      }

      else
      {
        v6 = 0;
      }

      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = quasar::artifact::AppLmArtifactLifeCycleStages::get(hasInfo);
      if (v6)
      {
        v2 = (v11 + 320);
        goto LABEL_29;
      }

      goto LABEL_18;
    }
  }

  else if (hasContent)
  {
    goto LABEL_3;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ngram-count");
  v7 = quasar::artifact::Artifact::hasContent(this, __p);
  v8 = v7;
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
LABEL_9:
      std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer-datapack-version");
      v9 = quasar::artifact::Artifact::hasInfo(this, __p);
      v10 = v9;
      if (SBYTE7(v25) < 0)
      {
        operator delete(__p[0]);
      }

      v11 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v9);
      if (v10)
      {
        v2 = (v11 + 256);
        goto LABEL_29;
      }

LABEL_18:
      v2 = (v11 + 64);
      goto LABEL_29;
    }
  }

  else if (v7)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "phrase-count");
  v12 = quasar::artifact::Artifact::hasContent(this, __p);
  v13 = v12;
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
    if (!v13)
    {
      goto LABEL_29;
    }
  }

  else if (!v12)
  {
    goto LABEL_29;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer-datapack-version");
  v14 = quasar::artifact::Artifact::hasInfo(this, __p);
  v15 = v14;
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v14);
  if (v15)
  {
    v2 = (v16 + 192);
  }

  else
  {
    v2 = (v16 + 128);
  }

LABEL_29:
  if (quasar::artifact::AppLmArtifactLifeCycleStage::isValid(v2))
  {
    isTextNormalized = quasar::artifact::AppLmArtifactLifeCycleStage::isTextNormalized(v2);
    std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer-datapack-version");
    v18 = quasar::artifact::Artifact::hasInfo(this, __p);
    v19 = isTextNormalized ^ v18;
    if (SBYTE7(v25) < 0)
    {
      operator delete(__p[0]);
      if (!v19)
      {
        return v2;
      }
    }

    else if (!v19)
    {
      return v2;
    }

    if (quasar::gLogLevel >= 1)
    {
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
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Artifact in life cycle stage ", 29);
      v21 = quasar::artifact::operator<<(v20, v2);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " has ", 5);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "incorrect text normalization meta-data.", 39);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
    }

    return (quasar::artifact::AppLmArtifactLifeCycleStages::get(v18) + 64);
  }

  return v2;
}

void sub_1B5726A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::artifact::AppLmArtifact::loadAppLmData(quasar::artifact::AppLmArtifact *a1)
{
  LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(a1);
  if (quasar::artifact::AppLmArtifactLifeCycleStage::isValid(LifeCycleStage))
  {
    v3 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
    v4 = v3;
    v5 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v3);
    if (v4 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v5 + 128))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "phrase-count");
      quasar::artifact::Artifact::getContentAsStream(a1, __p);
    }

    v6 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
    v7 = v6;
    v8 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v6);
    if (v7 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v8 + 192))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "phrase-count");
      quasar::artifact::Artifact::getContentAsStream(a1, __p);
    }

    v9 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
    v10 = v9;
    v11 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v9);
    if (v10 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v11 + 256))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ngram-count");
      quasar::artifact::Artifact::getContentAsStream(a1, __p);
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
    v20 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__p = 0u;
    v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to transform artifact from ", 34);
    v13 = quasar::artifact::operator<<(v12, LifeCycleStage);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " stage.", 7);
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
    v20 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__p = 0u;
    v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Artifact in invalid life cycle stage.");
  }

  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B5726F50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a10)
  {
    quasar::artifact::AppLmArtifact::loadAppLmData(a10);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  v24 = *v23;
  *v23 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  JUMPOUT(0x1B5726FD0);
}

void sub_1B5727138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  MEMORY[0x1B8C85350](v30, v29);
  _Unwind_Resume(a1);
}

void quasar::artifact::AppLmArtifact::loadCustomPronData(quasar::artifact::AppLmArtifact *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "custom-prons");
  hasContent = quasar::artifact::Artifact::hasContent(this, v7);
  v6 = hasContent;
  if (v8 < 0)
  {
    operator delete(v7[0]);
    if (v6)
    {
LABEL_3:
      std::string::basic_string[abi:ne200100]<0>(v9, "custom-prons");
      quasar::artifact::Artifact::getContentAsStream(this, v9);
    }
  }

  else if (hasContent)
  {
    goto LABEL_3;
  }

  *a2 = 0;
}

void sub_1B57272E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::pair<std::string,std::string>::~pair(&a9);
  v25 = *(v23 - 40);
  *(v23 - 40) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::artifact::AppLmArtifact::loadOovs(quasar::artifact::AppLmArtifact *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "oov");
  hasContent = quasar::artifact::Artifact::hasContent(this, __p);
  v5 = hasContent;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v5)
    {
LABEL_3:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      operator new();
    }
  }

  else if (hasContent)
  {
    goto LABEL_3;
  }

  *a2 = 0;
}

void sub_1B57275E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(&__p);
  boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::~basic_ptree(v25 - 80);
  _Unwind_Resume(a1);
}

uint64_t boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::get_child(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v4 = *(a2 + 23) < 0;
  }

  else
  {
    v4 = 0;
    v11 = *a2;
  }

  v12 = *(a2 + 24);
  v5 = &v11;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v11.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    v6 = *a2;
  }

  else
  {
    v6 = a2;
  }

  v13 = v5 + *(a2 + 32) - v6;
  v7 = boost::property_tree::basic_ptree<std::string,std::string,std::less<std::string>>::walk_path(a1, &v11);
  if (!v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "No such node");
    boost::property_tree::ptree_bad_path::ptree_bad_path<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>(&v10, v9, a2);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1B5727800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, std::runtime_error a19)
{
  boost::property_tree::ptree_bad_path::~ptree_bad_path(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 41) < 0)
  {
    operator delete(*(v19 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::artifact::AppLmArtifact::isAdaptableToSpeechModelVersion(quasar::artifact::AppLmArtifact *a1, const Locale *a2, const void **a3)
{
  LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(a1);
  if (!quasar::artifact::AppLmArtifactLifeCycleStage::isValid(LifeCycleStage))
  {
    return 0;
  }

  quasar::artifact::Artifact::getLocale(a1, v27);
  v7 = quasar::Locale::operator!=(v27, a2);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(*(&v28 + 1));
  }

  if (SBYTE7(v28) < 0)
  {
    operator delete(v27[0]);
    if (v7)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = quasar::artifact::AppLmArtifactLifeCycleStage::operator int(LifeCycleStage);
  v9 = v8;
  v10 = quasar::artifact::AppLmArtifactLifeCycleStages::get(v8);
  if (v9 == quasar::artifact::AppLmArtifactLifeCycleStage::operator int(v10 + 320))
  {
    std::string::basic_string[abi:ne200100]<0>(v44, "asr-datapack-version");
    quasar::artifact::Artifact::getInfo(a1, v44, v27);
    v11 = SBYTE7(v28);
    if ((SBYTE7(v28) & 0x80u) == 0)
    {
      v12 = BYTE7(v28);
    }

    else
    {
      v12 = v27[1];
    }

    v13 = *(a3 + 23);
    v14 = v13;
    if (v13 < 0)
    {
      v13 = a3[1];
    }

    if (v12 == v13)
    {
      if ((SBYTE7(v28) & 0x80u) == 0)
      {
        v15 = v27;
      }

      else
      {
        v15 = v27[0];
      }

      if (v14 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      v17 = memcmp(v15, v16, v12) == 0;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v17 = 0;
      if ((SBYTE7(v28) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    operator delete(v27[0]);
LABEL_37:
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    return v17;
  }

  if ((quasar::artifact::AppLmArtifactLifeCycleStage::isAdaptableToArbitraryDatapacks(LifeCycleStage) & 1) == 0)
  {
    if (quasar::gLogLevel >= 2)
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
      *v27 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Unable to determine whether model is adaptable to ", 50);
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
        v21 = a3[1];
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " ", 1);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "in ", 3);
      v25 = quasar::artifact::operator<<(v24, LifeCycleStage);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " life cycle stage.", 18);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(v27);
    }

    return 0;
  }

  return 1;
}

void sub_1B5727A74(_Unwind_Exception *exception_object)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::artifact::AppLmArtifact::isAdaptableToSpeechModelInfo(quasar::artifact::AppLmArtifact *this, const quasar::SpeechModelInfo *a2)
{
  quasar::SpeechModelInfo::getLocale(a2, &v6);
  isAdaptableToSpeechModelVersion = quasar::artifact::AppLmArtifact::isAdaptableToSpeechModelVersion(this, &v6, a2);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return isAdaptableToSpeechModelVersion;
}

uint64_t quasar::artifact::AppLmArtifact::isAdaptableToSystemConfig(quasar::artifact::AppLmArtifact *this, const quasar::SystemConfig *a2)
{
  SpeechModelInfo = quasar::SystemConfig::getSpeechModelInfo(a2);

  return quasar::artifact::AppLmArtifact::isAdaptableToSpeechModelInfo(this, SpeechModelInfo);
}

BOOL quasar::artifact::AppLmArtifact::isMinimalistic(quasar::artifact::AppLmArtifact *this)
{
  LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(this);
  v3 = *(this + 16);
  if (v3 == (this + 136))
  {
LABEL_9:
    v8 = *(this + 19);
    v9 = (this + 160);
    if (v8 == (this + 160))
    {
      return 1;
    }

    else
    {
      do
      {
        quasar::artifact::AppLmArtifactLifeCycleStage::contentKeys(LifeCycleStage, &v14);
        v10 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v14, v8 + 4);
        std::__tree<std::string>::destroy(&v14, v15[0]);
        result = v15 != v10;
        if (v15 == v10)
        {
          break;
        }

        v12 = v8[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v8[2];
            v7 = *v13 == v8;
            v8 = v13;
          }

          while (!v7);
        }

        v8 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    while (1)
    {
      quasar::artifact::AppLmArtifactLifeCycleStage::contentKeys(LifeCycleStage, &v14);
      v4 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v14, v3 + 4);
      std::__tree<std::string>::destroy(&v14, v15[0]);
      if (v15 == v4)
      {
        return 0;
      }

      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == (this + 136))
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void quasar::artifact::AppLmArtifact::minimize(quasar::artifact::AppLmArtifact **this)
{
  LifeCycleStage = quasar::artifact::AppLmArtifact::getLifeCycleStage(this);
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v3 = this[16];
  if (v3 != (this + 17))
  {
    do
    {
      quasar::artifact::AppLmArtifactLifeCycleStage::contentKeys(LifeCycleStage, &v15);
      v4 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v15, v3 + 4);
      std::__tree<std::string>::destroy(&v15, v16[0]);
      if (v16 == v4)
      {
        quasar::lm::InsertOrDie<std::set<std::string>>(&v17, v3 + 32);
      }

      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (this + 17));
  }

  v8 = this[19];
  if (v8 != (this + 20))
  {
    do
    {
      quasar::artifact::AppLmArtifactLifeCycleStage::contentKeys(LifeCycleStage, &v15);
      if (v16 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v15, v8 + 4))
      {
        v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(&v17, v8 + 4);
        std::__tree<std::string>::destroy(&v15, v16[0]);
        if (v18 == v9)
        {
          quasar::lm::InsertOrDie<std::set<std::string>>(&v17, v8 + 32);
        }
      }

      else
      {
        std::__tree<std::string>::destroy(&v15, v16[0]);
      }

      v10 = *(v8 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v8 + 2);
          v7 = *v11 == v8;
          v8 = v11;
        }

        while (!v7);
      }

      v8 = v11;
    }

    while (v11 != (this + 20));
  }

  v12 = v17;
  if (v17 != v18)
  {
    do
    {
      quasar::artifact::Artifact::clearContent(this, v12 + 4);
      v13 = v12[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v7 = *v14 == v12;
          v12 = v14;
        }

        while (!v7);
      }

      v12 = v14;
    }

    while (v14 != v18);
  }

  std::__tree<std::string>::destroy(&v17, v18[0]);
}

void quasar::artifact::AppLmArtifact::getLmHandle(quasar::artifact::AppLmArtifact *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "language-model-fst");
  hasContent = quasar::artifact::Artifact::hasContent(this, &__p);
  v6 = hasContent;
  if ((v8 & 0x80000000) == 0)
  {
    if (!hasContent)
    {
      goto LABEL_6;
    }

LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(&__p, "language-model-fst");
    quasar::artifact::Artifact::getContentAsStream(this, &__p);
  }

  operator delete(__p);
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  *a2 = 0;
}

void sub_1B5728138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, std::__shared_weak_count *a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  MEMORY[0x1B8C85350](v22, 0x10A1C4054E493B5);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v25 = *(v23 - 56);
  *(v23 - 56) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  _Unwind_Resume(a1);
}

void quasar::artifact::AppLmArtifact::~AppLmArtifact(quasar::artifact::AppLmArtifact *this)
{
  quasar::artifact::Artifact::~Artifact(this);

  JUMPOUT(0x1B8C85350);
}

quasar::artifact::AppLmArtifactGlobals *quasar::artifact::AppLmArtifactGlobals::AppLmArtifactGlobals(quasar::artifact::AppLmArtifactGlobals *this)
{
  v28 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v22, "phrase-count");
  std::string::basic_string[abi:ne200100]<0>(v23, "ngram-count");
  std::string::basic_string[abi:ne200100]<0>(&v24, "language-model-fst");
  std::string::basic_string[abi:ne200100]<0>(v25, "language-model-arpa");
  std::string::basic_string[abi:ne200100]<0>(&v26, "oov");
  std::string::basic_string[abi:ne200100]<0>(v27, "custom-prons");
  std::set<std::string>::set[abi:ne200100](this, &v22.__r_.__value_.__l.__data_, 6);
  for (i = 0; i != -144; i -= 24)
  {
    if (v27[i + 23] < 0)
    {
      operator delete(*&v27[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v22, "asr-datapack-version");
  std::string::basic_string[abi:ne200100]<0>(v23, "tokenizer-datapack-version");
  std::string::basic_string[abi:ne200100]<0>(&v24, "language-model-weight");
  std::set<std::string>::set[abi:ne200100](this + 3, &v22.__r_.__value_.__l.__data_, 3);
  for (j = 0; j != -9; j -= 3)
  {
    if (SHIBYTE(v24.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v24.__r_.__value_.__l.__data_ + j * 8));
    }
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "language-model-fst");
  std::string::basic_string[abi:ne200100]<0>(v20, "asr-datapack-version");
  memset(v12, 0, sizeof(v12));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v12, v20, &v22, 1uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(&v22, v13, v12);
  std::string::basic_string[abi:ne200100]<0>(v10, "language-model-arpa");
  std::string::basic_string[abi:ne200100]<0>(v18, "asr-datapack-version");
  memset(v9, 0, sizeof(v9));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v9, v18, v20, 1uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(&v24, v10, v9);
  std::string::basic_string[abi:ne200100]<0>(v7, "ngram-count");
  std::string::basic_string[abi:ne200100]<0>(__p, "tokenizer-datapack-version");
  memset(v6, 0, sizeof(v6));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v6, __p, v18, 1uLL);
  std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(&v26, v7, v6);
  std::map<std::string,std::vector<std::string>>::map[abi:ne200100](this + 6, &v22.__r_.__value_.__l.__data_, 3);
  for (k = 0; k != -18; k -= 6)
  {
    v15 = &v27[k * 8];
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v26.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  v15 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  v7[0] = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v7);
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  v10[0] = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return this;
}

void sub_1B57285CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char *a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  v58 = -144;
  v59 = v56;
  do
  {
    v59 = std::pair<std::string,std::vector<std::string>>::~pair(v59) - 48;
    v58 += 48;
  }

  while (v58);
  a37 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a37);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  a13 = &a19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  a22 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  std::__tree<std::string>::destroy(v55 + 24, *(v55 + 32));
  std::__tree<std::string>::destroy(v55, *(v55 + 8));
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::vector<std::string>>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, uint64_t *a3)
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

void sub_1B5728890(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::string,std::vector<std::string>>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::vector<std::string>> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t quasar::lm::InsertIfNotPresent<std::map<std::string,std::string>>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  std::pair<std::string const,std::string>::pair[abi:ne200100]<true,0>(&v7, a2, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, &v7.__r_.__value_.__l.__data_);
  v5 = v4;
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v5 & 1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v2;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
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

void sub_1B5728AB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void boost::throw_exception<boost::property_tree::ptree_bad_path>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::property_tree::ptree_bad_path>::wrapexcept(exception, a1, a2);
}

void boost::property_tree::ptree_bad_path::ptree_bad_path<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>(std::runtime_error *a1, const void **a2, uint64_t a3)
{
  boost::property_tree::detail::prepare_bad_path_what<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>(a2, a3, &v4);
  std::runtime_error::runtime_error(a1, &v4);
  a1->__vftable = &unk_1F2CFFA38;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  a1->__vftable = &unk_1F2D2B718;
  boost::any::any<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>();
}

void boost::property_tree::ptree_bad_path::~ptree_bad_path(std::runtime_error *this)
{
  this->__vftable = &unk_1F2D2B718;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~runtime_error + 1))(v2);
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_1F2D2B718;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~runtime_error + 1))(v2);
  }

  std::runtime_error::~runtime_error(this);
}

{
  this->__vftable = &unk_1F2D2B718;
  v2 = this[1].__vftable;
  if (v2)
  {
    (*(v2->~runtime_error + 1))(v2);
  }

  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::property_tree::ptree_bad_path>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  *(a1 + 8) = &unk_1F2D2B718;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<boost::property_tree::ptree_bad_path>::wrapexcept(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 8) = &unk_1F2D2B718;
  v6 = a2[1].__vftable;
  if (v6)
  {
    v6 = (*(*v6 + 24))(v6);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_1F2D2B6A0;
  *(a1 + 8) = &unk_1F2D2B6D0;
  *(a1 + 24) = v6;
  *(a1 + 32) = &unk_1F2D2B6F8;
  *(a1 + 64) = a3[1].i32[0];
  *(a1 + 48) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_1B57290D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::property_tree::ptree_bad_path>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  boost::wrapexcept<boost::property_tree::ptree_bad_path>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::property_tree::ptree_bad_path>::~wrapexcept(uint64_t a1)
{
  *(a1 + 32) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 40));
  *(a1 + 8) = &unk_1F2D2B718;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::ptree_bad_path>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  *a1 = &unk_1F2D2B718;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 24) = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  *a1 = &unk_1F2D2B718;
  v2 = *(a1 + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk toboost::wrapexcept<boost::property_tree::ptree_bad_path>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  *(a1 - 3) = &unk_1F2D2B718;
  v2 = *(a1 - 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::runtime_error::~runtime_error((a1 - 3));
}

{
  *a1 = &unk_1F2CFD578;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  *(a1 - 3) = &unk_1F2D2B718;
  v2 = *(a1 - 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::runtime_error::~runtime_error((a1 - 3));

  JUMPOUT(0x1B8C85350);
}

uint64_t boost::wrapexcept<boost::property_tree::ptree_bad_path>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2CFD548;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F2D2B718;
  v4 = *(a2 + 24);
  if (v4)
  {
    v4 = (*(*v4 + 24))(v4);
  }

  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = &unk_1F2CFD578;
  *(a1 + 40) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &unk_1F2D2B6A0;
  *(a1 + 8) = &unk_1F2D2B6D0;
  *(a1 + 32) = &unk_1F2D2B6F8;
  return a1;
}

void boost::property_tree::detail::prepare_bad_path_what<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>(const void **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = &v15;
  std::string::basic_string[abi:ne200100](&v15, v6 + 2);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v15.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, " (");
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
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

  v11 = std::string::append(&v15, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v16, ")");
  *a3 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1B57298A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::any::holder<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>::holder(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D2B740;
  v4 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *v4 = v5;
  }

  *(a1 + 32) = *(a2 + 24);
  if (*(a1 + 31) < 0)
  {
    v4 = *v4;
  }

  *(a1 + 40) = v4;
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  *(a1 + 40) = v4 + *(a2 + 4) - v6;
  return a1;
}

uint64_t boost::any::holder<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>::~holder(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void boost::any::holder<boost::property_tree::string_path<std::string,boost::property_tree::id_translator<std::string>>>::~holder(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t std::default_delete<std::vector<std::string>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (a2)
  {
    v4 = a2;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
    return MEMORY[0x1B8C85350](a2, 0x20C40960023A9);
  }

  return result;
}

void std::__shared_ptr_pointer<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double WittenBell::discount(WittenBell *this, double a2, double a3, unint64_t a4)
{
  result = 1.0;
  if (a2 > 0.0)
  {
    result = 0.0;
    if (*(this + 4) <= a2)
    {
      return a3 / (a4 + a3);
    }
  }

  return result;
}

uint64_t WittenBell::estimate()
{
  return 1;
}

{
  return 1;
}

double ConstDiscount::discount(ConstDiscount *this, double a2, double a3)
{
  result = 1.0;
  if (a2 > 0.0)
  {
    result = 0.0;
    if (*(this + 5) <= a2)
    {
      v5 = *(this + 4);
      if (v5 <= a2)
      {
        return (a2 - v5) / a2;
      }
    }
  }

  return result;
}

uint64_t quasar::rescoring::extractSurfaceFormFromNBestListEntry(unsigned int *a1, uint64_t a2, const char *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v6 = *a1;
  if (v6)
  {
    v7 = 4 * v6;
    v8 = (a1 + 1);
    do
    {
      v9 = *v8;
      v10 = &v18 + *(v18 - 24);
      if ((v10[32] & 5) == 0)
      {
        (*(**(v10 + 5) + 32))(__dst);
        if (v25 >= 1)
        {
          v11 = strlen(a3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, a3, v11);
        }
      }

      v12 = *(a2 + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v13 = (*(*v12 + 48))(v12, &v8[v9]);
      if (v13)
      {
        v14 = *v13;
        if (*v13 >= 0x17)
        {
          operator new();
        }

        v24 = *v13;
        if (v14)
        {
          memmove(__dst, v13 + 1, v14);
        }

        *(__dst + v14) = 0;
        if ((v24 & 0x80u) == 0)
        {
          v15 = __dst;
        }

        else
        {
          v15 = __dst[0];
        }

        if ((v24 & 0x80u) == 0)
        {
          v16 = v24;
        }

        else
        {
          v16 = __dst[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v15, v16);
        if (v24 < 0)
        {
          operator delete(__dst[0]);
        }
      }

      v8 += 4;
      v7 -= 4;
    }

    while (v7);
  }

  std::stringbuf::str();
  v18 = *MEMORY[0x1E69E54E8];
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v22);
}

void sub_1B572A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va1);
  _Unwind_Resume(a1);
}

_BYTE *quasar::rescoring::extractPreItnFromNBestListEntry@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = (a1 - *a1);
  if (*v2 >= 9u && (v3 = v2[4]) != 0)
  {
    v4 = (a1 + v3);
    v5 = *v4;
    v7[0] = &unk_1F2D132E8;
    v7[1] = quasar::rescoring::NBestListToken::text;
    v7[2] = 0;
    v7[3] = v7;
    quasar::rescoring::extractSurfaceFormFromNBestListEntry((v4 + v5), v7, " ");
    return std::__function::__value_func<flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::~__value_func[abi:ne200100](v7);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void sub_1B572A39C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

_BYTE *quasar::rescoring::extractPostItnFromNBestListEntry@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = (a1 - *a1);
  if (*v2 >= 0xBu && (v3 = v2[5]) != 0)
  {
    v4 = (a1 + v3);
    v5 = *v4;
    v7[0] = &unk_1F2D132E8;
    v7[1] = quasar::rescoring::NBestListToken::text;
    v7[2] = 0;
    v7[3] = v7;
    quasar::rescoring::extractSurfaceFormFromNBestListEntry((v4 + v5), v7, " ");
    return std::__function::__value_func<flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::~__value_func[abi:ne200100](v7);
  }

  else
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

void sub_1B572A4BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<flatbuffers_2_0_6::String const* ()(quasar::rescoring::NBestListToken const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *quasar::rescoring::MultiSourceNBestListBuilder::finalizeAndReturnNBestList(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 71);
  if (v5 >= 0)
  {
    v6 = (a1 + 48);
  }

  else
  {
    v6 = *(a1 + 48);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 71);
  }

  else
  {
    v7 = *(a1 + 56);
  }

  String = flatbuffers_2_0_6::FlatBufferBuilder::CreateString(*a1, v6, v7);
  v9 = *(a1 + 80) - *(a1 + 72);
  if (v9)
  {
    v10 = *(a1 + 72);
  }

  else
  {
    v10 = &flatbuffers_2_0_6::data<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListEntry>,std::allocator<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListEntry>>>(std::vector<flatbuffers_2_0_6::Offset<quasar::rescoring::NBestListEntry>> const&)::t;
  }

  v11 = flatbuffers_2_0_6::FlatBufferBuilder::CreateVector<quasar::rescoring::NBestListToken>(*a1, v10, v9 >> 2);
  if (a2)
  {
    v12 = *a1;
    v13 = *(a2 + 23);
    if (v13 < 0)
    {
      if (*(a2 + 8))
      {
        goto LABEL_13;
      }
    }

    else if (*(a2 + 23))
    {
LABEL_13:
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

      v16 = flatbuffers_2_0_6::FlatBufferBuilder::CreateString(*a1, v14, v15);
LABEL_23:
      v18 = *(a2 + 47);
      if (v18 < 0)
      {
        if (*(a2 + 32))
        {
          goto LABEL_25;
        }
      }

      else if (*(a2 + 47))
      {
LABEL_25:
        if (v18 >= 0)
        {
          v19 = (a2 + 24);
        }

        else
        {
          v19 = *(a2 + 24);
        }

        if (v18 >= 0)
        {
          v20 = *(a2 + 47);
        }

        else
        {
          v20 = *(a2 + 32);
        }

        v21 = flatbuffers_2_0_6::FlatBufferBuilder::CreateString(v12, v19, v20);
        goto LABEL_34;
      }

      v21 = 0;
LABEL_34:
      *(v12 + 78) = 1;
      v22 = *(v12 + 10);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v12, 6, v21);
      flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v12, 4, v16);
      v17 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v12, v22);
      goto LABEL_35;
    }

    v16 = 0;
    goto LABEL_23;
  }

  v17 = 0;
LABEL_35:
  *(v4 + 78) = 1;
  v23 = *(v4 + 10);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v4, 8, v17);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v4, 6, v11);
  flatbuffers_2_0_6::FlatBufferBuilder::AddOffset<flatbuffers_2_0_6::String>(v4, 4, String);
  v24 = flatbuffers_2_0_6::FlatBufferBuilder::EndTable(v4, v23);
  flatbuffers_2_0_6::FlatBufferBuilder::Finish(v4, v24, 0, 0);
  v25 = *(*a1 + 56);
  v26 = *v25;
  *a1 = 0;
  *(a1 + 80) = *(a1 + 72);
  return v25 + v26;
}

uint64_t *kaldi::KaldiObjectHolder<quasar::KaldiString>::~KaldiObjectHolder(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1B8C85350](v2, 0x1012C40EC159624);
  }

  return a1;
}

uint64_t kaldi::KaldiObjectHolder<quasar::KaldiString>::Value(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "KaldiObjectHolder::Value() called wrongly.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void *kaldi::KaldiObjectHolder<quasar::KaldiString>::Clear(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    result = MEMORY[0x1B8C85350](v1, 0x1012C40EC159624);
    *v2 = 0;
  }

  return result;
}

void kaldi::KaldiObjectHolder<quasar::KaldiString>::Read(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x1B8C85350](v1, 0x1012C40EC159624);
  }

  operator new();
}

void sub_1B572A8B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void *quasar::KaldiString::Read(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
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
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "KaldiString does not support binary format");
    goto LABEL_6;
  }

  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v5 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
  v6 = (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v8);
  result = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, a1, v6);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
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
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v8, "Error reading KaldiString from stream.");
LABEL_6:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v8);
  }

  return result;
}

kaldi::nnet1::ScaledDotAttention *kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, const kaldi::nnet1::ScaledDotAttention *a2, uint64_t a3)
{
  v6 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, a2 + 1);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 40)) = *(a2 + 5);
  *(this + *(*this - 48)) = *(a2 + 6);
  *(this + *(*this - 56)) = *(a2 + 7);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 1) = &unk_1F2D0EE38;
  *(this + 48) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  LOBYTE(v7) = *(a3 + 104);
  v8 = *(a3 + 108);
  *(this + 7) = 0u;
  v9 = (this + 112);
  *(this + 7) = &unk_1F2D0EE38;
  *(this + 96) = 0;
  *(this + 104) = v7;
  *(this + 27) = v8;
  *(this + 8) = 0u;
  v10 = *(a3 + 112);
  if (v10)
  {
    v11 = (*(*v10 + 16))(v10);
    v12 = *v9;
    *v9 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = *(a3 + 120);
  if (v13)
  {
    v14 = (*(*v13 + 16))(v13);
    v15 = *(this + 15);
    *(this + 15) = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  v16 = *(a3 + 128);
  if (v16)
  {
    v17 = (*(*v16 + 16))(v16);
    v18 = *(this + 16);
    *(this + 16) = v17;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  v19 = *(a3 + 136);
  if (v19)
  {
    v20 = (*(*v19 + 16))(v19);
    v21 = *(this + 17);
    *(this + 17) = v20;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  return this;
}

void sub_1B572AF38(_Unwind_Exception *a1)
{
  v6 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v4;
  *v4 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v3);
  kaldi::CuMatrix<float>::~CuMatrix(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

kaldi::nnet1::ScaledDotAttention *kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, const kaldi::nnet1::ScaledDotAttention *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(this + 18) = &unk_1F2D15BB8;
  *(this + 19) = *(v4 + 1);
  *(this + 80) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 24) = &unk_1F2D17FD8;
  v5 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F2D2BA90);
  v5[18] = &unk_1F2D2B9A0;
  v5[24] = &unk_1F2D2BA70;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *v5 = &unk_1F2D2B870;
  v5[1] = &unk_1F2D0EE38;
  *(v5 + 48) = 0;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  v5[7] = &unk_1F2D0EE38;
  *(v5 + 96) = 0;
  v6 = *(a2 + 104);
  v7 = *(a2 + 27);
  *(v5 + 7) = 0u;
  v8 = v5 + 14;
  *(v5 + 104) = v6;
  *(v5 + 27) = v7;
  *(v5 + 8) = 0u;
  v9 = *(a2 + 14);
  if (v9)
  {
    v10 = (*(*v9 + 16))(v9);
    v11 = *v8;
    *v8 = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  v12 = *(a2 + 15);
  if (v12)
  {
    v13 = (*(*v12 + 16))(v12);
    v14 = *(this + 15);
    *(this + 15) = v13;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }
  }

  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = (*(*v15 + 16))(v15);
    v17 = *(this + 16);
    *(this + 16) = v16;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  v18 = *(a2 + 17);
  if (v18)
  {
    v19 = (*(*v18 + 16))(v18);
    v20 = *(this + 17);
    *(this + 17) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  return this;
}

void sub_1B572B360(_Unwind_Exception *a1)
{
  v8 = *(v1 + 17);
  *(v1 + 17) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(v1 + 15);
  *(v1 + 15) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *v6;
  *v6 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v5);
  kaldi::CuMatrix<float>::~CuMatrix(v4);
  quasar::Bitmap::~Bitmap(v1);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, int a2, int a3, char a4, float a5)
{
  *(this + 18) = &unk_1F2D15BB8;
  *(this + 38) = a2;
  *(this + 39) = a3;
  *(this + 80) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 24) = &unk_1F2D17FD8;
  v7 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F2D2BA90);
  v7[18] = &unk_1F2D2B9A0;
  *v7 = &unk_1F2D2B870;
  v7[24] = &unk_1F2D2BA70;
  result = 0.0;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  v7[1] = &unk_1F2D0EE38;
  *(v7 + 48) = 0;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  v7[7] = &unk_1F2D0EE38;
  *(v7 + 96) = 0;
  *(v7 + 104) = a4;
  *(v7 + 27) = a5;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  return result;
}

uint64_t kaldi::nnet1::ScaledDotAttention::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1 + 96))(a1);
  if (*(a1 + 136))
  {
    v9 = kaldi::CuMatrix<float>::CuMatrix(v10, a3, 111);
    (*(**(a1 + 136) + 112))(*(a1 + 136), v10, a3, a4, v9);
    result = kaldi::CuMatrix<float>::~CuMatrix(v10);
  }

  if (*(a1 + 104) == 1)
  {
    return kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, 1.0, 1.0);
  }

  return result;
}

int *kaldi::nnet1::ScaledDotAttention::SetKeyValueStates(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 20);
  if (v6 != *(a3 + 20))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Mismatch in number of key and value pairs in ScaledDotAttention, got ", 69);
    v18 = MEMORY[0x1B8C84C00](v17, *(a2 + 20));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " keys and ", 10);
    v20 = MEMORY[0x1B8C84C00](v19, *(a3 + 20));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, " values");
    goto LABEL_27;
  }

  v9 = a1[15];
  v10 = *(a2 + 16);
  if (v9)
  {
    if (v10 != *(*&v9 + 8))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Mismatch of key matrix input in ScaledDotAttention, expected ", 61);
      v22 = MEMORY[0x1B8C84C00](v21, *(*&a1[15] + 8));
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", but got ", 10);
      MEMORY[0x1B8C84C00](v23, *(a2 + 16));
      goto LABEL_27;
    }

    kaldi::CuMatrix<float>::Resize(a1 + 1, v6, *(*&v9 + 12), 0, 0);
    (*(**&a1[15] + 112))(*&a1[15], a2, a1 + 1, a4);
  }

  else
  {
    if (v10 != *(*&a1[14] + 12))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Mismatch of key matrix input in ScaledDotAttention, expected ", 61);
      v28 = MEMORY[0x1B8C84C00](v27, *(*&a1[14] + 12));
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", but got ", 10);
      MEMORY[0x1B8C84C00](v29, *(a2 + 16));
      goto LABEL_27;
    }

    kaldi::CuMatrix<float>::Resize(a1 + 1, v6, v10, 0, 0);
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&a1[1], a2, 111);
  }

  v11 = a1[16];
  if (v11)
  {
    if (*(a3 + 16) == *(*&v11 + 8))
    {
      kaldi::CuMatrix<float>::Resize(a1 + 7, *(a3 + 20), *(*&v11 + 12), 0, 0);
      v12 = *(**&a1[16] + 112);

      return v12();
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Mismatch of value matrix input in ScaledDotAttention, expected ", 63);
    v25 = MEMORY[0x1B8C84C00](v24, *(*&a1[16] + 8));
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", but got ", 10);
    MEMORY[0x1B8C84C00](v26, *(a3 + 16));
LABEL_27:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v35);
  }

  v14 = a1[17];
  v15 = *(a3 + 16);
  if (v14)
  {
    v16 = *(*&v14 + 8);
  }

  else
  {
    v16 = *(&a1[1].i32[1] + *(*a1 - 40));
  }

  if (v15 != v16)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v35);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Mismatch of value matrix input in ScaledDotAttention, expected ", 63);
    v31 = a1[17];
    if (v31)
    {
      v32 = (*&v31 + 8);
    }

    else
    {
      v32 = (a1 + *(*a1 - 40) + 12);
    }

    v33 = MEMORY[0x1B8C84C00](v30, v32->u32[0]);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", but got ", 10);
    MEMORY[0x1B8C84C00](v34, *(a3 + 16));
    goto LABEL_27;
  }

  kaldi::CuMatrix<float>::Resize(a1 + 7, *(a3 + 20), v15, 0, 0);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(&a1[7], a3, 111);
}

uint64_t kaldi::nnet1::ScaledDotAttention::ClearKeyValueStates(kaldi::nnet1::ScaledDotAttention *this)
{
  v9 = 0u;
  v8 = 0u;
  v7 = &unk_1F2D0EE38;
  v10 = 0;
  v5 = 0u;
  v4 = 0u;
  v3 = &unk_1F2D0EE38;
  v6 = 0;
  kaldi::CuMatrix<float>::Swap(this + 8, &v7);
  kaldi::CuMatrix<float>::Swap(this + 56, &v3);
  kaldi::CuMatrix<float>::~CuMatrix(&v3);
  return kaldi::CuMatrix<float>::~CuMatrix(&v7);
}

void sub_1B572BBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a9);
  kaldi::CuMatrix<float>::~CuMatrix(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ScaledDotAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "SetKeyValueStores needs to be called in ScaledDotAttention for attention to work");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  kaldi::CuMatrix<float>::CuMatrix(v10, *(a2 + 20), v5, 0, 0, 0);
  (*(**(a1 + 112) + 112))(*(a1 + 112), a2, v10, a4);
  kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, v10, a1 + 8, a1 + 56, a3, 0);
  return kaldi::CuMatrix<float>::~CuMatrix(v10);
}

uint64_t kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  kaldi::CuMatrix<float>::CuMatrix(v14, *(a2 + 20), *(a3 + 20), 0, 0, 0);
  kaldi::CuMatrixBase<float>::AddMatMat(v14, a2, 111, a3, 112);
  v12 = *(a1 + 108);
  if (v12 != 1.0)
  {
    kaldi::CuMatrixBase<float>::Scale(v14, v12);
  }

  kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(v14, v14);
  if (a6)
  {
    kaldi::CuMatrixBase<float>::AddMat(a6, v14, 111, 1.0, 0.0);
  }

  kaldi::CuMatrixBase<float>::AddMatMat(a5, v14, 111, a4, 111);
  return kaldi::CuMatrix<float>::~CuMatrix(v14);
}

char *kaldi::nnet1::ScaledDotAttention::CopyQuantized<kaldi::nnet1::Quantizable8BitComponentItf>(uint64_t **a1)
{
  v2 = ((*a1)[11])(a1, 1);
  if (v2)
  {
  }

  else
  {
    v3 = 0;
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 14, &v17);
  v4 = v17;
  v17 = 0;
  v5 = v3[14];
  v3[14] = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = v17;
    v17 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 15, &v17);
  v7 = v17;
  v17 = 0;
  v8 = v3[15];
  v3[15] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v17;
    v17 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 16, &v17);
  v10 = v17;
  v17 = 0;
  v11 = v3[16];
  v3[16] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>(a1 + 17, &v17);
  v13 = v17;
  v17 = 0;
  v14 = v3[17];
  v3[17] = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  return v3 + *(*v3 - 40);
}

char *kaldi::nnet1::ScaledDotAttention::CopyQuantized<kaldi::nnet1::Quantizable16BitComponentItf>(uint64_t **a1)
{
  v2 = ((*a1)[11])(a1, 1);
  if (v2)
  {
  }

  else
  {
    v3 = 0;
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 14, &v17);
  v4 = v17;
  v17 = 0;
  v5 = v3[14];
  v3[14] = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = v17;
    v17 = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 15, &v17);
  v7 = v17;
  v17 = 0;
  v8 = v3[15];
  v3[15] = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v17;
    v17 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 16, &v17);
  v10 = v17;
  v17 = 0;
  v11 = v3[16];
  v3[16] = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v17;
    v17 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>(a1 + 17, &v17);
  v13 = v17;
  v17 = 0;
  v14 = v3[17];
  v3[17] = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  return v3 + *(*v3 - 40);
}

uint64_t kaldi::nnet1::ScaledDotAttention::Info(kaldi::nnet1::ScaledDotAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  kaldi::WriteToken(&v16, 0, "<AddQuery>");
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " ", 1);
  v3 = MEMORY[0x1B8C84BD0](v2, *(this + 104));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  if (*(this + 14))
  {
    kaldi::WriteToken(&v16, 0, "<QueryTransform>");
    (*(**(this + 14) + 64))(&__p);
    v4 = (v15 & 0x80u) == 0 ? &__p : __p;
    v5 = (v15 & 0x80u) == 0 ? v15 : v14;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v4, v5);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 15))
  {
    kaldi::WriteToken(&v16, 0, "<KeyTransform>");
    (*(**(this + 15) + 64))(&__p);
    v6 = (v15 & 0x80u) == 0 ? &__p : __p;
    v7 = (v15 & 0x80u) == 0 ? v15 : v14;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v6, v7);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 16))
  {
    kaldi::WriteToken(&v16, 0, "<ValueTransform>");
    (*(**(this + 16) + 64))(&__p);
    v8 = (v15 & 0x80u) == 0 ? &__p : __p;
    v9 = (v15 & 0x80u) == 0 ? v15 : v14;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v8, v9);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 17))
  {
    kaldi::WriteToken(&v16, 0, "<OutputTransform>");
    (*(**(this + 17) + 64))(&__p);
    v10 = (v15 & 0x80u) == 0 ? &__p : __p;
    v11 = (v15 & 0x80u) == 0 ? v15 : v14;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v10, v11);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  v16 = *MEMORY[0x1E69E54E8];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v20);
}

void sub_1B572C6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ScaledDotAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v40, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Reading ScaledDotAttention component", 36);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v40);
  }

  __p = 0uLL;
  v39 = 0;
  while (1)
  {
    while (1)
    {
      if (kaldi::Peek(a2, a3) != 60)
      {
        goto LABEL_104;
      }

      kaldi::ReadToken(a2, a3, &__p);
      if (SHIBYTE(v39) < 0)
      {
        break;
      }

      if (HIBYTE(v39) <= 0xDu)
      {
        if (HIBYTE(v39) == 7)
        {
          if (__p != 1633899324 || *(&__p + 3) != 1046834273)
          {
            goto LABEL_107;
          }

LABEL_53:
          kaldi::ReadBasicType<float>(a2, a3, (a1 + 108));
        }

        else
        {
          if (HIBYTE(v39) != 10)
          {
            goto LABEL_95;
          }

          if (__p != 0x726575516464413CLL || WORD4(__p) != 15993)
          {
            goto LABEL_107;
          }

LABEL_47:
          kaldi::ReadBasicType<BOOL>(a2, a3, (a1 + 104));
        }
      }

      else
      {
        switch(HIBYTE(v39))
        {
          case 0xEu:
            if (__p != 0x6E61725479654B3CLL || *(&__p + 6) != 0x3E6D726F66736E61)
            {
              goto LABEL_107;
            }

LABEL_82:
            v25 = kaldi::nnet1::Component::Read(a2, a3);
            v26 = *(a1 + 120);
            *(a1 + 120) = v25;
            if (v26)
            {
              (*(*v26 + 8))(v26);
              v25 = *(a1 + 120);
            }

            if (!v25)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "reading key transform failed", 28);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
            }

            break;
          case 0x10u:
            if (__p == 0x725479726575513CLL && *(&__p + 1) == 0x3E6D726F66736E61)
            {
LABEL_86:
              v27 = kaldi::nnet1::Component::Read(a2, a3);
              v28 = *(a1 + 112);
              *(a1 + 112) = v27;
              if (v28)
              {
                (*(*v28 + 8))(v28);
                v27 = *(a1 + 112);
              }

              if (!v27)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "reading query transform failed", 30);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
              }
            }

            else
            {
              if (__p != 0x725465756C61563CLL || *(&__p + 1) != 0x3E6D726F66736E61)
              {
                goto LABEL_95;
              }

LABEL_90:
              v29 = kaldi::nnet1::Component::Read(a2, a3);
              v30 = *(a1 + 128);
              *(a1 + 128) = v29;
              if (v30)
              {
                (*(*v30 + 8))(v30);
                v29 = *(a1 + 128);
              }

              if (!v29)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "reading value transform failed", 30);
                kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
              }
            }

            break;
          case 0x11u:
            p_p = &__p;
            goto LABEL_65;
          default:
            goto LABEL_107;
        }
      }
    }

    if (*(&__p + 1) == 7)
    {
      if (*__p == 1633899324 && *(__p + 3) == 1046834273)
      {
        goto LABEL_53;
      }
    }

    else if (*(&__p + 1) == 10 && *__p == 0x726575516464413CLL && *(__p + 8) == 15993)
    {
      goto LABEL_47;
    }

    if (*(&__p + 1) == 14)
    {
      if (*__p == 0x6E61725479654B3CLL && *(__p + 6) == 0x3E6D726F66736E61)
      {
        goto LABEL_82;
      }
    }

    else if (*(&__p + 1) == 16 && *__p == 0x725479726575513CLL && *(__p + 8) == 0x3E6D726F66736E61)
    {
      goto LABEL_86;
    }

    v11 = *(&__p + 1);
    if (*(&__p + 1) == 16)
    {
      if (*__p == 0x725465756C61563CLL && *(__p + 8) == 0x3E6D726F66736E61)
      {
        goto LABEL_90;
      }

      v11 = *(&__p + 1);
    }

    if (v11 != 17)
    {
      goto LABEL_97;
    }

    p_p = __p;
LABEL_65:
    v17 = *p_p;
    v18 = *(p_p + 1);
    v19 = *(p_p + 16);
    v20 = v17 == 0x5474757074754F3CLL && v18 == 0x6D726F66736E6172;
    if (!v20 || v19 != 62)
    {
      break;
    }

    v22 = kaldi::nnet1::Component::Read(a2, a3);
    v23 = *(a1 + 136);
    *(a1 + 136) = v22;
    if (v23)
    {
      (*(*v23 + 8))(v23);
      v22 = *(a1 + 136);
    }

    if (!v22)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "reading output transform failed", 31);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
    }
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
LABEL_95:
    if (HIBYTE(v39) == 12)
    {
      v31 = &__p;
      goto LABEL_99;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*(&__p + 1) != 12)
  {
    goto LABEL_107;
  }

  v31 = __p;
LABEL_99:
  v32 = *v31;
  v33 = *(v31 + 2);
  if (v32 != 0x6E6F706D6F432F3CLL || v33 != 1047817829)
  {
LABEL_107:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Unrecognized token ", 19);
    if (v39 >= 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p;
    }

    if (v39 >= 0)
    {
      v37 = HIBYTE(v39);
    }

    else
    {
      v37 = *(&__p + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v40);
  }

LABEL_104:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B572CD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::ScaledDotAttention::WriteData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  kaldi::WriteToken(a2, a3, "<AddQuery>");
  kaldi::WriteBasicType<BOOL>(a2, a3, *(a1 + 104));
  kaldi::WriteToken(a2, a3, "<Scale>");
  kaldi::WriteBasicType<float>(a2, a3);
  if (*(a1 + 112))
  {
    kaldi::WriteToken(a2, a3, "<QueryTransform>");
    kaldi::nnet1::Component::Write(*(a1 + 112), a2, a3, a4);
  }

  if (*(a1 + 120))
  {
    kaldi::WriteToken(a2, a3, "<KeyTransform>");
    kaldi::nnet1::Component::Write(*(a1 + 120), a2, a3, a4);
  }

  if (*(a1 + 128))
  {
    kaldi::WriteToken(a2, a3, "<ValueTransform>");
    kaldi::nnet1::Component::Write(*(a1 + 128), a2, a3, a4);
  }

  if (*(a1 + 136))
  {
    kaldi::WriteToken(a2, a3, "<OutputTransform>");
    kaldi::nnet1::Component::Write(*(a1 + 136), a2, a3, a4);
  }

  return kaldi::WriteToken(a2, a3, "</Component>");
}

kaldi::nnet1::ScaledDotAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, const kaldi::nnet1::MultiHeadAttention *a2, uint64_t a3)
{
  result = kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, (a2 + 8), a3);
  v6 = *a2;
  *result = *a2;
  *(result + *(v6 - 40)) = *(a2 + 9);
  *(result + *(*result - 48)) = *(a2 + 10);
  *(result + *(*result - 56)) = *(a2 + 11);
  *(result + 36) = *(a3 + 144);
  return result;
}

kaldi::nnet1::MultiHeadAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, const kaldi::nnet1::MultiHeadAttention *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(this + 19) = &unk_1F2D15BB8;
  *(this + 20) = *(v4 + 1);
  *(this + 84) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 25) = &unk_1F2D17FD8;
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, &off_1F2D2BD20, a2);
  *(this + 19) = &unk_1F2D2BC30;
  *this = &unk_1F2D2BB00;
  *(this + 25) = &unk_1F2D2BD00;
  *(this + 36) = *(a2 + 36);
  return this;
}

void sub_1B572D150(_Unwind_Exception *a1)
{
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

kaldi::nnet1::MultiHeadAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, int a2, _BOOL4 a3, int a4, float a5, int a6)
{
  *(this + 19) = &unk_1F2D15BB8;
  *(this + 40) = a2;
  *(this + 41) = a3;
  *(this + 84) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 25) = &unk_1F2D17FD8;
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, &off_1F2D2BD20, a2, a3, a5, a4 != 0);
  *(this + 19) = &unk_1F2D2BC30;
  *this = &unk_1F2D2BB00;
  *(this + 25) = &unk_1F2D2BD00;
  *(this + 36) = a6;
  return this;
}

void sub_1B572D350(_Unwind_Exception *a1)
{
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MultiHeadAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, "SetKeyValueStores needs to be called in ScaledDotAttention for attention to work");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v28);
  }

  kaldi::CuMatrix<float>::CuMatrix(v28, *(a2 + 20), v5, 0, 0, 0);
  (*(**(a1 + 112) + 112))(*(a1 + 112), a2, v28, a4);
  v9 = *(a1 + 144);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 16) / v9;
    do
    {
      *(&v27[2] + 4) = *&v28[5];
      LODWORD(v27[2]) = v13;
      HIDWORD(v27[3]) = v10 + v28[7];
      v27[4] = v29;
      v27[0] = &unk_1F2CFA908;
      v27[1] = *&v28[2] + v11;
      v14 = *(a1 + 16) + v11;
      v15 = v10 + *(a1 + 36);
      v16 = *(a1 + 40);
      LODWORD(v26[2]) = v13;
      *(&v26[2] + 4) = *(a1 + 28);
      HIDWORD(v26[3]) = v15;
      v26[4] = v16;
      v26[0] = &unk_1F2CFA908;
      v26[1] = v14;
      v17 = *(a1 + 64) + v11;
      v18 = v10 + *(a1 + 84);
      v19 = *(a1 + 88);
      LODWORD(v25[2]) = v13;
      *(&v25[2] + 4) = *(a1 + 76);
      HIDWORD(v25[3]) = v18;
      v25[4] = v19;
      v25[0] = &unk_1F2CFA908;
      v25[1] = v17;
      v20 = *(a3 + 8) + v11;
      v21 = v10 + *(a3 + 28);
      v22 = *(a3 + 32);
      LODWORD(v24[2]) = v13;
      *(&v24[2] + 4) = *(a3 + 20);
      HIDWORD(v24[3]) = v21;
      v24[4] = v22;
      v24[0] = &unk_1F2CFA908;
      v24[1] = v20;
      kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, v27, v26, v25, v24, 0);
      v24[0] = &unk_1F2CFA908;
      memset(&v24[1], 0, 32);
      quasar::Bitmap::~Bitmap(v24);
      v25[0] = &unk_1F2CFA908;
      memset(&v25[1], 0, 32);
      quasar::Bitmap::~Bitmap(v25);
      v26[0] = &unk_1F2CFA908;
      memset(&v26[1], 0, 32);
      quasar::Bitmap::~Bitmap(v26);
      v27[0] = &unk_1F2CFA908;
      memset(&v27[1], 0, 32);
      quasar::Bitmap::~Bitmap(v27);
      ++v12;
      v11 += 4 * v13;
      v10 -= v13;
    }

    while (v12 < *(a1 + 144));
  }

  return kaldi::CuMatrix<float>::~CuMatrix(v28);
}

uint64_t kaldi::nnet1::MultiHeadAttention::Info(kaldi::nnet1::MultiHeadAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  kaldi::WriteToken(&v9, 0, "<NumberHeads>");
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " ", 1);
  v3 = MEMORY[0x1B8C84C00](v2, *(this + 36));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  kaldi::nnet1::ScaledDotAttention::Info(__p, this);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v13);
}

void sub_1B572D8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MultiHeadAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v6, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Reading MultiHeadAttention component", 36);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v6);
  }

  kaldi::ExpectToken(a2, a3, "<NumberHeads>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 144);
  kaldi::nnet1::ScaledDotAttention::ReadData(a1, a2, a3);
}

void sub_1B572D9B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::MultiHeadAttention::WriteData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  kaldi::WriteToken(a2, a3, "<NumberHeads>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 144));

  return kaldi::nnet1::ScaledDotAttention::WriteData(a1, a2, a3, a4);
}

kaldi::nnet1::SupervisedMultiHeadAttention *kaldi::nnet1::SupervisedMultiHeadAttention::SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, const kaldi::nnet1::SupervisedMultiHeadAttention *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(this + 25) = &unk_1F2D15BB8;
  *(this + 26) = *(v4 + 1);
  *(this + 108) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 31) = &unk_1F2D17FD8;
  kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(this, off_1F2D2BFD0, a2);
  *(this + 25) = &unk_1F2D2BEE0;
  *this = &unk_1F2D2BDB0;
  *(this + 31) = &unk_1F2D2BFB0;
  *(this + 37) = *(a2 + 37);
  kaldi::CuMatrix<float>::CuMatrix(this + 152, a2 + 152, 111);
  return this;
}

void sub_1B572DBB4(_Unwind_Exception *a1)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(v2, &off_1F2D2BFD8);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v2);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

kaldi::nnet1::SupervisedMultiHeadAttention *kaldi::nnet1::SupervisedMultiHeadAttention::SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, int a2, _BOOL4 a3, int a4, float a5, int a6, int a7)
{
  *(this + 25) = &unk_1F2D15BB8;
  *(this + 52) = a2;
  *(this + 53) = a3;
  *(this + 108) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 31) = &unk_1F2D17FD8;
  kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(this, off_1F2D2BFD0, a2, a3, a5, a4, a6);
  *(this + 25) = &unk_1F2D2BEE0;
  *this = &unk_1F2D2BDB0;
  *(this + 31) = &unk_1F2D2BFB0;
  *(this + 37) = a7;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 19) = &unk_1F2D0EE38;
  *(this + 192) = 0;
  return this;
}

void sub_1B572DE00(_Unwind_Exception *a1)
{
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SupervisedMultiHeadAttention::ComputeAttention(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 112) + 12);
  if (v5 != *(a1 + 24))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v30, "SetKeyValueStores needs to be called in ScaledDotAttention for attention to work");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
  }

  kaldi::CuMatrix<float>::CuMatrix(v30, *(a2 + 20), v5, 0, 0, 0);
  (*(**(a1 + 112) + 112))(*(a1 + 112), a2, v30, a4);
  kaldi::CuMatrix<float>::Resize((a1 + 152), v31, *(a1 + 28), 0, 0);
  kaldi::CuMatrixBase<float>::SetZero(a1 + 152);
  v9 = *(a1 + 144);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 16) / v9;
    do
    {
      *(&v29[2] + 4) = v31;
      LODWORD(v29[2]) = v13;
      HIDWORD(v29[3]) = v10 + v32;
      v29[4] = v33;
      v29[0] = &unk_1F2CFA908;
      v29[1] = *&v30[1] + v11;
      v14 = *(a1 + 16) + v11;
      v15 = v10 + *(a1 + 36);
      v16 = *(a1 + 40);
      LODWORD(v28[2]) = v13;
      *(&v28[2] + 4) = *(a1 + 28);
      HIDWORD(v28[3]) = v15;
      v28[4] = v16;
      v28[0] = &unk_1F2CFA908;
      v28[1] = v14;
      v17 = *(a1 + 64) + v11;
      v18 = v10 + *(a1 + 84);
      v19 = *(a1 + 88);
      LODWORD(v27[2]) = v13;
      *(&v27[2] + 4) = *(a1 + 76);
      HIDWORD(v27[3]) = v18;
      v27[4] = v19;
      v27[0] = &unk_1F2CFA908;
      v27[1] = v17;
      v20 = *(a3 + 8) + v11;
      v21 = v10 + *(a3 + 28);
      v22 = *(a3 + 32);
      LODWORD(v26[2]) = v13;
      *(&v26[2] + 4) = *(a3 + 20);
      HIDWORD(v26[3]) = v21;
      v26[4] = v22;
      v26[0] = &unk_1F2CFA908;
      v26[1] = v20;
      if (v12 >= *(a1 + 148))
      {
        kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, v29, v28, v27, v26, 0);
      }

      else
      {
        kaldi::nnet1::ScaledDotAttention::ComputeScaledDotAttention(a1, v29, v28, v27, v26, a1 + 152);
      }

      v26[0] = &unk_1F2CFA908;
      memset(&v26[1], 0, 32);
      quasar::Bitmap::~Bitmap(v26);
      v27[0] = &unk_1F2CFA908;
      memset(&v27[1], 0, 32);
      quasar::Bitmap::~Bitmap(v27);
      v28[0] = &unk_1F2CFA908;
      memset(&v28[1], 0, 32);
      quasar::Bitmap::~Bitmap(v28);
      v29[0] = &unk_1F2CFA908;
      memset(&v29[1], 0, 32);
      quasar::Bitmap::~Bitmap(v29);
      ++v12;
      v11 += 4 * v13;
      v10 -= v13;
    }

    while (v12 < *(a1 + 144));
  }

  v23 = *(a1 + 148);
  if (v23 > 1)
  {
    v24 = 1.0 / v23;
    kaldi::CuMatrixBase<float>::Scale(a1 + 152, v24);
  }

  return kaldi::CuMatrix<float>::~CuMatrix(v30);
}

uint64_t kaldi::nnet1::SupervisedMultiHeadAttention::Info(kaldi::nnet1::SupervisedMultiHeadAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  kaldi::WriteToken(&v9, 0, "<SupervisedHeads>");
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " ", 1);
  v3 = MEMORY[0x1B8C84C00](v2, *(this + 37));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  kaldi::nnet1::MultiHeadAttention::Info(__p, this);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v13);
}

void sub_1B572E3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::SupervisedMultiHeadAttention::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v6, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Reading SupervisedMultiHeadAttention component", 46);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v6);
  }

  kaldi::ExpectToken(a2, a3, "<SupervisedHeads>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 148);
  kaldi::nnet1::MultiHeadAttention::ReadData(a1, a2, a3);
}

void sub_1B572E4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::SupervisedMultiHeadAttention::WriteData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  kaldi::WriteToken(a2, a3, "<SupervisedHeads>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 148));

  return kaldi::nnet1::MultiHeadAttention::WriteData(a1, a2, a3, a4);
}

uint64_t kaldi::nnet1::SelfAttention::SelfAttention(uint64_t a1, void *a2)
{
  v4 = a2 + *(*a2 - 40);
  *(a1 + 80) = &unk_1F2D15BB8;
  *(a1 + 88) = *(v4 + 1);
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *a1 = &unk_1F2D17FB0;
  *(a1 + 128) = &unk_1F2D17FD8;
  v5 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(a1, off_1F2D2C340);
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = &unk_1F2D27A18;
  *(v5 + 12) = 1;
  v5[9] = 0;
  v5[10] = &unk_1F2D2C250;
  *v5 = &unk_1F2D2C080;
  v5[16] = &unk_1F2D2C320;
  v5[1] = &unk_1F2D2C138;
  v5[2] = 0;
  v5[7] = 0;
  v6 = v5 + 7;
  v5[8] = 0;
  v7 = a2[7];
  if (v7)
  {
    v8 = (*(*v7 + 16))(v7);
    v9 = *v6;
    *v6 = v8;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = a2[8];
  if (v10)
  {
    v11 = (*(*v10 + 16))(v10);
    v12 = *(a1 + 64);
    *(a1 + 64) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  v13 = a2[9];
  if (v13)
  {
    v14 = (*(*&v13[*(*v13 - 40)] + 16))(&v13[*(*v13 - 40)]);
    if (v14)
    {
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 72);
    *(a1 + 72) = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  return a1;
}

void sub_1B572E8BC(_Unwind_Exception *a1)
{
  v7 = *(v1 + 9);
  *(v1 + 9) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v5;
  *v5 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v4);
  quasar::Bitmap::~Bitmap(v1);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SelfAttention::PropagateFnc(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(a1 + 12);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    v8 = *(a2 + 20);
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v68, 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v68, "Running forward propagation for batch size = ", 45);
    v10 = MEMORY[0x1B8C84C00](v9, v8);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", which contains ", 17);
    v12 = MEMORY[0x1B8C84C00](v11, (v8 / v7));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v14 = MEMORY[0x1B8C84C00](v13, v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v68);
  }

  (*(*a1 + 160))(a1);
  v15 = a1[2] + 48 * a4;
  v16 = a1[7];
  v46 = a4;
  if (v16)
  {
    v17 = (v16 + 12);
  }

  else
  {
    v17 = (a1 + *(*a1 - 40) + 8);
  }

  v45 = *v17;
  v18 = a1[8];
  if (v18)
  {
    v19 = (v18 + 12);
    v20 = *a1;
  }

  else
  {
    v20 = *a1;
    v19 = (a1 + *(*a1 - 40) + 8);
  }

  v42 = *v19;
  v21 = *v19 + v45;
  (*(v20 + 88))(a1);
  v47 = a1;
  v43 = v21;
  kaldi::CuMatrix<float>::CuMatrix(&v68, *(a1 + 12), ((*(a2 + 20) * v21) / v7 + *(v15 + 16)), 0, 0, 0);
  v22 = *(v15 + 16);
  *(&v67[1] + 4) = v71;
  LODWORD(v67[1]) = v22;
  HIDWORD(v67[2]) = v72;
  v67[3] = v73;
  v66 = &unk_1F2CFA908;
  v67[0] = v69;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v66, v15, 111);
  v66 = &unk_1F2CFA908;
  memset(v67, 0, sizeof(v67));
  quasar::Bitmap::~Bitmap(&v66);
  if (v7 >= 1)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = v23 + *(a2 + 20);
      v26 = *(a2 + 24);
      v27 = *(a2 + 8) + 4 * (v26 * v24);
      v28 = *(a2 + 28) - v26 * v24;
      v29 = *(a2 + 32);
      LODWORD(v67[1]) = *(a2 + 16);
      HIDWORD(v67[1]) = v25;
      v67[2] = __PAIR64__(v28, v26);
      v67[3] = v29;
      v66 = &unk_1F2CFA908;
      v67[0] = v27;
      if (v7 != 1)
      {
        kaldi::CuMatrixBase<float>::SetStride(&v66, v26 * v7);
      }

      v30 = v23 + *(a3 + 20);
      v31 = *(a3 + 24);
      v32 = *(a3 + 8) + 4 * (v31 * v24);
      v33 = *(a3 + 28) - v31 * v24;
      v34 = *(a3 + 32);
      DWORD2(v64) = *(a3 + 16);
      HIDWORD(v64) = v30;
      *&v65 = __PAIR64__(v33, v31);
      *(&v65 + 1) = v34;
      v63 = &unk_1F2CFA908;
      *&v64 = v32;
      if (v7 != 1)
      {
        kaldi::CuMatrixBase<float>::SetStride(&v63, v31 * v7);
      }

      *&v58 = v69 + 4 * HIDWORD(v71) * v24;
      v57 = &unk_1F2CFCA48;
      *(&v58 + 1) = v70;
      *&v59 = v73;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v60, &v57, (v70 / v43));
      *(&v58 + 1) = __PAIR64__(HIDWORD(v61), v45);
      v59 = v62;
      v57 = &unk_1F2CFA908;
      *&v58 = v61;
      *&v55 = v61 + 4 * v45;
      *(&v55 + 1) = __PAIR64__(HIDWORD(v61), v42);
      LODWORD(v56) = v62;
      DWORD1(v56) = DWORD1(v62) - v45;
      *(&v56 + 1) = *(&v62 + 1);
      *(&v53 + 1) = *(&v62 + 1);
      v54 = &unk_1F2CFA908;
      v35 = (HIDWORD(v61) - HIDWORD(v67[1])) * v62;
      *(&v52 + 1) = __PAIR64__(HIDWORD(v67[1]), v45);
      LODWORD(v53) = v62;
      DWORD1(v53) = DWORD1(v62) - v35;
      v51 = &unk_1F2CFA908;
      *&v52 = v61 + 4 * v35;
      v36 = v47[7];
      if (v36)
      {
        (*(*v36 + 112))(v36, &v66, &v51, v46);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v51, &v66, 111);
      }

      v37 = v56 * (HIDWORD(v55) - HIDWORD(v67[1]));
      *(&v49 + 1) = __PAIR64__(HIDWORD(v67[1]), DWORD2(v55));
      LODWORD(v50) = v56;
      DWORD1(v50) = DWORD1(v56) - v37;
      *(&v50 + 1) = *(&v56 + 1);
      v48 = &unk_1F2CFA908;
      *&v49 = v55 + 4 * v37;
      v38 = v47[8];
      if (v38)
      {
        v39 = v46;
        (*(*v38 + 112))(v38, &v66, &v48, v46);
      }

      else
      {
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v48, &v66, 111);
        v39 = v46;
      }

      (*(*v47[9] + 24))(v47[9], &v57, &v54, v39);
      v40 = v47[9] + *(*v47[9] - 40);
      (*(*v40 + 112))(v40, &v66, &v63, v39);
      v48 = &unk_1F2CFA908;
      v49 = 0u;
      v50 = 0u;
      quasar::Bitmap::~Bitmap(&v48);
      v51 = &unk_1F2CFA908;
      v52 = 0u;
      v53 = 0u;
      quasar::Bitmap::~Bitmap(&v51);
      v54 = &unk_1F2CFA908;
      v55 = 0u;
      v56 = 0u;
      quasar::Bitmap::~Bitmap(&v54);
      v57 = &unk_1F2CFA908;
      v58 = 0u;
      v59 = 0u;
      quasar::Bitmap::~Bitmap(&v57);
      v60 = &unk_1F2CFA908;
      v61 = 0u;
      v62 = 0u;
      quasar::Bitmap::~Bitmap(&v60);
      v63 = &unk_1F2CFA908;
      v64 = 0u;
      v65 = 0u;
      quasar::Bitmap::~Bitmap(&v63);
      v66 = &unk_1F2CFA908;
      memset(v67, 0, sizeof(v67));
      quasar::Bitmap::~Bitmap(&v66);
      ++v24;
      --v23;
    }

    while (v7 != v24);
  }

  (*(*v47[9] + 32))(v47[9]);
  (*(*v47 + 128))(v47, &v68, v46);
  return kaldi::CuMatrix<float>::~CuMatrix(&v68);
}

void sub_1B572F0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  *(v53 + 8) = 0u;
  *(v53 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a48);
  kaldi::CuMatrix<float>::~CuMatrix(&a53);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::SelfAttention::Info(kaldi::nnet1::SelfAttention *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  if (*(this + 7))
  {
    kaldi::WriteToken(&v13, 0, "<KeyTransform>");
    (*(**(this + 7) + 64))(&__p);
    v2 = (v12 & 0x80u) == 0 ? &__p : __p;
    v3 = (v12 & 0x80u) == 0 ? v12 : v11;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v2, v3);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  if (*(this + 8))
  {
    kaldi::WriteToken(&v13, 0, "<ValueTransform>");
    (*(**(this + 8) + 64))(&__p);
    v4 = (v12 & 0x80u) == 0 ? &__p : __p;
    v5 = (v12 & 0x80u) == 0 ? v12 : v11;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v4, v5);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  v6 = *(this + 9);
  if (v6)
  {
    (*(*(v6 + *(*v6 - 40)) + 64))(&__p);
    v7 = (v12 & 0x80u) == 0 ? &__p : __p;
    v8 = (v12 & 0x80u) == 0 ? v12 : v11;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v7, v8);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v17);
}

void sub_1B572F500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable8BitComponentItf>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *v3;
    if (v5)
    {
      result = kaldi::nnet1::Quantizable8BitComponentItf::CopyQuantized(v5);
    }

    else
    {
      result = (*(v4 + 16))(v3);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t kaldi::nnet1::ScaledDotAttention::CopyOrQuantize<kaldi::nnet1::Quantizable16BitComponentItf>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *v3;
    if (v5)
    {
      result = kaldi::nnet1::Quantizable16BitComponentItf::CopyQuantized(v5);
    }

    else
    {
      result = (*(v4 + 16))(v3);
    }
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void kaldi::nnet1::SelfAttention::ReadData(void *a1, uint64_t *a2, int a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v31, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Reading SelfAttention component", 31);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v31);
  }

  __p = 0uLL;
  v30 = 0;
  while (1)
  {
    while (1)
    {
      if (kaldi::Peek(a2, a3) != 60)
      {
        v6 = HIBYTE(v30);
        goto LABEL_64;
      }

      kaldi::ReadToken(a2, a3, &__p);
      v6 = HIBYTE(v30);
      if ((SHIBYTE(v30) & 0x80000000) == 0)
      {
        break;
      }

      if (*(&__p + 1) == 14 && *__p == 0x6E61725479654B3CLL && *(__p + 6) == 0x3E6D726F66736E61)
      {
        goto LABEL_48;
      }

      if (*(&__p + 1) == 16 && *__p == 0x725465756C61563CLL && *(__p + 8) == 0x3E6D726F66736E61)
      {
        goto LABEL_26;
      }

      v10 = *(&__p + 1);
      if (*(&__p + 1) != 11)
      {
        goto LABEL_55;
      }

      p_p = __p;
LABEL_32:
      v14 = *p_p;
      v15 = *(p_p + 3);
      if (v14 != 0x69746E657474413CLL || v15 != 0x3E6E6F69746E6574)
      {
        if (SHIBYTE(v30) < 0)
        {
          v10 = *(&__p + 1);
LABEL_55:
          if (v10 == 12)
          {
            v22 = __p;
            goto LABEL_59;
          }
        }

        goto LABEL_67;
      }

      v17 = kaldi::nnet1::Component::Read(a2, a3);
      if (v17)
      {
      }

      v18 = a1[9];
      a1[9] = v17;
      if (v18)
      {
        (*(*v18 + 8))(v18);
        v17 = a1[9];
      }

      if (!v17)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "failed to read attention component in SelfAttention", 51);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
      }
    }

    if (HIBYTE(v30) <= 0xDu)
    {
      break;
    }

    if (HIBYTE(v30) == 14)
    {
      if (__p != 0x6E61725479654B3CLL || *(&__p + 6) != 0x3E6D726F66736E61)
      {
        goto LABEL_67;
      }

LABEL_48:
      v20 = kaldi::nnet1::Component::Read(a2, a3);
      v21 = a1[7];
      a1[7] = v20;
      if (v21)
      {
        (*(*v21 + 8))(v21);
        v20 = a1[7];
      }

      if (!v20)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "reading key transform failed", 28);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
      }
    }

    else
    {
      if (HIBYTE(v30) != 16)
      {
        goto LABEL_67;
      }

      if (__p != 0x725465756C61563CLL || *(&__p + 1) != 0x3E6D726F66736E61)
      {
        goto LABEL_67;
      }

LABEL_26:
      v12 = kaldi::nnet1::Component::Read(a2, a3);
      v13 = a1[8];
      a1[8] = v12;
      if (v13)
      {
        (*(*v13 + 8))(v13);
        v12 = a1[8];
      }

      if (!v12)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "reading value transform failed", 30);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
      }
    }
  }

  if (HIBYTE(v30) == 11)
  {
    p_p = &__p;
    goto LABEL_32;
  }

  if (HIBYTE(v30) != 12)
  {
    goto LABEL_67;
  }

  v22 = &__p;
LABEL_59:
  v23 = *v22;
  v24 = *(v22 + 2);
  if (v23 != 0x6E6F706D6F432F3CLL || v24 != 1047817829)
  {
LABEL_67:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Unrecognized token ", 19);
    if (v30 >= 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p;
    }

    if (v30 >= 0)
    {
      v28 = HIBYTE(v30);
    }

    else
    {
      v28 = *(&__p + 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v27, v28);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
  }

LABEL_64:
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B572FFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::SelfAttention::WriteData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 56))
  {
    kaldi::WriteToken(a2, a3, "<KeyTransform>");
    kaldi::nnet1::Component::Write(*(a1 + 56), a2, a3, a4);
  }

  if (*(a1 + 64))
  {
    kaldi::WriteToken(a2, a3, "<ValueTransform>");
    kaldi::nnet1::Component::Write(*(a1 + 64), a2, a3, a4);
  }

  kaldi::WriteToken(a2, a3, "<Attention>");
  kaldi::nnet1::Component::Write((*(a1 + 72) + *(**(a1 + 72) - 40)), a2, a3, a4);

  return kaldi::WriteToken(a2, a3, "</Component>");
}

uint64_t kaldi::nnet1::SelfAttention::HistoryStateSize(kaldi::nnet1::SelfAttention *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = (v1 + 12);
  }

  else
  {
    v2 = (this + *(*this - 40) + 8);
  }

  v3 = *v2;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = (v4 + 12);
  }

  else
  {
    v5 = (this + *(*this - 40) + 8);
  }

  return (*v5 + v3);
}

uint64_t non-virtual thunk tokaldi::nnet1::SelfAttention::HistoryStateSize(kaldi::nnet1::SelfAttention *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v2 = (v1 + 12);
  }

  else
  {
    v2 = (this + *(*(this - 1) - 40));
  }

  v3 = *v2;
  v4 = *(this + 7);
  if (v4)
  {
    v5 = (v4 + 12);
  }

  else
  {
    v5 = (this + *(*(this - 1) - 40));
  }

  return (*v5 + v3);
}

uint64_t kaldi::nnet1::SelfAttention::ResetHistoryState(void *a1, void *a2, uint64_t a3)
{
  (*(*a1 + 160))(a1);
  v6 = a2[1];
  v7 = a1[2];
  v7[4] = a3;
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v10, "ResetHistoryState for SelfAttention makes only sense if all utterances get reset at the same time");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v10);
      }
    }
  }

  v12 = 0u;
  v11 = 0u;
  v10 = &unk_1F2D0EE38;
  v13 = 0;
  kaldi::CuMatrix<float>::operator=(v7, &v10);
  return kaldi::CuMatrix<float>::~CuMatrix(&v10);
}

uint64_t kaldi::nnet1::SelfAttention::ResetHistoryState(kaldi::nnet1::SelfAttention *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v2 != v3)
  {
    v4 = v2 - 6;
    v5 = v2 - 6;
    v6 = v2 - 6;
    do
    {
      v7 = *v6;
      v6 -= 6;
      (*(v7 + 16))(v5);
      v4 -= 6;
      v8 = v5 == v3;
      v5 = v6;
    }

    while (!v8);
  }

  *(this + 3) = v3;
  v9 = *(*this + 160);

  return v9(this);
}

int *kaldi::nnet1::SelfAttention::GetHistoryState(uint64_t a1, int32x2_t *a2)
{
  kaldi::CuMatrix<float>::Resize(a2, *(*(a1 + 16) + 20), *(*(a1 + 16) + 16), 1, 0);
  v4 = *(a1 + 16);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v4, 111);
}

void kaldi::nnet1::SelfAttention::GetHistoryState(uint64_t a1, void *a2, int a3)
{
  kaldi::CuVector<float>::Resize(a2, *(*(a1 + 16) + 16), 1);
  v6 = *(a1 + 16);
  if (*(v6 + 20) >= 1)
  {
    v7 = *(v6 + 8) + 4 * *(v6 + 24) * a3;
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10[1] = v7;
    v10[0] = &unk_1F2CFCA48;
    v10[2] = v8;
    v10[3] = v9;
    kaldi::CuVectorBase<float>::CopyFromVec(a2, v10);
  }
}

int *kaldi::nnet1::SelfAttention::SetHistoryState(int32x2_t **a1, uint64_t a2)
{
  ((*a1)[20])(a1);
  kaldi::CuMatrix<float>::Resize(a1[2], *(a2 + 20), *(a2 + 16), 0, 0);
  v4 = a1[2];

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v4, a2, 111);
}

void kaldi::nnet1::SelfAttention::SetHistoryState(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a1 + 160))(a1);
  (*(*a1 + 88))(a1);
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  if (v6 < 1)
  {

    kaldi::CuMatrix<float>::Resize(v7, 0, 0, 0, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v7, *(a1 + 48), v6, 2, 0);
    v8 = *(a1 + 16);
    v9 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
    v10 = *(v8 + 16);
    v11 = *(v8 + 32);
    v12[1] = v9;
    v12[0] = &unk_1F2CFCA48;
    v12[2] = v10;
    v12[3] = v11;
    kaldi::CuVectorBase<float>::CopyFromVec(v12, a2);
  }
}

void kaldi::nnet1::AverageAttention::AverageAttention(kaldi::nnet1::AverageAttention *this, const kaldi::nnet1::AverageAttention *a2)
{
  v2 = a2 + *(*a2 - 40);
  *(this + 9) = &unk_1F2D15BB8;
  *(this + 10) = *(v2 + 1);
  *(this + 44) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 15) = &unk_1F2D17FD8;
  v3 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F2D2C670);
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = &unk_1F2D27A18;
  *(v3 + 12) = 1;
  v3[9] = &unk_1F2D2C580;
  v3[15] = &unk_1F2D2C650;
  *v3 = &unk_1F2D2C3B0;
  v3[1] = &unk_1F2D2C468;
  v3[7] = 0;
  v3[8] = 0;
  operator new();
}

void sub_1B57308A8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v7, 0x10B0C4082B712C9);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](v6, 0);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](v5, 0);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent(v4);
  quasar::Bitmap::~Bitmap(v1);
  quasar::Bitmap::~Bitmap(v3);
  quasar::Bitmap::~Bitmap(v1);
  kaldi::nnet1::Component::~Component(v2);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AverageAttention::PropagateFnc(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  v8 = *(a2 + 20);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v44, 3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "Running forward propagation for batch size = ", 45);
    v10 = MEMORY[0x1B8C84C00](v9, v8);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", which contains ", 17);
    v12 = MEMORY[0x1B8C84C00](v11, 1);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v14 = MEMORY[0x1B8C84C00](v13, v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v44);
  }

  (*(*a1 + 160))(a1);
  v15 = (a1[2] + 48 * a4);
  v16 = v15[2].i32[1];
  if (!v16)
  {
    v17 = (*(*a1 + 88))(a1);
    kaldi::CuMatrix<float>::Resize(v15, v8, v17, 0, 0);
    v16 = v15[2].i32[1];
  }

  v18 = v15[4];
  *&v42 = v15[1];
  DWORD2(v42) = 1;
  HIDWORD(v42) = v16;
  *&v43 = v15[3];
  *(&v43 + 1) = v18;
  v41 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::Add(&v41, 1.0);
  v19 = *v42;
  v20 = kaldi::nnet1::Nnet::InputDim(a1[7]);
  v21 = v15[3].i32[1] - 1;
  v22 = v15[4];
  v40[1] = *&v15[1] + 4;
  LODWORD(v40[2]) = v20;
  *(&v40[2] + 4) = *(v15 + 20);
  HIDWORD(v40[3]) = v21;
  v40[4] = v22;
  v40[0] = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::AddMat(v40, a2, 111, 1.0, 1.0);
  kaldi::CuMatrix<float>::CuMatrix(v44, v40, 111);
  kaldi::CuMatrixBase<float>::Scale(v44, 1.0 / v19);
  v38 = 0u;
  v37 = 0u;
  v36 = &unk_1F2D0EE38;
  v39 = 0;
  kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(a1[7], v44, &v36, a4);
  if (a1[8])
  {
    kaldi::CuMatrix<float>::CuMatrix(&v31, *(a2 + 20), (v45 + *(a2 + 16)), 0, 0, 0);
    DWORD2(v29[0]) = *(a2 + 16);
    *(v29 + 12) = v33;
    DWORD1(v29[1]) = v34;
    *(&v29[1] + 1) = v35;
    v28 = &unk_1F2CFA908;
    *&v29[0] = v32;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v28, a2, 111);
    v28 = &unk_1F2CFA908;
    memset(v29, 0, sizeof(v29));
    quasar::Bitmap::~Bitmap(&v28);
    v23 = *(a2 + 16);
    DWORD2(v29[0]) = v45;
    *(v29 + 12) = v33;
    DWORD1(v29[1]) = v34 - v23;
    *(&v29[1] + 1) = v35;
    v28 = &unk_1F2CFA908;
    *&v29[0] = v32 + 4 * v23;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v28, &v36, 111);
    v28 = &unk_1F2CFA908;
    memset(v29, 0, sizeof(v29));
    quasar::Bitmap::~Bitmap(&v28);
    memset(v29, 0, sizeof(v29));
    v28 = &unk_1F2D0EE38;
    v30 = 0;
    kaldi::nnet1::Nnet::Propagate<kaldi::CuSubMatrix<float>>(a1[8], &v31, &v28, 0);
    DWORD2(v27[0]) = *(a2 + 16);
    *(v27 + 12) = *(v29 + 12);
    DWORD1(v27[1]) = DWORD1(v29[1]);
    *(&v27[1] + 1) = *(&v29[1] + 1);
    v26 = &unk_1F2CFA908;
    *&v27[0] = *&v29[0];
    kaldi::CuMatrixBase<float>::MulElements(&v26, a2);
    v26 = &unk_1F2CFA908;
    memset(v27, 0, sizeof(v27));
    quasar::Bitmap::~Bitmap(&v26);
    v24 = *(a2 + 16);
    DWORD2(v27[0]) = v45;
    *(v27 + 12) = *(v29 + 12);
    DWORD1(v27[1]) = DWORD1(v29[1]) - v24;
    *(&v27[1] + 1) = *(&v29[1] + 1);
    v26 = &unk_1F2CFA908;
    *&v27[0] = *&v29[0] + 4 * v24;
    kaldi::CuMatrixBase<float>::MulElements(&v26, &v36);
    v26 = &unk_1F2CFA908;
    memset(v27, 0, sizeof(v27));
    quasar::Bitmap::~Bitmap(&v26);
    DWORD2(v27[0]) = *(a2 + 16);
    *(v27 + 12) = *(v29 + 12);
    DWORD1(v27[1]) = DWORD1(v29[1]);
    *(&v27[1] + 1) = *(&v29[1] + 1);
    v26 = &unk_1F2CFA908;
    *&v27[0] = *&v29[0];
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v26, 111);
    v26 = &unk_1F2CFA908;
    memset(v27, 0, sizeof(v27));
    quasar::Bitmap::~Bitmap(&v26);
    v25 = *(a2 + 16);
    DWORD2(v27[0]) = v45;
    *(v27 + 12) = *(v29 + 12);
    DWORD1(v27[1]) = DWORD1(v29[1]) - v25;
    *(&v27[1] + 1) = *(&v29[1] + 1);
    v26 = &unk_1F2CFA908;
    *&v27[0] = *&v29[0] + 4 * v25;
    kaldi::CuMatrixBase<float>::AddMat(a3, &v26, 111, 1.0, 1.0);
    v26 = &unk_1F2CFA908;
    memset(v27, 0, sizeof(v27));
    quasar::Bitmap::~Bitmap(&v26);
    kaldi::CuMatrix<float>::~CuMatrix(&v28);
    kaldi::CuMatrix<float>::~CuMatrix(&v31);
  }

  else
  {
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, &v36, 111);
  }

  kaldi::CuMatrix<float>::~CuMatrix(&v36);
  kaldi::CuMatrix<float>::~CuMatrix(v44);
  v40[0] = &unk_1F2CFA908;
  memset(&v40[1], 0, 32);
  quasar::Bitmap::~Bitmap(v40);
  v41 = &unk_1F2CFA908;
  v42 = 0u;
  v43 = 0u;
  quasar::Bitmap::~Bitmap(&v41);
}

void sub_1B5730F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  *(v42 + 8) = 0u;
  *(v42 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  kaldi::CuMatrix<float>::~CuMatrix(&a14);
  kaldi::CuMatrix<float>::~CuMatrix(&a20);
  kaldi::CuMatrix<float>::~CuMatrix(&a26);
  kaldi::CuMatrix<float>::~CuMatrix(&a42);
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a32);
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a37);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::AverageAttention::Info(kaldi::nnet1::Nnet **this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  kaldi::WriteToken(&v10, 0, "<AverageFfn>");
  kaldi::nnet1::Nnet::Info(&__p, this[7]);
  if ((v9 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v9 & 0x80u) == 0)
  {
    v3 = v9;
  }

  else
  {
    v3 = v8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, p_p, v3);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  if (this[8])
  {
    kaldi::WriteToken(&v10, 0, "<Gate>");
    kaldi::nnet1::Nnet::Info(&__p, this[8]);
    v4 = (v9 & 0x80u) == 0 ? &__p : __p;
    v5 = (v9 & 0x80u) == 0 ? v9 : v8;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  std::stringbuf::str();
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v14);
}

void sub_1B5731254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AverageAttention::ReadData(uint64_t a1, uint64_t *a2, char a3)
{
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading AverageAttention component", 34);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (kaldi::Peek(a2, a3) != 60)
  {
    goto LABEL_41;
  }

  kaldi::ReadToken(a2, a3, &v26);
  if (SHIBYTE(v28) < 0)
  {
    if (v27 != 6)
    {
      if (v27 == 12 && *v26 == 0x656761726576413CLL && *(v26 + 2) == 1047422534)
      {
        goto LABEL_12;
      }

LABEL_29:
      if (v27 != 19)
      {
        goto LABEL_59;
      }

      v12 = v26;
      goto LABEL_33;
    }

    v8 = v26;
LABEL_22:
    v9 = *v8;
    v10 = v8[2];
    if (v9 == 1952532284 && v10 == 15973)
    {
      operator new();
    }

    if ((v28 & 0x8000000000000000) == 0)
    {
LABEL_59:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unrecognized token ", 19);
      if (v28 >= 0)
      {
        v22 = &v26;
      }

      else
      {
        v22 = v26;
      }

      if (v28 >= 0)
      {
        v23 = HIBYTE(v28);
      }

      else
      {
        v23 = v27;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    goto LABEL_29;
  }

  if (HIBYTE(v28) == 6)
  {
    v8 = &v26;
    goto LABEL_22;
  }

  if (HIBYTE(v28) == 12)
  {
    if (v26 != 0x656761726576413CLL || v27 != 1047422534)
    {
      goto LABEL_59;
    }

LABEL_12:
    operator new();
  }

  if (HIBYTE(v28) != 19)
  {
    goto LABEL_59;
  }

  v12 = &v26;
LABEL_33:
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 11);
  if (v13 != 0x6761726576412F3CLL || v14 != 0x69746E6574744165 || v15 != 0x3E6E6F69746E6574)
  {
    goto LABEL_59;
  }

LABEL_41:
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__p, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "done", 4);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__p);
  }

  kaldi::nnet1::Nnet::GetHistoricalComponents(*(a1 + 56), &__p);
  v18 = __p;
  if (__p != v30)
  {
    v19 = 1;
    if (!__p)
    {
      goto LABEL_51;
    }

LABEL_50:
    v30 = v18;
    operator delete(v18);
    goto LABEL_51;
  }

  if (*(a1 + 64))
  {
    kaldi::nnet1::Nnet::GetHistoricalComponents(*(a1 + 64), &v24);
    v19 = v24 != v25;
    if (v24)
    {
      v25 = v24;
      operator delete(v24);
    }

    v18 = __p;
    if (__p)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v19 = 0;
    if (__p)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  if (v19)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Recurrent neural networks are not supported inside the average attention component.", 83);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

  kaldi::nnet1::Nnet::OutputDim(*(a1 + 56));
  v20 = *(a1 + 64);
  if (v20)
  {
    kaldi::nnet1::Nnet::InputDim(v20);
    kaldi::nnet1::Nnet::InputDim(*(a1 + 56));
    kaldi::nnet1::Nnet::OutputDim(*(a1 + 64));
    kaldi::nnet1::Nnet::OutputDim(*(a1 + 56));
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }
}

void sub_1B5731910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::AverageAttention::WriteData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  kaldi::WriteToken(a2, a3, "<AverageFfn>");
  kaldi::nnet1::Nnet::Write(*(a1 + 56), a2, a3, a4);
  if (*(a1 + 64))
  {
    kaldi::WriteToken(a2, a3, "<Gate>");
    kaldi::nnet1::Nnet::Write(*(a1 + 64), a2, a3, a4);
  }

  return kaldi::WriteToken(a2, a3, "</AverageAttention>");
}

uint64_t kaldi::nnet1::AverageAttention::ResetHistoryState(void *a1, void *a2, uint64_t a3)
{
  (*(*a1 + 160))(a1);
  v6 = a2[1];
  v7 = a1[2];
  v7[4] = a3;
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v10);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(&v10, "ResetHistoryState for AverageAttention makes only sense if all utterances get reset at the same time");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v10);
      }
    }
  }

  v12 = 0u;
  v11 = 0u;
  v10 = &unk_1F2D0EE38;
  v13 = 0;
  kaldi::CuMatrix<float>::operator=(v7, &v10);
  return kaldi::CuMatrix<float>::~CuMatrix(&v10);
}

uint64_t kaldi::nnet1::AverageAttention::ResetHistoryState(kaldi::nnet1::AverageAttention *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v2 != v3)
  {
    v4 = v2 - 6;
    v5 = v2 - 6;
    v6 = v2 - 6;
    do
    {
      v7 = *v6;
      v6 -= 6;
      (*(v7 + 16))(v5);
      v4 -= 6;
      v8 = v5 == v3;
      v5 = v6;
    }

    while (!v8);
  }

  *(this + 3) = v3;
  v9 = *(*this + 160);

  return v9(this);
}

int *kaldi::nnet1::AverageAttention::GetHistoryState(uint64_t a1, int32x2_t *a2)
{
  kaldi::CuMatrix<float>::Resize(a2, *(*(a1 + 16) + 20), *(*(a1 + 16) + 16), 0, 0);
  v4 = *(a1 + 16);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v4, 111);
}

void kaldi::nnet1::AverageAttention::GetHistoryState(void *a1, void *a2, int a3)
{
  v6 = (*(*a1 + 88))(a1);
  kaldi::CuVector<float>::Resize(a2, v6, 0);
  v7 = a1[2];
  if (*(v7 + 20) >= 1)
  {
    v8 = *(v7 + 8) + 4 * *(v7 + 24) * a3;
    v9 = *(v7 + 16);
    v10 = *(v7 + 32);
    v11[1] = v8;
    v11[0] = &unk_1F2CFCA48;
    v11[2] = v9;
    v11[3] = v10;
    kaldi::CuVectorBase<float>::CopyFromVec(a2, v11);
  }
}

int *kaldi::nnet1::AverageAttention::SetHistoryState(int32x2_t **a1, uint64_t a2)
{
  ((*a1)[20])(a1);
  kaldi::CuMatrix<float>::Resize(a1[2], *(a2 + 20), *(a2 + 16), 0, 0);
  v4 = a1[2];

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v4, a2, 111);
}

void kaldi::nnet1::AverageAttention::SetHistoryState(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a1 + 160))(a1);
  (*(*a1 + 88))(a1);
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  if (v6 < 1)
  {

    kaldi::CuMatrix<float>::Resize(v7, 0, 0, 0, 0);
  }

  else
  {
    kaldi::CuMatrix<float>::Resize(v7, *(a1 + 48), v6, 2, 0);
    v8 = *(a1 + 16);
    v9 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
    v10 = *(v8 + 16);
    v11 = *(v8 + 32);
    v12[1] = v9;
    v12[0] = &unk_1F2CFCA48;
    v12[2] = v10;
    v12[3] = v11;
    kaldi::CuVectorBase<float>::CopyFromVec(v12, a2);
  }
}

void kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this)
{
  quasar::Bitmap::~Bitmap((v2 + 192));
  quasar::Bitmap::~Bitmap(this);
  kaldi::nnet1::Component::~Component((this + 144));
}

{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(this);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((this + *(*this - 24)));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(void *a1)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention((a1 + *(*a1 - 24)));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this)
{
  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(this, &off_1F2D2BD20);
  quasar::Bitmap::~Bitmap((v2 + 200));
  quasar::Bitmap::~Bitmap(this);
  kaldi::nnet1::Component::~Component((this + 152));
}

{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(this);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this)
{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((this + *(*this - 24)));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::MultiHeadAttention::~MultiHeadAttention(void *a1)
{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::MultiHeadAttention::~MultiHeadAttention((a1 + *(*a1 - 24)));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this)
{
  quasar::Bitmap::~Bitmap((v2 + 248));
  quasar::Bitmap::~Bitmap(this);
  kaldi::nnet1::Component::~Component((this + 200));
}

{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(this);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this)
{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((this + *(*this - 24)));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(void *a1)
{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention((a1 + *(*a1 - 24)));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this)
{
  quasar::Bitmap::~Bitmap((v2 + 128));
  quasar::Bitmap::~Bitmap(this);
  kaldi::nnet1::Component::~Component((this + 80));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention(this);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this)
{
  kaldi::nnet1::SelfAttention::~SelfAttention((this - 8));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention((this - 8));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this)
{
  kaldi::nnet1::SelfAttention::~SelfAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention((this + *(*this - 24)));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::SelfAttention::~SelfAttention(void *a1)
{
  kaldi::nnet1::SelfAttention::~SelfAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::SelfAttention::~SelfAttention((a1 + *(*a1 - 24)));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this)
{
  quasar::Bitmap::~Bitmap((v2 + 120));
  quasar::Bitmap::~Bitmap(this);
  kaldi::nnet1::Component::~Component((this + 72));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention(this);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this)
{
  kaldi::nnet1::AverageAttention::~AverageAttention((this - 8));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention((this - 8));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this)
{
  kaldi::nnet1::AverageAttention::~AverageAttention((this + *(*this - 24)));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention((this + *(*this - 24)));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::AverageAttention::~AverageAttention(void *a1)
{
  kaldi::nnet1::AverageAttention::~AverageAttention((a1 + *(*a1 - 24)));
}

{
  kaldi::nnet1::AverageAttention::~AverageAttention((a1 + *(*a1 - 24)));

  JUMPOUT(0x1B8C85350);
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, uint64_t *a2, int a3, BOOL a4, float a5, char a6)
{
  v9 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, a2 + 1);
  v10 = *a2;
  *v9 = *a2;
  *(v9 + *(v10 - 40)) = a2[5];
  *(v9 + *(*v9 - 48)) = a2[6];
  *(v9 + *(*v9 - 56)) = a2[7];
  result = 0.0;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v9[1] = &unk_1F2D0EE38;
  *(v9 + 48) = 0;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  v9[7] = &unk_1F2D0EE38;
  *(v9 + 96) = 0;
  *(v9 + 104) = a6;
  *(v9 + 27) = a5;
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  return result;
}

void kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[5];
  *(this + *(*this - 48)) = a2[6];
  *(this + *(*this - 56)) = a2[7];
  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 15);
  *(this + 15) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 14);
  *(this + 14) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 56);
  kaldi::CuMatrix<float>::~CuMatrix(this + 8);

  quasar::Bitmap::~Bitmap(this);
}

void kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, uint64_t *a2, int a3, BOOL a4, float a5, int a6, int a7)
{
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, a2 + 1, a3, a4, a5, a6 != 0);
  v9 = *a2;
  *v10 = *a2;
  *(v10 + *(v9 - 40)) = a2[9];
  *(v10 + *(*v10 - 48)) = a2[10];
  *(v10 + *(*v10 - 56)) = a2[11];
  *(v10 + 144) = a7;
}

void kaldi::nnet1::SupervisedMultiHeadAttention::~SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = a2[13];
  *(this + *(*this - 48)) = a2[14];
  *(this + *(*this - 56)) = a2[15];
  kaldi::CuMatrix<float>::~CuMatrix(this + 152);

  kaldi::nnet1::ScaledDotAttention::~ScaledDotAttention(this, a2 + 2);
}

void kaldi::nnet1::SelfAttention::~SelfAttention(kaldi::nnet1::SelfAttention *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[5];
  *(this + *(*this - 48)) = a2[6];
  *(this + *(*this - 56)) = a2[7];
  *(this + 1) = &unk_1F2D2C138;
  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  kaldi::nnet1::HistoricalComponent::~HistoricalComponent((this + 8));

  quasar::Bitmap::~Bitmap(this);
}

void kaldi::nnet1::AverageAttention::~AverageAttention(kaldi::nnet1::AverageAttention *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[5];
  *(this + *(*this - 48)) = a2[6];
  *(this + *(*this - 56)) = a2[7];
  *(this + 1) = &unk_1F2D2C468;
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 8, 0);
  std::unique_ptr<kaldi::nnet1::Nnet>::reset[abi:ne200100](this + 7, 0);
  kaldi::nnet1::HistoricalComponent::~HistoricalComponent((this + 8));

  quasar::Bitmap::~Bitmap(this);
}

uint64_t ResidualAdaptiveNgram::computeEta2<unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    Array<unsigned int>::alloc();
  }

  return 0;
}

void sub_1B5733758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  std::locale::~locale((v3 - 160));
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(va);
  if (v18)
  {
    MEMORY[0x1B8C85310](v18, 0x1000C8052888210);
  }

  TrieIter2<unsigned int,unsigned int>::~TrieIter2(va1);
  v5 = *(v3 - 176);
  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

uint64_t ResidualAdaptiveNgram::residualAdapt2<unsigned long>(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a1[3];
  v9 = (*(*v8 + 88))(v8);
  if ((*(*v8 + 176))(v8, *v9))
  {
    return 0;
  }

  v26 = 0;
  v27 = a4;
  v28 = 0;
  v29 = 0;
  if (a4)
  {
    Array<unsigned int>::alloc();
  }

  if (*(a3 + 8) == 0.0)
  {
    goto LABEL_27;
  }

  TrieIter2<unsigned int,unsigned long>::TrieIter2(v25, a2 + 160, v28 - 4 * v26, 0, 0);
  v11 = 0;
  while (TrieIter2<unsigned int,unsigned long>::next(v25))
  {
    LOBYTE(v30) = 0;
    inserted = Trie<unsigned int,unsigned long>::insertTrie((a2 + 160), (v28 - 4 * v26), &v30);
    TrieIter2<unsigned int,unsigned long>::TrieIter2(v24, inserted, &v31, 1, 0);
    while (1)
    {
      v13 = TrieIter2<unsigned int,unsigned long>::next(v24);
      if (!v13)
      {
        break;
      }

      if (!(*(*a1[3] + 176))(a1[3], v31))
      {
        v14 = *(v13 + 8);
        if (v14)
        {
          v11 += v14;
        }
      }
    }

    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v24);
  }

  if (v11)
  {
    TrieIter2<unsigned int,BOnode>::TrieIter2(v24, a1 + 19, v28 - 4 * v26, 0, 0);
    while (1)
    {
      v15 = TrieIter2<unsigned int,BOnode>::next(v24);
      if (!v15)
      {
        break;
      }

      LHashIter<unsigned int,float>::LHashIter(&v31, v15 + 16, 0);
      v30 = 0;
      while (1)
      {
        v16 = LHashIter<unsigned int,float>::next(&v31, &v30);
        if (!v16)
        {
          break;
        }

        if (!(*(*a1[3] + 176))(a1[3], v30))
        {
          Count = NgramCounts<unsigned long>::findCount(a2, (v28 - 4 * v26), v30);
          v18 = 0.0;
          v19 = 0.0;
          if (*v16 != -INFINITY)
          {
            v19 = exp(*v16 * 2.30258509);
          }

          v20 = *(a3 + 8);
          if (Count)
          {
            v18 = *Count;
          }

          v21 = log10(v19 + v20 * v18 / v11);
          v22 = log10(v20 + 1.0);
          *v16 = v21 - v22;
        }
      }

      LHashIter<unsigned int,double>::~LHashIter(&v31);
    }

    (*(*a1 + 512))(a1, 0);
    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v24);
    TrieIter2<unsigned int,unsigned int>::~TrieIter2(v25);
LABEL_27:
    v10 = 1;
    goto LABEL_29;
  }

  TrieIter2<unsigned int,unsigned int>::~TrieIter2(v25);
  v10 = 0;
LABEL_29:
  if (v28)
  {
    MEMORY[0x1B8C85310](v28, 0x1000C8052888210);
  }

  return v10;
}

void sub_1B573418C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(&a12);
  TrieIter2<unsigned int,unsigned int>::~TrieIter2(&a22);
  if (a33)
  {
    MEMORY[0x1B8C85310](a33, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

void ResidualAdaptiveNgram::~ResidualAdaptiveNgram(ResidualAdaptiveNgram *this)
{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);

  LM::~LM(this);
}

{
  *this = &unk_1F2D0A578;
  Trie<unsigned int,BOnode>::~Trie(this + 152);
  LM::~LM(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::PMBuilder::PMBuilder(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFst();
}

void sub_1B57345F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(v19 + 144);
  fst::SymbolTable::~SymbolTable((v19 + 128));
  fst::SymbolTable::~SymbolTable((v19 + 112));
  fst::SymbolTable::~SymbolTable((v19 + 96));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v19 + 80));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v20 + 24));
  a19 = v20;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v19 + 24));
  a19 = v19;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void quasar::PMBuilder::loadSystemConfig(quasar::PMBuilder *this, quasar::SystemConfig *a2)
{
  __p[73] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "phonetic-match-building");
  quasar::SystemConfig::getPtreeOptional(a2, __p);
}

void sub_1B57351DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void quasar::PMBuilder::readTokenListFromLexicon(uint64_t a1@<X1>, void *a2@<X8>)
{
  v39[19] = *MEMORY[0x1E69E9840];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  memset(&__p, 0, sizeof(__p));
  std::ifstream::basic_ifstream(v37);
  v4 = v37[0];
  if (*&v38[*(v37[0] - 24) + 16])
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
    *&v19[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Error opening ", 14);
    v15 = *(a1 + 23);
    if (v15 >= 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = *a1;
    }

    if (v15 >= 0)
    {
      v17 = *(a1 + 23);
    }

    else
    {
      v17 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v19);
  }

  v5 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v37 + *(v4 - 24)));
    v6 = std::locale::use_facet(v19, v5);
    v7 = (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(v19);
    v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v37, &__p, v7);
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
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
      std::string::basic_string[abi:ne200100]<0>(v19, "\t");
      quasar::splitAndTrimNoEmpty(&__p, v19, v18);
      if (SBYTE7(v20) < 0)
      {
        operator delete(v19[0].__locale_);
      }

      if ((v18[1] - v18[0]) == 48)
      {
        std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a2, v18[0]);
      }

      else if (quasar::gLogLevel >= 5)
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
        *&v19[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Invalid line in lexicon: '", 26);
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
          v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v12 = __p.__r_.__value_.__l.__size_;
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, p_p, v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "'", 1);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v19);
      }

      v19[0].__locale_ = v18;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v19);
    }

    v4 = v37[0];
  }

  v37[0] = *MEMORY[0x1E69E54C8];
  *(v37 + *(v37[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v38);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B57355B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, char a56)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5735868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(v19 + 144);
  fst::SymbolTable::~SymbolTable((v19 + 128));
  fst::SymbolTable::~SymbolTable((v19 + 112));
  fst::SymbolTable::~SymbolTable((v19 + 96));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v19 + 80));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v20 + 24));
  a19 = v20;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst((v19 + 24));
  a19 = v19;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void quasar::PMBuilder::writeLGFst(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v6 = 16777217;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = __p;
    v6 = 16777217;
  }

  quasar::ModelLoader::writeFst(a1 + 64, a1 + 384, &v5, a2);
}

void sub_1B5735AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PMBuilder::writeAlignedLFst(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v6 = 16777217;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v5 = __p;
    v6 = 16777217;
  }

  quasar::ModelLoader::writeFst(a1 + 80, a1 + 384, &v5, a2);
}

void sub_1B5735BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::PMBuilder::writeSymsQuasarMap(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v25, "QSR_SYM_V000");
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v2 = (*(*a1 + 120))(a1);
  v3 = (*(*a1 + 128))(a1, 0);
  if (v2)
  {
    v4 = v3;
    v5 = 1;
    v6 = v2;
    do
    {
      (*(*a1 + 88))(__p, a1, v4);
      std::vector<std::string>::push_back[abi:ne200100](&v22, __p);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      std::vector<int>::push_back[abi:ne200100](&v19, &v18);
      (*(*a1 + 88))(__p, a1, v4);
      if (v17 < 0)
      {
        v18 += LODWORD(__p[1]) + 1;
        operator delete(__p[0]);
      }

      else
      {
        v18 += v17 + 1;
      }

      if (v5 < v2)
      {
        v4 = (*(*a1 + 128))(a1, v5);
      }

      ++v5;
      --v6;
    }

    while (v6);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3);
  v8 = vcvtd_n_s64_f64(ceil(vcvtd_n_f64_u64(v7, 2uLL)), 2uLL);
  LODWORD(__p[0]) = v8;
  std::ostream::write();
  std::ostream::write();
  v9 = v19;
  v10 = v20;
  while (v9 != v10)
  {
    std::ostream::write();
    v9 += 4;
  }

  v11 = v8 - v7;
  v15 = v18;
  if (v11 >= 1)
  {
    do
    {
      std::ostream::write();
      ++v15;
    }

    while (v15 < v11 + v18);
  }

  v12 = v22;
  for (i = v23; v12 != i; v12 += 24)
  {
    std::ostream::write();
    std::ostream::write();
  }

  if (SLODWORD(__p[0]) >= 1)
  {
    v14 = 0;
    do
    {
      std::ostream::write();
      ++v14;
    }

    while (v14 < SLODWORD(__p[0]));
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  v19 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (v26 < 0)
  {
    operator delete(v25);
  }
}

void sub_1B5735F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char *__p, char *a18, uint64_t a19, char a20)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  __p = &a20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v20 - 49) < 0)
  {
    operator delete(*(v20 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1B5736420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree(&a24);
  quasar::PTree::~PTree(&a32);
  quasar::PTree::~PTree(&a40);
  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  quasar::SystemConfig::~SystemConfig(&a67);
  _Unwind_Resume(a1);
}

void sub_1B5736534(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  JUMPOUT(0x1B57364FCLL);
}

void sub_1B5736598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    JUMPOUT(0x1B5736508);
  }

  JUMPOUT(0x1B573650CLL);
}

void sub_1B57365AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    JUMPOUT(0x1B5736518);
  }

  JUMPOUT(0x1B573651CLL);
}

uint64_t quasar::PMBuilder::getOsyms@<X0>(uint64_t this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v5, "^//", 0);
  }

  v4 = *(this + 104);
  *a3 = &unk_1F2D06B30;
  a3[1] = v4;
  ++*(v4 + 168);
  return this;
}

uint64_t quasar::PMBuilder::reset(quasar::PMBuilder *this)
{
  v3 = *this;
  v2 = *(this + 1);
  v4 = *this;
  if (v2 != *this)
  {
    v5 = v2 - 16;
    v6 = (v2 - 16);
    v7 = (v2 - 16);
    do
    {
      v8 = *v7;
      v7 -= 2;
      (*v8)(v6);
      v5 -= 16;
      v9 = v6 == v3;
      v6 = v7;
    }

    while (!v9);
    v4 = *this;
  }

  *&v19 = v4;
  *(&v19 + 1) = v3;
  *this = 0;
  *(this + 1) = 0;
  v10 = *(this + 2);
  *(this + 2) = 0;
  v20 = v10;
  v21 = &v19;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v12 = *(this + 5);
  v11 = *(this + 6);
  v13 = v12;
  if (v11 != v12)
  {
    v14 = v11 - 2;
    v15 = v11 - 2;
    v16 = v11 - 2;
    do
    {
      v17 = *v16;
      v16 -= 2;
      (*v17)(v15);
      v14 -= 2;
      v9 = v15 == v12;
      v15 = v16;
    }

    while (!v9);
    v13 = *(this + 5);
  }

  *&v19 = v13;
  *(&v19 + 1) = v12;
  *(this + 40) = 0u;
  v20 = *(this + 7);
  v21 = &v19;
  *(this + 7) = 0;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&v21);
  std::vector<quasar::DataFeed>::clear[abi:ne200100](this + 23);
  v19 = *(this + 184);
  *(this + 184) = 0u;
  v20 = *(this + 25);
  v21 = &v19;
  *(this + 25) = 0;
  std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](&v21);
  quasar::RegexRules::clear(this + 40);
  return quasar::SpokenForm::clear((this + 144));
}

void std::vector<quasar::DataFeed>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 72;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(v4 + 24);
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v6 = (v4 - 40);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      if (*(v4 - 41) < 0)
      {
        operator delete(*(v4 - 64));
      }

      v5 = v4 - 88;
      v6 = (v4 - 88);
      std::vector<quasar::DataFeedItem>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 -= 160;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

uint64_t quasar::PMBuilder::buildGFsts(quasar::PMBuilder *this)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 424) == 1)
  {
    v3 = *this;
    v2 = *(this + 1);
    if (v2 != *this)
    {
      v4 = v2 - 16;
      v5 = (v2 - 16);
      v6 = (v2 - 16);
      do
      {
        v7 = *v6;
        v6 -= 2;
        (*v7)(v5);
        v4 -= 16;
        v8 = v5 == v3;
        v5 = v6;
      }

      while (!v8);
    }

    *(this + 1) = v3;
    memset(v36, 0, sizeof(v36));
    std::vector<quasar::DataFeed>::__init_with_size[abi:ne200100]<quasar::DataFeed*,quasar::DataFeed*>(v36, *(this + 23), *(this + 24), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 24) - *(this + 23)) >> 5));
    quasar::DataFeedFactory::mergeDataFeedsByName(v36, v37);
    *&__p = v36;
    std::vector<quasar::DataFeed>::__destroy_vector::operator()[abi:ne200100](&__p);
    memset(v35, 0, sizeof(v35));
    v9 = *(this + 43);
    v10 = *(this + 44);
    if (v9 != v10)
    {
      do
      {
        std::operator+<char>();
        std::vector<std::string>::push_back[abi:ne200100](v35, &__p);
        if (SBYTE7(v19) < 0)
        {
          operator delete(__p);
        }

        v9 += 24;
      }

      while (v9 != v10);
      v9 = *(this + 43);
      v10 = *(this + 44);
    }

    for (; v9 != v10; v9 += 24)
    {
      v11 = *(v9 + 23);
      if (v11 < 0)
      {
        if (*(v9 + 8) != 4)
        {
          continue;
        }

        v12 = *v9;
      }

      else
      {
        v12 = v9;
        if (v11 != 4)
        {
          continue;
        }
      }

      if (*v12 == 1953460082)
      {
        if (v9 != v10)
        {
          std::unordered_map<std::string,quasar::SpokenFormSection>::unordered_map(v17, this + 144);
          v14 = *(this + 47);
          v15[0] = *(this + 46);
          v15[1] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          }

          quasar::GrammarFST::GrammarFST(&v16, v15, v35, this + 320, this + 256, this + 33, this + 69);
        }

        break;
      }
    }

    if (quasar::gLogLevel >= 1)
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
      v19 = 0u;
      v20 = 0u;
      __p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "[root] grammar is not present.", 30);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__p);
    }

    *&__p = v35;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
    std::__hash_table<std::__hash_value_type<std::string,quasar::DataFeed>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::DataFeed>>>::~__hash_table(v37);
  }

  return 0;
}

void sub_1B5737074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  quasar::GrammarFST::~GrammarFST(&a30);
  std::__hash_table<std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::SpokenFormSection>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::SpokenFormSection>>>::~__hash_table(&a50);
  a30 = v60 - 232;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__hash_table<std::__hash_value_type<std::string,quasar::DataFeed>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::DataFeed>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::DataFeed>>>::~__hash_table(v60 - 184);
  _Unwind_Resume(a1);
}

uint64_t quasar::PMBuilder::initializeOSyms(uint64_t this)
{
  if (*(this + 424) == 1)
  {
    std::unordered_map<std::string,quasar::SpokenFormSection>::unordered_map(v6, this + 144);
    memset(v5, 0, sizeof(v5));
    memset(v4, 0, sizeof(v4));
    v1 = v7;
    if (!v7)
    {
LABEL_26:
      fst::SymbolTable::SymbolTable(&__p);
    }

    while (1)
    {
      if (*(v1 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v1[5], v1[6]);
      }

      else
      {
        __p = *(v1 + 5);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        if (__p.__r_.__value_.__l.__size_ != 4)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_14:
          if (quasar::SpokenFormSection::containsSubgrammar((v1 + 5)))
          {
            if (*(v1 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v1[5], v1[6]);
            }

            else
            {
              __p = *(v1 + 5);
            }

            std::vector<std::string>::push_back[abi:ne200100](v5, &__p);
          }

          else
          {
            if (*(v1 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v1[5], v1[6]);
            }

            else
            {
              __p = *(v1 + 5);
            }

            std::vector<std::string>::push_back[abi:ne200100](v4, &__p);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_25;
        }

        v2 = *__p.__r_.__value_.__l.__data_;
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v2 != 1953460082)
        {
          goto LABEL_14;
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 4 || LODWORD(__p.__r_.__value_.__l.__data_) != 1953460082)
      {
        goto LABEL_14;
      }

LABEL_25:
      v1 = *v1;
      if (!v1)
      {
        goto LABEL_26;
      }
    }
  }

  return this;
}