uint64_t kaldi::WriteBasicType<long long>(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    std::ostream::put();
    result = std::ostream::write();
  }

  else
  {
    v5 = MEMORY[0x1B8C84C60](a1, a3);
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

uint64_t quasar::LmeData::fromStream(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 268) = 1;
  QuasarHeader = quasar::ioutils::ReadQuasarHeader(a2, 1);
  *(a1 + 8) = QuasarHeader;
  if (quasar::gLogLevel >= 5)
  {
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
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "formatVersion=", 14);
    MEMORY[0x1B8C84C00](v9, *(a1 + 8));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v12);
    QuasarHeader = *(a1 + 8);
  }

  if ((QuasarHeader - 20) > 0xFFFFFFF8)
  {
    if (QuasarHeader == 14)
    {
      quasar::tokenMapFromStream(a2, &v12);
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v12, *(&v12 + 1));
      QuasarHeader = *(a1 + 8);
    }

    result = quasar::LmeData::readBodyFromStream(a1, QuasarHeader, a2, a3, a4);
  }

  else
  {
    if (quasar::gLogLevel >= 4)
    {
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
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v12);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "Failed to read LmeData stream. Incorrect version: ", 50);
      MEMORY[0x1B8C84C00](v10, *(a1 + 8));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v12);
    }

    result = 4;
  }

  *(a1 + 268) = result;
  return result;
}

void sub_1B55CC8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25)
{
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(exception_object);
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
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a9, "Error reading LmeData stream: ", 30);
      v29 = (*(*v27 + 16))(v27);
      v30 = strlen(v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
    }

    *(v25 + 268) = 6;
    __cxa_end_catch();
    JUMPOUT(0x1B55CC8D0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LmeData::readBodyFromStream(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v104 = *MEMORY[0x1E69E9840];
  if (quasar::gLogLevel >= 6)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP [Body]", 22);
    quasar::QuasarTraceMessage::~QuasarTraceMessage(v84);
  }

  kaldi::ReadBasicType<int>(a3, 1, a1 + 264);
  if (quasar::gLogLevel >= 5)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v10 = MEMORY[0x1B8C84C60](v9, v103);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": g2pModelVersion = ", 20);
    MEMORY[0x1B8C84C00](v11, *(a1 + 264));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
  }

  kaldi::ReadBasicType<long long>(a3, 1, a1 + 160);
  if (quasar::gLogLevel >= 5)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v13 = MEMORY[0x1B8C84C60](v12, v103);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ": symTableFirstKey = ", 21);
    MEMORY[0x1B8C84C60](v14, *(a1 + 160));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
  }

  kaldi::ReadBasicType<long long>(a3, 1, a1 + 168);
  if (quasar::gLogLevel >= 5)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v16 = MEMORY[0x1B8C84C60](v15, v103);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": symTableLastKey = ", 20);
    MEMORY[0x1B8C84C60](v17, *(a1 + 168));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
  }

  v81 = 0;
  kaldi::ReadBasicType<unsigned int>(a3, 1, &v81);
  if (quasar::gLogLevel >= 5)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v19 = MEMORY[0x1B8C84C60](v18, v103);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ": fstSize = ", 12);
    MEMORY[0x1B8C84C10](v20, v81);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
  }

  kaldi::ReadToken(a3, 1, a1 + 176);
  if (quasar::gLogLevel >= 5)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
    std::istream::tellg();
    v22 = MEMORY[0x1B8C84C60](v21, v103);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ": phoneSetVersion = ", 20);
    v24 = *(a1 + 199);
    if (v24 >= 0)
    {
      v25 = a1 + 176;
    }

    else
    {
      v25 = *(a1 + 176);
    }

    if (v24 >= 0)
    {
      v26 = *(a1 + 199);
    }

    else
    {
      v26 = *(a1 + 184);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
  }

  if (a2 <= 14)
  {
    goto LABEL_95;
  }

  kaldi::ReadString(a3, 1, a1 + 272);
  kaldi::ReadString(a3, 1, a1 + 296);
  v27 = *(a5 + 23);
  if (v27 >= 0)
  {
    v28 = *(a5 + 23);
  }

  else
  {
    v28 = *(a5 + 8);
  }

  if (!v28)
  {
    goto LABEL_51;
  }

  v29 = *(a1 + 319);
  v30 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a1 + 304);
  }

  if (v28 == v29)
  {
    v31 = v27 >= 0 ? a5 : *a5;
    v32 = v30 >= 0 ? (a1 + 296) : *(a1 + 296);
    if (!memcmp(v31, v32, v28))
    {
LABEL_51:
      kaldi::ReadString(a3, 1, a1 + 320);
      v79 = 0;
      v80 = 0;
      v78 = &v79;
      v83 = 0;
      kaldi::ReadBasicType<int>(a3, 1, &v83);
      if (quasar::gLogLevel >= 5)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v85 = 0u;
        memset(v84, 0, sizeof(v84));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
        std::istream::tellg();
        v43 = MEMORY[0x1B8C84C60](v42, v103);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ": nMapSize = ", 13);
        MEMORY[0x1B8C84C00](v44, v83);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
      }

      if (v83 >= 1)
      {
        for (i = 0; i < v83; ++i)
        {
          __p[0] = 0;
          __p[1] = 0;
          v101 = 0;
          v82 = 0;
          kaldi::ReadToken(a3, 1, __p);
          kaldi::ReadBasicType<long long>(a3, 1, &v82);
          if (quasar::gLogLevel >= 5)
          {
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v85 = 0u;
            memset(v84, 0, sizeof(v84));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
            v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
            std::istream::tellg();
            v47 = MEMORY[0x1B8C84C60](v46, v103);
            v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ": key = ", 8);
            if (v101 >= 0)
            {
              v49 = __p;
            }

            else
            {
              v49 = __p[0];
            }

            if (v101 >= 0)
            {
              v50 = HIBYTE(v101);
            }

            else
            {
              v50 = __p[1];
            }

            v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v49, v50);
            v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " value = ", 9);
            MEMORY[0x1B8C84C60](v52, v82);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
          }

          if (SHIBYTE(v101) < 0)
          {
            std::string::__init_copy_ctor_external(v84, __p[0], __p[1]);
          }

          else
          {
            *v84 = *__p;
            *&v84[16] = v101;
          }

          *&v84[24] = v82;
          std::__tree<std::__value_type<std::string,quasar::PronGuessStats::Record>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PronGuessStats::Record>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PronGuessStats::Record>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::PronGuessStats::Record>>(&v78, v84);
          if ((v84[23] & 0x80000000) != 0)
          {
            operator delete(*v84);
          }

          if (SHIBYTE(v101) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v53 = a1 + 352;
      std::__tree<std::string>::destroy(a1 + 344, *(a1 + 352));
      v54 = v79;
      *(a1 + 344) = v78;
      *(a1 + 352) = v54;
      v55 = v80;
      *(a1 + 360) = v80;
      if (v55)
      {
        *(v54 + 16) = v53;
        v78 = &v79;
        v79 = 0;
        v80 = 0;
        v54 = 0;
      }

      else
      {
        *(a1 + 344) = v53;
      }

      std::__tree<std::string>::destroy(&v78, v54);
      if (a2 == 15 || (kaldi::ReadBasicType<BOOL>(a3, 1, (a1 + 392)), a2 < 0x11))
      {
LABEL_99:
        quasar::EnumerationTypes::fromStream(a1 + 240, a3);
        if (quasar::gLogLevel >= 6)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
          memset(v84, 0, sizeof(v84));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP [Body]", 22);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(v84);
        }

        std::istream::tellg();
        if (quasar::gLogLevel >= 5)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
          memset(v84, 0, sizeof(v84));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
          std::istream::tellg();
          v69 = MEMORY[0x1B8C84C60](v68, v102);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, ": About to read FSTs", 20);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
        }

        v71 = *(a1 + 208);
        v70 = (a1 + 208);
        std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy((v70 - 1), v71);
        *v70 = 0;
        v70[1] = 0;
        *(v70 - 1) = v70;
        if (v81)
        {
          v78 = 0;
          v79 = 0;
          v80 = 0;
          kaldi::ReadToken(a3, 1, &v78);
          if (quasar::gLogLevel >= 6)
          {
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v85 = 0u;
            memset(v84, 0, sizeof(v84));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
            v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
            std::istream::tellg();
            v73 = MEMORY[0x1B8C84C60](v72, v102);
            v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ": templateName = ", 17);
            if (v80 >= 0)
            {
              v75 = &v78;
            }

            else
            {
              v75 = v78;
            }

            if (v80 >= 0)
            {
              v76 = HIBYTE(v80);
            }

            else
            {
              v76 = v79;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(v84);
          }

          __p[0] = &v78;
          std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v70 - 1), &v78);
          std::string::basic_string[abi:ne200100]<0>(__p, "");
          fst::FstReadOptions::FstReadOptions(v84, __p, 0, 0, 0);
          fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Read();
        }

        std::string::basic_string[abi:ne200100]<0>(v84, "lme");
        v77 = fst::SymbolTable::Read(a3, v84);
        std::shared_ptr<fst::SymbolTable>::shared_ptr[abi:ne200100]<fst::SymbolTable,0>(&v78, v77);
      }

      v79 = 0;
      v80 = 0;
      v78 = &v79;
      LODWORD(v82) = 0;
      kaldi::ReadBasicType<int>(a3, 1, &v82);
      if (quasar::gLogLevel >= 5)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v85 = 0u;
        memset(v84, 0, sizeof(v84));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
        std::istream::tellg();
        v57 = MEMORY[0x1B8C84C60](v56, v103);
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ": nSetSize = ", 13);
        MEMORY[0x1B8C84C00](v58, v82);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
      }

      if (v82 >= 1)
      {
        v59 = 0;
        do
        {
          __p[0] = 0;
          __p[1] = 0;
          v101 = 0;
          kaldi::ReadString(a3, 1, __p);
          if (quasar::gLogLevel >= 5)
          {
            v98 = 0u;
            v99 = 0u;
            v96 = 0u;
            v97 = 0u;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v85 = 0u;
            memset(v84, 0, sizeof(v84));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
            v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP ", 16);
            std::istream::tellg();
            v61 = MEMORY[0x1B8C84C60](v60, v103);
            v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ": str = ", 8);
            if (v101 >= 0)
            {
              v63 = __p;
            }

            else
            {
              v63 = __p[0];
            }

            if (v101 >= 0)
            {
              v64 = HIBYTE(v101);
            }

            else
            {
              v64 = __p[1];
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
          }

          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v78, __p);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(__p[0]);
          }

          ++v59;
        }

        while (v59 < v82);
      }

      v65 = a1 + 376;
      std::__tree<std::string>::destroy(a1 + 368, *(a1 + 376));
      v66 = v79;
      *(a1 + 368) = v78;
      *(a1 + 376) = v66;
      v67 = v80;
      *(a1 + 384) = v80;
      if (v67)
      {
        *(v66 + 16) = v65;
        v78 = &v79;
        v79 = 0;
        v80 = 0;
        v66 = 0;
      }

      else
      {
        *(a1 + 368) = v65;
      }

      std::__tree<std::string>::destroy(&v78, v66);
LABEL_95:
      if (a2 < 14)
      {
        if (quasar::gLogLevel >= 6)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v85 = 0u;
          memset(v84, 0, sizeof(v84));
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "LME STREAM DUMP [Pron Cache]", 28);
          quasar::QuasarTraceMessage::~QuasarTraceMessage(v84);
        }

        quasar::WordPronCache::fromStream(a1 + 16);
      }

      goto LABEL_99;
    }
  }

  if (quasar::gLogLevel >= 5)
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    memset(v84, 0, sizeof(v84));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "Expected compatibility key does not match LME Data's compatibilityKey. LME Data should be regenerated. Quitting deserialization early.", 134);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
    if (quasar::gLogLevel >= 5)
    {
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v85 = 0u;
      memset(v84, 0, sizeof(v84));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "expected compatibilityKey=", 26);
      v34 = *(a5 + 23);
      v35 = v34 >= 0 ? a5 : *a5;
      v36 = v34 >= 0 ? *(a5 + 23) : *(a5 + 8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
      if (quasar::gLogLevel >= 5)
      {
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v85 = 0u;
        memset(v84, 0, sizeof(v84));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v84);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, "deserialized compatibilityKey=", 30);
        v38 = *(a1 + 319);
        if (v38 >= 0)
        {
          v39 = a1 + 296;
        }

        else
        {
          v39 = *(a1 + 296);
        }

        if (v38 >= 0)
        {
          v40 = *(a1 + 319);
        }

        else
        {
          v40 = *(a1 + 304);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v84);
      }
    }
  }

  return 7;
}

void sub_1B55CE0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, char *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a20);
  std::__tree<std::string>::destroy(&a11, a12);
  if (a2 == 1)
  {
    v44 = __cxa_begin_catch(a1);
    if (quasar::gLogLevel >= 1)
    {
      v45 = v44;
      a35 = 0u;
      a36 = 0u;
      a33 = 0u;
      a34 = 0u;
      a31 = 0u;
      a32 = 0u;
      a29 = 0u;
      a30 = 0u;
      a27 = 0u;
      a28 = 0u;
      a25 = 0u;
      a26 = 0u;
      a23 = 0u;
      a24 = 0u;
      a21 = 0u;
      a22 = 0u;
      a20 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&a20);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&a20, "Error reading LmeData stream: ", 30);
      v47 = (*(*v45 + 16))(v45);
      v48 = strlen(v47);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&a20);
    }

    __cxa_end_catch();
    JUMPOUT(0x1B55CDB50);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::ReadBasicType<long long>(void *a1, int a2, uint64_t a3)
{
  v16[51] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = std::istream::get();
    if (v4 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v16, "ReadBasicType: encountered end of stream.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    v5 = v4;
    if (v4 << 24 != 0x8000000)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "ReadBasicType: did not get expected integer type, ", 50);
      v12 = MEMORY[0x1B8C84C00](v11, v5);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " vs. ", 5);
      v14 = MEMORY[0x1B8C84C00](v13, 8);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ".  You can change this code to successfully", 43);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, " read it later, if needed.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    result = std::istream::read();
  }

  else
  {
    result = MEMORY[0x1B8C84B20](a1, a3);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Read failure in ReadBasicType, file position is ", 48);
    std::istream::tellg();
    v8 = MEMORY[0x1B8C84C60](v7, v16[50]);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", next char is ", 15);
    v10 = std::istream::peek();
    MEMORY[0x1B8C84C00](v9, v10);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  return result;
}

void sub_1B55CE718(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

quasar::LmeDataSearch *quasar::LmeDataSearch::LmeDataSearch(quasar::LmeDataSearch *this, const quasar::LmeData *a2)
{
  v54[4] = *MEMORY[0x1E69E9840];
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 20) = 1065353216;
  v4 = *(a2 + 28);
  v3 = *(a2 + 29);
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v44 = v3;
    v45 = this + 24;
    v5 = *(a2 + 25);
    v6 = a2 + 208;
    if (v5 != (a2 + 208))
    {
      do
      {
        v7 = *(this + 4);
        LODWORD(v51) = -1431655765 * ((v7 - *(this + 3)) >> 3);
        if (v7 >= *(this + 5))
        {
          v8 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v45, v5 + 2);
        }

        else
        {
          std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v45, v5 + 2);
          v8 = v7 + 1;
        }

        *(this + 4) = v8;
        v9 = *(v5 + 7);
        v54[0] = &unk_1F2D1F5D0;
        v54[1] = this;
        v54[2] = &v51;
        v54[3] = v54;
        fst::quasar::GetWords(v9, v54);
        v3 = std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v54);
        v10 = *(v5 + 1);
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
            v11 = *(v5 + 2);
            v12 = *v11 == v5;
            v5 = v11;
          }

          while (!v12);
        }

        v5 = v11;
      }

      while (v11 != v6);
    }

    v51 = 0;
    v52 = 0;
    v53 = 0;
    v13 = quasar::QsrText::SingletonInstance(v3);
    std::string::basic_string[abi:ne200100]<0>(&__p, " ");
    quasar::QsrText::encodeTokenQsrText(v13, &__p, &v51);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = *(v4 + 96);
    v15 = *(v4 + 104);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = (*(*v14 + 120))(v14);
    v17 = (*(*v14 + 128))(v14, 0);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v16)
    {
      v18 = 0;
      do
      {
        (*(*v14 + 88))(&__p, v14, v17);
        std::string::basic_string[abi:ne200100]<0>(&v47, "~w00");
        quasar::splitAndTrimNoEmpty(&__p, &v47, &v48);
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        v19 = v48;
        if (0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3) >= 2)
        {
          v20 = 0;
          v21 = 1;
          do
          {
            v22 = v19 + 24 * v20;
            v23 = *(v22 + 23);
            if (v23 < 0)
            {
              v24 = *v22;
              v23 = *(v22 + 8);
            }

            else
            {
              v24 = v19 + 24 * v20;
            }

            v25 = (v24 + v23);
            if (v23)
            {
              v26 = v24;
              v27 = (v24 + v23);
              do
              {
                v28 = v26;
                v29 = v26;
                while (1)
                {
                  v30 = *v29++;
                  if (v30 == 92)
                  {
                    break;
                  }

                  v28 = v29;
                  if (v29 == v25)
                  {
                    v28 = v27;
                    goto LABEL_38;
                  }
                }

                v26 = v28 + 1;
                v27 = v28;
              }

              while (v29 != v25);
            }

            else
            {
              v28 = v24;
            }

LABEL_38:
            v31 = &v28[-v24];
            if (v28 == v25)
            {
              v32 = -1;
            }

            else
            {
              v32 = v31;
            }

            std::string::basic_string(&v47, v22, 0, v32, v46);
            if (*(v22 + 23) < 0)
            {
              operator delete(*v22);
            }

            v33 = *&v47.__r_.__value_.__l.__data_;
            *(v22 + 16) = *(&v47.__r_.__value_.__l + 2);
            *v22 = v33;
            ++v21;
            v19 = v48;
            ++v20;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 3) > v21);
        }

        v34 = HIBYTE(v53);
        v35 = &v51;
        if (v53 < 0)
        {
          v35 = v51;
          v34 = v52;
        }

        v46[0] = v35;
        v46[1] = v34;
        quasar::join<std::vector<std::string>>(&v48, v46);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v47;
        v47.__r_.__value_.__r.__words[0] = v17;
        v36 = *(this + 1);
        if (v36 >= *(this + 2))
        {
          v39 = std::vector<std::pair<std::string,int>>::__emplace_back_slow_path<std::string&,long long>(this, &__p, &v47);
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(*(this + 1), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            data = v47.__r_.__value_.__l.__data_;
          }

          else
          {
            v37 = *&__p.__r_.__value_.__l.__data_;
            *(v36 + 16) = *(&__p.__r_.__value_.__l + 2);
            *v36 = v37;
            data = v17;
          }

          *(v36 + 24) = data;
          v39 = v36 + 32;
          *(this + 1) = v36 + 32;
        }

        *(this + 1) = v39;
        v47.__r_.__value_.__r.__words[0] = &v48;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v47);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (++v18 < v16)
        {
          v17 = (*(*v14 + 128))(v14, v18);
        }
      }

      while (v18 != v16);
    }

    v40 = *(this + 1);
    v41 = 126 - 2 * __clz((v40 - *this) >> 5);
    if (v40 == *this)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,false>(*this, v40, &__p, v42, 1);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(v51);
    }

    v3 = v44;
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return this;
}

void sub_1B55CEC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v34 + 48);
  a28 = a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = v34;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t fst::quasar::GetWords(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v5 = (*(*a1 + 24))(a1);
  v29 = 0;
  (*(*a1 + 136))(a1, v5, v27);
  v23 = (*(*a1 + 24))(a1);
  v25 = 0;
  v26 = 0;
  __src = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&__src, &v23, &__src, 1uLL);
  v6 = __src;
  v7 = v25;
  if (__src == v25)
  {
    goto LABEL_29;
  }

  do
  {
    v8 = *(v7 - 1);
    v25 = v7 - 4;
    fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reinit(v27, a1, v8);
    while (v27[0])
    {
      if ((*(*v27[0] + 24))(v27[0]))
      {
        goto LABEL_28;
      }

      if (v27[0])
      {
        v9 = (*(*v27[0] + 32))(v27[0]);
        goto LABEL_10;
      }

LABEL_9:
      v9 = v27[1] + 16 * v29;
LABEL_10:
      v10 = *(v9 + 4);
      if (v10 < 1)
      {
        v11 = v25;
        if (v25 >= v26)
        {
          v13 = __src;
          v14 = v25 - __src;
          v15 = (v25 - __src) >> 2;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v17 = v26 - __src;
          if ((v26 - __src) >> 1 > v16)
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

          v19 = (4 * v15);
          v20 = *(v9 + 12);
          v21 = &v19[-((v25 - __src) >> 2)];
          *v19 = v20;
          v12 = (v19 + 1);
          memcpy(v21, v13, v14);
          v22 = __src;
          __src = v21;
          v25 = v12;
          v26 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v25 = *(v9 + 12);
          v12 = v11 + 4;
        }

        v25 = v12;
      }

      else
      {
        std::function<void ()(int)>::operator()(a2, v10);
      }

      if (v27[0])
      {
        (*(*v27[0] + 40))(v27[0]);
      }

      else
      {
        ++v29;
      }
    }

    if (v29 < v27[2])
    {
      goto LABEL_9;
    }

LABEL_28:
    v6 = __src;
    v7 = v25;
  }

  while (__src != v25);
LABEL_29:
  if (v6)
  {
    v25 = v6;
    operator delete(v6);
  }

  result = v27[0];
  if (v27[0])
  {
    return (*(*v27[0] + 8))(v27[0]);
  }

  if (v28)
  {
    --*v28;
  }

  return result;
}

void sub_1B55CF054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  else if (a17)
  {
    --*a17;
  }

  _Unwind_Resume(exception_object);
}

void quasar::LmeDataSearch::getCategoriesForOrthography(quasar::QsrText *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = quasar::QsrText::SingletonInstance(a1);
  if (quasar::QsrText::encodeTokenQsrText(v6, a2, &v26))
  {
    if (v28 >= 0)
    {
      v7 = HIBYTE(v28);
    }

    else
    {
      v7 = v27;
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
    if (v7)
    {
      p_s = &__s;
      std::string::basic_string[abi:ne200100](&__s, v7 + 1);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_s = __s.__r_.__value_.__r.__words[0];
      }

      if (v28 >= 0)
      {
        v9 = &v26;
      }

      else
      {
        v9 = v26;
      }

      memmove(p_s, v9, v7);
      *(&p_s->__r_.__value_.__l.__data_ + v7) = 92;
      __p = __s;
      v25 = 0;
      v10 = *(a1 + 1);
      if (v10 != *a1)
      {
        v11 = (v10 - *a1) >> 5;
        v10 = *a1;
        do
        {
          v12 = &v10[4 * (v11 >> 1)];
          v13 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(&__s, v12, &__p.__r_.__value_.__l.__data_);
          if (v13)
          {
            v11 += ~(v11 >> 1);
          }

          else
          {
            v11 >>= 1;
          }

          if (v13)
          {
            v10 = v12 + 4;
          }
        }

        while (v11);
      }

      if (v10 != *(a1 + 1))
      {
        while (1)
        {
          if (!quasar::startsWith(v10, &__p))
          {
            goto LABEL_43;
          }

          v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          std::string::basic_string(&__s, v10, v14, 0xFFFFFFFFFFFFFFFFLL, &v29);
          size = SHIBYTE(__s.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            break;
          }

          if (*(&__s.__r_.__value_.__s + 23))
          {
            v16 = &__s;
LABEL_30:
            v17 = v16 + size;
            v18 = v16;
            while (1)
            {
              v19 = memchr(v18, 92, size);
              if (!v19)
              {
                goto LABEL_37;
              }

              if (*v19 == 92)
              {
                if (v19 != v17 && v19 - v16 != -1)
                {
                  goto LABEL_40;
                }

                goto LABEL_37;
              }

              v18 = (v19 + 1);
              size = v17 - v18;
              if (v17 - v18 < 1)
              {
                goto LABEL_37;
              }
            }
          }

LABEL_42:
          v10 += 4;
          if (v10 == *(a1 + 1))
          {
            goto LABEL_43;
          }
        }

        size = __s.__r_.__value_.__l.__size_;
        if (__s.__r_.__value_.__l.__size_)
        {
          if (__s.__r_.__value_.__l.__size_ >= 1)
          {
            v16 = __s.__r_.__value_.__r.__words[0];
            goto LABEL_30;
          }

LABEL_37:
          v20 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1 + 6, v10 + 6);
          if (v20)
          {
            v21 = *(v20 + 5);
            v22 = *(a1 + 3);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 4) - v22) >> 3) <= v21)
            {
              std::vector<int>::__throw_out_of_range[abi:ne200100]();
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, (v22 + 24 * v21));
          }

LABEL_40:
          if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }
        }

        operator delete(__s.__r_.__value_.__l.__data_);
        goto LABEL_42;
      }

LABEL_43:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 1065353216;
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }
}

void sub_1B55CF358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v28);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__assign_multi<std::__tree_const_iterator<quasar::LmePackedWord,std::__tree_node<quasar::LmePackedWord,void *> *,long>>(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          *(v8 + 20) = *(v9 + 20);
          if (v8 != v9)
          {
            std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(v8 + 11, v9[11], v9[12], (v9[12] - v9[11]) >> 1);
          }

          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__emplace_multi<quasar::LmePackedWord const&>();
  }

  return result;
}

uint64_t std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(*a1, v2);
  }

  return a1;
}

void std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(a1, *a2);
    std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1B55CF694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmePackedWord,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B55CF798(_Unwind_Exception *a1)
{
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmePackedWord,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B55CF844(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmePackedWord,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::set<std::string>>,std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          std::pair<std::string &,std::set<std::string> &>::operator=[abi:ne200100]<std::string const,std::set<std::string>,0>(v16, (v9 + 4));
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16[0], leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_multi<std::pair<std::string const,std::set<std::string>> const&>();
  }

  return result;
}

void sub_1B55CFA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string &,std::set<std::string> &>::operator=[abi:ne200100]<std::string const,std::set<std::string>,0>(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v4, *(a2 + 24), (a2 + 32));
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,std::map<std::string,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,int>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1B55CFB5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1B55CFDA0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<quasar::LmePackedWord,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::string>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<quasar::MetaInfo::StructuredPrediction::Span>>::destroy[abi:ne200100]<quasar::MetaInfo::StructuredPrediction::Span,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__emplace_unique_key_args<quasar::LmePackedWord,quasar::LmePackedWord&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<quasar::LmePackedWord,quasar::LmePackedWordOrthoComparator,std::allocator<quasar::LmePackedWord>>::__construct_node<quasar::LmePackedWord const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::string>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<std::string>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::string>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::string>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

__n128 std::__function::__func<quasar::LmeDataSearch::LmeDataSearch(quasar::LmeData const&)::$_0,std::allocator<quasar::LmeDataSearch::LmeDataSearch(quasar::LmeData const&)::$_0>,void ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D1F5D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t *std::__function::__func<quasar::LmeDataSearch::LmeDataSearch(quasar::LmeData const&)::$_0,std::allocator<quasar::LmeDataSearch::LmeDataSearch(quasar::LmeData const&)::$_0>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v5 = *a2;
  v2 = *(a1 + 8);
  v3 = **(a1 + 16);
  v6 = &v5;
  result = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>((v2 + 48), &v5);
  *(result + 5) = v3;
  return result;
}

uint64_t std::__function::__func<quasar::LmeDataSearch::LmeDataSearch(quasar::LmeData const&)::$_0,std::allocator<quasar::LmeDataSearch::LmeDataSearch(quasar::LmeData const&)::$_0>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<std::pair<std::string,int>>::__emplace_back_slow_path<std::string&,long long>(uint64_t a1, __int128 *a2, void *a3)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(a1, v9);
  }

  v10 = 32 * v3;
  v21 = 0;
  v22 = v10;
  v11 = 0;
  v23 = v10;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v13 = v22;
    v14 = v23;
    v11 = v24;
  }

  else
  {
    v12 = *a2;
    *(v10 + 16) = *(a2 + 2);
    *v10 = v12;
    v13 = v10;
    v14 = v10;
  }

  *(v10 + 24) = *a3;
  v15 = v14 + 32;
  v16 = *(a1 + 8) - *a1;
  v17 = v13 - v16;
  memcpy((v13 - v16), *a1, v16);
  v18 = *a1;
  *a1 = v17;
  *(a1 + 8) = v15;
  v19 = *(a1 + 16);
  *(a1 + 16) = v11;
  v23 = v18;
  v24 = v19;
  v21 = v18;
  v22 = v18;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v21);
  return v15;
}

void sub_1B55D028C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,false>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 4;
  v96 = (a2 - 1);
  v97 = a2 - 12;
  v98 = a2 - 8;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2 - 4, v9))
        {
          v143 = v9[2];
          v120 = *v9;
          v87 = *v8;
          v9[2] = *(a2 - 2);
          *v9 = v87;
          *v8 = v120;
          *(a2 - 2) = v143;
          v88 = *(v9 + 6);
          *(v9 + 6) = *(a2 - 2);
          *(a2 - 2) = v88;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v81 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v9 + 4, v9);
      v82 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2 - 4, v9 + 4);
      if (v81)
      {
        if (v82)
        {
          v83 = (v9 + 3);
          v142 = v9[2];
          v119 = *v9;
          v84 = *v8;
          v9[2] = v8[2];
          *v9 = v84;
          *v8 = v119;
          v85 = v142;
        }

        else
        {
          v145 = v9[2];
          v122 = *v9;
          *v9 = *(v9 + 2);
          v9[2] = v9[6];
          *(v9 + 2) = v122;
          v9[6] = v145;
          v83 = (v9 + 7);
          v92 = *(v9 + 6);
          *(v9 + 6) = *(v9 + 14);
          *(v9 + 14) = v92;
          if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v8, v9 + 4))
          {
            return;
          }

          v85 = v9[6];
          v93 = *(v9 + 2);
          v94 = v8[2];
          *(v9 + 2) = *v8;
          v9[6] = v94;
          *v8 = v93;
        }

        v8[2] = v85;
      }

      else
      {
        if (!v82)
        {
          return;
        }

        v89 = v9[6];
        v90 = *(v9 + 2);
        v91 = *(a2 - 2);
        *(v9 + 2) = *v8;
        v9[6] = v91;
        *v8 = v90;
        *(a2 - 2) = v89;
        LODWORD(v89) = *(v9 + 14);
        v96 = (v9 + 7);
        *(v9 + 14) = *(a2 - 2);
        *(a2 - 2) = v89;
        if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v9 + 4, v9))
        {
          return;
        }

        v144 = v9[2];
        v121 = *v9;
        *v9 = *(v9 + 2);
        v9[2] = v9[6];
        *(v9 + 2) = v121;
        v9[6] = v144;
        v83 = (v9 + 3);
      }

      v95 = *v83;
      *v83 = *v96;
      *v96 = v95;
      return;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,0>(v9, (v9 + 4), (v9 + 8), (v9 + 12), (a2 - 4), a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,std::pair<std::string,int> *>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[4 * (v12 >> 1)];
    if (v12 >= 0x81)
    {
      v14 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, &v9[4 * (v12 >> 1)], v9);
      v15 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2 - 4, v13);
      if (v14)
      {
        if (v15)
        {
          v16 = (a1 + 24);
          v123 = *(a1 + 16);
          v100 = *a1;
          v17 = *v8;
          *(a1 + 16) = *(a2 - 2);
          *a1 = v17;
          goto LABEL_27;
        }

        v129 = *(a1 + 16);
        v106 = *a1;
        v30 = *v13;
        *(a1 + 16) = v13[2];
        *a1 = v30;
        v13[2] = v129;
        *v13 = v106;
        v16 = (v13 + 3);
        v31 = *(a1 + 24);
        *(a1 + 24) = *(v13 + 6);
        *(v13 + 6) = v31;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2 - 4, v13))
        {
          v123 = v13[2];
          v100 = *v13;
          v32 = *v8;
          v13[2] = *(a2 - 2);
          *v13 = v32;
LABEL_27:
          *v8 = v100;
          *(a2 - 2) = v123;
          v24 = (a2 - 1);
LABEL_28:
          v33 = *v16;
          *v16 = *v24;
          *v24 = v33;
        }
      }

      else if (v15)
      {
        v125 = v13[2];
        v102 = *v13;
        v22 = *v8;
        v13[2] = *(a2 - 2);
        *v13 = v22;
        *v8 = v102;
        *(a2 - 2) = v125;
        v24 = (v13 + 3);
        v23 = *(v13 + 6);
        *(v13 + 6) = *(a2 - 2);
        *(a2 - 2) = v23;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13, a1))
        {
          v126 = *(a1 + 16);
          v103 = *a1;
          v25 = *v13;
          *(a1 + 16) = v13[2];
          *a1 = v25;
          v13[2] = v126;
          *v13 = v103;
          v16 = (a1 + 24);
          goto LABEL_28;
        }
      }

      v34 = v13 - 4;
      v35 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13 - 4, (a1 + 32));
      v36 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v98, v13 - 4);
      if (v35)
      {
        v37 = (a1 + 56);
        if (v36)
        {
          v38 = *(a1 + 48);
          v39 = *(a1 + 32);
          v40 = *(a2 - 6);
          *(a1 + 32) = *v98;
          *(a1 + 48) = v40;
          *v98 = v39;
          *(a2 - 6) = v38;
          goto LABEL_40;
        }

        v110 = *(a1 + 32);
        v133 = *(a1 + 48);
        v48 = *(v13 - 2);
        *(a1 + 32) = *v34;
        *(a1 + 48) = v48;
        *(v13 - 2) = v133;
        *v34 = v110;
        LODWORD(v48) = *v37;
        *v37 = *(v13 - 2);
        *(v13 - 2) = v48;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v98, v13 - 4))
        {
          v134 = *(v13 - 2);
          v111 = *v34;
          v49 = *v98;
          *(v13 - 2) = *(a2 - 6);
          *v34 = v49;
          *v98 = v111;
          *(a2 - 6) = v134;
          v37 = v13 - 1;
LABEL_40:
          v43 = a2 - 5;
LABEL_41:
          v50 = *v37;
          *v37 = *v43;
          *v43 = v50;
        }
      }

      else if (v36)
      {
        v130 = *(v13 - 2);
        v107 = *v34;
        v41 = *v98;
        *(v13 - 2) = *(a2 - 6);
        *v34 = v41;
        *v98 = v107;
        *(a2 - 6) = v130;
        v43 = v13 - 1;
        v42 = *(v13 - 2);
        *(v13 - 2) = *(a2 - 10);
        *(a2 - 10) = v42;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13 - 4, (a1 + 32)))
        {
          v108 = *(a1 + 32);
          v131 = *(a1 + 48);
          v44 = *(v13 - 2);
          *(a1 + 32) = *v34;
          *(a1 + 48) = v44;
          *(v13 - 2) = v131;
          *v34 = v108;
          v37 = (a1 + 56);
          goto LABEL_41;
        }
      }

      v51 = v13 + 4;
      v52 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13 + 4, (a1 + 64));
      v53 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v97, v13 + 4);
      if (v52)
      {
        v54 = (a1 + 88);
        if (v53)
        {
          v55 = *(a1 + 80);
          v56 = *(a1 + 64);
          v57 = *(a2 - 10);
          *(a1 + 64) = *v97;
          *(a1 + 80) = v57;
          *v97 = v56;
          *(a2 - 10) = v55;
          goto LABEL_50;
        }

        v64 = *(a1 + 64);
        v65 = *(a1 + 80);
        v66 = v13[6];
        *(a1 + 64) = *v51;
        *(a1 + 80) = v66;
        v13[6] = v65;
        *v51 = v64;
        LODWORD(v66) = *v54;
        *v54 = *(v13 + 14);
        *(v13 + 14) = v66;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v97, v13 + 4))
        {
          v136 = v13[6];
          v113 = *v51;
          v67 = *v97;
          v13[6] = *(a2 - 10);
          *v51 = v67;
          *v97 = v113;
          *(a2 - 10) = v136;
          v54 = v13 + 7;
LABEL_50:
          v60 = a2 - 9;
LABEL_51:
          v68 = *v54;
          *v54 = *v60;
          *v60 = v68;
        }
      }

      else if (v53)
      {
        v135 = v13[6];
        v112 = *v51;
        v58 = *v97;
        v13[6] = *(a2 - 10);
        *v51 = v58;
        *v97 = v112;
        *(a2 - 10) = v135;
        v60 = v13 + 7;
        v59 = *(v13 + 14);
        *(v13 + 14) = *(a2 - 18);
        *(a2 - 18) = v59;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13 + 4, (a1 + 64)))
        {
          v61 = *(a1 + 64);
          v62 = *(a1 + 80);
          v63 = v13[6];
          *(a1 + 64) = *v51;
          *(a1 + 80) = v63;
          v13[6] = v62;
          *v51 = v61;
          v54 = (a1 + 88);
          goto LABEL_51;
        }
      }

      v69 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13, v13 - 4);
      v70 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13 + 4, v13);
      if (v69)
      {
        if (v70)
        {
          v71 = (v13 - 1);
          v137 = *(v13 - 2);
          v114 = *v34;
          *v34 = *v51;
          *(v13 - 2) = v13[6];
          goto LABEL_60;
        }

        v140 = *(v13 - 2);
        v117 = *v34;
        *v34 = *v13;
        *(v13 - 2) = v13[2];
        v13[2] = v140;
        *v13 = v117;
        v71 = (v13 + 3);
        v74 = *(v13 - 2);
        *(v13 - 2) = *(v13 + 6);
        *(v13 + 6) = v74;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13 + 4, v13))
        {
          v137 = v13[2];
          v114 = *v13;
          *v13 = *v51;
          v13[2] = v13[6];
LABEL_60:
          v13[6] = v137;
          *v51 = v114;
          v73 = (v13 + 7);
LABEL_61:
          v75 = *v71;
          *v71 = *v73;
          *v73 = v75;
        }
      }

      else if (v70)
      {
        v138 = v13[2];
        v115 = *v13;
        *v13 = *v51;
        v13[2] = v13[6];
        v13[6] = v138;
        *v51 = v115;
        v73 = (v13 + 3);
        v72 = *(v13 + 6);
        *(v13 + 6) = *(v13 + 14);
        *(v13 + 14) = v72;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v13, v13 - 4))
        {
          v139 = *(v13 - 2);
          v116 = *v34;
          *v34 = *v13;
          *(v13 - 2) = v13[2];
          v13[2] = v139;
          *v13 = v116;
          v71 = (v13 - 1);
          goto LABEL_61;
        }
      }

      v141 = *(a1 + 16);
      v118 = *a1;
      v76 = *v13;
      *(a1 + 16) = v13[2];
      *a1 = v76;
      v13[2] = v141;
      *v13 = v118;
      v20 = (a1 + 24);
      v28 = (v13 + 3);
LABEL_63:
      v77 = *v20;
      *v20 = *v28;
      *v28 = v77;
      goto LABEL_64;
    }

    v18 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v9, &v9[4 * (v12 >> 1)]);
    v19 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2 - 4, v9);
    if (v18)
    {
      if (v19)
      {
        v20 = (v13 + 3);
        v124 = v13[2];
        v101 = *v13;
        v21 = *v8;
        v13[2] = *(a2 - 2);
        *v13 = v21;
LABEL_37:
        *v8 = v101;
        *(a2 - 2) = v124;
        v28 = (a2 - 1);
        goto LABEL_63;
      }

      v132 = v13[2];
      v109 = *v13;
      v45 = *v9;
      v13[2] = v9[2];
      *v13 = v45;
      v9[2] = v132;
      *v9 = v109;
      v20 = (v9 + 3);
      v46 = *(v13 + 6);
      *(v13 + 6) = *(v9 + 6);
      *(v9 + 6) = v46;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2 - 4, v9))
      {
        v124 = v9[2];
        v101 = *v9;
        v47 = *v8;
        v9[2] = *(a2 - 2);
        *v9 = v47;
        goto LABEL_37;
      }
    }

    else if (v19)
    {
      v127 = v9[2];
      v104 = *v9;
      v26 = *v8;
      v9[2] = *(a2 - 2);
      *v9 = v26;
      *v8 = v104;
      *(a2 - 2) = v127;
      v28 = (v9 + 3);
      v27 = *(v9 + 6);
      *(v9 + 6) = *(a2 - 2);
      *(a2 - 2) = v27;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v9, v13))
      {
        v128 = v13[2];
        v105 = *v13;
        v29 = *v9;
        v13[2] = v9[2];
        *v13 = v29;
        v9[2] = v128;
        *v9 = v105;
        v20 = (v13 + 3);
        goto LABEL_63;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && !std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 - 32), a1))
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,int> *,std::__less<void,void> &>(a1, a2, a3);
      goto LABEL_71;
    }

    v78 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,int> *,std::__less<void,void> &>(a1, a2, a3);
    if ((v79 & 1) == 0)
    {
      goto LABEL_69;
    }

    v80 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(a1, v78, a3);
    v9 = (v78 + 32);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(v78 + 32, a2, a3))
    {
      a4 = -v11;
      a2 = v78;
      if (v80)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v80)
    {
LABEL_69:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,false>(a1, v78, a3, -v11, a5 & 1);
      v9 = (v78 + 32);
LABEL_71:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,0>(v9, v9 + 2, v9 + 4, a2 - 2, a3);
}

BOOL std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(uint64_t a1, const void **a2, const void **a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
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

  return !v16 && *(a2 + 6) < *(a3 + 6);
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a5, a2, a1);
  v11 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1 + 6;
      v13 = *(a1 + 2);
      v14 = *a1;
      v15 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v15;
LABEL_9:
      *a3 = v14;
      *(a3 + 2) = v13;
      v19 = a3 + 6;
      goto LABEL_10;
    }

    v23 = *(a1 + 2);
    v24 = *a1;
    v25 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v25;
    *a2 = v24;
    *(a2 + 2) = v23;
    v12 = a2 + 6;
    LODWORD(v25) = *(a1 + 6);
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 6) = v25;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a5, a3, a2))
    {
      v13 = *(a2 + 2);
      v14 = *a2;
      v26 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v26;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v16 = *(a2 + 2);
    v17 = *a2;
    v18 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v18;
    *a3 = v17;
    *(a3 + 2) = v16;
    v19 = a2 + 6;
    LODWORD(v16) = *(a2 + 6);
    *(a2 + 6) = *(a3 + 6);
    *(a3 + 6) = v16;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a5, a2, a1))
    {
      v20 = *(a1 + 2);
      v21 = *a1;
      v22 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 2) = v22;
      *a2 = v21;
      *(a2 + 2) = v20;
      v12 = a1 + 6;
LABEL_10:
      v27 = *v12;
      *v12 = *v19;
      *v19 = v27;
    }
  }

  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a5, a4, a3))
  {
    v29 = *(a3 + 2);
    v30 = *a3;
    v31 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v31;
    *a4 = v30;
    *(a4 + 2) = v29;
    LODWORD(v29) = *(a3 + 6);
    *(a3 + 6) = *(a4 + 6);
    *(a4 + 6) = v29;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a5, a3, a2))
    {
      v32 = *(a2 + 2);
      v33 = *a2;
      v34 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v34;
      *a3 = v33;
      *(a3 + 2) = v32;
      LODWORD(v32) = *(a2 + 6);
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 6) = v32;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a5, a2, a1))
      {
        v35 = *(a1 + 2);
        result = *a1;
        v36 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v36;
        *a2 = result;
        *(a2 + 2) = v35;
        LODWORD(v35) = *(a1 + 6);
        *(a1 + 6) = *(a2 + 6);
        *(a2 + 6) = v35;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,0>(a1, a2, a3, a4, a6);
  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a6, a5, a4))
  {
    v13 = *(a4 + 16);
    v14 = *a4;
    v15 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v15;
    *a5 = v14;
    *(a5 + 16) = v13;
    LODWORD(v13) = *(a4 + 24);
    *(a4 + 24) = *(a5 + 24);
    *(a5 + 24) = v13;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a6, a4, a3))
    {
      v16 = *(a3 + 16);
      v17 = *a3;
      v18 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v18;
      *a4 = v17;
      *(a4 + 16) = v16;
      LODWORD(v16) = *(a3 + 24);
      *(a3 + 24) = *(a4 + 24);
      *(a4 + 24) = v16;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a6, a3, a2))
      {
        v19 = *(a2 + 16);
        v20 = *a2;
        v21 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v21;
        *a3 = v20;
        *(a3 + 16) = v19;
        LODWORD(v19) = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v19;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a6, a2, a1))
        {
          v22 = *(a1 + 16);
          result = *a1;
          v23 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v23;
          *a2 = result;
          *(a2 + 16) = v22;
          LODWORD(v22) = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v22;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = (a1 + 32);
    if ((a1 + 32) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v5, v8))
        {
          v14 = *v9;
          v15 = v9[2];
          v9[1] = 0;
          v9[2] = 0;
          *v9 = 0;
          v16 = *(v8 + 56);
          v10 = v7;
          while (1)
          {
            v11 = a1 + v10;
            if (*(a1 + v10 + 55) < 0)
            {
              operator delete(*(v11 + 32));
            }

            *(v11 + 32) = *v11;
            *(v11 + 48) = *(v11 + 16);
            *(v11 + 23) = 0;
            *v11 = 0;
            *(v11 + 56) = *(v11 + 24);
            if (!v10)
            {
              break;
            }

            v12 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, &v14, (a1 + v10 - 32));
            v10 -= 32;
            if (!v12)
            {
              v13 = a1 + v10 + 32;
              goto LABEL_12;
            }
          }

          v13 = a1;
LABEL_12:
          if (*(v13 + 23) < 0)
          {
            operator delete(*v13);
          }

          *v13 = v14;
          *(v13 + 16) = v15;
          *(v13 + 24) = v16;
        }

        v5 = v9 + 4;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }
}

void sub_1B55D1510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(uint64_t a1, const void **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 32);
    if ((a1 + 32) != a2)
    {
      v7 = (a1 + 56);
      do
      {
        v8 = v5;
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v5, v4))
        {
          v13 = *v8;
          v14 = v8[2];
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v15 = *(v4 + 14);
          v9 = v7;
          do
          {
            v10 = (v9 - 6);
            if (*(v9 - 1) < 0)
            {
              operator delete(*v10);
            }

            *v10 = *(v9 - 14);
            *(v9 - 1) = *(v9 - 5);
            *(v9 - 33) = 0;
            *(v9 - 56) = 0;
            *v9 = *(v9 - 8);
            v11 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, &v13, v9 - 11);
            v9 -= 8;
          }

          while (v11);
          v12 = (v9 - 6);
          if (*(v9 - 1) < 0)
          {
            operator delete(*v12);
          }

          *v12 = v13;
          *(v9 - 1) = v14;
          *v9 = v15;
        }

        v5 = v8 + 4;
        v7 += 8;
        v4 = v8;
      }

      while (v8 + 4 != a2);
    }
  }
}

void sub_1B55D1650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,int> *,std::__less<void,void> &>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  *__p = *a1;
  v18 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v19 = *(a1 + 24);
  if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, __p, (a2 - 32)))
  {
    v6 = a1;
    do
    {
      v6 += 4;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, __p, v6));
  }

  else
  {
    v7 = (a1 + 32);
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, __p, v7);
      v7 = v6 + 4;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 32;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, __p, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v21 = v6[2];
    v20 = v9;
    v10 = *v4;
    v6[2] = *(v4 + 16);
    *v6 = v10;
    v11 = v20;
    *(v4 + 16) = v21;
    *v4 = v11;
    v12 = *(v6 + 6);
    *(v6 + 6) = *(v4 + 24);
    *(v4 + 24) = v12;
    do
    {
      v6 += 4;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, __p, v6));
    do
    {
      v4 -= 32;
    }

    while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, __p, v4));
  }

  v13 = (v6 - 4);
  if (v6 - 4 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = *v13;
    *(a1 + 16) = *(v6 - 2);
    *a1 = v14;
    *(v6 - 9) = 0;
    *(v6 - 32) = 0;
    *(a1 + 24) = *(v6 - 2);
  }

  if (*(v6 - 9) < 0)
  {
    operator delete(*v13);
  }

  v15 = *__p;
  *(v6 - 2) = v18;
  *v13 = v15;
  HIBYTE(v18) = 0;
  LOBYTE(__p[0]) = 0;
  *(v6 - 2) = v19;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1B55D183C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<std::string,int> *,std::__less<void,void> &>(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = 0;
  *__p = *a1;
  v19 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v20 = *(a1 + 24);
  do
  {
    v7 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 + v6 + 32), __p);
    v6 += 32;
  }

  while (v7);
  v8 = a1 + v6;
  if (v6 == 32)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 4;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2, __p));
  }

  else
  {
    do
    {
      a2 -= 4;
    }

    while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, a2, __p));
  }

  v9 = a1 + v6;
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v21 = *v9;
      v11 = v21;
      v22 = *(v9 + 16);
      v12 = v22;
      v13 = v10[2];
      *v9 = *v10;
      *(v9 + 16) = v13;
      v10[2] = v12;
      *v10 = v11;
      LODWORD(v12) = *(v9 + 24);
      *(v9 + 24) = *(v10 + 6);
      *(v10 + 6) = v12;
      do
      {
        v9 += 32;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v9, __p));
      do
      {
        v10 -= 4;
      }

      while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v10, __p));
    }

    while (v9 < v10);
  }

  v14 = (v9 - 32);
  if (v9 - 32 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v15 = *v14;
    *(a1 + 16) = *(v9 - 16);
    *a1 = v15;
    *(v9 - 9) = 0;
    *(v9 - 32) = 0;
    *(a1 + 24) = *(v9 - 8);
  }

  if (*(v9 - 9) < 0)
  {
    operator delete(*v14);
  }

  v16 = *__p;
  *(v9 - 16) = v19;
  *v14 = v16;
  HIBYTE(v19) = 0;
  LOBYTE(__p[0]) = 0;
  *(v9 - 8) = v20;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v9 - 32;
}

void sub_1B55D1A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v11 = (a2 - 32);
        v12 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 + 32), a1);
        v13 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a2 - 32), (a1 + 32));
        if (v12)
        {
          if (v13)
          {
            v14 = (a1 + 24);
            v15 = *(a1 + 16);
            v16 = *a1;
            v17 = *(a2 - 16);
            *a1 = *v11;
            *(a1 + 16) = v17;
          }

          else
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 32);
            *(a1 + 16) = *(a1 + 48);
            *(a1 + 32) = v36;
            *(a1 + 48) = v35;
            v14 = (a1 + 56);
            v37 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 56);
            *(a1 + 56) = v37;
            if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a2 - 32), (a1 + 32)))
            {
              return 1;
            }

            v15 = *(a1 + 48);
            v16 = *(a1 + 32);
            v38 = *(a2 - 16);
            *(a1 + 32) = *v11;
            *(a1 + 48) = v38;
          }

          *v11 = v16;
          *(a2 - 16) = v15;
          v27 = (a2 - 8);
        }

        else
        {
          if (!v13)
          {
            return 1;
          }

          v24 = *(a1 + 48);
          v25 = *(a1 + 32);
          v26 = *(a2 - 16);
          *(a1 + 32) = *v11;
          *(a1 + 48) = v26;
          *v11 = v25;
          *(a2 - 16) = v24;
          v27 = (a1 + 56);
          LODWORD(v24) = *(a1 + 56);
          *(a1 + 56) = *(a2 - 8);
          *(a2 - 8) = v24;
          if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 + 32), a1))
          {
            return 1;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 48);
          *(a1 + 32) = v29;
          *(a1 + 48) = v28;
          v14 = (a1 + 24);
        }

        v39 = *v14;
        *v14 = *v27;
        *v27 = v39;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,0>(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,0>(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 32);
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a2 - 32), a1))
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 16);
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      *(a2 - 16) = v8;
      LODWORD(v8) = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v8;
    }

    return 1;
  }

LABEL_13:
  v18 = (a1 + 64);
  v19 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 + 32), a1);
  v20 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 + 64), (a1 + 32));
  if (v19)
  {
    if (v20)
    {
      v21 = (a1 + 24);
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *v18;
      *(a1 + 16) = *(a1 + 80);
    }

    else
    {
      v40 = *(a1 + 16);
      v41 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 48);
      *(a1 + 32) = v41;
      *(a1 + 48) = v40;
      v21 = (a1 + 56);
      v42 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 56);
      *(a1 + 56) = v42;
      if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 + 64), (a1 + 32)))
      {
        goto LABEL_31;
      }

      v22 = *(a1 + 48);
      v23 = *(a1 + 32);
      *(a1 + 32) = *v18;
      *(a1 + 48) = *(a1 + 80);
    }

    *v18 = v23;
    *(a1 + 80) = v22;
    v32 = (a1 + 88);
    goto LABEL_30;
  }

  if (v20)
  {
    v30 = *(a1 + 48);
    v31 = *(a1 + 32);
    *(a1 + 32) = *v18;
    *(a1 + 48) = *(a1 + 80);
    *v18 = v31;
    *(a1 + 80) = v30;
    v32 = (a1 + 56);
    LODWORD(v30) = *(a1 + 56);
    *(a1 + 56) = *(a1 + 88);
    *(a1 + 88) = v30;
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, (a1 + 32), a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 48);
      *(a1 + 32) = v34;
      *(a1 + 48) = v33;
      v21 = (a1 + 24);
LABEL_30:
      v43 = *v21;
      *v21 = *v32;
      *v32 = v43;
    }
  }

LABEL_31:
  v44 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v44, v18))
    {
      v52 = *v44;
      v53 = *(v44 + 16);
      *(v44 + 8) = 0;
      *(v44 + 16) = 0;
      *v44 = 0;
      v54 = *(v44 + 24);
      v47 = v45;
      while (1)
      {
        v48 = a1 + v47;
        if (*(a1 + v47 + 119) < 0)
        {
          operator delete(*(v48 + 96));
        }

        *(v48 + 96) = *(v48 + 64);
        *(v48 + 112) = *(v48 + 80);
        *(v48 + 87) = 0;
        *(v48 + 64) = 0;
        *(v48 + 120) = *(v48 + 88);
        if (v47 == -64)
        {
          break;
        }

        v49 = std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, &v52, (a1 + v47 + 32));
        v47 -= 32;
        if (!v49)
        {
          v50 = a1 + v47 + 96;
          goto LABEL_41;
        }
      }

      v50 = a1;
LABEL_41:
      if (*(v50 + 23) < 0)
      {
        operator delete(*v50);
      }

      *v50 = v52;
      *(v50 + 16) = v53;
      HIBYTE(v53) = 0;
      LOBYTE(v52) = 0;
      *(v50 + 24) = v54;
      if (++v46 == 8)
      {
        return v44 + 32 == a2;
      }
    }

    v18 = v44;
    v45 += 32;
    v44 += 32;
    if (v44 == a2)
    {
      return 1;
    }
  }
}

void sub_1B55D1F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *,std::pair<std::string,int> *>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a4, v12, a1))
        {
          v13 = *(v12 + 16);
          v14 = *v12;
          v15 = a1[1].n128_u64[0];
          *v12 = *a1;
          *(v12 + 16) = v15;
          *a1 = v14;
          a1[1].n128_u64[0] = v13;
          LODWORD(v13) = *(v12 + 24);
          *(v12 + 24) = a1[1].n128_u32[2];
          a1[1].n128_u32[2] = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(a1, a4, v8, a1);
        }

        v12 += 32;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::string,int> *>(a1, v6, a4, v8);
        v6 -= 32;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = (a4 - a1) >> 4;
      v11 = v10 + 1;
      v12 = a1 + 32 * (v10 + 1);
      v13 = v10 + 2;
      if (v10 + 2 < a3 && std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a2, (a1 + 32 * (v10 + 1)), (v12 + 32)))
      {
        v12 += 32;
        v11 = v13;
      }

      if (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a2, v12, v5))
      {
        v18 = *v5;
        v19 = v5[1].n128_u64[0];
        v5->n128_u64[1] = 0;
        v5[1].n128_u64[0] = 0;
        v5->n128_u64[0] = 0;
        v20 = v5[1].n128_u32[2];
        do
        {
          v15 = v12;
          if (v5[1].n128_i8[7] < 0)
          {
            operator delete(v5->n128_u64[0]);
          }

          v16 = *v12;
          v5[1].n128_u64[0] = *(v12 + 16);
          *v5 = v16;
          *(v12 + 23) = 0;
          *v12 = 0;
          v5[1].n128_u32[2] = *(v12 + 24);
          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 32 * v17;
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a2, (a1 + 32 * v17), (v12 + 32)))
          {
            v12 += 32;
          }

          else
          {
            v11 = v17;
          }

          v5 = v15;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a2, v12, &v18));
        if (v15[1].n128_i8[7] < 0)
        {
          operator delete(v15->n128_u64[0]);
        }

        result = v18;
        v15[1].n128_u64[0] = v19;
        *v15 = result;
        v15[1].n128_u32[2] = v20;
      }
    }
  }

  return result;
}

void sub_1B55D2204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<std::string,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = *a1;
    *v16 = *(a1 + 8);
    *&v16[7] = *(a1 + 15);
    v8 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v9 = *(a1 + 24);
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 32);
    v13 = *(v10 + 23);
    if (v10 == (a2 - 32))
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      *v11 = v7;
      *(v11 + 1) = *v16;
      *(v11 + 15) = *&v16[7];
      *(v11 + 23) = v8;
      *(v11 + 6) = v9;
    }

    else
    {
      if (v13 < 0)
      {
        operator delete(*v10);
      }

      v14 = *v12;
      *(v11 + 2) = *(a2 - 16);
      *v11 = v14;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v11 + 6) = *(a2 - 8);
      v15 = (v11 + 2);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v12);
      }

      *(a2 - 32) = v7;
      *(a2 - 24) = *v16;
      *(a2 - 17) = *&v16[7];
      *(a2 - 9) = v8;
      *(a2 - 8) = v9;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(a1, v15, a3, (v15 - a1) >> 5);
    }
  }
}

void sub_1B55D2374(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 4;
      if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a2, v8 + 4, v8 + 8))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    *(v9 + 23) = 0;
    *v9 = 0;
    *(a1 + 6) = *(v9 + 6);
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<std::string,int> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 32 * (v4 >> 1));
    v10 = (a2 - 32);
    if (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v9, (a2 - 32)))
    {
      v14 = *v10;
      v15 = *(v10 + 2);
      *(v10 + 1) = 0;
      *(v10 + 2) = 0;
      *v10 = 0;
      v16 = *(a2 - 8);
      do
      {
        v12 = v9;
        if (*(v10 + 23) < 0)
        {
          operator delete(*v10);
        }

        v13 = *v9;
        *(v10 + 2) = *(v9 + 2);
        *v10 = v13;
        *(v9 + 23) = 0;
        *v9 = 0;
        *(v10 + 6) = *(v9 + 6);
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 32 * v8);
        v10 = v12;
      }

      while (std::__less<void,void>::operator()[abi:ne200100]<std::pair<std::string,int>,std::pair<std::string,int>>(a3, v9, &v14));
      if (*(v12 + 23) < 0)
      {
        operator delete(*v12);
      }

      result = *&v14;
      *v12 = v14;
      *(v12 + 2) = v15;
      *(v12 + 6) = v16;
    }
  }

  return result;
}

void sub_1B55D256C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::SharedPhraseBook::SharedPhraseBook(uint64_t a1, uint64_t *a2, size_t a3, char a4, uint64_t a5, int a6)
{
  v8 = quasar::GenericPhraseBook::GenericPhraseBook(a1, a4, a5);
  *v8 = &unk_1F2D1F660;
  v9 = *a2;
  *a2 = 0;
  *(v8 + 48) = 0u;
  v35 = (v8 + 48);
  *(v8 + 40) = v9;
  *(v8 + 64) = 0u;
  v33 = v8;
  *(v8 + 80) = 1065353216;
  v10 = *(v9 + 8);
  do
  {
    if (!a3)
    {
      break;
    }

    v11 = memchr(v10, 10, a3);
    if (v11)
    {
      v12 = v11 - v10;
    }

    else
    {
      v12 = -1;
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    if (v12)
    {
      if (a3 >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = a3;
      }

      v14 = v10;
LABEL_11:
      if (v13 >= 3)
      {
        v15 = (v14 + v13);
        v16 = v13;
        v17 = v14;
        do
        {
          v18 = memchr(v17, 124, v16 - 2);
          if (!v18)
          {
            break;
          }

          if (*v18 == 31868 && v18[2] == 124)
          {
            if (v18 == v15)
            {
              break;
            }

            v20 = &v18[-v14];
            if (&v18[-v14] == -1)
            {
              break;
            }

            if (v13 >= v20)
            {
              v21 = &v18[-v14];
            }

            else
            {
              v21 = v13;
            }

            quasar::SharedPhraseBook::trimView(v14, v21);
            *&__dst = v14;
            *(&__dst + 1) = v22;
            std::vector<std::string_view>::push_back[abi:ne200100](&v55, &__dst);
            v14 += (v20 + 3);
            v13 -= (v20 + 3);
            if (v13)
            {
              goto LABEL_11;
            }

            goto LABEL_28;
          }

          v17 = v18 + 1;
          v16 = v15 - v17;
        }

        while (v15 - v17 >= 3);
      }

      quasar::SharedPhraseBook::trimView(v14, v13);
      *&__dst = v14;
      *(&__dst + 1) = v23;
      std::vector<std::string_view>::push_back[abi:ne200100](&v55, &__dst);
    }

LABEL_28:
    v53 = 0uLL;
    v54 = 0;
    v24 = v56;
    if (v56 == v55)
    {
      v26 = v56;
    }

    else
    {
      v25 = *(v55 + 1);
      if (a6)
      {
        quasar::GenericPhraseBook::normalizeKey(*v55, *(v55 + 1), v33, &__dst);
      }

      else
      {
        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v27 = *v55;
        if (v25 >= 0x17)
        {
          operator new();
        }

        BYTE7(v37) = *(v55 + 1);
        if (v25)
        {
          memmove(&__dst, v27, v25);
        }

        *(&__dst + v25) = 0;
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(v53);
      }

      v53 = __dst;
      v54 = v37;
      v24 = v55;
      v26 = v56;
    }

    v28 = (v26 - v24) >> 4;
    if (v28 == 3)
    {
      v58 = &v53;
      v30 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v35, &v53);
      v31 = *(v55 + 2);
      __dst = *(v55 + 1);
      v37 = v31;
      std::vector<std::pair<std::string_view,std::string_view>>::push_back[abi:ne200100]((v30 + 5), &__dst);
    }

    else if (v28 == 2)
    {
      v58 = &v53;
      v29 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v35, &v53);
      __dst = *(v55 + 1);
      v37 = 0uLL;
      std::vector<std::pair<std::string_view,std::string_view>>::push_back[abi:ne200100]((v29 + 5), &__dst);
    }

    else if (quasar::gLogLevel >= 1)
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
      v37 = 0u;
      v38 = 0u;
      __dst = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&__dst);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__dst, "Malformed phrasebook line:", 26);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&__dst);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    v10 += v12 + 1;
    a3 -= v12 + 1;
  }

  while (v12 != -1);
  return v33;
}

void sub_1B55D2944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, std::locale a13)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a13);
  if (*(v13 - 137) < 0)
  {
    operator delete(*(v13 - 160));
  }

  v15 = *(v13 - 128);
  if (v15)
  {
    *(v13 - 120) = v15;
    operator delete(v15);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(a12);
  v16 = a10[5];
  a10[5] = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  *a10 = &unk_1F2D12C18;
  a13.__locale_ = (a10 + 2);
  std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void std::vector<std::string_view>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(a1, v10);
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

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> quasar::SharedPhraseBook::trimView(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v2 = std::string_view::find_first_not_of[abi:ne200100](&v4, " \t\n\r\f\v", 0);
  if (v5 >= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v5;
  }

  v4 += v3;
  v5 -= v3;
  std::string_view::find_last_not_of[abi:ne200100](&v4, " \t\n\r\f\v", 0xFFFFFFFFFFFFFFFFLL);
}

void std::vector<std::pair<std::string_view,std::string_view>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,std::string_view>>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t std::string_view::find_first_not_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = strlen(__s);
  v8 = v6 > a3;
  v9 = v6 - a3;
  if (!v8)
  {
    return -1;
  }

  v10 = v7;
  v11 = (v5 + a3);
  if (v7)
  {
    while (memchr(__s, *v11, v10))
    {
      ++v11;
      if (!--v9)
      {
        return -1;
      }
    }
  }

  return &v11[-v5];
}

unint64_t std::string_view::find_last_not_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = strlen(__s);
  if (v6 > a3)
  {
    v8 = a3 + 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8 - 1;
  do
  {
    v10 = v9;
    if (v9 == -1)
    {
      break;
    }

    if (!v7)
    {
      break;
    }

    v11 = memchr(__s, *(v5 + v9), v7);
    v9 = v10 - 1;
  }

  while (v11);
  return v10;
}

void quasar::SharedPhraseBook::getPhraseBook(uint64_t a1@<X0>, std::string::value_type a2@<W1>, __int128 *a3@<X2>, std::string::value_type a4@<W3>, void *a5@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = a2;
  v48 = a4;
  {
    operator new();
  }

  {
    operator new();
  }

  v8 = quasar::SharedPhraseBook::getPhraseBook(std::string const&,BOOL,std::string const&,BOOL)::m;
  std::mutex::lock(quasar::SharedPhraseBook::getPhraseBook(std::string const&,BOOL,std::string const&,BOOL)::m);
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbS8_bEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS8_bS8_bEJEJEJRKS8_RbSC_SD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_(&v45, a1, &v49, a3, &v48);
  v9 = std::__tree<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::__map_value_compare<std::tuple<std::string,BOOL,std::string,BOOL>,std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::less<std::tuple<std::string,BOOL,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>>>::find<std::tuple<std::string,BOOL,std::string,BOOL>>(quasar::SharedPhraseBook::getPhraseBook(std::string const&,BOOL,std::string const&,BOOL)::dataFileMap, &v45);
  v10 = v9;
  if (quasar::SharedPhraseBook::getPhraseBook(std::string const&,BOOL,std::string const&,BOOL)::dataFileMap + 8 == v9 || (*a5 = 0, a5[1] = 0, (v11 = *(v9 + 104)) == 0))
  {
LABEL_11:
    v53 = 0;
    v14 = MEMORY[0x1E69E5528] + 64;
    v52 = MEMORY[0x1E69E5528] + 64;
    v15 = *(MEMORY[0x1E69E54C8] + 16);
    v50[0] = *(MEMORY[0x1E69E54C8] + 8);
    *(v50 + *(v50[0] - 24)) = v15;
    v50[1] = 0;
    v16 = (v50 + *(v50[0] - 24));
    std::ios_base::init(v16, v51);
    v17 = MEMORY[0x1E69E5528] + 24;
    v16[1].__vftable = 0;
    v16[1].__fmtflags_ = -1;
    v50[0] = v17;
    v52 = v14;
    MEMORY[0x1B8C849F0](v51);
    std::ifstream::open();
    if ((v51[*(v50[0] - 24) + 16] & 5) == 0)
    {
      fst::FstReadOptions::FstReadOptions(&__p, a1, 0, 0, 0);
      v27 = 2;
      std::istream::tellg();
      std::istream::seekg();
      if (quasar::gLogLevel >= 4)
      {
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
        v32 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v28);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "Loading phrasebook: ", 20);
        v19 = *(a1 + 23);
        if (v19 >= 0)
        {
          v20 = a1;
        }

        else
        {
          v20 = *a1;
        }

        if (v19 >= 0)
        {
          v21 = *(a1 + 23);
        }

        else
        {
          v21 = *(a1 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v28);
      }

      operator new();
    }

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
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v28);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "failed to open phrasebook file ", 31);
    v23 = *(a1 + 23);
    if (v23 >= 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 23);
    }

    else
    {
      v25 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v28);
  }

  v12 = std::__shared_weak_count::lock(v11);
  a5[1] = v12;
  if (v12)
  {
    v13 = *(v10 + 96);
    *a5 = v13;
    if (!v13)
    {
LABEL_9:
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      goto LABEL_11;
    }
  }

  else if (!*a5)
  {
    goto LABEL_9;
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v8);
}

void sub_1B55D33CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B55D33DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  v59 = *(v58 + 8);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&STACK[0x238], MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](a9);
  std::tuple<std::string,BOOL,std::string,BOOL>::~tuple(&a57);
  std::mutex::unlock(v57);
  JUMPOUT(0x1B55D34F0);
}

void quasar::SharedPhraseBook::getEntries(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  quasar::GenericPhraseBook::normalizeKey(a2, v6, a1, __p);
  v7 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 48), __p);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v7)
  {
    v8 = v7[5];
    for (i = v7[6]; v8 != i; v8 += 4)
    {
      v10 = v8[1];
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = *v8;
      if (v10 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v33) = v8[1];
      if (v10)
      {
        memmove(&__dst, v11, v10);
      }

      *(&__dst + v10) = 0;
      v12 = v8[3];
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v8[2];
      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = v8[3];
      if (v12)
      {
        memmove(&v30, v13, v12);
      }

      *(&v30 + v12) = 0;
      *__p = __dst;
      v35 = v33;
      v33 = 0;
      __dst = 0uLL;
      v36 = v30;
      v37 = v31;
      v14 = *(a3 + 8);
      v15 = *(a3 + 16);
      if (v14 >= v15)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 4);
        v20 = v19 + 1;
        if (v19 + 1 > 0x555555555555555)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 4);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x2AAAAAAAAAAAAAALL)
        {
          v22 = 0x555555555555555;
        }

        else
        {
          v22 = v20;
        }

        v38.__end_cap_.__value_ = a3;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(a3, v22);
        }

        v23 = 48 * v19;
        v24 = *__p;
        *(v23 + 16) = v35;
        *v23 = v24;
        v25 = v36;
        *(v23 + 40) = v37;
        *(v23 + 24) = v25;
        v18 = 48 * v19 + 48;
        v26 = *(a3 + 8) - *a3;
        v27 = 48 * v19 - v26;
        memcpy((v23 - v26), *a3, v26);
        v28 = *a3;
        *a3 = v27;
        *(a3 + 8) = v18;
        v29 = *(a3 + 16);
        *(a3 + 16) = 0;
        v38.__end_ = v28;
        v38.__end_cap_.__value_ = v29;
        v38.__first_ = v28;
        v38.__begin_ = v28;
        std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v38);
      }

      else
      {
        v16 = *__p;
        *(v14 + 16) = v35;
        *v14 = v16;
        v17 = v36;
        *(v14 + 40) = v37;
        *(v14 + 24) = v17;
        v18 = v14 + 48;
      }

      *(a3 + 8) = v18;
    }
  }
}

void sub_1B55D37EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEbS8_bEEC2B8ne200100IJLm0ELm1ELm2ELm3EEJS8_bS8_bEJEJEJRKS8_RbSC_SD_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSF_IJDpT2_EEEDpOT3_(std::string *this, __int128 *a2, std::string::value_type *a3, __int128 *a4, std::string::value_type *a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  this[1].__r_.__value_.__s.__data_[0] = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    this[2].__r_.__value_.__r.__words[0] = *(a4 + 2);
    *&this[1].__r_.__value_.__r.__words[1] = v10;
  }

  this[2].__r_.__value_.__s.__data_[8] = *a5;
  return this;
}

void sub_1B55D38EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::tuple<std::string,BOOL,std::string,BOOL>::~tuple(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string_view>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string_view,std::string_view>>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
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

void sub_1B55D3BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<float>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string_view,std::string_view>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::__map_value_compare<std::tuple<std::string,BOOL,std::string,BOOL>,std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::less<std::tuple<std::string,BOOL,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>>>::find<std::tuple<std::string,BOOL,std::string,BOOL>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,BOOL,std::string,BOOL>,std::tuple<std::string,BOOL,std::string,BOOL>>(&v9, v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,BOOL,std::string,BOOL>,std::tuple<std::string,BOOL,std::string,BOOL>>(&v10, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,BOOL,std::string,BOOL>,std::tuple<std::string,BOOL,std::string,BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
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

  v17 = *(a2 + 24);
  v18 = *(a3 + 24);
  if (v17 < v18)
  {
    return 1;
  }

  return v18 >= v17 && std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<std::string,BOOL,std::string,BOOL>,std::tuple<std::string,BOOL,std::string,BOOL>>(&v19, a2, a3);
}

BOOL std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<std::string,BOOL,std::string,BOOL>,std::tuple<std::string,BOOL,std::string,BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 55);
  v6 = *(a2 + 55);
  if (v6 >= 0)
  {
    v7 = *(a2 + 55);
  }

  else
  {
    v7 = *(a2 + 40);
  }

  if (v6 >= 0)
  {
    v8 = (a2 + 32);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 55);
  }

  else
  {
    v9 = *(a3 + 40);
  }

  if (v5 >= 0)
  {
    v10 = (a3 + 32);
  }

  else
  {
    v10 = *(a3 + 32);
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

  return !v16 && *(a2 + 56) < *(a3 + 56);
}

void sub_1B55D4000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<quasar::SharedPhraseBook>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::SharedPhraseBook *,std::shared_ptr<quasar::SharedPhraseBook>::__shared_ptr_default_delete<quasar::SharedPhraseBook,quasar::SharedPhraseBook>,std::allocator<quasar::SharedPhraseBook>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::SharedPhraseBook *,std::shared_ptr<quasar::SharedPhraseBook>::__shared_ptr_default_delete<quasar::SharedPhraseBook,quasar::SharedPhraseBook>,std::allocator<quasar::SharedPhraseBook>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<quasar::SharedPhraseBook>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *a2 = &unk_1F2D1F660;
    std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(a2 + 48);
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *a2 = &unk_1F2D12C18;
    v4 = (a2 + 16);
    std::vector<std::pair<std::basic_regex<wchar_t,std::regex_traits<wchar_t>>,std::wstring>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x1B8C85350](a2, 0x10A1C40AAE2D2D9);
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::__map_value_compare<std::tuple<std::string,BOOL,std::string,BOOL>,std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::less<std::tuple<std::string,BOOL,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>>>::__emplace_unique_key_args<std::tuple<std::string,BOOL,std::string,BOOL>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,BOOL,std::string,BOOL> const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::__map_value_compare<std::tuple<std::string,BOOL,std::string,BOOL>,std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::less<std::tuple<std::string,BOOL,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>>>::__find_equal<std::tuple<std::string,BOOL,std::string,BOOL>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::__map_value_compare<std::tuple<std::string,BOOL,std::string,BOOL>,std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::less<std::tuple<std::string,BOOL,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,BOOL,std::string,BOOL> const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::__map_value_compare<std::tuple<std::string,BOOL,std::string,BOOL>,std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,std::less<std::tuple<std::string,BOOL,std::string,BOOL>>,true>,std::allocator<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>>>::__find_equal<std::tuple<std::string,BOOL,std::string,BOOL>>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,BOOL,std::string,BOOL>,std::tuple<std::string,BOOL,std::string,BOOL>>(&v9, a3, (v4 + 4)))
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

      if (!std::__tuple_less<4ul>::operator()[abi:ne200100]<std::tuple<std::string,BOOL,std::string,BOOL>,std::tuple<std::string,BOOL,std::string,BOOL>>(&v10, (v7 + 4), a3))
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

void sub_1B55D4318(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul,3ul>,std::string,BOOL,std::string,BOOL>::__tuple_impl(std::string *this, __int128 *a2)
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

  this[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
    *&this[1].__r_.__value_.__r.__words[1] = v5;
  }

  this[2].__r_.__value_.__s.__data_[8] = *(a2 + 56);
  return this;
}

void sub_1B55D43BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,BOOL,std::string,BOOL>,std::weak_ptr<quasar::SharedPhraseBook>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 13);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    if (__p[87] < 0)
    {
      operator delete(*(__p + 8));
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

uint64_t kaldi::Matrix<float>::Matrix<double>(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 111)
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 12), *(a2 + 8), 0, 0);
    v5 = 111;
  }

  else
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 8), *(a2 + 12), 0, 0);
    v5 = 112;
  }

  kaldi::MatrixBase<float>::CopyFromMat<double>(a1, a2, v5);
  return a1;
}

void kaldi::MatrixBase<float>::CopyFromMat<double>(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 111)
  {
    if (*(a1 + 12) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *a1 + 4 * *(a1 + 16) * v5;
        v7 = *(a1 + 8);
        v27 = 0;
        v28 = 0;
        v25 = v6;
        v26 = v7;
        v8 = (*a2 + 8 * *(a2 + 16) * v5);
        v9 = *(a2 + 8);
        v23 = 0;
        v24 = 0;
        v21 = v8;
        v22 = v9;
        kaldi::VectorBase<float>::CopyFromVec<double>(&v25, &v21);
        ++v5;
      }

      while (v5 < *(a1 + 12));
    }
  }

  else
  {
    v10 = *(a1 + 12);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = *(a1 + 8);
      v13 = *a1;
      v14 = *a2;
      v15 = 4 * *(a1 + 16);
      v16 = 8 * *(a2 + 16);
      do
      {
        v17 = v12;
        v18 = v14;
        v19 = v13;
        if (v12 >= 1)
        {
          do
          {
            v20 = *v18;
            *v19++ = v20;
            v18 = (v18 + v16);
            --v17;
          }

          while (v17);
        }

        ++v11;
        v13 = (v13 + v15);
        ++v14;
      }

      while (v11 != v10);
    }
  }
}

uint64_t kaldi::Matrix<double>::Matrix<float>(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 111)
  {
    kaldi::Matrix<double>::Resize(a1, *(a2 + 12), *(a2 + 8), 0, 0);
    v5 = 111;
  }

  else
  {
    kaldi::Matrix<double>::Resize(a1, *(a2 + 8), *(a2 + 12), 0, 0);
    v5 = 112;
  }

  kaldi::MatrixBase<double>::CopyFromMat<float>(a1, a2, v5);
  return a1;
}

void kaldi::Matrix<double>::Resize(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = *(a1 + 16);
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 20) / v10;
  }

  if (v10 == a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a5;
  }

  v13 = *a1;
  if (a4 == 3)
  {
    if (!v13)
    {
      v6 = 0;
      goto LABEL_43;
    }

    if (*(a1 + 12) == a2)
    {
      v17 = *(a1 + 8) == a3 ? v12 : 1;
      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v6 = 0;
  }

  else
  {
    if (a4 == 2)
    {
      v6 = 0;
      if (a2)
      {
        if (v13)
        {
          if (v10 < a3 || v11 < a2)
          {
            v12 = 1;
          }

          v15 = *(a1 + 12);
          if (v12)
          {
            v16 = a2 <= v15 && *(a1 + 8) >= a3;
            v56 = 0;
            memset(memptr, 0, sizeof(memptr));
            kaldi::Matrix<double>::Resize(memptr, a2, a3, v16, a5);
            v26 = *(a1 + 8);
            v25 = *(a1 + 12);
            if (v25 >= v8)
            {
              v25 = v8;
            }

            if (v26 >= v7)
            {
              v26 = v7;
            }

            v53 = 0;
            v54 = 0;
            if (v25 && v26)
            {
              v27 = memptr[0];
              v53 = memptr[2];
              v49 = 0;
              v28 = *a1;
              v48 = *(a1 + 16);
            }

            else
            {
              v27 = 0;
              v26 = 0;
              v25 = 0;
              v28 = 0;
              v48 = 0;
              v49 = 0;
            }

            v50 = v27;
            v51 = v26;
            v52 = v25;
            v45 = v28;
            v46 = v26;
            v47 = v25;
            kaldi::MatrixBase<double>::CopyFromMat<double>(&v50, &v45, 111);
            v29 = memptr[0];
            memptr[0] = *a1;
            v30 = memptr[0];
            *a1 = v29;
            v31 = *&memptr[1];
            *&memptr[1] = *(a1 + 8);
            *(a1 + 8) = v31;
            v32 = v56;
            v33 = *(a1 + 32);
            v56 = v33;
            *(a1 + 32) = v32;
            if (v30)
            {
              if ((v33 & 1) == 0)
              {
                free(v30);
              }
            }

            return;
          }

          v23 = *(a1 + 8);
          *(a1 + 8) = v10;
          *(a1 + 12) = v11;
          if (a3 > v23)
          {
            v24 = &v13[8 * v23];
            if (a3 - v23 == v10)
            {
              bzero(&v13[8 * v23], 8 * v10 * a2);
            }

            else if (a2 >= 1)
            {
              v34 = 8 * (a3 - v23);
              v35 = 8 * v10;
              v36 = a2;
              do
              {
                bzero(v24, v34);
                v24 += v35;
                --v36;
              }

              while (v36);
            }
          }

          v37 = v8 - v15;
          if (v8 > v15)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            if (v7 && v37)
            {
              v41 = *(a1 + 16);
              v38 = (*a1 + 8 * v41 * v15);
              if (v41 != v7)
              {
                if (v37 >= 1)
                {
                  v42 = 8 * v41;
                  do
                  {
                    bzero(v38, 8 * v7);
                    v38 += v42;
                    --v37;
                  }

                  while (v37);
                }

                goto LABEL_78;
              }

              v39 = v8 - v15;
              v40 = v7;
            }

            bzero(v38, 8 * v39 * v40);
          }

LABEL_78:
          *(a1 + 8) = v7;
          *(a1 + 12) = v8;
          return;
        }
      }
    }

    if (!v13)
    {
      goto LABEL_43;
    }
  }

  if (v10 >= a3 && v11 >= a2)
  {
    v19 = v12;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    *(a1 + 8) = a3;
    *(a1 + 12) = a2;
    if (!v6)
    {

      kaldi::MatrixBase<double>::SetZero(a1);
    }

    return;
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    free(v13);
  }

  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
LABEL_43:
  if (!(v7 * v8))
  {
    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    if (v6)
    {
      return;
    }

LABEL_53:
    kaldi::MatrixBase<double>::SetZero(a1);
    return;
  }

  memptr[0] = 0;
  v20 = v7 & 1;
  if (v5)
  {
    v20 = 0;
  }

  v21 = v20 + v7;
  if (malloc_type_posix_memalign(memptr, 0x10uLL, 8 * v8 * (v20 + v7), 0x77C5AFA7uLL))
  {
    v22 = 1;
  }

  else
  {
    v22 = memptr[0] == 0;
  }

  if (v22)
  {
    exception = __cxa_allocate_exception(8uLL);
    v44 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v44, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  *a1 = memptr[0];
  *(a1 + 32) = 0;
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v21;
  *(a1 + 20) = v21 * v8;
  if (!v6)
  {
    goto LABEL_53;
  }
}

void sub_1B55D4A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

void kaldi::MatrixBase<double>::CopyFromMat<float>(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 111)
  {
    if (*(a1 + 12) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *a1 + 8 * *(a1 + 16) * v5;
        v7 = *(a1 + 8);
        v26 = 0;
        v27 = 0;
        v24 = v6;
        v25 = v7;
        v8 = (*a2 + 4 * *(a2 + 16) * v5);
        v9 = *(a2 + 8);
        v22 = 0;
        v23 = 0;
        v20 = v8;
        v21 = v9;
        kaldi::VectorBase<double>::CopyFromVec<float>(&v24, &v20);
        ++v5;
      }

      while (v5 < *(a1 + 12));
    }
  }

  else
  {
    v10 = *(a1 + 12);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = *(a1 + 8);
      v13 = *a1;
      v14 = *a2;
      v15 = 8 * *(a1 + 16);
      v16 = 4 * *(a2 + 16);
      do
      {
        v17 = v12;
        v18 = v14;
        v19 = v13;
        if (v12 >= 1)
        {
          do
          {
            *v19++ = *v18;
            v18 = (v18 + v16);
            --v17;
          }

          while (v17);
        }

        ++v11;
        v13 = (v13 + v15);
        ++v14;
      }

      while (v11 != v10);
    }
  }
}

int *kaldi::MatrixBase<double>::CopyFromMat<double>(int *result, int *a2, int a3)
{
  if (a2 != result)
  {
    v30 = v3;
    v31 = v4;
    v6 = result;
    if (a3 == 111)
    {
      if (result[3] >= 1)
      {
        v7 = 0;
        do
        {
          v8 = *v6 + 8 * v6[4] * v7;
          v9 = v6[2];
          v28 = 0;
          v29 = 0;
          v26 = v8;
          v27 = v9;
          v10 = (*a2 + 8 * a2[4] * v7);
          v11 = a2[2];
          v24 = 0;
          v25 = 0;
          v22 = v10;
          v23 = v11;
          result = kaldi::VectorBase<double>::CopyFromVec(&v26, &v22);
          ++v7;
        }

        while (v7 < v6[3]);
      }
    }

    else
    {
      v12 = result[3];
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = result[2];
        v15 = *result;
        v16 = *a2;
        v17 = 8 * result[4];
        v18 = 8 * a2[4];
        do
        {
          v19 = v14;
          v20 = v16;
          v21 = v15;
          if (v14 >= 1)
          {
            do
            {
              *v21++ = *v20;
              v20 = (v20 + v18);
              --v19;
            }

            while (v19);
          }

          ++v13;
          v15 = (v15 + v17);
          ++v16;
        }

        while (v13 != v12);
      }
    }
  }

  return result;
}

void kaldi::MatrixBase<double>::SetZero(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 16))
  {
    v3 = *a1;
    v4 = 8 * v2 * *(a1 + 12);

    bzero(v3, v4);
  }

  else if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      bzero((*a1 + 8 * *(a1 + 16) * v5++), 8 * *(a1 + 8));
    }

    while (v5 < *(a1 + 12));
  }
}

uint64_t kaldi::MatrixBase<float>::CopyFromMat<signed char>(uint64_t a1, float *a2, int a3)
{
  kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (a3 == 111)
  {
    result = kaldi::quasar::Vocab::VocabSize(a2);
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      for (i = 0; i < v7; ++i)
      {
        if (result >= 1)
        {
          v9 = 0;
          do
          {
            v10 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v11 = *(v10 + (kaldi::QuantizedMatrixBase<short>::NumCols(a2) * v9) + i) / a2[3];
            v7 = *(a1 + 8);
            result = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v9++ + 4 * i) = v11;
          }

          while (v9 < result);
        }
      }
    }
  }

  else
  {
    result = kaldi::quasar::Vocab::VocabSize(a2);
    if (result >= 1)
    {
      v12 = 0;
      LODWORD(v13) = *(a1 + 12);
      do
      {
        if (v13 >= 1)
        {
          v14 = 0;
          do
          {
            v15 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v16 = *(v15 + (v12 * kaldi::QuantizedMatrixBase<short>::NumCols(a2)) + v14) / a2[3];
            result = *(a1 + 8);
            v13 = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v14++ + 4 * v12) = v16;
          }

          while (v14 < v13);
        }

        ++v12;
      }

      while (v12 < result);
    }
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopyFromMat<short>(uint64_t a1, float *a2, int a3)
{
  kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (a3 == 111)
  {
    result = kaldi::quasar::Vocab::VocabSize(a2);
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      for (i = 0; i < v7; ++i)
      {
        if (result >= 1)
        {
          v9 = 0;
          do
          {
            v10 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v11 = *(v10 + 2 * (kaldi::QuantizedMatrixBase<short>::NumCols(a2) * v9) + 2 * i) / a2[3];
            v7 = *(a1 + 8);
            result = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v9++ + 4 * i) = v11;
          }

          while (v9 < result);
        }
      }
    }
  }

  else
  {
    result = kaldi::quasar::Vocab::VocabSize(a2);
    if (result >= 1)
    {
      v12 = 0;
      LODWORD(v13) = *(a1 + 12);
      do
      {
        if (v13 >= 1)
        {
          v14 = 0;
          do
          {
            v15 = kaldi::QuantizedMatrixBase<signed char>::Data(a2);
            v16 = *(v15 + 2 * (v12 * kaldi::QuantizedMatrixBase<short>::NumCols(a2)) + 2 * v14) / a2[3];
            result = *(a1 + 8);
            v13 = *(a1 + 12);
            *(*a1 + 4 * *(a1 + 16) * v14++ + 4 * v12) = v16;
          }

          while (v14 < v13);
        }

        ++v12;
      }

      while (v12 < result);
    }
  }

  return result;
}

uint64_t kaldi::Matrix<float>::Matrix<signed char>(uint64_t a1, kaldi::quasar::Vocab *this)
{
  v4 = kaldi::quasar::Vocab::VocabSize(this);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(this);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  kaldi::Matrix<float>::Resize(a1, v4, v5, 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<signed char>(a1, this, 111);
  return a1;
}

void sub_1B55D5054(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      free(*v1);
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Matrix<float>::Matrix<short>(uint64_t a1, kaldi::quasar::Vocab *this)
{
  v4 = kaldi::quasar::Vocab::VocabSize(this);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(this);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  kaldi::Matrix<float>::Resize(a1, v4, v5, 0, 0);
  kaldi::MatrixBase<float>::CopyFromMat<short>(a1, this, 111);
  return a1;
}

void sub_1B55D50F8(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      free(*v1);
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::MatrixBase<float>::AddVecToCols<float>(uint64_t *result, uint64_t *a2, float a3)
{
  v3 = *(result + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 2);
    v6 = *a2;
    v7 = *result;
    v8 = 4 * *(result + 4);
    do
    {
      if (v5 >= 1)
      {
        v9 = 0;
        v10 = *(v6 + 4 * v4) * a3;
        do
        {
          *(v7 + v9) = v10 + *(v7 + v9);
          v9 += 4;
        }

        while (4 * v5 != v9);
      }

      ++v4;
      v7 += v8;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *(result + 24) = 0;
  *(result + 32) = 1;
  *result = a2;
  *(result + 8) = a4;
  *(result + 12) = a3;
  *(result + 16) = a5;
  *(result + 20) = a5 * a3;
  return result;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 111)
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 12), *(a2 + 8), 0, 0);
    v5 = 111;
  }

  else
  {
    kaldi::Matrix<float>::Resize(a1, *(a2 + 8), *(a2 + 12), 0, 0);
    v5 = 112;
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2, v5);
  return a1;
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  kaldi::Matrix<float>::Resize(a1, v5, v6, 1, 0);
  kaldi::CompressedMatrix::CopyToMat<float>(a2, a1);
  return a1;
}

uint64_t kaldi::MatrixBase<float>::AddMat(uint64_t result, int *a2, int a3, float a4, float a5)
{
  v6 = result;
  if (a2 == result)
  {
    if (a3 == 111)
    {
      v15 = a4 + a5;

      return kaldi::MatrixBase<float>::Scale(result, v15);
    }

    else
    {
      v18 = *(result + 12);
      v19 = *result;
      if (a4 == 1.0 && a5 == 1.0)
      {
        if (v18 >= 1)
        {
          v30 = 0;
          v31 = *(result + 16);
          v32 = 4 * v31;
          v33 = *result;
          v34 = *result;
          do
          {
            if (v30)
            {
              v35 = 0;
              v36 = v30 * v31;
              v37 = v34;
              do
              {
                v38 = v33[v35] + *v37;
                *v37 = v38;
                v33[v35++] = v38;
                v37 = (v37 + v32);
              }

              while (v30 != v35);
            }

            else
            {
              v36 = 0;
            }

            v19[v36 + v30] = v19[v36 + v30] + v19[v36 + v30];
            ++v30;
            ++v34;
            v33 = (v33 + v32);
          }

          while (v30 != v18);
        }
      }

      else if (v18 >= 1)
      {
        v21 = 0;
        v22 = *(result + 16);
        v23 = 4 * v22;
        v24 = *result;
        v25 = *result;
        do
        {
          if (v21)
          {
            v26 = 0;
            v27 = v21 * v22;
            v28 = v25;
            do
            {
              v29 = v24[v26];
              v24[v26] = (v29 * a5) + (a4 * *v28);
              *v28 = (*v28 * a5) + (a4 * v29);
              ++v26;
              v28 = (v28 + v23);
            }

            while (v21 != v26);
          }

          else
          {
            v27 = 0;
          }

          v19[v27 + v21] = (a4 + a5) * v19[v27 + v21];
          ++v21;
          ++v25;
          v24 = (v24 + v23);
        }

        while (v21 != v18);
      }
    }
  }

  else
  {
    if (a5 != 1.0)
    {
      result = kaldi::MatrixBase<float>::Scale(result, a5);
    }

    v8 = a2[4];
    v9 = *(v6 + 16);
    v10 = *a2;
    v11 = *v6;
    if (a3 == 111)
    {
      if (a2[3] >= 1)
      {
        v12 = 0;
        v13 = 4 * v9;
        v14 = 4 * v8;
        do
        {
          result = cblas_saxpy_NEWLAPACK_ILP64();
          ++v12;
          v11 += v13;
          v10 += v14;
        }

        while (v12 < *(v6 + 12));
      }
    }

    else if (a2[2] >= 1)
    {
      v16 = 0;
      v17 = 4 * v9;
      do
      {
        result = cblas_saxpy_NEWLAPACK_ILP64();
        ++v16;
        v10 += 4;
        v11 += v17;
      }

      while (v16 < *(v6 + 12));
    }
  }

  return result;
}

void kaldi::Matrix<double>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a3;
  v91 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v81 = 0;
    *v79 = 0u;
    v80 = 0u;
    kaldi::Matrix<double>::Read(v79, a2, a3, 0, a5);
    v9 = *(a1 + 12);
    if (v9)
    {
      if (v9 != HIDWORD(v79[1]))
      {
        if (HIDWORD(v79[1]))
        {
          goto LABEL_130;
        }

        goto LABEL_16;
      }

      if (*(a1 + 8) != LODWORD(v79[1]))
      {
LABEL_130:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v87);
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "Matrix::Read, size mismatch ", 28);
        v59 = MEMORY[0x1B8C84C00](v58, *(a1 + 12));
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ", ", 2);
        v61 = MEMORY[0x1B8C84C00](v60, *(a1 + 8));
        v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " vs. ", 5);
        v63 = MEMORY[0x1B8C84C00](v62, HIDWORD(v79[1]));
        v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ", ", 2);
        MEMORY[0x1B8C84C00](v64, LODWORD(v79[1]));
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v87);
      }
    }

    else
    {
      kaldi::Matrix<double>::Resize(a1, HIDWORD(v79[1]), LODWORD(v79[1]), 0, 0);
    }

    kaldi::MatrixBase<double>::AddMat(a1, v79, 111, 1.0, 1.0);
LABEL_16:
    if (v79[0])
    {
      if ((v81 & 1) == 0)
      {
        free(v79[0]);
      }
    }

    return;
  }

  std::istream::tellg();
  v10 = v90;
  std::ostringstream::basic_ostringstream[abi:ne200100](v79);
  if (!v6)
  {
    memset(&v85, 0, sizeof(v85));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v85);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": Expected [, got EOF", 23);
LABEL_92:
      v41 = 2;
      goto LABEL_93;
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v85.__r_.__value_.__l.__size_ == 2 && *v85.__r_.__value_.__l.__data_ == 23899)
      {
        goto LABEL_112;
      }

      if (v85.__r_.__value_.__l.__size_ != 1)
      {
LABEL_85:
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": Expected [, got ", 21);
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &v85;
        }

        else
        {
          v38 = v85.__r_.__value_.__r.__words[0];
        }

        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v85.__r_.__value_.__l.__size_;
        }

        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, size);
        LOBYTE(v87[0]) = 34;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v87, 1);
        goto LABEL_92;
      }

      v27 = v85.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (HIBYTE(v85.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v85.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v85.__r_.__value_.__l.__data_) == 23899)
        {
LABEL_112:
          kaldi::Matrix<double>::Resize(a1, 0, 0, 0, 0);
          v41 = 1;
LABEL_93:
          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          if ((v41 | 2) != 2)
          {
            goto LABEL_126;
          }

          goto LABEL_96;
        }

        goto LABEL_85;
      }

      v27 = &v85;
    }

    if (v27->__r_.__value_.__s.__data_[0] == 91)
    {
      __p = 0;
      v77 = 0;
      v78 = 0;
      operator new();
    }

    goto LABEL_85;
  }

  v11 = kaldi::Peek(a2, 1);
  if (v11 == 70)
  {
    if (a5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v87);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "Can not map into the wrong matrix data type", 43);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v87);
    }

    v15 = *(a1 + 8);
    v14 = *(a1 + 12);
    *v87 = 0u;
    v88 = 0u;
    v89 = 0;
    kaldi::Matrix<float>::Resize(v87, v14, v15, 0, 0);
    kaldi::Matrix<float>::Read(v87, a2, 1, 0, 0, v16);
    kaldi::Matrix<double>::Resize(a1, HIDWORD(v87[1]), LODWORD(v87[1]), 0, 0);
    kaldi::MatrixBase<double>::CopyFromMat<float>(a1, v87, 111);
    if (v87[0] && (v89 & 1) == 0)
    {
      free(v87[0]);
    }

    goto LABEL_126;
  }

  if (v11 != 67)
  {
    memset(&v85, 0, sizeof(v85));
    std::string::append(&v85, "D");
    v17 = a5 != 0;
    if (a5)
    {
      v18 = "N";
    }

    else
    {
      v18 = "M";
    }

    std::string::append(&v85, v18);
    __p = 0;
    v77 = 0;
    v78 = 0;
    kaldi::ReadToken(a2, 1, &__p);
    v19 = SHIBYTE(v78);
    v20 = v77;
    if (v78 >= 0)
    {
      v21 = HIBYTE(v78);
    }

    else
    {
      v21 = v77;
    }

    v22 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    v23 = SHIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v85.__r_.__value_.__l.__size_;
    }

    if (v21 == v22)
    {
      v24 = v78 >= 0 ? &__p : __p;
      v25 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
      if (!memcmp(v24, v25, v21))
      {
LABEL_64:
        LODWORD(v73) = 0;
        LODWORD(v74) = 0;
        v75 = 0;
        kaldi::ReadBasicType<int>(a2, 1, &v73);
        kaldi::ReadBasicType<int>(a2, 1, &v74);
        if (v17)
        {
          kaldi::ReadBasicType<int>(a2, 1, &v75);
          fst::AlignInput();
        }

        else
        {
          v75 = v74;
        }

        v31 = v73;
        if (a5)
        {
          *(a1 + 8) = v74;
          *(a1 + 12) = v31;
          *(a1 + 16) = v75;
          if (*a1 && (*(a1 + 32) & 1) == 0)
          {
            free(*a1);
          }

          std::istream::tellg();
          *a1 = a5 + v90;
          *(a1 + 32) = 1;
          std::istream::seekg();
          v32 = *a2;
          if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": Seeking failed", 16);
LABEL_120:
            v53 = 1;
            goto LABEL_121;
          }
        }

        else
        {
          v33 = v74;
          if (v73 == *(a1 + 12) && v74 == *(a1 + 8))
          {
            v34 = v74;
          }

          else
          {
            kaldi::Matrix<double>::Resize(a1, v73, v74, 1, 0);
            v34 = *(a1 + 8);
            v33 = v74;
            v31 = v73;
          }

          v35 = *(a1 + 16);
          v36 = v75;
          if (v35 == v34 && v35 == v75 && v33 * v31)
          {
            std::istream::read();
            v32 = *a2;
            if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
            {
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": Reading whole matrix failed", 29);
              goto LABEL_120;
            }
          }

          else
          {
            if (v31 > 0)
            {
              v49 = 0;
              v50 = 8 * (v75 - v33);
              v51 = a2 + 4;
              while (1)
              {
                std::istream::read();
                v32 = *a2;
                if ((*(v51 + *(*a2 - 24)) & 5) != 0)
                {
                  v54 = v79;
                  v55 = 29;
                  v56 = ": Reading a matrix row failed";
                  goto LABEL_119;
                }

                if (v36 != v33)
                {
                  std::istream::seekg();
                  v32 = *a2;
                  if ((*(v51 + *(*a2 - 24)) & 5) != 0)
                  {
                    break;
                  }
                }

                if (++v49 >= v73)
                {
                  goto LABEL_114;
                }
              }

              v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": Seek for padding ", 19);
              v54 = MEMORY[0x1B8C84C30](v57, v50);
              v56 = " failed";
              v55 = 7;
LABEL_119:
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v56, v55);
              goto LABEL_120;
            }

            v32 = *a2;
          }
        }

LABEL_114:
        v52 = *(a2 + *(v32 - 24) + 32);
        v53 = (v52 & 2) == 0 && (v52 & 5) != 0;
LABEL_121:
        if (SHIBYTE(v78) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        if (!v53)
        {
          goto LABEL_126;
        }

LABEL_96:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v87);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "Failed to read matrix from stream.  ", 36);
        std::stringbuf::str();
        if (v78 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v78 >= 0)
        {
          v44 = HIBYTE(v78);
        }

        else
        {
          v44 = v77;
        }

        v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, p_p, v44);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " File position at start is ", 27);
        v47 = MEMORY[0x1B8C84C00](v46, v10);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ", currently ", 12);
        std::istream::tellg();
        MEMORY[0x1B8C84C60](v48, v86);
        if (SHIBYTE(v78) < 0)
        {
          operator delete(__p);
        }

        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v87);
      }
    }

    if (v19 < 0)
    {
      if (v20 != 2)
      {
        goto LABEL_131;
      }

      v26 = __p;
    }

    else
    {
      if (v19 != 2)
      {
        goto LABEL_131;
      }

      v26 = &__p;
    }

    v28 = *v26;
    v29 = v85.__r_.__value_.__r.__words[0];
    if (v23 >= 0)
    {
      v29 = &v85;
    }

    if (v28 == v29->__r_.__value_.__s.__data_[0])
    {
      v30 = __p;
      if (v19 >= 0)
      {
        v30 = &__p;
      }

      if (v30[1] == 78)
      {
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v87);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, "Reading aligned matrix as a stream", 34);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v87);
        }

        v17 = 1;
        goto LABEL_64;
      }
    }

LABEL_131:
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, ": Expected token ", 17);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v85;
    }

    else
    {
      v66 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v67 = v85.__r_.__value_.__l.__size_;
    }

    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, v67);
    v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, ", got ", 6);
    if (v78 >= 0)
    {
      v70 = &__p;
    }

    else
    {
      v70 = __p;
    }

    if (v78 >= 0)
    {
      v71 = HIBYTE(v78);
    }

    else
    {
      v71 = v77;
    }

    v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ". This could mean that you're trying to memory map an unaligned file.", 69);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    goto LABEL_96;
  }

  v87[0] = 0;
  LOBYTE(v87[1]) = 0;
  kaldi::CompressedMatrix::Read(v87, a2, 1, a5);
  if (v87[0])
  {
    v12 = *(v87[0] + 2);
    v13 = *(v87[0] + 3);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  kaldi::Matrix<double>::Resize(a1, v12, v13, 0, 0);
  kaldi::CompressedMatrix::CopyToMat<double>(v87, a1);
  kaldi::CompressedMatrix::Destroy(v87);
LABEL_126:
  v79[0] = *MEMORY[0x1E69E54E8];
  *(v79 + *(v79[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
  v79[1] = (MEMORY[0x1E69E5548] + 16);
  if (v83 < 0)
  {
    operator delete(v82);
  }

  v79[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v80);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v84);
}

void sub_1B55D6894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67)
  {
    if ((a71 & 1) == 0)
    {
      free(a67);
    }
  }

  JUMPOUT(0x1B55D6920);
}

void sub_1B55D68D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  std::ostringstream::~ostringstream(&a20);
  JUMPOUT(0x1B55D694CLL);
}

void sub_1B55D6934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a17)
  {
    if ((a21 & 1) == 0)
    {
      free(a17);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::Matrix<float>::Init(uint64_t result, unsigned int a2, int a3, int a4)
{
  v4 = result;
  if (a3 * a2)
  {
    memptr = 0;
    v7 = -a3 & 3;
    if (a4)
    {
      v7 = 0;
    }

    v8 = v7 + a3;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2 * (v7 + a3), 0x77C5AFA7uLL);
    if (result)
    {
      v9 = 1;
    }

    else
    {
      v9 = memptr == 0;
    }

    if (v9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v11, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
    }

    *v4 = memptr;
    *(v4 + 32) = 0;
    *(v4 + 8) = a3;
    *(v4 + 12) = a2;
    *(v4 + 16) = v8;
    *(v4 + 20) = v8 * a2;
  }

  else
  {
    *(result + 32) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = 0;
  }

  return result;
}

uint64_t kaldi::Matrix<double>::Matrix(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<double>::Resize(a1, a2, a3, a4, a5);
  return a1;
}

uint64_t kaldi::Matrix<double>::Matrix(uint64_t a1, int *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<double>::Resize(a1, a2[3], a2[2], 1, a2[2] == a2[4]);
  kaldi::MatrixBase<double>::CopyFromMat<double>(a1, a2, 111);
  return a1;
}

uint64_t kaldi::MatrixBase<double>::AddMat(uint64_t result, int *a2, int a3, double a4, double a5)
{
  v6 = result;
  if (a2 == result)
  {
    if (a3 == 111)
    {
      v15 = a4 + a5;

      return kaldi::MatrixBase<double>::Scale(result, v15);
    }

    else
    {
      v18 = *(result + 12);
      v19 = *result;
      if (a4 == 1.0 && a5 == 1.0)
      {
        if (v18 >= 1)
        {
          v30 = 0;
          v31 = *(result + 16);
          v32 = 8 * v31;
          v33 = *result;
          v34 = *result;
          do
          {
            if (v30)
            {
              v35 = 0;
              v36 = v30 * v31;
              v37 = v34;
              do
              {
                v38 = v33[v35] + *v37;
                *v37 = v38;
                v33[v35++] = v38;
                v37 = (v37 + v32);
              }

              while (v30 != v35);
            }

            else
            {
              v36 = 0;
            }

            v19[v36 + v30] = v19[v36 + v30] + v19[v36 + v30];
            ++v30;
            ++v34;
            v33 = (v33 + v32);
          }

          while (v30 != v18);
        }
      }

      else if (v18 >= 1)
      {
        v21 = 0;
        v22 = *(result + 16);
        v23 = 8 * v22;
        v24 = *result;
        v25 = *result;
        do
        {
          if (v21)
          {
            v26 = 0;
            v27 = v21 * v22;
            v28 = v25;
            do
            {
              v29 = v24[v26];
              v24[v26] = v29 * a5 + a4 * *v28;
              *v28 = *v28 * a5 + a4 * v29;
              ++v26;
              v28 = (v28 + v23);
            }

            while (v21 != v26);
          }

          else
          {
            v27 = 0;
          }

          v19[v27 + v21] = (a4 + a5) * v19[v27 + v21];
          ++v21;
          ++v25;
          v24 = (v24 + v23);
        }

        while (v21 != v18);
      }
    }
  }

  else
  {
    if (a5 != 1.0)
    {
      result = kaldi::MatrixBase<double>::Scale(result, a5);
    }

    v8 = a2[4];
    v9 = *(v6 + 16);
    v10 = *a2;
    v11 = *v6;
    if (a3 == 111)
    {
      if (a2[3] >= 1)
      {
        v12 = 0;
        v13 = 8 * v9;
        v14 = 8 * v8;
        do
        {
          result = cblas_daxpy_NEWLAPACK_ILP64();
          ++v12;
          v11 += v13;
          v10 += v14;
        }

        while (v12 < *(v6 + 12));
      }
    }

    else if (a2[2] >= 1)
    {
      v16 = 0;
      v17 = 8 * v9;
      do
      {
        result = cblas_daxpy_NEWLAPACK_ILP64();
        ++v16;
        v10 += 8;
        v11 += v17;
      }

      while (v16 < *(v6 + 12));
    }
  }

  return result;
}

void kaldi::MatrixBase<float>::SetRandn(uint64_t a1)
{
  v11 = kaldi::Rand(0);
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 8);
    do
    {
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = *a1 + 4 * *(a1 + 16) * v3;
        do
        {
          v7 = (kaldi::Rand(&v11) + 1.0) / 2147483650.0;
          v8 = sqrtf(logf(v7) * -2.0);
          v9 = (kaldi::Rand(&v11) + 1.0) / 2147483650.0;
          v10 = v9 * 6.28318531;
          *(v6 + 4 * v5) = v8 * cosf(v10);
          v4 = *(a1 + 8);
          ++v5;
        }

        while (v5 < v4);
        v2 = *(a1 + 12);
      }

      ++v3;
    }

    while (v3 < v2);
  }
}

uint64_t kaldi::MatrixBase<float>::CopyColsFromVec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v2 == v3 * v4)
  {
    if (v3 >= 1)
    {
      v5 = 0;
      v6 = *result;
      v7 = *a2;
      do
      {
        if (v4 >= 1)
        {
          v8 = 0;
          v9 = 4 * *(result + 16);
          v10 = v6;
          do
          {
            *v10 = v7[v8];
            v10 = (v10 + v9);
            ++v8;
          }

          while (v4 != v8);
        }

        ++v6;
        ++v5;
        v7 += v4;
      }

      while (v5 != v3);
    }
  }

  else
  {
    if (v2 != v4)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v24, "Wrong size of arguments.");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
    }

    if (v2 >= 1)
    {
      v11 = 0;
      v12 = *a2;
      v13 = vdupq_n_s64(v3 - 1);
      v14 = vdupq_n_s64(4uLL);
      v15 = *result + 8;
      v16 = 4 * *(result + 16);
      do
      {
        v17 = *v12++;
        v18 = v17;
        if (v3 >= 1)
        {
          v19 = v15;
          v20 = (v3 + 3) & 0xFFFFFFFC;
          v21 = xmmword_1B5AE0060;
          v22 = xmmword_1B5AE0050;
          do
          {
            v23 = vmovn_s64(vcgeq_u64(v13, v21));
            if (vuzp1_s16(v23, *v13.i8).u8[0])
            {
              *(v19 - 2) = v18;
            }

            if (vuzp1_s16(v23, *&v13).i8[2])
            {
              *(v19 - 1) = v18;
            }

            if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v22))).i32[1])
            {
              *v19 = v18;
              v19[1] = v18;
            }

            v22 = vaddq_s64(v22, v14);
            v21 = vaddq_s64(v21, v14);
            v19 += 4;
            v20 -= 4;
          }

          while (v20);
        }

        ++v11;
        v15 += v16;
      }

      while (v11 != v2);
    }
  }

  return result;
}

float kaldi::MatrixBase<float>::CopyColFromVec(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  if (v3 >= 1)
  {
    v4 = *a2;
    v5 = (*a1 + 4 * a3);
    v6 = 4 * *(a1 + 16);
    do
    {
      v7 = *v4++;
      result = v7;
      *v5 = v7;
      v5 = (v5 + v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::ConcatenateVec(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v5 = *(result + 8);
  v4 = *(result + 12);
  v6 = *(a3 + 8);
  v7 = *(a2 + 2);
  v8 = *a3;
  v9 = *a3;
  v10 = **a3;
  v11 = *(a3 + 16);
  v12 = 4 * v11;
  v13 = *a3;
  v14 = v10;
  do
  {
    v15 = v13;
    v16 = v6;
    do
    {
      v17 = *v15++;
      v18 = v17;
      if (v17 < v14)
      {
        v14 = v18;
      }

      --v16;
    }

    while (v16);
    ++v3;
    v13 = (v13 + v12);
  }

  while (v3 != v4);
  v19 = 0;
  do
  {
    v20 = v9;
    v21 = v6;
    do
    {
      v22 = *v20++;
      v23 = v22;
      if (v22 > v10)
      {
        v10 = v23;
      }

      --v21;
    }

    while (v21);
    ++v19;
    v9 = (v9 + v12);
  }

  while (v19 != v4);
  v24 = 0;
  v25 = 0;
  v26 = *a2;
  v27 = *(a2 + 4);
  do
  {
    if (v5 >= 1)
    {
      v28 = 0;
      v29 = *result + v24 * *(result + 16);
      v30 = v26;
      do
      {
        *(v29 + 4 * v28) = *(v30 - 4 * v28 / v7 * v7 + 4 * v27 * v8[v25 * v11 + v28 / v7]);
        ++v28;
        v30 += 4;
      }

      while (v5 != v28);
    }

    ++v25;
    v24 += 4;
  }

  while (v25 != v4);
  return result;
}

uint64_t kaldi::MatrixBase<float>::Min(uint64_t result)
{
  v1 = 0;
  v2 = *result;
  v3 = **result;
  do
  {
    v4 = *(result + 8);
    v5 = v2;
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 < v3)
      {
        v3 = v7;
      }

      --v4;
    }

    while (v4);
    ++v1;
    v2 += *(result + 16);
  }

  while (v1 != *(result + 12));
  return result;
}

uint64_t kaldi::MatrixBase<float>::Max(uint64_t result)
{
  v1 = 0;
  v2 = *result;
  v3 = **result;
  do
  {
    v4 = *(result + 8);
    v5 = v2;
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 > v3)
      {
        v3 = v7;
      }

      --v4;
    }

    while (v4);
    ++v1;
    v2 += *(result + 16);
  }

  while (v1 != *(result + 12));
  return result;
}

float **kaldi::MatrixBase<float>::ConcatenateVec(float **result, float **a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v11 = result;
  v12 = 0;
  v13 = *(result + 3);
  LODWORD(v14) = *(a3 + 8);
  v15 = *a2;
  v16 = *a3;
  v17 = **a3;
  v18 = 4 * *(a3 + 16);
  v19 = *a3;
  v20 = v17;
  do
  {
    v21 = v19;
    v22 = *(a3 + 8);
    do
    {
      v23 = *v21++;
      *&a6 = v23;
      if (v23 < v20)
      {
        v20 = *&a6;
      }

      --v22;
    }

    while (v22);
    ++v12;
    v19 = (v19 + v18);
  }

  while (v12 != v13);
  v24 = 0;
  do
  {
    v25 = v16;
    v26 = *(a3 + 8);
    do
    {
      v27 = *v25++;
      *&a5 = v27;
      if (v27 > v17)
      {
        v17 = *&a5;
      }

      --v26;
    }

    while (v26);
    ++v24;
    v16 = (v16 + v18);
  }

  while (v24 != v13);
  if (v15)
  {
    v28 = *(v15 + 3);
  }

  else
  {
    v28 = 0;
  }

  v29 = 0;
  do
  {
    if (v14 >= 1)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *v11;
        v33 = *(v11 + 4);
        v36 = 0;
        v37 = 0;
        v34 = &v32[v29 * v33 + v30];
        v35 = v28;
        LODWORD(a4) = *(*a3 + 4 * v29 * *(a3 + 16) + 4 * v31);
        result = kaldi::CompressedMatrix::CopyRowToVec<float>(a2, *&a4, &v34, a4, a5, a6, a7, a8, a9);
        ++v31;
        v14 = *(a3 + 8);
        v30 += v28;
      }

      while (v31 < v14);
      LODWORD(v13) = *(a3 + 12);
    }

    ++v29;
  }

  while (v29 < v13);
  return result;
}

uint64_t kaldi::MatrixBase<float>::SummarizeVec(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(result + 8);
    v7 = *(a2 + 3);
    v8 = *(a3 + 2);
    v9 = *a3;
    v10 = *(a3 + 4);
    do
    {
      if (v8 >= 1)
      {
        v11 = 0;
        v12 = *a2;
        v13 = *(a2 + 4);
        do
        {
          v14 = *(v9 + 4 * v5 * v10 + 4 * v11);
          if ((v14 & 0x80000000) == 0)
          {
            if (v7 <= v14)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
              v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "index item is bigger than the voc size ", 39);
              MEMORY[0x1B8C84C00](v18, v7);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
            }

            if (v6 >= 1)
            {
              v15 = 0;
              v16 = v12 + 4 * v13 * v14;
              v17 = *result + v4 * *(result + 16);
              do
              {
                *(v17 + 4 * v15) = *(v16 + 4 * v15) + *(v17 + 4 * v15);
                ++v15;
              }

              while (v6 != v15);
            }
          }

          ++v11;
        }

        while (v11 != v8);
      }

      ++v5;
      v4 += 4;
    }

    while (v5 != v3);
  }

  return result;
}

void kaldi::MatrixBase<float>::SummarizeVec(uint64_t a1, float **a2, uint64_t a3)
{
  v6 = *(a1 + 12);
  if (*a2)
  {
    v7 = *(*a2 + 2);
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 1)
  {
    v8 = 0;
    v9 = *(a3 + 8);
    do
    {
      if (v9 >= 1)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = *(*a3 + 4 * *(a3 + 16) * v8 + 4 * i);
          if ((v11 & 0x80000000) == 0)
          {
            if (v7 <= v11)
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
              v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "index item is bigger than the voc size ", 39);
              MEMORY[0x1B8C84C00](v23, v7);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
            }

            v12 = *(a1 + 8);
            memset(v24, 0, 24);
            kaldi::Vector<float>::Resize(v24, v12, 0);
            kaldi::CompressedMatrix::CopyRowToVec<float>(a2, v11, v24, v13, v14, v15, v16, v17, v18);
            v19 = *(a1 + 8);
            if (v19 >= 1)
            {
              v20 = 0;
              v21 = v24[0];
              v22 = *a1 + 4 * v8 * *(a1 + 16);
              do
              {
                *(v22 + 4 * v20) = v21[v20] + *(v22 + 4 * v20);
                ++v20;
              }

              while (v19 != v20);
            }

            kaldi::Vector<float>::Destroy(v24);
            v9 = *(a3 + 8);
          }
        }

        v6 = *(a1 + 12);
      }

      ++v8;
    }

    while (v8 < v6);
  }
}

uint64_t kaldi::MatrixBase<float>::CountZeros(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    if (*(a1 + 8) >= 1)
    {
      v4 = (*a1 + 4 * *(a1 + 16) * v2);
      v5 = *(a1 + 8);
      do
      {
        v6 = *v4++;
        if (v6 == 0.0)
        {
          v3 = (v3 + 1);
        }

        else
        {
          v3 = v3;
        }

        --v5;
      }

      while (v5);
    }

    ++v2;
  }

  while (v2 != v1);
  return v3;
}

float kaldi::MatrixBase<float>::AbsMax(uint64_t a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = **a1;
  v5 = *(a1 + 16);
  do
  {
    v6 = MEMORY[0x1B8C85860](*(a1 + 8), &v3[v5 * v2], 1);
    v3 = *a1;
    v5 = *(a1 + 16);
    v7 = fabsf(*(*a1 + 4 * (v6 + v5 * v2)));
    if (v7 > v4)
    {
      v4 = v7;
    }

    ++v2;
  }

  while (v2 < *(a1 + 12));
  return v4;
}

float kaldi::MatrixBase<float>::AggByCol(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[3] = 0;
  if (a4)
  {
    std::__function::__value_func<float ()(float,float)>::__value_func[abi:ne200100](v10, a3);
    std::function<float ()(float,float)>::operator=<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1},void>(v11, v10);
  }

  std::function<float ()(float,float)>::operator=(v11, a3);
  v6 = *(*a1 + 4 * a2);
  if (*(a1 + 12) >= 1)
  {
    v7 = 0;
    do
    {
      std::function<float ()(float,float)>::operator()(v11, v6, *(*a1 + 4 * (a2 + *(a1 + 16) * v7)));
      v6 = v8;
      ++v7;
    }

    while (v7 < *(a1 + 12));
  }

  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v11);
  return v6;
}

void sub_1B55D77B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void std::function<float ()(float,float)>::operator=<kaldi::MatrixBase<float>::AggByCol(int,std::function<float ()(float,float)>,BOOL)::{lambda(float,float)#1},void>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<float ()(float,float)>::__value_func[abi:ne200100](v2, a2);
  operator new();
}

void sub_1B55D789C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::function<float ()(float,float)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<float ()(float,float)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<float ()(float,float)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::function<float ()(float,float)>::operator()(uint64_t a1, float a2, float a3)
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

float kaldi::MatrixBase<float>::MaxByCol(uint64_t a1, unsigned int a2, int a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2D1F798;
  v5[3] = v5;
  v3 = kaldi::MatrixBase<float>::AggByCol(a1, a2, v5, a3);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v5);
  return v3;
}

void sub_1B55D7A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float kaldi::MatrixBase<float>::MinByCol(uint64_t a1, unsigned int a2, int a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F2D1F818;
  v5[3] = v5;
  v3 = kaldi::MatrixBase<float>::AggByCol(a1, a2, v5, a3);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](v5);
  return v3;
}

void sub_1B55D7AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<float ()(float,float)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float32_t kaldi::MatrixBase<float>::MulElements(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v3 == v4 && v3 == v5)
  {
    v17 = (v3 * v2);
    v18 = *a2;
    v19 = *a1;
    if (v17 >= 4)
    {
      v21 = 4;
      v22 = *a2;
      v23 = *a1;
      do
      {
        v24 = *v22++;
        v16 = vmulq_f32(v24, *v23);
        *v23++ = v16;
        v21 += 4;
      }

      while (v21 <= v17);
      v20 = v17 & 0x7FFFFFFC;
    }

    else
    {
      v20 = 0;
    }

    if (v20 < v17)
    {
      v25 = v17 - v20;
      v26 = &v19->f32[v20];
      v27 = &v18->f32[v20];
      do
      {
        v28 = *v27++;
        v16.f32[0] = v28 * *v26;
        *v26++ = v16.f32[0];
        --v25;
      }

      while (v25);
    }
  }

  else if (v2 >= 1)
  {
    v7 = 0;
    v8 = v5;
    v9 = *a2;
    v10 = *a1;
    v11 = 4 * v4;
    v12 = 4 * v8;
    do
    {
      if (v3 >= 4)
      {
        v14 = 0;
        for (i = 4; i <= v3; i += 4)
        {
          v16 = vmulq_f32(v9[v14], v10[v14]);
          v10[v14++] = v16;
        }

        LODWORD(v13) = v3 & 0x7FFFFFFC;
      }

      else
      {
        LODWORD(v13) = 0;
      }

      if (v13 < v3)
      {
        v13 = v13;
        do
        {
          v16.f32[0] = v9->f32[v13] * v10->f32[v13];
          v10->i32[v13++] = v16.i32[0];
        }

        while (v3 != v13);
      }

      ++v7;
      v10 = (v10 + v11);
      v9 = (v9 + v12);
    }

    while (v7 != v2);
  }

  return v16.f32[0];
}

uint64_t kaldi::MatrixBase<float>::DivElements(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 2);
    v6 = *a2;
    v7 = 4 * *(a2 + 4);
    do
    {
      if (v5 >= 1)
      {
        v8 = 0;
        v9 = *result + v3 * *(result + 16);
        do
        {
          *(v9 + 4 * v8) = *(v9 + 4 * v8) / *(v6 + 4 * v8);
          ++v8;
        }

        while (v5 != v8);
      }

      ++v4;
      v3 += 4;
      v6 += v7;
    }

    while (v4 != v2);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MulRowsVec(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 8);
    v5 = *a2;
    do
    {
      if (v4 >= 1)
      {
        v6 = *(v5 + 4 * v3);
        v7 = (*result + 4 * *(result + 16) * v3);
        v8 = v4;
        do
        {
          *v7 = v6 * *v7;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MulRowsGroupMat(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = *(result + 8);
    v6 = v5 / *(a2 + 8);
    v7 = 4 * v6;
    v8 = (v5 / v6);
    do
    {
      if (v8 >= 1)
      {
        v9 = 0;
        v10 = *v3 + 4 * *(v3 + 16) * v4;
        do
        {
          result = cblas_sscal_NEWLAPACK_ILP64();
          ++v9;
          v10 += v7;
        }

        while (v8 != v9);
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::InvertElements(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 8);
    do
    {
      if (v3 >= 1)
      {
        v4 = (*result + 4 * *(result + 16) * v2);
        v5 = v3;
        do
        {
          *v4 = 1.0 / *v4;
          ++v4;
          --v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopyCols(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 8);
    v6 = *a3;
    v7 = *a2;
    v8 = *result;
    v9 = *(a2 + 4);
    v10 = 4 * *(result + 16);
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        do
        {
          result = *(v6 + v11);
          if ((result & 0x80000000) != 0)
          {
            v12 = 0;
          }

          else
          {
            v12 = *(v7 + 4 * result);
          }

          *(v8 + v11) = v12;
          v11 += 4;
        }

        while (4 * v5 != v11);
      }

      ++v4;
      v7 += 4 * v9;
      v8 += v10;
    }

    while (v4 != v3);
  }

  return result;
}

void kaldi::MatrixBase<float>::CopyRows(char **a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 3);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 4 * v3;
    v9 = 4 * *(a1 + 4);
    do
    {
      if ((*(*a3 + v6) & 0x80000000) != 0)
      {
        bzero(v7, 4 * *(a1 + 2));
      }

      else
      {
        cblas_scopy_NEWLAPACK_ILP64();
      }

      v6 += 4;
      v7 += v9;
    }

    while (v8 != v6);
  }
}

unint64_t kaldi::MatrixBase<float>::CopyIndexedItems(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v6 = *(result + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = *(a2 + 4);
    v11 = *(result + 8);
    v12 = *result;
    v13 = *(result + 16) - v11;
    do
    {
      v14 = v11;
      v15 = v7;
      if (v11 >= 1)
      {
        do
        {
          result = v15 / a5;
          v16 = *(a4 + 4 * (v15 % a5)) + *(a3 + 4 * (v15 % a5)) * v10;
          if (v16 < 0)
          {
            v17 = 0;
          }

          else
          {
            result = (v16 + result * a6);
            v17 = *(v9 + 4 * result);
          }

          *v12++ = v17;
          ++v15;
          --v14;
        }

        while (v14);
      }

      ++v8;
      v12 += v13;
      v7 += v11;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::CopySelectedRows(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 8);
  if (v4 >= 1)
  {
    v7 = 0;
    v8 = *result;
    v9 = 4 * *(result + 16);
    do
    {
      if ((*(*a3 + 4 * v7) == 1) != a4)
      {
        result = cblas_scopy_NEWLAPACK_ILP64();
      }

      ++v7;
      v8 += v9;
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::ApplyFloor(uint64_t a1, float a2)
{
  v2 = *(a1 + 12);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = 4 * *(a1 + 16);
  do
  {
    v9 = v6;
    v10 = v7;
    if (v6 >= 1)
    {
      do
      {
        if (*v10 < a2)
        {
          *v10 = a2;
          result = (result + 1);
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    ++v4;
    v7 = (v7 + v8);
  }

  while (v4 != v2);
  return result;
}

uint64_t kaldi::MatrixBase<float>::ApplyCeiling(uint64_t a1, float a2)
{
  v2 = *(a1 + 12);
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = 4 * *(a1 + 16);
  do
  {
    v9 = v6;
    v10 = v7;
    if (v6 >= 1)
    {
      do
      {
        if (*v10 > a2)
        {
          *v10 = a2;
          result = (result + 1);
        }

        ++v10;
        --v9;
      }

      while (v9);
    }

    ++v4;
    v7 = (v7 + v8);
  }

  while (v4 != v2);
  return result;
}

void kaldi::MatrixBase<float>::ApplyLog(uint64_t a1)
{
  if (*(a1 + 12) >= 1)
  {
    v11 = v1;
    v12 = v2;
    v4 = 0;
    do
    {
      v5 = *a1 + 4 * *(a1 + 16) * v4;
      v6 = *(a1 + 8);
      v9 = 0;
      v10 = 0;
      v7 = v5;
      v8 = v6;
      kaldi::VectorBase<float>::ApplyLog(&v7);
      ++v4;
    }

    while (v4 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyExp(uint64_t a1)
{
  if (*(a1 + 12) >= 1)
  {
    v11 = v1;
    v12 = v2;
    v4 = 0;
    do
    {
      v5 = *a1 + 4 * *(a1 + 16) * v4;
      v6 = *(a1 + 8);
      v9 = 0;
      v10 = 0;
      v7 = v5;
      v8 = v6;
      kaldi::VectorBase<float>::ApplyExp(&v7);
      ++v4;
    }

    while (v4 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyPow(uint64_t a1, float a2)
{
  if (*(a1 + 12) >= 1)
  {
    v15 = v5;
    v16 = v4;
    v17 = v2;
    v18 = v3;
    v8 = 0;
    do
    {
      v9 = *a1 + 4 * *(a1 + 16) * v8;
      v10 = *(a1 + 8);
      v13 = 0;
      v14 = 0;
      v11 = v9;
      v12 = v10;
      kaldi::VectorBase<float>::ApplyPow(&v11, a2);
      ++v8;
    }

    while (v8 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyPowAbs(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 12) >= 1)
  {
    v17 = v6;
    v18 = v5;
    v19 = v3;
    v20 = v4;
    v10 = 0;
    do
    {
      v11 = *a1 + 4 * *(a1 + 16) * v10;
      v12 = *(a1 + 8);
      v15 = 0;
      v16 = 0;
      v13 = v11;
      v14 = v12;
      kaldi::VectorBase<float>::ApplyPowAbs(&v13, a2, a3);
      ++v10;
    }

    while (v10 < *(a1 + 12));
  }
}

uint64_t kaldi::MatrixBase<float>::ApplyHeaviside(uint64_t result)
{
  v1 = *(result + 12);
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = *(result + 8);
    v4 = *result;
    v5 = 4 * *(result + 16);
    do
    {
      v6 = v3;
      v7 = v4;
      if (v3 >= 1)
      {
        do
        {
          if (*v7 <= 0.0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = 1.0;
          }

          *v7++ = v8;
          --v6;
        }

        while (v6);
      }

      ++v2;
      v4 = (v4 + v5);
    }

    while (v2 != v1);
  }

  return result;
}

void kaldi::MatrixBase<float>::LogSumMat(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a1 + 8);
    v7 = *a2;
    v8 = 4 * *(a2 + 4);
    do
    {
      if (v6 >= 1)
      {
        v9 = 0;
        v10 = *a1 + v4 * *(a1 + 16);
        do
        {
          v11 = *(v10 + 4 * v9);
          v12 = *(v7 + 4 * v9);
          if (v11 >= v12)
          {
            v13 = *(v10 + 4 * v9);
          }

          else
          {
            v13 = *(v7 + 4 * v9);
          }

          if (v11 >= v12)
          {
            v14 = v12 - v11;
          }

          else
          {
            v14 = v11 - v12;
          }

          if (v14 >= -15.942)
          {
            v15 = expf(v14);
            v13 = v13 + log1pf(v15);
          }

          *(v10 + 4 * v9++) = v13;
        }

        while (v6 != v9);
      }

      ++v5;
      v4 += 4;
      v7 += v8;
    }

    while (v5 != v2);
  }
}

uint64_t kaldi::MatrixBase<float>::Add(uint64_t result, float a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *result;
    v5 = *(result + 8);
    v6 = 4 * *(result + 16);
    do
    {
      v7 = v5;
      v8 = v4;
      if (v5 >= 1)
      {
        do
        {
          *v8 = *v8 + a2;
          ++v8;
          --v7;
        }

        while (v7);
      }

      ++v3;
      v4 = (v4 + v6);
    }

    while (v3 != v2);
  }

  return result;
}

void kaldi::MatrixBase<float>::GroupPnorm(uint64_t a1, uint64_t *a2, float a3)
{
  v3 = *(a2 + 3);
  if (v3 >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 8);
    v9 = *(a2 + 2) / v8;
    do
    {
      if (v8 >= 1)
      {
        v10 = 0;
        for (i = 0; i != v8; ++i)
        {
          v12 = *a2;
          v13 = *(a2 + 4);
          v17 = 0;
          v18 = 0;
          v15 = v12 + 4 * v7 * v13 + v10;
          v16 = v9;
          v14 = kaldi::VectorBase<float>::Norm(&v15, a3);
          *(*a1 + 4 * v7 * *(a1 + 16) + 4 * i) = LODWORD(v14);
          v10 += 4 * v9;
        }
      }

      ++v7;
    }

    while (v7 != v3);
  }
}

void kaldi::MatrixBase<float>::GroupPnormDeriv(uint64_t a1, uint64_t *a2, uint64_t *a3, float a4)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  if (a4 == 1.0)
  {
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = *a2;
      v10 = 4 * *(a2 + 4);
      do
      {
        if (v5 >= 1)
        {
          v11 = 0;
          v12 = *a1 + v7 * *(a1 + 16);
          do
          {
            v13 = *(v9 + 4 * v11);
            v14 = v13 == 0.0;
            if (v13 <= 0.0)
            {
              v15 = -1.0;
            }

            else
            {
              v15 = 1.0;
            }

            if (v14)
            {
              v15 = 0.0;
            }

            *(v12 + 4 * v11++) = v15;
          }

          while (v5 != v11);
        }

        ++v8;
        v7 += 4;
        v9 += v10;
      }

      while (v8 != v6);
    }
  }

  else if (v6 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v29 = *(a3 + 4);
    v30 = *a3;
    v18 = a4 + -1.0;
    v19 = 1.0 - a4;
    v20 = v5 / *(a3 + 2);
    do
    {
      if (v5 >= 1)
      {
        v21 = 0;
        v22 = *a1 + v16 * *(a1 + 16);
        v23 = *a2 + v16 * *(a2 + 4);
        do
        {
          v24 = *(v30 + 4 * v17 * v29 + 4 * (v21 / v20));
          v25 = 0.0;
          if (v24 != 0.0)
          {
            v26 = *(v23 + 4 * v21);
            v27 = powf(fabsf(v26), v18);
            v28 = powf(v24, v19) * v27;
            v25 = -v28;
            if (v26 >= 0.0)
            {
              v25 = v28;
            }
          }

          *(v22 + 4 * v21++) = v25;
        }

        while (v5 != v21);
      }

      ++v17;
      v16 += 4;
    }

    while (v17 != v6);
  }
}

void kaldi::MatrixBase<float>::Tanh(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  if (v5 == *(a1 + 16) && v5 == *(a2 + 16))
  {
    v8 = *a2;
    v14 = 0;
    v11 = 0;
    v12 = v8;
    v13 = (v5 * v4);
    v9 = *a1;
    v10 = v13;
    kaldi::VectorBase<float>::Tanh(&v9, &v12);
  }

  else if (v4 >= 1)
  {
    v7 = 0;
    do
    {
      v13 = 0;
      v14 = 0;
      v12 = (*a2 + 4 * *(a2 + 16) * v7);
      LODWORD(v13) = *(a2 + 8);
      v10 = 0;
      v11 = 0;
      v9 = *a1 + 4 * *(a1 + 16) * v7;
      LODWORD(v10) = *(a1 + 8);
      kaldi::VectorBase<float>::Tanh(&v9, &v12);
      ++v7;
    }

    while (v7 < *(a1 + 12));
  }
}

void kaldi::MatrixBase<float>::ApplyTanh(uint64_t a1)
{
  if (*(a1 + 12) >= 1)
  {
    v11 = v1;
    v12 = v2;
    v4 = 0;
    do
    {
      v5 = *a1 + 4 * *(a1 + 16) * v4;
      v6 = *(a1 + 8);
      v9 = 0;
      v10 = 0;
      v7 = v5;
      v8 = v6;
      kaldi::VectorBase<float>::ApplyTanh(&v7);
      ++v4;
    }

    while (v4 < *(a1 + 12));
  }
}

uint64_t *kaldi::MatrixBase<float>::DiffSigmoid(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 2);
    v6 = *a3;
    v7 = *a2;
    v8 = *result;
    v9 = 4 * *(result + 4);
    v10 = 4 * *(a2 + 4);
    v11 = 4 * *(a3 + 4);
    do
    {
      if (v5 >= 1)
      {
        result = 0;
        do
        {
          v12 = (1.0 - *(result + v7)) * (*(result + v6) * *(result + v7));
          *(result + v8) = v12;
          result = (result + 4);
        }

        while ((4 * v5) != result);
      }

      ++v4;
      v8 += v9;
      v7 += v10;
      v6 += v11;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t *kaldi::MatrixBase<float>::DiffTanh(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 2);
    v6 = *a3;
    v7 = *a2;
    v8 = *result;
    v9 = 4 * *(result + 4);
    v10 = 4 * *(a2 + 4);
    v11 = 4 * *(a3 + 4);
    do
    {
      if (v5 >= 1)
      {
        result = 0;
        do
        {
          v12 = (1.0 - (*(result + v7) * *(result + v7))) * *(result + v6);
          *(result + v8) = v12;
          result = (result + 4);
        }

        while ((4 * v5) != result);
      }

      ++v4;
      v8 += v9;
      v7 += v10;
      v6 += v11;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MaxoutForward(uint64_t result, uint64_t *a2, double a3)
{
  v5 = *(a2 + 3);
  if (v5 >= 1)
  {
    v19 = v3;
    v20 = v4;
    v7 = result;
    v8 = 0;
    LODWORD(v9) = *(result + 8);
    v10 = *(a2 + 2) / v9;
    do
    {
      if (v9 >= 1)
      {
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = *a2;
          v14 = *(a2 + 4);
          v17 = 0;
          v18 = 0;
          v15 = v13 + 4 * v8 * v14 + v11;
          v16 = v10;
          result = kaldi::VectorBase<float>::Max(&v15, a3);
          v5 = *(v7 + 12);
          v9 = *(v7 + 8);
          *(*v7 + 4 * v8 * *(v7 + 16) + 4 * v12++) = LODWORD(a3);
          v11 += 4 * v10;
        }

        while (v12 < v9);
      }

      ++v8;
    }

    while (v8 < v5);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::MaxoutDerivative(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a2 + 3);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(result + 8);
    v7 = *a2;
    v8 = *a3;
    v9 = *(a3 + 4);
    v10 = 4 * *(a2 + 4);
    v11 = v6 / *(a3 + 2);
    do
    {
      if (v6 >= 1)
      {
        v12 = 0;
        v13 = *result + v4 * *(result + 16);
        do
        {
          if (*(v7 + 4 * v12) == *(v8 + 4 * v5 * v9 + 4 * (v12 / v11)))
          {
            v14 = 1.0;
          }

          else
          {
            v14 = 0.0;
          }

          *(v13 + 4 * v12++) = v14;
        }

        while (v6 != v12);
      }

      ++v5;
      v4 += 4;
      v7 += v10;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddToDiag(uint64_t result, float a2)
{
  LODWORD(v2) = *(result + 8);
  v3 = *(result + 12);
  if (v2 >= v3)
  {
    v2 = v3;
  }

  else
  {
    v2 = v2;
  }

  if (v2 >= 1)
  {
    v4 = *result;
    v5 = 4 * *(result + 16) + 4;
    do
    {
      *v4 = *v4 + a2;
      v4 = (v4 + v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddToDiag(uint64_t result, uint64_t *a2, float a3, float a4)
{
  LODWORD(v4) = *(result + 8);
  v5 = *(result + 12);
  if (v4 >= v5)
  {
    v4 = v5;
  }

  else
  {
    v4 = v4;
  }

  if (v4 >= 1)
  {
    v6 = 0;
    v7 = *a2;
    v8 = *result;
    v9 = 4 * *(result + 16) + 4;
    do
    {
      *v8 = (*v8 * a4) + (a3 * *(v7 + 4 * v6++));
      v8 = (v8 + v9);
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddIndexedRows(uint64_t result, uint64_t *a2, uint64_t a3, float a4)
{
  v4 = *(a2 + 3);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    v9 = *a2;
    v10 = *(a2 + 4);
    do
    {
      if (v7 >= 1)
      {
        v11 = 0;
        v12 = 0;
        v13 = *a3 + v5 * *(a3 + 16);
        do
        {
          v14 = *(v9 + 4 * v6 * v10 + 4 * v12);
          if ((v14 & 0x80000000) == 0)
          {
            if (*(result + 12) <= v14)
            {
              v21 = result;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
              v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "index ", 6);
              v19 = MEMORY[0x1B8C84C00](v18, v14);
              v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " is too big for matrix that has rows = ", 39);
              MEMORY[0x1B8C84C00](v20, *(v21 + 12));
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
            }

            if (v8 >= 1)
            {
              v15 = (*result + 4 * *(result + 16) * v14);
              v16 = v8;
              v17 = v11;
              do
              {
                *v15 = *v15 + (a4 * *(v13 + 4 * v17));
                ++v15;
                ++v17;
                --v16;
              }

              while (v16);
            }
          }

          ++v12;
          v11 += v8;
        }

        while (v12 != v7);
      }

      ++v6;
      v5 += 4;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddDiagVecMat(uint64_t result, uint64_t *a2, uint64_t *a3, int a4, double a5, float a6)
{
  v9 = result;
  if (a6 != 1.0)
  {
    result = kaldi::MatrixBase<float>::Scale(result, a6);
  }

  if (a4 == 111)
  {
    v10 = *(v9 + 12);
  }

  else
  {
    v10 = *(a3 + 2);
  }

  if (v10 >= 1)
  {
    v11 = *a2;
    v12 = *a3;
    v13 = *v9;
    v14 = *(a3 + 4);
    if (a4 == 112)
    {
      v14 = 1;
    }

    v15 = *(v9 + 16);
    v16 = 4 * v14;
    v17 = 4 * v15;
    do
    {
      v11 += 4;
      result = cblas_saxpy_NEWLAPACK_ILP64();
      v12 += v16;
      v13 += v17;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddMatDiagVec(uint64_t result, uint64_t *a2, int a3, uint64_t *a4, double a5, float a6)
{
  v9 = result;
  if (a6 != 1.0)
  {
    result = kaldi::MatrixBase<float>::Scale(result, a6);
  }

  if (a3 == 111)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 12);
  }

  else
  {
    v10 = *(a2 + 2);
    v11 = *(a2 + 3);
  }

  if (v10)
  {
    v12 = v11 < 1;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *a4;
    v14 = *a2;
    v15 = *v9;
    if (a3 == 112)
    {
      v16 = *(a2 + 4);
    }

    else
    {
      v16 = 1;
    }

    v17 = 4 * v16;
    do
    {
      v13 += 4;
      result = cblas_saxpy_NEWLAPACK_ILP64();
      v15 += 4;
      v14 += v17;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::AddMatEwpMat(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, float a6, float a7)
{
  v8 = *(result + 8);
  v7 = *(result + 12);
  if (v7 >= 1)
  {
    v9 = 0;
    if (a5 == 112)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(a4 + 16);
    }

    if (a5 == 112)
    {
      v11 = *(a4 + 16);
    }

    else
    {
      v11 = 1;
    }

    if (a3 == 112)
    {
      v12 = 1;
    }

    else
    {
      v12 = *(a2 + 16);
    }

    if (a3 == 112)
    {
      v13 = *(a2 + 16);
    }

    else
    {
      v13 = 1;
    }

    v14 = *result;
    v15 = *(result + 16);
    v16 = *a2;
    v17 = 4 * v10;
    v18 = 4 * v11;
    v19 = *a4;
    v20 = 4 * v12;
    result = 4 * v13;
    do
    {
      if (v8 >= 1)
      {
        v21 = (v14 + 4 * v9 * v15);
        v22 = v16;
        v23 = v19;
        v24 = v8;
        do
        {
          *v21 = ((*v22 * a6) * *v23) + (a7 * *v21);
          ++v21;
          v23 = (v23 + v18);
          v22 = (v22 + result);
          --v24;
        }

        while (v24);
      }

      ++v9;
      v19 = (v19 + v17);
      v16 = (v16 + v20);
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t kaldi::MatrixBase<float>::FirstNonZeroColumn(uint64_t *a1, float a2)
{
  v2 = 0;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a1;
  v6 = 4 * *(a1 + 4);
  result = 0x7FFFFFFFLL;
  do
  {
    v8 = 0;
    while (fabsf(*(v5 + 4 * v8)) <= a2)
    {
      if (v4 == ++v8)
      {
        goto LABEL_9;
      }
    }

    if (v8 >= result)
    {
      result = result;
    }

    else
    {
      result = v8;
    }

LABEL_9:
    ++v2;
    v5 += v6;
  }

  while (v2 != v3);
  return result;
}

void kaldi::MatrixBase<float>::Write(uint64_t a1, void *a2, int a3, int a4)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "Failed to write matrix to stream: stream not good");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (a3)
  {
    memset(&v16, 0, sizeof(v16));
    std::string::append(&v16, "F");
    if (a4)
    {
      v7 = "N";
    }

    else
    {
      v7 = "M";
    }

    std::string::append(&v16, v7);
    kaldi::WriteToken(a2, 1, &v16);
    v8 = *(a1 + 8);
    kaldi::WriteBasicType<int>(a2, 1, *(a1 + 12));
    kaldi::WriteBasicType<int>(a2, 1, v8);
    if (a4)
    {
      kaldi::WriteBasicType<int>(a2, 1, *(a1 + 16));
      if (!fst::AlignOutput(a2))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not align output", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
      }
    }

    else if (*(a1 + 16) != *(a1 + 8))
    {
      if (*(a1 + 12) >= 1)
      {
        v15 = 0;
        do
        {
          std::ostream::write();
          ++v15;
        }

        while (v15 < *(a1 + 12));
      }

      goto LABEL_26;
    }

    std::ostream::write();
LABEL_26:
    if (*(a2 + *(*a2 - 24) + 32))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Failed to write matrix to stream", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (*(a1 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [", 2);
    if (*(a1 + 12) >= 1)
    {
      v9 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n  ", 3);
        if (*(a1 + 8) >= 1)
        {
          v10 = 0;
          do
          {
            v11 = std::ostream::operator<<();
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
            ++v10;
          }

          while (v10 < *(a1 + 8));
        }

        ++v9;
      }

      while (v9 < *(a1 + 12));
    }

    v12 = "]\n";
    v13 = a2;
    v14 = 2;
  }

  else
  {
    v12 = " [ ]\n";
    v13 = a2;
    v14 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
}

void sub_1B55D93AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SubMatrix<double>::SubMatrix(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = 0;
  *result = 0u;
  *(result + 16) = 0u;
  v8 = 0;
  if (a4 && a6)
  {
    v9 = *(a2 + 16);
    v7 = *a2 + 8 * a5 + 8 * v9 * a3;
    v10 = *(a2 + 20) - a5 - v9 * a3;
    *(result + 16) = v9;
    *(result + 20) = v10;
    v6 = a6;
    v8 = a4;
  }

  *result = v7;
  *(result + 8) = v6;
  *(result + 12) = v8;
  return result;
}

uint64_t kaldi::MatrixBase<double>::Scale(uint64_t result, double a2)
{
  if (a2 != 1.0)
  {
    v2 = result;
    v3 = *(result + 12);
    if (v3)
    {
      if (*(result + 8) == *(result + 16))
      {

        return cblas_dscal_NEWLAPACK_ILP64();
      }

      else if (v3 >= 1)
      {
        v4 = 0;
        v5 = *result;
        do
        {
          result = cblas_dscal_NEWLAPACK_ILP64();
          ++v4;
          v5 += 8 * *(v2 + 16);
        }

        while (v4 < *(v2 + 12));
      }
    }
  }

  return result;
}

void kaldi::MatrixBase<double>::Write(uint64_t a1, void *a2, int a3, int a4)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, "Failed to write matrix to stream: stream not good");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
  }

  if (a3)
  {
    memset(&v16, 0, sizeof(v16));
    std::string::append(&v16, "D");
    if (a4)
    {
      v7 = "N";
    }

    else
    {
      v7 = "M";
    }

    std::string::append(&v16, v7);
    kaldi::WriteToken(a2, 1, &v16);
    v8 = *(a1 + 8);
    kaldi::WriteBasicType<int>(a2, 1, *(a1 + 12));
    kaldi::WriteBasicType<int>(a2, 1, v8);
    if (a4)
    {
      kaldi::WriteBasicType<int>(a2, 1, *(a1 + 16));
      if (!fst::AlignOutput(a2))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Could not align output", 22);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
      }
    }

    else if (*(a1 + 16) != *(a1 + 8))
    {
      if (*(a1 + 12) >= 1)
      {
        v15 = 0;
        do
        {
          std::ostream::write();
          ++v15;
        }

        while (v15 < *(a1 + 12));
      }

      goto LABEL_26;
    }

    std::ostream::write();
LABEL_26:
    if (*(a2 + *(*a2 - 24) + 32))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "Failed to write matrix to stream", 32);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v17);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (*(a1 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [", 2);
    if (*(a1 + 12) >= 1)
    {
      v9 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n  ", 3);
        if (*(a1 + 8) >= 1)
        {
          v10 = 0;
          do
          {
            v11 = MEMORY[0x1B8C84BE0](a2, *(*a1 + 8 * v9 * *(a1 + 16) + 8 * v10));
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
            ++v10;
          }

          while (v10 < *(a1 + 8));
        }

        ++v9;
      }

      while (v9 < *(a1 + 12));
    }

    v12 = "]\n";
    v13 = a2;
    v14 = 2;
  }

  else
  {
    v12 = " [ ]\n";
    v13 = a2;
    v14 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
}

void sub_1B55D9824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::SubMatrix<float>::SubMatrix(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  *(result + 8) = a4;
  *result = a2;
  *(result + 12) = a3;
  *(result + 16) = a5;
  *(result + 20) = a5 * a3;
  *(result + 24) = 0;
  if (!a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

uint64_t kaldi::Quant3Levels<float>(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 8);
    while (v5 < 1)
    {
LABEL_11:
      if (++v4 == v3)
      {
        return result;
      }
    }

    v6 = 0;
    v7 = *a2 + 4 * *(a2 + 16) * v4;
    v8 = *result + 4 * *(result + 16) * v4;
    while (1)
    {
      v9 = *(v8 + 4 * v6);
      if (v9 >= a3)
      {
        break;
      }

      v10 = 0.0;
      if (v9 <= -a3)
      {
        v11 = v9 + a3;
        v10 = -a3;
LABEL_9:
        *(v8 + 4 * v6) = v11;
      }

      *(v7 + 4 * v6++) = v10;
      if (v5 == v6)
      {
        goto LABEL_11;
      }
    }

    v11 = v9 - a3;
    v10 = a3;
    goto LABEL_9;
  }

  return result;
}

uint64_t kaldi::ZeroSmallValues<float>(uint64_t result, uint64_t a2, float a3)
{
  v3 = *(result + 12);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 8);
    while (v5 < 1)
    {
LABEL_11:
      if (++v4 == v3)
      {
        return result;
      }
    }

    v6 = 0;
    v7 = *result + 4 * *(result + 16) * v4;
    while (1)
    {
      v8 = *(v7 + 4 * v6);
      if (v8 >= a3)
      {
        v9 = (*a2 + 4 * *(a2 + 16) * v4 + 4 * v6);
      }

      else
      {
        v9 = (*a2 + 4 * *(a2 + 16) * v4 + 4 * v6);
        if (v8 > -a3)
        {
          goto LABEL_10;
        }
      }

      *v9 = v8;
      v9 = (v7 + 4 * v6);
LABEL_10:
      *v9 = 0.0;
      if (++v6 == v5)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

void **kaldi::MatrixBase<float>::AddMatMat<signed char>(void **result, uint64_t a2, double a3, float a4, uint64_t a5, kaldi::quasar::Vocab *a6, int a7)
{
  v10 = result;
  if (a7 == 111)
  {
    v11 = kaldi::QuantizedMatrixBase<short>::NumCols(a6);
    v12 = kaldi::quasar::Vocab::VocabSize(a6);
    kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(v13, v11, v12);
    kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(v13, a6, 112);
    if (*(a2 + 12))
    {
      kaldi::QuantizedMatrixBase<signed char>::AddMatMat(v13, a2, v10, a4);
    }

    return kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v13);
  }

  else if (*(a2 + 12))
  {

    return kaldi::QuantizedMatrixBase<signed char>::AddMatMat(a6, a2, result, a4);
  }

  return result;
}